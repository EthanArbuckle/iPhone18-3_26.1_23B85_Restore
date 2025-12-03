@interface LibcoreNetUrlUrlUtils
+ (BOOL)isValidSchemeCharWithInt:(int)int withChar:(unsigned __int16)char;
@end

@implementation LibcoreNetUrlUrlUtils

+ (BOOL)isValidSchemeCharWithInt:(int)int withChar:(unsigned __int16)char
{
  v4 = 0x680000000000uLL >> char;
  if (char > 0x2Eu)
  {
    LOBYTE(v4) = 0;
  }

  if ((char - 48) >= 0xA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  if (int < 1)
  {
    v5 = 0;
  }

  if ((char & 0xFFFFFFDF) - 65 >= 0x1A)
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