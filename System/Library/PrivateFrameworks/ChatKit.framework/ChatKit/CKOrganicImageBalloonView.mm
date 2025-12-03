@interface CKOrganicImageBalloonView
- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets;
- (CKBalloonDescriptor_t)balloonDescriptor;
- (CKOrganicImageBalloonView)initWithFrame:(CGRect)frame;
- (id)createHighlightOverlayLayer;
- (id)invisibleInkEffectImage;
- (void)addFilter:(id)filter;
- (void)attachInvisibleInkEffectView;
- (void)configureForMessagePart:(id)part;
- (void)detachInvisibleInkEffectView;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setFrame:(CGRect)frame;
- (void)setImage:(id)image;
- (void)setInvisibleInkEffectImage:(id)image;
- (void)setMonoskiBadgeView:(id)view;
- (void)updateOrganicImageMaterial;
@end

@implementation CKOrganicImageBalloonView

- (CKOrganicImageBalloonView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11.receiver = self;
  v11.super_class = CKOrganicImageBalloonView;
  v7 = [(CKImageBalloonView *)&v11 initWithFrame:?];
  if (v7)
  {
    height = [[CKBalloonImageView alloc] initWithFrame:x, y, width, height];
    [(CKOrganicImageBalloonView *)v7 setImageView:height];

    imageView = [(CKOrganicImageBalloonView *)v7 imageView];
    [(CKOrganicImageBalloonView *)v7 addSubview:imageView];
  }

  return v7;
}

- (void)prepareForDisplay
{
  v52.receiver = self;
  v52.super_class = CKOrganicImageBalloonView;
  [(CKImageBalloonView *)&v52 prepareForDisplay];
  invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
  [invisibleInkEffectController prepareForDisplay];

  imageView = [(CKOrganicImageBalloonView *)self imageView];
  layer = [imageView layer];
  [layer setContentsGravity:*MEMORY[0x1E6979DF0]];

  dashedBorder = [(CKOrganicImageBalloonView *)self dashedBorder];
  [dashedBorder removeFromSuperlayer];

  if ([(CKImageBalloonView *)self isScheduled])
  {
    dashedBorder2 = [(CKOrganicImageBalloonView *)self dashedBorder];

    if (dashedBorder2)
    {
      v8 = *MEMORY[0x1E69796E8];
    }

    else
    {
      layer2 = [MEMORY[0x1E69794A0] layer];
      [(CKOrganicImageBalloonView *)self setDashedBorder:layer2];

      v10 = MEMORY[0x1E69DC888];
      [(CKOrganicImageBalloonView *)self balloonDescriptor];
      v11 = [v10 ck_colorWithIMColorComponents:{v48, v49, v50, v51}];
      cgColor = [v11 cgColor];
      dashedBorder3 = [(CKOrganicImageBalloonView *)self dashedBorder];
      [dashedBorder3 setStrokeColor:cgColor];

      dashedBorder4 = [(CKOrganicImageBalloonView *)self dashedBorder];
      [dashedBorder4 setFillColor:0];

      dashedBorder5 = [(CKOrganicImageBalloonView *)self dashedBorder];
      [dashedBorder5 setLineDashPattern:&unk_1F04E68A0];

      dashedBorder6 = [(CKOrganicImageBalloonView *)self dashedBorder];
      [dashedBorder6 setLineWidth:2.0];

      dashedBorder7 = [(CKOrganicImageBalloonView *)self dashedBorder];
      [dashedBorder7 setCornerRadius:20.0];

      v8 = *MEMORY[0x1E69796E8];
      dashedBorder8 = [(CKOrganicImageBalloonView *)self dashedBorder];
      [dashedBorder8 setCornerCurve:v8];

      dashedBorder9 = [(CKOrganicImageBalloonView *)self dashedBorder];
      [dashedBorder9 setAllowsEdgeAntialiasing:1];
    }

    layer3 = [(CKOrganicImageBalloonView *)self layer];
    dashedBorder10 = [(CKOrganicImageBalloonView *)self dashedBorder];
    [layer3 addSublayer:dashedBorder10];

    layer4 = [(CKOrganicImageBalloonView *)self layer];
    [layer4 setCornerRadius:20.0];

    layer5 = [(CKOrganicImageBalloonView *)self layer];
    [layer5 setCornerCurve:v8];

    layer6 = [(CKOrganicImageBalloonView *)self layer];
    [layer6 setMasksToBounds:1];

    imageView2 = [(CKOrganicImageBalloonView *)self imageView];
    [imageView2 setAlpha:0.5];
  }

  else
  {
    v8 = *MEMORY[0x1E69796E8];
  }

  invisibleInkEffectController2 = [(CKBalloonView *)self invisibleInkEffectController];
  effectView = [invisibleInkEffectController2 effectView];

  layer7 = [effectView layer];
  [layer7 setCornerRadius:20.0];

  layer8 = [effectView layer];
  [layer8 setCornerCurve:v8];

  layer9 = [effectView layer];
  [layer9 setMasksToBounds:1];

  layoutRecipe = [(CKOrganicImageBalloonView *)self layoutRecipe];
  [layoutRecipe rotation];
  v33 = v32;

  memset(&v47, 0, sizeof(v47));
  v34 = *(MEMORY[0x1E695EFD0] + 16);
  *&v46.a = *MEMORY[0x1E695EFD0];
  *&v46.c = v34;
  *&v46.tx = *(MEMORY[0x1E695EFD0] + 32);
  CGAffineTransformRotate(&v47, &v46, v33 * 3.14159265 / 180.0);
  v46 = v47;
  [(CKOrganicImageBalloonView *)self setTransform:&v46];
  traitCollection = [(CKOrganicImageBalloonView *)self traitCollection];
  isTranscriptBackgroundActive = [traitCollection isTranscriptBackgroundActive];

  layoutRecipe2 = [(CKOrganicImageBalloonView *)self layoutRecipe];
  wantsShadow = [layoutRecipe2 wantsShadow];

  if (wantsShadow && (isTranscriptBackgroundActive & 1) == 0)
  {
    layer10 = [(CKOrganicImageBalloonView *)self layer];
    [layer10 setShadowOffset:{0.0, 7.0}];

    layer11 = [(CKOrganicImageBalloonView *)self layer];
    LODWORD(v41) = 1045220557;
    [layer11 setShadowOpacity:v41];

    layer12 = [(CKOrganicImageBalloonView *)self layer];
    [layer12 setShadowRadius:27.0];

    layer13 = [(CKOrganicImageBalloonView *)self layer];
    [layer13 setShadowPathIsBounds:1];
  }

  imageView3 = [(CKOrganicImageBalloonView *)self imageView];
  layer14 = [imageView3 layer];
  [layer14 setAllowsEdgeAntialiasing:1];
}

- (void)setMonoskiBadgeView:(id)view
{
  v7.receiver = self;
  v7.super_class = CKOrganicImageBalloonView;
  viewCopy = view;
  [(CKImageBalloonView *)&v7 setMonoskiBadgeView:viewCopy];
  layer = [viewCopy layer];
  [layer setCornerRadius:20.0];

  layer2 = [viewCopy layer];
  [layer2 setCornerCurve:*MEMORY[0x1E69796E8]];

  layer3 = [viewCopy layer];

  [layer3 setMasksToBounds:1];
}

- (void)layoutSubviews
{
  v53.receiver = self;
  v53.super_class = CKOrganicImageBalloonView;
  [(CKImageBalloonView *)&v53 layoutSubviews];
  monoskiBadgeView = [(CKImageBalloonView *)self monoskiBadgeView];

  if (monoskiBadgeView)
  {
    [(CKOrganicImageBalloonView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    monoskiBadgeView2 = [(CKImageBalloonView *)self monoskiBadgeView];
    [monoskiBadgeView2 setFrame:{v5, v7, v9, v11}];
  }

  irisBadgeView = [(CKImageBalloonView *)self irisBadgeView];
  if (irisBadgeView)
  {
    v14 = irisBadgeView;
    orientation = [(CKBalloonView *)self orientation];

    if (!orientation)
    {
      irisBadgeView2 = [(CKImageBalloonView *)self irisBadgeView];
      [irisBadgeView2 frame];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      v25 = +[CKUIBehavior sharedBehaviors];
      [v25 balloonMaskTailWidth];
      v27 = v18 - v26;

      irisBadgeView3 = [(CKImageBalloonView *)self irisBadgeView];
      [irisBadgeView3 setFrame:{v27, v20, v22, v24}];
    }
  }

  [(CKOrganicImageBalloonView *)self bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  imageView = [(CKOrganicImageBalloonView *)self imageView];
  [imageView setFrame:{v30, v32, v34, v36}];

  v38 = MEMORY[0x1E69DC728];
  layer = [(CKOrganicImageBalloonView *)self layer];
  [layer bounds];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  layer2 = [(CKOrganicImageBalloonView *)self layer];
  [layer2 cornerRadius];
  v50 = [v38 bezierPathWithRoundedRect:v41 cornerRadius:{v43, v45, v47, v49}];
  cGPath = [v50 CGPath];
  dashedBorder = [(CKOrganicImageBalloonView *)self dashedBorder];
  [dashedBorder setPath:cGPath];

  [(CKOrganicImageBalloonView *)self updateOrganicImageMaterial];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(CKOrganicImageBalloonView *)self frame];
  v21.origin.x = v8;
  v21.origin.y = v9;
  v21.size.width = v10;
  v21.size.height = v11;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  if (!CGRectEqualToRect(v20, v21))
  {
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    [(CKOrganicImageBalloonView *)self transform];
    v12 = *(MEMORY[0x1E695EFD0] + 16);
    v14 = *MEMORY[0x1E695EFD0];
    v15 = v12;
    v16 = *(MEMORY[0x1E695EFD0] + 32);
    [(CKOrganicImageBalloonView *)self setTransform:&v14];
    v13.receiver = self;
    v13.super_class = CKOrganicImageBalloonView;
    [(CKBalloonImageView *)&v13 setFrame:x, y, width, height];
    v14 = v17;
    v15 = v18;
    v16 = v19;
    [(CKOrganicImageBalloonView *)self setTransform:&v14];
  }
}

- (id)createHighlightOverlayLayer
{
  v3 = objc_alloc_init(MEMORY[0x1E6979398]);
  [v3 setAllowsHitTesting:0];
  [v3 setCornerRadius:20.0];
  [v3 setCornerCurve:*MEMORY[0x1E69796E8]];
  [v3 setMasksToBounds:1];
  highlightOverlayColor = [(CKImageBalloonView *)self highlightOverlayColor];
  [v3 setBackgroundColor:{objc_msgSend(highlightOverlayColor, "CGColor")}];

  [v3 setAllowsEdgeAntialiasing:1];

  return v3;
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
        *v19 = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_DEBUG, "Cannot have two backdrop filter layers", v19, 2u);
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

    [(CKImageBalloonView *)self setSuppressMask:1];
    layer = [(CKOrganicImageBalloonView *)self layer];
    [layer setAllowsGroupBlending:0];

    v12 = objc_alloc_init(MEMORY[0x1E6979310]);
    [(CKOrganicImageBalloonView *)self bounds];
    [v12 setFrame:?];
    [v12 setGroupName:@"FSMBackdropGroup"];
    balloonBackdropFilters2 = [filterCopy balloonBackdropFilters];
    [v12 setFilters:balloonBackdropFilters2];

    [v12 setScale:0.25];
    [v12 setCornerRadius:20.0];
    [v12 setCornerCurve:*MEMORY[0x1E69796E8]];
    [v12 setMasksToBounds:1];
    [(CKOrganicImageBalloonView *)self bounds];
    [v12 setFrame:?];
    [(CKBalloonView *)self setBackdropFilterLayer:v12];
    layer2 = [(CKOrganicImageBalloonView *)self layer];
    [layer2 addSublayer:v12];

    [(CKBalloonView *)self setInvisibleInkEffectEnabled:0];
  }

  layer3 = [(CKOrganicImageBalloonView *)self layer];
  balloonFilters = [filterCopy balloonFilters];
  [layer3 setFilters:balloonFilters];

  layer4 = [(CKOrganicImageBalloonView *)self layer];
  balloonCompositingFilter = [filterCopy balloonCompositingFilter];
  [layer4 setCompositingFilter:balloonCompositingFilter];
}

- (void)setImage:(id)image
{
  v7.receiver = self;
  v7.super_class = CKOrganicImageBalloonView;
  imageCopy = image;
  [(CKImageBalloonView *)&v7 setImage:0];
  v5 = [(CKOrganicImageBalloonView *)self layer:v7.receiver];
  [v5 setContents:0];

  imageView = [(CKOrganicImageBalloonView *)self imageView];
  [imageView setImage:imageCopy];
}

- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets
{
  height = fits.height;
  width = fits.width;
  v7 = [(CKOrganicImageBalloonView *)self imageView:insets];
  image = [v7 image];

  if (image)
  {
    [image size];
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v10 = *MEMORY[0x1E695F060];
    v12 = *(MEMORY[0x1E695F060] + 8);
  }

  if (width < v10 || height < v12)
  {
    v14 = width / v10;
    v15 = 0.0;
    if (v10 == 0.0)
    {
      v14 = 0.0;
    }

    if (v12 != 0.0)
    {
      v15 = height / v12;
    }

    v16 = fmin(v14, v15);
    v10 = ceil(v10 * v16);
    v12 = ceil(v12 * v16);
  }

  v17 = v10;
  v18 = v12;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)setInvisibleInkEffectImage:(id)image
{
  imageCopy = image;
  imageView = [(CKOrganicImageBalloonView *)self imageView];
  [imageView setInvisibleInkEffectImage:imageCopy];
}

- (id)invisibleInkEffectImage
{
  imageView = [(CKOrganicImageBalloonView *)self imageView];
  invisibleInkEffectImage = [imageView invisibleInkEffectImage];

  return invisibleInkEffectImage;
}

- (CKBalloonDescriptor_t)balloonDescriptor
{
  *&retstr->var9 = 0u;
  *&retstr->var11 = 0u;
  *&retstr->var8.red = 0u;
  *&retstr->var8.blue = 0u;
  *&retstr->var7.red = 0u;
  *&retstr->var7.blue = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var5 = 0u;
  v5.receiver = self;
  v5.super_class = CKOrganicImageBalloonView;
  result = [(CKBalloonDescriptor_t *)&v5 balloonDescriptor];
  retstr->var4 = -1;
  retstr->var1 = 0;
  return result;
}

- (void)attachInvisibleInkEffectView
{
  invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
  effectView = [invisibleInkEffectController effectView];

  imageView = [(CKOrganicImageBalloonView *)self imageView];
  [(CKOrganicImageBalloonView *)self insertSubview:effectView aboveSubview:imageView];
}

- (void)detachInvisibleInkEffectView
{
  invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
  effectView = [invisibleInkEffectController effectView];

  [effectView removeFromSuperview];
}

- (void)prepareForReuse
{
  v8.receiver = self;
  v8.super_class = CKOrganicImageBalloonView;
  [(CKImageBalloonView *)&v8 prepareForReuse];
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v7[0] = *MEMORY[0x1E695EFD0];
  v7[1] = v3;
  v7[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(CKOrganicImageBalloonView *)self setTransform:v7];
  imageView = [(CKOrganicImageBalloonView *)self imageView];
  [imageView setAlpha:1.0];

  layer = [(CKOrganicImageBalloonView *)self layer];
  [layer setBorderColor:0];

  layer2 = [(CKOrganicImageBalloonView *)self layer];
  [layer2 setBorderWidth:0.0];
}

- (void)updateOrganicImageMaterial
{
  traitCollection = [(CKOrganicImageBalloonView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  if (userInterfaceStyle <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = userInterfaceStyle;
  }

  organicImageContentBorderLayer = self->_organicImageContentBorderLayer;
  if (!organicImageContentBorderLayer)
  {
    v6 = [[_TtC7ChatKit41CKBackdropMaterialVibrantOuterStrokeLayer alloc] initWithUserInterfaceStyle:v4];
    v7 = self->_organicImageContentBorderLayer;
    self->_organicImageContentBorderLayer = v6;

    organicImageContentBorderLayer = self->_organicImageContentBorderLayer;
  }

  [(CKBackdropMaterialVibrantOuterStrokeLayer *)organicImageContentBorderLayer setUserInterfaceStyle:v4];
  isTranscriptBackgroundActive = [traitCollection isTranscriptBackgroundActive];
  v9 = MEMORY[0x1E69DC728];
  imageView = [(CKOrganicImageBalloonView *)self imageView];
  [imageView bounds];
  v11 = [v9 bezierPathWithRoundedRect:? cornerRadius:?];
  -[CKBackdropMaterialVibrantOuterStrokeLayer setPath:](self->_organicImageContentBorderLayer, "setPath:", [v11 CGPath]);

  [(CKBackdropMaterialVibrantOuterStrokeLayer *)self->_organicImageContentBorderLayer setHidden:isTranscriptBackgroundActive ^ 1u];
  imageView2 = [(CKOrganicImageBalloonView *)self imageView];
  layer = [imageView2 layer];
  [layer setCornerRadius:20.0];

  v14 = *MEMORY[0x1E69796E8];
  imageView3 = [(CKOrganicImageBalloonView *)self imageView];
  layer2 = [imageView3 layer];
  [layer2 setCornerCurve:v14];

  imageView4 = [(CKOrganicImageBalloonView *)self imageView];
  layer3 = [imageView4 layer];
  [layer3 setMasksToBounds:1];

  layer4 = [(CKOrganicImageBalloonView *)self layer];
  v20 = self->_organicImageContentBorderLayer;
  imageView5 = [(CKOrganicImageBalloonView *)self imageView];
  layer5 = [imageView5 layer];
  [layer4 insertSublayer:v20 below:layer5];

  imageView6 = [(CKOrganicImageBalloonView *)self imageView];
  [imageView6 bounds];
  [(CKBackdropMaterialVibrantOuterStrokeLayer *)self->_organicImageContentBorderLayer setFrame:?];
}

- (void)configureForMessagePart:(id)part
{
  v6.receiver = self;
  v6.super_class = CKOrganicImageBalloonView;
  partCopy = part;
  [(CKImageBalloonView *)&v6 configureForMessagePart:partCopy];
  layoutRecipe = [partCopy layoutRecipe];

  [(CKOrganicImageBalloonView *)self setLayoutRecipe:layoutRecipe];
}

@end