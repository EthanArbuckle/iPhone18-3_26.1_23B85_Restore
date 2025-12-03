@interface CKAnimatedImageMediaObject
+ (Class)__ck_attachmentItemClass;
+ (double)maxPixelDimensionOfThumbnailWithImagePixelSize:(CGSize)size forWidth:(double)width isSticker:(BOOL)sticker;
- (BOOL)canPerformQuickAction;
- (BOOL)canUseAsBackground;
- (BOOL)needsAnimation;
- (BOOL)validPreviewExistsAtURL:(id)l;
- (CKAnimatedImageMediaObject)initWithCoder:(id)coder;
- (CKAnimatedImageMediaObject)initWithTransfer:(id)transfer context:(id)context forceInlinePreview:(BOOL)preview;
- (id)animatedImageForWidth:(double)width;
- (id)bbPreviewFillToSize:(CGSize)size;
- (id)generateAndPersistAnimatedPreviewFromImageData:(id)data forWidth:(double)width withTransferGUID:(id)d isSticker:(BOOL)sticker;
- (id)generateAndPersistAnimatedPreviewFromSourceURL:(id)l senderContext:(id)context forWidth:(double)width withTransferGUID:(id)d isSticker:(BOOL)sticker;
- (id)generateThumbnailsForWidth:(double)width isSticker:(BOOL)sticker orientation:(char)orientation;
- (id)metricsCollectorMediaType;
- (id)previewForWidth:(double)width orientation:(char)orientation;
- (id)savedAnimatedPreviewFromURL:(id)l forOrientation:(char)orientation;
- (id)savedPreviewFromURL:(id)l forOrientation:(char)orientation;
- (id)scaledThumbnailFromThumbnail:(id)thumbnail forWidth:(double)width isSticker:(BOOL)sticker;
- (id)thumbnailAtIndex:(unint64_t)index forWidth:(double)width imageData:(id)data isSticker:(BOOL)sticker orientation:(char)orientation;
- (void)encodeWithCoder:(id)coder;
- (void)prewarmPreviewForWidth:(double)width orientation:(char)orientation;
- (void)saveAnimatedPreview:(id)preview toURL:(id)l forOrientation:(char)orientation;
@end

@implementation CKAnimatedImageMediaObject

- (CKAnimatedImageMediaObject)initWithTransfer:(id)transfer context:(id)context forceInlinePreview:(BOOL)preview
{
  previewCopy = preview;
  v40 = *MEMORY[0x1E69E9840];
  transferCopy = transfer;
  contextCopy = context;
  v37.receiver = self;
  v37.super_class = CKAnimatedImageMediaObject;
  v10 = [(CKImageMediaObject *)&v37 initWithTransfer:transferCopy context:contextCopy forceInlinePreview:previewCopy];
  v11 = v10;
  if (v10)
  {
    v10->_stickerEffectType = 0;
    transfer = [(CKMediaObject *)v10 transfer];
    isSticker = [transfer isSticker];

    if (isSticker)
    {
      previewFilenameExtension = [(CKMediaObject *)v11 previewFilenameExtension];
      v15 = [(CKMediaObject *)v11 previewCachesFileURLWithOrientation:0 extension:previewFilenameExtension generateIntermediaries:0];

      uRLByDeletingPathExtension = [v15 URLByDeletingPathExtension];
      v17 = [uRLByDeletingPathExtension URLByAppendingPathExtension:@"plist"];

      v18 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v17];
      if (v18)
      {
        stickerUserInfo2 = [MEMORY[0x1E696AE40] propertyListWithData:v18 options:0 format:0 error:0];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v30 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              v31 = objc_opt_class();
              v32 = NSStringFromClass(v31);
              *buf = 138412290;
              v39 = v32;
              _os_log_impl(&dword_19020E000, v30, OS_LOG_TYPE_INFO, "CKAnimatedImageMediaObject: Invalid preview metadata file: %@", buf, 0xCu);
            }
          }

          goto LABEL_31;
        }

        mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        isClingEnabled = [mEMORY[0x1E69A8070] isClingEnabled];

        if (isClingEnabled)
        {
          v22 = [stickerUserInfo2 objectForKeyedSubscript:*MEMORY[0x1E69A7C88]];
          if ([v22 length])
          {
            if ([v22 containsString:@"none"])
            {
              v23 = 0;
            }

            else if ([v22 containsString:@"stroke"])
            {
              v23 = 1;
            }

            else if ([v22 containsString:@"comic"])
            {
              v23 = 2;
            }

            else if ([v22 containsString:@"puffy"])
            {
              v23 = 3;
            }

            else if ([v22 containsString:@"iridescent"])
            {
              v23 = 4;
            }

            else
            {
              v23 = 0;
            }

            v11->_stickerEffectType = v23;
            sticker = [(CKImageMediaObject *)v11 sticker];
            [sticker setStickerEffectType:v23];
          }
        }

        stickerUserInfo = [transferCopy stickerUserInfo];
        v35 = [stickerUserInfo objectForKeyedSubscript:*MEMORY[0x1E69A7CA8]];
        bOOLValue = [v35 BOOLValue];
      }

      else
      {
        stickerUserInfo2 = [transferCopy stickerUserInfo];
        mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
        isClingEnabled2 = [mEMORY[0x1E69A8070]2 isClingEnabled];

        if (isClingEnabled2)
        {
          v26 = [stickerUserInfo2 valueForKey:*MEMORY[0x1E69A7C88]];
          v27 = v26;
          if (v26)
          {
            v11->_stickerEffectType = [v26 intValue];
          }
        }

        v28 = [stickerUserInfo2 objectForKeyedSubscript:*MEMORY[0x1E69A7CA8]];
        bOOLValue = [v28 BOOLValue];
      }

      v11->_isReaction = bOOLValue;
LABEL_31:
    }
  }

  return v11;
}

- (id)animatedImageForWidth:(double)width
{
  imageData = [(CKImageMediaObject *)self imageData];
  v6 = [imageData durationsWithMaxCount:*MEMORY[0x1E69A70C0]];

  v7 = [CKAnimatedImage alloc];
  transfer = [(CKMediaObject *)self transfer];
  v9 = -[CKAnimatedImageMediaObject generateThumbnailsForWidth:isSticker:orientation:](self, "generateThumbnailsForWidth:isSticker:orientation:", [transfer isSticker], 0, width);
  v10 = [(CKAnimatedImage *)v7 initWithImages:v9 durations:v6];

  return v10;
}

- (id)metricsCollectorMediaType
{
  transfer = [(CKMediaObject *)self transfer];
  isSticker = [transfer isSticker];

  if (isSticker)
  {
    v5 = MEMORY[0x1E69A74C0];
  }

  else
  {
    needsAnimation = [(CKAnimatedImageMediaObject *)self needsAnimation];
    v5 = MEMORY[0x1E69A7488];
    if (!needsAnimation)
    {
      v5 = MEMORY[0x1E69A74B8];
    }
  }

  v7 = *v5;

  return v7;
}

- (BOOL)canPerformQuickAction
{
  v5.receiver = self;
  v5.super_class = CKAnimatedImageMediaObject;
  canPerformQuickAction = [(CKMediaObject *)&v5 canPerformQuickAction];
  if (canPerformQuickAction)
  {
    LOBYTE(canPerformQuickAction) = ![(CKAnimatedImageMediaObject *)self needsAnimation];
  }

  return canPerformQuickAction;
}

- (id)previewForWidth:(double)width orientation:(char)orientation
{
  orientationCopy = orientation;
  v52 = *MEMORY[0x1E69E9840];
  if (![(CKAnimatedImageMediaObject *)self needsAnimation])
  {
    v47.receiver = self;
    v47.super_class = CKAnimatedImageMediaObject;
    v7 = [(CKMediaObject *)&v47 previewForWidth:orientationCopy orientation:width];
    goto LABEL_64;
  }

  if ([(CKMediaObject *)self transcoderPreviewGenerationFailed])
  {
    v7 = 0;
    goto LABEL_64;
  }

  v8 = [(CKMediaObject *)self previewCacheKeyWithOrientation:orientationCopy];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(2);
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 1024;
      *&buf[14] = orientationCopy;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_DEBUG, "%@ previewForOrientation:%d", buf, 0x12u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    selfCopy = self;
    v36 = orientationCopy;
    _CKLog();
  }

  v10 = [(CKMediaObject *)self transfer:selfCopy];
  if (!-[CKMediaObject isPreviewable](self, "isPreviewable") || ([v10 isFileDataReady] & 1) == 0 && (objc_msgSend(v10, "isRestoring") & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(2);
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = self;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_DEBUG, "%@ isn't previewable.", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      _CKLog();
    }

    v7 = 0;
    goto LABEL_63;
  }

  previewDispatchCache = [(CKMediaObject *)self previewDispatchCache];
  v12 = [previewDispatchCache cachedPreviewForKey:v8];
  if (!v12)
  {
LABEL_30:
    transfer = [(CKMediaObject *)self transfer];
    if ([transfer isFileURLFinalized])
    {
    }

    else
    {
      transfer2 = [(CKMediaObject *)self transfer];
      isSticker = [transfer2 isSticker];

      if (!isSticker)
      {
        goto LABEL_40;
      }
    }

    previewFilenameExtension = [(CKMediaObject *)self previewFilenameExtension];
    v19 = [(CKMediaObject *)self previewCachesFileURLWithOrientation:orientationCopy extension:previewFilenameExtension generateIntermediaries:0];

    v20 = [(CKAnimatedImageMediaObject *)self savedAnimatedPreviewFromURL:v19 forOrientation:orientationCopy];

    mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
    [mEMORY[0x1E69A8168] trackEvent:*MEMORY[0x1E69A7578]];

    if (v20)
    {
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          *&buf[4] = "[CKAnimatedImageMediaObject previewForWidth:orientation:]";
          *&buf[12] = 2048;
          *&buf[14] = v20;
          *&buf[22] = 2112;
          v49 = v19;
          _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "%s Got persisted animated preview %p from disk @ %@", buf, 0x20u);
        }
      }

      [previewDispatchCache setCachedPreview:v20 key:v8];
      v12 = v20;

      goto LABEL_61;
    }

    v12 = 0;
LABEL_40:
    transfer3 = [(CKMediaObject *)self transfer];
    isSticker2 = [transfer3 isSticker];

    if (isSticker2)
    {
      sticker = [(CKImageMediaObject *)self sticker];
      animatedImageCacheURLFromExtension = [sticker animatedImageCacheURLFromExtension];
      if (animatedImageCacheURLFromExtension)
      {
        v46 = 0;
        v27 = [CKAnimatedImage animatedImageFromOptimizedBitmapAtFileURL:animatedImageCacheURLFromExtension error:&v46];
        v37 = v46;

        if (v27)
        {
          if (IMOSLoggingEnabled())
          {
            v28 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              *buf = 136315650;
              *&buf[4] = "[CKAnimatedImageMediaObject previewForWidth:orientation:]";
              *&buf[12] = 2048;
              *&buf[14] = v27;
              *&buf[22] = 2112;
              v49 = animatedImageCacheURLFromExtension;
              _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_INFO, "%s Got animated image preview %p from sticker app cache @ %@", buf, 0x20u);
            }
          }

          [previewDispatchCache setCachedPreview:v27 key:v8];
          v12 = v27;

          goto LABEL_61;
        }

        v12 = 0;
      }
    }

    if ([(CKMediaObject *)self generatePreviewOutOfProcess])
    {
      [(CKMediaObject *)self generateOOPPreviewForWidth:orientationCopy orientation:width];
      v7 = 0;
      goto LABEL_62;
    }

    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = self;
        _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_INFO, "%@ animated preview NOT read from disk.", buf, 0xCu);
      }
    }

    if (([previewDispatchCache isGeneratingPreviewForKey:v8] & 1) == 0)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v49 = __Block_byref_object_copy__24;
      v50 = __Block_byref_object_dispose__24;
      v51 = 0;
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __58__CKAnimatedImageMediaObject_previewForWidth_orientation___block_invoke;
      v45[3] = &unk_1E72EBC10;
      v45[4] = self;
      v45[5] = buf;
      *&v45[6] = width;
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __58__CKAnimatedImageMediaObject_previewForWidth_orientation___block_invoke_70;
      v39[3] = &unk_1E72F0B90;
      v40 = previewDispatchCache;
      v41 = v8;
      selfCopy2 = self;
      v44 = orientationCopy;
      v43 = buf;
      [v40 enqueueGenerationBlock:v45 completion:v39 withPriority:-1 forKey:v41];

      _Block_object_dispose(buf, 8);
    }

    v38.receiver = self;
    v38.super_class = CKAnimatedImageMediaObject;
    v30 = [(CKMediaObject *)&v38 previewForWidth:orientationCopy orientation:width];

    imageEdgeEnhancementBlockIfNecessary = [(CKAnimatedImageMediaObject *)self imageEdgeEnhancementBlockIfNecessary];
    v32 = imageEdgeEnhancementBlockIfNecessary;
    if (imageEdgeEnhancementBlockIfNecessary)
    {
      v33 = (*(imageEdgeEnhancementBlockIfNecessary + 16))(imageEdgeEnhancementBlockIfNecessary, v30);

      v30 = v33;
    }

    v12 = v30;

LABEL_61:
    v7 = v12;
    goto LABEL_62;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        *&buf[4] = "[CKAnimatedImageMediaObject previewForWidth:orientation:]";
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "%s cached in-memory preview is not animated, forcing reload from disk", buf, 0xCu);
      }
    }

    goto LABEL_30;
  }

  v12 = v12;
  v7 = v12;
LABEL_62:

LABEL_63:
LABEL_64:

  return v7;
}

id __58__CKAnimatedImageMediaObject_previewForWidth_orientation___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v19 = v5;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "%@ generate animated preview.", buf, 0xCu);
    }
  }

  v6 = *(a1 + 32);
  v7 = [v6 imageData];
  v8 = *(a1 + 48);
  v9 = [*(a1 + 32) transferGUID];
  v10 = [*(a1 + 32) transfer];
  v11 = [v6 generateAndPersistAnimatedPreviewFromImageData:v7 forWidth:v9 withTransferGUID:objc_msgSend(v10 isSticker:{"isSticker"), v8}];
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = *(*(*(a1 + 40) + 8) + 40);
  v17 = 0;
  v15 = [CKAnimatedImage animatedImageFromOptimizedBitmapAtFileURL:v14 error:&v17];

  return v15;
}

void __58__CKAnimatedImageMediaObject_previewForWidth_orientation___block_invoke_70(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__CKAnimatedImageMediaObject_previewForWidth_orientation___block_invoke_2;
  block[3] = &unk_1E72F0B90;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 64);
  v5 = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __58__CKAnimatedImageMediaObject_previewForWidth_orientation___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cachedPreviewForKey:*(a1 + 40)];
  if (v2)
  {
    if (CKIsRunningInFullCKClient())
    {
      if (IMOSLoggingEnabled())
      {
        v3 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          v4 = *(a1 + 48);
          *buf = 138412290;
          v13 = v4;
          _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "%@ save animated preview.", buf, 0xCu);
        }
      }

      v5 = *(a1 + 32);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __58__CKAnimatedImageMediaObject_previewForWidth_orientation___block_invoke_71;
      v9[3] = &unk_1E72F0B68;
      v11 = *(a1 + 64);
      v10 = *(a1 + 48);
      [v5 enqueueSaveBlock:v9 forMediaObject:v10 withPriority:0];
    }

    else if (*(*(*(a1 + 56) + 8) + 40))
    {
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v7 = *(*(*(a1 + 56) + 8) + 40);
          *buf = 138412290;
          v13 = v7;
          _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Not running in Full CK Client, deleting %@", buf, 0xCu);
        }
      }

      v8 = [MEMORY[0x1E696AC08] defaultManager];
      [v8 removeItemAtURL:*(*(*(a1 + 56) + 8) + 40) error:0];
    }

    [*(a1 + 48) postPreviewDidChangeNotifications];
  }
}

void __58__CKAnimatedImageMediaObject_previewForWidth_orientation___block_invoke_71(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 needsAnimation])
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);
    v6 = [*(*(*(a1 + 40) + 8) + 40) pathExtension];
    v7 = [v5 previewCachesFileURLWithOrientation:v4 extension:v6 generateIntermediaries:1];

    if (v7 && *(*(*(a1 + 40) + 8) + 40))
    {
      v8 = [MEMORY[0x1E696AC08] defaultManager];
      [v8 moveItemAtURL:*(*(*(a1 + 40) + 8) + 40) toURL:v7 error:0];
    }

    else if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(*(*(a1 + 40) + 8) + 40);
        v11 = 134218240;
        v12 = v7;
        v13 = 2048;
        v14 = v10;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Failed to get a previewURL %p, or temporaryPreviewURL %p", &v11, 0x16u);
      }
    }
  }
}

- (void)prewarmPreviewForWidth:(double)width orientation:(char)orientation
{
  orientationCopy = orientation;
  v41 = *MEMORY[0x1E69E9840];
  if (![(CKAnimatedImageMediaObject *)self needsAnimation])
  {
    v31.receiver = self;
    v31.super_class = CKAnimatedImageMediaObject;
    [(CKMediaObject *)&v31 prewarmPreviewForWidth:orientationCopy orientation:width];
  }

  v7 = [(CKMediaObject *)self previewCacheKeyWithOrientation:orientationCopy];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Prewarm: Asked to prewarm preview for key %@", &buf, 0xCu);
    }
  }

  if (![(CKMediaObject *)self transcoderPreviewGenerationFailed])
  {
    transfer = [(CKMediaObject *)self transfer];
    if (!-[CKMediaObject isPreviewable](self, "isPreviewable") || ([transfer isFileDataReady] & 1) == 0 && (objc_msgSend(transfer, "isRestoring") & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v7;
          _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Prewarm: Not prewarming %@, not previewable", &buf, 0xCu);
        }
      }

      goto LABEL_33;
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__24;
    v39 = __Block_byref_object_dispose__24;
    v40 = 0;
    previewDispatchCache = [(CKMediaObject *)self previewDispatchCache];
    v12 = [previewDispatchCache cachedPreviewForKey:v7];
    v13 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v12;

    if (*(*(&buf + 1) + 40))
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *v32 = 138412290;
          v33 = v7;
          _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Prewarm: %@ already in cache", v32, 0xCu);
        }
      }

      goto LABEL_32;
    }

    transfer2 = [(CKMediaObject *)self transfer];
    if ([transfer2 isFileURLFinalized])
    {
    }

    else
    {
      transfer3 = [(CKMediaObject *)self transfer];
      isSticker = [transfer3 isSticker];

      if (!isSticker)
      {
LABEL_32:

        _Block_object_dispose(&buf, 8);
LABEL_33:

        goto LABEL_34;
      }
    }

    previewFilenameExtension = [(CKMediaObject *)self previewFilenameExtension];
    v20 = [(CKMediaObject *)self previewCachesFileURLWithOrientation:orientationCopy extension:previewFilenameExtension generateIntermediaries:0];

    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *v32 = 138412546;
        v33 = v7;
        v34 = 2112;
        v35 = v20;
        _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "Prewarm: Async fetching %@ at path %@", v32, 0x16u);
      }
    }

    objc_initWeak(v32, self);
    v22 = +[CKPreviewDispatchCache previewPrewarmQueue];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __65__CKAnimatedImageMediaObject_prewarmPreviewForWidth_orientation___block_invoke;
    v24[3] = &unk_1E72F0BE0;
    p_buf = &buf;
    objc_copyWeak(&v29, v32);
    v25 = v20;
    v30 = orientationCopy;
    v26 = previewDispatchCache;
    v27 = v7;
    v23 = v20;
    dispatch_async(v22, v24);

    objc_destroyWeak(&v29);
    objc_destroyWeak(v32);
    goto LABEL_32;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Prewarm: Not prewarming %@, transcode generation failed", &buf, 0xCu);
    }
  }

LABEL_34:
}

void __65__CKAnimatedImageMediaObject_prewarmPreviewForWidth_orientation___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained savedAnimatedPreviewFromURL:*(a1 + 32) forOrientation:*(a1 + 72)];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(*(*(a1 + 56) + 8) + 40);
      v8 = objc_loadWeakRetained((a1 + 64));
      *buf = 138412802;
      v15 = @"animated";
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Prewarm: %@ preview %@, welf %@", buf, 0x20u);
    }
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__CKAnimatedImageMediaObject_prewarmPreviewForWidth_orientation___block_invoke_81;
  v9[3] = &unk_1E72F0BB8;
  v13 = *(a1 + 56);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = @"animated";
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __65__CKAnimatedImageMediaObject_prewarmPreviewForWidth_orientation___block_invoke_81(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v2 = [*(a1 + 32) cachedPreviewForKey:*(a1 + 40)];
    if (v2 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0)))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_21;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_21;
      }

      v7 = [v2 durations];
      v8 = [v7 count];

      v9 = [*(*(*(a1 + 56) + 8) + 40) durations];
      v10 = [v9 count];

      if (v10 <= v8)
      {
        goto LABEL_21;
      }

      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = 136315650;
          v13 = "[CKAnimatedImageMediaObject prewarmPreviewForWidth:orientation:]_block_invoke";
          v14 = 2048;
          v15 = v10;
          v16 = 2048;
          v17 = v8;
          _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "%s Prewarm adding to cache, preview count %lu > cached count %lu", &v12, 0x20u);
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = *(*(*(a1 + 56) + 8) + 40);
        v12 = 136315650;
        v13 = "[CKAnimatedImageMediaObject prewarmPreviewForWidth:orientation:]_block_invoke";
        v14 = 2112;
        v15 = v4;
        v16 = 2112;
        v17 = v2;
        _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "%s Prewarm adding to cache, preview is %@ superceeds cached preview %@", &v12, 0x20u);
      }
    }

    [*(a1 + 32) setCachedPreview:*(*(*(a1 + 56) + 8) + 40) key:*(a1 + 40)];
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 40);
      v5 = *(a1 + 48);
      v12 = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Prewarm: No %@ preview on disk for %@", &v12, 0x16u);
    }
  }

LABEL_21:
}

- (id)generateAndPersistAnimatedPreviewFromImageData:(id)data forWidth:(double)width withTransferGUID:(id)d isSticker:(BOOL)sticker
{
  v56[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "%@ generate animated preview.", buf, 0xCu);
    }
  }

  v11 = MEMORY[0x1E695DFF8];
  v12 = IMSafeTemporaryDirectory();
  path = [v12 path];
  v56[0] = path;
  v56[1] = @"CKAnimatedImageMediaObjectPreview";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
  v40 = [v11 fileURLWithPathComponents:v14];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v47 = 0;
  LOBYTE(path) = [defaultManager createDirectoryAtURL:v40 withIntermediateDirectories:1 attributes:0 error:&v47];
  v37 = v47;

  if ((path & 1) == 0 && IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy = v37;
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Failed to create temporary preview directory with error: %@", buf, 0xCu);
    }
  }

  if (!dCopy || (-[CKAnimatedImageMediaObject im_lastPathComponent](dCopy, "im_lastPathComponent"), v17 = objc_claimAutoreleasedReturnValue(), [v40 URLByAppendingPathComponent:v17 isDirectory:0], v18 = objc_claimAutoreleasedReturnValue(), +[CKAnimatedImage filenameExtension](CKAnimatedImage, "filenameExtension"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "URLByAppendingPathExtension:", v19), v20 = objc_claimAutoreleasedReturnValue(), v19, v18, v17, !v20))
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        selfCopy = dCopy;
        _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "Failed to get a temporaryPreviewURL from transfer guid %@", buf, 0xCu);
      }
    }

    v20 = 0;
  }

  v22 = objc_alloc_init(MEMORY[0x1E69A6170]);
  [v22 startTimingForKey:@"CKAnimatedImageMediaObject_PreviewGenerationTime"];
  v23 = [dataCopy durationsWithMaxCount:*MEMORY[0x1E69A70C0]];
  v24 = [v23 count];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __113__CKAnimatedImageMediaObject_generateAndPersistAnimatedPreviewFromImageData_forWidth_withTransferGUID_isSticker___block_invoke;
  aBlock[3] = &unk_1E72F0C08;
  aBlock[4] = self;
  widthCopy = width;
  v25 = dataCopy;
  v44 = v25;
  stickerCopy = sticker;
  v26 = _Block_copy(aBlock);
  v27 = [[CKMultiFrameImage alloc] initWithFrameCount:v24 frameProvider:v26 frameDurations:v23];
  if (v27)
  {
    v28 = [[CKAnimatedImage alloc] initWithMultiFrameImage:v27];
    v29 = v28;
    v30 = @"NO";
    if (v28)
    {
      v42 = 0;
      v31 = [(CKAnimatedImage *)v28 writeAsOptimizedBitmapToFileURL:v20 error:&v42];
      v32 = v42;
      if (v31)
      {
        v30 = @"YES";
      }
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
    v30 = @"NO";
  }

  [v22 stopTimingForKey:{@"CKAnimatedImageMediaObject_PreviewGenerationTime", v37}];
  if (IMOSLoggingEnabled())
  {
    v33 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      uTIType = [(CKMediaObject *)self UTIType];
      *buf = 138413058;
      selfCopy = uTIType;
      v50 = 2112;
      v51 = v30;
      v52 = 2112;
      v53 = v32;
      v54 = 2112;
      v55 = v22;
      _os_log_impl(&dword_19020E000, v33, OS_LOG_TYPE_INFO, "Cache miss on UTI type %@ generated with success: (%@), error: (%@), and timing: %@", buf, 0x2Au);
    }
  }

  mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
  [mEMORY[0x1E69A8168] trackEvent:*MEMORY[0x1E69A7580]];

  return v20;
}

id __113__CKAnimatedImageMediaObject_generateAndPersistAnimatedPreviewFromImageData_forWidth_withTransferGUID_isSticker___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) thumbnailAtIndex:a2 forWidth:*(a1 + 40) imageData:*(a1 + 56) isSticker:0 orientation:*(a1 + 48)];
  v4 = v3;
  if (*(a1 + 56) == 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = [*(a1 + 32) generatePreviewFromThumbnail:v3 width:0 orientation:*(a1 + 48)];
  }

  v6 = v5;

  return v6;
}

- (id)generateAndPersistAnimatedPreviewFromSourceURL:(id)l senderContext:(id)context forWidth:(double)width withTransferGUID:(id)d isSticker:(BOOL)sticker
{
  stickerCopy = sticker;
  v78[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  contextCopy = context;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = self;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "%@ generate animated preview.", &buf, 0xCu);
    }
  }

  v13 = MEMORY[0x1E695DFF8];
  v14 = IMSafeTemporaryDirectory();
  path = [v14 path];
  v78[0] = path;
  v78[1] = @"CKAnimatedImageMediaObjectPreview";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:2];
  v17 = [v13 fileURLWithPathComponents:v16];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:0 error:0];

  if (!dCopy || ([dCopy im_lastPathComponent], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "URLByAppendingPathComponent:isDirectory:", v19, 0), v20 = objc_claimAutoreleasedReturnValue(), +[CKAnimatedImage filenameExtension](CKAnimatedImage, "filenameExtension"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "URLByAppendingPathExtension:", v21), v22 = objc_claimAutoreleasedReturnValue(), v21, v20, v19, !v22))
  {
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = dCopy;
        _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "Failed to get a temporaryPreviewURL from transfer guid %@", &buf, 0xCu);
      }
    }

    v22 = 0;
  }

  v24 = objc_alloc_init(MEMORY[0x1E69A6170]);
  [(__CFString *)v24 startTimingForKey:@"CKAnimatedImageMediaObject_PreviewGenerationTime"];
  [(__CFString *)v24 startTimingForKey:@"CKAnimatedImageMediaObject_PreviewGenerationTime_MetadataOnly"];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v74 = 0x3032000000;
  v75 = __Block_byref_object_copy__24;
  v76 = __Block_byref_object_dispose__24;
  v77 = 0;
  v25 = dispatch_group_create();
  dispatch_group_enter(v25);
  v26 = MEMORY[0x1E69A7EF8];
  v27 = *MEMORY[0x1E69A70C0];
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __127__CKAnimatedImageMediaObject_generateAndPersistAnimatedPreviewFromSourceURL_senderContext_forWidth_withTransferGUID_isSticker___block_invoke;
  v62[3] = &unk_1E72F0C30;
  p_buf = &buf;
  v28 = v25;
  v63 = v28;
  [v26 getMetadataForAnimatedImage:lCopy senderContext:contextCopy maxCount:v27 withCompletionBlock:v62];
  v29 = dispatch_time(0, 1000000000);
  if (dispatch_group_wait(v28, v29))
  {
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *v65 = 0;
        _os_log_impl(&dword_19020E000, v30, OS_LOG_TYPE_INFO, "Timed out waiting for BlastDoor's getMetadataForAnimatedImage.", v65, 2u);
      }
    }

    if (!IMOSLoggingEnabled())
    {
      goto LABEL_21;
    }

    v31 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *v65 = 0;
      _os_log_impl(&dword_19020E000, v31, OS_LOG_TYPE_INFO, "Unable to get animated image metadata from BlastDoor, returning early.", v65, 2u);
    }

LABEL_20:

LABEL_21:
    v32 = 0;
    goto LABEL_51;
  }

  if (!*(*(&buf + 1) + 40))
  {
    if (IMOSLoggingEnabled())
    {
      v42 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        *v65 = 0;
        _os_log_impl(&dword_19020E000, v42, OS_LOG_TYPE_INFO, "BlastDoor's getMetadataForAnimatedImage returned nil.", v65, 2u);
      }
    }

    if (!IMOSLoggingEnabled())
    {
      goto LABEL_21;
    }

    v31 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *v65 = 0;
      _os_log_impl(&dword_19020E000, v31, OS_LOG_TYPE_INFO, "Unable to get animated image metadata from BlastDoor, returning early.", v65, 2u);
    }

    goto LABEL_20;
  }

  [(__CFString *)v24 stopTimingForKey:@"CKAnimatedImageMediaObject_PreviewGenerationTime_MetadataOnly"];
  if (IMOSLoggingEnabled())
  {
    v33 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      uTIType = [(CKMediaObject *)self UTIType];
      *v65 = 138412546;
      v66 = uTIType;
      v67 = 2112;
      v68 = v24;
      _os_log_impl(&dword_19020E000, v33, OS_LOG_TYPE_INFO, "Cache miss on UTI type %@ generated metadata with timing: %@", v65, 0x16u);
    }
  }

  [*(*(&buf + 1) + 40) pixelSize];
  [CKAnimatedImageMediaObject maxPixelDimensionOfThumbnailWithImagePixelSize:"maxPixelDimensionOfThumbnailWithImagePixelSize:forWidth:isSticker:" forWidth:stickerCopy isSticker:?];
  v36 = v35;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __127__CKAnimatedImageMediaObject_generateAndPersistAnimatedPreviewFromSourceURL_senderContext_forWidth_withTransferGUID_isSticker___block_invoke_111;
  aBlock[3] = &unk_1E72F0C80;
  v56 = lCopy;
  v57 = contextCopy;
  selfCopy = self;
  v59 = v36;
  widthCopy = width;
  v61 = stickerCopy;
  v50 = _Block_copy(aBlock);
  durations = [*(*(&buf + 1) + 40) durations];
  v38 = -[CKMultiFrameImage initWithFrameCount:frameProvider:frameDurations:]([CKMultiFrameImage alloc], "initWithFrameCount:frameProvider:frameDurations:", [durations count], v50, durations);
  if (v38)
  {
    v39 = [[CKAnimatedImage alloc] initWithMultiFrameImage:v38];
    v40 = v39;
    if (v39)
    {
      v54 = 0;
      v41 = [(CKAnimatedImage *)v39 writeAsOptimizedBitmapToFileURL:v22 error:&v54];
      v48 = v54;
    }

    else
    {
      v41 = 0;
      v48 = 0;
    }

    [(__CFString *)v24 stopTimingForKey:@"CKAnimatedImageMediaObject_PreviewGenerationTime", v48];
  }

  else
  {
    v41 = 0;
    [(__CFString *)v24 stopTimingForKey:@"CKAnimatedImageMediaObject_PreviewGenerationTime", 0];
  }

  if (IMOSLoggingEnabled())
  {
    v43 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      uTIType2 = [(CKMediaObject *)self UTIType];
      v45 = @"NO";
      *v65 = 138413058;
      v66 = uTIType2;
      if (v41)
      {
        v45 = @"YES";
      }

      v67 = 2112;
      v68 = v45;
      v69 = 2112;
      v70 = v49;
      v71 = 2112;
      v72 = v24;
      _os_log_impl(&dword_19020E000, v43, OS_LOG_TYPE_INFO, "Cache miss on UTI type %@ generated with success: (%@), error: (%@), and timing: %@", v65, 0x2Au);
    }
  }

  mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
  [mEMORY[0x1E69A8168] trackEvent:*MEMORY[0x1E69A7580]];

  if (v41)
  {
    v32 = v22;
  }

  else
  {
    v32 = 0;
  }

LABEL_51:
  _Block_object_dispose(&buf, 8);

  return v32;
}

void __127__CKAnimatedImageMediaObject_generateAndPersistAnimatedPreviewFromSourceURL_senderContext_forWidth_withTransferGUID_isSticker___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (v6 && !a3)
  {
    MEMORY[0x193AF5EC0](@"BlastDoorAnimatedImageMetadata", @"BlastDoor");
    if (objc_opt_isKindOfClass())
    {
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);
  }

  dispatch_group_leave(*(a1 + 32));
}

id __127__CKAnimatedImageMediaObject_generateAndPersistAnimatedPreviewFromSourceURL_senderContext_forWidth_withTransferGUID_isSticker___block_invoke_111(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__24;
  v27 = __Block_byref_object_dispose__24;
  v28 = 0;
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  v5 = MEMORY[0x1E69A7EF8];
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 56);
  v9 = *MEMORY[0x1E69A70C0];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __127__CKAnimatedImageMediaObject_generateAndPersistAnimatedPreviewFromSourceURL_senderContext_forWidth_withTransferGUID_isSticker___block_invoke_2;
  v19[3] = &unk_1E72F0C58;
  v22 = &v23;
  v20 = v6;
  v10 = v4;
  v21 = v10;
  [v5 generateAnimatedImagePreview:v7 senderContext:v20 maxPixelDimension:a2 index:v9 maxCount:v19 withCompletionBlock:v8];
  v11 = dispatch_time(0, 5000000000);
  if (dispatch_group_wait(v10, v11))
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v18 = 0;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Timed out generating frame.", v18, 2u);
      }
    }

    goto LABEL_7;
  }

  v13 = [*(a1 + 48) scaledThumbnailFromThumbnail:v24[5] forWidth:*(a1 + 72) isSticker:*(a1 + 64)];
  v14 = v24[5];
  v24[5] = v13;

  if (*(a1 + 72))
  {
LABEL_7:
    v15 = v24[5];
    goto LABEL_8;
  }

  v15 = [*(a1 + 48) generatePreviewFromThumbnail:v24[5] width:0 orientation:*(a1 + 64)];
LABEL_8:
  v16 = v15;

  _Block_object_dispose(&v23, 8);

  return v16;
}

void __127__CKAnimatedImageMediaObject_generateAndPersistAnimatedPreviewFromSourceURL_senderContext_forWidth_withTransferGUID_isSticker___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v25 = a2;
  if (v25 && !a3)
  {
    MEMORY[0x193AF5EC0](@"BlastDoorPreviewImage", @"BlastDoor");
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v6 = v25;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = [v7 image];
    v9 = [v8 cgImage];

    v10 = objc_alloc(MEMORY[0x1E69DCAB8]);
    v11 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v11 scale];
    v12 = [v10 initWithCGImage:v9 scale:0 orientation:?];
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    if ((isKindOfClass & 1) != 0 && ([v25 utTypeString], (v15 = objc_claimAutoreleasedReturnValue()) != 0) && (v16 = v15, objc_msgSend(v25, "utTypeString"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "length"), v17, v16, v18))
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v20 = [v25 utTypeString];
      [v19 setValue:v20 forKey:*MEMORY[0x1E69A7770]];

      v21 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "isFromMe")}];
      [v19 setValue:v21 forKey:*MEMORY[0x1E69A7758]];

      v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "isTrustedSender")}];
      [v19 setValue:v22 forKey:*MEMORY[0x1E69A7760]];

      v23 = [*(a1 + 32) serviceName];
      [v19 setValue:v23 forKey:*MEMORY[0x1E69A7768]];

      v24 = [MEMORY[0x1E69A8168] sharedInstance];
      [v24 trackEvent:*MEMORY[0x1E69A7400] withDictionary:v19];
    }

    else
    {
      v19 = [MEMORY[0x1E69A8168] sharedInstance];
      [v19 trackEvent:*MEMORY[0x1E69A73F8]];
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

- (id)savedPreviewFromURL:(id)l forOrientation:(char)orientation
{
  orientationCopy = orientation;
  lCopy = l;
  v10.receiver = self;
  v10.super_class = CKAnimatedImageMediaObject;
  image = [(CKMediaObject *)&v10 savedPreviewFromURL:lCopy forOrientation:orientationCopy];
  if (!image)
  {
    v8 = [(CKAnimatedImageMediaObject *)self savedAnimatedPreviewFromURL:lCopy forOrientation:orientationCopy];
    image = [v8 image];
  }

  return image;
}

- (id)savedAnimatedPreviewFromURL:(id)l forOrientation:(char)orientation
{
  if (l)
  {
    v7 = 0;
    v5 = [CKAnimatedImage animatedImageFromOptimizedBitmapAtFileURL:l error:&v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)scaledThumbnailFromThumbnail:(id)thumbnail forWidth:(double)width isSticker:(BOOL)sticker
{
  v42 = *MEMORY[0x1E69E9840];
  thumbnailCopy = thumbnail;
  [thumbnailCopy size];
  v9 = v8;
  v11 = v10;
  v12 = +[CKUIBehavior sharedBehaviors];
  [v12 thumbnailFillSizeForWidth:width imageSize:{v9, v11}];
  v14 = v13;
  v16 = v15;

  if ([objc_opt_class() shouldScaleUpPreview] && !sticker && (v9 + 1.0 < v14 || v11 + 1.0 < v16))
  {
    if (v9 == 0.0)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = v14 / v9;
    }

    if (v11 == 0.0)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = v16 / v11;
    }

    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v22 = v21;

    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
    v24 = v22 / fmax(v18, v19);
    [mainScreen2 scale];
    v26 = v25 * 0.5;

    if (v24 < v26)
    {
      v24 = v26;
    }

    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(2);
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v44.width = v9;
        v44.height = v11;
        v28 = NSStringFromCGSize(v44);
        v45.width = v14;
        v45.height = v16;
        v29 = NSStringFromCGSize(v45);
        *buf = 138412802;
        v37 = v28;
        v38 = 2048;
        v39 = v24;
        v40 = 2112;
        v41 = v29;
        _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_DEBUG, "Scale thumbnail of size (%@) by with image scale %f to try to fill target (%@)", buf, 0x20u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      v46.width = v9;
      v46.height = v11;
      v30 = NSStringFromCGSize(v46);
      v47.width = v14;
      v47.height = v16;
      v35 = NSStringFromCGSize(v47);
      _CKLog();
    }

    v31 = objc_alloc(MEMORY[0x1E69DCAB8]);
    v32 = thumbnailCopy;
    v33 = [v31 initWithCGImage:objc_msgSend(thumbnailCopy scale:"CGImage") orientation:{objc_msgSend(thumbnailCopy, "imageOrientation"), v24}];

    thumbnailCopy = v33;
  }

  return thumbnailCopy;
}

- (id)thumbnailAtIndex:(unint64_t)index forWidth:(double)width imageData:(id)data isSticker:(BOOL)sticker orientation:(char)orientation
{
  stickerCopy = sticker;
  if (sticker)
  {
    [data ptSize];
    v13 = v12;
    v15 = v14;
  }

  else
  {
    dataCopy = data;
    v17 = +[CKUIBehavior sharedBehaviors];
    [dataCopy ptSize];
    [v17 thumbnailFillSizeForWidth:width imageSize:{v18, v19}];
    v13 = v20;
    v15 = v21;
  }

  v22 = [data thumbnailAtIndex:index fillToSize:*MEMORY[0x1E69A70C0] maxCount:{v13, v15}];

  v23 = [(CKAnimatedImageMediaObject *)self scaledThumbnailFromThumbnail:v22 forWidth:stickerCopy isSticker:width];

  return v23;
}

+ (double)maxPixelDimensionOfThumbnailWithImagePixelSize:(CGSize)size forWidth:(double)width isSticker:(BOOL)sticker
{
  height = size.height;
  width = size.width;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v11 = v10;

  v12 = width / v11;
  v13 = height / v11;
  v14 = v13;
  v15 = v12;
  if (!sticker)
  {
    v16 = +[CKUIBehavior sharedBehaviors];
    [v16 thumbnailFillSizeForWidth:width imageSize:{v12, v13}];
    v15 = v17;
    v14 = v18;
  }

  v19 = v15 / v12;
  v20 = 0.0;
  if (v12 == 0.0)
  {
    v19 = 0.0;
  }

  if (v13 != 0.0)
  {
    v20 = v14 / v13;
  }

  v21 = fmin(v19, v20);
  return v11 * fmax(floor(v12 * v21), floor(v13 * v21));
}

- (id)generateThumbnailsForWidth:(double)width isSticker:(BOOL)sticker orientation:(char)orientation
{
  v8 = [(CKImageMediaObject *)self imageData:sticker];
  v9 = +[CKUIBehavior sharedBehaviors];
  [v8 ptSize];
  [v9 thumbnailFillSizeForWidth:width imageSize:{v10, v11}];
  v13 = v12;
  v15 = v14;

  v16 = [v8 thumbnailsFillToSize:*MEMORY[0x1E69A70C0] maxCount:{v13, v15}];
  v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v16, "count")}];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __79__CKAnimatedImageMediaObject_generateThumbnailsForWidth_isSticker_orientation___block_invoke;
  v21[3] = &unk_1E72F0CA8;
  v18 = v17;
  v22 = v18;
  selfCopy = self;
  widthCopy = width;
  stickerCopy = sticker;
  [v16 enumerateObjectsUsingBlock:v21];
  v19 = v18;

  return v18;
}

void __79__CKAnimatedImageMediaObject_generateThumbnailsForWidth_isSticker_orientation___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) scaledThumbnailFromThumbnail:a2 forWidth:*(a1 + 56) isSticker:*(a1 + 48)];
  [v2 addObject:v3];
}

- (void)saveAnimatedPreview:(id)preview toURL:(id)l forOrientation:(char)orientation
{
  previewCopy = preview;
  lCopy = l;
  if (lCopy)
  {
    fileManager = [(CKMediaObject *)self fileManager];
    path = [lCopy path];
    v11 = [fileManager fileExistsAtPath:path];

    if ((v11 & 1) == 0)
    {
      v12 = previewCopy;
      v13 = lCopy;
      im_perform_with_task_assertion();
    }
  }
}

void __71__CKAnimatedImageMediaObject_saveAnimatedPreview_toURL_forOrientation___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v14 = 0;
    v4 = [v2 writeAsOptimizedBitmapToFileURL:v3 error:&v14];
    v5 = v14;
    if (v4)
    {
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v8 = *(a1 + 40);
          v7 = *(a1 + 48);
          v15 = 138412546;
          v16 = v7;
          v17 = 2112;
          v18 = v8;
          _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "%@ animated preview saved to %@.", &v15, 0x16u);
        }
      }
    }

    else
    {
      v13 = IMLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __71__CKAnimatedImageMediaObject_saveAnimatedPreview_toURL_forOrientation___block_invoke_cold_1(v5, v13);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 40);
      v10 = *(a1 + 48);
      v12 = *(a1 + 32);
      v15 = 138412802;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "%@ animated preview NOT saved to %@ because %@ isn't a CKAnimatedImage.", &v15, 0x20u);
    }
  }
}

- (BOOL)needsAnimation
{
  transfer = [(CKMediaObject *)self transfer];
  fileIsAnimated = [transfer fileIsAnimated];

  return fileIsAnimated;
}

- (id)bbPreviewFillToSize:(CGSize)size
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(CKMediaObject *)self transcoderPreviewGenerationFailed:size.width])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        transferGUID = [(CKMediaObject *)self transferGUID];
        v12 = 138412290;
        v13 = transferGUID;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Transfer %@ was marked as failed for preview generation, not showing preview in notification", &v12, 0xCu);
      }
    }

    v6 = 0;
  }

  else
  {
    v7 = +[CKAnimatedImage filenameExtension];
    v8 = [(CKMediaObject *)self previewCachesFileURLWithOrientation:0 extension:v7 generateIntermediaries:0];

    v6 = [(CKAnimatedImageMediaObject *)self savedAnimatedPreviewFromURL:v8 forOrientation:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      image = [v6 image];

      v6 = image;
    }

    if (!v6 && IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = v8;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Expected OOP preview for SB at %@, got nil", &v12, 0xCu);
      }
    }
  }

  return v6;
}

- (BOOL)validPreviewExistsAtURL:(id)l
{
  lCopy = l;
  if ([(CKMediaObject *)self cachedValidPreviewExists])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [lCopy path];
    v5 = [defaultManager fileExistsAtPath:path];

    [(CKMediaObject *)self setCachedValidPreviewExists:v5];
  }

  return v5;
}

- (CKAnimatedImageMediaObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CKAnimatedImageMediaObject;
  v5 = [(CKImageMediaObject *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stickerEffectType"];
    -[CKAnimatedImageMediaObject setStickerEffectType:](v5, "setStickerEffectType:", [v6 intValue]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CKAnimatedImageMediaObject;
  coderCopy = coder;
  [(CKImageMediaObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CKAnimatedImageMediaObject stickerEffectType](self, "stickerEffectType", v6.receiver, v6.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"stickerEffectType"];
}

+ (Class)__ck_attachmentItemClass
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 shouldAnimateGifsInPhotoGrid];

  v3 = objc_opt_class();

  return v3;
}

- (BOOL)canUseAsBackground
{
  selfCopy = self;
  if ([(CKAnimatedImageMediaObject *)selfCopy needsAnimation])
  {

    return 0;
  }

  else
  {
    v5.receiver = selfCopy;
    v5.super_class = CKAnimatedImageMediaObject;
    canUseAsBackground = [(CKImageMediaObject *)&v5 canUseAsBackground];

    return canUseAsBackground;
  }
}

void __71__CKAnimatedImageMediaObject_saveAnimatedPreview_toURL_forOrientation___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Animated preview failed save. Error: %@", &v2, 0xCu);
}

@end