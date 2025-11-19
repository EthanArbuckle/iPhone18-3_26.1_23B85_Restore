@interface CAMViewfinderReticleView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CAMViewfinderReticleView)initWithFrame:(CGRect)a3;
- (id)_newViewportCornerImage;
- (id)_newViewportTemplateImage;
- (void)_createGradientViewsIfNeeded;
- (void)_updateMaterialOpacityWithDuration:(double)a3;
- (void)layoutSubviews;
- (void)setCornersVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)setMaterial:(int64_t)a3 withDuration:(double)a4;
- (void)setOverCaptureGradientHeight:(double)a3 animated:(BOOL)a4;
- (void)setOverCaptureGradientVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)setViewportTopInset:(double)a3 bottomInset:(double)a4 animated:(BOOL)a5;
@end

@implementation CAMViewfinderReticleView

- (CAMViewfinderReticleView)initWithFrame:(CGRect)a3
{
  v45.receiver = self;
  v45.super_class = CAMViewfinderReticleView;
  v3 = [(CAMViewfinderReticleView *)&v45 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v14 = [MEMORY[0x1E69DC938] currentDevice];
    cornersAllowed = 0;
    if ([v14 cam_initialLayoutStyle] == 3)
    {
      cornersAllowed = v4->__cornersAllowed;
    }

    v16 = +[CAMCaptureCapabilities capabilities];
    v17 = [v16 useReticleStroke];

    if (v17)
    {
      v18 = [(CAMViewfinderReticleView *)v4 _newViewportTemplateImage];
      v19 = [v18 resizableImageWithCapInsets:1 resizingMode:{24.0, 24.0, 24.0, 24.0}];

      v20 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v19];
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
        v36 = [(CAMViewfinderReticleView *)v4 _topMaskingView];
        [v36 setBackgroundColor:v35];

        v37 = [(CAMViewfinderReticleView *)v4 _bottomMaskingView];
        [v37 setBackgroundColor:v35];

        [(CAMViewfinderReticleView *)v4 _updateMaterialOpacityWithDuration:0.0];
        v38 = v4;

        goto LABEL_10;
      }

      v19 = [(CAMViewfinderReticleView *)v4 _newViewportCornerImage];
      v23 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v19];
      topLeftCornerView = v4->__topLeftCornerView;
      v4->__topLeftCornerView = v23;

      v25 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v19];
      topRightCornerView = v4->__topRightCornerView;
      v4->__topRightCornerView = v25;

      v27 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v19];
      bottomLeftCornerView = v4->__bottomLeftCornerView;
      v4->__bottomLeftCornerView = v27;

      v29 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v19];
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
  v62 = [(CAMViewfinderReticleView *)self _topMaskingView];
  v3 = [(CAMViewfinderReticleView *)self _bottomMaskingView];
  [(CAMViewfinderReticleView *)self bounds];
  v5 = v4;
  v7 = v6;
  [(CAMViewfinderReticleView *)self viewportTopInset];
  [v62 setFrame:{0.0, 0.0, v5, v8}];
  [v62 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(CAMViewfinderReticleView *)self _topOverCaptureGradientView];
  [v17 setFrame:{v10, v12, v14, v16}];

  [(CAMViewfinderReticleView *)self viewportBottomInset];
  v19 = v7 - v18;
  [(CAMViewfinderReticleView *)self viewportBottomInset];
  [v3 setFrame:{0.0, v19, v5, v20}];
  [v3 frame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = [(CAMViewfinderReticleView *)self _bottomOverCaptureGradientView];
  [v29 setFrame:{v22, v24, v26, v28}];

  [(CAMViewfinderReticleView *)self viewportBottomInset];
  v31 = v7 - v30;
  [(CAMViewfinderReticleView *)self viewportTopInset];
  v33 = v31 - v32;
  [(CAMViewfinderReticleView *)self viewportTopInset];
  v35 = v34;
  v36 = +[CAMCaptureCapabilities capabilities];
  v37 = [v36 useReticleStroke];

  if (v37)
  {
    v38 = [(CAMViewfinderReticleView *)self _viewportBorderView];
    [v38 setFrame:{0.0, v35, v5, v33}];
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
    v47 = [(CAMViewfinderReticleView *)self _topLeftCornerView];
    [v47 setCenter:{v44, v46}];

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
    v52 = [(CAMViewfinderReticleView *)self _topRightCornerView];
    [v52 setCenter:{v49, v51}];

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
    v57 = [(CAMViewfinderReticleView *)self _bottomLeftCornerView];
    [v57 setCenter:{v54, v56}];

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
    v38 = [(CAMViewfinderReticleView *)self _bottomRightCornerView];
    [v38 setCenter:{v59, v61}];
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(CAMViewfinderReticleView *)self _topMaskingView];
  [v7 frame];
  v11.x = x;
  v11.y = y;
  v8 = CGRectContainsPoint(v13, v11);

  v9 = [(CAMViewfinderReticleView *)self _bottomMaskingView];
  [v9 frame];
  v12.x = x;
  v12.y = y;
  LOBYTE(v7) = CGRectContainsPoint(v14, v12);

  return (v8 | v7) & 1;
}

- (void)setMaterial:(int64_t)a3 withDuration:(double)a4
{
  if (self->_material != a3)
  {
    self->_material = a3;
    [(CAMViewfinderReticleView *)self _updateMaterialOpacityWithDuration:a4];
  }
}

- (void)_updateMaterialOpacityWithDuration:(double)a3
{
  v5 = +[CAMCaptureCapabilities capabilities];
  v6 = 0;
  if (([v5 featureDevelopmentHidePreviewOverlayBars] & 1) == 0)
  {
    v7 = [(CAMViewfinderReticleView *)self material];
    if (v7 <= 4)
    {
      v6 = qword_1A3A69F70[v7];
    }
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__CAMViewfinderReticleView__updateMaterialOpacityWithDuration___block_invoke;
  v11[3] = &unk_1E76F7A38;
  v11[4] = self;
  v11[5] = v6;
  [CAMView animateIfNeededWithDuration:4 options:v11 animations:0 completion:a3];
  v8 = [(CAMViewfinderReticleView *)self material]< 4;
  v9 = [(CAMViewfinderReticleView *)self _topOverCaptureGradientView];
  [v9 setGradientVisible:v8 animated:a3 > 0.0];

  v10 = [(CAMViewfinderReticleView *)self _bottomOverCaptureGradientView];
  [v10 setGradientVisible:v8 animated:a3 > 0.0];
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
  v16 = [v15 useReticleStroke];

  if (v16)
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

- (void)setViewportTopInset:(double)a3 bottomInset:(double)a4 animated:(BOOL)a5
{
  if (self->_viewportTopInset != a3 || self->_viewportBottomInset != a4)
  {
    if (a5)
    {
      [(CAMViewfinderReticleView *)self layoutIfNeeded];
      self->_viewportTopInset = a3;
      self->_viewportBottomInset = a4;
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
      self->_viewportTopInset = a3;
      self->_viewportBottomInset = a4;

      [(CAMViewfinderReticleView *)self setNeedsLayout];
    }
  }
}

- (void)setCornersVisible:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_cornersVisible != a3)
  {
    v4 = a4;
    v5 = a3;
    if ([(CAMViewfinderReticleView *)self _cornersAllowed])
    {
      self->_cornersVisible = v5;
      v7 = 0.0;
      v9[1] = 3221225472;
      v8 = 1.0;
      if (!v5)
      {
        v8 = 0.0;
      }

      v9[0] = MEMORY[0x1E69E9820];
      v9[2] = __55__CAMViewfinderReticleView_setCornersVisible_animated___block_invoke;
      v9[3] = &unk_1E76F7A38;
      if (v4)
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

- (void)setOverCaptureGradientVisible:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_overCaptureGradientVisible != a3)
  {
    v19 = v7;
    v20 = v6;
    v21 = v4;
    v22 = v5;
    v8 = a4;
    v9 = a3;
    self->_overCaptureGradientVisible = a3;
    [(CAMViewfinderReticleView *)self _createGradientViewsIfNeeded];
    if (v8)
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
    if (!v9)
    {
      v12 = 0.0;
    }

    v17 = self;
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

- (void)setOverCaptureGradientHeight:(double)a3 animated:(BOOL)a4
{
  if (self->_overCaptureGradientHeight != a3)
  {
    v5 = a4;
    self->_overCaptureGradientHeight = a3;
    v7 = [(CAMViewfinderReticleView *)self _topOverCaptureGradientView];
    [v7 setGradientHeight:v5 animated:a3];

    v8 = [(CAMViewfinderReticleView *)self _bottomOverCaptureGradientView];
    [v8 setGradientHeight:v5 animated:a3];
  }
}

- (void)_createGradientViewsIfNeeded
{
  if (+[CAMUserPreferences topOverCaptureGradientEnabled])
  {
    v3 = [(CAMViewfinderReticleView *)self _topOverCaptureGradientView];

    if (!v3)
    {
      v4 = objc_alloc_init(CAMVerticalGradientView);
      [(CAMViewfinderReticleView *)self overCaptureGradientHeight];
      [(CAMVerticalGradientView *)v4 setGradientHeight:?];
      [(CAMVerticalGradientView *)v4 setGradientAscending:0];
      v5 = [(CAMViewfinderReticleView *)self _topMaskingView];
      [(CAMViewfinderReticleView *)self insertSubview:v4 aboveSubview:v5];

      [(CAMViewfinderReticleView *)self set_topOverCaptureGradientView:v4];
      [(CAMViewfinderReticleView *)self setNeedsLayout];
    }
  }

  if (+[CAMUserPreferences bottomOverCaptureGradientEnabled])
  {
    v6 = [(CAMViewfinderReticleView *)self _bottomOverCaptureGradientView];

    if (!v6)
    {
      v8 = objc_alloc_init(CAMVerticalGradientView);
      [(CAMViewfinderReticleView *)self overCaptureGradientHeight];
      [(CAMVerticalGradientView *)v8 setGradientHeight:?];
      [(CAMVerticalGradientView *)v8 setGradientAscending:1];
      v7 = [(CAMViewfinderReticleView *)self _bottomMaskingView];
      [(CAMViewfinderReticleView *)self insertSubview:v8 aboveSubview:v7];

      [(CAMViewfinderReticleView *)self set_bottomOverCaptureGradientView:v8];
      [(CAMViewfinderReticleView *)self setNeedsLayout];
    }
  }
}

@end