@interface CaptureMTLIndirectRenderCommand
- (BOOL)conformsToProtocol:(id)a3;
- (CaptureMTLIndirectRenderCommand)initWithBaseObject:(id)a3 captureContext:(GTTraceContext *)a4;
- (NSString)description;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)drawIndexedPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 controlPointIndexBuffer:(id)a8 controlPointIndexBufferOffset:(unint64_t)a9 instanceCount:(unint64_t)a10 baseInstance:(unint64_t)a11 tessellationFactorBuffer:(id)a12 tessellationFactorBufferOffset:(unint64_t)a13 tessellationFactorBufferInstanceStride:(unint64_t)a14;
- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseVertex:(int64_t)a9 baseInstance:(unint64_t)a10;
- (void)drawMeshThreadgroups:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5;
- (void)drawMeshThreads:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5;
- (void)drawPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseInstance:(unint64_t)a9 tessellationFactorBuffer:(id)a10 tessellationFactorBufferOffset:(unint64_t)a11 tessellationFactorBufferInstanceStride:(unint64_t)a12;
- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6 baseInstance:(unint64_t)a7;
- (void)reset;
- (void)setBlendColorRed:(float)a3 green:(float)a4 blue:(float)a5 alpha:(float)a6;
- (void)setCullMode:(unint64_t)a3;
- (void)setDepthBias:(float)a3 slopeScale:(float)a4 clamp:(float)a5;
- (void)setDepthClipMode:(unint64_t)a3;
- (void)setDepthStencilState:(id)a3;
- (void)setDepthTestMinBound:(float)a3 maxBound:(float)a4;
- (void)setFragmentBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setFrontFacingWinding:(unint64_t)a3;
- (void)setMeshBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setObjectBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setObjectThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setRenderPipelineState:(id)a3;
- (void)setScissorRect:(id *)a3;
- (void)setScissorRects:(id *)a3 count:(unint64_t)a4;
- (void)setTriangleFillMode:(unint64_t)a3;
- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6;
- (void)setViewport:(id *)a3;
- (void)setViewports:(id *)a3 count:(unint64_t)a4;
- (void)touch;
@end

@implementation CaptureMTLIndirectRenderCommand

- (void)setViewports:(id *)a3 count:(unint64_t)a4
{
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLIndirectRenderCommandSPI *)self->_baseObject setViewports:a3 count:a4];
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
  v13 = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (v13)
  {
    var0 = v13->var0;
  }

  else
  {
    var0 = 0;
  }

  v15 = GTTraceEncoder_storeBlob(&v18, a3, 48 * a4);
  *v10 = var0;
  *(v10 + 1) = a4;
  v10[16] = v15;
  *(v10 + 17) = 0;
  *(v10 + 5) = 0;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (void)setViewport:(id *)a3
{
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = self->_baseObject;
  v7 = *&a3->var2;
  v19[0] = *&a3->var0;
  v19[1] = v7;
  v19[2] = *&a3->var4;
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
  v13 = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (v13)
  {
    var0 = v13->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  v15 = *&a3->var2;
  v16 = *&a3->var4;
  *(v10 + 8) = *&a3->var0;
  *(v10 + 24) = v15;
  *(v10 + 40) = v16;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v22);
  *(v21 + 15) |= 8u;
}

- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 attributeStride:(unint64_t)a5 atIndex:(unint64_t)a6
{
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  v12 = a3;
  GTTraceContext_pushEncoderWithStream(traceContext, &v26);
  baseObject = self->_baseObject;
  v14 = [v12 baseObject];
  [(MTLIndirectRenderCommandSPI *)baseObject setVertexBuffer:v14 offset:a4 attributeStride:a5 atIndex:a6];

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
  v20 = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (v20)
  {
    var0 = v20->var0;
  }

  else
  {
    var0 = 0;
  }

  v22 = [v12 traceStream];

  if (v22)
  {
    v23 = *v22;
  }

  else
  {
    v23 = 0;
  }

  *v17 = var0;
  *(v17 + 1) = v23;
  *(v17 + 2) = a4;
  *(v17 + 3) = a5;
  *(v17 + 4) = a6;
  s();
  *v24 = v25;
  *(v24 + 8) = BYTE8(v28);
  *(v27 + 15) |= 8u;
}

- (void)setVertexBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  v10 = a3;
  GTTraceContext_pushEncoderWithStream(traceContext, &v24);
  baseObject = self->_baseObject;
  v12 = [v10 baseObject];
  [(MTLIndirectRenderCommandSPI *)baseObject setVertexBuffer:v12 offset:a4 atIndex:a5];

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
  v18 = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (v18)
  {
    var0 = v18->var0;
  }

  else
  {
    var0 = 0;
  }

  v20 = [v10 traceStream];

  if (v20)
  {
    v21 = *v20;
  }

  else
  {
    v21 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = a4;
  *(v15 + 3) = a5;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
}

- (void)setTriangleFillMode:(unint64_t)a3
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLIndirectRenderCommandSPI *)self->_baseObject setTriangleFillMode:a3];
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
  v11 = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (v11)
  {
    var0 = v11->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = a3;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setScissorRects:(id *)a3 count:(unint64_t)a4
{
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLIndirectRenderCommandSPI *)self->_baseObject setScissorRects:a3 count:a4];
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
  v13 = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (v13)
  {
    var0 = v13->var0;
  }

  else
  {
    var0 = 0;
  }

  v15 = GTTraceEncoder_storeBlob(&v18, a3, 32 * a4);
  *v10 = var0;
  *(v10 + 1) = a4;
  v10[16] = v15;
  *(v10 + 17) = 0;
  *(v10 + 5) = 0;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (void)setScissorRect:(id *)a3
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = self->_baseObject;
  v7 = *&a3->var2;
  v18[0] = *&a3->var0;
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
  v13 = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (v13)
  {
    var0 = v13->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  v15 = *&a3->var2;
  *(v10 + 8) = *&a3->var0;
  *(v10 + 24) = v15;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)setRenderPipelineState:(id)a3
{
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  v6 = a3;
  GTTraceContext_pushEncoderWithStream(traceContext, &v20);
  baseObject = self->_baseObject;
  v8 = [v6 baseObject];
  [(MTLIndirectRenderCommandSPI *)baseObject setRenderPipelineState:v8];

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
  v14 = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (v14)
  {
    var0 = v14->var0;
  }

  else
  {
    var0 = 0;
  }

  v16 = [v6 traceStream];

  if (v16)
  {
    v17 = *v16;
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

- (void)setObjectThreadgroupMemoryLength:(unint64_t)a3 atIndex:(unint64_t)a4
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLIndirectRenderCommandSPI *)self->_baseObject setObjectThreadgroupMemoryLength:a3 atIndex:a4];
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
  v13 = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (v13)
  {
    var0 = v13->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = a3;
  *(v10 + 2) = a4;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setObjectBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  v10 = a3;
  GTTraceContext_pushEncoderWithStream(traceContext, &v24);
  baseObject = self->_baseObject;
  v12 = [v10 baseObject];
  [(MTLIndirectRenderCommandSPI *)baseObject setObjectBuffer:v12 offset:a4 atIndex:a5];

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
  v18 = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (v18)
  {
    var0 = v18->var0;
  }

  else
  {
    var0 = 0;
  }

  v20 = [v10 traceStream];

  if (v20)
  {
    v21 = *v20;
  }

  else
  {
    v21 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = a4;
  *(v15 + 3) = a5;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
}

- (void)setMeshBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  v10 = a3;
  GTTraceContext_pushEncoderWithStream(traceContext, &v24);
  baseObject = self->_baseObject;
  v12 = [v10 baseObject];
  [(MTLIndirectRenderCommandSPI *)baseObject setMeshBuffer:v12 offset:a4 atIndex:a5];

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
  v18 = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (v18)
  {
    var0 = v18->var0;
  }

  else
  {
    var0 = 0;
  }

  v20 = [v10 traceStream];

  if (v20)
  {
    v21 = *v20;
  }

  else
  {
    v21 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = a4;
  *(v15 + 3) = a5;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
}

- (void)setFrontFacingWinding:(unint64_t)a3
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLIndirectRenderCommandSPI *)self->_baseObject setFrontFacingWinding:a3];
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
  v11 = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (v11)
  {
    var0 = v11->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = a3;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setFragmentBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  v10 = a3;
  GTTraceContext_pushEncoderWithStream(traceContext, &v24);
  baseObject = self->_baseObject;
  v12 = [v10 baseObject];
  [(MTLIndirectRenderCommandSPI *)baseObject setFragmentBuffer:v12 offset:a4 atIndex:a5];

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
  v18 = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (v18)
  {
    var0 = v18->var0;
  }

  else
  {
    var0 = 0;
  }

  v20 = [v10 traceStream];

  if (v20)
  {
    v21 = *v20;
  }

  else
  {
    v21 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = a4;
  *(v15 + 3) = a5;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
}

- (void)setDepthTestMinBound:(float)a3 maxBound:(float)a4
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  *&v8 = a3;
  *&v9 = a4;
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
  v15 = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (v15)
  {
    var0 = v15->var0;
  }

  else
  {
    var0 = 0;
  }

  *v12 = var0;
  *(v12 + 2) = a3;
  *(v12 + 3) = a4;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)setDepthStencilState:(id)a3
{
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  v6 = a3;
  GTTraceContext_pushEncoderWithStream(traceContext, &v20);
  baseObject = self->_baseObject;
  v8 = [v6 baseObject];
  [(MTLIndirectRenderCommandSPI *)baseObject setDepthStencilState:v8];

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
  v14 = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (v14)
  {
    var0 = v14->var0;
  }

  else
  {
    var0 = 0;
  }

  v16 = [v6 traceStream];

  if (v16)
  {
    v17 = *v16;
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

- (void)setDepthClipMode:(unint64_t)a3
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLIndirectRenderCommandSPI *)self->_baseObject setDepthClipMode:a3];
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
  v11 = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (v11)
  {
    var0 = v11->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = a3;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setDepthBias:(float)a3 slopeScale:(float)a4 clamp:(float)a5
{
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  *&v10 = a3;
  *&v11 = a4;
  *&v12 = a5;
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
  v18 = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (v18)
  {
    var0 = v18->var0;
  }

  else
  {
    var0 = 0;
  }

  *v15 = var0;
  *(v15 + 2) = a3;
  *(v15 + 3) = a4;
  *(v15 + 4) = a5;
  *(v15 + 5) = 0;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)setCullMode:(unint64_t)a3
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLIndirectRenderCommandSPI *)self->_baseObject setCullMode:a3];
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
  v11 = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (v11)
  {
    var0 = v11->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = a3;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setBlendColorRed:(float)a3 green:(float)a4 blue:(float)a5 alpha:(float)a6
{
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  *&v12 = a3;
  *&v13 = a4;
  *&v14 = a5;
  *&v15 = a6;
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
  v21 = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (v21)
  {
    var0 = v21->var0;
  }

  else
  {
    var0 = 0;
  }

  *v18 = var0;
  *(v18 + 2) = a3;
  *(v18 + 3) = a4;
  *(v18 + 4) = a5;
  *(v18 + 5) = a6;
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
  v9 = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (v9)
  {
    var0 = v9->var0;
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

- (void)drawPrimitives:(unint64_t)a3 vertexStart:(unint64_t)a4 vertexCount:(unint64_t)a5 instanceCount:(unint64_t)a6 baseInstance:(unint64_t)a7
{
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  [(MTLIndirectRenderCommandSPI *)self->_baseObject drawPrimitives:a3 vertexStart:a4 vertexCount:a5 instanceCount:a6 baseInstance:a7];
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
  v19 = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (v19)
  {
    var0 = v19->var0;
  }

  else
  {
    var0 = 0;
  }

  *v16 = var0;
  *(v16 + 1) = a3;
  *(v16 + 2) = a4;
  *(v16 + 3) = a5;
  *(v16 + 4) = a6;
  *(v16 + 5) = a7;
  s();
  *v21 = v22;
  *(v21 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;
}

- (void)drawPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseInstance:(unint64_t)a9 tessellationFactorBuffer:(id)a10 tessellationFactorBufferOffset:(unint64_t)a11 tessellationFactorBufferInstanceStride:(unint64_t)a12
{
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  v18 = a10;
  v19 = a6;
  GTTraceContext_pushEncoderWithStream(traceContext, &v39);
  baseObject = self->_baseObject;
  v21 = [v19 baseObject];
  v38 = v18;
  v22 = [v18 baseObject];
  [(MTLIndirectRenderCommandSPI *)baseObject drawPatches:a3 patchStart:a4 patchCount:a5 patchIndexBuffer:v21 patchIndexBufferOffset:a7 instanceCount:a8 baseInstance:a9 tessellationFactorBuffer:v22 tessellationFactorBufferOffset:a11 tessellationFactorBufferInstanceStride:a12];

  v23 = *(&v39 + 1);
  v24 = v40;
  *(v40 + 8) = -15952;
  v25 = *(v23 + 24);
  v26 = BYTE10(v41);
  ++BYTE10(v41);
  Bytes = GTTraceMemPool_allocateBytes(v25, *(&v40 + 1), v26 | 0x5800000000);
  *(v24 + 13) = v26;
  v28 = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (v28)
  {
    var0 = v28->var0;
  }

  else
  {
    var0 = 0;
  }

  v30 = [v19 traceStream];

  if (v30)
  {
    v30 = *v30;
  }

  v31 = [v38 traceStream];

  if (v31)
  {
    v32 = *v31;
  }

  else
  {
    v32 = 0;
  }

  *(Bytes + 2) = var0;
  *(Bytes + 3) = a3;
  *(Bytes + 4) = a4;
  *(Bytes + 5) = a5;
  *(Bytes + 6) = v30;
  *(Bytes + 7) = a7;
  *(Bytes + 8) = a8;
  *(Bytes + 9) = a9;
  *(Bytes + 10) = v32;
  *(Bytes + 11) = a11;
  *(Bytes + 12) = a12;
  s();
  *v33 = v34;
  *(v33 + 8) = BYTE8(v41);
  *(v40 + 15) |= 8u;
}

- (void)drawMeshThreads:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  v27 = *a3;
  v26 = *a4;
  v25 = *a5;
  [(MTLIndirectRenderCommandSPI *)baseObject drawMeshThreads:&v27 threadsPerObjectThreadgroup:&v26 threadsPerMeshThreadgroup:&v25];
  v11 = *(&v28 + 1);
  v12 = v29;
  *(v29 + 8) = -15265;
  v13 = *(v11 + 24);
  v14 = BYTE10(v30);
  ++BYTE10(v30);
  Bytes = GTTraceMemPool_allocateBytes(v13, *(&v29 + 1), v14 | 0x5000000000);
  *(v12 + 13) = v14;
  v16 = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (v16)
  {
    var0 = v16->var0;
  }

  else
  {
    var0 = 0;
  }

  var2 = a3->var2;
  v19 = a4->var2;
  v20 = a5->var2;
  *(Bytes + 2) = var0;
  v21 = *&a4->var0;
  v22 = *&a5->var0;
  *(Bytes + 24) = *&a3->var0;
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

- (void)drawMeshThreadgroups:(id *)a3 threadsPerObjectThreadgroup:(id *)a4 threadsPerMeshThreadgroup:(id *)a5
{
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  v27 = *a3;
  v26 = *a4;
  v25 = *a5;
  [(MTLIndirectRenderCommandSPI *)baseObject drawMeshThreadgroups:&v27 threadsPerObjectThreadgroup:&v26 threadsPerMeshThreadgroup:&v25];
  v11 = *(&v28 + 1);
  v12 = v29;
  *(v29 + 8) = -15266;
  v13 = *(v11 + 24);
  v14 = BYTE10(v30);
  ++BYTE10(v30);
  Bytes = GTTraceMemPool_allocateBytes(v13, *(&v29 + 1), v14 | 0x5000000000);
  *(v12 + 13) = v14;
  v16 = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (v16)
  {
    var0 = v16->var0;
  }

  else
  {
    var0 = 0;
  }

  var2 = a3->var2;
  v19 = a4->var2;
  v20 = a5->var2;
  *(Bytes + 2) = var0;
  v21 = *&a4->var0;
  v22 = *&a5->var0;
  *(Bytes + 24) = *&a3->var0;
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

- (void)drawIndexedPrimitives:(unint64_t)a3 indexCount:(unint64_t)a4 indexType:(unint64_t)a5 indexBuffer:(id)a6 indexBufferOffset:(unint64_t)a7 instanceCount:(unint64_t)a8 baseVertex:(int64_t)a9 baseInstance:(unint64_t)a10
{
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  v17 = a6;
  GTTraceContext_pushEncoderWithStream(traceContext, &v33);
  baseObject = self->_baseObject;
  v19 = [v17 baseObject];
  v32 = a8;
  [(MTLIndirectRenderCommandSPI *)baseObject drawIndexedPrimitives:a3 indexCount:a4 indexType:a5 indexBuffer:v19 indexBufferOffset:a7 instanceCount:a8 baseVertex:a9 baseInstance:a10];

  v20 = *(&v33 + 1);
  v21 = v34;
  *(v34 + 8) = -15948;
  v22 = *(v20 + 24);
  v23 = BYTE10(v35);
  ++BYTE10(v35);
  Bytes = GTTraceMemPool_allocateBytes(v22, *(&v34 + 1), v23 | 0x4800000000);
  *(v21 + 13) = v23;
  v25 = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (v25)
  {
    var0 = v25->var0;
  }

  else
  {
    var0 = 0;
  }

  v27 = [v17 traceStream];

  if (v27)
  {
    v28 = *v27;
  }

  else
  {
    v28 = 0;
  }

  *(Bytes + 2) = var0;
  *(Bytes + 3) = a3;
  *(Bytes + 4) = a4;
  *(Bytes + 5) = a5;
  *(Bytes + 6) = v28;
  *(Bytes + 7) = a7;
  *(Bytes + 8) = v32;
  *(Bytes + 9) = a9;
  *(Bytes + 10) = a10;
  s();
  *v29 = v30;
  *(v29 + 8) = BYTE8(v35);
  *(v34 + 15) |= 8u;
}

- (void)drawIndexedPatches:(unint64_t)a3 patchStart:(unint64_t)a4 patchCount:(unint64_t)a5 patchIndexBuffer:(id)a6 patchIndexBufferOffset:(unint64_t)a7 controlPointIndexBuffer:(id)a8 controlPointIndexBufferOffset:(unint64_t)a9 instanceCount:(unint64_t)a10 baseInstance:(unint64_t)a11 tessellationFactorBuffer:(id)a12 tessellationFactorBufferOffset:(unint64_t)a13 tessellationFactorBufferInstanceStride:(unint64_t)a14
{
  v47 = 0u;
  v48 = 0u;
  v46 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  v20 = a12;
  v21 = a8;
  v22 = a6;
  GTTraceContext_pushEncoderWithStream(traceContext, &v46);
  baseObject = self->_baseObject;
  v44 = v22;
  v24 = [v22 baseObject];
  v25 = [v21 baseObject];
  v45 = v20;
  v26 = [v20 baseObject];
  [MTLIndirectRenderCommandSPI drawIndexedPatches:"drawIndexedPatches:patchStart:patchCount:patchIndexBuffer:patchIndexBufferOffset:controlPointIndexBuffer:controlPointIndexBufferOffset:instanceCount:baseInstance:tessellationFactorBuffer:tessellationFactorBufferOffset:tessellationFactorBufferInstanceStride:" patchStart:a3 patchCount:a4 patchIndexBuffer:a5 patchIndexBufferOffset:v24 controlPointIndexBuffer:a9 controlPointIndexBufferOffset:a10 instanceCount:a11 baseInstance:v26 tessellationFactorBuffer:a13 tessellationFactorBufferOffset:a14 tessellationFactorBufferInstanceStride:?];

  v27 = *(&v46 + 1);
  v28 = v47;
  *(v47 + 8) = -15950;
  v29 = *(v27 + 24);
  v30 = BYTE10(v48);
  ++BYTE10(v48);
  Bytes = GTTraceMemPool_allocateBytes(v29, *(&v47 + 1), v30 | 0x6800000000);
  *(v28 + 13) = v30;
  v32 = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (v32)
  {
    var0 = v32->var0;
  }

  else
  {
    var0 = 0;
  }

  v34 = [v44 traceStream];

  if (v34)
  {
    v35 = *v34;
  }

  else
  {
    v35 = 0;
  }

  v36 = [v21 traceStream];

  if (v36)
  {
    v36 = *v36;
  }

  v37 = [v45 traceStream];

  if (v37)
  {
    v38 = *v37;
  }

  else
  {
    v38 = 0;
  }

  *(Bytes + 2) = var0;
  *(Bytes + 3) = a3;
  *(Bytes + 4) = a4;
  *(Bytes + 5) = a5;
  *(Bytes + 6) = v35;
  *(Bytes + 7) = a7;
  *(Bytes + 8) = v36;
  *(Bytes + 9) = a9;
  *(Bytes + 10) = a10;
  *(Bytes + 11) = a11;
  *(Bytes + 12) = v38;
  *(Bytes + 13) = a13;
  *(Bytes + 14) = a14;
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
  v9 = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (v9)
  {
    var0 = v9->var0;
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

- (BOOL)conformsToProtocol:(id)a3
{
  baseObject = self->_baseObject;
  v4 = a3;
  v5 = [(MTLIndirectRenderCommandSPI *)baseObject conformsToProtocol:v4];

  if (&OBJC_PROTOCOL___CaptureMTLObject == v4)
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

- (CaptureMTLIndirectRenderCommand)initWithBaseObject:(id)a3 captureContext:(GTTraceContext *)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = CaptureMTLIndirectRenderCommand;
  v8 = [(CaptureMTLIndirectRenderCommand *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_baseObject, a3);
    v9->_traceContext = a4;
    v10 = DEVICEOBJECT(v7);
    v9->_traceStream = GTTraceContext_openStream(a4, v10, v9);
  }

  return v9;
}

@end