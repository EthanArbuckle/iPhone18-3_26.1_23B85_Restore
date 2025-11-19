@interface CUIKOccurrenceSet
- (BOOL)containsOccurrence:(id)a3;
- (BOOL)containsOccurrenceWithID:(id)a3 date:(id)a4;
- (CUIKOccurrenceSet)init;
- (id)occurrenceWithID:(id)a3 date:(id)a4;
- (id)occurrenceWithOccurrence:(id)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)addOccurrence:(id)a3;
- (void)removeOccurrence:(id)a3;
- (void)removeOccurrenceWithID:(id)a3 date:(id)a4;
@end

@implementation CUIKOccurrenceSet

- (CUIKOccurrenceSet)init
{
  v5.receiver = self;
  v5.super_class = CUIKOccurrenceSet;
  v2 = [(CUIKOccurrenceSet *)&v5 init];
  if (v2)
  {
    v4 = *byte_1F4A9FB70;
    v2->_dictionary = CFDictionaryCreateMutable(0, 0, &v4, MEMORY[0x1E695E9E8]);
  }

  return v2;
}

- (void)addOccurrence:(id)a3
{
  memset(key, 0, sizeof(key));
  v4 = a3;
  CUIKOccurrenceSetKeyMakeFromEvent(v4, key);
  CFDictionaryAddValue(self->_dictionary, key, v4);
}

- (void)removeOccurrence:(id)a3
{
  memset(key, 0, sizeof(key));
  CUIKOccurrenceSetKeyMakeFromEvent(a3, key);
  CFDictionaryRemoveValue(self->_dictionary, key);
}

- (void)removeOccurrenceWithID:(id)a3 date:(id)a4
{
  memset(key, 0, sizeof(key));
  CUIKOccurrenceSetKeyMake(a3, a4, key);
  CFDictionaryRemoveValue(self->_dictionary, key);
}

- (BOOL)containsOccurrence:(id)a3
{
  memset(key, 0, sizeof(key));
  CUIKOccurrenceSetKeyMakeFromEvent(a3, key);
  return CFDictionaryContainsKey(self->_dictionary, key) != 0;
}

- (BOOL)containsOccurrenceWithID:(id)a3 date:(id)a4
{
  memset(key, 0, sizeof(key));
  CUIKOccurrenceSetKeyMake(a3, a4, key);
  return CFDictionaryContainsKey(self->_dictionary, key) != 0;
}

- (id)occurrenceWithOccurrence:(id)a3
{
  memset(key, 0, sizeof(key));
  CUIKOccurrenceSetKeyMakeFromEvent(a3, key);
  v4 = CFDictionaryGetValue(self->_dictionary, key);

  return v4;
}

- (id)occurrenceWithID:(id)a3 date:(id)a4
{
  memset(key, 0, sizeof(key));
  CUIKOccurrenceSetKeyMake(a3, a4, key);
  v5 = CFDictionaryGetValue(self->_dictionary, key);

  return v5;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v14[1] = *MEMORY[0x1E69E9840];
  v9 = v14 - ((8 * a5 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v9, 8 * a5);
  v10 = [(__CFDictionary *)self->_dictionary countByEnumeratingWithState:a3 objects:v9 count:a5];
  if (v10 > a5)
  {
    abort();
  }

  v11 = v10;
  if (v10)
  {
    v12 = 0;
    do
    {
      a4[v12] = CFDictionaryGetValue(self->_dictionary, a3->var1[v12]);
      ++v12;
    }

    while (v11 != v12);
  }

  a3->var1 = a4;
  return v11;
}

@end