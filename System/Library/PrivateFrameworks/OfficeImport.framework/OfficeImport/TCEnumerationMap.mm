@interface TCEnumerationMap
- (TCEnumerationMap)initWithStructs:(const TCEnumerationStruct *)structs count:(int)count caseSensitive:(BOOL)sensitive;
- (id)stringForValue:(int)value;
- (int64_t)valueForString:(id)string;
- (void)dealloc;
@end

@implementation TCEnumerationMap

- (TCEnumerationMap)initWithStructs:(const TCEnumerationStruct *)structs count:(int)count caseSensitive:(BOOL)sensitive
{
  v16.receiver = self;
  v16.super_class = TCEnumerationMap;
  v8 = [(TCEnumerationMap *)&v16 init];
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
  v3.super_class = TCEnumerationMap;
  [(TCEnumerationMap *)&v3 dealloc];
}

- (int64_t)valueForString:(id)string
{
  v3 = -130883970;
  if (string)
  {
    m_stringToValue = self->m_stringToValue;
    if (self->m_caseSensitive)
    {
      v5 = self->m_stringToValue;
      stringCopy = string;
    }

    else
    {
      stringCopy = [string lowercaseString];
      v5 = m_stringToValue;
    }

    Value = CFDictionaryGetValue(v5, stringCopy);
    if (Value == -130883970)
    {
      v8 = 0;
    }

    else
    {
      v8 = Value;
    }

    if (Value)
    {
      return v8;
    }
  }

  return v3;
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