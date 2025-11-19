@interface GTMTLDiagnosticsServiceReplyStream
- (GTMTLDiagnosticsServiceReplyStream)initWithObserver:(id)a3;
- (void)notifyCommandBufferIssue_:(id)a3 replyConnection:(id)a4;
- (void)notifyDiagnosticsIssue_:(id)a3 replyConnection:(id)a4;
@end

@implementation GTMTLDiagnosticsServiceReplyStream

- (GTMTLDiagnosticsServiceReplyStream)initWithObserver:(id)a3
{
  v5 = a3;
  v6 = [GTServiceProperties protocolMethods:&unk_2860EC4C8];
  v9.receiver = self;
  v9.super_class = GTMTLDiagnosticsServiceReplyStream;
  v7 = [(GTXPCDispatcher *)&v9 initWithProtocolMethods:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_observer, a3);
  }

  return v7;
}

- (void)notifyCommandBufferIssue_:(id)a3 replyConnection:(id)a4
{
  v5 = a3;
  v6 = objc_opt_class();
  nsobject = xpc_dictionary_get_nsobject(v5, "issue", v6);

  [(GTMTLDiagnosticsServiceObserver *)self->_observer notifyCommandBufferIssue:nsobject];
}

- (void)notifyDiagnosticsIssue_:(id)a3 replyConnection:(id)a4
{
  v5 = a3;
  v6 = objc_opt_class();
  nsobject = xpc_dictionary_get_nsobject(v5, "issue", v6);

  [(GTMTLDiagnosticsServiceObserver *)self->_observer notifyDiagnosticsIssue:nsobject];
}

@end