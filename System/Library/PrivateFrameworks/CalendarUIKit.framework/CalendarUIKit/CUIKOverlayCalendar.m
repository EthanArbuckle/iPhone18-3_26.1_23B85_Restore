@interface CUIKOverlayCalendar
+ (id)currentOverlayCalendarNoCaching;
+ (id)overlayCalendar;
+ (id)overlayCalendarForCalendarIdentifier:(id)a3 timezone:(id)a4;
+ (id)overlayCalendarID;
+ (void)invalidateOverlayCalendar;
@end

@implementation CUIKOverlayCalendar

+ (id)overlayCalendarForCalendarIdentifier:(id)a3 timezone:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && [v5 length])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DEE8]) initWithCalendarIdentifier:v5];
    if (v7)
    {
      v8 = [MEMORY[0x1E69AAE08] localeForCalendarID:v5];
      [v7 setLocale:v8];

      [v7 setTimeZone:v6];
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
  v2 = [MEMORY[0x1E6992F80] shared];
  v3 = [v2 stringForKey:*MEMORY[0x1E6992E98]];

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
  v2 = [objc_opt_class() overlayCalendarID];
  v3 = [MEMORY[0x1E6992F28] activeTimeZone];
  v4 = [CUIKOverlayCalendar overlayCalendarForCalendarIdentifier:v2 timezone:v3];

  return v4;
}

+ (void)invalidateOverlayCalendar
{
  obj = [a1 currentOverlayCalendarNoCaching];
  os_unfair_lock_lock(&_lock);
  if (_overlayCalendar | obj && ([_overlayCalendar isEqual:obj] & 1) == 0)
  {
    objc_storeStrong(&_overlayCalendar, obj);
    os_unfair_lock_unlock(&_lock);
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 postNotificationName:@"CUIKOverlayCalendarChangedNotification" object:a1];
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
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:a1 selector:sel_invalidateOverlayCalendar name:*MEMORY[0x1E695D8F0] object:0];
    [v3 addObserver:a1 selector:sel_invalidateOverlayCalendar name:@"com.apple.calendar.TimeZoneChanged" object:0];
    [v3 addObserver:a1 selector:sel_invalidateOverlayCalendar name:*MEMORY[0x1E6992EA0] object:0];
    v4 = [a1 currentOverlayCalendarNoCaching];
    v5 = _overlayCalendar;
    _overlayCalendar = v4;
  }

  v6 = _overlayCalendar;
  os_unfair_lock_unlock(&_lock);

  return v6;
}

@end