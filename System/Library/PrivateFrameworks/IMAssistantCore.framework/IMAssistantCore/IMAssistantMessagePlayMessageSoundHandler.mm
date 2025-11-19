@interface IMAssistantMessagePlayMessageSoundHandler
- (id)playSendSoundForMessageGUID:(id)a3;
- (void)handlePlayMessageSound:(id)a3 completion:(id)a4;
@end

@implementation IMAssistantMessagePlayMessageSoundHandler

- (void)handlePlayMessageSound:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v15 = 138412290;
    v16 = v6;
    _os_log_impl(&dword_25479E000, v8, OS_LOG_TYPE_INFO, "Handling INPlayMessageSoundIntent: %@", &v15, 0xCu);
  }

  v9 = [v6 messageIdentifier];
  v10 = [v6 soundType];
  if (!v10)
  {
    v11 = [objc_alloc(MEMORY[0x277CD3EE0]) initWithCode:4 userActivity:0];
    goto LABEL_7;
  }

  if (v10 == 1)
  {
    v11 = [(IMAssistantMessagePlayMessageSoundHandler *)self playSendSoundForMessageGUID:v9];
LABEL_7:
    v12 = v11;
    goto LABEL_9;
  }

  v12 = 0;
LABEL_9:
  v13 = IMLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15 = 138412290;
    v16 = v12;
    _os_log_impl(&dword_25479E000, v13, OS_LOG_TYPE_INFO, "Calling completion with INPlayMessageSoundIntentResponse: %@", &v15, 0xCu);
  }

  v7[2](v7, v12);
  v14 = *MEMORY[0x277D85DE8];
}

- (id)playSendSoundForMessageGUID:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&dword_25479E000, v4, OS_LOG_TYPE_INFO, "Playing send sounds for messageGUID: %@", &v10, 0xCu);
  }

  v5 = [MEMORY[0x277D18D68] sharedController];
  v6 = [v5 remoteDaemon];
  [v6 playSendSoundForMessageGUID:v3 callerOrigin:1];

  v7 = [objc_alloc(MEMORY[0x277CD3EE0]) initWithCode:3 userActivity:0];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end