@interface FCLaunchPresentationConfig
- (FCLaunchPresentationConfig)initWithConfigDictionary:(id)dictionary;
@end

@implementation FCLaunchPresentationConfig

- (FCLaunchPresentationConfig)initWithConfigDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = FCLaunchPresentationConfig;
  v5 = [(FCLaunchPresentationConfig *)&v24 init];
  if (v5)
  {
    v5->_configVersion = FCAppConfigurationIntegerValue(dictionaryCopy, @"configVersion", 0);
    v5->_presentationRequirementTimeout = FCAppConfigurationDoubleValue(dictionaryCopy, @"presentationRequirementTimeout", 5.0);
    v6 = FCAppConfigurationArrayValueWithDefaultValue(dictionaryCopy, @"presentationOperations", 0);
    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        v12 = 0;
        do
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * v12);
          v14 = [FCPresentationOperation alloc];
          v15 = [(FCPresentationOperation *)v14 initWithConfigDictionary:v13, v20];
          [v7 addObject:v15];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v10);
    }

    v16 = [MEMORY[0x1E695DEC8] arrayWithArray:v7];
    presentationOperations = v5->_presentationOperations;
    v5->_presentationOperations = v16;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

@end