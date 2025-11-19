@interface GEOOfflineServiceServer
- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6;
- (GEOOfflineServiceServer)initWithDaemon:(id)a3;
- (void)cancelWithRequest:(id)a3;
- (void)requestWithRequest:(id)a3;
@end

@implementation GEOOfflineServiceServer

- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v10 UTF8String];
  LOBYTE(v14) = *v13;
  if (*v13)
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

      v14 = v13[++v15];
    }

    while (v14);
    if (v16 == 614)
    {
      v21 = objc_opt_class();
      v22 = sub_100000DC8(v10, v11, v21, v12);
      v19 = v22;
      if (v22)
      {
        [v22 setSignpostId:a6];
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
      v18 = sub_100000DC8(v10, v11, v17, v12);
      v19 = v18;
      if (v18)
      {
        [v18 setSignpostId:a6];
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

- (void)cancelWithRequest:(id)a3
{
  v4 = a3;
  if (!self->_offlineService && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *v5 = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: _offlineService != ((void*)0)", v5, 2u);
  }
}

- (void)requestWithRequest:(id)a3
{
  v4 = a3;
  if (self->_offlineService)
  {
    v5 = [[GEOOfflineServiceReply alloc] initWithRequest:v4];
    offlineService = self->_offlineService;
    v7 = [v4 request];
    v8 = [v4 requestMetadata];
    queue = self->_queue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100001200;
    v11[3] = &unk_1000081F8;
    v12 = v5;
    v10 = v5;
    [(MapsOfflineServiceV1 *)offlineService processRequest:v7 requestMetaData:v8 queue:queue response:v11];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: _offlineService != ((void*)0)", buf, 2u);
  }
}

- (GEOOfflineServiceServer)initWithDaemon:(id)a3
{
  v8.receiver = self;
  v8.super_class = GEOOfflineServiceServer;
  v3 = [(GEOOfflineServiceServer *)&v8 initWithDaemon:a3];
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