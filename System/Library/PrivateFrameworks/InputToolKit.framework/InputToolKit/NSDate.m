@interface NSDate
@end

@implementation NSDate

uint64_t __39__NSDate_ITK__itk_localDateWithSeconds__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = itk_localDateWithSeconds_localFormatter;
  itk_localDateWithSeconds_localFormatter = v0;

  [itk_localDateWithSeconds_localFormatter setTimeStyle:3];
  v2 = itk_localDateWithSeconds_localFormatter;

  return [v2 setDateStyle:1];
}

uint64_t __37__NSDate_ITK__itk_shortFormattedDate__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = itk_shortFormattedDate_shortRelativeformatter;
  itk_shortFormattedDate_shortRelativeformatter = v0;

  [itk_shortFormattedDate_shortRelativeformatter setTimeStyle:1];
  [itk_shortFormattedDate_shortRelativeformatter setDateStyle:1];
  v2 = itk_shortFormattedDate_shortRelativeformatter;

  return [v2 setDoesRelativeDateFormatting:1];
}

uint64_t __37__NSDate_ITK__itk_shortFormattedDate__block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = itk_shortFormattedDate_shortStandardformatter;
  itk_shortFormattedDate_shortStandardformatter = v0;

  [itk_shortFormattedDate_shortStandardformatter setTimeStyle:1];
  v2 = itk_shortFormattedDate_shortStandardformatter;

  return [v2 setDateStyle:1];
}

uint64_t __38__NSDate_ITK__itk_briefFormattedDate___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = itk_briefFormattedDate__briefTodayFormatter;
  itk_briefFormattedDate__briefTodayFormatter = v0;

  [itk_briefFormattedDate__briefTodayFormatter setTimeStyle:1];
  v2 = itk_briefFormattedDate__briefTodayFormatter;

  return [v2 setDateStyle:0];
}

void __38__NSDate_ITK__itk_briefFormattedDate___block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = itk_briefFormattedDate__templateFormatter;
  itk_briefFormattedDate__templateFormatter = v0;

  v2 = itk_briefFormattedDate__templateFormatter;
  v3 = MEMORY[0x277CCA968];
  v5 = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [v3 dateFormatFromTemplate:@"cccc" options:0 locale:v5];
  [v2 setDateFormat:v4];
}

uint64_t __38__NSDate_ITK__itk_briefFormattedDate___block_invoke_3()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = itk_briefFormattedDate__accessibilityDateFormatter;
  itk_briefFormattedDate__accessibilityDateFormatter = v0;

  [itk_briefFormattedDate__accessibilityDateFormatter setDateStyle:3];
  [itk_briefFormattedDate__accessibilityDateFormatter setTimeStyle:0];
  v2 = itk_briefFormattedDate__accessibilityDateFormatter;

  return [v2 setDoesRelativeDateFormatting:1];
}

uint64_t __38__NSDate_ITK__itk_briefFormattedDate___block_invoke_4()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = itk_briefFormattedDate__briefRelativeFormatter;
  itk_briefFormattedDate__briefRelativeFormatter = v0;

  [itk_briefFormattedDate__briefRelativeFormatter setTimeStyle:0];
  [itk_briefFormattedDate__briefRelativeFormatter setDateStyle:1];
  v2 = itk_briefFormattedDate__briefRelativeFormatter;

  return [v2 setDoesRelativeDateFormatting:1];
}

@end