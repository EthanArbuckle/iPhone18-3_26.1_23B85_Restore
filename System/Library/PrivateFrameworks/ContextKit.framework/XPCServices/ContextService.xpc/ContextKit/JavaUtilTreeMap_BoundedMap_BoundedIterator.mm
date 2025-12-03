@interface JavaUtilTreeMap_BoundedMap_BoundedIterator
- (id)stepBackward;
- (id)stepForward;
- (void)dealloc;
@end

@implementation JavaUtilTreeMap_BoundedMap_BoundedIterator

- (id)stepForward
{
  v8.receiver = self;
  v8.super_class = JavaUtilTreeMap_BoundedMap_BoundedIterator;
  stepForward = [(JavaUtilTreeMap_MapIterator *)&v8 stepForward];
  next = self->super.next_;
  if (next)
  {
    v5 = self->this$1_;
    key = next->key_;
    if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001E37FC();
    }

    if ((sub_1001E0314(v5, key, qword_1005580A0, self->this$1_->toBound_) & 1) == 0)
    {
      JreStrongAssign(&self->super.next_, 0);
    }
  }

  return stepForward;
}

- (id)stepBackward
{
  v10.receiver = self;
  v10.super_class = JavaUtilTreeMap_BoundedMap_BoundedIterator;
  stepBackward = [(JavaUtilTreeMap_MapIterator *)&v10 stepBackward];
  p_next = &self->super.next_;
  next = self->super.next_;
  if (next)
  {
    v6 = self->this$1_;
    key = next->key_;
    fromBound = v6->fromBound_;
    if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001E37FC();
    }

    if ((sub_1001E0314(v6, key, fromBound, qword_1005580A0) & 1) == 0)
    {
      JreStrongAssign(p_next, 0);
    }
  }

  return stepBackward;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilTreeMap_BoundedMap_BoundedIterator;
  [(JavaUtilTreeMap_MapIterator *)&v3 dealloc];
}

@end