@interface SFSystemAlert
+ (id)_displayNameForBundleID:(id)d;
+ (id)readingListAlertForDomain:(id)domain appBundleID:(id)d;
+ (id)searchEngineSettingAlert;
+ (id)sharedTabGroupsManateeAlert;
+ (id)webAuthenticationAlertForDomain:(id)domain appBundleID:(id)d;
- (SFSystemAlert)initWithTitle:(id)title message:(id)message affirmativeButtonTitle:(id)buttonTitle negativeButtonTitle:(id)negativeButtonTitle alternateButtonTitle:(id)alternateButtonTitle;
- (void)cancel;
- (void)dealloc;
- (void)scheduleWithCompletionBlock:(id)block;
@end

@implementation SFSystemAlert

- (SFSystemAlert)initWithTitle:(id)title message:(id)message affirmativeButtonTitle:(id)buttonTitle negativeButtonTitle:(id)negativeButtonTitle alternateButtonTitle:(id)alternateButtonTitle
{
  titleCopy = title;
  messageCopy = message;
  buttonTitleCopy = buttonTitle;
  negativeButtonTitleCopy = negativeButtonTitle;
  alternateButtonTitleCopy = alternateButtonTitle;
  v22.receiver = self;
  v22.super_class = SFSystemAlert;
  v17 = [(SFSystemAlert *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_title, title);
    objc_storeStrong(&v18->_message, message);
    objc_storeStrong(&v18->_affirmativeButtonTitle, buttonTitle);
    objc_storeStrong(&v18->_negativeButtonTitle, negativeButtonTitle);
    objc_storeStrong(&v18->_alternateButtonTitle, alternateButtonTitle);
    v19 = v18;
  }

  return v18;
}

+ (id)_displayNameForBundleID:(id)d
{
  dCopy = d;
  v4 = [MEMORY[0x1E6963678] pluginKitProxyForIdentifier:dCopy];
  containingBundle = [v4 containingBundle];

  v6 = MEMORY[0x1E69635E0];
  bundleIdentifier = [containingBundle bundleIdentifier];
  v8 = [v6 applicationProxyForIdentifier:bundleIdentifier];

  localizedShortName = [v8 localizedShortName];
  if ([localizedShortName length])
  {
    localizedShortName2 = [v8 localizedShortName];
  }

  else
  {
    v11 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:dCopy];
    localizedShortName2 = [v11 localizedShortName];
  }

  return localizedShortName2;
}

+ (id)webAuthenticationAlertForDomain:(id)domain appBundleID:(id)d
{
  domainCopy = domain;
  v6 = [SFSystemAlert _displayNameForBundleID:d];
  v7 = [SFSystemAlert alloc];
  v8 = MEMORY[0x1E696AEC0];
  v9 = _WBSLocalizedString();
  domainCopy = [v8 stringWithFormat:v9, v6, domainCopy];

  v11 = _WBSLocalizedString();
  v12 = _WBSLocalizedString();
  v13 = _WBSLocalizedString();
  v14 = [(SFSystemAlert *)v7 initWithTitle:domainCopy message:v11 affirmativeButtonTitle:v12 negativeButtonTitle:v13];

  return v14;
}

+ (id)readingListAlertForDomain:(id)domain appBundleID:(id)d
{
  domainCopy = domain;
  v6 = [SFSystemAlert _displayNameForBundleID:d];
  safari_bestURLForUserTypedString = [domainCopy safari_bestURLForUserTypedString];

  host = [safari_bestURLForUserTypedString host];
  safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];

  v10 = [SFSystemAlert alloc];
  v11 = MEMORY[0x1E696AEC0];
  v12 = _WBSLocalizedStringWithCurrentUserLocale();
  v13 = [v11 stringWithFormat:v12, safari_highLevelDomainFromHost];
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

- (void)scheduleWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (activeNotification)
  {
    (*(blockCopy + 2))(blockCopy, 2);
  }

  else
  {
    v6 = *MEMORY[0x1E695EE98];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    p_title = &self->_title;
    [dictionary setObject:self->_title forKeyedSubscript:*MEMORY[0x1E695EE58]];
    if ([(NSString *)self->_message length])
    {
      [dictionary setObject:self->_message forKeyedSubscript:*MEMORY[0x1E695EE60]];
    }

    [dictionary setObject:self->_negativeButtonTitle forKeyedSubscript:*MEMORY[0x1E695EE70]];
    [dictionary setObject:self->_affirmativeButtonTitle forKeyedSubscript:v6];
    if ([(NSString *)self->_alternateButtonTitle length])
    {
      [dictionary setObject:self->_alternateButtonTitle forKeyedSubscript:*MEMORY[0x1E695EE78]];
    }

    error = 0;
    v9 = CFUserNotificationCreate(0, 0.0, 0x23uLL, &error, dictionary);
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