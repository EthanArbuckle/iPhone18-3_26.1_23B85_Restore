@interface HFValueTransformer
@end

@implementation HFValueTransformer

id __88__HFValueTransformer_HUAdditions__transformerForRingSliderViewProfile_rangeControlItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 primaryValueConstraints];
  v6 = [v5 validRange];

  v7 = [v4 targetValue];

  v8 = [v6 mapValue:v7 fromRange:*(a1 + 40)];

  return v8;
}

id __88__HFValueTransformer_HUAdditions__transformerForRingSliderViewProfile_rangeControlItem___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 primaryValueConstraints];
  v6 = [v5 validRange];
  v7 = [v2 mapValue:v4 fromRange:v6];

  v8 = [MEMORY[0x277D149A8] targetValueWithValue:v7];

  return v8;
}

id __88__HFValueTransformer_HUAdditions__transformerForRingSliderViewProfile_rangeControlItem___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 maximumValue];
  v5 = [v3 minimumValue];

  v6 = [*(a1 + 32) mapValue:v4 fromRange:*(a1 + 40)];
  v7 = [*(a1 + 48) mapValue:v5 fromRange:*(a1 + 56)];
  v8 = [MEMORY[0x277D148D8] rangeWithMaxValue:v6 minValue:v7];

  return v8;
}

id __88__HFValueTransformer_HUAdditions__transformerForRingSliderViewProfile_rangeControlItem___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 minValue];
  [v4 floatValue];
  v6 = v5;
  v7 = [v3 maxValue];
  [v7 floatValue];
  if (v6 >= v8)
  {
    [v3 maxValue];
  }

  else
  {
    [v3 minValue];
  }
  v9 = ;

  v10 = [v3 minValue];
  [v10 floatValue];
  v12 = v11;
  v13 = [v3 maxValue];
  [v13 floatValue];
  if (v12 > v14)
  {
    [v3 minValue];
  }

  else
  {
    [v3 maxValue];
  }
  v15 = ;

  v16 = [*(a1 + 32) mapValue:v9 fromRange:*(a1 + 40)];
  v17 = [*(a1 + 48) mapValue:v15 fromRange:*(a1 + 56)];
  v18 = [MEMORY[0x277D149A8] thresholdValueWithMinimumValue:v16 maximumValue:v17];

  return v18;
}

@end