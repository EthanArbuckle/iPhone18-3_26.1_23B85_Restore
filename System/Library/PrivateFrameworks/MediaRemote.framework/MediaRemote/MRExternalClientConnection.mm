@interface MRExternalClientConnection
- (MRExternalClientConnection)initWithConnection:(id)connection replyQueue:(id)queue;
- (NSArray)subscribedPlayerPaths;
- (void)setSubscribedPlayerPaths:(id)paths;
@end

@implementation MRExternalClientConnection

- (NSArray)subscribedPlayerPaths
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_subscribedPlayerPaths;
  objc_sync_exit(selfCopy);

  return v3;
}

- (MRExternalClientConnection)initWithConnection:(id)connection replyQueue:(id)queue
{
  v5.receiver = self;
  v5.super_class = MRExternalClientConnection;
  result = [(MRProtocolClientConnection *)&v5 initWithConnection:connection replyQueue:queue];
  if (result)
  {
    result->_voiceRecordingState = 0;
  }

  return result;
}

- (void)setSubscribedPlayerPaths:(id)paths
{
  pathsCopy = paths;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [pathsCopy copy];
  subscribedPlayerPaths = selfCopy->_subscribedPlayerPaths;
  selfCopy->_subscribedPlayerPaths = v5;

  objc_sync_exit(selfCopy);
}

@end