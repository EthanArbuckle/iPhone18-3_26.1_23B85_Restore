@interface CKAppInstallation
- (BOOL)installed;
- (CKAppInstallation)initWithBundleIdentifier:(id)a3;
- (CKAppInstallation)initWithBundleIdentifier:(id)a3 startTime:(double)a4;
- (NSString)localizedDisplayName;
- (NSString)pluginBundleIdentifier;
- (UIImage)icon;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)setProxy:(id)a3;
@end

@implementation CKAppInstallation

- (CKAppInstallation)initWithBundleIdentifier:(id)a3
{
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  v6 = [v4 date];
  [v6 timeIntervalSinceReferenceDate];
  v7 = [(CKAppInstallation *)self initWithBundleIdentifier:v5 startTime:?];

  return v7;
}

- (CKAppInstallation)initWithBundleIdentifier:(id)a3 startTime:(double)a4
{
  v7 = a3;
  if (v7)
  {
    v16.receiver = self;
    v16.super_class = CKAppInstallation;
    v8 = [(CKAppInstallation *)&v16 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_bundleIdentifier, a3);
      v10 = MEMORY[0x1E69635E0];
      v11 = [(CKAppInstallation *)v9 bundleIdentifier];
      v12 = [v10 applicationProxyForIdentifier:v11];
      proxy = v9->_proxy;
      v9->_proxy = v12;

      v9->_startTime = a4;
      if (!v9->_proxy)
      {

        v9 = 0;
      }
    }

    self = v9;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CKAppInstallation alloc];
  v5 = [(CKAppInstallation *)self bundleIdentifier];
  v6 = [(CKAppInstallation *)v4 initWithBundleIdentifier:v5];

  [(CKAppInstallation *)self percentComplete];
  [v6 setPercentComplete:?];
  *(v6 + 40) = self->_installState;
  objc_storeStrong((v6 + 24), self->_icon);
  *(v6 + 48) = self->_startTime;
  return v6;
}

- (NSString)pluginBundleIdentifier
{
  v2 = [(CKAppInstallation *)self proxy];
  v3 = [v2 __ck_messagesPluginKitProxy];
  v4 = [v3 bundleIdentifier];

  return v4;
}

- (NSString)localizedDisplayName
{
  v2 = [(CKAppInstallation *)self proxy];
  v3 = [v2 localizedName];

  return v3;
}

- (void)setProxy:(id)a3
{
  v5 = a3;
  if (self->_proxy != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_proxy, a3);
    icon = self->_icon;
    self->_icon = 0;

    v5 = v7;
  }
}

- (BOOL)installed
{
  v2 = [(CKAppInstallation *)self proxy];
  v3 = [v2 isInstalled];

  return v3;
}

- (UIImage)icon
{
  v16 = *MEMORY[0x1E69E9840];
  if (!self->_icon)
  {
    v3 = [(CKAppInstallation *)self proxy];
    v4 = [v3 __ck_messagesPluginKitProxy];
    v5 = [v4 __ck_icon];
    icon = self->_icon;
    self->_icon = v5;

    if (!self->_icon)
    {
      v7 = [(CKAppInstallation *)self proxy];
      v8 = [v7 __ck_icon];
      v9 = self->_icon;
      self->_icon = v8;
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
  v4 = [(CKAppInstallation *)self bundleIdentifier];
  [(CKAppInstallation *)self percentComplete];
  v6 = v5;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CKAppInstallation installState](self, "installState")}];
  v8 = [(CKAppInstallation *)self proxy];
  v9 = [v8 isInstalled];
  v10 = @"NO";
  if (v9)
  {
    v10 = @"YES";
  }

  v11 = [v3 stringWithFormat:@"CKAppInstallation[%@, %f%% complete, install state=%@, installed=%@, icon=%@]", v4, v6, v7, v10, self->_icon];

  return v11;
}

@end