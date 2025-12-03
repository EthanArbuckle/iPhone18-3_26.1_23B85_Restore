@interface IMDSpamController
+ (id)sharedInstance;
- (BOOL)_isDisabled;
- (IMDSpamController)init;
- (void)__queryServerForID:(id)d count:(id)count completion:(id)completion;
- (void)_spamCheckTimerFired:(id)fired;
- (void)_updateSpamCheckTimerWithInterval:(double)interval forChatGUID:(id)d;
- (void)checkForSpamWithExtensionInChat:(id)chat forMessageBody:(id)body sender:(id)sender withCompletion:(id)completion;
- (void)detectSpam:(id)spam chatGUID:(id)d;
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

- (void)__queryServerForID:(id)d count:(id)count completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  countCopy = count;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v17 = dCopy;
      v18 = 2112;
      v19 = countCopy;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Performing server query with alias: %@, count: %@", buf, 0x16u);
    }
  }

  if (IMStringIsEmail())
  {
    v11 = MEMORY[0x231896500](dCopy);
  }

  else
  {
    v11 = MEMORY[0x231896520](dCopy, 0, 1);
  }

  v12 = v11;
  v15 = completionCopy;
  v13 = completionCopy;
  IDSCheckiMessageUnknownSender();

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_updateSpamCheckTimerWithInterval:(double)interval forChatGUID:(id)d
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = dCopy;
  if (interval >= 0.0)
  {
    v9 = [dCopy length];
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
        intervalCopy2 = *&v7;
        v23 = 2048;
        intervalCopy3 = interval;
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
        intervalCopy2 = interval;
        v23 = 2112;
        intervalCopy3 = *&v7;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Scheduling a spam check with interval: %f for chatGUID: %@", buf, 0x16u);
      }
    }

    if (!self->_chatGUIDToSpamCheckTimerMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      chatGUIDToSpamCheckTimerMap = self->_chatGUIDToSpamCheckTimerMap;
      self->_chatGUIDToSpamCheckTimerMap = Mutable;
    }

    if (interval <= 0.0)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = sub_22B514EDC;
      v18[3] = &unk_278702FA0;
      v19 = v7;
      selfCopy = self;
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

      v16 = [objc_alloc(MEMORY[0x277D192B8]) initWithTimeInterval:@"message-spam-check-timer" name:1 shouldWake:self target:sel__spamCheckTimerFired_ selector:v7 userInfo:interval];

      [(NSMutableDictionary *)self->_chatGUIDToSpamCheckTimerMap setObject:v16 forKey:v7];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      intervalCopy2 = *&v7;
      v23 = 2048;
      intervalCopy3 = interval;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Stopping spam check for chatGUID: %@ interval: %f", buf, 0x16u);
    }

LABEL_5:
  }

LABEL_22:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_spamCheckTimerFired:(id)fired
{
  firedCopy = fired;
  userInfo = [firedCopy userInfo];
  [firedCopy invalidate];

  [(NSMutableDictionary *)self->_chatGUIDToSpamCheckTimerMap removeObjectForKey:userInfo];
  IMComponentsFromChatGUID();
  v6 = 0;
  if ([v6 length])
  {
    [(IMDSpamController *)self detectSpam:v6 chatGUID:userInfo];
  }
}

- (BOOL)_isDisabled
{
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"disable-auto-detect-spam"];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)detectSpam:(id)spam chatGUID:(id)d
{
  v41 = *MEMORY[0x277D85DE8];
  spamCopy = spam;
  dCopy = d;
  chatRegistry = [(IMDSpamController *)self chatRegistry];
  v9 = [chatRegistry existingChatWithGUID:dCopy];

  serviceName = [v9 serviceName];
  v11 = [serviceName isEqualToString:*MEMORY[0x277D1A610]];

  if ((v11 & 1) == 0)
  {
    if (-[IMDSpamController _isDisabled](self, "_isDisabled") || ([v9 properties], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "objectForKey:", @"hasViewedPotentialSpamChat"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "BOOLValue"), v13, v12, (v14 & 1) != 0))
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          _isDisabled = [(IMDSpamController *)self _isDisabled];
          properties = [v9 properties];
          v18 = properties;
          v19 = @"NO";
          *buf = 138412802;
          v36 = dCopy;
          v37 = 2112;
          if (_isDisabled)
          {
            v19 = @"YES";
          }

          v38 = v19;
          v39 = 2112;
          v40 = properties;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "don't try to detect spam for chat: %@, disabled: %@, properties: %@", buf, 0x20u);
        }
      }

      chatGUIDToCountMap = [(IMDSpamController *)self chatGUIDToCountMap];
      [chatGUIDToCountMap removeObjectForKey:dCopy];
    }

    else
    {
      if (!self->_chatGUIDToCountMap)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        chatGUIDToCountMap = self->_chatGUIDToCountMap;
        self->_chatGUIDToCountMap = Mutable;
      }

      chatGUIDToCountMap2 = [(IMDSpamController *)self chatGUIDToCountMap];
      v24 = [chatGUIDToCountMap2 objectForKey:dCopy];
      unsignedIntegerValue = [v24 unsignedIntegerValue];

      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = sub_22B5153A0;
      v31[3] = &unk_278703380;
      v27 = dCopy;
      v32 = v27;
      v33 = v9;
      selfCopy = self;
      [(IMDSpamController *)self __queryServerForID:spamCopy count:v26 completion:v31];

      chatGUIDToCountMap3 = [(IMDSpamController *)self chatGUIDToCountMap];
      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue + 1];
      [chatGUIDToCountMap3 setObject:v29 forKey:v27];

      chatGUIDToCountMap = v32;
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)checkForSpamWithExtensionInChat:(id)chat forMessageBody:(id)body sender:(id)sender withCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0, 0);
  }
}

@end