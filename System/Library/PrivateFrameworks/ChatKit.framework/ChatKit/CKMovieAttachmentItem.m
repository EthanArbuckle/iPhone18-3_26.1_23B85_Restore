@interface CKMovieAttachmentItem
+ (id)UTITypes;
- (BOOL)isJellyfishVideo;
- (CGSize)_defaultSize;
- (CGSize)size;
- (id)_generateThumbnailFillToSize:(CGSize)a3;
- (id)previewItemTitle;
- (void)generatePreviewWithCompletion:(id)a3;
@end

@implementation CKMovieAttachmentItem

- (BOOL)isJellyfishVideo
{
  v3 = [MEMORY[0x1E69A5B80] sharedInstance];
  v4 = [(CKAttachmentItem *)self transferGUID];
  v5 = [v3 transferForGUID:v4];

  v6 = [v5 attributionInfo];
  v7 = [v6 objectForKey:*MEMORY[0x1E69A6FB0]];
  if (v7)
  {
    v8 = IMBalloonExtensionIDWithSuffix();
    v9 = [v7 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)UTITypes
{
  v2 = [MEMORY[0x1E6988168] audiovisualTypes];
  v3 = [v2 indexesOfObjectsPassingTest:&__block_literal_global_256];
  v4 = [v2 objectsAtIndexes:v3];

  return v4;
}

- (void)generatePreviewWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() previewCache];
  v6 = CKAttachmentPreviewCacheKey(self);
  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = +[CKUIBehavior sharedBehaviors];
  [v8 previewMaxWidth];
  v10 = v9;
  [(CKMovieAttachmentItem *)self size];
  [v7 thumbnailFillSizeForWidth:v10 imageSize:{v11, v12}];
  v14 = v13;
  v16 = v15;

  if (([v5 isGeneratingPreviewForKey:v6] & 1) == 0)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __55__CKMovieAttachmentItem_generatePreviewWithCompletion___block_invoke;
    v22[3] = &unk_1E72EE7C8;
    v22[4] = self;
    v22[5] = v14;
    v22[6] = v16;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __55__CKMovieAttachmentItem_generatePreviewWithCompletion___block_invoke_2;
    v17[3] = &unk_1E72EDE00;
    v18 = v5;
    v19 = v6;
    v20 = self;
    v21 = v4;
    [v18 enqueueGenerationBlock:v22 completion:v17 withPriority:1 forKey:v19];
  }
}

void __55__CKMovieAttachmentItem_generatePreviewWithCompletion___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CKMovieAttachmentItem_generatePreviewWithCompletion___block_invoke_3;
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

void __55__CKMovieAttachmentItem_generatePreviewWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedPreviewForKey:*(a1 + 40)];
  v4 = v2;
  if (v2)
  {
    [*(a1 + 48) _savePreview:v2];
    v2 = v4;
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    (*(v3 + 16))(v3, v4, v2);
    v2 = v4;
  }
}

- (id)_generateThumbnailFillToSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = MEMORY[0x193AF5ED0]("kCMTimeZero", @"CoreMedia");
  v81 = *v6;
  v82 = *(v6 + 16);
  [(CKMovieAttachmentItem *)self size];
  v8 = v7;
  v10 = v9;
  v11 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v11 scale];
  v13 = v12;

  v14 = width * v13 / v8;
  if (v8 == 0.0)
  {
    v14 = 0.0;
  }

  v15 = height * v13 / v10;
  if (v10 == 0.0)
  {
    v15 = 0.0;
  }

  v16 = fmax(v14, v15);
  v17 = ceil(v8 * v16);
  v18 = ceil(v10 * v16);
  v19 = [(CKAttachmentItem *)self fileURL];
  v20 = CKAVURLAssetForURL(v19);

  v21 = [MEMORY[0x1E6987E68] assetImageGeneratorWithAsset:v20];
  [v21 setAppliesPreferredTrackTransform:1];
  [v21 setMaximumSize:{v17, v18}];
  v79 = v81;
  v80 = v82;
  v22 = [v21 copyCGImageAtTime:&v79 actualTime:0 error:0];
  if (v22)
  {
    v23 = v22;
    v76 = v20;
    v24 = CGImageGetWidth(v22);
    v25 = CGImageGetHeight(v23);
    v26 = 1.0 / v13 * v24;
    v27 = 1.0 / v13 * v25;
    if (v26 == width && v27 == height)
    {
      v45 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v23 scale:objc_msgSend(0 orientation:{"imageOrientation"), v13}];
      v38 = *MEMORY[0x1E695EFF8];
      v39 = *(MEMORY[0x1E695EFF8] + 8);
    }

    else
    {
      v29 = width / v26;
      if (v26 == 0.0)
      {
        v29 = 0.0;
      }

      if (v27 == 0.0)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = height / v27;
      }

      v31 = fmax(v29, v30);
      if (CKMainScreenScale_once_93 != -1)
      {
        [CKMovieAttachmentItem _generateThumbnailFillToSize:];
      }

      v32 = *&CKMainScreenScale_sMainScreenScale_93;
      if (*&CKMainScreenScale_sMainScreenScale_93 == 0.0)
      {
        v32 = 1.0;
      }

      v33 = ceil(v31 * v32) / v32;
      v34 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v34 scale];
      v36 = v35 / v33;

      v37 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v23 scale:0 orientation:v36];
      v84.width = width;
      v84.height = height;
      UIGraphicsBeginImageContextWithOptions(v84, 0, 0.0);
      v38 = *MEMORY[0x1E695EFF8];
      v39 = *(MEMORY[0x1E695EFF8] + 8);
      [v37 size];
      v41 = v40;
      v43 = v42;
      if (CKMainScreenScale_once_93 != -1)
      {
        [CKMovieAttachmentItem _generateThumbnailFillToSize:];
      }

      v44 = 1.0;
      if (*&CKMainScreenScale_sMainScreenScale_93 != 0.0)
      {
        v44 = *&CKMainScreenScale_sMainScreenScale_93;
      }

      [v37 drawAtPoint:{floor((v38 + (width - v41) * 0.5) * v44) / v44, floor((v39 + (height - v43) * 0.5) * v44) / v44}];
      v45 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
    }

    v47 = +[CKUIBehavior sharedBehaviors];
    v48 = [v47 playButtonImage];
    v49 = [v47 playButtonArrowImage];
    v50 = [v47 playButtonPunchesOutArrow];
    v51 = [v47 playButtonBackdropStyle];
    v85.width = width;
    v85.height = height;
    UIGraphicsBeginImageContextWithOptions(v85, 0, 0.0);
    [v48 size];
    v53 = v52;
    v55 = v54;
    if (CKMainScreenScale_once_93 != -1)
    {
      [CKMovieAttachmentItem _generateThumbnailFillToSize:];
    }

    v56 = *&CKMainScreenScale_sMainScreenScale_93;
    if (*&CKMainScreenScale_sMainScreenScale_93 == 0.0)
    {
      v56 = 1.0;
    }

    v78 = width;
    v57 = (width - v53) * 0.5;
    v58 = v38;
    v59 = floor((v38 + v57) * v56) / v56;
    v60 = v39;
    v61 = floor((v39 + (height - v55) * 0.5) * v56) / v56;
    [v49 size];
    v63 = v62;
    v65 = v64;
    if (CKMainScreenScale_once_93 != -1)
    {
      [CKMovieAttachmentItem _generateThumbnailFillToSize:];
    }

    v66 = *&CKMainScreenScale_sMainScreenScale_93;
    [v48 drawAtPoint:{v59, v61}];
    v67 = v78 - v63;
    if (v50)
    {
      v68 = 1.0;
      if (v66 != 0.0)
      {
        v68 = v66;
      }

      [v49 drawAtPoint:23 blendMode:floor((v58 + v67 * 0.5) * v68) / v68 alpha:{floor((v60 + (height - v65) * 0.5) * v68) / v68, 1.0}];
    }

    v69 = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();
    v70 = [MEMORY[0x1E69DD378] settingsForPrivateStyle:v51 graphicsQuality:100];
    [v70 setGrayscaleTintMaskImage:v69];
    [v70 setColorTintMaskImage:v69];
    [v70 setFilterMaskImage:v69];
    v71 = [v45 _applyBackdropViewSettings:v70];

    v86.width = v78;
    v86.height = height;
    UIGraphicsBeginImageContextWithOptions(v86, 0, 0.0);
    if (CKMainScreenScale_once_93 != -1)
    {
      [CKMovieAttachmentItem _generateThumbnailFillToSize:];
    }

    v72 = 1.0;
    if (*&CKMainScreenScale_sMainScreenScale_93 != 0.0)
    {
      v72 = *&CKMainScreenScale_sMainScreenScale_93;
    }

    [v71 drawInRect:{floor(((v78 - v78) * 0.5 + v58) * v72) / v72, floor(((height - height) * 0.5 + v60) * v72) / v72, v78, height}];
    if (v50)
    {
      v20 = v77;
      if (CKMainScreenScale_once_93 != -1)
      {
        [CKMovieAttachmentItem _generateThumbnailFillToSize:];
      }

      v73 = 1.0;
      if (*&CKMainScreenScale_sMainScreenScale_93 != 0.0)
      {
        v73 = *&CKMainScreenScale_sMainScreenScale_93;
      }

      [v49 drawInRect:26 blendMode:floor((v58 + v67 * 0.5) * v73) / v73 alpha:{floor((v60 + (height - v65) * 0.5) * v73) / v73, v63, v65, 0.4}];
    }

    else
    {
      v20 = v77;
      if (CKMainScreenScale_once_93 != -1)
      {
        [CKMovieAttachmentItem _generateThumbnailFillToSize:];
      }

      v74 = 1.0;
      if (*&CKMainScreenScale_sMainScreenScale_93 != 0.0)
      {
        v74 = *&CKMainScreenScale_sMainScreenScale_93;
      }

      [v49 drawInRect:{floor((v58 + v67 * 0.5) * v74) / v74, floor((v60 + (height - v65) * 0.5) * v74) / v74, v63, v65}];
    }

    v46 = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();
    CFRelease(v23);
  }

  else
  {
    v46 = 0;
  }

  return v46;
}

- (CGSize)size
{
  p_size = &self->super._size;
  width = self->super._size.width;
  height = self->super._size.height;
  v6 = *MEMORY[0x1E695F060];
  v7 = *(MEMORY[0x1E695F060] + 8);
  if (width == *MEMORY[0x1E695F060] && height == v7)
  {
    v9 = [(CKAttachmentItem *)self fileURL];
    v10 = CKAVURLAssetForURL(v9);

    v11 = [v10 tracksWithMediaType:*MEMORY[0x1E6987608]];
    if ([v11 count])
    {
      v12 = [v11 firstObject];
      v13 = *MEMORY[0x1E695EFF8];
      v14 = *(MEMORY[0x1E695EFF8] + 8);
      [v12 naturalSize];
      v16 = v15;
      v18 = v17;
      if (v12)
      {
        [v12 preferredTransform];
      }

      else
      {
        memset(&v20, 0, sizeof(v20));
      }

      v22.origin.x = v13;
      v22.origin.y = v14;
      v22.size.width = v16;
      v22.size.height = v18;
      v23 = CGRectApplyAffineTransform(v22, &v20);
      p_size->width = v23.size.width;
      p_size->height = v23.size.height;
    }

    width = p_size->width;
    height = p_size->height;
  }

  if (width == v6 && height == v7)
  {
    [(CKMovieAttachmentItem *)self _defaultSize];
    p_size->width = width;
    p_size->height = height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)_defaultSize
{
  v2 = 50.0;
  v3 = 50.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)previewItemTitle
{
  if ([(CKMovieAttachmentItem *)self isJellyfishVideo])
  {
    v3 = CKFrameworkBundle();
    v4 = v3;
    v5 = @"ANIMOJI";
  }

  else
  {
    v6 = [(CKAttachmentItem *)self fileURL];
    v7 = [v6 lastPathComponent];
    v8 = [v7 isEqualToString:@"Video Message.mov"];

    v3 = CKFrameworkBundle();
    v4 = v3;
    if (v8)
    {
      v5 = @"PREVIEW_TITLE_VIDEO_MESSAGE";
    }

    else
    {
      v5 = @"PREVIEW_TITLE_VIDEO";
    }
  }

  v9 = [v3 localizedStringForKey:v5 value:&stru_1F04268F8 table:@"ChatKit"];

  return v9;
}

@end