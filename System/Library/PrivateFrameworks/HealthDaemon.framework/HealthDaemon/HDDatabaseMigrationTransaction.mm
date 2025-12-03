@interface HDDatabaseMigrationTransaction
+ (id)unprotectedMigrationTransactionForMigrationTransaction:(id)transaction;
- (BOOL)_migrationRequiredForProtectionClass:(uint64_t)class migrator:(void *)migrator schemaProviders:(void *)providers error:(void *)error;
- (HDDatabaseMigrationTransaction)initWithUnprotectedDatabase:(id)database protectedDatabase:(id)protectedDatabase schemaProviders:(id)providers behavior:(id)behavior;
- (HDDatabaseMigrationTransactionDelegate)delegate;
- (HDSQLiteDatabase)defaultDatabase;
- (int64_t)HFDRebuildState;
- (int64_t)accessHistoricHFDWithError:(id *)error block:(id)block;
- (int64_t)defaultProtectionClass;
- (int64_t)migrateOrCreateSchemaWithError:(id *)error;
- (uint64_t)_createDataTablesInDatabase:(uint64_t)database entityClasses:(void *)classes requiredPrefix:(void *)prefix error:(void *)error;
- (uint64_t)_migrateOrCreateSchemaWithEntityClasses:(void *)classes error:;
- (void)_enableIncrementalAutovacuumIfNeeded;
- (void)_presentRollbackAlertForSchema:(void *)schema protectionClass:(uint64_t)class foundVersion:(uint64_t)version currentVersion:(uint64_t)currentVersion;
- (void)setHFDRebuildState:(int64_t)state;
@end

@implementation HDDatabaseMigrationTransaction

- (HDDatabaseMigrationTransaction)initWithUnprotectedDatabase:(id)database protectedDatabase:(id)protectedDatabase schemaProviders:(id)providers behavior:(id)behavior
{
  databaseCopy = database;
  protectedDatabaseCopy = protectedDatabase;
  providersCopy = providers;
  behaviorCopy = behavior;
  v20.receiver = self;
  v20.super_class = HDDatabaseMigrationTransaction;
  v15 = [(HDDatabaseMigrationTransaction *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_unprotectedDatabase, database);
    objc_storeStrong(&v16->_protectedDatabase, protectedDatabase);
    v17 = [providersCopy copy];
    schemaProviders = v16->_schemaProviders;
    v16->_schemaProviders = v17;

    objc_storeStrong(&v16->_behavior, behavior);
  }

  return v16;
}

- (HDSQLiteDatabase)defaultDatabase
{
  protectedDatabase = self->_protectedDatabase;
  if (!protectedDatabase)
  {
    protectedDatabase = self->_unprotectedDatabase;
  }

  return protectedDatabase;
}

- (int64_t)accessHistoricHFDWithError:(id *)error block:(id)block
{
  blockCopy = block;
  if (![(HDDatabaseMigrationTransaction *)self isProtectedMigration])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabaseMigrationTransaction.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"[self isProtectedMigration]"}];
  }

  v8 = MEMORY[0x277D10B30];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  profileDirectoryPath = [WeakRetained profileDirectoryPath];
  v11 = [v8 highFrequencyDatabaseURLWithProfileDirectoryPath:profileDirectoryPath];

  v12 = [HDHFDataStore alloc];
  path = [v11 path];
  v14 = [(HDHFDataStore *)v12 initWithPath:path];

  v15 = blockCopy[2](blockCopy, v14, error);
  [(HDHFDataStore *)v14 flushForInvalidation:1];

  return v15;
}

- (int64_t)defaultProtectionClass
{
  if ([(HDDatabaseMigrationTransaction *)self isProtectedMigration])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

+ (id)unprotectedMigrationTransactionForMigrationTransaction:(id)transaction
{
  transactionCopy = transaction;
  if ([transactionCopy isProtectedMigration])
  {
    v5 = [self alloc];
    unprotectedDatabase = [transactionCopy unprotectedDatabase];
    schemaProviders = [transactionCopy schemaProviders];
    behavior = [transactionCopy behavior];
    v9 = [v5 initWithUnprotectedDatabase:unprotectedDatabase protectedDatabase:0 schemaProviders:schemaProviders behavior:behavior];

    delegate = [transactionCopy delegate];
    [v9 setDelegate:delegate];
  }

  else
  {
    v9 = transactionCopy;
  }

  return v9;
}

- (int64_t)HFDRebuildState
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  profileIdentifier = [WeakRetained profileIdentifier];
  v5 = HDDatabaseUserDefaultsKeyForProfileIdentifier(@"HKHFDRebuildStage", profileIdentifier);

  if (selfCopy)
  {
    selfCopy = [MEMORY[0x277CBEBD0] standardUserDefaults];
  }

  v6 = [selfCopy integerForKey:v5];

  return v6;
}

- (void)setHFDRebuildState:(int64_t)state
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  profileIdentifier = [WeakRetained profileIdentifier];
  v7 = HDDatabaseUserDefaultsKeyForProfileIdentifier(@"HKHFDRebuildStage", profileIdentifier);

  if (selfCopy)
  {
    selfCopy = [MEMORY[0x277CBEBD0] standardUserDefaults];
  }

  [selfCopy setInteger:state forKey:v7];
}

- (HDDatabaseMigrationTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int64_t)migrateOrCreateSchemaWithError:(id *)error
{
  delegate = [(HDDatabaseMigrationTransaction *)self delegate];
  behavior = [(HDDatabaseMigrationTransaction *)self behavior];
  v8 = [delegate migrationTransaction:self entityClassesWithBehavior:behavior];

  v9 = [HDDatabaseMigrationTransaction unprotectedMigrationTransactionForMigrationTransaction:self];
  v10 = [(HDDatabaseMigrationTransaction *)v9 _migrateOrCreateSchemaWithEntityClasses:v8 error:error];
  if (!v10)
  {
    if (![(HDDatabaseMigrationTransaction *)self isProtectedMigration])
    {
      v10 = 0;
      goto LABEL_6;
    }

    v10 = [(HDDatabaseMigrationTransaction *)self _migrateOrCreateSchemaWithEntityClasses:v8 error:error];
  }

  if (v10 == 3)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabase+Schema.m" lineNumber:163 description:@"Incorrectly returned in-progress migration status."];
  }

LABEL_6:

  return v10;
}

- (uint64_t)_migrateOrCreateSchemaWithEntityClasses:(void *)classes error:
{
  v176 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (!self)
  {
    v67 = 0;
    goto LABEL_179;
  }

  defaultDatabase = [self defaultDatabase];
  v7 = [defaultDatabase userVersionWithDatabaseName:0 error:classes];
  if (v7 < 0)
  {
    goto LABEL_177;
  }

  classesCopy = classes;
  if (!v7)
  {
    [(HDDatabaseMigrationTransaction *)self _enableIncrementalAutovacuumIfNeeded];
    v59 = v5;
    isProtectedMigration = [self isProtectedMigration];
    [self defaultDatabase];
    v62 = v61 = self;
    defaultProtectionClass = [v61 defaultProtectionClass];
    if (isProtectedMigration)
    {
      v154 = v61;
      if (![v62 isWriter])
      {
        v67 = 4;
        goto LABEL_116;
      }

      unprotectedDatabase = [v61 unprotectedDatabase];
      *&v161 = 0;
      classes = [(HDKeyValueEntity *)HDUnprotectedKeyValueEntity retrieveDatabaseIdentifierFromDatabase:unprotectedDatabase error:&v161];
      v65 = v161;

      if (classes)
      {
        _HKInitializeLogging();
        v66 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
        {
          *v166 = 138543362;
          *&v166[4] = classes;
          _os_log_error_impl(&dword_228986000, v66, OS_LOG_TYPE_ERROR, "Fatal: Found identifier %{public}@ in unprotected database when creating protected database", v166, 0xCu);
        }

        [MEMORY[0x277CCA9B8] hk_assignError:classesCopy code:100 format:{@"Found identifier %@ in unprotected database when creating protected database", classes}];
        v67 = 2;
        goto LABEL_134;
      }

      classes = classesCopy;
      v61 = v154;
      if (v65)
      {
        if (classesCopy)
        {
          v89 = v65;
          classes = 0;
          *classesCopy = v65;
        }

        else
        {
          _HKLogDroppedError();
        }

        v67 = 1;
        goto LABEL_134;
      }
    }

    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __81__HDDatabaseMigrationTransaction_Schema___createEntitiesWithEntityClasses_error___block_invoke;
    *&buf[24] = &__block_descriptor_40_e8_B16__0_8l;
    *&buf[32] = defaultProtectionClass;
    v90 = [v59 hk_filter:buf];
    classesCopy2 = classes;
    v92 = [HDDatabaseMigrationTransaction _createDataTablesInDatabase:v61 entityClasses:v62 requiredPrefix:v90 error:0];

    if (v92)
    {
      v154 = v61;
      behavior = [v61 behavior];
      futureMigrationsEnabled = [behavior futureMigrationsEnabled];
      v95 = 100003;
      if (defaultProtectionClass == 2)
      {
        v95 = 100030;
      }

      if (futureMigrationsEnabled)
      {
        v96 = v95;
      }

      else
      {
        v96 = 19102;
      }

      v97 = [v62 setUserVersion:v96 withDatabaseName:0 error:classesCopy2];
      if (v97)
      {
        v67 = 0;
      }

      else
      {
        v67 = 2;
      }

      if ((isProtectedMigration & v97) != 1)
      {
        classes = classesCopy2;
        goto LABEL_175;
      }

      v149 = defaultDatabase;
      v65 = +[HDKeyValueEntity generateNewDatabaseIdentifier];
      _HKInitializeLogging();
      v98 = MEMORY[0x277CCC2A0];
      v99 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
      {
        *v166 = 138543362;
        *&v166[4] = v65;
        _os_log_impl(&dword_228986000, v99, OS_LOG_TYPE_DEFAULT, "Inserting identifier %{public}@ in unprotected db", v166, 0xCu);
      }

      v100 = +[HDSyncIdentity legacySyncIdentity];
      unprotectedDatabase2 = [v61 unprotectedDatabase];
      v102 = [HDSyncIdentityEntity insertOrLookupConcreteIdentityForIdentity:v100 database:unprotectedDatabase2 error:classesCopy];

      if (!v102)
      {
        v116 = 0;
        defaultDatabase = v149;
        classes = classesCopy;
LABEL_173:

        v67 = 2;
        goto LABEL_174;
      }

      v146 = v5;
      entity = [v102 entity];
      persistentID = [entity persistentID];

      unprotectedDatabase3 = [v61 unprotectedDatabase];
      *v173 = 0;
      v106 = [(HDKeyValueEntity *)HDUnprotectedKeyValueEntity persistDatabaseIdentifier:v65 syncIdentity:persistentID database:unprotectedDatabase3 error:v173];
      v107 = *v173;

      _HKInitializeLogging();
      v108 = *v98;
      v109 = *v98;
      if (v106)
      {
        if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
        {
          *v166 = 138543362;
          *&v166[4] = v65;
          _os_log_impl(&dword_228986000, v108, OS_LOG_TYPE_DEFAULT, "Inserting identifier %{public}@ in protected db", v166, 0xCu);
        }

        protectedDatabase = [v154 protectedDatabase];
        *v170 = v107;
        v111 = [(HDKeyValueEntity *)HDProtectedKeyValueEntity persistDatabaseIdentifier:v65 syncIdentity:persistentID database:protectedDatabase error:v170];
        v112 = *v170;

        if (v111)
        {

          classes = [v154 delegate];
          [classes migrationTransaction:v154 didCreateDatabasesWithIdentifier:v65];
          v67 = 0;
          v5 = v146;
          defaultDatabase = v149;
LABEL_134:

          classes = classesCopy;
LABEL_174:

LABEL_175:
          if (v67)
          {
            goto LABEL_178;
          }

          v7 = [defaultDatabase userVersionWithDatabaseName:0 error:classes];
          self = v154;
          if ((v7 & 0x8000000000000000) == 0)
          {
            goto LABEL_4;
          }

LABEL_177:
          v67 = 1;
          goto LABEL_178;
        }

        _HKInitializeLogging();
        v120 = *v98;
        v5 = v146;
        if (os_log_type_enabled(*v98, OS_LOG_TYPE_ERROR))
        {
          *v166 = 138543618;
          *&v166[4] = v65;
          v167 = 2114;
          v168 = v112;
          _os_log_error_impl(&dword_228986000, v120, OS_LOG_TYPE_ERROR, "Failed inserting protected identifier %{public}@: %{public}@", v166, 0x16u);
        }

        v116 = v112;
        defaultDatabase = v149;
        if (!v116)
        {
          classes = classesCopy;
          goto LABEL_172;
        }

        classes = classesCopy;
        if (!classesCopy)
        {
          goto LABEL_139;
        }
      }

      else
      {
        if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
        {
          *v166 = 138543618;
          *&v166[4] = v65;
          v167 = 2114;
          v168 = v107;
          _os_log_error_impl(&dword_228986000, v108, OS_LOG_TYPE_ERROR, "Failed inserting unprotected identifier %{public}@: %{public}@", v166, 0x16u);
        }

        v116 = v107;
        v5 = v146;
        defaultDatabase = v149;
        classes = classesCopy;
        if (!v116)
        {
          goto LABEL_172;
        }

        if (!classesCopy)
        {
LABEL_139:
          _HKLogDroppedError();
          goto LABEL_172;
        }
      }

      v117 = v116;
      *classes = v116;
LABEL_172:

      goto LABEL_173;
    }

    v67 = 2;
LABEL_116:

    goto LABEL_178;
  }

LABEL_4:
  v155 = v7;
  v8 = v5;
  isProtectedMigration2 = [self isProtectedMigration];
  defaultDatabase2 = [self defaultDatabase];
  defaultProtectionClass2 = [self defaultProtectionClass];
  behavior2 = [self behavior];
  futureMigrationsEnabled2 = [behavior2 futureMigrationsEnabled];
  v14 = 100003;
  if (defaultProtectionClass2 == 2)
  {
    v14 = 100030;
  }

  if (!futureMigrationsEnabled2)
  {
    v14 = 19102;
  }

  v152 = v14;

  v15 = [[HDDatabaseMigrator alloc] initWithTransaction:self];
  schemaProviders = [self schemaProviders];
  v165 = 0;
  v156 = v15;
  v17 = [HDDatabaseMigrationTransaction _migrationRequiredForProtectionClass:defaultProtectionClass2 migrator:v15 schemaProviders:schemaProviders error:&v165];
  v18 = v165;

  if (!v17)
  {
    v18 = v18;
    v5 = v8;
    if (v18)
    {
      if (classes)
      {
        v68 = v18;
        *classes = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v67 = v18 != 0;

    goto LABEL_151;
  }

  if (isProtectedMigration2 && ![defaultDatabase2 isWriter])
  {
    v67 = 4;
    v5 = v8;
    goto LABEL_151;
  }

  v144 = isProtectedMigration2;
  v143 = defaultDatabase2;
  v148 = defaultDatabase;
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults setBool:0 forKey:@"HDHasPresentedRollbackWarningDialog"];
  }

  v145 = v8;
  v147 = v18;
  v150 = v17;
  _HKInitializeLogging();
  v20 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
  {
    if (isProtectedMigration2)
    {
      v21 = "protected";
    }

    else
    {
      v21 = "unprotected";
    }

    v22 = MEMORY[0x277CCDD30];
    v23 = v20;
    currentOSBuild = [v22 currentOSBuild];
    *buf = 136315906;
    *&buf[4] = v21;
    *&buf[12] = 2048;
    *&buf[14] = v155;
    *&buf[22] = 2048;
    *&buf[24] = v152;
    *&buf[32] = 2114;
    *&buf[34] = currentOSBuild;
    _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, "Will migrate %s database from version %ld to %ld (build version %{public}@)", buf, 0x2Au);
  }

  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  selfCopy = self;
  schemaProviders2 = [self schemaProviders];
  v26 = [schemaProviders2 countByEnumeratingWithState:&v161 objects:v166 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v162;
    if (isProtectedMigration2)
    {
      v29 = "protected";
    }

    else
    {
      v29 = "unprotected";
    }

    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v162 != v28)
        {
          objc_enumerationMutation(schemaProviders2);
        }

        v31 = *(*(&v161 + 1) + 8 * i);
        schemaManager = [(HDDatabaseMigrator *)v156 schemaManager];
        schemaName = [v31 schemaName];
        v34 = [schemaManager currentVersionForSchema:schemaName protectionClass:defaultProtectionClass2 error:classesCopy];

        if (v34 < 0)
        {

          v67 = 1;
          v5 = v145;
          defaultDatabase = v148;
          classes = classesCopy;
          self = selfCopy;
LABEL_130:
          v17 = v150;
          defaultDatabase2 = v143;
          v18 = v147;
          goto LABEL_151;
        }

        v35 = [v31 currentSchemaVersionForProtectionClass:defaultProtectionClass2];
        if (v34 != v35)
        {
          v36 = v35;
          _HKInitializeLogging();
          v37 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
          {
            v38 = v37;
            schemaName2 = [v31 schemaName];
            *buf = 136315906;
            *&buf[4] = v29;
            *&buf[12] = 2114;
            *&buf[14] = schemaName2;
            *&buf[22] = 2048;
            *&buf[24] = v34;
            *&buf[32] = 2048;
            *&buf[34] = v36;
            _os_log_impl(&dword_228986000, v38, OS_LOG_TYPE_DEFAULT, "Will migrate %s database schema '%{public}@' from version %ld to %ld", buf, 0x2Au);
          }
        }
      }

      v27 = [schemaProviders2 countByEnumeratingWithState:&v161 objects:v166 count:16];
    }

    while (v27);
  }

  [(HDDatabaseMigrator *)v156 addPrimaryMigrationSteps];
  self = selfCopy;
  schemaProviders3 = [selfCopy schemaProviders];
  v41 = v156;
  v157 = v41;
  if (![schemaProviders3 count])
  {

    goto LABEL_66;
  }

  v141 = objc_alloc_init(MEMORY[0x277CBEB38]);
  memset(v170, 0, sizeof(v170));
  v171 = 0u;
  v172 = 0u;
  obj = schemaProviders3;
  v42 = [obj countByEnumeratingWithState:v170 objects:buf count:16];
  if (!v42)
  {
    goto LABEL_50;
  }

  v43 = v42;
  v140 = **&v170[16];
  v138 = schemaProviders3;
  while (2)
  {
    v44 = 0;
    classes = classesCopy;
    do
    {
      if (**&v170[16] != v140)
      {
        objc_enumerationMutation(obj);
      }

      v45 = *(*&v170[8] + 8 * v44);
      schemaName3 = [v45 schemaName];
      if (!schemaName3)
      {
        [MEMORY[0x277CCA9B8] hk_assignError:classes code:3 format:{@"Plugin '%@' provided no schema name.", v45}];
LABEL_129:

        v67 = 1;
        v5 = v145;
        defaultDatabase = v148;
        goto LABEL_130;
      }

      v47 = [v141 objectForKeyedSubscript:schemaName3];

      if (v47)
      {
        v118 = MEMORY[0x277CCA9B8];
        v119 = [v141 objectForKeyedSubscript:schemaName3];
        [v118 hk_assignError:classes code:3 format:{@"Schema '%@' provided by both %@ and %@.", schemaName3, v45, v119}];

        v41 = v157;
        goto LABEL_129;
      }

      schemaManager2 = [(HDDatabaseMigrator *)v41 schemaManager];
      v49 = [schemaManager2 currentVersionForSchema:schemaName3 protectionClass:defaultProtectionClass2 error:classes];

      if (v49 < 0)
      {
        goto LABEL_129;
      }

      if (v49)
      {
        [v45 registerMigrationStepsForProtectionClass:defaultProtectionClass2 migrator:v41];
      }

      else
      {
        v50 = v45;
        v51 = v41;
        if ([selfCopy isProtectedMigration])
        {
          [selfCopy protectedDatabase];
        }

        else
        {
          [selfCopy unprotectedDatabase];
        }
        v52 = ;
        *v173 = MEMORY[0x277D85DD0];
        *&v173[8] = 3221225472;
        *&v173[16] = __106__HDDatabaseMigrationTransaction_Schema___createEntitiesForSchemaProvider_protectionClass_migrator_error___block_invoke;
        *&v173[24] = &unk_27861AF08;
        v53 = v50;
        *(&v175 + 1) = defaultProtectionClass2;
        *&v174 = v53;
        *(&v174 + 1) = selfCopy;
        v54 = v51;
        *&v175 = v54;
        v55 = [v52 performTransactionWithType:1 error:classesCopy usingBlock:v173];

        classes = classesCopy;
        v41 = v157;
        if (!v55)
        {
          goto LABEL_129;
        }

        _HKInitializeLogging();
        v56 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
        {
          v57 = v56;
          v58 = [v53 currentSchemaVersionForProtectionClass:defaultProtectionClass2];
          *v173 = 138543618;
          *&v173[4] = schemaName3;
          *&v173[12] = 2048;
          *&v173[14] = v58;
          _os_log_impl(&dword_228986000, v57, OS_LOG_TYPE_DEFAULT, "Created entities for '%{public}@' at version %ld", v173, 0x16u);
        }
      }

      ++v44;
    }

    while (v43 != v44);
    schemaProviders3 = v138;
    v43 = [obj countByEnumeratingWithState:v170 objects:buf count:16];
    if (v43)
    {
      continue;
    }

    break;
  }

LABEL_50:

LABEL_66:
  v69 = 0;
  v67 = 3;
  defaultDatabase = v148;
LABEL_67:
  v70 = v69;
  classes = classesCopy;
  v17 = v150;
  v18 = v147;
  while (v67 == 3)
  {
    v160 = v70;
    v67 = [(HDDatabaseMigrator *)v157 migrateFromVersion:v155 toVersion:v152 error:&v160];
    v69 = v160;

    v70 = v69;
    if (!v67)
    {

      schemaProviders4 = [selfCopy schemaProviders];
      v159 = 0;
      v72 = [HDDatabaseMigrationTransaction _migrationRequiredForProtectionClass:defaultProtectionClass2 migrator:v157 schemaProviders:schemaProviders4 error:&v159];
      v147 = v159;

      v67 = 0;
      if (!v72 && v147)
      {
        _HKInitializeLogging();
        v73 = *MEMORY[0x277CCC2A0];
        v67 = 1;
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_228986000, v73, OS_LOG_TYPE_ERROR, "Migration step indicated success but failed to increment the user version. This will be reported as a failure.", buf, 2u);
          v67 = 1;
        }
      }

      goto LABEL_67;
    }
  }

  v142 = v70;
  if (v67)
  {
    v113 = v70;
    v5 = v145;
    v114 = MEMORY[0x277CCC2A0];
    if (v113)
    {
      if (classesCopy)
      {
        v115 = v113;
        *classesCopy = v113;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    _HKInitializeLogging();
    v121 = *v114;
    if (os_log_type_enabled(*v114, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109890;
      *&buf[4] = v67;
      *&buf[8] = 2048;
      *&buf[10] = v155;
      *&buf[18] = 2048;
      *&buf[20] = v152;
      *&buf[28] = 2114;
      *&buf[30] = v113;
      _os_log_error_impl(&dword_228986000, v121, OS_LOG_TYPE_ERROR, "Migrator returned %d for migration from %ld to %ld: %{public}@", buf, 0x26u);
    }

    _HKInitializeLogging();
    v122 = *v114;
    if (os_log_type_enabled(*v114, OS_LOG_TYPE_INFO))
    {
      v123 = "unprotected";
      if (v144)
      {
        v123 = "protected";
      }

      *buf = 136315138;
      *&buf[4] = v123;
      _os_log_impl(&dword_228986000, v122, OS_LOG_TYPE_INFO, "Finished %s database migration with success=NO", buf, 0xCu);
    }

    classes = classesCopy;
  }

  else
  {
    v74 = [v143 userVersionWithDatabaseName:0 error:classesCopy];
    _HKInitializeLogging();
    v75 = *MEMORY[0x277CCC2A0];
    v5 = v145;
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v74;
      _os_log_impl(&dword_228986000, v75, OS_LOG_TYPE_DEFAULT, "Finished database migration with success=YES, version %ld", buf, 0xCu);
    }

    if (v74 < 0)
    {
      v67 = 1;
    }

    else
    {
      if (v74 != v152)
      {
        _HKInitializeLogging();
        v76 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
        {
          *buf = 134218240;
          *&buf[4] = v152;
          *&buf[12] = 2048;
          *&buf[14] = v74;
          _os_log_fault_impl(&dword_228986000, v76, OS_LOG_TYPE_FAULT, "Database migration returned success but failed to update user version to current version (expected %ld but final version is %ld)", buf, 0x16u);
        }
      }

      v174 = 0u;
      v175 = 0u;
      memset(v173, 0, sizeof(v173));
      schemaProviders5 = [selfCopy schemaProviders];
      v78 = [schemaProviders5 countByEnumeratingWithState:v173 objects:buf count:16];
      if (v78)
      {
        v79 = v78;
        v67 = 0;
        v80 = **&v173[16];
        do
        {
          for (j = 0; j != v79; ++j)
          {
            if (**&v173[16] != v80)
            {
              objc_enumerationMutation(schemaProviders5);
            }

            v82 = *(*&v173[8] + 8 * j);
            schemaManager3 = [(HDDatabaseMigrator *)v157 schemaManager];
            schemaName4 = [v82 schemaName];
            v85 = [schemaManager3 currentVersionForSchema:schemaName4 protectionClass:defaultProtectionClass2 error:classes];

            if (v85 < 0)
            {
              v67 = 1;
            }

            v86 = [v82 currentSchemaVersionForProtectionClass:defaultProtectionClass2];
            if (v85 != v86)
            {
              v87 = v86;
              _HKInitializeLogging();
              v88 = *MEMORY[0x277CCC2A0];
              if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
              {
                *v170 = 134218240;
                *&v170[4] = v87;
                *&v170[12] = 2048;
                *&v170[14] = v85;
                _os_log_fault_impl(&dword_228986000, v88, OS_LOG_TYPE_FAULT, "Database migration returned success but failed to update user version to current version (expected %ld but final version is %ld)", v170, 0x16u);
              }
            }

            classes = classesCopy;
          }

          v79 = [schemaProviders5 countByEnumeratingWithState:v173 objects:buf count:16];
        }

        while (v79);
      }

      else
      {
        v67 = 0;
      }

      v5 = v145;
      v18 = v147;
      defaultDatabase = v148;
      self = selfCopy;
      v17 = v150;
    }
  }

  defaultDatabase2 = v143;
  [(HDDatabaseMigrator *)v157 invalidate];

LABEL_151:
  if (![self isProtectedMigration] || v67)
  {
LABEL_160:
    if (!v17)
    {
      goto LABEL_178;
    }

    goto LABEL_161;
  }

  protectedDatabase2 = [self protectedDatabase];
  isWriter = [protectedDatabase2 isWriter];

  if ((isWriter & 1) == 0)
  {
    v67 = 0;
    goto LABEL_160;
  }

  selfCopy2 = self;
  protectedDatabase3 = [self protectedDatabase];
  *v166 = 0;
  v128 = [(HDKeyValueEntity *)HDProtectedKeyValueEntity retrieveDatabaseIdentifierFromDatabase:protectedDatabase3 error:v166];
  v129 = *v166;

  if (!v128 && v129)
  {
    _HKInitializeLogging();
    v130 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      *&buf[4] = v129;
      _os_log_impl(&dword_228986000, v130, OS_LOG_TYPE_INFO, "temporary SQL error reading identifiers: %{public}@", buf, 0xCu);
    }

    [MEMORY[0x277CCA9B8] hk_assignError:classes code:100 description:@"Retry: temporary SQL error reading identifiers" underlyingError:v129];
    v131 = 0;
    v67 = 1;
    goto LABEL_170;
  }

  v151 = v17;
  unprotectedDatabase4 = [selfCopy2 unprotectedDatabase];
  *v173 = v129;
  v131 = [(HDKeyValueEntity *)HDUnprotectedKeyValueEntity retrieveDatabaseIdentifierFromDatabase:unprotectedDatabase4 error:v173];
  v133 = *v173;

  if (v128 && v131 && ([v128 isEqualToData:v131] & 1) != 0)
  {

    v67 = 0;
    self = selfCopy2;
    if (!v151)
    {
      goto LABEL_178;
    }

LABEL_161:
    [(HDDatabaseMigrationTransaction *)self _enableIncrementalAutovacuumIfNeeded];
    goto LABEL_178;
  }

  _HKInitializeLogging();
  v134 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    *&buf[4] = v128;
    *&buf[12] = 2114;
    *&buf[14] = v131;
    _os_log_error_impl(&dword_228986000, v134, OS_LOG_TYPE_ERROR, "FATAL: database identifiers do not match (protected: %{public}@, unprotected: %{public}@)", buf, 0x16u);
  }

  [MEMORY[0x277CCA9B8] hk_assignError:classes code:100 description:@"Fatal: database identifiers did not match"];
  delegate = [selfCopy2 delegate];
  [delegate migrationTransaction:selfCopy2 didEncounterDatabaseMismatchWithUnprotectedIdentifier:v131 protectedIdentifier:v128];

  v67 = 2;
  v129 = v133;
LABEL_170:

LABEL_178:
LABEL_179:

  v136 = *MEMORY[0x277D85DE8];
  return v67;
}

- (void)_enableIncrementalAutovacuumIfNeeded
{
  v9 = *MEMORY[0x277D85DE8];
  defaultDatabase = [self defaultDatabase];
  v6 = 0;
  v2 = [defaultDatabase enableIncrementalAutovacuumForDatabaseWithName:0 error:&v6];
  v3 = v6;

  if ((v2 & 1) == 0)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v8 = v3;
      _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "Failed to enable autovacuum for database: %{public}@", buf, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_createDataTablesInDatabase:(uint64_t)database entityClasses:(void *)classes requiredPrefix:(void *)prefix error:(void *)error
{
  v27 = *MEMORY[0x277D85DE8];
  classesCopy = classes;
  prefixCopy = prefix;
  errorCopy = error;
  if (database)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = prefixCopy;
    v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v22 + 1) + 8 * i);
          v19 = errorCopy;
          v20 = classesCopy;
          v14 = HKWithAutoreleasePool();

          if (!v14)
          {
            v15 = 0;
            goto LABEL_13;
          }
        }

        v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v15 = 1;
    }

    else
    {
      v15 = 1;
    }

LABEL_13:
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t __105__HDDatabaseMigrationTransaction_Schema___createDataTablesInDatabase_entityClasses_requiredPrefix_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 56);
  v5 = [*(a1 + 32) behavior];
  v6 = [v4 createTableSQLWithBehavior:v5];

  if (v6)
  {
    if (*(a1 + 40))
    {
      v7 = [*(a1 + 56) databaseTable];
      v8 = [v7 hasPrefix:*(a1 + 40)];

      if ((v8 & 1) == 0)
      {
        v32 = *(a1 + 56);
        [MEMORY[0x277CCA9B8] hk_assignError:a2 code:3 format:{@"Entity '%@' missing required prefix '%@'", v32, *(a1 + 40)}];
        goto LABEL_26;
      }
    }

    if (![*(a1 + 48) executeUncachedSQL:v6 error:a2 bindingHandler:0 enumerationHandler:0])
    {
LABEL_26:
      v31 = 0;
      goto LABEL_27;
    }
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v9 = *(a1 + 56);
  v10 = [*(a1 + 32) behavior];
  v11 = [v9 indicesWithBehavior:v10];

  v12 = [v11 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v40;
LABEL_7:
    v15 = 0;
    while (1)
    {
      if (*v40 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v39 + 1) + 8 * v15);
      if ([v16 entityClass] == *(a1 + 56))
      {
        v17 = [v16 creationSQL];
        v18 = [*(a1 + 48) executeUncachedSQL:v17 error:a2 bindingHandler:0 enumerationHandler:0];

        if (!v18)
        {
          goto LABEL_24;
        }
      }

      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v39 objects:v44 count:16];
        if (v13)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v19 = *(a1 + 56);
  v20 = [*(a1 + 32) behavior];
  v11 = [v19 triggersWithBehavior:v20];

  v21 = [v11 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v36;
LABEL_16:
    v24 = 0;
    while (1)
    {
      if (*v36 != v23)
      {
        objc_enumerationMutation(v11);
      }

      v25 = *(*(&v35 + 1) + 8 * v24);
      if ([v25 entityClass] == *(a1 + 56))
      {
        v26 = [v25 creationSQL];
        v27 = [*(a1 + 48) executeUncachedSQL:v26 error:a2];

        if (!v27)
        {
          break;
        }
      }

      if (v22 == ++v24)
      {
        v22 = [v11 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v22)
        {
          goto LABEL_16;
        }

        goto LABEL_23;
      }
    }

LABEL_24:

    goto LABEL_26;
  }

LABEL_23:

  v28 = *(a1 + 32);
  v29 = *(a1 + 48);
  v30 = [*(a1 + 56) privateSubEntities];
  v31 = [(HDDatabaseMigrationTransaction *)v28 _createDataTablesInDatabase:v29 entityClasses:v30 requiredPrefix:*(a1 + 40) error:a2];

LABEL_27:
  v33 = *MEMORY[0x277D85DE8];
  return v31;
}

uint64_t __106__HDDatabaseMigrationTransaction_Schema___createEntitiesForSchemaProvider_protectionClass_migrator_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v7 = a2;
  v8 = [v5 databaseEntitiesForProtectionClass:v6];
  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) schemaName];
  LODWORD(v9) = [HDDatabaseMigrationTransaction _createDataTablesInDatabase:v9 entityClasses:v7 requiredPrefix:v8 error:v10];

  if (v9)
  {
    v11 = [*(a1 + 48) schemaManager];
    v12 = [*(a1 + 32) currentSchemaVersionForProtectionClass:*(a1 + 56)];
    v13 = [*(a1 + 32) schemaName];
    v14 = [v11 setVersion:v12 schema:v13 protectionClass:*(a1 + 56) error:a3];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_presentRollbackAlertForSchema:(void *)schema protectionClass:(uint64_t)class foundVersion:(uint64_t)version currentVersion:(uint64_t)currentVersion
{
  v19 = *MEMORY[0x277D85DE8];
  schemaCopy = schema;
  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v12 = "main";
    if (class == 2)
    {
      v12 = "protected";
    }

    *v14 = 136315906;
    *&v14[4] = v12;
    v13 = @"<primary>";
    *&v14[12] = 2114;
    if (schemaCopy)
    {
      v13 = schemaCopy;
    }

    *&v14[14] = v13;
    v15 = 2048;
    versionCopy = version;
    v17 = 2048;
    currentVersionCopy = currentVersion;
    _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "Detected attempt to rollback %s database (schema: %{public}@) from a newer build (Found version %ld but current version is %ld); failing migration.", v14, 0x2Au);
  }

  if ([MEMORY[0x277CCDD30] isAppleInternalInstall] && (_presentRollbackAlertForSchema_protectionClass_foundVersion_currentVersion__isPresenting & 1) == 0)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    if ([standardUserDefaults BOOLForKey:@"HDHasPresentedRollbackWarningDialog"])
    {
LABEL_7:

      goto LABEL_8;
    }

    isTestingDevice = [MEMORY[0x277CCDD30] isTestingDevice];

    if ((isTestingDevice & 1) == 0)
    {
      _presentRollbackAlertForSchema_protectionClass_foundVersion_currentVersion__isPresenting = 1;
      standardUserDefaults = objc_alloc_init(MEMORY[0x277D10BC0]);
      [standardUserDefaults setTitle:@"Health DB Version Mismatch"];
      [standardUserDefaults setMessage:{@"Your Health database appears to be from a newer build. Rolling back to earlier builds is not supported, and Health apps will not be functional."}];
      [standardUserDefaults setDefaultButton:@"OK"];
      [standardUserDefaults presentWithResponseHandler:&__block_literal_global_58];
      goto LABEL_7;
    }
  }

LABEL_8:

  v11 = *MEMORY[0x277D85DE8];
}

void __117__HDDatabaseMigrationTransaction_Schema___presentRollbackAlertForSchema_protectionClass_foundVersion_currentVersion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _presentRollbackAlertForSchema_protectionClass_foundVersion_currentVersion__isPresenting = 0;
  if (!a4)
  {
    v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v5 setBool:1 forKey:@"HDHasPresentedRollbackWarningDialog"];
  }
}

- (BOOL)_migrationRequiredForProtectionClass:(uint64_t)class migrator:(void *)migrator schemaProviders:(void *)providers error:(void *)error
{
  v40 = *MEMORY[0x277D85DE8];
  migratorCopy = migrator;
  providersCopy = providers;
  schemaManager = [migratorCopy schemaManager];
  v10 = [schemaManager currentVersionForSchema:0 protectionClass:class error:error];

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_26:
    v17 = 0;
    goto LABEL_27;
  }

  behavior = [migratorCopy behavior];
  futureMigrationsEnabled = [behavior futureMigrationsEnabled];
  v13 = 100003;
  if (class == 2)
  {
    v13 = 100030;
  }

  if (futureMigrationsEnabled)
  {
    v14 = v13;
  }

  else
  {
    v14 = 19102;
  }

  if (v10 > v14)
  {
    hk_databaseSchemaRolledBackError = [MEMORY[0x277CCA9B8] hk_databaseSchemaRolledBackError];
    if (hk_databaseSchemaRolledBackError)
    {
      if (error)
      {
        v16 = hk_databaseSchemaRolledBackError;
        *error = hk_databaseSchemaRolledBackError;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    [HDDatabaseMigrationTransaction _presentRollbackAlertForSchema:class protectionClass:v10 foundVersion:v14 currentVersion:?];
    goto LABEL_26;
  }

  if (v10 >= v14)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = providersCopy;
    v18 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v36;
      v33 = providersCopy;
      while (2)
      {
        v21 = 0;
        do
        {
          if (*v36 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v35 + 1) + 8 * v21);
          schemaManager2 = [migratorCopy schemaManager];
          schemaName = [v22 schemaName];
          v25 = [schemaManager2 currentVersionForSchema:schemaName protectionClass:class error:error];

          v17 = v25 >= 0;
          if (v25 < 0)
          {
            goto LABEL_33;
          }

          v26 = [v22 currentSchemaVersionForProtectionClass:class];
          if (v25 > v26)
          {
            v29 = v26;
            hk_databaseSchemaRolledBackError2 = [MEMORY[0x277CCA9B8] hk_databaseSchemaRolledBackError];
            if (hk_databaseSchemaRolledBackError2)
            {
              if (error)
              {
                v31 = hk_databaseSchemaRolledBackError2;
                *error = hk_databaseSchemaRolledBackError2;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            schemaName2 = [v22 schemaName];
            [HDDatabaseMigrationTransaction _presentRollbackAlertForSchema:schemaName2 protectionClass:class foundVersion:v25 currentVersion:v29];

            v17 = 0;
LABEL_33:

            providersCopy = v33;
            goto LABEL_27;
          }

          if (v25 < v26)
          {
            goto LABEL_33;
          }

          ++v21;
        }

        while (v19 != v21);
        v19 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
        providersCopy = v33;
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_26;
  }

  v17 = 1;
LABEL_27:

  v27 = *MEMORY[0x277D85DE8];
  return v17;
}

@end