@interface IOSObjectArray
+ (IOSObjectArray)arrayWithDimensions:(unint64_t)a3 lengths:(const int *)a4 type:(id)a5;
+ (IOSObjectArray)arrayWithNSArray:(id)a3 type:(id)a4;
+ (IOSObjectArray)arrayWithObjects:(const void *)a3 count:(unint64_t)a4 type:(id)a5;
- (IOSObjectArray)retain;
- (id)copyWithZone:(_NSZone *)a3;
- (id)objectAtIndex:(unint64_t)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)arraycopy:(int)a3 destination:(id)a4 dstOffset:(int)a5 length:(int)a6;
- (void)dealloc;
- (void)getObjects:(id *)a3 length:(unint64_t)a4;
@end

@implementation IOSObjectArray

+ (IOSObjectArray)arrayWithObjects:(const void *)a3 count:(unint64_t)a4 type:(id)a5
{
  v5 = a4;
  v7 = sub_10016E508(a4, a5, 0);
  memcpy(&v7->elementType_, a3, 8 * v5);
  return v7;
}

+ (IOSObjectArray)arrayWithNSArray:(id)a3 type:(id)a4
{
  v6 = [a3 count];
  v7 = sub_10016E508(v6, a4, 0);
  [a3 getObjects:&v7->elementType_ range:{0, v6}];
  return v7;
}

+ (IOSObjectArray)arrayWithDimensions:(unint64_t)a3 lengths:(const int *)a4 type:(id)a5
{
  v5 = IOSArray_NewArrayWithDimensions(a1, a3, a4);

  return v5;
}

- (id)objectAtIndex:(unint64_t)a3
{
  size = self->super.size_;
  if ((a3 & 0x80000000) != 0 || size <= a3)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, a3);
  }

  return (&self->elementType_)[a3];
}

- (void)getObjects:(id *)a3 length:(unint64_t)a4
{
  v4 = a4;
  size = self->super.size_;
  v8 = (a4 - 1);
  if (a4 - 1 < 0 || v8 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v8);
  }

  if (a4)
  {
    p_elementType = &self->elementType_;
    do
    {
      v10 = *p_elementType++;
      *a3++ = v10;
      --v4;
    }

    while (v4);
  }
}

- (void)arraycopy:(int)a3 destination:(id)a4 dstOffset:(int)a5 length:(int)a6
{
  LODWORD(v6) = a6;
  v7 = a5;
  v9 = a3;
  if ((a6 | a3) < 0 || a6 + a3 > self->super.size_)
  {
    IOSArray_throwOutOfBounds();
  }

  if ((a6 | a5) < 0 || a6 + a5 > *(a4 + 2))
  {
    IOSArray_throwOutOfBounds();
  }

  v11 = [*(a4 + 2) isAssignableFrom:*&self->isRetained_];
  if (self == a4)
  {
    p_elementType = &self->elementType_;
    if (*(a4 + 12))
    {

      CopyWithMemmove(p_elementType, v9, v7, v6);
    }

    else
    {
      v16 = &p_elementType[v9];
      v17 = &p_elementType[v7];

      memmove(v17, v16, 8 * v6);
    }
  }

  else
  {
    if (*(a4 + 12))
    {
      if (v11)
      {
        if (v6 >= 1)
        {
          v12 = a4 + 24;
          v13 = &self->elementType_;
          v6 = v6;
          do
          {
            v14 = *&v12[8 * v7];
            *&v12[8 * v7++] = v13[v9++];
            --v6;
          }

          while (v6);
        }

        return;
      }

      if (v6 < 1)
      {
        return;
      }

      v18 = &self->elementType_;
      v19 = a4 + 24;
      v20 = v6;
      while (1)
      {
        v21 = v18[v9];
        if (v21)
        {
          if (([*(a4 + 2) isInstance:v18[v9]] & 1) == 0)
          {
            break;
          }
        }

        v22 = *&v19[8 * v7];
        v23 = v21;
        *&v19[8 * v7++] = v21;
        ++v9;
        if (!--v20)
        {
          return;
        }
      }

LABEL_37:
      sub_10016EF9C(a4, v21);
    }

    if ((v11 & 1) == 0)
    {
      if (v6 < 1)
      {
        return;
      }

      v24 = &self->elementType_;
      v25 = v6;
      while (1)
      {
        v21 = v24[v9];
        if (v21)
        {
          if (([*(a4 + 2) isInstance:v24[v9]] & 1) == 0)
          {
            break;
          }
        }

        *(a4 + v7++ + 3) = v21;
        ++v9;
        if (!--v25)
        {
          return;
        }
      }

      goto LABEL_37;
    }

    memcpy(a4 + 8 * v7 + 24, &(&self->elementType_)[v9], 8 * v6);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = sub_10016E508(self->super.size_, *&self->isRetained_, 1);
  if (self->super.size_ >= 1)
  {
    v5 = 0;
    do
    {
      *&v4[2 * v5 + 6] = (&self->elementType_)[v5];
      ++v5;
    }

    while (v5 < self->super.size_);
  }

  return v4;
}

- (IOSObjectArray)retain
{
  if ((*(&self->super.size_ + 1) & 1) == 0)
  {
    if (self->super.size_ >= 1)
    {
      v3 = 0;
      do
      {
        v4 = (&self->elementType_)[v3++];
      }

      while (v3 < self->super.size_);
    }

    *(&self->super.size_ + 4) = 1;
  }

  v6.receiver = self;
  v6.super_class = IOSObjectArray;
  return [(IOSObjectArray *)&v6 retain];
}

- (void)dealloc
{
  if (*(&self->super.size_ + 4) == 1 && self->super.size_ >= 1)
  {
    v3 = 0;
    do
    {
    }

    while (v3 < self->super.size_);
  }

  v4.receiver = self;
  v4.super_class = IOSObjectArray;
  [(IOSObjectArray *)&v4 dealloc];
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  if (a3->var0)
  {
    return 0;
  }

  a3->var1 = &self->elementType_;
  a3->var2 = self;
  a3->var0 = 1;
  return self->super.size_;
}

@end