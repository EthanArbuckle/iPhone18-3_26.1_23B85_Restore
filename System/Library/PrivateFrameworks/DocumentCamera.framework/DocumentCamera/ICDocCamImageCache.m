@interface ICDocCamImageCache
- (BOOL)deleteAllImages;
- (BOOL)deleteImage:(id)a3;
- (BOOL)makeSureScanDirectoryExists:(id *)a3;
- (BOOL)replaceImage:(id)a3 metaData:(id)a4 uuid:(id)a5;
- (BOOL)writeImage:(id)a3 metaData:(id)a4 toURL:(id)a5 error:(id *)a6;
- (CGSize)getImageSize:(id)a3;
- (ICDocCamImageCache)initWithDataCryptorDelegate:(id)a3 cachesDirectoryURL:(id)a4;
- (id)createNSDataFrom:(id)a3 metaData:(id)a4;
- (id)getImage:(id)a3;
- (id)getImageURL:(id)a3 async:(BOOL)a4;
- (id)imagePropertiesFromMetadata:(id)a3 orientation:(int64_t)a4;
- (id)setImage:(id)a3 metaData:(id)a4 addToMemoryCache:(BOOL)a5 completion:(id)a6;
- (void)clearInMemoryCache;
- (void)dealloc;
@end

@implementation ICDocCamImageCache

- (ICDocCamImageCache)initWithDataCryptorDelegate:(id)a3 cachesDirectoryURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v28.receiver = self;
  v28.super_class = ICDocCamImageCache;
  v9 = [(ICDocCamImageCache *)&v28 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataCryptorDelegate, a3);
    if (!v8)
    {
      v11 = +[DCCachesDirectory sharedCachesDirectory];
      v8 = [v11 cachesDirectoryURL];
    }

    objc_storeStrong(&v10->_cachesDirectoryURL, v8);
    v12 = [v8 URLByAppendingPathComponent:@"Scans"];
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
    v21 = [MEMORY[0x277CCAB98] defaultCenter];
    v22 = *MEMORY[0x277D76770];
    v23 = [MEMORY[0x277D75128] sharedApplication];
    [v21 addObserver:v10 selector:sel_applicationWillTerminate_ name:v22 object:v23];

    v24 = [MEMORY[0x277CCAB98] defaultCenter];
    v25 = *MEMORY[0x277D76670];
    v26 = [MEMORY[0x277D75128] sharedApplication];
    [v24 addObserver:v10 selector:sel_didReceiveMemoryWarning_ name:v25 object:v26];
  }

  return v10;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ICDocCamImageCache;
  [(ICDocCamImageCache *)&v2 dealloc];
}

- (BOOL)makeSureScanDirectoryExists:(id *)a3
{
  v4 = [(ICDocCamImageCache *)self docCamImageDirectoryURL];
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v5 createDirectoryAtURL:v4 withIntermediateDirectories:1 attributes:0 error:a3];

  if ((v6 & 1) == 0)
  {
    v7 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(DCScannedDocument *)a3 makeSureScanDirectoryExists:v7, v8, v9, v10, v11, v12, v13];
    }
  }

  return v6;
}

- (id)setImage:(id)a3 metaData:(id)a4 addToMemoryCache:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
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
    v17 = [MEMORY[0x277CCAD78] UUID];
    v18 = [v17 UUIDString];

    v19 = MEMORY[0x277CCAE60];
    [v10 size];
    v20 = [v19 valueWithCGSize:?];
    v21 = [(ICDocCamImageCache *)self imageSizeCache];
    [v21 setObject:v20 forKeyedSubscript:v18];

    if (v7)
    {
      v22 = [(ICDocCamImageCache *)self inMemoryImageCache];
      [v22 setObject:v10 forKey:v18];
    }

    v23 = [(ICDocCamImageCache *)self imageCacheQueue];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __68__ICDocCamImageCache_setImage_metaData_addToMemoryCache_completion___block_invoke;
    v27[3] = &unk_278F93A10;
    v27[4] = self;
    v24 = v18;
    v28 = v24;
    v29 = v10;
    v30 = v11;
    v31 = v12;
    dispatch_async(v23, v27);

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

- (BOOL)replaceImage:(id)a3 metaData:(id)a4 uuid:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
    [v8 size];
    v15 = [v14 valueWithCGSize:?];
    v16 = [(ICDocCamImageCache *)self imageSizeCache];
    [v16 setObject:v15 forKeyedSubscript:v10];

    v17 = [(ICDocCamImageCache *)self inMemoryImageCache];
    v18 = [v17 objectForKey:v10];

    if (v18)
    {
      v19 = [(ICDocCamImageCache *)self inMemoryImageCache];
      [v19 setObject:v8 forKey:v10];
    }

    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    v20 = [(ICDocCamImageCache *)self imageCacheQueue];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __49__ICDocCamImageCache_replaceImage_metaData_uuid___block_invoke;
    v24[3] = &unk_278F93A38;
    v24[4] = self;
    v25 = v10;
    v26 = v8;
    v27 = v9;
    v28 = &v29;
    dispatch_sync(v20, v24);

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

- (CGSize)getImageSize:(id)a3
{
  v4 = a3;
  v5 = [(ICDocCamImageCache *)self imageSizeCache];
  v6 = [v5 objectForKeyedSubscript:v4];

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

    v12 = [(ICDocCamImageCache *)self getImage:v4];
    [v12 size];
    v8 = v13;
    v10 = v14;

    v15 = [MEMORY[0x277CCAE60] valueWithCGSize:{v8, v10}];
    v16 = [(ICDocCamImageCache *)self imageSizeCache];
    [v16 setObject:v15 forKeyedSubscript:v4];
  }

  v17 = v8;
  v18 = v10;
  result.height = v18;
  result.width = v17;
  return result;
}

- (id)getImageURL:(id)a3 async:(BOOL)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  v23 = 0;
  if (a4)
  {
    v7 = [(ICDocCamImageCache *)self docCamImageDirectoryURL];
    v8 = [v7 URLByAppendingPathComponent:v6];
    v9 = v19[5];
    v19[5] = v8;
  }

  else
  {
    v10 = [(ICDocCamImageCache *)self imageCacheQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__ICDocCamImageCache_getImageURL_async___block_invoke;
    block[3] = &unk_278F93A60;
    v17 = &v18;
    block[4] = self;
    v16 = v6;
    dispatch_sync(v10, block);
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

- (id)getImage:(id)a3
{
  v4 = a3;
  if (!v4)
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
  v7 = [(ICDocCamImageCache *)self inMemoryImageCache];
  v27 = [v7 objectForKey:v4];

  v8 = v23[5];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = [(ICDocCamImageCache *)self imageCacheQueue];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __31__ICDocCamImageCache_getImage___block_invoke;
    v18 = &unk_278F93A88;
    v19 = self;
    v11 = v4;
    v20 = v11;
    v21 = &v22;
    dispatch_sync(v10, &v15);

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

- (BOOL)deleteImage:(id)a3
{
  v4 = a3;
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
    v8 = [(ICDocCamImageCache *)self imageSizeCache];
    [v8 removeObjectForKey:v4];

    v9 = [(ICDocCamImageCache *)self inMemoryImageCache];
    [v9 removeObjectForKey:v4];

    v10 = [(ICDocCamImageCache *)self getImageURL:v4];
    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v12 = [(ICDocCamImageCache *)self imageCacheQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __34__ICDocCamImageCache_deleteImage___block_invoke;
    v17[3] = &unk_278F93A88;
    v18 = v11;
    v19 = v10;
    v20 = &v21;
    v13 = v10;
    v14 = v11;
    dispatch_sync(v12, v17);

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
    v5 = [(ICDocCamImageCache *)self imageSizeCache];
    [v5 removeAllObjects];

    v6 = [(ICDocCamImageCache *)self inMemoryImageCache];
    [v6 removeAllObjects];

    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [(ICDocCamImageCache *)self docCamImageDirectoryURL];
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 1;
    v9 = [(ICDocCamImageCache *)self imageCacheQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __37__ICDocCamImageCache_deleteAllImages__block_invoke;
    v14[3] = &unk_278F93A88;
    v15 = v7;
    v16 = v8;
    v17 = &v18;
    v10 = v8;
    v11 = v7;
    dispatch_sync(v9, v14);

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
  v2 = [(ICDocCamImageCache *)self inMemoryImageCache];
  [v2 removeAllObjects];
}

- (BOOL)writeImage:(id)a3 metaData:(id)a4 toURL:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a4;
  v12 = -[ICDocCamImageCache imagePropertiesFromMetadata:orientation:](self, "imagePropertiesFromMetadata:orientation:", v11, [v9 imageOrientation]);

  v13 = [v12 mutableCopy];
  v14 = MEMORY[0x277CCABB0];
  v15 = +[DCSettings sharedSettings];
  [v15 imageQuality];
  v16 = [v14 numberWithDouble:?];
  [v13 setObject:v16 forKeyedSubscript:*MEMORY[0x277CD2D48]];

  v17 = [*MEMORY[0x277CE1DC0] identifier];
  v18 = CGImageDestinationCreateWithURL(v10, v17, 1uLL, 0);

  if (v18)
  {
    v19 = [v9 dc_CGImage];
    v20 = [v13 copy];
    CGImageDestinationAddImage(v18, v19, v20);

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

- (id)createNSDataFrom:(id)a3 metaData:(id)a4
{
  v6 = MEMORY[0x277CBEA90];
  v7 = a4;
  v8 = a3;
  v9 = UIImageJPEGRepresentation(v8, 1.0);
  v10 = [v6 dataWithData:v9];

  v11 = CGImageSourceCreateWithData(v10, 0);
  v12 = [(UIImage *)v8 imageOrientation];

  v13 = [(ICDocCamImageCache *)self imagePropertiesFromMetadata:v7 orientation:v12];

  v14 = [v13 mutableCopy];
  v15 = MEMORY[0x277CCABB0];
  v16 = +[DCSettings sharedSettings];
  [v16 imageQuality];
  v17 = [v15 numberWithDouble:?];
  [v14 setObject:v17 forKeyedSubscript:*MEMORY[0x277CD2D48]];

  Type = CGImageSourceGetType(v11);
  v19 = [MEMORY[0x277CBEB28] data];
  v20 = CGImageDestinationCreateWithData(v19, Type, 1uLL, 0);
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

  return v19;
}

- (id)imagePropertiesFromMetadata:(id)a3 orientation:(int64_t)a4
{
  v4 = a3;
  v25 = v4;
  if (v4)
  {
    v5 = [v4 mutableCopy];
  }

  else
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
  }

  v6 = v5;
  v23 = *MEMORY[0x277CD3038];
  v7 = [v5 objectForKey:?];
  v22 = *MEMORY[0x277CD3258];
  v8 = [v6 objectForKey:?];
  v21 = *MEMORY[0x277CD3490];
  v9 = [v6 objectForKey:?];
  v10 = *MEMORY[0x277CD3468];
  v11 = [v6 objectForKey:*MEMORY[0x277CD3468]];
  v12 = *MEMORY[0x277CD33A8];
  v13 = [v6 objectForKey:*MEMORY[0x277CD33A8]];
  v14 = *MEMORY[0x277CD31C8];
  v15 = [v6 objectForKey:*MEMORY[0x277CD31C8]];
  v26 = v7;
  if (!v7)
  {
    v26 = [MEMORY[0x277CBEB38] dictionary];
  }

  v16 = v8;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v16 = [MEMORY[0x277CBEB38] dictionary];
    if (v9)
    {
LABEL_8:
      if (v11)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }
  }

  v9 = [MEMORY[0x277CBEB38] dictionary];
  if (v11)
  {
LABEL_9:
    if (v13)
    {
      goto LABEL_10;
    }

LABEL_20:
    v13 = [MEMORY[0x277CBEB38] dictionary];
    if (v15)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_19:
  v11 = [MEMORY[0x277CBEB38] dictionary];
  if (!v13)
  {
    goto LABEL_20;
  }

LABEL_10:
  if (v15)
  {
    goto LABEL_11;
  }

LABEL_21:
  v15 = [MEMORY[0x277CBEB38] dictionary];
LABEL_11:
  [v6 setObject:v26 forKey:v23];
  [v6 setObject:v16 forKey:v22];
  [v6 setObject:v9 forKey:v21];
  [v6 setObject:v11 forKey:v10];
  [v6 setObject:v13 forKey:v12];
  [v6 setObject:v15 forKey:v14];
  if ((a4 - 1) > 2)
  {
    v17 = 1;
  }

  else
  {
    v17 = dword_2492F7A70[a4 - 1];
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