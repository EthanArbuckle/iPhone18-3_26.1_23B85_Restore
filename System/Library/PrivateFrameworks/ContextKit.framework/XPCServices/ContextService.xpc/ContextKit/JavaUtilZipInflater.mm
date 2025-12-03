@interface JavaUtilZipInflater
- (BOOL)finished;
- (BOOL)needsDictionary;
- (BOOL)needsInput;
- (int)getAdler;
- (int)getCurrentOffset;
- (int)getRemaining;
- (int)getTotalIn;
- (int)getTotalOut;
- (int)inflateWithByteArray:(id)array;
- (int)inflateWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
- (int64_t)getBytesRead;
- (int64_t)getBytesWritten;
- (uint64_t)checkOpen;
- (void)dealloc;
- (void)end;
- (void)endImplWithLong:(int64_t)long;
- (void)reset;
- (void)setDictionaryWithByteArray:(id)array;
- (void)setDictionaryWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)setInputWithByteArray:(id)array;
- (void)setInputWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
@end

@implementation JavaUtilZipInflater

- (void)end
{
  objc_sync_enter(self);
  guard = self->guard_;
  if (!guard)
  {
    JreThrowNullPointerException();
  }

  [(DalvikSystemCloseGuard *)guard close];
  streamHandle = self->streamHandle_;
  if (streamHandle != -1)
  {
    inflateEnd(self->streamHandle_);
    free(self->inBuffer_);
    free(streamHandle);
    *&self->inLength_ = 0;
    self->streamHandle_ = -1;
  }

  objc_sync_exit(self);
}

- (void)endImplWithLong:(int64_t)long
{
  inflateEnd(long);
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

  [(JavaUtilZipInflater *)self end];

  v4.receiver = self;
  v4.super_class = JavaUtilZipInflater;
  [(JavaUtilZipInflater *)&v4 dealloc];
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
  [JavaUtilZipInflater checkOpen]_0(self);
  v3 = *(self->streamHandle_ + 96);
  objc_sync_exit(self);
  return v3;
}

- (uint64_t)checkOpen
{
  if (*(result + 24) == -1)
  {
    v1 = new_JavaLangIllegalStateException_initWithNSString_(@"attempt to use Inflater after calling end");
    objc_exception_throw(v1);
  }

  return result;
}

- (int64_t)getBytesRead
{
  objc_sync_enter(self);
  [JavaUtilZipInflater checkOpen]_0(self);
  v3 = *(self->streamHandle_ + 16);
  objc_sync_exit(self);
  return v3;
}

- (int64_t)getBytesWritten
{
  objc_sync_enter(self);
  [JavaUtilZipInflater checkOpen]_0(self);
  v3 = *(self->streamHandle_ + 40);
  objc_sync_exit(self);
  return v3;
}

- (int)getRemaining
{
  objc_sync_enter(self);
  v3 = self->inLength_ - self->inRead_;
  objc_sync_exit(self);
  return v3;
}

- (int)getCurrentOffset
{
  objc_sync_enter(self);
  inRead = self->inRead_;
  objc_sync_exit(self);
  return inRead;
}

- (int)getTotalIn
{
  objc_sync_enter(self);
  [JavaUtilZipInflater checkOpen]_0(self);
  v3 = JavaLangMath_minWithLong_withLong_(*(self->streamHandle_ + 16), 0x7FFFFFFFLL);
  objc_sync_exit(self);
  return v3;
}

- (int)getTotalOut
{
  objc_sync_enter(self);
  [JavaUtilZipInflater checkOpen]_0(self);
  v3 = JavaLangMath_minWithLong_withLong_(*(self->streamHandle_ + 40), 0x7FFFFFFFLL);
  objc_sync_exit(self);
  return v3;
}

- (int)inflateWithByteArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v4 = *(array + 2);

  return [(JavaUtilZipInflater *)self inflateWithByteArray:array withInt:0 withInt:v4];
}

- (int)inflateWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  objc_sync_enter(self);
  if (!array)
  {
    JreThrowNullPointerException();
  }

  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(array + 2), int, withInt);
  [JavaUtilZipInflater checkOpen]_0(self);
  if ([(JavaUtilZipInflater *)self needsInput])
  {
    v9 = 0;
  }

  else
  {
    needsDictionary = self->needsDictionary_;
    self->needsDictionary_ = 0;
    v9 = sub_10026BD54(self, array, int, withInt, self->streamHandle_);
    if (self->needsDictionary_ && needsDictionary)
    {
      v12 = new_JavaUtilZipDataFormatException_initWithNSString_(@"Needs dictionary");
      objc_exception_throw(v12);
    }
  }

  objc_sync_exit(self);
  return v9;
}

- (BOOL)needsDictionary
{
  objc_sync_enter(self);
  needsDictionary = self->needsDictionary_;
  objc_sync_exit(self);
  return needsDictionary;
}

- (BOOL)needsInput
{
  objc_sync_enter(self);
  v3 = self->inRead_ == self->inLength_;
  objc_sync_exit(self);
  return v3;
}

- (void)reset
{
  objc_sync_enter(self);
  [JavaUtilZipInflater checkOpen]_0(self);
  *&self->finished_ = 0;
  *&self->inLength_ = 0;
  sub_10026BF34(self->streamHandle_);

  objc_sync_exit(self);
}

- (void)setDictionaryWithByteArray:(id)array
{
  objc_sync_enter(self);
  if (!array)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilZipInflater *)self setDictionaryWithByteArray:array withInt:0 withInt:*(array + 2)];

  objc_sync_exit(self);
}

- (void)setDictionaryWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  objc_sync_enter(self);
  [JavaUtilZipInflater checkOpen]_0(self);
  if (!array)
  {
    JreThrowNullPointerException();
  }

  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(array + 2), int, withInt);
  sub_10026C08C(array, int, withInt, self->streamHandle_);

  objc_sync_exit(self);
}

- (void)setInputWithByteArray:(id)array
{
  objc_sync_enter(self);
  if (!array)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilZipInflater *)self setInputWithByteArray:array withInt:0 withInt:*(array + 2)];

  objc_sync_exit(self);
}

- (void)setInputWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  objc_sync_enter(self);
  [JavaUtilZipInflater checkOpen]_0(self);
  if (!array)
  {
    JreThrowNullPointerException();
  }

  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(array + 2), int, withInt);
  self->inLength_ = withInt;
  self->inRead_ = 0;
  sub_100152D7C(self, array, int, withInt, self->streamHandle_);

  objc_sync_exit(self);
}

@end