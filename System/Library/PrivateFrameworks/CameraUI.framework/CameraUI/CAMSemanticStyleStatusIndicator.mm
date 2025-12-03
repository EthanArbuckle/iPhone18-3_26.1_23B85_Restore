@interface CAMSemanticStyleStatusIndicator
- (CAMSemanticStyleStatusIndicator)init;
- (CGRect)_platterFrame;
- (CGSize)intrinsicContentSize;
- (id)_generatePlatterImageWithRenderer:(id)renderer colors:(id)colors size:(CGSize)size;
- (int64_t)_visibleTickCount;
- (void)_updateGradientAlphasAnimated:(BOOL)animated;
- (void)_updateGradientImages;
- (void)_updateImageOrientationAnimated:(BOOL)animated;
- (void)_updatePlatterStrokeProgressAnimated:(BOOL)animated;
- (void)_updateStrokePath;
- (void)_updateTicksAnimated:(BOOL)animated;
- (void)layoutSubviews;
- (void)setSemanticStyle:(id)style animated:(BOOL)animated;
@end

@implementation CAMSemanticStyleStatusIndicator

- (CAMSemanticStyleStatusIndicator)init
{
  v106[4] = *MEMORY[0x1E69E9840];
  v88.receiver = self;
  v88.super_class = CAMSemanticStyleStatusIndicator;
  v2 = [(CAMControlStatusIndicator *)&v88 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v2)
  {
    v3 = [[CAMSemanticStyle alloc] initWithPresetType:0];
    semanticStyle = v2->_semanticStyle;
    v2->_semanticStyle = v3;

    v5 = MEMORY[0x1E69DCAB8];
    v6 = CAMCameraUIFrameworkBundle();
    v87 = [v5 imageNamed:@"CAMSemanticStyleIndicator" inBundle:v6];

    v7 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v87];
    stackSymbolView = v2->__stackSymbolView;
    v2->__stackSymbolView = v7;

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIImageView *)v2->__stackSymbolView setTintColor:whiteColor];

    [(CAMSemanticStyleStatusIndicator *)v2 addSubview:v2->__stackSymbolView];
    v10 = objc_alloc_init(MEMORY[0x1E69DD250]);
    platterView = v2->__platterView;
    v2->__platterView = v10;

    [(UIView *)v2->__platterView setUserInteractionEnabled:0];
    [(CAMSemanticStyleStatusIndicator *)v2 insertSubview:v2->__platterView belowSubview:v2->__stackSymbolView];
    v12 = objc_alloc_init(MEMORY[0x1E6979398]);
    neutralPlatterLayer = v2->__neutralPlatterLayer;
    v2->__neutralPlatterLayer = v12;

    v14 = *MEMORY[0x1E6979DD0];
    [(CALayer *)v2->__neutralPlatterLayer setContentsGravity:*MEMORY[0x1E6979DD0]];
    traitCollection = [(CAMSemanticStyleStatusIndicator *)v2 traitCollection];
    [traitCollection displayScale];
    [(CALayer *)v2->__neutralPlatterLayer setContentsScale:?];

    v105[0] = @"bounds";
    null = [MEMORY[0x1E695DFB0] null];
    v106[0] = null;
    v105[1] = @"position";
    null2 = [MEMORY[0x1E695DFB0] null];
    v106[1] = null2;
    v105[2] = @"opacity";
    null3 = [MEMORY[0x1E695DFB0] null];
    v106[2] = null3;
    v105[3] = @"contents";
    null4 = [MEMORY[0x1E695DFB0] null];
    v106[3] = null4;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:v105 count:4];
    [(CALayer *)v2->__neutralPlatterLayer setActions:v20];

    layer = [(UIView *)v2->__platterView layer];
    [layer addSublayer:v2->__neutralPlatterLayer];

    v22 = objc_alloc_init(MEMORY[0x1E6979398]);
    coolPlatterLayer = v2->__coolPlatterLayer;
    v2->__coolPlatterLayer = v22;

    [(CALayer *)v2->__coolPlatterLayer setContentsGravity:v14];
    traitCollection2 = [(CAMSemanticStyleStatusIndicator *)v2 traitCollection];
    [traitCollection2 displayScale];
    [(CALayer *)v2->__coolPlatterLayer setContentsScale:?];

    v103[0] = @"bounds";
    null5 = [MEMORY[0x1E695DFB0] null];
    v104[0] = null5;
    v103[1] = @"position";
    null6 = [MEMORY[0x1E695DFB0] null];
    v104[1] = null6;
    v103[2] = @"opacity";
    null7 = [MEMORY[0x1E695DFB0] null];
    v104[2] = null7;
    v103[3] = @"contents";
    null8 = [MEMORY[0x1E695DFB0] null];
    v104[3] = null8;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:v103 count:4];
    [(CALayer *)v2->__coolPlatterLayer setActions:v29];

    layer2 = [(UIView *)v2->__platterView layer];
    [layer2 addSublayer:v2->__coolPlatterLayer];

    v31 = objc_alloc_init(MEMORY[0x1E6979398]);
    warmPlatterLayer = v2->__warmPlatterLayer;
    v2->__warmPlatterLayer = v31;

    [(CALayer *)v2->__warmPlatterLayer setContentsGravity:v14];
    traitCollection3 = [(CAMSemanticStyleStatusIndicator *)v2 traitCollection];
    [traitCollection3 displayScale];
    [(CALayer *)v2->__warmPlatterLayer setContentsScale:?];

    v101[0] = @"bounds";
    null9 = [MEMORY[0x1E695DFB0] null];
    v102[0] = null9;
    v101[1] = @"position";
    null10 = [MEMORY[0x1E695DFB0] null];
    v102[1] = null10;
    v101[2] = @"opacity";
    null11 = [MEMORY[0x1E695DFB0] null];
    v102[2] = null11;
    v101[3] = @"contents";
    null12 = [MEMORY[0x1E695DFB0] null];
    v102[3] = null12;
    v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:v101 count:4];
    [(CALayer *)v2->__warmPlatterLayer setActions:v38];

    layer3 = [(UIView *)v2->__platterView layer];
    [layer3 addSublayer:v2->__warmPlatterLayer];

    v40 = objc_alloc_init(MEMORY[0x1E6979398]);
    platterMaskLayer = v2->__platterMaskLayer;
    v2->__platterMaskLayer = v40;

    v99[0] = @"bounds";
    null13 = [MEMORY[0x1E695DFB0] null];
    v99[1] = @"position";
    v100[0] = null13;
    null14 = [MEMORY[0x1E695DFB0] null];
    v100[1] = null14;
    v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v100 forKeys:v99 count:2];
    [(CALayer *)v2->__platterMaskLayer setActions:v44];

    v45 = v2->__platterMaskLayer;
    layer4 = [(UIView *)v2->__platterView layer];
    [layer4 setMask:v45];

    v47 = objc_alloc_init(MEMORY[0x1E6979398]);
    maskBackgroundLayer = v2->__maskBackgroundLayer;
    v2->__maskBackgroundLayer = v47;

    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    -[CALayer setBackgroundColor:](v2->__maskBackgroundLayer, "setBackgroundColor:", [whiteColor2 CGColor]);

    v97[0] = @"bounds";
    null15 = [MEMORY[0x1E695DFB0] null];
    v98[0] = null15;
    v97[1] = @"position";
    null16 = [MEMORY[0x1E695DFB0] null];
    v98[1] = null16;
    v97[2] = @"opacity";
    null17 = [MEMORY[0x1E695DFB0] null];
    v98[2] = null17;
    v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v98 forKeys:v97 count:3];
    [(CALayer *)v2->__maskBackgroundLayer setActions:v53];

    [(CALayer *)v2->__platterMaskLayer addSublayer:v2->__maskBackgroundLayer];
    v54 = objc_alloc_init(MEMORY[0x1E69794A0]);
    maskStrokeLayer = v2->__maskStrokeLayer;
    v2->__maskStrokeLayer = v54;

    whiteColor3 = [MEMORY[0x1E69DC888] whiteColor];
    -[CAShapeLayer setStrokeColor:](v2->__maskStrokeLayer, "setStrokeColor:", [whiteColor3 CGColor]);

    [(CAShapeLayer *)v2->__maskStrokeLayer setFillColor:0];
    [(CAShapeLayer *)v2->__maskStrokeLayer setLineWidth:1.0];
    v95[0] = @"bounds";
    null18 = [MEMORY[0x1E695DFB0] null];
    v96[0] = null18;
    v95[1] = @"position";
    null19 = [MEMORY[0x1E695DFB0] null];
    v96[1] = null19;
    v95[2] = @"path";
    null20 = [MEMORY[0x1E695DFB0] null];
    v96[2] = null20;
    v95[3] = @"strokeStart";
    null21 = [MEMORY[0x1E695DFB0] null];
    v96[3] = null21;
    v95[4] = @"strokeEnd";
    null22 = [MEMORY[0x1E695DFB0] null];
    v96[4] = null22;
    v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:v95 count:5];
    [(CAShapeLayer *)v2->__maskStrokeLayer setActions:v62];

    [(CALayer *)v2->__platterMaskLayer addSublayer:v2->__maskStrokeLayer];
    v63 = objc_alloc_init(MEMORY[0x1E6979430]);
    maskTickReplicatorLayer = v2->__maskTickReplicatorLayer;
    v2->__maskTickReplicatorLayer = v63;

    v93[0] = @"bounds";
    null23 = [MEMORY[0x1E695DFB0] null];
    v94[0] = null23;
    v93[1] = @"position";
    null24 = [MEMORY[0x1E695DFB0] null];
    v94[1] = null24;
    v93[2] = @"instanceCount";
    null25 = [MEMORY[0x1E695DFB0] null];
    v94[2] = null25;
    v93[3] = @"instanceTransform";
    null26 = [MEMORY[0x1E695DFB0] null];
    v94[3] = null26;
    v93[4] = @"hidden";
    null27 = [MEMORY[0x1E695DFB0] null];
    v94[4] = null27;
    v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:v93 count:5];
    [(CAReplicatorLayer *)v2->__maskTickReplicatorLayer setActions:v70];

    [(CALayer *)v2->__platterMaskLayer addSublayer:v2->__maskTickReplicatorLayer];
    v71 = objc_alloc_init(MEMORY[0x1E6979398]);
    maskSmallTickLayer = v2->__maskSmallTickLayer;
    v2->__maskSmallTickLayer = v71;

    whiteColor4 = [MEMORY[0x1E69DC888] whiteColor];
    -[CALayer setBackgroundColor:](v2->__maskSmallTickLayer, "setBackgroundColor:", [whiteColor4 CGColor]);

    traitCollection4 = [(CAMSemanticStyleStatusIndicator *)v2 traitCollection];
    [traitCollection4 displayScale];
    [(CALayer *)v2->__maskSmallTickLayer setRasterizationScale:?];

    [(CALayer *)v2->__maskSmallTickLayer setAllowsEdgeAntialiasing:1];
    v91[0] = @"bounds";
    null28 = [MEMORY[0x1E695DFB0] null];
    v91[1] = @"position";
    v92[0] = null28;
    null29 = [MEMORY[0x1E695DFB0] null];
    v92[1] = null29;
    v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:2];
    [(CALayer *)v2->__maskSmallTickLayer setActions:v77];

    [(CAReplicatorLayer *)v2->__maskTickReplicatorLayer addSublayer:v2->__maskSmallTickLayer];
    v78 = objc_alloc_init(MEMORY[0x1E6979398]);
    maskLargeTickLayer = v2->__maskLargeTickLayer;
    v2->__maskLargeTickLayer = v78;

    whiteColor5 = [MEMORY[0x1E69DC888] whiteColor];
    -[CALayer setBackgroundColor:](v2->__maskLargeTickLayer, "setBackgroundColor:", [whiteColor5 CGColor]);

    traitCollection5 = [(CAMSemanticStyleStatusIndicator *)v2 traitCollection];
    [traitCollection5 displayScale];
    [(CALayer *)v2->__maskLargeTickLayer setRasterizationScale:?];

    [(CALayer *)v2->__maskLargeTickLayer setAllowsEdgeAntialiasing:1];
    v89[0] = @"bounds";
    null30 = [MEMORY[0x1E695DFB0] null];
    v90[0] = null30;
    v89[1] = @"position";
    null31 = [MEMORY[0x1E695DFB0] null];
    v90[1] = null31;
    v89[2] = @"hidden";
    null32 = [MEMORY[0x1E695DFB0] null];
    v90[2] = null32;
    v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:v89 count:3];
    [(CALayer *)v2->__maskLargeTickLayer setActions:v85];

    [(CALayer *)v2->__platterMaskLayer addSublayer:v2->__maskLargeTickLayer];
    [(CAMSemanticStyleStatusIndicator *)v2 _updateStrokePath];
    [(CAMSemanticStyleStatusIndicator *)v2 _updateGradientImages];
    [(CAMSemanticStyleStatusIndicator *)v2 _updateTicksAnimated:0];
    [(CAMSemanticStyleStatusIndicator *)v2 _updateGradientAlphasAnimated:0];
    [(CAMSemanticStyleStatusIndicator *)v2 _updatePlatterStrokeProgressAnimated:0];
  }

  return v2;
}

- (void)_updateImageOrientationAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _stackSymbolView = [(CAMSemanticStyleStatusIndicator *)self _stackSymbolView];
  [CAMView rotateView:_stackSymbolView toInterfaceOrientation:[(CAMControlStatusIndicator *)self orientation] animated:animatedCopy];

  _platterView = [(CAMSemanticStyleStatusIndicator *)self _platterView];
  [CAMView rotateView:_platterView toInterfaceOrientation:[(CAMControlStatusIndicator *)self orientation] animated:animatedCopy];
}

- (void)setSemanticStyle:(id)style animated:(BOOL)animated
{
  animatedCopy = animated;
  styleCopy = style;
  if (![(CAMSemanticStyle *)self->_semanticStyle isEqualToSemanticStyle:?])
  {
    objc_storeStrong(&self->_semanticStyle, style);
    [(CAMSemanticStyleStatusIndicator *)self _updateTicksAnimated:animatedCopy];
    [(CAMSemanticStyleStatusIndicator *)self _updatePlatterStrokeProgressAnimated:animatedCopy];
    [(CAMSemanticStyleStatusIndicator *)self _updateGradientAlphasAnimated:animatedCopy];
  }
}

- (int64_t)_visibleTickCount
{
  semanticStyle = [(CAMSemanticStyleStatusIndicator *)self semanticStyle];
  [semanticStyle sceneBias];
  v5 = fabs(v4);

  if (v5 < 0.005)
  {
    return 36;
  }

  semanticStyle2 = [(CAMSemanticStyleStatusIndicator *)self semanticStyle];
  [semanticStyle2 sceneBias];
  v9 = vcvtpd_s64_f64((1.0 - fabs(v8)) * 36.0);

  if (v9 <= 1)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

- (id)_generatePlatterImageWithRenderer:(id)renderer colors:(id)colors size:(CGSize)size
{
  height = size.height;
  width = size.width;
  colorsCopy = colors;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__CAMSemanticStyleStatusIndicator__generatePlatterImageWithRenderer_colors_size___block_invoke;
  v12[3] = &unk_1E76FA550;
  v13 = colorsCopy;
  v14 = width;
  v15 = height;
  v9 = colorsCopy;
  v10 = [renderer imageWithActions:v12];

  return v10;
}

void __81__CAMSemanticStyleStatusIndicator__generatePlatterImageWithRenderer_colors_size___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        v11 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:{2, v18}];
        v12 = [v10 resolvedColorWithTraitCollection:v11];

        [v4 addObject:{objc_msgSend(v12, "CGColor")}];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v13 = [MEMORY[0x1E69DC888] redColor];
  ColorSpace = CGColorGetColorSpace([v13 CGColor]);

  v15 = CGGradientCreateWithColors(ColorSpace, v4, 0);
  v16 = [v3 CGContext];
  CGContextSaveGState(v16);
  v26.size.width = *(a1 + 40);
  v26.size.height = *(a1 + 48);
  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  v17 = CGPathCreateWithEllipseInRect(v26, 0);
  CGContextAddPath(v16, v17);
  CGContextClip(v16);
  v25.y = *(a1 + 48);
  v24.x = 0.0;
  v24.y = 0.0;
  v25.x = 0.0;
  CGContextDrawLinearGradient(v16, v15, v24, v25, 0);
  CGPathRelease(v17);
  CGGradientRelease(v15);
  CGContextRestoreGState(v16);
}

- (void)_updateGradientImages
{
  v29[2] = *MEMORY[0x1E69E9840];
  [(CAMSemanticStyleStatusIndicator *)self _platterFrame];
  v4 = v3;
  v6 = v5;
  preferredFormat = [MEMORY[0x1E69DCA80] preferredFormat];
  [preferredFormat setPreferredRange:2];
  v8 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:preferredFormat format:{v4, v6}];
  v9 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.6];
  v29[0] = v9;
  v10 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.6];
  v29[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v12 = [(CAMSemanticStyleStatusIndicator *)self _generatePlatterImageWithRenderer:v8 colors:v11 size:v4, v6];

  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  v28[0] = systemBlueColor;
  systemCyanColor = [MEMORY[0x1E69DC888] systemCyanColor];
  v28[1] = systemCyanColor;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v16 = [(CAMSemanticStyleStatusIndicator *)self _generatePlatterImageWithRenderer:v8 colors:v15 size:v4, v6];

  systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
  v27[0] = systemRedColor;
  systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
  v27[1] = systemYellowColor;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v20 = [(CAMSemanticStyleStatusIndicator *)self _generatePlatterImageWithRenderer:v8 colors:v19 size:v4, v6];

  cGImage = [v12 CGImage];
  _neutralPlatterLayer = [(CAMSemanticStyleStatusIndicator *)self _neutralPlatterLayer];
  [_neutralPlatterLayer setContents:cGImage];

  cGImage2 = [v16 CGImage];
  _coolPlatterLayer = [(CAMSemanticStyleStatusIndicator *)self _coolPlatterLayer];
  [_coolPlatterLayer setContents:cGImage2];

  cGImage3 = [v20 CGImage];
  _warmPlatterLayer = [(CAMSemanticStyleStatusIndicator *)self _warmPlatterLayer];
  [_warmPlatterLayer setContents:cGImage3];
}

- (void)_updateGradientAlphasAnimated:(BOOL)animated
{
  animatedCopy = animated;
  semanticStyle = [(CAMSemanticStyleStatusIndicator *)self semanticStyle];
  [semanticStyle warmthBias];

  CEKProgressClamped();
  v7 = v6;
  CEKProgressClamped();
  v8 = -(v7 * (v7 + -2.0));
  v10 = -(v9 * (v9 + -2.0));
  CEKInterpolateClamped();
  v12 = v11;
  if (animatedCopy)
  {
    v13 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    v14 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    _coolPlatterLayer = [(CAMSemanticStyleStatusIndicator *)self _coolPlatterLayer];
    presentationLayer = [_coolPlatterLayer presentationLayer];
    v17 = presentationLayer;
    if (presentationLayer)
    {
      _coolPlatterLayer2 = presentationLayer;
    }

    else
    {
      _coolPlatterLayer2 = [(CAMSemanticStyleStatusIndicator *)self _coolPlatterLayer];
    }

    v19 = _coolPlatterLayer2;

    v20 = MEMORY[0x1E696AD98];
    v52 = v19;
    [v19 opacity];
    v21 = [v20 numberWithFloat:?];
    [v14 setFromValue:v21];

    v22 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
    [v14 setToValue:v22];

    [v14 setDuration:0.5];
    [v14 setTimingFunction:v13];
    _coolPlatterLayer3 = [(CAMSemanticStyleStatusIndicator *)self _coolPlatterLayer];
    [_coolPlatterLayer3 addAnimation:v14 forKey:@"opacityAnimation"];

    v24 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    _warmPlatterLayer = [(CAMSemanticStyleStatusIndicator *)self _warmPlatterLayer];
    presentationLayer2 = [_warmPlatterLayer presentationLayer];
    v27 = presentationLayer2;
    if (presentationLayer2)
    {
      _warmPlatterLayer2 = presentationLayer2;
    }

    else
    {
      _warmPlatterLayer2 = [(CAMSemanticStyleStatusIndicator *)self _warmPlatterLayer];
    }

    v29 = _warmPlatterLayer2;

    v30 = MEMORY[0x1E696AD98];
    [v29 opacity];
    v31 = [v30 numberWithFloat:?];
    [v24 setFromValue:v31];

    v32 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
    [v24 setToValue:v32];

    [v24 setDuration:0.5];
    [v24 setTimingFunction:v13];
    _warmPlatterLayer3 = [(CAMSemanticStyleStatusIndicator *)self _warmPlatterLayer];
    [_warmPlatterLayer3 addAnimation:v24 forKey:@"opacityAnimation"];

    v34 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    _maskBackgroundLayer = [(CAMSemanticStyleStatusIndicator *)self _maskBackgroundLayer];
    presentationLayer3 = [_maskBackgroundLayer presentationLayer];
    v37 = presentationLayer3;
    if (presentationLayer3)
    {
      _maskBackgroundLayer2 = presentationLayer3;
    }

    else
    {
      _maskBackgroundLayer2 = [(CAMSemanticStyleStatusIndicator *)self _maskBackgroundLayer];
    }

    v39 = _maskBackgroundLayer2;

    v40 = MEMORY[0x1E696AD98];
    [v39 opacity];
    v41 = [v40 numberWithFloat:?];
    [v34 setFromValue:v41];

    v42 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
    [v34 setToValue:v42];

    [v34 setDuration:0.5];
    [v34 setTimingFunction:v13];
    _maskBackgroundLayer3 = [(CAMSemanticStyleStatusIndicator *)self _maskBackgroundLayer];
    [_maskBackgroundLayer3 addAnimation:v34 forKey:@"opacityAnimation"];
  }

  _coolPlatterLayer4 = [(CAMSemanticStyleStatusIndicator *)self _coolPlatterLayer];
  v44 = v8;
  *&v46 = v44;
  [_coolPlatterLayer4 setOpacity:v46];

  _warmPlatterLayer4 = [(CAMSemanticStyleStatusIndicator *)self _warmPlatterLayer];
  v47 = v10;
  *&v49 = v47;
  [_warmPlatterLayer4 setOpacity:v49];

  _maskBackgroundLayer4 = [(CAMSemanticStyleStatusIndicator *)self _maskBackgroundLayer];
  v50 = v12;
  *&v51 = v50;
  [_maskBackgroundLayer4 setOpacity:v51];
}

- (void)_updateTicksAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v46[2] = *MEMORY[0x1E69E9840];
  _visibleTickCount = [(CAMSemanticStyleStatusIndicator *)self _visibleTickCount];
  semanticStyle = [(CAMSemanticStyleStatusIndicator *)self semanticStyle];
  [semanticStyle sceneBias];
  v8 = dbl_1A3A68770[v7 > 0.0];

  memset(&v43, 0, sizeof(v43));
  CATransform3DMakeRotation(&v43, v8, 0.0, 0.0, 1.0);
  if (animatedCopy)
  {
    v9 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    _maskTickReplicatorLayer = [(CAMSemanticStyleStatusIndicator *)self _maskTickReplicatorLayer];
    presentationLayer = [_maskTickReplicatorLayer presentationLayer];
    v12 = presentationLayer;
    if (presentationLayer)
    {
      _maskTickReplicatorLayer2 = presentationLayer;
    }

    else
    {
      _maskTickReplicatorLayer2 = [(CAMSemanticStyleStatusIndicator *)self _maskTickReplicatorLayer];
    }

    v14 = _maskTickReplicatorLayer2;

    memset(&v42, 0, sizeof(v42));
    if (v14)
    {
      [v14 instanceTransform];
    }

    instanceCount = [v14 instanceCount];
    a = v42;
    b = v43;
    v16 = CATransform3DEqualToTransform(&a, &b);
    semanticStyle2 = [(CAMSemanticStyleStatusIndicator *)self semanticStyle];
    [semanticStyle2 sceneBias];
    v19 = v18;

    if (!v16 || v19 == 0.0)
    {
      v24 = (36 - instanceCount) / (36 - instanceCount - _visibleTickCount + 36);
      v20 = [MEMORY[0x1E6979318] animationWithKeyPath:@"instanceCount"];
      v25 = [MEMORY[0x1E696AD98] numberWithInteger:instanceCount + 1];
      [v20 setFromValue:v25];

      [v20 setToValue:&unk_1F16C79B8];
      [v20 setDuration:v24 * 0.5];
      _maskTickReplicatorLayer4 = [MEMORY[0x1E6979318] animationWithKeyPath:@"instanceCount"];
      [_maskTickReplicatorLayer4 setFromValue:&unk_1F16C79B8];
      v26 = [MEMORY[0x1E696AD98] numberWithInteger:_visibleTickCount + 1];
      [_maskTickReplicatorLayer4 setToValue:v26];

      [_maskTickReplicatorLayer4 setDuration:(1.0 - v24) * 0.5];
      [_maskTickReplicatorLayer4 setBeginTime:v24 * 0.5];
      v27 = [MEMORY[0x1E6979390] animationWithKeyPath:@"instanceTransform"];
      a = v42;
      v28 = [MEMORY[0x1E696B098] valueWithCATransform3D:&a];
      v46[0] = v28;
      a = v43;
      v29 = [MEMORY[0x1E696B098] valueWithCATransform3D:&a];
      v46[1] = v29;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
      v31 = v30 = v9;
      [v27 setValues:v31];

      v9 = v30;
      v45[0] = &unk_1F16C79D0;
      v32 = [MEMORY[0x1E696AD98] numberWithDouble:v24];
      v45[1] = v32;
      v45[2] = &unk_1F16C79E8;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:3];
      [v27 setKeyTimes:v33];

      [v27 setDuration:0.5];
      [v27 setCalculationMode:*MEMORY[0x1E69795A0]];
      animation = [MEMORY[0x1E6979308] animation];
      [animation setDuration:0.5];
      v44[0] = v20;
      v44[1] = _maskTickReplicatorLayer4;
      v44[2] = v27;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:3];
      [animation setAnimations:v35];

      [animation setTimingFunction:v30];
      _maskTickReplicatorLayer3 = [(CAMSemanticStyleStatusIndicator *)self _maskTickReplicatorLayer];
      [_maskTickReplicatorLayer3 addAnimation:animation forKey:@"instanceCountAnimation"];
    }

    else
    {
      v20 = [MEMORY[0x1E6979318] animationWithKeyPath:@"instanceCount"];
      v21 = [MEMORY[0x1E696AD98] numberWithInteger:instanceCount + 1];
      [v20 setFromValue:v21];

      v22 = [MEMORY[0x1E696AD98] numberWithInteger:_visibleTickCount + 1];
      [v20 setToValue:v22];

      [v20 setDuration:0.5];
      [v20 setTimingFunction:v9];
      _maskTickReplicatorLayer4 = [(CAMSemanticStyleStatusIndicator *)self _maskTickReplicatorLayer];
      [_maskTickReplicatorLayer4 addAnimation:v20 forKey:@"instanceCountAnimation"];
    }
  }

  _maskTickReplicatorLayer5 = [(CAMSemanticStyleStatusIndicator *)self _maskTickReplicatorLayer];
  [_maskTickReplicatorLayer5 setInstanceCount:_visibleTickCount];

  v39 = v43;
  _maskTickReplicatorLayer6 = [(CAMSemanticStyleStatusIndicator *)self _maskTickReplicatorLayer];
  v42 = v39;
  [_maskTickReplicatorLayer6 setInstanceTransform:&v42];
}

- (void)_updatePlatterStrokeProgressAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v67[4] = *MEMORY[0x1E69E9840];
  semanticStyle = [(CAMSemanticStyleStatusIndicator *)self semanticStyle];
  [semanticStyle sceneBias];
  v7 = v6;

  v8 = 0.0;
  v9 = 0.0;
  if (v7 != 0.0)
  {
    _visibleTickCount = [(CAMSemanticStyleStatusIndicator *)self _visibleTickCount];
    [(CAMSemanticStyleStatusIndicator *)self _platterFrame];
    v9 = 1.0 - ((v11 * 3.14159265 + -36.0) / 36.0 + fmax(_visibleTickCount + -0.5, 0.0) + fmax(_visibleTickCount + -1.0, 0.0) * ((v11 * 3.14159265 + -36.0) / 36.0)) / (v11 * 3.14159265);
  }

  v12 = v7 < 0.0;
  if (v7 >= 0.0)
  {
    v13 = v9;
  }

  else
  {
    v13 = -v9;
  }

  if (v7 >= 0.0)
  {
    v14 = v9;
  }

  else
  {
    v14 = 1.0;
  }

  if (v12)
  {
    v8 = 1.0 - v9;
  }

  if (animatedCopy)
  {
    v15 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    _maskStrokeLayer = [(CAMSemanticStyleStatusIndicator *)self _maskStrokeLayer];
    presentationLayer = [_maskStrokeLayer presentationLayer];
    v18 = presentationLayer;
    if (presentationLayer)
    {
      _maskStrokeLayer2 = presentationLayer;
    }

    else
    {
      _maskStrokeLayer2 = [(CAMSemanticStyleStatusIndicator *)self _maskStrokeLayer];
    }

    v20 = _maskStrokeLayer2;

    [v20 strokeEnd];
    v22 = v21;
    [v20 strokeStart];
    v24 = v22 - v23;
    [v20 strokeEnd];
    if (v25 == 1.0)
    {
      v26 = -v24;
    }

    else
    {
      v26 = v24;
    }

    if (v13 >= 0.0 == v26 >= 0.0)
    {
      [v20 strokeStart];
      v48 = v47;
      [v20 strokeEnd];
      if (v13 < 0.0)
      {
        v50 = 1.0;
      }

      else
      {
        v50 = 0.0;
      }

      v51 = v24 == 0.0;
      if (v24 == 0.0)
      {
        v52 = v50;
      }

      else
      {
        v52 = v48;
      }

      if (v51)
      {
        v53 = v50;
      }

      else
      {
        v53 = v49;
      }

      if (v26 < 0.0)
      {
        v54 = 1.0;
      }

      else
      {
        v54 = 0.0;
      }

      v55 = v9 == 0.0;
      if (v9 == 0.0)
      {
        v56 = v54;
      }

      else
      {
        v56 = v8;
      }

      if (v55)
      {
        v57 = v54;
      }

      else
      {
        v57 = v14;
      }

      v30 = [MEMORY[0x1E6979318] animationWithKeyPath:@"strokeStart"];
      v58 = [MEMORY[0x1E696AD98] numberWithDouble:v52];
      [v30 setFromValue:v58];

      v59 = [MEMORY[0x1E696AD98] numberWithDouble:v56];
      [v30 setToValue:v59];

      [v30 setDuration:0.5];
      v34 = [MEMORY[0x1E6979318] animationWithKeyPath:@"strokeEnd"];
      v60 = [MEMORY[0x1E696AD98] numberWithDouble:v53];
      [v34 setFromValue:v60];

      v61 = [MEMORY[0x1E696AD98] numberWithDouble:v57];
      [v34 setToValue:v61];

      [v34 setDuration:0.5];
      animation = [MEMORY[0x1E6979308] animation];
      [animation setDuration:0.5];
      v66[0] = v30;
      v66[1] = v34;
      v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
      [animation setAnimations:v62];

      [animation setTimingFunction:v15];
      _maskStrokeLayer3 = [(CAMSemanticStyleStatusIndicator *)self _maskStrokeLayer];
      [_maskStrokeLayer3 addAnimation:animation forKey:@"strokeProgressAnimation"];
    }

    else
    {
      v27 = fabs(v24 / (v13 - v26));
      if (v26 < 0.0)
      {
        v28 = 1.0;
      }

      else
      {
        v28 = 0.0;
      }

      if (v13 < 0.0)
      {
        v29 = 1.0;
      }

      else
      {
        v29 = 0.0;
      }

      v30 = [MEMORY[0x1E6979318] animationWithKeyPath:{@"strokeStart", 1.0 - v27}];
      v31 = MEMORY[0x1E696AD98];
      [v20 strokeStart];
      v32 = [v31 numberWithDouble:?];
      [v30 setFromValue:v32];

      v33 = [MEMORY[0x1E696AD98] numberWithDouble:v28];
      [v30 setToValue:v33];

      [v30 setDuration:v27 * 0.5];
      v34 = [MEMORY[0x1E6979318] animationWithKeyPath:@"strokeEnd"];
      v35 = MEMORY[0x1E696AD98];
      [v20 strokeEnd];
      v36 = [v35 numberWithDouble:?];
      [v34 setFromValue:v36];

      v37 = [MEMORY[0x1E696AD98] numberWithDouble:v28];
      [v34 setToValue:v37];

      [v34 setDuration:v27 * 0.5];
      animation = [MEMORY[0x1E6979318] animationWithKeyPath:@"strokeStart"];
      v39 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
      [animation setFromValue:v39];

      v40 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
      [animation setToValue:v40];

      [animation setDuration:v65 * 0.5];
      [animation setBeginTime:v27 * 0.5];
      _maskStrokeLayer3 = [MEMORY[0x1E6979318] animationWithKeyPath:@"strokeEnd"];
      v42 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
      [_maskStrokeLayer3 setFromValue:v42];

      v43 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
      [_maskStrokeLayer3 setToValue:v43];

      [_maskStrokeLayer3 setDuration:v65 * 0.5];
      [_maskStrokeLayer3 setBeginTime:v27 * 0.5];
      animation2 = [MEMORY[0x1E6979308] animation];
      [animation2 setDuration:0.5];
      v67[0] = v30;
      v67[1] = v34;
      v67[2] = animation;
      v67[3] = _maskStrokeLayer3;
      v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:4];
      [animation2 setAnimations:v45];

      [animation2 setTimingFunction:v15];
      _maskStrokeLayer4 = [(CAMSemanticStyleStatusIndicator *)self _maskStrokeLayer];
      [_maskStrokeLayer4 addAnimation:animation2 forKey:@"strokeProgressAnimation"];
    }
  }

  _maskStrokeLayer5 = [(CAMSemanticStyleStatusIndicator *)self _maskStrokeLayer];
  [_maskStrokeLayer5 setStrokeStart:v8];

  _maskStrokeLayer6 = [(CAMSemanticStyleStatusIndicator *)self _maskStrokeLayer];
  [_maskStrokeLayer6 setStrokeEnd:v14];
}

- (void)_updateStrokePath
{
  v3 = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFF8] + 8);
  [(CAMSemanticStyleStatusIndicator *)self _platterFrame];
  v12.origin.x = v3;
  v12.origin.y = v4;
  v13 = CGRectInset(v12, 0.5, 0.5);
  width = v13.size.width;
  UIRectGetCenter();
  v8 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:1 radius:v6 startAngle:v7 endAngle:CAMPixelWidthForView(self) + width * 0.5 + -0.5 clockwise:{-1.57079633, 4.71238898}];
  cGPath = [v8 CGPath];

  _maskStrokeLayer = [(CAMSemanticStyleStatusIndicator *)self _maskStrokeLayer];
  [_maskStrokeLayer setPath:cGPath];
}

- (CGRect)_platterFrame
{
  [(CAMSemanticStyleStatusIndicator *)self bounds];
  [(CAMSemanticStyleStatusIndicator *)self alignmentRectForFrame:?];
  UIRectGetCenter();

  UIRectCenteredAboutPointScale();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)layoutSubviews
{
  v54.receiver = self;
  v54.super_class = CAMSemanticStyleStatusIndicator;
  [(CAMControlStatusIndicator *)&v54 layoutSubviews];
  [(CAMSemanticStyleStatusIndicator *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _stackSymbolView = [(CAMSemanticStyleStatusIndicator *)self _stackSymbolView];
  [(CAMSemanticStyleStatusIndicator *)self alignmentRectForFrame:v4, v6, v8, v10];
  UIRectGetCenter();
  v13 = *MEMORY[0x1E695EFF8];
  v12 = *(MEMORY[0x1E695EFF8] + 8);
  [_stackSymbolView intrinsicContentSize];
  [_stackSymbolView frameForAlignmentRect:{v13, v12, v14, v15}];
  v17 = v16;
  v19 = v18;
  UIRectCenteredAboutPointScale();
  UIRectGetCenter();
  [_stackSymbolView setCenter:?];
  [_stackSymbolView setBounds:{v13, v12, v17, v19}];
  [(CAMSemanticStyleStatusIndicator *)self _platterFrame];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  _platterView = [(CAMSemanticStyleStatusIndicator *)self _platterView];
  CAMViewSetBoundsAndCenterForFrame(_platterView, v21, v23, v25, v27);

  UIRectGetCenter();
  v30 = v29;
  v32 = v31;
  _neutralPlatterLayer = [(CAMSemanticStyleStatusIndicator *)self _neutralPlatterLayer];
  [_neutralPlatterLayer setPosition:{v30, v32}];

  _neutralPlatterLayer2 = [(CAMSemanticStyleStatusIndicator *)self _neutralPlatterLayer];
  [_neutralPlatterLayer2 setBounds:{v13, v12, v25, v27}];

  _coolPlatterLayer = [(CAMSemanticStyleStatusIndicator *)self _coolPlatterLayer];
  [_coolPlatterLayer setPosition:{v30, v32}];

  _coolPlatterLayer2 = [(CAMSemanticStyleStatusIndicator *)self _coolPlatterLayer];
  [_coolPlatterLayer2 setFrame:{v13, v12, v25, v27}];

  _warmPlatterLayer = [(CAMSemanticStyleStatusIndicator *)self _warmPlatterLayer];
  [_warmPlatterLayer setPosition:{v30, v32}];

  _warmPlatterLayer2 = [(CAMSemanticStyleStatusIndicator *)self _warmPlatterLayer];
  [_warmPlatterLayer2 setBounds:{v13, v12, v25, v27}];

  _platterMaskLayer = [(CAMSemanticStyleStatusIndicator *)self _platterMaskLayer];
  [_platterMaskLayer setPosition:{v30, v32}];

  _platterMaskLayer2 = [(CAMSemanticStyleStatusIndicator *)self _platterMaskLayer];
  [_platterMaskLayer2 setBounds:{v13, v12, v25, v27}];

  _maskBackgroundLayer = [(CAMSemanticStyleStatusIndicator *)self _maskBackgroundLayer];
  [_maskBackgroundLayer setPosition:{v30, v32}];

  _maskBackgroundLayer2 = [(CAMSemanticStyleStatusIndicator *)self _maskBackgroundLayer];
  [_maskBackgroundLayer2 setBounds:{v13, v12, v25, v27}];

  _maskStrokeLayer = [(CAMSemanticStyleStatusIndicator *)self _maskStrokeLayer];
  [_maskStrokeLayer setPosition:{v30, v32}];

  _maskStrokeLayer2 = [(CAMSemanticStyleStatusIndicator *)self _maskStrokeLayer];
  [_maskStrokeLayer2 setBounds:{v13, v12, v25, v27}];

  _maskTickReplicatorLayer = [(CAMSemanticStyleStatusIndicator *)self _maskTickReplicatorLayer];
  [_maskTickReplicatorLayer setPosition:{v30, v32}];

  _maskTickReplicatorLayer2 = [(CAMSemanticStyleStatusIndicator *)self _maskTickReplicatorLayer];
  [_maskTickReplicatorLayer2 setBounds:{v13, v12, v25, v27}];

  v47 = CAMPixelWidthForView(self) + 1.0;
  UIPointRoundToViewScale();
  v49 = v48;
  v51 = v50;
  _maskSmallTickLayer = [(CAMSemanticStyleStatusIndicator *)self _maskSmallTickLayer];
  [_maskSmallTickLayer setFrame:{v49, v51, 1.0, v47}];

  _maskLargeTickLayer = [(CAMSemanticStyleStatusIndicator *)self _maskLargeTickLayer];
  [_maskLargeTickLayer setFrame:{v49, v51, 1.0, 2.0}];

  [(CAMSemanticStyleStatusIndicator *)self _updateStrokePath];
}

- (CGSize)intrinsicContentSize
{
  _stackSymbolView = [(CAMSemanticStyleStatusIndicator *)self _stackSymbolView];
  image = [_stackSymbolView image];
  [image size];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end