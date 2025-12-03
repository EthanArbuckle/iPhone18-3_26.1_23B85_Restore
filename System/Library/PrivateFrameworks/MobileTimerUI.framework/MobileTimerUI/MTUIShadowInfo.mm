@interface MTUIShadowInfo
- (CGSize)offset;
- (MTUIShadowInfo)initWithColor:(id)color radius:(double)radius offset:(CGSize)offset scale:(double)scale;
@end

@implementation MTUIShadowInfo

- (MTUIShadowInfo)initWithColor:(id)color radius:(double)radius offset:(CGSize)offset scale:(double)scale
{
  height = offset.height;
  width = offset.width;
  colorCopy = color;
  v15.receiver = self;
  v15.super_class = MTUIShadowInfo;
  v12 = [(MTUIShadowInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(MTUIShadowInfo *)v12 setColor:colorCopy];
    [(MTUIShadowInfo *)v13 setRadius:radius];
    [(MTUIShadowInfo *)v13 setOffset:width, height];
    [(MTUIShadowInfo *)v13 setScale:scale];
  }

  return v13;
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