@interface _HKAppleSleepingBreathingDisturbancesCurrentValueDataProvider
- (_HKAppleSleepingBreathingDisturbancesCurrentValueDataProvider)initWithBreathingDisturbancesClassification:(int64_t)classification date:(id)date;
- (id)attributedStringWithDisplayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont dateCache:(id)cache;
@end

@implementation _HKAppleSleepingBreathingDisturbancesCurrentValueDataProvider

- (_HKAppleSleepingBreathingDisturbancesCurrentValueDataProvider)initWithBreathingDisturbancesClassification:(int64_t)classification date:(id)date
{
  dateCopy = date;
  v11.receiver = self;
  v11.super_class = _HKAppleSleepingBreathingDisturbancesCurrentValueDataProvider;
  v8 = [(_HKAppleSleepingBreathingDisturbancesCurrentValueDataProvider *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_classification = classification;
    objc_storeStrong(&v8->_date, date);
  }

  return v9;
}

- (id)attributedStringWithDisplayType:(id)type unitController:(id)controller valueFont:(id)font unitFont:(id)unitFont dateCache:(id)cache
{
  v18[2] = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69DB650];
  v17[0] = *MEMORY[0x1E69DB648];
  v17[1] = v8;
  v18[0] = font;
  v9 = MEMORY[0x1E69DC888];
  fontCopy = font;
  hk_chartLollipopValueColor = [v9 hk_chartLollipopValueColor];
  v18[1] = hk_chartLollipopValueColor;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v13 = [HKSleepApneaUtilities localizedTitleForBreathingDisturbancesClassification:[(_HKAppleSleepingBreathingDisturbancesCurrentValueDataProvider *)self classification]];
  v14 = objc_alloc(MEMORY[0x1E696AAB0]);

  v15 = [v14 initWithString:v13 attributes:v12];

  return v15;
}

@end