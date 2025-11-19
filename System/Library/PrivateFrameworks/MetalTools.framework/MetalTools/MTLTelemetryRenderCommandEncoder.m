@interface MTLTelemetryRenderCommandEncoder
- (MTLTelemetryRenderCommandEncoder)initWithRenderCommandEncoder:(id)a3 parent:(id)a4 commandBuffer:(id)a5 descriptor:(id)a6;
- (MTLTelemetryRenderCommandEncoder)initWithRenderCommandEncoder:(id)a3 parent:(id)a4 descriptor:(id)a5;
- (void)accumDrawWithType:(unint64_t)a3 indexType:(unint64_t)a4 primitiveType:(unint64_t)a5 vertexCount:(unint64_t)a6 instanceCount:(unint64_t)a7;
- (void)accumScissorRectTelemetry:(id *)a3 count:(unint64_t)a4;
- (void)accumViewportTelemetry:(id *)a3 count:(unint64_t)a4;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseVertex:(int64_t)a9 baseInstance:(unint64_t)a10;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexType:(unint64_t)a4 indexBuffer:(id)a5 indexBufferOffset:(unint64_t)a6 indirectBuffer:(id)a7 indirectBufferOffset:(unint64_t)a8;
- (void)drawPrimitives:(unint64_t)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6 baseInstance:(unint64_t)a7;
- (void)endEncoding;
- (void)initTelemetryWithDescriptor:(id)a3 commandBuffer:(id)a4;
- (void)setDepthClipMode:(unint64_t)a3;
- (void)setDepthStencilState:(id)a3;
- (void)setFragmentSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setFragmentSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6;
- (void)setFragmentSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6;
- (void)setFragmentSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setFragmentTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setFragmentTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setRenderPipelineState:(id)a3;
- (void)setScissorRect:(id *)a3;
- (void)setScissorRects:(id *)a3 count:(unint64_t)a4;
- (void)setViewport:(id *)a3;
- (void)setViewports:(id *)a3 count:(unint64_t)a4;
@end

@implementation MTLTelemetryRenderCommandEncoder

- (void)initTelemetryWithDescriptor:(id)a3 commandBuffer:(id)a4
{
  v6 = self;
  v7 = [(MTLToolsObject *)self device];
  v6->_telemetryDevice = v7;
  if (![(MTLDevice *)v7 enableTelemetry])
  {
    return;
  }

  -[MTLTelemetryDevice setGLMode:](v6->_telemetryDevice, "setGLMode:", *([a3 _descriptorPrivate] + 43));
  v6->_telemetryCommandBuffer = a4;
  v6->_reDraws = 0;
  v6->_anisoFragmentSamplers = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6->_clippedMip2DFragmentTextures = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6->_telemetryPipeline = 0;
  if (!a3)
  {
    return;
  }

  v8 = 0;
  v9 = 0;
  v10 = 3;
  v41 = a3;
  do
  {
    if (v9 != 8)
    {
      v11 = (v9 == 9 ? [a3 stencilAttachment] : objc_msgSend(objc_msgSend(a3, "colorAttachments"), "_descriptorAtIndex:", v9));
      v12 = v11;
      if (v11)
      {
        v13 = [v11 texture];
        if (v13)
        {
          v14 = v13;
          v15 = v8;
          v16 = v6;
          telemetryCommandBuffer = v6->_telemetryCommandBuffer;
          v42[0] = [v13 pixelFormat];
          v42[2] = v42;
          v18 = std::__hash_table<std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>,std::__unordered_map_hasher<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>,std::hash<unsigned long long>,std::equal_to<MTLPixelFormat>,true>,std::__unordered_map_equal<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>,std::equal_to<MTLPixelFormat>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>>>::__emplace_unique_key_args<MTLPixelFormat,std::piecewise_construct_t const&,std::tuple<MTLPixelFormat&&>,std::tuple<>>(&telemetryCommandBuffer->renderTargetMap.__table_.__bucket_list_.__ptr_, v42);
          v19 = [v14 textureType];
          v20 = [v12 loadAction];
          v21 = [v12 storeAction];
          if (v9 == 9)
          {
            v22 = &v18[792 * v19 + 28515 + 264 * v20 + 44 * v21 + 22 * [v12 stencilResolveFilter]];
          }

          else
          {
            v22 = &v18[396 * v19 + 132 * v20 + 22 * v21 + v10];
          }

          v23 = [v14 width];
          v24 = v15;
          a3 = v41;
          v6 = v16;
          if (!v23)
          {
LABEL_22:
            v26 = [v14 height];
            if (!v26)
            {
              goto LABEL_31;
            }

            v27 = *(v22 + 48);
            if (v27)
            {
              if (*(v22 + 36) < v26)
              {
                *(v22 + 36) = v26;
              }

              if (*(v22 + 32) <= v26)
              {
                goto LABEL_30;
              }
            }

            else
            {
              *(v22 + 36) = v26;
            }

            *(v22 + 32) = v26;
LABEL_30:
            *(v22 + 40) += v26;
            *(v22 + 48) = v27 + 1;
LABEL_31:
            v28 = [v14 depth];
            if (!v28)
            {
              goto LABEL_40;
            }

            v29 = *(v22 + 72);
            if (v29)
            {
              if (*(v22 + 60) < v28)
              {
                *(v22 + 60) = v28;
              }

              if (*(v22 + 56) <= v28)
              {
                goto LABEL_39;
              }
            }

            else
            {
              *(v22 + 60) = v28;
            }

            *(v22 + 56) = v28;
LABEL_39:
            *(v22 + 64) += v28;
            *(v22 + 72) = v29 + 1;
LABEL_40:
            v30 = [v14 arrayLength];
            if (!v30)
            {
              goto LABEL_49;
            }

            v31 = *(v22 + 96);
            if (v31)
            {
              if (*(v22 + 84) < v30)
              {
                *(v22 + 84) = v30;
              }

              if (*(v22 + 80) <= v30)
              {
                goto LABEL_48;
              }
            }

            else
            {
              *(v22 + 84) = v30;
            }

            *(v22 + 80) = v30;
LABEL_48:
            *(v22 + 88) += v30;
            *(v22 + 96) = v31 + 1;
LABEL_49:
            v32 = [v14 sampleCount];
            if (!v32)
            {
              goto LABEL_58;
            }

            v33 = *(v22 + 120);
            if (v33)
            {
              if (*(v22 + 108) < v32)
              {
                *(v22 + 108) = v32;
              }

              if (*(v22 + 104) <= v32)
              {
                goto LABEL_57;
              }
            }

            else
            {
              *(v22 + 108) = v32;
            }

            *(v22 + 104) = v32;
LABEL_57:
            *(v22 + 112) += v32;
            *(v22 + 120) = v33 + 1;
LABEL_58:
            v34 = [v12 level];
            if (!v34)
            {
              goto LABEL_67;
            }

            v35 = *(v22 + 168);
            if (v35)
            {
              if (*(v22 + 156) < v34)
              {
                *(v22 + 156) = v34;
              }

              if (*(v22 + 152) <= v34)
              {
                goto LABEL_66;
              }
            }

            else
            {
              *(v22 + 156) = v34;
            }

            *(v22 + 152) = v34;
LABEL_66:
            *(v22 + 160) += v34;
            *(v22 + 168) = v35 + 1;
LABEL_67:
            v36 = [v12 slice];
            if (!v36)
            {
LABEL_76:
              ++*v22;
              v8 = v24 + 1;
              goto LABEL_77;
            }

            v37 = *(v22 + 144);
            if (v37)
            {
              if (*(v22 + 132) < v36)
              {
                *(v22 + 132) = v36;
              }

              if (*(v22 + 128) <= v36)
              {
                goto LABEL_75;
              }
            }

            else
            {
              *(v22 + 132) = v36;
            }

            *(v22 + 128) = v36;
LABEL_75:
            *(v22 + 136) += v36;
            *(v22 + 144) = v37 + 1;
            goto LABEL_76;
          }

          v25 = *(v22 + 24);
          if (v25)
          {
            if (*(v22 + 12) < v23)
            {
              *(v22 + 12) = v23;
            }

            if (*(v22 + 8) <= v23)
            {
              goto LABEL_21;
            }
          }

          else
          {
            *(v22 + 12) = v23;
          }

          *(v22 + 8) = v23;
LABEL_21:
          *(v22 + 16) += v23;
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

  attachmentCount = v6->_telemetryCommandBuffer->attachmentCount;
  if (!attachmentCount->count)
  {
    attachmentCount->max = v8;
    attachmentCount = v6->_telemetryCommandBuffer->attachmentCount;
LABEL_85:
    attachmentCount->min = v8;
    goto LABEL_86;
  }

  if (v8 > attachmentCount->max)
  {
    attachmentCount->max = v8;
    attachmentCount = v6->_telemetryCommandBuffer->attachmentCount;
  }

  if (v8 < attachmentCount->min)
  {
    goto LABEL_85;
  }

LABEL_86:
  v6->_telemetryCommandBuffer->attachmentCount->total += v8;
  ++v6->_telemetryCommandBuffer->attachmentCount->count;
LABEL_87:
  v39 = [a3 renderTargetArrayLength];
  if (v39)
  {
    renderTargetArrayLengthDistribution = v6->_telemetryCommandBuffer->renderTargetArrayLengthDistribution;
    if (renderTargetArrayLengthDistribution->count)
    {
      if (renderTargetArrayLengthDistribution->max < v39)
      {
        renderTargetArrayLengthDistribution->max = v39;
        renderTargetArrayLengthDistribution = v6->_telemetryCommandBuffer->renderTargetArrayLengthDistribution;
      }

      if (renderTargetArrayLengthDistribution->min <= v39)
      {
LABEL_95:
        v6->_telemetryCommandBuffer->renderTargetArrayLengthDistribution->total += v39;
        ++v6->_telemetryCommandBuffer->renderTargetArrayLengthDistribution->count;
        return;
      }
    }

    else
    {
      renderTargetArrayLengthDistribution->max = v39;
      renderTargetArrayLengthDistribution = v6->_telemetryCommandBuffer->renderTargetArrayLengthDistribution;
    }

    renderTargetArrayLengthDistribution->min = v39;
    goto LABEL_95;
  }
}

- (MTLTelemetryRenderCommandEncoder)initWithRenderCommandEncoder:(id)a3 parent:(id)a4 commandBuffer:(id)a5 descriptor:(id)a6
{
  v11.receiver = self;
  v11.super_class = MTLTelemetryRenderCommandEncoder;
  v8 = [(MTLToolsRenderCommandEncoder *)&v11 initWithRenderCommandEncoder:a3 parent:a4];
  v9 = v8;
  if (v8)
  {
    [(MTLTelemetryRenderCommandEncoder *)v8 initTelemetryWithDescriptor:a6 commandBuffer:a5];
  }

  return v9;
}

- (MTLTelemetryRenderCommandEncoder)initWithRenderCommandEncoder:(id)a3 parent:(id)a4 descriptor:(id)a5
{
  v10.receiver = self;
  v10.super_class = MTLTelemetryRenderCommandEncoder;
  v7 = [MTLToolsRenderCommandEncoder initWithRenderCommandEncoder:sel_initWithRenderCommandEncoder_parent_descriptor_ parent:a3 descriptor:?];
  v8 = v7;
  if (v7)
  {
    [(MTLTelemetryRenderCommandEncoder *)v7 initTelemetryWithDescriptor:a5 commandBuffer:a4];
  }

  return v8;
}

- (void)setRenderPipelineState:(id)a3
{
  if (a3)
  {
    [a3 accumulateUsage];
    if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
    {

      self->_telemetryPipeline = a3;
    }
  }

  v5 = [(MTLToolsObject *)self baseObject];
  v6 = [a3 baseObject];

  [v5 setRenderPipelineState:v6];
}

- (void)setDepthStencilState:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  v5 = [a3 baseObject];

  [v4 setDepthStencilState:v5];
}

- (void)setDepthClipMode:(unint64_t)a3
{
  telemetryCommandBuffer = self->_telemetryCommandBuffer;
  depthClipModeClampCount = telemetryCommandBuffer->depthClipModeClampCount;
  if (a3 == 1)
  {
    ++depthClipModeClampCount;
  }

  telemetryCommandBuffer->depthClipModeClampCount = depthClipModeClampCount;
  v6 = [(MTLToolsObject *)self baseObject];

  [v6 setDepthClipModeSPI:a3];
}

- (void)accumDrawWithType:(unint64_t)a3 indexType:(unint64_t)a4 primitiveType:(unint64_t)a5 vertexCount:(unint64_t)a6 instanceCount:(unint64_t)a7
{
  v39 = *MEMORY[0x277D85DE8];
  telemetryCommandBuffer = self->_telemetryCommandBuffer;
  drawDistribution = telemetryCommandBuffer->drawDistribution;
  ++telemetryCommandBuffer->cbDraws;
  ++self->_reDraws;
  if (a3 != 2)
  {
    if (!a6)
    {
      goto LABEL_11;
    }

    v10 = &drawDistribution->var0[a5][a4][a3];
    v11 = *(v10 + 24);
    if (v11)
    {
      if (*(v10 + 12) < a6)
      {
        *(v10 + 12) = a6;
      }

      if (*(v10 + 8) <= a6)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *(v10 + 12) = a6;
    }

    *(v10 + 8) = a6;
LABEL_10:
    *(v10 + 16) += a6;
    *(v10 + 24) = v11 + 1;
LABEL_11:
    if (!a7)
    {
      goto LABEL_20;
    }

    v12 = &drawDistribution->var0[a5][a4][a3];
    v13 = *(v12 + 48);
    if (v13)
    {
      if (*(v12 + 36) < a7)
      {
        *(v12 + 36) = a7;
      }

      if (*(v12 + 32) <= a7)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *(v12 + 36) = a7;
    }

    *(v12 + 32) = a7;
LABEL_19:
    *(v12 + 40) += a7;
    *(v12 + 48) = v13 + 1;
  }

LABEL_20:
  ++drawDistribution->var0[a5][a4][a3].var0;
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

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8
{
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    [(MTLTelemetryRenderCommandEncoder *)self accumDrawWithType:1 indexType:a5 primitiveType:a3 vertexCount:a4 instanceCount:a8];
  }

  v15 = [(MTLToolsObject *)self baseObject];
  v16 = [a6 baseObject];

  [v15 drawIndexedPrimitives:a3 indexCount:a4 indexType:a5 indexBuffer:v16 indexBufferOffset:a7 instanceCount:a8];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7
{
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    [(MTLTelemetryRenderCommandEncoder *)self accumDrawWithType:1 indexType:a5 primitiveType:a3 vertexCount:a4 instanceCount:1];
  }

  v13 = [(MTLToolsObject *)self baseObject];
  v14 = [a6 baseObject];

  [v13 drawIndexedPrimitives:a3 indexCount:a4 indexType:a5 indexBuffer:v14 indexBufferOffset:a7];
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6 baseInstance:(unint64_t)a7
{
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    [(MTLTelemetryRenderCommandEncoder *)self accumDrawWithType:0 indexType:2 primitiveType:a3 vertexCount:a5 instanceCount:a6];
  }

  v13 = [(MTLToolsObject *)self baseObject];

  [v13 drawPrimitives:a3 vertexStart:a4 vertexCount:a5 instanceCount:a6 baseInstance:a7];
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5
{
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    [(MTLTelemetryRenderCommandEncoder *)self accumDrawWithType:0 indexType:2 primitiveType:a3 vertexCount:a5 instanceCount:1];
  }

  v9 = [(MTLToolsObject *)self baseObject];

  [v9 drawPrimitives:a3 vertexStart:a4 vertexCount:a5];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseVertex:(int64_t)a9 baseInstance:(unint64_t)a10
{
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    [(MTLTelemetryRenderCommandEncoder *)self accumDrawWithType:1 indexType:a5 primitiveType:a3 vertexCount:a4 instanceCount:a8];
  }

  v17 = [(MTLToolsObject *)self baseObject];
  v18 = [a6 baseObject];

  [v17 drawIndexedPrimitives:a3 indexCount:a4 indexType:a5 indexBuffer:v18 indexBufferOffset:a7 instanceCount:a8 baseVertex:? baseInstance:?];
}

- (void)drawPrimitives:(unint64_t)a3 indirectBuffer:(id)a4 indirectBufferOffset:(unint64_t)a5
{
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    [(MTLTelemetryRenderCommandEncoder *)self accumDrawWithType:2 indexType:2 primitiveType:a3 vertexCount:0 instanceCount:1];
  }

  v9 = [(MTLToolsObject *)self baseObject];
  v10 = [a4 baseObject];

  [v9 drawPrimitives:a3 indirectBuffer:v10 indirectBufferOffset:a5];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexType:(unint64_t)a4 indexBuffer:(id)a5 indexBufferOffset:(unint64_t)a6 indirectBuffer:(id)a7 indirectBufferOffset:(unint64_t)a8
{
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    [(MTLTelemetryRenderCommandEncoder *)self accumDrawWithType:2 indexType:a4 primitiveType:a3 vertexCount:0 instanceCount:1];
  }

  v15 = [(MTLToolsObject *)self baseObject];
  v16 = [a5 baseObject];
  v17 = [a7 baseObject];

  [v15 drawIndexedPrimitives:a3 indexType:a4 indexBuffer:v16 indexBufferOffset:a6 indirectBuffer:v17 indirectBufferOffset:a8];
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
  v5 = [(MTLToolsObject *)self baseObject];

  [v5 endEncoding];
}

- (void)setFragmentTexture:(id)a3 atIndex:(unint64_t)a4
{
  if (![(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    goto LABEL_17;
  }

  v7 = a4 + 1;
  if (a4 != -1)
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

  if (a3 && *(a3 + 9) && ([a3 textureType] == 2 || objc_msgSend(a3, "textureType") == 3))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a3 + 9)];
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_clippedMip2DFragmentTextures, "setObject:forKeyedSubscript:", v9, [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4]);
  }

  else
  {
    -[NSMutableDictionary removeObjectForKey:](self->_clippedMip2DFragmentTextures, "removeObjectForKey:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4]);
  }

LABEL_17:
  v10.receiver = self;
  v10.super_class = MTLTelemetryRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v10 setFragmentTexture:a3 atIndex:a4];
}

- (void)setFragmentTextures:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
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
    v8 = a3;
    v9 = location;
    v10 = length;
    do
    {
      v11 = *v8;
      if (*v8 && v11[9] && ([*v8 textureType] == 2 || objc_msgSend(v11, "textureType") == 3))
      {
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11[9]];
        -[NSMutableDictionary setObject:forKeyedSubscript:](self->_clippedMip2DFragmentTextures, "setObject:forKeyedSubscript:", v12, [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9]);
      }

      else
      {
        -[NSMutableDictionary removeObjectForKey:](self->_clippedMip2DFragmentTextures, "removeObjectForKey:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9]);
      }

      ++v8;
      ++v9;
      --v10;
    }

    while (v10);
  }

LABEL_20:
  v15.receiver = self;
  v15.super_class = MTLTelemetryRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v15 setFragmentTextures:a3 withRange:location, length];
}

- (void)setFragmentSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    if (a3 && *(a3 + 36) == 1)
    {
      -[NSMutableSet addObject:](self->_anisoFragmentSamplers, "addObject:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4]);
    }

    else
    {
      -[NSMutableSet removeObject:](self->_anisoFragmentSamplers, "removeObject:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4]);
    }
  }

  v7.receiver = self;
  v7.super_class = MTLTelemetryRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v7 setFragmentSamplerState:a3 atIndex:a4];
}

- (void)setFragmentSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
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
    v9 = a3;
    v10 = length;
    do
    {
      if (*v9 && *(*v9 + 36) == 1)
      {
        -[NSMutableSet addObject:](self->_anisoFragmentSamplers, "addObject:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8]);
      }

      else
      {
        -[NSMutableSet removeObject:](self->_anisoFragmentSamplers, "removeObject:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8]);
      }

      ++v9;
      ++v8;
      --v10;
    }

    while (v10);
  }

  v12.receiver = self;
  v12.super_class = MTLTelemetryRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v12 setFragmentSamplerStates:a3 withRange:location, length];
}

- (void)setFragmentSamplerState:(id)a3 lodMinClamp:(float)a4 lodMaxClamp:(float)a5 atIndex:(unint64_t)a6
{
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    if (a3 && *(a3 + 36) == 1)
    {
      -[NSMutableSet addObject:](self->_anisoFragmentSamplers, "addObject:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6]);
    }

    else
    {
      -[NSMutableSet removeObject:](self->_anisoFragmentSamplers, "removeObject:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6]);
    }
  }

  v13.receiver = self;
  v13.super_class = MTLTelemetryRenderCommandEncoder;
  *&v11 = a4;
  *&v12 = a5;
  [(MTLToolsRenderCommandEncoder *)&v13 setFragmentSamplerState:a3 lodMinClamp:a6 lodMaxClamp:v11 atIndex:v12];
}

- (void)setFragmentSamplerStates:(const void *)a3 lodMinClamps:(const float *)a4 lodMaxClamps:(const float *)a5 withRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
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
    v11 = a3;
    v12 = length;
    do
    {
      if (*v11 && *(*v11 + 36) == 1)
      {
        -[NSMutableSet addObject:](self->_anisoFragmentSamplers, "addObject:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10]);
      }

      else
      {
        -[NSMutableSet removeObject:](self->_anisoFragmentSamplers, "removeObject:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10]);
      }

      ++v11;
      ++v10;
      --v12;
    }

    while (v12);
  }

  v16.receiver = self;
  v16.super_class = MTLTelemetryRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v16 setFragmentSamplerStates:a3 lodMinClamps:a4 lodMaxClamps:a5 withRange:location, length];
}

- (void)accumViewportTelemetry:(id *)a3 count:(unint64_t)a4
{
  if (a4)
  {
    viewportDistribution = self->_telemetryCommandBuffer->viewportDistribution;
    if (viewportDistribution->var0.count)
    {
      if (viewportDistribution->var0.max < a4)
      {
        viewportDistribution->var0.max = a4;
        viewportDistribution = self->_telemetryCommandBuffer->viewportDistribution;
      }

      if (viewportDistribution->var0.min <= a4)
      {
        goto LABEL_11;
      }
    }

    else
    {
      viewportDistribution->var0.max = a4;
      viewportDistribution = self->_telemetryCommandBuffer->viewportDistribution;
    }

    viewportDistribution->var0.min = a4;
LABEL_11:
    self->_telemetryCommandBuffer->viewportDistribution->var0.total += a4;
    ++self->_telemetryCommandBuffer->viewportDistribution->var0.count;
    goto LABEL_12;
  }

  if (a4)
  {
LABEL_12:
    p_var5 = &a3->var5;
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
      if (v23 >= a4)
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

- (void)setViewport:(id *)a3
{
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    [(MTLTelemetryRenderCommandEncoder *)self accumViewportTelemetry:a3 count:1];
  }

  v5 = [(MTLToolsObject *)self baseObject];
  v6 = *&a3->var2;
  v7[0] = *&a3->var0;
  v7[1] = v6;
  v7[2] = *&a3->var4;
  [v5 setViewport:v7];
}

- (void)setViewports:(id *)a3 count:(unint64_t)a4
{
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    [(MTLTelemetryRenderCommandEncoder *)self accumViewportTelemetry:a3 count:a4];
  }

  v7 = [(MTLToolsObject *)self baseObject];

  [v7 setViewports:a3 count:a4];
}

- (void)accumScissorRectTelemetry:(id *)a3 count:(unint64_t)a4
{
  if (a4)
  {
    scissorRectDistribution = self->_telemetryCommandBuffer->scissorRectDistribution;
    if (scissorRectDistribution->var0.count)
    {
      if (scissorRectDistribution->var0.max < a4)
      {
        scissorRectDistribution->var0.max = a4;
        scissorRectDistribution = self->_telemetryCommandBuffer->scissorRectDistribution;
      }

      if (scissorRectDistribution->var0.min <= a4)
      {
        goto LABEL_11;
      }
    }

    else
    {
      scissorRectDistribution->var0.max = a4;
      scissorRectDistribution = self->_telemetryCommandBuffer->scissorRectDistribution;
    }

    scissorRectDistribution->var0.min = a4;
LABEL_11:
    self->_telemetryCommandBuffer->scissorRectDistribution->var0.total += a4;
    ++self->_telemetryCommandBuffer->scissorRectDistribution->var0.count;
    goto LABEL_12;
  }

  if (a4)
  {
LABEL_12:
    p_var3 = &a3->var3;
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
      if (v15 >= a4)
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

- (void)setScissorRect:(id *)a3
{
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    [(MTLTelemetryRenderCommandEncoder *)self accumScissorRectTelemetry:a3 count:1];
  }

  v5 = [(MTLToolsObject *)self baseObject];
  v6 = *&a3->var2;
  v7[0] = *&a3->var0;
  v7[1] = v6;
  [v5 setScissorRect:v7];
}

- (void)setScissorRects:(id *)a3 count:(unint64_t)a4
{
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    [(MTLTelemetryRenderCommandEncoder *)self accumScissorRectTelemetry:a3 count:a4];
  }

  v7 = [(MTLToolsObject *)self baseObject];

  [v7 setScissorRects:a3 count:a4];
}

@end