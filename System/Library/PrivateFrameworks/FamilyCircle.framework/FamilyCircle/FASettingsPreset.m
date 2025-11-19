@interface FASettingsPreset
- (BOOL)isEqual:(id)a3;
- (FASettingsPreset)initWithCoder:(id)a3;
- (FASettingsPreset)initWithDictionary:(id)a3;
- (FASettingsPreset)initWithIdentifier:(id)a3 minAge:(int64_t)a4 maxAge:(int64_t)a5 sources:(id)a6;
- (NSString)displayName;
- (id)description;
- (id)sourceWithIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FASettingsPreset

- (FASettingsPreset)initWithIdentifier:(id)a3 minAge:(int64_t)a4 maxAge:(int64_t)a5 sources:(id)a6
{
  v10 = a3;
  v11 = a6;
  v19.receiver = self;
  v19.super_class = FASettingsPreset;
  v12 = [(FASettingsPreset *)&v19 init];
  if (v12)
  {
    v13 = [v10 copy];
    identifier = v12->_identifier;
    v12->_identifier = v13;

    v12->_minAge = a4;
    v12->_maxAge = a5;
    v15 = [v11 copy];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    identifier = self->_identifier;
    v7 = [v5 identifier];
    if (-[NSString isEqualToString:](identifier, "isEqualToString:", v7) && (minAge = self->_minAge, minAge == [v5 minAge]) && (maxAge = self->_maxAge, maxAge == objc_msgSend(v5, "maxAge")))
    {
      sources = self->_sources;
      v11 = [v5 sources];
      v12 = [(NSArray *)sources isEqualToArray:v11];
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

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeInteger:self->_minAge forKey:@"minAge"];
  [v5 encodeInteger:self->_maxAge forKey:@"maxAge"];
  [v5 encodeObject:self->_sources forKey:@"sources"];
}

- (FASettingsPreset)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeIntegerForKey:@"minAge"];
  v7 = [v4 decodeIntegerForKey:@"maxAge"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"sources"];

  v12 = [(FASettingsPreset *)self initWithIdentifier:v5 minAge:v6 maxAge:v7 sources:v11];
  return v12;
}

- (FASettingsPreset)initWithDictionary:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = _FALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [FASettingsPreset initWithDictionary:];
    }
  }

  v6 = [v4 objectForKeyedSubscript:@"identifier"];
  v7 = [v4 objectForKeyedSubscript:@"sources"];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x1E695DEC8] array];
  }

  v10 = v9;

  v11 = [v4 objectForKeyedSubscript:@"minAge"];
  v12 = [v4 objectForKeyedSubscript:@"maxAge"];
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
      v18 = 0;
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

  v15 = [v11 integerValue];
  v16 = [v12 integerValue];
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0x7FFFFFFFFFFFFFFFLL;
  }

  self = [(FASettingsPreset *)self initWithIdentifier:v6 minAge:v15 maxAge:v17 sources:v13];
  v18 = self;
LABEL_31:

  return v18;
}

FASettingsPresetSource *__39__FASettingsPreset_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FASettingsPresetSource alloc] initWithDictionary:v2];

  return v3;
}

- (id)sourceWithIdentifier:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
        v10 = [v9 identifier];
        v11 = [v10 isEqualToString:v4];

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
  v5 = [(FASettingsPreset *)self identifier];
  v6 = [(FASettingsPreset *)self displayName];
  v7 = [(FASettingsPreset *)self minAge];
  v8 = [(FASettingsPreset *)self maxAge];
  v9 = [(FASettingsPreset *)self sources];
  v10 = [v3 stringWithFormat:@"<%@: %p> ({\n identifier: %@\n displayName: %@\n age: %ld - %ld\n sources: %@\n)}", v4, self, v5, v6, v7, v8, v9];

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