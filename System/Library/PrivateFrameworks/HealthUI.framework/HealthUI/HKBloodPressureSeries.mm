@interface HKBloodPressureSeries
+ (CGRect)_rectCenteredAt:(CGPoint)a3 width:(double)a4;
+ (id)_bloodPressureInactivePresentationStyle;
+ (id)_bloodPressurePresentationStyleWithSystolicColor:(id)a3 diastolicColor:(id)a4;
+ (id)defaultSeriesWithDiastolicColor:(id)a3;
+ (id)diastolicImageCompatibleWithFont:(id)a3 withColor:(id)a4;
+ (id)systolicImageCompatibleWithFont:(id)a3 withColor:(id)a4;
+ (void)_drawDiastolicSymbolWithColor:(id)a3 atLocation:(CGPoint)a4 width:(double)a5 context:(CGContext *)a6;
+ (void)_drawSystolicSymbolWithColor:(id)a3 atLocation:(CGPoint)a4 width:(double)a5 context:(CGContext *)a6;
- (BOOL)blockCoordinate:(id)a3 greaterThan:(id)a4;
- (BOOL)blockCoordinate:(id)a3 lessThan:(id)a4;
- (BOOL)blockCoordinateIsVisibleInsideOfChartRect:(CGRect)a3 blockCoordinate:(id)a4;
- (HKBloodPressureSeries)init;
- (HKBloodPressureSeriesHighlightDelegate)seriesHighlightDelegate;
- (HKBloodPressureSeriesHighlightDelegate)seriesHighlightDelegateStorage;
- (HKBloodPressureSeriesPresentationStyle)inactivePresentationStyle;
- (HKBloodPressureSeriesPresentationStyle)selectedPresentationStyle;
- (HKBloodPressureSeriesPresentationStyle)unselectedPresentationStyle;
- (double)distanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (double)xAxisDistanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (double)yAxisDifferenceToPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6;
- (void)_drawBloodPressureSymbol:(int64_t)a3 withColor:(id)a4 atLocation:(CGPoint)a5 width:(double)a6 context:(CGContext *)a7;
- (void)_drawRangeBackgroundInContext:(CGContext *)a3 coordinate:(id)a4 width:(double)a5 symbolType:(int64_t)a6 symbolColor:(id)a7 fillColor:(id)a8;
- (void)_drawRangeDotsInContext:(CGContext *)a3 coordinate:(id)a4 width:(double)a5 symbolType:(int64_t)a6 symbolColor:(id)a7 fillColor:(id)a8;
- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9;
- (void)setInactivePresentationStyle:(id)a3;
- (void)setSelectedPresentationStyle:(id)a3;
- (void)setSeriesHighlightDelegate:(id)a3;
- (void)setUnselectedPresentationStyle:(id)a3;
@end

@implementation HKBloodPressureSeries

- (HKBloodPressureSeries)init
{
  v9.receiver = self;
  v9.super_class = HKBloodPressureSeries;
  v2 = [(HKGraphSeries *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    seriesMutableStateLock = v2->_seriesMutableStateLock;
    v2->_seriesMutableStateLock = v3;

    [(NSLock *)v2->_seriesMutableStateLock setName:@"HKBloodPressureSeriesLock"];
    selectedPresentationStyleStorage = v2->_selectedPresentationStyleStorage;
    v2->_selectedPresentationStyleStorage = 0;

    unselectedPresentationStyleStorage = v2->_unselectedPresentationStyleStorage;
    v2->_unselectedPresentationStyleStorage = 0;

    inactivePresentationStyleStorage = v2->_inactivePresentationStyleStorage;
    v2->_inactivePresentationStyleStorage = 0;

    objc_storeWeak(&v2->_seriesHighlightDelegateStorage, 0);
  }

  return v2;
}

+ (id)_bloodPressurePresentationStyleWithSystolicColor:(id)a3 diastolicColor:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(HKBloodPressureSeriesPresentationStyle);
  [(HKBloodPressureSeriesPresentationStyle *)v7 setWidth:8.0];
  [(HKBloodPressureSeriesPresentationStyle *)v7 setSystolicSymbolColor:v6];

  v8 = [(HKBloodPressureSeriesPresentationStyle *)v7 systolicSymbolColor];
  v9 = [v8 colorWithAlphaComponent:0.16];
  [(HKBloodPressureSeriesPresentationStyle *)v7 setSystolicFillColor:v9];

  [(HKBloodPressureSeriesPresentationStyle *)v7 setDiastolicSymbolColor:v5];
  v10 = [(HKBloodPressureSeriesPresentationStyle *)v7 diastolicSymbolColor];
  v11 = [v10 colorWithAlphaComponent:0.3];
  [(HKBloodPressureSeriesPresentationStyle *)v7 setDiastolicFillColor:v11];

  return v7;
}

+ (id)_bloodPressureInactivePresentationStyle
{
  v2 = objc_alloc_init(HKBloodPressureSeriesPresentationStyle);
  [(HKBloodPressureSeriesPresentationStyle *)v2 setWidth:8.0];
  v3 = [MEMORY[0x1E69DC888] systemGray4Color];
  v4 = [MEMORY[0x1E69DC888] systemGray4Color];
  v5 = [v4 colorWithAlphaComponent:0.5];

  [(HKBloodPressureSeriesPresentationStyle *)v2 setSystolicSymbolColor:v3];
  [(HKBloodPressureSeriesPresentationStyle *)v2 setSystolicFillColor:v5];
  [(HKBloodPressureSeriesPresentationStyle *)v2 setDiastolicSymbolColor:v3];
  [(HKBloodPressureSeriesPresentationStyle *)v2 setDiastolicFillColor:v5];

  return v2;
}

+ (id)defaultSeriesWithDiastolicColor:(id)a3
{
  v4 = MEMORY[0x1E69DC888];
  v5 = a3;
  v6 = [v4 labelColor];
  v7 = [a1 _bloodPressurePresentationStyleWithSystolicColor:v6 diastolicColor:v5];

  v8 = [a1 _bloodPressureInactivePresentationStyle];
  v9 = objc_alloc_init(a1);
  [v9 setUnselectedPresentationStyle:v7];
  [v9 setInactivePresentationStyle:v8];

  return v9;
}

- (HKBloodPressureSeriesPresentationStyle)selectedPresentationStyle
{
  v3 = [(HKBloodPressureSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_selectedPresentationStyleStorage;
  v5 = [(HKBloodPressureSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setSelectedPresentationStyle:(id)a3
{
  v4 = a3;
  v5 = [(HKBloodPressureSeries *)self seriesMutableStateLock];
  [v5 lock];

  selectedPresentationStyleStorage = self->_selectedPresentationStyleStorage;
  self->_selectedPresentationStyleStorage = v4;

  v7 = [(HKBloodPressureSeries *)self seriesMutableStateLock];
  [v7 unlock];
}

- (HKBloodPressureSeriesPresentationStyle)unselectedPresentationStyle
{
  v3 = [(HKBloodPressureSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_unselectedPresentationStyleStorage;
  v5 = [(HKBloodPressureSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setUnselectedPresentationStyle:(id)a3
{
  v4 = a3;
  v5 = [(HKBloodPressureSeries *)self seriesMutableStateLock];
  [v5 lock];

  unselectedPresentationStyleStorage = self->_unselectedPresentationStyleStorage;
  self->_unselectedPresentationStyleStorage = v4;

  v7 = [(HKBloodPressureSeries *)self seriesMutableStateLock];
  [v7 unlock];
}

- (HKBloodPressureSeriesPresentationStyle)inactivePresentationStyle
{
  v3 = [(HKBloodPressureSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_inactivePresentationStyleStorage;
  v5 = [(HKBloodPressureSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setInactivePresentationStyle:(id)a3
{
  v4 = a3;
  v5 = [(HKBloodPressureSeries *)self seriesMutableStateLock];
  [v5 lock];

  inactivePresentationStyleStorage = self->_inactivePresentationStyleStorage;
  self->_inactivePresentationStyleStorage = v4;

  v7 = [(HKBloodPressureSeries *)self seriesMutableStateLock];
  [v7 unlock];
}

- (HKBloodPressureSeriesHighlightDelegate)seriesHighlightDelegate
{
  v3 = [(HKBloodPressureSeries *)self seriesMutableStateLock];
  [v3 lock];

  WeakRetained = objc_loadWeakRetained(&self->_seriesHighlightDelegateStorage);
  v5 = [(HKBloodPressureSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return WeakRetained;
}

- (void)setSeriesHighlightDelegate:(id)a3
{
  v4 = a3;
  v5 = [(HKBloodPressureSeries *)self seriesMutableStateLock];
  [v5 lock];

  objc_storeWeak(&self->_seriesHighlightDelegateStorage, v4);
  v6 = [(HKBloodPressureSeries *)self seriesMutableStateLock];
  [v6 unlock];
}

- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9
{
  v12 = a3;
  CGContextSaveGState(a7);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  [(HKGraphSeries *)self selectedPathRange];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __164__HKBloodPressureSeries_drawSeriesWithBlockCoordinates_axisRect_zoomLevelConfiguration_pointTransform_renderContext_secondaryRenderContext_seriesRenderingDelegate___block_invoke;
  v15[3] = &unk_1E81B94A0;
  v16 = v21;
  v17 = v22;
  v18 = v23;
  v19 = v24;
  v15[4] = self;
  v20 = a7;
  v13 = *&a6->c;
  v14[0] = *&a6->a;
  v14[1] = v13;
  v14[2] = *&a6->tx;
  [v12 enumerateCoordinatesWithTransform:v14 roundToViewScale:1 block:v15];

  CGContextRestoreGState(a7);
}

void __164__HKBloodPressureSeries_drawSeriesWithBlockCoordinates_axisRect_zoomLevelConfiguration_pointTransform_renderContext_secondaryRenderContext_seriesRenderingDelegate___block_invoke(uint64_t a1, void *a2, _OWORD *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = a3[1];
  v95[0] = *a3;
  v95[1] = v9;
  v10 = *(a1 + 56);
  v94[0] = *(a1 + 40);
  v94[1] = v10;
  v11 = *(a1 + 88);
  v94[2] = *(a1 + 72);
  v94[3] = v11;
  v12 = HKGraphSeriesDataPointPathInRangeInclusive(v95, v94);
  v13 = *(a1 + 32);
  if (v12)
  {
    v14 = [v13 selectedPresentationStyle];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [*(a1 + 32) unselectedPresentationStyle];
    }

    v92 = v16;
  }

  else
  {
    v92 = [v13 unselectedPresentationStyle];
  }

  if ([*(a1 + 32) allowsSelection] && (objc_msgSend(*(a1 + 32), "seriesHighlightDelegate"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "highlightEnabled"), v17, !v18))
  {
    v19 = v92;
  }

  else
  {
    v19 = [*(a1 + 32) inactivePresentationStyle];
  }

  v20 = v19;
  v91 = [v7 systolicCoordinate];
  v21 = [v7 diastolicCoordinate];
  v22 = [*(a1 + 32) seriesHighlightDelegate];
  v23 = [v22 highlightEnabled];

  v93 = v21;
  v88 = v8;
  v89 = v7;
  if ((v23 & 1) == 0)
  {
    v27 = v20;
    v90 = 0;
    v87 = 1;
    v38 = v27;
LABEL_18:
    v31 = v91;
    goto LABEL_26;
  }

  v24 = [*(a1 + 32) seriesHighlightDelegate];
  v25 = [v24 highlightedBloodPressureCoordinateWithCoordinate:v7 originalCoordinate:v8];

  v26 = v20;
  v27 = v26;
  if (!v25)
  {
    v90 = 0;
    v87 = 1;
    v38 = v26;
    goto LABEL_18;
  }

  [v21 min];
  v29 = v28;
  v30 = [v25 diastolicCoordinate];
  [v30 min];
  v31 = v91;
  if (v29 == v32)
  {
    [v21 max];
    v34 = v33;
    v35 = [v25 diastolicCoordinate];
    [v35 max];
    v37 = v36;

    v38 = v27;
    if (v34 != v37)
    {
      goto LABEL_21;
    }

    v38 = v92;
    v30 = v27;
  }

  else
  {
    v38 = v27;
  }

LABEL_21:
  [v91 min];
  v40 = v39;
  v41 = [v25 systolicCoordinate];
  [v41 min];
  v90 = v25;
  if (v40 == v42)
  {
    [v91 max];
    v44 = v43;
    v45 = [v25 systolicCoordinate];
    [v45 max];
    v47 = v46;

    if (v44 == v47)
    {
      v48 = v92;

      v87 = 0;
      v27 = v48;
      goto LABEL_26;
    }
  }

  else
  {
  }

  v87 = 0;
LABEL_26:
  v49 = *(a1 + 32);
  v50 = *(a1 + 104);
  [v38 width];
  v52 = v51;
  v53 = [v38 diastolicSymbolColor];
  v54 = [v38 diastolicFillColor];
  [v49 _drawRangeBackgroundInContext:v50 coordinate:v21 width:1 symbolType:v53 symbolColor:v54 fillColor:v52];

  v55 = *(a1 + 32);
  v56 = *(a1 + 104);
  [v27 width];
  v58 = v57;
  v59 = [v27 systolicSymbolColor];
  v60 = [v27 systolicFillColor];
  [v55 _drawRangeBackgroundInContext:v56 coordinate:v31 width:0 symbolType:v59 symbolColor:v60 fillColor:v58];

  CGContextSaveGState(*(a1 + 104));
  v61 = *(a1 + 32);
  v62 = *(a1 + 104);
  [v20 width];
  v64 = v63;
  v65 = [v20 diastolicSymbolColor];
  v66 = [v20 diastolicFillColor];
  [v61 _drawRangeDotsInContext:v62 coordinate:v21 width:1 symbolType:v65 symbolColor:v66 fillColor:v64];

  v67 = *(a1 + 32);
  v68 = *(a1 + 104);
  [v20 width];
  v70 = v69;
  v71 = [v20 systolicSymbolColor];
  v72 = [v20 systolicFillColor];
  [v67 _drawRangeDotsInContext:v68 coordinate:v31 width:0 symbolType:v71 symbolColor:v72 fillColor:v70];

  if ((v87 & 1) == 0)
  {
    v73 = *(a1 + 32);
    v74 = *(a1 + 104);
    v75 = [v90 diastolicCoordinate];
    [v92 width];
    v77 = v76;
    v78 = [v92 diastolicSymbolColor];
    v79 = [v92 diastolicFillColor];
    [v73 _drawRangeDotsInContext:v74 coordinate:v75 width:1 symbolType:v78 symbolColor:v79 fillColor:v77];

    v80 = *(a1 + 32);
    v81 = *(a1 + 104);
    v82 = [v90 systolicCoordinate];
    [v92 width];
    v84 = v83;
    v85 = [v92 systolicSymbolColor];
    v31 = v91;
    v86 = [v92 systolicFillColor];
    [v80 _drawRangeDotsInContext:v81 coordinate:v82 width:0 symbolType:v85 symbolColor:v86 fillColor:v84];
  }

  CGContextRestoreGState(*(a1 + 104));
}

- (void)_drawRangeDotsInContext:(CGContext *)a3 coordinate:(id)a4 width:(double)a5 symbolType:(int64_t)a6 symbolColor:(id)a7 fillColor:(id)a8
{
  v16 = a4;
  v12 = a7;
  [v16 min];
  [HKBloodPressureSeries _drawBloodPressureSymbol:"_drawBloodPressureSymbol:withColor:atLocation:width:context:" withColor:a6 atLocation:v12 width:a3 context:?];
  [v16 max];
  v14 = v13;
  [v16 min];
  if (!HKUIEqualDoubles(v14, v15))
  {
    [v16 max];
    [HKBloodPressureSeries _drawBloodPressureSymbol:"_drawBloodPressureSymbol:withColor:atLocation:width:context:" withColor:a6 atLocation:v12 width:a3 context:?];
  }
}

- (void)_drawRangeBackgroundInContext:(CGContext *)a3 coordinate:(id)a4 width:(double)a5 symbolType:(int64_t)a6 symbolColor:(id)a7 fillColor:(id)a8
{
  v36 = a4;
  v12 = a8;
  [v36 max];
  v14 = v13;
  [v36 min];
  if (!HKUIEqualDoubles(v14, v15))
  {
    CGContextSetFillColorWithColor(a3, [v12 CGColor]);
    if (a6)
    {
      [v36 max];
      v17 = v16 + a5 * -0.5;
      [v36 max];
      v19 = v18;
      [v36 min];
      v21 = v20;
      [v36 max];
      v38.size.height = v21 - v22;
      v38.origin.x = v17;
      v38.origin.y = v19;
      v38.size.width = a5;
      CGContextFillRect(a3, v38);
    }

    else
    {
      v23 = a5 * 0.5;
      [v36 max];
      v25 = v24 - v23;
      [v36 max];
      CGContextMoveToPoint(a3, v25, v26);
      [v36 max];
      v28 = v27;
      [v36 max];
      CGContextAddArc(a3, v28, v29, v23, 3.14159265, 0.0, 1);
      [v36 min];
      v31 = v23 + v30;
      [v36 min];
      CGContextAddLineToPoint(a3, v31, v32);
      [v36 min];
      v34 = v33;
      [v36 min];
      CGContextAddArc(a3, v34, v35, v23, 0.0, 3.14159265, 1);
      CGContextClosePath(a3);
      CGContextFillPath(a3);
    }
  }
}

- (void)_drawBloodPressureSymbol:(int64_t)a3 withColor:(id)a4 atLocation:(CGPoint)a5 width:(double)a6 context:(CGContext *)a7
{
  y = a5.y;
  x = a5.x;
  v12 = a4;
  v13 = v12;
  if (a3 == 1)
  {
    v14 = v12;
    v12 = [HKBloodPressureSeries _drawDiastolicSymbolWithColor:v12 atLocation:a7 width:x context:y, a6];
  }

  else
  {
    if (a3)
    {
      goto LABEL_6;
    }

    v14 = v12;
    v12 = [HKBloodPressureSeries _drawSystolicSymbolWithColor:v12 atLocation:a7 width:x context:y, a6];
  }

  v13 = v14;
LABEL_6:

  MEMORY[0x1EEE66BB8](v12, v13);
}

+ (void)_drawSystolicSymbolWithColor:(id)a3 atLocation:(CGPoint)a4 width:(double)a5 context:(CGContext *)a6
{
  y = a4.y;
  x = a4.x;
  v11 = a3;
  [a1 _rectCenteredAt:x width:{y, a5}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [v11 CGColor];

  CGContextSetFillColorWithColor(a6, v20);
  v21 = v13;
  v22 = v15;
  v23 = v17;
  v24 = v19;

  CGContextFillEllipseInRect(a6, *&v21);
}

+ (CGRect)_rectCenteredAt:(CGPoint)a3 width:(double)a4
{
  v4 = a3.x - a4 * 0.5;
  v5 = a3.y - a4 * 0.5;
  result.size.height = a4;
  result.size.width = a4;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (void)_drawDiastolicSymbolWithColor:(id)a3 atLocation:(CGPoint)a4 width:(double)a5 context:(CGContext *)a6
{
  y = a4.y;
  x = a4.x;
  CGContextSetFillColorWithColor(a6, [a3 CGColor]);
  v10 = a5 * 0.5;
  CGContextMoveToPoint(a6, x - v10, y);
  CGContextAddLineToPoint(a6, x, y - v10);
  CGContextAddLineToPoint(a6, x + v10, y);
  CGContextAddLineToPoint(a6, x, y + v10);

  CGContextFillPath(a6);
}

- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = [a3 chartPoints];
  if (!v11)
  {
    [HKBloodPressureSeries coordinatesForBlock:blockPath:xAxis:yAxis:];
  }

  v12 = [v9 transform];
  v13 = [v10 transform];

  v14 = objc_opt_new();
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __67__HKBloodPressureSeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke;
  v22[3] = &unk_1E81B94C8;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v15 = v14;
  v16 = v13;
  v17 = v12;
  [v11 enumerateObjectsUsingBlock:v22];
  v20 = *&a4->index;
  resolution = a4->resolution;
  v18 = [HKGraphSeriesBlockCoordinateList coordinateListWithCoordinates:v15 blockPath:&v20];

  return v18;
}

void __67__HKBloodPressureSeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 yValue];

  if (v3)
  {
    v4 = [v13 systolicChartPoint];

    if (v4)
    {
      v5 = [_HKBloodPressureMinMaxCoordinate alloc];
      v6 = [v13 systolicChartPoint];
      v4 = [(_HKBloodPressureMinMaxCoordinate *)v5 initWithChartPoint:v6 xAxisTransform:*(a1 + 32) yAxisTransform:*(a1 + 40)];
    }

    v7 = [v13 diastolicChartPoint];

    if (v7)
    {
      v8 = [_HKBloodPressureMinMaxCoordinate alloc];
      v9 = [v13 diastolicChartPoint];
      v7 = [(_HKBloodPressureMinMaxCoordinate *)v8 initWithChartPoint:v9 xAxisTransform:*(a1 + 32) yAxisTransform:*(a1 + 40)];
    }

    v10 = [_HKBloodPressureCoordinate alloc];
    v11 = [v13 userInfo];
    v12 = [(_HKBloodPressureCoordinate *)v10 initWithSystolicCoordinate:v4 diastolicCoordinate:v7 userInfo:v11];

    [*(a1 + 48) addObject:v12];
  }
}

- (double)distanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKBloodPressureSeries distanceFromPoint:blockCoordinate:chartRect:];
  }

  v8 = v7;
  v9 = [v8 systolicCoordinate];
  v10 = [v8 diastolicCoordinate];

  [v9 distanceToPoint:{x, y}];
  v12 = v11;
  [v10 distanceToPoint:{x, y}];
  v14 = 1.79769313e308;
  if (v10)
  {
    v14 = v13;
  }

  if (v12 < v13 || v10 == 0)
  {
    v13 = v12;
  }

  if (v9)
  {
    v16 = v13;
  }

  else
  {
    v16 = v14;
  }

  return v16;
}

- (double)xAxisDistanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  x = a3.x;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKBloodPressureSeries xAxisDistanceFromPoint:blockCoordinate:chartRect:];
  }

  [v6 startXValue];
  v8 = vabdd_f64(v7, x);

  return v8;
}

- (double)yAxisDifferenceToPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKBloodPressureSeries yAxisDifferenceToPoint:blockCoordinate:chartRect:];
  }

  v8 = v7;
  v9 = [v8 systolicCoordinate];
  v10 = [v8 diastolicCoordinate];
  [v9 yAxisDifferenceToPoint:{x, y}];
  v12 = v11;
  [v10 yAxisDifferenceToPoint:{x, y}];
  if (v9 && v10)
  {
    if (fabs(v12) >= fabs(v13))
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }
  }

  else
  {
    if (!v10)
    {
      v13 = 1.79769313e308;
    }

    if (v9)
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }
  }

  return v14;
}

- (BOOL)blockCoordinateIsVisibleInsideOfChartRect:(CGRect)a3 blockCoordinate:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
  v9 = [v8 systolicCoordinate];
  v10 = [v8 diastolicCoordinate];

  if ([v9 isVisibleInChartRect:{x, y, width, height}])
  {
    v11 = 1;
  }

  else
  {
    v11 = [v10 isVisibleInChartRect:{x, y, width, height}];
  }

  return v11;
}

- (BOOL)blockCoordinate:(id)a3 lessThan:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKBloodPressureSeries blockCoordinate:lessThan:];
  }

  v7 = v5;
  v8 = [v7 systolicCoordinate];
  v9 = [v7 diastolicCoordinate];
  v10 = v6;
  v11 = [v10 systolicCoordinate];
  v12 = [v10 diastolicCoordinate];
  [v8 min];
  v14 = v13;
  [v11 min];
  if (v14 >= v15)
  {
    [v9 min];
    v18 = v17;
    [v12 min];
    v16 = v18 < v19;
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (BOOL)blockCoordinate:(id)a3 greaterThan:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKBloodPressureSeries blockCoordinate:greaterThan:];
  }

  v7 = v5;
  v8 = [v7 systolicCoordinate];
  v9 = [v7 diastolicCoordinate];
  v10 = v6;
  v11 = [v10 systolicCoordinate];
  v12 = [v10 diastolicCoordinate];
  [v8 max];
  v14 = v13;
  [v11 max];
  if (v14 <= v15)
  {
    [v9 max];
    v18 = v17;
    [v12 max];
    v16 = v18 > v19;
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

+ (id)systolicImageCompatibleWithFont:(id)a3 withColor:(id)a4
{
  v5 = a4;
  [a3 capHeight];
  v12.height = v6;
  v7 = fmin(v6, 8.0);
  v8 = v6 * 0.5;
  v12.width = v7;
  UIGraphicsBeginImageContextWithOptions(v12, 0, 0.0);
  [HKBloodPressureSeries _drawSystolicSymbolWithColor:v5 atLocation:UIGraphicsGetCurrentContext() width:v7 * 0.5 context:v8, v7];

  v9 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v9;
}

+ (id)diastolicImageCompatibleWithFont:(id)a3 withColor:(id)a4
{
  v5 = a4;
  [a3 capHeight];
  v12.height = v6;
  v7 = fmin(v6, 8.0);
  v8 = v6 * 0.5;
  v12.width = v7;
  UIGraphicsBeginImageContextWithOptions(v12, 0, 0.0);
  [HKBloodPressureSeries _drawDiastolicSymbolWithColor:v5 atLocation:UIGraphicsGetCurrentContext() width:v7 * 0.5 context:v8, v7];

  v9 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v9;
}

- (HKBloodPressureSeriesHighlightDelegate)seriesHighlightDelegateStorage
{
  WeakRetained = objc_loadWeakRetained(&self->_seriesHighlightDelegateStorage);

  return WeakRetained;
}

- (void)coordinatesForBlock:blockPath:xAxis:yAxis:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"points != nil" object:? file:? lineNumber:? description:?];
}

- (void)distanceFromPoint:blockCoordinate:chartRect:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)xAxisDistanceFromPoint:blockCoordinate:chartRect:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)yAxisDifferenceToPoint:blockCoordinate:chartRect:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)blockCoordinate:lessThan:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)blockCoordinate:greaterThan:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end