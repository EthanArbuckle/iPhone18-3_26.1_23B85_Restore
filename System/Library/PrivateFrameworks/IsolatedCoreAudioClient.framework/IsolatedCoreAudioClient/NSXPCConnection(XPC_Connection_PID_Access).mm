@interface NSXPCConnection(XPC_Connection_PID_Access)
+ (uint64_t)getPIDFromCurrentConnection;
- (uint64_t)getProcessID;
@end

@implementation NSXPCConnection(XPC_Connection_PID_Access)

- (uint64_t)getProcessID
{
  if (!self)
  {
    return 0xFFFFFFFFLL;
  }

  [self auditToken];
  return audit_token_to_pid(&v2);
}

+ (uint64_t)getPIDFromCurrentConnection
{
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  getProcessID = [currentConnection getProcessID];

  return getProcessID;
}

@end