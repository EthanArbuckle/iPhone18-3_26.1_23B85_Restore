@interface JavaUtilTreeMap_BoundedMap_BoundedKeySet
- (BOOL)containsWithId:(id)id;
- (BOOL)isEmpty;
- (BOOL)removeWithId:(id)id;
- (JavaUtilTreeMap_BoundedMap_BoundedKeySet)initWithJavaUtilTreeMap_BoundedMap:(id)map;
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
- (int)size;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
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

- (BOOL)containsWithId:(id)id
{
  Weak = objc_loadWeak(&self->this$0_);
  v6 = sub_1001E0314(Weak, id, Weak[6], Weak[8]);
  if (v6)
  {
    LOBYTE(v6) = [*(objc_loadWeak(&self->this$0_) + 3) findByObjectWithId:id] != 0;
  }

  return v6;
}

- (BOOL)removeWithId:(id)id
{
  Weak = objc_loadWeak(&self->this$0_);
  v6 = sub_1001E0314(Weak, id, Weak[6], Weak[8]);
  if (v6)
  {
    LOBYTE(v6) = [*(objc_loadWeak(&self->this$0_) + 3) removeInternalByKeyWithId:id] != 0;
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

- (id)comparator
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak comparator];
}

- (id)subSetWithId:(id)id withId:(id)withId
{
  v4 = [objc_loadWeak(&self->this$0_) subMapWithId:id withId:withId];
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  return [v4 navigableKeySet];
}

- (id)headSetWithId:(id)id
{
  v3 = [objc_loadWeak(&self->this$0_) headMapWithId:id];
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 navigableKeySet];
}

- (id)tailSetWithId:(id)id
{
  v3 = [objc_loadWeak(&self->this$0_) tailMapWithId:id];
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

- (JavaUtilTreeMap_BoundedMap_BoundedKeySet)initWithJavaUtilTreeMap_BoundedMap:(id)map
{
  objc_storeWeak(&self->this$0_, map);
  JavaUtilAbstractSet_init(self, v4);
  return self;
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilTreeMap_BoundedMap_BoundedKeySet;
  [(JavaUtilTreeMap_BoundedMap_BoundedKeySet *)&v3 __javaClone];
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  Weak = objc_loadWeak(&self->this$0_);
  if (!state->var0)
  {
    v10 = Weak;
    state->var3[1] = [Weak endpointWithBoolean:1];
    state->var3[2] = [v10 endpointWithBoolean:0];
  }

  v11 = *(objc_loadWeak(&self->this$0_) + 3);
  v12 = *(objc_loadWeak(&self->this$0_) + 32);

  return sub_1001DE830(v11, state, objects, count, 1, v12);
}

@end