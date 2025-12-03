@interface IRSessionClientProxy
- (IRSessionClientProxy)initWithConnection:(id)connection;
- (void)_didSpotOnLocationComplete:(id)complete;
- (void)_didUpdateBundlesWithSignificantInteractionPattern:(id)pattern;
- (void)_didUpdateContext:(id)context;
- (void)_sessionDidFailWithError:(id)error;
- (void)invalidateXPCConnection;
@end

@implementation IRSessionClientProxy

- (IRSessionClientProxy)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v16.receiver = self;
  v16.super_class = IRSessionClientProxy;
  v5 = [(IRSessionClientProxy *)&v16 init];
  if (!v5)
  {
    goto LABEL_8;
  }

  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  v6 = xpc_copy_code_signing_identity_for_token();
  if (!v6 || (v7 = v6, [MEMORY[0x277CCACA8] stringWithUTF8String:v6], v8 = objc_claimAutoreleasedReturnValue(), free(v7), !v8))
  {
    v13 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      [IRSessionClientProxy initWithConnection:v13];
    }

    goto LABEL_14;
  }

  v9 = [connectionCopy valueForEntitlement:@"com.apple.intelligentrouting.recommendationservice"];
  bOOLValue = [v9 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v14 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
    {
      [(IRSessionClientProxy *)v14 initWithConnection:v5];
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  [(IRSessionClientProxy *)v5 setConnection:connectionCopy];
  _queue = [connectionCopy _queue];
  [(IRSessionClientProxy *)v5 setQueue:_queue];

  [(IRSessionClientProxy *)v5 setClientIdentifier:v8];
LABEL_8:
  v12 = v5;
LABEL_15:

  return v12;
}

- (void)invalidateXPCConnection
{
  connection = [(IRSessionClientProxy *)self connection];
  [connection invalidate];
}

- (void)_didUpdateContext:(id)context
{
  contextCopy = context;
  connection = [(IRSessionClientProxy *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy _didUpdateContext:contextCopy];
}

- (void)_sessionDidFailWithError:(id)error
{
  errorCopy = error;
  connection = [(IRSessionClientProxy *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy _sessionDidFailWithError:errorCopy];

  [(IRSessionClientProxy *)self invalidateXPCConnection];
}

- (void)_didSpotOnLocationComplete:(id)complete
{
  completeCopy = complete;
  connection = [(IRSessionClientProxy *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy _didSpotOnLocationComplete:completeCopy];
}

- (void)_didUpdateBundlesWithSignificantInteractionPattern:(id)pattern
{
  patternCopy = pattern;
  connection = [(IRSessionClientProxy *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy _didUpdateBundlesWithSignificantInteractionPattern:patternCopy];
}

- (void)initWithConnection:(void *)a1 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 clientIdentifier];
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_25543D000, v3, OS_LOG_TYPE_ERROR, "#server-client, [ErrorId - Missing entitlement] %@ is missing required entitlement, rejecting connection.", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end