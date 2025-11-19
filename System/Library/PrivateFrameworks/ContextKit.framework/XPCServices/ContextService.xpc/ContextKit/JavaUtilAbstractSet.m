@interface JavaUtilAbstractSet
- (BOOL)isEqual:(id)a3;
- (BOOL)removeAllWithJavaUtilCollection:(id)a3;
- (unint64_t)hash;
@end

@implementation JavaUtilAbstractSet

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [JavaUtilSet_class_() isInstance:a3];
    if (v5)
    {
      v6 = JavaUtilSet_class_();
      if (a3 && ([v6 isInstance:a3] & 1) == 0)
      {
        JreThrowClassCastException();
      }

      v7 = [(JavaUtilAbstractCollection *)self size];
      if (!a3)
      {
        JreThrowNullPointerException();
      }

      if (v7 == [a3 size])
      {
        LOBYTE(v5) = [(JavaUtilAbstractCollection *)self containsAllWithJavaUtilCollection:a3];
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
  v2 = [(JavaUtilAbstractCollection *)self iterator];
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v3 = v2;
  if (![v2 hasNext])
  {
    return 0;
  }

  v4 = 0;
  do
  {
    v5 = [v3 next];
    if (v5)
    {
      LODWORD(v5) = [v5 hash];
    }

    v4 += v5;
  }

  while (([v3 hasNext] & 1) != 0);
  return v4;
}

- (BOOL)removeAllWithJavaUtilCollection:(id)a3
{
  v5 = [(JavaUtilAbstractCollection *)self size];
  if (!a3)
  {
    goto LABEL_17;
  }

  if (v5 > [a3 size])
  {
    v6 = [a3 iterator];
    if (v6)
    {
      v7 = v6;
      if ([v6 hasNext])
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

  v9 = [(JavaUtilAbstractCollection *)self iterator];
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9;
  if (![v9 hasNext])
  {
    goto LABEL_15;
  }

  LOBYTE(v8) = 0;
  do
  {
    if ([a3 containsWithId:{objc_msgSend(v10, "next")}])
    {
      [v10 remove];
      LOBYTE(v8) = 1;
    }
  }

  while (([v10 hasNext] & 1) != 0);
  return v8 & 1;
}

@end