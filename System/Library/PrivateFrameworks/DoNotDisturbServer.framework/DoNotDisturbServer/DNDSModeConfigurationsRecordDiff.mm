@interface DNDSModeConfigurationsRecordDiff
- (DNDSModeConfigurationsRecordDiff)initWithOriginalModeConfigurations:(id)configurations updatedModeConfigurations:(id)modeConfigurations zone:(id)zone;
- (id)_modifiedConfigurations;
- (id)_recordIDsInModeConfigurations:(id)configurations;
- (id)_removedConfigurations;
- (void)_generateDiff;
@end

@implementation DNDSModeConfigurationsRecordDiff

- (DNDSModeConfigurationsRecordDiff)initWithOriginalModeConfigurations:(id)configurations updatedModeConfigurations:(id)modeConfigurations zone:(id)zone
{
  configurationsCopy = configurations;
  modeConfigurationsCopy = modeConfigurations;
  zoneCopy = zone;
  v19.receiver = self;
  v19.super_class = DNDSModeConfigurationsRecordDiff;
  v11 = [(DNDSModeConfigurationsRecordDiff *)&v19 init];
  if (v11)
  {
    v12 = [configurationsCopy copy];
    original = v11->_original;
    v11->_original = v12;

    v14 = [modeConfigurationsCopy copy];
    updated = v11->_updated;
    v11->_updated = v14;

    v16 = [zoneCopy copy];
    zone = v11->_zone;
    v11->_zone = v16;

    [(DNDSModeConfigurationsRecordDiff *)v11 _generateDiff];
  }

  return v11;
}

- (void)_generateDiff
{
  _modifiedConfigurations = [(DNDSModeConfigurationsRecordDiff *)self _modifiedConfigurations];
  _removedConfigurations = [(DNDSModeConfigurationsRecordDiff *)self _removedConfigurations];
  v4 = [(DNDSModeConfigurationsRecordDiff *)self _recordIDsInModeConfigurations:_modifiedConfigurations];
  modifiedIDs = self->_modifiedIDs;
  self->_modifiedIDs = v4;

  v6 = [(DNDSModeConfigurationsRecordDiff *)self _recordIDsInModeConfigurations:_removedConfigurations];
  removedIDs = self->_removedIDs;
  self->_removedIDs = v6;
}

- (id)_recordIDsInModeConfigurations:(id)configurations
{
  v24 = *MEMORY[0x277D85DE8];
  configurationsCopy = configurations;
  array = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = configurationsCopy;
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
        mode = [v10 mode];
        modeIdentifier = [mode modeIdentifier];
        zoneID = [(CKRecordZone *)self->_zone zoneID];
        v15 = [v11 initWithRecordName:modeIdentifier zoneID:zoneID];

        [array addObject:v15];
      }

      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)_modifiedConfigurations
{
  v21 = *MEMORY[0x277D85DE8];
  modeConfigurations = [(DNDSModeConfigurationsRecord *)self->_updated modeConfigurations];
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = modeConfigurations;
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
        mode = [v10 mode];
        modeIdentifier = [mode modeIdentifier];

        v13 = [(DNDSModeConfigurationsRecord *)self->_original modeConfigurationForModeIdentifier:modeIdentifier];
        if (([v10 isEqual:v13] & 1) == 0)
        {
          [array addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)_removedConfigurations
{
  v20 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  modeConfigurations = [(DNDSModeConfigurationsRecord *)self->_original modeConfigurations];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [modeConfigurations countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(modeConfigurations);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        mode = [v9 mode];
        modeIdentifier = [mode modeIdentifier];

        v12 = [(DNDSModeConfigurationsRecord *)self->_updated modeConfigurationForModeIdentifier:modeIdentifier];
        if (!v12)
        {
          [array addObject:v9];
        }
      }

      v6 = [modeConfigurations countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];

  return array;
}

@end