@interface CUIThemeSchemaPSDLayerGroup
- (id)description;
@end

@implementation CUIThemeSchemaPSDLayerGroup

- (id)description
{
  v3.receiver = self;
  v3.super_class = CUIThemeSchemaPSDLayerGroup;
  return [-[CUIThemeSchemaPSDLayer description](&v3 description)];
}

@end