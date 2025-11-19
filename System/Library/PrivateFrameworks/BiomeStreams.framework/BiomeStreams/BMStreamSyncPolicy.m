@interface BMStreamSyncPolicy
+ (id)syncableStreamConfigurations;
+ (id)syncableStreams;
- (BMStreamSyncPolicy)initWithLegacyDescriptor:(id)a3 platformPolicies:(id)a4;
@end

@implementation BMStreamSyncPolicy

+ (id)syncableStreamConfigurations
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = BiomeLibraryNodeBridge();
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v2 allStreams];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v16 + 1) + 8 * i) configuration];
        v10 = [v9 syncPolicy];
        v11 = v10;
        if (v10)
        {
          v12 = [v10 platformPolicies];
          v13 = [v12 count];

          if (v13)
          {
            [v3 addObject:v9];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMStreamSyncPolicy)initWithLegacyDescriptor:(id)a3 platformPolicies:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = BMStreamSyncPolicy;
  v7 = [(BMResourceSyncPolicy *)&v11 initWithPolicyDictionary:a4];
  if (v7)
  {
    v8 = [v6 copy];
    legacyDescriptor = v7->_legacyDescriptor;
    v7->_legacyDescriptor = v8;
  }

  return v7;
}

+ (id)syncableStreams
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = BiomeLibraryNodeBridge();
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v2 allStreams];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 configuration];
        v11 = [v10 syncPolicy];

        if (v11)
        {
          v12 = [v11 platformPolicies];
          v13 = [v12 count];

          if (v13)
          {
            [v3 addObject:v9];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

@end