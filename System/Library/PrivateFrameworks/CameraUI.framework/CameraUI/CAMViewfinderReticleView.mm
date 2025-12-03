@interface CAMViewfinderReticleView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CAMViewfinderReticleView)initWithFrame:(CGRect)frame;
- (id)_newViewportCornerImage;
- (id)_newViewportTemplateImage;
- (void)_createGradientViewsIfNeeded;
- (void)_updateMaterialOpacityWithDuration:(double)duration;
- (void)layoutSubviews;
- (void)setCornersVisible:(BOOL)visible animated:(BOOL)animated;
- (void)setMaterial:(int64_t)material withDuration:(double)duration;
- (void)setOverCaptureGradientHeight:(double)height animated:(BOOL)animated;
- (void)setOverCaptureGradientVisible:(BOOL)visible animated:(BOOL)animated;
- (void)setViewportTopInset:(double)inset bottomInset:(double)bottomInset animated:(BOOL)animated;
@end

@implementation CAMViewfinderReticleView

- (CAMViewfinderReticleView)initWithFrame:(CGRect)frame
{
  v45.receiver = self;
  v45.super_class = CAMViewfinderReticleView;
  v3 = [(CAMViewfinderReticleView *)&v45 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->__cornersAllowed = 0;
    v3->_cornersVisible = 0;
    v5 = objc_alloc(MEMORY[0x1E69DD250]);
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    v10 = [v5 initWithFrame:{*MEMORY[0x1E695F058], v7, v8, v9}];
    topMaskingView = v4->__topMaskingView;
    v4->__topMaskingView = v10;

    v12 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v7, v8, v9}];
    bottomMaskingView = v4->__bottomMaskingView;
    v4->__bottomMaskingView = v12;

    [(CAMViewfinderReticleView *)v4 addSubview:v4->__topMaskingView];
    [(CAMViewfinderReticleView *)v4 addSubview:v4->__bottomMaskingView];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    cornersAllowed = 0;
    if ([currentDevice cam_initialLayoutStyle] == 3)
    {
      cornersAllowed = v4->__cornersAllowed;
    }

    v16 = +[CAMCaptureCapabilities capabilities];
    useReticleStroke = [v16 useReticleStroke];

    if (useReticleStroke)
    {
      _newViewportTemplateImage = [(CAMViewfinderReticleView *)v4 _newViewportTemplateImage];
      _newViewportCornerImage = [_newViewportTemplateImage resizableImageWithCapInsets:1 resizingMode:{24.0, 24.0, 24.0, 24.0}];

      v20 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:_newViewportCornerImage];
      p_viewportBorderView = &v4->__viewportBorderView;
      viewportBorderView = v4->__viewportBorderView;
      v4->__viewportBorderView = v20;
    }

    else
    {
      if (!cornersAllowed)
      {
LABEL_9:
        v35 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:1.0];
        _topMaskingView = [(CAMViewfinderReticleView *)v4 _topMaskingView];
        [_topMaskingView setBackgroundColor:v35];

        _bottomMaskingView = [(CAMViewfinderReticleView *)v4 _bottomMaskingView];
        [_bottomMaskingView setBackgroundColor:v35];

        [(CAMViewfinderReticleView *)v4 _updateMaterialOpacityWithDuration:0.0];
        v38 = v4;

        goto LABEL_10;
      }

      _newViewportCornerImage = [(CAMViewfinderReticleView *)v4 _newViewportCornerImage];
      v23 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:_newViewportCornerImage];
      topLeftCornerView = v4->__topLeftCornerView;
      v4->__topLeftCornerView = v23;

      v25 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:_newViewportCornerImage];
      topRightCornerView = v4->__topRightCornerView;
      v4->__topRightCornerView = v25;

      v27 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:_newViewportCornerImage];
      bottomLeftCornerView = v4->__bottomLeftCornerView;
      v4->__bottomLeftCornerView = v27;

      v29 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:_newViewportCornerImage];
      p_viewportBorderView = &v4->__bottomRightCornerView;
      bottomRightCornerView = v4->__bottomRightCornerView;
      v4->__bottomRightCornerView = v29;

      CGAffineTransformMakeRotation(&v43, 0.0);
      UIIntegralTransform();
      v31 = v4->__topLeftCornerView;
      v43 = v44;
      [(UIImageView *)v31 setTransform:&v43];
      CGAffineTransformMakeRotation(&v43, 1.57079633);
      UIIntegralTransform();
      v32 = v4->__topRightCornerView;
      v43 = v42;
      [(UIImageView *)v32 setTransform:&v43];
      CGAffineTransformMakeRotation(&v43, -1.57079633);
      UIIntegralTransform();
      v33 = v4->__bottomLeftCornerView;
      v43 = v41;
      [(UIImageView *)v33 setTransform:&v43];
      CGAffineTransformMakeRotation(&v43, 3.14159265);
      UIIntegralTransform();
      v34 = v4->__bottomRightCornerView;
      v43 = v40;
      [(UIImageView *)v34 setTransform:&v43];
      [(CAMViewfinderReticleView *)v4 addSubview:v4->__topLeftCornerView];
      [(CAMViewfinderReticleView *)v4 addSubview:v4->__topRightCornerView];
      [(CAMViewfinderReticleView *)v4 addSubview:v4->__bottomLeftCornerView];
    }

    [(CAMViewfinderReticleView *)v4 addSubview:*p_viewportBorderView];

    goto LABEL_9;
  }

LABEL_10:

  return v4;
}

- (void)layoutSubviews
{
  _topMaskingView = [(CAMViewfinderReticleView *)self _topMaskingView];
  _bottomMaskingView = [(CAMViewfinderReticleView *)self _bottomMaskingView];
  [(CAMViewfinderReticleView *)self bounds];
  v5 = v4;
  v7 = v6;
  [(CAMViewfinderReticleView *)self viewportTopInset];
  [_topMaskingView setFrame:{0.0, 0.0, v5, v8}];
  [_topMaskingView frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  _topOverCaptureGradientView = [(CAMViewfinderReticleView *)self _topOverCaptureGradientView];
  [_topOverCaptureGradientView setFrame:{v10, v12, v14, v16}];

  [(CAMViewfinderReticleView *)self viewportBottomInset];
  v19 = v7 - v18;
  [(CAMViewfinderReticleView *)self viewportBottomInset];
  [_bottomMaskingView setFrame:{0.0, v19, v5, v20}];
  [_bottomMaskingView frame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  _bottomOverCaptureGradientView = [(CAMViewfinderReticleView *)self _bottomOverCaptureGradientView];
  [_bottomOverCaptureGradientView setFrame:{v22, v24, v26, v28}];

  [(CAMViewfinderReticleView *)self viewportBottomInset];
  v31 = v7 - v30;
  [(CAMViewfinderReticleView *)self viewportTopInset];
  v33 = v31 - v32;
  [(CAMViewfinderReticleView *)self viewportTopInset];
  v35 = v34;
  v36 = +[CAMCaptureCapabilities capabilities];
  useReticleStroke = [v36 useReticleStroke];

  if (useReticleStroke)
  {
    _viewportBorderView = [(CAMViewfinderReticleView *)self _viewportBorderView];
    [_viewportBorderView setFrame:{0.0, v35, v5, v33}];
  }

  else
  {
    v64.origin.x = 0.0;
    v64.origin.y = v35;
    v64.size.width = v5;
    v64.size.height = v33;
    v65 = CGRectInset(v64, 12.0, 12.0);
    x = v65.origin.x;
    y = v65.origin.y;
    width = v65.size.width;
    height = v65.size.height;
    CGRectGetMinX(v65);
    v66.origin.x = x;
    v66.origin.y = y;
    v66.size.width = width;
    v66.size.height = height;
    CGRectGetMinY(v66);
    UIRectCenteredAboutPointScale();
    UIRectGetCenter();
    v44 = v43;
    v46 = v45;
    _topLeftCornerView = [(CAMViewfinderReticleView *)self _topLeftCornerView];
    [_topLeftCornerView setCenter:{v44, v46}];

    v67.origin.x = x;
    v67.origin.y = y;
    v67.size.width = width;
    v67.size.height = height;
    CGRectGetMaxX(v67);
    v68.origin.x = x;
    v68.origin.y = y;
    v68.size.width = width;
    v68.size.height = height;
    CGRectGetMinY(v68);
    UIRectCenteredAboutPointScale();
    UIRectGetCenter();
    v49 = v48;
    v51 = v50;
    _topRightCornerView = [(CAMViewfinderReticleView *)self _topRightCornerView];
    [_topRightCornerView setCenter:{v49, v51}];

    v69.origin.x = x;
    v69.origin.y = y;
    v69.size.width = width;
    v69.size.height = height;
    CGRectGetMinX(v69);
    v70.origin.x = x;
    v70.origin.y = y;
    v70.size.width = width;
    v70.size.height = height;
    CGRectGetMaxY(v70);
    UIRectCenteredAboutPointScale();
    UIRectGetCenter();
    v54 = v53;
    v56 = v55;
    _bottomLeftCornerView = [(CAMViewfinderReticleView *)self _bottomLeftCornerView];
    [_bottomLeftCornerView setCenter:{v54, v56}];

    v71.origin.x = x;
    v71.origin.y = y;
    v71.size.width = width;
    v71.size.height = height;
    CGRectGetMaxX(v71);
    v72.origin.x = x;
    v72.origin.y = y;
    v72.size.width = width;
    v72.size.height = height;
    CGRectGetMaxY(v72);
    UIRectCenteredAboutPointScale();
    UIRectGetCenter();
    v59 = v58;
    v61 = v60;
    _viewportBorderView = [(CAMViewfinderReticleView *)self _bottomRightCornerView];
    [_viewportBorderView setCenter:{v59, v61}];
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  _topMaskingView = [(CAMViewfinderReticleView *)self _topMaskingView];
  [_topMaskingView frame];
  v11.x = x;
  v11.y = y;
  v8 = CGRectContainsPoint(v13, v11);

  _bottomMaskingView = [(CAMViewfinderReticleView *)self _bottomMaskingView];
  [_bottomMaskingView frame];
  v12.x = x;
  v12.y = y;
  LOBYTE(_topMaskingView) = CGRectContainsPoint(v14, v12);

  return (v8 | _topMaskingView) & 1;
}

- (void)setMaterial:(int64_t)material withDuration:(double)duration
{
  if (self->_material != material)
  {
    self->_material = material;
    [(CAMViewfinderReticleView *)self _updateMaterialOpacityWithDuration:duration];
  }
}

- (void)_updateMaterialOpacityWithDuration:(double)duration
{
  v5 = +[CAMCaptureCapabilities capabilities];
  v6 = 0;
  if (([v5 featureDevelopmentHidePreviewOverlayBars] & 1) == 0)
  {
    material = [(CAMViewfinderReticleView *)self material];
    if (material <= 4)
    {
      v6 = qword_1A3A69F70[material];
    }
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__CAMViewfinderReticleView__updateMaterialOpacityWithDuration___block_invoke;
  v11[3] = &unk_1E76F7A38;
  v11[4] = self;
  v11[5] = v6;
  [CAMView animateIfNeededWithDuration:4 options:v11 animations:0 completion:duration];
  v8 = [(CAMViewfinderReticleView *)self material]< 4;
  _topOverCaptureGradientView = [(CAMViewfinderReticleView *)self _topOverCaptureGradientView];
  [_topOverCaptureGradientView setGradientVisible:v8 animated:duration > 0.0];

  _bottomOverCaptureGradientView = [(CAMViewfinderReticleView *)self _bottomOverCaptureGradientView];
  [_bottomOverCaptureGradientView setGradientVisible:v8 animated:duration > 0.0];
}

void __63__CAMViewfinderReticleView__updateMaterialOpacityWithDuration___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) _topMaskingView];
  [v3 setAlpha:v2];

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) _bottomMaskingView];
  [v5 setAlpha:v4];
}

- (id)_newViewportCornerImage
{
  v6.width = 24.0;
  v6.height = 24.0;
  UIGraphicsBeginImageContextWithOptions(v6, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v3 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.51];
  [v3 setStroke];
  v7.origin.x = 0.5;
  v7.origin.y = 0.5;
  v7.size.width = 24.0;
  v7.size.height = 24.0;
  CGContextStrokeRectWithWidth(CurrentContext, v7, 1.0);
  v4 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v4;
}

- (id)_newViewportTemplateImage
{
  v35 = *MEMORY[0x1E69E9840];
  v36.width = 49.0;
  v36.height = 49.0;
  UIGraphicsBeginImageContextWithOptions(v36, 0, 0.0);
  v2 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.51];
  [v2 setStroke];
  CurrentContext = UIGraphicsGetCurrentContext();
  v37.origin.x = *MEMORY[0x1E695EFF8];
  v37.origin.y = *(MEMORY[0x1E695EFF8] + 8);
  v37.size.width = 49.0;
  v37.size.height = 49.0;
  v38 = CGRectInset(v37, 0.5, 0.5);
  CGContextStrokeRectWithWidth(CurrentContext, v38, 1.0);
  v4 = objc_alloc(MEMORY[0x1E695DEC8]);
  v5 = [MEMORY[0x1E696B098] valueWithCGRect:{24.0, 0.0, 1.0, 1.0}];
  v6 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, 24.0, 1.0, 1.0}];
  v7 = [MEMORY[0x1E696B098] valueWithCGRect:{24.0, 48.0, 1.0, 1.0}];
  v8 = [MEMORY[0x1E696B098] valueWithCGRect:{48.0, 24.0, 1.0, 1.0}];
  v9 = [v4 initWithObjects:{v5, v6, v7, v8, 0}];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    do
    {
      v14 = 0;
      do
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v29 + 1) + 8 * v14) CGRectValue];
        CGContextClearRect(CurrentContext, v39);
        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v12);
  }

  v15 = +[CAMCaptureCapabilities capabilities];
  useReticleStroke = [v15 useReticleStroke];

  if (useReticleStroke)
  {
    v17 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.3];
    [v17 setFill];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v18 = v10;
    v19 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      do
      {
        v22 = 0;
        do
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v25 + 1) + 8 * v22) CGRectValue];
          CGContextFillRect(CurrentContext, v40);
          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v20);
    }
  }

  v23 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v23;
}

- (void)setViewportTopInset:(double)inset bottomInset:(double)bottomInset animated:(BOOL)animated
{
  if (self->_viewportTopInset != inset || self->_viewportBottomInset != bottomInset)
  {
    if (animated)
    {
      [(CAMViewfinderReticleView *)self layoutIfNeeded];
      self->_viewportTopInset = inset;
      self->_viewportBottomInset = bottomInset;
      [(CAMViewfinderReticleView *)self setNeedsLayout];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __69__CAMViewfinderReticleView_setViewportTopInset_bottomInset_animated___block_invoke;
      v8[3] = &unk_1E76F77B0;
      v8[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v8 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:1.0];
    }

    else
    {
      self->_viewportTopInset = inset;
      self->_viewportBottomInset = bottomInset;

      [(CAMViewfinderReticleView *)self setNeedsLayout];
    }
  }
}

- (void)setCornersVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->_cornersVisible != visible)
  {
    animatedCopy = animated;
    visibleCopy = visible;
    if ([(CAMViewfinderReticleView *)self _cornersAllowed])
    {
      self->_cornersVisible = visibleCopy;
      v7 = 0.0;
      v9[1] = 3221225472;
      v8 = 1.0;
      if (!visibleCopy)
      {
        v8 = 0.0;
      }

      v9[0] = MEMORY[0x1E69E9820];
      v9[2] = __55__CAMViewfinderReticleView_setCornersVisible_animated___block_invoke;
      v9[3] = &unk_1E76F7A38;
      if (animatedCopy)
      {
        v7 = 0.25;
      }

      v9[4] = self;
      *&v9[5] = v8;
      [CAMView animateIfNeededWithDuration:v9 animations:v7, 0.25];
    }
  }
}

void __55__CAMViewfinderReticleView_setCornersVisible_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) _topLeftCornerView];
  [v3 setAlpha:v2];

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) _topRightCornerView];
  [v5 setAlpha:v4];

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) _bottomLeftCornerView];
  [v7 setAlpha:v6];

  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) _bottomRightCornerView];
  [v9 setAlpha:v8];
}

- (void)setOverCaptureGradientVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->_overCaptureGradientVisible != visible)
  {
    v19 = v7;
    v20 = v6;
    v21 = v4;
    v22 = v5;
    animatedCopy = animated;
    visibleCopy = visible;
    self->_overCaptureGradientVisible = visible;
    [(CAMViewfinderReticleView *)self _createGradientViewsIfNeeded];
    if (animatedCopy)
    {
      [(CAMViewfinderReticleView *)self layoutIfNeeded];
      v11 = 0.25;
    }

    else
    {
      v11 = 0.0;
    }

    v14 = 3221225472;
    v12 = 1.0;
    v13 = MEMORY[0x1E69E9820];
    v15 = __67__CAMViewfinderReticleView_setOverCaptureGradientVisible_animated___block_invoke;
    v16 = &unk_1E76F7A38;
    if (!visibleCopy)
    {
      v12 = 0.0;
    }

    selfCopy = self;
    v18 = v12;
    [CAMView animateIfNeededWithDuration:4 options:&v13 animations:0 completion:v11];
    [(CAMViewfinderReticleView *)self _updateMaterialOpacityWithDuration:v11, v13, v14, v15, v16];
  }
}

void __67__CAMViewfinderReticleView_setOverCaptureGradientVisible_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) _topOverCaptureGradientView];
  [v3 setAlpha:v2];

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) _bottomOverCaptureGradientView];
  [v5 setAlpha:v4];
}

- (void)setOverCaptureGradientHeight:(double)height animated:(BOOL)animated
{
  if (self->_overCaptureGradientHeight != height)
  {
    animatedCopy = animated;
    self->_overCaptureGradientHeight = height;
    _topOverCaptureGradientView = [(CAMViewfinderReticleView *)self _topOverCaptureGradientView];
    [_topOverCaptureGradientView setGradientHeight:animatedCopy animated:height];

    _bottomOverCaptureGradientView = [(CAMViewfinderReticleView *)self _bottomOverCaptureGradientView];
    [_bottomOverCaptureGradientView setGradientHeight:animatedCopy animated:height];
  }
}

- (void)_createGradientViewsIfNeeded
{
  if (+[CAMUserPreferences topOverCaptureGradientEnabled])
  {
    _topOverCaptureGradientView = [(CAMViewfinderReticleView *)self _topOverCaptureGradientView];

    if (!_topOverCaptureGradientView)
    {
      v4 = objc_alloc_init(CAMVerticalGradientView);
      [(CAMViewfinderReticleView *)self overCaptureGradientHeight];
      [(CAMVerticalGradientView *)v4 setGradientHeight:?];
      [(CAMVerticalGradientView *)v4 setGradientAscending:0];
      _topMaskingView = [(CAMViewfinderReticleView *)self _topMaskingView];
      [(CAMViewfinderReticleView *)self insertSubview:v4 aboveSubview:_topMaskingView];

      [(CAMViewfinderReticleView *)self set_topOverCaptureGradientView:v4];
      [(CAMViewfinderReticleView *)self setNeedsLayout];
    }
  }

  if (+[CAMUserPreferences bottomOverCaptureGradientEnabled])
  {
    _bottomOverCaptureGradientView = [(CAMViewfinderReticleView *)self _bottomOverCaptureGradientView];

    if (!_bottomOverCaptureGradientView)
    {
      v8 = objc_alloc_init(CAMVerticalGradientView);
      [(CAMViewfinderReticleView *)self overCaptureGradientHeight];
      [(CAMVerticalGradientView *)v8 setGradientHeight:?];
      [(CAMVerticalGradientView *)v8 setGradientAscending:1];
      _bottomMaskingView = [(CAMViewfinderReticleView *)self _bottomMaskingView];
      [(CAMViewfinderReticleView *)self insertSubview:v8 aboveSubview:_bottomMaskingView];

      [(CAMViewfinderReticleView *)self set_bottomOverCaptureGradientView:v8];
      [(CAMViewfinderReticleView *)self setNeedsLayout];
    }
  }
}

@end