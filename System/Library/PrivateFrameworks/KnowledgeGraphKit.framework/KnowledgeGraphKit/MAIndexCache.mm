@interface MAIndexCache
- (BOOL)isEqual:(id)a3;
- (MAIndexCache)initWithLabels:(id)a3;
- (int64_t)indexOfLabel:(id)a3;
@end

@implementation MAIndexCache

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      labels = self->_labels;
      v6 = [(MAIndexCache *)v4 labels];
      v7 = [(NSArray *)labels isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (int64_t)indexOfLabel:(id)a3
{
  v3 = [(NSDictionary *)self->_cache objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (MAIndexCache)initWithLabels:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = MAIndexCache;
  v5 = [(MAIndexCache *)&v25 init];
  if (v5)
  {
    v6 = [v4 copy];
    labels = v5->_labels;
    v5->_labels = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v20 = v4;
    v9 = v4;
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

    v4 = v20;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

@end