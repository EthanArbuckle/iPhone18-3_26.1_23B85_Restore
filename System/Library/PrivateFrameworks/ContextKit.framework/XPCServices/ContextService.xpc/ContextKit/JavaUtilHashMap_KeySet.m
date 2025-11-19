@interface JavaUtilHashMap_KeySet
- (BOOL)containsWithId:(id)a3;
- (BOOL)removeWithId:(id)a3;
- (JavaUtilHashMap_KeySet)initWithJavaUtilHashMap:(id)a3;
- (id)iterator;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)__javaClone;
- (void)clear;
@end

@implementation JavaUtilHashMap_KeySet

- (id)iterator
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak newKeyIterator];
}

- (BOOL)containsWithId:(id)a3
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak containsKeyWithId:a3];
}

- (BOOL)removeWithId:(id)a3
{
  v5 = *(objc_loadWeak(&self->this$0_) + 10);
  [objc_loadWeak(&self->this$0_) removeWithId:a3];
  return *(objc_loadWeak(&self->this$0_) + 10) != v5;
}

- (void)clear
{
  Weak = objc_loadWeak(&self->this$0_);

  [Weak clear];
}

- (JavaUtilHashMap_KeySet)initWithJavaUtilHashMap:(id)a3
{
  objc_storeWeak(&self->this$0_, a3);
  JavaUtilAbstractSet_init(self, v4);
  return self;
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilHashMap_KeySet;
  [(JavaUtilHashMap_KeySet *)&v3 __javaClone];
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  result = [objc_loadWeak(&self->this$0_) enumerateEntriesWithState:a3 objects:a4 count:a5];
  var1 = a3->var1;
  v8 = &var1[result];
  while (var1 < v8)
  {
    *var1 = *(*var1 + 1);
    ++var1;
  }

  return result;
}

@end