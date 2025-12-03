@interface WDGenericDataProviderSecondaryValue
- (WDGenericDataProviderSecondaryValue)initWithAverage:(id)average;
- (id)attributedStringWithDisplayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont dateCache:(id)cache;
- (id)lastUpdatedDescriptionWithDateCache:(id)cache;
@end

@implementation WDGenericDataProviderSecondaryValue

- (WDGenericDataProviderSecondaryValue)initWithAverage:(id)average
{
  averageCopy = average;
  v6 = [(WDGenericDataProviderSecondaryValue *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_average, average);
  }

  return v7;
}

- (id)attributedStringWithDisplayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont dateCache:(id)cache
{
  typeCopy = type;
  controllerCopy = controller;
  v11 = HKLocalizedNoDataString();
  average = self->_average;
  if (average)
  {
    v13 = HKFormattedStringFromValue(average, typeCopy, controllerCopy, 0, 0);

    v11 = v13;
  }

  v14 = MEMORY[0x1E696AEC0];
  v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v16 = [v15 localizedStringForKey:@"AVERAGE %@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v17 = [v14 stringWithFormat:v16, v11];

  v18 = HKAttributedString(v17);

  return v18;
}

- (id)lastUpdatedDescriptionWithDateCache:(id)cache
{
  cacheCopy = cache;
  date = [(WDGenericDataProviderSecondaryValue *)self date];
  v6 = HKLastUpdatedText(date, cacheCopy);

  return v6;
}

@end