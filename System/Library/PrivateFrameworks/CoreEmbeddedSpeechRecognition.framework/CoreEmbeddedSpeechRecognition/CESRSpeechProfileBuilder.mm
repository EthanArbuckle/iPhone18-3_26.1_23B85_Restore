@interface CESRSpeechProfileBuilder
+ (BOOL)deleteProfileAtDirectory:(id)directory locale:(id)locale userId:(id)id error:(id *)error;
+ (id)CESRErrorForXPCError:(id)error;
+ (id)_speechProfileConfig;
+ (id)categoryToFieldTypeMap;
+ (id)categoryToLimitHintMap;
+ (id)getSpeechLocaleForLocale:(id)locale;
+ (id)profileDirPathFromBasePath:(id)path language:(id)language userId:(id)id;
+ (id)profileFilePathFromBasePath:(id)path language:(id)language userId:(id)id;
+ (id)speechProfilePathsForLocale:(id)locale;
+ (id)supportedCategories;
+ (unsigned)_fieldTypeFromString:(id)string;
+ (void)deleteLegacyProfiles;
- (BOOL)_flushItemsWithError:(id *)error;
- (BOOL)addCodepathId:(id)id error:(id *)error;
- (BOOL)beginWithCategoriesAndVersions:(id)versions bundleId:(id)id error:(id *)error;
- (BOOL)cancelCategoriesWithError:(id *)error;
- (BOOL)removeCodepathId:(id)id error:(id *)error;
- (id)_newConnection;
- (id)getCodepathIdsWithError:(id *)error;
- (int64_t)getVersionForCategory:(id)category error:(id *)error;
- (void)dealloc;
@end

@implementation CESRSpeechProfileBuilder

void __55__CESRSpeechProfileBuilder_finishAndSaveProfile_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [CESRSpeechProfileBuilder CESRErrorForXPCError:a2];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(*(a1 + 32) + 8) + 40);
      v9 = 136315394;
      v10 = "[CESRSpeechProfileBuilder finishAndSaveProfile:error:]_block_invoke";
      v11 = 2112;
      v12 = v8;
      _os_log_error_impl(&dword_225EEB000, v6, OS_LOG_TYPE_ERROR, "%s %@", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __55__CESRSpeechProfileBuilder_finishAndSaveProfile_error___block_invoke_400(uint64_t a1, char a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[CESRSpeechProfileBuilder finishAndSaveProfile:error:]_block_invoke";
      v12 = 2112;
      v13 = v5;
      _os_log_error_impl(&dword_225EEB000, v6, OS_LOG_TYPE_ERROR, "%s %@", &v10, 0x16u);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)cancelCategoriesWithError:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__1430;
  v33 = __Block_byref_object_dispose__1431;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1430;
  v27 = __Block_byref_object_dispose__1431;
  v28 = 0;
  connection = self->_connection;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __54__CESRSpeechProfileBuilder_cancelCategoriesWithError___block_invoke;
  v22[3] = &unk_278580258;
  v22[4] = &v29;
  v6 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v22];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __54__CESRSpeechProfileBuilder_cancelCategoriesWithError___block_invoke_399;
  v21[3] = &unk_2785803E8;
  v21[4] = &v35;
  v21[5] = &v23;
  [v6 cancelWithCompletion:v21];

  if (error && (v36[3] & 1) == 0)
  {
    v7 = v30[5];
    if (!v7)
    {
      v7 = v24[5];
    }

    *error = v7;
    if ((v36[3] & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_15:
    self->_uncommittedItemsMemoryInBytes = 0;
    goto LABEL_16;
  }

  if (*(v36 + 24))
  {
    goto LABEL_15;
  }

LABEL_6:
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_pendingItems;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v39 count:16];
  if (v9)
  {
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        content = [*(*(&v17 + 1) + 8 * i) content];
        data = [content data];
        self->_uncommittedItemsMemoryInBytes -= [data length];
      }

      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v39 count:16];
    }

    while (v9);
  }

LABEL_16:
  [(NSMutableArray *)self->_pendingItems removeAllObjects];
  [(NSMutableArray *)self->_sourceBundleIds removeAllObjects];
  [(NSMutableArray *)self->_isBoosted removeAllObjects];
  v14 = *(v36 + 24);
  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);
  v15 = *MEMORY[0x277D85DE8];
  return v14 & 1;
}

void __54__CESRSpeechProfileBuilder_cancelCategoriesWithError___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [CESRSpeechProfileBuilder CESRErrorForXPCError:a2];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(*(a1 + 32) + 8) + 40);
      v9 = 136315394;
      v10 = "[CESRSpeechProfileBuilder cancelCategoriesWithError:]_block_invoke";
      v11 = 2112;
      v12 = v8;
      _os_log_error_impl(&dword_225EEB000, v6, OS_LOG_TYPE_ERROR, "%s %@", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __54__CESRSpeechProfileBuilder_cancelCategoriesWithError___block_invoke_399(uint64_t a1, char a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[CESRSpeechProfileBuilder cancelCategoriesWithError:]_block_invoke";
      v12 = 2112;
      v13 = v5;
      _os_log_error_impl(&dword_225EEB000, v6, OS_LOG_TYPE_ERROR, "%s %@", &v10, 0x16u);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)_flushItemsWithError:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_pendingItems count])
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__1430;
    v37 = __Block_byref_object_dispose__1431;
    v38 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__1430;
    v31 = __Block_byref_object_dispose__1431;
    v32 = 0;
    connection = self->_connection;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __49__CESRSpeechProfileBuilder__flushItemsWithError___block_invoke;
    v26[3] = &unk_278580258;
    v26[4] = &v33;
    v6 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v26];
    pendingItems = self->_pendingItems;
    sourceBundleIds = self->_sourceBundleIds;
    isBoosted = self->_isBoosted;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __49__CESRSpeechProfileBuilder__flushItemsWithError___block_invoke_398;
    v25[3] = &unk_2785803E8;
    v25[4] = &v39;
    v25[5] = &v27;
    [v6 addVocabularyItems:pendingItems sourceBundleIds:sourceBundleIds isBoosted:isBoosted completion:v25];

    v10 = *(v40 + 24);
    if (error && (v40[3] & 1) == 0)
    {
      v11 = v34[5];
      if (!v11)
      {
        v11 = v28[5];
      }

      *error = v11;
      v10 = *(v40 + 24);
    }

    if ((v10 & 1) == 0)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v12 = self->_pendingItems;
      v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v43 count:16];
      if (v13)
      {
        v14 = *v22;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v22 != v14)
            {
              objc_enumerationMutation(v12);
            }

            content = [*(*(&v21 + 1) + 8 * i) content];
            data = [content data];
            self->_uncommittedItemsMemoryInBytes -= [data length];
          }

          v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v43 count:16];
        }

        while (v13);
      }
    }

    [(NSMutableArray *)self->_pendingItems removeAllObjects];
    [(NSMutableArray *)self->_sourceBundleIds removeAllObjects];
    [(NSMutableArray *)self->_isBoosted removeAllObjects];
    v18 = *(v40 + 24);
    _Block_object_dispose(&v27, 8);

    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(&v39, 8);
  }

  else
  {
    v18 = 1;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18 & 1;
}

void __49__CESRSpeechProfileBuilder__flushItemsWithError___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [CESRSpeechProfileBuilder CESRErrorForXPCError:a2];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(*(a1 + 32) + 8) + 40);
      v9 = 136315394;
      v10 = "[CESRSpeechProfileBuilder _flushItemsWithError:]_block_invoke";
      v11 = 2112;
      v12 = v8;
      _os_log_error_impl(&dword_225EEB000, v6, OS_LOG_TYPE_ERROR, "%s %@", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __49__CESRSpeechProfileBuilder__flushItemsWithError___block_invoke_398(uint64_t a1, char a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[CESRSpeechProfileBuilder _flushItemsWithError:]_block_invoke";
      v12 = 2112;
      v13 = v5;
      _os_log_error_impl(&dword_225EEB000, v6, OS_LOG_TYPE_ERROR, "%s %@", &v10, 0x16u);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)beginWithCategoriesAndVersions:(id)versions bundleId:(id)id error:(id *)error
{
  versionsCopy = versions;
  idCopy = id;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1430;
  v27 = __Block_byref_object_dispose__1431;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1430;
  v21 = __Block_byref_object_dispose__1431;
  v22 = 0;
  connection = self->_connection;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__CESRSpeechProfileBuilder_beginWithCategoriesAndVersions_bundleId_error___block_invoke;
  v16[3] = &unk_278580258;
  v16[4] = &v23;
  v11 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v16];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__CESRSpeechProfileBuilder_beginWithCategoriesAndVersions_bundleId_error___block_invoke_392;
  v15[3] = &unk_2785803E8;
  v15[4] = &v29;
  v15[5] = &v17;
  [v11 beginWithCategoriesAndVersions:versionsCopy bundleId:idCopy completion:v15];

  v12 = *(v30 + 24);
  if (error && (v30[3] & 1) == 0)
  {
    v13 = v24[5];
    if (!v13)
    {
      v13 = v18[5];
    }

    *error = v13;
    v12 = *(v30 + 24);
  }

  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v12 & 1;
}

void __74__CESRSpeechProfileBuilder_beginWithCategoriesAndVersions_bundleId_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [CESRSpeechProfileBuilder CESRErrorForXPCError:a2];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(*(a1 + 32) + 8) + 40);
      v9 = 136315394;
      v10 = "[CESRSpeechProfileBuilder beginWithCategoriesAndVersions:bundleId:error:]_block_invoke";
      v11 = 2112;
      v12 = v8;
      _os_log_error_impl(&dword_225EEB000, v6, OS_LOG_TYPE_ERROR, "%s %@", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __74__CESRSpeechProfileBuilder_beginWithCategoriesAndVersions_bundleId_error___block_invoke_392(uint64_t a1, char a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[CESRSpeechProfileBuilder beginWithCategoriesAndVersions:bundleId:error:]_block_invoke";
      v12 = 2112;
      v13 = v5;
      _os_log_error_impl(&dword_225EEB000, v6, OS_LOG_TYPE_ERROR, "%s %@", &v10, 0x16u);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  v9 = *MEMORY[0x277D85DE8];
}

- (id)getCodepathIdsWithError:(id *)error
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__1430;
  v28 = __Block_byref_object_dispose__1431;
  v29 = [MEMORY[0x277CBEB98] set];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1430;
  v22 = __Block_byref_object_dispose__1431;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1430;
  v16 = __Block_byref_object_dispose__1431;
  v17 = 0;
  connection = self->_connection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__CESRSpeechProfileBuilder_getCodepathIdsWithError___block_invoke;
  v11[3] = &unk_278580258;
  v11[4] = &v18;
  v6 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__CESRSpeechProfileBuilder_getCodepathIdsWithError___block_invoke_390;
  v10[3] = &unk_27857F760;
  v10[4] = &v12;
  v10[5] = &v24;
  [v6 getCodepathIdsWithCompletion:v10];

  if (error)
  {
    v7 = v19[5];
    if (!v7)
    {
      v7 = v13[5];
    }

    *error = v7;
  }

  v8 = v25[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v8;
}

void __52__CESRSpeechProfileBuilder_getCodepathIdsWithError___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [CESRSpeechProfileBuilder CESRErrorForXPCError:a2];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(*(a1 + 32) + 8) + 40);
      v9 = 136315394;
      v10 = "[CESRSpeechProfileBuilder getCodepathIdsWithError:]_block_invoke";
      v11 = 2112;
      v12 = v8;
      _os_log_error_impl(&dword_225EEB000, v6, OS_LOG_TYPE_ERROR, "%s %@", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __52__CESRSpeechProfileBuilder_getCodepathIdsWithError___block_invoke_390(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v15 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    v8 = 40;
  }

  else
  {
    v9 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[CESRSpeechProfileBuilder getCodepathIdsWithError:]_block_invoke";
      v13 = 2112;
      v14 = v7;
      _os_log_error_impl(&dword_225EEB000, v9, OS_LOG_TYPE_ERROR, "%s %@", &v11, 0x16u);
    }

    v8 = 32;
    v4 = a3;
  }

  objc_storeStrong((*(*(a1 + v8) + 8) + 40), v4);

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)removeCodepathId:(id)id error:(id *)error
{
  idCopy = id;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1430;
  v24 = __Block_byref_object_dispose__1431;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1430;
  v18 = __Block_byref_object_dispose__1431;
  v19 = 0;
  connection = self->_connection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__CESRSpeechProfileBuilder_removeCodepathId_error___block_invoke;
  v13[3] = &unk_278580258;
  v13[4] = &v20;
  v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__CESRSpeechProfileBuilder_removeCodepathId_error___block_invoke_388;
  v12[3] = &unk_2785803E8;
  v12[4] = &v14;
  v12[5] = &v26;
  [v8 removeCodepathId:idCopy completion:v12];

  v9 = *(v27 + 24);
  if (error && (v27[3] & 1) == 0)
  {
    v10 = v21[5];
    if (!v10)
    {
      v10 = v15[5];
    }

    *error = v10;
    v9 = *(v27 + 24);
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v9 & 1;
}

void __51__CESRSpeechProfileBuilder_removeCodepathId_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [CESRSpeechProfileBuilder CESRErrorForXPCError:a2];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(*(a1 + 32) + 8) + 40);
      v9 = 136315394;
      v10 = "[CESRSpeechProfileBuilder removeCodepathId:error:]_block_invoke";
      v11 = 2112;
      v12 = v8;
      _os_log_error_impl(&dword_225EEB000, v6, OS_LOG_TYPE_ERROR, "%s %@", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __51__CESRSpeechProfileBuilder_removeCodepathId_error___block_invoke_388(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[CESRSpeechProfileBuilder removeCodepathId:error:]_block_invoke";
      v13 = 2112;
      v14 = v5;
      _os_log_error_impl(&dword_225EEB000, v6, OS_LOG_TYPE_ERROR, "%s %@", &v11, 0x16u);
    }
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)addCodepathId:(id)id error:(id *)error
{
  idCopy = id;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1430;
  v24 = __Block_byref_object_dispose__1431;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1430;
  v18 = __Block_byref_object_dispose__1431;
  v19 = 0;
  connection = self->_connection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__CESRSpeechProfileBuilder_addCodepathId_error___block_invoke;
  v13[3] = &unk_278580258;
  v13[4] = &v20;
  v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__CESRSpeechProfileBuilder_addCodepathId_error___block_invoke_387;
  v12[3] = &unk_2785803E8;
  v12[4] = &v14;
  v12[5] = &v26;
  [v8 addCodepathId:idCopy completion:v12];

  v9 = *(v27 + 24);
  if (error && (v27[3] & 1) == 0)
  {
    v10 = v21[5];
    if (!v10)
    {
      v10 = v15[5];
    }

    *error = v10;
    v9 = *(v27 + 24);
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v9 & 1;
}

void __48__CESRSpeechProfileBuilder_addCodepathId_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [CESRSpeechProfileBuilder CESRErrorForXPCError:a2];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(*(a1 + 32) + 8) + 40);
      v9 = 136315394;
      v10 = "[CESRSpeechProfileBuilder addCodepathId:error:]_block_invoke";
      v11 = 2112;
      v12 = v8;
      _os_log_error_impl(&dword_225EEB000, v6, OS_LOG_TYPE_ERROR, "%s %@", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __48__CESRSpeechProfileBuilder_addCodepathId_error___block_invoke_387(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[CESRSpeechProfileBuilder addCodepathId:error:]_block_invoke";
      v13 = 2112;
      v14 = v5;
      _os_log_error_impl(&dword_225EEB000, v6, OS_LOG_TYPE_ERROR, "%s %@", &v11, 0x16u);
    }
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v10 = *MEMORY[0x277D85DE8];
}

- (int64_t)getVersionForCategory:(id)category error:(id *)error
{
  categoryCopy = category;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = -1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1430;
  v24 = __Block_byref_object_dispose__1431;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1430;
  v18 = __Block_byref_object_dispose__1431;
  v19 = 0;
  connection = self->_connection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__CESRSpeechProfileBuilder_getVersionForCategory_error___block_invoke;
  v13[3] = &unk_278580258;
  v13[4] = &v20;
  v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__CESRSpeechProfileBuilder_getVersionForCategory_error___block_invoke_385;
  v12[3] = &unk_27857F738;
  v12[4] = &v14;
  v12[5] = &v26;
  [v8 getVersionForCategory:categoryCopy completion:v12];

  if (error)
  {
    v9 = v21[5];
    if (!v9)
    {
      v9 = v15[5];
    }

    *error = v9;
  }

  v10 = v27[3];
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v10;
}

void __56__CESRSpeechProfileBuilder_getVersionForCategory_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [CESRSpeechProfileBuilder CESRErrorForXPCError:a2];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(*(a1 + 32) + 8) + 40);
      v9 = 136315394;
      v10 = "[CESRSpeechProfileBuilder getVersionForCategory:error:]_block_invoke";
      v11 = 2112;
      v12 = v8;
      _os_log_error_impl(&dword_225EEB000, v6, OS_LOG_TYPE_ERROR, "%s %@", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __56__CESRSpeechProfileBuilder_getVersionForCategory_error___block_invoke_385(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    v7 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[CESRSpeechProfileBuilder getVersionForCategory:error:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      _os_log_error_impl(&dword_225EEB000, v7, OS_LOG_TYPE_ERROR, "%s %@", &v9, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __120__CESRSpeechProfileBuilder__setProfileConfigWithLanguage_profileDir_userId_personaId_dataProtectionClass_isInUserVault___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [CESRSpeechProfileBuilder CESRErrorForXPCError:a2];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(*(a1 + 32) + 8) + 40);
      v9 = 136315394;
      v10 = "[CESRSpeechProfileBuilder _setProfileConfigWithLanguage:profileDir:userId:personaId:dataProtectionClass:isInUserVault:]_block_invoke";
      v11 = 2112;
      v12 = v8;
      _os_log_error_impl(&dword_225EEB000, v6, OS_LOG_TYPE_ERROR, "%s %@", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_newConnection
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.siri.embeddedspeech"];
  v4 = CESRSpeechProfileBuilderServiceGetXPCInterface();
  [v3 setRemoteObjectInterface:v4];

  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&CoreEmbeddedSpeechRecognizerInstanceUUIDSpeechProfileBuilder];
  [v3 _setUUID:v5];

  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_BACKGROUND, 0);

  v8 = dispatch_queue_create("CESRSpeechProfileBuilder", v7);
  [v3 _setQueue:v8];
  objc_initWeak(&location, self);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __42__CESRSpeechProfileBuilder__newConnection__block_invoke;
  v14 = &unk_27857FE58;
  objc_copyWeak(&v15, &location);
  v9 = _Block_copy(&v11);
  [v3 setInterruptionHandler:{v9, v11, v12, v13, v14}];
  [v3 setInvalidationHandler:v9];
  [v3 resume];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v3;
}

void __42__CESRSpeechProfileBuilder__newConnection__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v3 = MEMORY[0x277CCAE98];
      v4 = v2;
      v5 = [v3 _UUID];
      v8 = 136315650;
      v9 = "[CESRSpeechProfileBuilder _newConnection]_block_invoke";
      v10 = 2112;
      v11 = WeakRetained;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_225EEB000, v4, OS_LOG_TYPE_INFO, "%s %@ cancelling instance %@", &v8, 0x20u);
    }

    [WeakRetained[1] invalidate];
    v6 = WeakRetained[1];
    WeakRetained[1] = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  [(NSXPCConnection *)self->_connection invalidate];
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "[CESRSpeechProfileBuilder dealloc]";
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_225EEB000, v3, OS_LOG_TYPE_INFO, "%s %@ deallocating", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = CESRSpeechProfileBuilder;
  [(CESRSpeechProfileBuilder *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

+ (id)CESRErrorForXPCError:(id)error
{
  errorCopy = error;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = v4;
  v6 = @"Connection to the profile builder service was interrupted";
  if (errorCopy)
  {
    [v4 setObject:errorCopy forKeyedSubscript:*MEMORY[0x277CCA7E8]];
    code = [errorCopy code];
    if (code == 4099)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    if (code == 4099)
    {
      v6 = @"Connection to the profile builder service was rejected";
    }
  }

  else
  {
    v8 = 2;
  }

  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277CCA470]];
  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CESRProfileErrorDomain" code:v8 userInfo:v5];

  return v9;
}

+ (id)profileFilePathFromBasePath:(id)path language:(id)language userId:(id)id
{
  v5 = [CESRSpeechProfileBuilder profileDirPathFromBasePath:path language:language userId:id];
  v6 = [v5 stringByAppendingPathComponent:@"SpeechProfile"];

  return v6;
}

+ (id)profileDirPathFromBasePath:(id)path language:(id)language userId:(id)id
{
  pathCopy = path;
  languageCopy = language;
  idCopy = id;
  if ([languageCopy length])
  {
    v10 = SFUserIdHash();
    v11 = SFUserIdHashToString();
    v12 = v11;
    v13 = @"0000000000000000";
    if (v11)
    {
      v13 = v11;
    }

    v14 = v13;

    v15 = [pathCopy stringByAppendingPathComponent:v14];

    v16 = [v15 stringByAppendingPathComponent:languageCopy];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (void)deleteLegacyProfiles
{
  v19 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = AFLibraryDirectoryWithSubPath();
  v4 = [defaultManager contentsOfDirectoryAtPath:v3 error:0];
  v5 = [@"SpeechProfile" stringByAppendingString:@"_"];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 hasPrefix:{v5, v14}])
        {
          v12 = [v3 stringByAppendingPathComponent:v11];
          [defaultManager removeItemAtPath:v12 error:0];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (BOOL)deleteProfileAtDirectory:(id)directory locale:(id)locale userId:(id)id error:(id *)error
{
  idCopy = id;
  directoryCopy = directory;
  localeIdentifier = [locale localeIdentifier];
  v12 = [CESRUtilities languageStringForLocaleString:localeIdentifier];

  path = [directoryCopy path];

  v14 = [CESRSpeechProfileBuilder profileDirPathFromBasePath:path language:v12 userId:idCopy];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v20 = 0;
  v16 = [defaultManager removeItemAtPath:v14 error:&v20];
  v17 = v20;

  if (error && v17)
  {
    v18 = v17;
    *error = v17;
  }

  return v16;
}

+ (id)speechProfilePathsForLocale:(id)locale
{
  v22 = *MEMORY[0x277D85DE8];
  if (locale)
  {
    localeIdentifier = [locale localeIdentifier];
    v4 = [CESRUtilities languageStringForLocaleString:localeIdentifier];

    v5 = [CESRUtilities speechProfilePathsWithLanguage:v4];
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = objc_alloc(MEMORY[0x277CBEBC0]);
          v14 = [v13 initFileURLWithPath:{v12, v17}];
          [v6 addObject:v14];
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)getSpeechLocaleForLocale:(id)locale
{
  localeCopy = locale;
  localeIdentifier = [localeCopy localeIdentifier];
  v5 = [CESRUtilities languageStringForLocaleString:localeIdentifier];

  v6 = SFReplacementLocaleCodeForLocaleIdentifier();

  v7 = localeCopy;
  if (v6)
  {
    v8 = objc_alloc(MEMORY[0x277CBEAF8]);
    v9 = [CESRUtilities localeStringForLanguageString:v6];
    v7 = [v8 initWithLocaleIdentifier:v9];
  }

  return v7;
}

+ (id)_speechProfileConfig
{
  v2 = objc_alloc_init(CESRSpeechProfileConfig);

  return v2;
}

+ (unsigned)_fieldTypeFromString:(id)string
{
  v16 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v4 = stringCopy;
  if (_fieldTypeFromString__onceToken == -1)
  {
    if (stringCopy)
    {
LABEL_3:
      v5 = [_fieldTypeFromString__fieldTypeForString objectForKey:v4];
      v6 = v5;
      if (v5)
      {
        unsignedShortValue = [v5 unsignedShortValue];
      }

      else
      {
        v8 = *MEMORY[0x277CEF0E8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
        {
          v12 = 136315394;
          v13 = "+[CESRSpeechProfileBuilder _fieldTypeFromString:]";
          v14 = 2112;
          v15 = v4;
          _os_log_error_impl(&dword_225EEB000, v8, OS_LOG_TYPE_ERROR, "%s %@ did not match any known field type.", &v12, 0x16u);
        }

        unsignedShortValue = 0;
      }

      goto LABEL_13;
    }
  }

  else
  {
    dispatch_once(&_fieldTypeFromString__onceToken, &__block_literal_global_1466);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v9 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
  {
    v12 = 136315138;
    v13 = "+[CESRSpeechProfileBuilder _fieldTypeFromString:]";
    _os_log_error_impl(&dword_225EEB000, v9, OS_LOG_TYPE_ERROR, "%s fieldTypeAsString cannot be nil.", &v12, 0xCu);
  }

  unsignedShortValue = 0;
LABEL_13:

  v10 = *MEMORY[0x277D85DE8];
  return unsignedShortValue;
}

void __49__CESRSpeechProfileBuilder__fieldTypeFromString___block_invoke()
{
  v0 = _fieldTypeFromString__fieldTypeForString;
  _fieldTypeFromString__fieldTypeForString = &unk_283952F30;
}

+ (id)categoryToFieldTypeMap
{
  v88[20] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB38];
  v87[0] = @"\\NT-contact";
  v66 = [MEMORY[0x277CBEB58] setWithArray:&unk_283952D50];
  v88[0] = v66;
  v87[1] = @"\\NT-appcontact";
  v64 = [MEMORY[0x277CBEB58] setWithArray:&unk_283952D68];
  v88[1] = v64;
  v87[2] = @"\\NT-action";
  v62 = [MEMORY[0x277CBEB58] setWithArray:&unk_283952D80];
  v88[2] = v62;
  v87[3] = @"\\NT-payaccount";
  v60 = [MEMORY[0x277CBEB58] setWithArray:&unk_283952D98];
  v88[3] = v60;
  v87[4] = @"\\NT-savedactivity";
  obja = [MEMORY[0x277CBEB58] setWithArray:&unk_283952DB0];
  v88[4] = obja;
  v87[5] = @"\\NT-notetitle";
  v56 = [MEMORY[0x277CBEB58] setWithArray:&unk_283952DC8];
  v88[5] = v56;
  v87[6] = @"\\NT-notefolder";
  v54 = [MEMORY[0x277CBEB58] setWithArray:&unk_283952DE0];
  v88[6] = v54;
  v87[7] = @"\\NT-phototag";
  v53 = [MEMORY[0x277CBEB58] setWithArray:&unk_283952DF8];
  v88[7] = v53;
  v87[8] = @"\\NT-photoalbum";
  v52 = [MEMORY[0x277CBEB58] setWithArray:&unk_283952E10];
  v88[8] = v52;
  v87[9] = @"\\NT-house";
  v51 = [MEMORY[0x277CBEB58] setWithArray:&unk_283952E28];
  v88[9] = v51;
  v87[10] = @"\\NT-room";
  v50 = [MEMORY[0x277CBEB58] setWithArray:&unk_283952E40];
  v88[10] = v50;
  v87[11] = @"\\NT-zone";
  v49 = [MEMORY[0x277CBEB58] setWithArray:&unk_283952E58];
  v88[11] = v49;
  v87[12] = @"\\NT-scene";
  v3 = [MEMORY[0x277CBEB58] setWithArray:&unk_283952E70];
  v88[12] = v3;
  v87[13] = @"\\NT-group";
  v4 = [MEMORY[0x277CBEB58] setWithArray:&unk_283952E88];
  v88[13] = v4;
  v87[14] = @"\\NT-device";
  v5 = [MEMORY[0x277CBEB58] setWithArray:&unk_283952EA0];
  v88[14] = v5;
  v87[15] = @"\\NT-artist";
  v6 = [MEMORY[0x277CBEB58] setWithArray:&unk_283952EB8];
  v88[15] = v6;
  v87[16] = @"\\NT-playlist";
  v7 = [MEMORY[0x277CBEB58] setWithArray:&unk_283952ED0];
  v88[16] = v7;
  v87[17] = @"\\NT-appname";
  v8 = [MEMORY[0x277CBEB58] setWithArray:&unk_283952EE8];
  v88[17] = v8;
  v87[18] = @"\\NT-appvocab";
  v9 = [MEMORY[0x277CBEB58] setWithArray:&unk_283952F00];
  v88[18] = v9;
  v87[19] = @"\\NT-location";
  v10 = [MEMORY[0x277CBEB58] setWithArray:&unk_283952F18];
  v88[19] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:20];
  v12 = [v2 dictionaryWithDictionary:v11];

  v13 = +[CESRSpeechProfileBuilder _speechProfileConfig];
  LODWORD(v9) = +[CESRSpeechProfileBuilder appEntityFeatureFlagEnabled];
  v14 = MEMORY[0x277CEF0E8];
  v15 = *MEMORY[0x277CEF0E8];
  v16 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG);
  v57 = v13;
  if (v9)
  {
    if (v16)
    {
      *buf = 136315138;
      v83 = "+[CESRSpeechProfileBuilder categoryToFieldTypeMap]";
      _os_log_debug_impl(&dword_225EEB000, v15, OS_LOG_TYPE_DEBUG, "%s Siri/asr_speech_profile_app_entities feature flag is enabled.", buf, 0xCu);
    }

    appEntityConfig = [v13 appEntityConfig];
    if ([appEntityConfig overallAppEntityLimit])
    {
      supportedLmeTemplates = [appEntityConfig supportedLmeTemplates];
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v19 = [supportedLmeTemplates countByEnumeratingWithState:&v76 objects:v86 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v77;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v77 != v21)
            {
              objc_enumerationMutation(supportedLmeTemplates);
            }

            v23 = *(*(&v76 + 1) + 8 * i);
            v24 = [v12 objectForKeyedSubscript:v23];
            if (v24)
            {
              [v12 setObject:v24 forKeyedSubscript:v23];
            }

            else
            {
              v25 = [MEMORY[0x277CBEB58] set];
              [v12 setObject:v25 forKeyedSubscript:v23];
            }

            v26 = [v12 objectForKeyedSubscript:v23];
            [v26 addObject:&unk_283952990];
          }

          v20 = [supportedLmeTemplates countByEnumeratingWithState:&v76 objects:v86 count:16];
        }

        while (v20);
      }

      v14 = MEMORY[0x277CEF0E8];
      v27 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v83 = "+[CESRSpeechProfileBuilder categoryToFieldTypeMap]";
        v84 = 2112;
        v85 = supportedLmeTemplates;
        _os_log_debug_impl(&dword_225EEB000, v27, OS_LOG_TYPE_DEBUG, "%s App Entity ingestion is enabled in config for categories: %@", buf, 0x16u);
      }
    }

    else
    {
      v28 = *v14;
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v83 = "+[CESRSpeechProfileBuilder categoryToFieldTypeMap]";
        _os_log_debug_impl(&dword_225EEB000, v28, OS_LOG_TYPE_DEBUG, "%s App Entity ingestion is disabled in config, App Entities will not be consumed on speech profile updates.", buf, 0xCu);
      }
    }
  }

  else if (v16)
  {
    *buf = 136315138;
    v83 = "+[CESRSpeechProfileBuilder categoryToFieldTypeMap]";
    _os_log_debug_impl(&dword_225EEB000, v15, OS_LOG_TYPE_DEBUG, "%s Siri/asr_speech_profile_app_entities feature flag is disabled. App Entities will not be consumed on speech profile updates.", buf, 0xCu);
  }

  directDonationConfig = [v13 directDonationConfig];
  fieldTypeToMapping = [directDonationConfig fieldTypeToMapping];
  v30 = *v14;
  if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v83 = "+[CESRSpeechProfileBuilder categoryToFieldTypeMap]";
    v84 = 2112;
    v85 = fieldTypeToMapping;
    _os_log_debug_impl(&dword_225EEB000, v30, OS_LOG_TYPE_DEBUG, "%s Adding any additional Direct Donation mappings: %@", buf, 0x16u);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = [fieldTypeToMapping allKeys];
  v31 = off_27857E000;
  v65 = [obj countByEnumeratingWithState:&v72 objects:v81 count:16];
  if (v65)
  {
    v61 = *v73;
    v63 = fieldTypeToMapping;
    do
    {
      v32 = 0;
      do
      {
        if (*v73 != v61)
        {
          objc_enumerationMutation(obj);
        }

        v67 = v32;
        v33 = *(*(&v72 + 1) + 8 * v32);
        v34 = [fieldTypeToMapping objectForKeyedSubscript:v33];
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v35 = [v34 countByEnumeratingWithState:&v68 objects:v80 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v69;
          do
          {
            for (j = 0; j != v36; ++j)
            {
              if (*v69 != v37)
              {
                objc_enumerationMutation(v34);
              }

              vocabularyLabel = [*(*(&v68 + 1) + 8 * j) vocabularyLabel];
              lmeTemplate = [vocabularyLabel lmeTemplate];

              v41 = [(__objc2_class *)v31[27] _fieldTypeFromString:v33];
              if (v41)
              {
                v42 = v41;
                v43 = [v12 objectForKeyedSubscript:lmeTemplate];
                if (v43)
                {
                  [v12 setObject:v43 forKeyedSubscript:lmeTemplate];
                }

                else
                {
                  v44 = [MEMORY[0x277CBEB58] set];
                  [v12 setObject:v44 forKeyedSubscript:lmeTemplate];

                  v31 = off_27857E000;
                }

                v45 = [v12 objectForKeyedSubscript:lmeTemplate];
                v46 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v42];
                [v45 addObject:v46];
              }
            }

            v36 = [v34 countByEnumeratingWithState:&v68 objects:v80 count:16];
          }

          while (v36);
        }

        v32 = v67 + 1;
        fieldTypeToMapping = v63;
      }

      while (v67 + 1 != v65);
      v65 = [obj countByEnumeratingWithState:&v72 objects:v81 count:16];
    }

    while (v65);
  }

  v47 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)supportedCategories
{
  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v3 = +[CESRSpeechProfileBuilder categoryToFieldTypeMap];
  allKeys = [v3 allKeys];
  v5 = [v2 initWithArray:allKeys];

  return v5;
}

+ (id)categoryToLimitHintMap
{
  v6[24] = *MEMORY[0x277D85DE8];
  v5[0] = @"\\NT-contact";
  v5[1] = @"\\NT-action";
  v6[0] = &unk_283952498;
  v6[1] = &unk_2839524B0;
  v5[2] = @"\\NT-payaccount";
  v5[3] = @"\\NT-savedactivity";
  v6[2] = &unk_2839524B0;
  v6[3] = &unk_2839524B0;
  v5[4] = @"\\NT-notetitle";
  v5[5] = @"\\NT-notefolder";
  v6[4] = &unk_2839524B0;
  v6[5] = &unk_2839524B0;
  v5[6] = @"\\NT-phototag";
  v5[7] = @"\\NT-photoalbum";
  v6[6] = &unk_2839524B0;
  v6[7] = &unk_2839524B0;
  v5[8] = @"\\NT-house";
  v5[9] = @"\\NT-room";
  v6[8] = &unk_2839524B0;
  v6[9] = &unk_2839524B0;
  v5[10] = @"\\NT-zone";
  v5[11] = @"\\NT-group";
  v6[10] = &unk_2839524B0;
  v6[11] = &unk_2839524B0;
  v5[12] = @"\\NT-device";
  v5[13] = @"\\NT-scene";
  v6[12] = &unk_2839524B0;
  v6[13] = &unk_2839524B0;
  v5[14] = @"\\NT-playlist";
  v5[15] = @"\\NT-artist";
  v6[14] = &unk_2839524C8;
  v6[15] = &unk_2839524C8;
  v5[16] = @"\\NT-appname";
  v5[17] = @"\\NT-searchterm";
  v6[16] = &unk_2839524B0;
  v6[17] = &unk_2839524B0;
  v5[18] = @"\\NT-location";
  v5[19] = @"\\NT-calevent";
  v6[18] = &unk_2839524B0;
  v6[19] = &unk_2839524B0;
  v5[20] = @"\\NT-unknown";
  v5[21] = @"\\NT-entity";
  v6[20] = &unk_2839524B0;
  v6[21] = &unk_2839524B0;
  v5[22] = @"\\NT-correction";
  v5[23] = @"\\NT-appvocab";
  v6[22] = &unk_2839524B0;
  v6[23] = &unk_2839524B0;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:24];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end