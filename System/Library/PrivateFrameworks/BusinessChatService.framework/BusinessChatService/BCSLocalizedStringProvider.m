@interface BCSLocalizedStringProvider
+ (id)sharedInstance;
- (id)willOpenAtDifferentDayPluralWithFormattedTime:(id)a3 formattedDay:(id)a4;
- (id)willOpenAtDifferentDaySingularWithFormattedTime:(id)a3 formattedDay:(id)a4;
- (id)willOpenAtSameDayPluralWithFormattedTime:(id)a3;
- (id)willOpenAtSameDaySingularWithFormattedTime:(id)a3;
@end

@implementation BCSLocalizedStringProvider

+ (id)sharedInstance
{
  if (qword_280BCF590 != -1)
  {
    dispatch_once(&qword_280BCF590, &__block_literal_global_6);
  }

  v3 = _MergedGlobals_40;

  return v3;
}

uint64_t __44__BCSLocalizedStringProvider_sharedInstance__block_invoke()
{
  _MergedGlobals_40 = objc_alloc_init(BCSLocalizedStringProvider);

  return MEMORY[0x2821F96F8]();
}

- (id)willOpenAtSameDaySingularWithFormattedTime:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"WILL_OPEN_AT_SAME_DAY_SINGULAR" value:&stru_28544C2A0 table:0];
  v8 = [v3 stringWithFormat:v7, v5];

  return v8;
}

- (id)willOpenAtSameDayPluralWithFormattedTime:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"WILL_OPEN_AT_SAME_DAY_PLURAL" value:&stru_28544C2A0 table:0];
  v8 = [v3 stringWithFormat:v7, v5];

  return v8;
}

- (id)willOpenAtDifferentDaySingularWithFormattedTime:(id)a3 formattedDay:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = MEMORY[0x277CCA8D8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"WILL_OPEN_AT_DIFFERENT_DAY_SINGULAR" value:&stru_28544C2A0 table:0];
  v11 = [v5 stringWithFormat:v10, v7, v8];

  return v11;
}

- (id)willOpenAtDifferentDayPluralWithFormattedTime:(id)a3 formattedDay:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = MEMORY[0x277CCA8D8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"WILL_OPEN_AT_DIFFERENT_DAY_PLURAL" value:&stru_28544C2A0 table:0];
  v11 = [v5 stringWithFormat:v10, v7, v8];

  return v11;
}

@end