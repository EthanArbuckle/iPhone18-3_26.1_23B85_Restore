@interface MTLTelemetryRenderCommandEncoder
- (MTLTelemetryRenderCommandEncoder)initWithRenderCommandEncoder:(id)encoder parent:(id)parent commandBuffer:(id)buffer descriptor:(id)descriptor;
- (MTLTelemetryRenderCommandEncoder)initWithRenderCommandEncoder:(id)encoder parent:(id)parent descriptor:(id)descriptor;
- (void)accumDrawWithType:(unint64_t)type indexType:(unint64_t)indexType primitiveType:(unint64_t)primitiveType vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount;
- (void)accumScissorRectTelemetry:(id *)telemetry count:(unint64_t)count;
- (void)accumViewportTelemetry:(id *)telemetry count:(unint64_t)count;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset;
- (void)drawPrimitives:(unint64_t)primitives indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance;
- (void)endEncoding;
- (void)initTelemetryWithDescriptor:(id)descriptor commandBuffer:(id)buffer;
- (void)setDepthClipMode:(unint64_t)mode;
- (void)setDepthStencilState:(id)state;
- (void)setFragmentSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setFragmentSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setFragmentSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setFragmentSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setFragmentTexture:(id)texture atIndex:(unint64_t)index;
- (void)setFragmentTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setRenderPipelineState:(id)state;
- (void)setScissorRect:(id *)rect;
- (void)setScissorRects:(id *)rects count:(unint64_t)count;
- (void)setViewport:(id *)viewport;
- (void)setViewports:(id *)viewports count:(unint64_t)count;
@end

@implementation MTLTelemetryRenderCommandEncoder

- (void)initTelemetryWithDescriptor:(id)descriptor commandBuffer:(id)buffer
{
  selfCopy = self;
  device = [(MTLToolsObject *)self device];
  selfCopy->_telemetryDevice = device;
  if (![(MTLDevice *)device enableTelemetry])
  {
    return;
  }

  -[MTLTelemetryDevice setGLMode:](selfCopy->_telemetryDevice, "setGLMode:", *([descriptor _descriptorPrivate] + 43));
  selfCopy->_telemetryCommandBuffer = buffer;
  selfCopy->_reDraws = 0;
  selfCopy->_anisoFragmentSamplers = objc_alloc_init(MEMORY[0x277CBEB58]);
  selfCopy->_clippedMip2DFragmentTextures = objc_alloc_init(MEMORY[0x277CBEB38]);
  selfCopy->_telemetryPipeline = 0;
  if (!descriptor)
  {
    return;
  }

  v8 = 0;
  v9 = 0;
  v10 = 3;
  descriptorCopy = descriptor;
  do
  {
    if (v9 != 8)
    {
      v11 = (v9 == 9 ? [descriptor stencilAttachment] : objc_msgSend(objc_msgSend(descriptor, "colorAttachments"), "_descriptorAtIndex:", v9));
      v12 = v11;
      if (v11)
      {
        texture = [v11 texture];
        if (texture)
        {
          v14 = texture;
          v15 = v8;
          v16 = selfCopy;
          telemetryCommandBuffer = selfCopy->_telemetryCommandBuffer;
          v42[0] = [texture pixelFormat];
          v42[2] = v42;
          v18 = std::__hash_table<std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>,std::__unordered_map_hasher<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>,std::hash<unsigned long long>,std::equal_to<MTLPixelFormat>,true>,std::__unordered_map_equal<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>,std::equal_to<MTLPixelFormat>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>>>::__emplace_unique_key_args<MTLPixelFormat,std::piecewise_construct_t const&,std::tuple<MTLPixelFormat&&>,std::tuple<>>(&telemetryCommandBuffer->renderTargetMap.__table_.__bucket_list_.__ptr_, v42);
          textureType = [v14 textureType];
          loadAction = [v12 loadAction];
          storeAction = [v12 storeAction];
          if (v9 == 9)
          {
            v22 = &v18[792 * textureType + 28515 + 264 * loadAction + 44 * storeAction + 22 * [v12 stencilResolveFilter]];
          }

          else
          {
            v22 = &v18[396 * textureType + 132 * loadAction + 22 * storeAction + v10];
          }

          width = [v14 width];
          v24 = v15;
          descriptor = descriptorCopy;
          selfCopy = v16;
          if (!width)
          {
LABEL_22:
            height = [v14 height];
            if (!height)
            {
              goto LABEL_31;
            }

            v27 = *(v22 + 48);
            if (v27)
            {
              if (*(v22 + 36) < height)
              {
                *(v22 + 36) = height;
              }

              if (*(v22 + 32) <= height)
              {
                goto LABEL_30;
              }
            }

            else
            {
              *(v22 + 36) = height;
            }

            *(v22 + 32) = height;
LABEL_30:
            *(v22 + 40) += height;
            *(v22 + 48) = v27 + 1;
LABEL_31:
            depth = [v14 depth];
            if (!depth)
            {
              goto LABEL_40;
            }

            v29 = *(v22 + 72);
            if (v29)
            {
              if (*(v22 + 60) < depth)
              {
                *(v22 + 60) = depth;
              }

              if (*(v22 + 56) <= depth)
              {
                goto LABEL_39;
              }
            }

            else
            {
              *(v22 + 60) = depth;
            }

            *(v22 + 56) = depth;
LABEL_39:
            *(v22 + 64) += depth;
            *(v22 + 72) = v29 + 1;
LABEL_40:
            arrayLength = [v14 arrayLength];
            if (!arrayLength)
            {
              goto LABEL_49;
            }

            v31 = *(v22 + 96);
            if (v31)
            {
              if (*(v22 + 84) < arrayLength)
              {
                *(v22 + 84) = arrayLength;
              }

              if (*(v22 + 80) <= arrayLength)
              {
                goto LABEL_48;
              }
            }

            else
            {
              *(v22 + 84) = arrayLength;
            }

            *(v22 + 80) = arrayLength;
LABEL_48:
            *(v22 + 88) += arrayLength;
            *(v22 + 96) = v31 + 1;
LABEL_49:
            sampleCount = [v14 sampleCount];
            if (!sampleCount)
            {
              goto LABEL_58;
            }

            v33 = *(v22 + 120);
            if (v33)
            {
              if (*(v22 + 108) < sampleCount)
              {
                *(v22 + 108) = sampleCount;
              }

              if (*(v22 + 104) <= sampleCount)
              {
                goto LABEL_57;
              }
            }

            else
            {
              *(v22 + 108) = sampleCount;
            }

            *(v22 + 104) = sampleCount;
LABEL_57:
            *(v22 + 112) += sampleCount;
            *(v22 + 120) = v33 + 1;
LABEL_58:
            level = [v12 level];
            if (!level)
            {
              goto LABEL_67;
            }

            v35 = *(v22 + 168);
            if (v35)
            {
              if (*(v22 + 156) < level)
              {
                *(v22 + 156) = level;
              }

              if (*(v22 + 152) <= level)
              {
                goto LABEL_66;
              }
            }

            else
            {
              *(v22 + 156) = level;
            }

            *(v22 + 152) = level;
LABEL_66:
            *(v22 + 160) += level;
            *(v22 + 168) = v35 + 1;
LABEL_67:
            slice = [v12 slice];
            if (!slice)
            {
LABEL_76:
              ++*v22;
              v8 = v24 + 1;
              goto LABEL_77;
            }

            v37 = *(v22 + 144);
            if (v37)
            {
              if (*(v22 + 132) < slice)
              {
                *(v22 + 132) = slice;
              }

              if (*(v22 + 128) <= slice)
              {
                goto LABEL_75;
              }
            }

            else
            {
              *(v22 + 132) = slice;
            }

            *(v22 + 128) = slice;
LABEL_75:
            *(v22 + 136) += slice;
            *(v22 + 144) = v37 + 1;
            goto LABEL_76;
          }

          v25 = *(v22 + 24);
          if (v25)
          {
            if (*(v22 + 12) < width)
            {
              *(v22 + 12) = width;
            }

            if (*(v22 + 8) <= width)
            {
              goto LABEL_21;
            }
          }

          else
          {
            *(v22 + 12) = width;
          }

          *(v22 + 8) = width;
LABEL_21:
          *(v22 + 16) += width;
          *(v22 + 24) = v25 + 1;
          goto LABEL_22;
        }
      }
    }

LABEL_77:
    ++v9;
    v10 += 3168;
  }

  while (v9 != 10);
  if (!v8)
  {
    goto LABEL_87;
  }

  attachmentCount = selfCopy->_telemetryCommandBuffer->attachmentCount;
  if (!attachmentCount->count)
  {
    attachmentCount->max = v8;
    attachmentCount = selfCopy->_telemetryCommandBuffer->attachmentCount;
LABEL_85:
    attachmentCount->min = v8;
    goto LABEL_86;
  }

  if (v8 > attachmentCount->max)
  {
    attachmentCount->max = v8;
    attachmentCount = selfCopy->_telemetryCommandBuffer->attachmentCount;
  }

  if (v8 < attachmentCount->min)
  {
    goto LABEL_85;
  }

LABEL_86:
  selfCopy->_telemetryCommandBuffer->attachmentCount->total += v8;
  ++selfCopy->_telemetryCommandBuffer->attachmentCount->count;
LABEL_87:
  renderTargetArrayLength = [descriptor renderTargetArrayLength];
  if (renderTargetArrayLength)
  {
    renderTargetArrayLengthDistribution = selfCopy->_telemetryCommandBuffer->renderTargetArrayLengthDistribution;
    if (renderTargetArrayLengthDistribution->count)
    {
      if (renderTargetArrayLengthDistribution->max < renderTargetArrayLength)
      {
        renderTargetArrayLengthDistribution->max = renderTargetArrayLength;
        renderTargetArrayLengthDistribution = selfCopy->_telemetryCommandBuffer->renderTargetArrayLengthDistribution;
      }

      if (renderTargetArrayLengthDistribution->min <= renderTargetArrayLength)
      {
LABEL_95:
        selfCopy->_telemetryCommandBuffer->renderTargetArrayLengthDistribution->total += renderTargetArrayLength;
        ++selfCopy->_telemetryCommandBuffer->renderTargetArrayLengthDistribution->count;
        return;
      }
    }

    else
    {
      renderTargetArrayLengthDistribution->max = renderTargetArrayLength;
      renderTargetArrayLengthDistribution = selfCopy->_telemetryCommandBuffer->renderTargetArrayLengthDistribution;
    }

    renderTargetArrayLengthDistribution->min = renderTargetArrayLength;
    goto LABEL_95;
  }
}

- (MTLTelemetryRenderCommandEncoder)initWithRenderCommandEncoder:(id)encoder parent:(id)parent commandBuffer:(id)buffer descriptor:(id)descriptor
{
  v11.receiver = self;
  v11.super_class = MTLTelemetryRenderCommandEncoder;
  v8 = [(MTLToolsRenderCommandEncoder *)&v11 initWithRenderCommandEncoder:encoder parent:parent];
  v9 = v8;
  if (v8)
  {
    [(MTLTelemetryRenderCommandEncoder *)v8 initTelemetryWithDescriptor:descriptor commandBuffer:buffer];
  }

  return v9;
}

- (MTLTelemetryRenderCommandEncoder)initWithRenderCommandEncoder:(id)encoder parent:(id)parent descriptor:(id)descriptor
{
  v10.receiver = self;
  v10.super_class = MTLTelemetryRenderCommandEncoder;
  v7 = [MTLToolsRenderCommandEncoder initWithRenderCommandEncoder:sel_initWithRenderCommandEncoder_parent_descriptor_ parent:encoder descriptor:?];
  v8 = v7;
  if (v7)
  {
    [(MTLTelemetryRenderCommandEncoder *)v7 initTelemetryWithDescriptor:descriptor commandBuffer:parent];
  }

  return v8;
}

- (void)setRenderPipelineState:(id)state
{
  if (state)
  {
    [state accumulateUsage];
    if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
    {

      self->_telemetryPipeline = state;
    }
  }

  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];

  [baseObject setRenderPipelineState:baseObject2];
}

- (void)setDepthStencilState:(id)state
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];

  [baseObject setDepthStencilState:baseObject2];
}

- (void)setDepthClipMode:(unint64_t)mode
{
  telemetryCommandBuffer = self->_telemetryCommandBuffer;
  depthClipModeClampCount = telemetryCommandBuffer->depthClipModeClampCount;
  if (mode == 1)
  {
    ++depthClipModeClampCount;
  }

  telemetryCommandBuffer->depthClipModeClampCount = depthClipModeClampCount;
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setDepthClipModeSPI:mode];
}

- (void)accumDrawWithType:(unint64_t)type indexType:(unint64_t)indexType primitiveType:(unint64_t)primitiveType vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount
{
  v39 = *MEMORY[0x277D85DE8];
  telemetryCommandBuffer = self->_telemetryCommandBuffer;
  drawDistribution = telemetryCommandBuffer->drawDistribution;
  ++telemetryCommandBuffer->cbDraws;
  ++self->_reDraws;
  if (type != 2)
  {
    if (!count)
    {
      goto LABEL_11;
    }

    v10 = &drawDistribution->var0[primitiveType][indexType][type];
    v11 = *(v10 + 24);
    if (v11)
    {
      if (*(v10 + 12) < count)
      {
        *(v10 + 12) = count;
      }

      if (*(v10 + 8) <= count)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *(v10 + 12) = count;
    }

    *(v10 + 8) = count;
LABEL_10:
    *(v10 + 16) += count;
    *(v10 + 24) = v11 + 1;
LABEL_11:
    if (!instanceCount)
    {
      goto LABEL_20;
    }

    v12 = &drawDistribution->var0[primitiveType][indexType][type];
    v13 = *(v12 + 48);
    if (v13)
    {
      if (*(v12 + 36) < instanceCount)
      {
        *(v12 + 36) = instanceCount;
      }

      if (*(v12 + 32) <= instanceCount)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *(v12 + 36) = instanceCount;
    }

    *(v12 + 32) = instanceCount;
LABEL_19:
    *(v12 + 40) += instanceCount;
    *(v12 + 48) = v13 + 1;
  }

LABEL_20:
  ++drawDistribution->var0[primitiveType][indexType][type].var0;
  telemetryPipeline = self->_telemetryPipeline;
  if (telemetryPipeline)
  {
    if ((telemetryPipeline->device & 1) == 0)
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      anisoFragmentSamplers = self->_anisoFragmentSamplers;
      v24 = [(NSMutableSet *)anisoFragmentSamplers countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (!v24)
      {
        goto LABEL_40;
      }

      v25 = v24;
      v26 = *v34;
LABEL_34:
      v27 = 0;
      while (1)
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(anisoFragmentSamplers);
        }

        if ([*&self->_telemetryPipeline->hasAnisoConstantSampler containsObject:*(*(&v33 + 1) + 8 * v27)])
        {
          break;
        }

        if (v25 == ++v27)
        {
          v25 = [(NSMutableSet *)anisoFragmentSamplers countByEnumeratingWithState:&v33 objects:v38 count:16];
          if (v25)
          {
            goto LABEL_34;
          }

          goto LABEL_40;
        }
      }
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    clippedMip2DFragmentTextures = self->_clippedMip2DFragmentTextures;
    v16 = [(NSMutableDictionary *)clippedMip2DFragmentTextures countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v30;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(clippedMip2DFragmentTextures);
          }

          v20 = *(*(&v29 + 1) + 8 * i);
          if ([(NSSet *)self->_telemetryPipeline->activeFragmentSamplers containsObject:v20])
          {
            anisoClippedCounts = self->_telemetryCommandBuffer->anisoClippedCounts;
            v22 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_clippedMip2DFragmentTextures objectForKeyedSubscript:{v20), "unsignedIntegerValue"}];
            ++anisoClippedCounts->var0[v22];
          }
        }

        v17 = [(NSMutableDictionary *)clippedMip2DFragmentTextures countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v17);
    }
  }

LABEL_40:
  v28 = *MEMORY[0x277D85DE8];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount
{
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    [(MTLTelemetryRenderCommandEncoder *)self accumDrawWithType:1 indexType:type primitiveType:primitives vertexCount:count instanceCount:instanceCount];
  }

  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:baseObject2 indexBufferOffset:offset instanceCount:instanceCount];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset
{
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    [(MTLTelemetryRenderCommandEncoder *)self accumDrawWithType:1 indexType:type primitiveType:primitives vertexCount:count instanceCount:1];
  }

  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:baseObject2 indexBufferOffset:offset];
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance
{
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    [(MTLTelemetryRenderCommandEncoder *)self accumDrawWithType:0 indexType:2 primitiveType:primitives vertexCount:count instanceCount:instanceCount];
  }

  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject drawPrimitives:primitives vertexStart:start vertexCount:count instanceCount:instanceCount baseInstance:instance];
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count
{
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    [(MTLTelemetryRenderCommandEncoder *)self accumDrawWithType:0 indexType:2 primitiveType:primitives vertexCount:count instanceCount:1];
  }

  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject drawPrimitives:primitives vertexStart:start vertexCount:count];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0
{
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    [(MTLTelemetryRenderCommandEncoder *)self accumDrawWithType:1 indexType:type primitiveType:primitives vertexCount:count instanceCount:instanceCount];
  }

  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:baseObject2 indexBufferOffset:offset instanceCount:instanceCount baseVertex:? baseInstance:?];
}

- (void)drawPrimitives:(unint64_t)primitives indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset
{
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    [(MTLTelemetryRenderCommandEncoder *)self accumDrawWithType:2 indexType:2 primitiveType:primitives vertexCount:0 instanceCount:1];
  }

  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject drawPrimitives:primitives indirectBuffer:baseObject2 indirectBufferOffset:offset];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset
{
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    [(MTLTelemetryRenderCommandEncoder *)self accumDrawWithType:2 indexType:type primitiveType:primitives vertexCount:0 instanceCount:1];
  }

  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];
  baseObject3 = [indirectBuffer baseObject];

  [baseObject drawIndexedPrimitives:primitives indexType:type indexBuffer:baseObject2 indexBufferOffset:offset indirectBuffer:baseObject3 indirectBufferOffset:bufferOffset];
}

- (void)endEncoding
{
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    reDraws = self->_reDraws;
    if (!reDraws)
    {
LABEL_11:

      self->_anisoFragmentSamplers = 0;
      self->_clippedMip2DFragmentTextures = 0;

      self->_telemetryPipeline = 0;
      goto LABEL_12;
    }

    renderEncoderDrawCallDistribution = self->_telemetryCommandBuffer->renderEncoderDrawCallDistribution;
    if (renderEncoderDrawCallDistribution->count)
    {
      if (reDraws > renderEncoderDrawCallDistribution->max)
      {
        renderEncoderDrawCallDistribution->max = reDraws;
        renderEncoderDrawCallDistribution = self->_telemetryCommandBuffer->renderEncoderDrawCallDistribution;
      }

      if (reDraws >= renderEncoderDrawCallDistribution->min)
      {
        goto LABEL_10;
      }
    }

    else
    {
      renderEncoderDrawCallDistribution->max = reDraws;
      renderEncoderDrawCallDistribution = self->_telemetryCommandBuffer->renderEncoderDrawCallDistribution;
    }

    renderEncoderDrawCallDistribution->min = reDraws;
LABEL_10:
    self->_telemetryCommandBuffer->renderEncoderDrawCallDistribution->total += reDraws;
    ++self->_telemetryCommandBuffer->renderEncoderDrawCallDistribution->count;
    goto LABEL_11;
  }

LABEL_12:
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject endEncoding];
}

- (void)setFragmentTexture:(id)texture atIndex:(unint64_t)index
{
  if (![(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    goto LABEL_17;
  }

  v7 = index + 1;
  if (index != -1)
  {
    textureBindCount = self->_telemetryCommandBuffer->textureBindCount;
    if (textureBindCount->count)
    {
      if (v7 > textureBindCount->max)
      {
        textureBindCount->max = v7;
        textureBindCount = self->_telemetryCommandBuffer->textureBindCount;
      }

      if (v7 >= textureBindCount->min)
      {
        goto LABEL_10;
      }
    }

    else
    {
      textureBindCount->max = v7;
      textureBindCount = self->_telemetryCommandBuffer->textureBindCount;
    }

    textureBindCount->min = v7;
LABEL_10:
    self->_telemetryCommandBuffer->textureBindCount->total += v7;
    ++self->_telemetryCommandBuffer->textureBindCount->count;
  }

  if (texture && *(texture + 9) && ([texture textureType] == 2 || objc_msgSend(texture, "textureType") == 3))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(texture + 9)];
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_clippedMip2DFragmentTextures, "setObject:forKeyedSubscript:", v9, [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index]);
  }

  else
  {
    -[NSMutableDictionary removeObjectForKey:](self->_clippedMip2DFragmentTextures, "removeObjectForKey:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index]);
  }

LABEL_17:
  v10.receiver = self;
  v10.super_class = MTLTelemetryRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v10 setFragmentTexture:texture atIndex:index];
}

- (void)setFragmentTextures:(const void *)textures withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (![(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    goto LABEL_20;
  }

  v6 = location + length;
  if (location + length)
  {
    textureBindCount = self->_telemetryCommandBuffer->textureBindCount;
    if (textureBindCount->count)
    {
      if (textureBindCount->max < v6)
      {
        textureBindCount->max = v6;
        textureBindCount = self->_telemetryCommandBuffer->textureBindCount;
      }

      if (textureBindCount->min <= v6)
      {
        goto LABEL_10;
      }
    }

    else
    {
      textureBindCount->max = v6;
      textureBindCount = self->_telemetryCommandBuffer->textureBindCount;
    }

    textureBindCount->min = v6;
LABEL_10:
    self->_telemetryCommandBuffer->textureBindCount->total += v6;
    ++self->_telemetryCommandBuffer->textureBindCount->count;
  }

  if (length)
  {
    texturesCopy = textures;
    v9 = location;
    v10 = length;
    do
    {
      v11 = *texturesCopy;
      if (*texturesCopy && v11[9] && ([*texturesCopy textureType] == 2 || objc_msgSend(v11, "textureType") == 3))
      {
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11[9]];
        -[NSMutableDictionary setObject:forKeyedSubscript:](self->_clippedMip2DFragmentTextures, "setObject:forKeyedSubscript:", v12, [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9]);
      }

      else
      {
        -[NSMutableDictionary removeObjectForKey:](self->_clippedMip2DFragmentTextures, "removeObjectForKey:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9]);
      }

      ++texturesCopy;
      ++v9;
      --v10;
    }

    while (v10);
  }

LABEL_20:
  v15.receiver = self;
  v15.super_class = MTLTelemetryRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v15 setFragmentTextures:textures withRange:location, length];
}

- (void)setFragmentSamplerState:(id)state atIndex:(unint64_t)index
{
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    if (state && *(state + 36) == 1)
    {
      -[NSMutableSet addObject:](self->_anisoFragmentSamplers, "addObject:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index]);
    }

    else
    {
      -[NSMutableSet removeObject:](self->_anisoFragmentSamplers, "removeObject:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index]);
    }
  }

  v7.receiver = self;
  v7.super_class = MTLTelemetryRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v7 setFragmentSamplerState:state atIndex:index];
}

- (void)setFragmentSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    v7 = length == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = location;
    statesCopy = states;
    v10 = length;
    do
    {
      if (*statesCopy && *(*statesCopy + 36) == 1)
      {
        -[NSMutableSet addObject:](self->_anisoFragmentSamplers, "addObject:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8]);
      }

      else
      {
        -[NSMutableSet removeObject:](self->_anisoFragmentSamplers, "removeObject:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8]);
      }

      ++statesCopy;
      ++v8;
      --v10;
    }

    while (v10);
  }

  v12.receiver = self;
  v12.super_class = MTLTelemetryRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v12 setFragmentSamplerStates:states withRange:location, length];
}

- (void)setFragmentSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    if (state && *(state + 36) == 1)
    {
      -[NSMutableSet addObject:](self->_anisoFragmentSamplers, "addObject:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index]);
    }

    else
    {
      -[NSMutableSet removeObject:](self->_anisoFragmentSamplers, "removeObject:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index]);
    }
  }

  v13.receiver = self;
  v13.super_class = MTLTelemetryRenderCommandEncoder;
  *&v11 = clamp;
  *&v12 = maxClamp;
  [(MTLToolsRenderCommandEncoder *)&v13 setFragmentSamplerState:state lodMinClamp:index lodMaxClamp:v11 atIndex:v12];
}

- (void)setFragmentSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    v9 = length == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = location;
    statesCopy = states;
    v12 = length;
    do
    {
      if (*statesCopy && *(*statesCopy + 36) == 1)
      {
        -[NSMutableSet addObject:](self->_anisoFragmentSamplers, "addObject:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10]);
      }

      else
      {
        -[NSMutableSet removeObject:](self->_anisoFragmentSamplers, "removeObject:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10]);
      }

      ++statesCopy;
      ++v10;
      --v12;
    }

    while (v12);
  }

  v16.receiver = self;
  v16.super_class = MTLTelemetryRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v16 setFragmentSamplerStates:states lodMinClamps:clamps lodMaxClamps:maxClamps withRange:location, length];
}

- (void)accumViewportTelemetry:(id *)telemetry count:(unint64_t)count
{
  if (count)
  {
    viewportDistribution = self->_telemetryCommandBuffer->viewportDistribution;
    if (viewportDistribution->var0.count)
    {
      if (viewportDistribution->var0.max < count)
      {
        viewportDistribution->var0.max = count;
        viewportDistribution = self->_telemetryCommandBuffer->viewportDistribution;
      }

      if (viewportDistribution->var0.min <= count)
      {
        goto LABEL_11;
      }
    }

    else
    {
      viewportDistribution->var0.max = count;
      viewportDistribution = self->_telemetryCommandBuffer->viewportDistribution;
    }

    viewportDistribution->var0.min = count;
LABEL_11:
    self->_telemetryCommandBuffer->viewportDistribution->var0.total += count;
    ++self->_telemetryCommandBuffer->viewportDistribution->var0.count;
    goto LABEL_12;
  }

  if (count)
  {
LABEL_12:
    p_var5 = &telemetry->var5;
    for (i = 1; ; ++i)
    {
      v7 = *(p_var5 - 3);
      v8 = self->_telemetryCommandBuffer->viewportDistribution;
      if (!v8->var1.var3)
      {
        break;
      }

      if (v8->var1.var1 < v7)
      {
        v8->var1.var1 = v7;
        v8 = self->_telemetryCommandBuffer->viewportDistribution;
      }

      var0 = v8->var1.var0;
      p_var1 = &v8->var1;
      if (var0 > v7)
      {
        goto LABEL_19;
      }

LABEL_20:
      self->_telemetryCommandBuffer->viewportDistribution->var1.var2 = self->_telemetryCommandBuffer->viewportDistribution->var1.var2 + v7;
      ++self->_telemetryCommandBuffer->viewportDistribution->var1.var3;
      v11 = *(p_var5 - 2);
      v12 = self->_telemetryCommandBuffer->viewportDistribution;
      if (!v12->var2.var3)
      {
        v12->var2.var1 = v11;
        p_var2 = &self->_telemetryCommandBuffer->viewportDistribution->var2;
LABEL_26:
        p_var2->var0 = v11;
        goto LABEL_27;
      }

      if (v12->var2.var1 < v11)
      {
        v12->var2.var1 = v11;
        v12 = self->_telemetryCommandBuffer->viewportDistribution;
      }

      v14 = v12->var2.var0;
      p_var2 = &v12->var2;
      if (v14 > v11)
      {
        goto LABEL_26;
      }

LABEL_27:
      self->_telemetryCommandBuffer->viewportDistribution->var2.var2 = self->_telemetryCommandBuffer->viewportDistribution->var2.var2 + v11;
      ++self->_telemetryCommandBuffer->viewportDistribution->var2.var3;
      v15 = *(p_var5 - 1);
      v16 = self->_telemetryCommandBuffer->viewportDistribution;
      if (!v16->var3.var3)
      {
        v16->var3.var1 = v15;
        p_var3 = &self->_telemetryCommandBuffer->viewportDistribution->var3;
LABEL_33:
        p_var3->var0 = v15;
        goto LABEL_34;
      }

      if (v16->var3.var1 < v15)
      {
        v16->var3.var1 = v15;
        v16 = self->_telemetryCommandBuffer->viewportDistribution;
      }

      v18 = v16->var3.var0;
      p_var3 = &v16->var3;
      if (v18 > v15)
      {
        goto LABEL_33;
      }

LABEL_34:
      self->_telemetryCommandBuffer->viewportDistribution->var3.var2 = self->_telemetryCommandBuffer->viewportDistribution->var3.var2 + v15;
      ++self->_telemetryCommandBuffer->viewportDistribution->var3.var3;
      v19 = *p_var5;
      v20 = self->_telemetryCommandBuffer->viewportDistribution;
      if (v20->var4.var3)
      {
        if (v20->var4.var1 < v19)
        {
          v20->var4.var1 = v19;
          v20 = self->_telemetryCommandBuffer->viewportDistribution;
        }

        v22 = v20->var4.var0;
        p_var4 = &v20->var4;
        if (v22 <= v19)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v20->var4.var1 = v19;
        p_var4 = &self->_telemetryCommandBuffer->viewportDistribution->var4;
      }

      p_var4->var0 = v19;
LABEL_41:
      self->_telemetryCommandBuffer->viewportDistribution->var4.var2 = self->_telemetryCommandBuffer->viewportDistribution->var4.var2 + v19;
      ++self->_telemetryCommandBuffer->viewportDistribution->var4.var3;
      v23 = i;
      p_var5 += 6;
      if (v23 >= count)
      {
        return;
      }
    }

    v8->var1.var1 = v7;
    p_var1 = &self->_telemetryCommandBuffer->viewportDistribution->var1;
LABEL_19:
    p_var1->var0 = v7;
    goto LABEL_20;
  }
}

- (void)setViewport:(id *)viewport
{
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    [(MTLTelemetryRenderCommandEncoder *)self accumViewportTelemetry:viewport count:1];
  }

  baseObject = [(MTLToolsObject *)self baseObject];
  v6 = *&viewport->var2;
  v7[0] = *&viewport->var0;
  v7[1] = v6;
  v7[2] = *&viewport->var4;
  [baseObject setViewport:v7];
}

- (void)setViewports:(id *)viewports count:(unint64_t)count
{
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    [(MTLTelemetryRenderCommandEncoder *)self accumViewportTelemetry:viewports count:count];
  }

  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setViewports:viewports count:count];
}

- (void)accumScissorRectTelemetry:(id *)telemetry count:(unint64_t)count
{
  if (count)
  {
    scissorRectDistribution = self->_telemetryCommandBuffer->scissorRectDistribution;
    if (scissorRectDistribution->var0.count)
    {
      if (scissorRectDistribution->var0.max < count)
      {
        scissorRectDistribution->var0.max = count;
        scissorRectDistribution = self->_telemetryCommandBuffer->scissorRectDistribution;
      }

      if (scissorRectDistribution->var0.min <= count)
      {
        goto LABEL_11;
      }
    }

    else
    {
      scissorRectDistribution->var0.max = count;
      scissorRectDistribution = self->_telemetryCommandBuffer->scissorRectDistribution;
    }

    scissorRectDistribution->var0.min = count;
LABEL_11:
    self->_telemetryCommandBuffer->scissorRectDistribution->var0.total += count;
    ++self->_telemetryCommandBuffer->scissorRectDistribution->var0.count;
    goto LABEL_12;
  }

  if (count)
  {
LABEL_12:
    p_var3 = &telemetry->var3;
    for (i = 1; ; ++i)
    {
      v7 = *(p_var3 - 1);
      v8 = self->_telemetryCommandBuffer->scissorRectDistribution;
      if (!v8->var1.var3)
      {
        break;
      }

      if (v8->var1.var1 < v7)
      {
        v8->var1.var1 = v7;
        v8 = self->_telemetryCommandBuffer->scissorRectDistribution;
      }

      var0 = v8->var1.var0;
      p_var1 = &v8->var1;
      if (var0 > v7)
      {
        goto LABEL_19;
      }

LABEL_20:
      self->_telemetryCommandBuffer->scissorRectDistribution->var1.var2 = self->_telemetryCommandBuffer->scissorRectDistribution->var1.var2 + v7;
      v11 = *p_var3;
      ++self->_telemetryCommandBuffer->scissorRectDistribution->var1.var3;
      v12 = self->_telemetryCommandBuffer->scissorRectDistribution;
      if (v12->var2.var3)
      {
        if (v12->var2.var1 < v11)
        {
          v12->var2.var1 = v11;
          v12 = self->_telemetryCommandBuffer->scissorRectDistribution;
        }

        v14 = v12->var2.var0;
        p_var2 = &v12->var2;
        if (v14 <= v11)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v12->var2.var1 = v11;
        p_var2 = &self->_telemetryCommandBuffer->scissorRectDistribution->var2;
      }

      p_var2->var0 = v11;
LABEL_27:
      self->_telemetryCommandBuffer->scissorRectDistribution->var2.var2 = self->_telemetryCommandBuffer->scissorRectDistribution->var2.var2 + v11;
      ++self->_telemetryCommandBuffer->scissorRectDistribution->var2.var3;
      v15 = i;
      p_var3 += 4;
      if (v15 >= count)
      {
        return;
      }
    }

    v8->var1.var1 = v7;
    p_var1 = &self->_telemetryCommandBuffer->scissorRectDistribution->var1;
LABEL_19:
    p_var1->var0 = v7;
    goto LABEL_20;
  }
}

- (void)setScissorRect:(id *)rect
{
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    [(MTLTelemetryRenderCommandEncoder *)self accumScissorRectTelemetry:rect count:1];
  }

  baseObject = [(MTLToolsObject *)self baseObject];
  v6 = *&rect->var2;
  v7[0] = *&rect->var0;
  v7[1] = v6;
  [baseObject setScissorRect:v7];
}

- (void)setScissorRects:(id *)rects count:(unint64_t)count
{
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    [(MTLTelemetryRenderCommandEncoder *)self accumScissorRectTelemetry:rects count:count];
  }

  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setScissorRects:rects count:count];
}

@end