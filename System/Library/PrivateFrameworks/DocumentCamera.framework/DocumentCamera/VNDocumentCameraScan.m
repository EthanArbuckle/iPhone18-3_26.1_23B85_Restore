@interface VNDocumentCameraScan
+ (id)scannedDocumentsFolderURL;
+ (void)initialize;
- (BOOL)copyImagesFromDocInfoCollection:(id)a3 imageCache:(id)a4;
- (BOOL)deleteImage:(id)a3;
- (BOOL)makeSureScanDirectoryExists:(id *)a3;
- (BOOL)saveToURL:(id)a3 error:(id *)a4;
- (NSUInteger)pageCount;
- (UIImage)imageOfPageAtIndex:(NSUInteger)index;
- (VNDocumentCameraScan)initWithArchivedData:(id)a3 error:(id *)a4;
- (VNDocumentCameraScan)initWithDocInfoCollection:(id)a3 imageCache:(id)a4;
- (VNDocumentCameraScan)initWithURL:(id)a3 error:(id *)a4;
- (id)URLForImageInFolder:(id)a3 withUUID:(id)a4;
- (id)URLForImageWithUUID:(id)a3;
- (id)archivedDataWithError:(id *)a3;
- (id)copyImageAtURL:(id)a3;
- (id)copyImageForLoading:(id)a3 fromFolderURL:(id)a4;
- (id)copyImageForSaving:(id)a3 toFolderURL:(id)a4;
- (id)getImage:(id)a3;
- (id)imageForScanAtIndex:(unint64_t)a3 error:(id *)a4;
- (id)infoCollectionWithImageCache:(id)a3 error:(id *)a4;
- (void)dealloc;
- (void)deleteAllImages;
- (void)replaceContentsWithDocInfoCollection:(id)a3 imageCache:(id)a4;
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
  if (objc_opt_class() == a1)
  {
    v4 = +[VNDocumentCameraScan scannedDocumentsFolderURL];
    v2 = [MEMORY[0x277CCAA00] defaultManager];
    v3 = [v4 path];
    [v2 removeItemAtPath:v3 error:0];
  }
}

- (VNDocumentCameraScan)initWithDocInfoCollection:(id)a3 imageCache:(id)a4
{
  v19.receiver = self;
  v19.super_class = VNDocumentCameraScan;
  v5 = a4;
  v6 = a3;
  v7 = [(VNDocumentCameraScan *)&v19 init];
  if (v7)
  {
    v8 = [MEMORY[0x277CCAD78] UUID];
    v9 = [v8 UUIDString];

    v10 = +[VNDocumentCameraScan scannedDocumentsFolderURL];
    v11 = [v10 URLByAppendingPathComponent:v9];
    scannedDocumentImageDirectoryURL = v7->_scannedDocumentImageDirectoryURL;
    v7->_scannedDocumentImageDirectoryURL = v11;
  }

  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  v14 = *MEMORY[0x277D76770];
  v15 = [MEMORY[0x277D75128] sharedApplication];
  [v13 addObserver:v7 selector:sel_applicationWillTerminate_ name:v14 object:v15];

  [(VNDocumentCameraScan *)v7 copyImagesFromDocInfoCollection:v6 imageCache:v5];
  v16 = [v6 title];

  v17 = [v16 copy];
  [(VNDocumentCameraScan *)v7 setTitle:v17];

  return v7;
}

- (VNDocumentCameraScan)initWithURL:(id)a3 error:(id *)a4
{
  v66 = *MEMORY[0x277D85DE8];
  v55 = a3;
  v64.receiver = self;
  v64.super_class = VNDocumentCameraScan;
  v5 = [(VNDocumentCameraScan *)&v64 init];
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
      goto LABEL_22;
    }

    v10 = [(VNDocumentCameraScan *)v50 pListURL:v55];
    v11 = [v10 path];
    v12 = [v7 fileExistsAtPath:v11];

    if (!v12)
    {

      v39 = 0;
      v6 = v50;
      goto LABEL_22;
    }

    v46 = v7;
    v13 = [MEMORY[0x277CCAD78] UUID];
    v14 = [v13 UUIDString];

    v15 = +[VNDocumentCameraScan scannedDocumentsFolderURL];
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
    v41 = [v21 objectForKey:@"DocumentName"];
    [(VNDocumentCameraScan *)v50 setTitle:?];
    v22 = [MEMORY[0x277CBEB18] array];
    [(VNDocumentCameraScan *)v50 setDocInfos:v22];

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
          v32 = [(VNDocumentCameraScan *)v6 copyImageForLoading:v27 fromFolderURL:v55];
          v54 = v28;
          if (v32)
          {
            v53 = v25;
            v33 = [(VNDocumentCameraScan *)v6 copyImageForLoading:v28 fromFolderURL:v55];
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
              v38 = [(VNDocumentCameraScan *)v50 docInfos];
              [v38 addObject:v35];

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

- (VNDocumentCameraScan)initWithArchivedData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v7 temporaryDirectory];

  v9 = [MEMORY[0x277CCAD78] UUID];
  v10 = [v9 UUIDString];
  v11 = [v8 URLByAppendingPathComponent:v10 isDirectory:1];

  v12 = [MEMORY[0x277CCAD78] UUID];
  v13 = [v12 UUIDString];
  v14 = [v11 URLByAppendingPathComponent:v13 isDirectory:0];

  v15 = [v14 URLByAppendingPathExtensionForType:*MEMORY[0x277CE1EF8]];

  v16 = [MEMORY[0x277CCAA00] defaultManager];
  LOBYTE(v14) = [v16 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:a4];

  if ((v14 & 1) == 0 || ([v6 writeToURL:v15 options:1 error:a4] & 1) == 0)
  {
    v17 = [MEMORY[0x277CCAA00] defaultManager];
    [(DCArchiveReader *)v17 removeItemAtURL:v11 error:0];
LABEL_6:
    v20 = 0;
    goto LABEL_7;
  }

  v17 = [[DCArchiveReader alloc] initWithSourceURL:v15 destinationURL:v11];
  [(DCArchiveReader *)v17 setSkipsInvisibleHeaders:1];
  if (![(DCArchiveReader *)v17 unarchiveResultURLs:0 error:a4])
  {
    v22 = [MEMORY[0x277CCAA00] defaultManager];
    [v22 removeItemAtURL:v11 error:0];

    goto LABEL_6;
  }

  v18 = [(VNDocumentCameraScan *)self initWithURL:v11 error:a4];
  v19 = [MEMORY[0x277CCAA00] defaultManager];
  [v19 removeItemAtURL:v11 error:0];

  self = v18;
  v20 = self;
LABEL_7:

  return v20;
}

- (void)dealloc
{
  [(VNDocumentCameraScan *)self deleteAllImages];
  v3.receiver = self;
  v3.super_class = VNDocumentCameraScan;
  [(VNDocumentCameraScan *)&v3 dealloc];
}

- (void)replaceContentsWithDocInfoCollection:(id)a3 imageCache:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(VNDocumentCameraScan *)self deleteAllImages];
  [(VNDocumentCameraScan *)self setTitle:0];
  [(VNDocumentCameraScan *)self copyImagesFromDocInfoCollection:v7 imageCache:v6];

  v9 = [v7 title];

  v8 = [v9 copy];
  [(VNDocumentCameraScan *)self setTitle:v8];
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
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", &unk_285C6D480, &unk_285C6D498];
    [v9 setObject:v10 forKey:@"Version"];

    v11 = [(VNDocumentCameraScan *)self title];

    if (v11)
    {
      [(VNDocumentCameraScan *)self title];
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
    obj = [(VNDocumentCameraScan *)self docInfos];
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
          v15 = [(VNDocumentCameraScan *)self copyImageForSaving:v8 toFolderURL:v6];
          if (!v15)
          {
            goto LABEL_20;
          }

          v16 = v15;
          v17 = [v14 fullImageUUID];
          v18 = [(VNDocumentCameraScan *)self copyImageForSaving:v17 toFolderURL:v6];
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
    obj = [(VNDocumentCameraScan *)self pListURL:v6];
    LODWORD(v8) = [v9 writeToURL:? error:?];
    if (v8)
    {
      v35 = [(VNDocumentCameraScan *)self title];

      if (!v35)
      {
        [(VNDocumentCameraScan *)self setTitle:v12];
      }
    }

LABEL_21:
  }

  return v8;
}

- (id)archivedDataWithError:(id *)a3
{
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v5 temporaryDirectory];

  v7 = [MEMORY[0x277CCAD78] UUID];
  v8 = [v7 UUIDString];
  v9 = [v6 URLByAppendingPathComponent:v8 isDirectory:1];

  v10 = [MEMORY[0x277CCAD78] UUID];
  v11 = [v10 UUIDString];
  v12 = [v9 URLByAppendingPathComponent:v11 isDirectory:0];

  v13 = [v12 URLByAppendingPathExtensionForType:*MEMORY[0x277CE1EF8]];

  LOBYTE(self) = [(VNDocumentCameraScan *)self saveToURL:v9 error:a3];
  v14 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = v14;
  if (self)
  {
    v16 = [v9 path];
    v17 = [v15 contentsOfDirectoryAtPath:v16 error:a3];

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
      if ([(DCArchiveWriter *)v20 writeURLs:v19 error:a3]&& [(DCArchiveWriter *)v20 finish:a3])
      {
        v21 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v13 options:1 error:0];
      }

      else
      {
        v21 = 0;
      }

      v22 = [MEMORY[0x277CCAA00] defaultManager];
      [v22 removeItemAtURL:v18 error:0];
    }

    else
    {
      v23 = [MEMORY[0x277CCAA00] defaultManager];
      [v23 removeItemAtURL:v9 error:0];

      v21 = 0;
    }
  }

  else
  {
    [v14 removeItemAtURL:v9 error:0];

    v21 = 0;
  }

  return v21;
}

- (id)copyImageForSaving:(id)a3 toFolderURL:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v22 = 0;
  v8 = [(VNDocumentCameraScan *)self makeSureScanDirectoryExists:&v22];
  v9 = v22;
  v10 = 0;
  if (v8)
  {
    v11 = [(VNDocumentCameraScan *)self URLForImageWithUUID:v6];
    v12 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = [v11 path];
    v14 = [v12 fileExistsAtPath:v13];

    if (v14)
    {
      v15 = [MEMORY[0x277CCAD78] UUID];
      v10 = [v15 UUIDString];

      v16 = [(VNDocumentCameraScan *)self URLForImageInFolder:v7 withUUID:v10];
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
  v8 = [(VNDocumentCameraScan *)self makeSureScanDirectoryExists:&v22];
  v9 = v22;
  v10 = 0;
  if (v8)
  {
    v11 = [(VNDocumentCameraScan *)self URLForImageInFolder:v7 withUUID:v6];
    v12 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = [v11 path];
    v14 = [v12 fileExistsAtPath:v13];

    if (v14)
    {
      v15 = [MEMORY[0x277CCAD78] UUID];
      v10 = [v15 UUIDString];

      v16 = [(VNDocumentCameraScan *)self URLForImageWithUUID:v10];
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
  v7 = [(VNDocumentCameraScan *)self docInfos];
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
    v9 = [(VNDocumentCameraScan *)self imageOfPageAtIndex:a3];
  }

  return v9;
}

- (NSUInteger)pageCount
{
  v3 = [(VNDocumentCameraScan *)self docInfos];

  if (!v3)
  {
    return 0;
  }

  v4 = [(VNDocumentCameraScan *)self docInfos];
  v5 = [v4 count];

  return v5;
}

- (UIImage)imageOfPageAtIndex:(NSUInteger)index
{
  v6 = [(VNDocumentCameraScan *)self docInfos];

  if (v6)
  {
    v7 = [(VNDocumentCameraScan *)self docInfos];
    v8 = [v7 count];

    if (v8 <= index)
    {
      v17 = 0;
      goto LABEL_16;
    }

    v9 = [(VNDocumentCameraScan *)self docInfos];
    v10 = [v9 objectAtIndexedSubscript:index];

    v11 = [v10 croppedAndFilteredImageUUID];
    v12 = objc_autoreleasePoolPush();
    v13 = [MEMORY[0x277CCA8D8] mainBundle];
    v14 = [v13 bundleIdentifier];
    v15 = [v14 lowercaseString];
    v16 = [v15 isEqualToString:@"com.apple.sidecar.extension.camera"];

    if (v16)
    {
      v17 = [(VNDocumentCameraScan *)self getImage:v11];
    }

    else
    {
      v25 = [(VNDocumentCameraScan *)self getImageURL:v11];
      v26 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v25 options:0 error:0];
      v17 = [MEMORY[0x277D755B8] imageWithData:v26];
    }

    objc_autoreleasePoolPop(v12);
    if (!v17)
    {
      v27 = os_log_create("com.apple.documentcamera", "");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [(VNDocumentCameraScan *)v11 imageOfPageAtIndex:v10, v27];
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
  v28 = [(VNDocumentCameraScan *)self docInfos];
  v29 = [v28 count];

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

- (BOOL)copyImagesFromDocInfoCollection:(id)a3 imageCache:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v48 = a4;
  v7 = [MEMORY[0x277CBEB18] array];
  [(VNDocumentCameraScan *)self setDocInfos:v7];

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
      v12 = [(VNDocumentCameraScan *)self copyImageAtURL:v11];
      v13 = [v9 fullImageUUID];
      v14 = [v48 getImageURL:v13 async:0];
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
        v6 = v44;

        v26 = 0;
        goto LABEL_19;
      }

      v50 = v11;
      v17 = objc_alloc_init(ICDocCamDocumentInfo);
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

      v25 = [(VNDocumentCameraScan *)v19 docInfos];
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

- (id)infoCollectionWithImageCache:(id)a3 error:(id *)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_alloc_init(ICDocCamDocumentInfoCollection);
  v8 = [(VNDocumentCameraScan *)self title];
  [(ICDocCamDocumentInfoCollection *)v7 setTitle:v8];

  v9 = [(VNDocumentCameraScan *)self docInfos];
  v10 = [v9 copy];
  [(ICDocCamDocumentInfoCollection *)v7 setDocInfos:v10];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [(ICDocCamDocumentInfoCollection *)v7 docInfos];
  v31 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v31)
  {
    v29 = self;
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
        v14 = [*(v11 + 2560) defaultManager];
        v15 = [v13 croppedAndFilteredImageUUID];
        [(VNDocumentCameraScan *)self getImageURL:v15];
        v17 = v16 = v11;
        v18 = [v13 croppedAndFilteredImageUUID];
        v19 = [v6 getImageURL:v18 async:0];
        [v14 copyItemAtURL:v17 toURL:v19 error:a4];

        v11 = v16;
        self = v29;

        if (!*a4)
        {
          v20 = [*(v11 + 2560) defaultManager];
          v21 = [v13 fullImageUUID];
          v22 = [(VNDocumentCameraScan *)v29 getImageURL:v21];
          v23 = [v13 fullImageUUID];
          v24 = [v6 getImageURL:v23 async:0];
          [v20 copyItemAtURL:v22 toURL:v24 error:a4];

          if (!*a4)
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

- (BOOL)makeSureScanDirectoryExists:(id *)a3
{
  v4 = [(VNDocumentCameraScan *)self scannedDocumentImageDirectoryURL];
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
  v5 = [(VNDocumentCameraScan *)self scannedDocumentImageDirectoryURL];
  v6 = [(VNDocumentCameraScan *)self URLForImageInFolder:v5 withUUID:v4];

  return v6;
}

- (id)copyImageAtURL:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0;
  v5 = [(VNDocumentCameraScan *)self makeSureScanDirectoryExists:&v18];
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

      v12 = [(VNDocumentCameraScan *)self URLForImageWithUUID:v7];
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

  v7 = [(VNDocumentCameraScan *)self getImageURL:v4];
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
      [VNDocumentCameraScan getImage:];
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
  v5 = [(VNDocumentCameraScan *)self makeSureScanDirectoryExists:&v17];
  v6 = v17;
  if (v5)
  {
    v7 = [(VNDocumentCameraScan *)self getImageURL:v4];
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
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(VNDocumentCameraScan *)self scannedDocumentImageDirectoryURL];
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