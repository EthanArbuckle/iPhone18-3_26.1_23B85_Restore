@interface BLHLSAudiobookFetcher
+ (id)preferredStreamFromMasterPlaylist:(id)a3;
- (id)setupDownloadTaskForFetchingMasterPlaylistAndSelectingStreamFromMasterPlaylistURL:(id)a3 completion:(id)a4;
- (void)getRacGUIDFromMasterPlaylistURL:(id)a3 completion:(id)a4;
@end

@implementation BLHLSAudiobookFetcher

+ (id)preferredStreamFromMasterPlaylist:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 streamInfs];
  v5 = [v4 count];

  if (!v5)
  {
    v6 = BLAudiobookSyncLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_241D76E40();
    }

    goto LABEL_24;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [v3 streamInfs];
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v7)
  {
LABEL_24:
    v9 = 0;
    goto LABEL_25;
  }

  v8 = v7;
  v20 = v3;
  v9 = 0;
  v10 = *v22;
  v11 = -1;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v22 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v21 + 1) + 8 * i);
      v14 = [v13 averageBandwidthFallbackToPeak];
      v15 = v14 <= 0x30000 || v9 == 0;
      if (v15 || [v9 averageBandwidthFallbackToPeak] > 0x30000)
      {
        v16 = v14 <= 0x20000 ? 0x20000 - v14 : v14 - 0x20000;
        if (v16 < v11 || v14 <= 0x30000 && [v9 averageBandwidthFallbackToPeak] > 0x30000)
        {
          v17 = v13;

          v11 = v16;
          v9 = v17;
        }
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v8);
  v3 = v20;
LABEL_25:

  v18 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)setupDownloadTaskForFetchingMasterPlaylistAndSelectingStreamFromMasterPlaylistURL:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = BLAudiobookSyncLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "Downloading master playlist from: %@", buf, 0xCu);
  }

  v9 = [(BLHLSAudiobookFetcher *)self session];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_241D46CD4;
  v14[3] = &unk_278D17770;
  v15 = v7;
  v10 = v7;
  v11 = [v9 downloadTaskWithURL:v6 completionHandler:v14];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)getRacGUIDFromMasterPlaylistURL:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BLHLSAudiobookFetcher *)self session];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D471B8;
  v11[3] = &unk_278D17770;
  v12 = v6;
  v9 = v6;
  v10 = [v8 downloadTaskWithURL:v7 completionHandler:v11];

  [v10 resume];
}

@end