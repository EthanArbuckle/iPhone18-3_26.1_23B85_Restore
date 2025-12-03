@interface CUIKOccurrenceSet
- (BOOL)containsOccurrence:(id)occurrence;
- (BOOL)containsOccurrenceWithID:(id)d date:(id)date;
- (CUIKOccurrenceSet)init;
- (id)occurrenceWithID:(id)d date:(id)date;
- (id)occurrenceWithOccurrence:(id)occurrence;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)addOccurrence:(id)occurrence;
- (void)removeOccurrence:(id)occurrence;
- (void)removeOccurrenceWithID:(id)d date:(id)date;
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

- (void)addOccurrence:(id)occurrence
{
  memset(key, 0, sizeof(key));
  occurrenceCopy = occurrence;
  CUIKOccurrenceSetKeyMakeFromEvent(occurrenceCopy, key);
  CFDictionaryAddValue(self->_dictionary, key, occurrenceCopy);
}

- (void)removeOccurrence:(id)occurrence
{
  memset(key, 0, sizeof(key));
  CUIKOccurrenceSetKeyMakeFromEvent(occurrence, key);
  CFDictionaryRemoveValue(self->_dictionary, key);
}

- (void)removeOccurrenceWithID:(id)d date:(id)date
{
  memset(key, 0, sizeof(key));
  CUIKOccurrenceSetKeyMake(d, date, key);
  CFDictionaryRemoveValue(self->_dictionary, key);
}

- (BOOL)containsOccurrence:(id)occurrence
{
  memset(key, 0, sizeof(key));
  CUIKOccurrenceSetKeyMakeFromEvent(occurrence, key);
  return CFDictionaryContainsKey(self->_dictionary, key) != 0;
}

- (BOOL)containsOccurrenceWithID:(id)d date:(id)date
{
  memset(key, 0, sizeof(key));
  CUIKOccurrenceSetKeyMake(d, date, key);
  return CFDictionaryContainsKey(self->_dictionary, key) != 0;
}

- (id)occurrenceWithOccurrence:(id)occurrence
{
  memset(key, 0, sizeof(key));
  CUIKOccurrenceSetKeyMakeFromEvent(occurrence, key);
  v4 = CFDictionaryGetValue(self->_dictionary, key);

  return v4;
}

- (id)occurrenceWithID:(id)d date:(id)date
{
  memset(key, 0, sizeof(key));
  CUIKOccurrenceSetKeyMake(d, date, key);
  v5 = CFDictionaryGetValue(self->_dictionary, key);

  return v5;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  v14[1] = *MEMORY[0x1E69E9840];
  v9 = v14 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v9, 8 * count);
  v10 = [(__CFDictionary *)self->_dictionary countByEnumeratingWithState:state objects:v9 count:count];
  if (v10 > count)
  {
    abort();
  }

  v11 = v10;
  if (v10)
  {
    v12 = 0;
    do
    {
      objects[v12] = CFDictionaryGetValue(self->_dictionary, state->var1[v12]);
      ++v12;
    }

    while (v11 != v12);
  }

  state->var1 = objects;
  return v11;
}

@end