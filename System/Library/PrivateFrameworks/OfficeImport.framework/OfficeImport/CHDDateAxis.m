@interface CHDDateAxis
- (CHDDateAxis)initWithResources:(id)a3;
@end

@implementation CHDDateAxis

- (CHDDateAxis)initWithResources:(id)a3
{
  v4.receiver = self;
  v4.super_class = CHDDateAxis;
  result = [(CHDAxis *)&v4 initWithResources:a3];
  if (result)
  {
    result->mAutomatic = 1;
    result->mMajorUnitValue = 0.0;
    result->mMinorUnitValue = 0.0;
    result->super.mAxisPosition = 1;
    result->mMinorTimeUnit = 0;
    result->mMajorTimeUnit = 0;
    result->mBaseTimeUnit = 0;
  }

  return result;
}

@end