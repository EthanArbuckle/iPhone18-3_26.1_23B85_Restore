@interface ICCRRegisterMultiValue
- (BOOL)isEqual:(id)equal;
- (ICCRRegisterMultiValue)initWithContents:(id)contents document:(id)document;
- (ICCRRegisterMultiValue)initWithICCRCoder:(id)coder;
- (ICCRRegisterMultiValue)initWithValues:(id)values;
- (id)allContents;
- (id)contents;
- (id)deltaSince:(id)since in:(id)in;
- (id)description;
- (void)encodeWithICCRCoder:(id)coder;
- (void)mergeWith:(id)with;
- (void)mergeWithRegisterMultiValue:(id)value;
- (void)setContents:(id)contents;
- (void)setDocument:(id)document;
- (void)walkGraph:(id)graph;
@end

@implementation ICCRRegisterMultiValue

- (ICCRRegisterMultiValue)initWithContents:(id)contents document:(id)document
{
  contentsCopy = contents;
  documentCopy = document;
  v12.receiver = self;
  v12.super_class = ICCRRegisterMultiValue;
  v8 = [(ICCRRegisterMultiValue *)&v12 init];
  if (v8)
  {
    v9 = [[ICCRSet alloc] initWithDocument:documentCopy];
    values = v8->_values;
    v8->_values = v9;

    if (contentsCopy)
    {
      [(ICCRRegisterMultiValue *)v8 setContents:contentsCopy];
    }
  }

  return v8;
}

- (ICCRRegisterMultiValue)initWithValues:(id)values
{
  valuesCopy = values;
  v9.receiver = self;
  v9.super_class = ICCRRegisterMultiValue;
  v6 = [(ICCRRegisterMultiValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_values, values);
  }

  return v7;
}

- (void)encodeWithICCRCoder:(id)coder
{
  coderCopy = coder;
  values = [(ICCRRegisterMultiValue *)self values];
  [coderCopy encodeObject:values forKey:@"values"];
}

- (ICCRRegisterMultiValue)initWithICCRCoder:(id)coder
{
  coderCopy = coder;
  document = [coderCopy document];
  v6 = [(ICCRRegisterMultiValue *)self initWithContents:0 document:document];

  if (v6)
  {
    v7 = [coderCopy decodeObjectForKey:@"values"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v6->_values, v7);
    }
  }

  return v6;
}

- (id)allContents
{
  v18 = *MEMORY[0x277D85DE8];
  cachedValues = [(ICCRRegisterMultiValue *)self cachedValues];

  if (!cachedValues)
  {
    v4 = objc_alloc(MEMORY[0x277CBEB58]);
    values = [(ICCRRegisterMultiValue *)self values];
    v6 = [v4 initWithCapacity:{objc_msgSend(values, "count")}];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    values2 = [(ICCRRegisterMultiValue *)self values];
    v8 = [values2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(values2);
          }

          [v6 addObject:*(*(&v13 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [values2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [(ICCRRegisterMultiValue *)self setCachedValues:v6];
  }

  cachedValues2 = [(ICCRRegisterMultiValue *)self cachedValues];

  return cachedValues2;
}

- (id)contents
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  values = [(ICCRRegisterMultiValue *)self values];
  v3 = 0;
  v4 = [values countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(values);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if (!v3 || [*(*(&v10 + 1) + 8 * i) compare:v3] == 1)
        {
          v8 = v7;

          v3 = v8;
        }
      }

      v4 = [values countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return v3;
}

- (void)setContents:(id)contents
{
  contentsCopy = contents;
  values = [(ICCRRegisterMultiValue *)self values];
  [values setObject:contentsCopy];

  [(ICCRRegisterMultiValue *)self setCachedValues:0];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    values = [(ICCRRegisterMultiValue *)self values];
    values2 = [equalCopy values];
    v7 = [values isEqual:values2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeWith:(id)with
{
  withCopy = with;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Invalid merge userInfo:{classes must be equal for merge.", 0}];
    objc_exception_throw(v4);
  }

  [(ICCRRegisterMultiValue *)self mergeWithRegisterMultiValue:withCopy];
  [(ICCRRegisterMultiValue *)self setCachedValues:0];
}

- (void)mergeWithRegisterMultiValue:(id)value
{
  valueCopy = value;
  values = [(ICCRRegisterMultiValue *)self values];
  values2 = [valueCopy values];
  [values mergeWith:values2];
}

- (id)deltaSince:(id)since in:(id)in
{
  sinceCopy = since;
  inCopy = in;
  values = [(ICCRRegisterMultiValue *)self values];
  v9 = [values deltaSince:sinceCopy in:inCopy];

  if (v9)
  {
    v10 = [objc_alloc(objc_opt_class()) initWithValues:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)walkGraph:(id)graph
{
  graphCopy = graph;
  values = [(ICCRRegisterMultiValue *)self values];
  graphCopy[2](graphCopy, values);
}

- (void)setDocument:(id)document
{
  documentCopy = document;
  values = [(ICCRRegisterMultiValue *)self values];
  [values setDocument:documentCopy];
}

- (id)description
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = objc_msgSend(v3, "stringWithFormat:", @"<%@ %p ("), v5, self;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  values = [(ICCRRegisterMultiValue *)self values];
  v8 = [values countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(values);
        }

        [v6 appendFormat:@"%@, ", *(*(&v12 + 1) + 8 * i)];
      }

      v8 = [values countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [v6 replaceCharactersInRange:objc_msgSend(v6 withString:{"length") - 2, 2, @">"}]);

  return v6;
}

@end