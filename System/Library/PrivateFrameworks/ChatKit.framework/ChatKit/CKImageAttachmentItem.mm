@interface CKImageAttachmentItem
+ (id)UTITypes;
- (CGSize)_calculateImageSize;
- (CGSize)imageSize;
- (CGSize)size;
- (id)_newImageData;
- (id)imageData;
- (void)generatePreviewWithCompletion:(id)completion;
- (void)startDeferredSetup;
@end

@implementation CKImageAttachmentItem

+ (id)UTITypes
{
  v2 = CGImageSourceCopyTypeIdentifiers();

  return v2;
}

- (id)_newImageData
{
  v3 = objc_alloc(MEMORY[0x1E695DEF0]);
  fileURL = [(CKAttachmentItem *)self fileURL];
  v5 = [v3 initWithContentsOfURL:fileURL options:1 error:0];

  if (v5)
  {
    v6 = [[CKImageData alloc] initWithData:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)imageData
{
  _newImageData = [(CKImageAttachmentItem *)self _newImageData];

  return _newImageData;
}

- (CGSize)size
{
  [(CKImageAttachmentItem *)self imageSize];
  if (v4 == *MEMORY[0x1E695F060] && v3 == *(MEMORY[0x1E695F060] + 8))
  {
    if ([(CKImageAttachmentItem *)self backgroundEnqueued])
    {
      [(CKImageAttachmentItem *)self setUseDefaultSize:1];
    }

    else
    {
      [(CKImageAttachmentItem *)self _calculateImageSize];
      [(CKImageAttachmentItem *)self setImageSize:?];
    }
  }

  if ([(CKImageAttachmentItem *)self useDefaultSize])
  {
    v6 = 100.0;
    v7 = 100.0;
  }

  else
  {

    [(CKImageAttachmentItem *)self imageSize];
  }

  result.height = v7;
  result.width = v6;
  return result;
}

- (void)startDeferredSetup
{
  [(CKImageAttachmentItem *)self imageSize];
  if (v4 == *MEMORY[0x1E695F060] && v3 == *(MEMORY[0x1E695F060] + 8) && ![(CKImageAttachmentItem *)self backgroundEnqueued])
  {
    [(CKImageAttachmentItem *)self setBackgroundEnqueued:1];
    previewSizingQueue = [objc_opt_class() previewSizingQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43__CKImageAttachmentItem_startDeferredSetup__block_invoke;
    v7[3] = &unk_1E72EBA18;
    v7[4] = self;
    [previewSizingQueue addBlock:v7 withQueuePriority:1];
  }
}

uint64_t __43__CKImageAttachmentItem_startDeferredSetup__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 _calculateImageSize];

  return [v1 setImageSize:?];
}

- (CGSize)_calculateImageSize
{
  cachedPreview = [(CKAttachmentItem *)self cachedPreview];
  v4 = cachedPreview;
  if (cachedPreview)
  {
    [cachedPreview size];
    v6 = v5;
    v8 = v7;
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v11 = v6 * v10;
    v12 = v8 * v10;
  }

  else
  {
    mainScreen = [(CKImageAttachmentItem *)self _newImageData];
    [mainScreen pxSize];
    v11 = v13;
    v12 = v14;
  }

  if (v11 == *MEMORY[0x1E695F060] && v12 == *(MEMORY[0x1E695F060] + 8))
  {
    v11 = 50.0;
    v12 = 50.0;
  }

  v15 = v11;
  v16 = v12;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)generatePreviewWithCompletion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  previewCache = [objc_opt_class() previewCache];
  v6 = CKAttachmentPreviewCacheKey(self);
  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = +[CKUIBehavior sharedBehaviors];
  [v8 previewMaxWidth];
  v10 = v9;
  [(CKImageAttachmentItem *)self size];
  [v7 thumbnailFillSizeForWidth:v10 imageSize:{v11, v12}];
  v14 = v13;
  v16 = v15;

  if (([previewCache isGeneratingPreviewForKey:v6] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v25 = v6;
        _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Queue Generate preview for: %@", buf, 0xCu);
      }
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __55__CKImageAttachmentItem_generatePreviewWithCompletion___block_invoke;
    v23[3] = &unk_1E72EE7C8;
    v23[4] = self;
    v23[5] = v14;
    v23[6] = v16;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __55__CKImageAttachmentItem_generatePreviewWithCompletion___block_invoke_41;
    v18[3] = &unk_1E72EDE00;
    v19 = previewCache;
    v20 = v6;
    selfCopy = self;
    v22 = completionCopy;
    [v19 enqueueGenerationBlock:v23 completion:v18 withPriority:1 forKey:v20];
  }
}

id __55__CKImageAttachmentItem_generatePreviewWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v30 = 138412290;
      v31 = v3;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Run generation block for %@", &v30, 0xCu);
    }
  }

  v5 = [*(a1 + 32) _newImageData];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v30 = 138412290;
      v31 = v5;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "backing image data: %@", &v30, 0xCu);
    }
  }

  v7 = [v5 thumbnailFillToSize:{*(a1 + 40), *(a1 + 48)}];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v30 = 138412290;
      v31 = v7;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "thumbnail: %@", &v30, 0xCu);
    }
  }

  [v7 size];
  if (v7)
  {
    v12 = *(a1 + 40);
    v11 = *(a1 + 48);
    if (v12 == v9 && v11 == v10)
    {
      v13 = v7;
    }

    else
    {
      if (v9 == 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v12 / v9;
      }

      if (v10 == 0.0)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = v11 / v10;
      }

      if (CKMainScreenScale_once_31 != -1)
      {
        __55__CKImageAttachmentItem_generatePreviewWithCompletion___block_invoke_cold_1();
      }

      if (*&CKMainScreenScale_sMainScreenScale_31 == 0.0)
      {
        v16 = 1.0;
      }

      else
      {
        v16 = *&CKMainScreenScale_sMainScreenScale_31;
      }

      v17 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v17 scale];
      v19 = v18;

      v20 = objc_alloc(MEMORY[0x1E69DCAB8]);
      v21 = v7;
      v22 = [v20 initWithCGImage:objc_msgSend(v7 scale:"CGImage") orientation:{objc_msgSend(v7, "imageOrientation"), v19 / (ceil(fmax(v14, v15) * v16) / v16)}];
      v34.width = v12;
      v34.height = v11;
      UIGraphicsBeginImageContextWithOptions(v34, 0, 0.0);
      [v22 size];
      v24 = v23;
      v26 = v25;
      if (CKMainScreenScale_once_31 != -1)
      {
        __55__CKImageAttachmentItem_generatePreviewWithCompletion___block_invoke_cold_1();
      }

      v27 = *&CKMainScreenScale_sMainScreenScale_31;
      if (*&CKMainScreenScale_sMainScreenScale_31 == 0.0)
      {
        v27 = 1.0;
      }

      [v22 drawAtPoint:{floor((*MEMORY[0x1E695EFF8] + (v12 - v24) * 0.5) * v27) / v27, floor((*(MEMORY[0x1E695EFF8] + 8) + (v11 - v26) * 0.5) * v27) / v27}];
      v13 = UIGraphicsGetImageFromCurrentImageContext();

      UIGraphicsEndImageContext();
      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v30 = 138412290;
          v31 = v13;
          _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_INFO, "crop/resize: %@", &v30, 0xCu);
        }
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __55__CKImageAttachmentItem_generatePreviewWithCompletion___block_invoke_41(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CKImageAttachmentItem_generatePreviewWithCompletion___block_invoke_2;
  block[3] = &unk_1E72EDE00;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = *(a1 + 48);
  v4 = *(&v6 + 1);
  *&v5 = v2;
  *(&v5 + 1) = v3;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __55__CKImageAttachmentItem_generatePreviewWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedPreviewForKey:*(a1 + 40)];
  if (v2)
  {
    v9 = v2;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v9 image];
      v4 = [v3 images];
      v5 = [v4 firstObject];

      v6 = v5;
    }

    else
    {
      v6 = v9;
    }

    v10 = v6;
    [*(a1 + 48) _savePreview:?];
  }

  else
  {
    v10 = 0;
  }

  v7 = *(a1 + 56);
  v8 = v10;
  if (v7)
  {
    (*(v7 + 16))();
    v8 = v10;
  }
}

- (CGSize)imageSize
{
  objc_copyStruct(v4, &self->_imageSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end