@interface ECPackedDataUtils
+ (char)prepareForDataOfLength:(unsigned int)a3 atIndex:(unsigned int)a4 withPreviousLength:(unsigned int)a5 inPackedData:(__CFData *)a6 packedDataSize:(unsigned int)a7;
+ (id)dumpDataToHexadecimalString:(char *)a3 start:(unsigned int)a4 stop:(unsigned int)a5 nicelyFormatted:(BOOL)a6;
+ (id)readStringFromData:(char *)a3 atOffset:(unsigned int)a4 withLength:(unsigned int)a5;
+ (void)writeString:(id)a3 toPackedData:(__CFData *)a4 packedDataSize:(unsigned int)a5 atIndex:(unsigned int)a6 withPreviousLength:(unsigned __int16)a7 outLength:(unsigned __int16 *)a8;
@end

@implementation ECPackedDataUtils

+ (char)prepareForDataOfLength:(unsigned int)a3 atIndex:(unsigned int)a4 withPreviousLength:(unsigned int)a5 inPackedData:(__CFData *)a6 packedDataSize:(unsigned int)a7
{
  v7 = a6;
  if (a6)
  {
    if (a3 > a5)
    {
      CFDataIncreaseLength(a6, a3 - a5);
    }

    MutableBytePtr = CFDataGetMutableBytePtr(v7);
    if (MutableBytePtr)
    {
      v7 = &MutableBytePtr[a4];
      if (a3 != a5)
      {
        memmove(v7 + a3, v7 + a5, a7 - (a5 + a4));
      }
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

+ (id)readStringFromData:(char *)a3 atOffset:(unsigned int)a4 withLength:(unsigned int)a5
{
  if (a5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithCharacters:&a3[a4] length:a5 >> 1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)writeString:(id)a3 toPackedData:(__CFData *)a4 packedDataSize:(unsigned int)a5 atIndex:(unsigned int)a6 withPreviousLength:(unsigned __int16)a7 outLength:(unsigned __int16 *)a8
{
  v12 = a3;
  v10 = [v12 length];
  if ((2 * v10) < 0x10000)
  {
    if (a8)
    {
      *a8 = 2 * v10;
    }

    [v12 getCharacters:objc_msgSend(a1 range:{"prepareForDataOfLength:atIndex:withPreviousLength:inPackedData:packedDataSize:"), 0, v10}];
    v11 = v12;
  }

  else
  {
    *a8 = 0;
    v11 = v12;
  }
}

+ (id)dumpDataToHexadecimalString:(char *)a3 start:(unsigned int)a4 stop:(unsigned int)a5 nicelyFormatted:(BOOL)a6
{
  if (a5 == a4)
  {
    v6 = &stru_286EE1130;
  }

  else
  {
    v7 = a6;
    v6 = [MEMORY[0x277CCAB68] string];
    v11 = a5 - a4;
    if (a5 > a4)
    {
      v12 = 0;
      v13 = a4;
      do
      {
        if (v13 > a4 && v7 && (v12 & 3) == 0)
        {
          [(__CFString *)v6 appendString:@" "];
        }

        [(__CFString *)v6 appendFormat:@"%02X", a3[v13++]];
        ++v12;
      }

      while (v11 != v12);
    }

    if (v7)
    {
      [(__CFString *)v6 appendFormat:@" (%i bytes)", v11];
    }
  }

  return v6;
}

@end