@interface FMR1ItemLocalizerContext
- (NSString)description;
- (_TtC11FMFindingUI24FMR1ItemLocalizerContext)init;
- (void)didFailWithError:(id)error;
- (void)didUpdateDevicePose:(id)pose;
- (void)didUpdateItemPosition:(id)position;
- (void)didUpdateRangeEstimate:(id)estimate;
- (void)itemChangedState:(unint64_t)state;
- (void)itemLocalizerChangedActivity:(unint64_t)activity;
- (void)itemLocalizerChangedState:(unint64_t)state;
- (void)pathIsDegenerate:(id)degenerate;
- (void)willIntegrateDevicePose:(id)pose;
- (void)willIntegrateProximity:(id)proximity;
@end

@implementation FMR1ItemLocalizerContext

- (NSString)description
{
  selfCopy = self;
  sub_24A56B750();

  v3 = sub_24A62EBE4();

  return v3;
}

- (void)willIntegrateProximity:(id)proximity
{
  proximityCopy = proximity;
  selfCopy = self;
  sub_24A56BAB8(proximityCopy);
}

- (void)willIntegrateDevicePose:(id)pose
{
  poseCopy = pose;
  selfCopy = self;
  sub_24A56BCB8(poseCopy);
}

- (void)itemLocalizerChangedState:(unint64_t)state
{
  selfCopy = self;
  sub_24A56BEB8(state);
}

- (void)itemLocalizerChangedActivity:(unint64_t)activity
{
  selfCopy = self;
  sub_24A56C2C8(activity);
}

- (void)itemChangedState:(unint64_t)state
{
  selfCopy = self;
  sub_24A56C640(state);
}

- (void)didUpdateRangeEstimate:(id)estimate
{
  estimateCopy = estimate;
  selfCopy = self;
  sub_24A56CC74(estimateCopy);
}

- (void)didUpdateItemPosition:(id)position
{
  positionCopy = position;
  selfCopy = self;
  sub_24A56D15C(position);
}

- (void)didUpdateDevicePose:(id)pose
{
  poseCopy = pose;
  selfCopy = self;
  sub_24A56D35C(poseCopy);
}

- (void)pathIsDegenerate:(id)degenerate
{
  degenerateCopy = degenerate;
  selfCopy = self;
  sub_24A56D558(degenerateCopy);
}

- (void)didFailWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  sub_24A56D8F4(errorCopy);
}

- (_TtC11FMFindingUI24FMR1ItemLocalizerContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end