@interface ISIconSegmentationFeedbackSingleColor
- (ISIconSegmentationFeedbackSingleColor)initWithColor:(CGColor *)color;
- (void)dealloc;
@end

@implementation ISIconSegmentationFeedbackSingleColor

- (ISIconSegmentationFeedbackSingleColor)initWithColor:(CGColor *)color
{
  v6.receiver = self;
  v6.super_class = ISIconSegmentationFeedbackSingleColor;
  v4 = [(ISIconSegmentationFeedbackSingleColor *)&v6 init];
  if (v4)
  {
    v4->_color = CGColorRetain(color);
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