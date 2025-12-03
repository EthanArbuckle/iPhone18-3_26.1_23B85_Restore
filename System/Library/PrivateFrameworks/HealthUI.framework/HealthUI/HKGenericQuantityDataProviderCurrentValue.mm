@interface HKGenericQuantityDataProviderCurrentValue
- (HKGenericQuantityDataProviderCurrentValue)initWithQuantity:(id)quantity;
- (id)attributedStringWithDisplayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont dateCache:(id)cache;
- (id)lastUpdatedDescriptionWithDateCache:(id)cache;
- (id)stringWithDisplayType:(id)type unitController:(id)controller;
@end

@implementation HKGenericQuantityDataProviderCurrentValue

- (HKGenericQuantityDataProviderCurrentValue)initWithQuantity:(id)quantity
{
  quantityCopy = quantity;
  v6 = [(HKGenericQuantityDataProviderCurrentValue *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_quantity, quantity);
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
  v16 = MEMORY[0x1E696AD98];
  [(HKQuantity *)self->_quantity doubleValueForUnit:v15];
  v17 = [v16 numberWithDouble:?];
  presentation = [typeCopy presentation];
  v19 = [presentation adjustedValueForDaemonValue:v17];

  v20 = [typeCopy hk_valueFormatterForUnit:v15];
  v21 = [v20 attributedStringFromValue:v19 displayType:typeCopy unitController:controllerCopy valueFont:fontCopy unitFont:unitFontCopy];

  return v21;
}

- (id)stringWithDisplayType:(id)type unitController:(id)controller
{
  controllerCopy = controller;
  typeCopy = type;
  v8 = [controllerCopy unitForDisplayType:typeCopy];
  v9 = MEMORY[0x1E696AD98];
  [(HKQuantity *)self->_quantity doubleValueForUnit:v8];
  v10 = [v9 numberWithDouble:?];
  presentation = [typeCopy presentation];
  v12 = [presentation adjustedValueForDaemonValue:v10];

  v13 = [typeCopy hk_valueFormatterForUnit:v8];
  v14 = [v13 stringFromValue:v12 displayType:typeCopy unitController:controllerCopy];

  return v14;
}

- (id)lastUpdatedDescriptionWithDateCache:(id)cache
{
  cacheCopy = cache;
  date = [(HKGenericQuantityDataProviderCurrentValue *)self date];
  v6 = HKLastUpdatedText(date, cacheCopy);

  return v6;
}

@end