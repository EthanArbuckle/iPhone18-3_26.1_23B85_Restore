@interface HMDRemoteConnectivityMonitor
- (BOOL)hasConnectivity;
- (_TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor)init;
- (void)sendMessageFailed;
- (void)sendMessageSucceeded;
- (void)timerDidFire:(id)a3;
- (void)underlyingConnectionChanged:(BOOL)a3;
@end

@implementation HMDRemoteConnectivityMonitor

- (BOOL)hasConnectivity
{
  v2 = (self + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor__hasConnectivity);
  v3 = self;
  os_unfair_lock_lock(v2);
  os_unfair_lock_opaque = v2[1]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v2);

  return os_unfair_lock_opaque;
}

- (void)underlyingConnectionChanged:(BOOL)a3
{
  v5 = sub_22A4DD2FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(&self->super.isa + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_workQueue);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  v11 = self;
  v12 = v10;
  LOBYTE(v10) = sub_22A4DD31C();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    *(&v11->super.isa + OBJC_IVAR____TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor_hasUnderlyingConnection) = a3;
    sub_22967651C();
  }

  else
  {
    __break(1u);
  }
}

- (void)sendMessageSucceeded
{
  v2 = self;
  HMDRemoteConnectivityMonitor.sendMessageSucceeded()();
}

- (void)sendMessageFailed
{
  v2 = self;
  HMDRemoteConnectivityMonitor.sendMessageFailed()();
}

- (void)timerDidFire:(id)a3
{
  v4 = a3;
  v5 = self;
  HMDRemoteConnectivityMonitor.timerDidFire(_:)(v4);
}

- (_TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end