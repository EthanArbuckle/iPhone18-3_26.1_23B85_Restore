@interface CoreThemeDefinitionMigrator
- (BOOL)_checkDiskSpace:(id *)a3;
- (BOOL)_updateMetadata:(id *)a3;
- (BOOL)migrateWithError:(id *)a3;
- (CoreThemeDefinitionMigrator)initWithURL:(id)a3 oldVersion:(int64_t)a4 newVersion:(int64_t)a5;
- (id)mappingModelForMigrationWithError:(id *)a3;
- (void)dealloc;
@end

@implementation CoreThemeDefinitionMigrator

- (BOOL)_checkDiskSpace:(id *)a3
{
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v5 attributesOfItemAtPath:-[NSURL path](self->_documentURL error:{"path"), 0}];
  v7 = [v6 objectForKey:*MEMORY[0x277CCA1C0]];
  v8 = [v5 attributesOfFileSystemForPath:-[NSString stringByDeletingLastPathComponent](-[CoreThemeDefinitionMigrator temporaryMigrationPath](self error:{"temporaryMigrationPath"), "stringByDeletingLastPathComponent"), a3}];
  if (v8)
  {
    v9 = *MEMORY[0x277CCA1D0];
    [objc_msgSend(v8 objectForKey:{*MEMORY[0x277CCA1D0]), "doubleValue"}];
    v11 = v10 * 0.5;
    [v7 doubleValue];
    if (v11 >= v12)
    {
      v19 = [objc_msgSend(v5 attributesOfFileSystemForPath:-[NSURL path](self->_documentURL error:{"path"), 0), "objectForKey:", v9}];
      v20 = [v7 unsignedLongLongValue];
      if (v20 <= [v19 unsignedLongLongValue])
      {
        LOBYTE(v8) = 1;
        return v8;
      }

      if (a3)
      {
        v21 = MEMORY[0x277CCA9B8];
        v22 = CoreThemeDefinitionErrorDomain[0];
        v23 = MEMORY[0x277CBEAC0];
        v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Space too tight for migration on %@'s volume", -[NSString lastPathComponent](-[NSURL path](self->_documentURL, "path"), "lastPathComponent")];
        v15 = [v23 dictionaryWithObjectsAndKeys:{v24, *MEMORY[0x277CCA470], 0}];
        v16 = v21;
        v17 = v22;
        v18 = 9;
        goto LABEL_8;
      }
    }

    else if (a3)
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = CoreThemeDefinitionErrorDomain[0];
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"Space too tight for migration on startup volume", *MEMORY[0x277CCA470], 0}];
      v16 = v13;
      v17 = v14;
      v18 = 8;
LABEL_8:
      v25 = [v16 errorWithDomain:v17 code:v18 userInfo:v15];
      LOBYTE(v8) = 0;
      *a3 = v25;
      return v8;
    }

    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)_updateMetadata:(id *)a3
{
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:{-[CoreThemeDefinitionMigrator temporaryMigrationPath](self, "temporaryMigrationPath")}];
  v6 = *MEMORY[0x277CBE2E8];
  v7 = [MEMORY[0x277CBE4D8] metadataForPersistentStoreOfType:*MEMORY[0x277CBE2E8] URL:v5 options:0 error:a3];
  if (v7)
  {
    v8 = [v7 mutableCopy];
    [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInteger:", self->_oldVersion), @"PreviousCoreThemeDefinitionDataModelKey"}];
    [v8 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInteger:", self->_newVersion), @"CoreThemeDefinitionDataModelKey"}];
    v9 = objc_alloc_init(MEMORY[0x277CCAD78]);
    [v8 setObject:objc_msgSend(v9 forKey:{"UUIDString"), @"uuid"}];

    v10 = [MEMORY[0x277CBE4D8] setMetadata:v8 forPersistentStoreOfType:v6 URL:v5 options:0 error:a3];
    LOBYTE(v7) = v10;
  }

  return v7;
}

- (CoreThemeDefinitionMigrator)initWithURL:(id)a3 oldVersion:(int64_t)a4 newVersion:(int64_t)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = CoreThemeDefinitionMigrator;
  v8 = [(CoreThemeDefinitionMigrator *)&v20 init];
  v9 = v8;
  if (v8)
  {
    v8->_oldVersion = a4;
    v8->_newVersion = a5;
    v8->_documentURL = a3;
    v10 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreThemeDefinition"];
    v11 = [v10 pathForResource:+[CoreThemeDocument dataModelNameForVersion:](CoreThemeDocument ofType:{"dataModelNameForVersion:", a4), @"mom"}];
    v12 = [v10 pathForResource:+[CoreThemeDocument dataModelNameForVersion:](CoreThemeDocument ofType:{"dataModelNameForVersion:", a5), @"mom"}];
    v13 = v12;
    if (v11)
    {
      v14 = objc_alloc(MEMORY[0x277CBE450]);
      v15 = [v14 initWithContentsOfURL:{objc_msgSend(MEMORY[0x277CBEBC0], "fileURLWithPath:", v11)}];
      if (!v13)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v15 = 0;
      if (!v12)
      {
LABEL_9:

        v9 = 0;
        goto LABEL_10;
      }
    }

    v16 = objc_alloc(MEMORY[0x277CBE450]);
    v17 = [v16 initWithContentsOfURL:{objc_msgSend(MEMORY[0x277CBEBC0], "fileURLWithPath:", v13)}];
    v13 = v17;
    if (!v15 || !v17)
    {
      goto LABEL_9;
    }

    v9->_migrationManager = [objc_alloc(MEMORY[0x277CBE468]) initWithSourceModel:v15 destinationModel:v17];

    [[(NSString *)NSTemporaryDirectory() stringByAppendingPathComponent:@"CoreThemeDefinitionMigrationXXXXXX"] getFileSystemRepresentation:__s maxLength:1024];
    mktemp(__s);
    -[CoreThemeDefinitionMigrator setTemporaryMigrationPath:](v9, "setTemporaryMigrationPath:", [objc_msgSend(objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")]);
  }

LABEL_10:
  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)dealloc
{
  [(CoreThemeDefinitionMigrator *)self setTemporaryMigrationPath:0];
  v3.receiver = self;
  v3.super_class = CoreThemeDefinitionMigrator;
  [(CoreThemeDefinitionMigrator *)&v3 dealloc];
}

- (id)mappingModelForMigrationWithError:(id *)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBE458] inferredMappingModelForSourceModel:-[NSMigrationManager sourceModel](self->_migrationManager destinationModel:"sourceModel") error:{-[NSMigrationManager destinationModel](self->_migrationManager, "destinationModel"), a3}];
  v5 = [(NSDictionary *)[(NSManagedObjectModel *)[(NSMigrationManager *)self->_migrationManager sourceModel] entitiesByName] objectForKey:@"SimpleArtworkRenditionSpec"];
  v6 = [(NSDictionary *)[(NSManagedObjectModel *)[(NSMigrationManager *)self->_migrationManager sourceModel] entitiesByName] objectForKey:@"SimpleArtworkElementProduction"];
  v7 = [(NSDictionary *)[(NSManagedObjectModel *)[(NSMigrationManager *)self->_migrationManager sourceModel] entitiesByName] objectForKey:@"Asset"];
  oldVersion = self->_oldVersion;
  if (oldVersion <= 21)
  {
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = [v4 entityMappings];
    v9 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = 0;
      v13 = *v35;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v34 + 1) + 8 * i);
          if ([objc_msgSend(v15 "destinationEntityName")])
          {
            v12 = v15;
          }

          if ([(NSEntityDescription *)[(NSMigrationManager *)self->_migrationManager sourceEntityForEntityMapping:v15] isKindOfEntity:v5])
          {
            v11 = v15;
          }

          if ([(NSEntityDescription *)[(NSMigrationManager *)self->_migrationManager sourceEntityForEntityMapping:v15] isKindOfEntity:v6])
          {
            v16 = objc_opt_class();
            [v15 setEntityMigrationPolicyClassName:NSStringFromClass(v16)];
            [v15 setName:{objc_msgSend(@"POH_", "stringByAppendingString:", objc_msgSend(v15, "name"))}];
          }

          if ([(NSEntityDescription *)[(NSMigrationManager *)self->_migrationManager sourceEntityForEntityMapping:v15] isKindOfEntity:v7])
          {
            v17 = objc_opt_class();
            [v15 setEntityMigrationPolicyClassName:NSStringFromClass(v17)];
            [v15 setName:{objc_msgSend(@"POH_", "stringByAppendingString:", objc_msgSend(v15, "name"))}];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v25 = objc_opt_class();
    [v12 setEntityMigrationPolicyClassName:NSStringFromClass(v25)];
    [v12 setName:{objc_msgSend(@"POH_", "stringByAppendingString:", objc_msgSend(v12, "name"))}];
    v26 = objc_opt_class();
    [v11 setEntityMigrationPolicyClassName:NSStringFromClass(v26)];
    [v11 setName:{objc_msgSend(@"POH_", "stringByAppendingString:", objc_msgSend(v11, "name"))}];
LABEL_33:
    v4 = objc_alloc_init(MEMORY[0x277CBE458]);
    [v4 setEntityMappings:obj];
    goto LABEL_34;
  }

  if (oldVersion == 22)
  {
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = [v4 entityMappings];
    v18 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v31;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v30 + 1) + 8 * j);
          if ([(NSEntityDescription *)[(NSMigrationManager *)self->_migrationManager sourceEntityForEntityMapping:v22] isKindOfEntity:v6])
          {
            v23 = objc_opt_class();
            [v22 setEntityMigrationPolicyClassName:NSStringFromClass(v23)];
            [v22 setName:{objc_msgSend(@"POH_", "stringByAppendingString:", objc_msgSend(v22, "name"))}];
          }

          if ([(NSEntityDescription *)[(NSMigrationManager *)self->_migrationManager sourceEntityForEntityMapping:v22] isKindOfEntity:v7])
          {
            v24 = objc_opt_class();
            [v22 setEntityMigrationPolicyClassName:NSStringFromClass(v24)];
            [v22 setName:{objc_msgSend(@"POH_", "stringByAppendingString:", objc_msgSend(v22, "name"))}];
          }
        }

        v19 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v19);
    }

    goto LABEL_33;
  }

LABEL_34:
  v27 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)migrateWithError:(id *)a3
{
  oldVersion = self->_oldVersion;
  newVersion = self->_newVersion;
  if (oldVersion == newVersion)
  {
    LOBYTE(v7) = 1;
    return v7;
  }

  v14[5] = v3;
  v14[6] = v4;
  if (oldVersion >= newVersion)
  {
    if (a3)
    {
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:CoreThemeDefinitionErrorDomain[0] code:2 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", @"Migration code not written yet.", *MEMORY[0x277CCA470], 0)}];
      LOBYTE(v7) = 0;
      *a3 = v12;
      return v7;
    }

    goto LABEL_13;
  }

  LODWORD(v7) = [(CoreThemeDefinitionMigrator *)self _checkDiskSpace:a3];
  if (v7)
  {
    v7 = [(CoreThemeDefinitionMigrator *)self mappingModelForMigrationWithError:a3];
    if (v7)
    {
      v10 = v7;
      v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:{-[CoreThemeDefinitionMigrator temporaryMigrationPath](self, "temporaryMigrationPath")}];
      LODWORD(v7) = [(NSMigrationManager *)self->_migrationManager migrateStoreFromURL:self->_documentURL type:*MEMORY[0x277CBE2E8] options:0 withMappingModel:v10 toDestinationURL:v11 destinationType:*MEMORY[0x277CBE2E8] destinationOptions:0 error:a3];
      if (v7)
      {
        if ([(CoreThemeDefinitionMigrator *)self _updateMetadata:a3])
        {
          LOBYTE(v7) = 1;
          return v7;
        }

        v14[0] = 0;
        if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
        {
          NSLog(&cfstr_FailedToRemove.isa, v11, v14[0]);
        }

LABEL_13:
        LOBYTE(v7) = 0;
      }
    }
  }

  return v7;
}

@end