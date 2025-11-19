@interface HKHorizontalSingleLineSeries
- (BOOL)blockCoordinate:(id)a3 greaterThan:(id)a4;
- (BOOL)blockCoordinate:(id)a3 lessThan:(id)a4;
- (BOOL)shouldConnectPoints;
- (CGPoint)renderPositionForLabelLocation:(id)a3 rect:(CGRect)a4 zoomScale:(double)a5 contentOffset:(CGPoint)a6 constantOffset:(double)a7 isHorizontal:(BOOL)a8 optionalOffset:(CGPoint)a9;
- (HKHorizontalSingleLineSeries)init;
- (UIColor)baseColor;
- (UIImage)selectedPointMarkerImage;
- (double)distanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (double)lineWidth;
- (double)markRadius;
- (double)selectedLineWidth;
- (double)topInsetPercentage;
- (double)xAxisDistanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (double)yAxisDifferenceToPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (double)yCoordinateForLevel:(int64_t)a3 chartRect:(CGRect)a4;
- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6;
- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9;
- (void)setBaseColor:(id)a3;
- (void)setLineWidth:(double)a3;
- (void)setMarkRadius:(double)a3;
- (void)setSelectedLineWidth:(double)a3;
- (void)setSelectedPointMarkerImage:(id)a3;
- (void)setShouldConnectPoints:(BOOL)a3;
- (void)setTopInsetPercentage:(double)a3;
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
    v5 = [MEMORY[0x1E69DC888] blackColor];
    baseColorStorage = v2->_baseColorStorage;
    v2->_baseColorStorage = v5;

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
  v3 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [v3 lock];

  topInsetPercentageStorage = self->_topInsetPercentageStorage;
  v5 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return topInsetPercentageStorage;
}

- (void)setTopInsetPercentage:(double)a3
{
  v5 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [v5 lock];

  self->_topInsetPercentageStorage = a3;
  v6 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [v6 unlock];
}

- (BOOL)shouldConnectPoints
{
  v3 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [v3 lock];

  LOBYTE(v3) = self->_shouldConnectPointsStorage;
  v4 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [v4 unlock];

  return v3;
}

- (void)setShouldConnectPoints:(BOOL)a3
{
  v5 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [v5 lock];

  self->_shouldConnectPointsStorage = a3;
  v6 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [v6 unlock];
}

- (UIColor)baseColor
{
  v3 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_baseColorStorage;
  v5 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setBaseColor:(id)a3
{
  v4 = a3;
  v5 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [v5 lock];

  baseColorStorage = self->_baseColorStorage;
  self->_baseColorStorage = v4;

  v7 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [v7 unlock];
}

- (double)lineWidth
{
  v3 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [v3 lock];

  lineWidthStorage = self->_lineWidthStorage;
  v5 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return lineWidthStorage;
}

- (void)setLineWidth:(double)a3
{
  v5 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [v5 lock];

  self->_lineWidthStorage = a3;
  v6 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [v6 unlock];
}

- (double)selectedLineWidth
{
  v3 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [v3 lock];

  selectedLineWidthStorage = self->_selectedLineWidthStorage;
  v5 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return selectedLineWidthStorage;
}

- (void)setSelectedLineWidth:(double)a3
{
  v5 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [v5 lock];

  self->_selectedLineWidthStorage = a3;
  v6 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [v6 unlock];
}

- (double)markRadius
{
  v3 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [v3 lock];

  markRadiusStorage = self->_markRadiusStorage;
  v5 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return markRadiusStorage;
}

- (void)setMarkRadius:(double)a3
{
  v5 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [v5 lock];

  self->_markRadiusStorage = a3;
  v6 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [v6 unlock];
}

- (UIImage)selectedPointMarkerImage
{
  v3 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_selectedPointMarkerImageStorage;
  v5 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setSelectedPointMarkerImage:(id)a3
{
  v4 = a3;
  v5 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [v5 lock];

  selectedPointMarkerImageStorage = self->_selectedPointMarkerImageStorage;
  self->_selectedPointMarkerImageStorage = v4;

  v7 = [(HKHorizontalSingleLineSeries *)self seriesMutableStateLock];
  [v7 unlock];
}

- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v107 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v20 = a5;
  v21 = v19;
  v60 = v20;
  v61 = a8;
  v62 = a9;
  [(HKHorizontalSingleLineSeries *)self yCoordinateForLevel:0 chartRect:x, y, width, height];
  v23 = v22;
  v24 = [(HKGraphSeries *)self isHighlighted];
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  [(HKGraphSeries *)self selectedPathRange];
  if ([v19 numCoordinates] >= 1)
  {
    CGContextSaveGState(a7);
    v65 = [(HKHorizontalSingleLineSeries *)self baseColor];
    v64 = [v65 colorWithAlphaComponent:0.55];
    v63 = [MEMORY[0x1E69DC888] hk_chartBackgroundColor];
    v25 = v65;
    v26 = [v65 CGColor];
    v27 = v64;
    v28 = [v64 CGColor];
    v29 = v63;
    v30 = [v63 CGColor];
    [(HKHorizontalSingleLineSeries *)self markRadius];
    v32 = v31;
    [(HKHorizontalSingleLineSeries *)self lineWidth];
    v34 = v33;
    [(HKHorizontalSingleLineSeries *)self selectedLineWidth];
    v36 = v35;
    v37 = [(HKHorizontalSingleLineSeries *)self shouldConnectPoints];
    v96 = 0;
    v97 = &v96;
    v98 = 0x3032000000;
    v99 = __Block_byref_object_copy__3;
    v100 = __Block_byref_object_dispose__3;
    v101 = [MEMORY[0x1E695DF70] array];
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
    v76 = v37;
    v71[4] = &v86;
    v71[5] = v94;
    v77 = v24;
    v71[10] = a7;
    v71[11] = v26;
    *&v71[12] = v34;
    v71[13] = v28;
    *&v71[14] = v36;
    v71[15] = v30;
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
    v38 = *&a6->c;
    v70[0] = *&a6->a;
    v70[1] = v38;
    v70[2] = *&a6->tx;
    [v19 enumerateCoordinatesWithTransform:v70 roundToViewScale:1 block:v71];
    _drawSeriesGroup(a7, v24, v26, v28, v26, v34, v36, v32, v91[3], v87[3], v23);
    v59 = v19;
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
          v46 = [v43 markStyle];
          if (v46 == 1)
          {
            [HKGraphSeries drawInnerDotMarkerInContext:a7 outColor:v26 inColor:v30 x:v45 y:v23 radius:v32];
          }

          else if (v46 == 2)
          {
            [HKGraphSeries drawFilledMarkerInContext:a7 color:v26 x:v45 y:v23 radius:v32];
          }
        }

        v40 = [v39 countByEnumeratingWithState:&v66 objects:v106 count:16];
      }

      while (v40);
    }

    v21 = v59;
    if (*(v83 + 24) == 1)
    {
      v47 = [(HKHorizontalSingleLineSeries *)self selectedPointMarkerImage];
      if (v47)
      {
        v48 = [(HKHorizontalSingleLineSeries *)self selectedPointMarkerImage];
        v49 = HKChartSeriesPointMarkerBaseRect(v48);
        v51 = v50;
        v53 = v52;
        v55 = v54;

        v56 = [(HKHorizontalSingleLineSeries *)self selectedPointMarkerImage];
        v57 = v56;
        v58 = [v56 CGImage];

        v108.origin.x = v49;
        v108.origin.y = v51;
        v108.size.width = v53;
        v108.size.height = v55;
        v109 = CGRectOffset(v108, v79[3], v23);
        CGContextDrawImage(a7, v109, v58);
      }
    }

    CGContextRestoreGState(a7);
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

- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = [a3 chartPoints];
  if (!v8)
  {
    [HKHorizontalSingleLineSeries coordinatesForBlock:blockPath:xAxis:yAxis:];
  }

  v27 = v7;
  v9 = [v7 transform];
  v28 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v8;
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
        v15 = [v14 xValue];
        [v9 coordinateForValue:v15];
        v17 = v16;
        v18 = [v14 yValue];
        v19 = [v18 integerValue];
        v20 = [v14 groupToPrevious];
        v21 = [v14 markStyle];
        v22 = [v14 userInfo];
        if (v21 != 3)
        {
          v23 = [[_HKHorizontalSingleLineSeriesCoordinate alloc] initWithXValue:v19 yValue:(v21 != 1) & v20 groupToPrevious:v21 markStyle:v22 userInfo:v17];
          [v28 addObject:v23];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v11);
  }

  v30 = *&a4->index;
  resolution = a4->resolution;
  v24 = [HKGraphSeriesBlockCoordinateList coordinateListWithCoordinates:v28 blockPath:&v30];

  return v24;
}

- (double)yCoordinateForLevel:(int64_t)a3 chartRect:(CGRect)a4
{
  height = a4.size.height;
  [(HKHorizontalSingleLineSeries *)self topInsetPercentage:a3];
  v6 = height * v5;

  return HKUIFloorToScreenScale(v6);
}

- (double)distanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a3.y;
  v10 = a3.x;
  v12 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKHorizontalSingleLineSeries distanceFromPoint:blockCoordinate:chartRect:];
  }

  v13 = v12;
  [v13 xValue];
  v15 = v14;
  v16 = [v13 yValue];

  [(HKHorizontalSingleLineSeries *)self yCoordinateForLevel:v16 chartRect:x, y, width, height];
  v18 = sqrt((v17 - v9) * (v17 - v9) + (v15 - v10) * (v15 - v10));

  return v18;
}

- (double)xAxisDistanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  x = a3.x;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKHorizontalSingleLineSeries xAxisDistanceFromPoint:blockCoordinate:chartRect:];
  }

  [v6 xValue];
  v8 = vabdd_f64(v7, x);

  return v8;
}

- (double)yAxisDifferenceToPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a3.y;
  v11 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKHorizontalSingleLineSeries yAxisDifferenceToPoint:blockCoordinate:chartRect:];
  }

  -[HKHorizontalSingleLineSeries yCoordinateForLevel:chartRect:](self, "yCoordinateForLevel:chartRect:", [v11 yValue], x, y, width, height);
  v13 = v12 - v9;

  return v13;
}

- (BOOL)blockCoordinate:(id)a3 lessThan:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKHorizontalSingleLineSeries blockCoordinate:lessThan:];
  }

  v7 = v6;
  v8 = [v5 yValue];
  v9 = [v7 yValue];

  return v8 < v9;
}

- (BOOL)blockCoordinate:(id)a3 greaterThan:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKHorizontalSingleLineSeries blockCoordinate:greaterThan:];
  }

  v7 = v6;
  v8 = [v5 yValue];
  v9 = [v7 yValue];

  return v8 > v9;
}

- (CGPoint)renderPositionForLabelLocation:(id)a3 rect:(CGRect)a4 zoomScale:(double)a5 contentOffset:(CGPoint)a6 constantOffset:(double)a7 isHorizontal:(BOOL)a8 optionalOffset:(CGPoint)a9
{
  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"HKHorizontalSingleLineSeries.m" lineNumber:473 description:@"Not implemented"];

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