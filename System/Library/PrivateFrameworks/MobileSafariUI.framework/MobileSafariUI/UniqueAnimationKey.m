@interface UniqueAnimationKey
- (BOOL)getBytes:(void *)a3 maxLength:(unint64_t)a4 usedLength:(unint64_t *)a5 encoding:(unint64_t)a6 options:(unint64_t)a7 range:(_NSRange)a8 remainingRange:(_NSRange *)a9;
- (UniqueAnimationKey)initWithKey:(unint64_t)a3;
- (unint64_t)length;
- (unsigned)characterAtIndex:(unint64_t)a3;
@end

@implementation UniqueAnimationKey

- (UniqueAnimationKey)initWithKey:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = UniqueAnimationKey;
  v4 = [(UniqueAnimationKey *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_key = a3;
    v6 = v4;
  }

  return v5;
}

- (unint64_t)length
{
  key = self->_key;
  result = 12;
  if (key >= 0x10)
  {
    do
    {
      ++result;
      v4 = key > 0xFF;
      key >>= 4;
    }

    while (v4);
  }

  return result;
}

- (unsigned)characterAtIndex:(unint64_t)a3
{
  if (a3 <= 0xA)
  {
    return kUniqueAnimationKeyPrefix[a3];
  }

  key = self->_key;
  v5 = a3 - 11;
  if (a3 != 11)
  {
    do
    {
      key >>= 4;
      --v5;
    }

    while (v5);
  }

  return (key & 0xF) + 97;
}

- (BOOL)getBytes:(void *)a3 maxLength:(unint64_t)a4 usedLength:(unint64_t *)a5 encoding:(unint64_t)a6 options:(unint64_t)a7 range:(_NSRange)a8 remainingRange:(_NSRange *)a9
{
  length = a8.length;
  if (a9)
  {
    v10 = 0;
  }

  else
  {
    v10 = a6 == 30;
  }

  if (v10 && a8.location == 0)
  {
    if (a8.length >= a4)
    {
      length = a4;
    }

    if (length < 0xB)
    {
      return 0;
    }

    else
    {
      *(a3 + 7) = 762930539;
      *a3 = *"unique-key-";
      key = self->_key;
      if (length == 11 || key == 0)
      {
        v16 = 11;
      }

      else
      {
        v15 = 12 - length;
        v16 = 11;
        do
        {
          v17 = v15 + v16;
          *(a3 + v16++) = (key & 0xF) + 97;
          if (v17 == 11)
          {
            break;
          }

          v18 = key > 0xF;
          key >>= 4;
        }

        while (v18);
      }

      *a5 = v16;
      return 1;
    }
  }

  else
  {
    v19.receiver = self;
    v19.super_class = UniqueAnimationKey;
    return [(UniqueAnimationKey *)&v19 getBytes:a3 maxLength:a4 usedLength:a5 encoding:a6 options:a7 range:a8.location remainingRange:a8.length, a9];
  }
}

@end