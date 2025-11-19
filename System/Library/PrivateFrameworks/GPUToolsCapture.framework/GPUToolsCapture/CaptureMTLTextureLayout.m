@interface CaptureMTLTextureLayout
- ($71D83D51AB0F57F7CF166351F850C832)watermark;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)copyGranularity;
- (BOOL)conformsToProtocol:(id)a3;
- (CaptureMTLTextureLayout)initWithBaseObject:(id)a3 captureContext:(GTTraceContext *)a4;
- (NSString)description;
- (unint64_t)streamReference;
- (void)copyFromLinearBytes:(const void *)a3 linearOffset:(unint64_t)a4 linearBytesPerRow:(unint64_t)a5 linearBytesPerImage:(unint64_t)a6 toTextureMemory:(void *)a7 textureSlice:(unint64_t)a8 textureLevel:(unint64_t)a9 textureRegion:(id *)a10;
- (void)copyFromTextureMemory:(const void *)a3 textureSlice:(unint64_t)a4 textureLevel:(unint64_t)a5 textureRegion:(id *)a6 toLinearBytes:(void *)a7 linearOffset:(unint64_t)a8 linearBytesPerRow:(unint64_t)a9 linearBytesPerImage:(unint64_t)a10;
- (void)dealloc;
- (void)touch;
@end

@implementation CaptureMTLTextureLayout

- (void)dealloc
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  traceStream = self->_traceStream;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -16097;
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
  v9 = [(CaptureMTLTextureLayout *)self traceStream];
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
  v13.super_class = CaptureMTLTextureLayout;
  [(CaptureMTLTextureLayout *)&v13 dealloc];
}

- (void)copyFromTextureMemory:(const void *)a3 textureSlice:(unint64_t)a4 textureLevel:(unint64_t)a5 textureRegion:(id *)a6 toLinearBytes:(void *)a7 linearOffset:(unint64_t)a8 linearBytesPerRow:(unint64_t)a9 linearBytesPerImage:(unint64_t)a10
{
  baseObject = self->_baseObject;
  v11 = *&a6->var0.var2;
  v12[0] = *&a6->var0.var0;
  v12[1] = v11;
  v12[2] = *&a6->var1.var1;
  [(MTLTextureLayout *)baseObject copyFromTextureMemory:a3 textureSlice:a4 textureLevel:a5 textureRegion:v12 toLinearBytes:a7 linearOffset:a8 linearBytesPerRow:a9 linearBytesPerImage:a10];
}

- (void)copyFromLinearBytes:(const void *)a3 linearOffset:(unint64_t)a4 linearBytesPerRow:(unint64_t)a5 linearBytesPerImage:(unint64_t)a6 toTextureMemory:(void *)a7 textureSlice:(unint64_t)a8 textureLevel:(unint64_t)a9 textureRegion:(id *)a10
{
  baseObject = self->_baseObject;
  v11 = *&a10->var0.var2;
  v12[0] = *&a10->var0.var0;
  v12[1] = v11;
  v12[2] = *&a10->var1.var1;
  [(MTLTextureLayout *)baseObject copyFromLinearBytes:a3 linearOffset:a4 linearBytesPerRow:a5 linearBytesPerImage:a6 toTextureMemory:a7 textureSlice:a8 textureLevel:a9 textureRegion:v12];
}

- ($71D83D51AB0F57F7CF166351F850C832)watermark
{
  v2 = [(MTLTextureLayout *)self->_baseObject watermark];
  result.var0[1] = v3;
  result.var0[0] = v2;
  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)copyGranularity
{
  result = self->_baseObject;
  if (result)
  {
    return [($F99D9A4FB75BC57F3386B8DC8EE08D7A *)result copyGranularity];
  }

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  return result;
}

- (BOOL)conformsToProtocol:(id)a3
{
  baseObject = self->_baseObject;
  v4 = a3;
  v5 = [(MTLTextureLayout *)baseObject conformsToProtocol:v4];

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
  v7.super_class = CaptureMTLTextureLayout;
  v3 = [(CaptureMTLTextureLayout *)&v7 description];
  v4 = [(MTLTextureLayout *)self->_baseObject description];
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

- (CaptureMTLTextureLayout)initWithBaseObject:(id)a3 captureContext:(GTTraceContext *)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = CaptureMTLTextureLayout;
  v8 = [(CaptureMTLTextureLayout *)&v12 init];
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