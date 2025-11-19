@interface MappedDisplayReasonRadarRequestFilter
- (BOOL)shouldRequestRadarForDisplayReason:(id)a3;
- (_TtC14HomeKitMetrics37MappedDisplayReasonRadarRequestFilter)init;
- (void)radarRequestedForDisplayReason:(id)a3;
@end

@implementation MappedDisplayReasonRadarRequestFilter

- (BOOL)shouldRequestRadarForDisplayReason:(id)a3
{
  v5 = sub_22B0DF330();
  v7 = v6;
  v8 = a3;
  v9 = self;
  v10 = sub_22B0BD6B4(v5, v7);

  LOBYTE(v7) = [v10 shouldRequestRadarForDisplayReason_];

  swift_unknownObjectRelease();
  return v7;
}

- (void)radarRequestedForDisplayReason:(id)a3
{
  v5 = sub_22B0DF330();
  v7 = v6;
  v8 = a3;
  v10 = self;
  v9 = sub_22B0BD6B4(v5, v7);

  [v9 radarRequestedForDisplayReason_];
  swift_unknownObjectRelease();
}

- (_TtC14HomeKitMetrics37MappedDisplayReasonRadarRequestFilter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end