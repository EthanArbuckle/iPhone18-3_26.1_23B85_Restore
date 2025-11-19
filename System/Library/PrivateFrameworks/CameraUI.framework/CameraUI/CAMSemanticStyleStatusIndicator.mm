@interface CAMSemanticStyleStatusIndicator
- (CAMSemanticStyleStatusIndicator)init;
- (CGRect)_platterFrame;
- (CGSize)intrinsicContentSize;
- (id)_generatePlatterImageWithRenderer:(id)a3 colors:(id)a4 size:(CGSize)a5;
- (int64_t)_visibleTickCount;
- (void)_updateGradientAlphasAnimated:(BOOL)a3;
- (void)_updateGradientImages;
- (void)_updateImageOrientationAnimated:(BOOL)a3;
- (void)_updatePlatterStrokeProgressAnimated:(BOOL)a3;
- (void)_updateStrokePath;
- (void)_updateTicksAnimated:(BOOL)a3;
- (void)layoutSubviews;
- (void)setSemanticStyle:(id)a3 animated:(BOOL)a4;
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

    v9 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIImageView *)v2->__stackSymbolView setTintColor:v9];

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
    v15 = [(CAMSemanticStyleStatusIndicator *)v2 traitCollection];
    [v15 displayScale];
    [(CALayer *)v2->__neutralPlatterLayer setContentsScale:?];

    v105[0] = @"bounds";
    v16 = [MEMORY[0x1E695DFB0] null];
    v106[0] = v16;
    v105[1] = @"position";
    v17 = [MEMORY[0x1E695DFB0] null];
    v106[1] = v17;
    v105[2] = @"opacity";
    v18 = [MEMORY[0x1E695DFB0] null];
    v106[2] = v18;
    v105[3] = @"contents";
    v19 = [MEMORY[0x1E695DFB0] null];
    v106[3] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:v105 count:4];
    [(CALayer *)v2->__neutralPlatterLayer setActions:v20];

    v21 = [(UIView *)v2->__platterView layer];
    [v21 addSublayer:v2->__neutralPlatterLayer];

    v22 = objc_alloc_init(MEMORY[0x1E6979398]);
    coolPlatterLayer = v2->__coolPlatterLayer;
    v2->__coolPlatterLayer = v22;

    [(CALayer *)v2->__coolPlatterLayer setContentsGravity:v14];
    v24 = [(CAMSemanticStyleStatusIndicator *)v2 traitCollection];
    [v24 displayScale];
    [(CALayer *)v2->__coolPlatterLayer setContentsScale:?];

    v103[0] = @"bounds";
    v25 = [MEMORY[0x1E695DFB0] null];
    v104[0] = v25;
    v103[1] = @"position";
    v26 = [MEMORY[0x1E695DFB0] null];
    v104[1] = v26;
    v103[2] = @"opacity";
    v27 = [MEMORY[0x1E695DFB0] null];
    v104[2] = v27;
    v103[3] = @"contents";
    v28 = [MEMORY[0x1E695DFB0] null];
    v104[3] = v28;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:v103 count:4];
    [(CALayer *)v2->__coolPlatterLayer setActions:v29];

    v30 = [(UIView *)v2->__platterView layer];
    [v30 addSublayer:v2->__coolPlatterLayer];

    v31 = objc_alloc_init(MEMORY[0x1E6979398]);
    warmPlatterLayer = v2->__warmPlatterLayer;
    v2->__warmPlatterLayer = v31;

    [(CALayer *)v2->__warmPlatterLayer setContentsGravity:v14];
    v33 = [(CAMSemanticStyleStatusIndicator *)v2 traitCollection];
    [v33 displayScale];
    [(CALayer *)v2->__warmPlatterLayer setContentsScale:?];

    v101[0] = @"bounds";
    v34 = [MEMORY[0x1E695DFB0] null];
    v102[0] = v34;
    v101[1] = @"position";
    v35 = [MEMORY[0x1E695DFB0] null];
    v102[1] = v35;
    v101[2] = @"opacity";
    v36 = [MEMORY[0x1E695DFB0] null];
    v102[2] = v36;
    v101[3] = @"contents";
    v37 = [MEMORY[0x1E695DFB0] null];
    v102[3] = v37;
    v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:v101 count:4];
    [(CALayer *)v2->__warmPlatterLayer setActions:v38];

    v39 = [(UIView *)v2->__platterView layer];
    [v39 addSublayer:v2->__warmPlatterLayer];

    v40 = objc_alloc_init(MEMORY[0x1E6979398]);
    platterMaskLayer = v2->__platterMaskLayer;
    v2->__platterMaskLayer = v40;

    v99[0] = @"bounds";
    v42 = [MEMORY[0x1E695DFB0] null];
    v99[1] = @"position";
    v100[0] = v42;
    v43 = [MEMORY[0x1E695DFB0] null];
    v100[1] = v43;
    v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v100 forKeys:v99 count:2];
    [(CALayer *)v2->__platterMaskLayer setActions:v44];

    v45 = v2->__platterMaskLayer;
    v46 = [(UIView *)v2->__platterView layer];
    [v46 setMask:v45];

    v47 = objc_alloc_init(MEMORY[0x1E6979398]);
    maskBackgroundLayer = v2->__maskBackgroundLayer;
    v2->__maskBackgroundLayer = v47;

    v49 = [MEMORY[0x1E69DC888] whiteColor];
    -[CALayer setBackgroundColor:](v2->__maskBackgroundLayer, "setBackgroundColor:", [v49 CGColor]);

    v97[0] = @"bounds";
    v50 = [MEMORY[0x1E695DFB0] null];
    v98[0] = v50;
    v97[1] = @"position";
    v51 = [MEMORY[0x1E695DFB0] null];
    v98[1] = v51;
    v97[2] = @"opacity";
    v52 = [MEMORY[0x1E695DFB0] null];
    v98[2] = v52;
    v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v98 forKeys:v97 count:3];
    [(CALayer *)v2->__maskBackgroundLayer setActions:v53];

    [(CALayer *)v2->__platterMaskLayer addSublayer:v2->__maskBackgroundLayer];
    v54 = objc_alloc_init(MEMORY[0x1E69794A0]);
    maskStrokeLayer = v2->__maskStrokeLayer;
    v2->__maskStrokeLayer = v54;

    v56 = [MEMORY[0x1E69DC888] whiteColor];
    -[CAShapeLayer setStrokeColor:](v2->__maskStrokeLayer, "setStrokeColor:", [v56 CGColor]);

    [(CAShapeLayer *)v2->__maskStrokeLayer setFillColor:0];
    [(CAShapeLayer *)v2->__maskStrokeLayer setLineWidth:1.0];
    v95[0] = @"bounds";
    v57 = [MEMORY[0x1E695DFB0] null];
    v96[0] = v57;
    v95[1] = @"position";
    v58 = [MEMORY[0x1E695DFB0] null];
    v96[1] = v58;
    v95[2] = @"path";
    v59 = [MEMORY[0x1E695DFB0] null];
    v96[2] = v59;
    v95[3] = @"strokeStart";
    v60 = [MEMORY[0x1E695DFB0] null];
    v96[3] = v60;
    v95[4] = @"strokeEnd";
    v61 = [MEMORY[0x1E695DFB0] null];
    v96[4] = v61;
    v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:v95 count:5];
    [(CAShapeLayer *)v2->__maskStrokeLayer setActions:v62];

    [(CALayer *)v2->__platterMaskLayer addSublayer:v2->__maskStrokeLayer];
    v63 = objc_alloc_init(MEMORY[0x1E6979430]);
    maskTickReplicatorLayer = v2->__maskTickReplicatorLayer;
    v2->__maskTickReplicatorLayer = v63;

    v93[0] = @"bounds";
    v65 = [MEMORY[0x1E695DFB0] null];
    v94[0] = v65;
    v93[1] = @"position";
    v66 = [MEMORY[0x1E695DFB0] null];
    v94[1] = v66;
    v93[2] = @"instanceCount";
    v67 = [MEMORY[0x1E695DFB0] null];
    v94[2] = v67;
    v93[3] = @"instanceTransform";
    v68 = [MEMORY[0x1E695DFB0] null];
    v94[3] = v68;
    v93[4] = @"hidden";
    v69 = [MEMORY[0x1E695DFB0] null];
    v94[4] = v69;
    v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:v93 count:5];
    [(CAReplicatorLayer *)v2->__maskTickReplicatorLayer setActions:v70];

    [(CALayer *)v2->__platterMaskLayer addSublayer:v2->__maskTickReplicatorLayer];
    v71 = objc_alloc_init(MEMORY[0x1E6979398]);
    maskSmallTickLayer = v2->__maskSmallTickLayer;
    v2->__maskSmallTickLayer = v71;

    v73 = [MEMORY[0x1E69DC888] whiteColor];
    -[CALayer setBackgroundColor:](v2->__maskSmallTickLayer, "setBackgroundColor:", [v73 CGColor]);

    v74 = [(CAMSemanticStyleStatusIndicator *)v2 traitCollection];
    [v74 displayScale];
    [(CALayer *)v2->__maskSmallTickLayer setRasterizationScale:?];

    [(CALayer *)v2->__maskSmallTickLayer setAllowsEdgeAntialiasing:1];
    v91[0] = @"bounds";
    v75 = [MEMORY[0x1E695DFB0] null];
    v91[1] = @"position";
    v92[0] = v75;
    v76 = [MEMORY[0x1E695DFB0] null];
    v92[1] = v76;
    v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:2];
    [(CALayer *)v2->__maskSmallTickLayer setActions:v77];

    [(CAReplicatorLayer *)v2->__maskTickReplicatorLayer addSublayer:v2->__maskSmallTickLayer];
    v78 = objc_alloc_init(MEMORY[0x1E6979398]);
    maskLargeTickLayer = v2->__maskLargeTickLayer;
    v2->__maskLargeTickLayer = v78;

    v80 = [MEMORY[0x1E69DC888] whiteColor];
    -[CALayer setBackgroundColor:](v2->__maskLargeTickLayer, "setBackgroundColor:", [v80 CGColor]);

    v81 = [(CAMSemanticStyleStatusIndicator *)v2 traitCollection];
    [v81 displayScale];
    [(CALayer *)v2->__maskLargeTickLayer setRasterizationScale:?];

    [(CALayer *)v2->__maskLargeTickLayer setAllowsEdgeAntialiasing:1];
    v89[0] = @"bounds";
    v82 = [MEMORY[0x1E695DFB0] null];
    v90[0] = v82;
    v89[1] = @"position";
    v83 = [MEMORY[0x1E695DFB0] null];
    v90[1] = v83;
    v89[2] = @"hidden";
    v84 = [MEMORY[0x1E695DFB0] null];
    v90[2] = v84;
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

- (void)_updateImageOrientationAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CAMSemanticStyleStatusIndicator *)self _stackSymbolView];
  [CAMView rotateView:v5 toInterfaceOrientation:[(CAMControlStatusIndicator *)self orientation] animated:v3];

  v6 = [(CAMSemanticStyleStatusIndicator *)self _platterView];
  [CAMView rotateView:v6 toInterfaceOrientation:[(CAMControlStatusIndicator *)self orientation] animated:v3];
}

- (void)setSemanticStyle:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (![(CAMSemanticStyle *)self->_semanticStyle isEqualToSemanticStyle:?])
  {
    objc_storeStrong(&self->_semanticStyle, a3);
    [(CAMSemanticStyleStatusIndicator *)self _updateTicksAnimated:v4];
    [(CAMSemanticStyleStatusIndicator *)self _updatePlatterStrokeProgressAnimated:v4];
    [(CAMSemanticStyleStatusIndicator *)self _updateGradientAlphasAnimated:v4];
  }
}

- (int64_t)_visibleTickCount
{
  v3 = [(CAMSemanticStyleStatusIndicator *)self semanticStyle];
  [v3 sceneBias];
  v5 = fabs(v4);

  if (v5 < 0.005)
  {
    return 36;
  }

  v7 = [(CAMSemanticStyleStatusIndicator *)self semanticStyle];
  [v7 sceneBias];
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

- (id)_generatePlatterImageWithRenderer:(id)a3 colors:(id)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v8 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__CAMSemanticStyleStatusIndicator__generatePlatterImageWithRenderer_colors_size___block_invoke;
  v12[3] = &unk_1E76FA550;
  v13 = v8;
  v14 = width;
  v15 = height;
  v9 = v8;
  v10 = [a3 imageWithActions:v12];

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
  v7 = [MEMORY[0x1E69DCA80] preferredFormat];
  [v7 setPreferredRange:2];
  v8 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v7 format:{v4, v6}];
  v9 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.6];
  v29[0] = v9;
  v10 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.6];
  v29[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v12 = [(CAMSemanticStyleStatusIndicator *)self _generatePlatterImageWithRenderer:v8 colors:v11 size:v4, v6];

  v13 = [MEMORY[0x1E69DC888] systemBlueColor];
  v28[0] = v13;
  v14 = [MEMORY[0x1E69DC888] systemCyanColor];
  v28[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v16 = [(CAMSemanticStyleStatusIndicator *)self _generatePlatterImageWithRenderer:v8 colors:v15 size:v4, v6];

  v17 = [MEMORY[0x1E69DC888] systemRedColor];
  v27[0] = v17;
  v18 = [MEMORY[0x1E69DC888] systemYellowColor];
  v27[1] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v20 = [(CAMSemanticStyleStatusIndicator *)self _generatePlatterImageWithRenderer:v8 colors:v19 size:v4, v6];

  v21 = [v12 CGImage];
  v22 = [(CAMSemanticStyleStatusIndicator *)self _neutralPlatterLayer];
  [v22 setContents:v21];

  v23 = [v16 CGImage];
  v24 = [(CAMSemanticStyleStatusIndicator *)self _coolPlatterLayer];
  [v24 setContents:v23];

  v25 = [v20 CGImage];
  v26 = [(CAMSemanticStyleStatusIndicator *)self _warmPlatterLayer];
  [v26 setContents:v25];
}

- (void)_updateGradientAlphasAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CAMSemanticStyleStatusIndicator *)self semanticStyle];
  [v5 warmthBias];

  CEKProgressClamped();
  v7 = v6;
  CEKProgressClamped();
  v8 = -(v7 * (v7 + -2.0));
  v10 = -(v9 * (v9 + -2.0));
  CEKInterpolateClamped();
  v12 = v11;
  if (v3)
  {
    v13 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    v14 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    v15 = [(CAMSemanticStyleStatusIndicator *)self _coolPlatterLayer];
    v16 = [v15 presentationLayer];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = [(CAMSemanticStyleStatusIndicator *)self _coolPlatterLayer];
    }

    v19 = v18;

    v20 = MEMORY[0x1E696AD98];
    v52 = v19;
    [v19 opacity];
    v21 = [v20 numberWithFloat:?];
    [v14 setFromValue:v21];

    v22 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
    [v14 setToValue:v22];

    [v14 setDuration:0.5];
    [v14 setTimingFunction:v13];
    v23 = [(CAMSemanticStyleStatusIndicator *)self _coolPlatterLayer];
    [v23 addAnimation:v14 forKey:@"opacityAnimation"];

    v24 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    v25 = [(CAMSemanticStyleStatusIndicator *)self _warmPlatterLayer];
    v26 = [v25 presentationLayer];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = [(CAMSemanticStyleStatusIndicator *)self _warmPlatterLayer];
    }

    v29 = v28;

    v30 = MEMORY[0x1E696AD98];
    [v29 opacity];
    v31 = [v30 numberWithFloat:?];
    [v24 setFromValue:v31];

    v32 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
    [v24 setToValue:v32];

    [v24 setDuration:0.5];
    [v24 setTimingFunction:v13];
    v33 = [(CAMSemanticStyleStatusIndicator *)self _warmPlatterLayer];
    [v33 addAnimation:v24 forKey:@"opacityAnimation"];

    v34 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    v35 = [(CAMSemanticStyleStatusIndicator *)self _maskBackgroundLayer];
    v36 = [v35 presentationLayer];
    v37 = v36;
    if (v36)
    {
      v38 = v36;
    }

    else
    {
      v38 = [(CAMSemanticStyleStatusIndicator *)self _maskBackgroundLayer];
    }

    v39 = v38;

    v40 = MEMORY[0x1E696AD98];
    [v39 opacity];
    v41 = [v40 numberWithFloat:?];
    [v34 setFromValue:v41];

    v42 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
    [v34 setToValue:v42];

    [v34 setDuration:0.5];
    [v34 setTimingFunction:v13];
    v43 = [(CAMSemanticStyleStatusIndicator *)self _maskBackgroundLayer];
    [v43 addAnimation:v34 forKey:@"opacityAnimation"];
  }

  v45 = [(CAMSemanticStyleStatusIndicator *)self _coolPlatterLayer];
  v44 = v8;
  *&v46 = v44;
  [v45 setOpacity:v46];

  v48 = [(CAMSemanticStyleStatusIndicator *)self _warmPlatterLayer];
  v47 = v10;
  *&v49 = v47;
  [v48 setOpacity:v49];

  v53 = [(CAMSemanticStyleStatusIndicator *)self _maskBackgroundLayer];
  v50 = v12;
  *&v51 = v50;
  [v53 setOpacity:v51];
}

- (void)_updateTicksAnimated:(BOOL)a3
{
  v3 = a3;
  v46[2] = *MEMORY[0x1E69E9840];
  v5 = [(CAMSemanticStyleStatusIndicator *)self _visibleTickCount];
  v6 = [(CAMSemanticStyleStatusIndicator *)self semanticStyle];
  [v6 sceneBias];
  v8 = dbl_1A3A68770[v7 > 0.0];

  memset(&v43, 0, sizeof(v43));
  CATransform3DMakeRotation(&v43, v8, 0.0, 0.0, 1.0);
  if (v3)
  {
    v9 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    v10 = [(CAMSemanticStyleStatusIndicator *)self _maskTickReplicatorLayer];
    v11 = [v10 presentationLayer];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [(CAMSemanticStyleStatusIndicator *)self _maskTickReplicatorLayer];
    }

    v14 = v13;

    memset(&v42, 0, sizeof(v42));
    if (v14)
    {
      [v14 instanceTransform];
    }

    v15 = [v14 instanceCount];
    a = v42;
    b = v43;
    v16 = CATransform3DEqualToTransform(&a, &b);
    v17 = [(CAMSemanticStyleStatusIndicator *)self semanticStyle];
    [v17 sceneBias];
    v19 = v18;

    if (!v16 || v19 == 0.0)
    {
      v24 = (36 - v15) / (36 - v15 - v5 + 36);
      v20 = [MEMORY[0x1E6979318] animationWithKeyPath:@"instanceCount"];
      v25 = [MEMORY[0x1E696AD98] numberWithInteger:v15 + 1];
      [v20 setFromValue:v25];

      [v20 setToValue:&unk_1F16C79B8];
      [v20 setDuration:v24 * 0.5];
      v23 = [MEMORY[0x1E6979318] animationWithKeyPath:@"instanceCount"];
      [v23 setFromValue:&unk_1F16C79B8];
      v26 = [MEMORY[0x1E696AD98] numberWithInteger:v5 + 1];
      [v23 setToValue:v26];

      [v23 setDuration:(1.0 - v24) * 0.5];
      [v23 setBeginTime:v24 * 0.5];
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
      v34 = [MEMORY[0x1E6979308] animation];
      [v34 setDuration:0.5];
      v44[0] = v20;
      v44[1] = v23;
      v44[2] = v27;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:3];
      [v34 setAnimations:v35];

      [v34 setTimingFunction:v30];
      v36 = [(CAMSemanticStyleStatusIndicator *)self _maskTickReplicatorLayer];
      [v36 addAnimation:v34 forKey:@"instanceCountAnimation"];
    }

    else
    {
      v20 = [MEMORY[0x1E6979318] animationWithKeyPath:@"instanceCount"];
      v21 = [MEMORY[0x1E696AD98] numberWithInteger:v15 + 1];
      [v20 setFromValue:v21];

      v22 = [MEMORY[0x1E696AD98] numberWithInteger:v5 + 1];
      [v20 setToValue:v22];

      [v20 setDuration:0.5];
      [v20 setTimingFunction:v9];
      v23 = [(CAMSemanticStyleStatusIndicator *)self _maskTickReplicatorLayer];
      [v23 addAnimation:v20 forKey:@"instanceCountAnimation"];
    }
  }

  v37 = [(CAMSemanticStyleStatusIndicator *)self _maskTickReplicatorLayer];
  [v37 setInstanceCount:v5];

  v39 = v43;
  v38 = [(CAMSemanticStyleStatusIndicator *)self _maskTickReplicatorLayer];
  v42 = v39;
  [v38 setInstanceTransform:&v42];
}

- (void)_updatePlatterStrokeProgressAnimated:(BOOL)a3
{
  v3 = a3;
  v67[4] = *MEMORY[0x1E69E9840];
  v5 = [(CAMSemanticStyleStatusIndicator *)self semanticStyle];
  [v5 sceneBias];
  v7 = v6;

  v8 = 0.0;
  v9 = 0.0;
  if (v7 != 0.0)
  {
    v10 = [(CAMSemanticStyleStatusIndicator *)self _visibleTickCount];
    [(CAMSemanticStyleStatusIndicator *)self _platterFrame];
    v9 = 1.0 - ((v11 * 3.14159265 + -36.0) / 36.0 + fmax(v10 + -0.5, 0.0) + fmax(v10 + -1.0, 0.0) * ((v11 * 3.14159265 + -36.0) / 36.0)) / (v11 * 3.14159265);
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

  if (v3)
  {
    v15 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    v16 = [(CAMSemanticStyleStatusIndicator *)self _maskStrokeLayer];
    v17 = [v16 presentationLayer];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = [(CAMSemanticStyleStatusIndicator *)self _maskStrokeLayer];
    }

    v20 = v19;

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
      v38 = [MEMORY[0x1E6979308] animation];
      [v38 setDuration:0.5];
      v66[0] = v30;
      v66[1] = v34;
      v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
      [v38 setAnimations:v62];

      [v38 setTimingFunction:v15];
      v41 = [(CAMSemanticStyleStatusIndicator *)self _maskStrokeLayer];
      [v41 addAnimation:v38 forKey:@"strokeProgressAnimation"];
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
      v38 = [MEMORY[0x1E6979318] animationWithKeyPath:@"strokeStart"];
      v39 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
      [v38 setFromValue:v39];

      v40 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
      [v38 setToValue:v40];

      [v38 setDuration:v65 * 0.5];
      [v38 setBeginTime:v27 * 0.5];
      v41 = [MEMORY[0x1E6979318] animationWithKeyPath:@"strokeEnd"];
      v42 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
      [v41 setFromValue:v42];

      v43 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
      [v41 setToValue:v43];

      [v41 setDuration:v65 * 0.5];
      [v41 setBeginTime:v27 * 0.5];
      v44 = [MEMORY[0x1E6979308] animation];
      [v44 setDuration:0.5];
      v67[0] = v30;
      v67[1] = v34;
      v67[2] = v38;
      v67[3] = v41;
      v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:4];
      [v44 setAnimations:v45];

      [v44 setTimingFunction:v15];
      v46 = [(CAMSemanticStyleStatusIndicator *)self _maskStrokeLayer];
      [v46 addAnimation:v44 forKey:@"strokeProgressAnimation"];
    }
  }

  v63 = [(CAMSemanticStyleStatusIndicator *)self _maskStrokeLayer];
  [v63 setStrokeStart:v8];

  v64 = [(CAMSemanticStyleStatusIndicator *)self _maskStrokeLayer];
  [v64 setStrokeEnd:v14];
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
  v9 = [v8 CGPath];

  v10 = [(CAMSemanticStyleStatusIndicator *)self _maskStrokeLayer];
  [v10 setPath:v9];
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
  v11 = [(CAMSemanticStyleStatusIndicator *)self _stackSymbolView];
  [(CAMSemanticStyleStatusIndicator *)self alignmentRectForFrame:v4, v6, v8, v10];
  UIRectGetCenter();
  v13 = *MEMORY[0x1E695EFF8];
  v12 = *(MEMORY[0x1E695EFF8] + 8);
  [v11 intrinsicContentSize];
  [v11 frameForAlignmentRect:{v13, v12, v14, v15}];
  v17 = v16;
  v19 = v18;
  UIRectCenteredAboutPointScale();
  UIRectGetCenter();
  [v11 setCenter:?];
  [v11 setBounds:{v13, v12, v17, v19}];
  [(CAMSemanticStyleStatusIndicator *)self _platterFrame];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = [(CAMSemanticStyleStatusIndicator *)self _platterView];
  CAMViewSetBoundsAndCenterForFrame(v28, v21, v23, v25, v27);

  UIRectGetCenter();
  v30 = v29;
  v32 = v31;
  v33 = [(CAMSemanticStyleStatusIndicator *)self _neutralPlatterLayer];
  [v33 setPosition:{v30, v32}];

  v34 = [(CAMSemanticStyleStatusIndicator *)self _neutralPlatterLayer];
  [v34 setBounds:{v13, v12, v25, v27}];

  v35 = [(CAMSemanticStyleStatusIndicator *)self _coolPlatterLayer];
  [v35 setPosition:{v30, v32}];

  v36 = [(CAMSemanticStyleStatusIndicator *)self _coolPlatterLayer];
  [v36 setFrame:{v13, v12, v25, v27}];

  v37 = [(CAMSemanticStyleStatusIndicator *)self _warmPlatterLayer];
  [v37 setPosition:{v30, v32}];

  v38 = [(CAMSemanticStyleStatusIndicator *)self _warmPlatterLayer];
  [v38 setBounds:{v13, v12, v25, v27}];

  v39 = [(CAMSemanticStyleStatusIndicator *)self _platterMaskLayer];
  [v39 setPosition:{v30, v32}];

  v40 = [(CAMSemanticStyleStatusIndicator *)self _platterMaskLayer];
  [v40 setBounds:{v13, v12, v25, v27}];

  v41 = [(CAMSemanticStyleStatusIndicator *)self _maskBackgroundLayer];
  [v41 setPosition:{v30, v32}];

  v42 = [(CAMSemanticStyleStatusIndicator *)self _maskBackgroundLayer];
  [v42 setBounds:{v13, v12, v25, v27}];

  v43 = [(CAMSemanticStyleStatusIndicator *)self _maskStrokeLayer];
  [v43 setPosition:{v30, v32}];

  v44 = [(CAMSemanticStyleStatusIndicator *)self _maskStrokeLayer];
  [v44 setBounds:{v13, v12, v25, v27}];

  v45 = [(CAMSemanticStyleStatusIndicator *)self _maskTickReplicatorLayer];
  [v45 setPosition:{v30, v32}];

  v46 = [(CAMSemanticStyleStatusIndicator *)self _maskTickReplicatorLayer];
  [v46 setBounds:{v13, v12, v25, v27}];

  v47 = CAMPixelWidthForView(self) + 1.0;
  UIPointRoundToViewScale();
  v49 = v48;
  v51 = v50;
  v52 = [(CAMSemanticStyleStatusIndicator *)self _maskSmallTickLayer];
  [v52 setFrame:{v49, v51, 1.0, v47}];

  v53 = [(CAMSemanticStyleStatusIndicator *)self _maskLargeTickLayer];
  [v53 setFrame:{v49, v51, 1.0, 2.0}];

  [(CAMSemanticStyleStatusIndicator *)self _updateStrokePath];
}

- (CGSize)intrinsicContentSize
{
  v2 = [(CAMSemanticStyleStatusIndicator *)self _stackSymbolView];
  v3 = [v2 image];
  [v3 size];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end