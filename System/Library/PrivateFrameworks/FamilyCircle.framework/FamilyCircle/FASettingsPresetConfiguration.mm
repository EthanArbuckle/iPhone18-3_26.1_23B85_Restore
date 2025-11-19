@interface FASettingsPresetConfiguration
+ (id)BOOLKeys;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValidBoolValue:(id)a3;
- (BOOL)isValidTriState:(id)a3;
- (FASettingsPresetConfiguration)initWithCoder:(id)a3;
- (FASettingsPresetConfiguration)initWithDictionary:(id)a3;
- (FASettingsPresetConfiguration)initWithValues:(id)a3 computedProperties:(id)a4;
- (id)allValuesWithUserValueProvider:(id)a3;
- (id)description;
- (id)presetValueForKey:(id)a3 userValueProvider:(id)a4;
- (id)validatedValuesFromValues:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FASettingsPresetConfiguration

+ (id)BOOLKeys
{
  if (BOOLKeys_onceToken != -1)
  {
    +[FASettingsPresetConfiguration BOOLKeys];
  }

  v3 = BOOLKeys_keys;

  return v3;
}

uint64_t __41__FASettingsPresetConfiguration_BOOLKeys__block_invoke()
{
  BOOLKeys_keys = [MEMORY[0x1E695DFD8] setWithObjects:{@"media.settings.allowBookstoreErotica", @"system.ratings.allowExplicitContent", @"system.music.allowMusicVideos", @"system.music.allowMusicArtistActivity", @"system.siri.allowAssistantUserGeneratedContent", 0x1F2F2C000, @"application.store.allowAppRemoval", 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (FASettingsPresetConfiguration)initWithValues:(id)a3 computedProperties:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = FASettingsPresetConfiguration;
  v8 = [(FASettingsPresetConfiguration *)&v17 init];
  if (v8)
  {
    v9 = [v6 copy];
    v10 = v9;
    v11 = MEMORY[0x1E695E0F8];
    if (v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = MEMORY[0x1E695E0F8];
    }

    objc_storeStrong(&v8->_values, v12);

    v13 = [v7 copy];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v11;
    }

    objc_storeStrong(&v8->_computedProperties, v15);
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    values = self->_values;
    v6 = [v4 values];
    [(NSDictionary *)values isEqualToDictionary:v6];
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  values = self->_values;
  v5 = a3;
  [v5 encodeObject:values forKey:@"values"];
  [v5 encodeObject:self->_computedProperties forKey:@"computedProperties"];
}

- (FASettingsPresetConfiguration)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [v4 setWithObject:objc_opt_class()];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [v5 decodeDictionaryWithKeysOfClasses:v6 objectsOfClasses:v9 forKey:@"values"];

  v11 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v13 = [v5 decodeDictionaryWithKeysOfClasses:v11 objectsOfClasses:v12 forKey:@"computedProperties"];

  v14 = [(FASettingsPresetConfiguration *)self initWithValues:v10 computedProperties:v13];
  return v14;
}

- (FASettingsPresetConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = _FALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [FASettingsPresetConfiguration initWithDictionary:];
    }
  }

  v6 = [v4 objectForKeyedSubscript:@"values"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v4 objectForKeyedSubscript:@"computedProperties"];
    v8 = v7;
    v9 = MEMORY[0x1E695E0F8];
    if (v7)
    {
      v9 = v7;
    }

    v10 = v9;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 aaf_map:&__block_literal_global_50];
      v12 = [(FASettingsPresetConfiguration *)self validatedValuesFromValues:v6];
      self = [(FASettingsPresetConfiguration *)self initWithValues:v12 computedProperties:v11];

      v13 = self;
    }

    else
    {
      v11 = _FALogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [FASettingsPresetConfiguration initWithDictionary:];
      }

      v13 = 0;
    }
  }

  else
  {
    v10 = _FALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [FASettingsPresetConfiguration initWithDictionary:];
    }

    v13 = 0;
  }

  return v13;
}

FASettingsPresetComputedProperty *__52__FASettingsPresetConfiguration_initWithDictionary___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [[FASettingsPresetComputedProperty alloc] initWithDictionary:v3];

  return v4;
}

- (id)validatedValuesFromValues:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([v11 isEqualToString:{@"STCustomRestrictionConfiguration.STCustomRestrictionWebFilterState", v17}])
        {
          v12 = [v6 objectForKeyedSubscript:v11];
          if ([(FASettingsPresetConfiguration *)self isValidTriState:v12])
          {
            goto LABEL_11;
          }
        }

        else
        {
          v13 = +[FASettingsPresetConfiguration BOOLKeys];
          v14 = [v13 containsObject:v11];

          v12 = [v6 objectForKeyedSubscript:v11];
          if (!v14 || [(FASettingsPresetConfiguration *)self isValidBoolValue:v12])
          {
LABEL_11:
            [v5 setObject:v12 forKeyedSubscript:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)isValidTriState:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && (![v3 integerValue] || objc_msgSend(v3, "integerValue") == 1 || objc_msgSend(v3, "integerValue") == 2);

  return v4;
}

- (BOOL)isValidBoolValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v3 integerValue])
    {
      v4 = [v3 integerValue] == 1;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(FASettingsPresetConfiguration *)self values];
  v6 = [v3 stringWithFormat:@"<%@: %p> ({\n values: %@\n)}", v4, self, v5];

  return v6;
}

- (id)presetValueForKey:(id)a3 userValueProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7[2](v7, v6);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = [(FASettingsPresetConfiguration *)self computedProperties];
    v12 = [v11 objectForKeyedSubscript:v6];

    if (v12)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __69__FASettingsPresetConfiguration_presetValueForKey_userValueProvider___block_invoke;
      v15[3] = &unk_1E7CA4868;
      v15[4] = self;
      v16 = v7;
      v10 = [v12 computedValueWithValueProvider:v15];
    }

    else
    {
      v13 = [(FASettingsPresetConfiguration *)self values];
      v10 = [v13 objectForKeyedSubscript:v6];
    }
  }

  return v10;
}

- (id)allValuesWithUserValueProvider:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [MEMORY[0x1E695DFA8] set];
  v7 = MEMORY[0x1E695DFD8];
  v8 = [(FASettingsPresetConfiguration *)self values];
  v9 = [v8 allKeys];
  v10 = [v7 setWithArray:v9];
  v11 = [(FASettingsPresetConfiguration *)self computedProperties];
  v12 = [v11 allKeys];
  v13 = [v10 setByAddingObjectsFromArray:v12];

  v14 = [(FASettingsPresetConfiguration *)self values];
  v31 = MEMORY[0x1E69E9820];
  v32 = 3221225472;
  v33 = __64__FASettingsPresetConfiguration_allValuesWithUserValueProvider___block_invoke;
  v34 = &unk_1E7CA4890;
  v15 = v5;
  v35 = v15;
  v36 = self;
  v16 = v4;
  v38 = v16;
  v17 = v6;
  v37 = v17;
  [v14 enumerateKeysAndObjectsUsingBlock:&v31];

  v18 = [(FASettingsPresetConfiguration *)self computedProperties:v31];
  v19 = [v18 allKeys];
  v20 = [v19 mutableCopy];

  if ([v20 aaf_hasObjects])
  {
    do
    {
      v21 = [v20 aaf_removeFirstObject];
      v22 = [(FASettingsPresetConfiguration *)self computedProperties];
      v23 = [v22 objectForKeyedSubscript:v21];

      v24 = [v23 dependencies];
      v25 = [v24 mutableCopy];

      [v25 intersectSet:v13];
      v26 = [v25 isSubsetOfSet:v17];
      v27 = v20;
      if (v26)
      {
        v28 = [(FASettingsPresetConfiguration *)self presetValueForKey:v21 userValueProvider:v16];
        [v15 setObject:v28 forKeyedSubscript:v21];

        v27 = v17;
      }

      [v27 addObject:v21];
    }

    while (([v20 aaf_hasObjects] & 1) != 0);
  }

  v29 = v15;

  return v15;
}

void __64__FASettingsPresetConfiguration_allValuesWithUserValueProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v6 = a2;
  v5 = [v3 presetValueForKey:v6 userValueProvider:v4];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];

  [*(a1 + 48) addObject:v6];
}

- (void)initWithDictionary:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_0(&dword_1B70B0000, v0, v1, "Error decoding %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

@end