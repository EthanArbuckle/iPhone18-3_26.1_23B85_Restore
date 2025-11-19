@interface OrgApacheLuceneIndexLeafReader_LeafReaderClosedListener
- (OrgApacheLuceneIndexLeafReader_LeafReaderClosedListener)initWithOrgApacheLuceneIndexLeafReader:(id)a3;
- (void)dealloc;
- (void)onCloseWithOrgApacheLuceneIndexIndexReader:(id)a3;
@end

@implementation OrgApacheLuceneIndexLeafReader_LeafReaderClosedListener

- (OrgApacheLuceneIndexLeafReader_LeafReaderClosedListener)initWithOrgApacheLuceneIndexLeafReader:(id)a3
{
  v4 = new_JavaLangRefWeakReference_initWithId_(a3);
  JreStrongAssignAndConsume(&self->weakRef_, v4);
  return self;
}

- (void)onCloseWithOrgApacheLuceneIndexIndexReader:(id)a3
{
  weakRef = self->weakRef_;
  if (!weakRef)
  {
    JreThrowNullPointerException();
  }

  v6 = [(JavaLangRefReference *)weakRef get];
  if (v6)
  {
    v7 = v6 == a3;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    JreStrongAssign(v6 + 5, 0);
    v8 = self->weakRef_;

    [(JavaLangRefReference *)v8 clear];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexLeafReader_LeafReaderClosedListener;
  [(OrgApacheLuceneIndexLeafReader_LeafReaderClosedListener *)&v3 dealloc];
}

@end