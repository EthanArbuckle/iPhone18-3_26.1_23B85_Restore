@interface ICDocCamImageCache
- (BOOL)deleteAllImages;
- (BOOL)deleteImage:(id)image;
- (BOOL)makeSureScanDirectoryExists:(id *)exists;
- (BOOL)replaceImage:(id)image metaData:(id)data uuid:(id)uuid;
- (BOOL)writeImage:(id)image metaData:(id)data toURL:(id)l error:(id *)error;
- (CGSize)getImageSize:(id)size;
- (ICDocCamImageCache)initWithDataCryptorDelegate:(id)delegate cachesDirectoryURL:(id)l;
- (id)createNSDataFrom:(id)from metaData:(id)data;
- (id)getImage:(id)image;
- (id)getImageURL:(id)l async:(BOOL)async;
- (id)imagePropertiesFromMetadata:(id)metadata orientation:(int64_t)orientation;
- (id)setImage:(id)image metaData:(id)data addToMemoryCache:(BOOL)cache completion:(id)completion;
- (void)clearInMemoryCache;
- (void)dealloc;
@end

@implementation ICDocCamImageCache

- (ICDocCamImageCache)initWithDataCryptorDelegate:(id)delegate cachesDirectoryURL:(id)l
{
  delegateCopy = delegate;
  lCopy = l;
  v28.receiver = self;
  v28.super_class = ICDocCamImageCache;
  v9 = [(ICDocCamImageCache *)&v28 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataCryptorDelegate, delegate);
    if (!lCopy)
    {
      v11 = +[DCCachesDirectory sharedCachesDirectory];
      lCopy = [v11 cachesDirectoryURL];
    }

    objc_storeStrong(&v10->_cachesDirectoryURL, lCopy);
    v12 = [lCopy URLByAppendingPathComponent:@"Scans"];
    docCamImageDirectoryURL = v10->_docCamImageDirectoryURL;
    v10->_docCamImageDirectoryURL = v12;

    v14 = [[DCLRUCache alloc] initWithMaxSize:2];
    inMemoryImageCache = v10->_inMemoryImageCache;
    v10->_inMemoryImageCache = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    imageSizeCache = v10->_imageSizeCache;
    v10->_imageSizeCache = v16;

    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create("com.apple.documentcamera.DocCamImageCacheQueue", v18);
    imageCacheQueue = v10->_imageCacheQueue;
    v10->_imageCacheQueue = v19;

    [(ICDocCamImageCache *)v10 deleteAllImages];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v22 = *MEMORY[0x277D76770];
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [defaultCenter addObserver:v10 selector:sel_applicationWillTerminate_ name:v22 object:mEMORY[0x277D75128]];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    v25 = *MEMORY[0x277D76670];
    mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
    [defaultCenter2 addObserver:v10 selector:sel_didReceiveMemoryWarning_ name:v25 object:mEMORY[0x277D75128]2];
  }

  return v10;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ICDocCamImageCache;
  [(ICDocCamImageCache *)&v2 dealloc];
}

- (BOOL)makeSureScanDirectoryExists:(id *)exists
{
  docCamImageDirectoryURL = [(ICDocCamImageCache *)self docCamImageDirectoryURL];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [defaultManager createDirectoryAtURL:docCamImageDirectoryURL withIntermediateDirectories:1 attributes:0 error:exists];

  if ((v6 & 1) == 0)
  {
    v7 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(DCScannedDocument *)exists makeSureScanDirectoryExists:v7, v8, v9, v10, v11, v12, v13];
    }
  }

  return v6;
}

- (id)setImage:(id)image metaData:(id)data addToMemoryCache:(BOOL)cache completion:(id)completion
{
  cacheCopy = cache;
  imageCopy = image;
  dataCopy = data;
  completionCopy = completion;
  v13 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [ICDocCamImageCache setImage:metaData:addToMemoryCache:completion:];
  }

  v32 = 0;
  v14 = [(ICDocCamImageCache *)self makeSureScanDirectoryExists:&v32];
  v15 = v32;
  v16 = 0;
  if (v14)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    v19 = MEMORY[0x277CCAE60];
    [imageCopy size];
    v20 = [v19 valueWithCGSize:?];
    imageSizeCache = [(ICDocCamImageCache *)self imageSizeCache];
    [imageSizeCache setObject:v20 forKeyedSubscript:uUIDString];

    if (cacheCopy)
    {
      inMemoryImageCache = [(ICDocCamImageCache *)self inMemoryImageCache];
      [inMemoryImageCache setObject:imageCopy forKey:uUIDString];
    }

    imageCacheQueue = [(ICDocCamImageCache *)self imageCacheQueue];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __68__ICDocCamImageCache_setImage_metaData_addToMemoryCache_completion___block_invoke;
    v27[3] = &unk_278F93A10;
    v27[4] = self;
    v24 = uUIDString;
    v28 = v24;
    v29 = imageCopy;
    v30 = dataCopy;
    v31 = completionCopy;
    dispatch_async(imageCacheQueue, v27);

    v25 = v31;
    v16 = v24;
  }

  return v16;
}

void __68__ICDocCamImageCache_setImage_metaData_addToMemoryCache_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) getImageURL:*(a1 + 40)];
  v3 = [*(a1 + 32) dataCryptorDelegate];

  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  if (v3)
  {
    v7 = [v4 createNSDataFrom:v5 metaData:v6];
    v8 = [*(a1 + 32) dataCryptorDelegate];
    v9 = [v8 encryptData:v7 identifier:*(a1 + 40)];

    v19 = 0;
    v10 = [v9 writeToURL:v2 options:1 error:&v19];
    v11 = v19;
  }

  else
  {
    v18 = 0;
    v10 = [v4 writeImage:v5 metaData:v6 toURL:v2 error:&v18];
    v11 = v18;
  }

  v12 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __68__ICDocCamImageCache_setImage_metaData_addToMemoryCache_completion___block_invoke_cold_1();
  }

  if (v10)
  {
    v13 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = [v2 path];
    v15 = [v13 fileExistsAtPath:v14];

    if ((v15 & 1) == 0)
    {
      v16 = os_log_create("com.apple.documentcamera", "");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [DCScannedDocument copyImageForSaving:toFolderURL:];
      }
    }
  }

  else
  {
    v13 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __68__ICDocCamImageCache_setImage_metaData_addToMemoryCache_completion___block_invoke_cold_2();
    }

    v15 = 0;
  }

  v17 = *(a1 + 64);
  if (v17)
  {
    (*(v17 + 16))(v17, v15);
  }
}

- (BOOL)replaceImage:(id)image metaData:(id)data uuid:(id)uuid
{
  imageCopy = image;
  dataCopy = data;
  uuidCopy = uuid;
  v11 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [ICDocCamImageCache replaceImage:metaData:uuid:];
  }

  v33 = 0;
  v12 = [(ICDocCamImageCache *)self makeSureScanDirectoryExists:&v33];
  v13 = v33;
  if (v12)
  {
    v14 = MEMORY[0x277CCAE60];
    [imageCopy size];
    v15 = [v14 valueWithCGSize:?];
    imageSizeCache = [(ICDocCamImageCache *)self imageSizeCache];
    [imageSizeCache setObject:v15 forKeyedSubscript:uuidCopy];

    inMemoryImageCache = [(ICDocCamImageCache *)self inMemoryImageCache];
    v18 = [inMemoryImageCache objectForKey:uuidCopy];

    if (v18)
    {
      inMemoryImageCache2 = [(ICDocCamImageCache *)self inMemoryImageCache];
      [inMemoryImageCache2 setObject:imageCopy forKey:uuidCopy];
    }

    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    imageCacheQueue = [(ICDocCamImageCache *)self imageCacheQueue];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __49__ICDocCamImageCache_replaceImage_metaData_uuid___block_invoke;
    v24[3] = &unk_278F93A38;
    v24[4] = self;
    v25 = uuidCopy;
    v26 = imageCopy;
    v27 = dataCopy;
    v28 = &v29;
    dispatch_sync(imageCacheQueue, v24);

    v21 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [ICDocCamImageCache replaceImage:metaData:uuid:];
    }

    v22 = *(v30 + 24);
    _Block_object_dispose(&v29, 8);
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

void __49__ICDocCamImageCache_replaceImage_metaData_uuid___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) getImageURL:*(a1 + 40)];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v2 path];
  v5 = [v3 fileExistsAtPath:v4];

  if (v5)
  {
    v6 = [*(a1 + 32) dataCryptorDelegate];

    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    if (v6)
    {
      v10 = [v7 createNSDataFrom:v8 metaData:v9];
      v11 = [*(a1 + 32) dataCryptorDelegate];
      v12 = [v11 encryptData:v10 identifier:*(a1 + 40)];

      *(*(*(a1 + 64) + 8) + 24) = [v12 writeToURL:v2 atomically:1];
    }

    else
    {
      *(*(*(a1 + 64) + 8) + 24) = [v7 writeImage:v8 metaData:v9 toURL:v2 error:0];
    }
  }

  else
  {
    v13 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __49__ICDocCamImageCache_replaceImage_metaData_uuid___block_invoke_cold_1();
    }
  }
}

- (CGSize)getImageSize:(id)size
{
  sizeCopy = size;
  imageSizeCache = [(ICDocCamImageCache *)self imageSizeCache];
  v6 = [imageSizeCache objectForKeyedSubscript:sizeCopy];

  if (v6)
  {
    [v6 CGSizeValue];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v11 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_249253000, v11, OS_LOG_TYPE_DEFAULT, "Failed to find image size in image size cache. Falling back to asking the image", v19, 2u);
    }

    v12 = [(ICDocCamImageCache *)self getImage:sizeCopy];
    [v12 size];
    v8 = v13;
    v10 = v14;

    v15 = [MEMORY[0x277CCAE60] valueWithCGSize:{v8, v10}];
    imageSizeCache2 = [(ICDocCamImageCache *)self imageSizeCache];
    [imageSizeCache2 setObject:v15 forKeyedSubscript:sizeCopy];
  }

  v17 = v8;
  v18 = v10;
  result.height = v18;
  result.width = v17;
  return result;
}

- (id)getImageURL:(id)l async:(BOOL)async
{
  lCopy = l;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  v23 = 0;
  if (async)
  {
    docCamImageDirectoryURL = [(ICDocCamImageCache *)self docCamImageDirectoryURL];
    v8 = [docCamImageDirectoryURL URLByAppendingPathComponent:lCopy];
    v9 = v19[5];
    v19[5] = v8;
  }

  else
  {
    imageCacheQueue = [(ICDocCamImageCache *)self imageCacheQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__ICDocCamImageCache_getImageURL_async___block_invoke;
    block[3] = &unk_278F93A60;
    v17 = &v18;
    block[4] = self;
    v16 = lCopy;
    dispatch_sync(imageCacheQueue, block);
  }

  v11 = [v19[5] URLByAppendingPathExtension:@"jpg"];
  v12 = v19[5];
  v19[5] = v11;

  v13 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v13;
}

void __40__ICDocCamImageCache_getImageURL_async___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) docCamImageDirectoryURL];
  v2 = [v5 URLByAppendingPathComponent:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)getImage:(id)image
{
  imageCopy = image;
  if (!imageCopy)
  {
    v6 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ICDocCamImageCache getImage:v6];
    }

    goto LABEL_7;
  }

  v28 = 0;
  v5 = [(ICDocCamImageCache *)self makeSureScanDirectoryExists:&v28];
  v6 = v28;
  if (!v5)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_12;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__3;
  v26 = __Block_byref_object_dispose__3;
  inMemoryImageCache = [(ICDocCamImageCache *)self inMemoryImageCache];
  v27 = [inMemoryImageCache objectForKey:imageCopy];

  v8 = v23[5];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    imageCacheQueue = [(ICDocCamImageCache *)self imageCacheQueue];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __31__ICDocCamImageCache_getImage___block_invoke;
    v18 = &unk_278F93A88;
    selfCopy = self;
    v11 = imageCopy;
    v20 = v11;
    v21 = &v22;
    dispatch_sync(imageCacheQueue, &v15);

    v12 = v23[5];
    if (v12)
    {
      v13 = [(ICDocCamImageCache *)self inMemoryImageCache:v15];
      [v13 setObject:v23[5] forKey:v11];

      v12 = v23[5];
    }

    v9 = v12;
  }

  _Block_object_dispose(&v22, 8);

LABEL_12:

  return v9;
}

void __31__ICDocCamImageCache_getImage___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) getImageURL:*(a1 + 40)];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v2 path];
  v5 = [v3 fileExistsAtPath:v4];

  if (v5)
  {
    v6 = [*(a1 + 32) dataCryptorDelegate];

    if (v6)
    {
      v7 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v2 options:1 error:0];
      if (v7)
      {
        v8 = v7;
        v9 = [*(a1 + 32) dataCryptorDelegate];
        v10 = [v9 decryptEncryptedData:v8 identifier:*(a1 + 40)];

        if (v10)
        {
          v11 = [MEMORY[0x277D755B8] imageWithData:v10];
          v12 = *(*(a1 + 48) + 8);
          v13 = *(v12 + 40);
          *(v12 + 40) = v11;
        }
      }
    }

    else
    {
      v15 = MEMORY[0x277D755B8];
      v16 = [v2 path];
      v17 = [v15 imageWithContentsOfFile:v16];
      v18 = *(*(a1 + 48) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;
    }
  }

  else
  {
    v14 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __31__ICDocCamImageCache_getImage___block_invoke_cold_1();
    }
  }
}

- (BOOL)deleteImage:(id)image
{
  imageCopy = image;
  v5 = os_log_create("com.apple.documentcamera", "");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICDocCamImageCache deleteImage:];
  }

  v25 = 0;
  v6 = [(ICDocCamImageCache *)self makeSureScanDirectoryExists:&v25];
  v7 = v25;
  if (v6)
  {
    imageSizeCache = [(ICDocCamImageCache *)self imageSizeCache];
    [imageSizeCache removeObjectForKey:imageCopy];

    inMemoryImageCache = [(ICDocCamImageCache *)self inMemoryImageCache];
    [inMemoryImageCache removeObjectForKey:imageCopy];

    v10 = [(ICDocCamImageCache *)self getImageURL:imageCopy];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    imageCacheQueue = [(ICDocCamImageCache *)self imageCacheQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __34__ICDocCamImageCache_deleteImage___block_invoke;
    v17[3] = &unk_278F93A88;
    v18 = defaultManager;
    v19 = v10;
    v20 = &v21;
    v13 = v10;
    v14 = defaultManager;
    dispatch_sync(imageCacheQueue, v17);

    v15 = *(v22 + 24);
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

void __34__ICDocCamImageCache_deleteImage___block_invoke(uint64_t a1)
{
  v2 = a1 + 40;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) path];
  LOBYTE(v3) = [v3 fileExistsAtPath:v4];

  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v16 = 0;
    v7 = [v5 removeItemAtURL:v6 error:&v16];
    v8 = v16;
    if (v7)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      v15 = os_log_create("com.apple.documentcamera", "");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [DCScannedDocument deleteImage:];
      }
    }
  }

  else
  {
    v8 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __34__ICDocCamImageCache_deleteImage___block_invoke_cold_1(v2, v8, v9, v10, v11, v12, v13, v14);
    }
  }
}

- (BOOL)deleteAllImages
{
  v22 = 0;
  v3 = [(ICDocCamImageCache *)self makeSureScanDirectoryExists:&v22];
  v4 = v22;
  if (v3)
  {
    imageSizeCache = [(ICDocCamImageCache *)self imageSizeCache];
    [imageSizeCache removeAllObjects];

    inMemoryImageCache = [(ICDocCamImageCache *)self inMemoryImageCache];
    [inMemoryImageCache removeAllObjects];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    docCamImageDirectoryURL = [(ICDocCamImageCache *)self docCamImageDirectoryURL];
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 1;
    imageCacheQueue = [(ICDocCamImageCache *)self imageCacheQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __37__ICDocCamImageCache_deleteAllImages__block_invoke;
    v14[3] = &unk_278F93A88;
    v15 = defaultManager;
    v16 = docCamImageDirectoryURL;
    v17 = &v18;
    v10 = docCamImageDirectoryURL;
    v11 = defaultManager;
    dispatch_sync(imageCacheQueue, v14);

    v12 = *(v19 + 24);
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

void __37__ICDocCamImageCache_deleteAllImages__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) path];
  v18 = 0;
  v4 = [v2 contentsOfDirectoryAtPath:v3 error:&v18];
  v5 = v18;

  v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v4);
        }

        if (v5)
        {
          v14 = os_log_create("com.apple.documentcamera", "");
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            __37__ICDocCamImageCache_deleteAllImages__block_invoke_cold_1();
          }

          *(*(*(a1 + 48) + 8) + 24) = 0;
          goto LABEL_17;
        }

        v10 = [*(a1 + 40) URLByAppendingPathComponent:*(*(&v19 + 1) + 8 * i)];
        v11 = *(a1 + 32);
        v17 = 0;
        v12 = [v11 removeItemAtURL:v10 error:&v17];
        v5 = v17;
        if ((v12 & 1) == 0)
        {
          v13 = os_log_create("com.apple.documentcamera", "");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            __37__ICDocCamImageCache_deleteAllImages__block_invoke_cold_2(&v15, v16, v13);
          }

          *(*(*(a1 + 48) + 8) + 24) = 0;
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
}

- (void)clearInMemoryCache
{
  inMemoryImageCache = [(ICDocCamImageCache *)self inMemoryImageCache];
  [inMemoryImageCache removeAllObjects];
}

- (BOOL)writeImage:(id)image metaData:(id)data toURL:(id)l error:(id *)error
{
  imageCopy = image;
  lCopy = l;
  dataCopy = data;
  v12 = -[ICDocCamImageCache imagePropertiesFromMetadata:orientation:](self, "imagePropertiesFromMetadata:orientation:", dataCopy, [imageCopy imageOrientation]);

  v13 = [v12 mutableCopy];
  v14 = MEMORY[0x277CCABB0];
  v15 = +[DCSettings sharedSettings];
  [v15 imageQuality];
  v16 = [v14 numberWithDouble:?];
  [v13 setObject:v16 forKeyedSubscript:*MEMORY[0x277CD2D48]];

  identifier = [*MEMORY[0x277CE1DC0] identifier];
  v18 = CGImageDestinationCreateWithURL(lCopy, identifier, 1uLL, 0);

  if (v18)
  {
    dc_CGImage = [imageCopy dc_CGImage];
    v20 = [v13 copy];
    CGImageDestinationAddImage(v18, dc_CGImage, v20);

    v21 = CGImageDestinationFinalize(v18);
    if (!v21)
    {
      v22 = os_log_create("com.apple.documentcamera", "");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(ICDocCamImageCache *)v22 writeImage:v23 metaData:v24 toURL:v25 error:v26, v27, v28, v29];
      }
    }

    CFRelease(v18);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)createNSDataFrom:(id)from metaData:(id)data
{
  v6 = MEMORY[0x277CBEA90];
  dataCopy = data;
  fromCopy = from;
  v9 = UIImageJPEGRepresentation(fromCopy, 1.0);
  v10 = [v6 dataWithData:v9];

  v11 = CGImageSourceCreateWithData(v10, 0);
  imageOrientation = [(UIImage *)fromCopy imageOrientation];

  v13 = [(ICDocCamImageCache *)self imagePropertiesFromMetadata:dataCopy orientation:imageOrientation];

  v14 = [v13 mutableCopy];
  v15 = MEMORY[0x277CCABB0];
  v16 = +[DCSettings sharedSettings];
  [v16 imageQuality];
  v17 = [v15 numberWithDouble:?];
  [v14 setObject:v17 forKeyedSubscript:*MEMORY[0x277CD2D48]];

  Type = CGImageSourceGetType(v11);
  data = [MEMORY[0x277CBEB28] data];
  v20 = CGImageDestinationCreateWithData(data, Type, 1uLL, 0);
  v21 = [v14 copy];
  CGImageDestinationAddImageFromSource(v20, v11, 0, v21);

  if (!CGImageDestinationFinalize(v20))
  {
    v22 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(ICDocCamImageCache *)v22 createNSDataFrom:v23 metaData:v24, v25, v26, v27, v28, v29];
    }
  }

  CFRelease(v20);
  CFRelease(v11);

  return data;
}

- (id)imagePropertiesFromMetadata:(id)metadata orientation:(int64_t)orientation
{
  metadataCopy = metadata;
  v25 = metadataCopy;
  if (metadataCopy)
  {
    dictionary = [metadataCopy mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v6 = dictionary;
  v23 = *MEMORY[0x277CD3038];
  v7 = [dictionary objectForKey:?];
  v22 = *MEMORY[0x277CD3258];
  v8 = [v6 objectForKey:?];
  v21 = *MEMORY[0x277CD3490];
  dictionary4 = [v6 objectForKey:?];
  v10 = *MEMORY[0x277CD3468];
  dictionary6 = [v6 objectForKey:*MEMORY[0x277CD3468]];
  v12 = *MEMORY[0x277CD33A8];
  dictionary5 = [v6 objectForKey:*MEMORY[0x277CD33A8]];
  v14 = *MEMORY[0x277CD31C8];
  dictionary7 = [v6 objectForKey:*MEMORY[0x277CD31C8]];
  dictionary2 = v7;
  if (!v7)
  {
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  }

  dictionary3 = v8;
  if (v8)
  {
    if (dictionary4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    if (dictionary4)
    {
LABEL_8:
      if (dictionary6)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }
  }

  dictionary4 = [MEMORY[0x277CBEB38] dictionary];
  if (dictionary6)
  {
LABEL_9:
    if (dictionary5)
    {
      goto LABEL_10;
    }

LABEL_20:
    dictionary5 = [MEMORY[0x277CBEB38] dictionary];
    if (dictionary7)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_19:
  dictionary6 = [MEMORY[0x277CBEB38] dictionary];
  if (!dictionary5)
  {
    goto LABEL_20;
  }

LABEL_10:
  if (dictionary7)
  {
    goto LABEL_11;
  }

LABEL_21:
  dictionary7 = [MEMORY[0x277CBEB38] dictionary];
LABEL_11:
  [v6 setObject:dictionary2 forKey:v23];
  [v6 setObject:dictionary3 forKey:v22];
  [v6 setObject:dictionary4 forKey:v21];
  [v6 setObject:dictionary6 forKey:v10];
  [v6 setObject:dictionary5 forKey:v12];
  [v6 setObject:dictionary7 forKey:v14];
  if ((orientation - 1) > 2)
  {
    v17 = 1;
  }

  else
  {
    v17 = dword_2492F7A70[orientation - 1];
  }

  v18 = [MEMORY[0x277CCABB0] numberWithInt:v17];
  [v6 setObject:v18 forKey:@"Orientation"];

  [v6 removeObjectForKey:@"Diagnostic"];
  v19 = [v6 copy];

  return v19;
}

void __68__ICDocCamImageCache_setImage_metaData_addToMemoryCache_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)deleteImage:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __37__ICDocCamImageCache_deleteAllImages__block_invoke_cold_2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_249253000, log, OS_LOG_TYPE_ERROR, "Removal failed", buf, 2u);
}

@end