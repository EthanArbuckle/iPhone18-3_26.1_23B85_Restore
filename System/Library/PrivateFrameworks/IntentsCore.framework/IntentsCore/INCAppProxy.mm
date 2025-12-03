@interface INCAppProxy
+ (BOOL)shouldLaunchAppInBackgroundWithIntent:(id)intent intentResponse:(id)response;
+ (void)initialize;
- (INCExtensionConnection)_connection;
- (id)_initWithConnection:(id)connection;
@end

@implementation INCAppProxy

- (INCExtensionConnection)_connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (id)_initWithConnection:(id)connection
{
  connectionCopy = connection;
  v8.receiver = self;
  v8.super_class = INCAppProxy;
  v5 = [(INCAppProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_connection, connectionCopy);
  }

  return v6;
}

void __112__INCAppProxy_launchAppInBackground_restrictAppsToCarPlay_userActivityIdentifier_retainsSiri_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *MEMORY[0x277CD38C8];
  v7 = *MEMORY[0x277CD38C8];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v12 = 136315394;
      v13 = "[INCAppProxy launchAppInBackground:restrictAppsToCarPlay:userActivityIdentifier:retainsSiri:completionHandler:]_block_invoke";
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_255503000, v6, OS_LOG_TYPE_INFO, "%s Successfully performed launch request %@", &v12, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v11 = *(a1 + 32);
    v12 = 136315650;
    v13 = "[INCAppProxy launchAppInBackground:restrictAppsToCarPlay:userActivityIdentifier:retainsSiri:completionHandler:]_block_invoke";
    v14 = 2112;
    v15 = v11;
    v16 = 2114;
    v17 = v5;
    _os_log_error_impl(&dword_255503000, v6, OS_LOG_TYPE_ERROR, "%s Failed to perform launch request %@: %{public}@", &v12, 0x20u);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (BOOL)shouldLaunchAppInBackgroundWithIntent:(id)intent intentResponse:(id)response
{
  v53 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  responseCopy = response;
  v7 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = "+[INCAppProxy shouldLaunchAppInBackgroundWithIntent:intentResponse:]";
    _os_log_impl(&dword_255503000, v7, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  initAndWaitUntilSessionUpdated = [objc_alloc(getCARSessionStatusClass()) initAndWaitUntilSessionUpdated];
  currentSession = [initAndWaitUntilSessionUpdated currentSession];

  v10 = currentSession != 0;
  configuration = [currentSession configuration];
  videoPlaybackSupported = [configuration videoPlaybackSupported];

  v13 = INIsDeviceLocked();
  if (v13 & 1 | (currentSession != 0))
  {
    _intents_bundleIdForLaunching = [intentCopy _intents_bundleIdForLaunching];
    objc_opt_class();
    if ((v13 & videoPlaybackSupported & objc_opt_isKindOfClass()) == 1 && ![INCCarPlayUtils appIsSupportedInCarPlayWithBundleId:_intents_bundleIdForLaunching hasPayload:1])
    {
      v10 = 1;
LABEL_51:

      goto LABEL_52;
    }

    v14 = intentCopy;
    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v42 = v15;

      v16 = v14;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;

      v19 = v16;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v18 = 0;
      v42 = 0;
      v20 = 0;
    }

    v21 = v20;

    if (!(v42 | v18) && !v21)
    {
      v10 = 0;
LABEL_50:

      goto LABEL_51;
    }

    v46 = 0;
    v47 = &v46;
    v48 = 0x2050000000;
    v22 = getTUCallProviderManagerClass_softClass;
    v49 = getTUCallProviderManagerClass_softClass;
    if (!getTUCallProviderManagerClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getTUCallProviderManagerClass_block_invoke;
      v51 = &unk_2797E8190;
      v52 = &v46;
      __getTUCallProviderManagerClass_block_invoke(buf);
      v22 = v47[3];
    }

    v23 = v22;
    _Block_object_dispose(&v46, 8);
    v41 = objc_alloc_init(v22);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __68__INCAppProxy_shouldLaunchAppInBackgroundWithIntent_intentResponse___block_invoke;
    v44[3] = &unk_2797E7A10;
    v24 = _intents_bundleIdForLaunching;
    v45 = v24;
    v25 = [v41 providersPassingTest:v44];
    firstObject = [v25 firstObject];

    if (!firstObject)
    {
      v27 = *MEMORY[0x277CD38C8];
      if (!os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_FAULT))
      {
        goto LABEL_49;
      }

      *buf = 136315394;
      *&buf[4] = "+[INCAppProxy shouldLaunchAppInBackgroundWithIntent:intentResponse:]";
      *&buf[12] = 2114;
      *&buf[14] = v24;
      v28 = "%s Calling intent has an unknown call provider (%{public}@), preventing us from determining if the app should be launched in the background";
      v29 = v27;
      v30 = 22;
LABEL_29:
      _os_log_fault_impl(&dword_255503000, v29, OS_LOG_TYPE_FAULT, v28, buf, v30);
      goto LABEL_49;
    }

    if ([firstObject isSystemProvider])
    {
LABEL_25:
      v10 = 1;
LABEL_49:

      goto LABEL_50;
    }

    if ([responseCopy _intentResponseCode] == 6)
    {
      v31 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        *&buf[4] = "+[INCAppProxy shouldLaunchAppInBackgroundWithIntent:intentResponse:]";
        _os_log_impl(&dword_255503000, v31, OS_LOG_TYPE_INFO, "%s Call intent failed requiring app launch, launching app in the foreground", buf, 0xCu);
      }

      v10 = 0;
      goto LABEL_49;
    }

    if (v42 | v18)
    {
      if (v42)
      {
        v32 = v42;
      }

      else
      {
        v32 = v18;
      }

      destinationType = [v32 destinationType];
      v34 = destinationType;
      if (destinationType == 3)
      {
        supportsVoicemail = [firstObject supportsVoicemail];
        goto LABEL_48;
      }

      if (destinationType == 2)
      {
        supportsVoicemail = [firstObject supportsEmergency];
        goto LABEL_48;
      }

      if (v42)
      {
        callCapability = [v42 callCapability];
        v36 = callCapability;
        if (callCapability != 2)
        {
          if (callCapability != 1)
          {
            goto LABEL_45;
          }

LABEL_58:
          if ([firstObject supportsAudioOnly])
          {
            goto LABEL_25;
          }

          supportsVoicemail = [firstObject supportsAudioAndVideo];
LABEL_48:
          v10 = supportsVoicemail;
          goto LABEL_49;
        }

LABEL_43:
        supportsVoicemail = [firstObject supportsAudioAndVideo];
        goto LABEL_48;
      }

      if (v18)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v34 = 0;
    }

    if (!v21)
    {
      v36 = 0;
LABEL_45:
      v37 = *MEMORY[0x277CD38C8];
      if (!os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_FAULT))
      {
        goto LABEL_49;
      }

      *buf = 136315650;
      *&buf[4] = "+[INCAppProxy shouldLaunchAppInBackgroundWithIntent:intentResponse:]";
      *&buf[12] = 2048;
      *&buf[14] = v34;
      *&buf[22] = 2048;
      v51 = v36;
      v28 = "%s Calling intent had an unknown call destination (%lu) and/or an unknown call capability (%lu), preventing us from determining if the app should be launched in the background.";
      v29 = v37;
      v30 = 32;
      goto LABEL_29;
    }

    goto LABEL_43;
  }

  v10 = 0;
LABEL_52:

  v38 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __68__INCAppProxy_shouldLaunchAppInBackgroundWithIntent_intentResponse___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    INLogInitIfNeeded();
  }
}

@end