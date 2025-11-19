@interface CPSWebClipStore
+ (id)_readWebClipDictionaryRepresentationFromDiskWithWebClipIdentifier:(id)a3;
+ (id)_urlForWebClipWithIdentifier:(id)a3;
+ (id)sharedStore;
- (BOOL)_redirectPoweredByWebClipsWithApplicationBundleIdentifier:(id)a3 toParentApplicationBundleIdentifier:(id)a4 errors:(id *)a5;
- (BOOL)_removeWebClipWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)_removeWebClipsWithApplicationBundleIdentifier:(id)a3 errors:(id *)a4;
- (BOOL)_saveWebClip:(id)a3 error:(id *)a4;
- (id)_copyOrReplaceExistingFileAtPath:(id)a3 withNewFileAtPath:(id)a4;
- (id)_createOrUpdateExistingWebClipWithClipMetadata:(id)a3 createdNewWebClip:(BOOL *)a4 error:(id *)a5;
- (id)_enumerateAndFilterClipsWithBlock:(id)a3;
- (id)_enumerateAndMapClipsWithBlock:(id)a3;
- (id)_fetchInstalledAppClips;
- (id)_init;
- (id)_removeFileFromPath:(id)a3;
- (id)_webClipsBackedbyAppClipIdentifier:(id)a3;
- (id)synchronouslyGetAppClipWithIdentifier:(id)a3;
- (void)_reloadSpringBoardIconForWebClipWithIdentifier:(id)a3;
- (void)createOrUpdateExistingWebClipWithMetadata:(id)a3 comletionHandler:(id)a4;
- (void)fetchAppClipsWithCompletionHandler:(id)a3;
- (void)fetchBookmarkWebClipsWithCompletionHandler:(id)a3;
- (void)fetchWebClipsURLStringForClientBundleID:(id)a3 completionHandler:(id)a4;
- (void)fetchWebClipsUUIDStringForClientBundleID:(id)a3 completionHandler:(id)a4;
- (void)getAppClipWithIdentifier:(id)a3 receiveOnQueue:(id)a4 completionHandler:(id)a5;
- (void)getAppClipWithURLHash:(id)a3 completionHandler:(id)a4;
- (void)getWebClipDictionaryWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)getWebClipWithURL:(id)a3 completionHandler:(id)a4;
- (void)getWebClipsBackedbyAppClipIdentifier:(id)a3 completion:(id)a4;
- (void)purgeDuplicateWebClipsWithCompletionHandler:(id)a3;
- (void)redirectPoweredByWebClipsWithApplicationBundleIdentifier:(id)a3 toParentApplicationBundleIdentifier:(id)a4 completionHandler:(id)a5;
- (void)reloadSpringBoardIconForWebClipWithIdentifier:(id)a3;
- (void)removeAppClipIconForWebClipWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)removeExpiredPoweredByWebClipsWithCompletionHandler:(id)a3;
- (void)removePoweredByWebClipsLastActivatedBefore:(id)a3 completion:(id)a4;
- (void)removeWebClipWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)removeWebClipsWithApplicationBundleIdentifier:(id)a3 completionHandler:(id)a4;
- (void)removeWebClipsWithApplicationBundleIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)saveWebClip:(id)a3 completionHandler:(id)a4;
- (void)updateAppClipIcon:(id)a3 forWebClipWithIdentifier:(id)a4 completionHandler:(id)a5;
- (void)updateWebClipTitle:(id)a3 forAppClipBundleIdentifier:(id)a4 completionHandler:(id)a5;
@end

@implementation CPSWebClipStore

+ (id)sharedStore
{
  if (sharedStore_onceToken != -1)
  {
    +[CPSWebClipStore sharedStore];
  }

  v3 = sharedStore_store;

  return v3;
}

uint64_t __30__CPSWebClipStore_sharedStore__block_invoke()
{
  sharedStore_store = [[CPSWebClipStore alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = CPSWebClipStore;
  v2 = [(CPSWebClipStore *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.ClipServices.%@.%p", objc_opt_class(), v2];
    v4 = dispatch_queue_create([v3 UTF8String], 0);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = v2;
  }

  return v2;
}

+ (id)_urlForWebClipWithIdentifier:(id)a3
{
  v3 = pathForWebClipWithIdentifier(a3);
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_readWebClipDictionaryRepresentationFromDiskWithWebClipIdentifier:(id)a3
{
  v3 = [a1 _urlForWebClipWithIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    v5 = CFBundleCopyInfoDictionaryForURL(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)redirectPoweredByWebClipsWithApplicationBundleIdentifier:(id)a3 toParentApplicationBundleIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __130__CPSWebClipStore_redirectPoweredByWebClipsWithApplicationBundleIdentifier_toParentApplicationBundleIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_278DCE070;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

void __130__CPSWebClipStore_redirectPoweredByWebClipsWithApplicationBundleIdentifier_toParentApplicationBundleIdentifier_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v7 = 0;
  [v2 _redirectPoweredByWebClipsWithApplicationBundleIdentifier:v3 toParentApplicationBundleIdentifier:v4 errors:&v7];
  v5 = v7;
  v6 = a1[7];
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }
}

- (BOOL)_redirectPoweredByWebClipsWithApplicationBundleIdentifier:(id)a3 toParentApplicationBundleIdentifier:(id)a4 errors:(id *)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v21 = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [(CPSWebClipStore *)self _appClips];
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        if ([v14 isPoweredBy])
        {
          v15 = [v14 applicationBundleIdentifier];
          v16 = [v15 isEqualToString:v7];

          if (v16)
          {
            [v14 setApplicationBundleIdentifier:v8];
            v22 = 0;
            [(CPSWebClipStore *)self _saveWebClip:v14 error:&v22];
            v17 = v22;
            if (v17)
            {
              [v21 addObject:v17];
            }
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v18 = [v21 count] == 0;
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)removeWebClipsWithApplicationBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__CPSWebClipStore_removeWebClipsWithApplicationBundleIdentifier_completionHandler___block_invoke;
  block[3] = &unk_278DCDCF8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __83__CPSWebClipStore_removeWebClipsWithApplicationBundleIdentifier_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v6 = 0;
  [v2 _removeWebClipsWithApplicationBundleIdentifier:v3 errors:&v6];
  v4 = v6;
  v5 = a1[6];
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }
}

- (BOOL)_removeWebClipsWithApplicationBundleIdentifier:(id)a3 errors:(id *)a4
{
  v21 = a4;
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [(CPSWebClipStore *)self _appClips];
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = [v12 applicationBundleIdentifier];
        v14 = [v13 isEqualToString:v5];

        if (v14)
        {
          v15 = [v12 identifier];
          v22 = 0;
          [(CPSWebClipStore *)self _removeWebClipWithIdentifier:v15 error:&v22];
          v16 = v22;
          if (v16)
          {
            [v6 addObject:v16];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    v17 = v6;
  }

  else
  {
    v17 = 0;
  }

  *v21 = v17;
  v18 = [v6 count] == 0;

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)removeWebClipsWithApplicationBundleIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__CPSWebClipStore_removeWebClipsWithApplicationBundleIdentifiers_completionHandler___block_invoke;
  block[3] = &unk_278DCDCF8;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __84__CPSWebClipStore_removeWebClipsWithApplicationBundleIdentifiers_completionHandler___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 32)];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [*(a1 + 40) _appClips];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v9 applicationBundleIdentifier];
        v11 = [v3 containsObject:v10];

        if (v11)
        {
          v12 = [v9 identifier];
          v13 = *(a1 + 40);
          v18 = 0;
          [v13 _removeWebClipWithIdentifier:v12 error:&v18];
          v14 = v18;
          if (v14)
          {
            [v2 addObject:v14];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    if ([v2 count])
    {
      v16 = v2;
    }

    else
    {
      v16 = 0;
    }

    (*(v15 + 16))(v15, v16);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)removeWebClipWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__CPSWebClipStore_removeWebClipWithIdentifier_completionHandler___block_invoke;
  block[3] = &unk_278DCDCF8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __65__CPSWebClipStore_removeWebClipWithIdentifier_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v6 = 0;
  [v2 _removeWebClipWithIdentifier:v3 error:&v6];
  v4 = v6;
  v5 = a1[6];
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }
}

- (BOOL)_removeWebClipWithIdentifier:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277CCAA00];
  v6 = a3;
  v7 = [v5 defaultManager];
  v8 = pathForWebClipWithIdentifier(v6);
  [v7 removeItemAtPath:v8 error:a4];

  v9 = SBSSpringBoardServerPort();
  v10 = [v6 UTF8String];

  v11 = MEMORY[0x245D3D130](v9, v10);
  if (v11)
  {
    v12 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CPSWebClipStore _removeWebClipWithIdentifier:v11 error:v12];
    }
  }

  return !v11 && *a4 == 0;
}

- (void)saveWebClip:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__CPSWebClipStore_saveWebClip_completionHandler___block_invoke;
  block[3] = &unk_278DCDCF8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __49__CPSWebClipStore_saveWebClip_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v7 = 0;
  v4 = [v2 _saveWebClip:v3 error:&v7];
  v5 = v7;
  v6 = a1[6];
  if (v6)
  {
    (*(v6 + 16))(v6, v4, v5);
  }
}

- (BOOL)_saveWebClip:(id)a3 error:(id *)a4
{
  v52[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([v6 webClipType] == 1)
  {
    v7 = [v6 identifier];
    v8 = pathForWebClipWithIdentifier(v7);
    v9 = iconPathForWebClipWithIdentifier(v7);
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    if (([v10 fileExistsAtPath:v8] & 1) == 0 && (objc_msgSend(v10, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v8, 0, 0, a4) & 1) == 0)
    {
      v33 = CPS_LOG_CHANNEL_PREFIXClipServices();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [CPSWebClipStore _saveWebClip:a4 error:v33];
      }

      v30 = 0;
      goto LABEL_41;
    }

    v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8 isDirectory:1];
    if (([v11 setResourceValue:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBE878] error:a4] & 1) == 0)
    {
      v32 = CPS_LOG_CHANNEL_PREFIXClipServices();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [CPSWebClipStore _saveWebClip:a4 error:v32];
      }

      v30 = 0;
      goto LABEL_40;
    }

    v44 = v11;
    v12 = [v8 stringByAppendingPathComponent:@"Info.plist"];
    v13 = [v6 _dictionaryRepresentation];
    v14 = [v13 writeToFile:v12 atomically:1];

    if (v14)
    {
      v43 = v9;
      v15 = [MEMORY[0x277CCAA00] defaultManager];
      v40 = *MEMORY[0x277CCA1B0];
      v51 = *MEMORY[0x277CCA1B0];
      v39 = *MEMORY[0x277CCA1B8];
      v52[0] = *MEMORY[0x277CCA1B8];
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];
      v46 = 0;
      v42 = v12;
      v17 = [v15 setAttributes:v16 ofItemAtPath:v12 error:&v46];
      v18 = v46;

      if ((v17 & 1) == 0)
      {
        v19 = CPS_LOG_CHANNEL_PREFIXClipServices();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = v19;
          v21 = [v18 cps_privacyPreservingDescription];
          *buf = 138543362;
          v50 = v21;
          _os_log_impl(&dword_2436ED000, v20, OS_LOG_TYPE_INFO, "Couldn't change WebClip Info.plist's data protection class: %{public}@", buf, 0xCu);
        }
      }

      v22 = [v6 _temporaryIconPath];
      if (v22 && (v23 = [(CPSWebClipStore *)self _copyOrReplaceExistingFileAtPath:v43 withNewFileAtPath:v22], v23, !v23))
      {
        v35 = CPS_LOG_CHANNEL_PREFIXClipServices();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [CPSWebClipStore _saveWebClip:error:];
        }

        v9 = v43;
        if (a4)
        {
          [MEMORY[0x277CCA9B8] cps_errorWithCode:1];
          *a4 = v30 = 0;
        }

        else
        {
          v30 = 0;
        }
      }

      else
      {
        v24 = [v6 iconImagePath];

        if (v24)
        {
          v38 = v18;
          v25 = v43;
          v26 = [MEMORY[0x277CCAA00] defaultManager];
          v47 = v40;
          v48 = v39;
          v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
          v45 = 0;
          v41 = v25;
          LOBYTE(v25) = [v26 setAttributes:v27 ofItemAtPath:v25 error:&v45];
          v28 = v45;

          if ((v25 & 1) == 0)
          {
            v29 = CPS_LOG_CHANNEL_PREFIXClipServices();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              [CPSWebClipStore _saveWebClip:v29 error:?];
            }
          }

          v18 = v38;
        }

        [(CPSWebClipStore *)self _reloadSpringBoardIconForWebClipWithIdentifier:v7, v38];
        v30 = 1;
        v9 = v43;
      }

      v12 = v42;
      goto LABEL_39;
    }

    v34 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [CPSWebClipStore _saveWebClip:error:];
      if (a4)
      {
        goto LABEL_29;
      }
    }

    else if (a4)
    {
LABEL_29:
      [MEMORY[0x277CCA9B8] cps_errorWithCode:1];
      *a4 = v30 = 0;
LABEL_39:

      v11 = v44;
LABEL_40:

LABEL_41:
      goto LABEL_42;
    }

    v30 = 0;
    goto LABEL_39;
  }

  v31 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    [CPSWebClipStore _saveWebClip:error:];
    if (a4)
    {
      goto LABEL_20;
    }

LABEL_31:
    v30 = 0;
    goto LABEL_42;
  }

  if (!a4)
  {
    goto LABEL_31;
  }

LABEL_20:
  [MEMORY[0x277CCA9B8] cps_errorWithCode:13];
  *a4 = v30 = 0;
LABEL_42:

  v36 = *MEMORY[0x277D85DE8];
  return v30;
}

- (void)updateWebClipTitle:(id)a3 forAppClipBundleIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83__CPSWebClipStore_updateWebClipTitle_forAppClipBundleIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_278DCE070;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(queue, v15);
}

void __83__CPSWebClipStore_updateWebClipTitle_forAppClipBundleIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [*(a1 + 32) _webClipsBackedbyAppClipIdentifier:*(a1 + 40)];
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        if (([v8 isPoweredBy] & 1) == 0)
        {
          v9 = [v8 title];
          v10 = [v9 isEqualToString:*(a1 + 48)];

          if ((v10 & 1) == 0)
          {
            [v8 setTitle:*(a1 + 48)];
          }

          v11 = *(a1 + 32);
          v15 = v5;
          [v11 _saveWebClip:v8 error:&v15];
          v12 = v15;

          v5 = v12;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    (*(v13 + 16))(v13, v5);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)updateAppClipIcon:(id)a3 forWebClipWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__CPSWebClipStore_updateAppClipIcon_forWebClipWithIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_278DCE070;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

uint64_t __80__CPSWebClipStore_updateAppClipIcon_forWebClipWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    v3 = iconPathForWebClipWithIdentifier(*(a1 + 48));
    v4 = [*(a1 + 32) path];
    [v2 _copyOrReplaceExistingFileAtPath:v3 withNewFileAtPath:v4];
  }

  [*(a1 + 40) _reloadSpringBoardIconForWebClipWithIdentifier:*(a1 + 48)];
  v5 = *(a1 + 56);
  if (v5)
  {
    (*(v5 + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

- (void)removeAppClipIconForWebClipWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__CPSWebClipStore_removeAppClipIconForWebClipWithIdentifier_completionHandler___block_invoke;
  block[3] = &unk_278DCDCF8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __79__CPSWebClipStore_removeAppClipIconForWebClipWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = iconPathForWebClipWithIdentifier(*(a1 + 40));
  v5 = [v2 _removeFileFromPath:v3];

  [*(a1 + 32) _reloadSpringBoardIconForWebClipWithIdentifier:*(a1 + 40)];
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
  }
}

- (id)_copyOrReplaceExistingFileAtPath:(id)a3 withNewFileAtPath:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CPSWebClipStore *)self _removeFileFromPath:v6];
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v16 = v8;
  [v9 copyItemAtPath:v7 toPath:v6 error:&v16];
  v10 = v16;

  if (v10)
  {
    v11 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = v11;
      v15 = [v10 cps_privacyPreservingDescription];
      *buf = 138478339;
      v18 = v7;
      v19 = 2113;
      v20 = v6;
      v21 = 2114;
      v22 = v15;
      _os_log_error_impl(&dword_2436ED000, v14, OS_LOG_TYPE_ERROR, "Could not copy icon from path %{private}@ to %{private}@: %{public}@", buf, 0x20u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)_removeFileFromPath:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v4 fileExistsAtPath:v3])
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = 0;
    [v5 removeItemAtPath:v3 error:&v9];
    v6 = v9;

    if (v6)
    {
      v7 = CPS_LOG_CHANNEL_PREFIXClipServices();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(CPSWebClipStore *)v3 _removeFileFromPath:v7, v6];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)getAppClipWithIdentifier:(id)a3 receiveOnQueue:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__CPSWebClipStore_getAppClipWithIdentifier_receiveOnQueue_completionHandler___block_invoke;
  block[3] = &unk_278DCE318;
  v13 = v8;
  v14 = v9;
  block[4] = self;
  v10 = v8;
  v11 = v9;
  dispatch_async(a4, block);
}

void __77__CPSWebClipStore_getAppClipWithIdentifier_receiveOnQueue_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) synchronouslyGetAppClipWithIdentifier:*(a1 + 40)];
  (*(v1 + 16))(v1, v2);
}

- (id)synchronouslyGetAppClipWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _readWebClipDictionaryRepresentationFromDiskWithWebClipIdentifier:v3];
  if (v4)
  {
    v5 = [[CPSWebClip alloc] _initWithIdentifier:v3 webClipDictionary:v4];
    if ([v5 webClipType] == 1)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)getAppClipWithURLHash:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__CPSWebClipStore_getAppClipWithURLHash_completionHandler___block_invoke;
  block[3] = &unk_278DCDCF8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __59__CPSWebClipStore_getAppClipWithURLHash_completionHandler___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__CPSWebClipStore_getAppClipWithURLHash_completionHandler___block_invoke_2;
  v7[3] = &unk_278DCE340;
  v2 = *(a1 + 32);
  v8 = *(a1 + 40);
  v3 = [v2 _enumerateAndFilterClipsWithBlock:v7];
  v4 = [v3 count];
  v5 = *(a1 + 48);
  if (v4)
  {
    v6 = [v3 firstObject];
    (*(v5 + 16))(v5, v6);
  }

  else
  {
    (*(v5 + 16))(v5, 0);
  }
}

uint64_t __59__CPSWebClipStore_getAppClipWithURLHash_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 registeredURL];
  v4 = [v3 absoluteString];
  v5 = [v4 cps_sha256String];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  return v6;
}

- (void)fetchBookmarkWebClipsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__CPSWebClipStore_fetchBookmarkWebClipsWithCompletionHandler___block_invoke;
    v7[3] = &unk_278DCE368;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

void __62__CPSWebClipStore_fetchBookmarkWebClipsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _bookmarkWebClips];
  (*(v1 + 16))(v1, v2);
}

- (void)fetchWebClipsUUIDStringForClientBundleID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__CPSWebClipStore_fetchWebClipsUUIDStringForClientBundleID_completionHandler___block_invoke;
    block[3] = &unk_278DCDCF8;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_async(queue, block);
  }
}

void __78__CPSWebClipStore_fetchWebClipsUUIDStringForClientBundleID_completionHandler___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __78__CPSWebClipStore_fetchWebClipsUUIDStringForClientBundleID_completionHandler___block_invoke_2;
  v4[3] = &unk_278DCE390;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 _enumerateAndMapClipsWithBlock:v4];
  (*(*(a1 + 48) + 16))();
}

id __78__CPSWebClipStore_fetchWebClipsUUIDStringForClientBundleID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!*(a1 + 32))
  {
    if ([v3 webClipType] != 1)
    {
      goto LABEL_9;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_11;
  }

  v5 = [v3 trustedClientBundleIdentifiers];
  if ([v5 containsObject:*(a1 + 32)])
  {

LABEL_9:
    v5 = [v4 uuid];
    v6 = [v5 UUIDString];
    goto LABEL_10;
  }

  if (!*(a1 + 32))
  {
    v7 = [v4 webClipType];

    if (v7 != 1)
    {
      goto LABEL_9;
    }

    goto LABEL_5;
  }

  v6 = 0;
LABEL_10:

LABEL_11:

  return v6;
}

- (void)fetchWebClipsURLStringForClientBundleID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__CPSWebClipStore_fetchWebClipsURLStringForClientBundleID_completionHandler___block_invoke;
    block[3] = &unk_278DCDCF8;
    block[4] = self;
    v10 = v6;
    v11 = v7;
    dispatch_async(queue, block);
  }
}

void __77__CPSWebClipStore_fetchWebClipsURLStringForClientBundleID_completionHandler___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __77__CPSWebClipStore_fetchWebClipsURLStringForClientBundleID_completionHandler___block_invoke_2;
  v4[3] = &unk_278DCE390;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [v2 _enumerateAndMapClipsWithBlock:v4];
  (*(*(a1 + 48) + 16))();
}

id __77__CPSWebClipStore_fetchWebClipsURLStringForClientBundleID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!*(a1 + 32))
  {
    if ([v3 webClipType] != 1)
    {
      goto LABEL_9;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_11;
  }

  v5 = [v3 trustedClientBundleIdentifiers];
  if ([v5 containsObject:*(a1 + 32)])
  {

LABEL_9:
    v5 = [v4 pageURL];
    v6 = [v5 absoluteString];
    goto LABEL_10;
  }

  if (!*(a1 + 32))
  {
    v7 = [v4 webClipType];

    if (v7 != 1)
    {
      goto LABEL_9;
    }

    goto LABEL_5;
  }

  v6 = 0;
LABEL_10:

LABEL_11:

  return v6;
}

- (void)fetchAppClipsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__CPSWebClipStore_fetchAppClipsWithCompletionHandler___block_invoke;
    v7[3] = &unk_278DCE368;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

void __54__CPSWebClipStore_fetchAppClipsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _appClips];
  (*(v1 + 16))(v1, v2);
}

- (id)_fetchInstalledAppClips
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__CPSWebClipStore__fetchInstalledAppClips__block_invoke;
  v5[3] = &unk_278DCE2C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __42__CPSWebClipStore__fetchInstalledAppClips__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _appClips];
  v2 = [v5 safari_filterObjectsUsingBlock:&__block_literal_global_16];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_enumerateAndFilterClipsWithBlock:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__CPSWebClipStore__enumerateAndFilterClipsWithBlock___block_invoke;
  v9[3] = &unk_278DCE3D8;
  v10 = v4;
  v5 = v4;
  v6 = MEMORY[0x245D3D5F0](v9);
  v7 = [(CPSWebClipStore *)self _enumerateAndMapClipsWithBlock:v6];

  return v7;
}

id __53__CPSWebClipStore__enumerateAndFilterClipsWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_enumerateAndMapClipsWithBlock:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v34 = a3;
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = objc_autoreleasePoolPush();
  v5 = webClipsDirectoryPath();
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v41 = 0;
  v7 = [v6 contentsOfDirectoryAtPath:v5 error:&v41];
  v8 = v41;
  if (v8)
  {
    v9 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CPSWebClipStore _enumerateAndMapClipsWithBlock:v9];
    }

    [v7 count];
    goto LABEL_5;
  }

  if (![v7 count])
  {
LABEL_5:
    v10 = v3;

    objc_autoreleasePoolPop(v4);
    goto LABEL_24;
  }

  context = v4;
  v31 = v3;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v38;
    v32 = v5;
    v35 = *v38;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v37 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        v18 = [v5 stringByAppendingPathComponent:v16];
        v36 = 0;
        if ([v6 fileExistsAtPath:v18 isDirectory:&v36] && v36 == 1)
        {
          v19 = [v16 stringByDeletingPathExtension];
          v20 = [v18 stringByAppendingPathComponent:@"Info.plist"];
          if (v19)
          {
            if ([v6 fileExistsAtPath:v20])
            {
              v21 = [objc_opt_class() _readWebClipDictionaryRepresentationFromDiskWithWebClipIdentifier:v19];
              if (v21)
              {
                v22 = v21;
                v23 = [[CPSWebClip alloc] _initWithIdentifier:v19 webClipDictionary:v21];
                v24 = v34[2](v34, v23);
                v25 = v22;
                v26 = v24;
                if (v24)
                {
                  v33 = v25;
                  [v31 addObject:v24];
                  v25 = v33;
                }

                v5 = v32;
              }
            }
          }

          v14 = v35;
        }

        objc_autoreleasePoolPop(v17);
      }

      v13 = [v11 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v13);
  }

  objc_autoreleasePoolPop(context);
  v3 = v31;
  v27 = v31;
LABEL_24:

  v28 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)reloadSpringBoardIconForWebClipWithIdentifier:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__CPSWebClipStore_reloadSpringBoardIconForWebClipWithIdentifier___block_invoke;
  v7[3] = &unk_278DCDE58;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_reloadSpringBoardIconForWebClipWithIdentifier:(id)a3
{
  if (a3)
  {
    [MEMORY[0x277D66CE8] updateWebClipPropertiesWithIdentifier:?];
  }
}

- (void)createOrUpdateExistingWebClipWithMetadata:(id)a3 comletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__CPSWebClipStore_createOrUpdateExistingWebClipWithMetadata_comletionHandler___block_invoke;
  block[3] = &unk_278DCDCF8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __78__CPSWebClipStore_createOrUpdateExistingWebClipWithMetadata_comletionHandler___block_invoke(void *a1)
{
  v8 = 0;
  v2 = a1[4];
  v3 = a1[5];
  v7 = 0;
  v4 = [v2 _createOrUpdateExistingWebClipWithClipMetadata:v3 createdNewWebClip:&v8 error:&v7];
  v5 = v7;
  v6 = a1[6];
  if (v6)
  {
    (*(v6 + 16))(v6, v4, v8, v5);
  }
}

- (id)_createOrUpdateExistingWebClipWithClipMetadata:(id)a3 createdNewWebClip:(BOOL *)a4 error:(id *)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if ([v7 hasFullAppInstalledOnSystem])
  {
    [v7 fullAppBundleID];
  }

  else
  {
    [v7 clipBundleID];
  }
  v8 = ;
  v34 = [v7 clipURL];
  *a4 = 0;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = [(CPSWebClipStore *)self _appClips];
  v10 = [v9 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (!v10)
  {

LABEL_28:
    v13 = [[CPSWebClip alloc] _init];
    *a4 = 1;
    goto LABEL_29;
  }

  v12 = v10;
  v31 = a4;
  v32 = a5;
  v13 = 0;
  v14 = *v37;
  *&v11 = 138478083;
  v30 = v11;
  while (2)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v37 != v14)
      {
        objc_enumerationMutation(v9);
      }

      v16 = *(*(&v36 + 1) + 8 * i);
      v17 = [v16 applicationBundleIdentifier];
      v18 = [v17 isEqualToString:v8];

      if (v18)
      {
        if ([v7 isPoweredByThirdParty] & 1) != 0 || (objc_msgSend(v16, "isPoweredBy"))
        {
          if (!v13)
          {
            v19 = [v16 registeredURL];
            v20 = v19;
            if (v19 == v34 || ([v19 isEqual:?] & 1) != 0)
            {
              v13 = v16;

              goto LABEL_25;
            }

            v13 = 0;
          }
        }

        else if (v13)
        {
          v21 = [v16 identifier];
          v35 = 0;
          [(CPSWebClipStore *)self _removeWebClipWithIdentifier:v21 error:&v35];
          v22 = v35;

          v23 = CPS_LOG_CHANNEL_PREFIXClipServices();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v24 = v23;
            v25 = [v22 cps_privacyPreservingDescription];
            *buf = v30;
            v41 = v8;
            v42 = 2114;
            v43 = v25;
            _os_log_error_impl(&dword_2436ED000, v24, OS_LOG_TYPE_ERROR, "Removed duplicate web clip for %{private}@, error: %{public}@", buf, 0x16u);
          }
        }

        else
        {
          v13 = v16;
        }
      }
    }

    v12 = [v9 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_25:

  a4 = v31;
  a5 = v32;
  if (!v13)
  {
    goto LABEL_28;
  }

LABEL_29:
  [v13 _updateWithClipMetadata:v7];
  if ([(CPSWebClipStore *)self _saveWebClip:v13 error:a5])
  {
    v26 = v13;
  }

  else
  {
    v27 = CPS_LOG_CHANNEL_PREFIXClipServices();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [CPSWebClipStore _createOrUpdateExistingWebClipWithClipMetadata:createdNewWebClip:error:];
    }

    v26 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v26;
}

- (void)getWebClipWithURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__CPSWebClipStore_getWebClipWithURL_completionHandler___block_invoke;
  block[3] = &unk_278DCDCF8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __55__CPSWebClipStore_getWebClipWithURL_completionHandler___block_invoke(uint64_t a1)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__CPSWebClipStore_getWebClipWithURL_completionHandler___block_invoke_2;
  v6[3] = &unk_278DCE340;
  v2 = *(a1 + 32);
  v7 = *(a1 + 40);
  v3 = [v2 _enumerateAndFilterClipsWithBlock:v6];
  v4 = *(a1 + 48);
  if ([v3 count])
  {
    v5 = [v3 firstObject];
    (*(v4 + 16))(v4, v5);
  }

  else
  {
    (*(v4 + 16))(v4, 0);
  }
}

uint64_t __55__CPSWebClipStore_getWebClipWithURL_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 pageURL];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)getWebClipDictionaryWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    queue = self->_queue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __72__CPSWebClipStore_getWebClipDictionaryWithIdentifier_completionHandler___block_invoke;
    v9[3] = &unk_278DCDD70;
    v10 = v6;
    v11 = v7;
    dispatch_async(queue, v9);
  }
}

void __72__CPSWebClipStore_getWebClipDictionaryWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) UUIDString];
  v15 = [v2 stringByReplacingOccurrencesOfString:@"-" withString:&stru_28567C2A8];

  v3 = pathForWebClipWithIdentifier(v15);
  v4 = [v3 stringByAppendingPathComponent:@"Info.plist"];
  if (!v15)
  {
    goto LABEL_7;
  }

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v4];
  v8 = [v7 mutableCopy];

  if (v8)
  {
    [v8 setObject:v15 forKeyedSubscript:@"DictionaryRepresentationIdentifier"];
    v9 = [v3 stringByAppendingPathComponent:@"ApplicationManifest"];
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    v11 = [v10 fileExistsAtPath:v9];

    if (v11)
    {
      v12 = MEMORY[0x277CBEA90];
      v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9 isDirectory:0];
      v14 = [v12 dataWithContentsOfURL:v13];

      [v8 setObject:v14 forKeyedSubscript:@"DictionaryRepresentationManifest"];
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
LABEL_7:
    (*(*(a1 + 40) + 16))();
  }
}

- (void)getWebClipsBackedbyAppClipIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__CPSWebClipStore_getWebClipsBackedbyAppClipIdentifier_completion___block_invoke;
  block[3] = &unk_278DCE318;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

void __67__CPSWebClipStore_getWebClipsBackedbyAppClipIdentifier_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) _webClipsBackedbyAppClipIdentifier:*(a1 + 40)];
  (*(v1 + 16))(v1, v2);
}

- (id)_webClipsBackedbyAppClipIdentifier:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(CPSWebClipStore *)self _appClips];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 applicationBundleIdentifier];
        v13 = [v12 isEqualToString:v4];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)purgeDuplicateWebClipsWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__CPSWebClipStore_purgeDuplicateWebClipsWithCompletionHandler___block_invoke;
  v7[3] = &unk_278DCDD70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __63__CPSWebClipStore_purgeDuplicateWebClipsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [*(a1 + 32) _appClips];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        if (([v8 isPoweredBy] & 1) == 0)
        {
          v9 = [v8 applicationBundleIdentifier];
          if (v9)
          {
            v10 = [v2 objectForKeyedSubscript:v9];

            if (!v10)
            {
              v11 = [MEMORY[0x277CBEB18] array];
              [v2 setObject:v11 forKeyedSubscript:v9];
            }

            v12 = [v2 objectForKeyedSubscript:v9];
            [v12 addObject:v8];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__CPSWebClipStore_purgeDuplicateWebClipsWithCompletionHandler___block_invoke_2;
  v14[3] = &unk_278DCE400;
  v14[4] = *(a1 + 32);
  [v2 enumerateKeysAndObjectsUsingBlock:v14];
  (*(*(a1 + 40) + 16))();

  v13 = *MEMORY[0x277D85DE8];
}

void __63__CPSWebClipStore_purgeDuplicateWebClipsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v6 count] >= 2)
  {
    [v6 removeObjectAtIndex:0];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = v6;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        v11 = 0;
        do
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(a1 + 32);
          v13 = [*(*(&v21 + 1) + 8 * v11) identifier];
          v20 = 0;
          [v12 _removeWebClipWithIdentifier:v13 error:&v20];
          v14 = v20;

          v15 = CPS_LOG_CHANNEL_PREFIXClipServices();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = v15;
            v17 = [v14 cps_privacyPreservingDescription];
            *buf = 138478083;
            v26 = v5;
            v27 = 2114;
            v28 = v17;
            _os_log_error_impl(&dword_2436ED000, v16, OS_LOG_TYPE_ERROR, "Removed duplicate web clip for %{private}@, error: %{public}@", buf, 0x16u);
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v9);
    }

    v6 = v19;
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)removePoweredByWebClipsLastActivatedBefore:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__CPSWebClipStore_removePoweredByWebClipsLastActivatedBefore_completion___block_invoke;
  block[3] = &unk_278DCDCF8;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

uint64_t __73__CPSWebClipStore_removePoweredByWebClipsLastActivatedBefore_completion___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v35 = v3;
    _os_log_impl(&dword_2436ED000, v2, OS_LOG_TYPE_DEFAULT, "Removing powered by web clips last activated before: %@", buf, 0xCu);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = [*(a1 + 40) _appClips];
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v31;
    *&v6 = 138412546;
    v28 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v11 = [v10 lastActivatedTime];

        if (!v11)
        {
          v21 = [MEMORY[0x277CBEAA8] now];
          [v10 setLastActivatedTime:v21];
LABEL_17:

          continue;
        }

        if ([v10 isPoweredBy])
        {
          v12 = [v10 lastActivatedTime];
          v13 = [v12 compare:*(a1 + 32)];

          if (v13 == -1)
          {
            v14 = CPS_LOG_CHANNEL_PREFIXClipServices();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = v14;
              v16 = [v10 identifier];
              v17 = [v10 lastActivatedTime];
              *buf = v28;
              v35 = v16;
              v36 = 2112;
              v37 = v17;
              _os_log_impl(&dword_2436ED000, v15, OS_LOG_TYPE_DEFAULT, "Removing web clip with identifier: %@ lastActivatedTime: %@", buf, 0x16u);
            }

            v18 = *(a1 + 40);
            v19 = [v10 identifier];
            v29 = 0;
            v20 = [v18 _removeWebClipWithIdentifier:v19 error:&v29];
            v21 = v29;

            if ((v20 & 1) == 0)
            {
              v22 = CPS_LOG_CHANNEL_PREFIXClipServices();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                v23 = v22;
                v24 = [v10 identifier];
                v25 = [v21 localizedDescription];
                *buf = v28;
                v35 = v24;
                v36 = 2112;
                v37 = v25;
                _os_log_error_impl(&dword_2436ED000, v23, OS_LOG_TYPE_ERROR, "Unable to remove expired web clip with identifier: %@ error: %@", buf, 0x16u);
              }
            }

            goto LABEL_17;
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v7);
  }

  result = (*(*(a1 + 48) + 16))();
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)removeExpiredPoweredByWebClipsWithCompletionHandler:(id)a3
{
  v4 = MEMORY[0x277CBEA80];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [MEMORY[0x277CBEAA8] now];
  v8 = [v6 dateByAddingUnit:16 value:-10 toDate:v7 options:0];

  [(CPSWebClipStore *)self removePoweredByWebClipsLastActivatedBefore:v8 completion:v5];
}

- (void)_removeWebClipWithIdentifier:(int)a1 error:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_2436ED000, a2, OS_LOG_TYPE_ERROR, "Unable to remove web clip to Home Screen %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_saveWebClip:(uint64_t *)a1 error:(void *)a2 .cold.2(uint64_t *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v6, v7, "Couldn't create WebClip bundle: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_saveWebClip:(uint64_t *)a1 error:(void *)a2 .cold.3(uint64_t *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v6, v7, "Couldn't exclude WebClip from backup: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_saveWebClip:(void *)a1 error:.cold.6(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "Couldn't change WebClip icon's data protection class: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_removeFileFromPath:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 cps_privacyPreservingDescription];
  v8 = 138478083;
  v9 = a1;
  v10 = 2114;
  v11 = v6;
  _os_log_error_impl(&dword_2436ED000, v5, OS_LOG_TYPE_ERROR, "Could not remove existing icon from path %{private}@: %{public}@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_enumerateAndMapClipsWithBlock:(void *)a1 .cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() cps_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2436ED000, v4, v5, "Unable to retrieve contents of the web clip directory: %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end