@interface ISIconSegmentationFeedbackMultipleColors
- (ISIconSegmentationFeedbackMultipleColors)initWithNumberOfColors:(int)a3;
@end

@implementation ISIconSegmentationFeedbackMultipleColors

- (ISIconSegmentationFeedbackMultipleColors)initWithNumberOfColors:(int)a3
{
  v5.receiver = self;
  v5.super_class = ISIconSegmentationFeedbackMultipleColors;
  result = [(ISIconSegmentationFeedbackMultipleColors *)&v5 init];
  if (result)
  {
    result->_numberOfColors = a3;
  }

  return result;
}

@end