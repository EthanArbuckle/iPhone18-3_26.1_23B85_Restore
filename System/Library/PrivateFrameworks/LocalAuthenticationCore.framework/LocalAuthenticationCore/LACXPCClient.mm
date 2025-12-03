@interface LACXPCClient
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)checkEntitlement:(id)entitlement;
- (BOOL)isFirstPartyClient;
- (LACXPCClient)initWithConnection:(id)connection;
- (LACXPCClient)initWithProcessId:(int)id auditToken:(id *)token userId:(unsigned int)userId;
- (NSString)signingID;
- (NSXPCConnection)connection;
@end

@implementation LACXPCClient

- (LACXPCClient)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v14.receiver = self;
  v14.super_class = LACXPCClient;
  v5 = [(LACXPCClient *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_connection, connectionCopy);
    if (connectionCopy)
    {
      processIdentifier = [connectionCopy processIdentifier];
    }

    else
    {
      processIdentifier = getpid();
    }

    v6->_processId = processIdentifier;
    v8 = [LACAuditToken alloc];
    if (connectionCopy)
    {
      [connectionCopy auditToken];
    }

    else
    {
      memset(v13, 0, sizeof(v13));
    }

    v9 = [(LACAuditToken *)v8 initWithRawValue:v13];
    auditToken = v6->_auditToken;
    v6->_auditToken = v9;

    if (connectionCopy)
    {
      effectiveUserIdentifier = [connectionCopy effectiveUserIdentifier];
    }

    else
    {
      effectiveUserIdentifier = geteuid();
    }

    v6->_userId = effectiveUserIdentifier;
  }

  return v6;
}

- (LACXPCClient)initWithProcessId:(int)id auditToken:(id *)token userId:(unsigned int)userId
{
  v16.receiver = self;
  v16.super_class = LACXPCClient;
  v8 = [(LACXPCClient *)&v16 init];
  v9 = v8;
  if (v8)
  {
    v8->_processId = id;
    v10 = [LACAuditToken alloc];
    v11 = *&token->var0[4];
    v15[0] = *token->var0;
    v15[1] = v11;
    v12 = [(LACAuditToken *)v10 initWithRawValue:v15];
    auditToken = v9->_auditToken;
    v9->_auditToken = v12;

    v9->_userId = userId;
  }

  return v9;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  result = self->_auditToken;
  if (result)
  {
    return [($115C4C562B26FF47E01F9F4EA65B5887 *)result rawValue];
  }

  *retstr->var0 = 0u;
  *&retstr->var0[4] = 0u;
  return result;
}

- (BOOL)checkEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  connection = [(LACXPCClient *)self connection];
  if (connection)
  {
    connection2 = [(LACXPCClient *)self connection];
    v7 = [connection2 valueForEntitlement:entitlementCopy];
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (NSString)signingID
{
  v2 = [(LACAuditToken *)self->_auditToken signingID:0];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F2652748;
  }

  v5 = v4;

  return &v4->isa;
}

- (BOOL)isFirstPartyClient
{
  v2 = [(LACAuditToken *)self->_auditToken belongsToPlatformBinary:0];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end