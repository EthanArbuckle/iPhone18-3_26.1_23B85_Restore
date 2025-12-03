@interface BWVisionInferenceStorage
- (BWVisionInferenceStorage)initWithRequirementsNeedingPixelBuffers:(id)buffers requirementsNeedingPixelBufferPools:(id)pools;
- (id)newMetadataDictionarySatisfyingRequirement:(id)requirement;
- (void)dealloc;
- (void)removeRequest:(id)request;
@end

@implementation BWVisionInferenceStorage

- (BWVisionInferenceStorage)initWithRequirementsNeedingPixelBuffers:(id)buffers requirementsNeedingPixelBufferPools:(id)pools
{
  v6.receiver = self;
  v6.super_class = BWVisionInferenceStorage;
  v4 = [(BWInferenceProviderStorage *)&v6 initWithRequirementsNeedingPixelBuffers:buffers requirementsNeedingPixelBufferPools:pools];
  if (v4)
  {
    v4->_requestsByRequirement = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWVisionInferenceStorage;
  [(BWInferenceProviderStorage *)&v3 dealloc];
}

- (void)removeRequest:(id)request
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(NSMutableDictionary *)self->_requestsByRequirement allKeysForObject:request];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(NSMutableDictionary *)self->_requestsByRequirement removeObjectForKey:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v6);
  }
}

- (id)newMetadataDictionarySatisfyingRequirement:(id)requirement
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  metadataKeys = [requirement metadataKeys];
  v7 = [(BWVisionInferenceStorage *)self requestForRequirement:requirement];
  if (v7)
  {
    results = [v7 results];
    if (results)
    {
      v9 = results;
    }

    else
    {
      v9 = MEMORY[0x1E695E0F0];
    }

    mappingOption = [requirement mappingOption];
    v11 = mappingOption;
    if (!mappingOption || mappingOption == 2)
    {
      v12 = [metadataKeys count];
      v13 = [v9 count];
      if (v12 >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        v15 = v13;
        for (i = 0; i != v14; ++i)
        {
          [v5 setObject:objc_msgSend(v9 forKeyedSubscript:{"objectAtIndexedSubscript:", i), objc_msgSend(metadataKeys, "objectAtIndexedSubscript:", i)}];
        }

        if (v11 == 2 && v12 < v15)
        {
          v18 = [metadataKeys objectAtIndexedSubscript:v14 - 1];
          v19 = [v5 objectForKey:v18];
          v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v19, 0}];
          do
          {
            [v20 addObject:{objc_msgSend(v9, "objectAtIndexedSubscript:", v14++)}];
          }

          while (v15 != v14);
          [v5 setObject:v20 forKeyedSubscript:v18];
        }
      }
    }

    else if (mappingOption == 1)
    {
      [v5 setObject:v9 forKeyedSubscript:{objc_msgSend(metadataKeys, "firstObject")}];
    }
  }

  return v5;
}

@end