@interface CtrClientSysdiag
- (BOOL)generateThreadDiagnosticsMonitorLogs;
- (id)init:(const char *)a3;
@end

@implementation CtrClientSysdiag

- (id)init:(const char *)a3
{
  v8.receiver = self;
  v8.super_class = CtrClientSysdiag;
  v4 = [(CtrClientSysdiag *)&v8 init];
  if (v4)
  {
    v5 = [[CtrClient alloc] init:a3];
    ctrClient = v4->ctrClient;
    v4->ctrClient = v5;
  }

  return v4;
}

- (BOOL)generateThreadDiagnosticsMonitorLogs
{
  [(CtrClient *)self->ctrClient generateThreadDiagnosticsMonitorLogs];
  if (v4 < 0)
  {
    operator delete(__p);
  }

  return 1;
}

@end