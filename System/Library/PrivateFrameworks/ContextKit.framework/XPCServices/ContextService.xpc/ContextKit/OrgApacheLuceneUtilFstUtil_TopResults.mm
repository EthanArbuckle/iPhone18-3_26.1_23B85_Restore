@interface OrgApacheLuceneUtilFstUtil_TopResults
- (OrgApacheLuceneUtilFstUtil_TopResults)initWithBoolean:(BOOL)boolean withJavaUtilList:(id)list;
- (id)iterator;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilFstUtil_TopResults

- (OrgApacheLuceneUtilFstUtil_TopResults)initWithBoolean:(BOOL)boolean withJavaUtilList:(id)list
{
  JreStrongAssign(&self->topN_, list);
  self->isComplete_ = boolean;
  return self;
}

- (id)iterator
{
  topN = self->topN_;
  if (!topN)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilList *)topN iterator];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilFstUtil_TopResults;
  [(OrgApacheLuceneUtilFstUtil_TopResults *)&v3 dealloc];
}

@end