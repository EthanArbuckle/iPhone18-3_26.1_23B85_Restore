@interface BRFrameworkContainerHelper
+ (id)sharedHelper;
- (id)fetchAllContainersByIDWithError:(id *)a3;
- (id)fetchContainerForMangledID:(id)a3 personaID:(id)a4;
- (unsigned)br_capabilityToMoveFromURL:(id)a3 toNewParent:(id)a4 error:(id *)a5;
- (void)_resolveItemIdentifierAtURL:(id)a3 withHandler:(id)a4;
@end

@implementation BRFrameworkContainerHelper

+ (id)sharedHelper
{
  if (sharedHelper_onceToken != -1)
  {
    +[BRFrameworkContainerHelper sharedHelper];
  }

  v3 = sharedHelper_instance;

  return v3;
}

uint64_t __42__BRFrameworkContainerHelper_sharedHelper__block_invoke()
{
  sharedHelper_instance = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (id)fetchAllContainersByIDWithError:(id *)a3
{
  v4 = +[BRDaemonConnection secondaryConnection];
  v5 = [v4 newSyncProxy];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__BRFrameworkContainerHelper_fetchAllContainersByIDWithError___block_invoke;
  v10[3] = &unk_1E7A152E8;
  v6 = v5;
  v11 = v6;
  [v6 getContainersByID:v10];
  if (a3)
  {
    *a3 = [v6 error];
  }

  v7 = [v6 error];
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v6 result];
  }

  return v8;
}

- (id)fetchContainerForMangledID:(id)a3 personaID:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = a4;
    v7 = +[BRDaemonConnection secondaryConnection];
    v8 = [v7 newSyncProxy];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __67__BRFrameworkContainerHelper_fetchContainerForMangledID_personaID___block_invoke;
    v20[3] = &unk_1E7A16778;
    v9 = v8;
    v21 = v9;
    [v9 getContainerForMangledID:v5 personaID:v6 reply:v20];

    v10 = [v9 result];
    v11 = [v9 error];
    if (v11)
    {
      v12 = v11;
      v13 = [v9 error];
      v14 = [v13 br_isCloudDocsErrorCode:2];

      if ((v14 & 1) == 0)
      {
        v15 = brc_bread_crumbs("[BRFrameworkContainerHelper fetchContainerForMangledID:personaID:]", 3057);
        v16 = brc_default_log(0, 0);
        if (os_log_type_enabled(v16, 0x90u))
        {
          v19 = [v9 error];
          *buf = 138412802;
          v23 = v5;
          v24 = 2112;
          v25 = v19;
          v26 = 2112;
          v27 = v15;
          _os_log_error_impl(&dword_1AE2A9000, v16, 0x90u, "[ERROR] Failed getting container for MangledID: %@, error: %@%@", buf, 0x20u);
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)_resolveItemIdentifierAtURL:(id)a3 withHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__9;
  v31 = __Block_byref_object_dispose__9;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__9;
  v25 = __Block_byref_object_dispose__9;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__9;
  v19 = __Block_byref_object_dispose__9;
  v20 = 0;
  v7 = dispatch_semaphore_create(0);
  v8 = MEMORY[0x1E6967508];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__BRFrameworkContainerHelper__resolveItemIdentifierAtURL_withHandler___block_invoke;
  v10[3] = &unk_1E7A15050;
  v12 = &v15;
  v13 = &v27;
  v14 = &v21;
  v9 = v7;
  v11 = v9;
  [v8 getIdentifierForUserVisibleFileAtURL:v5 completionHandler:v10];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v6[2](v6, v28[5], v22[5], v16[5]);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
}

void __70__BRFrameworkContainerHelper__resolveItemIdentifierAtURL_withHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  v15 = a4;
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v11 = v7;

  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (unsigned)br_capabilityToMoveFromURL:(id)a3 toNewParent:(id)a4 error:(id *)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__9;
  v31 = __Block_byref_object_dispose__9;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __75__BRFrameworkContainerHelper_br_capabilityToMoveFromURL_toNewParent_error___block_invoke;
  v19[3] = &unk_1E7A167C8;
  v21 = &v23;
  v10 = v8;
  v20 = v10;
  v22 = &v27;
  [(BRFrameworkContainerHelper *)self _resolveItemIdentifierAtURL:v9 withHandler:v19];
  v11 = v28[5];
  if (v11)
  {
    v12 = brc_bread_crumbs("[BRFrameworkContainerHelper br_capabilityToMoveFromURL:toNewParent:error:]", 3098);
    v13 = brc_default_log(0, 0);
    if (os_log_type_enabled(v13, 0x90u))
    {
      v18 = "(passed to caller)";
      *buf = 136315906;
      v34 = "[BRFrameworkContainerHelper br_capabilityToMoveFromURL:toNewParent:error:]";
      v35 = 2080;
      if (!a5)
      {
        v18 = "(ignored by caller)";
      }

      v36 = v18;
      v37 = 2112;
      v38 = v11;
      v39 = 2112;
      v40 = v12;
      _os_log_error_impl(&dword_1AE2A9000, v13, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (a5)
  {
    v14 = v11;
    *a5 = v11;
  }

  v15 = *(v24 + 12);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

void __75__BRFrameworkContainerHelper_br_capabilityToMoveFromURL_toNewParent_error___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    *(*(*(a1 + 40) + 8) + 24) = 8;
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = a3;
    v8 = a2;
    v9 = [v6 _br_itemServiceSyncProxy];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __75__BRFrameworkContainerHelper_br_capabilityToMoveFromURL_toNewParent_error___block_invoke_2;
    v10[3] = &unk_1E7A167A0;
    v11 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
    [v9 capabilityWhenTryingToReparentToNewParent:v8 domain:v7 reply:v10];
  }
}

void __75__BRFrameworkContainerHelper_br_capabilityToMoveFromURL_toNewParent_error___block_invoke_2(uint64_t a1, __int16 a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

@end