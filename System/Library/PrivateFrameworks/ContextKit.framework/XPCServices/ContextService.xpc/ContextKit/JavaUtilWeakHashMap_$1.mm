@interface JavaUtilWeakHashMap_$1
- (BOOL)containsWithId:(id)id;
- (BOOL)removeWithId:(id)id;
- (JavaUtilWeakHashMap_$1)initWithJavaUtilWeakHashMap:(id)map;
- (id)iterator;
- (void)dealloc;
@end

@implementation JavaUtilWeakHashMap_$1

- (BOOL)removeWithId:(id)id
{
  v5 = [(JavaUtilWeakHashMap_$1 *)self containsWithId:?];
  if (v5)
  {
    v6 = self->this$0_;
    v7 = JavaUtilMap_Entry_class_();
    if (!id)
    {
      JreThrowNullPointerException();
    }

    if (([v7 isInstance:id] & 1) == 0)
    {
      JreThrowClassCastException();
    }

    -[JavaUtilWeakHashMap removeWithId:](v6, "removeWithId:", [id getKey]);
  }

  return v5;
}

- (BOOL)containsWithId:(id)id
{
  if (![JavaUtilMap_Entry_class_() isInstance:id])
  {
    return 0;
  }

  v5 = self->this$0_;
  v6 = JavaUtilMap_Entry_class_();
  if (!id)
  {
    JreThrowNullPointerException();
  }

  if (([v6 isInstance:id] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v7 = -[JavaUtilWeakHashMap getEntryWithId:](v5, "getEntryWithId:", [id getKey]);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if (![v7 get] && v8[44] != 1)
  {
    return 0;
  }

  return [id isEqual:v8];
}

- (id)iterator
{
  v2 = new_JavaUtilWeakHashMap_HashIterator_initWithJavaUtilWeakHashMap_withJavaUtilWeakHashMap_Entry_Type_(self->this$0_, [JavaUtilWeakHashMap__1__1 alloc]);

  return v2;
}

- (JavaUtilWeakHashMap_$1)initWithJavaUtilWeakHashMap:(id)map
{
  JreStrongAssign(&self->this$0_, map);
  JavaUtilAbstractSet_init(self, v4);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilWeakHashMap__1;
  [(JavaUtilWeakHashMap_$1 *)&v3 dealloc];
}

@end