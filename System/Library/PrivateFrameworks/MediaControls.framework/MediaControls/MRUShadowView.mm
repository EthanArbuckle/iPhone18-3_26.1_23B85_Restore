@interface MRUShadowView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (CGSize)offset;
- (MRUShadowView)initWithFrame:(CGRect)a3;
- (void)setColor:(id)a3;
- (void)setCompositingFilter:(id)a3;
- (void)setOffset:(CGSize)a3;
- (void)setOpacity:(float)a3;
- (void)setRadius:(double)a3;
@end

@implementation MRUShadowView

- (MRUShadowView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = MRUShadowView;
  v3 = [(MRUShadowView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(MRUShadowView *)v3 layer];
    [v5 setShadowPathIsBounds:1];

    [(MRUShadowView *)v4 setUserInteractionEnabled:0];
  }

  return v4;
}

- (void)setColor:(id)a3
{
  v5 = a3;
  v6 = [a3 CGColor];
  v7 = [(MRUShadowView *)self layer];
  [v7 setShadowColor:v6];
}

- (void)setCompositingFilter:(id)a3
{
  v4 = a3;
  v5 = [(MRUShadowView *)self layer];
  [v5 setCompositingFilter:v4];
}

- (void)setOffset:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(MRUShadowView *)self layer];
  [v5 setShadowOffset:{width, height}];
}

- (void)setRadius:(double)a3
{
  v4 = [(MRUShadowView *)self layer];
  [v4 setShadowRadius:a3];
}

- (void)setOpacity:(float)a3
{
  v5 = [(MRUShadowView *)self layer];
  *&v4 = a3;
  [v5 setShadowOpacity:v4];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MRUShadowView;
  if ([(MRUShadowView *)&v7 _shouldAnimatePropertyWithKey:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 hasPrefix:@"shadow"];
  }

  return v5;
}

- (CGSize)offset
{
  width = self->_offset.width;
  height = self->_offset.height;
  result.height = height;
  result.width = width;
  return result;
}

@end