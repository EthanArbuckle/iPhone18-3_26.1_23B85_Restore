@interface ICCalculateGraphingController
- (ICCalculateGraphingController)init;
- (ICCalculateGraphingController)initWithNote:(id)a3;
- (id)insertionDecisionForExpressionsInRange:(_NSRange)a3;
- (void)performDecision:(id)a3;
@end

@implementation ICCalculateGraphingController

- (ICCalculateGraphingController)initWithNote:(id)a3
{
  v3 = a3;
  v4 = sub_1D418824C(v3);

  return v4;
}

- (id)insertionDecisionForExpressionsInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = self;
  v6.location = location;
  v6.length = length;
  ICCalculateGraphingController.insertionDecision(forExpressionsIn:)(v7, v6);
  v9 = v8;

  return v9;
}

- (void)performDecision:(id)a3
{
  v4 = a3;
  v5 = self;
  ICCalculateGraphingController.perform(_:)(v4);
}

- (ICCalculateGraphingController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end