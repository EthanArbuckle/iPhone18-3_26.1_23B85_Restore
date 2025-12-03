@interface JavaUtilAbstractSet
- (BOOL)isEqual:(id)equal;
- (BOOL)removeAllWithJavaUtilCollection:(id)collection;
- (unint64_t)hash;
@end

@implementation JavaUtilAbstractSet

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [JavaUtilSet_class_() isInstance:equal];
    if (v5)
    {
      v6 = JavaUtilSet_class_();
      if (equal && ([v6 isInstance:equal] & 1) == 0)
      {
        JreThrowClassCastException();
      }

      v7 = [(JavaUtilAbstractCollection *)self size];
      if (!equal)
      {
        JreThrowNullPointerException();
      }

      if (v7 == [equal size])
      {
        LOBYTE(v5) = [(JavaUtilAbstractCollection *)self containsAllWithJavaUtilCollection:equal];
      }

      else
      {
        LOBYTE(v5) = 0;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  iterator = [(JavaUtilAbstractCollection *)self iterator];
  if (!iterator)
  {
    JreThrowNullPointerException();
  }

  v3 = iterator;
  if (![iterator hasNext])
  {
    return 0;
  }

  v4 = 0;
  do
  {
    next = [v3 next];
    if (next)
    {
      LODWORD(next) = [next hash];
    }

    v4 += next;
  }

  while (([v3 hasNext] & 1) != 0);
  return v4;
}

- (BOOL)removeAllWithJavaUtilCollection:(id)collection
{
  v5 = [(JavaUtilAbstractCollection *)self size];
  if (!collection)
  {
    goto LABEL_17;
  }

  if (v5 > [collection size])
  {
    iterator = [collection iterator];
    if (iterator)
    {
      v7 = iterator;
      if ([iterator hasNext])
      {
        v8 = 0;
        do
        {
          v8 |= -[JavaUtilAbstractCollection removeWithId:](self, "removeWithId:", [v7 next]);
        }

        while (([v7 hasNext] & 1) != 0);
        return v8 & 1;
      }

LABEL_15:
      LOBYTE(v8) = 0;
      return v8 & 1;
    }

LABEL_17:
    JreThrowNullPointerException();
  }

  iterator2 = [(JavaUtilAbstractCollection *)self iterator];
  if (!iterator2)
  {
    goto LABEL_17;
  }

  v10 = iterator2;
  if (![iterator2 hasNext])
  {
    goto LABEL_15;
  }

  LOBYTE(v8) = 0;
  do
  {
    if ([collection containsWithId:{objc_msgSend(v10, "next")}])
    {
      [v10 remove];
      LOBYTE(v8) = 1;
    }
  }

  while (([v10 hasNext] & 1) != 0);
  return v8 & 1;
}

@end