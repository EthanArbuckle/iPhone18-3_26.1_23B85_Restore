@interface JavaUtilTreeMap_KeySet
- (BOOL)containsWithId:(id)id;
- (JavaUtilTreeMap_KeySet)initWithJavaUtilTreeMap:(id)map;
- (id)ceilingWithId:(id)id;
- (id)comparator;
- (id)descendingIterator;
- (id)descendingSet;
- (id)first;
- (id)floorWithId:(id)id;
- (id)headSetWithId:(id)id;
- (id)higherWithId:(id)id;
- (id)iterator;
- (id)last;
- (id)lowerWithId:(id)id;
- (id)pollFirst;
- (id)pollLast;
- (id)subSetWithId:(id)id withId:(id)withId;
- (id)tailSetWithId:(id)id;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)__javaClone;
- (void)clear;
@end

@implementation JavaUtilTreeMap_KeySet

- (id)iterator
{
  v3 = *(objc_loadWeak(&self->this$0_) + 4);
  if (v3)
  {
    first = [v3 first];
  }

  else
  {
    first = 0;
  }

  v5 = [JavaUtilTreeMap_KeySet__1 alloc];
  Weak = objc_loadWeak(&self->this$0_);
  JreStrongAssign(&v5->super.this$0_, Weak);
  v5->super.expectedModCount_ = Weak[11];
  JreStrongAssign(&v5->super.next_, first);

  return v5;
}

- (id)descendingIterator
{
  v3 = *(objc_loadWeak(&self->this$0_) + 4);
  if (v3)
  {
    last = [v3 last];
  }

  else
  {
    last = 0;
  }

  v5 = [JavaUtilTreeMap_KeySet__2 alloc];
  Weak = objc_loadWeak(&self->this$0_);
  JreStrongAssign(&v5->super.this$0_, Weak);
  v5->super.expectedModCount_ = Weak[11];
  JreStrongAssign(&v5->super.next_, last);

  return v5;
}

- (BOOL)containsWithId:(id)id
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak containsKeyWithId:id];
}

- (void)clear
{
  Weak = objc_loadWeak(&self->this$0_);

  [Weak clear];
}

- (id)comparator
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak comparator];
}

- (id)first
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak firstKey];
}

- (id)last
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak lastKey];
}

- (id)lowerWithId:(id)id
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak lowerKeyWithId:id];
}

- (id)floorWithId:(id)id
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak floorKeyWithId:id];
}

- (id)ceilingWithId:(id)id
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak ceilingKeyWithId:id];
}

- (id)higherWithId:(id)id
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak higherKeyWithId:id];
}

- (id)pollFirst
{
  Weak = objc_loadWeak(&self->this$0_);
  v3 = Weak[4];
  if (!v3)
  {
    return 0;
  }

  first = [v3 first];
  [Weak removeInternalWithJavaUtilTreeMap_Node:first];
  if (!first)
  {
    return 0;
  }

  return [first getKey];
}

- (id)pollLast
{
  Weak = objc_loadWeak(&self->this$0_);
  v3 = Weak[4];
  if (!v3)
  {
    return 0;
  }

  last = [v3 last];
  [Weak removeInternalWithJavaUtilTreeMap_Node:last];
  if (!last)
  {
    return 0;
  }

  return [last getKey];
}

- (id)subSetWithId:(id)id withId:(id)withId
{
  v4 = [objc_loadWeak(&self->this$0_) subMapWithId:id withBoolean:1 withId:withId withBoolean:0];
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  return [v4 navigableKeySet];
}

- (id)headSetWithId:(id)id
{
  v3 = [objc_loadWeak(&self->this$0_) headMapWithId:id withBoolean:0];
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 navigableKeySet];
}

- (id)tailSetWithId:(id)id
{
  v3 = [objc_loadWeak(&self->this$0_) tailMapWithId:id withBoolean:1];
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 navigableKeySet];
}

- (id)descendingSet
{
  Weak = objc_loadWeak(&self->this$0_);
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  v3 = qword_1005580A0;
  if ((atomic_load_explicit(JavaUtilTreeMap_BoundEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001E37BC();
  }

  v4 = qword_1005580A0;
  v5 = [JavaUtilTreeMap_BoundedMap alloc];
  JavaUtilTreeMap_BoundedMap_initWithJavaUtilTreeMap_withBoolean_withId_withJavaUtilTreeMap_BoundEnum_withId_withJavaUtilTreeMap_BoundEnum_(v5, Weak, 0, 0, v3, 0, v4);
  v6 = v5;

  return [(JavaUtilTreeMap_BoundedMap *)v6 navigableKeySet];
}

- (JavaUtilTreeMap_KeySet)initWithJavaUtilTreeMap:(id)map
{
  objc_storeWeak(&self->this$0_, map);
  JavaUtilAbstractSet_init(self, v4);
  return self;
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilTreeMap_KeySet;
  [(JavaUtilTreeMap_KeySet *)&v3 __javaClone];
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  Weak = objc_loadWeak(&self->this$0_);
  if (!state->var0)
  {
    v10 = Weak;
    state->var3[1] = [Weak firstNode];
    state->var3[2] = [v10 lastNode];
  }

  v11 = objc_loadWeak(&self->this$0_);

  return sub_1001DE830(v11, state, objects, count, 1, 1);
}

@end