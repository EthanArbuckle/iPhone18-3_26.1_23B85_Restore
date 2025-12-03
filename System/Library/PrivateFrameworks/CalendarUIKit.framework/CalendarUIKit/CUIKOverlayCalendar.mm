@interface CUIKOverlayCalendar
+ (id)currentOverlayCalendarNoCaching;
+ (id)overlayCalendar;
+ (id)overlayCalendarForCalendarIdentifier:(id)identifier timezone:(id)timezone;
+ (id)overlayCalendarID;
+ (void)invalidateOverlayCalendar;
@end

@implementation CUIKOverlayCalendar

+ (id)overlayCalendarForCalendarIdentifier:(id)identifier timezone:(id)timezone
{
  identifierCopy = identifier;
  timezoneCopy = timezone;
  if (identifierCopy && [identifierCopy length])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DEE8]) initWithCalendarIdentifier:identifierCopy];
    if (v7)
    {
      v8 = [MEMORY[0x1E69AAE08] localeForCalendarID:identifierCopy];
      [v7 setLocale:v8];

      [v7 setTimeZone:timezoneCopy];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)overlayCalendarID
{
  mEMORY[0x1E6992F80] = [MEMORY[0x1E6992F80] shared];
  v3 = [mEMORY[0x1E6992F80] stringForKey:*MEMORY[0x1E6992E98]];

  if (!v3)
  {
    if (![MEMORY[0x1E69AAE08] isLunarCalendarDefaultOn] || (v4 = MEMORY[0x1E69AAE08], objc_msgSend(MEMORY[0x1E695DF58], "currentLocale"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "localeIdentifier"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "preferredLunarCalendarForLocaleID:", v6), v3 = objc_claimAutoreleasedReturnValue(), v6, v5, !v3))
    {
      v3 = &stru_1F4AA8958;
    }
  }

  return v3;
}

+ (id)currentOverlayCalendarNoCaching
{
  overlayCalendarID = [objc_opt_class() overlayCalendarID];
  activeTimeZone = [MEMORY[0x1E6992F28] activeTimeZone];
  v4 = [CUIKOverlayCalendar overlayCalendarForCalendarIdentifier:overlayCalendarID timezone:activeTimeZone];

  return v4;
}

+ (void)invalidateOverlayCalendar
{
  obj = [self currentOverlayCalendarNoCaching];
  os_unfair_lock_lock(&_lock);
  if (_overlayCalendar | obj && ([_overlayCalendar isEqual:obj] & 1) == 0)
  {
    objc_storeStrong(&_overlayCalendar, obj);
    os_unfair_lock_unlock(&_lock);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"CUIKOverlayCalendarChangedNotification" object:self];
  }

  else
  {
    os_unfair_lock_unlock(&_lock);
  }
}

+ (id)overlayCalendar
{
  os_unfair_lock_lock(&_lock);
  if ((_initialized & 1) == 0)
  {
    _initialized = 1;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_invalidateOverlayCalendar name:*MEMORY[0x1E695D8F0] object:0];
    [defaultCenter addObserver:self selector:sel_invalidateOverlayCalendar name:@"com.apple.calendar.TimeZoneChanged" object:0];
    [defaultCenter addObserver:self selector:sel_invalidateOverlayCalendar name:*MEMORY[0x1E6992EA0] object:0];
    currentOverlayCalendarNoCaching = [self currentOverlayCalendarNoCaching];
    v5 = _overlayCalendar;
    _overlayCalendar = currentOverlayCalendarNoCaching;
  }

  v6 = _overlayCalendar;
  os_unfair_lock_unlock(&_lock);

  return v6;
}

@end