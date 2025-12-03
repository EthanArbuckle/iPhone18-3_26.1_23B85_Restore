@interface ModuleInstanceObserver
- (_TtC15ControlCenterUI22ModuleInstanceObserver)init;
- (void)moduleInstancesChangedForModuleInstanceManager:(id)manager;
- (void)orderedEnabledModuleIdentifiersChangedForSettingsManager:(id)manager;
@end

@implementation ModuleInstanceObserver

- (void)moduleInstancesChangedForModuleInstanceManager:(id)manager
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    selfCopy = self;
    sub_21E9FB444();
  }
}

- (_TtC15ControlCenterUI22ModuleInstanceObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)orderedEnabledModuleIdentifiersChangedForSettingsManager:(id)manager
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    managerCopy = manager;
    selfCopy = self;
    orderedEnabledModuleIdentifiersFromSettingsApp = [managerCopy orderedEnabledModuleIdentifiersFromSettingsApp];
    v10 = sub_21EAA8EC0();

    sub_21EA672E4(v10);

    v11 = sub_21EAA8F50();

    [v6 setEnabledModuleIdentifiersFromSettingsApp_];
  }
}

@end