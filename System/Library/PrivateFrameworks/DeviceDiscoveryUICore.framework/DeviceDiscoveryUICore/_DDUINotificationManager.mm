@interface _DDUINotificationManager
- (_DDUINotificationManager)init;
- (void)cancelMessageWithID:(id)a3;
- (void)deepLinkToAppStoreForApplication:(id)a3;
- (void)handleApplicationInfo:(id)a3 withID:(id)a4 fromDevice:(id)a5 completionHandler:(id)a6;
- (void)handleContinuityCameraConfirmationWithID:(id)a3 fromDevice:(id)a4 completionHandler:(id)a5;
- (void)handleMicOnlyConfirmationWithID:(id)a3 fromDevice:(id)a4 completionHandler:(id)a5;
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

- (void)handleApplicationInfo:(id)a3 withID:(id)a4 fromDevice:(id)a5 completionHandler:(id)a6
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = _DDUICoreLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v10 name];
    v19 = 138412546;
    v20 = v10;
    v21 = 2112;
    v22 = v15;
    _os_log_impl(&dword_230EF9000, v14, OS_LOG_TYPE_DEFAULT, "remoteDevice %@ deviceName %@", &v19, 0x16u);
  }

  v16 = [(_DDUINotificationManager *)self notificationPresenter];
  v17 = [v10 name];
  [v16 showNotificationForApplication:v13 deviceName:v17 identifier:v12 completion:v11];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)handleContinuityCameraConfirmationWithID:(id)a3 fromDevice:(id)a4 completionHandler:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = _DDUICoreLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 name];
    v15 = 138412546;
    v16 = v8;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&dword_230EF9000, v11, OS_LOG_TYPE_DEFAULT, "remoteDevice %@ deviceName %@", &v15, 0x16u);
  }

  v13 = [(_DDUINotificationManager *)self notificationPresenter];
  [v13 showContinuityCameraConfirmation:v8 identifier:v10 completion:v9];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleMicOnlyConfirmationWithID:(id)a3 fromDevice:(id)a4 completionHandler:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _DDUICoreLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v9 name];
    v16 = 138412546;
    v17 = v9;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_230EF9000, v11, OS_LOG_TYPE_DEFAULT, "remoteDevice %@ deviceName %@", &v16, 0x16u);
  }

  if (SFDeviceClassCodeGet() == 1)
  {
    v13 = [(_DDUINotificationManager *)self notificationPresenter];
    [v13 showMicOnlyConfirmation:v9 identifier:v8 completion:v10];
  }

  else
  {
    v14 = _DDUICoreLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [_DDUINotificationManager handleMicOnlyConfirmationWithID:v14 fromDevice:? completionHandler:?];
    }

    v10[2](v10, 7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)cancelMessageWithID:(id)a3
{
  v4 = a3;
  v5 = [(_DDUINotificationManager *)self notificationPresenter];
  [v5 dismissNotificationWithIdentifier:v4];
}

- (void)deepLinkToAppStoreForApplication:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = _DDUICoreLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = [v3 adamID];
    _os_log_impl(&dword_230EF9000, v4, OS_LOG_TYPE_DEFAULT, "Attempting to launch app store for adamID %lld", buf, 0xCu);
  }

  v5 = [@"itms-apps://apple.com/app/id" stringByAppendingFormat:@"%lld", objc_msgSend(v3, "adamID")];
  v6 = [MEMORY[0x277CBEBC0] URLWithString:v5];
  v8 = *MEMORY[0x277D0AC58];
  v9 = MEMORY[0x277CBEC38];
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  v7 = *MEMORY[0x277D85DE8];
}

@end