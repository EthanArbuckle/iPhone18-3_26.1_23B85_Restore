@interface DEDFollowUpNotifier
+ (void)forceRemoveNotificationWithIdentifier:(id)identifier hostIdentifier:(id)hostIdentifier;
- (DEDFollowUpNotifier)initWithCoder:(id)coder;
- (DEDFollowUpNotifier)initWithConfiguration:(id)configuration session:(id)session;
- (DEDNotifierConfiguration)config;
- (id)identifier;
- (void)encodeWithCoder:(id)coder;
- (void)presentNotificationForSession:(id)session;
- (void)removeNotificationForSession:(id)session;
@end

@implementation DEDFollowUpNotifier

- (DEDFollowUpNotifier)initWithConfiguration:(id)configuration session:(id)session
{
  configurationCopy = configuration;
  sessionCopy = session;
  v18.receiver = self;
  v18.super_class = DEDFollowUpNotifier;
  v8 = [(DEDFollowUpNotifier *)&v18 init];
  if (v8)
  {
    notifierConfiguration = [configurationCopy notifierConfiguration];
    objc_storeWeak(&v8->_config, notifierConfiguration);

    identifier = [sessionCopy identifier];
    bugSessionIdentifier = v8->_bugSessionIdentifier;
    v8->_bugSessionIdentifier = identifier;

    v12 = objc_alloc(MEMORY[0x277CFE500]);
    config = [(DEDFollowUpNotifier *)v8 config];
    hostAppIdentifier = [config hostAppIdentifier];
    v15 = [v12 initWithClientIdentifier:hostAppIdentifier];
    followUpController = v8->_followUpController;
    v8->_followUpController = v15;
  }

  return v8;
}

- (id)identifier
{
  config = [(DEDFollowUpNotifier *)self config];
  followupUniqueIdentifier = [config followupUniqueIdentifier];

  return followupUniqueIdentifier;
}

- (void)presentNotificationForSession:(id)session
{
  v74 = *MEMORY[0x277D85DE8];
  identifier = [(DEDFollowUpNotifier *)self identifier];
  v5 = Log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    bugSessionIdentifier = [(DEDFollowUpNotifier *)self bugSessionIdentifier];
    *buf = 138543618;
    v71 = identifier;
    v72 = 2114;
    v73 = bugSessionIdentifier;
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "Scheduling followup notification: %{public}@ for session [%{public}@]", buf, 0x16u);
  }

  v7 = objc_opt_new();
  v67 = identifier;
  [v7 setUniqueIdentifier:identifier];
  config = [(DEDFollowUpNotifier *)self config];
  followupLocalizedTitle = [config followupLocalizedTitle];
  [v7 setTitle:followupLocalizedTitle];

  config2 = [(DEDFollowUpNotifier *)self config];
  followupLocalizedInformativeText = [config2 followupLocalizedInformativeText];
  [v7 setInformativeText:followupLocalizedInformativeText];

  [v7 setDisplayStyle:1];
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  config3 = [(DEDFollowUpNotifier *)self config];
  reviewActionLabel = [config3 reviewActionLabel];

  if (reviewActionLabel)
  {
    v15 = MEMORY[0x277CFE4F8];
    config4 = [(DEDFollowUpNotifier *)self config];
    reviewActionLabel2 = [config4 reviewActionLabel];
    config5 = [(DEDFollowUpNotifier *)self config];
    followupReviewActionURL = [config5 followupReviewActionURL];
    v20 = [v15 actionWithLabel:reviewActionLabel2 url:followupReviewActionURL];

    config6 = [(DEDFollowUpNotifier *)self config];
    followupReviewActionUserInfo = [config6 followupReviewActionUserInfo];

    if (followupReviewActionUserInfo)
    {
      config7 = [(DEDFollowUpNotifier *)self config];
      followupReviewActionUserInfo2 = [config7 followupReviewActionUserInfo];
      [v20 setUserInfo:followupReviewActionUserInfo2];
    }

    [v12 addObject:v20];
  }

  config8 = [(DEDFollowUpNotifier *)self config];
  sendActionLabel = [config8 sendActionLabel];

  if (sendActionLabel)
  {
    v27 = MEMORY[0x277CFE4F8];
    config9 = [(DEDFollowUpNotifier *)self config];
    sendActionLabel2 = [config9 sendActionLabel];
    config10 = [(DEDFollowUpNotifier *)self config];
    followupSendActionURL = [config10 followupSendActionURL];
    v32 = [v27 actionWithLabel:sendActionLabel2 url:followupSendActionURL];

    config11 = [(DEDFollowUpNotifier *)self config];
    followupSendActionUserInfo = [config11 followupSendActionUserInfo];

    if (followupSendActionUserInfo)
    {
      config12 = [(DEDFollowUpNotifier *)self config];
      followupSendActionUserInfo2 = [config12 followupSendActionUserInfo];
      [v32 setUserInfo:followupSendActionUserInfo2];
    }

    [v12 addObject:v32];
  }

  [v7 setActions:v12];
  config13 = [(DEDFollowUpNotifier *)self config];
  followupExtensionIdentifier = [config13 followupExtensionIdentifier];

  if (followupExtensionIdentifier)
  {
    config14 = [(DEDFollowUpNotifier *)self config];
    followupExtensionIdentifier2 = [config14 followupExtensionIdentifier];
    [v7 setExtensionIdentifier:followupExtensionIdentifier2];
  }

  v41 = objc_opt_new();
  config15 = [(DEDFollowUpNotifier *)self config];
  localizedNotificationTitle = [config15 localizedNotificationTitle];
  [v41 setTitle:localizedNotificationTitle];

  config16 = [(DEDFollowUpNotifier *)self config];
  localizedNotificationBody = [config16 localizedNotificationBody];
  [v41 setInformativeText:localizedNotificationBody];

  v46 = [MEMORY[0x277CBEB58] setWithObjects:{*MEMORY[0x277CFE498], *MEMORY[0x277CFE4A0], 0}];
  config17 = [(DEDFollowUpNotifier *)self config];
  followupUseSpringboardNotification = [config17 followupUseSpringboardNotification];

  if (followupUseSpringboardNotification)
  {
    [v46 addObject:*MEMORY[0x277CFE4A8]];
  }

  config18 = [(DEDFollowUpNotifier *)self config];
  followupNotificationActionURL = [config18 followupNotificationActionURL];
  if (!followupNotificationActionURL)
  {
    goto LABEL_18;
  }

  v51 = followupNotificationActionURL;
  config19 = [(DEDFollowUpNotifier *)self config];
  followupNotificationActionTitle = [config19 followupNotificationActionTitle];

  if (followupNotificationActionTitle)
  {
    v54 = MEMORY[0x277CFE4F8];
    config18 = [(DEDFollowUpNotifier *)self config];
    followupNotificationActionTitle2 = [config18 followupNotificationActionTitle];
    config20 = [(DEDFollowUpNotifier *)self config];
    followupNotificationActionURL2 = [config20 followupNotificationActionURL];
    v58 = [v54 actionWithLabel:followupNotificationActionTitle2 url:followupNotificationActionURL2];
    [v41 setActivateAction:v58];

LABEL_18:
  }

  [v41 setOptions:v46];
  config21 = [(DEDFollowUpNotifier *)self config];
  [config21 followupFrequency];
  [v41 setFrequency:?];

  [v41 setFirstNotificationDelay:0.0];
  config22 = [(DEDFollowUpNotifier *)self config];
  followupNotificationBundlePath = [config22 followupNotificationBundlePath];
  [v7 setRepresentingBundlePath:followupNotificationBundlePath];

  config23 = [(DEDFollowUpNotifier *)self config];
  followupNotificationBundleIconName = [config23 followupNotificationBundleIconName];
  [v7 setBundleIconName:followupNotificationBundleIconName];

  [v7 setNotification:v41];
  followUpController = [(DEDFollowUpNotifier *)self followUpController];
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __53__DEDFollowUpNotifier_presentNotificationForSession___block_invoke;
  v68[3] = &unk_278F657E0;
  v69 = v67;
  v65 = v67;
  [followUpController postFollowUpItem:v7 completion:v68];

  v66 = *MEMORY[0x277D85DE8];
}

void __53__DEDFollowUpNotifier_presentNotificationForSession___block_invoke(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = Log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v17 = 138543362;
      v18 = v7;
      _os_log_impl(&dword_248AD7000, v6, OS_LOG_TYPE_DEFAULT, "Followup item posted: %{public}@", &v17, 0xCu);
    }
  }

  else
  {
    v6 = Log();
    v8 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      if (v8)
      {
        __53__DEDFollowUpNotifier_presentNotificationForSession___block_invoke_cold_1(v5, v6);
      }
    }

    else if (v8)
    {
      __53__DEDFollowUpNotifier_presentNotificationForSession___block_invoke_cold_2(v6, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)removeNotificationForSession:(id)session
{
  v25 = *MEMORY[0x277D85DE8];
  identifier = [(DEDFollowUpNotifier *)self identifier];
  v5 = Log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    bugSessionIdentifier = [(DEDFollowUpNotifier *)self bugSessionIdentifier];
    *buf = 138543618;
    v22 = identifier;
    v23 = 2114;
    v24 = bugSessionIdentifier;
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "Cancelling followup notification: %{public}@ for bug session [%{public}@]", buf, 0x16u);
  }

  followUpController = [(DEDFollowUpNotifier *)self followUpController];
  v20 = identifier;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  v19 = 0;
  [followUpController clearPendingFollowUpItemsWithUniqueIdentifiers:v8 error:&v19];
  v9 = v19;

  if (v9)
  {
    v10 = Log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(DEDFollowUpNotifier *)v10 removeNotificationForSession:v11, v12, v13, v14, v15, v16, v17];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  config = [(DEDFollowUpNotifier *)self config];
  [coderCopy encodeObject:config forKey:@"config"];

  bugSessionIdentifier = [(DEDFollowUpNotifier *)self bugSessionIdentifier];
  [coderCopy encodeObject:bugSessionIdentifier forKey:@"bugSessionIdentifier"];
}

- (DEDFollowUpNotifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = DEDFollowUpNotifier;
  v5 = [(DEDFollowUpNotifier *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"config"];
    objc_storeWeak(&v5->_config, v6);

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bugSessionIdentifier"];
    bugSessionIdentifier = v5->_bugSessionIdentifier;
    v5->_bugSessionIdentifier = v7;

    v9 = objc_alloc(MEMORY[0x277CFE500]);
    config = [(DEDFollowUpNotifier *)v5 config];
    hostAppIdentifier = [config hostAppIdentifier];
    v12 = [v9 initWithClientIdentifier:hostAppIdentifier];
    followUpController = v5->_followUpController;
    v5->_followUpController = v12;
  }

  return v5;
}

+ (void)forceRemoveNotificationWithIdentifier:(id)identifier hostIdentifier:(id)hostIdentifier
{
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  hostIdentifierCopy = hostIdentifier;
  v7 = Log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v24 = identifierCopy;
    v25 = 2114;
    v26 = hostIdentifierCopy;
    _os_log_impl(&dword_248AD7000, v7, OS_LOG_TYPE_DEFAULT, "Will force remove notification with identifier [%{public}@] for app [%{public}@]", buf, 0x16u);
  }

  v8 = [objc_alloc(MEMORY[0x277CFE500]) initWithClientIdentifier:hostIdentifierCopy];
  v22 = identifierCopy;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
  v21 = 0;
  [v8 clearPendingFollowUpItemsWithUniqueIdentifiers:v9 error:&v21];
  v10 = v21;

  v11 = Log();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(DEDFollowUpNotifier *)v12 removeNotificationForSession:v13, v14, v15, v16, v17, v18, v19];
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v24 = identifierCopy;
    v25 = 2114;
    v26 = hostIdentifierCopy;
    _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "Removed notification with identifier [%{public}@] for app [%{public}@]", buf, 0x16u);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (DEDNotifierConfiguration)config
{
  WeakRetained = objc_loadWeakRetained(&self->_config);

  return WeakRetained;
}

void __53__DEDFollowUpNotifier_presentNotificationForSession___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_248AD7000, a2, OS_LOG_TYPE_ERROR, "Followup item was not posted.\n[error info] %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end