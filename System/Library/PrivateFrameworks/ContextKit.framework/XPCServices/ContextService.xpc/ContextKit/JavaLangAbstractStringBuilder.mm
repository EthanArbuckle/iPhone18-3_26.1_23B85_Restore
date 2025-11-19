@interface JavaLangAbstractStringBuilder
- (id)description;
- (int)indexOfWithNSString:(id)a3 withInt:(int)a4;
- (int)lastIndexOfWithNSString:(id)a3 withInt:(int)a4;
- (void)dealloc;
- (void)ensureCapacityWithInt:(int)a3;
- (void)setWithCharArray:(id)a3 withInt:(int)a4;
- (void)trimToSize;
@end

@implementation JavaLangAbstractStringBuilder

- (void)setWithCharArray:(id)a3 withInt:(int)a4
{
  v5 = a3;
  if (!a3)
  {
    if ((atomic_load_explicit(LibcoreUtilEmptyArray__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1001BBB54();
    }

    v5 = LibcoreUtilEmptyArray_CHAR_;
    if (!LibcoreUtilEmptyArray_CHAR_)
    {
      JreThrowNullPointerException();
    }
  }

  if (v5[2] < a4)
  {
    objc_exception_throw([[JavaIoInvalidObjectException alloc] initWithNSString:@"count out of range"]);
  }

  buffer = self->delegate_.buffer_;
  if (self->delegate_.bufferSize_ >= a4)
  {
    v8 = 2 * a4;
  }

  else
  {
    free(buffer);
    v8 = 2 * a4;
    buffer = malloc_type_malloc(v8, 0x1000040BDFB0063uLL);
    self->delegate_.buffer_ = buffer;
    if (!buffer)
    {
      sub_100248B50();
    }

    self->delegate_.bufferSize_ = a4;
  }

  memcpy(buffer, v5 + 3, v8);
  self->delegate_.count_ = a4;
}

- (void)ensureCapacityWithInt:(int)a3
{
  bufferSize = self->delegate_.bufferSize_;
  if (bufferSize < a3)
  {
    v4 = 2 * bufferSize + 2;
    if (v4 <= a3)
    {
      v5 = a3;
    }

    else
    {
      v5 = v4;
    }

    sub_1002476A4(&self->delegate_, v5);
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

- (int)indexOfWithNSString:(id)a3 withInt:(int)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v7 = a4 & ~(a4 >> 31);
  v8 = [a3 length];
  v9 = v8;
  if (v8 < 1)
  {
    count = self->delegate_.count_;
    if (v7 < count)
    {
      count = v7;
    }

    if (a4 >= 1)
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

    v12 = [a3 characterAtIndex:0];
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
        v23 = [a3 characterAtIndex:v20];
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

- (int)lastIndexOfWithNSString:(id)a3 withInt:(int)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v7 = [a3 length];
  v8 = -1;
  if (a4 < 0)
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
    if (count - v7 >= a4)
    {
      v11 = a4;
    }

    else
    {
      v11 = count - v7;
    }

    v12 = [a3 characterAtIndex:0];
    v13 = (v9 - 1);
LABEL_9:
    if (v11 < 0)
    {
      return -1;
    }

    v14 = v11 + 1;
    v8 = v11;
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
      v19 = [a3 characterAtIndex:v16];
      --v13;
      --v17;
      ++v16;
      ++v14;
      if (v18 != v19)
      {
        v11 = v8 - 1;
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

  if (count >= a4)
  {
    return a4;
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