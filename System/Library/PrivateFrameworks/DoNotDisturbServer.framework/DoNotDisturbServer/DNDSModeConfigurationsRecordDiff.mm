@interface DNDSModeConfigurationsRecordDiff
- (DNDSModeConfigurationsRecordDiff)initWithOriginalModeConfigurations:(id)a3 updatedModeConfigurations:(id)a4 zone:(id)a5;
- (id)_modifiedConfigurations;
- (id)_recordIDsInModeConfigurations:(id)a3;
- (id)_removedConfigurations;
- (void)_generateDiff;
@end

@implementation DNDSModeConfigurationsRecordDiff

- (DNDSModeConfigurationsRecordDiff)initWithOriginalModeConfigurations:(id)a3 updatedModeConfigurations:(id)a4 zone:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = DNDSModeConfigurationsRecordDiff;
  v11 = [(DNDSModeConfigurationsRecordDiff *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    original = v11->_original;
    v11->_original = v12;

    v14 = [v9 copy];
    updated = v11->_updated;
    v11->_updated = v14;

    v16 = [v10 copy];
    zone = v11->_zone;
    v11->_zone = v16;

    [(DNDSModeConfigurationsRecordDiff *)v11 _generateDiff];
  }

  return v11;
}

- (void)_generateDiff
{
  v8 = [(DNDSModeConfigurationsRecordDiff *)self _modifiedConfigurations];
  v3 = [(DNDSModeConfigurationsRecordDiff *)self _removedConfigurations];
  v4 = [(DNDSModeConfigurationsRecordDiff *)self _recordIDsInModeConfigurations:v8];
  modifiedIDs = self->_modifiedIDs;
  self->_modifiedIDs = v4;

  v6 = [(DNDSModeConfigurationsRecordDiff *)self _recordIDsInModeConfigurations:v3];
  removedIDs = self->_removedIDs;
  self->_removedIDs = v6;
}

- (id)_recordIDsInModeConfigurations:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = objc_alloc(MEMORY[0x277CBC5D0]);
        v12 = [v10 mode];
        v13 = [v12 modeIdentifier];
        v14 = [(CKRecordZone *)self->_zone zoneID];
        v15 = [v11 initWithRecordName:v13 zoneID:v14];

        [v5 addObject:v15];
      }

      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_modifiedConfigurations
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(DNDSModeConfigurationsRecord *)self->_updated modeConfigurations];
  v4 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 mode];
        v12 = [v11 modeIdentifier];

        v13 = [(DNDSModeConfigurationsRecord *)self->_original modeConfigurationForModeIdentifier:v12];
        if (([v10 isEqual:v13] & 1) == 0)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_removedConfigurations
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(DNDSModeConfigurationsRecord *)self->_original modeConfigurations];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 mode];
        v11 = [v10 modeIdentifier];

        v12 = [(DNDSModeConfigurationsRecord *)self->_updated modeConfigurationForModeIdentifier:v11];
        if (!v12)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

@end