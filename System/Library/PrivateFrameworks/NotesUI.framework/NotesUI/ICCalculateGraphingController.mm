@interface ICCalculateGraphingController
- (ICCalculateGraphingController)init;
- (ICCalculateGraphingController)initWithNote:(id)note;
- (id)insertionDecisionForExpressionsInRange:(_NSRange)range;
- (void)performDecision:(id)decision;
@end

@implementation ICCalculateGraphingController

- (ICCalculateGraphingController)initWithNote:(id)note
{
  noteCopy = note;
  v4 = sub_1D418824C(noteCopy);

  return v4;
}

- (id)insertionDecisionForExpressionsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  v6.location = location;
  v6.length = length;
  ICCalculateGraphingController.insertionDecision(forExpressionsIn:)(v7, v6);
  v9 = v8;

  return v9;
}

- (void)performDecision:(id)decision
{
  decisionCopy = decision;
  selfCopy = self;
  ICCalculateGraphingController.perform(_:)(decisionCopy);
}

- (ICCalculateGraphingController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end