@interface UIViewController
@end

@implementation UIViewController

id __69__UIViewController_HUPresentation__hu_dismissViewControllerAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentedViewController];
  if ([v2 conformsToProtocol:&unk_28255A3B0])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    [v4 hu_prepareForDismissalAnimated:*(a1 + 40)];
  }

  else
  {
    [MEMORY[0x277D2C900] futureWithResult:&unk_282490C38];
  }
  v5 = ;

  return v5;
}

id __69__UIViewController_HUPresentation__hu_dismissViewControllerAnimated___block_invoke_76(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D2C900];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v6 = [v4 unsignedIntegerValue];

  if (v6 == 1)
  {
    [v5 finishWithNoResult];
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __69__UIViewController_HUPresentation__hu_dismissViewControllerAnimated___block_invoke_2;
    v10[3] = &unk_277DB8488;
    v11 = v5;
    [v7 dismissViewControllerAnimated:v8 completion:v10];
  }

  return v5;
}

id __96__UIViewController_HUPreloadingModalPresentation__hu_presentPreloadableViewController_animated___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277D2C900]);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __96__UIViewController_HUPreloadingModalPresentation__hu_presentPreloadableViewController_animated___block_invoke_2;
  v8[3] = &unk_277DB8488;
  v6 = v2;
  v9 = v6;
  [v3 presentViewController:v4 animated:v5 completion:v8];

  return v6;
}

void __96__UIViewController_HUPreloadingModalPresentation__hu_presentPreloadableViewController_animated___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = NAEmptyResult();
  [v1 finishWithResult:v2];
}

void __157__UIViewController_HUCommonAlertController__hu_presentNotificationAlertForNotificationCapableObjects_notificationsEnabled_mainActionBlock_notNowActionBlock___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 title];
    *buf = 136315394;
    v32 = "[UIViewController(HUCommonAlertController) hu_presentNotificationAlertForNotificationCapableObjects:notificationsEnabled:mainActionBlock:notNowActionBlock:]_block_invoke";
    v33 = 2114;
    v34 = v4;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "(%s) User tapped '%{public}@'.", buf, 0x16u);
  }

  v21 = v2;

  v22 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = a1;
  obj = *(a1 + 32);
  v6 = [obj countByEnumeratingWithState:&v27 objects:v43 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [v10 hf_userNotificationSettings];
        v12 = [v11 mutableCopy];

        if (v12 && *(v5 + 48) != [v12 areNotificationsEnabled])
        {
          [v12 setNotificationsEnabled:?];
          v14 = [v10 hf_updateUserNotificationSettings:v12];
          [v22 na_safeAddObject:v14];

          v13 = 1;
        }

        else
        {
          v13 = 0;
        }

        v15 = HFLogForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          if (v13)
          {
            v16 = @"NOT updating";
          }

          else
          {
            v16 = @"Updating";
          }

          v17 = NSStringFromBOOL();
          [v12 areNotificationsEnabled];
          v18 = NSStringFromBOOL();
          *buf = 136316418;
          v32 = "[UIViewController(HUCommonAlertController) hu_presentNotificationAlertForNotificationCapableObjects:notificationsEnabled:mainActionBlock:notNowActionBlock:]_block_invoke";
          v33 = 2112;
          v34 = v16;
          v35 = 2112;
          v36 = v17;
          v37 = 2112;
          v38 = v10;
          v39 = 2112;
          v40 = v12;
          v41 = 2112;
          v42 = v18;
          _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "(%s) %@ notificationsEnabled to %@ for %@. newSettings = %@. current notificationsEnabled = %@", buf, 0x3Eu);

          v5 = a1;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v27 objects:v43 count:16];
    }

    while (v7);
  }

  v19 = [MEMORY[0x277D2C900] combineAllFutures:v22];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __157__UIViewController_HUCommonAlertController__hu_presentNotificationAlertForNotificationCapableObjects_notificationsEnabled_mainActionBlock_notNowActionBlock___block_invoke_23;
  v25[3] = &unk_277DBD888;
  v26 = *(v5 + 40);
  v20 = [v19 addCompletionBlock:v25];
}

void __157__UIViewController_HUCommonAlertController__hu_presentNotificationAlertForNotificationCapableObjects_notificationsEnabled_mainActionBlock_notNowActionBlock___block_invoke_23(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v14 = "[UIViewController(HUCommonAlertController) hu_presentNotificationAlertForNotificationCapableObjects:notificationsEnabled:mainActionBlock:notNowActionBlock:]_block_invoke";
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "(%s) Completed notification settings update. result %@. Error = %@", buf, 0x20u);
  }

  if (v6)
  {
    v8 = [MEMORY[0x277D14640] sharedHandler];
    v9 = *MEMORY[0x277D13C18];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __157__UIViewController_HUCommonAlertController__hu_presentNotificationAlertForNotificationCapableObjects_notificationsEnabled_mainActionBlock_notNowActionBlock___block_invoke_25;
    v11[3] = &unk_277DB84B0;
    v12 = *(a1 + 32);
    [v8 handleError:v6 operationType:v9 options:0 retryBlock:0 cancelBlock:v11];
  }

  else
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      (*(v10 + 16))();
    }
  }
}

uint64_t __157__UIViewController_HUCommonAlertController__hu_presentNotificationAlertForNotificationCapableObjects_notificationsEnabled_mainActionBlock_notNowActionBlock___block_invoke_25(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __157__UIViewController_HUCommonAlertController__hu_presentNotificationAlertForNotificationCapableObjects_notificationsEnabled_mainActionBlock_notNowActionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 title];
    v7 = 136315394;
    v8 = "[UIViewController(HUCommonAlertController) hu_presentNotificationAlertForNotificationCapableObjects:notificationsEnabled:mainActionBlock:notNowActionBlock:]_block_invoke_2";
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(%s) User tapped '%{public}@'.", &v7, 0x16u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))();
  }
}

uint64_t __165__UIViewController_HUCommonAlertController__hu_presentingLockLimitAlertIfNeededFromViewController_home_user_accessory_include_continueActionBlock_cancelActionBlock___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) hf_prettyDescription];
    v5 = 136315394;
    v6 = "+[UIViewController(HUCommonAlertController) hu_presentingLockLimitAlertIfNeededFromViewController:home:user:accessory:include:continueActionBlock:cancelActionBlock:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "(%s) User selected 'Continue' button about the limit for wallet key and pin code. Allowing RG access to %@", &v5, 0x16u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __165__UIViewController_HUCommonAlertController__hu_presentingLockLimitAlertIfNeededFromViewController_home_user_accessory_include_continueActionBlock_cancelActionBlock___block_invoke_54(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) hf_minimumDescription];
    v5 = 136315394;
    v6 = "+[UIViewController(HUCommonAlertController) hu_presentingLockLimitAlertIfNeededFromViewController:home:user:accessory:include:continueActionBlock:cancelActionBlock:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "(%s) User selected 'cancel' button about the limit. NOT updating access for %@", &v5, 0x16u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __165__UIViewController_HUCommonAlertController__hu_presentingLockLimitAlertIfNeededFromViewController_home_user_accessory_include_continueActionBlock_cancelActionBlock___block_invoke_58(id *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = [a1[5] hf_minimumDescription];
    v5 = [a1[6] hf_prettyDescription];
    v6 = [a1[7] hf_prettyDescription];
    v7 = 136316162;
    v8 = "+[UIViewController(HUCommonAlertController) hu_presentingLockLimitAlertIfNeededFromViewController:home:user:accessory:include:continueActionBlock:cancelActionBlock:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "(%s) Displayed alert about wallet key and pin code limits when updating schedule from %@ | home %@ | accessory %@ | user %@", &v7, 0x34u);
  }
}

@end