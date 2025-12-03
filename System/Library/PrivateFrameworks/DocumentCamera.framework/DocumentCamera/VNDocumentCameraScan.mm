@interface VNDocumentCameraScan
+ (id)scannedDocumentsFolderURL;
+ (void)initialize;
- (BOOL)copyImagesFromDocInfoCollection:(id)collection imageCache:(id)cache;
- (BOOL)deleteImage:(id)image;
- (BOOL)makeSureScanDirectoryExists:(id *)exists;
- (BOOL)saveToURL:(id)l error:(id *)error;
- (NSUInteger)pageCount;
- (UIImage)imageOfPageAtIndex:(NSUInteger)index;
- (VNDocumentCameraScan)initWithArchivedData:(id)data error:(id *)error;
- (VNDocumentCameraScan)initWithDocInfoCollection:(id)collection imageCache:(id)cache;
- (VNDocumentCameraScan)initWithURL:(id)l error:(id *)error;
- (id)URLForImageInFolder:(id)folder withUUID:(id)d;
- (id)URLForImageWithUUID:(id)d;
- (id)archivedDataWithError:(id *)error;
- (id)copyImageAtURL:(id)l;
- (id)copyImageForLoading:(id)loading fromFolderURL:(id)l;
- (id)copyImageForSaving:(id)saving toFolderURL:(id)l;
- (id)getImage:(id)image;
- (id)imageForScanAtIndex:(unint64_t)index error:(id *)error;
- (id)infoCollectionWithImageCache:(id)cache error:(id *)error;
- (void)dealloc;
- (void)deleteAllImages;
- (void)replaceContentsWithDocInfoCollection:(id)collection imageCache:(id)cache;
@end

@implementation VNDocumentCameraScan

+ (id)scannedDocumentsFolderURL
{
  if (scannedDocumentsFolderURL_onceToken_0 != -1)
  {
    +[VNDocumentCameraScan scannedDocumentsFolderURL];
  }

  v3 = scannedDocumentsFolderURL_URL_0;

  return v3;
}

void __49__VNDocumentCameraScan_scannedDocumentsFolderURL__block_invoke()
{
  v0 = +[DCCachesDirectory sharedCachesDirectory];
  v3 = [v0 cachesDirectoryURL];

  v1 = [v3 URLByAppendingPathComponent:@"com.apple.ScannedDocuments"];
  v2 = scannedDocumentsFolderURL_URL_0;
  scannedDocumentsFolderURL_URL_0 = v1;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v4 = +[VNDocumentCameraScan scannedDocumentsFolderURL];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [v4 path];
    [defaultManager removeItemAtPath:path error:0];
  }
}

- (VNDocumentCameraScan)initWithDocInfoCollection:(id)collection imageCache:(id)cache
{
  v19.receiver = self;
  v19.super_class = VNDocumentCameraScan;
  cacheCopy = cache;
  collectionCopy = collection;
  v7 = [(VNDocumentCameraScan *)&v19 init];
  if (v7)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    v10 = +[VNDocumentCameraScan scannedDocumentsFolderURL];
    v11 = [v10 URLByAppendingPathComponent:uUIDString];
    scannedDocumentImageDirectoryURL = v7->_scannedDocumentImageDirectoryURL;
    v7->_scannedDocumentImageDirectoryURL = v11;
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v14 = *MEMORY[0x277D76770];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [defaultCenter addObserver:v7 selector:sel_applicationWillTerminate_ name:v14 object:mEMORY[0x277D75128]];

  [(VNDocumentCameraScan *)v7 copyImagesFromDocInfoCollection:collectionCopy imageCache:cacheCopy];
  title = [collectionCopy title];

  v17 = [title copy];
  [(VNDocumentCameraScan *)v7 setTitle:v17];

  return v7;
}

- (VNDocumentCameraScan)initWithURL:(id)l error:(id *)error
{
  v66 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v64.receiver = self;
  v64.super_class = VNDocumentCameraScan;
  v5 = [(VNDocumentCameraScan *)&v64 init];
  v6 = v5;
  if (v5)
  {
    v50 = v5;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [lCopy path];
    v9 = [defaultManager fileExistsAtPath:path];

    if (!v9)
    {

      v39 = 0;
      v6 = v50;
      goto LABEL_22;
    }

    v10 = [(VNDocumentCameraScan *)v50 pListURL:lCopy];
    path2 = [v10 path];
    v12 = [defaultManager fileExistsAtPath:path2];

    if (!v12)
    {

      v39 = 0;
      v6 = v50;
      goto LABEL_22;
    }

    v46 = defaultManager;
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    v15 = +[VNDocumentCameraScan scannedDocumentsFolderURL];
    v44 = uUIDString;
    v16 = [v15 URLByAppendingPathComponent:uUIDString];
    scannedDocumentImageDirectoryURL = v50->_scannedDocumentImageDirectoryURL;
    v50->_scannedDocumentImageDirectoryURL = v16;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v19 = *MEMORY[0x277D76770];
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [defaultCenter addObserver:v50 selector:sel_applicationWillTerminate_ name:v19 object:mEMORY[0x277D75128]];

    v45 = v10;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v10];
    v42 = [v21 objectForKey:@"Version"];
    v41 = [v21 objectForKey:@"DocumentName"];
    [(VNDocumentCameraScan *)v50 setTitle:?];
    array = [MEMORY[0x277CBEB18] array];
    [(VNDocumentCameraScan *)v50 setDocInfos:array];

    v43 = v21;
    [v21 objectForKey:@"DocumentInfos"];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = v63 = 0u;
    v6 = v50;
    v49 = [obj countByEnumeratingWithState:&v60 objects:v65 count:16];
    if (v49)
    {
      v48 = *v61;
      while (2)
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v61 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v60 + 1) + 8 * i);
          v25 = [v24 objectForKey:@"Metadata"];
          v26 = [v24 objectForKey:@"ImageQuad"];
          point.x = 0.0;
          point.y = 0.0;
          v58.x = 0.0;
          v58.y = 0.0;
          v57.x = 0.0;
          v57.y = 0.0;
          v56.x = 0.0;
          v56.y = 0.0;
          CGPointMakeWithDictionaryRepresentation([v26 objectForKey:@"ImageQuadTopLeft"], &point);
          CGPointMakeWithDictionaryRepresentation([v26 objectForKey:@"ImageQuadTopRight"], &v58);
          CGPointMakeWithDictionaryRepresentation([v26 objectForKey:@"ImageQuadBottomLeft"], &v57);
          CGPointMakeWithDictionaryRepresentation([v26 objectForKey:@"ImageQuadBottomRight"], &v56);
          v27 = [v24 objectForKey:@"CroppedAndFilteredImage"];
          v28 = [v24 objectForKey:@"FullImage"];
          v29 = [v24 objectForKey:@"FilterType"];
          v30 = [v24 objectForKey:@"Orientation"];
          v52 = [ICDocCamImageFilters imageFilterTypeFromNonLocalizedName:v29];
          v51 = dc_orientationFromNonLocalizedName(v30);
          v31 = [v24 objectForKey:@"MarkupModelData"];
          v32 = [(VNDocumentCameraScan *)v6 copyImageForLoading:v27 fromFolderURL:lCopy];
          v54 = v28;
          if (v32)
          {
            v53 = v25;
            v33 = [(VNDocumentCameraScan *)v6 copyImageForLoading:v28 fromFolderURL:lCopy];
            v34 = v33 != 0;
            if (v33)
            {
              v35 = objc_alloc_init(ICDocCamDocumentInfo);
              [(ICDocCamDocumentInfo *)v35 setMetaData:v53];
              v36 = [ICDocCamImageQuad alloc];
              v37 = [(ICDocCamImageQuad *)v36 initWithBottomLeft:v57.x bottomRight:v57.y topLeft:v56.x topRight:v56.y, point.x, point.y, v58.x, v58.y];
              [(ICDocCamDocumentInfo *)v35 setImageQuad:v37];

              [(ICDocCamDocumentInfo *)v35 setCroppedAndFilteredImageUUID:v32];
              [(ICDocCamDocumentInfo *)v35 setFullImageUUID:v33];
              [(ICDocCamDocumentInfo *)v35 setCurrentFilter:v52];
              [(ICDocCamDocumentInfo *)v35 setCurrentOrientation:v51];
              [(ICDocCamDocumentInfo *)v35 setMarkupModelData:v31];
              docInfos = [(VNDocumentCameraScan *)v50 docInfos];
              [docInfos addObject:v35];

              v34 = v33 != 0;
              v6 = v50;
            }

            v25 = v53;
          }

          else
          {
            v34 = 0;
          }

          if (!v34)
          {

            v39 = 0;
            goto LABEL_22;
          }
        }

        v49 = [obj countByEnumeratingWithState:&v60 objects:v65 count:16];
        if (v49)
        {
          continue;
        }

        break;
      }
    }
  }

  v39 = v6;
LABEL_22:

  return v39;
}

- (VNDocumentCameraScan)initWithArchivedData:(id)data error:(id *)error
{
  dataCopy = data;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  temporaryDirectory = [defaultManager temporaryDirectory];

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v11 = [temporaryDirectory URLByAppendingPathComponent:uUIDString isDirectory:1];

  uUID2 = [MEMORY[0x277CCAD78] UUID];
  uUIDString2 = [uUID2 UUIDString];
  v14 = [v11 URLByAppendingPathComponent:uUIDString2 isDirectory:0];

  v15 = [v14 URLByAppendingPathExtensionForType:*MEMORY[0x277CE1EF8]];

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  LOBYTE(v14) = [defaultManager2 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:error];

  if ((v14 & 1) == 0 || ([dataCopy writeToURL:v15 options:1 error:error] & 1) == 0)
  {
    defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
    [(DCArchiveReader *)defaultManager3 removeItemAtURL:v11 error:0];
LABEL_6:
    selfCopy = 0;
    goto LABEL_7;
  }

  defaultManager3 = [[DCArchiveReader alloc] initWithSourceURL:v15 destinationURL:v11];
  [(DCArchiveReader *)defaultManager3 setSkipsInvisibleHeaders:1];
  if (![(DCArchiveReader *)defaultManager3 unarchiveResultURLs:0 error:error])
  {
    defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager4 removeItemAtURL:v11 error:0];

    goto LABEL_6;
  }

  v18 = [(VNDocumentCameraScan *)self initWithURL:v11 error:error];
  defaultManager5 = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager5 removeItemAtURL:v11 error:0];

  self = v18;
  selfCopy = self;
LABEL_7:

  return selfCopy;
}

- (void)dealloc
{
  [(VNDocumentCameraScan *)self deleteAllImages];
  v3.receiver = self;
  v3.super_class = VNDocumentCameraScan;
  [(VNDocumentCameraScan *)&v3 dealloc];
}

- (void)replaceContentsWithDocInfoCollection:(id)collection imageCache:(id)cache
{
  cacheCopy = cache;
  collectionCopy = collection;
  [(VNDocumentCameraScan *)self deleteAllImages];
  [(VNDocumentCameraScan *)self setTitle:0];
  [(VNDocumentCameraScan *)self copyImagesFromDocInfoCollection:collectionCopy imageCache:cacheCopy];

  title = [collectionCopy title];

  v8 = [title copy];
  [(VNDocumentCameraScan *)self setTitle:v8];
}

- (BOOL)saveToURL:(id)l error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  lCopy = l;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager removeItemAtURL:lCopy error:0];
  LOBYTE(croppedAndFilteredImageUUID) = 0;
  if ([defaultManager createDirectoryAtURL:lCopy withIntermediateDirectories:0 attributes:0 error:error])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", &unk_285C6D480, &unk_285C6D498];
    [dictionary setObject:v10 forKey:@"Version"];

    title = [(VNDocumentCameraScan *)self title];

    if (title)
    {
      [(VNDocumentCameraScan *)self title];
    }

    else
    {
      [lCopy lastPathComponent];
    }
    v12 = ;
    [dictionary setObject:v12 forKey:@"DocumentName"];
    array = [MEMORY[0x277CBEB18] array];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = [(VNDocumentCameraScan *)self docInfos];
    v44 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v44)
    {
      v42 = lCopy;
      v43 = *v47;
      v38 = dictionary;
      v39 = defaultManager;
      selfCopy = self;
      v37 = v12;
      while (2)
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v47 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v46 + 1) + 8 * i);
          croppedAndFilteredImageUUID = [v14 croppedAndFilteredImageUUID];
          v15 = [(VNDocumentCameraScan *)self copyImageForSaving:croppedAndFilteredImageUUID toFolderURL:lCopy];
          if (!v15)
          {
            goto LABEL_20;
          }

          v16 = v15;
          fullImageUUID = [v14 fullImageUUID];
          v18 = [(VNDocumentCameraScan *)self copyImageForSaving:fullImageUUID toFolderURL:lCopy];
          if (!v18)
          {

LABEL_20:
            LOBYTE(croppedAndFilteredImageUUID) = 0;
            dictionary = v38;
            defaultManager = v39;
            v12 = v37;
            goto LABEL_21;
          }

          v19 = v18;
          dictionary2 = [MEMORY[0x277CBEB38] dictionary];
          metaData = [v14 metaData];
          [dictionary2 setObject:metaData forKey:@"Metadata"];

          dictionary3 = [MEMORY[0x277CBEB38] dictionary];
          imageQuad = [v14 imageQuad];
          [imageQuad topLeft];
          DictionaryRepresentation = CGPointCreateDictionaryRepresentation(v52);
          [dictionary3 setObject:DictionaryRepresentation forKey:@"ImageQuadTopLeft"];

          imageQuad2 = [v14 imageQuad];
          [imageQuad2 topRight];
          v26 = CGPointCreateDictionaryRepresentation(v53);
          [dictionary3 setObject:v26 forKey:@"ImageQuadTopRight"];

          imageQuad3 = [v14 imageQuad];
          [imageQuad3 bottomLeft];
          v28 = CGPointCreateDictionaryRepresentation(v54);
          [dictionary3 setObject:v28 forKey:@"ImageQuadBottomLeft"];

          imageQuad4 = [v14 imageQuad];
          [imageQuad4 bottomRight];
          v30 = CGPointCreateDictionaryRepresentation(v55);
          [dictionary3 setObject:v30 forKey:@"ImageQuadBottomRight"];

          [dictionary2 setObject:dictionary3 forKey:@"ImageQuad"];
          [dictionary2 setObject:v19 forKey:@"FullImage"];
          [dictionary2 setObject:v16 forKey:@"CroppedAndFilteredImage"];
          v31 = +[ICDocCamImageFilters nonLocalizedImageFilterNameForType:](ICDocCamImageFilters, "nonLocalizedImageFilterNameForType:", [v14 currentFilter]);
          [dictionary2 setObject:v31 forKey:@"FilterType"];

          v32 = dc_nonLocalizedOrientationNameForType([v14 currentOrientation]);
          [dictionary2 setObject:v32 forKey:@"Orientation"];

          markupModelData = [v14 markupModelData];

          if (markupModelData)
          {
            markupModelData2 = [v14 markupModelData];
            [dictionary2 setObject:markupModelData2 forKey:@"MarkupModelData"];
          }

          [array addObject:dictionary2];

          self = selfCopy;
          lCopy = v42;
        }

        dictionary = v38;
        defaultManager = v39;
        v12 = v37;
        v44 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
        if (v44)
        {
          continue;
        }

        break;
      }
    }

    [dictionary setObject:array forKey:@"DocumentInfos"];
    obj = [(VNDocumentCameraScan *)self pListURL:lCopy];
    LODWORD(croppedAndFilteredImageUUID) = [dictionary writeToURL:? error:?];
    if (croppedAndFilteredImageUUID)
    {
      title2 = [(VNDocumentCameraScan *)self title];

      if (!title2)
      {
        [(VNDocumentCameraScan *)self setTitle:v12];
      }
    }

LABEL_21:
  }

  return croppedAndFilteredImageUUID;
}

- (id)archivedDataWithError:(id *)error
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  temporaryDirectory = [defaultManager temporaryDirectory];

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v9 = [temporaryDirectory URLByAppendingPathComponent:uUIDString isDirectory:1];

  uUID2 = [MEMORY[0x277CCAD78] UUID];
  uUIDString2 = [uUID2 UUIDString];
  v12 = [v9 URLByAppendingPathComponent:uUIDString2 isDirectory:0];

  v13 = [v12 URLByAppendingPathExtensionForType:*MEMORY[0x277CE1EF8]];

  LOBYTE(self) = [(VNDocumentCameraScan *)self saveToURL:v9 error:error];
  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = defaultManager2;
  if (self)
  {
    path = [v9 path];
    v17 = [v15 contentsOfDirectoryAtPath:path error:error];

    if (v17)
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __46__VNDocumentCameraScan_archivedDataWithError___block_invoke;
      v25[3] = &unk_278F93948;
      v18 = v9;
      v26 = v18;
      v19 = [v17 dc_map:v25];
      v20 = [[DCArchiveWriter alloc] initWithDestinationURL:v13 baseURL:v18];
      [(DCArchiveWriter *)v20 setUsesCompression:1];
      if ([(DCArchiveWriter *)v20 writeURLs:v19 error:error]&& [(DCArchiveWriter *)v20 finish:error])
      {
        v21 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v13 options:1 error:0];
      }

      else
      {
        v21 = 0;
      }

      defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager3 removeItemAtURL:v18 error:0];
    }

    else
    {
      defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager4 removeItemAtURL:v9 error:0];

      v21 = 0;
    }
  }

  else
  {
    [defaultManager2 removeItemAtURL:v9 error:0];

    v21 = 0;
  }

  return v21;
}

- (id)copyImageForSaving:(id)saving toFolderURL:(id)l
{
  v29 = *MEMORY[0x277D85DE8];
  savingCopy = saving;
  lCopy = l;
  v22 = 0;
  v8 = [(VNDocumentCameraScan *)self makeSureScanDirectoryExists:&v22];
  v9 = v22;
  uUIDString = 0;
  if (v8)
  {
    v11 = [(VNDocumentCameraScan *)self URLForImageWithUUID:savingCopy];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [v11 path];
    v14 = [defaultManager fileExistsAtPath:path];

    if (v14)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];

      v16 = [(VNDocumentCameraScan *)self URLForImageInFolder:lCopy withUUID:uUIDString];
      v21 = 0;
      v17 = [defaultManager copyItemAtURL:v11 toURL:v16 error:&v21];
      v18 = v21;
      if ((v17 & 1) == 0)
      {
        v19 = os_log_create("com.apple.documentcamera", "");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v24 = v11;
          v25 = 2112;
          v26 = v16;
          v27 = 2112;
          v28 = v18;
          _os_log_error_impl(&dword_249253000, v19, OS_LOG_TYPE_ERROR, "Can't copy image file %@ to %@ because %@", buf, 0x20u);
        }

        uUIDString = 0;
      }
    }

    else
    {
      v16 = os_log_create("com.apple.documentcamera", "");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [DCScannedDocument copyImageForSaving:toFolderURL:];
      }

      uUIDString = 0;
    }
  }

  return uUIDString;
}

- (id)copyImageForLoading:(id)loading fromFolderURL:(id)l
{
  v29 = *MEMORY[0x277D85DE8];
  loadingCopy = loading;
  lCopy = l;
  v22 = 0;
  v8 = [(VNDocumentCameraScan *)self makeSureScanDirectoryExists:&v22];
  v9 = v22;
  uUIDString = 0;
  if (v8)
  {
    v11 = [(VNDocumentCameraScan *)self URLForImageInFolder:lCopy withUUID:loadingCopy];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [v11 path];
    v14 = [defaultManager fileExistsAtPath:path];

    if (v14)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];

      v16 = [(VNDocumentCameraScan *)self URLForImageWithUUID:uUIDString];
      v21 = 0;
      v17 = [defaultManager copyItemAtURL:v11 toURL:v16 error:&v21];
      v18 = v21;
      if ((v17 & 1) == 0)
      {
        v19 = os_log_create("com.apple.documentcamera", "");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v24 = v11;
          v25 = 2112;
          v26 = v16;
          v27 = 2112;
          v28 = v18;
          _os_log_error_impl(&dword_249253000, v19, OS_LOG_TYPE_ERROR, "Can't copy image file %@ to %@ because %@", buf, 0x20u);
        }

        uUIDString = 0;
      }
    }

    else
    {
      v16 = os_log_create("com.apple.documentcamera", "");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [DCScannedDocument copyImageForSaving:toFolderURL:];
      }

      uUIDString = 0;
    }
  }

  return uUIDString;
}

- (id)imageForScanAtIndex:(unint64_t)index error:(id *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  docInfos = [(VNDocumentCameraScan *)self docInfos];
  v8 = [docInfos count];

  if (v8 <= index)
  {
    if (error)
    {
      v10 = [DCLocalization localizedStringForKey:@"Index out of range." value:@"Index out of range." table:@"Localizable"];
      v13 = *MEMORY[0x277CCA450];
      v14[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.documentcamera" code:1 userInfo:v11];
    }

    v9 = 0;
  }

  else
  {
    v9 = [(VNDocumentCameraScan *)self imageOfPageAtIndex:index];
  }

  return v9;
}

- (NSUInteger)pageCount
{
  docInfos = [(VNDocumentCameraScan *)self docInfos];

  if (!docInfos)
  {
    return 0;
  }

  docInfos2 = [(VNDocumentCameraScan *)self docInfos];
  v5 = [docInfos2 count];

  return v5;
}

- (UIImage)imageOfPageAtIndex:(NSUInteger)index
{
  docInfos = [(VNDocumentCameraScan *)self docInfos];

  if (docInfos)
  {
    docInfos2 = [(VNDocumentCameraScan *)self docInfos];
    v8 = [docInfos2 count];

    if (v8 <= index)
    {
      v17 = 0;
      goto LABEL_16;
    }

    docInfos3 = [(VNDocumentCameraScan *)self docInfos];
    v10 = [docInfos3 objectAtIndexedSubscript:index];

    croppedAndFilteredImageUUID = [v10 croppedAndFilteredImageUUID];
    v12 = objc_autoreleasePoolPush();
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    lowercaseString = [bundleIdentifier lowercaseString];
    v16 = [lowercaseString isEqualToString:@"com.apple.sidecar.extension.camera"];

    if (v16)
    {
      v17 = [(VNDocumentCameraScan *)self getImage:croppedAndFilteredImageUUID];
    }

    else
    {
      v25 = [(VNDocumentCameraScan *)self getImageURL:croppedAndFilteredImageUUID];
      v26 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v25 options:0 error:0];
      v17 = [MEMORY[0x277D755B8] imageWithData:v26];
    }

    objc_autoreleasePoolPop(v12);
    if (!v17)
    {
      v27 = os_log_create("com.apple.documentcamera", "");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [(VNDocumentCameraScan *)croppedAndFilteredImageUUID imageOfPageAtIndex:v10, v27];
      }
    }
  }

  else
  {
    v10 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(VNDocumentCameraScan *)v10 imageOfPageAtIndex:v18, v19, v20, v21, v22, v23, v24];
    }

    v17 = 0;
  }

LABEL_16:
  docInfos4 = [(VNDocumentCameraScan *)self docInfos];
  v29 = [docInfos4 count];

  if (v29 <= index)
  {
    v33 = MEMORY[0x277CCACA8];
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    v36 = NSStringFromSelector(a2);
    v37 = [v33 stringWithFormat:@"-[%@ %@]: index (%lu) beyond bounds (%lu).", v35, v36, index, -[VNDocumentCameraScan pageCount](self, "pageCount")];

    v38 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE730] reason:v37 userInfo:0];
    objc_exception_throw(v38);
  }

  if (v17)
  {
    v30 = v17;
  }

  else
  {
    v30 = objc_alloc_init(MEMORY[0x277D755B8]);
  }

  v31 = v30;

  return v31;
}

- (BOOL)copyImagesFromDocInfoCollection:(id)collection imageCache:(id)cache
{
  v56 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  cacheCopy = cache;
  array = [MEMORY[0x277CBEB18] array];
  [(VNDocumentCameraScan *)self setDocInfos:array];

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = [collectionCopy docInfos];
  v47 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (!v47)
  {
    v26 = 1;
    goto LABEL_19;
  }

  v46 = *v52;
  v44 = collectionCopy;
  while (2)
  {
    for (i = 0; i != v47; ++i)
    {
      if (*v52 != v46)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v51 + 1) + 8 * i);
      croppedAndFilteredImageUUID = [v9 croppedAndFilteredImageUUID];
      v11 = [cacheCopy getImageURL:croppedAndFilteredImageUUID async:0];
      v12 = [(VNDocumentCameraScan *)self copyImageAtURL:v11];
      fullImageUUID = [v9 fullImageUUID];
      v14 = [cacheCopy getImageURL:fullImageUUID async:0];
      v15 = [(VNDocumentCameraScan *)self copyImageAtURL:v14];
      v16 = v15;
      if (!v12)
      {
        v27 = os_log_create("com.apple.documentcamera", "");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [(DCScannedDocument *)v27 copyImagesFromDocInfoCollection:v28 imageCache:v29, v30, v31, v32, v33, v34];
        }

        [(VNDocumentCameraScan *)self deleteAllImages];
        goto LABEL_18;
      }

      if (!v15)
      {
        v35 = os_log_create("com.apple.documentcamera", "");
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [(DCScannedDocument *)v35 copyImagesFromDocInfoCollection:v36 imageCache:v37, v38, v39, v40, v41, v42];
        }

        [(VNDocumentCameraScan *)self deleteAllImages];
LABEL_18:
        collectionCopy = v44;

        v26 = 0;
        goto LABEL_19;
      }

      v50 = v11;
      v17 = objc_alloc_init(ICDocCamDocumentInfo);
      metaData = [v9 metaData];
      v49 = croppedAndFilteredImageUUID;
      selfCopy = self;
      v20 = [metaData copy];
      [(ICDocCamDocumentInfo *)v17 setMetaData:v20];

      imageQuad = [v9 imageQuad];
      v22 = [imageQuad copy];
      [(ICDocCamDocumentInfo *)v17 setImageQuad:v22];

      self = selfCopy;
      [(ICDocCamDocumentInfo *)v17 setCroppedAndFilteredImageUUID:v12];
      [(ICDocCamDocumentInfo *)v17 setCroppedButNotFilteredImageUUID:0];
      [(ICDocCamDocumentInfo *)v17 setFullImageUUID:v16];
      [(ICDocCamDocumentInfo *)v17 setMeshAnimImageUUID:0];
      -[ICDocCamDocumentInfo setCurrentFilter:](v17, "setCurrentFilter:", [v9 currentFilter]);
      -[ICDocCamDocumentInfo setCurrentOrientation:](v17, "setCurrentOrientation:", [v9 currentOrientation]);
      [(ICDocCamDocumentInfo *)v17 setScanDataDelegateIdentifier:0];
      markupModelData = [v9 markupModelData];
      v24 = [markupModelData copy];
      [(ICDocCamDocumentInfo *)v17 setMarkupModelData:v24];

      docInfos = [(VNDocumentCameraScan *)selfCopy docInfos];
      [docInfos addObject:v17];
    }

    v26 = 1;
    collectionCopy = v44;
    v47 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v47)
    {
      continue;
    }

    break;
  }

LABEL_19:

  return v26;
}

- (id)infoCollectionWithImageCache:(id)cache error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  v7 = objc_alloc_init(ICDocCamDocumentInfoCollection);
  title = [(VNDocumentCameraScan *)self title];
  [(ICDocCamDocumentInfoCollection *)v7 setTitle:title];

  docInfos = [(VNDocumentCameraScan *)self docInfos];
  v10 = [docInfos copy];
  [(ICDocCamDocumentInfoCollection *)v7 setDocInfos:v10];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [(ICDocCamDocumentInfoCollection *)v7 docInfos];
  v31 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v31)
  {
    selfCopy = self;
    v30 = *v33;
    v11 = 0x277CCA000uLL;
    v27 = v7;
    while (2)
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v33 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        defaultManager = [*(v11 + 2560) defaultManager];
        croppedAndFilteredImageUUID = [v13 croppedAndFilteredImageUUID];
        [(VNDocumentCameraScan *)self getImageURL:croppedAndFilteredImageUUID];
        v17 = v16 = v11;
        croppedAndFilteredImageUUID2 = [v13 croppedAndFilteredImageUUID];
        v19 = [cacheCopy getImageURL:croppedAndFilteredImageUUID2 async:0];
        [defaultManager copyItemAtURL:v17 toURL:v19 error:error];

        v11 = v16;
        self = selfCopy;

        if (!*error)
        {
          defaultManager2 = [*(v11 + 2560) defaultManager];
          fullImageUUID = [v13 fullImageUUID];
          v22 = [(VNDocumentCameraScan *)selfCopy getImageURL:fullImageUUID];
          fullImageUUID2 = [v13 fullImageUUID];
          v24 = [cacheCopy getImageURL:fullImageUUID2 async:0];
          [defaultManager2 copyItemAtURL:v22 toURL:v24 error:error];

          if (!*error)
          {
            continue;
          }
        }

        v25 = 0;
        v7 = v27;
        goto LABEL_12;
      }

      v7 = v27;
      v31 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }
  }

  v25 = v7;
LABEL_12:

  return v25;
}

- (BOOL)makeSureScanDirectoryExists:(id *)exists
{
  scannedDocumentImageDirectoryURL = [(VNDocumentCameraScan *)self scannedDocumentImageDirectoryURL];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [defaultManager createDirectoryAtURL:scannedDocumentImageDirectoryURL withIntermediateDirectories:1 attributes:0 error:exists];

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

- (id)URLForImageInFolder:(id)folder withUUID:(id)d
{
  v4 = [folder URLByAppendingPathComponent:d];
  v5 = [v4 URLByAppendingPathExtension:@"jpg"];

  return v5;
}

- (id)URLForImageWithUUID:(id)d
{
  dCopy = d;
  scannedDocumentImageDirectoryURL = [(VNDocumentCameraScan *)self scannedDocumentImageDirectoryURL];
  v6 = [(VNDocumentCameraScan *)self URLForImageInFolder:scannedDocumentImageDirectoryURL withUUID:dCopy];

  return v6;
}

- (id)copyImageAtURL:(id)l
{
  v25 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v18 = 0;
  v5 = [(VNDocumentCameraScan *)self makeSureScanDirectoryExists:&v18];
  v6 = v18;
  uUIDString = 0;
  if (v5)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [lCopy path];
    v10 = [defaultManager fileExistsAtPath:path];

    if (v10)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];

      v12 = [(VNDocumentCameraScan *)self URLForImageWithUUID:uUIDString];
      v17 = 0;
      v13 = [defaultManager copyItemAtURL:lCopy toURL:v12 error:&v17];
      v14 = v17;
      if ((v13 & 1) == 0)
      {
        v15 = os_log_create("com.apple.documentcamera", "");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v20 = lCopy;
          v21 = 2112;
          v22 = v12;
          v23 = 2112;
          v24 = v14;
          _os_log_error_impl(&dword_249253000, v15, OS_LOG_TYPE_ERROR, "Can't copy image file %@ to %@ because %@", buf, 0x20u);
        }

        uUIDString = 0;
      }
    }

    else
    {
      v12 = os_log_create("com.apple.documentcamera", "");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [DCScannedDocument copyImageForSaving:toFolderURL:];
      }

      uUIDString = 0;
    }
  }

  return uUIDString;
}

- (id)getImage:(id)image
{
  imageCopy = image;
  if (!imageCopy)
  {
    v6 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(VNDocumentCameraScan *)v6 getImage:v14, v15, v16, v17, v18, v19, v20];
    }

    goto LABEL_7;
  }

  v22 = 0;
  v5 = [(VNDocumentCameraScan *)self makeSureScanDirectoryExists:&v22];
  v6 = v22;
  if (!v5)
  {
LABEL_7:
    v13 = 0;
    goto LABEL_12;
  }

  v7 = [(VNDocumentCameraScan *)self getImageURL:imageCopy];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v7 path];
  v10 = [defaultManager fileExistsAtPath:path];

  if (v10)
  {
    v11 = MEMORY[0x277D755B8];
    path2 = [v7 path];
    v13 = [v11 imageWithContentsOfFile:path2];
  }

  else
  {
    path2 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(path2, OS_LOG_TYPE_ERROR))
    {
      [VNDocumentCameraScan getImage:];
    }

    v13 = 0;
  }

LABEL_12:

  return v13;
}

- (BOOL)deleteImage:(id)image
{
  imageCopy = image;
  v17 = 0;
  v5 = [(VNDocumentCameraScan *)self makeSureScanDirectoryExists:&v17];
  v6 = v17;
  if (v5)
  {
    v7 = [(VNDocumentCameraScan *)self getImageURL:imageCopy];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [v7 path];
    v10 = [defaultManager fileExistsAtPath:path];

    if (v10)
    {
      v16 = 0;
      v11 = [defaultManager removeItemAtURL:v7 error:&v16];
      v12 = v16;
      if (v11)
      {
        v13 = 1;
LABEL_12:

        goto LABEL_13;
      }

      v14 = os_log_create("com.apple.documentcamera", "");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [DCScannedDocument deleteImage:];
      }
    }

    else
    {
      v14 = os_log_create("com.apple.documentcamera", "");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [VNDocumentCameraScan deleteImage:];
      }

      v12 = 0;
    }

    v13 = 0;
    goto LABEL_12;
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (void)deleteAllImages
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  scannedDocumentImageDirectoryURL = [(VNDocumentCameraScan *)self scannedDocumentImageDirectoryURL];
  path = [scannedDocumentImageDirectoryURL path];
  v6 = [defaultManager fileExistsAtPath:path];

  if (v6)
  {
    v12 = 0;
    v7 = [defaultManager removeItemAtURL:scannedDocumentImageDirectoryURL error:&v12];
    v8 = v12;
    v9 = v8;
    if (v7)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      v11 = os_log_create("com.apple.documentcamera", "");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [DCScannedDocument deleteAllImages];
      }
    }
  }

  [(VNDocumentCameraScan *)self setDocInfos:0];
}

- (void)imageOfPageAtIndex:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  v4 = "[VNDocumentCameraScan imageOfPageAtIndex:]";
  v5 = 2112;
  v6 = a1;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_249253000, log, OS_LOG_TYPE_ERROR, "%s: nil image %@ %@", &v3, 0x20u);
}

@end