@interface JavaUtilRandom
- (JavaUtilRandom)init;
- (double)nextGaussian;
- (int)nextWithInt:(int)int;
- (void)nextBytesWithByteArray:(id)array;
- (void)setSeedWithLong:(int64_t)long;
@end

@implementation JavaUtilRandom

- (JavaUtilRandom)init
{
  v3 = JavaLangSystem_nanoTime();
  v4 = atomic_load(&qword_100557098);
  [(JavaUtilRandom *)self setSeedWithLong:v4 + v3];
  atomic_fetch_add(&qword_100557098, 1uLL);
  return self;
}

- (int)nextWithInt:(int)int
{
  intCopy = int;
  objc_sync_enter(self);
  v5 = (0x5DEECE66DLL * self->seed_ + 11) & 0xFFFFFFFFFFFFLL;
  self->seed_ = v5;
  v6 = v5 >> (48 - intCopy);
  objc_sync_exit(self);
  return v6;
}

- (void)nextBytesWithByteArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v4 = *(array + 2);
  if (v4 >= 1)
  {
    nextInt = 0;
    v7 = 0;
    v8 = 0;
    v9 = *(array + 2);
    do
    {
      if (v7)
      {
        --v7;
      }

      else
      {
        nextInt = [(JavaUtilRandom *)self nextInt];
        v9 = *(array + 2);
        v4 = v9;
        v7 = 3;
      }

      if (v8 >= v4)
      {
        IOSArray_throwOutOfBoundsWithMsg(v9, v8);
      }

      *(array + v8++ + 12) = nextInt;
      nextInt >>= 8;
      v9 = *(array + 2);
      v4 = v9;
    }

    while (v8 < v9);
  }
}

- (double)nextGaussian
{
  objc_sync_enter(self);
  if (self->haveNextNextGaussian_)
  {
    self->haveNextNextGaussian_ = 0;
    nextNextGaussian = self->nextNextGaussian_;
  }

  else
  {
    do
    {
      do
      {
        [(JavaUtilRandom *)self nextDouble];
        v5 = v4;
        [(JavaUtilRandom *)self nextDouble];
        v6 = v5 * 2.0 + -1.0;
        v8 = v7 * 2.0 + -1.0;
        v9 = v8 * v8 + v6 * v6;
      }

      while (v9 >= 1.0);
    }

    while (v9 == 0.0);
    JavaLangStrictMath_logWithDouble_(v8 * v8 + v6 * v6);
    v11 = JavaLangStrictMath_sqrtWithDouble_(v10 * -2.0 / v9);
    self->nextNextGaussian_ = v8 * v11;
    self->haveNextNextGaussian_ = 1;
    nextNextGaussian = v6 * v11;
  }

  objc_sync_exit(self);
  return nextNextGaussian;
}

- (void)setSeedWithLong:(int64_t)long
{
  objc_sync_enter(self);
  self->seed_ = long & 0xFFFFFFFFFFFFLL ^ 0x5DEECE66DLL;
  self->haveNextNextGaussian_ = 0;

  objc_sync_exit(self);
}

@end