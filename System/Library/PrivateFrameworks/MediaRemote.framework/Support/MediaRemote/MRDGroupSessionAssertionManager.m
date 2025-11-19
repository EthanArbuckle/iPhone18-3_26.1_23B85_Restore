@interface MRDGroupSessionAssertionManager
- (BOOL)isAsserting;
- (MRDGroupSessionAssertionManager)init;
- (NSString)debugDescription;
- (id)createAssertionWithReason:(id)a3;
- (void)addObserver:(id)a3;
- (void)collectDiagnostic:(id)a3;
- (void)createAssertionWithReason:(id)a3 duration:(double)a4;
- (void)removeObserver:(id)a3;
@end

@implementation MRDGroupSessionAssertionManager

- (NSString)debugDescription
{
  swift_getObjectType();
  v3 = *(&self->super.isa + OBJC_IVAR___MRDGroupSessionAssertionManager_lock);
  v4 = self;
  os_unfair_lock_lock(v3 + 4);
  sub_10037B0CC(&v7);
  os_unfair_lock_unlock(v3 + 4);

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

- (BOOL)isAsserting
{
  v2 = *(&self->super.isa + OBJC_IVAR___MRDGroupSessionAssertionManager_lock);
  v3 = self;
  os_unfair_lock_lock(v2 + 4);
  sub_10037B0B4(&v6);
  os_unfair_lock_unlock(v2 + 4);
  v4 = v6;

  return v4;
}

- (void)createAssertionWithReason:(id)a3 duration:(double)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = self;
  sub_100378368(v6, v8, a4);
}

- (id)createAssertionWithReason:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8 = sub_1003785A0(v4, v6);

  return v8;
}

- (void)addObserver:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___MRDGroupSessionAssertionManager_lock);
  swift_unknownObjectRetain();
  v5 = self;
  os_unfair_lock_lock(v4 + 4);
  sub_100006E8C();
  os_unfair_lock_unlock(v4 + 4);
  swift_unknownObjectRelease();
}

- (void)removeObserver:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___MRDGroupSessionAssertionManager_lock);
  swift_unknownObjectRetain();
  v5 = self;
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

- (void)collectDiagnostic:(id)a3
{
  if (a3)
  {
    v6 = self;
    v4 = a3;
    v5 = [(MRDGroupSessionAssertionManager *)v6 debugDescription];
    [v4 setGroupSessionAssertionManagerState:v5];
  }

  else
  {
    __break(1u);
  }
}

@end