@interface LNLocationRelevantCondition
- (LNLocationRelevantCondition)initWithRegion:(id)a3;
@end

@implementation LNLocationRelevantCondition

- (LNLocationRelevantCondition)initWithRegion:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"LNRelevantContext.m" lineNumber:102 description:{@"Invalid parameter not satisfying: %@", @"region"}];
  }

  v12.receiver = self;
  v12.super_class = LNLocationRelevantCondition;
  v7 = [(LNRelevantCondition *)&v12 _init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(v7 + 1, a3);
    v9 = v8;
  }

  return v8;
}

@end