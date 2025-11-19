@interface LNAutoShortcutsProvider
+ (id)sharedInstance;
- (LNAutoShortcutsProvider)initWithOptions:(int64_t)a3;
- (id)autoShortcutsForApplicationRecord:(id)a3 localeIdentifier:(id)a4;
- (id)autoShortcutsForLocaleIdentifier:(id)a3 error:(id *)a4;
- (id)propertiesForIdentifiers:(id)a3 error:(id *)a4;
- (void)autoShortcutsForBundleIdentifier:(id)a3 localeIdentifier:(id)a4 completion:(id)a5;
- (void)autoShortcutsForLocaleIdentifier:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)retrieveActionForBundleIdentifier:(id)a3 appShortcutIdentifier:(id)a4 parameterIdentifier:(id)a5 completion:(id)a6;
- (void)retrieveActionForBundleIdentifier:(id)a3 basePhraseTemplate:(id)a4 actionIdentifier:(id)a5 parameterIdentifier:(id)a6 completion:(id)a7;
- (void)retrieveActionForLocalizedPhrase:(id)a3 completion:(id)a4;
@end

@implementation LNAutoShortcutsProvider

- (void)dealloc
{
  v3 = getLNLogCategoryGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19763D000, v3, OS_LOG_TYPE_DEBUG, "-dealloc called on LNAutoShortcutsProvider", buf, 2u);
  }

  [(NSXPCConnection *)self->_connection invalidate];
  v4.receiver = self;
  v4.super_class = LNAutoShortcutsProvider;
  [(LNAutoShortcutsProvider *)&v4 dealloc];
}

- (id)propertiesForIdentifiers:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 count])
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__5528;
    v32 = __Block_byref_object_dispose__5529;
    v33 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__5528;
    v26 = __Block_byref_object_dispose__5529;
    v27 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__LNAutoShortcutsProvider_propertiesForIdentifiers_error___block_invoke;
    aBlock[3] = &unk_1E74B1228;
    v20 = &v22;
    aBlock[4] = self;
    v7 = v6;
    v19 = v7;
    v21 = &v28;
    v8 = _Block_copy(aBlock);
    v9 = _os_activity_create(&dword_19763D000, "appintents:fetch properties", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__LNAutoShortcutsProvider_propertiesForIdentifiers_error___block_invoke_2;
    block[3] = &unk_1E74B1250;
    block[4] = self;
    v16 = &v22;
    v17 = &v28;
    v14 = v7;
    v15 = v8;
    os_activity_apply(v9, block);

    v10 = v23[5];
    if (v10)
    {
      v11 = v10;
    }

    else if (a4)
    {
      *a4 = v29[5];
    }

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __58__LNAutoShortcutsProvider_propertiesForIdentifiers_error___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 24);
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v3 propertiesForIdentifiers:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __58__LNAutoShortcutsProvider_propertiesForIdentifiers_error___block_invoke_2(void *a1)
{
  v2 = *(a1[4] + 16);
  if (v2)
  {
    v3 = a1[5];
    v4 = *(a1[8] + 8);
    obj = *(v4 + 40);
    v5 = [v2 propertiesForIdentifiers:v3 error:&obj];
    objc_storeStrong((v4 + 40), obj);
    v6 = *(a1[7] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (!*(*(a1[7] + 8) + 40))
    {
      (*(a1[6] + 16))();
    }
  }

  else
  {
    v8 = *(a1[6] + 16);

    v8();
  }
}

- (id)autoShortcutsForLocaleIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__5528;
  v33 = __Block_byref_object_dispose__5529;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__5528;
  v27 = __Block_byref_object_dispose__5529;
  v28 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__LNAutoShortcutsProvider_autoShortcutsForLocaleIdentifier_error___block_invoke;
  aBlock[3] = &unk_1E74B1228;
  v21 = &v23;
  aBlock[4] = self;
  v7 = v6;
  v20 = v7;
  v22 = &v29;
  v8 = _Block_copy(aBlock);
  v9 = _os_activity_create(&dword_19763D000, "appintents:fetch all app shortcuts", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__LNAutoShortcutsProvider_autoShortcutsForLocaleIdentifier_error___block_invoke_2;
  block[3] = &unk_1E74B1250;
  block[4] = self;
  v17 = &v23;
  v10 = v7;
  v18 = &v29;
  v15 = v10;
  v16 = v8;
  os_activity_apply(v9, block);

  v11 = v24[5];
  if (v11)
  {
    v12 = v11;
  }

  else if (a4)
  {
    *a4 = v30[5];
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v11;
}

void __66__LNAutoShortcutsProvider_autoShortcutsForLocaleIdentifier_error___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 24);
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v3 autoShortcutsForLocaleIdentifier:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __66__LNAutoShortcutsProvider_autoShortcutsForLocaleIdentifier_error___block_invoke_2(void *a1)
{
  v2 = *(a1[4] + 16);
  if (v2)
  {
    v3 = a1[5];
    v4 = *(a1[8] + 8);
    obj = *(v4 + 40);
    v5 = [v2 autoShortcutsForLocaleIdentifier:v3 error:&obj];
    objc_storeStrong((v4 + 40), obj);
    v6 = *(a1[7] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (!*(*(a1[7] + 8) + 40))
    {
      (*(a1[6] + 16))();
    }
  }

  else
  {
    v8 = *(a1[6] + 16);

    v8();
  }
}

- (void)autoShortcutsForLocaleIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_19763D000, "appintents:fetch all app shortcuts", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__LNAutoShortcutsProvider_autoShortcutsForLocaleIdentifier_completion___block_invoke;
  block[3] = &unk_1E74B2580;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  os_activity_apply(v8, block);
}

void __71__LNAutoShortcutsProvider_autoShortcutsForLocaleIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __71__LNAutoShortcutsProvider_autoShortcutsForLocaleIdentifier_completion___block_invoke_2;
    v8[3] = &unk_1E74B1200;
    v8[4] = v2;
    v9 = v4;
    v10 = *(a1 + 48);
    [v3 autoShortcutsForLocaleIdentifier:v9 completion:v8];
  }

  else
  {
    v5 = *(v2 + 24);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);

    [v5 autoShortcutsForLocaleIdentifier:v6 completion:v7];
  }
}

uint64_t __71__LNAutoShortcutsProvider_autoShortcutsForLocaleIdentifier_completion___block_invoke_2(void *a1, uint64_t a2)
{
  if (a2)
  {
    return (*(a1[6] + 16))();
  }

  else
  {
    return [*(a1[4] + 24) autoShortcutsForLocaleIdentifier:a1[5] completion:a1[6]];
  }
}

- (id)autoShortcutsForApplicationRecord:(id)a3 localeIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__5528;
  v26[4] = __Block_byref_object_dispose__5529;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__5528;
  v24 = __Block_byref_object_dispose__5529;
  v25 = 0;
  v8 = _os_activity_create(&dword_19763D000, "appintents:fetch app shortcuts", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__LNAutoShortcutsProvider_autoShortcutsForApplicationRecord_localeIdentifier___block_invoke;
  block[3] = &unk_1E74B11D8;
  v15 = v6;
  v16 = self;
  v17 = v7;
  v18 = v26;
  v19 = &v20;
  v9 = v7;
  v10 = v6;
  os_activity_apply(v8, block);

  v11 = v21[5];
  if (!v11)
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  v12 = v11;
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(v26, 8);

  return v12;
}

void __78__LNAutoShortcutsProvider_autoShortcutsForApplicationRecord_localeIdentifier___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) bundleIdentifier];
  v3 = *(*(a1 + 40) + 16);
  if (v3)
  {
    v4 = *(a1 + 48);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __78__LNAutoShortcutsProvider_autoShortcutsForApplicationRecord_localeIdentifier___block_invoke_2;
    v14[3] = &unk_1E74B11B0;
    v15 = *(a1 + 56);
    [v3 autoShortcutsForBundleIdentifier:v2 localeIdentifier:v4 completion:v14];
  }

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v5 = *(*(a1 + 40) + 8);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __78__LNAutoShortcutsProvider_autoShortcutsForApplicationRecord_localeIdentifier___block_invoke_3;
    v13[3] = &unk_1E74B2658;
    v13[4] = *(a1 + 56);
    v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v13];
    v7 = *(a1 + 48);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78__LNAutoShortcutsProvider_autoShortcutsForApplicationRecord_localeIdentifier___block_invoke_4;
    v11[3] = &unk_1E74B11B0;
    v12 = vextq_s8(*(a1 + 56), *(a1 + 56), 8uLL);
    [v6 autoShortcutsForBundleIdentifier:v2 localeIdentifier:v7 completionHandler:v11];

    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v8 = getLNLogCategoryGeneral();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = *(*(*(a1 + 56) + 8) + 40);
        *buf = 138412290;
        v17 = v9;
        _os_log_impl(&dword_19763D000, v8, OS_LOG_TYPE_ERROR, "Failed to retrieve app shortucts with error, returning empty array: %@", buf, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __78__LNAutoShortcutsProvider_autoShortcutsForApplicationRecord_localeIdentifier___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __78__LNAutoShortcutsProvider_autoShortcutsForApplicationRecord_localeIdentifier___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)retrieveActionForBundleIdentifier:(id)a3 appShortcutIdentifier:(id)a4 parameterIdentifier:(id)a5 completion:(id)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = getLNLogCategoryGeneral();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v35 = v10;
    v36 = 2112;
    v37 = v11;
    v38 = 2112;
    v39 = v12;
    _os_log_impl(&dword_19763D000, v14, OS_LOG_TYPE_DEBUG, "Fetching action for bundleIdentifier: %@ appShortcutIdentifier: %@ parameterIdentifier: %@", buf, 0x20u);
  }

  connection = self->_connection;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __114__LNAutoShortcutsProvider_retrieveActionForBundleIdentifier_appShortcutIdentifier_parameterIdentifier_completion___block_invoke;
  v32[3] = &unk_1E74B2848;
  v16 = v13;
  v33 = v16;
  v17 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v32];
  v18 = _os_activity_create(&dword_19763D000, "appintents:retrieve action for appshortcut identifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __114__LNAutoShortcutsProvider_retrieveActionForBundleIdentifier_appShortcutIdentifier_parameterIdentifier_completion___block_invoke_27;
  block[3] = &unk_1E74B1188;
  v26 = v17;
  v27 = v10;
  v28 = v11;
  v29 = v12;
  v30 = self;
  v31 = v16;
  v19 = v16;
  v20 = v12;
  v21 = v11;
  v22 = v10;
  v23 = v17;
  os_activity_apply(v18, block);

  v24 = *MEMORY[0x1E69E9840];
}

void __114__LNAutoShortcutsProvider_retrieveActionForBundleIdentifier_appShortcutIdentifier_parameterIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getLNLogCategoryGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_ERROR, "Got an error from XPCConnection to DaemonRegistryService: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __114__LNAutoShortcutsProvider_retrieveActionForBundleIdentifier_appShortcutIdentifier_parameterIdentifier_completion___block_invoke_27(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __114__LNAutoShortcutsProvider_retrieveActionForBundleIdentifier_appShortcutIdentifier_parameterIdentifier_completion___block_invoke_2;
  v6[3] = &unk_1E74B1160;
  v5 = a1[9];
  v6[4] = a1[8];
  v7 = v5;
  [v1 actionForBundleIdentifier:v2 appShortcutIdentifier:v3 parameterIdentifier:v4 completionHandler:v6];
}

- (void)retrieveActionForBundleIdentifier:(id)a3 basePhraseTemplate:(id)a4 actionIdentifier:(id)a5 parameterIdentifier:(id)a6 completion:(id)a7
{
  v47 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = getLNLogCategoryGeneral();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v40 = v12;
    v41 = 2112;
    v42 = v13;
    v43 = 2112;
    v44 = v14;
    v45 = 2112;
    v46 = v15;
  }

  connection = self->_connection;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __128__LNAutoShortcutsProvider_retrieveActionForBundleIdentifier_basePhraseTemplate_actionIdentifier_parameterIdentifier_completion___block_invoke;
  v37[3] = &unk_1E74B2848;
  v19 = v16;
  v38 = v19;
  v20 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v37];
  v21 = _os_activity_create(&dword_19763D000, "appintents:retrieve action for actionId, parameterId", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __128__LNAutoShortcutsProvider_retrieveActionForBundleIdentifier_basePhraseTemplate_actionIdentifier_parameterIdentifier_completion___block_invoke_26;
  v29[3] = &unk_1E74B1138;
  v30 = v20;
  v31 = v12;
  v32 = v13;
  v33 = v14;
  v35 = self;
  v36 = v19;
  v34 = v15;
  v22 = v19;
  v23 = v15;
  v24 = v14;
  v25 = v13;
  v26 = v12;
  v27 = v20;
  os_activity_apply(v21, v29);

  v28 = *MEMORY[0x1E69E9840];
}

void __128__LNAutoShortcutsProvider_retrieveActionForBundleIdentifier_basePhraseTemplate_actionIdentifier_parameterIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getLNLogCategoryGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_ERROR, "Got an error from XPCConnection to DaemonRegistryService: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __128__LNAutoShortcutsProvider_retrieveActionForBundleIdentifier_basePhraseTemplate_actionIdentifier_parameterIdentifier_completion___block_invoke_26(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __128__LNAutoShortcutsProvider_retrieveActionForBundleIdentifier_basePhraseTemplate_actionIdentifier_parameterIdentifier_completion___block_invoke_2;
  v8[3] = &unk_1E74B1160;
  v7 = *(a1 + 80);
  v8[4] = *(a1 + 72);
  v9 = v7;
  [v2 actionForBundleIdentifier:v3 basePhraseTemplate:v4 actionIdentifier:v5 parameterIdentifier:v6 completionHandler:v8];
}

- (void)retrieveActionForLocalizedPhrase:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = getLNLogCategoryGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [v6 bundleIdentifier];
    *buf = 138412290;
    v26 = v9;
    _os_log_impl(&dword_19763D000, v8, OS_LOG_TYPE_DEBUG, "Fetching action for bundleIdentifier: %@", buf, 0xCu);
  }

  connection = self->_connection;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __71__LNAutoShortcutsProvider_retrieveActionForLocalizedPhrase_completion___block_invoke;
  v23[3] = &unk_1E74B2848;
  v11 = v7;
  v24 = v11;
  v12 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v23];
  v13 = _os_activity_create(&dword_19763D000, "appintents:retrieve action for phrase", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__LNAutoShortcutsProvider_retrieveActionForLocalizedPhrase_completion___block_invoke_24;
  block[3] = &unk_1E74B12A0;
  v19 = v6;
  v20 = v12;
  v21 = self;
  v22 = v11;
  v14 = v11;
  v15 = v12;
  v16 = v6;
  os_activity_apply(v13, block);

  v17 = *MEMORY[0x1E69E9840];
}

void __71__LNAutoShortcutsProvider_retrieveActionForLocalizedPhrase_completion___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getLNLogCategoryGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_ERROR, "Got an error from XPCConnection to DaemonRegistryService: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __71__LNAutoShortcutsProvider_retrieveActionForLocalizedPhrase_completion___block_invoke_24(uint64_t a1)
{
  v2 = [*(a1 + 32) parameterIdentifier];

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) bundleIdentifier];
  v5 = [*(a1 + 32) basePhraseTemplate];
  if (v2)
  {
    v6 = [*(a1 + 32) parameterIdentifier];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __71__LNAutoShortcutsProvider_retrieveActionForLocalizedPhrase_completion___block_invoke_2;
    v12[3] = &unk_1E74B1160;
    v7 = &v13;
    v8 = *(a1 + 56);
    v12[4] = *(a1 + 48);
    v13 = v8;
    [v3 actionForBundleIdentifier:v4 basePhraseTemplate:v5 parameterIdentifier:v6 completionHandler:v12];
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __71__LNAutoShortcutsProvider_retrieveActionForLocalizedPhrase_completion___block_invoke_3;
    v10[3] = &unk_1E74B1160;
    v7 = &v11;
    v9 = *(a1 + 56);
    v10[4] = *(a1 + 48);
    v11 = v9;
    [v3 actionForBundleIdentifier:v4 basePhraseTemplate:v5 completionHandler:v10];
  }
}

- (void)autoShortcutsForBundleIdentifier:(id)a3 localeIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _os_activity_create(&dword_19763D000, "appintents:fetch app shortcuts", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __88__LNAutoShortcutsProvider_autoShortcutsForBundleIdentifier_localeIdentifier_completion___block_invoke;
  v15[3] = &unk_1E74B12A0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  os_activity_apply(v11, v15);
}

void __88__LNAutoShortcutsProvider_autoShortcutsForBundleIdentifier_localeIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __88__LNAutoShortcutsProvider_autoShortcutsForBundleIdentifier_localeIdentifier_completion___block_invoke_2;
    v13[3] = &unk_1E74B1110;
    v13[4] = v2;
    v14 = v4;
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    [v3 autoShortcutsForBundleIdentifier:v14 localeIdentifier:v5 completion:v13];

    v6 = v14;
  }

  else
  {
    v7 = *(v2 + 24);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __88__LNAutoShortcutsProvider_autoShortcutsForBundleIdentifier_localeIdentifier_completion___block_invoke_4;
    v11[3] = &unk_1E74B14F8;
    v10 = *(a1 + 56);
    v11[4] = *(a1 + 32);
    v12 = v10;
    [v7 autoShortcutsForBundleIdentifier:v8 localeIdentifier:v9 completion:v11];
    v6 = v12;
  }
}

void __88__LNAutoShortcutsProvider_autoShortcutsForBundleIdentifier_localeIdentifier_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 56);
    v4 = *(*(a1 + 56) + 16);

    v4();
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 24);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __88__LNAutoShortcutsProvider_autoShortcutsForBundleIdentifier_localeIdentifier_completion___block_invoke_3;
    v9[3] = &unk_1E74B14F8;
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9[4] = *(a1 + 32);
    v10 = v8;
    [v6 autoShortcutsForBundleIdentifier:v5 localeIdentifier:v7 completion:v9];
  }
}

- (LNAutoShortcutsProvider)initWithOptions:(int64_t)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = LNAutoShortcutsProvider;
  v4 = [(LNAutoShortcutsProvider *)&v21 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.linkd.registry" options:0];
    connection = v4->_connection;
    v4->_connection = v5;

    v7 = LNDaemonRegistryXPCInterface();
    [(NSXPCConnection *)v4->_connection setRemoteObjectInterface:v7];

    [(NSXPCConnection *)v4->_connection resume];
    if ((a3 & 1) == 0)
    {
      v8 = getLNLogCategoryMetadata();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19763D000, v8, OS_LOG_TYPE_INFO, "Reading directly from link metadata", buf, 2u);
      }

      v9 = [_TtC12LinkServices25_LNMetadataProviderDirect alloc];
      v10 = v4->_connection;
      v20 = 0;
      v11 = [(_LNMetadataProviderDirect *)v9 initWithConnection:v10 options:a3 error:&v20];
      v12 = v20;
      directAccess = v4->_directAccess;
      v4->_directAccess = v11;

      if (!v4->_directAccess)
      {
        v14 = getLNLogCategoryMetadata();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v23 = v12;
          _os_log_impl(&dword_19763D000, v14, OS_LOG_TYPE_ERROR, "Request for read access failed %@", buf, 0xCu);
        }
      }
    }

    v15 = [[_LNAutoShortcutsProviderXPC alloc] initWithConnection:v4->_connection];
    xpcAccess = v4->_xpcAccess;
    v4->_xpcAccess = v15;

    v17 = v4;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v4;
}

+ (id)sharedInstance
{
  v2 = objc_alloc_init(LNAutoShortcutsProvider);

  return v2;
}

@end