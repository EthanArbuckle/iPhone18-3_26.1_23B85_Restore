@interface JavaUtilAbstractList
- (BOOL)isEqual:(id)a3;
- (id)iterator;
- (id)listIteratorWithInt:(int)a3;
- (id)subListWithInt:(int)a3 withInt:(int)a4;
- (int)indexOfWithId:(id)a3;
- (int)lastIndexOfWithId:(id)a3;
- (unint64_t)hash;
- (void)clear;
- (void)removeRangeWithInt:(int)a3 withInt:(int)a4;
@end

@implementation JavaUtilAbstractList

- (void)clear
{
  v3 = [(JavaUtilAbstractCollection *)self size];

  [(JavaUtilAbstractList *)self removeRangeWithInt:0 withInt:v3];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    v14 = 1;
  }

  else
  {
    if (![JavaUtilList_class_() isInstance:a3])
    {
      goto LABEL_15;
    }

    v5 = JavaUtilList_class_();
    if (!a3)
    {
      goto LABEL_18;
    }

    if (([v5 isInstance:a3] & 1) == 0)
    {
      JreThrowClassCastException();
    }

    v6 = [a3 size];
    if (v6 == [(JavaUtilAbstractCollection *)self size])
    {
      v7 = [(JavaUtilAbstractList *)self iterator];
      v8 = [a3 iterator];
      if (!v7)
      {
        goto LABEL_18;
      }

      v9 = v8;
      v10 = [v7 hasNext];
      if (v10)
      {
        while (1)
        {
          v11 = [v7 next];
          if (!v9)
          {
            break;
          }

          v12 = v11;
          v13 = [v9 next];
          if (v12)
          {
            if (![v12 isEqual:v13])
            {
              goto LABEL_14;
            }
          }

          else if (v13)
          {
            goto LABEL_14;
          }

          LOBYTE(v10) = [v7 hasNext];
          if ((v10 & 1) == 0)
          {
            goto LABEL_14;
          }
        }

LABEL_18:
        JreThrowNullPointerException();
      }

LABEL_14:
      v14 = v10 ^ 1;
    }

    else
    {
LABEL_15:
      v14 = 0;
    }
  }

  return v14 & 1;
}

- (unint64_t)hash
{
  v2 = [(JavaUtilAbstractList *)self iterator];
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v3 = v2;
  if (![v2 hasNext])
  {
    return 1;
  }

  v4 = 1;
  do
  {
    v5 = [v3 next];
    if (v5)
    {
      LODWORD(v5) = [v5 hash];
    }

    v4 = v5 + 31 * v4;
  }

  while (([v3 hasNext] & 1) != 0);
  return v4;
}

- (int)indexOfWithId:(id)a3
{
  v4 = [(JavaUtilAbstractList *)self listIterator];
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

      return -1;
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  if (!v4)
  {
    goto LABEL_13;
  }

  while (([v5 hasNext] & 1) != 0)
  {
    if (![v5 next])
    {
LABEL_9:

      return [v5 previousIndex];
    }
  }

  return -1;
}

- (id)iterator
{
  v3 = [JavaUtilAbstractList_SimpleListIterator alloc];
  JreStrongAssign(&v3->this$0_, self);
  v3->pos_ = -1;
  v3->lastPosition_ = -1;
  v3->expectedModCount_ = self->modCount_;

  return v3;
}

- (int)lastIndexOfWithId:(id)a3
{
  v4 = [(JavaUtilAbstractList *)self listIteratorWithInt:[(JavaUtilAbstractCollection *)self size]];
  v5 = v4;
  if (a3)
  {
    if (v4)
    {
      while (([v5 hasPrevious] & 1) != 0)
      {
        if ([a3 isEqual:{objc_msgSend(v5, "previous")}])
        {
          goto LABEL_9;
        }
      }

      return -1;
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  if (!v4)
  {
    goto LABEL_13;
  }

  while (([v5 hasPrevious] & 1) != 0)
  {
    if (![v5 previous])
    {
LABEL_9:

      return [v5 nextIndex];
    }
  }

  return -1;
}

- (id)listIteratorWithInt:(int)a3
{
  v5 = [JavaUtilAbstractList_FullListIterator alloc];
  sub_1002647DC(v5, self, a3);

  return v5;
}

- (void)removeRangeWithInt:(int)a3 withInt:(int)a4
{
  v6 = [(JavaUtilAbstractList *)self listIteratorWithInt:?];
  v7 = __OFSUB__(a4, a3);
  v8 = a4 - a3;
  if (!((v8 < 0) ^ v7 | (v8 == 0)))
  {
    v9 = v6;
    if (!v6)
    {
      JreThrowNullPointerException();
    }

    do
    {
      [v9 next];
      [v9 remove];
      --v8;
    }

    while (v8);
  }
}

- (id)subListWithInt:(int)a3 withInt:(int)a4
{
  if (a3 < 0 || [(JavaUtilAbstractCollection *)self size]< a4)
  {
    v11 = new_JavaLangIndexOutOfBoundsException_init();
    goto LABEL_11;
  }

  if (a3 > a4)
  {
    v11 = new_JavaLangIllegalArgumentException_init();
LABEL_11:
    objc_exception_throw(v11);
  }

  v7 = [JavaUtilRandomAccess_class_() isInstance:self];
  v8 = off_1003E8CD8;
  if (!v7)
  {
    v8 = off_1003E8CD0;
  }

  v9 = objc_alloc(*v8);
  sub_100264B18(v9, self, a3, a4);

  return v9;
}

@end