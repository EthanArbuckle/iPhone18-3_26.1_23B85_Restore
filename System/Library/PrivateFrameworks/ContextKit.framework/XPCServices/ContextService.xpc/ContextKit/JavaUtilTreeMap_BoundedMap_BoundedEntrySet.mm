@interface JavaUtilTreeMap_BoundedMap_BoundedEntrySet
- (BOOL)containsWithId:(id)id;
- (BOOL)isEmpty;
- (BOOL)removeWithId:(id)id;
- (JavaUtilTreeMap_BoundedMap_BoundedEntrySet)initWithJavaUtilTreeMap_BoundedMap:(id)map;
- (id)iterator;
- (int)size;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)__javaClone;
@end

@implementation JavaUtilTreeMap_BoundedMap_BoundedEntrySet

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
  v5 = [JavaUtilTreeMap_BoundedMap_BoundedEntrySet__1 alloc];
  sub_1001E20D8(v5, &self->super.super.super.isa, v4);

  return v5;
}

- (BOOL)containsWithId:(id)id
{
  v5 = [JavaUtilMap_Entry_class_() isInstance:id];
  if (v5)
  {
    v6 = JavaUtilMap_Entry_class_();
    if (!id)
    {
      objc_loadWeak(&self->this$0_);
      JreThrowNullPointerException();
    }

    if (([v6 isInstance:id] & 1) == 0)
    {
      JreThrowClassCastException();
    }

    Weak = objc_loadWeak(&self->this$0_);
    v5 = sub_1001E0314(Weak, [id getKey], Weak[6], Weak[8]);
    if (v5)
    {
      LOBYTE(v5) = [*(objc_loadWeak(&self->this$0_) + 3) findByEntryWithJavaUtilMap_Entry:id] != 0;
    }
  }

  return v5;
}

- (BOOL)removeWithId:(id)id
{
  if (![JavaUtilMap_Entry_class_() isInstance:id])
  {
    return 0;
  }

  v5 = JavaUtilMap_Entry_class_();
  if (!id)
  {
    objc_loadWeak(&self->this$0_);
    JreThrowNullPointerException();
  }

  if (([v5 isInstance:id] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  Weak = objc_loadWeak(&self->this$0_);
  if (!sub_1001E0314(Weak, [id getKey], Weak[6], Weak[8]))
  {
    return 0;
  }

  entrySet = [*(objc_loadWeak(&self->this$0_) + 3) entrySet];
  if (!entrySet)
  {
    JreThrowNullPointerException();
  }

  return [entrySet removeWithId:id];
}

- (JavaUtilTreeMap_BoundedMap_BoundedEntrySet)initWithJavaUtilTreeMap_BoundedMap:(id)map
{
  objc_storeWeak(&self->this$0_, map);
  JavaUtilAbstractSet_init(self, v4);
  return self;
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilTreeMap_BoundedMap_BoundedEntrySet;
  [(JavaUtilTreeMap_BoundedMap_BoundedEntrySet *)&v3 __javaClone];
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

  return sub_1001DE830(v11, state, objects, count, 0, v12);
}

@end