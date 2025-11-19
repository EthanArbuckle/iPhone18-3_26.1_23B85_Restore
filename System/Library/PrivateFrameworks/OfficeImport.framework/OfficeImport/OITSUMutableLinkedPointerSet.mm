@interface OITSUMutableLinkedPointerSet
- (BOOL)isEqual:(id)a3;
- (OITSUMutableLinkedPointerSet)init;
- (id)array;
- (id)firstObject;
- (id)objectEnumerator;
- (id)objectEnumeratorAfterObject:(id)a3;
- (id)reverseObjectEnumerator;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)addObject:(id)a3;
- (void)dealloc;
- (void)insertFirstObject:(id)a3;
- (void)removeAllObjects;
- (void)removeObject:(id)a3;
@end

@implementation OITSUMutableLinkedPointerSet

- (OITSUMutableLinkedPointerSet)init
{
  v5.receiver = self;
  v5.super_class = OITSUMutableLinkedPointerSet;
  v2 = [(OITSUMutableLinkedPointerSet *)&v5 init];
  if (v2)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
    v2->mHead = 0;
    v2->mTail = 0;
    v2->mDictionary = Mutable;
  }

  return v2;
}

- (void)dealloc
{
  mDictionary = self->mDictionary;
  if (mDictionary)
  {
    CFRelease(mDictionary);
  }

  v4.receiver = self;
  v4.super_class = OITSUMutableLinkedPointerSet;
  [(OITSUMutableLinkedPointerSet *)&v4 dealloc];
}

- (id)objectEnumerator
{
  v2 = [[OITSULinkedPointerSetEnumerator alloc] initWithFirstEntry:self->mHead];

  return v2;
}

- (id)reverseObjectEnumerator
{
  v2 = [[OITSULinkedPointerSetReverseEnumerator alloc] initWithLastEntry:self->mTail];

  return v2;
}

- (id)objectEnumeratorAfterObject:(id)a3
{
  result = CFDictionaryGetValue(self->mDictionary, a3);
  if (result)
  {
    v4 = [[OITSULinkedPointerSetEnumerator alloc] initWithFirstEntry:*(result + 3)];

    return v4;
  }

  return result;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  var0 = a3->var0;
  p_mHead = &self->mHead;
  if (a3->var0)
  {
    p_mHead = (a3->var0 + 24);
  }

  v7 = *p_mHead;
  result = 0;
  if (v7)
  {
    v9 = a5 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    do
    {
      var0 = v7;
      a4[result++] = v7->mObject;
      v7 = v7->mNext;
      if (v7)
      {
        v10 = result >= a5;
      }

      else
      {
        v10 = 1;
      }
    }

    while (!v10);
  }

  a3->var0 = var0;
  a3->var1 = a4;
  a3->var2 = &a3->var2;
  return result;
}

- (id)firstObject
{
  mHead = self->mHead;
  if (mHead)
  {
    return mHead->mObject;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = *(a3 + 2);
      mHead = self->mHead;
      if (!mHead)
      {
LABEL_10:
        LOBYTE(v6) = v7 == 0;
        return v6;
      }

      while (v7)
      {
        mObject = mHead->mObject;
        if (mObject != *(v7 + 8))
        {
          v6 = [mObject isEqual:?];
          if (!v6)
          {
            return v6;
          }
        }

        v7 = *(v7 + 24);
        mHead = mHead->mNext;
        if (!mHead)
        {
          goto LABEL_10;
        }
      }
    }

    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)addObject:(id)a3
{
  if (!CFDictionaryContainsKey(self->mDictionary, a3))
  {
    v5 = [[OITSULinkedPointerSetEntry alloc] initWithObject:a3 previousEntry:self->mTail];
    v8 = v5;
    mTail = self->mTail;
    if (mTail)
    {
      p_mNext = &mTail->mNext;
    }

    else
    {
      p_mNext = &self->mHead;
    }

    *p_mNext = v5;
    self->mTail = v5;
    CFDictionarySetValue(self->mDictionary, a3, v5);
  }
}

- (void)insertFirstObject:(id)a3
{
  [(OITSUMutableLinkedPointerSet *)self removeObject:?];
  v5 = [[OITSULinkedPointerSetEntry alloc] initWithObject:a3 previousEntry:0];
  mHead = self->mHead;
  v7 = self;
  v8 = v5;
  if (mHead)
  {
    mHead->mPrevious = v5;
    v8 = self->mHead;
    v7 = v5;
  }

  v7->mTail = v8;
  self->mHead = v5;
  v9 = v5;
  CFDictionarySetValue(self->mDictionary, a3, v5);
}

- (void)removeObject:(id)a3
{
  Value = CFDictionaryGetValue(self->mDictionary, a3);
  if (Value)
  {
    if (Value == self->mHead)
    {
      self->mHead = Value->mNext;
    }

    mPrevious = Value->mPrevious;
    if (Value == self->mTail)
    {
      self->mTail = mPrevious;
    }

    mNext = Value->mNext;
    if (mPrevious)
    {
      mPrevious->mNext = mNext;
    }

    if (mNext)
    {
      mNext->mPrevious = Value->mPrevious;
    }

    mDictionary = self->mDictionary;

    CFDictionaryRemoveValue(mDictionary, a3);
  }
}

- (void)removeAllObjects
{
  self->mHead = 0;
  self->mTail = 0;
  CFDictionaryRemoveAllValues(self->mDictionary);
}

- (id)array
{
  Count = CFDictionaryGetCount(self->mDictionary);
  result = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  if (result)
  {
    v5 = result;
    CFDictionaryGetKeysAndValues(self->mDictionary, result, 0);
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:Count];
    free(v5);
    return v6;
  }

  return result;
}

@end