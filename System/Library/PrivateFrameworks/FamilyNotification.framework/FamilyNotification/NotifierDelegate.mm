@interface NotifierDelegate
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)start;
@end

@implementation NotifierDelegate

+ (id)sharedInstance
{
  if (qword_10000D8A0 != -1)
  {
    sub_1000035DC();
  }

  v3 = qword_10000D898;

  return v3;
}

- (void)start
{
  v3 = +[NotificationController sharedController];
  [v3 start];

  v4 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.familynotification.agent"];
  listener = self->_listener;
  self->_listener = v4;

  [(NSXPCListener *)self->_listener setDelegate:self];
  v6 = self->_listener;

  [(NSXPCListener *)v6 resume];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FAFamilyNotifierAgentProtocol];
  v6 = objc_opt_class();
  v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
  [v5 setClasses:v7 forSelector:"pendingNotificationsWithIdentifier:replyBlock:" argumentIndex:0 ofReply:1];

  [connectionCopy setExportedInterface:v5];
  v8 = [[NotifierInterface alloc] initWithXPCConnection:connectionCopy];
  [connectionCopy setExportedObject:v8];
  [connectionCopy resume];

  return 1;
}

@end