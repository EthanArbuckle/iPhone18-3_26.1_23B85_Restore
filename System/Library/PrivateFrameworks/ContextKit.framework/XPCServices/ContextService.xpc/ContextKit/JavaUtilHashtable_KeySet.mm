@interface JavaUtilHashtable_KeySet
- (BOOL)containsAllWithJavaUtilCollection:(id)collection;
- (BOOL)containsWithId:(id)id;
- (BOOL)isEqual:(id)equal;
- (BOOL)removeAllWithJavaUtilCollection:(id)collection;
- (BOOL)removeWithId:(id)id;
- (BOOL)retainAllWithJavaUtilCollection:(id)collection;
- (JavaUtilHashtable_KeySet)initWithJavaUtilHashtable:(id)hashtable;
- (id)description;
- (id)iterator;
- (id)toArray;
- (id)toArrayWithNSObjectArray:(id)array;
- (int)size;
- (unint64_t)hash;
- (void)__javaClone;
- (void)clear;
@end

@implementation JavaUtilHashtable_KeySet

- (id)iterator
{
  Weak = objc_loadWeak(&self->this$0_);
  v3 = [JavaUtilHashtable_KeyIterator alloc];
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

  return [Weak containsKeyWithId:id];
}

- (BOOL)removeWithId:(id)id
{
  selfCopy = self;
  Weak = objc_loadWeak(&self->this$0_);
  objc_sync_enter(Weak);
  v6 = *(objc_loadWeak(&selfCopy->this$0_) + 4);
  [objc_loadWeak(&selfCopy->this$0_) removeWithId:id];
  LOBYTE(selfCopy) = *(objc_loadWeak(&selfCopy->this$0_) + 4) != v6;
  objc_sync_exit(Weak);
  return selfCopy;
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
  v7.super_class = JavaUtilHashtable_KeySet;
  LOBYTE(collection) = [(JavaUtilAbstractSet *)&v7 removeAllWithJavaUtilCollection:collection];
  objc_sync_exit(Weak);
  return collection;
}

- (BOOL)retainAllWithJavaUtilCollection:(id)collection
{
  Weak = objc_loadWeak(&self->this$0_);
  objc_sync_enter(Weak);
  v7.receiver = self;
  v7.super_class = JavaUtilHashtable_KeySet;
  LOBYTE(collection) = [(JavaUtilAbstractCollection *)&v7 retainAllWithJavaUtilCollection:collection];
  objc_sync_exit(Weak);
  return collection;
}

- (BOOL)containsAllWithJavaUtilCollection:(id)collection
{
  Weak = objc_loadWeak(&self->this$0_);
  objc_sync_enter(Weak);
  v7.receiver = self;
  v7.super_class = JavaUtilHashtable_KeySet;
  LOBYTE(collection) = [(JavaUtilAbstractCollection *)&v7 containsAllWithJavaUtilCollection:collection];
  objc_sync_exit(Weak);
  return collection;
}

- (BOOL)isEqual:(id)equal
{
  Weak = objc_loadWeak(&self->this$0_);
  objc_sync_enter(Weak);
  v7.receiver = self;
  v7.super_class = JavaUtilHashtable_KeySet;
  LOBYTE(equal) = [(JavaUtilAbstractSet *)&v7 isEqual:equal];
  objc_sync_exit(Weak);
  return equal;
}

- (unint64_t)hash
{
  Weak = objc_loadWeak(&self->this$0_);
  objc_sync_enter(Weak);
  v6.receiver = self;
  v6.super_class = JavaUtilHashtable_KeySet;
  v4 = [(JavaUtilAbstractSet *)&v6 hash];
  objc_sync_exit(Weak);
  return v4;
}

- (id)description
{
  Weak = objc_loadWeak(&self->this$0_);
  objc_sync_enter(Weak);
  v6.receiver = self;
  v6.super_class = JavaUtilHashtable_KeySet;
  v4 = [(JavaUtilAbstractCollection *)&v6 description];
  objc_sync_exit(Weak);
  return v4;
}

- (id)toArray
{
  Weak = objc_loadWeak(&self->this$0_);
  objc_sync_enter(Weak);
  v6.receiver = self;
  v6.super_class = JavaUtilHashtable_KeySet;
  toArray = [(JavaUtilAbstractCollection *)&v6 toArray];
  objc_sync_exit(Weak);
  return toArray;
}

- (id)toArrayWithNSObjectArray:(id)array
{
  Weak = objc_loadWeak(&self->this$0_);
  objc_sync_enter(Weak);
  v8.receiver = self;
  v8.super_class = JavaUtilHashtable_KeySet;
  v6 = [(JavaUtilAbstractCollection *)&v8 toArrayWithNSObjectArray:array];
  objc_sync_exit(Weak);
  return v6;
}

- (JavaUtilHashtable_KeySet)initWithJavaUtilHashtable:(id)hashtable
{
  objc_storeWeak(&self->this$0_, hashtable);
  JavaUtilAbstractSet_init(self, v4);
  return self;
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilHashtable_KeySet;
  [(JavaUtilHashtable_KeySet *)&v3 __javaClone];
}

@end