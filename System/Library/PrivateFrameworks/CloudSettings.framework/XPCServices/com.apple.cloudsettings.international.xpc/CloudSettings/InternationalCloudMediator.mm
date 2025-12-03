@interface InternationalCloudMediator
- (id)inflection;
- (id)liveText;
- (id)locale;
- (void)registerKeys;
- (void)setInflection:(id)inflection;
- (void)setLiveText:(id)text;
- (void)setLocale:(id)locale;
@end

@implementation InternationalCloudMediator

- (void)registerKeys
{
  [(InternationalCloudMediator *)self registerKey:@"IP_Locale" getter:"locale" setter:"setLocale:"];
  [(InternationalCloudMediator *)self registerKey:@"IP_LiveText" getter:"liveText" setter:"setLiveText:"];

  [(InternationalCloudMediator *)self registerKey:@"IP_Infection" getter:"inflection" setter:"setInflection:"];
}

- (void)setLocale:(id)locale
{
  localeCopy = locale;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IN XPCSERVICE - Update locale", buf, 2u);
  }

  firstObject = [localeCopy firstObject];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100002138();
  }

  v5 = +[IPLocaleCoder localePreferenceKeysAndClasses];
  allKeys = [v5 allKeys];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100001940;
  v9[3] = &unk_100004220;
  v10 = allKeys;
  v7 = allKeys;
  [firstObject enumerateKeysAndObjectsUsingBlock:v9];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"AppleDatePreferencesChangedNotification", 0, 0, 1u);
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"AppleTimePreferencesChangedNotification", 0, 0, 1u);
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"AppleTimePreferencesChangedNotification", 0, 0, 1u);
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"AppleNumberPreferencesChangedNotification", 0, 0, 1u);
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"AppleTemperatureUnitPreferencesChangedNotification", 0, 0, 1u);
}

- (void)setLiveText:(id)text
{
  textCopy = text;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IN XPCSERVICE - Update live text", v7, 2u);
  }

  if (textCopy)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100002218();
    }

    bOOLValue = [textCopy BOOLValue];
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [NSNumber numberWithBool:bOOLValue];
    [v5 setObject:v6 forKey:@"AppleLiveTextEnabled" inDomain:NSGlobalDomain];
  }
}

- (void)setInflection:(id)inflection
{
  if (inflection)
  {
    v3 = [inflection dataUsingEncoding:4];
    v6 = 0;
    v4 = [[_NSAttributedStringGrammarInflection alloc] initWithExternalRepresentation:v3 error:&v6];
    v5 = v6;
    if (v5)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100002288();
      }
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v8 = v4;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IN XPCSERVICE - Update inflection: %@", buf, 0xCu);
      }

      [v4 _setAsGlobalUserInflection];
    }
  }
}

- (id)locale
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IN SERVICE Locale", buf, 2u);
  }

  v2 = +[NSMutableDictionary dictionary];
  v3 = +[IPLocaleCoder localePreferenceKeysAndClasses];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001E48;
  v7[3] = &unk_100004220;
  v4 = v2;
  v8 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v7];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100002304();
  }

  v10 = v4;
  v5 = [NSArray arrayWithObjects:&v10 count:1];

  return v5;
}

- (id)liveText
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IN SERVICE LiveText", &v10, 2u);
  }

  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"AppleLiveTextEnabled" inDomain:NSGlobalDomain];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    v5 = +[NSLocale _deviceLanguage];
    v10 = v5;
    v6 = [NSArray arrayWithObjects:&v10 count:1];
    v7 = [NSLocale matchedLanguagesFromAvailableLanguages:&off_100004928 forPreferredLanguages:v6];

    bOOLValue = [v7 count] != 0;
  }

  v8 = [NSNumber numberWithBool:bOOLValue];

  return v8;
}

- (id)inflection
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IN SERVICE Inflection", v7, 2u);
  }

  v2 = +[_NSAttributedStringGrammarInflection _currentGlobalUserInflection];
  v3 = [NSString alloc];
  externalRepresentation = [v2 externalRepresentation];
  v5 = [v3 initWithData:externalRepresentation encoding:4];

  return v5;
}

@end