@interface NULinkedContentManagerFactory
- (NULinkedContentManagerFactory)init;
- (id)createLinkedContentManagerForArticle:(id)article;
- (void)addLinkedContentProviderFactory:(id)factory;
@end

@implementation NULinkedContentManagerFactory

- (NULinkedContentManagerFactory)init
{
  v6.receiver = self;
  v6.super_class = NULinkedContentManagerFactory;
  v2 = [(NULinkedContentManagerFactory *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    factories = v2->_factories;
    v2->_factories = array;
  }

  return v2;
}

- (void)addLinkedContentProviderFactory:(id)factory
{
  if (factory)
  {
    [(NSMutableArray *)self->_factories addObject:?];
  }
}

- (id)createLinkedContentManagerForArticle:(id)article
{
  v20 = *MEMORY[0x277D85DE8];
  articleCopy = article;
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(NSMutableArray *)self->_factories copy];
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

        v11 = [*(*(&v15 + 1) + 8 * i) createLinkedContentProviderForArticle:articleCopy];
        [array addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [[NULinkedContentManager alloc] initWithLinkedContentProviders:array];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end