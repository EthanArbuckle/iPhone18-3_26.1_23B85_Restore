@interface DMHelperConnection
- (DMHelperConnection)init;
- (void)invalidate;
- (void)panicWithMessage:(id)a3;
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
  v2 = [(DMHelperConnection *)self connection];
  [v2 resume];
}

- (void)invalidate
{
  v2 = [(DMHelperConnection *)self connection];
  [v2 invalidate];
}

- (void)panicWithMessage:(id)a3
{
  v4 = a3;
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(xdict, "eventID", 1);
  v5 = [v4 UTF8String];

  xpc_dictionary_set_string(xdict, "message", v5);
  v6 = [(DMHelperConnection *)self connection];
  v7 = [v6 sendMessageSync:xdict];
}

- (void)reboot
{
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v5, "eventID", 2);
  v3 = [(DMHelperConnection *)self connection];
  v4 = [v3 sendMessageSync:v5];
}

- (void)performLoggingWork
{
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v5, "eventID", 3);
  v3 = [(DMHelperConnection *)self connection];
  v4 = [v3 sendMessageSync:v5];
}

@end