@interface CaptureMTLArgumentEncoder
- (BOOL)conformsToProtocol:(id)a3;
- (CaptureMTLArgumentEncoder)initWithBaseObject:(id)a3 captureDevice:(id)a4;
- (NSString)description;
- (id)newArgumentEncoderForBufferAtIndex:(unint64_t)a3;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)setAccelerationStructure:(id)a3 atIndex:(unint64_t)a4;
- (void)setArgumentBuffer:(id)a3 offset:(unint64_t)a4;
- (void)setArgumentBuffer:(id)a3 startOffset:(unint64_t)a4 arrayElement:(unint64_t)a5;
- (void)setBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setComputePipelineState:(id)a3 atIndex:(unint64_t)a4;
- (void)setComputePipelineStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setDepthStencilState:(id)a3 atIndex:(unint64_t)a4;
- (void)setDepthStencilStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setIndirectCommandBuffer:(id)a3 atIndex:(unint64_t)a4;
- (void)setIndirectCommandBuffers:(const void *)a3 withRange:(_NSRange)a4;
- (void)setIntersectionFunctionTable:(id)a3 atIndex:(unint64_t)a4;
- (void)setIntersectionFunctionTables:(const void *)a3 withRange:(_NSRange)a4;
- (void)setLabel:(id)a3;
- (void)setRenderPipelineState:(id)a3 atIndex:(unint64_t)a4;
- (void)setRenderPipelineStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setVisibleFunctionTable:(id)a3 atIndex:(unint64_t)a4;
- (void)setVisibleFunctionTables:(const void *)a3 withRange:(_NSRange)a4;
- (void)touch;
@end

@implementation CaptureMTLArgumentEncoder

- (void)setVisibleFunctionTables:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    traceStream = self->_traceStream;
    v9 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v34);
    baseObject = self->_baseObject;
    v11 = 8 * length;
    __chkstk_darwin(v9, v12);
    bzero(&v34 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    if (length)
    {
      v13 = a3;
      v14 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      v15 = length;
      do
      {
        v16 = *v13++;
        *v14++ = [v16 baseObject];
        --v15;
      }

      while (v15);
    }

    [(MTLArgumentEncoder *)baseObject setVisibleFunctionTables:&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
    v17 = v35;
    *(v35 + 8) = -15536;
    v18 = BYTE9(v36);
    if (BYTE9(v36) > 0x20uLL)
    {
      v26 = *(*(&v34 + 1) + 24);
      v27 = BYTE10(v36);
      ++BYTE10(v36);
      v19 = GTTraceMemPool_allocateBytes(v26, *(&v35 + 1), v27 | 0x2000000000) + 16;
      v18 = v27;
    }

    else
    {
      v19 = (v17 + BYTE9(v36));
      BYTE9(v36) += 32;
    }

    *(v17 + 13) = v18;
    v28 = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (v28)
    {
      var0 = v28->var0;
    }

    else
    {
      var0 = 0;
    }

    __chkstk_darwin(v28, v29);
    bzero(&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    v31 = StreamArray(&v34, (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), a3, length);
    *v19 = var0;
    *(v19 + 1) = location;
    *(v19 + 2) = length;
    v19[24] = v31;
    *(v19 + 25) = 0;
    *(v19 + 7) = 0;
    s();
    *v32 = v33;
    *(v32 + 8) = BYTE8(v36);
    *(v35 + 15) |= 8u;
  }

  else
  {
    v20 = self->_baseObject;
    __chkstk_darwin(self, 8 * a4.length);
    v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v22, v21);
    if (length)
    {
      v23 = v22;
      v24 = length;
      do
      {
        v25 = *a3++;
        *v23 = [v25 baseObject];
        v23 += 8;
        --v24;
      }

      while (v24);
    }

    [(MTLArgumentEncoder *)v20 setVisibleFunctionTables:v22 withRange:location, length];
  }
}

- (void)setVisibleFunctionTable:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
    baseObject = self->_baseObject;
    v10 = [v7 baseObject];
    [(MTLArgumentEncoder *)baseObject setVisibleFunctionTable:v10 atIndex:a4];

    v11 = v25;
    *(v25 + 8) = -15537;
    v12 = BYTE9(v26);
    if (BYTE9(v26) > 0x28uLL)
    {
      v16 = *(*(&v24 + 1) + 24);
      v17 = BYTE10(v26);
      ++BYTE10(v26);
      v13 = GTTraceMemPool_allocateBytes(v16, *(&v25 + 1), v17 | 0x1800000000) + 16;
      v12 = v17;
    }

    else
    {
      v13 = (v11 + BYTE9(v26));
      BYTE9(v26) += 24;
    }

    *(v11 + 13) = v12;
    v18 = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (v18)
    {
      var0 = v18->var0;
    }

    else
    {
      var0 = 0;
    }

    v20 = [v7 traceStream];
    if (v20)
    {
      v21 = *v20;
    }

    else
    {
      v21 = 0;
    }

    *v13 = var0;
    *(v13 + 1) = v21;
    *(v13 + 2) = a4;
    s();
    *v22 = v23;
    *(v22 + 8) = BYTE8(v26);
    *(v25 + 15) |= 8u;
  }

  else
  {
    v14 = self->_baseObject;
    v15 = [v6 baseObject];
    [(MTLArgumentEncoder *)v14 setVisibleFunctionTable:v15 atIndex:a4];
  }
}

- (void)setTextures:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    traceStream = self->_traceStream;
    v9 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v34);
    baseObject = self->_baseObject;
    v11 = 8 * length;
    __chkstk_darwin(v9, v12);
    bzero(&v34 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    if (length)
    {
      v13 = a3;
      v14 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      v15 = length;
      do
      {
        v16 = *v13++;
        *v14++ = [v16 baseObject];
        --v15;
      }

      while (v15);
    }

    [(MTLArgumentEncoder *)baseObject setTextures:&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
    v17 = v35;
    *(v35 + 8) = -16057;
    v18 = BYTE9(v36);
    if (BYTE9(v36) > 0x20uLL)
    {
      v26 = *(*(&v34 + 1) + 24);
      v27 = BYTE10(v36);
      ++BYTE10(v36);
      v19 = GTTraceMemPool_allocateBytes(v26, *(&v35 + 1), v27 | 0x2000000000) + 16;
      v18 = v27;
    }

    else
    {
      v19 = (v17 + BYTE9(v36));
      BYTE9(v36) += 32;
    }

    *(v17 + 13) = v18;
    v28 = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (v28)
    {
      var0 = v28->var0;
    }

    else
    {
      var0 = 0;
    }

    __chkstk_darwin(v28, v29);
    bzero(&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    v31 = StreamArray(&v34, (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), a3, length);
    *v19 = var0;
    *(v19 + 1) = location;
    *(v19 + 2) = length;
    v19[24] = v31;
    *(v19 + 25) = 0;
    *(v19 + 7) = 0;
    s();
    *v32 = v33;
    *(v32 + 8) = BYTE8(v36);
    *(v35 + 15) |= 8u;
  }

  else
  {
    v20 = self->_baseObject;
    __chkstk_darwin(self, 8 * a4.length);
    v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v22, v21);
    if (length)
    {
      v23 = v22;
      v24 = length;
      do
      {
        v25 = *a3++;
        *v23 = [v25 baseObject];
        v23 += 8;
        --v24;
      }

      while (v24);
    }

    [(MTLArgumentEncoder *)v20 setTextures:v22 withRange:location, length];
  }
}

- (void)setTexture:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
    baseObject = self->_baseObject;
    v10 = [v7 baseObject];
    [(MTLArgumentEncoder *)baseObject setTexture:v10 atIndex:a4];

    v11 = v25;
    *(v25 + 8) = -16058;
    v12 = BYTE9(v26);
    if (BYTE9(v26) > 0x28uLL)
    {
      v16 = *(*(&v24 + 1) + 24);
      v17 = BYTE10(v26);
      ++BYTE10(v26);
      v13 = GTTraceMemPool_allocateBytes(v16, *(&v25 + 1), v17 | 0x1800000000) + 16;
      v12 = v17;
    }

    else
    {
      v13 = (v11 + BYTE9(v26));
      BYTE9(v26) += 24;
    }

    *(v11 + 13) = v12;
    v18 = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (v18)
    {
      var0 = v18->var0;
    }

    else
    {
      var0 = 0;
    }

    v20 = [v7 traceStream];
    if (v20)
    {
      v21 = *v20;
    }

    else
    {
      v21 = 0;
    }

    *v13 = var0;
    *(v13 + 1) = v21;
    *(v13 + 2) = a4;
    s();
    *v22 = v23;
    *(v22 + 8) = BYTE8(v26);
    *(v25 + 15) |= 8u;
  }

  else
  {
    v14 = self->_baseObject;
    v15 = [v6 baseObject];
    [(MTLArgumentEncoder *)v14 setTexture:v15 atIndex:a4];
  }
}

- (void)setSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    traceStream = self->_traceStream;
    v9 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v34);
    baseObject = self->_baseObject;
    v11 = 8 * length;
    __chkstk_darwin(v9, v12);
    bzero(&v34 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    if (length)
    {
      v13 = a3;
      v14 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      v15 = length;
      do
      {
        v16 = *v13++;
        *v14++ = [v16 baseObject];
        --v15;
      }

      while (v15);
    }

    [(MTLArgumentEncoder *)baseObject setSamplerStates:&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
    v17 = v35;
    *(v35 + 8) = -16055;
    v18 = BYTE9(v36);
    if (BYTE9(v36) > 0x20uLL)
    {
      v26 = *(*(&v34 + 1) + 24);
      v27 = BYTE10(v36);
      ++BYTE10(v36);
      v19 = GTTraceMemPool_allocateBytes(v26, *(&v35 + 1), v27 | 0x2000000000) + 16;
      v18 = v27;
    }

    else
    {
      v19 = (v17 + BYTE9(v36));
      BYTE9(v36) += 32;
    }

    *(v17 + 13) = v18;
    v28 = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (v28)
    {
      var0 = v28->var0;
    }

    else
    {
      var0 = 0;
    }

    __chkstk_darwin(v28, v29);
    bzero(&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    v31 = StreamArray(&v34, (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), a3, length);
    *v19 = var0;
    *(v19 + 1) = location;
    *(v19 + 2) = length;
    v19[24] = v31;
    *(v19 + 25) = 0;
    *(v19 + 7) = 0;
    s();
    *v32 = v33;
    *(v32 + 8) = BYTE8(v36);
    *(v35 + 15) |= 8u;
  }

  else
  {
    v20 = self->_baseObject;
    __chkstk_darwin(self, 8 * a4.length);
    v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v22, v21);
    if (length)
    {
      v23 = v22;
      v24 = length;
      do
      {
        v25 = *a3++;
        *v23 = [v25 baseObject];
        v23 += 8;
        --v24;
      }

      while (v24);
    }

    [(MTLArgumentEncoder *)v20 setSamplerStates:v22 withRange:location, length];
  }
}

- (void)setSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
    baseObject = self->_baseObject;
    v10 = [v7 baseObject];
    [(MTLArgumentEncoder *)baseObject setSamplerState:v10 atIndex:a4];

    v11 = v25;
    *(v25 + 8) = -16056;
    v12 = BYTE9(v26);
    if (BYTE9(v26) > 0x28uLL)
    {
      v16 = *(*(&v24 + 1) + 24);
      v17 = BYTE10(v26);
      ++BYTE10(v26);
      v13 = GTTraceMemPool_allocateBytes(v16, *(&v25 + 1), v17 | 0x1800000000) + 16;
      v12 = v17;
    }

    else
    {
      v13 = (v11 + BYTE9(v26));
      BYTE9(v26) += 24;
    }

    *(v11 + 13) = v12;
    v18 = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (v18)
    {
      var0 = v18->var0;
    }

    else
    {
      var0 = 0;
    }

    v20 = [v7 traceStream];
    if (v20)
    {
      v21 = *v20;
    }

    else
    {
      v21 = 0;
    }

    *v13 = var0;
    *(v13 + 1) = v21;
    *(v13 + 2) = a4;
    s();
    *v22 = v23;
    *(v22 + 8) = BYTE8(v26);
    *(v25 + 15) |= 8u;
  }

  else
  {
    v14 = self->_baseObject;
    v15 = [v6 baseObject];
    [(MTLArgumentEncoder *)v14 setSamplerState:v15 atIndex:a4];
  }
}

- (void)setRenderPipelineStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    traceStream = self->_traceStream;
    v9 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v34);
    baseObject = self->_baseObject;
    v11 = 8 * length;
    __chkstk_darwin(v9, v12);
    bzero(&v34 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    if (length)
    {
      v13 = a3;
      v14 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      v15 = length;
      do
      {
        v16 = *v13++;
        *v14++ = [v16 baseObject];
        --v15;
      }

      while (v15);
    }

    [(MTLArgumentEncoder *)baseObject setRenderPipelineStates:&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
    v17 = v35;
    *(v35 + 8) = -16001;
    v18 = BYTE9(v36);
    if (BYTE9(v36) > 0x20uLL)
    {
      v26 = *(*(&v34 + 1) + 24);
      v27 = BYTE10(v36);
      ++BYTE10(v36);
      v19 = GTTraceMemPool_allocateBytes(v26, *(&v35 + 1), v27 | 0x2000000000) + 16;
      v18 = v27;
    }

    else
    {
      v19 = (v17 + BYTE9(v36));
      BYTE9(v36) += 32;
    }

    *(v17 + 13) = v18;
    v28 = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (v28)
    {
      var0 = v28->var0;
    }

    else
    {
      var0 = 0;
    }

    __chkstk_darwin(v28, v29);
    bzero(&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    v31 = StreamArray(&v34, (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), a3, length);
    *v19 = var0;
    *(v19 + 1) = location;
    *(v19 + 2) = length;
    v19[24] = v31;
    *(v19 + 25) = 0;
    *(v19 + 7) = 0;
    s();
    *v32 = v33;
    *(v32 + 8) = BYTE8(v36);
    *(v35 + 15) |= 8u;
  }

  else
  {
    v20 = self->_baseObject;
    __chkstk_darwin(self, 8 * a4.length);
    v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v22, v21);
    if (length)
    {
      v23 = v22;
      v24 = length;
      do
      {
        v25 = *a3++;
        *v23 = [v25 baseObject];
        v23 += 8;
        --v24;
      }

      while (v24);
    }

    [(MTLArgumentEncoder *)v20 setRenderPipelineStates:v22 withRange:location, length];
  }
}

- (void)setRenderPipelineState:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
    baseObject = self->_baseObject;
    v10 = [v7 baseObject];
    [(MTLArgumentEncoder *)baseObject setRenderPipelineState:v10 atIndex:a4];

    v11 = v25;
    *(v25 + 8) = -16002;
    v12 = BYTE9(v26);
    if (BYTE9(v26) > 0x28uLL)
    {
      v16 = *(*(&v24 + 1) + 24);
      v17 = BYTE10(v26);
      ++BYTE10(v26);
      v13 = GTTraceMemPool_allocateBytes(v16, *(&v25 + 1), v17 | 0x1800000000) + 16;
      v12 = v17;
    }

    else
    {
      v13 = (v11 + BYTE9(v26));
      BYTE9(v26) += 24;
    }

    *(v11 + 13) = v12;
    v18 = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (v18)
    {
      var0 = v18->var0;
    }

    else
    {
      var0 = 0;
    }

    v20 = [v7 traceStream];
    if (v20)
    {
      v21 = *v20;
    }

    else
    {
      v21 = 0;
    }

    *v13 = var0;
    *(v13 + 1) = v21;
    *(v13 + 2) = a4;
    s();
    *v22 = v23;
    *(v22 + 8) = BYTE8(v26);
    *(v25 + 15) |= 8u;
  }

  else
  {
    v14 = self->_baseObject;
    v15 = [v6 baseObject];
    [(MTLArgumentEncoder *)v14 setRenderPipelineState:v15 atIndex:a4];
  }
}

- (void)setIntersectionFunctionTables:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    traceStream = self->_traceStream;
    v9 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v34);
    baseObject = self->_baseObject;
    v11 = 8 * length;
    __chkstk_darwin(v9, v12);
    bzero(&v34 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    if (length)
    {
      v13 = a3;
      v14 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      v15 = length;
      do
      {
        v16 = *v13++;
        *v14++ = [v16 baseObject];
        --v15;
      }

      while (v15);
    }

    [(MTLArgumentEncoder *)baseObject setIntersectionFunctionTables:&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
    v17 = v35;
    *(v35 + 8) = -15538;
    v18 = BYTE9(v36);
    if (BYTE9(v36) > 0x20uLL)
    {
      v26 = *(*(&v34 + 1) + 24);
      v27 = BYTE10(v36);
      ++BYTE10(v36);
      v19 = GTTraceMemPool_allocateBytes(v26, *(&v35 + 1), v27 | 0x2000000000) + 16;
      v18 = v27;
    }

    else
    {
      v19 = (v17 + BYTE9(v36));
      BYTE9(v36) += 32;
    }

    *(v17 + 13) = v18;
    v28 = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (v28)
    {
      var0 = v28->var0;
    }

    else
    {
      var0 = 0;
    }

    __chkstk_darwin(v28, v29);
    bzero(&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    v31 = StreamArray(&v34, (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), a3, length);
    *v19 = var0;
    *(v19 + 1) = location;
    *(v19 + 2) = length;
    v19[24] = v31;
    *(v19 + 25) = 0;
    *(v19 + 7) = 0;
    s();
    *v32 = v33;
    *(v32 + 8) = BYTE8(v36);
    *(v35 + 15) |= 8u;
  }

  else
  {
    v20 = self->_baseObject;
    __chkstk_darwin(self, 8 * a4.length);
    v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v22, v21);
    if (length)
    {
      v23 = v22;
      v24 = length;
      do
      {
        v25 = *a3++;
        *v23 = [v25 baseObject];
        v23 += 8;
        --v24;
      }

      while (v24);
    }

    [(MTLArgumentEncoder *)v20 setIntersectionFunctionTables:v22 withRange:location, length];
  }
}

- (void)setIntersectionFunctionTable:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
    baseObject = self->_baseObject;
    v10 = [v7 baseObject];
    [(MTLArgumentEncoder *)baseObject setIntersectionFunctionTable:v10 atIndex:a4];

    v11 = v25;
    *(v25 + 8) = -15539;
    v12 = BYTE9(v26);
    if (BYTE9(v26) > 0x28uLL)
    {
      v16 = *(*(&v24 + 1) + 24);
      v17 = BYTE10(v26);
      ++BYTE10(v26);
      v13 = GTTraceMemPool_allocateBytes(v16, *(&v25 + 1), v17 | 0x1800000000) + 16;
      v12 = v17;
    }

    else
    {
      v13 = (v11 + BYTE9(v26));
      BYTE9(v26) += 24;
    }

    *(v11 + 13) = v12;
    v18 = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (v18)
    {
      var0 = v18->var0;
    }

    else
    {
      var0 = 0;
    }

    v20 = [v7 traceStream];
    if (v20)
    {
      v21 = *v20;
    }

    else
    {
      v21 = 0;
    }

    *v13 = var0;
    *(v13 + 1) = v21;
    *(v13 + 2) = a4;
    s();
    *v22 = v23;
    *(v22 + 8) = BYTE8(v26);
    *(v25 + 15) |= 8u;
  }

  else
  {
    v14 = self->_baseObject;
    v15 = [v6 baseObject];
    [(MTLArgumentEncoder *)v14 setIntersectionFunctionTable:v15 atIndex:a4];
  }
}

- (void)setIndirectCommandBuffers:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    traceStream = self->_traceStream;
    v9 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v34);
    baseObject = self->_baseObject;
    v11 = 8 * length;
    __chkstk_darwin(v9, v12);
    bzero(&v34 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    if (length)
    {
      v13 = a3;
      v14 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      v15 = length;
      do
      {
        v16 = *v13++;
        *v14++ = [v16 baseObject];
        --v15;
      }

      while (v15);
    }

    [(MTLArgumentEncoder *)baseObject setIndirectCommandBuffers:&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
    v17 = v35;
    *(v35 + 8) = -15915;
    v18 = BYTE9(v36);
    if (BYTE9(v36) > 0x20uLL)
    {
      v26 = *(*(&v34 + 1) + 24);
      v27 = BYTE10(v36);
      ++BYTE10(v36);
      v19 = GTTraceMemPool_allocateBytes(v26, *(&v35 + 1), v27 | 0x2000000000) + 16;
      v18 = v27;
    }

    else
    {
      v19 = (v17 + BYTE9(v36));
      BYTE9(v36) += 32;
    }

    *(v17 + 13) = v18;
    v28 = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (v28)
    {
      var0 = v28->var0;
    }

    else
    {
      var0 = 0;
    }

    __chkstk_darwin(v28, v29);
    bzero(&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    v31 = StreamArray(&v34, (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), a3, length);
    *v19 = var0;
    *(v19 + 1) = location;
    *(v19 + 2) = length;
    v19[24] = v31;
    *(v19 + 25) = 0;
    *(v19 + 7) = 0;
    s();
    *v32 = v33;
    *(v32 + 8) = BYTE8(v36);
    *(v35 + 15) |= 8u;
  }

  else
  {
    v20 = self->_baseObject;
    __chkstk_darwin(self, 8 * a4.length);
    v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v22, v21);
    if (length)
    {
      v23 = v22;
      v24 = length;
      do
      {
        v25 = *a3++;
        *v23 = [v25 baseObject];
        v23 += 8;
        --v24;
      }

      while (v24);
    }

    [(MTLArgumentEncoder *)v20 setIndirectCommandBuffers:v22 withRange:location, length];
  }
}

- (void)setIndirectCommandBuffer:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
    baseObject = self->_baseObject;
    v10 = [v7 baseObject];
    [(MTLArgumentEncoder *)baseObject setIndirectCommandBuffer:v10 atIndex:a4];

    v11 = v25;
    *(v25 + 8) = -15916;
    v12 = BYTE9(v26);
    if (BYTE9(v26) > 0x28uLL)
    {
      v16 = *(*(&v24 + 1) + 24);
      v17 = BYTE10(v26);
      ++BYTE10(v26);
      v13 = GTTraceMemPool_allocateBytes(v16, *(&v25 + 1), v17 | 0x1800000000) + 16;
      v12 = v17;
    }

    else
    {
      v13 = (v11 + BYTE9(v26));
      BYTE9(v26) += 24;
    }

    *(v11 + 13) = v12;
    v18 = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (v18)
    {
      var0 = v18->var0;
    }

    else
    {
      var0 = 0;
    }

    v20 = [v7 traceStream];
    if (v20)
    {
      v21 = *v20;
    }

    else
    {
      v21 = 0;
    }

    *v13 = var0;
    *(v13 + 1) = v21;
    *(v13 + 2) = a4;
    s();
    *v22 = v23;
    *(v22 + 8) = BYTE8(v26);
    *(v25 + 15) |= 8u;
  }

  else
  {
    v14 = self->_baseObject;
    v15 = [v6 baseObject];
    [(MTLArgumentEncoder *)v14 setIndirectCommandBuffer:v15 atIndex:a4];
  }
}

- (void)setDepthStencilStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    traceStream = self->_traceStream;
    v9 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v34);
    baseObject = self->_baseObject;
    v11 = 8 * length;
    __chkstk_darwin(v9, v12);
    bzero(&v34 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    if (length)
    {
      v13 = a3;
      v14 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      v15 = length;
      do
      {
        v16 = *v13++;
        *v14++ = [v16 baseObject];
        --v15;
      }

      while (v15);
    }

    [(MTLArgumentEncoder *)baseObject setDepthStencilStates:&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
    v17 = v35;
    *(v35 + 8) = -15204;
    v18 = BYTE9(v36);
    if (BYTE9(v36) > 0x20uLL)
    {
      v26 = *(*(&v34 + 1) + 24);
      v27 = BYTE10(v36);
      ++BYTE10(v36);
      v19 = GTTraceMemPool_allocateBytes(v26, *(&v35 + 1), v27 | 0x2000000000) + 16;
      v18 = v27;
    }

    else
    {
      v19 = (v17 + BYTE9(v36));
      BYTE9(v36) += 32;
    }

    *(v17 + 13) = v18;
    v28 = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (v28)
    {
      var0 = v28->var0;
    }

    else
    {
      var0 = 0;
    }

    __chkstk_darwin(v28, v29);
    bzero(&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    v31 = StreamArray(&v34, (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), a3, length);
    *v19 = var0;
    *(v19 + 1) = location;
    *(v19 + 2) = length;
    v19[24] = v31;
    *(v19 + 25) = 0;
    *(v19 + 7) = 0;
    s();
    *v32 = v33;
    *(v32 + 8) = BYTE8(v36);
    *(v35 + 15) |= 8u;
  }

  else
  {
    v20 = self->_baseObject;
    __chkstk_darwin(self, 8 * a4.length);
    v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v22, v21);
    if (length)
    {
      v23 = v22;
      v24 = length;
      do
      {
        v25 = *a3++;
        *v23 = [v25 baseObject];
        v23 += 8;
        --v24;
      }

      while (v24);
    }

    [(MTLArgumentEncoder *)v20 setDepthStencilStates:v22 withRange:location, length];
  }
}

- (void)setDepthStencilState:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
    baseObject = self->_baseObject;
    v10 = [v7 baseObject];
    [(MTLArgumentEncoder *)baseObject setDepthStencilState:v10 atIndex:a4];

    v11 = v25;
    *(v25 + 8) = -15205;
    v12 = BYTE9(v26);
    if (BYTE9(v26) > 0x28uLL)
    {
      v16 = *(*(&v24 + 1) + 24);
      v17 = BYTE10(v26);
      ++BYTE10(v26);
      v13 = GTTraceMemPool_allocateBytes(v16, *(&v25 + 1), v17 | 0x1800000000) + 16;
      v12 = v17;
    }

    else
    {
      v13 = (v11 + BYTE9(v26));
      BYTE9(v26) += 24;
    }

    *(v11 + 13) = v12;
    v18 = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (v18)
    {
      var0 = v18->var0;
    }

    else
    {
      var0 = 0;
    }

    v20 = [v7 traceStream];
    if (v20)
    {
      v21 = *v20;
    }

    else
    {
      v21 = 0;
    }

    *v13 = var0;
    *(v13 + 1) = v21;
    *(v13 + 2) = a4;
    s();
    *v22 = v23;
    *(v22 + 8) = BYTE8(v26);
    *(v25 + 15) |= 8u;
  }

  else
  {
    v14 = self->_baseObject;
    v15 = [v6 baseObject];
    [(MTLArgumentEncoder *)v14 setDepthStencilState:v15 atIndex:a4];
  }
}

- (void)setComputePipelineStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  baseObject = self->_baseObject;
  __chkstk_darwin(self, 8 * a4.length);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v9, v8);
  if (length)
  {
    v10 = v9;
    v11 = length;
    do
    {
      v12 = *a3++;
      *v10 = [v12 baseObject];
      v10 += 8;
      --v11;
    }

    while (v11);
  }

  [(MTLArgumentEncoder *)baseObject setComputePipelineStates:v9 withRange:location, length];
}

- (void)setComputePipelineState:(id)a3 atIndex:(unint64_t)a4
{
  baseObject = self->_baseObject;
  v6 = [a3 baseObject];
  [(MTLArgumentEncoder *)baseObject setComputePipelineState:v6 atIndex:a4];
}

- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v39 = a5.location;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    traceStream = self->_traceStream;
    v11 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v40);
    baseObject = self->_baseObject;
    v13 = 8 * length;
    __chkstk_darwin(v11, v14);
    bzero(&v38 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    if (length)
    {
      v15 = a3;
      v16 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
      v17 = length;
      do
      {
        v18 = *v15++;
        *v16++ = [v18 baseObject];
        --v17;
      }

      while (v17);
    }

    v19 = v39;
    [(MTLArgumentEncoder *)baseObject setBuffers:&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) offsets:a4 withRange:v39, length];
    v20 = v41;
    *(v41 + 8) = -16059;
    v21 = BYTE9(v42);
    if (BYTE9(v42) > 0x20uLL)
    {
      v29 = *(*(&v40 + 1) + 24);
      v30 = BYTE10(v42);
      ++BYTE10(v42);
      v22 = GTTraceMemPool_allocateBytes(v29, *(&v41 + 1), v30 | 0x2000000000) + 16;
      v21 = v30;
    }

    else
    {
      v22 = (v20 + BYTE9(v42));
      BYTE9(v42) += 32;
    }

    *(v20 + 13) = v21;
    v31 = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (v31)
    {
      var0 = v31->var0;
    }

    else
    {
      var0 = 0;
    }

    __chkstk_darwin(v31, v32);
    bzero(&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    v34 = StreamArray(&v40, (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0)), a3, length);
    v35 = GTTraceEncoder_storeBytes(&v40, a4, 8 * length);
    *v22 = var0;
    *(v22 + 1) = v19;
    *(v22 + 2) = length;
    v22[24] = v34;
    v22[25] = v35;
    *(v22 + 26) = 0;
    *(v22 + 15) = 0;
    s();
    *v36 = v37;
    *(v36 + 8) = BYTE8(v42);
    *(v41 + 15) |= 8u;
  }

  else
  {
    v23 = self->_baseObject;
    __chkstk_darwin(self, 8 * a5.length);
    v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v25, v24);
    if (length)
    {
      v26 = v25;
      v27 = length;
      do
      {
        v28 = *a3++;
        *v26 = [v28 baseObject];
        v26 += 8;
        --v27;
      }

      while (v27);
    }

    [(MTLArgumentEncoder *)v23 setBuffers:v25 offsets:a4 withRange:location, length];
  }
}

- (void)setBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v8 = a3;
  v9 = v8;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v26);
    baseObject = self->_baseObject;
    v12 = [v9 baseObject];
    [(MTLArgumentEncoder *)baseObject setBuffer:v12 offset:a4 atIndex:a5];

    v13 = v27;
    *(v27 + 8) = -16060;
    v14 = BYTE9(v28);
    if (BYTE9(v28) > 0x20uLL)
    {
      v18 = *(*(&v26 + 1) + 24);
      v19 = BYTE10(v28);
      ++BYTE10(v28);
      v15 = GTTraceMemPool_allocateBytes(v18, *(&v27 + 1), v19 | 0x2000000000) + 16;
      v14 = v19;
    }

    else
    {
      v15 = (v13 + BYTE9(v28));
      BYTE9(v28) += 32;
    }

    *(v13 + 13) = v14;
    v20 = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (v20)
    {
      var0 = v20->var0;
    }

    else
    {
      var0 = 0;
    }

    v22 = [v9 traceStream];
    if (v22)
    {
      v23 = *v22;
    }

    else
    {
      v23 = 0;
    }

    *v15 = var0;
    *(v15 + 1) = v23;
    *(v15 + 2) = a4;
    *(v15 + 3) = a5;
    s();
    *v24 = v25;
    *(v24 + 8) = BYTE8(v28);
    *(v27 + 15) |= 8u;
  }

  else
  {
    v16 = self->_baseObject;
    v17 = [v8 baseObject];
    [(MTLArgumentEncoder *)v16 setBuffer:v17 offset:a4 atIndex:a5];
  }
}

- (id)newArgumentEncoderForBufferAtIndex:(unint64_t)a3
{
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  traceContext = self->_traceContext;
  v25 = traceContext;
  *&v26 = 0;
  *(&v26 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v9;
  *&v27 = v8;
  BYTE8(v27) = *(v6 + 8);
  *(&v27 + 9) = 16400;
  *(&v27 + 11) = 0;
  HIBYTE(v27) = 0;
  v10 = [(MTLArgumentEncoder *)self->_baseObject newArgumentEncoderForBufferAtIndex:?];
  if (v10)
  {
    v11 = [CaptureMTLArgumentEncoder alloc];
    v12 = [(CaptureMTLArgumentEncoder *)self device];
    v13 = [(CaptureMTLArgumentEncoder *)v11 initWithBaseObject:v10 captureDevice:v12];
  }

  else
  {
    v13 = 0;
  }

  GTTraceEncoder_setStream(&v25, [(CaptureMTLArgumentEncoder *)v13 traceStream]);
  v14 = v26;
  *(v26 + 8) = -16053;
  v15 = BYTE9(v27);
  if (BYTE9(v27) > 0x28uLL)
  {
    v17 = *(*(&v25 + 1) + 24);
    v18 = BYTE10(v27);
    ++BYTE10(v27);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v26 + 1), v18 | 0x1800000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v27));
    BYTE9(v27) += 24;
  }

  *(v14 + 13) = v15;
  v19 = [(CaptureMTLArgumentEncoder *)self traceStream];
  if (v19)
  {
    var0 = v19->var0;
  }

  else
  {
    var0 = 0;
  }

  v21 = [(CaptureMTLArgumentEncoder *)v13 traceStream];
  if (v21)
  {
    v22 = v21->var0;
  }

  else
  {
    v22 = 0;
  }

  *v16 = var0;
  *(v16 + 1) = v22;
  *(v16 + 2) = a3;
  v23 = v26;
  *v7 = v27;
  *(v7 + 8) = BYTE8(v27);
  *(v23 + 15) |= 8u;

  return v13;
}

- (void)dealloc
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -16062;
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
  v9 = [(CaptureMTLArgumentEncoder *)self traceStream];
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
  v13.super_class = CaptureMTLArgumentEncoder;
  [(CaptureMTLArgumentEncoder *)&v13 dealloc];
}

- (void)setLabel:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLArgumentEncoder *)self->_baseObject setLabel:v4];
  v6 = v19;
  *(v19 + 8) = -16063;
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
  v11 = [(CaptureMTLArgumentEncoder *)self traceStream];
  if (v11)
  {
    var0 = v11->var0;
  }

  else
  {
    var0 = 0;
  }

  v13 = [v4 UTF8String];
  if (v13)
  {
    v14 = [v4 UTF8String];
    v15 = strlen([v4 UTF8String]);
    LOBYTE(v13) = GTTraceEncoder_storeBytes(&v18, v14, v15 + 1);
  }

  *v8 = var0;
  v8[8] = v13;
  *(v8 + 9) = 0;
  *(v8 + 3) = 0;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (BOOL)conformsToProtocol:(id)a3
{
  baseObject = self->_baseObject;
  v4 = a3;
  v5 = [(MTLArgumentEncoder *)baseObject conformsToProtocol:v4];

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
  v7.super_class = CaptureMTLArgumentEncoder;
  v3 = [(CaptureMTLArgumentEncoder *)&v7 description];
  v4 = [(MTLArgumentEncoder *)self->_baseObject description];
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

- (void)setAccelerationStructure:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 device];
    v9 = [v8 captureRaytracingEnabled];

    if ((v9 & 1) == 0)
    {
      GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLArgumentEncoder_setAccelerationStructure_atIndex", "Raytracing", 0, 0);
      goto LABEL_7;
    }
  }

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) != 2)
  {
LABEL_7:
    baseObject = self->_baseObject;
    v17 = [v7 baseObject];
    [(MTLArgumentEncoder *)baseObject setAccelerationStructure:v17 atIndex:a4];

    goto LABEL_16;
  }

  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v26);
  v11 = self->_baseObject;
  v12 = [v7 baseObject];
  [(MTLArgumentEncoder *)v11 setAccelerationStructure:v12 atIndex:a4];

  v13 = v27;
  *(v27 + 8) = -15627;
  v14 = BYTE9(v28);
  if (BYTE9(v28) > 0x28uLL)
  {
    v18 = *(*(&v26 + 1) + 24);
    v19 = BYTE10(v28);
    ++BYTE10(v28);
    v15 = GTTraceMemPool_allocateBytes(v18, *(&v27 + 1), v19 | 0x1800000000) + 16;
    v14 = v19;
  }

  else
  {
    v15 = (v13 + BYTE9(v28));
    BYTE9(v28) += 24;
  }

  *(v13 + 13) = v14;
  v20 = [(CaptureMTLArgumentEncoder *)self traceStream];
  if (v20)
  {
    var0 = v20->var0;
  }

  else
  {
    var0 = 0;
  }

  v22 = [v7 traceStream];
  if (v22)
  {
    v23 = *v22;
  }

  else
  {
    v23 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v23;
  *(v15 + 2) = a4;
  s();
  *v24 = v25;
  *(v24 + 8) = BYTE8(v28);
  *(v27 + 15) |= 8u;
LABEL_16:
}

- (void)setArgumentBuffer:(id)a3 startOffset:(unint64_t)a4 arrayElement:(unint64_t)a5
{
  v8 = a3;
  v9 = v8;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v10 = [v8 traceStream];
    if (v10)
    {
      v11 = atomic_load(v10 + 7);
      v12 = v11;
      do
      {
        atomic_compare_exchange_strong(v10 + 7, &v12, v11 | 2);
        v13 = v12 == v11;
        v11 = v12;
      }

      while (!v13);
    }

    if (v9)
    {
      CaptureMTLBuffer_registerBaseBufferForTracing(*(v9 + 1), *(v9 + 6), 0);
    }

    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v30);
    baseObject = self->_baseObject;
    v16 = [v9 baseObject];
    [(MTLArgumentEncoder *)baseObject setArgumentBuffer:v16 startOffset:a4 arrayElement:a5];

    v17 = v31;
    *(v31 + 8) = -16033;
    v18 = BYTE9(v32);
    if (BYTE9(v32) > 0x20uLL)
    {
      v22 = *(*(&v30 + 1) + 24);
      v23 = BYTE10(v32);
      ++BYTE10(v32);
      v19 = GTTraceMemPool_allocateBytes(v22, *(&v31 + 1), v23 | 0x2000000000) + 16;
      v18 = v23;
    }

    else
    {
      v19 = (v17 + BYTE9(v32));
      BYTE9(v32) += 32;
    }

    *(v17 + 13) = v18;
    v24 = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (v24)
    {
      var0 = v24->var0;
    }

    else
    {
      var0 = 0;
    }

    v26 = [v9 traceStream];
    if (v26)
    {
      v27 = *v26;
    }

    else
    {
      v27 = 0;
    }

    *v19 = var0;
    *(v19 + 1) = v27;
    *(v19 + 2) = a4;
    *(v19 + 3) = a5;
    s();
    *v28 = v29;
    *(v28 + 8) = BYTE8(v32);
    *(v31 + 15) |= 8u;
  }

  else
  {
    v20 = self->_baseObject;
    v21 = [v8 baseObject];
    [(MTLArgumentEncoder *)v20 setArgumentBuffer:v21 startOffset:a4 arrayElement:a5];
  }
}

- (void)setArgumentBuffer:(id)a3 offset:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v8 = [v6 traceStream];
    if (v8)
    {
      v9 = atomic_load(v8 + 7);
      v10 = v9;
      do
      {
        atomic_compare_exchange_strong(v8 + 7, &v10, v9 | 2);
        v11 = v10 == v9;
        v9 = v10;
      }

      while (!v11);
    }

    if (v7)
    {
      CaptureMTLBuffer_registerBaseBufferForTracing(*(v7 + 1), *(v7 + 6), 0);
    }

    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
    baseObject = self->_baseObject;
    v14 = [v7 baseObject];
    [(MTLArgumentEncoder *)baseObject setArgumentBuffer:v14 offset:a4];

    v15 = v29;
    *(v29 + 8) = -16061;
    v16 = BYTE9(v30);
    if (BYTE9(v30) > 0x28uLL)
    {
      v20 = *(*(&v28 + 1) + 24);
      v21 = BYTE10(v30);
      ++BYTE10(v30);
      v17 = GTTraceMemPool_allocateBytes(v20, *(&v29 + 1), v21 | 0x1800000000) + 16;
      v16 = v21;
    }

    else
    {
      v17 = (v15 + BYTE9(v30));
      BYTE9(v30) += 24;
    }

    *(v15 + 13) = v16;
    v22 = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (v22)
    {
      var0 = v22->var0;
    }

    else
    {
      var0 = 0;
    }

    v24 = [v7 traceStream];
    if (v24)
    {
      v25 = *v24;
    }

    else
    {
      v25 = 0;
    }

    *v17 = var0;
    *(v17 + 1) = v25;
    *(v17 + 2) = a4;
    s();
    *v26 = v27;
    *(v26 + 8) = BYTE8(v30);
    *(v29 + 15) |= 8u;
  }

  else
  {
    v18 = self->_baseObject;
    v19 = [v6 baseObject];
    [(MTLArgumentEncoder *)v18 setArgumentBuffer:v19 offset:a4];
  }
}

- (CaptureMTLArgumentEncoder)initWithBaseObject:(id)a3 captureDevice:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CaptureMTLArgumentEncoder;
  v9 = [(CaptureMTLArgumentEncoder *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, a3);
    objc_storeStrong(&v10->_captureDevice, a4);
    v11 = [v8 traceContext];
    v10->_traceContext = v11;
    v12 = DEVICEOBJECT(v7);
    v10->_traceStream = GTTraceContext_openStream(v11, v12, v10);
  }

  return v10;
}

@end