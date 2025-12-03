@interface FudProgressWeights
- (FudProgressWeights)initWithPrepareWeight:(float)weight applyWeight:(float)applyWeight finishWeight:(float)finishWeight;
@end

@implementation FudProgressWeights

- (FudProgressWeights)initWithPrepareWeight:(float)weight applyWeight:(float)applyWeight finishWeight:(float)finishWeight
{
  v17.receiver = self;
  v17.super_class = FudProgressWeights;
  v14 = [(FudProgressWeights *)&v17 init];
  v14->prepareWeight = weight;
  v14->applyWeight = applyWeight;
  v14->finishWeight = finishWeight;
  if (((weight + applyWeight) + finishWeight) != 1.0)
  {
    FudLog(3, @"Can't create progress weights if total doesn't equal 1", v8, v9, v10, v11, v12, v13, v17.receiver);
    v15 = v14;
    return 0;
  }

  return v14;
}

@end