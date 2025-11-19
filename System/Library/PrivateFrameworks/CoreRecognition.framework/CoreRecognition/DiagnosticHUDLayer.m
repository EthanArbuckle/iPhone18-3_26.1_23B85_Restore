@interface DiagnosticHUDLayer
+ (id)layer;
- (CGRect)previewLayerVisibleRect;
- (CGSize)cameraResolution;
- (DiagnosticHUDLayer)init;
- (void)layoutSublayers;
- (void)refreshFrameIndicator;
- (void)setAdjustingFocus:(BOOL)a3 pointOfInterestSupported:(BOOL)a4 focusPoint:(CGPoint)a5;
- (void)setBoxPoints:(id)a3;
- (void)setPreviewLayer:(id)a3 visibleRect:(CGRect)a4 cameraResolution:(CGSize)a5;
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

    v5 = [MEMORY[0x277CD9F90] layer];
    [(DiagnosticHUDLayer *)v2 setCameraAreaLayer:v5];

    v6 = +[CRColor blackColor];
    v7 = [v6 CGColor];
    v8 = [(DiagnosticHUDLayer *)v2 cameraAreaLayer];
    [v8 setBackgroundColor:v7];

    v9 = +[CRColor yellowColor];
    v10 = [v9 CGColor];
    v11 = [(DiagnosticHUDLayer *)v2 cameraAreaLayer];
    [v11 setFillColor:v10];

    v12 = [(DiagnosticHUDLayer *)v2 cameraAreaLayer];
    LODWORD(v13) = 0.5;
    [v12 setOpacity:v13];

    v14 = [(DiagnosticHUDLayer *)v2 cameraAreaLayer];
    [(DiagnosticHUDLayer *)v2 addSublayer:v14];

    v15 = [MEMORY[0x277CBEB18] array];
    [(DiagnosticHUDLayer *)v2 setPointLayers:v15];

    v16 = 0.0;
    v17 = 4;
    do
    {
      v18 = [MEMORY[0x277CD9F90] layer];
      [v18 setBounds:{0.0, 0.0, v16 * -2.5 + 20.0, v16 * -2.5 + 20.0}];
      [v18 setHidden:1];
      [v18 bounds];
      [v18 setPath:{CGPathCreateWithEllipseInRect(v69, 0)}];
      [(DiagnosticHUDLayer *)v2 addSublayer:v18];
      v19 = [(DiagnosticHUDLayer *)v2 pointLayers];
      [v19 addObject:v18];

      v16 = v16 + 1.0;
      --v17;
    }

    while (v17);
    v20 = [MEMORY[0x277CD9F90] layer];
    [(DiagnosticHUDLayer *)v2 setFocusIndicatorLayer:v20];

    v21 = [(DiagnosticHUDLayer *)v2 focusIndicatorLayer];
    [v21 setBounds:{0.0, 0.0, 20.0, 20.0}];

    v22 = [(DiagnosticHUDLayer *)v2 focusIndicatorLayer];
    [v22 setHidden:1];

    v23 = [(DiagnosticHUDLayer *)v2 focusIndicatorLayer];
    [v23 bounds];
    v24 = CGPathCreateWithEllipseInRect(v70, 0);
    v25 = [(DiagnosticHUDLayer *)v2 focusIndicatorLayer];
    [v25 setPath:v24];

    v26 = +[CRColor blueColor];
    v27 = [v26 CGColor];
    v28 = [(DiagnosticHUDLayer *)v2 focusIndicatorLayer];
    [v28 setFillColor:v27];

    v29 = [(DiagnosticHUDLayer *)v2 focusIndicatorLayer];
    [(DiagnosticHUDLayer *)v2 addSublayer:v29];

    v30 = [MEMORY[0x277CD9F90] layer];
    [(DiagnosticHUDLayer *)v2 setFocusPointLayer:v30];

    v31 = [(DiagnosticHUDLayer *)v2 focusPointLayer];
    [v31 setBounds:{0.0, 0.0, 30.0, 30.0}];

    v32 = [(DiagnosticHUDLayer *)v2 focusPointLayer];
    [v32 setHidden:1];

    v33 = [(DiagnosticHUDLayer *)v2 focusPointLayer];
    [v33 bounds];
    v34 = CGPathCreateWithEllipseInRect(v71, 0);
    v35 = [(DiagnosticHUDLayer *)v2 focusPointLayer];
    [v35 setPath:v34];

    v36 = [(DiagnosticHUDLayer *)v2 focusPointLayer];
    LODWORD(v37) = 0.5;
    [v36 setOpacity:v37];

    v38 = +[CRColor clearColor];
    v39 = [v38 CGColor];
    v40 = [(DiagnosticHUDLayer *)v2 focusPointLayer];
    [v40 setFillColor:v39];

    v41 = +[CRColor grayColor];
    v42 = [v41 CGColor];
    v43 = [(DiagnosticHUDLayer *)v2 focusPointLayer];
    [v43 setStrokeColor:v42];

    v44 = [(DiagnosticHUDLayer *)v2 focusPointLayer];
    [v44 setLineWidth:4.0];

    v45 = [(DiagnosticHUDLayer *)v2 focusPointLayer];
    [v45 bounds];
    v46 = CGRectGetWidth(v72) * 3.14159265 / 20.0;

    v47 = MEMORY[0x277CBEA60];
    v48 = [MEMORY[0x277CCABB0] numberWithDouble:v46];
    v49 = [MEMORY[0x277CCABB0] numberWithDouble:v46];
    v50 = [v47 arrayWithObjects:{v48, v49, 0}];
    v51 = [(DiagnosticHUDLayer *)v2 focusPointLayer];
    [v51 setLineDashPattern:v50];

    v52 = [(DiagnosticHUDLayer *)v2 focusPointLayer];
    [(DiagnosticHUDLayer *)v2 addSublayer:v52];

    v53 = [MEMORY[0x277CD9F90] layer];
    [(DiagnosticHUDLayer *)v2 setFrameIndicator:v53];

    v54 = [(DiagnosticHUDLayer *)v2 frameIndicator];
    [v54 setBounds:{0.0, 0.0, 20.0, 20.0}];

    v55 = [(DiagnosticHUDLayer *)v2 frameIndicator];
    [v55 bounds];
    v56 = CGPathCreateWithEllipseInRect(v73, 0);
    v57 = [(DiagnosticHUDLayer *)v2 frameIndicator];
    [v57 setPath:v56];

    v58 = [(DiagnosticHUDLayer *)v2 frameIndicator];
    LODWORD(v59) = 0.5;
    [v58 setOpacity:v59];

    v60 = +[CRColor redColor];
    v61 = [v60 CGColor];
    v62 = [(DiagnosticHUDLayer *)v2 frameIndicator];
    [v62 setFillColor:v61];

    v63 = +[CRColor grayColor];
    v64 = [v63 CGColor];
    v65 = [(DiagnosticHUDLayer *)v2 frameIndicator];
    [v65 setStrokeColor:v64];

    v66 = [(DiagnosticHUDLayer *)v2 frameIndicator];
    [(DiagnosticHUDLayer *)v2 addSublayer:v66];
  }

  return v2;
}

- (void)layoutSublayers
{
  v3 = [(DiagnosticHUDLayer *)self previewLayer];

  if (v3)
  {
    [(DiagnosticHUDLayer *)self cameraResolution];
    if (v5 == *MEMORY[0x277CBF3A8] && v4 == *(MEMORY[0x277CBF3A8] + 8))
    {
      v19 = [(DiagnosticHUDLayer *)self cameraAreaLayer];
      [v19 setPath:0];
    }

    else
    {
      [MEMORY[0x277CD9FF0] begin];
      [MEMORY[0x277CD9FF0] setDisableActions:1];
      [(DiagnosticHUDLayer *)self cameraResolution];
      v8 = v7;
      [(DiagnosticHUDLayer *)self cameraResolution];
      v10 = v9;
      v11 = [(DiagnosticHUDLayer *)self cameraAreaLayer];
      [v11 setBounds:{0.0, 0.0, v8, v10}];

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
      v29 = [(DiagnosticHUDLayer *)self cameraAreaLayer];
      [v29 bounds];
      v30 = v20 / CGRectGetWidth(v62);

      CGAffineTransformMakeScale(&v57, v30, v30);
      v31 = [(DiagnosticHUDLayer *)self cameraAreaLayer];
      v56 = v57;
      [v31 setAffineTransform:&v56];

      v32 = [(DiagnosticHUDLayer *)self cameraAreaLayer];
      [v32 setAnchorPoint:{1.0, 1.0}];

      [(DiagnosticHUDLayer *)self bounds];
      v33 = CGRectGetMaxX(v63) - v28;
      [(DiagnosticHUDLayer *)self bounds];
      v34 = CGRectGetMaxY(v64) - v28;
      v35 = [(DiagnosticHUDLayer *)self cameraAreaLayer];
      [v35 setPosition:{v33, v34}];

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
      v49 = [(DiagnosticHUDLayer *)self cameraAreaLayer];
      [v49 setPath:v48];

      [MEMORY[0x277CD9FF0] commit];
    }
  }

  [(DiagnosticHUDLayer *)self bounds];
  v50 = CGRectGetMaxX(v70) + -40.0;
  [(DiagnosticHUDLayer *)self bounds];
  v51 = CGRectGetMinY(v71) + 40.0;
  v52 = [(DiagnosticHUDLayer *)self focusIndicatorLayer];
  [v52 setPosition:{v50, v51}];

  [(DiagnosticHUDLayer *)self bounds];
  v53 = CGRectGetMinX(v72) + 40.0;
  [(DiagnosticHUDLayer *)self bounds];
  v54 = CGRectGetMinY(v73) + 80.0;
  v55 = [(DiagnosticHUDLayer *)self frameIndicator];
  [v55 setPosition:{v53, v54}];
}

- (void)setBoxPoints:(id)a3
{
  v16 = a3;
  [MEMORY[0x277CD9FF0] begin];
  v4 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"fillColor"];
  v5 = [(DiagnosticHUDLayer *)self freshPointColor];
  [v4 setFromValue:{objc_msgSend(v5, "CGColor")}];

  v6 = [(DiagnosticHUDLayer *)self stalePointColor];
  [v4 setToValue:{objc_msgSend(v6, "CGColor")}];

  [v4 setDuration:1.0];
  for (i = 0; i != 4; ++i)
  {
    v8 = [v16 objectAtIndex:i];
    v9 = [(DiagnosticHUDLayer *)self pointLayers];
    v10 = [v9 objectAtIndex:i];

    [v10 removeAllAnimations];
    [v10 setHidden:v8 == 0];
    [v8 CGPointValue];
    [v10 setPosition:?];
    v11 = MEMORY[0x277CBEAC0];
    v12 = [MEMORY[0x277CBEB68] null];
    v13 = [MEMORY[0x277CBEB68] null];
    v14 = [v11 dictionaryWithObjectsAndKeys:{v12, @"hidden", v13, @"position", 0}];
    [v10 setActions:v14];

    [v10 addAnimation:v4 forKey:@"fillColor"];
    v15 = [v4 toValue];
    [v10 setFillColor:v15];
  }

  [MEMORY[0x277CD9FF0] commit];
}

- (void)setPreviewLayer:(id)a3 visibleRect:(CGRect)a4 cameraResolution:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v7 = a4.size.height;
  v8 = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [(DiagnosticHUDLayer *)self setPreviewLayer:a3];
  [(DiagnosticHUDLayer *)self setPreviewLayerVisibleRect:x, y, v8, v7];
  [(DiagnosticHUDLayer *)self setCameraResolution:width, height];

  [(DiagnosticHUDLayer *)self setNeedsLayout];
}

- (void)setAdjustingFocus:(BOOL)a3 pointOfInterestSupported:(BOOL)a4 focusPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4;
  v8 = a3;
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v10 = [(DiagnosticHUDLayer *)self focusIndicatorLayer];
  [v10 setHidden:!v8];

  v11 = [(DiagnosticHUDLayer *)self focusPointLayer];
  v12 = v11;
  if (v7)
  {
    [v11 setHidden:0];

    if (v8)
    {
      +[CRColor blueColor];
    }

    else
    {
      +[CRColor grayColor];
    }
    v13 = ;
    v14 = [v13 CGColor];
    v15 = [(DiagnosticHUDLayer *)self focusPointLayer];
    [v15 setStrokeColor:v14];

    v12 = [(DiagnosticHUDLayer *)self focusPointLayer];
    [v12 setPosition:{x, y}];
  }

  else
  {
    [v11 setHidden:1];
  }

  v16 = MEMORY[0x277CD9FF0];

  [v16 commit];
}

- (void)refreshFrameIndicator
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:0];
  v3 = [(DiagnosticHUDLayer *)self frameIndicator];
  [v3 setHidden:0];

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