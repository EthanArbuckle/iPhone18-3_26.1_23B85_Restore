@interface CAMExposureSlider
+ (double)maximumValue;
+ (double)minimumValue;
+ (id)decimalFormatter;
+ (id)exposureValues;
- (CAMExposureSlider)initWithTickMarkStyle:(unint64_t)style;
- (double)exposureValue;
- (double)horizontalValueLabelOffset;
- (id)valueText;
- (unint64_t)_indexOfClosestValidValueForExposureValue:(double)value;
- (void)setExposureValueClosestTo:(double)to animated:(BOOL)animated;
- (void)updateValueLabel;
@end

@implementation CAMExposureSlider

+ (id)exposureValues
{
  if (exposureValues_onceToken != -1)
  {
    +[CAMExposureSlider exposureValues];
  }

  v3 = exposureValues_exposureValues;

  return v3;
}

void __35__CAMExposureSlider_exposureValues__block_invoke()
{
  v2 = [CAMPreferencesUtilities doubleArrayForKey:@"CAMFeatureDevelopmentExposureSliderValues" applicationID:@"com.apple.camera"];
  if ([v2 count])
  {
    v0 = v2;
  }

  else
  {
    v0 = &unk_1F16C9CB0;
  }

  v1 = exposureValues_exposureValues;
  exposureValues_exposureValues = v0;
}

+ (double)minimumValue
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__CAMExposureSlider_minimumValue__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (minimumValue_onceToken != -1)
  {
    dispatch_once(&minimumValue_onceToken, block);
  }

  return *&minimumValue_minimumValue;
}

void __33__CAMExposureSlider_minimumValue__block_invoke(uint64_t a1)
{
  minimumValue_minimumValue = 0x47EFFFFFE0000000;
  v1 = [*(a1 + 32) exposureValues];
  [v1 enumerateObjectsUsingBlock:&__block_literal_global_31];
}

uint64_t __33__CAMExposureSlider_minimumValue__block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 doubleValue];
  if (v3 < *&minimumValue_minimumValue)
  {
    minimumValue_minimumValue = *&v3;
  }

  return result;
}

+ (double)maximumValue
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__CAMExposureSlider_maximumValue__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (maximumValue_onceToken != -1)
  {
    dispatch_once(&maximumValue_onceToken, block);
  }

  return *&maximumValue_maximumValue;
}

void __33__CAMExposureSlider_maximumValue__block_invoke(uint64_t a1)
{
  maximumValue_maximumValue = 0xC7EFFFFFE0000000;
  v1 = [*(a1 + 32) exposureValues];
  [v1 enumerateObjectsUsingBlock:&__block_literal_global_33];
}

uint64_t __33__CAMExposureSlider_maximumValue__block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 doubleValue];
  if (v3 > *&maximumValue_maximumValue)
  {
    maximumValue_maximumValue = *&v3;
  }

  return result;
}

+ (id)decimalFormatter
{
  if (decimalFormatter_onceToken_0 != -1)
  {
    +[CAMExposureSlider decimalFormatter];
  }

  v3 = decimalFormatter_decimalFormatter;

  return v3;
}

void __37__CAMExposureSlider_decimalFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = decimalFormatter_decimalFormatter;
  decimalFormatter_decimalFormatter = v0;

  [decimalFormatter_decimalFormatter setPositiveFormat:@"0.0"];
  [decimalFormatter_decimalFormatter setNegativeFormat:@"0.0"];
  v2 = [decimalFormatter_decimalFormatter stringFromNumber:&unk_1F16C86A8];
  [decimalFormatter_decimalFormatter setZeroSymbol:v2];

  v3 = [decimalFormatter_decimalFormatter plusSign];
  [decimalFormatter_decimalFormatter setPositivePrefix:v3];

  v4 = [decimalFormatter_decimalFormatter minusSign];
  [decimalFormatter_decimalFormatter setNegativePrefix:v4];
}

- (CAMExposureSlider)initWithTickMarkStyle:(unint64_t)style
{
  v10.receiver = self;
  v10.super_class = CAMExposureSlider;
  v3 = [(CEKDiscreteSlider *)&v10 initWithTickMarkStyle:style];
  v4 = v3;
  if (v3)
  {
    [(CEKDiscreteSlider *)v3 setColorHighlight:2];
    exposureValues = [objc_opt_class() exposureValues];
    -[CEKDiscreteSlider setIndexCount:](v4, "setIndexCount:", [exposureValues count]);

    v6 = CAMLocalizedFrameworkString(@"EXPOSURE_SLIDER_TITLE", 0);
    [(CEKDiscreteSlider *)v4 setTitleText:v6];

    tickMarksConfiguration = [(CEKDiscreteSlider *)v4 tickMarksConfiguration];
    [tickMarksConfiguration setMainTickMarkInterval:3];

    tickMarksConfiguration2 = [(CEKDiscreteSlider *)v4 tickMarksConfiguration];
    [tickMarksConfiguration2 setTickMarkSpacing:20.0];

    [(CEKDiscreteSlider *)v4 setTickMarkCountBetweenIndexes:0];
  }

  return v4;
}

- (void)setExposureValueClosestTo:(double)to animated:(BOOL)animated
{
  v6 = [(CAMExposureSlider *)self _indexOfClosestValidValueForExposureValue:to];
  if (animated)
  {
    v7 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    [(CEKDiscreteSlider *)self setSelectedIndex:v6 animatedDuration:v7 animatedCurve:0 completion:0.25];
  }

  else
  {

    [(CEKDiscreteSlider *)self setSelectedIndex:v6];
  }
}

- (double)exposureValue
{
  exposureValues = [objc_opt_class() exposureValues];
  v4 = [exposureValues objectAtIndex:{-[CEKDiscreteSlider selectedIndex](self, "selectedIndex")}];
  [v4 floatValue];
  v6 = v5;

  return v6;
}

- (double)horizontalValueLabelOffset
{
  [(CAMExposureSlider *)self exposureValue];
  v3 = -3.0;
  v5 = v4 < 0.0;
  if (v4 > 0.0)
  {
    return v3 - CAMPixelWidthForView(self);
  }

  result = 1.0;
  v3 = -2.0;
  if (v5)
  {
    return v3 - CAMPixelWidthForView(self);
  }

  return result;
}

- (id)valueText
{
  decimalFormatter = [objc_opt_class() decimalFormatter];
  v4 = MEMORY[0x1E696AD98];
  [(CAMExposureSlider *)self exposureValue];
  v5 = [v4 numberWithDouble:?];
  v6 = [decimalFormatter stringFromNumber:v5];

  return v6;
}

- (void)updateValueLabel
{
  v6.receiver = self;
  v6.super_class = CAMExposureSlider;
  [(CEKDiscreteSlider *)&v6 updateValueLabel];
  [(CAMExposureSlider *)self horizontalValueLabelOffset];
  v4 = v3;
  [(CAMExposureSlider *)self _previousHorizontalLabelOffset];
  if (v4 != v5)
  {
    [(CAMExposureSlider *)self setNeedsLayout];
    [(CAMExposureSlider *)self set_previousHorizontalLabelOffset:v4];
  }
}

- (unint64_t)_indexOfClosestValidValueForExposureValue:(double)value
{
  exposureValues = [objc_opt_class() exposureValues];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0x7FEFFFFFFFFFFFFFLL;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__CAMExposureSlider__indexOfClosestValidValueForExposureValue___block_invoke;
  v7[3] = &unk_1E76FE038;
  *&v7[6] = value;
  v7[4] = v8;
  v7[5] = &v9;
  [exposureValues enumerateObjectsUsingBlock:v7];
  v5 = v10[3];
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v9, 8);

  return v5;
}

uint64_t __63__CAMExposureSlider__indexOfClosestValidValueForExposureValue___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 doubleValue];
  v9 = vabdd_f64(v8, *(a1 + 48));
  v10 = *(*(a1 + 32) + 8);
  if (v9 >= *(v10 + 24))
  {
    *a4 = 1;
  }

  else
  {
    *(v10 + 24) = v9;
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }

  return result;
}

@end