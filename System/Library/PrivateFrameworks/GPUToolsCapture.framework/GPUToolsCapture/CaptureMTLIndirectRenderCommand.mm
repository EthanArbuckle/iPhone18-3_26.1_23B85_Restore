@interface CaptureMTLIndirectRenderCommand
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTLIndirectRenderCommand)initWithBaseObject:(id)object captureContext:(GTTraceContext *)context;
- (NSString)description;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)drawIndexedPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset instanceCount:(unint64_t)self0 baseInstance:(unint64_t)self1 tessellationFactorBuffer:(id)self2 tessellationFactorBufferOffset:(unint64_t)self3 tessellationFactorBufferInstanceStride:(unint64_t)self4;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0;
- (void)drawMeshThreadgroups:(id *)threadgroups threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawMeshThreads:(id *)threads threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance tessellationFactorBuffer:(id)self0 tessellationFactorBufferOffset:(unint64_t)self1 tessellationFactorBufferInstanceStride:(unint64_t)self2;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance;
- (void)reset;
- (void)setBlendColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha;
- (void)setCullMode:(unint64_t)mode;
- (void)setDepthBias:(float)bias slopeScale:(float)scale clamp:(float)clamp;
- (void)setDepthClipMode:(unint64_t)mode;
- (void)setDepthStencilState:(id)state;
- (void)setDepthTestMinBound:(float)bound maxBound:(float)maxBound;
- (void)setFragmentBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setFrontFacingWinding:(unint64_t)winding;
- (void)setMeshBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setObjectBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setObjectThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index;
- (void)setRenderPipelineState:(id)state;
- (void)setScissorRect:(id *)rect;
- (void)setScissorRects:(id *)rects count:(unint64_t)count;
- (void)setTriangleFillMode:(unint64_t)mode;
- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setViewport:(id *)viewport;
- (void)setViewports:(id *)viewports count:(unint64_t)count;
- (void)touch;
@end

@implementation CaptureMTLIndirectRenderCommand

- (void)setViewports:(id *)viewports count:(unint64_t)count
{
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLIndirectRenderCommandSPI *)self->_baseObject setViewports:viewports count:count];
  v8 = v19;
  *(v19 + 8) = -14915;
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
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
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
  [(MTLIndirectRenderCommandSPI *)baseObject setViewport:v19];
  v8 = v21;
  *(v21 + 8) = -14916;
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
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
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

- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  bufferCopy = buffer;
  GTTraceContext_pushEncoderWithStream(traceContext, &v26);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLIndirectRenderCommandSPI *)baseObject setVertexBuffer:baseObject offset:offset attributeStride:stride atIndex:index];

  v15 = v27;
  *(v27 + 8) = -15276;
  v16 = BYTE9(v28);
  if (BYTE9(v28) > 0x18uLL)
  {
    v18 = *(*(&v26 + 1) + 24);
    v19 = BYTE10(v28);
    ++BYTE10(v28);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v27 + 1), v19 | 0x2800000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v28));
    BYTE9(v28) += 40;
  }

  *(v15 + 13) = v16;
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [bufferCopy traceStream];

  if (traceStream2)
  {
    v23 = *traceStream2;
  }

  else
  {
    v23 = 0;
  }

  *v17 = var0;
  *(v17 + 1) = v23;
  *(v17 + 2) = offset;
  *(v17 + 3) = stride;
  *(v17 + 4) = index;
  s();
  *v24 = v25;
  *(v24 + 8) = BYTE8(v28);
  *(v27 + 15) |= 8u;
}

- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  bufferCopy = buffer;
  GTTraceContext_pushEncoderWithStream(traceContext, &v24);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLIndirectRenderCommandSPI *)baseObject setVertexBuffer:baseObject offset:offset atIndex:index];

  v13 = v25;
  *(v25 + 8) = -15955;
  v14 = BYTE9(v26);
  if (BYTE9(v26) > 0x20uLL)
  {
    v16 = *(*(&v24 + 1) + 24);
    v17 = BYTE10(v26);
    ++BYTE10(v26);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v25 + 1), v17 | 0x2000000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v26));
    BYTE9(v26) += 32;
  }

  *(v13 + 13) = v14;
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [bufferCopy traceStream];

  if (traceStream2)
  {
    v21 = *traceStream2;
  }

  else
  {
    v21 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = offset;
  *(v15 + 3) = index;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
}

- (void)setTriangleFillMode:(unint64_t)mode
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLIndirectRenderCommandSPI *)self->_baseObject setTriangleFillMode:mode];
  v6 = v16;
  *(v16 + 8) = -14917;
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
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
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

- (void)setScissorRects:(id *)rects count:(unint64_t)count
{
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLIndirectRenderCommandSPI *)self->_baseObject setScissorRects:rects count:count];
  v8 = v19;
  *(v19 + 8) = -14920;
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
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
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
  [(MTLIndirectRenderCommandSPI *)baseObject setScissorRect:v18];
  v8 = v20;
  *(v20 + 8) = -14921;
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
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
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
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  stateCopy = state;
  GTTraceContext_pushEncoderWithStream(traceContext, &v20);
  baseObject = self->_baseObject;
  baseObject = [stateCopy baseObject];
  [(MTLIndirectRenderCommandSPI *)baseObject setRenderPipelineState:baseObject];

  v9 = v21;
  *(v21 + 8) = -15956;
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
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
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
  [(MTLIndirectRenderCommandSPI *)self->_baseObject setObjectThreadgroupMemoryLength:length atIndex:index];
  v8 = v18;
  *(v18 + 8) = -15262;
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
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
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

- (void)setObjectBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  bufferCopy = buffer;
  GTTraceContext_pushEncoderWithStream(traceContext, &v24);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLIndirectRenderCommandSPI *)baseObject setObjectBuffer:baseObject offset:offset atIndex:index];

  v13 = v25;
  *(v25 + 8) = -15263;
  v14 = BYTE9(v26);
  if (BYTE9(v26) > 0x20uLL)
  {
    v16 = *(*(&v24 + 1) + 24);
    v17 = BYTE10(v26);
    ++BYTE10(v26);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v25 + 1), v17 | 0x2000000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v26));
    BYTE9(v26) += 32;
  }

  *(v13 + 13) = v14;
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [bufferCopy traceStream];

  if (traceStream2)
  {
    v21 = *traceStream2;
  }

  else
  {
    v21 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = offset;
  *(v15 + 3) = index;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
}

- (void)setMeshBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  bufferCopy = buffer;
  GTTraceContext_pushEncoderWithStream(traceContext, &v24);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLIndirectRenderCommandSPI *)baseObject setMeshBuffer:baseObject offset:offset atIndex:index];

  v13 = v25;
  *(v25 + 8) = -15264;
  v14 = BYTE9(v26);
  if (BYTE9(v26) > 0x20uLL)
  {
    v16 = *(*(&v24 + 1) + 24);
    v17 = BYTE10(v26);
    ++BYTE10(v26);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v25 + 1), v17 | 0x2000000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v26));
    BYTE9(v26) += 32;
  }

  *(v13 + 13) = v14;
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [bufferCopy traceStream];

  if (traceStream2)
  {
    v21 = *traceStream2;
  }

  else
  {
    v21 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = offset;
  *(v15 + 3) = index;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
}

- (void)setFrontFacingWinding:(unint64_t)winding
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLIndirectRenderCommandSPI *)self->_baseObject setFrontFacingWinding:winding];
  v6 = v16;
  *(v16 + 8) = -14922;
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
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
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

- (void)setFragmentBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  bufferCopy = buffer;
  GTTraceContext_pushEncoderWithStream(traceContext, &v24);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLIndirectRenderCommandSPI *)baseObject setFragmentBuffer:baseObject offset:offset atIndex:index];

  v13 = v25;
  *(v25 + 8) = -15954;
  v14 = BYTE9(v26);
  if (BYTE9(v26) > 0x20uLL)
  {
    v16 = *(*(&v24 + 1) + 24);
    v17 = BYTE10(v26);
    ++BYTE10(v26);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v25 + 1), v17 | 0x2000000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v26));
    BYTE9(v26) += 32;
  }

  *(v13 + 13) = v14;
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [bufferCopy traceStream];

  if (traceStream2)
  {
    v21 = *traceStream2;
  }

  else
  {
    v21 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = offset;
  *(v15 + 3) = index;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
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
  [(MTLIndirectRenderCommandSPI *)self->_baseObject setDepthTestMinBound:v8 maxBound:v9];
  v10 = v20;
  *(v20 + 8) = -14923;
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
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
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

- (void)setDepthStencilState:(id)state
{
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  stateCopy = state;
  GTTraceContext_pushEncoderWithStream(traceContext, &v20);
  baseObject = self->_baseObject;
  baseObject = [stateCopy baseObject];
  [(MTLIndirectRenderCommandSPI *)baseObject setDepthStencilState:baseObject];

  v9 = v21;
  *(v21 + 8) = -14924;
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
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
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
  [(MTLIndirectRenderCommandSPI *)self->_baseObject setDepthClipMode:mode];
  v6 = v16;
  *(v16 + 8) = -14925;
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
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
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
  [(MTLIndirectRenderCommandSPI *)self->_baseObject setDepthBias:v10 slopeScale:v11 clamp:v12];
  v13 = v23;
  *(v23 + 8) = -14926;
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
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
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
  [(MTLIndirectRenderCommandSPI *)self->_baseObject setCullMode:mode];
  v6 = v16;
  *(v16 + 8) = -14927;
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
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
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
  [(MTLIndirectRenderCommandSPI *)self->_baseObject setBlendColorRed:v12 green:v13 blue:v14 alpha:v15];
  v16 = v26;
  *(v26 + 8) = -14928;
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
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
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

- (void)reset
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  [(MTLIndirectRenderCommandSPI *)self->_baseObject reset];
  v4 = v14;
  *(v14 + 8) = -15906;
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
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
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
  [(MTLIndirectRenderCommandSPI *)self->_baseObject drawPrimitives:primitives vertexStart:start vertexCount:count instanceCount:instanceCount baseInstance:instance];
  v14 = v24;
  *(v24 + 8) = -15949;
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
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
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

- (void)drawPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance tessellationFactorBuffer:(id)self0 tessellationFactorBufferOffset:(unint64_t)self1 tessellationFactorBufferInstanceStride:(unint64_t)self2
{
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  factorBufferCopy = factorBuffer;
  bufferCopy = buffer;
  GTTraceContext_pushEncoderWithStream(traceContext, &v39);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  v38 = factorBufferCopy;
  baseObject2 = [factorBufferCopy baseObject];
  [(MTLIndirectRenderCommandSPI *)baseObject drawPatches:patches patchStart:start patchCount:count patchIndexBuffer:baseObject patchIndexBufferOffset:offset instanceCount:instanceCount baseInstance:instance tessellationFactorBuffer:baseObject2 tessellationFactorBufferOffset:bufferOffset tessellationFactorBufferInstanceStride:stride];

  v23 = *(&v39 + 1);
  v24 = v40;
  *(v40 + 8) = -15952;
  v25 = *(v23 + 24);
  v26 = BYTE10(v41);
  ++BYTE10(v41);
  Bytes = GTTraceMemPool_allocateBytes(v25, *(&v40 + 1), v26 | 0x5800000000);
  *(v24 + 13) = v26;
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [bufferCopy traceStream];

  if (traceStream2)
  {
    traceStream2 = *traceStream2;
  }

  traceStream3 = [v38 traceStream];

  if (traceStream3)
  {
    v32 = *traceStream3;
  }

  else
  {
    v32 = 0;
  }

  *(Bytes + 2) = var0;
  *(Bytes + 3) = patches;
  *(Bytes + 4) = start;
  *(Bytes + 5) = count;
  *(Bytes + 6) = traceStream2;
  *(Bytes + 7) = offset;
  *(Bytes + 8) = instanceCount;
  *(Bytes + 9) = instance;
  *(Bytes + 10) = v32;
  *(Bytes + 11) = bufferOffset;
  *(Bytes + 12) = stride;
  s();
  *v33 = v34;
  *(v33 + 8) = BYTE8(v41);
  *(v40 + 15) |= 8u;
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
  [(MTLIndirectRenderCommandSPI *)baseObject drawMeshThreads:&v27 threadsPerObjectThreadgroup:&v26 threadsPerMeshThreadgroup:&v25];
  v11 = *(&v28 + 1);
  v12 = v29;
  *(v29 + 8) = -15265;
  v13 = *(v11 + 24);
  v14 = BYTE10(v30);
  ++BYTE10(v30);
  Bytes = GTTraceMemPool_allocateBytes(v13, *(&v29 + 1), v14 | 0x5000000000);
  *(v12 + 13) = v14;
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
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
  [(MTLIndirectRenderCommandSPI *)baseObject drawMeshThreadgroups:&v27 threadsPerObjectThreadgroup:&v26 threadsPerMeshThreadgroup:&v25];
  v11 = *(&v28 + 1);
  v12 = v29;
  *(v29 + 8) = -15266;
  v13 = *(v11 + 24);
  v14 = BYTE10(v30);
  ++BYTE10(v30);
  Bytes = GTTraceMemPool_allocateBytes(v13, *(&v29 + 1), v14 | 0x5000000000);
  *(v12 + 13) = v14;
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
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

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0
{
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  bufferCopy = buffer;
  GTTraceContext_pushEncoderWithStream(traceContext, &v33);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  instanceCountCopy = instanceCount;
  [(MTLIndirectRenderCommandSPI *)baseObject drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:baseObject indexBufferOffset:offset instanceCount:instanceCount baseVertex:vertex baseInstance:instance];

  v20 = *(&v33 + 1);
  v21 = v34;
  *(v34 + 8) = -15948;
  v22 = *(v20 + 24);
  v23 = BYTE10(v35);
  ++BYTE10(v35);
  Bytes = GTTraceMemPool_allocateBytes(v22, *(&v34 + 1), v23 | 0x4800000000);
  *(v21 + 13) = v23;
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [bufferCopy traceStream];

  if (traceStream2)
  {
    v28 = *traceStream2;
  }

  else
  {
    v28 = 0;
  }

  *(Bytes + 2) = var0;
  *(Bytes + 3) = primitives;
  *(Bytes + 4) = count;
  *(Bytes + 5) = type;
  *(Bytes + 6) = v28;
  *(Bytes + 7) = offset;
  *(Bytes + 8) = instanceCountCopy;
  *(Bytes + 9) = vertex;
  *(Bytes + 10) = instance;
  s();
  *v29 = v30;
  *(v29 + 8) = BYTE8(v35);
  *(v34 + 15) |= 8u;
}

- (void)drawIndexedPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset instanceCount:(unint64_t)self0 baseInstance:(unint64_t)self1 tessellationFactorBuffer:(id)self2 tessellationFactorBufferOffset:(unint64_t)self3 tessellationFactorBufferInstanceStride:(unint64_t)self4
{
  v47 = 0u;
  v48 = 0u;
  v46 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  factorBufferCopy = factorBuffer;
  indexBufferCopy = indexBuffer;
  bufferCopy = buffer;
  GTTraceContext_pushEncoderWithStream(traceContext, &v46);
  baseObject = self->_baseObject;
  v44 = bufferCopy;
  baseObject = [bufferCopy baseObject];
  baseObject2 = [indexBufferCopy baseObject];
  v45 = factorBufferCopy;
  baseObject3 = [factorBufferCopy baseObject];
  [MTLIndirectRenderCommandSPI drawIndexedPatches:"drawIndexedPatches:patchStart:patchCount:patchIndexBuffer:patchIndexBufferOffset:controlPointIndexBuffer:controlPointIndexBufferOffset:instanceCount:baseInstance:tessellationFactorBuffer:tessellationFactorBufferOffset:tessellationFactorBufferInstanceStride:" patchStart:patches patchCount:start patchIndexBuffer:count patchIndexBufferOffset:baseObject controlPointIndexBuffer:bufferOffset controlPointIndexBufferOffset:instanceCount instanceCount:instance baseInstance:baseObject3 tessellationFactorBuffer:factorBufferOffset tessellationFactorBufferOffset:stride tessellationFactorBufferInstanceStride:?];

  v27 = *(&v46 + 1);
  v28 = v47;
  *(v47 + 8) = -15950;
  v29 = *(v27 + 24);
  v30 = BYTE10(v48);
  ++BYTE10(v48);
  Bytes = GTTraceMemPool_allocateBytes(v29, *(&v47 + 1), v30 | 0x6800000000);
  *(v28 + 13) = v30;
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [v44 traceStream];

  if (traceStream2)
  {
    v35 = *traceStream2;
  }

  else
  {
    v35 = 0;
  }

  traceStream3 = [indexBufferCopy traceStream];

  if (traceStream3)
  {
    traceStream3 = *traceStream3;
  }

  traceStream4 = [v45 traceStream];

  if (traceStream4)
  {
    v38 = *traceStream4;
  }

  else
  {
    v38 = 0;
  }

  *(Bytes + 2) = var0;
  *(Bytes + 3) = patches;
  *(Bytes + 4) = start;
  *(Bytes + 5) = count;
  *(Bytes + 6) = v35;
  *(Bytes + 7) = offset;
  *(Bytes + 8) = traceStream3;
  *(Bytes + 9) = bufferOffset;
  *(Bytes + 10) = instanceCount;
  *(Bytes + 11) = instance;
  *(Bytes + 12) = v38;
  *(Bytes + 13) = factorBufferOffset;
  *(Bytes + 14) = stride;
  s();
  *v39 = v40;
  *(v39 + 8) = BYTE8(v48);
  *(v47 + 15) |= 8u;
}

- (void)dealloc
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -15957;
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
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
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
  v13.super_class = CaptureMTLIndirectRenderCommand;
  [(CaptureMTLIndirectRenderCommand *)&v13 dealloc];
}

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTLIndirectRenderCommandSPI *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTLIndirectRenderCommand;
  v3 = [(CaptureMTLIndirectRenderCommand *)&v7 description];
  v4 = [(MTLIndirectRenderCommandSPI *)self->_baseObject description];
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

- (CaptureMTLIndirectRenderCommand)initWithBaseObject:(id)object captureContext:(GTTraceContext *)context
{
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = CaptureMTLIndirectRenderCommand;
  v8 = [(CaptureMTLIndirectRenderCommand *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_baseObject, object);
    v9->_traceContext = context;
    v10 = DEVICEOBJECT(objectCopy);
    v9->_traceStream = GTTraceContext_openStream(context, v10, v9);
  }

  return v9;
}

@end