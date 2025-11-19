@interface CaptureMTLFXTemporalScaler
- (BOOL)conformsToProtocol:(id)a3;
- (CGPoint)previousJitterOffset;
- (CaptureMTLFXTemporalScaler)initWithBaseObject:(id)a3 captureDevice:(id)a4;
- (NSString)description;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)a3;
- (void)encodeToCommandQueue:(id)a3;
- (void)setColorTexture:(id)a3;
- (void)setDebugTexture:(id)a3;
- (void)setDepthTexture:(id)a3;
- (void)setExposureTexture:(id)a3;
- (void)setFence:(id)a3;
- (void)setInputContentHeight:(unint64_t)a3;
- (void)setInputContentWidth:(unint64_t)a3;
- (void)setJitterOffsetX:(float)a3;
- (void)setJitterOffsetY:(float)a3;
- (void)setMotionTexture:(id)a3;
- (void)setMotionVectorScaleX:(float)a3;
- (void)setMotionVectorScaleY:(float)a3;
- (void)setOutputTexture:(id)a3;
- (void)setPreExposure:(float)a3;
- (void)setReactiveMaskTexture:(id)a3;
- (void)touch;
@end

@implementation CaptureMTLFXTemporalScaler

- (void)encodeToCommandQueue:(id)a3
{
  v4 = a3;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLFXTemporalScaler_encodeToCommandQueue", "MetalFX SPI", 0, 0);
  baseObject = self->_baseObject;
  v6 = [v4 baseObject];

  [(MTLFXTemporalScalerSPI *)baseObject encodeToCommandQueue:v6];
}

- (CGPoint)previousJitterOffset
{
  [(MTLFXTemporalScalerSPI *)self->_baseObject previousJitterOffset];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setPreExposure:(float)a3
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  *&v6 = a3;
  [(MTLFXTemporalScalerSPI *)self->_baseObject setPreExposure:v6];
  v7 = v17;
  *(v17 + 8) = -20460;
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
  v12 = [(CaptureMTLFXTemporalScaler *)self traceStream];
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
  [(MTLFXTemporalScalerSPI *)self->_baseObject setMotionVectorScaleY:v6];
  v7 = v17;
  *(v17 + 8) = -20462;
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
  v12 = [(CaptureMTLFXTemporalScaler *)self traceStream];
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
  [(MTLFXTemporalScalerSPI *)self->_baseObject setMotionVectorScaleX:v6];
  v7 = v17;
  *(v17 + 8) = -20463;
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
  v12 = [(CaptureMTLFXTemporalScaler *)self traceStream];
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
  [(MTLFXTemporalScalerSPI *)self->_baseObject setJitterOffsetY:v6];
  v7 = v17;
  *(v17 + 8) = -20465;
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
  v12 = [(CaptureMTLFXTemporalScaler *)self traceStream];
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
  [(MTLFXTemporalScalerSPI *)self->_baseObject setJitterOffsetX:v6];
  v7 = v17;
  *(v17 + 8) = -20466;
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
  v12 = [(CaptureMTLFXTemporalScaler *)self traceStream];
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

- (void)setInputContentWidth:(unint64_t)a3
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLFXTemporalScalerSPI *)self->_baseObject setInputContentWidth:a3];
  v6 = v16;
  *(v16 + 8) = -20467;
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
  v11 = [(CaptureMTLFXTemporalScaler *)self traceStream];
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

- (void)setInputContentHeight:(unint64_t)a3
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLFXTemporalScalerSPI *)self->_baseObject setInputContentHeight:a3];
  v6 = v16;
  *(v16 + 8) = -20468;
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
  v11 = [(CaptureMTLFXTemporalScaler *)self traceStream];
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

- (BOOL)conformsToProtocol:(id)a3
{
  baseObject = self->_baseObject;
  v4 = a3;
  v5 = [(MTLFXTemporalScalerSPI *)baseObject conformsToProtocol:v4];

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
  v7.super_class = CaptureMTLFXTemporalScaler;
  v3 = [(CaptureMTLFXTemporalScaler *)&v7 description];
  v4 = [(MTLFXTemporalScalerSPI *)self->_baseObject description];
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
  *(v16 + 8) = -20458;
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
  v10 = [(CaptureMTLFXTemporalScaler *)self traceStream];
  if (v10)
  {
    var0 = v10->var0;
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
  v14.super_class = CaptureMTLFXTemporalScaler;
  [(CaptureMTLFXTemporalScaler *)&v14 dealloc];
}

- (void)setReactiveMaskTexture:(id)a3
{
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  v6 = [(CaptureMTLTexture *)v4 baseObject];
  [(MTLFXTemporalScalerSPI *)self->_baseObject setReactiveMaskTexture:v6];

  captureReactiveMaskTexture = self->_captureReactiveMaskTexture;
  self->_captureReactiveMaskTexture = v4;
  v8 = v4;

  v9 = v21;
  *(v21 + 8) = -20456;
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
  v14 = [(CaptureMTLFXTemporalScaler *)self traceStream];
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

- (void)encodeToCommandBuffer:(id)a3
{
  v4 = a3;
  v5 = [v4 isCapturing];
  baseObject = self->_baseObject;
  if (v5)
  {
    v7 = self->_baseObject;
    if (objc_opt_respondsToSelector())
    {
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      traceStream = self->_traceStream;
      GTTraceContext_pushEncoderWithStream(self->_traceContext, &v34);
      v9 = [(MTLFXTemporalScalerSPI *)self->_baseObject executionMode];
      v10 = v35;
      *(v35 + 8) = -18430;
      v11 = BYTE9(v36);
      if (BYTE9(v36) > 0x30uLL)
      {
        v14 = *(*(&v34 + 1) + 24);
        v15 = BYTE10(v36);
        ++BYTE10(v36);
        v12 = GTTraceMemPool_allocateBytes(v14, *(&v35 + 1), v15 | 0x1000000000) + 16;
        v11 = v15;
      }

      else
      {
        v12 = (v10 + BYTE9(v36));
        BYTE9(v36) += 16;
      }

      *(v10 + 13) = v11;
      v16 = [(CaptureMTLFXTemporalScaler *)self traceStream];
      if (v16)
      {
        var0 = v16->var0;
      }

      else
      {
        var0 = 0;
      }

      *v12 = var0;
      *(v12 + 1) = v9;
      s();
      *v18 = v19;
      *(v18 + 8) = BYTE8(v36);
      *(v35 + 15) |= 8u;
    }

    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    traceContext = self->_traceContext;
    [v4 traceStream];
    GTTraceContext_pushEncoderWithStream(traceContext, &v34);
    v21 = self->_baseObject;
    v22 = [v4 baseObject];
    [(MTLFXTemporalScalerSPI *)v21 encodeToCommandBuffer:v22];

    v23 = v35;
    *(v35 + 8) = -20457;
    v24 = BYTE9(v36);
    if (BYTE9(v36) > 0x30uLL)
    {
      v26 = *(*(&v34 + 1) + 24);
      v27 = BYTE10(v36);
      ++BYTE10(v36);
      v25 = GTTraceMemPool_allocateBytes(v26, *(&v35 + 1), v27 | 0x1000000000) + 16;
      v24 = v27;
    }

    else
    {
      v25 = (v23 + BYTE9(v36));
      BYTE9(v36) += 16;
    }

    *(v23 + 13) = v24;
    v28 = [(CaptureMTLFXTemporalScaler *)self traceStream];
    if (v28)
    {
      v29 = v28->var0;
    }

    else
    {
      v29 = 0;
    }

    v30 = [v4 traceStream];
    if (v30)
    {
      v31 = *v30;
    }

    else
    {
      v31 = 0;
    }

    *v25 = v29;
    *(v25 + 1) = v31;
    s();
    *v32 = v33;
    *(v32 + 8) = BYTE8(v36);
    *(v35 + 15) |= 8u;
  }

  else
  {
    v13 = [v4 baseObject];
    [(MTLFXTemporalScalerSPI *)baseObject encodeToCommandBuffer:v13];
  }
}

- (void)setDebugTexture:(id)a3
{
  objc_storeStrong(&self->_captureDebugTexture, a3);
  v5 = a3;
  v6 = [v5 baseObject];
  [(MTLFXTemporalScalerSPI *)self->_baseObject setDebugTexture:v6];
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
  [(MTLFXTemporalScalerSPI *)self->_baseObject setOutputTexture:v6];

  captureOutputTexture = self->_captureOutputTexture;
  self->_captureOutputTexture = v4;
  v8 = v4;

  v9 = v21;
  *(v21 + 8) = -20461;
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
  v14 = [(CaptureMTLFXTemporalScaler *)self traceStream];
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
  [(MTLFXTemporalScalerSPI *)self->_baseObject setMotionTexture:v6];

  captureMotionTexture = self->_captureMotionTexture;
  self->_captureMotionTexture = v4;
  v8 = v4;

  v9 = v21;
  *(v21 + 8) = -20464;
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
  v14 = [(CaptureMTLFXTemporalScaler *)self traceStream];
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

- (void)setExposureTexture:(id)a3
{
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  v6 = [(CaptureMTLTexture *)v4 baseObject];
  [(MTLFXTemporalScalerSPI *)self->_baseObject setExposureTexture:v6];

  captureExposureTexture = self->_captureExposureTexture;
  self->_captureExposureTexture = v4;
  v8 = v4;

  v9 = v21;
  *(v21 + 8) = -20470;
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
  v14 = [(CaptureMTLFXTemporalScaler *)self traceStream];
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
  [(MTLFXTemporalScalerSPI *)self->_baseObject setDepthTexture:v6];

  captureDepthTexture = self->_captureDepthTexture;
  self->_captureDepthTexture = v4;
  v8 = v4;

  v9 = v21;
  *(v21 + 8) = -20471;
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
  v14 = [(CaptureMTLFXTemporalScaler *)self traceStream];
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

- (void)setColorTexture:(id)a3
{
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  v6 = [(CaptureMTLTexture *)v4 baseObject];
  [(MTLFXTemporalScalerSPI *)self->_baseObject setColorTexture:v6];

  captureColorTexture = self->_captureColorTexture;
  self->_captureColorTexture = v4;
  v8 = v4;

  v9 = v21;
  *(v21 + 8) = -20473;
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
  v14 = [(CaptureMTLFXTemporalScaler *)self traceStream];
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
  [(MTLFXTemporalScalerSPI *)self->_baseObject setFence:v6];

  captureFence = self->_captureFence;
  self->_captureFence = v4;
  v8 = v4;

  v9 = v21;
  *(v21 + 8) = -20469;
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
  v14 = [(CaptureMTLFXTemporalScaler *)self traceStream];
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

- (CaptureMTLFXTemporalScaler)initWithBaseObject:(id)a3 captureDevice:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CaptureMTLFXTemporalScaler;
  v9 = [(CaptureMTLFXTemporalScaler *)&v14 init];
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