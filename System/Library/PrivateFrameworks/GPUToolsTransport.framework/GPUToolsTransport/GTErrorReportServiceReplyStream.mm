@interface GTErrorReportServiceReplyStream
- (GTErrorReportServiceReplyStream)initWithObserver:(id)observer;
- (void)notifyRejectedConnections_:(id)connections_ replyConnection:(id)connection;
@end

@implementation GTErrorReportServiceReplyStream

- (GTErrorReportServiceReplyStream)initWithObserver:(id)observer
{
  observerCopy = observer;
  v6 = [GTServiceProperties protocolMethods:&unk_2860EA640];
  v9.receiver = self;
  v9.super_class = GTErrorReportServiceReplyStream;
  v7 = [(GTXPCDispatcher *)&v9 initWithProtocolMethods:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_observer, observer);
  }

  return v7;
}

- (void)notifyRejectedConnections_:(id)connections_ replyConnection:(id)connection
{
  connections_Copy = connections_;
  v6 = objc_opt_class();
  nsarray = xpc_dictionary_get_nsarray(connections_Copy, "response", v6);

  [(GTErrorReportServiceObserver *)self->_observer notifyRejectedConnections:nsarray];
}

@end