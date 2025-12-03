@interface HKGenericDataProviderCurrentValue
- (HKGenericDataProviderCurrentValue)initWithValue:(id)value;
- (id)attributedStringWithDisplayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont dateCache:(id)cache;
- (id)lastUpdatedDescriptionWithDateCache:(id)cache;
@end

@implementation HKGenericDataProviderCurrentValue

- (HKGenericDataProviderCurrentValue)initWithValue:(id)value
{
  valueCopy = value;
  v6 = [(HKGenericDataProviderCurrentValue *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, value);
  }

  return v7;
}

- (id)attributedStringWithDisplayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont dateCache:(id)cache
{
  unitFontCopy = unitFont;
  fontCopy = font;
  controllerCopy = controller;
  typeCopy = type;
  v15 = [controllerCopy unitForDisplayType:typeCopy];
  v16 = [typeCopy hk_valueFormatterForUnit:v15];
  v17 = [v16 attributedStringFromValue:self->_value displayType:typeCopy unitController:controllerCopy valueFont:fontCopy unitFont:unitFontCopy];

  return v17;
}

- (id)lastUpdatedDescriptionWithDateCache:(id)cache
{
  cacheCopy = cache;
  date = [(HKGenericDataProviderCurrentValue *)self date];
  v6 = HKLastUpdatedText(date, cacheCopy);

  return v6;
}

@end