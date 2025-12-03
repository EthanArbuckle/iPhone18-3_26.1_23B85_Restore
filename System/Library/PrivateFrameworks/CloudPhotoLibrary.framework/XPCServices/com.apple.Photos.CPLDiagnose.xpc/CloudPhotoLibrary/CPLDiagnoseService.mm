@interface CPLDiagnoseService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CPLDiagnoseService)init;
- (id)_hardwareString;
- (id)_stringForSysctlKey:(id)key;
- (id)applicationIdentifierForConnection:(id)connection;
- (id)diagnosticFilename:(BOOL)filename;
- (unsigned)takeUserIdlePowerAssertionWithInterval:(double)interval;
- (void)checkStateWithReplyHandler:(id)handler;
- (void)didInvalidateClientConnectionWithIdentifier:(id)identifier;
- (void)notifyClientsStateChangedOnQueue;
- (void)releasePowerAssertion:(unsigned int)assertion;
- (void)runDiagnoseWithOptions:(id)options replyHandler:(id)handler;
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

- (id)_stringForSysctlKey:(id)key
{
  v5 = 256;
  if (sysctlbyname([key UTF8String], v6, &v5, 0, 0))
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

- (id)diagnosticFilename:(BOOL)filename
{
  v14.tv_sec = 0;
  *&v14.tv_usec = 0;
  memset(&v13, 0, sizeof(v13));
  gettimeofday(&v14, 0);
  v5 = localtime_r(&v14.tv_sec, &v13);
  strftime_l(v15, 0x28uLL, "%Y%m%d-%H%M%S", v5, 0);
  if (filename)
  {
    v6 = &stru_100035A18;
  }

  else
  {
    v6 = CPLDiagnosticsNoDatabases;
  }

  _hardwareString = [(CPLDiagnoseService *)self _hardwareString];
  v8 = +[CPLDiagnoseCommand diagnosticExtension];
  if ([_hardwareString length])
  {
    v9 = [_hardwareString stringByReplacingOccurrencesOfString:@" withString:{", @"-"}];

    v10 = [NSString stringWithFormat:@"%@-%@-T%s%@", CPLDiagnosticsName, v9, v15, v6, *&v13.tm_sec, *&v13.tm_hour, *&v13.tm_mon, *&v13.tm_wday, *&v13.tm_isdst, v13.tm_gmtoff, v13.tm_zone];
    _hardwareString = v9;
  }

  else
  {
    v10 = [NSString stringWithFormat:@"%@-T%s%@", CPLDiagnosticsName, v15, v6];
  }

  v11 = [v10 stringByAppendingPathExtension:v8];

  return v11;
}

- (void)runDiagnoseWithOptions:(id)options replyHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  v7 = [optionsCopy objectForKeyedSubscript:@"LibraryURL"];
  v8 = [optionsCopy objectForKeyedSubscript:@"DiagnosticBundleID"];
  v9 = [optionsCopy objectForKeyedSubscript:@"IncludeDatabases"];
  v10 = v9;
  if (v9)
  {
    bOOLValue = [v9 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  v12 = [optionsCopy objectForKeyedSubscript:@"IncludeSysdiagnose"];
  bOOLValue2 = [v12 BOOLValue];

  v14 = [optionsCopy objectForKeyedSubscript:@"ExcludeSPLAndSyndication"];
  bOOLValue3 = [v14 BOOLValue];

  [(CPLDiagnoseService *)self runDiagnoseWithLibraryURL:v7 bundleID:v8 outputDirectoryURL:0 includeDatabases:bOOLValue includeSysdiagnose:bOOLValue2 excludeSPLAndSyndication:bOOLValue3 replyHandler:handlerCopy];
}

- (void)checkStateWithReplyHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001C460;
  v7[3] = &unk_100035020;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
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

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [connectionCopy valueForEntitlement:@"com.apple.private.Photos.CPLDiagnose"];
  bOOLValue = [v8 BOOLValue];

  if (bOOLValue)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "validated connection", buf, 2u);
    }

    v10 = +[NSUUID UUID];
    uUIDString = [v10 UUIDString];

    v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CPLDiagnoseServiceProtocol];
    [connectionCopy setExportedInterface:v12];

    v38[0] = objc_opt_class();
    v38[1] = objc_opt_class();
    v38[2] = objc_opt_class();
    v38[3] = objc_opt_class();
    v13 = [NSArray arrayWithObjects:v38 count:4];
    v14 = [NSSet setWithArray:v13];

    exportedInterface = [connectionCopy exportedInterface];
    [exportedInterface setClasses:v14 forSelector:"runDiagnoseWithOptions:replyHandler:" argumentIndex:0 ofReply:0];

    v16 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CPLDiagnoseServiceClientProtocol];
    [connectionCopy setRemoteObjectInterface:v16];

    [connectionCopy setExportedObject:self];
    v36 = @"connectionIdentifier";
    v37 = uUIDString;
    v17 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    [connectionCopy setUserInfo:v17];

    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001C950;
    block[3] = &unk_1000350F8;
    block[4] = self;
    v19 = connectionCopy;
    v34 = v19;
    v20 = uUIDString;
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
    v22 = [(CPLDiagnoseService *)self applicationIdentifierForConnection:connectionCopy];
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

  return bOOLValue;
}

- (void)didInvalidateClientConnectionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001CA74;
  v7[3] = &unk_100035588;
  v8 = identifierCopy;
  selfCopy = self;
  v6 = identifierCopy;
  dispatch_barrier_async(queue, v7);
}

- (id)applicationIdentifierForConnection:(id)connection
{
  connectionCopy = connection;
  if (qword_100040C50 != -1)
  {
    sub_10001EDA4();
  }

  v4 = [connectionCopy valueForEntitlement:@"application-identifier"];
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

- (unsigned)takeUserIdlePowerAssertionWithInterval:(double)interval
{
  AssertionID = 0;
  v4 = IOPMAssertionCreateWithDescription(@"PreventUserIdleSystemSleep", CPLDiagnosticsService, @"PhotosDiagnostics gathering diagnostics", 0, 0, interval, @"TimeoutActionTurnOff", &AssertionID);
  result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (result)
    {
      *buf = 67109120;
      LODWORD(intervalCopy) = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "failed to take power assertion: %d", buf, 8u);
      return 0;
    }
  }

  else
  {
    if (result)
    {
      *buf = 134217984;
      intervalCopy = interval;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "taking power assertion for %.0fsec", buf, 0xCu);
    }

    return AssertionID;
  }

  return result;
}

- (void)releasePowerAssertion:(unsigned int)assertion
{
  if (assertion)
  {
    IOPMAssertionRelease(assertion);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "release power assertion", v3, 2u);
    }
  }
}

@end