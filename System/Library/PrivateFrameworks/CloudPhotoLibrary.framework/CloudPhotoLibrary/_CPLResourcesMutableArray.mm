@interface _CPLResourcesMutableArray
- (_CPLResourcesMutableArray)initWithResources:(id)resources;
- (void)addResource:(id)resource;
@end

@implementation _CPLResourcesMutableArray

- (void)addResource:(id)resource
{
  resourcesPerType = self->_resourcesPerType;
  v5 = MEMORY[0x1E696AD98];
  resourceCopy = resource;
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(resourceCopy, "resourceType")}];
  [(NSMutableDictionary *)resourcesPerType setObject:resourceCopy forKey:v7];

  updatedResourcesPerType = self->_updatedResourcesPerType;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(resourceCopy, "resourceType")}];
  [(NSMutableDictionary *)updatedResourcesPerType setObject:resourceCopy forKey:v9];
}

- (_CPLResourcesMutableArray)initWithResources:(id)resources
{
  v26 = *MEMORY[0x1E69E9840];
  resourcesCopy = resources;
  v24.receiver = self;
  v24.super_class = _CPLResourcesMutableArray;
  v5 = [(_CPLResourcesMutableArray *)&v24 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    resourcesPerType = v5->_resourcesPerType;
    v5->_resourcesPerType = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    updatedResourcesPerType = v5->_updatedResourcesPerType;
    v5->_updatedResourcesPerType = v8;

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = resourcesCopy;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          v16 = v5->_resourcesPerType;
          v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v15, "resourceType", v20)}];
          [(NSMutableDictionary *)v16 setObject:v15 forKey:v17];
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v12);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

@end