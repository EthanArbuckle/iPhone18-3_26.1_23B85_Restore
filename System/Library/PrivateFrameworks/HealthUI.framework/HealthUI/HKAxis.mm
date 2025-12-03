@interface HKAxis
+ (HKAxisMinMaxDefinition)contractByPointsLow:(double)low high:(double)high modelRange:(HKAxisMinMaxDefinition)range pointRange:(HKAxisMinMaxDefinition)pointRange;
+ (HKAxisMinMaxDefinition)expandByPointsLow:(double)low high:(double)high modelRange:(HKAxisMinMaxDefinition)range pointRange:(HKAxisMinMaxDefinition)pointRange;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAxis:(id)axis;
- (BOOL)requiresScaling;
- (CGPoint)renderPositionForLabelLocation:(id)location rect:(CGRect)rect zoomScale:(double)scale contentOffset:(CGPoint)offset constantOffset:(double)constantOffset isHorizontal:(BOOL)horizontal optionalOffset:(CGPoint)optionalOffset;
- (CGRect)_labelBackgroundRectWithLabels:(id)labels font:(id)font maxAnnotationWidth:(double)width rect:(CGRect)rect style:(id)style;
- (CGRect)labelRectWithModelRange:(id)range chartRect:(CGRect)rect zoomScale:(double)scale;
- (HKAxis)initWithConfiguration:(id)configuration;
- (HKAxisLabelDataSource)labelDataSource;
- (HKLinearTransform)_pointTransformFromSeriesRanges:(id)ranges linearTransform:(HKLinearTransform)transform chartRange:(HKRange)range;
- (HKLinearTransform)pointTransform;
- (HKLinearTransform)pointTransformFittingValueRange:(id)range toChartRange:(HKRange)chartRange;
- (HKLinearTransform)pointTransformStorage;
- (HKRange)_chartRangeForChartRect:(CGRect)rect zoomScale:(double)scale contentOffset:(CGPoint)offset;
- (HKValueRange)axisChartableValueRange;
- (NSMutableArray)axisAnnotations;
- (double)_axisFillWidthForStyle:(id)style labels:(id)labels font:(id)font;
- (double)_axisOffsetWithStyle:(id)style chartRect:(CGRect)rect horizontalAlignmentOut:(int64_t *)out;
- (double)_maxLabelWidthFromLabels:(id)labels font:(id)font;
- (double)_maximumWidthOfAnnotations:(id)annotations axisStyle:(id)style;
- (double)bottomBaselineYCoordinateForModelRange:(id)range axisRect:(CGRect)rect zoomScale:(double)scale;
- (double)topBaselineYCoordinateForModelRange:(id)range axisRect:(CGRect)rect zoomScale:(double)scale;
- (id)_baselineForModelRange:(id)range axisRect:(CGRect)rect zoomScale:(double)scale contentOffset:(CGPoint)offset style:(id)style;
- (id)_gridLinesForModelRange:(id)range axisRect:(CGRect)rect gridlineRanges:(id)ranges zoomScale:(double)scale contentOffset:(CGPoint)offset style:(id)style gridLineType:(int64_t)type;
- (id)axisLabelsInModelRangeFromCache:(id)cache zoomScale:(double)scale;
- (id)cacheKeysForModelRange:(id)range zoomScale:(double)scale;
- (id)findAxisLabelsInModelRange:(id)range zoomScale:(double)scale;
- (id)rangeForChartRect:(CGRect)rect zoomScale:(double)scale contentOffset:(CGPoint)offset;
- (int64_t)_axisLabelCountWithTextInModelRange:(id)range zoomScale:(double)scale;
- (int64_t)axisAnnotationCount;
- (int64_t)axisLabelEndings;
- (void)_addTickMarksForPosition:(unint64_t)position axisRect:(CGRect)rect modelRange:(id)range zoomScale:(double)scale contentOffset:(CGPoint)offset toBezierPath:(id)path style:(id)style;
- (void)_drawTextBackgroundWithRect:(CGRect)rect style:(id)style renderView:(id)view;
- (void)_drawTextForModelRange:(id)range inRect:(CGRect)rect zoomScale:(double)scale contentOffset:(CGPoint)offset renderView:(id)view style:(id)style maximumLabelSize:(CGSize *)size omitOffscreenLabels:(BOOL)self0;
- (void)_enumerateAxisLabelsForTextInRange:(id)range rect:(CGRect)rect zoomScale:(double)scale contentOffset:(CGPoint)offset constantOffset:(double)constantOffset isHorizontal:(BOOL)horizontal optionalOffset:(CGPoint)optionalOffset gridlineWidth:(double)self0 usingBlock:(id)self1;
- (void)_offsetForChartRect:(CGRect)rect chartRange:(HKRange)range zoomScaleOut:(double *)out contentOffsetOut:(CGPoint *)offsetOut;
- (void)_renderTickMarksForModelRange:(id)range chartRect:(CGRect)rect zoomScale:(double)scale contentOffset:(CGPoint)offset style:(id)style renderView:(id)view;
- (void)addAxisAnnotation:(id)annotation modelCoordinate:(id)coordinate;
- (void)axisAnnotations;
- (void)clearCache;
- (void)drawBaselineForModelRange:(id)range chartRect:(CGRect)rect zoomScale:(double)scale contentOffset:(CGPoint)offset renderView:(id)view;
- (void)drawGridlinesForModelRange:(id)range chartRect:(CGRect)rect gridlineRanges:(id)ranges zoomScale:(double)scale contentOffset:(CGPoint)offset renderView:(id)view blendMode:(int)mode;
- (void)drawLabelsWithModelRange:(id)range chartRect:(CGRect)rect zoomScale:(double)scale contentOffset:(CGPoint)offset renderView:(id)view maximumLabelSize:(CGSize *)size omitOffscreenLabels:(BOOL)labels;
- (void)enumerateTickCoordinatesInModelRange:(id)range zoomScale:(double)scale handler:(id)handler;
- (void)offsetForValueRange:(id)range chartRect:(CGRect)rect zoomScaleOut:(double *)out contentOffsetOut:(CGPoint *)offsetOut;
- (void)setAxisAnnotations:(id)annotations;
- (void)setAxisChartableValueRange:(id)range;
- (void)setAxisLabelEndings:(int64_t)endings;
- (void)setPointTransform:(HKLinearTransform)transform;
@end

@implementation HKAxis

- (HKAxis)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v35.receiver = self;
  v35.super_class = HKAxis;
  v5 = [(HKAxis *)&v35 init];
  if (v5)
  {
    preferredStyle = [configurationCopy preferredStyle];
    v7 = preferredStyle;
    if (preferredStyle)
    {
      v8 = preferredStyle;
    }

    else
    {
      v8 = +[HKAxisStyle defaultStyle];
    }

    v9 = *(v5 + 2);
    *(v5 + 2) = v8;

    *(v5 + 3) = [configurationCopy maxLabels];
    *(v5 + 4) = [configurationCopy minLabels];
    maxLabelWidth = [configurationCopy maxLabelWidth];
    v11 = *(v5 + 5);
    *(v5 + 5) = maxLabelWidth;

    horizontalAxisLabelSpacePadding = [configurationCopy horizontalAxisLabelSpacePadding];
    v13 = *(v5 + 6);
    *(v5 + 6) = horizontalAxisLabelSpacePadding;

    transform = [configurationCopy transform];
    v15 = transform;
    if (transform)
    {
      v16 = transform;
    }

    else
    {
      v16 = objc_opt_new();
    }

    v17 = *(v5 + 7);
    *(v5 + 7) = v16;

    zoomScaleEngine = [configurationCopy zoomScaleEngine];
    v19 = zoomScaleEngine;
    if (zoomScaleEngine)
    {
      v20 = zoomScaleEngine;
    }

    else
    {
      v20 = objc_alloc_init(HKScalarZoomScale);
    }

    v21 = *(v5 + 8);
    *(v5 + 8) = v20;

    labelDataSource = [configurationCopy labelDataSource];
    v23 = labelDataSource;
    if (labelDataSource)
    {
      v24 = labelDataSource;
    }

    else
    {
      v24 = v5;
    }

    objc_storeWeak(v5 + 9, v24);

    v5[8] = [configurationCopy overrideNoTopBaseline];
    v5[9] = [configurationCopy axisAnnotationsExcludeInterstitialAxisLabels];
    v5[10] = [configurationCopy axisLabelsDependOnPointTransform];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (v5 = objc_opt_class(), v5 == objc_opt_class()))
  {
    v6 = equalCopy == self || [(HKAxis *)self isEqualToAxis:equalCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqualToAxis:(id)axis
{
  axisCopy = axis;
  if (axisCopy)
  {
    v5 = objc_opt_class();
    if (v5 != objc_opt_class())
    {
      v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Not same type of axis" userInfo:0];
      objc_exception_throw(v23);
    }

    maxLabels = [axisCopy maxLabels];
    if (maxLabels == [(HKAxis *)self maxLabels])
    {
      minLabels = [axisCopy minLabels];
      v8 = minLabels == [(HKAxis *)self minLabels];
    }

    else
    {
      v8 = 0;
    }

    transform = [(HKAxis *)self transform];
    transform2 = [axisCopy transform];
    if (transform == transform2)
    {
      v15 = 1;
    }

    else
    {
      transform3 = [(HKAxis *)self transform];
      if (transform3)
      {
        transform4 = [axisCopy transform];
        transform5 = [(HKAxis *)self transform];
        v15 = [transform4 isEqual:transform5];
      }

      else
      {
        v15 = 0;
      }
    }

    zoomScaleEngine = [(HKAxis *)self zoomScaleEngine];
    zoomScaleEngine2 = [axisCopy zoomScaleEngine];
    if (zoomScaleEngine == zoomScaleEngine2)
    {
      v21 = 1;
    }

    else
    {
      zoomScaleEngine3 = [(HKAxis *)self zoomScaleEngine];
      if (zoomScaleEngine3)
      {
        zoomScaleEngine4 = [axisCopy zoomScaleEngine];
        zoomScaleEngine5 = [(HKAxis *)self zoomScaleEngine];
        v21 = [zoomScaleEngine4 isEqual:zoomScaleEngine5];
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
  axisMutableStateLock = [(HKAxis *)self axisMutableStateLock];
  [axisMutableStateLock lock];

  if (self->_axisAnnotationsStorage && ([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [(HKAxis *)a2 axisAnnotations];
  }

  v5 = self->_axisAnnotationsStorage;
  axisMutableStateLock2 = [(HKAxis *)self axisMutableStateLock];
  [axisMutableStateLock2 unlock];

  return v5;
}

- (void)setAxisAnnotations:(id)annotations
{
  annotationsCopy = annotations;
  axisMutableStateLock = [(HKAxis *)self axisMutableStateLock];
  [axisMutableStateLock lock];

  if (annotationsCopy && ([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [(HKAxis *)a2 setAxisAnnotations:?];
  }

  axisAnnotationsStorage = self->_axisAnnotationsStorage;
  self->_axisAnnotationsStorage = annotationsCopy;

  axisMutableStateLock2 = [(HKAxis *)self axisMutableStateLock];
  [axisMutableStateLock2 unlock];
}

- (BOOL)requiresScaling
{
  axisMutableStateLock = [(HKAxis *)self axisMutableStateLock];
  [axisMutableStateLock lock];

  LOBYTE(axisMutableStateLock) = self->_requiresScalingStorage;
  axisMutableStateLock2 = [(HKAxis *)self axisMutableStateLock];
  [axisMutableStateLock2 unlock];

  return axisMutableStateLock;
}

- (int64_t)axisLabelEndings
{
  axisMutableStateLock = [(HKAxis *)self axisMutableStateLock];
  [axisMutableStateLock lock];

  v4 = self->_axisLabelEndingsStorage != 0;
  axisMutableStateLock2 = [(HKAxis *)self axisMutableStateLock];
  [axisMutableStateLock2 unlock];

  return v4;
}

- (void)setAxisLabelEndings:(int64_t)endings
{
  axisMutableStateLock = [(HKAxis *)self axisMutableStateLock];
  [axisMutableStateLock lock];

  self->_axisLabelEndingsStorage = endings;
  axisMutableStateLock2 = [(HKAxis *)self axisMutableStateLock];
  [axisMutableStateLock2 unlock];
}

- (HKLinearTransform)pointTransform
{
  axisMutableStateLock = [(HKAxis *)self axisMutableStateLock];
  [axisMutableStateLock lock];

  offset = self->_pointTransformStorage.offset;
  scale = self->_pointTransformStorage.scale;
  axisMutableStateLock2 = [(HKAxis *)self axisMutableStateLock];
  [axisMutableStateLock2 unlock];

  v7 = offset;
  v8 = scale;
  result.scale = v8;
  result.offset = v7;
  return result;
}

- (void)setPointTransform:(HKLinearTransform)transform
{
  scale = transform.scale;
  offset = transform.offset;
  axisMutableStateLock = [(HKAxis *)self axisMutableStateLock];
  [axisMutableStateLock lock];

  self->_pointTransformStorage.offset = offset;
  self->_pointTransformStorage.scale = scale;
  self->_requiresScalingStorage = 0;
  axisMutableStateLock2 = [(HKAxis *)self axisMutableStateLock];
  [axisMutableStateLock2 unlock];

  if (self->_axisLabelsDependOnPointTransform)
  {

    [(HKAxis *)self invalidateAxisLabelCache];
  }
}

- (HKValueRange)axisChartableValueRange
{
  axisMutableStateLock = [(HKAxis *)self axisMutableStateLock];
  [axisMutableStateLock lock];

  minValue = [(HKValueRange *)self->_axisChartableValueRangeStorage minValue];
  maxValue = [(HKValueRange *)self->_axisChartableValueRangeStorage maxValue];
  v6 = [HKValueRange valueRangeWithMinValue:minValue maxValue:maxValue];

  axisMutableStateLock2 = [(HKAxis *)self axisMutableStateLock];
  [axisMutableStateLock2 unlock];

  return v6;
}

- (void)setAxisChartableValueRange:(id)range
{
  rangeCopy = range;
  axisMutableStateLock = [(HKAxis *)self axisMutableStateLock];
  [axisMutableStateLock lock];

  minValue = [rangeCopy minValue];
  maxValue = [rangeCopy maxValue];

  v8 = [HKValueRange valueRangeWithMinValue:minValue maxValue:maxValue];
  axisChartableValueRangeStorage = self->_axisChartableValueRangeStorage;
  self->_axisChartableValueRangeStorage = v8;

  axisMutableStateLock2 = [(HKAxis *)self axisMutableStateLock];
  [axisMutableStateLock2 unlock];
}

- (HKLinearTransform)pointTransformFittingValueRange:(id)range toChartRange:(HKRange)chartRange
{
  var1 = chartRange.var1;
  var0 = chartRange.var0;
  rangeCopy = range;
  transform = [(HKAxis *)self transform];
  minValue = [rangeCopy minValue];
  [transform coordinateForValue:minValue];
  v11 = v10;

  transform2 = [(HKAxis *)self transform];
  maxValue = [rangeCopy maxValue];

  [transform2 coordinateForValue:maxValue];
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

- (HKLinearTransform)_pointTransformFromSeriesRanges:(id)ranges linearTransform:(HKLinearTransform)transform chartRange:(HKRange)range
{
  var1 = range.var1;
  var0 = range.var0;
  scale = transform.scale;
  offset = transform.offset;
  v29 = *MEMORY[0x1E69E9840];
  rangesCopy = ranges;
  v11 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = rangesCopy;
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

  var1 = [(HKAxis *)self adjustedRangeForFittedRange:v11 chartRange:var0, var1];
  [(HKAxis *)self pointTransformFittingValueRange:var1 toChartRange:var0, var1];
  v19 = v18;
  v21 = v20;

  v22 = scale * v21;
  v23 = offset + v19 * scale;
  result.scale = v22;
  result.offset = v23;
  return result;
}

- (id)axisLabelsInModelRangeFromCache:(id)cache zoomScale:(double)scale
{
  v6 = [(HKAxis *)self extendModelRangeWithRange:cache zoomScale:?];
  axisLabelCache = [(HKAxis *)self axisLabelCache];
  v8 = [axisLabelCache allAxisLabelsForRange:v6 zoomScale:scale];

  return v8;
}

- (id)cacheKeysForModelRange:(id)range zoomScale:(double)scale
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HKAxis.m" lineNumber:348 description:@"No implementation for cacheKeysForModelRange"];

  return 0;
}

- (id)findAxisLabelsInModelRange:(id)range zoomScale:(double)scale
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HKAxis.m" lineNumber:354 description:@"No implementation for findAxisLabelsInChartRange"];

  return 0;
}

- (int64_t)_axisLabelCountWithTextInModelRange:(id)range zoomScale:(double)scale
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [(HKAxis *)self axisLabelsInModelRangeFromCache:range zoomScale:scale];
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

        text = [*(*(&v12 + 1) + 8 * i) text];

        if (text)
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

- (void)enumerateTickCoordinatesInModelRange:(id)range zoomScale:(double)scale handler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  [(HKAxis *)self axisLabelsInModelRangeFromCache:range zoomScale:scale];
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
      transform = [(HKAxis *)self transform];
      location = [v14 location];
      [transform coordinateForValue:location];
      v22 = v16 + v21 * v18;

      v26 = 0;
      location2 = [v14 location];
      labelType = [v14 labelType];
      text = [v14 text];
      handlerCopy[2](handlerCopy, location2, labelType, text, &v26, v22);

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

- (double)_axisOffsetWithStyle:(id)style chartRect:(CGRect)rect horizontalAlignmentOut:(int64_t *)out
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  styleCopy = style;
  location = [styleCopy location];
  horizontalAlignment = 0;
  v13 = 0.0;
  if (location > 1)
  {
    if (location == 2)
    {
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      MaxY = CGRectGetMaxY(v25);
      [styleCopy fillOuterPadding];
      v13 = MaxY - v20;
      labelStyle = [styleCopy labelStyle];
      horizontalAlignment = [labelStyle horizontalAlignment];

      if (!out)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (location == 3)
    {
      v23.origin.x = x;
      v23.origin.y = y;
      v23.size.width = width;
      v23.size.height = height;
      MinX = CGRectGetMinX(v23);
      [styleCopy fillOuterPadding];
LABEL_8:
      horizontalAlignment = 0;
      v13 = MinX + v15;
      if (!out)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if (location)
  {
    if (location == 1)
    {
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      MinX = CGRectGetMinX(v22);
      [styleCopy fillInnerPadding];
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
    [styleCopy fillOuterPadding];
    v13 = MinY + v17;
    horizontalAlignment = 1;
  }

  if (out)
  {
LABEL_12:
    *out = horizontalAlignment;
  }

LABEL_13:

  return v13;
}

- (CGRect)labelRectWithModelRange:(id)range chartRect:(CGRect)rect zoomScale:(double)scale
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  rangeCopy = range;
  preferredStyle = [(HKAxis *)self preferredStyle];
  v13 = [(HKAxis *)self axisLabelsInModelRangeFromCache:rangeCopy zoomScale:scale];

  axisAnnotations = [(HKAxis *)self axisAnnotations];

  if (axisAnnotations)
  {
    axisAnnotations2 = [(HKAxis *)self axisAnnotations];
    [(HKAxis *)self _maximumWidthOfAnnotations:axisAnnotations2 axisStyle:preferredStyle];
    v17 = v16;
  }

  else
  {
    v17 = 0.0;
  }

  labelStyle = [preferredStyle labelStyle];
  font = [labelStyle font];
  [(HKAxis *)self _labelBackgroundRectWithLabels:v13 font:font maxAnnotationWidth:preferredStyle rect:v17 style:x, y, width, height];
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

- (void)drawLabelsWithModelRange:(id)range chartRect:(CGRect)rect zoomScale:(double)scale contentOffset:(CGPoint)offset renderView:(id)view maximumLabelSize:(CGSize *)size omitOffscreenLabels:(BOOL)labels
{
  labelsCopy = labels;
  y = offset.y;
  x = offset.x;
  height = rect.size.height;
  width = rect.size.width;
  v16 = rect.origin.y;
  v17 = rect.origin.x;
  viewCopy = view;
  rangeCopy = range;
  preferredStyle = [(HKAxis *)self preferredStyle];
  [(HKAxis *)self _drawTextForModelRange:rangeCopy inRect:viewCopy zoomScale:preferredStyle contentOffset:size renderView:labelsCopy style:v17 maximumLabelSize:v16 omitOffscreenLabels:width, height, scale, x, y];
}

- (void)drawBaselineForModelRange:(id)range chartRect:(CGRect)rect zoomScale:(double)scale contentOffset:(CGPoint)offset renderView:(id)view
{
  y = offset.y;
  x = offset.x;
  height = rect.size.height;
  width = rect.size.width;
  v13 = rect.origin.y;
  v14 = rect.origin.x;
  rangeCopy = range;
  viewCopy = view;
  preferredStyle = [(HKAxis *)self preferredStyle];
  if ([preferredStyle showGridLines])
  {
    v18 = [(HKAxis *)self _baselineForModelRange:rangeCopy axisRect:preferredStyle zoomScale:v14 contentOffset:v13 style:width, height, scale, x, y];
    gridLineStyle = [preferredStyle gridLineStyle];
    strokeColor = [gridLineStyle strokeColor];
    LOBYTE(v21) = 0;
    [viewCopy drawPath:v18 strokeColor:strokeColor fillColor:0 markerImage:0 useGradientFill:0 blendMode:0 clipToAxes:v21];
  }
}

- (void)drawGridlinesForModelRange:(id)range chartRect:(CGRect)rect gridlineRanges:(id)ranges zoomScale:(double)scale contentOffset:(CGPoint)offset renderView:(id)view blendMode:(int)mode
{
  v9 = *&mode;
  y = offset.y;
  x = offset.x;
  height = rect.size.height;
  width = rect.size.width;
  v17 = rect.origin.y;
  v18 = rect.origin.x;
  rangeCopy = range;
  rangesCopy = ranges;
  viewCopy = view;
  preferredStyle = [(HKAxis *)self preferredStyle];
  if ([preferredStyle showGridLines])
  {
    minorGridLineStyle = [preferredStyle minorGridLineStyle];

    if (minorGridLineStyle)
    {
      v24 = [(HKAxis *)self _gridLinesForModelRange:rangeCopy axisRect:rangesCopy gridlineRanges:preferredStyle zoomScale:2 contentOffset:v18 style:v17 gridLineType:width, height, scale, x, y];
      minorGridLineStyle2 = [preferredStyle minorGridLineStyle];
      strokeColor = [minorGridLineStyle2 strokeColor];
      LOBYTE(v35) = 0;
      [viewCopy drawPath:v24 strokeColor:strokeColor fillColor:0 markerImage:0 useGradientFill:0 blendMode:v9 clipToAxes:v35];
    }

    gridLineStyle = [preferredStyle gridLineStyle];

    if (gridLineStyle)
    {
      v28 = [(HKAxis *)self _gridLinesForModelRange:rangeCopy axisRect:rangesCopy gridlineRanges:preferredStyle zoomScale:1 contentOffset:v18 style:v17 gridLineType:width, height, scale, x, y];
      gridLineStyle2 = [preferredStyle gridLineStyle];
      strokeColor2 = [gridLineStyle2 strokeColor];
      LOBYTE(v35) = 0;
      [viewCopy drawPath:v28 strokeColor:strokeColor2 fillColor:0 markerImage:0 useGradientFill:0 blendMode:v9 clipToAxes:v35];
    }

    referenceGridLineStyle = [preferredStyle referenceGridLineStyle];

    if (referenceGridLineStyle)
    {
      v32 = [(HKAxis *)self _gridLinesForModelRange:rangeCopy axisRect:rangesCopy gridlineRanges:preferredStyle zoomScale:0 contentOffset:v18 style:v17 gridLineType:width, height, scale, x, y];
      referenceGridLineStyle2 = [preferredStyle referenceGridLineStyle];
      strokeColor3 = [referenceGridLineStyle2 strokeColor];
      LOBYTE(v35) = 0;
      [viewCopy drawPath:v32 strokeColor:strokeColor3 fillColor:0 markerImage:0 useGradientFill:0 blendMode:v9 clipToAxes:v35];
    }
  }
}

- (HKRange)_chartRangeForChartRect:(CGRect)rect zoomScale:(double)scale contentOffset:(CGPoint)offset
{
  x = offset.x;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  v10 = rect.origin.x;
  selfCopy = self;
  v12 = [(HKAxis *)self preferredStyle:rect.origin.x];
  LODWORD(selfCopy) = [(HKAxis *)selfCopy _styleIsHorizontal:v12];

  if (selfCopy)
  {
    v13 = x / scale;
    v14 = width / scale + -2.22507386e-308;
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

- (void)_offsetForChartRect:(CGRect)rect chartRange:(HKRange)range zoomScaleOut:(double *)out contentOffsetOut:(CGPoint *)offsetOut
{
  var1 = range.var1;
  var0 = range.var0;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  v26 = *MEMORY[0x1E69E9840];
  v16 = MEMORY[0x1E695EFF8];
  preferredStyle = [(HKAxis *)self preferredStyle];
  LODWORD(selfCopy) = [(HKAxis *)selfCopy _styleIsHorizontal:preferredStyle];

  if (selfCopy)
  {
    v18 = 1.0;
    if (var1 > 0.0 && out)
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

  if (out)
  {
    *out = v18;
  }

  if (offsetOut)
  {
    v23 = v16[1];
    offsetOut->x = v19;
    offsetOut->y = v23;
  }
}

- (id)rangeForChartRect:(CGRect)rect zoomScale:(double)scale contentOffset:(CGPoint)offset
{
  [(HKAxis *)self _chartRangeForChartRect:rect.origin.x zoomScale:rect.origin.y contentOffset:rect.size.width, rect.size.height, scale, offset.x, offset.y];
  v7 = v6;
  v9 = v8;
  [(HKAxis *)self pointTransform];
  v12 = -v10 / v11;
  v13 = 1.0 / v11;
  v14 = v12 + v7 * v13;
  v15 = v9 * v13;
  transform = [(HKAxis *)self transform];
  v17 = [transform valueForCoordinate:{HKRangeMin(v14, v15)}];

  transform2 = [(HKAxis *)self transform];
  v19 = [transform2 valueForCoordinate:{HKRangeMax(v14, v15)}];

  v20 = [HKValueRange valueRangeWithMinValue:v17 maxValue:v19];

  return v20;
}

- (void)offsetForValueRange:(id)range chartRect:(CGRect)rect zoomScaleOut:(double *)out contentOffsetOut:(CGPoint *)offsetOut
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  rangeCopy = range;
  minValue = [rangeCopy minValue];
  [minValue doubleValue];
  v16 = v15;

  maxValue = [rangeCopy maxValue];

  [maxValue doubleValue];
  v19 = v18;

  [(HKAxis *)self pointTransform];
  v22 = (v19 - v16) * v21;
  if (v22 > 0.0)
  {

    [(HKAxis *)self _offsetForChartRect:out chartRange:offsetOut zoomScaleOut:x contentOffsetOut:y, width, height, v20 + v16 * v21, v22];
  }
}

- (void)_drawTextForModelRange:(id)range inRect:(CGRect)rect zoomScale:(double)scale contentOffset:(CGPoint)offset renderView:(id)view style:(id)style maximumLabelSize:(CGSize *)size omitOffscreenLabels:(BOOL)self0
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v113 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  viewCopy = view;
  styleCopy = style;
  labelStyle = [styleCopy labelStyle];

  if (labelStyle)
  {
    v17 = [(HKAxis *)self _styleIsHorizontal:styleCopy];
    labelStyle2 = [styleCopy labelStyle];
    hyphenationFactor = [labelStyle2 hyphenationFactor];
    verticalAlignment = [labelStyle2 verticalAlignment];
    textColor = [labelStyle2 textColor];
    font = [labelStyle2 font];
    v110 = 0;
    [(HKAxis *)self _axisOffsetWithStyle:styleCopy chartRect:&v110 horizontalAlignmentOut:x, y, width, height];
    v70 = v19;
    v105 = 0;
    v106 = &v105;
    v107 = 0x3010000000;
    v108 = &unk_1C3DAF4DA;
    v109 = *size;
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
      [styleCopy fillInnerPadding];
      v23 = v22;
      v20 = v110;
    }

    else
    {
      v23 = 0.0;
    }

    if (v20 == 2 && v17)
    {
      [styleCopy fillInnerPadding];
      v23 = -v25;
    }

    [(HKAxis *)self _drawTextBackgroundWithRect:styleCopy style:viewCopy renderView:x, y, width, height];
    axisAnnotations = [(HKAxis *)self axisAnnotations];
    v27 = axisAnnotations == 0;

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
      axisAnnotations2 = [(HKAxis *)self axisAnnotations];
      v30 = [axisAnnotations2 countByEnumeratingWithState:&v101 objects:v112 count:16];
      if (v30)
      {
        v31 = *v102;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v102 != v31)
            {
              objc_enumerationMutation(axisAnnotations2);
            }

            v33 = *(*(&v101 + 1) + 8 * i);
            annotationText = [v33 annotationText];
            v35 = annotationText == 0;

            if (!v35)
            {
              labelDataSource = [(HKAxis *)self labelDataSource];
              position = [v33 position];
              [labelDataSource renderPositionForLabelLocation:position rect:v17 zoomScale:x contentOffset:y constantOffset:width isHorizontal:height optionalOffset:{scale, offset.x, offset.y, v70, *&v23, 0}];
              v39 = v38;
              v41 = v40;

              annotationText2 = [v33 annotationText];
              [viewCopy drawAttributedText:annotationText2 atPoint:v110 axisRect:verticalAlignment horizontalAlignment:v28 verticalAlignment:v39 exclusion:{v41, x, y, width, height}];
              v75 = v44;
              v76 = v43;

              v45.f64[0] = v76;
              v45.f64[1] = v75;
              v106[2] = vbslq_s8(vcgtq_f64(v45, v106[2]), v45, v106[2]);
            }
          }

          v30 = [axisAnnotations2 countByEnumeratingWithState:&v101 objects:v112 count:16];
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
    v47 = [(HKAxis *)self axisLabelsInModelRangeFromCache:rangeCopy zoomScale:scale];
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
            text = [*(*(&v93 + 1) + 8 * j) text];
            if ([text rangeOfCharacterFromSet:v46] == 0x7FFFFFFFFFFFFFFFLL)
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

    gridLineStyle = [styleCopy gridLineStyle];
    [gridLineStyle lineWidth];
    v56 = v55;
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __118__HKAxis__drawTextForModelRange_inRect_zoomScale_contentOffset_renderView_style_maximumLabelSize_omitOffscreenLabels___block_invoke;
    v77[3] = &unk_1E81BB398;
    labelsCopy = labels;
    v86 = x;
    v87 = y;
    v88 = width;
    v89 = height;
    v78 = viewCopy;
    v90 = v110;
    v91 = verticalAlignment;
    v57 = hyphenationFactor;
    v79 = v57;
    v58 = textColor;
    v80 = v58;
    v59 = font;
    v81 = v59;
    v60 = v28;
    v82 = v60;
    v61 = labelStyle2;
    v83 = v61;
    v84 = &v97;
    v85 = &v105;
    [(HKAxis *)self _enumerateAxisLabelsForTextInRange:rangeCopy rect:v17 zoomScale:v77 contentOffset:x constantOffset:y isHorizontal:width optionalOffset:height gridlineWidth:scale usingBlock:offset.x, offset.y, v70, *&v23, 0, v56];

    *size = v106[2];
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

- (CGPoint)renderPositionForLabelLocation:(id)location rect:(CGRect)rect zoomScale:(double)scale contentOffset:(CGPoint)offset constantOffset:(double)constantOffset isHorizontal:(BOOL)horizontal optionalOffset:(CGPoint)optionalOffset
{
  horizontalCopy = horizontal;
  x = offset.x;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  v16 = rect.origin.x;
  [(HKCoordinateTransform *)self->_transform coordinateForValue:location, horizontal, *&optionalOffset.x, *&optionalOffset.y];
  v19 = v18;
  [(HKAxis *)self pointTransform];
  v22 = v20 + v19 * v21;
  v23 = v16;
  v24 = y;
  v25 = width;
  v26 = height;
  if (horizontalCopy)
  {
    MinX = CGRectGetMinX(*&v23);
    v28 = HKUIFloorToScreenScale(MinX - (x - v22 * scale));
    constantOffsetCopy = HKUIFloorToScreenScale(v28);
  }

  else
  {
    MinY = CGRectGetMinY(*&v23);
    v31 = HKUIFloorToScreenScale(v22 + MinY);
    v32 = HKUIFloorToScreenScale(v31);
    constantOffsetCopy = constantOffset;
    constantOffset = v32;
  }

  v33 = v36 + constantOffset;
  v34 = v35 + constantOffsetCopy;
  result.y = v33;
  result.x = v34;
  return result;
}

- (void)_enumerateAxisLabelsForTextInRange:(id)range rect:(CGRect)rect zoomScale:(double)scale contentOffset:(CGPoint)offset constantOffset:(double)constantOffset isHorizontal:(BOOL)horizontal optionalOffset:(CGPoint)optionalOffset gridlineWidth:(double)self0 usingBlock:(id)self1
{
  x = optionalOffset.x;
  horizontalCopy = horizontal;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  v16 = rect.origin.x;
  v66 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  v19 = *&x;
  v20 = [(HKAxis *)self axisLabelsInModelRangeFromCache:rangeCopy zoomScale:scale];
  labelDataSource = [(HKAxis *)self labelDataSource];
  v54 = v20;
  if (horizontalCopy)
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
      text = [v26 text];

      if (text)
      {
        location = [v26 location];
        [labelDataSource renderPositionForLabelLocation:location rect:1 zoomScale:v16 contentOffset:y constantOffset:width isHorizontal:height optionalOffset:{scale, offset.x, offset.y, constantOffset, *&width, v67}];
        v30 = v29;
        v55 = v31;

        [v22 CGPointValue];
        v32 = MEMORY[0x1E696AD98];
        v33 = v30;
        v35 = v30 - v34 - width - v68;
        [(NSNumber *)self->_horizontalAxisLabelSpacePadding doubleValue];
        v37 = [v32 numberWithDouble:v35 - v36];

        if (v23 && HKUIObjectIsLarger(v37, &unk_1F43846A8))
        {
          v19[2](v19, v23, v22, v37);
        }

        text2 = [v26 text];

        v39 = [MEMORY[0x1E696B098] valueWithCGPoint:{v33, v55}];

        v23 = text2;
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
    v56 = rangeCopy;
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
          text3 = [v45 text];

          if (text3)
          {
            location2 = [v45 location];
            [labelDataSource renderPositionForLabelLocation:location2 rect:0 zoomScale:v16 contentOffset:y constantOffset:width isHorizontal:height optionalOffset:{scale, offset.x, offset.y, constantOffset, *&width, v67}];
            v49 = v48;
            v51 = v50;

            text4 = [v45 text];
            v53 = [MEMORY[0x1E696B098] valueWithCGPoint:{v49, v51}];
            v19[2](v19, text4, v53, self->_maxLabelWidth);
          }
        }

        v42 = [v40 countByEnumeratingWithState:&v61 objects:v65 count:16];
      }

      while (v42);
    }

    v25 = v20;
    rangeCopy = v56;
  }
}

- (CGRect)_labelBackgroundRectWithLabels:(id)labels font:(id)font maxAnnotationWidth:(double)width rect:(CGRect)rect style:(id)style
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  labelsCopy = labels;
  fontCopy = font;
  styleCopy = style;
  fillStyle = [styleCopy fillStyle];
  v19 = [(HKAxis *)self _styleIsHorizontal:styleCopy];
  if (!fillStyle || v19)
  {
    MinX = *MEMORY[0x1E695F058];
    MinY = *(MEMORY[0x1E695F058] + 8);
    width = *(MEMORY[0x1E695F058] + 16);
    v21 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    [(HKAxis *)self _axisFillWidthForStyle:styleCopy labels:labelsCopy font:fontCopy];
    if (v20 > width)
    {
      width = v20;
    }

    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    v21 = CGRectGetHeight(v33);
    location = [styleCopy location];
    v23 = x;
    v24 = y;
    widthCopy = width;
    v26 = height;
    if (location == 3)
    {
      MinX = CGRectGetMinX(*&v23);
    }

    else
    {
      MinX = CGRectGetMaxX(*&v23) - width;
    }

    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = height;
    MinY = CGRectGetMinY(v34);
  }

  v29 = MinX;
  v30 = MinY;
  widthCopy2 = width;
  v32 = v21;
  result.size.height = v32;
  result.size.width = widthCopy2;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (double)_maximumWidthOfAnnotations:(id)annotations axisStyle:(id)style
{
  v24 = *MEMORY[0x1E69E9840];
  annotationsCopy = annotations;
  styleCopy = style;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [annotationsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(annotationsCopy);
        }

        annotationText = [*(*(&v19 + 1) + 8 * i) annotationText];
        [annotationText size];
        v14 = v13;

        if (v10 < v14)
        {
          v10 = v14;
        }
      }

      v8 = [annotationsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
    if (v10 > 0.0)
    {
      [styleCopy fillInnerPadding];
      v16 = v15;
      [styleCopy fillOuterPadding];
      v10 = v10 + v16 + v17;
    }
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (void)_drawTextBackgroundWithRect:(CGRect)rect style:(id)style renderView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  fillStyle = [style fillStyle];
  if (fillStyle)
  {
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    if (!CGRectEqualToRect(v13, *MEMORY[0x1E695F058]))
    {
      [viewCopy fillRect:fillStyle withFillStyle:x axisRect:y alpha:{width, height, x, y, width, height, 0x3FF0000000000000}];
    }
  }
}

- (double)_axisFillWidthForStyle:(id)style labels:(id)labels font:(id)font
{
  styleCopy = style;
  [(HKAxis *)self _maxLabelWidthFromLabels:labels font:font];
  v10 = v9;
  [styleCopy fillInnerPadding];
  v12 = v10 + v11;
  [styleCopy fillOuterPadding];
  v14 = v13;

  return ceil(v12 + v14);
}

- (double)_maxLabelWidthFromLabels:(id)labels font:(id)font
{
  v28 = *MEMORY[0x1E69E9840];
  labelsCopy = labels;
  fontCopy = font;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [labelsCopy countByEnumeratingWithState:&v21 objects:v27 count:16];
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
          objc_enumerationMutation(labelsCopy);
        }

        text = [*(*(&v21 + 1) + 8 * i) text];
        v25 = v11;
        v26 = fontCopy;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        [text sizeWithAttributes:v15];
        v17 = v16;

        if (v12 < v17)
        {
          v12 = v17;
        }
      }

      v9 = [labelsCopy countByEnumeratingWithState:&v21 objects:v27 count:16];
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

- (double)bottomBaselineYCoordinateForModelRange:(id)range axisRect:(CGRect)rect zoomScale:(double)scale
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  rangeCopy = range;
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
  [(HKAxis *)self enumerateTickCoordinatesInModelRange:rangeCopy zoomScale:v14 handler:scale];
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

- (double)topBaselineYCoordinateForModelRange:(id)range axisRect:(CGRect)rect zoomScale:(double)scale
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  rangeCopy = range;
  if ([(HKAxis *)self _containsTopBaselineWithModelRange:rangeCopy zoomScale:scale])
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
    [(HKAxis *)self enumerateTickCoordinatesInModelRange:rangeCopy zoomScale:v13 handler:scale];
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

- (id)_baselineForModelRange:(id)range axisRect:(CGRect)rect zoomScale:(double)scale contentOffset:(CGPoint)offset style:(id)style
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  styleCopy = style;
  rangeCopy = range;
  v16 = objc_opt_new();
  gridLineStyle = [styleCopy gridLineStyle];

  [gridLineStyle lineWidth];
  v19 = v18;

  [v16 setLineWidth:v19];
  [(HKAxis *)self bottomBaselineYCoordinateForModelRange:rangeCopy axisRect:x zoomScale:y, width, height, scale];
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

- (id)_gridLinesForModelRange:(id)range axisRect:(CGRect)rect gridlineRanges:(id)ranges zoomScale:(double)scale contentOffset:(CGPoint)offset style:(id)style gridLineType:(int64_t)type
{
  y = offset.y;
  x = offset.x;
  height = rect.size.height;
  width = rect.size.width;
  v17 = rect.origin.y;
  v18 = rect.origin.x;
  rangeCopy = range;
  rangesCopy = ranges;
  styleCopy = style;
  v23 = [(HKAxis *)self _styleIsHorizontal:styleCopy];
  switch(type)
  {
    case 0:
      referenceGridLineStyle = [styleCopy referenceGridLineStyle];
      goto LABEL_7;
    case 1:
      referenceGridLineStyle = [styleCopy gridLineStyle];
      goto LABEL_7;
    case 2:
      referenceGridLineStyle = [styleCopy minorGridLineStyle];
LABEL_7:
      v25 = referenceGridLineStyle;
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
  typeCopy = type;
  v49 = v23;
  scaleCopy = scale;
  v43 = x;
  v44 = y;
  v45 = v18;
  v46 = v17;
  v47 = width;
  v48 = height;
  v29 = v28;
  v38 = v29;
  v39 = rangesCopy;
  v30 = rangesCopy;
  [(HKAxis *)self enumerateTickCoordinatesInModelRange:rangeCopy zoomScale:v37 handler:scale];
  if (self->_overrideNoTopBaseline && !v23)
  {
    [(HKAxis *)self topBaselineYCoordinateForModelRange:rangeCopy axisRect:v18 zoomScale:v17, width, height, scale];
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

- (void)_addTickMarksForPosition:(unint64_t)position axisRect:(CGRect)rect modelRange:(id)range zoomScale:(double)scale contentOffset:(CGPoint)offset toBezierPath:(id)path style:(id)style
{
  y = offset.y;
  x = offset.x;
  height = rect.size.height;
  width = rect.size.width;
  v16 = rect.origin.y;
  v17 = rect.origin.x;
  remainder = rect;
  rangeCopy = range;
  pathCopy = path;
  styleCopy = style;
  tickStyle = [styleCopy tickStyle];
  axisLineStyle = [styleCopy axisLineStyle];
  v25 = axisLineStyle;
  if (tickStyle && axisLineStyle)
  {
    [tickStyle tickLength];
    v27 = v26;
    tickDirection = [tickStyle tickDirection];
    v36 = [(HKAxis *)self _styleIsHorizontal:styleCopy];
    location = [styleCopy location];
    if ((location - 1) > 2)
    {
      v30 = 1;
    }

    else
    {
      v30 = dword_1C3D5DBB8[location - 1];
    }

    edge = v30;
    tickStyle2 = [styleCopy tickStyle];
    shouldRenderMajorTickMarks = [tickStyle2 shouldRenderMajorTickMarks];

    if (tickDirection == 2)
    {
      if (position == 2)
      {
        tickDirection = 4;
      }

      else
      {
        tickDirection = 3;
      }
    }

    else if (tickDirection == 1)
    {
      if (position == 2)
      {
        tickDirection = 3;
      }

      else
      {
        tickDirection = 4;
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
    v47 = shouldRenderMajorTickMarks;
    v40 = v27;
    v41 = tickDirection;
    v38 = v25;
    v48 = v36;
    scaleCopy = scale;
    v43 = x;
    v44 = y;
    v45 = remainder;
    v46 = slice;
    v39 = pathCopy;
    [(HKAxis *)self enumerateTickCoordinatesInModelRange:rangeCopy zoomScale:v37 handler:scale];
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

- (void)_renderTickMarksForModelRange:(id)range chartRect:(CGRect)rect zoomScale:(double)scale contentOffset:(CGPoint)offset style:(id)style renderView:(id)view
{
  y = offset.y;
  x = offset.x;
  height = rect.size.height;
  width = rect.size.width;
  v15 = rect.origin.y;
  v16 = rect.origin.x;
  rangeCopy = range;
  styleCopy = style;
  viewCopy = view;
  tickPositions = [styleCopy tickPositions];
  if (tickPositions)
  {
    v21 = tickPositions;
    v22 = objc_opt_new();
    if (v21)
    {
      [(HKAxis *)self _addTickMarksForPosition:1 axisRect:rangeCopy modelRange:v22 zoomScale:styleCopy contentOffset:v16 toBezierPath:v15 style:width, height, scale, x, y];
    }

    if ((v21 & 2) != 0)
    {
      [(HKAxis *)self _addTickMarksForPosition:2 axisRect:rangeCopy modelRange:v22 zoomScale:styleCopy contentOffset:v16 toBezierPath:v15 style:width, height, scale, x, y];
    }

    if (([v22 isEmpty] & 1) == 0)
    {
      tickStyle = [styleCopy tickStyle];
      strokeColor = [tickStyle strokeColor];
      LOBYTE(v25) = 0;
      [viewCopy drawPath:v22 strokeColor:strokeColor fillColor:0 markerImage:0 useGradientFill:0 blendMode:0 clipToAxes:v25];
    }
  }
}

- (void)addAxisAnnotation:(id)annotation modelCoordinate:(id)coordinate
{
  coordinateCopy = coordinate;
  annotationCopy = annotation;
  axisAnnotations = [(HKAxis *)self axisAnnotations];

  if (!axisAnnotations)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(HKAxis *)self setAxisAnnotations:v9];
  }

  v11 = [[HKAxisAnnotation alloc] initWithAnnotation:annotationCopy position:coordinateCopy];

  axisAnnotations2 = [(HKAxis *)self axisAnnotations];
  [axisAnnotations2 addObject:v11];
}

- (int64_t)axisAnnotationCount
{
  axisAnnotations = [(HKAxis *)self axisAnnotations];
  v3 = [axisAnnotations count];

  return v3;
}

- (void)clearCache
{
  fillStyle = [(HKAxisStyle *)self->_preferredStyle fillStyle];
  [fillStyle clearCache];
}

+ (HKAxisMinMaxDefinition)expandByPointsLow:(double)low high:(double)high modelRange:(HKAxisMinMaxDefinition)range pointRange:(HKAxisMinMaxDefinition)pointRange
{
  v6 = pointRange.var0 + low;
  v7 = pointRange.var1 - high;
  v8 = vabdd_f64(v7, pointRange.var0);
  if (vabdd_f64(v6, v7) >= 0.00000011920929 && v8 >= 0.00000011920929)
  {
    range.var0 = (range.var0 * (pointRange.var0 - v7) + range.var1 * (v6 - pointRange.var0)) / (v6 - v7);
    range.var1 = range.var0 + (pointRange.var1 - pointRange.var0) * (range.var1 - range.var0) / (v7 - pointRange.var0);
  }

  var0 = range.var0;
  var1 = range.var1;
  result.var1 = var1;
  result.var0 = var0;
  return result;
}

+ (HKAxisMinMaxDefinition)contractByPointsLow:(double)low high:(double)high modelRange:(HKAxisMinMaxDefinition)range pointRange:(HKAxisMinMaxDefinition)pointRange
{
  if (vabdd_f64(pointRange.var1, pointRange.var0) >= 0.00000011920929)
  {
    v6 = pointRange.var1 - high;
    v7 = (range.var1 - range.var0) / (pointRange.var1 - pointRange.var0);
    range.var1 = range.var0 + (v6 - pointRange.var0) * v7;
    range.var0 = range.var0 + (pointRange.var0 + low - pointRange.var0) * v7;
  }

  var0 = range.var0;
  var1 = range.var1;
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"HKAxis.m" lineNumber:228 description:@"Axis annotations may only be accessed on the main thread"];
}

- (void)setAxisAnnotations:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKAxis.m" lineNumber:240 description:@"Axis annotations may only be set from the main thread"];
}

@end