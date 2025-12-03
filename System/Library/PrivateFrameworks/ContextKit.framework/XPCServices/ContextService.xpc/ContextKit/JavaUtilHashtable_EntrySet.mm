@interface JavaUtilHashtable_EntrySet
- (BOOL)containsAllWithJavaUtilCollection:(id)collection;
- (BOOL)containsWithId:(id)id;
- (BOOL)isEqual:(id)equal;
- (BOOL)removeAllWithJavaUtilCollection:(id)collection;
- (BOOL)removeWithId:(id)id;
- (BOOL)retainAllWithJavaUtilCollection:(id)collection;
- (JavaUtilHashtable_EntrySet)initWithJavaUtilHashtable:(id)hashtable;
- (id)description;
- (id)iterator;
- (id)toArray;
- (id)toArrayWithNSObjectArray:(id)array;
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
    getKey = [id getKey];
    getValue = [id getValue];

    LOBYTE(v5) = sub_1001F7944(Weak, getKey, getValue);
  }

  return v5;
}

- (BOOL)removeWithId:(id)id
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
    getKey = [id getKey];
    getValue = [id getValue];

    LOBYTE(v5) = sub_1001F7A70(Weak, getKey, getValue);
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

- (BOOL)removeAllWithJavaUtilCollection:(id)collection
{
  Weak = objc_loadWeak(&self->this$0_);
  objc_sync_enter(Weak);
  v7.receiver = self;
  v7.super_class = JavaUtilHashtable_EntrySet;
  LOBYTE(collection) = [(JavaUtilAbstractSet *)&v7 removeAllWithJavaUtilCollection:collection];
  objc_sync_exit(Weak);
  return collection;
}

- (BOOL)retainAllWithJavaUtilCollection:(id)collection
{
  Weak = objc_loadWeak(&self->this$0_);
  objc_sync_enter(Weak);
  v7.receiver = self;
  v7.super_class = JavaUtilHashtable_EntrySet;
  LOBYTE(collection) = [(JavaUtilAbstractCollection *)&v7 retainAllWithJavaUtilCollection:collection];
  objc_sync_exit(Weak);
  return collection;
}

- (BOOL)containsAllWithJavaUtilCollection:(id)collection
{
  Weak = objc_loadWeak(&self->this$0_);
  objc_sync_enter(Weak);
  v7.receiver = self;
  v7.super_class = JavaUtilHashtable_EntrySet;
  LOBYTE(collection) = [(JavaUtilAbstractCollection *)&v7 containsAllWithJavaUtilCollection:collection];
  objc_sync_exit(Weak);
  return collection;
}

- (BOOL)isEqual:(id)equal
{
  Weak = objc_loadWeak(&self->this$0_);
  objc_sync_enter(Weak);
  v7.receiver = self;
  v7.super_class = JavaUtilHashtable_EntrySet;
  LOBYTE(equal) = [(JavaUtilAbstractSet *)&v7 isEqual:equal];
  objc_sync_exit(Weak);
  return equal;
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
  toArray = [(JavaUtilAbstractCollection *)&v6 toArray];
  objc_sync_exit(Weak);
  return toArray;
}

- (id)toArrayWithNSObjectArray:(id)array
{
  Weak = objc_loadWeak(&self->this$0_);
  objc_sync_enter(Weak);
  v8.receiver = self;
  v8.super_class = JavaUtilHashtable_EntrySet;
  v6 = [(JavaUtilAbstractCollection *)&v8 toArrayWithNSObjectArray:array];
  objc_sync_exit(Weak);
  return v6;
}

- (JavaUtilHashtable_EntrySet)initWithJavaUtilHashtable:(id)hashtable
{
  objc_storeWeak(&self->this$0_, hashtable);
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