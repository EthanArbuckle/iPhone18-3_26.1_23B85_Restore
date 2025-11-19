@interface SearchField
- (id)_placeholderColor;
@end

@implementation SearchField

- (id)_placeholderColor
{
  v2 = [objc_opt_self() secondaryLabelColor];

  return v2;
}

@end