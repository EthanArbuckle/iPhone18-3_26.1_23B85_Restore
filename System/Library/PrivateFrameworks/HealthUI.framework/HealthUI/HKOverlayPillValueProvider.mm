@interface HKOverlayPillValueProvider
- (id)_formattedQuantity:(id)a3 displayType:(id)a4;
- (id)_formattedQuantityRange:(id)a3 displayType:(id)a4;
- (id)_quantityRangeFromChartPoints:(id)a3 unit:(id)a4 displayType:(id)a5 unitPreferenceController:(id)a6;
- (id)_unitFromQuantityRange:(id)a3 displayType:(id)a4;
- (id)_valueFromQuantityRange:(id)a3 displayType:(id)a4;
- (id)valueFromChartPoints:(id)a3 unit:(id)a4 displayType:(id)a5 timeScope:(int64_t)a6 unitPreferenceController:(id)a7;
@end

@implementation HKOverlayPillValueProvider

- (id)valueFromChartPoints:(id)a3 unit:(id)a4 displayType:(id)a5 timeScope:(int64_t)a6 unitPreferenceController:(id)a7
{
  v11 = a5;
  v12 = [(HKOverlayPillValueProvider *)self _quantityRangeFromChartPoints:a3 unit:a4 displayType:v11 unitPreferenceController:a7];
  v13 = [(HKOverlayPillValueProvider *)self _valueFromQuantityRange:v12 displayType:v11];
  v14 = [(HKOverlayPillValueProvider *)self _unitFromQuantityRange:v12 displayType:v11];

  v15 = [[HKOverlayPillValue alloc] initWithValueString:v13 unitString:v14];

  return v15;
}

- (id)_valueFromQuantityRange:(id)a3 displayType:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v12 = [v11 localizedStringForKey:@"NO_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    goto LABEL_5;
  }

  v8 = [v6 minimum];
  v9 = [v6 maximum];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    v11 = [v6 maximum];
    v12 = [(HKOverlayPillValueProvider *)self _formattedQuantity:v11 displayType:v7];
LABEL_5:
    v13 = v12;

    goto LABEL_7;
  }

  v13 = [(HKOverlayPillValueProvider *)self _formattedQuantityRange:v6 displayType:v7];
LABEL_7:

  return v13;
}

- (id)_unitFromQuantityRange:(id)a3 displayType:(id)a4
{
  if (a3)
  {
    v5 = a3;
    v6 = [a4 objectType];
    v7 = [v5 unitStringForType:v6];
  }

  else
  {
    v7 = &stru_1F42FFBE0;
  }

  return v7;
}

- (id)_quantityRangeFromChartPoints:(id)a3 unit:(id)a4 displayType:(id)a5 unitPreferenceController:(id)a6
{
  v41 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v9 && [v9 count])
  {
    v33 = v12;
    v34 = v11;
    v35 = v10;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v13 = v9;
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
          v23 = [v20 minYValue];

          v17 = v23;
          if (v16)
          {
LABEL_13:
            v24 = [v20 maxYValue];
            v25 = [v24 compare:v16];

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

        v26 = [v20 maxYValue];

        v16 = v26;
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
          v10 = v35;
          [v16 doubleValue];
          v31 = [v30 quantityWithUnit:v35 doubleValue:?];
          v27 = [objc_alloc(MEMORY[0x1E696C350]) initWithMinimum:v29 maximum:v31 isMinimumInclusive:1 isMaximumInclusive:1];
        }

        else
        {
          v27 = 0;
          v10 = v35;
        }

        v12 = v33;
        v11 = v34;

        goto LABEL_24;
      }
    }
  }

  v27 = 0;
LABEL_24:

  return v27;
}

- (id)_formattedQuantity:(id)a3 displayType:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(HKQuantityFormattingParameters);
  [(HKQuantityFormattingParameters *)v7 setOmitUnit:1];
  v8 = [v5 objectType];

  v9 = [v6 localizedStringForType:v8 parameters:v7];

  return v9;
}

- (id)_formattedQuantityRange:(id)a3 displayType:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(HKQuantityFormattingParameters);
  [(HKQuantityFormattingParameters *)v7 setOmitUnit:1];
  v8 = [v5 objectType];

  v9 = [v6 localizedStringForType:v8 parameters:v7];

  return v9;
}

@end