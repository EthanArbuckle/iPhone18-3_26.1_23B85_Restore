@interface DYMetalDrawable
- (DYMetalDrawable)initWithTexture:(id)texture;
@end

@implementation DYMetalDrawable

- (DYMetalDrawable)initWithTexture:(id)texture
{
  textureCopy = texture;
  v8.receiver = self;
  v8.super_class = DYMetalDrawable;
  v5 = [(DYMetalDrawable *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DYMetalDrawable *)v5 setTexture:textureCopy];
  }

  return v6;
}

@end