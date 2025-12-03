@interface CSUISetHandlerFlow
- (BOOL)isPrepared;
- (BOOL)prepareAndReturnError:(id *)error;
- (CSUIBoundBundleInfo)representativeBundle;
- (CSUISetHandlerFlow)init;
- (CSUISetHandlerFlowDelegate)delegate;
- (id)buildMenuAndReturnError:(id *)error;
- (void)openWithMenuFromConstructor:(id)constructor didSelectBoundBundle:(id)bundle;
- (void)setDelegate:(id)delegate;
@end

@implementation CSUISetHandlerFlow

- (CSUISetHandlerFlowDelegate)delegate
{
  v2 = *(&self->super.isa + OBJC_IVAR___CSUISetHandlerFlow_mutableState);
  selfCopy = self;
  os_unfair_lock_lock(v2 + 18);
  Strong = swift_unknownObjectWeakLoadStrong();
  os_unfair_lock_unlock(v2 + 18);

  return Strong;
}

- (void)setDelegate:(id)delegate
{
  v4 = *(&self->super.isa + OBJC_IVAR___CSUISetHandlerFlow_mutableState);
  swift_unknownObjectRetain();
  selfCopy = self;
  os_unfair_lock_lock(v4 + 18);
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v4 + 18);

  swift_unknownObjectRelease();
}

- (BOOL)isPrepared
{
  v2 = *(&self->super.isa + OBJC_IVAR___CSUISetHandlerFlow_mutableState);
  selfCopy = self;
  os_unfair_lock_lock((v2 + 72));
  v4 = *(v2 + 24) != 0;
  os_unfair_lock_unlock((v2 + 72));

  return v4;
}

- (CSUIBoundBundleInfo)representativeBundle
{
  v2 = *(&self->super.isa + OBJC_IVAR___CSUISetHandlerFlow_mutableState);
  selfCopy = self;
  os_unfair_lock_lock((v2 + 72));
  representativeBundle = [*(v2 + 24) representativeBundle];
  os_unfair_lock_unlock((v2 + 72));

  return representativeBundle;
}

- (BOOL)prepareAndReturnError:(id *)error
{
  selfCopy = self;
  sub_2478D487C();

  return 1;
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
  sub_2478D4AE0();
  v6 = v5;

  return v6;
}

- (CSUISetHandlerFlow)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)openWithMenuFromConstructor:(id)constructor didSelectBoundBundle:(id)bundle
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE551E0, &qword_2478DBE38);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  sub_2478D8B4C();
  sub_2478D8B3C();
  v10 = MEMORY[0x277D85700];
  sub_2478D8AFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = sub_2478D8B6C();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  swift_unknownObjectRetain_n();
  selfCopy = self;
  v13 = sub_2478D8B3C();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = v10;
  v14[4] = selfCopy;
  v14[5] = bundle;
  sub_2478D791C(0, 0, v9, &unk_2478DBF28, v14);

  swift_unknownObjectRelease();
}

@end