@interface CUIThemeSchemaPSDLayer
- (id)description;
- (void)dealloc;
@end

@implementation CUIThemeSchemaPSDLayer

- (id)description
{
  v3.receiver = self;
  v3.super_class = CUIThemeSchemaPSDLayer;
  return [-[CUIThemeSchemaPSDLayer description](&v3 description)];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIThemeSchemaPSDLayer;
  [(CUIThemeSchemaPSDLayer *)&v3 dealloc];
}

@end