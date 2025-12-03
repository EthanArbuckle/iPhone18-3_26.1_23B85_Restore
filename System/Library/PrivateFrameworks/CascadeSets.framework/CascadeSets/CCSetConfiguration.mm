@interface CCSetConfiguration
+ (id)syncableSetConfigurations;
- (CCSetConfiguration)initWithSetIdentifier:(id)identifier setUUID:(id)d resourceDomain:(unint64_t)domain configuredDescriptors:(id)descriptors syncPolicy:(id)policy;
- (unsigned)itemType;
@end

@implementation CCSetConfiguration

- (CCSetConfiguration)initWithSetIdentifier:(id)identifier setUUID:(id)d resourceDomain:(unint64_t)domain configuredDescriptors:(id)descriptors syncPolicy:(id)policy
{
  identifierCopy = identifier;
  dCopy = d;
  descriptorsCopy = descriptors;
  policyCopy = policy;
  v20.receiver = self;
  v20.super_class = CCSetConfiguration;
  v17 = [(CCSetConfiguration *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_setIdentifier, identifier);
    objc_storeStrong(&v18->_setUUID, d);
    v18->_resourceDomain = domain;
    objc_storeStrong(&v18->_configuredDescriptors, descriptors);
    objc_storeStrong(&v18->_syncPolicy, policy);
  }

  return v18;
}

- (unsigned)itemType
{
  v3 = CCTypeIdentifierRegistryBridge();
  LOWORD(self) = [v3 itemTypeForSetIdentifier:self->_setIdentifier];

  return self;
}

+ (id)syncableSetConfigurations
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = +[CCSetConfigurationRegistry allSetConfigurations];
  v3 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v2;
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
        syncPolicy = [v9 syncPolicy];
        if (syncPolicy)
        {
          v11 = syncPolicy;
          syncPolicy2 = [v9 syncPolicy];
          platformPolicies = [syncPolicy2 platformPolicies];

          if (platformPolicies)
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