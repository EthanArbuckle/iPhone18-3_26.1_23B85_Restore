@interface ICDocCamImageQuadEditOverlay
- (BOOL)containsPointOutsideOfOverlayBounds;
- (BOOL)isDraggingKnob;
- (BOOL)isQuadValid;
- (CGPoint)lastGestureTranslation;
- (CGRect)rectFromApplyingOrientation:(int64_t)a3 toContentsRect:(CGRect)a4;
- (ICDocCamImageQuad)adjustedQuad;
- (ICDocCamImageQuadEditOverlay)initWithCoder:(id)a3;
- (ICDocCamImageQuadEditOverlay)initWithFrame:(CGRect)a3;
- (ICDocCamImageQuadEditOverlayDelegate)delegate;
- (UIBezierPath)outlinePath;
- (id)closestKnobToPoint:(CGPoint)a3;
- (void)commonInit;
- (void)didPan:(id)a3;
- (void)layoutSubviews;
- (void)setImage:(id)a3 orientation:(int64_t)a4;
- (void)setSelectedKnob:(id)a3;
- (void)setTempOverlayMagnification:(double)a3 animationDuration:(double)a4;
- (void)setUpKnobs;
- (void)setupLoupeLayerIfNeeded;
- (void)updateKnobLocationsToRect:(id)a3;
- (void)updateOutlineAndKnobColorForCurrentValidityIfNecessary;
- (void)updateOutlineAndKnobColorForIsValid:(BOOL)a3;
- (void)updateOutlineLayer;
- (void)updateSelectedKnobContents;
@end

@implementation ICDocCamImageQuadEditOverlay

- (ICDocCamImageQuadEditOverlay)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICDocCamImageQuadEditOverlay;
  v3 = [(ICDocCamImageQuadEditOverlay *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(ICDocCamImageQuadEditOverlay *)v3 commonInit];
  }

  return v4;
}

- (ICDocCamImageQuadEditOverlay)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = ICDocCamImageQuadEditOverlay;
  v3 = [(ICDocCamImageQuadEditOverlay *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(ICDocCamImageQuadEditOverlay *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  v3 = [MEMORY[0x277D75348] whiteColor];
  validRectColor = self->_validRectColor;
  self->_validRectColor = v3;

  v5 = [MEMORY[0x277D75348] whiteColor];
  invalidRectColor = self->_invalidRectColor;
  self->_invalidRectColor = v5;

  self->_knobHeight = 20.0;
  v7 = [MEMORY[0x277D75348] whiteColor];
  knobColor = self->_knobColor;
  self->_knobColor = v7;

  [(ICDocCamImageQuadEditOverlay *)self setUpKnobs];
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = ICDocCamImageQuadEditOverlay;
  [(ICDocCamImageQuadEditOverlay *)&v16 layoutSubviews];
  v3 = [(ICDocCamImageQuadEditOverlay *)self layer];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(ICDocCamImageQuadEditOverlay *)self knobLayer];
  [v12 setFrame:{v5, v7, v9, v11}];

  v13 = [(ICDocCamImageQuadEditOverlay *)self delegate];
  v14 = [v13 quadForOverlay:self];

  [(ICDocCamImageQuadEditOverlay *)self updateKnobLocationsToRect:v14];
  [(ICDocCamImageQuadEditOverlay *)self updateOutlineLayer];
  [(ICDocCamImageQuadEditOverlay *)self updateOutlineAndKnobColorForCurrentValidityIfNecessary];
  v15 = [(ICDocCamImageQuadEditOverlay *)self delegate];
  [v15 overlayDidLayout:self];
}

- (void)setUpKnobs
{
  v3 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [(ICDocCamImageQuadEditOverlay *)self setKnobLayer:v3];

  v4 = [(ICDocCamImageQuadEditOverlay *)self layer];
  v5 = [(ICDocCamImageQuadEditOverlay *)self knobLayer];
  [v4 addSublayer:v5];

  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = 4;
  do
  {
    v8 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    [v8 setFrame:{0.0, 0.0, 20.0, 20.0}];
    [v8 frame];
    [v8 setCornerRadius:v9 * 0.5];
    v10 = [MEMORY[0x277D75348] whiteColor];
    [v8 setBorderColor:{objc_msgSend(v10, "CGColor")}];

    [v8 setBorderWidth:1.0];
    [v8 setMasksToBounds:1];
    [v23 addObject:v8];
    v11 = [(ICDocCamImageQuadEditOverlay *)self knobLayer];
    [v11 addSublayer:v8];

    v12 = [[ICDocCamImageQuadEditKnobAccessibilityElement alloc] initWithKnobLayer:v8 overlayView:self];
    [v6 addObject:v12];

    --v7;
  }

  while (v7);
  [(ICDocCamImageQuadEditOverlay *)self setKnobs:v23];
  [(ICDocCamImageQuadEditOverlay *)self setKnobAccessibilityElements:v6];
  v13 = objc_alloc_init(MEMORY[0x277CD9F90]);
  [(ICDocCamImageQuadEditOverlay *)self setOutlineLayer:v13];

  v14 = [MEMORY[0x277D75348] whiteColor];
  v15 = [v14 CGColor];
  v16 = [(ICDocCamImageQuadEditOverlay *)self outlineLayer];
  [v16 setStrokeColor:v15];

  v17 = [(ICDocCamImageQuadEditOverlay *)self outlineLayer];
  [v17 setFillColor:0];

  v18 = [(ICDocCamImageQuadEditOverlay *)self outlineLayer];
  [v18 setLineWidth:1.0];

  v19 = [(ICDocCamImageQuadEditOverlay *)self layer];
  v20 = [(ICDocCamImageQuadEditOverlay *)self outlineLayer];
  [v19 addSublayer:v20];

  v21 = [[ICDocCamImageQuadEditPanGestureRecognizer alloc] initWithTarget:self action:sel_didPan_];
  [(ICDocCamImageQuadEditPanGestureRecognizer *)v21 setDelaysTouchesBegan:0];
  [(ICDocCamImageQuadEditPanGestureRecognizer *)v21 setMaximumNumberOfTouches:1];
  [(ICDocCamImageQuadEditOverlay *)self addGestureRecognizer:v21];
  [(ICDocCamImageQuadEditOverlay *)self setPanGR:v21];
  v22 = [(ICDocCamImageQuadEditOverlay *)self panGR];
  [v22 setQuadEditorDelegate:self];

  [(ICDocCamImageQuadEditOverlay *)self updateOutlineAndKnobColorForIsValid:[(ICDocCamImageQuadEditOverlay *)self isDisplayingValidQuad]];
}

- (void)updateOutlineAndKnobColorForCurrentValidityIfNecessary
{
  v3 = [(ICDocCamImageQuadEditOverlay *)self isDisplayingValidQuad];
  if ([(ICDocCamImageQuadEditOverlay *)self isTempOverlay])
  {
    v4 = [(ICDocCamImageQuadEditOverlay *)self tempOverlayQuadIsValid];
  }

  else
  {
    v4 = [(ICDocCamImageQuadEditOverlay *)self isQuadValid];
  }

  if (v3 != v4)
  {

    [(ICDocCamImageQuadEditOverlay *)self updateOutlineAndKnobColorForIsValid:v4];
  }
}

- (void)updateOutlineAndKnobColorForIsValid:(BOOL)a3
{
  v18 = *MEMORY[0x277D85DE8];
  [(ICDocCamImageQuadEditOverlay *)self setIsDisplayingValidQuad:?];
  if (a3)
  {
    [(ICDocCamImageQuadEditOverlay *)self validRectColor];
  }

  else
  {
    [(ICDocCamImageQuadEditOverlay *)self invalidRectColor];
  }
  v5 = ;
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(ICDocCamImageQuadEditOverlay *)self knobs];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v13 + 1) + 8 * i) setBorderColor:{objc_msgSend(v5, "CGColor")}];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = [v5 CGColor];
  v12 = [(ICDocCamImageQuadEditOverlay *)self outlineLayer];
  [v12 setStrokeColor:v11];

  [MEMORY[0x277CD9FF0] commit];
}

- (void)setTempOverlayMagnification:(double)a3 animationDuration:(double)a4
{
  v6 = self;
  v38 = *MEMORY[0x277D85DE8];
  self->_tempOverlayMagnification = a3;
  if (![(ICDocCamImageQuadEditOverlay *)self isTempOverlay])
  {
    v7 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ICDocCamImageQuadEditOverlay setTempOverlayMagnification:v7 animationDuration:?];
    }
  }

  if ([(ICDocCamImageQuadEditOverlay *)v6 isTempOverlay])
  {
    if (a4 <= 0.0)
    {
      [MEMORY[0x277CD9FF0] begin];
      [MEMORY[0x277CD9FF0] setDisableActions:1];
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v8 = [(ICDocCamImageQuadEditOverlay *)v6 knobs];
    v9 = [v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v29 = v6;
      v11 = *v34;
      v12 = *MEMORY[0x277CDA230];
      v13 = 1.0 / a3;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v34 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v33 + 1) + 8 * i);
          memset(&v32, 0, sizeof(v32));
          if (v15)
          {
            [v15 transform];
          }

          memset(&v31, 0, sizeof(v31));
          CATransform3DMakeScale(&v31, v13, v13, 1.0);
          v30 = v31;
          [v15 setTransform:&v30];
          if (a4 > 0.0)
          {
            v16 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform"];
            [v16 setDuration:a4];
            v30 = v32;
            v17 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v30];
            [v16 setFromValue:v17];

            v30 = v31;
            v18 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v30];
            [v16 setToValue:v18];

            [v16 setFillMode:v12];
            [v15 addAnimation:v16 forKey:0];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v10);
      v6 = v29;
    }

    else
    {
      v13 = 1.0 / a3;
    }

    v19 = [(ICDocCamImageQuadEditOverlay *)v6 outlineLayer];
    [v19 lineWidth];
    v21 = v20;

    if (a4 <= 0.0)
    {
      v28 = [(ICDocCamImageQuadEditOverlay *)v6 outlineLayer];
      [v28 setLineWidth:v13];

      [MEMORY[0x277CD9FF0] commit];
    }

    else
    {
      v22 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"lineWidth"];
      [v22 setDuration:a4];
      v23 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
      [v22 setToValue:v23];

      v24 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
      [v22 setFromValue:v24];

      v25 = [(ICDocCamImageQuadEditOverlay *)v6 outlineLayer];
      [v25 removeAllAnimations];

      v26 = [(ICDocCamImageQuadEditOverlay *)v6 outlineLayer];
      [v26 addAnimation:v22 forKey:0];

      v27 = [(ICDocCamImageQuadEditOverlay *)v6 outlineLayer];
      [v27 setLineWidth:v13];
    }
  }
}

- (void)setImage:(id)a3 orientation:(int64_t)a4
{
  v7 = a3;
  if (*&self->_image != __PAIR128__(a4, v7))
  {
    v8 = v7;
    objc_storeStrong(&self->_image, a3);
    self->_orientation = a4;
    [(ICDocCamImageQuadEditOverlay *)self setupLoupeLayerIfNeeded];
    v7 = v8;
  }
}

- (void)setupLoupeLayerIfNeeded
{
  v3 = [(ICDocCamImageQuadEditOverlay *)self loupeLayer];
  if (!v3)
  {
    v4 = [(ICDocCamImageQuadEditOverlay *)self image];

    if (!v4)
    {
      return;
    }

    v5 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    [(ICDocCamImageQuadEditOverlay *)self setLoupeLayer:v5];

    v6 = [(ICDocCamImageQuadEditOverlay *)self loupeLayer];
    [v6 setFrame:{0.0, 0.0, 20.0, 20.0}];

    v7 = [MEMORY[0x277D75348] blackColor];
    v8 = [v7 CGColor];
    v9 = [(ICDocCamImageQuadEditOverlay *)self loupeLayer];
    [v9 setBackgroundColor:v8];

    v10 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    [(ICDocCamImageQuadEditOverlay *)self setLoupeContentsLayer:v10];

    v11 = [(ICDocCamImageQuadEditOverlay *)self image];
    v12 = [v11 CGImage];
    v13 = [(ICDocCamImageQuadEditOverlay *)self loupeContentsLayer];
    [v13 setContents:v12];

    v14 = [(ICDocCamImageQuadEditOverlay *)self loupeLayer];
    [v14 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = [(ICDocCamImageQuadEditOverlay *)self loupeContentsLayer];
    [v23 setFrame:{v16, v18, v20, v22}];

    v24 = [(ICDocCamImageQuadEditOverlay *)self loupeContentsLayer];
    [v24 setMasksToBounds:1];

    v26 = [(ICDocCamImageQuadEditOverlay *)self loupeLayer];
    v25 = [(ICDocCamImageQuadEditOverlay *)self loupeContentsLayer];
    [v26 addSublayer:v25];

    v3 = v26;
  }
}

- (BOOL)containsPointOutsideOfOverlayBounds
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [(ICDocCamImageQuadEditOverlay *)self knobs];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v18 + 1) + 8 * i) position];
        v9 = v8;
        v11 = v10;
        [(ICDocCamImageQuadEditOverlay *)self bounds];
        if (!DCTSDPointInRectInclusive(v9, v11, v12, v13, v14, v15))
        {
          v16 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_11:

  return v16;
}

- (BOOL)isQuadValid
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(ICDocCamImageQuadEditOverlay *)self delegate];
  [v3 imageFrameInOverlayCoordinates];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = [(ICDocCamImageQuadEditOverlay *)self knobs];
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = 0;
    v15 = *v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v23 + 1) + 8 * i) position];
        v14 += DCTSDPointInRectInclusive(v17, v18, v5, v7, v9, v11);
      }

      v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
    LODWORD(v13) = v14 == 4;
  }

  v19 = [(ICDocCamImageQuadEditOverlay *)self adjustedQuad];
  v20 = v19;
  if (v13 && [v19 isConvex])
  {
    v21 = [v20 containsAngleOutOfValidThreshold] ^ 1;
  }

  else
  {
    LOBYTE(v21) = 0;
  }

  return v21;
}

- (BOOL)isDraggingKnob
{
  v2 = [(ICDocCamImageQuadEditOverlay *)self panGR];
  v3 = [v2 state];

  return ((v3 - 1) & 0xFFFFFFFFFFFFFFFDLL) == 0;
}

- (ICDocCamImageQuad)adjustedQuad
{
  v3 = objc_alloc_init(ICDocCamImageQuad);
  v4 = [(ICDocCamImageQuadEditOverlay *)self knobs];
  v5 = [v4 objectAtIndexedSubscript:0];
  [v5 position];
  [(ICDocCamImageQuad *)v3 setTopLeft:?];

  v6 = [(ICDocCamImageQuadEditOverlay *)self knobs];
  v7 = [v6 objectAtIndexedSubscript:1];
  [v7 position];
  [(ICDocCamImageQuad *)v3 setTopRight:?];

  v8 = [(ICDocCamImageQuadEditOverlay *)self knobs];
  v9 = [v8 objectAtIndexedSubscript:2];
  [v9 position];
  [(ICDocCamImageQuad *)v3 setBottomRight:?];

  v10 = [(ICDocCamImageQuadEditOverlay *)self knobs];
  v11 = [v10 objectAtIndexedSubscript:3];
  [v11 position];
  [(ICDocCamImageQuad *)v3 setBottomLeft:?];

  return v3;
}

- (void)updateKnobLocationsToRect:(id)a3
{
  v4 = a3;
  [v4 topLeft];
  v6 = v5;
  v8 = v7;
  v9 = [(ICDocCamImageQuadEditOverlay *)self knobs];
  v10 = [v9 objectAtIndexedSubscript:0];
  [v10 setPosition:{v6, v8}];

  [v4 topRight];
  v12 = v11;
  v14 = v13;
  v15 = [(ICDocCamImageQuadEditOverlay *)self knobs];
  v16 = [v15 objectAtIndexedSubscript:1];
  [v16 setPosition:{v12, v14}];

  [v4 bottomRight];
  v18 = v17;
  v20 = v19;
  v21 = [(ICDocCamImageQuadEditOverlay *)self knobs];
  v22 = [v21 objectAtIndexedSubscript:2];
  [v22 setPosition:{v18, v20}];

  [v4 bottomLeft];
  v24 = v23;
  v26 = v25;

  v28 = [(ICDocCamImageQuadEditOverlay *)self knobs];
  v27 = [v28 objectAtIndexedSubscript:3];
  [v27 setPosition:{v24, v26}];
}

- (void)didPan:(id)a3
{
  v71 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 locationInView:self];
  v6 = v5;
  v8 = v7;
  v9 = [v4 state];
  if (v9 == 1)
  {
    v10 = [(ICDocCamImageQuadEditOverlay *)self closestKnobToPoint:v6, v8];
    [(ICDocCamImageQuadEditOverlay *)self setSelectedKnob:v10];

    [(ICDocCamImageQuadEditOverlay *)self updateSelectedKnobContents];
    v11 = *MEMORY[0x277CBF348];
    v12 = *(MEMORY[0x277CBF348] + 8);
    [v4 setTranslation:self inView:{*MEMORY[0x277CBF348], v12}];
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
    [(ICDocCamImageQuadEditOverlay *)self setPanHistory:v13];

    [(ICDocCamImageQuadEditOverlay *)self setPanHistoryIdx:0];
  }

  else
  {
    v11 = *MEMORY[0x277CBF348];
    v12 = *(MEMORY[0x277CBF348] + 8);
  }

  v14 = v12;
  v15 = v11;
  [(ICDocCamImageQuadEditOverlay *)self lastGestureTranslation];
  v17 = v16;
  v19 = v18;
  [v4 translationInView:self];
  v21 = v20;
  v23 = v22;
  [v4 setTranslation:self inView:{v11, v12}];
  [(ICDocCamImageQuadEditOverlay *)self setLastGestureTranslation:v21, v23];
  if (v9 == 3)
  {
    v62 = v19;
    v24 = CACurrentMediaTime();
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v25 = [(ICDocCamImageQuadEditOverlay *)self panHistory];
    v26 = [v25 countByEnumeratingWithState:&v66 objects:v70 count:16];
    v27 = v12;
    v28 = v11;
    if (v26)
    {
      v29 = v26;
      v30 = *v67;
      v27 = v12;
      v28 = v11;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v67 != v30)
          {
            objc_enumerationMutation(v25);
          }

          v32 = *(*(&v66 + 1) + 8 * i);
          v63 = 0.0;
          v64 = 0.0;
          v65 = 0.0;
          [v32 getValue:{&v63, *&v62}];
          if (v24 - v63 <= 0.1)
          {
            v28 = DCTSDSubtractPoints(v28, v27, v64);
            v27 = v33;
          }
        }

        v29 = [v25 countByEnumeratingWithState:&v66 objects:v70 count:16];
      }

      while (v29);
      v11 = v28;
      v12 = v27;
    }

    v34 = DCTSDPointLength(v11, v12);
    if (v34 <= 20.0)
    {
      v23 = v27;
    }

    else
    {
      v23 = v14;
    }

    if (v34 <= 20.0)
    {
      v21 = v28;
    }

    else
    {
      v21 = v15;
    }

    v19 = v62;
  }

  else
  {
    v64 = v21;
    v65 = v23;
    v63 = CACurrentMediaTime();
    v35 = [MEMORY[0x277CCAE60] valueWithBytes:&v63 objCType:"{?=d{CGPoint=dd}}"];
    v36 = [(ICDocCamImageQuadEditOverlay *)self panHistory];
    [v36 setObject:v35 atIndexedSubscript:{-[ICDocCamImageQuadEditOverlay panHistoryIdx](self, "panHistoryIdx")}];

    [(ICDocCamImageQuadEditOverlay *)self setPanHistoryIdx:([(ICDocCamImageQuadEditOverlay *)self panHistoryIdx]+ 1) % 0xA];
  }

  v37 = v15 != v17;
  if (v14 != v19)
  {
    v37 = 1;
  }

  if (v9 != 2)
  {
    v37 = 0;
  }

  if (v9 == 3 || v37)
  {
    v38 = [(ICDocCamImageQuadEditOverlay *)self selectedKnob];
    [v38 position];
    v40 = v39;
    v42 = v41;

    v43 = [(ICDocCamImageQuadEditOverlay *)self selectedKnob];
    [v43 position];
    v45 = DCTSDAddPoints(v21, v23, v44);
    v47 = v46;

    v48 = [(ICDocCamImageQuadEditOverlay *)self knobLayer];
    [v48 bounds];
    v53 = DCTSDClampPointInRect(v45, v47, v49, v50, v51, v52);
    v55 = v54;

    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v56 = [(ICDocCamImageQuadEditOverlay *)self selectedKnob];
    [v56 setPosition:{v53, v55}];

    v57 = [(ICDocCamImageQuadEditOverlay *)self adjustedQuad];
    v58 = [(ICDocCamImageQuadEditOverlay *)self delegate];
    [v58 imageFrameInOverlayCoordinates];
    [v57 setBoundingBox:?];

    if (([v57 isValid] & 1) == 0)
    {
      v59 = [(ICDocCamImageQuadEditOverlay *)self selectedKnob];
      [v59 setPosition:{v40, v42}];
    }

    [(ICDocCamImageQuadEditOverlay *)self updateOutlineLayer];
    [MEMORY[0x277CD9FF0] commit];
    [(ICDocCamImageQuadEditOverlay *)self updateSelectedKnobContents];

    if (v9 == 3)
    {
      [(ICDocCamImageQuadEditOverlay *)self setSelectedKnob:0];
      UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
    }
  }

  v60 = [(ICDocCamImageQuadEditOverlay *)self delegate];
  v61 = [(ICDocCamImageQuadEditOverlay *)self selectedKnob];
  [v61 frame];
  [v60 selectedKnobDidPanToRect:?];

  [(ICDocCamImageQuadEditOverlay *)self updateOutlineAndKnobColorForCurrentValidityIfNecessary];
}

- (id)closestKnobToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v26 = *MEMORY[0x277D85DE8];
  v6 = [(ICDocCamImageQuadEditOverlay *)self knobs];
  v7 = [v6 firstObject];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [(ICDocCamImageQuadEditOverlay *)self knobs];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    v12 = INFINITY;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        [v14 position];
        v17 = DCTSDDistance(v15, v16, x, y);
        if (v17 < v12)
        {
          v18 = v17;
          v19 = v14;

          v7 = v19;
          v12 = v18;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)setSelectedKnob:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_selectedKnob != v5)
  {
    objc_storeStrong(&self->_selectedKnob, a3);
    if (self->_selectedKnob)
    {
      v6 = [(ICDocCamImageQuadEditOverlay *)self loupeLayer];
      v7 = [v6 superlayer];
      selectedKnob = self->_selectedKnob;

      if (v7 != selectedKnob)
      {
        [MEMORY[0x277CD9FF0] begin];
        [MEMORY[0x277CD9FF0] setDisableActions:1];
        v9 = self->_selectedKnob;
        v10 = *(MEMORY[0x277CD9DE8] + 80);
        *&v39.m31 = *(MEMORY[0x277CD9DE8] + 64);
        *&v39.m33 = v10;
        v11 = *(MEMORY[0x277CD9DE8] + 112);
        *&v39.m41 = *(MEMORY[0x277CD9DE8] + 96);
        *&v39.m43 = v11;
        v12 = *(MEMORY[0x277CD9DE8] + 16);
        *&v39.m11 = *MEMORY[0x277CD9DE8];
        *&v39.m13 = v12;
        v13 = *(MEMORY[0x277CD9DE8] + 48);
        *&v39.m21 = *(MEMORY[0x277CD9DE8] + 32);
        *&v39.m23 = v13;
        [(CALayer *)v9 setSublayerTransform:&v39];
        v14 = [(ICDocCamImageQuadEditOverlay *)self loupeLayer];
        [v14 setHidden:0];

        v15 = [(ICDocCamImageQuadEditOverlay *)self loupeLayer];
        [v15 setOpacity:0.0];

        v16 = self->_selectedKnob;
        v17 = [(ICDocCamImageQuadEditOverlay *)self loupeLayer];
        [(CALayer *)v16 addSublayer:v17];

        [MEMORY[0x277CD9FF0] commit];
      }
    }

    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setAnimationDuration:0.15];
    v18 = MEMORY[0x277CD9FF0];
    v19 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
    [v18 setAnimationTimingFunction:v19];

    v20 = [(ICDocCamImageQuadEditOverlay *)self loupeLayer];
    LODWORD(v21) = 1.0;
    [v20 setOpacity:v21];

    if (!self->_selectedKnob)
    {
      v22 = [(ICDocCamImageQuadEditOverlay *)self loupeLayer];
      v23 = [v22 superlayer];

      if (v23)
      {
        v24 = [(ICDocCamImageQuadEditOverlay *)self loupeLayer];
        [v24 setOpacity:0.0];

        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __48__ICDocCamImageQuadEditOverlay_setSelectedKnob___block_invoke;
        v38[3] = &unk_278F92C70;
        v38[4] = self;
        [MEMORY[0x277CD9FF0] setCompletionBlock:v38];
      }
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v25 = [(ICDocCamImageQuadEditOverlay *)self knobs];
    v26 = [v25 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v35;
      do
      {
        v29 = 0;
        do
        {
          if (*v35 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v34 + 1) + 8 * v29);
          if (v30 == v5)
          {
            v31 = 4.0;
          }

          else
          {
            v31 = 1.0;
          }

          CATransform3DMakeScale(&v33, v31, v31, 1.0);
          v39 = v33;
          [(CALayer *)v30 setTransform:&v39];
          [(CALayer *)v30 setBorderWidth:1.0 / v31];
          ++v29;
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v27);
    }

    [MEMORY[0x277CD9FF0] commit];
    v32 = [(ICDocCamImageQuadEditOverlay *)self delegate];
    [v32 selectedKnobDidChange:self->_selectedKnob];
  }
}

void __48__ICDocCamImageQuadEditOverlay_setSelectedKnob___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[62])
  {
    v3 = [v2 loupeLayer];
    v4 = [v3 superlayer];

    if (v4)
    {
      [MEMORY[0x277CD9FF0] begin];
      [MEMORY[0x277CD9FF0] setDisableActions:1];
      v5 = [*(a1 + 32) loupeLayer];
      [v5 setHidden:1];

      v6 = [*(a1 + 32) loupeLayer];
      [v6 removeFromSuperlayer];

      v7 = MEMORY[0x277CD9FF0];

      [v7 commit];
    }
  }
}

- (void)updateSelectedKnobContents
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [(ICDocCamImageQuadEditOverlay *)self setupLoupeLayerIfNeeded];
  v3 = [(ICDocCamImageQuadEditOverlay *)self loupeContentsLayer];
  [v3 bounds];
  v49 = v4;
  v51 = v5;

  [(CALayer *)self->_selectedKnob position];
  v7 = v6 + -10.0;
  [(CALayer *)self->_selectedKnob position];
  v9 = v8 + -10.0;
  v10 = [(ICDocCamImageQuadEditOverlay *)self delegate];
  [v10 unitImageRectForOverlayRect:{v7, v9, 20.0, 20.0}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v57.origin.x = v12;
  v57.origin.y = v14;
  v57.size.width = v16;
  v57.size.height = v18;
  MinX = CGRectGetMinX(v57);
  v58.origin.x = v12;
  v58.origin.y = v14;
  v58.size.width = v16;
  v58.size.height = v18;
  MinY = CGRectGetMinY(v58);
  v59.origin.x = v12;
  v59.origin.y = v14;
  v59.size.width = v16;
  v59.size.height = v18;
  MaxX = CGRectGetMaxX(v59);
  v60.origin.x = v12;
  v60.origin.y = v14;
  v60.size.width = v16;
  v60.size.height = v18;
  MaxY = CGRectGetMaxY(v60);
  v21 = [(ICDocCamImageQuadEditOverlay *)self loupeLayer];
  [v21 bounds];
  v23 = v22;
  v25 = v24;
  v52 = v27;
  v53 = v26;

  v28 = v12 - (MaxX + -1.0);
  v29 = v23 - v49 * ((MaxX + -1.0) / v16);
  if (MaxX <= 1.0)
  {
    v28 = v12;
    v29 = v23;
  }

  if (MinX < 0.0)
  {
    v30 = v12 + 0.0 - MinX;
  }

  else
  {
    v30 = v28;
  }

  if (MinX < 0.0)
  {
    v29 = v49 * ((0.0 - MinX) / v16) + v23;
  }

  v50 = v29;
  v31 = v14 - (MaxY + -1.0);
  v32 = v25 - v51 * ((MaxY + -1.0) / v18);
  if (MaxY <= 1.0)
  {
    v31 = v14;
    v32 = v25;
  }

  if (MinY < 0.0)
  {
    v33 = v14 + 0.0 - MinY;
  }

  else
  {
    v33 = v31;
  }

  if (MinY < 0.0)
  {
    v34 = v51 * ((0.0 - MinY) / v18) + v25;
  }

  else
  {
    v34 = v32;
  }

  matched = dc_clockwiseRotationsFromUpToMatchOrientation([(ICDocCamImageQuadEditOverlay *)self orientation]);
  memset(&v56, 0, sizeof(v56));
  CGAffineTransformMakeRotation(&v56, matched * 1.57079633);
  v55 = v56;
  v36 = [(ICDocCamImageQuadEditOverlay *)self loupeContentsLayer];
  v54 = v55;
  [v36 setAffineTransform:&v54];

  [(ICDocCamImageQuadEditOverlay *)self rectFromApplyingOrientation:[(ICDocCamImageQuadEditOverlay *)self orientation] toContentsRect:v30, v33, v16, v18];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = [(ICDocCamImageQuadEditOverlay *)self loupeContentsLayer];
  [v45 setContentsRect:{v38, v40, v42, v44}];

  v46 = [(ICDocCamImageQuadEditOverlay *)self loupeContentsLayer];
  [v46 setFrame:{v50, v34, v53, v52}];

  [MEMORY[0x277CD9FF0] commit];
}

- (void)updateOutlineLayer
{
  v6 = [(ICDocCamImageQuadEditOverlay *)self outlinePath];
  v3 = v6;
  v4 = [v6 CGPath];
  v5 = [(ICDocCamImageQuadEditOverlay *)self outlineLayer];
  [v5 setPath:v4];
}

- (UIBezierPath)outlinePath
{
  v3 = objc_alloc_init(MEMORY[0x277D75208]);
  v4 = [(ICDocCamImageQuadEditOverlay *)self knobs];
  v5 = [v4 objectAtIndexedSubscript:0];
  [v5 position];
  [v3 moveToPoint:?];

  v6 = [(ICDocCamImageQuadEditOverlay *)self knobs];
  v7 = [v6 objectAtIndexedSubscript:1];
  [v7 position];
  [v3 addLineToPoint:?];

  v8 = [(ICDocCamImageQuadEditOverlay *)self knobs];
  v9 = [v8 objectAtIndexedSubscript:2];
  [v9 position];
  [v3 addLineToPoint:?];

  v10 = [(ICDocCamImageQuadEditOverlay *)self knobs];
  v11 = [v10 objectAtIndexedSubscript:3];
  [v11 position];
  [v3 addLineToPoint:?];

  v12 = [(ICDocCamImageQuadEditOverlay *)self knobs];
  v13 = [v12 objectAtIndexedSubscript:0];
  [v13 position];
  [v3 addLineToPoint:?];

  return v3;
}

- (CGRect)rectFromApplyingOrientation:(int64_t)a3 toContentsRect:(CGRect)a4
{
  v5 = [ICDocCamImageQuad quadFromCGRect:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  [v5 applyOrientation:a3 boundingBox:{0.0, 0.0, 1.0, 1.0}];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (ICDocCamImageQuadEditOverlayDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)lastGestureTranslation
{
  x = self->_lastGestureTranslation.x;
  y = self->_lastGestureTranslation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end