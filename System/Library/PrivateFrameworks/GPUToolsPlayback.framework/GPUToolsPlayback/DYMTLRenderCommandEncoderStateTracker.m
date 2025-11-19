@interface DYMTLRenderCommandEncoderStateTracker
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (DYMTLRenderCommandEncoderStateTracker)initWithDevice:(id)a3 descriptor:(id)a4;
- (DYMTLRenderCommandEncoderStateTracker)initWithEncoder:(id)a3 descriptor:(id)a4;
- (id).cxx_construct;
- (vector<MTLViewport,)viewports;
- (void)_applyFragmentStateToEncoder:(id)a3 rawBytesBlock:(id)a4;
- (void)_applyHeapsAndResourcesToEncoder:(id)a3;
- (void)_applyVertexStateToEncoder:(id)a3 rawBytesBlock:(id)a4;
- (void)_setDefaultsWithDescriptor:(id)a3 device:(id)a4;
- (void)applyAllStateToEncoder:(id)a3 rawBytesBlock:(id)a4;
- (void)applyVertexFragmentStateToEncoder:(id)a3 rawBytesBlock:(id)a4;
- (void)applyVertexStateToEncoder:(id)a3 rawBytesBlock:(id)a4;
- (void)enumerateThreadgroupMemoryUsingBlock:(id)a3;
- (void)setBlendColorRed:(float)a3 green:(float)a4 blue:(float)a5 alpha:(float)a6;
- (void)setColorStoreAction:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setColorStoreActionOptions:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setDepthBias:(float)a3 slopeScale:(float)a4 clamp:(float)a5;
- (void)setFragmentBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setFragmentBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setFragmentBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setFragmentSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setFragmentSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6;
- (void)setFragmentSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6;
- (void)setFragmentSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setFragmentTexture:(id)a3 atTextureIndex:(unint64_t)a4 samplerState:(id)a5 atSamplerIndex:(unint64_t)a6;
- (void)setFragmentTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setRenderPipelineState:(id)a3;
- (void)setScissorRect:(id *)a3;
- (void)setScissorRects:(id *)a3 count:(unint64_t)a4;
- (void)setStencilFrontReferenceValue:(unsigned int)a3 backReferenceValue:(unsigned int)a4;
- (void)setStencilReferenceValue:(unsigned int)a3;
- (void)setTessellationFactorBuffer:(id)a3 offset:(unint64_t)a4 instanceStride:(unint64_t)a5;
- (void)setTessellationFactorScale:(float)a3;
- (void)setThreadgroupMemoryLength:(unint64_t)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setTileBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setTileBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setTileBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setTileSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setTileSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6;
- (void)setTileSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6;
- (void)setTileSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setTileTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setVertexAmplificationCount:(unint64_t)a3 viewMappings:(id *)a4;
- (void)setVertexAmplificationMode:(unint64_t)a3 value:(unint64_t)a4;
- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setVertexBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setVertexBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setVertexSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setVertexSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6;
- (void)setVertexSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6;
- (void)setVertexSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setVertexTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setViewport:(id *)a3;
- (void)setViewports:(id *)a3 count:(unint64_t)a4;
- (void)setVisibilityResultMode:(unint64_t)a3 offset:(unint64_t)a4;
- (void)useHeap:(id)a3;
- (void)useHeaps:(const void *)a3 count:(unint64_t)a4;
- (void)useResource:(id)a3 usage:(unint64_t)a4;
- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5;
@end

@implementation DYMTLRenderCommandEncoderStateTracker

- (DYMTLRenderCommandEncoderStateTracker)initWithEncoder:(id)a3 descriptor:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v14.receiver = self;
    v14.super_class = DYMTLRenderCommandEncoderStateTracker;
    v9 = [(DYMTLRenderCommandEncoderStateTracker *)&v14 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_renderEncoder, a3);
      v11 = [v7 device];
      [(DYMTLRenderCommandEncoderStateTracker *)v10 _setDefaultsWithDescriptor:v8 device:v11];

      DYMTLSetAssociatedObject(v10, 0, v8);
    }

    self = v10;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (DYMTLRenderCommandEncoderStateTracker)initWithDevice:(id)a3 descriptor:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v12.receiver = self;
    v12.super_class = DYMTLRenderCommandEncoderStateTracker;
    v8 = [(DYMTLRenderCommandEncoderStateTracker *)&v12 init];
    v9 = v8;
    if (v8)
    {
      [(DYMTLRenderCommandEncoderStateTracker *)v8 _setDefaultsWithDescriptor:v7 device:v6];
      DYMTLSetAssociatedObject(v9, 0, v7);
    }

    self = v9;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)conformsToProtocol:(id)a3
{
  v4 = a3;
  if (([(MTLRenderCommandEncoderSPI *)self->_renderEncoder conformsToProtocol:v4]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = DYMTLRenderCommandEncoderStateTracker;
    v5 = [(DYMTLRenderCommandEncoderStateTracker *)&v7 conformsToProtocol:v4];
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = DYMTLRenderCommandEncoderStateTracker;
  if ([(DYMTLRenderCommandEncoderStateTracker *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    renderEncoder = self->_renderEncoder;
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)_setDefaultsWithDescriptor:(id)a3 device:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 validate:v7 width:&self->_width height:&self->_height];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v6 rasterizationRateMap];
    if (!v8)
    {
LABEL_9:

      goto LABEL_10;
    }

    v9 = [v6 renderTargetWidth];
    v10 = [v6 renderTargetHeight];
    v11 = v10;
    if (v9)
    {
      if (!v10)
      {
        goto LABEL_7;
      }
    }

    else
    {
      [v8 screenSize];
      v9 = *&v13[0];
      if (!v11)
      {
LABEL_7:
        [v8 screenSize];
        v11 = *(&v13[0] + 1);
      }
    }

    self->_width = v9;
    self->_height = v11;
    goto LABEL_9;
  }

LABEL_10:
  v13[0] = 0uLL;
  v13[1] = vcvtq_f64_f32(vcvt_f32_f64(vcvtq_f64_u64(*&self->_width)));
  v13[2] = xmmword_24D740DE0;
  std::vector<MTLViewport>::assign(&self->_viewports.__begin_, 1uLL, v13);
  self->_frontFacingWinding = 0;
  self->_cullMode = 0;
  self->_depthClipMode = 0;
  self->_lineWidth = 1.0;
  *&self->_depthBias = 0;
  self->_depthBiasClamp = 0.0;
  v12[0] = 0uLL;
  v12[1] = *&self->_width;
  std::vector<MTLScissorRect>::assign(&self->_scissorRects.__begin_, 1uLL, v12);
  self->_triangleFillMode = 0;
  self->_visibilityResultMode = 0;
  *&self->_amplificationMode = xmmword_24D740C30;
  self->_amplificationModeSet = 0;
  self->_frontStencilRef = 0;
  self->_backStencilRef = 0;
  *&self->_blendColorRed = 0;
  *&self->_blendColorBlue = 0;
  self->_visibilityResultOffset = 0;
  self->_tessellationFactorBufferOffset = 0;
  self->_tessellationFactorBufferInstanceStride = 0;
  self->_tessellationFactorBuffer = 0;
  self->_tessellationFactorScale = 1.0;
  self->_tessellationFactorSet = 0;
}

- (void)setRenderPipelineState:(id)a3
{
  v4 = a3;
  v5 = v4;
  v7 = v4;
  if (self->_amplificationCountSet)
  {
    v6 = DYMTLGetAssociatedObject(v4, 0);
    if ([v6 maxVertexAmplificationCount] < self->_amplificationCount)
    {
      self->_amplificationCountSet = 0;
    }

    v5 = v7;
  }

  self->_renderPipelineState = v5;
  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setRenderPipelineState:v5];
}

- (void)setVertexBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  DYMTLBoundBufferInfo::DYMTLBoundBufferInfo(&v9, a3, a4);
  DYMTLBoundBufferInfo::operator=(&self->_vertexBuffers[a5].m_buffer, &v9);
  free(v9.m_bytes);

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setVertexBytes:a3 length:a4 atIndex:a5];
}

- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v8 = a3;
  v9 = v8;
  v10 = 0;
  v11 = a4;
  DYMTLBoundBufferInfo::operator=(&self->_vertexBuffers[a5].m_buffer, &v9);
  free(v10);

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setVertexBuffer:v8 offset:a4 atIndex:a5];
}

- (void)setVertexBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  if (a5.length)
  {
    v10 = &self->_vertexBuffers[a5.location];
    v11 = a3;
    v12 = a4;
    v13 = a5.length;
    do
    {
      v14 = *v12++;
      v15 = *v11;
      v16 = 0;
      v17 = v14;
      DYMTLBoundBufferInfo::operator=(&v10->m_buffer, &v15);
      free(v16);

      ++v11;
      ++v10;
      --v13;
    }

    while (v13);
  }

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setVertexBuffers:a3 offsets:a4 withRange:location, length];
}

- (void)setVertexTextures:(const void *)a3 withRange:(_NSRange)a4
{
  if (a4.length)
  {
    v4 = &self->_vertexTextures[a4.location];
    v5 = a3;
    length = a4.length;
    do
    {
      v7 = *v5++;
      *v4++ = v7;
      --length;
    }

    while (length);
  }

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setVertexTextures:a3 withRange:a4.location];
}

- (void)setVertexSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  v4 = self + 16 * a4;
  *(v4 + 250) = a3;
  *(v4 + 251) = 0x447A000000000000;
  [MTLRenderCommandEncoderSPI setVertexSamplerState:"setVertexSamplerState:atIndex:" atIndex:?];
}

- (void)setVertexSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  if (a4.length)
  {
    p_minLOD = &self->_vertexSamplers[a4.location].minLOD;
    v5 = a3;
    length = a4.length;
    do
    {
      v7 = *v5++;
      *(p_minLOD - 1) = v7;
      *p_minLOD = 0x447A000000000000;
      p_minLOD += 4;
      --length;
    }

    while (length);
  }

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setVertexSamplerStates:a3 withRange:a4.location];
}

- (void)setVertexSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
{
  v6 = self + 16 * a6;
  *(v6 + 250) = a3;
  *(v6 + 502) = a4;
  *(v6 + 503) = a5;
  [MTLRenderCommandEncoderSPI setVertexSamplerState:"setVertexSamplerState:lodMinClamp:lodMaxClamp:atIndex:" lodMinClamp:? lodMaxClamp:? atIndex:?];
}

- (void)setVertexSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
{
  if (a6.length)
  {
    p_maxLOD = &self->_vertexSamplers[a6.location].maxLOD;
    v7 = a3;
    v8 = a4;
    v9 = a5;
    length = a6.length;
    do
    {
      v12 = *v7++;
      v11 = v12;
      *&v12 = *v8++;
      v13 = v12;
      *&v12 = *v9++;
      *(p_maxLOD - 3) = v11;
      *(p_maxLOD - 1) = v13;
      *p_maxLOD = v12;
      p_maxLOD += 4;
      --length;
    }

    while (length);
  }

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setVertexSamplerStates:a3 lodMinClamps:a4 lodMaxClamps:a5 withRange:a6.location];
}

- (void)setFragmentBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  DYMTLBoundBufferInfo::DYMTLBoundBufferInfo(&v9, a3, a4);
  DYMTLBoundBufferInfo::operator=(&self->_fragmentBuffers[a5].m_buffer, &v9);
  free(v9.m_bytes);

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setFragmentBytes:a3 length:a4 atIndex:a5];
}

- (void)setFragmentBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v8 = a3;
  v9 = v8;
  v10 = 0;
  v11 = a4;
  DYMTLBoundBufferInfo::operator=(&self->_fragmentBuffers[a5].m_buffer, &v9);
  free(v10);

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setFragmentBuffer:v8 offset:a4 atIndex:a5];
}

- (void)setFragmentBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  if (a5.length)
  {
    v10 = &self->_fragmentBuffers[a5.location];
    v11 = a3;
    v12 = a4;
    v13 = a5.length;
    do
    {
      v14 = *v12++;
      v15 = *v11;
      v16 = 0;
      v17 = v14;
      DYMTLBoundBufferInfo::operator=(&v10->m_buffer, &v15);
      free(v16);

      ++v11;
      ++v10;
      --v13;
    }

    while (v13);
  }

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setFragmentBuffers:a3 offsets:a4 withRange:location, length];
}

- (void)setFragmentTextures:(const void *)a3 withRange:(_NSRange)a4
{
  if (a4.length)
  {
    v4 = &self->_fragmentTextures[a4.location];
    v5 = a3;
    length = a4.length;
    do
    {
      v7 = *v5++;
      *v4++ = v7;
      --length;
    }

    while (length);
  }

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setFragmentTextures:a3 withRange:a4.location];
}

- (void)setFragmentSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  v4 = self + 16 * a4;
  *(v4 + 503) = a3;
  *(v4 + 504) = 0x447A000000000000;
  [MTLRenderCommandEncoderSPI setFragmentSamplerState:"setFragmentSamplerState:atIndex:" atIndex:?];
}

- (void)setFragmentSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  if (a4.length)
  {
    p_minLOD = &self->_fragmentSamplers[a4.location].minLOD;
    v5 = a3;
    length = a4.length;
    do
    {
      v7 = *v5++;
      *(p_minLOD - 1) = v7;
      *p_minLOD = 0x447A000000000000;
      p_minLOD += 4;
      --length;
    }

    while (length);
  }

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setFragmentSamplerStates:a3 withRange:a4.location];
}

- (void)setFragmentSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
{
  v6 = self + 16 * a6;
  *(v6 + 503) = a3;
  *(v6 + 1008) = a4;
  *(v6 + 1009) = a5;
  [MTLRenderCommandEncoderSPI setFragmentSamplerState:"setFragmentSamplerState:lodMinClamp:lodMaxClamp:atIndex:" lodMinClamp:? lodMaxClamp:? atIndex:?];
}

- (void)setFragmentSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
{
  if (a6.length)
  {
    p_maxLOD = &self->_fragmentSamplers[a6.location].maxLOD;
    v7 = a3;
    v8 = a4;
    v9 = a5;
    length = a6.length;
    do
    {
      v12 = *v7++;
      v11 = v12;
      *&v12 = *v8++;
      v13 = v12;
      *&v12 = *v9++;
      *(p_maxLOD - 3) = v11;
      *(p_maxLOD - 1) = v13;
      *p_maxLOD = v12;
      p_maxLOD += 4;
      --length;
    }

    while (length);
  }

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setFragmentSamplerStates:a3 lodMinClamps:a4 lodMaxClamps:a5 withRange:a6.location];
}

- (void)setFragmentTexture:(id)a3 atTextureIndex:(unint64_t)a4 samplerState:(id)a5 atSamplerIndex:(unint64_t)a6
{
  self->_fragmentTextures[a4] = a3;
  v6 = self + 16 * a6;
  *(v6 + 503) = a5;
  *(v6 + 504) = 0x447A000000000000;
  [MTLRenderCommandEncoderSPI setFragmentTexture:"setFragmentTexture:atTextureIndex:samplerState:atSamplerIndex:" atTextureIndex:? samplerState:? atSamplerIndex:?];
}

- (void)setTileBytes:(const void *)a3 length:(unint64_t)a4 atIndex:(unint64_t)a5
{
  DYMTLBoundBufferInfo::DYMTLBoundBufferInfo(&v9, a3, a4);
  DYMTLBoundBufferInfo::operator=(&self->_tileBuffers[a5].m_buffer, &v9);
  free(v9.m_bytes);

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setTileBytes:a3 length:a4 atIndex:a5];
}

- (void)setTileBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v8 = a3;
  v9 = v8;
  v10 = 0;
  v11 = a4;
  DYMTLBoundBufferInfo::operator=(&self->_tileBuffers[a5].m_buffer, &v9);
  free(v10);

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setTileBuffer:v8 offset:a4 atIndex:a5];
}

- (void)setTileBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  if (a5.length)
  {
    v10 = &self->_tileBuffers[a5.location];
    v11 = a3;
    v12 = a4;
    v13 = a5.length;
    do
    {
      v14 = *v12++;
      v15 = *v11;
      v16 = 0;
      v17 = v14;
      DYMTLBoundBufferInfo::operator=(&v10->m_buffer, &v15);
      free(v16);

      ++v11;
      ++v10;
      --v13;
    }

    while (v13);
  }

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setTileBuffers:a3 offsets:a4 withRange:location, length];
}

- (void)setTileTextures:(const void *)a3 withRange:(_NSRange)a4
{
  if (a4.length)
  {
    v4 = &self->_tileTextures[a4.location];
    v5 = a3;
    length = a4.length;
    do
    {
      v7 = *v5++;
      *v4++ = v7;
      --length;
    }

    while (length);
  }

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setTileTextures:a3 withRange:a4.location];
}

- (void)setTileSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  v4 = self + 16 * a4;
  *(v4 + 756) = a3;
  *(v4 + 757) = 0x447A000000000000;
  [MTLRenderCommandEncoderSPI setTileSamplerState:"setTileSamplerState:atIndex:" atIndex:?];
}

- (void)setTileSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  if (a4.length)
  {
    p_minLOD = &self->_tileSamplers[a4.location].minLOD;
    v5 = a3;
    length = a4.length;
    do
    {
      v7 = *v5++;
      *(p_minLOD - 1) = v7;
      *p_minLOD = 0x447A000000000000;
      p_minLOD += 4;
      --length;
    }

    while (length);
  }

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setTileSamplerStates:a3 withRange:a4.location];
}

- (void)setTileSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
{
  v6 = self + 16 * a6;
  *(v6 + 756) = a3;
  *(v6 + 1514) = a4;
  *(v6 + 1515) = a5;
  [MTLRenderCommandEncoderSPI setTileSamplerState:"setTileSamplerState:lodMinClamp:lodMaxClamp:atIndex:" lodMinClamp:? lodMaxClamp:? atIndex:?];
}

- (void)setTileSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
{
  if (a6.length)
  {
    p_maxLOD = &self->_tileSamplers[a6.location].maxLOD;
    v7 = a3;
    v8 = a4;
    v9 = a5;
    length = a6.length;
    do
    {
      v12 = *v7++;
      v11 = v12;
      *&v12 = *v8++;
      v13 = v12;
      *&v12 = *v9++;
      *(p_maxLOD - 3) = v11;
      *(p_maxLOD - 1) = v13;
      *p_maxLOD = v12;
      p_maxLOD += 4;
      --length;
    }

    while (length);
  }

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setTileSamplerStates:a3 lodMinClamps:a4 lodMaxClamps:a5 withRange:a6.location];
}

- (void)setThreadgroupMemoryLength:(unint64_t)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v5 = self + 16 * a5;
  *(v5 + 788) = a3;
  *(v5 + 789) = a4;
  [MTLRenderCommandEncoderSPI setThreadgroupMemoryLength:"setThreadgroupMemoryLength:offset:atIndex:" offset:? atIndex:?];
}

- (void)useResource:(id)a3 usage:(unint64_t)a4
{
  v6 = a3;
  end = self->_usedResources.__end_;
  cap = self->_usedResources.__cap_;
  v20 = v6;
  if (end >= cap)
  {
    begin = self->_usedResources.__begin_;
    v12 = end - begin;
    v13 = (end - begin) >> 4;
    v14 = v13 + 1;
    if ((v13 + 1) >> 60)
    {
      std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
    }

    v15 = cap - begin;
    if (v15 >> 3 > v14)
    {
      v14 = v15 >> 3;
    }

    v16 = v15 >= 0x7FFFFFFFFFFFFFF0;
    v17 = 0xFFFFFFFFFFFFFFFLL;
    if (!v16)
    {
      v17 = v14;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<DYMTLUsedResourceInfo>>(&self->_usedResources, v17);
    }

    v18 = (16 * v13);
    *v18 = v6;
    v18[1] = a4;
    v10 = (16 * v13 + 16);
    memcpy(0, begin, v12);
    v19 = self->_usedResources.__begin_;
    self->_usedResources.__begin_ = 0;
    self->_usedResources.__end_ = v10;
    self->_usedResources.__cap_ = 0;
    if (v19)
    {
      operator delete(v19);
    }

    v9 = v20;
  }

  else
  {
    v9 = v6;
    *end = v6;
    *(end + 1) = a4;
    v10 = (end + 16);
  }

  self->_usedResources.__end_ = v10;
  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder useResource:v9 usage:a4];
}

- (void)useResources:(const void *)a3 count:(unint64_t)a4 usage:(unint64_t)a5
{
  if (a4)
  {
    end = self->_usedResources.__end_;
    v9 = a3;
    v10 = a4;
    do
    {
      cap = self->_usedResources.__cap_;
      if (end >= cap)
      {
        begin = self->_usedResources.__begin_;
        v13 = end - begin;
        v14 = (end - begin) >> 4;
        v15 = v14 + 1;
        if ((v14 + 1) >> 60)
        {
          std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
        }

        v16 = cap - begin;
        if (v16 >> 3 > v15)
        {
          v15 = v16 >> 3;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFF0)
        {
          v17 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<DYMTLUsedResourceInfo>>(&self->_usedResources, v17);
        }

        v18 = (end - begin) >> 4;
        v19 = (16 * v14);
        *v19 = *v9;
        v19[1] = a5;
        end = (16 * v14 + 16);
        v20 = (16 * v14 - 16 * v18);
        memcpy(&v19[-2 * v18], begin, v13);
        v21 = self->_usedResources.__begin_;
        self->_usedResources.__begin_ = v20;
        self->_usedResources.__end_ = end;
        self->_usedResources.__cap_ = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *end = *v9;
        *(end + 1) = a5;
        end = (end + 16);
      }

      self->_usedResources.__end_ = end;
      ++v9;
      --v10;
    }

    while (v10);
  }

  renderEncoder = self->_renderEncoder;

  [(MTLRenderCommandEncoderSPI *)renderEncoder useResources:a3 count:a4 usage:a5];
}

- (void)useHeap:(id)a3
{
  v4 = a3;
  std::vector<objc_object  {objcproto7MTLHeap}*>::push_back[abi:ne200100](&self->_usedHeaps, &v4);
  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder useHeap:v4];
}

- (void)useHeaps:(const void *)a3 count:(unint64_t)a4
{
  if (a4)
  {
    v7 = a3;
    v8 = a4;
    do
    {
      std::vector<objc_object  {objcproto7MTLHeap}*>::push_back[abi:ne200100](&self->_usedHeaps, v7++);
      --v8;
    }

    while (v8);
  }

  renderEncoder = self->_renderEncoder;

  [(MTLRenderCommandEncoderSPI *)renderEncoder useHeaps:a3 count:a4];
}

- (void)setViewport:(id *)a3
{
  std::vector<MTLViewport>::assign(&self->_viewports.__begin_, 1uLL, a3);
  renderEncoder = self->_renderEncoder;
  v6 = *&a3->var2;
  v7[0] = *&a3->var0;
  v7[1] = v6;
  v7[2] = *&a3->var4;
  [(MTLRenderCommandEncoderSPI *)renderEncoder setViewport:v7];
}

- (void)setViewports:(id *)a3 count:(unint64_t)a4
{
  if (a3 && a4)
  {
    std::vector<MTLViewport>::__assign_with_size[abi:ne200100]<MTLViewport const*,MTLViewport const*>(&self->_viewports.__begin_, a3, &a3[a4], a4);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v8 = 0;
    v9 = 0x3FF0000000000000;
    std::vector<MTLViewport>::assign(&self->_viewports.__begin_, 1uLL, v7);
  }

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setViewports:a3 count:a4];
}

- (void)setDepthBias:(float)a3 slopeScale:(float)a4 clamp:(float)a5
{
  self->_depthBias = a3;
  self->_depthBiasSlopeScale = a4;
  self->_depthBiasClamp = a5;
  [MTLRenderCommandEncoderSPI setDepthBias:"setDepthBias:slopeScale:clamp:" slopeScale:? clamp:?];
}

- (void)setScissorRect:(id *)a3
{
  std::vector<MTLScissorRect>::assign(&self->_scissorRects.__begin_, 1uLL, a3);
  renderEncoder = self->_renderEncoder;
  v6 = *&a3->var2;
  v7[0] = *&a3->var0;
  v7[1] = v6;
  [(MTLRenderCommandEncoderSPI *)renderEncoder setScissorRect:v7];
}

- (void)setScissorRects:(id *)a3 count:(unint64_t)a4
{
  if (a3 && a4)
  {
    std::vector<MTLScissorRect>::__assign_with_size[abi:ne200100]<MTLScissorRect const*,MTLScissorRect const*>(&self->_scissorRects.__begin_, a3, &a3[a4], a4);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    std::vector<MTLScissorRect>::assign(&self->_scissorRects.__begin_, 1uLL, v7);
  }

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setScissorRects:a3 count:a4];
}

- (void)setVertexAmplificationMode:(unint64_t)a3 value:(unint64_t)a4
{
  self->_amplificationMode = a3;
  self->_amplificationValue = a4;
  self->_amplificationModeSet = 1;
  [MTLRenderCommandEncoderSPI setVertexAmplificationMode:"setVertexAmplificationMode:value:" value:?];
}

- (void)setStencilReferenceValue:(unsigned int)a3
{
  self->_frontStencilRef = a3;
  self->_backStencilRef = a3;
  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setStencilReferenceValue:?];
}

- (void)setStencilFrontReferenceValue:(unsigned int)a3 backReferenceValue:(unsigned int)a4
{
  self->_frontStencilRef = a3;
  self->_backStencilRef = a4;
  [MTLRenderCommandEncoderSPI setStencilFrontReferenceValue:"setStencilFrontReferenceValue:backReferenceValue:" backReferenceValue:?];
}

- (void)setColorStoreAction:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v6[0] = a4;
  v6[2] = v6;
  std::__hash_table<std::__hash_value_type<unsigned long,DYMTLStoreInfo>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,DYMTLStoreInfo>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,DYMTLStoreInfo>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,DYMTLStoreInfo>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&self->_colorStoreInfos.__table_.__bucket_list_.__ptr_, v6)[3] = a3;
  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setColorStoreAction:a3 atIndex:v6[0]];
}

- (void)setColorStoreActionOptions:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v6[0] = a4;
  v6[2] = v6;
  std::__hash_table<std::__hash_value_type<unsigned long,DYMTLStoreInfo>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,DYMTLStoreInfo>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,DYMTLStoreInfo>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,DYMTLStoreInfo>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&self->_colorStoreInfos.__table_.__bucket_list_.__ptr_, v6)[4] = a3;
  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setColorStoreActionOptions:a3 atIndex:v6[0]];
}

- (void)setVisibilityResultMode:(unint64_t)a3 offset:(unint64_t)a4
{
  self->_visibilityResultMode = a3;
  self->_visibilityResultOffset = a4;
  [MTLRenderCommandEncoderSPI setVisibilityResultMode:"setVisibilityResultMode:offset:" offset:?];
}

- (void)setBlendColorRed:(float)a3 green:(float)a4 blue:(float)a5 alpha:(float)a6
{
  self->_blendColorRed = a3;
  self->_blendColorGreen = a4;
  self->_blendColorBlue = a5;
  self->_blendColorAlpha = a6;
  [MTLRenderCommandEncoderSPI setBlendColorRed:"setBlendColorRed:green:blue:alpha:" green:? blue:? alpha:?];
}

- (void)setTessellationFactorBuffer:(id)a3 offset:(unint64_t)a4 instanceStride:(unint64_t)a5
{
  self->_tessellationFactorSet = 1;
  self->_tessellationFactorBuffer = a3;
  self->_tessellationFactorBufferOffset = a4;
  self->_tessellationFactorBufferInstanceStride = a5;
  [MTLRenderCommandEncoderSPI setTessellationFactorBuffer:"setTessellationFactorBuffer:offset:instanceStride:" offset:? instanceStride:?];
}

- (void)setTessellationFactorScale:(float)a3
{
  self->_tessellationFactorSet = 1;
  self->_tessellationFactorScale = a3;
  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setTessellationFactorScale:?];
}

- (void)setVertexAmplificationCount:(unint64_t)a3 viewMappings:(id *)a4
{
  self->_amplificationCountSet = 1;
  self->_amplificationCount = a3;
  begin = self->_amplificationViewMappings.__begin_;
  self->_amplificationViewMappings.__end_ = begin;
  if (a4 && a3)
  {
    v7 = a4;
    v8 = a3;
    do
    {
      cap = self->_amplificationViewMappings.__cap_;
      if (begin >= cap)
      {
        v10 = self->_amplificationViewMappings.__begin_;
        v11 = (begin - v10) >> 3;
        if ((v11 + 1) >> 61)
        {
          std::vector<std::pair<ShaderDebugger::Metadata::MDBase::MetadataType,unsigned long long>>::__throw_length_error[abi:ne200100]();
        }

        v12 = cap - v10;
        v13 = v12 >> 2;
        if (v12 >> 2 <= (v11 + 1))
        {
          v13 = v11 + 1;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(&self->_amplificationViewMappings, v14);
        }

        *(8 * v11) = *v7;
        begin = (8 * v11 + 8);
        v15 = self->_amplificationViewMappings.__begin_;
        v16 = (self->_amplificationViewMappings.__end_ - v15);
        v17 = (8 * v11 - v16);
        memcpy(v17, v15, v16);
        v18 = self->_amplificationViewMappings.__begin_;
        self->_amplificationViewMappings.__begin_ = v17;
        self->_amplificationViewMappings.__end_ = begin;
        self->_amplificationViewMappings.__cap_ = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *begin = *v7;
        begin = (begin + 8);
      }

      self->_amplificationViewMappings.__end_ = begin;
      ++v7;
      --v8;
    }

    while (v8);
  }

  renderEncoder = self->_renderEncoder;

  [(MTLRenderCommandEncoderSPI *)renderEncoder setVertexAmplificationCount:a3 viewMappings:a4];
}

- (void)_applyHeapsAndResourcesToEncoder:(id)a3
{
  v9 = a3;
  begin = self->_usedHeaps.__begin_;
  var0 = self->_usedHeaps.var0;
  while (begin != var0)
  {
    v6 = *begin;
    [v9 useHeap:v6];

    ++begin;
  }

  v8 = self->_usedResources.__begin_;
  end = self->_usedResources.__end_;
  while (v8 != end)
  {
    [v9 useResource:*v8 usage:*(v8 + 1)];
    v8 = (v8 + 16);
  }
}

- (void)_applyVertexStateToEncoder:(id)a3 rawBytesBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = (self->_viewports.__end_ - self->_viewports.__begin_) >> 4;
  [v6 setViewports:? count:?];
  v9 = self->_scissorRects.__end_ - self->_scissorRects.__begin_;
  [v6 setScissorRects:? count:?];
  [v6 setFrontFacingWinding:self->_frontFacingWinding];
  [v6 setCullMode:self->_cullMode];
  if (self->_amplificationModeSet)
  {
    [v6 setVertexAmplificationMode:self->_amplificationMode value:self->_amplificationValue];
  }

  if (self->_amplificationCountSet)
  {
    if (self->_amplificationViewMappings.__begin_ == self->_amplificationViewMappings.__end_)
    {
      begin = 0;
    }

    else
    {
      begin = self->_amplificationViewMappings.__begin_;
    }

    [v6 setVertexAmplificationCount:self->_amplificationCount viewMappings:begin];
  }

  if (self->_tessellationFactorSet)
  {
    *&v10 = self->_tessellationFactorScale;
    [v6 setTessellationFactorScale:v10];
    [v6 setTessellationFactorBuffer:self->_tessellationFactorBuffer offset:self->_tessellationFactorBufferOffset instanceStride:self->_tessellationFactorBufferInstanceStride];
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __82__DYMTLRenderCommandEncoderStateTracker__applyVertexStateToEncoder_rawBytesBlock___block_invoke;
  v20[3] = &unk_27930F8C0;
  v12 = v7;
  v22 = v12;
  v13 = v6;
  v21 = v13;
  [(DYMTLRenderCommandEncoderStateTracker *)self enumerateVertexBuffersUsingBlock:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __82__DYMTLRenderCommandEncoderStateTracker__applyVertexStateToEncoder_rawBytesBlock___block_invoke_2;
  v18[3] = &unk_27930F538;
  v14 = v13;
  v19 = v14;
  [(DYMTLRenderCommandEncoderStateTracker *)self enumerateVertexTexturesUsingBlock:v18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __82__DYMTLRenderCommandEncoderStateTracker__applyVertexStateToEncoder_rawBytesBlock___block_invoke_3;
  v16[3] = &unk_27930F8E8;
  v15 = v14;
  v17 = v15;
  [(DYMTLRenderCommandEncoderStateTracker *)self enumerateVertexSamplersUsingBlock:v16];
}

void __82__DYMTLRenderCommandEncoderStateTracker__applyVertexStateToEncoder_rawBytesBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 || !*(a2 + 8))
  {
    v6 = *(a1 + 32);
    v7 = *a2;
    if (*a2 && !*(a2 + 8))
    {
      v8 = *(a2 + 16);
    }

    else
    {
      v8 = 0;
    }

    v13 = v7;
    [v6 setVertexBuffer:v7 offset:v8 atIndex:a3];
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = (*(*(a1 + 40) + 16))();
    v11 = *(a1 + 32);
    if (*a2 || !*(a2 + 8))
    {
      v12 = 0;
    }

    else
    {
      v12 = *(a2 + 16);
    }

    [v11 setVertexBytes:v10 length:v12 atIndex:a3];
  }
}

uint64_t __82__DYMTLRenderCommandEncoderStateTracker__applyVertexStateToEncoder_rawBytesBlock___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  LODWORD(a4) = *(a2 + 8);
  LODWORD(a5) = *(a2 + 12);
  return [*(a1 + 32) setVertexSamplerState:*a2 lodMinClamp:a3 lodMaxClamp:a4 atIndex:a5];
}

- (void)_applyFragmentStateToEncoder:(id)a3 rawBytesBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __84__DYMTLRenderCommandEncoderStateTracker__applyFragmentStateToEncoder_rawBytesBlock___block_invoke;
  v16[3] = &unk_27930F8C0;
  v8 = v7;
  v18 = v8;
  v9 = v6;
  v17 = v9;
  [(DYMTLRenderCommandEncoderStateTracker *)self enumerateFragmentBuffersUsingBlock:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__DYMTLRenderCommandEncoderStateTracker__applyFragmentStateToEncoder_rawBytesBlock___block_invoke_2;
  v14[3] = &unk_27930F538;
  v10 = v9;
  v15 = v10;
  [(DYMTLRenderCommandEncoderStateTracker *)self enumerateFragmentTexturesUsingBlock:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__DYMTLRenderCommandEncoderStateTracker__applyFragmentStateToEncoder_rawBytesBlock___block_invoke_3;
  v12[3] = &unk_27930F8E8;
  v11 = v10;
  v13 = v11;
  [(DYMTLRenderCommandEncoderStateTracker *)self enumerateFragmentSamplersUsingBlock:v12];
}

void __84__DYMTLRenderCommandEncoderStateTracker__applyFragmentStateToEncoder_rawBytesBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 || !*(a2 + 8))
  {
    v6 = *(a1 + 32);
    v7 = *a2;
    if (*a2 && !*(a2 + 8))
    {
      v8 = *(a2 + 16);
    }

    else
    {
      v8 = 0;
    }

    v13 = v7;
    [v6 setFragmentBuffer:v7 offset:v8 atIndex:a3];
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = (*(*(a1 + 40) + 16))();
    v11 = *(a1 + 32);
    if (*a2 || !*(a2 + 8))
    {
      v12 = 0;
    }

    else
    {
      v12 = *(a2 + 16);
    }

    [v11 setFragmentBytes:v10 length:v12 atIndex:a3];
  }
}

uint64_t __84__DYMTLRenderCommandEncoderStateTracker__applyFragmentStateToEncoder_rawBytesBlock___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  LODWORD(a4) = *(a2 + 8);
  LODWORD(a5) = *(a2 + 12);
  return [*(a1 + 32) setFragmentSamplerState:*a2 lodMinClamp:a3 lodMaxClamp:a4 atIndex:a5];
}

- (void)applyVertexStateToEncoder:(id)a3 rawBytesBlock:(id)a4
{
  v7 = a3;
  v6 = a4;
  [(DYMTLRenderCommandEncoderStateTracker *)self _applyHeapsAndResourcesToEncoder:v7];
  [(DYMTLRenderCommandEncoderStateTracker *)self _applyVertexStateToEncoder:v7 rawBytesBlock:v6];
}

- (void)applyVertexFragmentStateToEncoder:(id)a3 rawBytesBlock:(id)a4
{
  v7 = a3;
  v6 = a4;
  [(DYMTLRenderCommandEncoderStateTracker *)self _applyHeapsAndResourcesToEncoder:v7];
  [(DYMTLRenderCommandEncoderStateTracker *)self _applyVertexStateToEncoder:v7 rawBytesBlock:v6];
  [(DYMTLRenderCommandEncoderStateTracker *)self _applyFragmentStateToEncoder:v7 rawBytesBlock:v6];
}

- (void)applyAllStateToEncoder:(id)a3 rawBytesBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_renderPipelineState)
  {
    [v6 setRenderPipelineState:?];
  }

  [(DYMTLRenderCommandEncoderStateTracker *)self _applyHeapsAndResourcesToEncoder:v6];
  [(DYMTLRenderCommandEncoderStateTracker *)self _applyVertexStateToEncoder:v6 rawBytesBlock:v7];
  [(DYMTLRenderCommandEncoderStateTracker *)self _applyFragmentStateToEncoder:v6 rawBytesBlock:v7];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __78__DYMTLRenderCommandEncoderStateTracker_applyAllStateToEncoder_rawBytesBlock___block_invoke;
  v26[3] = &unk_27930F8C0;
  v8 = v7;
  v28 = v8;
  v9 = v6;
  v27 = v9;
  [(DYMTLRenderCommandEncoderStateTracker *)self enumerateTileBuffersUsingBlock:v26];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __78__DYMTLRenderCommandEncoderStateTracker_applyAllStateToEncoder_rawBytesBlock___block_invoke_2;
  v24[3] = &unk_27930F538;
  v10 = v9;
  v25 = v10;
  [(DYMTLRenderCommandEncoderStateTracker *)self enumerateTileTexturesUsingBlock:v24];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __78__DYMTLRenderCommandEncoderStateTracker_applyAllStateToEncoder_rawBytesBlock___block_invoke_3;
  v22[3] = &unk_27930F8E8;
  v11 = v10;
  v23 = v11;
  [(DYMTLRenderCommandEncoderStateTracker *)self enumerateTileSamplersUsingBlock:v22];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __78__DYMTLRenderCommandEncoderStateTracker_applyAllStateToEncoder_rawBytesBlock___block_invoke_4;
  v20[3] = &unk_27930F960;
  v12 = v11;
  v21 = v12;
  [(DYMTLRenderCommandEncoderStateTracker *)self enumerateThreadgroupMemoryUsingBlock:v20];
  if (self->_depthStencilState)
  {
    [v12 setDepthStencilState:?];
  }

  *&v13 = self->_blendColorRed;
  *&v14 = self->_blendColorGreen;
  *&v15 = self->_blendColorBlue;
  *&v16 = self->_blendColorAlpha;
  [v12 setBlendColorRed:v13 green:v14 blue:v15 alpha:v16];
  [v12 setDepthClipMode:self->_depthClipMode];
  *&v17 = self->_depthBias;
  *&v18 = self->_depthBiasSlopeScale;
  *&v19 = self->_depthBiasClamp;
  [v12 setDepthBias:v17 slopeScale:v18 clamp:v19];
  [v12 setStencilFrontReferenceValue:self->_frontStencilRef backReferenceValue:self->_backStencilRef];
  [v12 setTriangleFillMode:self->_triangleFillMode];
  [v12 setVisibilityResultMode:self->_visibilityResultMode offset:self->_visibilityResultOffset];
}

void __78__DYMTLRenderCommandEncoderStateTracker_applyAllStateToEncoder_rawBytesBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 || !*(a2 + 8))
  {
    v6 = *(a1 + 32);
    v7 = *a2;
    if (*a2 && !*(a2 + 8))
    {
      v8 = *(a2 + 16);
    }

    else
    {
      v8 = 0;
    }

    v13 = v7;
    [v6 setTileBuffer:v7 offset:v8 atIndex:a3];
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = (*(*(a1 + 40) + 16))();
    v11 = *(a1 + 32);
    if (*a2 || !*(a2 + 8))
    {
      v12 = 0;
    }

    else
    {
      v12 = *(a2 + 16);
    }

    [v11 setTileBytes:v10 length:v12 atIndex:a3];
  }
}

uint64_t __78__DYMTLRenderCommandEncoderStateTracker_applyAllStateToEncoder_rawBytesBlock___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  LODWORD(a4) = *(a2 + 8);
  LODWORD(a5) = *(a2 + 12);
  return [*(a1 + 32) setTileSamplerState:*a2 lodMinClamp:a3 lodMaxClamp:a4 atIndex:a5];
}

- (void)enumerateThreadgroupMemoryUsingBlock:(id)a3
{
  v4 = a3;
  v5 = 0;
  v7 = 0;
  for (i = self->_threadgroupMemories; !i->length; ++i)
  {
    if (v5 > 0x1D)
    {
      goto LABEL_8;
    }

LABEL_7:
    ++v5;
  }

  v4[2](v4, i, v5, &v7);
  if (v5 <= 0x1D && (v7 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
}

- (vector<MTLViewport,)viewports
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return std::vector<MTLViewport>::__init_with_size[abi:ne200100]<MTLViewport*,MTLViewport*>(retstr, self->_viewports.__begin_, self->_viewports.__end_, 0xAAAAAAAAAAAAAAABLL * ((self->_viewports.__end_ - self->_viewports.__begin_) >> 4));
}

- (id).cxx_construct
{
  self->_scissorRects.__cap_ = 0;
  *&self->_scissorRects.__begin_ = 0u;
  bzero(self->_fragmentBuffers, 0x2E8uLL);
  bzero(self->_tileBuffers, 0x2E8uLL);
  self->_amplificationViewMappings.__cap_ = 0;
  *&self->_amplificationViewMappings.__begin_ = 0u;
  self->_colorStoreInfos.__table_.__bucket_list_ = 0u;
  *&self->_colorStoreInfos.__table_.__first_node_.__next_ = 0u;
  bzero(&self->_usedHeaps, 0x318uLL);
  self->_colorStoreInfos.__table_.__max_load_factor_ = 1.0;
  self->_viewports.__begin_ = 0;
  self->_viewports.__cap_ = 0;
  self->_viewports.__end_ = 0;
  return self;
}

@end