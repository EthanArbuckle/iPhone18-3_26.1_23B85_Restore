@interface CloudNotificationChannelConnection
- (void)connection:(id)connection channelSubscriptionsFailedWithFailures:(id)failures;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
@end

@implementation CloudNotificationChannelConnection

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  tokenCopy = token;
  if (token)
  {
    connectionCopy = connection;
    selfCopy = self;
    v8 = tokenCopy;
    tokenCopy = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    connectionCopy2 = connection;
    selfCopy2 = self;
    v10 = 0xF000000000000000;
  }

  sub_1000778DC(selfCopy2, tokenCopy, v10);
  sub_100014A2C(tokenCopy, v10);
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  selfCopy = self;
  sub_100077BC8(selfCopy, message);
}

- (void)connection:(id)connection channelSubscriptionsFailedWithFailures:(id)failures
{
  failuresCopy = failures;
  if (failures)
  {
    sub_100078E68();
    failuresCopy = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  connectionCopy = connection;
  selfCopy = self;
  sub_100078678(v9, selfCopy, failuresCopy);
}

@end