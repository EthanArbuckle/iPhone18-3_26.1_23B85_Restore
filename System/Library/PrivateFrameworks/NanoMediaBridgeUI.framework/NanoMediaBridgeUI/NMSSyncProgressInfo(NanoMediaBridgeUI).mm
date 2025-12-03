@interface NMSSyncProgressInfo(NanoMediaBridgeUI)
- (id)_legacyTrackProgressTextWithFormat:()NanoMediaBridgeUI;
- (id)_syncProgressTextForMediaType:()NanoMediaBridgeUI;
- (id)_trackProgressTextForMediaType:()NanoMediaBridgeUI;
@end

@implementation NMSSyncProgressInfo(NanoMediaBridgeUI)

- (id)_syncProgressTextForMediaType:()NanoMediaBridgeUI
{
  syncState = [self syncState];
  if ((syncState - 98) >= 2 && syncState != 4)
  {
    if (syncState != 3 || ([self syncWaitingSubstate] & 1) == 0)
    {
      goto LABEL_12;
    }

    switch(a3)
    {
      case 2:
        nanoMediaBridgeUIBundle = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
        v8 = nanoMediaBridgeUIBundle;
        v9 = @"SYNC_STATUS_WAITING_TITLE_POWER_AUDIOBOOKS";
        v10 = @"Audiobooks download when Apple Watch is charging";
        goto LABEL_15;
      case 4:
        nanoMediaBridgeUIBundle = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
        v8 = nanoMediaBridgeUIBundle;
        v9 = @"SYNC_STATUS_WAITING_TITLE_POWER_PODCASTS";
        v10 = @"Podcasts download when Apple Watch is charging";
        goto LABEL_15;
      case 8:
        nanoMediaBridgeUIBundle = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
        v8 = nanoMediaBridgeUIBundle;
        v9 = @"SYNC_STATUS_WAITING_TITLE_POWER_MUSIC";
        v10 = @"Music downloads when Apple Watch is charging";
        goto LABEL_15;
    }

LABEL_12:
    v11 = 0;
    goto LABEL_16;
  }

  switch(a3)
  {
    case 2:
      nanoMediaBridgeUIBundle = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v8 = nanoMediaBridgeUIBundle;
      v9 = @"SYNC_STATUS_SYNCING_TITLE_AUDIOBOOKS";
      v10 = @"Updating Audiobooks on Apple Watch…";
      break;
    case 4:
      nanoMediaBridgeUIBundle = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v8 = nanoMediaBridgeUIBundle;
      v9 = @"SYNC_STATUS_SYNCING_TITLE_PODCASTS";
      v10 = @"Updating Podcasts on Apple Watch…";
      break;
    case 8:
      nanoMediaBridgeUIBundle = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v8 = nanoMediaBridgeUIBundle;
      v9 = @"SYNC_STATUS_PROGRESS_TITLE_MUSIC";
      v10 = @"Updating Music on Apple Watch…";
      break;
    default:
      goto LABEL_12;
  }

LABEL_15:
  v11 = [nanoMediaBridgeUIBundle localizedStringForKey:v9 value:v10 table:0];

LABEL_16:

  return v11;
}

- (id)_trackProgressTextForMediaType:()NanoMediaBridgeUI
{
  syncState = [self syncState];
  v6 = 0;
  if (syncState <= 3)
  {
    if (syncState == 2)
    {
      nanoMediaBridgeUIBundle = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v8 = nanoMediaBridgeUIBundle;
      v9 = @"SYNC_STATUS_PENDING_TITLE";
      v10 = @"Pending…";
    }

    else
    {
      if (syncState != 3)
      {
        goto LABEL_15;
      }

      nanoMediaBridgeUIBundle = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v8 = nanoMediaBridgeUIBundle;
      v9 = @"SYNC_STATUS_WAITING_TITLE";
      v10 = @"Waiting…";
    }

    goto LABEL_13;
  }

  if (syncState == 4)
  {
    nanoMediaBridgeUIBundle = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
    v8 = nanoMediaBridgeUIBundle;
    v9 = @"SYNC_STATUS_PROGRESS_TITLE";
    v10 = @"Updating…";
LABEL_13:
    v6 = [nanoMediaBridgeUIBundle localizedStringForKey:v9 value:v10 table:0];
LABEL_14:

    goto LABEL_15;
  }

  if (syncState != 99)
  {
    goto LABEL_15;
  }

  switch(a3)
  {
    case 2:
      nanoMediaBridgeUIBundle = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v8 = nanoMediaBridgeUIBundle;
      v9 = @"SYNC_STATUS_SYNCING_TITLE_AUDIOBOOKS";
      v10 = @"Updating Audiobooks on Apple Watch…";
      goto LABEL_13;
    case 4:
      nanoMediaBridgeUIBundle2 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v8 = nanoMediaBridgeUIBundle2;
      v12 = @"SYNC_STATUS_PODCASTS_PROGRESS_TITLE_WITH_DETAIL";
      v13 = @"Updating Episode %1$@ of %2$@…";
      goto LABEL_19;
    case 8:
      nanoMediaBridgeUIBundle2 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v8 = nanoMediaBridgeUIBundle2;
      v12 = @"SYNC_STATUS_SONGS_PROGRESS_TITLE_WITH_DETAIL";
      v13 = @"Updating Song %1$@ of %2$@…";
LABEL_19:
      v15 = [nanoMediaBridgeUIBundle2 localizedStringForKey:v12 value:v13 table:0];
      v6 = [self _legacyTrackProgressTextWithFormat:v15];

      goto LABEL_14;
  }

  v6 = 0;
LABEL_15:

  return v6;
}

- (id)_legacyTrackProgressTextWithFormat:()NanoMediaBridgeUI
{
  v4 = a3;
  numberOfAssetItems = [self numberOfAssetItems];
  numberOfAssetItemsSynced = [self numberOfAssetItemsSynced];
  v7 = numberOfAssetItemsSynced + 1;
  if (numberOfAssetItemsSynced >= numberOfAssetItems)
  {
    v8 = NMLogForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(NMSSyncProgressInfo(NanoMediaBridgeUI) *)v7 _legacyTrackProgressTextWithFormat:numberOfAssetItems, v8];
    }

    v7 = numberOfAssetItems;
  }

  v9 = MEMORY[0x277CCABB8];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:numberOfAssetItems];
  v11 = [v9 localizedStringFromNumber:v10 numberStyle:0];

  v12 = MEMORY[0x277CCABB8];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
  v14 = [v12 localizedStringFromNumber:v13 numberStyle:0];

  v15 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v4, v14, v11];

  return v15;
}

- (void)_legacyTrackProgressTextWithFormat:()NanoMediaBridgeUI .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&dword_25B260000, log, OS_LOG_TYPE_ERROR, "_trackProgressText -- syncedNumber %zd > totalNumber %zd; pinning syncedNumber.", &v3, 0x16u);
}

@end