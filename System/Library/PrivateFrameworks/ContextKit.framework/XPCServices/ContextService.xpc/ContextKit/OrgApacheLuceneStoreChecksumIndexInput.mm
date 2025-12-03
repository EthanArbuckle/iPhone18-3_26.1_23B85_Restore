@interface OrgApacheLuceneStoreChecksumIndexInput
- (void)seekWithLong:(int64_t)long;
@end

@implementation OrgApacheLuceneStoreChecksumIndexInput

- (void)seekWithLong:(int64_t)long
{
  v4 = long - [(OrgApacheLuceneStoreChecksumIndexInput *)self getFilePointer];
  if (v4 < 0)
  {
    getClass = [(OrgApacheLuceneStoreChecksumIndexInput *)self getClass];
    v13 = JreStrcat("@$", v6, v7, v8, v9, v10, v11, v12, getClass);
    v14 = new_JavaLangIllegalStateException_initWithNSString_(v13);
    objc_exception_throw(v14);
  }

  [(OrgApacheLuceneStoreDataInput *)self skipBytesWithLong:v4];
}

@end