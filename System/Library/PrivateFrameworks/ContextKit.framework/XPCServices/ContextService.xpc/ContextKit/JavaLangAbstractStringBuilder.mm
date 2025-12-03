@interface JavaLangAbstractStringBuilder
- (id)description;
- (int)indexOfWithNSString:(id)string withInt:(int)int;
- (int)lastIndexOfWithNSString:(id)string withInt:(int)int;
- (void)dealloc;
- (void)ensureCapacityWithInt:(int)int;
- (void)setWithCharArray:(id)array withInt:(int)int;
- (void)trimToSize;
@end

@implementation JavaLangAbstractStringBuilder

- (void)setWithCharArray:(id)array withInt:(int)int
{
  arrayCopy = array;
  if (!array)
  {
    if ((atomic_load_explicit(LibcoreUtilEmptyArray__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001BBB54();
    }

    arrayCopy = LibcoreUtilEmptyArray_CHAR_;
    if (!LibcoreUtilEmptyArray_CHAR_)
    {
      JreThrowNullPointerException();
    }
  }

  if (arrayCopy[2] < int)
  {
    objc_exception_throw([[JavaIoInvalidObjectException alloc] initWithNSString:@"count out of range"]);
  }

  buffer = self->delegate_.buffer_;
  if (self->delegate_.bufferSize_ >= int)
  {
    v8 = 2 * int;
  }

  else
  {
    free(buffer);
    v8 = 2 * int;
    buffer = malloc_type_malloc(v8, 0x1000040BDFB0063uLL);
    self->delegate_.buffer_ = buffer;
    if (!buffer)
    {
      sub_100248B50();
    }

    self->delegate_.bufferSize_ = int;
  }

  memcpy(buffer, arrayCopy + 3, v8);
  self->delegate_.count_ = int;
}

- (void)ensureCapacityWithInt:(int)int
{
  bufferSize = self->delegate_.bufferSize_;
  if (bufferSize < int)
  {
    v4 = 2 * bufferSize + 2;
    if (v4 <= int)
    {
      intCopy = int;
    }

    else
    {
      intCopy = v4;
    }

    sub_1002476A4(&self->delegate_, intCopy);
  }
}

- (id)description
{
  if (self->delegate_.count_)
  {
    return [NSString stringWithCharacters:self->delegate_.buffer_ length:?];
  }

  else
  {
    return &stru_100484358;
  }
}

- (int)indexOfWithNSString:(id)string withInt:(int)int
{
  if (!string)
  {
    JreThrowNullPointerException();
  }

  v7 = int & ~(int >> 31);
  v8 = [string length];
  v9 = v8;
  if (v8 < 1)
  {
    count = self->delegate_.count_;
    if (v7 < count)
    {
      count = v7;
    }

    if (int >= 1)
    {
      return count;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    if (v7 + v8 > self->delegate_.count_)
    {
      return -1;
    }

    v12 = [string characterAtIndex:0];
    v13 = (v9 - 1);
LABEL_11:
    v14 = self->delegate_.count_;
    if (v7 >= v14)
    {
      return -1;
    }

    v15 = -v7;
    v16 = &self->delegate_.buffer_[v7];
    v17 = v14 - v7;
    for (i = v7 + 1; ; ++i)
    {
      v19 = *v16++;
      if (v19 == v12)
      {
        break;
      }

      --v15;
      if (!--v17)
      {
        return -1;
      }
    }

    if (v9 - v15 > v14)
    {
      return -1;
    }

    else
    {
      v20 = 1;
      v21 = v9;
      v24 = v13;
      while (v13)
      {
        v22 = self->delegate_.buffer_[i];
        v23 = [string characterAtIndex:v20];
        --v13;
        --v21;
        ++v20;
        ++i;
        if (v22 != v23)
        {
          v7 = 1 - v15;
          v13 = v24;
          if (v21)
          {
            goto LABEL_11;
          }

          return -v15;
        }
      }

      return -v15;
    }
  }
}

- (int)lastIndexOfWithNSString:(id)string withInt:(int)int
{
  if (!string)
  {
    JreThrowNullPointerException();
  }

  v7 = [string length];
  v8 = -1;
  if (int < 0)
  {
    return v8;
  }

  v9 = v7;
  count = self->delegate_.count_;
  if (count < v7)
  {
    return v8;
  }

  if (v7 >= 1)
  {
    if (count - v7 >= int)
    {
      intCopy = int;
    }

    else
    {
      intCopy = count - v7;
    }

    v12 = [string characterAtIndex:0];
    v13 = (v9 - 1);
LABEL_9:
    if (intCopy < 0)
    {
      return -1;
    }

    v14 = intCopy + 1;
    v8 = intCopy;
    while (self->delegate_.buffer_[v8] != v12)
    {
      --v14;
      if (v8-- <= 0)
      {
        return -1;
      }
    }

    v16 = 1;
    v17 = v9;
    v21 = v13;
    while (v13)
    {
      v18 = self->delegate_.buffer_[v14];
      v19 = [string characterAtIndex:v16];
      --v13;
      --v17;
      ++v16;
      ++v14;
      if (v18 != v19)
      {
        intCopy = v8 - 1;
        v13 = v21;
        if (v17)
        {
          goto LABEL_9;
        }

        return v8;
      }
    }

    return v8;
  }

  if (count >= int)
  {
    return int;
  }

  else
  {
    return self->delegate_.count_;
  }
}

- (void)trimToSize
{
  count = self->delegate_.count_;
  if (count < self->delegate_.bufferSize_)
  {
    buffer = self->delegate_.buffer_;
    v5 = malloc_type_malloc(2 * count, 0x1000040BDFB0063uLL);
    self->delegate_.buffer_ = v5;
    if (!v5)
    {
      sub_100248B50();
    }

    self->delegate_.bufferSize_ = count;
    memcpy(v5, buffer, 2 * self->delegate_.count_);

    free(buffer);
  }
}

- (void)dealloc
{
  free(self->delegate_.buffer_);
  v3.receiver = self;
  v3.super_class = JavaLangAbstractStringBuilder;
  [(JavaLangAbstractStringBuilder *)&v3 dealloc];
}

@end