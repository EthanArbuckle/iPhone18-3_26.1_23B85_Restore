@interface UniqueAnimationKey
- (BOOL)getBytes:(void *)bytes maxLength:(unint64_t)length usedLength:(unint64_t *)usedLength encoding:(unint64_t)encoding options:(unint64_t)options range:(_NSRange)range remainingRange:(_NSRange *)remainingRange;
- (UniqueAnimationKey)initWithKey:(unint64_t)key;
- (unint64_t)length;
- (unsigned)characterAtIndex:(unint64_t)index;
@end

@implementation UniqueAnimationKey

- (UniqueAnimationKey)initWithKey:(unint64_t)key
{
  v8.receiver = self;
  v8.super_class = UniqueAnimationKey;
  v4 = [(UniqueAnimationKey *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_key = key;
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

- (unsigned)characterAtIndex:(unint64_t)index
{
  if (index <= 0xA)
  {
    return kUniqueAnimationKeyPrefix[index];
  }

  key = self->_key;
  v5 = index - 11;
  if (index != 11)
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

- (BOOL)getBytes:(void *)bytes maxLength:(unint64_t)length usedLength:(unint64_t *)usedLength encoding:(unint64_t)encoding options:(unint64_t)options range:(_NSRange)range remainingRange:(_NSRange *)remainingRange
{
  length = range.length;
  if (remainingRange)
  {
    v10 = 0;
  }

  else
  {
    v10 = encoding == 30;
  }

  if (v10 && range.location == 0)
  {
    if (range.length >= length)
    {
      length = length;
    }

    if (length < 0xB)
    {
      return 0;
    }

    else
    {
      *(bytes + 7) = 762930539;
      *bytes = *"unique-key-";
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
          *(bytes + v16++) = (key & 0xF) + 97;
          if (v17 == 11)
          {
            break;
          }

          v18 = key > 0xF;
          key >>= 4;
        }

        while (v18);
      }

      *usedLength = v16;
      return 1;
    }
  }

  else
  {
    v19.receiver = self;
    v19.super_class = UniqueAnimationKey;
    return [(UniqueAnimationKey *)&v19 getBytes:bytes maxLength:length usedLength:usedLength encoding:encoding options:options range:range.location remainingRange:range.length, remainingRange];
  }
}

@end