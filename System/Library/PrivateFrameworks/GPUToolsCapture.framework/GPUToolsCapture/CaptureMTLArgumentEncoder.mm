@interface CaptureMTLArgumentEncoder
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTLArgumentEncoder)initWithBaseObject:(id)object captureDevice:(id)device;
- (NSString)description;
- (id)newArgumentEncoderForBufferAtIndex:(unint64_t)index;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)setAccelerationStructure:(id)structure atIndex:(unint64_t)index;
- (void)setArgumentBuffer:(id)buffer offset:(unint64_t)offset;
- (void)setArgumentBuffer:(id)buffer startOffset:(unint64_t)offset arrayElement:(unint64_t)element;
- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setComputePipelineState:(id)state atIndex:(unint64_t)index;
- (void)setComputePipelineStates:(const void *)states withRange:(_NSRange)range;
- (void)setDepthStencilState:(id)state atIndex:(unint64_t)index;
- (void)setDepthStencilStates:(const void *)states withRange:(_NSRange)range;
- (void)setIndirectCommandBuffer:(id)buffer atIndex:(unint64_t)index;
- (void)setIndirectCommandBuffers:(const void *)buffers withRange:(_NSRange)range;
- (void)setIntersectionFunctionTable:(id)table atIndex:(unint64_t)index;
- (void)setIntersectionFunctionTables:(const void *)tables withRange:(_NSRange)range;
- (void)setLabel:(id)label;
- (void)setRenderPipelineState:(id)state atIndex:(unint64_t)index;
- (void)setRenderPipelineStates:(const void *)states withRange:(_NSRange)range;
- (void)setSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setTexture:(id)texture atIndex:(unint64_t)index;
- (void)setTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setVisibleFunctionTable:(id)table atIndex:(unint64_t)index;
- (void)setVisibleFunctionTables:(const void *)tables withRange:(_NSRange)range;
- (void)touch;
@end

@implementation CaptureMTLArgumentEncoder

- (void)setVisibleFunctionTables:(const void *)tables withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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
      tablesCopy = tables;
      v14 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      v15 = length;
      do
      {
        v16 = *tablesCopy++;
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
    traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    __chkstk_darwin(traceStream, v29);
    bzero(&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    v31 = StreamArray(&v34, (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), tables, length);
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
    __chkstk_darwin(self, 8 * range.length);
    v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v22, v21);
    if (length)
    {
      v23 = v22;
      v24 = length;
      do
      {
        v25 = *tables++;
        *v23 = [v25 baseObject];
        v23 += 8;
        --v24;
      }

      while (v24);
    }

    [(MTLArgumentEncoder *)v20 setVisibleFunctionTables:v22 withRange:location, length];
  }
}

- (void)setVisibleFunctionTable:(id)table atIndex:(unint64_t)index
{
  tableCopy = table;
  v7 = tableCopy;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
    baseObject = self->_baseObject;
    baseObject = [v7 baseObject];
    [(MTLArgumentEncoder *)baseObject setVisibleFunctionTable:baseObject atIndex:index];

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
    traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [v7 traceStream];
    if (traceStream2)
    {
      v21 = *traceStream2;
    }

    else
    {
      v21 = 0;
    }

    *v13 = var0;
    *(v13 + 1) = v21;
    *(v13 + 2) = index;
    s();
    *v22 = v23;
    *(v22 + 8) = BYTE8(v26);
    *(v25 + 15) |= 8u;
  }

  else
  {
    v14 = self->_baseObject;
    baseObject2 = [tableCopy baseObject];
    [(MTLArgumentEncoder *)v14 setVisibleFunctionTable:baseObject2 atIndex:index];
  }
}

- (void)setTextures:(const void *)textures withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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
      texturesCopy = textures;
      v14 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      v15 = length;
      do
      {
        v16 = *texturesCopy++;
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
    traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    __chkstk_darwin(traceStream, v29);
    bzero(&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    v31 = StreamArray(&v34, (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), textures, length);
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
    __chkstk_darwin(self, 8 * range.length);
    v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v22, v21);
    if (length)
    {
      v23 = v22;
      v24 = length;
      do
      {
        v25 = *textures++;
        *v23 = [v25 baseObject];
        v23 += 8;
        --v24;
      }

      while (v24);
    }

    [(MTLArgumentEncoder *)v20 setTextures:v22 withRange:location, length];
  }
}

- (void)setTexture:(id)texture atIndex:(unint64_t)index
{
  textureCopy = texture;
  v7 = textureCopy;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
    baseObject = self->_baseObject;
    baseObject = [v7 baseObject];
    [(MTLArgumentEncoder *)baseObject setTexture:baseObject atIndex:index];

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
    traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [v7 traceStream];
    if (traceStream2)
    {
      v21 = *traceStream2;
    }

    else
    {
      v21 = 0;
    }

    *v13 = var0;
    *(v13 + 1) = v21;
    *(v13 + 2) = index;
    s();
    *v22 = v23;
    *(v22 + 8) = BYTE8(v26);
    *(v25 + 15) |= 8u;
  }

  else
  {
    v14 = self->_baseObject;
    baseObject2 = [textureCopy baseObject];
    [(MTLArgumentEncoder *)v14 setTexture:baseObject2 atIndex:index];
  }
}

- (void)setSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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
      statesCopy = states;
      v14 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      v15 = length;
      do
      {
        v16 = *statesCopy++;
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
    traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    __chkstk_darwin(traceStream, v29);
    bzero(&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    v31 = StreamArray(&v34, (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), states, length);
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
    __chkstk_darwin(self, 8 * range.length);
    v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v22, v21);
    if (length)
    {
      v23 = v22;
      v24 = length;
      do
      {
        v25 = *states++;
        *v23 = [v25 baseObject];
        v23 += 8;
        --v24;
      }

      while (v24);
    }

    [(MTLArgumentEncoder *)v20 setSamplerStates:v22 withRange:location, length];
  }
}

- (void)setSamplerState:(id)state atIndex:(unint64_t)index
{
  stateCopy = state;
  v7 = stateCopy;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
    baseObject = self->_baseObject;
    baseObject = [v7 baseObject];
    [(MTLArgumentEncoder *)baseObject setSamplerState:baseObject atIndex:index];

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
    traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [v7 traceStream];
    if (traceStream2)
    {
      v21 = *traceStream2;
    }

    else
    {
      v21 = 0;
    }

    *v13 = var0;
    *(v13 + 1) = v21;
    *(v13 + 2) = index;
    s();
    *v22 = v23;
    *(v22 + 8) = BYTE8(v26);
    *(v25 + 15) |= 8u;
  }

  else
  {
    v14 = self->_baseObject;
    baseObject2 = [stateCopy baseObject];
    [(MTLArgumentEncoder *)v14 setSamplerState:baseObject2 atIndex:index];
  }
}

- (void)setRenderPipelineStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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
      statesCopy = states;
      v14 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      v15 = length;
      do
      {
        v16 = *statesCopy++;
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
    traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    __chkstk_darwin(traceStream, v29);
    bzero(&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    v31 = StreamArray(&v34, (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), states, length);
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
    __chkstk_darwin(self, 8 * range.length);
    v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v22, v21);
    if (length)
    {
      v23 = v22;
      v24 = length;
      do
      {
        v25 = *states++;
        *v23 = [v25 baseObject];
        v23 += 8;
        --v24;
      }

      while (v24);
    }

    [(MTLArgumentEncoder *)v20 setRenderPipelineStates:v22 withRange:location, length];
  }
}

- (void)setRenderPipelineState:(id)state atIndex:(unint64_t)index
{
  stateCopy = state;
  v7 = stateCopy;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
    baseObject = self->_baseObject;
    baseObject = [v7 baseObject];
    [(MTLArgumentEncoder *)baseObject setRenderPipelineState:baseObject atIndex:index];

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
    traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [v7 traceStream];
    if (traceStream2)
    {
      v21 = *traceStream2;
    }

    else
    {
      v21 = 0;
    }

    *v13 = var0;
    *(v13 + 1) = v21;
    *(v13 + 2) = index;
    s();
    *v22 = v23;
    *(v22 + 8) = BYTE8(v26);
    *(v25 + 15) |= 8u;
  }

  else
  {
    v14 = self->_baseObject;
    baseObject2 = [stateCopy baseObject];
    [(MTLArgumentEncoder *)v14 setRenderPipelineState:baseObject2 atIndex:index];
  }
}

- (void)setIntersectionFunctionTables:(const void *)tables withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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
      tablesCopy = tables;
      v14 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      v15 = length;
      do
      {
        v16 = *tablesCopy++;
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
    traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    __chkstk_darwin(traceStream, v29);
    bzero(&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    v31 = StreamArray(&v34, (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), tables, length);
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
    __chkstk_darwin(self, 8 * range.length);
    v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v22, v21);
    if (length)
    {
      v23 = v22;
      v24 = length;
      do
      {
        v25 = *tables++;
        *v23 = [v25 baseObject];
        v23 += 8;
        --v24;
      }

      while (v24);
    }

    [(MTLArgumentEncoder *)v20 setIntersectionFunctionTables:v22 withRange:location, length];
  }
}

- (void)setIntersectionFunctionTable:(id)table atIndex:(unint64_t)index
{
  tableCopy = table;
  v7 = tableCopy;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
    baseObject = self->_baseObject;
    baseObject = [v7 baseObject];
    [(MTLArgumentEncoder *)baseObject setIntersectionFunctionTable:baseObject atIndex:index];

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
    traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [v7 traceStream];
    if (traceStream2)
    {
      v21 = *traceStream2;
    }

    else
    {
      v21 = 0;
    }

    *v13 = var0;
    *(v13 + 1) = v21;
    *(v13 + 2) = index;
    s();
    *v22 = v23;
    *(v22 + 8) = BYTE8(v26);
    *(v25 + 15) |= 8u;
  }

  else
  {
    v14 = self->_baseObject;
    baseObject2 = [tableCopy baseObject];
    [(MTLArgumentEncoder *)v14 setIntersectionFunctionTable:baseObject2 atIndex:index];
  }
}

- (void)setIndirectCommandBuffers:(const void *)buffers withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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
      buffersCopy = buffers;
      v14 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      v15 = length;
      do
      {
        v16 = *buffersCopy++;
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
    traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    __chkstk_darwin(traceStream, v29);
    bzero(&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    v31 = StreamArray(&v34, (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), buffers, length);
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
    __chkstk_darwin(self, 8 * range.length);
    v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v22, v21);
    if (length)
    {
      v23 = v22;
      v24 = length;
      do
      {
        v25 = *buffers++;
        *v23 = [v25 baseObject];
        v23 += 8;
        --v24;
      }

      while (v24);
    }

    [(MTLArgumentEncoder *)v20 setIndirectCommandBuffers:v22 withRange:location, length];
  }
}

- (void)setIndirectCommandBuffer:(id)buffer atIndex:(unint64_t)index
{
  bufferCopy = buffer;
  v7 = bufferCopy;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
    baseObject = self->_baseObject;
    baseObject = [v7 baseObject];
    [(MTLArgumentEncoder *)baseObject setIndirectCommandBuffer:baseObject atIndex:index];

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
    traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [v7 traceStream];
    if (traceStream2)
    {
      v21 = *traceStream2;
    }

    else
    {
      v21 = 0;
    }

    *v13 = var0;
    *(v13 + 1) = v21;
    *(v13 + 2) = index;
    s();
    *v22 = v23;
    *(v22 + 8) = BYTE8(v26);
    *(v25 + 15) |= 8u;
  }

  else
  {
    v14 = self->_baseObject;
    baseObject2 = [bufferCopy baseObject];
    [(MTLArgumentEncoder *)v14 setIndirectCommandBuffer:baseObject2 atIndex:index];
  }
}

- (void)setDepthStencilStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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
      statesCopy = states;
      v14 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      v15 = length;
      do
      {
        v16 = *statesCopy++;
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
    traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    __chkstk_darwin(traceStream, v29);
    bzero(&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    v31 = StreamArray(&v34, (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), states, length);
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
    __chkstk_darwin(self, 8 * range.length);
    v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v22, v21);
    if (length)
    {
      v23 = v22;
      v24 = length;
      do
      {
        v25 = *states++;
        *v23 = [v25 baseObject];
        v23 += 8;
        --v24;
      }

      while (v24);
    }

    [(MTLArgumentEncoder *)v20 setDepthStencilStates:v22 withRange:location, length];
  }
}

- (void)setDepthStencilState:(id)state atIndex:(unint64_t)index
{
  stateCopy = state;
  v7 = stateCopy;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
    baseObject = self->_baseObject;
    baseObject = [v7 baseObject];
    [(MTLArgumentEncoder *)baseObject setDepthStencilState:baseObject atIndex:index];

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
    traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [v7 traceStream];
    if (traceStream2)
    {
      v21 = *traceStream2;
    }

    else
    {
      v21 = 0;
    }

    *v13 = var0;
    *(v13 + 1) = v21;
    *(v13 + 2) = index;
    s();
    *v22 = v23;
    *(v22 + 8) = BYTE8(v26);
    *(v25 + 15) |= 8u;
  }

  else
  {
    v14 = self->_baseObject;
    baseObject2 = [stateCopy baseObject];
    [(MTLArgumentEncoder *)v14 setDepthStencilState:baseObject2 atIndex:index];
  }
}

- (void)setComputePipelineStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  baseObject = self->_baseObject;
  __chkstk_darwin(self, 8 * range.length);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v9, v8);
  if (length)
  {
    v10 = v9;
    v11 = length;
    do
    {
      v12 = *states++;
      *v10 = [v12 baseObject];
      v10 += 8;
      --v11;
    }

    while (v11);
  }

  [(MTLArgumentEncoder *)baseObject setComputePipelineStates:v9 withRange:location, length];
}

- (void)setComputePipelineState:(id)state atIndex:(unint64_t)index
{
  baseObject = self->_baseObject;
  baseObject = [state baseObject];
  [(MTLArgumentEncoder *)baseObject setComputePipelineState:baseObject atIndex:index];
}

- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v39 = range.location;
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
      buffersCopy = buffers;
      v16 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
      v17 = length;
      do
      {
        v18 = *buffersCopy++;
        *v16++ = [v18 baseObject];
        --v17;
      }

      while (v17);
    }

    v19 = v39;
    [(MTLArgumentEncoder *)baseObject setBuffers:&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) offsets:offsets withRange:v39, length];
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
    traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    __chkstk_darwin(traceStream, v32);
    bzero(&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    v34 = StreamArray(&v40, (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0)), buffers, length);
    v35 = GTTraceEncoder_storeBytes(&v40, offsets, 8 * length);
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
    __chkstk_darwin(self, 8 * range.length);
    v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v25, v24);
    if (length)
    {
      v26 = v25;
      v27 = length;
      do
      {
        v28 = *buffers++;
        *v26 = [v28 baseObject];
        v26 += 8;
        --v27;
      }

      while (v27);
    }

    [(MTLArgumentEncoder *)v23 setBuffers:v25 offsets:offsets withRange:location, length];
  }
}

- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  bufferCopy = buffer;
  v9 = bufferCopy;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v26);
    baseObject = self->_baseObject;
    baseObject = [v9 baseObject];
    [(MTLArgumentEncoder *)baseObject setBuffer:baseObject offset:offset atIndex:index];

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
    traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [v9 traceStream];
    if (traceStream2)
    {
      v23 = *traceStream2;
    }

    else
    {
      v23 = 0;
    }

    *v15 = var0;
    *(v15 + 1) = v23;
    *(v15 + 2) = offset;
    *(v15 + 3) = index;
    s();
    *v24 = v25;
    *(v24 + 8) = BYTE8(v28);
    *(v27 + 15) |= 8u;
  }

  else
  {
    v16 = self->_baseObject;
    baseObject2 = [bufferCopy baseObject];
    [(MTLArgumentEncoder *)v16 setBuffer:baseObject2 offset:offset atIndex:index];
  }
}

- (id)newArgumentEncoderForBufferAtIndex:(unint64_t)index
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
    device = [(CaptureMTLArgumentEncoder *)self device];
    v13 = [(CaptureMTLArgumentEncoder *)v11 initWithBaseObject:v10 captureDevice:device];
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
  traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLArgumentEncoder *)v13 traceStream];
  if (traceStream2)
  {
    v22 = traceStream2->var0;
  }

  else
  {
    v22 = 0;
  }

  *v16 = var0;
  *(v16 + 1) = v22;
  *(v16 + 2) = index;
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
  traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
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
  v13.super_class = CaptureMTLArgumentEncoder;
  [(CaptureMTLArgumentEncoder *)&v13 dealloc];
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLArgumentEncoder *)self->_baseObject setLabel:labelCopy];
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
  traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
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
  v5 = [(MTLArgumentEncoder *)baseObject conformsToProtocol:protocolCopy];

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

- (void)setAccelerationStructure:(id)structure atIndex:(unint64_t)index
{
  structureCopy = structure;
  v7 = structureCopy;
  if (structureCopy)
  {
    device = [structureCopy device];
    captureRaytracingEnabled = [device captureRaytracingEnabled];

    if ((captureRaytracingEnabled & 1) == 0)
    {
      GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLArgumentEncoder_setAccelerationStructure_atIndex", "Raytracing", 0, 0);
      goto LABEL_7;
    }
  }

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) != 2)
  {
LABEL_7:
    baseObject = self->_baseObject;
    baseObject = [v7 baseObject];
    [(MTLArgumentEncoder *)baseObject setAccelerationStructure:baseObject atIndex:index];

    goto LABEL_16;
  }

  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v26);
  v11 = self->_baseObject;
  baseObject2 = [v7 baseObject];
  [(MTLArgumentEncoder *)v11 setAccelerationStructure:baseObject2 atIndex:index];

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
  traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [v7 traceStream];
  if (traceStream2)
  {
    v23 = *traceStream2;
  }

  else
  {
    v23 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v23;
  *(v15 + 2) = index;
  s();
  *v24 = v25;
  *(v24 + 8) = BYTE8(v28);
  *(v27 + 15) |= 8u;
LABEL_16:
}

- (void)setArgumentBuffer:(id)buffer startOffset:(unint64_t)offset arrayElement:(unint64_t)element
{
  bufferCopy = buffer;
  v9 = bufferCopy;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    traceStream = [bufferCopy traceStream];
    if (traceStream)
    {
      v11 = atomic_load(traceStream + 7);
      v12 = v11;
      do
      {
        atomic_compare_exchange_strong(traceStream + 7, &v12, v11 | 2);
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
    baseObject = [v9 baseObject];
    [(MTLArgumentEncoder *)baseObject setArgumentBuffer:baseObject startOffset:offset arrayElement:element];

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
    traceStream2 = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream2)
    {
      var0 = traceStream2->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream3 = [v9 traceStream];
    if (traceStream3)
    {
      v27 = *traceStream3;
    }

    else
    {
      v27 = 0;
    }

    *v19 = var0;
    *(v19 + 1) = v27;
    *(v19 + 2) = offset;
    *(v19 + 3) = element;
    s();
    *v28 = v29;
    *(v28 + 8) = BYTE8(v32);
    *(v31 + 15) |= 8u;
  }

  else
  {
    v20 = self->_baseObject;
    baseObject2 = [bufferCopy baseObject];
    [(MTLArgumentEncoder *)v20 setArgumentBuffer:baseObject2 startOffset:offset arrayElement:element];
  }
}

- (void)setArgumentBuffer:(id)buffer offset:(unint64_t)offset
{
  bufferCopy = buffer;
  v7 = bufferCopy;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    traceStream = [bufferCopy traceStream];
    if (traceStream)
    {
      v9 = atomic_load(traceStream + 7);
      v10 = v9;
      do
      {
        atomic_compare_exchange_strong(traceStream + 7, &v10, v9 | 2);
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
    baseObject = [v7 baseObject];
    [(MTLArgumentEncoder *)baseObject setArgumentBuffer:baseObject offset:offset];

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
    traceStream2 = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream2)
    {
      var0 = traceStream2->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream3 = [v7 traceStream];
    if (traceStream3)
    {
      v25 = *traceStream3;
    }

    else
    {
      v25 = 0;
    }

    *v17 = var0;
    *(v17 + 1) = v25;
    *(v17 + 2) = offset;
    s();
    *v26 = v27;
    *(v26 + 8) = BYTE8(v30);
    *(v29 + 15) |= 8u;
  }

  else
  {
    v18 = self->_baseObject;
    baseObject2 = [bufferCopy baseObject];
    [(MTLArgumentEncoder *)v18 setArgumentBuffer:baseObject2 offset:offset];
  }
}

- (CaptureMTLArgumentEncoder)initWithBaseObject:(id)object captureDevice:(id)device
{
  objectCopy = object;
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = CaptureMTLArgumentEncoder;
  v9 = [(CaptureMTLArgumentEncoder *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, object);
    objc_storeStrong(&v10->_captureDevice, device);
    traceContext = [deviceCopy traceContext];
    v10->_traceContext = traceContext;
    v12 = DEVICEOBJECT(objectCopy);
    v10->_traceStream = GTTraceContext_openStream(traceContext, v12, v10);
  }

  return v10;
}

@end