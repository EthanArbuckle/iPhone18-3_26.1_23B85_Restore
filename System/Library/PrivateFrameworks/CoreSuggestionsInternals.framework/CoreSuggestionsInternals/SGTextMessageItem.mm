@interface SGTextMessageItem
- (BOOL)isEqualToConversationTurn:(id)turn;
- (SGTextMessageItem)initWithCoder:(id)coder;
- (SGTextMessageItem)initWithTextMessage:(id)message detectedData:(id)data;
@end

@implementation SGTextMessageItem

- (BOOL)isEqualToConversationTurn:(id)turn
{
  turnCopy = turn;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGTextMessageConversationTracker.m" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"[otherItem isKindOfClass:[SGTextMessageItem class]]"}];
  }

  text = self->_text;
  if ((text == turnCopy[2] || [(NSString *)text isEqual:?]) && ((senderID = self->_senderID, senderID == turnCopy[3]) || [(NSString *)senderID isEqual:?]))
  {
    timestamp = self->_timestamp;
    if (timestamp == turnCopy[4])
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

- (SGTextMessageItem)initWithCoder:(id)coder
{
  v13 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"message"];
  textContent = [v5 textContent];

  if (textContent)
  {
    self = [(SGTextMessageItem *)self initWithTextMessage:v5];
    selfCopy = self;
  }

  else
  {
    v8 = sgLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v11 = 138412290;
      v12 = coderCopy;
      _os_log_fault_impl(&dword_231E60000, v8, OS_LOG_TYPE_FAULT, "Error decoding null message.textContent in %@:", &v11, 0xCu);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      abort();
    }

    selfCopy = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (SGTextMessageItem)initWithTextMessage:(id)message detectedData:(id)data
{
  messageCopy = message;
  dataCopy = data;
  v24.receiver = self;
  v24.super_class = SGTextMessageItem;
  v10 = [(SGTextMessageItem *)&v24 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_message, message);
    textContent = [(SGMessage *)v11->_message textContent];
    text = v11->_text;
    v11->_text = textContent;

    if (!v11->_text)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v11 file:@"SGTextMessageConversationTracker.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"_text"}];
    }

    conversationIdentifier = [messageCopy conversationIdentifier];
    senderID = v11->_senderID;
    v11->_senderID = conversationIdentifier;

    date = [messageCopy date];
    timestamp = v11->_timestamp;
    v11->_timestamp = date;

    v18 = [MEMORY[0x277D3A248] detectLanguageFromText:v11->_text];
    language = v11->_language;
    v11->_language = v18;

    v20 = [dataCopy copy];
    detectedData = v11->_detectedData;
    v11->_detectedData = v20;
  }

  return v11;
}

@end