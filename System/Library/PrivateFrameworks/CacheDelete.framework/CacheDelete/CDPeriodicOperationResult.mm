@interface CDPeriodicOperationResult
- (CDPeriodicOperationResult)initWithVolumes:(id)volumes;
- (void)addResult:(id)result;
@end

@implementation CDPeriodicOperationResult

- (CDPeriodicOperationResult)initWithVolumes:(id)volumes
{
  volumesCopy = volumes;
  v11.receiver = self;
  v11.super_class = CDPeriodicOperationResult;
  v6 = [(CDResult *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_volumeNames, volumes);
    v8 = objc_alloc_init(NSMutableArray);
    mutableResults = v7->_mutableResults;
    v7->_mutableResults = v8;
  }

  return v7;
}

- (void)addResult:(id)result
{
  resultCopy = result;
  isFinished = [(CDResult *)self isFinished];
  if (resultCopy && (isFinished & 1) == 0)
  {
    mutableResults = [(CDPeriodicOperationResult *)self mutableResults];
    [mutableResults addObject:resultCopy];
  }
}

@end