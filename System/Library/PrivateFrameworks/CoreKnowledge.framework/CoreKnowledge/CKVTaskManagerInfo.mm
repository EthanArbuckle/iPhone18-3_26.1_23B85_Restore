@interface CKVTaskManagerInfo
- (BOOL)clear:(id *)clear;
- (BOOL)didCompleteMigrationMoreRecentlyThanMaintenance;
- (BOOL)recordMaintenanceCompleted:(id *)completed;
- (BOOL)recordMigrationCompletedWithSettings:(id)settings error:(id *)error;
- (BOOL)shouldRunMigration;
- (BOOL)updateSchemaVersion:(id)version error:(id *)error;
- (BOOL)updateSiriLanguageCode:(id)code dictationLanguageCodes:(id)codes error:(id *)error;
- (CKVTaskManagerInfo)initWithRootDirectoryURL:(id)l error:(id *)error;
- (id)dictationLanguageCodes;
- (id)lastMaintenance;
- (id)schemaVersion;
- (id)siriLanguageCode;
@end

@implementation CKVTaskManagerInfo

- (BOOL)didCompleteMigrationMoreRecentlyThanMaintenance
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__CKVTaskManagerInfo_didCompleteMigrationMoreRecentlyThanMaintenance__block_invoke;
  v5[3] = &unk_1E831E628;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __69__CKVTaskManagerInfo_didCompleteMigrationMoreRecentlyThanMaintenance__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKey:@"lastMigration"];
  if (v2)
  {
    v4 = v2;
    v3 = [*(*(a1 + 32) + 8) objectForKey:@"lastMaintenance"];
    if (v3)
    {
      *(*(*(a1 + 40) + 8) + 24) = [v4 compare:v3] == 1;
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    v2 = v4;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (BOOL)recordMigrationCompletedWithSettings:(id)settings error:(id *)error
{
  v38[6] = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  v6 = +[CKVTaskSettings buildVersion];
  v7 = +[CKVTaskSettings projectNameAndSourceVersion];
  localization = [settingsCopy localization];
  siriLanguageCode = [localization siriLanguageCode];

  localization2 = [settingsCopy localization];
  dictationLanguageCodes = [localization2 dictationLanguageCodes];

  if (v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = &stru_1F4852890;
  }

  v13 = v12;

  if (v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = &stru_1F4852890;
  }

  v15 = v14;

  if (siriLanguageCode)
  {
    v16 = siriLanguageCode;
  }

  else
  {
    v16 = &stru_1F4852890;
  }

  v17 = v16;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    allObjects = [dictationLanguageCodes allObjects];
  }

  else
  {
    allObjects = MEMORY[0x1E695E0F0];
  }

  v38[0] = v13;
  v38[1] = v15;
  v19 = [MEMORY[0x1E695DF00] now];
  v38[2] = v19;
  v38[3] = &unk_1F48584B0;
  v38[4] = v17;
  v38[5] = allObjects;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:6];

  v37[0] = @"migratedBuildVersion";
  v37[1] = @"migratedProjectVersion";
  v37[2] = @"lastMigration";
  v37[3] = @"migrationAttempts";
  v37[4] = @"siriLanguageCode";
  v37[5] = @"dictationLanguageCodes";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:6];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__1042;
  v31[4] = __Block_byref_object_dispose__1043;
  v32 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__CKVTaskManagerInfo_recordMigrationCompletedWithSettings_error___block_invoke;
  block[3] = &unk_1E831E650;
  v29 = &v33;
  block[4] = self;
  v23 = v20;
  v27 = v23;
  v24 = v21;
  v28 = v24;
  v30 = v31;
  dispatch_sync(queue, block);
  KVSetError();
  LOBYTE(queue) = *(v34 + 24);

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(&v33, 8);

  return queue & 1;
}

void __65__CKVTaskManagerInfo_recordMigrationCompletedWithSettings_error___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 8);
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v3 writeUpdatedObjects:v2 forKeys:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[7] + 8) + 24) = v6;
  if (*(*(a1[7] + 8) + 24) == 1)
  {
    v7 = a1[4];
    v8 = *(v7 + 24);
    *(v7 + 24) = 0;
  }
}

- (BOOL)shouldRunMigration
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1042;
  v10 = __Block_byref_object_dispose__1043;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__CKVTaskManagerInfo_shouldRunMigration__block_invoke;
  v5[3] = &unk_1E831E628;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5] != 0;
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __40__CKVTaskManagerInfo_shouldRunMigration__block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
    {
      v4 = v3;
      v5 = [v2 ISO8601String];
      *buf = 136315394;
      v33 = "[CKVTaskManagerInfo shouldRunMigration]_block_invoke";
      v34 = 2112;
      *v35 = v5;
      _os_log_impl(&dword_1C8683000, v4, OS_LOG_TYPE_INFO, "%s Migration is currently in-progress from (%@)", buf, 0x16u);
    }
  }

  else
  {
    v7 = [*(v1 + 8) objectForKey:@"migratedBuildVersion"];
    v8 = [*(*(a1 + 32) + 8) objectForKey:@"migratedProjectVersion"];
    v9 = [*(*(a1 + 32) + 8) objectForKey:@"lastMigration"];
    v10 = [v9 ISO8601String];

    v11 = +[CKVTaskSettings buildVersion];
    v12 = +[CKVTaskSettings projectNameAndSourceVersion];
    if ([(__CFString *)v11 isEqual:v7]&& [(__CFString *)v12 isEqual:v8])
    {
      v13 = CKLogContextVocabulary;
      if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
      {
        *buf = 136315906;
        v33 = "[CKVTaskManagerInfo shouldRunMigration]_block_invoke";
        v34 = 2112;
        *v35 = v10;
        *&v35[8] = 2112;
        v36 = v11;
        v37 = 2112;
        v38 = v12;
        _os_log_impl(&dword_1C8683000, v13, OS_LOG_TYPE_INFO, "%s Migration already completed (%@) for version: %@|%@", buf, 0x2Au);
      }
    }

    else
    {
      v14 = CKLogContextVocabulary;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        if (v10)
        {
          v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"version: %@|%@ completed (%@)", v7, v8, v10];
        }

        else
        {
          v15 = @"no record of prior migration";
        }

        *buf = 136315906;
        v33 = "[CKVTaskManagerInfo shouldRunMigration]_block_invoke";
        v34 = 2112;
        *v35 = v11;
        *&v35[8] = 2112;
        v36 = v12;
        v37 = 2112;
        v38 = v15;
        _os_log_impl(&dword_1C8683000, v14, OS_LOG_TYPE_INFO, "%s Migration is required. Current version: %@|%@ global log shows %@", buf, 0x2Au);
        if (v10)
        {
        }
      }

      v16 = [*(*(a1 + 32) + 8) objectForKey:@"migrationAttempts"];
      v17 = [v16 unsignedShortValue];

      v18 = CKLogContextVocabulary;
      if (v17 < 5)
      {
        if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v33 = "[CKVTaskManagerInfo shouldRunMigration]_block_invoke";
          v34 = 1024;
          *v35 = v17;
          *&v35[4] = 1024;
          *&v35[6] = 5;
          _os_log_impl(&dword_1C8683000, v18, OS_LOG_TYPE_INFO, "%s Prior migration attempts: %hu retry limit: %hu", buf, 0x18u);
        }

        v19 = *(*(a1 + 32) + 8);
        v20 = [MEMORY[0x1E696AD98] numberWithInt:v17 + 1];
        v31 = 0;
        LOBYTE(v19) = [v19 writeUpdatedObject:v20 forKey:@"migrationAttempts" error:&v31];
        v21 = v31;

        if (v19)
        {
          v22 = [MEMORY[0x1E695DF00] now];
          v23 = *(a1 + 32);
          v24 = *(v23 + 24);
          *(v23 + 24) = v22;

          objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 24));
          v25 = dispatch_time(0, 3600000000000);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          v26 = *(a1 + 32);
          v27 = *(*(a1 + 32) + 16);
          block[2] = __40__CKVTaskManagerInfo_shouldRunMigration__block_invoke_47;
          block[3] = &unk_1E831E628;
          v30 = v26;
          dispatch_after(v25, v27, block);
        }

        else
        {
          v28 = CKLogContextVocabulary;
          if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v33 = "[CKVTaskManagerInfo shouldRunMigration]_block_invoke";
            v34 = 2112;
            *v35 = v21;
            _os_log_error_impl(&dword_1C8683000, v28, OS_LOG_TYPE_ERROR, "%s Failed to record migration attempt: %@", buf, 0x16u);
          }
        }
      }

      else if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v33 = "[CKVTaskManagerInfo shouldRunMigration]_block_invoke";
        v34 = 1024;
        *v35 = v17;
        *&v35[4] = 1024;
        *&v35[6] = 5;
        _os_log_error_impl(&dword_1C8683000, v18, OS_LOG_TYPE_ERROR, "%s Migration attempts (%hu) have reached retry limit: %hu", buf, 0x18u);
      }
    }
  }
}

void __40__CKVTaskManagerInfo_shouldRunMigration__block_invoke_47(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  v3 = *(*(*(a1 + 40) + 8) + 40);
  if (v2 == v3)
  {
    v5 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = [v3 ISO8601String];
      v8 = 136315650;
      v9 = "[CKVTaskManagerInfo shouldRunMigration]_block_invoke";
      v10 = 2112;
      v11 = &unk_1F4858480;
      v12 = 2112;
      v13 = v7;
      _os_log_error_impl(&dword_1C8683000, v6, OS_LOG_TYPE_ERROR, "%s Timed out waiting %@ seconds for migration from (%@) to complete.", &v8, 0x20u);

      v1 = *(a1 + 32);
      v2 = *(v1 + 24);
    }

    *(v1 + 24) = 0;
  }
}

- (BOOL)updateSiriLanguageCode:(id)code dictationLanguageCodes:(id)codes error:(id *)error
{
  v36[2] = *MEMORY[0x1E69E9840];
  codeCopy = code;
  codesCopy = codes;
  if (!codeCopy)
  {
    v16 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[CKVTaskManagerInfo updateSiriLanguageCode:dictationLanguageCodes:error:]";
      *&buf[12] = 2112;
      *&buf[14] = 0;
      _os_log_error_impl(&dword_1C8683000, v16, OS_LOG_TYPE_ERROR, "%s invalid Siri language code: %@", buf, 0x16u);
    }

    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = CKLogContextVocabulary;
    if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
    {
      v19 = v17;
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 136315394;
      *&buf[4] = "[CKVTaskManagerInfo updateSiriLanguageCode:dictationLanguageCodes:error:]";
      *&buf[12] = 2112;
      *&buf[14] = v21;
      _os_log_error_impl(&dword_1C8683000, v19, OS_LOG_TYPE_ERROR, "%s Unexpected dictation languages class: %@", buf, 0x16u);
    }

LABEL_8:
    v15 = 0;
    goto LABEL_9;
  }

  v36[0] = codeCopy;
  allObjects = [codesCopy allObjects];
  v36[1] = allObjects;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];

  v35[0] = @"siriLanguageCode";
  v35[1] = @"dictationLanguageCodes";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v32 = __Block_byref_object_copy__1042;
  v33 = __Block_byref_object_dispose__1043;
  v34 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__CKVTaskManagerInfo_updateSiriLanguageCode_dictationLanguageCodes_error___block_invoke;
  block[3] = &unk_1E831E650;
  v25 = &v27;
  block[4] = self;
  v13 = v10;
  v23 = v13;
  v14 = v11;
  v24 = v14;
  v26 = buf;
  dispatch_sync(queue, block);
  KVSetError();
  v15 = *(v28 + 24);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v27, 8);

LABEL_9:
  return v15 & 1;
}

void __74__CKVTaskManagerInfo_updateSiriLanguageCode_dictationLanguageCodes_error___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 8);
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v3 writeUpdatedObjects:v2 forKeys:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[7] + 8) + 24) = v6;
}

- (id)dictationLanguageCodes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1042;
  v10 = __Block_byref_object_dispose__1043;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__CKVTaskManagerInfo_dictationLanguageCodes__block_invoke;
  v5[3] = &unk_1E831E628;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __44__CKVTaskManagerInfo_dictationLanguageCodes__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKey:@"dictationLanguageCodes"];
  v5 = v2;
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFD8] setWithArray:v2];
  }

  else
  {
    v3 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  v4 = v5;
  if (v5)
  {

    v4 = v5;
  }
}

- (id)siriLanguageCode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1042;
  v10 = __Block_byref_object_dispose__1043;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__CKVTaskManagerInfo_siriLanguageCode__block_invoke;
  v5[3] = &unk_1E831E628;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __38__CKVTaskManagerInfo_siriLanguageCode__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 8) objectForKey:@"siriLanguageCode"];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)recordMaintenanceCompleted:(id *)completed
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CKVTaskManagerInfo_recordMaintenanceCompleted___block_invoke;
  block[3] = &unk_1E831E600;
  block[4] = self;
  block[5] = &v7;
  block[6] = completed;
  dispatch_sync(queue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __49__CKVTaskManagerInfo_recordMaintenanceCompleted___block_invoke(void *a1)
{
  v2 = *(a1[4] + 8);
  v3 = [MEMORY[0x1E695DF00] now];
  *(*(a1[5] + 8) + 24) = [v2 writeUpdatedObject:v3 forKey:@"lastMaintenance" error:a1[6]];
}

- (id)lastMaintenance
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1042;
  v10 = __Block_byref_object_dispose__1043;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__CKVTaskManagerInfo_lastMaintenance__block_invoke;
  v5[3] = &unk_1E831E628;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __37__CKVTaskManagerInfo_lastMaintenance__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 8) objectForKey:@"lastMaintenance"];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)updateSchemaVersion:(id)version error:(id *)error
{
  versionCopy = version;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__CKVTaskManagerInfo_updateSchemaVersion_error___block_invoke;
  v10[3] = &unk_1E831E5D8;
  v10[4] = self;
  v11 = versionCopy;
  v12 = &v14;
  errorCopy = error;
  v8 = versionCopy;
  dispatch_sync(queue, v10);
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

uint64_t __48__CKVTaskManagerInfo_updateSchemaVersion_error___block_invoke(void *a1)
{
  result = [*(a1[4] + 8) writeUpdatedObject:a1[5] forKey:@"schemaVersion" error:a1[7]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (id)schemaVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1042;
  v10 = __Block_byref_object_dispose__1043;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__CKVTaskManagerInfo_schemaVersion__block_invoke;
  v5[3] = &unk_1E831E628;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __35__CKVTaskManagerInfo_schemaVersion__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 8) objectForKey:@"schemaVersion"];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)clear:(id *)clear
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__1042;
  v11[4] = __Block_byref_object_dispose__1043;
  v12 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__CKVTaskManagerInfo_clear___block_invoke;
  block[3] = &unk_1E831E5B0;
  block[4] = self;
  block[5] = &v7;
  block[6] = v11;
  dispatch_sync(queue, block);
  KVSetError();
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(v11, 8);

  return v4;
}

void __28__CKVTaskManagerInfo_clear___block_invoke(void *a1)
{
  v2 = *(a1[4] + 40);
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 clearAllBookmarksAndCommit:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = *(a1[4] + 8);
    v6 = *(a1[6] + 8);
    v8 = *(v6 + 40);
    v7 = [v5 clear:&v8];
    objc_storeStrong((v6 + 40), v8);
  }

  else
  {
    v7 = 0;
  }

  *(*(a1[5] + 8) + 24) = v7;
}

- (CKVTaskManagerInfo)initWithRootDirectoryURL:(id)l error:(id *)error
{
  lCopy = l;
  v19.receiver = self;
  v19.super_class = CKVTaskManagerInfo;
  v7 = [(CKVTaskManagerInfo *)&v19 init];
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = [objc_alloc(MEMORY[0x1E69ABCD0]) initWithFilename:@"Info" protectionClass:4 directory:lCopy readOnly:0 create:1 error:error];
  log = v7->_log;
  v7->_log = v8;

  if (!v7->_log || (v10 = [objc_alloc(MEMORY[0x1E6993A58]) initWithFilename:@"Registry" directory:lCopy protectionClass:4 error:error], changeRegistry = v7->_changeRegistry, v7->_changeRegistry = v10, changeRegistry, !v7->_changeRegistry))
  {
    v14 = 0;
    goto LABEL_8;
  }

  v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"Donate" isDirectory:1 relativeToURL:lCopy];
  donateDirectory = v7->_donateDirectory;
  v7->_donateDirectory = v12;

  v14 = KVGetOrCreateDirectoryURL();

  if (v14)
  {
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("TaskHandlerInfo", v15);
    queue = v7->_queue;
    v7->_queue = v16;

LABEL_6:
    v14 = v7;
  }

LABEL_8:

  return v14;
}

@end