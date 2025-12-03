@interface OrgApacheLuceneIndexStoredFieldVisitor
- (void)binaryFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withOrgApacheLuceneUtilBytesRef:(id)ref;
- (void)dealloc;
- (void)stringFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withOrgApacheLuceneUtilBytesRef:(id)ref;
@end

@implementation OrgApacheLuceneIndexStoredFieldVisitor

- (void)binaryFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withOrgApacheLuceneUtilBytesRef:(id)ref
{
  if (!ref)
  {
    JreThrowNullPointerException();
  }

  v7 = [IOSByteArray arrayWithLength:*(ref + 5)];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(ref + 1), *(ref + 4), v7, 0, *(ref + 5));

  [(OrgApacheLuceneIndexStoredFieldVisitor *)self binaryFieldWithOrgApacheLuceneIndexFieldInfo:info withByteArray:v7];
}

- (void)stringFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withOrgApacheLuceneUtilBytesRef:(id)ref
{
  if (!ref)
  {
    JreThrowNullPointerException();
  }

  v7 = [IOSByteArray arrayWithLength:*(ref + 5)];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(ref + 1), *(ref + 4), v7, 0, *(ref + 5));

  [(OrgApacheLuceneIndexStoredFieldVisitor *)self stringFieldWithOrgApacheLuceneIndexFieldInfo:info withByteArray:v7];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexStoredFieldVisitor;
  [(OrgApacheLuceneIndexStoredFieldVisitor *)&v3 dealloc];
}

@end