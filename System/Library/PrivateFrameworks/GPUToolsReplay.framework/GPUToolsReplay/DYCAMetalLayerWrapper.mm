@interface DYCAMetalLayerWrapper
- (DYCAMetalLayerWrapper)init;
- (id)nextDrawableWithTextureResourceIndex:(unint64_t)a3;
@end

@implementation DYCAMetalLayerWrapper

- (id)nextDrawableWithTextureResourceIndex:(unint64_t)a3
{
  v5 = MEMORY[0x277CD7050];
  v6 = [(CAMetalLayer *)self->_layer pixelFormat];
  [(CAMetalLayer *)self->_layer drawableSize];
  v8 = (v7 + 0.5);
  [(CAMetalLayer *)self->_layer drawableSize];
  v10 = [v5 texture2DDescriptorWithPixelFormat:v6 width:v8 height:(v9 + 0.5) mipmapped:0];
  if ([(CAMetalLayer *)self->_layer framebufferOnly])
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  [v10 setUsage:v11];
  [v10 setResourceIndex:a3];
  [v10 setForceResourceIndex:1];
  [v10 setIsDrawable:1];
  v12 = [(CAMetalLayer *)self->_layer nextDrawable];
  v13 = [v12 texture];
  v14 = [v13 iosurface];

  v15 = [(CAMetalLayer *)self->_layer device];
  v16 = [v15 newTextureWithDescriptor:v10 iosurface:v14 plane:0];

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