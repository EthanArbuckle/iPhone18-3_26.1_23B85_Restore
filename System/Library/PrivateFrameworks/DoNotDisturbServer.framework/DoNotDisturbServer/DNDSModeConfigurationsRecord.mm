@interface DNDSModeConfigurationsRecord
+ (id)backingStoreWithFileURL:(id)a3 secureFileURL:(id)a4;
+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4;
+ (id)newWithDictionaryRepresentation:(id)a3 partitionedDictionaryRepresentation:(id)a4 context:(id)a5;
- (BOOL)isEqual:(id)a3;
- (id)_initWithModeConfigurations:(id)a3;
- (id)_initWithRecord:(id)a3;
- (id)configurationForModeIdentifier:(id)a3;
- (id)dictionaryRepresentationWithContext:(id)a3;
- (id)modeForModeIdentifier:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)triggersForModeIdentifier:(id)a3;
- (void)log:(id)a3 withMessage:(id)a4;
@end

@implementation DNDSModeConfigurationsRecord

+ (id)backingStoreWithFileURL:(id)a3 secureFileURL:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[DNDSJSONBackingStore alloc] initWithRecordClass:a1 fileURL:v7 secureFileURL:v6 versionNumber:2 securityClass:2];

  return v8;
}

- (id)_initWithRecord:(id)a3
{
  v4 = [a3 modeConfigurations];
  v5 = [(DNDSModeConfigurationsRecord *)self _initWithModeConfigurations:v4];

  return v5;
}

- (id)_initWithModeConfigurations:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = DNDSModeConfigurationsRecord;
  v5 = [(DNDSModeConfigurationsRecord *)&v23 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    modeConfigurationsByModeIdentifier = v5->_modeConfigurationsByModeIdentifier;
    v5->_modeConfigurationsByModeIdentifier = v6;

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v4;
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
          v15 = [v13 mode];
          v16 = [v15 modeIdentifier];
          [(NSMutableDictionary *)v14 setObject:v13 forKeyedSubscript:v16];
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v10);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)configurationForModeIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_modeConfigurationsByModeIdentifier objectForKeyedSubscript:a3];
  v4 = [v3 configuration];

  return v4;
}

- (id)triggersForModeIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_modeConfigurationsByModeIdentifier objectForKeyedSubscript:a3];
  v4 = [v3 triggers];

  return v4;
}

- (id)modeForModeIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_modeConfigurationsByModeIdentifier objectForKeyedSubscript:a3];
  v4 = [v3 mode];

  return v4;
}

- (void)log:(id)a3 withMessage:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = v7;
    _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
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
        [v13 log:v6 withMessage:@"Record"];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DNDSModeConfigurationsRecord *)self modeConfigurations];
      v7 = [(DNDSModeConfigurationsRecord *)v5 modeConfigurations];
      if (v6 == v7)
      {
        v12 = 1;
      }

      else
      {
        v8 = [(DNDSModeConfigurationsRecord *)self modeConfigurations];
        if (v8)
        {
          v9 = [(DNDSModeConfigurationsRecord *)v5 modeConfigurations];
          if (v9)
          {
            v10 = [(DNDSModeConfigurationsRecord *)self modeConfigurations];
            v11 = [(DNDSModeConfigurationsRecord *)v5 modeConfigurations];
            v12 = [v10 isEqual:v11];
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

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDSMutableModeConfigurationsRecord alloc];

  return [(DNDSModeConfigurationsRecord *)v4 _initWithRecord:self];
}

+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 bs_safeObjectForKey:@"modeConfigurations" ofType:objc_opt_class()];
  v9 = [MEMORY[0x277CBEB18] array];
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

        v15 = [DNDSModeConfigurationRecord newWithDictionaryRepresentation:*(*(&v19 + 1) + 8 * v14) context:v7, v19];
        [v9 addObject:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v16 = [[a1 alloc] _initWithModeConfigurations:v9];
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (id)newWithDictionaryRepresentation:(id)a3 partitionedDictionaryRepresentation:(id)a4 context:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v27 = v7;
  v10 = [v7 bs_safeObjectForKey:@"modeConfigurations" ofType:objc_opt_class()];
  v26 = v8;
  v11 = [v8 bs_safeObjectForKey:@"secureModeConfigurations" ofType:objc_opt_class()];
  v12 = [MEMORY[0x277CBEB18] array];
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
        v21 = [DNDSModeConfigurationRecord newWithDictionaryRepresentation:v19 partitionedDictionaryRepresentation:v20 context:v9];
        [v12 addObject:v21];
      }

      v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v15);
  }

  v22 = [[a1 alloc] _initWithModeConfigurations:v12];
  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (id)dictionaryRepresentationWithContext:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v31 = v5;
  if ([v4 partitionType])
  {
    v6 = [v4 mutableCopy];
    [v6 setPartitionType:1];
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v30 = self;
    v8 = [(NSMutableDictionary *)self->_modeConfigurationsByModeIdentifier allValues];
    v9 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v36 + 1) + 8 * i);
          v14 = [v13 dictionaryRepresentationWithContext:v6];
          v15 = [v13 mode];
          v16 = [v15 modeIdentifier];
          [v7 setObject:v14 forKeyedSubscript:v16];
        }

        v10 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v10);
    }

    v5 = v31;
    [v31 setObject:v7 forKeyedSubscript:@"modeConfigurations"];

    self = v30;
  }

  if (([v4 partitionType] & 2) != 0)
  {
    v17 = [v4 mutableCopy];
    [v17 setPartitionType:2];
    v18 = [MEMORY[0x277CBEB38] dictionary];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v19 = [(NSMutableDictionary *)self->_modeConfigurationsByModeIdentifier allValues];
    v20 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
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
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v32 + 1) + 8 * j);
          v25 = [v24 dictionaryRepresentationWithContext:v4];
          v26 = [v24 mode];
          v27 = [v26 modeIdentifier];
          [v18 setObject:v25 forKeyedSubscript:v27];
        }

        v21 = [v19 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v21);
    }

    v5 = v31;
    [v31 setObject:v18 forKeyedSubscript:@"secureModeConfigurations"];
  }

  v28 = *MEMORY[0x277D85DE8];

  return v5;
}

@end