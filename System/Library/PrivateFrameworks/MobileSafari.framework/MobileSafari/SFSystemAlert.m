@interface SFSystemAlert
+ (id)_displayNameForBundleID:(id)a3;
+ (id)readingListAlertForDomain:(id)a3 appBundleID:(id)a4;
+ (id)searchEngineSettingAlert;
+ (id)sharedTabGroupsManateeAlert;
+ (id)webAuthenticationAlertForDomain:(id)a3 appBundleID:(id)a4;
- (SFSystemAlert)initWithTitle:(id)a3 message:(id)a4 affirmativeButtonTitle:(id)a5 negativeButtonTitle:(id)a6 alternateButtonTitle:(id)a7;
- (void)cancel;
- (void)dealloc;
- (void)scheduleWithCompletionBlock:(id)a3;
@end

@implementation SFSystemAlert

- (SFSystemAlert)initWithTitle:(id)a3 message:(id)a4 affirmativeButtonTitle:(id)a5 negativeButtonTitle:(id)a6 alternateButtonTitle:(id)a7
{
  v21 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = SFSystemAlert;
  v17 = [(SFSystemAlert *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_title, a3);
    objc_storeStrong(&v18->_message, a4);
    objc_storeStrong(&v18->_affirmativeButtonTitle, a5);
    objc_storeStrong(&v18->_negativeButtonTitle, a6);
    objc_storeStrong(&v18->_alternateButtonTitle, a7);
    v19 = v18;
  }

  return v18;
}

+ (id)_displayNameForBundleID:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E6963678] pluginKitProxyForIdentifier:v3];
  v5 = [v4 containingBundle];

  v6 = MEMORY[0x1E69635E0];
  v7 = [v5 bundleIdentifier];
  v8 = [v6 applicationProxyForIdentifier:v7];

  v9 = [v8 localizedShortName];
  if ([v9 length])
  {
    v10 = [v8 localizedShortName];
  }

  else
  {
    v11 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v3];
    v10 = [v11 localizedShortName];
  }

  return v10;
}

+ (id)webAuthenticationAlertForDomain:(id)a3 appBundleID:(id)a4
{
  v5 = a3;
  v6 = [SFSystemAlert _displayNameForBundleID:a4];
  v7 = [SFSystemAlert alloc];
  v8 = MEMORY[0x1E696AEC0];
  v9 = _WBSLocalizedString();
  v10 = [v8 stringWithFormat:v9, v6, v5];

  v11 = _WBSLocalizedString();
  v12 = _WBSLocalizedString();
  v13 = _WBSLocalizedString();
  v14 = [(SFSystemAlert *)v7 initWithTitle:v10 message:v11 affirmativeButtonTitle:v12 negativeButtonTitle:v13];

  return v14;
}

+ (id)readingListAlertForDomain:(id)a3 appBundleID:(id)a4
{
  v5 = a3;
  v6 = [SFSystemAlert _displayNameForBundleID:a4];
  v7 = [v5 safari_bestURLForUserTypedString];

  v8 = [v7 host];
  v9 = [v8 safari_highLevelDomainFromHost];

  v10 = [SFSystemAlert alloc];
  v11 = MEMORY[0x1E696AEC0];
  v12 = _WBSLocalizedStringWithCurrentUserLocale();
  v13 = [v11 stringWithFormat:v12, v9];
  v14 = MEMORY[0x1E696AEC0];
  v15 = _WBSLocalizedStringWithCurrentUserLocale();
  v16 = [v14 stringWithFormat:v15, v6];
  v17 = _WBSLocalizedStringWithCurrentUserLocale();
  v18 = _WBSLocalizedStringWithCurrentUserLocale();
  v19 = [(SFSystemAlert *)v10 initWithTitle:v13 message:v16 affirmativeButtonTitle:v17 negativeButtonTitle:v18];

  return v19;
}

+ (id)searchEngineSettingAlert
{
  v2 = _WBSLocalizedString();
  v3 = _WBSLocalizedString();
  v4 = _WBSLocalizedString();
  v5 = _WBSLocalizedString();
  v6 = [[SFSystemAlert alloc] initWithTitle:v2 message:v3 affirmativeButtonTitle:v4 negativeButtonTitle:v5];

  return v6;
}

+ (id)sharedTabGroupsManateeAlert
{
  [MEMORY[0x1E69C8880] isAppleAccountBrandingEnabled];
  v2 = _WBSLocalizedString();
  [MEMORY[0x1E69C8880] isAppleAccountBrandingEnabled];
  v3 = _WBSLocalizedString();
  v4 = _WBSLocalizedString();
  v5 = _WBSLocalizedString();
  v6 = [[SFSystemAlert alloc] initWithTitle:v2 message:v3 affirmativeButtonTitle:v5 negativeButtonTitle:v4];

  return v6;
}

- (void)dealloc
{
  [(SFSystemAlert *)self cancel];
  v3.receiver = self;
  v3.super_class = SFSystemAlert;
  [(SFSystemAlert *)&v3 dealloc];
}

- (void)cancel
{
  v3 = activeNotification;
  if (activeNotification == self)
  {
    activeNotification = 0;
  }

  cfNotification = self->_cfNotification;
  if (cfNotification)
  {
    CFUserNotificationCancel(cfNotification);
    CFRelease(self->_cfNotification);
    self->_cfNotification = 0;
  }

  if (self->_cfRunloopSource)
  {
    Main = CFRunLoopGetMain();
    CFRunLoopRemoveSource(Main, self->_cfRunloopSource, *MEMORY[0x1E695E8E0]);
    CFRelease(self->_cfRunloopSource);
    self->_cfRunloopSource = 0;
  }
}

- (void)scheduleWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (activeNotification)
  {
    (*(v4 + 2))(v4, 2);
  }

  else
  {
    v6 = *MEMORY[0x1E695EE98];
    v7 = [MEMORY[0x1E695DF90] dictionary];
    p_title = &self->_title;
    [v7 setObject:self->_title forKeyedSubscript:*MEMORY[0x1E695EE58]];
    if ([(NSString *)self->_message length])
    {
      [v7 setObject:self->_message forKeyedSubscript:*MEMORY[0x1E695EE60]];
    }

    [v7 setObject:self->_negativeButtonTitle forKeyedSubscript:*MEMORY[0x1E695EE70]];
    [v7 setObject:self->_affirmativeButtonTitle forKeyedSubscript:v6];
    if ([(NSString *)self->_alternateButtonTitle length])
    {
      [v7 setObject:self->_alternateButtonTitle forKeyedSubscript:*MEMORY[0x1E695EE78]];
    }

    error = 0;
    v9 = CFUserNotificationCreate(0, 0.0, 0x23uLL, &error, v7);
    self->_cfNotification = v9;
    if (v9)
    {
      self->_cfRunloopSource = CFUserNotificationCreateRunLoopSource(0, v9, SFUserNotificationRunLoopSourceCallback, 0);
      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, self->_cfRunloopSource, *MEMORY[0x1E695E8E0]);
      v11 = _Block_copy(v5);
      completionBlock = self->_completionBlock;
      self->_completionBlock = v11;

      objc_storeStrong(&activeNotification, self);
    }

    else
    {
      v13 = WBS_LOG_CHANNEL_PREFIXViewService();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(SFSystemAlert *)p_title scheduleWithCompletionBlock:v13];
      }

      v5[2](v5, 2);
    }
  }
}

- (void)scheduleWithCompletionBlock:(os_log_t)log .cold.1(uint64_t *a1, int *a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *a2;
  v5 = 138412546;
  v6 = v3;
  v7 = 1024;
  v8 = v4;
  _os_log_error_impl(&dword_18B7AC000, log, OS_LOG_TYPE_ERROR, "Fail to create the system alert with title %@ and error code %d", &v5, 0x12u);
}

@end