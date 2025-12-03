@interface IPLocalizationSwitcher
- (void)checkForDiscoveredLanguages:(id)languages;
- (void)notifyPreferredLanguageChangedForBundleID:(id)d;
- (void)preferredLanguagesForBundleID:(id)d reply:(id)reply;
- (void)preferredLanguagesForBundleIDs:(id)ds reply:(id)reply;
- (void)setPreferredLanguage:(id)language forBundleID:(id)d andRelaunchWithReply:(id)reply;
@end

@implementation IPLocalizationSwitcher

- (void)setPreferredLanguage:(id)language forBundleID:(id)d andRelaunchWithReply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  languageCopy = language;
  [(IPLocalizationSwitcher *)self notifyPreferredLanguageChangedForBundleID:dCopy];
  v11 = [LSApplicationProxy applicationProxyForIdentifier:dCopy];
  v12 = sub_100002938();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = dCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Initialized app proxy for [%{public}@]", buf, 0xCu);
  }

  v13 = +[FBSSystemService sharedService];
  bundleIdentifier = [v11 bundleIdentifier];
  dCopy = [NSString stringWithFormat:@"localizationswitcherd is about to switch language to [%@] for application with bundle identifier: [%@]", languageCopy, dCopy];

  v16 = [NSString stringWithFormat:@"%@", dCopy];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000023B8;
  v20[3] = &unk_1000085C8;
  v22 = v11;
  v23 = replyCopy;
  v21 = dCopy;
  v17 = v11;
  v18 = dCopy;
  v19 = replyCopy;
  [v13 terminateApplication:bundleIdentifier forReason:3 andReport:0 withDescription:v16 completion:v20];
}

- (void)notifyPreferredLanguageChangedForBundleID:(id)d
{
  dCopy = d;
  delegate = [(IPLocalizationSwitcher *)self delegate];
  [delegate preferredLanguageChangedForBundleID:dCopy];
}

- (void)preferredLanguagesForBundleID:(id)d reply:(id)reply
{
  replyCopy = reply;
  v7 = [IntlUtility _preferredLanguagesForBundleID:d];
  (*(reply + 2))(replyCopy, v7);
}

- (void)preferredLanguagesForBundleIDs:(id)ds reply:(id)reply
{
  dsCopy = ds;
  replyCopy = reply;
  if ([dsCopy count])
  {
    v18 = replyCopy;
    v7 = +[NSMutableDictionary dictionary];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = dsCopy;
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

    replyCopy = v18;
    (v18)[2](v18, v7);
  }

  else
  {
    replyCopy[2](replyCopy, 0);
  }
}

- (void)checkForDiscoveredLanguages:(id)languages
{
  v4 = _Block_copy(languages);
  _Block_copy(v4);
  selfCopy = self;
  sub_100003BC4(v4);
  _Block_release(v4);
  _Block_release(v4);
}

@end