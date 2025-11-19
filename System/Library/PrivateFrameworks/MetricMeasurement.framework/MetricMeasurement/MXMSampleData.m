@interface MXMSampleData
+ (id)data;
- (MXMSampleData)init;
- (MXMSampleData)initWithCoder:(id)a3;
- (MXMSampleData)initWithSet:(id)a3;
- (MXMSampleData)initWithSets:(id)a3;
- (NSArray)samples;
- (NSSet)tags;
- (id)_dataMatchingFilter:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)sampleSetWithTag:(id)a3 attribute:(id)a4;
- (id)sampleSetWithTag:(id)a3 attributes:(id)a4;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (unint64_t)numberOfSamples;
- (unint64_t)numberOfSets;
- (void)_appendAttribute:(id)a3;
- (void)_appendData:(id)a3;
- (void)_appendSet:(id)a3;
@end

@implementation MXMSampleData

- (NSSet)tags
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(NSMutableDictionary *)self->_tagsToSampleSets allKeys];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v3 containsObject:v9] & 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSArray)samples
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(MXMSampleData *)self tags];
  v4 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v9 = [(MXMSampleData *)self sampleSetsWithTag:v8];
        v10 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v19;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v19 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = [*(*(&v18 + 1) + 8 * j) samples];
              [v3 addObjectsFromArray:v14];
            }

            v11 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v11);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

- (unint64_t)numberOfSets
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(MXMSampleData *)self tags];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [(NSMutableDictionary *)self->_tagsToSampleSets objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i)];
        v6 += [v9 count];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (unint64_t)numberOfSamples
{
  v2 = [(MXMSampleData *)self samples];
  v3 = [v2 count];

  return v3;
}

+ (id)data
{
  v2 = [[a1 alloc] init];

  return v2;
}

- (MXMSampleData)init
{
  v5.receiver = self;
  v5.super_class = MXMSampleData;
  v2 = [(MXMSampleData *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    [(MXMSampleData *)v2 setTagsToSampleSets:v3];

    [(MXMSampleData *)v2 setEnumSet:0];
  }

  return v2;
}

- (MXMSampleData)initWithSet:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v10 count:1];

  v7 = [(MXMSampleData *)self initWithSets:v6, v10, v11];
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (MXMSampleData)initWithSets:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MXMSampleData *)self init];
  if (v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(MXMSampleData *)v5 _appendSet:*(*(&v13 + 1) + 8 * v10++), v13];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)sampleSetWithTag:(id)a3 attribute:(id)a4
{
  v6 = MEMORY[0x277CBEB98];
  v7 = a3;
  v8 = [v6 setWithObject:a4];
  v9 = [(MXMSampleData *)self sampleSetWithTag:v7 attributes:v8];

  return v9;
}

- (id)sampleSetWithTag:(id)a3 attributes:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [(MXMSampleData *)self sampleSetsWithTag:a3];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v22 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 attributes];
        if ([v6 isEqualToSet:v13])
        {

LABEL_13:
          v16 = v12;
          goto LABEL_14;
        }

        v14 = [v12 attributes];
        v15 = [v6 isSubsetOfSet:v14];

        if (v15)
        {
          goto LABEL_13;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v16 = 0;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_14:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (MXMSampleData)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MXMSampleData;
  v5 = [(MXMSampleData *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"tagsToSampleSets"];
    tagsToSampleSets = v5->_tagsToSampleSets;
    v5->_tagsToSampleSets = v11;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MXMSampleData alloc];
  v5 = [(NSMutableDictionary *)self->_tagsToSampleSets allValues];
  v6 = [v5 flattenArray];
  v7 = [(MXMSampleData *)v4 initWithSets:v6];

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [MXMMutableSampleData alloc];
  v5 = [(NSMutableDictionary *)self->_tagsToSampleSets allValues];
  v6 = [v5 flattenArray];
  v7 = [(MXMSampleData *)v4 initWithSets:v6];

  return v7;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v9 = [(MXMSampleData *)self enumSet];

  if (!v9)
  {
    v25 = a4;
    v26 = a5;
    v10 = [MEMORY[0x277CBEB18] array];
    enumSet = self->_enumSet;
    self->_enumSet = v10;

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v12 = [(MXMSampleData *)self tags];
    v13 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v32;
      do
      {
        v16 = 0;
        do
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v31 + 1) + 8 * v16);
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v18 = [(MXMSampleData *)self sampleSetsWithTag:v17];
          v19 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v28;
            do
            {
              v22 = 0;
              do
              {
                if (*v28 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                [(NSArray *)self->_enumSet addObject:*(*(&v27 + 1) + 8 * v22++)];
              }

              while (v20 != v22);
              v20 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v20);
          }

          ++v16;
        }

        while (v16 != v14);
        v14 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v14);
    }

    a4 = v25;
    a5 = v26;
  }

  result = [(NSArray *)self->_enumSet countByEnumeratingWithState:a3 objects:a4 count:a5];
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_appendAttribute:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSMutableDictionary *)self->_tagsToSampleSets allValues];
  v6 = [v5 flattenArray];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10++) appendAttribute:v4];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_appendSet:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = [v4 mutableCopy];
  }

  v6 = v5;
  tagsToSampleSets = self->_tagsToSampleSets;
  v8 = [v4 tag];
  v9 = [(NSMutableDictionary *)tagsToSampleSets objectForKeyedSubscript:v8];

  if (v9)
  {
    v28 = v6;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v10 = self->_tagsToSampleSets;
    v11 = [v4 tag];
    v12 = [(NSMutableDictionary *)v10 objectForKeyedSubscript:v11];

    v13 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v30;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v29 + 1) + 8 * i);
          v18 = [v17 attributes];
          v19 = [v4 attributes];
          v20 = [v18 isEqualToSet:v19];

          if (v20)
          {
            [v17 appendSet:v4];

            v6 = v28;
            goto LABEL_17;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v21 = self->_tagsToSampleSets;
    v22 = [v4 tag];
    v23 = [(NSMutableDictionary *)v21 objectForKeyedSubscript:v22];
    v6 = v28;
    [v23 addObject:v28];
  }

  else
  {
    v24 = [MEMORY[0x277CBEB18] arrayWithObject:v6];
    v25 = self->_tagsToSampleSets;
    v26 = [v4 tag];
    [(NSMutableDictionary *)v25 setObject:v24 forKeyedSubscript:v26];
  }

  [(MXMSampleData *)self setEnumSet:0];
LABEL_17:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_appendData:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = [*(a3 + 2) allValues];
    v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      do
      {
        v8 = 0;
        do
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v20 + 1) + 8 * v8);
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v17;
            do
            {
              v14 = 0;
              do
              {
                if (*v17 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                [(MXMSampleData *)self _appendSet:*(*(&v16 + 1) + 8 * v14++)];
              }

              while (v12 != v14);
              v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
            }

            while (v12);
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v6);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_dataMatchingFilter:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(MXMSampleData *)self samples];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v4 matchesSample:v11])
        {
          v12 = [v5 appendSample:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

@end