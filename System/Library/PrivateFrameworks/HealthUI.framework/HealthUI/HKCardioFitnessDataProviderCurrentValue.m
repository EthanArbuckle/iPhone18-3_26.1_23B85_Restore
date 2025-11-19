@interface HKCardioFitnessDataProviderCurrentValue
- (HKCardioFitnessDataProviderCurrentValue)initWithVO2MaxQuantity:(id)a3 biologicalSex:(int64_t)a4 age:(int64_t)a5 date:(id)a6;
- (id)attributedStringWithDisplayType:(id)a3 unitController:(id)a4 valueFont:(id)a5 unitFont:(id)a6 dateCache:(id)a7;
@end

@implementation HKCardioFitnessDataProviderCurrentValue

- (HKCardioFitnessDataProviderCurrentValue)initWithVO2MaxQuantity:(id)a3 biologicalSex:(int64_t)a4 age:(int64_t)a5 date:(id)a6
{
  v11 = a3;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = HKCardioFitnessDataProviderCurrentValue;
  v13 = [(HKCardioFitnessDataProviderCurrentValue *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_date, a6);
    objc_storeStrong(&v14->_vo2maxQuantity, a3);
    v14->_biologicalSex = a4;
    v14->_ageInYears = a5;
  }

  return v14;
}

- (id)attributedStringWithDisplayType:(id)a3 unitController:(id)a4 valueFont:(id)a5 unitFont:(id)a6 dateCache:(id)a7
{
  v22[2] = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69DB650];
  v21[0] = *MEMORY[0x1E69DB648];
  v21[1] = v8;
  v22[0] = a5;
  v9 = MEMORY[0x1E69DC888];
  v10 = a5;
  v11 = [v9 hk_chartLollipopValueColor];
  v22[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];

  vo2maxQuantity = self->_vo2maxQuantity;
  v14 = [(HKQuantity *)vo2maxQuantity _unit];
  [(HKQuantity *)vo2maxQuantity doubleValueForUnit:v14];
  v16 = v15;

  v17 = [HKCardioFitnessUtilities localizedStringForCardioFitnessLevel:[HKCardioFitnessUtilities cardioFitnessLevelForVO2Max:self->_biologicalSex biologicalSex:self->_ageInYears age:v16]];
  v18 = objc_alloc(MEMORY[0x1E696AAB0]);

  v19 = [v18 initWithString:v17 attributes:v12];

  return v19;
}

@end