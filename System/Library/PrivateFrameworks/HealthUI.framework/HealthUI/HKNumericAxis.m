@interface HKNumericAxis
+ (double)_adjustRangeDownWithStartValue:(double)a3 endValue:(double)a4 factor:(double)a5;
+ (double)_adjustRangeUpWithStartValue:(double)a3 endValue:(double)a4 factor:(double)a5;
+ (id)preferredAxisStyle;
+ (id)standardNumericYAxisWithConfigurationOverrides:(id)a3;
+ (id)ticksAndLabelsForRangeInModelCoordinates:(id)a3 maximumLabelCount:(int64_t)a4 endingOptions:(int64_t)a5 dimension:(id)a6;
- (HKNumericAxis)initWithConfiguration:(id)a3;
- (id)adjustValueRangeForLabels:(id)a3;
- (id)adjustedRangeForFittedRange:(id)a3 chartRange:(HKRange)a4;
- (id)findAxisLabelsInModelRange:(id)a3 zoomScale:(double)a4;
@end

@implementation HKNumericAxis

- (HKNumericAxis)initWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 zoomScaleEngine];

  if (!v5)
  {
    v6 = objc_alloc_init(HKScalarZoomScale);
    [v4 setZoomScaleEngine:v6];
  }

  v14.receiver = self;
  v14.super_class = HKNumericAxis;
  v7 = [(HKAxis *)&v14 initWithConfiguration:v4];
  if (v7)
  {
    v8 = [v4 labelDimension];
    v9 = v8;
    if (!v8)
    {
      v9 = objc_alloc_init(HKAxisLabelDimensionScalar);
    }

    objc_storeStrong(&v7->_labelDimension, v9);
    if (!v8)
    {
    }

    [v4 topVerticalLabelPadding];
    v7->_topVerticalLabelPadding = v10;
    [v4 bottomVerticalLabelPadding];
    v7->_bottomVerticalLabelPadding = v11;
    [v4 bottomLegendViewPadding];
    v7->_bottomLegendViewPadding = v12;
  }

  return v7;
}

- (id)adjustedRangeForFittedRange:(id)a3 chartRange:(HKRange)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v7 = a3;
  v8 = [v7 minValue];
  [v8 doubleValue];
  v10 = v9;
  v11 = [v7 maxValue];

  [v11 doubleValue];
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

- (id)findAxisLabelsInModelRange:(id)a3 zoomScale:(double)a4
{
  v5 = a3;
  v6 = [HKNumericAxis ticksAndLabelsForRangeInModelCoordinates:v5 maximumLabelCount:[(HKAxis *)self maxLabels] endingOptions:[(HKAxis *)self axisLabelEndings] dimension:self->_labelDimension];

  return v6;
}

- (id)adjustValueRangeForLabels:(id)a3
{
  v4 = a3;
  v5 = [HKNumericAxis ticksAndLabelsForRangeInModelCoordinates:v4 maximumLabelCount:[(HKAxis *)self maxLabels] endingOptions:0 dimension:self->_labelDimension];
  v6 = v5;
  if (v5 && [v5 count] >= 2)
  {
    v7 = [v6 firstObject];
    v8 = [v6 lastObject];
    v9 = [v7 location];
    v10 = [v8 location];
    v11 = [HKValueRange valueRangeWithMinValue:v9 maxValue:v10];
  }

  else
  {
    v11 = v4;
  }

  return v11;
}

+ (id)ticksAndLabelsForRangeInModelCoordinates:(id)a3 maximumLabelCount:(int64_t)a4 endingOptions:(int64_t)a5 dimension:(id)a6
{
  v7 = a5;
  v9 = a3;
  v10 = a6;
  v11 = [v9 minValue];
  [v11 doubleValue];
  v13 = v12;
  v14 = v12;

  v15 = [v9 maxValue];
  [v15 doubleValue];
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
    if (a4 >= 1 && ((v24 | v22) & 1) == 0)
    {
      [v10 niceStepSizeLargerThan:(v17 - v13) / (a4 + 1)];
      v26 = v25;
      v27 = [v10 endingLabelsFactorOverride];

      v28 = v26;
      if (v27)
      {
        v29 = [v10 endingLabelsFactorOverride];
        [v29 floatValue];
        v28 = v30;
      }

      if (v26 <= 0.0)
      {
        goto LABEL_46;
      }

      v31 = 0.0;
      while (1)
      {
        if (v7)
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

        if ((v7 & 2) != 0)
        {
          [HKNumericAxis _roundDownByMultiple:v17 factor:v28];
          v37 = v38;
          if (v27)
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
          if (v27)
          {
            [HKNumericAxis _adjustRangeUpWithStartValue:v33 endValue:v35 factor:v26];
            v36 = v35;
          }

          v37 = v35;
        }

        v40 = rint((v36 - v70) / v26);
        if (a4 == 2 && v40 >= 2)
        {
          v41 = v33;
          v43 = v37 - v33;
          goto LABEL_37;
        }

        v41 = v33;
        if (v40 < a4)
        {
          break;
        }

        [v10 niceStepSizeLargerThan:{v26, v37}];
        v26 = v42;
        v43 = 0.0;
        if (v42 > 0.0)
        {
          if (!v27)
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
        [v10 ticksPerStepSize:v26];
        if (v44 <= 0.0)
        {
          v45 = v26;
        }

        else
        {
          v45 = v26 / v44;
        }

        if (v27)
        {
          v46 = v28;
        }

        else
        {
          v46 = v45;
        }

        if (v7)
        {
          [HKNumericAxis _roundUpByMultiple:v70 factor:v46];
          v47 = v48;
        }

        else
        {
          v47 = v70;
        }

        v68 = v9;
        if ((v7 & 2) != 0)
        {
          [HKNumericAxis _roundDownByMultiple:v36 factor:v46];
          v36 = v49;
        }

        v71 = [v10 formatterForLabelStepSize:v26];
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
              v59 = [v57 location];
              [v10 stringForLocation:v59 formatterForStepSize:v71];
              v60 = v19;
              v61 = v54;
              v62 = v53;
              v63 = v10;
              v64 = v56;
              v66 = v65 = v55;
              [v57 setText:v66];

              v55 = v65;
              v56 = v64;
              v10 = v63;
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

        v9 = v68;
      }
    }
  }

  return v19;
}

+ (double)_adjustRangeDownWithStartValue:(double)a3 endValue:(double)a4 factor:(double)a5
{
  v7 = fmod(a4 - a3, a5);
  result = a4 - (a5 - v7);
  if (v7 <= 0)
  {
    return a4;
  }

  return result;
}

+ (double)_adjustRangeUpWithStartValue:(double)a3 endValue:(double)a4 factor:(double)a5
{
  v7 = fmod(a4 - a3, a5);
  result = a5 - v7 + a4;
  if (v7 <= 0)
  {
    return a4;
  }

  return result;
}

+ (id)preferredAxisStyle
{
  v2 = objc_alloc_init(HKSolidFillStyle);
  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(HKSolidFillStyle *)v2 setColor:v3];

  v4 = objc_alloc_init(HKAxisStyle);
  v5 = [MEMORY[0x1E69DC888] hk_chartAxisLabelColor];
  v6 = [MEMORY[0x1E69DB878] hk_chartAxisLabelFont];
  v7 = [HKAxisLabelStyle labelStyleWithColor:v5 font:v6 horizontalAlignment:2 verticalAlignment:2 hyphenationFactor:&unk_1F4384970];
  [(HKAxisStyle *)v4 setLabelStyle:v7];

  [(HKAxisStyle *)v4 setTickPositions:1];
  v8 = [MEMORY[0x1E69DC888] hk_chartGrayGraphColor];
  v9 = [HKStrokeStyle strokeStyleWithColor:v8 lineWidth:2.0];
  [(HKAxisStyle *)v4 setAxisLineStyle:v9];

  [(HKAxisStyle *)v4 setFillStyle:v2];
  v10 = [MEMORY[0x1E69DC888] hk_chartGrayGraphColor];
  v11 = [HKStrokeStyle strokeStyleWithColor:v10 lineWidth:HKUIOnePixel()];

  [(HKAxisStyle *)v4 setBorderStyleForFill:v11];
  [(HKAxisStyle *)v4 setFillInnerPadding:4.0];
  [(HKAxisStyle *)v4 setFillOuterPadding:6.0];
  [(HKAxisStyle *)v4 setLocation:1];
  [(HKAxisStyle *)v4 setShowGridLines:1];
  v12 = [MEMORY[0x1E69DC888] hk_chartGrayGraphColor];
  v13 = [v12 colorWithAlphaComponent:0.5];
  v14 = [HKStrokeStyle strokeStyleWithColor:v13 lineWidth:0.5];
  [(HKAxisStyle *)v4 setGridLineStyle:v14];

  return v4;
}

+ (id)standardNumericYAxisWithConfigurationOverrides:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HKNumericAxisConfiguration);
  v6 = [a1 preferredAxisStyle];
  [(HKAxisConfiguration *)v5 setPreferredStyle:v6];

  [(HKNumericAxisConfiguration *)v5 setTopVerticalLabelPadding:4.0];
  [(HKNumericAxisConfiguration *)v5 setBottomVerticalLabelPadding:4.0];
  if (v4)
  {
    [(HKNumericAxisConfiguration *)v5 applyOverridesFromNumericAxisConfiguration:v4];
  }

  v7 = [[HKNumericAxis alloc] initWithConfiguration:v5];

  return v7;
}

@end