@interface IMDExposureNotificationManager
+ (id)sharedInstance;
- (BOOL)_bagDisabled;
- (BOOL)_isMessageItemEligibleForEN:(id)n;
- (id)_allowedDomains;
- (id)_enManager;
- (id)_enTextMessageForMessageBody:(id)body;
- (id)_enURLsForMessageBody:(id)body;
- (void)processMessageItemForENURL:(id)l withCompletionHandler:(id)handler;
@end

@implementation IMDExposureNotificationManager

+ (id)sharedInstance
{
  if (qword_281421080 != -1)
  {
    sub_22B7D2BC4();
  }

  if (qword_281421130 != -1)
  {
    sub_22B7D2BD8();
  }

  if (qword_281421088 != -1)
  {
    sub_22B7D2BEC();
  }

  v2 = qword_281420FA8;

  return v2;
}

- (id)_enManager
{
  if (qword_2814213B8 != -1)
  {
    sub_22B7D2C00();
  }

  v3 = qword_2814213B0;

  return v3;
}

- (id)_allowedDomains
{
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"en-push-allow-domains"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &unk_283F4EE28;
  }

  v5 = v4;

  return v4;
}

- (BOOL)_bagDisabled
{
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"en-push-disabled"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)_isMessageItemEligibleForEN:(id)n
{
  nCopy = n;
  if (-[IMDExposureNotificationManager _bagDisabled](self, "_bagDisabled") || ([nCopy isFromMe] & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    service = [nCopy service];
    v5 = [service isEqualToString:*MEMORY[0x277D1A610]];
  }

  return v5;
}

- (id)_enURLsForMessageBody:(id)body
{
  v4 = MEMORY[0x277CBEB18];
  bodyCopy = body;
  v6 = objc_alloc_init(v4);
  v7 = *MEMORY[0x277D19140];
  v8 = [bodyCopy length];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22B57C144;
  v13[3] = &unk_278704E58;
  v13[4] = self;
  v9 = v6;
  v14 = v9;
  [bodyCopy enumerateAttribute:v7 inRange:0 options:v8 usingBlock:{0, v13}];

  v10 = v14;
  v11 = v9;

  return v9;
}

- (id)_enTextMessageForMessageBody:(id)body
{
  bodyCopy = body;
  if (qword_27D8CFE50 != -1)
  {
    sub_22B7D2C14();
  }

  if (qword_27D8CFE48)
  {
    v5 = [(IMDExposureNotificationManager *)self _enURLsForMessageBody:bodyCopy];
    if ([v5 count])
    {
      v6 = qword_27D8CFE48;
      string = [bodyCopy string];
      v8 = [v6 textMessageWithMessage:string embeddedURLs:v5];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)processMessageItemForENURL:(id)l withCompletionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  body = [lCopy body];
  if ([(IMDExposureNotificationManager *)self _isMessageItemEligibleForEN:lCopy]&& body)
  {
    _enManager = [(IMDExposureNotificationManager *)self _enManager];
    if (![_enManager exposureNotificationEnabled])
    {
      handlerCopy[2](handlerCopy, 0);
LABEL_15:

      goto LABEL_16;
    }

    v10 = [(IMDExposureNotificationManager *)self _enTextMessageForMessageBody:body];
    if (v10)
    {
      if (objc_opt_respondsToSelector())
      {
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = sub_22B57C540;
        v13[3] = &unk_278704440;
        v14 = handlerCopy;
        [_enManager verifyTextMessage:v10 completionHandler:v13];

LABEL_14:
        goto LABEL_15;
      }

      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = 0;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Running on an old build - unable to run through ENManager", &v12, 2u);
        }
      }
    }

    handlerCopy[2](handlerCopy, 0);
    goto LABEL_14;
  }

  handlerCopy[2](handlerCopy, 0);
LABEL_16:
}

@end