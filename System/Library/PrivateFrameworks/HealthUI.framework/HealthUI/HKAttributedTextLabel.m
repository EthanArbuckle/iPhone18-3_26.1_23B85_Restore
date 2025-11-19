@interface HKAttributedTextLabel
- (CGSize)intrinsicContentSize;
@end

@implementation HKAttributedTextLabel

- (CGSize)intrinsicContentSize
{
  v5.receiver = self;
  v5.super_class = HKAttributedTextLabel;
  [(HKAttributedTextLabel *)&v5 intrinsicContentSize];
  *&v3 = v3;
  v4 = ceilf(*&v3);
  result.height = v4;
  result.width = v2;
  return result;
}

@end