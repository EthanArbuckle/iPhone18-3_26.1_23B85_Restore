@interface HDXPCClient
+ (id)clientWithConnection:(id)a3 error:(id *)a4;
- (HDXPCClient)initWithConnection:(id)a3 process:(id)a4;
- (HDXPCClient)initWithProcess:(id)a3;
- (id)_initWithConnection:(id)a3 process:(id)a4;
- (id)description;
@end

@implementation HDXPCClient

+ (id)clientWithConnection:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [HDXPCProcess processWithConnection:v6 error:a4];
  if (v7)
  {
    v8 = [[a1 alloc] _initWithConnection:v6 process:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (HDXPCClient)initWithConnection:(id)a3 process:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    [HDXPCClient initWithConnection:a2 process:self];
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    [HDXPCClient initWithConnection:a2 process:self];
    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = [(HDXPCClient *)self _initWithConnection:v7 process:v9];

  return v10;
}

- (HDXPCClient)initWithProcess:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(HDXPCClient *)a2 initWithProcess:?];
  }

  v6 = [(HDXPCClient *)self _initWithConnection:0 process:v5];

  return v6;
}

- (id)_initWithConnection:(id)a3 process:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HDXPCClient;
  v9 = [(HDXPCClient *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, a3);
    objc_storeStrong(p_isa + 1, a4);
  }

  return p_isa;
}

- (id)description
{
  v2 = [(HDXPCClient *)self process];
  v3 = [v2 name];
  v4 = [v2 applicationIdentifier];
  v5 = [v2 bundleIdentifier];
  if ([v5 isEqualToString:v3] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", v4))
  {
    v6 = &stru_28637B800;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" proc-bid=%@", v5];
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@ %@(%d) app-id=%@%@>", objc_opt_class(), v3, objc_msgSend(v2, "processIdentifier"), v4, v6, 0];

  return v7;
}

- (void)initWithConnection:(uint64_t)a1 process:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDXPCClient.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"connection != nil"}];
}

- (void)initWithConnection:(uint64_t)a1 process:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDXPCClient.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"process != nil"}];
}

- (void)initWithProcess:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDXPCClient.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"process != nil"}];
}

@end