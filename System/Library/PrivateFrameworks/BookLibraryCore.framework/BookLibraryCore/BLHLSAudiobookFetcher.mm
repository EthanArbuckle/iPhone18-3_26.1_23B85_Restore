@interface BLHLSAudiobookFetcher
+ (id)preferredStreamFromMasterPlaylist:(id)playlist;
- (id)setupDownloadTaskForFetchingMasterPlaylistAndSelectingStreamFromMasterPlaylistURL:(id)l completion:(id)completion;
- (void)getRacGUIDFromMasterPlaylistURL:(id)l completion:(id)completion;
@end

@implementation BLHLSAudiobookFetcher

+ (id)preferredStreamFromMasterPlaylist:(id)playlist
{
  v26 = *MEMORY[0x277D85DE8];
  playlistCopy = playlist;
  streamInfs = [playlistCopy streamInfs];
  v5 = [streamInfs count];

  if (!v5)
  {
    streamInfs2 = BLAudiobookSyncLog();
    if (os_log_type_enabled(streamInfs2, OS_LOG_TYPE_ERROR))
    {
      sub_241D76E40();
    }

    goto LABEL_24;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  streamInfs2 = [playlistCopy streamInfs];
  v7 = [streamInfs2 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v7)
  {
LABEL_24:
    v9 = 0;
    goto LABEL_25;
  }

  v8 = v7;
  v20 = playlistCopy;
  v9 = 0;
  v10 = *v22;
  v11 = -1;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v22 != v10)
      {
        objc_enumerationMutation(streamInfs2);
      }

      v13 = *(*(&v21 + 1) + 8 * i);
      averageBandwidthFallbackToPeak = [v13 averageBandwidthFallbackToPeak];
      v15 = averageBandwidthFallbackToPeak <= 0x30000 || v9 == 0;
      if (v15 || [v9 averageBandwidthFallbackToPeak] > 0x30000)
      {
        v16 = averageBandwidthFallbackToPeak <= 0x20000 ? 0x20000 - averageBandwidthFallbackToPeak : averageBandwidthFallbackToPeak - 0x20000;
        if (v16 < v11 || averageBandwidthFallbackToPeak <= 0x30000 && [v9 averageBandwidthFallbackToPeak] > 0x30000)
        {
          v17 = v13;

          v11 = v16;
          v9 = v17;
        }
      }
    }

    v8 = [streamInfs2 countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v8);
  playlistCopy = v20;
LABEL_25:

  v18 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)setupDownloadTaskForFetchingMasterPlaylistAndSelectingStreamFromMasterPlaylistURL:(id)l completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  lCopy = l;
  completionCopy = completion;
  v8 = BLAudiobookSyncLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = lCopy;
    _os_log_impl(&dword_241D1F000, v8, OS_LOG_TYPE_DEFAULT, "Downloading master playlist from: %@", buf, 0xCu);
  }

  session = [(BLHLSAudiobookFetcher *)self session];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_241D46CD4;
  v14[3] = &unk_278D17770;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = [session downloadTaskWithURL:lCopy completionHandler:v14];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)getRacGUIDFromMasterPlaylistURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  session = [(BLHLSAudiobookFetcher *)self session];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D471B8;
  v11[3] = &unk_278D17770;
  v12 = completionCopy;
  v9 = completionCopy;
  v10 = [session downloadTaskWithURL:lCopy completionHandler:v11];

  [v10 resume];
}

@end