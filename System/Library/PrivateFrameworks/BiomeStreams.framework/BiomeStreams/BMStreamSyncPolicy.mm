@interface BMStreamSyncPolicy
+ (id)syncableStreamConfigurations;
+ (id)syncableStreams;
- (BMStreamSyncPolicy)initWithLegacyDescriptor:(id)descriptor platformPolicies:(id)policies;
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
  allStreams = [v2 allStreams];
  v5 = [allStreams countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(allStreams);
        }

        configuration = [*(*(&v16 + 1) + 8 * i) configuration];
        syncPolicy = [configuration syncPolicy];
        v11 = syncPolicy;
        if (syncPolicy)
        {
          platformPolicies = [syncPolicy platformPolicies];
          v13 = [platformPolicies count];

          if (v13)
          {
            [v3 addObject:configuration];
          }
        }
      }

      v6 = [allStreams countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMStreamSyncPolicy)initWithLegacyDescriptor:(id)descriptor platformPolicies:(id)policies
{
  descriptorCopy = descriptor;
  v11.receiver = self;
  v11.super_class = BMStreamSyncPolicy;
  v7 = [(BMResourceSyncPolicy *)&v11 initWithPolicyDictionary:policies];
  if (v7)
  {
    v8 = [descriptorCopy copy];
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
  allStreams = [v2 allStreams];
  v5 = [allStreams countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(allStreams);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        configuration = [v9 configuration];
        syncPolicy = [configuration syncPolicy];

        if (syncPolicy)
        {
          platformPolicies = [syncPolicy platformPolicies];
          v13 = [platformPolicies count];

          if (v13)
          {
            [v3 addObject:v9];
          }
        }
      }

      v6 = [allStreams countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

@end