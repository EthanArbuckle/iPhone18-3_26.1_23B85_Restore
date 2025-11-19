@interface IDSDXPCDiagnosticHandling
- (IDSDXPCDiagnosticHandling)initWithQueue:(id)a3 connection:(id)a4;
- (void)dumpDiagnosticsToReceiver:(id)a3;
@end

@implementation IDSDXPCDiagnosticHandling

- (IDSDXPCDiagnosticHandling)initWithQueue:(id)a3 connection:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v8 hasEntitlement:kIDSTestToolEntitlement])
  {
    v14.receiver = self;
    v14.super_class = IDSDXPCDiagnosticHandling;
    v9 = [(IDSDXPCDiagnosticHandling *)&v14 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_queue, a3);
    }

    self = v10;
    v11 = self;
  }

  else
  {
    v12 = +[IMRGLog warning];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Missing entitlement -- failing creation of IDSDXPCDiagnosticHandling collaborator {connection: %@}", buf, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

- (void)dumpDiagnosticsToReceiver:(id)a3
{
  v3 = a3;
  v4 = +[IDSDiagnosticInfoHandler sharedInstance];
  [v4 dumpDiagnosticsToReceiver:v3];
}

@end