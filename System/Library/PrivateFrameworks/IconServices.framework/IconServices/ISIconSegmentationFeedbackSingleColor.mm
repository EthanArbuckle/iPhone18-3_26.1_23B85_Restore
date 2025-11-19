@interface ISIconSegmentationFeedbackSingleColor
- (ISIconSegmentationFeedbackSingleColor)initWithColor:(CGColor *)a3;
- (void)dealloc;
@end

@implementation ISIconSegmentationFeedbackSingleColor

- (ISIconSegmentationFeedbackSingleColor)initWithColor:(CGColor *)a3
{
  v6.receiver = self;
  v6.super_class = ISIconSegmentationFeedbackSingleColor;
  v4 = [(ISIconSegmentationFeedbackSingleColor *)&v6 init];
  if (v4)
  {
    v4->_color = CGColorRetain(a3);
  }

  return v4;
}

- (void)dealloc
{
  CGColorRelease(self->_color);
  v3.receiver = self;
  v3.super_class = ISIconSegmentationFeedbackSingleColor;
  [(ISIconSegmentationFeedbackSingleColor *)&v3 dealloc];
}

@end