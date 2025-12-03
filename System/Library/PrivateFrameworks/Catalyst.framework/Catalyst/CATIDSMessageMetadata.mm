@interface CATIDSMessageMetadata
+ (id)instanceWithDictionary:(id)dictionary;
- (CATIDSMessageMetadata)initWithMessageIdentifier:(id)identifier messageType:(int64_t)type messagingVersion:(int64_t)version;
- (CATIDSMessageMetadata)initWithMessageType:(int64_t)type;
- (NSDictionary)dictionaryValue;
@end

@implementation CATIDSMessageMetadata

- (CATIDSMessageMetadata)initWithMessageIdentifier:(id)identifier messageType:(int64_t)type messagingVersion:(int64_t)version
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = CATIDSMessageMetadata;
  v10 = [(CATIDSMessageMetadata *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_messageIdentifier, identifier);
    v11->_messageType = type;
    v11->_messagingVersion = version;
  }

  return v11;
}

- (CATIDSMessageMetadata)initWithMessageType:(int64_t)type
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  v6 = [(CATIDSMessageMetadata *)self initWithMessageIdentifier:uUID messageType:type messagingVersion:2];

  return v6;
}

- (NSDictionary)dictionaryValue
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10[0] = @"MessageIdentifier";
  messageIdentifier = [(CATIDSMessageMetadata *)self messageIdentifier];
  uUIDString = [messageIdentifier UUIDString];
  v11[0] = uUIDString;
  v10[1] = @"ContentType";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CATIDSMessageMetadata messageType](self, "messageType")}];
  v11[1] = v5;
  v10[2] = @"MessagingVersion";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CATIDSMessageMetadata messagingVersion](self, "messagingVersion")}];
  v10[3] = @"MessageType";
  v11[2] = v6;
  v11[3] = &unk_28560C228;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)instanceWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy cat_uuidForKey:@"MessageIdentifier"];
  v5 = [dictionaryCopy objectForKeyedSubscript:@"ContentType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [dictionaryCopy objectForKeyedSubscript:@"MessagingVersion"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = 0;
  if (v4)
  {
    if (v7 && v10 != 0)
    {
      v11 = -[CATIDSMessageMetadata initWithMessageIdentifier:messageType:messagingVersion:]([CATIDSMessageMetadata alloc], "initWithMessageIdentifier:messageType:messagingVersion:", v4, [v7 integerValue], objc_msgSend(v10, "unsignedIntegerValue"));
    }
  }

  return v11;
}

@end