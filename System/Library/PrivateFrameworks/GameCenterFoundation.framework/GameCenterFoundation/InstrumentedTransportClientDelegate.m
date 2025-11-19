@interface InstrumentedTransportClientDelegate
- (void)relayDidReceivePushData:(id)a3 completionHandler:(id)a4;
- (void)transportDidReceivePacket:(id)a3 fromPlayerID:(id)a4 remoteRecipientID:(id)a5;
- (void)transportDidUpdateWithInfo:(id)a3;
@end

@implementation InstrumentedTransportClientDelegate

- (void)relayDidReceivePushData:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_227A7241C();
  _Block_copy(v5);

  sub_2279FCEF4(v6, self, v5);
  _Block_release(v5);
}

- (void)transportDidReceivePacket:(id)a3 fromPlayerID:(id)a4 remoteRecipientID:(id)a5
{
  v7 = sub_227A724EC();
  v9 = v8;
  if (a5)
  {
    v10 = sub_227A724EC();
    a5 = v11;
  }

  else
  {
    v10 = 0;
  }

  v12 = a3;

  sub_2279FD360(v12, v7, v9, v10, a5);
}

- (void)transportDidUpdateWithInfo:(id)a3
{
  sub_227A7241C();

  sub_2279FD4E0();
}

@end