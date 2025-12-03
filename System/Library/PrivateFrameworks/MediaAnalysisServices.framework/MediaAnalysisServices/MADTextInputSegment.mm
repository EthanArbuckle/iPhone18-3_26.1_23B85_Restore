@interface MADTextInputSegment
- (MADTextInputSegment)initWithCoder:(id)coder;
@end

@implementation MADTextInputSegment

- (MADTextInputSegment)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = MADTextInputSegment;
  return [(MADTextInputSegment *)&v4 init];
}

@end