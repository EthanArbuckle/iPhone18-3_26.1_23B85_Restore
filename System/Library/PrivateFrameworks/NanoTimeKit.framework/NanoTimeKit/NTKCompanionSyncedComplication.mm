@interface NTKCompanionSyncedComplication
- (NSString)localizedName;
- (NTKCompanionSyncedComplication)initWithRemoteApplication:(id)application descriptor:(id)descriptor;
@end

@implementation NTKCompanionSyncedComplication

- (NTKCompanionSyncedComplication)initWithRemoteApplication:(id)application descriptor:(id)descriptor
{
  applicationCopy = application;
  descriptorCopy = descriptor;
  v21.receiver = self;
  v21.super_class = NTKCompanionSyncedComplication;
  v8 = [(NTKCompanionSyncedComplication *)&v21 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_descriptor, descriptor);
    watchKitAppExtensionBundleID = [applicationCopy watchKitAppExtensionBundleID];
    v11 = watchKitAppExtensionBundleID;
    if (watchKitAppExtensionBundleID)
    {
      bundleIdentifier = watchKitAppExtensionBundleID;
    }

    else
    {
      bundleIdentifier = [applicationCopy bundleIdentifier];
    }

    clientIdentifier = v9->_clientIdentifier;
    v9->_clientIdentifier = bundleIdentifier;

    bundleIdentifier2 = [applicationCopy bundleIdentifier];
    appBundleIdentifier = v9->_appBundleIdentifier;
    v9->_appBundleIdentifier = bundleIdentifier2;

    companionAppBundleID = [applicationCopy companionAppBundleID];
    companionBundleIdentifier = v9->_companionBundleIdentifier;
    v9->_companionBundleIdentifier = companionAppBundleID;

    applicationName = [applicationCopy applicationName];
    fallbackName = v9->_fallbackName;
    v9->_fallbackName = applicationName;
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
      selfCopy = self;
      v21 = 2114;
      v22 = v9;
      _os_log_error_impl(&dword_22D9C5000, v13, OS_LOG_TYPE_ERROR, "Manager could not find record with bundle ID %@ for complication %@ - %{public}@", buf, 0x20u);
    }

    goto LABEL_7;
  }

  localizedName = [v8 localizedName];
  v11 = *p_localizedName;
  *p_localizedName = localizedName;

  if (![*p_localizedName length])
  {
    localizedShortName = [v8 localizedShortName];
    v13 = *p_localizedName;
    *p_localizedName = localizedShortName;
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