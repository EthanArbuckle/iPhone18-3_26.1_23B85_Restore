@interface OrgApacheLuceneIndexMergePolicy_MergeException
- (OrgApacheLuceneIndexMergePolicy_MergeException)initWithJavaLangThrowable:(id)throwable withOrgApacheLuceneStoreDirectory:(id)directory;
- (OrgApacheLuceneIndexMergePolicy_MergeException)initWithNSString:(id)string withOrgApacheLuceneStoreDirectory:(id)directory;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexMergePolicy_MergeException

- (OrgApacheLuceneIndexMergePolicy_MergeException)initWithNSString:(id)string withOrgApacheLuceneStoreDirectory:(id)directory
{
  JavaLangRuntimeException_initWithNSString_(self, string);
  JreStrongAssign(&self->dir_, directory);
  return self;
}

- (OrgApacheLuceneIndexMergePolicy_MergeException)initWithJavaLangThrowable:(id)throwable withOrgApacheLuceneStoreDirectory:(id)directory
{
  JavaLangRuntimeException_initWithJavaLangThrowable_(self, throwable);
  JreStrongAssign(&self->dir_, directory);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexMergePolicy_MergeException;
  [(JavaLangThrowable *)&v3 dealloc];
}

@end