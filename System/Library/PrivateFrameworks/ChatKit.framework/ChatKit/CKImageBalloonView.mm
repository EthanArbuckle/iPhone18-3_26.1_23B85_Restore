@interface CKImageBalloonView
- (BOOL)needsGlassPlatter;
- (BOOL)shouldShowImageBackdropBalloonLayer;
- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets;
- (CKBalloonDescriptor_t)imageBackdropBalloonDescriptor;
- (CKBalloonDescriptor_t)imageContentMaskBalloonDescriptor;
- (CKImageBalloonView)initWithFrame:(CGRect)frame;
- (NSString)description;
- (UIEdgeInsets)alignmentRectInsetsForBoundsSize:(CGSize)size;
- (UIEdgeInsets)imageInsets;
- (UIEdgeInsets)safeAreaInsets;
- (char)addFillToStyle:(char)style;
- (double)imageAlpha;
- (id)_addPauseButtonToImage:(id)image;
- (id)highlightOverlayColor;
- (id)image;
- (void)_animatedImagesStateChanged:(id)changed;
- (void)addFilter:(id)filter;
- (void)animationTimerFired:(double)fired;
- (void)attachInvisibleInkEffectView;
- (void)clearFilters;
- (void)configureForComposition:(id)composition;
- (void)configureForMediaObject:(id)object previewWidth:(double)width orientation:(char)orientation hasInvisibleInkEffect:(BOOL)effect;
- (void)configureForMessagePart:(id)part;
- (void)configureForTranscriptPlugin:(id)plugin;
- (void)dealloc;
- (void)detachInvisibleInkEffectView;
- (void)didMoveToWindow;
- (void)invisibleInkEffectViewWasResumed;
- (void)invisibleInkEffectViewWasUncovered;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setAnimatedImage:(id)image;
- (void)setCanUseOpaqueMask:(BOOL)mask;
- (void)setHasTail:(BOOL)tail;
- (void)setImage:(id)image;
- (void)setImageAlpha:(double)alpha;
- (void)setIsIrisAsset:(BOOL)asset;
- (void)setIsMonoskiAsset:(BOOL)asset;
- (void)setSuppressMask:(BOOL)mask;
- (void)tapGestureRecognized:(id)recognized;
- (void)updateAnimationTimerObserving;
- (void)updateBalloonMasks;
@end

@implementation CKImageBalloonView

- (void)configureForMediaObject:(id)object previewWidth:(double)width orientation:(char)orientation hasInvisibleInkEffect:(BOOL)effect
{
  effectCopy = effect;
  orientationCopy = orientation;
  objectCopy = object;
  v37.receiver = self;
  v37.super_class = CKImageBalloonView;
  [(CKBalloonView *)&v37 configureForMediaObject:objectCopy previewWidth:orientationCopy orientation:width];
  if (CKIsRunningInMacCatalyst())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = +[CKUIBehavior sharedBehaviors];
      [v11 mapPreviewMaxWidth];
      width = v12;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = objectCopy;
    if ([v13 isSticker])
    {
      sticker = [v13 sticker];
      externalURI = [sticker externalURI];
      v16 = [externalURI hasPrefix:@"sticker:///emoji/"];

      representations = [sticker representations];
      firstObject = [representations firstObject];

      if (firstObject)
      {
        [firstObject size];
        v20 = v19;
        traitCollection = [(CKImageBalloonView *)self traitCollection];
        [traitCollection displayScale];
        v23 = v20 / v22;

        [firstObject size];
        v25 = v24;
        traitCollection2 = [(CKImageBalloonView *)self traitCollection];
        [traitCollection2 displayScale];
        v28 = v25 / v27;
      }

      else
      {
        v23 = *MEMORY[0x1E695F060];
        v28 = *(MEMORY[0x1E695F060] + 8);
      }

      v29 = +[CKUIBehavior sharedBehaviors];
      traitCollection3 = [(CKImageBalloonView *)self traitCollection];
      [traitCollection3 displayScale];
      [v29 stickerInlinePreviewMaxWidthForImageSize:v16 isEmoji:v23 displayScale:{v28, v31}];
      width = v32;
    }
  }

  v33 = [objectCopy previewForWidth:orientationCopy orientation:width];
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
      [(CKBalloonView *)self configureForEffectViewWithMediaObject:objectCopy];
    }
  }

  if (effectCopy)
  {
    v34 = [objectCopy invisibleInkEffectImageWithPreview:v33];
    [(CKBalloonImageView *)self setInvisibleInkEffectImage:v34];
  }

  if ([objectCopy isMonoskiAsset])
  {
    [(CKImageBalloonView *)self setIsMonoskiAsset:1];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isIrisAsset = [objectCopy isIrisAsset];
      selfCopy2 = self;
    }

    else
    {
      selfCopy2 = self;
      isIrisAsset = 0;
    }

    [(CKImageBalloonView *)selfCopy2 setIsIrisAsset:isIrisAsset];
  }
}

- (void)configureForComposition:(id)composition
{
  compositionCopy = composition;
  v17.receiver = self;
  v17.super_class = CKImageBalloonView;
  [(CKBalloonView *)&v17 configureForComposition:compositionCopy];
  shelfPluginPayload = [compositionCopy shelfPluginPayload];
  pluginBundleID = [shelfPluginPayload pluginBundleID];

  if ([pluginBundleID isEqualToString:*MEMORY[0x1E69A6A00]])
  {
    v7 = +[CKBalloonPluginManager sharedInstance];
    existingPhotoBrowserViewController = [v7 existingPhotoBrowserViewController];
LABEL_5:
    shelfPluginPayload2 = existingPhotoBrowserViewController;

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      mediaObjectFromPayload = 0;
      goto LABEL_12;
    }

    mediaObjects = [shelfPluginPayload2 fetchPluginPayloadsAndClear:0];
    lastObject = [mediaObjects lastObject];
    mediaObjectFromPayload = [lastObject mediaObjectFromPayload];

    goto LABEL_11;
  }

  v9 = IMBalloonExtensionIDWithSuffix();
  v10 = [pluginBundleID isEqualToString:v9];

  if (v10)
  {
    v7 = +[CKBalloonPluginManager sharedInstance];
    existingPhotoBrowserViewController = [v7 viewControllerForPluginIdentifier:pluginBundleID];
    goto LABEL_5;
  }

  shelfPluginPayload2 = [compositionCopy shelfPluginPayload];
  if ([shelfPluginPayload2 shouldSendAsMediaObject])
  {
    mediaObjectFromPayload = [shelfPluginPayload2 mediaObjectFromPayload];
    goto LABEL_12;
  }

  mediaObjects = [compositionCopy mediaObjects];
  mediaObjectFromPayload = [mediaObjects lastObject];
LABEL_11:

LABEL_12:
  if (mediaObjectFromPayload)
  {
    v15 = +[CKUIBehavior sharedBehaviors];
    [v15 previewMaxWidth];
    [(CKImageBalloonView *)self configureForMediaObject:mediaObjectFromPayload previewWidth:1 orientation:1 hasInvisibleInkEffect:?];
  }

  sendLaterPluginInfo = [compositionCopy sendLaterPluginInfo];

  if (sendLaterPluginInfo)
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
  animatedImage = [(CKImageBalloonView *)self animatedImage];
  v8.receiver = self;
  v8.super_class = CKImageBalloonView;
  v5 = [(CKBalloonView *)&v8 description];
  v6 = [v3 stringWithFormat:@"[CKImageBalloonView animatedImage:%@ %@]", animatedImage, v5];

  return v6;
}

- (CKImageBalloonView)initWithFrame:(CGRect)frame
{
  v23.receiver = self;
  v23.super_class = CKImageBalloonView;
  v3 = [(CKBalloonView *)&v23 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    theme = [v4 theme];
    v6 = [theme unfilledBalloonColorForColorType:0xFFFFFFFFLL];
    [v6 ck_imColorComponents];
    [(CKBalloonView *)v3 setStrokeColor:?];

    v7 = objc_alloc(MEMORY[0x1E69DCAE0]);
    [(CKImageBalloonView *)v3 bounds];
    v8 = [v7 initWithFrame:?];
    [v8 setContentMode:2];
    [(CKImageBalloonView *)v3 setImageContentView:v8];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__animatedImagesStateChanged_ name:*MEMORY[0x1E69E4EA8] object:0];

    if (([objc_opt_class() usesCustomImageBalloonMaterial] & 1) == 0)
    {
      traitCollection = [(CKImageBalloonView *)v3 traitCollection];
      v11 = [_TtC7ChatKit18CKBalloonMaskLayer alloc];
      [(CKImageBalloonView *)v3 imageContentMaskBalloonDescriptor];
      v12 = [(CKBalloonMaskLayer *)v11 initWithDescriptor:v22];
      imageContentViewMaskLayer = v3->_imageContentViewMaskLayer;
      v3->_imageContentViewMaskLayer = v12;

      v14 = [_TtC7ChatKit14CKBalloonLayer alloc];
      [(CKImageBalloonView *)v3 imageBackdropBalloonDescriptor];
      v15 = [(CKBalloonLayer *)v14 initWithDescriptor:v22 traitCollection:traitCollection];
      imageContentBackdropBalloonLayer = v3->_imageContentBackdropBalloonLayer;
      v3->_imageContentBackdropBalloonLayer = v15;
    }

    systemTraitsAffectingColorAppearance = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
    v18 = [systemTraitsAffectingColorAppearance mutableCopy];

    [v18 addObject:objc_opt_class()];
    [v18 addObject:objc_opt_class()];
    v19 = [v18 copy];
    v20 = [(CKImageBalloonView *)v3 registerForTraitChanges:v19 withHandler:&__block_literal_global_50];
  }

  return v3;
}

- (void)tapGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  v5 = +[CKImageAnimationTimer accessibilityAnimatedImagesDisabled];
  isObscured = [(CKObscurableBalloonView *)self isObscured];
  if (!self->_animatedImage || isObscured || !v5)
  {
    goto LABEL_10;
  }

  v7 = +[CKUIBehavior sharedBehaviors];
  playButtonImage = [v7 playButtonImage];
  [playButtonImage size];
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
  userExplicitlyUnpausedAnimation = [(CKImageBalloonView *)self userExplicitlyUnpausedAnimation];
  [recognizedCopy locationInView:self];
  v30.x = v25;
  v30.y = v26;
  v31.origin.x = v22;
  v31.origin.y = v23;
  v31.size.width = v10;
  v31.size.height = v12;
  v27 = CGRectContainsPoint(v31, v30);
  if (userExplicitlyUnpausedAnimation || v27)
  {
    [(CKImageBalloonView *)self setUserExplicitlyUnpausedAnimation:[(CKImageBalloonView *)self userExplicitlyUnpausedAnimation]^ 1];
    if (userExplicitlyUnpausedAnimation)
    {
      image = [(CKImageBalloonView *)self image];
      [(CKImageBalloonView *)self setImage:image];
    }
  }

  else
  {
LABEL_10:
    v29.receiver = self;
    v29.super_class = CKImageBalloonView;
    [(CKObscurableBalloonView *)&v29 tapGestureRecognized:recognizedCopy];
  }
}

- (void)_animatedImagesStateChanged:(id)changed
{
  image = [(CKImageBalloonView *)self image];
  [(CKImageBalloonView *)self setImage:image];
}

- (id)_addPauseButtonToImage:(id)image
{
  imageCopy = image;
  traitCollection = [(CKImageBalloonView *)self traitCollection];
  [traitCollection displayScale];
  v7 = v6;

  v8 = +[CKUIBehavior sharedBehaviors];
  [v8 thumbnailContentAlignmentInsetsForOrientation:{-[CKBalloonView orientation](self, "orientation")}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [CKMovieMediaObject playButtonPreviewForUIImage:imageCopy scale:v7 contentAlignmentInsets:v10, v12, v14, v16];

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

  orientation = [(CKBalloonView *)self orientation];
  if (orientation)
  {
    v15 = v13;
  }

  else
  {
    v15 = v10;
  }

  if (orientation)
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
  irisBadgeView = [(CKImageBalloonView *)self irisBadgeView];

  if (irisBadgeView)
  {
    v12 = +[CKUIBehavior sharedBehaviors];
    [v12 verticalBalloonBadgeInset];
    v14 = v13;

    v15 = +[CKUIBehavior sharedBehaviors];
    [v15 horizontalBalloonBadgeInset];
    v17 = v16;

    irisBadgeView2 = [(CKImageBalloonView *)self irisBadgeView];
    [irisBadgeView2 sizeToFit];

    irisBadgeView3 = [(CKImageBalloonView *)self irisBadgeView];
    [irisBadgeView3 frame];
    v21 = v20;
    v23 = v22;

    if (![(CKBalloonView *)self orientation])
    {
      v24 = +[CKUIBehavior sharedBehaviors];
      [v24 balloonMaskTailSizeForTailShape:1];
      v17 = v17 + v25;
    }

    irisBadgeView4 = [(CKImageBalloonView *)self irisBadgeView];
    [irisBadgeView4 setFrame:{v17, v14, v21, v23}];

    irisBadgeView5 = [(CKImageBalloonView *)self irisBadgeView];
    [(CKImageBalloonView *)self bringSubviewToFront:irisBadgeView5];
  }

  monoskiBadgeView = [(CKImageBalloonView *)self monoskiBadgeView];

  if (monoskiBadgeView)
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
    monoskiBadgeView2 = [(CKImageBalloonView *)self monoskiBadgeView];
    v49 = v47;
    v6 = v43;
    v4 = v42;
    v10 = v41;
    v8 = v40;
    [monoskiBadgeView2 setFrame:{v103, v31, v37, v49}];

    if (![(CKObscurableBalloonView *)self isObscured])
    {
      monoskiBadgeView3 = [(CKImageBalloonView *)self monoskiBadgeView];
      [(CKImageBalloonView *)self bringSubviewToFront:monoskiBadgeView3];
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
    bubblePath = [(CKBalloonView *)self bubblePath];
    [bubblePath tailInsetsForBubbleSize:{v8, v10}];
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
  invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
  effectView = [invisibleInkEffectController effectView];
  [(UIImageView *)self->_imageContentView frame];
  [effectView setFrame:?];

  gradientView = [(CKImageBalloonView *)self gradientView];

  if (gradientView)
  {
    [(CKImageBalloonView *)self bounds];
    v68 = v67;
    [(CKImageBalloonView *)self bounds];
    v70 = v69;
    [(CKImageBalloonView *)self bounds];
    v72 = v71;
    [(CKImageBalloonView *)self bounds];
    v74 = v73 * 0.5;
    gradientLayer = [(CKImageBalloonView *)self gradientLayer];
    [gradientLayer setFrame:{v68, v70, v72, v74}];

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
    gradientView2 = [(CKImageBalloonView *)self gradientView];
    [gradientView2 setFrame:{v77, v81, v83, v85}];
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
  layer = [(UIImageView *)self->_imageContentView layer];
  [layer setMask:v89];

  backdropFilterLayer = [(CKBalloonView *)self backdropFilterLayer];
  if (!backdropFilterLayer)
  {
    [(CKBalloonLayer *)self->_imageContentBackdropBalloonLayer setHidden:[(CKImageBalloonView *)self shouldShowImageBackdropBalloonLayer]^ 1];
    goto LABEL_22;
  }

  [(CKBalloonLayer *)self->_imageContentBackdropBalloonLayer setHidden:1];
  superlayer = [backdropFilterLayer superlayer];
  layer2 = [(CKImageBalloonView *)self layer];

  layer3 = [(CKImageBalloonView *)self layer];
  layer4 = layer3;
  if (superlayer != layer2)
  {
    goto LABEL_19;
  }

  sublayers = [layer3 sublayers];
  v97 = [sublayers indexOfObject:backdropFilterLayer];

  if (v97)
  {
    layer4 = [(CKImageBalloonView *)self layer];
LABEL_19:
    [layer4 insertSublayer:backdropFilterLayer atIndex:0];
  }

  v98 = [_TtC7ChatKit18CKBalloonMaskLayer alloc];
  [(CKBalloonView *)self balloonDescriptor];
  v99 = [(CKBalloonMaskLayer *)v98 initWithDescriptor:v105];
  [(CKImageBalloonView *)self bounds];
  [(CKBalloonMaskLayer *)v99 setFrame:?];
  [backdropFilterLayer setMask:v99];

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

- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets
{
  height = fits.height;
  width = fits.width;
  v8 = [(CKImageBalloonView *)self animatedImage:insets];
  v9 = v8;
  if (v8)
  {
    image = [v8 image];
    [image size];
    v12 = v11;
    v14 = v13;
  }

  else
  {
    image = [(CKImageBalloonView *)self imageContentView];
    v10Image = [image image];
    [v10Image size];
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
  imageContentView = [(CKImageBalloonView *)self imageContentView];
  [imageContentView removeFromSuperview];

  imageContentView2 = [(CKImageBalloonView *)self imageContentView];
  [(CKImageBalloonView *)self insertSubview:imageContentView2 atIndex:0];

  [(CKImageBalloonView *)self updateBalloonMasks];
}

- (id)highlightOverlayColor
{
  v2 = +[CKUIBehavior sharedBehaviors];
  imageBalloonSelectionOverlayColor = [v2 imageBalloonSelectionOverlayColor];

  return imageBalloonSelectionOverlayColor;
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
  imageContentView = [(CKImageBalloonView *)self imageContentView];
  [imageContentView setAlpha:1.0];

  [(CKImageBalloonView *)self setGradientView:0];
}

- (BOOL)needsGlassPlatter
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTranscriptPortalEnabled = [mEMORY[0x1E69A8070] isTranscriptPortalEnabled];

  if (!isTranscriptPortalEnabled)
  {
    return 0;
  }

  traitCollection = [(CKImageBalloonView *)self traitCollection];
  isTranscriptBackgroundActive = [traitCollection isTranscriptBackgroundActive];

  return isTranscriptBackgroundActive;
}

- (void)setHasTail:(BOOL)tail
{
  tailCopy = tail;
  if ([(CKBalloonView *)self hasTail]!= tail)
  {
    v5.receiver = self;
    v5.super_class = CKImageBalloonView;
    [(CKBalloonView *)&v5 setHasTail:tailCopy];
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setCanUseOpaqueMask:(BOOL)mask
{
  if ([(CKBalloonView *)self canUseOpaqueMask]!= mask)
  {
    v4.receiver = self;
    v4.super_class = CKImageBalloonView;
    [(CKBalloonView *)&v4 setCanUseOpaqueMask:0];
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setAnimatedImage:(id)image
{
  imageCopy = image;
  if (self->_animatedImage != imageCopy)
  {
    v8 = imageCopy;
    objc_storeStrong(&self->_animatedImage, image);
    frames = [(CKAnimatedImage *)self->_animatedImage frames];
    if ([frames count] == 1)
    {

      frames = 0;
    }

    [(CKImageBalloonView *)self setFrames:frames];
    if ([frames count])
    {
      [frames objectAtIndex:0];
    }

    else
    {
      [(CKAnimatedImage *)v8 image];
    }
    v7 = ;
    [(CKImageBalloonView *)self setImage:v7];

    [(CKImageBalloonView *)self updateAnimationTimerObserving];
    imageCopy = v8;
  }
}

- (id)image
{
  imageContentView = [(CKImageBalloonView *)self imageContentView];
  image = [imageContentView image];

  return image;
}

- (void)setImage:(id)image
{
  v15[2] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  if (self->_animatedImage && +[CKImageAnimationTimer accessibilityAnimatedImagesDisabled]&& ![(CKImageBalloonView *)self userExplicitlyUnpausedAnimation])
  {
    v5 = [(CKImageBalloonView *)self _addPauseButtonToImage:imageCopy];

    imageCopy = v5;
  }

  imageContentView = [(CKImageBalloonView *)self imageContentView];
  [imageContentView setImage:imageCopy];

  if ([(CKBalloonView *)self hasSuggestedActionsMenu])
  {
    [(UIView *)self->_gradientView removeFromSuperview];
    [(CAGradientLayer *)self->_gradientLayer removeFromSuperlayer];
    v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
    gradientView = self->_gradientView;
    self->_gradientView = v7;

    layer = [MEMORY[0x1E6979380] layer];
    gradientLayer = self->_gradientLayer;
    self->_gradientLayer = layer;

    v11 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.2];
    v12 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0];
    v15[0] = [v11 CGColor];
    v15[1] = [v12 CGColor];
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    [(CAGradientLayer *)self->_gradientLayer setColors:v13];

    [(CAGradientLayer *)self->_gradientLayer setStartPoint:0.0, 1.0];
    [(CAGradientLayer *)self->_gradientLayer setEndPoint:0.0, 0.0];
    layer2 = [(UIView *)self->_gradientView layer];
    [layer2 insertSublayer:self->_gradientLayer atIndex:0];

    [(CKImageBalloonView *)self addSubview:self->_gradientView];
  }
}

- (UIEdgeInsets)alignmentRectInsetsForBoundsSize:(CGSize)size
{
  v3 = [(CKImageBalloonView *)self imageContentView:size.width];
  image = [v3 image];

  if (!image)
  {
    v6 = *MEMORY[0x1E69DDCE0];
    v15 = *(MEMORY[0x1E69DDCE0] + 8);
    v10 = *(MEMORY[0x1E69DDCE0] + 16);
    v12 = *(MEMORY[0x1E69DDCE0] + 24);
    goto LABEL_8;
  }

  [image alignmentRectInsets];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  imageOrientation = [image imageOrientation];
  if (!imageOrientation)
  {
LABEL_7:
    v15 = v8;
    goto LABEL_8;
  }

  v14 = imageOrientation;
  if (imageOrientation != 4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"UIEdgeInsets CKEdgeInsetsWithImageOrientation(UIEdgeInsets, UIImageOrientation)"}];
    [currentHandler handleFailureInFunction:v17 file:@"CKGeometry.h" lineNumber:443 description:{@"CKEdgeInsetsWithImageOrientation %ld hasn't been implemented", v14}];

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

- (void)setIsIrisAsset:(BOOL)asset
{
  assetCopy = asset;
  v5 = +[CKUIBehavior sharedBehaviors];
  showsBalloonBadges = [v5 showsBalloonBadges];

  if (showsBalloonBadges && self->_isIrisAsset != assetCopy)
  {
    self->_isIrisAsset = assetCopy;
    if (assetCopy && !self->_isMonoskiAsset)
    {
      irisBadgeView = [(CKImageBalloonView *)self irisBadgeView];

      if (!irisBadgeView)
      {
        v10 = objc_alloc(MEMORY[0x1E69DCAE0]);
        v11 = +[CKUIBehavior sharedBehaviors];
        livePhotoBadgeImage = [v11 livePhotoBadgeImage];
        v19 = [v10 initWithImage:livePhotoBadgeImage];

        layer = [v19 layer];
        LODWORD(v14) = 0.5;
        [layer setShadowOpacity:v14];

        layer2 = [v19 layer];
        [layer2 setShadowOffset:{0.0, 0.0}];

        layer3 = [v19 layer];
        [layer3 setShadowRadius:1.0];

        invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
        effectView = [invisibleInkEffectController effectView];

        if (effectView)
        {
          [(CKImageBalloonView *)self insertSubview:v19 belowSubview:effectView];
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
      irisBadgeView2 = [(CKImageBalloonView *)self irisBadgeView];

      if (irisBadgeView2)
      {
        irisBadgeView3 = [(CKImageBalloonView *)self irisBadgeView];
        [irisBadgeView3 removeFromSuperview];

        [(CKImageBalloonView *)self setIrisBadgeView:0];
      }
    }
  }
}

- (void)setIsMonoskiAsset:(BOOL)asset
{
  assetCopy = asset;
  v5 = +[CKUIBehavior sharedBehaviors];
  showsBalloonBadges = [v5 showsBalloonBadges];

  if (showsBalloonBadges && self->_isMonoskiAsset != assetCopy)
  {
    self->_isMonoskiAsset = assetCopy;
    monoskiBadgeView = [(CKImageBalloonView *)self monoskiBadgeView];
    v8 = monoskiBadgeView;
    if (assetCopy)
    {

      if (!v8)
      {
        v12 = [_TtC7ChatKit25CKMonoskiBadgeViewFactory badgeViewWithSupportsGradient:[(CKImageBalloonView *)self isScheduled]^ 1];
        invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
        effectView = [invisibleInkEffectController effectView];

        if (effectView)
        {
          [(CKImageBalloonView *)self insertSubview:v12 belowSubview:effectView];
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
        monoskiBadgeView2 = [(CKImageBalloonView *)self monoskiBadgeView];
        [monoskiBadgeView2 removeFromSuperview];

        [(CKImageBalloonView *)self setMonoskiBadgeView:0];
      }
    }
  }
}

- (void)animationTimerFired:(double)fired
{
  if (![(CKBalloonView *)self animationPaused])
  {
    v5 = [(CKAnimatedImage *)self->_animatedImage frameForAnimationTime:fired];
    [(CKImageBalloonView *)self setImage:v5];
  }
}

- (void)attachInvisibleInkEffectView
{
  invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
  effectView = [invisibleInkEffectController effectView];

  [(CKImageBalloonView *)self addSubview:effectView];
  stickerEffectView = [(CKBalloonView *)self stickerEffectView];
  v5 = stickerEffectView != 0;

  [(CKImageBalloonView *)self insertSubview:effectView atIndex:v5];
  irisBadgeView = [(CKImageBalloonView *)self irisBadgeView];

  if (irisBadgeView)
  {
    irisBadgeView2 = [(CKImageBalloonView *)self irisBadgeView];
    [(CKImageBalloonView *)self insertSubview:irisBadgeView2 belowSubview:effectView];
  }

  monoskiBadgeView = [(CKImageBalloonView *)self monoskiBadgeView];

  if (monoskiBadgeView)
  {
    monoskiBadgeView2 = [(CKImageBalloonView *)self monoskiBadgeView];
    [(CKImageBalloonView *)self insertSubview:monoskiBadgeView2 belowSubview:effectView];
  }
}

- (void)detachInvisibleInkEffectView
{
  invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
  effectView = [invisibleInkEffectController effectView];

  [effectView removeFromSuperview];
  irisBadgeView = [(CKImageBalloonView *)self irisBadgeView];

  if (irisBadgeView)
  {
    irisBadgeView2 = [(CKImageBalloonView *)self irisBadgeView];
    [(CKImageBalloonView *)self addSubview:irisBadgeView2];
  }

  monoskiBadgeView = [(CKImageBalloonView *)self monoskiBadgeView];

  if (monoskiBadgeView)
  {
    monoskiBadgeView2 = [(CKImageBalloonView *)self monoskiBadgeView];
    [(CKImageBalloonView *)self addSubview:monoskiBadgeView2];
  }
}

- (void)invisibleInkEffectViewWasUncovered
{
  animatedImage = [(CKImageBalloonView *)self animatedImage];
  image = [animatedImage image];
  [image duration];
  v6 = v5;

  v7 = 5.0;
  if (v6 > 0.0)
  {
    v7 = v6 * ceil(5.0 / v6);
  }

  invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
  [invisibleInkEffectController suspendForTimeInterval:v7];
}

- (void)invisibleInkEffectViewWasResumed
{
  [(CKImageBalloonView *)self setAnimationFrameOffset:0];
  frames = [(CKImageBalloonView *)self frames];
  v4 = [frames count];

  if (v4)
  {
    frames2 = [(CKImageBalloonView *)self frames];
    firstObject = [frames2 firstObject];
    [(CKImageBalloonView *)self setImage:firstObject];
  }

  [(CKImageBalloonView *)self updateAnimationTimerObserving];
}

- (void)updateAnimationTimerObserving
{
  frames = [(CKImageBalloonView *)self frames];
  if ([frames count] < 2 || (-[CKImageBalloonView window](self, "window"), (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_7;
  }

  v5 = v4;
  if ([(CKBalloonView *)self invisibleInkEffectEnabled])
  {
    invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
    isSuspended = [invisibleInkEffectController isSuspended];

    if (isSuspended)
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

- (void)addFilter:(id)filter
{
  filterCopy = filter;
  balloonBackdropFilters = [filterCopy balloonBackdropFilters];
  v6 = [balloonBackdropFilters count];

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
      backdropFilterLayer = [(CKBalloonView *)self backdropFilterLayer];
      _CKAssert(backdropFilterLayer == 0);
    }

    backdropFilterLayer2 = [(CKBalloonView *)self backdropFilterLayer];

    if (backdropFilterLayer2)
    {
      backdropFilterLayer3 = [(CKBalloonView *)self backdropFilterLayer];
      [backdropFilterLayer3 removeFromSuperlayer];

      [(CKBalloonView *)self setBackdropFilterLayer:0];
    }

    layer = [(CKImageBalloonView *)self layer];
    [layer setAllowsGroupBlending:0];

    v12 = objc_alloc_init(MEMORY[0x1E6979310]);
    [(CKImageBalloonView *)self bounds];
    [v12 setFrame:?];
    [v12 setGroupName:@"FSMBackdropGroup"];
    balloonBackdropFilters2 = [filterCopy balloonBackdropFilters];
    [v12 setFilters:balloonBackdropFilters2];

    [v12 setScale:0.25];
    [(CKBalloonView *)self setBackdropFilterLayer:v12];
    [(CKBalloonView *)self setInvisibleInkEffectEnabled:0];
  }

  layer2 = [(CKImageBalloonView *)self layer];
  balloonFilters = [filterCopy balloonFilters];
  [layer2 setFilters:balloonFilters];

  layer3 = [(CKImageBalloonView *)self layer];
  balloonCompositingFilter = [filterCopy balloonCompositingFilter];
  [layer3 setCompositingFilter:balloonCompositingFilter];

  v18.receiver = self;
  v18.super_class = CKImageBalloonView;
  [(CKBalloonView *)&v18 addFilter:filterCopy];
  [(CKImageBalloonView *)self setNeedsLayout];
}

- (void)clearFilters
{
  layer = [(CKImageBalloonView *)self layer];
  [layer setAllowsGroupBlending:1];

  backdropFilterLayer = [(CKBalloonView *)self backdropFilterLayer];
  [backdropFilterLayer removeFromSuperlayer];

  [(CKBalloonView *)self setBackdropFilterLayer:0];
  layer2 = [(CKImageBalloonView *)self layer];
  [layer2 setFilters:0];

  layer3 = [(CKImageBalloonView *)self layer];
  [layer3 setCompositingFilter:0];

  v7.receiver = self;
  v7.super_class = CKImageBalloonView;
  [(CKBalloonView *)&v7 clearFilters];
}

- (void)setSuppressMask:(BOOL)mask
{
  if (self->_suppressMask != mask)
  {
    self->_suppressMask = mask;
    [(CKBalloonView *)self setNeedsPrepareForDisplay];

    [(CKBalloonView *)self prepareForDisplayIfNeeded];
  }
}

- (BOOL)shouldShowImageBackdropBalloonLayer
{
  traitCollection = [(CKImageBalloonView *)self traitCollection];
  isTranscriptBackgroundActive = [traitCollection isTranscriptBackgroundActive];

  [(CKImageBalloonView *)self imageInsets];
  v6.f64[1] = v5;
  v8.f64[1] = v7;
  return (isTranscriptBackgroundActive | vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*MEMORY[0x1E69DDCE0], v6), vceqq_f64(*(MEMORY[0x1E69DDCE0] + 16), v8)))))) & 1;
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

- (char)addFillToStyle:(char)style
{
  v3 = 0x20404020200uLL >> (8 * style);
  if (style >= 6)
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
    traitCollection = [(CKImageBalloonView *)self traitCollection];
    imageContentBackdropBalloonLayer = self->_imageContentBackdropBalloonLayer;
    [(CKImageBalloonView *)self imageBackdropBalloonDescriptor];
    [(CKBalloonLayer *)imageContentBackdropBalloonLayer updateDescriptor:v17 traitCollection:traitCollection];
    layer = [(CKImageBalloonView *)self layer];
    v6 = self->_imageContentBackdropBalloonLayer;
    imageContentView = [(CKImageBalloonView *)self imageContentView];
    layer2 = [imageContentView layer];
    [layer insertSublayer:v6 below:layer2];

    invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
    effectView = [invisibleInkEffectController effectView];

    if (effectView)
    {
      v11 = [_TtC7ChatKit18CKBalloonMaskLayer alloc];
      [(CKBalloonView *)self balloonDescriptor];
      v12 = [(CKBalloonMaskLayer *)v11 initWithDescriptor:v17];
      [(CKImageBalloonView *)self bounds];
      [(CKBalloonMaskLayer *)v12 setFrame:?];
      layer3 = [effectView layer];
      [layer3 setMask:v12];
    }

    monoskiBadgeView = [(CKImageBalloonView *)self monoskiBadgeView];
    if (monoskiBadgeView)
    {
      [(CKImageBalloonView *)self imageContentMaskBalloonDescriptor];
      layer4 = [monoskiBadgeView layer];
      [layer4 setCornerRadius:v16];
      [layer4 setCornerCurve:*MEMORY[0x1E69796E8]];
      [layer4 setMasksToBounds:1];
    }
  }
}

- (double)imageAlpha
{
  imageContentView = [(CKImageBalloonView *)self imageContentView];
  [imageContentView alpha];
  v4 = v3;

  return v4;
}

- (void)setImageAlpha:(double)alpha
{
  imageContentView = [(CKImageBalloonView *)self imageContentView];
  [imageContentView setAlpha:alpha];
}

- (void)configureForMessagePart:(id)part
{
  partCopy = part;
  v18.receiver = self;
  v18.super_class = CKImageBalloonView;
  [(CKBalloonView *)&v18 configureForMessagePart:partCopy];
  mediaObject = [partCopy mediaObject];
  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 previewMaxWidth];
  v8 = v7;
  balloonOrientation = [partCopy balloonOrientation];
  message = [partCopy message];
  expressiveSendStyleID = [message expressiveSendStyleID];
  -[CKImageBalloonView configureForMediaObject:previewWidth:orientation:hasInvisibleInkEffect:](self, "configureForMediaObject:previewWidth:orientation:hasInvisibleInkEffect:", mediaObject, balloonOrientation, [expressiveSendStyleID isEqualToString:@"com.apple.MobileSMS.expressivesend.invisibleink"], v8);

  messageItem = [partCopy messageItem];
  scheduleType = [messageItem scheduleType];

  if (scheduleType == 2 && ([partCopy messageItem], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "scheduleState"), v14, v15 <= 5) && ((1 << v15) & 0x36) != 0)
  {
    [(CKImageBalloonView *)self setScheduled:1];
    balloonStyle = 3;
  }

  else
  {
    [(CKImageBalloonView *)self setScheduled:0];
    balloonStyle = [partCopy balloonStyle];
  }

  [(CKBalloonView *)self setBalloonStyle:balloonStyle];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mediaObject2 = [partCopy mediaObject];
    [(CKBalloonView *)self configureForEffectViewWithMediaObject:mediaObject2];
  }
}

- (void)configureForTranscriptPlugin:(id)plugin
{
  pluginCopy = plugin;
  v9.receiver = self;
  v9.super_class = CKImageBalloonView;
  [(CKBalloonView *)&v9 configureForMessagePart:pluginCopy];
  message = [pluginCopy message];
  guid = [message guid];
  v7 = [CKSnapshotUtilities snapshotForGUID:guid];

  image = [v7 image];
  [(CKImageBalloonView *)self setImage:image];

  if ((objc_opt_respondsToSelector() & 1) != 0 && [pluginCopy wantsOutline])
  {
    [(CKBalloonView *)self setBalloonStyle:1];
  }
}

@end