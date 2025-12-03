@interface CaptureMTLRasterizationRateMap
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)parameterBufferSizeAndAlign;
- ($94F468A8D4C62B317260615823C2B210)mapScreenToPhysicalCoordinates:(id)coordinates forLayer:(unint64_t)layer;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)physicalGranularity;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)physicalSizeForLayer:(SEL)layer;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)screenSize;
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTLRasterizationRateMap)initWithBaseObject:(id)object captureDevice:(id)device;
- (NSString)description;
- (unint64_t)streamReference;
- (void)copyParameterDataToBuffer:(id)buffer offset:(unint64_t)offset;
- (void)dealloc;
- (void)resetUsingDescriptor:(id)descriptor;
- (void)touch;
@end

@implementation CaptureMTLRasterizationRateMap

- (void)resetUsingDescriptor:(id)descriptor
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  descriptorCopy = descriptor;
  GTTraceContext_pushEncoderWithStream(traceContext, &v17);
  [(MTLRasterizationRateMapSPI *)self->_baseObject resetUsingDescriptor:descriptorCopy, v17];
  v7 = v18;
  *(v18 + 8) = -15411;
  v8 = BYTE9(v19);
  if (BYTE9(v19) > 0x30uLL)
  {
    v10 = *(*(&v17 + 1) + 24);
    v11 = BYTE10(v19);
    ++BYTE10(v19);
    v9 = GTTraceMemPool_allocateBytes(v10, *(&v18 + 1), v11 | 0x1000000000) + 16;
    v8 = v11;
  }

  else
  {
    v9 = (v7 + BYTE9(v19));
    BYTE9(v19) += 16;
  }

  *(v7 + 13) = v8;
  traceStream = [(CaptureMTLRasterizationRateMap *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  v14 = SaveMTLRasterizationRateMapDescriptor(&v17, descriptorCopy);

  *v9 = var0;
  v9[8] = v14;
  *(v9 + 9) = 0;
  *(v9 + 3) = 0;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTLRasterizationRateMapSPI *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTLRasterizationRateMap;
  v3 = [(CaptureMTLRasterizationRateMap *)&v7 description];
  v4 = [(MTLRasterizationRateMapSPI *)self->_baseObject description];
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

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)physicalSizeForLayer:(SEL)layer
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  baseObject = self->_baseObject;
  if (baseObject)
  {
    [(MTLRasterizationRateMapSPI *)baseObject physicalSizeForLayer:a4];
  }

  v9 = v20;
  *(v20 + 8) = -15797;
  v10 = BYTE9(v21);
  if (BYTE9(v21) > 0x18uLL)
  {
    v12 = *(*(&v19 + 1) + 24);
    v13 = BYTE10(v21);
    ++BYTE10(v21);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v20 + 1), v13 | 0x2800000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v21));
    BYTE9(v21) += 40;
  }

  *(v9 + 13) = v10;
  traceStream = [(CaptureMTLRasterizationRateMap *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  var2 = retstr->var2;
  *v11 = var0;
  *(v11 + 8) = *&retstr->var0;
  *(v11 + 3) = var2;
  *(v11 + 4) = a4;
  s();
  result->var0 = v18;
  LOBYTE(result->var1) = BYTE8(v21);
  *(v20 + 15) |= 8u;
  return result;
}

- ($94F468A8D4C62B317260615823C2B210)mapScreenToPhysicalCoordinates:(id)coordinates forLayer:(unint64_t)layer
{
  var1 = coordinates.var1;
  var0 = coordinates.var0;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v26);
  *&v9 = var0;
  *&v10 = var1;
  [(MTLRasterizationRateMapSPI *)self->_baseObject mapScreenToPhysicalCoordinates:layer forLayer:v9, v10];
  v12 = v11;
  v14 = v13;
  v15 = v27;
  *(v27 + 8) = -15770;
  v16 = BYTE9(v28);
  if (BYTE9(v28) > 0x20uLL)
  {
    v18 = *(*(&v26 + 1) + 24);
    v19 = BYTE10(v28);
    ++BYTE10(v28);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v27 + 1), v19 | 0x2000000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v28));
    BYTE9(v28) += 32;
  }

  *(v15 + 13) = v16;
  traceStream = [(CaptureMTLRasterizationRateMap *)self traceStream];
  if (traceStream)
  {
    v21 = traceStream->var0;
  }

  else
  {
    v21 = 0;
  }

  *v17 = v21;
  *(v17 + 1) = layer;
  *(v17 + 4) = v12;
  *(v17 + 5) = v14;
  *(v17 + 6) = var0;
  *(v17 + 7) = var1;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v28);
  *(v27 + 15) |= 8u;
  v24 = v12;
  v25 = v14;
  result.var1 = v25;
  result.var0 = v24;
  return result;
}

- (void)dealloc
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -15801;
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
  traceStream = [(CaptureMTLRasterizationRateMap *)self traceStream];
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
  v13.super_class = CaptureMTLRasterizationRateMap;
  [(CaptureMTLRasterizationRateMap *)&v13 dealloc];
}

- (void)copyParameterDataToBuffer:(id)buffer offset:(unint64_t)offset
{
  bufferCopy = buffer;
  traceStream = [bufferCopy traceStream];
  if (traceStream)
  {
    v8 = atomic_load(traceStream + 7);
    v9 = v8;
    do
    {
      atomic_compare_exchange_strong(traceStream + 7, &v9, v8 | 2);
      v10 = v9 == v8;
      v8 = v9;
    }

    while (!v10);
  }

  traceStream2 = [bufferCopy traceStream];
  if (traceStream2)
  {
    v12 = atomic_load(traceStream2 + 7);
    v13 = v12;
    do
    {
      atomic_compare_exchange_strong(traceStream2 + 7, &v13, v12 | 8);
      v10 = v13 == v12;
      v12 = v13;
    }

    while (!v10);
  }

  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLRasterizationRateMapSPI *)baseObject copyParameterDataToBuffer:baseObject offset:offset];

  v17 = v29;
  *(v29 + 8) = -15776;
  v18 = BYTE9(v30);
  if (BYTE9(v30) > 0x28uLL)
  {
    v20 = *(*(&v28 + 1) + 24);
    v21 = BYTE10(v30);
    ++BYTE10(v30);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v29 + 1), v21 | 0x1800000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v30));
    BYTE9(v30) += 24;
  }

  *(v17 + 13) = v18;
  traceStream3 = [(CaptureMTLRasterizationRateMap *)self traceStream];
  if (traceStream3)
  {
    var0 = traceStream3->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream4 = [bufferCopy traceStream];

  if (traceStream4)
  {
    v25 = *traceStream4;
  }

  else
  {
    v25 = 0;
  }

  *v19 = var0;
  *(v19 + 1) = v25;
  *(v19 + 2) = offset;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)screenSize
{
  result = self->_baseObject;
  if (result)
  {
    return [($F99D9A4FB75BC57F3386B8DC8EE08D7A *)result screenSize];
  }

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)physicalGranularity
{
  result = self->_baseObject;
  if (result)
  {
    return [($F99D9A4FB75BC57F3386B8DC8EE08D7A *)result physicalGranularity];
  }

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  return result;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)parameterBufferSizeAndAlign
{
  parameterBufferSizeAndAlign = [(MTLRasterizationRateMapSPI *)self->_baseObject parameterBufferSizeAndAlign];
  result.var1 = v3;
  result.var0 = parameterBufferSizeAndAlign;
  return result;
}

- (CaptureMTLRasterizationRateMap)initWithBaseObject:(id)object captureDevice:(id)device
{
  objectCopy = object;
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = CaptureMTLRasterizationRateMap;
  v9 = [(CaptureMTLRasterizationRateMap *)&v14 init];
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