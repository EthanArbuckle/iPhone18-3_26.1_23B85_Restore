@interface DYMetalLayer
- (CATransform3D)transform;
- (CGPoint)anchorPoint;
- (CGRect)bounds;
- (CGSize)drawableSize;
- (id)nextDrawable;
- (id)nextDrawableWithTextureResourceIndex:(unint64_t)index;
- (void)setTransform:(CATransform3D *)transform;
@end

@implementation DYMetalLayer

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)anchorPoint
{
  x = self->_anchorPoint.x;
  y = self->_anchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)drawableSize
{
  width = self->_drawableSize.width;
  height = self->_drawableSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setTransform:(CATransform3D *)transform
{
  v3 = *&transform->m11;
  v4 = *&transform->m13;
  v5 = *&transform->m23;
  *&self->_transform.m21 = *&transform->m21;
  *&self->_transform.m23 = v5;
  *&self->_transform.m11 = v3;
  *&self->_transform.m13 = v4;
  v6 = *&transform->m31;
  v7 = *&transform->m33;
  v8 = *&transform->m43;
  *&self->_transform.m41 = *&transform->m41;
  *&self->_transform.m43 = v8;
  *&self->_transform.m31 = v6;
  *&self->_transform.m33 = v7;
}

- (CATransform3D)transform
{
  v3 = *&self[1].m31;
  *&retstr->m31 = *&self[1].m23;
  *&retstr->m33 = v3;
  v4 = *&self[1].m41;
  *&retstr->m41 = *&self[1].m33;
  *&retstr->m43 = v4;
  v5 = *&self[1].m11;
  *&retstr->m11 = *&self->m43;
  *&retstr->m13 = v5;
  v6 = *&self[1].m21;
  *&retstr->m21 = *&self[1].m13;
  *&retstr->m23 = v6;
  return self;
}

- (id)nextDrawableWithTextureResourceIndex:(unint64_t)index
{
  v5 = MEMORY[0x277CD7050];
  pixelFormat = [(DYMetalLayer *)self pixelFormat];
  [(DYMetalLayer *)self drawableSize];
  v8 = (v7 + 0.5);
  [(DYMetalLayer *)self drawableSize];
  v10 = [v5 texture2DDescriptorWithPixelFormat:pixelFormat width:v8 height:(v9 + 0.5) mipmapped:0];
  if ([(DYMetalLayer *)self framebufferOnly])
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  [v10 setUsage:v11];
  [v10 setIsDrawable:1];
  [v10 setResourceIndex:index];
  [v10 setForceResourceIndex:1];
  device = [(DYMetalLayer *)self device];
  v13 = [device newTextureWithDescriptor:v10];

  [v13 setLabel:@"CAMetalLayer Drawable"];
  v14 = [[DYMetalDrawable alloc] initWithTexture:v13];

  return v14;
}

- (id)nextDrawable
{
  v3 = MEMORY[0x277CD7050];
  pixelFormat = [(DYMetalLayer *)self pixelFormat];
  [(DYMetalLayer *)self drawableSize];
  v6 = (v5 + 0.5);
  [(DYMetalLayer *)self drawableSize];
  v8 = [v3 texture2DDescriptorWithPixelFormat:pixelFormat width:v6 height:(v7 + 0.5) mipmapped:0];
  if ([(DYMetalLayer *)self framebufferOnly])
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  [v8 setUsage:v9];
  [v8 setIsDrawable:1];
  device = [(DYMetalLayer *)self device];
  v11 = [device newTextureWithDescriptor:v8];

  [v11 setLabel:@"CAMetalLayer Drawable"];
  v12 = [[DYMetalDrawable alloc] initWithTexture:v11];

  return v12;
}

@end