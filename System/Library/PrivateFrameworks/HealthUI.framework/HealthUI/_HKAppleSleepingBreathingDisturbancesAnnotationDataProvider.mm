@interface _HKAppleSleepingBreathingDisturbancesAnnotationDataProvider
- (_HKAppleSleepingBreathingDisturbancesAnnotationDataProvider)initWithBreathingDisturbancesValue:(id)value date:(id)date;
- (id)attributedStringWithDisplayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont dateCache:(id)cache;
@end

@implementation _HKAppleSleepingBreathingDisturbancesAnnotationDataProvider

- (_HKAppleSleepingBreathingDisturbancesAnnotationDataProvider)initWithBreathingDisturbancesValue:(id)value date:(id)date
{
  valueCopy = value;
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = _HKAppleSleepingBreathingDisturbancesAnnotationDataProvider;
  v9 = [(_HKAppleSleepingBreathingDisturbancesAnnotationDataProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_breathingDisturbancesValue, value);
    objc_storeStrong(&v10->_date, date);
  }

  return v10;
}

- (id)attributedStringWithDisplayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont dateCache:(id)cache
{
  v44[2] = *MEMORY[0x1E69E9840];
  v11 = MEMORY[0x1E696AD98];
  unitFontCopy = unitFont;
  fontCopy = font;
  controllerCopy = controller;
  typeCopy = type;
  breathingDisturbancesValue = [(_HKAppleSleepingBreathingDisturbancesAnnotationDataProvider *)self breathingDisturbancesValue];
  countUnit = [MEMORY[0x1E696C510] countUnit];
  [breathingDisturbancesValue doubleValueForUnit:countUnit];
  v16 = [v11 numberWithDouble:?];

  v36 = HKFormattedStringFromValue(v16, typeCopy, controllerCopy, 0, 0);
  v17 = objc_alloc(MEMORY[0x1E696AAB0]);
  v18 = *MEMORY[0x1E69DB648];
  v44[0] = fontCopy;
  v19 = *MEMORY[0x1E69DB650];
  v43[0] = v18;
  v43[1] = v19;
  hk_chartLollipopValueColor = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  v44[1] = hk_chartLollipopValueColor;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];
  v22 = [v17 initWithString:v36 attributes:v21];

  v23 = objc_alloc(MEMORY[0x1E696AAB0]);
  v41 = v18;
  v42 = unitFontCopy;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  v25 = [v23 initWithString:@" " attributes:v24];

  v26 = v16;
  v27 = [controllerCopy localizedDisplayNameForDisplayType:typeCopy value:v16];

  v28 = objc_alloc(MEMORY[0x1E696AAB0]);
  v39[1] = v19;
  v40[0] = unitFontCopy;
  v39[0] = v18;
  hk_chartLollipopLabelColor = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
  v40[1] = hk_chartLollipopLabelColor;
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