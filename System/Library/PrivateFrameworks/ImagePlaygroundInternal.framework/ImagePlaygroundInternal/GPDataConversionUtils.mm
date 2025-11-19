@interface GPDataConversionUtils
+ (id)convertFloat16ToFloat32:(id)a3;
@end

@implementation GPDataConversionUtils

+ (id)convertFloat16ToFloat32:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  v5 = v4 >> 1;
  v6 = [MEMORY[0x1E695DF88] dataWithLength:4 * (v4 >> 1)];
  v7 = [v3 bytes];
  v8 = [v6 mutableBytes];
  if (v4 >= 2)
  {
    do
    {
      v9 = *v7++;
      _H0 = v9;
      __asm { FCVT            S0, H0 }

      *v8++ = _S0;
      --v5;
    }

    while (v5);
  }

  return v6;
}

@end