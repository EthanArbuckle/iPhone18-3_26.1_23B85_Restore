@interface CHDSeriesAxis
- (CHDSeriesAxis)initWithResources:(id)resources;
@end

@implementation CHDSeriesAxis

- (CHDSeriesAxis)initWithResources:(id)resources
{
  v4.receiver = self;
  v4.super_class = CHDSeriesAxis;
  result = [(CHDAxis *)&v4 initWithResources:resources];
  if (result)
  {
    result->mLabelFrequency = 1;
  }

  return result;
}

@end