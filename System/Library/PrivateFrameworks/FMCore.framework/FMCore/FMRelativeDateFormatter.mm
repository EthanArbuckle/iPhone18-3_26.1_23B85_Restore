@interface FMRelativeDateFormatter
- (FMRelativeDateFormatter)init;
- (id)formattingContextKeyForKey:(id)key;
- (id)localizedStringForKey:(id)key;
- (id)stringForObjectValue:(id)value;
@end

@implementation FMRelativeDateFormatter

- (FMRelativeDateFormatter)init
{
  v5.receiver = self;
  v5.super_class = FMRelativeDateFormatter;
  v2 = [(FMRelativeDateFormatter *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(FMRelativeDateFormatter *)v2 setDoesRelativeDateFormatting:1];
    [(FMRelativeDateFormatter *)v3 setDateStyle:3];
    [(FMRelativeDateFormatter *)v3 setTimeStyle:1];
  }

  return v3;
}

- (id)localizedStringForKey:(id)key
{
  v3 = MEMORY[0x277CCA8D8];
  keyCopy = key;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:keyCopy value:keyCopy table:0];

  return v6;
}

- (id)formattingContextKeyForKey:(id)key
{
  keyCopy = key;
  v5 = [(FMRelativeDateFormatter *)self formattingContext]- 3;
  if (v5 > 2)
  {
    v6 = @"__STANDALONE";
  }

  else
  {
    v6 = off_278FD9AC8[v5];
  }

  v7 = [keyCopy stringByAppendingString:v6];

  return v7;
}

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceReferenceDate];
  v7 = v6;
  [valueCopy timeIntervalSinceReferenceDate];
  v9 = v7 - v8;
  if (v9 < 60.0)
  {
    currentCalendar = [(FMRelativeDateFormatter *)self formattingContextKeyForKey:@"FMRELATIVEDATEFORMATTER__LESS_THAN_A_MINUTE_AGO"];
    v11 = [(FMRelativeDateFormatter *)self localizedStringForKey:currentCalendar];
LABEL_5:

    goto LABEL_7;
  }

  if (v9 < 3600.0)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v12 = objc_alloc_init(FMPastDateComponentsFormatter);
    v13 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    locale = [(FMRelativeDateFormatter *)self locale];
    [currentCalendar setLocale:locale];

    [(NSDateComponentsFormatter *)v12 setCalendar:currentCalendar];
    [(NSDateComponentsFormatter *)v12 setAllowedUnits:64];
    [(NSDateComponentsFormatter *)v12 setUnitsStyle:3];
    [(NSDateComponentsFormatter *)v12 setIncludesTimeRemainingPhrase:1];
    [v13 setMinute:-(v9 / 60.0)];
    v11 = [(NSDateComponentsFormatter *)v12 stringFromDateComponents:v13];

    goto LABEL_5;
  }

  v16.receiver = self;
  v16.super_class = FMRelativeDateFormatter;
  v11 = [(FMRelativeDateFormatter *)&v16 stringForObjectValue:valueCopy];
LABEL_7:

  return v11;
}

@end