@interface GTMTLDiagnosticsServiceObserver
- (void)notifyCommandBufferIssue:(id)issue;
- (void)notifyDiagnosticsIssue:(id)issue;
@end

@implementation GTMTLDiagnosticsServiceObserver

- (void)notifyCommandBufferIssue:(id)issue
{
  issueCopy = issue;
  xdict = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(xdict, "_cmd", Name);
  xpc_dictionary_set_uint64(xdict, "_port", [(GTServiceObserver *)self replyStream]);
  replyPath = [(GTServiceObserver *)self replyPath];
  xpc_dictionary_set_value(xdict, "_replyPath", replyPath);

  xpc_dictionary_set_nsobject(xdict, "issue", issueCopy);
  connection = [(GTServiceObserver *)self connection];
  [connection sendMessage:xdict];
}

- (void)notifyDiagnosticsIssue:(id)issue
{
  issueCopy = issue;
  xdict = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(xdict, "_cmd", Name);
  xpc_dictionary_set_uint64(xdict, "_port", [(GTServiceObserver *)self replyStream]);
  replyPath = [(GTServiceObserver *)self replyPath];
  xpc_dictionary_set_value(xdict, "_replyPath", replyPath);

  xpc_dictionary_set_nsobject(xdict, "issue", issueCopy);
  connection = [(GTServiceObserver *)self connection];
  [connection sendMessage:xdict];
}

@end