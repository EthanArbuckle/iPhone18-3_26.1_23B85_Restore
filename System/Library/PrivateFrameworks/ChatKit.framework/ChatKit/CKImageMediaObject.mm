@interface CKImageMediaObject
+ (id)UTITypes;
- (BOOL)canExport;
- (BOOL)canShareItem;
- (BOOL)canUseAsBackground;
- (BOOL)isIrisAsset;
- (BOOL)isScreenshot;
- (CGSize)bbSize;
- (CGSize)originalSize;
- (CKImageData)imageData;
- (CKImageMediaObject)initWithCoder:(id)coder;
- (CKImageMediaObject)initWithTransfer:(id)transfer context:(id)context forceInlinePreview:(BOOL)preview;
- (PHLivePhoto)livePhoto;
- (id)attachmentSummary:(unint64_t)summary;
- (id)bbPreviewFillToSize:(CGSize)size;
- (id)calculateIrisVideoPath;
- (id)generatePreviewFromThumbnail:(id)thumbnail width:(double)width orientation:(char)orientation;
- (id)generateThumbnailFillToSize:(CGSize)size contentAlignmentInsets:(UIEdgeInsets)insets;
- (id)generateThumbnailForWidth:(double)width orientation:(char)orientation;
- (id)metricsCollectorMediaType;
- (id)pasteboardItemProvider;
- (id)previewItemTitle;
- (id)previewItemURL;
- (id)rtfDocumentItemsWithFormatString:(id)string selectedTextRange:(_NSRange)range;
- (void)encodeWithCoder:(id)coder;
- (void)legacyExport;
@end

@implementation CKImageMediaObject

- (CKImageMediaObject)initWithTransfer:(id)transfer context:(id)context forceInlinePreview:(BOOL)preview
{
  previewCopy = preview;
  transferCopy = transfer;
  v39.receiver = self;
  v39.super_class = CKImageMediaObject;
  v9 = [(CKMediaObject *)&v39 initWithTransfer:transferCopy context:context forceInlinePreview:previewCopy];
  v10 = v9;
  if (v9)
  {
    appendedBundleURL = v9->_appendedBundleURL;
    v9->_appendedBundleURL = 0;

    v10->_isSticker = [transferCopy isSticker];
    isAdaptiveImageGlyph = [transferCopy isAdaptiveImageGlyph];
    v10->_isAdaptiveImageGlyph = isAdaptiveImageGlyph;
    if (v10->_isSticker || isAdaptiveImageGlyph)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      fileURL = [(CKMediaObject *)v10 fileURL];
      path = [fileURL path];
      v16 = [defaultManager fileExistsAtPath:path];

      if ((v16 & 1) == 0)
      {
        v17 = IMLogHandleForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [CKImageMediaObject initWithTransfer:v10 context:v17 forceInlinePreview:?];
        }
      }

      transfer = [(CKMediaObject *)v10 transfer];
      stickerUserInfo = [transfer stickerUserInfo];

      v35 = objc_alloc(MEMORY[0x1E69A82C0]);
      v20 = [stickerUserInfo objectForKeyedSubscript:*MEMORY[0x1E69A7C98]];
      v21 = [stickerUserInfo objectForKeyedSubscript:*MEMORY[0x1E69A7CB0]];
      fileURL2 = [(CKMediaObject *)v10 fileURL];
      v37 = [stickerUserInfo objectForKeyedSubscript:*MEMORY[0x1E69A8420]];
      v36 = [stickerUserInfo objectForKeyedSubscript:*MEMORY[0x1E69A8428]];
      v22 = [stickerUserInfo objectForKeyedSubscript:*MEMORY[0x1E69A8450]];
      adaptiveImageGlyphContentDescription = v22;
      if (!v22)
      {
        adaptiveImageGlyphContentDescription = [transferCopy adaptiveImageGlyphContentDescription];
      }

      v24 = [stickerUserInfo objectForKeyedSubscript:*MEMORY[0x1E69A8448]];
      v25 = [stickerUserInfo objectForKeyedSubscript:*MEMORY[0x1E69A8438]];
      v26 = [stickerUserInfo objectForKeyedSubscript:*MEMORY[0x1E69A8440]];
      v27 = [v35 initWithStickerID:v20 stickerPackID:v21 fileURL:fileURL2 accessibilityLabel:v37 accessibilityName:v36 searchText:adaptiveImageGlyphContentDescription sanitizedPrompt:v24 moodCategory:v25 stickerName:v26];
      sticker = v10->_sticker;
      v10->_sticker = v27;

      if (!v22)
      {
      }

      v29 = [stickerUserInfo objectForKeyedSubscript:*MEMORY[0x1E69A7C58]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[IMSticker setInitialFrameIndex:](v10->_sticker, "setInitialFrameIndex:", [v29 unsignedIntegerValue]);
      }

      v30 = [stickerUserInfo objectForKeyedSubscript:*MEMORY[0x1E69A7C88]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[IMSticker setStickerEffectType:](v10->_sticker, "setStickerEffectType:", [v30 integerValue]);
      }

      animatedImageCacheURL = [transferCopy animatedImageCacheURL];
      [(IMSticker *)v10->_sticker setAnimatedImageCacheURLFromExtension:animatedImageCacheURL];

      adaptiveImageGlyphContentIdentifier = [transferCopy adaptiveImageGlyphContentIdentifier];
      [(IMSticker *)v10->_sticker setAdaptiveImageGlyphContentIdentifier:adaptiveImageGlyphContentIdentifier];

      adaptiveImageGlyphContentDescription2 = [transferCopy adaptiveImageGlyphContentDescription];
      [(IMSticker *)v10->_sticker setAdaptiveImageGlyphContentDescription:adaptiveImageGlyphContentDescription2];
    }
  }

  return v10;
}

+ (id)UTITypes
{
  v2 = CGImageSourceCopyTypeIdentifiers();
  array = [MEMORY[0x1E695DF70] array];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __30__CKImageMediaObject_UTITypes__block_invoke;
  v9[3] = &unk_1E72EFD50;
  v10 = array;
  v4 = array;
  v5 = [(__CFArray *)v2 indexesOfObjectsPassingTest:v9];
  v6 = [(__CFArray *)v2 objectsAtIndexes:v5];
  v7 = [v4 arrayByAddingObjectsFromArray:v6];

  return v7;
}

uint64_t __30__CKImageMediaObject_UTITypes__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 isEqualToString:@"public.avci"];
  if (v3)
  {
    [*(a1 + 32) addObject:@"public.avci"];
  }

  return v3 ^ 1u;
}

- (id)metricsCollectorMediaType
{
  isSticker = [(CKImageMediaObject *)self isSticker];
  v3 = MEMORY[0x1E69A74C0];
  if (!isSticker)
  {
    v3 = MEMORY[0x1E69A74B8];
  }

  v4 = *v3;

  return v4;
}

- (id)attachmentSummary:(unint64_t)summary
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = IMSharedUtilitiesFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"%lu Photos" value:&stru_1F04268F8 table:@"IMSharedUtilities"];
  summary = [v4 localizedStringWithFormat:v6, summary];

  return summary;
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
    fileURL = [(CKMediaObject *)self fileURL];
    previewFilenameExtension = [(CKMediaObject *)self previewFilenameExtension];
    v9 = IMAttachmentPreviewFileURL();

    v6 = [(CKMediaObject *)self savedPreviewFromURL:v9 forOrientation:0];
    if (!v6 && IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Expected OOP preview for SB at %@, got nil", &v12, 0xCu);
      }
    }
  }

  return v6;
}

- (CGSize)bbSize
{
  imageData = [(CKImageMediaObject *)self imageData];
  [imageData ptSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)generateThumbnailForWidth:(double)width orientation:(char)orientation
{
  orientationCopy = orientation;
  v7 = +[CKUIBehavior sharedBehaviors];
  imageData = [(CKImageMediaObject *)self imageData];
  [imageData ptSize];
  [v7 thumbnailFillSizeForWidth:width imageSize:{v9, v10}];
  v12 = v11;
  v14 = v13;

  v15 = +[CKUIBehavior sharedBehaviors];
  [v15 thumbnailContentAlignmentInsetsForOrientation:orientationCopy];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  return [(CKImageMediaObject *)self generateThumbnailFillToSize:v12 contentAlignmentInsets:v14, v17, v19, v21, v23];
}

- (id)generateThumbnailFillToSize:(CGSize)size contentAlignmentInsets:(UIEdgeInsets)insets
{
  height = size.height;
  width = size.width;
  v7 = [(CKImageMediaObject *)self thumbnail:size.width];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    imageData = [(CKImageMediaObject *)self imageData];
    v9 = [imageData thumbnailFillToSize:{width, height}];
  }

  [v9 size];
  v12 = v11;
  v14 = v13;
  if (![objc_opt_class() shouldScaleUpPreview])
  {
    goto LABEL_15;
  }

  transfer = [(CKMediaObject *)self transfer];
  if ([transfer isSticker])
  {

LABEL_15:
    v27 = v9;
    v9 = v27;
    goto LABEL_16;
  }

  v16 = v14 + 1.0;

  if (v12 + 1.0 >= width && v16 >= height)
  {
    goto LABEL_15;
  }

  if ([MEMORY[0x1E69A80C0] isCroppingAvoidanceEnabled])
  {
    [v9 scale];
    v19 = width * v18;
    [v9 scale];
    v21 = height * v20;
    [(CKMediaObject *)self _previewConstraintsForWidth:width, 0];
    v22 = [MEMORY[0x1E69A80C0] newUncroppedPreviewImageFromImage:objc_msgSend(v9 isScreenshot:"CGImage") maximumSizeInPx:-[CKImageMediaObject isScreenshot](self minimumSizeInPx:{"isScreenshot"), v19, v21, 0.0, 0.0}];
    if (v22)
    {
      v23 = v22;
      v24 = MEMORY[0x1E69DCAB8];
      [v9 scale];
      v26 = [v24 imageWithCGImage:v23 scale:objc_msgSend(v9 orientation:{"imageOrientation"), v25}];

      CGImageRelease(v23);
      v9 = v26;
    }

    goto LABEL_15;
  }

  v27 = [v9 __ck_imageScaledToFillSize:{width, height}];
LABEL_16:
  v28 = v27;

  return v28;
}

- (id)generatePreviewFromThumbnail:(id)thumbnail width:(double)width orientation:(char)orientation
{
  orientationCopy = orientation;
  thumbnailCopy = thumbnail;
  if ([MEMORY[0x1E69A80C0] isCroppingAvoidanceEnabled])
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    [(CKMediaObject *)self _previewConstraintsForWidth:width];
    v9 = +[CKUIBehavior sharedBehaviors];
    isSticker = [(CKImageMediaObject *)self isSticker];
    [thumbnailCopy size];
    if (isSticker)
    {
      [v9 unconstrainedAspectFillSizeForWidth:width imageSize:{v11, v12}];
    }

    else
    {
      [v9 thumbnailFillSizeForWidth:width imageSize:{v11, v12}];
    }

    v16 = v13;
    v17 = v14;
    [thumbnailCopy scale];
    v19 = v16 * v18;
    [thumbnailCopy scale];
    v21 = [MEMORY[0x1E69A80C0] newUncroppedPreviewImageFromImage:objc_msgSend(thumbnailCopy isScreenshot:"CGImage") maximumSizeInPx:-[CKImageMediaObject isScreenshot](self minimumSizeInPx:{"isScreenshot"), v19, v17 * v20, *(&v28 + 1), *&v29}];
    if (v21)
    {
      v22 = v21;
      v23 = MEMORY[0x1E69DCAB8];
      [thumbnailCopy scale];
      v15 = [v23 imageWithCGImage:v22 scale:objc_msgSend(thumbnailCopy orientation:{"imageOrientation"), v24}];
      CGImageRelease(v22);
    }

    else
    {
      v27.receiver = self;
      v27.super_class = CKImageMediaObject;
      v15 = [(CKMediaObject *)&v27 generatePreviewFromThumbnail:thumbnailCopy width:orientationCopy orientation:width];
    }
  }

  else
  {
    v26.receiver = self;
    v26.super_class = CKImageMediaObject;
    v15 = [(CKMediaObject *)&v26 generatePreviewFromThumbnail:thumbnailCopy width:orientationCopy orientation:width];
  }

  return v15;
}

- (BOOL)canExport
{
  transfer = [(CKMediaObject *)self transfer];
  isSticker = [transfer isSticker];

  if (isSticker)
  {
    return 0;
  }

  transfer2 = [(CKMediaObject *)self transfer];
  isFileDataReady = [transfer2 isFileDataReady];

  return isFileDataReady;
}

- (BOOL)isIrisAsset
{
  transfer = [(CKMediaObject *)self transfer];
  isIrisAsset = [transfer isIrisAsset];

  return isIrisAsset;
}

- (void)legacyExport
{
  v35 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  if ([(CKImageMediaObject *)self isIrisAsset])
  {
    fileURL = [(CKMediaObject *)self fileURL];
    path = [fileURL path];

    calculateIrisVideoPath = [(CKImageMediaObject *)self calculateIrisVideoPath];
    v6 = objc_alloc(MEMORY[0x1E69C0918]);
    v7 = MEMORY[0x193AF5ED0]("kCMTimeInvalid", @"CoreMedia");
    v8 = *v7;
    *&buf[16] = *(v7 + 16);
    *buf = v8;
    v9 = [v6 initWithPathToVideo:calculateIrisVideoPath pathToImage:path imageDisplayTime:buf pairingIdentifier:0];
    v10 = dispatch_semaphore_create(0);
    if (v9)
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v9;
          _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Trying to save iris asset using video complement %@ ", buf, 0xCu);
        }
      }

      mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isRedesignedDetailsViewEnabled = [mEMORY[0x1E69A8070] isRedesignedDetailsViewEnabled];

      if (isRedesignedDetailsViewEnabled)
      {
        [MEMORY[0x1E69789A8] openPhotoLibraryWithWellKnownIdentifier:1 error:0];
      }

      else
      {
        [MEMORY[0x1E69789A8] sharedPhotoLibrary];
      }
      v15 = ;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __34__CKImageMediaObject_legacyExport__block_invoke;
      v25[3] = &unk_1E72EBA18;
      v26 = v9;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __34__CKImageMediaObject_legacyExport__block_invoke_2;
      v22[3] = &unk_1E72EFD78;
      v24 = &v27;
      v16 = v10;
      v23 = v16;
      [v15 performChanges:v25 completionHandler:v22];
      dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
    }

    else if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        *&buf[4] = path;
        *&buf[12] = 2112;
        *&buf[14] = calculateIrisVideoPath;
        *&buf[22] = 2112;
        v34 = 0;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "CKMediaObject Could not create video complement object using imagePath %@ and videoPath %@ vc %@", buf, 0x20u);
      }
    }
  }

  if ((v28[3] & 1) == 0)
  {
    v17 = objc_alloc(MEMORY[0x1E695DEF0]);
    fileURL2 = [(CKMediaObject *)self fileURL];
    v19 = [v17 initWithContentsOfURL:fileURL2];

    if (v19)
    {
      UIImageDataWriteToSavedPhotosAlbum();
    }
  }

  mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
  v31 = *MEMORY[0x1E69A7630];
  v32 = *MEMORY[0x1E69A7638];
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  [mEMORY[0x1E69A8168] trackEvent:*MEMORY[0x1E69A7600] withDictionary:v21];

  _Block_object_dispose(&v27, 8);
}

void __34__CKImageMediaObject_legacyExport__block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "got result back", &v9, 2u);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (a2)
      {
        v8 = @"YES";
      }

      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Saved iris asset %@ with error %@", &v9, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)calculateIrisVideoPath
{
  transfer = [(CKMediaObject *)self transfer];
  irisVideoPath = [transfer irisVideoPath];

  return irisVideoPath;
}

- (id)pasteboardItemProvider
{
  v12.receiver = self;
  v12.super_class = CKImageMediaObject;
  pasteboardItemProvider = [(CKMediaObject *)&v12 pasteboardItemProvider];
  if ([(CKImageMediaObject *)self isIrisAsset])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __44__CKImageMediaObject_pasteboardItemProvider__block_invoke;
    v11[3] = &unk_1E72EC878;
    v11[4] = self;
    [pasteboardItemProvider registerDataRepresentationForTypeIdentifier:@"com.apple.MobileSMS.appendedURL" visibility:0 loadHandler:v11];
  }

  registeredContentTypes = [pasteboardItemProvider registeredContentTypes];
  v5 = [registeredContentTypes containsObject:*MEMORY[0x1E6982E00]];

  if (v5)
  {
    identifier = [*MEMORY[0x1E6982F28] identifier];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__CKImageMediaObject_pasteboardItemProvider__block_invoke_2;
    v10[3] = &unk_1E72EC878;
    v10[4] = self;
    [pasteboardItemProvider registerDataRepresentationForTypeIdentifier:identifier visibility:0 loadHandler:v10];

    identifier2 = [*MEMORY[0x1E6982E58] identifier];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__CKImageMediaObject_pasteboardItemProvider__block_invoke_3;
    v9[3] = &unk_1E72EC878;
    v9[4] = self;
    [pasteboardItemProvider registerDataRepresentationForTypeIdentifier:identifier2 visibility:0 loadHandler:v9];
  }

  return pasteboardItemProvider;
}

uint64_t __44__CKImageMediaObject_pasteboardItemProvider__block_invoke(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 calculateIrisVideoPath];
  v6 = [v5 dataUsingEncoding:4];
  (a2)[2](v4, v6, 0);

  return 0;
}

uint64_t __44__CKImageMediaObject_pasteboardItemProvider__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E69DCAB8]);
  v5 = [*(a1 + 32) fileURL];
  v6 = [v5 path];
  v7 = [v4 initWithContentsOfFile:v6];

  if (v7 && (UIImagePNGRepresentation(v7), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v3[2](v3, v8, 0);
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v9 = [v10 initWithDomain:*MEMORY[0x1E696A4D0] code:-1000 userInfo:0];
    (v3)[2](v3, 0, v9);
  }

  return 0;
}

uint64_t __44__CKImageMediaObject_pasteboardItemProvider__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E69DCAB8]);
  v5 = [*(a1 + 32) fileURL];
  v6 = [v5 path];
  v7 = [v4 initWithContentsOfFile:v6];

  if (v7 && (UIImageJPEGRepresentation(v7, 1.0), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v3[2](v3, v8, 0);
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v9 = [v10 initWithDomain:*MEMORY[0x1E696A4D0] code:-1000 userInfo:0];
    (v3)[2](v3, 0, v9);
  }

  return 0;
}

- (id)rtfDocumentItemsWithFormatString:(id)string selectedTextRange:(_NSRange)range
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = CKImageMediaObject;
  v5 = [(CKMediaObject *)&v13 rtfDocumentItemsWithFormatString:string selectedTextRange:range.location, range.length];
  if ([(CKImageMediaObject *)self isIrisAsset])
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v6 mutableCopy];

    v8 = MEMORY[0x1E695DFF8];
    calculateIrisVideoPath = [(CKImageMediaObject *)self calculateIrisVideoPath];
    v10 = [v8 URLWithString:calculateIrisVideoPath];

    [v7 addAttribute:@"com.apple.MobileSMS.appendedURL" value:v10 range:{0, objc_msgSend(v7, "length")}];
    v14[0] = v7;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];

    v5 = v11;
  }

  return v5;
}

- (BOOL)canShareItem
{
  transfer = [(CKMediaObject *)self transfer];
  v4 = ![CKCommSafetyHelper shouldDisableTranscriptCapabilitiesForCKFileTransfer:transfer]&& !self->_isSticker;

  return v4;
}

- (id)previewItemURL
{
  v15 = *MEMORY[0x1E69E9840];
  fileURL = [(CKMediaObject *)self fileURL];
  v4 = [CKLivePhotoBundleUtilities getLivePhotoBundleURL:fileURL];

  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        fileURL2 = [(CKMediaObject *)self fileURL];
        *buf = 138412546;
        v12 = v4;
        v13 = 2112;
        v14 = fileURL2;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Passing back iris url %@ to QL for fileURL  %@", buf, 0x16u);
      }
    }

    previewItemURL = v4;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CKImageMediaObject;
    previewItemURL = [(CKMediaObject *)&v10 previewItemURL];
  }

  v8 = previewItemURL;

  return v8;
}

- (id)previewItemTitle
{
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"PREVIEW_TITLE_PHOTO" value:&stru_1F04268F8 table:@"ChatKit"];

  return v3;
}

- (CKImageData)imageData
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v3 = 160;
  }

  else
  {
    v3 = 168;
  }

  v4 = (&self->super.super.isa + v3);
  v5 = *(&self->super.super.isa + v3);
  if (!v5)
  {
    v6 = objc_alloc([objc_opt_class() imageDataClass]);
    data = [(CKMediaObject *)self data];
    v8 = [v6 initWithData:data];
    v9 = *v4;
    *v4 = v8;

    v5 = *v4;
  }

  return v5;
}

- (BOOL)isScreenshot
{
  transfer = [(CKMediaObject *)self transfer];
  v3 = transfer;
  if (transfer)
  {
    isScreenshot = [transfer isScreenshot];
  }

  else
  {
    isScreenshot = 0;
  }

  return isScreenshot;
}

- (CGSize)originalSize
{
  p_originalSize = &self->_originalSize;
  width = self->_originalSize.width;
  height = self->_originalSize.height;
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    fileURL = [(CKMediaObject *)self fileURL];
    p_originalSize->width = CKSizeOfImageAtURL(fileURL);
    p_originalSize->height = v7;

    width = p_originalSize->width;
    height = p_originalSize->height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (PHLivePhoto)livePhoto
{
  v25[2] = *MEMORY[0x1E69E9840];
  livePhoto = self->_livePhoto;
  if (livePhoto)
  {
    v3 = livePhoto;
    goto LABEL_17;
  }

  if (![(CKImageMediaObject *)self isIrisAsset])
  {
    v3 = 0;
    goto LABEL_17;
  }

  previewItemURL = [(CKImageMediaObject *)self previewItemURL];
  v6 = [objc_alloc(MEMORY[0x1E69C0918]) initWithBundleAtURL:previewItemURL];
  imagePath = [v6 imagePath];
  if (!imagePath || ([v6 videoPath], v8 = objc_claimAutoreleasedReturnValue(), v8, imagePath, !v8))
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v24 = previewItemURL;
        _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Couldn't generate a PFVideoComplement from the given url: %@", buf, 0xCu);
      }
    }

    v18 = 0;
    v17 = 0;
    goto LABEL_15;
  }

  v9 = MEMORY[0x1E695DFF8];
  imagePath2 = [v6 imagePath];
  v11 = [v9 fileURLWithPath:imagePath2];

  v12 = MEMORY[0x1E695DFF8];
  videoPath = [v6 videoPath];
  v14 = [v12 fileURLWithPath:videoPath];

  v15 = MEMORY[0x1E69788C8];
  v25[0] = v11;
  v25[1] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v22 = 0;
  v17 = [v15 livePhotoWithResourceFileURLs:v16 error:&v22];
  v18 = v22;

  if (v18 || !v17)
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v24 = v18;
        _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "Couldn't generate a PHLivePhoto, error: %@", buf, 0xCu);
      }
    }

LABEL_15:
    v3 = 0;
    goto LABEL_16;
  }

  objc_storeStrong(&self->_livePhoto, v17);
  v3 = self->_livePhoto;
  v18 = 0;
LABEL_16:

LABEL_17:

  return v3;
}

- (CKImageMediaObject)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = CKImageMediaObject;
  return [(CKMediaObject *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = CKImageMediaObject;
  [(CKMediaObject *)&v3 encodeWithCoder:coder];
}

- (BOOL)canUseAsBackground
{
  v3 = sub_190D515F0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  selfCopy = self;
  fileURL = [(CKMediaObject *)selfCopy fileURL];
  if (fileURL)
  {
    sub_190D515B0();

    (*(v4 + 32))(v9, v6, v3);
    (*(v4 + 56))(v9, 0, 1, v3);
  }

  else
  {
    (*(v4 + 56))(v9, 1, 1, v3);
  }

  sub_19084CF50(v9);

  return fileURL != 0;
}

- (void)initWithTransfer:(void *)a1 context:(NSObject *)a2 forceInlinePreview:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 fileURL];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Sticker does not exist at path: %@", &v4, 0xCu);
}

@end