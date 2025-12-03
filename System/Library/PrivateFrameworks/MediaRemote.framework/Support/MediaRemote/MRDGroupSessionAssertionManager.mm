@interface MRDGroupSessionAssertionManager
- (BOOL)isAsserting;
- (MRDGroupSessionAssertionManager)init;
- (NSString)debugDescription;
- (id)createAssertionWithReason:(id)reason;
- (void)addObserver:(id)observer;
- (void)collectDiagnostic:(id)diagnostic;
- (void)createAssertionWithReason:(id)reason duration:(double)duration;
- (void)removeObserver:(id)observer;
@end

@implementation MRDGroupSessionAssertionManager

- (NSString)debugDescription
{
  swift_getObjectType();
  v3 = *(&self->super.isa + OBJC_IVAR___MRDGroupSessionAssertionManager_lock);
  selfCopy = self;
  os_unfair_lock_lock(v3 + 4);
  sub_10037B0CC(&v7);
  os_unfair_lock_unlock(v3 + 4);

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

- (BOOL)isAsserting
{
  v2 = *(&self->super.isa + OBJC_IVAR___MRDGroupSessionAssertionManager_lock);
  selfCopy = self;
  os_unfair_lock_lock(v2 + 4);
  sub_10037B0B4(&v6);
  os_unfair_lock_unlock(v2 + 4);
  v4 = v6;

  return v4;
}

- (void)createAssertionWithReason:(id)reason duration:(double)duration
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  selfCopy = self;
  sub_100378368(v6, v8, duration);
}

- (id)createAssertionWithReason:(id)reason
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1003785A0(v4, v6);

  return v8;
}

- (void)addObserver:(id)observer
{
  v4 = *(&self->super.isa + OBJC_IVAR___MRDGroupSessionAssertionManager_lock);
  swift_unknownObjectRetain();
  selfCopy = self;
  os_unfair_lock_lock(v4 + 4);
  sub_100006E8C();
  os_unfair_lock_unlock(v4 + 4);
  swift_unknownObjectRelease();
}

- (void)removeObserver:(id)observer
{
  v4 = *(&self->super.isa + OBJC_IVAR___MRDGroupSessionAssertionManager_lock);
  swift_unknownObjectRetain();
  selfCopy = self;
  os_unfair_lock_lock(v4 + 4);
  sub_100006E8C();
  os_unfair_lock_unlock(v4 + 4);
  swift_unknownObjectRelease();
}

- (MRDGroupSessionAssertionManager)init
{
  v3 = OBJC_IVAR___MRDGroupSessionAssertionManager_observers;
  *(&self->super.isa + v3) = [objc_opt_self() weakObjectsHashTable];
  v4 = OBJC_IVAR___MRDGroupSessionAssertionManager_assertions;
  *(&self->super.isa + v4) = sub_10037A660(_swiftEmptyArrayStorage);
  v5 = OBJC_IVAR___MRDGroupSessionAssertionManager_lock;
  sub_1001BC5A8(&qword_100528660, &qword_100450550);
  v6 = swift_allocObject();
  *(v6 + 4) = 0;
  *(&self->super.isa + v5) = v6;
  v8.receiver = self;
  v8.super_class = type metadata accessor for GroupSessionAssertionManager();
  return [(MRDGroupSessionAssertionManager *)&v8 init];
}

- (void)collectDiagnostic:(id)diagnostic
{
  if (diagnostic)
  {
    selfCopy = self;
    diagnosticCopy = diagnostic;
    v5 = [(MRDGroupSessionAssertionManager *)selfCopy debugDescription];
    [diagnosticCopy setGroupSessionAssertionManagerState:v5];
  }

  else
  {
    __break(1u);
  }
}

@end