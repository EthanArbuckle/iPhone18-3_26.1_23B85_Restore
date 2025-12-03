@interface CKMovieMediaObject
+ (CGImage)playButtonPreviewForCGImage:(CGImage *)image scale:(double)scale isFromMe:(BOOL)me;
+ (id)UTITypes;
+ (id)playButtonPreviewForUIImage:(id)image scale:(double)scale contentAlignmentInsets:(UIEdgeInsets)insets;
- (AVURLAsset)asset;
- (BOOL)_assetContainsMetadataKey:(id)key;
- (BOOL)allowAutoplay;
- (BOOL)canExport;
- (BOOL)hasNoVideoTrack;
- (BOOL)isAutoloopVideo;
- (BOOL)isJellyfishVideo;
- (CGSize)bbSize;
- (CGSize)pxSize;
- (Class)balloonViewClass;
- (Class)previewBalloonViewClass;
- (Class)replyContextBalloonViewClass;
- (id)attachmentSummary:(unint64_t)summary;
- (id)bbPreviewFillToSize:(CGSize)size;
- (id)generateThumbnailFillToSize:(CGSize)size contentAlignmentInsets:(UIEdgeInsets)insets;
- (id)generateThumbnailForWidth:(double)width orientation:(char)orientation;
- (id)metricsCollectorMediaType;
- (id)previewForWidth:(double)width orientation:(char)orientation;
- (id)previewItemTitle;
- (void)prewarmPreviewForWidth:(double)width orientation:(char)orientation;
- (void)updateVideoInfo;
@end

@implementation CKMovieMediaObject

+ (id)UTITypes
{
  if (UTITypes_onceToken != -1)
  {
    +[CKMovieMediaObject UTITypes];
  }

  v3 = UTITypes_types;

  return v3;
}

void __30__CKMovieMediaObject_UTITypes__block_invoke()
{
  v3 = [MEMORY[0x1E6988168] audiovisualTypes];
  v0 = [v3 indexesOfObjectsPassingTest:&__block_literal_global_190];
  v1 = [v3 objectsAtIndexes:v0];
  v2 = UTITypes_types;
  UTITypes_types = v1;
}

uint64_t __30__CKMovieMediaObject_UTITypes__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E6982C40] typeWithIdentifier:a2];
  v3 = [v2 conformsToType:*MEMORY[0x1E6982EE8]];

  return v3;
}

- (id)metricsCollectorMediaType
{
  isAutoloopVideo = [(CKMovieMediaObject *)self isAutoloopVideo];
  v3 = MEMORY[0x1E69A7498];
  if (!isAutoloopVideo)
  {
    v3 = MEMORY[0x1E69A74C8];
  }

  v4 = *v3;

  return v4;
}

- (id)attachmentSummary:(unint64_t)summary
{
  if ([(CKMovieMediaObject *)self isJellyfishVideo])
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = IMSharedUtilitiesFrameworkBundle();
    v7 = v6;
    v8 = @"%lu Animoji";
  }

  else
  {
    filename = [(CKMediaObject *)self filename];
    v10 = [filename isEqualToString:@"Video Message.mov"];

    v5 = MEMORY[0x1E696AEC0];
    v6 = IMSharedUtilitiesFrameworkBundle();
    v7 = v6;
    if (v10)
    {
      v8 = @"%lu Video Messages";
    }

    else
    {
      v8 = @"%lu Videos";
    }
  }

  v11 = [v6 localizedStringForKey:v8 value:&stru_1F04268F8 table:@"IMSharedUtilities"];
  summary = [v5 localizedStringWithFormat:v11, summary];

  return summary;
}

- (BOOL)isAutoloopVideo
{
  if (![(CKMovieMediaObject *)self isAutoloopVideoInitialized])
  {
    [(CKMovieMediaObject *)self setIsAutoloopVideoInitialized:1];
    if ([(CKMovieMediaObject *)self isJellyfishVideo])
    {
      self->_isAutoloopVideo = 1;
    }

    else
    {
      objc_initWeak(&location, self);
      v3 = dispatch_get_global_queue(2, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __37__CKMovieMediaObject_isAutoloopVideo__block_invoke;
      block[3] = &unk_1E72EE0D0;
      block[4] = self;
      objc_copyWeak(&v6, &location);
      dispatch_async(v3, block);

      objc_destroyWeak(&v6);
      objc_destroyWeak(&location);
    }
  }

  return self->_isAutoloopVideo;
}

void __37__CKMovieMediaObject_isAutoloopVideo__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) asset];
  if (v2)
  {
    v21 = 0;
    v22 = 0;
    v3 = [MEMORY[0x1E69C0928] readMetadataType:4 fromAVAsset:v2 value:&v22 error:&v21];
    v4 = v22;
    v5 = v21;
    if (v4)
    {
      v6 = v3;
    }

    else
    {
      v6 = 0;
    }

    if (v6 == 1)
    {
      v7 = [v4 intValue];
      if (v7)
      {
        if (v7 != 3)
        {
          _os_feature_enabled_impl();
          v8 = 0;
          v9 = 0;
          goto LABEL_20;
        }
      }
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(2);
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [*(a1 + 32) asset];
      *buf = 138412802;
      v24 = v4;
      v25 = 2112;
      v26 = v5;
      v27 = 2112;
      v28 = v11;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_DEBUG, "Failed to load video playback style {styleIdentifier: %@, error: %@, asset: %@}", buf, 0x20u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v16 = [*(a1 + 32) asset];
    _CKLog();
  }

  if (!_os_feature_enabled_impl() || (v12 = objc_loadWeakRetained((a1 + 40)), v13 = [v12 _assetContainsMetadataKey:@"MMRY"], v12, (v13 & 1) == 0))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = [WeakRetained _assetContainsMetadataKey:@"GREY"];

    v8 = 0;
    v14 = v9;
    goto LABEL_22;
  }

  v9 = 0;
  v8 = 1;
LABEL_20:
  v14 = 1;
LABEL_22:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__CKMovieMediaObject_isAutoloopVideo__block_invoke_223;
  block[3] = &unk_1E72F0310;
  block[4] = *(a1 + 32);
  v18 = v14;
  v19 = v9;
  v20 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __37__CKMovieMediaObject_isAutoloopVideo__block_invoke_223(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 177) != v2)
  {
    *(v1 + 177) = v2;
    *(*(result + 32) + 178) = *(result + 41);
    *(*(result + 32) + 179) = *(result + 42);
    return [*(result + 32) postPreviewDidChangeNotifications];
  }

  return result;
}

- (BOOL)isJellyfishVideo
{
  if (![(CKMovieMediaObject *)self isJellyfishInitialized])
  {
    transfer = [(CKMediaObject *)self transfer];
    attributionInfo = [transfer attributionInfo];

    v5 = [attributionInfo objectForKey:*MEMORY[0x1E69A6FB0]];
    if (v5)
    {
      v6 = IMBalloonExtensionIDWithSuffix();
      self->_isJellyfishVideo = [v5 isEqualToString:v6];
    }
  }

  return self->_isJellyfishVideo;
}

- (BOOL)_assetContainsMetadataKey:(id)key
{
  v4 = MEMORY[0x1E69A7F00];
  keyCopy = key;
  asset = [(CKMovieMediaObject *)self asset];
  LOBYTE(v4) = [v4 asset:asset containsMetadataKey:keyCopy];

  return v4;
}

- (BOOL)allowAutoplay
{
  messageContext = [(CKMediaObject *)self messageContext];
  isFromMe = [messageContext isFromMe];

  if (isFromMe)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    messageContext2 = [(CKMediaObject *)self messageContext];
    v5 = [messageContext2 isSpam] ^ 1;
  }

  return v5;
}

- (Class)balloonViewClass
{
  if ([(CKMovieMediaObject *)self isAutoloopVideo])
  {
    transfer = [(CKMediaObject *)self transfer];
    if ([transfer isFileDataReady])
    {
      transcoderPreviewGenerationFailed = [(CKMediaObject *)self transcoderPreviewGenerationFailed];

      if (!transcoderPreviewGenerationFailed)
      {
        previewBalloonViewClass = [(CKMovieMediaObject *)self previewBalloonViewClass];
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v7.receiver = self;
  v7.super_class = CKMovieMediaObject;
  previewBalloonViewClass = [(CKMediaObject *)&v7 balloonViewClass];
LABEL_7:

  return previewBalloonViewClass;
}

- (Class)previewBalloonViewClass
{
  if (![(CKMovieMediaObject *)self allowAutoplay]|| ![(CKMovieMediaObject *)self isAutoloopVideo]|| !+[CKAutoloopMovieBalloonView isEnabled])
  {
    CKIsRunningInMacCatalyst();
  }

  v3 = objc_opt_class();

  return v3;
}

- (Class)replyContextBalloonViewClass
{
  if ([(CKMovieMediaObject *)self allowAutoplay]&& [(CKMovieMediaObject *)self isAutoloopVideo])
  {
    +[CKAutoloopMovieBalloonView isEnabled];
  }

  v3 = objc_opt_class();

  return v3;
}

- (id)previewForWidth:(double)width orientation:(char)orientation
{
  orientationCopy = orientation;
  if ([(CKMovieMediaObject *)self hasNoVideoTrack])
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CKMovieMediaObject;
    v7 = [(CKMediaObject *)&v9 previewForWidth:orientationCopy orientation:width];
  }

  return v7;
}

- (void)prewarmPreviewForWidth:(double)width orientation:(char)orientation
{
  v4.receiver = self;
  v4.super_class = CKMovieMediaObject;
  [(CKMediaObject *)&v4 prewarmPreviewForWidth:orientation orientation:width];
}

- (id)generateThumbnailForWidth:(double)width orientation:(char)orientation
{
  orientationCopy = orientation;
  [(CKMovieMediaObject *)self pxSize];
  v8 = v7;
  v10 = v9;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v13 = 1.0 / v12;
  v14 = v8 * v13;
  v15 = v10 * v13;

  v16 = +[CKUIBehavior sharedBehaviors];
  [v16 thumbnailFillSizeForWidth:width imageSize:{v14, v15}];
  v18 = v17;
  v20 = v19;

  v21 = +[CKUIBehavior sharedBehaviors];
  [v21 thumbnailContentAlignmentInsetsForOrientation:orientationCopy];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  return [(CKMovieMediaObject *)self generateThumbnailFillToSize:v18 contentAlignmentInsets:v20, v23, v25, v27, v29];
}

- (id)generateThumbnailFillToSize:(CGSize)size contentAlignmentInsets:(UIEdgeInsets)insets
{
  bottom = insets.bottom;
  right = insets.right;
  left = insets.left;
  top = insets.top;
  height = size.height;
  width = size.width;
  v52 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x193AF5ED0]("kCMTimeZero", @"CoreMedia");
  v48 = *v8;
  v49 = *(v8 + 16);
  [(CKMovieMediaObject *)self pxSize];
  v10 = v9;
  v12 = v11;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v15 = v14;

  thumbnail = [(CKMovieMediaObject *)self thumbnail];
  v17 = thumbnail;
  if (thumbnail)
  {
    cGImage = [thumbnail CGImage];
    CFRetain(cGImage);
  }

  else
  {
    if (v10 == 0.0)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = width * v15 / v10;
    }

    if (v12 == 0.0)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = height * v15 / v12;
    }

    asset = [(CKMovieMediaObject *)self asset];
    v22 = [MEMORY[0x1E6987E68] assetImageGeneratorWithAsset:asset];
    v23 = fmax(v19, v20);
    v24 = ceil(v12 * v23);
    v25 = ceil(v10 * v23);
    [v22 setAppliesPreferredTrackTransform:1];
    [v22 setMaximumSize:{v25, v24}];
    *buf = v48;
    *&buf[16] = v49;
    cGImage = [v22 copyCGImageAtTime:buf actualTime:0 error:0];
  }

  if (cGImage)
  {
    v26 = CGImageGetWidth(cGImage);
    v27 = CGImageGetHeight(cGImage);
    v28 = v15;
    if ([objc_opt_class() shouldScaleUpPreview])
    {
      v29 = 1.0 / v15 * v26;
      v30 = 1.0 / v15 * v27;
      v31 = v29 + 1.0 < width || v30 + 1.0 < height;
      v28 = v15;
      if (v31)
      {
        v32 = width / v29;
        v33 = 0.0;
        if (v29 == 0.0)
        {
          v32 = 0.0;
        }

        if (v30 != 0.0)
        {
          v33 = height / v30;
        }

        v34 = v15 / fmax(v32, v33);
        if (v34 >= v15 * 0.5)
        {
          v28 = v34;
        }

        else
        {
          v28 = v15 * 0.5;
        }

        if (IMOSLoggingEnabled())
        {
          CKLogCStringForType(2);
          v35 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            v54.width = v29;
            v54.height = 1.0 / v15 * v27;
            v36 = NSStringFromCGSize(v54);
            v55.width = width;
            v55.height = height;
            v37 = NSStringFromCGSize(v55);
            *buf = 138412802;
            *&buf[4] = v36;
            *&buf[12] = 2048;
            *&buf[14] = v28;
            *&buf[22] = 2112;
            v51 = v37;
            _os_log_impl(&dword_19020E000, v35, OS_LOG_TYPE_DEBUG, "Scale thumbnail of size (%@) by with image scale %f to try to fill target (%@)", buf, 0x20u);
          }
        }

        if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
        {
          v56.width = v29;
          v56.height = v30;
          v38 = NSStringFromCGSize(v56);
          v57.width = width;
          v57.height = height;
          v44 = NSStringFromCGSize(v57);
          v43 = v28;
          v42 = v38;
          _CKLog();
        }
      }
    }

    v39 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:cGImage scale:objc_msgSend(v17 orientation:{"imageOrientation"), v28}];

    if (![(CKMovieMediaObject *)self isJellyfishVideo]&& ![(CKMovieMediaObject *)self isAutoloopVideo]|| [(CKMovieMediaObject *)self isMultitrackMemoriesVideo:v42])
    {
      v40 = [objc_opt_class() playButtonPreviewForUIImage:v39 scale:v15 contentAlignmentInsets:{top, left, bottom, right}];

      v39 = v40;
    }

    CFRelease(cGImage);
  }

  else
  {
    v39 = v17;
  }

  return v39;
}

+ (CGImage)playButtonPreviewForCGImage:(CGImage *)image scale:(double)scale isFromMe:(BOOL)me
{
  meCopy = me;
  v9 = +[CKUIBehavior sharedBehaviors];
  [v9 thumbnailContentAlignmentInsetsForOrientation:meCopy];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [MEMORY[0x1E69DCAB8] imageWithCGImage:image scale:0 orientation:scale];
  v19 = [self playButtonPreviewForUIImage:v18 scale:scale contentAlignmentInsets:{v11, v13, v15, v17}];

  cGImage = [v19 CGImage];
  return cGImage;
}

+ (id)playButtonPreviewForUIImage:(id)image scale:(double)scale contentAlignmentInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  imageCopy = image;
  v10 = +[CKUIBehavior sharedBehaviors];
  playButtonImage = [v10 playButtonImage];
  playButtonArrowImage = [v10 playButtonArrowImage];
  playButtonPunchesOutArrow = [v10 playButtonPunchesOutArrow];
  playButtonBackdropStyle = [v10 playButtonBackdropStyle];
  [playButtonImage size];
  v16 = v15;
  v18 = v17;
  v19 = +[CKUIBehavior sharedBehaviors];
  [v19 minimumPlayButtonInsets];
  v22 = v16 + v20 + v21;
  v25 = v18 + v23 + v24;

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isRoundTailedBalloonShapeEnabled = [mEMORY[0x1E69A8070] isRoundTailedBalloonShapeEnabled];

  if ((isRoundTailedBalloonShapeEnabled & 1) == 0)
  {
    v28 = +[CKUIBehavior sharedBehaviors];
    [v28 balloonMaskTailSizeForTailShape:1];
    v30 = v29;

    v22 = v22 + v30 * 2.0;
  }

  [imageCopy size];
  if (v32 < v22 || v31 < v25)
  {
    v34 = imageCopy;
    v35 = v34;
  }

  else
  {
    [imageCopy size];
    UIGraphicsBeginImageContextWithOptions(v73, 0, scale);
    v36 = *MEMORY[0x1E695EFF8];
    v37 = *(MEMORY[0x1E695EFF8] + 8);
    [imageCopy size];
    v68 = v37;
    v69 = v36;
    v38 = left + v36;
    v70 = top + v37;
    v40 = v39 - (left + right);
    v42 = v41 - (top + bottom);
    [playButtonImage size];
    v44 = v43;
    v46 = v45;
    [playButtonImage scale];
    v48 = v47 / scale;
    v49 = v44 * v48;
    v50 = v46 * v48;
    if (CKMainScreenScale_once_29 != -1)
    {
      +[CKMovieMediaObject playButtonPreviewForUIImage:scale:contentAlignmentInsets:];
    }

    v51 = *&CKMainScreenScale_sMainScreenScale_29;
    if (*&CKMainScreenScale_sMainScreenScale_29 == 0.0)
    {
      v51 = 1.0;
    }

    v67 = floor((v38 + (v40 - v49) * 0.5) * v51) / v51;
    v52 = floor((v70 + (v42 - v50) * 0.5) * v51) / v51;
    [playButtonArrowImage size];
    v54 = v53;
    v56 = v55;
    [playButtonImage scale];
    v58 = v57 / scale;
    v59 = v54 * v58;
    v60 = v56 * v58;
    if (CKMainScreenScale_once_29 != -1)
    {
      +[CKMovieMediaObject playButtonPreviewForUIImage:scale:contentAlignmentInsets:];
    }

    v61 = *&CKMainScreenScale_sMainScreenScale_29;
    if (*&CKMainScreenScale_sMainScreenScale_29 == 0.0)
    {
      v61 = 1.0;
    }

    v62 = floor((v38 + (v40 - v59) * 0.5) * v61) / v61;
    v63 = floor((v70 + (v42 - v60) * 0.5) * v61) / v61;
    [playButtonImage drawInRect:{v67, v52, v49, v50}];
    if (playButtonPunchesOutArrow)
    {
      [playButtonArrowImage drawInRect:23 blendMode:v62 alpha:{v63, v59, v60, 1.0}];
    }

    v64 = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();
    v65 = [MEMORY[0x1E69DD378] settingsForPrivateStyle:playButtonBackdropStyle graphicsQuality:100];
    [v65 setGrayscaleTintMaskImage:v64];
    [v65 setColorTintMaskImage:v64];
    [v65 setFilterMaskImage:v64];
    v34 = [imageCopy _applyBackdropViewSettings:v65];

    [v34 size];
    UIGraphicsBeginImageContextWithOptions(v74, 0, scale);
    [v34 drawAtPoint:{v69, v68}];
    if (playButtonPunchesOutArrow)
    {
      [playButtonArrowImage drawInRect:26 blendMode:v62 alpha:{v63, v59, v60, 0.4}];
    }

    else
    {
      [playButtonArrowImage drawInRect:{v62, v63, v59, v60}];
    }

    v35 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    playButtonImage = v64;
  }

  return v35;
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
  [(CKMovieMediaObject *)self pxSize];
  v3 = v2;
  v5 = v4;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v8 = 1.0 / v7;
  v9 = v3 * v8;
  v10 = v5 * v8;

  v11 = v9;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (BOOL)canExport
{
  transfer = [(CKMediaObject *)self transfer];
  isFileDataReady = [transfer isFileDataReady];

  if (!isFileDataReady)
  {
    return 0;
  }

  fileURL = [(CKMediaObject *)self fileURL];
  path = [fileURL path];

  if (path)
  {
    IsCompatibleWithSavedPhotosAlbum = UIVideoAtPathIsCompatibleWithSavedPhotosAlbum(path);
  }

  else
  {
    IsCompatibleWithSavedPhotosAlbum = 0;
  }

  return IsCompatibleWithSavedPhotosAlbum;
}

- (id)previewItemTitle
{
  if ([(CKMovieMediaObject *)self isJellyfishVideo])
  {
    v3 = CKFrameworkBundle();
    v4 = v3;
    v5 = @"PREVIEW_TITLE_ANIMOJI";
  }

  else
  {
    filename = [(CKMediaObject *)self filename];
    v7 = [filename isEqualToString:@"Video Message.mov"];

    v3 = CKFrameworkBundle();
    v4 = v3;
    if (v7)
    {
      v5 = @"PREVIEW_TITLE_VIDEO_MESSAGE";
    }

    else
    {
      v5 = @"PREVIEW_TITLE_VIDEO";
    }
  }

  v8 = [v3 localizedStringForKey:v5 value:&stru_1F04268F8 table:@"ChatKit"];

  return v8;
}

- (CGSize)pxSize
{
  if (![(CKMovieMediaObject *)self checkedVideoInfo])
  {
    transfer = [(CKMediaObject *)self transfer];
    isFileDataReady = [transfer isFileDataReady];

    if (isFileDataReady)
    {
      [(CKMovieMediaObject *)self updateVideoInfo];
      [(CKMovieMediaObject *)self setCheckedVideoInfo:1];
    }
  }

  width = self->_pxSize.width;
  height = self->_pxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (AVURLAsset)asset
{
  if (!self->_asset)
  {
    transfer = [(CKMediaObject *)self transfer];
    if ([transfer isFileDataReady])
    {
      hasNoVideoTrack = [(CKMovieMediaObject *)self hasNoVideoTrack];

      if (hasNoVideoTrack)
      {
        goto LABEL_6;
      }

      transfer = [(CKMediaObject *)self fileURL];
      v5 = CKAVURLAssetForURL(transfer);
      asset = self->_asset;
      self->_asset = v5;
    }
  }

LABEL_6:
  v7 = self->_asset;

  return v7;
}

- (BOOL)hasNoVideoTrack
{
  checkedVideoInfo = [(CKMovieMediaObject *)self checkedVideoInfo];
  if (checkedVideoInfo)
  {
    LOBYTE(checkedVideoInfo) = ![(CKMovieMediaObject *)self hasVideoTrack];
  }

  return checkedVideoInfo;
}

- (void)updateVideoInfo
{
  asset = [(CKMovieMediaObject *)self asset];
  v4 = [asset tracksWithMediaType:*MEMORY[0x1E6987608]];
  lastObject = [v4 lastObject];

  if (lastObject)
  {
    [(CKMovieMediaObject *)self setHasVideoTrack:1];
    v6 = *MEMORY[0x1E695EFF8];
    v7 = *(MEMORY[0x1E695EFF8] + 8);
    [lastObject naturalSize];
    v9 = v8;
    v11 = v10;
    [lastObject preferredTransform];
    v13.origin.x = v6;
    v13.origin.y = v7;
    v13.size.width = v9;
    v13.size.height = v11;
    v14 = CGRectApplyAffineTransform(v13, &v12);
    [(CKMovieMediaObject *)self setPxSize:v14.size.width, v14.size.height];
  }
}

@end