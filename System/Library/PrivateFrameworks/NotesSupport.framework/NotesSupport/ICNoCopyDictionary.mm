@interface ICNoCopyDictionary
- (ICNoCopyDictionary)initWithCFDictionary:(__CFDictionary *)dictionary;
- (ICNoCopyDictionary)initWithCapacity:(unint64_t)capacity;
- (id)allKeys;
- (id)allValues;
- (id)keyEnumerator;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectEnumerator;
- (id)objectForKey:(id)key;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)dealloc;
- (void)getObjects:(id *)objects andKeys:(id *)keys count:(unint64_t)count;
- (void)setObject:(id)object forUncopiedKey:(id)key;
@end

@implementation ICNoCopyDictionary

- (ICNoCopyDictionary)initWithCFDictionary:(__CFDictionary *)dictionary
{
  v6.receiver = self;
  v6.super_class = ICNoCopyDictionary;
  v4 = [(ICNoCopyDictionary *)&v6 init];
  if (v4)
  {
    v4->mDictionary = CFDictionaryCreateMutableCopy(0, 0, dictionary);
  }

  return v4;
}

- (ICNoCopyDictionary)initWithCapacity:(unint64_t)capacity
{
  v6.receiver = self;
  v6.super_class = ICNoCopyDictionary;
  v4 = [(ICNoCopyDictionary *)&v6 init];
  if (v4)
  {
    v4->mDictionary = CFDictionaryCreateMutable(0, capacity, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  return v4;
}

- (void)dealloc
{
  mDictionary = self->mDictionary;
  if (mDictionary)
  {
    CFRelease(mDictionary);
    self->mDictionary = 0;
  }

  v4.receiver = self;
  v4.super_class = ICNoCopyDictionary;
  [(ICNoCopyDictionary *)&v4 dealloc];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  mDictionary = self->mDictionary;

  return [v4 initWithCFDictionary:mDictionary];
}

- (void)setObject:(id)object forUncopiedKey:(id)key
{
  if (!object)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Attempt to insert nil value into %@", objc_opt_class()}];
    if (key)
    {
      goto LABEL_3;
    }

LABEL_7:
    [ICAssert handleFailedAssertWithCondition:"aKey != ((void*)0)" functionName:"[ICNoCopyDictionary setObject:forUncopiedKey:]" simulateCrash:1 showAlert:0 format:@"Inserting a value into no-copy dictionary with a NULL key into %p! Object is %@", self, object];
    return;
  }

  if (!key)
  {
    goto LABEL_7;
  }

LABEL_3:
  mDictionary = self->mDictionary;

  CFDictionarySetValue(mDictionary, key, object);
}

- (void)getObjects:(id *)objects andKeys:(id *)keys count:(unint64_t)count
{
  Count = CFDictionaryGetCount(self->mDictionary);
  if (Count >= count)
  {
    countCopy = count;
  }

  else
  {
    countCopy = Count;
  }

  if (countCopy)
  {
    v11 = (objects | keys) == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    mDictionary = self->mDictionary;

    CFDictionaryGetKeysAndValues(mDictionary, keys, objects);
  }
}

- (id)objectForKey:(id)key
{
  if (key)
  {
    return CFDictionaryGetValue(self->mDictionary, key);
  }

  else
  {
    return 0;
  }
}

- (id)allValues
{
  values[16] = *MEMORY[0x1E69E9840];
  Count = CFDictionaryGetCount(self->mDictionary);
  v4 = Count;
  v5 = values;
  if (Count >= 0x10)
  {
    v5 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  }

  CFDictionaryGetKeysAndValues(self->mDictionary, 0, v5);
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:v4];
  if (v5 != values)
  {
    free(v5);
  }

  return v6;
}

- (id)objectEnumerator
{
  allValues = [(ICNoCopyDictionary *)self allValues];

  return [allValues objectEnumerator];
}

- (id)allKeys
{
  keys[16] = *MEMORY[0x1E69E9840];
  Count = CFDictionaryGetCount(self->mDictionary);
  v4 = Count;
  v5 = keys;
  if (Count >= 0x10)
  {
    v5 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  }

  CFDictionaryGetKeysAndValues(self->mDictionary, v5, 0);
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:v4];
  if (v5 != keys)
  {
    free(v5);
  }

  return v6;
}

- (id)keyEnumerator
{
  allKeys = [(ICNoCopyDictionary *)self allKeys];

  return [allKeys objectEnumerator];
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  Count = CFDictionaryGetCount(self->mDictionary);
  if (state->var0 >= Count)
  {
    return 0;
  }

  v10 = Count;
  v11 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  CFDictionaryGetKeysAndValues(self->mDictionary, v11, 0);
  if (v10 - state->var0 < count)
  {
    count = v10 - state->var0;
  }

  memcpy(objects, &v11[state->var0], 8 * count);
  free(v11);
  state->var0 += count;
  state->var1 = objects;
  state->var2 = &state->var2;
  return count;
}

@end