@interface CATIDSMessageMetadata
+ (id)instanceWithDictionary:(id)a3;
- (CATIDSMessageMetadata)initWithMessageIdentifier:(id)a3 messageType:(int64_t)a4 messagingVersion:(int64_t)a5;
- (CATIDSMessageMetadata)initWithMessageType:(int64_t)a3;
- (NSDictionary)dictionaryValue;
@end

@implementation CATIDSMessageMetadata

- (CATIDSMessageMetadata)initWithMessageIdentifier:(id)a3 messageType:(int64_t)a4 messagingVersion:(int64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = CATIDSMessageMetadata;
  v10 = [(CATIDSMessageMetadata *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_messageIdentifier, a3);
    v11->_messageType = a4;
    v11->_messagingVersion = a5;
  }

  return v11;
}

- (CATIDSMessageMetadata)initWithMessageType:(int64_t)a3
{
  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = [(CATIDSMessageMetadata *)self initWithMessageIdentifier:v5 messageType:a3 messagingVersion:2];

  return v6;
}

- (NSDictionary)dictionaryValue
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10[0] = @"MessageIdentifier";
  v3 = [(CATIDSMessageMetadata *)self messageIdentifier];
  v4 = [v3 UUIDString];
  v11[0] = v4;
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

+ (id)instanceWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 cat_uuidForKey:@"MessageIdentifier"];
  v5 = [v3 objectForKeyedSubscript:@"ContentType"];
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

  v8 = [v3 objectForKeyedSubscript:@"MessagingVersion"];

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