@interface OrgApacheLuceneUtilPackedPackedInts_$1
- (int64_t)getWithInt:(int)int;
@end

@implementation OrgApacheLuceneUtilPackedPackedInts_$1

- (int64_t)getWithInt:(int)int
{
  v8.receiver = self;
  v8.super_class = OrgApacheLuceneUtilPackedPackedInts__1;
  v5 = [(OrgApacheLuceneUtilPackedDirectPackedReader *)&v8 getWithInt:?];
  if (self->super.super.valueCount_ - 1 == int)
  {
    in = self->super.in_;
    if (!in)
    {
      JreThrowNullPointerException();
    }

    [(OrgApacheLuceneStoreIndexInput *)in seekWithLong:self->val$endPointer_];
  }

  return v5;
}

@end