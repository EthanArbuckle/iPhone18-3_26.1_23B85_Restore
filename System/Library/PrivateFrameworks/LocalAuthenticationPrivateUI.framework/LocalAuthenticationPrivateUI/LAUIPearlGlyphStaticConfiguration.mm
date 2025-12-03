@interface LAUIPearlGlyphStaticConfiguration
+ (id)createDefaultConfiguration;
+ (id)createSystemApertureConfiguration;
- (__n128)_init;
@end

@implementation LAUIPearlGlyphStaticConfiguration

+ (id)createDefaultConfiguration
{
  v2 = [LAUIPearlGlyphStaticConfiguration alloc];

  [(LAUIPearlGlyphStaticConfiguration *)v2 _init];
  return result;
}

+ (id)createSystemApertureConfiguration
{
  *&v2 = [[LAUIPearlGlyphStaticConfiguration alloc] _init].n128_u64[0];
  v4 = v3;
  [v3 setPathStyle:{1, v2}];
  [v4 setLineThicknessScale:1.190476];
  return v4;
}

- (__n128)_init
{
  if (self)
  {
    v7.receiver = self;
    v7.super_class = LAUIPearlGlyphStaticConfiguration;
    v1 = objc_msgSendSuper2(&v7, sel_init);
    if (v1)
    {
      v1[1].n128_u64[0] = 0;
      v1[1].n128_u64[1] = 0;
      __asm { FMOV            V0.2D, #1.0 }

      v1[2] = result;
      v1->n128_u8[8] = 0;
      v1[3].n128_u64[0] = 0;
    }
  }

  return result;
}

@end