@interface CRKIDSMessagePayload
+ (id)instanceWithDictionary:(id)dictionary;
- (CRKIDSMessagePayload)initWithMessageContent:(id)content messageMetadata:(id)metadata;
- (NSDictionary)dictionaryValue;
@end

@implementation CRKIDSMessagePayload

- (CRKIDSMessagePayload)initWithMessageContent:(id)content messageMetadata:(id)metadata
{
  contentCopy = content;
  metadataCopy = metadata;
  v12.receiver = self;
  v12.super_class = CRKIDSMessagePayload;
  v8 = [(CRKIDSMessagePayload *)&v12 init];
  if (v8)
  {
    v9 = [contentCopy copy];
    messageContent = v8->_messageContent;
    v8->_messageContent = v9;

    objc_storeStrong(&v8->_messageMetadata, metadata);
  }

  return v8;
}

- (NSDictionary)dictionaryValue
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"MessageContent";
  messageContent = [(CRKIDSMessagePayload *)self messageContent];
  v8[1] = @"MessageMetadata";
  v9[0] = messageContent;
  messageMetadata = [(CRKIDSMessagePayload *)self messageMetadata];
  dictionaryValue = [messageMetadata dictionaryValue];
  v9[1] = dictionaryValue;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

+ (id)instanceWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"MessageContent"];
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

  v7 = [dictionaryCopy objectForKeyedSubscript:@"MessageMetadata"];

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
    v12 = [CRKIDSMessageMetadata instanceWithDictionary:v9];
    if (v12)
    {
      v10 = [[CRKIDSMessagePayload alloc] initWithMessageContent:v6 messageMetadata:v12];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end