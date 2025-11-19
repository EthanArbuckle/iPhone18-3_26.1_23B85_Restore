@interface OrgApacheLuceneUtilFstUtil_TopResults
- (OrgApacheLuceneUtilFstUtil_TopResults)initWithBoolean:(BOOL)a3 withJavaUtilList:(id)a4;
- (id)iterator;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilFstUtil_TopResults

- (OrgApacheLuceneUtilFstUtil_TopResults)initWithBoolean:(BOOL)a3 withJavaUtilList:(id)a4
{
  JreStrongAssign(&self->topN_, a4);
  self->isComplete_ = a3;
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