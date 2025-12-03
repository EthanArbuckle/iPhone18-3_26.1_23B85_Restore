@interface IMDMomentShareManager
+ (id)_copiedFileURLFromAssetExportFileURLs:(id)ls transferGUID:(id)d error:(id *)error;
+ (id)_fetchResultForCuratedOrFirstForMomentShare:(id)share outFetchType:(int64_t *)type;
+ (id)_fileTransferForAssetUUID:(id)d forMessage:(id)message momentShare:(id)share atIndex:(unint64_t)index ofTotal:(unint64_t)total;
+ (id)_generateTransfersForAssetUUIDs:(id)ds forMessage:(id)message inChat:(id)chat momentShare:(id)share;
+ (id)_loadCMMTransfersForMessage:(id)message;
+ (id)sharedInstance;
+ (int64_t)_targetCountForContext:(id)context;
+ (void)_acceptMomentShare:(id)share completionHandler:(id)handler;
+ (void)_clearCMMTransfersForCMMMessage:(id)message;
+ (void)_requestResourceFileURLsForAsset:(id)asset fileTransfer:(id)transfer completionHandler:(id)handler;
+ (void)fetchMomentShareFromShareURL:(id)l forMessage:(id)message completionHandler:(id)handler;
- (BOOL)messageHasUnfinishedTransfers:(id)transfers;
- (IMDMomentShareManager)init;
- (id)_assetUUIDToUnfinishedTransferMapFromTransfers:(id)transfers;
- (id)_contextForMomentShareURL:(id)l forMessage:(id)message inChat:(id)chat createIfNeeded:(BOOL)needed;
- (void)_acceptMomentShareIfNecessaryForContext:(id)context isRetry:(BOOL)retry;
- (void)_fetchAssetsForAcceptedMomentShareWithContext:(id)context;
- (void)_generateTransfersForContext:(id)context;
- (void)_handleIngestionFailureForContext:(id)context;
- (void)_handleMomentShareFetchForContext:(id)context momentShare:(id)share error:(id)error;
- (void)_handleResourceRequestForContext:(id)context asset:(id)asset transfer:(id)transfer didCompleteWithFileURL:(id)l error:(id)error;
- (void)_persistAttachmentAtFileURL:(id)l forFileTransfer:(id)transfer;
- (void)_removeFinishedIngestionContext:(id)context;
- (void)_startAssetExportForContext:(id)context;
- (void)_transitionToCompletedStateForContext:(id)context;
- (void)_transitionToFetchingMomentShareForContext:(id)context;
- (void)_transitionToGenerateTransfersStateForContextIfNecessary:(id)necessary;
- (void)_transitionToWaitingForAssetsForContext:(id)context;
- (void)_updateContext:(id)context withChange:(id)change;
- (void)_updatePendingTransferMapForContext:(id)context completedTransfer:(id)transfer;
- (void)photoLibraryDidChange:(id)change;
- (void)regenerateTransfersForMessage:(id)message inChat:(id)chat addingAssetWithUUID:(id)d;
- (void)registerAndAcceptMomentShareForMessage:(id)message inChat:(id)chat resetAssetTransfers:(BOOL)transfers;
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

    mEMORY[0x277CD9948] = [MEMORY[0x277CD9948] sharedMomentSharePhotoLibrary];
    [mEMORY[0x277CD9948] registerChangeObserver:v2];
  }

  return v2;
}

- (void)photoLibraryDidChange:(id)change
{
  changeCopy = change;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22B53F694;
  v6[3] = &unk_278702FA0;
  v6[4] = self;
  v7 = changeCopy;
  v5 = changeCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)_updateContext:(id)context withChange:(id)change
{
  v30 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  changeCopy = change;
  momentShare = [contextCopy momentShare];
  v8 = [changeCopy changeDetailsForObject:momentShare];
  objectAfterChanges = [v8 objectAfterChanges];
  if (objectAfterChanges)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        uuid = [objectAfterChanges uuid];
        message = [contextCopy message];
        guid = [message guid];
        *buf = 138412546;
        v25 = uuid;
        v26 = 2112;
        v27 = guid;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Updating moment share %@ in response to photo library change for message %@", buf, 0x16u);
      }
    }

    [contextCopy setMomentShare:objectAfterChanges];
  }

  assetsFetch = [contextCopy assetsFetch];
  v15 = [changeCopy changeDetailsForFetchResult:assetsFetch];
  v16 = v15;
  if (v15)
  {
    fetchResultAfterChanges = [v15 fetchResultAfterChanges];
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        message2 = [contextCopy message];
        guid2 = [message2 guid];
        v20 = [fetchResultAfterChanges count];
        *buf = 138412802;
        v25 = guid2;
        v26 = 2112;
        v27 = v16;
        v28 = 2048;
        v29 = v20;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Updating moment share fetch for message %@ with change %@. Count is now %lu", buf, 0x20u);
      }
    }

    [contextCopy setAssetsFetch:fetchResultAfterChanges];

    goto LABEL_14;
  }

  if (objectAfterChanges)
  {
LABEL_14:
    [(IMDMomentShareManager *)self _transitionToGenerateTransfersStateForContextIfNecessary:contextCopy];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_transitionToFetchingMomentShareForContext:(id)context
{
  contextCopy = context;
  if ([contextCopy state])
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D1054(contextCopy);
    }
  }

  else
  {
    [contextCopy setState:1];
    v6 = objc_opt_class();
    shareURL = [contextCopy shareURL];
    message = [contextCopy message];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_22B53FC30;
    v9[3] = &unk_278703F58;
    v9[4] = self;
    v10 = contextCopy;
    [v6 fetchMomentShareFromShareURL:shareURL forMessage:message completionHandler:v9];
  }
}

- (void)_handleMomentShareFetchForContext:(id)context momentShare:(id)share error:(id)error
{
  contextCopy = context;
  shareCopy = share;
  if ([contextCopy state] == 1)
  {
    if (shareCopy)
    {
      [contextCopy setMomentShare:shareCopy];
      [contextCopy setState:2];
      [(IMDMomentShareManager *)self _acceptMomentShareIfNecessaryForContext:contextCopy isRetry:0];
    }

    else
    {
      [(IMDMomentShareManager *)self _handleIngestionFailureForContext:contextCopy];
    }
  }

  else
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D1108(contextCopy);
    }
  }
}

- (void)_transitionToWaitingForAssetsForContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if ([contextCopy state] == 2)
  {
    momentShare = [contextCopy momentShare];
    v12 = 0;
    v6 = [objc_opt_class() _fetchResultForCuratedOrFirstForMomentShare:momentShare outFetchType:&v12];
    [contextCopy setFetchType:v12];
    [contextCopy setAssetsFetch:v6];
    [contextCopy setState:3];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        message = [contextCopy message];
        guid = [message guid];
        momentShare2 = [contextCopy momentShare];
        *buf = 138412802;
        v14 = v6;
        v15 = 2112;
        v16 = guid;
        v17 = 2112;
        v18 = momentShare2;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Starting to monitor fetch result: %@ for message: %@ moment share: %@", buf, 0x20u);
      }
    }

    [(IMDMomentShareManager *)self _transitionToGenerateTransfersStateForContextIfNecessary:contextCopy];
  }

  else
  {
    momentShare = IMLogHandleForCategory();
    if (os_log_type_enabled(momentShare, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D11BC(contextCopy, momentShare);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_transitionToGenerateTransfersStateForContextIfNecessary:(id)necessary
{
  v16 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  if ([necessaryCopy state] == 3)
  {
    v5 = [objc_opt_class() _targetCountForContext:necessaryCopy];
    assetsFetch = [necessaryCopy assetsFetch];
    v7 = [assetsFetch count];

    if (v7 >= v5)
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          momentShare = [necessaryCopy momentShare];
          uuid = [momentShare uuid];
          v12 = 138412546;
          v13 = uuid;
          v14 = 2048;
          v15 = v5;
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Moment share %@ is done fetching %lu assets. Generating transfers", &v12, 0x16u);
        }
      }

      [necessaryCopy setState:4];
      [(IMDMomentShareManager *)self _generateTransfersForContext:necessaryCopy];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_transitionToCompletedStateForContext:(id)context
{
  v16 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if ([contextCopy state] == 4)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        message = [contextCopy message];
        guid = [message guid];
        momentShare = [contextCopy momentShare];
        uuid = [momentShare uuid];
        v12 = 138412546;
        v13 = guid;
        v14 = 2112;
        v15 = uuid;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Moment share ingestion complete for message %@. moment share UUID %@", &v12, 0x16u);
      }
    }

    [contextCopy setState:5];
    [(IMDMomentShareManager *)self _removeFinishedIngestionContext:contextCopy];
  }

  else
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D127C(contextCopy);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_generateTransfersForContext:(id)context
{
  v25 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  assetsFetch = [contextCopy assetsFetch];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(assetsFetch, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = assetsFetch;
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

        uuid = [*(*(&v20 + 1) + 8 * v11) uuid];
        [v6 addObject:uuid];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v13 = objc_opt_class();
  message = [contextCopy message];
  chat = [contextCopy chat];
  momentShare = [contextCopy momentShare];
  v17 = [v13 _generateTransfersForAssetUUIDs:v6 forMessage:message inChat:chat momentShare:momentShare];

  v18 = [(IMDMomentShareManager *)self _assetUUIDToUnfinishedTransferMapFromTransfers:v17];
  [contextCopy addTransfers:v18];
  [(IMDMomentShareManager *)self _startAssetExportForContext:contextCopy];

  v19 = *MEMORY[0x277D85DE8];
}

+ (void)fetchMomentShareFromShareURL:(id)l forMessage:(id)message completionHandler:(id)handler
{
  v38 = *MEMORY[0x277D85DE8];
  lCopy = l;
  messageCopy = message;
  handlerCopy = handler;
  getCMMState = [messageCopy getCMMState];
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      guid = [messageCopy guid];
      v13 = guid;
      if (getCMMState > 4)
      {
        v14 = @"invalid CMM state";
      }

      else
      {
        v14 = off_278704090[getCMMState];
      }

      *buf = 138413058;
      *&buf[4] = lCopy;
      *&buf[12] = 2112;
      *&buf[14] = guid;
      *&buf[22] = 2112;
      v35 = v14;
      v36 = 2048;
      v37 = getCMMState;
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
  v15 = messageCopy;
  v30 = v15;
  v16 = lCopy;
  v31 = v16;
  v17 = handlerCopy;
  v32 = v17;
  v18 = _Block_copy(aBlock);
  mEMORY[0x277CD9948] = [MEMORY[0x277CD9948] sharedMomentSharePhotoLibrary];
  librarySpecificFetchOptions = [mEMORY[0x277CD9948] librarySpecificFetchOptions];

  [MEMORY[0x277CD9908] fetchMomentShareFromShareURL:v16 options:librarySpecificFetchOptions completionHandler:v18];
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

+ (void)_acceptMomentShare:(id)share completionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B540B3C;
  v7[3] = &unk_278702930;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [share acceptMomentShareWithCompletion:v7];
}

- (id)_contextForMomentShareURL:(id)l forMessage:(id)message inChat:(id)chat createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v35 = *MEMORY[0x277D85DE8];
  lCopy = l;
  messageCopy = message;
  chatCopy = chat;
  shareURLsToContexts = [(IMDMomentShareManager *)self shareURLsToContexts];
  v11 = [shareURLsToContexts objectForKey:lCopy];
  guid = [messageCopy guid];
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
      message = [v18 message];
      guid2 = [message guid];

      if ([guid isEqualToString:guid2])
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
      v22 = shareURLsToContexts;
      v21 = chatCopy;
      goto LABEL_17;
    }

    v22 = shareURLsToContexts;
    v21 = chatCopy;
    if (!neededCopy)
    {
      goto LABEL_17;
    }
  }

  else
  {
LABEL_9:

    v22 = shareURLsToContexts;
    v21 = chatCopy;
    if (!neededCopy)
    {
      v23 = 0;
      goto LABEL_17;
    }
  }

  v23 = [[IMDMomentShareIngestionContext alloc] initWithURL:lCopy message:messageCopy inChat:v21];
  if (v13)
  {
    [v13 addObject:v23];
  }

  else
  {
    v24 = [MEMORY[0x277CBEB18] arrayWithObject:v23];
    [v22 setObject:v24 forKey:lCopy];
  }

LABEL_17:

  v25 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)_removeFinishedIngestionContext:(id)context
{
  contextCopy = context;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22B540EF8;
  v6[3] = &unk_278702FA0;
  v7 = contextCopy;
  selfCopy = self;
  v5 = contextCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)_handleIngestionFailureForContext:(id)context
{
  contextCopy = context;
  message = [contextCopy message];
  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D146C();
  }

  [message setCMMState:1];
  v7 = +[IMDMessageStore sharedInstance];
  LOWORD(v9) = 1;
  v8 = [v7 storeMessage:message forceReplace:1 modifyError:0 modifyFlags:0 flagMask:0 updateMessageCache:1 calculateUnreadCount:v9 reindexMessage:?];

  [contextCopy setState:6];
  [(IMDMomentShareManager *)self _removeFinishedIngestionContext:contextCopy];
}

- (void)registerAndAcceptMomentShareForMessage:(id)message inChat:(id)chat resetAssetTransfers:(BOOL)transfers
{
  transfersCopy = transfers;
  v68 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  chatCopy = chat;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      guid = [messageCopy guid];
      balloonBundleID = [messageCopy balloonBundleID];
      payloadData = [messageCopy payloadData];
      v14 = @"YES";
      *buf = 138413058;
      v61 = guid;
      if (payloadData)
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      if (!transfersCopy)
      {
        v14 = @"NO";
      }

      v62 = 2112;
      v63 = balloonBundleID;
      v64 = 2112;
      v65 = v15;
      v66 = 2112;
      v67 = v14;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Register and accept ShareURL for message: %@ with bundleID: %@ hasPayload: %@ reset asset transfers: %@", buf, 0x2Au);
    }
  }

  v16 = MEMORY[0x277D1AAB0];
  balloonBundleID2 = [messageCopy balloonBundleID];
  body = [messageCopy body];
  payloadData2 = [messageCopy payloadData];
  v20 = [v16 photoShareURLFromPluginBundleID:balloonBundleID2 contentString:body payload:payloadData2 shouldAccept:0];

  if (v20)
  {
    getCMMState = [messageCopy getCMMState];
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        guid2 = [messageCopy guid];
        v24 = guid2;
        if (getCMMState > 4)
        {
          v25 = @"invalid CMM state";
        }

        else
        {
          v25 = off_278704090[getCMMState];
        }

        *buf = 138413058;
        v61 = v20;
        v62 = 2112;
        v63 = guid2;
        v64 = 2112;
        v65 = v25;
        v66 = 2048;
        v67 = getCMMState;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Processing CMM shareURL %@ for message %@ with state %@ (%lu)", buf, 0x2Au);
      }
    }

    if (getCMMState == 4 && !transfersCopy)
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_64;
      }

      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        guid3 = [messageCopy guid];
        *buf = 138412546;
        v61 = v20;
        v62 = 2112;
        v63 = guid3;
        _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Moment shareURL %@ for message %@ is already done", buf, 0x16u);
      }

      goto LABEL_18;
    }

    if (transfersCopy)
    {
      v29 = [(IMDMomentShareManager *)self _contextForMomentShareURL:v20 forMessage:messageCopy inChat:chatCopy createIfNeeded:0];
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
              guid4 = [messageCopy guid];
              *buf = 138412546;
              v61 = guid4;
              v62 = 2112;
              v63 = v20;
              _os_log_impl(&dword_22B4CC000, v42, OS_LOG_TYPE_INFO, "Clearing and restarting transfers for in-progress message %@, moment share %@", buf, 0x16u);
            }
          }

          [objc_opt_class() _clearCMMTransfersForCMMMessage:messageCopy];
          [v30 clearAllTransfers];
          fileTransferGUIDs = [messageCopy fileTransferGUIDs];
          v45 = [fileTransferGUIDs count];

          [messageCopy setCMMAssetOffset:v45];
          v46 = +[IMDMessageStore sharedInstance];
          LOWORD(v59) = 1;
          v47 = [v46 storeMessage:messageCopy forceReplace:1 modifyError:0 modifyFlags:0 flagMask:0 updateMessageCache:1 calculateUnreadCount:v59 reindexMessage:?];

          [(IMDMomentShareManager *)self _generateTransfersForContext:v30];
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v31 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              guid5 = [messageCopy guid];
              *buf = 138412546;
              v61 = guid5;
              v62 = 2112;
              v63 = v20;
              _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Message %@. No need to reset transfers for in-progress ingestion of moment share %@", buf, 0x16u);
            }
          }

          fileTransferGUIDs2 = [messageCopy fileTransferGUIDs];
          v34 = [fileTransferGUIDs2 count];

          [messageCopy setCMMAssetOffset:v34];
          v35 = +[IMDMessageStore sharedInstance];
          LOWORD(v59) = 1;
          v36 = [v35 storeMessage:messageCopy forceReplace:1 modifyError:0 modifyFlags:0 flagMask:0 updateMessageCache:1 calculateUnreadCount:v59 reindexMessage:?];
        }

LABEL_63:

        goto LABEL_64;
      }

      if (IMOSLoggingEnabled())
      {
        v37 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          guid6 = [messageCopy guid];
          getCMMState2 = [messageCopy getCMMState];
          if (getCMMState2 > 4)
          {
            v40 = @"invalid CMM state";
          }

          else
          {
            v40 = off_278704090[getCMMState2];
          }

          *buf = 138412546;
          v61 = guid6;
          v62 = 2112;
          v63 = v40;
          _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "Resetting transfers on message %@ in state %@ and restarting ingestion", buf, 0x16u);
        }
      }

      [objc_opt_class() _clearCMMTransfersForCMMMessage:messageCopy];
    }

    v30 = [(IMDMomentShareManager *)self _contextForMomentShareURL:v20 forMessage:messageCopy inChat:chatCopy createIfNeeded:1];
    v48 = [v30 state] == 0;
    v49 = IMOSLoggingEnabled();
    if (v48)
    {
      if (v49)
      {
        v52 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          guid7 = [messageCopy guid];
          *buf = 138412546;
          v61 = v20;
          v62 = 2112;
          v63 = guid7;
          _os_log_impl(&dword_22B4CC000, v52, OS_LOG_TYPE_INFO, "Registering moment shareURL %@ for message %@ and beginning ingestion", buf, 0x16u);
        }
      }

      fileTransferGUIDs3 = [messageCopy fileTransferGUIDs];
      v55 = [fileTransferGUIDs3 count];

      [messageCopy setCMMStateToRegisteredAndAssetOffsetTo:v55];
      v56 = +[IMDMessageStore sharedInstance];
      LOWORD(v59) = 1;
      v57 = [v56 storeMessage:messageCopy forceReplace:1 modifyError:0 modifyFlags:0 flagMask:0 updateMessageCache:1 calculateUnreadCount:v59 reindexMessage:?];

      [(IMDMomentShareManager *)self _transitionToFetchingMomentShareForContext:v30];
    }

    else if (v49)
    {
      v50 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        guid8 = [messageCopy guid];
        *buf = 138412546;
        v61 = v20;
        v62 = 2112;
        v63 = guid8;
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
      guid9 = [messageCopy guid];
      *buf = 138412290;
      v61 = guid9;
      _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "No share URL found for %@", buf, 0xCu);
    }

LABEL_18:
  }

LABEL_64:

  v58 = *MEMORY[0x277D85DE8];
}

- (void)_acceptMomentShareIfNecessaryForContext:(id)context isRetry:(BOOL)retry
{
  v24 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  momentShare = [contextCopy momentShare];
  message = [contextCopy message];
  if ([momentShare status] == 2)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        guid = [message guid];
        *buf = 138412546;
        v21 = momentShare;
        v22 = 2112;
        v23 = guid;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Accepting share %@ for message %@", buf, 0x16u);
      }
    }

    v11 = objc_opt_class();
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_22B541C28;
    v14[3] = &unk_278703FD0;
    v15 = momentShare;
    v16 = message;
    selfCopy = self;
    v18 = contextCopy;
    retryCopy = retry;
    [v11 _acceptMomentShare:v15 completionHandler:v14];
  }

  else if ([momentShare status] == 1 || objc_msgSend(momentShare, "status") == 3)
  {
    [(IMDMomentShareManager *)self _fetchAssetsForAcceptedMomentShareWithContext:contextCopy];
  }

  else
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D15C8();
    }

    [(IMDMomentShareManager *)self _handleIngestionFailureForContext:contextCopy];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_fetchAssetsForAcceptedMomentShareWithContext:(id)context
{
  v18 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  momentShare = [contextCopy momentShare];
  message = [contextCopy message];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      uuid = [momentShare uuid];
      guid = [message guid];
      *buf = 138412546;
      v15 = uuid;
      v16 = 2112;
      v17 = guid;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Transitioning to accepted state for moment share %@ message %@", buf, 0x16u);
    }
  }

  [message setCMMState:2];
  v10 = +[IMDMessageStore sharedInstance];
  LOWORD(v13) = 1;
  v11 = [v10 storeMessage:message forceReplace:1 modifyError:0 modifyFlags:0 flagMask:0 updateMessageCache:1 calculateUnreadCount:v13 reindexMessage:?];

  [(IMDMomentShareManager *)self _transitionToWaitingForAssetsForContext:contextCopy];
  v12 = *MEMORY[0x277D85DE8];
}

+ (id)_loadCMMTransfersForMessage:(id)message
{
  v27 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  getCMMAssetOffset = [messageCopy getCMMAssetOffset];
  fileTransferGUIDs = [messageCopy fileTransferGUIDs];
  v6 = [fileTransferGUIDs subarrayWithRange:{getCMMAssetOffset, objc_msgSend(fileTransferGUIDs, "count") - getCMMAssetOffset}];

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
        attributionInfo = [v16 attributionInfo];
        v18 = [attributionInfo objectForKey:v14];

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

- (void)regenerateTransfersForMessage:(id)message inChat:(id)chat addingAssetWithUUID:(id)d
{
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    sub_22B7D1804(v5);
  }
}

- (id)_assetUUIDToUnfinishedTransferMapFromTransfers:(id)transfers
{
  v28 = *MEMORY[0x277D85DE8];
  transfersCopy = transfers;
  v4 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = transfersCopy;
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
          attributionInfo = [v11 attributionInfo];

          if (attributionInfo)
          {
            attributionInfo2 = [v11 attributionInfo];
            v14 = [attributionInfo2 objectForKey:v9];

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

- (BOOL)messageHasUnfinishedTransfers:(id)transfers
{
  transfersCopy = transfers;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [objc_opt_class() _loadCMMTransfersForMessage:transfersCopy];
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

- (void)_startAssetExportForContext:(id)context
{
  v40 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  assetsFetch = [contextCopy assetsFetch];
  message = [contextCopy message];
  assetUUIDsToFileTransfers = [contextCopy assetUUIDsToFileTransfers];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = assetsFetch;
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
        uuid = [v10 uuid];
        v12 = [assetUUIDsToFileTransfers objectForKeyedSubscript:uuid];
        v13 = IMOSLoggingEnabled();
        if (v12)
        {
          if (v13)
          {
            v14 = OSLogHandleForIMEventCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              guid = [message guid];
              *buf = 138412546;
              v34 = guid;
              v35 = 2112;
              v36 = uuid;
              _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Message %@: Begin request for resource file URLs for asset %@", buf, 0x16u);
            }
          }

          v16 = objc_opt_class();
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = sub_22B5429B4;
          v25[3] = &unk_278704020;
          v25[4] = self;
          v26 = contextCopy;
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
              guid2 = [message guid];
              v19 = [assetUUIDsToFileTransfers count];
              *buf = v21;
              v34 = guid2;
              v35 = 2112;
              v36 = uuid;
              v37 = 2048;
              v38 = v19;
              _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Message %@: Not requesting asset for %@, not in transfer map. %lu left for processing", buf, 0x20u);
            }
          }

          [(IMDMomentShareManager *)self _handleIngestionFailureForContext:contextCopy];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v6);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleResourceRequestForContext:(id)context asset:(id)asset transfer:(id)transfer didCompleteWithFileURL:(id)l error:(id)error
{
  v46 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  assetCopy = asset;
  transferCopy = transfer;
  lCopy = l;
  errorCopy = error;
  message = [contextCopy message];
  uuid = [assetCopy uuid];
  assetUUIDsToFileTransfers = [contextCopy assetUUIDsToFileTransfers];
  v18 = [assetUUIDsToFileTransfers objectForKeyedSubscript:uuid];
  if (v18 == transferCopy)
  {
    if (lCopy)
    {
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          guid = [message guid];
          *buf = 138412546;
          v41 = guid;
          v42 = 2112;
          v43 = uuid;
          _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Message %@: Completed request for resource file URLs for asset: %@", buf, 0x16u);
        }
      }

      guid2 = [v18 guid];
      v23 = IMOSLoggingEnabled();
      if (guid2)
      {
        if (v23)
        {
          v24 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            guid3 = [v18 guid];
            *buf = 138412546;
            v41 = guid3;
            v42 = 2112;
            v43 = uuid;
            _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Setting syndication identifier to %@ on asset with UUID %@", buf, 0x16u);
          }
        }

        mEMORY[0x277CD9948] = [MEMORY[0x277CD9948] sharedMomentSharePhotoLibrary];
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = sub_22B542F10;
        v37[3] = &unk_278702FA0;
        v38 = assetCopy;
        v39 = v18;
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = sub_22B542F84;
        v34[3] = &unk_2787038A8;
        v35 = v39;
        v36 = uuid;
        [mEMORY[0x277CD9948] performChanges:v37 completionHandler:v34];
      }

      else if (v23)
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v41 = uuid;
          _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "IMDMomentShareManager - Not setting syndication identifier on asset with UUID %@ due to missing syndication identifier", buf, 0xCu);
        }
      }

      [(IMDMomentShareManager *)self _persistAttachmentAtFileURL:lCopy forFileTransfer:v18];
      [(IMDMomentShareManager *)self _updatePendingTransferMapForContext:contextCopy completedTransfer:v18];
    }

    else
    {
      v27 = IMLogHandleForCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        guid4 = [message guid];
        *buf = 138412802;
        v41 = guid4;
        v42 = 2112;
        v43 = uuid;
        v44 = 2112;
        v45 = errorCopy;
        _os_log_error_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_ERROR, "Message %@: Failed request for resource file URLs for asset: %@, error: %@", buf, 0x20u);
      }

      [(IMDMomentShareManager *)self _handleIngestionFailureForContext:contextCopy];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      guid5 = [message guid];
      *buf = 138412802;
      v41 = guid5;
      v42 = 2112;
      v43 = v18;
      v44 = 2112;
      v45 = uuid;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Message %@: Original transfer %@ not found for asset %@", buf, 0x20u);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

+ (id)_copiedFileURLFromAssetExportFileURLs:(id)ls transferGUID:(id)d error:(id *)error
{
  v36[1] = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  dCopy = d;
  v10 = [lsCopy objectForKeyedSubscript:*MEMORY[0x277CD9A50]];
  v11 = [lsCopy objectForKeyedSubscript:*MEMORY[0x277CD9A58]];
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
    errorCopy3 = error;
    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"No photo or video file URL in file URLs: %@, for transfer: %@", lsCopy, dCopy];
    v21 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA068];
    v36[0] = dCopy;
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
  v15 = [self _copyItemAtURL:v14 toTemporaryDirectoryWithName:dCopy isDirectory:0 error:&v34];
  v16 = v34;
  v17 = v16;
  if (v15)
  {
    v18 = v15;
    v19 = 0;
  }

  else
  {
    errorCopy2 = error;
    v19 = v16;
    v24 = IMLogHandleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D1A34();
    }

    error = errorCopy2;
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
    v23 = [self _copyItemAtURL:v12 toTemporaryDirectoryWithName:dCopy isDirectory:0 error:&v33];
    dCopy = v33;
    if (v23)
    {
LABEL_25:

      goto LABEL_26;
    }

    errorCopy3 = error;

    dCopy = dCopy;
    v27 = IMLogHandleForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D1AA0();
    }

    v15 = 0;
    v19 = dCopy;
LABEL_24:
    error = errorCopy3;
    goto LABEL_25;
  }

LABEL_26:
  if (error && !v15)
  {
    v28 = v19;
    *error = v19;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (void)_requestResourceFileURLsForAsset:(id)asset fileTransfer:(id)transfer completionHandler:(id)handler
{
  v45 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  transferCopy = transfer;
  handlerCopy = handler;
  v43 = 0;
  v11 = [MEMORY[0x277CD97D8] exportRequestForAsset:assetCopy error:&v43];
  v12 = v43;
  if (v11)
  {
    v13 = objc_alloc_init(MEMORY[0x277CD9988]);
    [v13 setDontAllowRAW:1];
    v42 = 0;
    v14 = [MEMORY[0x277CD9980] fetchResourcesToShareForAsset:assetCopy requestOptions:v13 error:&v42];
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
        selfCopy = self;
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
        self = selfCopy;
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

    guid = [transferCopy guid];
    v23 = +[IMDFileTransferCenter sharedInstance];
    [v23 updateTransfer:guid currentBytes:0 totalBytes:v18];

    v24 = objc_alloc_init(MEMORY[0x277CD97E0]);
    [v24 setVariant:1];
    [v24 setDontAllowRAW:1];
    [v24 setDisableMetadataCorrections:1];
    [v24 setResultHandlerQueue:MEMORY[0x277D85CD0]];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_22B5438FC;
    v31[3] = &unk_278704048;
    v32 = guid;
    v36 = v18;
    selfCopy2 = self;
    v33 = transferCopy;
    v35 = handlerCopy;
    v34 = assetCopy;
    v25 = guid;
    [v11 exportWithOptions:v24 completionHandler:v31];

    goto LABEL_18;
  }

  v21 = IMLogHandleForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D1C0C();
  }

  (*(handlerCopy + 2))(handlerCopy, 0, v12);
LABEL_18:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_persistAttachmentAtFileURL:(id)l forFileTransfer:(id)transfer
{
  v22 = *MEMORY[0x277D85DE8];
  lCopy = l;
  transferCopy = transfer;
  guid = [transferCopy guid];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v18 = 138412546;
      v19 = lCopy;
      v20 = 2112;
      v21 = guid;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Persisting attachment at fileURL: %@ for transfer: %@", &v18, 0x16u);
    }
  }

  v9 = +[IMDFileTransferCenter sharedInstance];
  v10 = [v9 transferForGUID:guid];

  lastPathComponent = [lCopy lastPathComponent];
  v12 = IMUTITypeForFilename();
  path = [lCopy path];
  [v10 setFilename:path];

  [v10 setTransferredFilename:lastPathComponent];
  [v10 setType:v12];
  path2 = [lCopy path];
  [v10 _setLocalPath:path2];

  [v10 _setLocalURL:lCopy];
  v15 = +[IMDAttachmentStore sharedInstance];
  [v15 storeAttachment:v10 associateWithMessageWithGUID:0];

  v16 = +[IMDFileTransferCenter sharedInstance];
  [v16 endTransfer:guid];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_updatePendingTransferMapForContext:(id)context completedTransfer:(id)transfer
{
  v24 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  transferCopy = transfer;
  message = [contextCopy message];
  guid = [message guid];
  assetUUIDsToFileTransfers = [contextCopy assetUUIDsToFileTransfers];
  if (assetUUIDsToFileTransfers)
  {
    attributionInfo = [transferCopy attributionInfo];
    v12 = [attributionInfo objectForKey:*MEMORY[0x277D19E20]];

    [contextCopy completeTransferForAssetUUID:v12];
    v13 = [assetUUIDsToFileTransfers count];
    v14 = IMOSLoggingEnabled();
    if (v13)
    {
      if (v14)
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v23 = [assetUUIDsToFileTransfers count];
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
          v23 = guid;
          _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Last outstanding asset requested for message %@, setting IMCMMStateCompleted", buf, 0xCu);
        }
      }

      if (message && ![(IMDMomentShareManager *)self messageHasUnfinishedTransfers:message])
      {
        [message setCMMState:4];
        v18 = +[IMDMessageStore sharedInstance];
        LOWORD(v21) = 257;
        v19 = [v18 storeMessage:message forceReplace:1 modifyError:0 modifyFlags:0 flagMask:0 updateMessageCache:1 calculateUnreadCount:v21 reindexMessage:?];

        [(IMDMomentShareManager *)self _transitionToCompletedStateForContext:contextCopy];
      }

      else
      {
        v17 = IMLogHandleForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D1DAC();
        }

        [(IMDMomentShareManager *)self _handleIngestionFailureForContext:contextCopy];
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

+ (void)_clearCMMTransfersForCMMMessage:(id)message
{
  v30 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = [self _loadCMMTransfersForMessage:messageCopy];
  v6 = v5;
  if (v5 && [v5 count])
  {
    v7 = [v6 arrayByApplyingSelector:sel_guid];
    v8 = +[IMDAttachmentStore sharedInstance];
    [v8 deleteAttachmentsWithGUIDs:v7];

    fileTransferGUIDs = [messageCopy fileTransferGUIDs];
    v10 = [fileTransferGUIDs mutableCopy];

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
        guid = [messageCopy guid];
        *buf = 134218498;
        v24 = v16;
        v25 = 2112;
        v26 = guid;
        v27 = 2112;
        v28 = v10;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Deleting %lu transferGUIDS from CMM message %@, rl transfers left %@", buf, 0x20u);
      }
    }

    [messageCopy setFileTransferGUIDs:{v10, v19}];
  }

  v18 = *MEMORY[0x277D85DE8];
}

+ (id)_generateTransfersForAssetUUIDs:(id)ds forMessage:(id)message inChat:(id)chat momentShare:(id)share
{
  v63 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  messageCopy = message;
  chatCopy = chat;
  shareCopy = share;
  if ([dsCopy count])
  {
    getCMMAssetOffset = [messageCopy getCMMAssetOffset];
    v14 = [dsCopy count];
    v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v14];
    v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v14 + getCMMAssetOffset];
    fileTransferGUIDs = [messageCopy fileTransferGUIDs];
    v46 = [fileTransferGUIDs subarrayWithRange:{0, getCMMAssetOffset}];

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
    selfCopy = self;
    v19 = messageCopy;
    v49 = v19;
    v50 = shareCopy;
    v54 = getCMMAssetOffset;
    v55 = v14;
    v44 = v15;
    v51 = v44;
    v20 = v16;
    v52 = v20;
    [dsCopy enumerateObjectsUsingBlock:v48];
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        guid = [v19 guid];
        *buf = 138412290;
        v58 = guid;
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
      __im_dateWithCurrentServerTime = [MEMORY[0x277CBEAA8] __im_dateWithCurrentServerTime];
      [v19 setTimeRead:__im_dateWithCurrentServerTime];

      [v19 setFlags:{objc_msgSend(v19, "flags") | 0x2000}];
      flags = [v19 flags];
      v24 = +[IMDMessageStore sharedInstance];
      LOWORD(v43) = 1;
      v32 = [v24 storeMessage:v19 forceReplace:1 modifyError:0 modifyFlags:1 flagMask:flags | 0x2000 updateMessageCache:1 calculateUnreadCount:v43 reindexMessage:v44];
    }

    v56 = v19;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
    v34 = IMCreateSerializedItemsFromArray();

    v35 = +[IMDBroadcastController sharedProvider];
    v36 = [v35 broadcasterForChatListenersUsingBlackholeRegistry:{objc_msgSend(chatCopy, "isBlackholed")}];
    accountID = [chatCopy accountID];
    chatIdentifier = [chatCopy chatIdentifier];
    [v36 account:accountID chat:chatIdentifier style:objc_msgSend(chatCopy messagesUpdated:{"style"), v34}];

    if (IMOSLoggingEnabled())
    {
      v39 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        guid2 = [v19 guid];
        *buf = 138412290;
        v58 = guid2;
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
        guid3 = [messageCopy guid];
        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(shareCopy, "assetCount")}];
        *buf = 138412802;
        v58 = guid3;
        v59 = 2112;
        v60 = v28;
        v61 = 2112;
        v62 = shareCopy;
        _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Not generating transfers for message %@ because there are no asset UUIDs moment share with count %@: %@", buf, 0x20u);
      }
    }

    v29 = MEMORY[0x277CBEBF8];
  }

  v41 = *MEMORY[0x277D85DE8];

  return v29;
}

+ (id)_fileTransferForAssetUUID:(id)d forMessage:(id)message momentShare:(id)share atIndex:(unint64_t)index ofTotal:(unint64_t)total
{
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  messageCopy = message;
  shareCopy = share;
  guid = [messageCopy guid];
  v13 = IMFileTransferGUIDForLocalOnlyFileTransferRepresentingCMMAssetAtIndexInMessageGUID();
  v14 = +[IMDFileTransferCenter sharedInstance];
  v15 = [v14 transferForGUID:v13];

  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  shareURL = [shareCopy shareURL];
  absoluteString = [shareURL absoluteString];
  [v16 setObject:absoluteString forKey:*MEMORY[0x277D19E18]];

  [v16 setObject:dCopy forKey:*MEMORY[0x277D19E20]];
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:total];
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

    guid2 = [messageCopy guid];
    [v15 setMessageGUID:guid2];

    [v15 setAttributionInfo:v16];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)_fetchResultForCuratedOrFirstForMomentShare:(id)share outFetchType:(int64_t *)type
{
  shareCopy = share;
  mEMORY[0x277CD9948] = [MEMORY[0x277CD9948] sharedMomentSharePhotoLibrary];
  librarySpecificFetchOptions = [mEMORY[0x277CD9948] librarySpecificFetchOptions];

  preview = [shareCopy preview];
  curatedAssetIdentifiers = [preview curatedAssetIdentifiers];
  v10 = [curatedAssetIdentifiers count];

  assetCount = [shareCopy assetCount];
  v13 = v10 > 9 || v10 >= assetCount;
  if (v10 && !v13)
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D1E7C(shareCopy);
    }
  }

  if (!v13)
  {
    [librarySpecificFetchOptions setFetchLimit:10];
    v15 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:shareCopy options:librarySpecificFetchOptions];
    v16 = 2;
    if (!type)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v15 = [MEMORY[0x277CD97A8] fetchCuratedAssetsInAssetCollection:shareCopy options:librarySpecificFetchOptions];
  v16 = 1;
  if (type)
  {
LABEL_16:
    *type = v16;
  }

LABEL_17:

  return v15;
}

+ (int64_t)_targetCountForContext:(id)context
{
  contextCopy = context;
  momentShare = [contextCopy momentShare];
  if (!momentShare)
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D1F94(contextCopy);
    }

    goto LABEL_12;
  }

  fetchType = [contextCopy fetchType];
  if (!fetchType)
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D1F08(momentShare);
    }

LABEL_12:

    goto LABEL_13;
  }

  if (fetchType != 2)
  {
    if (fetchType == 1)
    {
      preview = [momentShare preview];
      curatedAssetIdentifiers = [preview curatedAssetIdentifiers];
      assetCount = [curatedAssetIdentifiers count];

      goto LABEL_14;
    }

LABEL_13:
    assetCount = 0;
    goto LABEL_14;
  }

  if ([momentShare assetCount] > 9)
  {
    assetCount = 10;
  }

  else
  {
    assetCount = [momentShare assetCount];
  }

LABEL_14:

  return assetCount;
}

@end