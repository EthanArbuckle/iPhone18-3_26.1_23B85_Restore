@interface JavaUtilAbstractList
- (BOOL)isEqual:(id)equal;
- (id)iterator;
- (id)listIteratorWithInt:(int)int;
- (id)subListWithInt:(int)int withInt:(int)withInt;
- (int)indexOfWithId:(id)id;
- (int)lastIndexOfWithId:(id)id;
- (unint64_t)hash;
- (void)clear;
- (void)removeRangeWithInt:(int)int withInt:(int)withInt;
@end

@implementation JavaUtilAbstractList

- (void)clear
{
  v3 = [(JavaUtilAbstractCollection *)self size];

  [(JavaUtilAbstractList *)self removeRangeWithInt:0 withInt:v3];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    v14 = 1;
  }

  else
  {
    if (![JavaUtilList_class_() isInstance:equal])
    {
      goto LABEL_15;
    }

    v5 = JavaUtilList_class_();
    if (!equal)
    {
      goto LABEL_18;
    }

    if (([v5 isInstance:equal] & 1) == 0)
    {
      JreThrowClassCastException();
    }

    v6 = [equal size];
    if (v6 == [(JavaUtilAbstractCollection *)self size])
    {
      iterator = [(JavaUtilAbstractList *)self iterator];
      iterator2 = [equal iterator];
      if (!iterator)
      {
        goto LABEL_18;
      }

      v9 = iterator2;
      hasNext = [iterator hasNext];
      if (hasNext)
      {
        while (1)
        {
          next = [iterator next];
          if (!v9)
          {
            break;
          }

          v12 = next;
          next2 = [v9 next];
          if (v12)
          {
            if (![v12 isEqual:next2])
            {
              goto LABEL_14;
            }
          }

          else if (next2)
          {
            goto LABEL_14;
          }

          LOBYTE(hasNext) = [iterator hasNext];
          if ((hasNext & 1) == 0)
          {
            goto LABEL_14;
          }
        }

LABEL_18:
        JreThrowNullPointerException();
      }

LABEL_14:
      v14 = hasNext ^ 1;
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
  iterator = [(JavaUtilAbstractList *)self iterator];
  if (!iterator)
  {
    JreThrowNullPointerException();
  }

  v3 = iterator;
  if (![iterator hasNext])
  {
    return 1;
  }

  v4 = 1;
  do
  {
    next = [v3 next];
    if (next)
    {
      LODWORD(next) = [next hash];
    }

    v4 = next + 31 * v4;
  }

  while (([v3 hasNext] & 1) != 0);
  return v4;
}

- (int)indexOfWithId:(id)id
{
  listIterator = [(JavaUtilAbstractList *)self listIterator];
  v5 = listIterator;
  if (id)
  {
    if (listIterator)
    {
      while (([v5 hasNext] & 1) != 0)
      {
        if ([id isEqual:{objc_msgSend(v5, "next")}])
        {
          goto LABEL_9;
        }
      }

      return -1;
    }

LABEL_13:
    JreThrowNullPointerException();
  }

  if (!listIterator)
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

- (int)lastIndexOfWithId:(id)id
{
  v4 = [(JavaUtilAbstractList *)self listIteratorWithInt:[(JavaUtilAbstractCollection *)self size]];
  v5 = v4;
  if (id)
  {
    if (v4)
    {
      while (([v5 hasPrevious] & 1) != 0)
      {
        if ([id isEqual:{objc_msgSend(v5, "previous")}])
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

- (id)listIteratorWithInt:(int)int
{
  v5 = [JavaUtilAbstractList_FullListIterator alloc];
  sub_1002647DC(v5, self, int);

  return v5;
}

- (void)removeRangeWithInt:(int)int withInt:(int)withInt
{
  v6 = [(JavaUtilAbstractList *)self listIteratorWithInt:?];
  v7 = __OFSUB__(withInt, int);
  v8 = withInt - int;
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

- (id)subListWithInt:(int)int withInt:(int)withInt
{
  if (int < 0 || [(JavaUtilAbstractCollection *)self size]< withInt)
  {
    v11 = new_JavaLangIndexOutOfBoundsException_init();
    goto LABEL_11;
  }

  if (int > withInt)
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
  sub_100264B18(v9, self, int, withInt);

  return v9;
}

@end