@interface MAIndexCache
- (BOOL)isEqual:(id)equal;
- (MAIndexCache)initWithLabels:(id)labels;
- (int64_t)indexOfLabel:(id)label;
@end

@implementation MAIndexCache

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      labels = self->_labels;
      labels = [(MAIndexCache *)equalCopy labels];
      v7 = [(NSArray *)labels isEqual:labels];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (int64_t)indexOfLabel:(id)label
{
  v3 = [(NSDictionary *)self->_cache objectForKeyedSubscript:label];
  v4 = v3;
  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return integerValue;
}

- (MAIndexCache)initWithLabels:(id)labels
{
  v27 = *MEMORY[0x277D85DE8];
  labelsCopy = labels;
  v25.receiver = self;
  v25.super_class = MAIndexCache;
  v5 = [(MAIndexCache *)&v25 init];
  if (v5)
  {
    v6 = [labelsCopy copy];
    labels = v5->_labels;
    v5->_labels = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v20 = labelsCopy;
    v9 = labelsCopy;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v22;
      do
      {
        v14 = 0;
        do
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v21 + 1) + 8 * v14);
          v16 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
          [(NSDictionary *)v8 setObject:v16 forKeyedSubscript:v15];

          ++v12;
          ++v14;
        }

        while (v11 != v14);
        v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v11);
    }

    cache = v5->_cache;
    v5->_cache = v8;

    labelsCopy = v20;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

@end