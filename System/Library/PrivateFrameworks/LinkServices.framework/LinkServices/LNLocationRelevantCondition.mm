@interface LNLocationRelevantCondition
- (LNLocationRelevantCondition)initWithRegion:(id)region;
@end

@implementation LNLocationRelevantCondition

- (LNLocationRelevantCondition)initWithRegion:(id)region
{
  regionCopy = region;
  if (!regionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNRelevantContext.m" lineNumber:102 description:{@"Invalid parameter not satisfying: %@", @"region"}];
  }

  v12.receiver = self;
  v12.super_class = LNLocationRelevantCondition;
  _init = [(LNRelevantCondition *)&v12 _init];
  v8 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, region);
    v9 = v8;
  }

  return v8;
}

@end