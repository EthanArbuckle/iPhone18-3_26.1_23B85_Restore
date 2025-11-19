@interface IMDSpamController
+ (id)sharedInstance;
- (BOOL)_isDisabled;
- (IMDSpamController)init;
- (void)__queryServerForID:(id)a3 count:(id)a4 completion:(id)a5;
- (void)_spamCheckTimerFired:(id)a3;
- (void)_updateSpamCheckTimerWithInterval:(double)a3 forChatGUID:(id)a4;
- (void)checkForSpamWithExtensionInChat:(id)a3 forMessageBody:(id)a4 sender:(id)a5 withCompletion:(id)a6;
- (void)detectSpam:(id)a3 chatGUID:(id)a4;
@end

@implementation IMDSpamController

+ (id)sharedInstance
{
  if (qword_281421100 != -1)
  {
    sub_22B7D03A4();
  }

  v3 = qword_281420F70;

  return v3;
}

- (IMDSpamController)init
{
  v11.receiver = self;
  v11.super_class = IMDSpamController;
  v2 = [(IMDSpamController *)&v11 init];
  v3 = v2;
  if (v2)
  {
    if (!v2->_chatGUIDToSpamCheckTimerMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      chatGUIDToSpamCheckTimerMap = v3->_chatGUIDToSpamCheckTimerMap;
      v3->_chatGUIDToSpamCheckTimerMap = Mutable;
    }

    if (!v3->_chatGUIDToCountMap)
    {
      v6 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      chatGUIDToCountMap = v3->_chatGUIDToCountMap;
      v3->_chatGUIDToCountMap = v6;
    }
  }

  [(IMDSpamController *)v3 setSpamExtensionCutoffTime:10.0];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Instantiated IMDSpamController", v10, 2u);
    }
  }

  return v3;
}

- (void)__queryServerForID:(id)a3 count:(id)a4 completion:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Performing server query with alias: %@, count: %@", buf, 0x16u);
    }
  }

  if (IMStringIsEmail())
  {
    v11 = MEMORY[0x231896500](v7);
  }

  else
  {
    v11 = MEMORY[0x231896520](v7, 0, 1);
  }

  v12 = v11;
  v15 = v9;
  v13 = v9;
  IDSCheckiMessageUnknownSender();

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_updateSpamCheckTimerWithInterval:(double)a3 forChatGUID:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = v6;
  if (a3 >= 0.0)
  {
    v9 = [v6 length];
    v10 = IMOSLoggingEnabled();
    if (!v9)
    {
      if (!v10)
      {
        goto LABEL_22;
      }

      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v22 = *&v7;
        v23 = 2048;
        v24 = a3;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Stopping spam check for chatGUID: %@ interval: %f", buf, 0x16u);
      }

      goto LABEL_5;
    }

    if (v10)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 134218242;
        v22 = a3;
        v23 = 2112;
        v24 = *&v7;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Scheduling a spam check with interval: %f for chatGUID: %@", buf, 0x16u);
      }
    }

    if (!self->_chatGUIDToSpamCheckTimerMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      chatGUIDToSpamCheckTimerMap = self->_chatGUIDToSpamCheckTimerMap;
      self->_chatGUIDToSpamCheckTimerMap = Mutable;
    }

    if (a3 <= 0.0)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = sub_22B514EDC;
      v18[3] = &unk_278702FA0;
      v19 = v7;
      v20 = self;
      dispatch_async(MEMORY[0x277D85CD0], v18);
    }

    else
    {
      v14 = [(NSMutableDictionary *)self->_chatGUIDToSpamCheckTimerMap objectForKey:v7];
      v15 = v14;
      if (v14)
      {
        [v14 invalidate];
        [(NSMutableDictionary *)self->_chatGUIDToSpamCheckTimerMap removeObjectForKey:v7];
      }

      v16 = [objc_alloc(MEMORY[0x277D192B8]) initWithTimeInterval:@"message-spam-check-timer" name:1 shouldWake:self target:sel__spamCheckTimerFired_ selector:v7 userInfo:a3];

      [(NSMutableDictionary *)self->_chatGUIDToSpamCheckTimerMap setObject:v16 forKey:v7];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v22 = *&v7;
      v23 = 2048;
      v24 = a3;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Stopping spam check for chatGUID: %@ interval: %f", buf, 0x16u);
    }

LABEL_5:
  }

LABEL_22:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_spamCheckTimerFired:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  [v4 invalidate];

  [(NSMutableDictionary *)self->_chatGUIDToSpamCheckTimerMap removeObjectForKey:v5];
  IMComponentsFromChatGUID();
  v6 = 0;
  if ([v6 length])
  {
    [(IMDSpamController *)self detectSpam:v6 chatGUID:v5];
  }
}

- (BOOL)_isDisabled
{
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"disable-auto-detect-spam"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)detectSpam:(id)a3 chatGUID:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(IMDSpamController *)self chatRegistry];
  v9 = [v8 existingChatWithGUID:v7];

  v10 = [v9 serviceName];
  v11 = [v10 isEqualToString:*MEMORY[0x277D1A610]];

  if ((v11 & 1) == 0)
  {
    if (-[IMDSpamController _isDisabled](self, "_isDisabled") || ([v9 properties], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "objectForKey:", @"hasViewedPotentialSpamChat"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "BOOLValue"), v13, v12, (v14 & 1) != 0))
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = [(IMDSpamController *)self _isDisabled];
          v17 = [v9 properties];
          v18 = v17;
          v19 = @"NO";
          *buf = 138412802;
          v36 = v7;
          v37 = 2112;
          if (v16)
          {
            v19 = @"YES";
          }

          v38 = v19;
          v39 = 2112;
          v40 = v17;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "don't try to detect spam for chat: %@, disabled: %@, properties: %@", buf, 0x20u);
        }
      }

      v20 = [(IMDSpamController *)self chatGUIDToCountMap];
      [v20 removeObjectForKey:v7];
    }

    else
    {
      if (!self->_chatGUIDToCountMap)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        chatGUIDToCountMap = self->_chatGUIDToCountMap;
        self->_chatGUIDToCountMap = Mutable;
      }

      v23 = [(IMDSpamController *)self chatGUIDToCountMap];
      v24 = [v23 objectForKey:v7];
      v25 = [v24 unsignedIntegerValue];

      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = sub_22B5153A0;
      v31[3] = &unk_278703380;
      v27 = v7;
      v32 = v27;
      v33 = v9;
      v34 = self;
      [(IMDSpamController *)self __queryServerForID:v6 count:v26 completion:v31];

      v28 = [(IMDSpamController *)self chatGUIDToCountMap];
      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25 + 1];
      [v28 setObject:v29 forKey:v27];

      v20 = v32;
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)checkForSpamWithExtensionInChat:(id)a3 forMessageBody:(id)a4 sender:(id)a5 withCompletion:(id)a6
{
  if (a6)
  {
    (*(a6 + 2))(a6, 0, 0);
  }
}

@end