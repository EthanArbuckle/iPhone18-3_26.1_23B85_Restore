@interface ManagedAppsReportedAppState
- (_TtC20ManagedAppsInterface27ManagedAppsReportedAppState)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ManagedAppsReportedAppState

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC20ManagedAppsInterface27ManagedAppsReportedAppState_appState);
  coderCopy = coder;
  selfCopy = self;
  v7 = sub_25807FCB8();
  [coderCopy encodeObject:v4 forKey:v7];

  v8 = *(&selfCopy->super.isa + OBJC_IVAR____TtC20ManagedAppsInterface27ManagedAppsReportedAppState_extensionsState);
  type metadata accessor for ManagedAppsReportedStateItem();
  v9 = sub_25807FC88();
  v10 = sub_25807FCB8();
  [coderCopy encodeObject:v9 forKey:v10];
}

- (_TtC20ManagedAppsInterface27ManagedAppsReportedAppState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end