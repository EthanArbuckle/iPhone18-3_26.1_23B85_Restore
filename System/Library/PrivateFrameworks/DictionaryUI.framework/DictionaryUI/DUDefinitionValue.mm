@interface DUDefinitionValue
- (DUDefinitionValue)initWithDefinitionDictionary:(id)a3 term:(id)a4;
- (NSAttributedString)definition;
- (NSDictionary)definitionElements;
- (NSString)longDefinition;
- (id)_HTMLDefinitionForType:(int64_t)a3;
- (id)description;
- (void)dealloc;
@end

@implementation DUDefinitionValue

- (DUDefinitionValue)initWithDefinitionDictionary:(id)a3 term:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = DUDefinitionValue;
  v8 = [(DUDefinitionValue *)&v15 init];
  if (v8)
  {
    v9 = [v6 localizedDictionaryName];
    v10 = [v9 copy];
    localizedDictionaryName = v8->_localizedDictionaryName;
    v8->_localizedDictionaryName = v10;

    v12 = [v7 copy];
    term = v8->_term;
    v8->_term = v12;

    if ([v6 dictionaryRef])
    {
      [(NSString *)v8->_term length];
      v8->_foundRecordRefs = DCSCopyDefinitionRecords();
    }
  }

  return v8;
}

- (void)dealloc
{
  foundRecordRefs = self->_foundRecordRefs;
  if (foundRecordRefs)
  {
    CFRelease(foundRecordRefs);
    self->_foundRecordRefs = 0;
  }

  v4.receiver = self;
  v4.super_class = DUDefinitionValue;
  [(DUDefinitionValue *)&v4 dealloc];
}

- (NSAttributedString)definition
{
  definition = self->_definition;
  if (!definition)
  {
    if (self->_foundRecordRefs)
    {
      v4 = [(DUDefinitionValue *)self _HTMLDefinitionForType:2];
      v5 = [v4 dataUsingEncoding:10];

      v6 = [objc_alloc(MEMORY[0x277D74230]) initWithData:v5 options:0];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 attributedString];
        v9 = [v8 copy];
        v10 = self->_definition;
        self->_definition = v9;
      }

      definition = self->_definition;
    }

    else
    {
      definition = 0;
    }
  }

  return definition;
}

- (NSString)longDefinition
{
  longDefinition = self->_longDefinition;
  if (!longDefinition)
  {
    if (self->_foundRecordRefs)
    {
      v4 = [(DUDefinitionValue *)self _HTMLDefinitionForType:1];
      v5 = [v4 copy];
      v6 = self->_longDefinition;
      self->_longDefinition = v5;

      longDefinition = self->_longDefinition;
    }

    else
    {
      longDefinition = 0;
    }
  }

  return longDefinition;
}

- (NSDictionary)definitionElements
{
  if (!self->_definitionElements)
  {
    foundRecordRefs = self->_foundRecordRefs;
    if (foundRecordRefs)
    {
      Count = CFArrayGetCount(foundRecordRefs);
      if (Count >= 1)
      {
        v7 = Count;
        v8 = 0;
        while (1)
        {
          CFArrayGetValueAtIndex(self->_foundRecordRefs, v8);
          v9 = DCSRecordCopyTextElements();
          if (v9)
          {
            v10 = v9;
            v11 = [v9 copy];
            CFRelease(v10);
          }

          else
          {
            v11 = 0;
          }

          if ([(NSDictionary *)v11 count])
          {
            break;
          }

          if (v7 == ++v8)
          {
            goto LABEL_2;
          }
        }

        definitionElements = self->_definitionElements;
        self->_definitionElements = v11;
      }
    }
  }

LABEL_2:
  v3 = self->_definitionElements;

  return v3;
}

- (id)_HTMLDefinitionForType:(int64_t)a3
{
  foundRecordRefs = self->_foundRecordRefs;
  if (foundRecordRefs && (Count = CFArrayGetCount(foundRecordRefs), Count >= 1))
  {
    v6 = Count;
    v7 = 0;
    for (i = 0; i != v6; ++i)
    {
      CFArrayGetValueAtIndex(self->_foundRecordRefs, i);
      v9 = DCSRecordCopyDefinition();
      if (v9)
      {
        v10 = v9;
        if (!v7)
        {
          v7 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
        }

        [v7 appendString:v10];
        CFRelease(v10);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@<%p>: localizedDictionaryName: %@, term: %@", v5, self, self->_localizedDictionaryName, self->_term];

  return v6;
}

@end