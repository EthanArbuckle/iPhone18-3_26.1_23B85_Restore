@interface IMNetworkMonitor
+ (id)createNetworkMonitorWithRemoteHost:(id)host delegate:(id)delegate allowsUltraConstrainedNetwork:(BOOL)network;
- (BOOL)immediatelyReachable;
- (BOOL)isCellular;
- (BOOL)isReachableFromPath;
- (BOOL)isUltraConstrained;
- (IMNetworkMonitor)init;
- (IMNetworkMonitor)initWithEvaluator:(id)evaluator remoteHost:(id)host delegate:(id)delegate;
- (NSString)remoteHost;
- (id)description;
- (int64_t)attachmentPolicy;
- (void)clear;
@end

@implementation IMNetworkMonitor

+ (id)createNetworkMonitorWithRemoteHost:(id)host delegate:(id)delegate allowsUltraConstrainedNetwork:(BOOL)network
{
  if (host)
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
  v9 = sub_1A85F0920(v6, v8, delegate);
  swift_unknownObjectRelease();

  return v9;
}

- (BOOL)isUltraConstrained
{
  v2 = *(&self->super.isa + OBJC_IVAR___IMNetworkMonitor_state);
  selfCopy = self;

  os_unfair_lock_lock((v2 + 36));
  sub_1A8874764((v2 + 16), &v6);
  os_unfair_lock_unlock((v2 + 36));
  v4 = v6;

  return v4;
}

- (id)description
{
  v2 = *(&self->super.isa + OBJC_IVAR___IMNetworkMonitor_state);
  selfCopy = self;

  os_unfair_lock_lock(v2 + 9);
  sub_1A88746F4(&v2[4], &v6);
  os_unfair_lock_unlock(v2 + 9);

  v4 = sub_1A88C82A8();

  return v4;
}

- (IMNetworkMonitor)initWithEvaluator:(id)evaluator remoteHost:(id)host delegate:(id)delegate
{
  if (host)
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
  return sub_1A85EFC68(evaluator, v7, v9, delegate);
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
  selfCopy = self;
  v3 = sub_1A8873C80();

  return v3 & 1;
}

- (BOOL)isReachableFromPath
{
  v2 = *(&self->super.isa + OBJC_IVAR___IMNetworkMonitor_state);
  selfCopy = self;

  os_unfair_lock_lock((v2 + 36));
  sub_1A8874780((v2 + 16), &v6);
  os_unfair_lock_unlock((v2 + 36));
  v4 = v6;

  return v4;
}

- (BOOL)isCellular
{
  v2 = *(&self->super.isa + OBJC_IVAR___IMNetworkMonitor_state);
  selfCopy = self;

  os_unfair_lock_lock((v2 + 36));
  v4 = MEMORY[0x1AC571370](*(v2 + 16), 2);
  os_unfair_lock_unlock((v2 + 36));

  return v4;
}

- (void)clear
{
  selfCopy = self;
  nw_path_evaluator_cancel();
  swift_unknownObjectWeakAssign();
}

- (int64_t)attachmentPolicy
{
  selfCopy = self;
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