@interface JavaUtilHashtable_EntrySet
- (BOOL)containsAllWithJavaUtilCollection:(id)a3;
- (BOOL)containsWithId:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)removeAllWithJavaUtilCollection:(id)a3;
- (BOOL)removeWithId:(id)a3;
- (BOOL)retainAllWithJavaUtilCollection:(id)a3;
- (JavaUtilHashtable_EntrySet)initWithJavaUtilHashtable:(id)a3;
- (id)description;
- (id)iterator;
- (id)toArray;
- (id)toArrayWithNSObjectArray:(id)a3;
- (int)size;
- (void)__javaClone;
- (void)clear;
@end

@implementation JavaUtilHashtable_EntrySet

- (id)iterator
{
  Weak = objc_loadWeak(&self->this$0_);
  v3 = [JavaUtilHashtable_EntryIterator alloc];
  sub_1001F87CC(v3, Weak);

  return v3;
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

    LOBYTE(v5) = sub_1001F7944(Weak, v8, v9);
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

    LOBYTE(v5) = sub_1001F7A70(Weak, v8, v9);
  }

  return v5;
}

- (int)size
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak size];
}

- (void)clear
{
  Weak = objc_loadWeak(&self->this$0_);

  [Weak clear];
}

- (BOOL)removeAllWithJavaUtilCollection:(id)a3
{
  Weak = objc_loadWeak(&self->this$0_);
  objc_sync_enter(Weak);
  v7.receiver = self;
  v7.super_class = JavaUtilHashtable_EntrySet;
  LOBYTE(a3) = [(JavaUtilAbstractSet *)&v7 removeAllWithJavaUtilCollection:a3];
  objc_sync_exit(Weak);
  return a3;
}

- (BOOL)retainAllWithJavaUtilCollection:(id)a3
{
  Weak = objc_loadWeak(&self->this$0_);
  objc_sync_enter(Weak);
  v7.receiver = self;
  v7.super_class = JavaUtilHashtable_EntrySet;
  LOBYTE(a3) = [(JavaUtilAbstractCollection *)&v7 retainAllWithJavaUtilCollection:a3];
  objc_sync_exit(Weak);
  return a3;
}

- (BOOL)containsAllWithJavaUtilCollection:(id)a3
{
  Weak = objc_loadWeak(&self->this$0_);
  objc_sync_enter(Weak);
  v7.receiver = self;
  v7.super_class = JavaUtilHashtable_EntrySet;
  LOBYTE(a3) = [(JavaUtilAbstractCollection *)&v7 containsAllWithJavaUtilCollection:a3];
  objc_sync_exit(Weak);
  return a3;
}

- (BOOL)isEqual:(id)a3
{
  Weak = objc_loadWeak(&self->this$0_);
  objc_sync_enter(Weak);
  v7.receiver = self;
  v7.super_class = JavaUtilHashtable_EntrySet;
  LOBYTE(a3) = [(JavaUtilAbstractSet *)&v7 isEqual:a3];
  objc_sync_exit(Weak);
  return a3;
}

- (id)description
{
  Weak = objc_loadWeak(&self->this$0_);
  objc_sync_enter(Weak);
  v6.receiver = self;
  v6.super_class = JavaUtilHashtable_EntrySet;
  v4 = [(JavaUtilAbstractCollection *)&v6 description];
  objc_sync_exit(Weak);
  return v4;
}

- (id)toArray
{
  Weak = objc_loadWeak(&self->this$0_);
  objc_sync_enter(Weak);
  v6.receiver = self;
  v6.super_class = JavaUtilHashtable_EntrySet;
  v4 = [(JavaUtilAbstractCollection *)&v6 toArray];
  objc_sync_exit(Weak);
  return v4;
}

- (id)toArrayWithNSObjectArray:(id)a3
{
  Weak = objc_loadWeak(&self->this$0_);
  objc_sync_enter(Weak);
  v8.receiver = self;
  v8.super_class = JavaUtilHashtable_EntrySet;
  v6 = [(JavaUtilAbstractCollection *)&v8 toArrayWithNSObjectArray:a3];
  objc_sync_exit(Weak);
  return v6;
}

- (JavaUtilHashtable_EntrySet)initWithJavaUtilHashtable:(id)a3
{
  objc_storeWeak(&self->this$0_, a3);
  JavaUtilAbstractSet_init(self, v4);
  return self;
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilHashtable_EntrySet;
  [(JavaUtilHashtable_EntrySet *)&v3 __javaClone];
}

@end