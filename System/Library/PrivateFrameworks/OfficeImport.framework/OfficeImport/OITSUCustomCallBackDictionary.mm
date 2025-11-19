@interface OITSUCustomCallBackDictionary
- (OITSUCustomCallBackDictionary)initWithCFDictionary:(__CFDictionary *)a3;
- (OITSUCustomCallBackDictionary)initWithCapacity:(unint64_t)a3 keyCallBacks:(id *)a4 valueCallBacks:(id *)a5;
- (id)allKeys;
- (id)allValues;
- (id)keyEnumerator;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)objectEnumerator;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)dealloc;
- (void)getObjects:(id *)a3 andKeys:(id *)a4 count:(unint64_t)a5;
- (void)setObject:(id)a3 forUncopiedKey:(id)a4;
@end

@implementation OITSUCustomCallBackDictionary

- (OITSUCustomCallBackDictionary)initWithCFDictionary:(__CFDictionary *)a3
{
  v6.receiver = self;
  v6.super_class = OITSUCustomCallBackDictionary;
  v4 = [(OITSUCustomCallBackDictionary *)&v6 init];
  if (v4)
  {
    v4->mDictionary = CFDictionaryCreateMutableCopy(0, 0, a3);
  }

  return v4;
}

- (OITSUCustomCallBackDictionary)initWithCapacity:(unint64_t)a3 keyCallBacks:(id *)a4 valueCallBacks:(id *)a5
{
  v10.receiver = self;
  v10.super_class = OITSUCustomCallBackDictionary;
  v8 = [(OITSUCustomCallBackDictionary *)&v10 init];
  if (v8)
  {
    v8->mDictionary = CFDictionaryCreateMutable(0, a3, a4, a5);
  }

  return v8;
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
  v4.super_class = OITSUCustomCallBackDictionary;
  [(OITSUCustomCallBackDictionary *)&v4 dealloc];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  mDictionary = self->mDictionary;

  return [v4 initWithCFDictionary:mDictionary];
}

- (void)setObject:(id)a3 forUncopiedKey:(id)a4
{
  if (!a3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Attempt to insert nil value into %@", objc_opt_class()}];
  }

  mDictionary = self->mDictionary;

  CFDictionarySetValue(mDictionary, a4, a3);
}

- (void)getObjects:(id *)a3 andKeys:(id *)a4 count:(unint64_t)a5
{
  Count = CFDictionaryGetCount(self->mDictionary);
  if (Count >= a5)
  {
    v10 = a5;
  }

  else
  {
    v10 = Count;
  }

  if (v10)
  {
    v11 = (a3 | a4) == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    mDictionary = self->mDictionary;

    CFDictionaryGetKeysAndValues(mDictionary, a4, a3);
  }
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

- (id)objectEnumerator
{
  v2 = [(OITSUCustomCallBackDictionary *)self allValues];

  return [v2 objectEnumerator];
}

- (id)allKeys
{
  keys[16] = *MEMORY[0x277D85DE8];
  Count = CFDictionaryGetCount(self->mDictionary);
  v4 = Count;
  v5 = keys;
  if (Count >= 0x10)
  {
    v5 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  }

  CFDictionaryGetKeysAndValues(self->mDictionary, v5, 0);
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:v4];
  if (v5 != keys)
  {
    free(v5);
  }

  return v6;
}

- (id)keyEnumerator
{
  v2 = [(OITSUCustomCallBackDictionary *)self allKeys];

  return [v2 objectEnumerator];
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  Count = CFDictionaryGetCount(self->mDictionary);
  if (a3->var0 >= Count)
  {
    return 0;
  }

  v10 = Count;
  v11 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  CFDictionaryGetKeysAndValues(self->mDictionary, v11, 0);
  if (v10 - a3->var0 < a5)
  {
    a5 = v10 - a3->var0;
  }

  memcpy(a4, &v11[a3->var0], 8 * a5);
  free(v11);
  a3->var0 += a5;
  a3->var1 = a4;
  a3->var2 = &a3->var2;
  return a5;
}

@end