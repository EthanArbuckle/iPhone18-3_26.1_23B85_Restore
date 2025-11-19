@interface MXMSampleFilter
+ (MXMSampleFilter)filterWithAttributeFilter:(id)a3;
+ (MXMSampleFilter)filterWithAttributeFilter:(id)a3 tagFilter:(id)a4;
+ (MXMSampleFilter)filterWithAttributeFilters:(id)a3;
+ (MXMSampleFilter)filterWithTagFilter:(id)a3;
+ (MXMSampleFilter)filterWithTagFilters:(id)a3;
- (BOOL)matchesSample:(id)a3;
- (BOOL)matchesSampleSet:(id)a3;
- (BOOL)matchesSamplesWithAttribute:(id)a3;
- (BOOL)matchesSamplesWithAttributes:(id)a3;
- (BOOL)matchesSamplesWithTag:(id)a3;
- (MXMSampleFilter)initWithAttributeFilter:(id)a3;
- (MXMSampleFilter)initWithAttributeFilter:(id)a3 tagFilter:(id)a4;
- (MXMSampleFilter)initWithAttributeFilters:(id)a3 tagFilters:(id)a4;
- (MXMSampleFilter)initWithCoder:(id)a3;
- (MXMSampleFilter)initWithTagFilter:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addAttributeFilters:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXMSampleFilter

+ (MXMSampleFilter)filterWithTagFilter:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithTagFilter:v4];

  return v5;
}

+ (MXMSampleFilter)filterWithTagFilters:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithTagFilters:v4];

  return v5;
}

+ (MXMSampleFilter)filterWithAttributeFilter:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithAttributeFilter:v4];

  return v5;
}

+ (MXMSampleFilter)filterWithAttributeFilters:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithAttributeFilters:v4];

  return v5;
}

+ (MXMSampleFilter)filterWithAttributeFilter:(id)a3 tagFilter:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithAttributeFilter:v7 tagFilter:v6];

  return v8;
}

- (MXMSampleFilter)initWithTagFilter:(id)a3
{
  v4 = [MEMORY[0x277CBEB98] setWithObject:a3];
  v5 = [(MXMSampleFilter *)self initWithTagFilters:v4];

  return v5;
}

- (MXMSampleFilter)initWithAttributeFilter:(id)a3
{
  v4 = [MEMORY[0x277CBEB98] setWithObject:a3];
  v5 = [(MXMSampleFilter *)self initWithAttributeFilters:v4 tagFilters:0];

  return v5;
}

- (MXMSampleFilter)initWithAttributeFilter:(id)a3 tagFilter:(id)a4
{
  v6 = MEMORY[0x277CBEB98];
  v7 = a4;
  v8 = [v6 setWithObject:a3];
  v9 = [MEMORY[0x277CBEB98] setWithObject:v7];

  v10 = [(MXMSampleFilter *)self initWithAttributeFilters:v8 tagFilters:v9];
  return v10;
}

- (MXMSampleFilter)initWithAttributeFilters:(id)a3 tagFilters:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v28.receiver = self;
  v28.super_class = MXMSampleFilter;
  v8 = [(MXMSampleFilter *)&v28 init];
  if (v8)
  {
    if (v7)
    {
      v9 = [v7 copy];
    }

    else
    {
      v9 = [MEMORY[0x277CBEB98] set];
    }

    tagFilters = v8->_tagFilters;
    v8->_tagFilters = v9;

    v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
    attributeFilters = v8->_attributeFilters;
    v8->_attributeFilters = v11;

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = v6;
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v24 + 1) + 8 * i);
          v19 = [v18 copy];
          v20 = v8->_attributeFilters;
          v21 = [v18 name];
          [(NSMutableDictionary *)v20 setObject:v19 forKeyedSubscript:v21];
        }

        v15 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v15);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)addAttributeFilters:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 copy];
        attributeFilters = self->_attributeFilters;
        v12 = [v9 name];
        [(NSMutableDictionary *)attributeFilters setObject:v10 forKeyedSubscript:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)matchesSample:(id)a3
{
  v4 = a3;
  v5 = [v4 tag];
  if ([(MXMSampleFilter *)self matchesSamplesWithTag:v5])
  {
    v6 = [v4 attributes];
    v7 = [(MXMSampleFilter *)self matchesSamplesWithAttributes:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)matchesSampleSet:(id)a3
{
  v4 = a3;
  v5 = [v4 tag];
  if ([(MXMSampleFilter *)self matchesSamplesWithTag:v5])
  {
    v6 = [v4 attributes];
    v7 = [(MXMSampleFilter *)self matchesSamplesWithAttributes:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)matchesSamplesWithAttribute:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = [(MXMSampleFilter *)self attributeFilterWithName:v5];

  if (v6)
  {
    v7 = [v6 matchesSampleWithAttribute:v4];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)matchesSamplesWithAttributes:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (![(MXMSampleFilter *)self matchesSamplesWithAttribute:*(*(&v12 + 1) + 8 * i), v12])
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)matchesSamplesWithTag:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_tagFilters;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (![*(*(&v13 + 1) + 8 * i) matchesSampleWithTag:{v4, v13}])
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = [(NSSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = MEMORY[0x277CBEB98];
  v6 = [(NSMutableDictionary *)self->_attributeFilters allValues];
  v7 = [v5 setWithArray:v6];
  v8 = [(NSSet *)self->_tagFilters copy];
  v9 = [v4 initWithAttributeFilters:v7 tagFilters:v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  tagFilters = self->_tagFilters;
  v5 = a3;
  [v5 encodeObject:tagFilters forKey:@"_tagFilters"];
  [v5 encodeObject:self->_attributeFilters forKey:@"_attributeFilters"];
}

- (MXMSampleFilter)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = MXMSampleFilter;
  v5 = [(MXMSampleFilter *)&v22 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_tagFilters"];
    tagFilters = v5->_tagFilters;
    v5->_tagFilters = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v11 setWithObjects:{v12, v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"_attributeFilters"];
    attributeFilters = v5->_attributeFilters;
    v5->_attributeFilters = v15;
  }

  v17 = [(MXMSampleFilter *)v5 tagFilters];
  if (v17)
  {
    v18 = [(MXMSampleFilter *)v5 attributeFilters];
    if (v18)
    {
      v19 = v5;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

@end