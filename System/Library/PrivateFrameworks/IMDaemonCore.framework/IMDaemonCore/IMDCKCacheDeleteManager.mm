@interface IMDCKCacheDeleteManager
+ (id)sharedInstance;
- (BOOL)_deviceConditionsAllowsAttachmentFileSizeUpdateForActivity:(id)activity deferred:(BOOL *)deferred;
- (BOOL)_shouldFetchNextBatch:(unint64_t)batch totalTransfers:(id)transfers;
- (BOOL)canWriteFileOfEstimatedSize:(unint64_t)size refreshCachedValue:(BOOL)value;
- (BOOL)shouldDownloadAssetsOfSize:(unint64_t)size refreshCachedValue:(BOOL)value;
- (IMDCKCacheDeleteManager)init;
- (id)_cacheDeleteGuidanceDictionaryForRequestedSize:(unint64_t)size;
- (id)_cacheDeleteRequestCacheableSpaceGuidanceWithID:(id)d diskVolume:(id)volume urgency:(int)urgency requestedSize:(unint64_t)size;
- (id)_copyAttachmentRecord:(id)record;
- (id)_fileTransfersToDelete:(id)delete;
- (id)_fileTransfersToValidate:(id)validate;
- (id)_getIndexSetForBatch:(id)batch indexOfTransfers:(unint64_t)transfers;
- (id)createDictionaryForNotDeletingAnyAttachments:(id)attachments urgency:(int)urgency;
- (int64_t)_deleteAttachmentsAndReturnBytesDeleted:(int)deleted;
- (int64_t)_deleteFilesOnDiskAndUpdateTransfers:(id)transfers;
- (int64_t)_purgeableSpaceGivenUrgency:(int)urgency;
- (int64_t)purgeAttachments:(int64_t)attachments;
- (int64_t)purgeableAttachmentSize;
- (void)_cacheDeleteSetUp;
- (void)_fetchTransfersFromCloudKit:(id)kit indexOfTransfers:(unint64_t)transfers numberOfBatchesToFetch:(unint64_t)fetch activity:(id)activity withCompletion:(id)completion;
- (void)_fetchTransfersFromCloudKit:(id)kit withActivity:(id)activity;
- (void)_postTransferInfoOfDeletedTransfers:(id)transfers;
- (void)batchCompletedWithTransfers:(id)transfers;
- (void)metricAttachmentsToPurge:(int64_t)purge withActivity:(id)activity;
- (void)registerWithCacheDelete;
- (void)resetAttachmentWatermark;
- (void)updateAttachmentFileSizesWithActivity:(id)activity;
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

- (BOOL)_deviceConditionsAllowsAttachmentFileSizeUpdateForActivity:(id)activity deferred:(BOOL *)deferred
{
  activityCopy = activity;
  v6 = activityCopy;
  if (!activityCopy)
  {
    v9 = +[IMDCKUtilities sharedInstance];
    isDeviceCharging = [v9 isDeviceCharging];

    goto LABEL_17;
  }

  if (!xpc_activity_should_defer(activityCopy))
  {
    isDeviceCharging = 1;
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

  if (!deferred)
  {
LABEL_16:
    isDeviceCharging = 0;
    goto LABEL_17;
  }

  isDeviceCharging = 0;
  *deferred = 1;
LABEL_17:

  return isDeviceCharging;
}

- (void)updateAttachmentFileSizesWithActivity:(id)activity
{
  v49 = *MEMORY[0x277D85DE8];
  activity = activity;
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
    longLongValue = [v4 longLongValue];

    longLongValue2 = 0;
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
          v9 = [MEMORY[0x277CCABB0] numberWithLongLong:longLongValue];
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
                longLongValue2 = [v19 longLongValue];

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

          longLongValue = longLongValue2;
        }

        else
        {
          longLongValue = longLongValue2 + 20;
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

        longLongValue = -1;
      }

      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = [MEMORY[0x277CCABB0] numberWithLongLong:longLongValue];
          *buf = 138412290;
          v46 = v25;
          _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Previous batch of attachment filesize updates completed, setting new watermark to be %@", buf, 0xCu);
        }
      }

      v26 = [MEMORY[0x277CCABB0] numberWithLongLong:longLongValue];
      IMSetDomainValueForKey();

      objc_autoreleasePoolPop(context);
      ++v37;
      longLongValue2 = longLongValue;
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
      _ckUtilitiesSharedInstance = [(IMDCKCacheDeleteManager *)self _ckUtilitiesSharedInstance];
      cacheDeleteEnabled = [_ckUtilitiesSharedInstance cacheDeleteEnabled];
      v6 = @"NO";
      if (cacheDeleteEnabled)
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
    _ckUtilitiesSharedInstance2 = [(IMDCKCacheDeleteManager *)self _ckUtilitiesSharedInstance];
    cacheDeleteEnabled2 = [_ckUtilitiesSharedInstance2 cacheDeleteEnabled];

    if (cacheDeleteEnabled2)
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

- (id)_cacheDeleteRequestCacheableSpaceGuidanceWithID:(id)d diskVolume:(id)volume urgency:(int)urgency requestedSize:(unint64_t)size
{
  v7 = MEMORY[0x277CCABB0];
  volumeCopy = volume;
  [v7 numberWithUnsignedLong:size];
  v9 = CacheDeleteRequestCacheableSpaceGuidance();

  return v9;
}

- (id)_cacheDeleteGuidanceDictionaryForRequestedSize:(unint64_t)size
{
  if (qword_27D8CFEE0 != -1)
  {
    sub_22B7D4130();
  }

  return MEMORY[0x2821F9670](self, sel__cacheDeleteRequestCacheableSpaceGuidanceWithID_diskVolume_urgency_requestedSize_);
}

- (BOOL)canWriteFileOfEstimatedSize:(unint64_t)size refreshCachedValue:(BOOL)value
{
  valueCopy = value;
  v19 = *MEMORY[0x277D85DE8];
  if ([(IMDCKCacheDeleteManager *)self isDeviceLowOnDiskSpace])
  {
    if (valueCopy)
    {
      v7 = [(IMDCKCacheDeleteManager *)self _cacheDeleteGuidanceDictionaryForRequestedSize:size];
      v8 = [v7 objectForKeyedSubscript:@"CACHE_DELETE_GUIDANCE"];
      v9 = [v7 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
      unsignedLongLongValue = [v9 unsignedLongLongValue];

      [(IMDCKCacheDeleteManager *)self setDeviceLowOnDiskSpace:unsignedLongLongValue < size];
      -[IMDCKCacheDeleteManager setAllowsWritingToDisk:](self, "setAllowsWritingToDisk:", [v8 isEqualToString:@"CACHE_DELETE_GUIDANCE_DO_NOT_EXPAND_CACHE"] ^ 1);
      if (![(IMDCKCacheDeleteManager *)self allowsWritingToDisk]&& IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:size];
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

- (BOOL)shouldDownloadAssetsOfSize:(unint64_t)size refreshCachedValue:(BOOL)value
{
  v16 = *MEMORY[0x277D85DE8];
  if (value)
  {
    v6 = [(IMDCKCacheDeleteManager *)self _cacheDeleteGuidanceDictionaryForRequestedSize:?];
    v7 = [v6 objectForKeyedSubscript:@"CACHE_DELETE_GUIDANCE"];
    -[IMDCKCacheDeleteManager setAllowsWritingToDisk:](self, "setAllowsWritingToDisk:", [v7 isEqualToString:@"CACHE_DELETE_GUIDANCE_DO_NOT_EXPAND_CACHE"] ^ 1);
    if (![(IMDCKCacheDeleteManager *)self allowsWritingToDisk]&& IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:size];
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

- (id)createDictionaryForNotDeletingAnyAttachments:(id)attachments urgency:(int)urgency
{
  v17 = *MEMORY[0x277D85DE8];
  attachmentsCopy = attachments;
  v5 = [attachmentsCopy objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
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

- (id)_copyAttachmentRecord:(id)record
{
  recordCopy = record;
  if (([recordCopy count] - 1) > 8)
  {
    [recordCopy objectAtIndexedSubscript:9];
  }

  else
  {
    [recordCopy lastObject];
  }
  v4 = ;
  v5 = IMDAttachmentRecordCopyAttachmentForGUIDIsLegacyGUID();
  if (v5 || (v5 = IMDAttachmentRecordCopyAttachmentForGUIDIsLegacyGUID()) != 0)
  {
    v6 = v5;
  }

  else if ([recordCopy count])
  {
    v8 = 0;
    v6 = 0;
    do
    {
      v9 = [recordCopy objectAtIndexedSubscript:v8];
      v10 = IMDAttachmentRecordCopyAttachmentForGUIDIsLegacyGUID();

      if (v10)
      {
        v6 = v10;
      }

      else
      {
        v11 = [recordCopy objectAtIndexedSubscript:v8];
        v6 = IMDAttachmentRecordCopyAttachmentForGUIDIsLegacyGUID();

        if (!v6)
        {
          break;
        }
      }

      ++v8;
    }

    while (v8 < [recordCopy count]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)_purgeableSpaceGivenUrgency:(int)urgency
{
  v17 = *MEMORY[0x277D85DE8];
  purgeableAttachmentSize = [(IMDCKCacheDeleteManager *)self purgeableAttachmentSize];
  v5 = purgeableAttachmentSize;
  if (urgency > 2)
  {
    if (urgency == 3)
    {
      v6 = purgeableAttachmentSize * 0.75;
      goto LABEL_11;
    }

    if (urgency == 4)
    {
      v7 = purgeableAttachmentSize;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    if (urgency == 1)
    {
      v6 = vcvtd_n_f64_s64(purgeableAttachmentSize, 2uLL);
      goto LABEL_11;
    }

    if (urgency == 2)
    {
      v6 = vcvtd_n_f64_s64(purgeableAttachmentSize, 1uLL);
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
      urgencyCopy = urgency;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "_purgeableSpaceGivenUrgency -- Bytes available to purge: %lld result: %lld urgency: %d", &v11, 0x1Cu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (int64_t)_deleteAttachmentsAndReturnBytesDeleted:(int)deleted
{
  v5 = [(IMDCKCacheDeleteManager *)self _purgeableSpaceGivenUrgency:?];
  if (deleted == 4)
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

  _ckUtilitiesSharedInstance = [(IMDCKCacheDeleteManager *)self _ckUtilitiesSharedInstance];
  cacheDeleteEnabled = [_ckUtilitiesSharedInstance cacheDeleteEnabled];

  if (cacheDeleteEnabled)
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
  _ckUtilitiesSharedInstance = [(IMDCKCacheDeleteManager *)self _ckUtilitiesSharedInstance];
  cacheDeleteEnabled = [_ckUtilitiesSharedInstance cacheDeleteEnabled];

  if (cacheDeleteEnabled)
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

- (int64_t)purgeAttachments:(int64_t)attachments
{
  v24 = *MEMORY[0x277D85DE8];
  _ckUtilitiesSharedInstance = [(IMDCKCacheDeleteManager *)self _ckUtilitiesSharedInstance];
  cacheDeleteEnabled = [_ckUtilitiesSharedInstance cacheDeleteEnabled];

  v7 = IMOSLoggingEnabled();
  if (cacheDeleteEnabled)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v20 = 134217984;
        attachmentsCopy = attachments;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "purgeAttachments with bytes: %lld", &v20, 0xCu);
      }
    }

    mEMORY[0x277D1A970]2 = IMDAttachmentRecordCopyAttachmentsToPurgeForDiskSpace();
    if (mEMORY[0x277D1A970]2)
    {
      v10 = [(IMDCKCacheDeleteManager *)self _fileTransfersToDelete:mEMORY[0x277D1A970]2];
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [mEMORY[0x277D1A970]2 count];
          v13 = [v10 count];
          v20 = 134218240;
          attachmentsCopy = v12;
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
      mEMORY[0x277D1A970] = [MEMORY[0x277D1A970] sharedInstance];
      [mEMORY[0x277D1A970] postCoreAutomationNotificationFinishedPurgingAttachments:0 withErrorString:@"No attachments to delete"];
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
    mEMORY[0x277D1A970]2 = [MEMORY[0x277D1A970] sharedInstance];
    [mEMORY[0x277D1A970]2 postCoreAutomationNotificationFinishedPurgingAttachments:0 withErrorString:@"PurgeWithCacheDelete default not enabled"];
    goto LABEL_25;
  }

  v14 = 0;
LABEL_27:
  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)_fileTransfersToDelete:(id)delete
{
  v22 = *MEMORY[0x277D85DE8];
  deleteCopy = delete;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(deleteCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = deleteCopy;
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
            rowID = [v9 rowID];
            *buf = 134217984;
            v20 = rowID;
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

- (int64_t)_deleteFilesOnDiskAndUpdateTransfers:(id)transfers
{
  v48 = *MEMORY[0x277D85DE8];
  transfersCopy = transfers;
  _ckUtilitiesSharedInstance = [(IMDCKCacheDeleteManager *)self _ckUtilitiesSharedInstance];
  cacheDeleteEnabled = [_ckUtilitiesSharedInstance cacheDeleteEnabled];

  if (cacheDeleteEnabled)
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
    v6 = transfersCopy;
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
        existsAtLocalPath = [v10 existsAtLocalPath];
        v12 = IMOSLoggingEnabled();
        if (existsAtLocalPath)
        {
          if (v12)
          {
            v13 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              localPath = [v10 localPath];
              guid = [v10 guid];
              *buf = 138412546;
              v44 = localPath;
              v45 = 2112;
              v46 = guid;
              _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "We are removing the file at path: %@ for transfer: %@", buf, 0x16u);
            }
          }

          v16 = +[IMDAttachmentStore sharedInstance];
          localPath2 = [v10 localPath];
          v18 = [v16 isSafeToDeleteAttachmentAtPath:localPath2];

          if (v18)
          {
            defaultManager = [MEMORY[0x277CCAA00] defaultManager];
            localPath3 = [v10 localPath];
            v38 = 0;
            [defaultManager removeItemAtPath:localPath3 error:&v38];
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

              totalBytes = [v10 totalBytes];
              if (IMIsRunningInAutomation())
              {
                [v36 addObject:v10];
              }

              v31 = +[IMDFileTransferCenter sharedInstance];
              [v31 updateTransferAsWaitingForAccept:v10];

              v21 = 0;
              v37 += totalBytes;
            }
          }

          else
          {
            if (IMOSLoggingEnabled())
            {
              v26 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                guid2 = [v10 guid];
                localPath4 = [v10 localPath];
                *buf = 138412546;
                v44 = guid2;
                v45 = 2112;
                v46 = localPath4;
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
            guid3 = [v10 guid];
            localPath5 = [v10 localPath];
            *buf = 138412546;
            v44 = guid3;
            v45 = 2112;
            v46 = localPath5;
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

- (void)_postTransferInfoOfDeletedTransfers:(id)transfers
{
  v35 = *MEMORY[0x277D85DE8];
  transfersCopy = transfers;
  v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = transfersCopy;
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
        localPath = [v7 localPath];
        v9 = localPath;
        v10 = @"-1";
        if (localPath)
        {
          v10 = localPath;
        }

        v11 = v10;

        transferState = [v7 transferState];
        existsAtLocalPath = [v7 existsAtLocalPath];
        if (transferState)
        {
          v14 = 0;
        }

        else
        {
          v14 = existsAtLocalPath;
        }

        v32[0] = @"existsAtLocalPath";
        v15 = [MEMORY[0x277CCABB0] numberWithBool:existsAtLocalPath];
        v33[0] = v15;
        v33[1] = v11;
        v32[1] = @"localPath";
        v32[2] = @"transferState";
        v16 = [MEMORY[0x277CCABB0] numberWithInteger:transferState];
        v33[2] = v16;
        v32[3] = @"success";
        v17 = [MEMORY[0x277CCABB0] numberWithBool:v14];
        v33[3] = v17;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:4];

        guid = [v7 guid];

        [v25 setObject:v18 forKey:guid];
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

  mEMORY[0x277D1A970] = [MEMORY[0x277D1A970] sharedInstance];
  [mEMORY[0x277D1A970] postCoreAutomationNotificationFinishedPurgingAttachments:v25 withErrorString:0];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)metricAttachmentsToPurge:(int64_t)purge withActivity:(id)activity
{
  v23 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  _ckUtilitiesSharedInstance = [(IMDCKCacheDeleteManager *)self _ckUtilitiesSharedInstance];
  deviceConditionsAllowPeriodicSync = [_ckUtilitiesSharedInstance deviceConditionsAllowPeriodicSync];

  _ckUtilitiesSharedInstance2 = [(IMDCKCacheDeleteManager *)self _ckUtilitiesSharedInstance];
  cloudKitSyncingEnabled = [_ckUtilitiesSharedInstance2 cloudKitSyncingEnabled];

  v11 = IMOSLoggingEnabled();
  if (cloudKitSyncingEnabled & deviceConditionsAllowPeriodicSync)
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v19 = 134217984;
        purgeCopy = purge;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "We are going to try and fetch attachments we would want to delete from local disk with bytes to free up: %lld", &v19, 0xCu);
      }
    }

    v13 = IMDAttachmentRecordCopyAttachmentsToMetricForDiskSpace();
    if ([v13 count])
    {
      v14 = [(IMDCKCacheDeleteManager *)self _fileTransfersToValidate:v13];
      [(IMDCKCacheDeleteManager *)self _fetchTransfersFromCloudKit:v14 withActivity:activityCopy];
    }
  }

  else if (v11)
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = @"NO";
      if (cloudKitSyncingEnabled)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      if (deviceConditionsAllowPeriodicSync)
      {
        v16 = @"YES";
      }

      v19 = 138412546;
      purgeCopy = v17;
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Did NOT metric fetching synced attachments from CloudKit. CK Enabled %@ , device conditions allow sync %@", &v19, 0x16u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_fileTransfersToValidate:(id)validate
{
  v20 = *MEMORY[0x277D85DE8];
  validateCopy = validate;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(validateCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = validateCopy;
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

- (void)_fetchTransfersFromCloudKit:(id)kit withActivity:(id)activity
{
  v14 = *MEMORY[0x277D85DE8];
  kitCopy = kit;
  activityCopy = activity;
  v8 = vcvtpd_u64_f64([kitCopy count] / 30.0);
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

  [(IMDCKCacheDeleteManager *)self _fetchTransfersFromCloudKit:kitCopy indexOfTransfers:0 numberOfBatchesToFetch:v8 activity:activityCopy withCompletion:&unk_283F1A008];
  v11 = *MEMORY[0x277D85DE8];
}

- (id)_getIndexSetForBatch:(id)batch indexOfTransfers:(unint64_t)transfers
{
  v5 = [batch count];
  if (v5 - transfers >= 0x1E)
  {
    v6 = 30;
  }

  else
  {
    v6 = v5 - transfers;
  }

  v7 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{transfers, v6}];

  return v7;
}

- (BOOL)_shouldFetchNextBatch:(unint64_t)batch totalTransfers:(id)transfers
{
  transfersCopy = transfers;
  _ckUtilitiesSharedInstance = [(IMDCKCacheDeleteManager *)self _ckUtilitiesSharedInstance];
  deviceConditionsAllowPeriodicSync = [_ckUtilitiesSharedInstance deviceConditionsAllowPeriodicSync];

  if (deviceConditionsAllowPeriodicSync)
  {
    v9 = [transfersCopy count] - 1 >= batch;
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

- (void)_fetchTransfersFromCloudKit:(id)kit indexOfTransfers:(unint64_t)transfers numberOfBatchesToFetch:(unint64_t)fetch activity:(id)activity withCompletion:(id)completion
{
  v44 = *MEMORY[0x277D85DE8];
  kitCopy = kit;
  activityCopy = activity;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(kitCopy, "count")}];
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:transfers];
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:fetch];
      *buf = 138412802;
      v39 = v14;
      v40 = 2112;
      v41 = v15;
      v42 = 2112;
      v43 = v16;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "_fetchTransfers with totalTransferCount: %@ index of transfers: %@ number of batches to fetch: %@", buf, 0x20u);
    }
  }

  completionCopy = [(IMDCKCacheDeleteManager *)self _getIndexSetForBatch:kitCopy indexOfTransfers:transfers, completionCopy];
  v18 = [kitCopy objectsAtIndexes:completionCopy];
  v19 = [(IMDCKCacheDeleteManager *)self _indexOfNextBatch:v18 totalTransfers:kitCopy indexOfTransfers:transfers];
  v20 = [(IMDCKCacheDeleteManager *)self _shouldFetchNextBatch:v19 totalTransfers:kitCopy];
  v21 = +[IMDCKAttachmentSyncController sharedInstance];
  alreadyCapturedErrorWithAutoBugCapture = self->_alreadyCapturedErrorWithAutoBugCapture;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_22B597FCC;
  v30[3] = &unk_278705478;
  transfersCopy = transfers;
  v35 = v19;
  fetchCopy = fetch;
  v37 = v20;
  v30[4] = self;
  v31 = kitCopy;
  v32 = activityCopy;
  v33 = v28;
  v23 = v28;
  v24 = activityCopy;
  v25 = kitCopy;
  [v21 _fetchAndValidateFileTransfersFromCloudKit:v18 capturedWithABC:alreadyCapturedErrorWithAutoBugCapture activity:v24 completion:v30];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)batchCompletedWithTransfers:(id)transfers
{
  transfersCopy = transfers;
  if (IMIsRunningInAutomation())
  {
    [(IMDCKCacheDeleteManager *)self _postTransferInfoOfDeletedTransfers:transfersCopy];
  }
}

@end