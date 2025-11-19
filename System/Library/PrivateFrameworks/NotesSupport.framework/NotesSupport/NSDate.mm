@interface NSDate
@end

@implementation NSDate

uint64_t __37__NSDate_IC__ic_localDateWithSeconds__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = ic_localDateWithSeconds_localFormatter;
  ic_localDateWithSeconds_localFormatter = v0;

  [ic_localDateWithSeconds_localFormatter setTimeStyle:3];
  v2 = ic_localDateWithSeconds_localFormatter;

  return [v2 setDateStyle:1];
}

uint64_t __28__NSDate_IC__ic_iso8601Date__block_invoke()
{
  ic_iso8601Date_dateFormatter = objc_alloc_init(MEMORY[0x1E696AC80]);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __52__NSDate_IC__ic_shortFormattedDateForAccessibility___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = ic_shortFormattedDateForAccessibility__shortRelativeformatter;
  ic_shortFormattedDateForAccessibility__shortRelativeformatter = v0;

  [ic_shortFormattedDateForAccessibility__shortRelativeformatter setTimeStyle:1];
  [ic_shortFormattedDateForAccessibility__shortRelativeformatter setDateStyle:1];
  v2 = ic_shortFormattedDateForAccessibility__shortRelativeformatter;

  return [v2 setDoesRelativeDateFormatting:1];
}

uint64_t __52__NSDate_IC__ic_shortFormattedDateForAccessibility___block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = ic_shortFormattedDateForAccessibility__shortAccessibilityStandardformatter;
  ic_shortFormattedDateForAccessibility__shortAccessibilityStandardformatter = v0;

  [ic_shortFormattedDateForAccessibility__shortAccessibilityStandardformatter setTimeStyle:1];
  v2 = ic_shortFormattedDateForAccessibility__shortAccessibilityStandardformatter;

  return [v2 setDateStyle:3];
}

uint64_t __52__NSDate_IC__ic_shortFormattedDateForAccessibility___block_invoke_3()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = ic_shortFormattedDateForAccessibility__shortStandardformatter;
  ic_shortFormattedDateForAccessibility__shortStandardformatter = v0;

  [ic_shortFormattedDateForAccessibility__shortStandardformatter setTimeStyle:1];
  v2 = ic_shortFormattedDateForAccessibility__shortStandardformatter;

  return [v2 setDateStyle:1];
}

uint64_t __43__NSDate_IC__ic_briefFormattedDate_locale___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v3 = ic_briefFormattedDate_locale__briefTodayFormatter;
  ic_briefFormattedDate_locale__briefTodayFormatter = v2;

  [ic_briefFormattedDate_locale__briefTodayFormatter setTimeStyle:1];
  [ic_briefFormattedDate_locale__briefTodayFormatter setDateStyle:0];
  v4 = *(a1 + 32);
  v5 = ic_briefFormattedDate_locale__briefTodayFormatter;

  return [v5 setLocale:v4];
}

void __43__NSDate_IC__ic_briefFormattedDate_locale___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v3 = ic_briefFormattedDate_locale__templateFormatter;
  ic_briefFormattedDate_locale__templateFormatter = v2;

  [ic_briefFormattedDate_locale__templateFormatter setLocale:*(a1 + 32)];
  v4 = ic_briefFormattedDate_locale__templateFormatter;
  v5 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"cccc" options:0 locale:*(a1 + 32)];
  [v4 setDateFormat:v5];

  v6 = ic_briefFormattedDate_locale__templateFormatter;

  objc_storeStrong(&ic_briefFormattedDate_locale__accessibleTemplateFormatter, v6);
}

uint64_t __43__NSDate_IC__ic_briefFormattedDate_locale___block_invoke_3(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v3 = ic_briefFormattedDate_locale__accessibilityDateFormatter;
  ic_briefFormattedDate_locale__accessibilityDateFormatter = v2;

  [ic_briefFormattedDate_locale__accessibilityDateFormatter setDateStyle:3];
  [ic_briefFormattedDate_locale__accessibilityDateFormatter setTimeStyle:0];
  [ic_briefFormattedDate_locale__accessibilityDateFormatter setDoesRelativeDateFormatting:1];
  v4 = *(a1 + 32);
  v5 = ic_briefFormattedDate_locale__accessibilityDateFormatter;

  return [v5 setLocale:v4];
}

uint64_t __43__NSDate_IC__ic_briefFormattedDate_locale___block_invoke_4(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v3 = ic_briefFormattedDate_locale__briefRelativeFormatter;
  ic_briefFormattedDate_locale__briefRelativeFormatter = v2;

  [ic_briefFormattedDate_locale__briefRelativeFormatter setTimeStyle:0];
  [ic_briefFormattedDate_locale__briefRelativeFormatter setDateStyle:1];
  [ic_briefFormattedDate_locale__briefRelativeFormatter setDoesRelativeDateFormatting:1];
  v4 = *(a1 + 32);
  v5 = ic_briefFormattedDate_locale__briefRelativeFormatter;

  return [v5 setLocale:v4];
}

@end