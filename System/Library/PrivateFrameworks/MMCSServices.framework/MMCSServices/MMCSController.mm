@interface MMCSController
+ (id)serialControllerQueue;
+ (void)preMMCSWarm;
- (BOOL)_getTransfers:(id)a3 requestURL:(id)a4 requestorID:(id)a5 sourceAppID:(id)a6 token:(id)a7 error:(id *)a8;
- (BOOL)_putTransfers:(id)a3 requestURL:(id)a4 requestorID:(id)a5 transferID:(id)a6 sourceAppID:(id)a7 token:(id)a8 error:(id *)a9;
- (BOOL)_unregisterTransfers:(id)a3;
- (BOOL)isActive;
- (BOOL)unregisterFiles:(id)a3;
- (MMCSController)initWithQueue:(id)a3;
- (_mmcs_engine)_engine;
- (id)_MMCSICloudRequestHeadersCopy:(__CFString *)a3;
- (id)_optionsForFiles:(id)a3 sourceAppID:(id)a4;
- (id)_registeredTransferForGUID:(id)a3;
- (id)_registeredTransferForItemID:(unint64_t)a3;
- (id)getContentHeadersAsString;
- (void)_addPreauthorizationOptions:(id)a3 forFiles:(id)a4;
- (void)_addRequestorContext:(id)a3 transferID:(id)a4;
- (void)_cancelRequest:(id)a3;
- (void)_getItemCompleted:(id)a3 path:(id)a4 error:(id)a5;
- (void)_invalidatePowerAssertionTimer;
- (void)_itemCompleted:(id)a3;
- (void)_processCompletedItem:(id)a3 error:(id)a4;
- (void)_putItemCompleted:(id)a3 error:(id)a4;
- (void)_registerPowerAssertionIfNeeded;
- (void)_releasePowerAssertion;
- (void)_releasePowerAssertionAndSimulateCrash;
- (void)_removeRequestorContext:(id)a3 transferID:(id)a4;
- (void)_schedulePowerAssertionTimer;
- (void)_setScheduledTransfers:(id)a3 block:(id)a4;
- (void)_unregisterPowerAssertion;
- (void)cancelPutRequestID:(id)a3;
- (void)dealloc;
- (void)getFiles:(id)a3 requestURL:(id)a4 requestorID:(id)a5 sourceAppID:(id)a6 authToken:(id)a7 completionBlock:(id)a8;
- (void)putFiles:(id)a3 requestURL:(id)a4 requestorID:(id)a5 transferID:(id)a6 sourceAppID:(id)a7 authToken:(id)a8 preauthenticate:(BOOL)a9 completionBlock:(id)a10;
- (void)registerFilesForDownload:(id)a3 completionBlock:(id)a4;
@end

@implementation MMCSController

- (MMCSController)initWithQueue:(id)a3
{
  v14.receiver = self;
  v14.super_class = MMCSController;
  v4 = [(MMCSController *)&v14 init];
  v9 = v4;
  if (v4)
  {
    objc_msgSend__engine(v4, v5, v6, v7, v8);
    v9->_powerAssertionTimer = 0;
    v9->_transferIDContextMapLock = objc_alloc_init(MEMORY[0x277CCAC60]);
    objc_msgSend_setReplyQueue_(v9, v10, a3, v11, v12);
  }

  return v9;
}

- (void)_releasePowerAssertionAndSimulateCrash
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_serialControllerQueue(MMCSController, a2, v2, v3, v4);
  dispatch_assert_queue_V2(v6);
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_msgSend_count(self->_transfers, v7, v8, v9, v10);
      powerAssertion = self->_powerAssertion;
      v24 = 134218498;
      v25 = 0x4082C00000000000;
      v26 = 2048;
      v27 = v12;
      v28 = 2112;
      v29 = powerAssertion;
      _os_log_impl(&dword_20E3AF000, v11, OS_LOG_TYPE_INFO, "Power assertion timed out after %f secs, %ld transfers remaining: %@", &v24, 0x20u);
    }
  }

  objc_msgSend__releasePowerAssertion(self, v7, v8, v9, v10);
  IMLogBacktrace();
  v18 = objc_msgSend_processInfo(MEMORY[0x277CCAC38], v14, v15, v16, v17);
  objc_msgSend_processName(v18, v19, v20, v21, v22);
  IMLogSimulateCrashForProcess();
  v23 = *MEMORY[0x277D85DE8];
}

- (void)_releasePowerAssertion
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_serialControllerQueue(MMCSController, a2, v2, v3, v4);
  dispatch_assert_queue_V2(v6);
  if (self->_powerAssertion)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        powerAssertion = self->_powerAssertion;
        v10 = 138412290;
        v11 = powerAssertion;
        _os_log_impl(&dword_20E3AF000, v7, OS_LOG_TYPE_INFO, "Releasing power assertion %@", &v10, 0xCu);
      }
    }

    self->_powerAssertion = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_invalidatePowerAssertionTimer
{
  v6 = objc_msgSend_serialControllerQueue(MMCSController, a2, v2, v3, v4);
  dispatch_assert_queue_V2(v6);
  powerAssertionTimer = self->_powerAssertionTimer;
  if (powerAssertionTimer)
  {
    objc_msgSend_invalidate(powerAssertionTimer, v7, v8, v9, v10);

    self->_powerAssertionTimer = 0;
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_20E3AF000, v12, OS_LOG_TYPE_INFO, "Power Assertion Timer invalidated", v13, 2u);
      }
    }
  }
}

- (void)_schedulePowerAssertionTimer
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_serialControllerQueue(MMCSController, a2, v2, v3, v4);
  dispatch_assert_queue_V2(v6);
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = 134217984;
      v15 = 0x4082C00000000000;
      _os_log_impl(&dword_20E3AF000, v11, OS_LOG_TYPE_INFO, "Extending power assertion timer by %f seconds", &v14, 0xCu);
    }
  }

  objc_msgSend__invalidatePowerAssertionTimer(self, v7, v8, v9, v10);
  self->_powerAssertionTimer = objc_msgSend_scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_(MEMORY[0x277CBEBB8], v12, self, sel__releasePowerAssertionAndSimulateCrash, 0, 0, 600.0);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_unregisterPowerAssertion
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_serialControllerQueue(MMCSController, a2, v2, v3, v4);
  dispatch_assert_queue_V2(v6);
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_msgSend_count(self->_transfers, v7, v8, v9, v10);
      powerAssertion = self->_powerAssertion;
      v27[0] = 67109378;
      v27[1] = v12;
      v28 = 2112;
      v29 = powerAssertion;
      _os_log_impl(&dword_20E3AF000, v11, OS_LOG_TYPE_INFO, "Clearing power assertion, we have %d transfers (%@)", v27, 0x12u);
    }
  }

  objc_msgSend__invalidatePowerAssertionTimer(self, v7, v8, v9, v10);
  objc_msgSend__releasePowerAssertion(self, v14, v15, v16, v17);
  v22 = objc_msgSend_sharedInstance(MEMORY[0x277D19270], v18, v19, v20, v21);
  objc_msgSend_removeFastDormancyDisableToken_(v22, v23, @"iMessageMMCSFastDormancyAssertion", v24, v25);
  v26 = *MEMORY[0x277D85DE8];
}

- (void)_registerPowerAssertionIfNeeded
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_serialControllerQueue(MMCSController, a2, v2, v3, v4);
  dispatch_assert_queue_V2(v6);
  if (self->_powerAssertion)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v12 = objc_msgSend_count(self->_transfers, v8, v9, v10, v11);
        powerAssertion = self->_powerAssertion;
        v34 = 67109378;
        v35 = v12;
        v36 = 2112;
        v37 = powerAssertion;
        v14 = "power assertion already exists- we have %d transfers (%@)";
LABEL_8:
        _os_log_impl(&dword_20E3AF000, v7, OS_LOG_TYPE_INFO, v14, &v34, 0x12u);
      }
    }
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x277CFB978]);
    self->_powerAssertion = objc_msgSend_initWithIdentifier_(v15, v16, @"iMessageMMCSController", v17, v18);
    v23 = objc_msgSend_sharedInstance(MEMORY[0x277D19270], v19, v20, v21, v22);
    objc_msgSend_addFastDormancyDisableToken_(v23, v24, @"iMessageMMCSFastDormancyAssertion", v25, v26);
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v31 = objc_msgSend_count(self->_transfers, v27, v28, v29, v30);
        v32 = self->_powerAssertion;
        v34 = 67109378;
        v35 = v31;
        v36 = 2112;
        v37 = v32;
        v14 = "Creating power assertion, we have %d transfers (%@)";
        goto LABEL_8;
      }
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  transfers = self->_transfers;
  if (transfers)
  {

    self->_transfers = 0;
  }

  if (self->_engine)
  {
    v7 = objc_msgSend_serialControllerQueue(MMCSController, a2, v2, v3, v4);
    dispatch_assert_queue_not_V2(v7);
    v12 = objc_msgSend_serialControllerQueue(MMCSController, v8, v9, v10, v11);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_20E3B07AC;
    block[3] = &unk_277E1CB28;
    block[4] = self;
    dispatch_sync(v12, block);
    self->_engine = 0;
  }

  if (self->_chunkStoreURL)
  {
    v13 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, v2, v3, v4);
    objc_msgSend_removeItemAtURL_error_(v13, v14, self->_chunkStoreURL, 0, v15);
    chunkStoreURL = self->_chunkStoreURL;
    if (chunkStoreURL)
    {
      CFRelease(chunkStoreURL);
      self->_chunkStoreURL = 0;
    }
  }

  objc_msgSend__unregisterPowerAssertion(self, a2, v2, v3, v4);

  self->_transferIDToContextMap = 0;
  self->_transferIDContextMapLock = 0;

  self->_replyQueue = 0;
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_20E3AF000, v17, OS_LOG_TYPE_INFO, "MMCS Controller dealloc", buf, 2u);
    }
  }

  v18.receiver = self;
  v18.super_class = MMCSController;
  [(MMCSController *)&v18 dealloc];
}

- (void)_addPreauthorizationOptions:(id)a3 forFiles:(id)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_serialControllerQueue(MMCSController, a2, a3, a4, v4);
  dispatch_assert_queue_V2(v6);
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(a4, v7, &v47, v59, 16);
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    v15 = *v48;
LABEL_3:
    v16 = 0;
    while (1)
    {
      v17 = v14;
      if (*v48 != v15)
      {
        objc_enumerationMutation(a4);
      }

      v18 = *(*(&v47 + 1) + 8 * v16);
      v14 = objc_msgSend_authResponseData(v18, v8, v9, v10, v11);
      if (!v14)
      {
        goto LABEL_28;
      }

      if (v17 && (objc_msgSend_isEqualToData_(v17, v19, v14, v20, v21) & 1) == 0)
      {
        break;
      }

      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v27 = objc_msgSend_authResponseData(v18, v23, v24, v25, v26);
          v32 = objc_msgSend_length(v27, v28, v29, v30, v31);
          v37 = objc_msgSend_guid(v18, v33, v34, v35, v36);
          *buf = 134218242;
          v52 = v32;
          v53 = 2112;
          v54 = v37;
          _os_log_impl(&dword_20E3AF000, v22, OS_LOG_TYPE_INFO, "Preauthorizing MMCS request with auth data of length %tu (file: %@)", buf, 0x16u);
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v38 = objc_msgSend_protocolVersion(v18, v8, v9, v10, v11);
        if (!v38)
        {
          goto LABEL_28;
        }

        if (v13 && (objc_msgSend_isEqualToString_(v13, v8, v38, v10, v11) & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v44 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
            {
              *buf = 138412802;
              v52 = a4;
              v53 = 2112;
              v54 = v13;
              v55 = 2112;
              v56 = v38;
              v41 = "MMCSPutFiles %@ have different protocol versions: %@ vs. %@";
              v42 = v44;
              v43 = 32;
              goto LABEL_27;
            }
          }

          goto LABEL_28;
        }

        v13 = v38;
      }

      if (v12 == ++v16)
      {
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(a4, v8, &v47, v59, 16);
        if (v12)
        {
          goto LABEL_3;
        }

        CFDictionarySetValue(a3, *MEMORY[0x277D255B8], v14);
        if (v13)
        {
          CFDictionarySetValue(a3, *MEMORY[0x277D255F8], v13);
        }

        goto LABEL_28;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = objc_opt_class();
        *buf = 138413058;
        v52 = v40;
        v53 = 2112;
        v54 = a4;
        v55 = 2112;
        v56 = v17;
        v57 = 2112;
        v58 = v14;
        v41 = "%@s %@ have different auth data: %@ vs. %@";
        v42 = v39;
        v43 = 42;
LABEL_27:
        _os_log_impl(&dword_20E3AF000, v42, OS_LOG_TYPE_INFO, v41, buf, v43);
      }
    }
  }

LABEL_28:
  v45 = *MEMORY[0x277D85DE8];
}

- (id)_optionsForFiles:(id)a3 sourceAppID:(id)a4
{
  v8 = objc_msgSend_serialControllerQueue(MMCSController, a2, a3, a4, v4);
  dispatch_assert_queue_V2(v8);
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v11, 1, v12, v13);
  if (v14)
  {
    CFDictionarySetValue(v9, *MEMORY[0x277D25440], v14);
  }

  v18 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v15, 1, v16, v17);
  if (v18)
  {
    CFDictionarySetValue(v9, *MEMORY[0x277D25448], v18);
  }

  v23 = MEMORY[0x277CCABB0];
  v24 = objc_msgSend_allowUltraConstrainedAttachments(self, v19, v20, v21, v22);
  v28 = objc_msgSend_numberWithBool_(v23, v25, v24, v26, v27);
  if (v28)
  {
    CFDictionarySetValue(v10, *MEMORY[0x277D25530], v28);
  }

  objc_msgSend__addPreauthorizationOptions_forFiles_(self, v29, v9, a3, v30);
  if (a4)
  {
    v35 = *MEMORY[0x277D25600];
    CFDictionarySetValue(v9, *MEMORY[0x277D25600], a4);
    CFDictionarySetValue(v10, v35, a4);
  }

  if (objc_msgSend_connectionBehavior(self, v31, v32, v33, v34) == 1)
  {
    v40 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v36, 0, v38, v39);
    if (v40)
    {
      CFDictionarySetValue(v10, *MEMORY[0x277CBADD8], v40);
    }

    CFDictionarySetValue(v10, *MEMORY[0x277CBADA8], @"en0");
  }

  v41 = MEMORY[0x277CCABB0];
  v42 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v36, v37, v38, v39);
  v47 = objc_msgSend_qualityOfService(v42, v43, v44, v45, v46);
  v51 = objc_msgSend_numberWithInteger_(v41, v48, v47, v49, v50);
  objc_msgSend_setObject_forKey_(v10, v52, v51, *MEMORY[0x277D255C8], v53);
  v57 = *MEMORY[0x277D194B8];
  if (*MEMORY[0x277D194B8])
  {
    objc_msgSend_setObject_forKey_(v10, v54, v57, *MEMORY[0x277CBAE78], v56);
  }

  if (objc_msgSend_count(v10, v54, v57, v55, v56))
  {
    objc_msgSend_setObject_forKey_(v9, v58, v10, *MEMORY[0x277D25610], v59);
  }

  return v9;
}

- (_mmcs_engine)_engine
{
  v47 = *MEMORY[0x277D85DE8];
  result = self->_engine;
  if (!result)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = NSTemporaryDirectory();
    v10 = objc_msgSend_stringGUID(MEMORY[0x277CCACA8], v6, v7, v8, v9);
    v18 = objc_msgSend_stringByAppendingPathComponent_(v5, v11, v10, v12, v13);
    chunkStoreURL = self->_chunkStoreURL;
    if (chunkStoreURL)
    {
      CFRelease(chunkStoreURL);
      self->_chunkStoreURL = 0;
    }

    v20 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v14, v15, v16, v17);
    if (objc_msgSend_makeDirectoriesInPath_mode_(v20, v21, v18, 509, v22))
    {
      self->_chunkStoreURL = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v23, v18, v24, v25);
    }

    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = self->_chunkStoreURL;
        *buf = 138412546;
        v44 = v31;
        v45 = 2112;
        v46 = v4;
        _os_log_impl(&dword_20E3AF000, v30, OS_LOG_TYPE_INFO, "Creating engine with temp url: %@ options: %@", buf, 0x16u);
      }
    }

    self->_currentItemID = 100;
    objc_msgSend_serialControllerQueue(MMCSController, v26, v27, v28, v29);
    v32 = self->_chunkStoreURL;
    if (qword_28112D718 != -1)
    {
      sub_20E3B89F4();
    }

    v33 = MMCSEngineCreateWithTargetDispatchQueue();
    self->_engine = v33;
    v34 = v33 == 0;
    v35 = IMOSLoggingEnabled();
    if (v34)
    {
      if (!v35)
      {
        goto LABEL_19;
      }

      v41 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      *buf = 0;
      v38 = "Failed to create MMCS engine";
      v39 = v41;
      v40 = 2;
    }

    else
    {
      if (!v35)
      {
        goto LABEL_19;
      }

      v36 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      engine = self->_engine;
      *buf = 134217984;
      v44 = engine;
      v38 = "Created engine: %p";
      v39 = v36;
      v40 = 12;
    }

    _os_log_impl(&dword_20E3AF000, v39, OS_LOG_TYPE_INFO, v38, buf, v40);
LABEL_19:

    result = self->_engine;
  }

  v42 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_registeredTransferForGUID:(id)a3
{
  v7 = objc_msgSend_serialControllerQueue(MMCSController, a2, a3, v3, v4);
  dispatch_assert_queue_V2(v7);
  transfers = self->_transfers;

  return objc_msgSend_objectForKey_(transfers, v8, a3, v9, v10);
}

- (id)_registeredTransferForItemID:(unint64_t)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_serialControllerQueue(MMCSController, a2, a3, v3, v4);
  dispatch_assert_queue_V2(v7);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = objc_msgSend_allValues(self->_transfers, v8, v9, v10, v11, 0);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v25, v31, 16);
  if (v18)
  {
    v19 = *v26;
LABEL_3:
    v20 = 0;
    while (1)
    {
      if (*v26 != v19)
      {
        objc_enumerationMutation(v12);
      }

      v21 = *(*(&v25 + 1) + 8 * v20);
      if (objc_msgSend_itemID(v21, v14, v15, v16, v17) == a3)
      {
        break;
      }

      if (v18 == ++v20)
      {
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v25, v31, 16);
        if (v18)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v30 = a3;
        _os_log_impl(&dword_20E3AF000, v22, OS_LOG_TYPE_INFO, "Found no registered transfer for transfer id: %qx", buf, 0xCu);
      }
    }

    v21 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)_unregisterTransfers:(id)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_serialControllerQueue(MMCSController, a2, a3, v3, v4);
  dispatch_assert_queue_V2(v7);
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v8, &v56, v62, 16);
  if (v13)
  {
    v15 = *v57;
    *&v14 = 138412290;
    v55 = v14;
    do
    {
      v16 = 0;
      do
      {
        if (*v57 != v15)
        {
          objc_enumerationMutation(a3);
        }

        v17 = *(*(&v56 + 1) + 8 * v16);
        if (IMOSLoggingEnabled())
        {
          v22 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = v55;
            v61 = v17;
            _os_log_impl(&dword_20E3AF000, v22, OS_LOG_TYPE_INFO, "Unregistering file transfer: %@", buf, 0xCu);
          }
        }

        transfers = self->_transfers;
        v24 = objc_msgSend_guid(v17, v18, v19, v20, v21, v55);
        v28 = objc_msgSend_objectForKey_(transfers, v25, v24, v26, v27);
        v29 = IMOSLoggingEnabled();
        if (v28)
        {
          if (v29)
          {
            v34 = OSLogHandleForIMEventCategory();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              *buf = v55;
              v61 = v28;
              _os_log_impl(&dword_20E3AF000, v34, OS_LOG_TYPE_INFO, " => Unregistering: %@", buf, 0xCu);
            }
          }

          objc_msgSend__engine(self, v30, v31, v32, v33);
          objc_msgSend_itemID(v28, v35, v36, v37, v38);
          MMCSUnregisterFile();
          v39 = self->_transfers;
          v44 = objc_msgSend_guid(v17, v40, v41, v42, v43);
          objc_msgSend_removeObjectForKey_(v39, v45, v44, v46, v47);
          if (!objc_msgSend_count(self->_transfers, v48, v49, v50, v51))
          {

            self->_transfers = 0;
          }
        }

        else if (v29)
        {
          v52 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_20E3AF000, v52, OS_LOG_TYPE_INFO, "Found no transfer to unregister", buf, 2u);
          }
        }

        ++v16;
      }

      while (v13 != v16);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v30, &v56, v62, 16);
    }

    while (v13);
  }

  if (!self->_transfers)
  {
    objc_msgSend__unregisterPowerAssertion(self, v9, v10, v11, v12);
  }

  v53 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_setScheduledTransfers:(id)a3 block:(id)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_serialControllerQueue(MMCSController, a2, a3, a4, v4);
  dispatch_assert_queue_V2(v8);
  if (a4)
  {
    if (!self->_requestIDToBlockMap)
    {
      self->_requestIDToBlockMap = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    if (!self->_transferToRequestIDsMap)
    {
      self->_transferToRequestIDsMap = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v54 = a4;
    if (!self->_requestIDToRemainingTransfersMap)
    {
      self->_requestIDToRemainingTransfersMap = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    if (!self->_requestIDToTransfersMap)
    {
      self->_requestIDToTransfersMap = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v13 = objc_msgSend_stringGUID(MEMORY[0x277CCACA8], v9, v10, v11, v12);
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v14, &v55, v59, 16);
    if (v15)
    {
      v20 = v15;
      v21 = *v56;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v56 != v21)
          {
            objc_enumerationMutation(a3);
          }

          v23 = *(*(&v55 + 1) + 8 * i);
          transferToRequestIDsMap = self->_transferToRequestIDsMap;
          v25 = objc_msgSend_guid(v23, v16, v17, v18, v19);
          v32 = objc_msgSend_objectForKey_(transferToRequestIDsMap, v26, v25, v27, v28);
          if (!v32)
          {
            v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          objc_msgSend_addObject_(v32, v29, v13, v30, v31);
          v33 = self->_transferToRequestIDsMap;
          v38 = objc_msgSend_guid(v23, v34, v35, v36, v37);
          objc_msgSend_setObject_forKey_(v33, v39, v32, v38, v40);
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v16, &v55, v59, 16);
      }

      while (v20);
    }

    v41 = objc_msgSend_copy(v54, v16, v17, v18, v19);
    objc_msgSend_setObject_forKey_(self->_requestIDToBlockMap, v42, v41, v13, v43);

    v48 = objc_msgSend_mutableCopy(a3, v44, v45, v46, v47);
    objc_msgSend_setObject_forKey_(self->_requestIDToRemainingTransfersMap, v49, v48, v13, v50);
    objc_msgSend_setObject_forKey_(self->_requestIDToTransfersMap, v51, a3, v13, v52);
  }

  v53 = *MEMORY[0x277D85DE8];
}

- (BOOL)_putTransfers:(id)a3 requestURL:(id)a4 requestorID:(id)a5 transferID:(id)a6 sourceAppID:(id)a7 token:(id)a8 error:(id *)a9
{
  *&v54[5] = *MEMORY[0x277D85DE8];
  v16 = objc_msgSend_serialControllerQueue(MMCSController, a2, a3, a4, a5);
  dispatch_assert_queue_V2(v16);
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v54 = a3;
      _os_log_impl(&dword_20E3AF000, v21, OS_LOG_TYPE_INFO, "Make put transfer request for transfers: %@", buf, 0xCu);
    }
  }

  if (!objc_msgSend__engine(self, v17, v18, v19, v20))
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_30;
    }

    v44 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      goto LABEL_30;
    }

    *buf = 0;
    v45 = " => Could not generate engine, failing";
    goto LABEL_29;
  }

  if (!a4)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_30;
    }

    v44 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      goto LABEL_30;
    }

    *buf = 0;
    v45 = " => empty requestURL";
    goto LABEL_29;
  }

  if (!a5)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_30;
    }

    v44 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      goto LABEL_30;
    }

    *buf = 0;
    v45 = " => empty requestorID";
    goto LABEL_29;
  }

  if (!a8)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_30;
    }

    v44 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      goto LABEL_30;
    }

    *buf = 0;
    v45 = " => empty authToken";
LABEL_29:
    _os_log_impl(&dword_20E3AF000, v44, OS_LOG_TYPE_INFO, v45, buf, 2u);
LABEL_30:
    v42 = 0;
    goto LABEL_31;
  }

  v51 = 0;
  v52 = 0;
  v49 = 0;
  v50 = 0;
  objc_msgSend_count(a3, v22, v23, v24, v25);
  sub_20E3B3F3C(a3, a5, a4, a8);
  if (sub_20E3B4058(a3, &v52, &v51, &v50, &v49))
  {
    v28 = objc_msgSend__optionsForFiles_sourceAppID_(self, v26, a3, a7, v27);
    v29 = [MMCSRequestorContext alloc];
    v32 = objc_msgSend_initWithController_transferID_(v29, v30, self, a6, v31);
    objc_msgSend__addRequestorContext_transferID_(self, v33, v32, a6, v34);
    if (IMOSLoggingEnabled())
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = objc_msgSend_count(v28, v35, v36, v37, v38);
        *buf = 134217984;
        *v54 = v40;
        _os_log_impl(&dword_20E3AF000, v39, OS_LOG_TYPE_INFO, "Calling MMCSPutItems: requestOptions has %tu keys.", buf, 0xCu);
      }
    }

    objc_msgSend__engine(self, v35, v36, v37, v38);
    v41 = MMCSPutItems();
    v42 = v41 != 0;
    if (a9)
    {
      *a9 = 0;
    }

    if (IMOSLoggingEnabled())
    {
      v43 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v54[0] = v41 != 0;
        LOWORD(v54[1]) = 2112;
        *(&v54[1] + 2) = 0;
        _os_log_impl(&dword_20E3AF000, v43, OS_LOG_TYPE_INFO, "Returning success: %d   error: %@", buf, 0x12u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v48 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_20E3AF000, v48, OS_LOG_TYPE_INFO, "Failed to generate item set", buf, 2u);
      }
    }

    v42 = 0;
  }

  sub_20E3B4404(a3, &v52, &v51, &v50, &v49);
LABEL_31:
  v46 = *MEMORY[0x277D85DE8];
  return v42;
}

- (BOOL)_getTransfers:(id)a3 requestURL:(id)a4 requestorID:(id)a5 sourceAppID:(id)a6 token:(id)a7 error:(id *)a8
{
  *&v54[5] = *MEMORY[0x277D85DE8];
  v15 = objc_msgSend_serialControllerQueue(MMCSController, a2, a3, a4, a5);
  dispatch_assert_queue_V2(v15);
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v54 = a3;
      _os_log_impl(&dword_20E3AF000, v20, OS_LOG_TYPE_INFO, "Make get transfer request for transfers: %@", buf, 0xCu);
    }
  }

  if (!objc_msgSend__engine(self, v16, v17, v18, v19))
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_39;
    }

    v45 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      goto LABEL_39;
    }

    *buf = 0;
    v46 = " => Could not generate engine, failing";
    goto LABEL_38;
  }

  if (!a4)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_39;
    }

    v45 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      goto LABEL_39;
    }

    *buf = 0;
    v46 = " => empty requestURL";
    goto LABEL_38;
  }

  if (!a5)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_39;
    }

    v45 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      goto LABEL_39;
    }

    *buf = 0;
    v46 = " => empty requestorID";
    goto LABEL_38;
  }

  if (!a7)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_39;
    }

    v45 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      goto LABEL_39;
    }

    *buf = 0;
    v46 = " => empty authToken";
LABEL_38:
    _os_log_impl(&dword_20E3AF000, v45, OS_LOG_TYPE_INFO, v46, buf, 2u);
LABEL_39:
    v43 = 0;
    goto LABEL_40;
  }

  v51 = 0;
  v52 = 0;
  v50 = 0;
  objc_msgSend_count(a3, v21, v22, v23, v24);
  sub_20E3B3F3C(a3, a5, a4, a7);
  v25 = sub_20E3B4058(a3, &v52, 0, &v51, &v50);
  v26 = IMOSLoggingEnabled();
  if (v25)
  {
    if (v26)
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *v54 = v52;
        _os_log_impl(&dword_20E3AF000, v27, OS_LOG_TYPE_INFO, "items: %p", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *v54 = v51;
        _os_log_impl(&dword_20E3AF000, v28, OS_LOG_TYPE_INFO, "signatures: %p", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *v54 = v50;
        _os_log_impl(&dword_20E3AF000, v31, OS_LOG_TYPE_INFO, "tokens: %p", buf, 0xCu);
      }
    }

    v32 = objc_msgSend__optionsForFiles_sourceAppID_(self, v29, a3, a6, v30);
    v33 = [MMCSRequestorContext alloc];
    objc_msgSend_initWithController_transferID_(v33, v34, self, 0, v35);
    if (IMOSLoggingEnabled())
    {
      v40 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = objc_msgSend_count(v32, v36, v37, v38, v39);
        *buf = 134217984;
        *v54 = v41;
        _os_log_impl(&dword_20E3AF000, v40, OS_LOG_TYPE_INFO, "Calling MMCSGetItems: requestOptions has %tu keys.", buf, 0xCu);
      }
    }

    objc_msgSend__engine(self, v36, v37, v38, v39);
    v42 = MMCSGetItems();
    v43 = v42 != 0;
    if (a8)
    {
      *a8 = 0;
    }

    if (IMOSLoggingEnabled())
    {
      v44 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v54[0] = v42 != 0;
        LOWORD(v54[1]) = 2112;
        *(&v54[1] + 2) = 0;
        _os_log_impl(&dword_20E3AF000, v44, OS_LOG_TYPE_INFO, "Returning success: %d   error: %@", buf, 0x12u);
      }
    }
  }

  else
  {
    if (v26)
    {
      v49 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_20E3AF000, v49, OS_LOG_TYPE_INFO, "Failed to generate item set", buf, 2u);
      }
    }

    v43 = 0;
  }

  sub_20E3B4404(a3, &v52, 0, &v51, &v50);
LABEL_40:
  v47 = *MEMORY[0x277D85DE8];
  return v43;
}

- (BOOL)isActive
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v6 = objc_msgSend_serialControllerQueue(MMCSController, a2, v2, v3, v4);
  dispatch_assert_queue_not_V2(v6);
  v11 = objc_msgSend_serialControllerQueue(MMCSController, v7, v8, v9, v10);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_20E3B4C8C;
  v13[3] = &unk_277E1CBA0;
  v13[4] = self;
  v13[5] = &v14;
  dispatch_sync(v11, v13);
  LOBYTE(self) = *(v15 + 24) != 0;
  _Block_object_dispose(&v14, 8);
  return self;
}

- (void)registerFilesForDownload:(id)a3 completionBlock:(id)a4
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_20E3B4DB4;
  v9[3] = &unk_277E1CBF0;
  v9[4] = self;
  v9[5] = a4;
  v7 = objc_msgSend_serialControllerQueue(MMCSController, a2, a3, a4, v4);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_20E3B4E64;
  block[3] = &unk_277E1CC18;
  block[4] = self;
  block[5] = a3;
  block[6] = v9;
  dispatch_async(v7, block);
}

- (BOOL)unregisterFiles:(id)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v7 = objc_msgSend_serialControllerQueue(MMCSController, a2, a3, v3, v4);
  dispatch_assert_queue_not_V2(v7);
  v12 = objc_msgSend_serialControllerQueue(MMCSController, v8, v9, v10, v11);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_20E3B5114;
  block[3] = &unk_277E1CC68;
  block[5] = self;
  block[6] = &v15;
  block[4] = a3;
  dispatch_sync(v12, block);
  LOBYTE(self) = *(v16 + 24) != 0;
  _Block_object_dispose(&v15, 8);
  return self;
}

+ (id)serialControllerQueue
{
  if (qword_28112D6F8 != -1)
  {
    sub_20E3B8A1C();
  }

  return qword_28112D6F0;
}

+ (void)preMMCSWarm
{
  v5 = objc_msgSend_serialControllerQueue(MMCSController, a2, v2, v3, v4);

  dispatch_async(v5, &unk_28253E008);
}

- (void)getFiles:(id)a3 requestURL:(id)a4 requestorID:(id)a5 sourceAppID:(id)a6 authToken:(id)a7 completionBlock:(id)a8
{
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_20E3B569C;
  v16[3] = &unk_277E1CCD8;
  v16[4] = self;
  v16[5] = a8;
  v14 = objc_msgSend_serialControllerQueue(MMCSController, a2, a3, a4, a5);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_20E3B5764;
  block[3] = &unk_277E1CD28;
  block[9] = a7;
  block[10] = v16;
  block[4] = a3;
  block[5] = self;
  block[6] = a4;
  block[7] = a5;
  block[8] = a6;
  dispatch_async(v14, block);
}

- (void)putFiles:(id)a3 requestURL:(id)a4 requestorID:(id)a5 transferID:(id)a6 sourceAppID:(id)a7 authToken:(id)a8 preauthenticate:(BOOL)a9 completionBlock:(id)a10
{
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_20E3B5BD0;
  v20[3] = &unk_277E1CCD8;
  v20[4] = self;
  v20[5] = a10;
  v17 = objc_msgSend_serialControllerQueue(MMCSController, a2, a3, a4, a5);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_20E3B5C98;
  block[3] = &unk_277E1CD78;
  block[4] = a3;
  block[5] = self;
  v19 = a9;
  block[6] = a4;
  block[7] = a5;
  block[8] = a6;
  block[9] = a7;
  block[10] = a8;
  block[11] = v20;
  dispatch_async(v17, block);
}

- (void)_addRequestorContext:(id)a3 transferID:(id)a4
{
  v8 = objc_msgSend_serialControllerQueue(MMCSController, a2, a3, a4, v4);
  dispatch_assert_queue_V2(v8);
  if (a3 && a4)
  {
    objc_msgSend_lock(self->_transferIDContextMapLock, v9, v10, v11, v12);
    transferIDToContextMap = self->_transferIDToContextMap;
    if (!transferIDToContextMap)
    {
      transferIDToContextMap = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      self->_transferIDToContextMap = transferIDToContextMap;
    }

    v20 = objc_msgSend_objectForKeyedSubscript_(transferIDToContextMap, v13, a4, v14, v15);
    if (!v20)
    {
      v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
      objc_msgSend_setObject_forKeyedSubscript_(self->_transferIDToContextMap, v21, v20, a4, v22);
    }

    objc_msgSend_addObject_(v20, v17, a3, v18, v19);
    transferIDContextMapLock = self->_transferIDContextMapLock;

    objc_msgSend_unlock(transferIDContextMapLock, v23, v24, v25, v26);
  }
}

- (void)_removeRequestorContext:(id)a3 transferID:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_serialControllerQueue(MMCSController, a2, a3, a4, v4);
  dispatch_assert_queue_V2(v8);
  if (a3 && a4)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v30 = 138412290;
        v31 = a4;
        _os_log_impl(&dword_20E3AF000, v13, OS_LOG_TYPE_INFO, "Remove request context for transferID %@", &v30, 0xCu);
      }
    }

    objc_msgSend_lock(self->_transferIDContextMapLock, v9, v10, v11, v12);
    v17 = objc_msgSend_objectForKeyedSubscript_(self->_transferIDToContextMap, v14, a4, v15, v16);
    objc_msgSend_removeObject_(v17, v18, a3, v19, v20);
    if (!objc_msgSend_count(v17, v21, v22, v23, v24))
    {
      objc_msgSend_setObject_forKeyedSubscript_(self->_transferIDToContextMap, v25, 0, a4, v28);
    }

    objc_msgSend_unlock(self->_transferIDContextMapLock, v25, v26, v27, v28);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_cancelRequest:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_serialControllerQueue(MMCSController, a2, a3, v3, v4);
  dispatch_assert_queue_V2(v7);
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 134217984;
      v15 = a3;
      _os_log_impl(&dword_20E3AF000, v12, OS_LOG_TYPE_INFO, "Request cancel context %p", &v14, 0xCu);
    }
  }

  objc_msgSend__engine(self, v8, v9, v10, v11);
  MMCSEngineCancelRequests();
  v13 = *MEMORY[0x277D85DE8];
}

- (void)cancelPutRequestID:(id)a3
{
  v7 = objc_msgSend_serialControllerQueue(MMCSController, a2, a3, v3, v4);
  dispatch_assert_queue_not_V2(v7);
  if (a3)
  {
    v12 = objc_msgSend_serialControllerQueue(MMCSController, v8, v9, v10, v11);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_20E3B6394;
    v13[3] = &unk_277E1CDA0;
    v13[4] = a3;
    v13[5] = self;
    dispatch_sync(v12, v13);
  }
}

- (id)getContentHeadersAsString
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = sub_20E3B331C;
  v19 = sub_20E3B332C;
  v20 = 0;
  v6 = objc_msgSend_serialControllerQueue(MMCSController, a2, v2, v3, v4);
  dispatch_assert_queue_not_V2(v6);
  v11 = objc_msgSend_serialControllerQueue(MMCSController, v7, v8, v9, v10);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_20E3B6938;
  v14[3] = &unk_277E1CDC8;
  v14[4] = self;
  v14[5] = &v15;
  dispatch_sync(v11, v14);
  v12 = v16[5];
  _Block_object_dispose(&v15, 8);
  return v12;
}

- (void)_processCompletedItem:(id)a3 error:(id)a4
{
  v5 = a3;
  v100 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_serialControllerQueue(MMCSController, a2, a3, a4, v4);
  dispatch_assert_queue_V2(v7);
  v8 = v5;
  transferToRequestIDsMap = self->_transferToRequestIDsMap;
  v14 = objc_msgSend_guid(v5, v10, v11, v12, v13);
  v18 = objc_msgSend_objectForKey_(transferToRequestIDsMap, v15, v14, v16, v17);
  v23 = objc_msgSend_mutableCopy(v18, v19, v20, v21, v22);
  v28 = objc_msgSend_mutableCopy(v23, v24, v25, v26, v27);
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v29, &v95, v99, 16);
  if (v30)
  {
    v35 = v30;
    v36 = *v96;
    if (v5)
    {
      v37 = v28 == 0;
    }

    else
    {
      v37 = 1;
    }

    v38 = !v37;
    v93 = v38;
    v92 = v5;
    do
    {
      v39 = 0;
      do
      {
        if (*v96 != v36)
        {
          objc_enumerationMutation(v23);
        }

        v40 = *(*(&v95 + 1) + 8 * v39);
        v41 = objc_msgSend_objectForKey_(self->_requestIDToRemainingTransfersMap, v31, v40, v33, v34);
        objc_msgSend_removeObjectIdenticalTo_(v41, v42, v5, v43, v44);
        if (!objc_msgSend_count(v41, v45, v46, v47, v48))
        {
          v49 = objc_msgSend_objectForKey_(self->_requestIDToBlockMap, v31, v40, v33, v34);
          if (v49)
          {
            v53 = v49;
            v54 = objc_msgSend_objectForKey_(self->_requestIDToTransfersMap, v50, v40, v51, v52);
            v5 = v92;
            (*(v53 + 16))(v53, v54, a4 == 0, a4);
          }

          objc_msgSend_removeObjectForKey_(self->_requestIDToBlockMap, v50, v40, v51, v52);
          objc_msgSend_removeObjectForKey_(self->_requestIDToRemainingTransfersMap, v55, v40, v56, v57);
          objc_msgSend_removeObjectForKey_(self->_requestIDToTransfersMap, v58, v40, v59, v60);
          objc_msgSend_removeObjectIdenticalTo_(v28, v61, v40, v62, v63);
          if (objc_msgSend_count(v28, v64, v65, v66, v67))
          {
            if (v93)
            {
              v69 = self->_transferToRequestIDsMap;
              v70 = objc_msgSend_guid(v5, v31, v68, v33, v34);
              objc_msgSend_setObject_forKey_(v69, v71, v28, v70, v72);
            }
          }

          else if (v5)
          {
            v73 = self->_transferToRequestIDsMap;
            v74 = objc_msgSend_guid(v5, v31, v68, v33, v34);
            objc_msgSend_removeObjectForKey_(v73, v75, v74, v76, v77);
          }
        }

        ++v39;
      }

      while (v35 != v39);
      v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v31, &v95, v99, 16);
      v35 = v78;
    }

    while (v78);
  }

  if (!objc_msgSend_count(self->_requestIDToTransfersMap, v31, v32, v33, v34))
  {

    self->_requestIDToTransfersMap = 0;
  }

  if (!objc_msgSend_count(self->_requestIDToRemainingTransfersMap, v79, v80, v81, v82))
  {

    self->_requestIDToRemainingTransfersMap = 0;
  }

  if (!objc_msgSend_count(self->_requestIDToBlockMap, v83, v84, v85, v86))
  {

    self->_requestIDToBlockMap = 0;
  }

  if (!objc_msgSend_count(self->_transferToRequestIDsMap, v87, v88, v89, v90))
  {

    self->_transferToRequestIDsMap = 0;
  }

  v91 = *MEMORY[0x277D85DE8];
}

- (void)_putItemCompleted:(id)a3 error:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_serialControllerQueue(MMCSController, a2, a3, a4, v4);
  dispatch_assert_queue_V2(v8);
  objc_msgSend_setMMCSError_(a3, v9, a4, v10, v11);
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v21 = a3;
      v22 = 2112;
      v23 = a4;
      _os_log_impl(&dword_20E3AF000, v16, OS_LOG_TYPE_INFO, "Put item completed: %@  error: %@", buf, 0x16u);
    }
  }

  if (a3)
  {
    v17 = objc_msgSend_replyQueue(self, v12, v13, v14, v15);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_20E3B72CC;
    v19[3] = &unk_277E1CDA0;
    v19[4] = a4;
    v19[5] = a3;
    dispatch_async(v17, v19);
  }

  objc_msgSend__processCompletedItem_error_(self, v12, a3, a4, v15);
  v18 = *MEMORY[0x277D85DE8];
}

- (void)_getItemCompleted:(id)a3 path:(id)a4 error:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v9 = objc_msgSend_serialControllerQueue(MMCSController, a2, a3, a4, a5);
  dispatch_assert_queue_V2(v9);
  v26 = 0;
  v27 = &v26;
  v28 = 0x3052000000;
  v29 = sub_20E3B331C;
  v30 = sub_20E3B332C;
  v31 = a5;
  objc_msgSend_setMMCSError_(a3, v10, a5, v11, v12);
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = v27[5];
      *buf = 138412546;
      v33 = a3;
      v34 = 2112;
      v35 = v14;
      _os_log_impl(&dword_20E3AF000, v13, OS_LOG_TYPE_INFO, "Get item completed: %@  error: %@", buf, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = v27[5];
      *buf = 138412546;
      v33 = a4;
      v34 = 2112;
      v35 = v16;
      _os_log_impl(&dword_20E3AF000, v15, OS_LOG_TYPE_INFO, "[=MMCS-Timing=]  Get Item completed for path: %@  (error: %@)", buf, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = qos_class_self();
      *buf = 67109120;
      LODWORD(v33) = v22;
      _os_log_impl(&dword_20E3AF000, v21, OS_LOG_TYPE_INFO, "Get item completed running at qos (%u)", buf, 8u);
    }
  }

  if (a3)
  {
    v23 = objc_msgSend_replyQueue(self, v17, v18, v19, v20);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_20E3B780C;
    block[3] = &unk_277E1CC68;
    block[5] = a4;
    block[6] = &v26;
    block[4] = a3;
    dispatch_async(v23, block);
  }

  objc_msgSend__processCompletedItem_error_(self, v17, a3, v27[5], v20);
  _Block_object_dispose(&v26, 8);
  v24 = *MEMORY[0x277D85DE8];
}

- (void)_itemCompleted:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_serialControllerQueue(MMCSController, a2, a3, v3, v4);
  dispatch_assert_queue_V2(v6);
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = a3;
      _os_log_impl(&dword_20E3AF000, v7, OS_LOG_TYPE_INFO, "Item completed: %@", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_MMCSICloudRequestHeadersCopy:(__CFString *)a3
{
  v5 = objc_msgSend_serialControllerQueue(MMCSController, a2, a3, v3, v4);
  dispatch_assert_queue_V2(v5);
  v6 = MMCSICloudRequestHeadersCopy();

  return v6;
}

@end