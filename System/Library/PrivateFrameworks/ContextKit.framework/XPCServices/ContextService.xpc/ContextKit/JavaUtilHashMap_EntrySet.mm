@interface JavaUtilHashMap_EntrySet
- (BOOL)containsWithId:(id)id;
- (BOOL)removeWithId:(id)id;
- (JavaUtilHashMap_EntrySet)initWithJavaUtilHashMap:(id)map;
- (id)iterator;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)__javaClone;
- (void)clear;
@end

@implementation JavaUtilHashMap_EntrySet

- (id)iterator
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak newEntryIterator];
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

    LOBYTE(v5) = sub_1001D6EE8(Weak, getKey, getValue);
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

    LOBYTE(v5) = sub_1001D7000(Weak, getKey, getValue);
  }

  return v5;
}

- (void)clear
{
  Weak = objc_loadWeak(&self->this$0_);

  [Weak clear];
}

- (JavaUtilHashMap_EntrySet)initWithJavaUtilHashMap:(id)map
{
  objc_storeWeak(&self->this$0_, map);
  JavaUtilAbstractSet_init(self, v4);
  return self;
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilHashMap_EntrySet;
  [(JavaUtilHashMap_EntrySet *)&v3 __javaClone];
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak enumerateEntriesWithState:state objects:objects count:count];
}

@end