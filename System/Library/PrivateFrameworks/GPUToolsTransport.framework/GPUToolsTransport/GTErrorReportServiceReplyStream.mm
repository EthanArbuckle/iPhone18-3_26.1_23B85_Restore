@interface GTErrorReportServiceReplyStream
- (GTErrorReportServiceReplyStream)initWithObserver:(id)a3;
- (void)notifyRejectedConnections_:(id)a3 replyConnection:(id)a4;
@end

@implementation GTErrorReportServiceReplyStream

- (GTErrorReportServiceReplyStream)initWithObserver:(id)a3
{
  v5 = a3;
  v6 = [GTServiceProperties protocolMethods:&unk_2860EA640];
  v9.receiver = self;
  v9.super_class = GTErrorReportServiceReplyStream;
  v7 = [(GTXPCDispatcher *)&v9 initWithProtocolMethods:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_observer, a3);
  }

  return v7;
}

- (void)notifyRejectedConnections_:(id)a3 replyConnection:(id)a4
{
  v5 = a3;
  v6 = objc_opt_class();
  nsarray = xpc_dictionary_get_nsarray(v5, "response", v6);

  [(GTErrorReportServiceObserver *)self->_observer notifyRejectedConnections:nsarray];
}

@end