@interface CADDiagnosticsDatabaseCollector
- (void)collect:(id)a3;
- (void)determineExpectedOutputFiles:(id)a3;
@end

@implementation CADDiagnosticsDatabaseCollector

- (void)determineExpectedOutputFiles:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [CADDiagnosticsDatabaseCollectorDBInfo alloc];
  v7 = CalDatabaseCopyDirectoryPath();
  v8 = [(CADDiagnosticsDatabaseCollectorDBInfo *)v6 initWithPossiblyUnmigratedDatabaseDirectory:v7 context:v4];

  if (v8)
  {
    [v5 addObject:v8];
  }

  v9 = CalDatabaseCreateWithOptions();
  if (v9)
  {
    v10 = v9;
    v25 = self;
    v26 = v8;
    v24 = [[CADDiagnosticsDatabaseCollectorDBInfo alloc] initWithMainDatabase:v9 context:v4];
    [v5 addObject:?];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = CalDatabaseCopyAllAuxDatabases();
    v11 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v33;
      do
      {
        v14 = 0;
        do
        {
          if (*v33 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = [[CADDiagnosticsDatabaseCollectorDBInfo alloc] initWithMainDatabase:v10 auxDatabase:*(*(&v32 + 1) + 8 * v14) context:v4];
          [v5 addObject:v15];
          v16 = CalAuxDatabaseCopyPath();
          v17 = [[CADDiagnosticsDatabaseCollectorDBInfo alloc] initWithPossiblyUnmigratedDatabaseDirectory:v16 context:v4];
          if (v17)
          {
            [v5 addObject:v17];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v12);
    }

    CFRelease(v10);
    self = v25;
    v8 = v26;
  }

  else
  {
    [v4 logError:@"Couldn't open main database; not going to be able to collect any databases."];
  }

  objc_storeStrong(&self->_dbInfos, v5);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = self->_dbInfos;
  v19 = [(NSArray *)v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
    do
    {
      v22 = 0;
      do
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v28 + 1) + 8 * v22++) determineExpectedOutputFiles:v4];
      }

      while (v20 != v22);
      v20 = [(NSArray *)v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v20);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)collect:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_dbInfos;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) collect:{v4, v11}];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end