@interface CPLDiagnoseService
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (CPLDiagnoseService)init;
- (id)_hardwareString;
- (id)_stringForSysctlKey:(id)a3;
- (id)applicationIdentifierForConnection:(id)a3;
- (id)diagnosticFilename:(BOOL)a3;
- (unsigned)takeUserIdlePowerAssertionWithInterval:(double)a3;
- (void)checkStateWithReplyHandler:(id)a3;
- (void)didInvalidateClientConnectionWithIdentifier:(id)a3;
- (void)notifyClientsStateChangedOnQueue;
- (void)releasePowerAssertion:(unsigned int)a3;
- (void)runDiagnoseWithOptions:(id)a3 replyHandler:(id)a4;
@end

@implementation CPLDiagnoseService

- (CPLDiagnoseService)init
{
  v9.receiver = self;
  v9.super_class = CPLDiagnoseService;
  v2 = [(CPLDiagnoseService *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_state = 0;
    v4 = dispatch_queue_create("CPLDiagnose.queue", &_dispatch_queue_attr_concurrent);
    queue = v3->_queue;
    v3->_queue = v4;

    v6 = objc_alloc_init(NSMutableDictionary);
    clientsByIdentifier = v3->_clientsByIdentifier;
    v3->_clientsByIdentifier = v6;
  }

  return v3;
}

- (id)_stringForSysctlKey:(id)a3
{
  v5 = 256;
  if (sysctlbyname([a3 UTF8String], v6, &v5, 0, 0))
  {
    v3 = @"UNKNOWN";
  }

  else
  {
    v6[v5 - 1] = 0;
    v3 = [NSString stringWithUTF8String:v6];
  }

  return v3;
}

- (id)_hardwareString
{
  if (qword_100040C40 != -1)
  {
    sub_10001ECB0();
  }

  v3 = qword_100040C38;

  return v3;
}

- (id)diagnosticFilename:(BOOL)a3
{
  v14.tv_sec = 0;
  *&v14.tv_usec = 0;
  memset(&v13, 0, sizeof(v13));
  gettimeofday(&v14, 0);
  v5 = localtime_r(&v14.tv_sec, &v13);
  strftime_l(v15, 0x28uLL, "%Y%m%d-%H%M%S", v5, 0);
  if (a3)
  {
    v6 = &stru_100035A18;
  }

  else
  {
    v6 = CPLDiagnosticsNoDatabases;
  }

  v7 = [(CPLDiagnoseService *)self _hardwareString];
  v8 = +[CPLDiagnoseCommand diagnosticExtension];
  if ([v7 length])
  {
    v9 = [v7 stringByReplacingOccurrencesOfString:@" withString:{", @"-"}];

    v10 = [NSString stringWithFormat:@"%@-%@-T%s%@", CPLDiagnosticsName, v9, v15, v6, *&v13.tm_sec, *&v13.tm_hour, *&v13.tm_mon, *&v13.tm_wday, *&v13.tm_isdst, v13.tm_gmtoff, v13.tm_zone];
    v7 = v9;
  }

  else
  {
    v10 = [NSString stringWithFormat:@"%@-T%s%@", CPLDiagnosticsName, v15, v6];
  }

  v11 = [v10 stringByAppendingPathExtension:v8];

  return v11;
}

- (void)runDiagnoseWithOptions:(id)a3 replyHandler:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [v16 objectForKeyedSubscript:@"LibraryURL"];
  v8 = [v16 objectForKeyedSubscript:@"DiagnosticBundleID"];
  v9 = [v16 objectForKeyedSubscript:@"IncludeDatabases"];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 BOOLValue];
  }

  else
  {
    v11 = 1;
  }

  v12 = [v16 objectForKeyedSubscript:@"IncludeSysdiagnose"];
  v13 = [v12 BOOLValue];

  v14 = [v16 objectForKeyedSubscript:@"ExcludeSPLAndSyndication"];
  v15 = [v14 BOOLValue];

  [(CPLDiagnoseService *)self runDiagnoseWithLibraryURL:v7 bundleID:v8 outputDirectoryURL:0 includeDatabases:v11 includeSysdiagnose:v13 excludeSPLAndSyndication:v15 replyHandler:v6];
}

- (void)checkStateWithReplyHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001C460;
  v7[3] = &unk_100035020;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)notifyClientsStateChangedOnQueue
{
  dispatch_assert_queue_V2(self->_queue);
  clientsByIdentifier = self->_clientsByIdentifier;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001C4FC;
  v4[3] = &unk_1000355B0;
  v4[4] = self;
  [(NSMutableDictionary *)clientsByIdentifier enumerateKeysAndObjectsUsingBlock:v4];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 valueForEntitlement:@"com.apple.private.Photos.CPLDiagnose"];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "validated connection", buf, 2u);
    }

    v10 = +[NSUUID UUID];
    v11 = [v10 UUIDString];

    v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CPLDiagnoseServiceProtocol];
    [v7 setExportedInterface:v12];

    v38[0] = objc_opt_class();
    v38[1] = objc_opt_class();
    v38[2] = objc_opt_class();
    v38[3] = objc_opt_class();
    v13 = [NSArray arrayWithObjects:v38 count:4];
    v14 = [NSSet setWithArray:v13];

    v15 = [v7 exportedInterface];
    [v15 setClasses:v14 forSelector:"runDiagnoseWithOptions:replyHandler:" argumentIndex:0 ofReply:0];

    v16 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CPLDiagnoseServiceClientProtocol];
    [v7 setRemoteObjectInterface:v16];

    [v7 setExportedObject:self];
    v36 = @"connectionIdentifier";
    v37 = v11;
    v17 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    [v7 setUserInfo:v17];

    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001C950;
    block[3] = &unk_1000350F8;
    block[4] = self;
    v19 = v7;
    v34 = v19;
    v20 = v11;
    v35 = v20;
    dispatch_barrier_sync(queue, block);
    objc_initWeak(buf, self);
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_10001C988;
    v29 = &unk_1000355D8;
    objc_copyWeak(&v31, buf);
    v21 = v20;
    v30 = v21;
    [v19 setInvalidationHandler:&v26];
    [v19 resume];

    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);
  }

  else
  {
    v22 = [(CPLDiagnoseService *)self applicationIdentifierForConnection:v7];
    v23 = v22;
    v24 = @"anonymous";
    if (v22)
    {
      v24 = v22;
    }

    v21 = v24;

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10001ED34();
    }
  }

  return v9;
}

- (void)didInvalidateClientConnectionWithIdentifier:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001CA74;
  v7[3] = &unk_100035588;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_barrier_async(queue, v7);
}

- (id)applicationIdentifierForConnection:(id)a3
{
  v3 = a3;
  if (qword_100040C50 != -1)
  {
    sub_10001EDA4();
  }

  v4 = [v3 valueForEntitlement:@"application-identifier"];
  v5 = v4;
  if (!v4 || [v4 hasPrefix:@"com.apple."])
  {
    v6 = v5;
    goto LABEL_14;
  }

  v7 = [qword_100040C48 matchesInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}];
  if ([v7 count] != 1)
  {
    goto LABEL_10;
  }

  v8 = [v7 objectAtIndex:0];
  if ([v8 numberOfRanges] != 2)
  {

LABEL_10:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10001EDB8();
    }

    v6 = 0;
    goto LABEL_13;
  }

  v9 = [v8 rangeAtIndex:1];
  v6 = [v5 substringWithRange:{v9, v10}];

LABEL_13:
LABEL_14:

  return v6;
}

- (unsigned)takeUserIdlePowerAssertionWithInterval:(double)a3
{
  AssertionID = 0;
  v4 = IOPMAssertionCreateWithDescription(@"PreventUserIdleSystemSleep", CPLDiagnosticsService, @"PhotosDiagnostics gathering diagnostics", 0, 0, a3, @"TimeoutActionTurnOff", &AssertionID);
  result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (result)
    {
      *buf = 67109120;
      LODWORD(v8) = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "failed to take power assertion: %d", buf, 8u);
      return 0;
    }
  }

  else
  {
    if (result)
    {
      *buf = 134217984;
      v8 = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "taking power assertion for %.0fsec", buf, 0xCu);
    }

    return AssertionID;
  }

  return result;
}

- (void)releasePowerAssertion:(unsigned int)a3
{
  if (a3)
  {
    IOPMAssertionRelease(a3);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "release power assertion", v3, 2u);
    }
  }
}

@end