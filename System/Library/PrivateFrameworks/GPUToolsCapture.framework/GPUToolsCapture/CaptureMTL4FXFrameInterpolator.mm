@interface CaptureMTL4FXFrameInterpolator
- (BOOL)conformsToProtocol:(id)a3;
- (CaptureMTL4FXFrameInterpolator)initWithBaseObject:(id)a3 captureDevice:(id)a4 captureCompiler:(id)a5;
- (NSString)description;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)a3;
- (void)setAspectRatio:(float)a3;
- (void)setColorTexture:(id)a3;
- (void)setColorTextureBarrierStages:(unint64_t)a3;
- (void)setDebugTexture:(id)a3;
- (void)setDeltaTime:(float)a3;
- (void)setDepthTexture:(id)a3;
- (void)setFarPlane:(float)a3;
- (void)setFence:(id)a3;
- (void)setFieldOfView:(float)a3;
- (void)setJitterOffsetX:(float)a3;
- (void)setJitterOffsetY:(float)a3;
- (void)setMotionTexture:(id)a3;
- (void)setMotionVectorScaleX:(float)a3;
- (void)setMotionVectorScaleY:(float)a3;
- (void)setNearPlane:(float)a3;
- (void)setOutputTexture:(id)a3;
- (void)setPrevColorTexture:(id)a3;
- (void)setUITexture:(id)a3;
- (void)touch;
@end

@implementation CaptureMTL4FXFrameInterpolator

- (void)dealloc
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -20407;
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
  v9 = [(CaptureMTL4FXFrameInterpolator *)self traceStream];
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
  v13.super_class = CaptureMTL4FXFrameInterpolator;
  [(CaptureMTL4FXFrameInterpolator *)&v13 dealloc];
}

- (void)setNearPlane:(float)a3
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  *&v6 = a3;
  [(MTL4FXFrameInterpolatorSPI *)self->_baseObject setNearPlane:v6];
  v7 = v17;
  *(v17 + 8) = -20339;
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
  v12 = [(CaptureMTL4FXFrameInterpolator *)self traceStream];
  if (v12)
  {
    var0 = v12->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 2) = a3;
  *(v9 + 3) = 0;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setMotionVectorScaleY:(float)a3
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  *&v6 = a3;
  [(MTL4FXFrameInterpolatorSPI *)self->_baseObject setMotionVectorScaleY:v6];
  v7 = v17;
  *(v17 + 8) = -20412;
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
  v12 = [(CaptureMTL4FXFrameInterpolator *)self traceStream];
  if (v12)
  {
    var0 = v12->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 2) = a3;
  *(v9 + 3) = 0;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setMotionVectorScaleX:(float)a3
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  *&v6 = a3;
  [(MTL4FXFrameInterpolatorSPI *)self->_baseObject setMotionVectorScaleX:v6];
  v7 = v17;
  *(v17 + 8) = -20413;
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
  v12 = [(CaptureMTL4FXFrameInterpolator *)self traceStream];
  if (v12)
  {
    var0 = v12->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 2) = a3;
  *(v9 + 3) = 0;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setJitterOffsetY:(float)a3
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  *&v6 = a3;
  [(MTL4FXFrameInterpolatorSPI *)self->_baseObject setJitterOffsetY:v6];
  v7 = v17;
  *(v17 + 8) = -20340;
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
  v12 = [(CaptureMTL4FXFrameInterpolator *)self traceStream];
  if (v12)
  {
    var0 = v12->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 2) = a3;
  *(v9 + 3) = 0;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setJitterOffsetX:(float)a3
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  *&v6 = a3;
  [(MTL4FXFrameInterpolatorSPI *)self->_baseObject setJitterOffsetX:v6];
  v7 = v17;
  *(v17 + 8) = -20341;
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
  v12 = [(CaptureMTL4FXFrameInterpolator *)self traceStream];
  if (v12)
  {
    var0 = v12->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 2) = a3;
  *(v9 + 3) = 0;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setFieldOfView:(float)a3
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  *&v6 = a3;
  [(MTL4FXFrameInterpolatorSPI *)self->_baseObject setFieldOfView:v6];
  v7 = v17;
  *(v17 + 8) = -20342;
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
  v12 = [(CaptureMTL4FXFrameInterpolator *)self traceStream];
  if (v12)
  {
    var0 = v12->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 2) = a3;
  *(v9 + 3) = 0;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setFarPlane:(float)a3
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  *&v6 = a3;
  [(MTL4FXFrameInterpolatorSPI *)self->_baseObject setFarPlane:v6];
  v7 = v17;
  *(v17 + 8) = -20343;
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
  v12 = [(CaptureMTL4FXFrameInterpolator *)self traceStream];
  if (v12)
  {
    var0 = v12->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 2) = a3;
  *(v9 + 3) = 0;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setDeltaTime:(float)a3
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  *&v6 = a3;
  [(MTL4FXFrameInterpolatorSPI *)self->_baseObject setDeltaTime:v6];
  v7 = v17;
  *(v17 + 8) = -20344;
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
  v12 = [(CaptureMTL4FXFrameInterpolator *)self traceStream];
  if (v12)
  {
    var0 = v12->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 2) = a3;
  *(v9 + 3) = 0;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setColorTextureBarrierStages:(unint64_t)a3
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTL4FXFrameInterpolatorSPI *)self->_baseObject setColorTextureBarrierStages:a3];
  v6 = v16;
  *(v16 + 8) = -20327;
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
  v11 = [(CaptureMTL4FXFrameInterpolator *)self traceStream];
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

- (void)setAspectRatio:(float)a3
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  *&v6 = a3;
  [(MTL4FXFrameInterpolatorSPI *)self->_baseObject setAspectRatio:v6];
  v7 = v17;
  *(v17 + 8) = -20345;
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
  v12 = [(CaptureMTL4FXFrameInterpolator *)self traceStream];
  if (v12)
  {
    var0 = v12->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 2) = a3;
  *(v9 + 3) = 0;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (BOOL)conformsToProtocol:(id)a3
{
  baseObject = self->_baseObject;
  v4 = a3;
  v5 = [(MTL4FXFrameInterpolatorSPI *)baseObject conformsToProtocol:v4];

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
  v7.super_class = CaptureMTL4FXFrameInterpolator;
  v3 = [(CaptureMTL4FXFrameInterpolator *)&v7 description];
  v4 = [(MTL4FXFrameInterpolatorSPI *)self->_baseObject description];
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

- (void)encodeToCommandBuffer:(id)a3
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
  [(MTL4FXFrameInterpolatorSPI *)baseObject encodeToCommandBuffer:v8];

  v9 = v21;
  *(v21 + 8) = -20406;
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
  v14 = [(CaptureMTL4FXFrameInterpolator *)self traceStream];
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

- (void)setPrevColorTexture:(id)a3
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  v6 = a3;
  GTTraceContext_pushEncoderWithStream(traceContext, &v19);
  v7 = [v6 baseObject];
  [(MTL4FXFrameInterpolatorSPI *)self->_baseObject setPrevColorTexture:v7];

  v8 = v20;
  *(v20 + 8) = -20409;
  v9 = BYTE9(v21);
  if (BYTE9(v21) > 0x30uLL)
  {
    v11 = *(*(&v19 + 1) + 24);
    v12 = BYTE10(v21);
    ++BYTE10(v21);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v20 + 1), v12 | 0x1000000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v21));
    BYTE9(v21) += 16;
  }

  *(v8 + 13) = v9;
  v13 = [(CaptureMTL4FXFrameInterpolator *)self traceStream];
  if (v13)
  {
    var0 = v13->var0;
  }

  else
  {
    var0 = 0;
  }

  v15 = [v6 traceStream];

  if (v15)
  {
    v16 = *v15;
  }

  else
  {
    v16 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = v16;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)setUITexture:(id)a3
{
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  v6 = [(CaptureMTLTexture *)v4 baseObject];
  [(MTL4FXFrameInterpolatorSPI *)self->_baseObject setUITexture:v6];

  captureUITexture = self->_captureUITexture;
  self->_captureUITexture = v4;
  v8 = v4;

  v9 = v21;
  *(v21 + 8) = -20337;
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
  v14 = [(CaptureMTL4FXFrameInterpolator *)self traceStream];
  if (v14)
  {
    var0 = v14->var0;
  }

  else
  {
    var0 = 0;
  }

  v16 = [(CaptureMTLTexture *)v8 traceStream];
  if (v16)
  {
    v17 = v16->var0;
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

- (void)setOutputTexture:(id)a3
{
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  v6 = [(CaptureMTLTexture *)v4 baseObject];
  [(MTL4FXFrameInterpolatorSPI *)self->_baseObject setOutputTexture:v6];

  captureOutputTexture = self->_captureOutputTexture;
  self->_captureOutputTexture = v4;
  v8 = v4;

  v9 = v21;
  *(v21 + 8) = -20411;
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
  v14 = [(CaptureMTL4FXFrameInterpolator *)self traceStream];
  if (v14)
  {
    var0 = v14->var0;
  }

  else
  {
    var0 = 0;
  }

  v16 = [(CaptureMTLTexture *)v8 traceStream];
  if (v16)
  {
    v17 = v16->var0;
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

- (void)setMotionTexture:(id)a3
{
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  v6 = [(CaptureMTLTexture *)v4 baseObject];
  [(MTL4FXFrameInterpolatorSPI *)self->_baseObject setMotionTexture:v6];

  captureMotionTexture = self->_captureMotionTexture;
  self->_captureMotionTexture = v4;
  v8 = v4;

  v9 = v21;
  *(v21 + 8) = -20414;
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
  v14 = [(CaptureMTL4FXFrameInterpolator *)self traceStream];
  if (v14)
  {
    var0 = v14->var0;
  }

  else
  {
    var0 = 0;
  }

  v16 = [(CaptureMTLTexture *)v8 traceStream];
  if (v16)
  {
    v17 = v16->var0;
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

- (void)setDepthTexture:(id)a3
{
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  v6 = [(CaptureMTLTexture *)v4 baseObject];
  [(MTL4FXFrameInterpolatorSPI *)self->_baseObject setDepthTexture:v6];

  captureDepthTexture = self->_captureDepthTexture;
  self->_captureDepthTexture = v4;
  v8 = v4;

  v9 = v21;
  *(v21 + 8) = -20417;
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
  v14 = [(CaptureMTL4FXFrameInterpolator *)self traceStream];
  if (v14)
  {
    var0 = v14->var0;
  }

  else
  {
    var0 = 0;
  }

  v16 = [(CaptureMTLTexture *)v8 traceStream];
  if (v16)
  {
    v17 = v16->var0;
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

- (void)setDebugTexture:(id)a3
{
  v4 = a3;
  [(MTL4FXFrameInterpolatorSPI *)self->_baseObject setDebugTexture:v4];
  captureDebugTexture = self->_captureDebugTexture;
  self->_captureDebugTexture = v4;
}

- (void)setColorTexture:(id)a3
{
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  v6 = [(CaptureMTLTexture *)v4 baseObject];
  [(MTL4FXFrameInterpolatorSPI *)self->_baseObject setColorTexture:v6];

  captureColorTexture = self->_captureColorTexture;
  self->_captureColorTexture = v4;
  v8 = v4;

  v9 = v21;
  *(v21 + 8) = -20419;
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
  v14 = [(CaptureMTL4FXFrameInterpolator *)self traceStream];
  if (v14)
  {
    var0 = v14->var0;
  }

  else
  {
    var0 = 0;
  }

  v16 = [(CaptureMTLTexture *)v8 traceStream];
  if (v16)
  {
    v17 = v16->var0;
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

- (void)setFence:(id)a3
{
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  v6 = [(CaptureMTLFence *)v4 baseObject];
  [(MTL4FXFrameInterpolatorSPI *)self->_baseObject setFence:v6];

  captureFence = self->_captureFence;
  self->_captureFence = v4;
  v8 = v4;

  v9 = v21;
  *(v21 + 8) = -20416;
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
  v14 = [(CaptureMTL4FXFrameInterpolator *)self traceStream];
  if (v14)
  {
    var0 = v14->var0;
  }

  else
  {
    var0 = 0;
  }

  v16 = [(CaptureMTLFence *)v8 traceStream];
  if (v16)
  {
    v17 = v16->var0;
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

- (CaptureMTL4FXFrameInterpolator)initWithBaseObject:(id)a3 captureDevice:(id)a4 captureCompiler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = CaptureMTL4FXFrameInterpolator;
  v12 = [(CaptureMTL4FXFrameInterpolator *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_baseObject, a3);
    objc_storeStrong(&v13->_captureDevice, a4);
    objc_storeStrong(&v13->_captureCompiler, a5);
    v14 = [v10 traceContext];
    v13->_traceContext = v14;
    v15 = DEVICEOBJECT(v9);
    v13->_traceStream = GTTraceContext_openStream(v14, v15, v13);
  }

  return v13;
}

@end