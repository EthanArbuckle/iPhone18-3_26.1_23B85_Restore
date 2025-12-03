@interface HKLastUpdatedTimeDataProviderCurrentValue
- (id)attributedStringWithDisplayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont dateCache:(id)cache;
- (id)lastUpdatedDescriptionWithDateCache:(id)cache;
@end

@implementation HKLastUpdatedTimeDataProviderCurrentValue

- (id)attributedStringWithDisplayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont dateCache:(id)cache
{
  v16[1] = *MEMORY[0x1E69E9840];
  fontCopy = font;
  date = [(HKLastUpdatedTimeDataProviderCurrentValue *)self date];
  v10 = HKLocalizedStringForDateAndTemplate(date, 27);

  v11 = objc_alloc(MEMORY[0x1E696AAB0]);
  v15 = *MEMORY[0x1E69DB648];
  v16[0] = fontCopy;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  v13 = [v11 initWithString:v10 attributes:v12];

  return v13;
}

- (id)lastUpdatedDescriptionWithDateCache:(id)cache
{
  cacheCopy = cache;
  date = [(HKLastUpdatedTimeDataProviderCurrentValue *)self date];
  v6 = HKLastUpdatedText(date, cacheCopy);

  return v6;
}

@end