@interface DYCAMetalLayerWrapper
- (DYCAMetalLayerWrapper)init;
- (id)nextDrawableWithTextureResourceIndex:(unint64_t)index;
@end

@implementation DYCAMetalLayerWrapper

- (id)nextDrawableWithTextureResourceIndex:(unint64_t)index
{
  v5 = MEMORY[0x277CD7050];
  pixelFormat = [(CAMetalLayer *)self->_layer pixelFormat];
  [(CAMetalLayer *)self->_layer drawableSize];
  v8 = (v7 + 0.5);
  [(CAMetalLayer *)self->_layer drawableSize];
  v10 = [v5 texture2DDescriptorWithPixelFormat:pixelFormat width:v8 height:(v9 + 0.5) mipmapped:0];
  if ([(CAMetalLayer *)self->_layer framebufferOnly])
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  [v10 setUsage:v11];
  [v10 setResourceIndex:index];
  [v10 setForceResourceIndex:1];
  [v10 setIsDrawable:1];
  nextDrawable = [(CAMetalLayer *)self->_layer nextDrawable];
  texture = [nextDrawable texture];
  iosurface = [texture iosurface];

  device = [(CAMetalLayer *)self->_layer device];
  v16 = [device newTextureWithDescriptor:v10 iosurface:iosurface plane:0];

  [v16 setLabel:@"CAMetalLayer Drawable"];
  v17 = [[DYMetalDrawable alloc] initWithTexture:v16];

  return v17;
}

- (DYCAMetalLayerWrapper)init
{
  v6.receiver = self;
  v6.super_class = DYCAMetalLayerWrapper;
  v2 = [(DYCAMetalLayerWrapper *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CD9F10]);
    layer = v2->_layer;
    v2->_layer = v3;
  }

  return v2;
}

@end