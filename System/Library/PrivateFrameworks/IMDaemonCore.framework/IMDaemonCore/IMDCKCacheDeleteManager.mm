@interface IMDCKCacheDeleteManager
+ (id)sharedInstance;
- (BOOL)_deviceConditionsAllowsAttachmentFileSizeUpdateForActivity:(id)a3 deferred:(BOOL *)a4;
- (BOOL)_shouldFetchNextBatch:(unint64_t)a3 totalTransfers:(id)a4;
- (BOOL)canWriteFileOfEstimatedSize:(unint64_t)a3 refreshCachedValue:(BOOL)a4;
- (BOOL)shouldDownloadAssetsOfSize:(unint64_t)a3 refreshCachedValue:(BOOL)a4;
- (IMDCKCacheDeleteManager)init;
- (id)_cacheDeleteGuidanceDictionaryForRequestedSize:(unint64_t)a3;
- (id)_cacheDeleteRequestCacheableSpaceGuidanceWithID:(id)a3 diskVolume:(id)a4 urgency:(int)a5 requestedSize:(unint64_t)a6;
- (id)_copyAttachmentRecord:(id)a3;
- (id)_fileTransfersToDelete:(id)a3;
- (id)_fileTransfersToValidate:(id)a3;
- (id)_getIndexSetForBatch:(id)a3 indexOfTransfers:(unint64_t)a4;
- (id)createDictionaryForNotDeletingAnyAttachments:(id)a3 urgency:(int)a4;
- (int64_t)_deleteAttachmentsAndReturnBytesDeleted:(int)a3;
- (int64_t)_deleteFilesOnDiskAndUpdateTransfers:(id)a3;
- (int64_t)_purgeableSpaceGivenUrgency:(int)a3;
- (int64_t)purgeAttachments:(int64_t)a3;
- (int64_t)purgeableAttachmentSize;
- (void)_cacheDeleteSetUp;
- (void)_fetchTransfersFromCloudKit:(id)a3 indexOfTransfers:(unint64_t)a4 numberOfBatchesToFetch:(unint64_t)a5 activity:(id)a6 withCompletion:(id)a7;
- (void)_fetchTransfersFromCloudKit:(id)a3 withActivity:(id)a4;
- (void)_postTransferInfoOfDeletedTransfers:(id)a3;
- (void)batchCompletedWithTransfers:(id)a3;
- (void)metricAttachmentsToPurge:(int64_t)a3 withActivity:(id)a4;
- (void)registerWithCacheDelete;
- (void)resetAttachmentWatermark;
- (void)updateAttachmentFileSizesWithActivity:(id)a3;
@end

@implementation IMDCKCacheDeleteManager

+ (id)sharedInstance
{
  if (qword_281421140 != -1)
  {
    sub_22B7D411C();
  }

  v3 = qword_281420FB8;

  return v3;
}

- (IMDCKCacheDeleteManager)init
{
  v7.receiver = self;
  v7.super_class = IMDCKCacheDeleteManager;
  v2 = [(IMDCKCacheDeleteManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 9) = 65537;
    v4 = [[IMPurgedAttachmentHandler alloc] initWithBatchSize:64];
    purgedAttachmentHandler = v3->_purgedAttachmentHandler;
    v3->_purgedAttachmentHandler = v4;

    [(IMPurgedAttachmentHandler *)v3->_purgedAttachmentHandler setDelegate:v3];
  }

  return v3;
}

- (BOOL)_deviceConditionsAllowsAttachmentFileSizeUpdateForActivity:(id)a3 deferred:(BOOL *)a4
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v9 = +[IMDCKUtilities sharedInstance];
    v8 = [v9 isDeviceCharging];

    goto LABEL_17;
  }

  if (!xpc_activity_should_defer(v5))
  {
    v8 = 1;
    goto LABEL_17;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Setting xpc_activity_t to XPC_ACTIVITY_STATE_DEFER because conditions are no longer met", buf, 2u);
    }
  }

  if (!xpc_activity_set_state(v6, 3))
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Error forcing xpc_activity_t to XPC_ACTIVITY_STATE_DEFER", v12, 2u);
      }
    }

    goto LABEL_16;
  }

  if (!a4)
  {
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  v8 = 0;
  *a4 = 1;
LABEL_17:

  return v8;
}

- (void)updateAttachmentFileSizesWithActivity:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  activity = a3;
  if ([(IMDCKCacheDeleteManager *)self isUpdatingAttachmentFileSizes])
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Is already updating file sizes, returning", buf, 2u);
      }

LABEL_5:
    }
  }

  else
  {
    if (IMBagIntValueWithDefault())
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_58;
      }

      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Server bag does not allow attachment filesize updating, retunring", buf, 2u);
      }

      goto LABEL_5;
    }

    [(IMDCKCacheDeleteManager *)self setIsUpdatingAttachmentFileSizes:1];
    v32 = *MEMORY[0x277D199D0];
    v33 = *MEMORY[0x277D19A08];
    v4 = IMGetCachedDomainValueForKey();
    v5 = [v4 longLongValue];

    v6 = 0;
    v37 = 0;
    v43 = 0;
    *&v7 = 134217984;
    v31 = v7;
    do
    {
      if (![(IMDCKCacheDeleteManager *)self _deviceConditionsAllowsAttachmentFileSizeUpdateForActivity:activity deferred:&v43, v31])
      {
        break;
      }

      context = objc_autoreleasePoolPush();
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = [MEMORY[0x277CCABB0] numberWithLongLong:v5];
          v10 = [MEMORY[0x277CCABB0] numberWithInt:v37];
          *buf = 138412546;
          v46 = v9;
          v47 = 2112;
          v48 = v10;
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Calling IMDAttachmentUpdateAttachmentFileSizeWithRowIDGreaterThanWatermark with rowID %@ iteration %@", buf, 0x16u);
        }
      }

      updated = IMDAttachmentUpdateAttachmentFileSizeWithRowIDGreaterThanWatermark();
      v38 = updated;
      if (updated)
      {
        if ([updated count])
        {
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v12 = v38;
          v13 = 0;
          v14 = [v12 countByEnumeratingWithState:&v39 objects:v44 count:16];
          if (v14)
          {
            v15 = *v40;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v40 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v39 + 1) + 8 * i);
                v18 = [v17 objectForKey:@"filename"];
                v19 = [v17 objectForKey:@"rowID"];
                v6 = [v19 longLongValue];

                if (v18)
                {
                  v20 = +[IMDAttachmentStore sharedInstance];
                  [v20 markAttachmentPurgeable:v18];

                  ++v13;
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v39 objects:v44 count:16];
            }

            while (v14);
          }

          if (IMOSLoggingEnabled())
          {
            v21 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              *buf = v31;
              v46 = v13;
              _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Marked %ld files as purgeable", buf, 0xCu);
            }
          }

          v5 = v6;
        }

        else
        {
          v5 = v6 + 20;
          if (IMOSLoggingEnabled())
          {
            v23 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Got an empty set of attachments back - there are still more so increasing watermark by 20", buf, 2u);
            }
          }
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "No more attachment fileSizes to fix up, got nil back from query", buf, 2u);
          }
        }

        v5 = -1;
      }

      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = [MEMORY[0x277CCABB0] numberWithLongLong:v5];
          *buf = 138412290;
          v46 = v25;
          _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Previous batch of attachment filesize updates completed, setting new watermark to be %@", buf, 0xCu);
        }
      }

      v26 = [MEMORY[0x277CCABB0] numberWithLongLong:v5];
      IMSetDomainValueForKey();

      objc_autoreleasePoolPop(context);
      ++v37;
      v6 = v5;
    }

    while (v38);
    if (activity)
    {
      if (v43 == 1)
      {
        if (IMOSLoggingEnabled())
        {
          v27 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Stopping filesize update due to DAS deferral.", buf, 2u);
          }
        }
      }

      else
      {
        v28 = xpc_activity_set_state(activity, 5);
        if (IMOSLoggingEnabled())
        {
          v29 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            LODWORD(v46) = v28;
            _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Stopping filesize update. Set state attachment filesizes updated activity result %d", buf, 8u);
          }
        }
      }
    }

    [(IMDCKCacheDeleteManager *)self setIsUpdatingAttachmentFileSizes:0];
  }

LABEL_58:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)registerWithCacheDelete
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B59428C;
  block[3] = &unk_278702FF0;
  block[4] = self;
  if (qword_281421240 != -1)
  {
    dispatch_once(&qword_281421240, block);
  }
}

- (void)_cacheDeleteSetUp
{
  v21 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [(IMDCKCacheDeleteManager *)self _ckUtilitiesSharedInstance];
      v5 = [v4 cacheDeleteEnabled];
      v6 = @"NO";
      if (v5)
      {
        v6 = @"YES";
      }

      *buf = 138412290;
      v20 = v6;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Setting up cache delete callbacks cache delete enabled %@", buf, 0xCu);
    }
  }

  [(IMDCKCacheDeleteManager *)self isUsingCentralizedModel];
  v7 = *MEMORY[0x277D19A08];
  v8 = *MEMORY[0x277D19AB8];
  [(IMDCKCacheDeleteManager *)self setIsUsingCentralizedModel:IMGetDomainBoolForKeyWithDefaultValue()];
  if ([(IMDCKCacheDeleteManager *)self isUsingCentralizedModel])
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v20 = @"/var/mobile/Library/SMS";
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Configuring Centralized Cache Delete for %@", buf, 0xCu);
      }
    }

    CacheDeleteRegisterInfoCallbacks();
    CacheDeleteInitPurgeMarker();
    v10 = CFStringCreateWithCString(0, [@"/var/mobile/Library/SMS" fileSystemRepresentation], 0x8000100u);
    v11 = [@"/var/mobile/Library/SMS" isEqualToString:@"all"];
    v12 = &unk_283F4EE40;
    if (v11)
    {
      v12 = 0;
    }

    v13 = v12;
    objc_initWeak(buf, self);
    v18[1] = v10;
    objc_copyWeak(v18, buf);
    CacheDeleteRegisterPurgeNotification();
    objc_destroyWeak(v18);
    objc_destroyWeak(buf);
  }

  else
  {
    v14 = [(IMDCKCacheDeleteManager *)self _ckUtilitiesSharedInstance];
    v15 = [v14 cacheDeleteEnabled];

    if (v15)
    {
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Configuring Cache Delete", buf, 2u);
        }
      }

      CacheDeleteRegisterInfoCallbacks();
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)resetAttachmentWatermark
{
  if ((IMGetDomainBoolForKey() & 1) == 0)
  {
    IMSetDomainBoolForKey();
    v2 = +[IMDAttachmentStore sharedInstance];
    [v2 markAllAttachmentsAsNotPurgeable];

    v3 = *MEMORY[0x277D19A08];
    v4 = *MEMORY[0x277D199D0];
    IMSetDomainValueForKey();
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Attachment watermark reset to 0", v6, 2u);
      }
    }
  }
}

- (id)_cacheDeleteRequestCacheableSpaceGuidanceWithID:(id)a3 diskVolume:(id)a4 urgency:(int)a5 requestedSize:(unint64_t)a6
{
  v7 = MEMORY[0x277CCABB0];
  v8 = a4;
  [v7 numberWithUnsignedLong:a6];
  v9 = CacheDeleteRequestCacheableSpaceGuidance();

  return v9;
}

- (id)_cacheDeleteGuidanceDictionaryForRequestedSize:(unint64_t)a3
{
  if (qword_27D8CFEE0 != -1)
  {
    sub_22B7D4130();
  }

  return MEMORY[0x2821F9670](self, sel__cacheDeleteRequestCacheableSpaceGuidanceWithID_diskVolume_urgency_requestedSize_);
}

- (BOOL)canWriteFileOfEstimatedSize:(unint64_t)a3 refreshCachedValue:(BOOL)a4
{
  v4 = a4;
  v19 = *MEMORY[0x277D85DE8];
  if ([(IMDCKCacheDeleteManager *)self isDeviceLowOnDiskSpace])
  {
    if (v4)
    {
      v7 = [(IMDCKCacheDeleteManager *)self _cacheDeleteGuidanceDictionaryForRequestedSize:a3];
      v8 = [v7 objectForKeyedSubscript:@"CACHE_DELETE_GUIDANCE"];
      v9 = [v7 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
      v10 = [v9 unsignedLongLongValue];

      [(IMDCKCacheDeleteManager *)self setDeviceLowOnDiskSpace:v10 < a3];
      -[IMDCKCacheDeleteManager setAllowsWritingToDisk:](self, "setAllowsWritingToDisk:", [v8 isEqualToString:@"CACHE_DELETE_GUIDANCE_DO_NOT_EXPAND_CACHE"] ^ 1);
      if (![(IMDCKCacheDeleteManager *)self allowsWritingToDisk]&& IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
          v15 = 138412546;
          v16 = v7;
          v17 = 2112;
          v18 = v12;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Cache delete  guidance %@ requested size %@", &v15, 0x16u);
        }
      }
    }
  }

  else if (![(IMDCKCacheDeleteManager *)self isDeviceLowOnDiskSpace])
  {
    [(IMDCKCacheDeleteManager *)self setAllowsWritingToDisk:1];
  }

  result = [(IMDCKCacheDeleteManager *)self allowsWritingToDisk];
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)shouldDownloadAssetsOfSize:(unint64_t)a3 refreshCachedValue:(BOOL)a4
{
  v16 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v6 = [(IMDCKCacheDeleteManager *)self _cacheDeleteGuidanceDictionaryForRequestedSize:?];
    v7 = [v6 objectForKeyedSubscript:@"CACHE_DELETE_GUIDANCE"];
    -[IMDCKCacheDeleteManager setAllowsWritingToDisk:](self, "setAllowsWritingToDisk:", [v7 isEqualToString:@"CACHE_DELETE_GUIDANCE_DO_NOT_EXPAND_CACHE"] ^ 1);
    if (![(IMDCKCacheDeleteManager *)self allowsWritingToDisk]&& IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
        v12 = 138412546;
        v13 = v6;
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Cache delete  guidance %@ requested size %@", &v12, 0x16u);
      }
    }
  }

  result = [(IMDCKCacheDeleteManager *)self allowsWritingToDisk];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)createDictionaryForNotDeletingAnyAttachments:(id)a3 urgency:(int)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:0];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "nothingToPurgeDictionary -- volume: %@ purgeableSpace: %@", buf, 0x16u);
    }
  }

  v11[0] = @"CACHE_DELETE_VOLUME";
  v11[1] = @"CACHE_DELETE_AMOUNT";
  v12[0] = v5;
  v12[1] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_copyAttachmentRecord:(id)a3
{
  v3 = a3;
  if (([v3 count] - 1) > 8)
  {
    [v3 objectAtIndexedSubscript:9];
  }

  else
  {
    [v3 lastObject];
  }
  v4 = ;
  v5 = IMDAttachmentRecordCopyAttachmentForGUIDIsLegacyGUID();
  if (v5 || (v5 = IMDAttachmentRecordCopyAttachmentForGUIDIsLegacyGUID()) != 0)
  {
    v6 = v5;
  }

  else if ([v3 count])
  {
    v8 = 0;
    v6 = 0;
    do
    {
      v9 = [v3 objectAtIndexedSubscript:v8];
      v10 = IMDAttachmentRecordCopyAttachmentForGUIDIsLegacyGUID();

      if (v10)
      {
        v6 = v10;
      }

      else
      {
        v11 = [v3 objectAtIndexedSubscript:v8];
        v6 = IMDAttachmentRecordCopyAttachmentForGUIDIsLegacyGUID();

        if (!v6)
        {
          break;
        }
      }

      ++v8;
    }

    while (v8 < [v3 count]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)_purgeableSpaceGivenUrgency:(int)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [(IMDCKCacheDeleteManager *)self purgeableAttachmentSize];
  v5 = v4;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v6 = v4 * 0.75;
      goto LABEL_11;
    }

    if (a3 == 4)
    {
      v7 = v4;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    if (a3 == 1)
    {
      v6 = vcvtd_n_f64_s64(v4, 2uLL);
      goto LABEL_11;
    }

    if (a3 == 2)
    {
      v6 = vcvtd_n_f64_s64(v4, 1uLL);
LABEL_11:
      v7 = v6;
      goto LABEL_12;
    }

    v7 = 0;
  }

LABEL_12:
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 134218496;
      v12 = v5;
      v13 = 2048;
      v14 = v7;
      v15 = 1024;
      v16 = a3;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "_purgeableSpaceGivenUrgency -- Bytes available to purge: %lld result: %lld urgency: %d", &v11, 0x1Cu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (int64_t)_deleteAttachmentsAndReturnBytesDeleted:(int)a3
{
  v5 = [(IMDCKCacheDeleteManager *)self _purgeableSpaceGivenUrgency:?];
  if (a3 == 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
    if (v5 < 0)
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *v11 = 0;
          _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "We somehow got back a negative number of bytes to delete so we don't want to delete anything", v11, 2u);
        }
      }

      v6 = 0;
    }
  }

  v8 = [(IMDCKCacheDeleteManager *)self _ckUtilitiesSharedInstance];
  v9 = [v8 cacheDeleteEnabled];

  if (v9)
  {
    return [(IMDCKCacheDeleteManager *)self purgeAttachments:v6];
  }

  else
  {
    return 0;
  }
}

- (int64_t)purgeableAttachmentSize
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [(IMDCKCacheDeleteManager *)self _ckUtilitiesSharedInstance];
  v3 = [v2 cacheDeleteEnabled];

  if (v3)
  {
    PurgeableDiskSpace = IMDAttachmentRecordGetPurgeableDiskSpace();
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [MEMORY[0x277CCABB0] numberWithLongLong:PurgeableDiskSpace];
        v10 = 138412290;
        v11 = v6;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Purgeable space %@", &v10, 0xCu);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Tried to obtain purgeable attachments without proper default ---- please set them: defaults write com.apple.madrid EnableCacheDelete -BOOL YES", &v10, 2u);
      }
    }

    PurgeableDiskSpace = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return PurgeableDiskSpace;
}

- (int64_t)purgeAttachments:(int64_t)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [(IMDCKCacheDeleteManager *)self _ckUtilitiesSharedInstance];
  v6 = [v5 cacheDeleteEnabled];

  v7 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v20 = 134217984;
        v21 = a3;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "purgeAttachments with bytes: %lld", &v20, 0xCu);
      }
    }

    v9 = IMDAttachmentRecordCopyAttachmentsToPurgeForDiskSpace();
    if (v9)
    {
      v10 = [(IMDCKCacheDeleteManager *)self _fileTransfersToDelete:v9];
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [v9 count];
          v13 = [v10 count];
          v20 = 134218240;
          v21 = v12;
          v22 = 2048;
          v23 = v13;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "We got back %lu records from persistence to delete which resulted in %lu file transfers to delete", &v20, 0x16u);
        }
      }

      v14 = [(IMDCKCacheDeleteManager *)self _deleteFilesOnDiskAndUpdateTransfers:v10];

      goto LABEL_26;
    }

    if (IMIsRunningInAutomation())
    {
      v16 = [MEMORY[0x277D1A970] sharedInstance];
      [v16 postCoreAutomationNotificationFinishedPurgingAttachments:0 withErrorString:@"No attachments to delete"];
    }

    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, " We didn't get back any attachments to purge", &v20, 2u);
      }
    }

LABEL_25:
    v14 = 0;
LABEL_26:

    goto LABEL_27;
  }

  if (v7)
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Tried to purge attachments without proper default ---- please set them: defaults write com.apple.madrid PurgeWithCacheDelete -BOOL YES", &v20, 2u);
    }
  }

  if (IMIsRunningInAutomation())
  {
    v9 = [MEMORY[0x277D1A970] sharedInstance];
    [v9 postCoreAutomationNotificationFinishedPurgingAttachments:0 withErrorString:@"PurgeWithCacheDelete default not enabled"];
    goto LABEL_25;
  }

  v14 = 0;
LABEL_27:
  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)_fileTransfersToDelete:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = IMFileTransferFromIMDAttachmentRecordRef(v9);
        if (v10)
        {
          [v4 addObject:v10];
        }

        else if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = [v9 rowID];
            *buf = 134217984;
            v20 = v12;
            _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "We failed to create an IMFileTransfer for IMDAttachmentRecordRef with identifier: %lld", buf, 0xCu);
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (int64_t)_deleteFilesOnDiskAndUpdateTransfers:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v35 = a3;
  v3 = [(IMDCKCacheDeleteManager *)self _ckUtilitiesSharedInstance];
  v4 = [v3 cacheDeleteEnabled];

  if (v4)
  {
    if (IMIsRunningInAutomation())
    {
      v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    else
    {
      v36 = 0;
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v6 = v35;
    v7 = [v6 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (!v7)
    {
      v37 = 0;
      goto LABEL_47;
    }

    v37 = 0;
    v8 = *v40;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v39 + 1) + 8 * i);
        v11 = [v10 existsAtLocalPath];
        v12 = IMOSLoggingEnabled();
        if (v11)
        {
          if (v12)
          {
            v13 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              v14 = [v10 localPath];
              v15 = [v10 guid];
              *buf = 138412546;
              v44 = v14;
              v45 = 2112;
              v46 = v15;
              _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "We are removing the file at path: %@ for transfer: %@", buf, 0x16u);
            }
          }

          v16 = +[IMDAttachmentStore sharedInstance];
          v17 = [v10 localPath];
          v18 = [v16 isSafeToDeleteAttachmentAtPath:v17];

          if (v18)
          {
            v19 = [MEMORY[0x277CCAA00] defaultManager];
            v20 = [v10 localPath];
            v38 = 0;
            [v19 removeItemAtPath:v20 error:&v38];
            v21 = v38;

            v22 = IMOSLoggingEnabled();
            if (v21)
            {
              if (v22)
              {
                v23 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v44 = v21;
                  _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "There was an error trying to remove the file: %@", buf, 0xCu);
                }
              }
            }

            else
            {
              if (v22)
              {
                v29 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "We successfully removed the file - setting the transfer state to waiting for accept", buf, 2u);
                }
              }

              v30 = [v10 totalBytes];
              if (IMIsRunningInAutomation())
              {
                [v36 addObject:v10];
              }

              v31 = +[IMDFileTransferCenter sharedInstance];
              [v31 updateTransferAsWaitingForAccept:v10];

              v21 = 0;
              v37 += v30;
            }
          }

          else
          {
            if (IMOSLoggingEnabled())
            {
              v26 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                v27 = [v10 guid];
                v28 = [v10 localPath];
                *buf = 138412546;
                v44 = v27;
                v45 = 2112;
                v46 = v28;
                _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "We attempted to delete a path that was not safe to delete for guid: %@ path: %@", buf, 0x16u);
              }
            }

            v21 = 0;
          }
        }

        else
        {
          if (!v12)
          {
            continue;
          }

          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v24 = [v10 guid];
            v25 = [v10 localPath];
            *buf = 138412546;
            v44 = v24;
            v45 = 2112;
            v46 = v25;
            _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "The transfer we want to remove does not exist at its local path -- transfer (%@) local path (%@)", buf, 0x16u);
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (!v7)
      {
LABEL_47:

        if (IMIsRunningInAutomation())
        {
          [(IMDCKCacheDeleteManager *)self _postTransferInfoOfDeletedTransfers:v36];
        }

        goto LABEL_50;
      }
    }
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Tried to call _deleteFilesOnDiskAndUpdateTransfers without proper default ---- please set them: defaults write com.apple.madrid EnableCacheDelete -BOOL YES", buf, 2u);
    }
  }

  v37 = 0;
LABEL_50:

  v32 = *MEMORY[0x277D85DE8];
  return v37;
}

- (void)_postTransferInfoOfDeletedTransfers:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v4)
  {
    v5 = *v27;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        v8 = [v7 localPath];
        v9 = v8;
        v10 = @"-1";
        if (v8)
        {
          v10 = v8;
        }

        v11 = v10;

        v12 = [v7 transferState];
        v13 = [v7 existsAtLocalPath];
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v13;
        }

        v32[0] = @"existsAtLocalPath";
        v15 = [MEMORY[0x277CCABB0] numberWithBool:v13];
        v33[0] = v15;
        v33[1] = v11;
        v32[1] = @"localPath";
        v32[2] = @"transferState";
        v16 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
        v33[2] = v16;
        v32[3] = @"success";
        v17 = [MEMORY[0x277CCABB0] numberWithBool:v14];
        v33[3] = v17;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:4];

        v19 = [v7 guid];

        [v25 setObject:v18 forKey:v19];
      }

      v4 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v4);
  }

  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [v25 count];
      *buf = 134217984;
      v31 = v21;
      _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Created %lu dictionarie(s) for transfer info of deleted attachment(s)", buf, 0xCu);
    }
  }

  v22 = [MEMORY[0x277D1A970] sharedInstance];
  [v22 postCoreAutomationNotificationFinishedPurgingAttachments:v25 withErrorString:0];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)metricAttachmentsToPurge:(int64_t)a3 withActivity:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(IMDCKCacheDeleteManager *)self _ckUtilitiesSharedInstance];
  v8 = [v7 deviceConditionsAllowPeriodicSync];

  v9 = [(IMDCKCacheDeleteManager *)self _ckUtilitiesSharedInstance];
  v10 = [v9 cloudKitSyncingEnabled];

  v11 = IMOSLoggingEnabled();
  if (v10 & v8)
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v19 = 134217984;
        v20 = a3;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "We are going to try and fetch attachments we would want to delete from local disk with bytes to free up: %lld", &v19, 0xCu);
      }
    }

    v13 = IMDAttachmentRecordCopyAttachmentsToMetricForDiskSpace();
    if ([v13 count])
    {
      v14 = [(IMDCKCacheDeleteManager *)self _fileTransfersToValidate:v13];
      [(IMDCKCacheDeleteManager *)self _fetchTransfersFromCloudKit:v14 withActivity:v6];
    }
  }

  else if (v11)
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = @"NO";
      if (v10)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      if (v8)
      {
        v16 = @"YES";
      }

      v19 = 138412546;
      v20 = v17;
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Did NOT metric fetching synced attachments from CloudKit. CK Enabled %@ , device conditions allow sync %@", &v19, 0x16u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_fileTransfersToValidate:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = IMFileTransferFromIMDAttachmentRecordRef(*(*(&v13 + 1) + 8 * i));
        if ([v9 existsAtLocalPath])
        {
          [v4 addObject:v9];
        }

        else if (IMOSLoggingEnabled())
        {
          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v18 = v9;
            _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "We got a fileTransfer that doesn't exist that we think we can delete for CacheDelete: %@", buf, 0xCu);
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_fetchTransfersFromCloudKit:(id)a3 withActivity:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = vcvtpd_u64_f64([v6 count] / 30.0);
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = 134217984;
      v13 = v8;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Going to try and fetch from sync controller with %ld batches to fetch", &v12, 0xCu);
    }
  }

  v10 = +[IMDCKAttachmentSyncController sharedInstance];
  [v10 setIsSyncing:1];

  [(IMDCKCacheDeleteManager *)self _fetchTransfersFromCloudKit:v6 indexOfTransfers:0 numberOfBatchesToFetch:v8 activity:v7 withCompletion:&unk_283F1A008];
  v11 = *MEMORY[0x277D85DE8];
}

- (id)_getIndexSetForBatch:(id)a3 indexOfTransfers:(unint64_t)a4
{
  v5 = [a3 count];
  if (v5 - a4 >= 0x1E)
  {
    v6 = 30;
  }

  else
  {
    v6 = v5 - a4;
  }

  v7 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{a4, v6}];

  return v7;
}

- (BOOL)_shouldFetchNextBatch:(unint64_t)a3 totalTransfers:(id)a4
{
  v6 = a4;
  v7 = [(IMDCKCacheDeleteManager *)self _ckUtilitiesSharedInstance];
  v8 = [v7 deviceConditionsAllowPeriodicSync];

  if (v8)
  {
    v9 = [v6 count] - 1 >= a3;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "We disconnected from power or wifi in between batches, so cutting the batches short", v12, 2u);
      }
    }

    v9 = 0;
  }

  return v9;
}

- (void)_fetchTransfersFromCloudKit:(id)a3 indexOfTransfers:(unint64_t)a4 numberOfBatchesToFetch:(unint64_t)a5 activity:(id)a6 withCompletion:(id)a7
{
  v44 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v29 = a6;
  v27 = a7;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a4];
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a5];
      *buf = 138412802;
      v39 = v14;
      v40 = 2112;
      v41 = v15;
      v42 = 2112;
      v43 = v16;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "_fetchTransfers with totalTransferCount: %@ index of transfers: %@ number of batches to fetch: %@", buf, 0x20u);
    }
  }

  v17 = [(IMDCKCacheDeleteManager *)self _getIndexSetForBatch:v12 indexOfTransfers:a4, v27];
  v18 = [v12 objectsAtIndexes:v17];
  v19 = [(IMDCKCacheDeleteManager *)self _indexOfNextBatch:v18 totalTransfers:v12 indexOfTransfers:a4];
  v20 = [(IMDCKCacheDeleteManager *)self _shouldFetchNextBatch:v19 totalTransfers:v12];
  v21 = +[IMDCKAttachmentSyncController sharedInstance];
  alreadyCapturedErrorWithAutoBugCapture = self->_alreadyCapturedErrorWithAutoBugCapture;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_22B597FCC;
  v30[3] = &unk_278705478;
  v34 = a4;
  v35 = v19;
  v36 = a5;
  v37 = v20;
  v30[4] = self;
  v31 = v12;
  v32 = v29;
  v33 = v28;
  v23 = v28;
  v24 = v29;
  v25 = v12;
  [v21 _fetchAndValidateFileTransfersFromCloudKit:v18 capturedWithABC:alreadyCapturedErrorWithAutoBugCapture activity:v24 completion:v30];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)batchCompletedWithTransfers:(id)a3
{
  v4 = a3;
  if (IMIsRunningInAutomation())
  {
    [(IMDCKCacheDeleteManager *)self _postTransferInfoOfDeletedTransfers:v4];
  }
}

@end