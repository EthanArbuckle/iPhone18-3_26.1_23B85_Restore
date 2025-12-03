@interface DNDSModeConfigurationsRecord
+ (id)backingStoreWithFileURL:(id)l secureFileURL:(id)rL;
+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context;
+ (id)newWithDictionaryRepresentation:(id)representation partitionedDictionaryRepresentation:(id)dictionaryRepresentation context:(id)context;
- (BOOL)isEqual:(id)equal;
- (id)_initWithModeConfigurations:(id)configurations;
- (id)_initWithRecord:(id)record;
- (id)configurationForModeIdentifier:(id)identifier;
- (id)dictionaryRepresentationWithContext:(id)context;
- (id)modeForModeIdentifier:(id)identifier;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)triggersForModeIdentifier:(id)identifier;
- (void)log:(id)log withMessage:(id)message;
@end

@implementation DNDSModeConfigurationsRecord

+ (id)backingStoreWithFileURL:(id)l secureFileURL:(id)rL
{
  rLCopy = rL;
  lCopy = l;
  v8 = [[DNDSJSONBackingStore alloc] initWithRecordClass:self fileURL:lCopy secureFileURL:rLCopy versionNumber:2 securityClass:2];

  return v8;
}

- (id)_initWithRecord:(id)record
{
  modeConfigurations = [record modeConfigurations];
  v5 = [(DNDSModeConfigurationsRecord *)self _initWithModeConfigurations:modeConfigurations];

  return v5;
}

- (id)_initWithModeConfigurations:(id)configurations
{
  v25 = *MEMORY[0x277D85DE8];
  configurationsCopy = configurations;
  v23.receiver = self;
  v23.super_class = DNDSModeConfigurationsRecord;
  v5 = [(DNDSModeConfigurationsRecord *)&v23 init];
  if (v5)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    modeConfigurationsByModeIdentifier = v5->_modeConfigurationsByModeIdentifier;
    v5->_modeConfigurationsByModeIdentifier = dictionary;

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = configurationsCopy;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = v5->_modeConfigurationsByModeIdentifier;
          mode = [v13 mode];
          modeIdentifier = [mode modeIdentifier];
          [(NSMutableDictionary *)v14 setObject:v13 forKeyedSubscript:modeIdentifier];
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v10);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)configurationForModeIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_modeConfigurationsByModeIdentifier objectForKeyedSubscript:identifier];
  configuration = [v3 configuration];

  return configuration;
}

- (id)triggersForModeIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_modeConfigurationsByModeIdentifier objectForKeyedSubscript:identifier];
  triggers = [v3 triggers];

  return triggers;
}

- (id)modeForModeIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_modeConfigurationsByModeIdentifier objectForKeyedSubscript:identifier];
  mode = [v3 mode];

  return mode;
}

- (void)log:(id)log withMessage:(id)message
{
  v22 = *MEMORY[0x277D85DE8];
  logCopy = log;
  messageCopy = message;
  if (os_log_type_enabled(logCopy, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = messageCopy;
    _os_log_impl(&dword_24912E000, logCopy, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_modeConfigurationsByModeIdentifier;
  v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(NSMutableDictionary *)self->_modeConfigurationsByModeIdentifier objectForKeyedSubscript:*(*(&v15 + 1) + 8 * v12), v15];
        [v13 log:logCopy withMessage:@"Record"];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      modeConfigurations = [(DNDSModeConfigurationsRecord *)self modeConfigurations];
      modeConfigurations2 = [(DNDSModeConfigurationsRecord *)v5 modeConfigurations];
      if (modeConfigurations == modeConfigurations2)
      {
        v12 = 1;
      }

      else
      {
        modeConfigurations3 = [(DNDSModeConfigurationsRecord *)self modeConfigurations];
        if (modeConfigurations3)
        {
          modeConfigurations4 = [(DNDSModeConfigurationsRecord *)v5 modeConfigurations];
          if (modeConfigurations4)
          {
            modeConfigurations5 = [(DNDSModeConfigurationsRecord *)self modeConfigurations];
            modeConfigurations6 = [(DNDSModeConfigurationsRecord *)v5 modeConfigurations];
            v12 = [modeConfigurations5 isEqual:modeConfigurations6];
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
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDSMutableModeConfigurationsRecord alloc];

  return [(DNDSModeConfigurationsRecord *)v4 _initWithRecord:self];
}

+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  contextCopy = context;
  v8 = [representationCopy bs_safeObjectForKey:@"modeConfigurations" ofType:objc_opt_class()];
  array = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [DNDSModeConfigurationRecord newWithDictionaryRepresentation:*(*(&v19 + 1) + 8 * v14) context:contextCopy, v19];
        [array addObject:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v16 = [[self alloc] _initWithModeConfigurations:array];
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (id)newWithDictionaryRepresentation:(id)representation partitionedDictionaryRepresentation:(id)dictionaryRepresentation context:(id)context
{
  v33 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  dictionaryRepresentationCopy = dictionaryRepresentation;
  contextCopy = context;
  v27 = representationCopy;
  v10 = [representationCopy bs_safeObjectForKey:@"modeConfigurations" ofType:objc_opt_class()];
  v26 = dictionaryRepresentationCopy;
  v11 = [dictionaryRepresentationCopy bs_safeObjectForKey:@"secureModeConfigurations" ofType:objc_opt_class()];
  array = [MEMORY[0x277CBEB18] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v28 + 1) + 8 * i);
        v19 = [v13 objectForKeyedSubscript:v18];
        v20 = [v11 objectForKeyedSubscript:v18];
        v21 = [DNDSModeConfigurationRecord newWithDictionaryRepresentation:v19 partitionedDictionaryRepresentation:v20 context:contextCopy];
        [array addObject:v21];
      }

      v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v15);
  }

  v22 = [[self alloc] _initWithModeConfigurations:array];
  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (id)dictionaryRepresentationWithContext:(id)context
{
  v42 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v31 = dictionary;
  if ([contextCopy partitionType])
  {
    v6 = [contextCopy mutableCopy];
    [v6 setPartitionType:1];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    selfCopy = self;
    allValues = [(NSMutableDictionary *)self->_modeConfigurationsByModeIdentifier allValues];
    v9 = [allValues countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v37;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v37 != v11)
          {
            objc_enumerationMutation(allValues);
          }

          v13 = *(*(&v36 + 1) + 8 * i);
          v14 = [v13 dictionaryRepresentationWithContext:v6];
          mode = [v13 mode];
          modeIdentifier = [mode modeIdentifier];
          [dictionary2 setObject:v14 forKeyedSubscript:modeIdentifier];
        }

        v10 = [allValues countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v10);
    }

    dictionary = v31;
    [v31 setObject:dictionary2 forKeyedSubscript:@"modeConfigurations"];

    self = selfCopy;
  }

  if (([contextCopy partitionType] & 2) != 0)
  {
    v17 = [contextCopy mutableCopy];
    [v17 setPartitionType:2];
    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    allValues2 = [(NSMutableDictionary *)self->_modeConfigurationsByModeIdentifier allValues];
    v20 = [allValues2 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v33;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v33 != v22)
          {
            objc_enumerationMutation(allValues2);
          }

          v24 = *(*(&v32 + 1) + 8 * j);
          v25 = [v24 dictionaryRepresentationWithContext:contextCopy];
          mode2 = [v24 mode];
          modeIdentifier2 = [mode2 modeIdentifier];
          [dictionary3 setObject:v25 forKeyedSubscript:modeIdentifier2];
        }

        v21 = [allValues2 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v21);
    }

    dictionary = v31;
    [v31 setObject:dictionary3 forKeyedSubscript:@"secureModeConfigurations"];
  }

  v28 = *MEMORY[0x277D85DE8];

  return dictionary;
}

@end