@interface DCScannedDocument
+ (id)scannedDocumentsFolderURL;
+ (void)initialize;
- (BOOL)copyImagesFromDocInfoCollection:(id)collection imageCache:(id)cache;
- (BOOL)deleteImage:(id)image;
- (BOOL)makeSureScanDirectoryExists:(id *)exists;
- (BOOL)saveToURL:(id)l error:(id *)error;
- (DCScannedDocument)initWithDocInfoCollection:(id)collection imageCache:(id)cache;
- (DCScannedDocument)initWithURL:(id)l error:(id *)error;
- (id)URLForImageInFolder:(id)folder withUUID:(id)d;
- (id)URLForImageWithUUID:(id)d;
- (id)copyImageAtURL:(id)l;
- (id)copyImageForLoading:(id)loading fromFolderURL:(id)l;
- (id)copyImageForSaving:(id)saving toFolderURL:(id)l;
- (id)getImage:(id)image;
- (id)imageForScanAtIndex:(unint64_t)index error:(id *)error;
- (id)imageOfPageAtIndex:(unint64_t)index;
- (unint64_t)pageCount;
- (void)dealloc;
- (void)deleteAllImages;
- (void)replaceContentsWithDocInfoCollection:(id)collection imageCache:(id)cache;
@end

@implementation DCScannedDocument

+ (id)scannedDocumentsFolderURL
{
  if (scannedDocumentsFolderURL_onceToken != -1)
  {
    +[DCScannedDocument scannedDocumentsFolderURL];
  }

  v3 = scannedDocumentsFolderURL_URL;

  return v3;
}

void __46__DCScannedDocument_scannedDocumentsFolderURL__block_invoke()
{
  v0 = +[DCCachesDirectory sharedCachesDirectory];
  v3 = [v0 cachesDirectoryURL];

  v1 = [v3 URLByAppendingPathComponent:@"com.apple.ScannedDocuments"];
  v2 = scannedDocumentsFolderURL_URL;
  scannedDocumentsFolderURL_URL = v1;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v4 = +[DCScannedDocument scannedDocumentsFolderURL];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [v4 path];
    [defaultManager removeItemAtPath:path error:0];
  }
}

- (DCScannedDocument)initWithDocInfoCollection:(id)collection imageCache:(id)cache
{
  v19.receiver = self;
  v19.super_class = DCScannedDocument;
  cacheCopy = cache;
  collectionCopy = collection;
  v7 = [(DCScannedDocument *)&v19 init];
  if (v7)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    v10 = +[DCScannedDocument scannedDocumentsFolderURL];
    v11 = [v10 URLByAppendingPathComponent:uUIDString];
    scannedDocumentImageDirectoryURL = v7->_scannedDocumentImageDirectoryURL;
    v7->_scannedDocumentImageDirectoryURL = v11;
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v14 = *MEMORY[0x277D76770];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [defaultCenter addObserver:v7 selector:sel_applicationWillTerminate_ name:v14 object:mEMORY[0x277D75128]];

  [(DCScannedDocument *)v7 copyImagesFromDocInfoCollection:collectionCopy imageCache:cacheCopy];
  title = [collectionCopy title];

  v17 = [title copy];
  [(DCScannedDocument *)v7 setTitle:v17];

  return v7;
}

- (DCScannedDocument)initWithURL:(id)l error:(id *)error
{
  v66 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v64.receiver = self;
  v64.super_class = DCScannedDocument;
  v5 = [(DCScannedDocument *)&v64 init];
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
      goto LABEL_24;
    }

    v10 = [(DCScannedDocument *)v50 pListURL:lCopy];
    path2 = [v10 path];
    v12 = [defaultManager fileExistsAtPath:path2];

    if (!v12)
    {

      v39 = 0;
      v6 = v50;
      goto LABEL_24;
    }

    v46 = defaultManager;
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    v15 = +[DCScannedDocument scannedDocumentsFolderURL];
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
    lastPathComponent = [v21 objectForKey:@"DocumentName"];
    if (!lastPathComponent)
    {
      lastPathComponent = [lCopy lastPathComponent];
    }

    [(DCScannedDocument *)v50 setTitle:lastPathComponent, lastPathComponent];
    array = [MEMORY[0x277CBEB18] array];
    [(DCScannedDocument *)v50 setDocInfos:array];

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

          v25 = *(*(&v60 + 1) + 8 * i);
          v54 = [v25 objectForKey:@"Metadata"];
          v26 = [v25 objectForKey:@"ImageQuad"];
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
          v27 = [v25 objectForKey:@"CroppedAndFilteredImage"];
          v28 = [v25 objectForKey:@"FullImage"];
          v29 = [v25 objectForKey:@"FilterType"];
          v30 = [v25 objectForKey:@"Orientation"];
          v52 = [ICDocCamImageFilters imageFilterTypeFromNonLocalizedName:v29];
          v51 = dc_orientationFromNonLocalizedName(v30);
          v31 = [v25 objectForKey:@"MarkupModelData"];
          v32 = [(DCScannedDocument *)v6 copyImageForLoading:v27 fromFolderURL:lCopy];
          v53 = v28;
          if (v32)
          {
            v33 = [(DCScannedDocument *)v6 copyImageForLoading:v28 fromFolderURL:lCopy];
            v34 = v33 != 0;
            if (v33)
            {
              v35 = [[ICDocCamDocumentInfo alloc] initWithDelegate:0];
              [(ICDocCamDocumentInfo *)v35 setMetaData:v54];
              v36 = [ICDocCamImageQuad alloc];
              v37 = [(ICDocCamImageQuad *)v36 initWithBottomLeft:v57.x bottomRight:v57.y topLeft:v56.x topRight:v56.y, point.x, point.y, v58.x, v58.y];
              [(ICDocCamDocumentInfo *)v35 setImageQuad:v37];

              [(ICDocCamDocumentInfo *)v35 setCroppedAndFilteredImageUUID:v32];
              [(ICDocCamDocumentInfo *)v35 setFullImageUUID:v33];
              [(ICDocCamDocumentInfo *)v35 setCurrentFilter:v52];
              [(ICDocCamDocumentInfo *)v35 setCurrentOrientation:v51];
              [(ICDocCamDocumentInfo *)v35 setMarkupModelData:v31];
              docInfos = [(DCScannedDocument *)v50 docInfos];
              [docInfos addObject:v35];

              v34 = v33 != 0;
              v6 = v50;
            }
          }

          else
          {
            v34 = 0;
          }

          if (!v34)
          {

            v39 = 0;
            goto LABEL_24;
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
LABEL_24:

  return v39;
}

- (void)dealloc
{
  [(DCScannedDocument *)self deleteAllImages];
  v3.receiver = self;
  v3.super_class = DCScannedDocument;
  [(DCScannedDocument *)&v3 dealloc];
}

- (void)replaceContentsWithDocInfoCollection:(id)collection imageCache:(id)cache
{
  cacheCopy = cache;
  collectionCopy = collection;
  [(DCScannedDocument *)self deleteAllImages];
  [(DCScannedDocument *)self setTitle:0];
  [(DCScannedDocument *)self copyImagesFromDocInfoCollection:collectionCopy imageCache:cacheCopy];

  title = [collectionCopy title];

  v8 = [title copy];
  [(DCScannedDocument *)self setTitle:v8];
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
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", &unk_285C6D450, &unk_285C6D468];
    [dictionary setObject:v10 forKey:@"Version"];

    title = [(DCScannedDocument *)self title];

    if (title)
    {
      [(DCScannedDocument *)self title];
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
    obj = [(DCScannedDocument *)self docInfos];
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
          v15 = [(DCScannedDocument *)self copyImageForSaving:croppedAndFilteredImageUUID toFolderURL:lCopy];
          if (!v15)
          {
            goto LABEL_20;
          }

          v16 = v15;
          fullImageUUID = [v14 fullImageUUID];
          v18 = [(DCScannedDocument *)self copyImageForSaving:fullImageUUID toFolderURL:lCopy];
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
    obj = [(DCScannedDocument *)self pListURL:lCopy];
    LODWORD(croppedAndFilteredImageUUID) = [dictionary writeToURL:? error:?];
    if (croppedAndFilteredImageUUID)
    {
      title2 = [(DCScannedDocument *)self title];

      if (!title2)
      {
        [(DCScannedDocument *)self setTitle:v12];
      }
    }

LABEL_21:
  }

  return croppedAndFilteredImageUUID;
}

- (id)copyImageForSaving:(id)saving toFolderURL:(id)l
{
  v29 = *MEMORY[0x277D85DE8];
  savingCopy = saving;
  lCopy = l;
  v22 = 0;
  v8 = [(DCScannedDocument *)self makeSureScanDirectoryExists:&v22];
  v9 = v22;
  uUIDString = 0;
  if (v8)
  {
    v11 = [(DCScannedDocument *)self URLForImageWithUUID:savingCopy];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [v11 path];
    v14 = [defaultManager fileExistsAtPath:path];

    if (v14)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];

      v16 = [(DCScannedDocument *)self URLForImageInFolder:lCopy withUUID:uUIDString];
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
  v8 = [(DCScannedDocument *)self makeSureScanDirectoryExists:&v22];
  v9 = v22;
  uUIDString = 0;
  if (v8)
  {
    v11 = [(DCScannedDocument *)self URLForImageInFolder:lCopy withUUID:loadingCopy];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [v11 path];
    v14 = [defaultManager fileExistsAtPath:path];

    if (v14)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];

      v16 = [(DCScannedDocument *)self URLForImageWithUUID:uUIDString];
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
  docInfos = [(DCScannedDocument *)self docInfos];
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
    v9 = [(DCScannedDocument *)self imageOfPageAtIndex:index];
  }

  return v9;
}

- (unint64_t)pageCount
{
  docInfos = [(DCScannedDocument *)self docInfos];

  if (!docInfos)
  {
    return 0;
  }

  docInfos2 = [(DCScannedDocument *)self docInfos];
  v5 = [docInfos2 count];

  return v5;
}

- (id)imageOfPageAtIndex:(unint64_t)index
{
  docInfos = [(DCScannedDocument *)self docInfos];

  if (!docInfos)
  {
    v10 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(DCScannedDocument *)v10 imageOfPageAtIndex:v14, v15, v16, v17, v18, v19, v20];
    }

    v12 = 0;
    goto LABEL_11;
  }

  docInfos2 = [(DCScannedDocument *)self docInfos];
  v8 = [docInfos2 count];

  if (v8 > index)
  {
    docInfos3 = [(DCScannedDocument *)self docInfos];
    v10 = [docInfos3 objectAtIndexedSubscript:index];

    croppedAndFilteredImageUUID = [v10 croppedAndFilteredImageUUID];
    v12 = [(DCScannedDocument *)self getImage:croppedAndFilteredImageUUID];
    if (!v12)
    {
      v13 = os_log_create("com.apple.documentcamera", "");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(DCScannedDocument *)croppedAndFilteredImageUUID imageOfPageAtIndex:v10, v13];
      }
    }

LABEL_11:
    goto LABEL_13;
  }

  v12 = 0;
LABEL_13:
  docInfos4 = [(DCScannedDocument *)self docInfos];
  v22 = [docInfos4 count];

  if (v22 <= index)
  {
    v26 = MEMORY[0x277CCACA8];
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v29 = NSStringFromSelector(a2);
    v30 = [v26 stringWithFormat:@"-[%@ %@]: index (%lu) beyond bounds (%lu).", v28, v29, index, -[DCScannedDocument pageCount](self, "pageCount")];

    v31 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE730] reason:v30 userInfo:0];
    objc_exception_throw(v31);
  }

  if (v12)
  {
    v23 = v12;
  }

  else
  {
    v23 = objc_alloc_init(MEMORY[0x277D755B8]);
  }

  v24 = v23;

  return v24;
}

- (BOOL)copyImagesFromDocInfoCollection:(id)collection imageCache:(id)cache
{
  v56 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  cacheCopy = cache;
  array = [MEMORY[0x277CBEB18] array];
  [(DCScannedDocument *)self setDocInfos:array];

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
      v12 = [(DCScannedDocument *)self copyImageAtURL:v11];
      fullImageUUID = [v9 fullImageUUID];
      v14 = [cacheCopy getImageURL:fullImageUUID async:0];
      v15 = [(DCScannedDocument *)self copyImageAtURL:v14];
      v16 = v15;
      if (!v12)
      {
        v27 = os_log_create("com.apple.documentcamera", "");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [(DCScannedDocument *)v27 copyImagesFromDocInfoCollection:v28 imageCache:v29, v30, v31, v32, v33, v34];
        }

        [(DCScannedDocument *)self deleteAllImages];
        goto LABEL_18;
      }

      if (!v15)
      {
        v35 = os_log_create("com.apple.documentcamera", "");
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [(DCScannedDocument *)v35 copyImagesFromDocInfoCollection:v36 imageCache:v37, v38, v39, v40, v41, v42];
        }

        [(DCScannedDocument *)self deleteAllImages];
LABEL_18:
        collectionCopy = v44;

        v26 = 0;
        goto LABEL_19;
      }

      v50 = v11;
      v17 = [[ICDocCamDocumentInfo alloc] initWithDelegate:0];
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

      docInfos = [(DCScannedDocument *)selfCopy docInfos];
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

- (BOOL)makeSureScanDirectoryExists:(id *)exists
{
  scannedDocumentImageDirectoryURL = [(DCScannedDocument *)self scannedDocumentImageDirectoryURL];
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
  scannedDocumentImageDirectoryURL = [(DCScannedDocument *)self scannedDocumentImageDirectoryURL];
  v6 = [(DCScannedDocument *)self URLForImageInFolder:scannedDocumentImageDirectoryURL withUUID:dCopy];

  return v6;
}

- (id)copyImageAtURL:(id)l
{
  v25 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v18 = 0;
  v5 = [(DCScannedDocument *)self makeSureScanDirectoryExists:&v18];
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

      v12 = [(DCScannedDocument *)self URLForImageWithUUID:uUIDString];
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
      [(DCScannedDocument *)v6 getImage:v14, v15, v16, v17, v18, v19, v20];
    }

    goto LABEL_7;
  }

  v22 = 0;
  v5 = [(DCScannedDocument *)self makeSureScanDirectoryExists:&v22];
  v6 = v22;
  if (!v5)
  {
LABEL_7:
    v13 = 0;
    goto LABEL_12;
  }

  v7 = [(DCScannedDocument *)self getImageURL:imageCopy];
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
      [DCScannedDocument getImage:];
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
  v5 = [(DCScannedDocument *)self makeSureScanDirectoryExists:&v17];
  v6 = v17;
  if (v5)
  {
    v7 = [(DCScannedDocument *)self getImageURL:imageCopy];
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
        [DCScannedDocument deleteImage:];
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
  scannedDocumentImageDirectoryURL = [(DCScannedDocument *)self scannedDocumentImageDirectoryURL];
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

  [(DCScannedDocument *)self setDocInfos:0];
}

- (void)imageOfPageAtIndex:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  v4 = "[DCScannedDocument imageOfPageAtIndex:]";
  v5 = 2112;
  v6 = a1;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_249253000, log, OS_LOG_TYPE_ERROR, "%s: nil image %@ %@", &v3, 0x20u);
}

@end