@interface MTL4DebugRenderCommandEncoder
- (MTL4DebugRenderCommandEncoder)initWithRenderCommandEncoder:(id)encoder commandBuffer:(id)buffer descriptor:(id)descriptor;
- (id).cxx_construct;
- (id)commandBuffer;
- (void)_resetEncoderWithDescriptor:(id)descriptor;
- (void)_validateDispatchThreadsPerTileCommon:(_MTLMessageContext *)common threadsPerTile:(id *)tile;
- (void)_validateDrawCommon:(_MTLMessageContext *)common primitiveType:(unint64_t)type instanceCount:(unint64_t)count;
- (void)_validateFramebufferCompatibility:(_MTLMessageContext *)compatibility pipelineState:(id)state;
- (void)_validateFunctionArguments:(_MTLMessageContext *)arguments stages:(unint64_t)stages;
- (void)_validateIndexedDrawCommon:(_MTLMessageContext *)common indexBuffer:(unint64_t)buffer indexType:(unint64_t)type indexBufferLength:(unint64_t)length;
- (void)_validateLBRT:(_MTLMessageContext *)t;
- (void)_validateMeshDrawCommon:(_MTLMessageContext *)common;
- (void)_validateThreadgroupSize:(id *)size stage:(unint64_t)stage context:(_MTLMessageContext *)context;
- (void)_validateThreadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup context:(_MTLMessageContext *)context;
- (void)dealloc;
- (void)dispatchThreadsPerTile:(id *)tile;
- (void)dispatchThreadsPerTile:(id *)tile inRegion:(id *)region;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length instanceCount:(unint64_t)instanceCount;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length indirectBuffer:(unint64_t)indirectBuffer;
- (void)drawMeshThreadgroups:(id *)threadgroups threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawMeshThreadgroupsWithIndirectBuffer:(unint64_t)buffer threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawMeshThreads:(id *)threads threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawPrimitives:(unint64_t)primitives indirectBuffer:(unint64_t)buffer;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance;
- (void)endEncoding;
- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(unint64_t)indirectBuffer;
- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range;
- (void)setArgumentTable:(id)table atStages:(unint64_t)stages;
- (void)setBlendColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha;
- (void)setColorAttachmentMap:(id)map;
- (void)setColorStoreAction:(unint64_t)action atIndex:(unint64_t)index;
- (void)setCommandDataCorruptModeSPI:(unint64_t)i;
- (void)setCullMode:(unint64_t)mode;
- (void)setDepthBias:(float)bias slopeScale:(float)scale clamp:(float)clamp;
- (void)setDepthClipMode:(unint64_t)mode;
- (void)setDepthClipModeSPI:(unint64_t)i;
- (void)setDepthStencilState:(id)state;
- (void)setDepthStoreAction:(unint64_t)action;
- (void)setDepthTestMinBound:(float)bound maxBound:(float)maxBound;
- (void)setFrontFacingWinding:(unint64_t)winding;
- (void)setLineWidth:(float)width;
- (void)setObjectThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index;
- (void)setRenderPipelineState:(id)state;
- (void)setScissorRect:(id *)rect;
- (void)setScissorRects:(id *)rects count:(unint64_t)count;
- (void)setStencilStoreAction:(unint64_t)action;
- (void)setThreadgroupMemoryLength:(unint64_t)length offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setTriangleFillMode:(unint64_t)mode;
- (void)setVertexAmplificationCount:(unint64_t)count viewMappings:(id *)mappings;
- (void)setVertexAmplificationMode:(unint64_t)mode value:(unint64_t)value;
- (void)setViewport:(id *)viewport;
- (void)setViewports:(id *)viewports count:(unint64_t)count;
- (void)setVisibilityResultMode:(unint64_t)mode offset:(unint64_t)offset;
- (void)writeTimestampWithGranularity:(int64_t)granularity afterStage:(unint64_t)stage intoHeap:(id)heap atIndex:(unint64_t)index;
@end

@implementation MTL4DebugRenderCommandEncoder

- (MTL4DebugRenderCommandEncoder)initWithRenderCommandEncoder:(id)encoder commandBuffer:(id)buffer descriptor:(id)descriptor
{
  v10.receiver = self;
  v10.super_class = MTL4DebugRenderCommandEncoder;
  v8 = [MTL4ToolsCommandEncoder initWithCommandEncoder:sel_initWithCommandEncoder_commandBuffer_ commandBuffer:?];
  if (v8)
  {
    v8->_debugCommandEncoder = [[MTL4DebugCommandEncoder alloc] initWithBaseObject:encoder device:v8->super.super.super._device commandBuffer:buffer encoderStageMask:31];
    [(MTL4DebugRenderCommandEncoder *)v8 _resetEncoderWithDescriptor:descriptor];
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
  selfCopy = self;
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder endEncodingPreamble];
  v3.receiver = selfCopy;
  v3.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsCommandEncoder *)&v3 endEncoding];
  selfCopy->_currentViewports.__end_ = selfCopy->_currentViewports.__begin_;
  selfCopy->_currentScissorRects.__end_ = selfCopy->_currentScissorRects.__begin_;
  selfCopy = (selfCopy + 5736);
  std::__tree<unsigned int>::destroy(selfCopy, &selfCopy->super.super.super._parent->super.isa);
  selfCopy->super.super.super.super.isa = &selfCopy->super.super.super._parent;
  selfCopy->super.super.super._baseObject = 0;
  selfCopy->super.super.super._parent = 0;
}

- (void)setColorAttachmentMap:(id)map
{
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding:0])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();

  if (map)
  {
    v6 = [map copy];
  }

  else
  {
    v6 = objc_opt_new();
  }

  self->_colorAttachmentMap = v6;
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setRenderPipelineState:(id)state
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
    if (state)
    {
LABEL_3:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_4;
      }
    }
  }

  else if (state)
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

  if ((*&encoderState & 0x2000) != 0 && self->_currentRenderPipelineState == state)
  {
    _MTLMessageContextPush_();
  }

  if (!*&v8[0])
  {
    [(MTL4DebugRenderCommandEncoder *)self _validateFramebufferCompatibility:v8 pipelineState:state];
  }

  _MTLMessageContextEnd();
  self->_currentRenderPipelineState = state;
  self->_encoderState = (*&self->_encoderState & 0xFFFFDFFE | 0x2000);
  v7.receiver = self;
  v7.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v7 setRenderPipelineState:state];
}

- (void)setViewport:(id *)viewport
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
      if (!memcmp(v9, viewport, 0x30uLL))
      {
        _MTLMessageContextPush_();
      }
    }
  }

  if (fabs(viewport->var2) == INFINITY)
  {
    _MTLMessageContextPush_();
  }

  if (fabs(viewport->var3) == INFINITY)
  {
    _MTLMessageContextPush_();
  }

  if (fabs(viewport->var0) == INFINITY)
  {
    _MTLMessageContextPush_();
  }

  if (fabs(viewport->var1) == INFINITY)
  {
    _MTLMessageContextPush_();
  }

  var4 = viewport->var4;
  if (fabs(var4) == INFINITY)
  {
    _MTLMessageContextPush_();
    var4 = viewport->var4;
  }

  if (fabs(var4) == INFINITY)
  {
    _MTLMessageContextPush_();
  }

  var2 = viewport->var2;
  var3 = viewport->var3;
  var0 = viewport->var0;
  var1 = viewport->var1;
  v15 = viewport->var4;
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

  v18 = *&viewport->var0;
  v19 = *&viewport->var4;
  *(v16 + 1) = *&viewport->var2;
  *(v16 + 2) = v19;
  *v16 = v18;
  self->_currentViewports.__end_ = (v16 + 48);
  self->_encoderState = (*&self->_encoderState & 0xFFFFBFFD | 0x4000);
  v23 = *&viewport->var2;
  v25[0] = *&viewport->var0;
  v25[1] = v23;
  v25[2] = *&viewport->var4;
  v24.receiver = self;
  v24.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v24 setViewport:v25];
}

- (void)setViewports:(id *)viewports count:(unint64_t)count
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

  if ((*&encoderState & 0x4000) != 0 && (begin = self->_currentViewports.__begin_, end = self->_currentViewports.__end_, 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 4) == count) && (begin != end ? (v11 = self->_currentViewports.__begin_) : (v11 = 0), !memcmp(v11, viewports, end - begin)))
  {
    _MTLMessageContextPush_();
    if (!count)
    {
      goto LABEL_28;
    }
  }

  else if (!count)
  {
    goto LABEL_28;
  }

  v12 = 0;
  p_var4 = &viewports->var4;
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

  while (count != v12);
LABEL_28:
  viewportsCopy = viewports;
  _MTLMessageContextEnd();
  selfCopy = self;
  p_currentViewports = &self->_currentViewports;
  self->_currentViewports.__end_ = self->_currentViewports.__begin_;
  std::vector<MTLViewport>::reserve(&self->_currentViewports.__begin_, count);
  if (count)
  {
    v21 = self->_currentViewports.__end_;
    viewportsCopy2 = viewports;
    countCopy = count;
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
        v32 = *&viewportsCopy2->var0;
        v33 = *&viewportsCopy2->var4;
        *(v31 + 16) = *&viewportsCopy2->var2;
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
        v25 = *&viewportsCopy2->var0;
        v26 = *&viewportsCopy2->var4;
        *(v21 + 1) = *&viewportsCopy2->var2;
        *(v21 + 2) = v26;
        *v21 = v25;
        v21 = (v21 + 48);
      }

      p_currentViewports->__end_ = v21;
      ++viewportsCopy2;
      --countCopy;
    }

    while (countCopy);
  }

  selfCopy->_encoderState = (*&selfCopy->_encoderState & 0xFFFFBFFD | 0x4000);
  v40.receiver = selfCopy;
  v40.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v40 setViewports:viewportsCopy count:count, v37];
}

- (void)setVertexAmplificationCount:(unint64_t)count viewMappings:(id *)mappings
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

  if (![(MTLToolsDevice *)self->super.super.super._device supportsVertexAmplificationCount:count])
  {
    _MTLMessageContextPush_();
  }

  encoderState = self->_encoderState;
  if ((*&encoderState & 4) == 0)
  {
    _MTLMessageContextPush_();
    encoderState = self->_encoderState;
  }

  if ((*&encoderState & 0x8000) != 0 && self->_currentVertexAmplificationCount == count)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  self->_currentVertexAmplificationCount = count;
  self->_encoderState = (*&self->_encoderState & 0xFFFF7FFB | 0x8000);
  v9.receiver = self;
  v9.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v9 setVertexAmplificationCount:count viewMappings:mappings];
}

- (void)setCullMode:(unint64_t)mode
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

  if (mode >= 3)
  {
    _MTLMessageContextPush_();
  }

  encoderState = self->_encoderState;
  if ((*&encoderState & 8) == 0)
  {
    _MTLMessageContextPush_();
    encoderState = self->_encoderState;
  }

  if ((*&encoderState & 0x10000) != 0 && self->_currentCullMode == mode)
  {
    [MTL4DebugRenderCommandEncoder setCullMode:mode];
  }

  _MTLMessageContextEnd();
  self->_currentCullMode = mode;
  self->_encoderState = (*&self->_encoderState & 0xFFFEFFF7 | 0x10000);
  v7.receiver = self;
  v7.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v7 setCullMode:mode];
}

- (void)setDepthClipMode:(unint64_t)mode
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

  if (mode >= 2)
  {
    _MTLMessageContextPush_();
  }

  encoderState = self->_encoderState;
  if ((*&encoderState & 0x10) == 0)
  {
    _MTLMessageContextPush_();
    encoderState = self->_encoderState;
  }

  if ((*&encoderState & 0x20000) != 0 && self->_currentDepthClipMode == mode)
  {
    [MTL4DebugRenderCommandEncoder setDepthClipMode:mode];
  }

  _MTLMessageContextEnd();
  self->_currentDepthClipMode = mode;
  self->_encoderState = (*&self->_encoderState & 0xFFFDFFEF | 0x20000);
  v7.receiver = self;
  v7.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v7 setDepthClipMode:mode];
}

- (void)setDepthBias:(float)bias slopeScale:(float)scale clamp:(float)clamp
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

  if ((*&encoderState & 0x40000) != 0 && self->_currentDepthBias == bias && self->_currentDepthSlopeScale == scale && self->_currentDepthClamp == clamp)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  self->_currentDepthBias = bias;
  self->_currentDepthSlopeScale = scale;
  self->_currentDepthClamp = clamp;
  self->_encoderState = (*&self->_encoderState & 0xFFFBFFDF | 0x40000);
  v14[0].receiver = self;
  v14[0].super_class = MTL4DebugRenderCommandEncoder;
  *&v11 = bias;
  *&v12 = scale;
  *&v13 = clamp;
  [(objc_super *)v14 setDepthBias:v11 slopeScale:v12 clamp:v13];
}

- (void)setDepthTestMinBound:(float)bound maxBound:(float)maxBound
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

  if (bound < 0.0 || bound > 1.0)
  {
    _MTLMessageContextPush_();
  }

  if (maxBound < 0.0 || maxBound > 1.0)
  {
    _MTLMessageContextPush_();
  }

  if (bound > maxBound)
  {
    _MTLMessageContextPush_();
  }

  if (self->_currentDepthTestMinBound == bound && self->_currentDepthTestMaxBound == maxBound)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  self->_currentDepthTestMinBound = bound;
  self->_currentDepthTestMaxBound = maxBound;
  v10.receiver = self;
  v10.super_class = MTL4DebugRenderCommandEncoder;
  *&v8 = bound;
  *&v9 = maxBound;
  [(MTL4ToolsRenderCommandEncoder *)&v10 setDepthTestMinBound:v8 maxBound:v9];
}

- (void)setScissorRect:(id *)rect
{
  v32 = 0;
  memset(&v31[2], 0, 48);
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  var2 = rect->var2;
  if (var2 + rect->var0 > self->_width)
  {
    v28 = var2 + rect->var0;
    width = self->_width;
    var0 = rect->var0;
    v27 = rect->var2;
    _MTLMessageContextPush_();
  }

  var1 = rect->var1;
  var3 = rect->var3;
  if (var3 + var1 > self->_height)
  {
    v28 = var3 + var1;
    width = self->_height;
    var0 = rect->var1;
    v27 = rect->var3;
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
      if (v12 == rect->var0 && v13 == rect->var1 && v15 == rect->var2 && v14 == rect->var3)
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

  v21 = *&rect->var2;
  *v19 = *&rect->var0;
  *(v19 + 1) = v21;
  self->_currentScissorRects.__end_ = (v19 + 32);
  self->_encoderState = (*&self->_encoderState & 0xFFF7FFBF | 0x80000);
  v25 = *&rect->var2;
  v31[0] = *&rect->var0;
  v31[1] = v25;
  v30.receiver = self;
  v30.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v30 setScissorRect:v31, var0, v27, v28, width];
}

- (void)setScissorRects:(id *)rects count:(unint64_t)count
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
    if (!count)
    {
      goto LABEL_11;
    }
  }

  else if (!count)
  {
    goto LABEL_11;
  }

  v8 = 0;
  p_var2 = &rects->var2;
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

  while (count != v8);
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
    if (count == (end - begin) >> 5)
    {
      v16 = begin == end ? 0 : self->_currentScissorRects.__begin_;
      if (!memcmp(v16, rects, end - begin))
      {
        _MTLMessageContextPush_();
      }
    }
  }

  rectsCopy = rects;
  _MTLMessageContextEnd();
  p_currentScissorRects = &self->_currentScissorRects;
  self->_currentScissorRects.__end_ = self->_currentScissorRects.__begin_;
  std::vector<MTLScissorRect>::reserve(&self->_currentScissorRects.__begin_, count);
  if (count)
  {
    v18 = self->_currentScissorRects.__end_;
    rectsCopy2 = rects;
    countCopy = count;
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
        v28 = *&rectsCopy2->var2;
        *v27 = *&rectsCopy2->var0;
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
        v22 = *&rectsCopy2->var2;
        *v18 = *&rectsCopy2->var0;
        *(v18 + 1) = v22;
        v18 = (v18 + 32);
      }

      self->_currentScissorRects.__end_ = v18;
      ++rectsCopy2;
      --countCopy;
    }

    while (countCopy);
  }

  self->_encoderState = (*&self->_encoderState & 0xFFF7FFBF | 0x80000);
  v38.receiver = self;
  v38.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v38 setScissorRects:rectsCopy count:count, v32, v33, v34, v35, width];
}

- (void)setTriangleFillMode:(unint64_t)mode
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

  if (mode >= 3)
  {
    _MTLMessageContextPush_();
  }

  encoderState = self->_encoderState;
  if ((*&encoderState & 0x80) == 0)
  {
    _MTLMessageContextPush_();
    encoderState = self->_encoderState;
  }

  if ((*&encoderState & 0x100000) != 0 && self->_currentTriangleFillMode == mode)
  {
    [MTL4DebugRenderCommandEncoder setTriangleFillMode:mode];
  }

  _MTLMessageContextEnd();
  self->_currentTriangleFillMode = mode;
  self->_encoderState = (*&self->_encoderState & 0xFFEFFF7F | 0x100000);
  v7.receiver = self;
  v7.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v7 setTriangleFillMode:mode];
}

- (void)setBlendColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha
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

  if (self->_currentBlendColorRed == red && self->_currentBlendColorGreen == green && self->_currentBlendColorBlue == blue && self->_currentBlendColorAlpha == alpha)
  {
    _MTLMessageContextPush_();
  }

LABEL_10:
  _MTLMessageContextEnd();
  v17[0].receiver = self;
  v17[0].super_class = MTL4DebugRenderCommandEncoder;
  *&v13 = red;
  *&v14 = green;
  *&v15 = blue;
  *&v16 = alpha;
  [(objc_super *)v17 setBlendColorRed:v13 green:v14 blue:v15 alpha:v16];
}

- (void)setDepthStencilState:(id)state
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

  if ((*&encoderState & 0x400000) != 0 && self->_currentDepthStencilState == state)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  self->_currentDepthStencilState = state;
  self->_encoderState = (*&self->_encoderState & 0xFFBFFDFF | 0x400000);
  v7[0].receiver = self;
  v7[0].super_class = MTL4DebugRenderCommandEncoder;
  [(objc_super *)v7 setDepthStencilState:state];
}

- (void)setVisibilityResultMode:(unint64_t)mode offset:(unint64_t)offset
{
  offsetCopy = offset;
  offsetCopy2 = offset;
  if (mode == 2)
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

  if (mode >= 3)
  {
    modeCopy = mode;
    _MTLMessageContextPush_();
  }

  else if (!mode)
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
      v11 = v10 >= offsetCopy;
      v12 = v10 < offsetCopy;
      if (v11)
      {
        p_end_node = left;
      }

      left = left[v12].__left_;
    }

    while (left);
    if (p_end_node != &self->_allVisibilityOffsets.__tree_.__end_node_ && p_end_node[4].__left_ <= offsetCopy)
    {
      modeCopy = offsetCopy;
      _MTLMessageContextPush_();
    }
  }

  if (![(MTL4RenderPassDescriptor *)self->_descriptor visibilityResultBuffer])
  {
    _MTLMessageContextPush_();
  }

  if (offsetCopy + 8 > [-[MTL4RenderPassDescriptor visibilityResultBuffer](self->_descriptor "visibilityResultBuffer")])
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

  if ((*&encoderState & 0x1000000) != 0 && self->_currentVisibilityResultMode == mode && self->_currentVisibilityResultModeOffset == offsetCopy)
  {
    [MTL4DebugRenderCommandEncoder setVisibilityResultMode:mode offset:?];
  }

  _MTLMessageContextEnd();
  self->_currentVisibilityResultMode = mode;
  self->_currentVisibilityResultModeOffset = offsetCopy;
  if ((v13 & 1) == 0)
  {
    std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long &>(&self->_allVisibilityOffsets, &offsetCopy2);
    offsetCopy = offsetCopy2;
  }

  self->_encoderState = (*&self->_encoderState & 0xFEFFF7FF | 0x1000000);
  v16.receiver = self;
  v16.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v16 setVisibilityResultMode:mode offset:offsetCopy];
}

- (void)setColorStoreAction:(unint64_t)action atIndex:(unint64_t)index
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

  if (index >= 8)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v8 = [-[MTL4RenderPassDescriptor colorAttachments](self->_descriptor "colorAttachments")];
  _MTLDebugValidateDeferredStoreActionOnDevice(self->super.super.super._device, action, v8, index, self->_unknownStoreActions);
  [v8 setStoreAction:action];
  v9.receiver = self;
  v9.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v9 setColorStoreAction:action atIndex:index];
}

- (void)setDepthStoreAction:(unint64_t)action
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
  _MTLDebugValidateDeferredStoreActionOnDevice(self->super.super.super._device, action, v6, 8uLL, self->_unknownStoreActions);
  [v6 setStoreAction:action];
  v7[0].receiver = self;
  v7[0].super_class = MTL4DebugRenderCommandEncoder;
  [(objc_super *)v7 setDepthStoreAction:action];
}

- (void)setStencilStoreAction:(unint64_t)action
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
  _MTLDebugValidateDeferredStoreActionOnDevice(self->super.super.super._device, action, v6, 9uLL, self->_unknownStoreActions);
  [v6 setStoreAction:action];
  v7[0].receiver = self;
  v7[0].super_class = MTL4DebugRenderCommandEncoder;
  [(objc_super *)v7 setStencilStoreAction:action];
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  [(MTL4DebugRenderCommandEncoder *)self _validateDrawCommon:v11 primitiveType:primitives instanceCount:1];
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v10.receiver = self;
  v10.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v10 drawPrimitives:primitives vertexStart:start vertexCount:count];
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  [(MTL4DebugRenderCommandEncoder *)self _validateDrawCommon:v13 primitiveType:primitives instanceCount:instanceCount];
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v12.receiver = self;
  v12.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v12 drawPrimitives:primitives vertexStart:start vertexCount:count instanceCount:instanceCount];
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance
{
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  [(MTL4DebugRenderCommandEncoder *)self _validateDrawCommon:v15 primitiveType:primitives instanceCount:instanceCount];
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v14.receiver = self;
  v14.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v14 drawPrimitives:primitives vertexStart:start vertexCount:count instanceCount:instanceCount baseInstance:instance];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length
{
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  [(MTL4DebugRenderCommandEncoder *)self _validateIndexedDrawCommon:v15 indexBuffer:buffer indexType:type indexBufferLength:length];
  [(MTL4DebugRenderCommandEncoder *)self _validateDrawCommon:v15 primitiveType:primitives instanceCount:1];
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v14.receiver = self;
  v14.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v14 drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:buffer indexBufferLength:length];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length instanceCount:(unint64_t)instanceCount
{
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  [(MTL4DebugRenderCommandEncoder *)self _validateIndexedDrawCommon:v17 indexBuffer:buffer indexType:type indexBufferLength:length];
  [(MTL4DebugRenderCommandEncoder *)self _validateDrawCommon:v17 primitiveType:primitives instanceCount:instanceCount];
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v16.receiver = self;
  v16.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v16 drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:buffer indexBufferLength:length instanceCount:instanceCount];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0
{
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  [(MTL4DebugRenderCommandEncoder *)self _validateIndexedDrawCommon:v19 indexBuffer:buffer indexType:type indexBufferLength:length];
  [(MTL4DebugRenderCommandEncoder *)self _validateDrawCommon:v19 primitiveType:primitives instanceCount:instanceCount];
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v18.receiver = self;
  v18.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v18 drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:buffer indexBufferLength:length instanceCount:instanceCount baseVertex:vertex baseInstance:instance];
}

- (void)drawPrimitives:(unint64_t)primitives indirectBuffer:(unint64_t)buffer
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
    if (buffer)
    {
      goto LABEL_5;
    }

LABEL_7:
    _MTLMessageContextPush_();
    goto LABEL_5;
  }

  if (!buffer)
  {
    goto LABEL_7;
  }

LABEL_5:
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v8[0].receiver = self;
  v8[0].super_class = MTL4DebugRenderCommandEncoder;
  [(objc_super *)v8 drawPrimitives:primitives indirectBuffer:buffer];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length indirectBuffer:(unint64_t)indirectBuffer
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
    if (indirectBuffer)
    {
      goto LABEL_5;
    }

LABEL_7:
    _MTLMessageContextPush_();
    goto LABEL_5;
  }

  if (!indirectBuffer)
  {
    goto LABEL_7;
  }

LABEL_5:
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v14[0].receiver = self;
  v14[0].super_class = MTL4DebugRenderCommandEncoder;
  [(objc_super *)v14 drawIndexedPrimitives:primitives indexType:type indexBuffer:buffer indexBufferLength:length indirectBuffer:indirectBuffer];
}

- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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

  v16.length = [buffer size];
  v15.location = location;
  v15.length = length;
  v16.location = 0;
  v9 = NSIntersectionRange(v15, v16);
  if (v9.location != location || v9.length != length)
  {
    [buffer size];
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v10.receiver = self;
  v10.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v10 executeCommandsInBuffer:buffer withRange:location, length];
}

- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(unint64_t)indirectBuffer
{
  v9 = 0;
  memset(&v8[1], 0, 48);
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
    if (indirectBuffer)
    {
      goto LABEL_3;
    }

LABEL_5:
    _MTLMessageContextPush_();
    goto LABEL_3;
  }

  if (!indirectBuffer)
  {
    goto LABEL_5;
  }

LABEL_3:
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v8[0].receiver = self;
  v8[0].super_class = MTL4DebugRenderCommandEncoder;
  [(objc_super *)v8 executeCommandsInBuffer:buffer indirectBuffer:indirectBuffer];
}

- (void)setObjectThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index
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

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes]<= index)
  {
    indexCopy = index;
    maxComputeLocalMemorySizes = [(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes];
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxThreadgroupMemoryLength:indexCopy]< length)
  {
    lengthCopy = length;
    maxThreadgroupMemoryLength = [(MTLToolsDevice *)self->super.super.super._device maxThreadgroupMemoryLength];
    _MTLMessageContextPush_();
  }

  if (length % [(MTLToolsDevice *)self->super.super.super._device maxComputeThreadgroupMemoryAlignmentBytes:lengthCopy])
  {
    indexCopy2 = length;
    maxComputeThreadgroupMemoryAlignmentBytes = [(MTLToolsDevice *)self->super.super.super._device maxComputeThreadgroupMemoryAlignmentBytes];
    _MTLMessageContextPush_();
  }

  if (!v17)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v8 = &self->_currentObjectThreadgroupMemoryLengths[index];
      if (v8->isValid && !v8->hasBeenUsed)
      {
        indexCopy2 = index;
        MTLReportFailure();
      }
    }
  }

  _MTLMessageContextEnd();
  v9 = &self->_currentObjectThreadgroupMemoryLengths[index];
  if (MTLReportFailureTypeEnabled() && !v9->hasLodClamp && !v9->threadgroupMemoryOffset && v9->threadgroupMemoryLength == length && v9->bufferAttributeStride == -1 && v9->type == 3 && !v9->object && !(v9->bufferLength | v9->var0 | v9->bufferOffset) && !*&v9->lodMinClamp)
  {
    [MTL4DebugComputeCommandEncoder setThreadgroupMemoryLength:atIndex:];
  }

  v9->isValid = length != 0;
  v9->hasBeenUsed = 0;
  v9->type = 3;
  *&v9->object = 0u;
  *&v9->bufferLength = 0u;
  v9->bufferAttributeStride = -1;
  v9->threadgroupMemoryLength = length;
  v9->threadgroupMemoryOffset = 0;
  v9->hasLodClamp = 0;
  v9->lodMinClamp = 0.0;
  v9->lodMaxClamp = 0.0;
  v16.receiver = self;
  v16.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v16 setObjectThreadgroupMemoryLength:length atIndex:index, indexCopy2, maxComputeThreadgroupMemoryAlignmentBytes];
}

- (void)_validateThreadgroupSize:(id *)size stage:(unint64_t)stage context:(_MTLMessageContext *)context
{
  meshDescriptor = [(MTLRenderPipelineState *)self->_currentRenderPipelineState meshDescriptor];
  v9 = meshDescriptor;
  if (stage == 16)
  {
    if (![meshDescriptor meshFunction])
    {
      return;
    }

    maxTotalThreadsPerMeshThreadgroup = [(MTLRenderPipelineState *)self->_currentRenderPipelineState maxTotalThreadsPerMeshThreadgroup];
    meshThreadgroupSizeIsMultipleOfThreadExecutionWidth = [v9 meshThreadgroupSizeIsMultipleOfThreadExecutionWidth];
    meshThreadExecutionWidth = [(MTLRenderPipelineState *)self->_currentRenderPipelineState meshThreadExecutionWidth];
  }

  else
  {
    if (stage != 8 || ![meshDescriptor objectFunction])
    {
      return;
    }

    maxTotalThreadsPerMeshThreadgroup = [(MTLRenderPipelineState *)self->_currentRenderPipelineState maxTotalThreadsPerObjectThreadgroup];
    meshThreadgroupSizeIsMultipleOfThreadExecutionWidth = [v9 objectThreadgroupSizeIsMultipleOfThreadExecutionWidth];
    meshThreadExecutionWidth = [(MTLRenderPipelineState *)self->_currentRenderPipelineState objectThreadExecutionWidth];
  }

  var1 = size->var1;
  var2 = size->var2;
  v15 = var1 * size->var0 * var2;
  if (v15 > maxTotalThreadsPerMeshThreadgroup)
  {
    v19 = size->var2;
    v21 = var1 * size->var0 * var2;
    v18 = size->var1;
    _MTLMessageContextPush_();
  }

  if (meshThreadExecutionWidth)
  {
    v16 = meshThreadgroupSizeIsMultipleOfThreadExecutionWidth;
  }

  else
  {
    v16 = 0;
  }

  if (v16 == 1)
  {
    if (v15 % meshThreadExecutionWidth)
    {
      v20 = size->var2;
      v17 = *&size->var0;
      _MTLMessageContextPush_();
    }
  }
}

- (void)_validateThreadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup context:(_MTLMessageContext *)context
{
  v11 = *threadgroup;
  [(MTL4DebugRenderCommandEncoder *)self _validateThreadgroupSize:&v11 stage:8 context:?];
  v11 = *meshThreadgroup;
  [(MTL4DebugRenderCommandEncoder *)self _validateThreadgroupSize:&v11 stage:16 context:context];
  v11 = *threadgroup;
  currentRenderPipelineState = self->_currentRenderPipelineState;
  if (currentRenderPipelineState)
  {
    [(MTLRenderPipelineState *)currentRenderPipelineState requiredThreadsPerObjectThreadgroup];
  }

  validateDispatchThreadsPerThreadgroupWithRTPTG();
  v11 = *meshThreadgroup;
  v10 = self->_currentRenderPipelineState;
  if (v10)
  {
    [(MTLRenderPipelineState *)v10 requiredThreadsPerMeshThreadgroup];
  }

  validateDispatchThreadsPerThreadgroupWithRTPTG();
}

- (void)drawMeshThreadgroups:(id *)threadgroups threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
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
  v15 = *&threadgroup->var0;
  var2 = threadgroup->var2;
  v13 = *&meshThreadgroup->var0;
  v14 = meshThreadgroup->var2;
  [(MTL4DebugRenderCommandEncoder *)self _validateThreadsPerObjectThreadgroup:&v15 threadsPerMeshThreadgroup:&v13 context:v17];
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v15 = *&threadgroups->var0;
  var2 = threadgroups->var2;
  v13 = *&threadgroup->var0;
  v14 = threadgroup->var2;
  v11 = *&meshThreadgroup->var0;
  v12 = meshThreadgroup->var2;
  v10.receiver = self;
  v10.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v10 drawMeshThreadgroups:&v15 threadsPerObjectThreadgroup:&v13 threadsPerMeshThreadgroup:&v11];
}

- (void)drawMeshThreads:(id *)threads threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
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
  v15 = *&threadgroup->var0;
  var2 = threadgroup->var2;
  v13 = *&meshThreadgroup->var0;
  v14 = meshThreadgroup->var2;
  [(MTL4DebugRenderCommandEncoder *)self _validateThreadsPerObjectThreadgroup:&v15 threadsPerMeshThreadgroup:&v13 context:v17];
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v15 = *&threads->var0;
  var2 = threads->var2;
  v13 = *&threadgroup->var0;
  v14 = threadgroup->var2;
  v11 = *&meshThreadgroup->var0;
  v12 = meshThreadgroup->var2;
  v10.receiver = self;
  v10.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v10 drawMeshThreads:&v15 threadsPerObjectThreadgroup:&v13 threadsPerMeshThreadgroup:&v11];
}

- (void)drawMeshThreadgroupsWithIndirectBuffer:(unint64_t)buffer threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
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
  if (!buffer)
  {
    _MTLMessageContextPush_();
  }

  [(MTL4DebugRenderCommandEncoder *)self _validateMeshDrawCommon:v15];
  v13 = *&threadgroup->var0;
  var2 = threadgroup->var2;
  v11 = *&meshThreadgroup->var0;
  v12 = meshThreadgroup->var2;
  [(MTL4DebugRenderCommandEncoder *)self _validateThreadsPerObjectThreadgroup:&v13 threadsPerMeshThreadgroup:&v11 context:v15];
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v13 = *&threadgroup->var0;
  var2 = threadgroup->var2;
  v11 = *&meshThreadgroup->var0;
  v12 = meshThreadgroup->var2;
  v10.receiver = self;
  v10.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v10 drawMeshThreadgroupsWithIndirectBuffer:buffer threadsPerObjectThreadgroup:&v13 threadsPerMeshThreadgroup:&v11];
}

- (void)dispatchThreadsPerTile:(id *)tile
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  v7 = *tile;
  [(MTL4DebugRenderCommandEncoder *)self _validateDispatchThreadsPerTileCommon:v8 threadsPerTile:&v7];
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDispatch];
  v7 = *tile;
  v6.receiver = self;
  v6.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v6 dispatchThreadsPerTile:&v7];
}

- (void)setThreadgroupMemoryLength:(unint64_t)length offset:(unint64_t)offset atIndex:(unint64_t)index
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

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes]<= index)
  {
    indexCopy = index;
    maxComputeLocalMemorySizes = [(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes];
    _MTLMessageContextPush_();
  }

  if (offset + length > [(MTLToolsDevice *)self->super.super.super._device maxThreadgroupMemoryLength:indexCopy])
  {
    lengthCopy = length;
    maxThreadgroupMemoryLength = [(MTLToolsDevice *)self->super.super.super._device maxThreadgroupMemoryLength];
    offsetCopy = offset;
    _MTLMessageContextPush_();
  }

  if (length % [(MTLToolsDevice *)self->super.super.super._device maxComputeThreadgroupMemoryAlignmentBytes:offsetCopy])
  {
    lengthCopy2 = length;
    maxComputeThreadgroupMemoryAlignmentBytes = [(MTLToolsDevice *)self->super.super.super._device maxComputeThreadgroupMemoryAlignmentBytes];
    _MTLMessageContextPush_();
  }

  if (offset % [(MTLToolsDevice *)self->super.super.super._device maxComputeThreadgroupMemoryAlignmentBytes:lengthCopy2])
  {
    indexCopy2 = offset;
    maxComputeThreadgroupMemoryAlignmentBytes2 = [(MTLToolsDevice *)self->super.super.super._device maxComputeThreadgroupMemoryAlignmentBytes];
    _MTLMessageContextPush_();
  }

  if (!v22)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v10 = &self->_currentThreadgroupMemoryArguments[index];
      if (v10->isValid && !v10->hasBeenUsed)
      {
        indexCopy2 = index;
        MTLReportFailure();
      }
    }
  }

  _MTLMessageContextEnd();
  v11 = &self->_currentThreadgroupMemoryArguments[index];
  if (MTLReportFailureTypeEnabled() && !v11->hasLodClamp && v11->threadgroupMemoryOffset == offset && v11->threadgroupMemoryLength == length && v11->bufferAttributeStride == -1 && v11->type == 3 && !v11->object && !(v11->bufferLength | v11->var0 | v11->bufferOffset) && !*&v11->lodMinClamp)
  {
    [MTL4DebugComputeCommandEncoder setThreadgroupMemoryLength:atIndex:];
  }

  v11->isValid = length != 0;
  v11->hasBeenUsed = 0;
  v11->type = 3;
  *&v11->object = 0u;
  *&v11->bufferLength = 0u;
  v11->bufferAttributeStride = -1;
  v11->threadgroupMemoryLength = length;
  v11->threadgroupMemoryOffset = offset;
  v11->hasLodClamp = 0;
  v11->lodMinClamp = 0.0;
  v11->lodMaxClamp = 0.0;
  v21.receiver = self;
  v21.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v21 setThreadgroupMemoryLength:length offset:offset atIndex:index, indexCopy2, maxComputeThreadgroupMemoryAlignmentBytes2];
}

- (void)setArgumentTable:(id)table atStages:(unint64_t)stages
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
    if (!table)
    {
      goto LABEL_7;
    }
  }

  else if (!table)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (stages >= 0x20)
  {
    stagesCopy = stages;
    _MTLMessageContextPush_();
  }

LABEL_7:
  _MTLMessageContextEnd();
  if (stages)
  {
    self->_currentVertexArgumentTable = table;
    if ((stages & 2) == 0)
    {
LABEL_9:
      if ((stages & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }
  }

  else if ((stages & 2) == 0)
  {
    goto LABEL_9;
  }

  self->_currentFragmentArgumentTable = table;
  if ((stages & 4) == 0)
  {
LABEL_10:
    if ((stages & 8) == 0)
    {
      goto LABEL_11;
    }

LABEL_17:
    self->_currentObjectArgumentTable = table;
    if ((stages & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_16:
  self->_currentTileArgumentTable = table;
  if ((stages & 8) != 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  if ((stages & 0x10) != 0)
  {
LABEL_12:
    self->_currentMeshArgumentTable = table;
  }

LABEL_13:
  v9.receiver = self;
  v9.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v9 setArgumentTable:table atStages:stages, stagesCopy];
}

- (void)setFrontFacingWinding:(unint64_t)winding
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

  if (winding >= 2)
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

  if (self->_currentFrontFacingWinding == winding)
  {
    [MTL4DebugRenderCommandEncoder setFrontFacingWinding:winding];
  }

LABEL_9:
  _MTLMessageContextEnd();
  v7.receiver = self;
  v7.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v7 setFrontFacingWinding:winding];
}

- (void)setLineWidth:(float)width
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

  if (width < 1.0 || width > 16.0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v8.receiver = self;
  v8.super_class = MTL4DebugRenderCommandEncoder;
  *&v7 = width;
  [(MTL4ToolsRenderCommandEncoder *)&v8 setLineWidth:v7];
}

- (void)setDepthClipModeSPI:(unint64_t)i
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

  if (i >= 2)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v6.receiver = self;
  v6.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v6 setDepthClipModeSPI:i];
}

- (void)setCommandDataCorruptModeSPI:(unint64_t)i
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

  if (i - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v6.receiver = self;
  v6.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v6 setCommandDataCorruptModeSPI:i];
}

- (void)dispatchThreadsPerTile:(id *)tile inRegion:(id *)region
{
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  v11 = *&tile->var0;
  *&v12 = tile->var2;
  [(MTL4DebugRenderCommandEncoder *)self _validateDispatchThreadsPerTileCommon:v16 threadsPerTile:&v11];
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDispatch];
  v8 = *&tile->var0;
  var2 = tile->var2;
  v9 = *&region->var0.var2;
  v11 = *&region->var0.var0;
  v12 = v9;
  v13 = *&region->var1.var1;
  v14 = v8;
  v10.receiver = self;
  v10.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v10 dispatchThreadsPerTile:&v14 inRegion:&v11];
}

- (void)setVertexAmplificationMode:(unint64_t)mode value:(unint64_t)value
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

  if (mode >= 2)
  {
    modeCopy = mode;
    _MTLMessageContextPush_();
  }

  v8 = vcnt_s8(value);
  v8.i16[0] = vaddlv_u8(v8);
  if (mode == 1)
  {
    valueCopy = v8.u32[0];
  }

  else
  {
    valueCopy = value;
  }

  if (!valueCopy || valueCopy > [(MTLToolsDevice *)self->super.super.super._device maxVertexAmplificationFactor])
  {
    [(MTLToolsDevice *)self->super.super.super._device maxVertexAmplificationFactor];
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v11.receiver = self;
  v11.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v11 setVertexAmplificationMode:mode value:value];
}

- (void)_validateLBRT:(_MTLMessageContext *)t
{
  for (i = 0; i != 8; ++i)
  {
    descriptor = [objc_msgSend(objc_msgSend(-[MTLRenderPipelineState descriptor](self->_currentRenderPipelineState descriptor];
    if (descriptor)
    {
      v6 = descriptor;
      colorAttachments = [(MTL4RenderPassDescriptor *)self->_descriptor colorAttachments];
      colorAttachmentMap = self->_colorAttachmentMap;
      v9 = i;
      if (colorAttachmentMap)
      {
        v9 = [(MTLLogicalToPhysicalColorAttachmentMap *)colorAttachmentMap getPhysicalIndexForLogicalIndex:i];
      }

      if (v6 != [objc_msgSend(objc_msgSend(colorAttachments objectAtIndexedSubscript:{v9), "texture"), "pixelFormat"}])
      {
        Name = MTLPixelFormatGetName();
        v11 = MTLPixelFormatGetName();
        _MTLMessageContextPush_();
      }
    }
  }
}

- (void)_validateIndexedDrawCommon:(_MTLMessageContext *)common indexBuffer:(unint64_t)buffer indexType:(unint64_t)type indexBufferLength:(unint64_t)length
{
  if (!buffer)
  {
    _MTLMessageContextPush_();
  }

  v8 = _MTLDebugIndexTypeSize(type);
  if (v8)
  {
    if (length % v8)
    {
      _MTLMessageContextPush_();
    }
  }
}

- (void)_validateDrawCommon:(_MTLMessageContext *)common primitiveType:(unint64_t)type instanceCount:(unint64_t)count
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
      [(MTL4DebugRenderCommandEncoder *)self _validateLBRT:common];
    }
  }

  if (!count)
  {
    _MTLMessageContextPush_();
  }

  _MTLDebugValidateMTLPrimitiveTypeWithContext(type, 0);
  rasterizationRateMap = [(MTL4RenderPassDescriptor *)self->_descriptor rasterizationRateMap];
  if (type - 5 <= 0xFFFFFFFFFFFFFFFDLL && rasterizationRateMap)
  {
    _MTLMessageContextPush_();
  }

  v11 = self->_currentScissorRects.__end_ - self->_currentScissorRects.__begin_;
  if (v11 != 32 && 0xAAAAAAAAAAAAAAABLL * ((self->_currentViewports.__end_ - self->_currentViewports.__begin_) >> 4) != v11 >> 5)
  {
    _MTLMessageContextPush_();
  }

  if (!common->var0)
  {

    [(MTL4DebugRenderCommandEncoder *)self _validateFunctionArguments:common stages:3];
  }
}

- (void)_validateMeshDrawCommon:(_MTLMessageContext *)common
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

  if (!common->var0)
  {

    [(MTL4DebugRenderCommandEncoder *)self _validateFunctionArguments:common stages:26];
  }
}

- (void)_validateDispatchThreadsPerTileCommon:(_MTLMessageContext *)common threadsPerTile:(id *)tile
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

  if (!common->var0)
  {
    if ([(MTLRenderPipelineState *)*p_currentRenderPipelineState threadgroupSizeMatchesTileSize])
    {
      var0 = tile->var0;
      if (var0 != [(MTL4RenderPassDescriptor *)self->_descriptor tileWidth]|| (var1 = tile->var1, var1 != [(MTL4RenderPassDescriptor *)self->_descriptor tileHeight]))
      {
        [MTL4DebugRenderCommandEncoder _validateDispatchThreadsPerTileCommon:tile threadsPerTile:&self->_descriptor];
      }
    }

    if (![(MTLToolsDevice *)self->super.super.super._device supportsNonSquareTileShaders]&& ([(MTLRenderPipelineState *)*p_currentRenderPipelineState threadgroupSizeMatchesTileSize]& 1) == 0)
    {
      v11 = tile->var0;
      if (v11 != [(MTL4RenderPassDescriptor *)self->_descriptor tileWidth]|| (v12 = tile->var1, v12 != [(MTL4RenderPassDescriptor *)self->_descriptor tileHeight]))
      {
        if (tile->var0 != tile->var1)
        {
          v17 = tile->var0;
          v18 = tile->var1;
          v15 = tile->var0;
          v16 = v18;
          _MTLMessageContextPush_();
        }
      }
    }

    v13 = vaddq_s64(vandq_s8(*&tile->var0, vdupq_n_s64(1uLL)), *&tile->var0);
    v14 = tile->var2 * v13.i64[0] * v13.i64[1];
    if (v14 > [(MTLRenderPipelineState *)*p_currentRenderPipelineState maxTotalThreadsPerThreadgroup:v15])
    {
      [(MTL4DebugRenderCommandEncoder *)tile _validateDispatchThreadsPerTileCommon:p_currentRenderPipelineState threadsPerTile:?];
    }

    v19 = *&tile->var0;
    var2 = tile->var2;
    if (*p_currentRenderPipelineState)
    {
      [(MTLRenderPipelineState *)*p_currentRenderPipelineState requiredThreadsPerTileThreadgroup];
    }

    validateDispatchThreadsPerThreadgroupWithRTPTG();
    [(MTL4DebugRenderCommandEncoder *)self _validateFunctionArguments:common stages:4];
  }
}

- (void)_resetEncoderWithDescriptor:(id)descriptor
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

  self->_descriptor = [descriptor copy];
  [descriptor validate:self->super.super.super._device width:&self->_width height:&self->_height];
  rasterizationRateMap = [(MTL4RenderPassDescriptor *)self->_descriptor rasterizationRateMap];
  if (rasterizationRateMap)
  {
    v6 = rasterizationRateMap;
    renderTargetWidth = [(MTL4RenderPassDescriptor *)self->_descriptor renderTargetWidth];
    renderTargetHeight = [(MTL4RenderPassDescriptor *)self->_descriptor renderTargetHeight];
    v9 = renderTargetHeight;
    if (renderTargetWidth)
    {
      if (renderTargetHeight)
      {
LABEL_4:
        self->_width = renderTargetWidth;
        self->_height = v9;
        goto LABEL_5;
      }
    }

    else
    {
      [v6 screenSize];
      renderTargetWidth = v40;
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
  colorAttachments = [(MTL4RenderPassDescriptor *)self->_descriptor colorAttachments];
  for (i = 0; i != 10; ++i)
  {
    v12 = [colorAttachments _descriptorAtIndex:i];
    if ([v12 texture] && objc_msgSend(v12, "storeAction") == 4)
    {
      self->_unknownStoreActions |= 1 << i;
    }
  }

  colorAttachments2 = [(MTL4RenderPassDescriptor *)self->_descriptor colorAttachments];
  v14 = 0;
  while (1)
  {
    v15 = [objc_msgSend(colorAttachments2 _descriptorAtIndex:{v14), "texture"}];
    if (v15)
    {
      break;
    }

    if (++v14 == 8)
    {
      sampleCount = 0;
      goto LABEL_15;
    }
  }

  sampleCount = [v15 sampleCount];
LABEL_15:
  depthAttachment = [(MTL4RenderPassDescriptor *)self->_descriptor depthAttachment];
  stencilAttachment = [(MTL4RenderPassDescriptor *)self->_descriptor stencilAttachment];
  texture = [depthAttachment texture];
  texture2 = [stencilAttachment texture];
  if (texture)
  {
    texture2 = texture;
  }

  sampleCount2 = [texture2 sampleCount];
  if ([(MTLToolsDevice *)self->super.super.super._device supportsRenderPassWithoutRenderTarget])
  {
    if (sampleCount)
    {
      if (sampleCount2)
      {
LABEL_20:
        if (sampleCount2)
        {
          v22 = sampleCount2;
        }

        else
        {
          v22 = sampleCount;
        }

        if (sampleCount)
        {
          sampleCount2 = v22;
        }

        else
        {
          sampleCount = sampleCount2;
        }

        goto LABEL_26;
      }
    }

    else
    {
      defaultColorSampleCount = [(MTL4RenderPassDescriptor *)self->_descriptor defaultColorSampleCount];
      descriptor = self->_descriptor;
      if (defaultColorSampleCount)
      {
        defaultColorSampleCount2 = [(MTL4RenderPassDescriptor *)descriptor defaultColorSampleCount];
      }

      else
      {
        defaultColorSampleCount2 = [(MTL4RenderPassDescriptor *)descriptor defaultRasterSampleCount];
      }

      sampleCount = defaultColorSampleCount2;
      if (sampleCount2)
      {
        goto LABEL_20;
      }
    }

    sampleCount2 = [(MTL4RenderPassDescriptor *)self->_descriptor defaultRasterSampleCount];
    goto LABEL_20;
  }

LABEL_26:
  self->_resolvedColorSampleCount = sampleCount;
  self->_resolvedRasterSampleCount = sampleCount2;
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

- (void)_validateFunctionArguments:(_MTLMessageContext *)arguments stages:(unint64_t)stages
{
  if (stages == 26)
  {
    meshDescriptor = [(MTLRenderPipelineState *)self->_currentRenderPipelineState meshDescriptor];
    mtl4MeshDescriptor = [(MTLRenderPipelineState *)self->_currentRenderPipelineState mtl4MeshDescriptor];
    if (meshDescriptor)
    {
      v16 = [objc_msgSend(meshDescriptor "objectFunction")];
      v17 = [objc_msgSend(meshDescriptor "meshFunction")];
      v18 = [objc_msgSend(meshDescriptor "fragmentFunction")];
    }

    else
    {
      v28 = mtl4MeshDescriptor;
      v16 = _MTL4DebugFunctionDescriptorName([mtl4MeshDescriptor objectFunctionDescriptor]);
      v17 = _MTL4DebugFunctionDescriptorName([v28 meshFunctionDescriptor]);
      v18 = _MTL4DebugFunctionDescriptorName([v28 fragmentFunctionDescriptor]);
    }

    v29 = v18;
    validationReflection = [(MTLRenderPipelineState *)self->_currentRenderPipelineState validationReflection];
    LOBYTE(v38) = 0;
    -[MTL4DebugCommandEncoder validateFunctionArguments:stage:functionName:argumentTable:boundThreadgroupMemoryArguments:bindings:allowNullBufferBindings:](self->_debugCommandEncoder, "validateFunctionArguments:stage:functionName:argumentTable:boundThreadgroupMemoryArguments:bindings:allowNullBufferBindings:", arguments, @"Object", v16, self->_currentObjectArgumentTable, self->_currentObjectThreadgroupMemoryLengths, [validationReflection objectBindings], v38);
    LOBYTE(v39) = 0;
    -[MTL4DebugCommandEncoder validateFunctionArguments:stage:functionName:argumentTable:boundThreadgroupMemoryArguments:bindings:allowNullBufferBindings:](self->_debugCommandEncoder, "validateFunctionArguments:stage:functionName:argumentTable:boundThreadgroupMemoryArguments:bindings:allowNullBufferBindings:", arguments, @"Mesh", v17, self->_currentMeshArgumentTable, 0, [validationReflection meshBindings], v39);
    debugCommandEncoder = self->_debugCommandEncoder;
    currentFragmentArgumentTable = self->_currentFragmentArgumentTable;
    fragmentBindings = [validationReflection fragmentBindings];
    LOBYTE(v38) = 0;
    v23 = @"Fragment";
    currentThreadgroupMemoryArguments = self->_currentThreadgroupMemoryArguments;
    v25 = debugCommandEncoder;
    argumentsCopy3 = arguments;
    v27 = v29;
    v33 = currentFragmentArgumentTable;
  }

  else
  {
    if (stages == 4)
    {
      tileDescriptor = [(MTLRenderPipelineState *)self->_currentRenderPipelineState tileDescriptor];
      mtl4TileDescriptor = [(MTLRenderPipelineState *)self->_currentRenderPipelineState mtl4TileDescriptor];
      validationReflection2 = [(MTLRenderPipelineState *)self->_currentRenderPipelineState validationReflection];
      if (tileDescriptor)
      {
        v13 = [objc_msgSend(tileDescriptor "tileFunction")];
      }

      else
      {
        v13 = _MTL4DebugFunctionDescriptorName([mtl4TileDescriptor tileFunctionDescriptor]);
      }

      v19 = v13;
      v20 = self->_debugCommandEncoder;
      currentTileArgumentTable = self->_currentTileArgumentTable;
      fragmentBindings = [validationReflection2 tileBindings];
      LOBYTE(v38) = 0;
      v23 = @"Tile";
      currentThreadgroupMemoryArguments = self->_currentThreadgroupMemoryArguments;
      v25 = v20;
      argumentsCopy3 = arguments;
      v27 = v19;
    }

    else
    {
      if (stages != 3)
      {
        return;
      }

      descriptor = [(MTLRenderPipelineState *)self->_currentRenderPipelineState descriptor];
      mtl4Descriptor = [(MTLRenderPipelineState *)self->_currentRenderPipelineState mtl4Descriptor];
      if (descriptor)
      {
        v8 = [objc_msgSend(descriptor "vertexFunction")];
        v9 = [objc_msgSend(descriptor "fragmentFunction")];
      }

      else
      {
        v34 = mtl4Descriptor;
        v8 = _MTL4DebugFunctionDescriptorName([mtl4Descriptor vertexFunctionDescriptor]);
        v9 = _MTL4DebugFunctionDescriptorName([v34 fragmentFunctionDescriptor]);
      }

      v35 = v9;
      validationReflection3 = [(MTLRenderPipelineState *)self->_currentRenderPipelineState validationReflection];
      LOBYTE(v38) = 0;
      -[MTL4DebugCommandEncoder validateFunctionArguments:stage:functionName:argumentTable:boundThreadgroupMemoryArguments:bindings:allowNullBufferBindings:](self->_debugCommandEncoder, "validateFunctionArguments:stage:functionName:argumentTable:boundThreadgroupMemoryArguments:bindings:allowNullBufferBindings:", arguments, @"Vertex", v8, self->_currentVertexArgumentTable, self->_currentThreadgroupMemoryArguments, [validationReflection3 vertexBindings], v38);
      v37 = self->_debugCommandEncoder;
      currentTileArgumentTable = self->_currentFragmentArgumentTable;
      fragmentBindings = [validationReflection3 fragmentBindings];
      LOBYTE(v38) = 0;
      v23 = @"Fragment";
      currentThreadgroupMemoryArguments = self->_currentThreadgroupMemoryArguments;
      v25 = v37;
      argumentsCopy3 = arguments;
      v27 = v35;
    }

    v33 = currentTileArgumentTable;
  }

  [(MTL4DebugCommandEncoder *)v25 validateFunctionArguments:argumentsCopy3 stage:v23 functionName:v27 argumentTable:v33 boundThreadgroupMemoryArguments:currentThreadgroupMemoryArguments bindings:fragmentBindings allowNullBufferBindings:v38];
}

- (void)_validateFramebufferCompatibility:(_MTLMessageContext *)compatibility pipelineState:(id)state
{
  v6 = *(state + 8);
  v7 = v6;
  v8 = v6;
  if ([(MTLToolsDevice *)self->super.super.super._device supportsRenderPassWithoutRenderTarget])
  {
    v9 = [objc_msgSend(state "descriptor")];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v6;
    }

    v11 = [objc_msgSend(state "descriptor")];
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    v13 = [objc_msgSend(state "meshDescriptor")];
    if (v13)
    {
      v10 = v13;
    }

    v14 = [objc_msgSend(state "meshDescriptor")];
    if (v14)
    {
      v12 = v14;
    }

    v15 = [objc_msgSend(state "mtl4Descriptor")];
    if (v15)
    {
      v10 = v15;
    }

    v16 = [objc_msgSend(state "mtl4Descriptor")];
    if (v16)
    {
      v12 = v16;
    }

    v17 = [objc_msgSend(state "mtl4MeshDescriptor")];
    if (v17)
    {
      v7 = v17;
    }

    else
    {
      v7 = v10;
    }

    v18 = [objc_msgSend(state "mtl4MeshDescriptor")];
    if (v18)
    {
      v8 = v18;
    }

    else
    {
      v8 = v12;
    }
  }

  if (![state rasterizationEnabled])
  {
    goto LABEL_58;
  }

  v43 = v6;
  v42 = v7;
  colorAttachments = [(MTL4RenderPassDescriptor *)self->_descriptor colorAttachments];
  for (i = 0; i != 8; ++i)
  {
    v21 = *(state + i + 9);
    v22 = [colorAttachments _descriptorAtIndex:{i, v37}];
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

  tileDescriptor = [state tileDescriptor];
  v7 = v42;
  if (tileDescriptor || [state mtl4TileDescriptor])
  {
    goto LABEL_58;
  }

  depthAttachment = [(MTL4RenderPassDescriptor *)self->_descriptor depthAttachment];
  v27 = [objc_msgSend(depthAttachment "texture")];
  v28 = [objc_msgSend(depthAttachment "texture")];
  v29 = *(state + 17);
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
  v33 = *(state + 18);
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
    supportsSeparateVisibilityAndShadingRate = [(MTLToolsDevice *)self->super.super.super._device supportsSeparateVisibilityAndShadingRate];
    resolvedColorSampleCount = self->_resolvedColorSampleCount;
    if (supportsSeparateVisibilityAndShadingRate)
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

- (void)writeTimestampWithGranularity:(int64_t)granularity afterStage:(unint64_t)stage intoHeap:(id)heap atIndex:(unint64_t)index
{
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (!heap)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_15;
  }

  if ([heap type] != 1)
  {
    _MTLMessageContextPush_();
  }

  if ([heap count] <= index)
  {
    [heap count];
LABEL_15:
    _MTLMessageContextPush_();
  }

  if (granularity >= 2)
  {
    _MTLMessageContextPush_();
  }

  if (stage > 0x10 || ((1 << stage) & 0x10116) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v12.receiver = self;
  v12.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v12 writeTimestampWithGranularity:granularity afterStage:stage intoHeap:heap atIndex:index];
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