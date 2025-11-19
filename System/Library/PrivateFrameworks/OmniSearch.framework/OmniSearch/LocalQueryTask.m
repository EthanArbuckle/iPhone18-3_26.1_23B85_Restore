@interface LocalQueryTask
- (void)didReceiveResponse:(id)a3;
- (void)resultsDidBecomeInvalid:(id)a3;
@end

@implementation LocalQueryTask

- (void)resultsDidBecomeInvalid:(id)a3
{
  v4 = a3;
  v5 = self;
  LocalQueryTask.resultsDidBecomeInvalid(_:)();
}

- (void)didReceiveResponse:(id)a3
{
  v4 = a3;
  v5 = self;
  LocalQueryTask.didReceive(_:)(v4);
}

@end