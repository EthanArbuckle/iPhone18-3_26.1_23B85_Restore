@interface IPLocalizationSwitcher
- (void)checkForDiscoveredLanguages:(id)a3;
- (void)notifyPreferredLanguageChangedForBundleID:(id)a3;
- (void)preferredLanguagesForBundleID:(id)a3 reply:(id)a4;
- (void)preferredLanguagesForBundleIDs:(id)a3 reply:(id)a4;
- (void)setPreferredLanguage:(id)a3 forBundleID:(id)a4 andRelaunchWithReply:(id)a5;
@end

@implementation IPLocalizationSwitcher

- (void)setPreferredLanguage:(id)a3 forBundleID:(id)a4 andRelaunchWithReply:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  [(IPLocalizationSwitcher *)self notifyPreferredLanguageChangedForBundleID:v8];
  v11 = [LSApplicationProxy applicationProxyForIdentifier:v8];
  v12 = sub_100002938();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Initialized app proxy for [%{public}@]", buf, 0xCu);
  }

  v13 = +[FBSSystemService sharedService];
  v14 = [v11 bundleIdentifier];
  v15 = [NSString stringWithFormat:@"localizationswitcherd is about to switch language to [%@] for application with bundle identifier: [%@]", v10, v8];

  v16 = [NSString stringWithFormat:@"%@", v15];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000023B8;
  v20[3] = &unk_1000085C8;
  v22 = v11;
  v23 = v9;
  v21 = v8;
  v17 = v11;
  v18 = v8;
  v19 = v9;
  [v13 terminateApplication:v14 forReason:3 andReport:0 withDescription:v16 completion:v20];
}

- (void)notifyPreferredLanguageChangedForBundleID:(id)a3
{
  v4 = a3;
  v5 = [(IPLocalizationSwitcher *)self delegate];
  [v5 preferredLanguageChangedForBundleID:v4];
}

- (void)preferredLanguagesForBundleID:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = [IntlUtility _preferredLanguagesForBundleID:a3];
  (*(a4 + 2))(v6, v7);
}

- (void)preferredLanguagesForBundleIDs:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v18 = v6;
    v7 = +[NSMutableDictionary dictionary];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [IntlUtility _preferredLanguagesForBundleID:v13];
          v15 = v14;
          if (v14)
          {
            v16 = v14;
          }

          else
          {
            v16 = &__NSArray0__struct;
          }

          v17 = v16;

          [v7 setObject:v17 forKeyedSubscript:v13];
          CFPreferencesFlushCaches();
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v6 = v18;
    (v18)[2](v18, v7);
  }

  else
  {
    v6[2](v6, 0);
  }
}

- (void)checkForDiscoveredLanguages:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_100003BC4(v4);
  _Block_release(v4);
  _Block_release(v4);
}

@end