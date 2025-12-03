@interface DKDiagnosticContextMock
- (void)allowSessionAccessoryDisconnectForDuration:(id)duration;
- (void)clearAllowSessionAccessoryDisconnect;
- (void)displayAlertWithHeader:(id)header message:(id)message buttonStrings:(id)strings completion:(id)completion;
- (void)displayInstructions:(id)instructions style:(int)style imageLocators:(id)locators title:(id)title subtitle:(id)subtitle iconLocator:(id)locator options:(id)options navigationBarActions:(id)self0 completion:(id)self1;
- (void)enableVolumeHUD:(BOOL)d;
- (void)getAsset:(id)asset completion:(id)completion;
- (void)requestPluginReloadOnFinishWithCompletion:(id)completion;
- (void)requestSessionAccessoryIdentifierWithCompletion:(id)completion;
- (void)setScreenToBrightness:(float)brightness animate:(BOOL)animate;
- (void)showUI:(id)i completion:(id)completion;
- (void)unpairSessionAccessoryOnTestCompletion;
- (void)updateProgress:(id)progress forTest:(id)test;
- (void)uploadAssets:(id)assets completion:(id)completion;
@end

@implementation DKDiagnosticContextMock

- (void)updateProgress:(id)progress forTest:(id)test
{
  v15 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  testCopy = test;
  v7 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[DKDiagnosticContextMock updateProgress:forTest:]";
    v11 = 2112;
    v12 = progressCopy;
    v13 = 2112;
    v14 = testCopy;
    _os_log_impl(&dword_248B9D000, v7, OS_LOG_TYPE_DEFAULT, "%s: %@, %@", &v9, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)enableVolumeHUD:(BOOL)d
{
  dCopy = d;
  v10 = *MEMORY[0x277D85DE8];
  v4 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[DKDiagnosticContextMock enableVolumeHUD:]";
    v8 = 1024;
    v9 = dCopy;
    _os_log_impl(&dword_248B9D000, v4, OS_LOG_TYPE_DEFAULT, "%s: %d", &v6, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)setScreenToBrightness:(float)brightness animate:(BOOL)animate
{
  animateCopy = animate;
  v14 = *MEMORY[0x277D85DE8];
  v6 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[DKDiagnosticContextMock setScreenToBrightness:animate:]";
    v10 = 2048;
    brightnessCopy = brightness;
    v12 = 1024;
    v13 = animateCopy;
    _os_log_impl(&dword_248B9D000, v6, OS_LOG_TYPE_DEFAULT, "%s: %f, %d", &v8, 0x1Cu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)getAsset:(id)asset completion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  completionCopy = completion;
  v7 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[DKDiagnosticContextMock getAsset:completion:]";
    v12 = 2112;
    v13 = assetCopy;
    _os_log_impl(&dword_248B9D000, v7, OS_LOG_TYPE_DEFAULT, "%s: %@", &v10, 0x16u);
  }

  data = [MEMORY[0x277CBEA90] data];
  completionCopy[2](completionCopy, data);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)uploadAssets:(id)assets completion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  completionCopy = completion;
  v7 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[DKDiagnosticContextMock uploadAssets:completion:]";
    v12 = 2112;
    v13 = assetsCopy;
    _os_log_impl(&dword_248B9D000, v7, OS_LOG_TYPE_DEFAULT, "%s: %@", &v10, 0x16u);
  }

  array = [MEMORY[0x277CBEA60] array];
  completionCopy[2](completionCopy, array, 0);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)showUI:(id)i completion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  iCopy = i;
  completionCopy = completion;
  v7 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[DKDiagnosticContextMock showUI:completion:]";
    v11 = 2112;
    v12 = iCopy;
    _os_log_impl(&dword_248B9D000, v7, OS_LOG_TYPE_DEFAULT, "%s: %@", &v9, 0x16u);
  }

  completionCopy[2](completionCopy, MEMORY[0x277CBEC10]);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)requestPluginReloadOnFinishWithCompletion:(id)completion
{
  v8 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v4 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[DKDiagnosticContextMock requestPluginReloadOnFinishWithCompletion:]";
    _os_log_impl(&dword_248B9D000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  completionCopy[2](completionCopy);
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

- (void)requestSessionAccessoryIdentifierWithCompletion:(id)completion
{
  v8 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v4 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[DKDiagnosticContextMock requestSessionAccessoryIdentifierWithCompletion:]";
    _os_log_impl(&dword_248B9D000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  completionCopy[2](completionCopy, &stru_285B8CB68, 0);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)allowSessionAccessoryDisconnectForDuration:(id)duration
{
  v10 = *MEMORY[0x277D85DE8];
  durationCopy = duration;
  v4 = DiagnosticsKitLogHandleForCategory(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[DKDiagnosticContextMock allowSessionAccessoryDisconnectForDuration:]";
    v8 = 2112;
    v9 = durationCopy;
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

- (void)displayAlertWithHeader:(id)header message:(id)message buttonStrings:(id)strings completion:(id)completion
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

- (void)displayInstructions:(id)instructions style:(int)style imageLocators:(id)locators title:(id)title subtitle:(id)subtitle iconLocator:(id)locator options:(id)options navigationBarActions:(id)self0 completion:(id)self1
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