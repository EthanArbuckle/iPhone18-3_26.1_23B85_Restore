@interface JavaUtilConcurrentConcurrentHashMap_KeySetView
- (BOOL)addAllWithJavaUtilCollection:(id)collection;
- (BOOL)addWithId:(id)id;
- (BOOL)containsWithId:(id)id;
- (BOOL)isEqual:(id)equal;
- (BOOL)removeWithId:(id)id;
- (JavaUtilConcurrentConcurrentHashMap_KeySetView)initWithJavaUtilConcurrentConcurrentHashMap:(id)map withId:(id)id;
- (id)iterator;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaUtilConcurrentConcurrentHashMap_KeySetView

- (JavaUtilConcurrentConcurrentHashMap_KeySetView)initWithJavaUtilConcurrentConcurrentHashMap:(id)map withId:(id)id
{
  objc_storeWeak(&self->super.map_, map);
  JreStrongAssign(&self->value_, id);
  return self;
}

- (BOOL)containsWithId:(id)id
{
  Weak = objc_loadWeak(&self->super.map_);
  if (!Weak)
  {
    JreThrowNullPointerException();
  }

  return [Weak containsKeyWithId:id];
}

- (BOOL)removeWithId:(id)id
{
  Weak = objc_loadWeak(&self->super.map_);
  if (!Weak)
  {
    JreThrowNullPointerException();
  }

  return [Weak removeWithId:id] != 0;
}

- (id)iterator
{
  Weak = objc_loadWeak(&self->super.map_);
  if (!Weak)
  {
    JreThrowNullPointerException();
  }

  v3 = Weak;
  v4 = atomic_load(Weak + 3);
  if (v4)
  {
    v5 = v4[2];
  }

  else
  {
    v5 = 0;
  }

  v6 = [JavaUtilConcurrentConcurrentHashMap_KeyIterator alloc];
  JavaUtilConcurrentConcurrentHashMap_BaseIterator_initWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_withInt_withInt_withJavaUtilConcurrentConcurrentHashMap_(v6, v4, v5, 0, v5, v3);

  return v6;
}

- (BOOL)addWithId:(id)id
{
  value = self->value_;
  if (!value)
  {
    v7 = new_JavaLangUnsupportedOperationException_init();
    objc_exception_throw(v7);
  }

  Weak = objc_loadWeak(&self->super.map_);
  if (!Weak)
  {
    JreThrowNullPointerException();
  }

  return sub_1001AFE00(Weak, id, value, 1) == 0;
}

- (BOOL)addAllWithJavaUtilCollection:(id)collection
{
  value = self->value_;
  if (!value)
  {
    v14 = new_JavaLangUnsupportedOperationException_init();
    objc_exception_throw(v14);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  if (!collection)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  v6 = [collection countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(collection);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        Weak = objc_loadWeak(&self->super.map_);
        if (!Weak)
        {
          goto LABEL_14;
        }

        v8 |= sub_1001AFE00(Weak, v11, value, 1) == 0;
      }

      v7 = [collection countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (unint64_t)hash
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  result = [(JavaUtilConcurrentConcurrentHashMap_KeySetView *)self countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v4 = result;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(self);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if (!v8)
        {
          JreThrowNullPointerException();
        }

        v5 += [v8 hash];
      }

      v4 = [(JavaUtilConcurrentConcurrentHashMap_KeySetView *)self countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
    return v5;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [JavaUtilSet_class_() isInstance:equal];
  if (v5)
  {
    v6 = JavaUtilSet_class_();
    if (equal && ([v6 isInstance:equal] & 1) == 0)
    {
      JreThrowClassCastException();
    }

    if (equal == self)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v5 = sub_1001B6428(self, equal);
      if (v5)
      {
        if (!equal)
        {
          JreThrowNullPointerException();
        }

        LOBYTE(v5) = [equal containsAllWithJavaUtilCollection:self];
      }
    }
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilConcurrentConcurrentHashMap_KeySetView;
  [(JavaUtilConcurrentConcurrentHashMap_KeySetView *)&v3 dealloc];
}

@end