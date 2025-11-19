@interface ICGalleryAttachmentUtilities
+ (CGSize)sizeOfSubAttachment:(id)a3 forHeight:(double)a4;
+ (CGSize)sizeOfViewForAttachment:(id)a3 textViewContentWidth:(double)a4;
+ (double)requiredWidthForAttachment:(id)a3 viewHeight:(double)a4 maxWidth:(double)a5;
+ (id)createAndAddSubAttachmentsToGalleryAttachment:(id)a3 fromDocuments:(id)a4 imageCache:(id)a5 context:(id)a6;
+ (id)createSubAttachmentFromDocument:(id)a3 imageCache:(id)a4 galleryAttachment:(id)a5;
+ (id)imageForSubAttachment:(id)a3 rotateForMacImageGallery:(BOOL)a4 allowCached:(BOOL)a5;
@end

@implementation ICGalleryAttachmentUtilities

+ (id)createSubAttachmentFromDocument:(id)a3 imageCache:(id)a4 galleryAttachment:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v9 dataCryptorDelegate];
  v11 = [v7 fullImageUUID];
  v12 = [v9 getImageURL:v11 async:0];

  if (!v12)
  {
    v13 = 0;
    goto LABEL_16;
  }

  if ([v8 isPasswordProtected] && v10)
  {
    v13 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v12];
    if (!v13)
    {
      goto LABEL_10;
    }

    v14 = [v7 fullImageUUID];
    v15 = [v10 decryptEncryptedData:v13 identifier:v14];

    if (!v15)
    {
      v13 = 0;
      goto LABEL_16;
    }

    v16 = [v8 note];
    v17 = [*MEMORY[0x1E6982E30] identifier];
    v18 = [v12 lastPathComponent];
    v13 = [v16 addAttachmentWithUTI:v17 data:v15 filename:v18 updateFileBasedAttributes:0 analytics:0 regulatoryLogging:0];
  }

  else
  {
    v15 = [v8 note];
    v13 = [v15 addAttachmentWithFileURL:v12 updateFileBasedAttributes:0 analytics:0];
  }

LABEL_10:
  if (v13)
  {
    [v13 setParentAttachment:v8];
    [v13 setOrientation:{objc_msgSend(v7, "currentOrientation")}];
    if ([v7 hasFilter])
    {
      [v13 setImageFilterType:{objc_msgSend(v7, "currentFilter")}];
    }

    v19 = [v7 imageQuad];

    if (v19)
    {
      v20 = [v7 imageQuad];
      [v13 setCroppingQuad:v20];
    }

    v21 = [v7 markupModelData];
    [v13 setMarkupModelData:v21];

    v22 = [v13 attachmentModel];
    [v22 updateFileBasedAttributes];

    v23 = [v13 identifier];
    [v7 setScanDataDelegateIdentifier:v23];
  }

LABEL_16:

  return v13;
}

+ (id)createAndAddSubAttachmentsToGalleryAttachment:(id)a3 fromDocuments:(id)a4 imageCache:(id)a5 context:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v13)
  {
    v14 = [MEMORY[0x1E69B7800] sharedContext];
    v13 = [v14 snapshotManagedObjectContext];
  }

  v15 = [v10 objectID];
  v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "count")}];
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __111__ICGalleryAttachmentUtilities_createAndAddSubAttachmentsToGalleryAttachment_fromDocuments_imageCache_context___block_invoke;
  v30 = &unk_1E846BEA0;
  v31 = v13;
  v32 = v15;
  v17 = v11;
  v36 = a1;
  v33 = v17;
  v34 = v12;
  v18 = v16;
  v35 = v18;
  v19 = v12;
  v20 = v15;
  v21 = v13;
  [v21 performBlockAndWait:&v27];
  v22 = [v18 count];
  if (v22 != [v17 count])
  {
    v23 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [ICGalleryAttachmentUtilities createAndAddSubAttachmentsToGalleryAttachment:v17 fromDocuments:v18 imageCache:v23 context:?];
    }
  }

  v24 = v35;
  v25 = v18;

  return v18;
}

void __111__ICGalleryAttachmentUtilities_createAndAddSubAttachmentsToGalleryAttachment_fromDocuments_imageCache_context___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) existingObjectWithID:*(a1 + 40) error:0];
  if (v2)
  {
    objc_opt_class();
    v3 = [v2 attachmentModel];
    v26 = ICCheckedDynamicCast();

    v25 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 48), "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v4 = *(a1 + 48);
    v5 = [v4 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v32;
      do
      {
        v8 = 0;
        do
        {
          if (*v32 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v31 + 1) + 8 * v8);
          v10 = objc_autoreleasePoolPush();
          v11 = [*(a1 + 72) createSubAttachmentFromDocument:v9 imageCache:*(a1 + 56) galleryAttachment:v2];
          v12 = v11;
          if (v11)
          {
            [v11 identifier];
            v14 = v13 = v2;
            [v9 setScanDataDelegateIdentifier:v14];

            [v25 addObject:v12];
            v15 = *(a1 + 64);
            v16 = [v12 identifier];
            [v15 addObject:v16];

            v2 = v13;
            [v26 addSubAttachment:v12];
          }

          objc_autoreleasePoolPop(v10);
          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v6);
    }

    [v2 saveMergeableDataIfNeeded];
    [v2 updateChangeCountWithReason:@"Add gallery page"];
    [v2 attachmentDidChange];
    v17 = [v2 ic_postNotificationOnMainThreadAfterSaveWithName:*MEMORY[0x1E69B73F0]];
    [*(a1 + 32) ic_saveWithLogDescription:@"Add gallery page"];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v18 = v25;
    v19 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v28;
      do
      {
        v22 = 0;
        do
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v27 + 1) + 8 * v22);
          v24 = +[ICAttachmentPreviewGenerator sharedGenerator];
          [v24 generatePreviewIfNeededForAttachment:v23];

          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v20);
    }
  }
}

+ (id)imageForSubAttachment:(id)a3 rotateForMacImageGallery:(BOOL)a4 allowCached:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  [v7 sizeWidth];
  v9 = v8;
  [v7 sizeHeight];
  if (v9 <= 0.0 || (v11 = v10, v10 <= 0.0))
  {
    v19 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [ICGalleryAttachmentUtilities imageForSubAttachment:v7 rotateForMacImageGallery:v19 allowCached:?];
    }

    v18 = 0;
  }

  else
  {
    v12 = [v7 attachmentPreviewImageWithMinSize:v9 scale:{v10, 1.0}];
    v13 = v12;
    if (!v5)
    {
      goto LABEL_14;
    }

    [v12 width];
    v15 = v14;
    [v13 height];
    if (v15 >= v16)
    {
      v16 = v15;
    }

    v17 = v9 >= v11 ? v9 : v11;
    if (vabdd_f64(v16, v17) < 0.00999999978)
    {
      v18 = [v13 orientedImage];
    }

    else
    {
LABEL_14:
      v20 = [v7 media];
      v21 = [v7 imageFilterType];
      v22 = [v7 orientation];
      v23 = [v7 markupModelData];
      v24 = [v7 croppingQuad];
      if ([v7 isPasswordProtected])
      {
        v25 = [v20 decryptedData];
        v26 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:v25];
      }

      else
      {
        v27 = MEMORY[0x1E69DCAB8];
        v25 = [v20 mediaURL];
        v26 = [v27 ic_imageWithContentsOfURL:v25];
      }

      v18 = v26;

      if (v18 && v24)
      {
        v28 = [MEMORY[0x1E699A320] perspectiveCorrectedImageFromImage:v18 normalizedImageQuad:v24];

        v18 = v28;
      }

      if (v18)
      {
        if (!(v22 | v21))
        {
          goto LABEL_39;
        }

        v29 = 2;
        v30 = 3;
        if (v22 != 2)
        {
          v30 = v22;
        }

        if (v22 != 3)
        {
          v29 = v30;
        }

        v31 = v6 ? v29 : v22;
        v32 = [MEMORY[0x1E699A320] filteredImage:v18 orientation:v31 imageFilterType:v21];

        v18 = v32;
        if (v32)
        {
LABEL_39:
          if ([v23 length])
          {
            v33 = [MEMORY[0x1E699A320] imageWithRGBColorspaceFromImage:v18];

            v34 = [v33 ic_JPEGData];
            v35 = MEMORY[0x1E69DCAB8];
            v36 = [MEMORY[0x1E69B77D8] imageDataWithMarkupModelData:v23 sourceImageData:v34];
            v18 = [v35 ic_imageWithData:v36];
          }
        }
      }
    }
  }

  return v18;
}

+ (CGSize)sizeOfViewForAttachment:(id)a3 textViewContentWidth:(double)a4
{
  [a1 requiredWidthForAttachment:a3 viewHeight:372.0 maxWidth:a4];
  if (v5 > a4)
  {
    v5 = a4;
  }

  v6 = 372.0;
  result.height = v6;
  result.width = v5;
  return result;
}

+ (double)requiredWidthForAttachment:(id)a3 viewHeight:(double)a4 maxWidth:(double)a5
{
  v8 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0x4028000000000000;
  objc_opt_class();
  v9 = [v8 attachmentModel];
  v10 = ICDynamicCast();
  v11 = a4 + -28.0 + -24.0;

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__ICGalleryAttachmentUtilities_requiredWidthForAttachment_viewHeight_maxWidth___block_invoke;
  v14[3] = &unk_1E846BEC8;
  v14[4] = &v15;
  v14[5] = a1;
  *&v14[6] = v11;
  *&v14[7] = a5;
  [v10 enumerateSubAttachmentsWithBlock:v14];
  v12 = v16[3];
  if (v12 < 50.0)
  {
    v16[3] = v11;
    v12 = v11;
  }

  _Block_object_dispose(&v15, 8);
  return v12;
}

uint64_t __79__ICGalleryAttachmentUtilities_requiredWidthForAttachment_viewHeight_maxWidth___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [*(a1 + 40) sizeOfSubAttachment:a2 forHeight:*(a1 + 48)];
  *(*(*(a1 + 32) + 8) + 24) = ceil(v8) + *(*(*(a1 + 32) + 8) + 24);
  *(*(*(a1 + 32) + 8) + 24) = *(*(*(a1 + 32) + 8) + 24) + 12.0;
  v9 = *(*(a1 + 32) + 8);
  v10 = *(a1 + 56);
  if (*(v9 + 24) > v10)
  {
    *(v9 + 24) = v10;
    *a5 = 1;
  }

  return result;
}

+ (CGSize)sizeOfSubAttachment:(id)a3 forHeight:(double)a4
{
  v5 = a3;
  [v5 sizeWidth];
  [v5 sizeHeight];

  TSDMultiplySizeScalar();
  if (v6 >= a4 * 1.8)
  {
    v6 = a4 * 1.8;
  }

  if (v6 < a4 * 0.5)
  {
    v6 = a4 * 0.5;
  }

  v7 = a4;
  result.height = v7;
  result.width = v6;
  return result;
}

+ (void)createAndAddSubAttachmentsToGalleryAttachment:(NSObject *)a3 fromDocuments:imageCache:context:.cold.1(void *a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 134218240;
  v6 = [a1 count];
  v7 = 2048;
  v8 = [a2 count];
  _os_log_error_impl(&dword_1D4171000, a3, OS_LOG_TYPE_ERROR, "Needed to create %lu sub attachments but only created %lu.", &v5, 0x16u);
}

+ (void)imageForSubAttachment:(void *)a1 rotateForMacImageGallery:(NSObject *)a2 allowCached:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 shortLoggingDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_1D4171000, a2, OS_LOG_TYPE_DEBUG, "Unable to find a size for attachment: %@", &v4, 0xCu);
}

@end