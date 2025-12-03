@interface JavaLangCharacter
+ (BOOL)isBmpCodePointWithInt:(int)int;
+ (BOOL)isHighSurrogateWithChar:(unsigned __int16)char;
+ (BOOL)isLowSurrogateWithChar:(unsigned __int16)char;
+ (BOOL)isSpaceWithChar:(unsigned __int16)char;
+ (BOOL)isSupplementaryCodePointWithInt:(int)int;
+ (BOOL)isSurrogateWithChar:(unsigned __int16)char;
+ (BOOL)isValidCodePointWithInt:(int)int;
+ (id)getNameImplWithInt:(int)int;
+ (int)binarySearchRangeWithIntArray:(id)array withInt:(int)int;
+ (int)charCountWithInt:(int)int;
+ (int)compareWithChar:(unsigned __int16)char withChar:(unsigned __int16)withChar;
+ (int)toCodePointWithChar:(unsigned __int16)char withChar:(unsigned __int16)withChar;
+ (unsigned)highSurrogateWithInt:(int)int;
+ (unsigned)lowSurrogateWithInt:(int)int;
+ (unsigned)reverseBytesWithChar:(unsigned __int16)char;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (int)compareToWithId:(id)id;
@end

@implementation JavaLangCharacter

- (int)compareToWithId:(id)id
{
  objc_opt_class();
  if (!id)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  value = self->value_;
  v6 = *(id + 4);
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return value - v6;
}

+ (int)compareWithChar:(unsigned __int16)char withChar:(unsigned __int16)withChar
{
  withCharCopy = withChar;
  charCopy = char;
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return charCopy - withCharCopy;
}

+ (BOOL)isValidCodePointWithInt:(int)int
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return int < 0x110000;
}

+ (BOOL)isSupplementaryCodePointWithInt:(int)int
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return (int - 0x10000) < 0x100000;
}

+ (BOOL)isHighSurrogateWithChar:(unsigned __int16)char
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return (char & 0xFC00) == 55296;
}

+ (BOOL)isLowSurrogateWithChar:(unsigned __int16)char
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return (char & 0xFC00) == 56320;
}

+ (BOOL)isSurrogateWithChar:(unsigned __int16)char
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return (char & 0xF800) == 55296;
}

+ (int)charCountWithInt:(int)int
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  if (int < 0x10000)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

+ (int)toCodePointWithChar:(unsigned __int16)char withChar:(unsigned __int16)withChar
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return (withChar & 0x3FF | ((char & 0x3FF) << 10)) + 0x10000;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (!equal)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return *(equal + 4) == self->value_;
}

+ (id)getNameImplWithInt:(int)int
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return 0;
}

+ (unsigned)highSurrogateWithInt:(int)int
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return (int >> 10) - 10304;
}

+ (unsigned)lowSurrogateWithInt:(int)int
{
  intCopy = int;
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return intCopy & 0x3FF | 0xDC00;
}

+ (BOOL)isBmpCodePointWithInt:(int)int
{
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return int < 0x10000;
}

+ (BOOL)isSpaceWithChar:(unsigned __int16)char
{
  charCopy = char;
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return (charCopy < 0x21) & (0x100003600uLL >> charCopy);
}

+ (unsigned)reverseBytesWithChar:(unsigned __int16)char
{
  charCopy = char;
  if ((atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10025E130();
  }

  return __rev16(charCopy);
}

+ (int)binarySearchRangeWithIntArray:(id)array withInt:(int)int
{
  if (atomic_load_explicit(JavaLangCharacter__initialized, memory_order_acquire))
  {
    if (array)
    {
      goto LABEL_3;
    }

LABEL_18:
    JreThrowNullPointerException();
  }

  sub_10025E130();
  if (!array)
  {
    goto LABEL_18;
  }

LABEL_3:
  v6 = *(array + 2) - 1;
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
      v10 = *(array + 2);
      if (v9 < 0 || v9 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, (v8 >> 1));
      }

      v11 = *(array + (v8 >> 1) + 3);
      if (v11 >= int)
      {
        if (v11 == int)
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

  v9 -= v11 > int;
  return v9;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
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