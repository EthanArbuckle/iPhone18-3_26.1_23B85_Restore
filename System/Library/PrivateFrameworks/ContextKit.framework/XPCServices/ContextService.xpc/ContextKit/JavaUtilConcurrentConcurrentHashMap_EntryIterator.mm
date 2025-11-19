@interface JavaUtilConcurrentConcurrentHashMap_EntryIterator
- (id)next;
@end

@implementation JavaUtilConcurrentConcurrentHashMap_EntryIterator

- (id)next
{
  next = self->super.super.next_;
  if (!next)
  {
    v8 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v8);
  }

  key = next->key_;
  v5 = atomic_load(&next->val_);
  JreStrongAssign(&self->super.lastReturned_, next);
  [JavaUtilConcurrentConcurrentHashMap_Traverser advance]_0(self);
  v6 = new_JavaUtilConcurrentConcurrentHashMap_MapEntry_initWithId_withId_withJavaUtilConcurrentConcurrentHashMap_(key, v5, self->super.map_);

  return v6;
}

@end