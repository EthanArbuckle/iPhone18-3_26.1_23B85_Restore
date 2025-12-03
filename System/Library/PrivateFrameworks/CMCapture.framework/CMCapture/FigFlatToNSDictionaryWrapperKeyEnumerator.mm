@interface FigFlatToNSDictionaryWrapperKeyEnumerator
- (FigFlatToNSDictionaryWrapperKeyEnumerator)initWithFlatDictionary:(OpaqueFigFlatDictionary *)dictionary;
- (id)allObjects;
- (id)nextObject;
- (void)dealloc;
@end

@implementation FigFlatToNSDictionaryWrapperKeyEnumerator

- (FigFlatToNSDictionaryWrapperKeyEnumerator)initWithFlatDictionary:(OpaqueFigFlatDictionary *)dictionary
{
  if (!dictionary)
  {
    return 0;
  }

  v11.receiver = self;
  v11.super_class = FigFlatToNSDictionaryWrapperKeyEnumerator;
  v4 = [(FigFlatToNSDictionaryWrapperKeyEnumerator *)&v11 init];
  if (v4)
  {
    CountOfKeysWithValues = FigFlatDictionaryGetCountOfKeysWithValues(dictionary, v5);
    v4->_keysCount = CountOfKeysWithValues;
    v7 = malloc_type_malloc(8 * CountOfKeysWithValues, 0x2004093837F09uLL);
    v4->_keys = v7;
    keysCount = v4->_keysCount;
    if (FigFlatDictionaryGetKeysWithValues(dictionary, v7, &keysCount, v8) && v4->_keysCount == keysCount)
    {
      v4->_counter = 0;
      return v4;
    }

    return 0;
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
  v4.super_class = FigFlatToNSDictionaryWrapperKeyEnumerator;
  [(FigFlatToNSDictionaryWrapperKeyEnumerator *)&v4 dealloc];
}

- (id)allObjects
{
  array = [MEMORY[0x1E695DF70] array];
  for (i = self->_counter; i < self->_keysCount; self->_counter = i)
  {
    [array addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%s", FigFlatDictionaryKeyGetIdentifier(self->_keys[i]))}];
    i = self->_counter + 1;
  }

  return array;
}

- (id)nextObject
{
  counter = self->_counter;
  if (counter >= self->_keysCount)
  {
    return 0;
  }

  v3 = self->_keys[counter];
  self->_counter = counter + 1;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", FigFlatDictionaryKeyGetIdentifier(v3)];
}

@end