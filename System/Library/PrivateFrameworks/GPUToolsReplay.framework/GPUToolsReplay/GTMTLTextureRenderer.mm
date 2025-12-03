@interface GTMTLTextureRenderer
- (GTMTLTextureRenderer)initWithDevice:(id)device;
- (id)getPipelineStateFromCache:(id)cache withDescriptor:(id)descriptor withFormat:(unint64_t)format;
- (id)wrapLinear:(id)linear;
- (void)encodeWaits:(id)waits commandBuffer:(id)buffer;
- (void)render:(id)render withEncoder:(id)encoder withFormat:(unint64_t)format renderTargetSize:(CGSize)size viewContentsScale:(double)scale;
- (void)renderOverlay:(id)overlay color:(unsigned int)color shrinkToFit:(BOOL)fit withEncoder:(id)encoder withFormat:(unint64_t)format transform:(CATransform3D *)transform anchor:(CGPoint)anchor bounds:(CGRect)self0 renderTargetSize:(CGSize)self1 viewContentsScale:(double)self2;
- (void)renderTexture:(id)texture isDepthStencil:(BOOL)stencil shrinkToFit:(BOOL)fit withEncoder:(id)encoder withFormat:(unint64_t)format transform:(CATransform3D *)transform anchor:(CGPoint)anchor bounds:(CGRect)self0 renderTargetSize:(CGSize)self1 viewContentsScale:(double)self2;
@end

@implementation GTMTLTextureRenderer

- (void)render:(id)render withEncoder:(id)encoder withFormat:(unint64_t)format renderTargetSize:(CGSize)size viewContentsScale:(double)scale
{
  height = size.height;
  width = size.width;
  renderCopy = render;
  encoderCopy = encoder;
  overlay = [renderCopy overlay];
  texture = [renderCopy texture];
  if (overlay)
  {
    v17 = [renderCopy rgb];
    shrinkToFit = [renderCopy shrinkToFit];
    if (renderCopy)
    {
      [renderCopy transform];
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

    [renderCopy anchor];
    v22 = v21;
    v24 = v23;
    [renderCopy bounds];
    [(GTMTLTextureRenderer *)self renderOverlay:texture color:v17 shrinkToFit:shrinkToFit withEncoder:encoderCopy withFormat:format transform:&v37 anchor:v22 bounds:v24 renderTargetSize:v25 viewContentsScale:v26, v27, v28, width, height, *&scale];
  }

  else
  {
    depthStencil = [renderCopy depthStencil];
    shrinkToFit2 = [renderCopy shrinkToFit];
    if (renderCopy)
    {
      [renderCopy transform];
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

    [renderCopy anchor];
    v30 = v29;
    v32 = v31;
    [renderCopy bounds];
    [(GTMTLTextureRenderer *)self renderTexture:texture isDepthStencil:depthStencil shrinkToFit:shrinkToFit2 withEncoder:encoderCopy withFormat:format transform:&v37 anchor:v30 bounds:v32 renderTargetSize:v33 viewContentsScale:v34, v35, v36, width, height, *&scale];
  }
}

- (void)encodeWaits:(id)waits commandBuffer:(id)buffer
{
  waitsCopy = waits;
  bufferCopy = buffer;
  waitEvent = [waitsCopy waitEvent];

  if (waitEvent)
  {
    waitEvent2 = [waitsCopy waitEvent];
    [bufferCopy encodeWaitForEvent:waitEvent2 value:{objc_msgSend(waitsCopy, "waitEventValue")}];
  }
}

- (void)renderTexture:(id)texture isDepthStencil:(BOOL)stencil shrinkToFit:(BOOL)fit withEncoder:(id)encoder withFormat:(unint64_t)format transform:(CATransform3D *)transform anchor:(CGPoint)anchor bounds:(CGRect)self0 renderTargetSize:(CGSize)self1 viewContentsScale:(double)self2
{
  fitCopy = fit;
  stencilCopy = stencil;
  height = size.height;
  width = size.width;
  v19 = bounds.size.height;
  v20 = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v23 = anchor.y;
  v24 = anchor.x;
  v51 = *MEMORY[0x277D85DE8];
  textureCopy = texture;
  encoderCopy = encoder;
  if (textureCopy)
  {
    v28 = 48;
    if (stencilCopy)
    {
      v28 = 56;
    }

    v29 = 24;
    if (stencilCopy)
    {
      v29 = 32;
    }

    v30 = [(GTMTLTextureRenderer *)self getPipelineStateFromCache:*(&self->super.isa + v28) withDescriptor:*(&self->super.isa + v29) withFormat:format];
    memset(v50, 0, sizeof(v50));
    width = [textureCopy width];
    height = [textureCopy height];
    v33 = *&transform->m33;
    v46 = *&transform->m31;
    v47 = v33;
    v34 = *&transform->m43;
    v48 = *&transform->m41;
    v49 = v34;
    v35 = *&transform->m13;
    v43[0] = *&transform->m11;
    v43[1] = v35;
    v37 = *&transform->m23;
    v44 = *&transform->m21;
    v36.f64[1] = *(&v44 + 1);
    v45 = v37;
    v36.f64[0] = v24;
    v38.f64[0] = x;
    v39.f64[0] = v20;
    v41 = [(GTMTLTextureRenderer *)self wrapLinear:textureCopy, GetTextureRendererUniform(v50, v43, fitCopy, width, height, v36, v23, v38, y, v39, v19, scale, v40, width, height)];
    [encoderCopy setVertexBytes:v50 length:112 atIndex:0];
    [encoderCopy setRenderPipelineState:v30];
    [encoderCopy setFragmentTexture:v41 atIndex:0];
    [encoderCopy drawPrimitives:4 vertexStart:0 vertexCount:4];
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)renderOverlay:(id)overlay color:(unsigned int)color shrinkToFit:(BOOL)fit withEncoder:(id)encoder withFormat:(unint64_t)format transform:(CATransform3D *)transform anchor:(CGPoint)anchor bounds:(CGRect)self0 renderTargetSize:(CGSize)self1 viewContentsScale:(double)self2
{
  v51 = *MEMORY[0x277D85DE8];
  if (overlay)
  {
    fitCopy = fit;
    height = size.height;
    width = size.width;
    v17 = bounds.size.height;
    v18 = bounds.size.width;
    y = bounds.origin.y;
    x = bounds.origin.x;
    v21 = anchor.y;
    v22 = anchor.x;
    v50 = vdivq_f32(vcvtq_f32_u32(vandq_s8(vdupq_n_s32(color), xmmword_24DA8BB70)), xmmword_24DA8BB80);
    overlayPipelines = self->_overlayPipelines;
    overlayPipelineDescriptor = self->_overlayPipelineDescriptor;
    encoderCopy = encoder;
    overlayCopy = overlay;
    v29 = [(GTMTLTextureRenderer *)self getPipelineStateFromCache:overlayPipelines withDescriptor:overlayPipelineDescriptor withFormat:format];
    memset(v49, 0, sizeof(v49));
    width = [overlayCopy width];
    height = [overlayCopy height];
    v32 = *&transform->m33;
    v45 = *&transform->m31;
    v46 = v32;
    v33 = *&transform->m43;
    v47 = *&transform->m41;
    v48 = v33;
    v34 = *&transform->m13;
    v42[0] = *&transform->m11;
    v42[1] = v34;
    v36 = *&transform->m23;
    v43 = *&transform->m21;
    v35.f64[1] = *(&v43 + 1);
    v44 = v36;
    v35.f64[0] = v22;
    v37.f64[0] = x;
    v38.f64[0] = v18;
    v40 = [(GTMTLTextureRenderer *)self wrapLinear:overlayCopy, GetTextureRendererUniform(v49, v42, fitCopy, width, height, v35, v21, v37, y, v38, v17, scale, v39, width, height)];

    [encoderCopy setVertexBytes:v49 length:112 atIndex:0];
    [encoderCopy setRenderPipelineState:v29];
    [encoderCopy setFragmentTexture:v40 atIndex:0];
    [encoderCopy setFragmentBytes:&v50 length:16 atIndex:0];
    [encoderCopy drawPrimitives:4 vertexStart:0 vertexCount:4];
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (id)wrapLinear:(id)linear
{
  linearCopy = linear;
  pixelFormat = [linearCopy pixelFormat];
  if (pixelFormat > 551)
  {
    if (pixelFormat == 552)
    {
      v6 = 553;
    }

    else
    {
      v5 = linearCopy;
      if (pixelFormat != 554)
      {
        goto LABEL_11;
      }

      v6 = 555;
    }
  }

  else if (pixelFormat == 70)
  {
    v6 = 71;
  }

  else
  {
    v5 = linearCopy;
    if (pixelFormat != 80)
    {
      goto LABEL_11;
    }

    v6 = 81;
  }

  v5 = [linearCopy newTextureViewWithPixelFormat:v6];

LABEL_11:

  return v5;
}

- (id)getPipelineStateFromCache:(id)cache withDescriptor:(id)descriptor withFormat:(unint64_t)format
{
  cacheCopy = cache;
  descriptorCopy = descriptor;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:format];
  v11 = [cacheCopy objectForKeyedSubscript:v10];

  if (!v11)
  {
    colorAttachments = [descriptorCopy colorAttachments];
    v13 = [colorAttachments objectAtIndexedSubscript:0];
    [v13 setPixelFormat:format];

    device = self->_device;
    v17 = 0;
    v11 = [(MTLDevice *)device newRenderPipelineStateWithDescriptor:descriptorCopy error:&v17];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:format];
    [cacheCopy setObject:v11 forKeyedSubscript:v15];
  }

  return v11;
}

- (GTMTLTextureRenderer)initWithDevice:(id)device
{
  deviceCopy = device;
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

    objc_storeStrong(&v6->_device, device);
    v13 = GTMTLReplayController_defaultLibrary(deviceCopy);
    v14 = [v13 newFunctionWithName:@"FullscreenVertex"];
    v15 = [v13 newFunctionWithName:@"FullscreenFragmentOverlay"];
    v16 = [v13 newFunctionWithName:@"FullscreenFragmentTexture"];
    v17 = [v13 newFunctionWithName:@"FullscreenFragmentDepthStencil"];
    v18 = objc_alloc_init(MEMORY[0x277CD6F70]);
    overlayPipelineDescriptor = v6->_overlayPipelineDescriptor;
    v6->_overlayPipelineDescriptor = v18;

    [(MTLRenderPipelineDescriptor *)v6->_overlayPipelineDescriptor setVertexFunction:v14];
    [(MTLRenderPipelineDescriptor *)v6->_overlayPipelineDescriptor setFragmentFunction:v15];
    colorAttachments = [(MTLRenderPipelineDescriptor *)v6->_overlayPipelineDescriptor colorAttachments];
    v21 = [colorAttachments objectAtIndexedSubscript:0];

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