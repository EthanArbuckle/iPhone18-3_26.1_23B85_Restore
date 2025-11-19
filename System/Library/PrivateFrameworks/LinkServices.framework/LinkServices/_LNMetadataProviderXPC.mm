@interface _LNMetadataProviderXPC
- (BOOL)enumerateActionsForBundleIdentifier:(id)a3 usingBlock:(id)a4 error:(id *)a5;
- (BOOL)enumerateEntitiesForBundleIdentifier:(id)a3 usingBlock:(id)a4 error:(id *)a5;
- (BOOL)enumerateEnumsForBundleIdentifier:(id)a3 usingBlock:(id)a4 error:(id *)a5;
- (BOOL)enumerateQueriesForBundleIdentifier:(id)a3 usingBlock:(id)a4 error:(id *)a5;
- (_LNMetadataProviderXPC)initWithConnection:(id)a3;
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
- (id)openActionsForTypeIdentifier:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5;
- (id)openCollectionActionsForEntityTypeIdentifier:(id)a3 capabilities:(int64_t)a4 bundleIdentifier:(id)a5 error:(id *)a6;
- (id)queriesForBundleIdentifier:(id)a3 ofType:(id)a4 error:(id *)a5;
- (id)queriesForSchemaIdentifier:(id)a3 error:(id *)a4;
- (id)queriesWithCapabilities:(unint64_t)a3 inputValueType:(id)a4 resultValueType:(id)a5 error:(id *)a6;
- (id)queriesWithError:(id *)a3;
- (id)queryForBundleIdentifier:(id)a3 ofType:(id)a4 error:(id *)a5;
- (id)suggestionPhrasesForQueries:(id)a3 error:(id *)a4;
- (int64_t)metadataVersionForBundleIdentifier:(id)a3 error:(id *)a4;
- (void)diagnoseBundleIdentifier:(id)a3 completionHandler:(id)a4;
@end

@implementation _LNMetadataProviderXPC

- (void)diagnoseBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2676;
  v15 = __Block_byref_object_dispose__2677;
  v16 = 0;
  connection = self->_connection;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69___LNMetadataProviderXPC_diagnoseBundleIdentifier_completionHandler___block_invoke;
  v10[3] = &unk_1E74B2658;
  v10[4] = &v11;
  v9 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
  [v9 diagnoseBundleIdentifier:v6 completionHandler:v7];

  if (v12[5])
  {
    v7[2](v7, 0);
  }

  _Block_object_dispose(&v11, 8);
}

- (id)suggestionPhrasesForQueries:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2676;
  v24 = __Block_byref_object_dispose__2677;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2676;
  v18 = __Block_byref_object_dispose__2677;
  v19 = 0;
  connection = self->_connection;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60___LNMetadataProviderXPC_suggestionPhrasesForQueries_error___block_invoke;
  v13[3] = &unk_1E74B2658;
  v13[4] = &v20;
  v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60___LNMetadataProviderXPC_suggestionPhrasesForQueries_error___block_invoke_2;
  v12[3] = &unk_1E74B1330;
  v12[4] = &v14;
  v12[5] = &v20;
  [v8 suggestionPhrasesForQueries:v6 reply:v12];

  v9 = v15[5];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    *a4 = v21[5];
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v9;
}

- (id)examplePhrasesForBundleIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2676;
  v24 = __Block_byref_object_dispose__2677;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2676;
  v18 = __Block_byref_object_dispose__2677;
  v19 = 0;
  connection = self->_connection;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66___LNMetadataProviderXPC_examplePhrasesForBundleIdentifier_error___block_invoke;
  v13[3] = &unk_1E74B2658;
  v13[4] = &v20;
  v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66___LNMetadataProviderXPC_examplePhrasesForBundleIdentifier_error___block_invoke_2;
  v12[3] = &unk_1E74B11B0;
  v12[4] = &v14;
  v12[5] = &v20;
  [v8 examplePhrasesForBundleIdentifier:v6 reply:v12];

  v9 = v15[5];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    *a4 = v21[5];
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v9;
}

- (id)appShortcutsProviderMangledTypeNameForBundleIdentifier:(id)a3 error:(id *)a4
{
  v12 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v6 = getLNLogCategoryMetadata();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a2);
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_19763D000, v6, OS_LOG_TYPE_ERROR, "%@ not supported via XPC", &v10, 0xCu);
    }

    *a4 = NSErrorFromMetadataProviderError(9000);
  }

  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

- (int64_t)metadataVersionForBundleIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2676;
  v21 = __Block_byref_object_dispose__2677;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  connection = self->_connection;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67___LNMetadataProviderXPC_metadataVersionForBundleIdentifier_error___block_invoke;
  v12[3] = &unk_1E74B2658;
  v12[4] = &v17;
  v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67___LNMetadataProviderXPC_metadataVersionForBundleIdentifier_error___block_invoke_2;
  v11[3] = &unk_1E74B0B48;
  v11[4] = &v13;
  v11[5] = &v17;
  [v8 metadataVersionForBundleIdentifier:v6 reply:v11];

  *a4 = v18[5];
  v9 = v14[3];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v9;
}

- (id)entitiesForBundleIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2676;
  v24 = __Block_byref_object_dispose__2677;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2676;
  v18 = __Block_byref_object_dispose__2677;
  v19 = 0;
  connection = self->_connection;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60___LNMetadataProviderXPC_entitiesForBundleIdentifier_error___block_invoke;
  v13[3] = &unk_1E74B2658;
  v13[4] = &v20;
  v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60___LNMetadataProviderXPC_entitiesForBundleIdentifier_error___block_invoke_2;
  v12[3] = &unk_1E74B11B0;
  v12[4] = &v14;
  v12[5] = &v20;
  [v8 entitiesForBundleIdentifier:v6 reply:v12];

  v9 = v15[5];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    *a4 = v21[5];
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v9;
}

- (id)entitiesWithError:(id *)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2676;
  v21 = __Block_byref_object_dispose__2677;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2676;
  v15 = __Block_byref_object_dispose__2677;
  v16 = 0;
  connection = self->_connection;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44___LNMetadataProviderXPC_entitiesWithError___block_invoke;
  v10[3] = &unk_1E74B2658;
  v10[4] = &v17;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44___LNMetadataProviderXPC_entitiesWithError___block_invoke_2;
  v9[3] = &unk_1E74B1330;
  v9[4] = &v11;
  v9[5] = &v17;
  [v5 entitiesWithReply:v9];

  v6 = v12[5];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    *a3 = v18[5];
  }

  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v6;
}

- (id)enumsForBundleIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2676;
  v24 = __Block_byref_object_dispose__2677;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2676;
  v18 = __Block_byref_object_dispose__2677;
  v19 = 0;
  connection = self->_connection;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57___LNMetadataProviderXPC_enumsForBundleIdentifier_error___block_invoke;
  v13[3] = &unk_1E74B2658;
  v13[4] = &v20;
  v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57___LNMetadataProviderXPC_enumsForBundleIdentifier_error___block_invoke_2;
  v12[3] = &unk_1E74B11B0;
  v12[4] = &v14;
  v12[5] = &v20;
  [v8 enumsForBundleIdentifier:v6 reply:v12];

  v9 = v15[5];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    *a4 = v21[5];
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v9;
}

- (id)enumsWithError:(id *)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2676;
  v21 = __Block_byref_object_dispose__2677;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2676;
  v15 = __Block_byref_object_dispose__2677;
  v16 = 0;
  connection = self->_connection;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41___LNMetadataProviderXPC_enumsWithError___block_invoke;
  v10[3] = &unk_1E74B2658;
  v10[4] = &v17;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41___LNMetadataProviderXPC_enumsWithError___block_invoke_2;
  v9[3] = &unk_1E74B1330;
  v9[4] = &v11;
  v9[5] = &v17;
  [v5 enumsWithReply:v9];

  v6 = v12[5];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    *a3 = v18[5];
  }

  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v6;
}

- (id)queriesWithCapabilities:(unint64_t)a3 inputValueType:(id)a4 resultValueType:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__2676;
  v29 = __Block_byref_object_dispose__2677;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__2676;
  v23 = __Block_byref_object_dispose__2677;
  v24 = 0;
  connection = self->_connection;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __87___LNMetadataProviderXPC_queriesWithCapabilities_inputValueType_resultValueType_error___block_invoke;
  v18[3] = &unk_1E74B2658;
  v18[4] = &v25;
  v13 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __87___LNMetadataProviderXPC_queriesWithCapabilities_inputValueType_resultValueType_error___block_invoke_2;
  v17[3] = &unk_1E74B1330;
  v17[4] = &v19;
  v17[5] = &v25;
  [v13 queriesWithCapabilities:a3 inputValueType:v10 resultValueType:v11 reply:v17];

  v14 = v20[5];
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    *a6 = v26[5];
  }

  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v14;
}

- (id)queriesForBundleIdentifier:(id)a3 ofType:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__2676;
  v27 = __Block_byref_object_dispose__2677;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2676;
  v21 = __Block_byref_object_dispose__2677;
  v22 = 0;
  connection = self->_connection;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66___LNMetadataProviderXPC_queriesForBundleIdentifier_ofType_error___block_invoke;
  v16[3] = &unk_1E74B2658;
  v16[4] = &v23;
  v11 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __66___LNMetadataProviderXPC_queriesForBundleIdentifier_ofType_error___block_invoke_2;
  v15[3] = &unk_1E74B11B0;
  v15[4] = &v17;
  v15[5] = &v23;
  [v11 queriesForBundleIdentifier:v8 ofType:v9 reply:v15];

  v12 = v18[5];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    *a5 = v24[5];
  }

  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v12;
}

- (id)queriesWithError:(id *)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2676;
  v21 = __Block_byref_object_dispose__2677;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2676;
  v15 = __Block_byref_object_dispose__2677;
  v16 = 0;
  connection = self->_connection;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43___LNMetadataProviderXPC_queriesWithError___block_invoke;
  v10[3] = &unk_1E74B2658;
  v10[4] = &v17;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43___LNMetadataProviderXPC_queriesWithError___block_invoke_2;
  v9[3] = &unk_1E74B1330;
  v9[4] = &v11;
  v9[5] = &v17;
  [v5 queriesWithReply:v9];

  v6 = v12[5];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    *a3 = v18[5];
  }

  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v6;
}

- (id)actionsForBundleIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2676;
  v24 = __Block_byref_object_dispose__2677;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2676;
  v18 = __Block_byref_object_dispose__2677;
  v19 = 0;
  connection = self->_connection;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59___LNMetadataProviderXPC_actionsForBundleIdentifier_error___block_invoke;
  v13[3] = &unk_1E74B2658;
  v13[4] = &v20;
  v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59___LNMetadataProviderXPC_actionsForBundleIdentifier_error___block_invoke_2;
  v12[3] = &unk_1E74B11B0;
  v12[4] = &v14;
  v12[5] = &v20;
  [v8 actionsForBundleIdentifier:v6 reply:v12];

  v9 = v15[5];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    *a4 = v21[5];
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v9;
}

- (id)actionsWithError:(id *)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2676;
  v21 = __Block_byref_object_dispose__2677;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2676;
  v15 = __Block_byref_object_dispose__2677;
  v16 = 0;
  connection = self->_connection;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43___LNMetadataProviderXPC_actionsWithError___block_invoke;
  v10[3] = &unk_1E74B2658;
  v10[4] = &v17;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43___LNMetadataProviderXPC_actionsWithError___block_invoke_2;
  v9[3] = &unk_1E74B1330;
  v9[4] = &v11;
  v9[5] = &v17;
  [v5 actionsWithReply:v9];

  v6 = v12[5];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    *a3 = v18[5];
  }

  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v6;
}

- (id)bundleRegistrationsWithError:(id *)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2676;
  v21 = __Block_byref_object_dispose__2677;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2676;
  v15 = __Block_byref_object_dispose__2677;
  v16 = 0;
  connection = self->_connection;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55___LNMetadataProviderXPC_bundleRegistrationsWithError___block_invoke;
  v10[3] = &unk_1E74B2658;
  v10[4] = &v17;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55___LNMetadataProviderXPC_bundleRegistrationsWithError___block_invoke_2;
  v9[3] = &unk_1E74B11B0;
  v9[4] = &v11;
  v9[5] = &v17;
  [v5 bundleRegistrationsWithReply:v9];

  v6 = v12[5];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    *a3 = v18[5];
  }

  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v6;
}

- (id)bundlesWithError:(id *)a3
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2676;
  v21 = __Block_byref_object_dispose__2677;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2676;
  v15 = __Block_byref_object_dispose__2677;
  v16 = 0;
  connection = self->_connection;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43___LNMetadataProviderXPC_bundlesWithError___block_invoke;
  v10[3] = &unk_1E74B2658;
  v10[4] = &v17;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43___LNMetadataProviderXPC_bundlesWithError___block_invoke_2;
  v9[3] = &unk_1E74B11B0;
  v9[4] = &v11;
  v9[5] = &v17;
  [v5 bundlesWithReply:v9];

  v6 = v12[5];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    *a3 = v18[5];
  }

  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v6;
}

- (id)entityForBundleIdentifier:(id)a3 withEntityIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__2676;
  v29 = __Block_byref_object_dispose__2677;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__2676;
  v23 = __Block_byref_object_dispose__2677;
  v24 = 0;
  connection = self->_connection;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __79___LNMetadataProviderXPC_entityForBundleIdentifier_withEntityIdentifier_error___block_invoke;
  v18[3] = &unk_1E74B2658;
  v18[4] = &v25;
  v11 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __79___LNMetadataProviderXPC_entityForBundleIdentifier_withEntityIdentifier_error___block_invoke_2;
  v17[3] = &unk_1E74B0B20;
  v17[4] = &v19;
  v17[5] = &v25;
  [v11 entityForBundleIdentifier:v8 withEntityIdentifier:v9 reply:v17];

  v12 = v20[5];
  if (v12)
  {
    v13 = v12;
  }

  else if (a5)
  {
    v15 = v26[5];
    if (v15)
    {
      *a5 = v15;
    }

    else
    {
      v16 = NSErrorFromMetadataProviderError(9004);
      *a5 = v16;
    }
  }

  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v12;
}

- (id)entityIdentifiersForBundleIdentifier:(id)a3 error:(id *)a4
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
  connection = self->_connection;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69___LNMetadataProviderXPC_entityIdentifiersForBundleIdentifier_error___block_invoke;
  v15[3] = &unk_1E74B2658;
  v15[4] = &v22;
  v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69___LNMetadataProviderXPC_entityIdentifiersForBundleIdentifier_error___block_invoke_2;
  v14[3] = &unk_1E74B11B0;
  v14[4] = &v16;
  v14[5] = &v22;
  [v8 entityIdentifiersForBundleIdentifier:v6 reply:v14];

  v9 = v17[5];
  if (v9)
  {
    v10 = v9;
  }

  else if (a4)
  {
    v12 = v23[5];
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

  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v9;
}

- (id)openCollectionActionsForEntityTypeIdentifier:(id)a3 capabilities:(int64_t)a4 bundleIdentifier:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__2676;
  v29 = __Block_byref_object_dispose__2677;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__2676;
  v23 = __Block_byref_object_dispose__2677;
  v24 = 0;
  connection = self->_connection;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __107___LNMetadataProviderXPC_openCollectionActionsForEntityTypeIdentifier_capabilities_bundleIdentifier_error___block_invoke;
  v18[3] = &unk_1E74B2658;
  v18[4] = &v25;
  v13 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __107___LNMetadataProviderXPC_openCollectionActionsForEntityTypeIdentifier_capabilities_bundleIdentifier_error___block_invoke_2;
  v17[3] = &unk_1E74B11B0;
  v17[4] = &v19;
  v17[5] = &v25;
  [v13 openCollectionActionsForEntityTypeIdentifier:v10 capabilities:a4 bundleIdentifier:v11 reply:v17];

  v14 = v20[5];
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    *a6 = v26[5];
  }

  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v14;
}

- (id)openActionsForTypeIdentifier:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__2676;
  v27 = __Block_byref_object_dispose__2677;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2676;
  v21 = __Block_byref_object_dispose__2677;
  v22 = 0;
  connection = self->_connection;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __78___LNMetadataProviderXPC_openActionsForTypeIdentifier_bundleIdentifier_error___block_invoke;
  v16[3] = &unk_1E74B2658;
  v16[4] = &v23;
  v11 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78___LNMetadataProviderXPC_openActionsForTypeIdentifier_bundleIdentifier_error___block_invoke_2;
  v15[3] = &unk_1E74B11B0;
  v15[4] = &v17;
  v15[5] = &v23;
  [v11 openActionsForTypeIdentifier:v8 bundleIdentifier:v9 reply:v15];

  v12 = v18[5];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    *a5 = v24[5];
  }

  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v12;
}

- (id)actionIdentifiersForBundleIdentifier:(id)a3 error:(id *)a4
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
  connection = self->_connection;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69___LNMetadataProviderXPC_actionIdentifiersForBundleIdentifier_error___block_invoke;
  v15[3] = &unk_1E74B2658;
  v15[4] = &v22;
  v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69___LNMetadataProviderXPC_actionIdentifiersForBundleIdentifier_error___block_invoke_2;
  v14[3] = &unk_1E74B11B0;
  v14[4] = &v16;
  v14[5] = &v22;
  [v8 actionIdentifiersForBundleIdentifier:v6 reply:v14];

  v9 = v17[5];
  if (v9)
  {
    v10 = v9;
  }

  else if (a4)
  {
    v12 = v23[5];
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

  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v9;
}

- (id)actionsWithFullyQualifiedIdentifiers:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2676;
  v24 = __Block_byref_object_dispose__2677;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2676;
  v18 = __Block_byref_object_dispose__2677;
  v19 = 0;
  connection = self->_connection;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69___LNMetadataProviderXPC_actionsWithFullyQualifiedIdentifiers_error___block_invoke;
  v13[3] = &unk_1E74B2658;
  v13[4] = &v20;
  v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69___LNMetadataProviderXPC_actionsWithFullyQualifiedIdentifiers_error___block_invoke_2;
  v12[3] = &unk_1E74B1330;
  v12[4] = &v14;
  v12[5] = &v20;
  [v8 actionsWithFullyQualifiedIdentifiers:v6 reply:v12];

  v9 = v15[5];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    *a4 = v21[5];
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v9;
}

- (id)actionForBundleIdentifier:(id)a3 andActionIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__2676;
  v27 = __Block_byref_object_dispose__2677;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2676;
  v21 = __Block_byref_object_dispose__2677;
  v22 = 0;
  connection = self->_connection;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __78___LNMetadataProviderXPC_actionForBundleIdentifier_andActionIdentifier_error___block_invoke;
  v16[3] = &unk_1E74B2658;
  v16[4] = &v23;
  v11 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78___LNMetadataProviderXPC_actionForBundleIdentifier_andActionIdentifier_error___block_invoke_2;
  v15[3] = &unk_1E74B11B0;
  v15[4] = &v17;
  v15[5] = &v23;
  [v11 actionsForBundleIdentifier:v8 andActionIdentifier:v9 reply:v15];

  v12 = v18[5];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    *a5 = v24[5];
  }

  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v12;
}

- (id)actionsForBundleIdentifier:(id)a3 andActionIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__2676;
  v27 = __Block_byref_object_dispose__2677;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2676;
  v21 = __Block_byref_object_dispose__2677;
  v22 = 0;
  connection = self->_connection;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79___LNMetadataProviderXPC_actionsForBundleIdentifier_andActionIdentifier_error___block_invoke;
  v16[3] = &unk_1E74B2658;
  v16[4] = &v23;
  v11 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79___LNMetadataProviderXPC_actionsForBundleIdentifier_andActionIdentifier_error___block_invoke_2;
  v15[3] = &unk_1E74B11B0;
  v15[4] = &v17;
  v15[5] = &v23;
  [v11 actionsForBundleIdentifier:v8 andActionIdentifier:v9 reply:v15];

  v12 = v18[5];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    *a5 = v24[5];
  }

  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v12;
}

- (id)actionsConformingToSystemProtocol:(id)a3 withParametersOfTypes:(id)a4 bundleIdentifier:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
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
  connection = self->_connection;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __105___LNMetadataProviderXPC_actionsConformingToSystemProtocol_withParametersOfTypes_bundleIdentifier_error___block_invoke;
  v19[3] = &unk_1E74B2658;
  v19[4] = &v26;
  v14 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v19];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __105___LNMetadataProviderXPC_actionsConformingToSystemProtocol_withParametersOfTypes_bundleIdentifier_error___block_invoke_2;
  v18[3] = &unk_1E74B1330;
  v18[4] = &v20;
  v18[5] = &v26;
  [v14 actionsConformingToSystemProtocol:v10 withParametersOfTypes:v11 bundleIdentifier:v12 reply:v18];

  v15 = v21[5];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    *a6 = v27[5];
  }

  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);

  return v15;
}

- (id)actionsAndSystemProtocolDefaultsForBundleIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2676;
  v24 = __Block_byref_object_dispose__2677;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2676;
  v18 = __Block_byref_object_dispose__2677;
  v19 = 0;
  connection = self->_connection;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84___LNMetadataProviderXPC_actionsAndSystemProtocolDefaultsForBundleIdentifier_error___block_invoke;
  v13[3] = &unk_1E74B2658;
  v13[4] = &v20;
  v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84___LNMetadataProviderXPC_actionsAndSystemProtocolDefaultsForBundleIdentifier_error___block_invoke_2;
  v12[3] = &unk_1E74B1330;
  v12[4] = &v14;
  v12[5] = &v20;
  [v8 actionsAndSystemProtocolDefaultsForBundleIdentifier:v6 reply:v12];

  v9 = v15[5];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    *a4 = v21[5];
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v9;
}

- (id)actionsConformingToSystemProtocols:(id)a3 logicalType:(unint64_t)a4 bundleIdentifier:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__2676;
  v29 = __Block_byref_object_dispose__2677;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__2676;
  v23 = __Block_byref_object_dispose__2677;
  v24 = 0;
  connection = self->_connection;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __96___LNMetadataProviderXPC_actionsConformingToSystemProtocols_logicalType_bundleIdentifier_error___block_invoke;
  v18[3] = &unk_1E74B2658;
  v18[4] = &v25;
  v13 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __96___LNMetadataProviderXPC_actionsConformingToSystemProtocols_logicalType_bundleIdentifier_error___block_invoke_2;
  v17[3] = &unk_1E74B1330;
  v17[4] = &v19;
  v17[5] = &v25;
  [v13 actionsConformingToSystemProtocols:v10 logicalType:a4 bundleIdentifier:v11 reply:v17];

  v14 = v20[5];
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    *a6 = v26[5];
  }

  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v14;
}

- (id)queryForBundleIdentifier:(id)a3 ofType:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__2676;
  v27 = __Block_byref_object_dispose__2677;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2676;
  v21 = __Block_byref_object_dispose__2677;
  v22 = 0;
  connection = self->_connection;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __64___LNMetadataProviderXPC_queryForBundleIdentifier_ofType_error___block_invoke;
  v16[3] = &unk_1E74B2658;
  v16[4] = &v23;
  v11 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64___LNMetadataProviderXPC_queryForBundleIdentifier_ofType_error___block_invoke_2;
  v15[3] = &unk_1E74B0AF8;
  v15[4] = &v17;
  v15[5] = &v23;
  [v11 queryForBundleIdentifier:v8 ofType:v9 reply:v15];

  v12 = v18[5];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    *a5 = v24[5];
  }

  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v12;
}

- (id)queriesForSchemaIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2676;
  v24 = __Block_byref_object_dispose__2677;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2676;
  v18 = __Block_byref_object_dispose__2677;
  v19 = 0;
  connection = self->_connection;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59___LNMetadataProviderXPC_queriesForSchemaIdentifier_error___block_invoke;
  v13[3] = &unk_1E74B2658;
  v13[4] = &v20;
  v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59___LNMetadataProviderXPC_queriesForSchemaIdentifier_error___block_invoke_2;
  v12[3] = &unk_1E74B1330;
  v12[4] = &v14;
  v12[5] = &v20;
  [v8 queriesForSchemaIdentifier:v6 completionHandler:v12];

  v9 = v15[5];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    *a4 = v21[5];
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v9;
}

- (id)entitiesForSchemaIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2676;
  v24 = __Block_byref_object_dispose__2677;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2676;
  v18 = __Block_byref_object_dispose__2677;
  v19 = 0;
  connection = self->_connection;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60___LNMetadataProviderXPC_entitiesForSchemaIdentifier_error___block_invoke;
  v13[3] = &unk_1E74B2658;
  v13[4] = &v20;
  v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60___LNMetadataProviderXPC_entitiesForSchemaIdentifier_error___block_invoke_2;
  v12[3] = &unk_1E74B1330;
  v12[4] = &v14;
  v12[5] = &v20;
  [v8 entitiesForSchemaIdentifier:v6 completionHandler:v12];

  v9 = v15[5];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    *a4 = v21[5];
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v9;
}

- (id)enumsForSchemaIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2676;
  v24 = __Block_byref_object_dispose__2677;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2676;
  v18 = __Block_byref_object_dispose__2677;
  v19 = 0;
  connection = self->_connection;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57___LNMetadataProviderXPC_enumsForSchemaIdentifier_error___block_invoke;
  v13[3] = &unk_1E74B2658;
  v13[4] = &v20;
  v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57___LNMetadataProviderXPC_enumsForSchemaIdentifier_error___block_invoke_2;
  v12[3] = &unk_1E74B1330;
  v12[4] = &v14;
  v12[5] = &v20;
  [v8 enumsForSchemaIdentifier:v6 completionHandler:v12];

  v9 = v15[5];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    *a4 = v21[5];
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v9;
}

- (id)actionsForSchemaIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2676;
  v24 = __Block_byref_object_dispose__2677;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2676;
  v18 = __Block_byref_object_dispose__2677;
  v19 = 0;
  connection = self->_connection;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59___LNMetadataProviderXPC_actionsForSchemaIdentifier_error___block_invoke;
  v13[3] = &unk_1E74B2658;
  v13[4] = &v20;
  v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59___LNMetadataProviderXPC_actionsForSchemaIdentifier_error___block_invoke_2;
  v12[3] = &unk_1E74B1330;
  v12[4] = &v14;
  v12[5] = &v20;
  [v8 actionsForSchemaIdentifier:v6 completionHandler:v12];

  v9 = v15[5];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    *a4 = v21[5];
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v9;
}

- (BOOL)enumerateQueriesForBundleIdentifier:(id)a3 usingBlock:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = NSErrorFromMetadataProviderError(9009);
  }

  return 0;
}

- (BOOL)enumerateEntitiesForBundleIdentifier:(id)a3 usingBlock:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = NSErrorFromMetadataProviderError(9009);
  }

  return 0;
}

- (BOOL)enumerateEnumsForBundleIdentifier:(id)a3 usingBlock:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = NSErrorFromMetadataProviderError(9009);
  }

  return 0;
}

- (BOOL)enumerateActionsForBundleIdentifier:(id)a3 usingBlock:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = NSErrorFromMetadataProviderError(9009);
  }

  return 0;
}

- (_LNMetadataProviderXPC)initWithConnection:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _LNMetadataProviderXPC;
  v5 = [(_LNMetadataProviderXPC *)&v8 init];
  connection = v5->_connection;
  v5->_connection = v4;

  return v5;
}

@end