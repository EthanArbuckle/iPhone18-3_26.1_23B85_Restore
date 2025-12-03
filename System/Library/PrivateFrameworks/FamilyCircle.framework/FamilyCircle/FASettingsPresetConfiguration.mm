@interface FASettingsPresetConfiguration
+ (id)BOOLKeys;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValidBoolValue:(id)value;
- (BOOL)isValidTriState:(id)state;
- (FASettingsPresetConfiguration)initWithCoder:(id)coder;
- (FASettingsPresetConfiguration)initWithDictionary:(id)dictionary;
- (FASettingsPresetConfiguration)initWithValues:(id)values computedProperties:(id)properties;
- (id)allValuesWithUserValueProvider:(id)provider;
- (id)description;
- (id)presetValueForKey:(id)key userValueProvider:(id)provider;
- (id)validatedValuesFromValues:(id)values;
- (void)encodeWithCoder:(id)coder;
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

- (FASettingsPresetConfiguration)initWithValues:(id)values computedProperties:(id)properties
{
  valuesCopy = values;
  propertiesCopy = properties;
  v17.receiver = self;
  v17.super_class = FASettingsPresetConfiguration;
  v8 = [(FASettingsPresetConfiguration *)&v17 init];
  if (v8)
  {
    v9 = [valuesCopy copy];
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

    v13 = [propertiesCopy copy];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    values = self->_values;
    values = [equalCopy values];
    [(NSDictionary *)values isEqualToDictionary:values];
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  values = self->_values;
  coderCopy = coder;
  [coderCopy encodeObject:values forKey:@"values"];
  [coderCopy encodeObject:self->_computedProperties forKey:@"computedProperties"];
}

- (FASettingsPresetConfiguration)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = [v4 setWithObject:objc_opt_class()];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeDictionaryWithKeysOfClasses:v6 objectsOfClasses:v9 forKey:@"values"];

  v11 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v13 = [coderCopy decodeDictionaryWithKeysOfClasses:v11 objectsOfClasses:v12 forKey:@"computedProperties"];

  v14 = [(FASettingsPresetConfiguration *)self initWithValues:v10 computedProperties:v13];
  return v14;
}

- (FASettingsPresetConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = _FALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [FASettingsPresetConfiguration initWithDictionary:];
    }
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"values"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"computedProperties"];
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

      selfCopy = self;
    }

    else
    {
      v11 = _FALogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [FASettingsPresetConfiguration initWithDictionary:];
      }

      selfCopy = 0;
    }
  }

  else
  {
    v10 = _FALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [FASettingsPresetConfiguration initWithDictionary:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

FASettingsPresetComputedProperty *__52__FASettingsPresetConfiguration_initWithDictionary___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [[FASettingsPresetComputedProperty alloc] initWithDictionary:v3];

  return v4;
}

- (id)validatedValuesFromValues:(id)values
{
  v22 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = valuesCopy;
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

- (BOOL)isValidTriState:(id)state
{
  stateCopy = state;
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && (![stateCopy integerValue] || objc_msgSend(stateCopy, "integerValue") == 1 || objc_msgSend(stateCopy, "integerValue") == 2);

  return v4;
}

- (BOOL)isValidBoolValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([valueCopy integerValue])
    {
      v4 = [valueCopy integerValue] == 1;
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
  values = [(FASettingsPresetConfiguration *)self values];
  v6 = [v3 stringWithFormat:@"<%@: %p> ({\n values: %@\n)}", v4, self, values];

  return v6;
}

- (id)presetValueForKey:(id)key userValueProvider:(id)provider
{
  keyCopy = key;
  providerCopy = provider;
  v8 = providerCopy[2](providerCopy, keyCopy);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    computedProperties = [(FASettingsPresetConfiguration *)self computedProperties];
    v12 = [computedProperties objectForKeyedSubscript:keyCopy];

    if (v12)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __69__FASettingsPresetConfiguration_presetValueForKey_userValueProvider___block_invoke;
      v15[3] = &unk_1E7CA4868;
      v15[4] = self;
      v16 = providerCopy;
      v10 = [v12 computedValueWithValueProvider:v15];
    }

    else
    {
      values = [(FASettingsPresetConfiguration *)self values];
      v10 = [values objectForKeyedSubscript:keyCopy];
    }
  }

  return v10;
}

- (id)allValuesWithUserValueProvider:(id)provider
{
  providerCopy = provider;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6 = [MEMORY[0x1E695DFA8] set];
  v7 = MEMORY[0x1E695DFD8];
  values = [(FASettingsPresetConfiguration *)self values];
  allKeys = [values allKeys];
  v10 = [v7 setWithArray:allKeys];
  computedProperties = [(FASettingsPresetConfiguration *)self computedProperties];
  allKeys2 = [computedProperties allKeys];
  v13 = [v10 setByAddingObjectsFromArray:allKeys2];

  values2 = [(FASettingsPresetConfiguration *)self values];
  v31 = MEMORY[0x1E69E9820];
  v32 = 3221225472;
  v33 = __64__FASettingsPresetConfiguration_allValuesWithUserValueProvider___block_invoke;
  v34 = &unk_1E7CA4890;
  v15 = dictionary;
  v35 = v15;
  selfCopy = self;
  v16 = providerCopy;
  v38 = v16;
  v17 = v6;
  v37 = v17;
  [values2 enumerateKeysAndObjectsUsingBlock:&v31];

  v18 = [(FASettingsPresetConfiguration *)self computedProperties:v31];
  allKeys3 = [v18 allKeys];
  v20 = [allKeys3 mutableCopy];

  if ([v20 aaf_hasObjects])
  {
    do
    {
      aaf_removeFirstObject = [v20 aaf_removeFirstObject];
      computedProperties2 = [(FASettingsPresetConfiguration *)self computedProperties];
      v23 = [computedProperties2 objectForKeyedSubscript:aaf_removeFirstObject];

      dependencies = [v23 dependencies];
      v25 = [dependencies mutableCopy];

      [v25 intersectSet:v13];
      v26 = [v25 isSubsetOfSet:v17];
      v27 = v20;
      if (v26)
      {
        v28 = [(FASettingsPresetConfiguration *)self presetValueForKey:aaf_removeFirstObject userValueProvider:v16];
        [v15 setObject:v28 forKeyedSubscript:aaf_removeFirstObject];

        v27 = v17;
      }

      [v27 addObject:aaf_removeFirstObject];
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