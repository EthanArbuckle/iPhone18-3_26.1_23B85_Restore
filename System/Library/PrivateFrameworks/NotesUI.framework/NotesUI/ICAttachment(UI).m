@interface ICAttachment(UI)
+ (id)imageCache;
+ (id)imageLoadingOperationQueue;
+ (id)thumbnailOperationQueue;
- (ICDocumentMergeController)documentMergeController;
- (id)activityItems;
- (id)attributedString;
- (id)cachedImage;
- (id)croppingQuad;
- (id)deviceInfosWithoutPreviewImagesFromDeviceInfos:()UI;
- (id)image;
- (id)imageCacheKey;
- (id)loadImage:()UI aboutToLoadHandler:forceFullSizeImage:;
- (id)modificationDateForSpeaking;
- (id)movieDurationForSpeaking;
- (id)pasteboardData;
- (id)unprocessedDocumentImage;
- (id)updateAttachmentPreviewImageWithImage:()UI scale:appearanceType:scaleWhenDrawing:metadata:sendNotification:;
- (uint64_t)fetchThumbnailImageWithMinSize:()UI scale:appearanceInfo:cache:cacheKey:processingBlock:completionBlock:fallbackBlock:aboutToLoadHandler:;
- (uint64_t)isUnsupportedOnCurrentPlatform;
- (uint64_t)setCroppingQuad:()UI;
- (uint64_t)thumbnailImage:()UI minSize:scale:appearanceType:requireAppearance:imageScaling:showAsFileIcon:isMovie:movieDuration:;
- (void)redactAuthorAttributionsToCurrentUser;
- (void)setCachedImage:()UI;
@end

@implementation ICAttachment(UI)

- (id)imageCacheKey
{
  v2 = [a1 media];
  v3 = [v2 identifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [a1 identifier];
  }

  v6 = v5;

  return v6;
}

- (uint64_t)isUnsupportedOnCurrentPlatform
{
  if ([a1 attachmentType] == 13 && !+[ICSystemPaperTextAttachment isEnabled](ICSystemPaperTextAttachment, "isEnabled"))
  {
    return 1;
  }

  return [a1 isUnsupported];
}

+ (id)imageCache
{
  if (imageCache_onceToken_2 != -1)
  {
    +[ICAttachment(UI) imageCache];
  }

  v1 = imageCache_imageCache_2;

  return v1;
}

+ (id)imageLoadingOperationQueue
{
  if (imageLoadingOperationQueue_onceToken != -1)
  {
    +[ICAttachment(UI) imageLoadingOperationQueue];
  }

  v1 = imageLoadingOperationQueue_imageLoadingOperationQueue;

  return v1;
}

- (id)croppingQuad
{
  v2 = [a1 attachmentModel];
  v3 = [v2 shouldCropImage];

  if (v3)
  {
    [a1 croppingQuadTopLeftX];
    v5 = v4;
    [a1 croppingQuadTopLeftY];
    v7 = v6;
    [a1 croppingQuadTopRightX];
    v9 = v8;
    [a1 croppingQuadTopRightY];
    v11 = v10;
    [a1 croppingQuadBottomLeftX];
    v13 = v12;
    [a1 croppingQuadBottomLeftY];
    v15 = v14;
    [a1 croppingQuadBottomRightX];
    v17 = v16;
    [a1 croppingQuadBottomRightY];
    v19 = [objc_alloc(MEMORY[0x1E699A328]) initWithBottomLeft:v13 bottomRight:v15 topLeft:v17 topRight:{v18, v5, v7, v9, v11}];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (ICDocumentMergeController)documentMergeController
{
  v2 = objc_getAssociatedObject(a1, &documentMergeController_documentMergeControllerHandle_0);
  if (!v2)
  {
    v2 = objc_alloc_init(ICDocumentMergeController);
    v3 = [a1 note];
    v4 = [v3 documentMergeController];
    [(ICDocumentMergeController *)v2 setParentController:v4];

    objc_setAssociatedObject(a1, &documentMergeController_documentMergeControllerHandle_0, v2, 1);
  }

  v5 = v2;

  return v5;
}

+ (id)thumbnailOperationQueue
{
  if (thumbnailOperationQueue_onceToken != -1)
  {
    +[ICAttachment(UI) thumbnailOperationQueue];
  }

  v1 = thumbnailOperationQueue_thumbnailOperationQueue;

  return v1;
}

- (id)image
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__53;
  v14 = __Block_byref_object_dispose__53;
  v15 = 0;
  v2 = dispatch_semaphore_create(0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __25__ICAttachment_UI__image__block_invoke;
  v7[3] = &unk_1E846D300;
  v9 = &v10;
  v3 = v2;
  v8 = v3;
  v4 = [a1 loadImage:v7];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

- (id)unprocessedDocumentImage
{
  v2 = [a1 parentAttachment];
  v3 = [v2 attachmentType];

  if (v3 != 11)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"parentIsGallery" functionName:"-[ICAttachment(UI) unprocessedDocumentImage]" simulateCrash:1 showAlert:0 format:@"Trying to get un-processed image from type that is not a gallery sub attachment"];
    v10 = 0;
    goto LABEL_11;
  }

  v4 = [a1 media];
  v5 = [v4 isPasswordProtected];

  v6 = [a1 media];
  v7 = v6;
  if (!v5)
  {
    v8 = [v6 mediaURL];

    if (v8)
    {
      v9 = [MEMORY[0x1E69DCAB8] ic_imageWithContentsOfURL:v8];
      goto LABEL_8;
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v8 = [v6 decryptedData];

  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = [MEMORY[0x1E69DCAB8] ic_imageWithData:v8];
LABEL_8:
  v10 = v9;
LABEL_10:

LABEL_11:

  return v10;
}

- (uint64_t)setCroppingQuad:()UI
{
  v4 = a3;
  [a1 setCachedImage:0];
  [a1 invalidateAttachmentPreviewImages];
  [v4 topLeft];
  [a1 setCroppingQuadTopLeftX:?];
  [v4 topLeft];
  [a1 setCroppingQuadTopLeftY:v5];
  [v4 topRight];
  [a1 setCroppingQuadTopRightX:?];
  [v4 topRight];
  [a1 setCroppingQuadTopRightY:v6];
  [v4 bottomLeft];
  [a1 setCroppingQuadBottomLeftX:?];
  [v4 bottomLeft];
  [a1 setCroppingQuadBottomLeftY:v7];
  [v4 bottomRight];
  [a1 setCroppingQuadBottomRightX:?];
  [v4 bottomRight];
  v9 = v8;

  return [a1 setCroppingQuadBottomRightY:v9];
}

- (id)loadImage:()UI aboutToLoadHandler:forceFullSizeImage:
{
  v62 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v31 = a4;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__53;
  v59 = __Block_byref_object_dispose__53;
  v60 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__53;
  v53 = __Block_byref_object_dispose__53;
  v54 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v8 = [a1 managedObjectContext];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __68__ICAttachment_UI__loadImage_aboutToLoadHandler_forceFullSizeImage___block_invoke;
  v40[3] = &unk_1E846D328;
  v40[4] = a1;
  v40[5] = &v55;
  v40[6] = &v49;
  v40[7] = &v45;
  v40[8] = &v41;
  [v8 performBlockAndWait:v40];

  v9 = [objc_opt_class() imageCache];
  v10 = [v9 objectForKey:v50[5]];

  if (v10 || !*(v46 + 12))
  {
    v11 = 1;
    v12 = v10;
LABEL_3:
    (v7)[2](v7, v12, v11);
    v13 = 0;
    goto LABEL_4;
  }

  if (!v56[5] && *(v42 + 24) != 1)
  {
    v12 = 0;
    v11 = 0;
    goto LABEL_3;
  }

  if (v31)
  {
    v31[2]();
  }

  v29 = [objc_opt_class() imageLoadingOperationQueue];
  [v29 setSuspended:1];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v16 = [v29 operations];
  v17 = [v16 countByEnumeratingWithState:&v36 objects:v61 count:16];
  if (v17)
  {
    v18 = *v37;
LABEL_14:
    v19 = 0;
    while (1)
    {
      if (*v37 != v18)
      {
        objc_enumerationMutation(v16);
      }

      v20 = *(*(&v36 + 1) + 8 * v19);
      v21 = [v20 cacheKey];
      v22 = [v21 isEqual:v50[5]];

      if (v22)
      {
        break;
      }

      if (v17 == ++v19)
      {
        v17 = [v16 countByEnumeratingWithState:&v36 objects:v61 count:16];
        if (v17)
        {
          goto LABEL_14;
        }

        goto LABEL_20;
      }
    }

    v23 = v20;

    if (v23 && ([v23 isFinished] & 1) == 0 && (objc_msgSend(v23, "isExecuting") & 1) == 0 && !objc_msgSend(v23, "isCancelled"))
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_20:

    v23 = 0;
  }

  v24 = [ICAttachmentImageLoadingOperation alloc];
  v25 = [objc_opt_class() imageCache];
  v26 = [(ICAttachmentImageLoadingOperation *)v24 initWithCache:v25 attachment:a1 attachmentType:*(v46 + 12) forceFullSizeImage:a5 completionHandler:0];

  [v29 addOperation:v26];
  v23 = v26;
LABEL_26:
  v27 = [v23 addCompletionHandler:v7];
  [v29 setSuspended:0];
  objc_initWeak(&location, v23);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__ICAttachment_UI__loadImage_aboutToLoadHandler_forceFullSizeImage___block_invoke_2;
  aBlock[3] = &unk_1E846D350;
  objc_copyWeak(&v34, &location);
  v33 = v27;
  v28 = v27;
  v13 = _Block_copy(aBlock);

  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);

LABEL_4:
  v14 = _Block_copy(v13);

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);

  _Block_object_dispose(&v55, 8);

  return v14;
}

- (id)cachedImage
{
  v1 = a1;
  objc_sync_enter(v1);
  v2 = [v1 imageCacheKey];
  if (v2)
  {
    v3 = [objc_opt_class() imageCache];
    v4 = [v1 imageCacheKey];
    v5 = [v3 objectForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  objc_sync_exit(v1);

  return v5;
}

- (void)setCachedImage:()UI
{
  v8 = a3;
  v4 = a1;
  objc_sync_enter(v4);
  v5 = [v4 imageCacheKey];

  if (v5)
  {
    v6 = [objc_opt_class() imageCache];
    v7 = [v4 imageCacheKey];
    if (v8)
    {
      [v6 setObject:v8 forKey:v7];
    }

    else
    {
      [v6 removeObjectForKey:v7];
    }
  }

  objc_sync_exit(v4);
}

- (id)attributedString
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3010000000;
  v13 = 0;
  v14 = 0;
  v12 = &unk_1D449C2A9;
  v2 = [a1 note];
  v3 = [v2 textStorage];

  v4 = [v3 length];
  v5 = *MEMORY[0x1E69DB5F8];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__ICAttachment_UI__attributedString__block_invoke;
  v8[3] = &unk_1E846D378;
  v8[4] = a1;
  v8[5] = &v9;
  [v3 enumerateAttribute:v5 inRange:0 options:v4 usingBlock:{0, v8}];
  if (v10[5])
  {
    v6 = [v3 ic_attributedSubstringFromRange:v10[4]];
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)pasteboardData
{
  v2 = [a1 note];
  v3 = [v2 textStorage];

  v4 = [a1 note];
  [v4 filterAttachmentsInTextStorage:v3 range:{0, objc_msgSend(v3, "length")}];

  v5 = objc_alloc(MEMORY[0x1E69B7730]);
  v6 = [a1 identifier];
  v7 = [v5 initWithObjectIdentifier:v6 forPasteboard:1];

  v8 = [a1 attributedString];
  v9 = [a1 managedObjectContext];
  v10 = [v8 ic_serializeWithFlags:1 dataPersister:v7 managedObjectContext:v9 error:0];

  v11 = [objc_alloc(MEMORY[0x1E69B7810]) initWithAttributedStringData:v10 dataPersister:v7];

  return v11;
}

- (id)activityItems
{
  v1 = [a1 attachmentModel];
  v2 = [v1 activityItems];

  return v2;
}

- (id)modificationDateForSpeaking
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  [v2 setLocale:v3];

  [v2 setDateStyle:3];
  [v2 setTimeStyle:0];
  v4 = [a1 modificationDate];
  v5 = [v2 stringFromDate:v4];

  return v5;
}

- (id)movieDurationForSpeaking
{
  [a1 duration];
  v8 = (v7 / 3600.0);
  v9 = v7 % 3600;
  v10 = (v7 % 60);
  if (v8)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = __ICLocalizedFrameworkString_impl(@"%d hours", @"%d hours", 0, 1);
    v13 = [v11 localizedStringWithFormat:v12, v8];
  }

  else
  {
    v13 = 0;
  }

  if ((v9 - 60) > 0xFFFFFF88)
  {
    v17 = 0;
    if (v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v14 = (((34953 * v9) >> 16) >> 5) + (((v9 + ((-30583 * v9) >> 16)) & 0x8000) >> 15);
    v15 = MEMORY[0x1E696AEC0];
    v16 = __ICLocalizedFrameworkString_impl(@"%d minutes", @"%d minutes", 0, 1);
    v17 = [v15 localizedStringWithFormat:v16, v14];

    if (v10)
    {
LABEL_6:
      v18 = MEMORY[0x1E696AEC0];
      v19 = __ICLocalizedFrameworkString_impl(@"%d seconds", @"%d seconds", 0, 1);
      v20 = [v18 localizedStringWithFormat:v19, v10];

      goto LABEL_9;
    }
  }

  v20 = 0;
LABEL_9:
  v21 = __ICAccessibilityStringForVariables(0, v13, v1, v2, v3, v4, v5, v6, v17);

  return v21;
}

- (id)deviceInfosWithoutPreviewImagesFromDeviceInfos:()UI
{
  v4 = a3;
  v5 = [a1 previewImages];
  v6 = [v5 count];

  v7 = v4;
  if (v6)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v4];
    v9 = [a1 previewImages];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__ICAttachment_UI__deviceInfosWithoutPreviewImagesFromDeviceInfos___block_invoke;
    v12[3] = &unk_1E846D3A0;
    v13 = v8;
    v10 = v8;
    [v9 enumerateObjectsUsingBlock:v12];

    v7 = [v10 allObjects];
  }

  return v7;
}

- (id)updateAttachmentPreviewImageWithImage:()UI scale:appearanceType:scaleWhenDrawing:metadata:sendNotification:
{
  v14 = a7;
  v15 = a4;
  [v15 size];
  v17 = v16;
  v19 = v18;
  v20 = [v15 ic_PNGData];

  v21 = [a1 updateAttachmentPreviewImageWithImageData:v20 size:a5 scale:a6 appearanceType:v14 scaleWhenDrawing:a8 metadata:v17 sendNotification:{v19, a2}];

  v22 = [v21 managedObjectContext];
  [v22 ic_saveWithLogDescription:@"Saving preview image"];

  return v21;
}

- (uint64_t)thumbnailImage:()UI minSize:scale:appearanceType:requireAppearance:imageScaling:showAsFileIcon:isMovie:movieDuration:
{
  *a6 = 0;
  *a9 = 0;
  *a10 = 0;
  *a11 = 0;
  v22 = 0;
  if (([a1 markedForDeletion] & 1) == 0)
  {
    v23 = [a1 attachmentModel];
    v24 = [v23 hasPreviews];

    if (v24)
    {
      v25 = [a1 attachmentPreviewImageWithMinSize:a7 scale:a8 appearanceType:a2 requireAppearance:{a3, a4}];
      *a6 = [v25 orientedImage];
      *a9 = [v25 scaleWhenDrawing];

      v22 = 1;
    }

    else
    {
      v26 = [a1 media];
      v27 = [v26 mediaURL];

      if (v27)
      {
        v28 = [a1 attachmentModel];
        *a6 = [v28 fileIconWithPreferredSize:{a2, a3}];

        *a9 = 2;
        v22 = 1;
        *a10 = 1;
      }

      else
      {
        v22 = 0;
      }
    }

    v29 = MEMORY[0x1E69B7680];
    v30 = [a1 typeUTI];
    LODWORD(v29) = [v29 typeUTIIsPlayableMovie:v30];

    if (v29)
    {
      *a11 = 1;
      [a1 duration];
      CMTimeMakeWithSeconds(&v33, v31, 1000000000);
      *a12 = v33;
    }

    else
    {
      *a11 = 0;
    }
  }

  return v22;
}

- (uint64_t)fetchThumbnailImageWithMinSize:()UI scale:appearanceInfo:cache:cacheKey:processingBlock:completionBlock:fallbackBlock:aboutToLoadHandler:
{
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v25 = a10;
  v26 = a11;
  v27 = a12;
  v28 = [a1 markedForDeletion];
  if ((v28 & 1) == 0)
  {
    v34 = v21;
    v29 = [a1 attachmentModel];
    v30 = [v29 needToGeneratePreviews];

    if (v30)
    {
      v31 = +[ICAttachmentPreviewGenerator sharedGenerator];
      [v31 generatePreviewIfNeededForAttachment:a1];
    }

    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__53;
    v40 = __Block_byref_object_dispose__53;
    v41 = [v22 thumbnailDataForKey:v23];
    if (v37[5])
    {
      v35 = v25;
      performBlockOnMainThreadAndWait();
      v32 = v35;
    }

    else
    {
      if (v27)
      {
        v27[2](v27);
      }

      v32 = [objc_opt_class() thumbnailOperationQueue];
      [v32 addOperationWithAttachment:a1 size:v34 scale:v22 appearanceInfo:v23 cache:v24 cacheKey:v25 processingBlock:a2 completionBlock:a3 fallbackBlock:{a4, v26}];
    }

    _Block_object_dispose(&v36, 8);
    v21 = v34;
  }

  return v28 ^ 1u;
}

- (void)redactAuthorAttributionsToCurrentUser
{
  v3.receiver = a1;
  v3.super_class = &off_1F5057F88;
  objc_msgSendSuper2(&v3, sel_redactAuthorAttributionsToCurrentUser);
  v2 = [a1 attachmentModel];
  [v2 redactAuthorAttributionsToCurrentUser];
}

@end