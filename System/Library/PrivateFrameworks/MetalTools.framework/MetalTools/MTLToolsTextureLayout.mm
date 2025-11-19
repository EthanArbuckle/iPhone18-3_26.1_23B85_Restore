@interface MTLToolsTextureLayout
- ($71D83D51AB0F57F7CF166351F850C832)watermark;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)copyGranularity;
- (unint64_t)alignment;
- (unint64_t)size;
- (void)copyFromLinearBytes:(const void *)a3 linearOffset:(unint64_t)a4 linearBytesPerRow:(unint64_t)a5 linearBytesPerImage:(unint64_t)a6 toTextureMemory:(void *)a7 textureSlice:(unint64_t)a8 textureLevel:(unint64_t)a9 textureRegion:(id *)a10;
- (void)copyFromTextureMemory:(const void *)a3 textureSlice:(unint64_t)a4 textureLevel:(unint64_t)a5 textureRegion:(id *)a6 toLinearBytes:(void *)a7 linearOffset:(unint64_t)a8 linearBytesPerRow:(unint64_t)a9 linearBytesPerImage:(unint64_t)a10;
- (void)finalizeTextureMemory:(void *)a3;
- (void)initializeTextureMemory:(void *)a3;
@end

@implementation MTLToolsTextureLayout

- (unint64_t)size
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 size];
}

- (unint64_t)alignment
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 alignment];
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
  v2 = [(MTLToolsObject *)self baseObject];

  v3 = [v2 watermark];
  result.var0[1] = v4;
  result.var0[0] = v3;
  return result;
}

- (void)initializeTextureMemory:(void *)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 initializeTextureMemory:a3];
}

- (void)copyFromLinearBytes:(const void *)a3 linearOffset:(unint64_t)a4 linearBytesPerRow:(unint64_t)a5 linearBytesPerImage:(unint64_t)a6 toTextureMemory:(void *)a7 textureSlice:(unint64_t)a8 textureLevel:(unint64_t)a9 textureRegion:(id *)a10
{
  v16 = [(MTLToolsObject *)self baseObject];
  v17 = *&a10->var0.var2;
  v18[0] = *&a10->var0.var0;
  v18[1] = v17;
  v18[2] = *&a10->var1.var1;
  [v16 copyFromLinearBytes:a3 linearOffset:a4 linearBytesPerRow:a5 linearBytesPerImage:a6 toTextureMemory:a7 textureSlice:a8 textureLevel:a9 textureRegion:v18];
}

- (void)copyFromTextureMemory:(const void *)a3 textureSlice:(unint64_t)a4 textureLevel:(unint64_t)a5 textureRegion:(id *)a6 toLinearBytes:(void *)a7 linearOffset:(unint64_t)a8 linearBytesPerRow:(unint64_t)a9 linearBytesPerImage:(unint64_t)a10
{
  v16 = [(MTLToolsObject *)self baseObject];
  v17 = *&a6->var0.var2;
  v18[0] = *&a6->var0.var0;
  v18[1] = v17;
  v18[2] = *&a6->var1.var1;
  [v16 copyFromTextureMemory:a3 textureSlice:a4 textureLevel:a5 textureRegion:v18 toLinearBytes:a7 linearOffset:a8 linearBytesPerRow:a9 linearBytesPerImage:a10];
}

- (void)finalizeTextureMemory:(void *)a3
{
  v4 = [(MTLToolsObject *)self baseObject];

  [v4 finalizeTextureMemory:a3];
}

@end