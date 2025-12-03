@interface FASettingsPreset
- (BOOL)isEqual:(id)equal;
- (FASettingsPreset)initWithCoder:(id)coder;
- (FASettingsPreset)initWithDictionary:(id)dictionary;
- (FASettingsPreset)initWithIdentifier:(id)identifier minAge:(int64_t)age maxAge:(int64_t)maxAge sources:(id)sources;
- (NSString)displayName;
- (id)description;
- (id)sourceWithIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FASettingsPreset

- (FASettingsPreset)initWithIdentifier:(id)identifier minAge:(int64_t)age maxAge:(int64_t)maxAge sources:(id)sources
{
  identifierCopy = identifier;
  sourcesCopy = sources;
  v19.receiver = self;
  v19.super_class = FASettingsPreset;
  v12 = [(FASettingsPreset *)&v19 init];
  if (v12)
  {
    v13 = [identifierCopy copy];
    identifier = v12->_identifier;
    v12->_identifier = v13;

    v12->_minAge = age;
    v12->_maxAge = maxAge;
    v15 = [sourcesCopy copy];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v12->_sources, v17);
  }

  return v12;
}

- (NSString)displayName
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"SETTINGS_PRESETS_AGE" value:&stru_1F2F2DA80 table:@"Localizable"];
  v6 = [v3 stringWithFormat:v5, self->_minAge, self->_maxAge];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = self->_identifier;
    identifier = [v5 identifier];
    if (-[NSString isEqualToString:](identifier, "isEqualToString:", identifier) && (minAge = self->_minAge, minAge == [v5 minAge]) && (maxAge = self->_maxAge, maxAge == objc_msgSend(v5, "maxAge")))
    {
      sources = self->_sources;
      sources = [v5 sources];
      v12 = [(NSArray *)sources isEqualToArray:sources];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeInteger:self->_minAge forKey:@"minAge"];
  [coderCopy encodeInteger:self->_maxAge forKey:@"maxAge"];
  [coderCopy encodeObject:self->_sources forKey:@"sources"];
}

- (FASettingsPreset)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeIntegerForKey:@"minAge"];
  v7 = [coderCopy decodeIntegerForKey:@"maxAge"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"sources"];

  v12 = [(FASettingsPreset *)self initWithIdentifier:v5 minAge:v6 maxAge:v7 sources:v11];
  return v12;
}

- (FASettingsPreset)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = _FALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [FASettingsPreset initWithDictionary:];
    }
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"sources"];
  v8 = v7;
  if (v7)
  {
    array = v7;
  }

  else
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  v10 = array;

  v11 = [dictionaryCopy objectForKeyedSubscript:@"minAge"];
  v12 = [dictionaryCopy objectForKeyedSubscript:@"maxAge"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = _FALogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = _FALogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = _FALogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      goto LABEL_30;
    }
  }

  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = _FALogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
LABEL_29:
        [FASettingsPreset initWithDictionary:];
      }

LABEL_30:
      selfCopy = 0;
      goto LABEL_31;
    }
  }

  v13 = [v10 fa_map:&__block_literal_global_13];
  v14 = [v13 count];
  if (v14 != [v10 count])
  {
    v19 = _FALogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [FASettingsPreset initWithDictionary:];
    }

    goto LABEL_30;
  }

  integerValue = [v11 integerValue];
  integerValue2 = [v12 integerValue];
  if (integerValue2)
  {
    v17 = integerValue2;
  }

  else
  {
    v17 = 0x7FFFFFFFFFFFFFFFLL;
  }

  self = [(FASettingsPreset *)self initWithIdentifier:v6 minAge:integerValue maxAge:v17 sources:v13];
  selfCopy = self;
LABEL_31:

  return selfCopy;
}

FASettingsPresetSource *__39__FASettingsPreset_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FASettingsPresetSource alloc] initWithDictionary:v2];

  return v3;
}

- (id)sourceWithIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_sources;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier isEqualToString:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(FASettingsPreset *)self identifier];
  displayName = [(FASettingsPreset *)self displayName];
  minAge = [(FASettingsPreset *)self minAge];
  maxAge = [(FASettingsPreset *)self maxAge];
  sources = [(FASettingsPreset *)self sources];
  v10 = [v3 stringWithFormat:@"<%@: %p> ({\n identifier: %@\n displayName: %@\n age: %ld - %ld\n sources: %@\n)}", v4, self, identifier, displayName, minAge, maxAge, sources];

  return v10;
}

- (void)initWithDictionary:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0(&dword_1B70B0000, v0, v1, "Error decoding %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end