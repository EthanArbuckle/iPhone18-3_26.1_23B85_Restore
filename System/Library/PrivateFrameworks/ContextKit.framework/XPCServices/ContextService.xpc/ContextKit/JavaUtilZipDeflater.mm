@interface JavaUtilZipDeflater
- (BOOL)finished;
- (BOOL)needsInput;
- (id)endImpl;
- (int)deflateWithByteArray:(id)array;
- (int)deflateWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
- (int)deflateWithByteArray:(id)array withInt:(int)int withInt:(int)withInt withInt:(int)a6;
- (int)getAdler;
- (int)getTotalIn;
- (int)getTotalOut;
- (int64_t)getBytesRead;
- (int64_t)getBytesWritten;
- (uint64_t)checkOpen;
- (void)dealloc;
- (void)end;
- (void)endImplWithLong:(int64_t)long;
- (void)finish;
- (void)reset;
- (void)setDictionaryWithByteArray:(id)array;
- (void)setDictionaryWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)setInputWithByteArray:(id)array;
- (void)setInputWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)setLevelWithInt:(int)int;
- (void)setStrategyWithInt:(int)int;
@end

@implementation JavaUtilZipDeflater

- (int)deflateWithByteArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v4 = *(array + 2);

  return [(JavaUtilZipDeflater *)self deflateWithByteArray:array withInt:0 withInt:v4];
}

- (int)deflateWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  objc_sync_enter(self);
  v9 = sub_100152374(self, array, int, withInt, self->flushParm_);
  objc_sync_exit(self);
  return v9;
}

- (int)deflateWithByteArray:(id)array withInt:(int)int withInt:(int)withInt withInt:(int)a6
{
  objc_sync_enter(self);
  if ((a6 - 2) >= 2 && a6)
  {
    v20 = JreStrcat("$I", v11, v12, v13, v14, v15, v16, v17, @"Bad flush value: ");
    v21 = new_JavaLangIllegalArgumentException_initWithNSString_(v20);
    objc_exception_throw(v21);
  }

  v18 = sub_100152374(self, array, int, withInt, a6);
  objc_sync_exit(self);
  return v18;
}

- (void)end
{
  objc_sync_enter(self);
  guard = self->guard_;
  if (!guard)
  {
    JreThrowNullPointerException();
  }

  [(DalvikSystemCloseGuard *)guard close];
  [JavaUtilZipDeflater endImpl]_0(self);

  objc_sync_exit(self);
}

- (id)endImpl
{
  v1 = *(result + 3);
  if (v1 != -1)
  {
    v2 = result;
    deflateEnd(*(result + 3));
    free(v2[4]);
    free(v1);
    result = JreStrongAssign(v2 + 5, 0);
    v2[3] = -1;
  }

  return result;
}

- (void)endImplWithLong:(int64_t)long
{
  deflateEnd(long);
  free(self->inBuffer_);

  free(long);
}

- (void)dealloc
{
  guard = self->guard_;
  if (guard)
  {
    [(DalvikSystemCloseGuard *)guard warnIfOpen];
  }

  objc_sync_enter(self);
  [(JavaUtilZipDeflater *)self end];
  [JavaUtilZipDeflater endImpl]_0(self);
  objc_sync_exit(self);

  v4.receiver = self;
  v4.super_class = JavaUtilZipDeflater;
  [(JavaUtilZipDeflater *)&v4 dealloc];
}

- (void)finish
{
  objc_sync_enter(self);
  self->flushParm_ = 4;

  objc_sync_exit(self);
}

- (BOOL)finished
{
  objc_sync_enter(self);
  finished = self->finished_;
  objc_sync_exit(self);
  return finished;
}

- (int)getAdler
{
  objc_sync_enter(self);
  [JavaUtilZipDeflater checkOpen]_0(self);
  v3 = *(self->streamHandle_ + 96);
  objc_sync_exit(self);
  return v3;
}

- (uint64_t)checkOpen
{
  if (*(result + 24) == -1)
  {
    v1 = new_JavaLangIllegalStateException_initWithNSString_(@"attempt to use Deflater after calling end");
    objc_exception_throw(v1);
  }

  return result;
}

- (int)getTotalIn
{
  objc_sync_enter(self);
  [JavaUtilZipDeflater checkOpen]_0(self);
  v3 = *(self->streamHandle_ + 16);
  objc_sync_exit(self);
  return v3;
}

- (int)getTotalOut
{
  objc_sync_enter(self);
  [JavaUtilZipDeflater checkOpen]_0(self);
  v3 = *(self->streamHandle_ + 40);
  objc_sync_exit(self);
  return v3;
}

- (BOOL)needsInput
{
  objc_sync_enter(self);
  if (self->inputBuffer_)
  {
    v3 = self->inRead_ == self->inLength_;
  }

  else
  {
    v3 = 1;
  }

  objc_sync_exit(self);
  return v3;
}

- (void)reset
{
  objc_sync_enter(self);
  [JavaUtilZipDeflater checkOpen]_0(self);
  self->flushParm_ = 0;
  self->finished_ = 0;
  sub_100152AA8(self->streamHandle_);
  JreStrongAssign(&self->inputBuffer_, 0);

  objc_sync_exit(self);
}

- (void)setDictionaryWithByteArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v4 = *(array + 2);

  [(JavaUtilZipDeflater *)self setDictionaryWithByteArray:array withInt:0 withInt:v4];
}

- (void)setDictionaryWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  objc_sync_enter(self);
  [JavaUtilZipDeflater checkOpen]_0(self);
  if (!array)
  {
    JreThrowNullPointerException();
  }

  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(array + 2), int, withInt);
  sub_100152BBC(array, int, withInt, self->streamHandle_);

  objc_sync_exit(self);
}

- (void)setInputWithByteArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v4 = *(array + 2);

  [(JavaUtilZipDeflater *)self setInputWithByteArray:array withInt:0 withInt:v4];
}

- (void)setInputWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  objc_sync_enter(self);
  [JavaUtilZipDeflater checkOpen]_0(self);
  if (!array)
  {
    JreThrowNullPointerException();
  }

  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(array + 2), int, withInt);
  inputBuffer = self->inputBuffer_;
  self->inRead_ = 0;
  self->inLength_ = withInt;
  if (!inputBuffer)
  {
    sub_100152D34(self->compressLevel_, self->strategy_, self->streamHandle_);
  }

  JreStrongAssign(&self->inputBuffer_, array);
  sub_100152D7C(self, array, int, withInt, self->streamHandle_);

  objc_sync_exit(self);
}

- (void)setLevelWithInt:(int)int
{
  objc_sync_enter(self);
  if ((int - 10) <= 0xFFFFFFF4)
  {
    v12 = JreStrcat("$I", v5, v6, v7, v8, v9, v10, v11, @"Bad level: ");
    v13 = new_JavaLangIllegalArgumentException_initWithNSString_(v12);
    goto LABEL_8;
  }

  if (self->inputBuffer_)
  {
    v13 = new_JavaLangIllegalStateException_initWithNSString_(@"setLevel cannot be called after setInput");
LABEL_8:
    objc_exception_throw(v13);
  }

  self->compressLevel_ = int;

  objc_sync_exit(self);
}

- (void)setStrategyWithInt:(int)int
{
  objc_sync_enter(self);
  if (int >= 3)
  {
    v12 = JreStrcat("$I", v5, v6, v7, v8, v9, v10, v11, @"Bad strategy: ");
    v13 = new_JavaLangIllegalArgumentException_initWithNSString_(v12);
    goto LABEL_8;
  }

  if (self->inputBuffer_)
  {
    v13 = new_JavaLangIllegalStateException_initWithNSString_(@"setStrategy cannot be called after setInput");
LABEL_8:
    objc_exception_throw(v13);
  }

  self->strategy_ = int;

  objc_sync_exit(self);
}

- (int64_t)getBytesRead
{
  objc_sync_enter(self);
  [JavaUtilZipDeflater checkOpen]_0(self);
  v3 = *(self->streamHandle_ + 16);
  objc_sync_exit(self);
  return v3;
}

- (int64_t)getBytesWritten
{
  objc_sync_enter(self);
  [JavaUtilZipDeflater checkOpen]_0(self);
  v3 = *(self->streamHandle_ + 40);
  objc_sync_exit(self);
  return v3;
}

@end