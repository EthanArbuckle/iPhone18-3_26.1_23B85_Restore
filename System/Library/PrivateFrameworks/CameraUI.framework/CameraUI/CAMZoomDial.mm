@interface CAMZoomDial
+ (CGPoint)_pointForOffsetAngle:(double)angle dialCenter:(CGPoint)center radius:(double)radius;
+ (double)_normalizedValueForZoomFactor:(double)factor min:(double)min max:(double)max;
+ (double)_offsetAngleForZoomFactor:(double)factor relativeToCurrentZoomFactor:(BOOL)zoomFactor currentZoomFactor:(double)currentZoomFactor min:(double)min max:(double)max signedAngleDeltaForZoomRange:(double)range;
+ (id)_createBackgroundImageForBounds:(CGRect)bounds dialCenter:(CGPoint)center radius:(double)radius backgroundAlpha:(double)alpha borderStrokeWidth:(double)width;
+ (id)_createMaskImageWithSize:(CGSize)size tickLabelCenterRadialInset:(double)inset notchMaskImage:(id)image;
+ (id)_createTicksImageForBounds:(CGRect)bounds dialCenter:(CGPoint)center radius:(double)radius pixelWidth:(double)width zoomFactors:(id)factors minAvailableZoomFactor:(double)factor maxAvailableZoomFactor:(double)zoomFactor signedAngleDeltaForZoomRange:(double)self0;
- (CAMZoomDial)initWithFrame:(CGRect)frame;
- (CGPoint)_pointForOffsetAngle:(double)angle radialInset:(double)inset assumeExpanded:(BOOL)expanded;
- (CGPoint)_textCenterForOffsetAngle:(double)angle assumeExpanded:(BOOL)expanded;
- (CGPoint)_tickEndpointForOffsetAngle:(double)angle isTop:(BOOL)top;
- (CGPoint)dialCenter;
- (CGPoint)textCenterForZoomFactor:(double)factor assumeExpanded:(BOOL)expanded;
- (NSArray)activeZoomFactorLabels;
- (double)_focalLengthInsetLandscape;
- (double)_focalLengthInsetPortrait;
- (double)_fullRadius;
- (double)_labelPaddingForContentSizeCategory;
- (double)_labelRotationAngleForOrientation;
- (double)_offsetAngleForZoomFactor:(double)factor relativeToCurrentZoomFactor:(BOOL)zoomFactor;
- (double)_offsetAngleForZoomPoint:(id)point;
- (double)_radiusDelta;
- (double)_signedAngleDeltaForZoomRange;
- (double)_tickLabelCenterRadialInset;
- (double)dialBorderWidth;
- (double)maximumZoomFactor;
- (double)minimumZoomFactor;
- (double)normalizedValueForZoomFactor:(double)factor;
- (double)offsetAngleForPoint:(CGPoint)point;
- (double)zoomFactorForNormalizedValue:(double)value;
- (double)zoomFactorForOffsetAngle:(double)angle;
- (id)_zoomPointIndexesForPrioritizedFocalLengthLabels;
- (void)_commonCAMZoomDialInitialization;
- (void)_invalidateImagesForViewSize;
- (void)_layoutBackgroundAndContainerWithContentInset:(double)inset;
- (void)_layoutSubviewsWithTicks;
- (void)_preferredContentSizeCategoryChanged;
- (void)_setBackgroundViewUpdateNeeded:(BOOL)needed;
- (void)_setCanLoadImages:(BOOL)images;
- (void)_setFocalLengthLabelsLandscape:(id)landscape;
- (void)_setFocalLengthLabelsPortrait:(id)portrait;
- (void)_setLabels:(id)labels;
- (void)_setMaskUpdateNeeded:(BOOL)needed;
- (void)_setTicksUpdateNeeded:(BOOL)needed;
- (void)_updateBackgroundImageViewIfNeeded;
- (void)_updateContentIfNeeded;
- (void)_updateFocalLengthLabelAlphas;
- (void)_updateFocalLengthLabels;
- (void)_updateLabels;
- (void)_updateLabelsIfNeeded;
- (void)_updateMaskImageIfNeeded;
- (void)_updateMinimizedLabels;
- (void)_updatePortraitFocalLengthLabelAlphas;
- (void)_updateTicksImageIfNeeded;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
- (void)setContentMaskingHeight:(double)height;
- (void)setContractionDistance:(double)distance;
- (void)setExpanded:(BOOL)expanded;
- (void)setFrame:(CGRect)frame;
- (void)setHideFocalLengthLabels:(BOOL)labels;
- (void)setHideLabels:(BOOL)labels;
- (void)setMaxAvailableZoomFactor:(double)factor;
- (void)setMinAvailableZoomFactor:(double)factor;
- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated;
- (void)setZoomFactor:(double)factor;
- (void)setZoomPoints:(id)points;
@end

@implementation CAMZoomDial

- (CAMZoomDial)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CAMZoomDial;
  v3 = [(CAMZoomDial *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v4 = v3;
  if (v3)
  {
    [(CAMZoomDial *)v3 _commonCAMZoomDialInitialization];
    v5 = v4;
  }

  return v4;
}

- (void)_commonCAMZoomDialInitialization
{
  v38[1] = *MEMORY[0x1E69E9840];
  [(CAMZoomDial *)self setSemanticContentAttribute:3];
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v4 = dispatch_queue_create("com.apple.camera.zoom-dial-image-generation", v3);
  imageGenerationQueue = self->__imageGenerationQueue;
  self->__imageGenerationQueue = v4;

  zoomFactors = self->_zoomFactors;
  self->_zoomFactors = &unk_1F16C9B48;

  firstObject = [(NSArray *)self->_zoomFactors firstObject];
  [firstObject doubleValue];
  self->_minAvailableZoomFactor = v8;

  lastObject = [(NSArray *)self->_zoomFactors lastObject];
  [lastObject doubleValue];
  self->_maxAvailableZoomFactor = v10;

  self->_zoomFactor = self->_minAvailableZoomFactor;
  self->_angleDeltaForZoomRange = 1.57079633;
  self->_expanded = 1;
  self->__backgroundViewUpdateNeeded = 1;
  self->__labelsUpdateNeeded = 1;
  self->__ticksUpdateNeeded = 1;
  self->__maskUpdateNeeded = 1;
  v11 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v12 = *MEMORY[0x1E695F058];
  v13 = *(MEMORY[0x1E695F058] + 8);
  v14 = *(MEMORY[0x1E695F058] + 16);
  v15 = *(MEMORY[0x1E695F058] + 24);
  v16 = [v11 initWithFrame:{*MEMORY[0x1E695F058], v13, v14, v15}];
  backgroundView = self->__backgroundView;
  self->__backgroundView = v16;

  [(CAMZoomDial *)self addSubview:self->__backgroundView];
  v18 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v12, v13, v14, v15}];
  contentContainerView = self->__contentContainerView;
  self->__contentContainerView = v18;

  [(CAMZoomDial *)self addSubview:self->__contentContainerView];
  v20 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v12, v13, v14, v15}];
  labelContainerView = self->__labelContainerView;
  self->__labelContainerView = v20;

  [(UIView *)self->__contentContainerView addSubview:self->__labelContainerView];
  v22 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v12, v13, v14, v15}];
  focalLengthLabelContainerView = self->__focalLengthLabelContainerView;
  self->__focalLengthLabelContainerView = v22;

  [(UIView *)self->__labelContainerView addSubview:self->__focalLengthLabelContainerView];
  v24 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v12, v13, v14, v15}];
  ticksView = self->__ticksView;
  self->__ticksView = v24;

  [(UIView *)self->__contentContainerView addSubview:self->__ticksView];
  v26 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:0];
  contentMaskView = self->__contentMaskView;
  self->__contentMaskView = v26;

  [(UIView *)self->__contentContainerView setMaskView:self->__contentMaskView];
  bezierPath = [MEMORY[0x1E69DC728] bezierPath];
  v29 = *MEMORY[0x1E695EFF8];
  v30 = *(MEMORY[0x1E695EFF8] + 8);
  [bezierPath moveToPoint:{*MEMORY[0x1E695EFF8], v30}];
  [bezierPath addLineToPoint:{4.0, 0.0}];
  [bezierPath addLineToPoint:{2.0, 10.0}];
  [bezierPath addLineToPoint:{v29, v30}];
  v31 = objc_alloc_init(MEMORY[0x1E69794A0]);
  [v31 setPath:{objc_msgSend(bezierPath, "CGPath")}];
  systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
  [v31 setFillColor:{objc_msgSend(systemYellowColor, "CGColor")}];

  v33 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v12, v13, v14, v15}];
  needleView = self->__needleView;
  self->__needleView = v33;

  layer = [(UIView *)self->__needleView layer];
  [layer addSublayer:v31];

  [(CAMZoomDial *)self addSubview:self->__needleView];
  v38[0] = objc_opt_class();
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
  v37 = [(CAMZoomDial *)self registerForTraitChanges:v36 withAction:sel__preferredContentSizeCategoryChanged];
}

- (void)_setCanLoadImages:(BOOL)images
{
  if (self->__canLoadImages != images)
  {
    self->__canLoadImages = images;
    if (images)
    {
      [(CAMZoomDial *)self _updateTicksImageIfNeeded];
      [(CAMZoomDial *)self _updateBackgroundImageViewIfNeeded];

      [(CAMZoomDial *)self _updateMaskImageIfNeeded];
    }
  }
}

- (double)minimumZoomFactor
{
  zoomFactors = [(CAMZoomDial *)self zoomFactors];
  firstObject = [zoomFactors firstObject];
  [firstObject doubleValue];
  v5 = v4;

  return v5;
}

- (double)maximumZoomFactor
{
  zoomFactors = [(CAMZoomDial *)self zoomFactors];
  lastObject = [zoomFactors lastObject];
  [lastObject doubleValue];
  v5 = v4;

  return v5;
}

- (void)setZoomPoints:(id)points
{
  pointsCopy = points;
  if (![(NSArray *)self->_zoomPoints isEqualToArray:?])
  {
    objc_storeStrong(&self->_zoomPoints, points);
    v5 = [CAMZoomPoint displayZoomFactorsFromZoomPoints:pointsCopy];
    zoomFactors = self->_zoomFactors;
    self->_zoomFactors = v5;

    [(CAMZoomDial *)self minimumZoomFactor];
    [(CAMZoomDial *)self maximumZoomFactor];
    CEKClamp();
    self->_zoomFactor = v7;
    [(CAMZoomDial *)self _setLabelsUpdateNeeded:1];
    [(CAMZoomDial *)self _setTicksUpdateNeeded:1];
    [(CAMZoomDial *)self setNeedsLayout];
  }
}

- (void)setMinAvailableZoomFactor:(double)factor
{
  if (self->_minAvailableZoomFactor != factor)
  {
    self->_minAvailableZoomFactor = factor;
    [(CAMZoomDial *)self _setLabelsUpdateNeeded:1];
    [(CAMZoomDial *)self _setTicksUpdateNeeded:1];

    [(CAMZoomDial *)self setNeedsLayout];
  }
}

- (void)setMaxAvailableZoomFactor:(double)factor
{
  if (self->_maxAvailableZoomFactor != factor)
  {
    self->_maxAvailableZoomFactor = factor;
    [(CAMZoomDial *)self _setLabelsUpdateNeeded:1];
    [(CAMZoomDial *)self _setTicksUpdateNeeded:1];

    [(CAMZoomDial *)self setNeedsLayout];
  }
}

- (void)setZoomFactor:(double)factor
{
  [(CAMZoomDial *)self minimumZoomFactor];
  [(CAMZoomDial *)self minAvailableZoomFactor];
  [(CAMZoomDial *)self maximumZoomFactor];
  [(CAMZoomDial *)self maxAvailableZoomFactor];
  CEKClamp();
  if (self->_zoomFactor != v4)
  {
    self->_zoomFactor = v4;
    if (([(CAMZoomDial *)self orientation]- 3) >= 2)
    {
      [(CAMZoomDial *)self _updatePortraitFocalLengthLabelAlphas];
    }

    [(CAMZoomDial *)self setNeedsLayout];
  }
}

- (double)normalizedValueForZoomFactor:(double)factor
{
  v5 = objc_opt_class();
  [(CAMZoomDial *)self minimumZoomFactor];
  v7 = v6;
  [(CAMZoomDial *)self maximumZoomFactor];

  [v5 _normalizedValueForZoomFactor:factor min:v7 max:v8];
  return result;
}

+ (double)_normalizedValueForZoomFactor:(double)factor min:(double)min max:(double)max
{
  CEKClamp();
  v8 = v7;
  result = 0.0;
  if (max != min)
  {
    v10 = log(v8 / min);
    return v10 / log(max / min);
  }

  return result;
}

- (double)zoomFactorForNormalizedValue:(double)value
{
  [(CAMZoomDial *)self minimumZoomFactor];
  v5 = v4;
  [(CAMZoomDial *)self maximumZoomFactor];
  v7 = v6;
  CEKClamp();
  return v5 * pow(v7 / v5, v8);
}

- (void)setContentMaskingHeight:(double)height
{
  if (self->_contentMaskingHeight != height)
  {
    self->_contentMaskingHeight = height;
    [(CAMZoomDial *)self _setMaskUpdateNeeded:1];

    [(CAMZoomDial *)self setNeedsLayout];
  }
}

- (void)setContractionDistance:(double)distance
{
  if (self->_contractionDistance != distance)
  {
    self->_contractionDistance = distance;
    [(CAMZoomDial *)self setNeedsLayout];
  }
}

- (void)setExpanded:(BOOL)expanded
{
  if (self->_expanded != expanded)
  {
    self->_expanded = expanded;
    [(CAMZoomDial *)self setNeedsLayout];
  }
}

- (double)_radiusDelta
{
  isExpanded = [(CAMZoomDial *)self isExpanded];
  result = 0.0;
  if (!isExpanded)
  {
    [(CAMZoomDial *)self contractionDistance];
    return -v5;
  }

  return result;
}

- (void)_updateLabelsIfNeeded
{
  if ([(CAMZoomDial *)self _isLabelsUpdateNeeded])
  {
    [(CAMZoomDial *)self _setLabelsUpdateNeeded:0];
    [(CAMZoomDial *)self _updateLabels];

    [(CAMZoomDial *)self _updateFocalLengthLabels];
  }
}

- (void)_updateContentIfNeeded
{
  [(CAMZoomDial *)self _updateLabelsIfNeeded];
  [(CAMZoomDial *)self _updateTicksImageIfNeeded];

  [(CAMZoomDial *)self _updateMaskImageIfNeeded];
}

- (void)_updateLabels
{
  v39 = *MEMORY[0x1E69E9840];
  [(CAMZoomDial *)self maximumZoomFactor];
  v4 = v3;
  [(CAMZoomDial *)self maxAvailableZoomFactor];
  v6 = v5;
  zoomFactors = [(CAMZoomDial *)self zoomFactors];
  if (v6 != v4)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    zoomFactors2 = [(CAMZoomDial *)self zoomFactors];
    v9 = [zoomFactors2 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v34;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(zoomFactors2);
        }

        [*(*(&v33 + 1) + 8 * v12) doubleValue];
        if (vabdd_f64(v13, v6) < 0.01)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [zoomFactors2 countByEnumeratingWithState:&v33 objects:v38 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:

      zoomFactors2 = [(CAMZoomDial *)self zoomFactors];
      v14 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
      v15 = [zoomFactors2 arrayByAddingObject:v14];

      zoomFactors = v15;
    }
  }

  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v17 = zoomFactors;
  v18 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v30;
    v21 = *MEMORY[0x1E695F058];
    v22 = *(MEMORY[0x1E695F058] + 8);
    v23 = *(MEMORY[0x1E695F058] + 16);
    v24 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      v25 = 0;
      do
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v29 + 1) + 8 * v25) doubleValue];
        v27 = v26;
        v28 = [[CAMZoomFactorLabel alloc] initWithFrame:v21, v22, v23, v24];
        [(CAMZoomFactorLabel *)v28 setPreferDefaultSizing:0];
        [(CAMZoomFactorLabel *)v28 setShowZoomFactorSymbol:0];
        [(CAMZoomFactorLabel *)v28 setZoomFactor:v27];
        [(CAMZoomFactorLabel *)v28 setAlpha:1.0];
        [v16 addObject:v28];

        ++v25;
      }

      while (v19 != v25);
      v19 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v19);
  }

  [(CAMZoomDial *)self _setLabels:v16];
  [(CAMZoomDial *)self _updateMinimizedLabels];
}

- (void)_updateMinimizedLabels
{
  zoomPoints = [(CAMZoomDial *)self zoomPoints];
  _labels = [(CAMZoomDial *)self _labels];
  v5 = [_labels count];
  if (v5 >= [zoomPoints count])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __37__CAMZoomDial__updateMinimizedLabels__block_invoke;
    v6[3] = &unk_1E76FC480;
    v7 = _labels;
    [zoomPoints enumerateObjectsUsingBlock:v6];
  }
}

void __37__CAMZoomDial__updateMinimizedLabels__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 isCustomLens];
  v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  [v6 setMinimized:v5];
}

- (void)_updateFocalLengthLabels
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  zoomPoints = [(CAMZoomDial *)self zoomPoints];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __39__CAMZoomDial__updateFocalLengthLabels__block_invoke;
  v11 = &unk_1E76FC4A8;
  v12 = v3;
  v13 = v4;
  v6 = v4;
  v7 = v3;
  [zoomPoints enumerateObjectsUsingBlock:&v8];
  [(CAMZoomDial *)self _setFocalLengthLabelsPortrait:v7, v8, v9, v10, v11];
  [(CAMZoomDial *)self _setFocalLengthLabelsLandscape:v6];
  [(CAMZoomDial *)self _updateFocalLengthLabelAlphas];
}

void __39__CAMZoomDial__updateFocalLengthLabels__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  [a2 displayFocalLength];
  if (v6 && ([MEMORY[0x1E696AEC0] stringWithFormat:@"%ldmm", v6], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v19 = v7;
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-landscape", v7];
    v9 = MEMORY[0x1E69DCAB8];
    v10 = CAMCameraUIFrameworkBundle();
    v11 = [v9 imageNamed:v19 inBundle:v10];

    v12 = MEMORY[0x1E69DCAB8];
    v13 = CAMCameraUIFrameworkBundle();
    v14 = [v12 imageNamed:v8 inBundle:v13];

    v15 = [v11 imageWithRenderingMode:2];

    v16 = [v14 imageWithRenderingMode:2];

    v17 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v15];
    v18 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v16];
    [*(a1 + 32) addObject:v17];
    [*(a1 + 40) addObject:v18];
  }

  else
  {
    *a4 = 1;
  }
}

- (void)_setLabels:(id)labels
{
  v31 = *MEMORY[0x1E69E9840];
  labelsCopy = labels;
  labels = self->__labels;
  if (labels != labelsCopy)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    labelsCopy2 = labels;
    v8 = [(NSArray *)labelsCopy2 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(labelsCopy2);
          }

          [*(*(&v25 + 1) + 8 * i) removeFromSuperview];
        }

        v9 = [(NSArray *)labelsCopy2 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v9);
    }

    objc_storeStrong(&self->__labels, labels);
    _labelContainerView = [(CAMZoomDial *)self _labelContainerView];
    v13 = _labelContainerView;
    if (_labelContainerView)
    {
      _contentContainerView = _labelContainerView;
    }

    else
    {
      _contentContainerView = [(CAMZoomDial *)self _contentContainerView];
    }

    v15 = _contentContainerView;

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v16 = labelsCopy;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v22;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v22 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [v15 addSubview:{*(*(&v21 + 1) + 8 * j), v21}];
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v18);
    }
  }
}

- (void)_setFocalLengthLabelsPortrait:(id)portrait
{
  v31 = *MEMORY[0x1E69E9840];
  portraitCopy = portrait;
  focalLengthLabelsPortrait = self->__focalLengthLabelsPortrait;
  if (focalLengthLabelsPortrait != portraitCopy)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = focalLengthLabelsPortrait;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v25 + 1) + 8 * i) removeFromSuperview];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v9);
    }

    objc_storeStrong(&self->__focalLengthLabelsPortrait, portrait);
    _focalLengthLabelContainerView = [(CAMZoomDial *)self _focalLengthLabelContainerView];
    v13 = _focalLengthLabelContainerView;
    if (_focalLengthLabelContainerView)
    {
      _contentContainerView = _focalLengthLabelContainerView;
    }

    else
    {
      _contentContainerView = [(CAMZoomDial *)self _contentContainerView];
    }

    v15 = _contentContainerView;

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v16 = portraitCopy;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v22;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v22 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [v15 addSubview:{*(*(&v21 + 1) + 8 * j), v21}];
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v18);
    }
  }
}

- (void)_setFocalLengthLabelsLandscape:(id)landscape
{
  v31 = *MEMORY[0x1E69E9840];
  landscapeCopy = landscape;
  focalLengthLabelsLandscape = self->__focalLengthLabelsLandscape;
  if (focalLengthLabelsLandscape != landscapeCopy)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = focalLengthLabelsLandscape;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v25 + 1) + 8 * i) removeFromSuperview];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v9);
    }

    objc_storeStrong(&self->__focalLengthLabelsLandscape, landscape);
    _focalLengthLabelContainerView = [(CAMZoomDial *)self _focalLengthLabelContainerView];
    v13 = _focalLengthLabelContainerView;
    if (_focalLengthLabelContainerView)
    {
      _contentContainerView = _focalLengthLabelContainerView;
    }

    else
    {
      _contentContainerView = [(CAMZoomDial *)self _contentContainerView];
    }

    v15 = _contentContainerView;

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v16 = landscapeCopy;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v22;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v22 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [v15 addSubview:{*(*(&v21 + 1) + 8 * j), v21}];
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v18);
    }
  }
}

- (void)_updateFocalLengthLabelAlphas
{
  v3 = ([(CAMZoomDial *)self orientation]- 3) < 2;
  _focalLengthLabelsLandscape = [(CAMZoomDial *)self _focalLengthLabelsLandscape];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__CAMZoomDial__updateFocalLengthLabelAlphas__block_invoke;
  v5[3] = &__block_descriptor_33_e28_v32__0__UIImageView_8Q16_B24l;
  v6 = v3;
  [_focalLengthLabelsLandscape enumerateObjectsUsingBlock:v5];

  [(CAMZoomDial *)self _updatePortraitFocalLengthLabelAlphas];
}

uint64_t __44__CAMZoomDial__updateFocalLengthLabelAlphas__block_invoke(uint64_t a1, void *a2)
{
  v2 = 0.0;
  if (*(a1 + 32))
  {
    v2 = 1.0;
  }

  return [a2 setAlpha:v2];
}

- (void)_updatePortraitFocalLengthLabelAlphas
{
  v43 = *MEMORY[0x1E69E9840];
  [(CAMZoomDial *)self _updateLabelsIfNeeded];
  _focalLengthLabelsPortrait = [(CAMZoomDial *)self _focalLengthLabelsPortrait];
  if (([(CAMZoomDial *)self orientation]- 3) > 1)
  {
    zoomPoints = [(CAMZoomDial *)self zoomPoints];
    _zoomPointIndexesForPrioritizedFocalLengthLabels = [(CAMZoomDial *)self _zoomPointIndexesForPrioritizedFocalLengthLabels];
    if ([zoomPoints count])
    {
      v11 = 0;
      v12 = 0x7FFFFFFFFFFFFFFFLL;
      v13 = 1.79769313e308;
      v14 = 1.79769313e308;
      do
      {
        v15 = [zoomPoints objectAtIndexedSubscript:v11];
        [(CAMZoomDial *)self _offsetAngleForZoomPoint:v15];
        v17 = v16;
        if (v11)
        {
          v18 = [zoomPoints objectAtIndexedSubscript:v11 - 1];
          [(CAMZoomDial *)self _offsetAngleForZoomPoint:v18];
          v20 = vabdd_f64(v17, v19);
          if (v20 < v13)
          {
            v13 = v20;
          }
        }

        v21 = [_zoomPointIndexesForPrioritizedFocalLengthLabels containsIndex:v11];
        v22 = fabs(v17);
        v23 = fabs(v14);
        v24 = v22 < v23;
        if (v22 < v23)
        {
          v25 = v17;
        }

        else
        {
          v25 = v14;
        }

        if (v24)
        {
          v26 = v11;
        }

        else
        {
          v26 = v12;
        }

        if ((v21 & 1) == 0)
        {
          v14 = v25;
          v12 = v26;
        }

        ++v11;
      }

      while (v11 < [zoomPoints count]);
    }

    else
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
      v14 = 1.79769313e308;
      v13 = 1.79769313e308;
    }

    aBlock[1] = 3221225472;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[2] = __52__CAMZoomDial__updatePortraitFocalLengthLabelAlphas__block_invoke;
    aBlock[3] = &unk_1E76FC4F0;
    v4 = zoomPoints;
    v35 = v4;
    selfCopy = self;
    v37 = v13 / 1.5;
    v27 = _Block_copy(aBlock);
    if ([_focalLengthLabelsPortrait count])
    {
      v28 = 0;
      do
      {
        v29 = [_focalLengthLabelsPortrait objectAtIndexedSubscript:v28];
        if ([_zoomPointIndexesForPrioritizedFocalLengthLabels containsIndex:v28])
        {
          v30 = [v4 objectAtIndexedSubscript:v28];
          [(CAMZoomDial *)self _offsetAngleForZoomPoint:v30];
          v32 = vabdd_f64(v31, v14);
          v33 = 1.0;
          if (v32 < 0.2)
          {
            v33 = 1.0 - v27[2](v27, v12, 1.0);
          }

          [v29 setAlpha:v33];
        }

        else
        {
          (v27[2])(v27, v28);
          [v29 setAlpha:?];
        }

        ++v28;
      }

      while (v28 < [_focalLengthLabelsPortrait count]);
    }
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v4 = _focalLengthLabelsPortrait;
    v5 = [v4 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v39;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v39 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v38 + 1) + 8 * i) setAlpha:0.0];
        }

        v6 = [v4 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v6);
    }
  }
}

double __52__CAMZoomDial__updatePortraitFocalLengthLabelAlphas__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  [*(a1 + 40) _offsetAngleForZoomPoint:v3];
  CEKProgressClamped();
  v5 = v4;

  return v5;
}

- (id)_zoomPointIndexesForPrioritizedFocalLengthLabels
{
  v3 = +[CAMCaptureCapabilities capabilities];
  zoomPoints = [(CAMZoomDial *)self zoomPoints];
  v5 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{0, objc_msgSend(zoomPoints, "count")}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__CAMZoomDial__zoomPointIndexesForPrioritizedFocalLengthLabels__block_invoke;
  v11[3] = &unk_1E76FC4A8;
  v12 = v3;
  v6 = v5;
  v13 = v6;
  v7 = v3;
  [zoomPoints enumerateObjectsUsingBlock:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

void __63__CAMZoomDial__zoomPointIndexesForPrioritizedFocalLengthLabels__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  if (([v11 isCustomLens] & 1) != 0 || objc_msgSend(*(a1 + 32), "isQuadraWideSupported") && (objc_msgSend(v11, "displayZoomFactor"), v6 = v5, objc_msgSend(*(a1 + 32), "quadraWideDisplayZoomFactor"), v6 == v7) || objc_msgSend(*(a1 + 32), "isBackQuadraTeleSupported") && (objc_msgSend(v11, "displayZoomFactor"), v9 = v8, objc_msgSend(*(a1 + 32), "quadraTeleDisplayZoomFactor"), v9 == v10))
  {
    [*(a1 + 40) removeIndex:a3];
  }
}

- (void)setHideLabels:(BOOL)labels
{
  if (self->_hideLabels != labels)
  {
    self->_hideLabels = labels;
    if (labels)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = 1.0;
    }

    _labelContainerView = [(CAMZoomDial *)self _labelContainerView];
    [_labelContainerView setAlpha:v4];
  }
}

- (void)setHideFocalLengthLabels:(BOOL)labels
{
  if (self->_hideFocalLengthLabels != labels)
  {
    self->_hideFocalLengthLabels = labels;
    if (labels)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = 1.0;
    }

    _focalLengthLabelContainerView = [(CAMZoomDial *)self _focalLengthLabelContainerView];
    [_focalLengthLabelContainerView setAlpha:v4];
  }
}

- (NSArray)activeZoomFactorLabels
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(CAMZoomDial *)self hideLabels])
  {
    v3 = 0;
  }

  else
  {
    v4 = MEMORY[0x1E695DF70];
    _labels = [(CAMZoomDial *)self _labels];
    v3 = [v4 arrayWithCapacity:{objc_msgSend(_labels, "count")}];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    _labels2 = [(CAMZoomDial *)self _labels];
    v7 = [_labels2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(_labels2);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          [v11 alpha];
          if (v12 == 1.0)
          {
            [v3 addObject:v11];
          }
        }

        v8 = [_labels2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  return v3;
}

- (double)_fullRadius
{
  [(CAMZoomDial *)self bounds];
  v4 = v3 * 0.5;
  [(CAMZoomDial *)self _fullRadiusInset];
  return v4 - v5;
}

- (CGPoint)dialCenter
{
  [(CAMZoomDial *)self bounds];

  UIRectGetCenter();
  result.y = v3;
  result.x = v2;
  return result;
}

- (double)dialBorderWidth
{
  [(CAMZoomDial *)self _borderStrokeWidth];

  UICeilToViewScale();
  return result;
}

- (double)_labelPaddingForContentSizeCategory
{
  traitCollection = [(CAMZoomDial *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  [CAMZoomButton fontSizeForContentSize:preferredContentSizeCategory];
  v5 = v4;
  [CAMZoomButton fontSizeForContentSize:*MEMORY[0x1E69DDC70]];
  v7 = v5 - v6;

  return v7 * 3.0;
}

- (double)_tickLabelCenterRadialInset
{
  [(CAMZoomDial *)self _labelPaddingForContentSizeCategory];

  UICeilToViewScale();
  return result;
}

- (double)_focalLengthInsetPortrait
{
  [(CAMZoomDial *)self _tickLabelCenterRadialInset];
  [(CAMZoomDial *)self _labelPaddingForContentSizeCategory];

  UICeilToViewScale();
  return result;
}

- (double)_focalLengthInsetLandscape
{
  [(CAMZoomDial *)self _focalLengthInsetPortrait];

  UICeilToViewScale();
  return result;
}

- (double)_signedAngleDeltaForZoomRange
{
  _shouldReverseLayoutDirection = [(CAMZoomDial *)self _shouldReverseLayoutDirection];
  [(CAMZoomDial *)self angleDeltaForZoomRange];
  if (_shouldReverseLayoutDirection)
  {
    return -result;
  }

  return result;
}

- (double)_offsetAngleForZoomPoint:(id)point
{
  [point displayZoomFactor];

  [(CAMZoomDial *)self offsetAngleForZoomFactor:?];
  return result;
}

- (double)_offsetAngleForZoomFactor:(double)factor relativeToCurrentZoomFactor:(BOOL)zoomFactor
{
  zoomFactorCopy = zoomFactor;
  v7 = objc_opt_class();
  [(CAMZoomDial *)self zoomFactor];
  v9 = v8;
  [(CAMZoomDial *)self minimumZoomFactor];
  v11 = v10;
  [(CAMZoomDial *)self maximumZoomFactor];
  v13 = v12;
  [(CAMZoomDial *)self _signedAngleDeltaForZoomRange];

  [v7 _offsetAngleForZoomFactor:zoomFactorCopy relativeToCurrentZoomFactor:factor currentZoomFactor:v9 min:v11 max:v13 signedAngleDeltaForZoomRange:v14];
  return result;
}

+ (double)_offsetAngleForZoomFactor:(double)factor relativeToCurrentZoomFactor:(BOOL)zoomFactor currentZoomFactor:(double)currentZoomFactor min:(double)min max:(double)max signedAngleDeltaForZoomRange:(double)range
{
  zoomFactorCopy = zoomFactor;
  [self _normalizedValueForZoomFactor:factor min:min max:max];
  v15 = v14;
  if (zoomFactorCopy)
  {
    [self _normalizedValueForZoomFactor:currentZoomFactor min:min max:max];
    v15 = v15 - v16;
  }

  result = v15 * range;
  if (v15 * range >= -3.14159265)
  {
    if (result <= 3.14159265)
    {
      return result;
    }

    v18 = -6.28318531;
  }

  else
  {
    v18 = 6.28318531;
  }

  return result + v18;
}

- (double)zoomFactorForOffsetAngle:(double)angle
{
  if (angle == 0.0)
  {

    [(CAMZoomDial *)self zoomFactor];
  }

  else
  {
    [(CAMZoomDial *)self zoomFactor];
    v6 = v5;
    [(CAMZoomDial *)self _signedAngleDeltaForZoomRange];
    [(CAMZoomDial *)self normalizedValueForZoomFactor:v6];
    CEKClamp();

    [(CAMZoomDial *)self zoomFactorForNormalizedValue:?];
  }

  return result;
}

- (double)offsetAngleForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(CAMZoomDial *)self dialCenter];
  result = atan2(y - v6, x - v5) + 1.57079633;
  if (result > 3.14159265)
  {
    return result + -6.28318531;
  }

  return result;
}

- (CGPoint)_pointForOffsetAngle:(double)angle radialInset:(double)inset assumeExpanded:(BOOL)expanded
{
  v8 = 0.0;
  if (!expanded)
  {
    [(CAMZoomDial *)self _radiusDelta];
    v8 = v9;
  }

  [(CAMZoomDial *)self _fullRadius];
  v11 = v8 + v10 - inset;
  v12 = objc_opt_class();
  [(CAMZoomDial *)self dialCenter];

  [v12 _pointForOffsetAngle:angle dialCenter:v13 radius:{v14, v11}];
  result.y = v16;
  result.x = v15;
  return result;
}

+ (CGPoint)_pointForOffsetAngle:(double)angle dialCenter:(CGPoint)center radius:(double)radius
{
  y = center.y;
  x = center.x;
  v8 = __sincos_stret(angle + -1.57079633);
  v9 = y + radius * v8.__sinval;
  v10 = x + radius * v8.__cosval;
  result.y = v9;
  result.x = v10;
  return result;
}

- (CGPoint)_tickEndpointForOffsetAngle:(double)angle isTop:(BOOL)top
{
  v4 = 20.6666667;
  if (top)
  {
    v4 = 4.0;
  }

  [(CAMZoomDial *)self _pointForOffsetAngle:1 radialInset:angle assumeExpanded:v4];
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGPoint)textCenterForZoomFactor:(double)factor assumeExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  [(CAMZoomDial *)self _offsetAngleForZoomFactor:1 relativeToCurrentZoomFactor:factor];

  [(CAMZoomDial *)self _textCenterForOffsetAngle:expandedCopy assumeExpanded:?];
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)_textCenterForOffsetAngle:(double)angle assumeExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  [(CAMZoomDial *)self _tickLabelCenterRadialInset];

  [(CAMZoomDial *)self _pointForOffsetAngle:expandedCopy radialInset:angle assumeExpanded:v7];
  result.y = v9;
  result.x = v8;
  return result;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(CAMZoomDial *)self bounds];
  if (v9 != width || v8 != height)
  {
    [(CAMZoomDial *)self _invalidateImagesForViewSize];
  }

  v11.receiver = self;
  v11.super_class = CAMZoomDial;
  [(CAMZoomDial *)&v11 setBounds:x, y, width, height];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(CAMZoomDial *)self frame];
  if (v9 != width || v8 != height)
  {
    [(CAMZoomDial *)self _invalidateImagesForViewSize];
  }

  v11.receiver = self;
  v11.super_class = CAMZoomDial;
  [(CAMZoomDial *)&v11 setFrame:x, y, width, height];
}

- (void)_invalidateImagesForViewSize
{
  [(CAMZoomDial *)self _setBackgroundViewUpdateNeeded:1];
  [(CAMZoomDial *)self _setTicksUpdateNeeded:1];

  [(CAMZoomDial *)self _setMaskUpdateNeeded:1];
}

- (void)_setBackgroundViewUpdateNeeded:(BOOL)needed
{
  self->__backgroundViewUpdateNeeded = needed;
  if (needed)
  {
    [(CAMZoomDial *)self setNeedsLayout];
  }
}

- (void)_setTicksUpdateNeeded:(BOOL)needed
{
  self->__ticksUpdateNeeded = needed;
  if (needed)
  {
    [(CAMZoomDial *)self setNeedsLayout];
  }
}

- (void)_setMaskUpdateNeeded:(BOOL)needed
{
  self->__maskUpdateNeeded = needed;
  if (needed)
  {
    [(CAMZoomDial *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CAMZoomDial;
  [(CAMZoomDial *)&v3 layoutSubviews];
  [(CAMZoomDial *)self _updateBackgroundImageViewIfNeeded];
  [(CAMZoomDial *)self _updateContentIfNeeded];
  [(CAMZoomDial *)self _layoutSubviewsWithTicks];
}

- (void)_layoutBackgroundAndContainerWithContentInset:(double)inset
{
  _backgroundView = [(CAMZoomDial *)self _backgroundView];
  _contentContainerView = [(CAMZoomDial *)self _contentContainerView];
  _labelContainerView = [(CAMZoomDial *)self _labelContainerView];
  _focalLengthLabelContainerView = [(CAMZoomDial *)self _focalLengthLabelContainerView];
  [(CAMZoomDial *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  UIRectGetCenter();
  v17 = v16;
  v19 = v18;
  [(CAMZoomDial *)self _fullRadius];
  v21 = v20;
  [(CAMZoomDial *)self _radiusDelta];
  v23 = v22;
  [(CAMZoomDial *)self minimumZoomFactor];
  v28 = v24;
  v25 = *(MEMORY[0x1E695EFD0] + 16);
  *&v34.a = *MEMORY[0x1E695EFD0];
  *&v34.c = v25;
  *&v34.tx = *(MEMORY[0x1E695EFD0] + 32);
  *&v33.a = *&v34.a;
  *&v33.c = v25;
  *&v33.tx = *&v34.tx;
  if (v21 > 0.0)
  {
    CGAffineTransformMakeScale(&v34, (v21 + v23) / v21, (v21 + v23) / v21);
    CGAffineTransformMakeScale(&v33, (v21 - inset + v23) / (v21 - inset), (v21 - inset + v23) / (v21 - inset));
  }

  [_backgroundView setCenter:{v17, v19}];
  [_backgroundView setBounds:{v9, v11, v13, v15}];
  v32 = v34;
  [_backgroundView setTransform:&v32];
  [(CAMZoomDial *)self _offsetAngleForZoomFactor:1 relativeToCurrentZoomFactor:v28];
  memset(&v32, 0, sizeof(v32));
  CGAffineTransformMakeRotation(&v32, v26);
  t1 = v32;
  memset(&v31, 0, sizeof(v31));
  t2 = v33;
  CGAffineTransformConcat(&v31, &t1, &t2);
  [_contentContainerView setCenter:{v17, v19}];
  [_contentContainerView setBounds:{v9, v11, v13, v15}];
  t1 = v31;
  [_contentContainerView setTransform:&t1];
  [_labelContainerView setCenter:{v17, v19}];
  [_labelContainerView setBounds:{v9, v11, v13, v15}];
  [_focalLengthLabelContainerView setCenter:{v17, v19}];
  [_focalLengthLabelContainerView setBounds:{v9, v11, v13, v15}];
}

- (void)_layoutSubviewsWithTicks
{
  _ticksView = [(CAMZoomDial *)self _ticksView];
  _contentMaskView = [(CAMZoomDial *)self _contentMaskView];
  [(CAMZoomDial *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  UIRectGetCenter();
  v14 = v13;
  v46 = v13;
  v16 = v15;
  [(CAMZoomDial *)self minimumZoomFactor];
  v18 = v17;
  [(CAMZoomDial *)self _layoutBackgroundAndContainerWithContentInset:4.0];
  [_ticksView setCenter:{v14, v16}];
  [_ticksView setBounds:{v6, v8, v10, v12}];
  v19 = *MEMORY[0x1E695F058];
  v20 = *(MEMORY[0x1E695F058] + 8);
  image = [_contentMaskView image];
  [image size];
  v23 = v22;
  v25 = v24;

  [(CAMZoomDial *)self _offsetAngleForZoomFactor:1 relativeToCurrentZoomFactor:v18];
  v27 = -v26;
  [(CAMZoomDial *)self _pointForOffsetAngle:1 radialInset:-v26 assumeExpanded:v25 * 0.5];
  v29 = v28;
  v31 = v30;
  memset(&v55, 0, sizeof(v55));
  CGAffineTransformMakeRotation(&v55, v27);
  [_contentMaskView setBounds:{v19, v20, v23, v25}];
  [_contentMaskView setCenter:{v29, v31}];
  v54 = v55;
  [_contentMaskView setTransform:&v54];
  [(CAMZoomDial *)self _pointForOffsetAngle:0 radialInset:0.0 assumeExpanded:4.0];
  v33 = v32;
  v35 = v34 + -2.0;
  _needleView = [(CAMZoomDial *)self _needleView];
  [_needleView setFrame:{v35, v33, 4.0, 10.0}];

  [(CAMZoomDial *)self _labelRotationAngleForOrientation];
  v38 = v37;
  _labels = [(CAMZoomDial *)self _labels];
  _focalLengthLabelsPortrait = [(CAMZoomDial *)self _focalLengthLabelsPortrait];
  _focalLengthLabelsLandscape = [(CAMZoomDial *)self _focalLengthLabelsLandscape];
  [(CAMZoomDial *)self zoomFactor];
  v42 = [CAMZoomButton textForZoomFactor:0 showZoomFactorSymbol:?];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __39__CAMZoomDial__layoutSubviewsWithTicks__block_invoke;
  v47[3] = &unk_1E76FC518;
  v51 = v46;
  v52 = v16;
  v53 = v38;
  v47[4] = self;
  v48 = _focalLengthLabelsPortrait;
  v49 = _focalLengthLabelsLandscape;
  v50 = v42;
  v43 = v42;
  v44 = _focalLengthLabelsLandscape;
  v45 = _focalLengthLabelsPortrait;
  [_labels enumerateObjectsUsingBlock:v47];
}

void __39__CAMZoomDial__layoutSubviewsWithTicks__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  [v5 zoomFactor];
  v7 = v6;
  v57 = *(MEMORY[0x1E695EFF8] + 8);
  v59 = *MEMORY[0x1E695EFF8];
  [v5 intrinsicContentSize];
  v9 = v8;
  v11 = v10;
  [*(a1 + 32) _offsetAngleForZoomFactor:0 relativeToCurrentZoomFactor:v7];
  v13 = v12;
  [*(a1 + 32) _textCenterForOffsetAngle:1 assumeExpanded:?];
  v15 = v14;
  v17 = v16;
  [*(a1 + 32) _offsetAngleForZoomFactor:1 relativeToCurrentZoomFactor:v7];
  [*(a1 + 32) _textCenterForOffsetAngle:1 assumeExpanded:?];
  CEKProgressClamped();
  v19 = v18;
  v20 = v18 * (v18 * v18);
  [*(a1 + 32) minAvailableZoomFactor];
  if (v7 < v21 + -0.01 || ([*(a1 + 32) maxAvailableZoomFactor], v7 > v22 + 0.01))
  {
    v20 = v20 * 0.2;
  }

  v23 = v13 + *(a1 + 80);
  memset(&v69, 0, sizeof(v69));
  CGAffineTransformMakeRotation(&v69, v23);
  memset(&v68, 0, sizeof(v68));
  CGAffineTransformMakeScale(&v68, v19, v19);
  t1 = v69;
  memset(&v67, 0, sizeof(v67));
  t2 = v68;
  CGAffineTransformConcat(&v67, &t1, &t2);
  [v5 setCenter:{v15, v17}];
  [v5 setBounds:{v59, v57, v9, v11}];
  t1 = v67;
  [v5 setTransform:&t1];
  [v5 setAlpha:v20];
  memset(&t1, 0, sizeof(t1));
  CGAffineTransformMakeRotation(&t1, v13);
  t2 = v69;
  if ([*(a1 + 40) count] > a3)
  {
    v24 = [*(a1 + 40) objectAtIndexedSubscript:a3];
    v25 = [*(a1 + 48) objectAtIndexedSubscript:a3];
    v26 = *MEMORY[0x1E695F058];
    v27 = *(MEMORY[0x1E695F058] + 8);
    v28 = [v24 image];
    [v28 size];
    v55 = v30;
    v56 = v29;

    v31 = [v25 image];
    [v31 size];
    v58 = v33;
    v60 = v32;

    [*(a1 + 32) _focalLengthInsetPortrait];
    v35 = v34;
    v36 = [v24 image];
    [v36 size];
    v38 = v35 + v37 * 0.5;

    [*(a1 + 32) _focalLengthInsetLandscape];
    v40 = v39;
    v41 = [v25 image];
    [v41 size];
    v43 = v40 + v42 * 0.5;

    [*(a1 + 32) _pointForOffsetAngle:1 radialInset:v13 assumeExpanded:v38];
    v45 = v44;
    v47 = v46;
    [*(a1 + 32) _pointForOffsetAngle:1 radialInset:v13 assumeExpanded:v43];
    v49 = v48;
    v51 = v50;
    v52 = [CAMZoomButton textForZoomFactor:0 showZoomFactorSymbol:v7];
    if ([v52 isEqualToString:*(a1 + 56)])
    {
      [MEMORY[0x1E69DC888] systemYellowColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.3];
    }
    v53 = ;
    [v24 setTintColor:v53];
    [v24 setCenter:{v45, v47}];
    [v24 setBounds:{v26, v27, v56, v55}];
    v64 = t1;
    [v24 setTransform:&v64];
    [v25 setTintColor:v53];
    [v25 setCenter:{v49, v51}];
    [v25 setBounds:{v26, v27, v60, v58}];
    if (([*(a1 + 32) orientation] - 3) <= 1)
    {
      v54 = MEMORY[0x1E69DD250];
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __39__CAMZoomDial__layoutSubviewsWithTicks__block_invoke_2;
      v61[3] = &unk_1E76FA5A8;
      v62 = v25;
      v63 = t2;
      [v54 performWithoutAnimation:v61];
    }
  }
}

uint64_t __39__CAMZoomDial__layoutSubviewsWithTicks__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 56);
  v3[0] = *(a1 + 40);
  v3[1] = v1;
  v3[2] = *(a1 + 72);
  return [*(a1 + 32) setTransform:v3];
}

- (void)_updateBackgroundImageViewIfNeeded
{
  if ([(CAMZoomDial *)self _canLoadImages])
  {
    if ([(CAMZoomDial *)self _isBackgroundViewUpdateNeeded])
    {
      [(CAMZoomDial *)self _setBackgroundViewUpdateNeeded:0];
      [(CAMZoomDial *)self _setBackgroundImageJobIdentifier:[(CAMZoomDial *)self _backgroundImageJobIdentifier]+ 1];
      [(CAMZoomDial *)self bounds];
      [(CAMZoomDial *)self dialCenter];
      [(CAMZoomDial *)self _fullRadius];
      [(CAMZoomDial *)self _backgroundAlpha];
      [(CAMZoomDial *)self _borderStrokeWidth];
      _imageGenerationQueue = [(CAMZoomDial *)self _imageGenerationQueue];
      pl_dispatch_async();
    }
  }
}

void __49__CAMZoomDial__updateBackgroundImageViewIfNeeded__block_invoke(uint64_t a1)
{
  v2 = [objc_opt_class() _createBackgroundImageForBounds:*(a1 + 40) dialCenter:*(a1 + 48) radius:*(a1 + 56) backgroundAlpha:*(a1 + 64) borderStrokeWidth:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
  v1 = v2;
  pl_dispatch_async();
}

void __49__CAMZoomDial__updateBackgroundImageViewIfNeeded__block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) _backgroundImageJobIdentifier] == *(a1 + 48))
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) _backgroundView];
    [v3 setImage:v2];

    v4 = *(a1 + 32);

    [v4 setNeedsLayout];
  }

  else
  {
    v5 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "Ignoring background image since parameters no longer match", v6, 2u);
    }
  }
}

- (void)_updateTicksImageIfNeeded
{
  if ([(CAMZoomDial *)self _canLoadImages])
  {
    if ([(CAMZoomDial *)self _isTicksUpdateNeeded])
    {
      [(CAMZoomDial *)self _setTicksUpdateNeeded:0];
      [(CAMZoomDial *)self _setTicksImageJobIdentifier:[(CAMZoomDial *)self _ticksImageJobIdentifier]+ 1];
      [(CAMZoomDial *)self bounds];
      [(CAMZoomDial *)self dialCenter];
      [(CAMZoomDial *)self _fullRadius];
      CAMPixelWidthForView(self);
      zoomFactors = [(CAMZoomDial *)self zoomFactors];
      [(CAMZoomDial *)self minAvailableZoomFactor];
      [(CAMZoomDial *)self maxAvailableZoomFactor];
      [(CAMZoomDial *)self _signedAngleDeltaForZoomRange];
      _imageGenerationQueue = [(CAMZoomDial *)self _imageGenerationQueue];
      v5 = zoomFactors;
      pl_dispatch_async();
    }
  }
}

void __40__CAMZoomDial__updateTicksImageIfNeeded__block_invoke(uint64_t a1)
{
  v2 = [objc_opt_class() _createTicksImageForBounds:*(a1 + 40) dialCenter:*(a1 + 48) radius:*(a1 + 56) pixelWidth:*(a1 + 64) zoomFactors:*(a1 + 72) minAvailableZoomFactor:*(a1 + 80) maxAvailableZoomFactor:*(a1 + 88) signedAngleDeltaForZoomRange:{*(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128)}];
  v1 = v2;
  pl_dispatch_async();
}

void __40__CAMZoomDial__updateTicksImageIfNeeded__block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) _ticksImageJobIdentifier] == *(a1 + 48))
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) _ticksView];
    [v3 setImage:v2];

    v4 = *(a1 + 32);

    [v4 setNeedsLayout];
  }

  else
  {
    v5 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "Ignoring ticks image since counter does not match", v6, 2u);
    }
  }
}

- (void)_updateMaskImageIfNeeded
{
  if ([(CAMZoomDial *)self _canLoadImages]&& [(CAMZoomDial *)self _isMaskUpdateNeeded])
  {
    [(CAMZoomDial *)self _setMaskUpdateNeeded:0];
    [(CAMZoomDial *)self _setMaskImageJobIdentifier:[(CAMZoomDial *)self _maskImageJobIdentifier]+ 1];
    [(CAMZoomDial *)self bounds];
    [(CAMZoomDial *)self _tickLabelCenterRadialInset];
    [(CAMZoomDial *)self contentMaskingHeight];
    if (v3 == 0.0)
    {
      [(CAMZoomDial *)self _fullRadius];
    }

    v4 = MEMORY[0x1E69DCAB8];
    v5 = CAMCameraUIFrameworkBundle();
    v6 = [v4 imageNamed:@"CAMZoomDialNotchMask" inBundle:v5];

    _imageGenerationQueue = [(CAMZoomDial *)self _imageGenerationQueue];
    v8 = v6;
    pl_dispatch_async();
  }
}

void __39__CAMZoomDial__updateMaskImageIfNeeded__block_invoke(uint64_t a1)
{
  v2 = [objc_opt_class() _createMaskImageWithSize:*(a1 + 40) tickLabelCenterRadialInset:*(a1 + 48) notchMaskImage:{*(a1 + 56), *(a1 + 64)}];
  v1 = v2;
  pl_dispatch_async();
}

void __39__CAMZoomDial__updateMaskImageIfNeeded__block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) _maskImageJobIdentifier] == *(a1 + 48))
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) _contentMaskView];
    [v3 setImage:v2];

    v4 = *(a1 + 32);

    [v4 setNeedsLayout];
  }

  else
  {
    v5 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "Ignoring mask image since counter does not match", v6, 2u);
    }
  }
}

+ (id)_createBackgroundImageForBounds:(CGRect)bounds dialCenter:(CGPoint)center radius:(double)radius backgroundAlpha:(double)alpha borderStrokeWidth:(double)width
{
  y = center.y;
  x = center.x;
  height = bounds.size.height;
  width = bounds.size.width;
  preferredFormat = [MEMORY[0x1E69DCA80] preferredFormat];
  [preferredFormat setPreferredRange:32766];
  v14 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:preferredFormat format:{width, height}];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __99__CAMZoomDial__createBackgroundImageForBounds_dialCenter_radius_backgroundAlpha_borderStrokeWidth___block_invoke;
  v17[3] = &__block_descriptor_72_e40_v16__0__UIGraphicsImageRendererContext_8l;
  *&v17[4] = x;
  *&v17[5] = y;
  *&v17[6] = radius;
  *&v17[7] = alpha;
  *&v17[8] = width;
  v15 = [v14 imageWithActions:v17];

  return v15;
}

void __99__CAMZoomDial__createBackgroundImageForBounds_dialCenter_radius_backgroundAlpha_borderStrokeWidth___block_invoke(double *a1)
{
  v4 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{a1[4] - a1[6], a1[5] - a1[6], a1[6] + a1[6], a1[6] + a1[6]}];
  v2 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:a1[7]];
  [v2 set];
  [v4 fill];
  if (a1[8] > 0.0)
  {
    v3 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.1];
    [v3 set];
    [v4 setLineWidth:a1[8]];
    [v4 stroke];
  }
}

+ (id)_createTicksImageForBounds:(CGRect)bounds dialCenter:(CGPoint)center radius:(double)radius pixelWidth:(double)width zoomFactors:(id)factors minAvailableZoomFactor:(double)factor maxAvailableZoomFactor:(double)zoomFactor signedAngleDeltaForZoomRange:(double)self0
{
  y = center.y;
  x = center.x;
  height = bounds.size.height;
  width = bounds.size.width;
  factorsCopy = factors;
  firstObject = [factorsCopy firstObject];
  [firstObject doubleValue];
  v17 = v16;

  lastObject = [factorsCopy lastObject];
  [lastObject doubleValue];
  v20 = v19;

  if (v17 == v20)
  {
    v21 = 0;
  }

  else
  {
    preferredFormat = [MEMORY[0x1E69DCA80] preferredFormat];
    [preferredFormat setPreferredRange:32766];
    v23 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:preferredFormat format:{width, height}];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __158__CAMZoomDial__createTicksImageForBounds_dialCenter_radius_pixelWidth_zoomFactors_minAvailableZoomFactor_maxAvailableZoomFactor_signedAngleDeltaForZoomRange___block_invoke;
    v28[3] = &unk_1E76FC5B0;
    v29 = factorsCopy;
    selfCopy = self;
    v31 = v17;
    v32 = v20;
    factorCopy = factor;
    zoomFactorCopy = zoomFactor;
    widthCopy = width;
    rangeCopy = range;
    radiusCopy = radius;
    v38 = x;
    v39 = y;
    v21 = [v23 imageWithActions:v28];
  }

  return v21;
}

void __158__CAMZoomDial__createTicksImageForBounds_dialCenter_radius_pixelWidth_zoomFactors_minAvailableZoomFactor_maxAvailableZoomFactor_signedAngleDeltaForZoomRange___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v3 = *(a1 + 32);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __158__CAMZoomDial__createTicksImageForBounds_dialCenter_radius_pixelWidth_zoomFactors_minAvailableZoomFactor_maxAvailableZoomFactor_signedAngleDeltaForZoomRange___block_invoke_2;
  v31[3] = &unk_1E76FBB58;
  v4 = v2;
  v32 = v4;
  [v3 enumerateObjectsUsingBlock:v31];
  v5 = [v4 firstObject];
  v6 = [v5 integerValue];

  v7 = [v4 lastObject];
  v8 = [v7 integerValue];

  if (v6 <= v8)
  {
    v9 = v8 + 1;
    do
    {
      v10 = v6 * 0.1;
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
      v12 = [v4 containsObject:v11];

      v13 = 1.0;
      if (__ROR8__(0x1999999999999998 - 0x3333333333333333 * v6, 1) >= 0x1999999999999999uLL && (v12 & 1) == 0)
      {
        [objc_opt_class() _normalizedValueForZoomFactor:v6 * 0.1 min:*(a1 + 48) max:*(a1 + 56)];
        CEKInterpolateClamped();
        v13 = v14;
      }

      if (v10 < *(a1 + 64) || v10 > *(a1 + 72))
      {
        v13 = v13 * 0.2;
      }

      v15 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:v13];
      [v15 setStroke];

      v16 = 2.0;
      if (v12)
      {
        v16 = 3.0;
      }

      v17 = *(a1 + 80) * v16;
      [objc_opt_class() _offsetAngleForZoomFactor:0 relativeToCurrentZoomFactor:v6 * 0.1 currentZoomFactor:*(a1 + 48) min:*(a1 + 48) max:*(a1 + 56) signedAngleDeltaForZoomRange:*(a1 + 88)];
      v19 = v18;
      v20 = *(a1 + 96);
      v21 = v20 + -20.6666667;
      [*(a1 + 40) _pointForOffsetAngle:v19 dialCenter:*(a1 + 104) radius:{*(a1 + 112), v20 + -4.0}];
      v23 = v22;
      v25 = v24;
      [*(a1 + 40) _pointForOffsetAngle:v19 dialCenter:*(a1 + 104) radius:{*(a1 + 112), v21}];
      v27 = v26;
      v29 = v28;
      v30 = [MEMORY[0x1E69DC728] bezierPath];
      [v30 setLineWidth:v17];
      [v30 moveToPoint:{v23, v25}];
      [v30 addLineToPoint:{v27, v29}];
      [v30 stroke];

      ++v6;
    }

    while (v9 != v6);
  }
}

void __158__CAMZoomDial__createTicksImageForBounds_dialCenter_radius_pixelWidth_zoomFactors_minAvailableZoomFactor_maxAvailableZoomFactor_signedAngleDeltaForZoomRange___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 doubleValue];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:llround(v3 / 0.1)];
  [v4 addObject:v5];
}

+ (id)_createMaskImageWithSize:(CGSize)size tickLabelCenterRadialInset:(double)inset notchMaskImage:(id)image
{
  height = size.height;
  width = size.width;
  imageCopy = image;
  v15 = *MEMORY[0x1E695F058];
  preferredFormat = [MEMORY[0x1E69DCA80] preferredFormat];
  [preferredFormat setPreferredRange:32766];
  v9 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:preferredFormat format:{width, height}];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82__CAMZoomDial__createMaskImageWithSize_tickLabelCenterRadialInset_notchMaskImage___block_invoke;
  v13[3] = &unk_1E76FC5D8;
  v16 = width;
  v17 = height;
  v18 = width;
  v19 = height;
  v14 = imageCopy;
  v10 = imageCopy;
  v11 = [v9 imageWithActions:v13];

  return v11;
}

void __82__CAMZoomDial__createMaskImageWithSize_tickLabelCenterRadialInset_notchMaskImage___block_invoke(uint64_t a1, void *a2)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 CGContext];
  v5 = [MEMORY[0x1E69DC888] clearColor];
  v6 = [MEMORY[0x1E69DC888] blackColor];
  [v6 setFill];
  [v3 fillRect:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];

  CGContextSetBlendMode(v4, kCGBlendModeCopy);
  v12[0] = [v5 CGColor];
  v12[1] = [v6 CGColor];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  *locations = xmmword_1A3A6A380;
  ColorSpace = CGColorGetColorSpace([v6 CGColor]);
  v9 = CGGradientCreateWithColors(ColorSpace, v7, locations);
  CGContextSaveGState(v4);
  v17.size.height = *(a1 + 80);
  v17.size.width = *(a1 + 72) * 0.5;
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  CGContextClipToRect(v4, v17);
  v10 = *(a1 + 80);
  v13.x = 0.0;
  v15.y = 0.0;
  v13.y = v10;
  v15.x = v10 * 0.5;
  CGContextDrawLinearGradient(v4, v9, v13, v15, 0);
  CGContextRestoreGState(v4);
  CGContextSaveGState(v4);
  v18.size.height = *(a1 + 80);
  v18.origin.x = *(a1 + 72) * 0.5;
  v18.origin.y = 0.0;
  v18.size.width = v18.origin.x;
  CGContextClipToRect(v4, v18);
  v14.x = *(a1 + 72);
  v16.x = v14.x - v10 * 0.5;
  v16.y = 0.0;
  v14.y = v10;
  CGContextDrawLinearGradient(v4, v9, v14, v16, 0);
  CGContextRestoreGState(v4);
  CGGradientRelease(v9);
  [*(a1 + 32) size];
  UIRectCenteredXInRectScale();
  UIRectIntegralWithScale();
  [*(a1 + 32) drawInRect:17 blendMode:0 alpha:?];
}

- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated
{
  if (self->_orientation != orientation)
  {
    aBlock[5] = v7;
    aBlock[6] = v6;
    aBlock[11] = v4;
    aBlock[12] = v5;
    animatedCopy = animated;
    self->_orientation = orientation;
    [(CAMZoomDial *)self setNeedsLayout];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __39__CAMZoomDial_setOrientation_animated___block_invoke;
    aBlock[3] = &unk_1E76F77B0;
    aBlock[4] = self;
    v10 = _Block_copy(aBlock);
    v11 = v10;
    if (animatedCopy)
    {
      v12 = MEMORY[0x1E69DD250];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __39__CAMZoomDial_setOrientation_animated___block_invoke_2;
      v13[3] = &unk_1E76F7E40;
      v13[4] = self;
      v14 = v10;
      [v12 animateWithDuration:2 delay:v13 options:0 animations:0.3 completion:0.0];
    }

    else
    {
      v10[2](v10);
    }
  }
}

uint64_t __39__CAMZoomDial_setOrientation_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) layoutIfNeeded];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (double)_labelRotationAngleForOrientation
{
  orientation = [(CAMZoomDial *)self orientation];
  result = 0.0;
  if ((orientation - 2) <= 2)
  {
    return dbl_1A3A6A390[orientation - 2];
  }

  return result;
}

- (void)_preferredContentSizeCategoryChanged
{
  [(CAMZoomDial *)self _setLabelsUpdateNeeded:1];
  [(CAMZoomDial *)self _setMaskUpdateNeeded:1];

  [(CAMZoomDial *)self setNeedsLayout];
}

@end