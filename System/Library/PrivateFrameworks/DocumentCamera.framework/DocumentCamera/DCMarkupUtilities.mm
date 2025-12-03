@interface DCMarkupUtilities
+ (BOOL)hasPrivateImageMetadata:(id)metadata;
+ (id)cleanImageMetadataFromData:(id)data;
+ (id)createMarkupViewController;
+ (id)createProcessingMarkupViewControllerOutWindow:(id *)window;
+ (id)dataToEditForDocumentInfo:(id)info includeMarkupModelData:(BOOL)data imageCache:(id)cache embedMarkupModelDataInImage:(BOOL)image;
+ (id)imageDataWithMarkupModelData:(id)data sourceImageData:(id)imageData embedData:(BOOL)embedData;
+ (id)imageDataWithMarkupModelData:(id)data sourceImageURL:(id)l;
+ (id)markupModelDataFromData:(id)data;
+ (id)markupModelDataFromDataAtURL:(id)l;
+ (void)applyMarkupModelData:(id)data documentInfo:(id)info completionBlock:(id)block;
+ (void)extractReturnedMarkupURL:(id)l documentInfo:(id)info completionBlock:(id)block;
@end

@implementation DCMarkupUtilities

+ (id)dataToEditForDocumentInfo:(id)info includeMarkupModelData:(BOOL)data imageCache:(id)cache embedMarkupModelDataInImage:(BOOL)image
{
  infoCopy = info;
  cacheCopy = cache;
  fullImageUUID = [infoCopy fullImageUUID];
  v11 = [cacheCopy getImage:fullImageUUID];

  v12 = UIImageJPEGRepresentation(v11, 1.0);
  if (v12)
  {
    selfCopy = self;
    currentOrientation = [infoCopy currentOrientation];
    markupModelData = [infoCopy markupModelData];
    imageQuad = [infoCopy imageQuad];
    if (currentOrientation || [infoCopy currentFilter] || imageQuad)
    {
      context = objc_autoreleasePoolPush();
      v16 = [MEMORY[0x277D755B8] imageWithData:v12];
      if (imageQuad)
      {
        v17 = [ICDocCamImageFilters perspectiveCorrectedImageFromImage:v16 normalizedImageQuad:imageQuad];

        v16 = v17;
      }

      v18 = +[ICDocCamImageFilters filteredImage:orientation:imageFilterType:](ICDocCamImageFilters, "filteredImage:orientation:imageFilterType:", v16, 0, [infoCopy currentFilter]);

      v19 = [ICDocCamImageFilters imageWithRGBColorspaceFromImage:v18];

      if (currentOrientation)
      {
        v20 = [MEMORY[0x277D755B8] dc_orientedImageFromImage:v19 toOrientation:currentOrientation];

        v19 = v20;
      }

      dc_JPEGData = [v19 dc_JPEGData];

      objc_autoreleasePoolPop(context);
      v12 = dc_JPEGData;
    }

    if ([markupModelData length])
    {
      v22 = [selfCopy imageDataWithMarkupModelData:markupModelData sourceImageData:v12];

      v12 = v22;
    }
  }

  return v12;
}

+ (BOOL)hasPrivateImageMetadata:(id)metadata
{
  metadataCopy = metadata;
  v4 = [getMarkupViewControllerClass() hasPrivateImageMetadata:metadataCopy];

  return v4;
}

+ (id)cleanImageMetadataFromData:(id)data
{
  dataCopy = data;
  v4 = [getMarkupViewControllerClass() cleanImageMetadataFromData:dataCopy];

  return v4;
}

+ (id)createMarkupViewController
{
  v2 = objc_alloc_init(getMarkupViewControllerClass());

  return v2;
}

+ (id)createProcessingMarkupViewControllerOutWindow:(id *)window
{
  createMarkupViewController = [self createMarkupViewController];
  [createMarkupViewController setEncryptPrivateMetadata:0];

  return createMarkupViewController;
}

+ (id)imageDataWithMarkupModelData:(id)data sourceImageData:(id)imageData embedData:(BOOL)embedData
{
  embedDataCopy = embedData;
  dataCopy = data;
  imageDataCopy = imageData;
  v24 = 0;
  v10 = [self createProcessingMarkupViewControllerOutWindow:&v24];
  v11 = v24;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __76__DCMarkupUtilities_imageDataWithMarkupModelData_sourceImageData_embedData___block_invoke;
  v20[3] = &unk_278F93258;
  v12 = v10;
  v21 = v12;
  v13 = imageDataCopy;
  v22 = v13;
  v14 = dataCopy;
  v23 = v14;
  dc_performBlockOnMainThread(v20);
  v19 = 0;
  v15 = [v12 dataRepresentationEmbeddingSourceImageAndEditModel:embedDataCopy error:&v19];
  v16 = v19;
  if (v16)
  {
    v17 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [DCMarkupUtilities imageDataWithMarkupModelData:v16 sourceImageData:v17 embedData:?];
    }
  }

  return v15;
}

+ (id)imageDataWithMarkupModelData:(id)data sourceImageURL:(id)l
{
  dataCopy = data;
  lCopy = l;
  v22 = 0;
  v8 = [self createProcessingMarkupViewControllerOutWindow:&v22];
  v9 = v22;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__DCMarkupUtilities_imageDataWithMarkupModelData_sourceImageURL___block_invoke;
  v18[3] = &unk_278F93258;
  v10 = v8;
  v19 = v10;
  v11 = lCopy;
  v20 = v11;
  v12 = dataCopy;
  v21 = v12;
  dc_performBlockOnMainThread(v18);
  v17 = 0;
  v13 = [v10 dataRepresentationEmbeddingSourceImageAndEditModel:0 error:&v17];
  v14 = v17;
  if (v14)
  {
    v15 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [DCMarkupUtilities imageDataWithMarkupModelData:v14 sourceImageData:v15 embedData:?];
    }
  }

  return v13;
}

+ (id)markupModelDataFromDataAtURL:(id)l
{
  lCopy = l;
  v14 = 0;
  v5 = [self createProcessingMarkupViewControllerOutWindow:&v14];
  v6 = v14;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__DCMarkupUtilities_markupModelDataFromDataAtURL___block_invoke;
  v11[3] = &unk_278F92DE8;
  v12 = v5;
  v13 = lCopy;
  v7 = lCopy;
  v8 = v5;
  dc_performBlockOnMainThread(v11);
  createArchivedModelData = [v8 createArchivedModelData];

  return createArchivedModelData;
}

+ (id)markupModelDataFromData:(id)data
{
  dataCopy = data;
  v14 = 0;
  v5 = [self createProcessingMarkupViewControllerOutWindow:&v14];
  v6 = v14;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__DCMarkupUtilities_markupModelDataFromData___block_invoke;
  v11[3] = &unk_278F92DE8;
  v12 = v5;
  v13 = dataCopy;
  v7 = dataCopy;
  v8 = v5;
  dc_performBlockOnMainThread(v11);
  createArchivedModelData = [v8 createArchivedModelData];

  return createArchivedModelData;
}

+ (void)applyMarkupModelData:(id)data documentInfo:(id)info completionBlock:(id)block
{
  dataCopy = data;
  infoCopy = info;
  blockCopy = block;
  markupModelData = [infoCopy markupModelData];
  if (dataCopy | markupModelData)
  {
    v10 = markupModelData;
    v11 = [dataCopy isEqual:markupModelData];

    if ((v11 & 1) == 0)
    {
      [infoCopy setMarkupModelData:dataCopy];
    }
  }

  if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }
}

+ (void)extractReturnedMarkupURL:(id)l documentInfo:(id)info completionBlock:(id)block
{
  blockCopy = block;
  infoCopy = info;
  lCopy = l;
  [lCopy startAccessingSecurityScopedResource];
  v11 = [self markupModelDataFromDataAtURL:lCopy];
  [lCopy stopAccessingSecurityScopedResource];

  [self applyMarkupModelData:v11 documentInfo:infoCopy completionBlock:blockCopy];
}

+ (void)imageDataWithMarkupModelData:(uint64_t)a1 sourceImageData:(NSObject *)a2 embedData:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_249253000, a2, OS_LOG_TYPE_ERROR, "Markup error: %@", &v2, 0xCu);
}

@end