@interface _BMCancellableClientSubscriber
- (_BMCancellableClientSubscriber)initWithClient:(id)client identifier:(id)identifier;
- (void)cancel;
@end

@implementation _BMCancellableClientSubscriber

- (_BMCancellableClientSubscriber)initWithClient:(id)client identifier:(id)identifier
{
  clientCopy = client;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = _BMCancellableClientSubscriber;
  v9 = [(_BMCancellableClientSubscriber *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_client, client);
    v11 = [identifierCopy copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;
  }

  return v10;
}

- (void)cancel
{
  selfCopy = self;
  client = [(_BMCancellableClientSubscriber *)selfCopy client];
  identifier = [(_BMCancellableClientSubscriber *)selfCopy identifier];
  [client unsubscribeWithIdentifier:identifier];
}

@end