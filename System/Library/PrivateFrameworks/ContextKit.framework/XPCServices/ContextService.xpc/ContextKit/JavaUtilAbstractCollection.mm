@interface JavaUtilAbstractCollection
- (BOOL)addAllWithJavaUtilCollection:(id)collection;
- (BOOL)containsAllWithJavaUtilCollection:(id)collection;
- (BOOL)containsWithId:(id)id;
- (BOOL)removeAllWithJavaUtilCollection:(id)collection;
- (BOOL)removeWithId:(id)id;
- (BOOL)retainAllWithJavaUtilCollection:(id)collection;
- (NSString)description;
- (id)toArray;
- (id)toArrayWithNSObjectArray:(id)array;
- (void)clear;
@end

@implementation JavaUtilAbstractCollection

- (BOOL)addAllWithJavaUtilCollection:(id)collection
{
  if (!collection || (v4 = [collection iterator]) == 0)
  {
    JreThrowNullPointerException();
  }

  v5 = v4;
  v6 = 0;
  if ([v4 hasNext])
  {
    do
    {
      v6 |= -[JavaUtilAbstractCollection addWithId:](self, "addWithId:", [v5 next]);
    }

    while (([v5 hasNext] & 1) != 0);
  }

  return v6 & 1;
}

- (void)clear
{
  iterator = [(JavaUtilAbstractCollection *)self iterator];
  if (!iterator)
  {
    JreThrowNullPointerException();
  }

  v3 = iterator;
  if ([iterator hasNext])
  {
    do
    {
      [v3 next];
      [v3 remove];
    }

    while (([v3 hasNext] & 1) != 0);
  }
}

- (BOOL)containsWithId:(id)id
{
  iterator = [(JavaUtilAbstractCollection *)self iterator];
  v5 = iterator;
  if (id)
  {
    if (iterator)
    {
      do
      {
        hasNext = [v5 hasNext];
      }

      while ((hasNext & 1) != 0 && ([id isEqual:{objc_msgSend(v5, "next")}] & 1) == 0);
      return hasNext;
    }

LABEL_10:
    JreThrowNullPointerException();
  }

  if (!iterator)
  {
    goto LABEL_10;
  }

  do
  {
    hasNext = [v5 hasNext];
  }

  while ((hasNext & 1) != 0 && [v5 next]);
  return hasNext;
}

- (BOOL)containsAllWithJavaUtilCollection:(id)collection
{
  if (!collection || (v4 = [collection iterator]) == 0)
  {
    JreThrowNullPointerException();
  }

  v5 = v4;
  do
  {
    hasNext = [v5 hasNext];
  }

  while ((hasNext & 1) != 0 && -[JavaUtilAbstractCollection containsWithId:](self, "containsWithId:", [v5 next]));
  return hasNext ^ 1;
}

- (BOOL)removeWithId:(id)id
{
  iterator = [(JavaUtilAbstractCollection *)self iterator];
  v5 = iterator;
  if (id)
  {
    if (iterator)
    {
      while (([v5 hasNext] & 1) != 0)
      {
        if ([id isEqual:{objc_msgSend(v5, "next")}])
        {
          goto LABEL_9;
        }
      }

      return 0;
    }

LABEL_11:
    JreThrowNullPointerException();
  }

  if (!iterator)
  {
    goto LABEL_11;
  }

  while (([v5 hasNext] & 1) != 0)
  {
    if (![v5 next])
    {
LABEL_9:
      [v5 remove];
      return 1;
    }
  }

  return 0;
}

- (BOOL)removeAllWithJavaUtilCollection:(id)collection
{
  iterator = [(JavaUtilAbstractCollection *)self iterator];
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
  iterator = [(JavaUtilAbstractCollection *)self iterator];
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

- (id)toArray
{
  v3 = [IOSObjectArray arrayWithLength:[(JavaUtilAbstractCollection *)self size] type:NSObject_class_()];

  return [(JavaUtilAbstractCollection *)self toArrayWithNSObjectArray:v3];
}

- (id)toArrayWithNSObjectArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  arrayCopy = array;
  v5 = [(JavaUtilAbstractCollection *)self size];
  if (arrayCopy->super.size_ < v5)
  {
    arrayCopy = [IOSObjectArray arrayWithLength:v5 type:*&arrayCopy->isRetained_];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(JavaUtilAbstractCollection *)self countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    do
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(self);
        }

        v8 = v11 + 1;
        IOSObjectArray_Set(arrayCopy, v11++, *(*(&v13 + 1) + 8 * v10++));
      }

      while (v7 != v10);
      v7 = [(JavaUtilAbstractCollection *)self countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return arrayCopy;
}

- (NSString)description
{
  if ([(JavaUtilAbstractCollection *)self isEmpty])
  {
    return @"[]";
  }

  v4 = new_JavaLangStringBuilder_initWithInt_(16 * [(JavaUtilAbstractCollection *)self size]);
  [(JavaLangStringBuilder *)v4 appendWithChar:91];
  iterator = [(JavaUtilAbstractCollection *)self iterator];
  if (!iterator)
  {
    JreThrowNullPointerException();
  }

  v6 = iterator;
  if ([iterator hasNext])
  {
    do
    {
      next = [v6 next];
      if (next == self)
      {
        [(JavaLangStringBuilder *)v4 appendWithNSString:@"(this Collection)"];
      }

      else
      {
        [(JavaLangStringBuilder *)v4 appendWithId:next];
      }

      if ([v6 hasNext])
      {
        [(JavaLangStringBuilder *)v4 appendWithNSString:@", "];
      }
    }

    while (([v6 hasNext] & 1) != 0);
  }

  [(JavaLangStringBuilder *)v4 appendWithChar:93];

  return [(JavaLangStringBuilder *)v4 description];
}

@end