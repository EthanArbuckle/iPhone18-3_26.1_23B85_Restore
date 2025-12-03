@interface HUElasticSliderValueNormalizer
- ($F24F406B2B787EFB06265DBA3D28CBD5)currentValueRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)normalizeRange:(id)range;
- (HUElasticSliderValueNormalizer)initWithCurrentValueRange:(id)range hasSecondaryValue:(BOOL)value;
- (double)_rubberBandValue:(double)value ofType:(unint64_t)type;
- (double)normalizeValue:(double)value ofType:(unint64_t)type;
- (id)_effectiveConstraintsForValueOfType:(unint64_t)type boundRange:(BOOL)range;
- (id)_originalConstraintsForValueType:(unint64_t)type;
@end

@implementation HUElasticSliderValueNormalizer

- (HUElasticSliderValueNormalizer)initWithCurrentValueRange:(id)range hasSecondaryValue:(BOOL)value
{
  var1 = range.var1;
  var0 = range.var0;
  v12.receiver = self;
  v12.super_class = HUElasticSliderValueNormalizer;
  v7 = [(HUElasticSliderValueNormalizer *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_currentValueRange.minimum = var0;
    v7->_currentValueRange.maximum = var1;
    v7->_hasSecondaryValue = value;
    v9 = objc_alloc_init(HUElasticSliderValueNormalizationOptions);
    options = v8->_options;
    v8->_options = v9;
  }

  return v8;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)normalizeRange:(id)range
{
  var1 = range.var1;
  [(HUElasticSliderValueNormalizer *)self normalizeValue:1 ofType:range.var0];
  v6 = v5;
  [(HUElasticSliderValueNormalizer *)self normalizeValue:2 ofType:var1];
  v8 = v7;
  v9 = v6;
  result.var1 = v8;
  result.var0 = v9;
  return result;
}

- (double)normalizeValue:(double)value ofType:(unint64_t)type
{
  options = [(HUElasticSliderValueNormalizer *)self options];
  boundingStrategy = [options boundingStrategy];

  if (boundingStrategy == 2)
  {
    [(HUElasticSliderValueNormalizer *)self _rubberBandValue:type ofType:value];
    value = v9;
  }

  options2 = [(HUElasticSliderValueNormalizer *)self options];
  v11 = [options2 boundingStrategy] == 1;

  v12 = [(HUElasticSliderValueNormalizer *)self _effectiveConstraintsForValueOfType:type boundRange:v11];
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:value];
  v14 = [v12 normalizedValueForValue:v13];
  [v14 doubleValue];
  v16 = v15;

  return v16;
}

- (double)_rubberBandValue:(double)value ofType:(unint64_t)type
{
  if (![(HUElasticSliderValueNormalizer *)self hasSecondaryValue])
  {
    goto LABEL_5;
  }

  if (type == 1)
  {
    v7 = 0.0625;
    v8 = 0.02;
    goto LABEL_6;
  }

  if (type == 2)
  {
    v7 = 0.02;
    v8 = 0.0625;
  }

  else
  {
LABEL_5:
    v8 = 0.0625;
    v7 = 0.0625;
  }

LABEL_6:
  v9 = [(HUElasticSliderValueNormalizer *)self _effectiveConstraintsForValueOfType:type boundRange:1];
  minValue = [v9 minValue];
  [minValue doubleValue];
  v12 = v11;
  maxValue = [v9 maxValue];
  [maxValue doubleValue];
  v15 = v14;

  v16 = HURubberBandedValue(value, v12, v15, v12 - v7, v8 + v15);
  return v16;
}

- (id)_effectiveConstraintsForValueOfType:(unint64_t)type boundRange:(BOOL)range
{
  rangeCopy = range;
  v7 = [(HUElasticSliderValueNormalizer *)self _originalConstraintsForValueType:?];
  if (rangeCopy)
  {
    [(HUElasticSliderValueNormalizer *)self currentValueRange];
    v9 = v8;
    v11 = v10;
    if ([(HUElasticSliderValueNormalizer *)self hasSecondaryValue])
    {
      options = [(HUElasticSliderValueNormalizer *)self options];
      applyMinimumVisualRangeSpan = [options applyMinimumVisualRangeSpan];

      if (applyMinimumVisualRangeSpan)
      {
        v14 = v9 + (v11 - v9) * 0.5;
        v9 = v14 + 0.04;
        v11 = v14 + -0.04;
      }
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __81__HUElasticSliderValueNormalizer__effectiveConstraintsForValueOfType_boundRange___block_invoke;
    v23[3] = &__block_descriptor_56_e20___HFNumberRange_8__0l;
    v23[4] = type;
    *&v23[5] = v9;
    *&v23[6] = v11;
    v15 = __81__HUElasticSliderValueNormalizer__effectiveConstraintsForValueOfType_boundRange___block_invoke(v23);
    validRange = [v7 validRange];

    if (validRange)
    {
      validRange2 = [v7 validRange];
      v18 = [v15 intersectRange:validRange2];

      v15 = v18;
    }
  }

  else
  {
    v15 = 0;
  }

  options2 = [(HUElasticSliderValueNormalizer *)self options];
  if ([options2 applyStepValue])
  {
    stepValue = [v7 stepValue];
  }

  else
  {
    stepValue = 0;
  }

  v21 = [objc_alloc(MEMORY[0x277D148E0]) initWithValidRange:v15 stepValue:stepValue];

  return v21;
}

id __81__HUElasticSliderValueNormalizer__effectiveConstraintsForValueOfType_boundRange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (v2 == 2)
    {
      v8 = MEMORY[0x277D148D8];
      v4 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
      v7 = &unk_282492198;
      v6 = v8;
      v5 = v4;
    }

    else
    {
      if (v2 != 1)
      {
        goto LABEL_8;
      }

      v3 = MEMORY[0x277D148D8];
      v4 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
      v5 = &unk_282492180;
      v6 = v3;
      v7 = v4;
    }

    v1 = [v6 rangeWithMaxValue:v7 minValue:v5];
  }

  else
  {
    v1 = [MEMORY[0x277D148D8] rangeWithFloatRange:{0.0, 1.0}];
  }

LABEL_8:

  return v1;
}

- (id)_originalConstraintsForValueType:(unint64_t)type
{
  if (type == 2)
  {
    maxValueConstraints = [(HUElasticSliderValueNormalizer *)self maxValueConstraints];
  }

  else if (type == 1)
  {
    maxValueConstraints = [(HUElasticSliderValueNormalizer *)self minValueConstraints];
  }

  else
  {
    maxValueConstraints = 0;
  }

  return maxValueConstraints;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)currentValueRange
{
  minimum = self->_currentValueRange.minimum;
  maximum = self->_currentValueRange.maximum;
  result.var1 = maximum;
  result.var0 = minimum;
  return result;
}

@end