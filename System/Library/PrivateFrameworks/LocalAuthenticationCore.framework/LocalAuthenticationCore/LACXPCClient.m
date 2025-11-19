@interface LACXPCClient
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)checkEntitlement:(id)a3;
- (BOOL)isFirstPartyClient;
- (LACXPCClient)initWithConnection:(id)a3;
- (LACXPCClient)initWithProcessId:(int)a3 auditToken:(id *)a4 userId:(unsigned int)a5;
- (NSString)signingID;
- (NSXPCConnection)connection;
@end

@implementation LACXPCClient

- (LACXPCClient)initWithConnection:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = LACXPCClient;
  v5 = [(LACXPCClient *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_connection, v4);
    if (v4)
    {
      v7 = [v4 processIdentifier];
    }

    else
    {
      v7 = getpid();
    }

    v6->_processId = v7;
    v8 = [LACAuditToken alloc];
    if (v4)
    {
      [v4 auditToken];
    }

    else
    {
      memset(v13, 0, sizeof(v13));
    }

    v9 = [(LACAuditToken *)v8 initWithRawValue:v13];
    auditToken = v6->_auditToken;
    v6->_auditToken = v9;

    if (v4)
    {
      v11 = [v4 effectiveUserIdentifier];
    }

    else
    {
      v11 = geteuid();
    }

    v6->_userId = v11;
  }

  return v6;
}

- (LACXPCClient)initWithProcessId:(int)a3 auditToken:(id *)a4 userId:(unsigned int)a5
{
  v16.receiver = self;
  v16.super_class = LACXPCClient;
  v8 = [(LACXPCClient *)&v16 init];
  v9 = v8;
  if (v8)
  {
    v8->_processId = a3;
    v10 = [LACAuditToken alloc];
    v11 = *&a4->var0[4];
    v15[0] = *a4->var0;
    v15[1] = v11;
    v12 = [(LACAuditToken *)v10 initWithRawValue:v15];
    auditToken = v9->_auditToken;
    v9->_auditToken = v12;

    v9->_userId = a5;
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

- (BOOL)checkEntitlement:(id)a3
{
  v4 = a3;
  v5 = [(LACXPCClient *)self connection];
  if (v5)
  {
    v6 = [(LACXPCClient *)self connection];
    v7 = [v6 valueForEntitlement:v4];
    v8 = [v7 BOOLValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
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
  v3 = [v2 BOOLValue];

  return v3;
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end