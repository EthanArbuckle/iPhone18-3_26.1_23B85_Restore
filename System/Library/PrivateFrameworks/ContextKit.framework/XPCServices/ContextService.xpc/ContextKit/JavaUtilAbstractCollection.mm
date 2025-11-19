@interface JavaUtilAbstractCollection
- (BOOL)addAllWithJavaUtilCollection:(id)a3;
- (BOOL)containsAllWithJavaUtilCollection:(id)a3;
- (BOOL)containsWithId:(id)a3;
- (BOOL)removeAllWithJavaUtilCollection:(id)a3;
- (BOOL)removeWithId:(id)a3;
- (BOOL)retainAllWithJavaUtilCollection:(id)a3;
- (NSString)description;
- (id)toArray;
- (id)toArrayWithNSObjectArray:(id)a3;
- (void)clear;
@end

@implementation JavaUtilAbstractCollection

- (BOOL)addAllWithJavaUtilCollection:(id)a3
{
  if (!a3 || (v4 = [a3 iterator]) == 0)
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
  v2 = [(JavaUtilAbstractCollection *)self iterator];
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v3 = v2;
  if ([v2 hasNext])
  {
    do
    {
      [v3 next];
      [v3 remove];
    }

    while (([v3 hasNext] & 1) != 0);
  }
}

- (BOOL)containsWithId:(id)a3
{
  v4 = [(JavaUtilAbstractCollection *)self iterator];
  v5 = v4;
  if (a3)
  {
    if (v4)
    {
      do
      {
        v6 = [v5 hasNext];
      }

      while ((v6 & 1) != 0 && ([a3 isEqual:{objc_msgSend(v5, "next")}] & 1) == 0);
      return v6;
    }

LABEL_10:
    JreThrowNullPointerException();
  }

  if (!v4)
  {
    goto LABEL_10;
  }

  do
  {
    v6 = [v5 hasNext];
  }

  while ((v6 & 1) != 0 && [v5 next]);
  return v6;
}

- (BOOL)containsAllWithJavaUtilCollection:(id)a3
{
  if (!a3 || (v4 = [a3 iterator]) == 0)
  {
    JreThrowNullPointerException();
  }

  v5 = v4;
  do
  {
    v6 = [v5 hasNext];
  }

  while ((v6 & 1) != 0 && -[JavaUtilAbstractCollection containsWithId:](self, "containsWithId:", [v5 next]));
  return v6 ^ 1;
}

- (BOOL)removeWithId:(id)a3
{
  v4 = [(JavaUtilAbstractCollection *)self iterator];
  v5 = v4;
  if (a3)
  {
    if (v4)
    {
      while (([v5 hasNext] & 1) != 0)
      {
        if ([a3 isEqual:{objc_msgSend(v5, "next")}])
        {
          goto LABEL_9;
        }
      }

      return 0;
    }

LABEL_11:
    JreThrowNullPointerException();
  }

  if (!v4)
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

- (BOOL)removeAllWithJavaUtilCollection:(id)a3
{
  v4 = [(JavaUtilAbstractCollection *)self iterator];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4;
  v6 = 0;
  if ([v4 hasNext])
  {
    while (a3)
    {
      if ([a3 containsWithId:{objc_msgSend(v5, "next")}])
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

- (BOOL)retainAllWithJavaUtilCollection:(id)a3
{
  v4 = [(JavaUtilAbstractCollection *)self iterator];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4;
  v6 = 0;
  if ([v4 hasNext])
  {
    while (a3)
    {
      if (([a3 containsWithId:{objc_msgSend(v5, "next")}] & 1) == 0)
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

- (id)toArrayWithNSObjectArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v3 = a3;
  v5 = [(JavaUtilAbstractCollection *)self size];
  if (v3->super.size_ < v5)
  {
    v3 = [IOSObjectArray arrayWithLength:v5 type:*&v3->isRetained_];
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
        IOSObjectArray_Set(v3, v11++, *(*(&v13 + 1) + 8 * v10++));
      }

      while (v7 != v10);
      v7 = [(JavaUtilAbstractCollection *)self countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v3;
}

- (NSString)description
{
  if ([(JavaUtilAbstractCollection *)self isEmpty])
  {
    return @"[]";
  }

  v4 = new_JavaLangStringBuilder_initWithInt_(16 * [(JavaUtilAbstractCollection *)self size]);
  [(JavaLangStringBuilder *)v4 appendWithChar:91];
  v5 = [(JavaUtilAbstractCollection *)self iterator];
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  if ([v5 hasNext])
  {
    do
    {
      v7 = [v6 next];
      if (v7 == self)
      {
        [(JavaLangStringBuilder *)v4 appendWithNSString:@"(this Collection)"];
      }

      else
      {
        [(JavaLangStringBuilder *)v4 appendWithId:v7];
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