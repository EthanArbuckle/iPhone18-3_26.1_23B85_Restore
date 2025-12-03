@interface LocalQueryTask
- (void)didReceiveResponse:(id)response;
- (void)resultsDidBecomeInvalid:(id)invalid;
@end

@implementation LocalQueryTask

- (void)resultsDidBecomeInvalid:(id)invalid
{
  invalidCopy = invalid;
  selfCopy = self;
  LocalQueryTask.resultsDidBecomeInvalid(_:)();
}

- (void)didReceiveResponse:(id)response
{
  responseCopy = response;
  selfCopy = self;
  LocalQueryTask.didReceive(_:)(responseCopy);
}

@end