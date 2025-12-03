@interface IDSServerMessagingOutgoingContext
- (IDSServerMessagingOutgoingContext)initWithIdentifier:(id)identifier;
@end

@implementation IDSServerMessagingOutgoingContext

- (IDSServerMessagingOutgoingContext)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = IDSServerMessagingOutgoingContext;
  v6 = [(IDSServerMessagingOutgoingContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
  }

  return v7;
}

@end