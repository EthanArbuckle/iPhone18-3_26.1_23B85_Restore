@interface FCTranslationManager
- (FCTranslationManager)initWithContentContext:(id)a3;
- (FCTranslationProvider)possiblyUnfetchedTranslationProvider;
- (void)fetchTranslationProvider:(id)a3;
@end

@implementation FCTranslationManager

- (FCTranslationProvider)possiblyUnfetchedTranslationProvider
{
  v29[1] = *MEMORY[0x1E69E9840];
  v3 = [(FCTranslationManager *)self translationMap];

  if (v3)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __60__FCTranslationManager_possiblyUnfetchedTranslationProvider__block_invoke;
    v28[3] = &unk_1E7C44170;
    v28[4] = self;
    v4 = __60__FCTranslationManager_possiblyUnfetchedTranslationProvider__block_invoke(v28);
  }

  else
  {
    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [v5 objectForKey:@"translationMapResourceID"];

    if (v6)
    {
      v7 = v6;
      v8 = [FCResourcesFetchOperation alloc];
      v9 = [(FCTranslationManager *)self contentContext];
      v29[0] = v7;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      v11 = [(FCResourcesFetchOperation *)v8 initWithContext:v9 resourceIDs:v10 downloadAssets:0];

      [(FCFetchOperation *)v11 setCachePolicy:3];
      [(FCFetchOperation *)v11 setCanSendFetchCompletionSynchronously:1];
      *buf = 0;
      v23 = buf;
      v24 = 0x3032000000;
      v25 = __Block_byref_object_copy__60;
      v26 = __Block_byref_object_dispose__60;
      v27 = 0;
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __60__FCTranslationManager_possiblyUnfetchedTranslationProvider__block_invoke_6;
      v19 = &unk_1E7C44198;
      v21 = buf;
      v12 = v7;
      v20 = v12;
      [(FCFetchOperation *)v11 setFetchCompletionBlock:&v16];
      [(FCOperation *)v11 start:v16];
      [(FCResourcesFetchOperation *)v11 waitUntilFinished];
      v4 = *(v23 + 5);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v13 = FCTranslationLog;
      if (os_log_type_enabled(FCTranslationLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEFAULT, "No translation map resource ID available in User Defaults, we have no translation map to synchronously return", buf, 2u);
      }

      v4 = 0;
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

- (FCTranslationManager)initWithContentContext:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FCTranslationManager;
  v5 = [(FCTranslationManager *)&v11 init];
  contentContext = v5->_contentContext;
  v5->_contentContext = v4;
  v7 = v4;

  v8 = [[FCAsyncSerialQueue alloc] initWithQualityOfService:25];
  queue = v5->_queue;
  v5->_queue = v8;

  return v5;
}

id __60__FCTranslationManager_possiblyUnfetchedTranslationProvider__block_invoke(uint64_t a1)
{
  v2 = FCTranslationLog;
  if (os_log_type_enabled(FCTranslationLog, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "Already have a translation map, returning it", v5, 2u);
  }

  v3 = [*(a1 + 32) translationMap];

  return v3;
}

void __60__FCTranslationManager_possiblyUnfetchedTranslationProvider__block_invoke_6(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 error];

  if (!v4)
  {
    v5 = FCTranslationLog;
    if (os_log_type_enabled(FCTranslationLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "Synchronous Fetch operation completed", buf, 2u);
    }

    objc_opt_class();
    objc_opt_class();
    v6 = [v3 fetchedObject];
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = [v8 firstObject];
    if (v9)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      v12 = v11;
      v13 = FCTranslationLog;
      if (os_log_type_enabled(FCTranslationLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v12;
        _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEFAULT, "Got resource %@", buf, 0xCu);
      }

      v14 = [v12 fileURL];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
        v17 = FCTranslationLog;
        if (os_log_type_enabled(FCTranslationLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v36 = v16;
          _os_log_impl(&dword_1B63EF000, v17, OS_LOG_TYPE_DEFAULT, "Got fileURL %@", buf, 0xCu);
        }

        v18 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v16];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
          v21 = FCTranslationLog;
          v22 = v20;
          if (os_log_type_enabled(FCTranslationLog, OS_LOG_TYPE_DEFAULT))
          {
            v23 = MEMORY[0x1E696AD98];
            v24 = v21;
            v25 = [v23 numberWithUnsignedInteger:{objc_msgSend(v22, "length")}];
            *buf = 138412290;
            v36 = v25;
            _os_log_impl(&dword_1B63EF000, v24, OS_LOG_TYPE_DEFAULT, "Got back data of length %@", buf, 0xCu);
          }

          v26 = [objc_alloc(MEMORY[0x1E69B7040]) initWithData:v22];
          v27 = v26;
          if (v26)
          {
            v34 = v16;
            v28 = v22;
            v29 = v26;
            v30 = [[FCTranslationMap alloc] initWithPBTranslationMap:v29 resourceID:*(a1 + 32)];

            v22 = v28;
            v16 = v34;
            v31 = *(*(a1 + 40) + 8);
            v32 = *(v31 + 40);
            *(v31 + 40) = v30;
          }
        }
      }
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)fetchTranslationProvider:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(FCTranslationManager *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__FCTranslationManager_fetchTranslationProvider___block_invoke;
  v7[3] = &unk_1E7C44238;
  v6 = v4;
  v8 = v6;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  [v5 enqueueBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __49__FCTranslationManager_fetchTranslationProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__FCTranslationManager_fetchTranslationProvider___block_invoke_2;
  aBlock[3] = &unk_1E7C441C0;
  v24 = *(a1 + 40);
  v4 = v3;
  v25 = v4;
  v5 = _Block_copy(aBlock);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v9 = FCTranslationLog;
    if (os_log_type_enabled(FCTranslationLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "Attempting Translation Map Resource Fetch", buf, 2u);
    }

    v10 = [v8 contentContext];
    v11 = [v10 appConfigurationManager];
    v12 = dispatch_get_global_queue(25, 0);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __49__FCTranslationManager_fetchTranslationProvider___block_invoke_29;
    v15[3] = &unk_1E7C44210;
    v15[5] = v8;
    v16 = v5;
    v15[4] = *(a1 + 32);
    v13 = v5;
    [v11 fetchAppConfigurationIfNeededWithCompletionQueue:v12 completion:v15];

    goto LABEL_7;
  }

  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __49__FCTranslationManager_fetchTranslationProvider___block_invoke_3;
  v21 = &unk_1E7C379C8;
  v22 = v5;
  if (v5)
  {
    v14 = v5[2];
    v8 = v5;
    v14();
    v13 = v22;
LABEL_7:
  }
}

void __49__FCTranslationManager_fetchTranslationProvider___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v8, v5);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))();
  }
}

uint64_t __49__FCTranslationManager_fetchTranslationProvider___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __49__FCTranslationManager_fetchTranslationProvider___block_invoke_29(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    v9 = FCTranslationLog;
    if (os_log_type_enabled(FCTranslationLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "App Config Manager Returned", buf, 2u);
    }

    v10 = [v5 translationMapResourceID];
    if (!v10)
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __49__FCTranslationManager_fetchTranslationProvider___block_invoke_31;
      v35[3] = &unk_1E7C379C8;
      v36 = *(a1 + 48);
      __49__FCTranslationManager_fetchTranslationProvider___block_invoke_31(v35);

      v8 = 0;
      goto LABEL_16;
    }

    v8 = v10;
    v11 = [*(a1 + 32) translationMap];
    if (!v11)
    {
      goto LABEL_10;
    }

    v12 = v11;
    v13 = [*(a1 + 32) translationMap];
    v14 = [v13 resourceID];
    v15 = [v14 isEqualToString:v8];

    if (v15)
    {
      v16 = *(a1 + 48);
      if (!v16)
      {
LABEL_14:

        goto LABEL_16;
      }

      v17 = [*(a1 + 32) translationMap];
      (*(v16 + 16))(v16, v17, 0);
    }

    else
    {
LABEL_10:
      v18 = FCTranslationLog;
      if (os_log_type_enabled(FCTranslationLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v42 = v8;
        _os_log_impl(&dword_1B63EF000, v18, OS_LOG_TYPE_DEFAULT, "Found translationMapResourceID %@, building fetch operation", buf, 0xCu);
      }

      v19 = [FCResourcesFetchOperation alloc];
      v20 = [*(a1 + 32) contentContext];
      v40 = v8;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
      v17 = [(FCResourcesFetchOperation *)v19 initWithContext:v20 resourceIDs:v21 downloadAssets:1];

      [(FCFetchOperation *)v17 setCachePolicy:1];
      [(FCOperation *)v17 setQualityOfService:25];
      [(FCOperation *)v17 setRelativePriority:1];
      v22 = [(FCOperation *)v17 shortOperationDescription];
      v27 = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = __49__FCTranslationManager_fetchTranslationProvider___block_invoke_37;
      v30 = &unk_1E7C441E8;
      v31 = v22;
      v34 = *(a1 + 48);
      v23 = v8;
      v24 = *(a1 + 40);
      v32 = v23;
      v33 = v24;
      v25 = v22;
      [(FCFetchOperation *)v17 setFetchCompletionBlock:&v27];
      [(FCOperation *)v17 start:v27];
    }

    goto LABEL_14;
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __49__FCTranslationManager_fetchTranslationProvider___block_invoke_2_30;
  v37[3] = &unk_1E7C37BC0;
  v38 = v6;
  v39 = *(a1 + 48);
  __49__FCTranslationManager_fetchTranslationProvider___block_invoke_2_30(v37);

  v8 = v38;
LABEL_16:

  v26 = *MEMORY[0x1E69E9840];
}

uint64_t __49__FCTranslationManager_fetchTranslationProvider___block_invoke_2_30(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCTranslationLog;
  if (os_log_type_enabled(FCTranslationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "App Config Returned Error: %@", &v6, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, 0, *(a1 + 32));
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __49__FCTranslationManager_fetchTranslationProvider___block_invoke_31(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = FCTranslationLog;
  if (os_log_type_enabled(FCTranslationLog, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "App Config contained no translationMapResourceID", v8, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A578];
    v10[0] = @"Didn't find a translation map resource ID in the News app configuration";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v6 = [v4 errorWithDomain:@"FCErrorDomain" code:19 userInfo:v5];
    (*(v3 + 16))(v3, 0, v6);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __49__FCTranslationManager_fetchTranslationProvider___block_invoke_37(id *a1, void *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __49__FCTranslationManager_fetchTranslationProvider___block_invoke_2_38;
    v46[3] = &unk_1E7C38FF0;
    v47 = a1[4];
    v48 = v3;
    v49 = a1[7];
    __49__FCTranslationManager_fetchTranslationProvider___block_invoke_2_38(v46);

    v5 = v47;
  }

  else
  {
    v6 = FCTranslationLog;
    if (os_log_type_enabled(FCTranslationLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "Fetch operation completed", buf, 2u);
    }

    objc_opt_class();
    objc_opt_class();
    v7 = [v3 fetchedObject];
    if (v7)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = [v9 firstObject];
    if (v10)
    {
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v12)
    {
      v5 = v12;
      v13 = FCTranslationLog;
      if (os_log_type_enabled(FCTranslationLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v51 = v5;
        _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEFAULT, "Got resource %@", buf, 0xCu);
      }

      v14 = [v5 fileURL];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
        v17 = FCTranslationLog;
        if (os_log_type_enabled(FCTranslationLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v51 = v16;
          _os_log_impl(&dword_1B63EF000, v17, OS_LOG_TYPE_DEFAULT, "Got fileURL %@", buf, 0xCu);
        }

        v18 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v16];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
          v21 = FCTranslationLog;
          if (os_log_type_enabled(FCTranslationLog, OS_LOG_TYPE_DEFAULT))
          {
            v22 = MEMORY[0x1E696AD98];
            v23 = v21;
            v24 = [v22 numberWithUnsignedInteger:{objc_msgSend(v20, "length")}];
            *buf = 138412290;
            v51 = v24;
            _os_log_impl(&dword_1B63EF000, v23, OS_LOG_TYPE_DEFAULT, "Got back data of length %@", buf, 0xCu);
          }

          v25 = [objc_alloc(MEMORY[0x1E69B7040]) initWithData:v20];
          v26 = v25;
          if (v25)
          {
            v27 = v25;
            v28 = [[FCTranslationMap alloc] initWithPBTranslationMap:v27 resourceID:a1[5]];
            [a1[6] setTranslationMap:v28];

            v29 = [MEMORY[0x1E695E000] standardUserDefaults];
            [v29 setObject:a1[5] forKey:@"translationMapResourceID"];

            v30 = a1[7];
            if (v30)
            {
              v31 = [a1[6] translationMap];
              v30[2](v30, v31, 0);
            }
          }

          else
          {
            v33[0] = MEMORY[0x1E69E9820];
            v33[1] = 3221225472;
            v33[2] = __49__FCTranslationManager_fetchTranslationProvider___block_invoke_52;
            v33[3] = &unk_1E7C37778;
            v35 = a1[7];
            v34 = v20;
            __49__FCTranslationManager_fetchTranslationProvider___block_invoke_52(v33);

            v27 = v35;
          }
        }

        else
        {
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __49__FCTranslationManager_fetchTranslationProvider___block_invoke_48;
          v36[3] = &unk_1E7C37BC0;
          v37 = v16;
          v38 = a1[7];
          __49__FCTranslationManager_fetchTranslationProvider___block_invoke_48(v36);

          v20 = v37;
        }
      }

      else
      {
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __49__FCTranslationManager_fetchTranslationProvider___block_invoke_44;
        v39[3] = &unk_1E7C37778;
        v41 = a1[7];
        v40 = v5;
        __49__FCTranslationManager_fetchTranslationProvider___block_invoke_44(v39);

        v16 = v41;
      }
    }

    else
    {
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __49__FCTranslationManager_fetchTranslationProvider___block_invoke_39;
      v42[3] = &unk_1E7C3A060;
      v45 = a1[7];
      v43 = a1[5];
      v44 = v3;
      __49__FCTranslationManager_fetchTranslationProvider___block_invoke_39(v42);

      v5 = 0;
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

void __49__FCTranslationManager_fetchTranslationProvider___block_invoke_2_38(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = FCTranslationLog;
  if (os_log_type_enabled(FCTranslationLog, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = v2;
    v9 = [v6 error];
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v9;
    _os_log_error_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_ERROR, "Fetch operation %@ error %@", &v10, 0x16u);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = [*(a1 + 40) error];
    (*(v3 + 16))(v3, 0, v4);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __49__FCTranslationManager_fetchTranslationProvider___block_invoke_39(uint64_t a1)
{
  v2 = FCTranslationLog;
  if (os_log_type_enabled(FCTranslationLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "No resource provided back from fetch operation", buf, 2u);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = MEMORY[0x1E696ABC0];
    v5 = MEMORY[0x1E696AEC0];
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) fetchedObject];
    v8 = [v5 stringWithFormat:@"Failed to find a resource for ID %@, got back %@", v6, v7];
    v9 = [v4 fc_missingResourceErrorWithDescription:v8];
    (*(v3 + 16))(v3, 0, v9);
  }
}

void __49__FCTranslationManager_fetchTranslationProvider___block_invoke_44(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = FCTranslationLog;
  if (os_log_type_enabled(FCTranslationLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "Resource had no fileURL", buf, 2u);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Got a nil fileURL for resource %@", *(a1 + 32)];
    v11[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [v4 errorWithDomain:@"FCErrorDomain" code:19 userInfo:v6];
    (*(v3 + 16))(v3, 0, v7);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __49__FCTranslationManager_fetchTranslationProvider___block_invoke_48(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = FCTranslationLog;
  if (os_log_type_enabled(FCTranslationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "Failed to get data from fileURL %@", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get data from fileURL %@", *(a1 + 32)];
    v11 = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v8 = [v5 errorWithDomain:@"FCErrorDomain" code:19 userInfo:v7];
    (*(v4 + 16))(v4, 0, v8);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __49__FCTranslationManager_fetchTranslationProvider___block_invoke_52(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = FCTranslationLog;
  if (os_log_type_enabled(FCTranslationLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "Failed to turn data into NTPBTranslationMap", buf, 2u);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to initialize NTPBTranslationMap with data %@", *(a1 + 32)];
    v11[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [v4 errorWithDomain:@"FCErrorDomain" code:19 userInfo:v6];
    (*(v3 + 16))(v3, 0, v7);
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end