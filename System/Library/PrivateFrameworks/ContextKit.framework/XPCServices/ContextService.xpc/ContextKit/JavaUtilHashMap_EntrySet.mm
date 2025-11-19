@interface JavaUtilHashMap_EntrySet
- (BOOL)containsWithId:(id)a3;
- (BOOL)removeWithId:(id)a3;
- (JavaUtilHashMap_EntrySet)initWithJavaUtilHashMap:(id)a3;
- (id)iterator;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)__javaClone;
- (void)clear;
@end

@implementation JavaUtilHashMap_EntrySet

- (id)iterator
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak newEntryIterator];
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
    v8 = [a3 getKey];
    v9 = [a3 getValue];

    LOBYTE(v5) = sub_1001D6EE8(Weak, v8, v9);
  }

  return v5;
}

- (BOOL)removeWithId:(id)a3
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
    v8 = [a3 getKey];
    v9 = [a3 getValue];

    LOBYTE(v5) = sub_1001D7000(Weak, v8, v9);
  }

  return v5;
}

- (void)clear
{
  Weak = objc_loadWeak(&self->this$0_);

  [Weak clear];
}

- (JavaUtilHashMap_EntrySet)initWithJavaUtilHashMap:(id)a3
{
  objc_storeWeak(&self->this$0_, a3);
  JavaUtilAbstractSet_init(self, v4);
  return self;
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilHashMap_EntrySet;
  [(JavaUtilHashMap_EntrySet *)&v3 __javaClone];
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak enumerateEntriesWithState:a3 objects:a4 count:a5];
}

@end