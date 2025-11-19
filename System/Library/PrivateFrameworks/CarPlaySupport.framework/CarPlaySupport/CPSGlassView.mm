@interface CPSGlassView
+ (id)createWithTemplateConfiguration;
- (UIColor)glassTintColor;
- (void)setGlassTintColor:(id)a3;
@end

@implementation CPSGlassView

- (UIColor)glassTintColor
{
  v2 = CPSGlassView.glassTintColor.getter();

  return v2;
}

- (void)setGlassTintColor:(id)a3
{
  v4 = a3;
  v5 = self;
  CPSGlassView.glassTintColor.setter(v4);
}

+ (id)createWithTemplateConfiguration
{
  v2 = static CPSGlassView.createWithTemplateConfiguration()();

  return v2;
}

@end