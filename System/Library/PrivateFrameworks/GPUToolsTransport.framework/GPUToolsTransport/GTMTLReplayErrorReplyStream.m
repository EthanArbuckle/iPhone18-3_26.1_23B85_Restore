@interface GTMTLReplayErrorReplyStream
- (GTMTLReplayErrorReplyStream)initWithObserver:(id)a3;
- (void)notifyError_:(id)a3 replyConnection:(id)a4;
@end

@implementation GTMTLReplayErrorReplyStream

- (GTMTLReplayErrorReplyStream)initWithObserver:(id)a3
{
  v5 = a3;
  v6 = [GTServiceProperties protocolMethods:&unk_2860EE6C8];
  v9.receiver = self;
  v9.super_class = GTMTLReplayErrorReplyStream;
  v7 = [(GTXPCDispatcher *)&v9 initWithProtocolMethods:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_observer, a3);
  }

  return v7;
}

- (void)notifyError_:(id)a3 replyConnection:(id)a4
{
  observer = self->_observer;
  nserror = xpc_dictionary_get_nserror(a3, "error");
  [(GTMTLReplayServiceObserver *)observer notifyError:nserror];
}

@end