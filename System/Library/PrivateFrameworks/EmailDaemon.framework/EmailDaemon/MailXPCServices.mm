@interface MailXPCServices
+ (id)log;
+ (id)sharedServer;
- (BOOL)_connection:(id)a3 hasEntitlement:(id)a4;
- (Class)_serviceClassForName:(id)a3;
- (MailXPCServices)init;
- (void)_dispatchMessage:(id)a3 onQueue:(id)a4 connectionState:(id)a5 completion:(id)a6;
- (void)_enumerateServiceClasses:(id)a3;
- (void)_registerConnection:(id)a3;
- (void)dealloc;
- (void)registerServiceClass:(Class)a3;
- (void)start;
- (void)stop;
@end

@implementation MailXPCServices

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003409C;
  block[3] = &unk_1001562E8;
  block[4] = a1;
  if (qword_100185628 != -1)
  {
    dispatch_once(&qword_100185628, block);
  }

  v2 = qword_100185620;

  return v2;
}

+ (id)sharedServer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000341C0;
  block[3] = &unk_1001562E8;
  block[4] = a1;
  if (qword_100185638 != -1)
  {
    dispatch_once(&qword_100185638, block);
  }

  v2 = qword_100185630;

  return v2;
}

- (MailXPCServices)init
{
  v13.receiver = self;
  v13.super_class = MailXPCServices;
  v2 = [(MailXPCServices *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.mobilemail.services", &_dispatch_queue_attr_concurrent);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_alloc_init(NSMutableArray);
    connections = v2->_connections;
    v2->_connections = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    services = v2->_services;
    v2->_services = v7;

    v9 = objc_alloc_init(NSLock);
    connectionsLock = v2->_connectionsLock;
    v2->_connectionsLock = v9;

    v11 = v2;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_listener)
  {
    [(MailXPCServices *)self stop];
  }

  v3.receiver = self;
  v3.super_class = MailXPCServices;
  [(MailXPCServices *)&v3 dealloc];
}

- (void)start
{
  if (self->_listener)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MailXPCServices.m" lineNumber:115 description:@"attempt to start server mutliple times"];
  }

  v3 = +[MailXPCServices log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "starting Mail xpc services", buf, 2u);
  }

  mach_service = xpc_connection_create_mach_service([@"com.apple.mobilemail.services.xpc" UTF8String], self->_queue, 1uLL);
  listener = self->_listener;
  self->_listener = mach_service;

  v6 = self->_listener;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000033EC;
  handler[3] = &unk_100157510;
  handler[4] = self;
  xpc_connection_set_event_handler(v6, handler);
  xpc_connection_resume(self->_listener);
}

- (void)stop
{
  v3 = +[MailXPCServices log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "stopping maild legacy xpc services", v6, 2u);
  }

  v4 = self->_listener;
  xpc_connection_set_event_handler(v4, &stru_1001576D8);
  xpc_connection_cancel(v4);

  listener = self->_listener;
  self->_listener = 0;

  [(NSLock *)self->_connectionsLock lock];
  [(NSMutableArray *)self->_connections makeObjectsPerformSelector:"stop"];
  [(NSMutableArray *)self->_connections removeAllObjects];
  [(NSLock *)self->_connectionsLock unlock];
  [(MailXPCServices *)self _enumerateServiceClasses:&stru_100157550];
}

- (void)_registerConnection:(id)a3
{
  v4 = a3;
  v5 = +[MailXPCServices log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    pid = xpc_connection_get_pid(v4);
    v7 = v4;
    v8 = xpc_copy_description(v7);
    if (v8)
    {
      v8 = [[NSString alloc] initWithBytesNoCopy:v8 length:strlen(v8) encoding:4 freeWhenDone:1];
    }

    LODWORD(buf) = 67109378;
    HIDWORD(buf) = pid;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "PID %d : new connection %@", &buf, 0x12u);
  }

  v9 = [[MFXPCConnection alloc] initWithConnection:v4];
  [(MFXPCConnection *)v9 setServiceManager:self];
  objc_initWeak(&buf, v9);
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1000348F0;
  v13 = &unk_100157578;
  objc_copyWeak(&v15, &buf);
  v14 = self;
  [(MFXPCConnection *)v9 setErrorHandler:&v10];
  [(NSLock *)self->_connectionsLock lock:v10];
  [(NSMutableArray *)self->_connections addObject:v9];
  [(NSLock *)self->_connectionsLock unlock];
  [(MFXPCConnection *)v9 start];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&buf);
}

- (BOOL)_connection:(id)a3 hasEntitlement:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    if (v5)
    {
      *buf = 0u;
      v21 = 0u;
      xpc_connection_get_audit_token();
      memset(&token, 0, sizeof(token));
      v7 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
      v8 = v7;
      if (v7)
      {
        error = 0;
        v9 = SecTaskCopyValueForEntitlement(v7, v6, &error);
        if (objc_opt_respondsToSelector())
        {
          v10 = [v9 BOOLValue];
LABEL_25:
          CFRelease(v8);

          goto LABEL_26;
        }

        if (v9 | error)
        {
          if (!v9 && error)
          {
            v12 = +[MailXPCServices log];
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              sub_10003485C(v5);
              objc_claimAutoreleasedReturnValue();
              sub_1000D38C4();
            }

            CFRelease(error);
            goto LABEL_24;
          }

          v13 = +[MailXPCServices log];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v16 = sub_10003485C(v5);
            token.val[0] = 138412802;
            *&token.val[1] = v6;
            LOWORD(token.val[3]) = 2112;
            *(&token.val[3] + 2) = v16;
            HIWORD(token.val[5]) = 2112;
            *&token.val[6] = v9;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "entitlement '%@' on connection %@ had invalid value '%@'", &token, 0x20u);
          }
        }

        else
        {
          v13 = +[MailXPCServices log];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = v5;
            v15 = xpc_copy_description(v14);
            if (v15)
            {
              v15 = [[NSString alloc] initWithBytesNoCopy:v15 length:strlen(v15) encoding:4 freeWhenDone:1];
            }

            token.val[0] = 138412546;
            *&token.val[1] = v6;
            LOWORD(token.val[3]) = 2112;
            *(&token.val[3] + 2) = v15;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "entitlement '%@' missing on connection %@", &token, 0x16u);
          }
        }

LABEL_24:
        v10 = 0;
        goto LABEL_25;
      }
    }

    else
    {
      v11 = +[MailXPCServices log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v6;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "missing required connection to verify entitlement '%@'", buf, 0xCu);
      }
    }

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

LABEL_26:

  return v10;
}

- (void)_dispatchMessage:(id)a3 onQueue:(id)a4 connectionState:(id)a5 completion:(id)a6
{
  v10 = a3;
  queue = a4;
  v31 = a5;
  v11 = a6;
  v12 = xpc_dictionary_get_remote_connection(v10);
  v13 = +[MailXPCServices log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    if (v12)
    {
      pid = xpc_connection_get_pid(v12);
    }

    else
    {
      pid = -1;
    }

    int64 = xpc_dictionary_get_int64(v10, [_MSMailServiceMessageIndex UTF8String]);
    v16 = v10;
    v17 = xpc_copy_description(v16);
    if (v17)
    {
      v17 = [[NSString alloc] initWithBytesNoCopy:v17 length:strlen(v17) encoding:4 freeWhenDone:1];
    }

    *buf = 67109890;
    v42 = pid;
    v43 = 2048;
    v44 = int64;
    v45 = 2048;
    v46 = v12;
    v47 = 2112;
    v48 = v17;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "PID %d (%lld) : <connection: %p> handling message %@", buf, 0x26u);
  }

  string = xpc_dictionary_get_string(v10, [_MSMailServiceName UTF8String]);
  if (string)
  {
    v19 = [NSString stringWithUTF8String:string];
    v20 = [(MailXPCServices *)self _serviceClassForName:v19];

    if (v20)
    {
      v21 = [(objc_class *)v20 requiredEntitlement];
      v22 = [(MailXPCServices *)self _connection:v12 hasEntitlement:v21];

      if (v22)
      {
        v23 = 0;
      }

      else
      {
        v23 = [NSError errorWithDomain:MSMailServiceErrorDomain code:1504 userInfo:0];
      }

      goto LABEL_16;
    }

    v24 = 1503;
  }

  else
  {
    v24 = 1502;
  }

  v23 = [NSError errorWithDomain:MSMailServiceErrorDomain code:v24 userInfo:0];
  v20 = 0;
LABEL_16:
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10003528C;
  v37[3] = &unk_1001575A0;
  v25 = v10;
  v38 = v25;
  v26 = v12;
  v39 = v26;
  v27 = v11;
  v40 = v27;
  v28 = objc_retainBlock(v37);
  v29 = v28;
  if (v23)
  {
    (v28[2])(v28, 0, 0, v23);
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000355A4;
    block[3] = &unk_1001575C8;
    v36 = v20;
    v33 = v25;
    v34 = v31;
    v35 = v29;
    dispatch_async(queue, block);
  }
}

- (void)registerServiceClass:(Class)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100035700;
  block[3] = &unk_1001575F0;
  block[4] = self;
  block[5] = a3;
  block[6] = a2;
  dispatch_barrier_async(queue, block);
}

- (Class)_serviceClassForName:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v15 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100035954;
  block[3] = &unk_100157618;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)_enumerateServiceClasses:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100035A2C;
  v7[3] = &unk_100157668;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

@end