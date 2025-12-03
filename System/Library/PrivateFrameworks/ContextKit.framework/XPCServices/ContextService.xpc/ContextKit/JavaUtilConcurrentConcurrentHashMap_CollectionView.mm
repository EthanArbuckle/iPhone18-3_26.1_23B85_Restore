@interface JavaUtilConcurrentConcurrentHashMap_CollectionView
- (BOOL)isEmpty;
- (BOOL)removeAllWithJavaUtilCollection:(id)collection;
- (BOOL)retainAllWithJavaUtilCollection:(id)collection;
- (NSString)description;
- (id)toArray;
- (id)toArrayWithNSObjectArray:(id)array;
- (int)size;
- (void)__javaClone;
- (void)clear;
@end

@implementation JavaUtilConcurrentConcurrentHashMap_CollectionView

- (void)clear
{
  Weak = objc_loadWeak(&self->map_);
  if (!Weak)
  {
    JreThrowNullPointerException();
  }

  [Weak clear];
}

- (int)size
{
  Weak = objc_loadWeak(&self->map_);
  if (!Weak)
  {
    JreThrowNullPointerException();
  }

  return [Weak size];
}

- (BOOL)isEmpty
{
  Weak = objc_loadWeak(&self->map_);
  if (!Weak)
  {
    JreThrowNullPointerException();
  }

  return [Weak isEmpty];
}

- (id)toArray
{
  Weak = objc_loadWeak(&self->map_);
  if (!Weak)
  {
LABEL_22:
    JreThrowNullPointerException();
  }

  mappingCount = [Weak mappingCount];
  if (mappingCount >= 2147483640)
  {
LABEL_23:
    v15 = new_JavaLangOutOfMemoryError_initWithNSString_(off_100550518);
    objc_exception_throw(v15);
  }

  v5 = mappingCount;
  v6 = [IOSObjectArray arrayWithLength:mappingCount type:NSObject_class_()];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [(JavaUtilConcurrentConcurrentHashMap_CollectionView *)self countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v17;
    do
    {
      v11 = 0;
      v12 = v9;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(self);
        }

        v13 = *(*(&v16 + 1) + 8 * v11);
        if (v12 == v5)
        {
          if (v5 > 2147483638)
          {
            goto LABEL_23;
          }

          if (v5 >= 1073741819)
          {
            v5 = 2147483639;
          }

          else
          {
            v5 += (v5 >> 1) + 1;
          }

          v6 = JavaUtilArrays_copyOfWithNSObjectArray_withInt_(v6, v5);
        }

        if (!v6)
        {
          goto LABEL_22;
        }

        v9 = v12 + 1;
        IOSObjectArray_Set(v6, v12, v13);
        ++v11;
        ++v12;
      }

      while (v8 != v11);
      v8 = [(JavaUtilConcurrentConcurrentHashMap_CollectionView *)self countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  if (v9 != v5)
  {
    return JavaUtilArrays_copyOfWithNSObjectArray_withInt_(v6, v9);
  }

  return v6;
}

- (id)toArrayWithNSObjectArray:(id)array
{
  Weak = objc_loadWeak(&self->map_);
  if (!Weak)
  {
    goto LABEL_29;
  }

  mappingCount = [Weak mappingCount];
  if (mappingCount >= 2147483640)
  {
LABEL_31:
    v18 = new_JavaLangOutOfMemoryError_initWithNSString_(off_100550518);
    objc_exception_throw(v18);
  }

  if (!array)
  {
LABEL_29:
    JreThrowNullPointerException();
  }

  v7 = *(array + 2);
  arrayCopy = array;
  if (v7 < mappingCount)
  {
    arrayCopy = JavaLangReflectArray_newInstanceWithIOSClass_withInt_([objc_msgSend(array "getClass")], mappingCount);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    v7 = arrayCopy[2];
  }

  arrayCopy2 = array;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [(JavaUtilConcurrentConcurrentHashMap_CollectionView *)self countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v21;
    do
    {
      v13 = 0;
      v14 = v11;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(self);
        }

        v15 = *(*(&v20 + 1) + 8 * v13);
        if (v14 == v7)
        {
          if (v7 > 2147483638)
          {
            goto LABEL_31;
          }

          if (v7 >= 1073741819)
          {
            v7 = 2147483639;
          }

          else
          {
            v7 += (v7 >> 1) + 1;
          }

          v16 = JavaUtilArrays_copyOfWithNSObjectArray_withInt_(arrayCopy, v7);
          if (!v16)
          {
            goto LABEL_29;
          }

          arrayCopy = v16;
        }

        v11 = v14 + 1;
        IOSObjectArray_Set(arrayCopy, v14, v15);
        ++v13;
        ++v14;
      }

      while (v10 != v13);
      v10 = [(JavaUtilConcurrentConcurrentHashMap_CollectionView *)self countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  if (arrayCopy == arrayCopy2 && v11 < v7)
  {
    IOSObjectArray_Set(arrayCopy, v11, 0);
  }

  else if (v11 != v7)
  {
    return JavaUtilArrays_copyOfWithNSObjectArray_withInt_(arrayCopy, v11);
  }

  return arrayCopy;
}

- (NSString)description
{
  v3 = new_JavaLangStringBuilder_init();
  [(JavaLangStringBuilder *)v3 appendWithChar:91];
  iterator = [(JavaUtilConcurrentConcurrentHashMap_CollectionView *)self iterator];
  if (!iterator)
  {
    goto LABEL_16;
  }

  v5 = iterator;
  if ([iterator hasNext])
  {
    next = [v5 next];
    v7 = next == self ? @"(this Collection)" : next;
    [(JavaLangStringBuilder *)v3 appendWithId:v7];
    if ([v5 hasNext])
    {
      while (1)
      {
        v8 = [(JavaLangStringBuilder *)v3 appendWithChar:44];
        if (!v8)
        {
          break;
        }

        [v8 appendWithChar:32];
        next2 = [v5 next];
        if (next2 == self)
        {
          v10 = @"(this Collection)";
        }

        else
        {
          v10 = next2;
        }

        [(JavaLangStringBuilder *)v3 appendWithId:v10];
        if (([v5 hasNext] & 1) == 0)
        {
          goto LABEL_12;
        }
      }

LABEL_16:
      JreThrowNullPointerException();
    }
  }

LABEL_12:
  v11 = [(JavaLangStringBuilder *)v3 appendWithChar:93];
  if (!v11)
  {
    goto LABEL_16;
  }

  return [v11 description];
}

- (BOOL)removeAllWithJavaUtilCollection:(id)collection
{
  iterator = [(JavaUtilConcurrentConcurrentHashMap_CollectionView *)self iterator];
  if (!iterator)
  {
    goto LABEL_8;
  }

  v5 = iterator;
  v6 = 0;
  if ([iterator hasNext])
  {
    while (collection)
    {
      if ([collection containsWithId:{objc_msgSend(v5, "next")}])
      {
        [v5 remove];
        v6 = 1;
      }

      if (([v5 hasNext] & 1) == 0)
      {
        return v6;
      }
    }

LABEL_8:
    JreThrowNullPointerException();
  }

  return v6;
}

- (BOOL)retainAllWithJavaUtilCollection:(id)collection
{
  iterator = [(JavaUtilConcurrentConcurrentHashMap_CollectionView *)self iterator];
  if (!iterator)
  {
    goto LABEL_8;
  }

  v5 = iterator;
  v6 = 0;
  if ([iterator hasNext])
  {
    while (collection)
    {
      if (([collection containsWithId:{objc_msgSend(v5, "next")}] & 1) == 0)
      {
        [v5 remove];
        v6 = 1;
      }

      if (([v5 hasNext] & 1) == 0)
      {
        return v6;
      }
    }

LABEL_8:
    JreThrowNullPointerException();
  }

  return v6;
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilConcurrentConcurrentHashMap_CollectionView;
  [(JavaUtilConcurrentConcurrentHashMap_CollectionView *)&v3 __javaClone];
}

@end