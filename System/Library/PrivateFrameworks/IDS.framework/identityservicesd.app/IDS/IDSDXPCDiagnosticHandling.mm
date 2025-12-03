@interface IDSDXPCDiagnosticHandling
- (IDSDXPCDiagnosticHandling)initWithQueue:(id)queue connection:(id)connection;
- (void)dumpDiagnosticsToReceiver:(id)receiver;
@end

@implementation IDSDXPCDiagnosticHandling

- (IDSDXPCDiagnosticHandling)initWithQueue:(id)queue connection:(id)connection
{
  queueCopy = queue;
  connectionCopy = connection;
  if ([connectionCopy hasEntitlement:kIDSTestToolEntitlement])
  {
    v14.receiver = self;
    v14.super_class = IDSDXPCDiagnosticHandling;
    v9 = [(IDSDXPCDiagnosticHandling *)&v14 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_queue, queue);
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    v12 = +[IMRGLog warning];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Missing entitlement -- failing creation of IDSDXPCDiagnosticHandling collaborator {connection: %@}", buf, 0xCu);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dumpDiagnosticsToReceiver:(id)receiver
{
  receiverCopy = receiver;
  v4 = +[IDSDiagnosticInfoHandler sharedInstance];
  [v4 dumpDiagnosticsToReceiver:receiverCopy];
}

@end