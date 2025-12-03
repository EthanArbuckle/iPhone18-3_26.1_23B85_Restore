@interface _DDUIiOSNotificationPresenter
- (BOOL)_applicationSupportsServiceIdentifier:(id)identifier serviceIdentifier:(id)serviceIdentifier;
- (_DDUINotificationPresenterDelegate)delegate;
- (_DDUIiOSNotificationPresenter)init;
- (_DDUIiOSNotificationPresenter)initWithNotificationCenter:(id)center applicationRecordVendor:(id)vendor openApplicationService:(id)service;
- (id)_createAppStoreNotification:(id)notification;
- (id)_createConnectNotificationWithDeviceName:(id)name appName:(id)appName;
- (id)_createContinuityCameraNotificationWithDeviceName:(id)name;
- (id)_createMicOnlyNotificationWithDeviceName:(id)name;
- (void)_clearNotificationTimeout;
- (void)_clearPresentedNotificationIfNeeded;
- (void)_configureNotificationTimeout;
- (void)_handleContinuityCameraDisabledAlertResponseWithState:(int64_t)state;
- (void)_setupIfNeeded;
- (void)_showContinuityCameraDisabledAlertWithState:(int64_t)state;
- (void)_showContinuityConfirmation:(id)confirmation identifier:(id)identifier micOnly:(BOOL)only completion:(id)completion;
- (void)dismissNotificationWithIdentifier:(id)identifier;
- (void)showNotificationForApplication:(id)application deviceName:(id)name identifier:(id)identifier completion:(id)completion;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation _DDUIiOSNotificationPresenter

- (_DDUIiOSNotificationPresenter)init
{
  v3 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.UserNotifications.DeviceDiscoveryUIAgent"];
  v4 = objc_opt_class();
  serviceWithDefaultShellEndpoint = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
  v6 = [(_DDUIiOSNotificationPresenter *)self initWithNotificationCenter:v3 applicationRecordVendor:v4 openApplicationService:serviceWithDefaultShellEndpoint];

  return v6;
}

- (_DDUIiOSNotificationPresenter)initWithNotificationCenter:(id)center applicationRecordVendor:(id)vendor openApplicationService:(id)service
{
  centerCopy = center;
  vendorCopy = vendor;
  serviceCopy = service;
  v15.receiver = self;
  v15.super_class = _DDUIiOSNotificationPresenter;
  v12 = [(_DDUIiOSNotificationPresenter *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_notificationCenter, center);
    objc_storeStrong(&v13->_applicationRecordVendor, vendor);
    objc_storeStrong(&v13->_openApplicationService, service);
  }

  return v13;
}

- (void)_setupIfNeeded
{
  v35[1] = *MEMORY[0x277D85DE8];
  if (![(_DDUIiOSNotificationPresenter *)self setup])
  {
    notificationCenter = [(_DDUIiOSNotificationPresenter *)self notificationCenter];
    [notificationCenter setDelegate:self];

    notificationCenter2 = [(_DDUIiOSNotificationPresenter *)self notificationCenter];
    [notificationCenter2 setWantsNotificationResponsesDelivered];

    notificationCenter3 = [(_DDUIiOSNotificationPresenter *)self notificationCenter];
    [notificationCenter3 requestAuthorizationWithOptions:4 completionHandler:&__block_literal_global_2];

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

    notificationCenter4 = [(_DDUIiOSNotificationPresenter *)self notificationCenter];
    v22 = [MEMORY[0x277CBEB98] setWithObjects:{v26, v12, v17, v20, 0}];
    [notificationCenter4 setNotificationCategories:v22];

    v23 = objc_alloc_init(MEMORY[0x277D54D00]);
    wirelessSettingsController = self->_wirelessSettingsController;
    self->_wirelessSettingsController = v23;

    [(_DDUIiOSNotificationPresenter *)self setSetup:1];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)dismissNotificationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  presentedNotification = [(_DDUIiOSNotificationPresenter *)self presentedNotification];

  if (presentedNotification)
  {
    presentedNotification2 = [(_DDUIiOSNotificationPresenter *)self presentedNotification];
    notificationID = [presentedNotification2 notificationID];
    uUIDString = [identifierCopy UUIDString];
    v8 = [notificationID isEqualToString:uUIDString];

    if (v8)
    {
      [(_DDUIiOSNotificationPresenter *)self _clearPresentedNotificationIfNeeded];
    }
  }
}

- (void)showNotificationForApplication:(id)application deviceName:(id)name identifier:(id)identifier completion:(id)completion
{
  v42 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  nameCopy = name;
  identifierCopy = identifier;
  completionCopy = completion;
  applicationRecordVendor = [(_DDUIiOSNotificationPresenter *)self applicationRecordVendor];
  applicationID = [applicationCopy applicationID];
  v16 = [applicationRecordVendor bundleRecordWithApplicationIdentifier:applicationID error:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
    serviceIdentifier = [applicationCopy serviceIdentifier];
    v19 = [(_DDUIiOSNotificationPresenter *)self _applicationSupportsServiceIdentifier:v17 serviceIdentifier:serviceIdentifier];

    if (!v19)
    {
      [(_DDUIiOSNotificationPresenter *)self _clearPresentedNotificationIfNeeded];
      completionCopy[2](completionCopy, 4);

      goto LABEL_17;
    }

    v34 = nameCopy;
    if (v17 && (-[NSObject iTunesMetadata](v17, "iTunesMetadata"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 storeItemIdentifier], v22 = objc_msgSend(applicationCopy, "adamID"), v20, v21 == v22))
    {
      localizedName = [v17 localizedName];
      v24 = [(_DDUIiOSNotificationPresenter *)self _createConnectNotificationWithDeviceName:nameCopy appName:localizedName];
      v25 = 0;
    }

    else
    {
      completionCopy[2](completionCopy, 3);
      localizedName = [applicationCopy appName];
      v24 = [(_DDUIiOSNotificationPresenter *)self _createAppStoreNotification:localizedName];
      v25 = 1;
    }

    v27 = _DDUICoreLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v39 = applicationCopy;
      v40 = 2112;
      v41 = v17;
      _os_log_impl(&dword_230EF9000, v27, OS_LOG_TYPE_DEFAULT, "Posting app launch request notification {applicationInfo: %@, applicationRecord: %@}", buf, 0x16u);
    }
  }

  else
  {
    v34 = nameCopy;
    completionCopy[2](completionCopy, 3);
    appName = [applicationCopy appName];
    v24 = [(_DDUIiOSNotificationPresenter *)self _createAppStoreNotification:appName];

    v17 = _DDUICoreLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v39 = applicationCopy;
      v40 = 2112;
      v41 = v16;
      _os_log_impl(&dword_230EF9000, v17, OS_LOG_TYPE_DEFAULT, "Posting app not installed notification {applicationInfo: %@, bundleRecord: %@}", buf, 0x16u);
    }

    v25 = 1;
  }

  [(_DDUIiOSNotificationPresenter *)self _setupIfNeeded];
  [(_DDUIiOSNotificationPresenter *)self _clearPresentedNotificationIfNeeded];
  uUIDString = [identifierCopy UUIDString];
  v29 = objc_alloc_init(_DDUIiOSPresentedNotification);
  [(_DDUIiOSPresentedNotification *)v29 setApplicationInfo:applicationCopy];
  [(_DDUIiOSPresentedNotification *)v29 setNotificationID:uUIDString];
  if ((v25 & 1) == 0)
  {
    [(_DDUIiOSPresentedNotification *)v29 setCompletion:completionCopy];
  }

  v30 = [MEMORY[0x277CE1FC0] requestWithIdentifier:uUIDString content:v24 trigger:{0, v34}];
  notificationCenter = [(_DDUIiOSNotificationPresenter *)self notificationCenter];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __97___DDUIiOSNotificationPresenter_showNotificationForApplication_deviceName_identifier_completion___block_invoke;
  v36[3] = &unk_2788F5DF8;
  v37 = uUIDString;
  v32 = uUIDString;
  [notificationCenter addNotificationRequest:v30 withCompletionHandler:v36];

  [(_DDUIiOSNotificationPresenter *)self setPresentedNotification:v29];
  [(_DDUIiOSNotificationPresenter *)self _configureNotificationTimeout];

  nameCopy = v35;
LABEL_17:

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_showContinuityConfirmation:(id)confirmation identifier:(id)identifier micOnly:(BOOL)only completion:(id)completion
{
  onlyCopy = only;
  v29 = *MEMORY[0x277D85DE8];
  confirmationCopy = confirmation;
  identifierCopy = identifier;
  completionCopy = completion;
  v13 = _DDUICoreLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v26 = identifierCopy;
    v27 = 1024;
    v28 = onlyCopy;
    _os_log_impl(&dword_230EF9000, v13, OS_LOG_TYPE_DEFAULT, "Request to present notification for %@ micOnly: %d", buf, 0x12u);
  }

  [(_DDUIiOSNotificationPresenter *)self _setupIfNeeded];
  [(_DDUIiOSNotificationPresenter *)self _clearPresentedNotificationIfNeeded];
  name = [confirmationCopy name];
  if (onlyCopy)
  {
    [(_DDUIiOSNotificationPresenter *)self _createMicOnlyNotificationWithDeviceName:name];
  }

  else
  {
    [(_DDUIiOSNotificationPresenter *)self _createContinuityCameraNotificationWithDeviceName:name];
  }
  v15 = ;

  uUIDString = [identifierCopy UUIDString];
  v17 = objc_alloc_init(_DDUIiOSPresentedNotification);
  [(_DDUIiOSPresentedNotification *)v17 setNotificationID:uUIDString];
  [(_DDUIiOSPresentedNotification *)v17 setCompletion:completionCopy];

  identifier = [confirmationCopy identifier];
  [(_DDUIiOSPresentedNotification *)v17 setRemoteDeviceIdentifier:identifier];

  v19 = [MEMORY[0x277CE1FC0] requestWithIdentifier:uUIDString content:v15 trigger:0];
  notificationCenter = [(_DDUIiOSNotificationPresenter *)self notificationCenter];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __91___DDUIiOSNotificationPresenter__showContinuityConfirmation_identifier_micOnly_completion___block_invoke;
  v23[3] = &unk_2788F5DF8;
  v24 = uUIDString;
  v21 = uUIDString;
  [notificationCenter addNotificationRequest:v19 withCompletionHandler:v23];

  [(_DDUIiOSNotificationPresenter *)self setPresentedNotification:v17];
  [(_DDUIiOSNotificationPresenter *)self _configureNotificationTimeout];

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)_applicationSupportsServiceIdentifier:(id)identifier serviceIdentifier:(id)serviceIdentifier
{
  serviceIdentifierCopy = serviceIdentifier;
  v6 = DDUIFetchInfoPlistFromRecord(identifier);
  advertisesByIdentifier = [v6 advertisesByIdentifier];
  v8 = [advertisesByIdentifier objectForKeyedSubscript:serviceIdentifierCopy];

  return v8 != 0;
}

- (void)_configureNotificationTimeout
{
  v3 = DDUICorePrimaryQueue();
  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v3);
  [(_DDUIiOSNotificationPresenter *)self setClearNotificationTimer:v4];

  clearNotificationTimer = [(_DDUIiOSNotificationPresenter *)self clearNotificationTimer];
  v6 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(clearNotificationTimer, v6, 0xFFFFFFFFFFFFFFFFLL, 0);

  clearNotificationTimer2 = [(_DDUIiOSNotificationPresenter *)self clearNotificationTimer];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __62___DDUIiOSNotificationPresenter__configureNotificationTimeout__block_invoke;
  handler[3] = &unk_2788F5A68;
  handler[4] = self;
  dispatch_source_set_event_handler(clearNotificationTimer2, handler);

  clearNotificationTimer3 = [(_DDUIiOSNotificationPresenter *)self clearNotificationTimer];
  dispatch_resume(clearNotificationTimer3);
}

- (void)_clearNotificationTimeout
{
  clearNotificationTimer = [(_DDUIiOSNotificationPresenter *)self clearNotificationTimer];

  if (clearNotificationTimer)
  {
    clearNotificationTimer2 = [(_DDUIiOSNotificationPresenter *)self clearNotificationTimer];
    dispatch_source_cancel(clearNotificationTimer2);

    [(_DDUIiOSNotificationPresenter *)self setClearNotificationTimer:0];
  }
}

- (void)_clearPresentedNotificationIfNeeded
{
  v9[1] = *MEMORY[0x277D85DE8];
  presentedNotification = [(_DDUIiOSNotificationPresenter *)self presentedNotification];

  if (presentedNotification)
  {
    [(_DDUIiOSNotificationPresenter *)self _clearNotificationTimeout];
    notificationCenter = [(_DDUIiOSNotificationPresenter *)self notificationCenter];
    presentedNotification2 = [(_DDUIiOSNotificationPresenter *)self presentedNotification];
    notificationID = [presentedNotification2 notificationID];
    v9[0] = notificationID;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    [notificationCenter removeDeliveredNotificationsWithIdentifiers:v7];

    [(_DDUIiOSNotificationPresenter *)self setPresentedNotification:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleContinuityCameraDisabledAlertResponseWithState:(int64_t)state
{
  v3 = @"prefs:root=General";
  if (state == 1)
  {
    v3 = @"prefs:root=General&path=CONTINUITY_SPEC";
  }

  if (state)
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

- (void)_showContinuityCameraDisabledAlertWithState:(int64_t)state
{
  v5 = DDUICorePrimaryQueue();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77___DDUIiOSNotificationPresenter__showContinuityCameraDisabledAlertWithState___block_invoke;
  v6[3] = &unk_2788F5F80;
  v6[4] = self;
  v6[5] = state;
  dispatch_async(v5, v6);
}

- (id)_createConnectNotificationWithDeviceName:(id)name appName:(id)appName
{
  v5 = MEMORY[0x277CE1F60];
  appNameCopy = appName;
  nameCopy = name;
  v8 = objc_alloc_init(v5);
  [v8 setTitle:nameCopy];

  v9 = DDUICoreLocalizedString(@"CONNECT_IPHONE");
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:v9, appNameCopy, 0];

  [v8 setBody:v10];
  v11 = [MEMORY[0x277CE1FB0] iconForSystemImageNamed:@"appletv.fill"];
  [v8 setIcon:v11];
  [v8 setCategoryIdentifier:@"LAUNCH_CATEGORY"];
  [v8 setShouldIgnoreDoNotDisturb:1];
  [v8 setShouldBackgroundDefaultAction:1];
  [v8 setShouldAuthenticateDefaultAction:1];

  return v8;
}

- (id)_createAppStoreNotification:(id)notification
{
  v3 = MEMORY[0x277CE1F60];
  notificationCopy = notification;
  v5 = objc_alloc_init(v3);
  v6 = DDUICoreLocalizedString(@"APP_STORE_TITLE");
  [v5 setTitle:v6];

  v7 = DDUICoreLocalizedString(@"APP_STORE_BODY");
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:v7, notificationCopy, 0];

  [v5 setBody:v8];
  v9 = [MEMORY[0x277CE1FB0] iconForSystemImageNamed:@"appletv.fill"];
  [v5 setIcon:v9];
  [v5 setCategoryIdentifier:@"APP_STORE_CATEGORY"];
  [v5 setShouldIgnoreDoNotDisturb:1];
  [v5 setShouldBackgroundDefaultAction:1];
  [v5 setShouldAuthenticateDefaultAction:1];

  return v5;
}

- (id)_createContinuityCameraNotificationWithDeviceName:(id)name
{
  nameCopy = name;
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
  nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:v8, nameCopy];
  [v4 setBody:nameCopy];

  v10 = [MEMORY[0x277CE1FB0] iconForSystemImageNamed:@"rectangle.inset.filled.and.camera"];
  [v4 setIcon:v10];
  defaultSound = [MEMORY[0x277CE1FE0] defaultSound];
  [v4 setSound:defaultSound];

  [v4 setCategoryIdentifier:@"CONTINUITYCAPTURE_CATEGORY"];
  [v4 setShouldIgnoreDoNotDisturb:1];
  [v4 setShouldBackgroundDefaultAction:1];
  [v4 setShouldAuthenticateDefaultAction:1];
  [v4 setShouldSuppressDefaultAction:1];

  return v4;
}

- (id)_createMicOnlyNotificationWithDeviceName:(id)name
{
  v3 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v4 = DDUICoreSingLocalizedString(@"CONTINUITY_SING_NOTIFICATION_TITLE");
  [v3 setTitle:v4];

  v5 = DDUICoreSingLocalizedString(@"CONTINUITY_SING_NOTIFICATION_BODY");
  [v3 setBody:v5];

  v6 = [MEMORY[0x277CE1FB0] iconForApplicationIdentifier:@"com.apple.Music"];
  [v3 setIcon:v6];
  defaultSound = [MEMORY[0x277CE1FE0] defaultSound];
  [v3 setSound:defaultSound];

  [v3 setCategoryIdentifier:@"CONTINUITYCAPTURE_MICONLY_CATEGORY"];
  [v3 setShouldIgnoreDoNotDisturb:1];
  [v3 setShouldBackgroundDefaultAction:1];
  [v3 setShouldAuthenticateDefaultAction:1];
  [v3 setShouldSuppressDefaultAction:1];

  return v3;
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v82[1] = *MEMORY[0x277D85DE8];
  responseCopy = response;
  handlerCopy = handler;
  presentedNotification = [(_DDUIiOSNotificationPresenter *)self presentedNotification];

  if (presentedNotification)
  {
    presentedNotification2 = [(_DDUIiOSNotificationPresenter *)self presentedNotification];
    notificationID = [presentedNotification2 notificationID];
    notification = [responseCopy notification];
    request = [notification request];
    identifier = [request identifier];
    v15 = [notificationID isEqual:identifier];

    if (v15)
    {
      presentedNotification3 = [(_DDUIiOSNotificationPresenter *)self presentedNotification];
      completion = [presentedNotification3 completion];

      notification2 = [responseCopy notification];
      request2 = [notification2 request];
      content = [request2 content];
      categoryIdentifier = [content categoryIdentifier];
      v22 = [categoryIdentifier isEqualToString:@"LAUNCH_CATEGORY"];

      if (v22)
      {
        v23 = _DDUICoreLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          presentedNotification4 = [(_DDUIiOSNotificationPresenter *)self presentedNotification];
          applicationInfo = [presentedNotification4 applicationInfo];
          bundleID = [applicationInfo bundleID];
          *buf = 138412290;
          v78 = bundleID;
          _os_log_impl(&dword_230EF9000, v23, OS_LOG_TYPE_DEFAULT, "Attempting to launch application %@", buf, 0xCu);
        }

        v81 = *MEMORY[0x277D0AC58];
        v82[0] = MEMORY[0x277CBEC38];
        delegate = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:&v81 count:1];
        presentedNotification6 = [MEMORY[0x277D0AD60] optionsWithDictionary:delegate];
        openApplicationService = [(_DDUIiOSNotificationPresenter *)self openApplicationService];
        presentedNotification5 = [(_DDUIiOSNotificationPresenter *)self presentedNotification];
        applicationInfo2 = [presentedNotification5 applicationInfo];
        bundleID2 = [applicationInfo2 bundleID];
        v75[0] = MEMORY[0x277D85DD0];
        v75[1] = 3221225472;
        v75[2] = __109___DDUIiOSNotificationPresenter_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke;
        v75[3] = &unk_2788F5FA8;
        v76 = completion;
        [openApplicationService openApplication:bundleID2 withOptions:presentedNotification6 completion:v75];

        goto LABEL_36;
      }

      notification3 = [responseCopy notification];
      request3 = [notification3 request];
      content2 = [request3 content];
      categoryIdentifier2 = [content2 categoryIdentifier];
      v39 = [categoryIdentifier2 isEqualToString:@"APP_STORE_CATEGORY"];

      if (v39)
      {
        delegate = [(_DDUIiOSNotificationPresenter *)self delegate];
        presentedNotification6 = [(_DDUIiOSNotificationPresenter *)self presentedNotification];
        applicationInfo3 = [presentedNotification6 applicationInfo];
        [delegate deepLinkToAppStoreForApplication:applicationInfo3];
LABEL_35:

LABEL_36:
        goto LABEL_37;
      }

      notification4 = [responseCopy notification];
      request4 = [notification4 request];
      content3 = [request4 content];
      categoryIdentifier3 = [content3 categoryIdentifier];
      v74 = completion;
      if ([categoryIdentifier3 isEqualToString:@"CONTINUITYCAPTURE_CATEGORY"])
      {
      }

      else
      {
        notification5 = [responseCopy notification];
        request5 = [notification5 request];
        content4 = [request5 content];
        [content4 categoryIdentifier];
        v48 = v72 = notification4;
        v71 = [v48 isEqualToString:@"CONTINUITYCAPTURE_MICONLY_CATEGORY"];

        completion = v74;
        if ((v71 & 1) == 0)
        {
LABEL_37:
          [(_DDUIiOSNotificationPresenter *)self _clearNotificationTimeout];
          [(_DDUIiOSNotificationPresenter *)self setPresentedNotification:0];
          handlerCopy[2](handlerCopy);

          goto LABEL_38;
        }
      }

      v49 = _DDUICoreLog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        notification6 = [responseCopy notification];
        request6 = [notification6 request];
        content5 = [request6 content];
        categoryIdentifier4 = [content5 categoryIdentifier];
        *buf = 138412546;
        v78 = responseCopy;
        v79 = 2112;
        v80 = categoryIdentifier4;
        _os_log_impl(&dword_230EF9000, v49, OS_LOG_TYPE_DEFAULT, "Received Continuity confirmation response: %@ for category: %@\n", buf, 0x16u);
      }

      presentedNotification7 = [(_DDUIiOSNotificationPresenter *)self presentedNotification];
      delegate = [presentedNotification7 completion];

      presentedNotification8 = [(_DDUIiOSNotificationPresenter *)self presentedNotification];
      presentedNotification6 = [presentedNotification8 remoteDeviceIdentifier];

      actionIdentifier = [responseCopy actionIdentifier];
      v57 = [actionIdentifier isEqualToString:@"CONTINUITYCAPTURE_ACCEPT"];

      if (!v57)
      {
        actionIdentifier2 = [responseCopy actionIdentifier];
        v66 = [actionIdentifier2 isEqualToString:@"CONTINUITYCAPTURE_DECLINE"];

        if (v66)
        {
          v67 = 7;
        }

        else
        {
          v67 = 2;
        }

        delegate[2](delegate, v67);
        completion = v74;
        goto LABEL_36;
      }

      applicationInfo3 = +[_DDUIRemoteDisplaySessionHandler sharedInstance];
      if ([applicationInfo3 isWifiStateOn])
      {
        if ([applicationInfo3 isContinuityCaptureUserPreferenceEnabled])
        {
          notification7 = [responseCopy notification];
          request7 = [notification7 request];
          content6 = [request7 content];
          categoryIdentifier5 = [content6 categoryIdentifier];
          v73 = [categoryIdentifier5 isEqualToString:@"CONTINUITYCAPTURE_MICONLY_CATEGORY"];

          v62 = *MEMORY[0x277D44300];
          if (v73)
          {
            v63 = *MEMORY[0x277D44300];
          }

          else
          {
            v63 = @"Phone accepted confirmation notification";
          }

          [applicationInfo3 enterSessionWithRemoteDeviceID:presentedNotification6 reason:v63];
          v64 = 1;
          goto LABEL_34;
        }

        selfCopy2 = self;
        v69 = 1;
      }

      else
      {
        selfCopy2 = self;
        v69 = 0;
      }

      [(_DDUIiOSNotificationPresenter *)selfCopy2 _showContinuityCameraDisabledAlertWithState:v69];
      v64 = 2;
LABEL_34:
      completion = v74;
      delegate[2](delegate, v64);
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

  handlerCopy[2](handlerCopy);
LABEL_38:

  v70 = *MEMORY[0x277D85DE8];
}

- (_DDUINotificationPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end