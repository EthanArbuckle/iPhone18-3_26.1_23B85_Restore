@interface SBRendererServiceConnection
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (SBRendererServiceConnection)initWithRenderService:(id)service analysisServer:(id)server;
- (id)activateWithListener:(id)listener;
- (id)executeAnalysisRequest:(id)request error:(id *)error;
- (id)executeAnalysisRequest:(id)request reply:(id)reply;
- (void)cancelRequest:(id)request;
@end

@implementation SBRendererServiceConnection

- (SBRendererServiceConnection)initWithRenderService:(id)service analysisServer:(id)server
{
  serviceCopy = service;
  serverCopy = server;
  v9 = [(SBRendererServiceConnection *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_renderService, service);
    objc_storeStrong(&v10->_analysisServer, server);
  }

  return v10;
}

- (id)activateWithListener:(id)listener
{
  listenerCopy = listener;
  if (!listenerCopy)
  {
    sub_10000347C(a2, self);
  }

  v6 = listenerCopy;
  [listenerCopy setDelegate:self];
  [v6 activate];
  selfCopy = self;
  v8 = [BSSimpleAssertion alloc];
  v9 = [v6 description];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100002DD8;
  v13[3] = &unk_100008450;
  v13[4] = selfCopy;
  v14 = v6;
  v10 = v6;
  v11 = [v8 initWithIdentifier:v9 forReason:@"SBRendererServiceConnection stay-alive" invalidationBlock:v13];

  return v11;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PUIServicesInterface];
  v7 = +[PUICARemoteRenderer secureCodableRequestClasses];
  [v6 setClasses:v7 forSelector:"renderRequest:reply:" argumentIndex:0 ofReply:0];

  v8 = +[SBImageAnalysisServer secureCodableRequestClasses];
  [v6 setClasses:v8 forSelector:"executeAnalysisRequest:reply:" argumentIndex:0 ofReply:0];

  v9 = +[SBImageAnalysisServer secureCodableResponseClasses];
  [v6 setClasses:v9 forSelector:"executeAnalysisRequest:reply:" argumentIndex:0 ofReply:1];

  v10 = +[SBImageAnalysisServer secureCodableResponseClasses];
  [v6 setClasses:v10 forSelector:"executeAnalysisRequest:reply:" argumentIndex:1 ofReply:1];

  v11 = +[SBImageAnalysisServer secureCodableRequestClasses];
  [v6 setClasses:v11 forSelector:"executeAnalysisRequest:error:" argumentIndex:0 ofReply:0];

  v12 = +[SBImageAnalysisServer secureCodableRequestClasses];
  [v6 setClasses:v12 forSelector:"executeAnalysisRequest:error:" argumentIndex:1 ofReply:0];

  v13 = +[SBImageAnalysisServer secureCodableRequestClasses];
  [v6 setClasses:v13 forSelector:"cancelRequest:" argumentIndex:0 ofReply:0];

  [connectionCopy setExportedInterface:v6];
  [connectionCopy setExportedObject:self];
  [connectionCopy activate];
  v14 = SBRSLogXPC();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 67109120;
    v16[1] = [connectionCopy processIdentifier];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Accepting connection from PID=%d", v16, 8u);
  }

  return 1;
}

- (id)executeAnalysisRequest:(id)request reply:(id)reply
{
  replyCopy = reply;
  v7 = dword_10000DD18++;
  requestCopy = request;
  Current = CFAbsoluteTimeGetCurrent();
  v10 = SBRSLogXPC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100003594(v7, v10, v11, v12, v13, v14, v15, v16);
  }

  analysisServer = self->_analysisServer;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100003170;
  v21[3] = &unk_100008478;
  v22 = replyCopy;
  v24 = v7;
  v23 = Current;
  v18 = replyCopy;
  v19 = [(SBImageAnalysisServer *)analysisServer executeAnalysisRequest:requestCopy reply:v21];

  return v19;
}

- (void)cancelRequest:(id)request
{
  ++dword_10000DD1C;
  requestCopy = request;
  CFAbsoluteTimeGetCurrent();
  v5 = SBRSLogXPC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000036B8();
  }

  [(SBImageAnalysisServer *)self->_analysisServer cancelRequest:requestCopy];
  v6 = SBRSLogXPC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100003734();
  }
}

- (id)executeAnalysisRequest:(id)request error:(id *)error
{
  ++dword_10000DD20;
  requestCopy = request;
  CFAbsoluteTimeGetCurrent();
  v7 = SBRSLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1000037D4();
  }

  v8 = [(SBImageAnalysisServer *)self->_analysisServer executeAnalysisRequest:requestCopy error:error];

  v9 = SBRSLogXPC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_100003850();
  }

  return v8;
}

@end