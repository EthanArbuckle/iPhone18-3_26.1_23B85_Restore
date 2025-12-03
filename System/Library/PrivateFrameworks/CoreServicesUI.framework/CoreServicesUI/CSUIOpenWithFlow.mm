@interface CSUIOpenWithFlow
- (BOOL)isPrepared;
- (BOOL)prepareAndReturnError:(id *)error;
- (CSUIBoundBundleInfo)representativeBundle;
- (CSUIOpenWithFlow)init;
- (CSUIOpenWithFlowDelegate)delegate;
- (id)buildMenuAndReturnError:(id *)error;
- (void)openWithMenuFromConstructor:(id)constructor didSelectBoundBundle:(id)bundle;
- (void)openWithMenuFromConstructorDidSelectAppStoreItem:(id)item;
- (void)setDelegate:(id)delegate;
@end

@implementation CSUIOpenWithFlow

- (CSUIOpenWithFlowDelegate)delegate
{
  v2 = *(&self->super.isa + OBJC_IVAR___CSUIOpenWithFlow_mutableState);
  selfCopy = self;
  os_unfair_lock_lock(v2 + 8);
  Strong = swift_unknownObjectWeakLoadStrong();
  os_unfair_lock_unlock(v2 + 8);

  return Strong;
}

- (void)setDelegate:(id)delegate
{
  v4 = *(&self->super.isa + OBJC_IVAR___CSUIOpenWithFlow_mutableState);
  swift_unknownObjectRetain();
  selfCopy = self;
  os_unfair_lock_lock(v4 + 8);
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v4 + 8);

  swift_unknownObjectRelease();
}

- (BOOL)prepareAndReturnError:(id *)error
{
  selfCopy = self;
  sub_2478C44E8();

  return 1;
}

- (BOOL)isPrepared
{
  v2 = *(&self->super.isa + OBJC_IVAR___CSUIOpenWithFlow_mutableState);
  selfCopy = self;
  os_unfair_lock_lock((v2 + 32));
  v4 = *(v2 + 16) != 0;
  os_unfair_lock_unlock((v2 + 32));

  return v4;
}

- (CSUIBoundBundleInfo)representativeBundle
{
  v2 = *(&self->super.isa + OBJC_IVAR___CSUIOpenWithFlow_mutableState);
  selfCopy = self;
  os_unfair_lock_lock((v2 + 32));
  representativeBundle = [*(v2 + 16) representativeBundle];
  os_unfair_lock_unlock((v2 + 32));

  return representativeBundle;
}

- (id)buildMenuAndReturnError:(id *)error
{
  sub_2478D8B4C();
  sub_2478D8B3C();
  sub_2478D8AFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_2478C48A0();
  v6 = v5;

  return v6;
}

- (CSUIOpenWithFlow)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)openWithMenuFromConstructor:(id)constructor didSelectBoundBundle:(id)bundle
{
  sub_2478D8B4C();
  sub_2478D8B3C();
  sub_2478D8AFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  constructorCopy = constructor;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2478C5A54(bundle);

  swift_unknownObjectRelease();
}

- (void)openWithMenuFromConstructorDidSelectAppStoreItem:(id)item
{
  sub_2478D8B4C();
  sub_2478D8B3C();
  sub_2478D8AFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = qword_27EE56550;
  selfCopy = self;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_27EE571A8;
  v7 = swift_allocObject();
  *(v7 + 16) = selfCopy;
  v10[4] = sub_2478C6494;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_2478BF2D4;
  v10[3] = &block_descriptor_12;
  v8 = _Block_copy(v10);
  v9 = selfCopy;

  [v6 addOperationWithBlock_];

  _Block_release(v8);
}

@end