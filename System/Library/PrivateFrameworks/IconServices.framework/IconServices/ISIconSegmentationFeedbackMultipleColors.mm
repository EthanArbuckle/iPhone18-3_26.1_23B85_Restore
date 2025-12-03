@interface ISIconSegmentationFeedbackMultipleColors
- (ISIconSegmentationFeedbackMultipleColors)initWithNumberOfColors:(int)colors;
@end

@implementation ISIconSegmentationFeedbackMultipleColors

- (ISIconSegmentationFeedbackMultipleColors)initWithNumberOfColors:(int)colors
{
  v5.receiver = self;
  v5.super_class = ISIconSegmentationFeedbackMultipleColors;
  result = [(ISIconSegmentationFeedbackMultipleColors *)&v5 init];
  if (result)
  {
    result->_numberOfColors = colors;
  }

  return result;
}

@end