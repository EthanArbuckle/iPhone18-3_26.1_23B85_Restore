@interface CSUIOpenWithFlow
- (BOOL)isPrepared;
- (BOOL)prepareAndReturnError:(id *)a3;
- (CSUIBoundBundleInfo)representativeBundle;
- (CSUIOpenWithFlow)init;
- (CSUIOpenWithFlowDelegate)delegate;
- (id)buildMenuAndReturnError:(id *)a3;
- (void)openWithMenuFromConstructor:(id)a3 didSelectBoundBundle:(id)a4;
- (void)openWithMenuFromConstructorDidSelectAppStoreItem:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation CSUIOpenWithFlow

- (CSUIOpenWithFlowDelegate)delegate
{
  v2 = *(&self->super.isa + OBJC_IVAR___CSUIOpenWithFlow_mutableState);
  v3 = self;
  os_unfair_lock_lock(v2 + 8);
  Strong = swift_unknownObjectWeakLoadStrong();
  os_unfair_lock_unlock(v2 + 8);

  return Strong;
}

- (void)setDelegate:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___CSUIOpenWithFlow_mutableState);
  swift_unknownObjectRetain();
  v5 = self;
  os_unfair_lock_lock(v4 + 8);
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v4 + 8);

  swift_unknownObjectRelease();
}

- (BOOL)prepareAndReturnError:(id *)a3
{
  v3 = self;
  sub_2478C44E8();

  return 1;
}

- (BOOL)isPrepared
{
  v2 = *(&self->super.isa + OBJC_IVAR___CSUIOpenWithFlow_mutableState);
  v3 = self;
  os_unfair_lock_lock((v2 + 32));
  v4 = *(v2 + 16) != 0;
  os_unfair_lock_unlock((v2 + 32));

  return v4;
}

- (CSUIBoundBundleInfo)representativeBundle
{
  v2 = *(&self->super.isa + OBJC_IVAR___CSUIOpenWithFlow_mutableState);
  v3 = self;
  os_unfair_lock_lock((v2 + 32));
  v4 = [*(v2 + 16) representativeBundle];
  os_unfair_lock_unlock((v2 + 32));

  return v4;
}

- (id)buildMenuAndReturnError:(id *)a3
{
  sub_2478D8B4C();
  sub_2478D8B3C();
  sub_2478D8AFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = self;
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

- (void)openWithMenuFromConstructor:(id)a3 didSelectBoundBundle:(id)a4
{
  sub_2478D8B4C();
  sub_2478D8B3C();
  sub_2478D8AFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a3;
  swift_unknownObjectRetain();
  v8 = self;
  sub_2478C5A54(a4);

  swift_unknownObjectRelease();
}

- (void)openWithMenuFromConstructorDidSelectAppStoreItem:(id)a3
{
  sub_2478D8B4C();
  sub_2478D8B3C();
  sub_2478D8AFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = qword_27EE56550;
  v5 = self;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_27EE571A8;
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v10[4] = sub_2478C6494;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_2478BF2D4;
  v10[3] = &block_descriptor_12;
  v8 = _Block_copy(v10);
  v9 = v5;

  [v6 addOperationWithBlock_];

  _Block_release(v8);
}

@end