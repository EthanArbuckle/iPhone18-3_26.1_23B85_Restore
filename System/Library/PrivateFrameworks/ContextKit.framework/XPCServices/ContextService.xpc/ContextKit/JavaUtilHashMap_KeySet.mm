@interface JavaUtilHashMap_KeySet
- (BOOL)containsWithId:(id)id;
- (BOOL)removeWithId:(id)id;
- (JavaUtilHashMap_KeySet)initWithJavaUtilHashMap:(id)map;
- (id)iterator;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)__javaClone;
- (void)clear;
@end

@implementation JavaUtilHashMap_KeySet

- (id)iterator
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak newKeyIterator];
}

- (BOOL)containsWithId:(id)id
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak containsKeyWithId:id];
}

- (BOOL)removeWithId:(id)id
{
  v5 = *(objc_loadWeak(&self->this$0_) + 10);
  [objc_loadWeak(&self->this$0_) removeWithId:id];
  return *(objc_loadWeak(&self->this$0_) + 10) != v5;
}

- (void)clear
{
  Weak = objc_loadWeak(&self->this$0_);

  [Weak clear];
}

- (JavaUtilHashMap_KeySet)initWithJavaUtilHashMap:(id)map
{
  objc_storeWeak(&self->this$0_, map);
  JavaUtilAbstractSet_init(self, v4);
  return self;
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilHashMap_KeySet;
  [(JavaUtilHashMap_KeySet *)&v3 __javaClone];
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  result = [objc_loadWeak(&self->this$0_) enumerateEntriesWithState:state objects:objects count:count];
  var1 = state->var1;
  v8 = &var1[result];
  while (var1 < v8)
  {
    *var1 = *(*var1 + 1);
    ++var1;
  }

  return result;
}

@end