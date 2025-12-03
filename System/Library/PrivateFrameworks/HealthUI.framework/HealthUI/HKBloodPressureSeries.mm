@interface HKBloodPressureSeries
+ (CGRect)_rectCenteredAt:(CGPoint)at width:(double)width;
+ (id)_bloodPressureInactivePresentationStyle;
+ (id)_bloodPressurePresentationStyleWithSystolicColor:(id)color diastolicColor:(id)diastolicColor;
+ (id)defaultSeriesWithDiastolicColor:(id)color;
+ (id)diastolicImageCompatibleWithFont:(id)font withColor:(id)color;
+ (id)systolicImageCompatibleWithFont:(id)font withColor:(id)color;
+ (void)_drawDiastolicSymbolWithColor:(id)color atLocation:(CGPoint)location width:(double)width context:(CGContext *)context;
+ (void)_drawSystolicSymbolWithColor:(id)color atLocation:(CGPoint)location width:(double)width context:(CGContext *)context;
- (BOOL)blockCoordinate:(id)coordinate greaterThan:(id)than;
- (BOOL)blockCoordinate:(id)coordinate lessThan:(id)than;
- (BOOL)blockCoordinateIsVisibleInsideOfChartRect:(CGRect)rect blockCoordinate:(id)coordinate;
- (HKBloodPressureSeries)init;
- (HKBloodPressureSeriesHighlightDelegate)seriesHighlightDelegate;
- (HKBloodPressureSeriesHighlightDelegate)seriesHighlightDelegateStorage;
- (HKBloodPressureSeriesPresentationStyle)inactivePresentationStyle;
- (HKBloodPressureSeriesPresentationStyle)selectedPresentationStyle;
- (HKBloodPressureSeriesPresentationStyle)unselectedPresentationStyle;
- (double)distanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (double)xAxisDistanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (double)yAxisDifferenceToPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis;
- (void)_drawBloodPressureSymbol:(int64_t)symbol withColor:(id)color atLocation:(CGPoint)location width:(double)width context:(CGContext *)context;
- (void)_drawRangeBackgroundInContext:(CGContext *)context coordinate:(id)coordinate width:(double)width symbolType:(int64_t)type symbolColor:(id)color fillColor:(id)fillColor;
- (void)_drawRangeDotsInContext:(CGContext *)context coordinate:(id)coordinate width:(double)width symbolType:(int64_t)type symbolColor:(id)color fillColor:(id)fillColor;
- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate;
- (void)setInactivePresentationStyle:(id)style;
- (void)setSelectedPresentationStyle:(id)style;
- (void)setSeriesHighlightDelegate:(id)delegate;
- (void)setUnselectedPresentationStyle:(id)style;
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

+ (id)_bloodPressurePresentationStyleWithSystolicColor:(id)color diastolicColor:(id)diastolicColor
{
  diastolicColorCopy = diastolicColor;
  colorCopy = color;
  v7 = objc_alloc_init(HKBloodPressureSeriesPresentationStyle);
  [(HKBloodPressureSeriesPresentationStyle *)v7 setWidth:8.0];
  [(HKBloodPressureSeriesPresentationStyle *)v7 setSystolicSymbolColor:colorCopy];

  systolicSymbolColor = [(HKBloodPressureSeriesPresentationStyle *)v7 systolicSymbolColor];
  v9 = [systolicSymbolColor colorWithAlphaComponent:0.16];
  [(HKBloodPressureSeriesPresentationStyle *)v7 setSystolicFillColor:v9];

  [(HKBloodPressureSeriesPresentationStyle *)v7 setDiastolicSymbolColor:diastolicColorCopy];
  diastolicSymbolColor = [(HKBloodPressureSeriesPresentationStyle *)v7 diastolicSymbolColor];
  v11 = [diastolicSymbolColor colorWithAlphaComponent:0.3];
  [(HKBloodPressureSeriesPresentationStyle *)v7 setDiastolicFillColor:v11];

  return v7;
}

+ (id)_bloodPressureInactivePresentationStyle
{
  v2 = objc_alloc_init(HKBloodPressureSeriesPresentationStyle);
  [(HKBloodPressureSeriesPresentationStyle *)v2 setWidth:8.0];
  systemGray4Color = [MEMORY[0x1E69DC888] systemGray4Color];
  systemGray4Color2 = [MEMORY[0x1E69DC888] systemGray4Color];
  v5 = [systemGray4Color2 colorWithAlphaComponent:0.5];

  [(HKBloodPressureSeriesPresentationStyle *)v2 setSystolicSymbolColor:systemGray4Color];
  [(HKBloodPressureSeriesPresentationStyle *)v2 setSystolicFillColor:v5];
  [(HKBloodPressureSeriesPresentationStyle *)v2 setDiastolicSymbolColor:systemGray4Color];
  [(HKBloodPressureSeriesPresentationStyle *)v2 setDiastolicFillColor:v5];

  return v2;
}

+ (id)defaultSeriesWithDiastolicColor:(id)color
{
  v4 = MEMORY[0x1E69DC888];
  colorCopy = color;
  labelColor = [v4 labelColor];
  v7 = [self _bloodPressurePresentationStyleWithSystolicColor:labelColor diastolicColor:colorCopy];

  _bloodPressureInactivePresentationStyle = [self _bloodPressureInactivePresentationStyle];
  v9 = objc_alloc_init(self);
  [v9 setUnselectedPresentationStyle:v7];
  [v9 setInactivePresentationStyle:_bloodPressureInactivePresentationStyle];

  return v9;
}

- (HKBloodPressureSeriesPresentationStyle)selectedPresentationStyle
{
  seriesMutableStateLock = [(HKBloodPressureSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_selectedPresentationStyleStorage;
  seriesMutableStateLock2 = [(HKBloodPressureSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setSelectedPresentationStyle:(id)style
{
  styleCopy = style;
  seriesMutableStateLock = [(HKBloodPressureSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  selectedPresentationStyleStorage = self->_selectedPresentationStyleStorage;
  self->_selectedPresentationStyleStorage = styleCopy;

  seriesMutableStateLock2 = [(HKBloodPressureSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (HKBloodPressureSeriesPresentationStyle)unselectedPresentationStyle
{
  seriesMutableStateLock = [(HKBloodPressureSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_unselectedPresentationStyleStorage;
  seriesMutableStateLock2 = [(HKBloodPressureSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setUnselectedPresentationStyle:(id)style
{
  styleCopy = style;
  seriesMutableStateLock = [(HKBloodPressureSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  unselectedPresentationStyleStorage = self->_unselectedPresentationStyleStorage;
  self->_unselectedPresentationStyleStorage = styleCopy;

  seriesMutableStateLock2 = [(HKBloodPressureSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (HKBloodPressureSeriesPresentationStyle)inactivePresentationStyle
{
  seriesMutableStateLock = [(HKBloodPressureSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_inactivePresentationStyleStorage;
  seriesMutableStateLock2 = [(HKBloodPressureSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setInactivePresentationStyle:(id)style
{
  styleCopy = style;
  seriesMutableStateLock = [(HKBloodPressureSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  inactivePresentationStyleStorage = self->_inactivePresentationStyleStorage;
  self->_inactivePresentationStyleStorage = styleCopy;

  seriesMutableStateLock2 = [(HKBloodPressureSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (HKBloodPressureSeriesHighlightDelegate)seriesHighlightDelegate
{
  seriesMutableStateLock = [(HKBloodPressureSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  WeakRetained = objc_loadWeakRetained(&self->_seriesHighlightDelegateStorage);
  seriesMutableStateLock2 = [(HKBloodPressureSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return WeakRetained;
}

- (void)setSeriesHighlightDelegate:(id)delegate
{
  delegateCopy = delegate;
  seriesMutableStateLock = [(HKBloodPressureSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  objc_storeWeak(&self->_seriesHighlightDelegateStorage, delegateCopy);
  seriesMutableStateLock2 = [(HKBloodPressureSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate
{
  coordinatesCopy = coordinates;
  CGContextSaveGState(context);
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
  contextCopy = context;
  v13 = *&transform->c;
  v14[0] = *&transform->a;
  v14[1] = v13;
  v14[2] = *&transform->tx;
  [coordinatesCopy enumerateCoordinatesWithTransform:v14 roundToViewScale:1 block:v15];

  CGContextRestoreGState(context);
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

- (void)_drawRangeDotsInContext:(CGContext *)context coordinate:(id)coordinate width:(double)width symbolType:(int64_t)type symbolColor:(id)color fillColor:(id)fillColor
{
  coordinateCopy = coordinate;
  colorCopy = color;
  [coordinateCopy min];
  [HKBloodPressureSeries _drawBloodPressureSymbol:"_drawBloodPressureSymbol:withColor:atLocation:width:context:" withColor:type atLocation:colorCopy width:context context:?];
  [coordinateCopy max];
  v14 = v13;
  [coordinateCopy min];
  if (!HKUIEqualDoubles(v14, v15))
  {
    [coordinateCopy max];
    [HKBloodPressureSeries _drawBloodPressureSymbol:"_drawBloodPressureSymbol:withColor:atLocation:width:context:" withColor:type atLocation:colorCopy width:context context:?];
  }
}

- (void)_drawRangeBackgroundInContext:(CGContext *)context coordinate:(id)coordinate width:(double)width symbolType:(int64_t)type symbolColor:(id)color fillColor:(id)fillColor
{
  coordinateCopy = coordinate;
  fillColorCopy = fillColor;
  [coordinateCopy max];
  v14 = v13;
  [coordinateCopy min];
  if (!HKUIEqualDoubles(v14, v15))
  {
    CGContextSetFillColorWithColor(context, [fillColorCopy CGColor]);
    if (type)
    {
      [coordinateCopy max];
      v17 = v16 + width * -0.5;
      [coordinateCopy max];
      v19 = v18;
      [coordinateCopy min];
      v21 = v20;
      [coordinateCopy max];
      v38.size.height = v21 - v22;
      v38.origin.x = v17;
      v38.origin.y = v19;
      v38.size.width = width;
      CGContextFillRect(context, v38);
    }

    else
    {
      v23 = width * 0.5;
      [coordinateCopy max];
      v25 = v24 - v23;
      [coordinateCopy max];
      CGContextMoveToPoint(context, v25, v26);
      [coordinateCopy max];
      v28 = v27;
      [coordinateCopy max];
      CGContextAddArc(context, v28, v29, v23, 3.14159265, 0.0, 1);
      [coordinateCopy min];
      v31 = v23 + v30;
      [coordinateCopy min];
      CGContextAddLineToPoint(context, v31, v32);
      [coordinateCopy min];
      v34 = v33;
      [coordinateCopy min];
      CGContextAddArc(context, v34, v35, v23, 0.0, 3.14159265, 1);
      CGContextClosePath(context);
      CGContextFillPath(context);
    }
  }
}

- (void)_drawBloodPressureSymbol:(int64_t)symbol withColor:(id)color atLocation:(CGPoint)location width:(double)width context:(CGContext *)context
{
  y = location.y;
  x = location.x;
  colorCopy = color;
  v13 = colorCopy;
  if (symbol == 1)
  {
    v14 = colorCopy;
    colorCopy = [HKBloodPressureSeries _drawDiastolicSymbolWithColor:colorCopy atLocation:context width:x context:y, width];
  }

  else
  {
    if (symbol)
    {
      goto LABEL_6;
    }

    v14 = colorCopy;
    colorCopy = [HKBloodPressureSeries _drawSystolicSymbolWithColor:colorCopy atLocation:context width:x context:y, width];
  }

  v13 = v14;
LABEL_6:

  MEMORY[0x1EEE66BB8](colorCopy, v13);
}

+ (void)_drawSystolicSymbolWithColor:(id)color atLocation:(CGPoint)location width:(double)width context:(CGContext *)context
{
  y = location.y;
  x = location.x;
  colorCopy = color;
  [self _rectCenteredAt:x width:{y, width}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  cGColor = [colorCopy CGColor];

  CGContextSetFillColorWithColor(context, cGColor);
  v21 = v13;
  v22 = v15;
  v23 = v17;
  v24 = v19;

  CGContextFillEllipseInRect(context, *&v21);
}

+ (CGRect)_rectCenteredAt:(CGPoint)at width:(double)width
{
  v4 = at.x - width * 0.5;
  v5 = at.y - width * 0.5;
  result.size.height = width;
  result.size.width = width;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (void)_drawDiastolicSymbolWithColor:(id)color atLocation:(CGPoint)location width:(double)width context:(CGContext *)context
{
  y = location.y;
  x = location.x;
  CGContextSetFillColorWithColor(context, [color CGColor]);
  v10 = width * 0.5;
  CGContextMoveToPoint(context, x - v10, y);
  CGContextAddLineToPoint(context, x, y - v10);
  CGContextAddLineToPoint(context, x + v10, y);
  CGContextAddLineToPoint(context, x, y + v10);

  CGContextFillPath(context);
}

- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis
{
  axisCopy = axis;
  yAxisCopy = yAxis;
  chartPoints = [block chartPoints];
  if (!chartPoints)
  {
    [HKBloodPressureSeries coordinatesForBlock:blockPath:xAxis:yAxis:];
  }

  transform = [axisCopy transform];
  transform2 = [yAxisCopy transform];

  v14 = objc_opt_new();
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __67__HKBloodPressureSeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke;
  v22[3] = &unk_1E81B94C8;
  v23 = transform;
  v24 = transform2;
  v25 = v14;
  v15 = v14;
  v16 = transform2;
  v17 = transform;
  [chartPoints enumerateObjectsUsingBlock:v22];
  v20 = *&path->index;
  resolution = path->resolution;
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

- (double)distanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  y = point.y;
  x = point.x;
  coordinateCopy = coordinate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKBloodPressureSeries distanceFromPoint:blockCoordinate:chartRect:];
  }

  v8 = coordinateCopy;
  systolicCoordinate = [v8 systolicCoordinate];
  diastolicCoordinate = [v8 diastolicCoordinate];

  [systolicCoordinate distanceToPoint:{x, y}];
  v12 = v11;
  [diastolicCoordinate distanceToPoint:{x, y}];
  v14 = 1.79769313e308;
  if (diastolicCoordinate)
  {
    v14 = v13;
  }

  if (v12 < v13 || diastolicCoordinate == 0)
  {
    v13 = v12;
  }

  if (systolicCoordinate)
  {
    v16 = v13;
  }

  else
  {
    v16 = v14;
  }

  return v16;
}

- (double)xAxisDistanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  x = point.x;
  coordinateCopy = coordinate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKBloodPressureSeries xAxisDistanceFromPoint:blockCoordinate:chartRect:];
  }

  [coordinateCopy startXValue];
  v8 = vabdd_f64(v7, x);

  return v8;
}

- (double)yAxisDifferenceToPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  y = point.y;
  x = point.x;
  coordinateCopy = coordinate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKBloodPressureSeries yAxisDifferenceToPoint:blockCoordinate:chartRect:];
  }

  v8 = coordinateCopy;
  systolicCoordinate = [v8 systolicCoordinate];
  diastolicCoordinate = [v8 diastolicCoordinate];
  [systolicCoordinate yAxisDifferenceToPoint:{x, y}];
  v12 = v11;
  [diastolicCoordinate yAxisDifferenceToPoint:{x, y}];
  if (systolicCoordinate && diastolicCoordinate)
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
    if (!diastolicCoordinate)
    {
      v13 = 1.79769313e308;
    }

    if (systolicCoordinate)
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

- (BOOL)blockCoordinateIsVisibleInsideOfChartRect:(CGRect)rect blockCoordinate:(id)coordinate
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  coordinateCopy = coordinate;
  systolicCoordinate = [coordinateCopy systolicCoordinate];
  diastolicCoordinate = [coordinateCopy diastolicCoordinate];

  if ([systolicCoordinate isVisibleInChartRect:{x, y, width, height}])
  {
    v11 = 1;
  }

  else
  {
    v11 = [diastolicCoordinate isVisibleInChartRect:{x, y, width, height}];
  }

  return v11;
}

- (BOOL)blockCoordinate:(id)coordinate lessThan:(id)than
{
  coordinateCopy = coordinate;
  thanCopy = than;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKBloodPressureSeries blockCoordinate:lessThan:];
  }

  v7 = coordinateCopy;
  systolicCoordinate = [v7 systolicCoordinate];
  diastolicCoordinate = [v7 diastolicCoordinate];
  v10 = thanCopy;
  systolicCoordinate2 = [v10 systolicCoordinate];
  diastolicCoordinate2 = [v10 diastolicCoordinate];
  [systolicCoordinate min];
  v14 = v13;
  [systolicCoordinate2 min];
  if (v14 >= v15)
  {
    [diastolicCoordinate min];
    v18 = v17;
    [diastolicCoordinate2 min];
    v16 = v18 < v19;
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (BOOL)blockCoordinate:(id)coordinate greaterThan:(id)than
{
  coordinateCopy = coordinate;
  thanCopy = than;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKBloodPressureSeries blockCoordinate:greaterThan:];
  }

  v7 = coordinateCopy;
  systolicCoordinate = [v7 systolicCoordinate];
  diastolicCoordinate = [v7 diastolicCoordinate];
  v10 = thanCopy;
  systolicCoordinate2 = [v10 systolicCoordinate];
  diastolicCoordinate2 = [v10 diastolicCoordinate];
  [systolicCoordinate max];
  v14 = v13;
  [systolicCoordinate2 max];
  if (v14 <= v15)
  {
    [diastolicCoordinate max];
    v18 = v17;
    [diastolicCoordinate2 max];
    v16 = v18 > v19;
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

+ (id)systolicImageCompatibleWithFont:(id)font withColor:(id)color
{
  colorCopy = color;
  [font capHeight];
  v12.height = v6;
  v7 = fmin(v6, 8.0);
  v8 = v6 * 0.5;
  v12.width = v7;
  UIGraphicsBeginImageContextWithOptions(v12, 0, 0.0);
  [HKBloodPressureSeries _drawSystolicSymbolWithColor:colorCopy atLocation:UIGraphicsGetCurrentContext() width:v7 * 0.5 context:v8, v7];

  v9 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v9;
}

+ (id)diastolicImageCompatibleWithFont:(id)font withColor:(id)color
{
  colorCopy = color;
  [font capHeight];
  v12.height = v6;
  v7 = fmin(v6, 8.0);
  v8 = v6 * 0.5;
  v12.width = v7;
  UIGraphicsBeginImageContextWithOptions(v12, 0, 0.0);
  [HKBloodPressureSeries _drawDiastolicSymbolWithColor:colorCopy atLocation:UIGraphicsGetCurrentContext() width:v7 * 0.5 context:v8, v7];

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