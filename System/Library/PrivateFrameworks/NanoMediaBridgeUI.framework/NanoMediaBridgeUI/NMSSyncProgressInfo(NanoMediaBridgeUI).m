@interface NMSSyncProgressInfo(NanoMediaBridgeUI)
- (id)_legacyTrackProgressTextWithFormat:()NanoMediaBridgeUI;
- (id)_syncProgressTextForMediaType:()NanoMediaBridgeUI;
- (id)_trackProgressTextForMediaType:()NanoMediaBridgeUI;
@end

@implementation NMSSyncProgressInfo(NanoMediaBridgeUI)

- (id)_syncProgressTextForMediaType:()NanoMediaBridgeUI
{
  v5 = [a1 syncState];
  if ((v5 - 98) >= 2 && v5 != 4)
  {
    if (v5 != 3 || ([a1 syncWaitingSubstate] & 1) == 0)
    {
      goto LABEL_12;
    }

    switch(a3)
    {
      case 2:
        v7 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
        v8 = v7;
        v9 = @"SYNC_STATUS_WAITING_TITLE_POWER_AUDIOBOOKS";
        v10 = @"Audiobooks download when Apple Watch is charging";
        goto LABEL_15;
      case 4:
        v7 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
        v8 = v7;
        v9 = @"SYNC_STATUS_WAITING_TITLE_POWER_PODCASTS";
        v10 = @"Podcasts download when Apple Watch is charging";
        goto LABEL_15;
      case 8:
        v7 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
        v8 = v7;
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
      v7 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v8 = v7;
      v9 = @"SYNC_STATUS_SYNCING_TITLE_AUDIOBOOKS";
      v10 = @"Updating Audiobooks on Apple Watch…";
      break;
    case 4:
      v7 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v8 = v7;
      v9 = @"SYNC_STATUS_SYNCING_TITLE_PODCASTS";
      v10 = @"Updating Podcasts on Apple Watch…";
      break;
    case 8:
      v7 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v8 = v7;
      v9 = @"SYNC_STATUS_PROGRESS_TITLE_MUSIC";
      v10 = @"Updating Music on Apple Watch…";
      break;
    default:
      goto LABEL_12;
  }

LABEL_15:
  v11 = [v7 localizedStringForKey:v9 value:v10 table:0];

LABEL_16:

  return v11;
}

- (id)_trackProgressTextForMediaType:()NanoMediaBridgeUI
{
  v5 = [a1 syncState];
  v6 = 0;
  if (v5 <= 3)
  {
    if (v5 == 2)
    {
      v7 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v8 = v7;
      v9 = @"SYNC_STATUS_PENDING_TITLE";
      v10 = @"Pending…";
    }

    else
    {
      if (v5 != 3)
      {
        goto LABEL_15;
      }

      v7 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v8 = v7;
      v9 = @"SYNC_STATUS_WAITING_TITLE";
      v10 = @"Waiting…";
    }

    goto LABEL_13;
  }

  if (v5 == 4)
  {
    v7 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
    v8 = v7;
    v9 = @"SYNC_STATUS_PROGRESS_TITLE";
    v10 = @"Updating…";
LABEL_13:
    v6 = [v7 localizedStringForKey:v9 value:v10 table:0];
LABEL_14:

    goto LABEL_15;
  }

  if (v5 != 99)
  {
    goto LABEL_15;
  }

  switch(a3)
  {
    case 2:
      v7 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v8 = v7;
      v9 = @"SYNC_STATUS_SYNCING_TITLE_AUDIOBOOKS";
      v10 = @"Updating Audiobooks on Apple Watch…";
      goto LABEL_13;
    case 4:
      v11 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v8 = v11;
      v12 = @"SYNC_STATUS_PODCASTS_PROGRESS_TITLE_WITH_DETAIL";
      v13 = @"Updating Episode %1$@ of %2$@…";
      goto LABEL_19;
    case 8:
      v11 = [MEMORY[0x277CCA8D8] nanoMediaBridgeUIBundle];
      v8 = v11;
      v12 = @"SYNC_STATUS_SONGS_PROGRESS_TITLE_WITH_DETAIL";
      v13 = @"Updating Song %1$@ of %2$@…";
LABEL_19:
      v15 = [v11 localizedStringForKey:v12 value:v13 table:0];
      v6 = [a1 _legacyTrackProgressTextWithFormat:v15];

      goto LABEL_14;
  }

  v6 = 0;
LABEL_15:

  return v6;
}

- (id)_legacyTrackProgressTextWithFormat:()NanoMediaBridgeUI
{
  v4 = a3;
  v5 = [a1 numberOfAssetItems];
  v6 = [a1 numberOfAssetItemsSynced];
  v7 = v6 + 1;
  if (v6 >= v5)
  {
    v8 = NMLogForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(NMSSyncProgressInfo(NanoMediaBridgeUI) *)v7 _legacyTrackProgressTextWithFormat:v5, v8];
    }

    v7 = v5;
  }

  v9 = MEMORY[0x277CCABB8];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
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