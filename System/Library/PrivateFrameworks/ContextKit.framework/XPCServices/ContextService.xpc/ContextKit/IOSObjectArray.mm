@interface IOSObjectArray
+ (IOSObjectArray)arrayWithDimensions:(unint64_t)dimensions lengths:(const int *)lengths type:(id)type;
+ (IOSObjectArray)arrayWithNSArray:(id)array type:(id)type;
+ (IOSObjectArray)arrayWithObjects:(const void *)objects count:(unint64_t)count type:(id)type;
- (IOSObjectArray)retain;
- (id)copyWithZone:(_NSZone *)zone;
- (id)objectAtIndex:(unint64_t)index;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)arraycopy:(int)arraycopy destination:(id)destination dstOffset:(int)offset length:(int)length;
- (void)dealloc;
- (void)getObjects:(id *)objects length:(unint64_t)length;
@end

@implementation IOSObjectArray

+ (IOSObjectArray)arrayWithObjects:(const void *)objects count:(unint64_t)count type:(id)type
{
  countCopy = count;
  v7 = sub_10016E508(count, type, 0);
  memcpy(&v7->elementType_, objects, 8 * countCopy);
  return v7;
}

+ (IOSObjectArray)arrayWithNSArray:(id)array type:(id)type
{
  v6 = [array count];
  v7 = sub_10016E508(v6, type, 0);
  [array getObjects:&v7->elementType_ range:{0, v6}];
  return v7;
}

+ (IOSObjectArray)arrayWithDimensions:(unint64_t)dimensions lengths:(const int *)lengths type:(id)type
{
  v5 = IOSArray_NewArrayWithDimensions(self, dimensions, lengths);

  return v5;
}

- (id)objectAtIndex:(unint64_t)index
{
  size = self->super.size_;
  if ((index & 0x80000000) != 0 || size <= index)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, index);
  }

  return (&self->elementType_)[index];
}

- (void)getObjects:(id *)objects length:(unint64_t)length
{
  lengthCopy = length;
  size = self->super.size_;
  v8 = (length - 1);
  if (length - 1 < 0 || v8 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v8);
  }

  if (length)
  {
    p_elementType = &self->elementType_;
    do
    {
      v10 = *p_elementType++;
      *objects++ = v10;
      --lengthCopy;
    }

    while (lengthCopy);
  }
}

- (void)arraycopy:(int)arraycopy destination:(id)destination dstOffset:(int)offset length:(int)length
{
  LODWORD(v6) = length;
  offsetCopy = offset;
  arraycopyCopy = arraycopy;
  if ((length | arraycopy) < 0 || length + arraycopy > self->super.size_)
  {
    IOSArray_throwOutOfBounds();
  }

  if ((length | offset) < 0 || length + offset > *(destination + 2))
  {
    IOSArray_throwOutOfBounds();
  }

  v11 = [*(destination + 2) isAssignableFrom:*&self->isRetained_];
  if (self == destination)
  {
    p_elementType = &self->elementType_;
    if (*(destination + 12))
    {

      CopyWithMemmove(p_elementType, arraycopyCopy, offsetCopy, v6);
    }

    else
    {
      v16 = &p_elementType[arraycopyCopy];
      v17 = &p_elementType[offsetCopy];

      memmove(v17, v16, 8 * v6);
    }
  }

  else
  {
    if (*(destination + 12))
    {
      if (v11)
      {
        if (v6 >= 1)
        {
          v12 = destination + 24;
          v13 = &self->elementType_;
          v6 = v6;
          do
          {
            v14 = *&v12[8 * offsetCopy];
            *&v12[8 * offsetCopy++] = v13[arraycopyCopy++];
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
      v19 = destination + 24;
      v20 = v6;
      while (1)
      {
        v21 = v18[arraycopyCopy];
        if (v21)
        {
          if (([*(destination + 2) isInstance:v18[arraycopyCopy]] & 1) == 0)
          {
            break;
          }
        }

        v22 = *&v19[8 * offsetCopy];
        v23 = v21;
        *&v19[8 * offsetCopy++] = v21;
        ++arraycopyCopy;
        if (!--v20)
        {
          return;
        }
      }

LABEL_37:
      sub_10016EF9C(destination, v21);
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
        v21 = v24[arraycopyCopy];
        if (v21)
        {
          if (([*(destination + 2) isInstance:v24[arraycopyCopy]] & 1) == 0)
          {
            break;
          }
        }

        *(destination + offsetCopy++ + 3) = v21;
        ++arraycopyCopy;
        if (!--v25)
        {
          return;
        }
      }

      goto LABEL_37;
    }

    memcpy(destination + 8 * offsetCopy + 24, &(&self->elementType_)[arraycopyCopy], 8 * v6);
  }
}

- (id)copyWithZone:(_NSZone *)zone
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

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  if (state->var0)
  {
    return 0;
  }

  state->var1 = &self->elementType_;
  state->var2 = self;
  state->var0 = 1;
  return self->super.size_;
}

@end