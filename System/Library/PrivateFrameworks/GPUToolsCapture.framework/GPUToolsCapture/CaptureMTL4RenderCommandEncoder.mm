@interface CaptureMTL4RenderCommandEncoder
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTL4RenderCommandEncoder)initWithBaseObject:(id)object captureCommandBuffer:(id)buffer;
- (NSString)description;
- (id)endEncodingAndRetrieveProgramAddressTable;
- (unint64_t)streamReference;
- (void)barrierAfterEncoderStages:(unint64_t)stages beforeEncoderStages:(unint64_t)encoderStages visibilityOptions:(unint64_t)options;
- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages visibilityOptions:(unint64_t)options;
- (void)barrierAfterStages:(unint64_t)stages beforeQueueStages:(unint64_t)queueStages visibilityOptions:(unint64_t)options;
- (void)dealloc;
- (void)dispatchThreadsPerTile:(id *)tile;
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
- (void)insertDebugSignpost:(id)signpost;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)group;
- (void)setArgumentTable:(id)table atStages:(unint64_t)stages;
- (void)setBlendColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha;
- (void)setColorAttachmentMap:(id)map;
- (void)setColorStoreAction:(unint64_t)action atIndex:(unint64_t)index;
- (void)setCullMode:(unint64_t)mode;
- (void)setDepthBias:(float)bias slopeScale:(float)scale clamp:(float)clamp;
- (void)setDepthClipMode:(unint64_t)mode;
- (void)setDepthStencilState:(id)state;
- (void)setDepthStoreAction:(unint64_t)action;
- (void)setDepthTestMinBound:(float)bound maxBound:(float)maxBound;
- (void)setFrontFacingWinding:(unint64_t)winding;
- (void)setLabel:(id)label;
- (void)setLineWidth:(float)width;
- (void)setObjectThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index;
- (void)setRenderPipelineState:(id)state;
- (void)setScissorRect:(id *)rect;
- (void)setScissorRects:(id *)rects count:(unint64_t)count;
- (void)setStencilStoreAction:(unint64_t)action;
- (void)setThreadgroupMemoryLength:(unint64_t)length offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setTriangleFillMode:(unint64_t)mode;
- (void)setVertexAmplificationCount:(unint64_t)count viewMappings:(id *)mappings;
- (void)setViewport:(id *)viewport;
- (void)setViewports:(id *)viewports count:(unint64_t)count;
- (void)setVisibilityResultMode:(unint64_t)mode offset:(unint64_t)offset;
- (void)touch;
- (void)updateFence:(id)fence afterEncoderStages:(unint64_t)stages;
- (void)waitForFence:(id)fence beforeEncoderStages:(unint64_t)stages;
@end

@implementation CaptureMTL4RenderCommandEncoder

- (void)waitForFence:(id)fence beforeEncoderStages:(unint64_t)stages
{
  fenceCopy = fence;
  [fenceCopy touch];
  if (fenceCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:fenceCopy];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  baseObject = [fenceCopy baseObject];
  [(MTL4RenderCommandEncoderSPI *)baseObject waitForFence:baseObject beforeEncoderStages:stages];

  v11 = v23;
  *(v23 + 8) = -15016;
  v12 = BYTE9(v24);
  if (BYTE9(v24) > 0x28uLL)
  {
    v14 = *(*(&v22 + 1) + 24);
    v15 = BYTE10(v24);
    ++BYTE10(v24);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v23 + 1), v15 | 0x1800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v24));
    BYTE9(v24) += 24;
  }

  *(v11 + 13) = v12;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [fenceCopy traceStream];
  if (traceStream2)
  {
    v19 = *traceStream2;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = stages;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)updateFence:(id)fence afterEncoderStages:(unint64_t)stages
{
  fenceCopy = fence;
  [fenceCopy touch];
  if (fenceCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:fenceCopy];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  baseObject = [fenceCopy baseObject];
  [(MTL4RenderCommandEncoderSPI *)baseObject updateFence:baseObject afterEncoderStages:stages];

  v11 = v23;
  *(v23 + 8) = -15017;
  v12 = BYTE9(v24);
  if (BYTE9(v24) > 0x28uLL)
  {
    v14 = *(*(&v22 + 1) + 24);
    v15 = BYTE10(v24);
    ++BYTE10(v24);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v23 + 1), v15 | 0x1800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v24));
    BYTE9(v24) += 24;
  }

  *(v11 + 13) = v12;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [fenceCopy traceStream];
  if (traceStream2)
  {
    v19 = *traceStream2;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = stages;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setVisibilityResultMode:(unint64_t)mode offset:(unint64_t)offset
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTL4RenderCommandEncoderSPI *)self->_baseObject setVisibilityResultMode:mode offset:offset];
  v8 = v18;
  *(v18 + 8) = -15018;
  v9 = BYTE9(v19);
  if (BYTE9(v19) > 0x28uLL)
  {
    v11 = *(*(&v17 + 1) + 24);
    v12 = BYTE10(v19);
    ++BYTE10(v19);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v18 + 1), v12 | 0x1800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v19));
    BYTE9(v19) += 24;
  }

  *(v8 + 13) = v9;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = mode;
  *(v10 + 2) = offset;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setViewports:(id *)viewports count:(unint64_t)count
{
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTL4RenderCommandEncoderSPI *)self->_baseObject setViewports:viewports count:count];
  v8 = v19;
  *(v19 + 8) = -15019;
  v9 = BYTE9(v20);
  if (BYTE9(v20) > 0x28uLL)
  {
    v11 = *(*(&v18 + 1) + 24);
    v12 = BYTE10(v20);
    ++BYTE10(v20);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v19 + 1), v12 | 0x1800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v20));
    BYTE9(v20) += 24;
  }

  *(v8 + 13) = v9;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  v15 = GTTraceEncoder_storeBlob(&v18, viewports, 48 * count);
  *v10 = var0;
  *(v10 + 1) = count;
  v10[16] = v15;
  *(v10 + 17) = 0;
  *(v10 + 5) = 0;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (void)setViewport:(id *)viewport
{
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = self->_baseObject;
  v7 = *&viewport->var2;
  v19[0] = *&viewport->var0;
  v19[1] = v7;
  v19[2] = *&viewport->var4;
  [(MTL4RenderCommandEncoderSPI *)baseObject setViewport:v19];
  v8 = v21;
  *(v21 + 8) = -15020;
  v9 = BYTE9(v22);
  if (BYTE9(v22) > 8uLL)
  {
    v11 = *(*(&v20 + 1) + 24);
    v12 = BYTE10(v22);
    ++BYTE10(v22);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v21 + 1), v12 | 0x3800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v22));
    BYTE9(v22) += 56;
  }

  *(v8 + 13) = v9;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  v15 = *&viewport->var2;
  v16 = *&viewport->var4;
  *(v10 + 8) = *&viewport->var0;
  *(v10 + 24) = v15;
  *(v10 + 40) = v16;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v22);
  *(v21 + 15) |= 8u;
}

- (void)setVertexAmplificationCount:(unint64_t)count viewMappings:(id *)mappings
{
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTL4RenderCommandEncoderSPI *)self->_baseObject setVertexAmplificationCount:count viewMappings:mappings];
  v8 = v19;
  *(v19 + 8) = -15021;
  v9 = BYTE9(v20);
  if (BYTE9(v20) > 0x28uLL)
  {
    v11 = *(*(&v18 + 1) + 24);
    v12 = BYTE10(v20);
    ++BYTE10(v20);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v19 + 1), v12 | 0x1800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v20));
    BYTE9(v20) += 24;
  }

  *(v8 + 13) = v9;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (!traceStream)
  {
    var0 = 0;
    if (mappings)
    {
      goto LABEL_6;
    }

LABEL_8:
    v15 = 0;
    goto LABEL_9;
  }

  var0 = traceStream->var0;
  if (!mappings)
  {
    goto LABEL_8;
  }

LABEL_6:
  v15 = GTTraceEncoder_storeBlob(&v18, mappings, 8 * count);
LABEL_9:
  *v10 = var0;
  *(v10 + 1) = count;
  v10[16] = v15;
  *(v10 + 17) = 0;
  *(v10 + 5) = 0;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (void)setTriangleFillMode:(unint64_t)mode
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTL4RenderCommandEncoderSPI *)self->_baseObject setTriangleFillMode:mode];
  v6 = v16;
  *(v16 + 8) = -15022;
  v7 = BYTE9(v17);
  if (BYTE9(v17) > 0x30uLL)
  {
    v9 = *(*(&v15 + 1) + 24);
    v10 = BYTE10(v17);
    ++BYTE10(v17);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v16 + 1), v10 | 0x1000000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v17));
    BYTE9(v17) += 16;
  }

  *(v6 + 13) = v7;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = mode;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setThreadgroupMemoryLength:(unint64_t)length offset:(unint64_t)offset atIndex:(unint64_t)index
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  [(MTL4RenderCommandEncoderSPI *)self->_baseObject setThreadgroupMemoryLength:length offset:offset atIndex:index];
  v10 = v20;
  *(v20 + 8) = -15023;
  v11 = BYTE9(v21);
  if (BYTE9(v21) > 0x20uLL)
  {
    v13 = *(*(&v19 + 1) + 24);
    v14 = BYTE10(v21);
    ++BYTE10(v21);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v20 + 1), v14 | 0x2000000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v21));
    BYTE9(v21) += 32;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = length;
  *(v12 + 2) = offset;
  *(v12 + 3) = index;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)setStencilStoreAction:(unint64_t)action
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTL4RenderCommandEncoderSPI *)self->_baseObject setStencilStoreAction:action];
  v6 = v16;
  *(v16 + 8) = -15024;
  v7 = BYTE9(v17);
  if (BYTE9(v17) > 0x30uLL)
  {
    v9 = *(*(&v15 + 1) + 24);
    v10 = BYTE10(v17);
    ++BYTE10(v17);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v16 + 1), v10 | 0x1000000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v17));
    BYTE9(v17) += 16;
  }

  *(v6 + 13) = v7;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = action;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setScissorRects:(id *)rects count:(unint64_t)count
{
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTL4RenderCommandEncoderSPI *)self->_baseObject setScissorRects:rects count:count];
  v8 = v19;
  *(v19 + 8) = -15027;
  v9 = BYTE9(v20);
  if (BYTE9(v20) > 0x28uLL)
  {
    v11 = *(*(&v18 + 1) + 24);
    v12 = BYTE10(v20);
    ++BYTE10(v20);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v19 + 1), v12 | 0x1800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v20));
    BYTE9(v20) += 24;
  }

  *(v8 + 13) = v9;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  v15 = GTTraceEncoder_storeBlob(&v18, rects, 32 * count);
  *v10 = var0;
  *(v10 + 1) = count;
  v10[16] = v15;
  *(v10 + 17) = 0;
  *(v10 + 5) = 0;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (void)setScissorRect:(id *)rect
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = self->_baseObject;
  v7 = *&rect->var2;
  v18[0] = *&rect->var0;
  v18[1] = v7;
  [(MTL4RenderCommandEncoderSPI *)baseObject setScissorRect:v18];
  v8 = v20;
  *(v20 + 8) = -15028;
  v9 = BYTE9(v21);
  if (BYTE9(v21) > 0x18uLL)
  {
    v11 = *(*(&v19 + 1) + 24);
    v12 = BYTE10(v21);
    ++BYTE10(v21);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v20 + 1), v12 | 0x2800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v21));
    BYTE9(v21) += 40;
  }

  *(v8 + 13) = v9;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  v15 = *&rect->var2;
  *(v10 + 8) = *&rect->var0;
  *(v10 + 24) = v15;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)setRenderPipelineState:(id)state
{
  stateCopy = state;
  [stateCopy touch];
  if (stateCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:stateCopy];
    }
  }

  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = self->_baseObject;
  baseObject = [stateCopy baseObject];
  [(MTL4RenderCommandEncoderSPI *)baseObject setRenderPipelineState:baseObject];

  v9 = v21;
  *(v21 + 8) = -15030;
  v10 = BYTE9(v22);
  if (BYTE9(v22) > 0x30uLL)
  {
    v12 = *(*(&v20 + 1) + 24);
    v13 = BYTE10(v22);
    ++BYTE10(v22);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v21 + 1), v13 | 0x1000000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v22));
    BYTE9(v22) += 16;
  }

  *(v9 + 13) = v10;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [stateCopy traceStream];
  if (traceStream2)
  {
    v17 = *traceStream2;
  }

  else
  {
    v17 = 0;
  }

  *v11 = var0;
  *(v11 + 1) = v17;
  s();
  *v18 = v19;
  *(v18 + 8) = BYTE8(v22);
  *(v21 + 15) |= 8u;
}

- (void)setObjectThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTL4RenderCommandEncoderSPI *)self->_baseObject setObjectThreadgroupMemoryLength:length atIndex:index];
  v8 = v18;
  *(v18 + 8) = -15031;
  v9 = BYTE9(v19);
  if (BYTE9(v19) > 0x28uLL)
  {
    v11 = *(*(&v17 + 1) + 24);
    v12 = BYTE10(v19);
    ++BYTE10(v19);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v18 + 1), v12 | 0x1800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v19));
    BYTE9(v19) += 24;
  }

  *(v8 + 13) = v9;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = length;
  *(v10 + 2) = index;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setLineWidth:(float)width
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  *&v6 = width;
  [(MTL4RenderCommandEncoderSPI *)self->_baseObject setLineWidth:v6];
  v7 = v17;
  *(v17 + 8) = -15032;
  v8 = BYTE9(v18);
  if (BYTE9(v18) > 0x30uLL)
  {
    v10 = *(*(&v16 + 1) + 24);
    v11 = BYTE10(v18);
    ++BYTE10(v18);
    v9 = GTTraceMemPool_allocateBytes(v10, *(&v17 + 1), v11 | 0x1000000000) + 16;
    v8 = v11;
  }

  else
  {
    v9 = (v7 + BYTE9(v18));
    BYTE9(v18) += 16;
  }

  *(v7 + 13) = v8;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 2) = width;
  *(v9 + 3) = 0;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setFrontFacingWinding:(unint64_t)winding
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTL4RenderCommandEncoderSPI *)self->_baseObject setFrontFacingWinding:winding];
  v6 = v16;
  *(v16 + 8) = -15033;
  v7 = BYTE9(v17);
  if (BYTE9(v17) > 0x30uLL)
  {
    v9 = *(*(&v15 + 1) + 24);
    v10 = BYTE10(v17);
    ++BYTE10(v17);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v16 + 1), v10 | 0x1000000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v17));
    BYTE9(v17) += 16;
  }

  *(v6 + 13) = v7;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = winding;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setDepthTestMinBound:(float)bound maxBound:(float)maxBound
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  *&v8 = bound;
  *&v9 = maxBound;
  [(MTL4RenderCommandEncoderSPI *)self->_baseObject setDepthTestMinBound:v8 maxBound:v9];
  v10 = v20;
  *(v20 + 8) = -14805;
  v11 = BYTE9(v21);
  if (BYTE9(v21) > 0x30uLL)
  {
    v13 = *(*(&v19 + 1) + 24);
    v14 = BYTE10(v21);
    ++BYTE10(v21);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v20 + 1), v14 | 0x1000000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v21));
    BYTE9(v21) += 16;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v12 = var0;
  *(v12 + 2) = bound;
  *(v12 + 3) = maxBound;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)setDepthStoreAction:(unint64_t)action
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTL4RenderCommandEncoderSPI *)self->_baseObject setDepthStoreAction:action];
  v6 = v16;
  *(v16 + 8) = -15034;
  v7 = BYTE9(v17);
  if (BYTE9(v17) > 0x30uLL)
  {
    v9 = *(*(&v15 + 1) + 24);
    v10 = BYTE10(v17);
    ++BYTE10(v17);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v16 + 1), v10 | 0x1000000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v17));
    BYTE9(v17) += 16;
  }

  *(v6 + 13) = v7;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = action;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setDepthStencilState:(id)state
{
  stateCopy = state;
  [stateCopy touch];
  if (stateCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:stateCopy];
    }
  }

  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = self->_baseObject;
  baseObject = [stateCopy baseObject];
  [(MTL4RenderCommandEncoderSPI *)baseObject setDepthStencilState:baseObject];

  v9 = v21;
  *(v21 + 8) = -15035;
  v10 = BYTE9(v22);
  if (BYTE9(v22) > 0x30uLL)
  {
    v12 = *(*(&v20 + 1) + 24);
    v13 = BYTE10(v22);
    ++BYTE10(v22);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v21 + 1), v13 | 0x1000000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v22));
    BYTE9(v22) += 16;
  }

  *(v9 + 13) = v10;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [stateCopy traceStream];
  if (traceStream2)
  {
    v17 = *traceStream2;
  }

  else
  {
    v17 = 0;
  }

  *v11 = var0;
  *(v11 + 1) = v17;
  s();
  *v18 = v19;
  *(v18 + 8) = BYTE8(v22);
  *(v21 + 15) |= 8u;
}

- (void)setDepthClipMode:(unint64_t)mode
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTL4RenderCommandEncoderSPI *)self->_baseObject setDepthClipMode:mode];
  v6 = v16;
  *(v16 + 8) = -15036;
  v7 = BYTE9(v17);
  if (BYTE9(v17) > 0x30uLL)
  {
    v9 = *(*(&v15 + 1) + 24);
    v10 = BYTE10(v17);
    ++BYTE10(v17);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v16 + 1), v10 | 0x1000000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v17));
    BYTE9(v17) += 16;
  }

  *(v6 + 13) = v7;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = mode;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setDepthBias:(float)bias slopeScale:(float)scale clamp:(float)clamp
{
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  *&v10 = bias;
  *&v11 = scale;
  *&v12 = clamp;
  [(MTL4RenderCommandEncoderSPI *)self->_baseObject setDepthBias:v10 slopeScale:v11 clamp:v12];
  v13 = v23;
  *(v23 + 8) = -15037;
  v14 = BYTE9(v24);
  if (BYTE9(v24) > 0x28uLL)
  {
    v16 = *(*(&v22 + 1) + 24);
    v17 = BYTE10(v24);
    ++BYTE10(v24);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v23 + 1), v17 | 0x1800000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v24));
    BYTE9(v24) += 24;
  }

  *(v13 + 13) = v14;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v15 = var0;
  *(v15 + 2) = bias;
  *(v15 + 3) = scale;
  *(v15 + 4) = clamp;
  *(v15 + 5) = 0;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setCullMode:(unint64_t)mode
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTL4RenderCommandEncoderSPI *)self->_baseObject setCullMode:mode];
  v6 = v16;
  *(v16 + 8) = -15038;
  v7 = BYTE9(v17);
  if (BYTE9(v17) > 0x30uLL)
  {
    v9 = *(*(&v15 + 1) + 24);
    v10 = BYTE10(v17);
    ++BYTE10(v17);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v16 + 1), v10 | 0x1000000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v17));
    BYTE9(v17) += 16;
  }

  *(v6 + 13) = v7;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = mode;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setColorStoreAction:(unint64_t)action atIndex:(unint64_t)index
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTL4RenderCommandEncoderSPI *)self->_baseObject setColorStoreAction:action atIndex:index];
  v8 = v18;
  *(v18 + 8) = -15039;
  v9 = BYTE9(v19);
  if (BYTE9(v19) > 0x28uLL)
  {
    v11 = *(*(&v17 + 1) + 24);
    v12 = BYTE10(v19);
    ++BYTE10(v19);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v18 + 1), v12 | 0x1800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v19));
    BYTE9(v19) += 24;
  }

  *(v8 + 13) = v9;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = action;
  *(v10 + 2) = index;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setColorAttachmentMap:(id)map
{
  mapCopy = map;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  [(MTL4RenderCommandEncoderSPI *)self->_baseObject setColorAttachmentMap:mapCopy];
  v6 = v24;
  *(v24 + 8) = -15029;
  v7 = BYTE9(v25);
  if (BYTE9(v25) > 0x30uLL)
  {
    v9 = *(*(&v23 + 1) + 24);
    v10 = BYTE10(v25);
    ++BYTE10(v25);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v24 + 1), v10 | 0x1000000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v25));
    BYTE9(v25) += 16;
  }

  *(v6 + 13) = v7;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (!traceStream)
  {
    var0 = 0;
    if (mapCopy)
    {
      goto LABEL_6;
    }

LABEL_8:
    v19 = -1;
    v17 = -1;
    v15 = -1;
    v13 = -1;
    v14 = -1;
    v16 = -1;
    v18 = -1;
    v20 = -1;
    goto LABEL_9;
  }

  var0 = traceStream->var0;
  if (!mapCopy)
  {
    goto LABEL_8;
  }

LABEL_6:
  v13 = [mapCopy getPhysicalIndexForLogicalIndex:0];
  v14 = [mapCopy getPhysicalIndexForLogicalIndex:1];
  v15 = [mapCopy getPhysicalIndexForLogicalIndex:2];
  v16 = [mapCopy getPhysicalIndexForLogicalIndex:3];
  v17 = [mapCopy getPhysicalIndexForLogicalIndex:4];
  v18 = [mapCopy getPhysicalIndexForLogicalIndex:5];
  v19 = [mapCopy getPhysicalIndexForLogicalIndex:6];
  v20 = [mapCopy getPhysicalIndexForLogicalIndex:7];
LABEL_9:
  *v8 = var0;
  v8[8] = v13;
  v8[9] = v14;
  v8[10] = v15;
  v8[11] = v16;
  v8[12] = v17;
  v8[13] = v18;
  v8[14] = v19;
  v8[15] = v20;
  s();
  *v21 = v22;
  *(v21 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;
}

- (void)setBlendColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha
{
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  *&v12 = red;
  *&v13 = green;
  *&v14 = blue;
  *&v15 = alpha;
  [(MTL4RenderCommandEncoderSPI *)self->_baseObject setBlendColorRed:v12 green:v13 blue:v14 alpha:v15];
  v16 = v26;
  *(v26 + 8) = -15040;
  v17 = BYTE9(v27);
  if (BYTE9(v27) > 0x28uLL)
  {
    v19 = *(*(&v25 + 1) + 24);
    v20 = BYTE10(v27);
    ++BYTE10(v27);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v26 + 1), v20 | 0x1800000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v27));
    BYTE9(v27) += 24;
  }

  *(v16 + 13) = v17;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v18 = var0;
  *(v18 + 2) = red;
  *(v18 + 3) = green;
  *(v18 + 4) = blue;
  *(v18 + 5) = alpha;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v27);
  *(v26 + 15) |= 8u;
}

- (void)setArgumentTable:(id)table atStages:(unint64_t)stages
{
  tableCopy = table;
  [tableCopy touch];
  if (tableCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:tableCopy];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  baseObject = [tableCopy baseObject];
  [(MTL4RenderCommandEncoderSPI *)baseObject setArgumentTable:baseObject atStages:stages];

  v11 = v23;
  *(v23 + 8) = -15041;
  v12 = BYTE9(v24);
  if (BYTE9(v24) > 0x28uLL)
  {
    v14 = *(*(&v22 + 1) + 24);
    v15 = BYTE10(v24);
    ++BYTE10(v24);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v23 + 1), v15 | 0x1800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v24));
    BYTE9(v24) += 24;
  }

  *(v11 + 13) = v12;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [tableCopy traceStream];
  if (traceStream2)
  {
    v19 = *traceStream2;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = stages;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)pushDebugGroup:(id)group
{
  groupCopy = group;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTL4RenderCommandEncoderSPI *)self->_baseObject pushDebugGroup:groupCopy];
  v6 = v19;
  *(v19 + 8) = -15042;
  v7 = BYTE9(v20);
  if (BYTE9(v20) > 0x30uLL)
  {
    v9 = *(*(&v18 + 1) + 24);
    v10 = BYTE10(v20);
    ++BYTE10(v20);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v19 + 1), v10 | 0x1000000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v20));
    BYTE9(v20) += 16;
  }

  *(v6 + 13) = v7;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  uTF8String = [groupCopy UTF8String];
  if (uTF8String)
  {
    uTF8String2 = [groupCopy UTF8String];
    v15 = strlen([groupCopy UTF8String]);
    LOBYTE(uTF8String) = GTTraceEncoder_storeBytes(&v18, uTF8String2, v15 + 1);
  }

  *v8 = var0;
  v8[8] = uTF8String;
  *(v8 + 9) = 0;
  *(v8 + 3) = 0;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (void)popDebugGroup
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  [(MTL4RenderCommandEncoderSPI *)self->_baseObject popDebugGroup];
  v4 = v14;
  *(v14 + 8) = -15043;
  v5 = BYTE9(v15);
  if (BYTE9(v15) > 0x38uLL)
  {
    v7 = *(*(&v13 + 1) + 24);
    v8 = BYTE10(v15);
    ++BYTE10(v15);
    v6 = GTTraceMemPool_allocateBytes(v7, *(&v14 + 1), v8 | 0x800000000) + 16;
    v5 = v8;
  }

  else
  {
    v6 = (v4 + BYTE9(v15));
    BYTE9(v15) += 8;
  }

  *(v4 + 13) = v5;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v6 = var0;
  s();
  *v11 = v12;
  *(v11 + 8) = BYTE8(v15);
  *(v14 + 15) |= 8u;
}

- (void)insertDebugSignpost:(id)signpost
{
  signpostCopy = signpost;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTL4RenderCommandEncoderSPI *)self->_baseObject insertDebugSignpost:signpostCopy];
  v6 = v19;
  *(v19 + 8) = -15044;
  v7 = BYTE9(v20);
  if (BYTE9(v20) > 0x30uLL)
  {
    v9 = *(*(&v18 + 1) + 24);
    v10 = BYTE10(v20);
    ++BYTE10(v20);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v19 + 1), v10 | 0x1000000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v20));
    BYTE9(v20) += 16;
  }

  *(v6 + 13) = v7;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  uTF8String = [signpostCopy UTF8String];
  if (uTF8String)
  {
    uTF8String2 = [signpostCopy UTF8String];
    v15 = strlen([signpostCopy UTF8String]);
    LOBYTE(uTF8String) = GTTraceEncoder_storeBytes(&v18, uTF8String2, v15 + 1);
  }

  *v8 = var0;
  v8[8] = uTF8String;
  *(v8 + 9) = 0;
  *(v8 + 3) = 0;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  bufferCopy = buffer;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4RenderCommandEncoder_executeCommandsInBuffer_withRange", "Metal 4 Render Command Encoder", 0, 0);
  [bufferCopy touch];
  v7 = bufferCopy;
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
      v7 = bufferCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v7 baseObject];
  [(MTL4RenderCommandEncoderSPI *)baseObject executeCommandsInBuffer:baseObject withRange:location, length];
}

- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(unint64_t)indirectBuffer
{
  bufferCopy = buffer;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4RenderCommandEncoder_executeCommandsInBuffer_indirectBuffer", "Metal 4 Render Command Encoder", 0, 0);
  [bufferCopy touch];
  v6 = bufferCopy;
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
      v6 = bufferCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v6 baseObject];
  [(MTL4RenderCommandEncoderSPI *)baseObject executeCommandsInBuffer:baseObject indirectBuffer:indirectBuffer];
}

- (id)endEncodingAndRetrieveProgramAddressTable
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4RenderCommandEncoder_endEncodingAndRetrieveProgramAddressTable", "Metal 4 Profiling SPI", 0, 0);
  baseObject = self->_baseObject;

  return [(MTL4RenderCommandEncoderSPI *)baseObject endEncodingAndRetrieveProgramAddressTable];
}

- (void)endEncoding
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  [(MTL4RenderCommandEncoderSPI *)self->_baseObject endEncoding];
  v4 = v14;
  *(v14 + 8) = -15047;
  v5 = BYTE9(v15);
  if (BYTE9(v15) > 0x38uLL)
  {
    v7 = *(*(&v13 + 1) + 24);
    v8 = BYTE10(v15);
    ++BYTE10(v15);
    v6 = GTTraceMemPool_allocateBytes(v7, *(&v14 + 1), v8 | 0x800000000) + 16;
    v5 = v8;
  }

  else
  {
    v6 = (v4 + BYTE9(v15));
    BYTE9(v15) += 8;
  }

  *(v4 + 13) = v5;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v6 = var0;
  s();
  *v11 = v12;
  *(v11 + 8) = BYTE8(v15);
  *(v14 + 15) |= 8u;
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance
{
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  [(MTL4RenderCommandEncoderSPI *)self->_baseObject drawPrimitives:primitives vertexStart:start vertexCount:count instanceCount:instanceCount baseInstance:instance];
  v14 = v24;
  *(v24 + 8) = -15048;
  v15 = BYTE9(v25);
  if (BYTE9(v25) > 0x10uLL)
  {
    v17 = *(*(&v23 + 1) + 24);
    v18 = BYTE10(v25);
    ++BYTE10(v25);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v24 + 1), v18 | 0x3000000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v25));
    BYTE9(v25) += 48;
  }

  *(v14 + 13) = v15;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v16 = var0;
  *(v16 + 1) = primitives;
  *(v16 + 2) = start;
  *(v16 + 3) = count;
  *(v16 + 4) = instanceCount;
  *(v16 + 5) = instance;
  s();
  *v21 = v22;
  *(v21 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount
{
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  [(MTL4RenderCommandEncoderSPI *)self->_baseObject drawPrimitives:primitives vertexStart:start vertexCount:count instanceCount:instanceCount];
  v12 = v22;
  *(v22 + 8) = -15049;
  v13 = BYTE9(v23);
  if (BYTE9(v23) > 0x18uLL)
  {
    v15 = *(*(&v21 + 1) + 24);
    v16 = BYTE10(v23);
    ++BYTE10(v23);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v22 + 1), v16 | 0x2800000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v23));
    BYTE9(v23) += 40;
  }

  *(v12 + 13) = v13;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v14 = var0;
  *(v14 + 1) = primitives;
  *(v14 + 2) = start;
  *(v14 + 3) = count;
  *(v14 + 4) = instanceCount;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  [(MTL4RenderCommandEncoderSPI *)self->_baseObject drawPrimitives:primitives vertexStart:start vertexCount:count];
  v10 = v20;
  *(v20 + 8) = -15050;
  v11 = BYTE9(v21);
  if (BYTE9(v21) > 0x20uLL)
  {
    v13 = *(*(&v19 + 1) + 24);
    v14 = BYTE10(v21);
    ++BYTE10(v21);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v20 + 1), v14 | 0x2000000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v21));
    BYTE9(v21) += 32;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = primitives;
  *(v12 + 2) = start;
  *(v12 + 3) = count;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)drawPrimitives:(unint64_t)primitives indirectBuffer:(unint64_t)buffer
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTL4RenderCommandEncoderSPI *)self->_baseObject drawPrimitives:primitives indirectBuffer:buffer];
  v8 = v18;
  *(v18 + 8) = -15051;
  v9 = BYTE9(v19);
  if (BYTE9(v19) > 0x28uLL)
  {
    v11 = *(*(&v17 + 1) + 24);
    v12 = BYTE10(v19);
    ++BYTE10(v19);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v18 + 1), v12 | 0x1800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v19));
    BYTE9(v19) += 24;
  }

  *(v8 + 13) = v9;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = primitives;
  *(v10 + 2) = buffer;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)drawMeshThreads:(id *)threads threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  v27 = *threads;
  v26 = *threadgroup;
  v25 = *meshThreadgroup;
  [(MTL4RenderCommandEncoderSPI *)baseObject drawMeshThreads:&v27 threadsPerObjectThreadgroup:&v26 threadsPerMeshThreadgroup:&v25];
  v11 = *(&v28 + 1);
  v12 = v29;
  *(v29 + 8) = -15052;
  v13 = *(v11 + 24);
  v14 = BYTE10(v30);
  ++BYTE10(v30);
  Bytes = GTTraceMemPool_allocateBytes(v13, *(&v29 + 1), v14 | 0x5000000000);
  *(v12 + 13) = v14;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  var2 = threads->var2;
  v19 = threadgroup->var2;
  v20 = meshThreadgroup->var2;
  *(Bytes + 2) = var0;
  v21 = *&threadgroup->var0;
  v22 = *&meshThreadgroup->var0;
  *(Bytes + 24) = *&threads->var0;
  *(Bytes + 5) = var2;
  *(Bytes + 3) = v21;
  *(Bytes + 8) = v19;
  *(Bytes + 72) = v22;
  *(Bytes + 11) = v20;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)drawMeshThreadgroupsWithIndirectBuffer:(unint64_t)buffer threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
  baseObject = self->_baseObject;
  v23 = *threadgroup;
  v22 = *meshThreadgroup;
  [(MTL4RenderCommandEncoderSPI *)baseObject drawMeshThreadgroupsWithIndirectBuffer:buffer threadsPerObjectThreadgroup:&v23 threadsPerMeshThreadgroup:&v22];
  v11 = v25;
  *(v25 + 8) = -15053;
  if (BYTE9(v26))
  {
    v12 = *(*(&v24 + 1) + 24);
    v13 = BYTE10(v26);
    ++BYTE10(v26);
    v14 = GTTraceMemPool_allocateBytes(v12, *(&v25 + 1), v13 | 0x4000000000) + 16;
  }

  else
  {
    LOBYTE(v13) = 0;
    BYTE9(v26) = 64;
    v14 = v11;
  }

  v11[13] = v13;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  var2 = threadgroup->var2;
  v18 = meshThreadgroup->var2;
  *v14 = var0;
  *(v14 + 1) = buffer;
  v19 = *&meshThreadgroup->var0;
  *(v14 + 1) = *&threadgroup->var0;
  *(v14 + 4) = var2;
  *(v14 + 40) = v19;
  *(v14 + 7) = v18;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
}

- (void)drawMeshThreadgroups:(id *)threadgroups threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  v27 = *threadgroups;
  v26 = *threadgroup;
  v25 = *meshThreadgroup;
  [(MTL4RenderCommandEncoderSPI *)baseObject drawMeshThreadgroups:&v27 threadsPerObjectThreadgroup:&v26 threadsPerMeshThreadgroup:&v25];
  v11 = *(&v28 + 1);
  v12 = v29;
  *(v29 + 8) = -15054;
  v13 = *(v11 + 24);
  v14 = BYTE10(v30);
  ++BYTE10(v30);
  Bytes = GTTraceMemPool_allocateBytes(v13, *(&v29 + 1), v14 | 0x5000000000);
  *(v12 + 13) = v14;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  var2 = threadgroups->var2;
  v19 = threadgroup->var2;
  v20 = meshThreadgroup->var2;
  *(Bytes + 2) = var0;
  v21 = *&threadgroup->var0;
  v22 = *&meshThreadgroup->var0;
  *(Bytes + 24) = *&threadgroups->var0;
  *(Bytes + 5) = var2;
  *(Bytes + 3) = v21;
  *(Bytes + 8) = v19;
  *(Bytes + 72) = v22;
  *(Bytes + 11) = v20;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length indirectBuffer:(unint64_t)indirectBuffer
{
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  [(MTL4RenderCommandEncoderSPI *)self->_baseObject drawIndexedPrimitives:primitives indexType:type indexBuffer:buffer indexBufferLength:length indirectBuffer:indirectBuffer];
  v14 = v24;
  *(v24 + 8) = -15055;
  v15 = BYTE9(v25);
  if (BYTE9(v25) > 0x10uLL)
  {
    v17 = *(*(&v23 + 1) + 24);
    v18 = BYTE10(v25);
    ++BYTE10(v25);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v24 + 1), v18 | 0x3000000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v25));
    BYTE9(v25) += 48;
  }

  *(v14 + 13) = v15;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v16 = var0;
  *(v16 + 1) = primitives;
  *(v16 + 2) = type;
  *(v16 + 3) = buffer;
  *(v16 + 4) = length;
  *(v16 + 5) = indirectBuffer;
  s();
  *v21 = v22;
  *(v21 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0
{
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v29);
  lengthCopy = length;
  instanceCountCopy = instanceCount;
  [(MTL4RenderCommandEncoderSPI *)self->_baseObject drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:buffer indexBufferLength:length instanceCount:instanceCount baseVertex:vertex baseInstance:instance];
  v18 = *(&v29 + 1);
  v19 = v30;
  *(v30 + 8) = -15056;
  v20 = *(v18 + 24);
  v21 = BYTE10(v31);
  ++BYTE10(v31);
  Bytes = GTTraceMemPool_allocateBytes(v20, *(&v30 + 1), v21 | 0x4800000000);
  *(v19 + 13) = v21;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *(Bytes + 2) = var0;
  *(Bytes + 3) = primitives;
  *(Bytes + 4) = count;
  *(Bytes + 5) = type;
  *(Bytes + 6) = buffer;
  *(Bytes + 7) = lengthCopy;
  *(Bytes + 8) = instanceCountCopy;
  *(Bytes + 9) = vertex;
  *(Bytes + 10) = instance;
  s();
  *v25 = v26;
  *(v25 + 8) = BYTE8(v31);
  *(v30 + 15) |= 8u;
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length instanceCount:(unint64_t)instanceCount
{
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  [(MTL4RenderCommandEncoderSPI *)self->_baseObject drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:buffer indexBufferLength:length instanceCount:instanceCount];
  v16 = v26;
  *(v26 + 8) = -15057;
  v17 = BYTE9(v27);
  if (BYTE9(v27) > 8uLL)
  {
    v19 = *(*(&v25 + 1) + 24);
    v20 = BYTE10(v27);
    ++BYTE10(v27);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v26 + 1), v20 | 0x3800000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v27));
    BYTE9(v27) += 56;
  }

  *(v16 + 13) = v17;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v18 = var0;
  *(v18 + 1) = primitives;
  *(v18 + 2) = count;
  *(v18 + 3) = type;
  *(v18 + 4) = buffer;
  *(v18 + 5) = length;
  *(v18 + 6) = instanceCount;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v27);
  *(v26 + 15) |= 8u;
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length
{
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  [(MTL4RenderCommandEncoderSPI *)self->_baseObject drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:buffer indexBufferLength:length];
  v14 = v24;
  *(v24 + 8) = -15058;
  v15 = BYTE9(v25);
  if (BYTE9(v25) > 0x10uLL)
  {
    v17 = *(*(&v23 + 1) + 24);
    v18 = BYTE10(v25);
    ++BYTE10(v25);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v24 + 1), v18 | 0x3000000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v25));
    BYTE9(v25) += 48;
  }

  *(v14 + 13) = v15;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v16 = var0;
  *(v16 + 1) = primitives;
  *(v16 + 2) = count;
  *(v16 + 3) = type;
  *(v16 + 4) = buffer;
  *(v16 + 5) = length;
  s();
  *v21 = v22;
  *(v21 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;
}

- (void)dispatchThreadsPerTile:(id *)tile
{
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  baseObject = self->_baseObject;
  v17 = *tile;
  [(MTL4RenderCommandEncoderSPI *)baseObject dispatchThreadsPerTile:&v17];
  v7 = v19;
  *(v19 + 8) = -15059;
  v8 = BYTE9(v20);
  if (BYTE9(v20) > 0x20uLL)
  {
    v10 = *(*(&v18 + 1) + 24);
    v11 = BYTE10(v20);
    ++BYTE10(v20);
    v9 = GTTraceMemPool_allocateBytes(v10, *(&v19 + 1), v11 | 0x2000000000) + 16;
    v8 = v11;
  }

  else
  {
    v9 = (v7 + BYTE9(v20));
    BYTE9(v20) += 32;
  }

  *(v7 + 13) = v8;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  var2 = tile->var2;
  *v9 = var0;
  *(v9 + 8) = *&tile->var0;
  *(v9 + 3) = var2;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (void)dealloc
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -15060;
  v5 = BYTE9(v16);
  if (BYTE9(v16) > 0x38uLL)
  {
    v7 = *(*(&v14 + 1) + 24);
    v8 = BYTE10(v16);
    ++BYTE10(v16);
    v6 = GTTraceMemPool_allocateBytes(v7, *(&v15 + 1), v8 | 0x800000000) + 16;
    v5 = v8;
  }

  else
  {
    v6 = (v4 + BYTE9(v16));
    BYTE9(v16) += 8;
  }

  *(v4 + 13) = v5;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v6 = var0;
  s();
  *v11 = v12;
  *(v11 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
  GTTraceContext_closeStream(self->_traceContext, &self->_traceStream->var0);
  v13.receiver = self;
  v13.super_class = CaptureMTL4RenderCommandEncoder;
  [(CaptureMTL4RenderCommandEncoder *)&v13 dealloc];
}

- (void)barrierAfterStages:(unint64_t)stages beforeQueueStages:(unint64_t)queueStages visibilityOptions:(unint64_t)options
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  [(MTL4RenderCommandEncoderSPI *)self->_baseObject barrierAfterStages:stages beforeQueueStages:queueStages visibilityOptions:options];
  v10 = v20;
  *(v20 + 8) = -14806;
  v11 = BYTE9(v21);
  if (BYTE9(v21) > 0x20uLL)
  {
    v13 = *(*(&v19 + 1) + 24);
    v14 = BYTE10(v21);
    ++BYTE10(v21);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v20 + 1), v14 | 0x2000000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v21));
    BYTE9(v21) += 32;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = stages;
  *(v12 + 2) = queueStages;
  *(v12 + 3) = options;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages visibilityOptions:(unint64_t)options
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  [(MTL4RenderCommandEncoderSPI *)self->_baseObject barrierAfterQueueStages:stages beforeStages:beforeStages visibilityOptions:options];
  v10 = v20;
  *(v20 + 8) = -14807;
  v11 = BYTE9(v21);
  if (BYTE9(v21) > 0x20uLL)
  {
    v13 = *(*(&v19 + 1) + 24);
    v14 = BYTE10(v21);
    ++BYTE10(v21);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v20 + 1), v14 | 0x2000000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v21));
    BYTE9(v21) += 32;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = stages;
  *(v12 + 2) = beforeStages;
  *(v12 + 3) = options;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)barrierAfterEncoderStages:(unint64_t)stages beforeEncoderStages:(unint64_t)encoderStages visibilityOptions:(unint64_t)options
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  [(MTL4RenderCommandEncoderSPI *)self->_baseObject barrierAfterEncoderStages:stages beforeEncoderStages:encoderStages visibilityOptions:options];
  v10 = v20;
  *(v20 + 8) = -14808;
  v11 = BYTE9(v21);
  if (BYTE9(v21) > 0x20uLL)
  {
    v13 = *(*(&v19 + 1) + 24);
    v14 = BYTE10(v21);
    ++BYTE10(v21);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v20 + 1), v14 | 0x2000000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v21));
    BYTE9(v21) += 32;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = stages;
  *(v12 + 2) = encoderStages;
  *(v12 + 3) = options;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTL4RenderCommandEncoderSPI *)self->_baseObject setLabel:labelCopy];
  v6 = v19;
  *(v19 + 8) = -15068;
  v7 = BYTE9(v20);
  if (BYTE9(v20) > 0x30uLL)
  {
    v9 = *(*(&v18 + 1) + 24);
    v10 = BYTE10(v20);
    ++BYTE10(v20);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v19 + 1), v10 | 0x1000000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v20));
    BYTE9(v20) += 16;
  }

  *(v6 + 13) = v7;
  traceStream = [(CaptureMTL4RenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  uTF8String = [labelCopy UTF8String];
  if (uTF8String)
  {
    uTF8String2 = [labelCopy UTF8String];
    v15 = strlen([labelCopy UTF8String]);
    LOBYTE(uTF8String) = GTTraceEncoder_storeBytes(&v18, uTF8String2, v15 + 1);
  }

  *v8 = var0;
  v8[8] = uTF8String;
  *(v8 + 9) = 0;
  *(v8 + 3) = 0;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTL4RenderCommandEncoderSPI *)baseObject conformsToProtocol:protocolCopy];

  if (&OBJC_PROTOCOL___CaptureMTLObject == protocolCopy)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = CaptureMTL4RenderCommandEncoder;
  v3 = [(CaptureMTL4RenderCommandEncoder *)&v7 description];
  v4 = [(MTL4RenderCommandEncoderSPI *)self->_baseObject description];
  v5 = [NSString stringWithFormat:@"%@ -> %@", v3, v4];

  return v5;
}

- (unint64_t)streamReference
{
  traceStream = self->_traceStream;
  if (traceStream)
  {
    return traceStream->var0;
  }

  else
  {
    return 0;
  }
}

- (void)touch
{
  traceStream = self->_traceStream;
  v3 = mach_absolute_time();
  if (traceStream)
  {
    v4 = atomic_load(&traceStream[1].var1);
    v5 = v4;
    do
    {
      atomic_compare_exchange_strong(&traceStream[1].var1, &v5, v4 & 0x3F | v3 & 0xFFFFFFFFFFFFFFC0);
      v6 = v5 == v4;
      v4 = v5;
    }

    while (!v6);
  }
}

- (CaptureMTL4RenderCommandEncoder)initWithBaseObject:(id)object captureCommandBuffer:(id)buffer
{
  objectCopy = object;
  bufferCopy = buffer;
  v18.receiver = self;
  v18.super_class = CaptureMTL4RenderCommandEncoder;
  v9 = [(CaptureMTL4RenderCommandEncoder *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, object);
    objc_storeStrong(&v10->_captureCommandBuffer, buffer);
    traceContext = [bufferCopy traceContext];
    v10->_traceContext = traceContext;
    v12 = DEVICEOBJECT(objectCopy);
    v10->_traceStream = GTTraceContext_openEncoderStream(traceContext, v12, *([bufferCopy traceStream] + 3));

    retainedObjects = [bufferCopy retainedObjects];
    retainedObjects = v10->_retainedObjects;
    v10->_retainedObjects = retainedObjects;

    v15 = v10->_retainedObjects;
    v16 = DEVICEOBJECT(v10->_baseObject);
    [(NSMutableSet *)v15 addObject:v16];
  }

  return v10;
}

@end