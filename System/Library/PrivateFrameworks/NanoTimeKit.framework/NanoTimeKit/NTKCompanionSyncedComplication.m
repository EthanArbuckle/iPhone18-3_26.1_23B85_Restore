@interface NTKCompanionSyncedComplication
- (NSString)localizedName;
- (NTKCompanionSyncedComplication)initWithRemoteApplication:(id)a3 descriptor:(id)a4;
@end

@implementation NTKCompanionSyncedComplication

- (NTKCompanionSyncedComplication)initWithRemoteApplication:(id)a3 descriptor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = NTKCompanionSyncedComplication;
  v8 = [(NTKCompanionSyncedComplication *)&v21 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_descriptor, a4);
    v10 = [v6 watchKitAppExtensionBundleID];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [v6 bundleIdentifier];
    }

    clientIdentifier = v9->_clientIdentifier;
    v9->_clientIdentifier = v12;

    v14 = [v6 bundleIdentifier];
    appBundleIdentifier = v9->_appBundleIdentifier;
    v9->_appBundleIdentifier = v14;

    v16 = [v6 companionAppBundleID];
    companionBundleIdentifier = v9->_companionBundleIdentifier;
    v9->_companionBundleIdentifier = v16;

    v18 = [v6 applicationName];
    fallbackName = v9->_fallbackName;
    v9->_fallbackName = v18;
  }

  return v9;
}

- (NSString)localizedName
{
  v23 = *MEMORY[0x277D85DE8];
  p_localizedName = &self->_localizedName;
  localizedName = self->_localizedName;
  if (localizedName)
  {
    goto LABEL_11;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x277CC1E70]);
  companionBundleIdentifier = self->_companionBundleIdentifier;
  v16 = 0;
  v8 = [v6 initWithBundleIdentifier:companionBundleIdentifier allowPlaceholder:1 error:&v16];
  v9 = v16;
  if (!v8)
  {
    v13 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = self->_companionBundleIdentifier;
      *buf = 138412802;
      v18 = v15;
      v19 = 2112;
      v20 = self;
      v21 = 2114;
      v22 = v9;
      _os_log_error_impl(&dword_22D9C5000, v13, OS_LOG_TYPE_ERROR, "Manager could not find record with bundle ID %@ for complication %@ - %{public}@", buf, 0x20u);
    }

    goto LABEL_7;
  }

  v10 = [v8 localizedName];
  v11 = *p_localizedName;
  *p_localizedName = v10;

  if (![*p_localizedName length])
  {
    v12 = [v8 localizedShortName];
    v13 = *p_localizedName;
    *p_localizedName = v12;
LABEL_7:
  }

  objc_autoreleasePoolPop(v5);
  if (![*p_localizedName length])
  {
    objc_storeStrong(p_localizedName, self->_fallbackName);
  }

  localizedName = *p_localizedName;
LABEL_11:

  return localizedName;
}

@end