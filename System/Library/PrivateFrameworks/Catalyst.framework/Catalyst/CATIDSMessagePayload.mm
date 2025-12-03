@interface CATIDSMessagePayload
+ (id)instanceWithDictionary:(id)dictionary;
- (CATIDSMessagePayload)initWithMessage:(id)message;
- (CATIDSMessagePayload)initWithMetadata:(id)metadata message:(id)message;
- (NSDictionary)dictionaryValue;
- (id)messageContent;
@end

@implementation CATIDSMessagePayload

- (CATIDSMessagePayload)initWithMessage:(id)message
{
  messageCopy = message;
  v5 = -[CATIDSMessageMetadata initWithMessageType:]([CATIDSMessageMetadata alloc], "initWithMessageType:", [messageCopy messageType]);
  v6 = [(CATIDSMessagePayload *)self initWithMetadata:v5 message:messageCopy];

  return v6;
}

- (CATIDSMessagePayload)initWithMetadata:(id)metadata message:(id)message
{
  metadataCopy = metadata;
  messageCopy = message;
  v12.receiver = self;
  v12.super_class = CATIDSMessagePayload;
  v9 = [(CATIDSMessagePayload *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_metadata, metadata);
    objc_storeStrong(&v10->_message, message);
  }

  return v10;
}

- (NSDictionary)dictionaryValue
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"MessageMetadata";
  metadata = [(CATIDSMessagePayload *)self metadata];
  dictionaryValue = [metadata dictionaryValue];
  v9[1] = @"MessageContent";
  v10[0] = dictionaryValue;
  messageContent = [(CATIDSMessagePayload *)self messageContent];
  v10[1] = messageContent;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)instanceWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"MessageMetadata"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [dictionaryCopy objectForKeyedSubscript:@"MessageContent"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = 0;
  if (v6)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = [CATIDSMessageMetadata instanceWithDictionary:v6];
    v13 = v12;
    if (v12)
    {
      messageType = [v12 messageType];
      if (messageType == 101)
      {
        v15 = off_278DA6BD0;
      }

      else
      {
        if (messageType != 102)
        {
          goto LABEL_18;
        }

        v15 = off_278DA6B80;
      }

      v16 = [(__objc2_class *)*v15 instanceWithDictionary:v9];
      if (v16)
      {
        v17 = v16;
        v10 = [[CATIDSMessagePayload alloc] initWithMetadata:v13 message:v16];

LABEL_19:
        goto LABEL_20;
      }
    }

LABEL_18:
    v10 = 0;
    goto LABEL_19;
  }

LABEL_20:

  return v10;
}

- (id)messageContent
{
  message = [(CATIDSMessagePayload *)self message];
  dictionaryValue = [message dictionaryValue];
  v4 = [dictionaryValue mutableCopy];

  [v4 setObject:@"Catalyst" forKeyedSubscript:@"Yo"];
  v5 = [v4 copy];

  return v5;
}

@end