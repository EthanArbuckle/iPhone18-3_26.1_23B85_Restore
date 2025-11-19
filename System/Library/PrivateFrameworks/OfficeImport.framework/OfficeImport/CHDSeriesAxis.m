@interface CHDSeriesAxis
- (CHDSeriesAxis)initWithResources:(id)a3;
@end

@implementation CHDSeriesAxis

- (CHDSeriesAxis)initWithResources:(id)a3
{
  v4.receiver = self;
  v4.super_class = CHDSeriesAxis;
  result = [(CHDAxis *)&v4 initWithResources:a3];
  if (result)
  {
    result->mLabelFrequency = 1;
  }

  return result;
}

@end