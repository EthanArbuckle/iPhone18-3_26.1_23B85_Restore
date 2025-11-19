@interface LibcoreNetUrlUrlUtils
+ (BOOL)isValidSchemeCharWithInt:(int)a3 withChar:(unsigned __int16)a4;
@end

@implementation LibcoreNetUrlUrlUtils

+ (BOOL)isValidSchemeCharWithInt:(int)a3 withChar:(unsigned __int16)a4
{
  v4 = 0x680000000000uLL >> a4;
  if (a4 > 0x2Eu)
  {
    LOBYTE(v4) = 0;
  }

  if ((a4 - 48) >= 0xA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  if (a3 < 1)
  {
    v5 = 0;
  }

  if ((a4 & 0xFFFFFFDF) - 65 >= 0x1A)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

@end