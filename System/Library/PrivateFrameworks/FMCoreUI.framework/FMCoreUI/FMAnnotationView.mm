@interface FMAnnotationView
+ (void)preloadAssets;
- (FMAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4;
- (FMAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4 tintColor:(id)a5;
- (FMAnnotationView)initWithCoder:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_selectionWasUpdated:(BOOL)a3;
- (void)_setupSpringActions;
- (void)_transitionToNewSize:(BOOL)a3;
- (void)_updateAnnotationStyle;
- (void)addColorInvertFilterToLayer:(id)a3;
- (void)animateDelayedAnimation;
- (void)dealloc;
- (void)invertColorStatusDidChange:(id)a3;
- (void)prepareForReuse;
- (void)removeColorInvertFilterToLayer:(id)a3;
- (void)setAnnotation:(id)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4 delay:(double)a5;
- (void)setTintColor:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateStyleForAnnotation:(id)a3;
@end

@implementation FMAnnotationView

+ (void)preloadAssets
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [MEMORY[0x277D755B8] imageNamed:@"annotation_circle_small" inBundle:v2 compatibleWithTraitCollection:0];
  v4 = [MEMORY[0x277D755B8] imageNamed:@"annotation_circle_large" inBundle:v2 compatibleWithTraitCollection:0];

  v5 = [MEMORY[0x277D755B8] imageNamed:@"annotation_location_outer" inBundle:v2 compatibleWithTraitCollection:0];
}

- (FMAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4
{
  v7 = MEMORY[0x277CCA890];
  v8 = a4;
  v9 = a3;
  v10 = [v7 currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"FMAnnotationView.m" lineNumber:213 description:@"Don't call this!"];

  v11 = [MEMORY[0x277D75348] clearColor];
  v12 = [(FMAnnotationView *)self initWithAnnotation:v9 reuseIdentifier:v8 tintColor:v11];

  return v12;
}

- (FMAnnotationView)initWithCoder:(id)a3
{
  v5 = MEMORY[0x277CCA890];
  v6 = a3;
  v7 = [v5 currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"FMAnnotationView.m" lineNumber:222 description:@"Don't call this!"];

  v8 = [(FMAnnotationView *)self initWithCoder:v6];
  return v8;
}

- (FMAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4 tintColor:(id)a5
{
  v88 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v85.receiver = self;
  v85.super_class = FMAnnotationView;
  v10 = [(MKAnnotationView *)&v85 initWithAnnotation:v8 reuseIdentifier:a4];
  if (v10)
  {
    v79 = v9;
    v80 = v8;
    v11 = [MEMORY[0x277D759A0] mainScreen];
    [v11 scale];
    v13 = v12;

    v14 = [MEMORY[0x277CD9ED0] layer];
    [(FMAnnotationView *)v10 setSmallCircleLayer:v14];

    v15 = [MEMORY[0x277CD9ED0] layer];
    [(FMAnnotationView *)v10 setLargeCircleLayer:v15];

    v16 = [MEMORY[0x277CD9ED0] layer];
    [(FMAnnotationView *)v10 setSmallPersonImageLayer:v16];

    v17 = [MEMORY[0x277CD9ED0] layer];
    [(FMAnnotationView *)v10 setLargePersonImageLayer:v17];

    v18 = [MEMORY[0x277CD9ED0] layer];
    [(FMAnnotationView *)v10 setLocationOuterLayer:v18];

    v19 = [MEMORY[0x277CD9ED0] layer];
    [(FMAnnotationView *)v10 setLocationInnerLayer:v19];

    v20 = [MEMORY[0x277CD9F90] layer];
    [(FMAnnotationView *)v10 setSmallRingLayer:v20];

    v21 = [MEMORY[0x277CD9F90] layer];
    [(FMAnnotationView *)v10 setLargeRingLayer:v21];

    v22 = [(FMAnnotationView *)v10 smallRingLayer];
    [v22 setShouldRasterize:1];

    v23 = [(FMAnnotationView *)v10 largeRingLayer];
    [v23 setShouldRasterize:1];

    v24 = [(FMAnnotationView *)v10 smallRingLayer];
    [v24 setRasterizationScale:v13];

    v25 = [(FMAnnotationView *)v10 largeRingLayer];
    [v25 setRasterizationScale:v13];

    v26 = [MEMORY[0x277CCAB98] defaultCenter];
    [v26 addObserver:v10 selector:sel_invertColorStatusDidChange_ name:*MEMORY[0x277D76480] object:0];

    [(FMAnnotationView *)v10 invertColorStatusDidChange:0];
    v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v28 = [MEMORY[0x277D755B8] imageNamed:@"annotation_circle_small" inBundle:v27 compatibleWithTraitCollection:0];
    v29 = [MEMORY[0x277D755B8] imageNamed:@"annotation_circle_large" inBundle:v27 compatibleWithTraitCollection:0];
    v78 = v27;
    v30 = [MEMORY[0x277D755B8] imageNamed:@"annotation_location_outer" inBundle:v27 compatibleWithTraitCollection:0];
    -[CALayer setContents:](v10->_smallCircleLayer, "setContents:", [v28 CGImage]);
    -[CALayer setContents:](v10->_largeCircleLayer, "setContents:", [v29 CGImage]);
    -[CALayer setContents:](v10->_locationOuterLayer, "setContents:", [v30 CGImage]);
    v31 = [MEMORY[0x277D75348] clearColor];
    -[CAShapeLayer setFillColor:](v10->_smallRingLayer, "setFillColor:", [v31 CGColor]);

    v32 = [MEMORY[0x277D75348] clearColor];
    -[CAShapeLayer setFillColor:](v10->_largeRingLayer, "setFillColor:", [v32 CGColor]);

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
    v58 = [(FMAnnotationView *)v10 layer];
    [v58 addSublayer:v10->_locationOuterLayer];

    [(CALayer *)v10->_locationOuterLayer addSublayer:v10->_locationInnerLayer];
    v59 = [(FMAnnotationView *)v10 layer];
    [v59 addSublayer:v10->_smallCircleLayer];

    [(CALayer *)v10->_smallCircleLayer addSublayer:v10->_smallPersonImageLayer];
    [(CALayer *)v10->_smallCircleLayer addSublayer:v10->_smallRingLayer];
    v60 = [(FMAnnotationView *)v10 layer];
    [v60 addSublayer:v10->_largeCircleLayer];

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
          v67 = [v66 superlayer];
          [v67 bounds];
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

    v9 = v79;
    [(FMAnnotationView *)v10 setTintColor:v79];
    v8 = v80;
    [(FMAnnotationView *)v10 updateStyleForAnnotation:v80];
    [(FMAnnotationView *)v10 _setupSpringActions];
  }

  return v10;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = FMAnnotationView;
  [(MKAnnotationView *)&v4 dealloc];
}

- (void)traitCollectionDidChange:(id)a3
{
  v19.receiver = self;
  v19.super_class = FMAnnotationView;
  [(FMAnnotationView *)&v19 traitCollectionDidChange:a3];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [MEMORY[0x277D755B8] imageNamed:@"annotation_location_inner" inBundle:v4 compatibleWithTraitCollection:0];
  v6 = [(FMAnnotationView *)self tintColor];
  v7 = [v5 tintedImageWithColor:v6];

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
  v15 = [(MKAnnotationView *)self annotation];
  v16 = [v15 smallAnnotationIcon];

  v17 = [(MKAnnotationView *)self annotation];
  v18 = [v17 largeAnnotationIcon];

  -[CALayer setContents:](self->_smallPersonImageLayer, "setContents:", [v16 CGImage]);
  -[CALayer setContents:](self->_largePersonImageLayer, "setContents:", [v18 CGImage]);
}

- (void)prepareForReuse
{
  [(FMAnnotationView *)self setIsDelayed:0];
  [(FMAnnotationView *)self setHasPhotoImage:0];
  v3 = [(FMAnnotationView *)self smallPersonImageLayer];
  [v3 setContents:0];

  v4 = [(FMAnnotationView *)self largePersonImageLayer];
  [v4 setContents:0];

  [(FMAnnotationView *)self setSelected:0 animated:0];
}

- (void)updateStyleForAnnotation:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(FMAnnotationView *)self tintColor];
    v6 = [v4 tintColor];
    if (!v6 || ([v5 isEqual:v6] & 1) == 0)
    {
      [(FMAnnotationView *)self setTintColor:v6];
    }

    v7 = MEMORY[0x277D75D18];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __45__FMAnnotationView_updateStyleForAnnotation___block_invoke;
    v11 = &unk_278FDB908;
    v12 = self;
    v13 = v4;
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

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4 delay:(double)a5
{
  v6 = a4;
  v7 = a3;
  v17 = *MEMORY[0x277D85DE8];
  v9 = LogCategory_Unspecified();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    v12 = v7;
    v13 = 1024;
    v14 = v6;
    v15 = 2048;
    v16 = a5;
    _os_log_impl(&dword_24A315000, v9, OS_LOG_TYPE_DEFAULT, "FMAnnotationView: setSelected: %d, animated: %d delay: %f", buf, 0x18u);
  }

  v10.receiver = self;
  v10.super_class = FMAnnotationView;
  [(MKAnnotationView *)&v10 setSelected:v7 animated:v6];
  [(FMAnnotationView *)self setIsDelayed:1];
  [(FMAnnotationView *)self performSelector:sel_animateDelayedAnimation withObject:0 afterDelay:a5];
}

- (void)animateDelayedAnimation
{
  if ([(FMAnnotationView *)self isDelayed])
  {
    [(FMAnnotationView *)self setIsDelayed:0];

    [(FMAnnotationView *)self _selectionWasUpdated:1];
  }
}

- (void)setTintColor:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = FMAnnotationView;
  [(FMAnnotationView *)&v19 setTintColor:v4];
  v5 = MEMORY[0x277D755B8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v5 imageNamed:@"annotation_location_inner" inBundle:v6 compatibleWithTraitCollection:0];

  v8 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__FMAnnotationView_setTintColor___block_invoke;
  block[3] = &unk_278FDBA10;
  v16 = v7;
  v17 = v4;
  v18 = self;
  v9 = v4;
  v10 = v7;
  dispatch_async(v8, block);

  v11 = [v9 CGColor];
  v12 = [(FMAnnotationView *)self smallRingLayer];
  [v12 setStrokeColor:v11];

  v13 = [v9 CGColor];
  v14 = [(FMAnnotationView *)self largeRingLayer];
  [v14 setStrokeColor:v13];
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

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v13 = *MEMORY[0x277D85DE8];
  v7 = LogCategory_Unspecified();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v10 = v5;
    v11 = 1024;
    v12 = v4;
    _os_log_impl(&dword_24A315000, v7, OS_LOG_TYPE_DEFAULT, "FMAnnotationView: setSelected: %d, animated: %d", buf, 0xEu);
  }

  v8.receiver = self;
  v8.super_class = FMAnnotationView;
  [(MKAnnotationView *)&v8 setSelected:v5 animated:v4];
  [(FMAnnotationView *)self _selectionWasUpdated:v4];
}

- (void)_selectionWasUpdated:(BOOL)a3
{
  v3 = a3;
  v9 = *MEMORY[0x277D85DE8];
  v5 = LogCategory_Unspecified();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109376;
    v6[1] = [(FMAnnotationView *)self isShowingLargeSelectedAnnotation];
    v7 = 1024;
    v8 = [(MKAnnotationView *)self isSelected];
    _os_log_impl(&dword_24A315000, v5, OS_LOG_TYPE_DEFAULT, "FMAnnotationView: _selectionWasUpdated isShowingLargeAnotation: %d, isSelected: %d", v6, 0xEu);
  }

  if ([(FMAnnotationView *)self isShowingLargeSelectedAnnotation]&& ![(MKAnnotationView *)self isSelected]|| ![(FMAnnotationView *)self isShowingLargeSelectedAnnotation]&& [(MKAnnotationView *)self isSelected])
  {
    [(FMAnnotationView *)self _transitionToNewSize:v3];
  }
}

- (void)_transitionToNewSize:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x277D85DE8];
  v5 = LogCategory_Unspecified();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = v3;
    _os_log_impl(&dword_24A315000, v5, OS_LOG_TYPE_DEFAULT, "FMAnnotationView: _transitionToNewSize delayed?: %d", v9, 8u);
  }

  if (![(FMAnnotationView *)self isDelayed])
  {
    [(FMAnnotationView *)self _setupSpringActions];
    [MEMORY[0x277CD9FF0] begin];
    if (!v3)
    {
      v6 = [(FMAnnotationView *)self smallCircleLayer];
      [v6 removeAllAnimations];

      v7 = [(FMAnnotationView *)self locationOuterLayer];
      [v7 removeAllAnimations];

      v8 = [(FMAnnotationView *)self largeCircleLayer];
      [v8 removeAllAnimations];

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
    v3 = [(FMAnnotationView *)self shouldPreventLargeAnnotationState];
    v4 = !v3;
    if (v3)
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

  v6 = [(FMAnnotationView *)self smallCircleLayer];
  *&v7 = v5;
  [v6 setOpacity:v7];

  v8 = [(FMAnnotationView *)self largeCircleLayer];
  v9 = v8;
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

  [v8 setOpacity:v10];

  CATransform3DMakeScale(&v39, v11, v11, 1.0);
  v13 = [(FMAnnotationView *)self smallCircleLayer];
  v38 = v39;
  [v13 setTransform:&v38];

  CATransform3DMakeScale(&v37, v12, v12, 1.0);
  v14 = [(FMAnnotationView *)self locationOuterLayer];
  v38 = v37;
  [v14 setTransform:&v38];

  v15 = [(MKAnnotationView *)self annotation];
  if ([v15 isThisDevice])
  {
    v16 = +[FMMapView hasUserLocation];

    if (v16)
    {
      v17 = [(FMAnnotationView *)self smallRingLayer];
      [v17 setOpacity:0.0];
      v18 = [(FMAnnotationView *)self locationOuterLayer];
      [v18 setOpacity:0.0];
      v19 = [(FMAnnotationView *)self smallCircleLayer];
      [v19 setOpacity:0.0];

LABEL_19:
      goto LABEL_20;
    }
  }

  else
  {
  }

  v17 = [(FMAnnotationView *)self locationOuterLayer];
  v20 = 1.0;
  LODWORD(v21) = 1.0;
  [v17 setOpacity:v21];

  v22 = FMAnnotationViewLargeRingVisible;
  if ((FMAnnotationViewLargeRingVisible & 1) == 0)
  {
    v17 = [(MKAnnotationView *)self annotation];
    v20 = [v17 isBorderEnabled];
  }

  v23 = [(FMAnnotationView *)self smallRingLayer];
  *&v24 = v20;
  [v23 setOpacity:v24];

  if ((v22 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_20:
  v25 = FMAnnotationViewLargeRingVisible;
  if (FMAnnotationViewLargeRingVisible)
  {
    v26 = 1.0;
  }

  else
  {
    v17 = [(MKAnnotationView *)self annotation];
    v26 = [v17 isBorderEnabled];
  }

  v27 = [(FMAnnotationView *)self largeRingLayer];
  *&v28 = v26;
  [v27 setOpacity:v28];

  if ((v25 & 1) == 0)
  {
  }

  v29 = FMAnnotationViewLargeRingVisible;
  if (FMAnnotationViewLargeRingVisible)
  {
    v30 = 1.0;
  }

  else
  {
    v17 = [(MKAnnotationView *)self annotation];
    v30 = [v17 isBorderEnabled];
  }

  v31 = [(FMAnnotationView *)self smallRingLayer];
  *&v32 = v30;
  [v31 setOpacity:v32];

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
  v34 = [(FMAnnotationView *)self largeCircleLayer];
  v38 = v36;
  [v34 setTransform:&v38];

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

  v16 = [MEMORY[0x277CD9FA0] animation];
  [v16 setMass:1.0];
  [v16 setVelocity:1.0];
  [v16 setStiffness:v13];
  [v16 setDamping:v15];
  v17 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
  [v16 setTimingFunction:v17];

  [v16 setDuration:0.638];
  v35[0] = v16;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  [(CALayer *)self->_largeCircleLayer setActions:v18];
}

- (void)setAnnotation:(id)a3
{
  v5.receiver = self;
  v5.super_class = FMAnnotationView;
  v4 = a3;
  [(MKAnnotationView *)&v5 setAnnotation:v4];
  [(FMAnnotationView *)self updateStyleForAnnotation:v4, v5.receiver, v5.super_class];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (![(FMAnnotationView *)self isShowingLargeSelectedAnnotation])
  {
    v20.receiver = self;
    v20.super_class = FMAnnotationView;
    v17 = [(MKAnnotationView *)&v20 hitTest:v7 withEvent:x, y];
    goto LABEL_5;
  }

  v8 = [(FMAnnotationView *)self largeCircleLayer];
  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  if (sqrt((y - (v12 + v16 * 0.5)) * (y - (v12 + v16 * 0.5)) + (x - (v10 + v14 * 0.5)) * (x - (v10 + v14 * 0.5))) < 36.0)
  {
    v17 = self;
LABEL_5:
    v18 = v17;
    goto LABEL_7;
  }

  v18 = 0;
LABEL_7:

  return v18;
}

- (void)addColorInvertFilterToLayer:(id)a3
{
  v10 = a3;
  v3 = [v10 filters];

  if (!v3 || ([v10 filters], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "indexOfObjectPassingTest:", &__block_literal_global_3), v4, v5 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v6 = [v10 filters];
    if (v6)
    {
      v7 = [v10 filters];
      v8 = [v7 mutableCopy];
    }

    else
    {
      v8 = [MEMORY[0x277CBEB18] array];
    }

    v9 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2B0]];
    [v9 setName:@"FMColorInvertFilter"];
    [v8 addObject:v9];
    [v10 setFilters:v8];
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

- (void)removeColorInvertFilterToLayer:(id)a3
{
  v8 = a3;
  v3 = [v8 filters];

  if (v3)
  {
    v4 = [v8 filters];
    v5 = [v4 indexOfObjectPassingTest:&__block_literal_global_55];

    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [v8 filters];
      v7 = [v6 mutableCopy];

      [v7 removeObjectAtIndex:v5];
      [v8 setFilters:v7];
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

- (void)invertColorStatusDidChange:(id)a3
{
  if (UIAccessibilityIsInvertColorsEnabled() && (-[MKAnnotationView annotation](self, "annotation"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isBorderEnabled], v4, (v5 & 1) == 0))
  {
    v8 = [(FMAnnotationView *)self smallPersonImageLayer];
    [(FMAnnotationView *)self addColorInvertFilterToLayer:v8];

    v7 = [(FMAnnotationView *)self largePersonImageLayer];
    [(FMAnnotationView *)self addColorInvertFilterToLayer:v7];
  }

  else
  {
    v6 = [(FMAnnotationView *)self smallPersonImageLayer];
    [(FMAnnotationView *)self removeColorInvertFilterToLayer:v6];

    v7 = [(FMAnnotationView *)self largePersonImageLayer];
    [(FMAnnotationView *)self removeColorInvertFilterToLayer:v7];
  }

  [(FMAnnotationView *)self setNeedsDisplay];
}

@end