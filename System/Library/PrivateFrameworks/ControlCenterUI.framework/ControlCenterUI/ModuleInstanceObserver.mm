@interface ModuleInstanceObserver
- (_TtC15ControlCenterUI22ModuleInstanceObserver)init;
- (void)moduleInstancesChangedForModuleInstanceManager:(id)a3;
- (void)orderedEnabledModuleIdentifiersChangedForSettingsManager:(id)a3;
@end

@implementation ModuleInstanceObserver

- (void)moduleInstancesChangedForModuleInstanceManager:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = self;
    sub_21E9FB444();
  }
}

- (_TtC15ControlCenterUI22ModuleInstanceObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)orderedEnabledModuleIdentifiersChangedForSettingsManager:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a3;
    v8 = self;
    v9 = [v7 orderedEnabledModuleIdentifiersFromSettingsApp];
    v10 = sub_21EAA8EC0();

    sub_21EA672E4(v10);

    v11 = sub_21EAA8F50();

    [v6 setEnabledModuleIdentifiersFromSettingsApp_];
  }
}

@end