@interface ICStyleSelectorView
- (CGSize)intrinsicContentSize;
- (id)accessibilityLabel;
@end

@implementation ICStyleSelectorView

- (CGSize)intrinsicContentSize
{
  v2 = 380.0;
  v3 = 256.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)accessibilityLabel
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Format Menu" value:&stru_282757698 table:0];

  return v3;
}

@end