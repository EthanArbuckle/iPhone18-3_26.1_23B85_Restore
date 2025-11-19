@interface IDSServerMessagingOutgoingContext
- (IDSServerMessagingOutgoingContext)initWithIdentifier:(id)a3;
@end

@implementation IDSServerMessagingOutgoingContext

- (IDSServerMessagingOutgoingContext)initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSServerMessagingOutgoingContext;
  v6 = [(IDSServerMessagingOutgoingContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
  }

  return v7;
}

@end