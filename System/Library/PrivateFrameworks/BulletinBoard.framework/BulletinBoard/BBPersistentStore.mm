@interface BBPersistentStore
- (BBPersistentStore)init;
- (BBPersistentStore)initWithDataDirectoryPath:(id)path;
- (BOOL)hasSectionInfoLegacyFile;
- (id)readClearedSections;
- (id)readSectionInfo;
- (id)readSectionInfoLegacy;
- (id)readSectionInfoWithVersionNumberForMigration;
- (id)readSectionOrder;
- (void)deleteSectionInfoFile;
- (void)deleteSectionInfoLegacyFile;
- (void)writeClearedSections:(id)sections;
- (void)writeSectionInfo:(id)info;
- (void)writeSectionOrder:(id)order;
@end

@implementation BBPersistentStore

- (BBPersistentStore)initWithDataDirectoryPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = BBPersistentStore;
  v6 = [(BBPersistentStore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataDirectoryPath, path);
  }

  return v7;
}

- (BBPersistentStore)init
{
  stringByExpandingTildeInPath = [@"~/Library/BulletinBoard/" stringByExpandingTildeInPath];
  v4 = [(BBPersistentStore *)self initWithDataDirectoryPath:stringByExpandingTildeInPath];

  return v4;
}

- (id)readClearedSections
{
  v3 = BBLogPersistence;
  if (os_log_type_enabled(BBLogPersistence, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_241EFF000, v3, OS_LOG_TYPE_DEFAULT, "Reading cleared sections from persistence", v8, 2u);
  }

  v4 = MEMORY[0x277CBEAC0];
  _clearedSectionsPath = [(BBPersistentStore *)self _clearedSectionsPath];
  v6 = [v4 dictionaryWithContentsOfFile:_clearedSectionsPath];

  return v6;
}

- (id)readSectionInfo
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = BBLogPersistence;
  if (os_log_type_enabled(BBLogPersistence, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241EFF000, v3, OS_LOG_TYPE_DEFAULT, "Reading BBSectionInfo from persistence", buf, 2u);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  context = objc_autoreleasePoolPush();
  v4 = MEMORY[0x277CBEAC0];
  _sectionInfoPath = [(BBPersistentStore *)self _sectionInfoPath];
  v6 = [v4 dictionaryWithContentsOfFile:_sectionInfoPath];

  v23 = v6;
  v7 = [v6 objectForKey:@"sectionInfo"];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [v7 allKeys];
  v8 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    v26 = *MEMORY[0x277CCA308];
    do
    {
      v11 = 0;
      do
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v30 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v14 = [v7 objectForKey:v12];
        v15 = objc_alloc(MEMORY[0x277CCAAC8]);
        v29 = 0;
        v16 = [v15 initForReadingFromData:v14 error:&v29];
        v17 = v29;
        if (v17)
        {
          goto LABEL_12;
        }

        [v16 setClass:objc_opt_class() forClassName:@"UNCMuteAssertion"];
        [v16 setClass:objc_opt_class() forClassName:@"UNCSectionIcon"];
        [v16 setClass:objc_opt_class() forClassName:@"UNCSectionIconVariant"];
        [v16 setClass:objc_opt_class() forClassName:@"UNCSectionInfo"];
        [v16 setClass:objc_opt_class() forClassName:@"UNCSectionInfoSettings"];
        [v16 setClass:objc_opt_class() forClassName:@"UNCSectionMuteAssertion"];
        [v16 setClass:objc_opt_class() forClassName:@"UNCThreadsMuteAssertion"];
        v18 = objc_opt_class();
        v28 = 0;
        v19 = [v16 decodeTopLevelObjectOfClass:v18 forKey:v26 error:&v28];
        v17 = v28;
        if (v19)
        {
          [dictionary setObject:v19 forKey:v12];
        }

        if (v17)
        {
LABEL_12:
          v20 = BBLogPersistence;
          if (os_log_type_enabled(BBLogPersistence, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v35 = v12;
            v36 = 2114;
            v37 = v17;
            _os_log_error_impl(&dword_241EFF000, v20, OS_LOG_TYPE_ERROR, "Decoding BBSectionInfo for sectionID %{public}@ failed: %{public}@", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v9);
  }

  objc_autoreleasePoolPop(context);
  v21 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (id)readSectionInfoLegacy
{
  v3 = BBLogPersistence;
  if (os_log_type_enabled(BBLogPersistence, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_241EFF000, v3, OS_LOG_TYPE_DEFAULT, "Reading legacy SectionInfo from persistence", v8, 2u);
  }

  v4 = MEMORY[0x277CBEAC0];
  _sectionInfoLegacyPath = [(BBPersistentStore *)self _sectionInfoLegacyPath];
  v6 = [v4 dictionaryWithContentsOfFile:_sectionInfoLegacyPath];

  return v6;
}

- (id)readSectionOrder
{
  v3 = BBLogPersistence;
  if (os_log_type_enabled(BBLogPersistence, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_241EFF000, v3, OS_LOG_TYPE_DEFAULT, "Reading section order from persistence", v8, 2u);
  }

  v4 = MEMORY[0x277CBEAC0];
  _sectionOrderPath = [(BBPersistentStore *)self _sectionOrderPath];
  v6 = [v4 dictionaryWithContentsOfFile:_sectionOrderPath];

  return v6;
}

- (void)writeClearedSections:(id)sections
{
  sectionsCopy = sections;
  v5 = BBLogPersistence;
  if (os_log_type_enabled(BBLogPersistence, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_241EFF000, v5, OS_LOG_TYPE_DEFAULT, "Writing cleared sections to persistence", v9, 2u);
  }

  v6 = [MEMORY[0x277CCAC58] dataWithPropertyList:sectionsCopy format:200 options:0 error:0];
  _clearedSectionsPath = [(BBPersistentStore *)self _clearedSectionsPath];
  v8 = [v6 writeToFile:_clearedSectionsPath options:268435457 error:0];

  if ((v8 & 1) == 0 && os_log_type_enabled(BBLogPersistence, OS_LOG_TYPE_ERROR))
  {
    [BBPersistentStore writeClearedSections:];
  }
}

- (void)writeSectionOrder:(id)order
{
  orderCopy = order;
  v5 = BBLogPersistence;
  if (os_log_type_enabled(BBLogPersistence, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_241EFF000, v5, OS_LOG_TYPE_DEFAULT, "Writing section order to persistence", v9, 2u);
  }

  v6 = [MEMORY[0x277CCAC58] dataWithPropertyList:orderCopy format:100 options:0 error:0];
  _sectionOrderPath = [(BBPersistentStore *)self _sectionOrderPath];
  v8 = [v6 writeToFile:_sectionOrderPath options:268435457 error:0];

  if ((v8 & 1) == 0 && os_log_type_enabled(BBLogPersistence, OS_LOG_TYPE_ERROR))
  {
    [BBPersistentStore writeSectionOrder:];
  }
}

- (void)writeSectionInfo:(id)info
{
  selfCopy = self;
  v34 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  context = objc_autoreleasePoolPush();
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = infoCopy;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [v5 objectForKey:{v10, selfCopy}];
        if (([v11 suppressFromSettings] & 1) == 0)
        {
          v12 = objc_autoreleasePoolPush();
          v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v11 requiringSecureCoding:1 error:0];
          [dictionary2 setObject:v13 forKey:v10];

          objc_autoreleasePoolPop(v12);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v7);
  }

  [dictionary setObject:dictionary2 forKey:@"sectionInfo"];
  v14 = BBLogPersistence;
  if (os_log_type_enabled(BBLogPersistence, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = [dictionary2 count];
    *buf = 134217984;
    v32 = v16;
    _os_log_impl(&dword_241EFF000, v15, OS_LOG_TYPE_DEFAULT, "Writing section info to persistence. Count %lu", buf, 0xCu);
  }

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{2, selfCopy}];
  [dictionary setObject:v17 forKey:@"sectionInfoVersionNumber"];

  v18 = [MEMORY[0x277CCAC58] dataWithPropertyList:dictionary format:100 options:0 error:0];
  _sectionInfoPath = [v23 _sectionInfoPath];
  v26 = 0;
  [v18 writeToFile:_sectionInfoPath options:268435457 error:&v26];
  v20 = v26;

  if (v20 && os_log_type_enabled(BBLogPersistence, OS_LOG_TYPE_ERROR))
  {
    [BBPersistentStore writeSectionInfo:];
  }

  objc_autoreleasePoolPop(context);
  v21 = *MEMORY[0x277D85DE8];
}

- (void)deleteSectionInfoFile
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)deleteSectionInfoLegacyFile
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasSectionInfoLegacyFile
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  _sectionInfoLegacyPath = [(BBPersistentStore *)self _sectionInfoLegacyPath];
  v5 = [defaultManager fileExistsAtPath:_sectionInfoLegacyPath];

  return v5;
}

- (id)readSectionInfoWithVersionNumberForMigration
{
  v2 = MEMORY[0x277CBEAC0];
  _sectionInfoPath = [(BBPersistentStore *)self _sectionInfoPath];
  v4 = [v2 dictionaryWithContentsOfFile:_sectionInfoPath];

  return v4;
}

- (void)writeSectionInfo:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end