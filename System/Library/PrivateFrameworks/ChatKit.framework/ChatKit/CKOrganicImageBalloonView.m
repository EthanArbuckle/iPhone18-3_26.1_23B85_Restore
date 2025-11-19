@interface CKOrganicImageBalloonView
- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5;
- (CKBalloonDescriptor_t)balloonDescriptor;
- (CKOrganicImageBalloonView)initWithFrame:(CGRect)a3;
- (id)createHighlightOverlayLayer;
- (id)invisibleInkEffectImage;
- (void)addFilter:(id)a3;
- (void)attachInvisibleInkEffectView;
- (void)configureForMessagePart:(id)a3;
- (void)detachInvisibleInkEffectView;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setFrame:(CGRect)a3;
- (void)setImage:(id)a3;
- (void)setInvisibleInkEffectImage:(id)a3;
- (void)setMonoskiBadgeView:(id)a3;
- (void)updateOrganicImageMaterial;
@end

@implementation CKOrganicImageBalloonView

- (CKOrganicImageBalloonView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11.receiver = self;
  v11.super_class = CKOrganicImageBalloonView;
  v7 = [(CKImageBalloonView *)&v11 initWithFrame:?];
  if (v7)
  {
    v8 = [[CKBalloonImageView alloc] initWithFrame:x, y, width, height];
    [(CKOrganicImageBalloonView *)v7 setImageView:v8];

    v9 = [(CKOrganicImageBalloonView *)v7 imageView];
    [(CKOrganicImageBalloonView *)v7 addSubview:v9];
  }

  return v7;
}

- (void)prepareForDisplay
{
  v52.receiver = self;
  v52.super_class = CKOrganicImageBalloonView;
  [(CKImageBalloonView *)&v52 prepareForDisplay];
  v3 = [(CKBalloonView *)self invisibleInkEffectController];
  [v3 prepareForDisplay];

  v4 = [(CKOrganicImageBalloonView *)self imageView];
  v5 = [v4 layer];
  [v5 setContentsGravity:*MEMORY[0x1E6979DF0]];

  v6 = [(CKOrganicImageBalloonView *)self dashedBorder];
  [v6 removeFromSuperlayer];

  if ([(CKImageBalloonView *)self isScheduled])
  {
    v7 = [(CKOrganicImageBalloonView *)self dashedBorder];

    if (v7)
    {
      v8 = *MEMORY[0x1E69796E8];
    }

    else
    {
      v9 = [MEMORY[0x1E69794A0] layer];
      [(CKOrganicImageBalloonView *)self setDashedBorder:v9];

      v10 = MEMORY[0x1E69DC888];
      [(CKOrganicImageBalloonView *)self balloonDescriptor];
      v11 = [v10 ck_colorWithIMColorComponents:{v48, v49, v50, v51}];
      v12 = [v11 cgColor];
      v13 = [(CKOrganicImageBalloonView *)self dashedBorder];
      [v13 setStrokeColor:v12];

      v14 = [(CKOrganicImageBalloonView *)self dashedBorder];
      [v14 setFillColor:0];

      v15 = [(CKOrganicImageBalloonView *)self dashedBorder];
      [v15 setLineDashPattern:&unk_1F04E68A0];

      v16 = [(CKOrganicImageBalloonView *)self dashedBorder];
      [v16 setLineWidth:2.0];

      v17 = [(CKOrganicImageBalloonView *)self dashedBorder];
      [v17 setCornerRadius:20.0];

      v8 = *MEMORY[0x1E69796E8];
      v18 = [(CKOrganicImageBalloonView *)self dashedBorder];
      [v18 setCornerCurve:v8];

      v19 = [(CKOrganicImageBalloonView *)self dashedBorder];
      [v19 setAllowsEdgeAntialiasing:1];
    }

    v20 = [(CKOrganicImageBalloonView *)self layer];
    v21 = [(CKOrganicImageBalloonView *)self dashedBorder];
    [v20 addSublayer:v21];

    v22 = [(CKOrganicImageBalloonView *)self layer];
    [v22 setCornerRadius:20.0];

    v23 = [(CKOrganicImageBalloonView *)self layer];
    [v23 setCornerCurve:v8];

    v24 = [(CKOrganicImageBalloonView *)self layer];
    [v24 setMasksToBounds:1];

    v25 = [(CKOrganicImageBalloonView *)self imageView];
    [v25 setAlpha:0.5];
  }

  else
  {
    v8 = *MEMORY[0x1E69796E8];
  }

  v26 = [(CKBalloonView *)self invisibleInkEffectController];
  v27 = [v26 effectView];

  v28 = [v27 layer];
  [v28 setCornerRadius:20.0];

  v29 = [v27 layer];
  [v29 setCornerCurve:v8];

  v30 = [v27 layer];
  [v30 setMasksToBounds:1];

  v31 = [(CKOrganicImageBalloonView *)self layoutRecipe];
  [v31 rotation];
  v33 = v32;

  memset(&v47, 0, sizeof(v47));
  v34 = *(MEMORY[0x1E695EFD0] + 16);
  *&v46.a = *MEMORY[0x1E695EFD0];
  *&v46.c = v34;
  *&v46.tx = *(MEMORY[0x1E695EFD0] + 32);
  CGAffineTransformRotate(&v47, &v46, v33 * 3.14159265 / 180.0);
  v46 = v47;
  [(CKOrganicImageBalloonView *)self setTransform:&v46];
  v35 = [(CKOrganicImageBalloonView *)self traitCollection];
  v36 = [v35 isTranscriptBackgroundActive];

  v37 = [(CKOrganicImageBalloonView *)self layoutRecipe];
  v38 = [v37 wantsShadow];

  if (v38 && (v36 & 1) == 0)
  {
    v39 = [(CKOrganicImageBalloonView *)self layer];
    [v39 setShadowOffset:{0.0, 7.0}];

    v40 = [(CKOrganicImageBalloonView *)self layer];
    LODWORD(v41) = 1045220557;
    [v40 setShadowOpacity:v41];

    v42 = [(CKOrganicImageBalloonView *)self layer];
    [v42 setShadowRadius:27.0];

    v43 = [(CKOrganicImageBalloonView *)self layer];
    [v43 setShadowPathIsBounds:1];
  }

  v44 = [(CKOrganicImageBalloonView *)self imageView];
  v45 = [v44 layer];
  [v45 setAllowsEdgeAntialiasing:1];
}

- (void)setMonoskiBadgeView:(id)a3
{
  v7.receiver = self;
  v7.super_class = CKOrganicImageBalloonView;
  v3 = a3;
  [(CKImageBalloonView *)&v7 setMonoskiBadgeView:v3];
  v4 = [v3 layer];
  [v4 setCornerRadius:20.0];

  v5 = [v3 layer];
  [v5 setCornerCurve:*MEMORY[0x1E69796E8]];

  v6 = [v3 layer];

  [v6 setMasksToBounds:1];
}

- (void)layoutSubviews
{
  v53.receiver = self;
  v53.super_class = CKOrganicImageBalloonView;
  [(CKImageBalloonView *)&v53 layoutSubviews];
  v3 = [(CKImageBalloonView *)self monoskiBadgeView];

  if (v3)
  {
    [(CKOrganicImageBalloonView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [(CKImageBalloonView *)self monoskiBadgeView];
    [v12 setFrame:{v5, v7, v9, v11}];
  }

  v13 = [(CKImageBalloonView *)self irisBadgeView];
  if (v13)
  {
    v14 = v13;
    v15 = [(CKBalloonView *)self orientation];

    if (!v15)
    {
      v16 = [(CKImageBalloonView *)self irisBadgeView];
      [v16 frame];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      v25 = +[CKUIBehavior sharedBehaviors];
      [v25 balloonMaskTailWidth];
      v27 = v18 - v26;

      v28 = [(CKImageBalloonView *)self irisBadgeView];
      [v28 setFrame:{v27, v20, v22, v24}];
    }
  }

  [(CKOrganicImageBalloonView *)self bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = [(CKOrganicImageBalloonView *)self imageView];
  [v37 setFrame:{v30, v32, v34, v36}];

  v38 = MEMORY[0x1E69DC728];
  v39 = [(CKOrganicImageBalloonView *)self layer];
  [v39 bounds];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = [(CKOrganicImageBalloonView *)self layer];
  [v48 cornerRadius];
  v50 = [v38 bezierPathWithRoundedRect:v41 cornerRadius:{v43, v45, v47, v49}];
  v51 = [v50 CGPath];
  v52 = [(CKOrganicImageBalloonView *)self dashedBorder];
  [v52 setPath:v51];

  [(CKOrganicImageBalloonView *)self updateOrganicImageMaterial];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v4 = [(CKImageBalloonView *)self highlightOverlayColor];
  [v3 setBackgroundColor:{objc_msgSend(v4, "CGColor")}];

  [v3 setAllowsEdgeAntialiasing:1];

  return v3;
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
        *v19 = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_DEBUG, "Cannot have two backdrop filter layers", v19, 2u);
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

    [(CKImageBalloonView *)self setSuppressMask:1];
    v11 = [(CKOrganicImageBalloonView *)self layer];
    [v11 setAllowsGroupBlending:0];

    v12 = objc_alloc_init(MEMORY[0x1E6979310]);
    [(CKOrganicImageBalloonView *)self bounds];
    [v12 setFrame:?];
    [v12 setGroupName:@"FSMBackdropGroup"];
    v13 = [v4 balloonBackdropFilters];
    [v12 setFilters:v13];

    [v12 setScale:0.25];
    [v12 setCornerRadius:20.0];
    [v12 setCornerCurve:*MEMORY[0x1E69796E8]];
    [v12 setMasksToBounds:1];
    [(CKOrganicImageBalloonView *)self bounds];
    [v12 setFrame:?];
    [(CKBalloonView *)self setBackdropFilterLayer:v12];
    v14 = [(CKOrganicImageBalloonView *)self layer];
    [v14 addSublayer:v12];

    [(CKBalloonView *)self setInvisibleInkEffectEnabled:0];
  }

  v15 = [(CKOrganicImageBalloonView *)self layer];
  v16 = [v4 balloonFilters];
  [v15 setFilters:v16];

  v17 = [(CKOrganicImageBalloonView *)self layer];
  v18 = [v4 balloonCompositingFilter];
  [v17 setCompositingFilter:v18];
}

- (void)setImage:(id)a3
{
  v7.receiver = self;
  v7.super_class = CKOrganicImageBalloonView;
  v4 = a3;
  [(CKImageBalloonView *)&v7 setImage:0];
  v5 = [(CKOrganicImageBalloonView *)self layer:v7.receiver];
  [v5 setContents:0];

  v6 = [(CKOrganicImageBalloonView *)self imageView];
  [v6 setImage:v4];
}

- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5
{
  height = a3.height;
  width = a3.width;
  v7 = [(CKOrganicImageBalloonView *)self imageView:a4];
  v8 = [v7 image];

  if (v8)
  {
    [v8 size];
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

- (void)setInvisibleInkEffectImage:(id)a3
{
  v4 = a3;
  v5 = [(CKOrganicImageBalloonView *)self imageView];
  [v5 setInvisibleInkEffectImage:v4];
}

- (id)invisibleInkEffectImage
{
  v2 = [(CKOrganicImageBalloonView *)self imageView];
  v3 = [v2 invisibleInkEffectImage];

  return v3;
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
  v3 = [(CKBalloonView *)self invisibleInkEffectController];
  v5 = [v3 effectView];

  v4 = [(CKOrganicImageBalloonView *)self imageView];
  [(CKOrganicImageBalloonView *)self insertSubview:v5 aboveSubview:v4];
}

- (void)detachInvisibleInkEffectView
{
  v2 = [(CKBalloonView *)self invisibleInkEffectController];
  v3 = [v2 effectView];

  [v3 removeFromSuperview];
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
  v4 = [(CKOrganicImageBalloonView *)self imageView];
  [v4 setAlpha:1.0];

  v5 = [(CKOrganicImageBalloonView *)self layer];
  [v5 setBorderColor:0];

  v6 = [(CKOrganicImageBalloonView *)self layer];
  [v6 setBorderWidth:0.0];
}

- (void)updateOrganicImageMaterial
{
  v24 = [(CKOrganicImageBalloonView *)self traitCollection];
  v3 = [v24 userInterfaceStyle];
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
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
  v8 = [v24 isTranscriptBackgroundActive];
  v9 = MEMORY[0x1E69DC728];
  v10 = [(CKOrganicImageBalloonView *)self imageView];
  [v10 bounds];
  v11 = [v9 bezierPathWithRoundedRect:? cornerRadius:?];
  -[CKBackdropMaterialVibrantOuterStrokeLayer setPath:](self->_organicImageContentBorderLayer, "setPath:", [v11 CGPath]);

  [(CKBackdropMaterialVibrantOuterStrokeLayer *)self->_organicImageContentBorderLayer setHidden:v8 ^ 1u];
  v12 = [(CKOrganicImageBalloonView *)self imageView];
  v13 = [v12 layer];
  [v13 setCornerRadius:20.0];

  v14 = *MEMORY[0x1E69796E8];
  v15 = [(CKOrganicImageBalloonView *)self imageView];
  v16 = [v15 layer];
  [v16 setCornerCurve:v14];

  v17 = [(CKOrganicImageBalloonView *)self imageView];
  v18 = [v17 layer];
  [v18 setMasksToBounds:1];

  v19 = [(CKOrganicImageBalloonView *)self layer];
  v20 = self->_organicImageContentBorderLayer;
  v21 = [(CKOrganicImageBalloonView *)self imageView];
  v22 = [v21 layer];
  [v19 insertSublayer:v20 below:v22];

  v23 = [(CKOrganicImageBalloonView *)self imageView];
  [v23 bounds];
  [(CKBackdropMaterialVibrantOuterStrokeLayer *)self->_organicImageContentBorderLayer setFrame:?];
}

- (void)configureForMessagePart:(id)a3
{
  v6.receiver = self;
  v6.super_class = CKOrganicImageBalloonView;
  v4 = a3;
  [(CKImageBalloonView *)&v6 configureForMessagePart:v4];
  v5 = [v4 layoutRecipe];

  [(CKOrganicImageBalloonView *)self setLayoutRecipe:v5];
}

@end