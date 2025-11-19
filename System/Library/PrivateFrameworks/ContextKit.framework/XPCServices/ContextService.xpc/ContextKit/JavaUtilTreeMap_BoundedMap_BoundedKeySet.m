@interface JavaUtilTreeMap_BoundedMap_BoundedKeySet
- (BOOL)containsWithId:(id)a3;
- (BOOL)isEmpty;
- (BOOL)removeWithId:(id)a3;
- (JavaUtilTreeMap_BoundedMap_BoundedKeySet)initWithJavaUtilTreeMap_BoundedMap:(id)a3;
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
- (int)size;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)__javaClone;
@end

@implementation JavaUtilTreeMap_BoundedMap_BoundedKeySet

- (int)size
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak size];
}

- (BOOL)isEmpty
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak isEmpty];
}

- (id)iterator
{
  Weak = objc_loadWeak(&self->this$0_);
  v4 = sub_1001DFD9C(Weak, 1);
  v5 = [JavaUtilTreeMap_BoundedMap_BoundedKeySet__1 alloc];
  sub_1001E2B50(v5, &self->super.super.super.isa, v4);

  return v5;
}

- (id)descendingIterator
{
  Weak = objc_loadWeak(&self->this$0_);
  v4 = sub_1001DFD9C(Weak, 0);
  v5 = [JavaUtilTreeMap_BoundedMap_BoundedKeySet__2 alloc];
  sub_1001E2CB0(v5, &self->super.super.super.isa, v4);

  return v5;
}

- (BOOL)containsWithId:(id)a3
{
  Weak = objc_loadWeak(&self->this$0_);
  v6 = sub_1001E0314(Weak, a3, Weak[6], Weak[8]);
  if (v6)
  {
    LOBYTE(v6) = [*(objc_loadWeak(&self->this$0_) + 3) findByObjectWithId:a3] != 0;
  }

  return v6;
}

- (BOOL)removeWithId:(id)a3
{
  Weak = objc_loadWeak(&self->this$0_);
  v6 = sub_1001E0314(Weak, a3, Weak[6], Weak[8]);
  if (v6)
  {
    LOBYTE(v6) = [*(objc_loadWeak(&self->this$0_) + 3) removeInternalByKeyWithId:a3] != 0;
  }

  return v6;
}

- (id)first
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak firstKey];
}

- (id)pollFirst
{
  result = [objc_loadWeak(&self->this$0_) pollFirstEntry];
  if (result)
  {

    return [result getKey];
  }

  return result;
}

- (id)last
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak lastKey];
}

- (id)pollLast
{
  result = [objc_loadWeak(&self->this$0_) pollLastEntry];
  if (result)
  {

    return [result getKey];
  }

  return result;
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

- (id)comparator
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak comparator];
}

- (id)subSetWithId:(id)a3 withId:(id)a4
{
  v4 = [objc_loadWeak(&self->this$0_) subMapWithId:a3 withId:a4];
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  return [v4 navigableKeySet];
}

- (id)headSetWithId:(id)a3
{
  v3 = [objc_loadWeak(&self->this$0_) headMapWithId:a3];
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 navigableKeySet];
}

- (id)tailSetWithId:(id)a3
{
  v3 = [objc_loadWeak(&self->this$0_) tailMapWithId:a3];
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 navigableKeySet];
}

- (id)descendingSet
{
  v3 = *(objc_loadWeak(&self->this$0_) + 3);
  v4 = *(objc_loadWeak(&self->this$0_) + 32);
  v5 = *(objc_loadWeak(&self->this$0_) + 5);
  v6 = *(objc_loadWeak(&self->this$0_) + 6);
  v7 = *(objc_loadWeak(&self->this$0_) + 7);
  v8 = *(objc_loadWeak(&self->this$0_) + 8);
  v9 = [JavaUtilTreeMap_BoundedMap alloc];
  JavaUtilTreeMap_BoundedMap_initWithJavaUtilTreeMap_withBoolean_withId_withJavaUtilTreeMap_BoundEnum_withId_withJavaUtilTreeMap_BoundEnum_(v9, v3, (v4 & 1) == 0, v5, v6, v7, v8);
  v10 = v9;

  return [(JavaUtilTreeMap_BoundedMap *)v10 navigableKeySet];
}

- (JavaUtilTreeMap_BoundedMap_BoundedKeySet)initWithJavaUtilTreeMap_BoundedMap:(id)a3
{
  objc_storeWeak(&self->this$0_, a3);
  JavaUtilAbstractSet_init(self, v4);
  return self;
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilTreeMap_BoundedMap_BoundedKeySet;
  [(JavaUtilTreeMap_BoundedMap_BoundedKeySet *)&v3 __javaClone];
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  Weak = objc_loadWeak(&self->this$0_);
  if (!a3->var0)
  {
    v10 = Weak;
    a3->var3[1] = [Weak endpointWithBoolean:1];
    a3->var3[2] = [v10 endpointWithBoolean:0];
  }

  v11 = *(objc_loadWeak(&self->this$0_) + 3);
  v12 = *(objc_loadWeak(&self->this$0_) + 32);

  return sub_1001DE830(v11, a3, a4, a5, 1, v12);
}

@end