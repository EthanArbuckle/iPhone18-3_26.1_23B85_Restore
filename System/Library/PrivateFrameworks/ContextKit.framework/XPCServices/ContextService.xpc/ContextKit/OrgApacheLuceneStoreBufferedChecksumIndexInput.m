@interface OrgApacheLuceneStoreBufferedChecksumIndexInput
- (char)readByte;
- (int64_t)getChecksum;
- (int64_t)getFilePointer;
- (int64_t)length;
- (void)close;
- (void)dealloc;
@end

@implementation OrgApacheLuceneStoreBufferedChecksumIndexInput

- (char)readByte
{
  main = self->main_;
  if (!main || (v4 = [(OrgApacheLuceneStoreIndexInput *)main readByte], (digest = self->digest_) == 0))
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilZipChecksum *)digest updateWithInt:v4];
  return v4;
}

- (int64_t)getChecksum
{
  digest = self->digest_;
  if (!digest)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilZipChecksum *)digest getValue];
}

- (void)close
{
  main = self->main_;
  if (!main)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreIndexInput *)main close];
}

- (int64_t)getFilePointer
{
  main = self->main_;
  if (!main)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneStoreIndexInput *)main getFilePointer];
}

- (int64_t)length
{
  main = self->main_;
  if (!main)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneStoreIndexInput *)main length];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreBufferedChecksumIndexInput;
  [(OrgApacheLuceneStoreIndexInput *)&v3 dealloc];
}

@end