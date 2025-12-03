@interface GTMTLDiagnosticsServiceReplyStream
- (GTMTLDiagnosticsServiceReplyStream)initWithObserver:(id)observer;
- (void)notifyCommandBufferIssue_:(id)issue_ replyConnection:(id)connection;
- (void)notifyDiagnosticsIssue_:(id)issue_ replyConnection:(id)connection;
@end

@implementation GTMTLDiagnosticsServiceReplyStream

- (GTMTLDiagnosticsServiceReplyStream)initWithObserver:(id)observer
{
  observerCopy = observer;
  v6 = [GTServiceProperties protocolMethods:&unk_2860EC4C8];
  v9.receiver = self;
  v9.super_class = GTMTLDiagnosticsServiceReplyStream;
  v7 = [(GTXPCDispatcher *)&v9 initWithProtocolMethods:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_observer, observer);
  }

  return v7;
}

- (void)notifyCommandBufferIssue_:(id)issue_ replyConnection:(id)connection
{
  issue_Copy = issue_;
  v6 = objc_opt_class();
  nsobject = xpc_dictionary_get_nsobject(issue_Copy, "issue", v6);

  [(GTMTLDiagnosticsServiceObserver *)self->_observer notifyCommandBufferIssue:nsobject];
}

- (void)notifyDiagnosticsIssue_:(id)issue_ replyConnection:(id)connection
{
  issue_Copy = issue_;
  v6 = objc_opt_class();
  nsobject = xpc_dictionary_get_nsobject(issue_Copy, "issue", v6);

  [(GTMTLDiagnosticsServiceObserver *)self->_observer notifyDiagnosticsIssue:nsobject];
}

@end