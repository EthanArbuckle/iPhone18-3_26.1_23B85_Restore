@interface GPAppleConnectTokenProvider
- (GPAppleConnectTokenProvider)initWithAuthenticatingProtocol:(id)protocol;
@end

@implementation GPAppleConnectTokenProvider

- (GPAppleConnectTokenProvider)initWithAuthenticatingProtocol:(id)protocol
{
  protocolCopy = protocol;
  v9.receiver = self;
  v9.super_class = GPAppleConnectTokenProvider;
  v5 = [(GPAppleConnectTokenProvider *)&v9 init];
  if (v5)
  {
    v6 = [[_TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift alloc] initWithAuthenticatingProtocol:protocolCopy];
    impl = v5->_impl;
    v5->_impl = v6;
  }

  return v5;
}

@end