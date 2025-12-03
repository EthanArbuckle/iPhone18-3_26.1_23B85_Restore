@interface LibcoreIoMemory
+ (int)peekIntWithLong:(int64_t)long withBoolean:(BOOL)boolean;
+ (int64_t)peekLongWithLong:(int64_t)long withBoolean:(BOOL)boolean;
+ (signed)peekShortWithLong:(int64_t)long withBoolean:(BOOL)boolean;
+ (void)pokeIntWithLong:(int64_t)long withInt:(int)int withBoolean:(BOOL)boolean;
+ (void)pokeLongWithLong:(int64_t)long withLong:(int64_t)withLong withBoolean:(BOOL)boolean;
+ (void)pokeShortWithLong:(int64_t)long withShort:(signed __int16)short withBoolean:(BOOL)boolean;
@end

@implementation LibcoreIoMemory

+ (int)peekIntWithLong:(int64_t)long withBoolean:(BOOL)boolean
{
  result = *long;
  if (boolean)
  {
    return JavaLangInteger_reverseBytesWithInt_(result);
  }

  return result;
}

+ (int64_t)peekLongWithLong:(int64_t)long withBoolean:(BOOL)boolean
{
  result = *long;
  if (boolean)
  {
    return JavaLangLong_reverseBytesWithLong_(result);
  }

  return result;
}

+ (signed)peekShortWithLong:(int64_t)long withBoolean:(BOOL)boolean
{
  v4 = *long;
  if (boolean)
  {
    LOWORD(v4) = JavaLangShort_reverseBytesWithShort_(v4);
  }

  return v4;
}

+ (void)pokeIntWithLong:(int64_t)long withInt:(int)int withBoolean:(BOOL)boolean
{
  intCopy = int;
  if (boolean)
  {
    intCopy = JavaLangInteger_reverseBytesWithInt_(int);
  }

  *long = intCopy;
}

+ (void)pokeLongWithLong:(int64_t)long withLong:(int64_t)withLong withBoolean:(BOOL)boolean
{
  withLongCopy = withLong;
  if (boolean)
  {
    withLongCopy = JavaLangLong_reverseBytesWithLong_(withLong);
  }

  *long = withLongCopy;
}

+ (void)pokeShortWithLong:(int64_t)long withShort:(signed __int16)short withBoolean:(BOOL)boolean
{
  shortCopy = short;
  if (boolean)
  {
    shortCopy = JavaLangShort_reverseBytesWithShort_(short);
  }

  *long = shortCopy;
}

@end