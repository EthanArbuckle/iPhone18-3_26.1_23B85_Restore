@interface JavaIoReader
- (int)read;
- (int)readWithCharArray:(id)array;
- (int)readWithJavaNioCharBuffer:(id)buffer;
- (int64_t)skipWithLong:(int64_t)long;
- (void)dealloc;
@end

@implementation JavaIoReader

- (int)read
{
  lock = self->lock_;
  objc_sync_enter(lock);
  v4 = [IOSCharArray arrayWithLength:1];
  if ([(JavaIoReader *)self readWithCharArray:v4 withInt:0 withInt:1]== -1)
  {
    v6 = -1;
  }

  else
  {
    size = v4->super.size_;
    if (size <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, 0);
    }

    v6 = *(&v4->super.size_ + 2);
  }

  objc_sync_exit(lock);
  return v6;
}

- (int)readWithCharArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v4 = *(array + 2);

  return [(JavaIoReader *)self readWithCharArray:array withInt:0 withInt:v4];
}

- (int64_t)skipWithLong:(int64_t)long
{
  if (long < 0)
  {
    v17 = JreStrcat("$J", a2, long, v3, v4, v5, v6, v7, @"charCount < 0: ");
    v18 = new_JavaLangIllegalArgumentException_initWithNSString_(v17);
    objc_exception_throw(v18);
  }

  lock = self->lock_;
  objc_sync_enter(lock);
  if (long >= 0x200)
  {
    longCopy = 512;
  }

  else
  {
    longCopy = long;
  }

  v12 = [IOSCharArray arrayWithLength:longCopy];
  if (long)
  {
    v13 = v12;
    v14 = 0;
    do
    {
      v15 = [(JavaIoReader *)self readWithCharArray:v13 withInt:0 withInt:longCopy];
      if (v15 == -1)
      {
        break;
      }

      v14 += v15;
      if (v15 < longCopy)
      {
        break;
      }

      longCopy = long - v14 >= longCopy ? longCopy : (long - v14);
    }

    while (long > v14);
  }

  else
  {
    v14 = 0;
  }

  objc_sync_exit(lock);
  return v14;
}

- (int)readWithJavaNioCharBuffer:(id)buffer
{
  if (!buffer)
  {
    JreThrowNullPointerException();
  }

  v5 = [buffer length];
  v6 = [IOSCharArray arrayWithLength:v5];
  v7 = JavaLangMath_minWithInt_withInt_(v5, [(JavaIoReader *)self readWithCharArray:v6]);
  if (v7 >= 1)
  {
    [buffer putWithCharArray:v6 withInt:0 withInt:v7];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaIoReader;
  [(JavaIoReader *)&v3 dealloc];
}

@end