@interface OITSUIntegerKeyDictionary
- (OITSUIntegerKeyDictionary)initWithCapacity:(unint64_t)a3;
- (id)allValues;
- (id)description;
- (id)keyEnumerator;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)valueEnumerator;
- (void)dealloc;
@end

@implementation OITSUIntegerKeyDictionary

- (OITSUIntegerKeyDictionary)initWithCapacity:(unint64_t)a3
{
  v4 = *MEMORY[0x277CBF138];
  keyCallBacks.retain = 0;
  keyCallBacks.release = 0;
  keyCallBacks.equal = 0;
  keyCallBacks.hash = 0;
  keyCallBacks.copyDescription = [OITSUIntegerKeyDictionary initWithCapacity:]::Local::IntegerKeyDescription;
  v7.receiver = self;
  v7.super_class = OITSUIntegerKeyDictionary;
  keyCallBacks.version = v4;
  v5 = [(OITSUIntegerKeyDictionary *)&v7 init];
  if (v5)
  {
    v5->mDictionary = CFDictionaryCreateMutable(0, a3, &keyCallBacks, MEMORY[0x277CBF150]);
  }

  return v5;
}

- (void)dealloc
{
  [(OITSUIntegerKeyDictionary *)self removeAllObjects];
  CFRelease(self->mDictionary);
  self->mDictionary = 0;
  v3.receiver = self;
  v3.super_class = OITSUIntegerKeyDictionary;
  [(OITSUIntegerKeyDictionary *)&v3 dealloc];
}

- (id)keyEnumerator
{
  v2 = [[OITSUIntegerKeyDictionaryKeyEnumerator alloc] initWithIntegerKeyDictionary:self];

  return v2;
}

- (id)allValues
{
  values[16] = *MEMORY[0x277D85DE8];
  Count = CFDictionaryGetCount(self->mDictionary);
  v4 = Count;
  v5 = values;
  if (Count >= 0x10)
  {
    v5 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  }

  CFDictionaryGetKeysAndValues(self->mDictionary, 0, v5);
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:v4];
  if (v5 != values)
  {
    free(v5);
  }

  return v6;
}

- (id)valueEnumerator
{
  v2 = [(OITSUIntegerKeyDictionary *)self allValues];

  return [v2 objectEnumerator];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(OITSUIntegerKeyDictionary);
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
  v3 = [(OITSUIntegerKeyDictionary *)self keyEnumerator];
  v4 = [MEMORY[0x277CCAB68] string];
  [v4 appendString:@"{\n"];
  v5 = [v3 nextKey];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = v5; i != 0x7FFFFFFFFFFFFFFFLL; i = [v3 nextKey])
    {
      v7 = [(OITSUIntegerKeyDictionary *)self objectForKey:i];
      [v4 appendString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%ld = %@;\n", i, objc_msgSend(v7, "description"))}];
    }
  }

  [v4 appendString:@"}"];
  return v4;
}

@end