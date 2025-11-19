@interface IMDMomentShareManager
+ (id)_copiedFileURLFromAssetExportFileURLs:(id)a3 transferGUID:(id)a4 error:(id *)a5;
+ (id)_fetchResultForCuratedOrFirstForMomentShare:(id)a3 outFetchType:(int64_t *)a4;
+ (id)_fileTransferForAssetUUID:(id)a3 forMessage:(id)a4 momentShare:(id)a5 atIndex:(unint64_t)a6 ofTotal:(unint64_t)a7;
+ (id)_generateTransfersForAssetUUIDs:(id)a3 forMessage:(id)a4 inChat:(id)a5 momentShare:(id)a6;
+ (id)_loadCMMTransfersForMessage:(id)a3;
+ (id)sharedInstance;
+ (int64_t)_targetCountForContext:(id)a3;
+ (void)_acceptMomentShare:(id)a3 completionHandler:(id)a4;
+ (void)_clearCMMTransfersForCMMMessage:(id)a3;
+ (void)_requestResourceFileURLsForAsset:(id)a3 fileTransfer:(id)a4 completionHandler:(id)a5;
+ (void)fetchMomentShareFromShareURL:(id)a3 forMessage:(id)a4 completionHandler:(id)a5;
- (BOOL)messageHasUnfinishedTransfers:(id)a3;
- (IMDMomentShareManager)init;
- (id)_assetUUIDToUnfinishedTransferMapFromTransfers:(id)a3;
- (id)_contextForMomentShareURL:(id)a3 forMessage:(id)a4 inChat:(id)a5 createIfNeeded:(BOOL)a6;
- (void)_acceptMomentShareIfNecessaryForContext:(id)a3 isRetry:(BOOL)a4;
- (void)_fetchAssetsForAcceptedMomentShareWithContext:(id)a3;
- (void)_generateTransfersForContext:(id)a3;
- (void)_handleIngestionFailureForContext:(id)a3;
- (void)_handleMomentShareFetchForContext:(id)a3 momentShare:(id)a4 error:(id)a5;
- (void)_handleResourceRequestForContext:(id)a3 asset:(id)a4 transfer:(id)a5 didCompleteWithFileURL:(id)a6 error:(id)a7;
- (void)_persistAttachmentAtFileURL:(id)a3 forFileTransfer:(id)a4;
- (void)_removeFinishedIngestionContext:(id)a3;
- (void)_startAssetExportForContext:(id)a3;
- (void)_transitionToCompletedStateForContext:(id)a3;
- (void)_transitionToFetchingMomentShareForContext:(id)a3;
- (void)_transitionToGenerateTransfersStateForContextIfNecessary:(id)a3;
- (void)_transitionToWaitingForAssetsForContext:(id)a3;
- (void)_updateContext:(id)a3 withChange:(id)a4;
- (void)_updatePendingTransferMapForContext:(id)a3 completedTransfer:(id)a4;
- (void)photoLibraryDidChange:(id)a3;
- (void)regenerateTransfersForMessage:(id)a3 inChat:(id)a4 addingAssetWithUUID:(id)a5;
- (void)registerAndAcceptMomentShareForMessage:(id)a3 inChat:(id)a4 resetAssetTransfers:(BOOL)a5;
@end

@implementation IMDMomentShareManager

+ (id)sharedInstance
{
  if (qword_281421118 != -1)
  {
    sub_22B7D1040();
  }

  v3 = qword_281420F90;

  return v3;
}

- (IMDMomentShareManager)init
{
  v6.receiver = self;
  v6.super_class = IMDMomentShareManager;
  v2 = [(IMDMomentShareManager *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(IMDMomentShareManager *)v2 setShareURLsToContexts:v3];

    v4 = [MEMORY[0x277CD9948] sharedMomentSharePhotoLibrary];
    [v4 registerChangeObserver:v2];
  }

  return v2;
}

- (void)photoLibraryDidChange:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22B53F694;
  v6[3] = &unk_278702FA0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)_updateContext:(id)a3 withChange:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 momentShare];
  v8 = [v6 changeDetailsForObject:v7];
  v9 = [v8 objectAfterChanges];
  if (v9)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [v9 uuid];
        v12 = [v5 message];
        v13 = [v12 guid];
        *buf = 138412546;
        v25 = v11;
        v26 = 2112;
        v27 = v13;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Updating moment share %@ in response to photo library change for message %@", buf, 0x16u);
      }
    }

    [v5 setMomentShare:v9];
  }

  v14 = [v5 assetsFetch];
  v15 = [v6 changeDetailsForFetchResult:v14];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 fetchResultAfterChanges];
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v22 = [v5 message];
        v19 = [v22 guid];
        v20 = [v17 count];
        *buf = 138412802;
        v25 = v19;
        v26 = 2112;
        v27 = v16;
        v28 = 2048;
        v29 = v20;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Updating moment share fetch for message %@ with change %@. Count is now %lu", buf, 0x20u);
      }
    }

    [v5 setAssetsFetch:v17];

    goto LABEL_14;
  }

  if (v9)
  {
LABEL_14:
    [(IMDMomentShareManager *)self _transitionToGenerateTransfersStateForContextIfNecessary:v5];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_transitionToFetchingMomentShareForContext:(id)a3
{
  v4 = a3;
  if ([v4 state])
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D1054(v4);
    }
  }

  else
  {
    [v4 setState:1];
    v6 = objc_opt_class();
    v7 = [v4 shareURL];
    v8 = [v4 message];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_22B53FC30;
    v9[3] = &unk_278703F58;
    v9[4] = self;
    v10 = v4;
    [v6 fetchMomentShareFromShareURL:v7 forMessage:v8 completionHandler:v9];
  }
}

- (void)_handleMomentShareFetchForContext:(id)a3 momentShare:(id)a4 error:(id)a5
{
  v7 = a3;
  v8 = a4;
  if ([v7 state] == 1)
  {
    if (v8)
    {
      [v7 setMomentShare:v8];
      [v7 setState:2];
      [(IMDMomentShareManager *)self _acceptMomentShareIfNecessaryForContext:v7 isRetry:0];
    }

    else
    {
      [(IMDMomentShareManager *)self _handleIngestionFailureForContext:v7];
    }
  }

  else
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D1108(v7);
    }
  }
}

- (void)_transitionToWaitingForAssetsForContext:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 state] == 2)
  {
    v5 = [v4 momentShare];
    v12 = 0;
    v6 = [objc_opt_class() _fetchResultForCuratedOrFirstForMomentShare:v5 outFetchType:&v12];
    [v4 setFetchType:v12];
    [v4 setAssetsFetch:v6];
    [v4 setState:3];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v4 message];
        v9 = [v8 guid];
        v10 = [v4 momentShare];
        *buf = 138412802;
        v14 = v6;
        v15 = 2112;
        v16 = v9;
        v17 = 2112;
        v18 = v10;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Starting to monitor fetch result: %@ for message: %@ moment share: %@", buf, 0x20u);
      }
    }

    [(IMDMomentShareManager *)self _transitionToGenerateTransfersStateForContextIfNecessary:v4];
  }

  else
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D11BC(v4, v5);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_transitionToGenerateTransfersStateForContextIfNecessary:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 state] == 3)
  {
    v5 = [objc_opt_class() _targetCountForContext:v4];
    v6 = [v4 assetsFetch];
    v7 = [v6 count];

    if (v7 >= v5)
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = [v4 momentShare];
          v10 = [v9 uuid];
          v12 = 138412546;
          v13 = v10;
          v14 = 2048;
          v15 = v5;
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Moment share %@ is done fetching %lu assets. Generating transfers", &v12, 0x16u);
        }
      }

      [v4 setState:4];
      [(IMDMomentShareManager *)self _generateTransfersForContext:v4];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_transitionToCompletedStateForContext:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 state] == 4)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [v4 message];
        v7 = [v6 guid];
        v8 = [v4 momentShare];
        v9 = [v8 uuid];
        v12 = 138412546;
        v13 = v7;
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Moment share ingestion complete for message %@. moment share UUID %@", &v12, 0x16u);
      }
    }

    [v4 setState:5];
    [(IMDMomentShareManager *)self _removeFinishedIngestionContext:v4];
  }

  else
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D127C(v4);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_generateTransfersForContext:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 assetsFetch];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v20 + 1) + 8 * v11) uuid];
        [v6 addObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v13 = objc_opt_class();
  v14 = [v4 message];
  v15 = [v4 chat];
  v16 = [v4 momentShare];
  v17 = [v13 _generateTransfersForAssetUUIDs:v6 forMessage:v14 inChat:v15 momentShare:v16];

  v18 = [(IMDMomentShareManager *)self _assetUUIDToUnfinishedTransferMapFromTransfers:v17];
  [v4 addTransfers:v18];
  [(IMDMomentShareManager *)self _startAssetExportForContext:v4];

  v19 = *MEMORY[0x277D85DE8];
}

+ (void)fetchMomentShareFromShareURL:(id)a3 forMessage:(id)a4 completionHandler:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 getCMMState];
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v8 guid];
      v13 = v12;
      if (v10 > 4)
      {
        v14 = @"invalid CMM state";
      }

      else
      {
        v14 = off_278704090[v10];
      }

      *buf = 138413058;
      *&buf[4] = v7;
      *&buf[12] = 2112;
      *&buf[14] = v12;
      *&buf[22] = 2112;
      v35 = v14;
      v36 = 2048;
      v37 = v10;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Fetching moment share from %@ for message %@ CMM state %@ (%lu)", buf, 0x2Au);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v35) = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B540728;
  aBlock[3] = &unk_278703F80;
  v33 = buf;
  v15 = v8;
  v30 = v15;
  v16 = v7;
  v31 = v16;
  v17 = v9;
  v32 = v17;
  v18 = _Block_copy(aBlock);
  v19 = [MEMORY[0x277CD9948] sharedMomentSharePhotoLibrary];
  v20 = [v19 librarySpecificFetchOptions];

  [MEMORY[0x277CD9908] fetchMomentShareFromShareURL:v16 options:v20 completionHandler:v18];
  v21 = dispatch_time(0, 5000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B54096C;
  block[3] = &unk_278702FC8;
  v27 = v15;
  v28 = buf;
  v26 = v16;
  v22 = v15;
  v23 = v16;
  dispatch_after(v21, MEMORY[0x277D85CD0], block);

  _Block_object_dispose(buf, 8);
  v24 = *MEMORY[0x277D85DE8];
}

+ (void)_acceptMomentShare:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B540B3C;
  v7[3] = &unk_278702930;
  v8 = v5;
  v6 = v5;
  [a3 acceptMomentShareWithCompletion:v7];
}

- (id)_contextForMomentShareURL:(id)a3 forMessage:(id)a4 inChat:(id)a5 createIfNeeded:(BOOL)a6
{
  v27 = a6;
  v35 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v29 = a5;
  v28 = [(IMDMomentShareManager *)self shareURLsToContexts];
  v11 = [v28 objectForKey:v9];
  v12 = [v10 guid];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
LABEL_3:
    v17 = 0;
    while (1)
    {
      if (*v31 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v30 + 1) + 8 * v17);
      v19 = [v18 message];
      v20 = [v19 guid];

      if ([v12 isEqualToString:v20])
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v15)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v23 = v18;

    if (v23)
    {
      v22 = v28;
      v21 = v29;
      goto LABEL_17;
    }

    v22 = v28;
    v21 = v29;
    if (!v27)
    {
      goto LABEL_17;
    }
  }

  else
  {
LABEL_9:

    v22 = v28;
    v21 = v29;
    if (!v27)
    {
      v23 = 0;
      goto LABEL_17;
    }
  }

  v23 = [[IMDMomentShareIngestionContext alloc] initWithURL:v9 message:v10 inChat:v21];
  if (v13)
  {
    [v13 addObject:v23];
  }

  else
  {
    v24 = [MEMORY[0x277CBEB18] arrayWithObject:v23];
    [v22 setObject:v24 forKey:v9];
  }

LABEL_17:

  v25 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)_removeFinishedIngestionContext:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22B540EF8;
  v6[3] = &unk_278702FA0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)_handleIngestionFailureForContext:(id)a3
{
  v4 = a3;
  v5 = [v4 message];
  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D146C();
  }

  [v5 setCMMState:1];
  v7 = +[IMDMessageStore sharedInstance];
  LOWORD(v9) = 1;
  v8 = [v7 storeMessage:v5 forceReplace:1 modifyError:0 modifyFlags:0 flagMask:0 updateMessageCache:1 calculateUnreadCount:v9 reindexMessage:?];

  [v4 setState:6];
  [(IMDMomentShareManager *)self _removeFinishedIngestionContext:v4];
}

- (void)registerAndAcceptMomentShareForMessage:(id)a3 inChat:(id)a4 resetAssetTransfers:(BOOL)a5
{
  v5 = a5;
  v68 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v8 guid];
      v12 = [v8 balloonBundleID];
      v13 = [v8 payloadData];
      v14 = @"YES";
      *buf = 138413058;
      v61 = v11;
      if (v13)
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      if (!v5)
      {
        v14 = @"NO";
      }

      v62 = 2112;
      v63 = v12;
      v64 = 2112;
      v65 = v15;
      v66 = 2112;
      v67 = v14;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Register and accept ShareURL for message: %@ with bundleID: %@ hasPayload: %@ reset asset transfers: %@", buf, 0x2Au);
    }
  }

  v16 = MEMORY[0x277D1AAB0];
  v17 = [v8 balloonBundleID];
  v18 = [v8 body];
  v19 = [v8 payloadData];
  v20 = [v16 photoShareURLFromPluginBundleID:v17 contentString:v18 payload:v19 shouldAccept:0];

  if (v20)
  {
    v21 = [v8 getCMMState];
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [v8 guid];
        v24 = v23;
        if (v21 > 4)
        {
          v25 = @"invalid CMM state";
        }

        else
        {
          v25 = off_278704090[v21];
        }

        *buf = 138413058;
        v61 = v20;
        v62 = 2112;
        v63 = v23;
        v64 = 2112;
        v65 = v25;
        v66 = 2048;
        v67 = v21;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Processing CMM shareURL %@ for message %@ with state %@ (%lu)", buf, 0x2Au);
      }
    }

    if (v21 == 4 && !v5)
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_64;
      }

      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v28 = [v8 guid];
        *buf = 138412546;
        v61 = v20;
        v62 = 2112;
        v63 = v28;
        _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Moment shareURL %@ for message %@ is already done", buf, 0x16u);
      }

      goto LABEL_18;
    }

    if (v5)
    {
      v29 = [(IMDMomentShareManager *)self _contextForMomentShareURL:v20 forMessage:v8 inChat:v9 createIfNeeded:0];
      v30 = v29;
      if (v29)
      {
        if ([v29 state] > 3)
        {
          if ([v30 state] != 4)
          {
            v41 = IMLogHandleForCategory();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              sub_22B7D151C(v20, v30);
            }
          }

          if (IMOSLoggingEnabled())
          {
            v42 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
            {
              v43 = [v8 guid];
              *buf = 138412546;
              v61 = v43;
              v62 = 2112;
              v63 = v20;
              _os_log_impl(&dword_22B4CC000, v42, OS_LOG_TYPE_INFO, "Clearing and restarting transfers for in-progress message %@, moment share %@", buf, 0x16u);
            }
          }

          [objc_opt_class() _clearCMMTransfersForCMMMessage:v8];
          [v30 clearAllTransfers];
          v44 = [v8 fileTransferGUIDs];
          v45 = [v44 count];

          [v8 setCMMAssetOffset:v45];
          v46 = +[IMDMessageStore sharedInstance];
          LOWORD(v59) = 1;
          v47 = [v46 storeMessage:v8 forceReplace:1 modifyError:0 modifyFlags:0 flagMask:0 updateMessageCache:1 calculateUnreadCount:v59 reindexMessage:?];

          [(IMDMomentShareManager *)self _generateTransfersForContext:v30];
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v31 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              v32 = [v8 guid];
              *buf = 138412546;
              v61 = v32;
              v62 = 2112;
              v63 = v20;
              _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Message %@. No need to reset transfers for in-progress ingestion of moment share %@", buf, 0x16u);
            }
          }

          v33 = [v8 fileTransferGUIDs];
          v34 = [v33 count];

          [v8 setCMMAssetOffset:v34];
          v35 = +[IMDMessageStore sharedInstance];
          LOWORD(v59) = 1;
          v36 = [v35 storeMessage:v8 forceReplace:1 modifyError:0 modifyFlags:0 flagMask:0 updateMessageCache:1 calculateUnreadCount:v59 reindexMessage:?];
        }

LABEL_63:

        goto LABEL_64;
      }

      if (IMOSLoggingEnabled())
      {
        v37 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v38 = [v8 guid];
          v39 = [v8 getCMMState];
          if (v39 > 4)
          {
            v40 = @"invalid CMM state";
          }

          else
          {
            v40 = off_278704090[v39];
          }

          *buf = 138412546;
          v61 = v38;
          v62 = 2112;
          v63 = v40;
          _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "Resetting transfers on message %@ in state %@ and restarting ingestion", buf, 0x16u);
        }
      }

      [objc_opt_class() _clearCMMTransfersForCMMMessage:v8];
    }

    v30 = [(IMDMomentShareManager *)self _contextForMomentShareURL:v20 forMessage:v8 inChat:v9 createIfNeeded:1];
    v48 = [v30 state] == 0;
    v49 = IMOSLoggingEnabled();
    if (v48)
    {
      if (v49)
      {
        v52 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          v53 = [v8 guid];
          *buf = 138412546;
          v61 = v20;
          v62 = 2112;
          v63 = v53;
          _os_log_impl(&dword_22B4CC000, v52, OS_LOG_TYPE_INFO, "Registering moment shareURL %@ for message %@ and beginning ingestion", buf, 0x16u);
        }
      }

      v54 = [v8 fileTransferGUIDs];
      v55 = [v54 count];

      [v8 setCMMStateToRegisteredAndAssetOffsetTo:v55];
      v56 = +[IMDMessageStore sharedInstance];
      LOWORD(v59) = 1;
      v57 = [v56 storeMessage:v8 forceReplace:1 modifyError:0 modifyFlags:0 flagMask:0 updateMessageCache:1 calculateUnreadCount:v59 reindexMessage:?];

      [(IMDMomentShareManager *)self _transitionToFetchingMomentShareForContext:v30];
    }

    else if (v49)
    {
      v50 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        v51 = [v8 guid];
        *buf = 138412546;
        v61 = v20;
        v62 = 2112;
        v63 = v51;
        _os_log_impl(&dword_22B4CC000, v50, OS_LOG_TYPE_INFO, "Ingestion of moment shareURL %@ for message %@ is already underway", buf, 0x16u);
      }
    }

    goto LABEL_63;
  }

  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = [v8 guid];
      *buf = 138412290;
      v61 = v27;
      _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "No share URL found for %@", buf, 0xCu);
    }

LABEL_18:
  }

LABEL_64:

  v58 = *MEMORY[0x277D85DE8];
}

- (void)_acceptMomentShareIfNecessaryForContext:(id)a3 isRetry:(BOOL)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 momentShare];
  v8 = [v6 message];
  if ([v7 status] == 2)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v8 guid];
        *buf = 138412546;
        v21 = v7;
        v22 = 2112;
        v23 = v10;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Accepting share %@ for message %@", buf, 0x16u);
      }
    }

    v11 = objc_opt_class();
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_22B541C28;
    v14[3] = &unk_278703FD0;
    v15 = v7;
    v16 = v8;
    v17 = self;
    v18 = v6;
    v19 = a4;
    [v11 _acceptMomentShare:v15 completionHandler:v14];
  }

  else if ([v7 status] == 1 || objc_msgSend(v7, "status") == 3)
  {
    [(IMDMomentShareManager *)self _fetchAssetsForAcceptedMomentShareWithContext:v6];
  }

  else
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D15C8();
    }

    [(IMDMomentShareManager *)self _handleIngestionFailureForContext:v6];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_fetchAssetsForAcceptedMomentShareWithContext:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 momentShare];
  v6 = [v4 message];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v5 uuid];
      v9 = [v6 guid];
      *buf = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Transitioning to accepted state for moment share %@ message %@", buf, 0x16u);
    }
  }

  [v6 setCMMState:2];
  v10 = +[IMDMessageStore sharedInstance];
  LOWORD(v13) = 1;
  v11 = [v10 storeMessage:v6 forceReplace:1 modifyError:0 modifyFlags:0 flagMask:0 updateMessageCache:1 calculateUnreadCount:v13 reindexMessage:?];

  [(IMDMomentShareManager *)self _transitionToWaitingForAssetsForContext:v4];
  v12 = *MEMORY[0x277D85DE8];
}

+ (id)_loadCMMTransfersForMessage:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 getCMMAssetOffset];
  v5 = [v3 fileTransferGUIDs];
  v6 = [v5 subarrayWithRange:{v4, objc_msgSend(v5, "count") - v4}];

  v7 = +[IMDAttachmentStore sharedInstance];
  v21 = v6;
  v8 = [v7 attachmentsWithGUIDs:v6];

  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    v14 = *MEMORY[0x277D19E20];
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        v17 = [v16 attributionInfo];
        v18 = [v17 objectForKey:v14];

        if (v18)
        {
          [v9 addObject:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)regenerateTransfersForMessage:(id)a3 inChat:(id)a4 addingAssetWithUUID:(id)a5
{
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    sub_22B7D1804(v5);
  }
}

- (id)_assetUUIDToUnfinishedTransferMapFromTransfers:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v6)
  {
    v8 = *v20;
    v9 = *MEMORY[0x277D19E20];
    *&v7 = 138412546;
    v18 = v7;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        if ([v11 transferState] <= 4)
        {
          v12 = [v11 attributionInfo];

          if (v12)
          {
            v13 = [v11 attributionInfo];
            v14 = [v13 objectForKey:v9];

            if (v14)
            {
              if (IMOSLoggingEnabled())
              {
                v15 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
                {
                  *buf = v18;
                  v24 = v14;
                  v25 = 2112;
                  v26 = v11;
                  _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "TransferMap entry %@ to %@", buf, 0x16u);
                }
              }

              [v4 setValue:v11 forKey:v14];
            }
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)messageHasUnfinishedTransfers:(id)a3
{
  v3 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [objc_opt_class() _loadCMMTransfersForMessage:v3];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B5425DC;
  v7[3] = &unk_278703FF8;
  v7[4] = &v8;
  [v4 enumerateObjectsUsingBlock:v7];
  v5 = *(v9 + 24);

  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)_startAssetExportForContext:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v24 = a3;
  v4 = [v24 assetsFetch];
  v22 = [v24 message];
  v5 = [v24 assetUUIDsToFileTransfers];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v6)
  {
    v8 = *v30;
    *&v7 = 138412802;
    v21 = v7;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = [v10 uuid];
        v12 = [v5 objectForKeyedSubscript:v11];
        v13 = IMOSLoggingEnabled();
        if (v12)
        {
          if (v13)
          {
            v14 = OSLogHandleForIMEventCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              v15 = [v22 guid];
              *buf = 138412546;
              v34 = v15;
              v35 = 2112;
              v36 = v11;
              _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Message %@: Begin request for resource file URLs for asset %@", buf, 0x16u);
            }
          }

          v16 = objc_opt_class();
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = sub_22B5429B4;
          v25[3] = &unk_278704020;
          v25[4] = self;
          v26 = v24;
          v27 = v10;
          v28 = v12;
          [v16 _requestResourceFileURLsForAsset:v10 fileTransfer:v28 completionHandler:v25];
        }

        else
        {
          if (v13)
          {
            v17 = OSLogHandleForIMEventCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              v18 = [v22 guid];
              v19 = [v5 count];
              *buf = v21;
              v34 = v18;
              v35 = 2112;
              v36 = v11;
              v37 = 2048;
              v38 = v19;
              _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Message %@: Not requesting asset for %@, not in transfer map. %lu left for processing", buf, 0x20u);
            }
          }

          [(IMDMomentShareManager *)self _handleIngestionFailureForContext:v24];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v6);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleResourceRequestForContext:(id)a3 asset:(id)a4 transfer:(id)a5 didCompleteWithFileURL:(id)a6 error:(id)a7
{
  v46 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v33 = a7;
  v15 = [v11 message];
  v16 = [v12 uuid];
  v17 = [v11 assetUUIDsToFileTransfers];
  v18 = [v17 objectForKeyedSubscript:v16];
  if (v18 == v13)
  {
    if (v14)
    {
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = [v15 guid];
          *buf = 138412546;
          v41 = v22;
          v42 = 2112;
          v43 = v16;
          _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Message %@: Completed request for resource file URLs for asset: %@", buf, 0x16u);
        }
      }

      v31 = [v18 guid];
      v23 = IMOSLoggingEnabled();
      if (v31)
      {
        if (v23)
        {
          v24 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = [v18 guid];
            *buf = 138412546;
            v41 = v25;
            v42 = 2112;
            v43 = v16;
            _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Setting syndication identifier to %@ on asset with UUID %@", buf, 0x16u);
          }
        }

        v26 = [MEMORY[0x277CD9948] sharedMomentSharePhotoLibrary];
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = sub_22B542F10;
        v37[3] = &unk_278702FA0;
        v38 = v12;
        v39 = v18;
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = sub_22B542F84;
        v34[3] = &unk_2787038A8;
        v35 = v39;
        v36 = v16;
        [v26 performChanges:v37 completionHandler:v34];
      }

      else if (v23)
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v41 = v16;
          _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "IMDMomentShareManager - Not setting syndication identifier on asset with UUID %@ due to missing syndication identifier", buf, 0xCu);
        }
      }

      [(IMDMomentShareManager *)self _persistAttachmentAtFileURL:v14 forFileTransfer:v18];
      [(IMDMomentShareManager *)self _updatePendingTransferMapForContext:v11 completedTransfer:v18];
    }

    else
    {
      v27 = IMLogHandleForCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v30 = [v15 guid];
        *buf = 138412802;
        v41 = v30;
        v42 = 2112;
        v43 = v16;
        v44 = 2112;
        v45 = v33;
        _os_log_error_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_ERROR, "Message %@: Failed request for resource file URLs for asset: %@, error: %@", buf, 0x20u);
      }

      [(IMDMomentShareManager *)self _handleIngestionFailureForContext:v11];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [v15 guid];
      *buf = 138412802;
      v41 = v20;
      v42 = 2112;
      v43 = v18;
      v44 = 2112;
      v45 = v16;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Message %@: Original transfer %@ not found for asset %@", buf, 0x20u);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

+ (id)_copiedFileURLFromAssetExportFileURLs:(id)a3 transferGUID:(id)a4 error:(id *)a5
{
  v36[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277CD9A50]];
  v11 = [v8 objectForKeyedSubscript:*MEMORY[0x277CD9A58]];
  v12 = v11;
  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  v14 = v13;
  if (!v14)
  {
    v31 = a5;
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"No photo or video file URL in file URLs: %@, for transfer: %@", v8, v9];
    v21 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA068];
    v36[0] = v20;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v19 = [v21 errorWithDomain:@"IMDMomentShareManagerErrorDomain" code:-1 userInfo:v22];

    v23 = IMLogHandleForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D1B0C();
    }

    v15 = 0;
    goto LABEL_24;
  }

  v34 = 0;
  v15 = [a1 _copyItemAtURL:v14 toTemporaryDirectoryWithName:v9 isDirectory:0 error:&v34];
  v16 = v34;
  v17 = v16;
  if (v15)
  {
    v18 = v15;
    v19 = 0;
  }

  else
  {
    v32 = a5;
    v19 = v16;
    v24 = IMLogHandleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D1A34();
    }

    a5 = v32;
  }

  if (v10)
  {
    v25 = v12 == 0;
  }

  else
  {
    v25 = 1;
  }

  if (!v25 && v15 != 0)
  {
    v33 = 0;
    v23 = [a1 _copyItemAtURL:v12 toTemporaryDirectoryWithName:v9 isDirectory:0 error:&v33];
    v20 = v33;
    if (v23)
    {
LABEL_25:

      goto LABEL_26;
    }

    v31 = a5;

    v20 = v20;
    v27 = IMLogHandleForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D1AA0();
    }

    v15 = 0;
    v19 = v20;
LABEL_24:
    a5 = v31;
    goto LABEL_25;
  }

LABEL_26:
  if (a5 && !v15)
  {
    v28 = v19;
    *a5 = v19;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (void)_requestResourceFileURLsForAsset:(id)a3 fileTransfer:(id)a4 completionHandler:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v43 = 0;
  v11 = [MEMORY[0x277CD97D8] exportRequestForAsset:v8 error:&v43];
  v12 = v43;
  if (v11)
  {
    v13 = objc_alloc_init(MEMORY[0x277CD9988]);
    [v13 setDontAllowRAW:1];
    v42 = 0;
    v14 = [MEMORY[0x277CD9980] fetchResourcesToShareForAsset:v8 requestOptions:v13 error:&v42];
    v29 = v42;
    v30 = v14;
    if (v14)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v38 objects:v44 count:16];
      if (v16)
      {
        v17 = v16;
        v27 = a1;
        v28 = v12;
        v18 = 0;
        v19 = *v39;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v39 != v19)
            {
              objc_enumerationMutation(v15);
            }

            v18 += [*(*(&v38 + 1) + 8 * i) fileSize];
          }

          v17 = [v15 countByEnumeratingWithState:&v38 objects:v44 count:16];
        }

        while (v17);
        a1 = v27;
        v12 = v28;
        goto LABEL_17;
      }
    }

    else
    {
      v15 = IMLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D1B74();
      }
    }

    v18 = 0;
LABEL_17:

    v22 = [v9 guid];
    v23 = +[IMDFileTransferCenter sharedInstance];
    [v23 updateTransfer:v22 currentBytes:0 totalBytes:v18];

    v24 = objc_alloc_init(MEMORY[0x277CD97E0]);
    [v24 setVariant:1];
    [v24 setDontAllowRAW:1];
    [v24 setDisableMetadataCorrections:1];
    [v24 setResultHandlerQueue:MEMORY[0x277D85CD0]];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_22B5438FC;
    v31[3] = &unk_278704048;
    v32 = v22;
    v36 = v18;
    v37 = a1;
    v33 = v9;
    v35 = v10;
    v34 = v8;
    v25 = v22;
    [v11 exportWithOptions:v24 completionHandler:v31];

    goto LABEL_18;
  }

  v21 = IMLogHandleForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D1C0C();
  }

  (*(v10 + 2))(v10, 0, v12);
LABEL_18:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_persistAttachmentAtFileURL:(id)a3 forFileTransfer:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 guid];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v18 = 138412546;
      v19 = v5;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Persisting attachment at fileURL: %@ for transfer: %@", &v18, 0x16u);
    }
  }

  v9 = +[IMDFileTransferCenter sharedInstance];
  v10 = [v9 transferForGUID:v7];

  v11 = [v5 lastPathComponent];
  v12 = IMUTITypeForFilename();
  v13 = [v5 path];
  [v10 setFilename:v13];

  [v10 setTransferredFilename:v11];
  [v10 setType:v12];
  v14 = [v5 path];
  [v10 _setLocalPath:v14];

  [v10 _setLocalURL:v5];
  v15 = +[IMDAttachmentStore sharedInstance];
  [v15 storeAttachment:v10 associateWithMessageWithGUID:0];

  v16 = +[IMDFileTransferCenter sharedInstance];
  [v16 endTransfer:v7];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_updatePendingTransferMapForContext:(id)a3 completedTransfer:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 message];
  v9 = [v8 guid];
  v10 = [v6 assetUUIDsToFileTransfers];
  if (v10)
  {
    v11 = [v7 attributionInfo];
    v12 = [v11 objectForKey:*MEMORY[0x277D19E20]];

    [v6 completeTransferForAssetUUID:v12];
    v13 = [v10 count];
    v14 = IMOSLoggingEnabled();
    if (v13)
    {
      if (v14)
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v23 = [v10 count];
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "%lu assets still pending export", buf, 0xCu);
        }
      }
    }

    else
    {
      if (v14)
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v23 = v9;
          _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Last outstanding asset requested for message %@, setting IMCMMStateCompleted", buf, 0xCu);
        }
      }

      if (v8 && ![(IMDMomentShareManager *)self messageHasUnfinishedTransfers:v8])
      {
        [v8 setCMMState:4];
        v18 = +[IMDMessageStore sharedInstance];
        LOWORD(v21) = 257;
        v19 = [v18 storeMessage:v8 forceReplace:1 modifyError:0 modifyFlags:0 flagMask:0 updateMessageCache:1 calculateUnreadCount:v21 reindexMessage:?];

        [(IMDMomentShareManager *)self _transitionToCompletedStateForContext:v6];
      }

      else
      {
        v17 = IMLogHandleForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D1DAC();
        }

        [(IMDMomentShareManager *)self _handleIngestionFailureForContext:v6];
      }
    }
  }

  else
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D1E14();
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

+ (void)_clearCMMTransfersForCMMMessage:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 _loadCMMTransfersForMessage:v4];
  v6 = v5;
  if (v5 && [v5 count])
  {
    v7 = [v6 arrayByApplyingSelector:sel_guid];
    v8 = +[IMDAttachmentStore sharedInstance];
    [v8 deleteAttachmentsWithGUIDs:v7];

    v9 = [v4 fileTransferGUIDs];
    v10 = [v9 mutableCopy];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v29 count:16];
    if (v12)
    {
      v13 = *v20;
      do
      {
        v14 = 0;
        do
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v11);
          }

          [v10 removeObject:{*(*(&v19 + 1) + 8 * v14++), v19}];
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v19 objects:v29 count:16];
      }

      while (v12);
    }

    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [v11 count];
        v17 = [v4 guid];
        *buf = 134218498;
        v24 = v16;
        v25 = 2112;
        v26 = v17;
        v27 = 2112;
        v28 = v10;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Deleting %lu transferGUIDS from CMM message %@, rl transfers left %@", buf, 0x20u);
      }
    }

    [v4 setFileTransferGUIDs:{v10, v19}];
  }

  v18 = *MEMORY[0x277D85DE8];
}

+ (id)_generateTransfersForAssetUUIDs:(id)a3 forMessage:(id)a4 inChat:(id)a5 momentShare:(id)a6
{
  v63 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v47 = a6;
  if ([v10 count])
  {
    v13 = [v11 getCMMAssetOffset];
    v14 = [v10 count];
    v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v14];
    v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v14 + v13];
    v17 = [v11 fileTransferGUIDs];
    v46 = [v17 subarrayWithRange:{0, v13}];

    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v58 = v46;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Starting with RL transfer GUIDs %@", buf, 0xCu);
      }
    }

    [v16 addObjectsFromArray:v46];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = sub_22B544818;
    v48[3] = &unk_278704070;
    v53 = a1;
    v19 = v11;
    v49 = v19;
    v50 = v47;
    v54 = v13;
    v55 = v14;
    v44 = v15;
    v51 = v44;
    v20 = v16;
    v52 = v20;
    [v10 enumerateObjectsUsingBlock:v48];
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = [v19 guid];
        *buf = 138412290;
        v58 = v22;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Setting Message %@ to CMM state Generated", buf, 0xCu);
      }
    }

    v23 = [v20 copy];
    [v19 setFileTransferGUIDs:v23];

    [v19 setCMMState:3];
    if ([v19 isFromMe])
    {
      v24 = +[IMDMessageStore sharedInstance];
      LOWORD(v43) = 1;
      v25 = [v24 storeMessage:v19 forceReplace:1 modifyError:0 modifyFlags:0 flagMask:0 updateMessageCache:1 calculateUnreadCount:v43 reindexMessage:v44];
    }

    else
    {
      v30 = [MEMORY[0x277CBEAA8] __im_dateWithCurrentServerTime];
      [v19 setTimeRead:v30];

      [v19 setFlags:{objc_msgSend(v19, "flags") | 0x2000}];
      v31 = [v19 flags];
      v24 = +[IMDMessageStore sharedInstance];
      LOWORD(v43) = 1;
      v32 = [v24 storeMessage:v19 forceReplace:1 modifyError:0 modifyFlags:1 flagMask:v31 | 0x2000 updateMessageCache:1 calculateUnreadCount:v43 reindexMessage:v44];
    }

    v56 = v19;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
    v34 = IMCreateSerializedItemsFromArray();

    v35 = +[IMDBroadcastController sharedProvider];
    v36 = [v35 broadcasterForChatListenersUsingBlackholeRegistry:{objc_msgSend(v12, "isBlackholed")}];
    v37 = [v12 accountID];
    v38 = [v12 chatIdentifier];
    [v36 account:v37 chat:v38 style:objc_msgSend(v12 messagesUpdated:{"style"), v34}];

    if (IMOSLoggingEnabled())
    {
      v39 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = [v19 guid];
        *buf = 138412290;
        v58 = v40;
        _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "Persisted attachments to message %@", buf, 0xCu);
      }
    }

    v29 = v45;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = [v11 guid];
        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v47, "assetCount")}];
        *buf = 138412802;
        v58 = v27;
        v59 = 2112;
        v60 = v28;
        v61 = 2112;
        v62 = v47;
        _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Not generating transfers for message %@ because there are no asset UUIDs moment share with count %@: %@", buf, 0x20u);
      }
    }

    v29 = MEMORY[0x277CBEBF8];
  }

  v41 = *MEMORY[0x277D85DE8];

  return v29;
}

+ (id)_fileTransferForAssetUUID:(id)a3 forMessage:(id)a4 momentShare:(id)a5 atIndex:(unint64_t)a6 ofTotal:(unint64_t)a7
{
  v32 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 guid];
  v13 = IMFileTransferGUIDForLocalOnlyFileTransferRepresentingCMMAssetAtIndexInMessageGUID();
  v14 = +[IMDFileTransferCenter sharedInstance];
  v15 = [v14 transferForGUID:v13];

  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v17 = [v11 shareURL];
  v18 = [v17 absoluteString];
  [v16 setObject:v18 forKey:*MEMORY[0x277D19E18]];

  [v16 setObject:v27 forKey:*MEMORY[0x277D19E20]];
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a7];
  [v16 setObject:v19 forKey:*MEMORY[0x277D19E00]];

  if (v15)
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v29 = v13;
        v30 = 2112;
        v31 = v16;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Existing transfer found for %@, setting attribution %@", buf, 0x16u);
      }
    }

    [v15 setAttributionInfo:v16];
  }

  else
  {
    v21 = +[IMDFileTransferCenter sharedInstance];
    LOWORD(v26) = 0;
    [v21 makeNewIncomingTransferWithGUID:v13 filename:0 isDirectory:0 totalBytes:0 hfsType:0 hfsCreator:0 hfsFlags:v26];

    v22 = +[IMDFileTransferCenter sharedInstance];
    v15 = [v22 transferForGUID:v13];

    v23 = [v10 guid];
    [v15 setMessageGUID:v23];

    [v15 setAttributionInfo:v16];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)_fetchResultForCuratedOrFirstForMomentShare:(id)a3 outFetchType:(int64_t *)a4
{
  v5 = a3;
  v6 = [MEMORY[0x277CD9948] sharedMomentSharePhotoLibrary];
  v7 = [v6 librarySpecificFetchOptions];

  v8 = [v5 preview];
  v9 = [v8 curatedAssetIdentifiers];
  v10 = [v9 count];

  v11 = [v5 assetCount];
  v13 = v10 > 9 || v10 >= v11;
  if (v10 && !v13)
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D1E7C(v5);
    }
  }

  if (!v13)
  {
    [v7 setFetchLimit:10];
    v15 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v5 options:v7];
    v16 = 2;
    if (!a4)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v15 = [MEMORY[0x277CD97A8] fetchCuratedAssetsInAssetCollection:v5 options:v7];
  v16 = 1;
  if (a4)
  {
LABEL_16:
    *a4 = v16;
  }

LABEL_17:

  return v15;
}

+ (int64_t)_targetCountForContext:(id)a3
{
  v3 = a3;
  v4 = [v3 momentShare];
  if (!v4)
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D1F94(v3);
    }

    goto LABEL_12;
  }

  v5 = [v3 fetchType];
  if (!v5)
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D1F08(v4);
    }

LABEL_12:

    goto LABEL_13;
  }

  if (v5 != 2)
  {
    if (v5 == 1)
    {
      v6 = [v4 preview];
      v7 = [v6 curatedAssetIdentifiers];
      v8 = [v7 count];

      goto LABEL_14;
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  if ([v4 assetCount] > 9)
  {
    v8 = 10;
  }

  else
  {
    v8 = [v4 assetCount];
  }

LABEL_14:

  return v8;
}

@end