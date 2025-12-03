@interface JavaUtilHashMap_Values
- (BOOL)containsWithId:(id)id;
- (JavaUtilHashMap_Values)initWithJavaUtilHashMap:(id)map;
- (id)iterator;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)__javaClone;
- (void)clear;
@end

@implementation JavaUtilHashMap_Values

- (id)iterator
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak newValueIterator];
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

- (JavaUtilHashMap_Values)initWithJavaUtilHashMap:(id)map
{
  objc_storeWeak(&self->this$0_, map);
  JavaUtilAbstractCollection_init(self, v4);
  return self;
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilHashMap_Values;
  [(JavaUtilHashMap_Values *)&v3 __javaClone];
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  result = [objc_loadWeak(&self->this$0_) enumerateEntriesWithState:state objects:objects count:count];
  var1 = state->var1;
  v8 = &var1[result];
  while (var1 < v8)
  {
    *var1 = *(*var1 + 2);
    ++var1;
  }

  return result;
}

@end