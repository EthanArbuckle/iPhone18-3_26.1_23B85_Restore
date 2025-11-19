@interface LNMetadataProvider
- (BOOL)enumerateActionsForBundleIdentifier:(id)a3 usingBlock:(id)a4 error:(id *)a5;
- (BOOL)enumerateEntitiesForBundleIdentifier:(id)a3 usingBlock:(id)a4 error:(id *)a5;
- (BOOL)enumerateEnumsForBundleIdentifier:(id)a3 usingBlock:(id)a4 error:(id *)a5;
- (BOOL)enumerateQueriesForBundleIdentifier:(id)a3 usingBlock:(id)a4 error:(id *)a5;
- (BOOL)registerBundleWithIdentifier:(id)a3 error:(id *)a4;
- (LNMetadataProvider)initWithOptions:(int64_t)a3;
- (_TtC12LinkServices25_LNMetadataProviderDirect)getDirectProviderWithError:(_TtC12LinkServices25_LNMetadataProviderDirect *)a1;
- (id)actionForBundleIdentifier:(id)a3 andActionIdentifier:(id)a4 error:(id *)a5;
- (id)actionIdentifiersForBundleIdentifier:(id)a3 error:(id *)a4;
- (id)actionsAndSystemProtocolDefaultsForBundleIdentifier:(id)a3 error:(id *)a4;
- (id)actionsConformingToSystemProtocol:(id)a3 withParametersOfTypes:(id)a4 bundleIdentifier:(id)a5 error:(id *)a6;
- (id)actionsConformingToSystemProtocols:(id)a3 logicalType:(unint64_t)a4 bundleIdentifier:(id)a5 error:(id *)a6;
- (id)actionsForBundleIdentifier:(id)a3 andActionIdentifier:(id)a4 error:(id *)a5;
- (id)actionsForBundleIdentifier:(id)a3 error:(id *)a4;
- (id)actionsForSchemaIdentifier:(id)a3 error:(id *)a4;
- (id)actionsWithError:(id *)a3;
- (id)actionsWithFullyQualifiedIdentifiers:(id)a3 error:(id *)a4;
- (id)appShortcutsProviderMangledTypeNameForBundleIdentifier:(id)a3 error:(id *)a4;
- (id)bundleRegistrationsWithError:(id *)a3;
- (id)bundlesWithError:(id *)a3;
- (id)entitiesForBundleIdentifier:(id)a3 error:(id *)a4;
- (id)entitiesForSchemaIdentifier:(id)a3 error:(id *)a4;
- (id)entitiesWithError:(id *)a3;
- (id)entityForBundleIdentifier:(id)a3 withEntityIdentifier:(id)a4 error:(id *)a5;
- (id)entityIdentifiersForBundleIdentifier:(id)a3 error:(id *)a4;
- (id)enumsForBundleIdentifier:(id)a3 error:(id *)a4;
- (id)enumsForSchemaIdentifier:(id)a3 error:(id *)a4;
- (id)enumsWithError:(id *)a3;
- (id)examplePhrasesForBundleIdentifier:(id)a3 error:(id *)a4;
- (id)getInterfaceWithSource:(uint64_t)a1;
- (id)getXPCProvider;
- (id)openActionsForTypeIdentifier:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5;
- (id)openCollectionActionsForEntityTypeIdentifier:(id)a3 capabilities:(int64_t)a4 bundleIdentifier:(id)a5 error:(id *)a6;
- (id)queriesForBundleIdentifier:(id)a3 ofType:(id)a4 error:(id *)a5;
- (id)queriesForSchemaIdentifier:(id)a3 error:(id *)a4;
- (id)queriesWithCapabilities:(unint64_t)a3 inputValueType:(id)a4 resultValueType:(id)a5 error:(id *)a6;
- (id)queriesWithError:(id *)a3;
- (id)queryForBundleIdentifier:(id)a3 ofType:(id)a4 error:(id *)a5;
- (id)suggestionPhrasesForQueries:(id)a3 error:(id *)a4;
- (int64_t)metadataVersionForBundleIdentifier:(id)a3 error:(id *)a4;
- (void)dealloc;
- (void)diagnoseBundleIdentifier:(id)a3 completionHandler:(id)a4;
- (void)registerBundleWithIdentifier:(id)a3 force:(BOOL)a4 reply:(id)a5;
- (void)resetWithReply:(id)a3;
- (void)scanBundlesWithReply:(id)a3;
- (void)unregisterBundleWithIdentifier:(id)a3 reply:(id)a4;
@end

@implementation LNMetadataProvider

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = LNMetadataProvider;
  [(LNMetadataProvider *)&v3 dealloc];
}

- (id)getXPCProvider
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    v3 = [[_LNMetadataProviderXPC alloc] initWithConnection:*(a1 + 40)];
    v4 = *(a1 + 24);
    *(a1 + 24) = v3;

    v1 = *(a1 + 24);
  }

  v5 = v1;

  return v5;
}

- (void)diagnoseBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LNMetadataProvider *)self getInterfaceWithSource:?];
  [v8 diagnoseBundleIdentifier:v7 completionHandler:v6];
}

- (id)getInterfaceWithSource:(uint64_t)a1
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __45__LNMetadataProvider_getInterfaceWithSource___block_invoke;
    v19[3] = &unk_1E74B2318;
    v19[4] = a1;
    v5 = _Block_copy(v19);
    if (a2 == 1)
    {
      v7 = *(a1 + 32);
      if (!v7)
      {
        v11 = [_TtC12LinkServices25_LNMetadataProviderDirect alloc];
        v12 = *(a1 + 40);
        v13 = *(a1 + 16);
        v20 = 0;
        v14 = [(_LNMetadataProviderDirect *)v11 initWithConnection:v12 options:v13 error:&v20];
        v15 = v20;
        v16 = *(a1 + 32);
        *(a1 + 32) = v14;

        if (v15)
        {
          v17 = getLNLogCategoryMetadata();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v22 = v15;
            _os_log_impl(&dword_19763D000, v17, OS_LOG_TYPE_ERROR, "Request for read access failed, falling back to XPC: %@", buf, 0xCu);
          }

          v18 = [(LNMetadataProvider *)a1 getXPCProvider];
        }

        else
        {
          v18 = *(a1 + 32);
        }

        v2 = v18;

        goto LABEL_12;
      }
    }

    else
    {
      if (a2)
      {
LABEL_12:
        v5[2](v5);

        goto LABEL_13;
      }

      if (!*(a1 + 32))
      {
        v8 = [(LNMetadataProvider *)a1 getXPCProvider];
        goto LABEL_11;
      }

      v6 = getLNLogCategoryMetadata();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19763D000, v6, OS_LOG_TYPE_INFO, "XPC provider requested, but there is already direct provider available", buf, 2u);
      }

      v7 = *(a1 + 32);
    }

    v8 = v7;
LABEL_11:
    v2 = v8;
    goto LABEL_12;
  }

  v2 = 0;
LABEL_13:
  v9 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)suggestionPhrasesForQueries:(id)a3 error:(id *)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__2676;
  v31 = __Block_byref_object_dispose__2677;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__2676;
  v25 = __Block_byref_object_dispose__2677;
  v26 = 0;
  v7 = _os_activity_create(&dword_19763D000, "appintents:fetch assistant suggestion phrases for bundle", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __56__LNMetadataProvider_suggestionPhrasesForQueries_error___block_invoke;
  v17[3] = &unk_1E74B1228;
  v19 = &v21;
  v17[4] = self;
  v8 = v6;
  v18 = v8;
  v20 = &v27;
  os_activity_apply(v7, v17);

  v9 = v22[5];
  if (v9)
  {
    v10 = v9;
  }

  else if (a4)
  {
    v13 = getLNLogCategoryMetadata();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *a4;
      *buf = 138412290;
      v34 = v14;
      _os_log_impl(&dword_19763D000, v13, OS_LOG_TYPE_DEFAULT, "error when fetching suggestion phrases - %@", buf, 0xCu);
    }

    v15 = v28[5];
    if (v15)
    {
      *a4 = v15;
    }

    else
    {
      v16 = NSErrorFromMetadataProviderError(9004);
      *a4 = v16;
    }
  }

  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

void __56__LNMetadataProvider_suggestionPhrasesForQueries_error___block_invoke(uint64_t *a1)
{
  v2 = [(LNMetadataProvider *)a1[4] getInterfaceWithSource:?];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 suggestionPhrasesForQueries:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)actionsWithError:(id *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__2676;
  v22 = __Block_byref_object_dispose__2677;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2676;
  v16 = __Block_byref_object_dispose__2677;
  v17 = 0;
  v5 = _os_activity_create(&dword_19763D000, "appintents:fetch actions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__LNMetadataProvider_actionsWithError___block_invoke;
  block[3] = &unk_1E74B0AD0;
  block[4] = self;
  block[5] = &v18;
  block[6] = &v12;
  os_activity_apply(v5, block);

  v6 = v19[5];
  if (v6)
  {
    v7 = v6;
  }

  else if (a3)
  {
    v9 = v13[5];
    if (v9)
    {
      *a3 = v9;
    }

    else
    {
      v10 = NSErrorFromMetadataProviderError(9004);
      *a3 = v10;
    }
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v6;
}

void __39__LNMetadataProvider_actionsWithError___block_invoke(uint64_t *a1)
{
  v2 = [(LNMetadataProvider *)a1[4] getInterfaceWithSource:?];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 actionsWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)entityForBundleIdentifier:(id)a3 withEntityIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__2676;
  v31 = __Block_byref_object_dispose__2677;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__2676;
  v25 = __Block_byref_object_dispose__2677;
  v26 = 0;
  v10 = _os_activity_create(&dword_19763D000, "appintents:fetch specific entity metadata", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__LNMetadataProvider_entityForBundleIdentifier_withEntityIdentifier_error___block_invoke;
  block[3] = &unk_1E74B11D8;
  v19 = &v21;
  block[4] = self;
  v11 = v8;
  v17 = v11;
  v12 = v9;
  v18 = v12;
  v20 = &v27;
  os_activity_apply(v10, block);

  v13 = v22[5];
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    *a5 = v28[5];
  }

  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);

  return v13;
}

void __75__LNMetadataProvider_entityForBundleIdentifier_withEntityIdentifier_error___block_invoke(uint64_t *a1)
{
  v2 = [(LNMetadataProvider *)a1[4] getInterfaceWithSource:?];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v2 entityForBundleIdentifier:v3 withEntityIdentifier:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(a1[7] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)entitiesForBundleIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2676;
  v28 = __Block_byref_object_dispose__2677;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__2676;
  v22 = __Block_byref_object_dispose__2677;
  v23 = 0;
  v7 = _os_activity_create(&dword_19763D000, "appintents:fetch entities for bundle", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__LNMetadataProvider_entitiesForBundleIdentifier_error___block_invoke;
  v14[3] = &unk_1E74B1228;
  v16 = &v18;
  v14[4] = self;
  v8 = v6;
  v15 = v8;
  v17 = &v24;
  os_activity_apply(v7, v14);

  v9 = v19[5];
  if (v9)
  {
    v10 = v9;
  }

  else if (a4)
  {
    v12 = v25[5];
    if (v12)
    {
      *a4 = v12;
    }

    else
    {
      v13 = NSErrorFromMetadataProviderError(9004);
      *a4 = v13;
    }
  }

  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v9;
}

void __56__LNMetadataProvider_entitiesForBundleIdentifier_error___block_invoke(uint64_t *a1)
{
  v2 = [(LNMetadataProvider *)a1[4] getInterfaceWithSource:?];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 entitiesForBundleIdentifier:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)entitiesWithError:(id *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__2676;
  v22 = __Block_byref_object_dispose__2677;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2676;
  v16 = __Block_byref_object_dispose__2677;
  v17 = 0;
  v5 = _os_activity_create(&dword_19763D000, "appintents:fetch entites", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__LNMetadataProvider_entitiesWithError___block_invoke;
  block[3] = &unk_1E74B0AD0;
  block[4] = self;
  block[5] = &v12;
  block[6] = &v18;
  os_activity_apply(v5, block);

  v6 = v13[5];
  if (v6)
  {
    v7 = v6;
  }

  else if (a3)
  {
    v9 = v19[5];
    if (v9)
    {
      *a3 = v9;
    }

    else
    {
      v10 = NSErrorFromMetadataProviderError(9004);
      *a3 = v10;
    }
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v6;
}

void __40__LNMetadataProvider_entitiesWithError___block_invoke(uint64_t *a1)
{
  v2 = [(LNMetadataProvider *)a1[4] getInterfaceWithSource:?];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 entitiesWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)enumsForBundleIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2676;
  v28 = __Block_byref_object_dispose__2677;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__2676;
  v22 = __Block_byref_object_dispose__2677;
  v23 = 0;
  v7 = _os_activity_create(&dword_19763D000, "appintents:fetch enums for bundle", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__LNMetadataProvider_enumsForBundleIdentifier_error___block_invoke;
  v14[3] = &unk_1E74B1228;
  v16 = &v18;
  v14[4] = self;
  v8 = v6;
  v15 = v8;
  v17 = &v24;
  os_activity_apply(v7, v14);

  v9 = v19[5];
  if (v9)
  {
    v10 = v9;
  }

  else if (a4)
  {
    v12 = v25[5];
    if (v12)
    {
      *a4 = v12;
    }

    else
    {
      v13 = NSErrorFromMetadataProviderError(9004);
      *a4 = v13;
    }
  }

  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v9;
}

void __53__LNMetadataProvider_enumsForBundleIdentifier_error___block_invoke(uint64_t *a1)
{
  v2 = [(LNMetadataProvider *)a1[4] getInterfaceWithSource:?];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 enumsForBundleIdentifier:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)enumsWithError:(id *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__2676;
  v22 = __Block_byref_object_dispose__2677;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2676;
  v16 = __Block_byref_object_dispose__2677;
  v17 = 0;
  v5 = _os_activity_create(&dword_19763D000, "appintents:fetch enums", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__LNMetadataProvider_enumsWithError___block_invoke;
  block[3] = &unk_1E74B0AD0;
  block[4] = self;
  block[5] = &v12;
  block[6] = &v18;
  os_activity_apply(v5, block);

  v6 = v13[5];
  if (v6)
  {
    v7 = v6;
  }

  else if (a3)
  {
    v9 = v19[5];
    if (v9)
    {
      *a3 = v9;
    }

    else
    {
      v10 = NSErrorFromMetadataProviderError(9004);
      *a3 = v10;
    }
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v6;
}

void __37__LNMetadataProvider_enumsWithError___block_invoke(uint64_t *a1)
{
  v2 = [(LNMetadataProvider *)a1[4] getInterfaceWithSource:?];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 enumsWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)queriesWithCapabilities:(unint64_t)a3 inputValueType:(id)a4 resultValueType:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__2676;
  v36 = __Block_byref_object_dispose__2677;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__2676;
  v30 = __Block_byref_object_dispose__2677;
  v31 = 0;
  v12 = _os_activity_create(&dword_19763D000, "appintents:fetch queries for capabilities and input/result value types", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __83__LNMetadataProvider_queriesWithCapabilities_inputValueType_resultValueType_error___block_invoke;
  v20[3] = &unk_1E74B0A58;
  v23 = &v26;
  v20[4] = self;
  v25 = a3;
  v13 = v10;
  v21 = v13;
  v14 = v11;
  v22 = v14;
  v24 = &v32;
  os_activity_apply(v12, v20);

  v15 = v27[5];
  if (v15)
  {
    v16 = v15;
  }

  else if (a6)
  {
    v18 = v33[5];
    if (v18)
    {
      *a6 = v18;
    }

    else
    {
      v19 = NSErrorFromMetadataProviderError(9004);
      *a6 = v19;
    }
  }

  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);

  return v15;
}

void __83__LNMetadataProvider_queriesWithCapabilities_inputValueType_resultValueType_error___block_invoke(uint64_t *a1)
{
  v2 = [(LNMetadataProvider *)a1[4] getInterfaceWithSource:?];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[9];
  v6 = *(a1[8] + 8);
  obj = *(v6 + 40);
  v7 = [v2 queriesWithCapabilities:v5 inputValueType:v3 resultValueType:v4 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (id)queriesForBundleIdentifier:(id)a3 ofType:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__2676;
  v33 = __Block_byref_object_dispose__2677;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__2676;
  v27 = __Block_byref_object_dispose__2677;
  v28 = 0;
  v10 = _os_activity_create(&dword_19763D000, "appintents:fetch queries for bundle", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__LNMetadataProvider_queriesForBundleIdentifier_ofType_error___block_invoke;
  block[3] = &unk_1E74B11D8;
  v21 = &v23;
  block[4] = self;
  v11 = v8;
  v19 = v11;
  v12 = v9;
  v20 = v12;
  v22 = &v29;
  os_activity_apply(v10, block);

  v13 = v24[5];
  if (v13)
  {
    v14 = v13;
  }

  else if (a5)
  {
    v16 = v30[5];
    if (v16)
    {
      *a5 = v16;
    }

    else
    {
      v17 = NSErrorFromMetadataProviderError(9004);
      *a5 = v17;
    }
  }

  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v29, 8);

  return v13;
}

void __62__LNMetadataProvider_queriesForBundleIdentifier_ofType_error___block_invoke(uint64_t *a1)
{
  v2 = [(LNMetadataProvider *)a1[4] getInterfaceWithSource:?];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v2 queriesForBundleIdentifier:v3 ofType:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(a1[7] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)queriesWithError:(id *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__2676;
  v22 = __Block_byref_object_dispose__2677;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2676;
  v16 = __Block_byref_object_dispose__2677;
  v17 = 0;
  v5 = _os_activity_create(&dword_19763D000, "appintents:fetch queries", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__LNMetadataProvider_queriesWithError___block_invoke;
  block[3] = &unk_1E74B0AD0;
  block[4] = self;
  block[5] = &v12;
  block[6] = &v18;
  os_activity_apply(v5, block);

  v6 = v13[5];
  if (v6)
  {
    v7 = v6;
  }

  else if (a3)
  {
    v9 = v19[5];
    if (v9)
    {
      *a3 = v9;
    }

    else
    {
      v10 = NSErrorFromMetadataProviderError(9004);
      *a3 = v10;
    }
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v6;
}

void __39__LNMetadataProvider_queriesWithError___block_invoke(uint64_t *a1)
{
  v2 = [(LNMetadataProvider *)a1[4] getInterfaceWithSource:?];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 queriesWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)actionsForBundleIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2676;
  v28 = __Block_byref_object_dispose__2677;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__2676;
  v22 = __Block_byref_object_dispose__2677;
  v23 = 0;
  v7 = _os_activity_create(&dword_19763D000, "appintents:fetch actions for bundle", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__LNMetadataProvider_actionsForBundleIdentifier_error___block_invoke;
  v14[3] = &unk_1E74B1228;
  v16 = &v18;
  v14[4] = self;
  v8 = v6;
  v15 = v8;
  v17 = &v24;
  os_activity_apply(v7, v14);

  v9 = v19[5];
  if (v9)
  {
    v10 = v9;
  }

  else if (a4)
  {
    v12 = v25[5];
    if (v12)
    {
      *a4 = v12;
    }

    else
    {
      v13 = NSErrorFromMetadataProviderError(9004);
      *a4 = v13;
    }
  }

  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v9;
}

void __55__LNMetadataProvider_actionsForBundleIdentifier_error___block_invoke(uint64_t *a1)
{
  v2 = [(LNMetadataProvider *)a1[4] getInterfaceWithSource:?];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 actionsForBundleIdentifier:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)examplePhrasesForBundleIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2676;
  v28 = __Block_byref_object_dispose__2677;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__2676;
  v22 = __Block_byref_object_dispose__2677;
  v23 = 0;
  v7 = _os_activity_create(&dword_19763D000, "appintents:fetch example phrases for bundle", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__LNMetadataProvider_examplePhrasesForBundleIdentifier_error___block_invoke;
  v14[3] = &unk_1E74B1228;
  v16 = &v18;
  v14[4] = self;
  v8 = v6;
  v15 = v8;
  v17 = &v24;
  os_activity_apply(v7, v14);

  v9 = v19[5];
  if (v9)
  {
    v10 = v9;
  }

  else if (a4)
  {
    v12 = v25[5];
    if (v12)
    {
      *a4 = v12;
    }

    else
    {
      v13 = NSErrorFromMetadataProviderError(9004);
      *a4 = v13;
    }
  }

  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v9;
}

void __62__LNMetadataProvider_examplePhrasesForBundleIdentifier_error___block_invoke(uint64_t *a1)
{
  v2 = [(LNMetadataProvider *)a1[4] getInterfaceWithSource:?];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 examplePhrasesForBundleIdentifier:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)unregisterBundleWithIdentifier:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_19763D000, "appintents:unregister bundle", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__LNMetadataProvider_unregisterBundleWithIdentifier_reply___block_invoke;
  block[3] = &unk_1E74B2580;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  os_activity_apply(v8, block);
}

void __59__LNMetadataProvider_unregisterBundleWithIdentifier_reply___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__LNMetadataProvider_unregisterBundleWithIdentifier_reply___block_invoke_2;
  v4[3] = &unk_1E74B2848;
  v5 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 unregisterBundleWithIdentifier:*(a1 + 40) reply:*(a1 + 48)];
}

- (void)scanBundlesWithReply:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_19763D000, "appintents:scan bundles", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__LNMetadataProvider_scanBundlesWithReply___block_invoke;
  v7[3] = &unk_1E74B1930;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  os_activity_apply(v5, v7);
}

void __43__LNMetadataProvider_scanBundlesWithReply___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__LNMetadataProvider_scanBundlesWithReply___block_invoke_2;
  v4[3] = &unk_1E74B2848;
  v5 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 scanBundlesWithReply:*(a1 + 40)];
}

- (void)resetWithReply:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_19763D000, "appintents:reset metadata", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__LNMetadataProvider_resetWithReply___block_invoke;
  v7[3] = &unk_1E74B1930;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  os_activity_apply(v5, v7);
}

void __37__LNMetadataProvider_resetWithReply___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__LNMetadataProvider_resetWithReply___block_invoke_2;
  v4[3] = &unk_1E74B2848;
  v5 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 resetWithReply:*(a1 + 40)];
}

- (void)registerBundleWithIdentifier:(id)a3 force:(BOOL)a4 reply:(id)a5
{
  v9 = 0;
  v7 = a5;
  [(LNMetadataProvider *)self registerBundleWithIdentifier:a3 error:&v9];
  v8 = v9;
  v7[2](v7, v8);
}

- (BOOL)registerBundleWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__2676;
  v17 = __Block_byref_object_dispose__2677;
  v18 = 0;
  v7 = _os_activity_create(&dword_19763D000, "appintents:register bundle", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__LNMetadataProvider_registerBundleWithIdentifier_error___block_invoke;
  block[3] = &unk_1E74B1C40;
  block[4] = self;
  v11 = v6;
  v12 = &v13;
  v8 = v6;
  os_activity_apply(v7, block);

  *a4 = v14[5];
  LOBYTE(a4) = v14[5] == 0;
  _Block_object_dispose(&v13, 8);

  return a4;
}

void __57__LNMetadataProvider_registerBundleWithIdentifier_error___block_invoke(void *a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2676;
  v11 = __Block_byref_object_dispose__2677;
  v12 = 0;
  v2 = *(a1[4] + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__LNMetadataProvider_registerBundleWithIdentifier_error___block_invoke_2;
  v6[3] = &unk_1E74B2658;
  v6[4] = &v7;
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v6];
  v4 = a1[5];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__LNMetadataProvider_registerBundleWithIdentifier_error___block_invoke_3;
  v5[3] = &unk_1E74B2658;
  v5[4] = &v7;
  [v3 registerBundleWithIdentifier:v4 force:1 reply:v5];

  objc_storeStrong((*(a1[6] + 8) + 40), v8[5]);
  _Block_object_dispose(&v7, 8);
}

- (id)appShortcutsProviderMangledTypeNameForBundleIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__2676;
  v26 = __Block_byref_object_dispose__2677;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__2676;
  v20 = __Block_byref_object_dispose__2677;
  v21 = 0;
  v7 = _os_activity_create(&dword_19763D000, "appintents:fetch app shortcuts provider mangled type name", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __83__LNMetadataProvider_appShortcutsProviderMangledTypeNameForBundleIdentifier_error___block_invoke;
  v12[3] = &unk_1E74B1228;
  v14 = &v16;
  v12[4] = self;
  v8 = v6;
  v13 = v8;
  v15 = &v22;
  os_activity_apply(v7, v12);

  if (a4)
  {
    v9 = v23[5];
    if (v9)
    {
      *a4 = v9;
    }
  }

  v10 = v17[5];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v10;
}

void __83__LNMetadataProvider_appShortcutsProviderMangledTypeNameForBundleIdentifier_error___block_invoke(uint64_t *a1)
{
  v2 = [(LNMetadataProvider *)a1[4] getInterfaceWithSource:?];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 appShortcutsProviderMangledTypeNameForBundleIdentifier:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (int64_t)metadataVersionForBundleIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2676;
  v24 = __Block_byref_object_dispose__2677;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v7 = _os_activity_create(&dword_19763D000, "appintents:fetch metadata version", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__LNMetadataProvider_metadataVersionForBundleIdentifier_error___block_invoke;
  v12[3] = &unk_1E74B1228;
  v14 = &v16;
  v12[4] = self;
  v8 = v6;
  v13 = v8;
  v15 = &v20;
  os_activity_apply(v7, v12);

  if (a4)
  {
    v9 = v21[5];
    if (v9)
    {
      *a4 = v9;
    }
  }

  v10 = v17[3];
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  return v10;
}

void __63__LNMetadataProvider_metadataVersionForBundleIdentifier_error___block_invoke(uint64_t *a1)
{
  v2 = [(LNMetadataProvider *)a1[4] getInterfaceWithSource:?];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 metadataVersionForBundleIdentifier:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

- (id)entityIdentifiersForBundleIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2676;
  v28 = __Block_byref_object_dispose__2677;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__2676;
  v22 = __Block_byref_object_dispose__2677;
  v23 = 0;
  v7 = _os_activity_create(&dword_19763D000, "appintents:fetch action identifiers for bundle", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__LNMetadataProvider_entityIdentifiersForBundleIdentifier_error___block_invoke;
  v14[3] = &unk_1E74B1228;
  v16 = &v18;
  v14[4] = self;
  v8 = v6;
  v15 = v8;
  v17 = &v24;
  os_activity_apply(v7, v14);

  v9 = v19[5];
  if (v9)
  {
    v10 = v9;
  }

  else if (a4)
  {
    v12 = v25[5];
    if (v12)
    {
      *a4 = v12;
    }

    else
    {
      v13 = NSErrorFromMetadataProviderError(9004);
      *a4 = v13;
    }
  }

  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v9;
}

void __65__LNMetadataProvider_entityIdentifiersForBundleIdentifier_error___block_invoke(uint64_t *a1)
{
  v2 = [(LNMetadataProvider *)a1[4] getInterfaceWithSource:?];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 entityIdentifiersForBundleIdentifier:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)bundleRegistrationsWithError:(id *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__2676;
  v22 = __Block_byref_object_dispose__2677;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2676;
  v16 = __Block_byref_object_dispose__2677;
  v17 = 0;
  v5 = _os_activity_create(&dword_19763D000, "appintents:fetch bundle registrations", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__LNMetadataProvider_bundleRegistrationsWithError___block_invoke;
  block[3] = &unk_1E74B0AD0;
  block[4] = self;
  block[5] = &v12;
  block[6] = &v18;
  os_activity_apply(v5, block);

  v6 = v13[5];
  if (v6)
  {
    v7 = v6;
  }

  else if (a3)
  {
    v9 = v19[5];
    if (v9)
    {
      *a3 = v9;
    }

    else
    {
      v10 = NSErrorFromMetadataProviderError(9004);
      *a3 = v10;
    }
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v6;
}

void __51__LNMetadataProvider_bundleRegistrationsWithError___block_invoke(uint64_t *a1)
{
  v2 = [(LNMetadataProvider *)a1[4] getInterfaceWithSource:?];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 bundleRegistrationsWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)bundlesWithError:(id *)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__2676;
  v22 = __Block_byref_object_dispose__2677;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2676;
  v16 = __Block_byref_object_dispose__2677;
  v17 = 0;
  v5 = _os_activity_create(&dword_19763D000, "appintents:fetch bundles", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__LNMetadataProvider_bundlesWithError___block_invoke;
  block[3] = &unk_1E74B0AD0;
  block[4] = self;
  block[5] = &v12;
  block[6] = &v18;
  os_activity_apply(v5, block);

  v6 = v13[5];
  if (v6)
  {
    v7 = v6;
  }

  else if (a3)
  {
    v9 = v19[5];
    if (v9)
    {
      *a3 = v9;
    }

    else
    {
      v10 = NSErrorFromMetadataProviderError(9004);
      *a3 = v10;
    }
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v6;
}

void __39__LNMetadataProvider_bundlesWithError___block_invoke(uint64_t *a1)
{
  v2 = [(LNMetadataProvider *)a1[4] getInterfaceWithSource:?];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 bundlesWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)openCollectionActionsForEntityTypeIdentifier:(id)a3 capabilities:(int64_t)a4 bundleIdentifier:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a3;
  v12 = [(LNMetadataProvider *)self getInterfaceWithSource:?];
  v18 = 0;
  v13 = [v12 openCollectionActionsForEntityTypeIdentifier:v11 capabilities:a4 bundleIdentifier:v10 error:&v18];

  v14 = v18;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v16 = v14;
    *a6 = v14;
  }

  return v13;
}

- (id)openActionsForTypeIdentifier:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(LNMetadataProvider *)self getInterfaceWithSource:?];
  v16 = 0;
  v11 = [v10 openActionsForTypeIdentifier:v9 bundleIdentifier:v8 error:&v16];

  v12 = v16;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v14 = v12;
    *a5 = v12;
  }

  return v11;
}

- (id)actionsWithFullyQualifiedIdentifiers:(id)a3 error:(id *)a4
{
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__2676;
  v30 = __Block_byref_object_dispose__2677;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2676;
  v24 = __Block_byref_object_dispose__2677;
  v25 = 0;
  v7 = [v6 count] != 1;
  v8 = _os_activity_create(&dword_19763D000, "appintents:fetch fully qualified actions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__LNMetadataProvider_actionsWithFullyQualifiedIdentifiers_error___block_invoke;
  block[3] = &unk_1E74B0AA8;
  v17 = &v20;
  block[4] = self;
  v19 = v7;
  v9 = v6;
  v16 = v9;
  v18 = &v26;
  os_activity_apply(v8, block);

  v10 = v21[5];
  if (v10)
  {
    v11 = v10;
  }

  else if (a4)
  {
    v13 = v27[5];
    if (v13)
    {
      *a4 = v13;
    }

    else
    {
      v14 = NSErrorFromMetadataProviderError(9004);
      *a4 = v14;
    }
  }

  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);

  return v10;
}

void __65__LNMetadataProvider_actionsWithFullyQualifiedIdentifiers_error___block_invoke(uint64_t *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [(LNMetadataProvider *)a1[4] getInterfaceWithSource:?];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 actionsWithFullyQualifiedIdentifiers:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = getLNLogCategoryMetadata();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = a1[5];
    v10 = *(*(a1[6] + 8) + 40);
    *buf = 138543618;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&dword_19763D000, v8, OS_LOG_TYPE_INFO, "Client requested %{public}@, got %{public}@", buf, 0x16u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)actionForBundleIdentifier:(id)a3 andActionIdentifier:(id)a4 error:(id *)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__2676;
  v35 = __Block_byref_object_dispose__2677;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__2676;
  v29 = __Block_byref_object_dispose__2677;
  v30 = 0;
  v10 = _os_activity_create(&dword_19763D000, "appintents:fetch action for bundle", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__LNMetadataProvider_actionForBundleIdentifier_andActionIdentifier_error___block_invoke;
  block[3] = &unk_1E74B11D8;
  v23 = &v25;
  block[4] = self;
  v11 = v8;
  v21 = v11;
  v12 = v9;
  v22 = v12;
  v24 = &v31;
  os_activity_apply(v10, block);

  v13 = v26[5];
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    if (!v32[5])
    {
      v17 = getLNLogCategoryMetadata();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v38 = v11;
        v39 = 2114;
        v40 = v12;
        _os_log_impl(&dword_19763D000, v17, OS_LOG_TYPE_DEFAULT, "Metadata not found for %{public}@:%{public}@", buf, 0x16u);
      }
    }

    if (a5)
    {
      v18 = v32[5];
      if (v18)
      {
        *a5 = v18;
      }

      else
      {
        v19 = NSErrorFromMetadataProviderError(9004);
        *a5 = v19;
      }
    }
  }

  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

void __74__LNMetadataProvider_actionForBundleIdentifier_andActionIdentifier_error___block_invoke(uint64_t *a1)
{
  v2 = [(LNMetadataProvider *)a1[4] getInterfaceWithSource:?];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v2 actionForBundleIdentifier:v3 andActionIdentifier:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(a1[7] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)actionsForBundleIdentifier:(id)a3 andActionIdentifier:(id)a4 error:(id *)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__2676;
  v35 = __Block_byref_object_dispose__2677;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__2676;
  v29 = __Block_byref_object_dispose__2677;
  v30 = 0;
  v10 = _os_activity_create(&dword_19763D000, "appintents:fetch actions for bundle and action", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__LNMetadataProvider_actionsForBundleIdentifier_andActionIdentifier_error___block_invoke;
  block[3] = &unk_1E74B11D8;
  v23 = &v25;
  block[4] = self;
  v11 = v8;
  v21 = v11;
  v12 = v9;
  v22 = v12;
  v24 = &v31;
  os_activity_apply(v10, block);

  v13 = v26[5];
  if (v13)
  {
    if (![v13 count])
    {
      v14 = getLNLogCategoryMetadata();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v38 = v11;
        v39 = 2114;
        v40 = v12;
        _os_log_impl(&dword_19763D000, v14, OS_LOG_TYPE_DEFAULT, "Metadata not found for %{public}@:%{public}@", buf, 0x16u);
      }
    }

    v15 = v26[5];
  }

  else
  {
    if (a5)
    {
      v16 = v32[5];
      if (v16)
      {
        v15 = 0;
        *a5 = v16;
        goto LABEL_12;
      }

      v17 = NSErrorFromMetadataProviderError(9004);
      *a5 = v17;
    }

    v15 = 0;
  }

LABEL_12:
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
  v18 = *MEMORY[0x1E69E9840];

  return v15;
}

void __75__LNMetadataProvider_actionsForBundleIdentifier_andActionIdentifier_error___block_invoke(uint64_t *a1)
{
  v2 = [(LNMetadataProvider *)a1[4] getInterfaceWithSource:?];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v2 actionsForBundleIdentifier:v3 andActionIdentifier:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(a1[7] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)actionIdentifiersForBundleIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2676;
  v28 = __Block_byref_object_dispose__2677;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__2676;
  v22 = __Block_byref_object_dispose__2677;
  v23 = 0;
  v7 = _os_activity_create(&dword_19763D000, "appintents:fetch action identifiers for bundle", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__LNMetadataProvider_actionIdentifiersForBundleIdentifier_error___block_invoke;
  v14[3] = &unk_1E74B1228;
  v16 = &v18;
  v14[4] = self;
  v8 = v6;
  v15 = v8;
  v17 = &v24;
  os_activity_apply(v7, v14);

  v9 = v19[5];
  if (v9)
  {
    v10 = v9;
  }

  else if (a4)
  {
    v12 = v25[5];
    if (v12)
    {
      *a4 = v12;
    }

    else
    {
      v13 = NSErrorFromMetadataProviderError(9004);
      *a4 = v13;
    }
  }

  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v9;
}

void __65__LNMetadataProvider_actionIdentifiersForBundleIdentifier_error___block_invoke(uint64_t *a1)
{
  v2 = [(LNMetadataProvider *)a1[4] getInterfaceWithSource:?];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 actionIdentifiersForBundleIdentifier:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)actionsConformingToSystemProtocol:(id)a3 withParametersOfTypes:(id)a4 bundleIdentifier:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__2676;
  v38 = __Block_byref_object_dispose__2677;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__2676;
  v32 = __Block_byref_object_dispose__2677;
  v33 = 0;
  v13 = _os_activity_create(&dword_19763D000, "appintents:fetch actions by protocol and parameters", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __101__LNMetadataProvider_actionsConformingToSystemProtocol_withParametersOfTypes_bundleIdentifier_error___block_invoke;
  v22[3] = &unk_1E74B0A80;
  v26 = &v28;
  v22[4] = self;
  v14 = v10;
  v23 = v14;
  v15 = v11;
  v24 = v15;
  v16 = v12;
  v25 = v16;
  v27 = &v34;
  os_activity_apply(v13, v22);

  v17 = v29[5];
  if (v17)
  {
    v18 = v17;
  }

  else if (a6)
  {
    v20 = v35[5];
    if (v20)
    {
      *a6 = v20;
    }

    else
    {
      v21 = NSErrorFromMetadataProviderError(9004);
      *a6 = v21;
    }
  }

  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v34, 8);

  return v17;
}

void __101__LNMetadataProvider_actionsConformingToSystemProtocol_withParametersOfTypes_bundleIdentifier_error___block_invoke(uint64_t *a1)
{
  v2 = [(LNMetadataProvider *)a1[4] getInterfaceWithSource:?];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = *(a1[9] + 8);
  obj = *(v6 + 40);
  v7 = [v2 actionsConformingToSystemProtocol:v3 withParametersOfTypes:v4 bundleIdentifier:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  v8 = *(a1[8] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (id)actionsAndSystemProtocolDefaultsForBundleIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2676;
  v28 = __Block_byref_object_dispose__2677;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__2676;
  v22 = __Block_byref_object_dispose__2677;
  v23 = 0;
  v7 = _os_activity_create(&dword_19763D000, "appintents:fetch actions defaults", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__LNMetadataProvider_actionsAndSystemProtocolDefaultsForBundleIdentifier_error___block_invoke;
  v14[3] = &unk_1E74B1228;
  v16 = &v18;
  v14[4] = self;
  v8 = v6;
  v15 = v8;
  v17 = &v24;
  os_activity_apply(v7, v14);

  v9 = v19[5];
  if (v9)
  {
    v10 = v9;
  }

  else if (a4)
  {
    v12 = v25[5];
    if (v12)
    {
      *a4 = v12;
    }

    else
    {
      v13 = NSErrorFromMetadataProviderError(9004);
      *a4 = v13;
    }
  }

  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v9;
}

void __80__LNMetadataProvider_actionsAndSystemProtocolDefaultsForBundleIdentifier_error___block_invoke(uint64_t *a1)
{
  v2 = [(LNMetadataProvider *)a1[4] getInterfaceWithSource:?];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 actionsAndSystemProtocolDefaultsForBundleIdentifier:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)actionsConformingToSystemProtocols:(id)a3 logicalType:(unint64_t)a4 bundleIdentifier:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__2676;
  v36 = __Block_byref_object_dispose__2677;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__2676;
  v30 = __Block_byref_object_dispose__2677;
  v31 = 0;
  v12 = _os_activity_create(&dword_19763D000, "appintents:fetch actions by protocol", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __92__LNMetadataProvider_actionsConformingToSystemProtocols_logicalType_bundleIdentifier_error___block_invoke;
  v20[3] = &unk_1E74B0A58;
  v23 = &v26;
  v20[4] = self;
  v13 = v10;
  v21 = v13;
  v25 = a4;
  v14 = v11;
  v22 = v14;
  v24 = &v32;
  os_activity_apply(v12, v20);

  v15 = v27[5];
  if (v15)
  {
    v16 = v15;
  }

  else if (a6)
  {
    v18 = v33[5];
    if (v18)
    {
      *a6 = v18;
    }

    else
    {
      v19 = NSErrorFromMetadataProviderError(9004);
      *a6 = v19;
    }
  }

  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);

  return v15;
}

void __92__LNMetadataProvider_actionsConformingToSystemProtocols_logicalType_bundleIdentifier_error___block_invoke(uint64_t *a1)
{
  v2 = [(LNMetadataProvider *)a1[4] getInterfaceWithSource:?];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[9];
  v6 = *(a1[8] + 8);
  obj = *(v6 + 40);
  v7 = [v2 actionsConformingToSystemProtocols:v3 logicalType:v5 bundleIdentifier:v4 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (id)queryForBundleIdentifier:(id)a3 ofType:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__2676;
  v33 = __Block_byref_object_dispose__2677;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__2676;
  v27 = __Block_byref_object_dispose__2677;
  v28 = 0;
  v10 = _os_activity_create(&dword_19763D000, "appintents:fetch actions by protocol", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__LNMetadataProvider_queryForBundleIdentifier_ofType_error___block_invoke;
  block[3] = &unk_1E74B11D8;
  v21 = &v23;
  block[4] = self;
  v11 = v8;
  v19 = v11;
  v12 = v9;
  v20 = v12;
  v22 = &v29;
  os_activity_apply(v10, block);

  v13 = v24[5];
  if (v13)
  {
    v14 = v13;
  }

  else if (a5)
  {
    v16 = v30[5];
    if (v16)
    {
      *a5 = v16;
    }

    else
    {
      v17 = NSErrorFromMetadataProviderError(9004);
      *a5 = v17;
    }
  }

  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v29, 8);

  return v13;
}

void __60__LNMetadataProvider_queryForBundleIdentifier_ofType_error___block_invoke(uint64_t *a1)
{
  v2 = [(LNMetadataProvider *)a1[4] getInterfaceWithSource:?];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v2 queryForBundleIdentifier:v3 ofType:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(a1[7] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)queriesForSchemaIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2676;
  v28 = __Block_byref_object_dispose__2677;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__2676;
  v22 = __Block_byref_object_dispose__2677;
  v23 = 0;
  v7 = _os_activity_create(&dword_19763D000, "appintents:fetch actions by protocol", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__LNMetadataProvider_queriesForSchemaIdentifier_error___block_invoke;
  v14[3] = &unk_1E74B1228;
  v16 = &v18;
  v14[4] = self;
  v8 = v6;
  v15 = v8;
  v17 = &v24;
  os_activity_apply(v7, v14);

  v9 = v19[5];
  if (v9)
  {
    v10 = v9;
  }

  else if (a4)
  {
    v12 = v25[5];
    if (v12)
    {
      *a4 = v12;
    }

    else
    {
      v13 = NSErrorFromMetadataProviderError(9004);
      *a4 = v13;
    }
  }

  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v9;
}

void __55__LNMetadataProvider_queriesForSchemaIdentifier_error___block_invoke(uint64_t *a1)
{
  v2 = [(LNMetadataProvider *)a1[4] getInterfaceWithSource:?];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 queriesForSchemaIdentifier:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)entitiesForSchemaIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2676;
  v28 = __Block_byref_object_dispose__2677;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__2676;
  v22 = __Block_byref_object_dispose__2677;
  v23 = 0;
  v7 = _os_activity_create(&dword_19763D000, "appintents:fetch actions by protocol", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__LNMetadataProvider_entitiesForSchemaIdentifier_error___block_invoke;
  v14[3] = &unk_1E74B1228;
  v16 = &v18;
  v14[4] = self;
  v8 = v6;
  v15 = v8;
  v17 = &v24;
  os_activity_apply(v7, v14);

  v9 = v19[5];
  if (v9)
  {
    v10 = v9;
  }

  else if (a4)
  {
    v12 = v25[5];
    if (v12)
    {
      *a4 = v12;
    }

    else
    {
      v13 = NSErrorFromMetadataProviderError(9004);
      *a4 = v13;
    }
  }

  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v9;
}

void __56__LNMetadataProvider_entitiesForSchemaIdentifier_error___block_invoke(uint64_t *a1)
{
  v2 = [(LNMetadataProvider *)a1[4] getInterfaceWithSource:?];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 entitiesForSchemaIdentifier:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)enumsForSchemaIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2676;
  v28 = __Block_byref_object_dispose__2677;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__2676;
  v22 = __Block_byref_object_dispose__2677;
  v23 = 0;
  v7 = _os_activity_create(&dword_19763D000, "appintents:fetch actions by protocol", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__LNMetadataProvider_enumsForSchemaIdentifier_error___block_invoke;
  v14[3] = &unk_1E74B1228;
  v16 = &v18;
  v14[4] = self;
  v8 = v6;
  v15 = v8;
  v17 = &v24;
  os_activity_apply(v7, v14);

  v9 = v19[5];
  if (v9)
  {
    v10 = v9;
  }

  else if (a4)
  {
    v12 = v25[5];
    if (v12)
    {
      *a4 = v12;
    }

    else
    {
      v13 = NSErrorFromMetadataProviderError(9004);
      *a4 = v13;
    }
  }

  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v9;
}

void __53__LNMetadataProvider_enumsForSchemaIdentifier_error___block_invoke(uint64_t *a1)
{
  v2 = [(LNMetadataProvider *)a1[4] getInterfaceWithSource:?];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 enumsForSchemaIdentifier:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)actionsForSchemaIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2676;
  v28 = __Block_byref_object_dispose__2677;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__2676;
  v22 = __Block_byref_object_dispose__2677;
  v23 = 0;
  v7 = _os_activity_create(&dword_19763D000, "appintents:fetch actions by protocol", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__LNMetadataProvider_actionsForSchemaIdentifier_error___block_invoke;
  v14[3] = &unk_1E74B1228;
  v16 = &v18;
  v14[4] = self;
  v8 = v6;
  v15 = v8;
  v17 = &v24;
  os_activity_apply(v7, v14);

  v9 = v19[5];
  if (v9)
  {
    v10 = v9;
  }

  else if (a4)
  {
    v12 = v25[5];
    if (v12)
    {
      *a4 = v12;
    }

    else
    {
      v13 = NSErrorFromMetadataProviderError(9004);
      *a4 = v13;
    }
  }

  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v9;
}

void __55__LNMetadataProvider_actionsForSchemaIdentifier_error___block_invoke(uint64_t *a1)
{
  v2 = [(LNMetadataProvider *)a1[4] getInterfaceWithSource:?];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 actionsForSchemaIdentifier:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)enumerateQueriesForBundleIdentifier:(id)a3 usingBlock:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2676;
  v28 = __Block_byref_object_dispose__2677;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v10 = _os_activity_create(&dword_19763D000, "appintents:enumerate queries for bundle", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__LNMetadataProvider_enumerateQueriesForBundleIdentifier_usingBlock_error___block_invoke;
  block[3] = &unk_1E74B1250;
  block[4] = self;
  v18 = &v24;
  v19 = &v20;
  v11 = v8;
  v16 = v11;
  v12 = v9;
  v17 = v12;
  os_activity_apply(v10, block);

  v13 = *(v21 + 24);
  if (a5 && (v21[3] & 1) == 0)
  {
    *a5 = v25[5];
    v13 = *(v21 + 24);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v13 & 1;
}

void __75__LNMetadataProvider_enumerateQueriesForBundleIdentifier_usingBlock_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[7] + 8);
  obj = *(v3 + 40);
  v4 = [(LNMetadataProvider *)v2 getDirectProviderWithError:?];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = a1[5];
    v6 = a1[6];
    v7 = *(a1[7] + 8);
    v12 = *(v7 + 40);
    v8 = [v4 enumerateQueriesForBundleIdentifier:v5 usingBlock:v6 error:&v12];
    objc_storeStrong((v7 + 40), v12);
    *(*(a1[8] + 8) + 24) = v8;
  }

  else
  {
    if (!*(*(a1[7] + 8) + 40))
    {
      v9 = NSErrorFromMetadataProviderError(9000);
      v10 = *(a1[7] + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    *(*(a1[8] + 8) + 24) = 0;
  }
}

- (_TtC12LinkServices25_LNMetadataProviderDirect)getDirectProviderWithError:(_TtC12LinkServices25_LNMetadataProviderDirect *)a1
{
  v2 = a1;
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = [_TtC12LinkServices25_LNMetadataProviderDirect alloc];
    v5 = *v2[1].requiresAssertion;
    v6 = *v2->requiresAssertion;
    v13 = 0;
    v2 = [(_LNMetadataProviderDirect *)v4 initWithConnection:v5 options:v6 error:&v13];
    v7 = v13;
    if (v2)
    {
      v8 = v2;
    }

    else
    {
      v9 = getLNLogCategoryMetadata();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v7;
        _os_log_impl(&dword_19763D000, v9, OS_LOG_TYPE_ERROR, "Request for read access failed: %@", buf, 0xCu);
      }

      if (a2)
      {
        v10 = v7;
        *a2 = v7;
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v2;
}

- (BOOL)enumerateEntitiesForBundleIdentifier:(id)a3 usingBlock:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2676;
  v28 = __Block_byref_object_dispose__2677;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v10 = _os_activity_create(&dword_19763D000, "appintents:enumerate entities for bundle", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__LNMetadataProvider_enumerateEntitiesForBundleIdentifier_usingBlock_error___block_invoke;
  block[3] = &unk_1E74B1250;
  block[4] = self;
  v18 = &v24;
  v19 = &v20;
  v11 = v8;
  v16 = v11;
  v12 = v9;
  v17 = v12;
  os_activity_apply(v10, block);

  v13 = *(v21 + 24);
  if (a5 && (v21[3] & 1) == 0)
  {
    *a5 = v25[5];
    v13 = *(v21 + 24);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v13 & 1;
}

void __76__LNMetadataProvider_enumerateEntitiesForBundleIdentifier_usingBlock_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[7] + 8);
  obj = *(v3 + 40);
  v4 = [(LNMetadataProvider *)v2 getDirectProviderWithError:?];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = a1[5];
    v6 = a1[6];
    v7 = *(a1[7] + 8);
    v12 = *(v7 + 40);
    v8 = [v4 enumerateEntitiesForBundleIdentifier:v5 usingBlock:v6 error:&v12];
    objc_storeStrong((v7 + 40), v12);
    *(*(a1[8] + 8) + 24) = v8;
  }

  else
  {
    if (!*(*(a1[7] + 8) + 40))
    {
      v9 = NSErrorFromMetadataProviderError(9000);
      v10 = *(a1[7] + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    *(*(a1[8] + 8) + 24) = 0;
  }
}

- (BOOL)enumerateEnumsForBundleIdentifier:(id)a3 usingBlock:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2676;
  v28 = __Block_byref_object_dispose__2677;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v10 = _os_activity_create(&dword_19763D000, "appintents:enumerate enums for bundle", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__LNMetadataProvider_enumerateEnumsForBundleIdentifier_usingBlock_error___block_invoke;
  block[3] = &unk_1E74B1250;
  block[4] = self;
  v18 = &v24;
  v19 = &v20;
  v11 = v8;
  v16 = v11;
  v12 = v9;
  v17 = v12;
  os_activity_apply(v10, block);

  v13 = *(v21 + 24);
  if (a5 && (v21[3] & 1) == 0)
  {
    *a5 = v25[5];
    v13 = *(v21 + 24);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v13 & 1;
}

void __73__LNMetadataProvider_enumerateEnumsForBundleIdentifier_usingBlock_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[7] + 8);
  obj = *(v3 + 40);
  v4 = [(LNMetadataProvider *)v2 getDirectProviderWithError:?];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = a1[5];
    v6 = a1[6];
    v7 = *(a1[7] + 8);
    v12 = *(v7 + 40);
    v8 = [v4 enumerateEnumsForBundleIdentifier:v5 usingBlock:v6 error:&v12];
    objc_storeStrong((v7 + 40), v12);
    *(*(a1[8] + 8) + 24) = v8;
  }

  else
  {
    if (!*(*(a1[7] + 8) + 40))
    {
      v9 = NSErrorFromMetadataProviderError(9000);
      v10 = *(a1[7] + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    *(*(a1[8] + 8) + 24) = 0;
  }
}

- (BOOL)enumerateActionsForBundleIdentifier:(id)a3 usingBlock:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2676;
  v28 = __Block_byref_object_dispose__2677;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v10 = _os_activity_create(&dword_19763D000, "appintents:enumerate actions for bundle", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__LNMetadataProvider_enumerateActionsForBundleIdentifier_usingBlock_error___block_invoke;
  block[3] = &unk_1E74B1250;
  block[4] = self;
  v18 = &v24;
  v19 = &v20;
  v11 = v8;
  v16 = v11;
  v12 = v9;
  v17 = v12;
  os_activity_apply(v10, block);

  v13 = *(v21 + 24);
  if (a5 && (v21[3] & 1) == 0)
  {
    *a5 = v25[5];
    v13 = *(v21 + 24);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v13 & 1;
}

void __75__LNMetadataProvider_enumerateActionsForBundleIdentifier_usingBlock_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[7] + 8);
  obj = *(v3 + 40);
  v4 = [(LNMetadataProvider *)v2 getDirectProviderWithError:?];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = a1[5];
    v6 = a1[6];
    v7 = *(a1[7] + 8);
    v12 = *(v7 + 40);
    v8 = [v4 enumerateActionsForBundleIdentifier:v5 usingBlock:v6 error:&v12];
    objc_storeStrong((v7 + 40), v12);
    *(*(a1[8] + 8) + 24) = v8;
  }

  else
  {
    if (!*(*(a1[7] + 8) + 40))
    {
      v9 = NSErrorFromMetadataProviderError(9000);
      v10 = *(a1[7] + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    *(*(a1[8] + 8) + 24) = 0;
  }
}

- (LNMetadataProvider)initWithOptions:(int64_t)a3
{
  v11.receiver = self;
  v11.super_class = LNMetadataProvider;
  v4 = [(LNMetadataProvider *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    v4->_options = a3;
    v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.linkd.registry" options:0];
    connection = v5->_connection;
    v5->_connection = v6;

    v8 = LNDaemonRegistryXPCInterface();
    [(NSXPCConnection *)v5->_connection setRemoteObjectInterface:v8];

    [(NSXPCConnection *)v5->_connection resume];
    v9 = v5;
  }

  return v5;
}

@end