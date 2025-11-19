@interface GTMTLTextureRenderer
- (GTMTLTextureRenderer)initWithDevice:(id)a3;
- (id)getPipelineStateFromCache:(id)a3 withDescriptor:(id)a4 withFormat:(unint64_t)a5;
- (id)wrapLinear:(id)a3;
- (void)encodeWaits:(id)a3 commandBuffer:(id)a4;
- (void)render:(id)a3 withEncoder:(id)a4 withFormat:(unint64_t)a5 renderTargetSize:(CGSize)a6 viewContentsScale:(double)a7;
- (void)renderOverlay:(id)a3 color:(unsigned int)a4 shrinkToFit:(BOOL)a5 withEncoder:(id)a6 withFormat:(unint64_t)a7 transform:(CATransform3D *)a8 anchor:(CGPoint)a9 bounds:(CGRect)a10 renderTargetSize:(CGSize)a11 viewContentsScale:(double)a12;
- (void)renderTexture:(id)a3 isDepthStencil:(BOOL)a4 shrinkToFit:(BOOL)a5 withEncoder:(id)a6 withFormat:(unint64_t)a7 transform:(CATransform3D *)a8 anchor:(CGPoint)a9 bounds:(CGRect)a10 renderTargetSize:(CGSize)a11 viewContentsScale:(double)a12;
@end

@implementation GTMTLTextureRenderer

- (void)render:(id)a3 withEncoder:(id)a4 withFormat:(unint64_t)a5 renderTargetSize:(CGSize)a6 viewContentsScale:(double)a7
{
  height = a6.height;
  width = a6.width;
  v13 = a3;
  v14 = a4;
  v15 = [v13 overlay];
  v16 = [v13 texture];
  if (v15)
  {
    v17 = [v13 rgb];
    v18 = [v13 shrinkToFit];
    if (v13)
    {
      [v13 transform];
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
    }

    [v13 anchor];
    v22 = v21;
    v24 = v23;
    [v13 bounds];
    [(GTMTLTextureRenderer *)self renderOverlay:v16 color:v17 shrinkToFit:v18 withEncoder:v14 withFormat:a5 transform:&v37 anchor:v22 bounds:v24 renderTargetSize:v25 viewContentsScale:v26, v27, v28, width, height, *&a7];
  }

  else
  {
    v19 = [v13 depthStencil];
    v20 = [v13 shrinkToFit];
    if (v13)
    {
      [v13 transform];
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
    }

    [v13 anchor];
    v30 = v29;
    v32 = v31;
    [v13 bounds];
    [(GTMTLTextureRenderer *)self renderTexture:v16 isDepthStencil:v19 shrinkToFit:v20 withEncoder:v14 withFormat:a5 transform:&v37 anchor:v30 bounds:v32 renderTargetSize:v33 viewContentsScale:v34, v35, v36, width, height, *&a7];
  }
}

- (void)encodeWaits:(id)a3 commandBuffer:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = [v8 waitEvent];

  if (v6)
  {
    v7 = [v8 waitEvent];
    [v5 encodeWaitForEvent:v7 value:{objc_msgSend(v8, "waitEventValue")}];
  }
}

- (void)renderTexture:(id)a3 isDepthStencil:(BOOL)a4 shrinkToFit:(BOOL)a5 withEncoder:(id)a6 withFormat:(unint64_t)a7 transform:(CATransform3D *)a8 anchor:(CGPoint)a9 bounds:(CGRect)a10 renderTargetSize:(CGSize)a11 viewContentsScale:(double)a12
{
  v15 = a5;
  v16 = a4;
  height = a11.height;
  width = a11.width;
  v19 = a10.size.height;
  v20 = a10.size.width;
  y = a10.origin.y;
  x = a10.origin.x;
  v23 = a9.y;
  v24 = a9.x;
  v51 = *MEMORY[0x277D85DE8];
  v26 = a3;
  v27 = a6;
  if (v26)
  {
    v28 = 48;
    if (v16)
    {
      v28 = 56;
    }

    v29 = 24;
    if (v16)
    {
      v29 = 32;
    }

    v30 = [(GTMTLTextureRenderer *)self getPipelineStateFromCache:*(&self->super.isa + v28) withDescriptor:*(&self->super.isa + v29) withFormat:a7];
    memset(v50, 0, sizeof(v50));
    v31 = [v26 width];
    v32 = [v26 height];
    v33 = *&a8->m33;
    v46 = *&a8->m31;
    v47 = v33;
    v34 = *&a8->m43;
    v48 = *&a8->m41;
    v49 = v34;
    v35 = *&a8->m13;
    v43[0] = *&a8->m11;
    v43[1] = v35;
    v37 = *&a8->m23;
    v44 = *&a8->m21;
    v36.f64[1] = *(&v44 + 1);
    v45 = v37;
    v36.f64[0] = v24;
    v38.f64[0] = x;
    v39.f64[0] = v20;
    v41 = [(GTMTLTextureRenderer *)self wrapLinear:v26, GetTextureRendererUniform(v50, v43, v15, v31, v32, v36, v23, v38, y, v39, v19, a12, v40, width, height)];
    [v27 setVertexBytes:v50 length:112 atIndex:0];
    [v27 setRenderPipelineState:v30];
    [v27 setFragmentTexture:v41 atIndex:0];
    [v27 drawPrimitives:4 vertexStart:0 vertexCount:4];
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)renderOverlay:(id)a3 color:(unsigned int)a4 shrinkToFit:(BOOL)a5 withEncoder:(id)a6 withFormat:(unint64_t)a7 transform:(CATransform3D *)a8 anchor:(CGPoint)a9 bounds:(CGRect)a10 renderTargetSize:(CGSize)a11 viewContentsScale:(double)a12
{
  v51 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v14 = a5;
    height = a11.height;
    width = a11.width;
    v17 = a10.size.height;
    v18 = a10.size.width;
    y = a10.origin.y;
    x = a10.origin.x;
    v21 = a9.y;
    v22 = a9.x;
    v50 = vdivq_f32(vcvtq_f32_u32(vandq_s8(vdupq_n_s32(a4), xmmword_24DA8BB70)), xmmword_24DA8BB80);
    overlayPipelines = self->_overlayPipelines;
    overlayPipelineDescriptor = self->_overlayPipelineDescriptor;
    v27 = a6;
    v28 = a3;
    v29 = [(GTMTLTextureRenderer *)self getPipelineStateFromCache:overlayPipelines withDescriptor:overlayPipelineDescriptor withFormat:a7];
    memset(v49, 0, sizeof(v49));
    v30 = [v28 width];
    v31 = [v28 height];
    v32 = *&a8->m33;
    v45 = *&a8->m31;
    v46 = v32;
    v33 = *&a8->m43;
    v47 = *&a8->m41;
    v48 = v33;
    v34 = *&a8->m13;
    v42[0] = *&a8->m11;
    v42[1] = v34;
    v36 = *&a8->m23;
    v43 = *&a8->m21;
    v35.f64[1] = *(&v43 + 1);
    v44 = v36;
    v35.f64[0] = v22;
    v37.f64[0] = x;
    v38.f64[0] = v18;
    v40 = [(GTMTLTextureRenderer *)self wrapLinear:v28, GetTextureRendererUniform(v49, v42, v14, v30, v31, v35, v21, v37, y, v38, v17, a12, v39, width, height)];

    [v27 setVertexBytes:v49 length:112 atIndex:0];
    [v27 setRenderPipelineState:v29];
    [v27 setFragmentTexture:v40 atIndex:0];
    [v27 setFragmentBytes:&v50 length:16 atIndex:0];
    [v27 drawPrimitives:4 vertexStart:0 vertexCount:4];
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (id)wrapLinear:(id)a3
{
  v3 = a3;
  v4 = [v3 pixelFormat];
  if (v4 > 551)
  {
    if (v4 == 552)
    {
      v6 = 553;
    }

    else
    {
      v5 = v3;
      if (v4 != 554)
      {
        goto LABEL_11;
      }

      v6 = 555;
    }
  }

  else if (v4 == 70)
  {
    v6 = 71;
  }

  else
  {
    v5 = v3;
    if (v4 != 80)
    {
      goto LABEL_11;
    }

    v6 = 81;
  }

  v5 = [v3 newTextureViewWithPixelFormat:v6];

LABEL_11:

  return v5;
}

- (id)getPipelineStateFromCache:(id)a3 withDescriptor:(id)a4 withFormat:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  v11 = [v8 objectForKeyedSubscript:v10];

  if (!v11)
  {
    v12 = [v9 colorAttachments];
    v13 = [v12 objectAtIndexedSubscript:0];
    [v13 setPixelFormat:a5];

    device = self->_device;
    v17 = 0;
    v11 = [(MTLDevice *)device newRenderPipelineStateWithDescriptor:v9 error:&v17];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
    [v8 setObject:v11 forKeyedSubscript:v15];
  }

  return v11;
}

- (GTMTLTextureRenderer)initWithDevice:(id)a3
{
  v5 = a3;
  v28.receiver = self;
  v28.super_class = GTMTLTextureRenderer;
  v6 = [(GTMTLTextureRenderer *)&v28 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    overlayPipelines = v6->_overlayPipelines;
    v6->_overlayPipelines = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    texturePipelines = v6->_texturePipelines;
    v6->_texturePipelines = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    depthStencilPipelines = v6->_depthStencilPipelines;
    v6->_depthStencilPipelines = v11;

    objc_storeStrong(&v6->_device, a3);
    v13 = GTMTLReplayController_defaultLibrary(v5);
    v14 = [v13 newFunctionWithName:@"FullscreenVertex"];
    v15 = [v13 newFunctionWithName:@"FullscreenFragmentOverlay"];
    v16 = [v13 newFunctionWithName:@"FullscreenFragmentTexture"];
    v17 = [v13 newFunctionWithName:@"FullscreenFragmentDepthStencil"];
    v18 = objc_alloc_init(MEMORY[0x277CD6F70]);
    overlayPipelineDescriptor = v6->_overlayPipelineDescriptor;
    v6->_overlayPipelineDescriptor = v18;

    [(MTLRenderPipelineDescriptor *)v6->_overlayPipelineDescriptor setVertexFunction:v14];
    [(MTLRenderPipelineDescriptor *)v6->_overlayPipelineDescriptor setFragmentFunction:v15];
    v20 = [(MTLRenderPipelineDescriptor *)v6->_overlayPipelineDescriptor colorAttachments];
    v21 = [v20 objectAtIndexedSubscript:0];

    [v21 setBlendingEnabled:1];
    [v21 setSourceRGBBlendFactor:1];
    [v21 setRgbBlendOperation:0];
    [v21 setDestinationRGBBlendFactor:5];

    v22 = objc_alloc_init(MEMORY[0x277CD6F70]);
    texturePipelineDescriptor = v6->_texturePipelineDescriptor;
    v6->_texturePipelineDescriptor = v22;

    [(MTLRenderPipelineDescriptor *)v6->_texturePipelineDescriptor setVertexFunction:v14];
    [(MTLRenderPipelineDescriptor *)v6->_texturePipelineDescriptor setFragmentFunction:v16];
    v24 = objc_alloc_init(MEMORY[0x277CD6F70]);
    depthStencilPipelineDescriptor = v6->_depthStencilPipelineDescriptor;
    v6->_depthStencilPipelineDescriptor = v24;

    [(MTLRenderPipelineDescriptor *)v6->_depthStencilPipelineDescriptor setVertexFunction:v14];
    [(MTLRenderPipelineDescriptor *)v6->_depthStencilPipelineDescriptor setFragmentFunction:v17];
    v26 = v6;
  }

  return v6;
}

@end