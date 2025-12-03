@interface NSDateFormatter(FULocaleAndTimeZoneObserving)
- (void)fu_observeTimeZoneAndLocaleChanges;
@end

@implementation NSDateFormatter(FULocaleAndTimeZoneObserving)

- (void)fu_observeTimeZoneAndLocaleChanges
{
  objc_initWeak(&location, val);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__NSDateFormatter_FULocaleAndTimeZoneObserving__fu_observeTimeZoneAndLocaleChanges__block_invoke;
  v10[3] = &unk_1E878C5C8;
  objc_copyWeak(&v11, &location);
  v3 = [defaultCenter addObserverForName:@"FitnessUnitPreferencesDidChangeNotification" object:0 queue:mainQueue usingBlock:v10];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  mainQueue2 = [MEMORY[0x1E696ADC8] mainQueue];
  v6 = *MEMORY[0x1E695DA68];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__NSDateFormatter_FULocaleAndTimeZoneObserving__fu_observeTimeZoneAndLocaleChanges__block_invoke_2;
  v8[3] = &unk_1E878C5C8;
  objc_copyWeak(&v9, &location);
  v7 = [defaultCenter2 addObserverForName:v6 object:0 queue:mainQueue2 usingBlock:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

@end