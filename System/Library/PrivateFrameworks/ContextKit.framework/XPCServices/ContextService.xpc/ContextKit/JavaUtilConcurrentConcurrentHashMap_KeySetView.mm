@interface JavaUtilConcurrentConcurrentHashMap_KeySetView
- (BOOL)addAllWithJavaUtilCollection:(id)a3;
- (BOOL)addWithId:(id)a3;
- (BOOL)containsWithId:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)removeWithId:(id)a3;
- (JavaUtilConcurrentConcurrentHashMap_KeySetView)initWithJavaUtilConcurrentConcurrentHashMap:(id)a3 withId:(id)a4;
- (id)iterator;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaUtilConcurrentConcurrentHashMap_KeySetView

- (JavaUtilConcurrentConcurrentHashMap_KeySetView)initWithJavaUtilConcurrentConcurrentHashMap:(id)a3 withId:(id)a4
{
  objc_storeWeak(&self->super.map_, a3);
  JreStrongAssign(&self->value_, a4);
  return self;
}

- (BOOL)containsWithId:(id)a3
{
  Weak = objc_loadWeak(&self->super.map_);
  if (!Weak)
  {
    JreThrowNullPointerException();
  }

  return [Weak containsKeyWithId:a3];
}

- (BOOL)removeWithId:(id)a3
{
  Weak = objc_loadWeak(&self->super.map_);
  if (!Weak)
  {
    JreThrowNullPointerException();
  }

  return [Weak removeWithId:a3] != 0;
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

- (BOOL)addWithId:(id)a3
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

  return sub_1001AFE00(Weak, a3, value, 1) == 0;
}

- (BOOL)addAllWithJavaUtilCollection:(id)a3
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
  if (!a3)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  v6 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(a3);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        Weak = objc_loadWeak(&self->super.map_);
        if (!Weak)
        {
          goto LABEL_14;
        }

        v8 |= sub_1001AFE00(Weak, v11, value, 1) == 0;
      }

      v7 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (BOOL)isEqual:(id)a3
{
  v5 = [JavaUtilSet_class_() isInstance:a3];
  if (v5)
  {
    v6 = JavaUtilSet_class_();
    if (a3 && ([v6 isInstance:a3] & 1) == 0)
    {
      JreThrowClassCastException();
    }

    if (a3 == self)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v5 = sub_1001B6428(self, a3);
      if (v5)
      {
        if (!a3)
        {
          JreThrowNullPointerException();
        }

        LOBYTE(v5) = [a3 containsAllWithJavaUtilCollection:self];
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