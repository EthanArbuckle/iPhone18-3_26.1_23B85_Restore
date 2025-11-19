@interface IMDRelayPushHandler
+ (id)commandToHandlerBlock;
+ (id)localCommandToHandlerBlock;
+ (id)sharedInstance;
- (BOOL)_messageRequestsServiceForSendingBypass:(id)a3;
- (IMDRelayPushHandler)init;
- (IMDRelayPushHandler)initWithIDSAccount:(id)a3;
- (id)_cachedListenersForGUID:(id)a3;
- (id)_guidsForMessage:(id)a3 messageGUID:(id)a4 routingBehaviors:(unint64_t)a5;
- (id)_handlerForServiceName:(id)a3;
- (id)_handlersForExplicitServiceWithMessage:(id)a3;
- (id)_messageDictionaryForLocalMessage:(id)a3 type:(id)a4;
- (id)_messageReplayObjectWithService:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6;
- (id)_messageReplayObjectWithService:(id)a3 account:(id)a4 incomingTopLevelMessage:(id)a5 fromID:(id)a6;
- (id)_serviceNameForMessage:(id)a3;
- (id)_serviceNameOrCompatibilityServiceNameFromDictionary:(id)a3;
- (unint64_t)_listenerMatchTypeForCommand:(int64_t)a3 message:(id)a4;
- (unint64_t)_listenerMatchTypeForLocalMessageType:(id)a3 message:(id)a4;
- (unint64_t)_routingBehaviorsForCommand:(int64_t)a3;
- (unint64_t)_routingBehaviorsForLocalMessageType:(id)a3;
- (void)_acceptIncomingPushes;
- (void)_cacheListeners:(id)a3 forGUID:(id)a4;
- (void)_calculateHandlersForLocalMessage:(id)a3 userInfo:(id)a4 completionBlock:(id)a5;
- (void)_calculateHandlersForMatchType:(unint64_t)a3 routingBehaviors:(unint64_t)a4 message:(id)a5 messageGUID:(id)a6 fromIdentifier:(id)a7 completionBlock:(id)a8;
- (void)_calculateHandlersForMessage:(id)a3 messageGUID:(id)a4 fromIdentifier:(id)a5 command:(id)a6 completionBlock:(id)a7;
- (void)_handleMessageProcessedWithGUID:(id)a3;
- (void)_ignoreIncomingPushes;
- (void)_service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7 isBeingReplayed:(BOOL)a8;
- (void)_service:(id)a3 account:(id)a4 incomingTopLevelMessage:(id)a5 fromID:(id)a6 messageContext:(id)a7 isBeingReplayed:(BOOL)a8;
- (void)_updateListenerIfNeeded;
- (void)addListener:(id)a3;
- (void)dealloc;
- (void)removeListener:(id)a3;
- (void)replayMessage:(id)a3;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingTopLevelMessage:(id)a5 fromID:(id)a6 messageContext:(id)a7;
- (void)setRegistered:(BOOL)a3;
@end

@implementation IMDRelayPushHandler

+ (id)sharedInstance
{
  if (qword_2814210C8 != -1)
  {
    sub_22B7D8DDC();
  }

  v3 = qword_281420F38;

  return v3;
}

- (void)_handleMessageProcessedWithGUID:(id)a3
{
  v4 = a3;
  v5 = [(IMDRelayPushHandler *)self guidToListenersCache];
  [v5 removeObjectForKey:v4];
}

- (void)_cacheListeners:(id)a3 forGUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IMDRelayPushHandler *)self guidToListenersCache];

  if (!v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEA78]);
    [(IMDRelayPushHandler *)self setGuidToListenersCache:v9];

    v10 = [(IMDRelayPushHandler *)self guidToListenersCache];
    [v10 setCountLimit:50000];
  }

  v11 = IMLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_22B7D8DF0(v6, v7, v11);
  }

  v12 = [(IMDRelayPushHandler *)self guidToListenersCache];
  [v12 setObject:v6 forKey:v7];
}

- (id)_cachedListenersForGUID:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDRelayPushHandler *)self guidToListenersCache];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 count];
  v8 = IMLogHandleForCategory();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Reusing cached listeners %@ for GUID %@", &v12, 0x16u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_22B7D8E80(v4, v9);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)commandToHandlerBlock
{
  if (qword_281421348 != -1)
  {
    sub_22B7D8EF8();
  }

  v3 = qword_281421340;

  return v3;
}

+ (id)localCommandToHandlerBlock
{
  if (qword_27D8D0038 != -1)
  {
    sub_22B7D8F88();
  }

  v3 = qword_27D8D0030;

  return v3;
}

- (IMDRelayPushHandler)initWithIDSAccount:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = IMDRelayPushHandler;
  v5 = [(IMDRelayPushHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(IMDRelayPushHandler *)v5 setAccount:v4];
  }

  return v6;
}

- (IMDRelayPushHandler)init
{
  v9 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = IMDRelayPushHandler;
  v2 = [(IMDRelayPushHandler *)&v6 init];
  if (v2 && IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v8 = v2;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Initing Push Handler %p", buf, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v10 = self;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Deallocing Push Handler %p", buf, 0xCu);
    }
  }

  account = self->_account;
  self->_account = 0;

  [(IDSService *)self->_relayService removeDelegate:self];
  relayService = self->_relayService;
  self->_relayService = 0;

  [(IDSService *)self->_smsWatchService removeDelegate:self];
  smsWatchService = self->_smsWatchService;
  self->_smsWatchService = 0;

  [(NSMutableArray *)self->_handlers removeAllObjects];
  v8.receiver = self;
  v8.super_class = IMDRelayPushHandler;
  [(IMDRelayPushHandler *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_updateListenerIfNeeded
{
  if (self->_registeredForPush)
  {
    v4 = objc_autoreleasePoolPush();
    if (!self->_isListening)
    {
      [(IDSService *)self->_relayService removeDelegate:self];
      relayService = self->_relayService;
      self->_relayService = 0;

      [(IDSService *)self->_smsWatchService removeDelegate:self];
      smsWatchService = self->_smsWatchService;
      self->_smsWatchService = 0;

      v7 = objc_alloc(MEMORY[0x277D18778]);
      v8 = *MEMORY[0x277D186A8];
      v9 = MEMORY[0x277CBEB98];
      v10 = [objc_opt_class() commandToHandlerBlock];
      v11 = [v10 allKeys];
      v12 = [v9 setWithArray:v11];
      v13 = [v7 initWithService:v8 commands:v12];
      v14 = self->_relayService;
      self->_relayService = v13;

      v15 = MEMORY[0x277D85CD0];
      [(IDSService *)self->_relayService addDelegate:self queue:MEMORY[0x277D85CD0]];
      v16 = objc_alloc(MEMORY[0x277D18778]);
      v17 = MEMORY[0x277CBEB98];
      v18 = [objc_opt_class() commandToHandlerBlock];
      v19 = [v18 allKeys];
      v20 = [v17 setWithArray:v19];
      v21 = [v16 initWithService:@"com.apple.private.alloy.sms.watch" commands:v20];
      v22 = self->_smsWatchService;
      self->_smsWatchService = v21;

      [(IDSService *)self->_smsWatchService addDelegate:self queue:v15];
      self->_isListening = 1;
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (void)_acceptIncomingPushes
{
  if (!self->_registeredForPush)
  {
    if ([MEMORY[0x277D1A9A0] isMessagesInstalled])
    {
      self->_registeredForPush = 1;
      if (IMOSLoggingEnabled())
      {
        v3 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          *v5 = 0;
          _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Accepting incoming pushes", v5, 2u);
        }
      }

      [(IMDRelayPushHandler *)self _updateListenerIfNeeded];
    }

    else if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Messages not installed, don't listen for pushes.", buf, 2u);
      }
    }
  }
}

- (void)_ignoreIncomingPushes
{
  if (self->_registeredForPush)
  {
    self->_registeredForPush = 0;
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "No longer accepting incoming pushes", v7, 2u);
      }
    }

    v4 = objc_autoreleasePoolPush();
    [(IDSService *)self->_relayService removeDelegate:self];
    relayService = self->_relayService;
    self->_relayService = 0;

    [(IDSService *)self->_smsWatchService removeDelegate:self];
    smsWatchService = self->_smsWatchService;
    self->_smsWatchService = 0;

    self->_isListening = 0;
    objc_autoreleasePoolPop(v4);
  }
}

- (void)setRegistered:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Changing SMS Push Hander Regiration State to: %@", &v8, 0xCu);
    }
  }

  if (v3)
  {
    [(IMDRelayPushHandler *)self _acceptIncomingPushes];
  }

  else
  {
    [(IMDRelayPushHandler *)self _ignoreIncomingPushes];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addListener:(id)a3
{
  v7 = a3;
  if (([(NSMutableArray *)self->_handlers containsObjectIdenticalTo:?]& 1) == 0)
  {
    handlers = self->_handlers;
    if (!handlers)
    {
      v5 = [MEMORY[0x277CBEB18] nonRetainingArray];
      v6 = self->_handlers;
      self->_handlers = v5;

      handlers = self->_handlers;
    }

    [(NSMutableArray *)handlers addObject:v7];
  }
}

- (void)removeListener:(id)a3
{
  [(NSMutableArray *)self->_handlers removeObjectIdenticalTo:a3];
  if (![(NSMutableArray *)self->_handlers count])
  {
    handlers = self->_handlers;
    self->_handlers = 0;
  }
}

- (id)_messageReplayObjectWithService:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v11 = [v10 serviceName];
  v12 = [v10 loginID];

  v13 = [objc_alloc(MEMORY[0x277D18798]) initWithData:v9 accountUniqueID:0 fromID:v8 loginID:v12 serviceName:v11];

  return v13;
}

- (id)_messageReplayObjectWithService:(id)a3 account:(id)a4 incomingTopLevelMessage:(id)a5 fromID:(id)a6
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v11 = [v10 serviceName];
  v12 = [v10 loginID];

  v13 = [objc_alloc(MEMORY[0x277D187A0]) initWithDictionary:v9 accountUniqueID:0 fromID:v8 loginID:v12 serviceName:v11];

  return v13;
}

- (void)replayMessage:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v25 = 138412290;
      v26 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Received dictionary to replay %@", &v25, 0xCu);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [v7 serviceName];
      v9 = [v8 isEqualToString:*MEMORY[0x277D186A8]];
      v10 = 24;
      if (v9)
      {
        v10 = 16;
      }

      v11 = *(&self->super.isa + v10);

      v12 = self->_account;
      v13 = [v7 dictionaryValue];
      v14 = [v7 fromID];
      v15 = v14;
      if (v11)
      {
        v16 = v13 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (!v16 && v14 != 0)
      {
        [(IMDRelayPushHandler *)self _service:v11 account:v12 incomingTopLevelMessage:v13 fromID:v14 messageContext:0 isBeingReplayed:1];
LABEL_29:

        goto LABEL_30;
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_29;
      }

      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v25 = 138413058;
        v26 = v11;
        v27 = 2112;
        v28 = v12;
        v29 = 2112;
        v30 = v13;
        v31 = 2112;
        v32 = v15;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "SMSReplay: Something was null. service %@ account %@ message %@ fromID %@", &v25, 0x2Au);
      }

LABEL_20:

      goto LABEL_29;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v6;
      v20 = [v19 serviceName];
      v21 = [v20 isEqualToString:*MEMORY[0x277D186A8]];
      v22 = 24;
      if (v21)
      {
        v22 = 16;
      }

      v11 = *(&self->super.isa + v22);

      v12 = self->_account;
      v13 = [v19 dataValue];
      v23 = [v19 fromID];
      v15 = v23;
      if (v11 && v13 && v23)
      {
        [(IMDRelayPushHandler *)self _service:v11 account:v12 incomingData:v13 fromID:v23 context:0 isBeingReplayed:1];
        goto LABEL_29;
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_29;
      }

      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v25 = 138413058;
        v26 = v11;
        v27 = 2112;
        v28 = v12;
        v29 = 2112;
        v30 = v13;
        v31 = 2112;
        v32 = v15;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "SMSReplay: Something was null. service %@ account %@ data %@ fromID %@", &v25, 0x2Au);
      }

      goto LABEL_20;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_30:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_service:(id)a3 account:(id)a4 incomingTopLevelMessage:(id)a5 fromID:(id)a6 messageContext:(id)a7 isBeingReplayed:(BOOL)a8
{
  v60 = *MEMORY[0x277D85DE8];
  v53 = a3;
  v48 = a4;
  v12 = a5;
  v56 = a6;
  v52 = a7;
  v49 = [objc_alloc(MEMORY[0x277D19290]) initWithIdentifier:@"IncomingMessagePowerAssertion" timeout:10.0];
  v13 = *MEMORY[0x277D18810];
  v14 = [v12 objectForKey:*MEMORY[0x277D18810]];
  v55 = [v12 objectForKey:*MEMORY[0x277D187F8]];
  v54 = [v55 _FTOptionallyDecompressData];
  v51 = JWDecodeDictionary();
  v15 = *MEMORY[0x277D18848];
  v16 = [v14 objectForKey:*MEMORY[0x277D18848]];
  v17 = objc_opt_class();
  v18 = sub_22B69C444(v17, v12, @"mc");
  v19 = [v18 BOOLValue];

  v20 = [v14 objectForKey:@"U"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = MEMORY[0x277CBEA90];
    v22 = [v14 objectForKey:@"U"];
    v23 = [v21 _IDSDataFromBase64String:v22];
    v24 = JWUUIDPushObjectToString();
LABEL_5:
    v25 = v24;

    goto LABEL_7;
  }

  v22 = [v14 objectForKey:@"U"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = [v14 objectForKey:@"U"];
    v24 = JWUUIDPushObjectToString();
    goto LABEL_5;
  }

  v25 = JWUUIDPushObjectToString();
LABEL_7:

  if (v25)
  {
    v26 = v19;
  }

  else
  {
    v26 = 0;
  }

  if (v26 == 1)
  {
    v27 = +[IMMessagesToTrack sharedInstance];
    [v27 addMessagesID:v25];
  }

  v28 = [v53 deviceForFromID:v56];
  v29 = [v28 pushToken];
  if (v16 || ([v14 objectForKey:qword_27D8CC850], (v16 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v12, "objectForKey:", v15), (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    if ([v16 integerValue] == 227)
    {
      v30 = _os_activity_create(&dword_22B4CC000, "com.apple.messages.SMSReceivedRelayLocalCommand", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      os_activity_scope_enter(v30, &state);
      if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Received IDS Nice message (Local Message) ", buf, 2u);
        }
      }

      if (v28)
      {
        v32 = [v12 objectForKey:v13];
        v33 = v32;
        if (v32)
        {
          v43 = [v32 objectForKey:IMDRelayLocalMessageDictionaryDictKey];
          v44 = [v43 _FTOptionallyDecompressData];
          v45 = JWDecodeDictionary();
          v46 = [v33 objectForKey:IMDRelayLocalMessageDictionaryTypeKey];
          if (IMOSLoggingEnabled())
          {
            v34 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v59 = v46;
              _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, " Attempting to locate block for local message of type %@ ", buf, 0xCu);
            }
          }

          v35 = [objc_opt_class() localCommandToHandlerBlock];
          v36 = [v35 objectForKey:v46];

          if (v36)
          {
            (v36)[2](v36, self, v16, v45, v14, v52, v56, v29, a8);
          }
        }

        os_activity_scope_leave(&state);
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v41 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_INFO, "We received a local message from a device that is not our own.", buf, 2u);
          }
        }

        os_activity_scope_leave(&state);
      }
    }

    else
    {
      v37 = [objc_opt_class() commandToHandlerBlock];
      v38 = [v37 objectForKey:v16];

      if (v38)
      {
        v39 = [v16 integerValue];
        v40 = v12;
        if (v39 != 126)
        {
          v40 = v12;
          if (v39 != 139)
          {
            v40 = v51;
          }
        }

        (v38)[2](v38, self, v16, v40, v14, v52, v56, v29, a8);
      }
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 incomingTopLevelMessage:(id)a5 fromID:(id)a6 messageContext:(id)a7
{
  v38 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v27 = [v13 _copyMessageDictionaryForLogging];
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v31 = v27;
      v32 = 2112;
      v33 = v11;
      v34 = 2112;
      v35 = v12;
      v36 = 1024;
      v37 = [v12 accountType];
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Received message %@ for service %@ on account %@ with type %d ", buf, 0x26u);
    }
  }

  v17 = objc_autoreleasePoolPush();
  v18 = [MEMORY[0x277D1ACB8] sharedInstance];
  if ([v18 isUnderFirstDataProtectionLock])
  {
  }

  else
  {
    v19 = +[IMDReplayController sharedInstance];
    v20 = [v19 isRecordingReplayDB];

    if (!v20)
    {
      goto LABEL_18;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Received message before first unlock. Storing it to replay", buf, 2u);
    }
  }

  v22 = [(IMDRelayPushHandler *)self _messageReplayObjectWithService:v11 account:v12 incomingTopLevelMessage:v13 fromID:v14];
  v23 = +[IMDReplayController sharedInstance];
  v29 = 0;
  [v23 storeMessage:v22 type:2 error:&v29];
  v24 = v29;

  if (v24 && IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v31 = v22;
      v32 = 2112;
      v33 = v24;
      _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "ReplayController: Got error trying to store sms relay message %@ error %@", buf, 0x16u);
    }
  }

LABEL_18:
  objc_autoreleasePoolPop(v17);
  [(IMDRelayPushHandler *)self _service:v11 account:v12 incomingTopLevelMessage:v13 fromID:v14 messageContext:v15 isBeingReplayed:0];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7 isBeingReplayed:(BOOL)a8
{
  v28 = a6;
  v12 = a7;
  v13 = a3;
  v14 = [a5 _FTOptionallyDecompressData];
  v15 = JWDecodeDictionary();
  v16 = MEMORY[0x277CBEAC0];
  v17 = [v12 outgoingResponseIdentifier];
  v18 = IDSGetUUIDData();
  v19 = [v16 dictionaryWithObjectsAndKeys:{v18, @"U", v28, qword_27D8CC860, 0}];

  v20 = [v13 deviceForFromID:v28];

  v21 = [v20 pushToken];
  v22 = [objc_opt_class() commandToHandlerBlock];
  v23 = [v12 originalCommand];
  v24 = [v22 objectForKey:v23];

  if (v24)
  {
    v25 = [v12 originalCommand];
    LOBYTE(v26) = a8;
    (v24)[2](v24, self, v25, v15, v19, v12, v28, v21, v26);
  }
}

- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7
{
  v27 = self;
  v39 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138413314;
      v30 = v13;
      v31 = 2112;
      v32 = v11;
      v33 = 2112;
      v34 = v12;
      v35 = 1024;
      v36 = [v12 accountType];
      v37 = 2112;
      v38 = v15;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Received Incomming Data %@ for service %@ on account %@ with type %d and context %@", buf, 0x30u);
    }
  }

  v17 = objc_autoreleasePoolPush();
  v18 = [MEMORY[0x277D1ACB8] sharedInstance];
  if ([v18 isUnderFirstDataProtectionLock])
  {
  }

  else
  {
    v19 = +[IMDReplayController sharedInstance];
    v20 = [v19 isRecordingReplayDB];

    if (!v20)
    {
      goto LABEL_18;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Received message before first unlock. Storing it to replay", buf, 2u);
    }
  }

  v22 = [(IMDRelayPushHandler *)v27 _messageReplayObjectWithService:v11 account:v12 incomingData:v13 fromID:v14, v27];
  v23 = +[IMDReplayController sharedInstance];
  v28 = 0;
  [v23 storeMessage:v22 type:2 error:&v28];
  v24 = v28;

  if (v24 && IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v30 = v22;
      v31 = 2112;
      v32 = v24;
      _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "ReplayController: Got error trying to store sms relay message %@ error %@", buf, 0x16u);
    }
  }

LABEL_18:
  objc_autoreleasePoolPop(v17);
  [(IMDRelayPushHandler *)v27 _service:v11 account:v12 incomingData:v13 fromID:v14 context:v15 isBeingReplayed:0];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  v22 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = @"NO";
      if (v8)
      {
        v16 = @"YES";
      }

      v18 = 138412546;
      v19 = v13;
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Message with ID %@ Sent Success %@", &v18, 0x16u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_serviceNameOrCompatibilityServiceNameFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:IMDRelayMessageItemDictionaryServiceKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = +[IMDServiceController sharedController];
    v6 = [v5 serviceWithName:v4];

    if (!v6)
    {
      v7 = [v3 objectForKeyedSubscript:IMDRelayMessageItemDictionaryCompatibilityServiceKey];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;

        v4 = v8;
      }
    }

    v4 = v4;
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_serviceNameForMessage:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(IMDRelayPushHandler *)self _serviceNameOrCompatibilityServiceNameFromDictionary:v4];
    if (!v5)
    {
      v6 = [v4 objectForKeyedSubscript:IMDRelayMessageItemDictionary];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [(IMDRelayPushHandler *)self _serviceNameOrCompatibilityServiceNameFromDictionary:v6];
      }

      else
      {
        v5 = 0;
      }
    }

    v8 = *MEMORY[0x277D1A610];
    if (v5)
    {
      v8 = v5;
    }

    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_guidsForMessage:(id)a3 messageGUID:(id)a4 routingBehaviors:(unint64_t)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v10 = v9;
  if (v8 && (v5 & 2) != 0)
  {
    [v9 addObject:v8];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v7 objectForKeyedSubscript:@"message"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 firstObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [v10 addObjectsFromArray:v11];
      }
    }

    v14 = [v7 objectForKeyedSubscript:IMDCTMessageDictionaryGUIDKey];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [v7 objectForKeyedSubscript:IMDRelayLocalMessageDictionaryGUIDKey];
    }

    v18 = v16;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 addObject:v18];
    }

    v17 = [v10 allObjects];
  }

  else
  {
    v17 = [v10 allObjects];
  }

  return v17;
}

- (id)_handlerForServiceName:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [(IMDRelayPushHandler *)self copyHandlersForEnumerating];
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = *v18;
      v8 = &selRef_repairOffGridStatusWithHandleID_fromHandleID_completion_;
      while (2)
      {
        v9 = 0;
        v10 = v8[275];
        do
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v17 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            v12 = [v11 service];
            v13 = [v12 internalName];
            v14 = [v13 isEqualToString:v4];

            if (v14)
            {
              v6 = v11;
              goto LABEL_14;
            }
          }

          v9 = v9 + 1;
        }

        while (v6 != v9);
        v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        v8 = &selRef_repairOffGridStatusWithHandleID_fromHandleID_completion_;
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    v6 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_calculateHandlersForMessage:(id)a3 messageGUID:(id)a4 fromIdentifier:(id)a5 command:(id)a6 completionBlock:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v16 = a3;
  v15 = [a6 integerValue];
  [(IMDRelayPushHandler *)self _calculateHandlersForMatchType:[(IMDRelayPushHandler *)self _listenerMatchTypeForCommand:v15 message:v16] routingBehaviors:[(IMDRelayPushHandler *)self _routingBehaviorsForCommand:v15] message:v16 messageGUID:v14 fromIdentifier:v13 completionBlock:v12];
}

- (id)_messageDictionaryForLocalMessage:(id)a3 type:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (qword_27D8D0048 != -1)
  {
    sub_22B7D8F9C();
  }

  v7 = [qword_27D8D0040 objectForKeyedSubscript:v6];
  if (!v7)
  {
    v8 = v5;
    goto LABEL_7;
  }

  v8 = [v5 objectForKeyedSubscript:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_7:
    v5 = v8;
    v9 = v5;
    goto LABEL_13;
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 138740739;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = objc_opt_class();
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Local message %{sensitive}@ of type %@ had key %@ but it was of class %@ instead of NSDictionary", &v13, 0x2Au);
    }
  }

  v9 = 0;
LABEL_13:

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_calculateHandlersForLocalMessage:(id)a3 userInfo:(id)a4 completionBlock:(id)a5
{
  v8 = IMDRelayLocalMessageDictionaryTypeKey;
  v9 = a5;
  v10 = a3;
  v12 = [a4 objectForKeyedSubscript:v8];
  v11 = [(IMDRelayPushHandler *)self _messageDictionaryForLocalMessage:v10 type:v12];

  [(IMDRelayPushHandler *)self _calculateHandlersForMatchType:[(IMDRelayPushHandler *)self _listenerMatchTypeForLocalMessageType:v12 message:v11] routingBehaviors:[(IMDRelayPushHandler *)self _routingBehaviorsForLocalMessageType:v12] message:v11 messageGUID:0 fromIdentifier:0 completionBlock:v9];
}

- (id)_handlersForExplicitServiceWithMessage:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDRelayPushHandler *)self _serviceNameForMessage:v4];
  v6 = [(IMDRelayPushHandler *)self _handlerForServiceName:v5];
  v7 = v6;
  if (v6)
  {
    v18[0] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  }

  else
  {
    v8 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = 138412803;
      v13 = v7;
      v14 = 2112;
      v15 = v5;
      v16 = 2117;
      v17 = v4;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Routing payload to %@ due to explicitly specified service %@, payload=%{sensitive}@", &v12, 0x20u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_calculateHandlersForMatchType:(unint64_t)a3 routingBehaviors:(unint64_t)a4 message:(id)a5 messageGUID:(id)a6 fromIdentifier:(id)a7 completionBlock:(id)a8
{
  v98 = *MEMORY[0x277D85DE8];
  v14 = a5;
  v15 = a6;
  v51 = a7;
  v16 = a8;
  v50 = self;
  v52 = v14;
  v46 = v15;
  v17 = [(IMDRelayPushHandler *)self _guidsForMessage:v14 messageGUID:v15 routingBehaviors:a4];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B6AC03C;
  aBlock[3] = &unk_278707CC8;
  v48 = v17;
  v83 = v48;
  v84 = self;
  v86 = a4;
  v47 = v16;
  v85 = v47;
  v49 = _Block_copy(aBlock);
  if (a3 != 1 && (a4 & 4) != 0)
  {
    v58 = [(IMDRelayPushHandler *)self _handlersForExplicitServiceWithMessage:v14];
    if ([v58 count])
    {
LABEL_4:
      v49[2](v49, v58);
      goto LABEL_66;
    }
  }

  v58 = [(IMDRelayPushHandler *)self copyHandlersForEnumerating];
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v62 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v72 = 0u;
      v73 = 0u;
      v71 = 0u;
      v70 = 0u;
      v58 = v58;
      v55 = [v58 countByEnumeratingWithState:&v70 objects:v88 count:16];
      if (v55)
      {
        v53 = 0;
        v54 = *v71;
        do
        {
          for (i = 0; i != v55; ++i)
          {
            if (*v71 != v54)
            {
              objc_enumerationMutation(v58);
            }

            obja = *(*(&v70 + 1) + 8 * i);
            if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
            {
              v68 = 0u;
              v69 = 0u;
              v66 = 0u;
              v67 = 0u;
              v29 = [obja accounts];
              v30 = [v29 countByEnumeratingWithState:&v66 objects:v87 count:16];
              if (v30)
              {
                v31 = *v67;
                do
                {
                  for (j = 0; j != v30; ++j)
                  {
                    if (*v67 != v31)
                    {
                      objc_enumerationMutation(v29);
                    }

                    v33 = *(*(&v66 + 1) + 8 * j);
                    v34 = MEMORY[0x277D1A898];
                    v35 = +[IMDAccountController sharedInstance];
                    v36 = [v35 accounts];
                    LODWORD(v34) = [v34 isAccountUsableForSendingWithAllAccounts:v36 account:v33];

                    if (v34)
                    {
                      [v62 addObject:v33];
                    }
                  }

                  v30 = [v29 countByEnumeratingWithState:&v66 objects:v87 count:16];
                }

                while (v30);
              }

              v37 = [obja chatForOutgoingMessage:v52 fromIdentifier:v51 isInProxyMode:0 createIfNotExists:0];
              if ([v37 isNewerThan:v53])
              {
                v38 = v37;

                v53 = v38;
              }
            }
          }

          v55 = [v58 countByEnumeratingWithState:&v70 objects:v88 count:16];
        }

        while (v55);
      }

      else
      {
        v53 = 0;
      }

      v40 = [v52 objectForKey:IMDCTMessageDictionaryReceipientsKey];
      v41 = [v40 __imArrayByApplyingBlock:&unk_283F1B0A8];

      v42 = +[IMDServiceReachabilityController sharedController];
      v43 = +[IMDServiceReachabilityController sharedController];
      v44 = [v43 reachabilityContextForChat:v53];
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = sub_22B6AC230;
      v63[3] = &unk_278707CF0;
      v63[4] = v50;
      v64 = v52;
      v65 = v49;
      [v42 calculateServiceForSendingToHandles:v41 accounts:v62 context:v44 completionBlock:v63];
    }

    else if (a3 == 3)
    {
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      obj = v48;
      v19 = [obj countByEnumeratingWithState:&v78 objects:v97 count:16];
      if (v19)
      {
        v59 = *v79;
        v61 = 0;
        do
        {
          for (k = 0; k != v19; ++k)
          {
            if (*v79 != v59)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v78 + 1) + 8 * k);
            v74 = 0u;
            v75 = 0u;
            v76 = 0u;
            v77 = 0u;
            v22 = v58;
            v23 = [v22 countByEnumeratingWithState:&v74 objects:v96 count:16];
            if (v23)
            {
              v24 = *v75;
              while (2)
              {
                for (m = 0; m != v23; ++m)
                {
                  if (*v75 != v24)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v26 = *(*(&v74 + 1) + 8 * m);
                  if ((objc_opt_respondsToSelector() & 1) != 0 && [v26 responsibleForMessageID:v21])
                  {
                    v95 = v26;
                    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v95 count:1];

                    v61 = v27;
                    goto LABEL_28;
                  }
                }

                v23 = [v22 countByEnumeratingWithState:&v74 objects:v96 count:16];
                if (v23)
                {
                  continue;
                }

                break;
              }
            }

LABEL_28:
          }

          v19 = [obj countByEnumeratingWithState:&v78 objects:v97 count:16];
        }

        while (v19);
      }

      else
      {
        v61 = 0;
      }

      if (IMOSLoggingEnabled())
      {
        v39 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          *buf = 138412803;
          v90 = obj;
          v91 = 2112;
          v92 = v61;
          v93 = 2117;
          v94 = v52;
          _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "Routing payload for messages %@ to %@, payload=%{sensitive}@", buf, 0x20u);
        }
      }

      v49[2](v49, v61);
    }
  }

  else
  {
    if (!a3)
    {
      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 138739971;
          v90 = v14;
          _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Broadcasting payload to all registered listeners, payload=%{sensitive}@", buf, 0xCu);
        }
      }

      goto LABEL_4;
    }

    if (a3 == 1)
    {
      v18 = [(IMDRelayPushHandler *)self _handlersForExplicitServiceWithMessage:v14];
      v49[2](v49, v18);
    }
  }

LABEL_66:

  v45 = *MEMORY[0x277D85DE8];
}

- (BOOL)_messageRequestsServiceForSendingBypass:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:IMDRelayMessageItemDictionarySkipServiceForSendingKey];
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && ([v3 BOOLValue] & 1) != 0;

  return v4;
}

- (unint64_t)_listenerMatchTypeForCommand:(int64_t)a3 message:(id)a4
{
  v6 = a4;
  v7 = a3 - 101;
  if ((a3 - 101) > 0x30)
  {
    goto LABEL_9;
  }

  if (((1 << v7) & 0x1600000400003) == 0)
  {
    if (((1 << v7) & 0x18000000000) != 0)
    {
      goto LABEL_11;
    }

    if (((1 << v7) & 0xC0000000000) != 0)
    {
      v9 = [MEMORY[0x277D07DB0] sharedInstance];
      if ([v9 deviceType] == 2)
      {
        v10 = [(IMDRelayPushHandler *)self _messageRequestsServiceForSendingBypass:v6];

        if (!v10)
        {
          v8 = 2;
          goto LABEL_12;
        }
      }

      else
      {
      }

LABEL_11:
      v8 = 1;
      goto LABEL_12;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_12;
  }

  v8 = 3;
LABEL_12:

  return v8;
}

- (unint64_t)_listenerMatchTypeForLocalMessageType:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_27D8D0060 != -1)
  {
    sub_22B7D8FB0();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v8 = [qword_27D8D0050 objectForKeyedSubscript:v6];
  v9 = [v8 integerValue];

  v10 = [MEMORY[0x277D07DB0] sharedInstance];
  if ([v10 deviceType] != 2)
  {
    goto LABEL_8;
  }

  v11 = [(IMDRelayPushHandler *)self _messageRequestsServiceForSendingBypass:v7];

  if (!v11)
  {
    v12 = [qword_27D8D0058 objectForKeyedSubscript:v6];
    v10 = v12;
    if (v12)
    {
      v9 = [v12 integerValue];
    }

LABEL_8:
  }

LABEL_10:

  return v9;
}

- (unint64_t)_routingBehaviorsForCommand:(int64_t)a3
{
  result = 0;
  v4 = a3 - 101;
  if ((a3 - 101) <= 0x30)
  {
    if (((1 << v4) & 0x1400000400003) != 0)
    {
      return 2;
    }

    else if (((1 << v4) & 0xD8000000000) != 0)
    {
      return 8;
    }

    else if (a3 == 146)
    {
      return 6;
    }
  }

  return result;
}

- (unint64_t)_routingBehaviorsForLocalMessageType:(id)a3
{
  v3 = a3;
  if (qword_27D8D0070 != -1)
  {
    sub_22B7D8FC4();
  }

  v4 = [qword_27D8D0068 objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end