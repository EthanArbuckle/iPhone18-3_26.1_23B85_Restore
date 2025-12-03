@interface GPDataConversionUtils
+ (id)convertFloat16ToFloat32:(id)float32;
@end

@implementation GPDataConversionUtils

+ (id)convertFloat16ToFloat32:(id)float32
{
  float32Copy = float32;
  v4 = [float32Copy length];
  v5 = v4 >> 1;
  v6 = [MEMORY[0x1E695DF88] dataWithLength:4 * (v4 >> 1)];
  bytes = [float32Copy bytes];
  mutableBytes = [v6 mutableBytes];
  if (v4 >= 2)
  {
    do
    {
      v9 = *bytes++;
      _H0 = v9;
      __asm { FCVT            S0, H0 }

      *mutableBytes++ = _S0;
      --v5;
    }

    while (v5);
  }

  return v6;
}

@end