@interface CUIThemeSchemaPSDRenditionLayer
- (id)description;
- (void)dealloc;
@end

@implementation CUIThemeSchemaPSDRenditionLayer

- (id)description
{
  v3.receiver = self;
  v3.super_class = CUIThemeSchemaPSDRenditionLayer;
  return [-[CUIThemeSchemaPSDLayer description](&v3 description)];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIThemeSchemaPSDRenditionLayer;
  [(CUIThemeSchemaPSDLayer *)&v3 dealloc];
}

@end