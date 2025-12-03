@interface ISIconSegmentationFeedbackComplex
- (ISIconSegmentationFeedbackComplex)initWithMeanColor:(CGColor *)color;
- (void)dealloc;
@end

@implementation ISIconSegmentationFeedbackComplex

- (ISIconSegmentationFeedbackComplex)initWithMeanColor:(CGColor *)color
{
  v6.receiver = self;
  v6.super_class = ISIconSegmentationFeedbackComplex;
  v4 = [(ISIconSegmentationFeedbackComplex *)&v6 init];
  if (v4)
  {
    v4->_meanColor = CGColorRetain(color);
  }

  return v4;
}

- (void)dealloc
{
  CGColorRelease(self->_meanColor);
  v3.receiver = self;
  v3.super_class = ISIconSegmentationFeedbackComplex;
  [(ISIconSegmentationFeedbackComplex *)&v3 dealloc];
}

@end