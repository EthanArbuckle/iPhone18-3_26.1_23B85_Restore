@interface ICCRRegisterMultiValue
- (BOOL)isEqual:(id)a3;
- (ICCRRegisterMultiValue)initWithContents:(id)a3 document:(id)a4;
- (ICCRRegisterMultiValue)initWithICCRCoder:(id)a3;
- (ICCRRegisterMultiValue)initWithValues:(id)a3;
- (id)allContents;
- (id)contents;
- (id)deltaSince:(id)a3 in:(id)a4;
- (id)description;
- (void)encodeWithICCRCoder:(id)a3;
- (void)mergeWith:(id)a3;
- (void)mergeWithRegisterMultiValue:(id)a3;
- (void)setContents:(id)a3;
- (void)setDocument:(id)a3;
- (void)walkGraph:(id)a3;
@end

@implementation ICCRRegisterMultiValue

- (ICCRRegisterMultiValue)initWithContents:(id)a3 document:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = ICCRRegisterMultiValue;
  v8 = [(ICCRRegisterMultiValue *)&v12 init];
  if (v8)
  {
    v9 = [[ICCRSet alloc] initWithDocument:v7];
    values = v8->_values;
    v8->_values = v9;

    if (v6)
    {
      [(ICCRRegisterMultiValue *)v8 setContents:v6];
    }
  }

  return v8;
}

- (ICCRRegisterMultiValue)initWithValues:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICCRRegisterMultiValue;
  v6 = [(ICCRRegisterMultiValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_values, a3);
  }

  return v7;
}

- (void)encodeWithICCRCoder:(id)a3
{
  v5 = a3;
  v4 = [(ICCRRegisterMultiValue *)self values];
  [v5 encodeObject:v4 forKey:@"values"];
}

- (ICCRRegisterMultiValue)initWithICCRCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 document];
  v6 = [(ICCRRegisterMultiValue *)self initWithContents:0 document:v5];

  if (v6)
  {
    v7 = [v4 decodeObjectForKey:@"values"];
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
  v3 = [(ICCRRegisterMultiValue *)self cachedValues];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x277CBEB58]);
    v5 = [(ICCRRegisterMultiValue *)self values];
    v6 = [v4 initWithCapacity:{objc_msgSend(v5, "count")}];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [(ICCRRegisterMultiValue *)self values];
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v7);
          }

          [v6 addObject:*(*(&v13 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [(ICCRRegisterMultiValue *)self setCachedValues:v6];
  }

  v11 = [(ICCRRegisterMultiValue *)self cachedValues];

  return v11;
}

- (id)contents
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(ICCRRegisterMultiValue *)self values];
  v3 = 0;
  v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if (!v3 || [*(*(&v10 + 1) + 8 * i) compare:v3] == 1)
        {
          v8 = v7;

          v3 = v8;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return v3;
}

- (void)setContents:(id)a3
{
  v5 = a3;
  v4 = [(ICCRRegisterMultiValue *)self values];
  [v4 setObject:v5];

  [(ICCRRegisterMultiValue *)self setCachedValues:0];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ICCRRegisterMultiValue *)self values];
    v6 = [v4 values];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeWith:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Invalid merge userInfo:{classes must be equal for merge.", 0}];
    objc_exception_throw(v4);
  }

  [(ICCRRegisterMultiValue *)self mergeWithRegisterMultiValue:v5];
  [(ICCRRegisterMultiValue *)self setCachedValues:0];
}

- (void)mergeWithRegisterMultiValue:(id)a3
{
  v6 = a3;
  v4 = [(ICCRRegisterMultiValue *)self values];
  v5 = [v6 values];
  [v4 mergeWith:v5];
}

- (id)deltaSince:(id)a3 in:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICCRRegisterMultiValue *)self values];
  v9 = [v8 deltaSince:v6 in:v7];

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

- (void)walkGraph:(id)a3
{
  v5 = a3;
  v4 = [(ICCRRegisterMultiValue *)self values];
  v5[2](v5, v4);
}

- (void)setDocument:(id)a3
{
  v5 = a3;
  v4 = [(ICCRRegisterMultiValue *)self values];
  [v4 setDocument:v5];
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
  v7 = [(ICCRRegisterMultiValue *)self values];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [v6 appendFormat:@"%@, ", *(*(&v12 + 1) + 8 * i)];
      }

      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [v6 replaceCharactersInRange:objc_msgSend(v6 withString:{"length") - 2, 2, @">"}]);

  return v6;
}

@end