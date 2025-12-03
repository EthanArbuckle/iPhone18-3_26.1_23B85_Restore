@interface HMDRemoteEventRouterServerMessageReceiver
- (NSUUID)messageTargetUUID;
- (OS_dispatch_queue)messageReceiveQueue;
- (void)handleRequestMessage:(id)message;
@end

@implementation HMDRemoteEventRouterServerMessageReceiver

- (void)handleRequestMessage:(id)message
{
  messageCopy = message;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_server);
    if (WeakRetained)
    {
      v5 = WeakRetained;
      [WeakRetained _handleRequestMessage:messageCopy connectionMode:1];
    }
  }
}

- (OS_dispatch_queue)messageReceiveQueue
{
  if (self)
  {
    self = objc_getProperty(self, a2, 16, 1);
    v2 = vars8;
  }

  return self;
}

- (NSUUID)messageTargetUUID
{
  if (self)
  {
    self = objc_getProperty(self, a2, 8, 1);
    v2 = vars8;
  }

  return self;
}

@end