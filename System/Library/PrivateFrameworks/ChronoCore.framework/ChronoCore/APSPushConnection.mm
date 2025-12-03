@interface APSPushConnection
- (_TtC10ChronoCore17APSPushConnection)init;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connection:(id)connection didReceiveToken:(id)token forInfo:(id)info;
@end

@implementation APSPushConnection

- (_TtC10ChronoCore17APSPushConnection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  if (token)
  {
    connectionCopy = connection;
    selfCopy = self;
    tokenCopy = token;
    v9 = sub_224DA96D8();
    v11 = v10;
  }

  else
  {
    connectionCopy2 = connection;
    selfCopy2 = self;
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  sub_224CC3134(v9, v11);
  sub_224AC1D9C(v9, v11);
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  selfCopy = self;
  sub_224CC3354(message);
}

- (void)connection:(id)connection didReceiveToken:(id)token forInfo:(id)info
{
  if (token)
  {
    connectionCopy = connection;
    infoCopy = info;
    selfCopy = self;
    tokenCopy = token;
    v12 = sub_224DA96D8();
    v14 = v13;
  }

  else
  {
    connectionCopy2 = connection;
    infoCopy2 = info;
    selfCopy2 = self;
    v12 = 0;
    v14 = 0xF000000000000000;
  }

  sub_224CC3700(v12, v14, info);
  sub_224AC1D9C(v12, v14);
}

@end