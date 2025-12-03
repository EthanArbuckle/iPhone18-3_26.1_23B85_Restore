@interface CPSGlassView
+ (id)createWithTemplateConfiguration;
- (UIColor)glassTintColor;
- (void)setGlassTintColor:(id)color;
@end

@implementation CPSGlassView

- (UIColor)glassTintColor
{
  v2 = CPSGlassView.glassTintColor.getter();

  return v2;
}

- (void)setGlassTintColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  CPSGlassView.glassTintColor.setter(colorCopy);
}

+ (id)createWithTemplateConfiguration
{
  v2 = static CPSGlassView.createWithTemplateConfiguration()();

  return v2;
}

@end