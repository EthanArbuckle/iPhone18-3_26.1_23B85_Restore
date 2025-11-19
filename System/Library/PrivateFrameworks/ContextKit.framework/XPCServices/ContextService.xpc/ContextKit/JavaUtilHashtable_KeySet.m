@interface JavaUtilHashtable_KeySet
- (BOOL)containsAllWithJavaUtilCollection:(id)a3;
- (BOOL)containsWithId:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)removeAllWithJavaUtilCollection:(id)a3;
- (BOOL)removeWithId:(id)a3;
- (BOOL)retainAllWithJavaUtilCollection:(id)a3;
- (JavaUtilHashtable_KeySet)initWithJavaUtilHashtable:(id)a3;
- (id)description;
- (id)iterator;
- (id)toArray;
- (id)toArrayWithNSObjectArray:(id)a3;
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

- (BOOL)containsWithId:(id)a3
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak containsKeyWithId:a3];
}

- (BOOL)removeWithId:(id)a3
{
  v4 = self;
  Weak = objc_loadWeak(&self->this$0_);
  objc_sync_enter(Weak);
  v6 = *(objc_loadWeak(&v4->this$0_) + 4);
  [objc_loadWeak(&v4->this$0_) removeWithId:a3];
  LOBYTE(v4) = *(objc_loadWeak(&v4->this$0_) + 4) != v6;
  objc_sync_exit(Weak);
  return v4;
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
  v7.super_class = JavaUtilHashtable_KeySet;
  LOBYTE(a3) = [(JavaUtilAbstractSet *)&v7 removeAllWithJavaUtilCollection:a3];
  objc_sync_exit(Weak);
  return a3;
}

- (BOOL)retainAllWithJavaUtilCollection:(id)a3
{
  Weak = objc_loadWeak(&self->this$0_);
  objc_sync_enter(Weak);
  v7.receiver = self;
  v7.super_class = JavaUtilHashtable_KeySet;
  LOBYTE(a3) = [(JavaUtilAbstractCollection *)&v7 retainAllWithJavaUtilCollection:a3];
  objc_sync_exit(Weak);
  return a3;
}

- (BOOL)containsAllWithJavaUtilCollection:(id)a3
{
  Weak = objc_loadWeak(&self->this$0_);
  objc_sync_enter(Weak);
  v7.receiver = self;
  v7.super_class = JavaUtilHashtable_KeySet;
  LOBYTE(a3) = [(JavaUtilAbstractCollection *)&v7 containsAllWithJavaUtilCollection:a3];
  objc_sync_exit(Weak);
  return a3;
}

- (BOOL)isEqual:(id)a3
{
  Weak = objc_loadWeak(&self->this$0_);
  objc_sync_enter(Weak);
  v7.receiver = self;
  v7.super_class = JavaUtilHashtable_KeySet;
  LOBYTE(a3) = [(JavaUtilAbstractSet *)&v7 isEqual:a3];
  objc_sync_exit(Weak);
  return a3;
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
  v4 = [(JavaUtilAbstractCollection *)&v6 toArray];
  objc_sync_exit(Weak);
  return v4;
}

- (id)toArrayWithNSObjectArray:(id)a3
{
  Weak = objc_loadWeak(&self->this$0_);
  objc_sync_enter(Weak);
  v8.receiver = self;
  v8.super_class = JavaUtilHashtable_KeySet;
  v6 = [(JavaUtilAbstractCollection *)&v8 toArrayWithNSObjectArray:a3];
  objc_sync_exit(Weak);
  return v6;
}

- (JavaUtilHashtable_KeySet)initWithJavaUtilHashtable:(id)a3
{
  objc_storeWeak(&self->this$0_, a3);
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