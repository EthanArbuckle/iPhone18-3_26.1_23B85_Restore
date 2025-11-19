@interface IKDocumentBannerElement
- (BOOL)fixed;
- (UIColor)backgroundColor;
@end

@implementation IKDocumentBannerElement

- (UIColor)backgroundColor
{
  v2 = [(IKViewElement *)self style];
  v3 = [v2 ikBackgroundColor];
  v4 = [v3 color];

  return v4;
}

- (BOOL)fixed
{
  v2 = [(IKViewElement *)self attributes];
  v3 = [v2 objectForKeyedSubscript:@"fixed"];
  v4 = [v3 ik_attributeBoolValue];

  return v4;
}

@end