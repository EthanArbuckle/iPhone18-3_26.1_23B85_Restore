@interface GEOOfflineServiceServer
- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id;
- (GEOOfflineServiceServer)initWithDaemon:(id)daemon;
- (void)cancelWithRequest:(id)request;
- (void)requestWithRequest:(id)request;
@end

@implementation GEOOfflineServiceServer

- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id
{
  messageCopy = message;
  objectCopy = object;
  peerCopy = peer;
  uTF8String = [messageCopy UTF8String];
  LOBYTE(v14) = *uTF8String;
  if (*uTF8String)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v16 += v14;
      if (v15 > 0x30)
      {
        break;
      }

      v14 = uTF8String[++v15];
    }

    while (v14);
    if (v16 == 614)
    {
      v21 = objc_opt_class();
      v22 = sub_100000DC8(messageCopy, objectCopy, v21, peerCopy);
      v19 = v22;
      if (v22)
      {
        [v22 setSignpostId:id];
        [(GEOOfflineServiceServer *)self cancelWithRequest:v19];
        goto LABEL_12;
      }

LABEL_15:
      v20 = 0;
      goto LABEL_13;
    }

    if (v16 == 777)
    {
      v17 = objc_opt_class();
      v18 = sub_100000DC8(messageCopy, objectCopy, v17, peerCopy);
      v19 = v18;
      if (v18)
      {
        [v18 setSignpostId:id];
        [(GEOOfflineServiceServer *)self requestWithRequest:v19];
LABEL_12:
        v20 = 1;
LABEL_13:

        goto LABEL_14;
      }

      goto LABEL_15;
    }
  }

  v20 = 0;
LABEL_14:

  return v20;
}

- (void)cancelWithRequest:(id)request
{
  requestCopy = request;
  if (!self->_offlineService && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *v5 = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: _offlineService != ((void*)0)", v5, 2u);
  }
}

- (void)requestWithRequest:(id)request
{
  requestCopy = request;
  if (self->_offlineService)
  {
    v5 = [[GEOOfflineServiceReply alloc] initWithRequest:requestCopy];
    offlineService = self->_offlineService;
    request = [requestCopy request];
    requestMetadata = [requestCopy requestMetadata];
    queue = self->_queue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100001200;
    v11[3] = &unk_1000081F8;
    v12 = v5;
    v10 = v5;
    [(MapsOfflineServiceV1 *)offlineService processRequest:request requestMetaData:requestMetadata queue:queue response:v11];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: _offlineService != ((void*)0)", buf, 2u);
  }
}

- (GEOOfflineServiceServer)initWithDaemon:(id)daemon
{
  v8.receiver = self;
  v8.super_class = GEOOfflineServiceServer;
  v3 = [(GEOOfflineServiceServer *)&v8 initWithDaemon:daemon];
  if (v3)
  {
    v4 = geo_dispatch_queue_create();
    queue = v3->_queue;
    v3->_queue = v4;

    v6 = v3;
  }

  return v3;
}

@end