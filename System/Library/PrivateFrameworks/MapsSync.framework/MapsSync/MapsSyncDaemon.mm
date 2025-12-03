@interface MapsSyncDaemon
- (BOOL)willPerformRecoveryForError:(id)error fromContext:(id)context;
- (id)identifierForConnection:(id)connection;
@end

@implementation MapsSyncDaemon

- (BOOL)willPerformRecoveryForError:(id)error fromContext:(id)context
{
  contextCopy = context;

  errorCopy = error;
  LOBYTE(error) = _s9mapssyncd14MapsSyncDaemonC19willPerformRecovery8forError4fromSbs0I0_pSg_So33NSXPCStoreServerConnectionContextCSgtF_0();

  return error & 1;
}

- (id)identifierForConnection:(id)connection
{
  v3 = sub_100028F78();

  return v3;
}

@end