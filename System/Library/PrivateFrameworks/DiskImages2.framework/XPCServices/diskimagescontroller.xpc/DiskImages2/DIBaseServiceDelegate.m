@interface DIBaseServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (DIBaseServiceDelegate)init;
- (void)createListener;
- (void)startXPClistener;
@end

@implementation DIBaseServiceDelegate

- (DIBaseServiceDelegate)init
{
  v11.receiver = self;
  v11.super_class = DIBaseServiceDelegate;
  v2 = [(DIBaseServiceDelegate *)&v11 init];
  if (v2 && (v3 = dispatch_queue_create(0, &_dispatch_queue_attr_concurrent), dispatchQueue = v2->_dispatchQueue, v2->_dispatchQueue = v3, dispatchQueue, !v2->_dispatchQueue))
  {
    v6 = *__error();
    if (sub_1000E044C())
    {
      v7 = sub_1000E03D8();
      os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      *buf = 68157954;
      v13 = 29;
      v14 = 2080;
      v15 = "[DIBaseServiceDelegate init]";
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
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157954;
        v13 = 29;
        v14 = 2080;
        v15 = "[DIBaseServiceDelegate init]";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%.*s: Failed creating queue", buf, 0x12u);
      }
    }

    v5 = 0;
    *__error() = v6;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = *__error();
  if (sub_1000E044C())
  {
    v7 = sub_1000E03D8();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    *buf = 68158722;
    v13 = 60;
    v14 = 2080;
    v15 = "[DIBaseServiceDelegate listener:shouldAcceptNewConnection:]";
    v16 = 1024;
    v17 = [v5 processIdentifier];
    v18 = 1024;
    v19 = [v5 effectiveUserIdentifier];
    v20 = 1024;
    v21 = geteuid();
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
      *buf = 68158722;
      v13 = 60;
      v14 = 2080;
      v15 = "[DIBaseServiceDelegate listener:shouldAcceptNewConnection:]";
      v16 = 1024;
      v17 = [v5 processIdentifier];
      v18 = 1024;
      v19 = [v5 effectiveUserIdentifier];
      v20 = 1024;
      v21 = geteuid();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%.*s: Received connection from pid %d with euid %d. Our euid is %d", buf, 0x24u);
    }
  }

  *__error() = v6;
  v10 = [(DIBaseServiceDelegate *)self setupNewConnection:v5];
  [v5 resume];
  [(DIBaseServiceDelegate *)self validateConnection];

  return v10;
}

- (void)createListener
{
  v3 = +[NSXPCListener serviceListener];
  [(DIBaseServiceDelegate *)self setListener:v3];
}

- (void)startXPClistener
{
  [(DIBaseServiceDelegate *)self createListener];
  v3 = [(DIBaseServiceDelegate *)self listener];
  [v3 setDelegate:self];

  v4 = [(DIBaseServiceDelegate *)self listener];
  [v4 resume];
}

@end