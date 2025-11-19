@interface JavaUtilTreeMap_KeySet
- (BOOL)containsWithId:(id)a3;
- (JavaUtilTreeMap_KeySet)initWithJavaUtilTreeMap:(id)a3;
- (id)ceilingWithId:(id)a3;
- (id)comparator;
- (id)descendingIterator;
- (id)descendingSet;
- (id)first;
- (id)floorWithId:(id)a3;
- (id)headSetWithId:(id)a3;
- (id)higherWithId:(id)a3;
- (id)iterator;
- (id)last;
- (id)lowerWithId:(id)a3;
- (id)pollFirst;
- (id)pollLast;
- (id)subSetWithId:(id)a3 withId:(id)a4;
- (id)tailSetWithId:(id)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)__javaClone;
- (void)clear;
@end

@implementation JavaUtilTreeMap_KeySet

- (id)iterator
{
  v3 = *(objc_loadWeak(&self->this$0_) + 4);
  if (v3)
  {
    v4 = [v3 first];
  }

  else
  {
    v4 = 0;
  }

  v5 = [JavaUtilTreeMap_KeySet__1 alloc];
  Weak = objc_loadWeak(&self->this$0_);
  JreStrongAssign(&v5->super.this$0_, Weak);
  v5->super.expectedModCount_ = Weak[11];
  JreStrongAssign(&v5->super.next_, v4);

  return v5;
}

- (id)descendingIterator
{
  v3 = *(objc_loadWeak(&self->this$0_) + 4);
  if (v3)
  {
    v4 = [v3 last];
  }

  else
  {
    v4 = 0;
  }

  v5 = [JavaUtilTreeMap_KeySet__2 alloc];
  Weak = objc_loadWeak(&self->this$0_);
  JreStrongAssign(&v5->super.this$0_, Weak);
  v5->super.expectedModCount_ = Weak[11];
  JreStrongAssign(&v5->super.next_, v4);

  return v5;
}

- (BOOL)containsWithId:(id)a3
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak containsKeyWithId:a3];
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

- (id)lowerWithId:(id)a3
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak lowerKeyWithId:a3];
}

- (id)floorWithId:(id)a3
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak floorKeyWithId:a3];
}

- (id)ceilingWithId:(id)a3
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak ceilingKeyWithId:a3];
}

- (id)higherWithId:(id)a3
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak higherKeyWithId:a3];
}

- (id)pollFirst
{
  Weak = objc_loadWeak(&self->this$0_);
  v3 = Weak[4];
  if (!v3)
  {
    return 0;
  }

  v4 = [v3 first];
  [Weak removeInternalWithJavaUtilTreeMap_Node:v4];
  if (!v4)
  {
    return 0;
  }

  return [v4 getKey];
}

- (id)pollLast
{
  Weak = objc_loadWeak(&self->this$0_);
  v3 = Weak[4];
  if (!v3)
  {
    return 0;
  }

  v4 = [v3 last];
  [Weak removeInternalWithJavaUtilTreeMap_Node:v4];
  if (!v4)
  {
    return 0;
  }

  return [v4 getKey];
}

- (id)subSetWithId:(id)a3 withId:(id)a4
{
  v4 = [objc_loadWeak(&self->this$0_) subMapWithId:a3 withBoolean:1 withId:a4 withBoolean:0];
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  return [v4 navigableKeySet];
}

- (id)headSetWithId:(id)a3
{
  v3 = [objc_loadWeak(&self->this$0_) headMapWithId:a3 withBoolean:0];
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 navigableKeySet];
}

- (id)tailSetWithId:(id)a3
{
  v3 = [objc_loadWeak(&self->this$0_) tailMapWithId:a3 withBoolean:1];
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

- (JavaUtilTreeMap_KeySet)initWithJavaUtilTreeMap:(id)a3
{
  objc_storeWeak(&self->this$0_, a3);
  JavaUtilAbstractSet_init(self, v4);
  return self;
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilTreeMap_KeySet;
  [(JavaUtilTreeMap_KeySet *)&v3 __javaClone];
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  Weak = objc_loadWeak(&self->this$0_);
  if (!a3->var0)
  {
    v10 = Weak;
    a3->var3[1] = [Weak firstNode];
    a3->var3[2] = [v10 lastNode];
  }

  v11 = objc_loadWeak(&self->this$0_);

  return sub_1001DE830(v11, a3, a4, a5, 1, 1);
}

@end