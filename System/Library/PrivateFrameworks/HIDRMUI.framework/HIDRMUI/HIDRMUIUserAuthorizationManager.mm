@interface HIDRMUIUserAuthorizationManager
+ (BOOL)digitFromCharacter:(unsigned __int16)a3 digit:(unsigned int *)a4;
+ (OS_os_log)log;
+ (id)digitsArrayFromNumber:(id)a3;
+ (id)sharedManager;
+ (id)userNotificationForType:(int64_t)a3 deviceName:(id)a4;
+ (unsigned)randomNumberWithDigitCount:(unsigned __int8)a3;
- (BOOL)removeAllUserAuthorizationRequests:(id *)a3;
- (BOOL)removeUserAuthorizationRequest:(id)a3 error:(id *)a4;
- (HIDRMUIUserAuthorizationManager)init;
- (OS_os_log)log;
- (void)addUserAuthorizationRequest:(id)a3 completion:(id)a4;
@end

@implementation HIDRMUIUserAuthorizationManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HIDRMUIUserAuthorizationManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager_sharedManager;

  return v2;
}

uint64_t __48__HIDRMUIUserAuthorizationManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedManager = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

+ (unsigned)randomNumberWithDigitCount:(unsigned __int8)a3
{
  if ((a3 - 1) > 8)
  {
    return 0;
  }

  v3 = a3;
  v4 = __exp10((a3 - 1));
  v5 = __exp10(v3);
  return arc4random_uniform((v5 + -1.0) - v4 + 1) + v4;
}

+ (id)digitsArrayFromNumber:(id)a3
{
  v3 = [a3 unsignedIntValue];
  v4 = [MEMORY[0x277CBEB18] array];
  do
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3 % 0xA];
    [v4 addObject:v5];

    v6 = v3 > 9;
    v3 /= 0xAu;
  }

  while (v6);
  v7 = [v4 reverseObjectEnumerator];
  v8 = [v7 allObjects];

  return v8;
}

+ (BOOL)digitFromCharacter:(unsigned __int16)a3 digit:(unsigned int *)a4
{
  v4 = a3 - 48;
  if ((a3 - 48) <= 9 && a4 != 0)
  {
    *a4 = v4;
  }

  return v4 < 0xA;
}

+ (id)userNotificationForType:(int64_t)a3 deviceName:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(IOUserNotification);
  v8 = v7;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v42 = [MEMORY[0x277CCA8D8] mainBundle];
      v43 = [v42 localizedStringForKey:@"This accessory must be approved in Settings before it can control your device." value:&stru_2862DB1F8 table:0];
      [(IOUserNotification *)v8 setHeader:v43];

      v44 = [MEMORY[0x277CCA8D8] mainBundle];
      v45 = [v44 localizedStringForKey:@"If you did not plug in an input device value:this accessory may be attempting to compromise your privacy or harm your device." table:{&stru_2862DB1F8, 0}];
      [(IOUserNotification *)v8 setMessage:v45];

      v46 = [MEMORY[0x277CCA8D8] mainBundle];
      v47 = [v46 localizedStringForKey:@"View in Settings" value:&stru_2862DB1F8 table:0];
      [(IOUserNotification *)v8 addButtonWithTitle:v47];

      v48 = [MEMORY[0x277CCA8D8] mainBundle];
      v49 = [v48 localizedStringForKey:@"Cancel" value:&stru_2862DB1F8 table:0];
      [(IOUserNotification *)v8 addButtonWithTitle:v49];

      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __70__HIDRMUIUserAuthorizationManager_userNotificationForType_deviceName___block_invoke;
      v51[3] = &__block_descriptor_40_e40_v24__0__IOUserNotification_8__NSError_16l;
      v51[4] = a1;
      [(IOUserNotification *)v8 setResponseHandler:v51];
      goto LABEL_14;
    }

    if (a3 == 3)
    {
      v16 = MEMORY[0x277CCACA8];
      v17 = [MEMORY[0x277CCA8D8] mainBundle];
      v18 = [v17 localizedStringForKey:@"Allow “%@” to control your device?" value:&stru_2862DB1F8 table:0];
      v19 = [v16 stringWithFormat:v18, v6];
      [(IOUserNotification *)v8 setHeader:v19];

      v20 = [MEMORY[0x277CCA8D8] mainBundle];
      v21 = [v20 localizedStringForKey:@"Only allow control if you trust this accessory. Malicious accessories may attempt to compromise your privacy or harm your device." value:&stru_2862DB1F8 table:0];
      [(IOUserNotification *)v8 setMessage:v21];

      v22 = [MEMORY[0x277CCA8D8] mainBundle];
      v23 = [v22 localizedStringForKey:@"Approve Your Accessory" value:&stru_2862DB1F8 table:0];
      [(IOUserNotification *)v8 setLockScreenHeader:v23];

      v24 = [MEMORY[0x277CCA8D8] mainBundle];
      v25 = [v24 localizedStringForKey:@"Unlock to approve your accessory" value:&stru_2862DB1F8 table:0];
      [(IOUserNotification *)v8 setLockScreenMessage:v25];

      [(IOUserNotification *)v8 setShouldDismissOnLock:0];
      [(IOUserNotification *)v8 setShouldDismissOnUnlock:0];
      [(IOUserNotification *)v8 setShouldAllowLockScreenDismissal:0];
      v26 = [MEMORY[0x277CCA8D8] mainBundle];
      v27 = [v26 localizedStringForKey:@"Don't Allow" value:&stru_2862DB1F8 table:0];
      [(IOUserNotification *)v8 addButtonWithTitle:v27];

      v13 = [MEMORY[0x277CCA8D8] mainBundle];
      v14 = v13;
      v15 = @"Allow Control";
      goto LABEL_12;
    }
  }

  else
  {
    if (!a3)
    {
      v29 = [MEMORY[0x277CCA8D8] mainBundle];
      v30 = [v29 localizedStringForKey:@"Approve Your Accessory" value:&stru_2862DB1F8 table:0];
      [(IOUserNotification *)v8 setHeader:v30];

      v31 = MEMORY[0x277CCACA8];
      v32 = [MEMORY[0x277CCA8D8] mainBundle];
      v33 = [v32 localizedStringForKey:@"“%@” is attempting to control your device. Enter the following keys on this accessory to approve it." value:&stru_2862DB1F8 table:0];
      v34 = [v31 stringWithFormat:v33, v6];
      [(IOUserNotification *)v8 setMessage:v34];

      v35 = [MEMORY[0x277CCA8D8] mainBundle];
      v36 = [v35 localizedStringForKey:@"Approve Your Accessory" value:&stru_2862DB1F8 table:0];
      [(IOUserNotification *)v8 setLockScreenHeader:v36];

      v37 = [MEMORY[0x277CCA8D8] mainBundle];
      v38 = [v37 localizedStringForKey:@"Unlock to approve your accessory" value:&stru_2862DB1F8 table:0];
      [(IOUserNotification *)v8 setLockScreenMessage:v38];

      [(IOUserNotification *)v8 setShouldDismissOnLock:0];
      [(IOUserNotification *)v8 setShouldDismissOnUnlock:0];
      [(IOUserNotification *)v8 setShouldAllowLockScreenDismissal:0];
      [(IOUserNotification *)v8 setExtensionIdentifier:@"com.apple.HIDRMUI.HIDRMUICFUNUIExtension"];
      v39 = [MEMORY[0x277CCA8D8] mainBundle];
      v40 = [v39 localizedStringForKey:@"Cancel" value:&stru_2862DB1F8 table:0];
      [(IOUserNotification *)v8 addButtonWithTitle:v40];

      v13 = [MEMORY[0x277CCA8D8] mainBundle];
      v14 = v13;
      v15 = @"Not a Keyboard";
      goto LABEL_12;
    }

    if (a3 == 1)
    {
      v9 = [MEMORY[0x277CCA8D8] mainBundle];
      v10 = [v9 localizedStringForKey:@"This accessory has been blocked from controlling your device." value:&stru_2862DB1F8 table:0];
      [(IOUserNotification *)v8 setHeader:v10];

      v11 = [MEMORY[0x277CCA8D8] mainBundle];
      v12 = [v11 localizedStringForKey:@"If you did not plug in a keyboard value:this accessory may be attempting to compromise your privacy or harm your device." table:{&stru_2862DB1F8, 0}];
      [(IOUserNotification *)v8 setMessage:v12];

      v13 = [MEMORY[0x277CCA8D8] mainBundle];
      v14 = v13;
      v15 = @"Done";
LABEL_12:
      v41 = [v13 localizedStringForKey:v15 value:&stru_2862DB1F8 table:0];
      [(IOUserNotification *)v8 addButtonWithTitle:v41];

      goto LABEL_14;
    }
  }

  v28 = [a1 log];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    +[HIDRMUIUserAuthorizationManager userNotificationForType:deviceName:];
  }

  v8 = 0;
LABEL_14:

  return v8;
}

void __70__HIDRMUIUserAuthorizationManager_userNotificationForType_deviceName___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    v21 = [v3 responseReceived];
    v22 = 1024;
    v23 = [v3 notificationCancelled];
    v24 = 1024;
    v25 = [v3 notificationDismissed];
    _os_log_impl(&dword_250977000, v4, OS_LOG_TYPE_DEFAULT, "userNotification.responseReceived: %d, notificationCancelled: %d, notificationDismissed: %d", buf, 0x14u);
  }

  v5 = [*(a1 + 32) log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __70__HIDRMUIUserAuthorizationManager_userNotificationForType_deviceName___block_invoke_cold_1(v3);
  }

  if ([v3 responseReceived])
  {
    v6 = [v3 buttons];
    v7 = [v6 firstObject];
    v8 = [v7 selected];

    if (v8)
    {
      v9 = [*(a1 + 32) log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_250977000, v9, OS_LOG_TYPE_INFO, "Launching settings pane...", buf, 2u);
      }

      v10 = [MEMORY[0x277CC1E80] defaultWorkspace];
      v11 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.PrivacyAndSecurity"];
      v19 = 0;
      [v10 openSensitiveURL:v11 withOptions:0 error:&v19];
      v12 = v19;

      if (v12)
      {
        v13 = [*(a1 + 32) log];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          __70__HIDRMUIUserAuthorizationManager_userNotificationForType_deviceName___block_invoke_cold_2();
        }
      }

      goto LABEL_16;
    }
  }

  if ([v3 responseReceived])
  {
    v14 = [v3 buttons];
    v15 = [v14 lastObject];
    v16 = [v15 selected];

    if (v16)
    {
      v17 = *(a1 + 32);
      v12 = [objc_opt_class() userNotificationForType:1 deviceName:0];
      [v12 presentNotification];
LABEL_16:
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (HIDRMUIUserAuthorizationManager)init
{
  v12.receiver = self;
  v12.super_class = HIDRMUIUserAuthorizationManager;
  v2 = [(HIDRMUIUserAuthorizationManager *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = [v4 UTF8String];
    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v7 = dispatch_queue_create(v5, v6);
    completionQueue = v2->_completionQueue;
    v2->_completionQueue = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    authRequests = v2->_authRequests;
    v2->_authRequests = v9;
  }

  return v2;
}

- (void)addUserAuthorizationRequest:(id)a3 completion:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v38[3] = 7;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy_;
  v36[4] = __Block_byref_object_dispose_;
  v37 = 0;
  v8 = [(HIDRMUIUserAuthorizationManager *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v45 = v6;
    _os_log_impl(&dword_250977000, v8, OS_LOG_TYPE_DEFAULT, "Adding user authorization request... (authorizationRequest: %@)", buf, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v6 requiresPairing];
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = 3;
    }

    v11 = objc_opt_class();
    v12 = [v6 deviceName];
    v13 = [v11 userNotificationForType:v10 deviceName:v12];

    v14 = [AuthRequestWrapper requestWrapperWithCompletion:v7 andUserNotification:v13];
    if (v9)
    {
      v15 = [objc_opt_class() randomNumberWithDigitCount:4];
      v16 = objc_opt_class();
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v15];
      v18 = [v16 digitsArrayFromNumber:v17];

      v19 = objc_alloc_init(MEMORY[0x277CCA9D8]);
      v42 = 0x2862DB518;
      v43 = v18;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      [v19 setUserInfo:v20];

      v41 = v19;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
      [v13 setExtensionItems:v21];

      [v14 setPairingCodeDigits:v18];
      [v14 setPairingStatus:1];
    }

    v22 = self->_authRequests;
    objc_sync_enter(v22);
    [(NSMutableDictionary *)self->_authRequests setObject:v14 forKey:v6];
    objc_sync_exit(v22);

    v23 = [(HIDRMUIUserAuthorizationManager *)self log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_250977000, v23, OS_LOG_TYPE_DEFAULT, "Presenting user authorization dialog...", buf, 2u);
    }

    objc_initWeak(buf, self);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __74__HIDRMUIUserAuthorizationManager_addUserAuthorizationRequest_completion___block_invoke;
    v31[3] = &unk_2796A3148;
    objc_copyWeak(v35, buf);
    v31[4] = self;
    v33 = v36;
    v32 = v6;
    v34 = v38;
    v35[1] = v10;
    [v13 presentNotificationWithResponseHandler:v31];

    objc_destroyWeak(v35);
    objc_destroyWeak(buf);
  }

  else
  {
    v24 = MEMORY[0x277CCA9B8];
    v39 = *MEMORY[0x277CCA450];
    v25 = HIDRMUIErrorStringFromCode(1001);
    v40 = v25;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v13 = [v24 errorWithDomain:@"HIDRMUIErrorDomain" code:1001 userInfo:v26];

    v27 = [(HIDRMUIUserAuthorizationManager *)self log];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      [(HIDRMUIUserAuthorizationManager *)v29 addUserAuthorizationRequest:buf completion:v27];
    }

    v7[2](v7, 7, v13);
  }

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v38, 8);

  v30 = *MEMORY[0x277D85DE8];
}

void __74__HIDRMUIUserAuthorizationManager_addUserAuthorizationRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = [*(a1 + 32) log];
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __74__HIDRMUIUserAuthorizationManager_addUserAuthorizationRequest_completion___block_invoke_cold_1();
    }

    v10 = *(*(a1 + 48) + 8);
    v11 = v6;
    v12 = *(v10 + 40);
    *(v10 + 40) = v11;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v59 = [v5 responseReceived];
      v60 = 1024;
      v61 = [v5 notificationCancelled];
      v62 = 1024;
      v63 = [v5 notificationDismissed];
      _os_log_impl(&dword_250977000, v9, OS_LOG_TYPE_DEFAULT, "userNotification.responseReceived: %d, notificationCancelled: %d, notificationDismissed: %d", buf, 0x14u);
    }

    v12 = [*(a1 + 32) log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __74__HIDRMUIUserAuthorizationManager_addUserAuthorizationRequest_completion___block_invoke_cold_2(v5);
    }
  }

  if (WeakRetained)
  {
    v13 = WeakRetained[2];
    objc_sync_enter(v13);
    v14 = [WeakRetained[2] objectForKey:*(a1 + 40)];
    v15 = v14;
    if (v14)
    {
      [v14 setUserNotification:0];
    }

    objc_sync_exit(v13);

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v16 = WeakRetained[2];
      objc_sync_enter(v16);
      [WeakRetained[2] removeObjectForKey:*(a1 + 40)];
      objc_sync_exit(v16);

      goto LABEL_15;
    }

LABEL_19:
    if ([v5 notificationDismissed])
    {
      if ([v15 pairingStatus] == 2)
      {
        v20 = *(*(a1 + 56) + 8);
        v21 = 3;
      }

      else
      {
        v26 = [v15 pairingStatus];
        v20 = *(*(a1 + 56) + 8);
        if (v26 != 3)
        {
          *(v20 + 24) = 0;
          goto LABEL_44;
        }

        v21 = 4;
      }

      goto LABEL_43;
    }

    v22 = *(a1 + 72);
    if (v22 == 3)
    {
      if ([v5 responseReceived])
      {
        v27 = [v5 buttons];
        v28 = [v27 lastObject];
        v29 = [v28 selected];

        if (v29)
        {
          v20 = *(*(a1 + 56) + 8);
          v21 = 5;
          goto LABEL_43;
        }
      }

      if (![v5 responseReceived] || (objc_msgSend(v5, "buttons"), v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "firstObject"), v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "selected"), v34, v33, !v35))
      {
        if (![v5 notificationCancelled])
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }
    }

    else
    {
      if (v22)
      {
        goto LABEL_44;
      }

      if ([v5 responseReceived])
      {
        v23 = [v5 buttons];
        v24 = [v23 lastObject];
        v25 = [v24 selected];

        if (v25)
        {
          v20 = *(*(a1 + 56) + 8);
          v21 = 2;
          goto LABEL_43;
        }
      }

      if (![v5 responseReceived] || (objc_msgSend(v5, "buttons"), v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "firstObject"), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "selected"), v31, v30, !v32))
      {
        if (![v5 notificationCancelled])
        {
          goto LABEL_44;
        }

LABEL_41:
        if ([v5 notificationDismissed])
        {
          goto LABEL_44;
        }

        v20 = *(*(a1 + 56) + 8);
        v21 = 1;
LABEL_43:
        *(v20 + 24) = v21;
LABEL_44:
        v36 = *(*(*(a1 + 56) + 8) + 24);
        if (v36 > 3)
        {
          if (v36 == 4 || v36 == 6)
          {
            v39 = *(a1 + 32);
            v40 = objc_opt_class();
            v41 = [*(a1 + 40) deviceName];
            v18 = [v40 userNotificationForType:1 deviceName:v41];

            [v18 presentNotification];
            if (WeakRetained)
            {
              v42 = WeakRetained[2];
              objc_sync_enter(v42);
              [WeakRetained[2] removeObjectForKey:*(a1 + 40)];
              objc_sync_exit(v42);
            }

            v43 = [v15 completionHandler];

            if (v43)
            {
              v44 = [v15 completionHandler];
              v44[2](v44, *(*(*(a1 + 56) + 8) + 24), *(*(*(a1 + 48) + 8) + 40));
            }

            goto LABEL_17;
          }
        }

        else
        {
          if (v36 == 2)
          {
            [v15 setPairingStatus:0];
            v47 = *(a1 + 32);
            v48 = objc_opt_class();
            v49 = [*(a1 + 40) deviceName];
            v18 = [v48 userNotificationForType:2 deviceName:v49];

            [v15 setUserNotification:v18];
            v50 = [v18 responseHandler];
            v54[0] = MEMORY[0x277D85DD0];
            v54[1] = 3221225472;
            v54[2] = __74__HIDRMUIUserAuthorizationManager_addUserAuthorizationRequest_completion___block_invoke_67;
            v54[3] = &unk_2796A3120;
            v54[4] = WeakRetained;
            v51 = *(a1 + 40);
            v52 = *(a1 + 56);
            v56 = v50;
            v57 = v52;
            v55 = v51;
            v53 = v50;
            [v18 presentNotificationWithResponseHandler:v54];

            goto LABEL_17;
          }

          if (v36 == 3)
          {
            if (WeakRetained)
            {
              v37 = WeakRetained[2];
              objc_sync_enter(v37);
              [WeakRetained[2] removeObjectForKey:*(a1 + 40)];
              objc_sync_exit(v37);
            }

            v38 = [v15 completionHandler];

            if (v38)
            {
              goto LABEL_16;
            }

            goto LABEL_18;
          }
        }

        if (WeakRetained)
        {
          v45 = WeakRetained[2];
          objc_sync_enter(v45);
          [WeakRetained[2] removeObjectForKey:*(a1 + 40)];
          objc_sync_exit(v45);
        }

        v46 = [v15 completionHandler];

        if (v46)
        {
          goto LABEL_16;
        }

        goto LABEL_18;
      }
    }

    v20 = *(*(a1 + 56) + 8);
    v21 = 6;
    goto LABEL_43;
  }

  v15 = 0;
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    goto LABEL_19;
  }

LABEL_15:
  v17 = [v15 completionHandler];

  if (v17)
  {
LABEL_16:
    v18 = [v15 completionHandler];
    v18[2](v18, *(*(*(a1 + 56) + 8) + 24), *(*(*(a1 + 48) + 8) + 40));
LABEL_17:
  }

LABEL_18:

  v19 = *MEMORY[0x277D85DE8];
}

void __74__HIDRMUIUserAuthorizationManager_addUserAuthorizationRequest_completion___block_invoke_67(void *a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = a1[4];
  if (v6)
  {
    v7 = *(v6 + 16);
    objc_sync_enter(v7);
    v8 = [*(a1[4] + 16) objectForKey:a1[5]];
    v9 = v8;
    if (v8)
    {
      [v8 setUserNotification:0];
    }

    [*(a1[4] + 16) removeObjectForKey:a1[5]];
    objc_sync_exit(v7);
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 completionHandler];

  if (v10)
  {
    v11 = [v9 completionHandler];
    (v11)[2](v11, *(*(a1[7] + 8) + 24), v5);
  }

  (*(a1[6] + 16))();
}

- (BOOL)removeUserAuthorizationRequest:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HIDRMUIUserAuthorizationManager *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v6;
    _os_log_impl(&dword_250977000, v7, OS_LOG_TYPE_DEFAULT, "Removing user authorization request... (authorizationRequest: %@)", buf, 0xCu);
  }

  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v16 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA450];
    v9 = HIDRMUIErrorStringFromCode(1001);
    v23 = v9;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v17 = [v16 errorWithDomain:@"HIDRMUIErrorDomain" code:1001 userInfo:{v13, v22}];
LABEL_11:
    v14 = v17;
    v15 = 0;
    goto LABEL_12;
  }

  v8 = self->_authRequests;
  objc_sync_enter(v8);
  v9 = [(NSMutableDictionary *)self->_authRequests objectForKey:v6];
  [(NSMutableDictionary *)self->_authRequests removeObjectForKey:v6];
  objc_sync_exit(v8);

  if (!v9)
  {
    v21 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v25 = @"Authorization request not found.";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v17 = [v21 errorWithDomain:@"HIDRMUIErrorDomain" code:1002 userInfo:v13];
    goto LABEL_11;
  }

  v10 = [v9 userNotification];

  if (v10)
  {
    v11 = [v9 userNotification];
    [v11 dismissNotification];
  }

  v12 = [v9 completionHandler];

  if (v12)
  {
    v13 = [v9 completionHandler];
    v13[2](v13, 0, 0);
    v14 = 0;
    v15 = 1;
LABEL_12:

    goto LABEL_13;
  }

  v14 = 0;
  v15 = 1;
LABEL_13:

  if (a4)
  {
    v18 = v14;
    *a4 = v14;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)removeAllUserAuthorizationRequests:(id *)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = [(HIDRMUIUserAuthorizationManager *)self userAuthorizationRequests];
  v5 = [(HIDRMUIUserAuthorizationManager *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = [v4 count];
    _os_log_impl(&dword_250977000, v5, OS_LOG_TYPE_DEFAULT, "Removing all user authorization requests... (authRequests.count: %lu)", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v14 = 0;
        [(HIDRMUIUserAuthorizationManager *)self removeUserAuthorizationRequest:v11 error:&v14];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
  return 1;
}

void __90__HIDRMUIUserAuthorizationManager_handleInputCharacter_forUserAuthorizationRequest_error___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if ([*(a1 + 32) count] > a3)
  {
    v7 = [*(a1 + 32) objectAtIndex:a3];
    v8 = [v9 isEqualToNumber:v7];

    if (v8)
    {
      goto LABEL_5;
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  *a4 = 1;
LABEL_5:
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HIDRMUIUserAuthorizationManager_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken != -1)
  {
    dispatch_once(&log_onceToken, block);
  }

  v2 = log_log;

  return v2;
}

void __38__HIDRMUIUserAuthorizationManager_log__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v10 bundleIdentifier];
  v4 = [v3 UTF8String];
  v5 = *(a1 + 32);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = os_log_create(v4, [v7 UTF8String]);
  v9 = log_log;
  log_log = v8;
}

- (OS_os_log)log
{
  v2 = objc_opt_class();

  return [v2 log];
}

+ (void)userNotificationForType:deviceName:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_250977000, v0, v1, "Invalid notification type! (notificationType: %ld", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __70__HIDRMUIUserAuthorizationManager_userNotificationForType_deviceName___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 buttons];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_250977000, v2, v3, "userNotification.buttons: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __70__HIDRMUIUserAuthorizationManager_userNotificationForType_deviceName___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_250977000, v0, v1, "Error opening settings pane! (error: %@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addUserAuthorizationRequest:(os_log_t)log completion:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_250977000, log, OS_LOG_TYPE_ERROR, "Invalid authorization request! (authorizationRequest.class: %@)", buf, 0xCu);
}

void __74__HIDRMUIUserAuthorizationManager_addUserAuthorizationRequest_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_250977000, v0, v1, "Error presenting user notification! (error_int: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __74__HIDRMUIUserAuthorizationManager_addUserAuthorizationRequest_completion___block_invoke_cold_2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 buttons];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_250977000, v2, v3, "userNotification.buttons: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleInputCharacter:(unsigned __int16)a1 forUserAuthorizationRequest:(NSObject *)a2 error:.cold.1(unsigned __int16 a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_debug_impl(&dword_250977000, a2, OS_LOG_TYPE_DEBUG, "Not in pairing flow, ignoring input character! (character: '%C')", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)handleInputCharacter:(uint8_t *)buf forUserAuthorizationRequest:(os_log_t)log error:.cold.2(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_250977000, log, OS_LOG_TYPE_ERROR, "Pairing failure! (pairingCodeDigits: %@, pairingCodeDigitsEntered: %@)", buf, 0x16u);
}

@end