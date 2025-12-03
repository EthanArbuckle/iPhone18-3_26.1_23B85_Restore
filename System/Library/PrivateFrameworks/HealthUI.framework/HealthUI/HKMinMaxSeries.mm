@interface HKMinMaxSeries
- (BOOL)blockCoordinate:(id)coordinate greaterThan:(id)than;
- (BOOL)blockCoordinate:(id)coordinate lessThan:(id)than;
- (HKMinMaxSeries)init;
- (HKStrokeStyle)selectedStrokeStyle;
- (HKStrokeStyle)unselectedStrokeStyle;
- (UIImage)selectedPointMarkerImage;
- (UIImage)unselectedPointMarkerImage;
- (double)distanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (double)xAxisDistanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (double)yAxisDifferenceToPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis;
- (void)_drawPointMarkersWithBlockCoordinates:(id)coordinates pointTransform:(CGAffineTransform *)transform context:(CGContext *)context;
- (void)_drawStrokeWithBlockCoordinates:(id)coordinates pointTransform:(CGAffineTransform *)transform context:(CGContext *)context axisRect:(CGRect)rect;
- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate;
- (void)setSelectedPointMarkerImage:(id)image;
- (void)setSelectedStrokeStyle:(id)style;
- (void)setUnselectedPointMarkerImage:(id)image;
- (void)setUnselectedStrokeStyle:(id)style;
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
  seriesMutableStateLock = [(HKMinMaxSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_unselectedStrokeStyleStorage;
  seriesMutableStateLock2 = [(HKMinMaxSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setUnselectedStrokeStyle:(id)style
{
  styleCopy = style;
  seriesMutableStateLock = [(HKMinMaxSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  unselectedStrokeStyleStorage = self->_unselectedStrokeStyleStorage;
  self->_unselectedStrokeStyleStorage = styleCopy;

  seriesMutableStateLock2 = [(HKMinMaxSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (HKStrokeStyle)selectedStrokeStyle
{
  seriesMutableStateLock = [(HKMinMaxSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_selectedStrokeStyleStorage;
  seriesMutableStateLock2 = [(HKMinMaxSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setSelectedStrokeStyle:(id)style
{
  styleCopy = style;
  seriesMutableStateLock = [(HKMinMaxSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  selectedStrokeStyleStorage = self->_selectedStrokeStyleStorage;
  self->_selectedStrokeStyleStorage = styleCopy;

  seriesMutableStateLock2 = [(HKMinMaxSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (UIImage)unselectedPointMarkerImage
{
  seriesMutableStateLock = [(HKMinMaxSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_unselectedPointMarkerImageStorage;
  seriesMutableStateLock2 = [(HKMinMaxSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setUnselectedPointMarkerImage:(id)image
{
  imageCopy = image;
  seriesMutableStateLock = [(HKMinMaxSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  unselectedPointMarkerImageStorage = self->_unselectedPointMarkerImageStorage;
  self->_unselectedPointMarkerImageStorage = imageCopy;

  seriesMutableStateLock2 = [(HKMinMaxSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (UIImage)selectedPointMarkerImage
{
  seriesMutableStateLock = [(HKMinMaxSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_selectedPointMarkerImageStorage;
  seriesMutableStateLock2 = [(HKMinMaxSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setSelectedPointMarkerImage:(id)image
{
  imageCopy = image;
  seriesMutableStateLock = [(HKMinMaxSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  selectedPointMarkerImageStorage = self->_selectedPointMarkerImageStorage;
  self->_selectedPointMarkerImageStorage = imageCopy;

  seriesMutableStateLock2 = [(HKMinMaxSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  coordinatesCopy = coordinates;
  unselectedStrokeStyle = [(HKMinMaxSeries *)self unselectedStrokeStyle];
  if (unselectedStrokeStyle)
  {
  }

  else
  {
    selectedStrokeStyle = [(HKMinMaxSeries *)self selectedStrokeStyle];

    if (!selectedStrokeStyle)
    {
      goto LABEL_5;
    }
  }

  v19 = *&transform->c;
  v23 = *&transform->a;
  v24 = v19;
  v25 = *&transform->tx;
  [(HKMinMaxSeries *)self _drawStrokeWithBlockCoordinates:coordinatesCopy pointTransform:&v23 context:context axisRect:x, y, width, height];
LABEL_5:
  unselectedPointMarkerImage = [(HKMinMaxSeries *)self unselectedPointMarkerImage];
  if (unselectedPointMarkerImage)
  {

LABEL_8:
    v22 = *&transform->c;
    v23 = *&transform->a;
    v24 = v22;
    v25 = *&transform->tx;
    [(HKMinMaxSeries *)self _drawPointMarkersWithBlockCoordinates:coordinatesCopy pointTransform:&v23 context:context];
    goto LABEL_9;
  }

  selectedPointMarkerImage = [(HKMinMaxSeries *)self selectedPointMarkerImage];

  if (selectedPointMarkerImage)
  {
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_drawStrokeWithBlockCoordinates:(id)coordinates pointTransform:(CGAffineTransform *)transform context:(CGContext *)context axisRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  coordinatesCopy = coordinates;
  CGContextSaveGState(context);
  unselectedStrokeStyle = [(HKMinMaxSeries *)self unselectedStrokeStyle];
  [unselectedStrokeStyle lineWidth];
  v16 = v15;

  selectedStrokeStyle = [(HKMinMaxSeries *)self selectedStrokeStyle];
  [selectedStrokeStyle lineWidth];
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
  v26 = *&transform->c;
  v31[0] = *&transform->a;
  v31[1] = v26;
  v31[2] = *&transform->tx;
  [coordinatesCopy enumerateCoordinatesWithTransform:v31 roundToViewScale:1 block:v32];

  unselectedStrokeStyle2 = [(HKMinMaxSeries *)self unselectedStrokeStyle];

  if (unselectedStrokeStyle2)
  {
    unselectedStrokeStyle3 = [(HKMinMaxSeries *)self unselectedStrokeStyle];
    [unselectedStrokeStyle3 applyToContext:context];

    CGContextAddPath(context, [v24 CGPath]);
    CGContextStrokePath(context);
  }

  selectedStrokeStyle2 = [(HKMinMaxSeries *)self selectedStrokeStyle];

  if (selectedStrokeStyle2)
  {
    selectedStrokeStyle3 = [(HKMinMaxSeries *)self selectedStrokeStyle];
    [selectedStrokeStyle3 applyToContext:context];

    CGContextAddPath(context, [v25 CGPath]);
    CGContextStrokePath(context);
  }

  CGContextRestoreGState(context);
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

- (void)_drawPointMarkersWithBlockCoordinates:(id)coordinates pointTransform:(CGAffineTransform *)transform context:(CGContext *)context
{
  coordinatesCopy = coordinates;
  CGContextSaveGState(context);
  unselectedPointMarkerImage = [(HKMinMaxSeries *)self unselectedPointMarkerImage];
  v10 = HKChartSeriesPointMarkerBaseRect(unselectedPointMarkerImage);
  v12 = v11;
  v14 = v13;
  v16 = v15;

  unselectedPointMarkerImage2 = [(HKMinMaxSeries *)self unselectedPointMarkerImage];
  cGImage = [unselectedPointMarkerImage2 CGImage];

  selectedPointMarkerImage = [(HKMinMaxSeries *)self selectedPointMarkerImage];
  v20 = HKChartSeriesPointMarkerBaseRect(selectedPointMarkerImage);
  v22 = v21;
  v24 = v23;
  v26 = v25;

  selectedPointMarkerImage2 = [(HKMinMaxSeries *)self selectedPointMarkerImage];
  cGImage2 = [selectedPointMarkerImage2 CGImage];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  [(HKGraphSeries *)self selectedPathRange];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __79__HKMinMaxSeries__drawPointMarkersWithBlockCoordinates_pointTransform_context___block_invoke;
  v31[3] = &__block_descriptor_184_e94_v64__0__HKMinMaxCoordinate_8____HKGraphSeriesDataBlockPath_qqq_q_16__HKMinMaxCoordinate_48_B56l;
  v31[4] = cGImage;
  *&v31[5] = v10;
  v31[6] = v12;
  v31[7] = v14;
  v31[8] = v16;
  v32 = v42;
  v33 = v43;
  v34 = v44;
  v35 = v45;
  v36 = cGImage2;
  v37 = v20;
  v38 = v22;
  v39 = v24;
  v40 = v26;
  contextCopy = context;
  v29 = *&transform->c;
  v30[0] = *&transform->a;
  v30[1] = v29;
  v30[2] = *&transform->tx;
  [coordinatesCopy enumerateCoordinatesWithTransform:v30 roundToViewScale:1 block:v31];

  CGContextRestoreGState(context);
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

- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis
{
  axisCopy = axis;
  yAxisCopy = yAxis;
  chartPoints = [block chartPoints];
  if (!chartPoints)
  {
    [HKMinMaxSeries coordinatesForBlock:blockPath:xAxis:yAxis:];
  }

  transform = [axisCopy transform];
  transform2 = [yAxisCopy transform];

  v14 = objc_opt_new();
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __60__HKMinMaxSeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke;
  v22[3] = &unk_1E81B6998;
  v23 = v14;
  v24 = transform;
  v25 = transform2;
  v15 = transform2;
  v16 = transform;
  v17 = v14;
  [chartPoints enumerateObjectsUsingBlock:v22];
  v20 = *&path->index;
  resolution = path->resolution;
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

- (double)distanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  y = point.y;
  x = point.x;
  coordinateCopy = coordinate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKMinMaxSeries distanceFromPoint:blockCoordinate:chartRect:];
  }

  [coordinateCopy distanceToPoint:{x, y}];
  v9 = v8;

  return v9;
}

- (double)xAxisDistanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  x = point.x;
  coordinateCopy = coordinate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKMinMaxSeries xAxisDistanceFromPoint:blockCoordinate:chartRect:];
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
    [HKMinMaxSeries yAxisDifferenceToPoint:blockCoordinate:chartRect:];
  }

  [coordinateCopy yAxisDifferenceToPoint:{x, y}];
  v9 = v8;

  return v9;
}

- (BOOL)blockCoordinate:(id)coordinate lessThan:(id)than
{
  coordinateCopy = coordinate;
  thanCopy = than;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKMinMaxSeries blockCoordinate:lessThan:];
  }

  v7 = thanCopy;
  [coordinateCopy min];
  v9 = v8;
  [v7 min];
  v11 = v10;

  return v9 < v11;
}

- (BOOL)blockCoordinate:(id)coordinate greaterThan:(id)than
{
  coordinateCopy = coordinate;
  thanCopy = than;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKMinMaxSeries blockCoordinate:greaterThan:];
  }

  v7 = thanCopy;
  [coordinateCopy max];
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