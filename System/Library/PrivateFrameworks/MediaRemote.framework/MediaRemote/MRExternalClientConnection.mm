@interface MRExternalClientConnection
- (MRExternalClientConnection)initWithConnection:(id)a3 replyQueue:(id)a4;
- (NSArray)subscribedPlayerPaths;
- (void)setSubscribedPlayerPaths:(id)a3;
@end

@implementation MRExternalClientConnection

- (NSArray)subscribedPlayerPaths
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_subscribedPlayerPaths;
  objc_sync_exit(v2);

  return v3;
}

- (MRExternalClientConnection)initWithConnection:(id)a3 replyQueue:(id)a4
{
  v5.receiver = self;
  v5.super_class = MRExternalClientConnection;
  result = [(MRProtocolClientConnection *)&v5 initWithConnection:a3 replyQueue:a4];
  if (result)
  {
    result->_voiceRecordingState = 0;
  }

  return result;
}

- (void)setSubscribedPlayerPaths:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  subscribedPlayerPaths = v4->_subscribedPlayerPaths;
  v4->_subscribedPlayerPaths = v5;

  objc_sync_exit(v4);
}

@end