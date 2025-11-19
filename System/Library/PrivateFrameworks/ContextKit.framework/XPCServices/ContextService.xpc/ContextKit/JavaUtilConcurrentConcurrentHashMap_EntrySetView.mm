@interface JavaUtilConcurrentConcurrentHashMap_EntrySetView
- (BOOL)addAllWithJavaUtilCollection:(id)a3;
- (BOOL)addWithId:(id)a3;
- (BOOL)containsWithId:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)removeWithId:(id)a3;
- (id)iterator;
- (unint64_t)hash;
@end

@implementation JavaUtilConcurrentConcurrentHashMap_EntrySetView

- (BOOL)containsWithId:(id)a3
{
  LODWORD(v5) = [JavaUtilMap_Entry_class_() isInstance:a3];
  if (v5)
  {
    v6 = JavaUtilMap_Entry_class_();
    if (a3 && ([v6 isInstance:a3] & 1) == 0)
    {
      JreThrowClassCastException();
    }

    v5 = [a3 getKey];
    if (v5)
    {
      v7 = v5;
      Weak = objc_loadWeak(&self->super.map_);
      if (!Weak)
      {
        goto LABEL_15;
      }

      v5 = [Weak getWithId:v7];
      if (!v5)
      {
        return v5;
      }

      if (!a3)
      {
LABEL_15:
        JreThrowNullPointerException();
      }

      v9 = v5;
      v5 = [a3 getValue];
      if (v5)
      {
        if (v5 == v9)
        {
          LOBYTE(v5) = 1;
        }

        else
        {

          LOBYTE(v5) = [v5 isEqual:v9];
        }
      }
    }
  }

  return v5;
}

- (BOOL)removeWithId:(id)a3
{
  if (![JavaUtilMap_Entry_class_() isInstance:a3])
  {
    return 0;
  }

  v5 = JavaUtilMap_Entry_class_();
  if (!a3)
  {
    if ([0 getKey])
    {
LABEL_13:
      JreThrowNullPointerException();
    }

    return 0;
  }

  if (([v5 isInstance:a3] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v6 = [a3 getKey];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = [a3 getValue];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  Weak = objc_loadWeak(&self->super.map_);
  if (!Weak)
  {
    goto LABEL_13;
  }

  return [Weak removeWithId:v7 withId:v9];
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

  v6 = [JavaUtilConcurrentConcurrentHashMap_EntryIterator alloc];
  JavaUtilConcurrentConcurrentHashMap_BaseIterator_initWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_withInt_withInt_withJavaUtilConcurrentConcurrentHashMap_(v6, v4, v5, 0, v5, v3);

  return v6;
}

- (BOOL)addWithId:(id)a3
{
  Weak = objc_loadWeak(&self->super.map_);
  if (!Weak || !a3)
  {
    JreThrowNullPointerException();
  }

  return sub_1001AFE00(Weak, [a3 getKey], objc_msgSend(a3, "getValue"), 0) == 0;
}

- (BOOL)addAllWithJavaUtilCollection:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v7 |= [(JavaUtilConcurrentConcurrentHashMap_EntrySetView *)self addWithId:*(*(&v11 + 1) + 8 * i), v11];
      }

      v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

- (unint64_t)hash
{
  Weak = objc_loadWeak(&self->super.map_);
  if (!Weak)
  {
    JreThrowNullPointerException();
  }

  result = atomic_load(Weak + 3);
  if (result)
  {
    v4 = new_JavaUtilConcurrentConcurrentHashMap_Traverser_initWithJavaUtilConcurrentConcurrentHashMap_NodeArray_withInt_withInt_withInt_(result, *(result + 8), 0, *(result + 8));
    result = [JavaUtilConcurrentConcurrentHashMap_Traverser advance]_0(v4);
    if (result)
    {
      v5 = 0;
      do
      {
        v5 += [result hash];
        result = [JavaUtilConcurrentConcurrentHashMap_Traverser advance]_0(v4);
      }

      while (result);
      return v5;
    }
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

@end