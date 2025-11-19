@interface LibcoreIoMemory
+ (int)peekIntWithLong:(int64_t)a3 withBoolean:(BOOL)a4;
+ (int64_t)peekLongWithLong:(int64_t)a3 withBoolean:(BOOL)a4;
+ (signed)peekShortWithLong:(int64_t)a3 withBoolean:(BOOL)a4;
+ (void)pokeIntWithLong:(int64_t)a3 withInt:(int)a4 withBoolean:(BOOL)a5;
+ (void)pokeLongWithLong:(int64_t)a3 withLong:(int64_t)a4 withBoolean:(BOOL)a5;
+ (void)pokeShortWithLong:(int64_t)a3 withShort:(signed __int16)a4 withBoolean:(BOOL)a5;
@end

@implementation LibcoreIoMemory

+ (int)peekIntWithLong:(int64_t)a3 withBoolean:(BOOL)a4
{
  result = *a3;
  if (a4)
  {
    return JavaLangInteger_reverseBytesWithInt_(result);
  }

  return result;
}

+ (int64_t)peekLongWithLong:(int64_t)a3 withBoolean:(BOOL)a4
{
  result = *a3;
  if (a4)
  {
    return JavaLangLong_reverseBytesWithLong_(result);
  }

  return result;
}

+ (signed)peekShortWithLong:(int64_t)a3 withBoolean:(BOOL)a4
{
  v4 = *a3;
  if (a4)
  {
    LOWORD(v4) = JavaLangShort_reverseBytesWithShort_(v4);
  }

  return v4;
}

+ (void)pokeIntWithLong:(int64_t)a3 withInt:(int)a4 withBoolean:(BOOL)a5
{
  v5 = a4;
  if (a5)
  {
    v5 = JavaLangInteger_reverseBytesWithInt_(a4);
  }

  *a3 = v5;
}

+ (void)pokeLongWithLong:(int64_t)a3 withLong:(int64_t)a4 withBoolean:(BOOL)a5
{
  v5 = a4;
  if (a5)
  {
    v5 = JavaLangLong_reverseBytesWithLong_(a4);
  }

  *a3 = v5;
}

+ (void)pokeShortWithLong:(int64_t)a3 withShort:(signed __int16)a4 withBoolean:(BOOL)a5
{
  v5 = a4;
  if (a5)
  {
    v5 = JavaLangShort_reverseBytesWithShort_(a4);
  }

  *a3 = v5;
}

@end