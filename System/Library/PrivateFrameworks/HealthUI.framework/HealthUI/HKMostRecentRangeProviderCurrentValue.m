@interface HKMostRecentRangeProviderCurrentValue
- (HKMostRecentRangeProviderCurrentValue)initWithMinimumValue:(id)a3 maximumValue:(id)a4 date:(id)a5;
- (id)attributedStringWithDisplayType:(id)a3 unitController:(id)a4 valueFont:(id)a5 unitFont:(id)a6 dateCache:(id)a7;
- (id)attributedSupplementaryStringWithDisplayType:(id)a3 unitController:(id)a4 font:(id)a5;
@end

@implementation HKMostRecentRangeProviderCurrentValue

- (HKMostRecentRangeProviderCurrentValue)initWithMinimumValue:(id)a3 maximumValue:(id)a4 date:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HKMostRecentRangeProviderCurrentValue;
  v12 = [(HKMostRecentRangeProviderCurrentValue *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_date, a5);
    v13->_isSingleValue = 0;
    objc_storeStrong(&v13->_minimumValue, a3);
    objc_storeStrong(&v13->_maximumValue, a4);
  }

  return v13;
}

- (id)attributedStringWithDisplayType:(id)a3 unitController:(id)a4 valueFont:(id)a5 unitFont:(id)a6 dateCache:(id)a7
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v13 unitForDisplayType:v14];
  v16 = [v14 presentation];
  v17 = MEMORY[0x1E696AD98];
  [(HKQuantity *)self->_minimumValue doubleValueForUnit:v15];
  v18 = [v17 numberWithDouble:?];
  v19 = [v16 adjustedValueForDaemonValue:v18];

  v20 = [v14 presentation];
  v21 = MEMORY[0x1E696AD98];
  [(HKQuantity *)self->_maximumValue doubleValueForUnit:v15];
  v22 = [v21 numberWithDouble:?];
  v23 = [v20 adjustedValueForDaemonValue:v22];

  v24 = objc_alloc_init(HKInteractiveChartNumberRangeFormatter);
  LOBYTE(v27) = 1;
  v25 = [(HKInteractiveChartNumberRangeFormatter *)v24 attributedStringForMinimumValue:v19 maximumValue:v23 displayType:v14 unitController:v13 valueFont:v12 unitFont:v11 formatForChart:v27 resultIsSingleValue:&self->_isSingleValue];

  return v25;
}

- (id)attributedSupplementaryStringWithDisplayType:(id)a3 unitController:(id)a4 font:(id)a5
{
  if (self->_isSingleValue)
  {
    v5 = 0;
  }

  else
  {
    v6 = MEMORY[0x1E696AAE8];
    v7 = a5;
    v8 = [v6 bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = [v8 localizedStringForKey:@"RANGE_ABBREVIATED" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    v10 = objc_alloc(MEMORY[0x1E696AAB0]);
    v11 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v12 = HKAttributedStringAttributesForFont(v7, v11);

    v5 = [v10 initWithString:v9 attributes:v12];
  }

  return v5;
}

@end