@interface JFXOverlayEffectDebugView
- (JFXOverlayEffectDebugView)initWithCoder:(id)coder;
- (JFXOverlayEffectDebugView)initWithFrame:(CGRect)frame delegate:(id)delegate;
- (JFXOverlayEffectDebugViewDelegate)delegate;
- (id)additionalRectsToDraw;
- (void)setupViews;
- (void)updateAdditionalRects:(id)rects transformedLayer:(id)layer effectScale:(double)scale rects:(id)a6;
- (void)updateBorderedLayer:(id)layer borderRect:(CGRect)rect borderWidth:(double)width borderColor:(id)color;
- (void)updateCrosshairLayer:(id)layer center:(CGPoint)center color:(id)color size:(CGSize)size thickness:(CGSize)thickness;
- (void)updateDottedBorderedLayer:(id)layer borderRect:(CGRect)rect borderWidth:(double)width borderColor:(id)color borderPhase:(double)phase borderDashPattern:(id)pattern;
- (void)updateFilledCircleLayer:(id)layer center:(CGPoint)center radius:(double)radius fillColor:(id)color;
- (void)updateFilledPolygonLayer:(id)layer path:(CGPath *)path fillColor:(id)color;
- (void)updatePointsLayers:(id)layers points:(id)points colors:(id)colors size:(double)size;
- (void)updatePolygonLayer:(id)layer points:(id)points borderWidth:(double)width borderColor:(id)color;
- (void)updateWithEffectFrame:(id)frame;
@end

@implementation JFXOverlayEffectDebugView

- (JFXOverlayEffectDebugView)initWithFrame:(CGRect)frame delegate:(id)delegate
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = JFXOverlayEffectDebugView;
  height = [(JFXOverlayEffectDebugView *)&v13 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(JFXOverlayEffectDebugView *)height setDelegate:delegateCopy];
    [(JFXOverlayEffectDebugView *)v11 setupViews];
  }

  return v11;
}

- (JFXOverlayEffectDebugView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = JFXOverlayEffectDebugView;
  v3 = [(JFXOverlayEffectDebugView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(JFXOverlayEffectDebugView *)v3 setupViews];
  }

  return v4;
}

- (void)setupViews
{
  [(JFXOverlayEffectDebugView *)self setUserInteractionEnabled:0];
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(JFXOverlayEffectDebugView *)self setRootContainerView:v4];

  rootContainerView = [(JFXOverlayEffectDebugView *)self rootContainerView];
  [rootContainerView setHidden:1];

  rootContainerView2 = [(JFXOverlayEffectDebugView *)self rootContainerView];
  [(JFXOverlayEffectDebugView *)self addSubview:rootContainerView2];

  rootContainerView3 = [(JFXOverlayEffectDebugView *)self rootContainerView];
  layer = [rootContainerView3 layer];
  [(JFXOverlayEffectDebugView *)self setRootLayer:layer];

  layer2 = [MEMORY[0x277CD9FF8] layer];
  [(JFXOverlayEffectDebugView *)self setRootTransformLayer:layer2];

  v10 = *MEMORY[0x277CBF348];
  v11 = *(MEMORY[0x277CBF348] + 8);
  rootTransformLayer = [(JFXOverlayEffectDebugView *)self rootTransformLayer];
  [rootTransformLayer setAnchorPoint:{v10, v11}];

  rootLayer = [(JFXOverlayEffectDebugView *)self rootLayer];
  rootTransformLayer2 = [(JFXOverlayEffectDebugView *)self rootTransformLayer];
  [rootLayer addSublayer:rootTransformLayer2];

  layer3 = [MEMORY[0x277CD9F90] layer];
  [(JFXOverlayEffectDebugView *)self setDocumentBoundingBoxLayer:layer3];

  rootTransformLayer3 = [(JFXOverlayEffectDebugView *)self rootTransformLayer];
  documentBoundingBoxLayer = [(JFXOverlayEffectDebugView *)self documentBoundingBoxLayer];
  [rootTransformLayer3 addSublayer:documentBoundingBoxLayer];

  layer4 = [MEMORY[0x277CD9F90] layer];
  [(JFXOverlayEffectDebugView *)self setOutputROILayer:layer4];

  rootTransformLayer4 = [(JFXOverlayEffectDebugView *)self rootTransformLayer];
  outputROILayer = [(JFXOverlayEffectDebugView *)self outputROILayer];
  [rootTransformLayer4 addSublayer:outputROILayer];

  layer5 = [MEMORY[0x277CD9F90] layer];
  [(JFXOverlayEffectDebugView *)self setObjectAlignedBoundingBoxLayer:layer5];

  rootTransformLayer5 = [(JFXOverlayEffectDebugView *)self rootTransformLayer];
  objectAlignedBoundingBoxLayer = [(JFXOverlayEffectDebugView *)self objectAlignedBoundingBoxLayer];
  [rootTransformLayer5 addSublayer:objectAlignedBoundingBoxLayer];

  layer6 = [MEMORY[0x277CD9ED0] layer];
  [(JFXOverlayEffectDebugView *)self setTextBoundingBoxesContainerLayer:layer6];

  rootLayer2 = [(JFXOverlayEffectDebugView *)self rootLayer];
  textBoundingBoxesContainerLayer = [(JFXOverlayEffectDebugView *)self textBoundingBoxesContainerLayer];
  [rootLayer2 addSublayer:textBoundingBoxesContainerLayer];

  layer7 = [MEMORY[0x277CD9F90] layer];
  [(JFXOverlayEffectDebugView *)self setHitAreaBoundingBoxLayer:layer7];

  rootLayer3 = [(JFXOverlayEffectDebugView *)self rootLayer];
  hitAreaBoundingBoxLayer = [(JFXOverlayEffectDebugView *)self hitAreaBoundingBoxLayer];
  [rootLayer3 addSublayer:hitAreaBoundingBoxLayer];

  layer8 = [MEMORY[0x277CD9F90] layer];
  [(JFXOverlayEffectDebugView *)self setHitAreaMinimumSizeBoundingBoxLayer:layer8];

  rootLayer4 = [(JFXOverlayEffectDebugView *)self rootLayer];
  hitAreaMinimumSizeBoundingBoxLayer = [(JFXOverlayEffectDebugView *)self hitAreaMinimumSizeBoundingBoxLayer];
  [rootLayer4 addSublayer:hitAreaMinimumSizeBoundingBoxLayer];

  hitAreaMinimumSizeBoundingBoxLayer2 = [(JFXOverlayEffectDebugView *)self hitAreaMinimumSizeBoundingBoxLayer];
  LODWORD(v34) = 1050253722;
  [hitAreaMinimumSizeBoundingBoxLayer2 setOpacity:v34];

  layer9 = [MEMORY[0x277CD9F90] layer];
  [(JFXOverlayEffectDebugView *)self setMidpointLayer:layer9];

  rootLayer5 = [(JFXOverlayEffectDebugView *)self rootLayer];
  midpointLayer = [(JFXOverlayEffectDebugView *)self midpointLayer];
  [rootLayer5 addSublayer:midpointLayer];

  layer10 = [MEMORY[0x277CD9F90] layer];
  [(JFXOverlayEffectDebugView *)self setOverlayCenterLayer:layer10];

  rootLayer6 = [(JFXOverlayEffectDebugView *)self rootLayer];
  overlayCenterLayer = [(JFXOverlayEffectDebugView *)self overlayCenterLayer];
  [rootLayer6 addSublayer:overlayCenterLayer];

  layer11 = [MEMORY[0x277CD9F90] layer];
  [(JFXOverlayEffectDebugView *)self setOriginCrosshairLayer:layer11];

  rootTransformLayer6 = [(JFXOverlayEffectDebugView *)self rootTransformLayer];
  originCrosshairLayer = [(JFXOverlayEffectDebugView *)self originCrosshairLayer];
  [rootTransformLayer6 addSublayer:originCrosshairLayer];

  layer12 = [MEMORY[0x277CD9F90] layer];
  [(JFXOverlayEffectDebugView *)self setCornerPointsLayer:layer12];

  rootLayer7 = [(JFXOverlayEffectDebugView *)self rootLayer];
  cornerPointsLayer = [(JFXOverlayEffectDebugView *)self cornerPointsLayer];
  [rootLayer7 addSublayer:cornerPointsLayer];

  layer13 = [MEMORY[0x277CD9ED0] layer];
  [(JFXOverlayEffectDebugView *)self setTextCornerPointsContainerLayer:layer13];

  rootLayer8 = [(JFXOverlayEffectDebugView *)self rootLayer];
  textCornerPointsContainerLayer = [(JFXOverlayEffectDebugView *)self textCornerPointsContainerLayer];
  [rootLayer8 addSublayer:textCornerPointsContainerLayer];

  layer14 = [MEMORY[0x277CD9F90] layer];
  [(JFXOverlayEffectDebugView *)self setHitAreaPointsLayer:layer14];

  rootLayer9 = [(JFXOverlayEffectDebugView *)self rootLayer];
  hitAreaPointsLayer = [(JFXOverlayEffectDebugView *)self hitAreaPointsLayer];
  [rootLayer9 addSublayer:hitAreaPointsLayer];

  layer15 = [MEMORY[0x277CD9F90] layer];
  [(JFXOverlayEffectDebugView *)self setAdditionalRectsLayer:layer15];

  rootLayer10 = [(JFXOverlayEffectDebugView *)self rootLayer];
  additionalRectsLayer = [(JFXOverlayEffectDebugView *)self additionalRectsLayer];
  [rootLayer10 addSublayer:additionalRectsLayer];

  layer16 = [MEMORY[0x277CD9F90] layer];
  [(JFXOverlayEffectDebugView *)self setAdditionalRectsTransformedLayer:layer16];

  rootTransformLayer7 = [(JFXOverlayEffectDebugView *)self rootTransformLayer];
  additionalRectsTransformedLayer = [(JFXOverlayEffectDebugView *)self additionalRectsTransformedLayer];
  [rootTransformLayer7 addSublayer:additionalRectsTransformedLayer];

  delegate = [(JFXOverlayEffectDebugView *)self delegate];
  LOBYTE(additionalRectsTransformedLayer) = objc_opt_respondsToSelector();

  if ((additionalRectsTransformedLayer & 1) != 0 && (-[JFXOverlayEffectDebugView delegate](self, "delegate"), v60 = objc_claimAutoreleasedReturnValue(), [v60 overlayEffectDebugViewOptions], v63 = objc_claimAutoreleasedReturnValue(), v60, v63))
  {
    selfCopy2 = self;
    v62 = v63;
  }

  else
  {
    v62 = objc_opt_new();
    selfCopy2 = self;
    v63 = v62;
  }

  [(JFXOverlayEffectDebugView *)selfCopy2 setOptions:v62];
}

- (void)updateDottedBorderedLayer:(id)layer borderRect:(CGRect)rect borderWidth:(double)width borderColor:(id)color borderPhase:(double)phase borderDashPattern:(id)pattern
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  layerCopy = layer;
  colorCopy = color;
  patternCopy = pattern;
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v19 = pv_CGRect_to_NSArray(v31);
  clearColor = [MEMORY[0x277D75348] clearColor];
  v21 = patternCopy;
  v22 = colorCopy;
  v23 = layerCopy;
  ClosedCGPathWithPoints = createClosedCGPathWithPoints(v19);
  v25 = clearColor;
  v29 = v23;
  v26 = v22;
  v27 = v21;
  [v29 setFillColor:{objc_msgSend(clearColor, "CGColor")}];
  cGColor = [v26 CGColor];

  [v29 setStrokeColor:cGColor];
  [v29 setLineDashPhase:phase];
  [v29 setLineDashPattern:v27];

  [v29 setLineWidth:width * 0.5];
  [v29 setPath:ClosedCGPathWithPoints];

  CGPathRelease(ClosedCGPathWithPoints);
}

- (void)updateBorderedLayer:(id)layer borderRect:(CGRect)rect borderWidth:(double)width borderColor:(id)color
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  layerCopy = layer;
  colorCopy = color;
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v14 = pv_CGRect_to_NSArray(v24);
  clearColor = [MEMORY[0x277D75348] clearColor];
  v16 = colorCopy;
  v17 = layerCopy;
  ClosedCGPathWithPoints = createClosedCGPathWithPoints(v14);
  v19 = clearColor;
  v22 = v17;
  v20 = v16;
  [v22 setFillColor:{objc_msgSend(clearColor, "CGColor")}];
  cGColor = [v20 CGColor];

  [v22 setStrokeColor:cGColor];
  [v22 setLineDashPhase:0.0];
  [v22 setLineDashPattern:0];
  [v22 setLineWidth:width];
  [v22 setPath:ClosedCGPathWithPoints];

  CGPathRelease(ClosedCGPathWithPoints);
}

- (void)updatePolygonLayer:(id)layer points:(id)points borderWidth:(double)width borderColor:(id)color
{
  layerCopy = layer;
  colorCopy = color;
  v11 = MEMORY[0x277D75348];
  pointsCopy = points;
  clearColor = [v11 clearColor];
  v14 = colorCopy;
  v15 = layerCopy;
  ClosedCGPathWithPoints = createClosedCGPathWithPoints(pointsCopy);

  v17 = clearColor;
  v20 = v15;
  v18 = v14;
  [v20 setFillColor:{objc_msgSend(clearColor, "CGColor")}];
  cGColor = [v18 CGColor];

  [v20 setStrokeColor:cGColor];
  [v20 setLineDashPhase:0.0];
  [v20 setLineDashPattern:0];
  [v20 setLineWidth:width];
  [v20 setPath:ClosedCGPathWithPoints];

  CGPathRelease(ClosedCGPathWithPoints);
}

- (void)updateFilledPolygonLayer:(id)layer path:(CGPath *)path fillColor:(id)color
{
  layerCopy = layer;
  v8 = MEMORY[0x277D75348];
  colorCopy = color;
  clearColor = [v8 clearColor];
  v11 = colorCopy;
  v13 = layerCopy;
  cGColor = [colorCopy CGColor];

  [v13 setFillColor:cGColor];
  [v13 setStrokeColor:{objc_msgSend(clearColor, "CGColor")}];
  [v13 setLineDashPhase:0.0];
  [v13 setLineDashPattern:0];
  [v13 setLineWidth:0.0];
  [v13 setPath:path];
}

- (void)updatePointsLayers:(id)layers points:(id)points colors:(id)colors size:(double)size
{
  pointsCopy = points;
  colorsCopy = colors;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__JFXOverlayEffectDebugView_updatePointsLayers_points_colors_size___block_invoke;
  v13[3] = &unk_278D7D168;
  sizeCopy = size;
  v14 = pointsCopy;
  v15 = colorsCopy;
  v11 = colorsCopy;
  v12 = pointsCopy;
  [layers enumerateObjectsUsingBlock:v13];
}

void __67__JFXOverlayEffectDebugView_updatePointsLayers_points_colors_size___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  [v6 CGPointValue];
  v8 = v7;

  v21.origin.x = CGRectMakeSquareWithSizeAndCenterPoint(*(a1 + 48), v8);
  v9 = pv_CGRect_to_NSArray(v21);
  v10 = [*(a1 + 40) objectAtIndexedSubscript:{a3 % objc_msgSend(*(a1 + 40), "count")}];
  v11 = [MEMORY[0x277D75348] clearColor];
  v12 = v5;
  v13 = v10;
  ClosedCGPathWithPoints = createClosedCGPathWithPoints(v9);
  v15 = v13;
  v19 = v12;
  v16 = v11;
  v17 = [v13 CGColor];

  [v19 setFillColor:v17];
  v18 = [v16 CGColor];

  [v19 setStrokeColor:v18];
  [v19 setLineDashPhase:0.0];
  [v19 setLineDashPattern:0];
  [v19 setLineWidth:0.0];
  [v19 setPath:ClosedCGPathWithPoints];

  CGPathRelease(ClosedCGPathWithPoints);
}

- (void)updateFilledCircleLayer:(id)layer center:(CGPoint)center radius:(double)radius fillColor:(id)color
{
  x = center.x;
  layerCopy = layer;
  colorCopy = color;
  v17.origin.x = CGRectMakeSquareWithSizeAndCenterPoint(radius + radius, x);
  v11 = CGPathCreateWithEllipseInRect(v17, 0);
  clearColor = [MEMORY[0x277D75348] clearColor];
  v13 = colorCopy;
  v15 = layerCopy;
  cGColor = [colorCopy CGColor];

  [v15 setFillColor:cGColor];
  [v15 setStrokeColor:{objc_msgSend(clearColor, "CGColor")}];
  [v15 setLineDashPhase:0.0];
  [v15 setLineDashPattern:0];
  [v15 setLineWidth:0.0];
  [v15 setPath:v11];

  CGPathRelease(v11);
}

- (void)updateCrosshairLayer:(id)layer center:(CGPoint)center color:(id)color size:(CGSize)size thickness:(CGSize)thickness
{
  height = thickness.height;
  width = thickness.width;
  v9 = size.height;
  v10 = size.width;
  y = center.y;
  x = center.x;
  v33[24] = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  colorCopy = color;
  v16 = CGSizeScale(v10, v9, 0.5);
  v18 = v17;
  v19 = CGSizeScale(width, height, 0.5);
  v33[0] = -v19;
  v33[1] = v20;
  v33[2] = -v16;
  v33[3] = v20;
  v33[4] = -v16;
  v33[5] = -v20;
  v33[6] = -v19;
  v33[7] = -v20;
  v33[8] = -v19;
  v33[9] = -v18;
  v33[10] = v19;
  v33[11] = -v18;
  v33[12] = v19;
  v33[13] = -v20;
  v33[14] = v16;
  v33[15] = -v20;
  v33[16] = v16;
  v33[17] = v20;
  v33[18] = v19;
  v33[19] = v20;
  v33[20] = v19;
  v33[21] = v18;
  v33[22] = -v19;
  v33[23] = v18;
  v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:12];
  for (i = 0; i != 24; i += 2)
  {
    v23 = [MEMORY[0x277CCAE60] valueWithCGPoint:{x + v33[i], y + v33[i + 1]}];
    [v21 addObject:v23];
  }

  clearColor = [MEMORY[0x277D75348] clearColor];
  v25 = layerCopy;
  v26 = colorCopy;
  ClosedCGPathWithPoints = createClosedCGPathWithPoints(v21);
  v28 = v26;
  v32 = v25;
  v29 = clearColor;
  cGColor = [v26 CGColor];

  [v32 setFillColor:cGColor];
  cGColor2 = [v29 CGColor];

  [v32 setStrokeColor:cGColor2];
  [v32 setLineDashPhase:0.0];
  [v32 setLineDashPattern:0];
  [v32 setLineWidth:0.0];
  [v32 setPath:ClosedCGPathWithPoints];

  CGPathRelease(ClosedCGPathWithPoints);
}

- (void)updateAdditionalRects:(id)rects transformedLayer:(id)layer effectScale:(double)scale rects:(id)a6
{
  rectsCopy = rects;
  layerCopy = layer;
  v11 = a6;
  [rectsCopy setHidden:{objc_msgSend(v11, "count") == 0}];
  [layerCopy setHidden:{objc_msgSend(rectsCopy, "isHidden")}];
  if (([rectsCopy isHidden] & 1) == 0)
  {
    sublayers = [rectsCopy sublayers];
    v13 = [sublayers copy];

    [v13 enumerateObjectsUsingBlock:&__block_literal_global_70];
    sublayers2 = [layerCopy sublayers];
    v15 = [sublayers2 copy];

    [v15 enumerateObjectsUsingBlock:&__block_literal_global_46];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __86__JFXOverlayEffectDebugView_updateAdditionalRects_transformedLayer_effectScale_rects___block_invoke_3;
    v16[3] = &unk_278D7D1B0;
    scaleCopy = scale;
    v17 = rectsCopy;
    v18 = layerCopy;
    [v11 enumerateObjectsUsingBlock:v16];
  }
}

void __86__JFXOverlayEffectDebugView_updateAdditionalRects_transformedLayer_effectScale_rects___block_invoke_3(uint64_t x0_0, void *a2)
{
  v20 = a2;
  v3 = [v20 ignoreTransform];
  [v20 borderWidth];
  v5 = v4;
  if ((v3 & 1) == 0)
  {
    v5 = v4 / *(x0_0 + 48);
  }

  v6 = [MEMORY[0x277CD9F90] layer];
  [v20 frame];
  v7 = pv_CGRect_to_NSArray(v22);
  v8 = [MEMORY[0x277D75348] clearColor];
  v9 = [v20 borderColor];
  v10 = v6;
  v11 = v8;
  ClosedCGPathWithPoints = createClosedCGPathWithPoints(v7);
  v13 = v11;
  v14 = v10;
  v15 = v9;
  v16 = [v11 CGColor];

  [v14 setFillColor:v16];
  v17 = [v15 CGColor];

  [v14 setStrokeColor:v17];
  [v14 setLineDashPhase:0.0];
  [v14 setLineDashPattern:0];
  [v14 setLineWidth:v5];
  [v14 setPath:ClosedCGPathWithPoints];

  CGPathRelease(ClosedCGPathWithPoints);
  v18 = [v20 ignoreTransform];
  v19 = 40;
  if (v18)
  {
    v19 = 32;
  }

  [*(x0_0 + v19) addSublayer:v14];
}

- (void)updateWithEffectFrame:(id)frame
{
  v288 = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  v5 = frameCopy;
  if (!frameCopy || [frameCopy isTrackedButTrackingUnavailable])
  {
    rootContainerView = [(JFXOverlayEffectDebugView *)self rootContainerView];
    [rootContainerView setHidden:1];

    goto LABEL_65;
  }

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  rootContainerView2 = [(JFXOverlayEffectDebugView *)self rootContainerView];
  [rootContainerView2 setHidden:0];

  [v5 relativeToSize];
  v289.origin.x = CGRectMakeWithSize();
  x = v289.origin.x;
  y = v289.origin.y;
  width = v289.size.width;
  height = v289.size.height;
  MidX = CGRectGetMidX(v289);
  v290.origin.x = x;
  v290.origin.y = y;
  v290.size.width = width;
  v290.size.height = height;
  MidY = CGRectGetMidY(v290);
  v273 = 0u;
  v274 = 0u;
  v272 = 0u;
  [(JFXOverlayEffectDebugView *)self transform];
  v14 = *(MEMORY[0x277CBF2C0] + 16);
  v264 = *MEMORY[0x277CBF2C0];
  v15 = *(MEMORY[0x277CBF2C0] + 32);
  v265 = v14;
  v266 = v15;
  [(JFXOverlayEffectDebugView *)self setTransform:&v264];
  [(JFXOverlayEffectDebugView *)self setFrame:x, y, width, height];
  v264 = v272;
  v265 = v273;
  v266 = v274;
  [(JFXOverlayEffectDebugView *)self setTransform:&v264];
  rootContainerView3 = [(JFXOverlayEffectDebugView *)self rootContainerView];
  [rootContainerView3 setFrame:{x, y, width, height}];

  rootTransformLayer = [(JFXOverlayEffectDebugView *)self rootTransformLayer];
  v18 = *(MEMORY[0x277CD9DE8] + 64);
  v19 = *(MEMORY[0x277CD9DE8] + 96);
  v20 = *(MEMORY[0x277CD9DE8] + 112);
  v269 = *(MEMORY[0x277CD9DE8] + 80);
  v270 = v19;
  v271 = v20;
  v21 = *(MEMORY[0x277CD9DE8] + 16);
  v264 = *MEMORY[0x277CD9DE8];
  v22 = *(MEMORY[0x277CD9DE8] + 32);
  v23 = *(MEMORY[0x277CD9DE8] + 48);
  v265 = v21;
  v266 = v22;
  v267 = v23;
  v268 = v18;
  [rootTransformLayer setTransform:&v264];

  rootTransformLayer2 = [(JFXOverlayEffectDebugView *)self rootTransformLayer];
  [rootTransformLayer2 setBounds:{x, y, width, height}];

  v26 = *MEMORY[0x277CBF348];
  v25 = *(MEMORY[0x277CBF348] + 8);
  rootTransformLayer3 = [(JFXOverlayEffectDebugView *)self rootTransformLayer];
  v249 = v25;
  [rootTransformLayer3 setPosition:{v26, v25}];

  v270 = 0u;
  v271 = 0u;
  v268 = 0u;
  v269 = 0u;
  v266 = 0u;
  v267 = 0u;
  v265 = 0u;
  v264 = 0u;
  [v5 transformInfo];
  v28 = fmax(fabs(*&v268), 0.001);
  [v5 transform];
  d = v283.d;
  b = v283.b;
  c = v283.c;
  a = v283.a;
  v245 = v287;
  v247 = v285;
  v237 = v286;
  v239 = v284;
  rootTransformLayer4 = [(JFXOverlayEffectDebugView *)self rootTransformLayer];
  v283.a = a;
  v283.b = b;
  v283.c = c;
  v283.d = d;
  v284 = v239;
  v285 = v247;
  v286 = v237;
  v287 = v245;
  [rootTransformLayer4 setTransform:&v283];

  documentBoundingBoxLayer = [(JFXOverlayEffectDebugView *)self documentBoundingBoxLayer];
  [documentBoundingBoxLayer setBounds:{x, y, width, height}];

  documentBoundingBoxLayer2 = [(JFXOverlayEffectDebugView *)self documentBoundingBoxLayer];
  [documentBoundingBoxLayer2 setPosition:{MidX, MidY}];

  outputROILayer = [(JFXOverlayEffectDebugView *)self outputROILayer];
  [outputROILayer setBounds:{x, y, width, height}];

  outputROILayer2 = [(JFXOverlayEffectDebugView *)self outputROILayer];
  [outputROILayer2 setPosition:{MidX, MidY}];

  objectAlignedBoundingBoxLayer = [(JFXOverlayEffectDebugView *)self objectAlignedBoundingBoxLayer];
  [objectAlignedBoundingBoxLayer setBounds:{x, y, width, height}];

  objectAlignedBoundingBoxLayer2 = [(JFXOverlayEffectDebugView *)self objectAlignedBoundingBoxLayer];
  [objectAlignedBoundingBoxLayer2 setPosition:{MidX, MidY}];

  textBoundingBoxesContainerLayer = [(JFXOverlayEffectDebugView *)self textBoundingBoxesContainerLayer];
  [textBoundingBoxesContainerLayer setBounds:{x, y, width, height}];

  textBoundingBoxesContainerLayer2 = [(JFXOverlayEffectDebugView *)self textBoundingBoxesContainerLayer];
  [textBoundingBoxesContainerLayer2 setPosition:{MidX, MidY}];

  midpointLayer = [(JFXOverlayEffectDebugView *)self midpointLayer];
  [midpointLayer setBounds:{x, y, width, height}];

  midpointLayer2 = [(JFXOverlayEffectDebugView *)self midpointLayer];
  [midpointLayer2 setPosition:{MidX, MidY}];

  overlayCenterLayer = [(JFXOverlayEffectDebugView *)self overlayCenterLayer];
  [overlayCenterLayer setBounds:{x, y, width, height}];

  overlayCenterLayer2 = [(JFXOverlayEffectDebugView *)self overlayCenterLayer];
  [overlayCenterLayer2 setPosition:{MidX, MidY}];

  originCrosshairLayer = [(JFXOverlayEffectDebugView *)self originCrosshairLayer];
  [originCrosshairLayer setBounds:{x, y, width, height}];

  originCrosshairLayer2 = [(JFXOverlayEffectDebugView *)self originCrosshairLayer];
  [originCrosshairLayer2 setPosition:{MidX, MidY}];

  cornerPointsLayer = [(JFXOverlayEffectDebugView *)self cornerPointsLayer];
  [cornerPointsLayer setBounds:{x, y, width, height}];

  cornerPointsLayer2 = [(JFXOverlayEffectDebugView *)self cornerPointsLayer];
  [cornerPointsLayer2 setPosition:{MidX, MidY}];

  textCornerPointsContainerLayer = [(JFXOverlayEffectDebugView *)self textCornerPointsContainerLayer];
  [textCornerPointsContainerLayer setBounds:{x, y, width, height}];

  textCornerPointsContainerLayer2 = [(JFXOverlayEffectDebugView *)self textCornerPointsContainerLayer];
  [textCornerPointsContainerLayer2 setPosition:{MidX, MidY}];

  hitAreaPointsLayer = [(JFXOverlayEffectDebugView *)self hitAreaPointsLayer];
  [hitAreaPointsLayer setBounds:{x, y, width, height}];

  hitAreaPointsLayer2 = [(JFXOverlayEffectDebugView *)self hitAreaPointsLayer];
  [hitAreaPointsLayer2 setPosition:{MidX, MidY}];

  additionalRectsLayer = [(JFXOverlayEffectDebugView *)self additionalRectsLayer];
  [additionalRectsLayer setBounds:{x, y, width, height}];

  additionalRectsLayer2 = [(JFXOverlayEffectDebugView *)self additionalRectsLayer];
  [additionalRectsLayer2 setPosition:{MidX, MidY}];

  additionalRectsTransformedLayer = [(JFXOverlayEffectDebugView *)self additionalRectsTransformedLayer];
  v248 = x;
  v246 = y;
  v244 = width;
  v242 = height;
  v53 = height;
  v54 = v28;
  [additionalRectsTransformedLayer setBounds:{x, y, width, v53}];

  additionalRectsTransformedLayer2 = [(JFXOverlayEffectDebugView *)self additionalRectsTransformedLayer];
  [additionalRectsTransformedLayer2 setPosition:{MidX, MidY}];

  options = [(JFXOverlayEffectDebugView *)self options];
  showDocumentBoundingBox = [options showDocumentBoundingBox];

  v58 = showDocumentBoundingBox ^ 1u;
  documentBoundingBoxLayer3 = [(JFXOverlayEffectDebugView *)self documentBoundingBoxLayer];
  [documentBoundingBoxLayer3 setHidden:v58];

  if ((v58 & 1) == 0)
  {
    SquareWithSize = CGRectMakeSquareWithSize();
    v62 = v61;
    v64 = v63;
    v66 = v65;
    [v5 effectSize];
    v68 = v67;
    v70 = v69;
    effectOrigin = [v5 effectOrigin];
    v72 = 0;
    v283.a.x = SquareWithSize;
    v283.a.y = v62;
    v283.b.x = SquareWithSize + v64;
    v283.b.y = v62;
    v283.c.x = SquareWithSize + v64;
    v283.c.y = v62 + v66;
    v283.d.x = SquareWithSize;
    v283.d.y = v62 + v66;
    while (1)
    {
      v254 = *(&v283.a.x + v72);
      v251 = *(&v283.a.y + v72);
      if (effectOrigin == 2)
      {
        break;
      }

      v73 = v249;
      v74 = v26;
      if (effectOrigin != 1)
      {
        goto LABEL_10;
      }

      memset(&v275, 0, sizeof(v275));
      CGAffineTransformMakeScale(&v275, v68, v70);
      v276 = v275;
      CGAffineTransformTranslate(&v277, &v276, v26, 1.0);
      v275 = v277;
      v276 = v277;
      CGAffineTransformScale(&v277, &v276, 1.0, -1.0);
LABEL_11:
      v275 = v277;
      *(&v283.a + v72) = vaddq_f64(*&v277.tx, vmlaq_n_f64(vmulq_n_f64(*&v277.c, v251), *&v277.a, v254));
      v72 += 16;
      if (v72 == 64)
      {
        v75 = 0;
        v76 = -1.79769313e308;
        v77 = 1.79769313e308;
        v78 = 1.79769313e308;
        v79 = -1.79769313e308;
        do
        {
          v80 = *(&v283.a.x + v75);
          v81 = *(&v283.a.y + v75);
          if (v80 < v77)
          {
            v77 = *(&v283.a.x + v75);
          }

          if (v80 > v76)
          {
            v76 = *(&v283.a.x + v75);
          }

          if (v81 > v79)
          {
            v79 = *(&v283.a.y + v75);
          }

          if (v81 < v78)
          {
            v78 = *(&v283.a.y + v75);
          }

          v75 += 16;
        }

        while (v75 != 64);
        v82 = v76 - v77;
        v83 = v79 - v78;
        documentBoundingBoxLayer4 = [(JFXOverlayEffectDebugView *)self documentBoundingBoxLayer];
        options2 = [(JFXOverlayEffectDebugView *)self options];
        documentBoundingBoxColor = [options2 documentBoundingBoxColor];
        v87 = [MEMORY[0x277CCABB0] numberWithDouble:8.0 / v54];
        v282[0] = v87;
        v88 = [MEMORY[0x277CCABB0] numberWithDouble:5.0 / v54];
        v282[1] = v88;
        v89 = [MEMORY[0x277CBEA60] arrayWithObjects:v282 count:2];
        [(JFXOverlayEffectDebugView *)self updateDottedBorderedLayer:documentBoundingBoxLayer4 borderRect:documentBoundingBoxColor borderWidth:v89 borderColor:v77 borderPhase:v78 borderDashPattern:v82, v83, 2.0 / v54, 0.0];

        goto LABEL_23;
      }
    }

    v73 = -0.5;
    v74 = -0.5;
LABEL_10:
    memset(&v275, 0, sizeof(v275));
    CGAffineTransformMakeScale(&v275, v68, v70);
    v276 = v275;
    CGAffineTransformTranslate(&v277, &v276, v74, v73);
    goto LABEL_11;
  }

LABEL_23:
  options3 = [(JFXOverlayEffectDebugView *)self options];
  showDocumentBoundingBox2 = [options3 showDocumentBoundingBox];

  v92 = showDocumentBoundingBox2 ^ 1u;
  outputROILayer3 = [(JFXOverlayEffectDebugView *)self outputROILayer];
  [outputROILayer3 setHidden:v92];

  if (v92)
  {
    goto LABEL_42;
  }

  v240 = v54;
  [v5 outputROI];
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v101 = v100;
  [v5 effectSize];
  v103 = v102;
  v105 = v104;
  [v5 effectSize];
  v107 = v106;
  v238 = v26;
  v109 = v108;
  effectOrigin2 = [v5 effectOrigin];
  v111 = 0;
  v283.a.x = v95;
  v283.a.y = v97;
  v283.b.x = v95 + v99;
  v283.b.y = v97;
  v283.c.x = v95 + v99;
  v283.c.y = v97 + v101;
  v283.d.x = v95;
  v283.d.y = v97 + v101;
  v112 = v107 / v103;
  v113 = v109 / v105;
  v26 = v238;
  do
  {
    v255 = *(&v283.a.x + v111);
    v252 = *(&v283.a.y + v111);
    if (effectOrigin2 == 2)
    {
      v114 = v105 * -0.5;
      v115 = v103 * -0.5;
    }

    else
    {
      v114 = v249;
      v115 = v238;
      if (effectOrigin2 == 1)
      {
        memset(&v275, 0, sizeof(v275));
        CGAffineTransformMakeScale(&v275, v112, v113);
        v276 = v275;
        CGAffineTransformTranslate(&v277, &v276, v238, v105);
        v275 = v277;
        v276 = v277;
        CGAffineTransformScale(&v277, &v276, 1.0, -1.0);
        goto LABEL_30;
      }
    }

    memset(&v275, 0, sizeof(v275));
    CGAffineTransformMakeScale(&v275, v112, v113);
    v276 = v275;
    CGAffineTransformTranslate(&v277, &v276, v115, v114);
LABEL_30:
    v275 = v277;
    *(&v283.a + v111) = vaddq_f64(*&v277.tx, vmlaq_n_f64(vmulq_n_f64(*&v277.c, v252), *&v277.a, v255));
    v111 += 16;
  }

  while (v111 != 64);
  v116 = 0;
  v117 = -1.79769313e308;
  v118 = 1.79769313e308;
  v119 = 1.79769313e308;
  v120 = -1.79769313e308;
  do
  {
    v121 = *(&v283.a.x + v116);
    v122 = *(&v283.a.y + v116);
    if (v121 < v118)
    {
      v118 = *(&v283.a.x + v116);
    }

    if (v121 > v117)
    {
      v117 = *(&v283.a.x + v116);
    }

    if (v122 > v120)
    {
      v120 = *(&v283.a.y + v116);
    }

    if (v122 < v119)
    {
      v119 = *(&v283.a.y + v116);
    }

    v116 += 16;
  }

  while (v116 != 64);
  v123 = v117 - v118;
  v124 = v120 - v119;
  outputROILayer4 = [(JFXOverlayEffectDebugView *)self outputROILayer];
  v54 = v240;
  options4 = [(JFXOverlayEffectDebugView *)self options];
  outputROIColor = [options4 outputROIColor];
  v240 = [MEMORY[0x277CCABB0] numberWithDouble:6.0 / v240];
  v281[0] = v240;
  v2402 = [MEMORY[0x277CCABB0] numberWithDouble:4.0 / v240];
  v281[1] = v2402;
  v130 = [MEMORY[0x277CBEA60] arrayWithObjects:v281 count:2];
  [(JFXOverlayEffectDebugView *)self updateDottedBorderedLayer:outputROILayer4 borderRect:outputROIColor borderWidth:v130 borderColor:v118 borderPhase:v119 borderDashPattern:v123, v124, 2.0 / v240, 0.0];

LABEL_42:
  options5 = [(JFXOverlayEffectDebugView *)self options];
  showObjectAlignedBoundingBox = [options5 showObjectAlignedBoundingBox];

  v133 = showObjectAlignedBoundingBox ^ 1u;
  objectAlignedBoundingBoxLayer3 = [(JFXOverlayEffectDebugView *)self objectAlignedBoundingBoxLayer];
  [objectAlignedBoundingBoxLayer3 setHidden:v133];

  if ((v133 & 1) == 0)
  {
    objectAlignedBoundingBoxLayer4 = [(JFXOverlayEffectDebugView *)self objectAlignedBoundingBoxLayer];
    [v5 objectBounds];
    v137 = v136;
    v139 = v138;
    v141 = v140;
    v143 = v142;
    options6 = [(JFXOverlayEffectDebugView *)self options];
    objectAlignedBoundingBoxColor = [options6 objectAlignedBoundingBoxColor];
    [(JFXOverlayEffectDebugView *)self updateBorderedLayer:objectAlignedBoundingBoxLayer4 borderRect:objectAlignedBoundingBoxColor borderWidth:v137 borderColor:v139, v141, v143, 2.0 / v54];
  }

  options7 = [(JFXOverlayEffectDebugView *)self options];
  if ([options7 showTextBoundingBoxes])
  {
    textFrames = [v5 textFrames];
    v148 = [textFrames count];

    textBoundingBoxesContainerLayer3 = [(JFXOverlayEffectDebugView *)self textBoundingBoxesContainerLayer];
    [textBoundingBoxesContainerLayer3 setHidden:v148 == 0];

    if (v148)
    {
      textBoundingBoxesContainerLayer4 = [(JFXOverlayEffectDebugView *)self textBoundingBoxesContainerLayer];
      textFrames2 = [v5 textFrames];
      ensureNSublayers(textBoundingBoxesContainerLayer4, [textFrames2 count]);

      textFrames3 = [v5 textFrames];
      v258[0] = MEMORY[0x277D85DD0];
      v258[1] = 3221225472;
      v258[2] = __51__JFXOverlayEffectDebugView_updateWithEffectFrame___block_invoke;
      v258[3] = &unk_278D7D1D8;
      v258[4] = self;
      v260 = v248;
      v261 = v246;
      v262 = v244;
      v263 = v242;
      v259 = v5;
      [textFrames3 enumerateObjectsUsingBlock:v258];
    }
  }

  else
  {

    textBoundingBoxesContainerLayer5 = [(JFXOverlayEffectDebugView *)self textBoundingBoxesContainerLayer];
    [textBoundingBoxesContainerLayer5 setHidden:1];
  }

  options8 = [(JFXOverlayEffectDebugView *)self options];
  showHitAreaBoundingBox = [options8 showHitAreaBoundingBox];

  hitAreaBoundingBoxLayer = [(JFXOverlayEffectDebugView *)self hitAreaBoundingBoxLayer];
  v157 = hitAreaBoundingBoxLayer;
  if (showHitAreaBoundingBox)
  {
    [hitAreaBoundingBoxLayer setHidden:0];

    hitAreaMinimumSizeBoundingBoxLayer = [(JFXOverlayEffectDebugView *)self hitAreaMinimumSizeBoundingBoxLayer];
    [hitAreaMinimumSizeBoundingBoxLayer setHidden:0];

    hitAreaBoundingBoxLayer2 = [(JFXOverlayEffectDebugView *)self hitAreaBoundingBoxLayer];
    hitAreaPoints = [v5 hitAreaPoints];
    options9 = [(JFXOverlayEffectDebugView *)self options];
    hitAreaBoundingBoxColor = [options9 hitAreaBoundingBoxColor];
    [(JFXOverlayEffectDebugView *)self updatePolygonLayer:hitAreaBoundingBoxLayer2 points:hitAreaPoints borderWidth:hitAreaBoundingBoxColor borderColor:3.0];

    hitAreaMinimumSizeBoundingBoxLayer2 = [(JFXOverlayEffectDebugView *)self hitAreaMinimumSizeBoundingBoxLayer];
    ensureNSublayers(hitAreaMinimumSizeBoundingBoxLayer2, 1uLL);

    hitAreaMinimumSizeBoundingBoxLayer3 = [(JFXOverlayEffectDebugView *)self hitAreaMinimumSizeBoundingBoxLayer];
    sublayers = [hitAreaMinimumSizeBoundingBoxLayer3 sublayers];
    firstObject = [sublayers firstObject];

    hitAreaPath = [v5 hitAreaPath];
    options10 = [(JFXOverlayEffectDebugView *)self options];
    hitAreaBoundingBoxColor2 = [options10 hitAreaBoundingBoxColor];
    [(JFXOverlayEffectDebugView *)self updateFilledPolygonLayer:firstObject path:hitAreaPath fillColor:hitAreaBoundingBoxColor2];

    hitAreaMinimumSizeBoundingBoxLayer4 = [(JFXOverlayEffectDebugView *)self hitAreaMinimumSizeBoundingBoxLayer];
    expandedHitAreaPath = [v5 expandedHitAreaPath];
    options11 = [(JFXOverlayEffectDebugView *)self options];
    hitAreaBoundingBoxColor3 = [options11 hitAreaBoundingBoxColor];
    [(JFXOverlayEffectDebugView *)self updateFilledPolygonLayer:hitAreaMinimumSizeBoundingBoxLayer4 path:expandedHitAreaPath fillColor:hitAreaBoundingBoxColor3];
  }

  else
  {
    [hitAreaBoundingBoxLayer setHidden:1];

    firstObject = [(JFXOverlayEffectDebugView *)self hitAreaMinimumSizeBoundingBoxLayer];
    [firstObject setHidden:1];
  }

  options12 = [(JFXOverlayEffectDebugView *)self options];
  showCornerPoints = [options12 showCornerPoints];

  v176 = showCornerPoints ^ 1u;
  cornerPointsLayer3 = [(JFXOverlayEffectDebugView *)self cornerPointsLayer];
  [cornerPointsLayer3 setHidden:v176];

  if ((v176 & 1) == 0)
  {
    cornerPointsLayer4 = [(JFXOverlayEffectDebugView *)self cornerPointsLayer];
    ensureNSublayers(cornerPointsLayer4, 4uLL);

    cornerPointsLayer5 = [(JFXOverlayEffectDebugView *)self cornerPointsLayer];
    sublayers2 = [cornerPointsLayer5 sublayers];

    [v5 cornerPoints];
    v181 = PVCGPointQuad_to_NSArray(&v283);
    options13 = [(JFXOverlayEffectDebugView *)self options];
    cornerPointColors = [options13 cornerPointColors];
    [(JFXOverlayEffectDebugView *)self updatePointsLayers:sublayers2 points:v181 colors:cornerPointColors size:4.0];
  }

  options14 = [(JFXOverlayEffectDebugView *)self options];
  showMidpoint = [options14 showMidpoint];

  v186 = showMidpoint ^ 1u;
  midpointLayer3 = [(JFXOverlayEffectDebugView *)self midpointLayer];
  [midpointLayer3 setHidden:v186];

  if ((v186 & 1) == 0)
  {
    midpointLayer4 = [(JFXOverlayEffectDebugView *)self midpointLayer];
    v280 = midpointLayer4;
    v189 = [MEMORY[0x277CBEA60] arrayWithObjects:&v280 count:1];
    v190 = MEMORY[0x277CCAE60];
    [v5 center];
    v191 = [v190 valueWithCGPoint:?];
    v279 = v191;
    v192 = [MEMORY[0x277CBEA60] arrayWithObjects:&v279 count:1];
    options15 = [(JFXOverlayEffectDebugView *)self options];
    midpointColor = [options15 midpointColor];
    v278 = midpointColor;
    v195 = [MEMORY[0x277CBEA60] arrayWithObjects:&v278 count:1];
    [(JFXOverlayEffectDebugView *)self updatePointsLayers:v189 points:v192 colors:v195 size:6.0];

    overlayCenterLayer3 = [(JFXOverlayEffectDebugView *)self overlayCenterLayer];
    [v5 overlayCenter];
    v198 = v197;
    v200 = v199;
    options16 = [(JFXOverlayEffectDebugView *)self options];
    overlayCenterColor = [options16 overlayCenterColor];
    [(JFXOverlayEffectDebugView *)self updateFilledCircleLayer:overlayCenterLayer3 center:overlayCenterColor radius:v198 fillColor:v200, 6.0];

    originCrosshairLayer3 = [(JFXOverlayEffectDebugView *)self originCrosshairLayer];
    options17 = [(JFXOverlayEffectDebugView *)self options];
    originCrosshairColor = [options17 originCrosshairColor];
    [(JFXOverlayEffectDebugView *)self updateCrosshairLayer:originCrosshairLayer3 center:originCrosshairColor color:v26 size:v249 thickness:10.0 / v54, 10.0 / v54, 2.0 / v54, 2.0 / v54];
  }

  options18 = [(JFXOverlayEffectDebugView *)self options];
  if ([options18 showTextCornerPoints])
  {
    textFrames4 = [v5 textFrames];
    v208 = [textFrames4 count];

    textCornerPointsContainerLayer3 = [(JFXOverlayEffectDebugView *)self textCornerPointsContainerLayer];
    [textCornerPointsContainerLayer3 setHidden:v208 == 0];

    if (v208)
    {
      textCornerPointsContainerLayer4 = [(JFXOverlayEffectDebugView *)self textCornerPointsContainerLayer];
      textFrames5 = [v5 textFrames];
      ensureNSublayers(textCornerPointsContainerLayer4, 4 * [textFrames5 count]);

      textCornerPointsContainerLayer5 = [(JFXOverlayEffectDebugView *)self textCornerPointsContainerLayer];
      sublayers3 = [textCornerPointsContainerLayer5 sublayers];

      v214 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(sublayers3, "count")}];
      textFrames6 = [v5 textFrames];
      v256[0] = MEMORY[0x277D85DD0];
      v256[1] = 3221225472;
      v256[2] = __51__JFXOverlayEffectDebugView_updateWithEffectFrame___block_invoke_2;
      v256[3] = &unk_278D7D200;
      v257 = v214;
      v216 = v214;
      [textFrames6 enumerateObjectsUsingBlock:v256];

      options19 = [(JFXOverlayEffectDebugView *)self options];
      textCornerPointColors = [options19 textCornerPointColors];
      [(JFXOverlayEffectDebugView *)self updatePointsLayers:sublayers3 points:v216 colors:textCornerPointColors size:4.0];

      goto LABEL_59;
    }
  }

  else
  {

    sublayers3 = [(JFXOverlayEffectDebugView *)self textCornerPointsContainerLayer];
    [sublayers3 setHidden:1];
LABEL_59:
  }

  options20 = [(JFXOverlayEffectDebugView *)self options];
  showHitAreaPoints = [options20 showHitAreaPoints];

  v221 = showHitAreaPoints ^ 1u;
  hitAreaPointsLayer3 = [(JFXOverlayEffectDebugView *)self hitAreaPointsLayer];
  [hitAreaPointsLayer3 setHidden:v221];

  if ((v221 & 1) == 0)
  {
    hitAreaPointsLayer4 = [(JFXOverlayEffectDebugView *)self hitAreaPointsLayer];
    hitAreaPoints2 = [v5 hitAreaPoints];
    ensureNSublayers(hitAreaPointsLayer4, [hitAreaPoints2 count]);

    hitAreaPointsLayer5 = [(JFXOverlayEffectDebugView *)self hitAreaPointsLayer];
    sublayers4 = [hitAreaPointsLayer5 sublayers];

    hitAreaPoints3 = [v5 hitAreaPoints];
    options21 = [(JFXOverlayEffectDebugView *)self options];
    hitAreaPointColors = [options21 hitAreaPointColors];
    [(JFXOverlayEffectDebugView *)self updatePointsLayers:sublayers4 points:hitAreaPoints3 colors:hitAreaPointColors size:4.0];
  }

  options22 = [(JFXOverlayEffectDebugView *)self options];
  showAdditionalRects = [options22 showAdditionalRects];

  v232 = showAdditionalRects ^ 1u;
  additionalRectsLayer3 = [(JFXOverlayEffectDebugView *)self additionalRectsLayer];
  [additionalRectsLayer3 setHidden:v232];

  if ((v232 & 1) == 0)
  {
    additionalRectsLayer4 = [(JFXOverlayEffectDebugView *)self additionalRectsLayer];
    additionalRectsTransformedLayer3 = [(JFXOverlayEffectDebugView *)self additionalRectsTransformedLayer];
    additionalRectsToDraw = [(JFXOverlayEffectDebugView *)self additionalRectsToDraw];
    [(JFXOverlayEffectDebugView *)self updateAdditionalRects:additionalRectsLayer4 transformedLayer:additionalRectsTransformedLayer3 effectScale:additionalRectsToDraw rects:v54];
  }

  [MEMORY[0x277CD9FF0] commit];
LABEL_65:
}

void __51__JFXOverlayEffectDebugView_updateWithEffectFrame___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v52[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 32) textBoundingBoxesContainerLayer];
  v7 = [v6 sublayers];
  v8 = [v7 objectAtIndexedSubscript:a3];

  ensureNSublayers(v8, 1uLL);
  v9 = *(MEMORY[0x277CD9DE8] + 80);
  v48 = *(MEMORY[0x277CD9DE8] + 64);
  v49 = v9;
  v10 = *(MEMORY[0x277CD9DE8] + 112);
  v50 = *(MEMORY[0x277CD9DE8] + 96);
  v51 = v10;
  v11 = *(MEMORY[0x277CD9DE8] + 16);
  v44 = *MEMORY[0x277CD9DE8];
  v45 = v11;
  v12 = *(MEMORY[0x277CD9DE8] + 48);
  v46 = *(MEMORY[0x277CD9DE8] + 32);
  v47 = v12;
  [v8 setTransform:&v44];
  [v8 setBounds:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v13 = *MEMORY[0x277CBF348];
  v14 = *(MEMORY[0x277CBF348] + 8);
  [v8 setPosition:{*MEMORY[0x277CBF348], v14}];
  [v8 setAnchorPoint:{v13, v14}];
  if (v5)
  {
    [v5 transform];
    v16 = v44;
    v15 = v45;
    v18 = v46;
    v17 = v47;
    v20 = v48;
    v19 = v49;
    v22 = v50;
    v21 = v51;
  }

  else
  {
    v22 = 0uLL;
    v21 = 0uLL;
    v20 = 0uLL;
    v19 = 0uLL;
    v18 = 0uLL;
    v17 = 0uLL;
    v16 = 0uLL;
    v15 = 0uLL;
  }

  v44 = v16;
  v45 = v15;
  v46 = v18;
  v47 = v17;
  v48 = v20;
  v49 = v19;
  v50 = v22;
  v51 = v21;
  [v8 setTransform:&v44];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  if (v5)
  {
    [v5 transformInfo];
    v23 = *&v48;
  }

  else
  {
    v23 = 0.0;
  }

  v24 = fmax(fabs(v23), 0.001);
  v25 = [v8 sublayers];
  v26 = [v25 objectAtIndexedSubscript:0];

  v27 = *(a1 + 32);
  [v5 objectBounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = [*(a1 + 32) options];
  v37 = [v36 textBoundingBoxColors];
  v38 = [*(a1 + 40) textFrames];
  v39 = [v37 objectAtIndexedSubscript:{a3 % objc_msgSend(v38, "count")}];
  v43 = v5;
  v40 = [MEMORY[0x277CCABB0] numberWithDouble:6.0 / v24];
  v52[0] = v40;
  v41 = [MEMORY[0x277CCABB0] numberWithDouble:3.0 / v24];
  v52[1] = v41;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
  [v27 updateDottedBorderedLayer:v26 borderRect:v39 borderWidth:v42 borderColor:v29 borderPhase:v31 borderDashPattern:{v33, v35, 1.0 / v24, 0.0}];
}

void __51__JFXOverlayEffectDebugView_updateWithEffectFrame___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    [a2 cornerPoints];
  }

  else
  {
    memset(&v4, 0, sizeof(v4));
  }

  v3 = PVCGPointQuad_to_NSArray(&v4);
  [v2 addObjectsFromArray:v3];
}

- (id)additionalRectsToDraw
{
  delegate = [(JFXOverlayEffectDebugView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(JFXOverlayEffectDebugView *)self delegate];
    overlayEffectDebugViewAdditionalRectsToDraw = [delegate2 overlayEffectDebugViewAdditionalRectsToDraw];
  }

  else
  {
    overlayEffectDebugViewAdditionalRectsToDraw = 0;
  }

  return overlayEffectDebugViewAdditionalRectsToDraw;
}

- (JFXOverlayEffectDebugViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end