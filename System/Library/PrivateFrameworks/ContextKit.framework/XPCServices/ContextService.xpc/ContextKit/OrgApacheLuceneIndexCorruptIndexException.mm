@interface OrgApacheLuceneIndexCorruptIndexException
- (OrgApacheLuceneIndexCorruptIndexException)initWithNSString:(id)string withOrgApacheLuceneStoreDataInput:(id)input;
- (OrgApacheLuceneIndexCorruptIndexException)initWithNSString:(id)string withOrgApacheLuceneStoreDataInput:(id)input withJavaLangThrowable:(id)throwable;
- (OrgApacheLuceneIndexCorruptIndexException)initWithNSString:(id)string withOrgApacheLuceneStoreDataOutput:(id)output;
- (OrgApacheLuceneIndexCorruptIndexException)initWithNSString:(id)string withOrgApacheLuceneStoreDataOutput:(id)output withJavaLangThrowable:(id)throwable;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexCorruptIndexException

- (OrgApacheLuceneIndexCorruptIndexException)initWithNSString:(id)string withOrgApacheLuceneStoreDataInput:(id)input
{
  v6 = OrgLukhnosPortmobileUtilObjects_toStringWithId_(input);
  OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withNSString_withJavaLangThrowable_(self, string, v6, 0);
  return self;
}

- (OrgApacheLuceneIndexCorruptIndexException)initWithNSString:(id)string withOrgApacheLuceneStoreDataOutput:(id)output
{
  v6 = OrgLukhnosPortmobileUtilObjects_toStringWithId_(output);
  OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withNSString_withJavaLangThrowable_(self, string, v6, 0);
  return self;
}

- (OrgApacheLuceneIndexCorruptIndexException)initWithNSString:(id)string withOrgApacheLuceneStoreDataInput:(id)input withJavaLangThrowable:(id)throwable
{
  v8 = OrgLukhnosPortmobileUtilObjects_toStringWithId_(input);
  OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withNSString_withJavaLangThrowable_(self, string, v8, throwable);
  return self;
}

- (OrgApacheLuceneIndexCorruptIndexException)initWithNSString:(id)string withOrgApacheLuceneStoreDataOutput:(id)output withJavaLangThrowable:(id)throwable
{
  v8 = OrgLukhnosPortmobileUtilObjects_toStringWithId_(output);
  OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withNSString_withJavaLangThrowable_(self, string, v8, throwable);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexCorruptIndexException;
  [(JavaLangThrowable *)&v3 dealloc];
}

@end