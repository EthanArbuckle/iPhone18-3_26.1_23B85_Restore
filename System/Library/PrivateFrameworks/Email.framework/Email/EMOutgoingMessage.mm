@interface EMOutgoingMessage
- (EMOutgoingMessage)initWithBuilder:(id)builder;
- (EMOutgoingMessage)initWithCoder:(id)coder;
- (EMOutgoingMessage)initWithMessageData:(id)data;
- (NSString)ef_publicDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMOutgoingMessage

- (EMOutgoingMessage)initWithMessageData:(id)data
{
  dataCopy = data;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__EMOutgoingMessage_initWithMessageData___block_invoke;
  v8[3] = &unk_1E826F060;
  v9 = dataCopy;
  v5 = dataCopy;
  v6 = [(EMOutgoingMessage *)self initWithBuilder:v8];

  return v6;
}

void __41__EMOutgoingMessage_initWithMessageData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setMessageData:*(a1 + 32)];
  [v3 setAction:0];
  [v3 setOriginalMessageID:0];
  [v3 setShouldSign:0];
  [v3 setShouldEncrypt:0];
  [v3 setConversationNotificationLevel:0];
}

- (EMOutgoingMessage)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v7.receiver = self;
  v7.super_class = EMOutgoingMessage;
  v5 = [(EMOutgoingMessage *)&v7 init];
  if (v5)
  {
    builderCopy[2](builderCopy, v5);
  }

  return v5;
}

- (EMOutgoingMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__EMOutgoingMessage_initWithCoder___block_invoke;
  v8[3] = &unk_1E826F060;
  v9 = coderCopy;
  v5 = coderCopy;
  v6 = [(EMOutgoingMessage *)self initWithBuilder:v8];

  return v6;
}

void __35__EMOutgoingMessage_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_messageData"];
  [v5 setMessageData:v3];

  v4 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_originalMessageID"];
  [v5 setOriginalMessageID:v4];

  [v5 setAction:{objc_msgSend(*(a1 + 32), "decodeIntegerForKey:", @"EFPropertyKey_action"}];
  [v5 setShouldSign:{objc_msgSend(*(a1 + 32), "decodeBoolForKey:", @"EFPropertyKey_shouldSign"}];
  [v5 setShouldEncrypt:{objc_msgSend(*(a1 + 32), "decodeBoolForKey:", @"EFPropertyKey_shouldEncrypt"}];
  [v5 setConversationNotificationLevel:{objc_msgSend(*(a1 + 32), "decodeIntegerForKey:", @"EFPropertyKey_conversationNotificationLevel"}];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  messageData = [(EMOutgoingMessage *)self messageData];
  [coderCopy encodeObject:messageData forKey:@"EFPropertyKey_messageData"];

  originalMessageID = [(EMOutgoingMessage *)self originalMessageID];
  [coderCopy encodeObject:originalMessageID forKey:@"EFPropertyKey_originalMessageID"];

  [coderCopy encodeInteger:-[EMOutgoingMessage action](self forKey:{"action"), @"EFPropertyKey_action"}];
  [coderCopy encodeBool:-[EMOutgoingMessage shouldSign](self forKey:{"shouldSign"), @"EFPropertyKey_shouldSign"}];
  [coderCopy encodeBool:-[EMOutgoingMessage shouldEncrypt](self forKey:{"shouldEncrypt"), @"EFPropertyKey_shouldEncrypt"}];
  [coderCopy encodeInteger:-[EMOutgoingMessage conversationNotificationLevel](self forKey:{"conversationNotificationLevel"), @"EFPropertyKey_conversationNotificationLevel"}];
}

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  originalMessageID = [(EMOutgoingMessage *)self originalMessageID];
  action = [(EMOutgoingMessage *)self action];
  if ([(EMOutgoingMessage *)self shouldSign])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  shouldEncrypt = [(EMOutgoingMessage *)self shouldEncrypt];
  conversationNotificationLevel = [(EMOutgoingMessage *)self conversationNotificationLevel];
  if (shouldEncrypt)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [v3 stringWithFormat:@"<%@: %p>\n\tOriginalMessageID: %@\n\tAction: %lu\n\tShouldSign: %@\n\tShouldEncrypt: %@\n\tConversationNotificationLevel: %lu", v4, self, originalMessageID, action, v7, v10, conversationNotificationLevel];

  return v11;
}

@end