@interface NUNAegirOffscreen
- (MTLTexture)texture0;
- (MTLTexture)texture1;
- (NUNAegirOffscreen)initWithDevice:(id)a3 width:(int)a4 height:(int)a5 texture0:(id)a6 texture1:(id)a7 loadAction:(unint64_t)a8 clearColor0:(id)a9 clearColor1:(id)a10;
- (void)setTexture0:(id)a3;
- (void)setTexture1:(id)a3;
@end

@implementation NUNAegirOffscreen

- (NUNAegirOffscreen)initWithDevice:(id)a3 width:(int)a4 height:(int)a5 texture0:(id)a6 texture1:(id)a7 loadAction:(unint64_t)a8 clearColor0:(id)a9 clearColor1:(id)a10
{
  var3 = a10.var3;
  var2 = a10.var2;
  var1 = a10.var1;
  var0 = a10.var0;
  v14 = a9.var3;
  v15 = a9.var2;
  v16 = a9.var1;
  v17 = a9.var0;
  v23 = a6;
  v24 = a7;
  v36.receiver = self;
  v36.super_class = NUNAegirOffscreen;
  v25 = [(NUNAegirOffscreen *)&v36 init];
  v26 = v25;
  if (v25)
  {
    v25->_width = a4;
    v25->_height = a5;
    v27 = v23;
    v28 = v24;
    v29 = objc_opt_new();
    v30 = [(MTLRenderPassDescriptor *)v29 colorAttachments];
    v31 = v30;
    if (v27)
    {
      v32 = [v30 objectAtIndexedSubscript:0];
      [v32 setClearColor:{v17, v16, v15, v14}];
      [v32 setStoreAction:1];
      [v32 setLoadAction:a8];
      [v32 setTexture:v27];
    }

    if (v28)
    {
      v33 = [v31 objectAtIndexedSubscript:1];
      [v33 setClearColor:{var0, var1, var2, var3}];
      [v33 setStoreAction:1];
      [v33 setLoadAction:a8];
      [v33 setTexture:v28];
    }

    renderPassDescriptor = v26->_renderPassDescriptor;
    v26->_renderPassDescriptor = v29;
  }

  return v26;
}

- (MTLTexture)texture0
{
  v2 = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];
  v4 = [v3 texture];

  return v4;
}

- (void)setTexture0:(id)a3
{
  renderPassDescriptor = self->_renderPassDescriptor;
  v4 = a3;
  v6 = [(MTLRenderPassDescriptor *)renderPassDescriptor colorAttachments];
  v5 = [v6 objectAtIndexedSubscript:0];
  [v5 setTexture:v4];
}

- (MTLTexture)texture1
{
  v2 = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:1];
  v4 = [v3 texture];

  return v4;
}

- (void)setTexture1:(id)a3
{
  renderPassDescriptor = self->_renderPassDescriptor;
  v4 = a3;
  v6 = [(MTLRenderPassDescriptor *)renderPassDescriptor colorAttachments];
  v5 = [v6 objectAtIndexedSubscript:1];
  [v5 setTexture:v4];
}

@end