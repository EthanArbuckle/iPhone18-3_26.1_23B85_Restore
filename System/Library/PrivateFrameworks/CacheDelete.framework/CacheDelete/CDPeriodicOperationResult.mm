@interface CDPeriodicOperationResult
- (CDPeriodicOperationResult)initWithVolumes:(id)a3;
- (void)addResult:(id)a3;
@end

@implementation CDPeriodicOperationResult

- (CDPeriodicOperationResult)initWithVolumes:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CDPeriodicOperationResult;
  v6 = [(CDResult *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_volumeNames, a3);
    v8 = objc_alloc_init(NSMutableArray);
    mutableResults = v7->_mutableResults;
    v7->_mutableResults = v8;
  }

  return v7;
}

- (void)addResult:(id)a3
{
  v6 = a3;
  v4 = [(CDResult *)self isFinished];
  if (v6 && (v4 & 1) == 0)
  {
    v5 = [(CDPeriodicOperationResult *)self mutableResults];
    [v5 addObject:v6];
  }
}

@end