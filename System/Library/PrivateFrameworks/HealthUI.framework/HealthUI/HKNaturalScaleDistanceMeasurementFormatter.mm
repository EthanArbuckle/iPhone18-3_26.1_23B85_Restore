@interface HKNaturalScaleDistanceMeasurementFormatter
- (id)stringFromNumber:(id)a3 displayType:(id)a4 unitController:(id)a5;
- (int64_t)_precisionWithDisplayType:(id)a3 unit:(id)a4 andNumber:(double)a5;
- (void)adjustedFormatInformationForUnit:(id)a3 number:(id)a4 displayType:(id)a5 handler:(id)a6;
@end

@implementation HKNaturalScaleDistanceMeasurementFormatter

- (void)adjustedFormatInformationForUnit:(id)a3 number:(id)a4 displayType:(id)a5 handler:(id)a6
{
  v46[3] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = v10;
  [a4 doubleValue];
  v15 = v14;
  v16 = (1.0 / __exp10f([(HKNaturalScaleDistanceMeasurementFormatter *)self _precisionWithDisplayType:v11 unit:v13 andNumber:?]));
  if (v15 <= 100.0 && v15 >= v16)
  {
    v17 = v13;
    goto LABEL_33;
  }

  v18 = [MEMORY[0x1E695DF70] array];
  if ([v13 _isMetricDistance])
  {
    v19 = [MEMORY[0x1E696C510] meterUnitWithMetricPrefix:9];
    v46[0] = v19;
    v20 = [MEMORY[0x1E696C510] meterUnit];
    v46[1] = v20;
    v21 = [MEMORY[0x1E696C510] meterUnitWithMetricPrefix:5];
    v46[2] = v21;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:3];
  }

  else
  {
    v19 = [MEMORY[0x1E696C510] mileUnit];
    v45[0] = v19;
    v20 = [MEMORY[0x1E696C510] yardUnit];
    v45[1] = v20;
    v21 = [MEMORY[0x1E696C510] footUnit];
    v45[2] = v21;
    v22 = [MEMORY[0x1E696C510] inchUnit];
    v45[3] = v22;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:4];
  }

  v37 = self;
  v38 = v12;
  if (v15 >= v16)
  {
    [v39 objectEnumerator];
  }

  else
  {
    [v39 reverseObjectEnumerator];
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v23 = v41 = 0u;
  v24 = [v23 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v41;
LABEL_12:
    v27 = 0;
    while (1)
    {
      if (*v41 != v26)
      {
        objc_enumerationMutation(v23);
      }

      v28 = *(*(&v40 + 1) + 8 * v27);
      if ([v28 isEqual:v13])
      {
        break;
      }

      if ([v11 displayTypeIdentifier] == 110 || objc_msgSend(v11, "displayTypeIdentifier") != 110 && (objc_msgSend(MEMORY[0x1E696C510], "yardUnit"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v28, "isEqual:", v29), v29, (v30 & 1) == 0))
      {
        [v18 addObject:v28];
      }

      if (v25 == ++v27)
      {
        v25 = [v23 countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v25)
        {
          goto LABEL_12;
        }

        break;
      }
    }
  }

  if (![v18 count])
  {
    v31 = v15;
    v17 = v13;
    goto LABEL_32;
  }

  v17 = v13;
  v31 = v15;
  while (1)
  {
    v32 = v17;
    v33 = [v18 lastObject];
    [v32 _valueByConvertingValue:v33 toUnit:v31];
    v31 = v34;
    v17 = v33;

    [v18 removeLastObject];
    v35 = [(HKNaturalScaleDistanceMeasurementFormatter *)v37 _precisionWithDisplayType:v11 unit:v17 andNumber:v31];
    if (v15 >= v16)
    {
      break;
    }

    if (v31 >= (1.0 / __exp10f(v35)))
    {
      goto LABEL_31;
    }

LABEL_28:
    v36 = [v18 count];

    if (!v36)
    {
      goto LABEL_32;
    }
  }

  if (v31 > 100.0)
  {
    goto LABEL_28;
  }

LABEL_31:

LABEL_32:
  v15 = v31;
  v12 = v38;
LABEL_33:
  v12[2](v12, v17, v15);
}

- (int64_t)_precisionWithDisplayType:(id)a3 unit:(id)a4 andNumber:(double)a5
{
  v7 = a4;
  v8 = [a3 chartingRules];
  v9 = [v8 allowedDecimalPrecisionRuleForUnit:v7];

  v10 = [v9 decimalPrecisionForValue:a5];
  return v10;
}

- (id)stringFromNumber:(id)a3 displayType:(id)a4 unitController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__10;
  v24 = __Block_byref_object_dispose__10;
  v25 = 0;
  v11 = [v10 unitForDisplayType:v9];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __90__HKNaturalScaleDistanceMeasurementFormatter_stringFromNumber_displayType_unitController___block_invoke;
  v16[3] = &unk_1E81B8908;
  v12 = v9;
  v17 = v12;
  v13 = v10;
  v18 = v13;
  v19 = &v20;
  [(HKNaturalScaleDistanceMeasurementFormatter *)self adjustedFormatInformationForUnit:v11 number:v8 displayType:v12 handler:v16];
  v14 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v14;
}

void __90__HKNaturalScaleDistanceMeasurementFormatter_stringFromNumber_displayType_unitController___block_invoke(uint64_t a1, void *a2, double a3)
{
  v20 = a2;
  v5 = [v20 _foundationUnit];
  if (v5)
  {
    v6 = [*(a1 + 32) chartingRules];
    v7 = [v6 allowedDecimalPrecisionRuleForUnit:v20];

    v8 = [v7 numberFormatter];
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    v10 = [v8 stringFromNumber:v9 displayType:*(a1 + 32) unitController:*(a1 + 40)];

    v11 = *(a1 + 40);
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    v13 = [v11 localizedDisplayNameForUnit:v20 value:v12];

    v14 = MEMORY[0x1E696AEC0];
    v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v16 = [v15 localizedStringForKey:@"VALUE_UNIT_FORMAT %@ %@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v17 = [v14 stringWithFormat:v16, v10, v13];
    v18 = *(*(a1 + 48) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;
  }
}

@end