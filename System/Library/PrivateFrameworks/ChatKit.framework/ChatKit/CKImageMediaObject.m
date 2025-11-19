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
- (CKImageMediaObject)initWithCoder:(id)a3;
- (CKImageMediaObject)initWithTransfer:(id)a3 context:(id)a4 forceInlinePreview:(BOOL)a5;
- (PHLivePhoto)livePhoto;
- (id)attachmentSummary:(unint64_t)a3;
- (id)bbPreviewFillToSize:(CGSize)a3;
- (id)calculateIrisVideoPath;
- (id)generatePreviewFromThumbnail:(id)a3 width:(double)a4 orientation:(char)a5;
- (id)generateThumbnailFillToSize:(CGSize)a3 contentAlignmentInsets:(UIEdgeInsets)a4;
- (id)generateThumbnailForWidth:(double)a3 orientation:(char)a4;
- (id)metricsCollectorMediaType;
- (id)pasteboardItemProvider;
- (id)previewItemTitle;
- (id)previewItemURL;
- (id)rtfDocumentItemsWithFormatString:(id)a3 selectedTextRange:(_NSRange)a4;
- (void)encodeWithCoder:(id)a3;
- (void)legacyExport;
@end

@implementation CKImageMediaObject

- (CKImageMediaObject)initWithTransfer:(id)a3 context:(id)a4 forceInlinePreview:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v39.receiver = self;
  v39.super_class = CKImageMediaObject;
  v9 = [(CKMediaObject *)&v39 initWithTransfer:v8 context:a4 forceInlinePreview:v5];
  v10 = v9;
  if (v9)
  {
    appendedBundleURL = v9->_appendedBundleURL;
    v9->_appendedBundleURL = 0;

    v10->_isSticker = [v8 isSticker];
    v12 = [v8 isAdaptiveImageGlyph];
    v10->_isAdaptiveImageGlyph = v12;
    if (v10->_isSticker || v12)
    {
      v13 = [MEMORY[0x1E696AC08] defaultManager];
      v14 = [(CKMediaObject *)v10 fileURL];
      v15 = [v14 path];
      v16 = [v13 fileExistsAtPath:v15];

      if ((v16 & 1) == 0)
      {
        v17 = IMLogHandleForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [CKImageMediaObject initWithTransfer:v10 context:v17 forceInlinePreview:?];
        }
      }

      v18 = [(CKMediaObject *)v10 transfer];
      v19 = [v18 stickerUserInfo];

      v35 = objc_alloc(MEMORY[0x1E69A82C0]);
      v20 = [v19 objectForKeyedSubscript:*MEMORY[0x1E69A7C98]];
      v21 = [v19 objectForKeyedSubscript:*MEMORY[0x1E69A7CB0]];
      v38 = [(CKMediaObject *)v10 fileURL];
      v37 = [v19 objectForKeyedSubscript:*MEMORY[0x1E69A8420]];
      v36 = [v19 objectForKeyedSubscript:*MEMORY[0x1E69A8428]];
      v22 = [v19 objectForKeyedSubscript:*MEMORY[0x1E69A8450]];
      v23 = v22;
      if (!v22)
      {
        v23 = [v8 adaptiveImageGlyphContentDescription];
      }

      v24 = [v19 objectForKeyedSubscript:*MEMORY[0x1E69A8448]];
      v25 = [v19 objectForKeyedSubscript:*MEMORY[0x1E69A8438]];
      v26 = [v19 objectForKeyedSubscript:*MEMORY[0x1E69A8440]];
      v27 = [v35 initWithStickerID:v20 stickerPackID:v21 fileURL:v38 accessibilityLabel:v37 accessibilityName:v36 searchText:v23 sanitizedPrompt:v24 moodCategory:v25 stickerName:v26];
      sticker = v10->_sticker;
      v10->_sticker = v27;

      if (!v22)
      {
      }

      v29 = [v19 objectForKeyedSubscript:*MEMORY[0x1E69A7C58]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[IMSticker setInitialFrameIndex:](v10->_sticker, "setInitialFrameIndex:", [v29 unsignedIntegerValue]);
      }

      v30 = [v19 objectForKeyedSubscript:*MEMORY[0x1E69A7C88]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[IMSticker setStickerEffectType:](v10->_sticker, "setStickerEffectType:", [v30 integerValue]);
      }

      v31 = [v8 animatedImageCacheURL];
      [(IMSticker *)v10->_sticker setAnimatedImageCacheURLFromExtension:v31];

      v32 = [v8 adaptiveImageGlyphContentIdentifier];
      [(IMSticker *)v10->_sticker setAdaptiveImageGlyphContentIdentifier:v32];

      v33 = [v8 adaptiveImageGlyphContentDescription];
      [(IMSticker *)v10->_sticker setAdaptiveImageGlyphContentDescription:v33];
    }
  }

  return v10;
}

+ (id)UTITypes
{
  v2 = CGImageSourceCopyTypeIdentifiers();
  v3 = [MEMORY[0x1E695DF70] array];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __30__CKImageMediaObject_UTITypes__block_invoke;
  v9[3] = &unk_1E72EFD50;
  v10 = v3;
  v4 = v3;
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
  v2 = [(CKImageMediaObject *)self isSticker];
  v3 = MEMORY[0x1E69A74C0];
  if (!v2)
  {
    v3 = MEMORY[0x1E69A74B8];
  }

  v4 = *v3;

  return v4;
}

- (id)attachmentSummary:(unint64_t)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = IMSharedUtilitiesFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"%lu Photos" value:&stru_1F04268F8 table:@"IMSharedUtilities"];
  v7 = [v4 localizedStringWithFormat:v6, a3];

  return v7;
}

- (id)bbPreviewFillToSize:(CGSize)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(CKMediaObject *)self transcoderPreviewGenerationFailed:a3.width])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = [(CKMediaObject *)self transferGUID];
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Transfer %@ was marked as failed for preview generation, not showing preview in notification", &v12, 0xCu);
      }
    }

    v6 = 0;
  }

  else
  {
    v7 = [(CKMediaObject *)self fileURL];
    v8 = [(CKMediaObject *)self previewFilenameExtension];
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
  v2 = [(CKImageMediaObject *)self imageData];
  [v2 ptSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)generateThumbnailForWidth:(double)a3 orientation:(char)a4
{
  v4 = a4;
  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = [(CKImageMediaObject *)self imageData];
  [v8 ptSize];
  [v7 thumbnailFillSizeForWidth:a3 imageSize:{v9, v10}];
  v12 = v11;
  v14 = v13;

  v15 = +[CKUIBehavior sharedBehaviors];
  [v15 thumbnailContentAlignmentInsetsForOrientation:v4];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  return [(CKImageMediaObject *)self generateThumbnailFillToSize:v12 contentAlignmentInsets:v14, v17, v19, v21, v23];
}

- (id)generateThumbnailFillToSize:(CGSize)a3 contentAlignmentInsets:(UIEdgeInsets)a4
{
  height = a3.height;
  width = a3.width;
  v7 = [(CKImageMediaObject *)self thumbnail:a3.width];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [(CKImageMediaObject *)self imageData];
    v9 = [v10 thumbnailFillToSize:{width, height}];
  }

  [v9 size];
  v12 = v11;
  v14 = v13;
  if (![objc_opt_class() shouldScaleUpPreview])
  {
    goto LABEL_15;
  }

  v15 = [(CKMediaObject *)self transfer];
  if ([v15 isSticker])
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

- (id)generatePreviewFromThumbnail:(id)a3 width:(double)a4 orientation:(char)a5
{
  v5 = a5;
  v8 = a3;
  if ([MEMORY[0x1E69A80C0] isCroppingAvoidanceEnabled])
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    [(CKMediaObject *)self _previewConstraintsForWidth:a4];
    v9 = +[CKUIBehavior sharedBehaviors];
    v10 = [(CKImageMediaObject *)self isSticker];
    [v8 size];
    if (v10)
    {
      [v9 unconstrainedAspectFillSizeForWidth:a4 imageSize:{v11, v12}];
    }

    else
    {
      [v9 thumbnailFillSizeForWidth:a4 imageSize:{v11, v12}];
    }

    v16 = v13;
    v17 = v14;
    [v8 scale];
    v19 = v16 * v18;
    [v8 scale];
    v21 = [MEMORY[0x1E69A80C0] newUncroppedPreviewImageFromImage:objc_msgSend(v8 isScreenshot:"CGImage") maximumSizeInPx:-[CKImageMediaObject isScreenshot](self minimumSizeInPx:{"isScreenshot"), v19, v17 * v20, *(&v28 + 1), *&v29}];
    if (v21)
    {
      v22 = v21;
      v23 = MEMORY[0x1E69DCAB8];
      [v8 scale];
      v15 = [v23 imageWithCGImage:v22 scale:objc_msgSend(v8 orientation:{"imageOrientation"), v24}];
      CGImageRelease(v22);
    }

    else
    {
      v27.receiver = self;
      v27.super_class = CKImageMediaObject;
      v15 = [(CKMediaObject *)&v27 generatePreviewFromThumbnail:v8 width:v5 orientation:a4];
    }
  }

  else
  {
    v26.receiver = self;
    v26.super_class = CKImageMediaObject;
    v15 = [(CKMediaObject *)&v26 generatePreviewFromThumbnail:v8 width:v5 orientation:a4];
  }

  return v15;
}

- (BOOL)canExport
{
  v3 = [(CKMediaObject *)self transfer];
  v4 = [v3 isSticker];

  if (v4)
  {
    return 0;
  }

  v6 = [(CKMediaObject *)self transfer];
  v7 = [v6 isFileDataReady];

  return v7;
}

- (BOOL)isIrisAsset
{
  v2 = [(CKMediaObject *)self transfer];
  v3 = [v2 isIrisAsset];

  return v3;
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
    v3 = [(CKMediaObject *)self fileURL];
    v4 = [v3 path];

    v5 = [(CKImageMediaObject *)self calculateIrisVideoPath];
    v6 = objc_alloc(MEMORY[0x1E69C0918]);
    v7 = MEMORY[0x193AF5ED0]("kCMTimeInvalid", @"CoreMedia");
    v8 = *v7;
    *&buf[16] = *(v7 + 16);
    *buf = v8;
    v9 = [v6 initWithPathToVideo:v5 pathToImage:v4 imageDisplayTime:buf pairingIdentifier:0];
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

      v12 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v13 = [v12 isRedesignedDetailsViewEnabled];

      if (v13)
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
        *&buf[4] = v4;
        *&buf[12] = 2112;
        *&buf[14] = v5;
        *&buf[22] = 2112;
        v34 = 0;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "CKMediaObject Could not create video complement object using imagePath %@ and videoPath %@ vc %@", buf, 0x20u);
      }
    }
  }

  if ((v28[3] & 1) == 0)
  {
    v17 = objc_alloc(MEMORY[0x1E695DEF0]);
    v18 = [(CKMediaObject *)self fileURL];
    v19 = [v17 initWithContentsOfURL:v18];

    if (v19)
    {
      UIImageDataWriteToSavedPhotosAlbum();
    }
  }

  v20 = [MEMORY[0x1E69A8168] sharedInstance];
  v31 = *MEMORY[0x1E69A7630];
  v32 = *MEMORY[0x1E69A7638];
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  [v20 trackEvent:*MEMORY[0x1E69A7600] withDictionary:v21];

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
  v2 = [(CKMediaObject *)self transfer];
  v3 = [v2 irisVideoPath];

  return v3;
}

- (id)pasteboardItemProvider
{
  v12.receiver = self;
  v12.super_class = CKImageMediaObject;
  v3 = [(CKMediaObject *)&v12 pasteboardItemProvider];
  if ([(CKImageMediaObject *)self isIrisAsset])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __44__CKImageMediaObject_pasteboardItemProvider__block_invoke;
    v11[3] = &unk_1E72EC878;
    v11[4] = self;
    [v3 registerDataRepresentationForTypeIdentifier:@"com.apple.MobileSMS.appendedURL" visibility:0 loadHandler:v11];
  }

  v4 = [v3 registeredContentTypes];
  v5 = [v4 containsObject:*MEMORY[0x1E6982E00]];

  if (v5)
  {
    v6 = [*MEMORY[0x1E6982F28] identifier];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__CKImageMediaObject_pasteboardItemProvider__block_invoke_2;
    v10[3] = &unk_1E72EC878;
    v10[4] = self;
    [v3 registerDataRepresentationForTypeIdentifier:v6 visibility:0 loadHandler:v10];

    v7 = [*MEMORY[0x1E6982E58] identifier];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__CKImageMediaObject_pasteboardItemProvider__block_invoke_3;
    v9[3] = &unk_1E72EC878;
    v9[4] = self;
    [v3 registerDataRepresentationForTypeIdentifier:v7 visibility:0 loadHandler:v9];
  }

  return v3;
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

- (id)rtfDocumentItemsWithFormatString:(id)a3 selectedTextRange:(_NSRange)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = CKImageMediaObject;
  v5 = [(CKMediaObject *)&v13 rtfDocumentItemsWithFormatString:a3 selectedTextRange:a4.location, a4.length];
  if ([(CKImageMediaObject *)self isIrisAsset])
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v6 mutableCopy];

    v8 = MEMORY[0x1E695DFF8];
    v9 = [(CKImageMediaObject *)self calculateIrisVideoPath];
    v10 = [v8 URLWithString:v9];

    [v7 addAttribute:@"com.apple.MobileSMS.appendedURL" value:v10 range:{0, objc_msgSend(v7, "length")}];
    v14[0] = v7;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];

    v5 = v11;
  }

  return v5;
}

- (BOOL)canShareItem
{
  v3 = [(CKMediaObject *)self transfer];
  v4 = ![CKCommSafetyHelper shouldDisableTranscriptCapabilitiesForCKFileTransfer:v3]&& !self->_isSticker;

  return v4;
}

- (id)previewItemURL
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(CKMediaObject *)self fileURL];
  v4 = [CKLivePhotoBundleUtilities getLivePhotoBundleURL:v3];

  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [(CKMediaObject *)self fileURL];
        *buf = 138412546;
        v12 = v4;
        v13 = 2112;
        v14 = v6;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Passing back iris url %@ to QL for fileURL  %@", buf, 0x16u);
      }
    }

    v7 = v4;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CKImageMediaObject;
    v7 = [(CKMediaObject *)&v10 previewItemURL];
  }

  v8 = v7;

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
    v7 = [(CKMediaObject *)self data];
    v8 = [v6 initWithData:v7];
    v9 = *v4;
    *v4 = v8;

    v5 = *v4;
  }

  return v5;
}

- (BOOL)isScreenshot
{
  v2 = [(CKMediaObject *)self transfer];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isScreenshot];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGSize)originalSize
{
  p_originalSize = &self->_originalSize;
  width = self->_originalSize.width;
  height = self->_originalSize.height;
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    v6 = [(CKMediaObject *)self fileURL];
    p_originalSize->width = CKSizeOfImageAtURL(v6);
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

  v5 = [(CKImageMediaObject *)self previewItemURL];
  v6 = [objc_alloc(MEMORY[0x1E69C0918]) initWithBundleAtURL:v5];
  v7 = [v6 imagePath];
  if (!v7 || ([v6 videoPath], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v24 = v5;
        _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Couldn't generate a PFVideoComplement from the given url: %@", buf, 0xCu);
      }
    }

    v18 = 0;
    v17 = 0;
    goto LABEL_15;
  }

  v9 = MEMORY[0x1E695DFF8];
  v10 = [v6 imagePath];
  v11 = [v9 fileURLWithPath:v10];

  v12 = MEMORY[0x1E695DFF8];
  v13 = [v6 videoPath];
  v14 = [v12 fileURLWithPath:v13];

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

- (CKImageMediaObject)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = CKImageMediaObject;
  return [(CKMediaObject *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = CKImageMediaObject;
  [(CKMediaObject *)&v3 encodeWithCoder:a3];
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
  v10 = self;
  v11 = [(CKMediaObject *)v10 fileURL];
  if (v11)
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

  return v11 != 0;
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