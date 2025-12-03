@interface NUNAegirOffscreen
- (MTLTexture)texture0;
- (MTLTexture)texture1;
- (NUNAegirOffscreen)initWithDevice:(id)device width:(int)width height:(int)height texture0:(id)texture0 texture1:(id)texture1 loadAction:(unint64_t)action clearColor0:(id)color0 clearColor1:(id)self0;
- (void)setTexture0:(id)texture0;
- (void)setTexture1:(id)texture1;
@end

@implementation NUNAegirOffscreen

- (NUNAegirOffscreen)initWithDevice:(id)device width:(int)width height:(int)height texture0:(id)texture0 texture1:(id)texture1 loadAction:(unint64_t)action clearColor0:(id)color0 clearColor1:(id)self0
{
  var3 = color1.var3;
  var2 = color1.var2;
  var1 = color1.var1;
  var0 = color1.var0;
  v14 = color0.var3;
  v15 = color0.var2;
  v16 = color0.var1;
  v17 = color0.var0;
  texture0Copy = texture0;
  texture1Copy = texture1;
  v36.receiver = self;
  v36.super_class = NUNAegirOffscreen;
  v25 = [(NUNAegirOffscreen *)&v36 init];
  v26 = v25;
  if (v25)
  {
    v25->_width = width;
    v25->_height = height;
    v27 = texture0Copy;
    v28 = texture1Copy;
    v29 = objc_opt_new();
    colorAttachments = [(MTLRenderPassDescriptor *)v29 colorAttachments];
    v31 = colorAttachments;
    if (v27)
    {
      v32 = [colorAttachments objectAtIndexedSubscript:0];
      [v32 setClearColor:{v17, v16, v15, v14}];
      [v32 setStoreAction:1];
      [v32 setLoadAction:action];
      [v32 setTexture:v27];
    }

    if (v28)
    {
      v33 = [v31 objectAtIndexedSubscript:1];
      [v33 setClearColor:{var0, var1, var2, var3}];
      [v33 setStoreAction:1];
      [v33 setLoadAction:action];
      [v33 setTexture:v28];
    }

    renderPassDescriptor = v26->_renderPassDescriptor;
    v26->_renderPassDescriptor = v29;
  }

  return v26;
}

- (MTLTexture)texture0
{
  colorAttachments = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor colorAttachments];
  v3 = [colorAttachments objectAtIndexedSubscript:0];
  texture = [v3 texture];

  return texture;
}

- (void)setTexture0:(id)texture0
{
  renderPassDescriptor = self->_renderPassDescriptor;
  texture0Copy = texture0;
  colorAttachments = [(MTLRenderPassDescriptor *)renderPassDescriptor colorAttachments];
  v5 = [colorAttachments objectAtIndexedSubscript:0];
  [v5 setTexture:texture0Copy];
}

- (MTLTexture)texture1
{
  colorAttachments = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor colorAttachments];
  v3 = [colorAttachments objectAtIndexedSubscript:1];
  texture = [v3 texture];

  return texture;
}

- (void)setTexture1:(id)texture1
{
  renderPassDescriptor = self->_renderPassDescriptor;
  texture1Copy = texture1;
  colorAttachments = [(MTLRenderPassDescriptor *)renderPassDescriptor colorAttachments];
  v5 = [colorAttachments objectAtIndexedSubscript:1];
  [v5 setTexture:texture1Copy];
}

@end