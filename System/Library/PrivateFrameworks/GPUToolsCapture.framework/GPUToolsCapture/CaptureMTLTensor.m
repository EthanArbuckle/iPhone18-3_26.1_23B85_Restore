@interface CaptureMTLTensor
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)doesAliasAllResources:(const void *)a3 count:(unint64_t)a4;
- (BOOL)doesAliasAnyResources:(const void *)a3 count:(unint64_t)a4;
- (BOOL)doesAliasResource:(id)a3;
- (CaptureMTLTensor)initWithBaseObject:(id)a3 captureBuffer:(id)a4;
- (CaptureMTLTensor)initWithBaseObject:(id)a3 captureDevice:(id)a4;
- (CaptureMTLTensor)initWithBaseObject:(id)a3 captureTensor:(id)a4;
- (NSString)description;
- (id)newTensorViewWithReshapedDescriptor:(id)a3 error:(id *)a4;
- (id)newTensorViewWithSlice:(MTLTensorSlice)a3 error:(id *)a4;
- (unint64_t)setPurgeableState:(unint64_t)a3;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)makeAliasable;
- (void)setLabel:(id)a3;
- (void)touch;
@end

@implementation CaptureMTLTensor

- (unint64_t)setPurgeableState:(unint64_t)a3
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  v6 = [(MTLResourceSPI *)self->_baseObject setPurgeableState:a3];
  v7 = v18;
  *(v18 + 8) = -14933;
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
  v12 = [(CaptureMTLTensor *)self traceStream];
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

- (id)newTensorViewWithSlice:(MTLTensorSlice)a3 error:(id *)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLTensor_newTensorViewWithSlice_error", "Tensor", 0, 0);
  baseObject = self->_baseObject;
  v9 = var0;
  v10 = var1;
  if (baseObject)
  {
    v11 = [(MTLResourceSPI *)baseObject newTensorViewWithSlice:var0 error:var1, a4];
    if (v11)
    {
      v12 = [[CaptureMTLTensor alloc] initWithBaseObject:v11 captureTensor:self];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {

    v12 = 0;
    v11 = 0;
  }

  return v12;
}

- (id)newTensorViewWithReshapedDescriptor:(id)a3 error:(id *)a4
{
  v6 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLTensor_newTensorViewWithReshapedDescriptor_error", "Tensor", 0, 0);
  v7 = [(MTLResourceSPI *)self->_baseObject newTensorViewWithReshapedDescriptor:v6 error:a4];

  if (v7)
  {
    v8 = [[CaptureMTLTensor alloc] initWithBaseObject:v7 captureTensor:self];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)makeAliasable
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  [(MTLResourceSPI *)self->_baseObject makeAliasable];
  v4 = v14;
  *(v14 + 8) = -14938;
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
  v9 = [(CaptureMTLTensor *)self traceStream];
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

- (BOOL)doesAliasResource:(id)a3
{
  baseObject = self->_baseObject;
  v4 = [a3 baseObject];
  LOBYTE(baseObject) = [(MTLResourceSPI *)baseObject doesAliasResource:v4];

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

  return [(MTLResourceSPI *)baseObject doesAliasAnyResources:v8 count:a4];
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

  return [(MTLResourceSPI *)baseObject doesAliasAllResources:v8 count:a4];
}

- (void)dealloc
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -14948;
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
  v9 = [(CaptureMTLTensor *)self traceStream];
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
  v13.super_class = CaptureMTLTensor;
  [(CaptureMTLTensor *)&v13 dealloc];
}

- (void)setLabel:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLResourceSPI *)self->_baseObject setLabel:v4];
  v6 = v19;
  *(v19 + 8) = -14950;
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
  v11 = [(CaptureMTLTensor *)self traceStream];
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
  v5 = [(MTLResourceSPI *)baseObject conformsToProtocol:v4];

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
  v7.super_class = CaptureMTLTensor;
  v3 = [(CaptureMTLTensor *)&v7 description];
  v4 = [(MTLResourceSPI *)self->_baseObject description];
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

- (CaptureMTLTensor)initWithBaseObject:(id)a3 captureTensor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = CaptureMTLTensor;
  v9 = [(CaptureMTLTensor *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, a3);
    v11 = [v8 device];
    captureDevice = v10->_captureDevice;
    v10->_captureDevice = v11;

    v13 = [v8 traceContext];
    v10->_traceContext = v13;
    v14 = DEVICEOBJECT(v7);
    v10->_traceStream = GTTraceContext_openStream(v13, v14, v10);
  }

  return v10;
}

- (CaptureMTLTensor)initWithBaseObject:(id)a3 captureDevice:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CaptureMTLTensor;
  v9 = [(CaptureMTLTensor *)&v14 init];
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

- (CaptureMTLTensor)initWithBaseObject:(id)a3 captureBuffer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = CaptureMTLTensor;
  v9 = [(CaptureMTLTensor *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, a3);
    v11 = [v8 captureDevice];
    captureDevice = v10->_captureDevice;
    v10->_captureDevice = v11;

    v13 = [v8 traceContext];
    v10->_traceContext = v13;
    v14 = DEVICEOBJECT(v7);
    v10->_traceStream = GTTraceContext_openStream(v13, v14, v10);
  }

  return v10;
}

@end