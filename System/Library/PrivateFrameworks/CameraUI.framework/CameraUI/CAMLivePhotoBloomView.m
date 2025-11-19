@interface CAMLivePhotoBloomView
- (CAMLivePhotoBloomView)initWithFrame:(CGRect)a3;
- (CGPath)_pathForDiameter:(double)a3 center:(CGPoint)a4;
- (CGPath)_pathForRing:(int64_t)a3 center:(CGPoint)a4;
- (CGSize)intrinsicContentSize;
- (double)_diameterForRing:(int64_t)a3;
- (double)_strokeWidthForRing:(int64_t)a3;
- (void)_updateDefaultImage;
- (void)_updateRingColors;
- (void)animateBloom;
- (void)layoutSubviews;
- (void)setIsOff:(BOOL)a3;
- (void)stopAnimating;
- (void)tintColorDidChange;
@end

@implementation CAMLivePhotoBloomView

- (CAMLivePhotoBloomView)initWithFrame:(CGRect)a3
{
  v35[2] = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = CAMLivePhotoBloomView;
  v3 = [(CAMLivePhotoBloomView *)&v31 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v4 = objc_alloc_init(MEMORY[0x1E69794A0]);
    outerRing = v3->__outerRing;
    v3->__outerRing = v4;

    v6 = objc_alloc_init(MEMORY[0x1E69794A0]);
    middleRing = v3->__middleRing;
    v3->__middleRing = v6;

    v8 = objc_alloc_init(MEMORY[0x1E6979398]);
    innerRing = v3->__innerRing;
    v3->__innerRing = v8;

    v10 = objc_alloc_init(MEMORY[0x1E6979398]);
    centerRing = v3->__centerRing;
    v3->__centerRing = v10;

    v12 = [MEMORY[0x1E6979398] layer];
    ringContainer = v3->__ringContainer;
    v3->__ringContainer = v12;

    v14 = [(CAMLivePhotoBloomView *)v3 layer];
    [v14 addSublayer:v3->__ringContainer];

    v34[0] = &unk_1F16C7BB0;
    v35[0] = v3->__innerRing;
    v34[1] = &unk_1F16C7BC8;
    v35[1] = v3->__centerRing;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
    layersByRing = v3->__layersByRing;
    v3->__layersByRing = v15;

    v32[0] = &unk_1F16C7BE0;
    v17 = v3->__outerRing;
    v32[1] = &unk_1F16C7BF8;
    v33[0] = v17;
    v33[1] = v3->__middleRing;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
    shapeLayersByRing = v3->__shapeLayersByRing;
    v3->__shapeLayersByRing = v18;

    v20 = v3->__layersByRing;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __39__CAMLivePhotoBloomView_initWithFrame___block_invoke;
    v29[3] = &unk_1E76FB090;
    v21 = v3;
    v30 = v21;
    [(NSDictionary *)v20 enumerateKeysAndObjectsUsingBlock:v29];
    v22 = v3->__shapeLayersByRing;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __39__CAMLivePhotoBloomView_initWithFrame___block_invoke_2;
    v27[3] = &unk_1E76FB0B8;
    v23 = v21;
    v28 = v23;
    [(NSDictionary *)v22 enumerateKeysAndObjectsUsingBlock:v27];
    [(CAMLivePhotoBloomView *)v23 _updateRingColors];
    [(CAShapeLayer *)v3->__outerRing setLineDashPattern:&unk_1F16C96B0];
    [(CALayer *)v3->__centerRing setOpacity:0.0];
    [(CALayer *)v3->__ringContainer setOpacity:0.0];
    v24 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    defaultImageView = v23->__defaultImageView;
    v23->__defaultImageView = v24;

    [(CAMLivePhotoBloomView *)v23 addSubview:v23->__defaultImageView];
    [(CAMLivePhotoBloomView *)v23 _updateDefaultImage];
    [(CAMLivePhotoBloomView *)v23 setUserInteractionEnabled:0];
    [MEMORY[0x1E6979518] commit];
  }

  return v3;
}

void __39__CAMLivePhotoBloomView_initWithFrame___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = [a2 integerValue];
  [*(a1 + 32) _diameterForRing:v5];
  v7 = v6;
  [v8 setBounds:{0.0, 0.0, v7, v7}];
  [v8 setCornerRadius:v7 * 0.5];
  [v8 setBackgroundColor:0];
  [*(a1 + 32) _strokeWidthForRing:v5];
  [v8 setBorderWidth:?];
  [*(*(a1 + 32) + 424) addSublayer:v8];
}

void __39__CAMLivePhotoBloomView_initWithFrame___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) _strokeWidthForRing:{objc_msgSend(a2, "integerValue")}];
  [v5 setLineWidth:?];
  [v5 setFillColor:0];
  [v5 setLineCap:*MEMORY[0x1E6979E78]];
  [v5 setLineDashPhase:0.166666667];
  [*(*(a1 + 32) + 424) addSublayer:v5];
}

- (void)layoutSubviews
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(CAMLivePhotoBloomView *)self bounds];
  v24 = v4;
  v25 = v3;
  v6 = v5;
  v8 = v7;
  UIRectGetCenter();
  v10 = v9;
  v12 = v11;
  v13 = [(CAMLivePhotoBloomView *)self _defaultImageView];
  v14 = *MEMORY[0x1E695EFF8];
  v15 = *(MEMORY[0x1E695EFF8] + 8);
  [v13 intrinsicContentSize];
  [v13 frameForAlignmentRect:{v14, v15, v16, v17}];
  [v13 setBounds:{v14, v15}];
  UIRectCenteredAboutPointScale();
  UIRectGetCenter();
  v19 = v18;
  v21 = v20;
  [v13 setCenter:?];
  v22 = [(CAMLivePhotoBloomView *)self _shapeLayersByRing];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __39__CAMLivePhotoBloomView_layoutSubviews__block_invoke;
  v27[3] = &unk_1E76FB0E0;
  v27[4] = self;
  v27[5] = v10;
  v27[6] = v12;
  v27[7] = v25;
  v27[8] = v24;
  v27[9] = v6;
  v27[10] = v8;
  v27[11] = v19;
  v27[12] = v21;
  [v22 enumerateKeysAndObjectsUsingBlock:v27];

  v23 = [(CAMLivePhotoBloomView *)self _layersByRing];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __39__CAMLivePhotoBloomView_layoutSubviews__block_invoke_2;
  v26[3] = &__block_descriptor_48_e34_v32__0__NSNumber_8__CALayer_16_B24l;
  v26[4] = v19;
  v26[5] = v21;
  [v23 enumerateKeysAndObjectsUsingBlock:v26];

  [MEMORY[0x1E6979518] commit];
}

void __39__CAMLivePhotoBloomView_layoutSubviews__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  [v5 setPath:{objc_msgSend(*(a1 + 32), "_pathForRing:center:", objc_msgSend(a2, "integerValue"), *(a1 + 40), *(a1 + 48))}];
  [v5 setBounds:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  [v5 setPosition:{*(a1 + 88), *(a1 + 96)}];
}

- (void)tintColorDidChange
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(CAMLivePhotoBloomView *)self _updateRingColors];
  v3 = MEMORY[0x1E6979518];

  [v3 commit];
}

- (CGSize)intrinsicContentSize
{
  [(CAMLivePhotoBloomView *)self _diameterForRing:3];
  v3 = v2;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)animateBloom
{
  v141[3] = *MEMORY[0x1E69E9840];
  [(CAMLivePhotoBloomView *)self layoutIfNeeded];
  v125 = [(CAMLivePhotoBloomView *)self _outerRing];
  v122 = [(CAMLivePhotoBloomView *)self _middleRing];
  v124 = [(CAMLivePhotoBloomView *)self _innerRing];
  v3 = [(CAMLivePhotoBloomView *)self _centerRing];
  v106 = self;
  [(CAMLivePhotoBloomView *)self bounds];
  UIRectGetCenter();
  v5 = v4;
  v7 = v6;
  LODWORD(v8) = 0.5;
  LODWORD(v9) = 1.0;
  v123 = [MEMORY[0x1E69793D0] functionWithControlPoints:0.0 :0.0 :v8 :v9];
  v121 = [MEMORY[0x1E6979390] animationWithKeyPath:@"opacity"];
  [v121 setValues:&unk_1F16C96C8];
  v141[0] = &unk_1F16C7C10;
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:0.166666667];
  v141[1] = v10;
  v141[2] = &unk_1F16C7C28;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v141 count:3];
  [v121 setKeyTimes:v11];

  v118 = *MEMORY[0x1E69795A0];
  [v121 setCalculationMode:?];
  v12 = [MEMORY[0x1E6979390] animationWithKeyPath:@"bounds.size"];
  LODWORD(v13) = 1.0;
  LODWORD(v14) = 1058642330;
  v119 = [MEMORY[0x1E69793D0] functionWithControlPoints:0.0 :0.0 :v14 :v13];
  v15 = CAMPixelWidthForView(self) + 9.0;
  [v12 setBeginTime:0.233333333];
  [v12 setDuration:1.26666667];
  v140[0] = &unk_1F16C7C10;
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:0.342105263];
  v140[1] = v16;
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:0.666666667];
  v140[2] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v140 count:3];
  [v12 setKeyTimes:v18];

  v19 = MEMORY[0x1E696B098];
  v20 = v3;
  v120 = v3;
  [v3 bounds];
  v23 = [v19 valueWithCGSize:{v21, v22}];
  v139[0] = v23;
  v24 = [MEMORY[0x1E696B098] valueWithCGSize:{v15, v15}];
  v139[1] = v24;
  v25 = MEMORY[0x1E696B098];
  [v124 bounds];
  v28 = [v25 valueWithCGSize:{v26, v27}];
  v139[2] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v139 count:3];
  [v12 setValues:v29];

  v138[0] = v119;
  v138[1] = v123;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v138 count:2];
  [v12 setTimingFunctions:v30];

  v117 = v12;
  v31 = [v12 copy];
  [v31 setKeyPath:@"cornerRadius"];
  v32 = MEMORY[0x1E696AD98];
  [v20 cornerRadius];
  v33 = [v32 numberWithDouble:?];
  v137[0] = v33;
  v34 = [MEMORY[0x1E696AD98] numberWithDouble:v15 * 0.5];
  v137[1] = v34;
  v35 = MEMORY[0x1E696AD98];
  [v124 bounds];
  v37 = [v35 numberWithDouble:v36 * 0.5];
  v137[2] = v37;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v137 count:3];
  v116 = v31;
  [v31 setValues:v38];

  v115 = [MEMORY[0x1E6979308] animation];
  [v115 setDuration:1.5];
  v136[0] = v12;
  v136[1] = v121;
  v136[2] = v31;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v136 count:3];
  [v115 setAnimations:v39];

  v40 = [MEMORY[0x1E6979390] animationWithKeyPath:@"bounds.size"];
  LODWORD(v41) = 0.5;
  LODWORD(v42) = 1.0;
  LODWORD(v43) = 1058642330;
  v114 = [MEMORY[0x1E69793D0] functionWithControlPoints:v41 :0.0 :v43 :v42];
  [(CAMLivePhotoBloomView *)v106 _diameterForRing:2];
  v45 = v44;
  v135[0] = &unk_1F16C7C10;
  v46 = [MEMORY[0x1E696AD98] numberWithDouble:0.611111111];
  v135[1] = v46;
  v47 = [MEMORY[0x1E696AD98] numberWithDouble:0.8];
  v135[2] = v47;
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v135 count:3];
  [v40 setKeyTimes:v48];

  v49 = MEMORY[0x1E696B098];
  [v124 bounds];
  v52 = [v49 valueWithCGSize:{v50, v51}];
  v134[0] = v52;
  v53 = [MEMORY[0x1E696B098] valueWithCGSize:{18.0, 18.0}];
  v134[1] = v53;
  v54 = [MEMORY[0x1E696B098] valueWithCGSize:{v45, v45}];
  v134[2] = v54;
  v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v134 count:3];
  [v40 setValues:v55];

  v133[0] = v114;
  v133[1] = v123;
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v133 count:2];
  [v40 setTimingFunctions:v56];

  v57 = v40;
  v113 = v40;
  v58 = [v40 copy];
  [v58 setKeyPath:@"cornerRadius"];
  v59 = MEMORY[0x1E696AD98];
  [v124 cornerRadius];
  v60 = [v59 numberWithDouble:?];
  v132[0] = v60;
  v61 = [MEMORY[0x1E696AD98] numberWithDouble:9.0];
  v132[1] = v61;
  v62 = [MEMORY[0x1E696AD98] numberWithDouble:v45 * 0.5];
  v132[2] = v62;
  v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v132 count:3];
  [v58 setValues:v63];

  v64 = [MEMORY[0x1E6979318] animationWithKeyPath:@"borderWidth"];
  v65 = MEMORY[0x1E696AD98];
  [(CAMLivePhotoBloomView *)v106 _strokeWidthForRing:2];
  v66 = [v65 numberWithDouble:?];
  [v64 setToValue:v66];

  [v64 setDuration:0.916666667];
  v112 = v64;
  [v64 setFillMode:*MEMORY[0x1E69797E8]];
  v111 = [MEMORY[0x1E6979308] animation];
  [v111 setDuration:1.5];
  v131[0] = v64;
  v131[1] = v57;
  v131[2] = v58;
  v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v131 count:3];
  [v111 setAnimations:v67];

  LODWORD(v68) = 1059984507;
  LODWORD(v69) = 1.0;
  LODWORD(v70) = 1058642330;
  v71 = [MEMORY[0x1E69793D0] functionWithControlPoints:v68 :0.0 :v70 :v69];
  v110 = [MEMORY[0x1E6979308] animation];
  v72 = [MEMORY[0x1E6979390] animationWithKeyPath:@"path"];
  v73 = [MEMORY[0x1E6979318] animationWithKeyPath:@"lineWidth"];
  v74 = [MEMORY[0x1E6979318] animationWithKeyPath:@"lineDashPattern"];
  v75 = [MEMORY[0x1E6979318] animationWithKeyPath:@"lineDashPattern"];
  v130[0] = v72;
  v130[1] = v73;
  v76 = v72;
  v108 = v73;
  v130[2] = v74;
  v130[3] = v75;
  v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:v130 count:4];
  [v110 setAnimations:v77];

  [v110 setDuration:1.5];
  v129[0] = &unk_1F16C7C10;
  v78 = [MEMORY[0x1E696AD98] numberWithDouble:0.722222222];
  v129[1] = v78;
  v129[2] = &unk_1F16C7C28;
  v79 = [MEMORY[0x1E695DEC8] arrayWithObjects:v129 count:3];
  [v76 setKeyTimes:v79];

  v128[0] = [v122 path];
  v128[1] = [(CAMLivePhotoBloomView *)v106 _pathForDiameter:25.6666667 center:v5, v7];
  v128[2] = [v125 path];
  v80 = [MEMORY[0x1E695DEC8] arrayWithObjects:v128 count:3];
  v109 = v76;
  [v76 setValues:v80];

  v127[0] = v71;
  v127[1] = v123;
  v81 = [MEMORY[0x1E695DEC8] arrayWithObjects:v127 count:2];
  [v76 setTimingFunctions:v81];

  v82 = MEMORY[0x1E696AD98];
  [(CAMLivePhotoBloomView *)v106 _strokeWidthForRing:3];
  v83 = [v82 numberWithDouble:?];
  [v73 setToValue:v83];

  [v74 setDuration:1.08333333];
  [v74 setFromValue:&unk_1F16C96E0];
  [v74 setToValue:&unk_1F16C96F8];
  v107 = v74;
  [v74 setTimingFunction:v71];
  [v75 setDuration:0.416666667];
  v105 = v75;
  [v75 setBeginTime:1.08333333];
  v84 = [v74 toValue];
  [v75 setFromValue:v84];

  v85 = [v125 lineDashPattern];
  [v75 setToValue:v85];

  [v75 setTimingFunction:v123];
  v86 = [MEMORY[0x1E6979308] animation];
  v87 = [MEMORY[0x1E6979318] animationWithKeyPath:@"path"];
  v88 = [MEMORY[0x1E6979318] animationWithKeyPath:@"lineDashPattern"];
  v89 = [MEMORY[0x1E6979318] animationWithKeyPath:@"lineWidth"];
  v126[0] = v87;
  v126[1] = v88;
  v126[2] = v89;
  v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:v126 count:3];
  [v86 setAnimations:v90];

  [v86 setDuration:1.32];
  [v125 convertTime:0 fromLayer:CACurrentMediaTime()];
  [v86 setBeginTime:v91 + 0.2];
  [v87 setToValue:{-[CAMLivePhotoBloomView _pathForRing:center:](v106, "_pathForRing:center:", 4, v5, v7)}];
  LODWORD(v92) = 1061997773;
  LODWORD(v93) = 1059145646;
  LODWORD(v94) = *"=\nW>";
  LODWORD(v95) = 1036831949;
  v96 = [MEMORY[0x1E69793D0] functionWithControlPoints:v92 :v93 :v94 :v95];
  [v87 setTimingFunction:v96];

  v104 = v88;
  [v88 setToValue:&unk_1F16C9710];
  v97 = [v87 timingFunction];
  [v88 setTimingFunction:v97];

  [v89 setToValue:&unk_1F16C7C10];
  [v89 setBeginTime:1.0];
  [v86 duration];
  [v89 setDuration:v98 + -1.0];
  v99 = [MEMORY[0x1E6979390] animationWithKeyPath:@"opacity"];
  [v99 setCalculationMode:v118];
  [v99 setKeyTimes:&unk_1F16C9728];
  [v99 setValues:&unk_1F16C9740];
  [v99 setDuration:1.5];
  v100 = [v99 copy];
  [v100 setValues:&unk_1F16C9758];
  v101 = [(CAMLivePhotoBloomView *)v106 _defaultImageView];
  v102 = [v101 layer];
  [v102 addAnimation:v100 forKey:@"bloom"];

  v103 = [(CAMLivePhotoBloomView *)v106 _ringContainer];
  [v103 addAnimation:v99 forKey:@"bloom"];

  [v120 addAnimation:v115 forKey:@"bloom"];
  [v124 addAnimation:v111 forKey:@"bloom"];
  [v122 addAnimation:v110 forKey:@"bloom"];
  [v125 addAnimation:v86 forKey:@"bloom"];
}

- (void)stopAnimating
{
  v3 = [(CAMLivePhotoBloomView *)self _defaultImageView];
  v4 = [v3 layer];
  [v4 removeAllAnimations];

  v5 = [(CAMLivePhotoBloomView *)self _ringContainer];
  [v5 removeAllAnimations];

  v6 = [(CAMLivePhotoBloomView *)self _centerRing];
  [v6 removeAllAnimations];

  v7 = [(CAMLivePhotoBloomView *)self _innerRing];
  [v7 removeAllAnimations];

  v8 = [(CAMLivePhotoBloomView *)self _middleRing];
  [v8 removeAllAnimations];

  v9 = [(CAMLivePhotoBloomView *)self _outerRing];
  [v9 removeAllAnimations];
}

- (void)setIsOff:(BOOL)a3
{
  if (self->_isOff != a3)
  {
    self->_isOff = a3;
    [(CAMLivePhotoBloomView *)self _updateDefaultImage];
  }
}

- (void)_updateRingColors
{
  v3 = [(CAMLivePhotoBloomView *)self _shapeLayersByRing];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__CAMLivePhotoBloomView__updateRingColors__block_invoke;
  v6[3] = &unk_1E76FB0B8;
  v6[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];

  v4 = [(CAMLivePhotoBloomView *)self _layersByRing];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__CAMLivePhotoBloomView__updateRingColors__block_invoke_2;
  v5[3] = &unk_1E76FB090;
  v5[4] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
}

void __42__CAMLivePhotoBloomView__updateRingColors__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v6 = [v3 tintColor];
  v5 = v6;
  [v4 setStrokeColor:{objc_msgSend(v6, "CGColor")}];
}

void __42__CAMLivePhotoBloomView__updateRingColors__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v6 = [v3 tintColor];
  v5 = v6;
  [v4 setBorderColor:{objc_msgSend(v6, "CGColor")}];
}

- (void)_updateDefaultImage
{
  v3 = [(CAMLivePhotoBloomView *)self isOff];
  v4 = @"CAMIrisButton-0-PhotoIris";
  if (v3)
  {
    v4 = @"CAMIrisButtonInactive";
  }

  v5 = MEMORY[0x1E69DCAB8];
  v6 = v4;
  v7 = CAMCameraUIFrameworkBundle();
  v8 = [v5 imageNamed:v6 inBundle:v7];

  v10 = [v8 imageWithRenderingMode:2];

  v9 = [(CAMLivePhotoBloomView *)self _defaultImageView];
  [v9 setImage:v10];
}

- (double)_strokeWidthForRing:(int64_t)a3
{
  result = 2.0;
  if ((a3 - 2) <= 2)
  {
    return dbl_1A3A69C58[a3 - 2];
  }

  return result;
}

- (double)_diameterForRing:(int64_t)a3
{
  result = 0.0;
  if (a3 <= 4)
  {
    return dbl_1A3A69C70[a3];
  }

  return result;
}

- (CGPath)_pathForRing:(int64_t)a3 center:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  [(CAMLivePhotoBloomView *)self _diameterForRing:?];
  v9 = v8;
  [(CAMLivePhotoBloomView *)self _strokeWidthForRing:a3];
  v11 = v9 - v10;

  return [(CAMLivePhotoBloomView *)self _pathForDiameter:v11 center:x, y];
}

- (CGPath)_pathForDiameter:(double)a3 center:(CGPoint)a4
{
  v4 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:1 radius:a4.x startAngle:a4.y endAngle:a3 * 0.5 clockwise:{0.0, 6.28318531}];
  v5 = [v4 CGPath];

  return v5;
}

@end