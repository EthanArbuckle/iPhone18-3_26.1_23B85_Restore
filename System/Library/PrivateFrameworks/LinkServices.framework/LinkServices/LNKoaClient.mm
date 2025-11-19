@interface LNKoaClient
- (id)buildKVItemFrom:(id)a3;
- (id)buildKVItemListWithIncrementalIDs:(id)a3;
- (id)getKVItemBuilderFor:(id)a3 itemId:(id)a4;
- (id)initForBundleIdentifier:(id)a3;
- (void)completeSuccessfully:(id)a3;
- (void)completeWithError:(id)a3 completion:(id)a4;
- (void)donateFullVocabularySet:(id)a3 completionHandler:(id)a4;
@end

@implementation LNKoaClient

- (void)completeSuccessfully:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

- (void)completeWithError:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, a3);
  }
}

- (id)buildKVItemFrom:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v8 = 0;
    v3 = [a3 buildItemWithError:&v8];
    v4 = v8;
    if (!v3)
    {
      v5 = getLNLogCategoryVocabulary();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v10 = v4;
        _os_log_impl(&dword_19763D000, v5, OS_LOG_TYPE_ERROR, "Failed to build a KVItem. Error: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)getKVItemBuilderFor:(id)a3 itemId:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2050000000;
  v7 = getKVItemBuilderClass_softClass;
  v35 = getKVItemBuilderClass_softClass;
  if (!getKVItemBuilderClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v37 = __getKVItemBuilderClass_block_invoke;
    v38 = &unk_1E74B26D0;
    v39 = &v32;
    __getKVItemBuilderClass_block_invoke(&buf);
    v7 = v33[3];
  }

  v8 = v7;
  _Block_object_dispose(&v32, 8);
  v9 = objc_alloc_init(v7);
  v10 = [v5 term];
  v11 = [v5 entityIdentifier];
  v12 = [v11 typeIdentifier];

  v13 = [v5 entityIdentifier];
  v14 = [v13 instanceIdentifier];

  v31 = 0;
  v15 = [v9 setItemType:7 itemId:v6 error:&v31];
  v16 = v31;

  if (!v15)
  {
    v22 = getLNLogCategoryVocabulary();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v16;
      _os_log_impl(&dword_19763D000, v22, OS_LOG_TYPE_ERROR, "Failed to create a KVItemBuilder. Error: %@", &buf, 0xCu);
    }

    goto LABEL_17;
  }

  v30 = v16;
  v17 = [v9 addFieldWithType:275 value:v10 error:&v30];
  v18 = v30;

  if (!v17)
  {
    v23 = getLNLogCategoryVocabulary();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v18;
      _os_log_impl(&dword_19763D000, v23, OS_LOG_TYPE_ERROR, "Failed to add a app entity name field. Error: %@", &buf, 0xCu);
    }

    goto LABEL_21;
  }

  v29 = v18;
  v19 = [v9 addFieldWithType:276 value:v12 error:&v29];
  v16 = v29;

  if (!v19)
  {
    v24 = getLNLogCategoryVocabulary();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v16;
      _os_log_impl(&dword_19763D000, v24, OS_LOG_TYPE_ERROR, "Failed to add a app entity type class name field. Error: %@", &buf, 0xCu);
    }

LABEL_17:
    v21 = 0;
    goto LABEL_23;
  }

  v28 = v16;
  v20 = [v9 addFieldWithType:277 value:v14 error:&v28];
  v18 = v28;

  if (!v20)
  {
    v25 = getLNLogCategoryVocabulary();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v18;
      _os_log_impl(&dword_19763D000, v25, OS_LOG_TYPE_ERROR, "Failed to add a app entity id field. Error: %@", &buf, 0xCu);
    }

LABEL_21:
    v21 = 0;
    goto LABEL_22;
  }

  v21 = v9;
LABEL_22:
  v16 = v18;
LABEL_23:

  v26 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)buildKVItemListWithIncrementalIDs:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%%0%du", 3];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v43;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v43 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v42 + 1) + 8 * i);
        v12 = [v11 entityIdentifier];
        v13 = [v5 objectForKey:v12];

        if (v13)
        {
          v14 = [v11 term];
          v41 = 0;
          v15 = [v13 addFieldWithType:275 value:v14 error:&v41];
          v16 = v41;

          if (!v15)
          {
            v17 = getLNLogCategoryVocabulary();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v48 = v16;
              _os_log_impl(&dword_19763D000, v17, OS_LOG_TYPE_ERROR, "Failed to add a app entity name field. Error: %@", buf, 0xCu);
            }
          }
        }

        else
        {
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:v35, v8];
          v18 = [(LNKoaClient *)self getKVItemBuilderFor:v11 itemId:v16];
          if (v18)
          {
            v13 = v18;
            v19 = [v11 entityIdentifier];
            [v5 setObject:v13 forKey:v19];

            v8 = (v8 + 1);
          }

          else
          {
            v20 = getLNLogCategoryVocabulary();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_19763D000, v20, OS_LOG_TYPE_INFO, "Could not create KVItemBuilder for term, skipping", buf, 2u);
            }

            v13 = 0;
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
    }

    while (v7);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v21 = obj;
  v22 = [v21 countByEnumeratingWithState:&v37 objects:v46 count:16];
  v23 = v34;
  if (v22)
  {
    v24 = v22;
    v25 = *v38;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v38 != v25)
        {
          objc_enumerationMutation(v21);
        }

        v27 = [*(*(&v37 + 1) + 8 * j) entityIdentifier];
        v28 = [v5 objectForKey:v27];
        if (v28)
        {
          v29 = [(LNKoaClient *)self buildKVItemFrom:v28];
          if (v29)
          {
            [v23 addObject:v29];
            [v5 removeObjectForKey:v27];
          }

          else
          {
            v30 = getLNLogCategoryVocabulary();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v48 = v27;
              _os_log_impl(&dword_19763D000, v30, OS_LOG_TYPE_ERROR, "Failed to build a KVItem for %@, skipping", buf, 0xCu);
            }

            v23 = v34;
          }
        }
      }

      v24 = [v21 countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v24);
  }

  v31 = v23;
  v32 = *MEMORY[0x1E69E9840];
  return v23;
}

- (void)donateFullVocabularySet:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__LNKoaClient_donateFullVocabularySet_completionHandler___block_invoke;
  block[3] = &unk_1E74B2580;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __57__LNKoaClient_donateFullVocabularySet_completionHandler___block_invoke(id *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  if ([*(a1[4] + 3) isEqualToOrderedSet:a1[5]])
  {
    v2 = getLNLogCategoryVocabulary();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19763D000, v2, OS_LOG_TYPE_INFO, "Vocabulary set did not change, exiting early from donation method.", &buf, 2u);
    }

    [a1[4] completeSuccessfully:a1[6]];
  }

  else
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v3 = getKVDonatorClass_softClass;
    v32 = getKVDonatorClass_softClass;
    if (!getKVDonatorClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v34 = __getKVDonatorClass_block_invoke;
      v35 = &unk_1E74B26D0;
      v36 = &v29;
      __getKVDonatorClass_block_invoke(&buf);
      v3 = v30[3];
    }

    v4 = v3;
    _Block_object_dispose(&v29, 8);
    if (!v3)
    {
      [a1[4] completeSuccessfully:a1[6]];
    }

    v5 = [a1[5] copy];
    v6 = a1[4];
    v7 = v6[3];
    v6[3] = v5;

    v8 = [MEMORY[0x1E695DF00] date];
    v9 = dispatch_group_create();
    v10 = getLNLogCategoryVocabulary();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [a1[5] count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v11;
      _os_log_impl(&dword_19763D000, v10, OS_LOG_TYPE_INFO, "Making a full vocabulary donation to SiriVocabulary (%lu terms)", &buf, 0xCu);
    }

    v12 = *(a1[4] + 1);
    v28 = 0;
    v13 = [v3 donatorWithItemType:7 originAppId:v12 error:&v28];
    v14 = v28;
    if (v13)
    {
      dispatch_group_enter(v9);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __57__LNKoaClient_donateFullVocabularySet_completionHandler___block_invoke_15;
      v23[3] = &unk_1E74B1460;
      v15 = v9;
      v16 = a1[4];
      v24 = v15;
      v25 = v16;
      v27 = a1[6];
      v26 = a1[5];
      [v13 donateWithOptions:0 usingStream:v23];
      v17 = dispatch_time(0, 300000000000);
      if (dispatch_group_wait(v15, v17))
      {
        v18 = getLNLogCategoryVocabulary();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = 0x4072C00000000000;
          _os_log_impl(&dword_19763D000, v18, OS_LOG_TYPE_ERROR, "Timed out waiting for stream after %f seconds", &buf, 0xCu);
        }
      }

      v19 = getLNLogCategoryVocabulary();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [v8 timeIntervalSinceNow];
        LODWORD(buf) = 134217984;
        *(&buf + 4) = -v20;
        _os_log_impl(&dword_19763D000, v19, OS_LOG_TYPE_DEBUG, "Koa donation took %f", &buf, 0xCu);
      }
    }

    else
    {
      v21 = getLNLogCategoryVocabulary();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v14;
        _os_log_impl(&dword_19763D000, v21, OS_LOG_TYPE_ERROR, "Cannot create a KVDonator. Error: %@", &buf, 0xCu);
      }

      [a1[4] completeWithError:v14 completion:a1[6]];
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __57__LNKoaClient_donateFullVocabularySet_completionHandler___block_invoke_15(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v26 = a3;
  v23 = v4;
  if (v26)
  {
    v5 = getLNLogCategoryVocabulary();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v26;
      _os_log_impl(&dword_19763D000, v5, OS_LOG_TYPE_ERROR, "Cannot initiate donation stream. Error: %@", &buf, 0xCu);
    }

    dispatch_group_leave(*(a1 + 32));
    [*(a1 + 40) completeWithError:v26 completion:{*(a1 + 56), v4}];
  }

  else
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x2050000000;
    v6 = getKVFullDatasetStreamClass_softClass;
    v39 = getKVFullDatasetStreamClass_softClass;
    if (!getKVFullDatasetStreamClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v42 = __getKVFullDatasetStreamClass_block_invoke;
      v43 = &unk_1E74B26D0;
      v44 = &v36;
      __getKVFullDatasetStreamClass_block_invoke(&buf);
      v6 = v37[3];
    }

    v7 = v6;
    _Block_object_dispose(&v36, 8);
    if (objc_opt_isKindOfClass())
    {
      v8 = v4;
      v9 = [*(a1 + 40) buildKVItemListWithIncrementalIDs:*(a1 + 48)];
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v10 = 0;
      v11 = 0;
      v12 = [v9 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v12)
      {
        v13 = *v33;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v33 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v15 = *(*(&v32 + 1) + 8 * i);
            v31 = v10;
            [v8 registerItem:v15 error:{&v31, v23}];
            v16 = v31;

            v10 = v16;
            if (v16)
            {
              v17 = getLNLogCategoryVocabulary();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                LOWORD(buf) = 0;
                _os_log_impl(&dword_19763D000, v17, OS_LOG_TYPE_INFO, "Could not register KVItem with stream, skipping", &buf, 2u);
              }

              ++v11;
            }
          }

          v12 = [v9 countByEnumeratingWithState:&v32 objects:v40 count:16];
        }

        while (v12);
      }

      v18 = [v9 count];
      v19 = getLNLogCategoryVocabulary();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 67109376;
        DWORD1(buf) = v18 - v11;
        WORD4(buf) = 1024;
        *(&buf + 10) = v11;
        _os_log_impl(&dword_19763D000, v19, OS_LOG_TYPE_DEBUG, "Stream registered %d and rejected %d items", &buf, 0xEu);
      }

      if (v11 && v18 == v11)
      {
        v20 = getLNLogCategoryVocabulary();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_19763D000, v20, OS_LOG_TYPE_INFO, "No items were registered with some items rejected, cancelling stream", &buf, 2u);
        }

        [v8 cancel];
        dispatch_group_leave(*(a1 + 32));
        [*(a1 + 40) completeSuccessfully:*(a1 + 56)];
      }

      else
      {
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __57__LNKoaClient_donateFullVocabularySet_completionHandler___block_invoke_16;
        v27[3] = &unk_1E74B1438;
        v27[4] = *(a1 + 40);
        v29 = *(a1 + 56);
        v30 = v18 - v11;
        v28 = *(a1 + 32);
        [v8 finish:v27];
      }
    }

    else
    {
      v21 = getLNLogCategoryVocabulary();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_19763D000, v21, OS_LOG_TYPE_ERROR, "Received unexpected donation stream type", &buf, 2u);
      }

      dispatch_group_leave(*(a1 + 32));
      [*(a1 + 40) completeWithError:0 completion:{*(a1 + 56), v4}];
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __57__LNKoaClient_donateFullVocabularySet_completionHandler___block_invoke_16(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getLNLogCategoryVocabulary();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_19763D000, v5, OS_LOG_TYPE_ERROR, "Cannot finish stream. Error: %@", &v8, 0xCu);
    }

    [*(a1 + 32) completeWithError:v3 completion:*(a1 + 48)];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 56);
      v8 = 67109120;
      LODWORD(v9) = v6;
      _os_log_impl(&dword_19763D000, v5, OS_LOG_TYPE_INFO, "Successfully donated %d terms to SiriVocabulary", &v8, 8u);
    }

    [*(a1 + 32) completeSuccessfully:*(a1 + 48)];
  }

  dispatch_group_leave(*(a1 + 40));

  v7 = *MEMORY[0x1E69E9840];
}

- (id)initForBundleIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"LNKoaClient.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
  }

  v17.receiver = self;
  v17.super_class = LNKoaClient;
  v6 = [(LNKoaClient *)&v17 init];
  if (v6)
  {
    v7 = [v5 copy];
    bundleIdentifier = v6->_bundleIdentifier;
    v6->_bundleIdentifier = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_USER_INITIATED, 0);

    v11 = dispatch_queue_create("com.apple.link.vocabularyDonationQueue", v10);
    queue = v6->_queue;
    v6->_queue = v11;

    currentVocabularySet = v6->_currentVocabularySet;
    v6->_currentVocabularySet = 0;

    v14 = v6;
  }

  return v6;
}

@end