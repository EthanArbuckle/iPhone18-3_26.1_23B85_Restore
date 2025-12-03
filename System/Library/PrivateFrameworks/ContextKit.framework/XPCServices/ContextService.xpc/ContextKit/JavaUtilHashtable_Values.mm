@interface JavaUtilHashtable_Values
- (BOOL)containsAllWithJavaUtilCollection:(id)collection;
- (BOOL)containsWithId:(id)id;
- (JavaUtilHashtable_Values)initWithJavaUtilHashtable:(id)hashtable;
- (id)description;
- (id)iterator;
- (id)toArray;
- (id)toArrayWithNSObjectArray:(id)array;
- (int)size;
- (void)__javaClone;
- (void)clear;
@end

@implementation JavaUtilHashtable_Values

- (id)iterator
{
  Weak = objc_loadWeak(&self->this$0_);
  v3 = [JavaUtilHashtable_ValueIterator alloc];
  sub_1001F87CC(v3, Weak);

  return v3;
}

- (int)size
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak size];
}

- (BOOL)containsWithId:(id)id
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak containsValueWithId:id];
}

- (void)clear
{
  Weak = objc_loadWeak(&self->this$0_);

  [Weak clear];
}

- (BOOL)containsAllWithJavaUtilCollection:(id)collection
{
  Weak = objc_loadWeak(&self->this$0_);
  objc_sync_enter(Weak);
  v7.receiver = self;
  v7.super_class = JavaUtilHashtable_Values;
  LOBYTE(collection) = [(JavaUtilAbstractCollection *)&v7 containsAllWithJavaUtilCollection:collection];
  objc_sync_exit(Weak);
  return collection;
}

- (id)description
{
  Weak = objc_loadWeak(&self->this$0_);
  objc_sync_enter(Weak);
  v6.receiver = self;
  v6.super_class = JavaUtilHashtable_Values;
  v4 = [(JavaUtilAbstractCollection *)&v6 description];
  objc_sync_exit(Weak);
  return v4;
}

- (id)toArray
{
  Weak = objc_loadWeak(&self->this$0_);
  objc_sync_enter(Weak);
  v6.receiver = self;
  v6.super_class = JavaUtilHashtable_Values;
  toArray = [(JavaUtilAbstractCollection *)&v6 toArray];
  objc_sync_exit(Weak);
  return toArray;
}

- (id)toArrayWithNSObjectArray:(id)array
{
  Weak = objc_loadWeak(&self->this$0_);
  objc_sync_enter(Weak);
  v8.receiver = self;
  v8.super_class = JavaUtilHashtable_Values;
  v6 = [(JavaUtilAbstractCollection *)&v8 toArrayWithNSObjectArray:array];
  objc_sync_exit(Weak);
  return v6;
}

- (JavaUtilHashtable_Values)initWithJavaUtilHashtable:(id)hashtable
{
  objc_storeWeak(&self->this$0_, hashtable);
  JavaUtilAbstractCollection_init(self, v4);
  return self;
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilHashtable_Values;
  [(JavaUtilHashtable_Values *)&v3 __javaClone];
}

@end