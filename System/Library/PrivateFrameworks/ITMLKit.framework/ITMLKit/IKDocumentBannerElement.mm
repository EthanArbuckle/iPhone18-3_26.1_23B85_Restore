@interface IKDocumentBannerElement
- (BOOL)fixed;
- (UIColor)backgroundColor;
@end

@implementation IKDocumentBannerElement

- (UIColor)backgroundColor
{
  style = [(IKViewElement *)self style];
  ikBackgroundColor = [style ikBackgroundColor];
  color = [ikBackgroundColor color];

  return color;
}

- (BOOL)fixed
{
  attributes = [(IKViewElement *)self attributes];
  v3 = [attributes objectForKeyedSubscript:@"fixed"];
  ik_attributeBoolValue = [v3 ik_attributeBoolValue];

  return ik_attributeBoolValue;
}

@end