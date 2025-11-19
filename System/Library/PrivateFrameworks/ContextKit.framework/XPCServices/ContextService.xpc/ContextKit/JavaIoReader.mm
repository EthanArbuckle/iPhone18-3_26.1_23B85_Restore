@interface JavaIoReader
- (int)read;
- (int)readWithCharArray:(id)a3;
- (int)readWithJavaNioCharBuffer:(id)a3;
- (int64_t)skipWithLong:(int64_t)a3;
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

- (int)readWithCharArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a3 + 2);

  return [(JavaIoReader *)self readWithCharArray:a3 withInt:0 withInt:v4];
}

- (int64_t)skipWithLong:(int64_t)a3
{
  if (a3 < 0)
  {
    v17 = JreStrcat("$J", a2, a3, v3, v4, v5, v6, v7, @"charCount < 0: ");
    v18 = new_JavaLangIllegalArgumentException_initWithNSString_(v17);
    objc_exception_throw(v18);
  }

  lock = self->lock_;
  objc_sync_enter(lock);
  if (a3 >= 0x200)
  {
    v11 = 512;
  }

  else
  {
    v11 = a3;
  }

  v12 = [IOSCharArray arrayWithLength:v11];
  if (a3)
  {
    v13 = v12;
    v14 = 0;
    do
    {
      v15 = [(JavaIoReader *)self readWithCharArray:v13 withInt:0 withInt:v11];
      if (v15 == -1)
      {
        break;
      }

      v14 += v15;
      if (v15 < v11)
      {
        break;
      }

      v11 = a3 - v14 >= v11 ? v11 : (a3 - v14);
    }

    while (a3 > v14);
  }

  else
  {
    v14 = 0;
  }

  objc_sync_exit(lock);
  return v14;
}

- (int)readWithJavaNioCharBuffer:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = [a3 length];
  v6 = [IOSCharArray arrayWithLength:v5];
  v7 = JavaLangMath_minWithInt_withInt_(v5, [(JavaIoReader *)self readWithCharArray:v6]);
  if (v7 >= 1)
  {
    [a3 putWithCharArray:v6 withInt:0 withInt:v7];
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