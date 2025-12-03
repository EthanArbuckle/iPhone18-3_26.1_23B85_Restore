@interface CUXPCAgentConnection
- (void)connectionInvalidated;
@end

@implementation CUXPCAgentConnection

- (void)connectionInvalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  ucat = self->_agent->_ucat;
  if (ucat->var0 <= 20)
  {
    if (ucat->var0 != -1)
    {
LABEL_3:
      processIdentifier = [(NSXPCConnection *)self->_xpcCnx processIdentifier];
      LogPrintF(ucat, "[CUXPCAgentConnection connectionInvalidated]", 0x14u, "XPC connection ended from %#{pid}\n", v5, v6, v7, v8, processIdentifier);
      return;
    }

    if (_LogCategory_Initialize(self->_agent->_ucat, 0x14u))
    {
      ucat = self->_agent->_ucat;
      goto LABEL_3;
    }
  }
}

@end