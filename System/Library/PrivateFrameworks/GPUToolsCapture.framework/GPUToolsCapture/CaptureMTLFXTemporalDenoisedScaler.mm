@interface CaptureMTLFXTemporalDenoisedScaler
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTLFXTemporalDenoisedScaler)initWithBaseObject:(id)object captureDevice:(id)device;
- (NSString)description;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)buffer;
- (void)encodeToCommandQueue:(id)queue;
- (void)setColorTexture:(id)texture;
- (void)setDebugTexture:(id)texture;
- (void)setDenoiseStrengthMaskTexture:(id)texture;
- (void)setDepthTexture:(id)texture;
- (void)setDiffuseAlbedoTexture:(id)texture;
- (void)setExposureTexture:(id)texture;
- (void)setFence:(id)fence;
- (void)setInputContentHeight:(unint64_t)height;
- (void)setInputContentWidth:(unint64_t)width;
- (void)setJitterOffsetX:(float)x;
- (void)setJitterOffsetY:(float)y;
- (void)setMotionTexture:(id)texture;
- (void)setMotionVectorScaleX:(float)x;
- (void)setMotionVectorScaleY:(float)y;
- (void)setNormalTexture:(id)texture;
- (void)setOutputTexture:(id)texture;
- (void)setPreExposure:(float)exposure;
- (void)setReactiveMaskTexture:(id)texture;
- (void)setRoughnessTexture:(id)texture;
- (void)setSpecularAlbedoTexture:(id)texture;
- (void)setSpecularHitDistanceTexture:(id)texture;
- (void)setTransparencyOverlayTexture:(id)texture;
- (void)setViewToClipMatrix:(__n128)matrix;
- (void)setWorldToViewMatrix:(__n128)matrix;
- (void)touch;
@end

@implementation CaptureMTLFXTemporalDenoisedScaler

- (void)encodeToCommandQueue:(id)queue
{
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  queueCopy = queue;
  GTTraceContext_pushEncoderWithStream(traceContext, &v20);
  baseObject = self->_baseObject;
  baseObject = [queueCopy baseObject];
  [(MTLFXTemporalDenoisedScalerSPI *)baseObject encodeToCommandQueue:baseObject];

  v9 = v21;
  *(v21 + 8) = -20346;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [queueCopy traceStream];

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

- (void)setWorldToViewMatrix:(__n128)matrix
{
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  v6 = *(self + 32);
  GTTraceContext_pushEncoderWithStream(*(self + 24), &v20);
  [*(self + 8) setWorldToViewMatrix:{a2.n128_f64[0], matrix.n128_f64[0], a4.n128_f64[0], a5.n128_f64[0]}];
  v7 = *(&v20 + 1);
  v8 = v21;
  *(v21 + 8) = -20422;
  v9 = *(v7 + 24);
  v10 = BYTE10(v22);
  ++BYTE10(v22);
  Bytes = GTTraceMemPool_allocateBytes(v9, *(&v21 + 1), v10 | 0x4800000000);
  *(v8 + 13) = v10;
  traceStream = [self traceStream];
  if (traceStream)
  {
    v13 = *traceStream;
  }

  else
  {
    v13 = 0;
  }

  *(Bytes + 2) = v13;
  *(Bytes + 24) = a2;
  *(Bytes + 40) = matrix;
  *(Bytes + 56) = a4;
  *(Bytes + 72) = a5;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v22);
  *(v21 + 15) |= 8u;
}

- (void)setViewToClipMatrix:(__n128)matrix
{
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  v6 = *(self + 32);
  GTTraceContext_pushEncoderWithStream(*(self + 24), &v20);
  [*(self + 8) setViewToClipMatrix:{a2.n128_f64[0], matrix.n128_f64[0], a4.n128_f64[0], a5.n128_f64[0]}];
  v7 = *(&v20 + 1);
  v8 = v21;
  *(v21 + 8) = -20423;
  v9 = *(v7 + 24);
  v10 = BYTE10(v22);
  ++BYTE10(v22);
  Bytes = GTTraceMemPool_allocateBytes(v9, *(&v21 + 1), v10 | 0x4800000000);
  *(v8 + 13) = v10;
  traceStream = [self traceStream];
  if (traceStream)
  {
    v13 = *traceStream;
  }

  else
  {
    v13 = 0;
  }

  *(Bytes + 2) = v13;
  *(Bytes + 24) = a2;
  *(Bytes + 40) = matrix;
  *(Bytes + 56) = a4;
  *(Bytes + 72) = a5;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v22);
  *(v21 + 15) |= 8u;
}

- (void)setPreExposure:(float)exposure
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  *&v6 = exposure;
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setPreExposure:v6];
  v7 = v17;
  *(v17 + 8) = -20429;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 2) = exposure;
  *(v9 + 3) = 0;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setMotionVectorScaleY:(float)y
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  *&v6 = y;
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setMotionVectorScaleY:v6];
  v7 = v17;
  *(v17 + 8) = -20432;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 2) = y;
  *(v9 + 3) = 0;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setMotionVectorScaleX:(float)x
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  *&v6 = x;
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setMotionVectorScaleX:v6];
  v7 = v17;
  *(v17 + 8) = -20433;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 2) = x;
  *(v9 + 3) = 0;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setJitterOffsetY:(float)y
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  *&v6 = y;
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setJitterOffsetY:v6];
  v7 = v17;
  *(v17 + 8) = -20435;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 2) = y;
  *(v9 + 3) = 0;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setJitterOffsetX:(float)x
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  *&v6 = x;
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setJitterOffsetX:v6];
  v7 = v17;
  *(v17 + 8) = -20436;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 2) = x;
  *(v9 + 3) = 0;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setInputContentWidth:(unint64_t)width
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setInputContentWidth:width];
  v6 = v16;
  *(v16 + 8) = -20437;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = width;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setInputContentHeight:(unint64_t)height
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setInputContentHeight:height];
  v6 = v16;
  *(v16 + 8) = -20438;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = height;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setDenoiseStrengthMaskTexture:(id)texture
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceContext = self->_traceContext;
  traceStream = self->_traceStream;
  textureCopy = texture;
  GTTraceContext_pushEncoderWithStream(traceContext, &v19);
  baseObject = [textureCopy baseObject];
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setDenoiseStrengthMaskTexture:baseObject];

  v8 = v20;
  *(v20 + 8) = -20348;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [textureCopy traceStream];

  if (traceStream2)
  {
    v16 = *traceStream2;
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

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTLFXTemporalDenoisedScalerSPI *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTLFXTemporalDenoisedScaler;
  v3 = [(CaptureMTLFXTemporalDenoisedScaler *)&v7 description];
  v4 = [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject description];
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
  baseObject = self->_baseObject;
  self->_baseObject = 0;

  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  v5 = v16;
  *(v16 + 8) = -20421;
  v6 = BYTE9(v17);
  if (BYTE9(v17) > 0x38uLL)
  {
    v8 = *(*(&v15 + 1) + 24);
    v9 = BYTE10(v17);
    ++BYTE10(v17);
    v7 = GTTraceMemPool_allocateBytes(v8, *(&v16 + 1), v9 | 0x800000000) + 16;
    v6 = v9;
  }

  else
  {
    v7 = (v5 + BYTE9(v17));
    BYTE9(v17) += 8;
  }

  *(v5 + 13) = v6;
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
  GTTraceContext_closeStream(self->_traceContext, &self->_traceStream->var0);
  v14.receiver = self;
  v14.super_class = CaptureMTLFXTemporalDenoisedScaler;
  [(CaptureMTLFXTemporalDenoisedScaler *)&v14 dealloc];
}

- (void)setTransparencyOverlayTexture:(id)texture
{
  textureCopy = texture;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = [(CaptureMTLTexture *)textureCopy baseObject];
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setTransparencyOverlayTexture:baseObject];

  captureTransparencyOverlayTexture = self->_captureTransparencyOverlayTexture;
  self->_captureTransparencyOverlayTexture = textureCopy;
  v8 = textureCopy;

  v9 = v21;
  *(v21 + 8) = -20314;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTexture *)v8 traceStream];
  if (traceStream2)
  {
    v17 = traceStream2->var0;
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

- (void)setReactiveMaskTexture:(id)texture
{
  textureCopy = texture;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = [(CaptureMTLTexture *)textureCopy baseObject];
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setReactiveMaskTexture:baseObject];

  captureReactiveMaskTexture = self->_captureReactiveMaskTexture;
  self->_captureReactiveMaskTexture = textureCopy;
  v8 = textureCopy;

  v9 = v21;
  *(v21 + 8) = -20428;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTexture *)v8 traceStream];
  if (traceStream2)
  {
    v17 = traceStream2->var0;
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

- (void)encodeToCommandBuffer:(id)buffer
{
  bufferCopy = buffer;
  isCapturing = [bufferCopy isCapturing];
  baseObject = self->_baseObject;
  if (isCapturing)
  {
    v7 = self->_baseObject;
    if (objc_opt_respondsToSelector())
    {
      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      traceStream = self->_traceStream;
      GTTraceContext_pushEncoderWithStream(self->_traceContext, &v33);
      v9 = v34;
      *(v34 + 8) = -18422;
      v10 = BYTE9(v35);
      if (BYTE9(v35) > 0x30uLL)
      {
        v13 = *(*(&v33 + 1) + 24);
        v14 = BYTE10(v35);
        ++BYTE10(v35);
        v11 = GTTraceMemPool_allocateBytes(v13, *(&v34 + 1), v14 | 0x1000000000) + 16;
        v10 = v14;
      }

      else
      {
        v11 = (v9 + BYTE9(v35));
        BYTE9(v35) += 16;
      }

      *(v9 + 13) = v10;
      traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
      if (traceStream)
      {
        var0 = traceStream->var0;
      }

      else
      {
        var0 = 0;
      }

      *v11 = var0;
      *(v11 + 1) = 0;
      s();
      *v17 = v18;
      *(v17 + 8) = BYTE8(v35);
      *(v34 + 15) |= 8u;
    }

    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    traceContext = self->_traceContext;
    [bufferCopy traceStream];
    GTTraceContext_pushEncoderWithStream(traceContext, &v33);
    v20 = self->_baseObject;
    baseObject = [bufferCopy baseObject];
    [(MTLFXTemporalDenoisedScalerSPI *)v20 encodeToCommandBuffer:baseObject];

    v22 = v34;
    *(v34 + 8) = -20420;
    v23 = BYTE9(v35);
    if (BYTE9(v35) > 0x30uLL)
    {
      v25 = *(*(&v33 + 1) + 24);
      v26 = BYTE10(v35);
      ++BYTE10(v35);
      v24 = GTTraceMemPool_allocateBytes(v25, *(&v34 + 1), v26 | 0x1000000000) + 16;
      v23 = v26;
    }

    else
    {
      v24 = (v22 + BYTE9(v35));
      BYTE9(v35) += 16;
    }

    *(v22 + 13) = v23;
    traceStream2 = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
    if (traceStream2)
    {
      v28 = traceStream2->var0;
    }

    else
    {
      v28 = 0;
    }

    traceStream3 = [bufferCopy traceStream];
    if (traceStream3)
    {
      v30 = *traceStream3;
    }

    else
    {
      v30 = 0;
    }

    *v24 = v28;
    *(v24 + 1) = v30;
    s();
    *v31 = v32;
    *(v31 + 8) = BYTE8(v35);
    *(v34 + 15) |= 8u;
  }

  else
  {
    baseObject2 = [bufferCopy baseObject];
    [(MTLFXTemporalDenoisedScalerSPI *)baseObject encodeToCommandBuffer:baseObject2];
  }
}

- (void)setDebugTexture:(id)texture
{
  objc_storeStrong(&self->_captureDebugTexture, texture);
  textureCopy = texture;
  baseObject = [textureCopy baseObject];
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setDebugTexture:baseObject];
}

- (void)setOutputTexture:(id)texture
{
  textureCopy = texture;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = [(CaptureMTLTexture *)textureCopy baseObject];
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setOutputTexture:baseObject];

  captureOutputTexture = self->_captureOutputTexture;
  self->_captureOutputTexture = textureCopy;
  v8 = textureCopy;

  v9 = v21;
  *(v21 + 8) = -20430;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTexture *)v8 traceStream];
  if (traceStream2)
  {
    v17 = traceStream2->var0;
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

- (void)setSpecularHitDistanceTexture:(id)texture
{
  textureCopy = texture;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = [(CaptureMTLTexture *)textureCopy baseObject];
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setSpecularHitDistanceTexture:baseObject];

  captureSpecularHitDistanceTexture = self->_captureSpecularHitDistanceTexture;
  self->_captureSpecularHitDistanceTexture = textureCopy;
  v8 = textureCopy;

  v9 = v21;
  *(v21 + 8) = -20424;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTexture *)v8 traceStream];
  if (traceStream2)
  {
    v17 = traceStream2->var0;
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

- (void)setRoughnessTexture:(id)texture
{
  textureCopy = texture;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = [(CaptureMTLTexture *)textureCopy baseObject];
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setRoughnessTexture:baseObject];

  captureRoughnessTexture = self->_captureRoughnessTexture;
  self->_captureRoughnessTexture = textureCopy;
  v8 = textureCopy;

  v9 = v21;
  *(v21 + 8) = -20426;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTexture *)v8 traceStream];
  if (traceStream2)
  {
    v17 = traceStream2->var0;
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

- (void)setNormalTexture:(id)texture
{
  textureCopy = texture;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = [(CaptureMTLTexture *)textureCopy baseObject];
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setNormalTexture:baseObject];

  captureNormalTexture = self->_captureNormalTexture;
  self->_captureNormalTexture = textureCopy;
  v8 = textureCopy;

  v9 = v21;
  *(v21 + 8) = -20431;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTexture *)v8 traceStream];
  if (traceStream2)
  {
    v17 = traceStream2->var0;
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

- (void)setSpecularAlbedoTexture:(id)texture
{
  textureCopy = texture;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = [(CaptureMTLTexture *)textureCopy baseObject];
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setSpecularAlbedoTexture:baseObject];

  captureSpecularAlbedoTexture = self->_captureSpecularAlbedoTexture;
  self->_captureSpecularAlbedoTexture = textureCopy;
  v8 = textureCopy;

  v9 = v21;
  *(v21 + 8) = -20425;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTexture *)v8 traceStream];
  if (traceStream2)
  {
    v17 = traceStream2->var0;
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

- (void)setDiffuseAlbedoTexture:(id)texture
{
  textureCopy = texture;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = [(CaptureMTLTexture *)textureCopy baseObject];
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setDiffuseAlbedoTexture:baseObject];

  captureDiffuseAlbedoTexture = self->_captureDiffuseAlbedoTexture;
  self->_captureDiffuseAlbedoTexture = textureCopy;
  v8 = textureCopy;

  v9 = v21;
  *(v21 + 8) = -20441;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTexture *)v8 traceStream];
  if (traceStream2)
  {
    v17 = traceStream2->var0;
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

- (void)setMotionTexture:(id)texture
{
  textureCopy = texture;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = [(CaptureMTLTexture *)textureCopy baseObject];
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setMotionTexture:baseObject];

  captureMotionTexture = self->_captureMotionTexture;
  self->_captureMotionTexture = textureCopy;
  v8 = textureCopy;

  v9 = v21;
  *(v21 + 8) = -20434;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTexture *)v8 traceStream];
  if (traceStream2)
  {
    v17 = traceStream2->var0;
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

- (void)setExposureTexture:(id)texture
{
  textureCopy = texture;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = [(CaptureMTLTexture *)textureCopy baseObject];
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setExposureTexture:baseObject];

  captureExposureTexture = self->_captureExposureTexture;
  self->_captureExposureTexture = textureCopy;
  v8 = textureCopy;

  v9 = v21;
  *(v21 + 8) = -20440;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTexture *)v8 traceStream];
  if (traceStream2)
  {
    v17 = traceStream2->var0;
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

- (void)setDepthTexture:(id)texture
{
  textureCopy = texture;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = [(CaptureMTLTexture *)textureCopy baseObject];
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setDepthTexture:baseObject];

  captureDepthTexture = self->_captureDepthTexture;
  self->_captureDepthTexture = textureCopy;
  v8 = textureCopy;

  v9 = v21;
  *(v21 + 8) = -20442;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTexture *)v8 traceStream];
  if (traceStream2)
  {
    v17 = traceStream2->var0;
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

- (void)setColorTexture:(id)texture
{
  textureCopy = texture;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = [(CaptureMTLTexture *)textureCopy baseObject];
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setColorTexture:baseObject];

  captureColorTexture = self->_captureColorTexture;
  self->_captureColorTexture = textureCopy;
  v8 = textureCopy;

  v9 = v21;
  *(v21 + 8) = -20444;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTexture *)v8 traceStream];
  if (traceStream2)
  {
    v17 = traceStream2->var0;
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

- (void)setFence:(id)fence
{
  fenceCopy = fence;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  baseObject = [(CaptureMTLFence *)fenceCopy baseObject];
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setFence:baseObject];

  captureFence = self->_captureFence;
  self->_captureFence = fenceCopy;
  v8 = fenceCopy;

  v9 = v21;
  *(v21 + 8) = -20439;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLFence *)v8 traceStream];
  if (traceStream2)
  {
    v17 = traceStream2->var0;
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

- (CaptureMTLFXTemporalDenoisedScaler)initWithBaseObject:(id)object captureDevice:(id)device
{
  objectCopy = object;
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = CaptureMTLFXTemporalDenoisedScaler;
  v9 = [(CaptureMTLFXTemporalDenoisedScaler *)&v14 init];
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