@interface GKButtonWithContentSizeCorrected2
- (CGSize)intrinsicContentSize;
@end

@implementation GKButtonWithContentSizeCorrected2

- (CGSize)intrinsicContentSize
{
  v5.receiver = self;
  v5.super_class = GKButtonWithContentSizeCorrected2;
  [(GKButton *)&v5 intrinsicContentSize];
  v4 = v3 + 20.0;
  result.height = v2;
  result.width = v4;
  return result;
}

@end