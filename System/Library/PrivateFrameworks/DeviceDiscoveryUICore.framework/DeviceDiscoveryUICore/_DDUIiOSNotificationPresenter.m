@interface _DDUIiOSNotificationPresenter
- (BOOL)_applicationSupportsServiceIdentifier:(id)a3 serviceIdentifier:(id)a4;
- (_DDUINotificationPresenterDelegate)delegate;
- (_DDUIiOSNotificationPresenter)init;
- (_DDUIiOSNotificationPresenter)initWithNotificationCenter:(id)a3 applicationRecordVendor:(id)a4 openApplicationService:(id)a5;
- (id)_createAppStoreNotification:(id)a3;
- (id)_createConnectNotificationWithDeviceName:(id)a3 appName:(id)a4;
- (id)_createContinuityCameraNotificationWithDeviceName:(id)a3;
- (id)_createMicOnlyNotificationWithDeviceName:(id)a3;
- (void)_clearNotificationTimeout;
- (void)_clearPresentedNotificationIfNeeded;
- (void)_configureNotificationTimeout;
- (void)_handleContinuityCameraDisabledAlertResponseWithState:(int64_t)a3;
- (void)_setupIfNeeded;
- (void)_showContinuityCameraDisabledAlertWithState:(int64_t)a3;
- (void)_showContinuityConfirmation:(id)a3 identifier:(id)a4 micOnly:(BOOL)a5 completion:(id)a6;
- (void)dismissNotificationWithIdentifier:(id)a3;
- (void)showNotificationForApplication:(id)a3 deviceName:(id)a4 identifier:(id)a5 completion:(id)a6;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation _DDUIiOSNotificationPresenter

- (_DDUIiOSNotificationPresenter)init
{
  v3 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.UserNotifications.DeviceDiscoveryUIAgent"];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
  v6 = [(_DDUIiOSNotificationPresenter *)self initWithNotificationCenter:v3 applicationRecordVendor:v4 openApplicationService:v5];

  return v6;
}

- (_DDUIiOSNotificationPresenter)initWithNotificationCenter:(id)a3 applicationRecordVendor:(id)a4 openApplicationService:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _DDUIiOSNotificationPresenter;
  v12 = [(_DDUIiOSNotificationPresenter *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_notificationCenter, a3);
    objc_storeStrong(&v13->_applicationRecordVendor, a4);
    objc_storeStrong(&v13->_openApplicationService, a5);
  }

  return v13;
}

- (void)_setupIfNeeded
{
  v35[1] = *MEMORY[0x277D85DE8];
  if (![(_DDUIiOSNotificationPresenter *)self setup])
  {
    v3 = [(_DDUIiOSNotificationPresenter *)self notificationCenter];
    [v3 setDelegate:self];

    v4 = [(_DDUIiOSNotificationPresenter *)self notificationCenter];
    [v4 setWantsNotificationResponsesDelivered];

    v5 = [(_DDUIiOSNotificationPresenter *)self notificationCenter];
    [v5 requestAuthorizationWithOptions:4 completionHandler:&__block_literal_global_2];

    v31 = DDUICoreLocalizedString(@"LAUNCH_APPLICTION");
    v29 = DDUICoreLocalizedString(@"LAUNCH_APP_STORE");
    v27 = DDUICoreLocalizedString(@"CONTINUITYCAMERA_ACCEPT");
    v6 = DDUICoreLocalizedString(@"CONTINUITYCAMERA_DECLINE");
    v30 = [MEMORY[0x277CE1F80] actionWithIdentifier:@"OPEN_APPLICATION" title:v31 options:1];
    v7 = MEMORY[0x277CE1F98];
    v35[0] = v30;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
    v9 = MEMORY[0x277CBEBF8];
    v26 = [v7 categoryWithIdentifier:@"LAUNCH_CATEGORY" actions:v8 intentIdentifiers:MEMORY[0x277CBEBF8] options:0];

    v28 = [MEMORY[0x277CE1F80] actionWithIdentifier:@"OPEN_APP_STORE" title:v29 options:1];
    v10 = MEMORY[0x277CE1F98];
    v34 = v28;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
    v12 = [v10 categoryWithIdentifier:@"APP_STORE_CATEGORY" actions:v11 intentIdentifiers:v9 options:0];

    v13 = [MEMORY[0x277CE1F80] actionWithIdentifier:@"CONTINUITYCAPTURE_ACCEPT" title:v27 options:1];
    v14 = [MEMORY[0x277CE1F80] actionWithIdentifier:@"CONTINUITYCAPTURE_DECLINE" title:v6 options:1];
    v15 = MEMORY[0x277CE1F98];
    v33[0] = v13;
    v33[1] = v14;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
    v17 = [v15 categoryWithIdentifier:@"CONTINUITYCAPTURE_CATEGORY" actions:v16 intentIdentifiers:v9 options:0];

    v18 = MEMORY[0x277CE1F98];
    v32[0] = v13;
    v32[1] = v14;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    v20 = [v18 categoryWithIdentifier:@"CONTINUITYCAPTURE_MICONLY_CATEGORY" actions:v19 intentIdentifiers:v9 options:0];

    v21 = [(_DDUIiOSNotificationPresenter *)self notificationCenter];
    v22 = [MEMORY[0x277CBEB98] setWithObjects:{v26, v12, v17, v20, 0}];
    [v21 setNotificationCategories:v22];

    v23 = objc_alloc_init(MEMORY[0x277D54D00]);
    wirelessSettingsController = self->_wirelessSettingsController;
    self->_wirelessSettingsController = v23;

    [(_DDUIiOSNotificationPresenter *)self setSetup:1];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)dismissNotificationWithIdentifier:(id)a3
{
  v9 = a3;
  v4 = [(_DDUIiOSNotificationPresenter *)self presentedNotification];

  if (v4)
  {
    v5 = [(_DDUIiOSNotificationPresenter *)self presentedNotification];
    v6 = [v5 notificationID];
    v7 = [v9 UUIDString];
    v8 = [v6 isEqualToString:v7];

    if (v8)
    {
      [(_DDUIiOSNotificationPresenter *)self _clearPresentedNotificationIfNeeded];
    }
  }
}

- (void)showNotificationForApplication:(id)a3 deviceName:(id)a4 identifier:(id)a5 completion:(id)a6
{
  v42 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(_DDUIiOSNotificationPresenter *)self applicationRecordVendor];
  v15 = [v10 applicationID];
  v16 = [v14 bundleRecordWithApplicationIdentifier:v15 error:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
    v18 = [v10 serviceIdentifier];
    v19 = [(_DDUIiOSNotificationPresenter *)self _applicationSupportsServiceIdentifier:v17 serviceIdentifier:v18];

    if (!v19)
    {
      [(_DDUIiOSNotificationPresenter *)self _clearPresentedNotificationIfNeeded];
      v13[2](v13, 4);

      goto LABEL_17;
    }

    v34 = v11;
    if (v17 && (-[NSObject iTunesMetadata](v17, "iTunesMetadata"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 storeItemIdentifier], v22 = objc_msgSend(v10, "adamID"), v20, v21 == v22))
    {
      v23 = [v17 localizedName];
      v24 = [(_DDUIiOSNotificationPresenter *)self _createConnectNotificationWithDeviceName:v11 appName:v23];
      v25 = 0;
    }

    else
    {
      v13[2](v13, 3);
      v23 = [v10 appName];
      v24 = [(_DDUIiOSNotificationPresenter *)self _createAppStoreNotification:v23];
      v25 = 1;
    }

    v27 = _DDUICoreLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v39 = v10;
      v40 = 2112;
      v41 = v17;
      _os_log_impl(&dword_230EF9000, v27, OS_LOG_TYPE_DEFAULT, "Posting app launch request notification {applicationInfo: %@, applicationRecord: %@}", buf, 0x16u);
    }
  }

  else
  {
    v34 = v11;
    v13[2](v13, 3);
    v26 = [v10 appName];
    v24 = [(_DDUIiOSNotificationPresenter *)self _createAppStoreNotification:v26];

    v17 = _DDUICoreLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v39 = v10;
      v40 = 2112;
      v41 = v16;
      _os_log_impl(&dword_230EF9000, v17, OS_LOG_TYPE_DEFAULT, "Posting app not installed notification {applicationInfo: %@, bundleRecord: %@}", buf, 0x16u);
    }

    v25 = 1;
  }

  [(_DDUIiOSNotificationPresenter *)self _setupIfNeeded];
  [(_DDUIiOSNotificationPresenter *)self _clearPresentedNotificationIfNeeded];
  v28 = [v12 UUIDString];
  v29 = objc_alloc_init(_DDUIiOSPresentedNotification);
  [(_DDUIiOSPresentedNotification *)v29 setApplicationInfo:v10];
  [(_DDUIiOSPresentedNotification *)v29 setNotificationID:v28];
  if ((v25 & 1) == 0)
  {
    [(_DDUIiOSPresentedNotification *)v29 setCompletion:v13];
  }

  v30 = [MEMORY[0x277CE1FC0] requestWithIdentifier:v28 content:v24 trigger:{0, v34}];
  v31 = [(_DDUIiOSNotificationPresenter *)self notificationCenter];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __97___DDUIiOSNotificationPresenter_showNotificationForApplication_deviceName_identifier_completion___block_invoke;
  v36[3] = &unk_2788F5DF8;
  v37 = v28;
  v32 = v28;
  [v31 addNotificationRequest:v30 withCompletionHandler:v36];

  [(_DDUIiOSNotificationPresenter *)self setPresentedNotification:v29];
  [(_DDUIiOSNotificationPresenter *)self _configureNotificationTimeout];

  v11 = v35;
LABEL_17:

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_showContinuityConfirmation:(id)a3 identifier:(id)a4 micOnly:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v29 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = _DDUICoreLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v26 = v11;
    v27 = 1024;
    v28 = v7;
    _os_log_impl(&dword_230EF9000, v13, OS_LOG_TYPE_DEFAULT, "Request to present notification for %@ micOnly: %d", buf, 0x12u);
  }

  [(_DDUIiOSNotificationPresenter *)self _setupIfNeeded];
  [(_DDUIiOSNotificationPresenter *)self _clearPresentedNotificationIfNeeded];
  v14 = [v10 name];
  if (v7)
  {
    [(_DDUIiOSNotificationPresenter *)self _createMicOnlyNotificationWithDeviceName:v14];
  }

  else
  {
    [(_DDUIiOSNotificationPresenter *)self _createContinuityCameraNotificationWithDeviceName:v14];
  }
  v15 = ;

  v16 = [v11 UUIDString];
  v17 = objc_alloc_init(_DDUIiOSPresentedNotification);
  [(_DDUIiOSPresentedNotification *)v17 setNotificationID:v16];
  [(_DDUIiOSPresentedNotification *)v17 setCompletion:v12];

  v18 = [v10 identifier];
  [(_DDUIiOSPresentedNotification *)v17 setRemoteDeviceIdentifier:v18];

  v19 = [MEMORY[0x277CE1FC0] requestWithIdentifier:v16 content:v15 trigger:0];
  v20 = [(_DDUIiOSNotificationPresenter *)self notificationCenter];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __91___DDUIiOSNotificationPresenter__showContinuityConfirmation_identifier_micOnly_completion___block_invoke;
  v23[3] = &unk_2788F5DF8;
  v24 = v16;
  v21 = v16;
  [v20 addNotificationRequest:v19 withCompletionHandler:v23];

  [(_DDUIiOSNotificationPresenter *)self setPresentedNotification:v17];
  [(_DDUIiOSNotificationPresenter *)self _configureNotificationTimeout];

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)_applicationSupportsServiceIdentifier:(id)a3 serviceIdentifier:(id)a4
{
  v5 = a4;
  v6 = DDUIFetchInfoPlistFromRecord(a3);
  v7 = [v6 advertisesByIdentifier];
  v8 = [v7 objectForKeyedSubscript:v5];

  return v8 != 0;
}

- (void)_configureNotificationTimeout
{
  v3 = DDUICorePrimaryQueue();
  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v3);
  [(_DDUIiOSNotificationPresenter *)self setClearNotificationTimer:v4];

  v5 = [(_DDUIiOSNotificationPresenter *)self clearNotificationTimer];
  v6 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0);

  v7 = [(_DDUIiOSNotificationPresenter *)self clearNotificationTimer];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __62___DDUIiOSNotificationPresenter__configureNotificationTimeout__block_invoke;
  handler[3] = &unk_2788F5A68;
  handler[4] = self;
  dispatch_source_set_event_handler(v7, handler);

  v8 = [(_DDUIiOSNotificationPresenter *)self clearNotificationTimer];
  dispatch_resume(v8);
}

- (void)_clearNotificationTimeout
{
  v3 = [(_DDUIiOSNotificationPresenter *)self clearNotificationTimer];

  if (v3)
  {
    v4 = [(_DDUIiOSNotificationPresenter *)self clearNotificationTimer];
    dispatch_source_cancel(v4);

    [(_DDUIiOSNotificationPresenter *)self setClearNotificationTimer:0];
  }
}

- (void)_clearPresentedNotificationIfNeeded
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [(_DDUIiOSNotificationPresenter *)self presentedNotification];

  if (v3)
  {
    [(_DDUIiOSNotificationPresenter *)self _clearNotificationTimeout];
    v4 = [(_DDUIiOSNotificationPresenter *)self notificationCenter];
    v5 = [(_DDUIiOSNotificationPresenter *)self presentedNotification];
    v6 = [v5 notificationID];
    v9[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    [v4 removeDeliveredNotificationsWithIdentifiers:v7];

    [(_DDUIiOSNotificationPresenter *)self setPresentedNotification:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleContinuityCameraDisabledAlertResponseWithState:(int64_t)a3
{
  v3 = @"prefs:root=General";
  if (a3 == 1)
  {
    v3 = @"prefs:root=General&path=CONTINUITY_SPEC";
  }

  if (a3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"prefs:root=WIFI";
  }

  v5 = [MEMORY[0x277CBEBC0] URLWithString:v4];
  v6 = dispatch_queue_create("RPOpenURL", 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87___DDUIiOSNotificationPresenter__handleContinuityCameraDisabledAlertResponseWithState___block_invoke;
  block[3] = &unk_2788F5A68;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)_showContinuityCameraDisabledAlertWithState:(int64_t)a3
{
  v5 = DDUICorePrimaryQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77___DDUIiOSNotificationPresenter__showContinuityCameraDisabledAlertWithState___block_invoke;
  v6[3] = &unk_2788F5F80;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

- (id)_createConnectNotificationWithDeviceName:(id)a3 appName:(id)a4
{
  v5 = MEMORY[0x277CE1F60];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 setTitle:v7];

  v9 = DDUICoreLocalizedString(@"CONNECT_IPHONE");
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:v9, v6, 0];

  [v8 setBody:v10];
  v11 = [MEMORY[0x277CE1FB0] iconForSystemImageNamed:@"appletv.fill"];
  [v8 setIcon:v11];
  [v8 setCategoryIdentifier:@"LAUNCH_CATEGORY"];
  [v8 setShouldIgnoreDoNotDisturb:1];
  [v8 setShouldBackgroundDefaultAction:1];
  [v8 setShouldAuthenticateDefaultAction:1];

  return v8;
}

- (id)_createAppStoreNotification:(id)a3
{
  v3 = MEMORY[0x277CE1F60];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = DDUICoreLocalizedString(@"APP_STORE_TITLE");
  [v5 setTitle:v6];

  v7 = DDUICoreLocalizedString(@"APP_STORE_BODY");
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:v7, v4, 0];

  [v5 setBody:v8];
  v9 = [MEMORY[0x277CE1FB0] iconForSystemImageNamed:@"appletv.fill"];
  [v5 setIcon:v9];
  [v5 setCategoryIdentifier:@"APP_STORE_CATEGORY"];
  [v5 setShouldIgnoreDoNotDisturb:1];
  [v5 setShouldBackgroundDefaultAction:1];
  [v5 setShouldAuthenticateDefaultAction:1];

  return v5;
}

- (id)_createContinuityCameraNotificationWithDeviceName:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v5 = DDUICoreLocalizedString(@"CONTINUITYCAMERA_TITLE");
  [v4 setTitle:v5];

  DeviceClass = GestaltGetDeviceClass();
  if (DeviceClass == 3)
  {
    v7 = @"CONNECT_CONTINUITYCAMERA_IPAD";
    goto LABEL_5;
  }

  if (DeviceClass == 1)
  {
    v7 = @"CONNECT_CONTINUITYCAMERA_IPHONE";
LABEL_5:
    v8 = DDUICoreLocalizedString(v7);
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:v8, v3];
  [v4 setBody:v9];

  v10 = [MEMORY[0x277CE1FB0] iconForSystemImageNamed:@"rectangle.inset.filled.and.camera"];
  [v4 setIcon:v10];
  v11 = [MEMORY[0x277CE1FE0] defaultSound];
  [v4 setSound:v11];

  [v4 setCategoryIdentifier:@"CONTINUITYCAPTURE_CATEGORY"];
  [v4 setShouldIgnoreDoNotDisturb:1];
  [v4 setShouldBackgroundDefaultAction:1];
  [v4 setShouldAuthenticateDefaultAction:1];
  [v4 setShouldSuppressDefaultAction:1];

  return v4;
}

- (id)_createMicOnlyNotificationWithDeviceName:(id)a3
{
  v3 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v4 = DDUICoreSingLocalizedString(@"CONTINUITY_SING_NOTIFICATION_TITLE");
  [v3 setTitle:v4];

  v5 = DDUICoreSingLocalizedString(@"CONTINUITY_SING_NOTIFICATION_BODY");
  [v3 setBody:v5];

  v6 = [MEMORY[0x277CE1FB0] iconForApplicationIdentifier:@"com.apple.Music"];
  [v3 setIcon:v6];
  v7 = [MEMORY[0x277CE1FE0] defaultSound];
  [v3 setSound:v7];

  [v3 setCategoryIdentifier:@"CONTINUITYCAPTURE_MICONLY_CATEGORY"];
  [v3 setShouldIgnoreDoNotDisturb:1];
  [v3 setShouldBackgroundDefaultAction:1];
  [v3 setShouldAuthenticateDefaultAction:1];
  [v3 setShouldSuppressDefaultAction:1];

  return v3;
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v82[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [(_DDUIiOSNotificationPresenter *)self presentedNotification];

  if (v9)
  {
    v10 = [(_DDUIiOSNotificationPresenter *)self presentedNotification];
    v11 = [v10 notificationID];
    v12 = [v7 notification];
    v13 = [v12 request];
    v14 = [v13 identifier];
    v15 = [v11 isEqual:v14];

    if (v15)
    {
      v16 = [(_DDUIiOSNotificationPresenter *)self presentedNotification];
      v17 = [v16 completion];

      v18 = [v7 notification];
      v19 = [v18 request];
      v20 = [v19 content];
      v21 = [v20 categoryIdentifier];
      v22 = [v21 isEqualToString:@"LAUNCH_CATEGORY"];

      if (v22)
      {
        v23 = _DDUICoreLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [(_DDUIiOSNotificationPresenter *)self presentedNotification];
          v25 = [v24 applicationInfo];
          v26 = [v25 bundleID];
          *buf = 138412290;
          v78 = v26;
          _os_log_impl(&dword_230EF9000, v23, OS_LOG_TYPE_DEFAULT, "Attempting to launch application %@", buf, 0xCu);
        }

        v81 = *MEMORY[0x277D0AC58];
        v82[0] = MEMORY[0x277CBEC38];
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:&v81 count:1];
        v28 = [MEMORY[0x277D0AD60] optionsWithDictionary:v27];
        v29 = [(_DDUIiOSNotificationPresenter *)self openApplicationService];
        v30 = [(_DDUIiOSNotificationPresenter *)self presentedNotification];
        v31 = [v30 applicationInfo];
        v32 = [v31 bundleID];
        v75[0] = MEMORY[0x277D85DD0];
        v75[1] = 3221225472;
        v75[2] = __109___DDUIiOSNotificationPresenter_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke;
        v75[3] = &unk_2788F5FA8;
        v76 = v17;
        [v29 openApplication:v32 withOptions:v28 completion:v75];

        goto LABEL_36;
      }

      v35 = [v7 notification];
      v36 = [v35 request];
      v37 = [v36 content];
      v38 = [v37 categoryIdentifier];
      v39 = [v38 isEqualToString:@"APP_STORE_CATEGORY"];

      if (v39)
      {
        v27 = [(_DDUIiOSNotificationPresenter *)self delegate];
        v28 = [(_DDUIiOSNotificationPresenter *)self presentedNotification];
        v40 = [v28 applicationInfo];
        [v27 deepLinkToAppStoreForApplication:v40];
LABEL_35:

LABEL_36:
        goto LABEL_37;
      }

      v41 = [v7 notification];
      v42 = [v41 request];
      v43 = [v42 content];
      v44 = [v43 categoryIdentifier];
      v74 = v17;
      if ([v44 isEqualToString:@"CONTINUITYCAPTURE_CATEGORY"])
      {
      }

      else
      {
        v45 = [v7 notification];
        v46 = [v45 request];
        v47 = [v46 content];
        [v47 categoryIdentifier];
        v48 = v72 = v41;
        v71 = [v48 isEqualToString:@"CONTINUITYCAPTURE_MICONLY_CATEGORY"];

        v17 = v74;
        if ((v71 & 1) == 0)
        {
LABEL_37:
          [(_DDUIiOSNotificationPresenter *)self _clearNotificationTimeout];
          [(_DDUIiOSNotificationPresenter *)self setPresentedNotification:0];
          v8[2](v8);

          goto LABEL_38;
        }
      }

      v49 = _DDUICoreLog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = [v7 notification];
        v51 = [v50 request];
        v52 = [v51 content];
        v53 = [v52 categoryIdentifier];
        *buf = 138412546;
        v78 = v7;
        v79 = 2112;
        v80 = v53;
        _os_log_impl(&dword_230EF9000, v49, OS_LOG_TYPE_DEFAULT, "Received Continuity confirmation response: %@ for category: %@\n", buf, 0x16u);
      }

      v54 = [(_DDUIiOSNotificationPresenter *)self presentedNotification];
      v27 = [v54 completion];

      v55 = [(_DDUIiOSNotificationPresenter *)self presentedNotification];
      v28 = [v55 remoteDeviceIdentifier];

      v56 = [v7 actionIdentifier];
      v57 = [v56 isEqualToString:@"CONTINUITYCAPTURE_ACCEPT"];

      if (!v57)
      {
        v65 = [v7 actionIdentifier];
        v66 = [v65 isEqualToString:@"CONTINUITYCAPTURE_DECLINE"];

        if (v66)
        {
          v67 = 7;
        }

        else
        {
          v67 = 2;
        }

        v27[2](v27, v67);
        v17 = v74;
        goto LABEL_36;
      }

      v40 = +[_DDUIRemoteDisplaySessionHandler sharedInstance];
      if ([v40 isWifiStateOn])
      {
        if ([v40 isContinuityCaptureUserPreferenceEnabled])
        {
          v58 = [v7 notification];
          v59 = [v58 request];
          v60 = [v59 content];
          v61 = [v60 categoryIdentifier];
          v73 = [v61 isEqualToString:@"CONTINUITYCAPTURE_MICONLY_CATEGORY"];

          v62 = *MEMORY[0x277D44300];
          if (v73)
          {
            v63 = *MEMORY[0x277D44300];
          }

          else
          {
            v63 = @"Phone accepted confirmation notification";
          }

          [v40 enterSessionWithRemoteDeviceID:v28 reason:v63];
          v64 = 1;
          goto LABEL_34;
        }

        v68 = self;
        v69 = 1;
      }

      else
      {
        v68 = self;
        v69 = 0;
      }

      [(_DDUIiOSNotificationPresenter *)v68 _showContinuityCameraDisabledAlertWithState:v69];
      v64 = 2;
LABEL_34:
      v17 = v74;
      v27[2](v27, v64);
      goto LABEL_35;
    }

    v33 = _DDUICoreLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v34 = "Notification selected -- doesn't match presented ID, ignoring";
      goto LABEL_11;
    }
  }

  else
  {
    v33 = _DDUICoreLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v34 = "Notification selected -- nothing should be presented, ignoring";
LABEL_11:
      _os_log_impl(&dword_230EF9000, v33, OS_LOG_TYPE_DEFAULT, v34, buf, 2u);
    }
  }

  v8[2](v8);
LABEL_38:

  v70 = *MEMORY[0x277D85DE8];
}

- (_DDUINotificationPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end