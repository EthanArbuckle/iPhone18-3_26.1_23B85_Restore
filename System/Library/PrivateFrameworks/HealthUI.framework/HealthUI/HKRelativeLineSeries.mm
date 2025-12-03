@interface HKRelativeLineSeries
- (BOOL)_isUserInfoIndeterminateRelativeValue:(id)value;
- (BOOL)_shouldForceGapBetweenUserInfo:(id)info andUserInfo:(id)userInfo;
- (BOOL)blockCoordinate:(id)coordinate greaterThan:(id)than;
- (BOOL)blockCoordinate:(id)coordinate lessThan:(id)than;
- (BOOL)blockCoordinateIsVisibleInsideOfChartRect:(CGRect)rect blockCoordinate:(id)coordinate;
- (double)_indeterminateLozengeValueForUserInfo:(id)info;
- (double)distanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (double)xAxisDistanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (double)yAxisDifferenceToPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (id)_colorForUserInfo:(id)info;
- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis;
- (id)initFromLineSeries:(id)series color:(id)color unavailableColor:(id)unavailableColor indeterminateLozengeLineWidth:(double)width chartSizeClass:(int64_t)class;
- (void)_drawIndeterminateLozengeForCoordinate:(id)coordinate context:(CGContext *)context seriesRenderingDelegate:(id)delegate;
- (void)_drawIndeterminateLozengesForBlockCoordinates:(id)coordinates pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context seriesRenderingDelegate:(id)delegate;
- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate;
@end

@implementation HKRelativeLineSeries

- (id)initFromLineSeries:(id)series color:(id)color unavailableColor:(id)unavailableColor indeterminateLozengeLineWidth:(double)width chartSizeClass:(int64_t)class
{
  seriesCopy = series;
  colorCopy = color;
  unavailableColorCopy = unavailableColor;
  v24.receiver = self;
  v24.super_class = HKRelativeLineSeries;
  v15 = [(HKLineSeries *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_color, color);
    objc_storeStrong(&v16->_unavailableColor, unavailableColor);
    v16->_indeterminateLozengeLineWidth = width;
    v16->_indeterminateLozengeHollowLineRatio = 0.5;
    v16->_chartSizeClass = class;
    unhighlightedPresentationStyles = [seriesCopy unhighlightedPresentationStyles];
    [(HKLineSeries *)v16 setUnhighlightedPresentationStyles:unhighlightedPresentationStyles];

    highlightedPresentationStyles = [seriesCopy highlightedPresentationStyles];
    [(HKLineSeries *)v16 setHighlightedPresentationStyles:highlightedPresentationStyles];

    selectedPresentationStyles = [seriesCopy selectedPresentationStyles];
    [(HKLineSeries *)v16 setSelectedPresentationStyles:selectedPresentationStyles];

    selectedPointMarkerStyle = [seriesCopy selectedPointMarkerStyle];
    [(HKLineSeries *)v16 setSelectedPointMarkerStyle:selectedPointMarkerStyle];

    inactivePresentationStyle = [seriesCopy inactivePresentationStyle];
    [(HKLineSeries *)v16 setInactivePresentationStyle:inactivePresentationStyle];

    -[HKLineSeries setFlatLastValue:](v16, "setFlatLastValue:", [seriesCopy flatLastValue]);
    -[HKLineSeries setExtendLastValue:](v16, "setExtendLastValue:", [seriesCopy extendLastValue]);
    -[HKLineSeries setExtendFirstValue:](v16, "setExtendFirstValue:", [seriesCopy extendFirstValue]);
    maximumConnectionDistance = [seriesCopy maximumConnectionDistance];
    [(HKLineSeries *)v16 setMaximumConnectionDistance:maximumConnectionDistance];
  }

  return v16;
}

- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v56 = *MEMORY[0x1E69E9840];
  coordinatesCopy = coordinates;
  configurationCopy = configuration;
  renderContextCopy = renderContext;
  delegateCopy = delegate;
  v21 = *&transform->c;
  v52 = *&transform->a;
  transformCopy = transform;
  v40 = delegateCopy;
  v22 = *&transform->tx;
  v53 = v21;
  v54 = v22;
  contextCopy = context;
  [(HKRelativeLineSeries *)self _drawIndeterminateLozengesForBlockCoordinates:coordinatesCopy pointTransform:&v52 renderContext:context seriesRenderingDelegate:?];
  array = [MEMORY[0x1E695DF70] array];
  v24 = [MEMORY[0x1E695DFA8] set];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v44 = coordinatesCopy;
  coordinates = [coordinatesCopy coordinates];
  v26 = [coordinates countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = 0;
    v29 = *v49;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v49 != v29)
        {
          objc_enumerationMutation(coordinates);
        }

        v31 = *(*(&v48 + 1) + 8 * i);
        if (v28)
        {
          v32 = MEMORY[0x1E696B098];
          [*(*(&v48 + 1) + 8 * i) coordinate];
          v33 = [v32 valueWithCGPoint:?];
          [v24 addObject:v33];
        }

        userInfo = [v31 userInfo];
        v28 = [(HKRelativeLineSeries *)self _isUserInfoIndeterminateRelativeValue:userInfo];

        if (!v28)
        {
          [array addObject:v31];
        }
      }

      v27 = [coordinates countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v27);
  }

  if (v44)
  {
    [v44 blockPathStart];
  }

  else
  {
    v52 = 0uLL;
    *&v53 = 0;
  }

  v35 = [HKGraphSeriesBlockCoordinateList coordinateListWithCoordinates:array blockPath:&v52];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __163__HKRelativeLineSeries_drawSeriesWithBlockCoordinates_axisRect_zoomLevelConfiguration_pointTransform_renderContext_secondaryRenderContext_seriesRenderingDelegate___block_invoke;
  v46[3] = &unk_1E81BCA08;
  v47 = v24;
  v45.receiver = self;
  v45.super_class = HKRelativeLineSeries;
  v36 = *&transformCopy->c;
  v52 = *&transformCopy->a;
  v37 = *&transformCopy->tx;
  v53 = v36;
  v54 = v37;
  v38 = v24;
  [(HKLineSeries *)&v45 drawSeriesWithBlockCoordinates:v35 axisRect:configurationCopy zoomLevelConfiguration:&v52 pointTransform:contextCopy renderContext:renderContextCopy secondaryRenderContext:v40 seriesRenderingDelegate:x forceGapBetweenUntransformedPoints:y, width, height, v46];
}

uint64_t __163__HKRelativeLineSeries_drawSeriesWithBlockCoordinates_axisRect_zoomLevelConfiguration_pointTransform_renderContext_secondaryRenderContext_seriesRenderingDelegate___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = [MEMORY[0x1E696B098] valueWithCGPoint:{a4, a5}];
  v7 = [*(a1 + 32) containsObject:v6];

  return v7;
}

- (void)_drawIndeterminateLozengesForBlockCoordinates:(id)coordinates pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context seriesRenderingDelegate:(id)delegate
{
  delegateCopy = delegate;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __123__HKRelativeLineSeries__drawIndeterminateLozengesForBlockCoordinates_pointTransform_renderContext_seriesRenderingDelegate___block_invoke;
  v14[3] = &unk_1E81BCA30;
  v15 = delegateCopy;
  contextCopy = context;
  v14[4] = self;
  v11 = *&transform->c;
  v13[0] = *&transform->a;
  v13[1] = v11;
  v13[2] = *&transform->tx;
  v12 = delegateCopy;
  [coordinates enumerateCoordinatesWithTransform:v13 roundToViewScale:1 block:v14];
}

void __123__HKRelativeLineSeries__drawIndeterminateLozengesForBlockCoordinates_pointTransform_renderContext_seriesRenderingDelegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [v3 userInfo];
  LODWORD(v4) = [v4 _isUserInfoIndeterminateRelativeValue:v5];

  if (v4)
  {
    [*(a1 + 32) _drawIndeterminateLozengeForCoordinate:v6 context:*(a1 + 48) seriesRenderingDelegate:*(a1 + 40)];
  }
}

- (void)_drawIndeterminateLozengeForCoordinate:(id)coordinate context:(CGContext *)context seriesRenderingDelegate:(id)delegate
{
  coordinateCopy = coordinate;
  CGContextSaveGState(context);
  CGContextSetLineCap(context, kCGLineCapRound);
  [coordinateCopy start];
  v9 = v8;
  v11 = v10;
  [coordinateCopy end];
  v13 = v12;
  v15 = v14;
  userInfo = [coordinateCopy userInfo];

  v22 = [(HKRelativeLineSeries *)self _colorForUserInfo:userInfo];

  CGContextSetLineWidth(context, self->_indeterminateLozengeLineWidth);
  CGContextSetBlendMode(context, kCGBlendModeNormal);
  v17 = v22;
  CGContextSetStrokeColorWithColor(context, [v22 CGColor]);
  CGContextMoveToPoint(context, v9, v11);
  CGContextAddLineToPoint(context, v13, v15);
  CGContextStrokePath(context);
  indeterminateLozengeHollowLineRatio = self->_indeterminateLozengeHollowLineRatio;
  if (indeterminateLozengeHollowLineRatio > 0.0)
  {
    CGContextSetLineWidth(context, indeterminateLozengeHollowLineRatio * self->_indeterminateLozengeLineWidth);
    systemGray6Color = [MEMORY[0x1E69DC888] systemGray6Color];
    systemGray5Color = [MEMORY[0x1E69DC888] systemGray5Color];
    v21 = HKUIDynamicColorWithColors(systemGray6Color, systemGray5Color);
    CGContextSetStrokeColorWithColor(context, [v21 CGColor]);

    CGContextMoveToPoint(context, v9, v11);
    CGContextAddLineToPoint(context, v13, v15);
    CGContextStrokePath(context);
  }

  CGContextRestoreGState(context);
}

- (id)_colorForUserInfo:(id)info
{
  infoCopy = info;
  if ([(HKGraphSeries *)self allowsSelection])
  {
    v5 = infoCopy;
    relativeValueState = [v5 relativeValueState];
    if ([relativeValueState integerValue] == 1)
    {

      v7 = &OBJC_IVAR___HKRelativeLineSeries__unavailableColor;
    }

    else
    {
      relativeValueState2 = [v5 relativeValueState];
      integerValue = [relativeValueState2 integerValue];

      v7 = &OBJC_IVAR___HKRelativeLineSeries__color;
      if (integerValue == 2)
      {
        v7 = &OBJC_IVAR___HKRelativeLineSeries__unavailableColor;
      }
    }

    hk_chartInactiveSeriesColor = *(&self->super.super.super.isa + *v7);
  }

  else
  {
    hk_chartInactiveSeriesColor = [MEMORY[0x1E69DC888] hk_chartInactiveSeriesColor];
  }

  return hk_chartInactiveSeriesColor;
}

- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis
{
  axisCopy = axis;
  yAxisCopy = yAxis;
  chartPoints = [block chartPoints];
  if (!chartPoints)
  {
    [HKRelativeLineSeries coordinatesForBlock:blockPath:xAxis:yAxis:];
  }

  transform = [axisCopy transform];
  transform2 = [yAxisCopy transform];

  array = [MEMORY[0x1E695DF70] array];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __66__HKRelativeLineSeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke;
  v23[3] = &unk_1E81BCA58;
  v24 = transform;
  selfCopy = self;
  v26 = transform2;
  v27 = array;
  v16 = array;
  v17 = transform2;
  v18 = transform;
  [chartPoints enumerateObjectsUsingBlock:v23];
  v21 = *&path->index;
  resolution = path->resolution;
  v19 = [HKGraphSeriesBlockCoordinateList coordinateListWithCoordinates:v16 blockPath:&v21];

  return v19;
}

void __66__HKRelativeLineSeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke(void *a1, void *a2)
{
  v32 = a2;
  v3 = a1[4];
  v4 = [v32 xValueAsGenericType];
  [v3 coordinateForValue:v4];
  v6 = v5;

  v7 = a1[5];
  v8 = [v32 userInfo];
  LODWORD(v7) = [v7 _isUserInfoIndeterminateRelativeValue:v8];

  if (v7)
  {
    v9 = a1[5];
    v10 = [v32 userInfo];
    [v9 _indeterminateLozengeValueForUserInfo:v10];
    v12 = v11;

    v13 = a1[6];
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:-v12];
    [v13 coordinateForValue:v14];
    v16 = v15;

    v17 = a1[6];
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
    [v17 coordinateForValue:v18];
    v20 = v19;

    v21 = a1[7];
    v22 = [_HKRelativeLineSeriesBlockCoordinate alloc];
    v23 = [v32 userInfo];
    v24 = v22;
    v25 = v6;
    v26 = v16;
  }

  else
  {
    v27 = a1[6];
    v28 = [v32 yValue];
    [v27 coordinateForValue:v28];
    v20 = v29;

    v21 = a1[7];
    v30 = [_HKRelativeLineSeriesBlockCoordinate alloc];
    v23 = [v32 userInfo];
    v24 = v30;
    v25 = v6;
    v26 = v20;
  }

  v31 = [(_HKRelativeLineSeriesBlockCoordinate *)v24 initWithStart:v23 end:v25 userInfo:v26, v6, v20];
  [v21 addObject:v31];
}

- (BOOL)_shouldForceGapBetweenUserInfo:(id)info andUserInfo:(id)userInfo
{
  userInfoCopy = userInfo;
  v7 = [(HKRelativeLineSeries *)self _isUserInfoIndeterminateRelativeValue:info]|| [(HKRelativeLineSeries *)self _isUserInfoIndeterminateRelativeValue:userInfoCopy];

  return v7;
}

- (BOOL)_isUserInfoIndeterminateRelativeValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    relativeValueState = [valueCopy relativeValueState];
    v5 = [relativeValueState integerValue] != 3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)_indeterminateLozengeValueForUserInfo:(id)info
{
  infoCopy = info;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unit = [infoCopy unit];
    _changeInDegreeFahrenheitUnit = [MEMORY[0x1E696C510] _changeInDegreeFahrenheitUnit];
    v7 = [unit isEqual:_changeInDegreeFahrenheitUnit];

    v8 = &unk_1C3D5DCB0;
    if (v7)
    {
      v8 = &unk_1C3D5DCC0;
    }

    v9 = v8[self->_chartSizeClass == 1];
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(HKRelativeLineSeries *)self _indeterminateLozengeValueForUserInfo:infoCopy, v10];
    }

    v9 = 0.0;
  }

  return v9;
}

- (double)distanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  coordinateCopy = coordinate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKRelativeLineSeries distanceFromPoint:blockCoordinate:chartRect:];
  }

  [coordinateCopy midpoint];
  UIDistanceBetweenPoints();
  v7 = v6;

  return v7;
}

- (double)xAxisDistanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  x = point.x;
  coordinateCopy = coordinate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKRelativeLineSeries xAxisDistanceFromPoint:blockCoordinate:chartRect:];
  }

  [coordinateCopy midpoint];
  v8 = vabdd_f64(v7, x);

  return v8;
}

- (double)yAxisDifferenceToPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  y = point.y;
  coordinateCopy = coordinate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKRelativeLineSeries yAxisDifferenceToPoint:blockCoordinate:chartRect:];
  }

  [coordinateCopy midpoint];
  v8 = v7 - y;

  return v8;
}

- (BOOL)blockCoordinateIsVisibleInsideOfChartRect:(CGRect)rect blockCoordinate:(id)coordinate
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [coordinate midpoint];
  v9 = v8;
  v11 = v10;
  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;

  return CGRectContainsPoint(*&v12, *&v9);
}

- (BOOL)blockCoordinate:(id)coordinate lessThan:(id)than
{
  thanCopy = than;
  [coordinate midpoint];
  v7 = v6;
  [thanCopy midpoint];
  v9 = v8;

  return v7 < v9;
}

- (BOOL)blockCoordinate:(id)coordinate greaterThan:(id)than
{
  thanCopy = than;
  [coordinate midpoint];
  v7 = v6;
  [thanCopy midpoint];
  v9 = v8;

  return v7 > v9;
}

- (void)coordinatesForBlock:blockPath:xAxis:yAxis:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"points != nil" object:? file:? lineNumber:? description:?];
}

- (void)_indeterminateLozengeValueForUserInfo:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v5 = v4;
  v7 = 138543618;
  v8 = v4;
  v9 = 2114;
  v10 = objc_opt_class();
  v6 = v10;
  _os_log_error_impl(&dword_1C3942000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] Received unexpected user info %{public}@", &v7, 0x16u);
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

@end