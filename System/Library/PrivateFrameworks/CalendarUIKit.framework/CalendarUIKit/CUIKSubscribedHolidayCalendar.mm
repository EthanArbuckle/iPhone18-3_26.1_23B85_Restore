@interface CUIKSubscribedHolidayCalendar
- (CUIKSubscribedHolidayCalendar)initWithLocale:(id)locale languageCode:(id)code URL:(id)l;
- (id)descriptionInLocaleLanguage;
- (id)localizedDescription;
@end

@implementation CUIKSubscribedHolidayCalendar

- (CUIKSubscribedHolidayCalendar)initWithLocale:(id)locale languageCode:(id)code URL:(id)l
{
  localeCopy = locale;
  codeCopy = code;
  lCopy = l;
  v17.receiver = self;
  v17.super_class = CUIKSubscribedHolidayCalendar;
  v12 = [(CUIKSubscribedHolidayCalendar *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_locale, locale);
    objc_storeStrong(&v13->_languageCode, code);
    countryCode = [localeCopy countryCode];
    countryCode = v13->_countryCode;
    v13->_countryCode = countryCode;

    objc_storeStrong(&v13->_URL, l);
    v13->_localizedDescriptionCacheLock._os_unfair_lock_opaque = 0;
  }

  return v13;
}

- (id)localizedDescription
{
  os_unfair_lock_lock(&self->_localizedDescriptionCacheLock);
  cachedLocalizedDescription = self->_cachedLocalizedDescription;
  if (!cachedLocalizedDescription)
  {
    v4 = CUIKBundle();
    v5 = [v4 localizedStringForKey:@"Holiday Calendar description format in user's language" value:@"%1$@ (%2$@)" table:0];

    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    countryCode = [(CUIKSubscribedHolidayCalendar *)self countryCode];
    if (countryCode)
    {
      v8 = [currentLocale localizedStringForCountryCode:countryCode];
    }

    else
    {
      locale = [(CUIKSubscribedHolidayCalendar *)self locale];
      countryCode2 = [locale countryCode];
      v8 = [currentLocale localizedStringForCountryCode:countryCode2];
    }

    languageCode = [(CUIKSubscribedHolidayCalendar *)self languageCode];
    v12 = [currentLocale localizedStringForLanguageCode:languageCode];

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:v5, v8, v12];
    v14 = self->_cachedLocalizedDescription;
    self->_cachedLocalizedDescription = v13;

    cachedLocalizedDescription = self->_cachedLocalizedDescription;
  }

  v15 = cachedLocalizedDescription;
  os_unfair_lock_unlock(&self->_localizedDescriptionCacheLock);

  return v15;
}

- (id)descriptionInLocaleLanguage
{
  os_unfair_lock_lock(&self->_localizedDescriptionCacheLock);
  cachedDescriptionInLocaleLanguage = self->_cachedDescriptionInLocaleLanguage;
  if (!cachedDescriptionInLocaleLanguage)
  {
    v4 = CUIKBundle();
    v5 = [v4 localizedStringForKey:@"Holiday Calendar description format in calendar's language" value:@"%1$@ (%2$@)" table:0];

    locale = [(CUIKSubscribedHolidayCalendar *)self locale];
    countryCode = [(CUIKSubscribedHolidayCalendar *)self countryCode];
    if (countryCode)
    {
      v8 = [locale localizedStringForCountryCode:countryCode];
    }

    else
    {
      locale2 = [(CUIKSubscribedHolidayCalendar *)self locale];
      countryCode2 = [locale2 countryCode];
      v8 = [locale localizedStringForCountryCode:countryCode2];
    }

    locale3 = [(CUIKSubscribedHolidayCalendar *)self locale];
    languageCode = [(CUIKSubscribedHolidayCalendar *)self languageCode];
    v13 = [locale3 localizedStringForLanguageCode:languageCode];

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:v5, v8, v13];
    v15 = self->_cachedDescriptionInLocaleLanguage;
    self->_cachedDescriptionInLocaleLanguage = v14;

    cachedDescriptionInLocaleLanguage = self->_cachedDescriptionInLocaleLanguage;
  }

  v16 = cachedDescriptionInLocaleLanguage;
  os_unfair_lock_unlock(&self->_localizedDescriptionCacheLock);

  return v16;
}

@end