@interface LNMessageConversation
- (LNMessageConversation)initWithCoder:(id)coder;
- (LNMessageConversation)initWithMessageConversationIdentifier:(id)identifier groupName:(id)name recipients:(id)recipients;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNMessageConversation

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  messageConversationIdentifier = [(LNMessageConversation *)self messageConversationIdentifier];
  [coderCopy encodeObject:messageConversationIdentifier forKey:@"messageConversationIdentifier"];

  groupName = [(LNMessageConversation *)self groupName];
  [coderCopy encodeObject:groupName forKey:@"groupName"];

  recipients = [(LNMessageConversation *)self recipients];
  [coderCopy encodeObject:recipients forKey:@"recipients"];
}

- (LNMessageConversation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"messageConversationIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupName"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"recipients"];

  if (v5)
  {
    self = [(LNMessageConversation *)self initWithMessageConversationIdentifier:v5 groupName:v6 recipients:v10];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (LNMessageConversation)initWithMessageConversationIdentifier:(id)identifier groupName:(id)name recipients:(id)recipients
{
  identifierCopy = identifier;
  nameCopy = name;
  recipientsCopy = recipients;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNMessageConversation.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"messageConversationIdentifier"}];
  }

  v22.receiver = self;
  v22.super_class = LNMessageConversation;
  v12 = [(LNMessageConversation *)&v22 init];
  if (v12)
  {
    v13 = [identifierCopy copy];
    messageConversationIdentifier = v12->_messageConversationIdentifier;
    v12->_messageConversationIdentifier = v13;

    v15 = [nameCopy copy];
    groupName = v12->_groupName;
    v12->_groupName = v15;

    v17 = [recipientsCopy copy];
    recipients = v12->_recipients;
    v12->_recipients = v17;

    v19 = v12;
  }

  return v12;
}

@end