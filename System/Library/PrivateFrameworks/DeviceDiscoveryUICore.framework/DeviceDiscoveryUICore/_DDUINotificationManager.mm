@interface _DDUINotificationManager
- (_DDUINotificationManager)init;
- (void)cancelMessageWithID:(id)d;
- (void)deepLinkToAppStoreForApplication:(id)application;
- (void)handleApplicationInfo:(id)info withID:(id)d fromDevice:(id)device completionHandler:(id)handler;
- (void)handleContinuityCameraConfirmationWithID:(id)d fromDevice:(id)device completionHandler:(id)handler;
- (void)handleMicOnlyConfirmationWithID:(id)d fromDevice:(id)device completionHandler:(id)handler;
@end

@implementation _DDUINotificationManager

- (_DDUINotificationManager)init
{
  v6.receiver = self;
  v6.super_class = _DDUINotificationManager;
  v2 = [(_DDUINotificationManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_DDUIiOSNotificationPresenter);
    notificationPresenter = v2->_notificationPresenter;
    v2->_notificationPresenter = v3;

    [(_DDUINotificationPresenter *)v2->_notificationPresenter setDelegate:v2];
  }

  return v2;
}

- (void)handleApplicationInfo:(id)info withID:(id)d fromDevice:(id)device completionHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  handlerCopy = handler;
  dCopy = d;
  infoCopy = info;
  v14 = _DDUICoreLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    name = [deviceCopy name];
    v19 = 138412546;
    v20 = deviceCopy;
    v21 = 2112;
    v22 = name;
    _os_log_impl(&dword_230EF9000, v14, OS_LOG_TYPE_DEFAULT, "remoteDevice %@ deviceName %@", &v19, 0x16u);
  }

  notificationPresenter = [(_DDUINotificationManager *)self notificationPresenter];
  name2 = [deviceCopy name];
  [notificationPresenter showNotificationForApplication:infoCopy deviceName:name2 identifier:dCopy completion:handlerCopy];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)handleContinuityCameraConfirmationWithID:(id)d fromDevice:(id)device completionHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  handlerCopy = handler;
  dCopy = d;
  v11 = _DDUICoreLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    name = [deviceCopy name];
    v15 = 138412546;
    v16 = deviceCopy;
    v17 = 2112;
    v18 = name;
    _os_log_impl(&dword_230EF9000, v11, OS_LOG_TYPE_DEFAULT, "remoteDevice %@ deviceName %@", &v15, 0x16u);
  }

  notificationPresenter = [(_DDUINotificationManager *)self notificationPresenter];
  [notificationPresenter showContinuityCameraConfirmation:deviceCopy identifier:dCopy completion:handlerCopy];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleMicOnlyConfirmationWithID:(id)d fromDevice:(id)device completionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  deviceCopy = device;
  handlerCopy = handler;
  v11 = _DDUICoreLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    name = [deviceCopy name];
    v16 = 138412546;
    v17 = deviceCopy;
    v18 = 2112;
    v19 = name;
    _os_log_impl(&dword_230EF9000, v11, OS_LOG_TYPE_DEFAULT, "remoteDevice %@ deviceName %@", &v16, 0x16u);
  }

  if (SFDeviceClassCodeGet() == 1)
  {
    notificationPresenter = [(_DDUINotificationManager *)self notificationPresenter];
    [notificationPresenter showMicOnlyConfirmation:deviceCopy identifier:dCopy completion:handlerCopy];
  }

  else
  {
    v14 = _DDUICoreLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [_DDUINotificationManager handleMicOnlyConfirmationWithID:v14 fromDevice:? completionHandler:?];
    }

    handlerCopy[2](handlerCopy, 7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)cancelMessageWithID:(id)d
{
  dCopy = d;
  notificationPresenter = [(_DDUINotificationManager *)self notificationPresenter];
  [notificationPresenter dismissNotificationWithIdentifier:dCopy];
}

- (void)deepLinkToAppStoreForApplication:(id)application
{
  v12 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  v4 = _DDUICoreLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    adamID = [applicationCopy adamID];
    _os_log_impl(&dword_230EF9000, v4, OS_LOG_TYPE_DEFAULT, "Attempting to launch app store for adamID %lld", buf, 0xCu);
  }

  v5 = [@"itms-apps://apple.com/app/id" stringByAppendingFormat:@"%lld", objc_msgSend(applicationCopy, "adamID")];
  v6 = [MEMORY[0x277CBEBC0] URLWithString:v5];
  v8 = *MEMORY[0x277D0AC58];
  v9 = MEMORY[0x277CBEC38];
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  v7 = *MEMORY[0x277D85DE8];
}

@end