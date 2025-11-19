@interface OrgApacheLuceneIndexStoredFieldVisitor
- (void)binaryFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3 withOrgApacheLuceneUtilBytesRef:(id)a4;
- (void)dealloc;
- (void)stringFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3 withOrgApacheLuceneUtilBytesRef:(id)a4;
@end

@implementation OrgApacheLuceneIndexStoredFieldVisitor

- (void)binaryFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3 withOrgApacheLuceneUtilBytesRef:(id)a4
{
  if (!a4)
  {
    JreThrowNullPointerException();
  }

  v7 = [IOSByteArray arrayWithLength:*(a4 + 5)];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(a4 + 1), *(a4 + 4), v7, 0, *(a4 + 5));

  [(OrgApacheLuceneIndexStoredFieldVisitor *)self binaryFieldWithOrgApacheLuceneIndexFieldInfo:a3 withByteArray:v7];
}

- (void)stringFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3 withOrgApacheLuceneUtilBytesRef:(id)a4
{
  if (!a4)
  {
    JreThrowNullPointerException();
  }

  v7 = [IOSByteArray arrayWithLength:*(a4 + 5)];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(*(a4 + 1), *(a4 + 4), v7, 0, *(a4 + 5));

  [(OrgApacheLuceneIndexStoredFieldVisitor *)self stringFieldWithOrgApacheLuceneIndexFieldInfo:a3 withByteArray:v7];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexStoredFieldVisitor;
  [(OrgApacheLuceneIndexStoredFieldVisitor *)&v3 dealloc];
}

@end