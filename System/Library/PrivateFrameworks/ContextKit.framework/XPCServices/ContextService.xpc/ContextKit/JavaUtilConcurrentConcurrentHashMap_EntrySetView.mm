@interface JavaUtilConcurrentConcurrentHashMap_EntrySetView
- (BOOL)addAllWithJavaUtilCollection:(id)collection;
- (BOOL)addWithId:(id)id;
- (BOOL)containsWithId:(id)id;
- (BOOL)isEqual:(id)equal;
- (BOOL)removeWithId:(id)id;
- (id)iterator;
- (unint64_t)hash;
@end

@implementation JavaUtilConcurrentConcurrentHashMap_EntrySetView

- (BOOL)containsWithId:(id)id
{
  LODWORD(getKey) = [JavaUtilMap_Entry_class_() isInstance:id];
  if (getKey)
  {
    v6 = JavaUtilMap_Entry_class_();
    if (id && ([v6 isInstance:id] & 1) == 0)
    {
      JreThrowClassCastException();
    }

    getKey = [id getKey];
    if (getKey)
    {
      v7 = getKey;
      Weak = objc_loadWeak(&self->super.map_);
      if (!Weak)
      {
        goto LABEL_15;
      }

      getKey = [Weak getWithId:v7];
      if (!getKey)
      {
        return getKey;
      }

      if (!id)
      {
LABEL_15:
        JreThrowNullPointerException();
      }

      v9 = getKey;
      getKey = [id getValue];
      if (getKey)
      {
        if (getKey == v9)
        {
          LOBYTE(getKey) = 1;
        }

        else
        {

          LOBYTE(getKey) = [getKey isEqual:v9];
        }
      }
    }
  }

  return getKey;
}

- (BOOL)removeWithId:(id)id
{
  if (![JavaUtilMap_Entry_class_() isInstance:id])
  {
    return 0;
  }

  v5 = JavaUtilMap_Entry_class_();
  if (!id)
  {
    if ([0 getKey])
    {
LABEL_13:
      JreThrowNullPointerException();
    }

    return 0;
  }

  if (([v5 isInstance:id] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  getKey = [id getKey];
  if (!getKey)
  {
    return 0;
  }

  v7 = getKey;
  getValue = [id getValue];
  if (!getValue)
  {
    return 0;
  }

  v9 = getValue;
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

- (BOOL)addWithId:(id)id
{
  Weak = objc_loadWeak(&self->super.map_);
  if (!Weak || !id)
  {
    JreThrowNullPointerException();
  }

  return sub_1001AFE00(Weak, [id getKey], objc_msgSend(id, "getValue"), 0) == 0;
}

- (BOOL)addAllWithJavaUtilCollection:(id)collection
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  if (!collection)
  {
    JreThrowNullPointerException();
  }

  v5 = [collection countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(collection);
        }

        v7 |= [(JavaUtilConcurrentConcurrentHashMap_EntrySetView *)self addWithId:*(*(&v11 + 1) + 8 * i), v11];
      }

      v6 = [collection countByEnumeratingWithState:&v11 objects:v15 count:16];
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

@end