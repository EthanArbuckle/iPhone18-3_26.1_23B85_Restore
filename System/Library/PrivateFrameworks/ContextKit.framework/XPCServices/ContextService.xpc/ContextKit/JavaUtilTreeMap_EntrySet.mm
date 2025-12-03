@interface JavaUtilTreeMap_EntrySet
- (BOOL)containsWithId:(id)id;
- (BOOL)removeWithId:(id)id;
- (JavaUtilTreeMap_EntrySet)initWithJavaUtilTreeMap:(id)map;
- (id)iterator;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)__javaClone;
- (void)clear;
@end

@implementation JavaUtilTreeMap_EntrySet

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

  v5 = [JavaUtilTreeMap_EntrySet__1 alloc];
  Weak = objc_loadWeak(&self->this$0_);
  JreStrongAssign(&v5->super.this$0_, Weak);
  v5->super.expectedModCount_ = Weak[11];
  JreStrongAssign(&v5->super.next_, first);

  return v5;
}

- (BOOL)containsWithId:(id)id
{
  v5 = [JavaUtilMap_Entry_class_() isInstance:id];
  if (v5)
  {
    Weak = objc_loadWeak(&self->this$0_);
    v7 = JavaUtilMap_Entry_class_();
    if (id && ([v7 isInstance:id] & 1) == 0)
    {
      JreThrowClassCastException();
    }

    LOBYTE(v5) = [Weak findByEntryWithJavaUtilMap_Entry:id] != 0;
  }

  return v5;
}

- (BOOL)removeWithId:(id)id
{
  LODWORD(v5) = [JavaUtilMap_Entry_class_() isInstance:id];
  if (v5)
  {
    Weak = objc_loadWeak(&self->this$0_);
    v7 = JavaUtilMap_Entry_class_();
    if (id && ([v7 isInstance:id] & 1) == 0)
    {
      JreThrowClassCastException();
    }

    v5 = [Weak findByEntryWithJavaUtilMap_Entry:id];
    if (v5)
    {
      [objc_loadWeak(&self->this$0_) removeInternalWithJavaUtilTreeMap_Node:v5];
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (void)clear
{
  Weak = objc_loadWeak(&self->this$0_);

  [Weak clear];
}

- (JavaUtilTreeMap_EntrySet)initWithJavaUtilTreeMap:(id)map
{
  objc_storeWeak(&self->this$0_, map);
  JavaUtilAbstractSet_init(self, v4);
  return self;
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilTreeMap_EntrySet;
  [(JavaUtilTreeMap_EntrySet *)&v3 __javaClone];
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

  return sub_1001DE830(v11, state, objects, count, 0, 1);
}

@end