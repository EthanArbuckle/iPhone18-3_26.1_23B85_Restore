@interface MapsConnectionBrokerServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MapsConnectionBrokerServer)init;
- (void)dealloc;
- (void)listenerEndpointDidChange:(id)change forIdentifier:(id)identifier;
- (void)listenerEndpointForIdentifer:(id)identifer reply:(id)reply;
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

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = sub_1000124D8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v37 = "[MapsConnectionBrokerServer listener:shouldAcceptNewConnection:]";
    v38 = 2112;
    v39 = listenerCopy;
    v40 = 2112;
    v41 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "MapsConnectionBrokerServer %s %@ %@", buf, 0x20u);
  }

  if (self->_endpointSourceListener == listenerCopy)
  {
    v10 = sub_1000124D8();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v37 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "MapsConnectionBrokerServer Received new endpoint source connection: %@", buf, 0xCu);
    }

    [connectionCopy setExportedObject:self];
    v11 = +[NSXPCInterface _maps_mapsConnectionBrokerEndpointRecorderInterface];
    [connectionCopy setExportedInterface:v11];

    v12 = +[NSXPCInterface _maps_mapsConnectionBrokerEndpointSourceInterface];
    [connectionCopy setRemoteObjectInterface:v12];

    objc_initWeak(buf, self);
    objc_initWeak(&location, connectionCopy);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10000AC1C;
    v32[3] = &unk_10003CC90;
    objc_copyWeak(&v33, &location);
    objc_copyWeak(&v34, buf);
    [connectionCopy setInvalidationHandler:v32];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10000AD74;
    v30[3] = &unk_10003CCB8;
    objc_copyWeak(&v31, &location);
    [connectionCopy setInterruptionHandler:v30];
    connectionQueue = self->_connectionQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000AE28;
    block[3] = &unk_10003C9D8;
    block[4] = self;
    v14 = connectionCopy;
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

  if (self->_endpointConsumerListener == listenerCopy)
  {
    v15 = sub_1000124D8();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v37 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "MapsConnectionBrokerServer Received new endpoint consumer connection: %@", buf, 0xCu);
    }

    [connectionCopy setExportedObject:self];
    v16 = +[NSXPCInterface _maps_mapsConnectionBrokerEndpointProviderInterface];
    [connectionCopy setExportedInterface:v16];

    v17 = +[NSXPCInterface _maps_mapsConnectionBrokerEndpointConsumerInterface];
    [connectionCopy setRemoteObjectInterface:v17];

    objc_initWeak(buf, self);
    objc_initWeak(&location, connectionCopy);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10000AE34;
    v25[3] = &unk_10003CC90;
    objc_copyWeak(&v26, &location);
    objc_copyWeak(&v27, buf);
    [connectionCopy setInvalidationHandler:v25];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10000AF8C;
    v23[3] = &unk_10003CCB8;
    objc_copyWeak(&v24, &location);
    [connectionCopy setInterruptionHandler:v23];
    v18 = self->_connectionQueue;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10000B040;
    v21[3] = &unk_10003C9D8;
    v21[4] = self;
    v19 = connectionCopy;
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

- (void)listenerEndpointForIdentifer:(id)identifer reply:(id)reply
{
  identiferCopy = identifer;
  replyCopy = reply;
  endpointQueue = self->_endpointQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B110;
  block[3] = &unk_10003CB40;
  block[4] = self;
  v12 = identiferCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = identiferCopy;
  dispatch_async(endpointQueue, block);
}

- (void)listenerEndpointDidChange:(id)change forIdentifier:(id)identifier
{
  changeCopy = change;
  identifierCopy = identifier;
  v8 = sub_1000124D8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v16 = "[MapsConnectionBrokerServer listenerEndpointDidChange:forIdentifier:]";
    v17 = 2112;
    v18 = changeCopy;
    v19 = 2112;
    v20 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "MapsConnectionBrokerServer %s %@ %@", buf, 0x20u);
  }

  endpointQueue = self->_endpointQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B2D4;
  block[3] = &unk_10003CA78;
  block[4] = self;
  v13 = identifierCopy;
  v14 = changeCopy;
  v10 = changeCopy;
  v11 = identifierCopy;
  dispatch_async(endpointQueue, block);
}

@end