@interface DCScannedDocument
+ (id)scannedDocumentsFolderURL;
+ (void)initialize;
- (BOOL)copyImagesFromDocInfoCollection:(id)a3 imageCache:(id)a4;
- (BOOL)deleteImage:(id)a3;
- (BOOL)makeSureScanDirectoryExists:(id *)a3;
- (BOOL)saveToURL:(id)a3 error:(id *)a4;
- (DCScannedDocument)initWithDocInfoCollection:(id)a3 imageCache:(id)a4;
- (DCScannedDocument)initWithURL:(id)a3 error:(id *)a4;
- (id)URLForImageInFolder:(id)a3 withUUID:(id)a4;
- (id)URLForImageWithUUID:(id)a3;
- (id)copyImageAtURL:(id)a3;
- (id)copyImageForLoading:(id)a3 fromFolderURL:(id)a4;
- (id)copyImageForSaving:(id)a3 toFolderURL:(id)a4;
- (id)getImage:(id)a3;
- (id)imageForScanAtIndex:(unint64_t)a3 error:(id *)a4;
- (id)imageOfPageAtIndex:(unint64_t)a3;
- (unint64_t)pageCount;
- (void)dealloc;
- (void)deleteAllImages;
- (void)replaceContentsWithDocInfoCollection:(id)a3 imageCache:(id)a4;
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
  if (objc_opt_class() == a1)
  {
    v4 = +[DCScannedDocument scannedDocumentsFolderURL];
    v2 = [MEMORY[0x277CCAA00] defaultManager];
    v3 = [v4 path];
    [v2 removeItemAtPath:v3 error:0];
  }
}

- (DCScannedDocument)initWithDocInfoCollection:(id)a3 imageCache:(id)a4
{
  v19.receiver = self;
  v19.super_class = DCScannedDocument;
  v5 = a4;
  v6 = a3;
  v7 = [(DCScannedDocument *)&v19 init];
  if (v7)
  {
    v8 = [MEMORY[0x277CCAD78] UUID];
    v9 = [v8 UUIDString];

    v10 = +[DCScannedDocument scannedDocumentsFolderURL];
    v11 = [v10 URLByAppendingPathComponent:v9];
    scannedDocumentImageDirectoryURL = v7->_scannedDocumentImageDirectoryURL;
    v7->_scannedDocumentImageDirectoryURL = v11;
  }

  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  v14 = *MEMORY[0x277D76770];
  v15 = [MEMORY[0x277D75128] sharedApplication];
  [v13 addObserver:v7 selector:sel_applicationWillTerminate_ name:v14 object:v15];

  [(DCScannedDocument *)v7 copyImagesFromDocInfoCollection:v6 imageCache:v5];
  v16 = [v6 title];

  v17 = [v16 copy];
  [(DCScannedDocument *)v7 setTitle:v17];

  return v7;
}

- (DCScannedDocument)initWithURL:(id)a3 error:(id *)a4
{
  v66 = *MEMORY[0x277D85DE8];
  v55 = a3;
  v64.receiver = self;
  v64.super_class = DCScannedDocument;
  v5 = [(DCScannedDocument *)&v64 init];
  v6 = v5;
  if (v5)
  {
    v50 = v5;
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [v55 path];
    v9 = [v7 fileExistsAtPath:v8];

    if (!v9)
    {

      v39 = 0;
      v6 = v50;
      goto LABEL_24;
    }

    v10 = [(DCScannedDocument *)v50 pListURL:v55];
    v11 = [v10 path];
    v12 = [v7 fileExistsAtPath:v11];

    if (!v12)
    {

      v39 = 0;
      v6 = v50;
      goto LABEL_24;
    }

    v46 = v7;
    v13 = [MEMORY[0x277CCAD78] UUID];
    v14 = [v13 UUIDString];

    v15 = +[DCScannedDocument scannedDocumentsFolderURL];
    v44 = v14;
    v16 = [v15 URLByAppendingPathComponent:v14];
    scannedDocumentImageDirectoryURL = v50->_scannedDocumentImageDirectoryURL;
    v50->_scannedDocumentImageDirectoryURL = v16;

    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    v19 = *MEMORY[0x277D76770];
    v20 = [MEMORY[0x277D75128] sharedApplication];
    [v18 addObserver:v50 selector:sel_applicationWillTerminate_ name:v19 object:v20];

    v45 = v10;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v10];
    v42 = [v21 objectForKey:@"Version"];
    v22 = [v21 objectForKey:@"DocumentName"];
    if (!v22)
    {
      v22 = [v55 lastPathComponent];
    }

    [(DCScannedDocument *)v50 setTitle:v22, v22];
    v23 = [MEMORY[0x277CBEB18] array];
    [(DCScannedDocument *)v50 setDocInfos:v23];

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
          v32 = [(DCScannedDocument *)v6 copyImageForLoading:v27 fromFolderURL:v55];
          v53 = v28;
          if (v32)
          {
            v33 = [(DCScannedDocument *)v6 copyImageForLoading:v28 fromFolderURL:v55];
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
              v38 = [(DCScannedDocument *)v50 docInfos];
              [v38 addObject:v35];

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

- (void)replaceContentsWithDocInfoCollection:(id)a3 imageCache:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(DCScannedDocument *)self deleteAllImages];
  [(DCScannedDocument *)self setTitle:0];
  [(DCScannedDocument *)self copyImagesFromDocInfoCollection:v7 imageCache:v6];

  v9 = [v7 title];

  v8 = [v9 copy];
  [(DCScannedDocument *)self setTitle:v8];
}

- (BOOL)saveToURL:(id)a3 error:(id *)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  [v7 removeItemAtURL:v6 error:0];
  LOBYTE(v8) = 0;
  if ([v7 createDirectoryAtURL:v6 withIntermediateDirectories:0 attributes:0 error:a4])
  {
    v9 = [MEMORY[0x277CBEB38] dictionary];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", &unk_285C6D450, &unk_285C6D468];
    [v9 setObject:v10 forKey:@"Version"];

    v11 = [(DCScannedDocument *)self title];

    if (v11)
    {
      [(DCScannedDocument *)self title];
    }

    else
    {
      [v6 lastPathComponent];
    }
    v12 = ;
    [v9 setObject:v12 forKey:@"DocumentName"];
    v45 = [MEMORY[0x277CBEB18] array];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = [(DCScannedDocument *)self docInfos];
    v44 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v44)
    {
      v42 = v6;
      v43 = *v47;
      v38 = v9;
      v39 = v7;
      v41 = self;
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
          v8 = [v14 croppedAndFilteredImageUUID];
          v15 = [(DCScannedDocument *)self copyImageForSaving:v8 toFolderURL:v6];
          if (!v15)
          {
            goto LABEL_20;
          }

          v16 = v15;
          v17 = [v14 fullImageUUID];
          v18 = [(DCScannedDocument *)self copyImageForSaving:v17 toFolderURL:v6];
          if (!v18)
          {

LABEL_20:
            LOBYTE(v8) = 0;
            v9 = v38;
            v7 = v39;
            v12 = v37;
            goto LABEL_21;
          }

          v19 = v18;
          v20 = [MEMORY[0x277CBEB38] dictionary];
          v21 = [v14 metaData];
          [v20 setObject:v21 forKey:@"Metadata"];

          v22 = [MEMORY[0x277CBEB38] dictionary];
          v23 = [v14 imageQuad];
          [v23 topLeft];
          DictionaryRepresentation = CGPointCreateDictionaryRepresentation(v52);
          [v22 setObject:DictionaryRepresentation forKey:@"ImageQuadTopLeft"];

          v25 = [v14 imageQuad];
          [v25 topRight];
          v26 = CGPointCreateDictionaryRepresentation(v53);
          [v22 setObject:v26 forKey:@"ImageQuadTopRight"];

          v27 = [v14 imageQuad];
          [v27 bottomLeft];
          v28 = CGPointCreateDictionaryRepresentation(v54);
          [v22 setObject:v28 forKey:@"ImageQuadBottomLeft"];

          v29 = [v14 imageQuad];
          [v29 bottomRight];
          v30 = CGPointCreateDictionaryRepresentation(v55);
          [v22 setObject:v30 forKey:@"ImageQuadBottomRight"];

          [v20 setObject:v22 forKey:@"ImageQuad"];
          [v20 setObject:v19 forKey:@"FullImage"];
          [v20 setObject:v16 forKey:@"CroppedAndFilteredImage"];
          v31 = +[ICDocCamImageFilters nonLocalizedImageFilterNameForType:](ICDocCamImageFilters, "nonLocalizedImageFilterNameForType:", [v14 currentFilter]);
          [v20 setObject:v31 forKey:@"FilterType"];

          v32 = dc_nonLocalizedOrientationNameForType([v14 currentOrientation]);
          [v20 setObject:v32 forKey:@"Orientation"];

          v33 = [v14 markupModelData];

          if (v33)
          {
            v34 = [v14 markupModelData];
            [v20 setObject:v34 forKey:@"MarkupModelData"];
          }

          [v45 addObject:v20];

          self = v41;
          v6 = v42;
        }

        v9 = v38;
        v7 = v39;
        v12 = v37;
        v44 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
        if (v44)
        {
          continue;
        }

        break;
      }
    }

    [v9 setObject:v45 forKey:@"DocumentInfos"];
    obj = [(DCScannedDocument *)self pListURL:v6];
    LODWORD(v8) = [v9 writeToURL:? error:?];
    if (v8)
    {
      v35 = [(DCScannedDocument *)self title];

      if (!v35)
      {
        [(DCScannedDocument *)self setTitle:v12];
      }
    }

LABEL_21:
  }

  return v8;
}

- (id)copyImageForSaving:(id)a3 toFolderURL:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v22 = 0;
  v8 = [(DCScannedDocument *)self makeSureScanDirectoryExists:&v22];
  v9 = v22;
  v10 = 0;
  if (v8)
  {
    v11 = [(DCScannedDocument *)self URLForImageWithUUID:v6];
    v12 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = [v11 path];
    v14 = [v12 fileExistsAtPath:v13];

    if (v14)
    {
      v15 = [MEMORY[0x277CCAD78] UUID];
      v10 = [v15 UUIDString];

      v16 = [(DCScannedDocument *)self URLForImageInFolder:v7 withUUID:v10];
      v21 = 0;
      v17 = [v12 copyItemAtURL:v11 toURL:v16 error:&v21];
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

        v10 = 0;
      }
    }

    else
    {
      v16 = os_log_create("com.apple.documentcamera", "");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [DCScannedDocument copyImageForSaving:toFolderURL:];
      }

      v10 = 0;
    }
  }

  return v10;
}

- (id)copyImageForLoading:(id)a3 fromFolderURL:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v22 = 0;
  v8 = [(DCScannedDocument *)self makeSureScanDirectoryExists:&v22];
  v9 = v22;
  v10 = 0;
  if (v8)
  {
    v11 = [(DCScannedDocument *)self URLForImageInFolder:v7 withUUID:v6];
    v12 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = [v11 path];
    v14 = [v12 fileExistsAtPath:v13];

    if (v14)
    {
      v15 = [MEMORY[0x277CCAD78] UUID];
      v10 = [v15 UUIDString];

      v16 = [(DCScannedDocument *)self URLForImageWithUUID:v10];
      v21 = 0;
      v17 = [v12 copyItemAtURL:v11 toURL:v16 error:&v21];
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

        v10 = 0;
      }
    }

    else
    {
      v16 = os_log_create("com.apple.documentcamera", "");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [DCScannedDocument copyImageForSaving:toFolderURL:];
      }

      v10 = 0;
    }
  }

  return v10;
}

- (id)imageForScanAtIndex:(unint64_t)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v7 = [(DCScannedDocument *)self docInfos];
  v8 = [v7 count];

  if (v8 <= a3)
  {
    if (a4)
    {
      v10 = [DCLocalization localizedStringForKey:@"Index out of range." value:@"Index out of range." table:@"Localizable"];
      v13 = *MEMORY[0x277CCA450];
      v14[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.documentcamera" code:1 userInfo:v11];
    }

    v9 = 0;
  }

  else
  {
    v9 = [(DCScannedDocument *)self imageOfPageAtIndex:a3];
  }

  return v9;
}

- (unint64_t)pageCount
{
  v3 = [(DCScannedDocument *)self docInfos];

  if (!v3)
  {
    return 0;
  }

  v4 = [(DCScannedDocument *)self docInfos];
  v5 = [v4 count];

  return v5;
}

- (id)imageOfPageAtIndex:(unint64_t)a3
{
  v6 = [(DCScannedDocument *)self docInfos];

  if (!v6)
  {
    v10 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(DCScannedDocument *)v10 imageOfPageAtIndex:v14, v15, v16, v17, v18, v19, v20];
    }

    v12 = 0;
    goto LABEL_11;
  }

  v7 = [(DCScannedDocument *)self docInfos];
  v8 = [v7 count];

  if (v8 > a3)
  {
    v9 = [(DCScannedDocument *)self docInfos];
    v10 = [v9 objectAtIndexedSubscript:a3];

    v11 = [v10 croppedAndFilteredImageUUID];
    v12 = [(DCScannedDocument *)self getImage:v11];
    if (!v12)
    {
      v13 = os_log_create("com.apple.documentcamera", "");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(DCScannedDocument *)v11 imageOfPageAtIndex:v10, v13];
      }
    }

LABEL_11:
    goto LABEL_13;
  }

  v12 = 0;
LABEL_13:
  v21 = [(DCScannedDocument *)self docInfos];
  v22 = [v21 count];

  if (v22 <= a3)
  {
    v26 = MEMORY[0x277CCACA8];
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v29 = NSStringFromSelector(a2);
    v30 = [v26 stringWithFormat:@"-[%@ %@]: index (%lu) beyond bounds (%lu).", v28, v29, a3, -[DCScannedDocument pageCount](self, "pageCount")];

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

- (BOOL)copyImagesFromDocInfoCollection:(id)a3 imageCache:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v48 = a4;
  v7 = [MEMORY[0x277CBEB18] array];
  [(DCScannedDocument *)self setDocInfos:v7];

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = [v6 docInfos];
  v47 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (!v47)
  {
    v26 = 1;
    goto LABEL_19;
  }

  v46 = *v52;
  v44 = v6;
  while (2)
  {
    for (i = 0; i != v47; ++i)
    {
      if (*v52 != v46)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v51 + 1) + 8 * i);
      v10 = [v9 croppedAndFilteredImageUUID];
      v11 = [v48 getImageURL:v10 async:0];
      v12 = [(DCScannedDocument *)self copyImageAtURL:v11];
      v13 = [v9 fullImageUUID];
      v14 = [v48 getImageURL:v13 async:0];
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
        v6 = v44;

        v26 = 0;
        goto LABEL_19;
      }

      v50 = v11;
      v17 = [[ICDocCamDocumentInfo alloc] initWithDelegate:0];
      v18 = [v9 metaData];
      v49 = v10;
      v19 = self;
      v20 = [v18 copy];
      [(ICDocCamDocumentInfo *)v17 setMetaData:v20];

      v21 = [v9 imageQuad];
      v22 = [v21 copy];
      [(ICDocCamDocumentInfo *)v17 setImageQuad:v22];

      self = v19;
      [(ICDocCamDocumentInfo *)v17 setCroppedAndFilteredImageUUID:v12];
      [(ICDocCamDocumentInfo *)v17 setCroppedButNotFilteredImageUUID:0];
      [(ICDocCamDocumentInfo *)v17 setFullImageUUID:v16];
      [(ICDocCamDocumentInfo *)v17 setMeshAnimImageUUID:0];
      -[ICDocCamDocumentInfo setCurrentFilter:](v17, "setCurrentFilter:", [v9 currentFilter]);
      -[ICDocCamDocumentInfo setCurrentOrientation:](v17, "setCurrentOrientation:", [v9 currentOrientation]);
      [(ICDocCamDocumentInfo *)v17 setScanDataDelegateIdentifier:0];
      v23 = [v9 markupModelData];
      v24 = [v23 copy];
      [(ICDocCamDocumentInfo *)v17 setMarkupModelData:v24];

      v25 = [(DCScannedDocument *)v19 docInfos];
      [v25 addObject:v17];
    }

    v26 = 1;
    v6 = v44;
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

- (BOOL)makeSureScanDirectoryExists:(id *)a3
{
  v4 = [(DCScannedDocument *)self scannedDocumentImageDirectoryURL];
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

- (id)URLForImageInFolder:(id)a3 withUUID:(id)a4
{
  v4 = [a3 URLByAppendingPathComponent:a4];
  v5 = [v4 URLByAppendingPathExtension:@"jpg"];

  return v5;
}

- (id)URLForImageWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(DCScannedDocument *)self scannedDocumentImageDirectoryURL];
  v6 = [(DCScannedDocument *)self URLForImageInFolder:v5 withUUID:v4];

  return v6;
}

- (id)copyImageAtURL:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0;
  v5 = [(DCScannedDocument *)self makeSureScanDirectoryExists:&v18];
  v6 = v18;
  v7 = 0;
  if (v5)
  {
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [v4 path];
    v10 = [v8 fileExistsAtPath:v9];

    if (v10)
    {
      v11 = [MEMORY[0x277CCAD78] UUID];
      v7 = [v11 UUIDString];

      v12 = [(DCScannedDocument *)self URLForImageWithUUID:v7];
      v17 = 0;
      v13 = [v8 copyItemAtURL:v4 toURL:v12 error:&v17];
      v14 = v17;
      if ((v13 & 1) == 0)
      {
        v15 = os_log_create("com.apple.documentcamera", "");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v20 = v4;
          v21 = 2112;
          v22 = v12;
          v23 = 2112;
          v24 = v14;
          _os_log_error_impl(&dword_249253000, v15, OS_LOG_TYPE_ERROR, "Can't copy image file %@ to %@ because %@", buf, 0x20u);
        }

        v7 = 0;
      }
    }

    else
    {
      v12 = os_log_create("com.apple.documentcamera", "");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [DCScannedDocument copyImageForSaving:toFolderURL:];
      }

      v7 = 0;
    }
  }

  return v7;
}

- (id)getImage:(id)a3
{
  v4 = a3;
  if (!v4)
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

  v7 = [(DCScannedDocument *)self getImageURL:v4];
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v7 path];
  v10 = [v8 fileExistsAtPath:v9];

  if (v10)
  {
    v11 = MEMORY[0x277D755B8];
    v12 = [v7 path];
    v13 = [v11 imageWithContentsOfFile:v12];
  }

  else
  {
    v12 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [DCScannedDocument getImage:];
    }

    v13 = 0;
  }

LABEL_12:

  return v13;
}

- (BOOL)deleteImage:(id)a3
{
  v4 = a3;
  v17 = 0;
  v5 = [(DCScannedDocument *)self makeSureScanDirectoryExists:&v17];
  v6 = v17;
  if (v5)
  {
    v7 = [(DCScannedDocument *)self getImageURL:v4];
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [v7 path];
    v10 = [v8 fileExistsAtPath:v9];

    if (v10)
    {
      v16 = 0;
      v11 = [v8 removeItemAtURL:v7 error:&v16];
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
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(DCScannedDocument *)self scannedDocumentImageDirectoryURL];
  v5 = [v4 path];
  v6 = [v3 fileExistsAtPath:v5];

  if (v6)
  {
    v12 = 0;
    v7 = [v3 removeItemAtURL:v4 error:&v12];
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