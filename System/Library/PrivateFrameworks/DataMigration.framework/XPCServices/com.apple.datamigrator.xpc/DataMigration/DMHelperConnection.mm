@interface DMHelperConnection
- (DMHelperConnection)init;
- (void)invalidate;
- (void)panicWithMessage:(id)message;
- (void)performLoggingWork;
- (void)reboot;
- (void)resume;
@end

@implementation DMHelperConnection

- (DMHelperConnection)init
{
  v5.receiver = self;
  v5.super_class = DMHelperConnection;
  v2 = [(DMHelperConnection *)&v5 init];
  if (v2)
  {
    v3 = [[DMXPCConnection alloc] initWithServiceName:@"com.apple.datamigratorhelper"];
    [(DMHelperConnection *)v2 setConnection:v3];
  }

  return v2;
}

- (void)resume
{
  connection = [(DMHelperConnection *)self connection];
  [connection resume];
}

- (void)invalidate
{
  connection = [(DMHelperConnection *)self connection];
  [connection invalidate];
}

- (void)panicWithMessage:(id)message
{
  messageCopy = message;
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(xdict, "eventID", 1);
  uTF8String = [messageCopy UTF8String];

  xpc_dictionary_set_string(xdict, "message", uTF8String);
  connection = [(DMHelperConnection *)self connection];
  v7 = [connection sendMessageSync:xdict];
}

- (void)reboot
{
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v5, "eventID", 2);
  connection = [(DMHelperConnection *)self connection];
  v4 = [connection sendMessageSync:v5];
}

- (void)performLoggingWork
{
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v5, "eventID", 3);
  connection = [(DMHelperConnection *)self connection];
  v4 = [connection sendMessageSync:v5];
}

@end