@interface ComAppleProactiveLuceneNSDataDirectory
- (id)openInputWithNSString:(id)string withOrgApacheLuceneStoreIOContext:(id)context;
- (void)dealloc;
- (void)madviseWithId:(id)id withLong:(int64_t)long withLong:(int64_t)withLong;
@end

@implementation ComAppleProactiveLuceneNSDataDirectory

- (id)openInputWithNSString:(id)string withOrgApacheLuceneStoreIOContext:(id)context
{
  if ([(OrgApacheLuceneStoreFSDirectory *)self fileLengthWithNSString:string, context]<= self->minFileSizeForMapped_)
  {
    v6 = [ComAppleProactiveLuceneNSDataDirectory_RandomAccessFileIndexInput alloc];
    sub_100041D34(v6, self, string);
  }

  else if (self->useOldDataInput_)
  {
    v6 = [ComAppleProactiveLuceneNSDataDirectory_NSDataIndexInputOld alloc];
    sub_100041398(v6, self, string);
  }

  else
  {
    v6 = [ComAppleProactiveLuceneNSDataDirectory_NSDataIndexInput alloc];
    sub_100040CF4(v6, self, string);
  }

  return v6;
}

- (void)madviseWithId:(id)id withLong:(int64_t)long withLong:(int64_t)withLong
{
  v6 = [id bytes] + long;

  madvise(v6, withLong, 3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleProactiveLuceneNSDataDirectory;
  [(OrgApacheLuceneStoreFSDirectory *)&v3 dealloc];
}

@end