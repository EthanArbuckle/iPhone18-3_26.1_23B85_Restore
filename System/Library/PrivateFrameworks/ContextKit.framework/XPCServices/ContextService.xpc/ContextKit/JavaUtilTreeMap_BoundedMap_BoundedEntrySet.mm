@interface JavaUtilTreeMap_BoundedMap_BoundedEntrySet
- (BOOL)containsWithId:(id)a3;
- (BOOL)isEmpty;
- (BOOL)removeWithId:(id)a3;
- (JavaUtilTreeMap_BoundedMap_BoundedEntrySet)initWithJavaUtilTreeMap_BoundedMap:(id)a3;
- (id)iterator;
- (int)size;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
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

- (BOOL)containsWithId:(id)a3
{
  v5 = [JavaUtilMap_Entry_class_() isInstance:a3];
  if (v5)
  {
    v6 = JavaUtilMap_Entry_class_();
    if (!a3)
    {
      objc_loadWeak(&self->this$0_);
      JreThrowNullPointerException();
    }

    if (([v6 isInstance:a3] & 1) == 0)
    {
      JreThrowClassCastException();
    }

    Weak = objc_loadWeak(&self->this$0_);
    v5 = sub_1001E0314(Weak, [a3 getKey], Weak[6], Weak[8]);
    if (v5)
    {
      LOBYTE(v5) = [*(objc_loadWeak(&self->this$0_) + 3) findByEntryWithJavaUtilMap_Entry:a3] != 0;
    }
  }

  return v5;
}

- (BOOL)removeWithId:(id)a3
{
  if (![JavaUtilMap_Entry_class_() isInstance:a3])
  {
    return 0;
  }

  v5 = JavaUtilMap_Entry_class_();
  if (!a3)
  {
    objc_loadWeak(&self->this$0_);
    JreThrowNullPointerException();
  }

  if (([v5 isInstance:a3] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  Weak = objc_loadWeak(&self->this$0_);
  if (!sub_1001E0314(Weak, [a3 getKey], Weak[6], Weak[8]))
  {
    return 0;
  }

  v7 = [*(objc_loadWeak(&self->this$0_) + 3) entrySet];
  if (!v7)
  {
    JreThrowNullPointerException();
  }

  return [v7 removeWithId:a3];
}

- (JavaUtilTreeMap_BoundedMap_BoundedEntrySet)initWithJavaUtilTreeMap_BoundedMap:(id)a3
{
  objc_storeWeak(&self->this$0_, a3);
  JavaUtilAbstractSet_init(self, v4);
  return self;
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilTreeMap_BoundedMap_BoundedEntrySet;
  [(JavaUtilTreeMap_BoundedMap_BoundedEntrySet *)&v3 __javaClone];
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

  return sub_1001DE830(v11, a3, a4, a5, 0, v12);
}

@end