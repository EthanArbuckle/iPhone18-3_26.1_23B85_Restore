@interface HKBloodPressureDataProviderCurrentValue
- (HKBloodPressureDataProviderCurrentValue)initWithCorrelation:(id)correlation;
- (HKBloodPressureDataProviderCurrentValue)initWithSystolicValue:(id)value diastolicValue:(id)diastolicValue date:(id)date;
- (id)_quantityForType:(id)type correlation:(id)correlation;
- (id)attributedStringWithDisplayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont dateCache:(id)cache;
- (id)lastUpdatedDescriptionWithDateCache:(id)cache;
@end

@implementation HKBloodPressureDataProviderCurrentValue

- (HKBloodPressureDataProviderCurrentValue)initWithCorrelation:(id)correlation
{
  correlationCopy = correlation;
  v15.receiver = self;
  v15.super_class = HKBloodPressureDataProviderCurrentValue;
  v5 = [(HKBloodPressureDataProviderCurrentValue *)&v15 init];
  if (v5)
  {
    endDate = [correlationCopy endDate];
    date = v5->_date;
    v5->_date = endDate;

    v8 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696BC90]];
    v9 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696BC88]];
    v10 = [(HKBloodPressureDataProviderCurrentValue *)v5 _quantityForType:v8 correlation:correlationCopy];
    systolicValue = v5->_systolicValue;
    v5->_systolicValue = v10;

    v12 = [(HKBloodPressureDataProviderCurrentValue *)v5 _quantityForType:v9 correlation:correlationCopy];
    diastolicValue = v5->_diastolicValue;
    v5->_diastolicValue = v12;
  }

  return v5;
}

- (HKBloodPressureDataProviderCurrentValue)initWithSystolicValue:(id)value diastolicValue:(id)diastolicValue date:(id)date
{
  valueCopy = value;
  diastolicValueCopy = diastolicValue;
  dateCopy = date;
  v15.receiver = self;
  v15.super_class = HKBloodPressureDataProviderCurrentValue;
  v12 = [(HKBloodPressureDataProviderCurrentValue *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_date, date);
    objc_storeStrong(&v13->_systolicValue, value);
    objc_storeStrong(&v13->_diastolicValue, diastolicValue);
  }

  return v13;
}

- (id)_quantityForType:(id)type correlation:(id)correlation
{
  v4 = [correlation objectsForType:type];
  anyObject = [v4 anyObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    quantity = [anyObject quantity];
  }

  else
  {
    quantity = 0;
  }

  return quantity;
}

- (id)attributedStringWithDisplayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont dateCache:(id)cache
{
  v44[3] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  controllerCopy = controller;
  unitFontCopy = unitFont;
  fontCopy = font;
  v13 = [controllerCopy unitForDisplayType:typeCopy];
  v14 = [typeCopy hk_numberFormatterForUnit:v13];
  v15 = HKLocalizedNoDataString();
  v41 = HKLocalizedNoDataString();
  v40 = [controllerCopy localizedDisplayNameForUnit:v13 value:&unk_1F43844B0];
  v39 = HKUIBloodPressureSystolicDiastolicSeparatorString();
  systolicValue = self->_systolicValue;
  if (systolicValue)
  {
    v17 = MEMORY[0x1E696AD98];
    [(HKQuantity *)systolicValue doubleValueForUnit:v13];
    v18 = [v17 numberWithDouble:?];
    [typeCopy presentation];
    v20 = v19 = self;
    v21 = [v20 adjustedValueForDaemonValue:v18];

    self = v19;
    v22 = v14;
    v23 = controllerCopy;
    v24 = [v14 stringFromNumber:v21 displayType:typeCopy unitController:controllerCopy];

    v25 = v24;
  }

  else
  {
    v23 = controllerCopy;
    v22 = v14;
    v25 = v15;
  }

  diastolicValue = self->_diastolicValue;
  v27 = v41;
  if (diastolicValue)
  {
    v28 = MEMORY[0x1E696AD98];
    [(HKQuantity *)diastolicValue doubleValueForUnit:v13];
    v29 = [v28 numberWithDouble:?];
    presentation = [typeCopy presentation];
    v31 = [presentation adjustedValueForDaemonValue:v29];

    v32 = v22;
    v33 = [v22 stringFromNumber:v31 displayType:typeCopy unitController:v23];

    v27 = v33;
  }

  else
  {
    v32 = v22;
  }

  v44[0] = v25;
  v44[1] = v39;
  v44[2] = v27;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:3];
  v35 = HKUIJoinStringsForLocale(v34);

  v36 = HKGenerateAttributedStringsWithUnitValue(v35, v40, fontCopy, unitFontCopy, 2, 1);

  v37 = HKUIJoinAttributedStringsForLocale(v36);

  return v37;
}

- (id)lastUpdatedDescriptionWithDateCache:(id)cache
{
  cacheCopy = cache;
  date = [(HKBloodPressureDataProviderCurrentValue *)self date];
  v6 = HKLastUpdatedText(date, cacheCopy);

  return v6;
}

@end