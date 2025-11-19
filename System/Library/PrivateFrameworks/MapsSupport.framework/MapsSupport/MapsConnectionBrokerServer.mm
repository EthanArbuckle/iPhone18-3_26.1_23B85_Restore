@interface MapsConnectionBrokerServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (MapsConnectionBrokerServer)init;
- (void)dealloc;
- (void)listenerEndpointDidChange:(id)a3 forIdentifier:(id)a4;
- (void)listenerEndpointForIdentifer:(id)a3 reply:(id)a4;
@end

@implementation MapsConnectionBrokerServer

- (MapsConnectionBrokerServer)init
{
  v20.receiver = self;
  v20.super_class = MapsConnectionBrokerServer;
  v2 = [(MapsConnectionBrokerServer *)&v20 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.Maps.MapsConnectionBrokerServer.connections", v3);
    connectionQueue = v2->_connectionQueue;
    v2->_connectionQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.Maps.MapsConnectionBrokerServer.endpoints", v6);
    endpointQueue = v2->_endpointQueue;
    v2->_endpointQueue = v7;

    v9 = objc_alloc_init(NSMutableArray);
    endpointSourceConnections = v2->_endpointSourceConnections;
    v2->_endpointSourceConnections = v9;

    v11 = objc_alloc_init(NSMutableArray);
    endpointConsumerConnections = v2->_endpointConsumerConnections;
    v2->_endpointConsumerConnections = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    endpoints = v2->_endpoints;
    v2->_endpoints = v13;

    v15 = +[NSXPCListener _maps_mapsConnectionBrokerEndpointSourceListener];
    endpointSourceListener = v2->_endpointSourceListener;
    v2->_endpointSourceListener = v15;

    [(NSXPCListener *)v2->_endpointSourceListener setDelegate:v2];
    [(NSXPCListener *)v2->_endpointSourceListener resume];
    v17 = +[NSXPCListener _maps_mapsConnectionBrokerEndpointConsumerListener];
    endpointConsumerListener = v2->_endpointConsumerListener;
    v2->_endpointConsumerListener = v17;

    [(NSXPCListener *)v2->_endpointConsumerListener setDelegate:v2];
    [(NSXPCListener *)v2->_endpointConsumerListener resume];
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_endpointSourceListener invalidate];
  [(NSXPCListener *)self->_endpointConsumerListener invalidate];
  [(NSXPCListener *)self->_endpointSourceListener setDelegate:0];
  [(NSXPCListener *)self->_endpointConsumerListener setDelegate:0];
  v3.receiver = self;
  v3.super_class = MapsConnectionBrokerServer;
  [(MapsConnectionBrokerServer *)&v3 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1000124D8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v37 = "[MapsConnectionBrokerServer listener:shouldAcceptNewConnection:]";
    v38 = 2112;
    v39 = v6;
    v40 = 2112;
    v41 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "MapsConnectionBrokerServer %s %@ %@", buf, 0x20u);
  }

  if (self->_endpointSourceListener == v6)
  {
    v10 = sub_1000124D8();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v37 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "MapsConnectionBrokerServer Received new endpoint source connection: %@", buf, 0xCu);
    }

    [v7 setExportedObject:self];
    v11 = +[NSXPCInterface _maps_mapsConnectionBrokerEndpointRecorderInterface];
    [v7 setExportedInterface:v11];

    v12 = +[NSXPCInterface _maps_mapsConnectionBrokerEndpointSourceInterface];
    [v7 setRemoteObjectInterface:v12];

    objc_initWeak(buf, self);
    objc_initWeak(&location, v7);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10000AC1C;
    v32[3] = &unk_10003CC90;
    objc_copyWeak(&v33, &location);
    objc_copyWeak(&v34, buf);
    [v7 setInvalidationHandler:v32];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10000AD74;
    v30[3] = &unk_10003CCB8;
    objc_copyWeak(&v31, &location);
    [v7 setInterruptionHandler:v30];
    connectionQueue = self->_connectionQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000AE28;
    block[3] = &unk_10003C9D8;
    block[4] = self;
    v14 = v7;
    v29 = v14;
    dispatch_async(connectionQueue, block);
    [v14 resume];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
    goto LABEL_12;
  }

  if (self->_endpointConsumerListener == v6)
  {
    v15 = sub_1000124D8();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v37 = v7;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "MapsConnectionBrokerServer Received new endpoint consumer connection: %@", buf, 0xCu);
    }

    [v7 setExportedObject:self];
    v16 = +[NSXPCInterface _maps_mapsConnectionBrokerEndpointProviderInterface];
    [v7 setExportedInterface:v16];

    v17 = +[NSXPCInterface _maps_mapsConnectionBrokerEndpointConsumerInterface];
    [v7 setRemoteObjectInterface:v17];

    objc_initWeak(buf, self);
    objc_initWeak(&location, v7);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10000AE34;
    v25[3] = &unk_10003CC90;
    objc_copyWeak(&v26, &location);
    objc_copyWeak(&v27, buf);
    [v7 setInvalidationHandler:v25];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10000AF8C;
    v23[3] = &unk_10003CCB8;
    objc_copyWeak(&v24, &location);
    [v7 setInterruptionHandler:v23];
    v18 = self->_connectionQueue;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10000B040;
    v21[3] = &unk_10003C9D8;
    v21[4] = self;
    v19 = v7;
    v22 = v19;
    dispatch_async(v18, v21);
    [v19 resume];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
LABEL_12:
    v9 = 1;
    goto LABEL_13;
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (void)listenerEndpointForIdentifer:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  endpointQueue = self->_endpointQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B110;
  block[3] = &unk_10003CB40;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(endpointQueue, block);
}

- (void)listenerEndpointDidChange:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1000124D8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v16 = "[MapsConnectionBrokerServer listenerEndpointDidChange:forIdentifier:]";
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "MapsConnectionBrokerServer %s %@ %@", buf, 0x20u);
  }

  endpointQueue = self->_endpointQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B2D4;
  block[3] = &unk_10003CA78;
  block[4] = self;
  v13 = v7;
  v14 = v6;
  v10 = v6;
  v11 = v7;
  dispatch_async(endpointQueue, block);
}

@end