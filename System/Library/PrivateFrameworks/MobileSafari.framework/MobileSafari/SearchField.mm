@interface SearchField
- (id)_placeholderColor;
@end

@implementation SearchField

- (id)_placeholderColor
{
  secondaryLabelColor = [objc_opt_self() secondaryLabelColor];

  return secondaryLabelColor;
}

@end