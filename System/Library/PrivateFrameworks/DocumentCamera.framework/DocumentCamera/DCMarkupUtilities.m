@interface DCMarkupUtilities
+ (BOOL)hasPrivateImageMetadata:(id)a3;
+ (id)cleanImageMetadataFromData:(id)a3;
+ (id)createMarkupViewController;
+ (id)createProcessingMarkupViewControllerOutWindow:(id *)a3;
+ (id)dataToEditForDocumentInfo:(id)a3 includeMarkupModelData:(BOOL)a4 imageCache:(id)a5 embedMarkupModelDataInImage:(BOOL)a6;
+ (id)imageDataWithMarkupModelData:(id)a3 sourceImageData:(id)a4 embedData:(BOOL)a5;
+ (id)imageDataWithMarkupModelData:(id)a3 sourceImageURL:(id)a4;
+ (id)markupModelDataFromData:(id)a3;
+ (id)markupModelDataFromDataAtURL:(id)a3;
+ (void)applyMarkupModelData:(id)a3 documentInfo:(id)a4 completionBlock:(id)a5;
+ (void)extractReturnedMarkupURL:(id)a3 documentInfo:(id)a4 completionBlock:(id)a5;
@end

@implementation DCMarkupUtilities

+ (id)dataToEditForDocumentInfo:(id)a3 includeMarkupModelData:(BOOL)a4 imageCache:(id)a5 embedMarkupModelDataInImage:(BOOL)a6
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 fullImageUUID];
  v11 = [v9 getImage:v10];

  v12 = UIImageJPEGRepresentation(v11, 1.0);
  if (v12)
  {
    v25 = a1;
    v13 = [v8 currentOrientation];
    v14 = [v8 markupModelData];
    v15 = [v8 imageQuad];
    if (v13 || [v8 currentFilter] || v15)
    {
      context = objc_autoreleasePoolPush();
      v16 = [MEMORY[0x277D755B8] imageWithData:v12];
      if (v15)
      {
        v17 = [ICDocCamImageFilters perspectiveCorrectedImageFromImage:v16 normalizedImageQuad:v15];

        v16 = v17;
      }

      v18 = +[ICDocCamImageFilters filteredImage:orientation:imageFilterType:](ICDocCamImageFilters, "filteredImage:orientation:imageFilterType:", v16, 0, [v8 currentFilter]);

      v19 = [ICDocCamImageFilters imageWithRGBColorspaceFromImage:v18];

      if (v13)
      {
        v20 = [MEMORY[0x277D755B8] dc_orientedImageFromImage:v19 toOrientation:v13];

        v19 = v20;
      }

      v21 = [v19 dc_JPEGData];

      objc_autoreleasePoolPop(context);
      v12 = v21;
    }

    if ([v14 length])
    {
      v22 = [v25 imageDataWithMarkupModelData:v14 sourceImageData:v12];

      v12 = v22;
    }
  }

  return v12;
}

+ (BOOL)hasPrivateImageMetadata:(id)a3
{
  v3 = a3;
  v4 = [getMarkupViewControllerClass() hasPrivateImageMetadata:v3];

  return v4;
}

+ (id)cleanImageMetadataFromData:(id)a3
{
  v3 = a3;
  v4 = [getMarkupViewControllerClass() cleanImageMetadataFromData:v3];

  return v4;
}

+ (id)createMarkupViewController
{
  v2 = objc_alloc_init(getMarkupViewControllerClass());

  return v2;
}

+ (id)createProcessingMarkupViewControllerOutWindow:(id *)a3
{
  v3 = [a1 createMarkupViewController];
  [v3 setEncryptPrivateMetadata:0];

  return v3;
}

+ (id)imageDataWithMarkupModelData:(id)a3 sourceImageData:(id)a4 embedData:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v24 = 0;
  v10 = [a1 createProcessingMarkupViewControllerOutWindow:&v24];
  v11 = v24;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __76__DCMarkupUtilities_imageDataWithMarkupModelData_sourceImageData_embedData___block_invoke;
  v20[3] = &unk_278F93258;
  v12 = v10;
  v21 = v12;
  v13 = v9;
  v22 = v13;
  v14 = v8;
  v23 = v14;
  dc_performBlockOnMainThread(v20);
  v19 = 0;
  v15 = [v12 dataRepresentationEmbeddingSourceImageAndEditModel:v5 error:&v19];
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

+ (id)imageDataWithMarkupModelData:(id)a3 sourceImageURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22 = 0;
  v8 = [a1 createProcessingMarkupViewControllerOutWindow:&v22];
  v9 = v22;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__DCMarkupUtilities_imageDataWithMarkupModelData_sourceImageURL___block_invoke;
  v18[3] = &unk_278F93258;
  v10 = v8;
  v19 = v10;
  v11 = v7;
  v20 = v11;
  v12 = v6;
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

+ (id)markupModelDataFromDataAtURL:(id)a3
{
  v4 = a3;
  v14 = 0;
  v5 = [a1 createProcessingMarkupViewControllerOutWindow:&v14];
  v6 = v14;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__DCMarkupUtilities_markupModelDataFromDataAtURL___block_invoke;
  v11[3] = &unk_278F92DE8;
  v12 = v5;
  v13 = v4;
  v7 = v4;
  v8 = v5;
  dc_performBlockOnMainThread(v11);
  v9 = [v8 createArchivedModelData];

  return v9;
}

+ (id)markupModelDataFromData:(id)a3
{
  v4 = a3;
  v14 = 0;
  v5 = [a1 createProcessingMarkupViewControllerOutWindow:&v14];
  v6 = v14;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__DCMarkupUtilities_markupModelDataFromData___block_invoke;
  v11[3] = &unk_278F92DE8;
  v12 = v5;
  v13 = v4;
  v7 = v4;
  v8 = v5;
  dc_performBlockOnMainThread(v11);
  v9 = [v8 createArchivedModelData];

  return v9;
}

+ (void)applyMarkupModelData:(id)a3 documentInfo:(id)a4 completionBlock:(id)a5
{
  v12 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v7 markupModelData];
  if (v12 | v9)
  {
    v10 = v9;
    v11 = [v12 isEqual:v9];

    if ((v11 & 1) == 0)
    {
      [v7 setMarkupModelData:v12];
    }
  }

  if (v8)
  {
    v8[2](v8);
  }
}

+ (void)extractReturnedMarkupURL:(id)a3 documentInfo:(id)a4 completionBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [v10 startAccessingSecurityScopedResource];
  v11 = [a1 markupModelDataFromDataAtURL:v10];
  [v10 stopAccessingSecurityScopedResource];

  [a1 applyMarkupModelData:v11 documentInfo:v9 completionBlock:v8];
}

+ (void)imageDataWithMarkupModelData:(uint64_t)a1 sourceImageData:(NSObject *)a2 embedData:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_249253000, a2, OS_LOG_TYPE_ERROR, "Markup error: %@", &v2, 0xCu);
}

@end