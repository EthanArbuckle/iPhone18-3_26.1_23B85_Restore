@interface ML3StoreImportOperation
- (BOOL)_importAlbumArtistsUsingImportSession:(void *)a3;
- (BOOL)_importPlaylistsUsingImportSession:(void *)a3;
- (BOOL)_importTracksUsingImportSession:(void *)a3;
- (BOOL)_performImportWithTransaction:(id)a3;
- (void)main;
@end

@implementation ML3StoreImportOperation

- (BOOL)_importAlbumArtistsUsingImportSession:(void *)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(ML3StoreItemAlbumArtistData *)self->_albumArtistData albumArtistCount])
  {
    v7 = [(ML3StoreItemAlbumArtistData *)self->_albumArtistData parsedStoreAlbumArtistImportProperties];
    v9 = [MEMORY[0x277CBEB18] array];
    memset(v10, 0, sizeof(v10));
    obj = v7;
    if ([obj countByEnumeratingWithState:v10 objects:v12 count:16])
    {
      [(ML3ImportOperation *)self import];
      [objc_claimAutoreleasedReturnValue() library];
      objc_claimAutoreleasedReturnValue();
      operator new();
    }

    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v9 requiringSecureCoding:1 error:0];
    [(ML3ImportOperation *)self setReturnData:v5];

    v4 = obj;
  }

  else
  {
    v4 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_ERROR, "[ML3StoreImportOperation] no album artists in store payload. skipping import.", buf, 2u);
    }
  }

  return 1;
}

- (BOOL)_importPlaylistsUsingImportSession:(void *)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [(ML3StoreItemPlaylistData *)self->_playlistData playlistCount];
  v5 = os_log_create("com.apple.amp.medialibrary", "Import");
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v15 = v4;
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_DEBUG, "[ML3StoreImportOperation] found %lu playlists to import", buf, 0xCu);
    }

    v7 = [(ML3ImportOperation *)self import];
    v12 = [v7 library];

    [(ML3StoreItemPlaylistData *)self->_playlistData parsedStorePlaylistsImportProperties];
    obj = memset(v13, 0, sizeof(v13));
    v8 = [obj countByEnumeratingWithState:v13 objects:v16 count:16];
    v9 = v8 != 0;
    if (v8)
    {
      operator new();
    }

    v6 = v12;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_ERROR, "[ML3StoreImportOperation] no playlists in store payload. skipping playlist import.", buf, 2u);
    }

    v9 = 1;
  }

  return v9;
}

- (BOOL)_importTracksUsingImportSession:(void *)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(ML3StoreItemTrackData *)self->_trackData trackCount];
  v4 = os_log_create("com.apple.amp.medialibrary", "Import");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v17 = v3;
      _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEBUG, "[ML3StoreImportOperation] found %lu tracks to import", buf, 0xCu);
    }

    v10 = [(ML3StoreItemTrackData *)self->_trackData parsedStoreItemsImportProperties];
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:v3];
    memset(v14, 0, sizeof(v14));
    v6 = v10;
    obj = v6;
    if ([v6 countByEnumeratingWithState:v14 objects:v15 count:16])
    {
      objc_autoreleasePoolPush();
      operator new();
    }

    v8 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_ERROR, "[ML3StoreImportOperation] failed to import tracks", buf, 2u);
    }

    v7 = 0;

    v5 = obj;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_ERROR, "[ML3StoreImportOperation] no tracks in store payload. skipping track import.", buf, 2u);
    }

    v7 = 1;
  }

  return v7;
}

- (BOOL)_performImportWithTransaction:(id)a3
{
  v4 = a3;
  v5 = [ML3StoreItemTrackData alloc];
  v6 = [(ML3ImportOperation *)self import];
  v7 = [v6 trackData];
  v8 = [(ML3StoreItemTrackData *)v5 initWithTrackData:v7];
  trackData = self->_trackData;
  self->_trackData = v8;

  v10 = [ML3StoreItemPlaylistData alloc];
  v11 = [(ML3ImportOperation *)self import];
  v12 = [v11 playlistData];
  v13 = [(ML3StoreItemPlaylistData *)v10 initWithPlaylistsData:v12];
  playlistData = self->_playlistData;
  self->_playlistData = v13;

  v15 = [ML3StoreItemAlbumArtistData alloc];
  v16 = [(ML3ImportOperation *)self import];
  v17 = [v16 albumArtistData];
  v18 = [(ML3StoreItemAlbumArtistData *)v15 initWithAlbumArtistData:v17];
  albumArtistData = self->_albumArtistData;
  self->_albumArtistData = v18;

  v20 = [(ML3ImportOperation *)self import];
  if ([v20 tracksAreLibraryOwnedContent])
  {
    v21 = [(ML3ImportOperation *)self import];
    v22 = [v21 isPendingMatch];

    if (v22)
    {
      v23 = 6;
    }

    else
    {
      v23 = 5;
    }
  }

  else
  {

    v23 = 6;
  }

  [(ML3ImportOperation *)self import];
  v24 = [objc_claimAutoreleasedReturnValue() library];
  v25 = [v4 connection];
  ML3ImportSession::ML3ImportSession(v27, v24, v25, v23, 1);
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
  if (*(v12 + 24) == 1 && ([(ML3StoreImportOperation *)self isCancelled]& 1) == 0)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __31__ML3StoreImportOperation_main__block_invoke;
    v10[3] = &unk_278765F00;
    v10[4] = self;
    v10[5] = &v11;
    [(ML3ImportOperation *)self _writerTransactionWithBlock:v10];
  }

  v5 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(ML3StoreImportOperation *)self isCancelled];
    v7 = *(v12 + 24);
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    *buf = 67109632;
    v16 = v6;
    v17 = 1024;
    v18 = v7;
    v19 = 2048;
    v20 = v8 - v4;
    _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEBUG, "[ML3StoreImportOperation] [ML3StoreImportOperation] import operation cancelled=%d success=%d. total time = %.2fs", buf, 0x18u);
  }

  if (*(v12 + 24) == 1)
  {
    v9 = [(ML3StoreImportOperation *)self isCancelled]^ 1;
  }

  else
  {
    v9 = 0;
  }

  [(ML3ImportOperation *)self setSuccess:v9];
  _Block_object_dispose(&v11, 8);
}

uint64_t __31__ML3StoreImportOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
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
      _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_ERROR, "[ML3StoreImportOperation] failed to start store import transaction. error=%{public}@", &v10, 0xCu);
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