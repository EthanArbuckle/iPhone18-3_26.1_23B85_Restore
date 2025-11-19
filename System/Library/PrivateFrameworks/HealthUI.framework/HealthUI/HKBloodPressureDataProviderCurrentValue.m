@interface HKBloodPressureDataProviderCurrentValue
- (HKBloodPressureDataProviderCurrentValue)initWithCorrelation:(id)a3;
- (HKBloodPressureDataProviderCurrentValue)initWithSystolicValue:(id)a3 diastolicValue:(id)a4 date:(id)a5;
- (id)_quantityForType:(id)a3 correlation:(id)a4;
- (id)attributedStringWithDisplayType:(id)a3 unitController:(id)a4 valueFont:(id)a5 unitFont:(id)a6 dateCache:(id)a7;
- (id)lastUpdatedDescriptionWithDateCache:(id)a3;
@end

@implementation HKBloodPressureDataProviderCurrentValue

- (HKBloodPressureDataProviderCurrentValue)initWithCorrelation:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HKBloodPressureDataProviderCurrentValue;
  v5 = [(HKBloodPressureDataProviderCurrentValue *)&v15 init];
  if (v5)
  {
    v6 = [v4 endDate];
    date = v5->_date;
    v5->_date = v6;

    v8 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696BC90]];
    v9 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696BC88]];
    v10 = [(HKBloodPressureDataProviderCurrentValue *)v5 _quantityForType:v8 correlation:v4];
    systolicValue = v5->_systolicValue;
    v5->_systolicValue = v10;

    v12 = [(HKBloodPressureDataProviderCurrentValue *)v5 _quantityForType:v9 correlation:v4];
    diastolicValue = v5->_diastolicValue;
    v5->_diastolicValue = v12;
  }

  return v5;
}

- (HKBloodPressureDataProviderCurrentValue)initWithSystolicValue:(id)a3 diastolicValue:(id)a4 date:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HKBloodPressureDataProviderCurrentValue;
  v12 = [(HKBloodPressureDataProviderCurrentValue *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_date, a5);
    objc_storeStrong(&v13->_systolicValue, a3);
    objc_storeStrong(&v13->_diastolicValue, a4);
  }

  return v13;
}

- (id)_quantityForType:(id)a3 correlation:(id)a4
{
  v4 = [a4 objectsForType:a3];
  v5 = [v4 anyObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 quantity];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)attributedStringWithDisplayType:(id)a3 unitController:(id)a4 valueFont:(id)a5 unitFont:(id)a6 dateCache:(id)a7
{
  v44[3] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v43 = a6;
  v42 = a5;
  v13 = [v12 unitForDisplayType:v11];
  v14 = [v11 hk_numberFormatterForUnit:v13];
  v15 = HKLocalizedNoDataString();
  v41 = HKLocalizedNoDataString();
  v40 = [v12 localizedDisplayNameForUnit:v13 value:&unk_1F43844B0];
  v39 = HKUIBloodPressureSystolicDiastolicSeparatorString();
  systolicValue = self->_systolicValue;
  if (systolicValue)
  {
    v17 = MEMORY[0x1E696AD98];
    [(HKQuantity *)systolicValue doubleValueForUnit:v13];
    v18 = [v17 numberWithDouble:?];
    [v11 presentation];
    v20 = v19 = self;
    v21 = [v20 adjustedValueForDaemonValue:v18];

    self = v19;
    v22 = v14;
    v23 = v12;
    v24 = [v14 stringFromNumber:v21 displayType:v11 unitController:v12];

    v25 = v24;
  }

  else
  {
    v23 = v12;
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
    v30 = [v11 presentation];
    v31 = [v30 adjustedValueForDaemonValue:v29];

    v32 = v22;
    v33 = [v22 stringFromNumber:v31 displayType:v11 unitController:v23];

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

  v36 = HKGenerateAttributedStringsWithUnitValue(v35, v40, v42, v43, 2, 1);

  v37 = HKUIJoinAttributedStringsForLocale(v36);

  return v37;
}

- (id)lastUpdatedDescriptionWithDateCache:(id)a3
{
  v4 = a3;
  v5 = [(HKBloodPressureDataProviderCurrentValue *)self date];
  v6 = HKLastUpdatedText(v5, v4);

  return v6;
}

@end