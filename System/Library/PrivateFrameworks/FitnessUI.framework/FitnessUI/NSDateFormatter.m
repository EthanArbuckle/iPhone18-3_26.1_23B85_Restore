@interface NSDateFormatter
@end

@implementation NSDateFormatter

void __83__NSDateFormatter_FULocaleAndTimeZoneObserving__fu_observeTimeZoneAndLocaleChanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x1E695DF58] currentLocale];
  [WeakRetained setLocale:v1];
}

void __83__NSDateFormatter_FULocaleAndTimeZoneObserving__fu_observeTimeZoneAndLocaleChanges__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x1E695DFE8] localTimeZone];
  [WeakRetained setTimeZone:v1];
}

@end