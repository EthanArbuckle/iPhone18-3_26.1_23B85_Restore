@interface OrgApacheLuceneUtilSmallFloat
+ (char)floatToByte315WithFloat:(float)a3;
+ (char)floatToByte52WithFloat:(float)a3;
+ (float)byte315ToFloatWithByte:(char)a3;
+ (float)byte52ToFloatWithByte:(char)a3;
+ (float)byteToFloatWithByte:(char)a3 withInt:(int)a4 withInt:(int)a5;
@end

@implementation OrgApacheLuceneUtilSmallFloat

+ (float)byteToFloatWithByte:(char)a3 withInt:(int)a4 withInt:(int)a5
{
  if (a3)
  {
    return JavaLangFloat_intBitsToFloatWithInt_((a3 << (24 - a4)) - (a5 << 24) + 1056964608);
  }

  else
  {
    return 0.0;
  }
}

+ (char)floatToByte315WithFloat:(float)a3
{
  v3 = JavaLangFloat_floatToRawIntBitsWithFloat_(a3);
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

+ (float)byte315ToFloatWithByte:(char)a3
{
  if (a3)
  {
    return JavaLangFloat_intBitsToFloatWithInt_((a3 << 21) + 805306368);
  }

  else
  {
    return 0.0;
  }
}

+ (char)floatToByte52WithFloat:(float)a3
{
  v3 = JavaLangFloat_floatToRawIntBitsWithFloat_(a3);
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

+ (float)byte52ToFloatWithByte:(char)a3
{
  if (a3)
  {
    return JavaLangFloat_intBitsToFloatWithInt_((a3 << 19) + 1023410176);
  }

  else
  {
    return 0.0;
  }
}

@end