@interface JFXOverlayEffectDebugView
- (JFXOverlayEffectDebugView)initWithCoder:(id)a3;
- (JFXOverlayEffectDebugView)initWithFrame:(CGRect)a3 delegate:(id)a4;
- (JFXOverlayEffectDebugViewDelegate)delegate;
- (id)additionalRectsToDraw;
- (void)setupViews;
- (void)updateAdditionalRects:(id)a3 transformedLayer:(id)a4 effectScale:(double)a5 rects:(id)a6;
- (void)updateBorderedLayer:(id)a3 borderRect:(CGRect)a4 borderWidth:(double)a5 borderColor:(id)a6;
- (void)updateCrosshairLayer:(id)a3 center:(CGPoint)a4 color:(id)a5 size:(CGSize)a6 thickness:(CGSize)a7;
- (void)updateDottedBorderedLayer:(id)a3 borderRect:(CGRect)a4 borderWidth:(double)a5 borderColor:(id)a6 borderPhase:(double)a7 borderDashPattern:(id)a8;
- (void)updateFilledCircleLayer:(id)a3 center:(CGPoint)a4 radius:(double)a5 fillColor:(id)a6;
- (void)updateFilledPolygonLayer:(id)a3 path:(CGPath *)a4 fillColor:(id)a5;
- (void)updatePointsLayers:(id)a3 points:(id)a4 colors:(id)a5 size:(double)a6;
- (void)updatePolygonLayer:(id)a3 points:(id)a4 borderWidth:(double)a5 borderColor:(id)a6;
- (void)updateWithEffectFrame:(id)a3;
@end

@implementation JFXOverlayEffectDebugView

- (JFXOverlayEffectDebugView)initWithFrame:(CGRect)a3 delegate:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = JFXOverlayEffectDebugView;
  v10 = [(JFXOverlayEffectDebugView *)&v13 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    [(JFXOverlayEffectDebugView *)v10 setDelegate:v9];
    [(JFXOverlayEffectDebugView *)v11 setupViews];
  }

  return v11;
}

- (JFXOverlayEffectDebugView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = JFXOverlayEffectDebugView;
  v3 = [(JFXOverlayEffectDebugView *)&v6 initWithCoder:a3];
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

  v5 = [(JFXOverlayEffectDebugView *)self rootContainerView];
  [v5 setHidden:1];

  v6 = [(JFXOverlayEffectDebugView *)self rootContainerView];
  [(JFXOverlayEffectDebugView *)self addSubview:v6];

  v7 = [(JFXOverlayEffectDebugView *)self rootContainerView];
  v8 = [v7 layer];
  [(JFXOverlayEffectDebugView *)self setRootLayer:v8];

  v9 = [MEMORY[0x277CD9FF8] layer];
  [(JFXOverlayEffectDebugView *)self setRootTransformLayer:v9];

  v10 = *MEMORY[0x277CBF348];
  v11 = *(MEMORY[0x277CBF348] + 8);
  v12 = [(JFXOverlayEffectDebugView *)self rootTransformLayer];
  [v12 setAnchorPoint:{v10, v11}];

  v13 = [(JFXOverlayEffectDebugView *)self rootLayer];
  v14 = [(JFXOverlayEffectDebugView *)self rootTransformLayer];
  [v13 addSublayer:v14];

  v15 = [MEMORY[0x277CD9F90] layer];
  [(JFXOverlayEffectDebugView *)self setDocumentBoundingBoxLayer:v15];

  v16 = [(JFXOverlayEffectDebugView *)self rootTransformLayer];
  v17 = [(JFXOverlayEffectDebugView *)self documentBoundingBoxLayer];
  [v16 addSublayer:v17];

  v18 = [MEMORY[0x277CD9F90] layer];
  [(JFXOverlayEffectDebugView *)self setOutputROILayer:v18];

  v19 = [(JFXOverlayEffectDebugView *)self rootTransformLayer];
  v20 = [(JFXOverlayEffectDebugView *)self outputROILayer];
  [v19 addSublayer:v20];

  v21 = [MEMORY[0x277CD9F90] layer];
  [(JFXOverlayEffectDebugView *)self setObjectAlignedBoundingBoxLayer:v21];

  v22 = [(JFXOverlayEffectDebugView *)self rootTransformLayer];
  v23 = [(JFXOverlayEffectDebugView *)self objectAlignedBoundingBoxLayer];
  [v22 addSublayer:v23];

  v24 = [MEMORY[0x277CD9ED0] layer];
  [(JFXOverlayEffectDebugView *)self setTextBoundingBoxesContainerLayer:v24];

  v25 = [(JFXOverlayEffectDebugView *)self rootLayer];
  v26 = [(JFXOverlayEffectDebugView *)self textBoundingBoxesContainerLayer];
  [v25 addSublayer:v26];

  v27 = [MEMORY[0x277CD9F90] layer];
  [(JFXOverlayEffectDebugView *)self setHitAreaBoundingBoxLayer:v27];

  v28 = [(JFXOverlayEffectDebugView *)self rootLayer];
  v29 = [(JFXOverlayEffectDebugView *)self hitAreaBoundingBoxLayer];
  [v28 addSublayer:v29];

  v30 = [MEMORY[0x277CD9F90] layer];
  [(JFXOverlayEffectDebugView *)self setHitAreaMinimumSizeBoundingBoxLayer:v30];

  v31 = [(JFXOverlayEffectDebugView *)self rootLayer];
  v32 = [(JFXOverlayEffectDebugView *)self hitAreaMinimumSizeBoundingBoxLayer];
  [v31 addSublayer:v32];

  v33 = [(JFXOverlayEffectDebugView *)self hitAreaMinimumSizeBoundingBoxLayer];
  LODWORD(v34) = 1050253722;
  [v33 setOpacity:v34];

  v35 = [MEMORY[0x277CD9F90] layer];
  [(JFXOverlayEffectDebugView *)self setMidpointLayer:v35];

  v36 = [(JFXOverlayEffectDebugView *)self rootLayer];
  v37 = [(JFXOverlayEffectDebugView *)self midpointLayer];
  [v36 addSublayer:v37];

  v38 = [MEMORY[0x277CD9F90] layer];
  [(JFXOverlayEffectDebugView *)self setOverlayCenterLayer:v38];

  v39 = [(JFXOverlayEffectDebugView *)self rootLayer];
  v40 = [(JFXOverlayEffectDebugView *)self overlayCenterLayer];
  [v39 addSublayer:v40];

  v41 = [MEMORY[0x277CD9F90] layer];
  [(JFXOverlayEffectDebugView *)self setOriginCrosshairLayer:v41];

  v42 = [(JFXOverlayEffectDebugView *)self rootTransformLayer];
  v43 = [(JFXOverlayEffectDebugView *)self originCrosshairLayer];
  [v42 addSublayer:v43];

  v44 = [MEMORY[0x277CD9F90] layer];
  [(JFXOverlayEffectDebugView *)self setCornerPointsLayer:v44];

  v45 = [(JFXOverlayEffectDebugView *)self rootLayer];
  v46 = [(JFXOverlayEffectDebugView *)self cornerPointsLayer];
  [v45 addSublayer:v46];

  v47 = [MEMORY[0x277CD9ED0] layer];
  [(JFXOverlayEffectDebugView *)self setTextCornerPointsContainerLayer:v47];

  v48 = [(JFXOverlayEffectDebugView *)self rootLayer];
  v49 = [(JFXOverlayEffectDebugView *)self textCornerPointsContainerLayer];
  [v48 addSublayer:v49];

  v50 = [MEMORY[0x277CD9F90] layer];
  [(JFXOverlayEffectDebugView *)self setHitAreaPointsLayer:v50];

  v51 = [(JFXOverlayEffectDebugView *)self rootLayer];
  v52 = [(JFXOverlayEffectDebugView *)self hitAreaPointsLayer];
  [v51 addSublayer:v52];

  v53 = [MEMORY[0x277CD9F90] layer];
  [(JFXOverlayEffectDebugView *)self setAdditionalRectsLayer:v53];

  v54 = [(JFXOverlayEffectDebugView *)self rootLayer];
  v55 = [(JFXOverlayEffectDebugView *)self additionalRectsLayer];
  [v54 addSublayer:v55];

  v56 = [MEMORY[0x277CD9F90] layer];
  [(JFXOverlayEffectDebugView *)self setAdditionalRectsTransformedLayer:v56];

  v57 = [(JFXOverlayEffectDebugView *)self rootTransformLayer];
  v58 = [(JFXOverlayEffectDebugView *)self additionalRectsTransformedLayer];
  [v57 addSublayer:v58];

  v59 = [(JFXOverlayEffectDebugView *)self delegate];
  LOBYTE(v58) = objc_opt_respondsToSelector();

  if ((v58 & 1) != 0 && (-[JFXOverlayEffectDebugView delegate](self, "delegate"), v60 = objc_claimAutoreleasedReturnValue(), [v60 overlayEffectDebugViewOptions], v63 = objc_claimAutoreleasedReturnValue(), v60, v63))
  {
    v61 = self;
    v62 = v63;
  }

  else
  {
    v62 = objc_opt_new();
    v61 = self;
    v63 = v62;
  }

  [(JFXOverlayEffectDebugView *)v61 setOptions:v62];
}

- (void)updateDottedBorderedLayer:(id)a3 borderRect:(CGRect)a4 borderWidth:(double)a5 borderColor:(id)a6 borderPhase:(double)a7 borderDashPattern:(id)a8
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v16 = a3;
  v17 = a6;
  v18 = a8;
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v19 = pv_CGRect_to_NSArray(v31);
  v20 = [MEMORY[0x277D75348] clearColor];
  v21 = v18;
  v22 = v17;
  v23 = v16;
  ClosedCGPathWithPoints = createClosedCGPathWithPoints(v19);
  v25 = v20;
  v29 = v23;
  v26 = v22;
  v27 = v21;
  [v29 setFillColor:{objc_msgSend(v20, "CGColor")}];
  v28 = [v26 CGColor];

  [v29 setStrokeColor:v28];
  [v29 setLineDashPhase:a7];
  [v29 setLineDashPattern:v27];

  [v29 setLineWidth:a5 * 0.5];
  [v29 setPath:ClosedCGPathWithPoints];

  CGPathRelease(ClosedCGPathWithPoints);
}

- (void)updateBorderedLayer:(id)a3 borderRect:(CGRect)a4 borderWidth:(double)a5 borderColor:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a3;
  v13 = a6;
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v14 = pv_CGRect_to_NSArray(v24);
  v15 = [MEMORY[0x277D75348] clearColor];
  v16 = v13;
  v17 = v12;
  ClosedCGPathWithPoints = createClosedCGPathWithPoints(v14);
  v19 = v15;
  v22 = v17;
  v20 = v16;
  [v22 setFillColor:{objc_msgSend(v15, "CGColor")}];
  v21 = [v20 CGColor];

  [v22 setStrokeColor:v21];
  [v22 setLineDashPhase:0.0];
  [v22 setLineDashPattern:0];
  [v22 setLineWidth:a5];
  [v22 setPath:ClosedCGPathWithPoints];

  CGPathRelease(ClosedCGPathWithPoints);
}

- (void)updatePolygonLayer:(id)a3 points:(id)a4 borderWidth:(double)a5 borderColor:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = MEMORY[0x277D75348];
  v12 = a4;
  v13 = [v11 clearColor];
  v14 = v10;
  v15 = v9;
  ClosedCGPathWithPoints = createClosedCGPathWithPoints(v12);

  v17 = v13;
  v20 = v15;
  v18 = v14;
  [v20 setFillColor:{objc_msgSend(v13, "CGColor")}];
  v19 = [v18 CGColor];

  [v20 setStrokeColor:v19];
  [v20 setLineDashPhase:0.0];
  [v20 setLineDashPattern:0];
  [v20 setLineWidth:a5];
  [v20 setPath:ClosedCGPathWithPoints];

  CGPathRelease(ClosedCGPathWithPoints);
}

- (void)updateFilledPolygonLayer:(id)a3 path:(CGPath *)a4 fillColor:(id)a5
{
  v7 = a3;
  v8 = MEMORY[0x277D75348];
  v9 = a5;
  v10 = [v8 clearColor];
  v11 = v9;
  v13 = v7;
  v12 = [v9 CGColor];

  [v13 setFillColor:v12];
  [v13 setStrokeColor:{objc_msgSend(v10, "CGColor")}];
  [v13 setLineDashPhase:0.0];
  [v13 setLineDashPattern:0];
  [v13 setLineWidth:0.0];
  [v13 setPath:a4];
}

- (void)updatePointsLayers:(id)a3 points:(id)a4 colors:(id)a5 size:(double)a6
{
  v9 = a4;
  v10 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__JFXOverlayEffectDebugView_updatePointsLayers_points_colors_size___block_invoke;
  v13[3] = &unk_278D7D168;
  v16 = a6;
  v14 = v9;
  v15 = v10;
  v11 = v10;
  v12 = v9;
  [a3 enumerateObjectsUsingBlock:v13];
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

- (void)updateFilledCircleLayer:(id)a3 center:(CGPoint)a4 radius:(double)a5 fillColor:(id)a6
{
  x = a4.x;
  v9 = a3;
  v10 = a6;
  v17.origin.x = CGRectMakeSquareWithSizeAndCenterPoint(a5 + a5, x);
  v11 = CGPathCreateWithEllipseInRect(v17, 0);
  v12 = [MEMORY[0x277D75348] clearColor];
  v13 = v10;
  v15 = v9;
  v14 = [v10 CGColor];

  [v15 setFillColor:v14];
  [v15 setStrokeColor:{objc_msgSend(v12, "CGColor")}];
  [v15 setLineDashPhase:0.0];
  [v15 setLineDashPattern:0];
  [v15 setLineWidth:0.0];
  [v15 setPath:v11];

  CGPathRelease(v11);
}

- (void)updateCrosshairLayer:(id)a3 center:(CGPoint)a4 color:(id)a5 size:(CGSize)a6 thickness:(CGSize)a7
{
  height = a7.height;
  width = a7.width;
  v9 = a6.height;
  v10 = a6.width;
  y = a4.y;
  x = a4.x;
  v33[24] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a5;
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

  v24 = [MEMORY[0x277D75348] clearColor];
  v25 = v14;
  v26 = v15;
  ClosedCGPathWithPoints = createClosedCGPathWithPoints(v21);
  v28 = v26;
  v32 = v25;
  v29 = v24;
  v30 = [v26 CGColor];

  [v32 setFillColor:v30];
  v31 = [v29 CGColor];

  [v32 setStrokeColor:v31];
  [v32 setLineDashPhase:0.0];
  [v32 setLineDashPattern:0];
  [v32 setLineWidth:0.0];
  [v32 setPath:ClosedCGPathWithPoints];

  CGPathRelease(ClosedCGPathWithPoints);
}

- (void)updateAdditionalRects:(id)a3 transformedLayer:(id)a4 effectScale:(double)a5 rects:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  [v9 setHidden:{objc_msgSend(v11, "count") == 0}];
  [v10 setHidden:{objc_msgSend(v9, "isHidden")}];
  if (([v9 isHidden] & 1) == 0)
  {
    v12 = [v9 sublayers];
    v13 = [v12 copy];

    [v13 enumerateObjectsUsingBlock:&__block_literal_global_70];
    v14 = [v10 sublayers];
    v15 = [v14 copy];

    [v15 enumerateObjectsUsingBlock:&__block_literal_global_46];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __86__JFXOverlayEffectDebugView_updateAdditionalRects_transformedLayer_effectScale_rects___block_invoke_3;
    v16[3] = &unk_278D7D1B0;
    v19 = a5;
    v17 = v9;
    v18 = v10;
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

- (void)updateWithEffectFrame:(id)a3
{
  v288 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4 || [v4 isTrackedButTrackingUnavailable])
  {
    v6 = [(JFXOverlayEffectDebugView *)self rootContainerView];
    [v6 setHidden:1];

    goto LABEL_65;
  }

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v7 = [(JFXOverlayEffectDebugView *)self rootContainerView];
  [v7 setHidden:0];

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
  v16 = [(JFXOverlayEffectDebugView *)self rootContainerView];
  [v16 setFrame:{x, y, width, height}];

  v17 = [(JFXOverlayEffectDebugView *)self rootTransformLayer];
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
  [v17 setTransform:&v264];

  v24 = [(JFXOverlayEffectDebugView *)self rootTransformLayer];
  [v24 setBounds:{x, y, width, height}];

  v26 = *MEMORY[0x277CBF348];
  v25 = *(MEMORY[0x277CBF348] + 8);
  v27 = [(JFXOverlayEffectDebugView *)self rootTransformLayer];
  v249 = v25;
  [v27 setPosition:{v26, v25}];

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
  v29 = [(JFXOverlayEffectDebugView *)self rootTransformLayer];
  v283.a = a;
  v283.b = b;
  v283.c = c;
  v283.d = d;
  v284 = v239;
  v285 = v247;
  v286 = v237;
  v287 = v245;
  [v29 setTransform:&v283];

  v30 = [(JFXOverlayEffectDebugView *)self documentBoundingBoxLayer];
  [v30 setBounds:{x, y, width, height}];

  v31 = [(JFXOverlayEffectDebugView *)self documentBoundingBoxLayer];
  [v31 setPosition:{MidX, MidY}];

  v32 = [(JFXOverlayEffectDebugView *)self outputROILayer];
  [v32 setBounds:{x, y, width, height}];

  v33 = [(JFXOverlayEffectDebugView *)self outputROILayer];
  [v33 setPosition:{MidX, MidY}];

  v34 = [(JFXOverlayEffectDebugView *)self objectAlignedBoundingBoxLayer];
  [v34 setBounds:{x, y, width, height}];

  v35 = [(JFXOverlayEffectDebugView *)self objectAlignedBoundingBoxLayer];
  [v35 setPosition:{MidX, MidY}];

  v36 = [(JFXOverlayEffectDebugView *)self textBoundingBoxesContainerLayer];
  [v36 setBounds:{x, y, width, height}];

  v37 = [(JFXOverlayEffectDebugView *)self textBoundingBoxesContainerLayer];
  [v37 setPosition:{MidX, MidY}];

  v38 = [(JFXOverlayEffectDebugView *)self midpointLayer];
  [v38 setBounds:{x, y, width, height}];

  v39 = [(JFXOverlayEffectDebugView *)self midpointLayer];
  [v39 setPosition:{MidX, MidY}];

  v40 = [(JFXOverlayEffectDebugView *)self overlayCenterLayer];
  [v40 setBounds:{x, y, width, height}];

  v41 = [(JFXOverlayEffectDebugView *)self overlayCenterLayer];
  [v41 setPosition:{MidX, MidY}];

  v42 = [(JFXOverlayEffectDebugView *)self originCrosshairLayer];
  [v42 setBounds:{x, y, width, height}];

  v43 = [(JFXOverlayEffectDebugView *)self originCrosshairLayer];
  [v43 setPosition:{MidX, MidY}];

  v44 = [(JFXOverlayEffectDebugView *)self cornerPointsLayer];
  [v44 setBounds:{x, y, width, height}];

  v45 = [(JFXOverlayEffectDebugView *)self cornerPointsLayer];
  [v45 setPosition:{MidX, MidY}];

  v46 = [(JFXOverlayEffectDebugView *)self textCornerPointsContainerLayer];
  [v46 setBounds:{x, y, width, height}];

  v47 = [(JFXOverlayEffectDebugView *)self textCornerPointsContainerLayer];
  [v47 setPosition:{MidX, MidY}];

  v48 = [(JFXOverlayEffectDebugView *)self hitAreaPointsLayer];
  [v48 setBounds:{x, y, width, height}];

  v49 = [(JFXOverlayEffectDebugView *)self hitAreaPointsLayer];
  [v49 setPosition:{MidX, MidY}];

  v50 = [(JFXOverlayEffectDebugView *)self additionalRectsLayer];
  [v50 setBounds:{x, y, width, height}];

  v51 = [(JFXOverlayEffectDebugView *)self additionalRectsLayer];
  [v51 setPosition:{MidX, MidY}];

  v52 = [(JFXOverlayEffectDebugView *)self additionalRectsTransformedLayer];
  v248 = x;
  v246 = y;
  v244 = width;
  v242 = height;
  v53 = height;
  v54 = v28;
  [v52 setBounds:{x, y, width, v53}];

  v55 = [(JFXOverlayEffectDebugView *)self additionalRectsTransformedLayer];
  [v55 setPosition:{MidX, MidY}];

  v56 = [(JFXOverlayEffectDebugView *)self options];
  v57 = [v56 showDocumentBoundingBox];

  v58 = v57 ^ 1u;
  v59 = [(JFXOverlayEffectDebugView *)self documentBoundingBoxLayer];
  [v59 setHidden:v58];

  if ((v58 & 1) == 0)
  {
    SquareWithSize = CGRectMakeSquareWithSize();
    v62 = v61;
    v64 = v63;
    v66 = v65;
    [v5 effectSize];
    v68 = v67;
    v70 = v69;
    v71 = [v5 effectOrigin];
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
      if (v71 == 2)
      {
        break;
      }

      v73 = v249;
      v74 = v26;
      if (v71 != 1)
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
        v84 = [(JFXOverlayEffectDebugView *)self documentBoundingBoxLayer];
        v85 = [(JFXOverlayEffectDebugView *)self options];
        v86 = [v85 documentBoundingBoxColor];
        v87 = [MEMORY[0x277CCABB0] numberWithDouble:8.0 / v54];
        v282[0] = v87;
        v88 = [MEMORY[0x277CCABB0] numberWithDouble:5.0 / v54];
        v282[1] = v88;
        v89 = [MEMORY[0x277CBEA60] arrayWithObjects:v282 count:2];
        [(JFXOverlayEffectDebugView *)self updateDottedBorderedLayer:v84 borderRect:v86 borderWidth:v89 borderColor:v77 borderPhase:v78 borderDashPattern:v82, v83, 2.0 / v54, 0.0];

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
  v90 = [(JFXOverlayEffectDebugView *)self options];
  v91 = [v90 showDocumentBoundingBox];

  v92 = v91 ^ 1u;
  v93 = [(JFXOverlayEffectDebugView *)self outputROILayer];
  [v93 setHidden:v92];

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
  v110 = [v5 effectOrigin];
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
    if (v110 == 2)
    {
      v114 = v105 * -0.5;
      v115 = v103 * -0.5;
    }

    else
    {
      v114 = v249;
      v115 = v238;
      if (v110 == 1)
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
  v125 = [(JFXOverlayEffectDebugView *)self outputROILayer];
  v54 = v240;
  v126 = [(JFXOverlayEffectDebugView *)self options];
  v127 = [v126 outputROIColor];
  v128 = [MEMORY[0x277CCABB0] numberWithDouble:6.0 / v240];
  v281[0] = v128;
  v129 = [MEMORY[0x277CCABB0] numberWithDouble:4.0 / v240];
  v281[1] = v129;
  v130 = [MEMORY[0x277CBEA60] arrayWithObjects:v281 count:2];
  [(JFXOverlayEffectDebugView *)self updateDottedBorderedLayer:v125 borderRect:v127 borderWidth:v130 borderColor:v118 borderPhase:v119 borderDashPattern:v123, v124, 2.0 / v240, 0.0];

LABEL_42:
  v131 = [(JFXOverlayEffectDebugView *)self options];
  v132 = [v131 showObjectAlignedBoundingBox];

  v133 = v132 ^ 1u;
  v134 = [(JFXOverlayEffectDebugView *)self objectAlignedBoundingBoxLayer];
  [v134 setHidden:v133];

  if ((v133 & 1) == 0)
  {
    v135 = [(JFXOverlayEffectDebugView *)self objectAlignedBoundingBoxLayer];
    [v5 objectBounds];
    v137 = v136;
    v139 = v138;
    v141 = v140;
    v143 = v142;
    v144 = [(JFXOverlayEffectDebugView *)self options];
    v145 = [v144 objectAlignedBoundingBoxColor];
    [(JFXOverlayEffectDebugView *)self updateBorderedLayer:v135 borderRect:v145 borderWidth:v137 borderColor:v139, v141, v143, 2.0 / v54];
  }

  v146 = [(JFXOverlayEffectDebugView *)self options];
  if ([v146 showTextBoundingBoxes])
  {
    v147 = [v5 textFrames];
    v148 = [v147 count];

    v149 = [(JFXOverlayEffectDebugView *)self textBoundingBoxesContainerLayer];
    [v149 setHidden:v148 == 0];

    if (v148)
    {
      v150 = [(JFXOverlayEffectDebugView *)self textBoundingBoxesContainerLayer];
      v151 = [v5 textFrames];
      ensureNSublayers(v150, [v151 count]);

      v152 = [v5 textFrames];
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
      [v152 enumerateObjectsUsingBlock:v258];
    }
  }

  else
  {

    v153 = [(JFXOverlayEffectDebugView *)self textBoundingBoxesContainerLayer];
    [v153 setHidden:1];
  }

  v154 = [(JFXOverlayEffectDebugView *)self options];
  v155 = [v154 showHitAreaBoundingBox];

  v156 = [(JFXOverlayEffectDebugView *)self hitAreaBoundingBoxLayer];
  v157 = v156;
  if (v155)
  {
    [v156 setHidden:0];

    v158 = [(JFXOverlayEffectDebugView *)self hitAreaMinimumSizeBoundingBoxLayer];
    [v158 setHidden:0];

    v159 = [(JFXOverlayEffectDebugView *)self hitAreaBoundingBoxLayer];
    v160 = [v5 hitAreaPoints];
    v161 = [(JFXOverlayEffectDebugView *)self options];
    v162 = [v161 hitAreaBoundingBoxColor];
    [(JFXOverlayEffectDebugView *)self updatePolygonLayer:v159 points:v160 borderWidth:v162 borderColor:3.0];

    v163 = [(JFXOverlayEffectDebugView *)self hitAreaMinimumSizeBoundingBoxLayer];
    ensureNSublayers(v163, 1uLL);

    v164 = [(JFXOverlayEffectDebugView *)self hitAreaMinimumSizeBoundingBoxLayer];
    v165 = [v164 sublayers];
    v166 = [v165 firstObject];

    v167 = [v5 hitAreaPath];
    v168 = [(JFXOverlayEffectDebugView *)self options];
    v169 = [v168 hitAreaBoundingBoxColor];
    [(JFXOverlayEffectDebugView *)self updateFilledPolygonLayer:v166 path:v167 fillColor:v169];

    v170 = [(JFXOverlayEffectDebugView *)self hitAreaMinimumSizeBoundingBoxLayer];
    v171 = [v5 expandedHitAreaPath];
    v172 = [(JFXOverlayEffectDebugView *)self options];
    v173 = [v172 hitAreaBoundingBoxColor];
    [(JFXOverlayEffectDebugView *)self updateFilledPolygonLayer:v170 path:v171 fillColor:v173];
  }

  else
  {
    [v156 setHidden:1];

    v166 = [(JFXOverlayEffectDebugView *)self hitAreaMinimumSizeBoundingBoxLayer];
    [v166 setHidden:1];
  }

  v174 = [(JFXOverlayEffectDebugView *)self options];
  v175 = [v174 showCornerPoints];

  v176 = v175 ^ 1u;
  v177 = [(JFXOverlayEffectDebugView *)self cornerPointsLayer];
  [v177 setHidden:v176];

  if ((v176 & 1) == 0)
  {
    v178 = [(JFXOverlayEffectDebugView *)self cornerPointsLayer];
    ensureNSublayers(v178, 4uLL);

    v179 = [(JFXOverlayEffectDebugView *)self cornerPointsLayer];
    v180 = [v179 sublayers];

    [v5 cornerPoints];
    v181 = PVCGPointQuad_to_NSArray(&v283);
    v182 = [(JFXOverlayEffectDebugView *)self options];
    v183 = [v182 cornerPointColors];
    [(JFXOverlayEffectDebugView *)self updatePointsLayers:v180 points:v181 colors:v183 size:4.0];
  }

  v184 = [(JFXOverlayEffectDebugView *)self options];
  v185 = [v184 showMidpoint];

  v186 = v185 ^ 1u;
  v187 = [(JFXOverlayEffectDebugView *)self midpointLayer];
  [v187 setHidden:v186];

  if ((v186 & 1) == 0)
  {
    v188 = [(JFXOverlayEffectDebugView *)self midpointLayer];
    v280 = v188;
    v189 = [MEMORY[0x277CBEA60] arrayWithObjects:&v280 count:1];
    v190 = MEMORY[0x277CCAE60];
    [v5 center];
    v191 = [v190 valueWithCGPoint:?];
    v279 = v191;
    v192 = [MEMORY[0x277CBEA60] arrayWithObjects:&v279 count:1];
    v193 = [(JFXOverlayEffectDebugView *)self options];
    v194 = [v193 midpointColor];
    v278 = v194;
    v195 = [MEMORY[0x277CBEA60] arrayWithObjects:&v278 count:1];
    [(JFXOverlayEffectDebugView *)self updatePointsLayers:v189 points:v192 colors:v195 size:6.0];

    v196 = [(JFXOverlayEffectDebugView *)self overlayCenterLayer];
    [v5 overlayCenter];
    v198 = v197;
    v200 = v199;
    v201 = [(JFXOverlayEffectDebugView *)self options];
    v202 = [v201 overlayCenterColor];
    [(JFXOverlayEffectDebugView *)self updateFilledCircleLayer:v196 center:v202 radius:v198 fillColor:v200, 6.0];

    v203 = [(JFXOverlayEffectDebugView *)self originCrosshairLayer];
    v204 = [(JFXOverlayEffectDebugView *)self options];
    v205 = [v204 originCrosshairColor];
    [(JFXOverlayEffectDebugView *)self updateCrosshairLayer:v203 center:v205 color:v26 size:v249 thickness:10.0 / v54, 10.0 / v54, 2.0 / v54, 2.0 / v54];
  }

  v206 = [(JFXOverlayEffectDebugView *)self options];
  if ([v206 showTextCornerPoints])
  {
    v207 = [v5 textFrames];
    v208 = [v207 count];

    v209 = [(JFXOverlayEffectDebugView *)self textCornerPointsContainerLayer];
    [v209 setHidden:v208 == 0];

    if (v208)
    {
      v210 = [(JFXOverlayEffectDebugView *)self textCornerPointsContainerLayer];
      v211 = [v5 textFrames];
      ensureNSublayers(v210, 4 * [v211 count]);

      v212 = [(JFXOverlayEffectDebugView *)self textCornerPointsContainerLayer];
      v213 = [v212 sublayers];

      v214 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v213, "count")}];
      v215 = [v5 textFrames];
      v256[0] = MEMORY[0x277D85DD0];
      v256[1] = 3221225472;
      v256[2] = __51__JFXOverlayEffectDebugView_updateWithEffectFrame___block_invoke_2;
      v256[3] = &unk_278D7D200;
      v257 = v214;
      v216 = v214;
      [v215 enumerateObjectsUsingBlock:v256];

      v217 = [(JFXOverlayEffectDebugView *)self options];
      v218 = [v217 textCornerPointColors];
      [(JFXOverlayEffectDebugView *)self updatePointsLayers:v213 points:v216 colors:v218 size:4.0];

      goto LABEL_59;
    }
  }

  else
  {

    v213 = [(JFXOverlayEffectDebugView *)self textCornerPointsContainerLayer];
    [v213 setHidden:1];
LABEL_59:
  }

  v219 = [(JFXOverlayEffectDebugView *)self options];
  v220 = [v219 showHitAreaPoints];

  v221 = v220 ^ 1u;
  v222 = [(JFXOverlayEffectDebugView *)self hitAreaPointsLayer];
  [v222 setHidden:v221];

  if ((v221 & 1) == 0)
  {
    v223 = [(JFXOverlayEffectDebugView *)self hitAreaPointsLayer];
    v224 = [v5 hitAreaPoints];
    ensureNSublayers(v223, [v224 count]);

    v225 = [(JFXOverlayEffectDebugView *)self hitAreaPointsLayer];
    v226 = [v225 sublayers];

    v227 = [v5 hitAreaPoints];
    v228 = [(JFXOverlayEffectDebugView *)self options];
    v229 = [v228 hitAreaPointColors];
    [(JFXOverlayEffectDebugView *)self updatePointsLayers:v226 points:v227 colors:v229 size:4.0];
  }

  v230 = [(JFXOverlayEffectDebugView *)self options];
  v231 = [v230 showAdditionalRects];

  v232 = v231 ^ 1u;
  v233 = [(JFXOverlayEffectDebugView *)self additionalRectsLayer];
  [v233 setHidden:v232];

  if ((v232 & 1) == 0)
  {
    v234 = [(JFXOverlayEffectDebugView *)self additionalRectsLayer];
    v235 = [(JFXOverlayEffectDebugView *)self additionalRectsTransformedLayer];
    v236 = [(JFXOverlayEffectDebugView *)self additionalRectsToDraw];
    [(JFXOverlayEffectDebugView *)self updateAdditionalRects:v234 transformedLayer:v235 effectScale:v236 rects:v54];
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
  v3 = [(JFXOverlayEffectDebugView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(JFXOverlayEffectDebugView *)self delegate];
    v6 = [v5 overlayEffectDebugViewAdditionalRectsToDraw];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (JFXOverlayEffectDebugViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end