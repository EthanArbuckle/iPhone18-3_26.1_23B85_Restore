@interface NRNSXPCConnection
- (NRNSXPCConnection)initWithConnection:(id)connection;
- (NRNSXPCConnection)initWithMachServiceName:(id)name options:(unint64_t)options;
- (NSString)processName;
- (id)remoteObjectProxy;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
@end

@implementation NRNSXPCConnection

- (NSString)processName
{
  processIdentifier = [(NRNSXPCConnection *)self processIdentifier];
  v4 = malloc_type_malloc(0x1000uLL, 0x2881A4B5uLL);
  if (v4)
  {
    v5 = v4;
    if (proc_pidpath(processIdentifier, v4, 0x1000u) > 0)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
      free(v5);
      goto LABEL_6;
    }

    free(v5);
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PID_%ld", -[NRNSXPCConnection processIdentifier](self, "processIdentifier")];
LABEL_6:

  return v6;
}

- (NRNSXPCConnection)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [(NRNSXPCConnection *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

- (NRNSXPCConnection)initWithMachServiceName:(id)name options:(unint64_t)options
{
  nameCopy = name;
  v7 = [(NRNSXPCConnection *)self init];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:nameCopy options:options];
    connection = v7->_connection;
    v7->_connection = v8;
  }

  return v7;
}

- (id)remoteObjectProxy
{
  remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  v3 = [NRLoggingXPCProxy alloc];
  [(NRLoggingXPCProxy *)&v3->super.isa initWithBlahBlahBlahProxy:remoteObjectProxy];

  return v3;
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  v3 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:handler];
  v4 = [NRLoggingXPCProxy alloc];
  [(NRLoggingXPCProxy *)&v4->super.isa initWithBlahBlahBlahProxy:v3];

  return v4;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  v3 = [(NSXPCConnection *)self->_connection synchronousRemoteObjectProxyWithErrorHandler:handler];
  v4 = [NRLoggingXPCProxy alloc];
  [(NRLoggingXPCProxy *)&v4->super.isa initWithBlahBlahBlahProxy:v3];

  return v4;
}

@end