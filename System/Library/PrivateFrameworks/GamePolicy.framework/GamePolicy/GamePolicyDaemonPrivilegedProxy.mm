@interface GamePolicyDaemonPrivilegedProxy
- (void)updateStatus:(id)status :(id)a4 :(id)a5 :(id)a6;
@end

@implementation GamePolicyDaemonPrivilegedProxy

- (void)updateStatus:(id)status :(id)a4 :(id)a5 :(id)a6
{
  statusCopy = status;
  v11 = a4;
  v12 = a5;
  v13 = a6;

  sub_24E5CF838(status, a4, a5, a6);
}

@end