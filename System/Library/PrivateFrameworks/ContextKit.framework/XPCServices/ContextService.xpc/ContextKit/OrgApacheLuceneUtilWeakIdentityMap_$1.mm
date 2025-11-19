@interface OrgApacheLuceneUtilWeakIdentityMap_$1
- (BOOL)hasNext;
- (OrgApacheLuceneUtilWeakIdentityMap_$1)initWithJavaUtilIterator:(id)a3;
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
  v2 = *(a1 + 24);
  if (!v2)
  {
LABEL_6:
    JreThrowNullPointerException();
  }

  while (1)
  {
    v3 = [v2 hasNext];
    if (!v3)
    {
      return v3;
    }

    v4 = [*(a1 + 24) next];
    if (!v4)
    {
      goto LABEL_6;
    }

    JreStrongAssign((a1 + 8), [v4 get]);
    v5 = *(a1 + 8);
    if (v5)
    {
      if ((atomic_load_explicit(OrgApacheLuceneUtilWeakIdentityMap__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_100077954();
      }

      if (v5 == OrgApacheLuceneUtilWeakIdentityMap_NULL__)
      {
        JreStrongAssign((a1 + 8), 0);
      }

      *(a1 + 16) = 1;
      return v3;
    }

    [*(a1 + 24) remove];
    v2 = *(a1 + 24);
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

- (OrgApacheLuceneUtilWeakIdentityMap_$1)initWithJavaUtilIterator:(id)a3
{
  JreStrongAssign(&self->val$iterator_, a3);
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