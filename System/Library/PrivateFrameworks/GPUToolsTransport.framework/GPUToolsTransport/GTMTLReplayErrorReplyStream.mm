@interface GTMTLReplayErrorReplyStream
- (GTMTLReplayErrorReplyStream)initWithObserver:(id)observer;
- (void)notifyError_:(id)error_ replyConnection:(id)connection;
@end

@implementation GTMTLReplayErrorReplyStream

- (GTMTLReplayErrorReplyStream)initWithObserver:(id)observer
{
  observerCopy = observer;
  v6 = [GTServiceProperties protocolMethods:&unk_2860EE6C8];
  v9.receiver = self;
  v9.super_class = GTMTLReplayErrorReplyStream;
  v7 = [(GTXPCDispatcher *)&v9 initWithProtocolMethods:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_observer, observer);
  }

  return v7;
}

- (void)notifyError_:(id)error_ replyConnection:(id)connection
{
  observer = self->_observer;
  nserror = xpc_dictionary_get_nserror(error_, "error");
  [(GTMTLReplayServiceObserver *)observer notifyError:nserror];
}

@end