@interface FCKeyValueStore
- (BOOL)BOOLValueForKey:(id)a3;
- (BOOL)containsObjectForKey:(id)a3;
- (FCKeyValueStore)init;
- (FCKeyValueStore)initWithName:(id)a3 directory:(id)a4 version:(unint64_t)a5 options:(unint64_t)a6 classRegistry:(id)a7 migrator:(id)a8;
- (FCKeyValueStore)initWithName:(id)a3 directory:(id)a4 version:(unint64_t)a5 options:(unint64_t)a6 classRegistry:(id)a7 migrator:(id)a8 savePolicy:(id)a9;
- (NSDate)modificationDate;
- (NSDictionary)asDictionary;
- (id)allKeys;
- (id)allObjects;
- (id)fc_jsonEncodableDictionaryWithDictionary:(uint64_t)a1;
- (id)jsonEncodableObject;
- (id)keysOfEntriesPassingTest:(id)a3;
- (id)objectForKey:(id)a3;
- (id)objectsForKeys:(id)a3;
- (void)_clearStore;
- (void)_maybeWriteObjectsByKey:(uint64_t)a1;
- (void)_readObjectsByKey:(uint64_t)a1;
- (void)_save;
- (void)_writeObjectsByKey:(uint64_t)a1;
- (void)addAllEntriesToDictionary:(id)a3;
- (void)addEntriesFromDictionary:(id)a3;
- (void)enumerateKeysAndObjectsForKeys:(id)a3 usingBlock:(id)a4;
- (void)enumerateKeysAndObjectsUsingBlock:(id)a3;
- (void)removeObjectForKey:(id)a3;
- (void)removeObjectsForKeys:(id)a3;
- (void)replaceContentsWithDictionary:(id)a3;
- (void)save;
- (void)saveWithCompletionHandler:(id)a3;
- (void)setJSONEncodingHandlersWithObjectHandler:(id)a3 arrayObjectHandler:(id)a4 dictionaryKeyHandler:(id)a5 dictionaryValueHandler:(id)a6;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setObjects:(id)a3 forKeys:(id)a4;
- (void)updateObjectsForKeys:(id)a3 withBlock:(id)a4;
@end

@implementation FCKeyValueStore

uint64_t __26__FCKeyValueStore_allKeys__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 allKeys];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

- (id)allKeys
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__99;
  v9 = __Block_byref_object_dispose__99;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __26__FCKeyValueStore_allKeys__block_invoke;
  v4[3] = &unk_1E7C47FE0;
  v4[4] = &v5;
  [(FCKeyValueStore *)self _readObjectsByKey:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)_save
{
  v84[2] = *MEMORY[0x1E69E9840];
  if (a1 && (*(a1 + 80) & 4) == 0)
  {
    [*(a1 + 64) lock];
    if (*(a1 + 9) == 1)
    {
      v2 = [*(a1 + 56) copy];
    }

    else
    {
      v2 = 0;
    }

    *(a1 + 9) = 0;
    [*(a1 + 64) unlock];
    if (v2)
    {
      v3 = [a1 storeDirectory];
      v66 = a1;
      v68 = [v3 stringByAppendingPathComponent:*(a1 + 32)];

      v69 = [MEMORY[0x1E695DF90] dictionary];
      v4 = [MEMORY[0x1E695DF90] dictionary];
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v67 = v2;
      v5 = v2;
      v6 = [v5 countByEnumeratingWithState:&v72 objects:v78 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v73;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v73 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v72 + 1) + 8 * i);
            v11 = [v5 objectForKey:v10];
            v12 = v11;
            if (v11 && [v11 conformsToProtocol:&unk_1F2EB3F08])
            {
              v13 = v12;
              [v69 setObject:v13 forKey:v10];
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                        {
                          v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ is not supported by this key-value store", objc_opt_class()];
                          *buf = 136315906;
                          v80 = "[FCKeyValueStore _save]";
                          v81 = 2080;
                          v82 = "FCKeyValueStore.m";
                          v83 = 1024;
                          LODWORD(v84[0]) = 624;
                          WORD2(v84[0]) = 2114;
                          *(v84 + 6) = v14;
                          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
                        }
                      }
                    }
                  }
                }
              }

              [v4 setObject:v12 forKey:v10];
              v13 = 0;
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v72 objects:v78 count:16];
        }

        while (v7);
      }

      v15 = v5;
      objc_opt_self();
      if (qword_1EDB27A58 != -1)
      {
        dispatch_once(&qword_1EDB27A58, &__block_literal_global_190);
      }

      v16 = v68;
      if (_MergedGlobals_216 == 1 && [a1 shouldExportJSONSidecar])
      {
        v17 = [(FCKeyValueStore *)a1 fc_jsonEncodableDictionaryWithDictionary:v15];
        v18 = [v17 fc_jsonString];

        if (v18)
        {
          v19 = FCURLForFeldsparUserAccountHomeDirectory();
          v20 = [v19 URLByAppendingPathComponent:@"automation_cloudkit_data" isDirectory:1];

          v21 = [MEMORY[0x1E696AC08] defaultManager];
          v77 = 0;
          [v21 createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:0 error:&v77];
          v22 = v77;

          if (v22 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v58 = objc_alloc(MEMORY[0x1E696AEC0]);
            v59 = [v22 localizedDescription];
            v60 = [v58 initWithFormat:@"Error creating directy at path %@ : %@", v20, v59];
            *buf = 136315906;
            v80 = "[FCKeyValueStore _maybeSaveJSONRepresentationWithDictionary:]";
            v81 = 2080;
            v82 = "FCKeyValueStore.m";
            v83 = 1024;
            LODWORD(v84[0]) = 581;
            WORD2(v84[0]) = 2114;
            *(v84 + 6) = v60;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
          }

          v23 = [*(v66 + 32) stringByAppendingPathExtension:@"json"];
          v24 = [v20 URLByAppendingPathComponent:v23];

          v76 = 0;
          [v18 writeToURL:v24 atomically:1 encoding:4 error:&v76];
          v25 = v76;
          if (v25 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v61 = objc_alloc(MEMORY[0x1E696AEC0]);
            v65 = [v25 localizedDescription];
            v62 = [v61 initWithFormat:@"Error generating JSON : %@", v65];
            *buf = 136315906;
            v80 = "[FCKeyValueStore _maybeSaveJSONRepresentationWithDictionary:]";
            v81 = 2080;
            v82 = "FCKeyValueStore.m";
            v83 = 1024;
            LODWORD(v84[0]) = 589;
            WORD2(v84[0]) = 2114;
            *(v84 + 6) = v62;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
          }
        }
      }

      v26 = objc_alloc_init(MEMORY[0x1E69B6E78]);
      [v26 setVersion:7];
      [v26 setClientVersion:*(v66 + 72)];
      v27 = FCDefaultLog;
      if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(v66 + 32);
        v29 = v28;
        v30 = v27;
        v31 = [v69 count];
        *buf = 138543618;
        v80 = v28;
        v81 = 2048;
        v82 = v31;
        _os_log_impl(&dword_1B63EF000, v30, OS_LOG_TYPE_DEFAULT, "Key-value store <%{public}@> will save %lu pairs", buf, 0x16u);
      }

      v71 = 0;
      v32 = [MEMORY[0x1E696AE40] dataWithPropertyList:v4 format:200 options:0 error:&v71];
      v33 = v71;
      [v26 setPlistSidecar:v32];

      if ([v4 count] && v33)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v53 = objc_alloc(MEMORY[0x1E696AEC0]);
          v54 = *(v66 + 32);
          v55 = [v53 initWithFormat:@"failed to serialize %@ key-value store plist with error: %@", v54, v33];
          *buf = 136315906;
          v80 = "[FCKeyValueStore _save]";
          v81 = 2080;
          v82 = "FCKeyValueStore.m";
          v83 = 1024;
          LODWORD(v84[0]) = 649;
          WORD2(v84[0]) = 2114;
          *(v84 + 6) = v55;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

        v34 = FCDefaultLog;
        if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
        {
          v35 = *(v66 + 32);
          *buf = 138543618;
          v80 = v35;
          v81 = 2114;
          v82 = v33;
          v36 = v34;
          _os_log_error_impl(&dword_1B63EF000, v36, OS_LOG_TYPE_ERROR, "failed to serialize %{public}@ key-value store plist with error: %{public}@", buf, 0x16u);
        }
      }

      else
      {
        Current = CFAbsoluteTimeGetCurrent();
        v38 = objc_alloc_init(FCKeyValueStoreWriter);
        if ([(FCKeyValueStoreWriter *)v38 writeKVS:v26 codables:v69 toFile:v68 size:v66 + 40])
        {
          v39 = [MEMORY[0x1E695DFF8] fileURLWithPath:v68 isDirectory:0];
          v40 = [MEMORY[0x1E696AD98] numberWithInt:(*(v66 + 80) & 1) == 0];
          v41 = *MEMORY[0x1E695E300];
          v70 = 0;
          v42 = [v39 setResourceValue:v40 forKey:v41 error:&v70];
          v64 = v70;

          if ((v42 & 1) == 0)
          {
            v43 = FCDefaultLog;
            if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v80 = v39;
              v81 = 2114;
              v82 = v64;
              _os_log_error_impl(&dword_1B63EF000, v43, OS_LOG_TYPE_ERROR, "Failed to set backup status for %{public}@ -- %{public}@", buf, 0x16u);
            }
          }

          v44 = CFAbsoluteTimeGetCurrent();
          v45 = FCDefaultLog;
          if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
          {
            v46 = v39;
            v47 = *(v66 + 32);
            v48 = MEMORY[0x1E696AAF0];
            v63 = v47;
            v49 = v45;
            v50 = [v48 stringFromByteCount:objc_msgSend(v66 countStyle:{"storeSize"), 0}];
            *buf = 138543874;
            v80 = v47;
            v39 = v46;
            v81 = 2048;
            v82 = ((v44 - Current) * 1000.0);
            v16 = v68;
            v83 = 2114;
            v84[0] = v50;
            _os_log_impl(&dword_1B63EF000, v49, OS_LOG_TYPE_DEFAULT, "Key-value store <%{public}@> did save in %lums with size %{public}@", buf, 0x20u);
          }
        }

        else
        {
          v51 = FCDefaultLog;
          if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
          {
            v56 = *(v66 + 32);
            *buf = 138543362;
            v80 = v56;
            v57 = v51;
            _os_log_error_impl(&dword_1B63EF000, v57, OS_LOG_TYPE_ERROR, "Failed to save key-value store <%{public}@>", buf, 0xCu);
          }
        }
      }

      v2 = v67;
    }
  }

  v52 = *MEMORY[0x1E69E9840];
}

- (NSDictionary)asDictionary
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__99;
  v9 = __Block_byref_object_dispose__99;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31__FCKeyValueStore_asDictionary__block_invoke;
  v4[3] = &unk_1E7C47FE0;
  v4[4] = &v5;
  [(FCKeyValueStore *)self _readObjectsByKey:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __31__FCKeyValueStore_asDictionary__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

void __35__FCKeyValueStore_shouldDumpToJSON__block_invoke()
{
  if (NFInternalBuild())
  {
    v2 = NewsCoreUserDefaults();
    if ([v2 BOOLForKey:@"running_ui_automation"])
    {
      v0 = [MEMORY[0x1E696AAE8] mainBundle];
      v1 = [v0 bundleIdentifier];
      _MergedGlobals_216 = [v1 isEqualToString:@"com.apple.news"];
    }

    else
    {
      _MergedGlobals_216 = 0;
    }
  }

  else
  {
    _MergedGlobals_216 = 0;
  }
}

- (NSDate)modificationDate
{
  v2 = self;
  if (self)
  {
    self = self->_lock;
  }

  [(FCKeyValueStore *)self lock];
  modificationDate = v2->_modificationDate;
  if (!modificationDate)
  {
    if ((v2->_optionsMask & 4) != 0)
    {
      modificationDate = 0;
    }

    else
    {
      storeURL = v2->_storeURL;
      v14 = 0;
      v5 = *MEMORY[0x1E695DA98];
      v6 = storeURL;
      v7 = [(NSURL *)v6 getResourceValue:&v14 forKey:v5 error:0];
      v8 = v14;
      v9 = v14;

      if (v7)
      {
        objc_storeStrong(&v2->_modificationDate, v8);
      }

      modificationDate = v2->_modificationDate;
    }
  }

  v10 = modificationDate;
  [(NFLocking *)v2->_lock unlock];
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = [MEMORY[0x1E695DF00] distantPast];
  }

  v12 = v11;

  return v12;
}

- (FCKeyValueStore)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCKeyValueStore init]";
    v10 = 2080;
    v11 = "FCKeyValueStore.m";
    v12 = 1024;
    v13 = 77;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCKeyValueStore init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCKeyValueStore)initWithName:(id)a3 directory:(id)a4 version:(unint64_t)a5 options:(unint64_t)a6 classRegistry:(id)a7 migrator:(id)a8 savePolicy:(id)a9
{
  v16 = a9;
  v129 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a4;
  v19 = a7;
  v104 = a8;
  v103 = a9;
  v105.receiver = self;
  v105.super_class = FCKeyValueStore;
  v20 = [(FCKeyValueStore *)&v105 init];
  v21 = v20;
  if (v20)
  {
    v102 = v19;
    objc_storeStrong(&v20->_name, a3);
    v21->_clientVersion = a5;
    v21->_optionsMask = a6;
    v22 = v18;
    v23 = [MEMORY[0x1E696AC08] defaultManager];
    v24 = [v23 fileExistsAtPath:v22];

    if ((v24 & 1) == 0)
    {
      v25 = [MEMORY[0x1E696AC08] defaultManager];
      *buf = 0;
      v26 = [v25 createDirectoryAtPath:v22 withIntermediateDirectories:1 attributes:0 error:buf];
      v27 = *buf;

      if ((v26 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v87 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"failed to create cache directory with error: %@", v27];
        *v122 = 136315906;
        *&v122[4] = "[FCKeyValueStore _initializeStoreDirectoryWithName:]";
        v123 = 2080;
        v124 = "FCKeyValueStore.m";
        v125 = 1024;
        v126 = 689;
        v127 = 2114;
        v128 = v87;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v122, 0x26u);
      }
    }

    v28 = v22;

    storeDirectory = v21->_storeDirectory;
    v21->_storeDirectory = v28;

    v30 = v21->_storeDirectory;
    if (v30)
    {
      v31 = MEMORY[0x1E695DFF8];
      v32 = [(NSString *)v30 stringByAppendingPathComponent:v21->_name];
      v33 = [v31 fileURLWithPath:v32 isDirectory:0];
      storeURL = v21->_storeURL;
      v21->_storeURL = v33;
    }

    else
    {
      v32 = v21->_storeURL;
      v21->_storeURL = 0;
    }

    v19 = v102;

    if (v102)
    {
      v35 = v102;
    }

    else
    {
      v35 = objc_alloc_init(FCKeyValueStoreClassRegistry);
    }

    classRegistry = v21->_classRegistry;
    v21->_classRegistry = v35;

    objc_storeStrong(&v21->_migrator, a8);
    v37 = [objc_alloc(MEMORY[0x1E69B6920]) initWithOptions:1];
    lock = v21->_lock;
    v21->_lock = v37;

    v39 = MEMORY[0x1E695DF90];
    v40 = [(FCKeyValueStore *)v21 storeDirectory];
    v41 = [v40 stringByAppendingPathComponent:v21->_name];

    Current = CFAbsoluteTimeGetCurrent();
    v43 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v41];
    v44 = v43;
    v101 = v43;
    if (!v43)
    {
      goto LABEL_60;
    }

    v99 = v41;
    v21->_storeSize = [v43 length];
    v45 = [MEMORY[0x1E695DF90] dictionary];
    v46 = [objc_alloc(MEMORY[0x1E69B6E78]) initWithData:v44];
    v100 = v46;
    if (v46 && (v47 = v46, [v46 version] == 7))
    {
      v93 = v39;
      v95 = v18;
      v97 = v17;
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v48 = [v47 keyValuePairs];
      v49 = [v48 countByEnumeratingWithState:&v111 objects:v122 count:16];
      if (v49)
      {
        v50 = v49;
        v51 = MEMORY[0x1E69E9C10];
        v52 = *v112;
        do
        {
          for (i = 0; i != v50; ++i)
          {
            if (*v112 != v52)
            {
              objc_enumerationMutation(v48);
            }

            v54 = *(*(&v111 + 1) + 8 * i);
            v55 = [v54 key];

            if (!v55 && os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"WARNING: the key value store should never contain an entry without a key"];
              *buf = 136315906;
              *&buf[4] = "[FCKeyValueStore _loadFromDisk]";
              v116 = 2080;
              v117 = COERCE_DOUBLE("FCKeyValueStore.m");
              v118 = 1024;
              v119 = 470;
              v120 = 2114;
              v121 = v61;
              _os_log_error_impl(&dword_1B63EF000, v51, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
            }

            v56 = v21->_classRegistry;
            v57 = -[FCKeyValueStoreClassRegistry classForValueType:](v56, "classForValueType:", [v54 valueType]);

            if (!v57 && os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              v62 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"no class to decode KVS value type %lu", objc_msgSend(v54, "valueType")];
              *buf = 136315906;
              *&buf[4] = "[FCKeyValueStore _loadFromDisk]";
              v116 = 2080;
              v117 = COERCE_DOUBLE("FCKeyValueStore.m");
              v118 = 1024;
              v119 = 473;
              v120 = 2114;
              v121 = v62;
              _os_log_error_impl(&dword_1B63EF000, v51, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
            }

            v58 = [(objc_class *)v57 readValueFromKeyValuePair:v54];
            if (v58)
            {
              v59 = [v54 key];

              if (v59)
              {
                v60 = [v54 key];
                [v45 setObject:v58 forKey:v60];
              }
            }
          }

          v50 = [v48 countByEnumeratingWithState:&v111 objects:v122 count:16];
        }

        while (v50);
      }

      v63 = [v100 plistSidecar];

      if (v63)
      {
        v64 = MEMORY[0x1E696AE40];
        v65 = [v100 plistSidecar];
        v110 = 0;
        v66 = [v64 propertyListWithData:v65 options:0 format:0 error:&v110];

        [v45 addEntriesFromDictionary:v66];
      }

      v67 = [v100 version];
      v68 = [v100 clientVersion];
      v18 = v95;
      v17 = v97;
      v39 = v93;
    }

    else
    {
      *v122 = 0;
      v69 = [MEMORY[0x1E696AE40] propertyListWithData:v44 options:0 format:0 error:v122];
      v70 = [v69 objectForKey:@"data"];
      [v45 addEntriesFromDictionary:v70];
      v71 = [v69 objectForKey:@"version"];
      v67 = [v71 unsignedIntegerValue];

      v72 = [v69 objectForKey:@"clientVersion"];
      v68 = [v72 unsignedIntegerValue];
    }

    v73 = CFAbsoluteTimeGetCurrent();
    v74 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_INFO))
    {
      name = v21->_name;
      *buf = 138412546;
      *&buf[4] = name;
      v116 = 2048;
      v117 = v73 - Current;
      v76 = v74;
      _os_log_impl(&dword_1B63EF000, v76, OS_LOG_TYPE_INFO, "Loaded %@ cache in %f ms", buf, 0x16u);
    }

    v41 = v99;
    if (v67 == 7)
    {
      if (v68 == v21->_clientVersion)
      {
        v44 = v45;
LABEL_59:

        v16 = a9;
        v19 = v102;
LABEL_60:

        v89 = [v39 dictionaryWithDictionary:v44];
        unsafeObjectsByKey = v21->_unsafeObjectsByKey;
        v21->_unsafeObjectsByKey = v89;

        objc_storeStrong(&v21->_savePolicy, v16);
        goto LABEL_61;
      }

      if ((v21->_optionsMask & 2) != 0)
      {
        migrator = v21->_migrator;
        if (migrator)
        {
          goto LABEL_45;
        }

        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          migrator = 0;
          goto LABEL_45;
        }

        v88 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"must have a migrator in order to migrate between KVS client versions"];
        *buf = 136315906;
        *&buf[4] = "[FCKeyValueStore _loadFromDisk]";
        v116 = 2080;
        v117 = COERCE_DOUBLE("FCKeyValueStore.m");
        v118 = 1024;
        v119 = 523;
        v120 = 2114;
        v121 = v88;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

        if ((v21->_optionsMask & 2) != 0)
        {
          migrator = v21->_migrator;
LABEL_45:
          if ([(FCKeyValueStoreMigrating *)migrator keyValueStore:v21 canMigrateFromVersion:v68])
          {
            v94 = v39;
            v96 = v18;
            v98 = v17;
            v108 = 0u;
            v109 = 0u;
            v106 = 0u;
            v107 = 0u;
            v78 = [v45 allKeys];
            v79 = [v78 copy];

            v80 = [v79 countByEnumeratingWithState:&v106 objects:buf count:16];
            if (v80)
            {
              v81 = v80;
              v82 = *v107;
              do
              {
                for (j = 0; j != v81; ++j)
                {
                  if (*v107 != v82)
                  {
                    objc_enumerationMutation(v79);
                  }

                  v84 = *(*(&v106 + 1) + 8 * j);
                  v85 = [v45 objectForKey:v84];
                  v86 = [(FCKeyValueStoreMigrating *)v21->_migrator keyValueStore:v21 migrateObject:v85 forKey:v84 fromVersion:v68];
                  if (v86)
                  {
                    [v45 setObject:v86 forKey:v84];
                  }

                  else
                  {
                    [v45 removeObjectForKey:v84];
                  }
                }

                v81 = [v79 countByEnumeratingWithState:&v106 objects:buf count:16];
              }

              while (v81);
            }

            v44 = v45;
            v18 = v96;
            v17 = v98;
            v39 = v94;
            v41 = v99;
            goto LABEL_59;
          }
        }
      }
    }

    [(FCKeyValueStore *)v21 _clearStore];
    v44 = 0;
    goto LABEL_59;
  }

LABEL_61:

  v91 = *MEMORY[0x1E69E9840];
  return v21;
}

- (FCKeyValueStore)initWithName:(id)a3 directory:(id)a4 version:(unint64_t)a5 options:(unint64_t)a6 classRegistry:(id)a7 migrator:(id)a8
{
  v13 = a7;
  v14 = a4;
  v15 = a3;
  v16 = +[FCKeyValueStoreSavePolicy defaultPolicy];
  v17 = [(FCKeyValueStore *)self initWithName:v15 directory:v14 version:a5 options:a6 classRegistry:v13 migrator:0 savePolicy:v16];

  return v17;
}

- (BOOL)containsObjectForKey:(id)a3
{
  v3 = [(FCKeyValueStore *)self objectForKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    if (v6)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __36__FCKeyValueStore_setObject_forKey___block_invoke_2;
      v11[3] = &unk_1E7C47FB8;
      v12 = v7;
      v13 = v6;
      [(FCKeyValueStore *)self _maybeWriteObjectsByKey:v11];
    }

    else
    {
      [(FCKeyValueStore *)self removeObjectForKey:v7];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "key"];
    *buf = 136315906;
    v15 = "[FCKeyValueStore setObject:forKey:]";
    v16 = 2080;
    v17 = "FCKeyValueStore.m";
    v18 = 1024;
    v19 = 146;
    v20 = 2114;
    v21 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

BOOL __36__FCKeyValueStore_setObject_forKey___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:*(a1 + 32)];
  v5 = *(a1 + 40);

  if (v4 != v5)
  {
    [v3 setObject:*(a1 + 40) forKey:*(a1 + 32)];
  }

  return v4 != v5;
}

- (void)_maybeWriteObjectsByKey:(uint64_t)a1
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    [*(a1 + 64) lock];
    v4 = *(a1 + 9);
    v5 = v3[2](v3, *(a1 + 56));
    *(a1 + 9) = (*(a1 + 9) | v5) & 1;
    v6 = [MEMORY[0x1E695DF00] date];
    v7 = *(a1 + 16);
    *(a1 + 16) = v6;

    [*(a1 + 64) unlock];
    if (v5)
    {
      if ((v4 & 1) == 0)
      {
        v8 = FCDefaultLog;
        if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(a1 + 32);
          *buf = 138412290;
          v16 = v9;
          v10 = v8;
          _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "Key-value store <%@> will schedule save", buf, 0xCu);
        }

        v11 = *(a1 + 104);
        objc_opt_class();
        objc_opt_self();
        v12 = FCPersistenceQueue();
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __43__FCKeyValueStore__maybeWriteObjectsByKey___block_invoke;
        v14[3] = &unk_1E7C36EA0;
        v14[4] = a1;
        [v11 scheduleSaveOnQueue:v12 handler:v14];
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setObjects:(id)a3 forKeys:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v7];
      [(FCKeyValueStore *)self addEntriesFromDictionary:v9];

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "objects"];
    *buf = 136315906;
    v14 = "[FCKeyValueStore setObjects:forKeys:]";
    v15 = 2080;
    v16 = "FCKeyValueStore.m";
    v17 = 1024;
    v18 = 170;
    v19 = 2114;
    v20 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (!v8)
  {
LABEL_7:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "keys"];
      *buf = 136315906;
      v14 = "[FCKeyValueStore setObjects:forKeys:]";
      v15 = 2080;
      v16 = "FCKeyValueStore.m";
      v17 = 1024;
      v18 = 171;
      v19 = 2114;
      v20 = v12;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }
  }

LABEL_9:

  v10 = *MEMORY[0x1E69E9840];
}

- (void)addEntriesFromDictionary:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __44__FCKeyValueStore_addEntriesFromDictionary___block_invoke_2;
    v6[3] = &unk_1E7C36EC8;
    v7 = v4;
    [(FCKeyValueStore *)self _writeObjectsByKey:v6];
  }
}

- (void)_writeObjectsByKey:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __38__FCKeyValueStore__writeObjectsByKey___block_invoke;
    v5[3] = &unk_1E7C48080;
    v6 = v3;
    [(FCKeyValueStore *)a1 _maybeWriteObjectsByKey:v5];
  }
}

- (void)replaceContentsWithDictionary:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__FCKeyValueStore_replaceContentsWithDictionary___block_invoke_2;
    v6[3] = &unk_1E7C36EC8;
    v7 = v4;
    [(FCKeyValueStore *)self _writeObjectsByKey:v6];
  }
}

void __49__FCKeyValueStore_replaceContentsWithDictionary___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 removeAllObjects];
  [v3 addEntriesFromDictionary:*(a1 + 32)];
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __38__FCKeyValueStore_removeObjectForKey___block_invoke_2;
    v6[3] = &unk_1E7C36EC8;
    v7 = v4;
    [(FCKeyValueStore *)self _writeObjectsByKey:v6];
  }
}

- (void)removeObjectsForKeys:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __40__FCKeyValueStore_removeObjectsForKeys___block_invoke_2;
    v5[3] = &unk_1E7C36EC8;
    v6 = v4;
    [(FCKeyValueStore *)self _writeObjectsByKey:v5];
  }
}

- (void)updateObjectsForKeys:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  if (v7 && v8)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50__FCKeyValueStore_updateObjectsForKeys_withBlock___block_invoke_2;
    v9[3] = &unk_1E7C3F430;
    v10 = v6;
    v11 = v7;
    [(FCKeyValueStore *)self _writeObjectsByKey:v9];
  }
}

void __50__FCKeyValueStore_updateObjectsForKeys_withBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v3 objectForKey:{v9, v13}];
        if (v10)
        {
          v11 = (*(*(a1 + 40) + 16))();
          [v3 setObject:v11 forKey:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__99;
  v15 = __Block_byref_object_dispose__99;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __32__FCKeyValueStore_objectForKey___block_invoke;
  v8[3] = &unk_1E7C3C158;
  v10 = &v11;
  v5 = v4;
  v9 = v5;
  [(FCKeyValueStore *)self _readObjectsByKey:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __32__FCKeyValueStore_objectForKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

- (void)_readObjectsByKey:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    if ((*(a1 + 80) & 8) != 0)
    {
      [*(a1 + 64) lock];
    }

    v3[2](v3, *(a1 + 56));
    if ((*(a1 + 80) & 8) != 0)
    {
      [*(a1 + 64) unlock];
    }
  }
}

- (id)objectsForKeys:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__99;
  v15 = __Block_byref_object_dispose__99;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __34__FCKeyValueStore_objectsForKeys___block_invoke;
  v8[3] = &unk_1E7C3C158;
  v10 = &v11;
  v5 = v4;
  v9 = v5;
  [(FCKeyValueStore *)self _readObjectsByKey:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __34__FCKeyValueStore_objectsForKeys___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 fc_subdictionaryForKeys:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

- (BOOL)BOOLValueForKey:(id)a3
{
  v3 = [(FCKeyValueStore *)self objectForKey:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)allObjects
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__99;
  v9 = __Block_byref_object_dispose__99;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__FCKeyValueStore_allObjects__block_invoke;
  v4[3] = &unk_1E7C47FE0;
  v4[4] = &v5;
  [(FCKeyValueStore *)self _readObjectsByKey:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __29__FCKeyValueStore_allObjects__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 allValues];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

- (id)keysOfEntriesPassingTest:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__99;
  v15 = __Block_byref_object_dispose__99;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__FCKeyValueStore_keysOfEntriesPassingTest___block_invoke;
  v8[3] = &unk_1E7C48008;
  v10 = &v11;
  v5 = v4;
  v9 = v5;
  [(FCKeyValueStore *)self _readObjectsByKey:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __44__FCKeyValueStore_keysOfEntriesPassingTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 keysOfEntriesPassingTest:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

- (void)addAllEntriesToDictionary:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__FCKeyValueStore_addAllEntriesToDictionary___block_invoke;
  v6[3] = &unk_1E7C48030;
  v7 = v4;
  v5 = v4;
  [(FCKeyValueStore *)self _readObjectsByKey:v6];
}

- (void)enumerateKeysAndObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__FCKeyValueStore_enumerateKeysAndObjectsUsingBlock___block_invoke;
  v6[3] = &unk_1E7C38D88;
  v7 = v4;
  v5 = v4;
  [(FCKeyValueStore *)self _readObjectsByKey:v6];
}

- (void)enumerateKeysAndObjectsForKeys:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__FCKeyValueStore_enumerateKeysAndObjectsForKeys_usingBlock___block_invoke;
  v10[3] = &unk_1E7C48058;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(FCKeyValueStore *)self _readObjectsByKey:v10];
}

void __61__FCKeyValueStore_enumerateKeysAndObjectsForKeys_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__FCKeyValueStore_enumerateKeysAndObjectsForKeys_usingBlock___block_invoke_2;
  v4[3] = &unk_1E7C44740;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [a2 enumerateKeysAndObjectsUsingBlock:v4];
}

void __61__FCKeyValueStore_enumerateKeysAndObjectsForKeys_usingBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsObject:v6])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)saveWithCompletionHandler:(id)a3
{
  v4 = a3;
  objc_opt_class();
  objc_opt_self();
  v5 = FCPersistenceQueue();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__FCKeyValueStore_saveWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7C37BC0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __45__FCKeyValueStore_saveWithCompletionHandler___block_invoke(uint64_t a1)
{
  [(FCKeyValueStore *)*(a1 + 32) _save];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)save
{
  objc_opt_class();
  objc_opt_self();
  v3 = FCPersistenceQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__FCKeyValueStore_save__block_invoke;
  block[3] = &unk_1E7C36EA0;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)setJSONEncodingHandlersWithObjectHandler:(id)a3 arrayObjectHandler:(id)a4 dictionaryKeyHandler:(id)a5 dictionaryValueHandler:(id)a6
{
  if (self)
  {
    newValue = a6;
    v10 = a5;
    v11 = a4;
    objc_setProperty_nonatomic_copy(self, v12, a3, 112);
    objc_setProperty_nonatomic_copy(self, v13, v11, 120);

    objc_setProperty_nonatomic_copy(self, v14, v10, 128);
    objc_setProperty_nonatomic_copy(self, v15, newValue, 136);
  }
}

- (void)_clearStore
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  [v2 removeItemAtURL:*(a1 + 48) error:0];

  *(a1 + 40) = 0;
}

- (id)jsonEncodableObject
{
  p_isa = &self->super.isa;
  if (self)
  {
    [(NFLocking *)self->_lock lock];
    v3 = [p_isa[7] copy];
    [p_isa[8] unlock];
    p_isa = [(FCKeyValueStore *)p_isa fc_jsonEncodableDictionaryWithDictionary:v3];
  }

  return p_isa;
}

- (id)fc_jsonEncodableDictionaryWithDictionary:(uint64_t)a1
{
  v4 = *(a1 + 112);
  v3 = *(a1 + 120);
  v5 = *(a1 + 136);
  v6 = *(a1 + 128);
  v7 = v3;
  v8 = v4;
  v9 = [a2 fc_jsonEncodableDictionaryWithObjectHandler:v8 arrayObjectHandler:v7 dictionaryKeyHandler:v6 dictionaryValueHandler:v5];

  return v9;
}

@end