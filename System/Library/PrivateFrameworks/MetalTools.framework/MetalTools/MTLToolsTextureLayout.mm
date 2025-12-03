@interface MTLToolsTextureLayout
- ($71D83D51AB0F57F7CF166351F850C832)watermark;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)copyGranularity;
- (unint64_t)alignment;
- (unint64_t)size;
- (void)copyFromLinearBytes:(const void *)bytes linearOffset:(unint64_t)offset linearBytesPerRow:(unint64_t)row linearBytesPerImage:(unint64_t)image toTextureMemory:(void *)memory textureSlice:(unint64_t)slice textureLevel:(unint64_t)level textureRegion:(id *)self0;
- (void)copyFromTextureMemory:(const void *)memory textureSlice:(unint64_t)slice textureLevel:(unint64_t)level textureRegion:(id *)region toLinearBytes:(void *)bytes linearOffset:(unint64_t)offset linearBytesPerRow:(unint64_t)row linearBytesPerImage:(unint64_t)self0;
- (void)finalizeTextureMemory:(void *)memory;
- (void)initializeTextureMemory:(void *)memory;
@end

@implementation MTLToolsTextureLayout

- (unint64_t)size
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject size];
}

- (unint64_t)alignment
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject alignment];
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)copyGranularity
{
  result = [(MTLToolsObject *)self baseObject];
  if (result)
  {

    return [($F99D9A4FB75BC57F3386B8DC8EE08D7A *)result copyGranularity];
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- ($71D83D51AB0F57F7CF166351F850C832)watermark
{
  baseObject = [(MTLToolsObject *)self baseObject];

  watermark = [baseObject watermark];
  result.var0[1] = v4;
  result.var0[0] = watermark;
  return result;
}

- (void)initializeTextureMemory:(void *)memory
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject initializeTextureMemory:memory];
}

- (void)copyFromLinearBytes:(const void *)bytes linearOffset:(unint64_t)offset linearBytesPerRow:(unint64_t)row linearBytesPerImage:(unint64_t)image toTextureMemory:(void *)memory textureSlice:(unint64_t)slice textureLevel:(unint64_t)level textureRegion:(id *)self0
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v17 = *&region->var0.var2;
  v18[0] = *&region->var0.var0;
  v18[1] = v17;
  v18[2] = *&region->var1.var1;
  [baseObject copyFromLinearBytes:bytes linearOffset:offset linearBytesPerRow:row linearBytesPerImage:image toTextureMemory:memory textureSlice:slice textureLevel:level textureRegion:v18];
}

- (void)copyFromTextureMemory:(const void *)memory textureSlice:(unint64_t)slice textureLevel:(unint64_t)level textureRegion:(id *)region toLinearBytes:(void *)bytes linearOffset:(unint64_t)offset linearBytesPerRow:(unint64_t)row linearBytesPerImage:(unint64_t)self0
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v17 = *&region->var0.var2;
  v18[0] = *&region->var0.var0;
  v18[1] = v17;
  v18[2] = *&region->var1.var1;
  [baseObject copyFromTextureMemory:memory textureSlice:slice textureLevel:level textureRegion:v18 toLinearBytes:bytes linearOffset:offset linearBytesPerRow:row linearBytesPerImage:image];
}

- (void)finalizeTextureMemory:(void *)memory
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject finalizeTextureMemory:memory];
}

@end