@interface IMDFileTransferCenter
+ (id)fileTransferErrorWithReason:(int64_t)a3 description:(id)a4;
+ (id)localFileURLRetrievalErrorWithReason:(int64_t)a3 description:(id)a4;
+ (id)localFileURLRetrievalErrorWithReason:(int64_t)a3 underlyingReason:(int64_t)a4 description:(id)a5;
+ (id)sharedInstance;
+ (int64_t)convertNSErrorToIMFileTransferErrorReason:(id)a3 additionalErrorInfo:(id)a4;
- (BOOL)_hasActiveTransferWithGUID:(id)a3;
- (BOOL)_isFileTransferWithGUIDFromKnownSender:(id)a3;
- (BOOL)_shouldDownloadAssetForTransfer:(id)a3 forMessageItem:(id)a4;
- (BOOL)populateLocalURLsForTransfer:(id)a3 fromCKRecord:(id)a4;
- (BOOL)registerGUID:(id)a3 forNewOutgoingTransferWithLocalURL:(id)a4;
- (IMDFileTransferCenter)init;
- (id)_allFileTransfers;
- (id)_createWrapperForTransfer:(id)a3;
- (id)_dictionaryRepresentationsForFileTransfers:(id)a3 toSave:(BOOL)a4;
- (id)_findTransferGUIDMatchingSpotlightDonatedSpeculativeTransferGUID:(id)a3;
- (id)_getNewFileTransferForStoredAttachmentPayloadDataWithTransferGUID:(id)a3 messageGUID:(id)a4;
- (id)_messageForFileTransferWithGUID:(id)a3;
- (id)_removeWrapperForTransfer:(id)a3;
- (id)_retrieveLocalFileURLForFileTransferWithGUID:(id)a3 options:(int64_t)a4 outTransfer:(id *)a5 outError:(id *)a6;
- (id)createNewOutgoingTransferWithLocalFileURL:(id)a3;
- (id)guidsForStoredAttachmentBlastDoorPayloadData:(id)a3 messageGUID:(id)a4;
- (id)guidsForStoredAttachmentPayloadData:(id)a3 messageGUID:(id)a4;
- (id)guidsForStoredAttachmentPayloadDataURLs:(id)a3 messageGUID:(id)a4;
- (id)transferForGUID:(id)a3;
- (id)updateTransfersWithCKRecord:(id)a3 recordWasFetched:(BOOL)a4 downloadAsset:(BOOL *)a5;
- (void)_addActiveTransfer:(id)a3;
- (void)_addGatekeeperProperties:(id)a3 toDirectory:(id)a4;
- (void)_addTransfer:(id)a3 forGUID:(id)a4 shouldNotify:(BOOL)a5;
- (void)_addTransferringTransfer:(id)a3;
- (void)_completeHubbleDownloadForTransfer:(id)a3;
- (void)_flushMessagesToReindexForPreviewGeneration;
- (void)_handleFileTransfer:(id)a3 acceptedWithPath:(id)a4 autoRename:(BOOL)a5 overwrite:(BOOL)a6 options:(int64_t)a7 postNotification:(BOOL)a8;
- (void)_handleFileTransfer:(id)a3 createdWithProperties:(id)a4 withAuditToken:(id *)a5;
- (void)_handleFileTransfer:(id)a3 rejectedWithProperties:(id)a4;
- (void)_handleFileTransfer:(id)a3 updatedWithProperties:(id)a4 isStickerReposition:(BOOL)a5 repositionedLocally:(BOOL)a6;
- (void)_handleFileTransferRemoved:(id)a3;
- (void)_handleFileTransferStopped:(id)a3;
- (void)_handleFileTransfers:(id)a3 autoRename:(BOOL)a4 overwrite:(BOOL)a5 options:(int64_t)a6 postNotification:(BOOL)a7;
- (void)_hubbleTransferCompleted:(id)a3 withGUID:(id)a4 error:(id)a5 suggestedRetryGUID:(id)a6;
- (void)_postHubbleDownloadFailedForTransfer:(id)a3 error:(id)a4;
- (void)_postUpdated:(id)a3;
- (void)_previewGenerationFailedNotification:(id)a3;
- (void)_previewGenerationSucceededNotification:(id)a3;
- (void)_reindexTransferIfNeededForPreviewGenerationStateChange:(id)a3 originalPreviewGenerationState:(int64_t)a4;
- (void)_removeActiveTransfer:(id)a3;
- (void)_removeHubbleRequestedTransfer:(id)a3;
- (void)_removeTransferringTransfer:(id)a3;
- (void)_transferTimerTick:(id)a3;
- (void)_updateAndPostCachedTransfer:(id)a3;
- (void)_updateContextStamp;
- (void)_updateTransferGUID:(id)a3 toGUID:(id)a4;
- (void)_updateTransferPreviewGenerationState:(id)a3 newState:(int64_t)a4;
- (void)acceptTransfer:(id)a3 path:(id)a4;
- (void)addHubbleRequestedTransfer:(id)a3;
- (void)assignTransfer:(id)a3 toAccount:(id)a4 otherPerson:(id)a5;
- (void)broadcastTransfersWithGUIDs:(id)a3 atLocalPaths:(id)a4;
- (void)deleteTransferForGUID:(id)a3;
- (void)failTransfer:(id)a3 error:(id)a4;
- (void)failTransfer:(id)a3 reason:(int64_t)a4;
- (void)failTransferPreviewGeneration:(id)a3;
- (void)generatePreviewForTransfer:(id)a3 messageItem:(id)a4 senderContext:(id)a5;
- (void)markTransferAsNotSuccessfullyDownloadedFromCloud:(id)a3;
- (void)markTransferAsNotSyncedSuccessfully:(id)a3;
- (void)postHubbleDownloadFailedIfNeededForTransfer:(id)a3 error:(id)a4;
- (void)postHubbleDownloadFinishedIfNeededForTransfer:(id)a3;
- (void)rejectTransfer:(id)a3;
- (void)removeFinishedTransfers;
- (void)removeTransferForGUID:(id)a3;
- (void)resetSyncStateForRecord:(id)a3 toState:(int64_t)a4;
- (void)resetTransfer:(id)a3 andPostError:(id)a4;
- (void)resetTransfer:(id)a3 andPostReason:(int64_t)a4;
- (void)retrieveLocalFileURLForFileTransferWithGUIDs:(id)a3 options:(int64_t)a4 completion:(id)a5;
- (void)setRecoverableErrorForTransfer:(id)a3 error:(int64_t)a4;
- (void)startFinalizingTransfer:(id)a3 updateByteCounts:(BOOL)a4;
- (void)startTransfer:(id)a3;
- (void)successfullyGeneratedPreviewForTransfer:(id)a3;
- (void)successfullyGeneratedPreviewForTransfer:(id)a3 withPreviewSize:(CGSize)a4;
- (void)updateTransfer:(id)a3;
- (void)updateTransfer:(id)a3 currentBytes:(unint64_t)a4 totalBytes:(unint64_t)a5;
- (void)updateTransferAsWaitingForAccept:(id)a3;
- (void)updateTransferGUID:(id)a3 toGUID:(id)a4;
@end

@implementation IMDFileTransferCenter

- (id)_allFileTransfers
{
  v3 = [(IMDFileTransferCenter *)self guidToTransferMap];
  v4 = [v3 allValues];

  v5 = [v4 arrayByApplyingSelector:sel_guid];
  v6 = [(IMDFileTransferCenter *)self _dictionaryRepresentationsForFileTransfers:v4 toSave:0];
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

- (void)addHubbleRequestedTransfer:(id)a3
{
  v5 = [a3 guid];
  if ([v5 length])
  {
    v4 = [(IMDFileTransferCenter *)self activeHubbleRequestedTransfers];
    [v4 addObject:v5];
  }
}

- (void)_removeHubbleRequestedTransfer:(id)a3
{
  v7 = [a3 guid];
  if ([v7 length])
  {
    v4 = [(IMDFileTransferCenter *)self activeHubbleRequestedTransfers];
    v5 = [v4 containsObject:v7];

    if (v5)
    {
      v6 = [(IMDFileTransferCenter *)self activeHubbleRequestedTransfers];
      [v6 removeObject:v7];
    }
  }
}

- (void)postHubbleDownloadFinishedIfNeededForTransfer:(id)a3
{
  v8 = a3;
  v4 = [v8 guid];
  if (v4)
  {
    v5 = [(IMDFileTransferCenter *)self activeHubbleRequestedTransfers];
    v6 = [v5 containsObject:v4];

    if (v6)
    {
      [(IMDFileTransferCenter *)self _removeHubbleRequestedTransfer:v8];
      if ([v8 existsAtLocalPath])
      {
        [(IMDFileTransferCenter *)self _completeHubbleDownloadForTransfer:v8];
      }

      else
      {
        v7 = [IMDFileTransferCenter localFileURLRetrievalErrorWithReason:2 description:@"The file transfer does not exist on disk, but the transfer was explicitly ended."];
        [(IMDFileTransferCenter *)self _postHubbleDownloadFailedForTransfer:v8 error:v7];
      }
    }
  }
}

- (void)postHubbleDownloadFailedIfNeededForTransfer:(id)a3 error:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 guid];
  if (v7)
  {
    v8 = [(IMDFileTransferCenter *)self activeHubbleRequestedTransfers];
    v9 = [v8 containsObject:v7];

    if (v9)
    {
      [(IMDFileTransferCenter *)self _removeHubbleRequestedTransfer:v10];
      [(IMDFileTransferCenter *)self _postHubbleDownloadFailedForTransfer:v10 error:v6];
    }
  }
}

- (void)_completeHubbleDownloadForTransfer:(id)a3
{
  v4 = a3;
  v5 = [v4 guid];
  [(IMDFileTransferCenter *)self _hubbleTransferCompleted:v4 withGUID:v5 error:0 suggestedRetryGUID:0];
}

- (void)_postHubbleDownloadFailedForTransfer:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 guid];
  [(IMDFileTransferCenter *)self _hubbleTransferCompleted:v7 withGUID:v8 error:v6 suggestedRetryGUID:0];
}

+ (int64_t)convertNSErrorToIMFileTransferErrorReason:(id)a3 additionalErrorInfo:(id)a4
{
  v4 = a3;
  v5 = [v4 domain];
  v6 = [v5 isEqualToString:*MEMORY[0x277D1A480]];

  if (v6)
  {
    v7 = 15;
  }

  else if (v4)
  {
    v8 = [v4 code];
    v9 = 26;
    if (v8 != 9)
    {
      v9 = 15;
    }

    if ((v8 - 26) >= 2)
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
    v3 = [MEMORY[0x277CCACA8] stringGUID];
    [(IMDFileTransferCenter *)v2 setContextStamp:v3];

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

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:v2 selector:sel__previewGenerationSucceededNotification_ name:*MEMORY[0x277D1ADB8] object:0];

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v2 selector:sel__previewGenerationFailedNotification_ name:*MEMORY[0x277D1ADB0] object:0];
  }

  return v2;
}

- (void)_updateContextStamp
{
  v3 = [MEMORY[0x277CCACA8] stringGUID];
  [(IMDFileTransferCenter *)self setContextStamp:v3];
}

- (void)_postUpdated:(id)a3
{
  if (a3)
  {
    v4 = a3;
    [(IMDFileTransferCenter *)self _updateContextStamp];
    v5 = +[IMDBroadcastController sharedProvider];
    v6 = [v5 broadcasterForFileTransferListeners];
    v7 = [v4 guid];
    v8 = [v4 _dictionaryRepresentation];
    [v6 fileTransfer:v7 updatedWithProperties:v8];

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 __mainThreadPostNotificationName:@"__kIMDFileTransferUpdatedNotification" object:v4];
  }
}

+ (id)fileTransferErrorWithReason:(int64_t)a3 description:(id)a4
{
  v18[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277D19E58];
  v17[0] = *MEMORY[0x277CCA450];
  v7 = MEMORY[0x277CCA8D8];
  v8 = a4;
  v9 = [v7 mainBundle];
  v10 = [v9 localizedStringForKey:@"File transfer operation was unsuccessful." value:&stru_283F23018 table:0];
  v18[0] = v10;
  v17[1] = *MEMORY[0x277CCA470];
  v11 = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [v11 localizedStringForKey:v8 value:&stru_283F23018 table:0];

  v18[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v14 = [v5 errorWithDomain:v6 code:a3 userInfo:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)localFileURLRetrievalErrorWithReason:(int64_t)a3 description:(id)a4
{
  v18[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277D19E60];
  v17[0] = *MEMORY[0x277CCA450];
  v7 = MEMORY[0x277CCA8D8];
  v8 = a4;
  v9 = [v7 mainBundle];
  v10 = [v9 localizedStringForKey:@"File transfer local file URL retrieval operation was unsuccessful." value:&stru_283F23018 table:0];
  v18[0] = v10;
  v17[1] = *MEMORY[0x277CCA470];
  v11 = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [v11 localizedStringForKey:v8 value:&stru_283F23018 table:0];

  v18[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v14 = [v5 errorWithDomain:v6 code:a3 userInfo:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)localFileURLRetrievalErrorWithReason:(int64_t)a3 underlyingReason:(int64_t)a4 description:(id)a5
{
  v22[3] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCA9B8];
  v9 = *MEMORY[0x277D19E60];
  v21[0] = *MEMORY[0x277CCA450];
  v10 = MEMORY[0x277CCA8D8];
  v11 = a5;
  v12 = [v10 mainBundle];
  v13 = [v12 localizedStringForKey:@"File transfer local file URL retrieval operation was unsuccessful." value:&stru_283F23018 table:0];
  v22[0] = v13;
  v21[1] = *MEMORY[0x277CCA470];
  v14 = [MEMORY[0x277CCA8D8] mainBundle];
  v15 = [v14 localizedStringForKey:v11 value:&stru_283F23018 table:0];

  v22[1] = v15;
  v21[2] = *MEMORY[0x277CCA7E8];
  v16 = [a1 fileTransferErrorWithReason:a4 description:@"See error code and compare against IMFileTransferErrorReason."];
  v22[2] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v18 = [v8 errorWithDomain:v9 code:a3 userInfo:v17];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_dictionaryRepresentationsForFileTransfers:(id)a3 toSave:(BOOL)a4
{
  v5 = a3;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B57435C;
  v8[3] = &unk_278704DE8;
  v9 = a4;
  v8[4] = v10;
  v6 = [v5 __imArrayByApplyingBlock:v8];
  _Block_object_dispose(v10, 8);

  return v6;
}

- (void)_addGatekeeperProperties:(id)a3 toDirectory:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(IMDFileTransferCenter *)self _addGatekeeperProperties:v6 toFileAtPath:v7];
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v8 enumeratorAtPath:v7];

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

        v15 = [v7 stringByAppendingPathComponent:{*(*(&v17 + 1) + 8 * v14), v17}];
        [(IMDFileTransferCenter *)self _addGatekeeperProperties:v6 toFileAtPath:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_createWrapperForTransfer:(id)a3
{
  v4 = a3;
  v5 = [v4 _needsWrapper];
  v6 = [v4 localURL];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 path];

    v9 = [v8 stringByDeletingLastPathComponent];
    v10 = [v8 lastPathComponent];
    v11 = [v10 stringByDeletingPathExtension];
    v12 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = [v12 createUniqueDirectoryWithName:v11 atPath:v9 ofType:*MEMORY[0x277D19EF0]];

    if (v13)
    {
      v14 = [v13 stringByAppendingPathComponent:*MEMORY[0x277D19EF8]];
      v15 = [v4 guid];
      v19 = 0;
      [v15 writeToFile:v14 atomically:1 encoding:4 error:&v19];
      v16 = v19;

      if (v16)
      {

        v13 = 0;
      }
    }

    v17 = [v13 stringByAppendingPathComponent:v10];
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

- (id)_removeWrapperForTransfer:(id)a3
{
  v4 = a3;
  [(IMDFileTransferCenter *)self _updateContextStamp];
  v5 = [v4 localURL];

  return v5;
}

- (void)_addActiveTransfer:(id)a3
{
  v5 = a3;
  if ([v5 length])
  {
    v4 = [(IMDFileTransferCenter *)self activeTransfers];
    [v4 addObject:v5];

    [(IMDFileTransferCenter *)self _updateContextStamp];
  }
}

- (BOOL)_hasActiveTransferWithGUID:(id)a3
{
  v4 = a3;
  v5 = [(IMDFileTransferCenter *)self activeTransfers];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (void)_removeActiveTransfer:(id)a3
{
  v7 = a3;
  if ([v7 length])
  {
    v4 = [(IMDFileTransferCenter *)self activeTransfers];
    v5 = [v4 containsObject:v7];

    if (v5)
    {
      v6 = [(IMDFileTransferCenter *)self activeTransfers];
      [v6 removeObject:v7];
    }

    [(IMDFileTransferCenter *)self _updateContextStamp];
  }
}

- (void)_addTransferringTransfer:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(IMDFileTransferCenter *)self transferringTransfers];
    v6 = [v5 count];

    if (!v6)
    {
      v7 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__transferTimerTick_ selector:0 userInfo:1 repeats:1.25];
      [(IMDFileTransferCenter *)self setTransferTimer:v7];
    }

    v8 = [(IMDFileTransferCenter *)self transferringTransfers];
    [v8 addObject:v4];
  }
}

- (void)_removeTransferringTransfer:(id)a3
{
  v10 = a3;
  if (v10)
  {
    v4 = [(IMDFileTransferCenter *)self transferringTransfers];
    v5 = [v4 containsObject:v10];

    if (v5)
    {
      v6 = [(IMDFileTransferCenter *)self transferringTransfers];
      [v6 removeObject:v10];

      v7 = [(IMDFileTransferCenter *)self transferringTransfers];
      v8 = [v7 count];

      if (!v8)
      {
        v9 = [(IMDFileTransferCenter *)self transferTimer];
        [v9 invalidate];

        [(IMDFileTransferCenter *)self setTransferTimer:0];
      }
    }
  }
}

- (void)_transferTimerTick:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = [(IMDFileTransferCenter *)self transferringTransfers];
  v5 = [v4 _copyForEnumerating];

  v6 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    v27 = v5;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v28 + 1) + 8 * v9);
        v11 = [v10 guid];
        v12 = [(IMDFileTransferCenter *)self transferForGUID:v11];
        v13 = v12;
        if (v12 != v10)
        {

LABEL_9:
          [(IMDFileTransferCenter *)self _removeTransferringTransfer:v10];
          goto LABEL_10;
        }

        v14 = [v10 transferState];

        if (v14 == 5)
        {
          goto LABEL_9;
        }

        v15 = [v10 averageTransferRate];
        v16 = [v10 currentBytes];
        v17 = [MEMORY[0x277CBEAA8] date];
        [v17 timeIntervalSince1970];
        v19 = v18;

        [v10 _lastAveragedInterval];
        if (v19 - v20 > 1.0)
        {
          v21 = [v10 averageTransferRate];
          v15 = (v21 + (v16 - [v10 _lastAveragedBytes] - v21) * 0.333333333);
          [v10 _setAveragedTransferRate:v15 lastAveragedInterval:v16 lastAveragedBytes:v19];
        }

        [v10 _setLastUpdatedInterval:v19];
        v22 = +[IMDBroadcastController sharedProvider];
        v23 = [v22 broadcasterForFileTransferListeners];
        v24 = [v10 guid];
        [v23 fileTransfer:v24 updatedWithCurrentBytes:v16 totalBytes:objc_msgSend(v10 averageTransferRate:{"totalBytes"), v15}];

        v5 = v27;
LABEL_10:
        ++v9;
      }

      while (v7 != v9);
      v25 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
      v7 = v25;
    }

    while (v25);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)createNewOutgoingTransferWithLocalFileURL:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v3 stringGUID];
  v6 = [v4 path];
  v7 = [MEMORY[0x277D19250] defaultHFSFileManager];
  v21 = 0;
  v8 = [v7 attributesOfItemAtPath:v6 error:&v21];

  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277CCA1E0]];
  v10 = [v9 isEqual:*MEMORY[0x277CCA1E8]];

  v11 = objc_alloc(MEMORY[0x277D1A9C0]);
  v12 = [v6 lastPathComponent];
  v13 = [v8 fileSize];
  v14 = [v8 fileHFSTypeCode];
  v15 = [v8 fileHFSCreatorCode];
  BYTE2(v19) = 0;
  LOWORD(v19) = [v8 fileHFSFlags];
  v16 = [v11 _initWithGUID:v5 filename:v12 isDirectory:v10 localURL:v4 account:0 otherPerson:0 totalBytes:v13 hfsType:__PAIR64__(v15 hfsCreator:v14) hfsFlags:v19 isIncoming:?];

  v17 = [(IMDFileTransferCenter *)self guidToTransferMap];
  [v17 setObject:v16 forKeyedSubscript:v5];

  return v5;
}

- (void)broadcastTransfersWithGUIDs:(id)a3 atLocalPaths:(id)a4
{
  v5 = a4;
  v6 = a3;
  v8 = +[IMDBroadcastController sharedProvider];
  v7 = [v8 broadcasterForFileTransferListeners];
  [v7 fileTransfers:v6 createdWithLocalPaths:v5];
}

- (BOOL)registerGUID:(id)a3 forNewOutgoingTransferWithLocalURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 length];
  if (v8)
  {
    v9 = [v7 path];
    v10 = [MEMORY[0x277D19250] defaultHFSFileManager];
    v23 = 0;
    v11 = [v10 attributesOfItemAtPath:v9 error:&v23];

    v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA1E0]];
    v13 = [v12 isEqual:*MEMORY[0x277CCA1E8]];

    v14 = [(IMDFileTransferCenter *)self transferForGUID:v6];
    if (!v14)
    {
      v22 = objc_alloc(MEMORY[0x277D1A9C0]);
      v15 = [v9 lastPathComponent];
      v21 = [v11 fileSize];
      v16 = [v11 fileHFSTypeCode];
      v17 = [v11 fileHFSCreatorCode];
      BYTE2(v20) = 0;
      LOWORD(v20) = [v11 fileHFSFlags];
      v14 = [v22 _initWithGUID:v6 filename:v15 isDirectory:v13 localURL:v7 account:0 otherPerson:0 totalBytes:v21 hfsType:__PAIR64__(v17 hfsCreator:v16) hfsFlags:v20 isIncoming:?];
    }

    v18 = [(IMDFileTransferCenter *)self guidToTransferMap];
    [v18 setObject:v14 forKeyedSubscript:v6];
  }

  return v8 != 0;
}

- (void)assignTransfer:(id)a3 toAccount:(id)a4 otherPerson:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  if ([v16 length])
  {
    v10 = [(IMDFileTransferCenter *)self transferForGUID:v16];
    v11 = v10;
    if (v10)
    {
      [v10 _setAccount:v8 otherPerson:v9];
      v12 = +[IMDBroadcastController sharedProvider];
      v13 = [v12 broadcasterForFileTransferListeners];
      v14 = [v11 guid];
      v15 = [v11 _dictionaryRepresentation];
      [v13 fileTransfer:v14 createdWithProperties:v15];

      [(IMDFileTransferCenter *)self _updateContextStamp];
    }
  }
}

- (void)_addTransfer:(id)a3 forGUID:(id)a4 shouldNotify:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if (v8)
  {
    if (a4)
    {
      v17 = v8;
      v9 = a4;
      v10 = [(IMDFileTransferCenter *)self guidToTransferMap];
      v11 = [v10 objectForKeyedSubscript:v9];

      v12 = [(IMDFileTransferCenter *)self guidToTransferMap];
      [v12 setObject:v17 forKeyedSubscript:v9];

      v8 = v17;
      if (v5)
      {
        if (v11)
        {
          [(IMDFileTransferCenter *)self _postUpdated:v17];
        }

        else
        {
          v13 = +[IMDBroadcastController sharedProvider];
          v14 = [v13 broadcasterForFileTransferListeners];
          v15 = [v17 guid];
          v16 = [v17 _dictionaryRepresentation];
          [v14 fileTransfer:v15 createdWithProperties:v16];
        }

        v8 = v17;
      }
    }
  }
}

- (id)transferForGUID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(IMDFileTransferCenter *)self guidToTransferMap];
    v6 = [v5 objectForKeyedSubscript:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)removeTransferForGUID:(id)a3
{
  v5 = a3;
  if ([v5 length])
  {
    v4 = [(IMDFileTransferCenter *)self guidToTransferMap];
    [v4 setObject:0 forKeyedSubscript:v5];
  }
}

- (void)deleteTransferForGUID:(id)a3
{
  v5 = a3;
  if ([v5 length])
  {
    [(IMDFileTransferCenter *)self _handleFileTransferRemoved:v5];
    v4 = +[IMDAttachmentStore sharedInstance];
    [v4 deleteAttachmentWithGUID:v5];
  }
}

- (void)updateTransferGUID:(id)a3 toGUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    [(IMDFileTransferCenter *)self _updateTransferGUID:v6 toGUID:v7];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B57598C;
    block[3] = &unk_2787038F8;
    block[4] = self;
    v9 = v6;
    v10 = v7;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }
}

- (void)_updateTransferGUID:(id)a3 toGUID:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(IMDFileTransferCenter *)self guidToTransferMap];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (v9)
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "FileTransferCenter updating guid for transfer in cache map:%@ to %@", &v15, 0x16u);
    }

    v11 = [v7 copy];
    [v9 setGuid:v11];
    v12 = [(IMDFileTransferCenter *)self guidToTransferMap];
    [v12 setObject:0 forKeyedSubscript:v6];

    v13 = [(IMDFileTransferCenter *)self guidToTransferMap];
    [v13 setObject:v9 forKeyedSubscript:v11];

    v7 = v11;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)startTransfer:(id)a3
{
  v7 = a3;
  if ([v7 length])
  {
    v4 = [(IMDFileTransferCenter *)self transferForGUID:v7];
    v5 = v4;
    if (v4 && ([v4 transferState] < 2 || objc_msgSend(v5, "transferState") == 6))
    {
      [(IMDFileTransferCenter *)self _addActiveTransfer:v7];
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
          [(IMDFileTransferCenter *)self resetTransfer:v7 andPostReason:20];
        }
      }

      [(IMDFileTransferCenter *)self _updateContextStamp];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)updateTransfer:(id)a3 currentBytes:(unint64_t)a4 totalBytes:(unint64_t)a5
{
  v11 = a3;
  if ([v11 length])
  {
    v8 = [(IMDFileTransferCenter *)self transferForGUID:v11];
    v9 = v8;
    if (v8)
    {
      if ([v8 transferState] > 2)
      {
        [v9 _setCurrentBytes:a4 totalBytes:a5];
      }

      else
      {
        [v9 _setTransferState:3];
        v10 = [MEMORY[0x277CBEAA8] date];
        [v9 _setStartDate:v10];

        [(IMDFileTransferCenter *)self _addTransferringTransfer:v9];
        [v9 _setCurrentBytes:a4 totalBytes:a5];
        [(IMDFileTransferCenter *)self _postUpdated:v9];
      }

      [(IMDFileTransferCenter *)self _updateContextStamp];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)updateTransfer:(id)a3
{
  v5 = a3;
  if ([v5 length])
  {
    v4 = [(IMDFileTransferCenter *)self transferForGUID:v5];
    if (v4)
    {
      [(IMDFileTransferCenter *)self _postUpdated:v4];
      [(IMDFileTransferCenter *)self _updateContextStamp];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)updateTransferAsWaitingForAccept:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    [v4 _setTransferState:0];
    v5 = [v9 guid];
    v6 = [(IMDFileTransferCenter *)self transferForGUID:v5];

    v7 = v9;
    if (v6)
    {
      [v6 _setTransferState:0];
      v7 = v6;
    }

    v8 = [(IMDFileTransferCenter *)self _attachmentStoreSharedInstance];
    [v8 updateAttachment:v7];

    [(IMDFileTransferCenter *)self _postUpdated:v7];
    v4 = v9;
  }
}

- (void)startFinalizingTransfer:(id)a3 updateByteCounts:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 length])
  {
    v7 = [(IMDFileTransferCenter *)self transferForGUID:v6];
    v8 = v7;
    if (v7)
    {
      if ([v7 transferState] <= 3)
      {
        [v8 _setTransferState:4];
        if (v4)
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
            v10 = [v9 path];
            v11 = [MEMORY[0x277D19250] defaultHFSFileManager];
            v17 = 0;
            v12 = [v11 attributesOfItemAtPath:v10 error:&v17];

            if (v12)
            {
              v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCA1E0]];
              v14 = [v13 isEqual:*MEMORY[0x277CCA1E8]];

              [v8 _setDirectory:v14 hfsType:objc_msgSend(v12 hfsCreator:"fileHFSTypeCode") hfsFlags:{objc_msgSend(v12, "fileHFSCreatorCode"), objc_msgSend(v12, "fileHFSFlags")}];
              if (v4)
              {
                v15 = [v12 objectForKey:*MEMORY[0x277CCA1C0]];
                if (v15)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v16 = [v15 unsignedLongLongValue];
                    [v8 _setCurrentBytes:v16 totalBytes:v16];
                  }
                }
              }
            }

            [(IMDFileTransferCenter *)self _postUpdated:v8];
          }

          else
          {
            [(IMDFileTransferCenter *)self resetTransfer:v6 andPostReason:20];
          }
        }

        [(IMDFileTransferCenter *)self _removeActiveTransfer:v6];
        [(IMDFileTransferCenter *)self _removeTransferringTransfer:v8];
      }

      [(IMDFileTransferCenter *)self _updateContextStamp];
    }
  }
}

- (void)failTransfer:(id)a3 reason:(int64_t)a4
{
  v12 = a3;
  if ([v12 length])
  {
    v6 = [(IMDFileTransferCenter *)self transferForGUID:v12];
    if ([v6 thumbnailMode])
    {
      [v6 setThumbnailMode:{objc_msgSend(v6, "thumbnailModeAfterDownloadSuccess:", 0)}];
    }

    if (v6 && [v6 transferState] != 6)
    {
      [(IMDFileTransferCenter *)self _removeActiveTransfer:v12];
      [(IMDFileTransferCenter *)self _removeTransferringTransfer:v6];
      if (a4 == -1)
      {
        a4 = 15;
      }

      [v6 _setTransferState:6];
      [v6 _setError:a4];
      [(IMDFileTransferCenter *)self _postUpdated:v6];
      v7 = +[IMDAttachmentStore sharedInstance];
      [v7 storeAttachment:v6 associateWithMessageWithGUID:0];
    }

    [(IMDFileTransferCenter *)self _clearProgressForTransferGUID:v12];
    v8 = MEMORY[0x277CCACA8];
    v9 = [v6 errorDescription];
    v10 = [v8 stringWithFormat:@"Transfer failed. See underlying error. transfer.errorDescription:%@", v9];
    v11 = [IMDFileTransferCenter localFileURLRetrievalErrorWithReason:3 underlyingReason:a4 description:v10];
    [(IMDFileTransferCenter *)self postHubbleDownloadFailedIfNeededForTransfer:v6 error:v11];
  }
}

- (void)resetTransfer:(id)a3 andPostReason:(int64_t)a4
{
  v12 = a3;
  if ([v12 length])
  {
    v6 = [(IMDFileTransferCenter *)self transferForGUID:v12];
    v7 = MEMORY[0x277CCACA8];
    v8 = [v6 errorDescription];
    v9 = [v7 stringWithFormat:@"Transfer was reset. See underlying error. transfer.errorDescription:%@", v8];
    v10 = [IMDFileTransferCenter localFileURLRetrievalErrorWithReason:4 underlyingReason:a4 description:v9];

    v11 = [v6 guid];
    [(IMDFileTransferCenter *)self resetTransfer:v11 andPostError:v10];
  }
}

- (void)resetTransfer:(id)a3 andPostError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v8 = [(IMDFileTransferCenter *)self transferForGUID:v6];
    v9 = [v8 finalTransferStateForSuccess:0];
    v10 = [v8 thumbnailMode];
    if (v10)
    {
      [v8 setThumbnailMode:v10 - 1];
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

    [(IMDFileTransferCenter *)self _clearProgressForTransferGUID:v6];
    [(IMDFileTransferCenter *)self postHubbleDownloadFailedIfNeededForTransfer:v8 error:v7];
  }
}

- (void)_updateTransferPreviewGenerationState:(id)a3 newState:(int64_t)a4
{
  v6 = [(IMDFileTransferCenter *)self transferForGUID:a3];
  if (v6)
  {
    v9 = v6;
    v7 = [v6 previewGenerationState];
    [v9 setPreviewGenerationState:a4];
    [v9 setPreviewGenerationVersion:*MEMORY[0x277D1ADC8]];
    v8 = +[IMDAttachmentStore sharedInstance];
    [v8 updateAttachment:v9];

    [(IMDFileTransferCenter *)self _reindexTransferIfNeededForPreviewGenerationStateChange:v9 originalPreviewGenerationState:v7];
    [(IMDFileTransferCenter *)self _postUpdated:v9];
    v6 = v9;
  }
}

- (void)_reindexTransferIfNeededForPreviewGenerationStateChange:(id)a3 originalPreviewGenerationState:(int64_t)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 type];
  [v5 previewGenerationState];
  v7 = [v5 messageGUID];
  [(IMDFileTransferCenter *)self _isFileTransferWithGUIDFromKnownSender:v7];
  v8 = IMShouldReindexUTITypeWithPreviewGenerationState();

  if (v8)
  {
    v9 = [v5 guid];
    v10 = IMDAttachmentRecordCopyMessageForAttachmentGUID();

    v11 = [v10 guid];

    v12 = IMAttachmentsLogHandle();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        v14 = [v5 guid];
        v15 = [v10 guid];
        v20 = 138412546;
        v21 = v14;
        v22 = 2112;
        v23 = v15;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEFAULT, "Transfer GUID %@ from message %@ should be re-indexed due to preview generation state change", &v20, 0x16u);
      }

      v16 = [(IMDFileTransferCenter *)self messagesToReindexForPreviewGeneration];
      v17 = [v10 guid];
      [v16 addObject:v17];

      [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__flushMessagesToReindexForPreviewGeneration object:0];
      [(IMDFileTransferCenter *)self performSelector:sel__flushMessagesToReindexForPreviewGeneration withObject:0 afterDelay:3.0];
    }

    else
    {
      if (v13)
      {
        v18 = [v5 guid];
        v20 = 138412290;
        v21 = v18;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEFAULT, "Transfer GUID %@ should be re-indexed due to preview generation state change, but has not been persisted to the database yet. It will be indexed once the message is stored.", &v20, 0xCu);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_flushMessagesToReindexForPreviewGeneration
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(IMDFileTransferCenter *)self messagesToReindexForPreviewGeneration];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(IMDFileTransferCenter *)self messagesToReindexForPreviewGeneration];
    v6 = [v5 allObjects];

    v7 = [(IMDFileTransferCenter *)self messagesToReindexForPreviewGeneration];
    [v7 removeAllObjects];

    v8 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v13 = [v6 count];
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "Re-indexing %ld messages due to preview generation state change", buf, 0xCu);
    }

    v11 = v6;
    v9 = v6;
    IMDCoreSpotlightReindexMessagesWhileBlocking();
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)failTransferPreviewGeneration:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Marking transfer %@ as failing preview generation", &v7, 0xCu);
  }

  [(IMDFileTransferCenter *)self _updateTransferPreviewGenerationState:v4 newState:2];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)successfullyGeneratedPreviewForTransfer:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Marking transfer %@ as succeeding preview generation", &v7, 0xCu);
  }

  [(IMDFileTransferCenter *)self _updateTransferPreviewGenerationState:v4 newState:1];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_previewGenerationSucceededNotification:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  if ([MEMORY[0x277D1A978] ignorePreviewGenerationNotifications])
  {
    v6 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v13) = 138412290;
      *(&v13 + 4) = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "Preview generation succeeded for transfer %@, but ignoring due to override", &v13, 0xCu);
    }
  }

  else
  {
    v7 = [v4 userInfo];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D1ADC0]];
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

    [(IMDFileTransferCenter *)self successfullyGeneratedPreviewForTransfer:v5 withPreviewSize:v11, v10];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_previewGenerationFailedNotification:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [a3 object];
  if ([MEMORY[0x277D1A978] ignorePreviewGenerationNotifications])
  {
    v5 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Preview generation failed for transfer %@, but ignoring due to override", &v7, 0xCu);
    }
  }

  else
  {
    [(IMDFileTransferCenter *)self failTransferPreviewGeneration:v4];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)rejectTransfer:(id)a3
{
  v10 = a3;
  if ([v10 length])
  {
    v4 = [(IMDFileTransferCenter *)self transferForGUID:v10];
    if (v4)
    {
      [(IMDFileTransferCenter *)self _removeActiveTransfer:v10];
      [(IMDFileTransferCenter *)self _removeTransferringTransfer:v4];
      [v4 _setTransferState:8];
      [(IMDFileTransferCenter *)self _postUpdated:v4];
      v5 = +[IMDAttachmentStore sharedInstance];
      [v5 storeAttachment:v4 associateWithMessageWithGUID:0];
    }

    [(IMDFileTransferCenter *)self _clearProgressForTransferGUID:v10];
    v6 = MEMORY[0x277CCACA8];
    v7 = [v4 errorDescription];
    v8 = [v6 stringWithFormat:@"Transfer failed. See underlying error. transfer.errorDescription:%@", v7];
    v9 = [IMDFileTransferCenter localFileURLRetrievalErrorWithReason:3 underlyingReason:28 description:v8];
    [(IMDFileTransferCenter *)self postHubbleDownloadFailedIfNeededForTransfer:v4 error:v9];
  }
}

- (void)successfullyGeneratedPreviewForTransfer:(id)a3 withPreviewSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = IMStringFromCGSize();
    v20 = 138412546;
    v21 = v7;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "Updating transfer %@ with size %@", &v20, 0x16u);
  }

  v10 = [(IMDFileTransferCenter *)self transferForGUID:v7];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 previewGenerationState];
    [v11 setPreviewGenerationState:1];
    if (width != *MEMORY[0x277CBF3A8] || height != *(MEMORY[0x277CBF3A8] + 8))
    {
      v14 = [v11 attributionInfo];
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

    v17 = [(IMDFileTransferCenter *)self _attachmentStoreSharedInstance];
    [v17 updateAttachment:v11];

    [(IMDFileTransferCenter *)self _reindexTransferIfNeededForPreviewGenerationStateChange:v11 originalPreviewGenerationState:v12];
    [(IMDFileTransferCenter *)self _postUpdated:v11];
  }

  else
  {
    v18 = IMLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D2978(v7, v18);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)generatePreviewForTransfer:(id)a3 messageItem:(id)a4 senderContext:(id)a5
{
  v7 = MEMORY[0x277D1ADF8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v13 = [v7 sharedInstance];
  v11 = [v10 localPath];
  v12 = [v9 balloonBundleID];

  [v13 generatePreviewForTransfer:v10 attachmentPath:v11 balloonBundleID:v12 senderContext:v8 completionBlock:&unk_283F19D08];
}

- (void)setRecoverableErrorForTransfer:(id)a3 error:(int64_t)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([v6 length])
  {
    v7 = [(IMDFileTransferCenter *)self transferForGUID:v6];
    v8 = v7;
    if (v7 && [v7 transferState] != 6)
    {
      v9 = IMLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134218242;
        v13 = a4;
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEFAULT, "IMDFileTransfer posting recoverable error state (%zd) for IMFileTransfer %@", &v12, 0x16u);
      }

      [v8 _setTransferState:7];
      [v8 _setError:a4];
      [(IMDFileTransferCenter *)self _postUpdated:v8];
      v10 = +[IMDAttachmentStore sharedInstance];
      [v10 storeAttachment:v8 associateWithMessageWithGUID:0];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)failTransfer:(id)a3 error:(id)a4
{
  v10 = a3;
  v6 = a4;
  if ([v10 length])
  {
    v7 = [(IMDFileTransferCenter *)self transferForGUID:v10];
    v8 = [v6 localizedDescription];
    [v7 _setErrorDescription:v8];

    [(IMDFileTransferCenter *)self failTransfer:v10 reason:24];
    [(IMDFileTransferCenter *)self _clearProgressForTransferGUID:v10];
    [(IMDFileTransferCenter *)self _updateContextStamp];
    v9 = +[IMDAttachmentStore sharedInstance];
    [v9 storeAttachment:v7 associateWithMessageWithGUID:0];

    [(IMDFileTransferCenter *)self postHubbleDownloadFailedIfNeededForTransfer:v7 error:v6];
  }
}

- (void)acceptTransfer:(id)a3 path:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([v7 length])
  {
    [(IMDFileTransferCenter *)self _handleFileTransfer:v7 acceptedWithPath:v6 autoRename:1 overwrite:0 options:0 postNotification:0];
    [(IMDFileTransferCenter *)self _updateContextStamp];
  }
}

- (void)_handleFileTransfer:(id)a3 createdWithProperties:(id)a4 withAuditToken:(id *)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([v8 length])
  {
    v10 = objc_alloc_init(MEMORY[0x277D1A9C0]);
    [v10 _updateWithDictionaryRepresentation:v9];
    if (!a5)
    {
      goto LABEL_18;
    }

    v11 = [v10 localPath];
    if (!v11)
    {
      goto LABEL_18;
    }

    v12 = v11;
    v13 = [v10 sandboxToken];
    v14 = v13;
    if (v13)
    {
      [v13 UTF8String];
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
        v28 = [(IMDFileTransferCenter *)self guidToTransferMap];
        v29 = [v28 objectForKeyedSubscript:v8];

        v30 = [(IMDFileTransferCenter *)self guidToTransferMap];
        [v30 setObject:v10 forKeyedSubscript:v8];

        v31 = [MEMORY[0x277CCAB98] defaultCenter];
        [v31 __mainThreadPostNotificationName:@"__kIMDFileTransferCreatedNotification" object:v10];

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
        v25 = [v24 broadcasterForFileTransferListeners];
        v26 = [v10 guid];
        v27 = [v10 _dictionaryRepresentation];
        [v25 fileTransfer:v26 createdWithProperties:v27];
LABEL_22:

        goto LABEL_23;
      }

      v16 = IMLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D2A58();
      }
    }

    v17 = [v12 UTF8String];
    v18 = *&a5->var0[4];
    *buf = *a5->var0;
    v36 = v18;
    v34 = v17;
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
        LODWORD(v36) = a5;
        WORD2(v36) = 2112;
        *(&v36 + 6) = v12;
        _os_log_error_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_ERROR, "Denying transfer, (check %d, errno %d) client with audit token:%u not allowed to access request path:%@", buf, 0x1Eu);
      }

      [v10 _setError:{30, v34}];
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Denying transfer, (check %d, errno %d) client with audit token:%u not allowed to access request path:%@", v20, *__error(), a5, v12];
      [v10 _setErrorDescription:v22];

      v23 = [MEMORY[0x277CCAB98] defaultCenter];
      [v23 __mainThreadPostNotificationName:@"__kIMDFileTransferRejectedNotification" object:v10];

      v24 = +[IMDBroadcastController sharedProvider];
      v25 = [v24 broadcasterForFileTransferListeners];
      v26 = [v10 guid];
      v27 = [v10 _dictionaryRepresentation];
      [v25 fileTransfer:v26 rejectedWithProperties:v27];
      goto LABEL_22;
    }

    goto LABEL_17;
  }

LABEL_24:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_updateAndPostCachedTransfer:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    v5 = [v4 guid];
    v6 = [v5 length];

    v4 = v10;
    if (v6)
    {
      v7 = [v10 guid];
      v8 = [(IMDFileTransferCenter *)self transferForGUID:v7];

      [(IMDFileTransferCenter *)self _updateContextStamp];
      if (v8)
      {
        if (v8 != v10)
        {
          v9 = [v10 _dictionaryRepresentation];
          [v8 _updateWithDictionaryRepresentation:v9];
        }

        [(IMDFileTransferCenter *)self _postUpdated:v8];
      }

      v4 = v10;
    }
  }
}

- (void)_handleFileTransfer:(id)a3 updatedWithProperties:(id)a4 isStickerReposition:(BOOL)a5 repositionedLocally:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v17 = a3;
  v10 = a4;
  if ([v17 length])
  {
    v11 = [(IMDFileTransferCenter *)self transferForGUID:v17];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 transferredFilename];
      v14 = [v13 copy];

      [v12 _updateWithDictionaryRepresentation:v10];
      if (v7)
      {
        if (v6)
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

      v16 = [(IMDFileTransferCenter *)self _attachmentStoreSharedInstance];
      [v16 updateAttachment:v12];

      [(IMDFileTransferCenter *)self _updateContextStamp];
      if (!v7)
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

- (void)_handleFileTransfer:(id)a3 rejectedWithProperties:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "File transfer rejected for guid: %@", &v8, 0xCu);
  }

  [(IMDFileTransferCenter *)self _handleFileTransferRemoved:v5];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleFileTransfer:(id)a3 acceptedWithPath:(id)a4 autoRename:(BOOL)a5 overwrite:(BOOL)a6 options:(int64_t)a7 postNotification:(BOOL)a8
{
  v8 = a8;
  v39 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  if ([v12 length])
  {
    v14 = [(IMDFileTransferCenter *)self guidToTransferMap];
    v15 = [v14 objectForKeyedSubscript:v12];

    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v12;
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
          [(IMDFileTransferCenter *)self failTransfer:v12 reason:25];
        }

        else
        {
          [(IMDFileTransferCenter *)self _addActiveTransfer:v12];
          if (!v13)
          {
            v31 = [v15 filename];
            v32 = [v31 lastPathComponent];

            v33 = [MEMORY[0x277CCAA00] defaultManager];
            v34 = [v33 im_randomTemporaryFileURLWithFileName:v32];
            v13 = [v34 path];
          }

          [v15 _setTransferState:1];
          [v15 _setFetchOptions:a7];
          if (v13)
          {
            v35 = [MEMORY[0x277CBEBC0] fileURLWithPath:v13];
            [v15 _setLocalURL:v35];
          }

          if (v8)
          {
            v36 = [MEMORY[0x277CCAB98] defaultCenter];
            [v36 __mainThreadPostNotificationName:@"__kIMDFileTransferAcceptedNotification" object:v15];
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
        v22 = [v15 existsAtLocalPath];
        v23 = @"NO";
        if (v22)
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
      v28 = [v26 stringWithFormat:@"Not enough diskspace to download file transfer with guid: %@, transfer: %@, total bytes: %@", v12, v15, v27];
      v29 = [IMDFileTransferCenter localFileURLRetrievalErrorWithReason:12 description:v28];
      [(IMDFileTransferCenter *)self postHubbleDownloadFailedIfNeededForTransfer:v15 error:v29];
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_handleFileTransfers:(id)a3 autoRename:(BOOL)a4 overwrite:(BOOL)a5 options:(int64_t)a6 postNotification:(BOOL)a7
{
  v40 = a7;
  v57 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v42 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v43 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v9 = v8;
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
            v18 = IMStringFromTransferState();
            [v15 cloudKitSyncState];
            v19 = IMStringFromCKSyncState();
            v20 = [v15 existsAtLocalPath];
            v21 = @"NO";
            if (v20)
            {
              v21 = @"YES";
            }

            v22 = [v17 stringWithFormat:@"Invalid transfer state. transferState: %@ cloudKitSyncState: %@ existsAtLocalPath: %@", v18, v19, v21];
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
            v18 = [v24 localPath];

            if (!v18)
            {
              v25 = [v15 filename];
              v26 = [v25 lastPathComponent];

              v27 = [MEMORY[0x277CCAA00] defaultManager];
              v28 = [v27 im_randomTemporaryFileURLWithFileName:v26];
              v18 = [v28 path];

              v9 = v41;
            }

            [v15 _setTransferState:1];
            [v15 _setFetchOptions:a6];
            if (v18)
            {
              v29 = [MEMORY[0x277CBEBC0] fileURLWithPath:v18];
              [v15 _setLocalURL:v29];
            }

            if (v15)
            {
              [v43 setObject:v15 forKeyedSubscript:v14];
              [v42 setObject:v18 forKeyedSubscript:v14];
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
    if (v40)
    {
      v31 = [MEMORY[0x277CCAB98] defaultCenter];
      v32 = [v43 allValues];
      [v31 __mainThreadPostNotificationName:@"__kIMDFileTransferBatchAcceptedNotification" object:v32];
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

- (void)_handleFileTransferStopped:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "stopping transfer to guid", v12, 2u);
    }

    v6 = [(IMDFileTransferCenter *)self guidToTransferMap];
    v7 = [v6 objectForKeyedSubscript:v4];

    [v7 _setFetchOptions:0];
    if (([v7 isFinished] & 1) == 0)
    {
      [(IMDFileTransferCenter *)self _removeActiveTransfer:v4];
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
      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      [v9 __mainThreadPostNotificationName:@"__kIMDFileTransferStoppedNotification" object:v7];

      [(IMDFileTransferCenter *)self _updateContextStamp];
      [(IMDFileTransferCenter *)self _clearProgressForTransferGUID:v4];
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

- (void)_handleFileTransferRemoved:(id)a3
{
  v9 = a3;
  if ([v9 length])
  {
    v4 = [(IMDFileTransferCenter *)self guidToTransferMap];
    v5 = [v4 objectForKeyedSubscript:v9];

    [v5 _setFetchOptions:0];
    if (([v5 isFinished] & 1) == 0 && (objc_msgSend(v5, "transferState") || -[IMDFileTransferCenter _hasActiveTransferWithGUID:](self, "_hasActiveTransferWithGUID:", v9)))
    {
      [(IMDFileTransferCenter *)self _handleFileTransferStopped:v9];
    }

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 __mainThreadPostNotificationName:@"__kIMDFileTransferRemovedNotification" object:v5];

    v7 = [(IMDFileTransferCenter *)self guidToTransferMap];
    [v7 setObject:0 forKeyedSubscript:v9];

    [(IMDFileTransferCenter *)self _updateContextStamp];
    if (v5)
    {
      [(IMDFileTransferCenter *)self _postUpdated:v5];
    }

    [(IMDFileTransferCenter *)self _clearProgressForTransferGUID:v9];
    v8 = [IMDFileTransferCenter localFileURLRetrievalErrorWithReason:6 description:@"File transfer removed."];
    [(IMDFileTransferCenter *)self postHubbleDownloadFailedIfNeededForTransfer:v5 error:v8];
  }
}

- (id)_getNewFileTransferForStoredAttachmentPayloadDataWithTransferGUID:(id)a3 messageGUID:(id)a4
{
  v6 = a4;
  v7 = [(IMDFileTransferCenter *)self transferForGUID:a3];
  [v7 setMessageGUID:v6];

  [v7 setHideAttachment:1];

  return v7;
}

- (id)guidsForStoredAttachmentBlastDoorPayloadData:(id)a3 messageGUID:(id)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 contents];
  if ([v7 count])
  {
    v48 = [MEMORY[0x277CBEB18] array];
    v47 = [MEMORY[0x277CBEB18] array];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v42 = v7;
    obj = v7;
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
          v10 = [MEMORY[0x277CCACA8] stringGUID];
          v11 = [v10 stringByAppendingPathExtension:v45];

          v12 = [MEMORY[0x277CCAA00] defaultManager];
          v13 = [v12 im_randomTemporaryFileURLWithFileName:v11];

          v14 = [v9 content];
          v15 = [v14 type];

          if (v15 == 1)
          {
            v27 = IMLogHandleForCategory();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              sub_22B7D2AC0(&v51, v52, v27);
            }

            v28 = [v9 content];
            v29 = [v28 other];
            v30 = [v29 data];

            v50 = 0;
            LOBYTE(v28) = [v30 writeToURL:v13 options:1 error:&v50];
            v25 = v50;
            if ((v28 & 1) == 0)
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

          else if (v15)
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

            v17 = [v9 content];
            v18 = [v17 astc];
            v19 = [v18 image];
            v20 = [v19 cgImage];

            v21 = [v9 content];
            v22 = [v21 astc];
            v23 = [v22 originalUTIType];
            v24 = CGImageDestinationCreateWithURL(v13, v23, 1uLL, 0);

            if (v24)
            {
              CGImageDestinationAddImage(v24, v20, 0);
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
          v34 = [(IMDFileTransferCenter *)self _getNewFileTransferForStoredAttachmentPayloadDataWithTransferGUID:v33 messageGUID:v6];
          v35 = +[IMDAttachmentStore sharedInstance];
          [v35 storeAttachment:v34 associateWithMessageWithGUID:v6];

          v36 = [(IMDFileTransferCenter *)self transferForGUID:v33];
          [v48 addObject:v33];
          v37 = [v36 localPath];
          v38 = v37;
          if (v37)
          {
            v39 = v37;
          }

          else
          {
            v39 = &stru_283F23018;
          }

          [v47 addObject:v39];
        }

        v49 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
      }

      while (v49);
    }

    [(IMDFileTransferCenter *)self broadcastTransfersWithGUIDs:v48 atLocalPaths:v47];
    v7 = v42;
  }

  else
  {
    v48 = MEMORY[0x277CBEBF8];
  }

  v40 = *MEMORY[0x277D85DE8];

  return v48;
}

- (id)guidsForStoredAttachmentPayloadData:(id)a3 messageGUID:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v32 = a4;
  if ([v6 count])
  {
    v33 = [MEMORY[0x277CBEB18] array];
    v31 = [MEMORY[0x277CBEB18] array];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v27 = v6;
    obj = v6;
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
          v9 = [MEMORY[0x277CCACA8] stringGUID];
          v10 = [v9 stringByAppendingPathExtension:v29];

          v11 = [MEMORY[0x277CCAA00] defaultManager];
          v12 = [v11 im_randomTemporaryFileURLWithFileName:v10];
          v13 = [v12 path];

          v14 = [v13 stringByResolvingAndStandardizingPath];

          v35 = 0;
          LOBYTE(v8) = [v8 writeToFile:v14 options:1 error:&v35];
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

          v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:v14 isDirectory:0];
          v18 = [(IMDFileTransferCenter *)self createNewOutgoingTransferWithLocalFileURL:v17];
          v19 = [(IMDFileTransferCenter *)self _getNewFileTransferForStoredAttachmentPayloadDataWithTransferGUID:v18 messageGUID:v32];
          v20 = +[IMDAttachmentStore sharedInstance];
          [v20 storeAttachment:v19 associateWithMessageWithGUID:v32];

          v21 = [(IMDFileTransferCenter *)self transferForGUID:v18];
          [v33 addObject:v18];
          v22 = [v21 localPath];
          v23 = v22;
          if (v22)
          {
            v24 = v22;
          }

          else
          {
            v24 = &stru_283F23018;
          }

          [v31 addObject:v24];
        }

        v34 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v34);
    }

    [(IMDFileTransferCenter *)self broadcastTransfersWithGUIDs:v33 atLocalPaths:v31];
    v6 = v27;
  }

  else
  {
    v33 = MEMORY[0x277CBEBF8];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v33;
}

- (id)guidsForStoredAttachmentPayloadDataURLs:(id)a3 messageGUID:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v24 = [MEMORY[0x277CBEB18] array];
    v8 = [MEMORY[0x277CBEB18] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v22 = v6;
    obj = v6;
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
          v14 = [(IMDFileTransferCenter *)self _getNewFileTransferForStoredAttachmentPayloadDataWithTransferGUID:v13 messageGUID:v7];
          v15 = +[IMDAttachmentStore sharedInstance];
          [v15 storeAttachment:v14 associateWithMessageWithGUID:v7];

          v16 = [(IMDFileTransferCenter *)self transferForGUID:v13];
          [v24 addObject:v13];
          v17 = [v16 localPath];
          v18 = v17;
          if (v17)
          {
            v19 = v17;
          }

          else
          {
            v19 = &stru_283F23018;
          }

          [v8 addObject:v19];
        }

        v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v10);
    }

    [(IMDFileTransferCenter *)self broadcastTransfersWithGUIDs:v24 atLocalPaths:v8];
    v6 = v22;
  }

  else
  {
    v24 = MEMORY[0x277CBEBF8];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)retrieveLocalFileURLForFileTransferWithGUIDs:(id)a3 options:(int64_t)a4 completion:(id)a5
{
  v96[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v70 = v8;
  if (![v7 count])
  {
    v55 = IMLogHandleForCategory();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D2B40(v55);
    }

    if (v8)
    {
      v56 = MEMORY[0x277CCA9B8];
      v57 = *MEMORY[0x277D19E60];
      v95[0] = *MEMORY[0x277CCA450];
      v58 = [MEMORY[0x277CCA8D8] mainBundle];
      v59 = [v58 localizedStringForKey:@"File transfer local file urls retrieval operation was unsuccessful." value:&stru_283F23018 table:0];
      v96[0] = v59;
      v95[1] = *MEMORY[0x277CCA470];
      v60 = [MEMORY[0x277CCA8D8] mainBundle];
      v61 = [v60 localizedStringForKey:@"The given GUIDs was empty." value:&stru_283F23018 table:0];
      v96[1] = v61;
      v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:2];
      v63 = [v56 errorWithDomain:v57 code:24 userInfo:v62];

      v8 = v70;
      (*(v8 + 2))(v8, 0, 0, 0, 0, 0, v63);
    }

    goto LABEL_60;
  }

  obj = objc_opt_new();
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v65 = v7;
  v9 = v7;
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
  v69 = self;
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
          v16 = [v14 localPath];
          *buf = 136446722;
          v89 = "[IMDFileTransferCenter retrieveLocalFileURLForFileTransferWithGUIDs:options:completion:]";
          v90 = 2112;
          v91 = v13;
          v92 = 2112;
          v93 = v16;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s File transfer %@ exists at local path %@, no need to move further", buf, 0x20u);
        }

        if (v8)
        {
          v17 = [v14 localPath];
          v18 = [v14 createAndPersistLivePhotoBundleIfNecessary];
          (*(v8 + 2))(v8, 1, v13, 0, v17, v18, 0);

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

        if (v8)
        {
          v20 = MEMORY[0x277CCA9B8];
          v86[0] = v67;
          v21 = [MEMORY[0x277CCA8D8] mainBundle];
          v22 = [v21 localizedStringForKey:@"File transfer local file url retrieval operation was unsuccessful." value:&stru_283F23018 table:0];
          v86[1] = v66;
          v87[0] = v22;
          [MEMORY[0x277CCA8D8] mainBundle];
          v24 = v23 = v9;
          v25 = [v24 localizedStringForKey:@"The given GUID references an attachment which is in thumbnail state. You don't want to analyze this value:Skip and retry later table:{user did not tap to downloaded.", &stru_283F23018, 0}];
          v87[1] = v25;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:2];
          v17 = [v20 errorWithDomain:v68 code:24 userInfo:v26];

          v11 = v71;
          v9 = v23;
          self = v69;

          v8 = v70;
          (*(v8 + 2))(v8, 0, v13, 0, 0, 0, v17);
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
            v29 = [v14 localPath];
            *buf = 136446722;
            v89 = "[IMDFileTransferCenter retrieveLocalFileURLForFileTransferWithGUIDs:options:completion:]";
            v90 = 2112;
            v91 = v13;
            v92 = 2112;
            v93 = v29;
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
        if (v8)
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
            v34 = [MEMORY[0x277CBEB18] array];
            [(NSMutableDictionary *)self->_localFileURLRetrievalWithGuidCompletionHandlers setObject:v34 forKeyedSubscript:v13];
          }

          v17 = [(NSMutableDictionary *)self->_localFileURLRetrievalWithGuidCompletionHandlers objectForKeyedSubscript:v13];
          v35 = _Block_copy(v8);
          [v17 addObject:v35];

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
          v44 = [(IMDFileTransferCenter *)self _retrieveLocalFileURLForFileTransferWithGUID:v43 options:a4 outTransfer:&v76 outError:&v75, v65];
          v45 = v76;
          v46 = v75;
          if (v46)
          {
            v47 = self;
            v48 = v45;
            v49 = v43;
            v50 = v46;
            v51 = v44;
LABEL_43:
            [(IMDFileTransferCenter *)v47 _hubbleTransferCompleted:v48 withGUID:v49 error:v50 suggestedRetryGUID:v51];
            goto LABEL_44;
          }

          if ([v45 existsAtLocalPath])
          {
            v47 = self;
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

    v7 = v65;
    v8 = v70;
    if ([v38 count])
    {
      [(IMDFileTransferCenter *)self _handleFileTransfers:v38 autoRename:1 overwrite:0 options:a4 postNotification:1];
      v53 = IMLogHandleForCategory();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = [v38 allKeys];
        *buf = 136446466;
        v89 = "[IMDFileTransferCenter retrieveLocalFileURLForFileTransferWithGUIDs:options:completion:]";
        v90 = 2112;
        v91 = v54;
        _os_log_impl(&dword_22B4CC000, v53, OS_LOG_TYPE_DEFAULT, "%{public}s Successfully started explicit download for local file url retrieval of transfer with GUIDs %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v7 = v65;
  }

LABEL_60:
  v64 = *MEMORY[0x277D85DE8];
}

- (void)_hubbleTransferCompleted:(id)a3 withGUID:(id)a4 error:(id)a5 suggestedRetryGUID:(id)a6
{
  v60 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v38 = a6;
  v39 = v12;
  v13 = IMLogHandleForCategory();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      *buf = 136446722;
      v55 = "[IMDFileTransferCenter _hubbleTransferCompleted:withGUID:error:suggestedRetryGUID:]";
      v56 = 2112;
      v57 = v11;
      v58 = 2112;
      v59 = v12;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s Failed to retrieve local file URL for %@: %@", buf, 0x20u);
    }
  }

  else if (v14)
  {
    v15 = [v10 localPath];
    *buf = 136446722;
    v55 = "[IMDFileTransferCenter _hubbleTransferCompleted:withGUID:error:suggestedRetryGUID:]";
    v56 = 2112;
    v57 = v11;
    v58 = 2112;
    v59 = v15;
    _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s Successfully retrieved local file URL for %@ at path %@", buf, 0x20u);
  }

  v16 = [(NSMutableDictionary *)self->_localFileURLRetrievalWithGuidCompletionHandlers objectForKeyedSubscript:v11];
  [(NSMutableDictionary *)self->_localFileURLRetrievalWithGuidCompletionHandlers removeObjectForKey:v11];
  v17 = [v10 existsAtLocalPath];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v16;
  v18 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v18)
  {
    v19 = (v12 == 0) & v17;
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
          v23 = [v10 localPath];
          v24 = [v10 createAndPersistLivePhotoBundleIfNecessary];
          (*(v22 + 16))(v22, 1, v11, 0, v23, v24, 0);
        }

        else
        {
          (*(v22 + 16))(*(*(&v41 + 1) + 8 * i), 0, v11, v38, 0, 0, v39);
        }
      }

      v18 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v18);
  }

  v25 = [v10 existsAtLocalPath];
  v26 = IMLogHandleForCategory();
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
  if (((v39 == 0) & v25) == 0)
  {
    if (v27)
    {
      *buf = 138412290;
      v55 = v11;
      _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_DEFAULT, "Sending completion notification for explicit download of transfer with guid %@", buf, 0xCu);
    }

    v47 = @"__kIMDFileTransferExplicitDownloadCompletedSuccessKey";
    v34 = MEMORY[0x277CBEC28];
    v48 = MEMORY[0x277CBEC28];
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v32 = v35;
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
    v28 = [v10 guid];
    *buf = 138412290;
    v55 = v28;
    _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_DEFAULT, "Sending completion notification for explicit download of transfer: %@", buf, 0xCu);
  }

  v51 = @"__kIMDFileTransferExplicitDownloadCompletedSuccessKey";
  v29 = MEMORY[0x277CBEC38];
  v52 = MEMORY[0x277CBEC38];
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  v31 = [v10 localURL];

  if (v31)
  {
    v49[0] = @"__kIMDFileTransferExplicitDownloadCompletedSuccessKey";
    v49[1] = @"__kIMDFileTransferExplicitDownloadCompletedFileURLKey";
    v50[0] = v29;
    v32 = [v10 localURL];
    v50[1] = v32;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];

    v30 = v33;
LABEL_25:
  }

LABEL_27:
  v36 = [MEMORY[0x277CCAB98] defaultCenter];
  [v36 postNotificationName:@"__kIMDFileTransferExplicitDownloadCompletedNotification" object:v10 userInfo:v30];

  v37 = *MEMORY[0x277D85DE8];
}

- (id)_messageForFileTransferWithGUID:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
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
      v14 = v3;
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
      v14 = v3;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s Failed to decompose attachment GUID %@, to get message GUID", &v11, 0x16u);
    }

    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)_isFileTransferWithGUIDFromKnownSender:(id)a3
{
  v3 = [(IMDFileTransferCenter *)self _messageForFileTransferWithGUID:a3];
  v4 = v3;
  if (v3)
  {
    if ([v3 isFromMe])
    {
      v5 = 1;
    }

    else
    {
      v6 = [v4 sender];
      if ([v6 length])
      {
        v7 = +[IMDChatRegistry sharedInstance];
        v5 = [v7 _hasSavedContactCardForHandle:v6];
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

- (id)_findTransferGUIDMatchingSpotlightDonatedSpeculativeTransferGUID:(id)a3
{
  v4 = a3;
  v5 = [(IMDFileTransferCenter *)self _messageForFileTransferWithGUID:v4];
  v6 = [v5 findTransferGUIDMatchingSpotlightDonatedSpeculativeTransferGUID:v4];

  return v6;
}

- (id)_retrieveLocalFileURLForFileTransferWithGUID:(id)a3 options:(int64_t)a4 outTransfer:(id *)a5 outError:(id *)a6
{
  v8 = a4;
  v46 = *MEMORY[0x277D85DE8];
  v10 = a3;
  if ([v10 length])
  {
    v11 = +[IMDAttachmentStore sharedInstance];
    v12 = [v11 attachmentWithGUID:v10];

    if (v12)
    {
      v13 = v10;
      if (!a5)
      {
LABEL_5:
        if ([v12 existsAtLocalPath])
        {
          v15 = [v12 localPath];
          v16 = IMLogHandleForCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446722;
            v41 = "[IMDFileTransferCenter _retrieveLocalFileURLForFileTransferWithGUID:options:outTransfer:outError:]";
            v42 = 2112;
            v43 = v13;
            v44 = 2112;
            v45 = v15;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s Transfer with guid %@ already exists on disk at path %@", buf, 0x20u);
          }

          v10 = v13;
LABEL_32:
          v20 = v10;
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

          if (a6)
          {
            v29 = v28;
            *a6 = v28;
          }

          v10 = v13;

          goto LABEL_32;
        }

        v26 = IMLogHandleForCategory();
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
        if ((v8 & 1) == 0)
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
          v34 = [v12 guid];
          *buf = 136446466;
          v41 = "[IMDFileTransferCenter _retrieveLocalFileURLForFileTransferWithGUID:options:outTransfer:outError:]";
          v42 = 2112;
          v43 = v34;
          _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_DEFAULT, "%{public}s Transfer %@ does not already exist on disk. Starting explicit download for local file url retrieval.", buf, 0x16u);
        }

        v35 = [v12 guid];
        v36 = [(IMDFileTransferCenter *)self transferForGUID:v35];

        if (!v36)
        {
          v37 = [v12 guid];
          [(IMDFileTransferCenter *)self _addTransfer:v12 forGUID:v37 shouldNotify:0];
        }

        [(IMDFileTransferCenter *)self addHubbleRequestedTransfer:v12];
        v33 = v13;
        goto LABEL_44;
      }

LABEL_4:
      v14 = v12;
      *a5 = v12;
      goto LABEL_5;
    }

    if ((IMFileTransferGUIDIsTemporary() & 1) == 0)
    {
      v13 = [(IMDFileTransferCenter *)self _findTransferGUIDMatchingSpotlightDonatedSpeculativeTransferGUID:v10];
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
            v43 = v10;
            _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_DEFAULT, "Found a file transfer %@ that matches donated guid %@", buf, 0x16u);
          }

          if (!a5)
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
      v43 = v10;
      _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_DEFAULT, "%{public}s No file transfer associated with GUID %@, failing local file url retrieval", buf, 0x16u);
    }

    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"There was no file transfer associated with GUID %@.", v10];
    v12 = [IMDFileTransferCenter localFileURLRetrievalErrorWithReason:9 description:v31];

    if (a6)
    {
      v32 = v12;
      *a6 = v12;
    }

    v33 = v10;
LABEL_44:
    v10 = v33;
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
  if (a6)
  {
    v19 = v18;
    v20 = 0;
    *a6 = v12;
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
  v4 = [(IMDFileTransferCenter *)self guidToTransferMap];
  v5 = [v4 allValues];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B57AEF0;
  v8[3] = &unk_278704E30;
  v9 = v3;
  v6 = v3;
  [v5 enumerateObjectsUsingBlock:v8];

  v7 = [(IMDFileTransferCenter *)self guidToTransferMap];
  [v7 removeObjectsForKeys:v6];
}

- (BOOL)_shouldDownloadAssetForTransfer:(id)a3 forMessageItem:(id)a4
{
  v5 = a3;
  if ([a4 isAudioMessage] & 1) != 0 || (objc_msgSend(v5, "isSticker") & 1) != 0 || (objc_msgSend(v5, "hideAttachment") & 1) != 0 || (objc_msgSend(v5, "isLocation"))
  {
    v6 = 1;
  }

  else
  {
    v6 = [v5 isContact];
  }

  return v6;
}

- (id)updateTransfersWithCKRecord:(id)a3 recordWasFetched:(BOOL)a4 downloadAsset:(BOOL *)a5
{
  v6 = a4;
  v67 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (v8)
  {
    v55 = a5;
    v58 = [MEMORY[0x277D1A9C0] transferGUIDOfRecord:v8];
    v9 = IMMessageGuidFromIMFileTransferGuid();
    v10 = [MEMORY[0x277D1A9C0] attachmentRecordHasAsset:v8];
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

    v13 = [(IMDFileTransferCenter *)self _messageStoreSharedInstance];
    v14 = [v13 messageWithGUID:v9];

    v15 = [(IMDFileTransferCenter *)self _messageStoreSharedInstance];
    v57 = [v15 itemWithGUID:v9];

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
    v18 = [(IMDFileTransferCenter *)self _attachmentStoreSharedInstance];
    [v18 updateTemporaryTransferGUIDsOnMessageIfNeeded:v14];

    v19 = [(IMDFileTransferCenter *)self _attachmentStoreSharedInstance];
    v20 = [v19 attachmentWithGUID:v58];

    if (!v20)
    {
      if (!v6 && IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v60 = v58;
          _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "IMDFileTransferCenter - Update from CKRecord found no existing attachment for %@, but was on the write path", buf, 0xCu);
        }
      }

      v25 = [objc_alloc(MEMORY[0x277D1A9C0]) initWithCKRecord:v8 writeAssetToDisk:1];
      v26 = v25;
      if (v10)
      {
        v27 = 5;
      }

      else
      {
        v27 = 0;
      }

      [(__CFString *)v25 _setTransferState:v27];
      [(__CFString *)v26 setCloudKitSyncState:1];
      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = @"NO";
          *buf = 138412802;
          v60 = v26;
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
        v30 = [(IMDFileTransferCenter *)self _attachmentStoreSharedInstance];
        [v30 storeAttachment:v26 associateWithMessageWithGUID:v9];

        [(IMDFileTransferCenter *)self _updateAndPostCachedTransfer:v26];
        v31 = [(IMDFileTransferCenter *)self _shouldDownloadAssetForTransfer:v26 forMessageItem:v14]|| v56 != 0;
        if (IMOSLoggingEnabled())
        {
          v32 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v33 = @"YES";
            if (v55)
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

        if (!((v55 == 0 || (v31 & 1) == 0) | v10 & 1))
        {
          v36 = [(__CFString *)v26 guid];
          v37 = [(IMDFileTransferCenter *)self transferForGUID:v36];

          if (IMOSLoggingEnabled())
          {
            v38 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              *buf = 138413058;
              v60 = v26;
              v61 = 2112;
              v62 = v37;
              v63 = 2112;
              v64 = v14;
              v65 = 2112;
              v66 = v56;
              _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Going to auto downloading asset at the end of batch fetch for transfer: %@ addedTransfer %@ for messageItem: %@ groupPhotoUpdate: %@", buf, 0x2Au);
            }
          }

          *v55 = 1;
          if (!v37)
          {
            v39 = [(__CFString *)v26 guid];
            [(IMDFileTransferCenter *)self addTransfer:v26 forGUID:v39];
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

        v52 = [(IMDFileTransferCenter *)self _attachmentStoreSharedInstance];
        [v52 storeAttachment:v26 associateWithMessageWithGUID:0];

        [(IMDFileTransferCenter *)self _updateAndPostCachedTransfer:0];
      }

      v46 = [(__CFString *)v26 guid];
      goto LABEL_87;
    }

    if (v6)
    {
      if (v10)
      {
        if ([(__CFString *)v20 wantsAssetFromRecord:v8])
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
          [(__CFString *)v20 moveAssetFromRecord:v8];
        }

        else
        {
          v47 = [(__CFString *)v20 hasPreferredAssetOverRecord:v8];
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
    v41 = [v8 recordID];
    v42 = [v41 recordName];
    [(__CFString *)v20 setCloudKitRecordID:v42];

    v26 = [v8 copyEncodedSystemFields];
    [(__CFString *)v20 setCloudKitServerChangeTokenBlob:v26];
    if (IMOSLoggingEnabled())
    {
      v43 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = @"NO";
        *buf = 138412802;
        if (v6)
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

    v45 = [(IMDFileTransferCenter *)self _attachmentStoreSharedInstance];
    [v45 storeAttachment:v20 associateWithMessageWithGUID:v9];

    [(IMDFileTransferCenter *)self _updateAndPostCachedTransfer:v20];
    v46 = [(__CFString *)v20 guid];
LABEL_87:
    v23 = v46;

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

- (void)markTransferAsNotSyncedSuccessfully:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "markTransferAsNotSyncedSuccessfullyUsingCKRecord transferGUID %@", &v11, 0xCu);
    }
  }

  v6 = [(IMDFileTransferCenter *)self _attachmentStoreSharedInstance];
  v7 = [v6 attachmentWithGUID:v4];

  if (v7)
  {
    [v7 setCloudKitSyncState:2];
    v8 = [(IMDFileTransferCenter *)self _attachmentStoreSharedInstance];
    [v8 updateAttachment:v7];
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Could not find transferGUID %@ to mark as not synced successfully", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)markTransferAsNotSuccessfullyDownloadedFromCloud:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [v4 guid];
        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "markTransferAsNotSyncSuccessfullyDownloadedFromCloud transfer %@", &v9, 0xCu);
      }
    }

    [v4 setCloudKitSyncState:5];
    v7 = [(IMDFileTransferCenter *)self _attachmentStoreSharedInstance];
    [v7 updateAttachment:v4];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)resetSyncStateForRecord:(id)a3 toState:(int64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277D1A9C0] transferGUIDOfRecord:v6];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = 138412546;
      v15 = v7;
      v16 = 2048;
      v17 = a4;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "resetSyncStateForRecord transfer %@ toNewState:%ld", &v14, 0x16u);
    }
  }

  v9 = [(IMDFileTransferCenter *)self _attachmentStoreSharedInstance];
  v10 = [v9 attachmentWithGUID:v7];

  if (v10)
  {
    [v10 setCloudKitServerChangeTokenBlob:0];
    [v10 setCloudKitSyncState:a4];
    [v10 setCloudKitRecordID:0];
    v11 = [(IMDFileTransferCenter *)self _attachmentStoreSharedInstance];
    [v11 updateAttachment:v10];
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 138412546;
      v15 = v7;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Tried to clear the sync state for a transfer we don't have on disk transfer: %@ record: %@", &v14, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)populateLocalURLsForTransfer:(id)a3 fromCKRecord:(id)a4
{
  v70[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 _assetForKey:@"lqa"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 fileURL];
    v55 = v9 != 0;
    if (v9)
    {
      [v5 _setLocalURL:v9];
      v10 = [v9 path];
      [v5 _setLocalPath:v10];

      v11 = [MEMORY[0x277CCAA00] defaultManager];
      v69 = *MEMORY[0x277CCA1B0];
      v70[0] = *MEMORY[0x277CCA1A0];
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:&v69 count:1];
      v13 = [v9 path];
      v58 = 0;
      v14 = [v11 setAttributes:v12 ofItemAtPath:v13 error:&v58];
      v15 = v58;

      if ((v14 & 1) == 0 && IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = [v9 path];
          *buf = 138412546;
          v62 = v17;
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
        v19 = [v6 _stringForKey:@"aguid"];
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

  v20 = [v6 _assetForKey:@"avid"];
  if (v20)
  {
    v51 = [MEMORY[0x277D1A9C0] transferMetaDataFromRecord:v6];
    v21 = JWDecodeDictionary();
    v22 = [v21 objectForKeyedSubscript:@"pathc"];
    v54 = [v22 im_lastPathComponent];

    v53 = [v5 mimeType];
    v52 = [v5 type];
    v23 = [v5 guid];
    v24 = IMDCopyAttachmentPersistentPath();
    if ([v24 length])
    {
      v25 = [v21 objectForKeyedSubscript:@"pathc"];
      v50 = [v25 im_lastPathComponent];

      if ([v50 length])
      {
        v26 = [v20 fileURL];
        v49 = [v26 path];

        if ([v49 length])
        {
          v27 = [v24 stringByDeletingLastPathComponent];
          v48 = [v27 stringByAppendingPathComponent:v50];

          v28 = [v48 stringByDeletingLastPathComponent];
          IMSharedHelperEnsureDirectoryExistsAtPath();

          v29 = [MEMORY[0x277CCAA00] defaultManager];
          v57 = 0;
          v30 = [v29 moveItemAtPath:v49 toPath:v48 error:&v57];
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
                v62 = v23;
                v63 = 2112;
                v64 = v48;
                _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Stored aux video for transfer %@, finalAssetPath %@", buf, 0x16u);
              }
            }

            v33 = [MEMORY[0x277CCAA00] defaultManager];
            v59 = *MEMORY[0x277CCA1B0];
            v60 = *MEMORY[0x277CCA1A0];
            v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
            v56 = 0;
            v35 = [v33 setAttributes:v34 ofItemAtPath:v48 error:&v56];
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
                v41 = [v20 fileURL];
                v42 = [v41 path];
                *buf = 138412802;
                v46 = v42;
                v62 = v42;
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
              v62 = v54;
              v63 = 2112;
              v64 = v50;
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
            v62 = v50;
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
          v62 = v54;
          v63 = 2112;
          v64 = v53;
          v65 = 2112;
          v66 = v52;
          v67 = 2112;
          v68 = v23;
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