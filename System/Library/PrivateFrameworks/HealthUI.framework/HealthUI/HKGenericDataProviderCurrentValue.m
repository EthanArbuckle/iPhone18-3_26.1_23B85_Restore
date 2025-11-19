@interface HKGenericDataProviderCurrentValue
- (HKGenericDataProviderCurrentValue)initWithValue:(id)a3;
- (id)attributedStringWithDisplayType:(id)a3 unitController:(id)a4 valueFont:(id)a5 unitFont:(id)a6 dateCache:(id)a7;
- (id)lastUpdatedDescriptionWithDateCache:(id)a3;
@end

@implementation HKGenericDataProviderCurrentValue

- (HKGenericDataProviderCurrentValue)initWithValue:(id)a3
{
  v5 = a3;
  v6 = [(HKGenericDataProviderCurrentValue *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, a3);
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
  v16 = [v14 hk_valueFormatterForUnit:v15];
  v17 = [v16 attributedStringFromValue:self->_value displayType:v14 unitController:v13 valueFont:v12 unitFont:v11];

  return v17;
}

- (id)lastUpdatedDescriptionWithDateCache:(id)a3
{
  v4 = a3;
  v5 = [(HKGenericDataProviderCurrentValue *)self date];
  v6 = HKLastUpdatedText(v5, v4);

  return v6;
}

@end