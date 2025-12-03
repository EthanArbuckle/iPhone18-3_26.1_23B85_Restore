@interface MCMDMOptionsUtilities
+ (id)defaultMDMOptions;
+ (id)validatedMDMOptionsFromOptionsDictionary:(id)dictionary;
+ (void)setDefaultMDMOptions:(id)options;
@end

@implementation MCMDMOptionsUtilities

+ (id)validatedMDMOptionsFromOptionsDictionary:(id)dictionary
{
  v21 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
  if (validatedMDMOptionsFromOptionsDictionary__onceToken != -1)
  {
    +[MCMDMOptionsUtilities validatedMDMOptionsFromOptionsDictionary:];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = validatedMDMOptionsFromOptionsDictionary__validKeysAndClasses;
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
        v10 = [dictionaryCopy objectForKeyedSubscript:v9];
        if (v10)
        {
          v11 = [validatedMDMOptionsFromOptionsDictionary__validKeysAndClasses objectForKeyedSubscript:v9];
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            [v15 setObject:v10 forKeyedSubscript:v9];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v15;
}

void __66__MCMDMOptionsUtilities_validatedMDMOptionsFromOptionsDictionary___block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69AD4F8];
  v4[0] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v1 = validatedMDMOptionsFromOptionsDictionary__validKeysAndClasses;
  validatedMDMOptionsFromOptionsDictionary__validKeysAndClasses = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)defaultMDMOptions
{
  v2 = CFPreferencesCopyAppValue(@"DefaultMDMOptions", @"com.apple.managedconfiguration.notbackedup");

  return v2;
}

+ (void)setDefaultMDMOptions:(id)options
{
  CFPreferencesSetAppValue(@"DefaultMDMOptions", options, @"com.apple.managedconfiguration.notbackedup");

  CFPreferencesAppSynchronize(@"com.apple.managedconfiguration.notbackedup");
}

@end