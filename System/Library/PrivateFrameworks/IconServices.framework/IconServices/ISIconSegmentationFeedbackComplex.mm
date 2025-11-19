@interface ISIconSegmentationFeedbackComplex
- (ISIconSegmentationFeedbackComplex)initWithMeanColor:(CGColor *)a3;
- (void)dealloc;
@end

@implementation ISIconSegmentationFeedbackComplex

- (ISIconSegmentationFeedbackComplex)initWithMeanColor:(CGColor *)a3
{
  v6.receiver = self;
  v6.super_class = ISIconSegmentationFeedbackComplex;
  v4 = [(ISIconSegmentationFeedbackComplex *)&v6 init];
  if (v4)
  {
    v4->_meanColor = CGColorRetain(a3);
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