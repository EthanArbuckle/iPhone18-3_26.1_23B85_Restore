@interface CCSetDiscoveryResponse
- (id)dictionaryRepresentation;
- (id)initFromDictionary:(id)dictionary;
@end

@implementation CCSetDiscoveryResponse

- (id)initFromDictionary:(id)dictionary
{
  v31 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = CCSetDiscoveryResponse;
  v5 = [(CCPeerToPeerMessage *)&v27 initFromDictionary:dictionaryCopy];
  v6 = v5;
  if (v5)
  {
    v21 = v5;
    v22 = dictionaryCopy;
    v7 = [dictionaryCopy objectForKeyedSubscript:@"discoveredSets"];
    v8 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        v13 = 0;
        do
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v23 + 1) + 8 * v13);
          v15 = [[CCDiscoveredSet alloc] initFromDictionary:v14];
          if (v15)
          {
            [v8 addObject:v15];
          }

          else
          {
            v16 = __biome_log_for_category();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v29 = v14;
              _os_log_error_impl(&dword_1DA444000, v16, OS_LOG_TYPE_ERROR, "Failed to decode opack encoded discovered set %@", buf, 0xCu);
            }
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v23 objects:v30 count:16];
      }

      while (v11);
    }

    v6 = v21;
    v17 = *(v21 + 6);
    *(v21 + 6) = v8;

    dictionaryCopy = v22;
    v18 = [v22 objectForKeyedSubscript:@"setDiscoveryResponseOptions"];
    *(v21 + 20) = [v18 unsignedIntValue];
  }

  v19 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self->_discoveredSets;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        dictionaryRepresentation = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
        [v3 addObject:dictionaryRepresentation];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v6);
  }

  v21 = @"discoveredSets";
  v22 = v3;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v11 = [v10 mutableCopy];

  if (self->_responseOptions)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:?];
    [v11 setObject:v12 forKey:@"setDiscoveryResponseOptions"];
  }

  v16.receiver = self;
  v16.super_class = CCSetDiscoveryResponse;
  dictionaryRepresentation2 = [(CCPeerToPeerMessage *)&v16 dictionaryRepresentation];
  [v11 addEntriesFromDictionary:dictionaryRepresentation2];

  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

@end