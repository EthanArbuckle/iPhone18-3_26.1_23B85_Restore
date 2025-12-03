@interface CKAppInstallation
- (BOOL)installed;
- (CKAppInstallation)initWithBundleIdentifier:(id)identifier;
- (CKAppInstallation)initWithBundleIdentifier:(id)identifier startTime:(double)time;
- (NSString)localizedDisplayName;
- (NSString)pluginBundleIdentifier;
- (UIImage)icon;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)setProxy:(id)proxy;
@end

@implementation CKAppInstallation

- (CKAppInstallation)initWithBundleIdentifier:(id)identifier
{
  v4 = MEMORY[0x1E695DF00];
  identifierCopy = identifier;
  date = [v4 date];
  [date timeIntervalSinceReferenceDate];
  v7 = [(CKAppInstallation *)self initWithBundleIdentifier:identifierCopy startTime:?];

  return v7;
}

- (CKAppInstallation)initWithBundleIdentifier:(id)identifier startTime:(double)time
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v16.receiver = self;
    v16.super_class = CKAppInstallation;
    v8 = [(CKAppInstallation *)&v16 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_bundleIdentifier, identifier);
      v10 = MEMORY[0x1E69635E0];
      bundleIdentifier = [(CKAppInstallation *)v9 bundleIdentifier];
      v12 = [v10 applicationProxyForIdentifier:bundleIdentifier];
      proxy = v9->_proxy;
      v9->_proxy = v12;

      v9->_startTime = time;
      if (!v9->_proxy)
      {

        v9 = 0;
      }
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CKAppInstallation alloc];
  bundleIdentifier = [(CKAppInstallation *)self bundleIdentifier];
  v6 = [(CKAppInstallation *)v4 initWithBundleIdentifier:bundleIdentifier];

  [(CKAppInstallation *)self percentComplete];
  [v6 setPercentComplete:?];
  *(v6 + 40) = self->_installState;
  objc_storeStrong((v6 + 24), self->_icon);
  *(v6 + 48) = self->_startTime;
  return v6;
}

- (NSString)pluginBundleIdentifier
{
  proxy = [(CKAppInstallation *)self proxy];
  __ck_messagesPluginKitProxy = [proxy __ck_messagesPluginKitProxy];
  bundleIdentifier = [__ck_messagesPluginKitProxy bundleIdentifier];

  return bundleIdentifier;
}

- (NSString)localizedDisplayName
{
  proxy = [(CKAppInstallation *)self proxy];
  localizedName = [proxy localizedName];

  return localizedName;
}

- (void)setProxy:(id)proxy
{
  proxyCopy = proxy;
  if (self->_proxy != proxyCopy)
  {
    v7 = proxyCopy;
    objc_storeStrong(&self->_proxy, proxy);
    icon = self->_icon;
    self->_icon = 0;

    proxyCopy = v7;
  }
}

- (BOOL)installed
{
  proxy = [(CKAppInstallation *)self proxy];
  isInstalled = [proxy isInstalled];

  return isInstalled;
}

- (UIImage)icon
{
  v16 = *MEMORY[0x1E69E9840];
  if (!self->_icon)
  {
    proxy = [(CKAppInstallation *)self proxy];
    __ck_messagesPluginKitProxy = [proxy __ck_messagesPluginKitProxy];
    __ck_icon = [__ck_messagesPluginKitProxy __ck_icon];
    icon = self->_icon;
    self->_icon = __ck_icon;

    if (!self->_icon)
    {
      proxy2 = [(CKAppInstallation *)self proxy];
      __ck_icon2 = [proxy2 __ck_icon];
      v9 = self->_icon;
      self->_icon = __ck_icon2;
    }

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = self->_icon;
        v14 = 138412290;
        v15 = v11;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Loaded icon: %@", &v14, 0xCu);
      }
    }
  }

  v12 = self->_icon;

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  bundleIdentifier = [(CKAppInstallation *)self bundleIdentifier];
  [(CKAppInstallation *)self percentComplete];
  v6 = v5;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CKAppInstallation installState](self, "installState")}];
  proxy = [(CKAppInstallation *)self proxy];
  isInstalled = [proxy isInstalled];
  v10 = @"NO";
  if (isInstalled)
  {
    v10 = @"YES";
  }

  v11 = [v3 stringWithFormat:@"CKAppInstallation[%@, %f%% complete, install state=%@, installed=%@, icon=%@]", bundleIdentifier, v6, v7, v10, self->_icon];

  return v11;
}

@end