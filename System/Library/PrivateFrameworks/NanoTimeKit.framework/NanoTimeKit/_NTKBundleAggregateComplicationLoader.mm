@interface _NTKBundleAggregateComplicationLoader
- (id)copyWithZone:(_NSZone *)a3;
- (void)_loadClassesUsingBlock:(id)a3;
@end

@implementation _NTKBundleAggregateComplicationLoader

- (void)_loadClassesUsingBlock:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_loaders;
  v6 = [(NSOrderedSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) _loadClassesUsingBlock:{v4, v10}];
      }

      while (v7 != v9);
      v7 = [(NSOrderedSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSOrderedSet *)self->_loaders copyWithZone:a3];
  [v5 setLoaders:v6];

  return v5;
}

@end