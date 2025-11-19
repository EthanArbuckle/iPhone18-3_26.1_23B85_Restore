@interface CAMTransientImageManager
- (BOOL)isEmpty;
- (CAMTransientImageManager)init;
- (id)existingPairedVideoForUUID:(id)a3;
- (id)existingPairedVideoUUIDs;
- (id)insertPairedVideoWithConvertible:(id)a3 filterType:(int64_t)a4;
- (void)_handleRequestTimeout:(id)a3;
- (void)removePairedVideoForUUID:(id)a3;
- (void)requestPairedVideoURLForUUID:(id)a3 resultHandler:(id)a4;
@end

@implementation CAMTransientImageManager

- (CAMTransientImageManager)init
{
  v9.receiver = self;
  v9.super_class = CAMTransientImageManager;
  v2 = [(CAMTransientImageManager *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pairedVideosByPairedUUID = v2->__pairedVideosByPairedUUID;
    v2->__pairedVideosByPairedUUID = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    activeRequestsByPairedUUID = v2->__activeRequestsByPairedUUID;
    v2->__activeRequestsByPairedUUID = v5;

    v7 = v2;
  }

  return v2;
}

- (BOOL)isEmpty
{
  v2 = [(CAMTransientImageManager *)self _pairedVideosByPairedUUID];
  v3 = [v2 count] == 0;

  return v3;
}

- (id)existingPairedVideoUUIDs
{
  v2 = [(CAMTransientImageManager *)self _pairedVideosByPairedUUID];
  v3 = [v2 allKeys];

  return v3;
}

- (id)existingPairedVideoForUUID:(id)a3
{
  v4 = a3;
  v5 = [(CAMTransientImageManager *)self _pairedVideosByPairedUUID];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)insertPairedVideoWithConvertible:(id)a3 filterType:(int64_t)a4
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 irisStillImageUUID];
  v7 = [v5 persistenceURL];
  memset(&v51, 0, sizeof(v51));
  if (v5)
  {
    [v5 irisStillDisplayTime];
  }

  if (v6 && v7 && (v51.flags & 1) != 0)
  {
    v12 = [(CAMTransientImageManager *)self _pairedVideosByPairedUUID];
    v13 = [CAMTransientPairedVideo alloc];
    time = v51;
    v11 = [(CAMTransientPairedVideo *)v13 initWithURL:v7 stillDisplayTime:&time filterType:a4];
    [v12 setObject:v11 forKey:v6];

LABEL_11:
    v36 = v7;
    v38 = v5;
    v14 = [(CAMTransientImageManager *)self _activeRequestsByPairedUUID];
    v15 = [v14 objectForKeyedSubscript:v6];

    val = self;
    v16 = [(CAMTransientImageManager *)self _activeRequestsByPairedUUID];
    v37 = v6;
    [v16 setObject:0 forKeyedSubscript:v6];

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v47 objects:v56 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v48;
      v42 = *MEMORY[0x1E69C49C0];
      v41 = *MEMORY[0x1E69C49B8];
      v40 = *MEMORY[0x1E69C49B0];
      v39 = *MEMORY[0x1E696A578];
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v48 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v47 + 1) + 8 * i);
          [v22 setIsFinished:1];
          v23 = [v22 resultHandler];
          if (v23)
          {
            [v22 setResultHandler:0];
            if (v11)
            {
              v24 = MEMORY[0x1E695DF90];
              v25 = MEMORY[0x1E696B098];
              [(CAMTransientPairedVideo *)v11 stillDisplayTime];
              v26 = [v25 valueWithCMTime:&time];
              v27 = [v24 dictionaryWithObject:v26 forKey:v42];

              v28 = [CAMEffectFilterManager ciFilterNameForFilterType:a4];
              if (v28)
              {
                [v27 setObject:v28 forKeyedSubscript:v41];
              }

              v29 = [(CAMTransientPairedVideo *)v11 url];
              (v23)[2](v23, v29, v27);
            }

            else
            {
              v30 = MEMORY[0x1E696ABC0];
              v52 = v39;
              v53 = @"Invalid transient asset, unable to service the request.";
              v54 = v40;
              v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
              v32 = [v30 errorWithDomain:@"com.apple.CAMTransientImageManagerErrorDomain" code:-1 userInfo:v31];
              v55 = v32;
              v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];

              (v23)[2](v23, 0, v27);
            }
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v47 objects:v56 count:16];
      }

      while (v19);
    }

    objc_initWeak(&time, val);
    v33 = dispatch_time(0, 60000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__CAMTransientImageManager_insertPairedVideoWithConvertible_filterType___block_invoke;
    block[3] = &unk_1E76F7DC0;
    objc_copyWeak(&v46, &time);
    v6 = v37;
    v45 = v37;
    dispatch_after(v33, MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v46);
    objc_destroyWeak(&time);

    v5 = v38;
    v7 = v36;
    goto LABEL_26;
  }

  v8 = *MEMORY[0x1E695E480];
  time = v51;
  v9 = CMTimeCopyDescription(v8, &time);
  v10 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    LODWORD(time.value) = 138543874;
    *(&time.value + 4) = v6;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = v7;
    HIWORD(time.epoch) = 2114;
    v58 = v9;
    _os_log_error_impl(&dword_1A3640000, v10, OS_LOG_TYPE_ERROR, "Unable to insert a paired video for an invalid UUID (%{public}@), invalid URL (%{public}@), or invalid still display time (%{public}@)", &time, 0x20u);
  }

  v11 = 0;
  if (v6)
  {
    goto LABEL_11;
  }

LABEL_26:

  return v11;
}

void __72__CAMTransientImageManager_insertPairedVideoWithConvertible_filterType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained removePairedVideoForUUID:*(a1 + 32)];
}

- (void)removePairedVideoForUUID:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20 = [(CAMTransientImageManager *)self _pairedVideosByPairedUUID];
  [v20 removeObjectForKey:v4];
  v5 = [(CAMTransientImageManager *)self _activeRequestsByPairedUUID];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [(CAMTransientImageManager *)self _activeRequestsByPairedUUID];
  v21 = v4;
  [v7 setObject:0 forKeyedSubscript:v4];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    v11 = *MEMORY[0x1E69C49B0];
    v12 = *MEMORY[0x1E696A578];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        [v14 setIsCanceled:1];
        v15 = [v14 resultHandler];
        if (v15)
        {
          [v14 setResultHandler:0];
          v16 = MEMORY[0x1E696ABC0];
          v27 = v12;
          v28 = @"Transient paired video was removed so player request was canceled.";
          v29 = v11;
          v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
          v18 = [v16 errorWithDomain:@"com.apple.CAMTransientImageManagerErrorDomain" code:-1 userInfo:v17];
          v30 = v18;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];

          (v15)[2](v15, 0, v19);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v9);
  }
}

- (void)requestPairedVideoURLForUUID:(id)a3 resultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CAMTransientImageManager *)self _pairedVideosByPairedUUID];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (v9)
  {
    v10 = MEMORY[0x1E695DF90];
    v11 = MEMORY[0x1E696B098];
    [v9 stillDisplayTime];
    v12 = [v11 valueWithCMTime:location];
    v13 = [v10 dictionaryWithObject:v12 forKey:*MEMORY[0x1E69C49C0]];

    v14 = +[CAMEffectFilterManager ciFilterNameForFilterType:](CAMEffectFilterManager, "ciFilterNameForFilterType:", [v9 filterType]);
    if (v14)
    {
      [v13 setObject:v14 forKeyedSubscript:*MEMORY[0x1E69C49B8]];
    }

    v15 = [v9 url];
    v7[2](v7, v15, v13);
  }

  else
  {
    v16 = [(CAMTransientImageManager *)self _activeRequestsByPairedUUID];
    v13 = [v16 objectForKeyedSubscript:v6];

    if (!v13)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v17 = [(CAMTransientImageManager *)self _activeRequestsByPairedUUID];
      [v17 setObject:v13 forKeyedSubscript:v6];
    }

    v18 = objc_alloc_init(CAMTransientImageManagerRequest);
    [(CAMTransientImageManagerRequest *)v18 setUuid:v6];
    [(CAMTransientImageManagerRequest *)v18 setResultHandler:v7];

    [v13 addObject:v18];
    objc_initWeak(location, self);
    v19 = dispatch_time(0, 30000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__CAMTransientImageManager_requestPairedVideoURLForUUID_resultHandler___block_invoke;
    block[3] = &unk_1E76F7DC0;
    objc_copyWeak(&v23, location);
    v22 = v18;
    v20 = v18;
    dispatch_after(v19, MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v23);
    objc_destroyWeak(location);
  }
}

void __71__CAMTransientImageManager_requestPairedVideoURLForUUID_resultHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleRequestTimeout:*(a1 + 32)];
}

- (void)_handleRequestTimeout:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 isCanceled] & 1) == 0 && (objc_msgSend(v4, "isFinished") & 1) == 0)
  {
    [v4 setIsFinished:1];
    v5 = [(CAMTransientImageManager *)self _activeRequestsByPairedUUID];
    v6 = [v4 uuid];
    v7 = [v5 objectForKeyedSubscript:v6];

    [v7 removeObject:v4];
    v8 = [v4 resultHandler];
    if (v8)
    {
      [v4 setResultHandler:0];
      v15 = *MEMORY[0x1E69C49B0];
      v9 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E696A578];
      v14 = @"Transient player item request timed out.";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      v11 = [v9 errorWithDomain:@"com.apple.CAMTransientImageManagerErrorDomain" code:-1 userInfo:v10];
      v16[0] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];

      (v8)[2](v8, 0, v12);
    }
  }
}

@end