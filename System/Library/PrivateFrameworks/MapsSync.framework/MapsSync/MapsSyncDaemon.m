@interface MapsSyncDaemon
- (BOOL)willPerformRecoveryForError:(id)a3 fromContext:(id)a4;
- (id)identifierForConnection:(id)a3;
@end

@implementation MapsSyncDaemon

- (BOOL)willPerformRecoveryForError:(id)a3 fromContext:(id)a4
{
  v5 = a4;

  v6 = a3;
  LOBYTE(a3) = _s9mapssyncd14MapsSyncDaemonC19willPerformRecovery8forError4fromSbs0I0_pSg_So33NSXPCStoreServerConnectionContextCSgtF_0();

  return a3 & 1;
}

- (id)identifierForConnection:(id)a3
{
  v3 = sub_100028F78();

  return v3;
}

@end