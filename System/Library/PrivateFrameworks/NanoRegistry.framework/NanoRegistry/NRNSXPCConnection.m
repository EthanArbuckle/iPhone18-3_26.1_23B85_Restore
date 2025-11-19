@interface NRNSXPCConnection
- (NRNSXPCConnection)initWithConnection:(id)a3;
- (NRNSXPCConnection)initWithMachServiceName:(id)a3 options:(unint64_t)a4;
- (NSString)processName;
- (id)remoteObjectProxy;
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
@end

@implementation NRNSXPCConnection

- (NSString)processName
{
  v3 = [(NRNSXPCConnection *)self processIdentifier];
  v4 = malloc_type_malloc(0x1000uLL, 0x2881A4B5uLL);
  if (v4)
  {
    v5 = v4;
    if (proc_pidpath(v3, v4, 0x1000u) > 0)
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

- (NRNSXPCConnection)initWithConnection:(id)a3
{
  v5 = a3;
  v6 = [(NRNSXPCConnection *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
  }

  return v7;
}

- (NRNSXPCConnection)initWithMachServiceName:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = [(NRNSXPCConnection *)self init];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:v6 options:a4];
    connection = v7->_connection;
    v7->_connection = v8;
  }

  return v7;
}

- (id)remoteObjectProxy
{
  v2 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  v3 = [NRLoggingXPCProxy alloc];
  [(NRLoggingXPCProxy *)&v3->super.isa initWithBlahBlahBlahProxy:v2];

  return v3;
}

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v3 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:a3];
  v4 = [NRLoggingXPCProxy alloc];
  [(NRLoggingXPCProxy *)&v4->super.isa initWithBlahBlahBlahProxy:v3];

  return v4;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v3 = [(NSXPCConnection *)self->_connection synchronousRemoteObjectProxyWithErrorHandler:a3];
  v4 = [NRLoggingXPCProxy alloc];
  [(NRLoggingXPCProxy *)&v4->super.isa initWithBlahBlahBlahProxy:v3];

  return v4;
}

@end