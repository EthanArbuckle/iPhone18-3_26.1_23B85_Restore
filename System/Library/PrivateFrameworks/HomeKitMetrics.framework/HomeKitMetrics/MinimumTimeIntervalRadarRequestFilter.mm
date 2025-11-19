@interface MinimumTimeIntervalRadarRequestFilter
- (BOOL)shouldRequestRadarForDisplayReason:(id)a3;
- (_TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter)init;
- (void)radarRequestedForDisplayReason:(id)a3;
@end

@implementation MinimumTimeIntervalRadarRequestFilter

- (BOOL)shouldRequestRadarForDisplayReason:(id)a3
{
  v3 = self;
  v4 = sub_22B0D1A68();

  return v4;
}

- (void)radarRequestedForDisplayReason:(id)a3
{
  v4 = sub_22B0DF0E0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(&self->super.isa + OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_dateFactory);
  v8 = *&self->minimumRequestInterval[OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_dateFactory];
  v10 = self;
  v9();
  v11 = v10 + OBJC_IVAR____TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter_filterStorage;
  swift_beginAccess();
  v12 = *(v11 + 24);
  v13 = *(v11 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
  (*(v13 + 16))(v7, v12, v13);
  swift_endAccess();
}

- (_TtC14HomeKitMetrics37MinimumTimeIntervalRadarRequestFilter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end