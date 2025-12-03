@interface CoreRepairCoreXPCService
- (void)generateRepairReport:(id)report withReply:(id)reply;
@end

@implementation CoreRepairCoreXPCService

- (void)generateRepairReport:(id)report withReply:(id)reply
{
  replyCopy = reply;
  v7 = [CRRepairReport generateReport:report error:0];
  (*(reply + 2))(replyCopy, v7);
}

@end