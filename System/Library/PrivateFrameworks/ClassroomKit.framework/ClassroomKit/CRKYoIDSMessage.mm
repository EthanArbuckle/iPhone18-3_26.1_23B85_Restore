@interface CRKYoIDSMessage
+ (id)instanceWithDictionary:(id)dictionary;
- (CRKYoIDSMessage)initWithMessage:(id)message;
- (NSDictionary)dictionaryValue;
@end

@implementation CRKYoIDSMessage

- (CRKYoIDSMessage)initWithMessage:(id)message
{
  messageCopy = message;
  v9.receiver = self;
  v9.super_class = CRKYoIDSMessage;
  v5 = [(CRKYoIDSMessage *)&v9 init];
  if (v5)
  {
    v6 = [messageCopy copy];
    message = v5->_message;
    v5->_message = v6;
  }

  return v5;
}

- (NSDictionary)dictionaryValue
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"Yo";
  message = [(CRKYoIDSMessage *)self message];
  v6[0] = message;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)instanceWithDictionary:(id)dictionary
{
  v4 = [dictionary objectForKeyedSubscript:@"Yo"];
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

  if (v6)
  {
    v7 = [[self alloc] initWithMessage:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end