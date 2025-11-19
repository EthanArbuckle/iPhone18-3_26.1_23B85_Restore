@interface FMR1ItemLocalizerContext
- (NSString)description;
- (_TtC11FMFindingUI24FMR1ItemLocalizerContext)init;
- (void)didFailWithError:(id)a3;
- (void)didUpdateDevicePose:(id)a3;
- (void)didUpdateItemPosition:(id)a3;
- (void)didUpdateRangeEstimate:(id)a3;
- (void)itemChangedState:(unint64_t)a3;
- (void)itemLocalizerChangedActivity:(unint64_t)a3;
- (void)itemLocalizerChangedState:(unint64_t)a3;
- (void)pathIsDegenerate:(id)a3;
- (void)willIntegrateDevicePose:(id)a3;
- (void)willIntegrateProximity:(id)a3;
@end

@implementation FMR1ItemLocalizerContext

- (NSString)description
{
  v2 = self;
  sub_24A56B750();

  v3 = sub_24A62EBE4();

  return v3;
}

- (void)willIntegrateProximity:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24A56BAB8(v4);
}

- (void)willIntegrateDevicePose:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24A56BCB8(v4);
}

- (void)itemLocalizerChangedState:(unint64_t)a3
{
  v4 = self;
  sub_24A56BEB8(a3);
}

- (void)itemLocalizerChangedActivity:(unint64_t)a3
{
  v4 = self;
  sub_24A56C2C8(a3);
}

- (void)itemChangedState:(unint64_t)a3
{
  v4 = self;
  sub_24A56C640(a3);
}

- (void)didUpdateRangeEstimate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24A56CC74(v4);
}

- (void)didUpdateItemPosition:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24A56D15C(a3);
}

- (void)didUpdateDevicePose:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24A56D35C(v4);
}

- (void)pathIsDegenerate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24A56D558(v4);
}

- (void)didFailWithError:(id)a3
{
  v5 = a3;
  v4 = self;
  sub_24A56D8F4(v5);
}

- (_TtC11FMFindingUI24FMR1ItemLocalizerContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end