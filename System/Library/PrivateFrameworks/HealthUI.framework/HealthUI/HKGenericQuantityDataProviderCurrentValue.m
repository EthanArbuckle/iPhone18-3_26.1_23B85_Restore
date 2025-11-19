@interface HKGenericQuantityDataProviderCurrentValue
- (HKGenericQuantityDataProviderCurrentValue)initWithQuantity:(id)a3;
- (id)attributedStringWithDisplayType:(id)a3 unitController:(id)a4 valueFont:(id)a5 unitFont:(id)a6 dateCache:(id)a7;
- (id)lastUpdatedDescriptionWithDateCache:(id)a3;
- (id)stringWithDisplayType:(id)a3 unitController:(id)a4;
@end

@implementation HKGenericQuantityDataProviderCurrentValue

- (HKGenericQuantityDataProviderCurrentValue)initWithQuantity:(id)a3
{
  v5 = a3;
  v6 = [(HKGenericQuantityDataProviderCurrentValue *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_quantity, a3);
  }

  return v7;
}

- (id)attributedStringWithDisplayType:(id)a3 unitController:(id)a4 valueFont:(id)a5 unitFont:(id)a6 dateCache:(id)a7
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v13 unitForDisplayType:v14];
  v16 = MEMORY[0x1E696AD98];
  [(HKQuantity *)self->_quantity doubleValueForUnit:v15];
  v17 = [v16 numberWithDouble:?];
  v18 = [v14 presentation];
  v19 = [v18 adjustedValueForDaemonValue:v17];

  v20 = [v14 hk_valueFormatterForUnit:v15];
  v21 = [v20 attributedStringFromValue:v19 displayType:v14 unitController:v13 valueFont:v12 unitFont:v11];

  return v21;
}

- (id)stringWithDisplayType:(id)a3 unitController:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 unitForDisplayType:v7];
  v9 = MEMORY[0x1E696AD98];
  [(HKQuantity *)self->_quantity doubleValueForUnit:v8];
  v10 = [v9 numberWithDouble:?];
  v11 = [v7 presentation];
  v12 = [v11 adjustedValueForDaemonValue:v10];

  v13 = [v7 hk_valueFormatterForUnit:v8];
  v14 = [v13 stringFromValue:v12 displayType:v7 unitController:v6];

  return v14;
}

- (id)lastUpdatedDescriptionWithDateCache:(id)a3
{
  v4 = a3;
  v5 = [(HKGenericQuantityDataProviderCurrentValue *)self date];
  v6 = HKLastUpdatedText(v5, v4);

  return v6;
}

@end