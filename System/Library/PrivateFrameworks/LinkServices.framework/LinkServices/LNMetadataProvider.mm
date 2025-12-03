@interface LNMetadataProvider
- (BOOL)enumerateActionsForBundleIdentifier:(id)identifier usingBlock:(id)block error:(id *)error;
- (BOOL)enumerateEntitiesForBundleIdentifier:(id)identifier usingBlock:(id)block error:(id *)error;
- (BOOL)enumerateEnumsForBundleIdentifier:(id)identifier usingBlock:(id)block error:(id *)error;
- (BOOL)enumerateQueriesForBundleIdentifier:(id)identifier usingBlock:(id)block error:(id *)error;
- (BOOL)registerBundleWithIdentifier:(id)identifier error:(id *)error;
- (LNMetadataProvider)initWithOptions:(int64_t)options;
- (_TtC12LinkServices25_LNMetadataProviderDirect)getDirectProviderWithError:(_TtC12LinkServices25_LNMetadataProviderDirect *)error;
- (id)actionForBundleIdentifier:(id)identifier andActionIdentifier:(id)actionIdentifier error:(id *)error;
- (id)actionIdentifiersForBundleIdentifier:(id)identifier error:(id *)error;
- (id)actionsAndSystemProtocolDefaultsForBundleIdentifier:(id)identifier error:(id *)error;
- (id)actionsConformingToSystemProtocol:(id)protocol withParametersOfTypes:(id)types bundleIdentifier:(id)identifier error:(id *)error;
- (id)actionsConformingToSystemProtocols:(id)protocols logicalType:(unint64_t)type bundleIdentifier:(id)identifier error:(id *)error;
- (id)actionsForBundleIdentifier:(id)identifier andActionIdentifier:(id)actionIdentifier error:(id *)error;
- (id)actionsForBundleIdentifier:(id)identifier error:(id *)error;
- (id)actionsForSchemaIdentifier:(id)identifier error:(id *)error;
- (id)actionsWithError:(id *)error;
- (id)actionsWithFullyQualifiedIdentifiers:(id)identifiers error:(id *)error;
- (id)appShortcutsProviderMangledTypeNameForBundleIdentifier:(id)identifier error:(id *)error;
- (id)bundleRegistrationsWithError:(id *)error;
- (id)bundlesWithError:(id *)error;
- (id)entitiesForBundleIdentifier:(id)identifier error:(id *)error;
- (id)entitiesForSchemaIdentifier:(id)identifier error:(id *)error;
- (id)entitiesWithError:(id *)error;
- (id)entityForBundleIdentifier:(id)identifier withEntityIdentifier:(id)entityIdentifier error:(id *)error;
- (id)entityIdentifiersForBundleIdentifier:(id)identifier error:(id *)error;
- (id)enumsForBundleIdentifier:(id)identifier error:(id *)error;
- (id)enumsForSchemaIdentifier:(id)identifier error:(id *)error;
- (id)enumsWithError:(id *)error;
- (id)examplePhrasesForBundleIdentifier:(id)identifier error:(id *)error;
- (id)getInterfaceWithSource:(uint64_t)source;
- (id)getXPCProvider;
- (id)openActionsForTypeIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier error:(id *)error;
- (id)openCollectionActionsForEntityTypeIdentifier:(id)identifier capabilities:(int64_t)capabilities bundleIdentifier:(id)bundleIdentifier error:(id *)error;
- (id)queriesForBundleIdentifier:(id)identifier ofType:(id)type error:(id *)error;
- (id)queriesForSchemaIdentifier:(id)identifier error:(id *)error;
- (id)queriesWithCapabilities:(unint64_t)capabilities inputValueType:(id)type resultValueType:(id)valueType error:(id *)error;
- (id)queriesWithError:(id *)error;
- (id)queryForBundleIdentifier:(id)identifier ofType:(id)type error:(id *)error;
- (id)suggestionPhrasesForQueries:(id)queries error:(id *)error;
- (int64_t)metadataVersionForBundleIdentifier:(id)identifier error:(id *)error;
- (void)dealloc;
- (void)diagnoseBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)registerBundleWithIdentifier:(id)identifier force:(BOOL)force reply:(id)reply;
- (void)resetWithReply:(id)reply;
- (void)scanBundlesWithReply:(id)reply;
- (void)unregisterBundleWithIdentifier:(id)identifier reply:(id)reply;
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
  v1 = *(self + 24);
  if (!v1)
  {
    v3 = [[_LNMetadataProviderXPC alloc] initWithConnection:*(self + 40)];
    v4 = *(self + 24);
    *(self + 24) = v3;

    v1 = *(self + 24);
  }

  v5 = v1;

  return v5;
}

- (void)diagnoseBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v8 = [(LNMetadataProvider *)self getInterfaceWithSource:?];
  [v8 diagnoseBundleIdentifier:identifierCopy completionHandler:handlerCopy];
}

- (id)getInterfaceWithSource:(uint64_t)source
{
  v23 = *MEMORY[0x1E69E9840];
  if (source)
  {
    os_unfair_lock_lock((source + 8));
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __45__LNMetadataProvider_getInterfaceWithSource___block_invoke;
    v19[3] = &unk_1E74B2318;
    v19[4] = source;
    v5 = _Block_copy(v19);
    if (a2 == 1)
    {
      v7 = *(source + 32);
      if (!v7)
      {
        v11 = [_TtC12LinkServices25_LNMetadataProviderDirect alloc];
        v12 = *(source + 40);
        v13 = *(source + 16);
        v20 = 0;
        v14 = [(_LNMetadataProviderDirect *)v11 initWithConnection:v12 options:v13 error:&v20];
        v15 = v20;
        v16 = *(source + 32);
        *(source + 32) = v14;

        if (v15)
        {
          v17 = getLNLogCategoryMetadata();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v22 = v15;
            _os_log_impl(&dword_19763D000, v17, OS_LOG_TYPE_ERROR, "Request for read access failed, falling back to XPC: %@", buf, 0xCu);
          }

          getXPCProvider = [(LNMetadataProvider *)source getXPCProvider];
        }

        else
        {
          getXPCProvider = *(source + 32);
        }

        v2 = getXPCProvider;

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

      if (!*(source + 32))
      {
        getXPCProvider2 = [(LNMetadataProvider *)source getXPCProvider];
        goto LABEL_11;
      }

      v6 = getLNLogCategoryMetadata();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19763D000, v6, OS_LOG_TYPE_INFO, "XPC provider requested, but there is already direct provider available", buf, 2u);
      }

      v7 = *(source + 32);
    }

    getXPCProvider2 = v7;
LABEL_11:
    v2 = getXPCProvider2;
    goto LABEL_12;
  }

  v2 = 0;
LABEL_13:
  v9 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)suggestionPhrasesForQueries:(id)queries error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  queriesCopy = queries;
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
  v8 = queriesCopy;
  v18 = v8;
  v20 = &v27;
  os_activity_apply(v7, v17);

  v9 = v22[5];
  if (v9)
  {
    v10 = v9;
  }

  else if (error)
  {
    v13 = getLNLogCategoryMetadata();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *error;
      *buf = 138412290;
      v34 = v14;
      _os_log_impl(&dword_19763D000, v13, OS_LOG_TYPE_DEFAULT, "error when fetching suggestion phrases - %@", buf, 0xCu);
    }

    v15 = v28[5];
    if (v15)
    {
      *error = v15;
    }

    else
    {
      v16 = NSErrorFromMetadataProviderError(9004);
      *error = v16;
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

- (id)actionsWithError:(id *)error
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

  else if (error)
  {
    v9 = v13[5];
    if (v9)
    {
      *error = v9;
    }

    else
    {
      v10 = NSErrorFromMetadataProviderError(9004);
      *error = v10;
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

- (id)entityForBundleIdentifier:(id)identifier withEntityIdentifier:(id)entityIdentifier error:(id *)error
{
  identifierCopy = identifier;
  entityIdentifierCopy = entityIdentifier;
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
  v11 = identifierCopy;
  v17 = v11;
  v12 = entityIdentifierCopy;
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
    *error = v28[5];
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

- (id)entitiesForBundleIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
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
  v8 = identifierCopy;
  v15 = v8;
  v17 = &v24;
  os_activity_apply(v7, v14);

  v9 = v19[5];
  if (v9)
  {
    v10 = v9;
  }

  else if (error)
  {
    v12 = v25[5];
    if (v12)
    {
      *error = v12;
    }

    else
    {
      v13 = NSErrorFromMetadataProviderError(9004);
      *error = v13;
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

- (id)entitiesWithError:(id *)error
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

  else if (error)
  {
    v9 = v19[5];
    if (v9)
    {
      *error = v9;
    }

    else
    {
      v10 = NSErrorFromMetadataProviderError(9004);
      *error = v10;
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

- (id)enumsForBundleIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
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
  v8 = identifierCopy;
  v15 = v8;
  v17 = &v24;
  os_activity_apply(v7, v14);

  v9 = v19[5];
  if (v9)
  {
    v10 = v9;
  }

  else if (error)
  {
    v12 = v25[5];
    if (v12)
    {
      *error = v12;
    }

    else
    {
      v13 = NSErrorFromMetadataProviderError(9004);
      *error = v13;
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

- (id)enumsWithError:(id *)error
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

  else if (error)
  {
    v9 = v19[5];
    if (v9)
    {
      *error = v9;
    }

    else
    {
      v10 = NSErrorFromMetadataProviderError(9004);
      *error = v10;
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

- (id)queriesWithCapabilities:(unint64_t)capabilities inputValueType:(id)type resultValueType:(id)valueType error:(id *)error
{
  typeCopy = type;
  valueTypeCopy = valueType;
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
  capabilitiesCopy = capabilities;
  v13 = typeCopy;
  v21 = v13;
  v14 = valueTypeCopy;
  v22 = v14;
  v24 = &v32;
  os_activity_apply(v12, v20);

  v15 = v27[5];
  if (v15)
  {
    v16 = v15;
  }

  else if (error)
  {
    v18 = v33[5];
    if (v18)
    {
      *error = v18;
    }

    else
    {
      v19 = NSErrorFromMetadataProviderError(9004);
      *error = v19;
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

- (id)queriesForBundleIdentifier:(id)identifier ofType:(id)type error:(id *)error
{
  identifierCopy = identifier;
  typeCopy = type;
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
  v11 = identifierCopy;
  v19 = v11;
  v12 = typeCopy;
  v20 = v12;
  v22 = &v29;
  os_activity_apply(v10, block);

  v13 = v24[5];
  if (v13)
  {
    v14 = v13;
  }

  else if (error)
  {
    v16 = v30[5];
    if (v16)
    {
      *error = v16;
    }

    else
    {
      v17 = NSErrorFromMetadataProviderError(9004);
      *error = v17;
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

- (id)queriesWithError:(id *)error
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

  else if (error)
  {
    v9 = v19[5];
    if (v9)
    {
      *error = v9;
    }

    else
    {
      v10 = NSErrorFromMetadataProviderError(9004);
      *error = v10;
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

- (id)actionsForBundleIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
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
  v8 = identifierCopy;
  v15 = v8;
  v17 = &v24;
  os_activity_apply(v7, v14);

  v9 = v19[5];
  if (v9)
  {
    v10 = v9;
  }

  else if (error)
  {
    v12 = v25[5];
    if (v12)
    {
      *error = v12;
    }

    else
    {
      v13 = NSErrorFromMetadataProviderError(9004);
      *error = v13;
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

- (id)examplePhrasesForBundleIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
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
  v8 = identifierCopy;
  v15 = v8;
  v17 = &v24;
  os_activity_apply(v7, v14);

  v9 = v19[5];
  if (v9)
  {
    v10 = v9;
  }

  else if (error)
  {
    v12 = v25[5];
    if (v12)
    {
      *error = v12;
    }

    else
    {
      v13 = NSErrorFromMetadataProviderError(9004);
      *error = v13;
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

- (void)unregisterBundleWithIdentifier:(id)identifier reply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  v8 = _os_activity_create(&dword_19763D000, "appintents:unregister bundle", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__LNMetadataProvider_unregisterBundleWithIdentifier_reply___block_invoke;
  block[3] = &unk_1E74B2580;
  v12 = identifierCopy;
  v13 = replyCopy;
  block[4] = self;
  v9 = identifierCopy;
  v10 = replyCopy;
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

- (void)scanBundlesWithReply:(id)reply
{
  replyCopy = reply;
  v5 = _os_activity_create(&dword_19763D000, "appintents:scan bundles", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__LNMetadataProvider_scanBundlesWithReply___block_invoke;
  v7[3] = &unk_1E74B1930;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
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

- (void)resetWithReply:(id)reply
{
  replyCopy = reply;
  v5 = _os_activity_create(&dword_19763D000, "appintents:reset metadata", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__LNMetadataProvider_resetWithReply___block_invoke;
  v7[3] = &unk_1E74B1930;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
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

- (void)registerBundleWithIdentifier:(id)identifier force:(BOOL)force reply:(id)reply
{
  v9 = 0;
  replyCopy = reply;
  [(LNMetadataProvider *)self registerBundleWithIdentifier:identifier error:&v9];
  v8 = v9;
  replyCopy[2](replyCopy, v8);
}

- (BOOL)registerBundleWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
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
  v11 = identifierCopy;
  v12 = &v13;
  v8 = identifierCopy;
  os_activity_apply(v7, block);

  *error = v14[5];
  LOBYTE(error) = v14[5] == 0;
  _Block_object_dispose(&v13, 8);

  return error;
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

- (id)appShortcutsProviderMangledTypeNameForBundleIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
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
  v8 = identifierCopy;
  v13 = v8;
  v15 = &v22;
  os_activity_apply(v7, v12);

  if (error)
  {
    v9 = v23[5];
    if (v9)
    {
      *error = v9;
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

- (int64_t)metadataVersionForBundleIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
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
  v8 = identifierCopy;
  v13 = v8;
  v15 = &v20;
  os_activity_apply(v7, v12);

  if (error)
  {
    v9 = v21[5];
    if (v9)
    {
      *error = v9;
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

- (id)entityIdentifiersForBundleIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
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
  v8 = identifierCopy;
  v15 = v8;
  v17 = &v24;
  os_activity_apply(v7, v14);

  v9 = v19[5];
  if (v9)
  {
    v10 = v9;
  }

  else if (error)
  {
    v12 = v25[5];
    if (v12)
    {
      *error = v12;
    }

    else
    {
      v13 = NSErrorFromMetadataProviderError(9004);
      *error = v13;
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

- (id)bundleRegistrationsWithError:(id *)error
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

  else if (error)
  {
    v9 = v19[5];
    if (v9)
    {
      *error = v9;
    }

    else
    {
      v10 = NSErrorFromMetadataProviderError(9004);
      *error = v10;
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

- (id)bundlesWithError:(id *)error
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

  else if (error)
  {
    v9 = v19[5];
    if (v9)
    {
      *error = v9;
    }

    else
    {
      v10 = NSErrorFromMetadataProviderError(9004);
      *error = v10;
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

- (id)openCollectionActionsForEntityTypeIdentifier:(id)identifier capabilities:(int64_t)capabilities bundleIdentifier:(id)bundleIdentifier error:(id *)error
{
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  v12 = [(LNMetadataProvider *)self getInterfaceWithSource:?];
  v18 = 0;
  v13 = [v12 openCollectionActionsForEntityTypeIdentifier:identifierCopy capabilities:capabilities bundleIdentifier:bundleIdentifierCopy error:&v18];

  v14 = v18;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v16 = v14;
    *error = v14;
  }

  return v13;
}

- (id)openActionsForTypeIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier error:(id *)error
{
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  v10 = [(LNMetadataProvider *)self getInterfaceWithSource:?];
  v16 = 0;
  v11 = [v10 openActionsForTypeIdentifier:identifierCopy bundleIdentifier:bundleIdentifierCopy error:&v16];

  v12 = v16;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v14 = v12;
    *error = v12;
  }

  return v11;
}

- (id)actionsWithFullyQualifiedIdentifiers:(id)identifiers error:(id *)error
{
  identifiersCopy = identifiers;
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
  v7 = [identifiersCopy count] != 1;
  v8 = _os_activity_create(&dword_19763D000, "appintents:fetch fully qualified actions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__LNMetadataProvider_actionsWithFullyQualifiedIdentifiers_error___block_invoke;
  block[3] = &unk_1E74B0AA8;
  v17 = &v20;
  block[4] = self;
  v19 = v7;
  v9 = identifiersCopy;
  v16 = v9;
  v18 = &v26;
  os_activity_apply(v8, block);

  v10 = v21[5];
  if (v10)
  {
    v11 = v10;
  }

  else if (error)
  {
    v13 = v27[5];
    if (v13)
    {
      *error = v13;
    }

    else
    {
      v14 = NSErrorFromMetadataProviderError(9004);
      *error = v14;
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

- (id)actionForBundleIdentifier:(id)identifier andActionIdentifier:(id)actionIdentifier error:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  actionIdentifierCopy = actionIdentifier;
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
  v11 = identifierCopy;
  v21 = v11;
  v12 = actionIdentifierCopy;
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

    if (error)
    {
      v18 = v32[5];
      if (v18)
      {
        *error = v18;
      }

      else
      {
        v19 = NSErrorFromMetadataProviderError(9004);
        *error = v19;
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

- (id)actionsForBundleIdentifier:(id)identifier andActionIdentifier:(id)actionIdentifier error:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  actionIdentifierCopy = actionIdentifier;
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
  v11 = identifierCopy;
  v21 = v11;
  v12 = actionIdentifierCopy;
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
    if (error)
    {
      v16 = v32[5];
      if (v16)
      {
        v15 = 0;
        *error = v16;
        goto LABEL_12;
      }

      v17 = NSErrorFromMetadataProviderError(9004);
      *error = v17;
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

- (id)actionIdentifiersForBundleIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
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
  v8 = identifierCopy;
  v15 = v8;
  v17 = &v24;
  os_activity_apply(v7, v14);

  v9 = v19[5];
  if (v9)
  {
    v10 = v9;
  }

  else if (error)
  {
    v12 = v25[5];
    if (v12)
    {
      *error = v12;
    }

    else
    {
      v13 = NSErrorFromMetadataProviderError(9004);
      *error = v13;
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

- (id)actionsConformingToSystemProtocol:(id)protocol withParametersOfTypes:(id)types bundleIdentifier:(id)identifier error:(id *)error
{
  protocolCopy = protocol;
  typesCopy = types;
  identifierCopy = identifier;
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
  v14 = protocolCopy;
  v23 = v14;
  v15 = typesCopy;
  v24 = v15;
  v16 = identifierCopy;
  v25 = v16;
  v27 = &v34;
  os_activity_apply(v13, v22);

  v17 = v29[5];
  if (v17)
  {
    v18 = v17;
  }

  else if (error)
  {
    v20 = v35[5];
    if (v20)
    {
      *error = v20;
    }

    else
    {
      v21 = NSErrorFromMetadataProviderError(9004);
      *error = v21;
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

- (id)actionsAndSystemProtocolDefaultsForBundleIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
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
  v8 = identifierCopy;
  v15 = v8;
  v17 = &v24;
  os_activity_apply(v7, v14);

  v9 = v19[5];
  if (v9)
  {
    v10 = v9;
  }

  else if (error)
  {
    v12 = v25[5];
    if (v12)
    {
      *error = v12;
    }

    else
    {
      v13 = NSErrorFromMetadataProviderError(9004);
      *error = v13;
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

- (id)actionsConformingToSystemProtocols:(id)protocols logicalType:(unint64_t)type bundleIdentifier:(id)identifier error:(id *)error
{
  protocolsCopy = protocols;
  identifierCopy = identifier;
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
  v13 = protocolsCopy;
  v21 = v13;
  typeCopy = type;
  v14 = identifierCopy;
  v22 = v14;
  v24 = &v32;
  os_activity_apply(v12, v20);

  v15 = v27[5];
  if (v15)
  {
    v16 = v15;
  }

  else if (error)
  {
    v18 = v33[5];
    if (v18)
    {
      *error = v18;
    }

    else
    {
      v19 = NSErrorFromMetadataProviderError(9004);
      *error = v19;
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

- (id)queryForBundleIdentifier:(id)identifier ofType:(id)type error:(id *)error
{
  identifierCopy = identifier;
  typeCopy = type;
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
  v11 = identifierCopy;
  v19 = v11;
  v12 = typeCopy;
  v20 = v12;
  v22 = &v29;
  os_activity_apply(v10, block);

  v13 = v24[5];
  if (v13)
  {
    v14 = v13;
  }

  else if (error)
  {
    v16 = v30[5];
    if (v16)
    {
      *error = v16;
    }

    else
    {
      v17 = NSErrorFromMetadataProviderError(9004);
      *error = v17;
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

- (id)queriesForSchemaIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
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
  v8 = identifierCopy;
  v15 = v8;
  v17 = &v24;
  os_activity_apply(v7, v14);

  v9 = v19[5];
  if (v9)
  {
    v10 = v9;
  }

  else if (error)
  {
    v12 = v25[5];
    if (v12)
    {
      *error = v12;
    }

    else
    {
      v13 = NSErrorFromMetadataProviderError(9004);
      *error = v13;
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

- (id)entitiesForSchemaIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
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
  v8 = identifierCopy;
  v15 = v8;
  v17 = &v24;
  os_activity_apply(v7, v14);

  v9 = v19[5];
  if (v9)
  {
    v10 = v9;
  }

  else if (error)
  {
    v12 = v25[5];
    if (v12)
    {
      *error = v12;
    }

    else
    {
      v13 = NSErrorFromMetadataProviderError(9004);
      *error = v13;
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

- (id)enumsForSchemaIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
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
  v8 = identifierCopy;
  v15 = v8;
  v17 = &v24;
  os_activity_apply(v7, v14);

  v9 = v19[5];
  if (v9)
  {
    v10 = v9;
  }

  else if (error)
  {
    v12 = v25[5];
    if (v12)
    {
      *error = v12;
    }

    else
    {
      v13 = NSErrorFromMetadataProviderError(9004);
      *error = v13;
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

- (id)actionsForSchemaIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
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
  v8 = identifierCopy;
  v15 = v8;
  v17 = &v24;
  os_activity_apply(v7, v14);

  v9 = v19[5];
  if (v9)
  {
    v10 = v9;
  }

  else if (error)
  {
    v12 = v25[5];
    if (v12)
    {
      *error = v12;
    }

    else
    {
      v13 = NSErrorFromMetadataProviderError(9004);
      *error = v13;
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

- (BOOL)enumerateQueriesForBundleIdentifier:(id)identifier usingBlock:(id)block error:(id *)error
{
  identifierCopy = identifier;
  blockCopy = block;
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
  v11 = identifierCopy;
  v16 = v11;
  v12 = blockCopy;
  v17 = v12;
  os_activity_apply(v10, block);

  v13 = *(v21 + 24);
  if (error && (v21[3] & 1) == 0)
  {
    *error = v25[5];
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

- (_TtC12LinkServices25_LNMetadataProviderDirect)getDirectProviderWithError:(_TtC12LinkServices25_LNMetadataProviderDirect *)error
{
  errorCopy = error;
  v16 = *MEMORY[0x1E69E9840];
  if (error)
  {
    v4 = [_TtC12LinkServices25_LNMetadataProviderDirect alloc];
    v5 = *errorCopy[1].requiresAssertion;
    v6 = *errorCopy->requiresAssertion;
    v13 = 0;
    errorCopy = [(_LNMetadataProviderDirect *)v4 initWithConnection:v5 options:v6 error:&v13];
    v7 = v13;
    if (errorCopy)
    {
      v8 = errorCopy;
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

  return errorCopy;
}

- (BOOL)enumerateEntitiesForBundleIdentifier:(id)identifier usingBlock:(id)block error:(id *)error
{
  identifierCopy = identifier;
  blockCopy = block;
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
  v11 = identifierCopy;
  v16 = v11;
  v12 = blockCopy;
  v17 = v12;
  os_activity_apply(v10, block);

  v13 = *(v21 + 24);
  if (error && (v21[3] & 1) == 0)
  {
    *error = v25[5];
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

- (BOOL)enumerateEnumsForBundleIdentifier:(id)identifier usingBlock:(id)block error:(id *)error
{
  identifierCopy = identifier;
  blockCopy = block;
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
  v11 = identifierCopy;
  v16 = v11;
  v12 = blockCopy;
  v17 = v12;
  os_activity_apply(v10, block);

  v13 = *(v21 + 24);
  if (error && (v21[3] & 1) == 0)
  {
    *error = v25[5];
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

- (BOOL)enumerateActionsForBundleIdentifier:(id)identifier usingBlock:(id)block error:(id *)error
{
  identifierCopy = identifier;
  blockCopy = block;
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
  v11 = identifierCopy;
  v16 = v11;
  v12 = blockCopy;
  v17 = v12;
  os_activity_apply(v10, block);

  v13 = *(v21 + 24);
  if (error && (v21[3] & 1) == 0)
  {
    *error = v25[5];
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

- (LNMetadataProvider)initWithOptions:(int64_t)options
{
  v11.receiver = self;
  v11.super_class = LNMetadataProvider;
  v4 = [(LNMetadataProvider *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    v4->_options = options;
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