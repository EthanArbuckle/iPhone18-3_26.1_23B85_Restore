@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___HRTFEnrollmentServiceProtocol];
  [connectionCopy setExportedInterface:v7];

  v8 = [[HRTFEnrollmentService alloc] initWithConnection:connectionCopy];
  [connectionCopy setExportedObject:v8];
  v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___HRTFEnrollmentNotificationProtocol];
  [connectionCopy setRemoteObjectInterface:v9];

  remoteObjectProxy = [connectionCopy remoteObjectProxy];
  if (!remoteObjectProxy)
  {
    sub_1000085A0();
  }

  [connectionCopy resume];
  if (qword_100016490 != -1)
  {
    sub_10000858C();
  }

  v11 = qword_100016488;
  if (os_log_type_enabled(qword_100016488, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v14[0] = 67109120;
    v14[1] = [connectionCopy processIdentifier];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "New XPC connection started from Preferences:%d\n", v14, 8u);
  }

  return 1;
}

@end