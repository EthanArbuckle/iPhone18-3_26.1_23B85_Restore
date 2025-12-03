@interface EMMessageConversationFlagChangeAction
- (EMMessageConversationFlagChangeAction)initWithCoder:(id)coder;
- (EMMessageConversationFlagChangeAction)initWithConversationIDs:(id)ds origin:(int64_t)origin actor:(int64_t)actor conversationNotificationLevel:(int64_t)level;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMMessageConversationFlagChangeAction

- (EMMessageConversationFlagChangeAction)initWithConversationIDs:(id)ds origin:(int64_t)origin actor:(int64_t)actor conversationNotificationLevel:(int64_t)level
{
  dsCopy = ds;
  v15.receiver = self;
  v15.super_class = EMMessageConversationFlagChangeAction;
  v11 = [(EMMessageChangeAction *)&v15 initWithMessageListItems:0 origin:origin actor:actor];
  if (v11)
  {
    v12 = [dsCopy copy];
    conversationIDs = v11->_conversationIDs;
    v11->_conversationIDs = v12;

    v11->_conversationNotificationLevel = level;
  }

  return v11;
}

- (EMMessageConversationFlagChangeAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = EMMessageConversationFlagChangeAction;
  v5 = [(EMMessageChangeAction *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"EFPropertyKey_conversationIDs"];
    conversationIDs = v5->_conversationIDs;
    v5->_conversationIDs = v9;

    v5->_conversationNotificationLevel = [coderCopy decodeIntegerForKey:@"EFPropertyKey_conversationNotificationLevel"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = EMMessageConversationFlagChangeAction;
  [(EMMessageChangeAction *)&v6 encodeWithCoder:coderCopy];
  conversationIDs = [(EMMessageConversationFlagChangeAction *)self conversationIDs];
  [coderCopy encodeObject:conversationIDs forKey:@"EFPropertyKey_conversationIDs"];

  [coderCopy encodeInteger:-[EMMessageConversationFlagChangeAction conversationNotificationLevel](self forKey:{"conversationNotificationLevel"), @"EFPropertyKey_conversationNotificationLevel"}];
}

@end