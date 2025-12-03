@interface OITSUIntToIntDictionary
- (OITSUIntToIntDictionary)initWithCapacity:(unint64_t)capacity;
- (id)allKeys;
- (id)allValues;
- (id)arrayOfBoxedKeys;
- (id)description;
- (id)keyEnumerator;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)applyFromIntToIntDictionary:(id)dictionary;
- (void)dealloc;
- (void)enumerateKeysAndValuesUsingBlock:(id)block;
@end

@implementation OITSUIntToIntDictionary

- (OITSUIntToIntDictionary)initWithCapacity:(unint64_t)capacity
{
  v4 = *MEMORY[0x277CBF138];
  keyCallBacks.retain = 0;
  keyCallBacks.release = 0;
  keyCallBacks.version = v4;
  keyCallBacks.equal = 0;
  keyCallBacks.hash = 0;
  keyCallBacks.copyDescription = [OITSUIntToIntDictionary initWithCapacity:]::Local::IntegerKeyDescription;
  valueCallBacks.version = *MEMORY[0x277CBF150];
  valueCallBacks.retain = 0;
  valueCallBacks.release = 0;
  valueCallBacks.copyDescription = [OITSUIntToIntDictionary initWithCapacity:]::Local::IntegerKeyDescription;
  valueCallBacks.equal = 0;
  v7.receiver = self;
  v7.super_class = OITSUIntToIntDictionary;
  v5 = [(OITSUIntToIntDictionary *)&v7 init];
  if (v5)
  {
    v5->mDictionary = CFDictionaryCreateMutable(0, capacity, &keyCallBacks, &valueCallBacks);
  }

  return v5;
}

- (void)dealloc
{
  CFRelease(self->mDictionary);
  v3.receiver = self;
  v3.super_class = OITSUIntToIntDictionary;
  [(OITSUIntToIntDictionary *)&v3 dealloc];
}

- (id)keyEnumerator
{
  v2 = [[OITSUIntToIntDictionaryKeyEnumerator alloc] initWithIntegerKeyDictionary:self];

  return v2;
}

- (void)applyFromIntToIntDictionary:(id)dictionary
{
  if (dictionary)
  {
    v5 = [dictionary count];
    v6 = malloc_type_calloc(v5, 8uLL, 0x10040436913F5uLL);
    CFDictionaryGetKeysAndValues([dictionary p_cfDictionary], v6, 0);
    if (v5)
    {
      v7 = 0;
      v8 = 1;
      do
      {
        -[OITSUIntToIntDictionary setInt:forKey:](self, "setInt:forKey:", [dictionary intForKey:v6[v7]], v6[v7]);
        v7 = v8;
      }

      while (v5 > v8++);
    }

    free(v6);
  }
}

- (id)arrayOfBoxedKeys
{
  v3 = [(OITSUIntToIntDictionary *)self count];
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[OITSUIntToIntDictionary count](self, "count")}];
  v5 = malloc_type_calloc(v3, 8uLL, 0x10040436913F5uLL);
  CFDictionaryGetKeysAndValues([(OITSUIntToIntDictionary *)self p_cfDictionary], v5, 0);
  if (v3)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:v5[v6]];
      [v4 addObject:v8];

      v6 = v7;
    }

    while (v3 > v7++);
  }

  free(v5);
  v10 = [MEMORY[0x277CBEA60] arrayWithArray:v4];

  return v10;
}

- (id)allKeys
{
  v3 = [(OITSUIntToIntDictionary *)self count];
  v4 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v5 = malloc_type_calloc(v3, 8uLL, 0x100004000313F17uLL);
  CFDictionaryGetKeysAndValues([(OITSUIntToIntDictionary *)self p_cfDictionary], v5, 0);
  if (v3)
  {
    v6 = v5;
    do
    {
      v7 = *v6++;
      [v4 addIndex:v7];
      --v3;
    }

    while (v3);
  }

  free(v5);
  return v4;
}

- (id)allValues
{
  v3 = [(OITSUIntToIntDictionary *)self count];
  v4 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v5 = malloc_type_calloc(v3, 8uLL, 0x100004000313F17uLL);
  CFDictionaryGetKeysAndValues([(OITSUIntToIntDictionary *)self p_cfDictionary], 0, v5);
  if (v3)
  {
    v6 = v5;
    do
    {
      v7 = *v6++;
      [v4 addIndex:v7];
      --v3;
    }

    while (v3);
  }

  free(v5);
  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(OITSUIntToIntDictionary);
  mDictionary = v4->mDictionary;
  if (mDictionary)
  {
    CFRelease(mDictionary);
  }

  v4->mDictionary = CFDictionaryCreateMutableCopy(0, 0, self->mDictionary);
  return v4;
}

- (id)description
{
  keyEnumerator = [(OITSUIntToIntDictionary *)self keyEnumerator];
  string = [MEMORY[0x277CCAB68] string];
  [string appendString:@"{\n"];
  nextKey = [keyEnumerator nextKey];
  if (nextKey != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = nextKey; i != 0x7FFFFFFFFFFFFFFFLL; i = [keyEnumerator nextKey])
    {
      v7 = [(OITSUIntToIntDictionary *)self intForKey:i];
      [string appendString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%ld = %ld;\n", i, v7)}];
    }
  }

  [string appendString:@"}"];
  return string;
}

- (void)enumerateKeysAndValuesUsingBlock:(id)block
{
  if (block)
  {
    keyEnumerator = [(OITSUIntToIntDictionary *)self keyEnumerator];
    nextKey = [keyEnumerator nextKey];
    if (nextKey != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = nextKey; i != 0x7FFFFFFFFFFFFFFFLL; i = [keyEnumerator nextKey])
      {
        Value = CFDictionaryGetValue(self->mDictionary, i);
        v9 = 0;
        (*(block + 2))(block, i, Value, &v9);
        if (v9)
        {
          break;
        }
      }
    }
  }
}

@end