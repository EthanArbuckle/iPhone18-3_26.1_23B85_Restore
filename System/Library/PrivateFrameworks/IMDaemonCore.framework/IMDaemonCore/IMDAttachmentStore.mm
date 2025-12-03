@interface IMDAttachmentStore
+ (BOOL)_cloudkitSyncingEnabled;
+ (BOOL)_filesystemIsCaseSensitiveWithPath:(id)path;
+ (BOOL)fileEligibleForCacheDelete:(id)delete;
+ (BOOL)updateTransferIn:(id)in fromGUID:(id)d toGUID:(id)iD;
+ (IMDAttachmentStore)sharedInstance;
+ (void)_askToTapToRadarForErrorString:(id)string path:(id)path;
- (BOOL)_shouldMarkAllAttachmentsAsNeedingSync;
- (BOOL)_shouldMarkAttachmentsAsNeedingReupload;
- (BOOL)deleteAttachmentDataForTransfer:(id)transfer;
- (BOOL)deleteAttachmentWithGUID:(id)d;
- (BOOL)deleteAttachmentsForMessage:(id)message;
- (BOOL)deleteAttachmentsWithGUIDs:(id)ds;
- (BOOL)isSafeToDeleteAttachmentAtPath:(id)path;
- (BOOL)removeAttachment:(id)attachment fromMessageWithGUID:(id)d;
- (BOOL)updateTemporaryTransferGUIDsIfNeeded:(id)needed transfersToSync:(id)sync;
- (BOOL)updateTemporaryTransferGUIDsOn:(id)on andUpdateMessageIfNeeded:(id)needed transfersToSync:(id)sync;
- (id)_alternateAttachmentPathIfExists:(id)exists;
- (id)_permanentTransferGUIDForExistingTransferWithTemporaryGUID:(id)d;
- (id)_permanentTransferGUIDForTransfer:(id)transfer inItem:(id)item;
- (id)_recordZoneIDForFilter:(unint64_t)filter;
- (id)_updateAttachmentGUIDIfNeededAndReturnTransfersMarkedWithFailStatus:(id)status transfersToSyncRowIDs:(id)ds;
- (id)attachmentWithGUID:(id)d;
- (id)attachmentsFilteredUsingPredicate:(id)predicate limit:(unint64_t)limit;
- (id)attachmentsWithGUIDs:(id)ds;
- (id)batchOfRecordIDsToDeleteWithLimit:(int64_t)limit error:(id *)error;
- (id)batchOfRecordsMissingAssetsAfterRow:(id *)row withLimit:(int64_t)limit;
- (id)batchOfRecordsToWriteWithFilter:(unint64_t)filter limit:(int64_t)limit recurseCount:(int)count error:(id *)error;
- (id)fileTransferWithAttachmentRecordRef:(_IMDAttachmentRecordStruct *)ref;
- (id)messageForTransferGUID:(id)d shouldLoadAttachments:(BOOL)attachments;
- (id)syncTokenStore;
- (int64_t)_attachmentQueryForFilter:(unint64_t)filter;
- (void)_hasMarkedAllAttachmentsAsNeedingSync;
- (void)_markAllFailedAttachmentsAsNeedingSync;
- (void)_markAttachmentWithROWID:(id)d withSyncState:(int64_t)state;
- (void)_markTransferAsNotBeingAbleToSyncWithGUID:(id)d;
- (void)_needsToMarkAllAttachmentsAsNeedingSync;
- (void)_removeTransferFromiCloudBackupWithGuid:(id)guid;
- (void)_resetAttachmentSyncStateForGUID:(id)d newSyncState:(int64_t)state;
- (void)clearLocalSyncState:(unint64_t)state;
- (void)clearTombstonesForRecordIDs:(id)ds;
- (void)deleteAttachmentSyncToken;
- (void)deleteAttachmentsDirectWithPredicate:(id)predicate;
- (void)markAllAttachmentsAsNotPurgeable;
- (void)markFile:(id)file asPurgeable:(BOOL)purgeable;
- (void)markTransferAsNotSuccessfullyDownloadedWithGUID:(id)d;
- (void)recordUpdateFailedWithID:(id)d localGUID:(id)iD error:(id)error;
- (void)recordUpdateSucceededWithRecord:(id)record;
- (void)resetFetchState;
- (void)resetFetchStateForAssets;
- (void)resetLocalSyncStateIfAppropriate;
- (void)updateAssetUsingRecord:(id)record;
@end

@implementation IMDAttachmentStore

- (void)resetFetchState
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Resetting fetch state (afterRow to nil)", v4, 2u);
    }
  }

  [(IMDAttachmentStore *)self setAfterRow:0];
}

- (id)syncTokenStore
{
  if (qword_27D8CFE08 != -1)
  {
    sub_22B7D0698();
  }

  v3 = qword_27D8CFE00;

  return v3;
}

- (void)resetLocalSyncStateIfAppropriate
{
  if ([(IMDAttachmentStore *)self _shouldMarkAllAttachmentsAsNeedingSync])
  {
    [(IMDAttachmentStore *)self clearLocalSyncState:3];
    [(IMDAttachmentStore *)self _hasMarkedAllAttachmentsAsNeedingSync];
  }

  [(IMDAttachmentStore *)self _markAllFailedAttachmentsAsNeedingSync];
}

- (void)clearLocalSyncState:(unint64_t)state
{
  stateCopy = state;
  v8 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7[0] = 67109120;
      v7[1] = stateCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Clearing local attachments sync state, flags 0x%x", v7, 8u);
    }
  }

  if (stateCopy)
  {
    [(IMDAttachmentStore *)self deleteAttachmentSyncToken];
  }

  if ((stateCopy & 2) != 0)
  {
    [(IMDAttachmentStore *)self markAllAttachmentsAsNeedingCloudKitSync];
  }

  else if ((stateCopy & 0x10) != 0)
  {
    [(IMDAttachmentStore *)self _needsToMarkAllAttachmentsAsNeedingSync];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldMarkAttachmentsAsNeedingReupload
{
  mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
  v3 = [mEMORY[0x277D1A990] getValueFromDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D196C0]];

  if (v3)
  {
    v4 = MEMORY[0x277CBEAA8];
    v5 = v3;
    date = [v4 date];
    [date timeIntervalSinceDate:v5];
    v8 = v7;

    v9 = v8 > 604800.0;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)_markAllFailedAttachmentsAsNeedingSync
{
  v16 = *MEMORY[0x277D85DE8];
  _shouldMarkAttachmentsAsNeedingReupload = [(IMDAttachmentStore *)self _shouldMarkAttachmentsAsNeedingReupload];
  v3 = IMOSLoggingEnabled();
  if (_shouldMarkAttachmentsAsNeedingReupload)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Marking any unsuccessfully synced attachments as needing sync", &v14, 2u);
      }
    }

    IMDAttachmentMarkAllFailedAttachmentsAsNeedingSync();
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Finished Marking any unsuccessfully synced attachments as needing sync", &v14, 2u);
      }
    }

    date = [MEMORY[0x277CBEAA8] date];
    v7 = *MEMORY[0x277D19A08];
    v8 = *MEMORY[0x277D196C0];
    IMSetDomainValueForKey();
  }

  else if (v3)
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *MEMORY[0x277D19A08];
      v11 = *MEMORY[0x277D196C0];
      v12 = IMGetCachedDomainValueForKey();
      v14 = 138412290;
      v15 = v12;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Not marking unsuccessful attachments as needing sync. Last attempt date %@", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)deleteAttachmentSyncToken
{
  syncTokenStore = [(IMDAttachmentStore *)self syncTokenStore];
  [syncTokenStore persistToken:0 forKey:@"attachmentZoneChangeToken"];
}

- (void)_needsToMarkAllAttachmentsAsNeedingSync
{
  mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
  [mEMORY[0x277D1A990] setBool:0 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A28]];
}

- (BOOL)_shouldMarkAllAttachmentsAsNeedingSync
{
  v12 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D1ACB8] = [MEMORY[0x277D1ACB8] sharedInstance];
  isUnderFirstDataProtectionLock = [mEMORY[0x277D1ACB8] isUnderFirstDataProtectionLock];

  if (isUnderFirstDataProtectionLock)
  {
    v4 = 0;
  }

  else
  {
    mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
    v4 = [mEMORY[0x277D1A990] getBoolFromDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A28]] ^ 1;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      if (v4)
      {
        v7 = @"YES";
      }

      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "_shouldMarkAllAttachmentsAsNeedingSync %@", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)_hasMarkedAllAttachmentsAsNeedingSync
{
  mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
  [mEMORY[0x277D1A990] setBool:1 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A28]];
}

- (void)_markAttachmentWithROWID:(id)d withSyncState:(int64_t)state
{
  [d longLongValue];

  IMDAttachmentRecordMarkAttachmentWithROWIDWithSyncState();
}

- (id)_updateAttachmentGUIDIfNeededAndReturnTransfersMarkedWithFailStatus:(id)status transfersToSyncRowIDs:(id)ds
{
  v37 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  dsCopy = ds;
  v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = statusCopy;
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v8)
  {
    v10 = 0;
    v27 = *v29;
    *&v9 = 138412546;
    v24 = v9;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v27)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        guid = [v12 guid];
        guid2 = [v12 guid];
        v15 = [(IMDAttachmentStore *)self messageForTransferGUID:guid2 shouldLoadAttachments:1];

        if (v15)
        {
          if ([(IMDAttachmentStore *)self updateTemporaryTransferGUIDsOn:v12 andUpdateMessageIfNeeded:v15 transfersToSync:v7])
          {
            if (IMOSLoggingEnabled())
            {
              v16 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
              {
                guid3 = [v12 guid];
                *buf = v24;
                v33 = guid;
                v34 = 2112;
                v35 = guid3;
                _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Fixed up guid for transfer old guid: %@ new guid: %@", buf, 0x16u);
              }
            }
          }

          else if (IMFileTransferGUIDIsTemporary())
          {
            v20 = [dsCopy objectAtIndexedSubscript:v10];
            if (IMOSLoggingEnabled())
            {
              v21 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                *buf = v24;
                v33 = guid;
                v34 = 2112;
                v35 = v20;
                _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "******** Marking attachment as failed to upload, as we could not update it's guid %@ (rowid %@)", buf, 0x16u);
              }
            }

            [(IMDAttachmentStore *)self _markAttachmentWithROWID:v20 withSyncState:2];
            [v25 addObject:v12];
          }
        }

        else
        {
          v18 = [dsCopy objectAtIndexedSubscript:v10];
          if (IMOSLoggingEnabled())
          {
            v19 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = v24;
              v33 = guid;
              v34 = 2112;
              v35 = v18;
              _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "******** Marking attachment %@ (rowid %@) as forever failed to upload, as we could not find an associated message", buf, 0x16u);
            }
          }

          [(IMDAttachmentStore *)self _markAttachmentWithROWID:v18 withSyncState:64];
          [v25 addObject:v12];
        }

        ++v10;
      }

      v8 = [v7 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v8);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v25;
}

- (id)batchOfRecordsToWriteWithFilter:(unint64_t)filter limit:(int64_t)limit recurseCount:(int)count error:(id *)error
{
  v103[2] = *MEMORY[0x277D85DE8];
  [(IMDAttachmentStore *)self _attachmentQueryForFilter:?];
  selfCopy = self;
  afterRow = [(IMDAttachmentStore *)self afterRow];
  v8 = IMDAttachmentRecordCopyAttachmentsForQueryWithLimit();

  v69 = v8;
  v9 = [v8 count];
  if (v9)
  {
    v73 = v9;
    mEMORY[0x277D1AAA8]2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v76 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v78 = objc_alloc_init(MEMORY[0x277CBEB38]);
    afterRow2 = [(IMDAttachmentStore *)selfCopy afterRow];
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v87 objects:v101 count:16];
    if (v12)
    {
      v13 = *v88;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v88 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v87 + 1) + 8 * i);
          v16 = IMFileTransferFromIMDAttachmentRecordRef(v15);
          rowID = [v15 rowID];
          if (!afterRow2 || [afterRow2 longLongValue] < rowID)
          {
            v18 = [MEMORY[0x277CCABB0] numberWithLongLong:rowID];

            afterRow2 = v18;
          }

          if (v16)
          {
            [mEMORY[0x277D1AAA8]2 addObject:v16];
            v19 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v15, "rowID")}];
            [v76 addObject:v19];

            v20 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v15, "rowID")}];
            guid = [v16 guid];
            [v78 setObject:v20 forKey:guid];
          }

          else
          {
            if (IMOSLoggingEnabled())
            {
              v22 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
              {
                rowID2 = [v15 rowID];
                *buf = 134217984;
                v98 = rowID2;
                _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "**** failed to create IMFileTransfer from IMDAttachmentRecordRef rowid: %lld, marking as failed to upload ***", buf, 0xCu);
              }
            }

            [v15 rowID];
            IMDAttachmentRecordMarkAttachmentWithROWIDWithSyncState();
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v87 objects:v101 count:16];
      }

      while (v12);
    }

    [(IMDAttachmentStore *)selfCopy setAfterRow:afterRow2];
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [mEMORY[0x277D1AAA8]2 count];
        *buf = 134218240;
        v98 = v73;
        v99 = 2048;
        v100 = v25;
        _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Got %lu dirty results to sync, filtered to %lu", buf, 0x16u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Fixing up attachment GUIDs if needed", buf, 2u);
      }
    }

    v67 = [(IMDAttachmentStore *)selfCopy _updateAttachmentGUIDIfNeededAndReturnTransfersMarkedWithFailStatus:mEMORY[0x277D1AAA8]2 transfersToSyncRowIDs:v76];
    if ([v67 count])
    {
      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Removing attachments that failed guid conversion", buf, 2u);
        }
      }

      [mEMORY[0x277D1AAA8]2 removeObjectsInArray:v67];
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v28 = mEMORY[0x277D1AAA8]2;
      v29 = [v28 countByEnumeratingWithState:&v83 objects:v96 count:16];
      if (v29)
      {
        v30 = *v84;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v84 != v30)
            {
              objc_enumerationMutation(v28);
            }

            v32 = *(*(&v83 + 1) + 8 * j);
            if (IMOSLoggingEnabled())
            {
              v33 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v98 = v32;
                _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Transfer to sync %@ ", buf, 0xCu);
              }
            }
          }

          v29 = [v28 countByEnumeratingWithState:&v83 objects:v96 count:16];
        }

        while (v29);
      }
    }

    v75 = [(IMDAttachmentStore *)selfCopy _recordZoneIDForFilter:filter];
    v34 = +[IMDCKRecordSaltManager sharedInstance];
    cachedSalt = [v34 cachedSalt];

    v71 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if ([mEMORY[0x277D1AAA8]2 count])
    {
      v35 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      obj = mEMORY[0x277D1AAA8]2;
      v36 = [obj countByEnumeratingWithState:&v79 objects:v95 count:16];
      if (!v36)
      {
        goto LABEL_66;
      }

      v37 = *v80;
      while (1)
      {
        for (k = 0; k != v36; ++k)
        {
          if (*v80 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v39 = *(*(&v79 + 1) + 8 * k);
          v40 = [v39 copyCKRecordRepresentationWithZoneID:v75 salt:cachedSalt];
          v41 = v40;
          if (v40)
          {
            recordID = [v40 recordID];
            recordName = [recordID recordName];
            v44 = [v35 containsObject:recordName];

            if (v44)
            {
              goto LABEL_64;
            }

            guid2 = [v39 guid];
            [v71 setObject:v41 forKey:guid2];

            recordID2 = [v41 recordID];
            recordName2 = [recordID2 recordName];
            [v35 addObject:recordName2];
          }

          else
          {
            guid3 = [v39 guid];
            v49 = [v78 objectForKey:guid3];
            longLongValue = [v49 longLongValue];

            if (longLongValue)
            {
              if (IMOSLoggingEnabled())
              {
                v51 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
                {
                  guid4 = [v39 guid];
                  *buf = 138412546;
                  v98 = guid4;
                  v99 = 2048;
                  v100 = longLongValue;
                  _os_log_impl(&dword_22B4CC000, v51, OS_LOG_TYPE_INFO, "**** failed to create CKRecord from IMTransfer guid %@, marking row %lld as failed to upload ***", buf, 0x16u);
                }
              }

              IMDAttachmentRecordMarkAttachmentWithROWIDWithSyncState();
            }

            else
            {
              v53 = IMLogHandleForCategory();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
              {
                sub_22B7D06AC(v93, v39, &v94, v53);
              }
            }

            recordID2 = [MEMORY[0x277D1AAA8] sharedInstance];
            [recordID2 forceAutoBugCaptureWithSubType:@"NullCKRecordForIMFileTransfer" errorPayload:0 type:@"MiCSync" context:@"Failed to generate CKRecord for IMFileTransfer"];
          }

LABEL_64:
        }

        v36 = [obj countByEnumeratingWithState:&v79 objects:v95 count:16];
        if (!v36)
        {
LABEL_66:

          break;
        }
      }
    }

    if ([v71 count])
    {
      if (count >= 1)
      {
        mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
        v91[0] = *MEMORY[0x277D1A170];
        v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v71, "count")}];
        v92[0] = v55;
        v91[1] = *MEMORY[0x277D1A178];
        v56 = [MEMORY[0x277CCABB0] numberWithInt:count];
        v92[1] = v56;
        v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:2];
        [mEMORY[0x277D1AAA8] trackEvent:*MEMORY[0x277D1A180] withDictionary:v57];
      }

      v58 = v71;
      v59 = v71;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v61 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v61, OS_LOG_TYPE_INFO, "*** All the records we fetched to write had problems, fetching next batch ***", buf, 2u);
        }
      }

      v59 = [(IMDAttachmentStore *)selfCopy batchOfRecordsToWriteWithFilter:filter limit:limit recurseCount:(count + 1) error:error];
      v58 = v71;
    }

    goto LABEL_79;
  }

  if (count >= 1)
  {
    mEMORY[0x277D1AAA8]2 = [MEMORY[0x277D1AAA8] sharedInstance];
    v60 = *MEMORY[0x277D1A178];
    v102[0] = *MEMORY[0x277D1A170];
    v102[1] = v60;
    v103[0] = &unk_283F4E4F8;
    v76 = [MEMORY[0x277CCABB0] numberWithInt:count];
    v103[1] = v76;
    v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:2];
    [mEMORY[0x277D1AAA8]2 trackEvent:*MEMORY[0x277D1A180] withDictionary:v78];
    v59 = 0;
LABEL_79:

    goto LABEL_80;
  }

  v59 = 0;
LABEL_80:

  v62 = *MEMORY[0x277D85DE8];

  return v59;
}

- (id)_recordZoneIDForFilter:(unint64_t)filter
{
  v4 = +[IMDRecordZoneManager sharedInstance];
  v5 = v4;
  if (filter == 4)
  {
    [v4 chatBotAttachmentRecordZoneID];
  }

  else
  {
    [v4 attachmentRecordZoneID];
  }
  v6 = ;

  return v6;
}

- (int64_t)_attachmentQueryForFilter:(unint64_t)filter
{
  if (filter == 4)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

- (void)recordUpdateSucceededWithRecord:(id)record
{
  recordCopy = record;
  v4 = +[IMDCKAttachmentSyncController sharedInstance];
  [v4 _updateTransferUsingCKRecord:recordCopy wasFetched:0 dispatchToMain:0];
}

- (void)recordUpdateFailedWithID:(id)d localGUID:(id)iD error:(id)error
{
  v40 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  errorCopy = error;
  mEMORY[0x277D1AC70] = [MEMORY[0x277D1AC70] sharedInstance];
  v11 = [iDCopy copy];
  if (![mEMORY[0x277D1AC70] wasRecordAlreadyChanged:errorCopy])
  {
    if ([mEMORY[0x277D1AC70] wasAssetNotAvailable:errorCopy])
    {
      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Asset was not available marking transfer as unsuccessully synced", buf, 2u);
        }
      }

LABEL_14:
      [(IMDAttachmentStore *)self _markTransferAsNotBeingAbleToSyncWithGUID:v11];
      goto LABEL_32;
    }

    if ([mEMORY[0x277D1AC70] wasUnknownItem:errorCopy])
    {
      selfCopy2 = self;
      v26 = v11;
      v27 = 2;
    }

    else
    {
      if (![mEMORY[0x277D1AC70] wasZoneNotFound:errorCopy])
      {
        if (IMOSLoggingEnabled())
        {
          v33 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Record failed with unhandled error will try this record again on next sync", buf, 2u);
          }
        }

        goto LABEL_14;
      }

      selfCopy2 = self;
      v26 = v11;
      v27 = 0;
    }

    [(IMDAttachmentStore *)selfCopy2 _resetAttachmentSyncStateForGUID:v26 newSyncState:v27];
    goto LABEL_32;
  }

  v12 = +[IMDCKUtilities sharedInstance];
  v13 = [v12 extractServerRecordFromCKServerErrorRecordChanged:errorCopy];

  recordName = [dCopy recordName];
  recordID = [v13 recordID];
  recordName2 = [recordID recordName];
  v17 = dCopy;
  v18 = [recordName isEqualToString:recordName2];

  if (v18)
  {
    v19 = [MEMORY[0x277D1A9C0] transferGUIDOfRecord:v13];
    v20 = [v11 isEqualToString:v19];
    v21 = IMOSLoggingEnabled();
    if (v20)
    {
      dCopy = v17;
      if (v21)
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Server's GUID matched local GUID; aligning with the server's data", buf, 2u);
        }
      }

      v23 = +[IMDCKAttachmentSyncController sharedInstance];
      [v23 _updateTransferUsingCKRecord:v13 wasFetched:0 dispatchToMain:0];
    }

    else
    {
      dCopy = v17;
      if (v21)
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v37 = v19;
          v38 = 2112;
          v39 = v11;
          _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "On conflict, the server record's GUID (%@) was different than the record we tried to update with GUID (%@); marking local attachment as synced, to skip to", buf, 0x16u);
        }
      }

      IMDAttachmentRecordRowIDForGUID();
      IMDAttachmentRecordMarkAttachmentWithROWIDAsSyncedWithCloudKit();
    }
  }

  else
  {
    dCopy = v17;
    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        recordID2 = [v13 recordID];
        recordName3 = [recordID2 recordName];
        recordName4 = [v17 recordName];
        *buf = 138412546;
        v37 = recordName3;
        v38 = 2112;
        v39 = recordName4;
        _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Conflicting serverRecord was different than the one being updated (server: %@, local: %@)", buf, 0x16u);
      }
    }

    [(IMDAttachmentStore *)self _resetAttachmentSyncStateForGUID:v11 newSyncState:2];
  }

LABEL_32:
  v32 = *MEMORY[0x277D85DE8];
}

- (void)_resetAttachmentSyncStateForGUID:(id)d newSyncState:(int64_t)state
{
  v13 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = [(IMDAttachmentStore *)self attachmentWithGUID:dCopy];
  v8 = v7;
  if (v7)
  {
    [v7 setCloudKitServerChangeTokenBlob:0];
    [v8 setCloudKitRecordID:0];
    [v8 setCloudKitSyncState:state];
    [(IMDAttachmentStore *)self updateAttachment:v8];
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = dCopy;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Tried to clear sync state for a transfer with guid (%@), transfer not found on disk", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_markTransferAsNotBeingAbleToSyncWithGUID:(id)d
{
  v11 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(IMDAttachmentStore *)self attachmentWithGUID:dCopy];
  v6 = v5;
  if (v5)
  {
    [v5 setCloudKitSyncState:2];
    [(IMDAttachmentStore *)self updateAttachment:v6];
  }

  else if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = dCopy;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Could not find transfer for guid (%@) to mark as not synced successfully", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (IMDAttachmentStore)sharedInstance
{
  if (qword_281421188 != -1)
  {
    sub_22B7D699C();
  }

  return qword_281421008;
}

- (BOOL)removeAttachment:(id)attachment fromMessageWithGUID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  v8 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    attachmentCopy = attachment;
    v15 = 2112;
    dCopy = d;
    _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "Request to unassociate transfer: %@ from message guid: %@", &v13, 0x16u);
  }

  v9 = -[IMDAttachmentStore attachmentWithGUID:](self, "attachmentWithGUID:", [attachment guid]);
  v10 = v9;
  [attachment guid];
  IMDMessageRecordUnassociateMessageWithGUIDFromAttachmentWithGUID();

  objc_autoreleasePoolPop(v7);
  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)markFile:(id)file asPurgeable:(BOOL)purgeable
{
  v14 = *MEMORY[0x277D85DE8];
  if (!file)
  {
    v9 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      v6 = "No attachment path to mark as purgable";
      v7 = v9;
      v8 = 2;
      goto LABEL_8;
    }

LABEL_9:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  if (purgeable)
  {
    if (![IMDAttachmentStore fileEligibleForCacheDelete:file])
    {
      v5 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        fileCopy = file;
        v6 = "%@ not eligible for cache delete";
        v7 = v5;
        v8 = 12;
LABEL_8:
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, v6, &v12, v8);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if ([objc_msgSend(MEMORY[0x277D19268] "sharedInstance")])
  {
    IMLogBacktrace();
    [IMDAttachmentStore _askToTapToRadarForErrorString:@"SingleFile" path:file];
  }

  v11 = *MEMORY[0x277D85DE8];

  MEMORY[0x2821F9670](file, sel_im_markFileAsPurgeable_);
}

+ (BOOL)_cloudkitSyncingEnabled
{
  v2 = +[IMDCKUtilities sharedInstance];

  return [(IMDCKUtilities *)v2 cloudKitSyncingEnabled];
}

+ (BOOL)fileEligibleForCacheDelete:(id)delete
{
  v19 = *MEMORY[0x277D85DE8];
  if (([self _cloudkitSyncingEnabled] & 1) == 0)
  {
    v7 = IMOffloadingLogHandle();
    v6 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (!v6)
    {
      goto LABEL_9;
    }

    LOWORD(v17) = 0;
    v8 = "Not marking path as eligible for cachedelete, cloudkit syncing is not on";
    v9 = v7;
    v10 = 2;
    goto LABEL_7;
  }

  lastPathComponent = [delete lastPathComponent];
  if (![lastPathComponent isEqualToString:@"Attachments"])
  {
    if (![lastPathComponent containsString:*MEMORY[0x277D19E70]])
    {
      if (([objc_msgSend(delete "stringByDeletingLastPathComponent")] & 1) == 0)
      {
        v15 = IMOffloadingLogHandle();
        v6 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
        if (!v6)
        {
          goto LABEL_9;
        }

        sub_22B7D69B0();
        goto LABEL_8;
      }

      v13 = [objc_msgSend(delete "pathExtension")];
      if (v13)
      {
        v14 = IMOffloadingLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 138412290;
          deleteCopy2 = delete;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "Not marking path as eligible for cachedelete, file extension is an audio message. path: %@", &v17, 0xCu);
        }
      }

      LOBYTE(v6) = v13 ^ 1;
      goto LABEL_9;
    }

    v12 = IMOffloadingLogHandle();
    v6 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (!v6)
    {
      goto LABEL_9;
    }

    v17 = 138412290;
    deleteCopy2 = delete;
    v8 = "Not marking path as eligible for cachedelete, last path component matches group photo file name. path: %@";
    v9 = v12;
    v10 = 12;
LABEL_7:
    _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEFAULT, v8, &v17, v10);
    goto LABEL_8;
  }

  v5 = IMOffloadingLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    sub_22B7D6A18(v5);
LABEL_8:
    LOBYTE(v6) = 0;
  }

LABEL_9:
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (BOOL)_filesystemIsCaseSensitiveWithPath:(id)path
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6249BC;
  block[3] = &unk_278704F90;
  block[4] = path;
  if (qword_2814225A8 != -1)
  {
    dispatch_once(&qword_2814225A8, block);
  }

  return byte_2814225A0;
}

- (id)_alternateAttachmentPathIfExists:(id)exists
{
  if (![IMDAttachmentStore _filesystemIsCaseSensitiveWithPath:?])
  {
    return 0;
  }

  pathExtension = [exists pathExtension];
  result = [pathExtension length];
  if (result)
  {
    lowercaseString = [pathExtension lowercaseString];
    uppercaseString = [pathExtension uppercaseString];
    if ([pathExtension isEqualToString:uppercaseString])
    {
      v8 = lowercaseString;
    }

    else
    {
      v8 = uppercaseString;
    }

    v9 = [objc_msgSend(exists "stringByDeletingPathExtension")];
    if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

+ (void)_askToTapToRadarForErrorString:(id)string path:(id)path
{
  if ([objc_msgSend(MEMORY[0x277D19268] "sharedInstance")] && IMGetCachedDomainBoolForKeyWithDefaultValue())
  {
    if (qword_27D8CFF40 != -1)
    {
      sub_22B7D6A5C();
    }

    v6 = [MEMORY[0x277D192D0] userNotificationWithIdentifier:objc_msgSend(MEMORY[0x277CCACA8] title:"stringGUID") message:@"Messages Storage Management" defaultButton:@"An attachment was unexpectedly marked as not purgeable." alternateButton:@"File a Radar" otherButton:{@"Dismiss", 0}];
    if (v6)
    {
      v7 = v6;
      v8 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "Presenting CacheDelete TTR UI", buf, 2u);
      }

      mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
      [mEMORY[0x277D1AAA8] trackEvent:*MEMORY[0x277D1A1E0]];
      [v7 setUsesNotificationCenter:0];
      [v7 setRepresentedApplicationBundle:*MEMORY[0x277D192F0]];
      mEMORY[0x277D192D8] = [MEMORY[0x277D192D8] sharedInstance];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = sub_22B624D50;
      v11[3] = &unk_278706850;
      v11[4] = string;
      v11[5] = path;
      [mEMORY[0x277D192D8] addUserNotification:v7 listener:0 completionHandler:v11];
    }
  }
}

- (void)markAllAttachmentsAsNotPurgeable
{
  buf[5] = *MEMORY[0x277D85DE8];
  if ([objc_msgSend(MEMORY[0x277D19268] "sharedInstance")])
  {
    IMLogBacktrace();
    [IMDAttachmentStore _askToTapToRadarForErrorString:@"All attachments" path:0];
  }

  stringByExpandingTildeInPath = [@"/var/mobile/Library/SMS/Attachments" stringByExpandingTildeInPath];
  v3 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 138412290;
    *(buf + 4) = stringByExpandingTildeInPath;
    _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEFAULT, "Clearing purgeable flags under %@", buf, 0xCu);
  }

  memset(&buf[1], 0, 24);
  buf[0] = 0x900000002;
  v4 = fsctl([stringByExpandingTildeInPath fileSystemRepresentation], 0xC0204A49uLL, buf, 0);
  if (v4)
  {
    v5 = v4;
    v6 = *__error();
    v7 = IMAttachmentsLogHandle();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6 == 2)
    {
      if (v8)
      {
        v15 = 138412290;
        v16 = stringByExpandingTildeInPath;
        v9 = "%@ does not exist, skip clearing the purgeable flags";
LABEL_11:
        v10 = v7;
        v11 = 12;
LABEL_14:
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, v9, &v15, v11);
      }
    }

    else if (v8)
    {
      v12 = __error();
      v13 = strerror(*v12);
      v15 = 138412802;
      v16 = stringByExpandingTildeInPath;
      v17 = 1024;
      v18 = v5;
      v19 = 2080;
      v20 = v13;
      v9 = "Failed to clear purgeable flag for %@ %d (%s)";
      v10 = v7;
      v11 = 28;
      goto LABEL_14;
    }
  }

  else
  {
    v7 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = stringByExpandingTildeInPath;
      v9 = "Cleared purgeable flags under %@";
      goto LABEL_11;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)attachmentWithGUID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    dCopy = d;
    _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Request for attachment with guid: %@", &v11, 0xCu);
  }

  v5 = objc_autoreleasePoolPush();
  v6 = IMDAttachmentRecordCopyAttachmentForGUID();
  if (v6)
  {
    v7 = v6;
    v8 = IMFileTransferFromIMDAttachmentRecordRef(v6);
    [v8 fixInvalidTransferStateIfNeeded];
    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  objc_autoreleasePoolPop(v5);
  result = v8;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)attachmentsWithGUIDs:(id)ds
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    dsCopy = ds;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Request for attachments with guids: %@", buf, 0xCu);
  }

  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(ds, "count")}];
  if (ds)
  {
    v7 = -[IMDAttachmentStore attachmentsFilteredUsingPredicate:limit:](self, "attachmentsFilteredUsingPredicate:limit:", [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", *MEMORY[0x277D196B0], ds], -1);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * v11);
          if (v12 && ([*(*(&v15 + 1) + 8 * v11) isFinished] & 1) == 0 && objc_msgSend(v12, "transferState"))
          {
            [v12 _setTransferState:6];
            [v12 _setError:11];
          }

          [v6 addObject:v12];
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)fileTransferWithAttachmentRecordRef:(_IMDAttachmentRecordStruct *)ref
{
  v4 = objc_autoreleasePoolPush();
  if (ref)
  {
    ref = IMFileTransferFromIMDAttachmentRecordRef(ref);
    [(_IMDAttachmentRecordStruct *)ref fixInvalidTransferStateIfNeeded];
  }

  objc_autoreleasePoolPop(v4);

  return ref;
}

- (id)attachmentsFilteredUsingPredicate:(id)predicate limit:(unint64_t)limit
{
  v28 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = sub_22B4D7760;
  v25 = sub_22B4D7910;
  v26 = 0;
  synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_22B625638;
  v20[3] = &unk_2787031A0;
  v20[4] = &v21;
  [synchronousDatabase fetchAttachmentRecordsFilteredUsingPredicate:predicate limit:limit completionHandler:v20];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v22[5];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v27 count:16];
  if (v9)
  {
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = IMFileTransferFromIMDAttachmentRecordRef(*(*(&v16 + 1) + 8 * i));
        if (v12)
        {
          [v7 addObject:v12];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v16 objects:v27 count:16];
    }

    while (v9);
  }

  v13 = v7;
  _Block_object_dispose(&v21, 8);
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)messageForTransferGUID:(id)d shouldLoadAttachments:(BOOL)attachments
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = IMDAttachmentRecordCopyMessageForAttachmentGUID();
  if (v5)
  {
    v6 = v5;
    AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v5, 0);
    CFRelease(v6);
    v8 = *MEMORY[0x277D85DE8];

    return AttachmentIfNeededRef;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        dCopy = d;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "messageForTransferGUID failed to get a message record for transfer %@", &v12, 0xCu);
      }
    }

    v11 = *MEMORY[0x277D85DE8];
    return 0;
  }
}

- (BOOL)updateTemporaryTransferGUIDsIfNeeded:(id)needed transfersToSync:(id)sync
{
  v7 = -[IMDAttachmentStore messageForTransferGUID:shouldLoadAttachments:](self, "messageForTransferGUID:shouldLoadAttachments:", [needed guid], 1);

  return [(IMDAttachmentStore *)self updateTemporaryTransferGUIDsOn:needed andUpdateMessageIfNeeded:v7 transfersToSync:sync];
}

+ (BOOL)updateTransferIn:(id)in fromGUID:(id)d toGUID:(id)iD
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [in countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(in);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        if ([objc_msgSend(v12 "guid")])
        {
          [v12 setGuid:iD];
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }

        ++v11;
      }

      while (v9 != v11);
      v8 = [in countByEnumeratingWithState:&v15 objects:v19 count:16];
      v9 = v8;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)_permanentTransferGUIDForTransfer:(id)transfer inItem:(id)item
{
  guid = [transfer guid];
  if (!IMFileTransferGUIDIsTemporary())
  {
    return guid;
  }

  guid2 = [item guid];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_13:
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Could not find message part matching file transfer GUID, using 0 as the message part index.", v12, 2u);
    }

    return IMFileTransferGUIDForPluginPayloadOrGroupPhotoInMessageGUID();
  }

  if ([objc_msgSend(item "body")])
  {
    v8 = [objc_msgSend(transfer "filename")];
LABEL_5:

    return MEMORY[0x282173DC0](guid2, v8);
  }

  if (![transfer isAdaptiveImageGlyph])
  {
    v8 = [item messagePartIndexForAttachmentMessagePartWithTransferGUID:guid];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  adaptiveImageGlyphContentIdentifier = [transfer adaptiveImageGlyphContentIdentifier];

  return MEMORY[0x282173DC8](adaptiveImageGlyphContentIdentifier, guid2);
}

- (id)_permanentTransferGUIDForExistingTransferWithTemporaryGUID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = IMDAttachmentRecordCopyAttachmentForGUID();
  if (v5)
  {
    v6 = v5;
    v7 = IMDAttachmentRecordCopyMessageForAttachmentGUID();
    if (v7)
    {
      v8 = v7;
      v9 = IMDCreateIMMessageItemFromIMDMessageRecordRef(v7, 0);
      if (v9)
      {
        if (IMOSLoggingEnabled())
        {
          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v18 = 138412290;
            dCopy = d;
            _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Found corresponding IMItem for temporary transferGUID %@", &v18, 0xCu);
          }
        }

        v11 = IMFileTransferFromIMDAttachmentRecordRef(v6);
        v12 = [(IMDAttachmentStore *)self _permanentTransferGUIDForTransfer:v11 inItem:v9];
      }

      else
      {
        v15 = IMLogHandleForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D6A70();
        }

        v12 = 0;
      }

      CFRelease(v8);
    }

    else
    {
      v14 = IMLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D6AD8();
      }

      v12 = 0;
    }

    CFRelease(v6);
  }

  else
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D6B40();
    }

    v12 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)updateTemporaryTransferGUIDsOn:(id)on andUpdateMessageIfNeeded:(id)needed transfersToSync:(id)sync
{
  v69 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    guid = [needed guid];
    v7 = [objc_msgSend(needed "fileTransferGUIDs")];
    v48 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = v7;
    v8 = [v7 countByEnumeratingWithState:&v59 objects:v68 count:16];
    if (v8)
    {
      v9 = v8;
      v47 = 0;
      v10 = *v60;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v60 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v59 + 1) + 8 * i);
          if (IMFileTransferGUIDIsTemporary())
          {
            v13 = [(IMDAttachmentStore *)self _loadAttachmentRecordForGUID:v12];
            if (v13)
            {
              v14 = v13;
              v15 = [(IMDAttachmentStore *)self _newFileTransferFromIMDAttachmentRecordRef:v13];
              CFRelease(v14);
              v16 = [(IMDAttachmentStore *)self _permanentTransferGUIDForTransfer:v15 inItem:needed];
              v17 = IMAttachmentsLogHandle();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v65 = v12;
                v66 = 2112;
                v67 = v16;
                _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_DEFAULT, "Re-targeting transfer GUID from %@ to %@", buf, 0x16u);
              }

              v18 = [(IMDAttachmentStore *)self _updateAttachmentGUID:v12 withGUID:v16];
              v19 = IMAttachmentsLogHandle();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                LODWORD(v65) = v18;
                _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_DEFAULT, "_updateAttachmentGUID completed with success %{BOOL}d", buf, 8u);
              }

              if (v18)
              {
                if (v15)
                {
                  [v15 setGuid:v16];
                }

                [IMDAttachmentStore updateTransferIn:sync fromGUID:v12 toGUID:v16];
                [+[IMDFileTransferCenter sharedInstance](IMDFileTransferCenter updateTransferGUID:"updateTransferGUID:toGUID:" toGUID:v12, v16];
                if (on && [v12 isEqualToString:{objc_msgSend(on, "guid")}])
                {
                  v20 = IMAttachmentsLogHandle();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                  {
                    guid2 = [on guid];
                    *buf = 138412546;
                    v65 = guid2;
                    v66 = 2112;
                    v67 = v16;
                    _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_DEFAULT, "We are updating the in-memory transfer's guid that we will sync to CloudKit in-memory transfer: %@ newGUID: %@", buf, 0x16u);
                  }

                  [on setGuid:v16];
                  v47 = 1;
                }

                [(IMDAttachmentStore *)self updateAttachment:v15];
                [v48 setObject:v16 forKey:v12];
              }
            }

            else
            {
              v22 = IMAttachmentsLogHandle();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v65 = v12;
                _os_log_error_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_ERROR, "Got null attachment record for %@", buf, 0xCu);
              }
            }
          }
        }

        v9 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
      }

      while (v9);
    }

    else
    {
      v47 = 0;
    }

    v25 = [v48 copy];

    v26 = [needed updateTemporaryFileTransferGUIDsWithPermanentFileTransferGUIDs:v25];
    v27 = v26;
    if (v26)
    {
      v49 = v26;
      v28 = [+[IMDMessageStore sharedInstance](IMDMessageStore storeMessage:"storeMessage:forceReplace:modifyError:modifyFlags:flagMask:" forceReplace:needed modifyError:0 modifyFlags:0 flagMask:0, 0];
      if (!needed || v28 == needed)
      {
        v31 = IMAttachmentsLogHandle();
        v30 = guid;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D6C30(guid, needed, v31);
        }

        v29 = @"FAILED (maybe)";
      }

      else
      {
        v29 = @"succeeded";
        v30 = guid;
      }

      v32 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v65 = v29;
        _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_DEFAULT, "Message body attachment attributes update %@!", buf, 0xCu);
      }

      v52 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [v52 addObject:v30];
      v33 = [+[IMDMessageStore sharedInstance](IMDMessageStore messagesWithAssociatedGUID:"messagesWithAssociatedGUID:", v30];
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v34 = [v33 countByEnumeratingWithState:&v55 objects:v63 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v56;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v56 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v55 + 1) + 8 * j);
            guid3 = [v38 guid];
            v40 = [v38 updateTemporaryFileTransferGUIDsWithPermanentFileTransferGUIDs:v25];
            v41 = IMLogHandleForCategory();
            v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
            if (v40)
            {
              if (v42)
              {
                *buf = 138412290;
                v65 = guid3;
                _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_DEFAULT, "Associated message item %@ changed when temporary file transfers were updated.", buf, 0xCu);
              }

              [v52 addObject:guid3];
            }

            else if (v42)
            {
              *buf = 138412290;
              v65 = guid3;
              _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_DEFAULT, "Associated message item %@ did not change when temporary file transfers were updated.", buf, 0xCu);
            }
          }

          v35 = [v33 countByEnumeratingWithState:&v55 objects:v63 count:16];
        }

        while (v35);
      }

      v43 = [v52 copy];

      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = sub_22B6263D8;
      v54[3] = &unk_278704F90;
      v54[4] = v43;
      [(IMDAttachmentStore *)self _reindexMessageGUIDs:v43 reason:1001 completion:v54];

      v27 = v49;
    }

    v24 = v47;
    if (!on)
    {
      v24 = v27;
    }
  }

  else
  {
    v23 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D6BA8(needed, v23);
    }

    v24 = 0;
  }

  v44 = *MEMORY[0x277D85DE8];
  return v24 & 1;
}

- (BOOL)deleteAttachmentsForMessage:(id)message
{
  v12 = *MEMORY[0x277D85DE8];
  fileTransferGUIDs = [message fileTransferGUIDs];
  if (![fileTransferGUIDs count])
  {
    goto LABEL_6;
  }

  v5 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = fileTransferGUIDs;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Deleting attachments, guids %@", &v10, 0xCu);
  }

  if ([(IMDAttachmentStore *)self deleteAttachmentsWithGUIDs:fileTransferGUIDs])
  {
    result = 1;
  }

  else
  {
LABEL_6:
    v7 = IMAttachmentsLogHandle();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v8)
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Failed to delete attachments", &v10, 2u);
      result = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)deleteAttachmentsWithGUIDs:(id)ds
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    dsCopy = ds;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Request to delete attachments with guids: %@", buf, 0xCu);
  }

  context = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = [ds countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(ds);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        [v6 addObject:v11];
        if (IMFileTransferGUIDIsTemporary())
        {
          v12 = [(IMDAttachmentStore *)self _permanentTransferGUIDForExistingTransferWithTemporaryGUID:v11];
          if ([v12 length])
          {
            v13 = IMAttachmentsLogHandle();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              dsCopy = v11;
              v38 = 2112;
              v39 = v12;
              _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEFAULT, "Requested delete of temporary attachmentGUID %@ will also delete permanent attachmentGUID %@", buf, 0x16u);
            }

            [v6 addObject:v12];
          }
        }
      }

      v8 = [ds countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v8);
  }

  v14 = [v6 copy];

  v15 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    dsCopy = v14;
    _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_DEFAULT, "Deleting attachments with attachment guids from spotlight: %@", buf, 0xCu);
  }

  indexingQueryProvider = [MEMORY[0x277D18EE0] indexingQueryProvider];
  v17 = [MEMORY[0x277D18EB8] contextWithReason:1006];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_22B6268E8;
  v30[3] = &unk_2787062A8;
  v30[4] = v14;
  [indexingQueryProvider deleteAttachmentGUIDs:v14 context:v17 completionHandler:v30];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = [ds countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v27;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(ds);
        }

        v22 = *(*(&v26 + 1) + 8 * j);
        IMDAttachmentRecordDeleteAttachmentForGUID();
      }

      v19 = [ds countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v19);
  }

  objc_autoreleasePoolPop(context);
  v23 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)deleteAttachmentDataForTransfer:(id)transfer
{
  v4 = objc_autoreleasePoolPush();
  [objc_msgSend(MEMORY[0x277D18EE8] "sharedInstance")];
  objc_autoreleasePoolPop(v4);
  return 1;
}

- (BOOL)deleteAttachmentWithGUID:(id)d
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (d)
  {
    v8[0] = d;
    v3 = -[IMDAttachmentStore deleteAttachmentsWithGUIDs:](self, "deleteAttachmentsWithGUIDs:", [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1]);
  }

  else if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    v3 = 1;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Request to delete attachment with nil guid", v7, 2u);
    }
  }

  else
  {
    v3 = 1;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)isSafeToDeleteAttachmentAtPath:(id)path
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [path length];
  if (v4)
  {
    v5 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      pathCopy = path;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Request to check if the attachment path is safe: %@", &v8, 0xCu);
    }

    LOBYTE(v4) = [objc_msgSend(MEMORY[0x277D18EE8] "sharedInstance")];
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)deleteAttachmentsDirectWithPredicate:(id)predicate
{
  database = [MEMORY[0x277D18EB0] database];

  MEMORY[0x2821F9670](database, sel_deleteAttachmentsDirectWithPredicate_);
}

- (void)resetFetchStateForAssets
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Resetting fetch state for assets (afterRow to nil)", v3, 2u);
    }
  }
}

- (id)batchOfRecordsMissingAssetsAfterRow:(id *)row withLimit:(int64_t)limit
{
  v44 = *MEMORY[0x277D85DE8];
  rowCopy = row;
  if (row)
  {
    v4 = *row;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = IMDAttachmentRecordCopyAttachmentsForQueryWithLimit();
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v6 count];
      if (v5)
      {
        stringValue = [v5 stringValue];
      }

      else
      {
        stringValue = @"nil";
      }

      *buf = 134218498;
      v39 = v8;
      v40 = 2112;
      v41 = stringValue;
      v42 = 2112;
      v43 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Found %lu records afterRow %@ to download {%@} ", buf, 0x20u);
      if (v5)
      {
      }
    }
  }

  v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = +[IMDRecordZoneManager sharedInstance];
  attachmentRecordZone = [v10 attachmentRecordZone];
  zoneID = [attachmentRecordZone zoneID];

  v31 = v5;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v13 = v6;
  v14 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
  v15 = v31;
  if (v14)
  {
    v16 = *v34;
    v15 = v31;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v33 + 1) + 8 * i);
        if (!v15 || (v19 = [v15 longLongValue], v19 < objc_msgSend(v18, "rowID")))
        {
          v20 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v18, "rowID", rowCopy)}];

          v15 = v20;
        }

        cloudRecordID = [v18 cloudRecordID];

        if (cloudRecordID)
        {
          v22 = objc_alloc(MEMORY[0x277CBC5D0]);
          cloudRecordID2 = [v18 cloudRecordID];
          v24 = [v22 initWithRecordName:cloudRecordID2 zoneID:zoneID];

          if (v24)
          {
            guid = [v18 guid];
            [v32 setObject:guid forKey:v24];
          }

          else if (IMOSLoggingEnabled())
          {
            v26 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v39 = v18;
              _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Could not create recordID for attachment to upload on record %@", buf, 0xCu);
            }
          }
        }

        else
        {
          if (!IMOSLoggingEnabled())
          {
            continue;
          }

          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v39 = v18;
            _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "cloudRecordID is nil on record %@", buf, 0xCu);
          }
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v14);
  }

  if (rowCopy)
  {
    v27 = v15;
    *rowCopy = v15;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v32;
}

- (void)updateAssetUsingRecord:(id)record
{
  recordCopy = record;
  v8 = 0;
  v5 = +[IMDFileTransferCenter sharedInstance];
  v6 = [v5 updateTransfersWithCKRecord:recordCopy recordWasFetched:1 downloadAsset:&v8];
  v7 = [v6 copy];

  if (v7 && [v7 length])
  {
    [(IMDAttachmentStore *)self _removeTransferFromiCloudBackupWithGuid:v7];
  }

  [MEMORY[0x277D1A9C0] cleanUpAssetsOnDiskForRecord:recordCopy];
}

- (void)markTransferAsNotSuccessfullyDownloadedWithGUID:(id)d
{
  v11 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(IMDAttachmentStore *)self attachmentWithGUID:dCopy];
  v6 = v5;
  if (v5)
  {
    [v5 setCloudKitSyncState:5];
    [(IMDAttachmentStore *)self updateAttachment:v6];
  }

  else if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = dCopy;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Failed to find transfer %@ to mark as unsuccessful", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_removeTransferFromiCloudBackupWithGuid:(id)guid
{
  v18 = *MEMORY[0x277D85DE8];
  guidCopy = guid;
  v4 = +[IMDAttachmentStore sharedInstance];
  v5 = [v4 attachmentWithGUID:guidCopy];

  if (v5 && [v5 cloudKitSyncState] == 1)
  {
    localPath = [v5 localPath];
    v13 = 0;
    if (localPath && ([MEMORY[0x277CCAA00] defaultManager], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "fileExistsAtPath:isDirectory:", localPath, &v13), v7, v8))
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v15 = guidCopy;
          v16 = 2112;
          v17 = localPath;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Removing icloud backup attribute for guid %@ path %@", buf, 0x16u);
        }
      }

      v10 = +[IMDCKBackupController sharedInstance];
      [v10 removePathFromiCloudBackup:localPath];
    }

    else if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v15 = localPath;
        v16 = 2112;
        v17 = guidCopy;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Attachment at path '%@' for %@ not found, NOT removing from iCloud backups", buf, 0x16u);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)batchOfRecordIDsToDeleteWithLimit:(int64_t)limit error:(id *)error
{
  selfCopy = self;
  IMDAttachmentStore.batchOfRecordIDsToDelete(limit:)(limit);

  sub_22B4D01A0(0, &qword_28141F2A8, 0x277CBC5D0);
  sub_22B71EF0C();
  v6 = sub_22B7DB568();

  return v6;
}

- (void)clearTombstonesForRecordIDs:(id)ds
{
  sub_22B4D01A0(0, &qword_28141F2A8, 0x277CBC5D0);
  v4 = sub_22B7DB918();
  selfCopy = self;
  _sSo18IMDAttachmentStoreC12IMDaemonCoreE15clearTombstones12forRecordIDsySaySo10CKRecordIDCG_tF_0(v4);
}

@end