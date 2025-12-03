@interface IMServiceReachabilityContext
- (IMServiceReachabilityContext)initWithCoder:(id)coder;
- (id)_signature;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createDictionary;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMServiceReachabilityContext

- (void)encodeWithCoder:(id)coder
{
  chatIdentifier = self->_chatIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:chatIdentifier forKey:@"ci"];
  [coderCopy encodeInteger:self->_chatStyle forKey:@"cs"];
  [coderCopy encodeObject:self->_senderLastAddressedHandle forKey:@"slah"];
  [coderCopy encodeObject:self->_senderLastAddressedSIMID forKey:@"slas"];
  [coderCopy encodeObject:self->_lastUsedServiceName forKey:@"lus"];
  [coderCopy encodeObject:self->_serviceOfLastMessage forKey:@"slm"];
  [coderCopy encodeBool:self->_conversationWasDowngraded forKey:@"cd"];
  [coderCopy encodeBool:self->_hasConversationHistory forKey:@"hh"];
  [coderCopy encodeBool:self->_shouldForceServerStatusRefresh forKey:@"fr"];
  [coderCopy encodeBool:self->_forceMMS forKey:@"fm"];
  [coderCopy encodeBool:self->_isForPendingConversation forKey:@"pc"];
  [coderCopy encodeBool:self->_requestPersistentMenu forKey:@"cbpm"];
  [coderCopy encodeBool:self->_requestBrandInfo forKey:@"cbbi"];
}

- (IMServiceReachabilityContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = IMServiceReachabilityContext;
  v5 = [(IMServiceReachabilityContext *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ci"];
    chatIdentifier = v5->_chatIdentifier;
    v5->_chatIdentifier = v6;

    v5->_chatStyle = [coderCopy decodeIntegerForKey:@"cs"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"slah"];
    senderLastAddressedHandle = v5->_senderLastAddressedHandle;
    v5->_senderLastAddressedHandle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"slas"];
    senderLastAddressedSIMID = v5->_senderLastAddressedSIMID;
    v5->_senderLastAddressedSIMID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lus"];
    lastUsedServiceName = v5->_lastUsedServiceName;
    v5->_lastUsedServiceName = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"slm"];
    serviceOfLastMessage = v5->_serviceOfLastMessage;
    v5->_serviceOfLastMessage = v14;

    v5->_conversationWasDowngraded = [coderCopy decodeBoolForKey:@"cd"];
    v5->_hasConversationHistory = [coderCopy decodeBoolForKey:@"hh"];
    v5->_shouldForceServerStatusRefresh = [coderCopy decodeBoolForKey:@"fr"];
    v5->_forceMMS = [coderCopy decodeBoolForKey:@"fm"];
    v5->_isForPendingConversation = [coderCopy decodeBoolForKey:@"pc"];
    v5->_requestPersistentMenu = [coderCopy decodeBoolForKey:@"cbpm"];
    v5->_requestBrandInfo = [coderCopy decodeBoolForKey:@"cbbi"];
  }

  return v5;
}

- (id)createDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  chatIdentifier = [(IMServiceReachabilityContext *)self chatIdentifier];

  if (chatIdentifier)
  {
    chatIdentifier2 = [(IMServiceReachabilityContext *)self chatIdentifier];
    [v3 setObject:chatIdentifier2 forKeyedSubscript:@"ci"];
  }

  if ([(IMServiceReachabilityContext *)self chatStyle])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[IMServiceReachabilityContext chatStyle](self, "chatStyle")}];
    [v3 setObject:v6 forKeyedSubscript:@"cs"];
  }

  senderLastAddressedHandle = [(IMServiceReachabilityContext *)self senderLastAddressedHandle];

  if (senderLastAddressedHandle)
  {
    senderLastAddressedHandle2 = [(IMServiceReachabilityContext *)self senderLastAddressedHandle];
    [v3 setObject:senderLastAddressedHandle2 forKeyedSubscript:@"slah"];
  }

  senderLastAddressedSIMID = [(IMServiceReachabilityContext *)self senderLastAddressedSIMID];

  if (senderLastAddressedSIMID)
  {
    senderLastAddressedSIMID2 = [(IMServiceReachabilityContext *)self senderLastAddressedSIMID];
    [v3 setObject:senderLastAddressedSIMID2 forKeyedSubscript:@"slas"];
  }

  lastUsedServiceName = [(IMServiceReachabilityContext *)self lastUsedServiceName];

  if (lastUsedServiceName)
  {
    lastUsedServiceName2 = [(IMServiceReachabilityContext *)self lastUsedServiceName];
    [v3 setObject:lastUsedServiceName2 forKeyedSubscript:@"lus"];
  }

  serviceOfLastMessage = [(IMServiceReachabilityContext *)self serviceOfLastMessage];

  if (serviceOfLastMessage)
  {
    serviceOfLastMessage2 = [(IMServiceReachabilityContext *)self serviceOfLastMessage];
    [v3 setObject:serviceOfLastMessage2 forKeyedSubscript:@"slm"];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(IMServiceReachabilityContext);
  chatIdentifier = [(IMServiceReachabilityContext *)self chatIdentifier];
  [(IMServiceReachabilityContext *)v4 setChatIdentifier:chatIdentifier];

  [(IMServiceReachabilityContext *)v4 setChatStyle:[(IMServiceReachabilityContext *)self chatStyle]];
  senderLastAddressedHandle = [(IMServiceReachabilityContext *)self senderLastAddressedHandle];
  [(IMServiceReachabilityContext *)v4 setSenderLastAddressedHandle:senderLastAddressedHandle];

  senderLastAddressedSIMID = [(IMServiceReachabilityContext *)self senderLastAddressedSIMID];
  [(IMServiceReachabilityContext *)v4 setSenderLastAddressedSIMID:senderLastAddressedSIMID];

  lastUsedServiceName = [(IMServiceReachabilityContext *)self lastUsedServiceName];
  [(IMServiceReachabilityContext *)v4 setLastUsedServiceName:lastUsedServiceName];

  serviceOfLastMessage = [(IMServiceReachabilityContext *)self serviceOfLastMessage];
  [(IMServiceReachabilityContext *)v4 setServiceOfLastMessage:serviceOfLastMessage];

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
  chatIdentifier = [(IMServiceReachabilityContext *)self chatIdentifier];
  chatStyle = [(IMServiceReachabilityContext *)self chatStyle];
  senderLastAddressedHandle = [(IMServiceReachabilityContext *)self senderLastAddressedHandle];
  senderLastAddressedSIMID = [(IMServiceReachabilityContext *)self senderLastAddressedSIMID];
  lastUsedServiceName = [(IMServiceReachabilityContext *)self lastUsedServiceName];
  serviceOfLastMessage = [(IMServiceReachabilityContext *)self serviceOfLastMessage];
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

  v12 = [v20 stringWithFormat:@"<%@ %p [chatIdentifier: %@ style: %c senderLastAddressedHandle: %@ SIMID: %@ lastUsedService: %@ serviceOfLastMessage: %@ wasDowngraded: %@ hasHistory: %@ shouldForceRefresh: %@ forceMMS: %@ isForPendingConversation: %@ requestPersistentMenu: %@ requestBrandInfo: %@]>", v19, self, chatIdentifier, chatStyle, senderLastAddressedHandle, senderLastAddressedSIMID, lastUsedServiceName, serviceOfLastMessage, v14, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (id)_signature
{
  v3 = MEMORY[0x1E696AEC0];
  senderLastAddressedHandle = [(IMServiceReachabilityContext *)self senderLastAddressedHandle];
  senderLastAddressedSIMID = [(IMServiceReachabilityContext *)self senderLastAddressedSIMID];
  v6 = [v3 stringWithFormat:@"%@%@%b%b%b%b%b", senderLastAddressedHandle, senderLastAddressedSIMID, -[IMServiceReachabilityContext shouldForceServerStatusRefresh](self, "shouldForceServerStatusRefresh"), -[IMServiceReachabilityContext forceMMS](self, "forceMMS"), -[IMServiceReachabilityContext isForPendingConversation](self, "isForPendingConversation"), -[IMServiceReachabilityContext requestPersistentMenu](self, "requestPersistentMenu"), -[IMServiceReachabilityContext requestBrandInfo](self, "requestBrandInfo")];

  return v6;
}

@end