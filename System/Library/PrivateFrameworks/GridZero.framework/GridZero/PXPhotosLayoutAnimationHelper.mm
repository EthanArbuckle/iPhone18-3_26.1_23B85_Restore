@interface PXPhotosLayoutAnimationHelper
- (PXPhotosLayoutAnimationHelper)init;
- (PXPhotosLayoutAnimationHelper)initWithContext:(id)context;
- (double)animationDuration;
- (void)animation:(id)animation adjustGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos forSpriteAppearingIntoRootIndexRange:(_PXGSpriteIndexRange)range;
- (void)animation:(id)animation adjustGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos forSpriteDisappearingFromRootIndexRange:(_PXGSpriteIndexRange)range;
@end

@implementation PXPhotosLayoutAnimationHelper

- (void)animation:(id)animation adjustGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos forSpriteDisappearingFromRootIndexRange:(_PXGSpriteIndexRange)range
{
  if (range.length)
  {
    v7 = (range.length + 3) & 0x1FFFFFFFCLL;
    v8 = xmmword_21AC7D600;
    v9 = xmmword_21AC7D610;
    v10 = vdupq_n_s64(range.length - 1);
    v11 = vdupq_n_s64(4uLL);
    do
    {
      v12 = vmovn_s64(vcgeq_u64(v10, v9));
      if (vuzp1_s16(v12, *v8.i8).u8[0])
      {
        styles->var0 = 0.0;
      }

      if (vuzp1_s16(v12, *&v8).i8[2])
      {
        styles[3].var4 = 0.0;
      }

      if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v10, *&v8))).i32[1])
      {
        styles[7].var1.var0.var0.var2 = 0.0;
        styles[10].var8 = 0.0;
      }

      v8 = vaddq_s64(v8, v11);
      v9 = vaddq_s64(v9, v11);
      styles = (styles + 640);
      v7 -= 4;
    }

    while (v7);
  }
}

- (void)animation:(id)animation adjustGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos forSpriteAppearingIntoRootIndexRange:(_PXGSpriteIndexRange)range
{
  if (range.length)
  {
    v7 = (range.length + 3) & 0x1FFFFFFFCLL;
    v8 = xmmword_21AC7D600;
    v9 = xmmword_21AC7D610;
    v10 = vdupq_n_s64(range.length - 1);
    v11 = vdupq_n_s64(4uLL);
    do
    {
      v12 = vmovn_s64(vcgeq_u64(v10, v9));
      if (vuzp1_s16(v12, *v8.i8).u8[0])
      {
        styles->var0 = 0.0;
      }

      if (vuzp1_s16(v12, *&v8).i8[2])
      {
        styles[3].var4 = 0.0;
      }

      if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v10, *&v8))).i32[1])
      {
        styles[7].var1.var0.var0.var2 = 0.0;
        styles[10].var8 = 0.0;
      }

      v8 = vaddq_s64(v8, v11);
      v9 = vaddq_s64(v9, v11);
      styles = (styles + 640);
      v7 -= 4;
    }

    while (v7);
  }
}

- (double)animationDuration
{
  v2 = +[PXPhotosGridSettings sharedInstance];
  [v2 defaultAnimationDuration];
  v4 = v3;

  return v4;
}

- (PXPhotosLayoutAnimationHelper)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosLayoutAnimationHelper.m" lineNumber:25 description:{@"%s is not available as initializer", "-[PXPhotosLayoutAnimationHelper init]"}];

  abort();
}

- (PXPhotosLayoutAnimationHelper)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = PXPhotosLayoutAnimationHelper;
  v5 = [(PXPhotosLayoutAnimationHelper *)&v9 init];
  if (v5)
  {
    v6 = [contextCopy copy];
    context = v5->_context;
    v5->_context = v6;
  }

  return v5;
}

@end