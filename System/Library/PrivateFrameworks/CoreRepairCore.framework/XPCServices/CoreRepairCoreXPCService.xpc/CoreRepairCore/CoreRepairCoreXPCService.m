@interface CoreRepairCoreXPCService
- (void)generateRepairReport:(id)a3 withReply:(id)a4;
@end

@implementation CoreRepairCoreXPCService

- (void)generateRepairReport:(id)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = [CRRepairReport generateReport:a3 error:0];
  (*(a4 + 2))(v6, v7);
}

@end