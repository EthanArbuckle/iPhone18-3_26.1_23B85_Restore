@interface MXMSampleFilter
+ (MXMSampleFilter)filterWithAttributeFilter:(id)filter;
+ (MXMSampleFilter)filterWithAttributeFilter:(id)filter tagFilter:(id)tagFilter;
+ (MXMSampleFilter)filterWithAttributeFilters:(id)filters;
+ (MXMSampleFilter)filterWithTagFilter:(id)filter;
+ (MXMSampleFilter)filterWithTagFilters:(id)filters;
- (BOOL)matchesSample:(id)sample;
- (BOOL)matchesSampleSet:(id)set;
- (BOOL)matchesSamplesWithAttribute:(id)attribute;
- (BOOL)matchesSamplesWithAttributes:(id)attributes;
- (BOOL)matchesSamplesWithTag:(id)tag;
- (MXMSampleFilter)initWithAttributeFilter:(id)filter;
- (MXMSampleFilter)initWithAttributeFilter:(id)filter tagFilter:(id)tagFilter;
- (MXMSampleFilter)initWithAttributeFilters:(id)filters tagFilters:(id)tagFilters;
- (MXMSampleFilter)initWithCoder:(id)coder;
- (MXMSampleFilter)initWithTagFilter:(id)filter;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addAttributeFilters:(id)filters;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXMSampleFilter

+ (MXMSampleFilter)filterWithTagFilter:(id)filter
{
  filterCopy = filter;
  v5 = [[self alloc] initWithTagFilter:filterCopy];

  return v5;
}

+ (MXMSampleFilter)filterWithTagFilters:(id)filters
{
  filtersCopy = filters;
  v5 = [[self alloc] initWithTagFilters:filtersCopy];

  return v5;
}

+ (MXMSampleFilter)filterWithAttributeFilter:(id)filter
{
  filterCopy = filter;
  v5 = [[self alloc] initWithAttributeFilter:filterCopy];

  return v5;
}

+ (MXMSampleFilter)filterWithAttributeFilters:(id)filters
{
  filtersCopy = filters;
  v5 = [[self alloc] initWithAttributeFilters:filtersCopy];

  return v5;
}

+ (MXMSampleFilter)filterWithAttributeFilter:(id)filter tagFilter:(id)tagFilter
{
  tagFilterCopy = tagFilter;
  filterCopy = filter;
  v8 = [[self alloc] initWithAttributeFilter:filterCopy tagFilter:tagFilterCopy];

  return v8;
}

- (MXMSampleFilter)initWithTagFilter:(id)filter
{
  v4 = [MEMORY[0x277CBEB98] setWithObject:filter];
  v5 = [(MXMSampleFilter *)self initWithTagFilters:v4];

  return v5;
}

- (MXMSampleFilter)initWithAttributeFilter:(id)filter
{
  v4 = [MEMORY[0x277CBEB98] setWithObject:filter];
  v5 = [(MXMSampleFilter *)self initWithAttributeFilters:v4 tagFilters:0];

  return v5;
}

- (MXMSampleFilter)initWithAttributeFilter:(id)filter tagFilter:(id)tagFilter
{
  v6 = MEMORY[0x277CBEB98];
  tagFilterCopy = tagFilter;
  v8 = [v6 setWithObject:filter];
  v9 = [MEMORY[0x277CBEB98] setWithObject:tagFilterCopy];

  v10 = [(MXMSampleFilter *)self initWithAttributeFilters:v8 tagFilters:v9];
  return v10;
}

- (MXMSampleFilter)initWithAttributeFilters:(id)filters tagFilters:(id)tagFilters
{
  v30 = *MEMORY[0x277D85DE8];
  filtersCopy = filters;
  tagFiltersCopy = tagFilters;
  v28.receiver = self;
  v28.super_class = MXMSampleFilter;
  v8 = [(MXMSampleFilter *)&v28 init];
  if (v8)
  {
    if (tagFiltersCopy)
    {
      v9 = [tagFiltersCopy copy];
    }

    else
    {
      v9 = [MEMORY[0x277CBEB98] set];
    }

    tagFilters = v8->_tagFilters;
    v8->_tagFilters = v9;

    v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(filtersCopy, "count")}];
    attributeFilters = v8->_attributeFilters;
    v8->_attributeFilters = v11;

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = filtersCopy;
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
          name = [v18 name];
          [(NSMutableDictionary *)v20 setObject:v19 forKeyedSubscript:name];
        }

        v15 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v15);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)addAttributeFilters:(id)filters
{
  v19 = *MEMORY[0x277D85DE8];
  filtersCopy = filters;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [filtersCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(filtersCopy);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 copy];
        attributeFilters = self->_attributeFilters;
        name = [v9 name];
        [(NSMutableDictionary *)attributeFilters setObject:v10 forKeyedSubscript:name];
      }

      v6 = [filtersCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)matchesSample:(id)sample
{
  sampleCopy = sample;
  v5 = [sampleCopy tag];
  if ([(MXMSampleFilter *)self matchesSamplesWithTag:v5])
  {
    attributes = [sampleCopy attributes];
    v7 = [(MXMSampleFilter *)self matchesSamplesWithAttributes:attributes];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)matchesSampleSet:(id)set
{
  setCopy = set;
  v5 = [setCopy tag];
  if ([(MXMSampleFilter *)self matchesSamplesWithTag:v5])
  {
    attributes = [setCopy attributes];
    v7 = [(MXMSampleFilter *)self matchesSamplesWithAttributes:attributes];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)matchesSamplesWithAttribute:(id)attribute
{
  attributeCopy = attribute;
  name = [attributeCopy name];
  v6 = [(MXMSampleFilter *)self attributeFilterWithName:name];

  if (v6)
  {
    v7 = [v6 matchesSampleWithAttribute:attributeCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)matchesSamplesWithAttributes:(id)attributes
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  attributesCopy = attributes;
  v5 = [attributesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(attributesCopy);
        }

        if (![(MXMSampleFilter *)self matchesSamplesWithAttribute:*(*(&v12 + 1) + 8 * i), v12])
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v6 = [attributesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (BOOL)matchesSamplesWithTag:(id)tag
{
  v18 = *MEMORY[0x277D85DE8];
  tagCopy = tag;
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

        if (![*(*(&v13 + 1) + 8 * i) matchesSampleWithTag:{tagCopy, v13}])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v5 = MEMORY[0x277CBEB98];
  allValues = [(NSMutableDictionary *)self->_attributeFilters allValues];
  v7 = [v5 setWithArray:allValues];
  v8 = [(NSSet *)self->_tagFilters copy];
  v9 = [v4 initWithAttributeFilters:v7 tagFilters:v8];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  tagFilters = self->_tagFilters;
  coderCopy = coder;
  [coderCopy encodeObject:tagFilters forKey:@"_tagFilters"];
  [coderCopy encodeObject:self->_attributeFilters forKey:@"_attributeFilters"];
}

- (MXMSampleFilter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = MXMSampleFilter;
  v5 = [(MXMSampleFilter *)&v22 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_tagFilters"];
    tagFilters = v5->_tagFilters;
    v5->_tagFilters = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v11 setWithObjects:{v12, v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"_attributeFilters"];
    attributeFilters = v5->_attributeFilters;
    v5->_attributeFilters = v15;
  }

  tagFilters = [(MXMSampleFilter *)v5 tagFilters];
  if (tagFilters)
  {
    attributeFilters = [(MXMSampleFilter *)v5 attributeFilters];
    if (attributeFilters)
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