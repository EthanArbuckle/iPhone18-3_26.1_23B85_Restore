@interface CSUIOpenWithMenuConstructor
- (CSUIOpenWithMenuConstructor)init;
- (CSUIOpenWithMenuConstructor)initWithConfiguration:(id)a3;
- (CSUIOpenWithMenuConstructorDelegate)delegate;
- (id)buildUIMenuForPreparedMenu:(id)a3 withError:(id *)a4;
- (id)noApplicationsMenuItem;
- (id)prepareMenuForBindable:(id)a3 error:(id *)a4;
- (id)prepareMenuForBindables:(id)a3 error:(id *)a4;
- (void)setDelegate:(id)a3;
@end

@implementation CSUIOpenWithMenuConstructor

- (CSUIOpenWithMenuConstructor)initWithConfiguration:(id)a3
{
  v3 = a3;
  v4 = sub_2478D1978(v3);

  return v4;
}

- (CSUIOpenWithMenuConstructorDelegate)delegate
{
  v2 = *(&self->super.isa + OBJC_IVAR___CSUIOpenWithMenuConstructor_mutableState);
  v3 = self;
  os_unfair_lock_lock(v2 + 6);
  Strong = swift_unknownObjectWeakLoadStrong();
  os_unfair_lock_unlock(v2 + 6);

  return Strong;
}

- (void)setDelegate:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___CSUIOpenWithMenuConstructor_mutableState);
  swift_unknownObjectRetain();
  v5 = self;
  os_unfair_lock_lock(v4 + 6);
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v4 + 6);

  swift_unknownObjectRelease();
}

- (id)prepareMenuForBindables:(id)a3 error:(id *)a4
{
  type metadata accessor for CSUIBindable(0);
  v5 = sub_2478D8ABC();
  v6 = self;
  v7 = sub_2478C85A8(v5);

  return v7;
}

- (id)prepareMenuForBindable:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_2478CA730(v5);

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

- (id)buildUIMenuForPreparedMenu:(id)a3 withError:(id *)a4
{
  sub_2478D8B4C();
  sub_2478D8B3C();
  sub_2478D8AFC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a3;
  v7 = self;
  v8 = sub_2478CAA44(v6);

  return v8;
}

- (CSUIOpenWithMenuConstructor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end