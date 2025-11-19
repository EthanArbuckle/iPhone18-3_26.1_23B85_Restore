@interface IMServiceReachabilityContext
- (IMServiceReachabilityContext)initWithCoder:(id)a3;
- (id)_signature;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createDictionary;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IMServiceReachabilityContext

- (void)encodeWithCoder:(id)a3
{
  chatIdentifier = self->_chatIdentifier;
  v5 = a3;
  [v5 encodeObject:chatIdentifier forKey:@"ci"];
  [v5 encodeInteger:self->_chatStyle forKey:@"cs"];
  [v5 encodeObject:self->_senderLastAddressedHandle forKey:@"slah"];
  [v5 encodeObject:self->_senderLastAddressedSIMID forKey:@"slas"];
  [v5 encodeObject:self->_lastUsedServiceName forKey:@"lus"];
  [v5 encodeObject:self->_serviceOfLastMessage forKey:@"slm"];
  [v5 encodeBool:self->_conversationWasDowngraded forKey:@"cd"];
  [v5 encodeBool:self->_hasConversationHistory forKey:@"hh"];
  [v5 encodeBool:self->_shouldForceServerStatusRefresh forKey:@"fr"];
  [v5 encodeBool:self->_forceMMS forKey:@"fm"];
  [v5 encodeBool:self->_isForPendingConversation forKey:@"pc"];
  [v5 encodeBool:self->_requestPersistentMenu forKey:@"cbpm"];
  [v5 encodeBool:self->_requestBrandInfo forKey:@"cbbi"];
}

- (IMServiceReachabilityContext)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = IMServiceReachabilityContext;
  v5 = [(IMServiceReachabilityContext *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ci"];
    chatIdentifier = v5->_chatIdentifier;
    v5->_chatIdentifier = v6;

    v5->_chatStyle = [v4 decodeIntegerForKey:@"cs"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"slah"];
    senderLastAddressedHandle = v5->_senderLastAddressedHandle;
    v5->_senderLastAddressedHandle = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"slas"];
    senderLastAddressedSIMID = v5->_senderLastAddressedSIMID;
    v5->_senderLastAddressedSIMID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lus"];
    lastUsedServiceName = v5->_lastUsedServiceName;
    v5->_lastUsedServiceName = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"slm"];
    serviceOfLastMessage = v5->_serviceOfLastMessage;
    v5->_serviceOfLastMessage = v14;

    v5->_conversationWasDowngraded = [v4 decodeBoolForKey:@"cd"];
    v5->_hasConversationHistory = [v4 decodeBoolForKey:@"hh"];
    v5->_shouldForceServerStatusRefresh = [v4 decodeBoolForKey:@"fr"];
    v5->_forceMMS = [v4 decodeBoolForKey:@"fm"];
    v5->_isForPendingConversation = [v4 decodeBoolForKey:@"pc"];
    v5->_requestPersistentMenu = [v4 decodeBoolForKey:@"cbpm"];
    v5->_requestBrandInfo = [v4 decodeBoolForKey:@"cbbi"];
  }

  return v5;
}

- (id)createDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(IMServiceReachabilityContext *)self chatIdentifier];

  if (v4)
  {
    v5 = [(IMServiceReachabilityContext *)self chatIdentifier];
    [v3 setObject:v5 forKeyedSubscript:@"ci"];
  }

  if ([(IMServiceReachabilityContext *)self chatStyle])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[IMServiceReachabilityContext chatStyle](self, "chatStyle")}];
    [v3 setObject:v6 forKeyedSubscript:@"cs"];
  }

  v7 = [(IMServiceReachabilityContext *)self senderLastAddressedHandle];

  if (v7)
  {
    v8 = [(IMServiceReachabilityContext *)self senderLastAddressedHandle];
    [v3 setObject:v8 forKeyedSubscript:@"slah"];
  }

  v9 = [(IMServiceReachabilityContext *)self senderLastAddressedSIMID];

  if (v9)
  {
    v10 = [(IMServiceReachabilityContext *)self senderLastAddressedSIMID];
    [v3 setObject:v10 forKeyedSubscript:@"slas"];
  }

  v11 = [(IMServiceReachabilityContext *)self lastUsedServiceName];

  if (v11)
  {
    v12 = [(IMServiceReachabilityContext *)self lastUsedServiceName];
    [v3 setObject:v12 forKeyedSubscript:@"lus"];
  }

  v13 = [(IMServiceReachabilityContext *)self serviceOfLastMessage];

  if (v13)
  {
    v14 = [(IMServiceReachabilityContext *)self serviceOfLastMessage];
    [v3 setObject:v14 forKeyedSubscript:@"slm"];
  }

  if ([(IMServiceReachabilityContext *)self conversationWasDowngraded])
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[IMServiceReachabilityContext conversationWasDowngraded](self, "conversationWasDowngraded")}];
    [v3 setObject:v15 forKeyedSubscript:@"cd"];
  }

  if ([(IMServiceReachabilityContext *)self hasConversationHistory])
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[IMServiceReachabilityContext hasConversationHistory](self, "hasConversationHistory")}];
    [v3 setObject:v16 forKeyedSubscript:@"hh"];
  }

  if ([(IMServiceReachabilityContext *)self shouldForceServerStatusRefresh])
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[IMServiceReachabilityContext shouldForceServerStatusRefresh](self, "shouldForceServerStatusRefresh")}];
    [v3 setObject:v17 forKeyedSubscript:@"fr"];
  }

  if ([(IMServiceReachabilityContext *)self forceMMS])
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[IMServiceReachabilityContext forceMMS](self, "forceMMS")}];
    [v3 setObject:v18 forKeyedSubscript:@"fm"];
  }

  if ([(IMServiceReachabilityContext *)self isForPendingConversation])
  {
    v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[IMServiceReachabilityContext isForPendingConversation](self, "isForPendingConversation")}];
    [v3 setObject:v19 forKeyedSubscript:@"pc"];
  }

  if ([(IMServiceReachabilityContext *)self requestPersistentMenu])
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[IMServiceReachabilityContext requestPersistentMenu](self, "requestPersistentMenu")}];
    [v3 setObject:v20 forKeyedSubscript:@"cbpm"];
  }

  if ([(IMServiceReachabilityContext *)self requestBrandInfo])
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[IMServiceReachabilityContext requestBrandInfo](self, "requestBrandInfo")}];
    [v3 setObject:v21 forKeyedSubscript:@"cbbi"];
  }

  v22 = [v3 copy];

  return v22;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(IMServiceReachabilityContext);
  v5 = [(IMServiceReachabilityContext *)self chatIdentifier];
  [(IMServiceReachabilityContext *)v4 setChatIdentifier:v5];

  [(IMServiceReachabilityContext *)v4 setChatStyle:[(IMServiceReachabilityContext *)self chatStyle]];
  v6 = [(IMServiceReachabilityContext *)self senderLastAddressedHandle];
  [(IMServiceReachabilityContext *)v4 setSenderLastAddressedHandle:v6];

  v7 = [(IMServiceReachabilityContext *)self senderLastAddressedSIMID];
  [(IMServiceReachabilityContext *)v4 setSenderLastAddressedSIMID:v7];

  v8 = [(IMServiceReachabilityContext *)self lastUsedServiceName];
  [(IMServiceReachabilityContext *)v4 setLastUsedServiceName:v8];

  v9 = [(IMServiceReachabilityContext *)self serviceOfLastMessage];
  [(IMServiceReachabilityContext *)v4 setServiceOfLastMessage:v9];

  [(IMServiceReachabilityContext *)v4 setConversationWasDowngraded:[(IMServiceReachabilityContext *)self conversationWasDowngraded]];
  [(IMServiceReachabilityContext *)v4 setHasConversationHistory:[(IMServiceReachabilityContext *)self hasConversationHistory]];
  [(IMServiceReachabilityContext *)v4 setShouldForceServerStatusRefresh:[(IMServiceReachabilityContext *)self shouldForceServerStatusRefresh]];
  [(IMServiceReachabilityContext *)v4 setForceMMS:[(IMServiceReachabilityContext *)self forceMMS]];
  [(IMServiceReachabilityContext *)v4 setIsForPendingConversation:[(IMServiceReachabilityContext *)self isForPendingConversation]];
  [(IMServiceReachabilityContext *)v4 setRequestPersistentMenu:[(IMServiceReachabilityContext *)self requestPersistentMenu]];
  [(IMServiceReachabilityContext *)v4 setRequestBrandInfo:[(IMServiceReachabilityContext *)self requestBrandInfo]];
  return v4;
}

- (id)description
{
  v20 = MEMORY[0x1E696AEC0];
  v19 = objc_opt_class();
  v18 = [(IMServiceReachabilityContext *)self chatIdentifier];
  v17 = [(IMServiceReachabilityContext *)self chatStyle];
  v16 = [(IMServiceReachabilityContext *)self senderLastAddressedHandle];
  v15 = [(IMServiceReachabilityContext *)self senderLastAddressedSIMID];
  v3 = [(IMServiceReachabilityContext *)self lastUsedServiceName];
  v4 = [(IMServiceReachabilityContext *)self serviceOfLastMessage];
  if ([(IMServiceReachabilityContext *)self conversationWasDowngraded])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v14 = v5;
  if ([(IMServiceReachabilityContext *)self hasConversationHistory])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(IMServiceReachabilityContext *)self shouldForceServerStatusRefresh])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(IMServiceReachabilityContext *)self forceMMS])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(IMServiceReachabilityContext *)self isForPendingConversation])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if ([(IMServiceReachabilityContext *)self requestPersistentMenu])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if ([(IMServiceReachabilityContext *)self requestBrandInfo])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = [v20 stringWithFormat:@"<%@ %p [chatIdentifier: %@ style: %c senderLastAddressedHandle: %@ SIMID: %@ lastUsedService: %@ serviceOfLastMessage: %@ wasDowngraded: %@ hasHistory: %@ shouldForceRefresh: %@ forceMMS: %@ isForPendingConversation: %@ requestPersistentMenu: %@ requestBrandInfo: %@]>", v19, self, v18, v17, v16, v15, v3, v4, v14, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (id)_signature
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(IMServiceReachabilityContext *)self senderLastAddressedHandle];
  v5 = [(IMServiceReachabilityContext *)self senderLastAddressedSIMID];
  v6 = [v3 stringWithFormat:@"%@%@%b%b%b%b%b", v4, v5, -[IMServiceReachabilityContext shouldForceServerStatusRefresh](self, "shouldForceServerStatusRefresh"), -[IMServiceReachabilityContext forceMMS](self, "forceMMS"), -[IMServiceReachabilityContext isForPendingConversation](self, "isForPendingConversation"), -[IMServiceReachabilityContext requestPersistentMenu](self, "requestPersistentMenu"), -[IMServiceReachabilityContext requestBrandInfo](self, "requestBrandInfo")];

  return v6;
}

@end