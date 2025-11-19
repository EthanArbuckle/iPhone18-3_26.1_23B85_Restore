@interface ManagedAppsReportedAppState
- (_TtC20ManagedAppsInterface27ManagedAppsReportedAppState)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ManagedAppsReportedAppState

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC20ManagedAppsInterface27ManagedAppsReportedAppState_appState);
  v5 = a3;
  v6 = self;
  v7 = sub_25807FCB8();
  [v5 encodeObject:v4 forKey:v7];

  v8 = *(&v6->super.isa + OBJC_IVAR____TtC20ManagedAppsInterface27ManagedAppsReportedAppState_extensionsState);
  type metadata accessor for ManagedAppsReportedStateItem();
  v9 = sub_25807FC88();
  v10 = sub_25807FCB8();
  [v5 encodeObject:v9 forKey:v10];
}

- (_TtC20ManagedAppsInterface27ManagedAppsReportedAppState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end