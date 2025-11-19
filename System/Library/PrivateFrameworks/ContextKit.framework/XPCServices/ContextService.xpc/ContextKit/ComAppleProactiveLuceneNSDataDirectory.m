@interface ComAppleProactiveLuceneNSDataDirectory
- (id)openInputWithNSString:(id)a3 withOrgApacheLuceneStoreIOContext:(id)a4;
- (void)dealloc;
- (void)madviseWithId:(id)a3 withLong:(int64_t)a4 withLong:(int64_t)a5;
@end

@implementation ComAppleProactiveLuceneNSDataDirectory

- (id)openInputWithNSString:(id)a3 withOrgApacheLuceneStoreIOContext:(id)a4
{
  if ([(OrgApacheLuceneStoreFSDirectory *)self fileLengthWithNSString:a3, a4]<= self->minFileSizeForMapped_)
  {
    v6 = [ComAppleProactiveLuceneNSDataDirectory_RandomAccessFileIndexInput alloc];
    sub_100041D34(v6, self, a3);
  }

  else if (self->useOldDataInput_)
  {
    v6 = [ComAppleProactiveLuceneNSDataDirectory_NSDataIndexInputOld alloc];
    sub_100041398(v6, self, a3);
  }

  else
  {
    v6 = [ComAppleProactiveLuceneNSDataDirectory_NSDataIndexInput alloc];
    sub_100040CF4(v6, self, a3);
  }

  return v6;
}

- (void)madviseWithId:(id)a3 withLong:(int64_t)a4 withLong:(int64_t)a5
{
  v6 = [a3 bytes] + a4;

  madvise(v6, a5, 3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleProactiveLuceneNSDataDirectory;
  [(OrgApacheLuceneStoreFSDirectory *)&v3 dealloc];
}

@end