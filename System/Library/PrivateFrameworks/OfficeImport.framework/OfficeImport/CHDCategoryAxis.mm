@interface CHDCategoryAxis
- (CHDCategoryAxis)initWithResources:(id)resources;
@end

@implementation CHDCategoryAxis

- (CHDCategoryAxis)initWithResources:(id)resources
{
  v4.receiver = self;
  v4.super_class = CHDCategoryAxis;
  result = [(CHDAxis *)&v4 initWithResources:resources];
  if (result)
  {
    result->mAutomatic = 1;
    result->mNoMultipleLevelLabel = 1;
    result->mLabelAlignment = 2;
    result->super.mAxisPosition = 0;
    result->mLabelFrequency = 1;
    result->mLabelFrequencyAutomatic = 1;
    result->mShowSeriesNames = 0;
  }

  return result;
}

@end