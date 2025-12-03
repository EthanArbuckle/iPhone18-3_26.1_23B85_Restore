@interface HKNumericAxis
+ (double)_adjustRangeDownWithStartValue:(double)value endValue:(double)endValue factor:(double)factor;
+ (double)_adjustRangeUpWithStartValue:(double)value endValue:(double)endValue factor:(double)factor;
+ (id)preferredAxisStyle;
+ (id)standardNumericYAxisWithConfigurationOverrides:(id)overrides;
+ (id)ticksAndLabelsForRangeInModelCoordinates:(id)coordinates maximumLabelCount:(int64_t)count endingOptions:(int64_t)options dimension:(id)dimension;
- (HKNumericAxis)initWithConfiguration:(id)configuration;
- (id)adjustValueRangeForLabels:(id)labels;
- (id)adjustedRangeForFittedRange:(id)range chartRange:(HKRange)chartRange;
- (id)findAxisLabelsInModelRange:(id)range zoomScale:(double)scale;
@end

@implementation HKNumericAxis

- (HKNumericAxis)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  zoomScaleEngine = [configurationCopy zoomScaleEngine];

  if (!zoomScaleEngine)
  {
    v6 = objc_alloc_init(HKScalarZoomScale);
    [configurationCopy setZoomScaleEngine:v6];
  }

  v14.receiver = self;
  v14.super_class = HKNumericAxis;
  v7 = [(HKAxis *)&v14 initWithConfiguration:configurationCopy];
  if (v7)
  {
    labelDimension = [configurationCopy labelDimension];
    v9 = labelDimension;
    if (!labelDimension)
    {
      v9 = objc_alloc_init(HKAxisLabelDimensionScalar);
    }

    objc_storeStrong(&v7->_labelDimension, v9);
    if (!labelDimension)
    {
    }

    [configurationCopy topVerticalLabelPadding];
    v7->_topVerticalLabelPadding = v10;
    [configurationCopy bottomVerticalLabelPadding];
    v7->_bottomVerticalLabelPadding = v11;
    [configurationCopy bottomLegendViewPadding];
    v7->_bottomLegendViewPadding = v12;
  }

  return v7;
}

- (id)adjustedRangeForFittedRange:(id)range chartRange:(HKRange)chartRange
{
  var1 = chartRange.var1;
  var0 = chartRange.var0;
  rangeCopy = range;
  minValue = [rangeCopy minValue];
  [minValue doubleValue];
  v10 = v9;
  maxValue = [rangeCopy maxValue];

  [maxValue doubleValue];
  v13 = v12;

  if (var1 >= 0.0)
  {
    v14 = var0;
  }

  else
  {
    v14 = var0 + var1;
  }

  if (var1 >= 0.0)
  {
    v15 = var0 + var1;
  }

  else
  {
    v15 = var0;
  }

  [HKAxis expandByPointsLow:self->_bottomVerticalLabelPadding high:self->_topVerticalLabelPadding modelRange:v10 pointRange:v13, v14, v15];
  v17 = v16;
  v18 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
  v20 = [HKValueRange valueRangeWithMinValue:v18 maxValue:v19];

  return v20;
}

- (id)findAxisLabelsInModelRange:(id)range zoomScale:(double)scale
{
  rangeCopy = range;
  v6 = [HKNumericAxis ticksAndLabelsForRangeInModelCoordinates:rangeCopy maximumLabelCount:[(HKAxis *)self maxLabels] endingOptions:[(HKAxis *)self axisLabelEndings] dimension:self->_labelDimension];

  return v6;
}

- (id)adjustValueRangeForLabels:(id)labels
{
  labelsCopy = labels;
  v5 = [HKNumericAxis ticksAndLabelsForRangeInModelCoordinates:labelsCopy maximumLabelCount:[(HKAxis *)self maxLabels] endingOptions:0 dimension:self->_labelDimension];
  v6 = v5;
  if (v5 && [v5 count] >= 2)
  {
    firstObject = [v6 firstObject];
    lastObject = [v6 lastObject];
    location = [firstObject location];
    location2 = [lastObject location];
    v11 = [HKValueRange valueRangeWithMinValue:location maxValue:location2];
  }

  else
  {
    v11 = labelsCopy;
  }

  return v11;
}

+ (id)ticksAndLabelsForRangeInModelCoordinates:(id)coordinates maximumLabelCount:(int64_t)count endingOptions:(int64_t)options dimension:(id)dimension
{
  optionsCopy = options;
  coordinatesCopy = coordinates;
  dimensionCopy = dimension;
  minValue = [coordinatesCopy minValue];
  [minValue doubleValue];
  v13 = v12;
  v14 = v12;

  maxValue = [coordinatesCopy maxValue];
  [maxValue doubleValue];
  v17 = v16;
  v18 = v16;

  v19 = 0;
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v18 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v19 = 0;
    v20 = fabs(v17 - v13);
    v21 = (*&v20 - 1) < 0xFFFFFFFFFFFFFLL;
    v22 = (*&v20 - 0x10000000000000) >> 53 < 0x3FF;
    if (COERCE__INT64(v17 - v13) >= 0)
    {
      v22 = 0;
      v21 = 0;
    }

    v23 = fabs(v17 - v13);
    if (v23 == 0.0)
    {
      v21 = 1;
    }

    v24 = v23 == INFINITY || v21;
    if (count >= 1 && ((v24 | v22) & 1) == 0)
    {
      [dimensionCopy niceStepSizeLargerThan:(v17 - v13) / (count + 1)];
      v26 = v25;
      endingLabelsFactorOverride = [dimensionCopy endingLabelsFactorOverride];

      v28 = v26;
      if (endingLabelsFactorOverride)
      {
        endingLabelsFactorOverride2 = [dimensionCopy endingLabelsFactorOverride];
        [endingLabelsFactorOverride2 floatValue];
        v28 = v30;
      }

      if (v26 <= 0.0)
      {
        goto LABEL_46;
      }

      v31 = 0.0;
      while (1)
      {
        if (optionsCopy)
        {
          [HKNumericAxis _roundUpByMultiple:v13 factor:v28];
          v33 = v34;
          v70 = v13;
        }

        else
        {
          [HKNumericAxis _roundDownByMultiple:v13 factor:v28];
          v33 = v32;
          v70 = v32;
        }

        if ((optionsCopy & 2) != 0)
        {
          [HKNumericAxis _roundDownByMultiple:v17 factor:v28];
          v37 = v38;
          if (endingLabelsFactorOverride)
          {
            [HKNumericAxis _adjustRangeDownWithStartValue:v33 endValue:v38 factor:v26];
            v37 = v39;
          }

          v36 = v17;
        }

        else
        {
          [HKNumericAxis _roundUpByMultiple:v17 factor:v28];
          v36 = v35;
          if (endingLabelsFactorOverride)
          {
            [HKNumericAxis _adjustRangeUpWithStartValue:v33 endValue:v35 factor:v26];
            v36 = v35;
          }

          v37 = v35;
        }

        v40 = rint((v36 - v70) / v26);
        if (count == 2 && v40 >= 2)
        {
          v41 = v33;
          v43 = v37 - v33;
          goto LABEL_37;
        }

        v41 = v33;
        if (v40 < count)
        {
          break;
        }

        [dimensionCopy niceStepSizeLargerThan:{v26, v37}];
        v26 = v42;
        v43 = 0.0;
        if (v42 > 0.0)
        {
          if (!endingLabelsFactorOverride)
          {
            v28 = v42;
          }

          v31 = v31 + 1.0;
          if (v31 < 10.0)
          {
            continue;
          }
        }

        goto LABEL_37;
      }

      v43 = v26;
LABEL_37:
      if (v31 >= 10.0)
      {
LABEL_46:
        v19 = 0;
      }

      else
      {
        [dimensionCopy ticksPerStepSize:v26];
        if (v44 <= 0.0)
        {
          v45 = v26;
        }

        else
        {
          v45 = v26 / v44;
        }

        if (endingLabelsFactorOverride)
        {
          v46 = v28;
        }

        else
        {
          v46 = v45;
        }

        if (optionsCopy)
        {
          [HKNumericAxis _roundUpByMultiple:v70 factor:v46];
          v47 = v48;
        }

        else
        {
          v47 = v70;
        }

        v68 = coordinatesCopy;
        if ((optionsCopy & 2) != 0)
        {
          [HKNumericAxis _roundDownByMultiple:v36 factor:v46];
          v36 = v49;
        }

        v71 = [dimensionCopy formatterForLabelStepSize:v26];
        v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v50 = rint((v36 - v47) / v45);
        if ((v50 & 0x8000000000000000) == 0)
        {
          v51 = 0;
          v52 = rint(v43 / v45);
          v53 = rint((v41 - v47) / v45);
          v54 = v50 + 1;
          v55 = 0x1E81B2000uLL;
          v56 = 0x1E696A000uLL;
          v69 = v52;
          do
          {
            v57 = objc_alloc_init(*(v55 + 440));
            v58 = [*(v56 + 3480) numberWithDouble:v47 + v51 * v45];
            [v57 setLocation:v58];

            if (v51 % v52 == v53)
            {
              [v57 setLabelType:1];
              location = [v57 location];
              [dimensionCopy stringForLocation:location formatterForStepSize:v71];
              v60 = v19;
              v61 = v54;
              v62 = v53;
              v63 = dimensionCopy;
              v64 = v56;
              v66 = v65 = v55;
              [v57 setText:v66];

              v55 = v65;
              v56 = v64;
              dimensionCopy = v63;
              v53 = v62;
              v54 = v61;
              v19 = v60;
              v52 = v69;
            }

            else
            {
              [v57 setLabelType:2];
              [v57 setText:0];
            }

            [v19 addObject:v57];

            ++v51;
          }

          while (v54 != v51);
        }

        coordinatesCopy = v68;
      }
    }
  }

  return v19;
}

+ (double)_adjustRangeDownWithStartValue:(double)value endValue:(double)endValue factor:(double)factor
{
  v7 = fmod(endValue - value, factor);
  result = endValue - (factor - v7);
  if (v7 <= 0)
  {
    return endValue;
  }

  return result;
}

+ (double)_adjustRangeUpWithStartValue:(double)value endValue:(double)endValue factor:(double)factor
{
  v7 = fmod(endValue - value, factor);
  result = factor - v7 + endValue;
  if (v7 <= 0)
  {
    return endValue;
  }

  return result;
}

+ (id)preferredAxisStyle
{
  v2 = objc_alloc_init(HKSolidFillStyle);
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(HKSolidFillStyle *)v2 setColor:systemBackgroundColor];

  v4 = objc_alloc_init(HKAxisStyle);
  hk_chartAxisLabelColor = [MEMORY[0x1E69DC888] hk_chartAxisLabelColor];
  hk_chartAxisLabelFont = [MEMORY[0x1E69DB878] hk_chartAxisLabelFont];
  v7 = [HKAxisLabelStyle labelStyleWithColor:hk_chartAxisLabelColor font:hk_chartAxisLabelFont horizontalAlignment:2 verticalAlignment:2 hyphenationFactor:&unk_1F4384970];
  [(HKAxisStyle *)v4 setLabelStyle:v7];

  [(HKAxisStyle *)v4 setTickPositions:1];
  hk_chartGrayGraphColor = [MEMORY[0x1E69DC888] hk_chartGrayGraphColor];
  v9 = [HKStrokeStyle strokeStyleWithColor:hk_chartGrayGraphColor lineWidth:2.0];
  [(HKAxisStyle *)v4 setAxisLineStyle:v9];

  [(HKAxisStyle *)v4 setFillStyle:v2];
  hk_chartGrayGraphColor2 = [MEMORY[0x1E69DC888] hk_chartGrayGraphColor];
  v11 = [HKStrokeStyle strokeStyleWithColor:hk_chartGrayGraphColor2 lineWidth:HKUIOnePixel()];

  [(HKAxisStyle *)v4 setBorderStyleForFill:v11];
  [(HKAxisStyle *)v4 setFillInnerPadding:4.0];
  [(HKAxisStyle *)v4 setFillOuterPadding:6.0];
  [(HKAxisStyle *)v4 setLocation:1];
  [(HKAxisStyle *)v4 setShowGridLines:1];
  hk_chartGrayGraphColor3 = [MEMORY[0x1E69DC888] hk_chartGrayGraphColor];
  v13 = [hk_chartGrayGraphColor3 colorWithAlphaComponent:0.5];
  v14 = [HKStrokeStyle strokeStyleWithColor:v13 lineWidth:0.5];
  [(HKAxisStyle *)v4 setGridLineStyle:v14];

  return v4;
}

+ (id)standardNumericYAxisWithConfigurationOverrides:(id)overrides
{
  overridesCopy = overrides;
  v5 = objc_alloc_init(HKNumericAxisConfiguration);
  preferredAxisStyle = [self preferredAxisStyle];
  [(HKAxisConfiguration *)v5 setPreferredStyle:preferredAxisStyle];

  [(HKNumericAxisConfiguration *)v5 setTopVerticalLabelPadding:4.0];
  [(HKNumericAxisConfiguration *)v5 setBottomVerticalLabelPadding:4.0];
  if (overridesCopy)
  {
    [(HKNumericAxisConfiguration *)v5 applyOverridesFromNumericAxisConfiguration:overridesCopy];
  }

  v7 = [[HKNumericAxis alloc] initWithConfiguration:v5];

  return v7;
}

@end