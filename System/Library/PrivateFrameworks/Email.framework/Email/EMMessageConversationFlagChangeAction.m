@interface EMMessageConversationFlagChangeAction
- (EMMessageConversationFlagChangeAction)initWithCoder:(id)a3;
- (EMMessageConversationFlagChangeAction)initWithConversationIDs:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 conversationNotificationLevel:(int64_t)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMMessageConversationFlagChangeAction

- (EMMessageConversationFlagChangeAction)initWithConversationIDs:(id)a3 origin:(int64_t)a4 actor:(int64_t)a5 conversationNotificationLevel:(int64_t)a6
{
  v10 = a3;
  v15.receiver = self;
  v15.super_class = EMMessageConversationFlagChangeAction;
  v11 = [(EMMessageChangeAction *)&v15 initWithMessageListItems:0 origin:a4 actor:a5];
  if (v11)
  {
    v12 = [v10 copy];
    conversationIDs = v11->_conversationIDs;
    v11->_conversationIDs = v12;

    v11->_conversationNotificationLevel = a6;
  }

  return v11;
}

- (EMMessageConversationFlagChangeAction)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = EMMessageConversationFlagChangeAction;
  v5 = [(EMMessageChangeAction *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"EFPropertyKey_conversationIDs"];
    conversationIDs = v5->_conversationIDs;
    v5->_conversationIDs = v9;

    v5->_conversationNotificationLevel = [v4 decodeIntegerForKey:@"EFPropertyKey_conversationNotificationLevel"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = EMMessageConversationFlagChangeAction;
  [(EMMessageChangeAction *)&v6 encodeWithCoder:v4];
  v5 = [(EMMessageConversationFlagChangeAction *)self conversationIDs];
  [v4 encodeObject:v5 forKey:@"EFPropertyKey_conversationIDs"];

  [v4 encodeInteger:-[EMMessageConversationFlagChangeAction conversationNotificationLevel](self forKey:{"conversationNotificationLevel"), @"EFPropertyKey_conversationNotificationLevel"}];
}

@end