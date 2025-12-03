@interface MRUShadowView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (CGSize)offset;
- (MRUShadowView)initWithFrame:(CGRect)frame;
- (void)setColor:(id)color;
- (void)setCompositingFilter:(id)filter;
- (void)setOffset:(CGSize)offset;
- (void)setOpacity:(float)opacity;
- (void)setRadius:(double)radius;
@end

@implementation MRUShadowView

- (MRUShadowView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = MRUShadowView;
  v3 = [(MRUShadowView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(MRUShadowView *)v3 layer];
    [layer setShadowPathIsBounds:1];

    [(MRUShadowView *)v4 setUserInteractionEnabled:0];
  }

  return v4;
}

- (void)setColor:(id)color
{
  colorCopy = color;
  cGColor = [color CGColor];
  layer = [(MRUShadowView *)self layer];
  [layer setShadowColor:cGColor];
}

- (void)setCompositingFilter:(id)filter
{
  filterCopy = filter;
  layer = [(MRUShadowView *)self layer];
  [layer setCompositingFilter:filterCopy];
}

- (void)setOffset:(CGSize)offset
{
  height = offset.height;
  width = offset.width;
  layer = [(MRUShadowView *)self layer];
  [layer setShadowOffset:{width, height}];
}

- (void)setRadius:(double)radius
{
  layer = [(MRUShadowView *)self layer];
  [layer setShadowRadius:radius];
}

- (void)setOpacity:(float)opacity
{
  layer = [(MRUShadowView *)self layer];
  *&v4 = opacity;
  [layer setShadowOpacity:v4];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v7.receiver = self;
  v7.super_class = MRUShadowView;
  if ([(MRUShadowView *)&v7 _shouldAnimatePropertyWithKey:keyCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [keyCopy hasPrefix:@"shadow"];
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