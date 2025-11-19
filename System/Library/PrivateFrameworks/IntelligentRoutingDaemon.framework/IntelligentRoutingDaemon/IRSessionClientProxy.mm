@interface IRSessionClientProxy
- (IRSessionClientProxy)initWithConnection:(id)a3;
- (void)_didSpotOnLocationComplete:(id)a3;
- (void)_didUpdateBundlesWithSignificantInteractionPattern:(id)a3;
- (void)_didUpdateContext:(id)a3;
- (void)_sessionDidFailWithError:(id)a3;
- (void)invalidateXPCConnection;
@end

@implementation IRSessionClientProxy

- (IRSessionClientProxy)initWithConnection:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = IRSessionClientProxy;
  v5 = [(IRSessionClientProxy *)&v16 init];
  if (!v5)
  {
    goto LABEL_8;
  }

  if (v4)
  {
    [v4 auditToken];
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

  v9 = [v4 valueForEntitlement:@"com.apple.intelligentrouting.recommendationservice"];
  v10 = [v9 BOOLValue];

  if ((v10 & 1) == 0)
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

  [(IRSessionClientProxy *)v5 setConnection:v4];
  v11 = [v4 _queue];
  [(IRSessionClientProxy *)v5 setQueue:v11];

  [(IRSessionClientProxy *)v5 setClientIdentifier:v8];
LABEL_8:
  v12 = v5;
LABEL_15:

  return v12;
}

- (void)invalidateXPCConnection
{
  v2 = [(IRSessionClientProxy *)self connection];
  [v2 invalidate];
}

- (void)_didUpdateContext:(id)a3
{
  v4 = a3;
  v6 = [(IRSessionClientProxy *)self connection];
  v5 = [v6 remoteObjectProxy];
  [v5 _didUpdateContext:v4];
}

- (void)_sessionDidFailWithError:(id)a3
{
  v4 = a3;
  v5 = [(IRSessionClientProxy *)self connection];
  v6 = [v5 remoteObjectProxy];
  [v6 _sessionDidFailWithError:v4];

  [(IRSessionClientProxy *)self invalidateXPCConnection];
}

- (void)_didSpotOnLocationComplete:(id)a3
{
  v4 = a3;
  v6 = [(IRSessionClientProxy *)self connection];
  v5 = [v6 remoteObjectProxy];
  [v5 _didSpotOnLocationComplete:v4];
}

- (void)_didUpdateBundlesWithSignificantInteractionPattern:(id)a3
{
  v4 = a3;
  v6 = [(IRSessionClientProxy *)self connection];
  v5 = [v6 remoteObjectProxy];
  [v5 _didUpdateBundlesWithSignificantInteractionPattern:v4];
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