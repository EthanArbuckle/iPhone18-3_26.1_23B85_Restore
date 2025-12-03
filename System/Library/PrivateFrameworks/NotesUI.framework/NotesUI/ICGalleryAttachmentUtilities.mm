@interface ICGalleryAttachmentUtilities
+ (CGSize)sizeOfSubAttachment:(id)attachment forHeight:(double)height;
+ (CGSize)sizeOfViewForAttachment:(id)attachment textViewContentWidth:(double)width;
+ (double)requiredWidthForAttachment:(id)attachment viewHeight:(double)height maxWidth:(double)width;
+ (id)createAndAddSubAttachmentsToGalleryAttachment:(id)attachment fromDocuments:(id)documents imageCache:(id)cache context:(id)context;
+ (id)createSubAttachmentFromDocument:(id)document imageCache:(id)cache galleryAttachment:(id)attachment;
+ (id)imageForSubAttachment:(id)attachment rotateForMacImageGallery:(BOOL)gallery allowCached:(BOOL)cached;
@end

@implementation ICGalleryAttachmentUtilities

+ (id)createSubAttachmentFromDocument:(id)document imageCache:(id)cache galleryAttachment:(id)attachment
{
  documentCopy = document;
  attachmentCopy = attachment;
  cacheCopy = cache;
  dataCryptorDelegate = [cacheCopy dataCryptorDelegate];
  fullImageUUID = [documentCopy fullImageUUID];
  v12 = [cacheCopy getImageURL:fullImageUUID async:0];

  if (!v12)
  {
    v13 = 0;
    goto LABEL_16;
  }

  if ([attachmentCopy isPasswordProtected] && dataCryptorDelegate)
  {
    v13 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v12];
    if (!v13)
    {
      goto LABEL_10;
    }

    fullImageUUID2 = [documentCopy fullImageUUID];
    note2 = [dataCryptorDelegate decryptEncryptedData:v13 identifier:fullImageUUID2];

    if (!note2)
    {
      v13 = 0;
      goto LABEL_16;
    }

    note = [attachmentCopy note];
    identifier = [*MEMORY[0x1E6982E30] identifier];
    lastPathComponent = [v12 lastPathComponent];
    v13 = [note addAttachmentWithUTI:identifier data:note2 filename:lastPathComponent updateFileBasedAttributes:0 analytics:0 regulatoryLogging:0];
  }

  else
  {
    note2 = [attachmentCopy note];
    v13 = [note2 addAttachmentWithFileURL:v12 updateFileBasedAttributes:0 analytics:0];
  }

LABEL_10:
  if (v13)
  {
    [v13 setParentAttachment:attachmentCopy];
    [v13 setOrientation:{objc_msgSend(documentCopy, "currentOrientation")}];
    if ([documentCopy hasFilter])
    {
      [v13 setImageFilterType:{objc_msgSend(documentCopy, "currentFilter")}];
    }

    imageQuad = [documentCopy imageQuad];

    if (imageQuad)
    {
      imageQuad2 = [documentCopy imageQuad];
      [v13 setCroppingQuad:imageQuad2];
    }

    markupModelData = [documentCopy markupModelData];
    [v13 setMarkupModelData:markupModelData];

    attachmentModel = [v13 attachmentModel];
    [attachmentModel updateFileBasedAttributes];

    identifier2 = [v13 identifier];
    [documentCopy setScanDataDelegateIdentifier:identifier2];
  }

LABEL_16:

  return v13;
}

+ (id)createAndAddSubAttachmentsToGalleryAttachment:(id)attachment fromDocuments:(id)documents imageCache:(id)cache context:(id)context
{
  attachmentCopy = attachment;
  documentsCopy = documents;
  cacheCopy = cache;
  contextCopy = context;
  if (!contextCopy)
  {
    mEMORY[0x1E69B7800] = [MEMORY[0x1E69B7800] sharedContext];
    contextCopy = [mEMORY[0x1E69B7800] snapshotManagedObjectContext];
  }

  objectID = [attachmentCopy objectID];
  v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(documentsCopy, "count")}];
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __111__ICGalleryAttachmentUtilities_createAndAddSubAttachmentsToGalleryAttachment_fromDocuments_imageCache_context___block_invoke;
  v30 = &unk_1E846BEA0;
  v31 = contextCopy;
  v32 = objectID;
  v17 = documentsCopy;
  selfCopy = self;
  v33 = v17;
  v34 = cacheCopy;
  v18 = v16;
  v35 = v18;
  v19 = cacheCopy;
  v20 = objectID;
  v21 = contextCopy;
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

+ (id)imageForSubAttachment:(id)attachment rotateForMacImageGallery:(BOOL)gallery allowCached:(BOOL)cached
{
  cachedCopy = cached;
  galleryCopy = gallery;
  attachmentCopy = attachment;
  [attachmentCopy sizeWidth];
  v9 = v8;
  [attachmentCopy sizeHeight];
  if (v9 <= 0.0 || (v11 = v10, v10 <= 0.0))
  {
    v19 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [ICGalleryAttachmentUtilities imageForSubAttachment:attachmentCopy rotateForMacImageGallery:v19 allowCached:?];
    }

    orientedImage = 0;
  }

  else
  {
    v12 = [attachmentCopy attachmentPreviewImageWithMinSize:v9 scale:{v10, 1.0}];
    v13 = v12;
    if (!cachedCopy)
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
      orientedImage = [v13 orientedImage];
    }

    else
    {
LABEL_14:
      media = [attachmentCopy media];
      imageFilterType = [attachmentCopy imageFilterType];
      orientation = [attachmentCopy orientation];
      markupModelData = [attachmentCopy markupModelData];
      croppingQuad = [attachmentCopy croppingQuad];
      if ([attachmentCopy isPasswordProtected])
      {
        decryptedData = [media decryptedData];
        v26 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:decryptedData];
      }

      else
      {
        v27 = MEMORY[0x1E69DCAB8];
        decryptedData = [media mediaURL];
        v26 = [v27 ic_imageWithContentsOfURL:decryptedData];
      }

      orientedImage = v26;

      if (orientedImage && croppingQuad)
      {
        v28 = [MEMORY[0x1E699A320] perspectiveCorrectedImageFromImage:orientedImage normalizedImageQuad:croppingQuad];

        orientedImage = v28;
      }

      if (orientedImage)
      {
        if (!(orientation | imageFilterType))
        {
          goto LABEL_39;
        }

        v29 = 2;
        v30 = 3;
        if (orientation != 2)
        {
          v30 = orientation;
        }

        if (orientation != 3)
        {
          v29 = v30;
        }

        v31 = galleryCopy ? v29 : orientation;
        v32 = [MEMORY[0x1E699A320] filteredImage:orientedImage orientation:v31 imageFilterType:imageFilterType];

        orientedImage = v32;
        if (v32)
        {
LABEL_39:
          if ([markupModelData length])
          {
            v33 = [MEMORY[0x1E699A320] imageWithRGBColorspaceFromImage:orientedImage];

            ic_JPEGData = [v33 ic_JPEGData];
            v35 = MEMORY[0x1E69DCAB8];
            v36 = [MEMORY[0x1E69B77D8] imageDataWithMarkupModelData:markupModelData sourceImageData:ic_JPEGData];
            orientedImage = [v35 ic_imageWithData:v36];
          }
        }
      }
    }
  }

  return orientedImage;
}

+ (CGSize)sizeOfViewForAttachment:(id)attachment textViewContentWidth:(double)width
{
  [self requiredWidthForAttachment:attachment viewHeight:372.0 maxWidth:width];
  if (widthCopy > width)
  {
    widthCopy = width;
  }

  v6 = 372.0;
  result.height = v6;
  result.width = widthCopy;
  return result;
}

+ (double)requiredWidthForAttachment:(id)attachment viewHeight:(double)height maxWidth:(double)width
{
  attachmentCopy = attachment;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0x4028000000000000;
  objc_opt_class();
  attachmentModel = [attachmentCopy attachmentModel];
  v10 = ICDynamicCast();
  v11 = height + -28.0 + -24.0;

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__ICGalleryAttachmentUtilities_requiredWidthForAttachment_viewHeight_maxWidth___block_invoke;
  v14[3] = &unk_1E846BEC8;
  v14[4] = &v15;
  v14[5] = self;
  *&v14[6] = v11;
  *&v14[7] = width;
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

+ (CGSize)sizeOfSubAttachment:(id)attachment forHeight:(double)height
{
  attachmentCopy = attachment;
  [attachmentCopy sizeWidth];
  [attachmentCopy sizeHeight];

  TSDMultiplySizeScalar();
  if (v6 >= height * 1.8)
  {
    v6 = height * 1.8;
  }

  if (v6 < height * 0.5)
  {
    v6 = height * 0.5;
  }

  heightCopy = height;
  result.height = heightCopy;
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