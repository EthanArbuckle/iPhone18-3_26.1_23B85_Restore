@interface HDXPCClient
+ (id)clientWithConnection:(id)connection error:(id *)error;
- (HDXPCClient)initWithConnection:(id)connection process:(id)process;
- (HDXPCClient)initWithProcess:(id)process;
- (id)_initWithConnection:(id)connection process:(id)process;
- (id)description;
@end

@implementation HDXPCClient

+ (id)clientWithConnection:(id)connection error:(id *)error
{
  connectionCopy = connection;
  v7 = [HDXPCProcess processWithConnection:connectionCopy error:error];
  if (v7)
  {
    v8 = [[self alloc] _initWithConnection:connectionCopy process:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (HDXPCClient)initWithConnection:(id)connection process:(id)process
{
  connectionCopy = connection;
  processCopy = process;
  v9 = processCopy;
  if (!connectionCopy)
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

  if (!processCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = [(HDXPCClient *)self _initWithConnection:connectionCopy process:v9];

  return v10;
}

- (HDXPCClient)initWithProcess:(id)process
{
  processCopy = process;
  if (!processCopy)
  {
    [(HDXPCClient *)a2 initWithProcess:?];
  }

  v6 = [(HDXPCClient *)self _initWithConnection:0 process:processCopy];

  return v6;
}

- (id)_initWithConnection:(id)connection process:(id)process
{
  connectionCopy = connection;
  processCopy = process;
  v12.receiver = self;
  v12.super_class = HDXPCClient;
  v9 = [(HDXPCClient *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, connection);
    objc_storeStrong(p_isa + 1, process);
  }

  return p_isa;
}

- (id)description
{
  process = [(HDXPCClient *)self process];
  name = [process name];
  applicationIdentifier = [process applicationIdentifier];
  bundleIdentifier = [process bundleIdentifier];
  if ([bundleIdentifier isEqualToString:name] & 1) != 0 || (objc_msgSend(bundleIdentifier, "isEqualToString:", applicationIdentifier))
  {
    v6 = &stru_28637B800;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" proc-bid=%@", bundleIdentifier];
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@ %@(%d) app-id=%@%@>", objc_opt_class(), name, objc_msgSend(process, "processIdentifier"), applicationIdentifier, v6, 0];

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