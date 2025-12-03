@interface HKHorizontalSingleLineSeries
- (BOOL)blockCoordinate:(id)coordinate greaterThan:(id)than;
- (BOOL)blockCoordinate:(id)coordinate lessThan:(id)than;
- (BOOL)shouldConnectPoints;
- (CGPoint)renderPositionForLabelLocation:(id)location rect:(CGRect)rect zoomScale:(double)scale contentOffset:(CGPoint)offset constantOffset:(double)constantOffset isHorizontal:(BOOL)horizontal optionalOffset:(CGPoint)optionalOffset;
- (HKHorizontalSingleLineSeries)init;
- (UIColor)baseColor;
- (UIImage)selectedPointMarkerImage;
- (double)distanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (double)lineWidth;
- (double)markRadius;
- (double)selectedLineWidth;
- (double)topInsetPercentage;
- (double)xAxisDistanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (double)yAxisDifferenceToPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (double)yCoordinateForLevel:(int64_t)level chartRect:(CGRect)rect;
- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis;
- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate;
- (void)setBaseColor:(id)color;
- (void)setLineWidth:(double)width;
- (void)setMarkRadius:(double)radius;
- (void)setSelectedLineWidth:(double)width;
- (void)setSelectedPointMarkerImage:(id)image;
- (void)setShouldConnectPoints:(BOOL)points;
- (void)setTopInsetPercentage:(double)percentage;
@end

@implementation HKHorizontalSingleLineSeries

- (HKHorizontalSingleLineSeries)init
{
  v9.receiver = self;
  v9.super_class = HKHorizontalSingleLineSeries;
  v2 = [(HKGraphSeries *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    seriesMutableStateLock = v2->_seriesMutableStateLock;
    v2->_seriesMutableStateLock = v3;

    [(NSLock *)v2->_seriesMutableStateLock setName:@"HKHorizontalSingleLineSeriesLock"];
    v2->_topInsetPercentageStorage = 0.5;
    v2->_shouldConnectPointsStorage = 0;
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    baseColorStorage = v2->_baseColorStorage;
    v2->_baseColorStorage = blackColor;

    v2->_lineWidthStorage = 3.0;
    v2->_selectedLineWidthStorage = 7.0;
    v2->_markRadiusStorage = 3.5;
    selectedPointMarkerImageStorage = v2->_selectedPointMarkerImageStorage;
    v2->_selectedPointMarkerImageStorage = 0;
  }

  return v2;
}

- (double)topInsetPercentage
{
  seriesMutableStateLock = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  topInsetPercentageStorage = self->_topInsetPercentageStorage;
  seriesMutableStateLock2 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return topInsetPercentageStorage;
}

- (void)setTopInsetPercentage:(double)percentage
{
  seriesMutableStateLock = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  self->_topInsetPercentageStorage = percentage;
  seriesMutableStateLock2 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (BOOL)shouldConnectPoints
{
  seriesMutableStateLock = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  LOBYTE(seriesMutableStateLock) = self->_shouldConnectPointsStorage;
  seriesMutableStateLock2 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return seriesMutableStateLock;
}

- (void)setShouldConnectPoints:(BOOL)points
{
  seriesMutableStateLock = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  self->_shouldConnectPointsStorage = points;
  seriesMutableStateLock2 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (UIColor)baseColor
{
  seriesMutableStateLock = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_baseColorStorage;
  seriesMutableStateLock2 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setBaseColor:(id)color
{
  colorCopy = color;
  seriesMutableStateLock = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  baseColorStorage = self->_baseColorStorage;
  self->_baseColorStorage = colorCopy;

  seriesMutableStateLock2 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (double)lineWidth
{
  seriesMutableStateLock = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  lineWidthStorage = self->_lineWidthStorage;
  seriesMutableStateLock2 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return lineWidthStorage;
}

- (void)setLineWidth:(double)width
{
  seriesMutableStateLock = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  self->_lineWidthStorage = width;
  seriesMutableStateLock2 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (double)selectedLineWidth
{
  seriesMutableStateLock = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  selectedLineWidthStorage = self->_selectedLineWidthStorage;
  seriesMutableStateLock2 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return selectedLineWidthStorage;
}

- (void)setSelectedLineWidth:(double)width
{
  seriesMutableStateLock = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  self->_selectedLineWidthStorage = width;
  seriesMutableStateLock2 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (double)markRadius
{
  seriesMutableStateLock = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  markRadiusStorage = self->_markRadiusStorage;
  seriesMutableStateLock2 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return markRadiusStorage;
}

- (void)setMarkRadius:(double)radius
{
  seriesMutableStateLock = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  self->_markRadiusStorage = radius;
  seriesMutableStateLock2 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (UIImage)selectedPointMarkerImage
{
  seriesMutableStateLock = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_selectedPointMarkerImageStorage;
  seriesMutableStateLock2 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setSelectedPointMarkerImage:(id)image
{
  imageCopy = image;
  seriesMutableStateLock = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  selectedPointMarkerImageStorage = self->_selectedPointMarkerImageStorage;
  self->_selectedPointMarkerImageStorage = imageCopy;

  seriesMutableStateLock2 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v107 = *MEMORY[0x1E69E9840];
  coordinatesCopy = coordinates;
  configurationCopy = configuration;
  v21 = coordinatesCopy;
  v60 = configurationCopy;
  renderContextCopy = renderContext;
  delegateCopy = delegate;
  [(HKHorizontalSingleLineSeries *)self yCoordinateForLevel:0 chartRect:x, y, width, height];
  v23 = v22;
  isHighlighted = [(HKGraphSeries *)self isHighlighted];
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  [(HKGraphSeries *)self selectedPathRange];
  if ([coordinatesCopy numCoordinates] >= 1)
  {
    CGContextSaveGState(context);
    baseColor = [(HKHorizontalSingleLineSeries *)self baseColor];
    v64 = [baseColor colorWithAlphaComponent:0.55];
    hk_chartBackgroundColor = [MEMORY[0x1E69DC888] hk_chartBackgroundColor];
    v25 = baseColor;
    cGColor = [baseColor CGColor];
    v27 = v64;
    cGColor2 = [v64 CGColor];
    v29 = hk_chartBackgroundColor;
    cGColor3 = [hk_chartBackgroundColor CGColor];
    [(HKHorizontalSingleLineSeries *)self markRadius];
    v32 = v31;
    [(HKHorizontalSingleLineSeries *)self lineWidth];
    v34 = v33;
    [(HKHorizontalSingleLineSeries *)self selectedLineWidth];
    v36 = v35;
    shouldConnectPoints = [(HKHorizontalSingleLineSeries *)self shouldConnectPoints];
    v96 = 0;
    v97 = &v96;
    v98 = 0x3032000000;
    v99 = __Block_byref_object_copy__3;
    v100 = __Block_byref_object_dispose__3;
    array = [MEMORY[0x1E695DF70] array];
    v94[0] = 0;
    v94[1] = v94;
    v94[2] = 0x2020000000;
    v95 = 1;
    v90 = 0;
    v91 = &v90;
    v92 = 0x2020000000;
    v93 = 0xFFEFFFFFFFFFFFFFLL;
    v86 = 0;
    v87 = &v86;
    v88 = 0x2020000000;
    v89 = 0xFFEFFFFFFFFFFFFFLL;
    v82 = 0;
    v83 = &v82;
    v84 = 0x2020000000;
    v85 = 0;
    v78 = 0;
    v79 = &v78;
    v80 = 0x2020000000;
    v81 = 0xFFEFFFFFFFFFFFFFLL;
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __171__HKHorizontalSingleLineSeries_drawSeriesWithBlockCoordinates_axisRect_zoomLevelConfiguration_pointTransform_renderContext_secondaryRenderContext_seriesRenderingDelegate___block_invoke;
    v71[3] = &unk_1E81B6730;
    v76 = shouldConnectPoints;
    v71[4] = &v86;
    v71[5] = v94;
    v77 = isHighlighted;
    v71[10] = context;
    v71[11] = cGColor;
    *&v71[12] = v34;
    v71[13] = cGColor2;
    *&v71[14] = v36;
    v71[15] = cGColor3;
    *&v71[16] = v32;
    *&v71[17] = v23;
    v71[6] = &v90;
    v71[7] = &v96;
    v74 = v104;
    v75 = v105;
    v72 = v102;
    v73 = v103;
    v71[8] = &v82;
    v71[9] = &v78;
    v38 = *&transform->c;
    v70[0] = *&transform->a;
    v70[1] = v38;
    v70[2] = *&transform->tx;
    [coordinatesCopy enumerateCoordinatesWithTransform:v70 roundToViewScale:1 block:v71];
    _drawSeriesGroup(context, isHighlighted, cGColor, cGColor2, cGColor, v34, v36, v32, v91[3], v87[3], v23);
    v59 = coordinatesCopy;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v39 = v97[5];
    v40 = [v39 countByEnumeratingWithState:&v66 objects:v106 count:16];
    if (v40)
    {
      v41 = *v67;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v67 != v41)
          {
            objc_enumerationMutation(v39);
          }

          v43 = *(*(&v66 + 1) + 8 * i);
          [v43 xCoord];
          v45 = v44;
          markStyle = [v43 markStyle];
          if (markStyle == 1)
          {
            [HKGraphSeries drawInnerDotMarkerInContext:context outColor:cGColor inColor:cGColor3 x:v45 y:v23 radius:v32];
          }

          else if (markStyle == 2)
          {
            [HKGraphSeries drawFilledMarkerInContext:context color:cGColor x:v45 y:v23 radius:v32];
          }
        }

        v40 = [v39 countByEnumeratingWithState:&v66 objects:v106 count:16];
      }

      while (v40);
    }

    v21 = v59;
    if (*(v83 + 24) == 1)
    {
      selectedPointMarkerImage = [(HKHorizontalSingleLineSeries *)self selectedPointMarkerImage];
      if (selectedPointMarkerImage)
      {
        selectedPointMarkerImage2 = [(HKHorizontalSingleLineSeries *)self selectedPointMarkerImage];
        v49 = HKChartSeriesPointMarkerBaseRect(selectedPointMarkerImage2);
        v51 = v50;
        v53 = v52;
        v55 = v54;

        selectedPointMarkerImage3 = [(HKHorizontalSingleLineSeries *)self selectedPointMarkerImage];
        v57 = selectedPointMarkerImage3;
        cGImage = [selectedPointMarkerImage3 CGImage];

        v108.origin.x = v49;
        v108.origin.y = v51;
        v108.size.width = v53;
        v108.size.height = v55;
        v109 = CGRectOffset(v108, v79[3], v23);
        CGContextDrawImage(context, v109, cGImage);
      }
    }

    CGContextRestoreGState(context);
    _Block_object_dispose(&v78, 8);
    _Block_object_dispose(&v82, 8);
    _Block_object_dispose(&v86, 8);
    _Block_object_dispose(&v90, 8);
    _Block_object_dispose(v94, 8);
    _Block_object_dispose(&v96, 8);
  }
}

void __171__HKHorizontalSingleLineSeries_drawSeriesWithBlockCoordinates_axisRect_zoomLevelConfiguration_pointTransform_renderContext_secondaryRenderContext_seriesRenderingDelegate___block_invoke(uint64_t a1, void *a2, _OWORD *a3)
{
  v5 = a2;
  v6 = [v5 groupToPrevious];
  [v5 xValue];
  v8 = v7;
  v9 = [v5 markStyle];

  if (*(a1 + 208) == 1)
  {
    if ((v6 & 1) == 0)
    {
      if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
      {
        _drawSeriesGroup(*(a1 + 80), *(a1 + 209), *(a1 + 88), *(a1 + 104), *(a1 + 88), *(a1 + 96), *(a1 + 112), *(a1 + 128), *(*(*(a1 + 48) + 8) + 24), *(*(*(a1 + 32) + 8) + 24), *(a1 + 136));
      }

      *(*(*(a1 + 48) + 8) + 24) = v8;
    }

    *(*(*(a1 + 32) + 8) + 24) = v8;
    if (*(a1 + 209) == 1)
    {
      v10 = [[_HKHorizontalSingleLineSeriesMarkEntry alloc] initWithXCoord:2 markStyle:v8];
      [*(*(*(a1 + 56) + 8) + 40) addObject:v10];
    }
  }

  else
  {
    _drawSeriesGroup(*(a1 + 80), *(a1 + 209), *(a1 + 88), *(a1 + 104), *(a1 + 88), *(a1 + 96), *(a1 + 112), *(a1 + 128), v8, v8, *(a1 + 136));
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = v8;
    *(*(*(a1 + 32) + 8) + 24) = v8;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  if (*(a1 + 209) == 1)
  {
    v11 = a3[1];
    v16[0] = *a3;
    v16[1] = v11;
    v12 = *(a1 + 160);
    v15[0] = *(a1 + 144);
    v15[1] = v12;
    v13 = *(a1 + 192);
    v15[2] = *(a1 + 176);
    v15[3] = v13;
    if (HKGraphSeriesDataPointPathInRangeInclusive(v16, v15))
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
      *(*(*(a1 + 72) + 8) + 24) = v8;
    }
  }

  if (v9)
  {
    v14 = [[_HKHorizontalSingleLineSeriesMarkEntry alloc] initWithXCoord:v9 markStyle:v8];
    [*(*(*(a1 + 56) + 8) + 40) addObject:v14];
  }
}

- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis
{
  v37 = *MEMORY[0x1E69E9840];
  axisCopy = axis;
  chartPoints = [block chartPoints];
  if (!chartPoints)
  {
    [HKHorizontalSingleLineSeries coordinatesForBlock:blockPath:xAxis:yAxis:];
  }

  v27 = axisCopy;
  transform = [axisCopy transform];
  v28 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = chartPoints;
  v10 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        xValue = [v14 xValue];
        [transform coordinateForValue:xValue];
        v17 = v16;
        yValue = [v14 yValue];
        integerValue = [yValue integerValue];
        groupToPrevious = [v14 groupToPrevious];
        markStyle = [v14 markStyle];
        userInfo = [v14 userInfo];
        if (markStyle != 3)
        {
          v23 = [[_HKHorizontalSingleLineSeriesCoordinate alloc] initWithXValue:integerValue yValue:(markStyle != 1) & groupToPrevious groupToPrevious:markStyle markStyle:userInfo userInfo:v17];
          [v28 addObject:v23];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v11);
  }

  v30 = *&path->index;
  resolution = path->resolution;
  v24 = [HKGraphSeriesBlockCoordinateList coordinateListWithCoordinates:v28 blockPath:&v30];

  return v24;
}

- (double)yCoordinateForLevel:(int64_t)level chartRect:(CGRect)rect
{
  height = rect.size.height;
  [(HKHorizontalSingleLineSeries *)self topInsetPercentage:level];
  v6 = height * v5;

  return HKUIFloorToScreenScale(v6);
}

- (double)distanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = point.y;
  v10 = point.x;
  coordinateCopy = coordinate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKHorizontalSingleLineSeries distanceFromPoint:blockCoordinate:chartRect:];
  }

  v13 = coordinateCopy;
  [v13 xValue];
  v15 = v14;
  yValue = [v13 yValue];

  [(HKHorizontalSingleLineSeries *)self yCoordinateForLevel:yValue chartRect:x, y, width, height];
  v18 = sqrt((v17 - v9) * (v17 - v9) + (v15 - v10) * (v15 - v10));

  return v18;
}

- (double)xAxisDistanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  x = point.x;
  coordinateCopy = coordinate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKHorizontalSingleLineSeries xAxisDistanceFromPoint:blockCoordinate:chartRect:];
  }

  [coordinateCopy xValue];
  v8 = vabdd_f64(v7, x);

  return v8;
}

- (double)yAxisDifferenceToPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = point.y;
  coordinateCopy = coordinate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKHorizontalSingleLineSeries yAxisDifferenceToPoint:blockCoordinate:chartRect:];
  }

  -[HKHorizontalSingleLineSeries yCoordinateForLevel:chartRect:](self, "yCoordinateForLevel:chartRect:", [coordinateCopy yValue], x, y, width, height);
  v13 = v12 - v9;

  return v13;
}

- (BOOL)blockCoordinate:(id)coordinate lessThan:(id)than
{
  coordinateCopy = coordinate;
  thanCopy = than;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKHorizontalSingleLineSeries blockCoordinate:lessThan:];
  }

  v7 = thanCopy;
  yValue = [coordinateCopy yValue];
  yValue2 = [v7 yValue];

  return yValue < yValue2;
}

- (BOOL)blockCoordinate:(id)coordinate greaterThan:(id)than
{
  coordinateCopy = coordinate;
  thanCopy = than;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKHorizontalSingleLineSeries blockCoordinate:greaterThan:];
  }

  v7 = thanCopy;
  yValue = [coordinateCopy yValue];
  yValue2 = [v7 yValue];

  return yValue > yValue2;
}

- (CGPoint)renderPositionForLabelLocation:(id)location rect:(CGRect)rect zoomScale:(double)scale contentOffset:(CGPoint)offset constantOffset:(double)constantOffset isHorizontal:(BOOL)horizontal optionalOffset:(CGPoint)optionalOffset
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HKHorizontalSingleLineSeries.m" lineNumber:473 description:@"Not implemented"];

  v12 = 0.0;
  v13 = 0.0;
  result.y = v13;
  result.x = v12;
  return result;
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