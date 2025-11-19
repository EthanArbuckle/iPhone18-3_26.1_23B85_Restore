@interface OrgApacheLuceneUtilCloseableThreadLocal
- (id)get;
- (void)close;
- (void)dealloc;
- (void)maybePurge;
- (void)setWithId:(id)a3;
@end

@implementation OrgApacheLuceneUtilCloseableThreadLocal

- (id)get
{
  t = self->t_;
  if (!t)
  {
    goto LABEL_12;
  }

  v4 = [(JavaLangThreadLocal *)t get];
  if (v4)
  {
    v5 = v4;
    countUntilPurge = self->countUntilPurge_;
    if (countUntilPurge)
    {
      if (![(JavaUtilConcurrentAtomicAtomicInteger *)countUntilPurge getAndDecrement])
      {
        sub_100061C88(self);
      }

      return [v5 get];
    }

LABEL_12:
    JreThrowNullPointerException();
  }

  v8 = [(OrgApacheLuceneUtilCloseableThreadLocal *)self initialValue];
  if (v8)
  {
    [(OrgApacheLuceneUtilCloseableThreadLocal *)self setWithId:v8];
  }

  return v8;
}

- (void)setWithId:(id)a3
{
  t = self->t_;
  if (!t)
  {
    JreThrowNullPointerException();
  }

  [(JavaLangThreadLocal *)t setWithId:new_JavaLangRefWeakReference_initWithId_(a3)];
  hardRefs = self->hardRefs_;
  objc_sync_enter(hardRefs);
  v7 = self->hardRefs_;
  if (!v7 || ([(JavaUtilMap *)v7 putWithId:JavaLangThread_currentThread() withId:a3], (countUntilPurge = self->countUntilPurge_) == 0))
  {
    JreThrowNullPointerException();
  }

  if (![(JavaUtilConcurrentAtomicAtomicInteger *)countUntilPurge getAndDecrement])
  {
    sub_100061C88(self);
  }

  objc_sync_exit(hardRefs);
}

- (void)maybePurge
{
  countUntilPurge = self->countUntilPurge_;
  if (!countUntilPurge)
  {
    JreThrowNullPointerException();
  }

  if (![(JavaUtilConcurrentAtomicAtomicInteger *)countUntilPurge getAndDecrement])
  {

    sub_100061C88(self);
  }
}

- (void)close
{
  JreStrongAssign(&self->hardRefs_, 0);
  t = self->t_;
  p_t = &self->t_;
  v3 = t;
  if (t)
  {
    [(JavaLangThreadLocal *)v3 remove];
  }

  JreStrongAssign(p_t, 0);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilCloseableThreadLocal;
  [(OrgApacheLuceneUtilCloseableThreadLocal *)&v3 dealloc];
}

@end