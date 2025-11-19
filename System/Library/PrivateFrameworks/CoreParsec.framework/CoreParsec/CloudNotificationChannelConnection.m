@interface CloudNotificationChannelConnection
- (void)connection:(id)a3 channelSubscriptionsFailedWithFailures:(id)a4;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
@end

@implementation CloudNotificationChannelConnection

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v4 = a4;
  if (a4)
  {
    v6 = a3;
    v7 = self;
    v8 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v12 = a3;
    v11 = self;
    v10 = 0xF000000000000000;
  }

  sub_1000778DC(v11, v4, v10);
  sub_100014A2C(v4, v10);
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100077BC8(v8, a4);
}

- (void)connection:(id)a3 channelSubscriptionsFailedWithFailures:(id)a4
{
  v4 = a4;
  if (a4)
  {
    sub_100078E68();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v8 = self;
  sub_100078678(v9, v8, v4);
}

@end