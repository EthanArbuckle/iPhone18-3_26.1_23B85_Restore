@interface SUUIStorePage
- (id)copyWithZone:(_NSZone *)zone;
- (void)setPageComponents:(id)components;
- (void)setValue:(id)value forPageKey:(id)key;
@end

@implementation SUUIStorePage

- (void)setPageComponents:(id)components
{
  v20 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  if (self->_pageComponents != componentsCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCA940]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = componentsCopy;
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
          metricsElementName = [v11 metricsElementName];
          if (metricsElementName)
          {
            [v11 _setMetricsLocationPosition:{objc_msgSend(v5, "countForObject:", metricsElementName)}];
            [v5 addObject:metricsElementName];
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

- (void)setValue:(id)value forPageKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  v7 = valueCopy;
  v8 = keyCopy;
  values = self->_values;
  if (valueCopy)
  {
    if (!values)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v11 = self->_values;
      self->_values = v10;

      v7 = valueCopy;
      values = self->_values;
    }

    [(NSMutableDictionary *)values setObject:v7 forKey:v8];
  }

  else
  {
    [(NSMutableDictionary *)values removeObjectForKey:v8];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setBackgroundArtwork:self->_backgroundArtwork];
  [v5 setITMLData:self->_itmlData];
  [v5 setITMLResponse:self->_itmlResponse];
  [v5 setMetricsConfiguration:self->_metricsConfiguration];
  [v5 setMetricsPageDescription:self->_metricsPageDescription];
  v6 = [(NSArray *)self->_pageComponents copyWithZone:zone];
  v7 = v5[6];
  v5[6] = v6;

  [v5 setPageType:self->_pageType];
  [v5 setPageURL:self->_pageURL];
  [v5 setProductPage:self->_productPage];
  [v5 setTitle:self->_title];
  [v5 setUber:self->_uber];
  v8 = [(NSMutableDictionary *)self->_values mutableCopyWithZone:zone];
  v9 = v5[12];
  v5[12] = v8;

  return v5;
}

@end