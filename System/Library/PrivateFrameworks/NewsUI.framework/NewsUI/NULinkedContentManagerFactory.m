@interface NULinkedContentManagerFactory
- (NULinkedContentManagerFactory)init;
- (id)createLinkedContentManagerForArticle:(id)a3;
- (void)addLinkedContentProviderFactory:(id)a3;
@end

@implementation NULinkedContentManagerFactory

- (NULinkedContentManagerFactory)init
{
  v6.receiver = self;
  v6.super_class = NULinkedContentManagerFactory;
  v2 = [(NULinkedContentManagerFactory *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    factories = v2->_factories;
    v2->_factories = v3;
  }

  return v2;
}

- (void)addLinkedContentProviderFactory:(id)a3
{
  if (a3)
  {
    [(NSMutableArray *)self->_factories addObject:?];
  }
}

- (id)createLinkedContentManagerForArticle:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
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

        v11 = [*(*(&v15 + 1) + 8 * i) createLinkedContentProviderForArticle:v4];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [[NULinkedContentManager alloc] initWithLinkedContentProviders:v5];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end