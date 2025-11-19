@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___HRTFEnrollmentServiceProtocol];
  [v6 setExportedInterface:v7];

  v8 = [[HRTFEnrollmentService alloc] initWithConnection:v6];
  [v6 setExportedObject:v8];
  v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___HRTFEnrollmentNotificationProtocol];
  [v6 setRemoteObjectInterface:v9];

  v10 = [v6 remoteObjectProxy];
  if (!v10)
  {
    sub_1000085A0();
  }

  [v6 resume];
  if (qword_100016490 != -1)
  {
    sub_10000858C();
  }

  v11 = qword_100016488;
  if (os_log_type_enabled(qword_100016488, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v14[0] = 67109120;
    v14[1] = [v6 processIdentifier];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "New XPC connection started from Preferences:%d\n", v14, 8u);
  }

  return 1;
}

@end