@interface VCPRealTimeAnalysisClientHandler
+ (id)clientHandlerWithXPCConnection:(id)a3;
- (VCPRealTimeAnalysisClientHandler)initWithXPCConnection:(id)a3;
- (void)requestAnalysis:(unint64_t)a3 ofIOSurface:(id)a4 withProperties:(id)a5 withReply:(id)a6;
@end

@implementation VCPRealTimeAnalysisClientHandler

- (VCPRealTimeAnalysisClientHandler)initWithXPCConnection:(id)a3
{
  v5 = a3;
  v25.receiver = self;
  v25.super_class = VCPRealTimeAnalysisClientHandler;
  v6 = [(VCPRealTimeAnalysisClientHandler *)&v25 init];
  if (v6)
  {
    v7 = VCPTransactionWithName(@"VCPRealTimeAnalysisClientHandler");
    transaction = v6->_transaction;
    v6->_transaction = v7;

    objc_storeStrong(&v6->_connection, a3);
    [(NSXPCConnection *)v6->_connection setExportedObject:v6];
    connection = v6->_connection;
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___VCPRealTimeAnalysisServerProtocol];
    [(NSXPCConnection *)connection setExportedInterface:v10];

    v11 = v6->_connection;
    v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___VCPRealTimeAnalysisClientProtocol];
    [(NSXPCConnection *)v11 setRemoteObjectInterface:v12];

    [(NSXPCConnection *)v6->_connection setInterruptionHandler:&stru_1002889B8];
    objc_initWeak(&location, v6);
    v13 = v6->_connection;
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_1001BABE0;
    v22 = &unk_100282A30;
    objc_copyWeak(&v23, &location);
    [(NSXPCConnection *)v13 setInvalidationHandler:&v19];
    v14 = [(NSXPCConnection *)v6->_connection remoteObjectProxy:v19];
    clientProxy = v6->_clientProxy;
    v6->_clientProxy = v14;

    v6->_totalFaceDetectedFrames = 0;
    v16 = objc_alloc_init(MADScopedWatchdog);
    scopedWatchdog = v6->_scopedWatchdog;
    v6->_scopedWatchdog = v16;

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v6;
}

+ (id)clientHandlerWithXPCConnection:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithXPCConnection:v3];

  return v4;
}

- (void)requestAnalysis:(unint64_t)a3 ofIOSurface:(id)a4 withProperties:(id)a5 withReply:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (MediaAnalysisLogLevel() >= 7)
  {
    v13 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v13))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "Received frame analysis request (%x)", buf, 8u);
    }
  }

  *buf = 0;
  v14 = +[NSMutableDictionary dictionary];
  if (!a3)
  {
    goto LABEL_39;
  }

  v15 = CVPixelBufferCreateWithIOSurface(kCFAllocatorDefault, v10, 0, buf);
  if (!v15)
  {
    if (a3)
    {
      contentAnalysis = self->_contentAnalysis;
      if (!contentAnalysis)
      {
        v20 = +[VCPContentAnalysis contentAnalysis];
        v21 = self->_contentAnalysis;
        self->_contentAnalysis = v20;

        contentAnalysis = self->_contentAnalysis;
        if (!contentAnalysis)
        {
          if (MediaAnalysisLogLevel() < 3)
          {
            goto LABEL_36;
          }

          v27 = VCPLogToOSLogType[3];
          if (!os_log_type_enabled(&_os_log_default, v27))
          {
            goto LABEL_36;
          }

          *v32 = 0;
          v28 = "Failed to create content analysis";
          goto LABEL_35;
        }
      }

      *v32 = 0;
      v15 = [(VCPContentAnalysis *)contentAnalysis detectPixelBuffer:*buf contentType:v32];
      if (v15)
      {
        if (MediaAnalysisLogLevel() < 3)
        {
          goto LABEL_40;
        }

        v16 = VCPLogToOSLogType[3];
        if (!os_log_type_enabled(&_os_log_default, v16))
        {
          goto LABEL_40;
        }

        LOWORD(v31) = 0;
        v17 = "Content analysis failed";
        goto LABEL_17;
      }

      v22 = [NSNumber numberWithUnsignedInteger:*v32];
      [v14 setObject:v22 forKeyedSubscript:VCPContentTypeKey];
    }

    if ((a3 & 4) == 0)
    {
      goto LABEL_39;
    }

    if (self->_priorityAnalysis || (+[VCPPriorityAnalysis priorityAnalysis], v23 = objc_claimAutoreleasedReturnValue(), priorityAnalysis = self->_priorityAnalysis, self->_priorityAnalysis = v23, priorityAnalysis, self->_priorityAnalysis))
    {
      *v32 = 0;
      if (v11)
      {
        totalFaceDetectedFrames = self->_totalFaceDetectedFrames;
        self->_totalFaceDetectedFrames = totalFaceDetectedFrames + 1;
        v26 = 0.0;
        if (totalFaceDetectedFrames >= 5)
        {
          v15 = [(VCPPriorityAnalysis *)self->_priorityAnalysis calculatePriorityScore:v32 ofPixelBuffer:*buf withMetadata:v11, 0.0];
          if (v15)
          {
            if (MediaAnalysisLogLevel() < 3)
            {
              goto LABEL_40;
            }

            v16 = VCPLogToOSLogType[3];
            if (!os_log_type_enabled(&_os_log_default, v16))
            {
              goto LABEL_40;
            }

            LOWORD(v31) = 0;
            v17 = "Priority score calculation failed";
LABEL_17:
            v18 = &v31;
            goto LABEL_9;
          }

          LODWORD(v26) = *v32;
        }
      }

      else
      {
        self->_totalFaceDetectedFrames = 0;
        v26 = 0.0;
      }

      v29 = [NSNumber numberWithFloat:v26];
      [v14 setObject:v29 forKeyedSubscript:VCPPriorityScoreKey];

LABEL_39:
      v15 = 0;
      goto LABEL_40;
    }

    if (MediaAnalysisLogLevel() < 3 || (v27 = VCPLogToOSLogType[3], !os_log_type_enabled(&_os_log_default, v27)))
    {
LABEL_36:
      v15 = -18;
      goto LABEL_40;
    }

    *v32 = 0;
    v28 = "Failed to create VCPPriorityAnalysis instance";
LABEL_35:
    _os_log_impl(&_mh_execute_header, &_os_log_default, v27, v28, v32, 2u);
    goto LABEL_36;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v16 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v16))
    {
      *v32 = 0;
      v17 = "Failed to obtain CVPixelBufferRef from IOSurface";
      v18 = v32;
LABEL_9:
      _os_log_impl(&_mh_execute_header, &_os_log_default, v16, v17, v18, 2u);
    }
  }

LABEL_40:
  if (*buf)
  {
    CFRelease(*buf);
  }

  if (v15)
  {
    v30 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v15 userInfo:0];
    v12[2](v12, 0, v30);
  }

  else
  {
    (v12)[2](v12, v14, 0);
  }

  [(MADScopedWatchdog *)self->_scopedWatchdog pet];
}

@end