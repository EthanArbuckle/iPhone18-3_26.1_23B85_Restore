@interface CKMovieMediaObject
+ (CGImage)playButtonPreviewForCGImage:(CGImage *)a3 scale:(double)a4 isFromMe:(BOOL)a5;
+ (id)UTITypes;
+ (id)playButtonPreviewForUIImage:(id)a3 scale:(double)a4 contentAlignmentInsets:(UIEdgeInsets)a5;
- (AVURLAsset)asset;
- (BOOL)_assetContainsMetadataKey:(id)a3;
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
- (id)attachmentSummary:(unint64_t)a3;
- (id)bbPreviewFillToSize:(CGSize)a3;
- (id)generateThumbnailFillToSize:(CGSize)a3 contentAlignmentInsets:(UIEdgeInsets)a4;
- (id)generateThumbnailForWidth:(double)a3 orientation:(char)a4;
- (id)metricsCollectorMediaType;
- (id)previewForWidth:(double)a3 orientation:(char)a4;
- (id)previewItemTitle;
- (void)prewarmPreviewForWidth:(double)a3 orientation:(char)a4;
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
  v2 = [(CKMovieMediaObject *)self isAutoloopVideo];
  v3 = MEMORY[0x1E69A7498];
  if (!v2)
  {
    v3 = MEMORY[0x1E69A74C8];
  }

  v4 = *v3;

  return v4;
}

- (id)attachmentSummary:(unint64_t)a3
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
    v9 = [(CKMediaObject *)self filename];
    v10 = [v9 isEqualToString:@"Video Message.mov"];

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
  v12 = [v5 localizedStringWithFormat:v11, a3];

  return v12;
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
    v3 = [(CKMediaObject *)self transfer];
    v4 = [v3 attributionInfo];

    v5 = [v4 objectForKey:*MEMORY[0x1E69A6FB0]];
    if (v5)
    {
      v6 = IMBalloonExtensionIDWithSuffix();
      self->_isJellyfishVideo = [v5 isEqualToString:v6];
    }
  }

  return self->_isJellyfishVideo;
}

- (BOOL)_assetContainsMetadataKey:(id)a3
{
  v4 = MEMORY[0x1E69A7F00];
  v5 = a3;
  v6 = [(CKMovieMediaObject *)self asset];
  LOBYTE(v4) = [v4 asset:v6 containsMetadataKey:v5];

  return v4;
}

- (BOOL)allowAutoplay
{
  v3 = [(CKMediaObject *)self messageContext];
  v4 = [v3 isFromMe];

  if (v4)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v6 = [(CKMediaObject *)self messageContext];
    v5 = [v6 isSpam] ^ 1;
  }

  return v5;
}

- (Class)balloonViewClass
{
  if ([(CKMovieMediaObject *)self isAutoloopVideo])
  {
    v3 = [(CKMediaObject *)self transfer];
    if ([v3 isFileDataReady])
    {
      v4 = [(CKMediaObject *)self transcoderPreviewGenerationFailed];

      if (!v4)
      {
        v5 = [(CKMovieMediaObject *)self previewBalloonViewClass];
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v7.receiver = self;
  v7.super_class = CKMovieMediaObject;
  v5 = [(CKMediaObject *)&v7 balloonViewClass];
LABEL_7:

  return v5;
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

- (id)previewForWidth:(double)a3 orientation:(char)a4
{
  v4 = a4;
  if ([(CKMovieMediaObject *)self hasNoVideoTrack])
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CKMovieMediaObject;
    v7 = [(CKMediaObject *)&v9 previewForWidth:v4 orientation:a3];
  }

  return v7;
}

- (void)prewarmPreviewForWidth:(double)a3 orientation:(char)a4
{
  v4.receiver = self;
  v4.super_class = CKMovieMediaObject;
  [(CKMediaObject *)&v4 prewarmPreviewForWidth:a4 orientation:a3];
}

- (id)generateThumbnailForWidth:(double)a3 orientation:(char)a4
{
  v4 = a4;
  [(CKMovieMediaObject *)self pxSize];
  v8 = v7;
  v10 = v9;
  v11 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v11 scale];
  v13 = 1.0 / v12;
  v14 = v8 * v13;
  v15 = v10 * v13;

  v16 = +[CKUIBehavior sharedBehaviors];
  [v16 thumbnailFillSizeForWidth:a3 imageSize:{v14, v15}];
  v18 = v17;
  v20 = v19;

  v21 = +[CKUIBehavior sharedBehaviors];
  [v21 thumbnailContentAlignmentInsetsForOrientation:v4];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  return [(CKMovieMediaObject *)self generateThumbnailFillToSize:v18 contentAlignmentInsets:v20, v23, v25, v27, v29];
}

- (id)generateThumbnailFillToSize:(CGSize)a3 contentAlignmentInsets:(UIEdgeInsets)a4
{
  bottom = a4.bottom;
  right = a4.right;
  left = a4.left;
  top = a4.top;
  height = a3.height;
  width = a3.width;
  v52 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x193AF5ED0]("kCMTimeZero", @"CoreMedia");
  v48 = *v8;
  v49 = *(v8 + 16);
  [(CKMovieMediaObject *)self pxSize];
  v10 = v9;
  v12 = v11;
  v13 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v13 scale];
  v15 = v14;

  v16 = [(CKMovieMediaObject *)self thumbnail];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 CGImage];
    CFRetain(v18);
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

    v21 = [(CKMovieMediaObject *)self asset];
    v22 = [MEMORY[0x1E6987E68] assetImageGeneratorWithAsset:v21];
    v23 = fmax(v19, v20);
    v24 = ceil(v12 * v23);
    v25 = ceil(v10 * v23);
    [v22 setAppliesPreferredTrackTransform:1];
    [v22 setMaximumSize:{v25, v24}];
    *buf = v48;
    *&buf[16] = v49;
    v18 = [v22 copyCGImageAtTime:buf actualTime:0 error:0];
  }

  if (v18)
  {
    v26 = CGImageGetWidth(v18);
    v27 = CGImageGetHeight(v18);
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

    v39 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v18 scale:objc_msgSend(v17 orientation:{"imageOrientation"), v28}];

    if (![(CKMovieMediaObject *)self isJellyfishVideo]&& ![(CKMovieMediaObject *)self isAutoloopVideo]|| [(CKMovieMediaObject *)self isMultitrackMemoriesVideo:v42])
    {
      v40 = [objc_opt_class() playButtonPreviewForUIImage:v39 scale:v15 contentAlignmentInsets:{top, left, bottom, right}];

      v39 = v40;
    }

    CFRelease(v18);
  }

  else
  {
    v39 = v17;
  }

  return v39;
}

+ (CGImage)playButtonPreviewForCGImage:(CGImage *)a3 scale:(double)a4 isFromMe:(BOOL)a5
{
  v5 = a5;
  v9 = +[CKUIBehavior sharedBehaviors];
  [v9 thumbnailContentAlignmentInsetsForOrientation:v5];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [MEMORY[0x1E69DCAB8] imageWithCGImage:a3 scale:0 orientation:a4];
  v19 = [a1 playButtonPreviewForUIImage:v18 scale:a4 contentAlignmentInsets:{v11, v13, v15, v17}];

  v20 = [v19 CGImage];
  return v20;
}

+ (id)playButtonPreviewForUIImage:(id)a3 scale:(double)a4 contentAlignmentInsets:(UIEdgeInsets)a5
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  v9 = a3;
  v10 = +[CKUIBehavior sharedBehaviors];
  v11 = [v10 playButtonImage];
  v12 = [v10 playButtonArrowImage];
  v13 = [v10 playButtonPunchesOutArrow];
  v14 = [v10 playButtonBackdropStyle];
  [v11 size];
  v16 = v15;
  v18 = v17;
  v19 = +[CKUIBehavior sharedBehaviors];
  [v19 minimumPlayButtonInsets];
  v22 = v16 + v20 + v21;
  v25 = v18 + v23 + v24;

  v26 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v27 = [v26 isRoundTailedBalloonShapeEnabled];

  if ((v27 & 1) == 0)
  {
    v28 = +[CKUIBehavior sharedBehaviors];
    [v28 balloonMaskTailSizeForTailShape:1];
    v30 = v29;

    v22 = v22 + v30 * 2.0;
  }

  [v9 size];
  if (v32 < v22 || v31 < v25)
  {
    v34 = v9;
    v35 = v34;
  }

  else
  {
    [v9 size];
    UIGraphicsBeginImageContextWithOptions(v73, 0, a4);
    v36 = *MEMORY[0x1E695EFF8];
    v37 = *(MEMORY[0x1E695EFF8] + 8);
    [v9 size];
    v68 = v37;
    v69 = v36;
    v38 = left + v36;
    v70 = top + v37;
    v40 = v39 - (left + right);
    v42 = v41 - (top + bottom);
    [v11 size];
    v44 = v43;
    v46 = v45;
    [v11 scale];
    v48 = v47 / a4;
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
    [v12 size];
    v54 = v53;
    v56 = v55;
    [v11 scale];
    v58 = v57 / a4;
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
    [v11 drawInRect:{v67, v52, v49, v50}];
    if (v13)
    {
      [v12 drawInRect:23 blendMode:v62 alpha:{v63, v59, v60, 1.0}];
    }

    v64 = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();
    v65 = [MEMORY[0x1E69DD378] settingsForPrivateStyle:v14 graphicsQuality:100];
    [v65 setGrayscaleTintMaskImage:v64];
    [v65 setColorTintMaskImage:v64];
    [v65 setFilterMaskImage:v64];
    v34 = [v9 _applyBackdropViewSettings:v65];

    [v34 size];
    UIGraphicsBeginImageContextWithOptions(v74, 0, a4);
    [v34 drawAtPoint:{v69, v68}];
    if (v13)
    {
      [v12 drawInRect:26 blendMode:v62 alpha:{v63, v59, v60, 0.4}];
    }

    else
    {
      [v12 drawInRect:{v62, v63, v59, v60}];
    }

    v35 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    v11 = v64;
  }

  return v35;
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
  [(CKMovieMediaObject *)self pxSize];
  v3 = v2;
  v5 = v4;
  v6 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v6 scale];
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
  v3 = [(CKMediaObject *)self transfer];
  v4 = [v3 isFileDataReady];

  if (!v4)
  {
    return 0;
  }

  v5 = [(CKMediaObject *)self fileURL];
  v6 = [v5 path];

  if (v6)
  {
    IsCompatibleWithSavedPhotosAlbum = UIVideoAtPathIsCompatibleWithSavedPhotosAlbum(v6);
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
    v6 = [(CKMediaObject *)self filename];
    v7 = [v6 isEqualToString:@"Video Message.mov"];

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
    v3 = [(CKMediaObject *)self transfer];
    v4 = [v3 isFileDataReady];

    if (v4)
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
    v3 = [(CKMediaObject *)self transfer];
    if ([v3 isFileDataReady])
    {
      v4 = [(CKMovieMediaObject *)self hasNoVideoTrack];

      if (v4)
      {
        goto LABEL_6;
      }

      v3 = [(CKMediaObject *)self fileURL];
      v5 = CKAVURLAssetForURL(v3);
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
  v3 = [(CKMovieMediaObject *)self checkedVideoInfo];
  if (v3)
  {
    LOBYTE(v3) = ![(CKMovieMediaObject *)self hasVideoTrack];
  }

  return v3;
}

- (void)updateVideoInfo
{
  v3 = [(CKMovieMediaObject *)self asset];
  v4 = [v3 tracksWithMediaType:*MEMORY[0x1E6987608]];
  v5 = [v4 lastObject];

  if (v5)
  {
    [(CKMovieMediaObject *)self setHasVideoTrack:1];
    v6 = *MEMORY[0x1E695EFF8];
    v7 = *(MEMORY[0x1E695EFF8] + 8);
    [v5 naturalSize];
    v9 = v8;
    v11 = v10;
    [v5 preferredTransform];
    v13.origin.x = v6;
    v13.origin.y = v7;
    v13.size.width = v9;
    v13.size.height = v11;
    v14 = CGRectApplyAffineTransform(v13, &v12);
    [(CKMovieMediaObject *)self setPxSize:v14.size.width, v14.size.height];
  }
}

@end