@interface DYMetalDrawable
- (DYMetalDrawable)initWithTexture:(id)a3;
@end

@implementation DYMetalDrawable

- (DYMetalDrawable)initWithTexture:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DYMetalDrawable;
  v5 = [(DYMetalDrawable *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DYMetalDrawable *)v5 setTexture:v4];
  }

  return v6;
}

@end