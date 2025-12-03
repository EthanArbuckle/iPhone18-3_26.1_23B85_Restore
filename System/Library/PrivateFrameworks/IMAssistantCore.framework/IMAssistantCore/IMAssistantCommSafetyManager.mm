@interface IMAssistantCommSafetyManager
- (BOOL)checksForSensitivityOnReceive;
- (BOOL)checksForSensitivityOnSend;
- (IMAssistantCommSafetyManager)initWithCommSafetyRequestsManager:(id)manager commSafetySettingsManager:(id)settingsManager;
- (void)isSensitiveContent:(id)content withChatID:(id)d completionHandler:(id)handler;
@end

@implementation IMAssistantCommSafetyManager

- (IMAssistantCommSafetyManager)initWithCommSafetyRequestsManager:(id)manager commSafetySettingsManager:(id)settingsManager
{
  managerCopy = manager;
  settingsManagerCopy = settingsManager;
  v13.receiver = self;
  v13.super_class = IMAssistantCommSafetyManager;
  v9 = [(IMAssistantCommSafetyManager *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_commSafetyRequestsManager, manager);
    objc_storeStrong(&v10->_commSafetySettingsManager, settingsManager);
    v11 = v10;
  }

  return v10;
}

- (void)isSensitiveContent:(id)content withChatID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  contentCopy = content;
  commSafetyRequestsManager = [(IMAssistantCommSafetyManager *)self commSafetyRequestsManager];
  [commSafetyRequestsManager isSensitiveContent:contentCopy withChatID:dCopy completionHandler:handlerCopy];
}

- (BOOL)checksForSensitivityOnSend
{
  commSafetySettingsManager = [(IMAssistantCommSafetyManager *)self commSafetySettingsManager];
  checksForSensitivityOnSend = [commSafetySettingsManager checksForSensitivityOnSend];

  return checksForSensitivityOnSend;
}

- (BOOL)checksForSensitivityOnReceive
{
  commSafetySettingsManager = [(IMAssistantCommSafetyManager *)self commSafetySettingsManager];
  checksForSensitivityOnReceive = [commSafetySettingsManager checksForSensitivityOnReceive];

  return checksForSensitivityOnReceive;
}

@end