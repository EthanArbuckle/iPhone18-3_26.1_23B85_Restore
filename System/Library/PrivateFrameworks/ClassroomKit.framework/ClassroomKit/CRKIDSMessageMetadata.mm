@interface CRKIDSMessageMetadata
+ (CRKIDSMessageMetadata)metadataWithMessageType:(int64_t)type;
+ (id)instanceWithDictionary:(id)dictionary;
- (CRKIDSMessageMetadata)initWithMessageIdentifier:(id)identifier messageType:(int64_t)type messagingVersion:(int64_t)version;
- (NSDictionary)dictionaryValue;
@end

@implementation CRKIDSMessageMetadata

- (CRKIDSMessageMetadata)initWithMessageIdentifier:(id)identifier messageType:(int64_t)type messagingVersion:(int64_t)version
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = CRKIDSMessageMetadata;
  v10 = [(CRKIDSMessageMetadata *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_messageIdentifier, identifier);
    v11->_messageType = type;
    v11->_messagingVersion = version;
  }

  return v11;
}

+ (CRKIDSMessageMetadata)metadataWithMessageType:(int64_t)type
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  v6 = [[self alloc] initWithMessageIdentifier:uUID messageType:type messagingVersion:1];

  return v6;
}

- (NSDictionary)dictionaryValue
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"MessageIdentifier";
  messageIdentifier = [(CRKIDSMessageMetadata *)self messageIdentifier];
  uUIDString = [messageIdentifier UUIDString];
  v10[0] = uUIDString;
  v9[1] = @"MessageType";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CRKIDSMessageMetadata messageType](self, "messageType")}];
  v10[1] = v5;
  v9[2] = @"MessagingVersion";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CRKIDSMessageMetadata messagingVersion](self, "messagingVersion")}];
  v10[2] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

+ (id)instanceWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"MessageType"];
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

  v8 = [dictionaryCopy objectForKeyedSubscript:@"MessageIdentifier"];
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

  v11 = [dictionaryCopy objectForKeyedSubscript:@"MessagingVersion"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = 0;
  if (v7 && v10 && v13)
  {
    integerValue = [v7 integerValue];
    v16 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v10];
    integerValue2 = [v13 integerValue];
    v14 = 0;
    if (v16 && integerValue <= 2)
    {
      v14 = [[self alloc] initWithMessageIdentifier:v16 messageType:integerValue messagingVersion:integerValue2];
    }
  }

  return v14;
}

@end