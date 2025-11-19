@interface HKRelativeLineSeries
- (BOOL)_isUserInfoIndeterminateRelativeValue:(id)a3;
- (BOOL)_shouldForceGapBetweenUserInfo:(id)a3 andUserInfo:(id)a4;
- (BOOL)blockCoordinate:(id)a3 greaterThan:(id)a4;
- (BOOL)blockCoordinate:(id)a3 lessThan:(id)a4;
- (BOOL)blockCoordinateIsVisibleInsideOfChartRect:(CGRect)a3 blockCoordinate:(id)a4;
- (double)_indeterminateLozengeValueForUserInfo:(id)a3;
- (double)distanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (double)xAxisDistanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (double)yAxisDifferenceToPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (id)_colorForUserInfo:(id)a3;
- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6;
- (id)initFromLineSeries:(id)a3 color:(id)a4 unavailableColor:(id)a5 indeterminateLozengeLineWidth:(double)a6 chartSizeClass:(int64_t)a7;
- (void)_drawIndeterminateLozengeForCoordinate:(id)a3 context:(CGContext *)a4 seriesRenderingDelegate:(id)a5;
- (void)_drawIndeterminateLozengesForBlockCoordinates:(id)a3 pointTransform:(CGAffineTransform *)a4 renderContext:(CGContext *)a5 seriesRenderingDelegate:(id)a6;
- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9;
@end

@implementation HKRelativeLineSeries

- (id)initFromLineSeries:(id)a3 color:(id)a4 unavailableColor:(id)a5 indeterminateLozengeLineWidth:(double)a6 chartSizeClass:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v24.receiver = self;
  v24.super_class = HKRelativeLineSeries;
  v15 = [(HKLineSeries *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_color, a4);
    objc_storeStrong(&v16->_unavailableColor, a5);
    v16->_indeterminateLozengeLineWidth = a6;
    v16->_indeterminateLozengeHollowLineRatio = 0.5;
    v16->_chartSizeClass = a7;
    v17 = [v12 unhighlightedPresentationStyles];
    [(HKLineSeries *)v16 setUnhighlightedPresentationStyles:v17];

    v18 = [v12 highlightedPresentationStyles];
    [(HKLineSeries *)v16 setHighlightedPresentationStyles:v18];

    v19 = [v12 selectedPresentationStyles];
    [(HKLineSeries *)v16 setSelectedPresentationStyles:v19];

    v20 = [v12 selectedPointMarkerStyle];
    [(HKLineSeries *)v16 setSelectedPointMarkerStyle:v20];

    v21 = [v12 inactivePresentationStyle];
    [(HKLineSeries *)v16 setInactivePresentationStyle:v21];

    -[HKLineSeries setFlatLastValue:](v16, "setFlatLastValue:", [v12 flatLastValue]);
    -[HKLineSeries setExtendLastValue:](v16, "setExtendLastValue:", [v12 extendLastValue]);
    -[HKLineSeries setExtendFirstValue:](v16, "setExtendFirstValue:", [v12 extendFirstValue]);
    v22 = [v12 maximumConnectionDistance];
    [(HKLineSeries *)v16 setMaximumConnectionDistance:v22];
  }

  return v16;
}

- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v56 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v42 = a5;
  v41 = a8;
  v20 = a9;
  v21 = *&a6->c;
  v52 = *&a6->a;
  v39 = a6;
  v40 = v20;
  v22 = *&a6->tx;
  v53 = v21;
  v54 = v22;
  v43 = a7;
  [(HKRelativeLineSeries *)self _drawIndeterminateLozengesForBlockCoordinates:v19 pointTransform:&v52 renderContext:a7 seriesRenderingDelegate:?];
  v23 = [MEMORY[0x1E695DF70] array];
  v24 = [MEMORY[0x1E695DFA8] set];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v44 = v19;
  v25 = [v19 coordinates];
  v26 = [v25 countByEnumeratingWithState:&v48 objects:v55 count:16];
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
          objc_enumerationMutation(v25);
        }

        v31 = *(*(&v48 + 1) + 8 * i);
        if (v28)
        {
          v32 = MEMORY[0x1E696B098];
          [*(*(&v48 + 1) + 8 * i) coordinate];
          v33 = [v32 valueWithCGPoint:?];
          [v24 addObject:v33];
        }

        v34 = [v31 userInfo];
        v28 = [(HKRelativeLineSeries *)self _isUserInfoIndeterminateRelativeValue:v34];

        if (!v28)
        {
          [v23 addObject:v31];
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v48 objects:v55 count:16];
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

  v35 = [HKGraphSeriesBlockCoordinateList coordinateListWithCoordinates:v23 blockPath:&v52];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __163__HKRelativeLineSeries_drawSeriesWithBlockCoordinates_axisRect_zoomLevelConfiguration_pointTransform_renderContext_secondaryRenderContext_seriesRenderingDelegate___block_invoke;
  v46[3] = &unk_1E81BCA08;
  v47 = v24;
  v45.receiver = self;
  v45.super_class = HKRelativeLineSeries;
  v36 = *&v39->c;
  v52 = *&v39->a;
  v37 = *&v39->tx;
  v53 = v36;
  v54 = v37;
  v38 = v24;
  [(HKLineSeries *)&v45 drawSeriesWithBlockCoordinates:v35 axisRect:v42 zoomLevelConfiguration:&v52 pointTransform:v43 renderContext:v41 secondaryRenderContext:v40 seriesRenderingDelegate:x forceGapBetweenUntransformedPoints:y, width, height, v46];
}

uint64_t __163__HKRelativeLineSeries_drawSeriesWithBlockCoordinates_axisRect_zoomLevelConfiguration_pointTransform_renderContext_secondaryRenderContext_seriesRenderingDelegate___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = [MEMORY[0x1E696B098] valueWithCGPoint:{a4, a5}];
  v7 = [*(a1 + 32) containsObject:v6];

  return v7;
}

- (void)_drawIndeterminateLozengesForBlockCoordinates:(id)a3 pointTransform:(CGAffineTransform *)a4 renderContext:(CGContext *)a5 seriesRenderingDelegate:(id)a6
{
  v10 = a6;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __123__HKRelativeLineSeries__drawIndeterminateLozengesForBlockCoordinates_pointTransform_renderContext_seriesRenderingDelegate___block_invoke;
  v14[3] = &unk_1E81BCA30;
  v15 = v10;
  v16 = a5;
  v14[4] = self;
  v11 = *&a4->c;
  v13[0] = *&a4->a;
  v13[1] = v11;
  v13[2] = *&a4->tx;
  v12 = v10;
  [a3 enumerateCoordinatesWithTransform:v13 roundToViewScale:1 block:v14];
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

- (void)_drawIndeterminateLozengeForCoordinate:(id)a3 context:(CGContext *)a4 seriesRenderingDelegate:(id)a5
{
  v7 = a3;
  CGContextSaveGState(a4);
  CGContextSetLineCap(a4, kCGLineCapRound);
  [v7 start];
  v9 = v8;
  v11 = v10;
  [v7 end];
  v13 = v12;
  v15 = v14;
  v16 = [v7 userInfo];

  v22 = [(HKRelativeLineSeries *)self _colorForUserInfo:v16];

  CGContextSetLineWidth(a4, self->_indeterminateLozengeLineWidth);
  CGContextSetBlendMode(a4, kCGBlendModeNormal);
  v17 = v22;
  CGContextSetStrokeColorWithColor(a4, [v22 CGColor]);
  CGContextMoveToPoint(a4, v9, v11);
  CGContextAddLineToPoint(a4, v13, v15);
  CGContextStrokePath(a4);
  indeterminateLozengeHollowLineRatio = self->_indeterminateLozengeHollowLineRatio;
  if (indeterminateLozengeHollowLineRatio > 0.0)
  {
    CGContextSetLineWidth(a4, indeterminateLozengeHollowLineRatio * self->_indeterminateLozengeLineWidth);
    v19 = [MEMORY[0x1E69DC888] systemGray6Color];
    v20 = [MEMORY[0x1E69DC888] systemGray5Color];
    v21 = HKUIDynamicColorWithColors(v19, v20);
    CGContextSetStrokeColorWithColor(a4, [v21 CGColor]);

    CGContextMoveToPoint(a4, v9, v11);
    CGContextAddLineToPoint(a4, v13, v15);
    CGContextStrokePath(a4);
  }

  CGContextRestoreGState(a4);
}

- (id)_colorForUserInfo:(id)a3
{
  v4 = a3;
  if ([(HKGraphSeries *)self allowsSelection])
  {
    v5 = v4;
    v6 = [v5 relativeValueState];
    if ([v6 integerValue] == 1)
    {

      v7 = &OBJC_IVAR___HKRelativeLineSeries__unavailableColor;
    }

    else
    {
      v9 = [v5 relativeValueState];
      v10 = [v9 integerValue];

      v7 = &OBJC_IVAR___HKRelativeLineSeries__color;
      if (v10 == 2)
      {
        v7 = &OBJC_IVAR___HKRelativeLineSeries__unavailableColor;
      }
    }

    v8 = *(&self->super.super.super.isa + *v7);
  }

  else
  {
    v8 = [MEMORY[0x1E69DC888] hk_chartInactiveSeriesColor];
  }

  return v8;
}

- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = [a3 chartPoints];
  if (!v12)
  {
    [HKRelativeLineSeries coordinatesForBlock:blockPath:xAxis:yAxis:];
  }

  v13 = [v10 transform];
  v14 = [v11 transform];

  v15 = [MEMORY[0x1E695DF70] array];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __66__HKRelativeLineSeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke;
  v23[3] = &unk_1E81BCA58;
  v24 = v13;
  v25 = self;
  v26 = v14;
  v27 = v15;
  v16 = v15;
  v17 = v14;
  v18 = v13;
  [v12 enumerateObjectsUsingBlock:v23];
  v21 = *&a4->index;
  resolution = a4->resolution;
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

- (BOOL)_shouldForceGapBetweenUserInfo:(id)a3 andUserInfo:(id)a4
{
  v6 = a4;
  v7 = [(HKRelativeLineSeries *)self _isUserInfoIndeterminateRelativeValue:a3]|| [(HKRelativeLineSeries *)self _isUserInfoIndeterminateRelativeValue:v6];

  return v7;
}

- (BOOL)_isUserInfoIndeterminateRelativeValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 relativeValueState];
    v5 = [v4 integerValue] != 3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)_indeterminateLozengeValueForUserInfo:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 unit];
    v6 = [MEMORY[0x1E696C510] _changeInDegreeFahrenheitUnit];
    v7 = [v5 isEqual:v6];

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
      [(HKRelativeLineSeries *)self _indeterminateLozengeValueForUserInfo:v4, v10];
    }

    v9 = 0.0;
  }

  return v9;
}

- (double)distanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  v5 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKRelativeLineSeries distanceFromPoint:blockCoordinate:chartRect:];
  }

  [v5 midpoint];
  UIDistanceBetweenPoints();
  v7 = v6;

  return v7;
}

- (double)xAxisDistanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  x = a3.x;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKRelativeLineSeries xAxisDistanceFromPoint:blockCoordinate:chartRect:];
  }

  [v6 midpoint];
  v8 = vabdd_f64(v7, x);

  return v8;
}

- (double)yAxisDifferenceToPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  y = a3.y;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKRelativeLineSeries yAxisDifferenceToPoint:blockCoordinate:chartRect:];
  }

  [v6 midpoint];
  v8 = v7 - y;

  return v8;
}

- (BOOL)blockCoordinateIsVisibleInsideOfChartRect:(CGRect)a3 blockCoordinate:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [a4 midpoint];
  v9 = v8;
  v11 = v10;
  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;

  return CGRectContainsPoint(*&v12, *&v9);
}

- (BOOL)blockCoordinate:(id)a3 lessThan:(id)a4
{
  v5 = a4;
  [a3 midpoint];
  v7 = v6;
  [v5 midpoint];
  v9 = v8;

  return v7 < v9;
}

- (BOOL)blockCoordinate:(id)a3 greaterThan:(id)a4
{
  v5 = a4;
  [a3 midpoint];
  v7 = v6;
  [v5 midpoint];
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