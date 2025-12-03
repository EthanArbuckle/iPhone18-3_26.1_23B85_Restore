@interface DIBaseAgentDelegate
- (void)createListener;
@end

@implementation DIBaseAgentDelegate

- (void)createListener
{
  serviceName = [(DIBaseServiceDelegate *)self serviceName];
  v4 = [serviceName stringByAppendingString:@".xpc"];

  v5 = *__error();
  if (sub_1000E044C())
  {
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    [(DIBaseServiceDelegate *)self serviceName];
    *buf = 68158210;
    v12 = 37;
    v13 = 2080;
    v14 = "[DIBaseAgentDelegate createListener]";
    v16 = v15 = 2114;
    v7 = _os_log_send_and_compose_impl();

    if (v7)
    {
      fprintf(__stderrp, "%s\n", v7);
      free(v7);
    }
  }

  else
  {
    v8 = sub_1000E03D8();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      serviceName2 = [(DIBaseServiceDelegate *)self serviceName];
      *buf = 68158210;
      v12 = 37;
      v13 = 2080;
      v14 = "[DIBaseAgentDelegate createListener]";
      v15 = 2114;
      v16 = serviceName2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%.*s: Creating NSXPC listener on %{public}@", buf, 0x1Cu);
    }
  }

  *__error() = v5;
  v10 = [[NSXPCListener alloc] initWithMachServiceName:v4];
  [(DIBaseServiceDelegate *)self setListener:v10];
}

@end