@interface OrgApacheLuceneUtilCounter_AtomicCounter
- (OrgApacheLuceneUtilCounter_AtomicCounter)init;
- (int64_t)addAndGetWithLong:(int64_t)long;
- (int64_t)get;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilCounter_AtomicCounter

- (int64_t)addAndGetWithLong:(int64_t)long
{
  count = self->count_;
  if (!count)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilConcurrentAtomicAtomicLong *)count addAndGetWithLong:long];
}

- (int64_t)get
{
  count = self->count_;
  if (!count)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilConcurrentAtomicAtomicLong *)count get];
}

- (OrgApacheLuceneUtilCounter_AtomicCounter)init
{
  v3 = new_JavaUtilConcurrentAtomicAtomicLong_init();
  JreStrongAssignAndConsume(&self->count_, v3);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilCounter_AtomicCounter;
  [(OrgApacheLuceneUtilCounter_AtomicCounter *)&v3 dealloc];
}

@end