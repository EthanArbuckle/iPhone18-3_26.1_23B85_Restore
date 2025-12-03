@interface OrgApacheLuceneUtilMergedIterator
- (BOOL)hasNext;
- (id)next;
- (id)pullTop;
- (int)pushTop;
- (void)dealloc;
@end

@implementation OrgApacheLuceneUtilMergedIterator

- (BOOL)hasNext
{
  queue = self->queue_;
  if (!queue)
  {
    goto LABEL_16;
  }

  if ([(OrgApacheLuceneUtilPriorityQueue *)queue size]> 0)
  {
    LOBYTE(hasNext) = 1;
    return hasNext;
  }

  if (self->numTop_ >= 1)
  {
    v5 = 0;
    while (1)
    {
      top = self->top_;
      if (!top)
      {
        break;
      }

      size = top->super.size_;
      if (v5 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v5);
      }

      v8 = (&top->elementType_)[v5];
      if (!v8)
      {
        break;
      }

      isa = v8[1].super.isa;
      if (!isa)
      {
        break;
      }

      hasNext = [(objc_class *)isa hasNext];
      if (!hasNext && ++v5 < self->numTop_)
      {
        continue;
      }

      return hasNext;
    }

LABEL_16:
    JreThrowNullPointerException();
  }

  LOBYTE(hasNext) = 0;
  return hasNext;
}

- (id)next
{
  [OrgApacheLuceneUtilMergedIterator pushTop]_0(self);
  queue = self->queue_;
  if (!queue)
  {
    JreThrowNullPointerException();
  }

  if ([(OrgApacheLuceneUtilPriorityQueue *)queue size]< 1)
  {
    JreStrongAssign(&self->current_, 0);
  }

  else
  {
    [OrgApacheLuceneUtilMergedIterator pullTop]_0(self);
  }

  result = self->current_;
  if (!result)
  {
    v5 = new_JavaUtilNoSuchElementException_init();
    objc_exception_throw(v5);
  }

  return result;
}

- (int)pushTop
{
  v1 = result;
  if (result[9] >= 1)
  {
    v2 = 0;
    while (1)
    {
      v3 = *(v1 + 3);
      if (!v3)
      {
        break;
      }

      v4 = *(v3 + 8);
      if (v2 >= v4)
      {
        IOSArray_throwOutOfBoundsWithMsg(v4, v2);
      }

      v5 = *(v3 + 24 + 8 * v2);
      if (!v5)
      {
        break;
      }

      v6 = *(v5 + 8);
      if (!v6)
      {
        break;
      }

      hasNext = [v6 hasNext];
      v8 = *(v1 + 3);
      v9 = *(v8 + 8);
      if (hasNext)
      {
        if (v2 >= v9)
        {
          IOSArray_throwOutOfBoundsWithMsg(v9, v2);
        }

        v10 = *(v8 + 24 + 8 * v2);
        if (!v10)
        {
          break;
        }

        v11 = *(v1 + 3);
        v12 = *(v11 + 8);
        if (v2 >= v12)
        {
          IOSArray_throwOutOfBoundsWithMsg(v12, v2);
        }

        v13 = *(v11 + 24 + 8 * v2);
        if (!v13)
        {
          break;
        }

        JreStrongAssign((v10 + 16), [*(v13 + 8) next]);
        if (!*(v1 + 2))
        {
          break;
        }

        v14 = *(v1 + 3);
        v15 = *(v14 + 8);
        if (v2 >= v15)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15, v2);
        }

        result = [*(v1 + 2) addWithId:*(v14 + 24 + 8 * v2)];
      }

      else
      {
        if (v2 >= v9)
        {
          IOSArray_throwOutOfBoundsWithMsg(v9, v2);
        }

        v16 = *(v8 + 24 + 8 * v2);
        if (!v16)
        {
          break;
        }

        result = JreStrongAssign((v16 + 16), 0);
      }

      if (++v2 >= v1[9])
      {
        goto LABEL_25;
      }
    }

    JreThrowNullPointerException();
  }

LABEL_25:
  v1[9] = 0;
  return result;
}

- (id)pullTop
{
  v1 = *(self + 24);
  if (!v1)
  {
    goto LABEL_17;
  }

  v3 = *(self + 36);
  *(self + 36) = v3 + 1;
  v4 = *(self + 16);
  if (!v4)
  {
    goto LABEL_17;
  }

  IOSObjectArray_Set(v1, v3, [v4 pop]);
  if (*(self + 32) == 1)
  {
    while ([*(self + 16) size])
    {
      v5 = [*(self + 16) top];
      if (!v5)
      {
        goto LABEL_17;
      }

      v6 = v5[2];
      if (!v6)
      {
        goto LABEL_17;
      }

      v7 = *(self + 24);
      v8 = *(v7 + 8);
      if (v8 <= 0)
      {
        IOSArray_throwOutOfBoundsWithMsg(v8, 0);
      }

      v9 = *(v7 + 24);
      if (!v9)
      {
        goto LABEL_17;
      }

      if (![v6 isEqual:*(v9 + 16)])
      {
        break;
      }

      v10 = *(self + 36);
      *(self + 36) = v10 + 1;
      IOSObjectArray_Set(*(self + 24), v10, [*(self + 16) pop]);
    }
  }

  v11 = *(self + 24);
  v12 = *(v11 + 8);
  if (v12 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, 0);
  }

  v13 = *(v11 + 24);
  if (!v13)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  v14 = *(v13 + 16);

  return JreStrongAssign((self + 8), v14);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilMergedIterator;
  [(OrgApacheLuceneUtilMergedIterator *)&v3 dealloc];
}

@end