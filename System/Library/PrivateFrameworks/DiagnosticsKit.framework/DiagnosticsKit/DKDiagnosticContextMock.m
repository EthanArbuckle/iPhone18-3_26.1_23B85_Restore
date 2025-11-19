@interface DKDiagnosticContextMock
- (void)allowSessionAccessoryDisconnectForDuration:(id)a3;
- (void)clearAllowSessionAccessoryDisconnect;
- (void)displayAlertWithHeader:(id)a3 message:(id)a4 buttonStrings:(id)a5 completion:(id)a6;
- (void)displayInstructions:(id)a3 style:(int)a4 imageLocators:(id)a5 title:(id)a6 subtitle:(id)a7 iconLocator:(id)a8 options:(id)a9 navigationBarActions:(id)a10 completion:(id)a11;
- (void)enableVolumeHUD:(BOOL)a3;
- (void)getAsset:(id)a3 completion:(id)a4;
- (void)requestPluginReloadOnFinishWithCompletion:(id)a3;
- (void)requestSessionAccessoryIdentifierWithCompletion:(id)a3;
- (void)setScreenToBrightness:(float)a3 animate:(BOOL)a4;
- (void)showUI:(id)a3 completion:(id)a4;
- (void)unpairSessionAccessoryOnTestCompletion;
- (void)updateProgress:(id)a3 forTest:(id)a4;
- (void)uploadAssets:(id)a3 completion:(id)a4;
@end

@implementation DKDiagnosticContextMock

- (void)updateProgress:(id)a3 forTest:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[DKDiagnosticContextMock updateProgress:forTest:]";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_248B9D000, v7, OS_LOG_TYPE_DEFAULT, "%s: %@, %@", &v9, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)enableVolumeHUD:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x277D85DE8];
  v4 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[DKDiagnosticContextMock enableVolumeHUD:]";
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&dword_248B9D000, v4, OS_LOG_TYPE_DEFAULT, "%s: %d", &v6, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)setScreenToBrightness:(float)a3 animate:(BOOL)a4
{
  v4 = a4;
  v14 = *MEMORY[0x277D85DE8];
  v6 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[DKDiagnosticContextMock setScreenToBrightness:animate:]";
    v10 = 2048;
    v11 = a3;
    v12 = 1024;
    v13 = v4;
    _os_log_impl(&dword_248B9D000, v6, OS_LOG_TYPE_DEFAULT, "%s: %f, %d", &v8, 0x1Cu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)getAsset:(id)a3 completion:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[DKDiagnosticContextMock getAsset:completion:]";
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_248B9D000, v7, OS_LOG_TYPE_DEFAULT, "%s: %@", &v10, 0x16u);
  }

  v8 = [MEMORY[0x277CBEA90] data];
  v6[2](v6, v8);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)uploadAssets:(id)a3 completion:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[DKDiagnosticContextMock uploadAssets:completion:]";
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_248B9D000, v7, OS_LOG_TYPE_DEFAULT, "%s: %@", &v10, 0x16u);
  }

  v8 = [MEMORY[0x277CBEA60] array];
  v6[2](v6, v8, 0);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)showUI:(id)a3 completion:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[DKDiagnosticContextMock showUI:completion:]";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_248B9D000, v7, OS_LOG_TYPE_DEFAULT, "%s: %@", &v9, 0x16u);
  }

  v6[2](v6, MEMORY[0x277CBEC10]);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)requestPluginReloadOnFinishWithCompletion:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[DKDiagnosticContextMock requestPluginReloadOnFinishWithCompletion:]";
    _os_log_impl(&dword_248B9D000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v3[2](v3);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)unpairSessionAccessoryOnTestCompletion
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[DKDiagnosticContextMock unpairSessionAccessoryOnTestCompletion]";
    _os_log_impl(&dword_248B9D000, v2, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)requestSessionAccessoryIdentifierWithCompletion:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[DKDiagnosticContextMock requestSessionAccessoryIdentifierWithCompletion:]";
    _os_log_impl(&dword_248B9D000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v3[2](v3, &stru_285B8CB68, 0);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)allowSessionAccessoryDisconnectForDuration:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[DKDiagnosticContextMock allowSessionAccessoryDisconnectForDuration:]";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_248B9D000, v4, OS_LOG_TYPE_DEFAULT, "%s: %@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)clearAllowSessionAccessoryDisconnect
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[DKDiagnosticContextMock clearAllowSessionAccessoryDisconnect]";
    _os_log_impl(&dword_248B9D000, v2, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)displayAlertWithHeader:(id)a3 message:(id)a4 buttonStrings:(id)a5 completion:(id)a6
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[DKDiagnosticContextMock displayAlertWithHeader:message:buttonStrings:completion:]";
    _os_log_impl(&dword_248B9D000, v6, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)displayInstructions:(id)a3 style:(int)a4 imageLocators:(id)a5 title:(id)a6 subtitle:(id)a7 iconLocator:(id)a8 options:(id)a9 navigationBarActions:(id)a10 completion:(id)a11
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[DKDiagnosticContextMock displayInstructions:style:imageLocators:title:subtitle:iconLocator:options:navigationBarActions:completion:]";
    _os_log_impl(&dword_248B9D000, v11, OS_LOG_TYPE_DEFAULT, "%s", &v13, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end