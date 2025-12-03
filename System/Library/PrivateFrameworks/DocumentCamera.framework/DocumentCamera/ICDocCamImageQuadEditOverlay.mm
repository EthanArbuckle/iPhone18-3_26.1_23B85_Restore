@interface ICDocCamImageQuadEditOverlay
- (BOOL)containsPointOutsideOfOverlayBounds;
- (BOOL)isDraggingKnob;
- (BOOL)isQuadValid;
- (CGPoint)lastGestureTranslation;
- (CGRect)rectFromApplyingOrientation:(int64_t)orientation toContentsRect:(CGRect)rect;
- (ICDocCamImageQuad)adjustedQuad;
- (ICDocCamImageQuadEditOverlay)initWithCoder:(id)coder;
- (ICDocCamImageQuadEditOverlay)initWithFrame:(CGRect)frame;
- (ICDocCamImageQuadEditOverlayDelegate)delegate;
- (UIBezierPath)outlinePath;
- (id)closestKnobToPoint:(CGPoint)point;
- (void)commonInit;
- (void)didPan:(id)pan;
- (void)layoutSubviews;
- (void)setImage:(id)image orientation:(int64_t)orientation;
- (void)setSelectedKnob:(id)knob;
- (void)setTempOverlayMagnification:(double)magnification animationDuration:(double)duration;
- (void)setUpKnobs;
- (void)setupLoupeLayerIfNeeded;
- (void)updateKnobLocationsToRect:(id)rect;
- (void)updateOutlineAndKnobColorForCurrentValidityIfNecessary;
- (void)updateOutlineAndKnobColorForIsValid:(BOOL)valid;
- (void)updateOutlineLayer;
- (void)updateSelectedKnobContents;
@end

@implementation ICDocCamImageQuadEditOverlay

- (ICDocCamImageQuadEditOverlay)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ICDocCamImageQuadEditOverlay;
  v3 = [(ICDocCamImageQuadEditOverlay *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(ICDocCamImageQuadEditOverlay *)v3 commonInit];
  }

  return v4;
}

- (ICDocCamImageQuadEditOverlay)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ICDocCamImageQuadEditOverlay;
  v3 = [(ICDocCamImageQuadEditOverlay *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ICDocCamImageQuadEditOverlay *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  validRectColor = self->_validRectColor;
  self->_validRectColor = whiteColor;

  whiteColor2 = [MEMORY[0x277D75348] whiteColor];
  invalidRectColor = self->_invalidRectColor;
  self->_invalidRectColor = whiteColor2;

  self->_knobHeight = 20.0;
  whiteColor3 = [MEMORY[0x277D75348] whiteColor];
  knobColor = self->_knobColor;
  self->_knobColor = whiteColor3;

  [(ICDocCamImageQuadEditOverlay *)self setUpKnobs];
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = ICDocCamImageQuadEditOverlay;
  [(ICDocCamImageQuadEditOverlay *)&v16 layoutSubviews];
  layer = [(ICDocCamImageQuadEditOverlay *)self layer];
  [layer bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  knobLayer = [(ICDocCamImageQuadEditOverlay *)self knobLayer];
  [knobLayer setFrame:{v5, v7, v9, v11}];

  delegate = [(ICDocCamImageQuadEditOverlay *)self delegate];
  v14 = [delegate quadForOverlay:self];

  [(ICDocCamImageQuadEditOverlay *)self updateKnobLocationsToRect:v14];
  [(ICDocCamImageQuadEditOverlay *)self updateOutlineLayer];
  [(ICDocCamImageQuadEditOverlay *)self updateOutlineAndKnobColorForCurrentValidityIfNecessary];
  delegate2 = [(ICDocCamImageQuadEditOverlay *)self delegate];
  [delegate2 overlayDidLayout:self];
}

- (void)setUpKnobs
{
  v3 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [(ICDocCamImageQuadEditOverlay *)self setKnobLayer:v3];

  layer = [(ICDocCamImageQuadEditOverlay *)self layer];
  knobLayer = [(ICDocCamImageQuadEditOverlay *)self knobLayer];
  [layer addSublayer:knobLayer];

  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  array = [MEMORY[0x277CBEB18] array];
  v7 = 4;
  do
  {
    v8 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    [v8 setFrame:{0.0, 0.0, 20.0, 20.0}];
    [v8 frame];
    [v8 setCornerRadius:v9 * 0.5];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [v8 setBorderColor:{objc_msgSend(whiteColor, "CGColor")}];

    [v8 setBorderWidth:1.0];
    [v8 setMasksToBounds:1];
    [v23 addObject:v8];
    knobLayer2 = [(ICDocCamImageQuadEditOverlay *)self knobLayer];
    [knobLayer2 addSublayer:v8];

    v12 = [[ICDocCamImageQuadEditKnobAccessibilityElement alloc] initWithKnobLayer:v8 overlayView:self];
    [array addObject:v12];

    --v7;
  }

  while (v7);
  [(ICDocCamImageQuadEditOverlay *)self setKnobs:v23];
  [(ICDocCamImageQuadEditOverlay *)self setKnobAccessibilityElements:array];
  v13 = objc_alloc_init(MEMORY[0x277CD9F90]);
  [(ICDocCamImageQuadEditOverlay *)self setOutlineLayer:v13];

  whiteColor2 = [MEMORY[0x277D75348] whiteColor];
  cGColor = [whiteColor2 CGColor];
  outlineLayer = [(ICDocCamImageQuadEditOverlay *)self outlineLayer];
  [outlineLayer setStrokeColor:cGColor];

  outlineLayer2 = [(ICDocCamImageQuadEditOverlay *)self outlineLayer];
  [outlineLayer2 setFillColor:0];

  outlineLayer3 = [(ICDocCamImageQuadEditOverlay *)self outlineLayer];
  [outlineLayer3 setLineWidth:1.0];

  layer2 = [(ICDocCamImageQuadEditOverlay *)self layer];
  outlineLayer4 = [(ICDocCamImageQuadEditOverlay *)self outlineLayer];
  [layer2 addSublayer:outlineLayer4];

  v21 = [[ICDocCamImageQuadEditPanGestureRecognizer alloc] initWithTarget:self action:sel_didPan_];
  [(ICDocCamImageQuadEditPanGestureRecognizer *)v21 setDelaysTouchesBegan:0];
  [(ICDocCamImageQuadEditPanGestureRecognizer *)v21 setMaximumNumberOfTouches:1];
  [(ICDocCamImageQuadEditOverlay *)self addGestureRecognizer:v21];
  [(ICDocCamImageQuadEditOverlay *)self setPanGR:v21];
  panGR = [(ICDocCamImageQuadEditOverlay *)self panGR];
  [panGR setQuadEditorDelegate:self];

  [(ICDocCamImageQuadEditOverlay *)self updateOutlineAndKnobColorForIsValid:[(ICDocCamImageQuadEditOverlay *)self isDisplayingValidQuad]];
}

- (void)updateOutlineAndKnobColorForCurrentValidityIfNecessary
{
  isDisplayingValidQuad = [(ICDocCamImageQuadEditOverlay *)self isDisplayingValidQuad];
  if ([(ICDocCamImageQuadEditOverlay *)self isTempOverlay])
  {
    tempOverlayQuadIsValid = [(ICDocCamImageQuadEditOverlay *)self tempOverlayQuadIsValid];
  }

  else
  {
    tempOverlayQuadIsValid = [(ICDocCamImageQuadEditOverlay *)self isQuadValid];
  }

  if (isDisplayingValidQuad != tempOverlayQuadIsValid)
  {

    [(ICDocCamImageQuadEditOverlay *)self updateOutlineAndKnobColorForIsValid:tempOverlayQuadIsValid];
  }
}

- (void)updateOutlineAndKnobColorForIsValid:(BOOL)valid
{
  v18 = *MEMORY[0x277D85DE8];
  [(ICDocCamImageQuadEditOverlay *)self setIsDisplayingValidQuad:?];
  if (valid)
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
  knobs = [(ICDocCamImageQuadEditOverlay *)self knobs];
  v7 = [knobs countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(knobs);
        }

        [*(*(&v13 + 1) + 8 * i) setBorderColor:{objc_msgSend(v5, "CGColor")}];
      }

      v8 = [knobs countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  cGColor = [v5 CGColor];
  outlineLayer = [(ICDocCamImageQuadEditOverlay *)self outlineLayer];
  [outlineLayer setStrokeColor:cGColor];

  [MEMORY[0x277CD9FF0] commit];
}

- (void)setTempOverlayMagnification:(double)magnification animationDuration:(double)duration
{
  selfCopy = self;
  v38 = *MEMORY[0x277D85DE8];
  self->_tempOverlayMagnification = magnification;
  if (![(ICDocCamImageQuadEditOverlay *)self isTempOverlay])
  {
    v7 = os_log_create("com.apple.documentcamera", "");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ICDocCamImageQuadEditOverlay setTempOverlayMagnification:v7 animationDuration:?];
    }
  }

  if ([(ICDocCamImageQuadEditOverlay *)selfCopy isTempOverlay])
  {
    if (duration <= 0.0)
    {
      [MEMORY[0x277CD9FF0] begin];
      [MEMORY[0x277CD9FF0] setDisableActions:1];
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    knobs = [(ICDocCamImageQuadEditOverlay *)selfCopy knobs];
    v9 = [knobs countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v29 = selfCopy;
      v11 = *v34;
      v12 = *MEMORY[0x277CDA230];
      v13 = 1.0 / magnification;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v34 != v11)
          {
            objc_enumerationMutation(knobs);
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
          if (duration > 0.0)
          {
            v16 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform"];
            [v16 setDuration:duration];
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

        v10 = [knobs countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v10);
      selfCopy = v29;
    }

    else
    {
      v13 = 1.0 / magnification;
    }

    outlineLayer = [(ICDocCamImageQuadEditOverlay *)selfCopy outlineLayer];
    [outlineLayer lineWidth];
    v21 = v20;

    if (duration <= 0.0)
    {
      outlineLayer2 = [(ICDocCamImageQuadEditOverlay *)selfCopy outlineLayer];
      [outlineLayer2 setLineWidth:v13];

      [MEMORY[0x277CD9FF0] commit];
    }

    else
    {
      v22 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"lineWidth"];
      [v22 setDuration:duration];
      v23 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
      [v22 setToValue:v23];

      v24 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
      [v22 setFromValue:v24];

      outlineLayer3 = [(ICDocCamImageQuadEditOverlay *)selfCopy outlineLayer];
      [outlineLayer3 removeAllAnimations];

      outlineLayer4 = [(ICDocCamImageQuadEditOverlay *)selfCopy outlineLayer];
      [outlineLayer4 addAnimation:v22 forKey:0];

      outlineLayer5 = [(ICDocCamImageQuadEditOverlay *)selfCopy outlineLayer];
      [outlineLayer5 setLineWidth:v13];
    }
  }
}

- (void)setImage:(id)image orientation:(int64_t)orientation
{
  imageCopy = image;
  if (*&self->_image != __PAIR128__(orientation, imageCopy))
  {
    v8 = imageCopy;
    objc_storeStrong(&self->_image, image);
    self->_orientation = orientation;
    [(ICDocCamImageQuadEditOverlay *)self setupLoupeLayerIfNeeded];
    imageCopy = v8;
  }
}

- (void)setupLoupeLayerIfNeeded
{
  loupeLayer = [(ICDocCamImageQuadEditOverlay *)self loupeLayer];
  if (!loupeLayer)
  {
    image = [(ICDocCamImageQuadEditOverlay *)self image];

    if (!image)
    {
      return;
    }

    v5 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    [(ICDocCamImageQuadEditOverlay *)self setLoupeLayer:v5];

    loupeLayer2 = [(ICDocCamImageQuadEditOverlay *)self loupeLayer];
    [loupeLayer2 setFrame:{0.0, 0.0, 20.0, 20.0}];

    blackColor = [MEMORY[0x277D75348] blackColor];
    cGColor = [blackColor CGColor];
    loupeLayer3 = [(ICDocCamImageQuadEditOverlay *)self loupeLayer];
    [loupeLayer3 setBackgroundColor:cGColor];

    v10 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    [(ICDocCamImageQuadEditOverlay *)self setLoupeContentsLayer:v10];

    image2 = [(ICDocCamImageQuadEditOverlay *)self image];
    cGImage = [image2 CGImage];
    loupeContentsLayer = [(ICDocCamImageQuadEditOverlay *)self loupeContentsLayer];
    [loupeContentsLayer setContents:cGImage];

    loupeLayer4 = [(ICDocCamImageQuadEditOverlay *)self loupeLayer];
    [loupeLayer4 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    loupeContentsLayer2 = [(ICDocCamImageQuadEditOverlay *)self loupeContentsLayer];
    [loupeContentsLayer2 setFrame:{v16, v18, v20, v22}];

    loupeContentsLayer3 = [(ICDocCamImageQuadEditOverlay *)self loupeContentsLayer];
    [loupeContentsLayer3 setMasksToBounds:1];

    loupeLayer5 = [(ICDocCamImageQuadEditOverlay *)self loupeLayer];
    loupeContentsLayer4 = [(ICDocCamImageQuadEditOverlay *)self loupeContentsLayer];
    [loupeLayer5 addSublayer:loupeContentsLayer4];

    loupeLayer = loupeLayer5;
  }
}

- (BOOL)containsPointOutsideOfOverlayBounds
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  knobs = [(ICDocCamImageQuadEditOverlay *)self knobs];
  v4 = [knobs countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(knobs);
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

      v5 = [knobs countByEnumeratingWithState:&v18 objects:v22 count:16];
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
  delegate = [(ICDocCamImageQuadEditOverlay *)self delegate];
  [delegate imageFrameInOverlayCoordinates];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  knobs = [(ICDocCamImageQuadEditOverlay *)self knobs];
  v13 = [knobs countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(knobs);
        }

        [*(*(&v23 + 1) + 8 * i) position];
        v14 += DCTSDPointInRectInclusive(v17, v18, v5, v7, v9, v11);
      }

      v13 = [knobs countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
    LODWORD(v13) = v14 == 4;
  }

  adjustedQuad = [(ICDocCamImageQuadEditOverlay *)self adjustedQuad];
  v20 = adjustedQuad;
  if (v13 && [adjustedQuad isConvex])
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
  panGR = [(ICDocCamImageQuadEditOverlay *)self panGR];
  state = [panGR state];

  return ((state - 1) & 0xFFFFFFFFFFFFFFFDLL) == 0;
}

- (ICDocCamImageQuad)adjustedQuad
{
  v3 = objc_alloc_init(ICDocCamImageQuad);
  knobs = [(ICDocCamImageQuadEditOverlay *)self knobs];
  v5 = [knobs objectAtIndexedSubscript:0];
  [v5 position];
  [(ICDocCamImageQuad *)v3 setTopLeft:?];

  knobs2 = [(ICDocCamImageQuadEditOverlay *)self knobs];
  v7 = [knobs2 objectAtIndexedSubscript:1];
  [v7 position];
  [(ICDocCamImageQuad *)v3 setTopRight:?];

  knobs3 = [(ICDocCamImageQuadEditOverlay *)self knobs];
  v9 = [knobs3 objectAtIndexedSubscript:2];
  [v9 position];
  [(ICDocCamImageQuad *)v3 setBottomRight:?];

  knobs4 = [(ICDocCamImageQuadEditOverlay *)self knobs];
  v11 = [knobs4 objectAtIndexedSubscript:3];
  [v11 position];
  [(ICDocCamImageQuad *)v3 setBottomLeft:?];

  return v3;
}

- (void)updateKnobLocationsToRect:(id)rect
{
  rectCopy = rect;
  [rectCopy topLeft];
  v6 = v5;
  v8 = v7;
  knobs = [(ICDocCamImageQuadEditOverlay *)self knobs];
  v10 = [knobs objectAtIndexedSubscript:0];
  [v10 setPosition:{v6, v8}];

  [rectCopy topRight];
  v12 = v11;
  v14 = v13;
  knobs2 = [(ICDocCamImageQuadEditOverlay *)self knobs];
  v16 = [knobs2 objectAtIndexedSubscript:1];
  [v16 setPosition:{v12, v14}];

  [rectCopy bottomRight];
  v18 = v17;
  v20 = v19;
  knobs3 = [(ICDocCamImageQuadEditOverlay *)self knobs];
  v22 = [knobs3 objectAtIndexedSubscript:2];
  [v22 setPosition:{v18, v20}];

  [rectCopy bottomLeft];
  v24 = v23;
  v26 = v25;

  knobs4 = [(ICDocCamImageQuadEditOverlay *)self knobs];
  v27 = [knobs4 objectAtIndexedSubscript:3];
  [v27 setPosition:{v24, v26}];
}

- (void)didPan:(id)pan
{
  v71 = *MEMORY[0x277D85DE8];
  panCopy = pan;
  [panCopy locationInView:self];
  v6 = v5;
  v8 = v7;
  state = [panCopy state];
  if (state == 1)
  {
    v10 = [(ICDocCamImageQuadEditOverlay *)self closestKnobToPoint:v6, v8];
    [(ICDocCamImageQuadEditOverlay *)self setSelectedKnob:v10];

    [(ICDocCamImageQuadEditOverlay *)self updateSelectedKnobContents];
    v11 = *MEMORY[0x277CBF348];
    v12 = *(MEMORY[0x277CBF348] + 8);
    [panCopy setTranslation:self inView:{*MEMORY[0x277CBF348], v12}];
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
  [panCopy translationInView:self];
  v21 = v20;
  v23 = v22;
  [panCopy setTranslation:self inView:{v11, v12}];
  [(ICDocCamImageQuadEditOverlay *)self setLastGestureTranslation:v21, v23];
  if (state == 3)
  {
    v62 = v19;
    v24 = CACurrentMediaTime();
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    panHistory = [(ICDocCamImageQuadEditOverlay *)self panHistory];
    v26 = [panHistory countByEnumeratingWithState:&v66 objects:v70 count:16];
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
            objc_enumerationMutation(panHistory);
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

        v29 = [panHistory countByEnumeratingWithState:&v66 objects:v70 count:16];
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
    panHistory2 = [(ICDocCamImageQuadEditOverlay *)self panHistory];
    [panHistory2 setObject:v35 atIndexedSubscript:{-[ICDocCamImageQuadEditOverlay panHistoryIdx](self, "panHistoryIdx")}];

    [(ICDocCamImageQuadEditOverlay *)self setPanHistoryIdx:([(ICDocCamImageQuadEditOverlay *)self panHistoryIdx]+ 1) % 0xA];
  }

  v37 = v15 != v17;
  if (v14 != v19)
  {
    v37 = 1;
  }

  if (state != 2)
  {
    v37 = 0;
  }

  if (state == 3 || v37)
  {
    selectedKnob = [(ICDocCamImageQuadEditOverlay *)self selectedKnob];
    [selectedKnob position];
    v40 = v39;
    v42 = v41;

    selectedKnob2 = [(ICDocCamImageQuadEditOverlay *)self selectedKnob];
    [selectedKnob2 position];
    v45 = DCTSDAddPoints(v21, v23, v44);
    v47 = v46;

    knobLayer = [(ICDocCamImageQuadEditOverlay *)self knobLayer];
    [knobLayer bounds];
    v53 = DCTSDClampPointInRect(v45, v47, v49, v50, v51, v52);
    v55 = v54;

    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    selectedKnob3 = [(ICDocCamImageQuadEditOverlay *)self selectedKnob];
    [selectedKnob3 setPosition:{v53, v55}];

    adjustedQuad = [(ICDocCamImageQuadEditOverlay *)self adjustedQuad];
    delegate = [(ICDocCamImageQuadEditOverlay *)self delegate];
    [delegate imageFrameInOverlayCoordinates];
    [adjustedQuad setBoundingBox:?];

    if (([adjustedQuad isValid] & 1) == 0)
    {
      selectedKnob4 = [(ICDocCamImageQuadEditOverlay *)self selectedKnob];
      [selectedKnob4 setPosition:{v40, v42}];
    }

    [(ICDocCamImageQuadEditOverlay *)self updateOutlineLayer];
    [MEMORY[0x277CD9FF0] commit];
    [(ICDocCamImageQuadEditOverlay *)self updateSelectedKnobContents];

    if (state == 3)
    {
      [(ICDocCamImageQuadEditOverlay *)self setSelectedKnob:0];
      UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
    }
  }

  delegate2 = [(ICDocCamImageQuadEditOverlay *)self delegate];
  selectedKnob5 = [(ICDocCamImageQuadEditOverlay *)self selectedKnob];
  [selectedKnob5 frame];
  [delegate2 selectedKnobDidPanToRect:?];

  [(ICDocCamImageQuadEditOverlay *)self updateOutlineAndKnobColorForCurrentValidityIfNecessary];
}

- (id)closestKnobToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v26 = *MEMORY[0x277D85DE8];
  knobs = [(ICDocCamImageQuadEditOverlay *)self knobs];
  firstObject = [knobs firstObject];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  knobs2 = [(ICDocCamImageQuadEditOverlay *)self knobs];
  v9 = [knobs2 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(knobs2);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        [v14 position];
        v17 = DCTSDDistance(v15, v16, x, y);
        if (v17 < v12)
        {
          v18 = v17;
          v19 = v14;

          firstObject = v19;
          v12 = v18;
        }
      }

      v10 = [knobs2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  return firstObject;
}

- (void)setSelectedKnob:(id)knob
{
  v41 = *MEMORY[0x277D85DE8];
  knobCopy = knob;
  if (self->_selectedKnob != knobCopy)
  {
    objc_storeStrong(&self->_selectedKnob, knob);
    if (self->_selectedKnob)
    {
      loupeLayer = [(ICDocCamImageQuadEditOverlay *)self loupeLayer];
      superlayer = [loupeLayer superlayer];
      selectedKnob = self->_selectedKnob;

      if (superlayer != selectedKnob)
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
        loupeLayer2 = [(ICDocCamImageQuadEditOverlay *)self loupeLayer];
        [loupeLayer2 setHidden:0];

        loupeLayer3 = [(ICDocCamImageQuadEditOverlay *)self loupeLayer];
        [loupeLayer3 setOpacity:0.0];

        v16 = self->_selectedKnob;
        loupeLayer4 = [(ICDocCamImageQuadEditOverlay *)self loupeLayer];
        [(CALayer *)v16 addSublayer:loupeLayer4];

        [MEMORY[0x277CD9FF0] commit];
      }
    }

    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setAnimationDuration:0.15];
    v18 = MEMORY[0x277CD9FF0];
    v19 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
    [v18 setAnimationTimingFunction:v19];

    loupeLayer5 = [(ICDocCamImageQuadEditOverlay *)self loupeLayer];
    LODWORD(v21) = 1.0;
    [loupeLayer5 setOpacity:v21];

    if (!self->_selectedKnob)
    {
      loupeLayer6 = [(ICDocCamImageQuadEditOverlay *)self loupeLayer];
      superlayer2 = [loupeLayer6 superlayer];

      if (superlayer2)
      {
        loupeLayer7 = [(ICDocCamImageQuadEditOverlay *)self loupeLayer];
        [loupeLayer7 setOpacity:0.0];

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
    knobs = [(ICDocCamImageQuadEditOverlay *)self knobs];
    v26 = [knobs countByEnumeratingWithState:&v34 objects:v40 count:16];
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
            objc_enumerationMutation(knobs);
          }

          v30 = *(*(&v34 + 1) + 8 * v29);
          if (v30 == knobCopy)
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
        v27 = [knobs countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v27);
    }

    [MEMORY[0x277CD9FF0] commit];
    delegate = [(ICDocCamImageQuadEditOverlay *)self delegate];
    [delegate selectedKnobDidChange:self->_selectedKnob];
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
  loupeContentsLayer = [(ICDocCamImageQuadEditOverlay *)self loupeContentsLayer];
  [loupeContentsLayer bounds];
  v49 = v4;
  v51 = v5;

  [(CALayer *)self->_selectedKnob position];
  v7 = v6 + -10.0;
  [(CALayer *)self->_selectedKnob position];
  v9 = v8 + -10.0;
  delegate = [(ICDocCamImageQuadEditOverlay *)self delegate];
  [delegate unitImageRectForOverlayRect:{v7, v9, 20.0, 20.0}];
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
  loupeLayer = [(ICDocCamImageQuadEditOverlay *)self loupeLayer];
  [loupeLayer bounds];
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
  loupeContentsLayer2 = [(ICDocCamImageQuadEditOverlay *)self loupeContentsLayer];
  v54 = v55;
  [loupeContentsLayer2 setAffineTransform:&v54];

  [(ICDocCamImageQuadEditOverlay *)self rectFromApplyingOrientation:[(ICDocCamImageQuadEditOverlay *)self orientation] toContentsRect:v30, v33, v16, v18];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  loupeContentsLayer3 = [(ICDocCamImageQuadEditOverlay *)self loupeContentsLayer];
  [loupeContentsLayer3 setContentsRect:{v38, v40, v42, v44}];

  loupeContentsLayer4 = [(ICDocCamImageQuadEditOverlay *)self loupeContentsLayer];
  [loupeContentsLayer4 setFrame:{v50, v34, v53, v52}];

  [MEMORY[0x277CD9FF0] commit];
}

- (void)updateOutlineLayer
{
  outlinePath = [(ICDocCamImageQuadEditOverlay *)self outlinePath];
  v3 = outlinePath;
  cGPath = [outlinePath CGPath];
  outlineLayer = [(ICDocCamImageQuadEditOverlay *)self outlineLayer];
  [outlineLayer setPath:cGPath];
}

- (UIBezierPath)outlinePath
{
  v3 = objc_alloc_init(MEMORY[0x277D75208]);
  knobs = [(ICDocCamImageQuadEditOverlay *)self knobs];
  v5 = [knobs objectAtIndexedSubscript:0];
  [v5 position];
  [v3 moveToPoint:?];

  knobs2 = [(ICDocCamImageQuadEditOverlay *)self knobs];
  v7 = [knobs2 objectAtIndexedSubscript:1];
  [v7 position];
  [v3 addLineToPoint:?];

  knobs3 = [(ICDocCamImageQuadEditOverlay *)self knobs];
  v9 = [knobs3 objectAtIndexedSubscript:2];
  [v9 position];
  [v3 addLineToPoint:?];

  knobs4 = [(ICDocCamImageQuadEditOverlay *)self knobs];
  v11 = [knobs4 objectAtIndexedSubscript:3];
  [v11 position];
  [v3 addLineToPoint:?];

  knobs5 = [(ICDocCamImageQuadEditOverlay *)self knobs];
  v13 = [knobs5 objectAtIndexedSubscript:0];
  [v13 position];
  [v3 addLineToPoint:?];

  return v3;
}

- (CGRect)rectFromApplyingOrientation:(int64_t)orientation toContentsRect:(CGRect)rect
{
  v5 = [ICDocCamImageQuad quadFromCGRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  [v5 applyOrientation:orientation boundingBox:{0.0, 0.0, 1.0, 1.0}];
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