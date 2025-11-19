@interface GPAppleConnectTokenProvider
- (GPAppleConnectTokenProvider)initWithAuthenticatingProtocol:(id)a3;
@end

@implementation GPAppleConnectTokenProvider

- (GPAppleConnectTokenProvider)initWithAuthenticatingProtocol:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GPAppleConnectTokenProvider;
  v5 = [(GPAppleConnectTokenProvider *)&v9 init];
  if (v5)
  {
    v6 = [[_TtC23ImagePlaygroundInternal33GPAppleConnectTokenProvider_Swift alloc] initWithAuthenticatingProtocol:v4];
    impl = v5->_impl;
    v5->_impl = v6;
  }

  return v5;
}

@end