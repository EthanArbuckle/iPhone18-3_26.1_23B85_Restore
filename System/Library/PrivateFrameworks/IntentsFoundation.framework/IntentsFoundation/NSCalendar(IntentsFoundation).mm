@interface NSCalendar(IntentsFoundation)
+ (id)if_currentCalendarWithLanguageCode:()IntentsFoundation;
@end

@implementation NSCalendar(IntentsFoundation)

+ (id)if_currentCalendarWithLanguageCode:()IntentsFoundation
{
  v3 = a3;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = currentCalendar;
  if (v3)
  {
    v6 = *MEMORY[0x277CBECE8];
    locale = [currentCalendar locale];
    ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(v6, [locale localeIdentifier]);

    v9 = CFDictionaryGetValue(ComponentsFromLocaleIdentifier, @"numbers");
    CFRelease(ComponentsFromLocaleIdentifier);
    v10 = MEMORY[0x277CBEAF8];
    if (v9)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@@numbers=%@", v3, v9];
      v12 = [v10 localeWithLocaleIdentifier:v11];
      [v5 setLocale:v12];
    }

    else
    {
      v11 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v3];
      [v5 setLocale:v11];
    }
  }

  return v5;
}

@end