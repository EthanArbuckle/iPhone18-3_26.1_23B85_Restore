@interface MTL4DebugRenderCommandEncoder
- (MTL4DebugRenderCommandEncoder)initWithRenderCommandEncoder:(id)a3 commandBuffer:(id)a4 descriptor:(id)a5;
- (id).cxx_construct;
- (id)commandBuffer;
- (void)_resetEncoderWithDescriptor:(id)a3;
- (void)_validateDispatchThreadsPerTileCommon:(_MTLMessageContext *)a3 threadsPerTile:(id *)a4;
- (void)_validateDrawCommon:(_MTLMessageContext *)a3 primitiveType:(unint64_t)a4 instanceCount:(unint64_t)a5;
- (void)_validateFramebufferCompatibility:(_MTLMessageContext *)a3 pipelineState:(id)a4;
- (void)_validateFunctionArguments:(_MTLMessageContext *)a3 stages:(unint64_t)a4;
- (void)_validateIndexedDrawCommon:(_MTLMessageContext *)a3 indexBuffer:(unint64_t)a4 indexType:(unint64_t)a5 indexBufferLength:(unint64_t)a6;
- (void)_validateLBRT:(_MTLMessageContext *)a3;
- (void)_validateMeshDrawCommon:(_MTLMessageContext *)a3;
- (void)_validateThreadgroupSize:(id *)a3 stage:(unint64_t)a4 context:(_MTLMessageContext *)a5;
- (void)_validateThreadsPerObjectThreadgroup:(id *)a3 threadsPerMeshThreadgroup:(id *)a4 context:(_MTLMessageContext *)a5;
- (void)dealloc;
- (void)dispatchThreadsPerTile:(id *)a3;
- (void)dispatchThreadsPerTile:(id *)a3 inRegion:(id *)a4;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(unint64_t)a6 indexBufferLength:(unint64_t)a7;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(unint64_t)a6 indexBufferLength:(unint64_t)a7 instanceCount:(unint64_t)a8;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(unint64_t)a6 indexBufferLength:(unint64_t)a7 instanceCount:(unint64_t)a8 baseVertex:(int64_t)a9 baseInstance:(unint64_t)a10;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexType:(unint64_t)a4 indexBuffer:(unint64_t)a5 indexBufferLength:(unint64_t)a6 indirectBuffer:(unint64_t)a7;
- (void)drawMeshThreadgroups:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5;
- (void)drawMeshThreadgroupsWithIndirectBuffer:(unint64_t)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5;
- (void)drawMeshThreads:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5;
- (void)drawPrimitives:(unint64_t)a3 indirectBuffer:(unint64_t)a4;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6 baseInstance:(unint64_t)a7;
- (void)endEncoding;
- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(unint64_t)a4;
- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4;
- (void)setArgumentTable:(id)a3 atStages:(unint64_t)a4;
- (void)setBlendColorRed:(float)a3 green:(float)a4 blue:(float)a5 alpha:(float)a6;
- (void)setColorAttachmentMap:(id)a3;
- (void)setColorStoreAction:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setCommandDataCorruptModeSPI:(unint64_t)a3;
- (void)setCullMode:(unint64_t)a3;
- (void)setDepthBias:(float)a3 slopeScale:(float)a4 clamp:(float)a5;
- (void)setDepthClipMode:(unint64_t)a3;
- (void)setDepthClipModeSPI:(unint64_t)a3;
- (void)setDepthStencilState:(id)a3;
- (void)setDepthStoreAction:(unint64_t)a3;
- (void)setDepthTestMinBound:(float)a3 maxBound:(float)a4;
- (void)setFrontFacingWinding:(unint64_t)a3;
- (void)setLineWidth:(float)a3;
- (void)setObjectThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setRenderPipelineState:(id)a3;
- (void)setScissorRect:(id *)a3;
- (void)setScissorRects:(id *)a3 count:(unint64_t)a4;
- (void)setStencilStoreAction:(unint64_t)a3;
- (void)setThreadgroupMemoryLength:(unint64_t)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setTriangleFillMode:(unint64_t)a3;
- (void)setVertexAmplificationCount:(unint64_t)a3 viewMappings:(id *)a4;
- (void)setVertexAmplificationMode:(unint64_t)a3 value:(unint64_t)a4;
- (void)setViewport:(id *)a3;
- (void)setViewports:(id *)a3 count:(unint64_t)a4;
- (void)setVisibilityResultMode:(unint64_t)a3 offset:(unint64_t)a4;
- (void)writeTimestampWithGranularity:(int64_t)a3 afterStage:(unint64_t)a4 intoHeap:(id)a5 atIndex:(unint64_t)a6;
@end

@implementation MTL4DebugRenderCommandEncoder

- (MTL4DebugRenderCommandEncoder)initWithRenderCommandEncoder:(id)a3 commandBuffer:(id)a4 descriptor:(id)a5
{
  v10.receiver = self;
  v10.super_class = MTL4DebugRenderCommandEncoder;
  v8 = [MTL4ToolsCommandEncoder initWithCommandEncoder:sel_initWithCommandEncoder_commandBuffer_ commandBuffer:?];
  if (v8)
  {
    v8->_debugCommandEncoder = [[MTL4DebugCommandEncoder alloc] initWithBaseObject:a3 device:v8->super.super.super._device commandBuffer:a4 encoderStageMask:31];
    [(MTL4DebugRenderCommandEncoder *)v8 _resetEncoderWithDescriptor:a5];
    v8->_colorAttachmentMap = objc_opt_new();
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsCommandEncoder *)&v3 dealloc];
}

- (id)commandBuffer
{
  v6 = 0;
  memset(&v5[1], 0, 48);
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v5[0].receiver = self;
  v5[0].super_class = MTL4DebugRenderCommandEncoder;
  return [(objc_super *)v5 commandBuffer];
}

- (void)endEncoding
{
  v2 = self;
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder endEncodingPreamble];
  v3.receiver = v2;
  v3.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsCommandEncoder *)&v3 endEncoding];
  v2->_currentViewports.__end_ = v2->_currentViewports.__begin_;
  v2->_currentScissorRects.__end_ = v2->_currentScissorRects.__begin_;
  v2 = (v2 + 5736);
  std::__tree<unsigned int>::destroy(v2, &v2->super.super.super._parent->super.isa);
  v2->super.super.super.super.isa = &v2->super.super.super._parent;
  v2->super.super.super._baseObject = 0;
  v2->super.super.super._parent = 0;
}

- (void)setColorAttachmentMap:(id)a3
{
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding:0])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();

  if (a3)
  {
    v6 = [a3 copy];
  }

  else
  {
    v6 = objc_opt_new();
  }

  self->_colorAttachmentMap = v6;
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setRenderPipelineState:(id)a3
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
    if (a3)
    {
LABEL_3:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_4;
      }
    }
  }

  else if (a3)
  {
    goto LABEL_3;
  }

  _MTLMessageContextPush_();
LABEL_4:
  encoderState = self->_encoderState;
  if ((*&encoderState & 1) == 0)
  {
    _MTLMessageContextPush_();
    encoderState = self->_encoderState;
  }

  if ((*&encoderState & 0x2000) != 0 && self->_currentRenderPipelineState == a3)
  {
    _MTLMessageContextPush_();
  }

  if (!*&v8[0])
  {
    [(MTL4DebugRenderCommandEncoder *)self _validateFramebufferCompatibility:v8 pipelineState:a3];
  }

  _MTLMessageContextEnd();
  self->_currentRenderPipelineState = a3;
  self->_encoderState = (*&self->_encoderState & 0xFFFFDFFE | 0x2000);
  v7.receiver = self;
  v7.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v7 setRenderPipelineState:a3];
}

- (void)setViewport:(id *)a3
{
  v26 = 0;
  memset(&v25[3], 0, 48);
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  encoderState = self->_encoderState;
  if ((*&encoderState & 2) == 0)
  {
    _MTLMessageContextPush_();
    encoderState = self->_encoderState;
  }

  if ((*&encoderState & 0x4000) != 0)
  {
    begin = self->_currentViewports.__begin_;
    end = self->_currentViewports.__end_;
    if (end - begin == 48)
    {
      v9 = begin == end ? 0 : self->_currentViewports.__begin_;
      if (!memcmp(v9, a3, 0x30uLL))
      {
        _MTLMessageContextPush_();
      }
    }
  }

  if (fabs(a3->var2) == INFINITY)
  {
    _MTLMessageContextPush_();
  }

  if (fabs(a3->var3) == INFINITY)
  {
    _MTLMessageContextPush_();
  }

  if (fabs(a3->var0) == INFINITY)
  {
    _MTLMessageContextPush_();
  }

  if (fabs(a3->var1) == INFINITY)
  {
    _MTLMessageContextPush_();
  }

  var4 = a3->var4;
  if (fabs(var4) == INFINITY)
  {
    _MTLMessageContextPush_();
    var4 = a3->var4;
  }

  if (fabs(var4) == INFINITY)
  {
    _MTLMessageContextPush_();
  }

  var2 = a3->var2;
  var3 = a3->var3;
  var0 = a3->var0;
  var1 = a3->var1;
  v15 = a3->var4;
  _MTLMessageContextEnd();
  v16 = self->_currentViewports.__begin_;
  self->_currentViewports.__end_ = v16;
  cap = self->_currentViewports.__cap_;
  if (v16 >= cap)
  {
    v20 = 0xAAAAAAAAAAAAAAABLL * ((cap - v16) >> 4);
    v21 = 2 * v20;
    if (2 * v20 <= 1)
    {
      v21 = 1;
    }

    if (v20 >= 0x2AAAAAAAAAAAAAALL)
    {
      v22 = 0x555555555555555;
    }

    else
    {
      v22 = v21;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLViewport>>(&self->_currentViewports, v22);
  }

  v18 = *&a3->var0;
  v19 = *&a3->var4;
  *(v16 + 1) = *&a3->var2;
  *(v16 + 2) = v19;
  *v16 = v18;
  self->_currentViewports.__end_ = (v16 + 48);
  self->_encoderState = (*&self->_encoderState & 0xFFFFBFFD | 0x4000);
  v23 = *&a3->var2;
  v25[0] = *&a3->var0;
  v25[1] = v23;
  v25[2] = *&a3->var4;
  v24.receiver = self;
  v24.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v24 setViewport:v25];
}

- (void)setViewports:(id *)a3 count:(unint64_t)a4
{
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  encoderState = self->_encoderState;
  if ((*&encoderState & 2) == 0)
  {
    _MTLMessageContextPush_();
    encoderState = self->_encoderState;
  }

  if ((*&encoderState & 0x4000) != 0 && (begin = self->_currentViewports.__begin_, end = self->_currentViewports.__end_, 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 4) == a4) && (begin != end ? (v11 = self->_currentViewports.__begin_) : (v11 = 0), !memcmp(v11, a3, end - begin)))
  {
    _MTLMessageContextPush_();
    if (!a4)
    {
      goto LABEL_28;
    }
  }

  else if (!a4)
  {
    goto LABEL_28;
  }

  v12 = 0;
  p_var4 = &a3->var4;
  do
  {
    if (fabs(*(p_var4 - 2)) == INFINITY)
    {
      v37 = v12;
      _MTLMessageContextPush_();
    }

    if (fabs(*(p_var4 - 1)) == INFINITY)
    {
      v37 = v12;
      _MTLMessageContextPush_();
    }

    if (fabs(*(p_var4 - 4)) == INFINITY)
    {
      v37 = v12;
      _MTLMessageContextPush_();
    }

    if (fabs(*(p_var4 - 3)) == INFINITY)
    {
      v37 = v12;
      _MTLMessageContextPush_();
    }

    v14 = *p_var4;
    if (fabs(*p_var4) == INFINITY)
    {
      v37 = v12;
      _MTLMessageContextPush_();
      v14 = *p_var4;
    }

    if (fabs(v14) == INFINITY)
    {
      v37 = v12;
      _MTLMessageContextPush_();
    }

    v15 = *(p_var4 - 2);
    v16 = *(p_var4 - 1);
    v17 = *(p_var4 - 4);
    v18 = *(p_var4 - 3);
    v19 = *p_var4;
    ++v12;
    p_var4 += 6;
  }

  while (a4 != v12);
LABEL_28:
  v39 = a3;
  _MTLMessageContextEnd();
  v38 = self;
  p_currentViewports = &self->_currentViewports;
  self->_currentViewports.__end_ = self->_currentViewports.__begin_;
  std::vector<MTLViewport>::reserve(&self->_currentViewports.__begin_, a4);
  if (a4)
  {
    v21 = self->_currentViewports.__end_;
    v22 = a3;
    v23 = a4;
    do
    {
      cap = p_currentViewports->__cap_;
      if (v21 >= cap)
      {
        v27 = 0xAAAAAAAAAAAAAAABLL * ((v21 - p_currentViewports->__begin_) >> 4);
        v28 = v27 + 1;
        if (v27 + 1 > 0x555555555555555)
        {
          std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
        }

        v29 = 0xAAAAAAAAAAAAAAABLL * ((cap - p_currentViewports->__begin_) >> 4);
        if (2 * v29 > v28)
        {
          v28 = 2 * v29;
        }

        if (v29 >= 0x2AAAAAAAAAAAAAALL)
        {
          v30 = 0x555555555555555;
        }

        else
        {
          v30 = v28;
        }

        if (v30)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<MTLViewport>>(p_currentViewports, v30);
        }

        v31 = 48 * v27;
        v32 = *&v22->var0;
        v33 = *&v22->var4;
        *(v31 + 16) = *&v22->var2;
        *(v31 + 32) = v33;
        *v31 = v32;
        v21 = (48 * v27 + 48);
        v34 = p_currentViewports->__end_ - p_currentViewports->__begin_;
        v35 = (v31 - v34);
        memcpy((v31 - v34), p_currentViewports->__begin_, v34);
        v36 = p_currentViewports->__begin_;
        p_currentViewports->__begin_ = v35;
        p_currentViewports->__end_ = v21;
        p_currentViewports->__cap_ = 0;
        if (v36)
        {
          operator delete(v36);
        }
      }

      else
      {
        v25 = *&v22->var0;
        v26 = *&v22->var4;
        *(v21 + 1) = *&v22->var2;
        *(v21 + 2) = v26;
        *v21 = v25;
        v21 = (v21 + 48);
      }

      p_currentViewports->__end_ = v21;
      ++v22;
      --v23;
    }

    while (v23);
  }

  v38->_encoderState = (*&v38->_encoderState & 0xFFFFBFFD | 0x4000);
  v40.receiver = v38;
  v40.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v40 setViewports:v39 count:a4, v37];
}

- (void)setVertexAmplificationCount:(unint64_t)a3 viewMappings:(id *)a4
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (![(MTLToolsDevice *)self->super.super.super._device supportsVertexAmplification])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (![(MTLToolsDevice *)self->super.super.super._device supportsVertexAmplificationCount:a3])
  {
    _MTLMessageContextPush_();
  }

  encoderState = self->_encoderState;
  if ((*&encoderState & 4) == 0)
  {
    _MTLMessageContextPush_();
    encoderState = self->_encoderState;
  }

  if ((*&encoderState & 0x8000) != 0 && self->_currentVertexAmplificationCount == a3)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  self->_currentVertexAmplificationCount = a3;
  self->_encoderState = (*&self->_encoderState & 0xFFFF7FFB | 0x8000);
  v9.receiver = self;
  v9.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v9 setVertexAmplificationCount:a3 viewMappings:a4];
}

- (void)setCullMode:(unint64_t)a3
{
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (a3 >= 3)
  {
    _MTLMessageContextPush_();
  }

  encoderState = self->_encoderState;
  if ((*&encoderState & 8) == 0)
  {
    _MTLMessageContextPush_();
    encoderState = self->_encoderState;
  }

  if ((*&encoderState & 0x10000) != 0 && self->_currentCullMode == a3)
  {
    [MTL4DebugRenderCommandEncoder setCullMode:a3];
  }

  _MTLMessageContextEnd();
  self->_currentCullMode = a3;
  self->_encoderState = (*&self->_encoderState & 0xFFFEFFF7 | 0x10000);
  v7.receiver = self;
  v7.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v7 setCullMode:a3];
}

- (void)setDepthClipMode:(unint64_t)a3
{
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (a3 >= 2)
  {
    _MTLMessageContextPush_();
  }

  encoderState = self->_encoderState;
  if ((*&encoderState & 0x10) == 0)
  {
    _MTLMessageContextPush_();
    encoderState = self->_encoderState;
  }

  if ((*&encoderState & 0x20000) != 0 && self->_currentDepthClipMode == a3)
  {
    [MTL4DebugRenderCommandEncoder setDepthClipMode:a3];
  }

  _MTLMessageContextEnd();
  self->_currentDepthClipMode = a3;
  self->_encoderState = (*&self->_encoderState & 0xFFFDFFEF | 0x20000);
  v7.receiver = self;
  v7.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v7 setDepthClipMode:a3];
}

- (void)setDepthBias:(float)a3 slopeScale:(float)a4 clamp:(float)a5
{
  v15 = 0;
  memset(&v14[1], 0, 48);
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  encoderState = self->_encoderState;
  if ((*&encoderState & 0x20) == 0)
  {
    _MTLMessageContextPush_();
    encoderState = self->_encoderState;
  }

  if ((*&encoderState & 0x40000) != 0 && self->_currentDepthBias == a3 && self->_currentDepthSlopeScale == a4 && self->_currentDepthClamp == a5)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  self->_currentDepthBias = a3;
  self->_currentDepthSlopeScale = a4;
  self->_currentDepthClamp = a5;
  self->_encoderState = (*&self->_encoderState & 0xFFFBFFDF | 0x40000);
  v14[0].receiver = self;
  v14[0].super_class = MTL4DebugRenderCommandEncoder;
  *&v11 = a3;
  *&v12 = a4;
  *&v13 = a5;
  [(objc_super *)v14 setDepthBias:v11 slopeScale:v12 clamp:v13];
}

- (void)setDepthTestMinBound:(float)a3 maxBound:(float)a4
{
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (![(MTLToolsDevice *)self->super.super.super._device supportsDepthBoundsTesting])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (a3 < 0.0 || a3 > 1.0)
  {
    _MTLMessageContextPush_();
  }

  if (a4 < 0.0 || a4 > 1.0)
  {
    _MTLMessageContextPush_();
  }

  if (a3 > a4)
  {
    _MTLMessageContextPush_();
  }

  if (self->_currentDepthTestMinBound == a3 && self->_currentDepthTestMaxBound == a4)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  self->_currentDepthTestMinBound = a3;
  self->_currentDepthTestMaxBound = a4;
  v10.receiver = self;
  v10.super_class = MTL4DebugRenderCommandEncoder;
  *&v8 = a3;
  *&v9 = a4;
  [(MTL4ToolsRenderCommandEncoder *)&v10 setDepthTestMinBound:v8 maxBound:v9];
}

- (void)setScissorRect:(id *)a3
{
  v32 = 0;
  memset(&v31[2], 0, 48);
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  var2 = a3->var2;
  if (var2 + a3->var0 > self->_width)
  {
    v28 = var2 + a3->var0;
    width = self->_width;
    var0 = a3->var0;
    v27 = a3->var2;
    _MTLMessageContextPush_();
  }

  var1 = a3->var1;
  var3 = a3->var3;
  if (var3 + var1 > self->_height)
  {
    v28 = var3 + var1;
    width = self->_height;
    var0 = a3->var1;
    v27 = a3->var3;
    _MTLMessageContextPush_();
  }

  encoderState = self->_encoderState;
  if ((*&encoderState & 0x40) == 0)
  {
    _MTLMessageContextPush_();
    encoderState = self->_encoderState;
  }

  if ((*&encoderState & 0x80000) != 0)
  {
    begin = self->_currentScissorRects.__begin_;
    end = self->_currentScissorRects.__end_;
    if (end - begin == 32)
    {
      if (begin == end)
      {
        begin = 0;
      }

      v12 = *begin;
      v13 = *(begin + 1);
      v15 = *(begin + 2);
      v14 = *(begin + 3);
      if (v12 == a3->var0 && v13 == a3->var1 && v15 == a3->var2 && v14 == a3->var3)
      {
        _MTLMessageContextPush_();
      }
    }
  }

  _MTLMessageContextEnd();
  v19 = self->_currentScissorRects.__begin_;
  self->_currentScissorRects.__end_ = v19;
  cap = self->_currentScissorRects.__cap_;
  if (v19 >= cap)
  {
    v22 = cap - v19;
    v23 = v22 >> 4;
    if ((v22 >> 4) <= 1)
    {
      v23 = 1;
    }

    if (v22 >= 0x7FFFFFFFFFFFFFE0)
    {
      v24 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v24 = v23;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLScissorRect>>(&self->_currentScissorRects, v24);
  }

  v21 = *&a3->var2;
  *v19 = *&a3->var0;
  *(v19 + 1) = v21;
  self->_currentScissorRects.__end_ = (v19 + 32);
  self->_encoderState = (*&self->_encoderState & 0xFFF7FFBF | 0x80000);
  v25 = *&a3->var2;
  v31[0] = *&a3->var0;
  v31[1] = v25;
  v30.receiver = self;
  v30.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v30 setScissorRect:v31, var0, v27, v28, width];
}

- (void)setScissorRects:(id *)a3 count:(unint64_t)a4
{
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
    if (!a4)
    {
      goto LABEL_11;
    }
  }

  else if (!a4)
  {
    goto LABEL_11;
  }

  v8 = 0;
  p_var2 = &a3->var2;
  do
  {
    v10 = *(p_var2 - 2);
    if (*p_var2 + v10 > self->_width)
    {
      v35 = v8;
      width = self->_width;
      v33 = *p_var2;
      v34 = *p_var2 + v10;
      v32 = *(p_var2 - 2);
      _MTLMessageContextPush_();
    }

    v11 = *(p_var2 - 1);
    v12 = p_var2[1];
    if (v12 + v11 > self->_height)
    {
      v35 = v8;
      width = self->_height;
      v33 = p_var2[1];
      v34 = v12 + v11;
      v32 = *(p_var2 - 1);
      _MTLMessageContextPush_();
    }

    ++v8;
    p_var2 += 4;
  }

  while (a4 != v8);
LABEL_11:
  encoderState = self->_encoderState;
  if ((*&encoderState & 0x40) == 0)
  {
    _MTLMessageContextPush_();
    encoderState = self->_encoderState;
  }

  if ((*&encoderState & 0x80000) != 0)
  {
    begin = self->_currentScissorRects.__begin_;
    end = self->_currentScissorRects.__end_;
    if (a4 == (end - begin) >> 5)
    {
      v16 = begin == end ? 0 : self->_currentScissorRects.__begin_;
      if (!memcmp(v16, a3, end - begin))
      {
        _MTLMessageContextPush_();
      }
    }
  }

  v37 = a3;
  _MTLMessageContextEnd();
  p_currentScissorRects = &self->_currentScissorRects;
  self->_currentScissorRects.__end_ = self->_currentScissorRects.__begin_;
  std::vector<MTLScissorRect>::reserve(&self->_currentScissorRects.__begin_, a4);
  if (a4)
  {
    v18 = self->_currentScissorRects.__end_;
    v19 = a3;
    v20 = a4;
    do
    {
      cap = self->_currentScissorRects.__cap_;
      if (v18 >= cap)
      {
        v23 = (v18 - p_currentScissorRects->__begin_) >> 5;
        if ((v23 + 1) >> 59)
        {
          std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
        }

        v24 = cap - p_currentScissorRects->__begin_;
        v25 = v24 >> 4;
        if (v24 >> 4 <= (v23 + 1))
        {
          v25 = v23 + 1;
        }

        if (v24 >= 0x7FFFFFFFFFFFFFE0)
        {
          v26 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v25;
        }

        if (v26)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<MTLScissorRect>>(&self->_currentScissorRects, v26);
        }

        v27 = (32 * v23);
        v28 = *&v19->var2;
        *v27 = *&v19->var0;
        *(v27 + 1) = v28;
        v18 = (32 * v23 + 32);
        v29 = (self->_currentScissorRects.__end_ - p_currentScissorRects->__begin_);
        v30 = (v27 - v29);
        memcpy((v27 - v29), p_currentScissorRects->__begin_, v29);
        v31 = p_currentScissorRects->__begin_;
        p_currentScissorRects->__begin_ = v30;
        self->_currentScissorRects.__end_ = v18;
        self->_currentScissorRects.__cap_ = 0;
        if (v31)
        {
          operator delete(v31);
        }
      }

      else
      {
        v22 = *&v19->var2;
        *v18 = *&v19->var0;
        *(v18 + 1) = v22;
        v18 = (v18 + 32);
      }

      self->_currentScissorRects.__end_ = v18;
      ++v19;
      --v20;
    }

    while (v20);
  }

  self->_encoderState = (*&self->_encoderState & 0xFFF7FFBF | 0x80000);
  v38.receiver = self;
  v38.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v38 setScissorRects:v37 count:a4, v32, v33, v34, v35, width];
}

- (void)setTriangleFillMode:(unint64_t)a3
{
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (a3 >= 3)
  {
    _MTLMessageContextPush_();
  }

  encoderState = self->_encoderState;
  if ((*&encoderState & 0x80) == 0)
  {
    _MTLMessageContextPush_();
    encoderState = self->_encoderState;
  }

  if ((*&encoderState & 0x100000) != 0 && self->_currentTriangleFillMode == a3)
  {
    [MTL4DebugRenderCommandEncoder setTriangleFillMode:a3];
  }

  _MTLMessageContextEnd();
  self->_currentTriangleFillMode = a3;
  self->_encoderState = (*&self->_encoderState & 0xFFEFFF7F | 0x100000);
  v7.receiver = self;
  v7.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v7 setTriangleFillMode:a3];
}

- (void)setBlendColorRed:(float)a3 green:(float)a4 blue:(float)a5 alpha:(float)a6
{
  v18 = 0;
  memset(&v17[1], 0, 48);
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  encoderState = self->_encoderState;
  if ((*&encoderState & 0x100) != 0)
  {
    if ((*&encoderState & 0x200000) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 0x200000) == 0)
    {
      goto LABEL_10;
    }
  }

  if (self->_currentBlendColorRed == a3 && self->_currentBlendColorGreen == a4 && self->_currentBlendColorBlue == a5 && self->_currentBlendColorAlpha == a6)
  {
    _MTLMessageContextPush_();
  }

LABEL_10:
  _MTLMessageContextEnd();
  v17[0].receiver = self;
  v17[0].super_class = MTL4DebugRenderCommandEncoder;
  *&v13 = a3;
  *&v14 = a4;
  *&v15 = a5;
  *&v16 = a6;
  [(objc_super *)v17 setBlendColorRed:v13 green:v14 blue:v15 alpha:v16];
}

- (void)setDepthStencilState:(id)a3
{
  v8 = 0;
  memset(&v7[1], 0, 48);
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  encoderState = self->_encoderState;
  if ((*&encoderState & 0x200) == 0)
  {
    _MTLMessageContextPush_();
    encoderState = self->_encoderState;
  }

  if ((*&encoderState & 0x400000) != 0 && self->_currentDepthStencilState == a3)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  self->_currentDepthStencilState = a3;
  self->_encoderState = (*&self->_encoderState & 0xFFBFFDFF | 0x400000);
  v7[0].receiver = self;
  v7[0].super_class = MTL4DebugRenderCommandEncoder;
  [(objc_super *)v7 setDepthStencilState:a3];
}

- (void)setVisibilityResultMode:(unint64_t)a3 offset:(unint64_t)a4
{
  v4 = a4;
  v21 = a4;
  if (a3 == 2)
  {
    [(MTLToolsObject *)self->super.super.super._device originalObject];
    MTLValidateFeatureSupport();
  }

  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (a3 >= 3)
  {
    v15 = a3;
    _MTLMessageContextPush_();
  }

  else if (!a3)
  {
    v13 = 1;
    goto LABEL_22;
  }

  left = self->_allVisibilityOffsets.__tree_.__end_node_.__left_;
  if (left)
  {
    p_end_node = &self->_allVisibilityOffsets.__tree_.__end_node_;
    do
    {
      v10 = left[4].__left_;
      v11 = v10 >= v4;
      v12 = v10 < v4;
      if (v11)
      {
        p_end_node = left;
      }

      left = left[v12].__left_;
    }

    while (left);
    if (p_end_node != &self->_allVisibilityOffsets.__tree_.__end_node_ && p_end_node[4].__left_ <= v4)
    {
      v15 = v4;
      _MTLMessageContextPush_();
    }
  }

  if (![(MTL4RenderPassDescriptor *)self->_descriptor visibilityResultBuffer])
  {
    _MTLMessageContextPush_();
  }

  if (v4 + 8 > [-[MTL4RenderPassDescriptor visibilityResultBuffer](self->_descriptor "visibilityResultBuffer")])
  {
    [MTL4DebugRenderCommandEncoder setVisibilityResultMode:? offset:?];
  }

  v13 = 0;
LABEL_22:
  encoderState = self->_encoderState;
  if ((*&encoderState & 0x800) == 0)
  {
    _MTLMessageContextPush_();
    encoderState = self->_encoderState;
  }

  if ((*&encoderState & 0x1000000) != 0 && self->_currentVisibilityResultMode == a3 && self->_currentVisibilityResultModeOffset == v4)
  {
    [MTL4DebugRenderCommandEncoder setVisibilityResultMode:a3 offset:?];
  }

  _MTLMessageContextEnd();
  self->_currentVisibilityResultMode = a3;
  self->_currentVisibilityResultModeOffset = v4;
  if ((v13 & 1) == 0)
  {
    std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long &>(&self->_allVisibilityOffsets, &v21);
    v4 = v21;
  }

  self->_encoderState = (*&self->_encoderState & 0xFEFFF7FF | 0x1000000);
  v16.receiver = self;
  v16.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v16 setVisibilityResultMode:a3 offset:v4];
}

- (void)setColorStoreAction:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (a4 >= 8)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v8 = [-[MTL4RenderPassDescriptor colorAttachments](self->_descriptor "colorAttachments")];
  _MTLDebugValidateDeferredStoreActionOnDevice(self->super.super.super._device, a3, v8, a4, self->_unknownStoreActions);
  [v8 setStoreAction:a3];
  v9.receiver = self;
  v9.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v9 setColorStoreAction:a3 atIndex:a4];
}

- (void)setDepthStoreAction:(unint64_t)a3
{
  v8 = 0;
  memset(&v7[1], 0, 48);
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v6 = [-[MTL4RenderPassDescriptor colorAttachments](self->_descriptor "colorAttachments")];
  _MTLDebugValidateDeferredStoreActionOnDevice(self->super.super.super._device, a3, v6, 8uLL, self->_unknownStoreActions);
  [v6 setStoreAction:a3];
  v7[0].receiver = self;
  v7[0].super_class = MTL4DebugRenderCommandEncoder;
  [(objc_super *)v7 setDepthStoreAction:a3];
}

- (void)setStencilStoreAction:(unint64_t)a3
{
  v8 = 0;
  memset(&v7[1], 0, 48);
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v6 = [-[MTL4RenderPassDescriptor colorAttachments](self->_descriptor "colorAttachments")];
  _MTLDebugValidateDeferredStoreActionOnDevice(self->super.super.super._device, a3, v6, 9uLL, self->_unknownStoreActions);
  [v6 setStoreAction:a3];
  v7[0].receiver = self;
  v7[0].super_class = MTL4DebugRenderCommandEncoder;
  [(objc_super *)v7 setStencilStoreAction:a3];
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  [(MTL4DebugRenderCommandEncoder *)self _validateDrawCommon:v11 primitiveType:a3 instanceCount:1];
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v10.receiver = self;
  v10.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v10 drawPrimitives:a3 vertexStart:a4 vertexCount:a5];
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  [(MTL4DebugRenderCommandEncoder *)self _validateDrawCommon:v13 primitiveType:a3 instanceCount:a6];
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v12.receiver = self;
  v12.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v12 drawPrimitives:a3 vertexStart:a4 vertexCount:a5 instanceCount:a6];
}

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6 baseInstance:(unint64_t)a7
{
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  [(MTL4DebugRenderCommandEncoder *)self _validateDrawCommon:v15 primitiveType:a3 instanceCount:a6];
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v14.receiver = self;
  v14.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v14 drawPrimitives:a3 vertexStart:a4 vertexCount:a5 instanceCount:a6 baseInstance:a7];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(unint64_t)a6 indexBufferLength:(unint64_t)a7
{
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  [(MTL4DebugRenderCommandEncoder *)self _validateIndexedDrawCommon:v15 indexBuffer:a6 indexType:a5 indexBufferLength:a7];
  [(MTL4DebugRenderCommandEncoder *)self _validateDrawCommon:v15 primitiveType:a3 instanceCount:1];
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v14.receiver = self;
  v14.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v14 drawIndexedPrimitives:a3 indexCount:a4 indexType:a5 indexBuffer:a6 indexBufferLength:a7];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(unint64_t)a6 indexBufferLength:(unint64_t)a7 instanceCount:(unint64_t)a8
{
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  [(MTL4DebugRenderCommandEncoder *)self _validateIndexedDrawCommon:v17 indexBuffer:a6 indexType:a5 indexBufferLength:a7];
  [(MTL4DebugRenderCommandEncoder *)self _validateDrawCommon:v17 primitiveType:a3 instanceCount:a8];
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v16.receiver = self;
  v16.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v16 drawIndexedPrimitives:a3 indexCount:a4 indexType:a5 indexBuffer:a6 indexBufferLength:a7 instanceCount:a8];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(unint64_t)a6 indexBufferLength:(unint64_t)a7 instanceCount:(unint64_t)a8 baseVertex:(int64_t)a9 baseInstance:(unint64_t)a10
{
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  [(MTL4DebugRenderCommandEncoder *)self _validateIndexedDrawCommon:v19 indexBuffer:a6 indexType:a5 indexBufferLength:a7];
  [(MTL4DebugRenderCommandEncoder *)self _validateDrawCommon:v19 primitiveType:a3 instanceCount:a8];
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v18.receiver = self;
  v18.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v18 drawIndexedPrimitives:a3 indexCount:a4 indexType:a5 indexBuffer:a6 indexBufferLength:a7 instanceCount:a8 baseVertex:a9 baseInstance:a10];
}

- (void)drawPrimitives:(unint64_t)a3 indirectBuffer:(unint64_t)a4
{
  if (MTLReportFailureTypeEnabled())
  {
    [(MTLToolsObject *)self->super.super.super._device originalObject];
    MTLValidateFeatureSupport();
  }

  v9 = 0;
  memset(&v8[1], 0, 48);
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
    if (a4)
    {
      goto LABEL_5;
    }

LABEL_7:
    _MTLMessageContextPush_();
    goto LABEL_5;
  }

  if (!a4)
  {
    goto LABEL_7;
  }

LABEL_5:
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v8[0].receiver = self;
  v8[0].super_class = MTL4DebugRenderCommandEncoder;
  [(objc_super *)v8 drawPrimitives:a3 indirectBuffer:a4];
}

- (void)drawIndexedPrimitives:(unint64_t)a3 indexType:(unint64_t)a4 indexBuffer:(unint64_t)a5 indexBufferLength:(unint64_t)a6 indirectBuffer:(unint64_t)a7
{
  if (MTLReportFailureTypeEnabled())
  {
    [(MTLToolsObject *)self->super.super.super._device originalObject];
    MTLValidateFeatureSupport();
  }

  v15 = 0;
  memset(&v14[1], 0, 48);
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
    if (a7)
    {
      goto LABEL_5;
    }

LABEL_7:
    _MTLMessageContextPush_();
    goto LABEL_5;
  }

  if (!a7)
  {
    goto LABEL_7;
  }

LABEL_5:
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v14[0].receiver = self;
  v14[0].super_class = MTL4DebugRenderCommandEncoder;
  [(objc_super *)v14 drawIndexedPrimitives:a3 indexType:a4 indexBuffer:a5 indexBufferLength:a6 indirectBuffer:a7];
}

- (void)executeCommandsInBuffer:(id)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  v16.length = [a3 size];
  v15.location = location;
  v15.length = length;
  v16.location = 0;
  v9 = NSIntersectionRange(v15, v16);
  if (v9.location != location || v9.length != length)
  {
    [a3 size];
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v10.receiver = self;
  v10.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v10 executeCommandsInBuffer:a3 withRange:location, length];
}

- (void)executeCommandsInBuffer:(id)a3 indirectBuffer:(unint64_t)a4
{
  v9 = 0;
  memset(&v8[1], 0, 48);
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    _MTLMessageContextPush_();
    goto LABEL_3;
  }

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v8[0].receiver = self;
  v8[0].super_class = MTL4DebugRenderCommandEncoder;
  [(objc_super *)v8 executeCommandsInBuffer:a3 indirectBuffer:a4];
}

- (void)setObjectThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4
{
  if (MTLReportFailureTypeEnabled())
  {
    [(MTLToolsObject *)self->super.super.super._device originalObject];
    MTLValidateFeatureSupport();
  }

  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes]<= a4)
  {
    v10 = a4;
    v13 = [(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes];
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxThreadgroupMemoryLength:v10]< a3)
  {
    v11 = a3;
    v14 = [(MTLToolsDevice *)self->super.super.super._device maxThreadgroupMemoryLength];
    _MTLMessageContextPush_();
  }

  if (a3 % [(MTLToolsDevice *)self->super.super.super._device maxComputeThreadgroupMemoryAlignmentBytes:v11])
  {
    v12 = a3;
    v15 = [(MTLToolsDevice *)self->super.super.super._device maxComputeThreadgroupMemoryAlignmentBytes];
    _MTLMessageContextPush_();
  }

  if (!v17)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v8 = &self->_currentObjectThreadgroupMemoryLengths[a4];
      if (v8->isValid && !v8->hasBeenUsed)
      {
        v12 = a4;
        MTLReportFailure();
      }
    }
  }

  _MTLMessageContextEnd();
  v9 = &self->_currentObjectThreadgroupMemoryLengths[a4];
  if (MTLReportFailureTypeEnabled() && !v9->hasLodClamp && !v9->threadgroupMemoryOffset && v9->threadgroupMemoryLength == a3 && v9->bufferAttributeStride == -1 && v9->type == 3 && !v9->object && !(v9->bufferLength | v9->var0 | v9->bufferOffset) && !*&v9->lodMinClamp)
  {
    [MTL4DebugComputeCommandEncoder setThreadgroupMemoryLength:atIndex:];
  }

  v9->isValid = a3 != 0;
  v9->hasBeenUsed = 0;
  v9->type = 3;
  *&v9->object = 0u;
  *&v9->bufferLength = 0u;
  v9->bufferAttributeStride = -1;
  v9->threadgroupMemoryLength = a3;
  v9->threadgroupMemoryOffset = 0;
  v9->hasLodClamp = 0;
  v9->lodMinClamp = 0.0;
  v9->lodMaxClamp = 0.0;
  v16.receiver = self;
  v16.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v16 setObjectThreadgroupMemoryLength:a3 atIndex:a4, v12, v15];
}

- (void)_validateThreadgroupSize:(id *)a3 stage:(unint64_t)a4 context:(_MTLMessageContext *)a5
{
  v8 = [(MTLRenderPipelineState *)self->_currentRenderPipelineState meshDescriptor];
  v9 = v8;
  if (a4 == 16)
  {
    if (![v8 meshFunction])
    {
      return;
    }

    v10 = [(MTLRenderPipelineState *)self->_currentRenderPipelineState maxTotalThreadsPerMeshThreadgroup];
    v11 = [v9 meshThreadgroupSizeIsMultipleOfThreadExecutionWidth];
    v12 = [(MTLRenderPipelineState *)self->_currentRenderPipelineState meshThreadExecutionWidth];
  }

  else
  {
    if (a4 != 8 || ![v8 objectFunction])
    {
      return;
    }

    v10 = [(MTLRenderPipelineState *)self->_currentRenderPipelineState maxTotalThreadsPerObjectThreadgroup];
    v11 = [v9 objectThreadgroupSizeIsMultipleOfThreadExecutionWidth];
    v12 = [(MTLRenderPipelineState *)self->_currentRenderPipelineState objectThreadExecutionWidth];
  }

  var1 = a3->var1;
  var2 = a3->var2;
  v15 = var1 * a3->var0 * var2;
  if (v15 > v10)
  {
    v19 = a3->var2;
    v21 = var1 * a3->var0 * var2;
    v18 = a3->var1;
    _MTLMessageContextPush_();
  }

  if (v12)
  {
    v16 = v11;
  }

  else
  {
    v16 = 0;
  }

  if (v16 == 1)
  {
    if (v15 % v12)
    {
      v20 = a3->var2;
      v17 = *&a3->var0;
      _MTLMessageContextPush_();
    }
  }
}

- (void)_validateThreadsPerObjectThreadgroup:(id *)a3 threadsPerMeshThreadgroup:(id *)a4 context:(_MTLMessageContext *)a5
{
  v11 = *a3;
  [(MTL4DebugRenderCommandEncoder *)self _validateThreadgroupSize:&v11 stage:8 context:?];
  v11 = *a4;
  [(MTL4DebugRenderCommandEncoder *)self _validateThreadgroupSize:&v11 stage:16 context:a5];
  v11 = *a3;
  currentRenderPipelineState = self->_currentRenderPipelineState;
  if (currentRenderPipelineState)
  {
    [(MTLRenderPipelineState *)currentRenderPipelineState requiredThreadsPerObjectThreadgroup];
  }

  validateDispatchThreadsPerThreadgroupWithRTPTG();
  v11 = *a4;
  v10 = self->_currentRenderPipelineState;
  if (v10)
  {
    [(MTLRenderPipelineState *)v10 requiredThreadsPerMeshThreadgroup];
  }

  validateDispatchThreadsPerThreadgroupWithRTPTG();
}

- (void)drawMeshThreadgroups:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  if (MTLReportFailureTypeEnabled())
  {
    [(MTLToolsObject *)self->super.super.super._device originalObject];
    MTLValidateFeatureSupport();
  }

  v18 = 0;
  memset(v17, 0, sizeof(v17));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  [(MTL4DebugRenderCommandEncoder *)self _validateMeshDrawCommon:v17];
  v15 = *&a4->var0;
  var2 = a4->var2;
  v13 = *&a5->var0;
  v14 = a5->var2;
  [(MTL4DebugRenderCommandEncoder *)self _validateThreadsPerObjectThreadgroup:&v15 threadsPerMeshThreadgroup:&v13 context:v17];
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v15 = *&a3->var0;
  var2 = a3->var2;
  v13 = *&a4->var0;
  v14 = a4->var2;
  v11 = *&a5->var0;
  v12 = a5->var2;
  v10.receiver = self;
  v10.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v10 drawMeshThreadgroups:&v15 threadsPerObjectThreadgroup:&v13 threadsPerMeshThreadgroup:&v11];
}

- (void)drawMeshThreads:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  if (MTLReportFailureTypeEnabled())
  {
    [(MTLToolsObject *)self->super.super.super._device originalObject];
    MTLValidateFeatureSupport();
  }

  v18 = 0;
  memset(v17, 0, sizeof(v17));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  [(MTL4DebugRenderCommandEncoder *)self _validateMeshDrawCommon:v17];
  v15 = *&a4->var0;
  var2 = a4->var2;
  v13 = *&a5->var0;
  v14 = a5->var2;
  [(MTL4DebugRenderCommandEncoder *)self _validateThreadsPerObjectThreadgroup:&v15 threadsPerMeshThreadgroup:&v13 context:v17];
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v15 = *&a3->var0;
  var2 = a3->var2;
  v13 = *&a4->var0;
  v14 = a4->var2;
  v11 = *&a5->var0;
  v12 = a5->var2;
  v10.receiver = self;
  v10.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v10 drawMeshThreads:&v15 threadsPerObjectThreadgroup:&v13 threadsPerMeshThreadgroup:&v11];
}

- (void)drawMeshThreadgroupsWithIndirectBuffer:(unint64_t)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  if (MTLReportFailureTypeEnabled())
  {
    [(MTLToolsObject *)self->super.super.super._device originalObject];
    MTLValidateFeatureSupport();
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (!a3)
  {
    _MTLMessageContextPush_();
  }

  [(MTL4DebugRenderCommandEncoder *)self _validateMeshDrawCommon:v15];
  v13 = *&a4->var0;
  var2 = a4->var2;
  v11 = *&a5->var0;
  v12 = a5->var2;
  [(MTL4DebugRenderCommandEncoder *)self _validateThreadsPerObjectThreadgroup:&v13 threadsPerMeshThreadgroup:&v11 context:v15];
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v13 = *&a4->var0;
  var2 = a4->var2;
  v11 = *&a5->var0;
  v12 = a5->var2;
  v10.receiver = self;
  v10.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v10 drawMeshThreadgroupsWithIndirectBuffer:a3 threadsPerObjectThreadgroup:&v13 threadsPerMeshThreadgroup:&v11];
}

- (void)dispatchThreadsPerTile:(id *)a3
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  v7 = *a3;
  [(MTL4DebugRenderCommandEncoder *)self _validateDispatchThreadsPerTileCommon:v8 threadsPerTile:&v7];
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDispatch];
  v7 = *a3;
  v6.receiver = self;
  v6.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v6 dispatchThreadsPerTile:&v7];
}

- (void)setThreadgroupMemoryLength:(unint64_t)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes]<= a5)
  {
    v12 = a5;
    v16 = [(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes];
    _MTLMessageContextPush_();
  }

  if (a4 + a3 > [(MTLToolsDevice *)self->super.super.super._device maxThreadgroupMemoryLength:v12])
  {
    v17 = a3;
    v20 = [(MTLToolsDevice *)self->super.super.super._device maxThreadgroupMemoryLength];
    v13 = a4;
    _MTLMessageContextPush_();
  }

  if (a3 % [(MTLToolsDevice *)self->super.super.super._device maxComputeThreadgroupMemoryAlignmentBytes:v13])
  {
    v14 = a3;
    v18 = [(MTLToolsDevice *)self->super.super.super._device maxComputeThreadgroupMemoryAlignmentBytes];
    _MTLMessageContextPush_();
  }

  if (a4 % [(MTLToolsDevice *)self->super.super.super._device maxComputeThreadgroupMemoryAlignmentBytes:v14])
  {
    v15 = a4;
    v19 = [(MTLToolsDevice *)self->super.super.super._device maxComputeThreadgroupMemoryAlignmentBytes];
    _MTLMessageContextPush_();
  }

  if (!v22)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v10 = &self->_currentThreadgroupMemoryArguments[a5];
      if (v10->isValid && !v10->hasBeenUsed)
      {
        v15 = a5;
        MTLReportFailure();
      }
    }
  }

  _MTLMessageContextEnd();
  v11 = &self->_currentThreadgroupMemoryArguments[a5];
  if (MTLReportFailureTypeEnabled() && !v11->hasLodClamp && v11->threadgroupMemoryOffset == a4 && v11->threadgroupMemoryLength == a3 && v11->bufferAttributeStride == -1 && v11->type == 3 && !v11->object && !(v11->bufferLength | v11->var0 | v11->bufferOffset) && !*&v11->lodMinClamp)
  {
    [MTL4DebugComputeCommandEncoder setThreadgroupMemoryLength:atIndex:];
  }

  v11->isValid = a3 != 0;
  v11->hasBeenUsed = 0;
  v11->type = 3;
  *&v11->object = 0u;
  *&v11->bufferLength = 0u;
  v11->bufferAttributeStride = -1;
  v11->threadgroupMemoryLength = a3;
  v11->threadgroupMemoryOffset = a4;
  v11->hasLodClamp = 0;
  v11->lodMinClamp = 0.0;
  v11->lodMaxClamp = 0.0;
  v21.receiver = self;
  v21.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v21 setThreadgroupMemoryLength:a3 offset:a4 atIndex:a5, v15, v19];
}

- (void)setArgumentTable:(id)a3 atStages:(unint64_t)a4
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else if (!a3)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (a4 >= 0x20)
  {
    v8 = a4;
    _MTLMessageContextPush_();
  }

LABEL_7:
  _MTLMessageContextEnd();
  if (a4)
  {
    self->_currentVertexArgumentTable = a3;
    if ((a4 & 2) == 0)
    {
LABEL_9:
      if ((a4 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }
  }

  else if ((a4 & 2) == 0)
  {
    goto LABEL_9;
  }

  self->_currentFragmentArgumentTable = a3;
  if ((a4 & 4) == 0)
  {
LABEL_10:
    if ((a4 & 8) == 0)
    {
      goto LABEL_11;
    }

LABEL_17:
    self->_currentObjectArgumentTable = a3;
    if ((a4 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_16:
  self->_currentTileArgumentTable = a3;
  if ((a4 & 8) != 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  if ((a4 & 0x10) != 0)
  {
LABEL_12:
    self->_currentMeshArgumentTable = a3;
  }

LABEL_13:
  v9.receiver = self;
  v9.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v9 setArgumentTable:a3 atStages:a4, v8];
}

- (void)setFrontFacingWinding:(unint64_t)a3
{
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (a3 >= 2)
  {
    _MTLMessageContextPush_();
  }

  encoderState = self->_encoderState;
  if ((*&encoderState & 0x1000) != 0)
  {
    if ((*&encoderState & 0x2000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 0x2000000) == 0)
    {
      goto LABEL_9;
    }
  }

  if (self->_currentFrontFacingWinding == a3)
  {
    [MTL4DebugRenderCommandEncoder setFrontFacingWinding:a3];
  }

LABEL_9:
  _MTLMessageContextEnd();
  v7.receiver = self;
  v7.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v7 setFrontFacingWinding:a3];
}

- (void)setLineWidth:(float)a3
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (a3 < 1.0 || a3 > 16.0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v8.receiver = self;
  v8.super_class = MTL4DebugRenderCommandEncoder;
  *&v7 = a3;
  [(MTL4ToolsRenderCommandEncoder *)&v8 setLineWidth:v7];
}

- (void)setDepthClipModeSPI:(unint64_t)a3
{
  if (MTLReportFailureTypeEnabled())
  {
    [(MTLToolsObject *)self->super.super.super._device originalObject];
    MTLValidateFeatureSupport();
  }

  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (a3 >= 2)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v6.receiver = self;
  v6.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v6 setDepthClipModeSPI:a3];
}

- (void)setCommandDataCorruptModeSPI:(unint64_t)a3
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (a3 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v6.receiver = self;
  v6.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v6 setCommandDataCorruptModeSPI:a3];
}

- (void)dispatchThreadsPerTile:(id *)a3 inRegion:(id *)a4
{
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  v11 = *&a3->var0;
  *&v12 = a3->var2;
  [(MTL4DebugRenderCommandEncoder *)self _validateDispatchThreadsPerTileCommon:v16 threadsPerTile:&v11];
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDispatch];
  v8 = *&a3->var0;
  var2 = a3->var2;
  v9 = *&a4->var0.var2;
  v11 = *&a4->var0.var0;
  v12 = v9;
  v13 = *&a4->var1.var1;
  v14 = v8;
  v10.receiver = self;
  v10.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v10 dispatchThreadsPerTile:&v14 inRegion:&v11];
}

- (void)setVertexAmplificationMode:(unint64_t)a3 value:(unint64_t)a4
{
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (a3 >= 2)
  {
    v10 = a3;
    _MTLMessageContextPush_();
  }

  v8 = vcnt_s8(a4);
  v8.i16[0] = vaddlv_u8(v8);
  if (a3 == 1)
  {
    v9 = v8.u32[0];
  }

  else
  {
    v9 = a4;
  }

  if (!v9 || v9 > [(MTLToolsDevice *)self->super.super.super._device maxVertexAmplificationFactor])
  {
    [(MTLToolsDevice *)self->super.super.super._device maxVertexAmplificationFactor];
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v11.receiver = self;
  v11.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v11 setVertexAmplificationMode:a3 value:a4];
}

- (void)_validateLBRT:(_MTLMessageContext *)a3
{
  for (i = 0; i != 8; ++i)
  {
    v5 = [objc_msgSend(objc_msgSend(-[MTLRenderPipelineState descriptor](self->_currentRenderPipelineState descriptor];
    if (v5)
    {
      v6 = v5;
      v7 = [(MTL4RenderPassDescriptor *)self->_descriptor colorAttachments];
      colorAttachmentMap = self->_colorAttachmentMap;
      v9 = i;
      if (colorAttachmentMap)
      {
        v9 = [(MTLLogicalToPhysicalColorAttachmentMap *)colorAttachmentMap getPhysicalIndexForLogicalIndex:i];
      }

      if (v6 != [objc_msgSend(objc_msgSend(v7 objectAtIndexedSubscript:{v9), "texture"), "pixelFormat"}])
      {
        Name = MTLPixelFormatGetName();
        v11 = MTLPixelFormatGetName();
        _MTLMessageContextPush_();
      }
    }
  }
}

- (void)_validateIndexedDrawCommon:(_MTLMessageContext *)a3 indexBuffer:(unint64_t)a4 indexType:(unint64_t)a5 indexBufferLength:(unint64_t)a6
{
  if (!a4)
  {
    _MTLMessageContextPush_();
  }

  v8 = _MTLDebugIndexTypeSize(a5);
  if (v8)
  {
    if (a6 % v8)
    {
      _MTLMessageContextPush_();
    }
  }
}

- (void)_validateDrawCommon:(_MTLMessageContext *)a3 primitiveType:(unint64_t)a4 instanceCount:(unint64_t)a5
{
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ((*(&self->_encoderState + 1) & 0x20) != 0 && (currentRenderPipelineState = self->_currentRenderPipelineState) != 0 || (_MTLMessageContextPush_(), (currentRenderPipelineState = self->_currentRenderPipelineState) != 0))
  {
    if (![(MTLRenderPipelineState *)currentRenderPipelineState descriptor]&& ![(MTLRenderPipelineState *)currentRenderPipelineState mtl4Descriptor])
    {
      _MTLMessageContextPush_();
    }

    if ([-[MTLRenderPipelineState descriptor](self->_currentRenderPipelineState "descriptor")] == 1)
    {
      [(MTL4DebugRenderCommandEncoder *)self _validateLBRT:a3];
    }
  }

  if (!a5)
  {
    _MTLMessageContextPush_();
  }

  _MTLDebugValidateMTLPrimitiveTypeWithContext(a4, 0);
  v10 = [(MTL4RenderPassDescriptor *)self->_descriptor rasterizationRateMap];
  if (a4 - 5 <= 0xFFFFFFFFFFFFFFFDLL && v10)
  {
    _MTLMessageContextPush_();
  }

  v11 = self->_currentScissorRects.__end_ - self->_currentScissorRects.__begin_;
  if (v11 != 32 && 0xAAAAAAAAAAAAAAABLL * ((self->_currentViewports.__end_ - self->_currentViewports.__begin_) >> 4) != v11 >> 5)
  {
    _MTLMessageContextPush_();
  }

  if (!a3->var0)
  {

    [(MTL4DebugRenderCommandEncoder *)self _validateFunctionArguments:a3 stages:3];
  }
}

- (void)_validateMeshDrawCommon:(_MTLMessageContext *)a3
{
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ((*(&self->_encoderState + 1) & 0x20) != 0 && (currentRenderPipelineState = self->_currentRenderPipelineState) != 0 || (_MTLMessageContextPush_(), (currentRenderPipelineState = self->_currentRenderPipelineState) != 0))
  {
    if (![(MTLRenderPipelineState *)currentRenderPipelineState meshDescriptor]&& ![(MTLRenderPipelineState *)currentRenderPipelineState mtl4MeshDescriptor])
    {
      _MTLMessageContextPush_();
    }
  }

  v6 = self->_currentScissorRects.__end_ - self->_currentScissorRects.__begin_;
  if (v6 != 32 && 0xAAAAAAAAAAAAAAABLL * ((self->_currentViewports.__end_ - self->_currentViewports.__begin_) >> 4) != v6 >> 5)
  {
    _MTLMessageContextPush_();
  }

  if (!a3->var0)
  {

    [(MTL4DebugRenderCommandEncoder *)self _validateFunctionArguments:a3 stages:26];
  }
}

- (void)_validateDispatchThreadsPerTileCommon:(_MTLMessageContext *)a3 threadsPerTile:(id *)a4
{
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ((*(&self->_encoderState + 1) & 0x20) != 0 && (p_currentRenderPipelineState = &self->_currentRenderPipelineState, (currentRenderPipelineState = self->_currentRenderPipelineState) != 0) || (_MTLMessageContextPush_(), p_currentRenderPipelineState = &self->_currentRenderPipelineState, (currentRenderPipelineState = self->_currentRenderPipelineState) != 0))
  {
    if (![(MTLRenderPipelineState *)currentRenderPipelineState tileDescriptor]&& ![(MTLRenderPipelineState *)currentRenderPipelineState mtl4TileDescriptor])
    {
      _MTLMessageContextPush_();
    }
  }

  if (!a3->var0)
  {
    if ([(MTLRenderPipelineState *)*p_currentRenderPipelineState threadgroupSizeMatchesTileSize])
    {
      var0 = a4->var0;
      if (var0 != [(MTL4RenderPassDescriptor *)self->_descriptor tileWidth]|| (var1 = a4->var1, var1 != [(MTL4RenderPassDescriptor *)self->_descriptor tileHeight]))
      {
        [MTL4DebugRenderCommandEncoder _validateDispatchThreadsPerTileCommon:a4 threadsPerTile:&self->_descriptor];
      }
    }

    if (![(MTLToolsDevice *)self->super.super.super._device supportsNonSquareTileShaders]&& ([(MTLRenderPipelineState *)*p_currentRenderPipelineState threadgroupSizeMatchesTileSize]& 1) == 0)
    {
      v11 = a4->var0;
      if (v11 != [(MTL4RenderPassDescriptor *)self->_descriptor tileWidth]|| (v12 = a4->var1, v12 != [(MTL4RenderPassDescriptor *)self->_descriptor tileHeight]))
      {
        if (a4->var0 != a4->var1)
        {
          v17 = a4->var0;
          v18 = a4->var1;
          v15 = a4->var0;
          v16 = v18;
          _MTLMessageContextPush_();
        }
      }
    }

    v13 = vaddq_s64(vandq_s8(*&a4->var0, vdupq_n_s64(1uLL)), *&a4->var0);
    v14 = a4->var2 * v13.i64[0] * v13.i64[1];
    if (v14 > [(MTLRenderPipelineState *)*p_currentRenderPipelineState maxTotalThreadsPerThreadgroup:v15])
    {
      [(MTL4DebugRenderCommandEncoder *)a4 _validateDispatchThreadsPerTileCommon:p_currentRenderPipelineState threadsPerTile:?];
    }

    v19 = *&a4->var0;
    var2 = a4->var2;
    if (*p_currentRenderPipelineState)
    {
      [(MTLRenderPipelineState *)*p_currentRenderPipelineState requiredThreadsPerTileThreadgroup];
    }

    validateDispatchThreadsPerThreadgroupWithRTPTG();
    [(MTL4DebugRenderCommandEncoder *)self _validateFunctionArguments:a3 stages:4];
  }
}

- (void)_resetEncoderWithDescriptor:(id)a3
{
  self->_currentVertexArgumentTable = 0;
  self->_currentFragmentArgumentTable = 0;
  self->_currentTileArgumentTable = 0;
  self->_currentObjectArgumentTable = 0;
  self->_currentMeshArgumentTable = 0;
  bzero(self->_currentThreadgroupMemoryArguments, 0xAA8uLL);
  bzero(self->_currentObjectThreadgroupMemoryLengths, 0xAA8uLL);
  self->_currentRenderPipelineState = 0;
  self->_currentDepthStencilState = 0;
  self->_encoderState = (*&self->_encoderState & 0xFC820010 | 0x1FEF);
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder resetEncoderState];

  self->_descriptor = [a3 copy];
  [a3 validate:self->super.super.super._device width:&self->_width height:&self->_height];
  v5 = [(MTL4RenderPassDescriptor *)self->_descriptor rasterizationRateMap];
  if (v5)
  {
    v6 = v5;
    v7 = [(MTL4RenderPassDescriptor *)self->_descriptor renderTargetWidth];
    v8 = [(MTL4RenderPassDescriptor *)self->_descriptor renderTargetHeight];
    v9 = v8;
    if (v7)
    {
      if (v8)
      {
LABEL_4:
        self->_width = v7;
        self->_height = v9;
        goto LABEL_5;
      }
    }

    else
    {
      [v6 screenSize];
      v7 = v40;
      if (v9)
      {
        goto LABEL_4;
      }
    }

    [v6 screenSize];
    v9 = v41;
    goto LABEL_4;
  }

LABEL_5:
  self->_unknownStoreActions = 0;
  v10 = [(MTL4RenderPassDescriptor *)self->_descriptor colorAttachments];
  for (i = 0; i != 10; ++i)
  {
    v12 = [v10 _descriptorAtIndex:i];
    if ([v12 texture] && objc_msgSend(v12, "storeAction") == 4)
    {
      self->_unknownStoreActions |= 1 << i;
    }
  }

  v13 = [(MTL4RenderPassDescriptor *)self->_descriptor colorAttachments];
  v14 = 0;
  while (1)
  {
    v15 = [objc_msgSend(v13 _descriptorAtIndex:{v14), "texture"}];
    if (v15)
    {
      break;
    }

    if (++v14 == 8)
    {
      v16 = 0;
      goto LABEL_15;
    }
  }

  v16 = [v15 sampleCount];
LABEL_15:
  v17 = [(MTL4RenderPassDescriptor *)self->_descriptor depthAttachment];
  v18 = [(MTL4RenderPassDescriptor *)self->_descriptor stencilAttachment];
  v19 = [v17 texture];
  v20 = [v18 texture];
  if (v19)
  {
    v20 = v19;
  }

  v21 = [v20 sampleCount];
  if ([(MTLToolsDevice *)self->super.super.super._device supportsRenderPassWithoutRenderTarget])
  {
    if (v16)
    {
      if (v21)
      {
LABEL_20:
        if (v21)
        {
          v22 = v21;
        }

        else
        {
          v22 = v16;
        }

        if (v16)
        {
          v21 = v22;
        }

        else
        {
          v16 = v21;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v37 = [(MTL4RenderPassDescriptor *)self->_descriptor defaultColorSampleCount];
      descriptor = self->_descriptor;
      if (v37)
      {
        v39 = [(MTL4RenderPassDescriptor *)descriptor defaultColorSampleCount];
      }

      else
      {
        v39 = [(MTL4RenderPassDescriptor *)descriptor defaultRasterSampleCount];
      }

      v16 = v39;
      if (v21)
      {
        goto LABEL_20;
      }
    }

    v21 = [(MTL4RenderPassDescriptor *)self->_descriptor defaultRasterSampleCount];
    goto LABEL_20;
  }

LABEL_26:
  self->_resolvedColorSampleCount = v16;
  self->_resolvedRasterSampleCount = v21;
  width = self->_width;
  height = self->_height;
  begin = self->_currentViewports.__begin_;
  self->_currentViewports.__end_ = begin;
  cap = self->_currentViewports.__cap_;
  if (begin >= cap)
  {
    v27 = 0xAAAAAAAAAAAAAAABLL * ((cap - begin) >> 4);
    v28 = 2 * v27;
    if (2 * v27 <= 1)
    {
      v28 = 1;
    }

    if (v27 >= 0x2AAAAAAAAAAAAAALL)
    {
      v29 = 0x555555555555555;
    }

    else
    {
      v29 = v28;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLViewport>>(&self->_currentViewports, v29);
  }

  *begin = 0;
  *(begin + 1) = 0;
  *(begin + 2) = width;
  *(begin + 3) = height;
  *(begin + 2) = xmmword_22E27C190;
  self->_currentViewports.__end_ = (begin + 48);
  self->_currentVertexAmplificationCount = 1;
  self->_currentCullMode = 0;
  self->_currentDepthClipMode = 0;
  self->_currentDepthBias = 0.0;
  self->_currentDepthTestMinBound = 0.0;
  self->_currentDepthTestMaxBound = 1.0;
  self->_currentDepthSlopeScale = 0.0;
  self->_currentDepthClamp = 0.0;
  v30 = self->_width;
  v31 = self->_height;
  v32 = self->_currentScissorRects.__begin_;
  self->_currentScissorRects.__end_ = v32;
  v33 = self->_currentScissorRects.__cap_;
  if (v32 >= v33)
  {
    v34 = v33 - v32;
    v35 = v34 >> 4;
    if ((v34 >> 4) <= 1)
    {
      v35 = 1;
    }

    if (v34 >= 0x7FFFFFFFFFFFFFE0)
    {
      v36 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v36 = v35;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLScissorRect>>(&self->_currentScissorRects, v36);
  }

  *v32 = 0;
  *(v32 + 1) = 0;
  *(v32 + 2) = v30;
  *(v32 + 3) = v31;
  self->_currentScissorRects.__end_ = (v32 + 32);
  self->_currentTriangleFillMode = 0;
  self->_currentBlendColorRed = 0.0;
  self->_currentBlendColorGreen = 0.0;
  self->_currentBlendColorBlue = 0.0;
  self->_currentBlendColorAlpha = 0.0;
  self->_currentStencilFrontReferenceValue = 0;
  self->_currentStencilBackReferenceValue = 0;
  self->_currentVisibilityResultMode = 0;
  self->_currentVisibilityResultModeOffset = 0;
  std::__tree<unsigned int>::destroy(&self->_allVisibilityOffsets, self->_allVisibilityOffsets.__tree_.__end_node_.__left_);
  self->_allVisibilityOffsets.__tree_.__begin_node_ = &self->_allVisibilityOffsets.__tree_.__end_node_;
  self->_allVisibilityOffsets.__tree_.__size_ = 0;
  self->_allVisibilityOffsets.__tree_.__end_node_.__left_ = 0;
  self->_currentFrontFacingWinding = 0;
}

- (void)_validateFunctionArguments:(_MTLMessageContext *)a3 stages:(unint64_t)a4
{
  if (a4 == 26)
  {
    v14 = [(MTLRenderPipelineState *)self->_currentRenderPipelineState meshDescriptor];
    v15 = [(MTLRenderPipelineState *)self->_currentRenderPipelineState mtl4MeshDescriptor];
    if (v14)
    {
      v16 = [objc_msgSend(v14 "objectFunction")];
      v17 = [objc_msgSend(v14 "meshFunction")];
      v18 = [objc_msgSend(v14 "fragmentFunction")];
    }

    else
    {
      v28 = v15;
      v16 = _MTL4DebugFunctionDescriptorName([v15 objectFunctionDescriptor]);
      v17 = _MTL4DebugFunctionDescriptorName([v28 meshFunctionDescriptor]);
      v18 = _MTL4DebugFunctionDescriptorName([v28 fragmentFunctionDescriptor]);
    }

    v29 = v18;
    v30 = [(MTLRenderPipelineState *)self->_currentRenderPipelineState validationReflection];
    LOBYTE(v38) = 0;
    -[MTL4DebugCommandEncoder validateFunctionArguments:stage:functionName:argumentTable:boundThreadgroupMemoryArguments:bindings:allowNullBufferBindings:](self->_debugCommandEncoder, "validateFunctionArguments:stage:functionName:argumentTable:boundThreadgroupMemoryArguments:bindings:allowNullBufferBindings:", a3, @"Object", v16, self->_currentObjectArgumentTable, self->_currentObjectThreadgroupMemoryLengths, [v30 objectBindings], v38);
    LOBYTE(v39) = 0;
    -[MTL4DebugCommandEncoder validateFunctionArguments:stage:functionName:argumentTable:boundThreadgroupMemoryArguments:bindings:allowNullBufferBindings:](self->_debugCommandEncoder, "validateFunctionArguments:stage:functionName:argumentTable:boundThreadgroupMemoryArguments:bindings:allowNullBufferBindings:", a3, @"Mesh", v17, self->_currentMeshArgumentTable, 0, [v30 meshBindings], v39);
    debugCommandEncoder = self->_debugCommandEncoder;
    currentFragmentArgumentTable = self->_currentFragmentArgumentTable;
    v22 = [v30 fragmentBindings];
    LOBYTE(v38) = 0;
    v23 = @"Fragment";
    currentThreadgroupMemoryArguments = self->_currentThreadgroupMemoryArguments;
    v25 = debugCommandEncoder;
    v26 = a3;
    v27 = v29;
    v33 = currentFragmentArgumentTable;
  }

  else
  {
    if (a4 == 4)
    {
      v10 = [(MTLRenderPipelineState *)self->_currentRenderPipelineState tileDescriptor];
      v11 = [(MTLRenderPipelineState *)self->_currentRenderPipelineState mtl4TileDescriptor];
      v12 = [(MTLRenderPipelineState *)self->_currentRenderPipelineState validationReflection];
      if (v10)
      {
        v13 = [objc_msgSend(v10 "tileFunction")];
      }

      else
      {
        v13 = _MTL4DebugFunctionDescriptorName([v11 tileFunctionDescriptor]);
      }

      v19 = v13;
      v20 = self->_debugCommandEncoder;
      currentTileArgumentTable = self->_currentTileArgumentTable;
      v22 = [v12 tileBindings];
      LOBYTE(v38) = 0;
      v23 = @"Tile";
      currentThreadgroupMemoryArguments = self->_currentThreadgroupMemoryArguments;
      v25 = v20;
      v26 = a3;
      v27 = v19;
    }

    else
    {
      if (a4 != 3)
      {
        return;
      }

      v6 = [(MTLRenderPipelineState *)self->_currentRenderPipelineState descriptor];
      v7 = [(MTLRenderPipelineState *)self->_currentRenderPipelineState mtl4Descriptor];
      if (v6)
      {
        v8 = [objc_msgSend(v6 "vertexFunction")];
        v9 = [objc_msgSend(v6 "fragmentFunction")];
      }

      else
      {
        v34 = v7;
        v8 = _MTL4DebugFunctionDescriptorName([v7 vertexFunctionDescriptor]);
        v9 = _MTL4DebugFunctionDescriptorName([v34 fragmentFunctionDescriptor]);
      }

      v35 = v9;
      v36 = [(MTLRenderPipelineState *)self->_currentRenderPipelineState validationReflection];
      LOBYTE(v38) = 0;
      -[MTL4DebugCommandEncoder validateFunctionArguments:stage:functionName:argumentTable:boundThreadgroupMemoryArguments:bindings:allowNullBufferBindings:](self->_debugCommandEncoder, "validateFunctionArguments:stage:functionName:argumentTable:boundThreadgroupMemoryArguments:bindings:allowNullBufferBindings:", a3, @"Vertex", v8, self->_currentVertexArgumentTable, self->_currentThreadgroupMemoryArguments, [v36 vertexBindings], v38);
      v37 = self->_debugCommandEncoder;
      currentTileArgumentTable = self->_currentFragmentArgumentTable;
      v22 = [v36 fragmentBindings];
      LOBYTE(v38) = 0;
      v23 = @"Fragment";
      currentThreadgroupMemoryArguments = self->_currentThreadgroupMemoryArguments;
      v25 = v37;
      v26 = a3;
      v27 = v35;
    }

    v33 = currentTileArgumentTable;
  }

  [(MTL4DebugCommandEncoder *)v25 validateFunctionArguments:v26 stage:v23 functionName:v27 argumentTable:v33 boundThreadgroupMemoryArguments:currentThreadgroupMemoryArguments bindings:v22 allowNullBufferBindings:v38];
}

- (void)_validateFramebufferCompatibility:(_MTLMessageContext *)a3 pipelineState:(id)a4
{
  v6 = *(a4 + 8);
  v7 = v6;
  v8 = v6;
  if ([(MTLToolsDevice *)self->super.super.super._device supportsRenderPassWithoutRenderTarget])
  {
    v9 = [objc_msgSend(a4 "descriptor")];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v6;
    }

    v11 = [objc_msgSend(a4 "descriptor")];
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    v13 = [objc_msgSend(a4 "meshDescriptor")];
    if (v13)
    {
      v10 = v13;
    }

    v14 = [objc_msgSend(a4 "meshDescriptor")];
    if (v14)
    {
      v12 = v14;
    }

    v15 = [objc_msgSend(a4 "mtl4Descriptor")];
    if (v15)
    {
      v10 = v15;
    }

    v16 = [objc_msgSend(a4 "mtl4Descriptor")];
    if (v16)
    {
      v12 = v16;
    }

    v17 = [objc_msgSend(a4 "mtl4MeshDescriptor")];
    if (v17)
    {
      v7 = v17;
    }

    else
    {
      v7 = v10;
    }

    v18 = [objc_msgSend(a4 "mtl4MeshDescriptor")];
    if (v18)
    {
      v8 = v18;
    }

    else
    {
      v8 = v12;
    }
  }

  if (![a4 rasterizationEnabled])
  {
    goto LABEL_58;
  }

  v43 = v6;
  v42 = v7;
  v19 = [(MTL4RenderPassDescriptor *)self->_descriptor colorAttachments];
  for (i = 0; i != 8; ++i)
  {
    v21 = *(a4 + i + 9);
    v22 = [v19 _descriptorAtIndex:{i, v37}];
    v23 = [objc_msgSend(v22 "texture")];
    v24 = [objc_msgSend(v22 "texture")];
    if (v23)
    {
      if (v8)
      {
        if (v8 != v24)
        {
          Name = v24;
          v41 = v8;
          v37 = i;
LABEL_39:
          _MTLMessageContextPush_();
        }
      }

      else if (v43 != v24)
      {
        Name = v24;
        v41 = v43;
        v37 = i;
        goto LABEL_39;
      }

      if (([(MTL4RenderPassDescriptor *)self->_descriptor supportColorAttachmentMapping:v37]& 1) == 0 && v21 != v23)
      {
        Name = MTLPixelFormatGetName();
        v41 = MTLPixelFormatGetName();
        v37 = i;
        goto LABEL_37;
      }

      continue;
    }

    if (([(MTL4RenderPassDescriptor *)self->_descriptor supportColorAttachmentMapping]& 1) == 0 && v21)
    {
      v37 = i;
LABEL_37:
      _MTLMessageContextPush_();
      continue;
    }
  }

  v25 = [a4 tileDescriptor];
  v7 = v42;
  if (v25 || [a4 mtl4TileDescriptor])
  {
    goto LABEL_58;
  }

  v26 = [(MTL4RenderPassDescriptor *)self->_descriptor depthAttachment];
  v27 = [objc_msgSend(v26 "texture")];
  v28 = [objc_msgSend(v26 "texture")];
  v29 = *(a4 + 17);
  if (!v27)
  {
    if (!v29)
    {
      goto LABEL_50;
    }

    goto LABEL_73;
  }

  if (v42)
  {
    if (v42 != v28)
    {
      v37 = v28;
      Name = v42;
      goto LABEL_77;
    }
  }

  else if (v43 != v28)
  {
    v37 = v28;
    Name = v43;
LABEL_77:
    _MTLMessageContextPush_();
  }

  if (v29 != v27)
  {
    v37 = MTLPixelFormatGetName();
    Name = MTLPixelFormatGetName();
LABEL_73:
    _MTLMessageContextPush_();
  }

LABEL_50:
  v30 = [(MTL4RenderPassDescriptor *)self->_descriptor stencilAttachment:v37];
  v31 = [objc_msgSend(v30 "texture")];
  v32 = [objc_msgSend(v30 "texture")];
  v33 = *(a4 + 18);
  if (!v31)
  {
    if (!v33)
    {
      goto LABEL_58;
    }

    goto LABEL_75;
  }

  if (v42)
  {
    if (v42 != v32)
    {
      v37 = v32;
      Name = v42;
      goto LABEL_79;
    }
  }

  else if (v43 != v32)
  {
    v37 = v32;
    Name = v43;
LABEL_79:
    _MTLMessageContextPush_();
  }

  if (v33 != v31)
  {
    v37 = MTLPixelFormatGetName();
    Name = MTLPixelFormatGetName();
LABEL_75:
    _MTLMessageContextPush_();
  }

LABEL_58:
  if ([(MTLToolsDevice *)self->super.super.super._device supportsRenderPassWithoutRenderTarget:v37])
  {
    v34 = [(MTLToolsDevice *)self->super.super.super._device supportsSeparateVisibilityAndShadingRate];
    resolvedColorSampleCount = self->_resolvedColorSampleCount;
    if (v34)
    {
      if (resolvedColorSampleCount != v8)
      {
        v39 = self->_resolvedColorSampleCount;
        _MTLMessageContextPush_();
      }

      if (self->_resolvedRasterSampleCount != v7)
      {
        resolvedRasterSampleCount = self->_resolvedRasterSampleCount;
        goto LABEL_71;
      }
    }

    else
    {
      if (resolvedColorSampleCount != self->_resolvedRasterSampleCount || v8 != v7)
      {
        _MTLMessageContextPush_();
        resolvedColorSampleCount = self->_resolvedColorSampleCount;
      }

      if (resolvedColorSampleCount != v8)
      {
LABEL_71:
        _MTLMessageContextPush_();
      }
    }
  }
}

- (void)writeTimestampWithGranularity:(int64_t)a3 afterStage:(unint64_t)a4 intoHeap:(id)a5 atIndex:(unint64_t)a6
{
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (!a5)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_15;
  }

  if ([a5 type] != 1)
  {
    _MTLMessageContextPush_();
  }

  if ([a5 count] <= a6)
  {
    [a5 count];
LABEL_15:
    _MTLMessageContextPush_();
  }

  if (a3 >= 2)
  {
    _MTLMessageContextPush_();
  }

  if (a4 > 0x10 || ((1 << a4) & 0x10116) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v12.receiver = self;
  v12.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v12 writeTimestampWithGranularity:a3 afterStage:a4 intoHeap:a5 atIndex:a6];
}

- (id).cxx_construct
{
  v2 = 120;
  v3 = 2728;
  do
  {
    v4 = self + v2;
    *(v4 + 3) = 0;
    *(v4 + 4) = 0;
    *(v4 + 5) = 0;
    *(v4 + 6) = -1;
    *(v4 + 19) = 0;
    *(v4 + 20) = 0;
    *(v4 + 7) = 0;
    *(v4 + 8) = 0;
    v2 += 88;
    v4[72] = 0;
    v3 -= 88;
  }

  while (v3);
  v5 = 2848;
  v6 = 2728;
  do
  {
    v7 = self + v5;
    *(v7 + 3) = 0;
    *(v7 + 4) = 0;
    *(v7 + 5) = 0;
    *(v7 + 6) = -1;
    *(v7 + 19) = 0;
    *(v7 + 20) = 0;
    *(v7 + 7) = 0;
    *(v7 + 8) = 0;
    v5 += 88;
    v7[72] = 0;
    v6 -= 88;
  }

  while (v6);
  *(self + 699) = 0;
  *(self + 700) = 0;
  *(self + 698) = 0;
  *(self + 708) = 0;
  *(self + 709) = 0;
  *(self + 707) = 0;
  *(self + 719) = 0;
  *(self + 718) = 0;
  *(self + 717) = self + 5744;
  return self;
}

- (uint64_t)_validateDispatchThreadsPerTileCommon:(uint64_t *)a1 threadsPerTile:(id *)a2 .cold.1(uint64_t *a1, id *a2)
{
  v3 = *a1;
  v4 = a1[1];
  [*a2 tileWidth];
  [*a2 tileHeight];
  return _MTLMessageContextPush_();
}

- (uint64_t)_validateDispatchThreadsPerTileCommon:(id *)a3 threadsPerTile:.cold.2(uint64_t *a1, uint64_t *a2, id *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = *a2;
  [*a3 maxTotalThreadsPerThreadgroup];
  return _MTLMessageContextPush_();
}

@end