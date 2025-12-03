@interface CKAnimatedImageAttachmentItem
- (CGSize)imageSize;
- (CGSize)size;
- (id)_newImageData;
- (id)_savedPreviewFromURL:(id)l;
- (id)animatedPreviewURL:(BOOL)l;
- (id)generatePreviewFromThumbnail:(id)thumbnail width:(double)width;
- (id)thumbnailAtIndex:(unint64_t)index forWidth:(double)width withImageData:(id)data;
- (void)generatePreviewWithCompletion:(id)completion;
@end

@implementation CKAnimatedImageAttachmentItem

- (CGSize)size
{
  cachedPreview = [(CKAttachmentItem *)self cachedPreview];
  if (!cachedPreview)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [cachedPreview size];
LABEL_7:
      v6 = v9;
      v8 = v10;
      goto LABEL_8;
    }

LABEL_6:
    v13.receiver = self;
    v13.super_class = CKAnimatedImageAttachmentItem;
    [(CKImageAttachmentItem *)&v13 size];
    goto LABEL_7;
  }

  image = [cachedPreview image];
  [image size];
  v6 = v5;
  v8 = v7;

LABEL_8:
  v11 = v6;
  v12 = v8;
  result.height = v12;
  result.width = v11;
  return result;
}

- (id)animatedPreviewURL:(BOOL)l
{
  animatedPreviewURL = self->_animatedPreviewURL;
  if (!animatedPreviewURL)
  {
    fileURL = [(CKAttachmentItem *)self fileURL];
    v6 = +[CKAnimatedImage filenameExtension];
    v7 = IMAttachmentPreviewFileURL();
    v8 = self->_animatedPreviewURL;
    self->_animatedPreviewURL = v7;

    animatedPreviewURL = self->_animatedPreviewURL;
  }

  return animatedPreviewURL;
}

- (id)_savedPreviewFromURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v5 = [(CKAnimatedImageAttachmentItem *)self animatedPreviewURL:0];
    v12 = 0;
    v6 = [CKAnimatedImage animatedImageFromOptimizedBitmapAtFileURL:v5 error:&v12];
    v7 = v12;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v11.receiver = self;
      v11.super_class = CKAnimatedImageAttachmentItem;
      v8 = [(CKAttachmentItem *)&v11 _savedPreviewFromURL:lCopy];
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)generatePreviewWithCompletion:(id)completion
{
  completionCopy = completion;
  previewCache = [objc_opt_class() previewCache];
  v6 = CKAttachmentPreviewCacheKey(self);
  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 previewMaxWidth];
  v9 = v8;

  v10 = [previewCache cachedPreviewForKey:v6];

  if (!v10)
  {
    v23.receiver = self;
    v23.super_class = CKAnimatedImageAttachmentItem;
    [(CKImageAttachmentItem *)&v23 generatePreviewWithCompletion:completionCopy];
  }

  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__4;
  v21[4] = __Block_byref_object_dispose__4;
  v22 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __63__CKAnimatedImageAttachmentItem_generatePreviewWithCompletion___block_invoke;
  v20[3] = &unk_1E72EC800;
  v20[4] = self;
  v20[5] = v21;
  v20[6] = v9;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__CKAnimatedImageAttachmentItem_generatePreviewWithCompletion___block_invoke_3;
  v14[3] = &unk_1E72EC850;
  v11 = previewCache;
  v15 = v11;
  v12 = v6;
  v16 = v12;
  v13 = completionCopy;
  selfCopy = self;
  v18 = v13;
  v19 = v21;
  [v11 enqueueGenerationBlock:v20 completion:v14 withPriority:-1 forKey:v12];

  _Block_object_dispose(v21, 8);
}

CKAnimatedImage *__63__CKAnimatedImageAttachmentItem_generatePreviewWithCompletion___block_invoke(uint64_t a1)
{
  v27[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFF8];
  v3 = IMSafeTemporaryDirectory();
  v4 = [v3 path];
  v27[0] = v4;
  v27[1] = @"CKAnimatedImageAttachmentItemPreview";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v6 = [v2 fileURLWithPathComponents:v5];

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  [v7 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:0];

  v8 = [*(a1 + 32) guid];
  v9 = [v6 URLByAppendingPathComponent:v8 isDirectory:0];
  v10 = +[CKAnimatedImage filenameExtension];
  v11 = [v9 URLByAppendingPathExtension:v10];
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [*(a1 + 32) _newImageData];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__CKAnimatedImageAttachmentItem_generatePreviewWithCompletion___block_invoke_2;
  aBlock[3] = &unk_1E72EC7D8;
  v15 = *(a1 + 32);
  v26 = *(a1 + 48);
  aBlock[4] = v15;
  v25 = v14;
  v16 = v14;
  v17 = _Block_copy(aBlock);
  v18 = [v16 durationsWithMaxCount:*MEMORY[0x1E69A70C0]];
  v19 = -[CKMultiFrameImage initWithFrameCount:frameProvider:frameDurations:]([CKMultiFrameImage alloc], "initWithFrameCount:frameProvider:frameDurations:", [v18 count], v17, v18);
  v20 = [[CKAnimatedImage alloc] initWithMultiFrameImage:v19];
  v21 = *(*(*(a1 + 40) + 8) + 40);
  v23 = 0;
  [(CKAnimatedImage *)v20 writeAsOptimizedBitmapToFileURL:v21 error:&v23];

  return v20;
}

id __63__CKAnimatedImageAttachmentItem_generatePreviewWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) thumbnailAtIndex:a2 forWidth:*(a1 + 40) withImageData:*(a1 + 48)];
  v4 = [*(a1 + 32) generatePreviewFromThumbnail:v3 width:*(a1 + 48)];

  return v4;
}

void __63__CKAnimatedImageAttachmentItem_generatePreviewWithCompletion___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__CKAnimatedImageAttachmentItem_generatePreviewWithCompletion___block_invoke_4;
  block[3] = &unk_1E72EC850;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *&v5 = *(a1 + 48);
  *(&v5 + 1) = v4;
  *&v6 = v2;
  *(&v6 + 1) = v3;
  v8 = v6;
  v9 = v5;
  v10 = *(a1 + 64);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __63__CKAnimatedImageAttachmentItem_generatePreviewWithCompletion___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedPreviewForKey:*(a1 + 40)];
  v3 = *(a1 + 56);
  if (v3)
  {
    (*(v3 + 16))(v3, v2);
  }

  if (v2)
  {
    if (CKIsRunningInFullCKClient())
    {
      v4 = *(a1 + 32);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __63__CKAnimatedImageAttachmentItem_generatePreviewWithCompletion___block_invoke_5;
      v8[3] = &unk_1E72EC828;
      v8[4] = *(a1 + 48);
      v5 = v2;
      v6 = *(a1 + 64);
      v9 = v5;
      v10 = v6;
      [v4 enqueueSaveBlock:v8 withPriority:-1];
    }

    else
    {
      v7 = [MEMORY[0x1E696AC08] defaultManager];
      [v7 removeItemAtURL:*(*(*(a1 + 64) + 8) + 40) error:0];
    }
  }
}

void __63__CKAnimatedImageAttachmentItem_generatePreviewWithCompletion___block_invoke_5(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v20 = v3;
    _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Perform save: %@", buf, 0xCu);
  }

  v4 = [*(a1 + 32) animatedPreviewURL:1];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v4 path];
  v7 = [v5 fileExistsAtPath:v6];

  if (v7)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(2);
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = *(a1 + 32);
        v15 = *(a1 + 40);
        *buf = 138412802;
        v20 = v14;
        v21 = 2112;
        v22 = v4;
        v23 = 2112;
        v24 = v15;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_DEBUG, "%@ animated preview NOT saved to %@ because %@ isn't a CKAnimatedImage.", buf, 0x20u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      v17 = v4;
      v18 = *(a1 + 40);
      v16 = *(a1 + 32);
      _CKLog();
    }

    goto LABEL_5;
  }

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [v9 moveItemAtURL:*(*(*(a1 + 48) + 8) + 40) toURL:v4 error:0];

  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(2);
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 32);
      *buf = 138412546;
      v20 = v12;
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_DEBUG, "%@ animated preview saved to %@.", buf, 0x16u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v16 = *(a1 + 32);
    v17 = v4;
    _CKLog();
  }

  if ((v10 & 1) == 0)
  {
LABEL_5:
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    [v8 removeItemAtURL:*(*(*(a1 + 48) + 8) + 40) error:0];
  }
}

- (id)_newImageData
{
  v3 = objc_alloc(MEMORY[0x1E695DEF0]);
  fileURL = [(CKAttachmentItem *)self fileURL];
  v5 = [v3 initWithContentsOfURL:fileURL options:8 error:0];

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

- (id)thumbnailAtIndex:(unint64_t)index forWidth:(double)width withImageData:(id)data
{
  v50 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v8 = +[CKUIBehavior sharedBehaviors];
  [dataCopy ptSize];
  [v8 thumbnailFillSizeForWidth:width imageSize:{v9, v10}];
  v12 = v11;
  v14 = v13;

  v15 = [dataCopy thumbnailAtIndex:index fillToSize:*MEMORY[0x1E69A70C0] maxCount:{v12, v14}];
  [v15 size];
  v17 = v16;
  v19 = v18;
  v20 = +[CKUIBehavior sharedBehaviors];
  [v20 thumbnailFillSizeForWidth:width imageSize:{v17, v19}];
  v22 = v21;
  v24 = v23;

  if ([objc_opt_class() shouldScaleUpPreview])
  {
    if (v17 + 1.0 < v22 || v19 + 1.0 < v24)
    {
      if (v17 == 0.0)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = v22 / v17;
      }

      if (v19 == 0.0)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = v24 / v19;
      }

      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen scale];
      v30 = v29;

      mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
      v32 = v30 / fmax(v26, v27);
      [mainScreen2 scale];
      v34 = v33 * 0.5;

      if (v32 < v34)
      {
        v32 = v34;
      }

      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(2);
        v35 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          v52.width = v17;
          v52.height = v19;
          v36 = NSStringFromCGSize(v52);
          v53.width = v22;
          v53.height = v24;
          v37 = NSStringFromCGSize(v53);
          *buf = 138412802;
          v45 = v36;
          v46 = 2048;
          v47 = v32;
          v48 = 2112;
          v49 = v37;
          _os_log_impl(&dword_19020E000, v35, OS_LOG_TYPE_DEBUG, "Scale thumbnail of size (%@) by with image scale %f to try to fill target (%@)", buf, 0x20u);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
      {
        v54.width = v17;
        v54.height = v19;
        v38 = NSStringFromCGSize(v54);
        v55.width = v22;
        v55.height = v24;
        v43 = NSStringFromCGSize(v55);
        _CKLog();
      }

      v39 = objc_alloc(MEMORY[0x1E69DCAB8]);
      v40 = v15;
      v41 = [v39 initWithCGImage:objc_msgSend(v15 scale:"CGImage") orientation:{objc_msgSend(v15, "imageOrientation"), v32}];

      v15 = v41;
    }
  }

  return v15;
}

- (id)generatePreviewFromThumbnail:(id)thumbnail width:(double)width
{
  v61 = *MEMORY[0x1E69E9840];
  thumbnailCopy = thumbnail;
  if (thumbnailCopy)
  {
    v6 = thumbnailCopy;
    [thumbnailCopy size];
    v8 = v7;
    v10 = v9;
    v11 = +[CKUIBehavior sharedBehaviors];
    [v11 balloonMaskSizeWithTailShape:1 isMultiline:0];
    v13 = v12;
    v15 = v14;

    v16 = v8 < v13 || v10 < v15;
    if (v16 && (v17 = [v6 CGImage]) != 0)
    {
      v18 = v17;
      Width = CGImageGetWidth(v17);
      Height = CGImageGetHeight(v18);
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen scale];
      v23 = 1.0 / v22;
      v24 = v23 * Width;
      v25 = v23 * Height;

      if (v24 == 0.0)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = v13 / v24;
      }

      if (v25 == 0.0)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = v15 / v25;
      }

      if (CKMainScreenScale_once_5 != -1)
      {
        [CKAnimatedImageAttachmentItem generatePreviewFromThumbnail:width:];
      }

      v28 = fmax(v26, v27);
      v29 = *&CKMainScreenScale_sMainScreenScale_5;
      if (*&CKMainScreenScale_sMainScreenScale_5 == 0.0)
      {
        v29 = 1.0;
      }

      v30 = ceil(v28 * v29) / v29;
      if (IMOSLoggingEnabled())
      {
        CKLogCStringForType(2);
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v63.width = v24;
          v63.height = v25;
          v32 = NSStringFromCGSize(v63);
          v64.width = v13;
          v64.height = v15;
          v33 = NSStringFromCGSize(v64);
          *buf = 138412802;
          v56 = v32;
          v57 = 2048;
          v58 = v30;
          v59 = 2112;
          v60 = v33;
          _os_log_impl(&dword_19020E000, v31, OS_LOG_TYPE_DEBUG, "Scale thumbnail of size (%@) by a factor of %f to fill minimum (%@)", buf, 0x20u);
        }
      }

      if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
      {
        v65.width = v24;
        v65.height = v25;
        v34 = NSStringFromCGSize(v65);
        v66.width = v13;
        v66.height = v15;
        v54 = NSStringFromCGSize(v66);
        v53 = v30;
        v52 = v34;
        _CKLog();
      }

      mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen2 scale];
      v37 = v36;

      v38 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v18 scale:objc_msgSend(v6 orientation:{"imageOrientation"), v37 / v30}];
      [v38 size];
      v8 = v39;
      v10 = v40;
    }

    else
    {
      v38 = v6;
    }

    v41 = +[CKUIBehavior sharedBehaviors];
    [v41 thumbnailFillSizeForWidth:width imageSize:{v8, v10}];
    v43 = v42;
    v45 = v44;

    if (CKMainScreenScale_once_5 != -1)
    {
      [CKAnimatedImageAttachmentItem generatePreviewFromThumbnail:width:];
    }

    v46 = fmin(v8, v43);
    v47 = fmin(v10, v45);
    if (*&CKMainScreenScale_sMainScreenScale_5 == 0.0)
    {
      v48 = 1.0;
    }

    else
    {
      v48 = *&CKMainScreenScale_sMainScreenScale_5;
    }

    v67.width = v46;
    v67.height = v47;
    UIGraphicsBeginImageContextWithOptions(v67, 0, 0.0);
    [v38 drawAtPoint:{floor((*MEMORY[0x1E695EFF8] + (v46 - v8) * 0.5) * v48) / v48, floor((*(MEMORY[0x1E695EFF8] + 8) + (v47 - v10) * 0.5) * v48) / v48}];
    v49 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(2);
      v50 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v56 = "[CKAnimatedImageAttachmentItem generatePreviewFromThumbnail:width:]";
        _os_log_impl(&dword_19020E000, v50, OS_LOG_TYPE_DEBUG, "passed %s a nil thumbnail", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      _CKLog();
    }

    v49 = 0;
    v38 = 0;
  }

  return v49;
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