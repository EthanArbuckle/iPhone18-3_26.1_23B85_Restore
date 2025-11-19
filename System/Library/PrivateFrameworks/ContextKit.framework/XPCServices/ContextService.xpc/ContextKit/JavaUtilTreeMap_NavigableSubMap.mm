@interface JavaUtilTreeMap_NavigableSubMap
- (id)readResolve;
- (void)dealloc;
@end

@implementation JavaUtilTreeMap_NavigableSubMap

- (id)readResolve
{
  v3 = JavaUtilTreeMap_BoundEnum_values_;
  if (self->fromStart_)
  {
    v4 = &qword_1005580A0;
    if (atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire))
    {
      goto LABEL_8;
    }

    goto LABEL_3;
  }

  loInclusive = self->loInclusive_;
  explicit = atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire);
  if (loInclusive)
  {
    v4 = JavaUtilTreeMap_BoundEnum_values_;
  }

  else
  {
    v4 = &qword_100558098;
  }

  if ((explicit & 1) == 0)
  {
LABEL_3:
    objc_opt_class();
  }

LABEL_8:
  v7 = *v4;
  if (self->toEnd_)
  {
    v3 = &qword_1005580A0;
    if (atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire))
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  hiInclusive = self->hiInclusive_;
  v9 = atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire);
  if (!hiInclusive)
  {
    v3 = &qword_100558098;
  }

  if ((v9 & 1) == 0)
  {
LABEL_10:
    objc_opt_class();
  }

LABEL_14:
  v10 = *v3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  m = self->m_;
  lo = self->lo_;
  hi = self->hi_;
  v15 = [JavaUtilTreeMap_BoundedMap alloc];
  JavaUtilTreeMap_BoundedMap_initWithJavaUtilTreeMap_withBoolean_withId_withJavaUtilTreeMap_BoundEnum_withId_withJavaUtilTreeMap_BoundEnum_(v15, m, (isKindOfClass & 1) == 0, lo, v7, hi, v10);

  return v15;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilTreeMap_NavigableSubMap;
  [(JavaUtilAbstractMap *)&v3 dealloc];
}

@end