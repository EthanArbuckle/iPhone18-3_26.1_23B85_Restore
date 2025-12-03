@interface OrgApacheLuceneUtilWeakIdentityMap_$1
- (BOOL)hasNext;
- (OrgApacheLuceneUtilWeakIdentityMap_$1)initWithJavaUtilIterator:(id)iterator;
- (id)next;
- (id)setNext;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilWeakIdentityMap_$1

- (BOOL)hasNext
{
  if (self->nextIsSet_)
  {
    return 1;
  }

  else
  {
    return [OrgApacheLuceneUtilWeakIdentityMap_$1 setNext]_0(self);
  }
}

- (id)setNext
{
  v2 = *(self + 24);
  if (!v2)
  {
LABEL_6:
    JreThrowNullPointerException();
  }

  while (1)
  {
    hasNext = [v2 hasNext];
    if (!hasNext)
    {
      return hasNext;
    }

    next = [*(self + 24) next];
    if (!next)
    {
      goto LABEL_6;
    }

    JreStrongAssign((self + 8), [next get]);
    v5 = *(self + 8);
    if (v5)
    {
      if ((atomic_load_explicit(OrgApacheLuceneUtilWeakIdentityMap__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100077954();
      }

      if (v5 == OrgApacheLuceneUtilWeakIdentityMap_NULL__)
      {
        JreStrongAssign((self + 8), 0);
      }

      *(self + 16) = 1;
      return hasNext;
    }

    [*(self + 24) remove];
    v2 = *(self + 24);
    if (!v2)
    {
      goto LABEL_6;
    }
  }
}

- (id)next
{
  if (![(OrgApacheLuceneUtilWeakIdentityMap_$1 *)self hasNext])
  {
    v6 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v6);
  }

  next = self->next_;
  p_next = &self->next_;
  *(p_next + 8) = 0;
  JreStrongAssign(p_next, 0);
  return next;
}

- (OrgApacheLuceneUtilWeakIdentityMap_$1)initWithJavaUtilIterator:(id)iterator
{
  JreStrongAssign(&self->val$iterator_, iterator);
  JreStrongAssign(&self->next_, 0);
  self->nextIsSet_ = 0;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilWeakIdentityMap__1;
  [(OrgApacheLuceneUtilWeakIdentityMap_$1 *)&v3 dealloc];
}

@end