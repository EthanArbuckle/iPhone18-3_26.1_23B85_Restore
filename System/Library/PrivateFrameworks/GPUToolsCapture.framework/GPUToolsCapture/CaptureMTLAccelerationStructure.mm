@interface CaptureMTLAccelerationStructure
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)doesAliasAllResources:(const void *)a3 count:(unint64_t)a4;
- (BOOL)doesAliasAnyResources:(const void *)a3 count:(unint64_t)a4;
- (BOOL)doesAliasResource:(id)a3;
- (CaptureMTLAccelerationStructure)initWithBaseObject:(id)a3 captureDevice:(id)a4 captureBuffer:(id)a5;
- (CaptureMTLAccelerationStructure)initWithBaseObject:(id)a3 captureHeap:(id)a4;
- (MTLBuffer)buffer;
- (NSString)description;
- (unint64_t)setPurgeableState:(unint64_t)a3;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)makeAliasable;
- (void)setLabel:(id)a3;
- (void)touch;
- (void)waitUntilComplete;
@end

@implementation CaptureMTLAccelerationStructure

- (void)waitUntilComplete
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  [(MTLAccelerationStructureSPI *)self->_baseObject waitUntilComplete];
  v4 = v14;
  *(v14 + 8) = -15649;
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
  v9 = [(CaptureMTLAccelerationStructure *)self traceStream];
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

- (unint64_t)setPurgeableState:(unint64_t)a3
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  v6 = [(MTLAccelerationStructureSPI *)self->_baseObject setPurgeableState:a3];
  v7 = v18;
  *(v18 + 8) = -15650;
  v8 = BYTE9(v19);
  if (BYTE9(v19) > 0x28uLL)
  {
    v10 = *(*(&v17 + 1) + 24);
    v11 = BYTE10(v19);
    ++BYTE10(v19);
    v9 = GTTraceMemPool_allocateBytes(v10, *(&v18 + 1), v11 | 0x1800000000) + 16;
    v8 = v11;
  }

  else
  {
    v9 = (v7 + BYTE9(v19));
    BYTE9(v19) += 24;
  }

  *(v7 + 13) = v8;
  v12 = [(CaptureMTLAccelerationStructure *)self traceStream];
  if (v12)
  {
    var0 = v12->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 1) = v6;
  *(v9 + 2) = a3;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
  return v6;
}

- (void)makeAliasable
{
  if (!qword_31F7B8)
  {
    v18 = v2;
    v19 = v3;
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    traceStream = self->_traceStream;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
    [(MTLAccelerationStructureSPI *)self->_baseObject makeAliasable];
    [(CaptureMTLHeap *)self->_captureHeap usedSize];
    [(CaptureMTLHeap *)self->_captureHeap currentAllocatedSize];
    v6 = v16;
    *(v16 + 8) = -15651;
    v7 = BYTE9(v17);
    if (BYTE9(v17) > 0x38uLL)
    {
      v9 = *(*(&v15 + 1) + 24);
      v10 = BYTE10(v17);
      ++BYTE10(v17);
      v8 = GTTraceMemPool_allocateBytes(v9, *(&v16 + 1), v10 | 0x800000000) + 16;
      v7 = v10;
    }

    else
    {
      v8 = (v6 + BYTE9(v17));
      BYTE9(v17) += 8;
    }

    *(v6 + 13) = v7;
    v11 = [(CaptureMTLAccelerationStructure *)self traceStream];
    if (v11)
    {
      var0 = v11->var0;
    }

    else
    {
      var0 = 0;
    }

    *v8 = var0;
    s();
    *v13 = v14;
    *(v13 + 8) = BYTE8(v17);
    *(v16 + 15) |= 8u;
  }
}

- (BOOL)doesAliasResource:(id)a3
{
  baseObject = self->_baseObject;
  v4 = [a3 baseObject];
  LOBYTE(baseObject) = [(MTLAccelerationStructureSPI *)baseObject doesAliasResource:v4];

  return baseObject;
}

- (BOOL)doesAliasAnyResources:(const void *)a3 count:(unint64_t)a4
{
  baseObject = self->_baseObject;
  __chkstk_darwin(self, 8 * a4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v8, v7);
  if (a4)
  {
    v9 = v8;
    v10 = a4;
    do
    {
      v11 = *a3++;
      *v9 = [v11 baseObject];
      v9 += 8;
      --v10;
    }

    while (v10);
  }

  return [(MTLAccelerationStructureSPI *)baseObject doesAliasAnyResources:v8 count:a4];
}

- (BOOL)doesAliasAllResources:(const void *)a3 count:(unint64_t)a4
{
  baseObject = self->_baseObject;
  __chkstk_darwin(self, 8 * a4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v8, v7);
  if (a4)
  {
    v9 = v8;
    v10 = a4;
    do
    {
      v11 = *a3++;
      *v9 = [v11 baseObject];
      v9 += 8;
      --v10;
    }

    while (v10);
  }

  return [(MTLAccelerationStructureSPI *)baseObject doesAliasAllResources:v8 count:a4];
}

- (void)setLabel:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLAccelerationStructureSPI *)self->_baseObject setLabel:v4];
  v6 = v19;
  *(v19 + 8) = -15661;
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
  v11 = [(CaptureMTLAccelerationStructure *)self traceStream];
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
  v5 = [(MTLAccelerationStructureSPI *)baseObject conformsToProtocol:v4];

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
  v7.super_class = CaptureMTLAccelerationStructure;
  v3 = [(CaptureMTLAccelerationStructure *)&v7 description];
  v4 = [(MTLAccelerationStructureSPI *)self->_baseObject description];
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

- (void)dealloc
{
  os_unfair_lock_lock(&s_accelerationStructuresLock);
  v3 = s_accelerationStructuresByStreamRef;
  traceStream = self->_traceStream;
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  v6 = [NSNumber numberWithUnsignedLongLong:var0];
  [v3 removeObjectForKey:v6];

  v7 = s_accelerationStructureGPUResourceIDToStreamRef;
  v8 = [NSNumber numberWithUnsignedLongLong:[(MTLAccelerationStructureSPI *)self->_baseObject gpuResourceID]];
  [v7 removeObjectForKey:v8];

  os_unfair_lock_unlock(&s_accelerationStructuresLock);
  [(CaptureMTLDevice *)self->_captureDevice deallocateResource:self];
  baseObject = self->_baseObject;
  self->_baseObject = 0;

  [(CaptureMTLHeap *)self->_captureHeap usedSize];
  [(CaptureMTLHeap *)self->_captureHeap currentAllocatedSize];
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  v10 = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  v11 = v22;
  *(v22 + 8) = -15659;
  v12 = BYTE9(v23);
  if (BYTE9(v23) > 0x38uLL)
  {
    v14 = *(*(&v21 + 1) + 24);
    v15 = BYTE10(v23);
    ++BYTE10(v23);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v22 + 1), v15 | 0x800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v23));
    BYTE9(v23) += 8;
  }

  *(v11 + 13) = v12;
  v16 = [(CaptureMTLAccelerationStructure *)self traceStream];
  if (v16)
  {
    v17 = v16->var0;
  }

  else
  {
    v17 = 0;
  }

  *v13 = v17;
  s();
  *v18 = v19;
  *(v18 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
  GTTraceContext_closeStream(self->_traceContext, &self->_traceStream->var0);
  v20.receiver = self;
  v20.super_class = CaptureMTLAccelerationStructure;
  [(CaptureMTLAccelerationStructure *)&v20 dealloc];
}

- (MTLBuffer)buffer
{
  if ((dword_31F7C8 & 4) == 0 && os_variant_has_internal_content())
  {
    GTMTLCaptureManager_notifyUnsupportedFenumWithMsg(0, "[MTLAccelerationStructure buffer] SPI", 0, "To be able to capture, don't use [MTLAccelerationStructure buffer] SPI.");
  }

  buffer = self->_buffer;

  return buffer;
}

- (CaptureMTLAccelerationStructure)initWithBaseObject:(id)a3 captureHeap:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = CaptureMTLAccelerationStructure;
  v9 = [(CaptureMTLAccelerationStructure *)&v21 init];
  if (v9)
  {
    v10 = [v8 device];
    objc_storeStrong(&v9->_baseObject, a3);
    objc_storeStrong(&v9->_captureHeap, a4);
    objc_storeStrong(&v9->_captureDevice, v10);
    v11 = [v8 traceContext];
    v9->_traceContext = v11;
    v12 = DEVICEOBJECT(v7);
    v9->_traceStream = GTTraceContext_openStream(v11, v12, v9);

    traceStream = v9->_traceStream;
    if (traceStream)
    {
      v14 = *traceStream;
    }

    else
    {
      v14 = 0;
    }

    RegisterAccelerationStructure(v9, v14, [v7 gpuResourceID]);
    v15 = [(MTLAccelerationStructureSPI *)v9->_baseObject buffer];
    if (v15)
    {
      v16 = [[CaptureMTLBuffer alloc] initWithBaseObject:v15 captureHeap:v8];
      buffer = v9->_buffer;
      v9->_buffer = v16;
    }

    if ((dword_31F7C8 & 0x10) != 0)
    {
      v18 = objc_opt_new();
      extraRetainedObjects = v9->_extraRetainedObjects;
      v9->_extraRetainedObjects = v18;
    }
  }

  return v9;
}

- (CaptureMTLAccelerationStructure)initWithBaseObject:(id)a3 captureDevice:(id)a4 captureBuffer:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v46.receiver = self;
  v46.super_class = CaptureMTLAccelerationStructure;
  v12 = [(CaptureMTLAccelerationStructure *)&v46 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_baseObject, a3);
    objc_storeStrong(&v13->_captureDevice, a4);
    captureHeap = v13->_captureHeap;
    v13->_captureHeap = 0;

    v15 = [v10 traceContext];
    v13->_traceContext = v15;
    v16 = DEVICEOBJECT(v9);
    v13->_traceStream = GTTraceContext_openStream(v15, v16, v13);

    traceStream = v13->_traceStream;
    if (traceStream)
    {
      v18 = *traceStream;
    }

    else
    {
      v18 = 0;
    }

    RegisterAccelerationStructure(v13, v18, [v9 gpuResourceID]);
    if (v11)
    {
      v19 = v11;
      buffer = v13->_buffer;
      v13->_buffer = v19;
    }

    else
    {
      buffer = [(MTLAccelerationStructureSPI *)v13->_baseObject buffer];
      if (buffer)
      {
        v24 = [[CaptureMTLBuffer alloc] initWithBaseObject:buffer captureDevice:v10];
        v25 = v13->_buffer;
        v13->_buffer = v24;

        if ((dword_31F7C8 & 4) != 0)
        {
          v44 = 0u;
          v45 = 0u;
          v43 = 0u;
          traceContext = v13->_traceContext;
          v43 = traceContext;
          *&v44 = 0;
          *(&v44 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
          s();
          v28 = v27;
          v29 = *v27;
          *v27 = v30;
          *&v45 = v29;
          BYTE8(v45) = *(v27 + 8);
          *(&v45 + 9) = 16400;
          *(&v45 + 11) = 0;
          HIBYTE(v45) = 0;
          GTTraceEncoder_setStream(&v43, [(CaptureMTLBuffer *)v13->_buffer traceStream]);
          v31 = v44;
          *(v44 + 8) = -16314;
          v32 = BYTE9(v45);
          if (BYTE9(v45) > 0x18uLL)
          {
            v34 = *(*(&v43 + 1) + 24);
            v35 = BYTE10(v45);
            ++BYTE10(v45);
            v33 = GTTraceMemPool_allocateBytes(v34, *(&v44 + 1), v35 | 0x2800000000) + 16;
            v32 = v35;
          }

          else
          {
            v33 = (v31 + BYTE9(v45));
            BYTE9(v45) += 40;
          }

          *(v31 + 13) = v32;
          SaveMTLBufferInfo(&v43, v13->_buffer);
          v36 = [(CaptureMTLDevice *)v13->_captureDevice traceStream];
          if (v36)
          {
            var0 = v36->var0;
          }

          else
          {
            var0 = 0;
          }

          v37 = [(CaptureMTLBuffer *)v13->_buffer traceStream];
          if (v37)
          {
            v38 = v37->var0;
          }

          else
          {
            v38 = 0;
          }

          v39 = [(CaptureMTLBuffer *)v13->_buffer length];
          v40 = [(CaptureMTLBuffer *)v13->_buffer resourceOptions];
          *v33 = var0;
          *(v33 + 1) = v38;
          *(v33 + 2) = v39;
          *(v33 + 3) = v40;
          *(v33 + 4) = 0;
          v41 = v44;
          *v28 = v45;
          *(v28 + 8) = BYTE8(v45);
          *(v41 + 15) |= 8u;
        }
      }
    }

    if ((dword_31F7C8 & 0x10) != 0)
    {
      v21 = objc_opt_new();
      extraRetainedObjects = v13->_extraRetainedObjects;
      v13->_extraRetainedObjects = v21;
    }
  }

  return v13;
}

@end