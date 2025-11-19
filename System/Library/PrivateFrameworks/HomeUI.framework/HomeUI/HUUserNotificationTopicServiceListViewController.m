@interface HUUserNotificationTopicServiceListViewController
- (BOOL)_shouldShowFaceRecognition;
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (HUUserNotificationTopicServiceListViewController)initWithHome:(id)a3 topic:(id)a4;
- (HUUserNotificationTopicServiceListViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4;
- (id)buildItemModuleControllerForModule:(id)a3;
- (id)buildSwiftItemModuleControllerForModule:(id)a3;
- (id)presentFaceRecognitionAddPersonSettingsForUnknownPersonEvent:(id)a3 animated:(BOOL)a4;
- (id)presentFaceRecognitionPersonSettingsForPerson:(id)a3 personManager:(id)a4 animated:(BOOL)a5;
- (id)showNotificationSettingsForHomeKitObject:(id)a3 animated:(BOOL)a4;
- (void)dismissToHomeSettings;
- (void)presentHH2OnboardingForHome:(id)a3 withDevices:(id)a4;
@end

@implementation HUUserNotificationTopicServiceListViewController

- (id)buildSwiftItemModuleControllerForModule:(id)a3
{
  type metadata accessor for ActivityLogItemModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = a3;
  v6 = [v5 isKindOfClass_];
  v7 = 0;
  if (v6)
  {
    v7 = [objc_allocWithZone(type metadata accessor for ActivityLogSettingsModuleController()) initWithModule_];
  }

  return v7;
}

- (HUUserNotificationTopicServiceListViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHome_topic_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUUserNotificationTopicServiceListViewController.m" lineNumber:46 description:{@"%s is unavailable; use %@ instead", "-[HUUserNotificationTopicServiceListViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (HUUserNotificationTopicServiceListViewController)initWithHome:(id)a3 topic:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_storeStrong(&self->_topic, a4);
  objc_initWeak(&location, self);
  v8 = [objc_alloc(MEMORY[0x277D14B08]) initWithDelegate:self];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __71__HUUserNotificationTopicServiceListViewController_initWithHome_topic___block_invoke;
  v19[3] = &unk_277DB7478;
  v9 = v6;
  v20 = v9;
  [v8 setHomeCreator:v19];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__HUUserNotificationTopicServiceListViewController_initWithHome_topic___block_invoke_2;
  v16[3] = &unk_277DB9120;
  objc_copyWeak(&v18, &location);
  v10 = v7;
  v17 = v10;
  [v8 setItemModuleCreator:v16];
  v11 = [MEMORY[0x277D14B50] policyWithDecision:0];
  [v8 setReadPolicy:v11];

  v15.receiver = self;
  v15.super_class = HUUserNotificationTopicServiceListViewController;
  v12 = [(HUItemTableViewController *)&v15 initWithItemManager:v8 tableViewStyle:1];
  if (v12)
  {
    v13 = [v10 topicName];
    [(HUUserNotificationTopicServiceListViewController *)v12 setTitle:v13];
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v12;
}

id __71__HUUserNotificationTopicServiceListViewController_initWithHome_topic___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:6];
  v9 = [[HUUserNotificationTopicServiceListModule alloc] initWithItemUpdater:v6 home:v5 topic:*(a1 + 32)];
  [v8 addObject:v9];
  if ([WeakRetained _shouldShowFaceRecognition])
  {
    v10 = [[HUFaceRecognitionItemModule alloc] initWithItemUpdater:v6 home:v5];
    [v8 addObject:v10];
  }

  v11 = _os_feature_enabled_impl();
  v12 = [v5 hf_shouldShowActivityLogSettingForTargetKind:0];
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_11;
    }

    v17 = [WeakRetained topic];
    v18 = [v17 topicName];
    v19 = HFLocalizedString();
    v20 = [v18 isEqualToString:v19];

    if (!v20)
    {
      goto LABEL_11;
    }

LABEL_10:
    v21 = [[HUActivityLogItemModule alloc] initWithHome:v5 itemUpdater:v6];
    [v8 addObject:v21];

    goto LABEL_11;
  }

  if ((v12 & 1) != 0 || [v5 hf_shouldShowActivityLogSettingForTargetKind:1])
  {
    v13 = [WeakRetained topic];
    v14 = [v13 topicName];
    v15 = HFLocalizedString();
    v16 = [v14 isEqualToString:v15];

    if (v16)
    {
      goto LABEL_10;
    }
  }

LABEL_11:
  if ([v5 hf_shouldShowAnnounceFeatureForThisHome])
  {
    v22 = [*(a1 + 32) accessoryCategoryTypes];
    if (![(HUAnnounceSettingsItemModule *)v22 containsObject:*MEMORY[0x277CCE8B0]])
    {
LABEL_15:

      goto LABEL_16;
    }

    v23 = [WeakRetained topic];
    v24 = [v23 topicName];
    v25 = HFLocalizedString();
    v26 = [v24 isEqualToString:v25];

    if (v26)
    {
      v22 = [[HUAnnounceSettingsItemModule alloc] initWithItemUpdater:v6 home:v5 settingsContext:1];
      [v8 addObject:v22];
      goto LABEL_15;
    }
  }

LABEL_16:
  if ([v5 hf_isHomeHubMigrationBannerVisible] && (objc_msgSend(v5, "hf_hasHomePods") & 1) != 0 || objc_msgSend(v5, "hf_hasAtleastOneSafetyAndSecuritySupportedAccessory"))
  {
    v27 = [WeakRetained topic];
    v28 = [v27 topicName];
    v29 = HFLocalizedString();
    v30 = [v28 isEqualToString:v29];

    if (v30)
    {
      v31 = [[HUSafetyAndSecuritySettingsItemModule alloc] initWithItemUpdater:v6 home:v5];
      [v8 addObject:v31];
    }
  }

  v32 = [WeakRetained topic];
  v33 = [v32 topicName];
  v34 = HFLocalizedString();
  v35 = [v33 isEqualToString:v34];

  if (v35)
  {
    v36 = [[HUEnergySettingsItemModule alloc] initWithItemUpdater:v6 home:v5];
    [v8 addObject:v36];
  }

  return v8;
}

- (id)buildItemModuleControllerForModule:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(HUItemModuleController *)[HUFaceRecognitionItemModuleController alloc] initWithModule:v4];
    [(HUUserNotificationTopicServiceListViewController *)self setFaceRecognitionModuleController:v5];

    v6 = [(HUUserNotificationTopicServiceListViewController *)self faceRecognitionModuleController];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(HUItemModuleController *)[HUAnnounceSettingsItemModuleController alloc] initWithModule:v4];
      [(HUUserNotificationTopicServiceListViewController *)self setAnnounceSettingsModuleController:v7];

      v6 = [(HUUserNotificationTopicServiceListViewController *)self announceSettingsModuleController];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [[HUSafetyAndSecuritySettingsItemModuleController alloc] initWithModule:v4 delegate:self];
        [(HUUserNotificationTopicServiceListViewController *)self setSafetyAndSecuritySettingsItemModuleController:v8];

        v6 = [(HUUserNotificationTopicServiceListViewController *)self safetyAndSecuritySettingsItemModuleController];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [(HUItemModuleController *)[HUEnergySettingsItemModuleController alloc] initWithModule:v4];
          [(HUUserNotificationTopicServiceListViewController *)self setEnergySettingsModuleController:v9];

          v6 = [(HUUserNotificationTopicServiceListViewController *)self energySettingsModuleController];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v6 = [(HUUserNotificationTopicServiceListViewController *)self buildSwiftItemModuleControllerForModule:v4];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              NSLog(&cfstr_UnexpectedModu.isa, v4);
            }

            v10 = [(HUItemModuleController *)[HUUserNotificationTopicServiceListModuleController alloc] initWithModule:v4];
            [(HUUserNotificationTopicServiceListViewController *)self setModuleController:v10];

            v6 = [(HUUserNotificationTopicServiceListViewController *)self moduleController];
          }
        }
      }
    }
  }

  v11 = v6;

  return v11;
}

- (id)showNotificationSettingsForHomeKitObject:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __102__HUUserNotificationTopicServiceListViewController_showNotificationSettingsForHomeKitObject_animated___block_invoke;
  v17[3] = &unk_277DB9148;
  v17[4] = self;
  v18 = v6;
  v7 = v6;
  v8 = __102__HUUserNotificationTopicServiceListViewController_showNotificationSettingsForHomeKitObject_animated___block_invoke(v17);
  v9 = [(HUItemTableViewController *)self hu_preloadContent];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __102__HUUserNotificationTopicServiceListViewController_showNotificationSettingsForHomeKitObject_animated___block_invoke_2;
  v13[3] = &unk_277DB7830;
  v14 = v8;
  v15 = self;
  v16 = a4;
  v10 = v8;
  v11 = [v9 flatMap:v13];

  return v11;
}

id __102__HUUserNotificationTopicServiceListViewController_showNotificationSettingsForHomeKitObject_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemManager];
  v3 = [v2 home];
  v4 = [v3 hf_characteristicValueManager];

  objc_opt_class();
  v5 = *(a1 + 40);
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [MEMORY[0x277D14AC8] serviceItemForService:v7 valueSource:v4];
  }

  else
  {
    objc_opt_class();
    v9 = *(a1 + 40);
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      v8 = [objc_alloc(MEMORY[0x277D144A0]) initWithProfile:v11 valueSource:v4];
    }

    else
    {
      NSLog(&cfstr_UnexpectedObje.isa, *(a1 + 40));
      v8 = 0;
    }
  }

  return v8;
}

id __102__HUUserNotificationTopicServiceListViewController_showNotificationSettingsForHomeKitObject_animated___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) moduleController];
    v3 = [v2 showNotificationSettingsForServiceLikeItem:*(a1 + 32) animated:*(a1 + 48)];
  }

  else
  {
    v3 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v3;
}

- (void)presentHH2OnboardingForHome:(id)a3 withDevices:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[HUUserNotificationTopicServiceListViewController presentHH2OnboardingForHome:withDevices:]";
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%s Now starting HH2 onboarding...", &v11, 0xCu);
  }

  v9 = [HUHomeFeatureOnboardingUtilities home:v7 onboardHomeHub2FromPresentingViewController:self devices:v6 usageOptions:0];

  v10 = [v9 flatMap:&__block_literal_global_29];
}

- (void)dismissToHomeSettings
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(HUUserNotificationTopicServiceListViewController *)self parentViewController];
    v9 = 136315394;
    v10 = "[HUUserNotificationTopicServiceListViewController dismissToHomeSettings]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%s Dismissing to Home Settings ... using navController = %@", &v9, 0x16u);
  }

  objc_opt_class();
  v5 = [(HUUserNotificationTopicServiceListViewController *)self parentViewController];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 popViewControllerAnimated:1];
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v12, 0x16u);
  }

  v9 = [MEMORY[0x277D148E8] sharedInstance];
  v10 = [v9 openURL:v7];

  return 0;
}

- (id)presentFaceRecognitionPersonSettingsForPerson:(id)a3 personManager:(id)a4 animated:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  if ([(HUUserNotificationTopicServiceListViewController *)self _shouldShowFaceRecognition])
  {
    v10 = [(HUItemTableViewController *)self hu_preloadContent];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __121__HUUserNotificationTopicServiceListViewController_presentFaceRecognitionPersonSettingsForPerson_personManager_animated___block_invoke;
    v15[3] = &unk_277DB9190;
    v15[4] = self;
    v16 = v8;
    v17 = v9;
    v18 = a5;
    v11 = [v10 flatMap:v15];
  }

  else
  {
    v12 = MEMORY[0x277D2C900];
    v13 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v11 = [v12 futureWithError:v13];
  }

  return v11;
}

id __121__HUUserNotificationTopicServiceListViewController_presentFaceRecognitionPersonSettingsForPerson_personManager_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) faceRecognitionModuleController];
  v3 = [v2 presentFaceRecognitionPersonSettingsForPerson:*(a1 + 40) personManager:*(a1 + 48) animated:*(a1 + 56)];

  return v3;
}

- (id)presentFaceRecognitionAddPersonSettingsForUnknownPersonEvent:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  if ([(HUUserNotificationTopicServiceListViewController *)self _shouldShowFaceRecognition])
  {
    v7 = [(HUItemTableViewController *)self hu_preloadContent];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __122__HUUserNotificationTopicServiceListViewController_presentFaceRecognitionAddPersonSettingsForUnknownPersonEvent_animated___block_invoke;
    v12[3] = &unk_277DB7830;
    v12[4] = self;
    v13 = v6;
    v14 = a4;
    v8 = [v7 flatMap:v12];
  }

  else
  {
    v9 = MEMORY[0x277D2C900];
    v10 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v8 = [v9 futureWithError:v10];
  }

  return v8;
}

id __122__HUUserNotificationTopicServiceListViewController_presentFaceRecognitionAddPersonSettingsForUnknownPersonEvent_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) faceRecognitionModuleController];
  v3 = [v2 presentFaceRecognitionAddPersonSettingsForUnknownPersonEvent:*(a1 + 40) animated:*(a1 + 48)];

  return v3;
}

- (BOOL)_shouldShowFaceRecognition
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(HUItemTableViewController *)self itemManager];
  v4 = [v3 home];

  v5 = [(HUUserNotificationTopicServiceListViewController *)self topic];
  v6 = [MEMORY[0x277D14CB8] _cameraTopic];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = [v4 hf_isFaceRecognitionAvailable];
    if ([MEMORY[0x277D14CE8] isPressDemoModeEnabled])
    {
      v9 = 1;
    }

    else
    {
      v9 = [MEMORY[0x277D14CE8] isRunningInStoreDemoMode];
    }

    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (v8)
      {
        v12 = @"Showing";
      }

      else
      {
        v12 = @"Not showing";
      }

      v13 = [(HUUserNotificationTopicServiceListViewController *)self topic];
      v15 = 138412546;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "%@ face recognition settings for topic %@", &v15, 0x16u);
    }

    v10 = v8 | v9;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

@end