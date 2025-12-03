@interface BBSectionInfoStore
- (BBSectionInfoStore)initWithEffectiveSettingsProvider:(id)provider persistence:(id)persistence;
- (id)effectiveSectionInfoForSectionInfo:(id)info;
- (id)sectionInfoForSectionID:(id)d effective:(BOOL)effective;
- (void)_sortSectionIDs:(id)ds usingGuideArray:(id)array;
- (void)addActiveSectionID:(id)d;
- (void)removeSectionWithID:(id)d;
- (void)setClearedInfo:(id)info forSectionID:(id)d;
- (void)setClearedSectionsByID:(id)d;
- (void)setSectionInfoByID:(id)d;
@end

@implementation BBSectionInfoStore

- (BBSectionInfoStore)initWithEffectiveSettingsProvider:(id)provider persistence:(id)persistence
{
  providerCopy = provider;
  persistenceCopy = persistence;
  v19.receiver = self;
  v19.super_class = BBSectionInfoStore;
  v9 = [(BBSectionInfoStore *)&v19 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sectionInfoByID = v9->_sectionInfoByID;
    v9->_sectionInfoByID = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    activeSectionIDs = v9->_activeSectionIDs;
    v9->_activeSectionIDs = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sortedSectionIDs = v9->_sortedSectionIDs;
    v9->_sortedSectionIDs = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    clearedSectionsByID = v9->_clearedSectionsByID;
    v9->_clearedSectionsByID = v16;

    objc_storeStrong(&v9->_effectiveSettings, provider);
    objc_storeStrong(&v9->_persistence, persistence);
  }

  return v9;
}

- (void)removeSectionWithID:(id)d
{
  sectionInfoByID = self->_sectionInfoByID;
  dCopy = d;
  [(NSMutableDictionary *)sectionInfoByID removeObjectForKey:dCopy];
  [(NSMutableSet *)self->_activeSectionIDs removeObject:dCopy];
  [(NSMutableArray *)self->_sortedSectionIDs removeObject:dCopy];
  [(NSMutableDictionary *)self->_clearedSectionsByID removeObjectForKey:dCopy];

  [(BBPersistentStoreInterface *)self->_persistence writeSectionInfo:self->_sectionInfoByID];
  persistence = self->_persistence;
  clearedSectionsByID = self->_clearedSectionsByID;

  [(BBPersistentStoreInterface *)persistence writeClearedSections:clearedSectionsByID];
}

- (id)sectionInfoForSectionID:(id)d effective:(BOOL)effective
{
  effectiveCopy = effective;
  v6 = [(NSMutableDictionary *)self->_sectionInfoByID objectForKey:d];
  if (effectiveCopy)
  {
    v7 = [(BBSectionInfoStore *)self effectiveSectionInfoForSectionInfo:v6];

    v6 = v7;
  }

  return v6;
}

- (void)setSectionInfoByID:(id)d
{
  v4 = [d mutableCopy];
  sectionInfoByID = self->_sectionInfoByID;
  self->_sectionInfoByID = v4;

  MEMORY[0x2821F96F8]();
}

- (void)addActiveSectionID:(id)d
{
  dCopy = d;
  [(NSMutableSet *)self->_activeSectionIDs addObject:dCopy];
  if (([(NSMutableArray *)self->_sortedSectionIDs containsObject:dCopy]& 1) == 0)
  {
    [(NSMutableArray *)self->_sortedSectionIDs addObject:dCopy];
  }
}

- (void)_sortSectionIDs:(id)ds usingGuideArray:(id)array
{
  v65 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  arrayCopy = array;
  if ([dsCopy count])
  {
    v7 = [arrayCopy count];
    if (dsCopy != arrayCopy)
    {
      if (v7)
      {
        v33 = arrayCopy;
        v8 = [MEMORY[0x277CBEB98] setWithArray:arrayCopy];
        v9 = [MEMORY[0x277CBEB98] setWithArray:dsCopy];
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v42 = [dsCopy mutableCopy];
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v32 = dsCopy;
        obj = dsCopy;
        v38 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
        if (v38)
        {
          v35 = *v55;
          do
          {
            for (i = 0; i != v38; ++i)
            {
              if (*v55 != v35)
              {
                objc_enumerationMutation(obj);
              }

              v43 = *(*(&v54 + 1) + 8 * i);
              v11 = [BBSectionInfoStore sectionInfoForSectionID:"sectionInfoForSectionID:effective:" effective:?];
              dataProviderIDs = [v11 dataProviderIDs];
              if ([dataProviderIDs count])
              {
                v40 = v11;
                v41 = i;
                array = [MEMORY[0x277CBEB18] array];
                v50 = 0u;
                v51 = 0u;
                v52 = 0u;
                v53 = 0u;
                v39 = dataProviderIDs;
                v14 = dataProviderIDs;
                v15 = [v14 countByEnumeratingWithState:&v50 objects:v63 count:16];
                if (v15)
                {
                  v16 = v15;
                  v17 = *v51;
                  do
                  {
                    for (j = 0; j != v16; ++j)
                    {
                      if (*v51 != v17)
                      {
                        objc_enumerationMutation(v14);
                      }

                      v19 = *(*(&v50 + 1) + 8 * j);
                      if ([v9 containsObject:v19])
                      {
                        if (([v8 containsObject:v19] & 1) == 0)
                        {
                          [array addObject:v19];
                        }
                      }

                      else
                      {
                        v20 = BBLogGeneral;
                        if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412546;
                          v60 = v19;
                          v61 = 2112;
                          v62 = v43;
                          _os_log_error_impl(&dword_241EFF000, v20, OS_LOG_TYPE_ERROR, "BBServer: unknown subsection %@ (of %@) cannot be sorted.", buf, 0x16u);
                        }
                      }
                    }

                    v16 = [v14 countByEnumeratingWithState:&v50 objects:v63 count:16];
                  }

                  while (v16);
                }

                if ([array count])
                {
                  [dictionary setObject:array forKey:v43];
                  [v42 removeObjectsInArray:array];
                }

                v11 = v40;
                i = v41;
                dataProviderIDs = v39;
              }
            }

            v38 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
          }

          while (v38);
        }

        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __54__BBSectionInfoStore__sortSectionIDs_usingGuideArray___block_invoke;
        v48[3] = &unk_278D2A488;
        v49 = v33;
        [v42 sortUsingComparator:v48];
        v21 = dictionary;
        if ([dictionary count])
        {
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          allKeys = [dictionary allKeys];
          v23 = [allKeys countByEnumeratingWithState:&v44 objects:v58 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v45;
            do
            {
              for (k = 0; k != v24; ++k)
              {
                if (*v45 != v25)
                {
                  objc_enumerationMutation(allKeys);
                }

                v27 = *(*(&v44 + 1) + 8 * k);
                v28 = [dictionary objectForKey:v27];
                v29 = [v42 indexOfObject:v27];
                if (v29 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v30 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v29 + 1, objc_msgSend(v28, "count")}];
                  [v42 insertObjects:v28 atIndexes:v30];
                }
              }

              v24 = [allKeys countByEnumeratingWithState:&v44 objects:v58 count:16];
            }

            while (v24);
          }

          v21 = dictionary;
        }

        [obj removeAllObjects];
        [obj addObjectsFromArray:v42];

        dsCopy = v32;
        arrayCopy = v33;
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t __54__BBSectionInfoStore__sortSectionIDs_usingGuideArray___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 isEqual:v6])
  {
    v7 = 0;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = *(a1 + 32);
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if ([v13 isEqual:{v5, v16}])
          {
            v7 = -1;
            goto LABEL_16;
          }

          if ([v13 isEqual:v6])
          {
            v7 = 1;
            goto LABEL_16;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        v7 = 0;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_16:
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)effectiveSectionInfoForSectionInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (infoCopy)
  {
    factorySectionID = [infoCopy factorySectionID];

    if (!factorySectionID)
    {
      goto LABEL_5;
    }

    factorySectionID2 = [v5 factorySectionID];
    v8 = [(BBSectionInfoStore *)self sectionInfoForSectionID:factorySectionID2 effective:0];

    if (!v8)
    {
      goto LABEL_5;
    }

    effectiveGlobalContentPreviewSetting = [(BBEffectiveSettingsProvider *)self->_effectiveSettings effectiveGlobalContentPreviewSetting];
    effectiveGlobalAnnounceSetting = [(BBEffectiveSettingsProvider *)self->_effectiveSettings effectiveGlobalAnnounceSetting];
    effectiveGlobalScheduledDeliverySetting = [(BBEffectiveSettingsProvider *)self->_effectiveSettings effectiveGlobalScheduledDeliverySetting];
    effectiveGlobalSummarizationSetting = [(BBEffectiveSettingsProvider *)self->_effectiveSettings effectiveGlobalSummarizationSetting];
    effectiveGlobalPrioritizationSetting = [(BBEffectiveSettingsProvider *)self->_effectiveSettings effectiveGlobalPrioritizationSetting];
    hasPairedVehiclesForCarPlay = [(BBEffectiveSettingsProvider *)self->_effectiveSettings hasPairedVehiclesForCarPlay];
    BYTE1(v23) = [(BBEffectiveSettingsProvider *)self->_effectiveSettings hasDestinationForRemoteNotifications];
    LOBYTE(v23) = hasPairedVehiclesForCarPlay;
    v15 = [v5 effectiveSectionInfoWithFactoryInfo:v8 defaultContentPreviewSetting:effectiveGlobalContentPreviewSetting globalAnnounceSetting:effectiveGlobalAnnounceSetting globalScheduledDeliverySetting:effectiveGlobalScheduledDeliverySetting globalSummarizationSetting:effectiveGlobalSummarizationSetting globalPrioritizationSetting:effectiveGlobalPrioritizationSetting hasPairedVehiclesForCarPlay:v23 hasDestinationForRemoteNotifications:?];

    if (!v15)
    {
LABEL_5:
      effectiveGlobalContentPreviewSetting2 = [(BBEffectiveSettingsProvider *)self->_effectiveSettings effectiveGlobalContentPreviewSetting];
      effectiveGlobalAnnounceSetting2 = [(BBEffectiveSettingsProvider *)self->_effectiveSettings effectiveGlobalAnnounceSetting];
      effectiveGlobalScheduledDeliverySetting2 = [(BBEffectiveSettingsProvider *)self->_effectiveSettings effectiveGlobalScheduledDeliverySetting];
      effectiveGlobalSummarizationSetting2 = [(BBEffectiveSettingsProvider *)self->_effectiveSettings effectiveGlobalSummarizationSetting];
      effectiveGlobalPrioritizationSetting2 = [(BBEffectiveSettingsProvider *)self->_effectiveSettings effectiveGlobalPrioritizationSetting];
      hasPairedVehiclesForCarPlay2 = [(BBEffectiveSettingsProvider *)self->_effectiveSettings hasPairedVehiclesForCarPlay];
      LOBYTE(v23) = [(BBEffectiveSettingsProvider *)self->_effectiveSettings hasDestinationForRemoteNotifications];
      v15 = [v5 effectiveSectionInfoWithDefaultContentPreviewSetting:effectiveGlobalContentPreviewSetting2 globalAnnounceSetting:effectiveGlobalAnnounceSetting2 globalScheduledDeliverySetting:effectiveGlobalScheduledDeliverySetting2 globalSummarizationSetting:effectiveGlobalSummarizationSetting2 globalPrioritizationSetting:effectiveGlobalPrioritizationSetting2 hasPairedVehiclesForCarPlay:hasPairedVehiclesForCarPlay2 hasDestinationForRemoteNotifications:v23];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)setClearedInfo:(id)info forSectionID:(id)d
{
  infoCopy = info;
  dCopy = d;
  if (infoCopy && ([MEMORY[0x277CBEB68] null], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqual:", infoCopy), v7, (v8 & 1) == 0))
  {
    [(NSMutableDictionary *)self->_clearedSectionsByID setObject:infoCopy forKey:dCopy];
  }

  else
  {
    [(NSMutableDictionary *)self->_clearedSectionsByID removeObjectForKey:dCopy];
  }
}

- (void)setClearedSectionsByID:(id)d
{
  v4 = [d mutableCopy];
  clearedSectionsByID = self->_clearedSectionsByID;
  self->_clearedSectionsByID = v4;

  MEMORY[0x2821F96F8]();
}

@end