@interface DiagnosticHUDLayer
+ (id)layer;
- (CGRect)previewLayerVisibleRect;
- (CGSize)cameraResolution;
- (DiagnosticHUDLayer)init;
- (void)layoutSublayers;
- (void)refreshFrameIndicator;
- (void)setAdjustingFocus:(BOOL)focus pointOfInterestSupported:(BOOL)supported focusPoint:(CGPoint)point;
- (void)setBoxPoints:(id)points;
- (void)setPreviewLayer:(id)layer visibleRect:(CGRect)rect cameraResolution:(CGSize)resolution;
@end

@implementation DiagnosticHUDLayer

+ (id)layer
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (DiagnosticHUDLayer)init
{
  v68.receiver = self;
  v68.super_class = DiagnosticHUDLayer;
  v2 = [(DiagnosticHUDLayer *)&v68 init];
  if (v2)
  {
    v3 = +[CRColor greenColor];
    [(DiagnosticHUDLayer *)v2 setFreshPointColor:v3];

    v4 = +[CRColor yellowColor];
    [(DiagnosticHUDLayer *)v2 setStalePointColor:v4];

    layer = [MEMORY[0x277CD9F90] layer];
    [(DiagnosticHUDLayer *)v2 setCameraAreaLayer:layer];

    v6 = +[CRColor blackColor];
    cGColor = [v6 CGColor];
    cameraAreaLayer = [(DiagnosticHUDLayer *)v2 cameraAreaLayer];
    [cameraAreaLayer setBackgroundColor:cGColor];

    v9 = +[CRColor yellowColor];
    cGColor2 = [v9 CGColor];
    cameraAreaLayer2 = [(DiagnosticHUDLayer *)v2 cameraAreaLayer];
    [cameraAreaLayer2 setFillColor:cGColor2];

    cameraAreaLayer3 = [(DiagnosticHUDLayer *)v2 cameraAreaLayer];
    LODWORD(v13) = 0.5;
    [cameraAreaLayer3 setOpacity:v13];

    cameraAreaLayer4 = [(DiagnosticHUDLayer *)v2 cameraAreaLayer];
    [(DiagnosticHUDLayer *)v2 addSublayer:cameraAreaLayer4];

    array = [MEMORY[0x277CBEB18] array];
    [(DiagnosticHUDLayer *)v2 setPointLayers:array];

    v16 = 0.0;
    v17 = 4;
    do
    {
      layer2 = [MEMORY[0x277CD9F90] layer];
      [layer2 setBounds:{0.0, 0.0, v16 * -2.5 + 20.0, v16 * -2.5 + 20.0}];
      [layer2 setHidden:1];
      [layer2 bounds];
      [layer2 setPath:{CGPathCreateWithEllipseInRect(v69, 0)}];
      [(DiagnosticHUDLayer *)v2 addSublayer:layer2];
      pointLayers = [(DiagnosticHUDLayer *)v2 pointLayers];
      [pointLayers addObject:layer2];

      v16 = v16 + 1.0;
      --v17;
    }

    while (v17);
    layer3 = [MEMORY[0x277CD9F90] layer];
    [(DiagnosticHUDLayer *)v2 setFocusIndicatorLayer:layer3];

    focusIndicatorLayer = [(DiagnosticHUDLayer *)v2 focusIndicatorLayer];
    [focusIndicatorLayer setBounds:{0.0, 0.0, 20.0, 20.0}];

    focusIndicatorLayer2 = [(DiagnosticHUDLayer *)v2 focusIndicatorLayer];
    [focusIndicatorLayer2 setHidden:1];

    focusIndicatorLayer3 = [(DiagnosticHUDLayer *)v2 focusIndicatorLayer];
    [focusIndicatorLayer3 bounds];
    v24 = CGPathCreateWithEllipseInRect(v70, 0);
    focusIndicatorLayer4 = [(DiagnosticHUDLayer *)v2 focusIndicatorLayer];
    [focusIndicatorLayer4 setPath:v24];

    v26 = +[CRColor blueColor];
    cGColor3 = [v26 CGColor];
    focusIndicatorLayer5 = [(DiagnosticHUDLayer *)v2 focusIndicatorLayer];
    [focusIndicatorLayer5 setFillColor:cGColor3];

    focusIndicatorLayer6 = [(DiagnosticHUDLayer *)v2 focusIndicatorLayer];
    [(DiagnosticHUDLayer *)v2 addSublayer:focusIndicatorLayer6];

    layer4 = [MEMORY[0x277CD9F90] layer];
    [(DiagnosticHUDLayer *)v2 setFocusPointLayer:layer4];

    focusPointLayer = [(DiagnosticHUDLayer *)v2 focusPointLayer];
    [focusPointLayer setBounds:{0.0, 0.0, 30.0, 30.0}];

    focusPointLayer2 = [(DiagnosticHUDLayer *)v2 focusPointLayer];
    [focusPointLayer2 setHidden:1];

    focusPointLayer3 = [(DiagnosticHUDLayer *)v2 focusPointLayer];
    [focusPointLayer3 bounds];
    v34 = CGPathCreateWithEllipseInRect(v71, 0);
    focusPointLayer4 = [(DiagnosticHUDLayer *)v2 focusPointLayer];
    [focusPointLayer4 setPath:v34];

    focusPointLayer5 = [(DiagnosticHUDLayer *)v2 focusPointLayer];
    LODWORD(v37) = 0.5;
    [focusPointLayer5 setOpacity:v37];

    v38 = +[CRColor clearColor];
    cGColor4 = [v38 CGColor];
    focusPointLayer6 = [(DiagnosticHUDLayer *)v2 focusPointLayer];
    [focusPointLayer6 setFillColor:cGColor4];

    v41 = +[CRColor grayColor];
    cGColor5 = [v41 CGColor];
    focusPointLayer7 = [(DiagnosticHUDLayer *)v2 focusPointLayer];
    [focusPointLayer7 setStrokeColor:cGColor5];

    focusPointLayer8 = [(DiagnosticHUDLayer *)v2 focusPointLayer];
    [focusPointLayer8 setLineWidth:4.0];

    focusPointLayer9 = [(DiagnosticHUDLayer *)v2 focusPointLayer];
    [focusPointLayer9 bounds];
    v46 = CGRectGetWidth(v72) * 3.14159265 / 20.0;

    v47 = MEMORY[0x277CBEA60];
    v48 = [MEMORY[0x277CCABB0] numberWithDouble:v46];
    v49 = [MEMORY[0x277CCABB0] numberWithDouble:v46];
    v50 = [v47 arrayWithObjects:{v48, v49, 0}];
    focusPointLayer10 = [(DiagnosticHUDLayer *)v2 focusPointLayer];
    [focusPointLayer10 setLineDashPattern:v50];

    focusPointLayer11 = [(DiagnosticHUDLayer *)v2 focusPointLayer];
    [(DiagnosticHUDLayer *)v2 addSublayer:focusPointLayer11];

    layer5 = [MEMORY[0x277CD9F90] layer];
    [(DiagnosticHUDLayer *)v2 setFrameIndicator:layer5];

    frameIndicator = [(DiagnosticHUDLayer *)v2 frameIndicator];
    [frameIndicator setBounds:{0.0, 0.0, 20.0, 20.0}];

    frameIndicator2 = [(DiagnosticHUDLayer *)v2 frameIndicator];
    [frameIndicator2 bounds];
    v56 = CGPathCreateWithEllipseInRect(v73, 0);
    frameIndicator3 = [(DiagnosticHUDLayer *)v2 frameIndicator];
    [frameIndicator3 setPath:v56];

    frameIndicator4 = [(DiagnosticHUDLayer *)v2 frameIndicator];
    LODWORD(v59) = 0.5;
    [frameIndicator4 setOpacity:v59];

    v60 = +[CRColor redColor];
    cGColor6 = [v60 CGColor];
    frameIndicator5 = [(DiagnosticHUDLayer *)v2 frameIndicator];
    [frameIndicator5 setFillColor:cGColor6];

    v63 = +[CRColor grayColor];
    cGColor7 = [v63 CGColor];
    frameIndicator6 = [(DiagnosticHUDLayer *)v2 frameIndicator];
    [frameIndicator6 setStrokeColor:cGColor7];

    frameIndicator7 = [(DiagnosticHUDLayer *)v2 frameIndicator];
    [(DiagnosticHUDLayer *)v2 addSublayer:frameIndicator7];
  }

  return v2;
}

- (void)layoutSublayers
{
  previewLayer = [(DiagnosticHUDLayer *)self previewLayer];

  if (previewLayer)
  {
    [(DiagnosticHUDLayer *)self cameraResolution];
    if (v5 == *MEMORY[0x277CBF3A8] && v4 == *(MEMORY[0x277CBF3A8] + 8))
    {
      cameraAreaLayer = [(DiagnosticHUDLayer *)self cameraAreaLayer];
      [cameraAreaLayer setPath:0];
    }

    else
    {
      [MEMORY[0x277CD9FF0] begin];
      [MEMORY[0x277CD9FF0] setDisableActions:1];
      [(DiagnosticHUDLayer *)self cameraResolution];
      v8 = v7;
      [(DiagnosticHUDLayer *)self cameraResolution];
      v10 = v9;
      cameraAreaLayer2 = [(DiagnosticHUDLayer *)self cameraAreaLayer];
      [cameraAreaLayer2 setBounds:{0.0, 0.0, v8, v10}];

      [(DiagnosticHUDLayer *)self bounds];
      Width = CGRectGetWidth(v58);
      [(DiagnosticHUDLayer *)self bounds];
      Height = CGRectGetHeight(v59);
      [(DiagnosticHUDLayer *)self bounds];
      if (Width <= Height)
      {
        v18 = CGRectGetHeight(*&v14);
      }

      else
      {
        v18 = CGRectGetWidth(*&v14);
      }

      v20 = v18 / 5.0;
      [(DiagnosticHUDLayer *)self bounds];
      v21 = CGRectGetWidth(v60);
      [(DiagnosticHUDLayer *)self bounds];
      v22 = CGRectGetHeight(v61);
      [(DiagnosticHUDLayer *)self bounds];
      if (v21 <= v22)
      {
        v27 = CGRectGetWidth(*&v23);
      }

      else
      {
        v27 = CGRectGetHeight(*&v23);
      }

      v28 = v27 / 15.0;
      cameraAreaLayer3 = [(DiagnosticHUDLayer *)self cameraAreaLayer];
      [cameraAreaLayer3 bounds];
      v30 = v20 / CGRectGetWidth(v62);

      CGAffineTransformMakeScale(&v57, v30, v30);
      cameraAreaLayer4 = [(DiagnosticHUDLayer *)self cameraAreaLayer];
      v56 = v57;
      [cameraAreaLayer4 setAffineTransform:&v56];

      cameraAreaLayer5 = [(DiagnosticHUDLayer *)self cameraAreaLayer];
      [cameraAreaLayer5 setAnchorPoint:{1.0, 1.0}];

      [(DiagnosticHUDLayer *)self bounds];
      v33 = CGRectGetMaxX(v63) - v28;
      [(DiagnosticHUDLayer *)self bounds];
      v34 = CGRectGetMaxY(v64) - v28;
      cameraAreaLayer6 = [(DiagnosticHUDLayer *)self cameraAreaLayer];
      [cameraAreaLayer6 setPosition:{v33, v34}];

      [(DiagnosticHUDLayer *)self visibleRect];
      MinX = CGRectGetMinX(v65);
      [(DiagnosticHUDLayer *)self cameraResolution];
      v38 = MinX * v37;
      [(DiagnosticHUDLayer *)self visibleRect];
      MinY = CGRectGetMinY(v66);
      [(DiagnosticHUDLayer *)self cameraResolution];
      v41 = MinY * v40;
      [(DiagnosticHUDLayer *)self visibleRect];
      v42 = CGRectGetWidth(v67);
      [(DiagnosticHUDLayer *)self cameraResolution];
      v44 = v42 * v43;
      [(DiagnosticHUDLayer *)self visibleRect];
      v45 = CGRectGetHeight(v68);
      [(DiagnosticHUDLayer *)self cameraResolution];
      v69.size.height = v45 * v46;
      v69.origin.x = v38;
      v69.origin.y = v41;
      v69.size.width = v44;
      v47 = CGPathCreateWithRect(v69, 0);
      v48 = CFAutorelease(v47);
      cameraAreaLayer7 = [(DiagnosticHUDLayer *)self cameraAreaLayer];
      [cameraAreaLayer7 setPath:v48];

      [MEMORY[0x277CD9FF0] commit];
    }
  }

  [(DiagnosticHUDLayer *)self bounds];
  v50 = CGRectGetMaxX(v70) + -40.0;
  [(DiagnosticHUDLayer *)self bounds];
  v51 = CGRectGetMinY(v71) + 40.0;
  focusIndicatorLayer = [(DiagnosticHUDLayer *)self focusIndicatorLayer];
  [focusIndicatorLayer setPosition:{v50, v51}];

  [(DiagnosticHUDLayer *)self bounds];
  v53 = CGRectGetMinX(v72) + 40.0;
  [(DiagnosticHUDLayer *)self bounds];
  v54 = CGRectGetMinY(v73) + 80.0;
  frameIndicator = [(DiagnosticHUDLayer *)self frameIndicator];
  [frameIndicator setPosition:{v53, v54}];
}

- (void)setBoxPoints:(id)points
{
  pointsCopy = points;
  [MEMORY[0x277CD9FF0] begin];
  v4 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"fillColor"];
  freshPointColor = [(DiagnosticHUDLayer *)self freshPointColor];
  [v4 setFromValue:{objc_msgSend(freshPointColor, "CGColor")}];

  stalePointColor = [(DiagnosticHUDLayer *)self stalePointColor];
  [v4 setToValue:{objc_msgSend(stalePointColor, "CGColor")}];

  [v4 setDuration:1.0];
  for (i = 0; i != 4; ++i)
  {
    v8 = [pointsCopy objectAtIndex:i];
    pointLayers = [(DiagnosticHUDLayer *)self pointLayers];
    v10 = [pointLayers objectAtIndex:i];

    [v10 removeAllAnimations];
    [v10 setHidden:v8 == 0];
    [v8 CGPointValue];
    [v10 setPosition:?];
    v11 = MEMORY[0x277CBEAC0];
    null = [MEMORY[0x277CBEB68] null];
    null2 = [MEMORY[0x277CBEB68] null];
    v14 = [v11 dictionaryWithObjectsAndKeys:{null, @"hidden", null2, @"position", 0}];
    [v10 setActions:v14];

    [v10 addAnimation:v4 forKey:@"fillColor"];
    toValue = [v4 toValue];
    [v10 setFillColor:toValue];
  }

  [MEMORY[0x277CD9FF0] commit];
}

- (void)setPreviewLayer:(id)layer visibleRect:(CGRect)rect cameraResolution:(CGSize)resolution
{
  height = resolution.height;
  width = resolution.width;
  v7 = rect.size.height;
  v8 = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(DiagnosticHUDLayer *)self setPreviewLayer:layer];
  [(DiagnosticHUDLayer *)self setPreviewLayerVisibleRect:x, y, v8, v7];
  [(DiagnosticHUDLayer *)self setCameraResolution:width, height];

  [(DiagnosticHUDLayer *)self setNeedsLayout];
}

- (void)setAdjustingFocus:(BOOL)focus pointOfInterestSupported:(BOOL)supported focusPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  supportedCopy = supported;
  focusCopy = focus;
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  focusIndicatorLayer = [(DiagnosticHUDLayer *)self focusIndicatorLayer];
  [focusIndicatorLayer setHidden:!focusCopy];

  focusPointLayer = [(DiagnosticHUDLayer *)self focusPointLayer];
  focusPointLayer3 = focusPointLayer;
  if (supportedCopy)
  {
    [focusPointLayer setHidden:0];

    if (focusCopy)
    {
      +[CRColor blueColor];
    }

    else
    {
      +[CRColor grayColor];
    }
    v13 = ;
    cGColor = [v13 CGColor];
    focusPointLayer2 = [(DiagnosticHUDLayer *)self focusPointLayer];
    [focusPointLayer2 setStrokeColor:cGColor];

    focusPointLayer3 = [(DiagnosticHUDLayer *)self focusPointLayer];
    [focusPointLayer3 setPosition:{x, y}];
  }

  else
  {
    [focusPointLayer setHidden:1];
  }

  v16 = MEMORY[0x277CD9FF0];

  [v16 commit];
}

- (void)refreshFrameIndicator
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:0];
  frameIndicator = [(DiagnosticHUDLayer *)self frameIndicator];
  [frameIndicator setHidden:0];

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__DiagnosticHUDLayer_refreshFrameIndicator__block_invoke;
  v4[3] = &unk_278EAAB20;
  v4[4] = self;
  [MEMORY[0x277CD9FF0] setCompletionBlock:v4];
  [MEMORY[0x277CD9FF0] commit];
}

uint64_t __43__DiagnosticHUDLayer_refreshFrameIndicator__block_invoke(uint64_t a1)
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:0];
  [MEMORY[0x277CD9FF0] setAnimationDuration:2.0];
  v2 = [*(a1 + 32) frameIndicator];
  [v2 setHidden:1];

  v3 = MEMORY[0x277CD9FF0];

  return [v3 commit];
}

- (CGRect)previewLayerVisibleRect
{
  objc_copyStruct(v6, &self->_previewLayerVisibleRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGSize)cameraResolution
{
  objc_copyStruct(v4, &self->_cameraResolution, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end