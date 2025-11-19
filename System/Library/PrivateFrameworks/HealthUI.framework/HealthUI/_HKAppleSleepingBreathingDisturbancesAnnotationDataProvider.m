@interface _HKAppleSleepingBreathingDisturbancesAnnotationDataProvider
- (_HKAppleSleepingBreathingDisturbancesAnnotationDataProvider)initWithBreathingDisturbancesValue:(id)a3 date:(id)a4;
- (id)attributedStringWithDisplayType:(id)a3 unitController:(id)a4 valueFont:(id)a5 unitFont:(id)a6 dateCache:(id)a7;
@end

@implementation _HKAppleSleepingBreathingDisturbancesAnnotationDataProvider

- (_HKAppleSleepingBreathingDisturbancesAnnotationDataProvider)initWithBreathingDisturbancesValue:(id)a3 date:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _HKAppleSleepingBreathingDisturbancesAnnotationDataProvider;
  v9 = [(_HKAppleSleepingBreathingDisturbancesAnnotationDataProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_breathingDisturbancesValue, a3);
    objc_storeStrong(&v10->_date, a4);
  }

  return v10;
}

- (id)attributedStringWithDisplayType:(id)a3 unitController:(id)a4 valueFont:(id)a5 unitFont:(id)a6 dateCache:(id)a7
{
  v44[2] = *MEMORY[0x1E69E9840];
  v11 = MEMORY[0x1E696AD98];
  v35 = a6;
  v37 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(_HKAppleSleepingBreathingDisturbancesAnnotationDataProvider *)self breathingDisturbancesValue];
  v15 = [MEMORY[0x1E696C510] countUnit];
  [v14 doubleValueForUnit:v15];
  v16 = [v11 numberWithDouble:?];

  v36 = HKFormattedStringFromValue(v16, v13, v12, 0, 0);
  v17 = objc_alloc(MEMORY[0x1E696AAB0]);
  v18 = *MEMORY[0x1E69DB648];
  v44[0] = v37;
  v19 = *MEMORY[0x1E69DB650];
  v43[0] = v18;
  v43[1] = v19;
  v20 = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  v44[1] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];
  v22 = [v17 initWithString:v36 attributes:v21];

  v23 = objc_alloc(MEMORY[0x1E696AAB0]);
  v41 = v18;
  v42 = v35;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  v25 = [v23 initWithString:@" " attributes:v24];

  v26 = v16;
  v27 = [v12 localizedDisplayNameForDisplayType:v13 value:v16];

  v28 = objc_alloc(MEMORY[0x1E696AAB0]);
  v39[1] = v19;
  v40[0] = v35;
  v39[0] = v18;
  v29 = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
  v40[1] = v29;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
  v31 = [v28 initWithString:v27 attributes:v30];

  v38[0] = v22;
  v38[1] = v25;
  v38[2] = v31;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:3];

  v33 = HKUIJoinAttributedStringsForLocale(v32);

  return v33;
}

@end