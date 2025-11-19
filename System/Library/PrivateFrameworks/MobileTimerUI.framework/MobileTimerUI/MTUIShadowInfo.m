@interface MTUIShadowInfo
- (CGSize)offset;
- (MTUIShadowInfo)initWithColor:(id)a3 radius:(double)a4 offset:(CGSize)a5 scale:(double)a6;
@end

@implementation MTUIShadowInfo

- (MTUIShadowInfo)initWithColor:(id)a3 radius:(double)a4 offset:(CGSize)a5 scale:(double)a6
{
  height = a5.height;
  width = a5.width;
  v11 = a3;
  v15.receiver = self;
  v15.super_class = MTUIShadowInfo;
  v12 = [(MTUIShadowInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(MTUIShadowInfo *)v12 setColor:v11];
    [(MTUIShadowInfo *)v13 setRadius:a4];
    [(MTUIShadowInfo *)v13 setOffset:width, height];
    [(MTUIShadowInfo *)v13 setScale:a6];
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