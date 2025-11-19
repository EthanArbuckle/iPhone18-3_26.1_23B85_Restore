@interface JavaUtilTreeMap_EntrySet
- (BOOL)containsWithId:(id)a3;
- (BOOL)removeWithId:(id)a3;
- (JavaUtilTreeMap_EntrySet)initWithJavaUtilTreeMap:(id)a3;
- (id)iterator;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)__javaClone;
- (void)clear;
@end

@implementation JavaUtilTreeMap_EntrySet

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

  v5 = [JavaUtilTreeMap_EntrySet__1 alloc];
  Weak = objc_loadWeak(&self->this$0_);
  JreStrongAssign(&v5->super.this$0_, Weak);
  v5->super.expectedModCount_ = Weak[11];
  JreStrongAssign(&v5->super.next_, v4);

  return v5;
}

- (BOOL)containsWithId:(id)a3
{
  v5 = [JavaUtilMap_Entry_class_() isInstance:a3];
  if (v5)
  {
    Weak = objc_loadWeak(&self->this$0_);
    v7 = JavaUtilMap_Entry_class_();
    if (a3 && ([v7 isInstance:a3] & 1) == 0)
    {
      JreThrowClassCastException();
    }

    LOBYTE(v5) = [Weak findByEntryWithJavaUtilMap_Entry:a3] != 0;
  }

  return v5;
}

- (BOOL)removeWithId:(id)a3
{
  LODWORD(v5) = [JavaUtilMap_Entry_class_() isInstance:a3];
  if (v5)
  {
    Weak = objc_loadWeak(&self->this$0_);
    v7 = JavaUtilMap_Entry_class_();
    if (a3 && ([v7 isInstance:a3] & 1) == 0)
    {
      JreThrowClassCastException();
    }

    v5 = [Weak findByEntryWithJavaUtilMap_Entry:a3];
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

- (JavaUtilTreeMap_EntrySet)initWithJavaUtilTreeMap:(id)a3
{
  objc_storeWeak(&self->this$0_, a3);
  JavaUtilAbstractSet_init(self, v4);
  return self;
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilTreeMap_EntrySet;
  [(JavaUtilTreeMap_EntrySet *)&v3 __javaClone];
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

  return sub_1001DE830(v11, a3, a4, a5, 0, 1);
}

@end