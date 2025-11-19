@interface HKAxis
+ (HKAxisMinMaxDefinition)contractByPointsLow:(double)a3 high:(double)a4 modelRange:(HKAxisMinMaxDefinition)a5 pointRange:(HKAxisMinMaxDefinition)a6;
+ (HKAxisMinMaxDefinition)expandByPointsLow:(double)a3 high:(double)a4 modelRange:(HKAxisMinMaxDefinition)a5 pointRange:(HKAxisMinMaxDefinition)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAxis:(id)a3;
- (BOOL)requiresScaling;
- (CGPoint)renderPositionForLabelLocation:(id)a3 rect:(CGRect)a4 zoomScale:(double)a5 contentOffset:(CGPoint)a6 constantOffset:(double)a7 isHorizontal:(BOOL)a8 optionalOffset:(CGPoint)a9;
- (CGRect)_labelBackgroundRectWithLabels:(id)a3 font:(id)a4 maxAnnotationWidth:(double)a5 rect:(CGRect)a6 style:(id)a7;
- (CGRect)labelRectWithModelRange:(id)a3 chartRect:(CGRect)a4 zoomScale:(double)a5;
- (HKAxis)initWithConfiguration:(id)a3;
- (HKAxisLabelDataSource)labelDataSource;
- (HKLinearTransform)_pointTransformFromSeriesRanges:(id)a3 linearTransform:(HKLinearTransform)a4 chartRange:(HKRange)a5;
- (HKLinearTransform)pointTransform;
- (HKLinearTransform)pointTransformFittingValueRange:(id)a3 toChartRange:(HKRange)a4;
- (HKLinearTransform)pointTransformStorage;
- (HKRange)_chartRangeForChartRect:(CGRect)a3 zoomScale:(double)a4 contentOffset:(CGPoint)a5;
- (HKValueRange)axisChartableValueRange;
- (NSMutableArray)axisAnnotations;
- (double)_axisFillWidthForStyle:(id)a3 labels:(id)a4 font:(id)a5;
- (double)_axisOffsetWithStyle:(id)a3 chartRect:(CGRect)a4 horizontalAlignmentOut:(int64_t *)a5;
- (double)_maxLabelWidthFromLabels:(id)a3 font:(id)a4;
- (double)_maximumWidthOfAnnotations:(id)a3 axisStyle:(id)a4;
- (double)bottomBaselineYCoordinateForModelRange:(id)a3 axisRect:(CGRect)a4 zoomScale:(double)a5;
- (double)topBaselineYCoordinateForModelRange:(id)a3 axisRect:(CGRect)a4 zoomScale:(double)a5;
- (id)_baselineForModelRange:(id)a3 axisRect:(CGRect)a4 zoomScale:(double)a5 contentOffset:(CGPoint)a6 style:(id)a7;
- (id)_gridLinesForModelRange:(id)a3 axisRect:(CGRect)a4 gridlineRanges:(id)a5 zoomScale:(double)a6 contentOffset:(CGPoint)a7 style:(id)a8 gridLineType:(int64_t)a9;
- (id)axisLabelsInModelRangeFromCache:(id)a3 zoomScale:(double)a4;
- (id)cacheKeysForModelRange:(id)a3 zoomScale:(double)a4;
- (id)findAxisLabelsInModelRange:(id)a3 zoomScale:(double)a4;
- (id)rangeForChartRect:(CGRect)a3 zoomScale:(double)a4 contentOffset:(CGPoint)a5;
- (int64_t)_axisLabelCountWithTextInModelRange:(id)a3 zoomScale:(double)a4;
- (int64_t)axisAnnotationCount;
- (int64_t)axisLabelEndings;
- (void)_addTickMarksForPosition:(unint64_t)a3 axisRect:(CGRect)a4 modelRange:(id)a5 zoomScale:(double)a6 contentOffset:(CGPoint)a7 toBezierPath:(id)a8 style:(id)a9;
- (void)_drawTextBackgroundWithRect:(CGRect)a3 style:(id)a4 renderView:(id)a5;
- (void)_drawTextForModelRange:(id)a3 inRect:(CGRect)a4 zoomScale:(double)a5 contentOffset:(CGPoint)a6 renderView:(id)a7 style:(id)a8 maximumLabelSize:(CGSize *)a9 omitOffscreenLabels:(BOOL)a10;
- (void)_enumerateAxisLabelsForTextInRange:(id)a3 rect:(CGRect)a4 zoomScale:(double)a5 contentOffset:(CGPoint)a6 constantOffset:(double)a7 isHorizontal:(BOOL)a8 optionalOffset:(CGPoint)a9 gridlineWidth:(double)a10 usingBlock:(id)a11;
- (void)_offsetForChartRect:(CGRect)a3 chartRange:(HKRange)a4 zoomScaleOut:(double *)a5 contentOffsetOut:(CGPoint *)a6;
- (void)_renderTickMarksForModelRange:(id)a3 chartRect:(CGRect)a4 zoomScale:(double)a5 contentOffset:(CGPoint)a6 style:(id)a7 renderView:(id)a8;
- (void)addAxisAnnotation:(id)a3 modelCoordinate:(id)a4;
- (void)axisAnnotations;
- (void)clearCache;
- (void)drawBaselineForModelRange:(id)a3 chartRect:(CGRect)a4 zoomScale:(double)a5 contentOffset:(CGPoint)a6 renderView:(id)a7;
- (void)drawGridlinesForModelRange:(id)a3 chartRect:(CGRect)a4 gridlineRanges:(id)a5 zoomScale:(double)a6 contentOffset:(CGPoint)a7 renderView:(id)a8 blendMode:(int)a9;
- (void)drawLabelsWithModelRange:(id)a3 chartRect:(CGRect)a4 zoomScale:(double)a5 contentOffset:(CGPoint)a6 renderView:(id)a7 maximumLabelSize:(CGSize *)a8 omitOffscreenLabels:(BOOL)a9;
- (void)enumerateTickCoordinatesInModelRange:(id)a3 zoomScale:(double)a4 handler:(id)a5;
- (void)offsetForValueRange:(id)a3 chartRect:(CGRect)a4 zoomScaleOut:(double *)a5 contentOffsetOut:(CGPoint *)a6;
- (void)setAxisAnnotations:(id)a3;
- (void)setAxisChartableValueRange:(id)a3;
- (void)setAxisLabelEndings:(int64_t)a3;
- (void)setPointTransform:(HKLinearTransform)a3;
@end

@implementation HKAxis

- (HKAxis)initWithConfiguration:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = HKAxis;
  v5 = [(HKAxis *)&v35 init];
  if (v5)
  {
    v6 = [v4 preferredStyle];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = +[HKAxisStyle defaultStyle];
    }

    v9 = *(v5 + 2);
    *(v5 + 2) = v8;

    *(v5 + 3) = [v4 maxLabels];
    *(v5 + 4) = [v4 minLabels];
    v10 = [v4 maxLabelWidth];
    v11 = *(v5 + 5);
    *(v5 + 5) = v10;

    v12 = [v4 horizontalAxisLabelSpacePadding];
    v13 = *(v5 + 6);
    *(v5 + 6) = v12;

    v14 = [v4 transform];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = objc_opt_new();
    }

    v17 = *(v5 + 7);
    *(v5 + 7) = v16;

    v18 = [v4 zoomScaleEngine];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = objc_alloc_init(HKScalarZoomScale);
    }

    v21 = *(v5 + 8);
    *(v5 + 8) = v20;

    v22 = [v4 labelDataSource];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = v5;
    }

    objc_storeWeak(v5 + 9, v24);

    v5[8] = [v4 overrideNoTopBaseline];
    v5[9] = [v4 axisAnnotationsExcludeInterstitialAxisLabels];
    v5[10] = [v4 axisLabelsDependOnPointTransform];
    v25 = [HKAxisLabelCache alloc];
    WeakRetained = objc_loadWeakRetained(v5 + 9);
    v27 = [(HKAxisLabelCache *)v25 initWithLabelDataSource:WeakRetained];
    v28 = *(v5 + 10);
    *(v5 + 10) = v27;

    v29 = objc_alloc_init(MEMORY[0x1E696AD10]);
    v30 = *(v5 + 11);
    *(v5 + 11) = v29;

    [*(v5 + 11) setName:@"HKAxisMutableStateLock"];
    v31 = *(v5 + 12);
    *(v5 + 12) = 0;

    *(v5 + 13) = 0;
    v5[11] = 1;
    *(v5 + 120) = HKLinearTransformIdentity;
    v32 = objc_alloc_init(HKValueRange);
    v33 = *(v5 + 14);
    *(v5 + 14) = v32;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (v5 = objc_opt_class(), v5 == objc_opt_class()))
  {
    v6 = v4 == self || [(HKAxis *)self isEqualToAxis:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqualToAxis:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_opt_class();
    if (v5 != objc_opt_class())
    {
      v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Not same type of axis" userInfo:0];
      objc_exception_throw(v23);
    }

    v6 = [v4 maxLabels];
    if (v6 == [(HKAxis *)self maxLabels])
    {
      v7 = [v4 minLabels];
      v8 = v7 == [(HKAxis *)self minLabels];
    }

    else
    {
      v8 = 0;
    }

    v10 = [(HKAxis *)self transform];
    v11 = [v4 transform];
    if (v10 == v11)
    {
      v15 = 1;
    }

    else
    {
      v12 = [(HKAxis *)self transform];
      if (v12)
      {
        v13 = [v4 transform];
        v14 = [(HKAxis *)self transform];
        v15 = [v13 isEqual:v14];
      }

      else
      {
        v15 = 0;
      }
    }

    v16 = [(HKAxis *)self zoomScaleEngine];
    v17 = [v4 zoomScaleEngine];
    if (v16 == v17)
    {
      v21 = 1;
    }

    else
    {
      v18 = [(HKAxis *)self zoomScaleEngine];
      if (v18)
      {
        v19 = [v4 zoomScaleEngine];
        v20 = [(HKAxis *)self zoomScaleEngine];
        v21 = [v19 isEqual:v20];
      }

      else
      {
        v21 = 0;
      }
    }

    v9 = v15 & v8 & v21;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSMutableArray)axisAnnotations
{
  v4 = [(HKAxis *)self axisMutableStateLock];
  [v4 lock];

  if (self->_axisAnnotationsStorage && ([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [(HKAxis *)a2 axisAnnotations];
  }

  v5 = self->_axisAnnotationsStorage;
  v6 = [(HKAxis *)self axisMutableStateLock];
  [v6 unlock];

  return v5;
}

- (void)setAxisAnnotations:(id)a3
{
  v5 = a3;
  v6 = [(HKAxis *)self axisMutableStateLock];
  [v6 lock];

  if (v5 && ([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [(HKAxis *)a2 setAxisAnnotations:?];
  }

  axisAnnotationsStorage = self->_axisAnnotationsStorage;
  self->_axisAnnotationsStorage = v5;

  v8 = [(HKAxis *)self axisMutableStateLock];
  [v8 unlock];
}

- (BOOL)requiresScaling
{
  v3 = [(HKAxis *)self axisMutableStateLock];
  [v3 lock];

  LOBYTE(v3) = self->_requiresScalingStorage;
  v4 = [(HKAxis *)self axisMutableStateLock];
  [v4 unlock];

  return v3;
}

- (int64_t)axisLabelEndings
{
  v3 = [(HKAxis *)self axisMutableStateLock];
  [v3 lock];

  v4 = self->_axisLabelEndingsStorage != 0;
  v5 = [(HKAxis *)self axisMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setAxisLabelEndings:(int64_t)a3
{
  v5 = [(HKAxis *)self axisMutableStateLock];
  [v5 lock];

  self->_axisLabelEndingsStorage = a3;
  v6 = [(HKAxis *)self axisMutableStateLock];
  [v6 unlock];
}

- (HKLinearTransform)pointTransform
{
  v3 = [(HKAxis *)self axisMutableStateLock];
  [v3 lock];

  offset = self->_pointTransformStorage.offset;
  scale = self->_pointTransformStorage.scale;
  v6 = [(HKAxis *)self axisMutableStateLock];
  [v6 unlock];

  v7 = offset;
  v8 = scale;
  result.scale = v8;
  result.offset = v7;
  return result;
}

- (void)setPointTransform:(HKLinearTransform)a3
{
  scale = a3.scale;
  offset = a3.offset;
  v6 = [(HKAxis *)self axisMutableStateLock];
  [v6 lock];

  self->_pointTransformStorage.offset = offset;
  self->_pointTransformStorage.scale = scale;
  self->_requiresScalingStorage = 0;
  v7 = [(HKAxis *)self axisMutableStateLock];
  [v7 unlock];

  if (self->_axisLabelsDependOnPointTransform)
  {

    [(HKAxis *)self invalidateAxisLabelCache];
  }
}

- (HKValueRange)axisChartableValueRange
{
  v3 = [(HKAxis *)self axisMutableStateLock];
  [v3 lock];

  v4 = [(HKValueRange *)self->_axisChartableValueRangeStorage minValue];
  v5 = [(HKValueRange *)self->_axisChartableValueRangeStorage maxValue];
  v6 = [HKValueRange valueRangeWithMinValue:v4 maxValue:v5];

  v7 = [(HKAxis *)self axisMutableStateLock];
  [v7 unlock];

  return v6;
}

- (void)setAxisChartableValueRange:(id)a3
{
  v4 = a3;
  v5 = [(HKAxis *)self axisMutableStateLock];
  [v5 lock];

  v6 = [v4 minValue];
  v7 = [v4 maxValue];

  v8 = [HKValueRange valueRangeWithMinValue:v6 maxValue:v7];
  axisChartableValueRangeStorage = self->_axisChartableValueRangeStorage;
  self->_axisChartableValueRangeStorage = v8;

  v10 = [(HKAxis *)self axisMutableStateLock];
  [v10 unlock];
}

- (HKLinearTransform)pointTransformFittingValueRange:(id)a3 toChartRange:(HKRange)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v7 = a3;
  v8 = [(HKAxis *)self transform];
  v9 = [v7 minValue];
  [v8 coordinateForValue:v9];
  v11 = v10;

  v12 = [(HKAxis *)self transform];
  v13 = [v7 maxValue];

  [v12 coordinateForValue:v13];
  v15 = v14;

  v16 = var1 / (v15 - v11);
  if (v15 - v11 <= 0.00000011920929)
  {
    v16 = 0.0;
  }

  v17 = var0 - v16 * v11;
  result.scale = v16;
  result.offset = v17;
  return result;
}

- (HKLinearTransform)_pointTransformFromSeriesRanges:(id)a3 linearTransform:(HKLinearTransform)a4 chartRange:(HKRange)a5
{
  var1 = a5.var1;
  var0 = a5.var0;
  scale = a4.scale;
  offset = a4.offset;
  v29 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      v16 = 0;
      do
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [v11 unionRange:{*(*(&v24 + 1) + 8 * v16++), v24}];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  v17 = [(HKAxis *)self adjustedRangeForFittedRange:v11 chartRange:var0, var1];
  [(HKAxis *)self pointTransformFittingValueRange:v17 toChartRange:var0, var1];
  v19 = v18;
  v21 = v20;

  v22 = scale * v21;
  v23 = offset + v19 * scale;
  result.scale = v22;
  result.offset = v23;
  return result;
}

- (id)axisLabelsInModelRangeFromCache:(id)a3 zoomScale:(double)a4
{
  v6 = [(HKAxis *)self extendModelRangeWithRange:a3 zoomScale:?];
  v7 = [(HKAxis *)self axisLabelCache];
  v8 = [v7 allAxisLabelsForRange:v6 zoomScale:a4];

  return v8;
}

- (id)cacheKeysForModelRange:(id)a3 zoomScale:(double)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"HKAxis.m" lineNumber:348 description:@"No implementation for cacheKeysForModelRange"];

  return 0;
}

- (id)findAxisLabelsInModelRange:(id)a3 zoomScale:(double)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"HKAxis.m" lineNumber:354 description:@"No implementation for findAxisLabelsInChartRange"];

  return 0;
}

- (int64_t)_axisLabelCountWithTextInModelRange:(id)a3 zoomScale:(double)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [(HKAxis *)self axisLabelsInModelRangeFromCache:a3 zoomScale:a4];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) text];

        if (v10)
        {
          ++v7;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)enumerateTickCoordinatesInModelRange:(id)a3 zoomScale:(double)a4 handler:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a5;
  [(HKAxis *)self axisLabelsInModelRangeFromCache:a3 zoomScale:a4];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v30 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v28 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v27 + 1) + 8 * v13);
      [(HKAxis *)self pointTransform];
      v16 = v15;
      v18 = v17;
      v19 = [(HKAxis *)self transform];
      v20 = [v14 location];
      [v19 coordinateForValue:v20];
      v22 = v16 + v21 * v18;

      v26 = 0;
      v23 = [v14 location];
      v24 = [v14 labelType];
      v25 = [v14 text];
      v8[2](v8, v23, v24, v25, &v26, v22);

      if (v26)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (double)_axisOffsetWithStyle:(id)a3 chartRect:(CGRect)a4 horizontalAlignmentOut:(int64_t *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  v11 = [v10 location];
  v12 = 0;
  v13 = 0.0;
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      MaxY = CGRectGetMaxY(v25);
      [v10 fillOuterPadding];
      v13 = MaxY - v20;
      v21 = [v10 labelStyle];
      v12 = [v21 horizontalAlignment];

      if (!a5)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (v11 == 3)
    {
      v23.origin.x = x;
      v23.origin.y = y;
      v23.size.width = width;
      v23.size.height = height;
      MinX = CGRectGetMinX(v23);
      [v10 fillOuterPadding];
LABEL_8:
      v12 = 0;
      v13 = MinX + v15;
      if (!a5)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if (v11)
  {
    if (v11 == 1)
    {
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      MinX = CGRectGetMinX(v22);
      [v10 fillInnerPadding];
      goto LABEL_8;
    }
  }

  else
  {
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    MinY = CGRectGetMinY(v24);
    [v10 fillOuterPadding];
    v13 = MinY + v17;
    v12 = 1;
  }

  if (a5)
  {
LABEL_12:
    *a5 = v12;
  }

LABEL_13:

  return v13;
}

- (CGRect)labelRectWithModelRange:(id)a3 chartRect:(CGRect)a4 zoomScale:(double)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v12 = [(HKAxis *)self preferredStyle];
  v13 = [(HKAxis *)self axisLabelsInModelRangeFromCache:v11 zoomScale:a5];

  v14 = [(HKAxis *)self axisAnnotations];

  if (v14)
  {
    v15 = [(HKAxis *)self axisAnnotations];
    [(HKAxis *)self _maximumWidthOfAnnotations:v15 axisStyle:v12];
    v17 = v16;
  }

  else
  {
    v17 = 0.0;
  }

  v18 = [v12 labelStyle];
  v19 = [v18 font];
  [(HKAxis *)self _labelBackgroundRectWithLabels:v13 font:v19 maxAnnotationWidth:v12 rect:v17 style:x, y, width, height];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = v21;
  v29 = v23;
  v30 = v25;
  v31 = v27;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (void)drawLabelsWithModelRange:(id)a3 chartRect:(CGRect)a4 zoomScale:(double)a5 contentOffset:(CGPoint)a6 renderView:(id)a7 maximumLabelSize:(CGSize *)a8 omitOffscreenLabels:(BOOL)a9
{
  v9 = a9;
  y = a6.y;
  x = a6.x;
  height = a4.size.height;
  width = a4.size.width;
  v16 = a4.origin.y;
  v17 = a4.origin.x;
  v20 = a7;
  v21 = a3;
  v22 = [(HKAxis *)self preferredStyle];
  [(HKAxis *)self _drawTextForModelRange:v21 inRect:v20 zoomScale:v22 contentOffset:a8 renderView:v9 style:v17 maximumLabelSize:v16 omitOffscreenLabels:width, height, a5, x, y];
}

- (void)drawBaselineForModelRange:(id)a3 chartRect:(CGRect)a4 zoomScale:(double)a5 contentOffset:(CGPoint)a6 renderView:(id)a7
{
  y = a6.y;
  x = a6.x;
  height = a4.size.height;
  width = a4.size.width;
  v13 = a4.origin.y;
  v14 = a4.origin.x;
  v22 = a3;
  v16 = a7;
  v17 = [(HKAxis *)self preferredStyle];
  if ([v17 showGridLines])
  {
    v18 = [(HKAxis *)self _baselineForModelRange:v22 axisRect:v17 zoomScale:v14 contentOffset:v13 style:width, height, a5, x, y];
    v19 = [v17 gridLineStyle];
    v20 = [v19 strokeColor];
    LOBYTE(v21) = 0;
    [v16 drawPath:v18 strokeColor:v20 fillColor:0 markerImage:0 useGradientFill:0 blendMode:0 clipToAxes:v21];
  }
}

- (void)drawGridlinesForModelRange:(id)a3 chartRect:(CGRect)a4 gridlineRanges:(id)a5 zoomScale:(double)a6 contentOffset:(CGPoint)a7 renderView:(id)a8 blendMode:(int)a9
{
  v9 = *&a9;
  y = a7.y;
  x = a7.x;
  height = a4.size.height;
  width = a4.size.width;
  v17 = a4.origin.y;
  v18 = a4.origin.x;
  v36 = a3;
  v20 = a5;
  v21 = a8;
  v22 = [(HKAxis *)self preferredStyle];
  if ([v22 showGridLines])
  {
    v23 = [v22 minorGridLineStyle];

    if (v23)
    {
      v24 = [(HKAxis *)self _gridLinesForModelRange:v36 axisRect:v20 gridlineRanges:v22 zoomScale:2 contentOffset:v18 style:v17 gridLineType:width, height, a6, x, y];
      v25 = [v22 minorGridLineStyle];
      v26 = [v25 strokeColor];
      LOBYTE(v35) = 0;
      [v21 drawPath:v24 strokeColor:v26 fillColor:0 markerImage:0 useGradientFill:0 blendMode:v9 clipToAxes:v35];
    }

    v27 = [v22 gridLineStyle];

    if (v27)
    {
      v28 = [(HKAxis *)self _gridLinesForModelRange:v36 axisRect:v20 gridlineRanges:v22 zoomScale:1 contentOffset:v18 style:v17 gridLineType:width, height, a6, x, y];
      v29 = [v22 gridLineStyle];
      v30 = [v29 strokeColor];
      LOBYTE(v35) = 0;
      [v21 drawPath:v28 strokeColor:v30 fillColor:0 markerImage:0 useGradientFill:0 blendMode:v9 clipToAxes:v35];
    }

    v31 = [v22 referenceGridLineStyle];

    if (v31)
    {
      v32 = [(HKAxis *)self _gridLinesForModelRange:v36 axisRect:v20 gridlineRanges:v22 zoomScale:0 contentOffset:v18 style:v17 gridLineType:width, height, a6, x, y];
      v33 = [v22 referenceGridLineStyle];
      v34 = [v33 strokeColor];
      LOBYTE(v35) = 0;
      [v21 drawPath:v32 strokeColor:v34 fillColor:0 markerImage:0 useGradientFill:0 blendMode:v9 clipToAxes:v35];
    }
  }
}

- (HKRange)_chartRangeForChartRect:(CGRect)a3 zoomScale:(double)a4 contentOffset:(CGPoint)a5
{
  x = a5.x;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  v10 = a3.origin.x;
  v11 = self;
  v12 = [(HKAxis *)self preferredStyle:a3.origin.x];
  LODWORD(v11) = [(HKAxis *)v11 _styleIsHorizontal:v12];

  if (v11)
  {
    v13 = x / a4;
    v14 = width / a4 + -2.22507386e-308;
    if (v14 < 0.0)
    {
      v14 = 0.0;
    }
  }

  else
  {
    v16.origin.x = v10;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    v13 = CGRectGetHeight(v16);
    v14 = -v13;
  }

  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- (void)_offsetForChartRect:(CGRect)a3 chartRange:(HKRange)a4 zoomScaleOut:(double *)a5 contentOffsetOut:(CGPoint *)a6
{
  var1 = a4.var1;
  var0 = a4.var0;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = self;
  v26 = *MEMORY[0x1E69E9840];
  v16 = MEMORY[0x1E695EFF8];
  v17 = [(HKAxis *)self preferredStyle];
  LODWORD(v15) = [(HKAxis *)v15 _styleIsHorizontal:v17];

  if (v15)
  {
    v18 = 1.0;
    if (var1 > 0.0 && a5)
    {
      v27.origin.x = x;
      v27.origin.y = y;
      v27.size.width = width;
      v27.size.height = height;
      v18 = CGRectGetWidth(v27) / var1;
    }

    v19 = var0 * v18;
  }

  else
  {
    v19 = *v16;
    _HKInitializeLogging();
    v20 = *MEMORY[0x1E696B940];
    v18 = 1.0;
    if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      v22 = NSStringFromSelector(a2);
      v24 = 138543362;
      v25 = v22;
      _os_log_impl(&dword_1C3942000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ called on vertical axis. This was probably not intentional", &v24, 0xCu);
    }
  }

  if (a5)
  {
    *a5 = v18;
  }

  if (a6)
  {
    v23 = v16[1];
    a6->x = v19;
    a6->y = v23;
  }
}

- (id)rangeForChartRect:(CGRect)a3 zoomScale:(double)a4 contentOffset:(CGPoint)a5
{
  [(HKAxis *)self _chartRangeForChartRect:a3.origin.x zoomScale:a3.origin.y contentOffset:a3.size.width, a3.size.height, a4, a5.x, a5.y];
  v7 = v6;
  v9 = v8;
  [(HKAxis *)self pointTransform];
  v12 = -v10 / v11;
  v13 = 1.0 / v11;
  v14 = v12 + v7 * v13;
  v15 = v9 * v13;
  v16 = [(HKAxis *)self transform];
  v17 = [v16 valueForCoordinate:{HKRangeMin(v14, v15)}];

  v18 = [(HKAxis *)self transform];
  v19 = [v18 valueForCoordinate:{HKRangeMax(v14, v15)}];

  v20 = [HKValueRange valueRangeWithMinValue:v17 maxValue:v19];

  return v20;
}

- (void)offsetForValueRange:(id)a3 chartRect:(CGRect)a4 zoomScaleOut:(double *)a5 contentOffsetOut:(CGPoint *)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  v14 = [v13 minValue];
  [v14 doubleValue];
  v16 = v15;

  v17 = [v13 maxValue];

  [v17 doubleValue];
  v19 = v18;

  [(HKAxis *)self pointTransform];
  v22 = (v19 - v16) * v21;
  if (v22 > 0.0)
  {

    [(HKAxis *)self _offsetForChartRect:a5 chartRange:a6 zoomScaleOut:x contentOffsetOut:y, width, height, v20 + v16 * v21, v22];
  }
}

- (void)_drawTextForModelRange:(id)a3 inRect:(CGRect)a4 zoomScale:(double)a5 contentOffset:(CGPoint)a6 renderView:(id)a7 style:(id)a8 maximumLabelSize:(CGSize *)a9 omitOffscreenLabels:(BOOL)a10
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v113 = *MEMORY[0x1E69E9840];
  v68 = a3;
  v73 = a7;
  v69 = a8;
  v16 = [v69 labelStyle];

  if (v16)
  {
    v17 = [(HKAxis *)self _styleIsHorizontal:v69];
    v67 = [v69 labelStyle];
    v64 = [v67 hyphenationFactor];
    v18 = [v67 verticalAlignment];
    v63 = [v67 textColor];
    v62 = [v67 font];
    v110 = 0;
    [(HKAxis *)self _axisOffsetWithStyle:v69 chartRect:&v110 horizontalAlignmentOut:x, y, width, height];
    v70 = v19;
    v105 = 0;
    v106 = &v105;
    v107 = 0x3010000000;
    v108 = &unk_1C3DAF4DA;
    v109 = *a9;
    v20 = v110;
    if (v110)
    {
      v21 = 0;
    }

    else
    {
      v21 = v17;
    }

    if (v21)
    {
      [v69 fillInnerPadding];
      v23 = v22;
      v20 = v110;
    }

    else
    {
      v23 = 0.0;
    }

    if (v20 == 2 && v17)
    {
      [v69 fillInnerPadding];
      v23 = -v25;
    }

    [(HKAxis *)self _drawTextBackgroundWithRect:v69 style:v73 renderView:x, y, width, height];
    v26 = [(HKAxis *)self axisAnnotations];
    v27 = v26 == 0;

    if (v27)
    {
      v28 = 0;
    }

    else
    {
      v28 = objc_alloc_init(HKAxisExclusion);
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v29 = [(HKAxis *)self axisAnnotations];
      v30 = [v29 countByEnumeratingWithState:&v101 objects:v112 count:16];
      if (v30)
      {
        v31 = *v102;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v102 != v31)
            {
              objc_enumerationMutation(v29);
            }

            v33 = *(*(&v101 + 1) + 8 * i);
            v34 = [v33 annotationText];
            v35 = v34 == 0;

            if (!v35)
            {
              v36 = [(HKAxis *)self labelDataSource];
              v37 = [v33 position];
              [v36 renderPositionForLabelLocation:v37 rect:v17 zoomScale:x contentOffset:y constantOffset:width isHorizontal:height optionalOffset:{a5, a6.x, a6.y, v70, *&v23, 0}];
              v39 = v38;
              v41 = v40;

              v42 = [v33 annotationText];
              [v73 drawAttributedText:v42 atPoint:v110 axisRect:v18 horizontalAlignment:v28 verticalAlignment:v39 exclusion:{v41, x, y, width, height}];
              v75 = v44;
              v76 = v43;

              v45.f64[0] = v76;
              v45.f64[1] = v75;
              v106[2] = vbslq_s8(vcgtq_f64(v45, v106[2]), v45, v106[2]);
            }
          }

          v30 = [v29 countByEnumeratingWithState:&v101 objects:v112 count:16];
        }

        while (v30);
      }
    }

    if ([(HKAxis *)self axisAnnotationsExcludeInterstitialAxisLabels])
    {
      [(HKAxisExclusion *)v28 unifyExclusion];
    }

    v46 = CTFontCopySystemUIFontExcessiveLineHeightCharacterSet();
    v97 = 0;
    v98 = &v97;
    v99 = 0x2020000000;
    v100 = 0;
    v47 = [(HKAxis *)self axisLabelsInModelRangeFromCache:v68 zoomScale:a5];
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v48 = v47;
    v49 = [v48 countByEnumeratingWithState:&v93 objects:v111 count:16];
    if (v49)
    {
      v50 = *v94;
      do
      {
        for (j = 0; j != v49; ++j)
        {
          if (*v94 != v50)
          {
            objc_enumerationMutation(v48);
          }

          if (v17)
          {
            v52 = [*(*(&v93 + 1) + 8 * j) text];
            if ([v52 rangeOfCharacterFromSet:v46] == 0x7FFFFFFFFFFFFFFFLL)
            {
              v53 = *(v98 + 24);
            }

            else
            {
              v53 = 1;
            }

            *(v98 + 24) = v53 & 1;
          }
        }

        v49 = [v48 countByEnumeratingWithState:&v93 objects:v111 count:16];
      }

      while (v49);
    }

    v54 = [v69 gridLineStyle];
    [v54 lineWidth];
    v56 = v55;
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __118__HKAxis__drawTextForModelRange_inRect_zoomScale_contentOffset_renderView_style_maximumLabelSize_omitOffscreenLabels___block_invoke;
    v77[3] = &unk_1E81BB398;
    v92 = a10;
    v86 = x;
    v87 = y;
    v88 = width;
    v89 = height;
    v78 = v73;
    v90 = v110;
    v91 = v18;
    v57 = v64;
    v79 = v57;
    v58 = v63;
    v80 = v58;
    v59 = v62;
    v81 = v59;
    v60 = v28;
    v82 = v60;
    v61 = v67;
    v83 = v61;
    v84 = &v97;
    v85 = &v105;
    [(HKAxis *)self _enumerateAxisLabelsForTextInRange:v68 rect:v17 zoomScale:v77 contentOffset:x constantOffset:y isHorizontal:width optionalOffset:height gridlineWidth:a5 usingBlock:a6.x, a6.y, v70, *&v23, 0, v56];

    *a9 = v106[2];
    _Block_object_dispose(&v97, 8);

    _Block_object_dispose(&v105, 8);
  }
}

void __118__HKAxis__drawTextForModelRange_inRect_zoomScale_contentOffset_renderView_style_maximumLabelSize_omitOffscreenLabels___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27 = a2;
  v7 = a4;
  [a3 CGPointValue];
  v9 = v8;
  v11 = v10;
  if (*(a1 + 144) != 1 || v8 >= *(a1 + 96))
  {
    v12 = *(a1 + 128);
    v13 = *(a1 + 136);
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    v18 = *(a1 + 64);
    v19 = [*(a1 + 72) isSystemSymbol];
    BYTE1(v26) = *(*(*(a1 + 80) + 8) + 24);
    LOBYTE(v26) = v19;
    LOBYTE(v25) = 0;
    [v14 drawText:v27 atPoint:v7 spaceAvailable:v12 horizontalAlignment:v13 verticalAlignment:v15 hyphenationFactor:v16 textColor:v9 font:v11 clipToAxis:v17 exclusion:v25 isSystemSymbol:v18 isTallText:v26];
    v22 = *(*(a1 + 88) + 8);
    if (*(v22 + 32) >= v20)
    {
      v20 = *(v22 + 32);
    }

    *(v22 + 32) = v20;
    v23 = *(*(a1 + 88) + 8);
    v24 = *(v23 + 40);
    if (v24 < v21)
    {
      v24 = v21;
    }

    *(v23 + 40) = v24;
  }
}

- (CGPoint)renderPositionForLabelLocation:(id)a3 rect:(CGRect)a4 zoomScale:(double)a5 contentOffset:(CGPoint)a6 constantOffset:(double)a7 isHorizontal:(BOOL)a8 optionalOffset:(CGPoint)a9
{
  v9 = a8;
  x = a6.x;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  v16 = a4.origin.x;
  [(HKCoordinateTransform *)self->_transform coordinateForValue:a3, a8, *&a9.x, *&a9.y];
  v19 = v18;
  [(HKAxis *)self pointTransform];
  v22 = v20 + v19 * v21;
  v23 = v16;
  v24 = y;
  v25 = width;
  v26 = height;
  if (v9)
  {
    MinX = CGRectGetMinX(*&v23);
    v28 = HKUIFloorToScreenScale(MinX - (x - v22 * a5));
    v29 = HKUIFloorToScreenScale(v28);
  }

  else
  {
    MinY = CGRectGetMinY(*&v23);
    v31 = HKUIFloorToScreenScale(v22 + MinY);
    v32 = HKUIFloorToScreenScale(v31);
    v29 = a7;
    a7 = v32;
  }

  v33 = v36 + a7;
  v34 = v35 + v29;
  result.y = v33;
  result.x = v34;
  return result;
}

- (void)_enumerateAxisLabelsForTextInRange:(id)a3 rect:(CGRect)a4 zoomScale:(double)a5 contentOffset:(CGPoint)a6 constantOffset:(double)a7 isHorizontal:(BOOL)a8 optionalOffset:(CGPoint)a9 gridlineWidth:(double)a10 usingBlock:(id)a11
{
  x = a9.x;
  v12 = a8;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  v16 = a4.origin.x;
  v66 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v19 = *&x;
  v20 = [(HKAxis *)self axisLabelsInModelRangeFromCache:v18 zoomScale:a5];
  v60 = [(HKAxis *)self labelDataSource];
  v54 = v20;
  if (v12)
  {
    [v20 count];
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v25 = v20;
    while (v24 + 1 != [v25 count])
    {
      v26 = [v25 objectAtIndexedSubscript:v24 + 1];
      v27 = [v26 text];

      if (v27)
      {
        v28 = [v26 location];
        [v60 renderPositionForLabelLocation:v28 rect:1 zoomScale:v16 contentOffset:y constantOffset:width isHorizontal:height optionalOffset:{a5, a6.x, a6.y, a7, *&a10, v67}];
        v30 = v29;
        v55 = v31;

        [v22 CGPointValue];
        v32 = MEMORY[0x1E696AD98];
        v33 = v30;
        v35 = v30 - v34 - a10 - v68;
        [(NSNumber *)self->_horizontalAxisLabelSpacePadding doubleValue];
        v37 = [v32 numberWithDouble:v35 - v36];

        if (v23 && HKUIObjectIsLarger(v37, &unk_1F43846A8))
        {
          v19[2](v19, v23, v22, v37);
        }

        v38 = [v26 text];

        v39 = [MEMORY[0x1E696B098] valueWithCGPoint:{v33, v55}];

        v23 = v38;
        v22 = v39;
        v21 = v37;
        v25 = v54;
      }

      else
      {
        v37 = v21;
      }

      if (++v24 >= [v25 count])
      {
        goto LABEL_26;
      }
    }

    if (v23 && HKUIObjectIsLarger(v21, &unk_1F43846A8))
    {
      v19[2](v19, v23, v22, v21);
    }

    v37 = v21;
LABEL_26:
  }

  else
  {
    v56 = v18;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v40 = v20;
    v41 = [v40 countByEnumeratingWithState:&v61 objects:v65 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v62;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v62 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = *(*(&v61 + 1) + 8 * i);
          v46 = [v45 text];

          if (v46)
          {
            v47 = [v45 location];
            [v60 renderPositionForLabelLocation:v47 rect:0 zoomScale:v16 contentOffset:y constantOffset:width isHorizontal:height optionalOffset:{a5, a6.x, a6.y, a7, *&a10, v67}];
            v49 = v48;
            v51 = v50;

            v52 = [v45 text];
            v53 = [MEMORY[0x1E696B098] valueWithCGPoint:{v49, v51}];
            v19[2](v19, v52, v53, self->_maxLabelWidth);
          }
        }

        v42 = [v40 countByEnumeratingWithState:&v61 objects:v65 count:16];
      }

      while (v42);
    }

    v25 = v20;
    v18 = v56;
  }
}

- (CGRect)_labelBackgroundRectWithLabels:(id)a3 font:(id)a4 maxAnnotationWidth:(double)a5 rect:(CGRect)a6 style:(id)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = [v17 fillStyle];
  v19 = [(HKAxis *)self _styleIsHorizontal:v17];
  if (!v18 || v19)
  {
    MinX = *MEMORY[0x1E695F058];
    MinY = *(MEMORY[0x1E695F058] + 8);
    a5 = *(MEMORY[0x1E695F058] + 16);
    v21 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    [(HKAxis *)self _axisFillWidthForStyle:v17 labels:v15 font:v16];
    if (v20 > a5)
    {
      a5 = v20;
    }

    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    v21 = CGRectGetHeight(v33);
    v22 = [v17 location];
    v23 = x;
    v24 = y;
    v25 = width;
    v26 = height;
    if (v22 == 3)
    {
      MinX = CGRectGetMinX(*&v23);
    }

    else
    {
      MinX = CGRectGetMaxX(*&v23) - a5;
    }

    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = height;
    MinY = CGRectGetMinY(v34);
  }

  v29 = MinX;
  v30 = MinY;
  v31 = a5;
  v32 = v21;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (double)_maximumWidthOfAnnotations:(id)a3 axisStyle:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = [*(*(&v19 + 1) + 8 * i) annotationText];
        [v12 size];
        v14 = v13;

        if (v10 < v14)
        {
          v10 = v14;
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
    if (v10 > 0.0)
    {
      [v6 fillInnerPadding];
      v16 = v15;
      [v6 fillOuterPadding];
      v10 = v10 + v16 + v17;
    }
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (void)_drawTextBackgroundWithRect:(CGRect)a3 style:(id)a4 renderView:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a5;
  v10 = [a4 fillStyle];
  if (v10)
  {
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    if (!CGRectEqualToRect(v13, *MEMORY[0x1E695F058]))
    {
      [v11 fillRect:v10 withFillStyle:x axisRect:y alpha:{width, height, x, y, width, height, 0x3FF0000000000000}];
    }
  }
}

- (double)_axisFillWidthForStyle:(id)a3 labels:(id)a4 font:(id)a5
{
  v8 = a3;
  [(HKAxis *)self _maxLabelWidthFromLabels:a4 font:a5];
  v10 = v9;
  [v8 fillInnerPadding];
  v12 = v10 + v11;
  [v8 fillOuterPadding];
  v14 = v13;

  return ceil(v12 + v14);
}

- (double)_maxLabelWidthFromLabels:(id)a3 font:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    v11 = *MEMORY[0x1E69DB648];
    v12 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v14 = [*(*(&v21 + 1) + 8 * i) text];
        v25 = v11;
        v26 = v7;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        [v14 sizeWithAttributes:v15];
        v17 = v16;

        if (v12 < v17)
        {
          v12 = v17;
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v9);
  }

  else
  {
    v12 = 0.0;
  }

  maxLabelWidth = self->_maxLabelWidth;
  if (maxLabelWidth)
  {
    [(NSNumber *)maxLabelWidth doubleValue];
    if (v12 >= v19)
    {
      v12 = v19;
    }
  }

  return v12;
}

- (double)bottomBaselineYCoordinateForModelRange:(id)a3 axisRect:(CGRect)a4 zoomScale:(double)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0xC7EFFFFFE0000000;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__HKAxis_bottomBaselineYCoordinateForModelRange_axisRect_zoomScale___block_invoke;
  v14[3] = &unk_1E81BB3C0;
  *&v14[5] = x;
  *&v14[6] = y;
  *&v14[7] = width;
  *&v14[8] = height;
  v14[4] = &v15;
  [(HKAxis *)self enumerateTickCoordinatesInModelRange:v11 zoomScale:v14 handler:a5];
  if (v16[3] == -3.40282347e38)
  {
    v12 = -1.0;
  }

  else
  {
    v12 = v16[3];
  }

  _Block_object_dispose(&v15, 8);

  return v12;
}

void __68__HKAxis_bottomBaselineYCoordinateForModelRange_axisRect_zoomScale___block_invoke(uint64_t a1, double a2)
{
  MinY = CGRectGetMinY(*(a1 + 40));
  v5 = HKUIFloorToScreenScale(MinY + a2);
  v6 = *(*(a1 + 32) + 8);
  if (v5 > *(v6 + 24))
  {
    *(v6 + 24) = v5;
  }
}

- (double)topBaselineYCoordinateForModelRange:(id)a3 axisRect:(CGRect)a4 zoomScale:(double)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  if ([(HKAxis *)self _containsTopBaselineWithModelRange:v11 zoomScale:a5])
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0x47EFFFFFE0000000;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __65__HKAxis_topBaselineYCoordinateForModelRange_axisRect_zoomScale___block_invoke;
    v13[3] = &unk_1E81BB3C0;
    *&v13[5] = x;
    *&v13[6] = y;
    *&v13[7] = width;
    *&v13[8] = height;
    v13[4] = &v14;
    [(HKAxis *)self enumerateTickCoordinatesInModelRange:v11 zoomScale:v13 handler:a5];
    if (v15[3] == 3.40282347e38)
    {
      y = -1.0;
    }

    else
    {
      y = v15[3];
    }

    _Block_object_dispose(&v14, 8);
  }

  return y;
}

void __65__HKAxis_topBaselineYCoordinateForModelRange_axisRect_zoomScale___block_invoke(uint64_t a1, double a2)
{
  MinY = CGRectGetMinY(*(a1 + 40));
  v5 = HKUIFloorToScreenScale(MinY + a2);
  v6 = *(*(a1 + 32) + 8);
  if (v5 < *(v6 + 24))
  {
    *(v6 + 24) = v5;
  }
}

- (id)_baselineForModelRange:(id)a3 axisRect:(CGRect)a4 zoomScale:(double)a5 contentOffset:(CGPoint)a6 style:(id)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v14 = a7;
  v15 = a3;
  v16 = objc_opt_new();
  v17 = [v14 gridLineStyle];

  [v17 lineWidth];
  v19 = v18;

  [v16 setLineWidth:v19];
  [(HKAxis *)self bottomBaselineYCoordinateForModelRange:v15 axisRect:x zoomScale:y, width, height, a5];
  v21 = v20;

  if (v21 >= -0.00000011920929)
  {
    [v16 moveToPoint:{x, v21}];
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    [v16 addLineToPoint:{CGRectGetMaxX(v24), v21}];
  }

  return v16;
}

- (id)_gridLinesForModelRange:(id)a3 axisRect:(CGRect)a4 gridlineRanges:(id)a5 zoomScale:(double)a6 contentOffset:(CGPoint)a7 style:(id)a8 gridLineType:(int64_t)a9
{
  y = a7.y;
  x = a7.x;
  height = a4.size.height;
  width = a4.size.width;
  v17 = a4.origin.y;
  v18 = a4.origin.x;
  v20 = a3;
  v21 = a5;
  v22 = a8;
  v23 = [(HKAxis *)self _styleIsHorizontal:v22];
  switch(a9)
  {
    case 0:
      v24 = [v22 referenceGridLineStyle];
      goto LABEL_7;
    case 1:
      v24 = [v22 gridLineStyle];
      goto LABEL_7;
    case 2:
      v24 = [v22 minorGridLineStyle];
LABEL_7:
      v25 = v24;
      goto LABEL_9;
  }

  v25 = 0;
LABEL_9:
  [v25 lineWidth];
  v27 = v26;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v53.origin.x = v18;
  v53.origin.y = v17;
  v53.size.width = width;
  v53.size.height = height;
  CGRectDivide(v53, &slice, &remainder, v27, !v23);
  v28 = objc_opt_new();
  [v28 setLineWidth:v27];
  if ([v25 dashStyle])
  {
    [v28 setLineDash:&_HKNonSolidGridLineDash count:1 phase:0.0];
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v41 = slice;
  v37[2] = __101__HKAxis__gridLinesForModelRange_axisRect_gridlineRanges_zoomScale_contentOffset_style_gridLineType___block_invoke;
  v37[3] = &unk_1E81BB3E8;
  v40 = a9;
  v49 = v23;
  v42 = a6;
  v43 = x;
  v44 = y;
  v45 = v18;
  v46 = v17;
  v47 = width;
  v48 = height;
  v29 = v28;
  v38 = v29;
  v39 = v21;
  v30 = v21;
  [(HKAxis *)self enumerateTickCoordinatesInModelRange:v20 zoomScale:v37 handler:a6];
  if (self->_overrideNoTopBaseline && !v23)
  {
    [(HKAxis *)self topBaselineYCoordinateForModelRange:v20 axisRect:v18 zoomScale:v17, width, height, a6];
    v32 = v31;
    v33 = slice.origin.x + slice.size.width;
    [v29 moveToPoint:?];
    [v29 addLineToPoint:{v33, v32}];
  }

  v34 = v39;
  v35 = v29;

  return v35;
}

void __101__HKAxis__gridLinesForModelRange_axisRect_gridlineRanges_zoomScale_contentOffset_style_gridLineType___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, double a5)
{
  v48 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a4;
  if (*(a1 + 48) == a3)
  {
    if (*(a1 + 144) == 1)
    {
      v11 = *(a1 + 64);
      v12 = *(a1 + 80);
      v13 = -(*(a1 + 96) - a5 * *(a1 + 88));
      MinX = CGRectGetMinX(*(a1 + 112));
      v15 = HKUIFloorToScreenScale(v13 + MinX);
      v16 = 0.0;
    }

    else
    {
      v16 = *(a1 + 72);
      v15 = *(a1 + 56);
      MinY = CGRectGetMinY(*(a1 + 112));
      v11 = HKUIFloorToScreenScale(MinY + a5);
      v12 = 0.0;
    }

    v55.origin.x = v15;
    v55.origin.y = v11;
    v55.size.width = v16;
    v55.size.height = v12;
    if (CGRectContainsRect(*(a1 + 112), v55))
    {
      v18 = *(a1 + 32);
      v49.origin.x = v15;
      v49.origin.y = v11;
      v49.size.width = v16;
      v49.size.height = v12;
      v19 = CGRectGetMinX(v49);
      v50.origin.x = v15;
      v50.origin.y = v11;
      v50.size.width = v16;
      v50.size.height = v12;
      [v18 moveToPoint:{v19, CGRectGetMinY(v50)}];
      if (*(a1 + 144) == 1)
      {
        v20 = 0.0;
        v21 = 48.0;
        if (!v10)
        {
          v21 = 0.0;
        }

        if (!a3)
        {
          v20 = v21;
        }

        if (a3 == 1)
        {
          v20 = 48.0;
        }

        if (a3 == 2)
        {
          v22 = -2.0;
        }

        else
        {
          v22 = v20;
        }

        v51.origin.x = v15;
        v51.origin.y = v11;
        v51.size.width = v16;
        v51.size.height = v12;
        MaxX = CGRectGetMaxX(v51);
        v52.origin.x = v15;
        v52.origin.y = v11;
        v52.size.width = v16;
        v52.size.height = v12;
        MaxY = CGRectGetMaxY(v52);
        v25 = *(a1 + 40);
        if (v25 && [v25 count])
        {
          v26 = v22 + MaxY;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v27 = *(a1 + 40);
          v28 = [v27 countByEnumeratingWithState:&v43 objects:v47 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v44;
            do
            {
              for (i = 0; i != v29; ++i)
              {
                if (*v44 != v30)
                {
                  objc_enumerationMutation(v27);
                }

                v32 = *(*(&v43 + 1) + 8 * i);
                v33 = [v32 minValue];
                [v33 floatValue];
                v35 = v34;

                v36 = [v32 maxValue];
                [v36 floatValue];
                v38 = v37;

                [*(a1 + 32) moveToPoint:{MaxX, v35}];
                [*(a1 + 32) addLineToPoint:{MaxX, v38}];
              }

              v29 = [v27 countByEnumeratingWithState:&v43 objects:v47 count:16];
            }

            while (v29);
          }

          else
          {
            v38 = v22 + MaxY;
          }

          [*(a1 + 32) moveToPoint:{MaxX, v38}];
          v42 = MaxX;
          if (v22 == 0.0)
          {
            v40 = v38;
          }

          else
          {
            v40 = v26;
          }

          v41 = *(a1 + 32);
          goto LABEL_29;
        }

        v41 = *(a1 + 32);
        v40 = v22 + MaxY;
      }

      else
      {
        v39 = *(a1 + 32);
        v53.origin.x = v15;
        v53.origin.y = v11;
        v53.size.width = v16;
        v53.size.height = v12;
        MaxX = CGRectGetMaxX(v53);
        v54.origin.x = v15;
        v54.origin.y = v11;
        v54.size.width = v16;
        v54.size.height = v12;
        v40 = CGRectGetMaxY(v54);
        v41 = v39;
      }

      v42 = MaxX;
LABEL_29:
      [v41 addLineToPoint:{v42, v40, v43}];
    }
  }
}

- (void)_addTickMarksForPosition:(unint64_t)a3 axisRect:(CGRect)a4 modelRange:(id)a5 zoomScale:(double)a6 contentOffset:(CGPoint)a7 toBezierPath:(id)a8 style:(id)a9
{
  y = a7.y;
  x = a7.x;
  height = a4.size.height;
  width = a4.size.width;
  v16 = a4.origin.y;
  v17 = a4.origin.x;
  remainder = a4;
  v20 = a5;
  v21 = a8;
  v22 = a9;
  v23 = [v22 tickStyle];
  v24 = [v22 axisLineStyle];
  v25 = v24;
  if (v23 && v24)
  {
    [v23 tickLength];
    v27 = v26;
    v28 = [v23 tickDirection];
    v36 = [(HKAxis *)self _styleIsHorizontal:v22];
    v29 = [v22 location];
    if ((v29 - 1) > 2)
    {
      v30 = 1;
    }

    else
    {
      v30 = dword_1C3D5DBB8[v29 - 1];
    }

    edge = v30;
    v31 = [v22 tickStyle];
    v32 = [v31 shouldRenderMajorTickMarks];

    if (v28 == 2)
    {
      if (a3 == 2)
      {
        v28 = 4;
      }

      else
      {
        v28 = 3;
      }
    }

    else if (v28 == 1)
    {
      if (a3 == 2)
      {
        v28 = 3;
      }

      else
      {
        v28 = 4;
      }
    }

    memset(&slice, 0, sizeof(slice));
    [v25 lineWidth];
    v34 = v33;
    v51.origin.x = v17;
    v51.origin.y = v16;
    v51.size.width = width;
    v51.size.height = height;
    CGRectDivide(v51, &slice, &remainder, v34, edge);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __98__HKAxis__addTickMarksForPosition_axisRect_modelRange_zoomScale_contentOffset_toBezierPath_style___block_invoke;
    v37[3] = &unk_1E81BB410;
    v47 = v32;
    v40 = v27;
    v41 = v28;
    v38 = v25;
    v48 = v36;
    v42 = a6;
    v43 = x;
    v44 = y;
    v45 = remainder;
    v46 = slice;
    v39 = v21;
    [(HKAxis *)self enumerateTickCoordinatesInModelRange:v20 zoomScale:v37 handler:a6];
  }
}

void __98__HKAxis__addTickMarksForPosition_axisRect_modelRange_zoomScale_contentOffset_toBezierPath_style___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, double a5)
{
  v9 = a2;
  v10 = a4;
  if (a3 == 2 || (*(a1 + 152) & 1) != 0)
  {
    v11 = 1.7;
    if (a3 == 2)
    {
      v11 = 1.0;
    }

    v12 = floor(v11 * *(a1 + 48));
    if (*(a1 + 56) == 4)
    {
      [*(a1 + 32) lineWidth];
      v14 = v13;
    }

    else
    {
      v14 = -v12;
    }

    if (*(a1 + 153) == 1)
    {
      v15 = -(*(a1 + 72) - a5 * *(a1 + 64));
      MinX = CGRectGetMinX(*(a1 + 88));
      v17 = HKUIFloorToScreenScale(v15 + MinX);
      v18 = v14 + *(a1 + 128);
      width = 0.0;
    }

    else
    {
      v20 = *MEMORY[0x1E695F058];
      v21 = *(MEMORY[0x1E695F058] + 16);
      CGAffineTransformMakeRotation(&v28, -1.57079633);
      v29.origin.x = v20;
      v29.origin.y = v14;
      v29.size.width = v21;
      v29.size.height = v12;
      v30 = CGRectApplyAffineTransform(v29, &v28);
      x = v30.origin.x;
      width = v30.size.width;
      MinY = CGRectGetMinY(*(a1 + 88));
      v18 = HKUIFloorToScreenScale(MinY + a5);
      v17 = x + *(a1 + 120);
      v12 = 0.0;
    }

    v24 = *(a1 + 40);
    v31.origin.x = v17;
    v31.origin.y = v18;
    v31.size.width = width;
    v31.size.height = v12;
    v25 = CGRectGetMinX(v31);
    v32.origin.x = v17;
    v32.origin.y = v18;
    v32.size.width = width;
    v32.size.height = v12;
    [v24 moveToPoint:{v25, CGRectGetMinY(v32)}];
    v26 = *(a1 + 40);
    v33.origin.x = v17;
    v33.origin.y = v18;
    v33.size.width = width;
    v33.size.height = v12;
    MaxX = CGRectGetMaxX(v33);
    v34.origin.x = v17;
    v34.origin.y = v18;
    v34.size.width = width;
    v34.size.height = v12;
    [v26 addLineToPoint:{MaxX, CGRectGetMaxY(v34)}];
  }
}

- (void)_renderTickMarksForModelRange:(id)a3 chartRect:(CGRect)a4 zoomScale:(double)a5 contentOffset:(CGPoint)a6 style:(id)a7 renderView:(id)a8
{
  y = a6.y;
  x = a6.x;
  height = a4.size.height;
  width = a4.size.width;
  v15 = a4.origin.y;
  v16 = a4.origin.x;
  v26 = a3;
  v18 = a7;
  v19 = a8;
  v20 = [v18 tickPositions];
  if (v20)
  {
    v21 = v20;
    v22 = objc_opt_new();
    if (v21)
    {
      [(HKAxis *)self _addTickMarksForPosition:1 axisRect:v26 modelRange:v22 zoomScale:v18 contentOffset:v16 toBezierPath:v15 style:width, height, a5, x, y];
    }

    if ((v21 & 2) != 0)
    {
      [(HKAxis *)self _addTickMarksForPosition:2 axisRect:v26 modelRange:v22 zoomScale:v18 contentOffset:v16 toBezierPath:v15 style:width, height, a5, x, y];
    }

    if (([v22 isEmpty] & 1) == 0)
    {
      v23 = [v18 tickStyle];
      v24 = [v23 strokeColor];
      LOBYTE(v25) = 0;
      [v19 drawPath:v22 strokeColor:v24 fillColor:0 markerImage:0 useGradientFill:0 blendMode:0 clipToAxes:v25];
    }
  }
}

- (void)addAxisAnnotation:(id)a3 modelCoordinate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HKAxis *)self axisAnnotations];

  if (!v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(HKAxis *)self setAxisAnnotations:v9];
  }

  v11 = [[HKAxisAnnotation alloc] initWithAnnotation:v7 position:v6];

  v10 = [(HKAxis *)self axisAnnotations];
  [v10 addObject:v11];
}

- (int64_t)axisAnnotationCount
{
  v2 = [(HKAxis *)self axisAnnotations];
  v3 = [v2 count];

  return v3;
}

- (void)clearCache
{
  v2 = [(HKAxisStyle *)self->_preferredStyle fillStyle];
  [v2 clearCache];
}

+ (HKAxisMinMaxDefinition)expandByPointsLow:(double)a3 high:(double)a4 modelRange:(HKAxisMinMaxDefinition)a5 pointRange:(HKAxisMinMaxDefinition)a6
{
  v6 = a6.var0 + a3;
  v7 = a6.var1 - a4;
  v8 = vabdd_f64(v7, a6.var0);
  if (vabdd_f64(v6, v7) >= 0.00000011920929 && v8 >= 0.00000011920929)
  {
    a5.var0 = (a5.var0 * (a6.var0 - v7) + a5.var1 * (v6 - a6.var0)) / (v6 - v7);
    a5.var1 = a5.var0 + (a6.var1 - a6.var0) * (a5.var1 - a5.var0) / (v7 - a6.var0);
  }

  var0 = a5.var0;
  var1 = a5.var1;
  result.var1 = var1;
  result.var0 = var0;
  return result;
}

+ (HKAxisMinMaxDefinition)contractByPointsLow:(double)a3 high:(double)a4 modelRange:(HKAxisMinMaxDefinition)a5 pointRange:(HKAxisMinMaxDefinition)a6
{
  if (vabdd_f64(a6.var1, a6.var0) >= 0.00000011920929)
  {
    v6 = a6.var1 - a4;
    v7 = (a5.var1 - a5.var0) / (a6.var1 - a6.var0);
    a5.var1 = a5.var0 + (v6 - a6.var0) * v7;
    a5.var0 = a5.var0 + (a6.var0 + a3 - a6.var0) * v7;
  }

  var0 = a5.var0;
  var1 = a5.var1;
  result.var1 = var1;
  result.var0 = var0;
  return result;
}

- (HKAxisLabelDataSource)labelDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_labelDataSource);

  return WeakRetained;
}

- (HKLinearTransform)pointTransformStorage
{
  offset = self->_pointTransformStorage.offset;
  scale = self->_pointTransformStorage.scale;
  result.scale = scale;
  result.offset = offset;
  return result;
}

- (void)axisAnnotations
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKAxis.m" lineNumber:228 description:@"Axis annotations may only be accessed on the main thread"];
}

- (void)setAxisAnnotations:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKAxis.m" lineNumber:240 description:@"Axis annotations may only be set from the main thread"];
}

@end