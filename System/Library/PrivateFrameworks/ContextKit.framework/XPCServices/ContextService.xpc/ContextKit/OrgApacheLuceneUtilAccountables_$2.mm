@interface OrgApacheLuceneUtilAccountables_$2
- (OrgApacheLuceneUtilAccountables_$2)initWithLong:(int64_t)long withJavaUtilCollection:(id)collection withNSString:(id)string;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilAccountables_$2

- (OrgApacheLuceneUtilAccountables_$2)initWithLong:(int64_t)long withJavaUtilCollection:(id)collection withNSString:(id)string
{
  self->val$bytes_ = long;
  JreStrongAssign(&self->val$children_, collection);
  JreStrongAssign(&self->val$description_, string);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilAccountables__2;
  [(OrgApacheLuceneUtilAccountables_$2 *)&v3 dealloc];
}

@end