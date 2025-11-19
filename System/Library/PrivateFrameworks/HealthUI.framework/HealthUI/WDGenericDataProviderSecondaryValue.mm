@interface WDGenericDataProviderSecondaryValue
- (WDGenericDataProviderSecondaryValue)initWithAverage:(id)a3;
- (id)attributedStringWithDisplayType:(id)a3 unitController:(id)a4 valueFont:(id)a5 unitFont:(id)a6 dateCache:(id)a7;
- (id)lastUpdatedDescriptionWithDateCache:(id)a3;
@end

@implementation WDGenericDataProviderSecondaryValue

- (WDGenericDataProviderSecondaryValue)initWithAverage:(id)a3
{
  v5 = a3;
  v6 = [(WDGenericDataProviderSecondaryValue *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_average, a3);
  }

  return v7;
}

- (id)attributedStringWithDisplayType:(id)a3 unitController:(id)a4 valueFont:(id)a5 unitFont:(id)a6 dateCache:(id)a7
{
  v9 = a3;
  v10 = a4;
  v11 = HKLocalizedNoDataString();
  average = self->_average;
  if (average)
  {
    v13 = HKFormattedStringFromValue(average, v9, v10, 0, 0);

    v11 = v13;
  }

  v14 = MEMORY[0x1E696AEC0];
  v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v16 = [v15 localizedStringForKey:@"AVERAGE %@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v17 = [v14 stringWithFormat:v16, v11];

  v18 = HKAttributedString(v17);

  return v18;
}

- (id)lastUpdatedDescriptionWithDateCache:(id)a3
{
  v4 = a3;
  v5 = [(WDGenericDataProviderSecondaryValue *)self date];
  v6 = HKLastUpdatedText(v5, v4);

  return v6;
}

@end