@interface IMDFileTransferCenter
+ (id)fileTransferErrorWithReason:(int64_t)reason description:(id)description;
+ (id)localFileURLRetrievalErrorWithReason:(int64_t)reason description:(id)description;
+ (id)localFileURLRetrievalErrorWithReason:(int64_t)reason underlyingReason:(int64_t)underlyingReason description:(id)description;
+ (id)sharedInstance;
+ (int64_t)convertNSErrorToIMFileTransferErrorReason:(id)reason additionalErrorInfo:(id)info;
- (BOOL)_hasActiveTransferWithGUID:(id)d;
- (BOOL)_isFileTransferWithGUIDFromKnownSender:(id)sender;
- (BOOL)_shouldDownloadAssetForTransfer:(id)transfer forMessageItem:(id)item;
- (BOOL)populateLocalURLsForTransfer:(id)transfer fromCKRecord:(id)record;
- (BOOL)registerGUID:(id)d forNewOutgoingTransferWithLocalURL:(id)l;
- (IMDFileTransferCenter)init;
- (id)_allFileTransfers;
- (id)_createWrapperForTransfer:(id)transfer;
- (id)_dictionaryRepresentationsForFileTransfers:(id)transfers toSave:(BOOL)save;
- (id)_findTransferGUIDMatchingSpotlightDonatedSpeculativeTransferGUID:(id)d;
- (id)_getNewFileTransferForStoredAttachmentPayloadDataWithTransferGUID:(id)d messageGUID:(id)iD;
- (id)_messageForFileTransferWithGUID:(id)d;
- (id)_removeWrapperForTransfer:(id)transfer;
- (id)_retrieveLocalFileURLForFileTransferWithGUID:(id)d options:(int64_t)options outTransfer:(id *)transfer outError:(id *)error;
- (id)createNewOutgoingTransferWithLocalFileURL:(id)l;
- (id)guidsForStoredAttachmentBlastDoorPayloadData:(id)data messageGUID:(id)d;
- (id)guidsForStoredAttachmentPayloadData:(id)data messageGUID:(id)d;
- (id)guidsForStoredAttachmentPayloadDataURLs:(id)ls messageGUID:(id)d;
- (id)transferForGUID:(id)d;
- (id)updateTransfersWithCKRecord:(id)record recordWasFetched:(BOOL)fetched downloadAsset:(BOOL *)asset;
- (void)_addActiveTransfer:(id)transfer;
- (void)_addGatekeeperProperties:(id)properties toDirectory:(id)directory;
- (void)_addTransfer:(id)transfer forGUID:(id)d shouldNotify:(BOOL)notify;
- (void)_addTransferringTransfer:(id)transfer;
- (void)_completeHubbleDownloadForTransfer:(id)transfer;
- (void)_flushMessagesToReindexForPreviewGeneration;
- (void)_handleFileTransfer:(id)transfer acceptedWithPath:(id)path autoRename:(BOOL)rename overwrite:(BOOL)overwrite options:(int64_t)options postNotification:(BOOL)notification;
- (void)_handleFileTransfer:(id)transfer createdWithProperties:(id)properties withAuditToken:(id *)token;
- (void)_handleFileTransfer:(id)transfer rejectedWithProperties:(id)properties;
- (void)_handleFileTransfer:(id)transfer updatedWithProperties:(id)properties isStickerReposition:(BOOL)reposition repositionedLocally:(BOOL)locally;
- (void)_handleFileTransferRemoved:(id)removed;
- (void)_handleFileTransferStopped:(id)stopped;
- (void)_handleFileTransfers:(id)transfers autoRename:(BOOL)rename overwrite:(BOOL)overwrite options:(int64_t)options postNotification:(BOOL)notification;
- (void)_hubbleTransferCompleted:(id)completed withGUID:(id)d error:(id)error suggestedRetryGUID:(id)iD;
- (void)_postHubbleDownloadFailedForTransfer:(id)transfer error:(id)error;
- (void)_postUpdated:(id)updated;
- (void)_previewGenerationFailedNotification:(id)notification;
- (void)_previewGenerationSucceededNotification:(id)notification;
- (void)_reindexTransferIfNeededForPreviewGenerationStateChange:(id)change originalPreviewGenerationState:(int64_t)state;
- (void)_removeActiveTransfer:(id)transfer;
- (void)_removeHubbleRequestedTransfer:(id)transfer;
- (void)_removeTransferringTransfer:(id)transfer;
- (void)_transferTimerTick:(id)tick;
- (void)_updateAndPostCachedTransfer:(id)transfer;
- (void)_updateContextStamp;
- (void)_updateTransferGUID:(id)d toGUID:(id)iD;
- (void)_updateTransferPreviewGenerationState:(id)state newState:(int64_t)newState;
- (void)acceptTransfer:(id)transfer path:(id)path;
- (void)addHubbleRequestedTransfer:(id)transfer;
- (void)assignTransfer:(id)transfer toAccount:(id)account otherPerson:(id)person;
- (void)broadcastTransfersWithGUIDs:(id)ds atLocalPaths:(id)paths;
- (void)deleteTransferForGUID:(id)d;
- (void)failTransfer:(id)transfer error:(id)error;
- (void)failTransfer:(id)transfer reason:(int64_t)reason;
- (void)failTransferPreviewGeneration:(id)generation;
- (void)generatePreviewForTransfer:(id)transfer messageItem:(id)item senderContext:(id)context;
- (void)markTransferAsNotSuccessfullyDownloadedFromCloud:(id)cloud;
- (void)markTransferAsNotSyncedSuccessfully:(id)successfully;
- (void)postHubbleDownloadFailedIfNeededForTransfer:(id)transfer error:(id)error;
- (void)postHubbleDownloadFinishedIfNeededForTransfer:(id)transfer;
- (void)rejectTransfer:(id)transfer;
- (void)removeFinishedTransfers;
- (void)removeTransferForGUID:(id)d;
- (void)resetSyncStateForRecord:(id)record toState:(int64_t)state;
- (void)resetTransfer:(id)transfer andPostError:(id)error;
- (void)resetTransfer:(id)transfer andPostReason:(int64_t)reason;
- (void)retrieveLocalFileURLForFileTransferWithGUIDs:(id)ds options:(int64_t)options completion:(id)completion;
- (void)setRecoverableErrorForTransfer:(id)transfer error:(int64_t)error;
- (void)startFinalizingTransfer:(id)transfer updateByteCounts:(BOOL)counts;
- (void)startTransfer:(id)transfer;
- (void)successfullyGeneratedPreviewForTransfer:(id)transfer;
- (void)successfullyGeneratedPreviewForTransfer:(id)transfer withPreviewSize:(CGSize)size;
- (void)updateTransfer:(id)transfer;
- (void)updateTransfer:(id)transfer currentBytes:(unint64_t)bytes totalBytes:(unint64_t)totalBytes;
- (void)updateTransferAsWaitingForAccept:(id)accept;
- (void)updateTransferGUID:(id)d toGUID:(id)iD;
@end

@implementation IMDFileTransferCenter

- (id)_allFileTransfers
{
  guidToTransferMap = [(IMDFileTransferCenter *)self guidToTransferMap];
  allValues = [guidToTransferMap allValues];

  v5 = [allValues arrayByApplyingSelector:sel_guid];
  v6 = [(IMDFileTransferCenter *)self _dictionaryRepresentationsForFileTransfers:allValues toSave:0];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5];

  return v7;
}

+ (id)sharedInstance
{
  if (qword_281421128 != -1)
  {
    sub_22B7D2964();
  }

  v3 = qword_281420FA0;

  return v3;
}

- (void)addHubbleRequestedTransfer:(id)transfer
{
  guid = [transfer guid];
  if ([guid length])
  {
    activeHubbleRequestedTransfers = [(IMDFileTransferCenter *)self activeHubbleRequestedTransfers];
    [activeHubbleRequestedTransfers addObject:guid];
  }
}

- (void)_removeHubbleRequestedTransfer:(id)transfer
{
  guid = [transfer guid];
  if ([guid length])
  {
    activeHubbleRequestedTransfers = [(IMDFileTransferCenter *)self activeHubbleRequestedTransfers];
    v5 = [activeHubbleRequestedTransfers containsObject:guid];

    if (v5)
    {
      activeHubbleRequestedTransfers2 = [(IMDFileTransferCenter *)self activeHubbleRequestedTransfers];
      [activeHubbleRequestedTransfers2 removeObject:guid];
    }
  }
}

- (void)postHubbleDownloadFinishedIfNeededForTransfer:(id)transfer
{
  transferCopy = transfer;
  guid = [transferCopy guid];
  if (guid)
  {
    activeHubbleRequestedTransfers = [(IMDFileTransferCenter *)self activeHubbleRequestedTransfers];
    v6 = [activeHubbleRequestedTransfers containsObject:guid];

    if (v6)
    {
      [(IMDFileTransferCenter *)self _removeHubbleRequestedTransfer:transferCopy];
      if ([transferCopy existsAtLocalPath])
      {
        [(IMDFileTransferCenter *)self _completeHubbleDownloadForTransfer:transferCopy];
      }

      else
      {
        v7 = [IMDFileTransferCenter localFileURLRetrievalErrorWithReason:2 description:@"The file transfer does not exist on disk, but the transfer was explicitly ended."];
        [(IMDFileTransferCenter *)self _postHubbleDownloadFailedForTransfer:transferCopy error:v7];
      }
    }
  }
}

- (void)postHubbleDownloadFailedIfNeededForTransfer:(id)transfer error:(id)error
{
  transferCopy = transfer;
  errorCopy = error;
  guid = [transferCopy guid];
  if (guid)
  {
    activeHubbleRequestedTransfers = [(IMDFileTransferCenter *)self activeHubbleRequestedTransfers];
    v9 = [activeHubbleRequestedTransfers containsObject:guid];

    if (v9)
    {
      [(IMDFileTransferCenter *)self _removeHubbleRequestedTransfer:transferCopy];
      [(IMDFileTransferCenter *)self _postHubbleDownloadFailedForTransfer:transferCopy error:errorCopy];
    }
  }
}

- (void)_completeHubbleDownloadForTransfer:(id)transfer
{
  transferCopy = transfer;
  guid = [transferCopy guid];
  [(IMDFileTransferCenter *)self _hubbleTransferCompleted:transferCopy withGUID:guid error:0 suggestedRetryGUID:0];
}

- (void)_postHubbleDownloadFailedForTransfer:(id)transfer error:(id)error
{
  errorCopy = error;
  transferCopy = transfer;
  guid = [transferCopy guid];
  [(IMDFileTransferCenter *)self _hubbleTransferCompleted:transferCopy withGUID:guid error:errorCopy suggestedRetryGUID:0];
}

+ (int64_t)convertNSErrorToIMFileTransferErrorReason:(id)reason additionalErrorInfo:(id)info
{
  reasonCopy = reason;
  domain = [reasonCopy domain];
  v6 = [domain isEqualToString:*MEMORY[0x277D1A480]];

  if (v6)
  {
    v7 = 15;
  }

  else if (reasonCopy)
  {
    code = [reasonCopy code];
    v9 = 26;
    if (code != 9)
    {
      v9 = 15;
    }

    if ((code - 26) >= 2)
    {
      v7 = v9;
    }

    else
    {
      v7 = 13;
    }
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (IMDFileTransferCenter)init
{
  v12.receiver = self;
  v12.super_class = IMDFileTransferCenter;
  v2 = [(IMDFileTransferCenter *)&v12 init];
  if (v2)
  {
    stringGUID = [MEMORY[0x277CCACA8] stringGUID];
    [(IMDFileTransferCenter *)v2 setContextStamp:stringGUID];

    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(IMDFileTransferCenter *)v2 setGuidToTransferMap:v4];

    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(IMDFileTransferCenter *)v2 setActiveTransfers:v5];

    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(IMDFileTransferCenter *)v2 setTransferringTransfers:v6];

    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(IMDFileTransferCenter *)v2 setActiveHubbleRequestedTransfers:v7];

    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(IMDFileTransferCenter *)v2 setMessagesToReindexForPreviewGeneration:v8];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__previewGenerationSucceededNotification_ name:*MEMORY[0x277D1ADB8] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel__previewGenerationFailedNotification_ name:*MEMORY[0x277D1ADB0] object:0];
  }

  return v2;
}

- (void)_updateContextStamp
{
  stringGUID = [MEMORY[0x277CCACA8] stringGUID];
  [(IMDFileTransferCenter *)self setContextStamp:stringGUID];
}

- (void)_postUpdated:(id)updated
{
  if (updated)
  {
    updatedCopy = updated;
    [(IMDFileTransferCenter *)self _updateContextStamp];
    v5 = +[IMDBroadcastController sharedProvider];
    broadcasterForFileTransferListeners = [v5 broadcasterForFileTransferListeners];
    guid = [updatedCopy guid];
    _dictionaryRepresentation = [updatedCopy _dictionaryRepresentation];
    [broadcasterForFileTransferListeners fileTransfer:guid updatedWithProperties:_dictionaryRepresentation];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMDFileTransferUpdatedNotification" object:updatedCopy];
  }
}

+ (id)fileTransferErrorWithReason:(int64_t)reason description:(id)description
{
  v18[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277D19E58];
  v17[0] = *MEMORY[0x277CCA450];
  v7 = MEMORY[0x277CCA8D8];
  descriptionCopy = description;
  mainBundle = [v7 mainBundle];
  v10 = [mainBundle localizedStringForKey:@"File transfer operation was unsuccessful." value:&stru_283F23018 table:0];
  v18[0] = v10;
  v17[1] = *MEMORY[0x277CCA470];
  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [mainBundle2 localizedStringForKey:descriptionCopy value:&stru_283F23018 table:0];

  v18[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v14 = [v5 errorWithDomain:v6 code:reason userInfo:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)localFileURLRetrievalErrorWithReason:(int64_t)reason description:(id)description
{
  v18[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277D19E60];
  v17[0] = *MEMORY[0x277CCA450];
  v7 = MEMORY[0x277CCA8D8];
  descriptionCopy = description;
  mainBundle = [v7 mainBundle];
  v10 = [mainBundle localizedStringForKey:@"File transfer local file URL retrieval operation was unsuccessful." value:&stru_283F23018 table:0];
  v18[0] = v10;
  v17[1] = *MEMORY[0x277CCA470];
  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [mainBundle2 localizedStringForKey:descriptionCopy value:&stru_283F23018 table:0];

  v18[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v14 = [v5 errorWithDomain:v6 code:reason userInfo:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)localFileURLRetrievalErrorWithReason:(int64_t)reason underlyingReason:(int64_t)underlyingReason description:(id)description
{
  v22[3] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCA9B8];
  v9 = *MEMORY[0x277D19E60];
  v21[0] = *MEMORY[0x277CCA450];
  v10 = MEMORY[0x277CCA8D8];
  descriptionCopy = description;
  mainBundle = [v10 mainBundle];
  v13 = [mainBundle localizedStringForKey:@"File transfer local file URL retrieval operation was unsuccessful." value:&stru_283F23018 table:0];
  v22[0] = v13;
  v21[1] = *MEMORY[0x277CCA470];
  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v15 = [mainBundle2 localizedStringForKey:descriptionCopy value:&stru_283F23018 table:0];

  v22[1] = v15;
  v21[2] = *MEMORY[0x277CCA7E8];
  v16 = [self fileTransferErrorWithReason:underlyingReason description:@"See error code and compare against IMFileTransferErrorReason."];
  v22[2] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v18 = [v8 errorWithDomain:v9 code:reason userInfo:v17];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_dictionaryRepresentationsForFileTransfers:(id)transfers toSave:(BOOL)save
{
  transfersCopy = transfers;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B57435C;
  v8[3] = &unk_278704DE8;
  saveCopy = save;
  v8[4] = v10;
  v6 = [transfersCopy __imArrayByApplyingBlock:v8];
  _Block_object_dispose(v10, 8);

  return v6;
}

- (void)_addGatekeeperProperties:(id)properties toDirectory:(id)directory
{
  v22 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  directoryCopy = directory;
  [(IMDFileTransferCenter *)self _addGatekeeperProperties:propertiesCopy toFileAtPath:directoryCopy];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [defaultManager enumeratorAtPath:directoryCopy];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [directoryCopy stringByAppendingPathComponent:{*(*(&v17 + 1) + 8 * v14), v17}];
        [(IMDFileTransferCenter *)self _addGatekeeperProperties:propertiesCopy toFileAtPath:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_createWrapperForTransfer:(id)transfer
{
  transferCopy = transfer;
  _needsWrapper = [transferCopy _needsWrapper];
  localURL = [transferCopy localURL];
  v7 = localURL;
  if (_needsWrapper)
  {
    path = [localURL path];

    stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
    lastPathComponent = [path lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v13 = [defaultManager createUniqueDirectoryWithName:stringByDeletingPathExtension atPath:stringByDeletingLastPathComponent ofType:*MEMORY[0x277D19EF0]];

    if (v13)
    {
      v14 = [v13 stringByAppendingPathComponent:*MEMORY[0x277D19EF8]];
      guid = [transferCopy guid];
      v19 = 0;
      [guid writeToFile:v14 atomically:1 encoding:4 error:&v19];
      v16 = v19;

      if (v16)
      {

        v13 = 0;
      }
    }

    v17 = [v13 stringByAppendingPathComponent:lastPathComponent];
    [(IMDFileTransferCenter *)self _updateContextStamp];
    if (v17)
    {
      v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v17];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_removeWrapperForTransfer:(id)transfer
{
  transferCopy = transfer;
  [(IMDFileTransferCenter *)self _updateContextStamp];
  localURL = [transferCopy localURL];

  return localURL;
}

- (void)_addActiveTransfer:(id)transfer
{
  transferCopy = transfer;
  if ([transferCopy length])
  {
    activeTransfers = [(IMDFileTransferCenter *)self activeTransfers];
    [activeTransfers addObject:transferCopy];

    [(IMDFileTransferCenter *)self _updateContextStamp];
  }
}

- (BOOL)_hasActiveTransferWithGUID:(id)d
{
  dCopy = d;
  activeTransfers = [(IMDFileTransferCenter *)self activeTransfers];
  v6 = [activeTransfers containsObject:dCopy];

  return v6;
}

- (void)_removeActiveTransfer:(id)transfer
{
  transferCopy = transfer;
  if ([transferCopy length])
  {
    activeTransfers = [(IMDFileTransferCenter *)self activeTransfers];
    v5 = [activeTransfers containsObject:transferCopy];

    if (v5)
    {
      activeTransfers2 = [(IMDFileTransferCenter *)self activeTransfers];
      [activeTransfers2 removeObject:transferCopy];
    }

    [(IMDFileTransferCenter *)self _updateContextStamp];
  }
}

- (void)_addTransferringTransfer:(id)transfer
{
  if (transfer)
  {
    transferCopy = transfer;
    transferringTransfers = [(IMDFileTransferCenter *)self transferringTransfers];
    v6 = [transferringTransfers count];

    if (!v6)
    {
      v7 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__transferTimerTick_ selector:0 userInfo:1 repeats:1.25];
      [(IMDFileTransferCenter *)self setTransferTimer:v7];
    }

    transferringTransfers2 = [(IMDFileTransferCenter *)self transferringTransfers];
    [transferringTransfers2 addObject:transferCopy];
  }
}

- (void)_removeTransferringTransfer:(id)transfer
{
  transferCopy = transfer;
  if (transferCopy)
  {
    transferringTransfers = [(IMDFileTransferCenter *)self transferringTransfers];
    v5 = [transferringTransfers containsObject:transferCopy];

    if (v5)
    {
      transferringTransfers2 = [(IMDFileTransferCenter *)self transferringTransfers];
      [transferringTransfers2 removeObject:transferCopy];

      transferringTransfers3 = [(IMDFileTransferCenter *)self transferringTransfers];
      v8 = [transferringTransfers3 count];

      if (!v8)
      {
        transferTimer = [(IMDFileTransferCenter *)self transferTimer];
        [transferTimer invalidate];

        [(IMDFileTransferCenter *)self setTransferTimer:0];
      }
    }
  }
}

- (void)_transferTimerTick:(id)tick
{
  v33 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  transferringTransfers = [(IMDFileTransferCenter *)self transferringTransfers];
  _copyForEnumerating = [transferringTransfers _copyForEnumerating];

  v6 = [_copyForEnumerating countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    v27 = _copyForEnumerating;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(_copyForEnumerating);
        }

        v10 = *(*(&v28 + 1) + 8 * v9);
        guid = [v10 guid];
        v12 = [(IMDFileTransferCenter *)self transferForGUID:guid];
        v13 = v12;
        if (v12 != v10)
        {

LABEL_9:
          [(IMDFileTransferCenter *)self _removeTransferringTransfer:v10];
          goto LABEL_10;
        }

        transferState = [v10 transferState];

        if (transferState == 5)
        {
          goto LABEL_9;
        }

        averageTransferRate = [v10 averageTransferRate];
        currentBytes = [v10 currentBytes];
        date = [MEMORY[0x277CBEAA8] date];
        [date timeIntervalSince1970];
        v19 = v18;

        [v10 _lastAveragedInterval];
        if (v19 - v20 > 1.0)
        {
          averageTransferRate2 = [v10 averageTransferRate];
          averageTransferRate = (averageTransferRate2 + (currentBytes - [v10 _lastAveragedBytes] - averageTransferRate2) * 0.333333333);
          [v10 _setAveragedTransferRate:averageTransferRate lastAveragedInterval:currentBytes lastAveragedBytes:v19];
        }

        [v10 _setLastUpdatedInterval:v19];
        v22 = +[IMDBroadcastController sharedProvider];
        broadcasterForFileTransferListeners = [v22 broadcasterForFileTransferListeners];
        guid2 = [v10 guid];
        [broadcasterForFileTransferListeners fileTransfer:guid2 updatedWithCurrentBytes:currentBytes totalBytes:objc_msgSend(v10 averageTransferRate:{"totalBytes"), averageTransferRate}];

        _copyForEnumerating = v27;
LABEL_10:
        ++v9;
      }

      while (v7 != v9);
      v25 = [_copyForEnumerating countByEnumeratingWithState:&v28 objects:v32 count:16];
      v7 = v25;
    }

    while (v25);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)createNewOutgoingTransferWithLocalFileURL:(id)l
{
  v3 = MEMORY[0x277CCACA8];
  lCopy = l;
  stringGUID = [v3 stringGUID];
  path = [lCopy path];
  defaultHFSFileManager = [MEMORY[0x277D19250] defaultHFSFileManager];
  v21 = 0;
  v8 = [defaultHFSFileManager attributesOfItemAtPath:path error:&v21];

  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277CCA1E0]];
  v10 = [v9 isEqual:*MEMORY[0x277CCA1E8]];

  v11 = objc_alloc(MEMORY[0x277D1A9C0]);
  lastPathComponent = [path lastPathComponent];
  fileSize = [v8 fileSize];
  fileHFSTypeCode = [v8 fileHFSTypeCode];
  fileHFSCreatorCode = [v8 fileHFSCreatorCode];
  BYTE2(v19) = 0;
  LOWORD(v19) = [v8 fileHFSFlags];
  v16 = [v11 _initWithGUID:stringGUID filename:lastPathComponent isDirectory:v10 localURL:lCopy account:0 otherPerson:0 totalBytes:fileSize hfsType:__PAIR64__(fileHFSCreatorCode hfsCreator:fileHFSTypeCode) hfsFlags:v19 isIncoming:?];

  guidToTransferMap = [(IMDFileTransferCenter *)self guidToTransferMap];
  [guidToTransferMap setObject:v16 forKeyedSubscript:stringGUID];

  return stringGUID;
}

- (void)broadcastTransfersWithGUIDs:(id)ds atLocalPaths:(id)paths
{
  pathsCopy = paths;
  dsCopy = ds;
  v8 = +[IMDBroadcastController sharedProvider];
  broadcasterForFileTransferListeners = [v8 broadcasterForFileTransferListeners];
  [broadcasterForFileTransferListeners fileTransfers:dsCopy createdWithLocalPaths:pathsCopy];
}

- (BOOL)registerGUID:(id)d forNewOutgoingTransferWithLocalURL:(id)l
{
  dCopy = d;
  lCopy = l;
  v8 = [dCopy length];
  if (v8)
  {
    path = [lCopy path];
    defaultHFSFileManager = [MEMORY[0x277D19250] defaultHFSFileManager];
    v23 = 0;
    v11 = [defaultHFSFileManager attributesOfItemAtPath:path error:&v23];

    v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA1E0]];
    v13 = [v12 isEqual:*MEMORY[0x277CCA1E8]];

    v14 = [(IMDFileTransferCenter *)self transferForGUID:dCopy];
    if (!v14)
    {
      v22 = objc_alloc(MEMORY[0x277D1A9C0]);
      lastPathComponent = [path lastPathComponent];
      fileSize = [v11 fileSize];
      fileHFSTypeCode = [v11 fileHFSTypeCode];
      fileHFSCreatorCode = [v11 fileHFSCreatorCode];
      BYTE2(v20) = 0;
      LOWORD(v20) = [v11 fileHFSFlags];
      v14 = [v22 _initWithGUID:dCopy filename:lastPathComponent isDirectory:v13 localURL:lCopy account:0 otherPerson:0 totalBytes:fileSize hfsType:__PAIR64__(fileHFSCreatorCode hfsCreator:fileHFSTypeCode) hfsFlags:v20 isIncoming:?];
    }

    guidToTransferMap = [(IMDFileTransferCenter *)self guidToTransferMap];
    [guidToTransferMap setObject:v14 forKeyedSubscript:dCopy];
  }

  return v8 != 0;
}

- (void)assignTransfer:(id)transfer toAccount:(id)account otherPerson:(id)person
{
  transferCopy = transfer;
  accountCopy = account;
  personCopy = person;
  if ([transferCopy length])
  {
    v10 = [(IMDFileTransferCenter *)self transferForGUID:transferCopy];
    v11 = v10;
    if (v10)
    {
      [v10 _setAccount:accountCopy otherPerson:personCopy];
      v12 = +[IMDBroadcastController sharedProvider];
      broadcasterForFileTransferListeners = [v12 broadcasterForFileTransferListeners];
      guid = [v11 guid];
      _dictionaryRepresentation = [v11 _dictionaryRepresentation];
      [broadcasterForFileTransferListeners fileTransfer:guid createdWithProperties:_dictionaryRepresentation];

      [(IMDFileTransferCenter *)self _updateContextStamp];
    }
  }
}

- (void)_addTransfer:(id)transfer forGUID:(id)d shouldNotify:(BOOL)notify
{
  notifyCopy = notify;
  transferCopy = transfer;
  if (transferCopy)
  {
    if (d)
    {
      v17 = transferCopy;
      dCopy = d;
      guidToTransferMap = [(IMDFileTransferCenter *)self guidToTransferMap];
      v11 = [guidToTransferMap objectForKeyedSubscript:dCopy];

      guidToTransferMap2 = [(IMDFileTransferCenter *)self guidToTransferMap];
      [guidToTransferMap2 setObject:v17 forKeyedSubscript:dCopy];

      transferCopy = v17;
      if (notifyCopy)
      {
        if (v11)
        {
          [(IMDFileTransferCenter *)self _postUpdated:v17];
        }

        else
        {
          v13 = +[IMDBroadcastController sharedProvider];
          broadcasterForFileTransferListeners = [v13 broadcasterForFileTransferListeners];
          guid = [v17 guid];
          _dictionaryRepresentation = [v17 _dictionaryRepresentation];
          [broadcasterForFileTransferListeners fileTransfer:guid createdWithProperties:_dictionaryRepresentation];
        }

        transferCopy = v17;
      }
    }
  }
}

- (id)transferForGUID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    guidToTransferMap = [(IMDFileTransferCenter *)self guidToTransferMap];
    v6 = [guidToTransferMap objectForKeyedSubscript:dCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)removeTransferForGUID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    guidToTransferMap = [(IMDFileTransferCenter *)self guidToTransferMap];
    [guidToTransferMap setObject:0 forKeyedSubscript:dCopy];
  }
}

- (void)deleteTransferForGUID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    [(IMDFileTransferCenter *)self _handleFileTransferRemoved:dCopy];
    v4 = +[IMDAttachmentStore sharedInstance];
    [v4 deleteAttachmentWithGUID:dCopy];
  }
}

- (void)updateTransferGUID:(id)d toGUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    [(IMDFileTransferCenter *)self _updateTransferGUID:dCopy toGUID:iDCopy];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B57598C;
    block[3] = &unk_2787038F8;
    block[4] = self;
    v9 = dCopy;
    v10 = iDCopy;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }
}

- (void)_updateTransferGUID:(id)d toGUID:(id)iD
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  guidToTransferMap = [(IMDFileTransferCenter *)self guidToTransferMap];
  v9 = [guidToTransferMap objectForKeyedSubscript:dCopy];

  if (v9)
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = dCopy;
      v17 = 2112;
      v18 = iDCopy;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "FileTransferCenter updating guid for transfer in cache map:%@ to %@", &v15, 0x16u);
    }

    v11 = [iDCopy copy];
    [v9 setGuid:v11];
    guidToTransferMap2 = [(IMDFileTransferCenter *)self guidToTransferMap];
    [guidToTransferMap2 setObject:0 forKeyedSubscript:dCopy];

    guidToTransferMap3 = [(IMDFileTransferCenter *)self guidToTransferMap];
    [guidToTransferMap3 setObject:v9 forKeyedSubscript:v11];

    iDCopy = v11;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)startTransfer:(id)transfer
{
  transferCopy = transfer;
  if ([transferCopy length])
  {
    v4 = [(IMDFileTransferCenter *)self transferForGUID:transferCopy];
    v5 = v4;
    if (v4 && ([v4 transferState] < 2 || objc_msgSend(v5, "transferState") == 6))
    {
      [(IMDFileTransferCenter *)self _addActiveTransfer:transferCopy];
      [v5 _setTransferState:2];
      [v5 _setError:-1];
      [(IMDFileTransferCenter *)self _postUpdated:v5];
      if ([v5 isIncoming])
      {
        v6 = [(IMDFileTransferCenter *)self _createWrapperForTransfer:v5];
        if (v6)
        {
          [v5 _setLocalURL:v6];
          [(IMDFileTransferCenter *)self _postUpdated:v5];
        }

        else
        {
          [(IMDFileTransferCenter *)self resetTransfer:transferCopy andPostReason:20];
        }
      }

      [(IMDFileTransferCenter *)self _updateContextStamp];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)updateTransfer:(id)transfer currentBytes:(unint64_t)bytes totalBytes:(unint64_t)totalBytes
{
  transferCopy = transfer;
  if ([transferCopy length])
  {
    v8 = [(IMDFileTransferCenter *)self transferForGUID:transferCopy];
    v9 = v8;
    if (v8)
    {
      if ([v8 transferState] > 2)
      {
        [v9 _setCurrentBytes:bytes totalBytes:totalBytes];
      }

      else
      {
        [v9 _setTransferState:3];
        date = [MEMORY[0x277CBEAA8] date];
        [v9 _setStartDate:date];

        [(IMDFileTransferCenter *)self _addTransferringTransfer:v9];
        [v9 _setCurrentBytes:bytes totalBytes:totalBytes];
        [(IMDFileTransferCenter *)self _postUpdated:v9];
      }

      [(IMDFileTransferCenter *)self _updateContextStamp];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)updateTransfer:(id)transfer
{
  transferCopy = transfer;
  if ([transferCopy length])
  {
    v4 = [(IMDFileTransferCenter *)self transferForGUID:transferCopy];
    if (v4)
    {
      [(IMDFileTransferCenter *)self _postUpdated:v4];
      [(IMDFileTransferCenter *)self _updateContextStamp];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)updateTransferAsWaitingForAccept:(id)accept
{
  acceptCopy = accept;
  if (acceptCopy)
  {
    v9 = acceptCopy;
    [acceptCopy _setTransferState:0];
    guid = [v9 guid];
    v6 = [(IMDFileTransferCenter *)self transferForGUID:guid];

    v7 = v9;
    if (v6)
    {
      [v6 _setTransferState:0];
      v7 = v6;
    }

    _attachmentStoreSharedInstance = [(IMDFileTransferCenter *)self _attachmentStoreSharedInstance];
    [_attachmentStoreSharedInstance updateAttachment:v7];

    [(IMDFileTransferCenter *)self _postUpdated:v7];
    acceptCopy = v9;
  }
}

- (void)startFinalizingTransfer:(id)transfer updateByteCounts:(BOOL)counts
{
  countsCopy = counts;
  transferCopy = transfer;
  if ([transferCopy length])
  {
    v7 = [(IMDFileTransferCenter *)self transferForGUID:transferCopy];
    v8 = v7;
    if (v7)
    {
      if ([v7 transferState] <= 3)
      {
        [v8 _setTransferState:4];
        if (countsCopy)
        {
          [v8 _setCurrentBytes:objc_msgSend(v8 totalBytes:{"totalBytes"), objc_msgSend(v8, "totalBytes")}];
        }

        [(IMDFileTransferCenter *)self _postUpdated:v8];
        if ([v8 isIncoming])
        {
          v9 = [(IMDFileTransferCenter *)self _removeWrapperForTransfer:v8];
          if (v9)
          {
            [v8 _setLocalURL:v9];
            path = [v9 path];
            defaultHFSFileManager = [MEMORY[0x277D19250] defaultHFSFileManager];
            v17 = 0;
            v12 = [defaultHFSFileManager attributesOfItemAtPath:path error:&v17];

            if (v12)
            {
              v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCA1E0]];
              v14 = [v13 isEqual:*MEMORY[0x277CCA1E8]];

              [v8 _setDirectory:v14 hfsType:objc_msgSend(v12 hfsCreator:"fileHFSTypeCode") hfsFlags:{objc_msgSend(v12, "fileHFSCreatorCode"), objc_msgSend(v12, "fileHFSFlags")}];
              if (countsCopy)
              {
                v15 = [v12 objectForKey:*MEMORY[0x277CCA1C0]];
                if (v15)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    unsignedLongLongValue = [v15 unsignedLongLongValue];
                    [v8 _setCurrentBytes:unsignedLongLongValue totalBytes:unsignedLongLongValue];
                  }
                }
              }
            }

            [(IMDFileTransferCenter *)self _postUpdated:v8];
          }

          else
          {
            [(IMDFileTransferCenter *)self resetTransfer:transferCopy andPostReason:20];
          }
        }

        [(IMDFileTransferCenter *)self _removeActiveTransfer:transferCopy];
        [(IMDFileTransferCenter *)self _removeTransferringTransfer:v8];
      }

      [(IMDFileTransferCenter *)self _updateContextStamp];
    }
  }
}

- (void)failTransfer:(id)transfer reason:(int64_t)reason
{
  transferCopy = transfer;
  if ([transferCopy length])
  {
    v6 = [(IMDFileTransferCenter *)self transferForGUID:transferCopy];
    if ([v6 thumbnailMode])
    {
      [v6 setThumbnailMode:{objc_msgSend(v6, "thumbnailModeAfterDownloadSuccess:", 0)}];
    }

    if (v6 && [v6 transferState] != 6)
    {
      [(IMDFileTransferCenter *)self _removeActiveTransfer:transferCopy];
      [(IMDFileTransferCenter *)self _removeTransferringTransfer:v6];
      if (reason == -1)
      {
        reason = 15;
      }

      [v6 _setTransferState:6];
      [v6 _setError:reason];
      [(IMDFileTransferCenter *)self _postUpdated:v6];
      v7 = +[IMDAttachmentStore sharedInstance];
      [v7 storeAttachment:v6 associateWithMessageWithGUID:0];
    }

    [(IMDFileTransferCenter *)self _clearProgressForTransferGUID:transferCopy];
    v8 = MEMORY[0x277CCACA8];
    errorDescription = [v6 errorDescription];
    v10 = [v8 stringWithFormat:@"Transfer failed. See underlying error. transfer.errorDescription:%@", errorDescription];
    v11 = [IMDFileTransferCenter localFileURLRetrievalErrorWithReason:3 underlyingReason:reason description:v10];
    [(IMDFileTransferCenter *)self postHubbleDownloadFailedIfNeededForTransfer:v6 error:v11];
  }
}

- (void)resetTransfer:(id)transfer andPostReason:(int64_t)reason
{
  transferCopy = transfer;
  if ([transferCopy length])
  {
    v6 = [(IMDFileTransferCenter *)self transferForGUID:transferCopy];
    v7 = MEMORY[0x277CCACA8];
    errorDescription = [v6 errorDescription];
    v9 = [v7 stringWithFormat:@"Transfer was reset. See underlying error. transfer.errorDescription:%@", errorDescription];
    v10 = [IMDFileTransferCenter localFileURLRetrievalErrorWithReason:4 underlyingReason:reason description:v9];

    guid = [v6 guid];
    [(IMDFileTransferCenter *)self resetTransfer:guid andPostError:v10];
  }
}

- (void)resetTransfer:(id)transfer andPostError:(id)error
{
  transferCopy = transfer;
  errorCopy = error;
  if ([transferCopy length])
  {
    v8 = [(IMDFileTransferCenter *)self transferForGUID:transferCopy];
    v9 = [v8 finalTransferStateForSuccess:0];
    thumbnailMode = [v8 thumbnailMode];
    if (thumbnailMode)
    {
      [v8 setThumbnailMode:thumbnailMode - 1];
    }

    if (v8 && [v8 transferState] != 6)
    {
      v11 = IMLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "IMDFileTransfer posting recoverable error state for IMFileTransfer", buf, 2u);
      }

      [v8 _setTransferState:7];
      [(IMDFileTransferCenter *)self _postUpdated:v8];
      v12 = IMLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEFAULT, "IMDFileTransfer reset file transfer to waiting state", v14, 2u);
      }

      [v8 _setTransferState:v9];
      [v8 _setError:-1];
      [(IMDFileTransferCenter *)self _postUpdated:v8];
      v13 = +[IMDAttachmentStore sharedInstance];
      [v13 storeAttachment:v8 associateWithMessageWithGUID:0];
    }

    [(IMDFileTransferCenter *)self _clearProgressForTransferGUID:transferCopy];
    [(IMDFileTransferCenter *)self postHubbleDownloadFailedIfNeededForTransfer:v8 error:errorCopy];
  }
}

- (void)_updateTransferPreviewGenerationState:(id)state newState:(int64_t)newState
{
  v6 = [(IMDFileTransferCenter *)self transferForGUID:state];
  if (v6)
  {
    v9 = v6;
    previewGenerationState = [v6 previewGenerationState];
    [v9 setPreviewGenerationState:newState];
    [v9 setPreviewGenerationVersion:*MEMORY[0x277D1ADC8]];
    v8 = +[IMDAttachmentStore sharedInstance];
    [v8 updateAttachment:v9];

    [(IMDFileTransferCenter *)self _reindexTransferIfNeededForPreviewGenerationStateChange:v9 originalPreviewGenerationState:previewGenerationState];
    [(IMDFileTransferCenter *)self _postUpdated:v9];
    v6 = v9;
  }
}

- (void)_reindexTransferIfNeededForPreviewGenerationStateChange:(id)change originalPreviewGenerationState:(int64_t)state
{
  v24 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  type = [changeCopy type];
  [changeCopy previewGenerationState];
  messageGUID = [changeCopy messageGUID];
  [(IMDFileTransferCenter *)self _isFileTransferWithGUIDFromKnownSender:messageGUID];
  v8 = IMShouldReindexUTITypeWithPreviewGenerationState();

  if (v8)
  {
    guid = [changeCopy guid];
    v10 = IMDAttachmentRecordCopyMessageForAttachmentGUID();

    guid2 = [v10 guid];

    v12 = IMAttachmentsLogHandle();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (guid2)
    {
      if (v13)
      {
        guid3 = [changeCopy guid];
        guid4 = [v10 guid];
        v20 = 138412546;
        v21 = guid3;
        v22 = 2112;
        v23 = guid4;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEFAULT, "Transfer GUID %@ from message %@ should be re-indexed due to preview generation state change", &v20, 0x16u);
      }

      messagesToReindexForPreviewGeneration = [(IMDFileTransferCenter *)self messagesToReindexForPreviewGeneration];
      guid5 = [v10 guid];
      [messagesToReindexForPreviewGeneration addObject:guid5];

      [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__flushMessagesToReindexForPreviewGeneration object:0];
      [(IMDFileTransferCenter *)self performSelector:sel__flushMessagesToReindexForPreviewGeneration withObject:0 afterDelay:3.0];
    }

    else
    {
      if (v13)
      {
        guid6 = [changeCopy guid];
        v20 = 138412290;
        v21 = guid6;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEFAULT, "Transfer GUID %@ should be re-indexed due to preview generation state change, but has not been persisted to the database yet. It will be indexed once the message is stored.", &v20, 0xCu);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_flushMessagesToReindexForPreviewGeneration
{
  v14 = *MEMORY[0x277D85DE8];
  messagesToReindexForPreviewGeneration = [(IMDFileTransferCenter *)self messagesToReindexForPreviewGeneration];
  v4 = [messagesToReindexForPreviewGeneration count];

  if (v4)
  {
    messagesToReindexForPreviewGeneration2 = [(IMDFileTransferCenter *)self messagesToReindexForPreviewGeneration];
    allObjects = [messagesToReindexForPreviewGeneration2 allObjects];

    messagesToReindexForPreviewGeneration3 = [(IMDFileTransferCenter *)self messagesToReindexForPreviewGeneration];
    [messagesToReindexForPreviewGeneration3 removeAllObjects];

    v8 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v13 = [allObjects count];
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "Re-indexing %ld messages due to preview generation state change", buf, 0xCu);
    }

    v11 = allObjects;
    v9 = allObjects;
    IMDCoreSpotlightReindexMessagesWhileBlocking();
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)failTransferPreviewGeneration:(id)generation
{
  v9 = *MEMORY[0x277D85DE8];
  generationCopy = generation;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = generationCopy;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Marking transfer %@ as failing preview generation", &v7, 0xCu);
  }

  [(IMDFileTransferCenter *)self _updateTransferPreviewGenerationState:generationCopy newState:2];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)successfullyGeneratedPreviewForTransfer:(id)transfer
{
  v9 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = transferCopy;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Marking transfer %@ as succeeding preview generation", &v7, 0xCu);
  }

  [(IMDFileTransferCenter *)self _updateTransferPreviewGenerationState:transferCopy newState:1];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_previewGenerationSucceededNotification:(id)notification
{
  v14 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  object = [notificationCopy object];
  if ([MEMORY[0x277D1A978] ignorePreviewGenerationNotifications])
  {
    v6 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v13) = 138412290;
      *(&v13 + 4) = object;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "Preview generation succeeded for transfer %@, but ignoring due to override", &v13, 0xCu);
    }
  }

  else
  {
    userInfo = [notificationCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D1ADC0]];
    v9 = v8;
    v13 = 0uLL;
    if (v8)
    {
      [v8 getValue:&v13 size:16];
      v10 = *(&v13 + 1);
      v11 = *&v13;
    }

    else
    {
      v10 = 0.0;
      v11 = 0.0;
    }

    [(IMDFileTransferCenter *)self successfullyGeneratedPreviewForTransfer:object withPreviewSize:v11, v10];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_previewGenerationFailedNotification:(id)notification
{
  v9 = *MEMORY[0x277D85DE8];
  object = [notification object];
  if ([MEMORY[0x277D1A978] ignorePreviewGenerationNotifications])
  {
    v5 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = object;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Preview generation failed for transfer %@, but ignoring due to override", &v7, 0xCu);
    }
  }

  else
  {
    [(IMDFileTransferCenter *)self failTransferPreviewGeneration:object];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)rejectTransfer:(id)transfer
{
  transferCopy = transfer;
  if ([transferCopy length])
  {
    v4 = [(IMDFileTransferCenter *)self transferForGUID:transferCopy];
    if (v4)
    {
      [(IMDFileTransferCenter *)self _removeActiveTransfer:transferCopy];
      [(IMDFileTransferCenter *)self _removeTransferringTransfer:v4];
      [v4 _setTransferState:8];
      [(IMDFileTransferCenter *)self _postUpdated:v4];
      v5 = +[IMDAttachmentStore sharedInstance];
      [v5 storeAttachment:v4 associateWithMessageWithGUID:0];
    }

    [(IMDFileTransferCenter *)self _clearProgressForTransferGUID:transferCopy];
    v6 = MEMORY[0x277CCACA8];
    errorDescription = [v4 errorDescription];
    v8 = [v6 stringWithFormat:@"Transfer failed. See underlying error. transfer.errorDescription:%@", errorDescription];
    v9 = [IMDFileTransferCenter localFileURLRetrievalErrorWithReason:3 underlyingReason:28 description:v8];
    [(IMDFileTransferCenter *)self postHubbleDownloadFailedIfNeededForTransfer:v4 error:v9];
  }
}

- (void)successfullyGeneratedPreviewForTransfer:(id)transfer withPreviewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v24 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = IMStringFromCGSize();
    v20 = 138412546;
    v21 = transferCopy;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "Updating transfer %@ with size %@", &v20, 0x16u);
  }

  v10 = [(IMDFileTransferCenter *)self transferForGUID:transferCopy];
  v11 = v10;
  if (v10)
  {
    previewGenerationState = [v10 previewGenerationState];
    [v11 setPreviewGenerationState:1];
    if (width != *MEMORY[0x277CBF3A8] || height != *(MEMORY[0x277CBF3A8] + 8))
    {
      attributionInfo = [v11 attributionInfo];
      IMClientPreviewConstraints();
      v15 = IMUpdateTransferConstraintAndSizeKeys();

      v16 = IMLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = v15;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_DEFAULT, "New attribution info is %@", &v20, 0xCu);
      }

      [v11 setAttributionInfo:v15];
    }

    _attachmentStoreSharedInstance = [(IMDFileTransferCenter *)self _attachmentStoreSharedInstance];
    [_attachmentStoreSharedInstance updateAttachment:v11];

    [(IMDFileTransferCenter *)self _reindexTransferIfNeededForPreviewGenerationStateChange:v11 originalPreviewGenerationState:previewGenerationState];
    [(IMDFileTransferCenter *)self _postUpdated:v11];
  }

  else
  {
    v18 = IMLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D2978(transferCopy, v18);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)generatePreviewForTransfer:(id)transfer messageItem:(id)item senderContext:(id)context
{
  v7 = MEMORY[0x277D1ADF8];
  contextCopy = context;
  itemCopy = item;
  transferCopy = transfer;
  sharedInstance = [v7 sharedInstance];
  localPath = [transferCopy localPath];
  balloonBundleID = [itemCopy balloonBundleID];

  [sharedInstance generatePreviewForTransfer:transferCopy attachmentPath:localPath balloonBundleID:balloonBundleID senderContext:contextCopy completionBlock:&unk_283F19D08];
}

- (void)setRecoverableErrorForTransfer:(id)transfer error:(int64_t)error
{
  v16 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  if ([transferCopy length])
  {
    v7 = [(IMDFileTransferCenter *)self transferForGUID:transferCopy];
    v8 = v7;
    if (v7 && [v7 transferState] != 6)
    {
      v9 = IMLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134218242;
        errorCopy = error;
        v14 = 2112;
        v15 = transferCopy;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEFAULT, "IMDFileTransfer posting recoverable error state (%zd) for IMFileTransfer %@", &v12, 0x16u);
      }

      [v8 _setTransferState:7];
      [v8 _setError:error];
      [(IMDFileTransferCenter *)self _postUpdated:v8];
      v10 = +[IMDAttachmentStore sharedInstance];
      [v10 storeAttachment:v8 associateWithMessageWithGUID:0];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)failTransfer:(id)transfer error:(id)error
{
  transferCopy = transfer;
  errorCopy = error;
  if ([transferCopy length])
  {
    v7 = [(IMDFileTransferCenter *)self transferForGUID:transferCopy];
    localizedDescription = [errorCopy localizedDescription];
    [v7 _setErrorDescription:localizedDescription];

    [(IMDFileTransferCenter *)self failTransfer:transferCopy reason:24];
    [(IMDFileTransferCenter *)self _clearProgressForTransferGUID:transferCopy];
    [(IMDFileTransferCenter *)self _updateContextStamp];
    v9 = +[IMDAttachmentStore sharedInstance];
    [v9 storeAttachment:v7 associateWithMessageWithGUID:0];

    [(IMDFileTransferCenter *)self postHubbleDownloadFailedIfNeededForTransfer:v7 error:errorCopy];
  }
}

- (void)acceptTransfer:(id)transfer path:(id)path
{
  transferCopy = transfer;
  pathCopy = path;
  if ([transferCopy length])
  {
    [(IMDFileTransferCenter *)self _handleFileTransfer:transferCopy acceptedWithPath:pathCopy autoRename:1 overwrite:0 options:0 postNotification:0];
    [(IMDFileTransferCenter *)self _updateContextStamp];
  }
}

- (void)_handleFileTransfer:(id)transfer createdWithProperties:(id)properties withAuditToken:(id *)token
{
  v37 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  propertiesCopy = properties;
  if ([transferCopy length])
  {
    v10 = objc_alloc_init(MEMORY[0x277D1A9C0]);
    [v10 _updateWithDictionaryRepresentation:propertiesCopy];
    if (!token)
    {
      goto LABEL_18;
    }

    localPath = [v10 localPath];
    if (!localPath)
    {
      goto LABEL_18;
    }

    v12 = localPath;
    sandboxToken = [v10 sandboxToken];
    v14 = sandboxToken;
    if (sandboxToken)
    {
      [sandboxToken UTF8String];
      if (sandbox_extension_consume() != -1)
      {
        if (sandbox_extension_release() == -1)
        {
          v15 = IMLogHandleForCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_22B7D29F0();
          }
        }

LABEL_17:

LABEL_18:
        guidToTransferMap = [(IMDFileTransferCenter *)self guidToTransferMap];
        v29 = [guidToTransferMap objectForKeyedSubscript:transferCopy];

        guidToTransferMap2 = [(IMDFileTransferCenter *)self guidToTransferMap];
        [guidToTransferMap2 setObject:v10 forKeyedSubscript:transferCopy];

        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter __mainThreadPostNotificationName:@"__kIMDFileTransferCreatedNotification" object:v10];

        [(IMDFileTransferCenter *)self _updateContextStamp];
        if (!v10)
        {
LABEL_23:

          goto LABEL_24;
        }

        if (v29)
        {
          [(IMDFileTransferCenter *)self _postUpdated:v10];
          goto LABEL_23;
        }

        v24 = +[IMDBroadcastController sharedProvider];
        broadcasterForFileTransferListeners = [v24 broadcasterForFileTransferListeners];
        guid = [v10 guid];
        _dictionaryRepresentation = [v10 _dictionaryRepresentation];
        [broadcasterForFileTransferListeners fileTransfer:guid createdWithProperties:_dictionaryRepresentation];
LABEL_22:

        goto LABEL_23;
      }

      v16 = IMLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D2A58();
      }
    }

    uTF8String = [v12 UTF8String];
    v18 = *&token->var0[4];
    *buf = *token->var0;
    v36 = v18;
    v34 = uTF8String;
    v19 = sandbox_check_by_audit_token();
    if (v19)
    {
      v20 = v19;
      v21 = IMLogHandleForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v33 = *__error();
        *buf = 67109890;
        *&buf[4] = v20;
        *&buf[8] = 1024;
        *&buf[10] = v33;
        *&buf[14] = 1024;
        LODWORD(v36) = token;
        WORD2(v36) = 2112;
        *(&v36 + 6) = v12;
        _os_log_error_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_ERROR, "Denying transfer, (check %d, errno %d) client with audit token:%u not allowed to access request path:%@", buf, 0x1Eu);
      }

      [v10 _setError:{30, v34}];
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Denying transfer, (check %d, errno %d) client with audit token:%u not allowed to access request path:%@", v20, *__error(), token, v12];
      [v10 _setErrorDescription:v22];

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 __mainThreadPostNotificationName:@"__kIMDFileTransferRejectedNotification" object:v10];

      v24 = +[IMDBroadcastController sharedProvider];
      broadcasterForFileTransferListeners = [v24 broadcasterForFileTransferListeners];
      guid = [v10 guid];
      _dictionaryRepresentation = [v10 _dictionaryRepresentation];
      [broadcasterForFileTransferListeners fileTransfer:guid rejectedWithProperties:_dictionaryRepresentation];
      goto LABEL_22;
    }

    goto LABEL_17;
  }

LABEL_24:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_updateAndPostCachedTransfer:(id)transfer
{
  transferCopy = transfer;
  if (transferCopy)
  {
    v10 = transferCopy;
    guid = [transferCopy guid];
    v6 = [guid length];

    transferCopy = v10;
    if (v6)
    {
      guid2 = [v10 guid];
      v8 = [(IMDFileTransferCenter *)self transferForGUID:guid2];

      [(IMDFileTransferCenter *)self _updateContextStamp];
      if (v8)
      {
        if (v8 != v10)
        {
          _dictionaryRepresentation = [v10 _dictionaryRepresentation];
          [v8 _updateWithDictionaryRepresentation:_dictionaryRepresentation];
        }

        [(IMDFileTransferCenter *)self _postUpdated:v8];
      }

      transferCopy = v10;
    }
  }
}

- (void)_handleFileTransfer:(id)transfer updatedWithProperties:(id)properties isStickerReposition:(BOOL)reposition repositionedLocally:(BOOL)locally
{
  locallyCopy = locally;
  repositionCopy = reposition;
  transferCopy = transfer;
  propertiesCopy = properties;
  if ([transferCopy length])
  {
    v11 = [(IMDFileTransferCenter *)self transferForGUID:transferCopy];
    v12 = v11;
    if (v11)
    {
      transferredFilename = [v11 transferredFilename];
      v14 = [transferredFilename copy];

      [v12 _updateWithDictionaryRepresentation:propertiesCopy];
      if (repositionCopy)
      {
        if (locallyCopy)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        [v12 setUpdateReason:v15];
      }

      if (v14)
      {
        [v12 setTransferredFilename:v14];
      }

      _attachmentStoreSharedInstance = [(IMDFileTransferCenter *)self _attachmentStoreSharedInstance];
      [_attachmentStoreSharedInstance updateAttachment:v12];

      [(IMDFileTransferCenter *)self _updateContextStamp];
      if (!repositionCopy)
      {
        [(IMDFileTransferCenter *)self _postUpdated:v12];
      }
    }

    else
    {
      [(IMDFileTransferCenter *)self _updateContextStamp];
    }
  }
}

- (void)_handleFileTransfer:(id)transfer rejectedWithProperties:(id)properties
{
  v10 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = transferCopy;
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "File transfer rejected for guid: %@", &v8, 0xCu);
  }

  [(IMDFileTransferCenter *)self _handleFileTransferRemoved:transferCopy];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleFileTransfer:(id)transfer acceptedWithPath:(id)path autoRename:(BOOL)rename overwrite:(BOOL)overwrite options:(int64_t)options postNotification:(BOOL)notification
{
  notificationCopy = notification;
  v39 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  pathCopy = path;
  if ([transferCopy length])
  {
    guidToTransferMap = [(IMDFileTransferCenter *)self guidToTransferMap];
    v15 = [guidToTransferMap objectForKeyedSubscript:transferCopy];

    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = transferCopy;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_DEFAULT, "_handleFileTransfer accepted %@", buf, 0xCu);
    }

    [v15 _resetTransferStateIfAttachmentIsMissingAndDownloadable];
    v17 = +[IMDCKCacheDeleteManager sharedInstance];
    v18 = [v17 shouldDownloadAssetsOfSize:objc_msgSend(v15 refreshCachedValue:{"totalBytes"), 1}];

    if (v18)
    {
      if ([v15 transferState] <= 0)
      {
        if (IMGetAppBoolForKey())
        {
          [(IMDFileTransferCenter *)self failTransfer:transferCopy reason:25];
        }

        else
        {
          [(IMDFileTransferCenter *)self _addActiveTransfer:transferCopy];
          if (!pathCopy)
          {
            filename = [v15 filename];
            lastPathComponent = [filename lastPathComponent];

            defaultManager = [MEMORY[0x277CCAA00] defaultManager];
            v34 = [defaultManager im_randomTemporaryFileURLWithFileName:lastPathComponent];
            pathCopy = [v34 path];
          }

          [v15 _setTransferState:1];
          [v15 _setFetchOptions:options];
          if (pathCopy)
          {
            v35 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy];
            [v15 _setLocalURL:v35];
          }

          if (notificationCopy)
          {
            defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
            [defaultCenter __mainThreadPostNotificationName:@"__kIMDFileTransferAcceptedNotification" object:v15];
          }

          [(IMDFileTransferCenter *)self _updateContextStamp];
          if (v15)
          {
            [(IMDFileTransferCenter *)self _postUpdated:v15];
          }
        }
      }

      else
      {
        v19 = MEMORY[0x277CCACA8];
        [v15 transferState];
        v20 = IMStringFromTransferState();
        [v15 cloudKitSyncState];
        v21 = IMStringFromCKSyncState();
        existsAtLocalPath = [v15 existsAtLocalPath];
        v23 = @"NO";
        if (existsAtLocalPath)
        {
          v23 = @"YES";
        }

        v24 = [v19 stringWithFormat:@"Invalid transfer state. transferState:%@ cloudKitSyncState:%@ existsAtLocalPath:%@", v20, v21, v23];
        v25 = [IMDFileTransferCenter localFileURLRetrievalErrorWithReason:11 description:v24];
        [(IMDFileTransferCenter *)self postHubbleDownloadFailedIfNeededForTransfer:v15 error:v25];
      }
    }

    else
    {
      v26 = MEMORY[0x277CCACA8];
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v15, "totalBytes")}];
      v28 = [v26 stringWithFormat:@"Not enough diskspace to download file transfer with guid: %@, transfer: %@, total bytes: %@", transferCopy, v15, v27];
      v29 = [IMDFileTransferCenter localFileURLRetrievalErrorWithReason:12 description:v28];
      [(IMDFileTransferCenter *)self postHubbleDownloadFailedIfNeededForTransfer:v15 error:v29];
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_handleFileTransfers:(id)transfers autoRename:(BOOL)rename overwrite:(BOOL)overwrite options:(int64_t)options postNotification:(BOOL)notification
{
  notificationCopy = notification;
  v57 = *MEMORY[0x277D85DE8];
  transfersCopy = transfers;
  v42 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v43 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v9 = transfersCopy;
  v10 = [v9 countByEnumeratingWithState:&v49 objects:v56 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v50;
    v41 = v9;
    do
    {
      v13 = 0;
      do
      {
        if (*v50 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v49 + 1) + 8 * v13);
        if ([v14 length])
        {
          v15 = [(NSMutableDictionary *)self->_guidToTransferMap objectForKey:v14];
          v16 = IMLogHandleForCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v55 = v14;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_DEFAULT, "_handleFileTransfers accepted %@", buf, 0xCu);
          }

          [v15 _resetTransferStateIfAttachmentIsMissingAndDownloadable];
          if ([v15 transferState] > 0)
          {
            v17 = MEMORY[0x277CCACA8];
            [v15 transferState];
            localPath = IMStringFromTransferState();
            [v15 cloudKitSyncState];
            v19 = IMStringFromCKSyncState();
            existsAtLocalPath = [v15 existsAtLocalPath];
            v21 = @"NO";
            if (existsAtLocalPath)
            {
              v21 = @"YES";
            }

            v22 = [v17 stringWithFormat:@"Invalid transfer state. transferState: %@ cloudKitSyncState: %@ existsAtLocalPath: %@", localPath, v19, v21];
            v23 = [IMDFileTransferCenter localFileURLRetrievalErrorWithReason:11 description:v22];
            [(IMDFileTransferCenter *)self postHubbleDownloadFailedIfNeededForTransfer:v15 error:v23];

            goto LABEL_13;
          }

          if (IMGetAppBoolForKey())
          {
            [(IMDFileTransferCenter *)self failTransfer:v14 reason:25];
          }

          else
          {
            [(IMDFileTransferCenter *)self _addActiveTransfer:v14];
            v24 = [v9 objectForKeyedSubscript:v14];
            localPath = [v24 localPath];

            if (!localPath)
            {
              filename = [v15 filename];
              lastPathComponent = [filename lastPathComponent];

              defaultManager = [MEMORY[0x277CCAA00] defaultManager];
              v28 = [defaultManager im_randomTemporaryFileURLWithFileName:lastPathComponent];
              localPath = [v28 path];

              v9 = v41;
            }

            [v15 _setTransferState:1];
            [v15 _setFetchOptions:options];
            if (localPath)
            {
              v29 = [MEMORY[0x277CBEBC0] fileURLWithPath:localPath];
              [v15 _setLocalURL:v29];
            }

            if (v15)
            {
              [v43 setObject:v15 forKeyedSubscript:v14];
              [v42 setObject:localPath forKeyedSubscript:v14];
            }

LABEL_13:
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v30 = [v9 countByEnumeratingWithState:&v49 objects:v56 count:16];
      v11 = v30;
    }

    while (v30);
  }

  if ([v43 count])
  {
    if (notificationCopy)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      allValues = [v43 allValues];
      [defaultCenter __mainThreadPostNotificationName:@"__kIMDFileTransferBatchAcceptedNotification" object:allValues];
    }

    [(IMDFileTransferCenter *)self _updateContextStamp];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v33 = v43;
    v34 = [v33 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v46;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v46 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = [v33 objectForKeyedSubscript:*(*(&v45 + 1) + 8 * i)];
          if (v38)
          {
            [(IMDFileTransferCenter *)self _postUpdated:v38];
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v35);
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_handleFileTransferStopped:(id)stopped
{
  stoppedCopy = stopped;
  if ([stoppedCopy length])
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "stopping transfer to guid", v12, 2u);
    }

    guidToTransferMap = [(IMDFileTransferCenter *)self guidToTransferMap];
    v7 = [guidToTransferMap objectForKeyedSubscript:stoppedCopy];

    [v7 _setFetchOptions:0];
    if (([v7 isFinished] & 1) == 0)
    {
      [(IMDFileTransferCenter *)self _removeActiveTransfer:stoppedCopy];
      [(IMDFileTransferCenter *)self _removeTransferringTransfer:v7];
      if ([v7 transferState] || !objc_msgSend(v7, "isIncoming"))
      {
        v8 = 10;
      }

      else if ([v7 error] == -1)
      {
        v8 = 12;
      }

      else
      {
        v8 = 10;
      }

      [v7 _setTransferState:6];
      [v7 _setError:v8];
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter __mainThreadPostNotificationName:@"__kIMDFileTransferStoppedNotification" object:v7];

      [(IMDFileTransferCenter *)self _updateContextStamp];
      [(IMDFileTransferCenter *)self _clearProgressForTransferGUID:stoppedCopy];
      v10 = [IMDFileTransferCenter localFileURLRetrievalErrorWithReason:5 description:@"File transfer stopped locally."];
      [(IMDFileTransferCenter *)self postHubbleDownloadFailedIfNeededForTransfer:v7 error:v10];

      if (v7)
      {
        [(IMDFileTransferCenter *)self _postUpdated:v7];
      }

      v11 = +[IMDAttachmentStore sharedInstance];
      [v11 storeAttachment:v7 associateWithMessageWithGUID:0];
    }
  }
}

- (void)_handleFileTransferRemoved:(id)removed
{
  removedCopy = removed;
  if ([removedCopy length])
  {
    guidToTransferMap = [(IMDFileTransferCenter *)self guidToTransferMap];
    v5 = [guidToTransferMap objectForKeyedSubscript:removedCopy];

    [v5 _setFetchOptions:0];
    if (([v5 isFinished] & 1) == 0 && (objc_msgSend(v5, "transferState") || -[IMDFileTransferCenter _hasActiveTransferWithGUID:](self, "_hasActiveTransferWithGUID:", removedCopy)))
    {
      [(IMDFileTransferCenter *)self _handleFileTransferStopped:removedCopy];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMDFileTransferRemovedNotification" object:v5];

    guidToTransferMap2 = [(IMDFileTransferCenter *)self guidToTransferMap];
    [guidToTransferMap2 setObject:0 forKeyedSubscript:removedCopy];

    [(IMDFileTransferCenter *)self _updateContextStamp];
    if (v5)
    {
      [(IMDFileTransferCenter *)self _postUpdated:v5];
    }

    [(IMDFileTransferCenter *)self _clearProgressForTransferGUID:removedCopy];
    v8 = [IMDFileTransferCenter localFileURLRetrievalErrorWithReason:6 description:@"File transfer removed."];
    [(IMDFileTransferCenter *)self postHubbleDownloadFailedIfNeededForTransfer:v5 error:v8];
  }
}

- (id)_getNewFileTransferForStoredAttachmentPayloadDataWithTransferGUID:(id)d messageGUID:(id)iD
{
  iDCopy = iD;
  v7 = [(IMDFileTransferCenter *)self transferForGUID:d];
  [v7 setMessageGUID:iDCopy];

  [v7 setHideAttachment:1];

  return v7;
}

- (id)guidsForStoredAttachmentBlastDoorPayloadData:(id)data messageGUID:(id)d
{
  v62 = *MEMORY[0x277D85DE8];
  dCopy = d;
  contents = [data contents];
  if ([contents count])
  {
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v42 = contents;
    obj = contents;
    v49 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
    if (v49)
    {
      v46 = *v56;
      v45 = *MEMORY[0x277D19E88];
      v43 = *MEMORY[0x277D1A4D0];
      do
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v56 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v55 + 1) + 8 * i);
          stringGUID = [MEMORY[0x277CCACA8] stringGUID];
          v11 = [stringGUID stringByAppendingPathExtension:v45];

          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          v13 = [defaultManager im_randomTemporaryFileURLWithFileName:v11];

          content = [v9 content];
          type = [content type];

          if (type == 1)
          {
            v27 = IMLogHandleForCategory();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              sub_22B7D2AC0(&v51, v52, v27);
            }

            content2 = [v9 content];
            other = [content2 other];
            data = [other data];

            v50 = 0;
            LOBYTE(content2) = [data writeToURL:v13 options:1 error:&v50];
            v25 = v50;
            if ((content2 & 1) == 0)
            {
              v31 = IMLogHandleForCategory();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v60 = v25;
                _os_log_error_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_ERROR, "MessageService Failed writing attachment to disk on incoming:%@", buf, 0xCu);
              }
            }
          }

          else if (type)
          {
            v25 = 0;
          }

          else
          {
            v16 = IMLogHandleForCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              sub_22B7D2B00(&v53, v54, v16);
            }

            content3 = [v9 content];
            astc = [content3 astc];
            image = [astc image];
            cgImage = [image cgImage];

            content4 = [v9 content];
            astc2 = [content4 astc];
            originalUTIType = [astc2 originalUTIType];
            v24 = CGImageDestinationCreateWithURL(v13, originalUTIType, 1uLL, 0);

            if (v24)
            {
              CGImageDestinationAddImage(v24, cgImage, 0);
              v25 = 0;
              if (!CGImageDestinationFinalize(v24))
              {
                v25 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:v43 code:9 userInfo:0];
                v26 = IMLogHandleForCategory();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v60 = v25;
                  _os_log_error_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_ERROR, "MessageService Failed writing astc encoded image attachment to disk on incoming:%@", buf, 0xCu);
                }
              }

              CFRelease(v24);
            }

            else
            {
              v25 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:v43 code:9 userInfo:0];
              v32 = IMLogHandleForCategory();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v60 = v13;
                _os_log_error_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_ERROR, "MessageService Failed to create CGImageDestination for %@", buf, 0xCu);
              }
            }
          }

          v33 = [(IMDFileTransferCenter *)self createNewOutgoingTransferWithLocalFileURL:v13];
          v34 = [(IMDFileTransferCenter *)self _getNewFileTransferForStoredAttachmentPayloadDataWithTransferGUID:v33 messageGUID:dCopy];
          v35 = +[IMDAttachmentStore sharedInstance];
          [v35 storeAttachment:v34 associateWithMessageWithGUID:dCopy];

          v36 = [(IMDFileTransferCenter *)self transferForGUID:v33];
          [array addObject:v33];
          localPath = [v36 localPath];
          v38 = localPath;
          if (localPath)
          {
            v39 = localPath;
          }

          else
          {
            v39 = &stru_283F23018;
          }

          [array2 addObject:v39];
        }

        v49 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
      }

      while (v49);
    }

    [(IMDFileTransferCenter *)self broadcastTransfersWithGUIDs:array atLocalPaths:array2];
    contents = v42;
  }

  else
  {
    array = MEMORY[0x277CBEBF8];
  }

  v40 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)guidsForStoredAttachmentPayloadData:(id)data messageGUID:(id)d
{
  v43 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dCopy = d;
  if ([dataCopy count])
  {
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v27 = dataCopy;
    obj = dataCopy;
    v34 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v34)
    {
      v30 = *v37;
      v29 = *MEMORY[0x277D19E88];
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v37 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v36 + 1) + 8 * i);
          stringGUID = [MEMORY[0x277CCACA8] stringGUID];
          v10 = [stringGUID stringByAppendingPathExtension:v29];

          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          v12 = [defaultManager im_randomTemporaryFileURLWithFileName:v10];
          path = [v12 path];

          stringByResolvingAndStandardizingPath = [path stringByResolvingAndStandardizingPath];

          v35 = 0;
          LOBYTE(v8) = [v8 writeToFile:stringByResolvingAndStandardizingPath options:1 error:&v35];
          v15 = v35;
          if ((v8 & 1) == 0)
          {
            v16 = IMLogHandleForCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v41 = v15;
              _os_log_error_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_ERROR, "MessageService Failed writing attachment to disk on incoming:%@", buf, 0xCu);
            }
          }

          v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:stringByResolvingAndStandardizingPath isDirectory:0];
          v18 = [(IMDFileTransferCenter *)self createNewOutgoingTransferWithLocalFileURL:v17];
          v19 = [(IMDFileTransferCenter *)self _getNewFileTransferForStoredAttachmentPayloadDataWithTransferGUID:v18 messageGUID:dCopy];
          v20 = +[IMDAttachmentStore sharedInstance];
          [v20 storeAttachment:v19 associateWithMessageWithGUID:dCopy];

          v21 = [(IMDFileTransferCenter *)self transferForGUID:v18];
          [array addObject:v18];
          localPath = [v21 localPath];
          v23 = localPath;
          if (localPath)
          {
            v24 = localPath;
          }

          else
          {
            v24 = &stru_283F23018;
          }

          [array2 addObject:v24];
        }

        v34 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v34);
    }

    [(IMDFileTransferCenter *)self broadcastTransfersWithGUIDs:array atLocalPaths:array2];
    dataCopy = v27;
  }

  else
  {
    array = MEMORY[0x277CBEBF8];
  }

  v25 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)guidsForStoredAttachmentPayloadDataURLs:(id)ls messageGUID:(id)d
{
  v30 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  dCopy = d;
  if ([lsCopy count])
  {
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v22 = lsCopy;
    obj = lsCopy;
    v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = [(IMDFileTransferCenter *)self createNewOutgoingTransferWithLocalFileURL:*(*(&v25 + 1) + 8 * i)];
          v14 = [(IMDFileTransferCenter *)self _getNewFileTransferForStoredAttachmentPayloadDataWithTransferGUID:v13 messageGUID:dCopy];
          v15 = +[IMDAttachmentStore sharedInstance];
          [v15 storeAttachment:v14 associateWithMessageWithGUID:dCopy];

          v16 = [(IMDFileTransferCenter *)self transferForGUID:v13];
          [array addObject:v13];
          localPath = [v16 localPath];
          v18 = localPath;
          if (localPath)
          {
            v19 = localPath;
          }

          else
          {
            v19 = &stru_283F23018;
          }

          [array2 addObject:v19];
        }

        v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v10);
    }

    [(IMDFileTransferCenter *)self broadcastTransfersWithGUIDs:array atLocalPaths:array2];
    lsCopy = v22;
  }

  else
  {
    array = MEMORY[0x277CBEBF8];
  }

  v20 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)retrieveLocalFileURLForFileTransferWithGUIDs:(id)ds options:(int64_t)options completion:(id)completion
{
  v96[2] = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  completionCopy = completion;
  v70 = completionCopy;
  if (![dsCopy count])
  {
    v55 = IMLogHandleForCategory();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D2B40(v55);
    }

    if (completionCopy)
    {
      v56 = MEMORY[0x277CCA9B8];
      v57 = *MEMORY[0x277D19E60];
      v95[0] = *MEMORY[0x277CCA450];
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v59 = [mainBundle localizedStringForKey:@"File transfer local file urls retrieval operation was unsuccessful." value:&stru_283F23018 table:0];
      v96[0] = v59;
      v95[1] = *MEMORY[0x277CCA470];
      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      v61 = [mainBundle2 localizedStringForKey:@"The given GUIDs was empty." value:&stru_283F23018 table:0];
      v96[1] = v61;
      v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:2];
      v63 = [v56 errorWithDomain:v57 code:24 userInfo:v62];

      completionCopy = v70;
      (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0, 0, v63);
    }

    goto LABEL_60;
  }

  obj = objc_opt_new();
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v65 = dsCopy;
  v9 = dsCopy;
  v10 = [v9 countByEnumeratingWithState:&v81 objects:v94 count:16];
  if (!v10)
  {
    goto LABEL_31;
  }

  v11 = v10;
  v74 = *v82;
  v68 = *MEMORY[0x277D19E60];
  v67 = *MEMORY[0x277CCA450];
  v66 = *MEMORY[0x277CCA470];
  selfCopy = self;
  do
  {
    v12 = 0;
    v71 = v11;
    do
    {
      if (*v82 != v74)
      {
        objc_enumerationMutation(v9);
      }

      v13 = *(*(&v81 + 1) + 8 * v12);
      v14 = [(IMDFileTransferCenter *)self transferForGUID:v13, v65];
      if ([v14 existsAtLocalPath])
      {
        v15 = IMLogHandleForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          localPath = [v14 localPath];
          *buf = 136446722;
          v89 = "[IMDFileTransferCenter retrieveLocalFileURLForFileTransferWithGUIDs:options:completion:]";
          v90 = 2112;
          v91 = v13;
          v92 = 2112;
          v93 = localPath;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s File transfer %@ exists at local path %@, no need to move further", buf, 0x20u);
        }

        if (completionCopy)
        {
          localPath2 = [v14 localPath];
          createAndPersistLivePhotoBundleIfNecessary = [v14 createAndPersistLivePhotoBundleIfNecessary];
          (*(completionCopy + 2))(completionCopy, 1, v13, 0, localPath2, createAndPersistLivePhotoBundleIfNecessary, 0);

LABEL_28:
        }
      }

      else if ([v14 isInThumbnailState])
      {
        v19 = IMLogHandleForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v89 = "[IMDFileTransferCenter retrieveLocalFileURLForFileTransferWithGUIDs:options:completion:]";
          v90 = 2112;
          v91 = v13;
          _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s File transfer %@ is in thumbnail state, not retrieving", buf, 0x16u);
        }

        if (completionCopy)
        {
          v20 = MEMORY[0x277CCA9B8];
          v86[0] = v67;
          mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
          v22 = [mainBundle3 localizedStringForKey:@"File transfer local file url retrieval operation was unsuccessful." value:&stru_283F23018 table:0];
          v86[1] = v66;
          v87[0] = v22;
          [MEMORY[0x277CCA8D8] mainBundle];
          v24 = v23 = v9;
          v25 = [v24 localizedStringForKey:@"The given GUID references an attachment which is in thumbnail state. You don't want to analyze this value:Skip and retry later table:{user did not tap to downloaded.", &stru_283F23018, 0}];
          v87[1] = v25;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:2];
          localPath2 = [v20 errorWithDomain:v68 code:24 userInfo:v26];

          v11 = v71;
          v9 = v23;
          self = selfCopy;

          completionCopy = v70;
          (*(completionCopy + 2))(completionCopy, 0, v13, 0, 0, 0, localPath2);
          goto LABEL_28;
        }
      }

      else
      {
        v27 = IMLogHandleForCategory();
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
        if (v14)
        {
          if (v28)
          {
            localPath3 = [v14 localPath];
            *buf = 136446722;
            v89 = "[IMDFileTransferCenter retrieveLocalFileURLForFileTransferWithGUIDs:options:completion:]";
            v90 = 2112;
            v91 = v13;
            v92 = 2112;
            v93 = localPath3;
            _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_DEFAULT, "%{public}s File transfer %@ does not exist at local path (%@) and is not in thumbnail state, retrieving", buf, 0x20u);

            v11 = v71;
          }
        }

        else if (v28)
        {
          *buf = 136446466;
          v89 = "[IMDFileTransferCenter retrieveLocalFileURLForFileTransferWithGUIDs:options:completion:]";
          v90 = 2112;
          v91 = v13;
          _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_DEFAULT, "%{public}s File transfer guid %@ does not exist or is not cached, retrieving", buf, 0x16u);
        }

        [obj addObject:v13];
        if (completionCopy)
        {
          localFileURLRetrievalWithGuidCompletionHandlers = self->_localFileURLRetrievalWithGuidCompletionHandlers;
          if (!localFileURLRetrievalWithGuidCompletionHandlers)
          {
            v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v32 = self->_localFileURLRetrievalWithGuidCompletionHandlers;
            self->_localFileURLRetrievalWithGuidCompletionHandlers = v31;

            localFileURLRetrievalWithGuidCompletionHandlers = self->_localFileURLRetrievalWithGuidCompletionHandlers;
          }

          v33 = [(NSMutableDictionary *)localFileURLRetrievalWithGuidCompletionHandlers objectForKeyedSubscript:v13];

          if (!v33)
          {
            array = [MEMORY[0x277CBEB18] array];
            [(NSMutableDictionary *)self->_localFileURLRetrievalWithGuidCompletionHandlers setObject:array forKeyedSubscript:v13];
          }

          localPath2 = [(NSMutableDictionary *)self->_localFileURLRetrievalWithGuidCompletionHandlers objectForKeyedSubscript:v13];
          v35 = _Block_copy(completionCopy);
          [localPath2 addObject:v35];

          v11 = v71;
          goto LABEL_28;
        }
      }

      ++v12;
    }

    while (v11 != v12);
    v11 = [v9 countByEnumeratingWithState:&v81 objects:v94 count:16];
  }

  while (v11);
LABEL_31:

  if ([obj count])
  {
    v36 = IMLogHandleForCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [obj count];
      *buf = 136446722;
      v89 = "[IMDFileTransferCenter retrieveLocalFileURLForFileTransferWithGUIDs:options:completion:]";
      v90 = 2048;
      v91 = v37;
      v92 = 2112;
      v93 = obj;
      _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_DEFAULT, "%{public}s Retrieving %llu file transfers (%@)", buf, 0x20u);
    }

    v38 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(obj, "count")}];
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    obj = obj;
    v39 = [obj countByEnumeratingWithState:&v77 objects:v85 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v78;
      do
      {
        v42 = 0;
        do
        {
          if (*v78 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v43 = *(*(&v77 + 1) + 8 * v42);
          v75 = 0;
          v76 = 0;
          v44 = [(IMDFileTransferCenter *)self _retrieveLocalFileURLForFileTransferWithGUID:v43 options:options outTransfer:&v76 outError:&v75, v65];
          v45 = v76;
          v46 = v75;
          if (v46)
          {
            selfCopy3 = self;
            v48 = v45;
            v49 = v43;
            v50 = v46;
            v51 = v44;
LABEL_43:
            [(IMDFileTransferCenter *)selfCopy3 _hubbleTransferCompleted:v48 withGUID:v49 error:v50 suggestedRetryGUID:v51];
            goto LABEL_44;
          }

          if ([v45 existsAtLocalPath])
          {
            selfCopy3 = self;
            v48 = v45;
            v49 = v43;
            v50 = 0;
            v51 = 0;
            goto LABEL_43;
          }

          if (v45)
          {
            [v38 setObject:v45 forKeyedSubscript:v43];
          }

LABEL_44:

          ++v42;
        }

        while (v40 != v42);
        v52 = [obj countByEnumeratingWithState:&v77 objects:v85 count:16];
        v40 = v52;
      }

      while (v52);
    }

    dsCopy = v65;
    completionCopy = v70;
    if ([v38 count])
    {
      [(IMDFileTransferCenter *)self _handleFileTransfers:v38 autoRename:1 overwrite:0 options:options postNotification:1];
      v53 = IMLogHandleForCategory();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        allKeys = [v38 allKeys];
        *buf = 136446466;
        v89 = "[IMDFileTransferCenter retrieveLocalFileURLForFileTransferWithGUIDs:options:completion:]";
        v90 = 2112;
        v91 = allKeys;
        _os_log_impl(&dword_22B4CC000, v53, OS_LOG_TYPE_DEFAULT, "%{public}s Successfully started explicit download for local file url retrieval of transfer with GUIDs %@", buf, 0x16u);
      }
    }
  }

  else
  {
    dsCopy = v65;
  }

LABEL_60:
  v64 = *MEMORY[0x277D85DE8];
}

- (void)_hubbleTransferCompleted:(id)completed withGUID:(id)d error:(id)error suggestedRetryGUID:(id)iD
{
  v60 = *MEMORY[0x277D85DE8];
  completedCopy = completed;
  dCopy = d;
  errorCopy = error;
  iDCopy = iD;
  v39 = errorCopy;
  v13 = IMLogHandleForCategory();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (errorCopy)
  {
    if (v14)
    {
      *buf = 136446722;
      v55 = "[IMDFileTransferCenter _hubbleTransferCompleted:withGUID:error:suggestedRetryGUID:]";
      v56 = 2112;
      v57 = dCopy;
      v58 = 2112;
      v59 = errorCopy;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s Failed to retrieve local file URL for %@: %@", buf, 0x20u);
    }
  }

  else if (v14)
  {
    localPath = [completedCopy localPath];
    *buf = 136446722;
    v55 = "[IMDFileTransferCenter _hubbleTransferCompleted:withGUID:error:suggestedRetryGUID:]";
    v56 = 2112;
    v57 = dCopy;
    v58 = 2112;
    v59 = localPath;
    _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s Successfully retrieved local file URL for %@ at path %@", buf, 0x20u);
  }

  v16 = [(NSMutableDictionary *)self->_localFileURLRetrievalWithGuidCompletionHandlers objectForKeyedSubscript:dCopy];
  [(NSMutableDictionary *)self->_localFileURLRetrievalWithGuidCompletionHandlers removeObjectForKey:dCopy];
  existsAtLocalPath = [completedCopy existsAtLocalPath];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v16;
  v18 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v18)
  {
    v19 = (errorCopy == 0) & existsAtLocalPath;
    v20 = *v42;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v42 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v41 + 1) + 8 * i);
        if (v19)
        {
          localPath2 = [completedCopy localPath];
          createAndPersistLivePhotoBundleIfNecessary = [completedCopy createAndPersistLivePhotoBundleIfNecessary];
          (*(v22 + 16))(v22, 1, dCopy, 0, localPath2, createAndPersistLivePhotoBundleIfNecessary, 0);
        }

        else
        {
          (*(v22 + 16))(*(*(&v41 + 1) + 8 * i), 0, dCopy, iDCopy, 0, 0, v39);
        }
      }

      v18 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v18);
  }

  existsAtLocalPath2 = [completedCopy existsAtLocalPath];
  v26 = IMLogHandleForCategory();
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
  if (((v39 == 0) & existsAtLocalPath2) == 0)
  {
    if (v27)
    {
      *buf = 138412290;
      v55 = dCopy;
      _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_DEFAULT, "Sending completion notification for explicit download of transfer with guid %@", buf, 0xCu);
    }

    v47 = @"__kIMDFileTransferExplicitDownloadCompletedSuccessKey";
    v34 = MEMORY[0x277CBEC28];
    v48 = MEMORY[0x277CBEC28];
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    localURL2 = v35;
    if (!v39)
    {
      v30 = v35;
      goto LABEL_27;
    }

    v45[0] = @"__kIMDFileTransferExplicitDownloadCompletedSuccessKey";
    v45[1] = @"__kIMDFileTransferExplicitDownloadCompletedErrorKey";
    v46[0] = v34;
    v46[1] = v39;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
    goto LABEL_25;
  }

  if (v27)
  {
    guid = [completedCopy guid];
    *buf = 138412290;
    v55 = guid;
    _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_DEFAULT, "Sending completion notification for explicit download of transfer: %@", buf, 0xCu);
  }

  v51 = @"__kIMDFileTransferExplicitDownloadCompletedSuccessKey";
  v29 = MEMORY[0x277CBEC38];
  v52 = MEMORY[0x277CBEC38];
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  localURL = [completedCopy localURL];

  if (localURL)
  {
    v49[0] = @"__kIMDFileTransferExplicitDownloadCompletedSuccessKey";
    v49[1] = @"__kIMDFileTransferExplicitDownloadCompletedFileURLKey";
    v50[0] = v29;
    localURL2 = [completedCopy localURL];
    v50[1] = localURL2;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];

    v30 = v33;
LABEL_25:
  }

LABEL_27:
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"__kIMDFileTransferExplicitDownloadCompletedNotification" object:completedCopy userInfo:v30];

  v37 = *MEMORY[0x277D85DE8];
}

- (id)_messageForFileTransferWithGUID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v4 = IMMessageGuidFromIMFileTransferGuid();
  v5 = [v4 length];
  v6 = IMLogHandleForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v11 = 136446722;
      v12 = "[IMDFileTransferCenter _messageForFileTransferWithGUID:]";
      v13 = 2112;
      v14 = dCopy;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s Decomposed attachment guid %@ to messageGUID: %@", &v11, 0x20u);
    }

    v6 = +[IMDMessageStore sharedInstance];
    v8 = [v6 messageWithGUID:v4 registerAttachments:0];
  }

  else
  {
    if (v7)
    {
      v11 = 136446466;
      v12 = "[IMDFileTransferCenter _messageForFileTransferWithGUID:]";
      v13 = 2112;
      v14 = dCopy;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s Failed to decompose attachment GUID %@, to get message GUID", &v11, 0x16u);
    }

    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)_isFileTransferWithGUIDFromKnownSender:(id)sender
{
  v3 = [(IMDFileTransferCenter *)self _messageForFileTransferWithGUID:sender];
  v4 = v3;
  if (v3)
  {
    if ([v3 isFromMe])
    {
      v5 = 1;
    }

    else
    {
      sender = [v4 sender];
      if ([sender length])
      {
        v7 = +[IMDChatRegistry sharedInstance];
        v5 = [v7 _hasSavedContactCardForHandle:sender];
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_findTransferGUIDMatchingSpotlightDonatedSpeculativeTransferGUID:(id)d
{
  dCopy = d;
  v5 = [(IMDFileTransferCenter *)self _messageForFileTransferWithGUID:dCopy];
  v6 = [v5 findTransferGUIDMatchingSpotlightDonatedSpeculativeTransferGUID:dCopy];

  return v6;
}

- (id)_retrieveLocalFileURLForFileTransferWithGUID:(id)d options:(int64_t)options outTransfer:(id *)transfer outError:(id *)error
{
  optionsCopy = options;
  v46 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([dCopy length])
  {
    v11 = +[IMDAttachmentStore sharedInstance];
    v12 = [v11 attachmentWithGUID:dCopy];

    if (v12)
    {
      v13 = dCopy;
      if (!transfer)
      {
LABEL_5:
        if ([v12 existsAtLocalPath])
        {
          localPath = [v12 localPath];
          v16 = IMLogHandleForCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446722;
            v41 = "[IMDFileTransferCenter _retrieveLocalFileURLForFileTransferWithGUID:options:outTransfer:outError:]";
            v42 = 2112;
            v43 = v13;
            v44 = 2112;
            v45 = localPath;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s Transfer with guid %@ already exists on disk at path %@", buf, 0x20u);
          }

          dCopy = v13;
LABEL_32:
          v20 = dCopy;
          goto LABEL_45;
        }

        if ([v12 isInThumbnailState])
        {
          v23 = IMLogHandleForCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v41 = "[IMDFileTransferCenter _retrieveLocalFileURLForFileTransferWithGUID:options:outTransfer:outError:]";
            v42 = 2112;
            v43 = v13;
            _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s Transfer with guid %@ is in thumbnail state, skipping retrieve", buf, 0x16u);
          }

          v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"File transfer associated with GUID %@ was not auto-downloaded, we only have a thumbnail.", v13];
          v25 = 11;
LABEL_29:
          v28 = [IMDFileTransferCenter localFileURLRetrievalErrorWithReason:v25 description:v24];

          if (error)
          {
            v29 = v28;
            *error = v28;
          }

          dCopy = v13;

          goto LABEL_32;
        }

        v26 = IMLogHandleForCategory();
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
        if ((optionsCopy & 1) == 0)
        {
          if (v27)
          {
            *buf = 136446722;
            v41 = "[IMDFileTransferCenter _retrieveLocalFileURLForFileTransferWithGUID:options:outTransfer:outError:]";
            v42 = 2112;
            v43 = v13;
            v44 = 2112;
            v45 = @"NO";
            _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s File transfer associated with GUID %@ needs downloading but allowDownload was %@, failing local file url retrieval", buf, 0x20u);
          }

          v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"File transfer associated with GUID %@ needs downloading but allowDownload was %@.", v13, @"NO"];
          v25 = 10;
          goto LABEL_29;
        }

        if (v27)
        {
          guid = [v12 guid];
          *buf = 136446466;
          v41 = "[IMDFileTransferCenter _retrieveLocalFileURLForFileTransferWithGUID:options:outTransfer:outError:]";
          v42 = 2112;
          v43 = guid;
          _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s Transfer %@ does not already exist on disk. Starting explicit download for local file url retrieval.", buf, 0x16u);
        }

        guid2 = [v12 guid];
        v36 = [(IMDFileTransferCenter *)self transferForGUID:guid2];

        if (!v36)
        {
          guid3 = [v12 guid];
          [(IMDFileTransferCenter *)self _addTransfer:v12 forGUID:guid3 shouldNotify:0];
        }

        [(IMDFileTransferCenter *)self addHubbleRequestedTransfer:v12];
        v33 = v13;
        goto LABEL_44;
      }

LABEL_4:
      v14 = v12;
      *transfer = v12;
      goto LABEL_5;
    }

    if ((IMFileTransferGUIDIsTemporary() & 1) == 0)
    {
      v13 = [(IMDFileTransferCenter *)self _findTransferGUIDMatchingSpotlightDonatedSpeculativeTransferGUID:dCopy];
      if ([v13 length])
      {
        v21 = +[IMDAttachmentStore sharedInstance];
        v12 = [v21 attachmentWithGUID:v13];

        if (v12)
        {
          v22 = IMLogHandleForCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v41 = v13;
            v42 = 2112;
            v43 = dCopy;
            _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_DEFAULT, "Found a file transfer %@ that matches donated guid %@", buf, 0x16u);
          }

          if (!transfer)
          {
            goto LABEL_5;
          }

          goto LABEL_4;
        }
      }
    }

    v30 = IMLogHandleForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v41 = "[IMDFileTransferCenter _retrieveLocalFileURLForFileTransferWithGUID:options:outTransfer:outError:]";
      v42 = 2112;
      v43 = dCopy;
      _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_DEFAULT, "%{public}s No file transfer associated with GUID %@, failing local file url retrieval", buf, 0x16u);
    }

    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"There was no file transfer associated with GUID %@.", dCopy];
    v12 = [IMDFileTransferCenter localFileURLRetrievalErrorWithReason:9 description:dCopy];

    if (error)
    {
      v32 = v12;
      *error = v12;
    }

    v33 = dCopy;
LABEL_44:
    dCopy = v33;
    v20 = v33;
    goto LABEL_45;
  }

  v17 = IMLogHandleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v41 = "[IMDFileTransferCenter _retrieveLocalFileURLForFileTransferWithGUID:options:outTransfer:outError:]";
    _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s Empty guid passed, failing local file url retrieval", buf, 0xCu);
  }

  v18 = [IMDFileTransferCenter localFileURLRetrievalErrorWithReason:8 description:@"The given transfer GUID was empty."];
  v12 = v18;
  if (error)
  {
    v19 = v18;
    v20 = 0;
    *error = v12;
  }

  else
  {
    v20 = 0;
  }

LABEL_45:

  v38 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)removeFinishedTransfers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  guidToTransferMap = [(IMDFileTransferCenter *)self guidToTransferMap];
  allValues = [guidToTransferMap allValues];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B57AEF0;
  v8[3] = &unk_278704E30;
  v9 = v3;
  v6 = v3;
  [allValues enumerateObjectsUsingBlock:v8];

  guidToTransferMap2 = [(IMDFileTransferCenter *)self guidToTransferMap];
  [guidToTransferMap2 removeObjectsForKeys:v6];
}

- (BOOL)_shouldDownloadAssetForTransfer:(id)transfer forMessageItem:(id)item
{
  transferCopy = transfer;
  if ([item isAudioMessage] & 1) != 0 || (objc_msgSend(transferCopy, "isSticker") & 1) != 0 || (objc_msgSend(transferCopy, "hideAttachment") & 1) != 0 || (objc_msgSend(transferCopy, "isLocation"))
  {
    isContact = 1;
  }

  else
  {
    isContact = [transferCopy isContact];
  }

  return isContact;
}

- (id)updateTransfersWithCKRecord:(id)record recordWasFetched:(BOOL)fetched downloadAsset:(BOOL *)asset
{
  fetchedCopy = fetched;
  v67 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  if (recordCopy)
  {
    assetCopy = asset;
    v58 = [MEMORY[0x277D1A9C0] transferGUIDOfRecord:recordCopy];
    v9 = IMMessageGuidFromIMFileTransferGuid();
    v10 = [MEMORY[0x277D1A9C0] attachmentRecordHasAsset:recordCopy];
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = @"NO";
        *buf = 138412802;
        v60 = v9;
        v61 = 2112;
        if (v10)
        {
          v12 = @"YES";
        }

        v62 = v58;
        v63 = 2112;
        v64 = v12;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Found message GUId %@ from IMFileTransferGUID %@ so that we can upadte the transfer. Record hasAsset %@", buf, 0x20u);
      }
    }

    _messageStoreSharedInstance = [(IMDFileTransferCenter *)self _messageStoreSharedInstance];
    v14 = [_messageStoreSharedInstance messageWithGUID:v9];

    _messageStoreSharedInstance2 = [(IMDFileTransferCenter *)self _messageStoreSharedInstance];
    v57 = [_messageStoreSharedInstance2 itemWithGUID:v9];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v57 actionIsGroupPhoto])
    {
      v16 = v57;
    }

    else
    {
      v16 = 0;
    }

    v56 = v16;
    v17 = (v14 | v16) != 0;
    _attachmentStoreSharedInstance = [(IMDFileTransferCenter *)self _attachmentStoreSharedInstance];
    [_attachmentStoreSharedInstance updateTemporaryTransferGUIDsOnMessageIfNeeded:v14];

    _attachmentStoreSharedInstance2 = [(IMDFileTransferCenter *)self _attachmentStoreSharedInstance];
    v20 = [_attachmentStoreSharedInstance2 attachmentWithGUID:v58];

    if (!v20)
    {
      if (!fetchedCopy && IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v60 = v58;
          _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "IMDFileTransferCenter - Update from CKRecord found no existing attachment for %@, but was on the write path", buf, 0xCu);
        }
      }

      v25 = [objc_alloc(MEMORY[0x277D1A9C0]) initWithCKRecord:recordCopy writeAssetToDisk:1];
      copyEncodedSystemFields = v25;
      if (v10)
      {
        v27 = 5;
      }

      else
      {
        v27 = 0;
      }

      [(__CFString *)v25 _setTransferState:v27];
      [(__CFString *)copyEncodedSystemFields setCloudKitSyncState:1];
      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = @"NO";
          *buf = 138412802;
          v60 = copyEncodedSystemFields;
          v61 = 2112;
          if (v10)
          {
            v29 = @"YES";
          }

          v62 = v9;
          v63 = 2112;
          v64 = v29;
          _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Fetched from CK. Created new transfer %@ from CKRecord. Associating with message guid %@ hasAsset: %@", buf, 0x20u);
        }
      }

      if (v17)
      {
        _attachmentStoreSharedInstance3 = [(IMDFileTransferCenter *)self _attachmentStoreSharedInstance];
        [_attachmentStoreSharedInstance3 storeAttachment:copyEncodedSystemFields associateWithMessageWithGUID:v9];

        [(IMDFileTransferCenter *)self _updateAndPostCachedTransfer:copyEncodedSystemFields];
        v31 = [(IMDFileTransferCenter *)self _shouldDownloadAssetForTransfer:copyEncodedSystemFields forMessageItem:v14]|| v56 != 0;
        if (IMOSLoggingEnabled())
        {
          v32 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v33 = @"YES";
            if (assetCopy)
            {
              v34 = @"YES";
            }

            else
            {
              v34 = @"NO";
            }

            if (v31)
            {
              v35 = @"YES";
            }

            else
            {
              v35 = @"NO";
            }

            *buf = 138412802;
            v60 = v34;
            v61 = 2112;
            v62 = v35;
            if (!v10)
            {
              v33 = @"NO";
            }

            v63 = 2112;
            v64 = v33;
            _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Do we want to download the transfer later? downloadAsset: %@, shouldDownloadAssetForTransfer: %@, hasAsset: %@", buf, 0x20u);
          }
        }

        if (!((assetCopy == 0 || (v31 & 1) == 0) | v10 & 1))
        {
          guid = [(__CFString *)copyEncodedSystemFields guid];
          v37 = [(IMDFileTransferCenter *)self transferForGUID:guid];

          if (IMOSLoggingEnabled())
          {
            v38 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              *buf = 138413058;
              v60 = copyEncodedSystemFields;
              v61 = 2112;
              v62 = v37;
              v63 = 2112;
              v64 = v14;
              v65 = 2112;
              v66 = v56;
              _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Going to auto downloading asset at the end of batch fetch for transfer: %@ addedTransfer %@ for messageItem: %@ groupPhotoUpdate: %@", buf, 0x2Au);
            }
          }

          *assetCopy = 1;
          if (!v37)
          {
            guid2 = [(__CFString *)copyEncodedSystemFields guid];
            [(IMDFileTransferCenter *)self addTransfer:copyEncodedSystemFields forGUID:guid2];
          }
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v51 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v60 = v58;
            v61 = 2112;
            v62 = v9;
            _os_log_impl(&dword_22B4CC000, v51, OS_LOG_TYPE_INFO, "Storing attachment %@ with no associate-able message %@", buf, 0x16u);
          }
        }

        _attachmentStoreSharedInstance4 = [(IMDFileTransferCenter *)self _attachmentStoreSharedInstance];
        [_attachmentStoreSharedInstance4 storeAttachment:copyEncodedSystemFields associateWithMessageWithGUID:0];

        [(IMDFileTransferCenter *)self _updateAndPostCachedTransfer:0];
      }

      guid3 = [(__CFString *)copyEncodedSystemFields guid];
      goto LABEL_87;
    }

    if (fetchedCopy)
    {
      if (v10)
      {
        if ([(__CFString *)v20 wantsAssetFromRecord:recordCopy])
        {
          if (IMOSLoggingEnabled())
          {
            v21 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v60 = v58;
              _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Taking asset from CKRecord for %@", buf, 0xCu);
            }
          }

          [(__CFString *)v20 _setTransferState:5];
          [(__CFString *)v20 moveAssetFromRecord:recordCopy];
        }

        else
        {
          v47 = [(__CFString *)v20 hasPreferredAssetOverRecord:recordCopy];
          v48 = IMOSLoggingEnabled();
          if (v47)
          {
            if (v48)
            {
              v49 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v60 = v58;
                _os_log_impl(&dword_22B4CC000, v49, OS_LOG_TYPE_INFO, "Setting local record to upload asset for %@", buf, 0xCu);
              }
            }

            v40 = 0;
            goto LABEL_64;
          }

          if (v48)
          {
            v50 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v60 = v58;
              _os_log_impl(&dword_22B4CC000, v50, OS_LOG_TYPE_INFO, "Keeping local asset and sync state for %@", buf, 0xCu);
            }
          }
        }
      }

      else
      {
        [(__CFString *)v20 _setTransferState:-1];
      }

      v40 = 1;
    }

    else
    {
      v40 = 4;
    }

LABEL_64:
    [(__CFString *)v20 setCloudKitSyncState:v40];
    recordID = [recordCopy recordID];
    recordName = [recordID recordName];
    [(__CFString *)v20 setCloudKitRecordID:recordName];

    copyEncodedSystemFields = [recordCopy copyEncodedSystemFields];
    [(__CFString *)v20 setCloudKitServerChangeTokenBlob:copyEncodedSystemFields];
    if (IMOSLoggingEnabled())
    {
      v43 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = @"NO";
        *buf = 138412802;
        if (fetchedCopy)
        {
          v44 = @"YES";
        }

        v60 = v44;
        v61 = 2112;
        v62 = v20;
        v63 = 2112;
        v64 = v9;
        _os_log_impl(&dword_22B4CC000, v43, OS_LOG_TYPE_INFO, "Fetched from CK %@. Updating existing transfer %@ for message GUID %@", buf, 0x20u);
      }
    }

    _attachmentStoreSharedInstance5 = [(IMDFileTransferCenter *)self _attachmentStoreSharedInstance];
    [_attachmentStoreSharedInstance5 storeAttachment:v20 associateWithMessageWithGUID:v9];

    [(IMDFileTransferCenter *)self _updateAndPostCachedTransfer:v20];
    guid3 = [(__CFString *)v20 guid];
LABEL_87:
    v23 = guid3;

    goto LABEL_88;
  }

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Nil CKRecord", buf, 2u);
    }
  }

  v23 = 0;
LABEL_88:

  v53 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)markTransferAsNotSyncedSuccessfully:(id)successfully
{
  v13 = *MEMORY[0x277D85DE8];
  successfullyCopy = successfully;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = successfullyCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "markTransferAsNotSyncedSuccessfullyUsingCKRecord transferGUID %@", &v11, 0xCu);
    }
  }

  _attachmentStoreSharedInstance = [(IMDFileTransferCenter *)self _attachmentStoreSharedInstance];
  v7 = [_attachmentStoreSharedInstance attachmentWithGUID:successfullyCopy];

  if (v7)
  {
    [v7 setCloudKitSyncState:2];
    _attachmentStoreSharedInstance2 = [(IMDFileTransferCenter *)self _attachmentStoreSharedInstance];
    [_attachmentStoreSharedInstance2 updateAttachment:v7];
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = successfullyCopy;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Could not find transferGUID %@ to mark as not synced successfully", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)markTransferAsNotSuccessfullyDownloadedFromCloud:(id)cloud
{
  v11 = *MEMORY[0x277D85DE8];
  cloudCopy = cloud;
  if (cloudCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        guid = [cloudCopy guid];
        v9 = 138412290;
        v10 = guid;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "markTransferAsNotSyncSuccessfullyDownloadedFromCloud transfer %@", &v9, 0xCu);
      }
    }

    [cloudCopy setCloudKitSyncState:5];
    _attachmentStoreSharedInstance = [(IMDFileTransferCenter *)self _attachmentStoreSharedInstance];
    [_attachmentStoreSharedInstance updateAttachment:cloudCopy];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)resetSyncStateForRecord:(id)record toState:(int64_t)state
{
  v18 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v7 = [MEMORY[0x277D1A9C0] transferGUIDOfRecord:recordCopy];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = 138412546;
      v15 = v7;
      v16 = 2048;
      stateCopy = state;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "resetSyncStateForRecord transfer %@ toNewState:%ld", &v14, 0x16u);
    }
  }

  _attachmentStoreSharedInstance = [(IMDFileTransferCenter *)self _attachmentStoreSharedInstance];
  v10 = [_attachmentStoreSharedInstance attachmentWithGUID:v7];

  if (v10)
  {
    [v10 setCloudKitServerChangeTokenBlob:0];
    [v10 setCloudKitSyncState:state];
    [v10 setCloudKitRecordID:0];
    _attachmentStoreSharedInstance2 = [(IMDFileTransferCenter *)self _attachmentStoreSharedInstance];
    [_attachmentStoreSharedInstance2 updateAttachment:v10];
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 138412546;
      v15 = v7;
      v16 = 2112;
      stateCopy = recordCopy;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Tried to clear the sync state for a transfer we don't have on disk transfer: %@ record: %@", &v14, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)populateLocalURLsForTransfer:(id)transfer fromCKRecord:(id)record
{
  v70[1] = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  recordCopy = record;
  v7 = [recordCopy _assetForKey:@"lqa"];
  v8 = v7;
  if (v7)
  {
    fileURL = [v7 fileURL];
    v55 = fileURL != 0;
    if (fileURL)
    {
      [transferCopy _setLocalURL:fileURL];
      path = [fileURL path];
      [transferCopy _setLocalPath:path];

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v69 = *MEMORY[0x277CCA1B0];
      v70[0] = *MEMORY[0x277CCA1A0];
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:&v69 count:1];
      path2 = [fileURL path];
      v58 = 0;
      v14 = [defaultManager setAttributes:v12 ofItemAtPath:path2 error:&v58];
      v15 = v58;

      if ((v14 & 1) == 0 && IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          path3 = [fileURL path];
          *buf = 138412546;
          v62 = path3;
          v63 = 2112;
          v64 = v15;
          _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Failed making file class C: %@ with error %@", buf, 0x16u);
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [recordCopy _stringForKey:@"aguid"];
        *buf = 138412290;
        v62 = v19;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Couldn't get local asset URL from CKRecord: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v55 = 0;
  }

  v20 = [recordCopy _assetForKey:@"avid"];
  if (v20)
  {
    v51 = [MEMORY[0x277D1A9C0] transferMetaDataFromRecord:recordCopy];
    v21 = JWDecodeDictionary();
    v22 = [v21 objectForKeyedSubscript:@"pathc"];
    im_lastPathComponent = [v22 im_lastPathComponent];

    mimeType = [transferCopy mimeType];
    type = [transferCopy type];
    guid = [transferCopy guid];
    v24 = IMDCopyAttachmentPersistentPath();
    if ([v24 length])
    {
      v25 = [v21 objectForKeyedSubscript:@"pathc"];
      im_lastPathComponent2 = [v25 im_lastPathComponent];

      if ([im_lastPathComponent2 length])
      {
        fileURL2 = [v20 fileURL];
        path4 = [fileURL2 path];

        if ([path4 length])
        {
          stringByDeletingLastPathComponent = [v24 stringByDeletingLastPathComponent];
          v48 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:im_lastPathComponent2];

          stringByDeletingLastPathComponent2 = [v48 stringByDeletingLastPathComponent];
          IMSharedHelperEnsureDirectoryExistsAtPath();

          defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
          v57 = 0;
          v30 = [defaultManager2 moveItemAtPath:path4 toPath:v48 error:&v57];
          v47 = v57;

          v31 = IMOSLoggingEnabled();
          if (v30)
          {
            if (v31)
            {
              v32 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v62 = guid;
                v63 = 2112;
                v64 = v48;
                _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Stored aux video for transfer %@, finalAssetPath %@", buf, 0x16u);
              }
            }

            defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
            v59 = *MEMORY[0x277CCA1B0];
            v60 = *MEMORY[0x277CCA1A0];
            v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
            v56 = 0;
            v35 = [defaultManager3 setAttributes:v34 ofItemAtPath:v48 error:&v56];
            v45 = v56;

            if ((v35 & 1) == 0 && IMOSLoggingEnabled())
            {
              v36 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v62 = v48;
                v63 = 2112;
                v64 = v45;
                _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "Failed making file class C: %@ with error %@", buf, 0x16u);
              }
            }
          }

          else
          {
            if (v31)
            {
              v40 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
              {
                fileURL3 = [v20 fileURL];
                path5 = [fileURL3 path];
                *buf = 138412802;
                v46 = path5;
                v62 = path5;
                v63 = 2112;
                v64 = v48;
                v65 = 2112;
                v66 = v47;
                _os_log_impl(&dword_22B4CC000, v40, OS_LOG_TYPE_INFO, "Failed to move file from %@ to %@ error %@", buf, 0x20u);
              }
            }

            [MEMORY[0x277D1A9C0] cleanUpAsset:v20];
          }
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v39 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v62 = im_lastPathComponent;
              v63 = 2112;
              v64 = im_lastPathComponent2;
              _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "Failed to get aux video asset fileURL for aux video copy dest, bad transfer/data (assetPath %@ auxAssetPath %@)", buf, 0x16u);
            }
          }

          [MEMORY[0x277D1A9C0] cleanUpAsset:v20];
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v38 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v62 = im_lastPathComponent2;
            _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Failed to get valid attachment aux filename for aux video copy dest, bad transfer/data (auxAssetPath %@)", buf, 0xCu);
          }
        }

        [MEMORY[0x277D1A9C0] cleanUpAsset:v20];
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v37 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          *buf = 138413058;
          v62 = im_lastPathComponent;
          v63 = 2112;
          v64 = mimeType;
          v65 = 2112;
          v66 = type;
          v67 = 2112;
          v68 = guid;
          _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "Failed to create attachment persistent path for aux video source, bad transfer/data (assetPath %@ mimeType %@ utiType %@ guid %@)", buf, 0x2Au);
        }
      }

      [MEMORY[0x277D1A9C0] cleanUpAsset:v20];
    }
  }

  v43 = *MEMORY[0x277D85DE8];
  return v55;
}

@end