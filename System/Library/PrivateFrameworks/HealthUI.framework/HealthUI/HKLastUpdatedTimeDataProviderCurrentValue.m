@interface HKLastUpdatedTimeDataProviderCurrentValue
- (id)attributedStringWithDisplayType:(id)a3 unitController:(id)a4 valueFont:(id)a5 unitFont:(id)a6 dateCache:(id)a7;
- (id)lastUpdatedDescriptionWithDateCache:(id)a3;
@end

@implementation HKLastUpdatedTimeDataProviderCurrentValue

- (id)attributedStringWithDisplayType:(id)a3 unitController:(id)a4 valueFont:(id)a5 unitFont:(id)a6 dateCache:(id)a7
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = [(HKLastUpdatedTimeDataProviderCurrentValue *)self date];
  v10 = HKLocalizedStringForDateAndTemplate(v9, 27);

  v11 = objc_alloc(MEMORY[0x1E696AAB0]);
  v15 = *MEMORY[0x1E69DB648];
  v16[0] = v8;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  v13 = [v11 initWithString:v10 attributes:v12];

  return v13;
}

- (id)lastUpdatedDescriptionWithDateCache:(id)a3
{
  v4 = a3;
  v5 = [(HKLastUpdatedTimeDataProviderCurrentValue *)self date];
  v6 = HKLastUpdatedText(v5, v4);

  return v6;
}

@end