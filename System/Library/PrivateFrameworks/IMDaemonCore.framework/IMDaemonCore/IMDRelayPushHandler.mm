@interface IMDRelayPushHandler
+ (id)commandToHandlerBlock;
+ (id)localCommandToHandlerBlock;
+ (id)sharedInstance;
- (BOOL)_messageRequestsServiceForSendingBypass:(id)bypass;
- (IMDRelayPushHandler)init;
- (IMDRelayPushHandler)initWithIDSAccount:(id)account;
- (id)_cachedListenersForGUID:(id)d;
- (id)_guidsForMessage:(id)message messageGUID:(id)d routingBehaviors:(unint64_t)behaviors;
- (id)_handlerForServiceName:(id)name;
- (id)_handlersForExplicitServiceWithMessage:(id)message;
- (id)_messageDictionaryForLocalMessage:(id)message type:(id)type;
- (id)_messageReplayObjectWithService:(id)service account:(id)account incomingData:(id)data fromID:(id)d;
- (id)_messageReplayObjectWithService:(id)service account:(id)account incomingTopLevelMessage:(id)message fromID:(id)d;
- (id)_serviceNameForMessage:(id)message;
- (id)_serviceNameOrCompatibilityServiceNameFromDictionary:(id)dictionary;
- (unint64_t)_listenerMatchTypeForCommand:(int64_t)command message:(id)message;
- (unint64_t)_listenerMatchTypeForLocalMessageType:(id)type message:(id)message;
- (unint64_t)_routingBehaviorsForCommand:(int64_t)command;
- (unint64_t)_routingBehaviorsForLocalMessageType:(id)type;
- (void)_acceptIncomingPushes;
- (void)_cacheListeners:(id)listeners forGUID:(id)d;
- (void)_calculateHandlersForLocalMessage:(id)message userInfo:(id)info completionBlock:(id)block;
- (void)_calculateHandlersForMatchType:(unint64_t)type routingBehaviors:(unint64_t)behaviors message:(id)message messageGUID:(id)d fromIdentifier:(id)identifier completionBlock:(id)block;
- (void)_calculateHandlersForMessage:(id)message messageGUID:(id)d fromIdentifier:(id)identifier command:(id)command completionBlock:(id)block;
- (void)_handleMessageProcessedWithGUID:(id)d;
- (void)_ignoreIncomingPushes;
- (void)_service:(id)_service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context isBeingReplayed:(BOOL)replayed;
- (void)_service:(id)_service account:(id)account incomingTopLevelMessage:(id)message fromID:(id)d messageContext:(id)context isBeingReplayed:(BOOL)replayed;
- (void)_updateListenerIfNeeded;
- (void)addListener:(id)listener;
- (void)dealloc;
- (void)removeListener:(id)listener;
- (void)replayMessage:(id)message;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingTopLevelMessage:(id)message fromID:(id)d messageContext:(id)context;
- (void)setRegistered:(BOOL)registered;
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

- (void)_handleMessageProcessedWithGUID:(id)d
{
  dCopy = d;
  guidToListenersCache = [(IMDRelayPushHandler *)self guidToListenersCache];
  [guidToListenersCache removeObjectForKey:dCopy];
}

- (void)_cacheListeners:(id)listeners forGUID:(id)d
{
  listenersCopy = listeners;
  dCopy = d;
  guidToListenersCache = [(IMDRelayPushHandler *)self guidToListenersCache];

  if (!guidToListenersCache)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEA78]);
    [(IMDRelayPushHandler *)self setGuidToListenersCache:v9];

    guidToListenersCache2 = [(IMDRelayPushHandler *)self guidToListenersCache];
    [guidToListenersCache2 setCountLimit:50000];
  }

  v11 = IMLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_22B7D8DF0(listenersCopy, dCopy, v11);
  }

  guidToListenersCache3 = [(IMDRelayPushHandler *)self guidToListenersCache];
  [guidToListenersCache3 setObject:listenersCopy forKey:dCopy];
}

- (id)_cachedListenersForGUID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  guidToListenersCache = [(IMDRelayPushHandler *)self guidToListenersCache];
  v6 = [guidToListenersCache objectForKey:dCopy];

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
      v15 = dCopy;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Reusing cached listeners %@ for GUID %@", &v12, 0x16u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_22B7D8E80(dCopy, v9);
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

- (IMDRelayPushHandler)initWithIDSAccount:(id)account
{
  accountCopy = account;
  v8.receiver = self;
  v8.super_class = IMDRelayPushHandler;
  v5 = [(IMDRelayPushHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(IMDRelayPushHandler *)v5 setAccount:accountCopy];
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
      selfCopy = self;
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
      commandToHandlerBlock = [objc_opt_class() commandToHandlerBlock];
      allKeys = [commandToHandlerBlock allKeys];
      v12 = [v9 setWithArray:allKeys];
      v13 = [v7 initWithService:v8 commands:v12];
      v14 = self->_relayService;
      self->_relayService = v13;

      v15 = MEMORY[0x277D85CD0];
      [(IDSService *)self->_relayService addDelegate:self queue:MEMORY[0x277D85CD0]];
      v16 = objc_alloc(MEMORY[0x277D18778]);
      v17 = MEMORY[0x277CBEB98];
      commandToHandlerBlock2 = [objc_opt_class() commandToHandlerBlock];
      allKeys2 = [commandToHandlerBlock2 allKeys];
      v20 = [v17 setWithArray:allKeys2];
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

- (void)setRegistered:(BOOL)registered
{
  registeredCopy = registered;
  v10 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (registeredCopy)
      {
        v6 = @"YES";
      }

      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Changing SMS Push Hander Regiration State to: %@", &v8, 0xCu);
    }
  }

  if (registeredCopy)
  {
    [(IMDRelayPushHandler *)self _acceptIncomingPushes];
  }

  else
  {
    [(IMDRelayPushHandler *)self _ignoreIncomingPushes];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addListener:(id)listener
{
  listenerCopy = listener;
  if (([(NSMutableArray *)self->_handlers containsObjectIdenticalTo:?]& 1) == 0)
  {
    handlers = self->_handlers;
    if (!handlers)
    {
      nonRetainingArray = [MEMORY[0x277CBEB18] nonRetainingArray];
      v6 = self->_handlers;
      self->_handlers = nonRetainingArray;

      handlers = self->_handlers;
    }

    [(NSMutableArray *)handlers addObject:listenerCopy];
  }
}

- (void)removeListener:(id)listener
{
  [(NSMutableArray *)self->_handlers removeObjectIdenticalTo:listener];
  if (![(NSMutableArray *)self->_handlers count])
  {
    handlers = self->_handlers;
    self->_handlers = 0;
  }
}

- (id)_messageReplayObjectWithService:(id)service account:(id)account incomingData:(id)data fromID:(id)d
{
  dCopy = d;
  dataCopy = data;
  accountCopy = account;
  serviceName = [accountCopy serviceName];
  loginID = [accountCopy loginID];

  v13 = [objc_alloc(MEMORY[0x277D18798]) initWithData:dataCopy accountUniqueID:0 fromID:dCopy loginID:loginID serviceName:serviceName];

  return v13;
}

- (id)_messageReplayObjectWithService:(id)service account:(id)account incomingTopLevelMessage:(id)message fromID:(id)d
{
  dCopy = d;
  messageCopy = message;
  accountCopy = account;
  serviceName = [accountCopy serviceName];
  loginID = [accountCopy loginID];

  v13 = [objc_alloc(MEMORY[0x277D187A0]) initWithDictionary:messageCopy accountUniqueID:0 fromID:dCopy loginID:loginID serviceName:serviceName];

  return v13;
}

- (void)replayMessage:(id)message
{
  v33 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v25 = 138412290;
      v26 = messageCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Received dictionary to replay %@", &v25, 0xCu);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = messageCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      serviceName = [v7 serviceName];
      v9 = [serviceName isEqualToString:*MEMORY[0x277D186A8]];
      v10 = 24;
      if (v9)
      {
        v10 = 16;
      }

      v11 = *(&self->super.isa + v10);

      v12 = self->_account;
      dictionaryValue = [v7 dictionaryValue];
      fromID = [v7 fromID];
      v15 = fromID;
      if (v11)
      {
        v16 = dictionaryValue == 0;
      }

      else
      {
        v16 = 1;
      }

      if (!v16 && fromID != 0)
      {
        [(IMDRelayPushHandler *)self _service:v11 account:v12 incomingTopLevelMessage:dictionaryValue fromID:fromID messageContext:0 isBeingReplayed:1];
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
        v30 = dictionaryValue;
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
      serviceName2 = [v19 serviceName];
      v21 = [serviceName2 isEqualToString:*MEMORY[0x277D186A8]];
      v22 = 24;
      if (v21)
      {
        v22 = 16;
      }

      v11 = *(&self->super.isa + v22);

      v12 = self->_account;
      dictionaryValue = [v19 dataValue];
      fromID2 = [v19 fromID];
      v15 = fromID2;
      if (v11 && dictionaryValue && fromID2)
      {
        [(IMDRelayPushHandler *)self _service:v11 account:v12 incomingData:dictionaryValue fromID:fromID2 context:0 isBeingReplayed:1];
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
        v30 = dictionaryValue;
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

- (void)_service:(id)_service account:(id)account incomingTopLevelMessage:(id)message fromID:(id)d messageContext:(id)context isBeingReplayed:(BOOL)replayed
{
  v60 = *MEMORY[0x277D85DE8];
  _serviceCopy = _service;
  accountCopy = account;
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  v49 = [objc_alloc(MEMORY[0x277D19290]) initWithIdentifier:@"IncomingMessagePowerAssertion" timeout:10.0];
  v13 = *MEMORY[0x277D18810];
  v14 = [messageCopy objectForKey:*MEMORY[0x277D18810]];
  v55 = [messageCopy objectForKey:*MEMORY[0x277D187F8]];
  _FTOptionallyDecompressData = [v55 _FTOptionallyDecompressData];
  v51 = JWDecodeDictionary();
  v15 = *MEMORY[0x277D18848];
  v16 = [v14 objectForKey:*MEMORY[0x277D18848]];
  v17 = objc_opt_class();
  v18 = sub_22B69C444(v17, messageCopy, @"mc");
  bOOLValue = [v18 BOOLValue];

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
    v26 = bOOLValue;
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

  v28 = [_serviceCopy deviceForFromID:dCopy];
  pushToken = [v28 pushToken];
  if (v16 || ([v14 objectForKey:qword_27D8CC850], (v16 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(messageCopy, "objectForKey:", v15), (v16 = objc_claimAutoreleasedReturnValue()) != 0))
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
        v32 = [messageCopy objectForKey:v13];
        v33 = v32;
        if (v32)
        {
          v43 = [v32 objectForKey:IMDRelayLocalMessageDictionaryDictKey];
          _FTOptionallyDecompressData2 = [v43 _FTOptionallyDecompressData];
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

          localCommandToHandlerBlock = [objc_opt_class() localCommandToHandlerBlock];
          v36 = [localCommandToHandlerBlock objectForKey:v46];

          if (v36)
          {
            (v36)[2](v36, self, v16, v45, v14, contextCopy, dCopy, pushToken, replayed);
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
      commandToHandlerBlock = [objc_opt_class() commandToHandlerBlock];
      v38 = [commandToHandlerBlock objectForKey:v16];

      if (v38)
      {
        integerValue = [v16 integerValue];
        v40 = messageCopy;
        if (integerValue != 126)
        {
          v40 = messageCopy;
          if (integerValue != 139)
          {
            v40 = v51;
          }
        }

        (v38)[2](v38, self, v16, v40, v14, contextCopy, dCopy, pushToken, replayed);
      }
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service account:(id)account incomingTopLevelMessage:(id)message fromID:(id)d messageContext:(id)context
{
  v38 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  _copyMessageDictionaryForLogging = [messageCopy _copyMessageDictionaryForLogging];
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v31 = _copyMessageDictionaryForLogging;
      v32 = 2112;
      v33 = serviceCopy;
      v34 = 2112;
      v35 = accountCopy;
      v36 = 1024;
      accountType = [accountCopy accountType];
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Received message %@ for service %@ on account %@ with type %d ", buf, 0x26u);
    }
  }

  v17 = objc_autoreleasePoolPush();
  mEMORY[0x277D1ACB8] = [MEMORY[0x277D1ACB8] sharedInstance];
  if ([mEMORY[0x277D1ACB8] isUnderFirstDataProtectionLock])
  {
  }

  else
  {
    v19 = +[IMDReplayController sharedInstance];
    isRecordingReplayDB = [v19 isRecordingReplayDB];

    if (!isRecordingReplayDB)
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

  v22 = [(IMDRelayPushHandler *)self _messageReplayObjectWithService:serviceCopy account:accountCopy incomingTopLevelMessage:messageCopy fromID:dCopy];
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
  [(IMDRelayPushHandler *)self _service:serviceCopy account:accountCopy incomingTopLevelMessage:messageCopy fromID:dCopy messageContext:contextCopy isBeingReplayed:0];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_service:(id)_service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context isBeingReplayed:(BOOL)replayed
{
  dCopy = d;
  contextCopy = context;
  _serviceCopy = _service;
  _FTOptionallyDecompressData = [data _FTOptionallyDecompressData];
  v15 = JWDecodeDictionary();
  v16 = MEMORY[0x277CBEAC0];
  outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
  v18 = IDSGetUUIDData();
  v19 = [v16 dictionaryWithObjectsAndKeys:{v18, @"U", dCopy, qword_27D8CC860, 0}];

  v20 = [_serviceCopy deviceForFromID:dCopy];

  pushToken = [v20 pushToken];
  commandToHandlerBlock = [objc_opt_class() commandToHandlerBlock];
  originalCommand = [contextCopy originalCommand];
  v24 = [commandToHandlerBlock objectForKey:originalCommand];

  if (v24)
  {
    originalCommand2 = [contextCopy originalCommand];
    LOBYTE(v26) = replayed;
    (v24)[2](v24, self, originalCommand2, v15, v19, contextCopy, dCopy, pushToken, v26);
  }
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  selfCopy = self;
  v39 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  dataCopy = data;
  dCopy = d;
  contextCopy = context;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138413314;
      v30 = dataCopy;
      v31 = 2112;
      v32 = serviceCopy;
      v33 = 2112;
      v34 = accountCopy;
      v35 = 1024;
      accountType = [accountCopy accountType];
      v37 = 2112;
      v38 = contextCopy;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Received Incomming Data %@ for service %@ on account %@ with type %d and context %@", buf, 0x30u);
    }
  }

  v17 = objc_autoreleasePoolPush();
  mEMORY[0x277D1ACB8] = [MEMORY[0x277D1ACB8] sharedInstance];
  if ([mEMORY[0x277D1ACB8] isUnderFirstDataProtectionLock])
  {
  }

  else
  {
    v19 = +[IMDReplayController sharedInstance];
    isRecordingReplayDB = [v19 isRecordingReplayDB];

    if (!isRecordingReplayDB)
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

  selfCopy = [(IMDRelayPushHandler *)selfCopy _messageReplayObjectWithService:serviceCopy account:accountCopy incomingData:dataCopy fromID:dCopy, selfCopy];
  v23 = +[IMDReplayController sharedInstance];
  v28 = 0;
  [v23 storeMessage:selfCopy type:2 error:&v28];
  v24 = v28;

  if (v24 && IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v30 = selfCopy;
      v31 = 2112;
      v32 = v24;
      _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "ReplayController: Got error trying to store sms relay message %@ error %@", buf, 0x16u);
    }
  }

LABEL_18:
  objc_autoreleasePoolPop(v17);
  [(IMDRelayPushHandler *)selfCopy _service:serviceCopy account:accountCopy incomingData:dataCopy fromID:dCopy context:contextCopy isBeingReplayed:0];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v22 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = @"NO";
      if (successCopy)
      {
        v16 = @"YES";
      }

      v18 = 138412546;
      v19 = identifierCopy;
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Message with ID %@ Sent Success %@", &v18, 0x16u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_serviceNameOrCompatibilityServiceNameFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:IMDRelayMessageItemDictionaryServiceKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = +[IMDServiceController sharedController];
    v6 = [v5 serviceWithName:v4];

    if (!v6)
    {
      v7 = [dictionaryCopy objectForKeyedSubscript:IMDRelayMessageItemDictionaryCompatibilityServiceKey];
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

- (id)_serviceNameForMessage:(id)message
{
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(IMDRelayPushHandler *)self _serviceNameOrCompatibilityServiceNameFromDictionary:messageCopy];
    if (!v5)
    {
      v6 = [messageCopy objectForKeyedSubscript:IMDRelayMessageItemDictionary];
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

- (id)_guidsForMessage:(id)message messageGUID:(id)d routingBehaviors:(unint64_t)behaviors
{
  behaviorsCopy = behaviors;
  messageCopy = message;
  dCopy = d;
  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v10 = v9;
  if (dCopy && (behaviorsCopy & 2) != 0)
  {
    [v9 addObject:dCopy];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [messageCopy objectForKeyedSubscript:@"message"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      firstObject = [v11 firstObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [v10 addObjectsFromArray:v11];
      }
    }

    v14 = [messageCopy objectForKeyedSubscript:IMDCTMessageDictionaryGUIDKey];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [messageCopy objectForKeyedSubscript:IMDRelayLocalMessageDictionaryGUIDKey];
    }

    v18 = v16;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 addObject:v18];
    }

    allObjects = [v10 allObjects];
  }

  else
  {
    allObjects = [v10 allObjects];
  }

  return allObjects;
}

- (id)_handlerForServiceName:(id)name
{
  v22 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (nameCopy)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    copyHandlersForEnumerating = [(IMDRelayPushHandler *)self copyHandlersForEnumerating];
    v6 = [copyHandlersForEnumerating countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(copyHandlersForEnumerating);
          }

          v11 = *(*(&v17 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            service = [v11 service];
            internalName = [service internalName];
            v14 = [internalName isEqualToString:nameCopy];

            if (v14)
            {
              v6 = v11;
              goto LABEL_14;
            }
          }

          v9 = v9 + 1;
        }

        while (v6 != v9);
        v6 = [copyHandlersForEnumerating countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (void)_calculateHandlersForMessage:(id)message messageGUID:(id)d fromIdentifier:(id)identifier command:(id)command completionBlock:(id)block
{
  blockCopy = block;
  identifierCopy = identifier;
  dCopy = d;
  messageCopy = message;
  integerValue = [command integerValue];
  [(IMDRelayPushHandler *)self _calculateHandlersForMatchType:[(IMDRelayPushHandler *)self _listenerMatchTypeForCommand:integerValue message:messageCopy] routingBehaviors:[(IMDRelayPushHandler *)self _routingBehaviorsForCommand:integerValue] message:messageCopy messageGUID:dCopy fromIdentifier:identifierCopy completionBlock:blockCopy];
}

- (id)_messageDictionaryForLocalMessage:(id)message type:(id)type
{
  v21 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  typeCopy = type;
  if (qword_27D8D0048 != -1)
  {
    sub_22B7D8F9C();
  }

  v7 = [qword_27D8D0040 objectForKeyedSubscript:typeCopy];
  if (!v7)
  {
    v8 = messageCopy;
    goto LABEL_7;
  }

  v8 = [messageCopy objectForKeyedSubscript:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_7:
    messageCopy = v8;
    v9 = messageCopy;
    goto LABEL_13;
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 138740739;
      v14 = messageCopy;
      v15 = 2112;
      v16 = typeCopy;
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

- (void)_calculateHandlersForLocalMessage:(id)message userInfo:(id)info completionBlock:(id)block
{
  v8 = IMDRelayLocalMessageDictionaryTypeKey;
  blockCopy = block;
  messageCopy = message;
  v12 = [info objectForKeyedSubscript:v8];
  v11 = [(IMDRelayPushHandler *)self _messageDictionaryForLocalMessage:messageCopy type:v12];

  [(IMDRelayPushHandler *)self _calculateHandlersForMatchType:[(IMDRelayPushHandler *)self _listenerMatchTypeForLocalMessageType:v12 message:v11] routingBehaviors:[(IMDRelayPushHandler *)self _routingBehaviorsForLocalMessageType:v12] message:v11 messageGUID:0 fromIdentifier:0 completionBlock:blockCopy];
}

- (id)_handlersForExplicitServiceWithMessage:(id)message
{
  v18[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = [(IMDRelayPushHandler *)self _serviceNameForMessage:messageCopy];
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
      v17 = messageCopy;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Routing payload to %@ due to explicitly specified service %@, payload=%{sensitive}@", &v12, 0x20u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_calculateHandlersForMatchType:(unint64_t)type routingBehaviors:(unint64_t)behaviors message:(id)message messageGUID:(id)d fromIdentifier:(id)identifier completionBlock:(id)block
{
  v98 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dCopy = d;
  identifierCopy = identifier;
  blockCopy = block;
  selfCopy = self;
  v52 = messageCopy;
  v46 = dCopy;
  v17 = [(IMDRelayPushHandler *)self _guidsForMessage:messageCopy messageGUID:dCopy routingBehaviors:behaviors];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B6AC03C;
  aBlock[3] = &unk_278707CC8;
  v48 = v17;
  v83 = v48;
  selfCopy2 = self;
  behaviorsCopy = behaviors;
  v47 = blockCopy;
  v85 = v47;
  v49 = _Block_copy(aBlock);
  if (type != 1 && (behaviors & 4) != 0)
  {
    copyHandlersForEnumerating = [(IMDRelayPushHandler *)self _handlersForExplicitServiceWithMessage:messageCopy];
    if ([copyHandlersForEnumerating count])
    {
LABEL_4:
      v49[2](v49, copyHandlersForEnumerating);
      goto LABEL_66;
    }
  }

  copyHandlersForEnumerating = [(IMDRelayPushHandler *)self copyHandlersForEnumerating];
  if (type > 1)
  {
    if (type == 2)
    {
      v62 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v72 = 0u;
      v73 = 0u;
      v71 = 0u;
      v70 = 0u;
      copyHandlersForEnumerating = copyHandlersForEnumerating;
      v55 = [copyHandlersForEnumerating countByEnumeratingWithState:&v70 objects:v88 count:16];
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
              objc_enumerationMutation(copyHandlersForEnumerating);
            }

            obja = *(*(&v70 + 1) + 8 * i);
            if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
            {
              v68 = 0u;
              v69 = 0u;
              v66 = 0u;
              v67 = 0u;
              accounts = [obja accounts];
              v30 = [accounts countByEnumeratingWithState:&v66 objects:v87 count:16];
              if (v30)
              {
                v31 = *v67;
                do
                {
                  for (j = 0; j != v30; ++j)
                  {
                    if (*v67 != v31)
                    {
                      objc_enumerationMutation(accounts);
                    }

                    v33 = *(*(&v66 + 1) + 8 * j);
                    v34 = MEMORY[0x277D1A898];
                    v35 = +[IMDAccountController sharedInstance];
                    accounts2 = [v35 accounts];
                    LODWORD(v34) = [v34 isAccountUsableForSendingWithAllAccounts:accounts2 account:v33];

                    if (v34)
                    {
                      [v62 addObject:v33];
                    }
                  }

                  v30 = [accounts countByEnumeratingWithState:&v66 objects:v87 count:16];
                }

                while (v30);
              }

              v37 = [obja chatForOutgoingMessage:v52 fromIdentifier:identifierCopy isInProxyMode:0 createIfNotExists:0];
              if ([v37 isNewerThan:v53])
              {
                v38 = v37;

                v53 = v38;
              }
            }
          }

          v55 = [copyHandlersForEnumerating countByEnumeratingWithState:&v70 objects:v88 count:16];
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
      v63[4] = selfCopy;
      v64 = v52;
      v65 = v49;
      [v42 calculateServiceForSendingToHandles:v41 accounts:v62 context:v44 completionBlock:v63];
    }

    else if (type == 3)
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
            v22 = copyHandlersForEnumerating;
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
    if (!type)
    {
      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 138739971;
          v90 = messageCopy;
          _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Broadcasting payload to all registered listeners, payload=%{sensitive}@", buf, 0xCu);
        }
      }

      goto LABEL_4;
    }

    if (type == 1)
    {
      v18 = [(IMDRelayPushHandler *)self _handlersForExplicitServiceWithMessage:messageCopy];
      v49[2](v49, v18);
    }
  }

LABEL_66:

  v45 = *MEMORY[0x277D85DE8];
}

- (BOOL)_messageRequestsServiceForSendingBypass:(id)bypass
{
  v3 = [bypass objectForKeyedSubscript:IMDRelayMessageItemDictionarySkipServiceForSendingKey];
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && ([v3 BOOLValue] & 1) != 0;

  return v4;
}

- (unint64_t)_listenerMatchTypeForCommand:(int64_t)command message:(id)message
{
  messageCopy = message;
  v7 = command - 101;
  if ((command - 101) > 0x30)
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
      mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
      if ([mEMORY[0x277D07DB0] deviceType] == 2)
      {
        v10 = [(IMDRelayPushHandler *)self _messageRequestsServiceForSendingBypass:messageCopy];

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

- (unint64_t)_listenerMatchTypeForLocalMessageType:(id)type message:(id)message
{
  typeCopy = type;
  messageCopy = message;
  if (qword_27D8D0060 != -1)
  {
    sub_22B7D8FB0();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    integerValue = 0;
    goto LABEL_10;
  }

  v8 = [qword_27D8D0050 objectForKeyedSubscript:typeCopy];
  integerValue = [v8 integerValue];

  mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
  if ([mEMORY[0x277D07DB0] deviceType] != 2)
  {
    goto LABEL_8;
  }

  v11 = [(IMDRelayPushHandler *)self _messageRequestsServiceForSendingBypass:messageCopy];

  if (!v11)
  {
    v12 = [qword_27D8D0058 objectForKeyedSubscript:typeCopy];
    mEMORY[0x277D07DB0] = v12;
    if (v12)
    {
      integerValue = [v12 integerValue];
    }

LABEL_8:
  }

LABEL_10:

  return integerValue;
}

- (unint64_t)_routingBehaviorsForCommand:(int64_t)command
{
  result = 0;
  v4 = command - 101;
  if ((command - 101) <= 0x30)
  {
    if (((1 << v4) & 0x1400000400003) != 0)
    {
      return 2;
    }

    else if (((1 << v4) & 0xD8000000000) != 0)
    {
      return 8;
    }

    else if (command == 146)
    {
      return 6;
    }
  }

  return result;
}

- (unint64_t)_routingBehaviorsForLocalMessageType:(id)type
{
  typeCopy = type;
  if (qword_27D8D0070 != -1)
  {
    sub_22B7D8FC4();
  }

  v4 = [qword_27D8D0068 objectForKeyedSubscript:typeCopy];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

@end