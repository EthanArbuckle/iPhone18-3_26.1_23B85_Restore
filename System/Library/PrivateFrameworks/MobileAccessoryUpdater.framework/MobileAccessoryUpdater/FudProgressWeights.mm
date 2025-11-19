@interface FudProgressWeights
- (FudProgressWeights)initWithPrepareWeight:(float)a3 applyWeight:(float)a4 finishWeight:(float)a5;
@end

@implementation FudProgressWeights

- (FudProgressWeights)initWithPrepareWeight:(float)a3 applyWeight:(float)a4 finishWeight:(float)a5
{
  v17.receiver = self;
  v17.super_class = FudProgressWeights;
  v14 = [(FudProgressWeights *)&v17 init];
  v14->prepareWeight = a3;
  v14->applyWeight = a4;
  v14->finishWeight = a5;
  if (((a3 + a4) + a5) != 1.0)
  {
    FudLog(3, @"Can't create progress weights if total doesn't equal 1", v8, v9, v10, v11, v12, v13, v17.receiver);
    v15 = v14;
    return 0;
  }

  return v14;
}

@end