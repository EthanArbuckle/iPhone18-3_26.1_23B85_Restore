@interface JavaLangCharacter
+ (BOOL)isBmpCodePointWithInt:(int)a3;
+ (BOOL)isHighSurrogateWithChar:(unsigned __int16)a3;
+ (BOOL)isLowSurrogateWithChar:(unsigned __int16)a3;
+ (BOOL)isSpaceWithChar:(unsigned __int16)a3;
+ (BOOL)isSupplementaryCodePointWithInt:(int)a3;
+ (BOOL)isSurrogateWithChar:(unsigned __int16)a3;
+ (BOOL)isValidCodePointWithInt:(int)a3;
+ (id)getNameImplWithInt:(int)a3;
+ (int)binarySearchRangeWithIntArray:(id)a3 withInt:(int)a4;
+ (int)charCountWithInt:(int)a3;
+ (int)compareWithChar:(unsigned __int16)a3 withChar:(unsigned __int16)a4;
+ (int)toCodePointWithChar:(unsigned __int16)a3 withChar:(unsigned __int16)a4;
+ (unsigned)highSurrogateWithInt:(int)a3;
+ (unsigned)lowSurrogateWithInt:(int)a3;
+ (unsigned)reverseBytesWithChar:(unsigned __int16)a3;
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (int)compareToWithId:(id)a3;
@end

@implementation JavaLangCharacter

- (int)compareToWithId:(id)a3
{
  objc_opt_class();
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  value = self->value_;
  v6 = *(a3 + 4);
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return value - v6;
}

+ (int)compareWithChar:(unsigned __int16)a3 withChar:(unsigned __int16)a4
{
  v4 = a4;
  v5 = a3;
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return v5 - v4;
}

+ (BOOL)isValidCodePointWithInt:(int)a3
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return a3 < 0x110000;
}

+ (BOOL)isSupplementaryCodePointWithInt:(int)a3
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return (a3 - 0x10000) < 0x100000;
}

+ (BOOL)isHighSurrogateWithChar:(unsigned __int16)a3
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return (a3 & 0xFC00) == 55296;
}

+ (BOOL)isLowSurrogateWithChar:(unsigned __int16)a3
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return (a3 & 0xFC00) == 56320;
}

+ (BOOL)isSurrogateWithChar:(unsigned __int16)a3
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return (a3 & 0xF800) == 55296;
}

+ (int)charCountWithInt:(int)a3
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  if (a3 < 0x10000)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

+ (int)toCodePointWithChar:(unsigned __int16)a3 withChar:(unsigned __int16)a4
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return (a4 & 0x3FF | ((a3 & 0x3FF) << 10)) + 0x10000;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return *(a3 + 4) == self->value_;
}

+ (id)getNameImplWithInt:(int)a3
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return 0;
}

+ (unsigned)highSurrogateWithInt:(int)a3
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return (a3 >> 10) - 10304;
}

+ (unsigned)lowSurrogateWithInt:(int)a3
{
  v3 = a3;
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return v3 & 0x3FF | 0xDC00;
}

+ (BOOL)isBmpCodePointWithInt:(int)a3
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return a3 < 0x10000;
}

+ (BOOL)isSpaceWithChar:(unsigned __int16)a3
{
  v3 = a3;
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return (v3 < 0x21) & (0x100003600uLL >> v3);
}

+ (unsigned)reverseBytesWithChar:(unsigned __int16)a3
{
  v3 = a3;
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return __rev16(v3);
}

+ (int)binarySearchRangeWithIntArray:(id)a3 withInt:(int)a4
{
  if (atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire))
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_18:
    JreThrowNullPointerException();
  }

  sub_10025E130();
  if (!a3)
  {
    goto LABEL_18;
  }

LABEL_3:
  v6 = *(a3 + 2) - 1;
  if (v6 < 0)
  {
    v11 = 0;
    v9 = -1;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = v7 + v6;
      v9 = (v7 + v6) >> 1;
      v10 = *(a3 + 2);
      if (v9 < 0 || v9 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, (v8 >> 1));
      }

      v11 = *(a3 + (v8 >> 1) + 3);
      if (v11 >= a4)
      {
        if (v11 == a4)
        {
          return v9;
        }

        v6 = v9 - 1;
      }

      else
      {
        v7 = v9 + 1;
      }
    }

    while (v7 <= v6);
  }

  v9 -= v11 > a4;
  return v9;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [IOSClass_arrayType(+[IOSClass charClass](IOSClass "charClass")];
    objc_opt_class();
    if (v2)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        JreThrowClassCastException();
      }
    }

    JreStrongAssign(&JavaLangCharacter_TYPE_, v2);
    atomic_store(1u, JavaLangCharacter__initialized);
  }
}

@end