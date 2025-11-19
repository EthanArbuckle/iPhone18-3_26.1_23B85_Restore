@interface CKImageBalloonView
- (BOOL)needsGlassPlatter;
- (BOOL)shouldShowImageBackdropBalloonLayer;
- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5;
- (CKBalloonDescriptor_t)imageBackdropBalloonDescriptor;
- (CKBalloonDescriptor_t)imageContentMaskBalloonDescriptor;
- (CKImageBalloonView)initWithFrame:(CGRect)a3;
- (NSString)description;
- (UIEdgeInsets)alignmentRectInsetsForBoundsSize:(CGSize)a3;
- (UIEdgeInsets)imageInsets;
- (UIEdgeInsets)safeAreaInsets;
- (char)addFillToStyle:(char)a3;
- (double)imageAlpha;
- (id)_addPauseButtonToImage:(id)a3;
- (id)highlightOverlayColor;
- (id)image;
- (void)_animatedImagesStateChanged:(id)a3;
- (void)addFilter:(id)a3;
- (void)animationTimerFired:(double)a3;
- (void)attachInvisibleInkEffectView;
- (void)clearFilters;
- (void)configureForComposition:(id)a3;
- (void)configureForMediaObject:(id)a3 previewWidth:(double)a4 orientation:(char)a5 hasInvisibleInkEffect:(BOOL)a6;
- (void)configureForMessagePart:(id)a3;
- (void)configureForTranscriptPlugin:(id)a3;
- (void)dealloc;
- (void)detachInvisibleInkEffectView;
- (void)didMoveToWindow;
- (void)invisibleInkEffectViewWasResumed;
- (void)invisibleInkEffectViewWasUncovered;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setAnimatedImage:(id)a3;
- (void)setCanUseOpaqueMask:(BOOL)a3;
- (void)setHasTail:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setImageAlpha:(double)a3;
- (void)setIsIrisAsset:(BOOL)a3;
- (void)setIsMonoskiAsset:(BOOL)a3;
- (void)setSuppressMask:(BOOL)a3;
- (void)tapGestureRecognized:(id)a3;
- (void)updateAnimationTimerObserving;
- (void)updateBalloonMasks;
@end

@implementation CKImageBalloonView

- (void)configureForMediaObject:(id)a3 previewWidth:(double)a4 orientation:(char)a5 hasInvisibleInkEffect:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v37.receiver = self;
  v37.super_class = CKImageBalloonView;
  [(CKBalloonView *)&v37 configureForMediaObject:v10 previewWidth:v7 orientation:a4];
  if (CKIsRunningInMacCatalyst())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = +[CKUIBehavior sharedBehaviors];
      [v11 mapPreviewMaxWidth];
      a4 = v12;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v10;
    if ([v13 isSticker])
    {
      v14 = [v13 sticker];
      v15 = [v14 externalURI];
      v16 = [v15 hasPrefix:@"sticker:///emoji/"];

      v17 = [v14 representations];
      v18 = [v17 firstObject];

      if (v18)
      {
        [v18 size];
        v20 = v19;
        v21 = [(CKImageBalloonView *)self traitCollection];
        [v21 displayScale];
        v23 = v20 / v22;

        [v18 size];
        v25 = v24;
        v26 = [(CKImageBalloonView *)self traitCollection];
        [v26 displayScale];
        v28 = v25 / v27;
      }

      else
      {
        v23 = *MEMORY[0x1E695F060];
        v28 = *(MEMORY[0x1E695F060] + 8);
      }

      v29 = +[CKUIBehavior sharedBehaviors];
      v30 = [(CKImageBalloonView *)self traitCollection];
      [v30 displayScale];
      [v29 stickerInlinePreviewMaxWidthForImageSize:v16 isEmoji:v23 displayScale:{v28, v31}];
      a4 = v32;
    }
  }

  v33 = [v10 previewForWidth:v7 orientation:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CKImageBalloonView *)self setAnimatedImage:v33];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CKImageBalloonView *)self setImage:v33];
      [(CKBalloonView *)self configureForEffectViewWithMediaObject:v10];
    }
  }

  if (v6)
  {
    v34 = [v10 invisibleInkEffectImageWithPreview:v33];
    [(CKBalloonImageView *)self setInvisibleInkEffectImage:v34];
  }

  if ([v10 isMonoskiAsset])
  {
    [(CKImageBalloonView *)self setIsMonoskiAsset:1];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [v10 isIrisAsset];
      v36 = self;
    }

    else
    {
      v36 = self;
      v35 = 0;
    }

    [(CKImageBalloonView *)v36 setIsIrisAsset:v35];
  }
}

- (void)configureForComposition:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CKImageBalloonView;
  [(CKBalloonView *)&v17 configureForComposition:v4];
  v5 = [v4 shelfPluginPayload];
  v6 = [v5 pluginBundleID];

  if ([v6 isEqualToString:*MEMORY[0x1E69A6A00]])
  {
    v7 = +[CKBalloonPluginManager sharedInstance];
    v8 = [v7 existingPhotoBrowserViewController];
LABEL_5:
    v11 = v8;

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v14 = 0;
      goto LABEL_12;
    }

    v12 = [v11 fetchPluginPayloadsAndClear:0];
    v13 = [v12 lastObject];
    v14 = [v13 mediaObjectFromPayload];

    goto LABEL_11;
  }

  v9 = IMBalloonExtensionIDWithSuffix();
  v10 = [v6 isEqualToString:v9];

  if (v10)
  {
    v7 = +[CKBalloonPluginManager sharedInstance];
    v8 = [v7 viewControllerForPluginIdentifier:v6];
    goto LABEL_5;
  }

  v11 = [v4 shelfPluginPayload];
  if ([v11 shouldSendAsMediaObject])
  {
    v14 = [v11 mediaObjectFromPayload];
    goto LABEL_12;
  }

  v12 = [v4 mediaObjects];
  v14 = [v12 lastObject];
LABEL_11:

LABEL_12:
  if (v14)
  {
    v15 = +[CKUIBehavior sharedBehaviors];
    [v15 previewMaxWidth];
    [(CKImageBalloonView *)self configureForMediaObject:v14 previewWidth:1 orientation:1 hasInvisibleInkEffect:?];
  }

  v16 = [v4 sendLaterPluginInfo];

  if (v16)
  {
    [(CKImageBalloonView *)self setScheduled:1];
    [(CKBalloonView *)self setBalloonStyle:3];
  }
}

- (void)dealloc
{
  v3 = +[CKImageAnimationTimer sharedTimer];
  [v3 removeAnimationTimerObserver:self];

  v4.receiver = self;
  v4.super_class = CKImageBalloonView;
  [(CKBalloonView *)&v4 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CKImageBalloonView *)self animatedImage];
  v8.receiver = self;
  v8.super_class = CKImageBalloonView;
  v5 = [(CKBalloonView *)&v8 description];
  v6 = [v3 stringWithFormat:@"[CKImageBalloonView animatedImage:%@ %@]", v4, v5];

  return v6;
}

- (CKImageBalloonView)initWithFrame:(CGRect)a3
{
  v23.receiver = self;
  v23.super_class = CKImageBalloonView;
  v3 = [(CKBalloonView *)&v23 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    v5 = [v4 theme];
    v6 = [v5 unfilledBalloonColorForColorType:0xFFFFFFFFLL];
    [v6 ck_imColorComponents];
    [(CKBalloonView *)v3 setStrokeColor:?];

    v7 = objc_alloc(MEMORY[0x1E69DCAE0]);
    [(CKImageBalloonView *)v3 bounds];
    v8 = [v7 initWithFrame:?];
    [v8 setContentMode:2];
    [(CKImageBalloonView *)v3 setImageContentView:v8];
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v3 selector:sel__animatedImagesStateChanged_ name:*MEMORY[0x1E69E4EA8] object:0];

    if (([objc_opt_class() usesCustomImageBalloonMaterial] & 1) == 0)
    {
      v10 = [(CKImageBalloonView *)v3 traitCollection];
      v11 = [_TtC7ChatKit18CKBalloonMaskLayer alloc];
      [(CKImageBalloonView *)v3 imageContentMaskBalloonDescriptor];
      v12 = [(CKBalloonMaskLayer *)v11 initWithDescriptor:v22];
      imageContentViewMaskLayer = v3->_imageContentViewMaskLayer;
      v3->_imageContentViewMaskLayer = v12;

      v14 = [_TtC7ChatKit14CKBalloonLayer alloc];
      [(CKImageBalloonView *)v3 imageBackdropBalloonDescriptor];
      v15 = [(CKBalloonLayer *)v14 initWithDescriptor:v22 traitCollection:v10];
      imageContentBackdropBalloonLayer = v3->_imageContentBackdropBalloonLayer;
      v3->_imageContentBackdropBalloonLayer = v15;
    }

    v17 = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
    v18 = [v17 mutableCopy];

    [v18 addObject:objc_opt_class()];
    [v18 addObject:objc_opt_class()];
    v19 = [v18 copy];
    v20 = [(CKImageBalloonView *)v3 registerForTraitChanges:v19 withHandler:&__block_literal_global_50];
  }

  return v3;
}

- (void)tapGestureRecognized:(id)a3
{
  v4 = a3;
  v5 = +[CKImageAnimationTimer accessibilityAnimatedImagesDisabled];
  v6 = [(CKObscurableBalloonView *)self isObscured];
  if (!self->_animatedImage || v6 || !v5)
  {
    goto LABEL_10;
  }

  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = [v7 playButtonImage];
  [v8 size];
  v10 = v9;
  v12 = v11;

  [(CKImageBalloonView *)self bounds];
  [(CKImageBalloonView *)self alignmentRectForFrame:?];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  if (CKMainScreenScale_once_19 != -1)
  {
    [CKImageBalloonView tapGestureRecognized:];
  }

  v21 = *&CKMainScreenScale_sMainScreenScale_19;
  if (*&CKMainScreenScale_sMainScreenScale_19 == 0.0)
  {
    v21 = 1.0;
  }

  v22 = floor((v14 + (v18 - v10) * 0.5) * v21) / v21;
  v23 = floor((v16 + (v20 - v12) * 0.5) * v21) / v21;
  v24 = [(CKImageBalloonView *)self userExplicitlyUnpausedAnimation];
  [v4 locationInView:self];
  v30.x = v25;
  v30.y = v26;
  v31.origin.x = v22;
  v31.origin.y = v23;
  v31.size.width = v10;
  v31.size.height = v12;
  v27 = CGRectContainsPoint(v31, v30);
  if (v24 || v27)
  {
    [(CKImageBalloonView *)self setUserExplicitlyUnpausedAnimation:[(CKImageBalloonView *)self userExplicitlyUnpausedAnimation]^ 1];
    if (v24)
    {
      v28 = [(CKImageBalloonView *)self image];
      [(CKImageBalloonView *)self setImage:v28];
    }
  }

  else
  {
LABEL_10:
    v29.receiver = self;
    v29.super_class = CKImageBalloonView;
    [(CKObscurableBalloonView *)&v29 tapGestureRecognized:v4];
  }
}

- (void)_animatedImagesStateChanged:(id)a3
{
  v4 = [(CKImageBalloonView *)self image];
  [(CKImageBalloonView *)self setImage:v4];
}

- (id)_addPauseButtonToImage:(id)a3
{
  v4 = a3;
  v5 = [(CKImageBalloonView *)self traitCollection];
  [v5 displayScale];
  v7 = v6;

  v8 = +[CKUIBehavior sharedBehaviors];
  [v8 thumbnailContentAlignmentInsetsForOrientation:{-[CKBalloonView orientation](self, "orientation")}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [CKMovieMediaObject playButtonPreviewForUIImage:v4 scale:v7 contentAlignmentInsets:v10, v12, v14, v16];

  return v17;
}

- (UIEdgeInsets)safeAreaInsets
{
  v19.receiver = self;
  v19.super_class = CKImageBalloonView;
  [(CKImageBalloonView *)&v19 safeAreaInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = +[CKUIBehavior sharedBehaviors];
  [v11 balloonMaskTailSizeForTailShape:1];
  v13 = v12;

  v14 = [(CKBalloonView *)self orientation];
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = v10;
  }

  if (v14)
  {
    v16 = v6;
  }

  else
  {
    v16 = v6 + v13;
  }

  v17 = v4;
  v18 = v8;
  result.right = v15;
  result.bottom = v18;
  result.left = v16;
  result.top = v17;
  return result;
}

- (UIEdgeInsets)imageInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  if ([(CKImageBalloonView *)self isScheduled])
  {
    v6 = +[CKUIBehavior sharedBehaviors];
    [v6 imageSendLaterInsets];
    v3 = v7;
    v2 = v8;
    v4 = v9;
    v5 = v10;
  }

  v11 = v3;
  v12 = v2;
  v13 = v4;
  v14 = v5;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)layoutSubviews
{
  v114.receiver = self;
  v114.super_class = CKImageBalloonView;
  [(CKObscurableBalloonView *)&v114 layoutSubviews];
  [(CKImageBalloonView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CKImageBalloonView *)self irisBadgeView];

  if (v11)
  {
    v12 = +[CKUIBehavior sharedBehaviors];
    [v12 verticalBalloonBadgeInset];
    v14 = v13;

    v15 = +[CKUIBehavior sharedBehaviors];
    [v15 horizontalBalloonBadgeInset];
    v17 = v16;

    v18 = [(CKImageBalloonView *)self irisBadgeView];
    [v18 sizeToFit];

    v19 = [(CKImageBalloonView *)self irisBadgeView];
    [v19 frame];
    v21 = v20;
    v23 = v22;

    if (![(CKBalloonView *)self orientation])
    {
      v24 = +[CKUIBehavior sharedBehaviors];
      [v24 balloonMaskTailSizeForTailShape:1];
      v17 = v17 + v25;
    }

    v26 = [(CKImageBalloonView *)self irisBadgeView];
    [v26 setFrame:{v17, v14, v21, v23}];

    v27 = [(CKImageBalloonView *)self irisBadgeView];
    [(CKImageBalloonView *)self bringSubviewToFront:v27];
  }

  v28 = [(CKImageBalloonView *)self monoskiBadgeView];

  if (v28)
  {
    [(CKImageBalloonView *)self safeAreaInsets];
    v103 = v29;
    [(CKImageBalloonView *)self safeAreaInsets];
    v31 = v30;
    [(CKImageBalloonView *)self bounds];
    v33 = v32;
    [(CKImageBalloonView *)self safeAreaInsets];
    v35 = v34;
    [(CKImageBalloonView *)self safeAreaInsets];
    v37 = v33 - (v35 + v36);
    [(CKImageBalloonView *)self bounds];
    v39 = v38;
    [(CKImageBalloonView *)self safeAreaInsets];
    v40 = v8;
    v41 = v10;
    v42 = v4;
    v43 = v6;
    v45 = v44;
    [(CKImageBalloonView *)self safeAreaInsets];
    v47 = v39 - (v45 + v46);
    v48 = [(CKImageBalloonView *)self monoskiBadgeView];
    v49 = v47;
    v6 = v43;
    v4 = v42;
    v10 = v41;
    v8 = v40;
    [v48 setFrame:{v103, v31, v37, v49}];

    if (![(CKObscurableBalloonView *)self isObscured])
    {
      v50 = [(CKImageBalloonView *)self monoskiBadgeView];
      [(CKImageBalloonView *)self bringSubviewToFront:v50];
    }
  }

  [(CKImageBalloonView *)self imageInsets];
  v55.f64[0] = v51;
  v55.f64[1] = v52;
  v56.f64[0] = v53;
  v56.f64[1] = v54;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*MEMORY[0x1E69DDCE0], v55), vceqq_f64(*(MEMORY[0x1E69DDCE0] + 16), v56)))) & 1) == 0)
  {
    v100 = v52;
    v101 = v51;
    v102 = v54;
    v104 = v53;
    v57 = [(CKBalloonView *)self bubblePath];
    [v57 tailInsetsForBubbleSize:{v8, v10}];
    v4 = v100 + v4 + v58;
    v6 = v101 + v6 + v59;
    v8 = v8 - (v58 + v60) - (v100 + v102);
    v10 = v10 - (v59 + v61) - (v101 + v104);
  }

  [(UIImageView *)self->_imageContentView setFrame:v4, v6, v8, v10];
  imageContentView = self->_imageContentView;
  if ([(CKImageBalloonView *)self isScheduled])
  {
    v63 = +[CKUIBehavior sharedBehaviors];
    [v63 scheduledImageBalloonAlpha];
    [(UIImageView *)imageContentView setAlpha:?];
  }

  else
  {
    [(UIImageView *)imageContentView setAlpha:1.0];
  }

  [(UIImageView *)self->_imageContentView setHidden:[(CKBalloonImageView *)self imageHidden]];
  v64 = [(CKBalloonView *)self invisibleInkEffectController];
  v65 = [v64 effectView];
  [(UIImageView *)self->_imageContentView frame];
  [v65 setFrame:?];

  v66 = [(CKImageBalloonView *)self gradientView];

  if (v66)
  {
    [(CKImageBalloonView *)self bounds];
    v68 = v67;
    [(CKImageBalloonView *)self bounds];
    v70 = v69;
    [(CKImageBalloonView *)self bounds];
    v72 = v71;
    [(CKImageBalloonView *)self bounds];
    v74 = v73 * 0.5;
    v75 = [(CKImageBalloonView *)self gradientLayer];
    [v75 setFrame:{v68, v70, v72, v74}];

    [(CKImageBalloonView *)self bounds];
    v77 = v76;
    [(CKImageBalloonView *)self bounds];
    v79 = v78;
    [(CKImageBalloonView *)self bounds];
    v81 = v79 + v80 * 0.5;
    [(CKImageBalloonView *)self bounds];
    v83 = v82;
    [(CKImageBalloonView *)self bounds];
    v85 = v84 * 0.5;
    v86 = [(CKImageBalloonView *)self gradientView];
    [v86 setFrame:{v77, v81, v83, v85}];
  }

  [(CKImageBalloonView *)self updateBalloonMasks];
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  [(CKImageBalloonView *)self imageContentMaskBalloonDescriptor];
  imageContentViewMaskLayer = self->_imageContentViewMaskLayer;
  v105[4] = v110;
  v105[5] = v111;
  v105[6] = v112;
  v105[7] = v113;
  v105[0] = v106;
  v105[1] = v107;
  v105[2] = v108;
  v105[3] = v109;
  [(CKBalloonMaskLayer *)imageContentViewMaskLayer updateDescriptor:v105];
  [(UIImageView *)self->_imageContentView bounds];
  [(CKBalloonMaskLayer *)self->_imageContentViewMaskLayer setBounds:?];
  [(UIImageView *)self->_imageContentView bounds];
  MidX = CGRectGetMidX(v115);
  [(UIImageView *)self->_imageContentView bounds];
  [(CKBalloonMaskLayer *)self->_imageContentViewMaskLayer setPosition:MidX, CGRectGetMidY(v116)];
  v89 = self->_imageContentViewMaskLayer;
  v90 = [(UIImageView *)self->_imageContentView layer];
  [v90 setMask:v89];

  v91 = [(CKBalloonView *)self backdropFilterLayer];
  if (!v91)
  {
    [(CKBalloonLayer *)self->_imageContentBackdropBalloonLayer setHidden:[(CKImageBalloonView *)self shouldShowImageBackdropBalloonLayer]^ 1];
    goto LABEL_22;
  }

  [(CKBalloonLayer *)self->_imageContentBackdropBalloonLayer setHidden:1];
  v92 = [v91 superlayer];
  v93 = [(CKImageBalloonView *)self layer];

  v94 = [(CKImageBalloonView *)self layer];
  v95 = v94;
  if (v92 != v93)
  {
    goto LABEL_19;
  }

  v96 = [v94 sublayers];
  v97 = [v96 indexOfObject:v91];

  if (v97)
  {
    v95 = [(CKImageBalloonView *)self layer];
LABEL_19:
    [v95 insertSublayer:v91 atIndex:0];
  }

  v98 = [_TtC7ChatKit18CKBalloonMaskLayer alloc];
  [(CKBalloonView *)self balloonDescriptor];
  v99 = [(CKBalloonMaskLayer *)v98 initWithDescriptor:v105];
  [(CKImageBalloonView *)self bounds];
  [(CKBalloonMaskLayer *)v99 setFrame:?];
  [v91 setMask:v99];

LABEL_22:
}

- (CKBalloonDescriptor_t)imageContentMaskBalloonDescriptor
{
  *&retstr->var9 = 0u;
  *&retstr->var11 = 0u;
  *&retstr->var8.red = 0u;
  *&retstr->var8.blue = 0u;
  *&retstr->var7.red = 0u;
  *&retstr->var7.blue = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var5 = 0u;
  [(CKBalloonView *)self balloonDescriptor];
  result = [(CKImageBalloonView *)self imageInsets];
  v9.f64[1] = v6;
  v10.f64[0] = v7;
  v10.f64[1] = v8;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*MEMORY[0x1E69DDCE0], v9), vceqq_f64(*(MEMORY[0x1E69DDCE0] + 16), v10)))) & 1) == 0)
  {
    retstr->var1 = 0;
    *&retstr->var13 = 256;
    if (v6 >= v8)
    {
      v11 = v6;
    }

    else
    {
      v11 = v8;
    }

    if (v11 < v7)
    {
      v11 = v7;
    }

    retstr->var5 = retstr->var5 - v11;
  }

  return result;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = CKImageBalloonView;
  [(CKImageBalloonView *)&v3 didMoveToWindow];
  [(CKImageBalloonView *)self updateAnimationTimerObserving];
}

- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5
{
  height = a3.height;
  width = a3.width;
  v8 = [(CKImageBalloonView *)self animatedImage:a4];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 image];
    [v10 size];
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v10 = [(CKImageBalloonView *)self imageContentView];
    v15 = [v10 image];
    [v15 size];
    v12 = v16;
    v14 = v17;
  }

  if (width < v12 || height < v14)
  {
    v19 = width / v12;
    v20 = 0.0;
    if (v12 == 0.0)
    {
      v19 = 0.0;
    }

    if (v14 != 0.0)
    {
      v20 = height / v14;
    }

    v21 = fmin(v19, v20);
    v12 = ceil(v12 * v21);
    v14 = ceil(v14 * v21);
  }

  v22 = v12;
  v23 = v14;
  result.height = v23;
  result.width = v22;
  return result;
}

- (void)prepareForDisplay
{
  v5.receiver = self;
  v5.super_class = CKImageBalloonView;
  [(CKBalloonView *)&v5 prepareForDisplay];
  v3 = [(CKImageBalloonView *)self imageContentView];
  [v3 removeFromSuperview];

  v4 = [(CKImageBalloonView *)self imageContentView];
  [(CKImageBalloonView *)self insertSubview:v4 atIndex:0];

  [(CKImageBalloonView *)self updateBalloonMasks];
}

- (id)highlightOverlayColor
{
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 imageBalloonSelectionOverlayColor];

  return v3;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CKImageBalloonView;
  [(CKObscurableBalloonView *)&v4 prepareForReuse];
  [(CKImageBalloonView *)self setImage:0];
  [(CKImageBalloonView *)self setAnimatedImage:0];
  [(CKImageBalloonView *)self setIsIrisAsset:0];
  [(CKImageBalloonView *)self setIsMonoskiAsset:0];
  [(CKImageBalloonView *)self setSuppressMask:0];
  [(CKImageBalloonView *)self setScheduled:0];
  v3 = [(CKImageBalloonView *)self imageContentView];
  [v3 setAlpha:1.0];

  [(CKImageBalloonView *)self setGradientView:0];
}

- (BOOL)needsGlassPlatter
{
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isTranscriptPortalEnabled];

  if (!v4)
  {
    return 0;
  }

  v5 = [(CKImageBalloonView *)self traitCollection];
  v6 = [v5 isTranscriptBackgroundActive];

  return v6;
}

- (void)setHasTail:(BOOL)a3
{
  v3 = a3;
  if ([(CKBalloonView *)self hasTail]!= a3)
  {
    v5.receiver = self;
    v5.super_class = CKImageBalloonView;
    [(CKBalloonView *)&v5 setHasTail:v3];
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setCanUseOpaqueMask:(BOOL)a3
{
  if ([(CKBalloonView *)self canUseOpaqueMask]!= a3)
  {
    v4.receiver = self;
    v4.super_class = CKImageBalloonView;
    [(CKBalloonView *)&v4 setCanUseOpaqueMask:0];
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setAnimatedImage:(id)a3
{
  v5 = a3;
  if (self->_animatedImage != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_animatedImage, a3);
    v6 = [(CKAnimatedImage *)self->_animatedImage frames];
    if ([v6 count] == 1)
    {

      v6 = 0;
    }

    [(CKImageBalloonView *)self setFrames:v6];
    if ([v6 count])
    {
      [v6 objectAtIndex:0];
    }

    else
    {
      [(CKAnimatedImage *)v8 image];
    }
    v7 = ;
    [(CKImageBalloonView *)self setImage:v7];

    [(CKImageBalloonView *)self updateAnimationTimerObserving];
    v5 = v8;
  }
}

- (id)image
{
  v2 = [(CKImageBalloonView *)self imageContentView];
  v3 = [v2 image];

  return v3;
}

- (void)setImage:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_animatedImage && +[CKImageAnimationTimer accessibilityAnimatedImagesDisabled]&& ![(CKImageBalloonView *)self userExplicitlyUnpausedAnimation])
  {
    v5 = [(CKImageBalloonView *)self _addPauseButtonToImage:v4];

    v4 = v5;
  }

  v6 = [(CKImageBalloonView *)self imageContentView];
  [v6 setImage:v4];

  if ([(CKBalloonView *)self hasSuggestedActionsMenu])
  {
    [(UIView *)self->_gradientView removeFromSuperview];
    [(CAGradientLayer *)self->_gradientLayer removeFromSuperlayer];
    v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
    gradientView = self->_gradientView;
    self->_gradientView = v7;

    v9 = [MEMORY[0x1E6979380] layer];
    gradientLayer = self->_gradientLayer;
    self->_gradientLayer = v9;

    v11 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.2];
    v12 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0];
    v15[0] = [v11 CGColor];
    v15[1] = [v12 CGColor];
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    [(CAGradientLayer *)self->_gradientLayer setColors:v13];

    [(CAGradientLayer *)self->_gradientLayer setStartPoint:0.0, 1.0];
    [(CAGradientLayer *)self->_gradientLayer setEndPoint:0.0, 0.0];
    v14 = [(UIView *)self->_gradientView layer];
    [v14 insertSublayer:self->_gradientLayer atIndex:0];

    [(CKImageBalloonView *)self addSubview:self->_gradientView];
  }
}

- (UIEdgeInsets)alignmentRectInsetsForBoundsSize:(CGSize)a3
{
  v3 = [(CKImageBalloonView *)self imageContentView:a3.width];
  v4 = [v3 image];

  if (!v4)
  {
    v6 = *MEMORY[0x1E69DDCE0];
    v15 = *(MEMORY[0x1E69DDCE0] + 8);
    v10 = *(MEMORY[0x1E69DDCE0] + 16);
    v12 = *(MEMORY[0x1E69DDCE0] + 24);
    goto LABEL_8;
  }

  [v4 alignmentRectInsets];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [v4 imageOrientation];
  if (!v13)
  {
LABEL_7:
    v15 = v8;
    goto LABEL_8;
  }

  v14 = v13;
  if (v13 != 4)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"UIEdgeInsets CKEdgeInsetsWithImageOrientation(UIEdgeInsets, UIImageOrientation)"}];
    [v16 handleFailureInFunction:v17 file:@"CKGeometry.h" lineNumber:443 description:{@"CKEdgeInsetsWithImageOrientation %ld hasn't been implemented", v14}];

    goto LABEL_7;
  }

  v15 = v12;
  v12 = v8;
LABEL_8:

  v18 = v6;
  v19 = v15;
  v20 = v10;
  v21 = v12;
  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

- (void)setIsIrisAsset:(BOOL)a3
{
  v3 = a3;
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 showsBalloonBadges];

  if (v6 && self->_isIrisAsset != v3)
  {
    self->_isIrisAsset = v3;
    if (v3 && !self->_isMonoskiAsset)
    {
      v9 = [(CKImageBalloonView *)self irisBadgeView];

      if (!v9)
      {
        v10 = objc_alloc(MEMORY[0x1E69DCAE0]);
        v11 = +[CKUIBehavior sharedBehaviors];
        v12 = [v11 livePhotoBadgeImage];
        v19 = [v10 initWithImage:v12];

        v13 = [v19 layer];
        LODWORD(v14) = 0.5;
        [v13 setShadowOpacity:v14];

        v15 = [v19 layer];
        [v15 setShadowOffset:{0.0, 0.0}];

        v16 = [v19 layer];
        [v16 setShadowRadius:1.0];

        v17 = [(CKBalloonView *)self invisibleInkEffectController];
        v18 = [v17 effectView];

        if (v18)
        {
          [(CKImageBalloonView *)self insertSubview:v19 belowSubview:v18];
        }

        else
        {
          [(CKImageBalloonView *)self addSubview:v19];
        }

        [(CKImageBalloonView *)self setIrisBadgeView:v19];
      }
    }

    else
    {
      v7 = [(CKImageBalloonView *)self irisBadgeView];

      if (v7)
      {
        v8 = [(CKImageBalloonView *)self irisBadgeView];
        [v8 removeFromSuperview];

        [(CKImageBalloonView *)self setIrisBadgeView:0];
      }
    }
  }
}

- (void)setIsMonoskiAsset:(BOOL)a3
{
  v3 = a3;
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 showsBalloonBadges];

  if (v6 && self->_isMonoskiAsset != v3)
  {
    self->_isMonoskiAsset = v3;
    v7 = [(CKImageBalloonView *)self monoskiBadgeView];
    v8 = v7;
    if (v3)
    {

      if (!v8)
      {
        v12 = [_TtC7ChatKit25CKMonoskiBadgeViewFactory badgeViewWithSupportsGradient:[(CKImageBalloonView *)self isScheduled]^ 1];
        v9 = [(CKBalloonView *)self invisibleInkEffectController];
        v10 = [v9 effectView];

        if (v10)
        {
          [(CKImageBalloonView *)self insertSubview:v12 belowSubview:v10];
        }

        else
        {
          [(CKImageBalloonView *)self addSubview:v12];
        }

        [(CKImageBalloonView *)self setMonoskiBadgeView:v12];
        [(CKImageBalloonView *)self setIsIrisAsset:0];
        [(CKImageBalloonView *)self updateBalloonMasks];
      }
    }

    else
    {

      if (v8)
      {
        v11 = [(CKImageBalloonView *)self monoskiBadgeView];
        [v11 removeFromSuperview];

        [(CKImageBalloonView *)self setMonoskiBadgeView:0];
      }
    }
  }
}

- (void)animationTimerFired:(double)a3
{
  if (![(CKBalloonView *)self animationPaused])
  {
    v5 = [(CKAnimatedImage *)self->_animatedImage frameForAnimationTime:a3];
    [(CKImageBalloonView *)self setImage:v5];
  }
}

- (void)attachInvisibleInkEffectView
{
  v3 = [(CKBalloonView *)self invisibleInkEffectController];
  v10 = [v3 effectView];

  [(CKImageBalloonView *)self addSubview:v10];
  v4 = [(CKBalloonView *)self stickerEffectView];
  v5 = v4 != 0;

  [(CKImageBalloonView *)self insertSubview:v10 atIndex:v5];
  v6 = [(CKImageBalloonView *)self irisBadgeView];

  if (v6)
  {
    v7 = [(CKImageBalloonView *)self irisBadgeView];
    [(CKImageBalloonView *)self insertSubview:v7 belowSubview:v10];
  }

  v8 = [(CKImageBalloonView *)self monoskiBadgeView];

  if (v8)
  {
    v9 = [(CKImageBalloonView *)self monoskiBadgeView];
    [(CKImageBalloonView *)self insertSubview:v9 belowSubview:v10];
  }
}

- (void)detachInvisibleInkEffectView
{
  v3 = [(CKBalloonView *)self invisibleInkEffectController];
  v8 = [v3 effectView];

  [v8 removeFromSuperview];
  v4 = [(CKImageBalloonView *)self irisBadgeView];

  if (v4)
  {
    v5 = [(CKImageBalloonView *)self irisBadgeView];
    [(CKImageBalloonView *)self addSubview:v5];
  }

  v6 = [(CKImageBalloonView *)self monoskiBadgeView];

  if (v6)
  {
    v7 = [(CKImageBalloonView *)self monoskiBadgeView];
    [(CKImageBalloonView *)self addSubview:v7];
  }
}

- (void)invisibleInkEffectViewWasUncovered
{
  v3 = [(CKImageBalloonView *)self animatedImage];
  v4 = [v3 image];
  [v4 duration];
  v6 = v5;

  v7 = 5.0;
  if (v6 > 0.0)
  {
    v7 = v6 * ceil(5.0 / v6);
  }

  v8 = [(CKBalloonView *)self invisibleInkEffectController];
  [v8 suspendForTimeInterval:v7];
}

- (void)invisibleInkEffectViewWasResumed
{
  [(CKImageBalloonView *)self setAnimationFrameOffset:0];
  v3 = [(CKImageBalloonView *)self frames];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(CKImageBalloonView *)self frames];
    v6 = [v5 firstObject];
    [(CKImageBalloonView *)self setImage:v6];
  }

  [(CKImageBalloonView *)self updateAnimationTimerObserving];
}

- (void)updateAnimationTimerObserving
{
  v3 = [(CKImageBalloonView *)self frames];
  if ([v3 count] < 2 || (-[CKImageBalloonView window](self, "window"), (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_7;
  }

  v5 = v4;
  if ([(CKBalloonView *)self invisibleInkEffectEnabled])
  {
    v6 = [(CKBalloonView *)self invisibleInkEffectController];
    v7 = [v6 isSuspended];

    if (v7)
    {
      goto LABEL_9;
    }

LABEL_7:
    v8 = +[CKImageAnimationTimer sharedTimer];
    [v8 removeAnimationTimerObserver:self];
    goto LABEL_10;
  }

LABEL_9:
  v8 = +[CKImageAnimationTimer sharedTimer];
  [v8 addAnimationTimerObserver:self];
LABEL_10:
}

- (void)addFilter:(id)a3
{
  v4 = a3;
  v5 = [v4 balloonBackdropFilters];
  v6 = [v5 count];

  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(43);
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_DEBUG, "Cannot have two backdrop filter layers", buf, 2u);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      v8 = [(CKBalloonView *)self backdropFilterLayer];
      _CKAssert(v8 == 0);
    }

    v9 = [(CKBalloonView *)self backdropFilterLayer];

    if (v9)
    {
      v10 = [(CKBalloonView *)self backdropFilterLayer];
      [v10 removeFromSuperlayer];

      [(CKBalloonView *)self setBackdropFilterLayer:0];
    }

    v11 = [(CKImageBalloonView *)self layer];
    [v11 setAllowsGroupBlending:0];

    v12 = objc_alloc_init(MEMORY[0x1E6979310]);
    [(CKImageBalloonView *)self bounds];
    [v12 setFrame:?];
    [v12 setGroupName:@"FSMBackdropGroup"];
    v13 = [v4 balloonBackdropFilters];
    [v12 setFilters:v13];

    [v12 setScale:0.25];
    [(CKBalloonView *)self setBackdropFilterLayer:v12];
    [(CKBalloonView *)self setInvisibleInkEffectEnabled:0];
  }

  v14 = [(CKImageBalloonView *)self layer];
  v15 = [v4 balloonFilters];
  [v14 setFilters:v15];

  v16 = [(CKImageBalloonView *)self layer];
  v17 = [v4 balloonCompositingFilter];
  [v16 setCompositingFilter:v17];

  v18.receiver = self;
  v18.super_class = CKImageBalloonView;
  [(CKBalloonView *)&v18 addFilter:v4];
  [(CKImageBalloonView *)self setNeedsLayout];
}

- (void)clearFilters
{
  v3 = [(CKImageBalloonView *)self layer];
  [v3 setAllowsGroupBlending:1];

  v4 = [(CKBalloonView *)self backdropFilterLayer];
  [v4 removeFromSuperlayer];

  [(CKBalloonView *)self setBackdropFilterLayer:0];
  v5 = [(CKImageBalloonView *)self layer];
  [v5 setFilters:0];

  v6 = [(CKImageBalloonView *)self layer];
  [v6 setCompositingFilter:0];

  v7.receiver = self;
  v7.super_class = CKImageBalloonView;
  [(CKBalloonView *)&v7 clearFilters];
}

- (void)setSuppressMask:(BOOL)a3
{
  if (self->_suppressMask != a3)
  {
    self->_suppressMask = a3;
    [(CKBalloonView *)self setNeedsPrepareForDisplay];

    [(CKBalloonView *)self prepareForDisplayIfNeeded];
  }
}

- (BOOL)shouldShowImageBackdropBalloonLayer
{
  v3 = [(CKImageBalloonView *)self traitCollection];
  v4 = [v3 isTranscriptBackgroundActive];

  [(CKImageBalloonView *)self imageInsets];
  v6.f64[1] = v5;
  v8.f64[1] = v7;
  return (v4 | vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*MEMORY[0x1E69DDCE0], v6), vceqq_f64(*(MEMORY[0x1E69DDCE0] + 16), v8)))))) & 1;
}

- (CKBalloonDescriptor_t)imageBackdropBalloonDescriptor
{
  *&retstr->var9 = 0u;
  *&retstr->var11 = 0u;
  *&retstr->var8.red = 0u;
  *&retstr->var8.blue = 0u;
  *&retstr->var7.red = 0u;
  *&retstr->var7.blue = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var5 = 0u;
  [(CKBalloonView *)self balloonDescriptor];
  if ([(CKImageBalloonView *)self isScheduled])
  {
    v5 = 15;
  }

  else
  {
    v5 = -1;
  }

  retstr->var6 = v5;
  result = [(CKImageBalloonView *)self addFillToStyle:retstr->var2];
  retstr->var2 = result;
  retstr->var9 = 1;
  return result;
}

- (char)addFillToStyle:(char)a3
{
  v3 = 0x20404020200uLL >> (8 * a3);
  if (a3 >= 6)
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 6;
}

- (void)updateBalloonMasks
{
  if (([objc_opt_class() usesCustomImageBalloonMaterial] & 1) == 0)
  {
    [(CKImageBalloonView *)self bounds];
    [(CKBalloonLayer *)self->_imageContentBackdropBalloonLayer setFrame:?];
    v3 = [(CKImageBalloonView *)self traitCollection];
    imageContentBackdropBalloonLayer = self->_imageContentBackdropBalloonLayer;
    [(CKImageBalloonView *)self imageBackdropBalloonDescriptor];
    [(CKBalloonLayer *)imageContentBackdropBalloonLayer updateDescriptor:v17 traitCollection:v3];
    v5 = [(CKImageBalloonView *)self layer];
    v6 = self->_imageContentBackdropBalloonLayer;
    v7 = [(CKImageBalloonView *)self imageContentView];
    v8 = [v7 layer];
    [v5 insertSublayer:v6 below:v8];

    v9 = [(CKBalloonView *)self invisibleInkEffectController];
    v10 = [v9 effectView];

    if (v10)
    {
      v11 = [_TtC7ChatKit18CKBalloonMaskLayer alloc];
      [(CKBalloonView *)self balloonDescriptor];
      v12 = [(CKBalloonMaskLayer *)v11 initWithDescriptor:v17];
      [(CKImageBalloonView *)self bounds];
      [(CKBalloonMaskLayer *)v12 setFrame:?];
      v13 = [v10 layer];
      [v13 setMask:v12];
    }

    v14 = [(CKImageBalloonView *)self monoskiBadgeView];
    if (v14)
    {
      [(CKImageBalloonView *)self imageContentMaskBalloonDescriptor];
      v15 = [v14 layer];
      [v15 setCornerRadius:v16];
      [v15 setCornerCurve:*MEMORY[0x1E69796E8]];
      [v15 setMasksToBounds:1];
    }
  }
}

- (double)imageAlpha
{
  v2 = [(CKImageBalloonView *)self imageContentView];
  [v2 alpha];
  v4 = v3;

  return v4;
}

- (void)setImageAlpha:(double)a3
{
  v4 = [(CKImageBalloonView *)self imageContentView];
  [v4 setAlpha:a3];
}

- (void)configureForMessagePart:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CKImageBalloonView;
  [(CKBalloonView *)&v18 configureForMessagePart:v4];
  v5 = [v4 mediaObject];
  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 previewMaxWidth];
  v8 = v7;
  v9 = [v4 balloonOrientation];
  v10 = [v4 message];
  v11 = [v10 expressiveSendStyleID];
  -[CKImageBalloonView configureForMediaObject:previewWidth:orientation:hasInvisibleInkEffect:](self, "configureForMediaObject:previewWidth:orientation:hasInvisibleInkEffect:", v5, v9, [v11 isEqualToString:@"com.apple.MobileSMS.expressivesend.invisibleink"], v8);

  v12 = [v4 messageItem];
  v13 = [v12 scheduleType];

  if (v13 == 2 && ([v4 messageItem], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "scheduleState"), v14, v15 <= 5) && ((1 << v15) & 0x36) != 0)
  {
    [(CKImageBalloonView *)self setScheduled:1];
    v16 = 3;
  }

  else
  {
    [(CKImageBalloonView *)self setScheduled:0];
    v16 = [v4 balloonStyle];
  }

  [(CKBalloonView *)self setBalloonStyle:v16];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [v4 mediaObject];
    [(CKBalloonView *)self configureForEffectViewWithMediaObject:v17];
  }
}

- (void)configureForTranscriptPlugin:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CKImageBalloonView;
  [(CKBalloonView *)&v9 configureForMessagePart:v4];
  v5 = [v4 message];
  v6 = [v5 guid];
  v7 = [CKSnapshotUtilities snapshotForGUID:v6];

  v8 = [v7 image];
  [(CKImageBalloonView *)self setImage:v8];

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v4 wantsOutline])
  {
    [(CKBalloonView *)self setBalloonStyle:1];
  }
}

@end