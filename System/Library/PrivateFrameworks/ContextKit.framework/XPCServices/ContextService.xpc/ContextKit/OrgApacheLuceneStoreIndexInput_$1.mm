@interface OrgApacheLuceneStoreIndexInput_$1
- (char)readByteWithLong:(int64_t)long;
- (int)readIntWithLong:(int64_t)long;
- (int64_t)readLongWithLong:(int64_t)long;
- (signed)readShortWithLong:(int64_t)long;
- (void)dealloc;
@end

@implementation OrgApacheLuceneStoreIndexInput_$1

- (char)readByteWithLong:(int64_t)long
{
  v4 = self->val$slice_;
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreIndexInput *)v4 seekWithLong:long];
  v5 = self->val$slice_;

  return [(OrgApacheLuceneStoreIndexInput *)v5 readByte];
}

- (signed)readShortWithLong:(int64_t)long
{
  v4 = self->val$slice_;
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreIndexInput *)v4 seekWithLong:long];
  v5 = self->val$slice_;

  return [(OrgApacheLuceneStoreDataInput *)v5 readShort];
}

- (int)readIntWithLong:(int64_t)long
{
  v4 = self->val$slice_;
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreIndexInput *)v4 seekWithLong:long];
  v5 = self->val$slice_;

  return [(OrgApacheLuceneStoreDataInput *)v5 readInt];
}

- (int64_t)readLongWithLong:(int64_t)long
{
  v4 = self->val$slice_;
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreIndexInput *)v4 seekWithLong:long];
  v5 = self->val$slice_;

  return [(OrgApacheLuceneStoreDataInput *)v5 readLong];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreIndexInput__1;
  [(OrgApacheLuceneStoreIndexInput_$1 *)&v3 dealloc];
}

@end