@interface HKMinMaxSeries
- (BOOL)blockCoordinate:(id)a3 greaterThan:(id)a4;
- (BOOL)blockCoordinate:(id)a3 lessThan:(id)a4;
- (HKMinMaxSeries)init;
- (HKStrokeStyle)selectedStrokeStyle;
- (HKStrokeStyle)unselectedStrokeStyle;
- (UIImage)selectedPointMarkerImage;
- (UIImage)unselectedPointMarkerImage;
- (double)distanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (double)xAxisDistanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (double)yAxisDifferenceToPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6;
- (void)_drawPointMarkersWithBlockCoordinates:(id)a3 pointTransform:(CGAffineTransform *)a4 context:(CGContext *)a5;
- (void)_drawStrokeWithBlockCoordinates:(id)a3 pointTransform:(CGAffineTransform *)a4 context:(CGContext *)a5 axisRect:(CGRect)a6;
- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9;
- (void)setSelectedPointMarkerImage:(id)a3;
- (void)setSelectedStrokeStyle:(id)a3;
- (void)setUnselectedPointMarkerImage:(id)a3;
- (void)setUnselectedStrokeStyle:(id)a3;
@end

@implementation HKMinMaxSeries

- (HKMinMaxSeries)init
{
  v10.receiver = self;
  v10.super_class = HKMinMaxSeries;
  v2 = [(HKGraphSeries *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    seriesMutableStateLock = v2->_seriesMutableStateLock;
    v2->_seriesMutableStateLock = v3;

    [(NSLock *)v2->_seriesMutableStateLock setName:@"HKMinMaxSeriesLock"];
    unselectedStrokeStyleStorage = v2->_unselectedStrokeStyleStorage;
    v2->_unselectedStrokeStyleStorage = 0;

    selectedStrokeStyleStorage = v2->_selectedStrokeStyleStorage;
    v2->_selectedStrokeStyleStorage = 0;

    unselectedPointMarkerImageStorage = v2->_unselectedPointMarkerImageStorage;
    v2->_unselectedPointMarkerImageStorage = 0;

    selectedPointMarkerImageStorage = v2->_selectedPointMarkerImageStorage;
    v2->_selectedPointMarkerImageStorage = 0;
  }

  return v2;
}

- (HKStrokeStyle)unselectedStrokeStyle
{
  v3 = [(HKMinMaxSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_unselectedStrokeStyleStorage;
  v5 = [(HKMinMaxSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setUnselectedStrokeStyle:(id)a3
{
  v4 = a3;
  v5 = [(HKMinMaxSeries *)self seriesMutableStateLock];
  [v5 lock];

  unselectedStrokeStyleStorage = self->_unselectedStrokeStyleStorage;
  self->_unselectedStrokeStyleStorage = v4;

  v7 = [(HKMinMaxSeries *)self seriesMutableStateLock];
  [v7 unlock];
}

- (HKStrokeStyle)selectedStrokeStyle
{
  v3 = [(HKMinMaxSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_selectedStrokeStyleStorage;
  v5 = [(HKMinMaxSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setSelectedStrokeStyle:(id)a3
{
  v4 = a3;
  v5 = [(HKMinMaxSeries *)self seriesMutableStateLock];
  [v5 lock];

  selectedStrokeStyleStorage = self->_selectedStrokeStyleStorage;
  self->_selectedStrokeStyleStorage = v4;

  v7 = [(HKMinMaxSeries *)self seriesMutableStateLock];
  [v7 unlock];
}

- (UIImage)unselectedPointMarkerImage
{
  v3 = [(HKMinMaxSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_unselectedPointMarkerImageStorage;
  v5 = [(HKMinMaxSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setUnselectedPointMarkerImage:(id)a3
{
  v4 = a3;
  v5 = [(HKMinMaxSeries *)self seriesMutableStateLock];
  [v5 lock];

  unselectedPointMarkerImageStorage = self->_unselectedPointMarkerImageStorage;
  self->_unselectedPointMarkerImageStorage = v4;

  v7 = [(HKMinMaxSeries *)self seriesMutableStateLock];
  [v7 unlock];
}

- (UIImage)selectedPointMarkerImage
{
  v3 = [(HKMinMaxSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_selectedPointMarkerImageStorage;
  v5 = [(HKMinMaxSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setSelectedPointMarkerImage:(id)a3
{
  v4 = a3;
  v5 = [(HKMinMaxSeries *)self seriesMutableStateLock];
  [v5 lock];

  selectedPointMarkerImageStorage = self->_selectedPointMarkerImageStorage;
  self->_selectedPointMarkerImageStorage = v4;

  v7 = [(HKMinMaxSeries *)self seriesMutableStateLock];
  [v7 unlock];
}

- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v16 = a3;
  v17 = [(HKMinMaxSeries *)self unselectedStrokeStyle];
  if (v17)
  {
  }

  else
  {
    v18 = [(HKMinMaxSeries *)self selectedStrokeStyle];

    if (!v18)
    {
      goto LABEL_5;
    }
  }

  v19 = *&a6->c;
  v23 = *&a6->a;
  v24 = v19;
  v25 = *&a6->tx;
  [(HKMinMaxSeries *)self _drawStrokeWithBlockCoordinates:v16 pointTransform:&v23 context:a7 axisRect:x, y, width, height];
LABEL_5:
  v20 = [(HKMinMaxSeries *)self unselectedPointMarkerImage];
  if (v20)
  {

LABEL_8:
    v22 = *&a6->c;
    v23 = *&a6->a;
    v24 = v22;
    v25 = *&a6->tx;
    [(HKMinMaxSeries *)self _drawPointMarkersWithBlockCoordinates:v16 pointTransform:&v23 context:a7];
    goto LABEL_9;
  }

  v21 = [(HKMinMaxSeries *)self selectedPointMarkerImage];

  if (v21)
  {
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_drawStrokeWithBlockCoordinates:(id)a3 pointTransform:(CGAffineTransform *)a4 context:(CGContext *)a5 axisRect:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v13 = a3;
  CGContextSaveGState(a5);
  v14 = [(HKMinMaxSeries *)self unselectedStrokeStyle];
  [v14 lineWidth];
  v16 = v15;

  v17 = [(HKMinMaxSeries *)self selectedStrokeStyle];
  [v17 lineWidth];
  v19 = v18;

  if (v19 < v16)
  {
    v19 = v16;
  }

  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  MaxX = CGRectGetMaxX(v46);
  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = width;
  v47.size.height = height;
  MinX = CGRectGetMinX(v47);
  v22 = objc_opt_new();
  v23 = objc_opt_new();
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  [(HKGraphSeries *)self selectedPathRange];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __82__HKMinMaxSeries__drawStrokeWithBlockCoordinates_pointTransform_context_axisRect___block_invoke;
  v32[3] = &unk_1E81BCB00;
  v35 = MinX;
  v36 = v19;
  v37 = MaxX;
  v24 = v22;
  v33 = v24;
  v38 = v42;
  v39 = v43;
  v40 = v44;
  v41 = v45;
  v25 = v23;
  v34 = v25;
  v26 = *&a4->c;
  v31[0] = *&a4->a;
  v31[1] = v26;
  v31[2] = *&a4->tx;
  [v13 enumerateCoordinatesWithTransform:v31 roundToViewScale:1 block:v32];

  v27 = [(HKMinMaxSeries *)self unselectedStrokeStyle];

  if (v27)
  {
    v28 = [(HKMinMaxSeries *)self unselectedStrokeStyle];
    [v28 applyToContext:a5];

    CGContextAddPath(a5, [v24 CGPath]);
    CGContextStrokePath(a5);
  }

  v29 = [(HKMinMaxSeries *)self selectedStrokeStyle];

  if (v29)
  {
    v30 = [(HKMinMaxSeries *)self selectedStrokeStyle];
    [v30 applyToContext:a5];

    CGContextAddPath(a5, [v25 CGPath]);
    CGContextStrokePath(a5);
  }

  CGContextRestoreGState(a5);
}

void __82__HKMinMaxSeries__drawStrokeWithBlockCoordinates_pointTransform_context_axisRect___block_invoke(uint64_t a1, void *a2, _OWORD *a3)
{
  v5 = a2;
  [v5 min];
  v7 = v6;
  v9 = v8;
  [v5 max];
  v11 = v10;
  v13 = v12;

  v14 = *(a1 + 56);
  if (*(a1 + 48) - v7 <= v14 && v7 - *(a1 + 64) <= v14)
  {
    v15 = *(a1 + 32);
    v16 = a3[1];
    v21[0] = *a3;
    v21[1] = v16;
    v17 = *(a1 + 88);
    v20[0] = *(a1 + 72);
    v20[1] = v17;
    v18 = *(a1 + 120);
    v20[2] = *(a1 + 104);
    v20[3] = v18;
    if (HKGraphSeriesDataPointPathInRangeInclusive(v21, v20))
    {
      v19 = *(a1 + 40);

      v15 = v19;
    }

    [v15 moveToPoint:{v11, v13}];
    [v15 addLineToPoint:{v7, v9}];
  }
}

- (void)_drawPointMarkersWithBlockCoordinates:(id)a3 pointTransform:(CGAffineTransform *)a4 context:(CGContext *)a5
{
  v8 = a3;
  CGContextSaveGState(a5);
  v9 = [(HKMinMaxSeries *)self unselectedPointMarkerImage];
  v10 = HKChartSeriesPointMarkerBaseRect(v9);
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [(HKMinMaxSeries *)self unselectedPointMarkerImage];
  v18 = [v17 CGImage];

  v19 = [(HKMinMaxSeries *)self selectedPointMarkerImage];
  v20 = HKChartSeriesPointMarkerBaseRect(v19);
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = [(HKMinMaxSeries *)self selectedPointMarkerImage];
  v28 = [v27 CGImage];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  [(HKGraphSeries *)self selectedPathRange];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __79__HKMinMaxSeries__drawPointMarkersWithBlockCoordinates_pointTransform_context___block_invoke;
  v31[3] = &__block_descriptor_184_e94_v64__0__HKMinMaxCoordinate_8____HKGraphSeriesDataBlockPath_qqq_q_16__HKMinMaxCoordinate_48_B56l;
  v31[4] = v18;
  *&v31[5] = v10;
  v31[6] = v12;
  v31[7] = v14;
  v31[8] = v16;
  v32 = v42;
  v33 = v43;
  v34 = v44;
  v35 = v45;
  v36 = v28;
  v37 = v20;
  v38 = v22;
  v39 = v24;
  v40 = v26;
  v41 = a5;
  v29 = *&a4->c;
  v30[0] = *&a4->a;
  v30[1] = v29;
  v30[2] = *&a4->tx;
  [v8 enumerateCoordinatesWithTransform:v30 roundToViewScale:1 block:v31];

  CGContextRestoreGState(a5);
}

void __79__HKMinMaxSeries__drawPointMarkersWithBlockCoordinates_pointTransform_context___block_invoke(uint64_t a1, void *a2, __int128 *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = a3[1];
  v27 = *a3;
  v28 = v9;
  v10 = *(a1 + 88);
  v23 = *(a1 + 72);
  v24 = v10;
  v11 = *(a1 + 120);
  v25 = *(a1 + 104);
  v26 = v11;
  v12 = a2;
  if (HKGraphSeriesDataPointPathInRangeInclusive(&v27, &v23))
  {
    v4 = *(a1 + 136);
    v5 = *(a1 + 144);
    v6 = *(a1 + 152);
    v7 = *(a1 + 160);
    v8 = *(a1 + 168);
  }

  [v12 min];
  v14 = v13;
  v16 = v15;
  [v12 max];
  v18 = v17;
  v20 = v19;

  v21 = *(a1 + 176);
  v29.origin.x = v5;
  v29.origin.y = v6;
  v29.size.width = v7;
  v29.size.height = v8;
  v30 = CGRectOffset(v29, v14, v16);
  CGContextDrawImage(v21, v30, v4);
  if (v14 != v18 || v16 != v20)
  {
    v22 = *(a1 + 176);
    v31.origin.x = v5;
    v31.origin.y = v6;
    v31.size.width = v7;
    v31.size.height = v8;
    v32 = CGRectOffset(v31, v18, v20);
    CGContextDrawImage(v22, v32, v4);
  }
}

- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = [a3 chartPoints];
  if (!v11)
  {
    [HKMinMaxSeries coordinatesForBlock:blockPath:xAxis:yAxis:];
  }

  v12 = [v9 transform];
  v13 = [v10 transform];

  v14 = objc_opt_new();
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __60__HKMinMaxSeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke;
  v22[3] = &unk_1E81B6998;
  v23 = v14;
  v24 = v12;
  v25 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v14;
  [v11 enumerateObjectsUsingBlock:v22];
  v20 = *&a4->index;
  resolution = a4->resolution;
  v18 = [HKGraphSeriesBlockCoordinateList coordinateListWithCoordinates:v17 blockPath:&v20];

  return v18;
}

void __60__HKMinMaxSeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke(void *a1, void *a2)
{
  v6 = a2;
  v3 = [v6 yValue];

  if (v3)
  {
    v4 = a1[4];
    v5 = [[HKMinMaxCoordinate alloc] initWithChartPoint:v6 xAxisTransform:a1[5] yAxisTransform:a1[6]];
    [v4 addObject:v5];
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
    [HKMinMaxSeries distanceFromPoint:blockCoordinate:chartRect:];
  }

  [v7 distanceToPoint:{x, y}];
  v9 = v8;

  return v9;
}

- (double)xAxisDistanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  x = a3.x;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKMinMaxSeries xAxisDistanceFromPoint:blockCoordinate:chartRect:];
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
    [HKMinMaxSeries yAxisDifferenceToPoint:blockCoordinate:chartRect:];
  }

  [v7 yAxisDifferenceToPoint:{x, y}];
  v9 = v8;

  return v9;
}

- (BOOL)blockCoordinate:(id)a3 lessThan:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKMinMaxSeries blockCoordinate:lessThan:];
  }

  v7 = v6;
  [v5 min];
  v9 = v8;
  [v7 min];
  v11 = v10;

  return v9 < v11;
}

- (BOOL)blockCoordinate:(id)a3 greaterThan:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKMinMaxSeries blockCoordinate:greaterThan:];
  }

  v7 = v6;
  [v5 max];
  v9 = v8;
  [v7 max];
  v11 = v10;

  return v9 > v11;
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