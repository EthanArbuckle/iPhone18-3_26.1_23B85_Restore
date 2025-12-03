@interface FMAnnotationView
+ (void)preloadAssets;
- (FMAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier;
- (FMAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier tintColor:(id)color;
- (FMAnnotationView)initWithCoder:(id)coder;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_selectionWasUpdated:(BOOL)updated;
- (void)_setupSpringActions;
- (void)_transitionToNewSize:(BOOL)size;
- (void)_updateAnnotationStyle;
- (void)addColorInvertFilterToLayer:(id)layer;
- (void)animateDelayedAnimation;
- (void)dealloc;
- (void)invertColorStatusDidChange:(id)change;
- (void)prepareForReuse;
- (void)removeColorInvertFilterToLayer:(id)layer;
- (void)setAnnotation:(id)annotation;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated delay:(double)delay;
- (void)setTintColor:(id)color;
- (void)traitCollectionDidChange:(id)change;
- (void)updateStyleForAnnotation:(id)annotation;
@end

@implementation FMAnnotationView

+ (void)preloadAssets
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [MEMORY[0x277D755B8] imageNamed:@"annotation_circle_small" inBundle:v2 compatibleWithTraitCollection:0];
  v4 = [MEMORY[0x277D755B8] imageNamed:@"annotation_circle_large" inBundle:v2 compatibleWithTraitCollection:0];

  v5 = [MEMORY[0x277D755B8] imageNamed:@"annotation_location_outer" inBundle:v2 compatibleWithTraitCollection:0];
}

- (FMAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier
{
  v7 = MEMORY[0x277CCA890];
  identifierCopy = identifier;
  annotationCopy = annotation;
  currentHandler = [v7 currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"FMAnnotationView.m" lineNumber:213 description:@"Don't call this!"];

  clearColor = [MEMORY[0x277D75348] clearColor];
  v12 = [(FMAnnotationView *)self initWithAnnotation:annotationCopy reuseIdentifier:identifierCopy tintColor:clearColor];

  return v12;
}

- (FMAnnotationView)initWithCoder:(id)coder
{
  v5 = MEMORY[0x277CCA890];
  coderCopy = coder;
  currentHandler = [v5 currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"FMAnnotationView.m" lineNumber:222 description:@"Don't call this!"];

  v8 = [(FMAnnotationView *)self initWithCoder:coderCopy];
  return v8;
}

- (FMAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier tintColor:(id)color
{
  v88 = *MEMORY[0x277D85DE8];
  annotationCopy = annotation;
  colorCopy = color;
  v85.receiver = self;
  v85.super_class = FMAnnotationView;
  v10 = [(MKAnnotationView *)&v85 initWithAnnotation:annotationCopy reuseIdentifier:identifier];
  if (v10)
  {
    v79 = colorCopy;
    v80 = annotationCopy;
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v13 = v12;

    layer = [MEMORY[0x277CD9ED0] layer];
    [(FMAnnotationView *)v10 setSmallCircleLayer:layer];

    layer2 = [MEMORY[0x277CD9ED0] layer];
    [(FMAnnotationView *)v10 setLargeCircleLayer:layer2];

    layer3 = [MEMORY[0x277CD9ED0] layer];
    [(FMAnnotationView *)v10 setSmallPersonImageLayer:layer3];

    layer4 = [MEMORY[0x277CD9ED0] layer];
    [(FMAnnotationView *)v10 setLargePersonImageLayer:layer4];

    layer5 = [MEMORY[0x277CD9ED0] layer];
    [(FMAnnotationView *)v10 setLocationOuterLayer:layer5];

    layer6 = [MEMORY[0x277CD9ED0] layer];
    [(FMAnnotationView *)v10 setLocationInnerLayer:layer6];

    layer7 = [MEMORY[0x277CD9F90] layer];
    [(FMAnnotationView *)v10 setSmallRingLayer:layer7];

    layer8 = [MEMORY[0x277CD9F90] layer];
    [(FMAnnotationView *)v10 setLargeRingLayer:layer8];

    smallRingLayer = [(FMAnnotationView *)v10 smallRingLayer];
    [smallRingLayer setShouldRasterize:1];

    largeRingLayer = [(FMAnnotationView *)v10 largeRingLayer];
    [largeRingLayer setShouldRasterize:1];

    smallRingLayer2 = [(FMAnnotationView *)v10 smallRingLayer];
    [smallRingLayer2 setRasterizationScale:v13];

    largeRingLayer2 = [(FMAnnotationView *)v10 largeRingLayer];
    [largeRingLayer2 setRasterizationScale:v13];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel_invertColorStatusDidChange_ name:*MEMORY[0x277D76480] object:0];

    [(FMAnnotationView *)v10 invertColorStatusDidChange:0];
    v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v28 = [MEMORY[0x277D755B8] imageNamed:@"annotation_circle_small" inBundle:v27 compatibleWithTraitCollection:0];
    v29 = [MEMORY[0x277D755B8] imageNamed:@"annotation_circle_large" inBundle:v27 compatibleWithTraitCollection:0];
    v78 = v27;
    v30 = [MEMORY[0x277D755B8] imageNamed:@"annotation_location_outer" inBundle:v27 compatibleWithTraitCollection:0];
    -[CALayer setContents:](v10->_smallCircleLayer, "setContents:", [v28 CGImage]);
    -[CALayer setContents:](v10->_largeCircleLayer, "setContents:", [v29 CGImage]);
    -[CALayer setContents:](v10->_locationOuterLayer, "setContents:", [v30 CGImage]);
    clearColor = [MEMORY[0x277D75348] clearColor];
    -[CAShapeLayer setFillColor:](v10->_smallRingLayer, "setFillColor:", [clearColor CGColor]);

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    -[CAShapeLayer setFillColor:](v10->_largeRingLayer, "setFillColor:", [clearColor2 CGColor]);

    v33 = *MEMORY[0x277CBF348];
    v34 = *(MEMORY[0x277CBF348] + 8);
    [v28 size];
    [(CALayer *)v10->_smallCircleLayer setBounds:v33, v34, v35, v36];
    [v29 size];
    [(CALayer *)v10->_largeCircleLayer setBounds:v33, v34, v37, v38];
    [(CALayer *)v10->_smallPersonImageLayer setBounds:*&FMAnnotationViewImagePadding * 0.5, *&FMAnnotationViewImagePadding * 0.5, 28.0 - *&FMAnnotationViewImagePadding * 0.5, 28.0 - *&FMAnnotationViewImagePadding * 0.5];
    [(CALayer *)v10->_largePersonImageLayer setBounds:*&FMAnnotationViewImagePadding, *&FMAnnotationViewImagePadding, 72.0 - *&FMAnnotationViewImagePadding, 72.0 - *&FMAnnotationViewImagePadding];
    [(CALayer *)v10->_smallPersonImageLayer bounds];
    [(CALayer *)v10->_smallPersonImageLayer setCornerRadius:v39 * 0.5];
    [(CALayer *)v10->_largePersonImageLayer bounds];
    [(CALayer *)v10->_largePersonImageLayer setCornerRadius:v40 * 0.5];
    v41 = FMAnnotationViewShouldMaskLayer;
    [(CALayer *)v10->_largePersonImageLayer setMasksToBounds:FMAnnotationViewShouldMaskLayer];
    [(CALayer *)v10->_smallPersonImageLayer setMasksToBounds:v41];
    [v30 size];
    [(CALayer *)v10->_locationOuterLayer setBounds:v33, v34, v42, v43];
    [(CALayer *)v10->_smallCircleLayer bounds];
    [(CAShapeLayer *)v10->_smallRingLayer setBounds:?];
    [(CALayer *)v10->_largeCircleLayer bounds];
    [(CAShapeLayer *)v10->_largeRingLayer setBounds:?];
    [(CALayer *)v10->_smallCircleLayer bounds];
    v89.size.width = v44 + -1.5;
    v89.size.height = v45 + -1.5;
    v89.origin.x = v46 + 0.75;
    v89.origin.y = v47 + 0.75;
    v48 = MEMORY[0x277D75208];
    v90 = CGRectInset(v89, 14.0, 14.0);
    v49 = [v48 bezierPathWithOvalInRect:{v90.origin.x, v90.origin.y, v90.size.width, v90.size.height}];
    -[CAShapeLayer setPath:](v10->_smallRingLayer, "setPath:", [v49 CGPath]);

    [(CALayer *)v10->_largeCircleLayer bounds];
    v91.size.width = v50 - *&FMAnnotationViewLargeRingPadding;
    v91.size.height = v51 - *&FMAnnotationViewLargeRingPadding;
    v91.origin.x = v52 + *&FMAnnotationViewLargeRingPadding * 0.5;
    v91.origin.y = v53 + *&FMAnnotationViewLargeRingPadding * 0.5;
    v54 = MEMORY[0x277D75208];
    v92 = CGRectInset(v91, 25.0, 25.0);
    v55 = [v54 bezierPathWithOvalInRect:{v92.origin.x, v92.origin.y, v92.size.width, v92.size.height}];
    -[CAShapeLayer setPath:](v10->_largeRingLayer, "setPath:", [v55 CGPath]);

    [(MKAnnotationView *)v10 setBounds:0.0, 0.0, 30.0, 30.0];
    v56 = 1.0;
    if (FMThickAnnotationBorder)
    {
      v56 = 1.5;
    }

    [(CAShapeLayer *)v10->_smallRingLayer setLineWidth:v56];
    v57 = 3.0;
    if (!FMThickAnnotationBorder)
    {
      v57 = 1.5;
    }

    [(CAShapeLayer *)v10->_largeRingLayer setLineWidth:v57];
    [(CALayer *)v10->_largeCircleLayer setAnchorPoint:0.5, 0.915];
    layer9 = [(FMAnnotationView *)v10 layer];
    [layer9 addSublayer:v10->_locationOuterLayer];

    [(CALayer *)v10->_locationOuterLayer addSublayer:v10->_locationInnerLayer];
    layer10 = [(FMAnnotationView *)v10 layer];
    [layer10 addSublayer:v10->_smallCircleLayer];

    [(CALayer *)v10->_smallCircleLayer addSublayer:v10->_smallPersonImageLayer];
    [(CALayer *)v10->_smallCircleLayer addSublayer:v10->_smallRingLayer];
    layer11 = [(FMAnnotationView *)v10 layer];
    [layer11 addSublayer:v10->_largeCircleLayer];

    [(CALayer *)v10->_largeCircleLayer addSublayer:v10->_largePersonImageLayer];
    [(CALayer *)v10->_largeCircleLayer addSublayer:v10->_largeRingLayer];
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v86[0] = v10->_smallCircleLayer;
    v86[1] = v10->_largeCircleLayer;
    v86[2] = v10->_locationOuterLayer;
    v86[3] = v10->_locationInnerLayer;
    v86[4] = v10->_smallPersonImageLayer;
    v86[5] = v10->_largePersonImageLayer;
    v86[6] = v10->_smallRingLayer;
    v86[7] = v10->_largeRingLayer;
    v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:8];
    v62 = [v61 countByEnumeratingWithState:&v81 objects:v87 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v82;
      do
      {
        for (i = 0; i != v63; ++i)
        {
          if (*v82 != v64)
          {
            objc_enumerationMutation(v61);
          }

          v66 = *(*(&v81 + 1) + 8 * i);
          superlayer = [v66 superlayer];
          [superlayer bounds];
          v69 = v68;
          v71 = v70;
          v73 = v72;
          v75 = v74;

          v93.origin.x = v69;
          v93.origin.y = v71;
          v93.size.width = v73;
          v93.size.height = v75;
          MidX = CGRectGetMidX(v93);
          v94.origin.x = v69;
          v94.origin.y = v71;
          v94.size.width = v73;
          v94.size.height = v75;
          [v66 setPosition:{MidX, CGRectGetMidY(v94)}];
        }

        v63 = [v61 countByEnumeratingWithState:&v81 objects:v87 count:16];
      }

      while (v63);
    }

    colorCopy = v79;
    [(FMAnnotationView *)v10 setTintColor:v79];
    annotationCopy = v80;
    [(FMAnnotationView *)v10 updateStyleForAnnotation:v80];
    [(FMAnnotationView *)v10 _setupSpringActions];
  }

  return v10;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = FMAnnotationView;
  [(MKAnnotationView *)&v4 dealloc];
}

- (void)traitCollectionDidChange:(id)change
{
  v19.receiver = self;
  v19.super_class = FMAnnotationView;
  [(FMAnnotationView *)&v19 traitCollectionDidChange:change];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [MEMORY[0x277D755B8] imageNamed:@"annotation_location_inner" inBundle:v4 compatibleWithTraitCollection:0];
  tintColor = [(FMAnnotationView *)self tintColor];
  v7 = [v5 tintedImageWithColor:tintColor];

  v8 = [MEMORY[0x277D755B8] imageNamed:@"annotation_location_outer" inBundle:v4 compatibleWithTraitCollection:0];
  v9 = [MEMORY[0x277D755B8] imageNamed:@"annotation_circle_small" inBundle:v4 compatibleWithTraitCollection:0];
  v10 = [MEMORY[0x277D755B8] imageNamed:@"annotation_circle_large" inBundle:v4 compatibleWithTraitCollection:0];
  -[CALayer setContents:](self->_locationInnerLayer, "setContents:", [v7 CGImage]);
  v11 = *MEMORY[0x277CBF348];
  v12 = *(MEMORY[0x277CBF348] + 8);
  [v7 size];
  [(CALayer *)self->_locationInnerLayer setBounds:v11, v12, v13, v14];
  -[CALayer setContents:](self->_smallCircleLayer, "setContents:", [v9 CGImage]);
  -[CALayer setContents:](self->_largeCircleLayer, "setContents:", [v10 CGImage]);
  -[CALayer setContents:](self->_locationOuterLayer, "setContents:", [v8 CGImage]);
  annotation = [(MKAnnotationView *)self annotation];
  smallAnnotationIcon = [annotation smallAnnotationIcon];

  annotation2 = [(MKAnnotationView *)self annotation];
  largeAnnotationIcon = [annotation2 largeAnnotationIcon];

  -[CALayer setContents:](self->_smallPersonImageLayer, "setContents:", [smallAnnotationIcon CGImage]);
  -[CALayer setContents:](self->_largePersonImageLayer, "setContents:", [largeAnnotationIcon CGImage]);
}

- (void)prepareForReuse
{
  [(FMAnnotationView *)self setIsDelayed:0];
  [(FMAnnotationView *)self setHasPhotoImage:0];
  smallPersonImageLayer = [(FMAnnotationView *)self smallPersonImageLayer];
  [smallPersonImageLayer setContents:0];

  largePersonImageLayer = [(FMAnnotationView *)self largePersonImageLayer];
  [largePersonImageLayer setContents:0];

  [(FMAnnotationView *)self setSelected:0 animated:0];
}

- (void)updateStyleForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  if (annotationCopy)
  {
    tintColor = [(FMAnnotationView *)self tintColor];
    tintColor2 = [annotationCopy tintColor];
    if (!tintColor2 || ([tintColor isEqual:tintColor2] & 1) == 0)
    {
      [(FMAnnotationView *)self setTintColor:tintColor2];
    }

    v7 = MEMORY[0x277D75D18];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __45__FMAnnotationView_updateStyleForAnnotation___block_invoke;
    v11 = &unk_278FDB908;
    selfCopy = self;
    v13 = annotationCopy;
    [v7 performWithoutAnimation:&v8];
    [(FMAnnotationView *)self _updateAnnotationStyle:v8];
  }
}

void __45__FMAnnotationView_updateStyleForAnnotation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) smallAnnotationIcon];
  v3 = [v2 CGImage];
  v4 = [*(a1 + 32) smallPersonImageLayer];
  [v4 setContents:v3];

  v5 = [*(a1 + 40) largeAnnotationIcon];
  v6 = [v5 CGImage];
  v7 = [*(a1 + 32) largePersonImageLayer];
  [v7 setContents:v6];

  v9 = [*(a1 + 40) smallAnnotationIcon];
  v8 = v9;
  [*(a1 + 32) setHasPhotoImage:{objc_msgSend(v9, "CGImage") != 0}];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated delay:(double)delay
{
  animatedCopy = animated;
  selectedCopy = selected;
  v17 = *MEMORY[0x277D85DE8];
  v9 = LogCategory_Unspecified();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    v12 = selectedCopy;
    v13 = 1024;
    v14 = animatedCopy;
    v15 = 2048;
    delayCopy = delay;
    _os_log_impl(&dword_24A315000, v9, OS_LOG_TYPE_DEFAULT, "FMAnnotationView: setSelected: %d, animated: %d delay: %f", buf, 0x18u);
  }

  v10.receiver = self;
  v10.super_class = FMAnnotationView;
  [(MKAnnotationView *)&v10 setSelected:selectedCopy animated:animatedCopy];
  [(FMAnnotationView *)self setIsDelayed:1];
  [(FMAnnotationView *)self performSelector:sel_animateDelayedAnimation withObject:0 afterDelay:delay];
}

- (void)animateDelayedAnimation
{
  if ([(FMAnnotationView *)self isDelayed])
  {
    [(FMAnnotationView *)self setIsDelayed:0];

    [(FMAnnotationView *)self _selectionWasUpdated:1];
  }
}

- (void)setTintColor:(id)color
{
  colorCopy = color;
  v19.receiver = self;
  v19.super_class = FMAnnotationView;
  [(FMAnnotationView *)&v19 setTintColor:colorCopy];
  v5 = MEMORY[0x277D755B8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v5 imageNamed:@"annotation_location_inner" inBundle:v6 compatibleWithTraitCollection:0];

  v8 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__FMAnnotationView_setTintColor___block_invoke;
  block[3] = &unk_278FDBA10;
  v16 = v7;
  v17 = colorCopy;
  selfCopy = self;
  v9 = colorCopy;
  v10 = v7;
  dispatch_async(v8, block);

  cGColor = [v9 CGColor];
  smallRingLayer = [(FMAnnotationView *)self smallRingLayer];
  [smallRingLayer setStrokeColor:cGColor];

  cGColor2 = [v9 CGColor];
  largeRingLayer = [(FMAnnotationView *)self largeRingLayer];
  [largeRingLayer setStrokeColor:cGColor2];
}

void __33__FMAnnotationView_setTintColor___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tintedImageWithColor:*(a1 + 40)];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__FMAnnotationView_setTintColor___block_invoke_2;
  v4[3] = &unk_278FDB908;
  v4[4] = *(a1 + 48);
  v5 = v2;
  v3 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

void __33__FMAnnotationView_setTintColor___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) CGImage];
  v3 = [*(a1 + 32) locationInnerLayer];
  [v3 setContents:v2];

  v4 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);
  [*(a1 + 40) size];
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 32) locationInnerLayer];
  [v10 setBounds:{v4, v5, v7, v9}];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  animatedCopy = animated;
  selectedCopy = selected;
  v13 = *MEMORY[0x277D85DE8];
  v7 = LogCategory_Unspecified();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v10 = selectedCopy;
    v11 = 1024;
    v12 = animatedCopy;
    _os_log_impl(&dword_24A315000, v7, OS_LOG_TYPE_DEFAULT, "FMAnnotationView: setSelected: %d, animated: %d", buf, 0xEu);
  }

  v8.receiver = self;
  v8.super_class = FMAnnotationView;
  [(MKAnnotationView *)&v8 setSelected:selectedCopy animated:animatedCopy];
  [(FMAnnotationView *)self _selectionWasUpdated:animatedCopy];
}

- (void)_selectionWasUpdated:(BOOL)updated
{
  updatedCopy = updated;
  v9 = *MEMORY[0x277D85DE8];
  v5 = LogCategory_Unspecified();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109376;
    v6[1] = [(FMAnnotationView *)self isShowingLargeSelectedAnnotation];
    v7 = 1024;
    isSelected = [(MKAnnotationView *)self isSelected];
    _os_log_impl(&dword_24A315000, v5, OS_LOG_TYPE_DEFAULT, "FMAnnotationView: _selectionWasUpdated isShowingLargeAnotation: %d, isSelected: %d", v6, 0xEu);
  }

  if ([(FMAnnotationView *)self isShowingLargeSelectedAnnotation]&& ![(MKAnnotationView *)self isSelected]|| ![(FMAnnotationView *)self isShowingLargeSelectedAnnotation]&& [(MKAnnotationView *)self isSelected])
  {
    [(FMAnnotationView *)self _transitionToNewSize:updatedCopy];
  }
}

- (void)_transitionToNewSize:(BOOL)size
{
  sizeCopy = size;
  v10 = *MEMORY[0x277D85DE8];
  v5 = LogCategory_Unspecified();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = sizeCopy;
    _os_log_impl(&dword_24A315000, v5, OS_LOG_TYPE_DEFAULT, "FMAnnotationView: _transitionToNewSize delayed?: %d", v9, 8u);
  }

  if (![(FMAnnotationView *)self isDelayed])
  {
    [(FMAnnotationView *)self _setupSpringActions];
    [MEMORY[0x277CD9FF0] begin];
    if (!sizeCopy)
    {
      smallCircleLayer = [(FMAnnotationView *)self smallCircleLayer];
      [smallCircleLayer removeAllAnimations];

      locationOuterLayer = [(FMAnnotationView *)self locationOuterLayer];
      [locationOuterLayer removeAllAnimations];

      largeCircleLayer = [(FMAnnotationView *)self largeCircleLayer];
      [largeCircleLayer removeAllAnimations];

      [MEMORY[0x277CD9FF0] setDisableActions:1];
    }

    [(FMAnnotationView *)self _updateAnnotationStyle];
    [MEMORY[0x277CD9FF0] commit];
  }
}

- (void)_updateAnnotationStyle
{
  if ([(MKAnnotationView *)self isSelected])
  {
    shouldPreventLargeAnnotationState = [(FMAnnotationView *)self shouldPreventLargeAnnotationState];
    v4 = !shouldPreventLargeAnnotationState;
    if (shouldPreventLargeAnnotationState)
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.0;
    }
  }

  else
  {
    v4 = 0;
    v5 = 1.0;
  }

  smallCircleLayer = [(FMAnnotationView *)self smallCircleLayer];
  *&v7 = v5;
  [smallCircleLayer setOpacity:v7];

  largeCircleLayer = [(FMAnnotationView *)self largeCircleLayer];
  v9 = largeCircleLayer;
  v10 = 0.0;
  if (v4)
  {
    *&v10 = 1.0;
    v11 = 0.100000001;
  }

  else
  {
    v11 = 1.0;
  }

  if (v4)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.100000001;
  }

  [largeCircleLayer setOpacity:v10];

  CATransform3DMakeScale(&v39, v11, v11, 1.0);
  smallCircleLayer2 = [(FMAnnotationView *)self smallCircleLayer];
  v38 = v39;
  [smallCircleLayer2 setTransform:&v38];

  CATransform3DMakeScale(&v37, v12, v12, 1.0);
  locationOuterLayer = [(FMAnnotationView *)self locationOuterLayer];
  v38 = v37;
  [locationOuterLayer setTransform:&v38];

  annotation = [(MKAnnotationView *)self annotation];
  if ([annotation isThisDevice])
  {
    v16 = +[FMMapView hasUserLocation];

    if (v16)
    {
      smallRingLayer = [(FMAnnotationView *)self smallRingLayer];
      [smallRingLayer setOpacity:0.0];
      locationOuterLayer2 = [(FMAnnotationView *)self locationOuterLayer];
      [locationOuterLayer2 setOpacity:0.0];
      smallCircleLayer3 = [(FMAnnotationView *)self smallCircleLayer];
      [smallCircleLayer3 setOpacity:0.0];

LABEL_19:
      goto LABEL_20;
    }
  }

  else
  {
  }

  smallRingLayer = [(FMAnnotationView *)self locationOuterLayer];
  isBorderEnabled = 1.0;
  LODWORD(v21) = 1.0;
  [smallRingLayer setOpacity:v21];

  v22 = FMAnnotationViewLargeRingVisible;
  if ((FMAnnotationViewLargeRingVisible & 1) == 0)
  {
    smallRingLayer = [(MKAnnotationView *)self annotation];
    isBorderEnabled = [smallRingLayer isBorderEnabled];
  }

  smallRingLayer2 = [(FMAnnotationView *)self smallRingLayer];
  *&v24 = isBorderEnabled;
  [smallRingLayer2 setOpacity:v24];

  if ((v22 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_20:
  v25 = FMAnnotationViewLargeRingVisible;
  if (FMAnnotationViewLargeRingVisible)
  {
    isBorderEnabled2 = 1.0;
  }

  else
  {
    smallRingLayer = [(MKAnnotationView *)self annotation];
    isBorderEnabled2 = [smallRingLayer isBorderEnabled];
  }

  largeRingLayer = [(FMAnnotationView *)self largeRingLayer];
  *&v28 = isBorderEnabled2;
  [largeRingLayer setOpacity:v28];

  if ((v25 & 1) == 0)
  {
  }

  v29 = FMAnnotationViewLargeRingVisible;
  if (FMAnnotationViewLargeRingVisible)
  {
    isBorderEnabled3 = 1.0;
  }

  else
  {
    smallRingLayer = [(MKAnnotationView *)self annotation];
    isBorderEnabled3 = [smallRingLayer isBorderEnabled];
  }

  smallRingLayer3 = [(FMAnnotationView *)self smallRingLayer];
  *&v32 = isBorderEnabled3;
  [smallRingLayer3 setOpacity:v32];

  if ((v29 & 1) == 0)
  {
  }

  v33 = -5.0;
  if (!v4)
  {
    v33 = 15.0;
  }

  CATransform3DMakeTranslation(&v38, 0.0, v33, 0.0);
  CATransform3DScale(&v36, &v38, v12, v12, 1.0);
  largeCircleLayer2 = [(FMAnnotationView *)self largeCircleLayer];
  v38 = v36;
  [largeCircleLayer2 setTransform:&v38];

  if ([(MKAnnotationView *)self isSelected])
  {
    v35 = [(FMAnnotationView *)self shouldPreventLargeAnnotationState]^ 1;
  }

  else
  {
    v35 = 0;
  }

  [(FMAnnotationView *)self setIsShowingLargeSelectedAnnotation:v35];
  [(FMAnnotationView *)self invertColorStatusDidChange:0];
}

- (void)_setupSpringActions
{
  v35[1] = *MEMORY[0x277D85DE8];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __parametersOfSpringAnimation_block_invoke;
  v33[3] = &__block_descriptor_40_e8_d16__0d8l;
  v33[4] = 0x3FEC4780E0000000;
  v34 = @"transform";
  v3 = MEMORY[0x24C216350](v33, a2);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __parametersOfSpringAnimation_block_invoke_2;
  v30[3] = &unk_278FDBBA8;
  v32 = xmmword_24A3301A0;
  v31 = v3;
  v4 = v3;
  v5 = MEMORY[0x24C216350](v30);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __parametersOfSpringAnimation_block_invoke_3;
  v27[3] = &unk_278FDBBA8;
  v29 = xmmword_24A3301B0;
  v6 = v5;
  v28 = v6;
  v7 = MEMORY[0x24C216350](v27);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __parametersOfSpringAnimation_block_invoke_4;
  v22 = &unk_278FDBBD0;
  v23 = v6;
  v24 = xmmword_24A3301C0;
  v25 = xmmword_24A3301D0;
  v26 = 0x3FEC4780E0000000;
  v8 = v6;
  v9 = MEMORY[0x24C216350](&v19);

  v10 = 12;
  v11 = 7.8369906;
  do
  {
    v12 = v7[2](v7, v11);
    v11 = v11 - v12 / v9[2](v9, v11);
    --v10;
  }

  while (v10);
  v13 = v11 * v11;
  v14 = sqrt(v13);
  v15 = (v14 + v14) * 0.468;

  animation = [MEMORY[0x277CD9FA0] animation];
  [animation setMass:1.0];
  [animation setVelocity:1.0];
  [animation setStiffness:v13];
  [animation setDamping:v15];
  v17 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
  [animation setTimingFunction:v17];

  [animation setDuration:0.638];
  v35[0] = animation;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  [(CALayer *)self->_largeCircleLayer setActions:v18];
}

- (void)setAnnotation:(id)annotation
{
  v5.receiver = self;
  v5.super_class = FMAnnotationView;
  annotationCopy = annotation;
  [(MKAnnotationView *)&v5 setAnnotation:annotationCopy];
  [(FMAnnotationView *)self updateStyleForAnnotation:annotationCopy, v5.receiver, v5.super_class];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if (![(FMAnnotationView *)self isShowingLargeSelectedAnnotation])
  {
    v20.receiver = self;
    v20.super_class = FMAnnotationView;
    selfCopy = [(MKAnnotationView *)&v20 hitTest:eventCopy withEvent:x, y];
    goto LABEL_5;
  }

  largeCircleLayer = [(FMAnnotationView *)self largeCircleLayer];
  [largeCircleLayer frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  if (sqrt((y - (v12 + v16 * 0.5)) * (y - (v12 + v16 * 0.5)) + (x - (v10 + v14 * 0.5)) * (x - (v10 + v14 * 0.5))) < 36.0)
  {
    selfCopy = self;
LABEL_5:
    v18 = selfCopy;
    goto LABEL_7;
  }

  v18 = 0;
LABEL_7:

  return v18;
}

- (void)addColorInvertFilterToLayer:(id)layer
{
  layerCopy = layer;
  filters = [layerCopy filters];

  if (!filters || ([layerCopy filters], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "indexOfObjectPassingTest:", &__block_literal_global_3), v4, v5 == 0x7FFFFFFFFFFFFFFFLL))
  {
    filters2 = [layerCopy filters];
    if (filters2)
    {
      filters3 = [layerCopy filters];
      array = [filters3 mutableCopy];
    }

    else
    {
      array = [MEMORY[0x277CBEB18] array];
    }

    v9 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2B0]];
    [v9 setName:@"FMColorInvertFilter"];
    [array addObject:v9];
    [layerCopy setFilters:array];
  }
}

uint64_t __48__FMAnnotationView_addColorInvertFilterToLayer___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = [a2 name];
  v6 = [v5 isEqualToString:@"FMColorInvertFilter"];

  if (v6)
  {
    *a4 = 1;
  }

  return v6;
}

- (void)removeColorInvertFilterToLayer:(id)layer
{
  layerCopy = layer;
  filters = [layerCopy filters];

  if (filters)
  {
    filters2 = [layerCopy filters];
    v5 = [filters2 indexOfObjectPassingTest:&__block_literal_global_55];

    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      filters3 = [layerCopy filters];
      v7 = [filters3 mutableCopy];

      [v7 removeObjectAtIndex:v5];
      [layerCopy setFilters:v7];
    }
  }
}

uint64_t __51__FMAnnotationView_removeColorInvertFilterToLayer___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = [a2 name];
  v6 = [v5 isEqualToString:@"FMColorInvertFilter"];

  if (v6)
  {
    *a4 = 1;
  }

  return v6;
}

- (void)invertColorStatusDidChange:(id)change
{
  if (UIAccessibilityIsInvertColorsEnabled() && (-[MKAnnotationView annotation](self, "annotation"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isBorderEnabled], v4, (v5 & 1) == 0))
  {
    smallPersonImageLayer = [(FMAnnotationView *)self smallPersonImageLayer];
    [(FMAnnotationView *)self addColorInvertFilterToLayer:smallPersonImageLayer];

    largePersonImageLayer = [(FMAnnotationView *)self largePersonImageLayer];
    [(FMAnnotationView *)self addColorInvertFilterToLayer:largePersonImageLayer];
  }

  else
  {
    smallPersonImageLayer2 = [(FMAnnotationView *)self smallPersonImageLayer];
    [(FMAnnotationView *)self removeColorInvertFilterToLayer:smallPersonImageLayer2];

    largePersonImageLayer = [(FMAnnotationView *)self largePersonImageLayer];
    [(FMAnnotationView *)self removeColorInvertFilterToLayer:largePersonImageLayer];
  }

  [(FMAnnotationView *)self setNeedsDisplay];
}

@end