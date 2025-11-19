@interface CLKUIQuad
- (CLKUIQuad)init;
- (CLKUIQuadView)quadView;
@end

@implementation CLKUIQuad

- (CLKUIQuad)init
{
  v3.receiver = self;
  v3.super_class = CLKUIQuad;
  return [(CLKUIQuad *)&v3 init];
}

- (CLKUIQuadView)quadView
{
  WeakRetained = objc_loadWeakRetained(&self->_quadView);

  return WeakRetained;
}

@end