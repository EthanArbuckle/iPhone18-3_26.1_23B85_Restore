@interface ComAppleProactiveLuceneNSDataDirectory_RandomAccessFileIndexInput
- (id)clone;
- (void)__javaClone;
- (void)close;
- (void)dealloc;
- (void)seekInternalWithLong:(int64_t)long;
@end

@implementation ComAppleProactiveLuceneNSDataDirectory_RandomAccessFileIndexInput

- (void)seekInternalWithLong:(int64_t)long
{
  self->pos_ = long;
  raf = self->raf_;
  if (!raf)
  {
    JreThrowNullPointerException();
  }

  [(JavaIoRandomAccessFile *)raf seekWithLong:?];
}

- (void)close
{
  raf = self->raf_;
  if (!raf)
  {
    JreThrowNullPointerException();
  }

  [(JavaIoRandomAccessFile *)raf close];
}

- (id)clone
{
  v6.receiver = self;
  v6.super_class = ComAppleProactiveLuceneNSDataDirectory_RandomAccessFileIndexInput;
  clone = [(OrgApacheLuceneStoreBufferedIndexInput *)&v6 clone];
  objc_opt_class();
  if (!clone)
  {
    objc_loadWeak(&self->original_);
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  Weak = objc_loadWeak(&self->original_);
  objc_storeWeak(clone + 10, Weak);
  objc_storeWeak(clone + 11, 0);
  return clone;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleProactiveLuceneNSDataDirectory_RandomAccessFileIndexInput;
  [(OrgApacheLuceneStoreBufferedIndexInput *)&v3 dealloc];
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = ComAppleProactiveLuceneNSDataDirectory_RandomAccessFileIndexInput;
  [(ComAppleProactiveLuceneNSDataDirectory_RandomAccessFileIndexInput *)&v3 __javaClone];
}

@end