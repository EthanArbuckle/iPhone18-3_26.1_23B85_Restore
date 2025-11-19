@interface ComAppleProactiveLuceneNSDataDirectory_NSDataIndexInput
- (char)readByte;
- (id)sliceWithNSString:(id)a3 withLong:(int64_t)a4 withLong:(int64_t)a5;
- (void)dealloc;
@end

@implementation ComAppleProactiveLuceneNSDataDirectory_NSDataIndexInput

- (id)sliceWithNSString:(id)a3 withLong:(int64_t)a4 withLong:(int64_t)a5
{
  if (self->this$0_->useMadvise_)
  {
    madvise([self->nsData_ bytes] + a4, a5, 3);
  }

  v9 = [ComAppleProactiveLuceneNSDataDirectory_SlicedIndexInput alloc];
  sub_100041024(v9, a3, self, a4, a5);

  return v9;
}

- (char)readByte
{
  v4 = 0;
  [self->nsData_ getBytes:&v4 range:{self->pos_++, 1}];
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleProactiveLuceneNSDataDirectory_NSDataIndexInput;
  [(OrgApacheLuceneStoreIndexInput *)&v3 dealloc];
}

@end