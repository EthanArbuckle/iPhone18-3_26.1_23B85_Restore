@interface HKCardioFitnessDataProviderCurrentValue
- (HKCardioFitnessDataProviderCurrentValue)initWithVO2MaxQuantity:(id)quantity biologicalSex:(int64_t)sex age:(int64_t)age date:(id)date;
- (id)attributedStringWithDisplayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont dateCache:(id)cache;
@end

@implementation HKCardioFitnessDataProviderCurrentValue

- (HKCardioFitnessDataProviderCurrentValue)initWithVO2MaxQuantity:(id)quantity biologicalSex:(int64_t)sex age:(int64_t)age date:(id)date
{
  quantityCopy = quantity;
  dateCopy = date;
  v16.receiver = self;
  v16.super_class = HKCardioFitnessDataProviderCurrentValue;
  v13 = [(HKCardioFitnessDataProviderCurrentValue *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_date, date);
    objc_storeStrong(&v14->_vo2maxQuantity, quantity);
    v14->_biologicalSex = sex;
    v14->_ageInYears = age;
  }

  return v14;
}

- (id)attributedStringWithDisplayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont dateCache:(id)cache
{
  v22[2] = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69DB650];
  v21[0] = *MEMORY[0x1E69DB648];
  v21[1] = v8;
  v22[0] = font;
  v9 = MEMORY[0x1E69DC888];
  fontCopy = font;
  hk_chartLollipopValueColor = [v9 hk_chartLollipopValueColor];
  v22[1] = hk_chartLollipopValueColor;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];

  vo2maxQuantity = self->_vo2maxQuantity;
  _unit = [(HKQuantity *)vo2maxQuantity _unit];
  [(HKQuantity *)vo2maxQuantity doubleValueForUnit:_unit];
  v16 = v15;

  v17 = [HKCardioFitnessUtilities localizedStringForCardioFitnessLevel:[HKCardioFitnessUtilities cardioFitnessLevelForVO2Max:self->_biologicalSex biologicalSex:self->_ageInYears age:v16]];
  v18 = objc_alloc(MEMORY[0x1E696AAB0]);

  v19 = [v18 initWithString:v17 attributes:v12];

  return v19;
}

@end