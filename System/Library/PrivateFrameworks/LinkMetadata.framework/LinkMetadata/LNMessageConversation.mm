@interface LNMessageConversation
- (LNMessageConversation)initWithCoder:(id)a3;
- (LNMessageConversation)initWithMessageConversationIdentifier:(id)a3 groupName:(id)a4 recipients:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNMessageConversation

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNMessageConversation *)self messageConversationIdentifier];
  [v4 encodeObject:v5 forKey:@"messageConversationIdentifier"];

  v6 = [(LNMessageConversation *)self groupName];
  [v4 encodeObject:v6 forKey:@"groupName"];

  v7 = [(LNMessageConversation *)self recipients];
  [v4 encodeObject:v7 forKey:@"recipients"];
}

- (LNMessageConversation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"messageConversationIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupName"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"recipients"];

  if (v5)
  {
    self = [(LNMessageConversation *)self initWithMessageConversationIdentifier:v5 groupName:v6 recipients:v10];
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (LNMessageConversation)initWithMessageConversationIdentifier:(id)a3 groupName:(id)a4 recipients:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"LNMessageConversation.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"messageConversationIdentifier"}];
  }

  v22.receiver = self;
  v22.super_class = LNMessageConversation;
  v12 = [(LNMessageConversation *)&v22 init];
  if (v12)
  {
    v13 = [v9 copy];
    messageConversationIdentifier = v12->_messageConversationIdentifier;
    v12->_messageConversationIdentifier = v13;

    v15 = [v10 copy];
    groupName = v12->_groupName;
    v12->_groupName = v15;

    v17 = [v11 copy];
    recipients = v12->_recipients;
    v12->_recipients = v17;

    v19 = v12;
  }

  return v12;
}

@end