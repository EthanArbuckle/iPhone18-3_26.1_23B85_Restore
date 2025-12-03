@interface HMDRemoteConnectivityMonitor
- (BOOL)hasConnectivity;
- (_TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor)init;
- (void)sendMessageFailed;
- (void)sendMessageSucceeded;
- (void)timerDidFire:(id)fire;
- (void)underlyingConnectionChanged:(BOOL)changed;
@end

@implementation HMDRemoteConnectivityMonitor

- (BOOL)hasConnectivity
{
  v2 = (self + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor__hasConnectivity);
  selfCopy = self;
  os_unfair_lock_lock(v2);
  os_unfair_lock_opaque = v2[1]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v2);

  return os_unfair_lock_opaque;
}

- (void)underlyingConnectionChanged:(BOOL)changed
{
  v5 = sub_253CD0888();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(&self->super.isa + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_workQueue);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  selfCopy = self;
  v12 = v10;
  LOBYTE(v10) = sub_253CD08A8();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    *(&selfCopy->super.isa + OBJC_IVAR____TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor_hasUnderlyingConnection) = changed;
    sub_25320D7F8();
  }

  else
  {
    __break(1u);
  }
}

- (void)sendMessageSucceeded
{
  selfCopy = self;
  HMDRemoteConnectivityMonitor.sendMessageSucceeded()();
}

- (void)sendMessageFailed
{
  selfCopy = self;
  HMDRemoteConnectivityMonitor.sendMessageFailed()();
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  selfCopy = self;
  HMDRemoteConnectivityMonitor.timerDidFire(_:)(fireCopy);
}

- (_TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end