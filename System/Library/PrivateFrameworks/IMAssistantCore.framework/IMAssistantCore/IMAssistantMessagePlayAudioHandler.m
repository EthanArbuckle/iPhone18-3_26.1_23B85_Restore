@interface IMAssistantMessagePlayAudioHandler
- (id)createAudioPlayerWithIdentifier:(id)a3;
- (void)confirmPlayAudioMessage:(id)a3 completion:(id)a4;
- (void)handlePlayAudioMessage:(id)a3 completion:(id)a4;
- (void)imAssistantAudioPlayer:(id)a3 didUpdateState:(int64_t)a4;
- (void)queryAudioMessageURLForIntent:(id)a3 completion:(id)a4;
@end

@implementation IMAssistantMessagePlayAudioHandler

- (void)handlePlayAudioMessage:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&dword_25479E000, v8, OS_LOG_TYPE_INFO, "Performing intent: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2547B7C58;
  v12[3] = &unk_2797869C8;
  v12[4] = self;
  objc_copyWeak(&v15, buf);
  v9 = v6;
  v13 = v9;
  v10 = v7;
  v14 = v10;
  [(IMAssistantMessagePlayAudioHandler *)self queryAudioMessageURLForIntent:v9 completion:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)confirmPlayAudioMessage:(id)a3 completion:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&dword_25479E000, v8, OS_LOG_TYPE_INFO, "Confirm intent: %@", buf, 0xCu);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2547B7FF0;
  v11[3] = &unk_2797869F0;
  v12 = v7;
  v9 = v7;
  [(IMAssistantMessagePlayAudioHandler *)self queryAudioMessageURLForIntent:v6 completion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)queryAudioMessageURLForIntent:(id)a3 completion:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 messageIdentifier];
  v8 = v7;
  if (v7)
  {
    v13[0] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_2547B8218;
    v11[3] = &unk_279786A18;
    v12 = v6;
    [(IMAssistantMessageQueryHandler *)self SPIQueryMessagesWithGUIDs:v9 completion:v11];
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)createAudioPlayerWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[IMAssistantAudioPlayer alloc] initWithDelegate:self identifier:v4];

  return v5;
}

- (void)imAssistantAudioPlayer:(id)a3 didUpdateState:(int64_t)a4
{
  if (self->_completionHandler)
  {
    v5 = 4;
    if (a4 == 2)
    {
      v5 = 2;
    }

    if (a4 == 1)
    {
      v6 = 3;
    }

    else
    {
      v6 = v5;
    }

    v8 = [objc_alloc(MEMORY[0x277CD3EB8]) initWithCode:v6 userActivity:0];
    (*(self->_completionHandler + 2))();
    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;
  }
}

@end