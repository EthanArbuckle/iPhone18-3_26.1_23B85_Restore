@interface OrgApacheLuceneIndexMergePolicy_MergeException
- (OrgApacheLuceneIndexMergePolicy_MergeException)initWithJavaLangThrowable:(id)a3 withOrgApacheLuceneStoreDirectory:(id)a4;
- (OrgApacheLuceneIndexMergePolicy_MergeException)initWithNSString:(id)a3 withOrgApacheLuceneStoreDirectory:(id)a4;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexMergePolicy_MergeException

- (OrgApacheLuceneIndexMergePolicy_MergeException)initWithNSString:(id)a3 withOrgApacheLuceneStoreDirectory:(id)a4
{
  JavaLangRuntimeException_initWithNSString_(self, a3);
  JreStrongAssign(&self->dir_, a4);
  return self;
}

- (OrgApacheLuceneIndexMergePolicy_MergeException)initWithJavaLangThrowable:(id)a3 withOrgApacheLuceneStoreDirectory:(id)a4
{
  JavaLangRuntimeException_initWithJavaLangThrowable_(self, a3);
  JreStrongAssign(&self->dir_, a4);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexMergePolicy_MergeException;
  [(JavaLangThrowable *)&v3 dealloc];
}

@end