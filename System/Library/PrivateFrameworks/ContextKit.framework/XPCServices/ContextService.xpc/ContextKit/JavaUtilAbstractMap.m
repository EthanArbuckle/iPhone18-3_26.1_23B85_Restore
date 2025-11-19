@interface JavaUtilAbstractMap
- (BOOL)containsKeyWithId:(id)a3;
- (BOOL)containsValueWithId:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)clone;
- (id)getWithId:(id)a3;
- (id)keySet;
- (id)removeWithId:(id)a3;
- (id)values;
- (int)size;
- (unint64_t)hash;
- (void)clear;
- (void)dealloc;
- (void)putAllWithJavaUtilMap:(id)a3;
@end

@implementation JavaUtilAbstractMap

- (void)clear
{
  v2 = [(JavaUtilAbstractMap *)self entrySet];
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  [v2 clear];
}

- (BOOL)containsKeyWithId:(id)a3
{
  v4 = [(JavaUtilAbstractMap *)self entrySet];
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = [v4 iterator];
  v6 = v5;
  if (a3)
  {
    if (v5)
    {
      do
      {
        v7 = [v6 hasNext];
        if ((v7 & 1) == 0)
        {
          break;
        }

        v8 = [v6 next];
        if (!v8)
        {
          goto LABEL_13;
        }
      }

      while (([a3 isEqual:{objc_msgSend(v8, "getKey")}] & 1) == 0);
      return v7;
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  do
  {
    v7 = [v6 hasNext];
    if ((v7 & 1) == 0)
    {
      break;
    }

    v9 = [v6 next];
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  while ([v9 getKey]);
  return v7;
}

- (BOOL)containsValueWithId:(id)a3
{
  v4 = [(JavaUtilAbstractMap *)self entrySet];
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = [v4 iterator];
  v6 = v5;
  if (a3)
  {
    if (v5)
    {
      do
      {
        v7 = [v6 hasNext];
        if ((v7 & 1) == 0)
        {
          break;
        }

        v8 = [v6 next];
        if (!v8)
        {
          goto LABEL_13;
        }
      }

      while (([a3 isEqual:{objc_msgSend(v8, "getValue")}] & 1) == 0);
      return v7;
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  do
  {
    v7 = [v6 hasNext];
    if ((v7 & 1) == 0)
    {
      break;
    }

    v9 = [v6 next];
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  while ([v9 getValue]);
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    goto LABEL_21;
  }

  v5 = [JavaUtilMap_class_() isInstance:a3];
  if (!v5)
  {
    return v5;
  }

  v6 = JavaUtilMap_class_();
  if (!a3)
  {
    [(JavaUtilAbstractMap *)self size];
    JreThrowNullPointerException();
  }

  if (([v6 isInstance:a3] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v7 = [(JavaUtilAbstractMap *)self size];
  if (v7 != [a3 size])
  {
LABEL_26:
    LOBYTE(v5) = 0;
    return v5;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [(JavaUtilAbstractMap *)self entrySet];
  v9 = v8;
  if (!v8)
  {
    JreThrowNullPointerException();
  }

  v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v10)
  {
LABEL_21:
    LOBYTE(v5) = 1;
    return v5;
  }

  v11 = *v19;
  do
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v19 != v11)
      {
        objc_enumerationMutation(v9);
      }

      v13 = *(*(&v18 + 1) + 8 * i);
      if (!v13)
      {
        JreThrowNullPointerException();
      }

      v14 = [*(*(&v18 + 1) + 8 * i) getKey];
      v15 = [v13 getValue];
      v16 = [a3 getWithId:v14];
      if (v15)
      {
        v5 = [v15 isEqual:v16];
        if (!v5)
        {
          return v5;
        }
      }

      else if (v16 || ([a3 containsKeyWithId:v14] & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    LOBYTE(v5) = 1;
  }

  while (v10);
  return v5;
}

- (id)getWithId:(id)a3
{
  v4 = [(JavaUtilAbstractMap *)self entrySet];
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = [v4 iterator];
  v6 = v5;
  if (a3)
  {
    if (v5)
    {
      while (([v6 hasNext] & 1) != 0)
      {
        v7 = [v6 next];
        if (!v7)
        {
          goto LABEL_16;
        }

        v8 = v7;
        if ([a3 isEqual:{objc_msgSend(v7, "getKey")}])
        {
          goto LABEL_12;
        }
      }

      return 0;
    }

LABEL_16:
    JreThrowNullPointerException();
  }

  if (!v5)
  {
    goto LABEL_16;
  }

  while (([v6 hasNext] & 1) != 0)
  {
    v9 = [v6 next];
    if (!v9)
    {
      goto LABEL_16;
    }

    v8 = v9;
    if (![v9 getKey])
    {
LABEL_12:

      return [v8 getValue];
    }
  }

  return 0;
}

- (unint64_t)hash
{
  v2 = [(JavaUtilAbstractMap *)self entrySet];
  if (!v2 || (v3 = [v2 iterator]) == 0)
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  v4 = v3;
  if (![v3 hasNext])
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = [v4 next];
    if (!v6)
    {
      goto LABEL_9;
    }

    v5 += [v6 hash];
  }

  while (([v4 hasNext] & 1) != 0);
  return v5;
}

- (id)keySet
{
  p_keySet = &self->keySet_;
  result = self->keySet_;
  if (!result)
  {
    v5 = [JavaUtilAbstractMap_1AbstractMapKeySet alloc];
    objc_storeWeak(&v5->this$0_, self);
    JavaUtilAbstractSet_init(v5, v6);
    JreStrongAssignAndConsume(p_keySet, v5);
    return self->keySet_;
  }

  return result;
}

- (void)putAllWithJavaUtilMap:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  if (!a3 || (v4 = [a3 entrySet]) == 0)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v5 = v4;
  v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if (!v10)
        {
          goto LABEL_12;
        }

        -[JavaUtilAbstractMap putWithId:withId:](self, "putWithId:withId:", [*(*(&v11 + 1) + 8 * i) getKey], objc_msgSend(v10, "getValue"));
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)removeWithId:(id)a3
{
  v4 = [(JavaUtilAbstractMap *)self entrySet];
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = [v4 iterator];
  v6 = v5;
  if (a3)
  {
    if (v5)
    {
      while (([v6 hasNext] & 1) != 0)
      {
        v7 = [v6 next];
        if (!v7)
        {
          goto LABEL_16;
        }

        v8 = v7;
        if ([a3 isEqual:{objc_msgSend(v7, "getKey")}])
        {
          goto LABEL_12;
        }
      }

      return 0;
    }

LABEL_16:
    JreThrowNullPointerException();
  }

  if (!v5)
  {
    goto LABEL_16;
  }

  while (([v6 hasNext] & 1) != 0)
  {
    v9 = [v6 next];
    if (!v9)
    {
      goto LABEL_16;
    }

    v8 = v9;
    if (![v9 getKey])
    {
LABEL_12:
      [v6 remove];

      return [v8 getValue];
    }
  }

  return 0;
}

- (int)size
{
  v2 = [(JavaUtilAbstractMap *)self entrySet];
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  return [v2 size];
}

- (NSString)description
{
  if ([(JavaUtilAbstractMap *)self isEmpty])
  {
    return @"{}";
  }

  v4 = new_JavaLangStringBuilder_initWithInt_(28 * [(JavaUtilAbstractMap *)self size]);
  [(JavaLangStringBuilder *)v4 appendWithChar:123];
  v5 = [(JavaUtilAbstractMap *)self entrySet];
  if (!v5 || (v6 = [v5 iterator]) == 0)
  {
LABEL_19:
    JreThrowNullPointerException();
  }

  v7 = v6;
  if ([v6 hasNext])
  {
    do
    {
      v8 = [v7 next];
      if (!v8)
      {
        goto LABEL_19;
      }

      v9 = v8;
      v10 = [v8 getKey];
      if (v10 == self)
      {
        [(JavaLangStringBuilder *)v4 appendWithNSString:@"(this Map)"];
      }

      else
      {
        [(JavaLangStringBuilder *)v4 appendWithId:v10];
      }

      [(JavaLangStringBuilder *)v4 appendWithChar:61];
      v11 = [v9 getValue];
      if (v11 == self)
      {
        [(JavaLangStringBuilder *)v4 appendWithNSString:@"(this Map)"];
      }

      else
      {
        [(JavaLangStringBuilder *)v4 appendWithId:v11];
      }

      if ([v7 hasNext])
      {
        [(JavaLangStringBuilder *)v4 appendWithNSString:@", "];
      }
    }

    while (([v7 hasNext] & 1) != 0);
  }

  [(JavaLangStringBuilder *)v4 appendWithChar:125];

  return [(JavaLangStringBuilder *)v4 description];
}

- (id)values
{
  p_valuesCollection = &self->valuesCollection_;
  result = self->valuesCollection_;
  if (!result)
  {
    v5 = [JavaUtilAbstractMap_1AbstractMapValuesCollection alloc];
    objc_storeWeak(&v5->this$0_, self);
    JavaUtilAbstractCollection_init(v5, v6);
    JreStrongAssignAndConsume(p_valuesCollection, v5);
    return self->valuesCollection_;
  }

  return result;
}

- (id)clone
{
  v4.receiver = self;
  v4.super_class = JavaUtilAbstractMap;
  v2 = [(JavaUtilAbstractMap *)&v4 clone];
  objc_opt_class();
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  JreStrongAssign(v2 + 1, 0);
  JreStrongAssign(v2 + 2, 0);
  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilAbstractMap;
  [(JavaUtilAbstractMap *)&v3 dealloc];
}

@end