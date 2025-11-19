@interface ServiceDelegate
+ (id)debugProcessIdentifierForConnection:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (ServiceDelegate)initWithAssets:(id)a3;
@end

@implementation ServiceDelegate

- (ServiceDelegate)initWithAssets:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = ServiceDelegate;
  v5 = [(ServiceDelegate *)&v21 init];
  if (v5)
  {
    v6 = objc_opt_class();
    objc_sync_enter(v6);
    v7 = [[CKContextXPCProtocolImpl alloc] initWithAssets:v4];
    sharedXPCService = v5->_sharedXPCService;
    v5->_sharedXPCService = v7;

    objc_sync_exit(v6);
    v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CKContextXPCProtocol];
    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v10, objc_opt_class(), 0];
    [(NSXPCInterface *)v9 setClasses:v11 forSelector:"findResultsForRequest:withReply:" argumentIndex:0 ofReply:0];

    v12 = [NSSet setWithObject:objc_opt_class()];
    [(NSXPCInterface *)v9 setClasses:v12 forSelector:"donate:" argumentIndex:0 ofReply:0];

    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [NSSet setWithObjects:v13, v14, v15, objc_opt_class(), 0];
    [(NSXPCInterface *)v9 setClasses:v16 forSelector:"groupResponses:withReply:" argumentIndex:0 ofReply:0];

    interface = v5->_interface;
    v5->_interface = v9;
    v18 = v9;

    connections = v5->_connections;
    v5->_connections = 0;
  }

  return v5;
}

+ (id)debugProcessIdentifierForConnection:(id)a3
{
  v3 = a3;
  v4 = [v3 processIdentifier];
  v5 = [v3 _xpcConnection];

  v6 = xpc_connection_copy_bundle_id();
  if (v6)
  {
    v7 = [[NSString alloc] initWithBytesNoCopy:v6 length:strlen(v6) encoding:4 freeWhenDone:1];
  }

  else
  {
    v7 = &stru_100484358;
  }

  v8 = malloc_type_malloc(0x200uLL, 0x764063D1uLL);
  if (v8)
  {
    v9 = v8;
    v10 = proc_pidpath(v4, v8, 0x200u);
    if (v10 - 15 > 0xFFFFFFF1)
    {
LABEL_10:
      v12 = [[NSString alloc] initWithBytesNoCopy:v9 length:v10 encoding:4 freeWhenDone:1];
      goto LABEL_13;
    }

    v11 = proc_name(v4, v9, 0x200u);
    if (v11 > 0)
    {
      if (v11 >= 0x200)
      {
        v10 = 512;
      }

      else
      {
        v10 = v11;
      }

      goto LABEL_10;
    }

    free(v9);
  }

  v12 = &stru_100484358;
LABEL_13:
  v13 = [NSString stringWithFormat:@"%i:%@:%@", v4, v12, v7];

  return v13;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v27 = a3;
  v6 = a4;
  [v6 setExportedInterface:self->_interface];
  [v6 setExportedObject:self->_sharedXPCService];
  if (self->_connections)
  {
    v7 = [ServiceDelegate debugProcessIdentifierForConnection:v6];
    v8 = self->_connections;
    objc_sync_enter(v8);
    [(NSMapTable *)self->_connections setObject:v7 forKey:v6];
    v9 = [(NSMapTable *)self->_connections count];
    objc_sync_exit(v8);

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v42 = v7;
      v43 = 2048;
      v44 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "New XPC connection for %@, total active: %lu", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v42) = [v6 processIdentifier];
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "New XPC connection for PID %i", buf, 8u);
  }

  objc_initWeak(&location, v6);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10000232C;
  v36[3] = &unk_1003E9420;
  objc_copyWeak(&v37, &location);
  v36[4] = self;
  [v6 setInvalidationHandler:v36];
  connections = self->_connections;
  if (connections)
  {
    v11 = connections;
    objc_sync_enter(v11);
    v12 = +[NSCountedSet set];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v13 = [(NSMapTable *)self->_connections keyEnumerator];
    v14 = [v13 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v14)
    {
      v15 = *v33;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = [(NSMapTable *)self->_connections objectForKey:*(*(&v32 + 1) + 8 * i)];
          if (v17)
          {
            [v12 addObject:v17];
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v14);
    }

    v26 = v11;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v18 = v12;
    v19 = [v18 countByEnumeratingWithState:&v28 objects:v39 count:16];
    if (v19)
    {
      v20 = *v29;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = v6;
          v23 = *(*(&v28 + 1) + 8 * j);
          v24 = [v18 countForObject:{v23, v26, v27}];
          if (v24 >= 2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218242;
            v42 = v24;
            v43 = 2112;
            v44 = v23;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Too many XPC connections (%lu) from %@", buf, 0x16u);
          }

          v6 = v22;
        }

        v19 = [v18 countByEnumeratingWithState:&v28 objects:v39 count:16];
      }

      while (v19);
    }

    objc_sync_exit(v26);
  }

  [v6 resume];
  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);

  return 1;
}

@end