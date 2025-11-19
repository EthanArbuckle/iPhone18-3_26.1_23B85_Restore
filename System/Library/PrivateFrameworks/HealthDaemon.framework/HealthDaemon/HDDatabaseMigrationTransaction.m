@interface HDDatabaseMigrationTransaction
+ (id)unprotectedMigrationTransactionForMigrationTransaction:(id)a3;
- (BOOL)_migrationRequiredForProtectionClass:(uint64_t)a1 migrator:(void *)a2 schemaProviders:(void *)a3 error:(void *)a4;
- (HDDatabaseMigrationTransaction)initWithUnprotectedDatabase:(id)a3 protectedDatabase:(id)a4 schemaProviders:(id)a5 behavior:(id)a6;
- (HDDatabaseMigrationTransactionDelegate)delegate;
- (HDSQLiteDatabase)defaultDatabase;
- (int64_t)HFDRebuildState;
- (int64_t)accessHistoricHFDWithError:(id *)a3 block:(id)a4;
- (int64_t)defaultProtectionClass;
- (int64_t)migrateOrCreateSchemaWithError:(id *)a3;
- (uint64_t)_createDataTablesInDatabase:(uint64_t)a1 entityClasses:(void *)a2 requiredPrefix:(void *)a3 error:(void *)a4;
- (uint64_t)_migrateOrCreateSchemaWithEntityClasses:(void *)a3 error:;
- (void)_enableIncrementalAutovacuumIfNeeded;
- (void)_presentRollbackAlertForSchema:(void *)a1 protectionClass:(uint64_t)a2 foundVersion:(uint64_t)a3 currentVersion:(uint64_t)a4;
- (void)setHFDRebuildState:(int64_t)a3;
@end

@implementation HDDatabaseMigrationTransaction

- (HDDatabaseMigrationTransaction)initWithUnprotectedDatabase:(id)a3 protectedDatabase:(id)a4 schemaProviders:(id)a5 behavior:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = HDDatabaseMigrationTransaction;
  v15 = [(HDDatabaseMigrationTransaction *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_unprotectedDatabase, a3);
    objc_storeStrong(&v16->_protectedDatabase, a4);
    v17 = [v13 copy];
    schemaProviders = v16->_schemaProviders;
    v16->_schemaProviders = v17;

    objc_storeStrong(&v16->_behavior, a6);
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

- (int64_t)accessHistoricHFDWithError:(id *)a3 block:(id)a4
{
  v7 = a4;
  if (![(HDDatabaseMigrationTransaction *)self isProtectedMigration])
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"HDDatabaseMigrationTransaction.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"[self isProtectedMigration]"}];
  }

  v8 = MEMORY[0x277D10B30];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [WeakRetained profileDirectoryPath];
  v11 = [v8 highFrequencyDatabaseURLWithProfileDirectoryPath:v10];

  v12 = [HDHFDataStore alloc];
  v13 = [v11 path];
  v14 = [(HDHFDataStore *)v12 initWithPath:v13];

  v15 = v7[2](v7, v14, a3);
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

+ (id)unprotectedMigrationTransactionForMigrationTransaction:(id)a3
{
  v4 = a3;
  if ([v4 isProtectedMigration])
  {
    v5 = [a1 alloc];
    v6 = [v4 unprotectedDatabase];
    v7 = [v4 schemaProviders];
    v8 = [v4 behavior];
    v9 = [v5 initWithUnprotectedDatabase:v6 protectedDatabase:0 schemaProviders:v7 behavior:v8];

    v10 = [v4 delegate];
    [v9 setDelegate:v10];
  }

  else
  {
    v9 = v4;
  }

  return v9;
}

- (int64_t)HFDRebuildState
{
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained profileIdentifier];
  v5 = HDDatabaseUserDefaultsKeyForProfileIdentifier(@"HKHFDRebuildStage", v4);

  if (v2)
  {
    v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  }

  v6 = [v2 integerForKey:v5];

  return v6;
}

- (void)setHFDRebuildState:(int64_t)a3
{
  v4 = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained profileIdentifier];
  v7 = HDDatabaseUserDefaultsKeyForProfileIdentifier(@"HKHFDRebuildStage", v6);

  if (v4)
  {
    v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  }

  [v4 setInteger:a3 forKey:v7];
}

- (HDDatabaseMigrationTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int64_t)migrateOrCreateSchemaWithError:(id *)a3
{
  v6 = [(HDDatabaseMigrationTransaction *)self delegate];
  v7 = [(HDDatabaseMigrationTransaction *)self behavior];
  v8 = [v6 migrationTransaction:self entityClassesWithBehavior:v7];

  v9 = [HDDatabaseMigrationTransaction unprotectedMigrationTransactionForMigrationTransaction:self];
  v10 = [(HDDatabaseMigrationTransaction *)v9 _migrateOrCreateSchemaWithEntityClasses:v8 error:a3];
  if (!v10)
  {
    if (![(HDDatabaseMigrationTransaction *)self isProtectedMigration])
    {
      v10 = 0;
      goto LABEL_6;
    }

    v10 = [(HDDatabaseMigrationTransaction *)self _migrateOrCreateSchemaWithEntityClasses:v8 error:a3];
  }

  if (v10 == 3)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"HDDatabase+Schema.m" lineNumber:163 description:@"Incorrectly returned in-progress migration status."];
  }

LABEL_6:

  return v10;
}

- (uint64_t)_migrateOrCreateSchemaWithEntityClasses:(void *)a3 error:
{
  v176 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (!a1)
  {
    v67 = 0;
    goto LABEL_179;
  }

  v6 = [a1 defaultDatabase];
  v7 = [v6 userVersionWithDatabaseName:0 error:a3];
  if (v7 < 0)
  {
    goto LABEL_177;
  }

  v158 = a3;
  if (!v7)
  {
    [(HDDatabaseMigrationTransaction *)a1 _enableIncrementalAutovacuumIfNeeded];
    v59 = v5;
    v60 = [a1 isProtectedMigration];
    [a1 defaultDatabase];
    v62 = v61 = a1;
    v63 = [v61 defaultProtectionClass];
    if (v60)
    {
      v154 = v61;
      if (![v62 isWriter])
      {
        v67 = 4;
        goto LABEL_116;
      }

      v64 = [v61 unprotectedDatabase];
      *&v161 = 0;
      a3 = [(HDKeyValueEntity *)HDUnprotectedKeyValueEntity retrieveDatabaseIdentifierFromDatabase:v64 error:&v161];
      v65 = v161;

      if (a3)
      {
        _HKInitializeLogging();
        v66 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
        {
          *v166 = 138543362;
          *&v166[4] = a3;
          _os_log_error_impl(&dword_228986000, v66, OS_LOG_TYPE_ERROR, "Fatal: Found identifier %{public}@ in unprotected database when creating protected database", v166, 0xCu);
        }

        [MEMORY[0x277CCA9B8] hk_assignError:v158 code:100 format:{@"Found identifier %@ in unprotected database when creating protected database", a3}];
        v67 = 2;
        goto LABEL_134;
      }

      a3 = v158;
      v61 = v154;
      if (v65)
      {
        if (v158)
        {
          v89 = v65;
          a3 = 0;
          *v158 = v65;
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
    *&buf[32] = v63;
    v90 = [v59 hk_filter:buf];
    v91 = a3;
    v92 = [HDDatabaseMigrationTransaction _createDataTablesInDatabase:v61 entityClasses:v62 requiredPrefix:v90 error:0];

    if (v92)
    {
      v154 = v61;
      v93 = [v61 behavior];
      v94 = [v93 futureMigrationsEnabled];
      v95 = 100003;
      if (v63 == 2)
      {
        v95 = 100030;
      }

      if (v94)
      {
        v96 = v95;
      }

      else
      {
        v96 = 19102;
      }

      v97 = [v62 setUserVersion:v96 withDatabaseName:0 error:v91];
      if (v97)
      {
        v67 = 0;
      }

      else
      {
        v67 = 2;
      }

      if ((v60 & v97) != 1)
      {
        a3 = v91;
        goto LABEL_175;
      }

      v149 = v6;
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
      v101 = [v61 unprotectedDatabase];
      v102 = [HDSyncIdentityEntity insertOrLookupConcreteIdentityForIdentity:v100 database:v101 error:v158];

      if (!v102)
      {
        v116 = 0;
        v6 = v149;
        a3 = v158;
LABEL_173:

        v67 = 2;
        goto LABEL_174;
      }

      v146 = v5;
      v103 = [v102 entity];
      v104 = [v103 persistentID];

      v105 = [v61 unprotectedDatabase];
      *v173 = 0;
      v106 = [(HDKeyValueEntity *)HDUnprotectedKeyValueEntity persistDatabaseIdentifier:v65 syncIdentity:v104 database:v105 error:v173];
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

        v110 = [v154 protectedDatabase];
        *v170 = v107;
        v111 = [(HDKeyValueEntity *)HDProtectedKeyValueEntity persistDatabaseIdentifier:v65 syncIdentity:v104 database:v110 error:v170];
        v112 = *v170;

        if (v111)
        {

          a3 = [v154 delegate];
          [a3 migrationTransaction:v154 didCreateDatabasesWithIdentifier:v65];
          v67 = 0;
          v5 = v146;
          v6 = v149;
LABEL_134:

          a3 = v158;
LABEL_174:

LABEL_175:
          if (v67)
          {
            goto LABEL_178;
          }

          v7 = [v6 userVersionWithDatabaseName:0 error:a3];
          a1 = v154;
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
        v6 = v149;
        if (!v116)
        {
          a3 = v158;
          goto LABEL_172;
        }

        a3 = v158;
        if (!v158)
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
        v6 = v149;
        a3 = v158;
        if (!v116)
        {
          goto LABEL_172;
        }

        if (!v158)
        {
LABEL_139:
          _HKLogDroppedError();
          goto LABEL_172;
        }
      }

      v117 = v116;
      *a3 = v116;
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
  v9 = [a1 isProtectedMigration];
  v10 = [a1 defaultDatabase];
  v11 = [a1 defaultProtectionClass];
  v12 = [a1 behavior];
  v13 = [v12 futureMigrationsEnabled];
  v14 = 100003;
  if (v11 == 2)
  {
    v14 = 100030;
  }

  if (!v13)
  {
    v14 = 19102;
  }

  v152 = v14;

  v15 = [[HDDatabaseMigrator alloc] initWithTransaction:a1];
  v16 = [a1 schemaProviders];
  v165 = 0;
  v156 = v15;
  v17 = [HDDatabaseMigrationTransaction _migrationRequiredForProtectionClass:v11 migrator:v15 schemaProviders:v16 error:&v165];
  v18 = v165;

  if (!v17)
  {
    v18 = v18;
    v5 = v8;
    if (v18)
    {
      if (a3)
      {
        v68 = v18;
        *a3 = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v67 = v18 != 0;

    goto LABEL_151;
  }

  if (v9 && ![v10 isWriter])
  {
    v67 = 4;
    v5 = v8;
    goto LABEL_151;
  }

  v144 = v9;
  v143 = v10;
  v148 = v6;
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    v19 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v19 setBool:0 forKey:@"HDHasPresentedRollbackWarningDialog"];
  }

  v145 = v8;
  v147 = v18;
  v150 = v17;
  _HKInitializeLogging();
  v20 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
  {
    if (v9)
    {
      v21 = "protected";
    }

    else
    {
      v21 = "unprotected";
    }

    v22 = MEMORY[0x277CCDD30];
    v23 = v20;
    v24 = [v22 currentOSBuild];
    *buf = 136315906;
    *&buf[4] = v21;
    *&buf[12] = 2048;
    *&buf[14] = v155;
    *&buf[22] = 2048;
    *&buf[24] = v152;
    *&buf[32] = 2114;
    *&buf[34] = v24;
    _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, "Will migrate %s database from version %ld to %ld (build version %{public}@)", buf, 0x2Au);
  }

  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  v153 = a1;
  v25 = [a1 schemaProviders];
  v26 = [v25 countByEnumeratingWithState:&v161 objects:v166 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v162;
    if (v9)
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
          objc_enumerationMutation(v25);
        }

        v31 = *(*(&v161 + 1) + 8 * i);
        v32 = [(HDDatabaseMigrator *)v156 schemaManager];
        v33 = [v31 schemaName];
        v34 = [v32 currentVersionForSchema:v33 protectionClass:v11 error:v158];

        if (v34 < 0)
        {

          v67 = 1;
          v5 = v145;
          v6 = v148;
          a3 = v158;
          a1 = v153;
LABEL_130:
          v17 = v150;
          v10 = v143;
          v18 = v147;
          goto LABEL_151;
        }

        v35 = [v31 currentSchemaVersionForProtectionClass:v11];
        if (v34 != v35)
        {
          v36 = v35;
          _HKInitializeLogging();
          v37 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
          {
            v38 = v37;
            v39 = [v31 schemaName];
            *buf = 136315906;
            *&buf[4] = v29;
            *&buf[12] = 2114;
            *&buf[14] = v39;
            *&buf[22] = 2048;
            *&buf[24] = v34;
            *&buf[32] = 2048;
            *&buf[34] = v36;
            _os_log_impl(&dword_228986000, v38, OS_LOG_TYPE_DEFAULT, "Will migrate %s database schema '%{public}@' from version %ld to %ld", buf, 0x2Au);
          }
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v161 objects:v166 count:16];
    }

    while (v27);
  }

  [(HDDatabaseMigrator *)v156 addPrimaryMigrationSteps];
  a1 = v153;
  v40 = [v153 schemaProviders];
  v41 = v156;
  v157 = v41;
  if (![v40 count])
  {

    goto LABEL_66;
  }

  v141 = objc_alloc_init(MEMORY[0x277CBEB38]);
  memset(v170, 0, sizeof(v170));
  v171 = 0u;
  v172 = 0u;
  obj = v40;
  v42 = [obj countByEnumeratingWithState:v170 objects:buf count:16];
  if (!v42)
  {
    goto LABEL_50;
  }

  v43 = v42;
  v140 = **&v170[16];
  v138 = v40;
  while (2)
  {
    v44 = 0;
    a3 = v158;
    do
    {
      if (**&v170[16] != v140)
      {
        objc_enumerationMutation(obj);
      }

      v45 = *(*&v170[8] + 8 * v44);
      v46 = [v45 schemaName];
      if (!v46)
      {
        [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:{@"Plugin '%@' provided no schema name.", v45}];
LABEL_129:

        v67 = 1;
        v5 = v145;
        v6 = v148;
        goto LABEL_130;
      }

      v47 = [v141 objectForKeyedSubscript:v46];

      if (v47)
      {
        v118 = MEMORY[0x277CCA9B8];
        v119 = [v141 objectForKeyedSubscript:v46];
        [v118 hk_assignError:a3 code:3 format:{@"Schema '%@' provided by both %@ and %@.", v46, v45, v119}];

        v41 = v157;
        goto LABEL_129;
      }

      v48 = [(HDDatabaseMigrator *)v41 schemaManager];
      v49 = [v48 currentVersionForSchema:v46 protectionClass:v11 error:a3];

      if (v49 < 0)
      {
        goto LABEL_129;
      }

      if (v49)
      {
        [v45 registerMigrationStepsForProtectionClass:v11 migrator:v41];
      }

      else
      {
        v50 = v45;
        v51 = v41;
        if ([v153 isProtectedMigration])
        {
          [v153 protectedDatabase];
        }

        else
        {
          [v153 unprotectedDatabase];
        }
        v52 = ;
        *v173 = MEMORY[0x277D85DD0];
        *&v173[8] = 3221225472;
        *&v173[16] = __106__HDDatabaseMigrationTransaction_Schema___createEntitiesForSchemaProvider_protectionClass_migrator_error___block_invoke;
        *&v173[24] = &unk_27861AF08;
        v53 = v50;
        *(&v175 + 1) = v11;
        *&v174 = v53;
        *(&v174 + 1) = v153;
        v54 = v51;
        *&v175 = v54;
        v55 = [v52 performTransactionWithType:1 error:v158 usingBlock:v173];

        a3 = v158;
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
          v58 = [v53 currentSchemaVersionForProtectionClass:v11];
          *v173 = 138543618;
          *&v173[4] = v46;
          *&v173[12] = 2048;
          *&v173[14] = v58;
          _os_log_impl(&dword_228986000, v57, OS_LOG_TYPE_DEFAULT, "Created entities for '%{public}@' at version %ld", v173, 0x16u);
        }
      }

      ++v44;
    }

    while (v43 != v44);
    v40 = v138;
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
  v6 = v148;
LABEL_67:
  v70 = v69;
  a3 = v158;
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

      v71 = [v153 schemaProviders];
      v159 = 0;
      v72 = [HDDatabaseMigrationTransaction _migrationRequiredForProtectionClass:v11 migrator:v157 schemaProviders:v71 error:&v159];
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
      if (v158)
      {
        v115 = v113;
        *v158 = v113;
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

    a3 = v158;
  }

  else
  {
    v74 = [v143 userVersionWithDatabaseName:0 error:v158];
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
      v77 = [v153 schemaProviders];
      v78 = [v77 countByEnumeratingWithState:v173 objects:buf count:16];
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
              objc_enumerationMutation(v77);
            }

            v82 = *(*&v173[8] + 8 * j);
            v83 = [(HDDatabaseMigrator *)v157 schemaManager];
            v84 = [v82 schemaName];
            v85 = [v83 currentVersionForSchema:v84 protectionClass:v11 error:a3];

            if (v85 < 0)
            {
              v67 = 1;
            }

            v86 = [v82 currentSchemaVersionForProtectionClass:v11];
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

            a3 = v158;
          }

          v79 = [v77 countByEnumeratingWithState:v173 objects:buf count:16];
        }

        while (v79);
      }

      else
      {
        v67 = 0;
      }

      v5 = v145;
      v18 = v147;
      v6 = v148;
      a1 = v153;
      v17 = v150;
    }
  }

  v10 = v143;
  [(HDDatabaseMigrator *)v157 invalidate];

LABEL_151:
  if (![a1 isProtectedMigration] || v67)
  {
LABEL_160:
    if (!v17)
    {
      goto LABEL_178;
    }

    goto LABEL_161;
  }

  v124 = [a1 protectedDatabase];
  v125 = [v124 isWriter];

  if ((v125 & 1) == 0)
  {
    v67 = 0;
    goto LABEL_160;
  }

  v126 = a1;
  v127 = [a1 protectedDatabase];
  *v166 = 0;
  v128 = [(HDKeyValueEntity *)HDProtectedKeyValueEntity retrieveDatabaseIdentifierFromDatabase:v127 error:v166];
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

    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:100 description:@"Retry: temporary SQL error reading identifiers" underlyingError:v129];
    v131 = 0;
    v67 = 1;
    goto LABEL_170;
  }

  v151 = v17;
  v132 = [v126 unprotectedDatabase];
  *v173 = v129;
  v131 = [(HDKeyValueEntity *)HDUnprotectedKeyValueEntity retrieveDatabaseIdentifierFromDatabase:v132 error:v173];
  v133 = *v173;

  if (v128 && v131 && ([v128 isEqualToData:v131] & 1) != 0)
  {

    v67 = 0;
    a1 = v126;
    if (!v151)
    {
      goto LABEL_178;
    }

LABEL_161:
    [(HDDatabaseMigrationTransaction *)a1 _enableIncrementalAutovacuumIfNeeded];
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

  [MEMORY[0x277CCA9B8] hk_assignError:a3 code:100 description:@"Fatal: database identifiers did not match"];
  v135 = [v126 delegate];
  [v135 migrationTransaction:v126 didEncounterDatabaseMismatchWithUnprotectedIdentifier:v131 protectedIdentifier:v128];

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
  v1 = [a1 defaultDatabase];
  v6 = 0;
  v2 = [v1 enableIncrementalAutovacuumForDatabaseWithName:0 error:&v6];
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

- (uint64_t)_createDataTablesInDatabase:(uint64_t)a1 entityClasses:(void *)a2 requiredPrefix:(void *)a3 error:(void *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = v8;
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
          v19 = v9;
          v20 = v7;
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

- (void)_presentRollbackAlertForSchema:(void *)a1 protectionClass:(uint64_t)a2 foundVersion:(uint64_t)a3 currentVersion:(uint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a1;
  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v12 = "main";
    if (a2 == 2)
    {
      v12 = "protected";
    }

    *v14 = 136315906;
    *&v14[4] = v12;
    v13 = @"<primary>";
    *&v14[12] = 2114;
    if (v7)
    {
      v13 = v7;
    }

    *&v14[14] = v13;
    v15 = 2048;
    v16 = a3;
    v17 = 2048;
    v18 = a4;
    _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "Detected attempt to rollback %s database (schema: %{public}@) from a newer build (Found version %ld but current version is %ld); failing migration.", v14, 0x2Au);
  }

  if ([MEMORY[0x277CCDD30] isAppleInternalInstall] && (_presentRollbackAlertForSchema_protectionClass_foundVersion_currentVersion__isPresenting & 1) == 0)
  {
    v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    if ([v9 BOOLForKey:@"HDHasPresentedRollbackWarningDialog"])
    {
LABEL_7:

      goto LABEL_8;
    }

    v10 = [MEMORY[0x277CCDD30] isTestingDevice];

    if ((v10 & 1) == 0)
    {
      _presentRollbackAlertForSchema_protectionClass_foundVersion_currentVersion__isPresenting = 1;
      v9 = objc_alloc_init(MEMORY[0x277D10BC0]);
      [v9 setTitle:@"Health DB Version Mismatch"];
      [v9 setMessage:{@"Your Health database appears to be from a newer build. Rolling back to earlier builds is not supported, and Health apps will not be functional."}];
      [v9 setDefaultButton:@"OK"];
      [v9 presentWithResponseHandler:&__block_literal_global_58];
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

- (BOOL)_migrationRequiredForProtectionClass:(uint64_t)a1 migrator:(void *)a2 schemaProviders:(void *)a3 error:(void *)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [v7 schemaManager];
  v10 = [v9 currentVersionForSchema:0 protectionClass:a1 error:a4];

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_26:
    v17 = 0;
    goto LABEL_27;
  }

  v11 = [v7 behavior];
  v12 = [v11 futureMigrationsEnabled];
  v13 = 100003;
  if (a1 == 2)
  {
    v13 = 100030;
  }

  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = 19102;
  }

  if (v10 > v14)
  {
    v15 = [MEMORY[0x277CCA9B8] hk_databaseSchemaRolledBackError];
    if (v15)
    {
      if (a4)
      {
        v16 = v15;
        *a4 = v15;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    [HDDatabaseMigrationTransaction _presentRollbackAlertForSchema:a1 protectionClass:v10 foundVersion:v14 currentVersion:?];
    goto LABEL_26;
  }

  if (v10 >= v14)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v8;
    v18 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v36;
      v33 = v8;
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
          v23 = [v7 schemaManager];
          v24 = [v22 schemaName];
          v25 = [v23 currentVersionForSchema:v24 protectionClass:a1 error:a4];

          v17 = v25 >= 0;
          if (v25 < 0)
          {
            goto LABEL_33;
          }

          v26 = [v22 currentSchemaVersionForProtectionClass:a1];
          if (v25 > v26)
          {
            v29 = v26;
            v30 = [MEMORY[0x277CCA9B8] hk_databaseSchemaRolledBackError];
            if (v30)
            {
              if (a4)
              {
                v31 = v30;
                *a4 = v30;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            v32 = [v22 schemaName];
            [HDDatabaseMigrationTransaction _presentRollbackAlertForSchema:v32 protectionClass:a1 foundVersion:v25 currentVersion:v29];

            v17 = 0;
LABEL_33:

            v8 = v33;
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
        v8 = v33;
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