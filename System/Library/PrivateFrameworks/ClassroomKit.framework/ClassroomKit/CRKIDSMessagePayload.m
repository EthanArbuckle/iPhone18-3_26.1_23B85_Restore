@interface CRKIDSMessagePayload
+ (id)instanceWithDictionary:(id)a3;
- (CRKIDSMessagePayload)initWithMessageContent:(id)a3 messageMetadata:(id)a4;
- (NSDictionary)dictionaryValue;
@end

@implementation CRKIDSMessagePayload

- (CRKIDSMessagePayload)initWithMessageContent:(id)a3 messageMetadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CRKIDSMessagePayload;
  v8 = [(CRKIDSMessagePayload *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    messageContent = v8->_messageContent;
    v8->_messageContent = v9;

    objc_storeStrong(&v8->_messageMetadata, a4);
  }

  return v8;
}

- (NSDictionary)dictionaryValue
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"MessageContent";
  v3 = [(CRKIDSMessagePayload *)self messageContent];
  v8[1] = @"MessageMetadata";
  v9[0] = v3;
  v4 = [(CRKIDSMessagePayload *)self messageMetadata];
  v5 = [v4 dictionaryValue];
  v9[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

+ (id)instanceWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"MessageContent"];
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

  v7 = [v3 objectForKeyedSubscript:@"MessageMetadata"];

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