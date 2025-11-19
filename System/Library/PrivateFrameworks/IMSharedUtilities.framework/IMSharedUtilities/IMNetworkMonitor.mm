@interface IMNetworkMonitor
+ (id)createNetworkMonitorWithRemoteHost:(id)a3 delegate:(id)a4 allowsUltraConstrainedNetwork:(BOOL)a5;
- (BOOL)immediatelyReachable;
- (BOOL)isCellular;
- (BOOL)isReachableFromPath;
- (BOOL)isUltraConstrained;
- (IMNetworkMonitor)init;
- (IMNetworkMonitor)initWithEvaluator:(id)a3 remoteHost:(id)a4 delegate:(id)a5;
- (NSString)remoteHost;
- (id)description;
- (int64_t)attachmentPolicy;
- (void)clear;
@end

@implementation IMNetworkMonitor

+ (id)createNetworkMonitorWithRemoteHost:(id)a3 delegate:(id)a4 allowsUltraConstrainedNetwork:(BOOL)a5
{
  if (a3)
  {
    v6 = sub_1A88C82E8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  v9 = sub_1A85F0920(v6, v8, a4);
  swift_unknownObjectRelease();

  return v9;
}

- (BOOL)isUltraConstrained
{
  v2 = *(&self->super.isa + OBJC_IVAR___IMNetworkMonitor_state);
  v3 = self;

  os_unfair_lock_lock((v2 + 36));
  sub_1A8874764((v2 + 16), &v6);
  os_unfair_lock_unlock((v2 + 36));
  v4 = v6;

  return v4;
}

- (id)description
{
  v2 = *(&self->super.isa + OBJC_IVAR___IMNetworkMonitor_state);
  v3 = self;

  os_unfair_lock_lock(v2 + 9);
  sub_1A88746F4(&v2[4], &v6);
  os_unfair_lock_unlock(v2 + 9);

  v4 = sub_1A88C82A8();

  return v4;
}

- (IMNetworkMonitor)initWithEvaluator:(id)a3 remoteHost:(id)a4 delegate:(id)a5
{
  if (a4)
  {
    v7 = sub_1A88C82E8();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_1A85EFC68(a3, v7, v9, a5);
}

- (NSString)remoteHost
{
  if (*&self->queue[OBJC_IVAR___IMNetworkMonitor_host])
  {

    v2 = sub_1A88C82A8();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)immediatelyReachable
{
  v2 = self;
  v3 = sub_1A8873C80();

  return v3 & 1;
}

- (BOOL)isReachableFromPath
{
  v2 = *(&self->super.isa + OBJC_IVAR___IMNetworkMonitor_state);
  v3 = self;

  os_unfair_lock_lock((v2 + 36));
  sub_1A8874780((v2 + 16), &v6);
  os_unfair_lock_unlock((v2 + 36));
  v4 = v6;

  return v4;
}

- (BOOL)isCellular
{
  v2 = *(&self->super.isa + OBJC_IVAR___IMNetworkMonitor_state);
  v3 = self;

  os_unfair_lock_lock((v2 + 36));
  v4 = MEMORY[0x1AC571370](*(v2 + 16), 2);
  os_unfair_lock_unlock((v2 + 36));

  return v4;
}

- (void)clear
{
  v2 = self;
  nw_path_evaluator_cancel();
  swift_unknownObjectWeakAssign();
}

- (int64_t)attachmentPolicy
{
  v2 = self;
  v3 = sub_1A8873FB8();

  return v3;
}

- (IMNetworkMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end