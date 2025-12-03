@interface DRSTaskingSystemMessage
+ (BOOL)isJSONDictForClass:(id)class;
- (BOOL)_isEqualToMessage:(id)message;
- (BOOL)isEqual:(id)equal;
- (DRSTaskingSystemMessage)initWithVersion:(id)version messageUUID:(id)d dateBroadcast:(id)broadcast dateReceived:(id)received;
- (NSString)messageType;
- (id)_mutableJSONDictRepresentation;
- (id)debugDescription;
@end

@implementation DRSTaskingSystemMessage

+ (BOOL)isJSONDictForClass:(id)class
{
  if (!class)
  {
    return 0;
  }

  v4 = [class objectForKeyedSubscript:@"type"];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    messageType = [self messageType];
    v6 = [v4 isEqualToString:messageType];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)messageType
{
  v2 = objc_opt_class();

  return [v2 messageType];
}

- (id)_mutableJSONDictRepresentation
{
  v18[5] = *MEMORY[0x277D85DE8];
  v17[0] = @"version";
  version = [(DRSTaskingSystemMessage *)self version];
  v18[0] = version;
  v17[1] = @"type";
  messageType = [objc_opt_class() messageType];
  v18[1] = messageType;
  v17[2] = kDRSTaskingSystemMessage_messageUUIDKey;
  messageUUID = [(DRSTaskingSystemMessage *)self messageUUID];
  uUIDString = [messageUUID UUIDString];
  v18[2] = uUIDString;
  v17[3] = kDRSTaskingSystemMessage_DateReceivedKey;
  v7 = MEMORY[0x277CCABB0];
  dateReceived = [(DRSTaskingSystemMessage *)self dateReceived];
  [dateReceived timeIntervalSince1970];
  v9 = [v7 numberWithDouble:?];
  v18[3] = v9;
  v17[4] = kDRSTaskingSystemMessage_DateBroadcastKey;
  v10 = MEMORY[0x277CCABB0];
  dateBroadcast = [(DRSTaskingSystemMessage *)self dateBroadcast];
  [dateBroadcast timeIntervalSince1970];
  v12 = [v10 numberWithDouble:?];
  v18[4] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
  v14 = [v13 mutableCopy];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)debugDescription
{
  jsonDictRepresentation = [(DRSTaskingSystemMessage *)self jsonDictRepresentation];
  v3 = [jsonDictRepresentation description];

  return v3;
}

- (DRSTaskingSystemMessage)initWithVersion:(id)version messageUUID:(id)d dateBroadcast:(id)broadcast dateReceived:(id)received
{
  v27 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  dCopy = d;
  broadcastCopy = broadcast;
  receivedCopy = received;
  if (!dCopy)
  {
    v18 = DPLogHandle_TaskingMessageError();
    if (!os_signpost_enabled(v18))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v19 = "nil UUID";
LABEL_18:
    v20 = v18;
    v21 = 2;
    goto LABEL_19;
  }

  if (!versionCopy)
  {
    v18 = DPLogHandle_TaskingMessageError();
    if (!os_signpost_enabled(v18))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v19 = "nil version";
    goto LABEL_18;
  }

  if (![(DRSTaskingSystemMessage *)self _versionIsSupported:versionCopy])
  {
    v18 = DPLogHandle_TaskingMessageError();
    if (os_signpost_enabled(v18))
    {
      *buf = 138543362;
      v26 = versionCopy;
      v19 = "Unsupported version %{public}@";
      v20 = v18;
      v21 = 12;
LABEL_19:
      _os_signpost_emit_with_name_impl(&dword_232906000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DRSTaskingSystemMessageFailedInit", v19, buf, v21);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  if (!broadcastCopy)
  {
    v18 = DPLogHandle_TaskingMessageError();
    if (os_signpost_enabled(v18))
    {
      *buf = 0;
      v19 = "nil dateBroadcast";
      goto LABEL_18;
    }

LABEL_20:

    selfCopy = 0;
    goto LABEL_21;
  }

  if (!receivedCopy)
  {
    receivedCopy = [MEMORY[0x277CBEAA8] date];
  }

  v24.receiver = self;
  v24.super_class = DRSTaskingSystemMessage;
  v15 = [(DRSTaskingSystemMessage *)&v24 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_version, version);
    objc_storeStrong(p_isa + 2, d);
    objc_storeStrong(p_isa + 4, broadcast);
    objc_storeStrong(p_isa + 3, receivedCopy);
  }

  self = p_isa;
  selfCopy = self;
LABEL_21:

  v22 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (BOOL)_isEqualToMessage:(id)message
{
  messageCopy = message;
  v5 = messageCopy;
  if (!messageCopy)
  {
    goto LABEL_5;
  }

  if (messageCopy == self)
  {
    v18 = 1;
    goto LABEL_7;
  }

  dateBroadcast = [(DRSTaskingSystemMessage *)self dateBroadcast];
  [dateBroadcast timeIntervalSince1970];
  v8 = v7;
  dateBroadcast2 = [(DRSTaskingSystemMessage *)v5 dateBroadcast];
  [dateBroadcast2 timeIntervalSince1970];
  v11 = v10;

  if (v8 != v11)
  {
    goto LABEL_5;
  }

  dateReceived = [(DRSTaskingSystemMessage *)self dateReceived];
  [dateReceived timeIntervalSince1970];
  v14 = v13;
  dateReceived2 = [(DRSTaskingSystemMessage *)v5 dateReceived];
  [dateReceived2 timeIntervalSince1970];
  v17 = v16;

  if (v14 == v17)
  {
    version = [(DRSTaskingSystemMessage *)self version];
    version2 = [(DRSTaskingSystemMessage *)v5 version];
    if ([version isEqualToString:version2])
    {
      messageUUID = [(DRSTaskingSystemMessage *)self messageUUID];
      messageUUID2 = [(DRSTaskingSystemMessage *)v5 messageUUID];
      v18 = [messageUUID isEqual:messageUUID2];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
LABEL_5:
    v18 = 0;
  }

LABEL_7:

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(DRSTaskingSystemMessage *)self _isEqualToMessage:equalCopy];

  return v5;
}

@end