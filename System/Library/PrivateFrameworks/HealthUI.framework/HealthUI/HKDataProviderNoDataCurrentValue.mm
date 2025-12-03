@interface HKDataProviderNoDataCurrentValue
- (id)attributedStringWithDisplayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont dateCache:(id)cache;
- (id)lastUpdatedDescriptionWithDateCache:(id)cache;
@end

@implementation HKDataProviderNoDataCurrentValue

- (id)attributedStringWithDisplayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont dateCache:(id)cache
{
  v7 = HKLocalizedNoDataString();
  v8 = HKAttributedString(v7);

  return v8;
}

- (id)lastUpdatedDescriptionWithDateCache:(id)cache
{
  cacheCopy = cache;
  date = [(HKDataProviderNoDataCurrentValue *)self date];
  v6 = HKLastUpdatedText(date, cacheCopy);

  return v6;
}

@end