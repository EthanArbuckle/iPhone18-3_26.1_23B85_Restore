@interface DIBaseAgentXPCHandler
- (void)createConnection;
@end

@implementation DIBaseAgentXPCHandler

- (void)createConnection
{
  isPrivileged = [(DIBaseXPCHandler *)self isPrivileged];
  serviceName = [(DIBaseXPCHandler *)self serviceName];
  v5 = [serviceName stringByAppendingString:@".xpc"];

  v6 = *__error();
  if (sub_1000E044C())
  {
    v7 = sub_1000E03D8();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    *buf = 68158210;
    v15 = 41;
    v16 = 2080;
    v17 = "[DIBaseAgentXPCHandler createConnection]";
    v18 = 2114;
    v19 = v5;
    v8 = _os_log_send_and_compose_impl();

    if (v8)
    {
      fprintf(__stderrp, "%s\n", v8);
      free(v8);
    }
  }

  else
  {
    v9 = sub_1000E03D8();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158210;
      v15 = 41;
      v16 = 2080;
      v17 = "[DIBaseAgentXPCHandler createConnection]";
      v18 = 2114;
      v19 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%.*s: Creating connection to %{public}@", buf, 0x1Cu);
    }
  }

  if (isPrivileged)
  {
    v10 = 4096;
  }

  else
  {
    v10 = 0;
  }

  *__error() = v6;
  v11 = [[NSXPCConnection alloc] initWithMachServiceName:v5 options:v10];
  [(DIBaseXPCHandler *)self setConnection:v11];

  [(DIBaseAgentXPCHandler *)self setConnectionMode];
  remoteObjectInterface = [(DIBaseXPCHandler *)self remoteObjectInterface];
  connection = [(DIBaseXPCHandler *)self connection];
  [connection setRemoteObjectInterface:remoteObjectInterface];
}

@end