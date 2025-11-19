@interface CUIKSubscribedHolidayCalendar
- (CUIKSubscribedHolidayCalendar)initWithLocale:(id)a3 languageCode:(id)a4 URL:(id)a5;
- (id)descriptionInLocaleLanguage;
- (id)localizedDescription;
@end

@implementation CUIKSubscribedHolidayCalendar

- (CUIKSubscribedHolidayCalendar)initWithLocale:(id)a3 languageCode:(id)a4 URL:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = CUIKSubscribedHolidayCalendar;
  v12 = [(CUIKSubscribedHolidayCalendar *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_locale, a3);
    objc_storeStrong(&v13->_languageCode, a4);
    v14 = [v9 countryCode];
    countryCode = v13->_countryCode;
    v13->_countryCode = v14;

    objc_storeStrong(&v13->_URL, a5);
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

    v6 = [MEMORY[0x1E695DF58] currentLocale];
    v7 = [(CUIKSubscribedHolidayCalendar *)self countryCode];
    if (v7)
    {
      v8 = [v6 localizedStringForCountryCode:v7];
    }

    else
    {
      v9 = [(CUIKSubscribedHolidayCalendar *)self locale];
      v10 = [v9 countryCode];
      v8 = [v6 localizedStringForCountryCode:v10];
    }

    v11 = [(CUIKSubscribedHolidayCalendar *)self languageCode];
    v12 = [v6 localizedStringForLanguageCode:v11];

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

    v6 = [(CUIKSubscribedHolidayCalendar *)self locale];
    v7 = [(CUIKSubscribedHolidayCalendar *)self countryCode];
    if (v7)
    {
      v8 = [v6 localizedStringForCountryCode:v7];
    }

    else
    {
      v9 = [(CUIKSubscribedHolidayCalendar *)self locale];
      v10 = [v9 countryCode];
      v8 = [v6 localizedStringForCountryCode:v10];
    }

    v11 = [(CUIKSubscribedHolidayCalendar *)self locale];
    v12 = [(CUIKSubscribedHolidayCalendar *)self languageCode];
    v13 = [v11 localizedStringForLanguageCode:v12];

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