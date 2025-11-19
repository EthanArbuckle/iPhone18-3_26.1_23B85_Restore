@interface DDRTaskResetInternationalSettings
- (void)configure;
- (void)run;
@end

@implementation DDRTaskResetInternationalSettings

- (void)configure
{
  v3 = _locale();
  v4 = v3;
  v5 = _languages();
  v6 = v5;
  v7 = _keyboards();
  v8 = v7;
  v9 = v3;
  v10 = v5;
  v11 = v7;
  v12 = DDRLogForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412802;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Backedup International Settings, locale: %@, languages: %@, keyboards: %@", &v17, 0x20u);
  }

  [(DDRTaskResetInternationalSettings *)self setLocale:v9];
  [(DDRTaskResetInternationalSettings *)self setLanguages:v10];
  [(DDRTaskResetInternationalSettings *)self setKeyboards:v11];
  v13 = DDRLogForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(DDRTaskResetInternationalSettings *)self locale];
    v15 = [(DDRTaskResetInternationalSettings *)self languages];
    v16 = [(DDRTaskResetInternationalSettings *)self keyboards];
    v17 = 138412802;
    v18 = v14;
    v19 = 2112;
    v20 = v15;
    v21 = 2112;
    v22 = v16;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Assigning to self property, locale: %@, languages: %@, keyboards: %@", &v17, 0x20u);
  }
}

- (void)run
{
  v3 = DDRLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(DDRTaskResetInternationalSettings *)self locale];
    v5 = [(DDRTaskResetInternationalSettings *)self languages];
    v6 = [(DDRTaskResetInternationalSettings *)self keyboards];
    *buf = 138412802;
    v41 = v4;
    v42 = 2112;
    v43 = v5;
    v44 = 2112;
    v45 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Restoring previously saved international settings, locale: %@, languages: %@, keyboards: %@", buf, 0x20u);
  }

  v7 = [(DDRTaskResetInternationalSettings *)self locale];
  v8 = [(DDRTaskResetInternationalSettings *)self languages];
  v9 = [(DDRTaskResetInternationalSettings *)self keyboards];
  v10 = v7;
  v11 = v8;
  v12 = v9;
  v13 = _locale();
  v14 = _languages();
  v15 = _keyboards();
  v16 = DDRLogForCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v41 = v13;
    v42 = 2112;
    v43 = v14;
    v44 = 2112;
    v45 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Prior to restore, preLocale: %@, preLanguages: %@, preKeyboards: %@", buf, 0x20u);
  }

  v35 = v13;
  v36 = v14;

  v17 = DDRLogForCategory(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v41 = v10;
    v42 = 2112;
    v43 = v11;
    v44 = 2112;
    v45 = v12;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Ready to restore previously saved international settings, locale: %@, languages: %@, keyboards: %@", buf, 0x20u);
  }

  v37 = v15;

  _CFPreferencesFlushCachesForIdentifier();
  v18 = +[NSBundle mainBundle];
  v19 = [v18 pathForResource:@"GlobalPreferences" ofType:@"plist"];

  v20 = DDRLogForCategory(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "In restore international settings, from path = %@", buf, 0xCu);
  }

  v21 = [[NSDictionary alloc] initWithContentsOfFile:v19];
  v22 = [@"~/Library/Preferences/.GlobalPreferences.plist" stringByExpandingTildeInPath];
  [v21 writeToFile:v22 atomically:0];
  v23 = +[NSFileManager defaultManager];
  v38 = NSFileProtectionKey;
  v39 = NSFileProtectionNone;
  v24 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  [v23 setAttributes:v24 ofItemAtPath:v22 error:0];

  sub_100004BFC();
  v25 = DDRLogForCategory(0);
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v26)
    {
      *buf = 138412290;
      v41 = v10;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "We got backed up locale, resetting it: %@", buf, 0xCu);
    }

    CFPreferencesSetValue(@"AppleLocale", v10, kCFPreferencesAnyApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  }

  else
  {
    if (v26)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Backedup locale became nil", buf, 2u);
    }
  }

  v27 = DDRLogForCategory(0);
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v28)
    {
      *buf = 138412290;
      v41 = v11;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "We got backed up languages, resetting it: %@", buf, 0xCu);
    }

    CFPreferencesSetValue(@"AppleLanguages", v11, kCFPreferencesAnyApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  }

  else
  {
    if (v28)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Backedup language became nil", buf, 2u);
    }
  }

  v29 = DDRLogForCategory(0);
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v30)
    {
      *buf = 138412290;
      v41 = v12;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "We got backed up keyboards, resetting it: %@", buf, 0xCu);
    }

    CFPreferencesSetValue(@"AppleKeyboards", v12, kCFPreferencesAnyApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  }

  else
  {
    if (v30)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Backedup keyboards became nil", buf, 2u);
    }
  }

  sub_100004BFC();
  _CFPreferencesFlushCachesForIdentifier();
  v31 = _locale();

  v32 = _languages();

  v33 = _keyboards();

  v34 = DDRLogForCategory(0);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v41 = v31;
    v42 = 2112;
    v43 = v32;
    v44 = 2112;
    v45 = v33;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "After restore, Locale: %@, Languages: %@, Keyboards: %@", buf, 0x20u);
  }
}

@end