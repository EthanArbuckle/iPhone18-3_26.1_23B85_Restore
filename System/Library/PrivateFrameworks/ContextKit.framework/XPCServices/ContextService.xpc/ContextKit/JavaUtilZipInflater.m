@interface JavaUtilZipInflater
- (BOOL)finished;
- (BOOL)needsDictionary;
- (BOOL)needsInput;
- (int)getAdler;
- (int)getCurrentOffset;
- (int)getRemaining;
- (int)getTotalIn;
- (int)getTotalOut;
- (int)inflateWithByteArray:(id)a3;
- (int)inflateWithByteArray:(id)a3 withInt:(int)a4 withInt:(int)a5;
- (int64_t)getBytesRead;
- (int64_t)getBytesWritten;
- (uint64_t)checkOpen;
- (void)dealloc;
- (void)end;
- (void)endImplWithLong:(int64_t)a3;
- (void)reset;
- (void)setDictionaryWithByteArray:(id)a3;
- (void)setDictionaryWithByteArray:(id)a3 withInt:(int)a4 withInt:(int)a5;
- (void)setInputWithByteArray:(id)a3;
- (void)setInputWithByteArray:(id)a3 withInt:(int)a4 withInt:(int)a5;
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

- (void)endImplWithLong:(int64_t)a3
{
  inflateEnd(a3);
  free(self->inBuffer_);

  free(a3);
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

- (int)inflateWithByteArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a3 + 2);

  return [(JavaUtilZipInflater *)self inflateWithByteArray:a3 withInt:0 withInt:v4];
}

- (int)inflateWithByteArray:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  objc_sync_enter(self);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(a3 + 2), a4, a5);
  [JavaUtilZipInflater checkOpen]_0(self);
  if ([(JavaUtilZipInflater *)self needsInput])
  {
    v9 = 0;
  }

  else
  {
    needsDictionary = self->needsDictionary_;
    self->needsDictionary_ = 0;
    v9 = sub_10026BD54(self, a3, a4, a5, self->streamHandle_);
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

- (void)setDictionaryWithByteArray:(id)a3
{
  objc_sync_enter(self);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilZipInflater *)self setDictionaryWithByteArray:a3 withInt:0 withInt:*(a3 + 2)];

  objc_sync_exit(self);
}

- (void)setDictionaryWithByteArray:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  objc_sync_enter(self);
  [JavaUtilZipInflater checkOpen]_0(self);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(a3 + 2), a4, a5);
  sub_10026C08C(a3, a4, a5, self->streamHandle_);

  objc_sync_exit(self);
}

- (void)setInputWithByteArray:(id)a3
{
  objc_sync_enter(self);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilZipInflater *)self setInputWithByteArray:a3 withInt:0 withInt:*(a3 + 2)];

  objc_sync_exit(self);
}

- (void)setInputWithByteArray:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  objc_sync_enter(self);
  [JavaUtilZipInflater checkOpen]_0(self);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(a3 + 2), a4, a5);
  self->inLength_ = a5;
  self->inRead_ = 0;
  sub_100152D7C(self, a3, a4, a5, self->streamHandle_);

  objc_sync_exit(self);
}

@end