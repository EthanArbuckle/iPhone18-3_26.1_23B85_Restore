@interface OrgApacheLuceneIndexCorruptIndexException
- (OrgApacheLuceneIndexCorruptIndexException)initWithNSString:(id)a3 withOrgApacheLuceneStoreDataInput:(id)a4;
- (OrgApacheLuceneIndexCorruptIndexException)initWithNSString:(id)a3 withOrgApacheLuceneStoreDataInput:(id)a4 withJavaLangThrowable:(id)a5;
- (OrgApacheLuceneIndexCorruptIndexException)initWithNSString:(id)a3 withOrgApacheLuceneStoreDataOutput:(id)a4;
- (OrgApacheLuceneIndexCorruptIndexException)initWithNSString:(id)a3 withOrgApacheLuceneStoreDataOutput:(id)a4 withJavaLangThrowable:(id)a5;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexCorruptIndexException

- (OrgApacheLuceneIndexCorruptIndexException)initWithNSString:(id)a3 withOrgApacheLuceneStoreDataInput:(id)a4
{
  v6 = OrgLukhnosPortmobileUtilObjects_toStringWithId_(a4);
  OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withNSString_withJavaLangThrowable_(self, a3, v6, 0);
  return self;
}

- (OrgApacheLuceneIndexCorruptIndexException)initWithNSString:(id)a3 withOrgApacheLuceneStoreDataOutput:(id)a4
{
  v6 = OrgLukhnosPortmobileUtilObjects_toStringWithId_(a4);
  OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withNSString_withJavaLangThrowable_(self, a3, v6, 0);
  return self;
}

- (OrgApacheLuceneIndexCorruptIndexException)initWithNSString:(id)a3 withOrgApacheLuceneStoreDataInput:(id)a4 withJavaLangThrowable:(id)a5
{
  v8 = OrgLukhnosPortmobileUtilObjects_toStringWithId_(a4);
  OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withNSString_withJavaLangThrowable_(self, a3, v8, a5);
  return self;
}

- (OrgApacheLuceneIndexCorruptIndexException)initWithNSString:(id)a3 withOrgApacheLuceneStoreDataOutput:(id)a4 withJavaLangThrowable:(id)a5
{
  v8 = OrgLukhnosPortmobileUtilObjects_toStringWithId_(a4);
  OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withNSString_withJavaLangThrowable_(self, a3, v8, a5);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexCorruptIndexException;
  [(JavaLangThrowable *)&v3 dealloc];
}

@end