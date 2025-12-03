@interface OrgApacheLuceneUtilSmallFloat
+ (char)floatToByte315WithFloat:(float)float;
+ (char)floatToByte52WithFloat:(float)float;
+ (float)byte315ToFloatWithByte:(char)byte;
+ (float)byte52ToFloatWithByte:(char)byte;
+ (float)byteToFloatWithByte:(char)byte withInt:(int)int withInt:(int)withInt;
@end

@implementation OrgApacheLuceneUtilSmallFloat

+ (float)byteToFloatWithByte:(char)byte withInt:(int)int withInt:(int)withInt
{
  if (byte)
  {
    return JavaLangFloat_intBitsToFloatWithInt_((byte << (24 - int)) - (withInt << 24) + 1056964608);
  }

  else
  {
    return 0.0;
  }
}

+ (char)floatToByte315WithFloat:(float)float
{
  v3 = JavaLangFloat_floatToRawIntBitsWithFloat_(float);
  if ((v3 >> 21) <= 0x27F)
  {
    v4 = (v3 >> 21) ^ 0xFFFFFF80;
  }

  else
  {
    LOBYTE(v4) = -1;
  }

  if (v3 >> 21 <= 384)
  {
    return v3 > 0;
  }

  else
  {
    return v4;
  }
}

+ (float)byte315ToFloatWithByte:(char)byte
{
  if (byte)
  {
    return JavaLangFloat_intBitsToFloatWithInt_((byte << 21) + 805306368);
  }

  else
  {
    return 0.0;
  }
}

+ (char)floatToByte52WithFloat:(float)float
{
  v3 = JavaLangFloat_floatToRawIntBitsWithFloat_(float);
  if ((v3 >> 19) <= 0x89F)
  {
    v4 = (v3 >> 19) + 96;
  }

  else
  {
    LOBYTE(v4) = -1;
  }

  if (v3 >> 19 <= 1952)
  {
    return v3 > 0;
  }

  else
  {
    return v4;
  }
}

+ (float)byte52ToFloatWithByte:(char)byte
{
  if (byte)
  {
    return JavaLangFloat_intBitsToFloatWithInt_((byte << 19) + 1023410176);
  }

  else
  {
    return 0.0;
  }
}

@end