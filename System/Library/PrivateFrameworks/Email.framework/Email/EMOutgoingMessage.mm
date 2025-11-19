@interface EMOutgoingMessage
- (EMOutgoingMessage)initWithBuilder:(id)a3;
- (EMOutgoingMessage)initWithCoder:(id)a3;
- (EMOutgoingMessage)initWithMessageData:(id)a3;
- (NSString)ef_publicDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMOutgoingMessage

- (EMOutgoingMessage)initWithMessageData:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__EMOutgoingMessage_initWithMessageData___block_invoke;
  v8[3] = &unk_1E826F060;
  v9 = v4;
  v5 = v4;
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

- (EMOutgoingMessage)initWithBuilder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = EMOutgoingMessage;
  v5 = [(EMOutgoingMessage *)&v7 init];
  if (v5)
  {
    v4[2](v4, v5);
  }

  return v5;
}

- (EMOutgoingMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__EMOutgoingMessage_initWithCoder___block_invoke;
  v8[3] = &unk_1E826F060;
  v9 = v4;
  v5 = v4;
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

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(EMOutgoingMessage *)self messageData];
  [v6 encodeObject:v4 forKey:@"EFPropertyKey_messageData"];

  v5 = [(EMOutgoingMessage *)self originalMessageID];
  [v6 encodeObject:v5 forKey:@"EFPropertyKey_originalMessageID"];

  [v6 encodeInteger:-[EMOutgoingMessage action](self forKey:{"action"), @"EFPropertyKey_action"}];
  [v6 encodeBool:-[EMOutgoingMessage shouldSign](self forKey:{"shouldSign"), @"EFPropertyKey_shouldSign"}];
  [v6 encodeBool:-[EMOutgoingMessage shouldEncrypt](self forKey:{"shouldEncrypt"), @"EFPropertyKey_shouldEncrypt"}];
  [v6 encodeInteger:-[EMOutgoingMessage conversationNotificationLevel](self forKey:{"conversationNotificationLevel"), @"EFPropertyKey_conversationNotificationLevel"}];
}

- (NSString)ef_publicDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(EMOutgoingMessage *)self originalMessageID];
  v6 = [(EMOutgoingMessage *)self action];
  if ([(EMOutgoingMessage *)self shouldSign])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [(EMOutgoingMessage *)self shouldEncrypt];
  v9 = [(EMOutgoingMessage *)self conversationNotificationLevel];
  if (v8)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [v3 stringWithFormat:@"<%@: %p>\n\tOriginalMessageID: %@\n\tAction: %lu\n\tShouldSign: %@\n\tShouldEncrypt: %@\n\tConversationNotificationLevel: %lu", v4, self, v5, v6, v7, v10, v9];

  return v11;
}

@end