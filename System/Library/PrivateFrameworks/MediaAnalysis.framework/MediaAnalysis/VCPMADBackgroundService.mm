@interface VCPMADBackgroundService
+ (int)runWithArgc:(int)argc andArgv:(const char *)argv;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (int)run;
@end

@implementation VCPMADBackgroundService

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = connectionCopy;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    memset(&token, 0, sizeof(token));
  }

  v9 = SecTaskCreateWithAuditToken(0, &token);
  v21 = v9;
  if (v9)
  {
    v10 = SecTaskCopyValueForEntitlement(v9, @"com.apple.mediaanalysisd.service.client", 0);
    *token.val = v10;
    if (v10 && (v11 = CFGetTypeID(v10), v11 == CFBooleanGetTypeID()) && CFEqual(*token.val, kCFBooleanTrue))
    {
      if (self->_listener == listenerCopy)
      {
        v17 = [VCPMADRemoteActivityClientHandler clientHandlerWithXPCConnection:v8];
        if (v17)
        {
          v18 = +[VCPClientManager sharedManager];
          [v18 addClientHandler:v17];

          [v8 resume];
          v14 = 1;
          goto LABEL_17;
        }

        if (MediaAnalysisLogLevel() < 4 || (v12 = VCPLogToOSLogType[4], !os_log_type_enabled(&_os_log_default, v12)))
        {
LABEL_16:
          v14 = 0;
LABEL_17:
          sub_100002CBC(&token);
          goto LABEL_22;
        }

        *v19 = 0;
        v13 = "Failed to add client; dropping connection";
      }

      else
      {
        if (MediaAnalysisLogLevel() < 4)
        {
          goto LABEL_16;
        }

        v12 = VCPLogToOSLogType[4];
        if (!os_log_type_enabled(&_os_log_default, v12))
        {
          goto LABEL_16;
        }

        *v19 = 0;
        v13 = "Unknown service requested; denying connection";
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() < 4)
      {
        goto LABEL_16;
      }

      v12 = VCPLogToOSLogType[4];
      if (!os_log_type_enabled(&_os_log_default, v12))
      {
        goto LABEL_16;
      }

      *v19 = 0;
      v13 = "Client not entitled; denying connection";
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v12, v13, v19, 2u);
    goto LABEL_16;
  }

  if (MediaAnalysisLogLevel() >= 4)
  {
    v15 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v15))
    {
      LOWORD(token.val[0]) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "Failed to query client entitlements; denying connection", &token, 2u);
    }
  }

  v14 = 0;
LABEL_22:
  sub_100002CBC(&v21);

  return v14;
}

- (int)run
{
  v3 = [NSXPCListener alloc];
  v4 = +[VCPMADRemoteActivityClientHandler serviceName];
  v5 = [v3 initWithMachServiceName:v4];
  listener = self->_listener;
  self->_listener = v5;

  [(NSXPCListener *)self->_listener setDelegate:self];
  [(NSXPCListener *)self->_listener resume];
  if (MediaAnalysisLogLevel() >= 5)
  {
    v7 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "Media Analysis Background Service started", v9, 2u);
    }
  }

  CFRunLoopRun();
  return 0;
}

+ (int)runWithArgc:(int)argc andArgv:(const char *)argv
{
  if (argc >= 2)
  {
    if (argc != 2 && MediaAnalysisLogLevel() >= 4)
    {
      v6 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v6))
      {
        *buf = 67109120;
        *&buf[4] = argc;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "Unsupported number of arguments specified (%d); ignoring", buf, 8u);
      }
    }

    if (!strcmp(argv[1], "clamp"))
    {
      *buf = *argv;
      v24 = 0;
      if (MediaAnalysisLogLevel() >= 5)
      {
        v13 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v13))
        {
          *v23 = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "Clamping process to utility QoS", v23, 2u);
        }
      }

      if (posix_spawnattr_init(&v24))
      {
        if (MediaAnalysisLogLevel() < 4)
        {
          goto LABEL_34;
        }

        v14 = VCPLogToOSLogType[4];
        if (!os_log_type_enabled(&_os_log_default, v14))
        {
          goto LABEL_34;
        }

        *v23 = 0;
        v9 = "Failed to clamp process to utility QoS (1)";
      }

      else if (posix_spawnattr_set_qos_clamp_np())
      {
        if (MediaAnalysisLogLevel() < 4)
        {
          goto LABEL_34;
        }

        v14 = VCPLogToOSLogType[4];
        if (!os_log_type_enabled(&_os_log_default, v14))
        {
          goto LABEL_34;
        }

        *v23 = 0;
        v9 = "Failed to clamp process to utility QoS (2)";
      }

      else if (posix_spawnattr_setflags(&v24, 64))
      {
        if (MediaAnalysisLogLevel() < 4)
        {
          goto LABEL_34;
        }

        v14 = VCPLogToOSLogType[4];
        if (!os_log_type_enabled(&_os_log_default, v14))
        {
          goto LABEL_34;
        }

        *v23 = 0;
        v9 = "Failed to clamp process to utility QoS (3)";
      }

      else
      {
        v15 = posix_spawnp(0, *argv, 0, &v24, buf, environ) == 0;
        v16 = MediaAnalysisLogLevel();
        if (v15)
        {
          if (v16 < 5)
          {
            goto LABEL_34;
          }

          v14 = VCPLogToOSLogType[5];
          if (!os_log_type_enabled(&_os_log_default, v14))
          {
            goto LABEL_34;
          }

          *v23 = 0;
          v9 = "Successfully clamped process to utility QoS";
        }

        else
        {
          if (v16 < 4)
          {
            goto LABEL_34;
          }

          v14 = VCPLogToOSLogType[4];
          if (!os_log_type_enabled(&_os_log_default, v14))
          {
            goto LABEL_34;
          }

          *v23 = 0;
          v9 = "Failed to clamp process to utility QoS (4)";
        }
      }

      v10 = v23;
      v11 = v14;
      v12 = 2;
      goto LABEL_33;
    }

    if (MediaAnalysisLogLevel() >= 4)
    {
      v7 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v7))
      {
        v8 = argv[1];
        *buf = 136315138;
        *&buf[4] = v8;
        v9 = "Unknown argument specified (%s); ignoring";
        v10 = buf;
        v11 = v7;
        v12 = 12;
LABEL_33:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v11, v9, v10, v12);
      }
    }
  }

LABEL_34:
  xpc_transactions_enable();
  signal(15, 1);
  v17 = dispatch_get_global_queue(21, 0);
  v18 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v17);
  dispatch_source_set_event_handler(v18, &stru_100286A10);
  dispatch_activate(v18);
  v19 = objc_autoreleasePoolPush();
  v20 = objc_alloc_init(VCPMADBackgroundService);
  v21 = [(VCPMADBackgroundService *)v20 run];

  objc_autoreleasePoolPop(v19);
  return v21 != 0;
}

@end