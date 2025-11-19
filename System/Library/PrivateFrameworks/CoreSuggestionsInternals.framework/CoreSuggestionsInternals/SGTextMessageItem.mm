@interface SGTextMessageItem
- (BOOL)isEqualToConversationTurn:(id)a3;
- (SGTextMessageItem)initWithCoder:(id)a3;
- (SGTextMessageItem)initWithTextMessage:(id)a3 detectedData:(id)a4;
@end

@implementation SGTextMessageItem

- (BOOL)isEqualToConversationTurn:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"SGTextMessageConversationTracker.m" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"[otherItem isKindOfClass:[SGTextMessageItem class]]"}];
  }

  text = self->_text;
  if ((text == v5[2] || [(NSString *)text isEqual:?]) && ((senderID = self->_senderID, senderID == v5[3]) || [(NSString *)senderID isEqual:?]))
  {
    timestamp = self->_timestamp;
    if (timestamp == v5[4])
    {
      v9 = 1;
    }

    else
    {
      v9 = [(NSDate *)timestamp isEqual:?];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (SGTextMessageItem)initWithCoder:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"message"];
  v6 = [v5 textContent];

  if (v6)
  {
    self = [(SGTextMessageItem *)self initWithTextMessage:v5];
    v7 = self;
  }

  else
  {
    v8 = sgLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_fault_impl(&dword_231E60000, v8, OS_LOG_TYPE_FAULT, "Error decoding null message.textContent in %@:", &v11, 0xCu);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      abort();
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (SGTextMessageItem)initWithTextMessage:(id)a3 detectedData:(id)a4
{
  v8 = a3;
  v9 = a4;
  v24.receiver = self;
  v24.super_class = SGTextMessageItem;
  v10 = [(SGTextMessageItem *)&v24 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_message, a3);
    v12 = [(SGMessage *)v11->_message textContent];
    text = v11->_text;
    v11->_text = v12;

    if (!v11->_text)
    {
      v23 = [MEMORY[0x277CCA890] currentHandler];
      [v23 handleFailureInMethod:a2 object:v11 file:@"SGTextMessageConversationTracker.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"_text"}];
    }

    v14 = [v8 conversationIdentifier];
    senderID = v11->_senderID;
    v11->_senderID = v14;

    v16 = [v8 date];
    timestamp = v11->_timestamp;
    v11->_timestamp = v16;

    v18 = [MEMORY[0x277D3A248] detectLanguageFromText:v11->_text];
    language = v11->_language;
    v11->_language = v18;

    v20 = [v9 copy];
    detectedData = v11->_detectedData;
    v11->_detectedData = v20;
  }

  return v11;
}

@end