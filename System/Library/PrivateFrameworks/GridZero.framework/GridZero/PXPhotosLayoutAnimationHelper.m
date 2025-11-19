@interface PXPhotosLayoutAnimationHelper
- (PXPhotosLayoutAnimationHelper)init;
- (PXPhotosLayoutAnimationHelper)initWithContext:(id)a3;
- (double)animationDuration;
- (void)animation:(id)a3 adjustGeometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 forSpriteAppearingIntoRootIndexRange:(_PXGSpriteIndexRange)a7;
- (void)animation:(id)a3 adjustGeometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 forSpriteDisappearingFromRootIndexRange:(_PXGSpriteIndexRange)a7;
@end

@implementation PXPhotosLayoutAnimationHelper

- (void)animation:(id)a3 adjustGeometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 forSpriteDisappearingFromRootIndexRange:(_PXGSpriteIndexRange)a7
{
  if (a7.length)
  {
    v7 = (a7.length + 3) & 0x1FFFFFFFCLL;
    v8 = xmmword_21AC7D600;
    v9 = xmmword_21AC7D610;
    v10 = vdupq_n_s64(a7.length - 1);
    v11 = vdupq_n_s64(4uLL);
    do
    {
      v12 = vmovn_s64(vcgeq_u64(v10, v9));
      if (vuzp1_s16(v12, *v8.i8).u8[0])
      {
        a5->var0 = 0.0;
      }

      if (vuzp1_s16(v12, *&v8).i8[2])
      {
        a5[3].var4 = 0.0;
      }

      if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v10, *&v8))).i32[1])
      {
        a5[7].var1.var0.var0.var2 = 0.0;
        a5[10].var8 = 0.0;
      }

      v8 = vaddq_s64(v8, v11);
      v9 = vaddq_s64(v9, v11);
      a5 = (a5 + 640);
      v7 -= 4;
    }

    while (v7);
  }
}

- (void)animation:(id)a3 adjustGeometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 forSpriteAppearingIntoRootIndexRange:(_PXGSpriteIndexRange)a7
{
  if (a7.length)
  {
    v7 = (a7.length + 3) & 0x1FFFFFFFCLL;
    v8 = xmmword_21AC7D600;
    v9 = xmmword_21AC7D610;
    v10 = vdupq_n_s64(a7.length - 1);
    v11 = vdupq_n_s64(4uLL);
    do
    {
      v12 = vmovn_s64(vcgeq_u64(v10, v9));
      if (vuzp1_s16(v12, *v8.i8).u8[0])
      {
        a5->var0 = 0.0;
      }

      if (vuzp1_s16(v12, *&v8).i8[2])
      {
        a5[3].var4 = 0.0;
      }

      if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v10, *&v8))).i32[1])
      {
        a5[7].var1.var0.var0.var2 = 0.0;
        a5[10].var8 = 0.0;
      }

      v8 = vaddq_s64(v8, v11);
      v9 = vaddq_s64(v9, v11);
      a5 = (a5 + 640);
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
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPhotosLayoutAnimationHelper.m" lineNumber:25 description:{@"%s is not available as initializer", "-[PXPhotosLayoutAnimationHelper init]"}];

  abort();
}

- (PXPhotosLayoutAnimationHelper)initWithContext:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXPhotosLayoutAnimationHelper;
  v5 = [(PXPhotosLayoutAnimationHelper *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    context = v5->_context;
    v5->_context = v6;
  }

  return v5;
}

@end