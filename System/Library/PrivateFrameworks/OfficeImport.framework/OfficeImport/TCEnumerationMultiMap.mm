@interface TCEnumerationMultiMap
- (TCEnumerationMultiMap)initWithStructs:(const TCEnumerationStruct *)structs count:(int)count caseSensitive:(BOOL)sensitive;
- (id)stringForValue:(int)value;
- (int64_t)valueForString:(id)string;
- (void)dealloc;
@end

@implementation TCEnumerationMultiMap

- (TCEnumerationMultiMap)initWithStructs:(const TCEnumerationStruct *)structs count:(int)count caseSensitive:(BOOL)sensitive
{
  v16.receiver = self;
  v16.super_class = TCEnumerationMultiMap;
  v8 = [(TCEnumerationMultiMap *)&v16 init];
  if (v8)
  {
    v8->m_valueToString = CFDictionaryCreateMutable(0, count, 0, MEMORY[0x277CBF150]);
    v8->m_stringToValue = CFDictionaryCreateMutable(0, count, MEMORY[0x277CBED60], 0);
    v8->m_caseSensitive = sensitive;
    if (count >= 1)
    {
      countCopy = count;
      p_var1 = &structs->var1;
      do
      {
        v11 = *(p_var1 - 2);
        v13 = *p_var1;
        p_var1 += 2;
        v12 = v13;
        if (!v11)
        {
          v11 = -130883970;
        }

        v14 = v11;
        CFDictionaryAddValue(v8->m_valueToString, v11, v12);
        CFDictionaryAddValue(v8->m_stringToValue, v12, v14);
        --countCopy;
      }

      while (countCopy);
    }
  }

  return v8;
}

- (void)dealloc
{
  CFRelease(self->m_valueToString);
  CFRelease(self->m_stringToValue);
  self->m_valueToString = 0;
  self->m_stringToValue = 0;
  v3.receiver = self;
  v3.super_class = TCEnumerationMultiMap;
  [(TCEnumerationMultiMap *)&v3 dealloc];
}

- (int64_t)valueForString:(id)string
{
  stringCopy = string;
  m_stringToValue = self->m_stringToValue;
  if (!self->m_caseSensitive)
  {
    stringCopy = [string lowercaseString];
  }

  Value = CFDictionaryGetValue(m_stringToValue, stringCopy);
  if (Value == -130883970)
  {
    v6 = 0;
  }

  else
  {
    v6 = Value;
  }

  if (Value)
  {
    return v6;
  }

  else
  {
    return -130883970;
  }
}

- (id)stringForValue:(int)value
{
  if (value)
  {
    valueCopy = value;
  }

  else
  {
    valueCopy = -130883970;
  }

  return CFDictionaryGetValue(self->m_valueToString, valueCopy);
}

@end