@interface OITSUIntegerKeyDictionaryKeyEnumerator
- (OITSUIntegerKeyDictionaryKeyEnumerator)initWithIntegerKeyDictionary:(id)dictionary;
- (int64_t)nextKey;
- (void)dealloc;
@end

@implementation OITSUIntegerKeyDictionaryKeyEnumerator

- (OITSUIntegerKeyDictionaryKeyEnumerator)initWithIntegerKeyDictionary:(id)dictionary
{
  v7.receiver = self;
  v7.super_class = OITSUIntegerKeyDictionaryKeyEnumerator;
  v4 = [(OITSUIntegerKeyDictionaryKeyEnumerator *)&v7 init];
  if (v4)
  {
    v5 = [dictionary count];
    v4->_count = v5;
    if (v5)
    {
      v4->_keys = malloc_type_calloc(v5, 8uLL, 0x10040436913F5uLL);
      CFDictionaryGetKeysAndValues([dictionary p_cfDictionary], v4->_keys, 0);
    }
  }

  return v4;
}

- (void)dealloc
{
  keys = self->_keys;
  if (keys)
  {
    free(keys);
  }

  v4.receiver = self;
  v4.super_class = OITSUIntegerKeyDictionaryKeyEnumerator;
  [(OITSUIntegerKeyDictionaryKeyEnumerator *)&v4 dealloc];
}

- (int64_t)nextKey
{
  index = self->_index;
  if (index >= self->_count)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  keys = self->_keys;
  self->_index = index + 1;
  return keys[index];
}

@end