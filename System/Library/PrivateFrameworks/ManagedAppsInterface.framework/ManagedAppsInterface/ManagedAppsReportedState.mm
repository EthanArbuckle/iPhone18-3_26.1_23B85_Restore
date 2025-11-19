@interface ManagedAppsReportedState
- (NSString)description;
- (_TtC20ManagedAppsInterface24ManagedAppsReportedState)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ManagedAppsReportedState

- (void)encodeWithCoder:(id)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC20ManagedAppsInterface24ManagedAppsReportedState_allAppsState);
  type metadata accessor for ManagedAppsReportedAppState();
  v6 = a3;
  v9 = self;
  v7 = sub_25807FC88();
  v8 = sub_25807FCB8();
  [v6 encodeObject:v7 forKey:v8];
}

- (NSString)description
{
  v2 = self;
  sub_25807FE78();
  MEMORY[0x259C774A0](0xD000000000000030, 0x8000000258082EB0);
  v3 = *(&v2->super.isa + OBJC_IVAR____TtC20ManagedAppsInterface24ManagedAppsReportedState_allAppsState);
  type metadata accessor for ManagedAppsReportedAppState();
  v4 = sub_25807FCA8();
  MEMORY[0x259C774A0](v4);

  MEMORY[0x259C774A0](687370, 0xE300000000000000);

  v5 = sub_25807FCB8();

  return v5;
}

- (_TtC20ManagedAppsInterface24ManagedAppsReportedState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end