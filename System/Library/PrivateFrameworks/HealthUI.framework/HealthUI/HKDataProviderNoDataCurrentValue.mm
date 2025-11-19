@interface HKDataProviderNoDataCurrentValue
- (id)attributedStringWithDisplayType:(id)a3 unitController:(id)a4 valueFont:(id)a5 unitFont:(id)a6 dateCache:(id)a7;
- (id)lastUpdatedDescriptionWithDateCache:(id)a3;
@end

@implementation HKDataProviderNoDataCurrentValue

- (id)attributedStringWithDisplayType:(id)a3 unitController:(id)a4 valueFont:(id)a5 unitFont:(id)a6 dateCache:(id)a7
{
  v7 = HKLocalizedNoDataString();
  v8 = HKAttributedString(v7);

  return v8;
}

- (id)lastUpdatedDescriptionWithDateCache:(id)a3
{
  v4 = a3;
  v5 = [(HKDataProviderNoDataCurrentValue *)self date];
  v6 = HKLastUpdatedText(v5, v4);

  return v6;
}

@end