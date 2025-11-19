@interface DEDFollowUpNotifier
+ (void)forceRemoveNotificationWithIdentifier:(id)a3 hostIdentifier:(id)a4;
- (DEDFollowUpNotifier)initWithCoder:(id)a3;
- (DEDFollowUpNotifier)initWithConfiguration:(id)a3 session:(id)a4;
- (DEDNotifierConfiguration)config;
- (id)identifier;
- (void)encodeWithCoder:(id)a3;
- (void)presentNotificationForSession:(id)a3;
- (void)removeNotificationForSession:(id)a3;
@end

@implementation DEDFollowUpNotifier

- (DEDFollowUpNotifier)initWithConfiguration:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = DEDFollowUpNotifier;
  v8 = [(DEDFollowUpNotifier *)&v18 init];
  if (v8)
  {
    v9 = [v6 notifierConfiguration];
    objc_storeWeak(&v8->_config, v9);

    v10 = [v7 identifier];
    bugSessionIdentifier = v8->_bugSessionIdentifier;
    v8->_bugSessionIdentifier = v10;

    v12 = objc_alloc(MEMORY[0x277CFE500]);
    v13 = [(DEDFollowUpNotifier *)v8 config];
    v14 = [v13 hostAppIdentifier];
    v15 = [v12 initWithClientIdentifier:v14];
    followUpController = v8->_followUpController;
    v8->_followUpController = v15;
  }

  return v8;
}

- (id)identifier
{
  v2 = [(DEDFollowUpNotifier *)self config];
  v3 = [v2 followupUniqueIdentifier];

  return v3;
}

- (void)presentNotificationForSession:(id)a3
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = [(DEDFollowUpNotifier *)self identifier];
  v5 = Log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(DEDFollowUpNotifier *)self bugSessionIdentifier];
    *buf = 138543618;
    v71 = v4;
    v72 = 2114;
    v73 = v6;
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "Scheduling followup notification: %{public}@ for session [%{public}@]", buf, 0x16u);
  }

  v7 = objc_opt_new();
  v67 = v4;
  [v7 setUniqueIdentifier:v4];
  v8 = [(DEDFollowUpNotifier *)self config];
  v9 = [v8 followupLocalizedTitle];
  [v7 setTitle:v9];

  v10 = [(DEDFollowUpNotifier *)self config];
  v11 = [v10 followupLocalizedInformativeText];
  [v7 setInformativeText:v11];

  [v7 setDisplayStyle:1];
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v13 = [(DEDFollowUpNotifier *)self config];
  v14 = [v13 reviewActionLabel];

  if (v14)
  {
    v15 = MEMORY[0x277CFE4F8];
    v16 = [(DEDFollowUpNotifier *)self config];
    v17 = [v16 reviewActionLabel];
    v18 = [(DEDFollowUpNotifier *)self config];
    v19 = [v18 followupReviewActionURL];
    v20 = [v15 actionWithLabel:v17 url:v19];

    v21 = [(DEDFollowUpNotifier *)self config];
    v22 = [v21 followupReviewActionUserInfo];

    if (v22)
    {
      v23 = [(DEDFollowUpNotifier *)self config];
      v24 = [v23 followupReviewActionUserInfo];
      [v20 setUserInfo:v24];
    }

    [v12 addObject:v20];
  }

  v25 = [(DEDFollowUpNotifier *)self config];
  v26 = [v25 sendActionLabel];

  if (v26)
  {
    v27 = MEMORY[0x277CFE4F8];
    v28 = [(DEDFollowUpNotifier *)self config];
    v29 = [v28 sendActionLabel];
    v30 = [(DEDFollowUpNotifier *)self config];
    v31 = [v30 followupSendActionURL];
    v32 = [v27 actionWithLabel:v29 url:v31];

    v33 = [(DEDFollowUpNotifier *)self config];
    v34 = [v33 followupSendActionUserInfo];

    if (v34)
    {
      v35 = [(DEDFollowUpNotifier *)self config];
      v36 = [v35 followupSendActionUserInfo];
      [v32 setUserInfo:v36];
    }

    [v12 addObject:v32];
  }

  [v7 setActions:v12];
  v37 = [(DEDFollowUpNotifier *)self config];
  v38 = [v37 followupExtensionIdentifier];

  if (v38)
  {
    v39 = [(DEDFollowUpNotifier *)self config];
    v40 = [v39 followupExtensionIdentifier];
    [v7 setExtensionIdentifier:v40];
  }

  v41 = objc_opt_new();
  v42 = [(DEDFollowUpNotifier *)self config];
  v43 = [v42 localizedNotificationTitle];
  [v41 setTitle:v43];

  v44 = [(DEDFollowUpNotifier *)self config];
  v45 = [v44 localizedNotificationBody];
  [v41 setInformativeText:v45];

  v46 = [MEMORY[0x277CBEB58] setWithObjects:{*MEMORY[0x277CFE498], *MEMORY[0x277CFE4A0], 0}];
  v47 = [(DEDFollowUpNotifier *)self config];
  v48 = [v47 followupUseSpringboardNotification];

  if (v48)
  {
    [v46 addObject:*MEMORY[0x277CFE4A8]];
  }

  v49 = [(DEDFollowUpNotifier *)self config];
  v50 = [v49 followupNotificationActionURL];
  if (!v50)
  {
    goto LABEL_18;
  }

  v51 = v50;
  v52 = [(DEDFollowUpNotifier *)self config];
  v53 = [v52 followupNotificationActionTitle];

  if (v53)
  {
    v54 = MEMORY[0x277CFE4F8];
    v49 = [(DEDFollowUpNotifier *)self config];
    v55 = [v49 followupNotificationActionTitle];
    v56 = [(DEDFollowUpNotifier *)self config];
    v57 = [v56 followupNotificationActionURL];
    v58 = [v54 actionWithLabel:v55 url:v57];
    [v41 setActivateAction:v58];

LABEL_18:
  }

  [v41 setOptions:v46];
  v59 = [(DEDFollowUpNotifier *)self config];
  [v59 followupFrequency];
  [v41 setFrequency:?];

  [v41 setFirstNotificationDelay:0.0];
  v60 = [(DEDFollowUpNotifier *)self config];
  v61 = [v60 followupNotificationBundlePath];
  [v7 setRepresentingBundlePath:v61];

  v62 = [(DEDFollowUpNotifier *)self config];
  v63 = [v62 followupNotificationBundleIconName];
  [v7 setBundleIconName:v63];

  [v7 setNotification:v41];
  v64 = [(DEDFollowUpNotifier *)self followUpController];
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __53__DEDFollowUpNotifier_presentNotificationForSession___block_invoke;
  v68[3] = &unk_278F657E0;
  v69 = v67;
  v65 = v67;
  [v64 postFollowUpItem:v7 completion:v68];

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

- (void)removeNotificationForSession:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = [(DEDFollowUpNotifier *)self identifier];
  v5 = Log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(DEDFollowUpNotifier *)self bugSessionIdentifier];
    *buf = 138543618;
    v22 = v4;
    v23 = 2114;
    v24 = v6;
    _os_log_impl(&dword_248AD7000, v5, OS_LOG_TYPE_DEFAULT, "Cancelling followup notification: %{public}@ for bug session [%{public}@]", buf, 0x16u);
  }

  v7 = [(DEDFollowUpNotifier *)self followUpController];
  v20 = v4;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  v19 = 0;
  [v7 clearPendingFollowUpItemsWithUniqueIdentifiers:v8 error:&v19];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DEDFollowUpNotifier *)self config];
  [v4 encodeObject:v5 forKey:@"config"];

  v6 = [(DEDFollowUpNotifier *)self bugSessionIdentifier];
  [v4 encodeObject:v6 forKey:@"bugSessionIdentifier"];
}

- (DEDFollowUpNotifier)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = DEDFollowUpNotifier;
  v5 = [(DEDFollowUpNotifier *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"config"];
    objc_storeWeak(&v5->_config, v6);

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bugSessionIdentifier"];
    bugSessionIdentifier = v5->_bugSessionIdentifier;
    v5->_bugSessionIdentifier = v7;

    v9 = objc_alloc(MEMORY[0x277CFE500]);
    v10 = [(DEDFollowUpNotifier *)v5 config];
    v11 = [v10 hostAppIdentifier];
    v12 = [v9 initWithClientIdentifier:v11];
    followUpController = v5->_followUpController;
    v5->_followUpController = v12;
  }

  return v5;
}

+ (void)forceRemoveNotificationWithIdentifier:(id)a3 hostIdentifier:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = Log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v24 = v5;
    v25 = 2114;
    v26 = v6;
    _os_log_impl(&dword_248AD7000, v7, OS_LOG_TYPE_DEFAULT, "Will force remove notification with identifier [%{public}@] for app [%{public}@]", buf, 0x16u);
  }

  v8 = [objc_alloc(MEMORY[0x277CFE500]) initWithClientIdentifier:v6];
  v22 = v5;
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
    v24 = v5;
    v25 = 2114;
    v26 = v6;
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