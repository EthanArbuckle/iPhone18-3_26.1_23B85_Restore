@interface SUUIStorePage
- (id)copyWithZone:(_NSZone *)a3;
- (void)setPageComponents:(id)a3;
- (void)setValue:(id)a3 forPageKey:(id)a4;
@end

@implementation SUUIStorePage

- (void)setPageComponents:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_pageComponents != v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCA940]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          v12 = [v11 metricsElementName];
          if (v12)
          {
            [v11 _setMetricsLocationPosition:{objc_msgSend(v5, "countForObject:", v12)}];
            [v5 addObject:v12];
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v13 = [(NSArray *)v6 copy];
    pageComponents = self->_pageComponents;
    self->_pageComponents = v13;
  }
}

- (void)setValue:(id)a3 forPageKey:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = v12;
  v8 = v6;
  values = self->_values;
  if (v12)
  {
    if (!values)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v11 = self->_values;
      self->_values = v10;

      v7 = v12;
      values = self->_values;
    }

    [(NSMutableDictionary *)values setObject:v7 forKey:v8];
  }

  else
  {
    [(NSMutableDictionary *)values removeObjectForKey:v8];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setBackgroundArtwork:self->_backgroundArtwork];
  [v5 setITMLData:self->_itmlData];
  [v5 setITMLResponse:self->_itmlResponse];
  [v5 setMetricsConfiguration:self->_metricsConfiguration];
  [v5 setMetricsPageDescription:self->_metricsPageDescription];
  v6 = [(NSArray *)self->_pageComponents copyWithZone:a3];
  v7 = v5[6];
  v5[6] = v6;

  [v5 setPageType:self->_pageType];
  [v5 setPageURL:self->_pageURL];
  [v5 setProductPage:self->_productPage];
  [v5 setTitle:self->_title];
  [v5 setUber:self->_uber];
  v8 = [(NSMutableDictionary *)self->_values mutableCopyWithZone:a3];
  v9 = v5[12];
  v5[12] = v8;

  return v5;
}

@end