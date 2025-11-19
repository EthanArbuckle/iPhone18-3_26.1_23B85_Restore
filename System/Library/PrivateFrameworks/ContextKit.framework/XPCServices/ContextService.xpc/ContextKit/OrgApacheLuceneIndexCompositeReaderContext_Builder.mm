@interface OrgApacheLuceneIndexCompositeReaderContext_Builder
- (OrgApacheLuceneIndexCompositeReaderContext_Builder)initWithOrgApacheLuceneIndexCompositeReader:(id)a3;
- (id)build;
- (void)dealloc;
@end

@implementation OrgApacheLuceneIndexCompositeReaderContext_Builder

- (OrgApacheLuceneIndexCompositeReaderContext_Builder)initWithOrgApacheLuceneIndexCompositeReader:(id)a3
{
  v5 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume(&self->leaves_, v5);
  self->leafDocBase_ = 0;
  JreStrongAssign(&self->reader_, a3);
  return self;
}

- (id)build
{
  v2 = sub_1000996D4(self, 0, self->reader_, 0, 0);
  objc_opt_class();
  if (v2 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneIndexCompositeReaderContext_Builder;
  [(OrgApacheLuceneIndexCompositeReaderContext_Builder *)&v3 dealloc];
}

@end