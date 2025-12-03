@interface CATSharingMessage
+ (id)instanceWithDictionary:(id)dictionary;
- (CATSharingMessage)initWithContentMessage:(id)message;
- (CATSharingMessage)initWithMessageType:(int64_t)type contentDictionary:(id)dictionary;
- (NSDictionary)dictionaryValue;
@end

@implementation CATSharingMessage

- (CATSharingMessage)initWithContentMessage:(id)message
{
  messageCopy = message;
  messageType = [messageCopy messageType];
  dictionaryValue = [messageCopy dictionaryValue];

  v7 = [(CATSharingMessage *)self initWithMessageType:messageType contentDictionary:dictionaryValue];
  return v7;
}

- (CATSharingMessage)initWithMessageType:(int64_t)type contentDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = CATSharingMessage;
  v7 = [(CATSharingMessage *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_messageType = type;
    v9 = [dictionaryCopy copy];
    contentDictionaryValue = v8->_contentDictionaryValue;
    v8->_contentDictionaryValue = v9;
  }

  return v8;
}

- (NSDictionary)dictionaryValue
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"SharingMessageType";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CATSharingMessage messageType](self, "messageType")}];
  v8[1] = @"SharingMessageContent";
  v9[0] = v3;
  contentDictionaryValue = [(CATSharingMessage *)self contentDictionaryValue];
  v9[1] = contentDictionaryValue;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)instanceWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"SharingMessageType"];
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

  integerValue = [v7 integerValue];
  v9 = [dictionaryCopy objectForKeyedSubscript:@"SharingMessageContent"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    v12 = [[self alloc] initWithMessageType:integerValue contentDictionary:v11];
  }

  else
  {
    if (_CATLogGeneral_onceToken_18 != -1)
    {
      +[CATSharingMessage instanceWithDictionary:];
    }

    v13 = _CATLogGeneral_logObj_18;
    if (os_log_type_enabled(_CATLogGeneral_logObj_18, OS_LOG_TYPE_ERROR))
    {
      [(CATSharingMessage *)v13 instanceWithDictionary:self, dictionaryCopy];
    }

    v12 = 0;
  }

  return v12;
}

+ (void)instanceWithDictionary:(uint64_t)a3 .cold.2(void *a1, objc_class *a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = NSStringFromClass(a2);
  v8 = 138543618;
  v9 = v6;
  v10 = 2114;
  v11 = a3;
  _os_log_error_impl(&dword_24329F000, v5, OS_LOG_TYPE_ERROR, "%{public}@ is unable to decode contentDictionary from parent: %{public}@.", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end