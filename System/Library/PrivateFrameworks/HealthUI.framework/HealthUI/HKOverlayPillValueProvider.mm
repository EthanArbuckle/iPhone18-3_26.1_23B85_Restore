@interface HKOverlayPillValueProvider
- (id)_formattedQuantity:(id)quantity displayType:(id)type;
- (id)_formattedQuantityRange:(id)range displayType:(id)type;
- (id)_quantityRangeFromChartPoints:(id)points unit:(id)unit displayType:(id)type unitPreferenceController:(id)controller;
- (id)_unitFromQuantityRange:(id)range displayType:(id)type;
- (id)_valueFromQuantityRange:(id)range displayType:(id)type;
- (id)valueFromChartPoints:(id)points unit:(id)unit displayType:(id)type timeScope:(int64_t)scope unitPreferenceController:(id)controller;
@end

@implementation HKOverlayPillValueProvider

- (id)valueFromChartPoints:(id)points unit:(id)unit displayType:(id)type timeScope:(int64_t)scope unitPreferenceController:(id)controller
{
  typeCopy = type;
  v12 = [(HKOverlayPillValueProvider *)self _quantityRangeFromChartPoints:points unit:unit displayType:typeCopy unitPreferenceController:controller];
  v13 = [(HKOverlayPillValueProvider *)self _valueFromQuantityRange:v12 displayType:typeCopy];
  v14 = [(HKOverlayPillValueProvider *)self _unitFromQuantityRange:v12 displayType:typeCopy];

  v15 = [[HKOverlayPillValue alloc] initWithValueString:v13 unitString:v14];

  return v15;
}

- (id)_valueFromQuantityRange:(id)range displayType:(id)type
{
  rangeCopy = range;
  typeCopy = type;
  if (!rangeCopy)
  {
    maximum2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v12 = [maximum2 localizedStringForKey:@"NO_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    goto LABEL_5;
  }

  minimum = [rangeCopy minimum];
  maximum = [rangeCopy maximum];
  v10 = [minimum isEqual:maximum];

  if (v10)
  {
    maximum2 = [rangeCopy maximum];
    v12 = [(HKOverlayPillValueProvider *)self _formattedQuantity:maximum2 displayType:typeCopy];
LABEL_5:
    v13 = v12;

    goto LABEL_7;
  }

  v13 = [(HKOverlayPillValueProvider *)self _formattedQuantityRange:rangeCopy displayType:typeCopy];
LABEL_7:

  return v13;
}

- (id)_unitFromQuantityRange:(id)range displayType:(id)type
{
  if (range)
  {
    rangeCopy = range;
    objectType = [type objectType];
    v7 = [rangeCopy unitStringForType:objectType];
  }

  else
  {
    v7 = &stru_1F42FFBE0;
  }

  return v7;
}

- (id)_quantityRangeFromChartPoints:(id)points unit:(id)unit displayType:(id)type unitPreferenceController:(id)controller
{
  v41 = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  unitCopy = unit;
  typeCopy = type;
  controllerCopy = controller;
  if (pointsCopy && [pointsCopy count])
  {
    v33 = controllerCopy;
    v34 = typeCopy;
    v35 = unitCopy;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v13 = pointsCopy;
    v14 = [v13 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (!v14)
    {
      v16 = 0;
      v17 = 0;
      goto LABEL_20;
    }

    v15 = v14;
    v16 = 0;
    v17 = 0;
    v18 = *v37;
    while (1)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v37 != v18)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(*(&v36 + 1) + 8 * i);
        if (!v17 || ([*(*(&v36 + 1) + 8 * i) minYValue], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "compare:", v17), v21, v22 == -1))
        {
          minYValue = [v20 minYValue];

          v17 = minYValue;
          if (v16)
          {
LABEL_13:
            maxYValue = [v20 maxYValue];
            v25 = [maxYValue compare:v16];

            if (v25 != 1)
            {
              continue;
            }
          }
        }

        else if (v16)
        {
          goto LABEL_13;
        }

        maxYValue2 = [v20 maxYValue];

        v16 = maxYValue2;
      }

      v15 = [v13 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (!v15)
      {
LABEL_20:

        if (v17 | v16)
        {
          v28 = MEMORY[0x1E696C348];
          [v17 doubleValue];
          v29 = [v28 quantityWithUnit:v35 doubleValue:?];
          v30 = MEMORY[0x1E696C348];
          unitCopy = v35;
          [v16 doubleValue];
          v31 = [v30 quantityWithUnit:v35 doubleValue:?];
          v27 = [objc_alloc(MEMORY[0x1E696C350]) initWithMinimum:v29 maximum:v31 isMinimumInclusive:1 isMaximumInclusive:1];
        }

        else
        {
          v27 = 0;
          unitCopy = v35;
        }

        controllerCopy = v33;
        typeCopy = v34;

        goto LABEL_24;
      }
    }
  }

  v27 = 0;
LABEL_24:

  return v27;
}

- (id)_formattedQuantity:(id)quantity displayType:(id)type
{
  typeCopy = type;
  quantityCopy = quantity;
  v7 = objc_alloc_init(HKQuantityFormattingParameters);
  [(HKQuantityFormattingParameters *)v7 setOmitUnit:1];
  objectType = [typeCopy objectType];

  v9 = [quantityCopy localizedStringForType:objectType parameters:v7];

  return v9;
}

- (id)_formattedQuantityRange:(id)range displayType:(id)type
{
  typeCopy = type;
  rangeCopy = range;
  v7 = objc_alloc_init(HKQuantityFormattingParameters);
  [(HKQuantityFormattingParameters *)v7 setOmitUnit:1];
  objectType = [typeCopy objectType];

  v9 = [rangeCopy localizedStringForType:objectType parameters:v7];

  return v9;
}

@end