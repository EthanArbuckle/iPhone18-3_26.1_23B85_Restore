@interface ML3SetCloudIDImportOperation
- (BOOL)_importPlaylistsUsingImportSession:(void *)session;
- (BOOL)_importTracksUsingImportSession:(void *)session;
- (BOOL)_performImportWithTransaction:(id)transaction;
- (void)main;
@end

@implementation ML3SetCloudIDImportOperation

- (BOOL)_importPlaylistsUsingImportSession:(void *)session
{
  v9 = *MEMORY[0x277D85DE8];
  if ([(NSArray *)self->_playlistInfo count])
  {
    memset(v7, 0, sizeof(v7));
    v4 = self->_playlistInfo;
    if ([(NSArray *)v4 countByEnumeratingWithState:v7 objects:v8 count:16])
    {
      operator new();
    }
  }

  else
  {
    v4 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      _os_log_impl(&dword_22D2FA000, &v4->super, OS_LOG_TYPE_ERROR, "[ML3SetCloudIDImportOperation] No playlists in cloud-id mapping payload, skipping playlist import.", &__p, 2u);
    }
  }

  return 1;
}

- (BOOL)_importTracksUsingImportSession:(void *)session
{
  v9 = *MEMORY[0x277D85DE8];
  if ([(NSArray *)self->_trackInfo count])
  {
    memset(v7, 0, sizeof(v7));
    v4 = self->_trackInfo;
    if ([(NSArray *)v4 countByEnumeratingWithState:v7 objects:v8 count:16])
    {
      operator new();
    }
  }

  else
  {
    v4 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      _os_log_impl(&dword_22D2FA000, &v4->super, OS_LOG_TYPE_ERROR, "[ML3SetCloudIDImportOperation] No tracks in cloud-id mapping payload, skipping track import.", &__p, 2u);
    }
  }

  return 1;
}

- (BOOL)_performImportWithTransaction:(id)transaction
{
  v44 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  import = [(ML3ImportOperation *)self import];
  trackData = [import trackData];
  v6 = [trackData length];

  if (!v6)
  {
    v10 = 0;
    goto LABEL_7;
  }

  v7 = objc_alloc(MEMORY[0x277CCACA8]);
  import2 = [(ML3ImportOperation *)self import];
  trackData2 = [import2 trackData];
  v10 = [v7 initWithData:trackData2 encoding:4];

  if (!v10)
  {
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v11 = [defaultManager attributesOfItemAtPath:v10 error:0];
  fileSize = [v11 fileSize];

  v13 = fileSize != 0;
  v14 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v41 = fileSize;
    v42 = 2112;
    v43 = v10;
    _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_DEFAULT, "Importing %llu bytes of track data from: %@", buf, 0x16u);
  }

LABEL_8:
  import3 = [(ML3ImportOperation *)self import];
  playlistData = [import3 playlistData];
  v17 = [playlistData length] == 0;

  if (v17 || (v18 = objc_alloc(MEMORY[0x277CCACA8]), -[ML3ImportOperation import](self, "import"), v19 = objc_claimAutoreleasedReturnValue(), [v19 playlistData], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v18, "initWithData:encoding:", v20, 4), v20, v19, !v21))
  {
    v26 = 0;
    v24 = 0;
  }

  else
  {
    v22 = [defaultManager attributesOfItemAtPath:v21 error:0];
    fileSize2 = [v22 fileSize];

    v24 = fileSize2 != 0;
    v25 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v41 = fileSize2;
      v42 = 2112;
      v43 = v21;
      _os_log_impl(&dword_22D2FA000, v25, OS_LOG_TYPE_DEFAULT, "Importing %llu bytes of playlist data from: %@", buf, 0x16u);
    }

    v26 = v21;
  }

  if (v13 || v24)
  {
    if (v13)
    {
      v27 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v10 options:1 error:0];
      if (v27)
      {
        v39 = 0;
        v28 = [MEMORY[0x277CCAC58] propertyListWithData:v27 options:0 format:0 error:&v39];
        v29 = v39;
        if (v29)
        {
          v30 = v29;
          v31 = os_log_create("com.apple.amp.medialibrary", "Import");
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v41 = v30;
            _os_log_impl(&dword_22D2FA000, v31, OS_LOG_TYPE_DEBUG, "[ML3SetCloudIDImportOperation] Failed to deserialize track plist with error: %{public}@", buf, 0xCu);
          }

          v32 = 0;
          goto LABEL_32;
        }
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [v28 objectForKey:@"tracks"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&self->_trackInfo, v33);
      }
    }

    [(ML3ImportOperation *)self import];
    library = [objc_claimAutoreleasedReturnValue() library];
    connection = [transactionCopy connection];
    ML3ImportSession::ML3ImportSession(buf, library, connection, 0, 1);
  }

  v28 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v28, OS_LOG_TYPE_DEBUG, "[ML3SetCloudIDImportOperation] No track data or playlist data to import, finishing import operation...", buf, 2u);
  }

  v32 = 1;
LABEL_32:

  return v32;
}

- (void)main
{
  v21 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v4 = v3;
  if (*(v12 + 24) == 1 && ([(ML3SetCloudIDImportOperation *)self isCancelled]& 1) == 0)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __36__ML3SetCloudIDImportOperation_main__block_invoke;
    v10[3] = &unk_278765F00;
    v10[4] = self;
    v10[5] = &v11;
    [(ML3ImportOperation *)self _writerTransactionWithBlock:v10];
  }

  v5 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    isCancelled = [(ML3SetCloudIDImportOperation *)self isCancelled];
    v7 = *(v12 + 24);
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    *buf = 67109632;
    v16 = isCancelled;
    v17 = 1024;
    v18 = v7;
    v19 = 2048;
    v20 = v8 - v4;
    _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEBUG, "[ML3SetCloudIDImportOperation] [ML3SetCloudIDImportOperation] import operation cancelled=%d success=%d. total time = %.2fs", buf, 0x18u);
  }

  if (*(v12 + 24) == 1)
  {
    v9 = [(ML3SetCloudIDImportOperation *)self isCancelled]^ 1;
  }

  else
  {
    v9 = 0;
  }

  [(ML3ImportOperation *)self setSuccess:v9];
  _Block_object_dispose(&v11, 8);
}

uint64_t __36__ML3SetCloudIDImportOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_ERROR, "[ML3SetCloudIDImportOperation] failed to start store import transaction. error=%{public}@", &v10, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
    [*(a1 + 32) setError:v6];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _performImportWithTransaction:v5];
  }

  v8 = *(*(*(a1 + 40) + 8) + 24);

  return v8 & 1;
}

@end