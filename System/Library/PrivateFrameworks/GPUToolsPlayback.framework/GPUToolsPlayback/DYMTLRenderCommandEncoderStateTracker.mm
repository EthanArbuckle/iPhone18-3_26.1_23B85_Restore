@interface DYMTLRenderCommandEncoderStateTracker
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)respondsToSelector:(SEL)selector;
- (DYMTLRenderCommandEncoderStateTracker)initWithDevice:(id)device descriptor:(id)descriptor;
- (DYMTLRenderCommandEncoderStateTracker)initWithEncoder:(id)encoder descriptor:(id)descriptor;
- (id).cxx_construct;
- (vector<MTLViewport,)viewports;
- (void)_applyFragmentStateToEncoder:(id)encoder rawBytesBlock:(id)block;
- (void)_applyHeapsAndResourcesToEncoder:(id)encoder;
- (void)_applyVertexStateToEncoder:(id)encoder rawBytesBlock:(id)block;
- (void)_setDefaultsWithDescriptor:(id)descriptor device:(id)device;
- (void)applyAllStateToEncoder:(id)encoder rawBytesBlock:(id)block;
- (void)applyVertexFragmentStateToEncoder:(id)encoder rawBytesBlock:(id)block;
- (void)applyVertexStateToEncoder:(id)encoder rawBytesBlock:(id)block;
- (void)enumerateThreadgroupMemoryUsingBlock:(id)block;
- (void)setBlendColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha;
- (void)setColorStoreAction:(unint64_t)action atIndex:(unint64_t)index;
- (void)setColorStoreActionOptions:(unint64_t)options atIndex:(unint64_t)index;
- (void)setDepthBias:(float)bias slopeScale:(float)scale clamp:(float)clamp;
- (void)setFragmentBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setFragmentBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setFragmentBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setFragmentSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setFragmentSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setFragmentSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setFragmentSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setFragmentTexture:(id)texture atTextureIndex:(unint64_t)index samplerState:(id)state atSamplerIndex:(unint64_t)samplerIndex;
- (void)setFragmentTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setRenderPipelineState:(id)state;
- (void)setScissorRect:(id *)rect;
- (void)setScissorRects:(id *)rects count:(unint64_t)count;
- (void)setStencilFrontReferenceValue:(unsigned int)value backReferenceValue:(unsigned int)referenceValue;
- (void)setStencilReferenceValue:(unsigned int)value;
- (void)setTessellationFactorBuffer:(id)buffer offset:(unint64_t)offset instanceStride:(unint64_t)stride;
- (void)setTessellationFactorScale:(float)scale;
- (void)setThreadgroupMemoryLength:(unint64_t)length offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setTileBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setTileBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setTileBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setTileSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setTileSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setTileSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setTileSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setTileTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setVertexAmplificationCount:(unint64_t)count viewMappings:(id *)mappings;
- (void)setVertexAmplificationMode:(unint64_t)mode value:(unint64_t)value;
- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setVertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setVertexBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setVertexSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setVertexSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setVertexSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setVertexSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setVertexTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setViewport:(id *)viewport;
- (void)setViewports:(id *)viewports count:(unint64_t)count;
- (void)setVisibilityResultMode:(unint64_t)mode offset:(unint64_t)offset;
- (void)useHeap:(id)heap;
- (void)useHeaps:(const void *)heaps count:(unint64_t)count;
- (void)useResource:(id)resource usage:(unint64_t)usage;
- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage;
@end

@implementation DYMTLRenderCommandEncoderStateTracker

- (DYMTLRenderCommandEncoderStateTracker)initWithEncoder:(id)encoder descriptor:(id)descriptor
{
  encoderCopy = encoder;
  descriptorCopy = descriptor;
  if (encoderCopy)
  {
    v14.receiver = self;
    v14.super_class = DYMTLRenderCommandEncoderStateTracker;
    v9 = [(DYMTLRenderCommandEncoderStateTracker *)&v14 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_renderEncoder, encoder);
      device = [encoderCopy device];
      [(DYMTLRenderCommandEncoderStateTracker *)v10 _setDefaultsWithDescriptor:descriptorCopy device:device];

      DYMTLSetAssociatedObject(v10, 0, descriptorCopy);
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (DYMTLRenderCommandEncoderStateTracker)initWithDevice:(id)device descriptor:(id)descriptor
{
  deviceCopy = device;
  descriptorCopy = descriptor;
  if (deviceCopy)
  {
    v12.receiver = self;
    v12.super_class = DYMTLRenderCommandEncoderStateTracker;
    v8 = [(DYMTLRenderCommandEncoderStateTracker *)&v12 init];
    v9 = v8;
    if (v8)
    {
      [(DYMTLRenderCommandEncoderStateTracker *)v8 _setDefaultsWithDescriptor:descriptorCopy device:deviceCopy];
      DYMTLSetAssociatedObject(v9, 0, descriptorCopy);
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  if (([(MTLRenderCommandEncoderSPI *)self->_renderEncoder conformsToProtocol:protocolCopy]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = DYMTLRenderCommandEncoderStateTracker;
    v5 = [(DYMTLRenderCommandEncoderStateTracker *)&v7 conformsToProtocol:protocolCopy];
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)selector
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

- (void)_setDefaultsWithDescriptor:(id)descriptor device:(id)device
{
  descriptorCopy = descriptor;
  deviceCopy = device;
  [descriptorCopy validate:deviceCopy width:&self->_width height:&self->_height];
  if (objc_opt_respondsToSelector())
  {
    rasterizationRateMap = [descriptorCopy rasterizationRateMap];
    if (!rasterizationRateMap)
    {
LABEL_9:

      goto LABEL_10;
    }

    renderTargetWidth = [descriptorCopy renderTargetWidth];
    renderTargetHeight = [descriptorCopy renderTargetHeight];
    v11 = renderTargetHeight;
    if (renderTargetWidth)
    {
      if (!renderTargetHeight)
      {
        goto LABEL_7;
      }
    }

    else
    {
      [rasterizationRateMap screenSize];
      renderTargetWidth = *&v13[0];
      if (!v11)
      {
LABEL_7:
        [rasterizationRateMap screenSize];
        v11 = *(&v13[0] + 1);
      }
    }

    self->_width = renderTargetWidth;
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

- (void)setRenderPipelineState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  v7 = stateCopy;
  if (self->_amplificationCountSet)
  {
    v6 = DYMTLGetAssociatedObject(stateCopy, 0);
    if ([v6 maxVertexAmplificationCount] < self->_amplificationCount)
    {
      self->_amplificationCountSet = 0;
    }

    v5 = v7;
  }

  self->_renderPipelineState = v5;
  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setRenderPipelineState:v5];
}

- (void)setVertexBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  DYMTLBoundBufferInfo::DYMTLBoundBufferInfo(&v9, bytes, length);
  DYMTLBoundBufferInfo::operator=(&self->_vertexBuffers[index].m_buffer, &v9);
  free(v9.m_bytes);

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setVertexBytes:bytes length:length atIndex:index];
}

- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  bufferCopy = buffer;
  v9 = bufferCopy;
  v10 = 0;
  offsetCopy = offset;
  DYMTLBoundBufferInfo::operator=(&self->_vertexBuffers[index].m_buffer, &v9);
  free(v10);

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setVertexBuffer:bufferCopy offset:offset atIndex:index];
}

- (void)setVertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (range.length)
  {
    v10 = &self->_vertexBuffers[range.location];
    buffersCopy = buffers;
    offsetsCopy = offsets;
    v13 = range.length;
    do
    {
      v14 = *offsetsCopy++;
      v15 = *buffersCopy;
      v16 = 0;
      v17 = v14;
      DYMTLBoundBufferInfo::operator=(&v10->m_buffer, &v15);
      free(v16);

      ++buffersCopy;
      ++v10;
      --v13;
    }

    while (v13);
  }

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setVertexBuffers:buffers offsets:offsets withRange:location, length];
}

- (void)setVertexTextures:(const void *)textures withRange:(_NSRange)range
{
  if (range.length)
  {
    v4 = &self->_vertexTextures[range.location];
    texturesCopy = textures;
    length = range.length;
    do
    {
      v7 = *texturesCopy++;
      *v4++ = v7;
      --length;
    }

    while (length);
  }

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setVertexTextures:textures withRange:range.location];
}

- (void)setVertexSamplerState:(id)state atIndex:(unint64_t)index
{
  v4 = self + 16 * index;
  *(v4 + 250) = state;
  *(v4 + 251) = 0x447A000000000000;
  [MTLRenderCommandEncoderSPI setVertexSamplerState:"setVertexSamplerState:atIndex:" atIndex:?];
}

- (void)setVertexSamplerStates:(const void *)states withRange:(_NSRange)range
{
  if (range.length)
  {
    p_minLOD = &self->_vertexSamplers[range.location].minLOD;
    statesCopy = states;
    length = range.length;
    do
    {
      v7 = *statesCopy++;
      *(p_minLOD - 1) = v7;
      *p_minLOD = 0x447A000000000000;
      p_minLOD += 4;
      --length;
    }

    while (length);
  }

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setVertexSamplerStates:states withRange:range.location];
}

- (void)setVertexSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  v6 = self + 16 * index;
  *(v6 + 250) = state;
  *(v6 + 502) = clamp;
  *(v6 + 503) = maxClamp;
  [MTLRenderCommandEncoderSPI setVertexSamplerState:"setVertexSamplerState:lodMinClamp:lodMaxClamp:atIndex:" lodMinClamp:? lodMaxClamp:? atIndex:?];
}

- (void)setVertexSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  if (range.length)
  {
    p_maxLOD = &self->_vertexSamplers[range.location].maxLOD;
    statesCopy = states;
    clampsCopy = clamps;
    maxClampsCopy = maxClamps;
    length = range.length;
    do
    {
      v12 = *statesCopy++;
      v11 = v12;
      *&v12 = *clampsCopy++;
      v13 = v12;
      *&v12 = *maxClampsCopy++;
      *(p_maxLOD - 3) = v11;
      *(p_maxLOD - 1) = v13;
      *p_maxLOD = v12;
      p_maxLOD += 4;
      --length;
    }

    while (length);
  }

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setVertexSamplerStates:states lodMinClamps:clamps lodMaxClamps:maxClamps withRange:range.location];
}

- (void)setFragmentBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  DYMTLBoundBufferInfo::DYMTLBoundBufferInfo(&v9, bytes, length);
  DYMTLBoundBufferInfo::operator=(&self->_fragmentBuffers[index].m_buffer, &v9);
  free(v9.m_bytes);

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setFragmentBytes:bytes length:length atIndex:index];
}

- (void)setFragmentBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  bufferCopy = buffer;
  v9 = bufferCopy;
  v10 = 0;
  offsetCopy = offset;
  DYMTLBoundBufferInfo::operator=(&self->_fragmentBuffers[index].m_buffer, &v9);
  free(v10);

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setFragmentBuffer:bufferCopy offset:offset atIndex:index];
}

- (void)setFragmentBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (range.length)
  {
    v10 = &self->_fragmentBuffers[range.location];
    buffersCopy = buffers;
    offsetsCopy = offsets;
    v13 = range.length;
    do
    {
      v14 = *offsetsCopy++;
      v15 = *buffersCopy;
      v16 = 0;
      v17 = v14;
      DYMTLBoundBufferInfo::operator=(&v10->m_buffer, &v15);
      free(v16);

      ++buffersCopy;
      ++v10;
      --v13;
    }

    while (v13);
  }

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setFragmentBuffers:buffers offsets:offsets withRange:location, length];
}

- (void)setFragmentTextures:(const void *)textures withRange:(_NSRange)range
{
  if (range.length)
  {
    v4 = &self->_fragmentTextures[range.location];
    texturesCopy = textures;
    length = range.length;
    do
    {
      v7 = *texturesCopy++;
      *v4++ = v7;
      --length;
    }

    while (length);
  }

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setFragmentTextures:textures withRange:range.location];
}

- (void)setFragmentSamplerState:(id)state atIndex:(unint64_t)index
{
  v4 = self + 16 * index;
  *(v4 + 503) = state;
  *(v4 + 504) = 0x447A000000000000;
  [MTLRenderCommandEncoderSPI setFragmentSamplerState:"setFragmentSamplerState:atIndex:" atIndex:?];
}

- (void)setFragmentSamplerStates:(const void *)states withRange:(_NSRange)range
{
  if (range.length)
  {
    p_minLOD = &self->_fragmentSamplers[range.location].minLOD;
    statesCopy = states;
    length = range.length;
    do
    {
      v7 = *statesCopy++;
      *(p_minLOD - 1) = v7;
      *p_minLOD = 0x447A000000000000;
      p_minLOD += 4;
      --length;
    }

    while (length);
  }

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setFragmentSamplerStates:states withRange:range.location];
}

- (void)setFragmentSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  v6 = self + 16 * index;
  *(v6 + 503) = state;
  *(v6 + 1008) = clamp;
  *(v6 + 1009) = maxClamp;
  [MTLRenderCommandEncoderSPI setFragmentSamplerState:"setFragmentSamplerState:lodMinClamp:lodMaxClamp:atIndex:" lodMinClamp:? lodMaxClamp:? atIndex:?];
}

- (void)setFragmentSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  if (range.length)
  {
    p_maxLOD = &self->_fragmentSamplers[range.location].maxLOD;
    statesCopy = states;
    clampsCopy = clamps;
    maxClampsCopy = maxClamps;
    length = range.length;
    do
    {
      v12 = *statesCopy++;
      v11 = v12;
      *&v12 = *clampsCopy++;
      v13 = v12;
      *&v12 = *maxClampsCopy++;
      *(p_maxLOD - 3) = v11;
      *(p_maxLOD - 1) = v13;
      *p_maxLOD = v12;
      p_maxLOD += 4;
      --length;
    }

    while (length);
  }

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setFragmentSamplerStates:states lodMinClamps:clamps lodMaxClamps:maxClamps withRange:range.location];
}

- (void)setFragmentTexture:(id)texture atTextureIndex:(unint64_t)index samplerState:(id)state atSamplerIndex:(unint64_t)samplerIndex
{
  self->_fragmentTextures[index] = texture;
  v6 = self + 16 * samplerIndex;
  *(v6 + 503) = state;
  *(v6 + 504) = 0x447A000000000000;
  [MTLRenderCommandEncoderSPI setFragmentTexture:"setFragmentTexture:atTextureIndex:samplerState:atSamplerIndex:" atTextureIndex:? samplerState:? atSamplerIndex:?];
}

- (void)setTileBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  DYMTLBoundBufferInfo::DYMTLBoundBufferInfo(&v9, bytes, length);
  DYMTLBoundBufferInfo::operator=(&self->_tileBuffers[index].m_buffer, &v9);
  free(v9.m_bytes);

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setTileBytes:bytes length:length atIndex:index];
}

- (void)setTileBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  bufferCopy = buffer;
  v9 = bufferCopy;
  v10 = 0;
  offsetCopy = offset;
  DYMTLBoundBufferInfo::operator=(&self->_tileBuffers[index].m_buffer, &v9);
  free(v10);

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setTileBuffer:bufferCopy offset:offset atIndex:index];
}

- (void)setTileBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (range.length)
  {
    v10 = &self->_tileBuffers[range.location];
    buffersCopy = buffers;
    offsetsCopy = offsets;
    v13 = range.length;
    do
    {
      v14 = *offsetsCopy++;
      v15 = *buffersCopy;
      v16 = 0;
      v17 = v14;
      DYMTLBoundBufferInfo::operator=(&v10->m_buffer, &v15);
      free(v16);

      ++buffersCopy;
      ++v10;
      --v13;
    }

    while (v13);
  }

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setTileBuffers:buffers offsets:offsets withRange:location, length];
}

- (void)setTileTextures:(const void *)textures withRange:(_NSRange)range
{
  if (range.length)
  {
    v4 = &self->_tileTextures[range.location];
    texturesCopy = textures;
    length = range.length;
    do
    {
      v7 = *texturesCopy++;
      *v4++ = v7;
      --length;
    }

    while (length);
  }

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setTileTextures:textures withRange:range.location];
}

- (void)setTileSamplerState:(id)state atIndex:(unint64_t)index
{
  v4 = self + 16 * index;
  *(v4 + 756) = state;
  *(v4 + 757) = 0x447A000000000000;
  [MTLRenderCommandEncoderSPI setTileSamplerState:"setTileSamplerState:atIndex:" atIndex:?];
}

- (void)setTileSamplerStates:(const void *)states withRange:(_NSRange)range
{
  if (range.length)
  {
    p_minLOD = &self->_tileSamplers[range.location].minLOD;
    statesCopy = states;
    length = range.length;
    do
    {
      v7 = *statesCopy++;
      *(p_minLOD - 1) = v7;
      *p_minLOD = 0x447A000000000000;
      p_minLOD += 4;
      --length;
    }

    while (length);
  }

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setTileSamplerStates:states withRange:range.location];
}

- (void)setTileSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  v6 = self + 16 * index;
  *(v6 + 756) = state;
  *(v6 + 1514) = clamp;
  *(v6 + 1515) = maxClamp;
  [MTLRenderCommandEncoderSPI setTileSamplerState:"setTileSamplerState:lodMinClamp:lodMaxClamp:atIndex:" lodMinClamp:? lodMaxClamp:? atIndex:?];
}

- (void)setTileSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  if (range.length)
  {
    p_maxLOD = &self->_tileSamplers[range.location].maxLOD;
    statesCopy = states;
    clampsCopy = clamps;
    maxClampsCopy = maxClamps;
    length = range.length;
    do
    {
      v12 = *statesCopy++;
      v11 = v12;
      *&v12 = *clampsCopy++;
      v13 = v12;
      *&v12 = *maxClampsCopy++;
      *(p_maxLOD - 3) = v11;
      *(p_maxLOD - 1) = v13;
      *p_maxLOD = v12;
      p_maxLOD += 4;
      --length;
    }

    while (length);
  }

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setTileSamplerStates:states lodMinClamps:clamps lodMaxClamps:maxClamps withRange:range.location];
}

- (void)setThreadgroupMemoryLength:(unint64_t)length offset:(unint64_t)offset atIndex:(unint64_t)index
{
  v5 = self + 16 * index;
  *(v5 + 788) = length;
  *(v5 + 789) = offset;
  [MTLRenderCommandEncoderSPI setThreadgroupMemoryLength:"setThreadgroupMemoryLength:offset:atIndex:" offset:? atIndex:?];
}

- (void)useResource:(id)resource usage:(unint64_t)usage
{
  resourceCopy = resource;
  end = self->_usedResources.__end_;
  cap = self->_usedResources.__cap_;
  v20 = resourceCopy;
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
    *v18 = resourceCopy;
    v18[1] = usage;
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
    v9 = resourceCopy;
    *end = resourceCopy;
    *(end + 1) = usage;
    v10 = (end + 16);
  }

  self->_usedResources.__end_ = v10;
  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder useResource:v9 usage:usage];
}

- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage
{
  if (count)
  {
    end = self->_usedResources.__end_;
    resourcesCopy = resources;
    countCopy = count;
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
        *v19 = *resourcesCopy;
        v19[1] = usage;
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
        *end = *resourcesCopy;
        *(end + 1) = usage;
        end = (end + 16);
      }

      self->_usedResources.__end_ = end;
      ++resourcesCopy;
      --countCopy;
    }

    while (countCopy);
  }

  renderEncoder = self->_renderEncoder;

  [(MTLRenderCommandEncoderSPI *)renderEncoder useResources:resources count:count usage:usage];
}

- (void)useHeap:(id)heap
{
  heapCopy = heap;
  std::vector<objc_object  {objcproto7MTLHeap}*>::push_back[abi:ne200100](&self->_usedHeaps, &heapCopy);
  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder useHeap:heapCopy];
}

- (void)useHeaps:(const void *)heaps count:(unint64_t)count
{
  if (count)
  {
    heapsCopy = heaps;
    countCopy = count;
    do
    {
      std::vector<objc_object  {objcproto7MTLHeap}*>::push_back[abi:ne200100](&self->_usedHeaps, heapsCopy++);
      --countCopy;
    }

    while (countCopy);
  }

  renderEncoder = self->_renderEncoder;

  [(MTLRenderCommandEncoderSPI *)renderEncoder useHeaps:heaps count:count];
}

- (void)setViewport:(id *)viewport
{
  std::vector<MTLViewport>::assign(&self->_viewports.__begin_, 1uLL, viewport);
  renderEncoder = self->_renderEncoder;
  v6 = *&viewport->var2;
  v7[0] = *&viewport->var0;
  v7[1] = v6;
  v7[2] = *&viewport->var4;
  [(MTLRenderCommandEncoderSPI *)renderEncoder setViewport:v7];
}

- (void)setViewports:(id *)viewports count:(unint64_t)count
{
  if (viewports && count)
  {
    std::vector<MTLViewport>::__assign_with_size[abi:ne200100]<MTLViewport const*,MTLViewport const*>(&self->_viewports.__begin_, viewports, &viewports[count], count);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v8 = 0;
    v9 = 0x3FF0000000000000;
    std::vector<MTLViewport>::assign(&self->_viewports.__begin_, 1uLL, v7);
  }

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setViewports:viewports count:count];
}

- (void)setDepthBias:(float)bias slopeScale:(float)scale clamp:(float)clamp
{
  self->_depthBias = bias;
  self->_depthBiasSlopeScale = scale;
  self->_depthBiasClamp = clamp;
  [MTLRenderCommandEncoderSPI setDepthBias:"setDepthBias:slopeScale:clamp:" slopeScale:? clamp:?];
}

- (void)setScissorRect:(id *)rect
{
  std::vector<MTLScissorRect>::assign(&self->_scissorRects.__begin_, 1uLL, rect);
  renderEncoder = self->_renderEncoder;
  v6 = *&rect->var2;
  v7[0] = *&rect->var0;
  v7[1] = v6;
  [(MTLRenderCommandEncoderSPI *)renderEncoder setScissorRect:v7];
}

- (void)setScissorRects:(id *)rects count:(unint64_t)count
{
  if (rects && count)
  {
    std::vector<MTLScissorRect>::__assign_with_size[abi:ne200100]<MTLScissorRect const*,MTLScissorRect const*>(&self->_scissorRects.__begin_, rects, &rects[count], count);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    std::vector<MTLScissorRect>::assign(&self->_scissorRects.__begin_, 1uLL, v7);
  }

  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setScissorRects:rects count:count];
}

- (void)setVertexAmplificationMode:(unint64_t)mode value:(unint64_t)value
{
  self->_amplificationMode = mode;
  self->_amplificationValue = value;
  self->_amplificationModeSet = 1;
  [MTLRenderCommandEncoderSPI setVertexAmplificationMode:"setVertexAmplificationMode:value:" value:?];
}

- (void)setStencilReferenceValue:(unsigned int)value
{
  self->_frontStencilRef = value;
  self->_backStencilRef = value;
  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setStencilReferenceValue:?];
}

- (void)setStencilFrontReferenceValue:(unsigned int)value backReferenceValue:(unsigned int)referenceValue
{
  self->_frontStencilRef = value;
  self->_backStencilRef = referenceValue;
  [MTLRenderCommandEncoderSPI setStencilFrontReferenceValue:"setStencilFrontReferenceValue:backReferenceValue:" backReferenceValue:?];
}

- (void)setColorStoreAction:(unint64_t)action atIndex:(unint64_t)index
{
  v6[0] = index;
  v6[2] = v6;
  std::__hash_table<std::__hash_value_type<unsigned long,DYMTLStoreInfo>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,DYMTLStoreInfo>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,DYMTLStoreInfo>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,DYMTLStoreInfo>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&self->_colorStoreInfos.__table_.__bucket_list_.__ptr_, v6)[3] = action;
  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setColorStoreAction:action atIndex:v6[0]];
}

- (void)setColorStoreActionOptions:(unint64_t)options atIndex:(unint64_t)index
{
  v6[0] = index;
  v6[2] = v6;
  std::__hash_table<std::__hash_value_type<unsigned long,DYMTLStoreInfo>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,DYMTLStoreInfo>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,DYMTLStoreInfo>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,DYMTLStoreInfo>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&self->_colorStoreInfos.__table_.__bucket_list_.__ptr_, v6)[4] = options;
  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setColorStoreActionOptions:options atIndex:v6[0]];
}

- (void)setVisibilityResultMode:(unint64_t)mode offset:(unint64_t)offset
{
  self->_visibilityResultMode = mode;
  self->_visibilityResultOffset = offset;
  [MTLRenderCommandEncoderSPI setVisibilityResultMode:"setVisibilityResultMode:offset:" offset:?];
}

- (void)setBlendColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha
{
  self->_blendColorRed = red;
  self->_blendColorGreen = green;
  self->_blendColorBlue = blue;
  self->_blendColorAlpha = alpha;
  [MTLRenderCommandEncoderSPI setBlendColorRed:"setBlendColorRed:green:blue:alpha:" green:? blue:? alpha:?];
}

- (void)setTessellationFactorBuffer:(id)buffer offset:(unint64_t)offset instanceStride:(unint64_t)stride
{
  self->_tessellationFactorSet = 1;
  self->_tessellationFactorBuffer = buffer;
  self->_tessellationFactorBufferOffset = offset;
  self->_tessellationFactorBufferInstanceStride = stride;
  [MTLRenderCommandEncoderSPI setTessellationFactorBuffer:"setTessellationFactorBuffer:offset:instanceStride:" offset:? instanceStride:?];
}

- (void)setTessellationFactorScale:(float)scale
{
  self->_tessellationFactorSet = 1;
  self->_tessellationFactorScale = scale;
  [(MTLRenderCommandEncoderSPI *)self->_renderEncoder setTessellationFactorScale:?];
}

- (void)setVertexAmplificationCount:(unint64_t)count viewMappings:(id *)mappings
{
  self->_amplificationCountSet = 1;
  self->_amplificationCount = count;
  begin = self->_amplificationViewMappings.__begin_;
  self->_amplificationViewMappings.__end_ = begin;
  if (mappings && count)
  {
    mappingsCopy = mappings;
    countCopy = count;
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

        *(8 * v11) = *mappingsCopy;
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
        *begin = *mappingsCopy;
        begin = (begin + 8);
      }

      self->_amplificationViewMappings.__end_ = begin;
      ++mappingsCopy;
      --countCopy;
    }

    while (countCopy);
  }

  renderEncoder = self->_renderEncoder;

  [(MTLRenderCommandEncoderSPI *)renderEncoder setVertexAmplificationCount:count viewMappings:mappings];
}

- (void)_applyHeapsAndResourcesToEncoder:(id)encoder
{
  encoderCopy = encoder;
  begin = self->_usedHeaps.__begin_;
  var0 = self->_usedHeaps.var0;
  while (begin != var0)
  {
    v6 = *begin;
    [encoderCopy useHeap:v6];

    ++begin;
  }

  v8 = self->_usedResources.__begin_;
  end = self->_usedResources.__end_;
  while (v8 != end)
  {
    [encoderCopy useResource:*v8 usage:*(v8 + 1)];
    v8 = (v8 + 16);
  }
}

- (void)_applyVertexStateToEncoder:(id)encoder rawBytesBlock:(id)block
{
  encoderCopy = encoder;
  blockCopy = block;
  v8 = (self->_viewports.__end_ - self->_viewports.__begin_) >> 4;
  [encoderCopy setViewports:? count:?];
  v9 = self->_scissorRects.__end_ - self->_scissorRects.__begin_;
  [encoderCopy setScissorRects:? count:?];
  [encoderCopy setFrontFacingWinding:self->_frontFacingWinding];
  [encoderCopy setCullMode:self->_cullMode];
  if (self->_amplificationModeSet)
  {
    [encoderCopy setVertexAmplificationMode:self->_amplificationMode value:self->_amplificationValue];
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

    [encoderCopy setVertexAmplificationCount:self->_amplificationCount viewMappings:begin];
  }

  if (self->_tessellationFactorSet)
  {
    *&v10 = self->_tessellationFactorScale;
    [encoderCopy setTessellationFactorScale:v10];
    [encoderCopy setTessellationFactorBuffer:self->_tessellationFactorBuffer offset:self->_tessellationFactorBufferOffset instanceStride:self->_tessellationFactorBufferInstanceStride];
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __82__DYMTLRenderCommandEncoderStateTracker__applyVertexStateToEncoder_rawBytesBlock___block_invoke;
  v20[3] = &unk_27930F8C0;
  v12 = blockCopy;
  v22 = v12;
  v13 = encoderCopy;
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

- (void)_applyFragmentStateToEncoder:(id)encoder rawBytesBlock:(id)block
{
  encoderCopy = encoder;
  blockCopy = block;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __84__DYMTLRenderCommandEncoderStateTracker__applyFragmentStateToEncoder_rawBytesBlock___block_invoke;
  v16[3] = &unk_27930F8C0;
  v8 = blockCopy;
  v18 = v8;
  v9 = encoderCopy;
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

- (void)applyVertexStateToEncoder:(id)encoder rawBytesBlock:(id)block
{
  encoderCopy = encoder;
  blockCopy = block;
  [(DYMTLRenderCommandEncoderStateTracker *)self _applyHeapsAndResourcesToEncoder:encoderCopy];
  [(DYMTLRenderCommandEncoderStateTracker *)self _applyVertexStateToEncoder:encoderCopy rawBytesBlock:blockCopy];
}

- (void)applyVertexFragmentStateToEncoder:(id)encoder rawBytesBlock:(id)block
{
  encoderCopy = encoder;
  blockCopy = block;
  [(DYMTLRenderCommandEncoderStateTracker *)self _applyHeapsAndResourcesToEncoder:encoderCopy];
  [(DYMTLRenderCommandEncoderStateTracker *)self _applyVertexStateToEncoder:encoderCopy rawBytesBlock:blockCopy];
  [(DYMTLRenderCommandEncoderStateTracker *)self _applyFragmentStateToEncoder:encoderCopy rawBytesBlock:blockCopy];
}

- (void)applyAllStateToEncoder:(id)encoder rawBytesBlock:(id)block
{
  encoderCopy = encoder;
  blockCopy = block;
  if (self->_renderPipelineState)
  {
    [encoderCopy setRenderPipelineState:?];
  }

  [(DYMTLRenderCommandEncoderStateTracker *)self _applyHeapsAndResourcesToEncoder:encoderCopy];
  [(DYMTLRenderCommandEncoderStateTracker *)self _applyVertexStateToEncoder:encoderCopy rawBytesBlock:blockCopy];
  [(DYMTLRenderCommandEncoderStateTracker *)self _applyFragmentStateToEncoder:encoderCopy rawBytesBlock:blockCopy];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __78__DYMTLRenderCommandEncoderStateTracker_applyAllStateToEncoder_rawBytesBlock___block_invoke;
  v26[3] = &unk_27930F8C0;
  v8 = blockCopy;
  v28 = v8;
  v9 = encoderCopy;
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

- (void)enumerateThreadgroupMemoryUsingBlock:(id)block
{
  blockCopy = block;
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

  blockCopy[2](blockCopy, i, v5, &v7);
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