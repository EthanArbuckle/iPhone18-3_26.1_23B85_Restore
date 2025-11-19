@interface NUSchemaRegistry
+ (id)sharedRegistry;
- (BOOL)_registerSchema:(id)a3 error:(id *)a4;
- (BOOL)_registerVersion:(id)a3 withOriginalIdentifier:(id)a4 error:(id *)a5;
- (BOOL)registerSchema:(id)a3 error:(id *)a4;
- (BOOL)registerSchemas:(id)a3 error:(id *)a4;
- (NUSchemaRegistry)init;
- (id)_allVersionsWithOriginalIdentifier:(id)a3 upToVersion:(id)a4;
- (id)_latestVersionWithOriginalIdentifier:(id)a3;
- (id)latestVersionWithNamespace:(id)a3 name:(id)a4;
- (id)schemaWithIdentifier:(id)a3;
- (id)versionsCompatibleWithIdentifier:(id)a3;
- (void)_registerBuiltInSchemas;
@end

@implementation NUSchemaRegistry

- (id)_allVersionsWithOriginalIdentifier:(id)a3 upToVersion:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v12 = NUAssertLogger_20189();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != nil"];
      *buf = 138543362;
      v45 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_20189();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        v29 = [v27 callStackSymbols];
        v30 = [v29 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v26;
        v46 = 2114;
        v47 = v30;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSchemaRegistry _allVersionsWithOriginalIdentifier:upToVersion:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchemaRegistry.m", 291, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "identifier != nil");
  }

  v8 = v7;
  if (!v7)
  {
    v19 = NUAssertLogger_20189();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "version != nil"];
      *buf = 138543362;
      v45 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_20189();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v21)
    {
      if (v23)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        v38 = [v36 callStackSymbols];
        v39 = [v38 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v35;
        v46 = 2114;
        v47 = v39;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSchemaRegistry _allVersionsWithOriginalIdentifier:upToVersion:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchemaRegistry.m", 292, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "version != nil");
  }

  v9 = [(NSMutableDictionary *)self->_versions objectForKeyedSubscript:v6];
  v10 = [v9 subarrayWithRange:{0, objc_msgSend(v9, "indexOfObject:inSortedRange:options:usingComparator:", v8, 0, objc_msgSend(v9, "count"), 1024, &__block_literal_global_48_20203)}];

  return v10;
}

- (id)versionsCompatibleWithIdentifier:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v13 = NUAssertLogger_20189();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier"];
      *buf = 138543362;
      *&buf[4] = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_20189();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v21 = MEMORY[0x1E696AF00];
        v22 = v20;
        v23 = [v21 callStackSymbols];
        v24 = [v23 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v20;
        *&buf[12] = 2114;
        *&buf[14] = v24;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSchemaRegistry versionsCompatibleWithIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchemaRegistry.m", 274, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, "identifier");
  }

  v5 = v4;
  v6 = +[NUVersion versionZero];
  v7 = [v5 identifierWithVersion:v6];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v34 = __Block_byref_object_copy__20218;
  v35 = __Block_byref_object_dispose__20219;
  v36 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__NUSchemaRegistry_versionsCompatibleWithIdentifier___block_invoke;
  block[3] = &unk_1E810BA20;
  block[4] = self;
  v30 = v7;
  v31 = v5;
  v32 = buf;
  v9 = v5;
  v10 = v7;
  dispatch_sync(queue, block);
  v11 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);

  return v11;
}

void __53__NUSchemaRegistry_versionsCompatibleWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7 = [*(a1 + 48) version];
  v4 = [v2 _allVersionsWithOriginalIdentifier:v3 upToVersion:v7];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)_latestVersionWithOriginalIdentifier:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v9 = NUAssertLogger_20189();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != nil"];
      *buf = 138543362;
      v26 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_20189();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v16 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v17 = MEMORY[0x1E696AF00];
        v18 = v16;
        v19 = [v17 callStackSymbols];
        v20 = [v19 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v26 = v16;
        v27 = 2114;
        v28 = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v26 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSchemaRegistry _latestVersionWithOriginalIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchemaRegistry.m", 263, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "identifier != nil");
  }

  v5 = v4;
  v6 = [(NSMutableDictionary *)self->_versions objectForKeyedSubscript:v4];
  v7 = [v6 lastObject];

  return v7;
}

- (id)latestVersionWithNamespace:(id)a3 name:(id)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v16 = NUAssertLogger_20189();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "namespace != nil"];
      *buf = 138543362;
      *&buf[4] = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger_20189();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v31 = MEMORY[0x1E696AF00];
        v32 = v30;
        v33 = [v31 callStackSymbols];
        v34 = [v33 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v30;
        *&buf[12] = 2114;
        *&buf[14] = v34;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      v21 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSchemaRegistry latestVersionWithNamespace:name:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchemaRegistry.m", 245, @"Invalid parameter not satisfying: %s", v35, v36, v37, v38, "namespace != nil");
  }

  v8 = v7;
  if (!v7)
  {
    v23 = NUAssertLogger_20189();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "name != nil"];
      *buf = 138543362;
      *&buf[4] = v24;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = NUAssertLogger_20189();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (v25)
    {
      if (v27)
      {
        v39 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v40 = MEMORY[0x1E696AF00];
        v41 = v39;
        v42 = [v40 callStackSymbols];
        v43 = [v42 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v39;
        *&buf[12] = 2114;
        *&buf[14] = v43;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      v28 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [v28 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v29;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSchemaRegistry latestVersionWithNamespace:name:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchemaRegistry.m", 246, @"Invalid parameter not satisfying: %s", v44, v45, v46, v47, "name != nil");
  }

  v9 = [NUIdentifier alloc];
  v10 = +[NUVersion versionZero];
  v11 = [(NUIdentifier *)v9 initWithNamespace:v6 name:v8 version:v10];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v52 = __Block_byref_object_copy__20218;
  v53 = __Block_byref_object_dispose__20219;
  v54 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__NUSchemaRegistry_latestVersionWithNamespace_name___block_invoke;
  block[3] = &unk_1E810B500;
  v49 = v11;
  v50 = buf;
  block[4] = self;
  v13 = v11;
  dispatch_sync(queue, block);
  v14 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);

  return v14;
}

uint64_t __52__NUSchemaRegistry_latestVersionWithNamespace_name___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _latestVersionWithOriginalIdentifier:*(a1 + 40)];

  return MEMORY[0x1EEE66BB8]();
}

- (id)schemaWithIdentifier:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v9 = NUAssertLogger_20189();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != NULL"];
      *buf = 138543362;
      *&buf[4] = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_20189();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v16 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v17 = MEMORY[0x1E696AF00];
        v18 = v16;
        v19 = [v17 callStackSymbols];
        v20 = [v19 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v16;
        *&buf[12] = 2114;
        *&buf[14] = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSchemaRegistry schemaWithIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchemaRegistry.m", 226, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "identifier != NULL");
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v29 = __Block_byref_object_copy__20218;
  v30 = __Block_byref_object_dispose__20219;
  v31 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__NUSchemaRegistry_schemaWithIdentifier___block_invoke;
  block[3] = &unk_1E810B500;
  v26 = v4;
  v27 = buf;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = *(*&buf[8] + 40);

  _Block_object_dispose(buf, 8);

  return v7;
}

uint64_t __41__NUSchemaRegistry_schemaWithIdentifier___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _schemaWithIdentifier:*(a1 + 40)];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)registerSchemas:(id)a3 error:(id *)a4
{
  v86 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v35 = NUAssertLogger_20189();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "schemas != nil"];
      *buf = 138543362;
      v83 = v36;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v38 = NUAssertLogger_20189();
    v39 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v39)
      {
        v49 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v50 = MEMORY[0x1E696AF00];
        v51 = v49;
        v52 = [v50 callStackSymbols];
        v53 = [v52 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v83 = v49;
        v84 = 2114;
        v85 = v53;
        _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v39)
    {
      v40 = [MEMORY[0x1E696AF00] callStackSymbols];
      v41 = [v40 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v83 = v41;
      _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSchemaRegistry registerSchemas:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchemaRegistry.m", 153, @"Invalid parameter not satisfying: %s", v54, v55, v56, v57, "schemas != nil");
  }

  if (!a4)
  {
    v42 = NUAssertLogger_20189();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v83 = v43;
      _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v44 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v45 = NUAssertLogger_20189();
    v46 = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
    if (v44)
    {
      if (v46)
      {
        v58 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v59 = MEMORY[0x1E696AF00];
        v60 = v58;
        v61 = [v59 callStackSymbols];
        v62 = [v61 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v83 = v58;
        v84 = 2114;
        v85 = v62;
        _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v46)
    {
      v47 = [MEMORY[0x1E696AF00] callStackSymbols];
      v48 = [v47 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v83 = v48;
      _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSchemaRegistry registerSchemas:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchemaRegistry.m", 154, @"Invalid parameter not satisfying: %s", v63, v64, v65, v66, "error != NULL");
  }

  v6 = v5;
  v68 = a4;
  v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v76 objects:v81 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v77;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v77 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v76 + 1) + 8 * i);
        v16 = [v15 identifier];
        [v7 addObject:v16];

        v17 = [v15 identifier];
        [v8 setObject:v15 forKeyedSubscript:v17];

        v18 = [v15 schemaDependencies];
        v19 = [v15 identifier];
        [v9 setObject:v18 forKeyedSubscript:v19];
      }

      v12 = [v10 countByEnumeratingWithState:&v76 objects:v81 count:16];
    }

    while (v12);
  }

  v69 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
  if ([v7 count])
  {
    v20 = 0x1E695D000uLL;
    while (2)
    {
      v21 = [v7 anyObject];
      v22 = [objc_alloc(*(v20 + 4000)) initWithObject:v21];
      do
      {
        v23 = [v9 objectForKeyedSubscript:v21];
        v74[0] = MEMORY[0x1E69E9820];
        v74[1] = 3221225472;
        v74[2] = __42__NUSchemaRegistry_registerSchemas_error___block_invoke;
        v74[3] = &unk_1E810AC30;
        v24 = v7;
        v75 = v24;
        v25 = [v23 indexOfObjectPassingTest:v74];

        if (v25 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v69 addObject:v21];
          [v24 removeObject:v21];
          [v22 removeObject:v21];
          v26 = [v22 lastObject];

          v21 = v26;
        }

        else
        {
          v27 = [v9 objectForKeyedSubscript:v21];
          v28 = [v27 objectAtIndexedSubscript:v25];

          if ([v22 containsObject:v28])
          {
            *v68 = [NUError failureError:@"Cyclic schema dependency detected" object:v28];

            LOBYTE(v22) = 0;
            goto LABEL_30;
          }

          [v22 addObject:v28];
          v21 = v28;
        }
      }

      while ([v22 count]);

      v20 = 0x1E695D000;
      if ([v24 count])
      {
        continue;
      }

      break;
    }
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v28 = v69;
  v29 = [v28 countByEnumeratingWithState:&v70 objects:v80 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v71;
LABEL_21:
    v32 = 0;
    while (1)
    {
      if (*v71 != v31)
      {
        objc_enumerationMutation(v28);
      }

      v33 = [v8 objectForKeyedSubscript:*(*(&v70 + 1) + 8 * v32)];
      LODWORD(v22) = [(NUSchemaRegistry *)self registerSchema:v33 error:v68];

      if (!v22)
      {
        break;
      }

      if (v30 == ++v32)
      {
        v30 = [v28 countByEnumeratingWithState:&v70 objects:v80 count:16];
        LOBYTE(v22) = 1;
        if (v30)
        {
          goto LABEL_21;
        }

        break;
      }
    }
  }

  else
  {
    LOBYTE(v22) = 1;
  }

LABEL_30:

  return v22;
}

- (BOOL)_registerVersion:(id)a3 withOriginalIdentifier:(id)a4 error:(id *)a5
{
  v72 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v20 = NUAssertLogger_20189();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "version != nil"];
      *buf = 138543362;
      v69 = v21;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v23 = NUAssertLogger_20189();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v24)
      {
        v41 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v42 = MEMORY[0x1E696AF00];
        v43 = v41;
        v44 = [v42 callStackSymbols];
        v45 = [v44 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v69 = v41;
        v70 = 2114;
        v71 = v45;
        _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v24)
    {
      v25 = [MEMORY[0x1E696AF00] callStackSymbols];
      v26 = [v25 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v69 = v26;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSchemaRegistry _registerVersion:withOriginalIdentifier:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchemaRegistry.m", 112, @"Invalid parameter not satisfying: %s", v46, v47, v48, v49, "version != nil");
  }

  v10 = v9;
  if (!v9)
  {
    v27 = NUAssertLogger_20189();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != nil"];
      *buf = 138543362;
      v69 = v28;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v30 = NUAssertLogger_20189();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v31)
      {
        v50 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v51 = MEMORY[0x1E696AF00];
        v52 = v50;
        v53 = [v51 callStackSymbols];
        v54 = [v53 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v69 = v50;
        v70 = 2114;
        v71 = v54;
        _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v31)
    {
      v32 = [MEMORY[0x1E696AF00] callStackSymbols];
      v33 = [v32 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v69 = v33;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSchemaRegistry _registerVersion:withOriginalIdentifier:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchemaRegistry.m", 113, @"Invalid parameter not satisfying: %s", v55, v56, v57, v58, "identifier != nil");
  }

  if (!a5)
  {
    v34 = NUAssertLogger_20189();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v69 = v35;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v36 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v37 = NUAssertLogger_20189();
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
    if (v36)
    {
      if (v38)
      {
        v59 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v60 = MEMORY[0x1E696AF00];
        v61 = v59;
        v62 = [v60 callStackSymbols];
        v63 = [v62 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v69 = v59;
        v70 = 2114;
        v71 = v63;
        _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v38)
    {
      v39 = [MEMORY[0x1E696AF00] callStackSymbols];
      v40 = [v39 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v69 = v40;
      _os_log_error_impl(&dword_1C0184000, v37, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSchemaRegistry _registerVersion:withOriginalIdentifier:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchemaRegistry.m", 114, @"Invalid parameter not satisfying: %s", v64, v65, v66, v67, "error != nil");
  }

  v11 = [(NSMutableDictionary *)self->_versions objectForKeyedSubscript:v9];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 indexOfObject:v8 inSortedRange:0 options:objc_msgSend(v11 usingComparator:{"count"), 1024, &__block_literal_global_20264}];
    v14 = v13;
    if (v13)
    {
      v15 = [v12 objectAtIndexedSubscript:v13 - 1];
    }

    else
    {
      v15 = 0;
    }

    [v12 insertObject:v8 atIndex:v14];
    if ([v8 minor] <= 0)
    {
      goto LABEL_14;
    }

    if (v15)
    {
      v16 = [v15 major];
      if (v16 == [v8 major])
      {
        v17 = [v15 minor];
        if (v17 == [v8 minor] - 1)
        {
          goto LABEL_14;
        }
      }
    }

LABEL_15:
    [NUError missingError:@"Previous minor version is not registered" object:v8];
    *a5 = v18 = 0;
    goto LABEL_16;
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v12 addObject:v8];
  [(NSMutableDictionary *)self->_versions setObject:v12 forKeyedSubscript:v10];
  v15 = 0;
  if ([v8 minor] > 0)
  {
    goto LABEL_15;
  }

LABEL_14:
  v18 = 1;
LABEL_16:

  return v18;
}

- (BOOL)_registerSchema:(id)a3 error:(id *)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v16 = NUAssertLogger_20189();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "schema != nil"];
      *buf = 138543362;
      v50 = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger_20189();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v30 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v31 = MEMORY[0x1E696AF00];
        v32 = v30;
        v33 = [v31 callStackSymbols];
        v34 = [v33 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v30;
        v51 = 2114;
        v52 = v34;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      v21 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSchemaRegistry _registerSchema:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchemaRegistry.m", 84, @"Invalid parameter not satisfying: %s", v35, v36, v37, v38, "schema != nil");
  }

  if (!a4)
  {
    v23 = NUAssertLogger_20189();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v50 = v24;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = NUAssertLogger_20189();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (v25)
    {
      if (v27)
      {
        v39 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v40 = MEMORY[0x1E696AF00];
        v41 = v39;
        v42 = [v40 callStackSymbols];
        v43 = [v42 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v39;
        v51 = 2114;
        v52 = v43;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      v28 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [v28 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = v29;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSchemaRegistry _registerSchema:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchemaRegistry.m", 85, @"Invalid parameter not satisfying: %s", v44, v45, v46, v47, "error != NULL");
  }

  v7 = v6;
  v8 = [v6 identifier];
  v9 = [(NSMutableDictionary *)self->_schemas objectForKey:v8];

  if (v9)
  {
    [NUError duplicateError:@"Schema identifier already registered" object:v8];
    *a4 = LOBYTE(v10) = 0;
  }

  else
  {
    v11 = [v8 version];
    v12 = +[NUVersion versionZero];
    v13 = [v8 identifierWithVersion:v12];
    v48 = 0;
    v10 = [(NUSchemaRegistry *)self _registerVersion:v11 withOriginalIdentifier:v13 error:&v48];
    v14 = v48;

    if (v10)
    {
      [(NSMutableDictionary *)self->_schemas setObject:v7 forKey:v8];
    }

    else
    {
      *a4 = [NUError errorWithCode:1 reason:@"Failed to register schema version" object:v7 underlyingError:v14];
    }
  }

  return v10;
}

- (BOOL)registerSchema:(id)a3 error:(id *)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v15 = NUAssertLogger_20189();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "schema != nil"];
      *buf = 138543362;
      *&buf[4] = v16;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = NUAssertLogger_20189();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v30 = MEMORY[0x1E696AF00];
        v31 = v29;
        v32 = [v30 callStackSymbols];
        v33 = [v32 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v29;
        *&buf[12] = 2114;
        *&buf[14] = v33;
        _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      v20 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [v20 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v21;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSchemaRegistry registerSchema:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchemaRegistry.m", 61, @"Invalid parameter not satisfying: %s", v34, v35, v36, v37, "schema != nil");
  }

  if (!a4)
  {
    v22 = NUAssertLogger_20189();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v23;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger_20189();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (v24)
    {
      if (v26)
      {
        v38 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v39 = MEMORY[0x1E696AF00];
        v40 = v38;
        v41 = [v39 callStackSymbols];
        v42 = [v41 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v38;
        *&buf[12] = 2114;
        *&buf[14] = v42;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      v27 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [v27 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSchemaRegistry registerSchema:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchemaRegistry.m", 62, @"Invalid parameter not satisfying: %s", v43, v44, v45, v46, "error != NULL");
  }

  v7 = v6;
  v51 = 0;
  v8 = [v6 isValid:&v51];
  v9 = v51;
  if (v8)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v53 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__NUSchemaRegistry_registerSchema_error___block_invoke;
    block[3] = &unk_1E810ABE8;
    v49 = buf;
    block[4] = self;
    v48 = v7;
    v50 = a4;
    v11 = v9;
    dispatch_sync(queue, block);
    v12 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v13 = v51;
    *a4 = [NUError errorWithCode:2 reason:@"Schema is not valid" object:v7 underlyingError:v13];

    v12 = 0;
  }

  return v12 & 1;
}

uint64_t __41__NUSchemaRegistry_registerSchema_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _registerSchema:*(a1 + 40) error:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)_registerBuiltInSchemas
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = +[NUSourceSchema sharedSourceSchema];
  v22 = 0;
  v4 = [(NUSchemaRegistry *)self _registerSchema:v3 error:&v22];
  v5 = v22;

  if (!v4)
  {
    v6 = NUAssertLogger_20189();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register builtin schema, error: %@", v5];
      *buf = 138543362;
      v24 = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger_20189();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = MEMORY[0x1E696AF00];
        v15 = v13;
        v16 = [v14 callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v24 = v13;
        v25 = 2114;
        v26 = v17;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v24 = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUSchemaRegistry _registerBuiltInSchemas]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Schema/NUSchemaRegistry.m", 56, @"Failed to register builtin schema, error: %@", v18, v19, v20, v21, v5);
  }
}

- (NUSchemaRegistry)init
{
  v11.receiver = self;
  v11.super_class = NUSchemaRegistry;
  v2 = [(NUSchemaRegistry *)&v11 init];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("NUSchemaRegistry", v3);
  queue = v2->_queue;
  v2->_queue = v4;

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  schemas = v2->_schemas;
  v2->_schemas = v6;

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  versions = v2->_versions;
  v2->_versions = v8;

  [(NUSchemaRegistry *)v2 _registerBuiltInSchemas];
  return v2;
}

+ (id)sharedRegistry
{
  v2 = +[NUFactory sharedFactory];
  v3 = [v2 schemaRegistry];

  return v3;
}

@end