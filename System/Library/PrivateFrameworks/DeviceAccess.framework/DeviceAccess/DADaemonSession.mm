@interface DADaemonSession
- (DADaemonSession)init;
@end

@implementation DADaemonSession

- (DADaemonSession)init
{
  v6.receiver = self;
  v6.super_class = DADaemonSession;
  v2 = [(DASession *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

@end