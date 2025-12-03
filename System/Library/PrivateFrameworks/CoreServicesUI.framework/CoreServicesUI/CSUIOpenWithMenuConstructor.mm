@interface CSUIOpenWithMenuConstructor
- (CSUIOpenWithMenuConstructor)init;
- (CSUIOpenWithMenuConstructor)initWithConfiguration:(id)configuration;
- (CSUIOpenWithMenuConstructorDelegate)delegate;
- (id)buildUIMenuForPreparedMenu:(id)menu withError:(id *)error;
- (id)noApplicationsMenuItem;
- (id)prepareMenuForBindable:(id)bindable error:(id *)error;
- (id)prepareMenuForBindables:(id)bindables error:(id *)error;
- (void)setDelegate:(id)delegate;
@end

@implementation CSUIOpenWithMenuConstructor

- (CSUIOpenWithMenuConstructor)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = sub_2478D1978(configurationCopy);

  return v4;
}

- (CSUIOpenWithMenuConstructorDelegate)delegate
{
  v2 = *(&self->super.isa + OBJC_IVAR___CSUIOpenWithMenuConstructor_mutableState);
  selfCopy = self;
  os_unfair_lock_lock(v2 + 6);
  Strong = swift_unknownObjectWeakLoadStrong();
  os_unfair_lock_unlock(v2 + 6);

  return Strong;
}

- (void)setDelegate:(id)delegate
{
  v4 = *(&self->super.isa + OBJC_IVAR___CSUIOpenWithMenuConstructor_mutableState);
  swift_unknownObjectRetain();
  selfCopy = self;
  os_unfair_lock_lock(v4 + 6);
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v4 + 6);

  swift_unknownObjectRelease();
}

- (id)prepareMenuForBindables:(id)bindables error:(id *)error
{
  type metadata accessor for CSUIBindable(0);
  v5 = sub_2478D8ABC();
  selfCopy = self;
  v7 = sub_2478C85A8(v5);

  return v7;
}

- (id)prepareMenuForBindable:(id)bindable error:(id *)error
{
  bindableCopy = bindable;
  selfCopy = self;
  v7 = sub_2478CA730(bindableCopy);

  return v7;
}

- (id)noApplicationsMenuItem
{
  sub_2478D8B4C();
  sub_2478D8B3C();
  sub_2478D8AFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_2478D3AF0();

  return v2;
}

- (id)buildUIMenuForPreparedMenu:(id)menu withError:(id *)error
{
  sub_2478D8B4C();
  sub_2478D8B3C();
  sub_2478D8AFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  menuCopy = menu;
  selfCopy = self;
  v8 = sub_2478CAA44(menuCopy);

  return v8;
}

- (CSUIOpenWithMenuConstructor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end