@interface OrgApacheLuceneUtilAccountables_$2
- (OrgApacheLuceneUtilAccountables_$2)initWithLong:(int64_t)a3 withJavaUtilCollection:(id)a4 withNSString:(id)a5;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilAccountables_$2

- (OrgApacheLuceneUtilAccountables_$2)initWithLong:(int64_t)a3 withJavaUtilCollection:(id)a4 withNSString:(id)a5
{
  self->val$bytes_ = a3;
  JreStrongAssign(&self->val$children_, a4);
  JreStrongAssign(&self->val$description_, a5);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilAccountables__2;
  [(OrgApacheLuceneUtilAccountables_$2 *)&v3 dealloc];
}

@end