@interface IMAssistantCommSafetyManager
- (BOOL)checksForSensitivityOnReceive;
- (BOOL)checksForSensitivityOnSend;
- (IMAssistantCommSafetyManager)initWithCommSafetyRequestsManager:(id)a3 commSafetySettingsManager:(id)a4;
- (void)isSensitiveContent:(id)a3 withChatID:(id)a4 completionHandler:(id)a5;
@end

@implementation IMAssistantCommSafetyManager

- (IMAssistantCommSafetyManager)initWithCommSafetyRequestsManager:(id)a3 commSafetySettingsManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = IMAssistantCommSafetyManager;
  v9 = [(IMAssistantCommSafetyManager *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_commSafetyRequestsManager, a3);
    objc_storeStrong(&v10->_commSafetySettingsManager, a4);
    v11 = v10;
  }

  return v10;
}

- (void)isSensitiveContent:(id)a3 withChatID:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(IMAssistantCommSafetyManager *)self commSafetyRequestsManager];
  [v11 isSensitiveContent:v10 withChatID:v9 completionHandler:v8];
}

- (BOOL)checksForSensitivityOnSend
{
  v2 = [(IMAssistantCommSafetyManager *)self commSafetySettingsManager];
  v3 = [v2 checksForSensitivityOnSend];

  return v3;
}

- (BOOL)checksForSensitivityOnReceive
{
  v2 = [(IMAssistantCommSafetyManager *)self commSafetySettingsManager];
  v3 = [v2 checksForSensitivityOnReceive];

  return v3;
}

@end