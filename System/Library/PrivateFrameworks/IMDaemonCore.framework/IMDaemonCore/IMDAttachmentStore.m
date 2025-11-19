@interface IMDAttachmentStore
+ (BOOL)_cloudkitSyncingEnabled;
+ (BOOL)_filesystemIsCaseSensitiveWithPath:(id)a3;
+ (BOOL)fileEligibleForCacheDelete:(id)a3;
+ (BOOL)updateTransferIn:(id)a3 fromGUID:(id)a4 toGUID:(id)a5;
+ (IMDAttachmentStore)sharedInstance;
+ (void)_askToTapToRadarForErrorString:(id)a3 path:(id)a4;
- (BOOL)_shouldMarkAllAttachmentsAsNeedingSync;
- (BOOL)_shouldMarkAttachmentsAsNeedingReupload;
- (BOOL)deleteAttachmentDataForTransfer:(id)a3;
- (BOOL)deleteAttachmentWithGUID:(id)a3;
- (BOOL)deleteAttachmentsForMessage:(id)a3;
- (BOOL)deleteAttachmentsWithGUIDs:(id)a3;
- (BOOL)isSafeToDeleteAttachmentAtPath:(id)a3;
- (BOOL)removeAttachment:(id)a3 fromMessageWithGUID:(id)a4;
- (BOOL)updateTemporaryTransferGUIDsIfNeeded:(id)a3 transfersToSync:(id)a4;
- (BOOL)updateTemporaryTransferGUIDsOn:(id)a3 andUpdateMessageIfNeeded:(id)a4 transfersToSync:(id)a5;
- (id)_alternateAttachmentPathIfExists:(id)a3;
- (id)_permanentTransferGUIDForExistingTransferWithTemporaryGUID:(id)a3;
- (id)_permanentTransferGUIDForTransfer:(id)a3 inItem:(id)a4;
- (id)_recordZoneIDForFilter:(unint64_t)a3;
- (id)_updateAttachmentGUIDIfNeededAndReturnTransfersMarkedWithFailStatus:(id)a3 transfersToSyncRowIDs:(id)a4;
- (id)attachmentWithGUID:(id)a3;
- (id)attachmentsFilteredUsingPredicate:(id)a3 limit:(unint64_t)a4;
- (id)attachmentsWithGUIDs:(id)a3;
- (id)batchOfRecordIDsToDeleteWithLimit:(int64_t)a3 error:(id *)a4;
- (id)batchOfRecordsMissingAssetsAfterRow:(id *)a3 withLimit:(int64_t)a4;
- (id)batchOfRecordsToWriteWithFilter:(unint64_t)a3 limit:(int64_t)a4 recurseCount:(int)a5 error:(id *)a6;
- (id)fileTransferWithAttachmentRecordRef:(_IMDAttachmentRecordStruct *)a3;
- (id)messageForTransferGUID:(id)a3 shouldLoadAttachments:(BOOL)a4;
- (id)syncTokenStore;
- (int64_t)_attachmentQueryForFilter:(unint64_t)a3;
- (void)_hasMarkedAllAttachmentsAsNeedingSync;
- (void)_markAllFailedAttachmentsAsNeedingSync;
- (void)_markAttachmentWithROWID:(id)a3 withSyncState:(int64_t)a4;
- (void)_markTransferAsNotBeingAbleToSyncWithGUID:(id)a3;
- (void)_needsToMarkAllAttachmentsAsNeedingSync;
- (void)_removeTransferFromiCloudBackupWithGuid:(id)a3;
- (void)_resetAttachmentSyncStateForGUID:(id)a3 newSyncState:(int64_t)a4;
- (void)clearLocalSyncState:(unint64_t)a3;
- (void)clearTombstonesForRecordIDs:(id)a3;
- (void)deleteAttachmentSyncToken;
- (void)deleteAttachmentsDirectWithPredicate:(id)a3;
- (void)markAllAttachmentsAsNotPurgeable;
- (void)markFile:(id)a3 asPurgeable:(BOOL)a4;
- (void)markTransferAsNotSuccessfullyDownloadedWithGUID:(id)a3;
- (void)recordUpdateFailedWithID:(id)a3 localGUID:(id)a4 error:(id)a5;
- (void)recordUpdateSucceededWithRecord:(id)a3;
- (void)resetFetchState;
- (void)resetFetchStateForAssets;
- (void)resetLocalSyncStateIfAppropriate;
- (void)updateAssetUsingRecord:(id)a3;
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

- (void)clearLocalSyncState:(unint64_t)a3
{
  v3 = a3;
  v8 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7[0] = 67109120;
      v7[1] = v3;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Clearing local attachments sync state, flags 0x%x", v7, 8u);
    }
  }

  if (v3)
  {
    [(IMDAttachmentStore *)self deleteAttachmentSyncToken];
  }

  if ((v3 & 2) != 0)
  {
    [(IMDAttachmentStore *)self markAllAttachmentsAsNeedingCloudKitSync];
  }

  else if ((v3 & 0x10) != 0)
  {
    [(IMDAttachmentStore *)self _needsToMarkAllAttachmentsAsNeedingSync];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldMarkAttachmentsAsNeedingReupload
{
  v2 = [MEMORY[0x277D1A990] sharedInstance];
  v3 = [v2 getValueFromDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D196C0]];

  if (v3)
  {
    v4 = MEMORY[0x277CBEAA8];
    v5 = v3;
    v6 = [v4 date];
    [v6 timeIntervalSinceDate:v5];
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
  v2 = [(IMDAttachmentStore *)self _shouldMarkAttachmentsAsNeedingReupload];
  v3 = IMOSLoggingEnabled();
  if (v2)
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

    v6 = [MEMORY[0x277CBEAA8] date];
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
  v2 = [(IMDAttachmentStore *)self syncTokenStore];
  [v2 persistToken:0 forKey:@"attachmentZoneChangeToken"];
}

- (void)_needsToMarkAllAttachmentsAsNeedingSync
{
  v2 = [MEMORY[0x277D1A990] sharedInstance];
  [v2 setBool:0 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A28]];
}

- (BOOL)_shouldMarkAllAttachmentsAsNeedingSync
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D1ACB8] sharedInstance];
  v3 = [v2 isUnderFirstDataProtectionLock];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277D1A990] sharedInstance];
    v4 = [v5 getBoolFromDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A28]] ^ 1;
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
  v2 = [MEMORY[0x277D1A990] sharedInstance];
  [v2 setBool:1 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A28]];
}

- (void)_markAttachmentWithROWID:(id)a3 withSyncState:(int64_t)a4
{
  [a3 longLongValue];

  IMDAttachmentRecordMarkAttachmentWithROWIDWithSyncState();
}

- (id)_updateAttachmentGUIDIfNeededAndReturnTransfersMarkedWithFailStatus:(id)a3 transfersToSyncRowIDs:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v26 = a4;
  v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = v6;
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
        v13 = [v12 guid];
        v14 = [v12 guid];
        v15 = [(IMDAttachmentStore *)self messageForTransferGUID:v14 shouldLoadAttachments:1];

        if (v15)
        {
          if ([(IMDAttachmentStore *)self updateTemporaryTransferGUIDsOn:v12 andUpdateMessageIfNeeded:v15 transfersToSync:v7])
          {
            if (IMOSLoggingEnabled())
            {
              v16 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
              {
                v17 = [v12 guid];
                *buf = v24;
                v33 = v13;
                v34 = 2112;
                v35 = v17;
                _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Fixed up guid for transfer old guid: %@ new guid: %@", buf, 0x16u);
              }
            }
          }

          else if (IMFileTransferGUIDIsTemporary())
          {
            v20 = [v26 objectAtIndexedSubscript:v10];
            if (IMOSLoggingEnabled())
            {
              v21 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                *buf = v24;
                v33 = v13;
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
          v18 = [v26 objectAtIndexedSubscript:v10];
          if (IMOSLoggingEnabled())
          {
            v19 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = v24;
              v33 = v13;
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

- (id)batchOfRecordsToWriteWithFilter:(unint64_t)a3 limit:(int64_t)a4 recurseCount:(int)a5 error:(id *)a6
{
  v103[2] = *MEMORY[0x277D85DE8];
  [(IMDAttachmentStore *)self _attachmentQueryForFilter:?];
  v70 = self;
  v7 = [(IMDAttachmentStore *)self afterRow];
  v8 = IMDAttachmentRecordCopyAttachmentsForQueryWithLimit();

  v69 = v8;
  v9 = [v8 count];
  if (v9)
  {
    v73 = v9;
    v77 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v76 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v78 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10 = [(IMDAttachmentStore *)v70 afterRow];
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
          v17 = [v15 rowID];
          if (!v10 || [v10 longLongValue] < v17)
          {
            v18 = [MEMORY[0x277CCABB0] numberWithLongLong:v17];

            v10 = v18;
          }

          if (v16)
          {
            [v77 addObject:v16];
            v19 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v15, "rowID")}];
            [v76 addObject:v19];

            v20 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v15, "rowID")}];
            v21 = [v16 guid];
            [v78 setObject:v20 forKey:v21];
          }

          else
          {
            if (IMOSLoggingEnabled())
            {
              v22 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
              {
                v23 = [v15 rowID];
                *buf = 134217984;
                v98 = v23;
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

    [(IMDAttachmentStore *)v70 setAfterRow:v10];
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [v77 count];
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

    v67 = [(IMDAttachmentStore *)v70 _updateAttachmentGUIDIfNeededAndReturnTransfersMarkedWithFailStatus:v77 transfersToSyncRowIDs:v76];
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

      [v77 removeObjectsInArray:v67];
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v28 = v77;
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

    v75 = [(IMDAttachmentStore *)v70 _recordZoneIDForFilter:a3];
    v34 = +[IMDCKRecordSaltManager sharedInstance];
    v74 = [v34 cachedSalt];

    v71 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if ([v77 count])
    {
      v35 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      obj = v77;
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
          v40 = [v39 copyCKRecordRepresentationWithZoneID:v75 salt:v74];
          v41 = v40;
          if (v40)
          {
            v42 = [v40 recordID];
            v43 = [v42 recordName];
            v44 = [v35 containsObject:v43];

            if (v44)
            {
              goto LABEL_64;
            }

            v45 = [v39 guid];
            [v71 setObject:v41 forKey:v45];

            v46 = [v41 recordID];
            v47 = [v46 recordName];
            [v35 addObject:v47];
          }

          else
          {
            v48 = [v39 guid];
            v49 = [v78 objectForKey:v48];
            v50 = [v49 longLongValue];

            if (v50)
            {
              if (IMOSLoggingEnabled())
              {
                v51 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
                {
                  v52 = [v39 guid];
                  *buf = 138412546;
                  v98 = v52;
                  v99 = 2048;
                  v100 = v50;
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

            v46 = [MEMORY[0x277D1AAA8] sharedInstance];
            [v46 forceAutoBugCaptureWithSubType:@"NullCKRecordForIMFileTransfer" errorPayload:0 type:@"MiCSync" context:@"Failed to generate CKRecord for IMFileTransfer"];
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
      if (a5 >= 1)
      {
        v54 = [MEMORY[0x277D1AAA8] sharedInstance];
        v91[0] = *MEMORY[0x277D1A170];
        v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v71, "count")}];
        v92[0] = v55;
        v91[1] = *MEMORY[0x277D1A178];
        v56 = [MEMORY[0x277CCABB0] numberWithInt:a5];
        v92[1] = v56;
        v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:2];
        [v54 trackEvent:*MEMORY[0x277D1A180] withDictionary:v57];
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

      v59 = [(IMDAttachmentStore *)v70 batchOfRecordsToWriteWithFilter:a3 limit:a4 recurseCount:(a5 + 1) error:a6];
      v58 = v71;
    }

    goto LABEL_79;
  }

  if (a5 >= 1)
  {
    v77 = [MEMORY[0x277D1AAA8] sharedInstance];
    v60 = *MEMORY[0x277D1A178];
    v102[0] = *MEMORY[0x277D1A170];
    v102[1] = v60;
    v103[0] = &unk_283F4E4F8;
    v76 = [MEMORY[0x277CCABB0] numberWithInt:a5];
    v103[1] = v76;
    v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:2];
    [v77 trackEvent:*MEMORY[0x277D1A180] withDictionary:v78];
    v59 = 0;
LABEL_79:

    goto LABEL_80;
  }

  v59 = 0;
LABEL_80:

  v62 = *MEMORY[0x277D85DE8];

  return v59;
}

- (id)_recordZoneIDForFilter:(unint64_t)a3
{
  v4 = +[IMDRecordZoneManager sharedInstance];
  v5 = v4;
  if (a3 == 4)
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

- (int64_t)_attachmentQueryForFilter:(unint64_t)a3
{
  if (a3 == 4)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

- (void)recordUpdateSucceededWithRecord:(id)a3
{
  v3 = a3;
  v4 = +[IMDCKAttachmentSyncController sharedInstance];
  [v4 _updateTransferUsingCKRecord:v3 wasFetched:0 dispatchToMain:0];
}

- (void)recordUpdateFailedWithID:(id)a3 localGUID:(id)a4 error:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277D1AC70] sharedInstance];
  v11 = [v8 copy];
  if (![v10 wasRecordAlreadyChanged:v9])
  {
    if ([v10 wasAssetNotAvailable:v9])
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

    if ([v10 wasUnknownItem:v9])
    {
      v25 = self;
      v26 = v11;
      v27 = 2;
    }

    else
    {
      if (![v10 wasZoneNotFound:v9])
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

      v25 = self;
      v26 = v11;
      v27 = 0;
    }

    [(IMDAttachmentStore *)v25 _resetAttachmentSyncStateForGUID:v26 newSyncState:v27];
    goto LABEL_32;
  }

  v12 = +[IMDCKUtilities sharedInstance];
  v13 = [v12 extractServerRecordFromCKServerErrorRecordChanged:v9];

  v14 = [v7 recordName];
  v15 = [v13 recordID];
  v16 = [v15 recordName];
  v17 = v7;
  v18 = [v14 isEqualToString:v16];

  if (v18)
  {
    v19 = [MEMORY[0x277D1A9C0] transferGUIDOfRecord:v13];
    v20 = [v11 isEqualToString:v19];
    v21 = IMOSLoggingEnabled();
    if (v20)
    {
      v7 = v17;
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
      v7 = v17;
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
    v7 = v17;
    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v34 = [v13 recordID];
        v29 = [v34 recordName];
        v30 = [v17 recordName];
        *buf = 138412546;
        v37 = v29;
        v38 = 2112;
        v39 = v30;
        _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Conflicting serverRecord was different than the one being updated (server: %@, local: %@)", buf, 0x16u);
      }
    }

    [(IMDAttachmentStore *)self _resetAttachmentSyncStateForGUID:v11 newSyncState:2];
  }

LABEL_32:
  v32 = *MEMORY[0x277D85DE8];
}

- (void)_resetAttachmentSyncStateForGUID:(id)a3 newSyncState:(int64_t)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(IMDAttachmentStore *)self attachmentWithGUID:v6];
  v8 = v7;
  if (v7)
  {
    [v7 setCloudKitServerChangeTokenBlob:0];
    [v8 setCloudKitRecordID:0];
    [v8 setCloudKitSyncState:a4];
    [(IMDAttachmentStore *)self updateAttachment:v8];
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Tried to clear sync state for a transfer with guid (%@), transfer not found on disk", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_markTransferAsNotBeingAbleToSyncWithGUID:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDAttachmentStore *)self attachmentWithGUID:v4];
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
      v10 = v4;
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

- (BOOL)removeAttachment:(id)a3 fromMessageWithGUID:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  v8 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = a3;
    v15 = 2112;
    v16 = a4;
    _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "Request to unassociate transfer: %@ from message guid: %@", &v13, 0x16u);
  }

  v9 = -[IMDAttachmentStore attachmentWithGUID:](self, "attachmentWithGUID:", [a3 guid]);
  v10 = v9;
  [a3 guid];
  IMDMessageRecordUnassociateMessageWithGUIDFromAttachmentWithGUID();

  objc_autoreleasePoolPop(v7);
  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)markFile:(id)a3 asPurgeable:(BOOL)a4
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a3)
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

  if (a4)
  {
    if (![IMDAttachmentStore fileEligibleForCacheDelete:a3])
    {
      v5 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = a3;
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
    [IMDAttachmentStore _askToTapToRadarForErrorString:@"SingleFile" path:a3];
  }

  v11 = *MEMORY[0x277D85DE8];

  MEMORY[0x2821F9670](a3, sel_im_markFileAsPurgeable_);
}

+ (BOOL)_cloudkitSyncingEnabled
{
  v2 = +[IMDCKUtilities sharedInstance];

  return [(IMDCKUtilities *)v2 cloudKitSyncingEnabled];
}

+ (BOOL)fileEligibleForCacheDelete:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (([a1 _cloudkitSyncingEnabled] & 1) == 0)
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

  v4 = [a3 lastPathComponent];
  if (![v4 isEqualToString:@"Attachments"])
  {
    if (![v4 containsString:*MEMORY[0x277D19E70]])
    {
      if (([objc_msgSend(a3 "stringByDeletingLastPathComponent")] & 1) == 0)
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

      v13 = [objc_msgSend(a3 "pathExtension")];
      if (v13)
      {
        v14 = IMOffloadingLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 138412290;
          v18 = a3;
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
    v18 = a3;
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

+ (BOOL)_filesystemIsCaseSensitiveWithPath:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6249BC;
  block[3] = &unk_278704F90;
  block[4] = a3;
  if (qword_2814225A8 != -1)
  {
    dispatch_once(&qword_2814225A8, block);
  }

  return byte_2814225A0;
}

- (id)_alternateAttachmentPathIfExists:(id)a3
{
  if (![IMDAttachmentStore _filesystemIsCaseSensitiveWithPath:?])
  {
    return 0;
  }

  v4 = [a3 pathExtension];
  result = [v4 length];
  if (result)
  {
    v6 = [v4 lowercaseString];
    v7 = [v4 uppercaseString];
    if ([v4 isEqualToString:v7])
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    v9 = [objc_msgSend(a3 "stringByDeletingPathExtension")];
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

+ (void)_askToTapToRadarForErrorString:(id)a3 path:(id)a4
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

      v9 = [MEMORY[0x277D1AAA8] sharedInstance];
      [v9 trackEvent:*MEMORY[0x277D1A1E0]];
      [v7 setUsesNotificationCenter:0];
      [v7 setRepresentedApplicationBundle:*MEMORY[0x277D192F0]];
      v10 = [MEMORY[0x277D192D8] sharedInstance];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = sub_22B624D50;
      v11[3] = &unk_278706850;
      v11[4] = a3;
      v11[5] = a4;
      [v10 addUserNotification:v7 listener:0 completionHandler:v11];
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

  v2 = [@"/var/mobile/Library/SMS/Attachments" stringByExpandingTildeInPath];
  v3 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 138412290;
    *(buf + 4) = v2;
    _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEFAULT, "Clearing purgeable flags under %@", buf, 0xCu);
  }

  memset(&buf[1], 0, 24);
  buf[0] = 0x900000002;
  v4 = fsctl([v2 fileSystemRepresentation], 0xC0204A49uLL, buf, 0);
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
        v16 = v2;
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
      v16 = v2;
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
      v16 = v2;
      v9 = "Cleared purgeable flags under %@";
      goto LABEL_11;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)attachmentWithGUID:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = a3;
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

- (id)attachmentsWithGUIDs:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = a3;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Request for attachments with guids: %@", buf, 0xCu);
  }

  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a3, "count")}];
  if (a3)
  {
    v7 = -[IMDAttachmentStore attachmentsFilteredUsingPredicate:limit:](self, "attachmentsFilteredUsingPredicate:limit:", [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", *MEMORY[0x277D196B0], a3], -1);
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

- (id)fileTransferWithAttachmentRecordRef:(_IMDAttachmentRecordStruct *)a3
{
  v4 = objc_autoreleasePoolPush();
  if (a3)
  {
    a3 = IMFileTransferFromIMDAttachmentRecordRef(a3);
    [(_IMDAttachmentRecordStruct *)a3 fixInvalidTransferStateIfNeeded];
  }

  objc_autoreleasePoolPop(v4);

  return a3;
}

- (id)attachmentsFilteredUsingPredicate:(id)a3 limit:(unint64_t)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = sub_22B4D7760;
  v25 = sub_22B4D7910;
  v26 = 0;
  v6 = [MEMORY[0x277D18EB0] synchronousDatabase];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_22B625638;
  v20[3] = &unk_2787031A0;
  v20[4] = &v21;
  [v6 fetchAttachmentRecordsFilteredUsingPredicate:a3 limit:a4 completionHandler:v20];
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

- (id)messageForTransferGUID:(id)a3 shouldLoadAttachments:(BOOL)a4
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
        v13 = a3;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "messageForTransferGUID failed to get a message record for transfer %@", &v12, 0xCu);
      }
    }

    v11 = *MEMORY[0x277D85DE8];
    return 0;
  }
}

- (BOOL)updateTemporaryTransferGUIDsIfNeeded:(id)a3 transfersToSync:(id)a4
{
  v7 = -[IMDAttachmentStore messageForTransferGUID:shouldLoadAttachments:](self, "messageForTransferGUID:shouldLoadAttachments:", [a3 guid], 1);

  return [(IMDAttachmentStore *)self updateTemporaryTransferGUIDsOn:a3 andUpdateMessageIfNeeded:v7 transfersToSync:a4];
}

+ (BOOL)updateTransferIn:(id)a3 fromGUID:(id)a4 toGUID:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(a3);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        if ([objc_msgSend(v12 "guid")])
        {
          [v12 setGuid:a5];
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }

        ++v11;
      }

      while (v9 != v11);
      v8 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (id)_permanentTransferGUIDForTransfer:(id)a3 inItem:(id)a4
{
  v6 = [a3 guid];
  if (!IMFileTransferGUIDIsTemporary())
  {
    return v6;
  }

  v7 = [a4 guid];
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

  if ([objc_msgSend(a4 "body")])
  {
    v8 = [objc_msgSend(a3 "filename")];
LABEL_5:

    return MEMORY[0x282173DC0](v7, v8);
  }

  if (![a3 isAdaptiveImageGlyph])
  {
    v8 = [a4 messagePartIndexForAttachmentMessagePartWithTransferGUID:v6];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  v9 = [a3 adaptiveImageGlyphContentIdentifier];

  return MEMORY[0x282173DC8](v9, v7);
}

- (id)_permanentTransferGUIDForExistingTransferWithTemporaryGUID:(id)a3
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
            v19 = a3;
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

- (BOOL)updateTemporaryTransferGUIDsOn:(id)a3 andUpdateMessageIfNeeded:(id)a4 transfersToSync:(id)a5
{
  v69 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v46 = [a4 guid];
    v7 = [objc_msgSend(a4 "fileTransferGUIDs")];
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
              v16 = [(IMDAttachmentStore *)self _permanentTransferGUIDForTransfer:v15 inItem:a4];
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

                [IMDAttachmentStore updateTransferIn:a5 fromGUID:v12 toGUID:v16];
                [+[IMDFileTransferCenter sharedInstance](IMDFileTransferCenter updateTransferGUID:"updateTransferGUID:toGUID:" toGUID:v12, v16];
                if (a3 && [v12 isEqualToString:{objc_msgSend(a3, "guid")}])
                {
                  v20 = IMAttachmentsLogHandle();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                  {
                    v21 = [a3 guid];
                    *buf = 138412546;
                    v65 = v21;
                    v66 = 2112;
                    v67 = v16;
                    _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_DEFAULT, "We are updating the in-memory transfer's guid that we will sync to CloudKit in-memory transfer: %@ newGUID: %@", buf, 0x16u);
                  }

                  [a3 setGuid:v16];
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

    v26 = [a4 updateTemporaryFileTransferGUIDsWithPermanentFileTransferGUIDs:v25];
    v27 = v26;
    if (v26)
    {
      v49 = v26;
      v28 = [+[IMDMessageStore sharedInstance](IMDMessageStore storeMessage:"storeMessage:forceReplace:modifyError:modifyFlags:flagMask:" forceReplace:a4 modifyError:0 modifyFlags:0 flagMask:0, 0];
      if (!a4 || v28 == a4)
      {
        v31 = IMAttachmentsLogHandle();
        v30 = v46;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D6C30(v46, a4, v31);
        }

        v29 = @"FAILED (maybe)";
      }

      else
      {
        v29 = @"succeeded";
        v30 = v46;
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
            v39 = [v38 guid];
            v40 = [v38 updateTemporaryFileTransferGUIDsWithPermanentFileTransferGUIDs:v25];
            v41 = IMLogHandleForCategory();
            v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
            if (v40)
            {
              if (v42)
              {
                *buf = 138412290;
                v65 = v39;
                _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_DEFAULT, "Associated message item %@ changed when temporary file transfers were updated.", buf, 0xCu);
              }

              [v52 addObject:v39];
            }

            else if (v42)
            {
              *buf = 138412290;
              v65 = v39;
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
    if (!a3)
    {
      v24 = v27;
    }
  }

  else
  {
    v23 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D6BA8(a4, v23);
    }

    v24 = 0;
  }

  v44 = *MEMORY[0x277D85DE8];
  return v24 & 1;
}

- (BOOL)deleteAttachmentsForMessage:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [a3 fileTransferGUIDs];
  if (![v4 count])
  {
    goto LABEL_6;
  }

  v5 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Deleting attachments, guids %@", &v10, 0xCu);
  }

  if ([(IMDAttachmentStore *)self deleteAttachmentsWithGUIDs:v4])
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

- (BOOL)deleteAttachmentsWithGUIDs:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = a3;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Request to delete attachments with guids: %@", buf, 0xCu);
  }

  context = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v31 objects:v40 count:16];
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
          objc_enumerationMutation(a3);
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
              v37 = v11;
              v38 = 2112;
              v39 = v12;
              _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEFAULT, "Requested delete of temporary attachmentGUID %@ will also delete permanent attachmentGUID %@", buf, 0x16u);
            }

            [v6 addObject:v12];
          }
        }
      }

      v8 = [a3 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v8);
  }

  v14 = [v6 copy];

  v15 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = v14;
    _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_DEFAULT, "Deleting attachments with attachment guids from spotlight: %@", buf, 0xCu);
  }

  v16 = [MEMORY[0x277D18EE0] indexingQueryProvider];
  v17 = [MEMORY[0x277D18EB8] contextWithReason:1006];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_22B6268E8;
  v30[3] = &unk_2787062A8;
  v30[4] = v14;
  [v16 deleteAttachmentGUIDs:v14 context:v17 completionHandler:v30];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = [a3 countByEnumeratingWithState:&v26 objects:v35 count:16];
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
          objc_enumerationMutation(a3);
        }

        v22 = *(*(&v26 + 1) + 8 * j);
        IMDAttachmentRecordDeleteAttachmentForGUID();
      }

      v19 = [a3 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v19);
  }

  objc_autoreleasePoolPop(context);
  v23 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)deleteAttachmentDataForTransfer:(id)a3
{
  v4 = objc_autoreleasePoolPush();
  [objc_msgSend(MEMORY[0x277D18EE8] "sharedInstance")];
  objc_autoreleasePoolPop(v4);
  return 1;
}

- (BOOL)deleteAttachmentWithGUID:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v8[0] = a3;
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

- (BOOL)isSafeToDeleteAttachmentAtPath:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [a3 length];
  if (v4)
  {
    v5 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = a3;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Request to check if the attachment path is safe: %@", &v8, 0xCu);
    }

    LOBYTE(v4) = [objc_msgSend(MEMORY[0x277D18EE8] "sharedInstance")];
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)deleteAttachmentsDirectWithPredicate:(id)a3
{
  v3 = [MEMORY[0x277D18EB0] database];

  MEMORY[0x2821F9670](v3, sel_deleteAttachmentsDirectWithPredicate_);
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

- (id)batchOfRecordsMissingAssetsAfterRow:(id *)a3 withLimit:(int64_t)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v30 = a3;
  if (a3)
  {
    v4 = *a3;
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
        v9 = [v5 stringValue];
      }

      else
      {
        v9 = @"nil";
      }

      *buf = 134218498;
      v39 = v8;
      v40 = 2112;
      v41 = v9;
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
  v11 = [v10 attachmentRecordZone];
  v12 = [v11 zoneID];

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
          v20 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v18, "rowID", v30)}];

          v15 = v20;
        }

        v21 = [v18 cloudRecordID];

        if (v21)
        {
          v22 = objc_alloc(MEMORY[0x277CBC5D0]);
          v23 = [v18 cloudRecordID];
          v24 = [v22 initWithRecordName:v23 zoneID:v12];

          if (v24)
          {
            v25 = [v18 guid];
            [v32 setObject:v25 forKey:v24];
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

  if (v30)
  {
    v27 = v15;
    *v30 = v15;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v32;
}

- (void)updateAssetUsingRecord:(id)a3
{
  v4 = a3;
  v8 = 0;
  v5 = +[IMDFileTransferCenter sharedInstance];
  v6 = [v5 updateTransfersWithCKRecord:v4 recordWasFetched:1 downloadAsset:&v8];
  v7 = [v6 copy];

  if (v7 && [v7 length])
  {
    [(IMDAttachmentStore *)self _removeTransferFromiCloudBackupWithGuid:v7];
  }

  [MEMORY[0x277D1A9C0] cleanUpAssetsOnDiskForRecord:v4];
}

- (void)markTransferAsNotSuccessfullyDownloadedWithGUID:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDAttachmentStore *)self attachmentWithGUID:v4];
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
      v10 = v4;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Failed to find transfer %@ to mark as unsuccessful", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_removeTransferFromiCloudBackupWithGuid:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[IMDAttachmentStore sharedInstance];
  v5 = [v4 attachmentWithGUID:v3];

  if (v5 && [v5 cloudKitSyncState] == 1)
  {
    v6 = [v5 localPath];
    v13 = 0;
    if (v6 && ([MEMORY[0x277CCAA00] defaultManager], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "fileExistsAtPath:isDirectory:", v6, &v13), v7, v8))
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v15 = v3;
          v16 = 2112;
          v17 = v6;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Removing icloud backup attribute for guid %@ path %@", buf, 0x16u);
        }
      }

      v10 = +[IMDCKBackupController sharedInstance];
      [v10 removePathFromiCloudBackup:v6];
    }

    else if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v15 = v6;
        v16 = 2112;
        v17 = v3;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Attachment at path '%@' for %@ not found, NOT removing from iCloud backups", buf, 0x16u);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)batchOfRecordIDsToDeleteWithLimit:(int64_t)a3 error:(id *)a4
{
  v5 = self;
  IMDAttachmentStore.batchOfRecordIDsToDelete(limit:)(a3);

  sub_22B4D01A0(0, &qword_28141F2A8, 0x277CBC5D0);
  sub_22B71EF0C();
  v6 = sub_22B7DB568();

  return v6;
}

- (void)clearTombstonesForRecordIDs:(id)a3
{
  sub_22B4D01A0(0, &qword_28141F2A8, 0x277CBC5D0);
  v4 = sub_22B7DB918();
  v5 = self;
  _sSo18IMDAttachmentStoreC12IMDaemonCoreE15clearTombstones12forRecordIDsySaySo10CKRecordIDCG_tF_0(v4);
}

@end