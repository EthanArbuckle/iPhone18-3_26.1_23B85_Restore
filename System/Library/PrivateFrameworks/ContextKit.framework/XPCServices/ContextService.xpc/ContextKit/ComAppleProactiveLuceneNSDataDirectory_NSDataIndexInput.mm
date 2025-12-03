@interface ComAppleProactiveLuceneNSDataDirectory_NSDataIndexInput
- (char)readByte;
- (id)sliceWithNSString:(id)string withLong:(int64_t)long withLong:(int64_t)withLong;
- (void)dealloc;
@end

@implementation ComAppleProactiveLuceneNSDataDirectory_NSDataIndexInput

- (id)sliceWithNSString:(id)string withLong:(int64_t)long withLong:(int64_t)withLong
{
  if (self->this$0_->useMadvise_)
  {
    madvise([self->nsData_ bytes] + long, withLong, 3);
  }

  v9 = [ComAppleProactiveLuceneNSDataDirectory_SlicedIndexInput alloc];
  sub_100041024(v9, string, self, long, withLong);

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