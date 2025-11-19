@interface IMFileTransferCenter
+ (Class)transferCenterClass;
+ (id)sharedInstance;
- (BOOL)doesLocalURLRequireArchiving:(id)a3 toHandle:(id)a4;
- (BOOL)isFileTransfer:(id)a3 preauthorizedWithDictionary:(id)a4;
- (BOOL)registerGUID:(id)a3 forNewOutgoingTransferWithLocalURL:(id)a4;
- (NSArray)orderedTransfers;
- (NSArray)orderedTransfersGUIDs;
- (id)chatForTransfer:(id)a3;
- (id)createNewOutgoingGroupPhotoTransferWithLocalFileURL:(id)a3;
- (id)createNewOutgoingTransferWithLocalFileURL:(id)a3;
- (id)guidsForStoredAttachmentPayloadData:(id)a3 messageGUID:(id)a4;
- (id)transferForGUID:(id)a3 includeRemoved:(BOOL)a4;
- (id)transfersForAccount:(id)a3;
- (void)_addActiveTransfer:(id)a3;
- (void)_addPendingTransfer:(id)a3;
- (void)_addTransfer:(id)a3;
- (void)_addTransfer:(id)a3 toAccount:(id)a4;
- (void)_clearTransfers;
- (void)_daemonDisconnected:(id)a3;
- (void)_daemonRestarted:(id)a3;
- (void)_fetchHighQualityVariantForTransferGUID:(id)a3 completion:(id)a4;
- (void)_handleAllFileTransfers:(id)a3;
- (void)_handleFileTransfer:(id)a3 createdWithProperties:(id)a4;
- (void)_handleFileTransfer:(id)a3 explicitDownloadSucceededWithPath:(id)a4 livePhotoBundlePath:(id)a5;
- (void)_handleFileTransfer:(id)a3 highQualityDownloadSucceededWithPath:(id)a4;
- (void)_handleFileTransfer:(id)a3 rejectedWithProperties:(id)a4;
- (void)_handleFileTransfer:(id)a3 updatedWithCurrentBytes:(unint64_t)a4 totalBytes:(unint64_t)a5 averageTransferRate:(unint64_t)a6;
- (void)_handleFileTransfer:(id)a3 updatedWithProperties:(id)a4;
- (void)_handleFileTransferDownloadFailedWithLocalURL:(id)a3 error:(id)a4;
- (void)_handleFileTransferDownloadSucceededWithLocalURL:(id)a3;
- (void)_handleFileTransferExplicitDownloadFailed:(id)a3 suggestedRetryGUID:(id)a4 error:(id)a5;
- (void)_handleFileTransferFinishedRemoteIntentDownload:(id)a3;
- (void)_handleFileTransferHighQualityDownloadFailed:(id)a3;
- (void)_handleFileTransfers:(id)a3 createdWithLocalPaths:(id)a4;
- (void)_handleSerializedFileTransfers:(id)a3;
- (void)_initiateHighQualityVariantDownloadWithDaemonForGUID:(id)a3;
- (void)_initiateLocalFileURLRetrievalInDaemonForGUID:(id)a3 options:(int64_t)a4;
- (void)_initiateLocalFileURLRetrievalInDaemonForGUIDs:(id)a3 options:(int64_t)a4;
- (void)_registerDaemonListenerIfNecessary;
- (void)_removeActiveTransfer:(id)a3;
- (void)_removeAllActiveTransfers;
- (void)_removePendingTransfer:(id)a3;
- (void)acceptFileTransferIfPreauthorzed:(id)a3;
- (void)acceptTransferAndUpdateReasonForTapped:(id)a3;
- (void)acknowledgeAllPendingTransfers;
- (void)assignTransfer:(id)a3 toHandle:(id)a4;
- (void)assignTransfer:(id)a3 toMessage:(id)a4 account:(id)a5;
- (void)clearFinishedTransfers;
- (void)createItemForPHAssetWithUUID:(id)a3 parentChatItemGUID:(id)a4 chatGUID:(id)a5;
- (void)createNewOutgoingFileTransferWithTransferGUID:(id)a3 localFileURL:(id)a4;
- (void)dealloc;
- (void)deleteTransfer:(id)a3;
- (void)downloadFileTransferWithLocalURL:(id)a3 completion:(id)a4;
- (void)fetchHighQualityVariantForTransfer:(id)a3 completion:(id)a4;
- (void)preWarmConnection;
- (void)preauthorizeFileTransferFromOtherPerson:(id)a3 account:(id)a4 filename:(id)a5 saveToPath:(id)a6;
- (void)registerNewFileTransfer:(id)a3;
- (void)registerTransferWithDaemon:(id)a3;
- (void)removeTransfer:(id)a3;
- (void)retargetTransfer:(id)a3 toPath:(id)a4;
- (void)retrieveLocalFileURLForFileTransferWithGUID:(id)a3 options:(int64_t)a4 completion:(id)a5;
- (void)retrieveLocalFileURLForFileTransferWithGUIDs:(id)a3 options:(int64_t)a4 completion:(id)a5;
- (void)setCommSafetySensitiveForTransfer:(id)a3 value:(int64_t)a4;
- (void)stopTransfer:(id)a3;
@end

@implementation IMFileTransferCenter

+ (id)sharedInstance
{
  v4 = qword_1ED767858;
  if (!qword_1ED767858)
  {
    v5 = objc_alloc_init(objc_msgSend_transferCenterClass(a1, a2, v2));
    v6 = qword_1ED767858;
    qword_1ED767858 = v5;

    v4 = qword_1ED767858;
  }

  return v4;
}

+ (Class)transferCenterClass
{
  if (qword_1EB2EA1E0)
  {
    v2 = qword_1EB2EA1E0;
  }

  else
  {
    v2 = objc_opt_class();
  }

  return v2;
}

- (void)_clearTransfers
{
  objc_msgSend__removeAllActiveTransfers(self, a2, v2);
  objc_msgSend_acknowledgeAllPendingTransfers(self, v4, v5);
  objc_msgSend_removeAllObjects(self->_guidToTransferMap, v6, v7);
  objc_msgSend_removeAllObjects(self->_guidToRemovedTransferMap, v8, v9);
  objc_msgSend_removeAllObjects(self->_accountIDToTransferGUIDsMap, v10, v11);
  objc_msgSend_removeAllObjects(self->_preauthorizedInfos, v12, v13);
  objc_msgSend_removeAllObjects(self->_preauthorizedGUIDs, v14, v15);
  objc_msgSend_removeAllObjects(self->_activeTransfers, v16, v17);
  objc_msgSend_removeAllObjects(self->_pendingTransfers, v18, v19);
  if (!objc_msgSend_count(self->_guidToTransferMap, v20, v21))
  {
    guidToTransferMap = self->_guidToTransferMap;
    self->_guidToTransferMap = 0;
  }

  if (!objc_msgSend_count(self->_guidToRemovedTransferMap, v22, v23))
  {
    guidToRemovedTransferMap = self->_guidToRemovedTransferMap;
    self->_guidToRemovedTransferMap = 0;
  }

  if (!objc_msgSend_count(self->_accountIDToTransferGUIDsMap, v25, v26))
  {
    accountIDToTransferGUIDsMap = self->_accountIDToTransferGUIDsMap;
    self->_accountIDToTransferGUIDsMap = 0;
  }

  if (!objc_msgSend_count(self->_preauthorizedInfos, v28, v29))
  {
    preauthorizedInfos = self->_preauthorizedInfos;
    self->_preauthorizedInfos = 0;
  }

  if (!objc_msgSend_count(self->_preauthorizedGUIDs, v31, v32))
  {
    preauthorizedGUIDs = self->_preauthorizedGUIDs;
    self->_preauthorizedGUIDs = 0;
  }

  if (!objc_msgSend_count(self->_activeTransfers, v34, v35))
  {
    activeTransfers = self->_activeTransfers;
    self->_activeTransfers = 0;
  }

  if (!objc_msgSend_count(self->_pendingTransfers, v37, v38))
  {
    pendingTransfers = self->_pendingTransfers;
    self->_pendingTransfers = 0;
  }
}

- (void)_removeAllActiveTransfers
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_copy(self->_activeTransfers, a2, v2);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v13, v17, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend__removeActiveTransfer_(self, v8, *(*(&v13 + 1) + 8 * v11++), v13);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v13, v17, 16);
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)acknowledgeAllPendingTransfers
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_copy(self->_pendingTransfers, a2, v2);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v13, v17, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend__removePendingTransfer_(self, v8, *(*(&v13 + 1) + 8 * v11++), v13);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v13, v17, 16);
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2);
  objc_msgSend_removeObserver_(v4, v5, self);

  v6.receiver = self;
  v6.super_class = IMFileTransferCenter;
  [(IMFileTransferCenter *)&v6 dealloc];
}

- (void)_addPendingTransfer:(id)a3
{
  v4 = a3;
  pendingTransfers = self->_pendingTransfers;
  v8 = v4;
  if (!pendingTransfers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_pendingTransfers;
    self->_pendingTransfers = v6;

    v4 = v8;
    pendingTransfers = self->_pendingTransfers;
  }

  objc_msgSend_addObject_(pendingTransfers, v4, v4);
}

- (void)_removePendingTransfer:(id)a3
{
  v9 = a3;
  if (objc_msgSend_containsObject_(self->_pendingTransfers, v4, v9))
  {
    objc_msgSend_removeObject_(self->_pendingTransfers, v5, v9);
    if (!objc_msgSend_count(self->_pendingTransfers, v6, v7))
    {
      pendingTransfers = self->_pendingTransfers;
      self->_pendingTransfers = 0;
    }
  }
}

- (void)_addActiveTransfer:(id)a3
{
  v4 = a3;
  activeTransfers = self->_activeTransfers;
  v9 = v4;
  if (!activeTransfers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = self->_activeTransfers;
    self->_activeTransfers = v6;

    v4 = v9;
    activeTransfers = self->_activeTransfers;
  }

  objc_msgSend_addObject_(activeTransfers, v4, v4);
  objc_msgSend__removePendingTransfer_(self, v8, v9);
}

- (void)_removeActiveTransfer:(id)a3
{
  v9 = a3;
  if (objc_msgSend_containsObject_(self->_activeTransfers, v4, v9))
  {
    objc_msgSend_removeObject_(self->_activeTransfers, v5, v9);
    if (!objc_msgSend_count(self->_activeTransfers, v6, v7))
    {
      activeTransfers = self->_activeTransfers;
      self->_activeTransfers = 0;
    }
  }
}

- (void)_addTransfer:(id)a3 toAccount:(id)a4
{
  v17 = a3;
  v7 = a4;
  if (v7)
  {
    v10 = objc_msgSend_objectForKey_(self->_accountIDToTransferGUIDsMap, v6, v7);
    if (!v10)
    {
      v10 = objc_msgSend_array(MEMORY[0x1E695DF70], v8, v9);
      accountIDToTransferGUIDsMap = self->_accountIDToTransferGUIDsMap;
      if (!accountIDToTransferGUIDsMap)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v14 = self->_accountIDToTransferGUIDsMap;
        self->_accountIDToTransferGUIDsMap = Mutable;

        accountIDToTransferGUIDsMap = self->_accountIDToTransferGUIDsMap;
      }

      objc_msgSend_setObject_forKey_(accountIDToTransferGUIDsMap, v11, v10, v7);
    }

    v15 = objc_msgSend_guid(v17, v8, v9);
    objc_msgSend_addObject_(v10, v16, v15);
  }
}

- (void)_addTransfer:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_guid(v4, v5, v6);

    if (v8)
    {
      guidToTransferMap = self->_guidToTransferMap;
      if (!guidToTransferMap)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v13 = self->_guidToTransferMap;
        self->_guidToTransferMap = Mutable;

        guidToTransferMap = self->_guidToTransferMap;
      }

      v14 = objc_msgSend_guid(v7, v9, v10);
      objc_msgSend_setObject_forKey_(guidToTransferMap, v15, v7, v14);

      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v21 = objc_msgSend_guid(v7, v19, v20);
          v30 = 138412290;
          v31 = v21;
          _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "_addTransfer: %@", &v30, 0xCu);
        }
      }

      v24 = objc_msgSend_accountID(v7, v16, v17);
      if (v24)
      {
        objc_msgSend__addTransfer_toAccount_(self, v22, v7, v24);
      }

      if (!objc_msgSend_transferState(v7, v22, v23))
      {
        v27 = objc_msgSend_guid(v7, v25, v26);
        objc_msgSend__addPendingTransfer_(self, v28, v27);
      }
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)registerNewFileTransfer:(id)a3
{
  v4 = a3;
  objc_msgSend__addTransfer_(self, v5, v4);
  v9 = objc_msgSend_guid(v4, v6, v7);

  objc_msgSend_registerTransferWithDaemon_(self, v8, v9);
}

- (BOOL)doesLocalURLRequireArchiving:(id)a3 toHandle:(id)a4
{
  v5 = a4;
  v6 = a3;
  v9 = objc_msgSend_path(v6, v7, v8);
  v12 = objc_msgSend_defaultHFSFileManager(MEMORY[0x1E69A60D8], v10, v11);
  v24 = 0;
  v14 = objc_msgSend_attributesOfItemAtPath_error_(v12, v13, v9, &v24);

  LOBYTE(v12) = objc_msgSend__doesLocalURLRequireArchiving_(MEMORY[0x1E69A8078], v15, v6);
  hasCapability = objc_msgSend_hasCapability_(v5, v16, 0x80000000000);

  v19 = objc_msgSend_objectForKey_(v14, v18, *MEMORY[0x1E696A3D8]);
  isEqual = objc_msgSend_isEqual_(v19, v20, *MEMORY[0x1E696A3E0]);

  if (v12)
  {
    v22 = 1;
  }

  else
  {
    v22 = isEqual & (hasCapability ^ 1);
  }

  return v22;
}

- (id)createNewOutgoingTransferWithLocalFileURL:(id)a3
{
  v4 = a3;
  v5 = IMTemporaryFileTransferGUIDForNewOutgoingTransfer();
  objc_msgSend_createNewOutgoingFileTransferWithTransferGUID_localFileURL_(self, v6, v5, v4);

  return v5;
}

- (id)createNewOutgoingGroupPhotoTransferWithLocalFileURL:(id)a3
{
  v4 = a3;
  v5 = IMTemporaryFileTransferGUIDForNewOutgoingTransfer();
  v6 = IMFileTransferGUIDForAttachmentMessagePartAtMessageGUIDAndMessagePartIndex();
  objc_msgSend_createNewOutgoingFileTransferWithTransferGUID_localFileURL_(self, v7, v6, v4);

  return v6;
}

- (void)createNewOutgoingFileTransferWithTransferGUID:(id)a3 localFileURL:(id)a4
{
  v59 = *MEMORY[0x1E69E9840];
  v53 = a3;
  v6 = a4;
  v9 = objc_msgSend_path(v6, v7, v8);
  v12 = objc_msgSend_defaultHFSFileManager(MEMORY[0x1E69A60D8], v10, v11);
  v54 = 0;
  v14 = objc_msgSend_attributesOfItemAtPath_error_(v12, v13, v9, &v54);
  v52 = v54;

  v16 = objc_msgSend_objectForKey_(v14, v15, *MEMORY[0x1E696A3D8]);
  isEqual = objc_msgSend_isEqual_(v16, v17, *MEMORY[0x1E696A3E0]);

  v19 = objc_opt_class();
  v22 = objc_alloc(objc_msgSend_fileTransferClass(v19, v20, v21));
  v25 = objc_msgSend_lastPathComponent(v9, v23, v24);
  v28 = objc_msgSend_fileSize(v14, v26, v27);
  LODWORD(v12) = objc_msgSend_fileHFSTypeCode(v14, v29, v30);
  LODWORD(v16) = objc_msgSend_fileHFSCreatorCode(v14, v31, v32);
  BYTE2(v51) = 0;
  LOWORD(v51) = objc_msgSend_fileHFSFlags(v14, v33, v34);
  isIncoming = objc_msgSend__initWithGUID_filename_isDirectory_localURL_account_otherPerson_totalBytes_hfsType_hfsCreator_hfsFlags_isIncoming_(v22, v35, v53, v25, isEqual, v6, 0, 0, v28, __PAIR64__(v16, v12), v51);

  if (objc_msgSend_shouldIssueSandboxEstensionsForTransfers(self, v37, v38))
  {
    v40 = v9;
    objc_msgSend_UTF8String(v9, v41, v42);
    v43 = *MEMORY[0x1E69E9BA8];
    v45 = sandbox_extension_issue_file();
    if (v45)
    {
      v46 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v44, v45, 4);
      free(v45);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v48 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          v49 = *__error();
          *buf = 138412546;
          v56 = v9;
          v57 = 1024;
          v58 = v49;
          _os_log_impl(&dword_1A823F000, v48, OS_LOG_TYPE_INFO, "Failed to issue sandbox extension for path %@, errno %d", buf, 0x12u);
        }
      }

      v46 = 0;
    }

    objc_msgSend_setSandboxToken_(isIncoming, v47, v46);
  }

  objc_msgSend__addTransfer_(self, v39, isIncoming);

  v50 = *MEMORY[0x1E69E9840];
}

- (BOOL)registerGUID:(id)a3 forNewOutgoingTransferWithLocalURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = objc_msgSend_length(v6, v8, v9);
  if (v12)
  {
    v13 = objc_msgSend_path(v7, v10, v11);
    v16 = objc_msgSend_defaultHFSFileManager(MEMORY[0x1E69A60D8], v14, v15);
    v47 = 0;
    v18 = objc_msgSend_attributesOfItemAtPath_error_(v16, v17, v13, &v47);

    v20 = objc_msgSend_objectForKey_(v18, v19, *MEMORY[0x1E696A3D8]);
    isEqual = objc_msgSend_isEqual_(v20, v21, *MEMORY[0x1E696A3E0]);

    isIncoming = objc_msgSend_transferForGUID_(self, v23, v6);
    if (!isIncoming)
    {
      v26 = objc_opt_class();
      v46 = objc_alloc(objc_msgSend_fileTransferClass(v26, v27, v28));
      v31 = objc_msgSend_lastPathComponent(v13, v29, v30);
      v45 = objc_msgSend_fileSize(v18, v32, v33);
      v36 = objc_msgSend_fileHFSTypeCode(v18, v34, v35);
      v39 = objc_msgSend_fileHFSCreatorCode(v18, v37, v38);
      BYTE2(v44) = 0;
      LOWORD(v44) = objc_msgSend_fileHFSFlags(v18, v40, v41);
      isIncoming = objc_msgSend__initWithGUID_filename_isDirectory_localURL_account_otherPerson_totalBytes_hfsType_hfsCreator_hfsFlags_isIncoming_(v46, v42, v6, v31, isEqual, v7, 0, 0, v45, __PAIR64__(v39, v36), v44);
    }

    objc_msgSend__addTransfer_(self, v24, isIncoming);
  }

  return v12 != 0;
}

- (void)assignTransfer:(id)a3 toMessage:(id)a4 account:(id)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14 = objc_msgSend_transferForGUID_(self, v11, v8);
  if (v14)
  {
    v15 = objc_msgSend_uniqueID(v10, v12, v13);
    objc_msgSend__setAccount_otherPerson_(v14, v16, v15, 0);
    v19 = objc_msgSend_guid(v9, v17, v18);
    objc_msgSend_setMessageGUID_(v14, v20, v19);

    objc_msgSend__addTransfer_toAccount_(self, v21, v14, v15);
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v39 = 138412546;
        v40 = v8;
        v41 = 2112;
        v42 = v9;
        _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "Adding transfer guid: %@ to message: %@", &v39, 0x16u);
      }
    }

    v25 = objc_msgSend_sharedController(IMDaemonController, v22, v23);
    v28 = objc_msgSend_remoteDaemon(v25, v26, v27);
    v31 = objc_msgSend__dictionaryRepresentation(v14, v29, v30);
    objc_msgSend_fileTransfer_createdWithProperties_(v28, v32, v8, v31);

    v35 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v33, v34);
    objc_msgSend___mainThreadPostNotificationName_object_(v35, v36, @"__kIMFileTransferCreatedNotification", v14);
  }

  else if (IMOSLoggingEnabled())
  {
    v37 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v39 = 138412290;
      v40 = v8;
      _os_log_impl(&dword_1A823F000, v37, OS_LOG_TYPE_INFO, "Not assigning transfer guid: %@   transfer doesn't exist", &v39, 0xCu);
    }
  }

  v38 = *MEMORY[0x1E69E9840];
}

- (void)assignTransfer:(id)a3 toHandle:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v11 = objc_msgSend_transferForGUID_(self, v8, v6);
  if (v11)
  {
    v12 = objc_msgSend_account(v7, v9, v10);
    v15 = objc_msgSend_uniqueID(v12, v13, v14);

    v18 = objc_msgSend_localURL(v11, v16, v17);
    doesLocalURLRequireArchiving_toHandle = objc_msgSend_doesLocalURLRequireArchiving_toHandle_(self, v19, v18, v7);

    if (doesLocalURLRequireArchiving_toHandle)
    {
      objc_msgSend__setForceArchive_(v11, v21, 1);
    }

    v23 = objc_msgSend_ID(v7, v21, v22);
    objc_msgSend__setAccount_otherPerson_(v11, v24, v15, v23);

    objc_msgSend__addTransfer_toAccount_(self, v25, v11, v15);
    v28 = objc_msgSend_sharedController(IMDaemonController, v26, v27);
    v31 = objc_msgSend_remoteDaemon(v28, v29, v30);
    v34 = objc_msgSend__dictionaryRepresentation(v11, v32, v33);
    objc_msgSend_fileTransfer_createdWithProperties_(v31, v35, v6, v34);

    v38 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v36, v37);
    objc_msgSend___mainThreadPostNotificationName_object_(v38, v39, @"__kIMFileTransferCreatedNotification", v11);
  }

  else if (IMOSLoggingEnabled())
  {
    v40 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v42 = 138412546;
      v43 = v6;
      v44 = 2112;
      v45 = v7;
      _os_log_impl(&dword_1A823F000, v40, OS_LOG_TYPE_INFO, "Not assigning transfer guid: %@ to handle: %@  transfer doesn't exist", &v42, 0x16u);
    }
  }

  v41 = *MEMORY[0x1E69E9840];
}

- (void)registerTransferWithDaemon:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v8 = objc_msgSend_transferForGUID_(self, v5, v4);
  if (v8)
  {
    v9 = objc_msgSend_sharedController(IMDaemonController, v6, v7);
    v12 = objc_msgSend_remoteDaemon(v9, v10, v11);
    v15 = objc_msgSend__dictionaryRepresentation(v8, v13, v14);
    objc_msgSend_fileTransfer_createdWithProperties_(v12, v16, v4, v15);
  }

  else if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = v4;
      _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Could not register transfer with daemon %@", &v19, 0xCu);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)chatForTransfer:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v6 = objc_msgSend_messageGUID(v3, v4, v5);

  if (v6)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = objc_msgSend_sharedRegistry(IMChatRegistry, v7, v8, 0);
    v12 = objc_msgSend_cachedChats(v9, v10, v11);

    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v25, v29, 16);
    if (v16)
    {
      v17 = *v26;
      while (2)
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v25 + 1) + 8 * i);
          v20 = objc_msgSend_messageGUID(v3, v14, v15);
          v22 = objc_msgSend_messageForGUID_(v19, v21, v20);

          if (v22)
          {
            v16 = v19;

            goto LABEL_12;
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v25, v29, 16);
        if (v16)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v16 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)transferForGUID:(id)a3 includeRemoved:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v9 = objc_msgSend_objectForKey_(self->_guidToTransferMap, v7, v6);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = !v4;
  }

  if (!v10)
  {
    v9 = objc_msgSend_objectForKey_(self->_guidToRemovedTransferMap, v8, v6);
  }

  return v9;
}

- (void)downloadFileTransferWithLocalURL:(id)a3 completion:(id)a4
{
  v92 = *MEMORY[0x1E69E9840];
  v81 = a3;
  aBlock = a4;
  if (v81)
  {
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v8 = objc_msgSend_transfers(self, v6, v7);
    v11 = objc_msgSend_allKeys(v8, v9, v10);

    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v83, v87, 16);
    if (v14)
    {
      v15 = *v84;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v84 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = objc_msgSend_transferForGUID_(self, v13, *(*(&v83 + 1) + 8 * i));
          v20 = v17;
          if (v17)
          {
            v21 = objc_msgSend_localPath(v17, v18, v19);
            v22 = v21 == 0;

            if (!v22)
            {
              v25 = objc_msgSend_localPath(v20, v23, v24);
              v28 = objc_msgSend_absoluteString(v81, v26, v27);
              v30 = objc_msgSend_containsString_(v25, v29, v28);

              if (((aBlock != 0) & v30) == 1)
              {
                aBlock[2](aBlock, 1, 0);
              }
            }
          }
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v83, v87, 16);
      }

      while (v14);
    }

    if (aBlock)
    {
      if (!self->_disconnectionListenerSetUp)
      {
        v33 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v31, v32);
        objc_msgSend_addObserver_selector_name_object_(v33, v34, self, sel__daemonDisconnected_, @"__kIMDaemonDidDisconnectNotification", 0);

        self->_disconnectionListenerSetUp = 1;
      }

      redownloadlocalFilesWithURLCompletionHandlers = self->_redownloadlocalFilesWithURLCompletionHandlers;
      if (!redownloadlocalFilesWithURLCompletionHandlers)
      {
        v36 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v37 = self->_redownloadlocalFilesWithURLCompletionHandlers;
        self->_redownloadlocalFilesWithURLCompletionHandlers = v36;

        redownloadlocalFilesWithURLCompletionHandlers = self->_redownloadlocalFilesWithURLCompletionHandlers;
      }

      v38 = objc_msgSend_absoluteString(v81, v31, v32);
      v40 = objc_msgSend_objectForKeyedSubscript_(redownloadlocalFilesWithURLCompletionHandlers, v39, v38);
      v41 = v40 == 0;

      if (v41)
      {
        v44 = objc_msgSend_array(MEMORY[0x1E695DF70], v42, v43);
        v45 = self->_redownloadlocalFilesWithURLCompletionHandlers;
        v48 = objc_msgSend_absoluteString(v81, v46, v47);
        objc_msgSend_setObject_forKeyedSubscript_(v45, v49, v44, v48);
      }

      v50 = self->_redownloadlocalFilesWithURLCompletionHandlers;
      v51 = objc_msgSend_absoluteString(v81, v42, v43);
      v53 = objc_msgSend_objectForKeyedSubscript_(v50, v52, v51);
      v54 = _Block_copy(aBlock);
      objc_msgSend_addObject_(v53, v55, v54);

      objc_msgSend__registerDaemonListenerIfNecessary(self, v56, v57);
      v60 = objc_msgSend_sharedController(IMDaemonController, v58, v59);
      v63 = objc_msgSend_remoteDaemon(v60, v61, v62);
      objc_msgSend_downloadFileTransferWithLocalURL_(v63, v64, v81);

      goto LABEL_27;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v67 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v91 = "[IMFileTransferCenter downloadFileTransferWithLocalURL:completion:]";
        _os_log_impl(&dword_1A823F000, v67, OS_LOG_TYPE_INFO, "%s invalid URL passed", buf, 0xCu);
      }
    }

    if (aBlock)
    {
      v68 = MEMORY[0x1E696ABC0];
      v88[0] = *MEMORY[0x1E696A578];
      v69 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v65, v66);
      v71 = objc_msgSend_localizedStringForKey_value_table_(v69, v70, @"File transfer local file url retrieval operation was unsuccessful.", &stru_1F1B76F98, 0);
      v89[0] = v71;
      v88[1] = *MEMORY[0x1E696A588];
      v74 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v72, v73);
      v76 = objc_msgSend_localizedStringForKey_value_table_(v74, v75, @"The given URL was empty.", &stru_1F1B76F98, 0);
      v89[1] = v76;
      v78 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v77, v89, v88, 2);
      v60 = objc_msgSend_errorWithDomain_code_userInfo_(v68, v79, *MEMORY[0x1E69A7008], 24, v78);

      (aBlock)[2](aBlock, 0, v60);
LABEL_27:
    }
  }

  v80 = *MEMORY[0x1E69E9840];
}

- (void)acceptTransferAndUpdateReasonForTapped:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend_isActiveTransfer_(self, v5, v4))
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v22 = 138412290;
        v23 = v4;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Asked to accept transfer %@ which is already in progress. Returning early.", &v22, 0xCu);
      }
    }
  }

  else
  {
    v8 = objc_msgSend_transferForGUID_(self, v6, v4);
    objc_msgSend_setUpdateReason_(v8, v9, 3);
    v12 = objc_msgSend_sharedController(IMDaemonController, v10, v11);
    v15 = objc_msgSend_remoteDaemon(v12, v13, v14);
    v18 = objc_msgSend__dictionaryRepresentation(v8, v16, v17);
    objc_msgSend_fileTransfer_updatedWithProperties_(v15, v19, v4, v18);

    objc_msgSend_acceptTransfer_withPath_autoRename_overwrite_(self, v20, v4, 0, 1, 1);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)stopTransfer:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v6 = objc_msgSend_transferForGUID_(self, v5, v4);
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v32 = 138412290;
      v33 = v4;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "stopping transfer to guid %@", &v32, 0xCu);
    }
  }

  if (v6 && (objc_msgSend_isFinished(v6, v7, v8) & 1) == 0)
  {
    objc_msgSend__removeActiveTransfer_(self, v10, v4);
    objc_msgSend__removePendingTransfer_(self, v11, v4);
    if (objc_msgSend_transferState(v6, v12, v13))
    {
      v16 = 10;
    }

    else if (objc_msgSend_isIncoming(v6, v14, v15))
    {
      v16 = 12;
    }

    else
    {
      v16 = 10;
    }

    v17 = objc_msgSend_finalTransferStateForSuccess_(v6, v14, 0);
    objc_msgSend__setTransferState_(v6, v18, v17);
    objc_msgSend__setError_(v6, v19, v16);
    v22 = objc_msgSend_sharedController(IMDaemonController, v20, v21);
    v25 = objc_msgSend_remoteDaemon(v22, v23, v24);
    objc_msgSend_fileTransferStopped_(v25, v26, v4);

    v29 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v27, v28);
    objc_msgSend___mainThreadPostNotificationName_object_(v29, v30, @"__kIMFileTransferUpdatedNotification", v6);
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)removeTransfer:(id)a3
{
  v34 = a3;
  objc_msgSend__removeActiveTransfer_(self, v4, v34);
  objc_msgSend__removePendingTransfer_(self, v5, v34);
  v9 = objc_msgSend_transferForGUID_(self, v6, v34);
  if (v9)
  {
    v10 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v7, v8);
    objc_msgSend___mainThreadPostNotificationName_object_(v10, v11, @"__kIMFileTransferRemovedNotification", v9);

    guidToRemovedTransferMap = self->_guidToRemovedTransferMap;
    if (!guidToRemovedTransferMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v15 = self->_guidToRemovedTransferMap;
      self->_guidToRemovedTransferMap = Mutable;

      guidToRemovedTransferMap = self->_guidToRemovedTransferMap;
    }

    objc_msgSend_setObject_forKey_(guidToRemovedTransferMap, v12, v9, v34);
    accountIDToTransferGUIDsMap = self->_accountIDToTransferGUIDsMap;
    v19 = objc_msgSend_accountID(v9, v17, v18);
    v21 = objc_msgSend_objectForKey_(accountIDToTransferGUIDsMap, v20, v19);
    objc_msgSend_removeObject_(v21, v22, v34);

    objc_msgSend_removeObjectForKey_(self->_guidToTransferMap, v23, v34);
    if (!objc_msgSend_count(self->_guidToTransferMap, v24, v25))
    {
      guidToTransferMap = self->_guidToTransferMap;
      self->_guidToTransferMap = 0;
    }

    v29 = objc_msgSend_sharedController(IMDaemonController, v26, v27);
    v32 = objc_msgSend_remoteDaemon(v29, v30, v31);
    objc_msgSend_fileTransferRemoved_(v32, v33, v34);
  }
}

- (void)deleteTransfer:(id)a3
{
  v41 = a3;
  v5 = objc_msgSend_transferForGUID_(self, v4, v41);
  objc_msgSend__removeActiveTransfer_(self, v6, v41);
  objc_msgSend__removePendingTransfer_(self, v7, v41);
  if (v5)
  {
    v10 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v8, v9);
    objc_msgSend___mainThreadPostNotificationName_object_(v10, v11, @"__kIMFileTransferRemovedNotification", v5);

    guidToRemovedTransferMap = self->_guidToRemovedTransferMap;
    if (!guidToRemovedTransferMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v15 = self->_guidToRemovedTransferMap;
      self->_guidToRemovedTransferMap = Mutable;

      guidToRemovedTransferMap = self->_guidToRemovedTransferMap;
    }

    objc_msgSend_setObject_forKey_(guidToRemovedTransferMap, v12, v5, v41);
    accountIDToTransferGUIDsMap = self->_accountIDToTransferGUIDsMap;
    v19 = objc_msgSend_accountID(v5, v17, v18);
    v21 = objc_msgSend_objectForKey_(accountIDToTransferGUIDsMap, v20, v19);
    objc_msgSend_removeObject_(v21, v22, v41);

    objc_msgSend_removeObjectForKey_(self->_guidToTransferMap, v23, v41);
    if (!objc_msgSend_count(self->_guidToTransferMap, v24, v25))
    {
      guidToTransferMap = self->_guidToTransferMap;
      self->_guidToTransferMap = 0;
    }

    v29 = objc_msgSend_sharedController(IMDaemonController, v26, v27);
    v32 = objc_msgSend_remoteDaemon(v29, v30, v31);
    objc_msgSend_fileTransferRemoved_(v32, v33, v41);

    v36 = objc_msgSend_sharedController(IMDaemonController, v34, v35);
    v39 = objc_msgSend_remoteDaemon(v36, v37, v38);
    objc_msgSend_deleteFileTransferWithGUID_(v39, v40, v41);
  }
}

- (void)retargetTransfer:(id)a3 toPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v26 = objc_msgSend_transferForGUID_(self, v8, v7);
  v10 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v9, v6);

  objc_msgSend__setLocalURL_(v26, v11, v10);
  v14 = objc_msgSend_sharedController(IMDaemonController, v12, v13);
  v17 = objc_msgSend_remoteDaemon(v14, v15, v16);
  v20 = objc_msgSend__dictionaryRepresentation(v26, v18, v19);
  objc_msgSend_fileTransfer_updatedWithProperties_(v17, v21, v7, v20);

  v24 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v22, v23);
  objc_msgSend___mainThreadPostNotificationName_object_(v24, v25, @"__kIMFileTransferUpdatedNotification", v26);
}

- (id)transfersForAccount:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_uniqueID(a3, a2, a3);
  v6 = objc_msgSend_objectForKey_(self->_accountIDToTransferGUIDsMap, v5, v4);
  v7 = MEMORY[0x1E695DF70];
  v10 = objc_msgSend_count(v6, v8, v9);
  v12 = objc_msgSend_arrayWithCapacity_(v7, v11, v10);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = v6;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v24, v28, 16);
  if (v15)
  {
    v17 = v15;
    v18 = *v25;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v13);
        }

        v20 = objc_msgSend_transferForGUID_(self, v16, *(*(&v24 + 1) + 8 * i), v24);
        objc_msgSend_addObject_(v12, v21, v20);
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v24, v28, 16);
    }

    while (v17);
  }

  v22 = *MEMORY[0x1E69E9840];

  return v12;
}

- (NSArray)orderedTransfers
{
  v3 = objc_alloc(MEMORY[0x1E696AEB0]);
  v5 = objc_msgSend_initWithKey_ascending_(v3, v4, @"createdDate", 1);
  v6 = objc_alloc(MEMORY[0x1E696AEB0]);
  v8 = objc_msgSend_initWithKey_ascending_(v6, v7, @"filename", 1);
  v9 = objc_alloc(MEMORY[0x1E695DEC8]);
  v11 = objc_msgSend_initWithObjects_(v9, v10, v5, v8, 0);
  v14 = objc_msgSend_allValues(self->_guidToTransferMap, v12, v13);
  v16 = objc_msgSend_sortedArrayUsingDescriptors_(v14, v15, v11);

  return v16;
}

- (NSArray)orderedTransfersGUIDs
{
  v3 = objc_alloc(MEMORY[0x1E696AEB0]);
  v5 = objc_msgSend_initWithKey_ascending_(v3, v4, @"createdDate", 1);
  v6 = objc_alloc(MEMORY[0x1E696AEB0]);
  v8 = objc_msgSend_initWithKey_ascending_(v6, v7, @"filename", 1);
  v9 = objc_alloc(MEMORY[0x1E695DEC8]);
  v11 = objc_msgSend_initWithObjects_(v9, v10, v5, v8, 0);
  v14 = objc_msgSend_allValues(self->_guidToTransferMap, v12, v13);
  v16 = objc_msgSend_sortedArrayUsingDescriptors_(v14, v15, v11);

  return v16;
}

- (void)clearFinishedTransfers
{
  v47 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_count(self->_guidToTransferMap, a2, v2))
  {
    v4 = objc_alloc(MEMORY[0x1E695DF70]);
    v7 = objc_msgSend_allValues(self->_guidToTransferMap, v5, v6);
    v9 = objc_msgSend_initWithArray_(v4, v8, v7);

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v10 = v9;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v42, v46, 16);
    if (v12)
    {
      v15 = v12;
      v16 = *v43;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v43 != v16)
          {
            objc_enumerationMutation(v10);
          }

          v18 = *(*(&v42 + 1) + 8 * i);
          if (objc_msgSend_isFinished(v18, v13, v14, v42))
          {
            v19 = objc_msgSend_guid(v18, v13, v14);
            objc_msgSend__removeActiveTransfer_(self, v20, v19);
            objc_msgSend__removePendingTransfer_(self, v21, v19);
            v24 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v22, v23);
            objc_msgSend___mainThreadPostNotificationName_object_(v24, v25, @"__kIMFileTransferRemovedNotification", v18);

            guidToRemovedTransferMap = self->_guidToRemovedTransferMap;
            if (!guidToRemovedTransferMap)
            {
              Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              v29 = self->_guidToRemovedTransferMap;
              self->_guidToRemovedTransferMap = Mutable;

              guidToRemovedTransferMap = self->_guidToRemovedTransferMap;
            }

            objc_msgSend_setObject_forKey_(guidToRemovedTransferMap, v26, v18, v19);
            accountIDToTransferGUIDsMap = self->_accountIDToTransferGUIDsMap;
            v33 = objc_msgSend_accountID(v18, v31, v32);
            v35 = objc_msgSend_objectForKey_(accountIDToTransferGUIDsMap, v34, v33);
            objc_msgSend_removeObject_(v35, v36, v19);

            objc_msgSend_removeObjectForKey_(self->_guidToTransferMap, v37, v19);
            if (!objc_msgSend_count(self->_guidToTransferMap, v38, v39))
            {
              guidToTransferMap = self->_guidToTransferMap;
              self->_guidToTransferMap = 0;
            }
          }
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v42, v46, 16);
      }

      while (v15);
    }
  }

  v41 = *MEMORY[0x1E69E9840];
}

- (BOOL)isFileTransfer:(id)a3 preauthorizedWithDictionary:(id)a4
{
  v5 = a3;
  v6 = a4;
  v8 = objc_msgSend_objectForKey_(v6, v7, @"sPreauthorizedTransferDictionaryOtherPersonKey");
  v10 = objc_msgSend_objectForKey_(v6, v9, @"sPreauthorizedTransferDictionaryAccountKey");
  v12 = objc_msgSend_objectForKey_(v6, v11, @"sPreauthorizedTransferDictionaryFilenameKey");

  if (objc_msgSend_transferState(v5, v13, v14))
  {
    isEqualToString = 0;
  }

  else
  {
    v18 = objc_msgSend_otherPerson(v5, v15, v16);
    if (objc_msgSend_isEqualToString_(v18, v19, v8))
    {
      v22 = objc_msgSend_accountID(v5, v20, v21);
      if (objc_msgSend_isEqualToString_(v22, v23, v10))
      {
        v26 = objc_msgSend_filename(v5, v24, v25);
        isEqualToString = objc_msgSend_isEqualToString_(v26, v27, v12);
      }

      else
      {
        isEqualToString = 0;
      }
    }

    else
    {
      isEqualToString = 0;
    }
  }

  return isEqualToString;
}

- (void)preauthorizeFileTransferFromOtherPerson:(id)a3 account:(id)a4 filename:(id)a5 saveToPath:(id)a6
{
  v44 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10 && v11 && v12)
  {
    if (!self->_preauthorizedInfos)
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
      preauthorizedInfos = self->_preauthorizedInfos;
      self->_preauthorizedInfos = v14;
    }

    v16 = objc_alloc(MEMORY[0x1E695DF20]);
    v38 = v13;
    v18 = objc_msgSend_initWithObjectsAndKeys_(v16, v17, v10, @"sPreauthorizedTransferDictionaryOtherPersonKey", v11, @"sPreauthorizedTransferDictionaryAccountKey", v12, @"sPreauthorizedTransferDictionaryFilenameKey", v13, @"sPreauthorizedTransferDictionarySaveToPathKey", 0);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v21 = objc_msgSend_allValues(self->_guidToTransferMap, v19, v20);
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v39, v43, 16);
    if (v23)
    {
      v25 = v23;
      v26 = *v40;
      while (2)
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v40 != v26)
          {
            objc_enumerationMutation(v21);
          }

          v28 = *(*(&v39 + 1) + 8 * i);
          if (objc_msgSend_isFileTransfer_preauthorizedWithDictionary_(self, v24, v28, v18))
          {
            v31 = objc_msgSend_guid(v28, v24, v29);
            v13 = v38;
            objc_msgSend_acceptTransfer_withPath_autoRename_overwrite_(self, v32, v31, v38, 1, 0);
            preauthorizedGUIDs = self->_preauthorizedGUIDs;
            if (!preauthorizedGUIDs)
            {
              v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v36 = self->_preauthorizedGUIDs;
              self->_preauthorizedGUIDs = v35;

              preauthorizedGUIDs = self->_preauthorizedGUIDs;
            }

            objc_msgSend_addObject_(preauthorizedGUIDs, v33, v31);

            goto LABEL_18;
          }
        }

        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v39, v43, 16);
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    objc_msgSend_addObject_(self->_preauthorizedInfos, v30, v18);
    v13 = v38;
LABEL_18:
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (void)acceptFileTransferIfPreauthorzed:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  preauthorizedInfos = self->_preauthorizedInfos;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(preauthorizedInfos, v6, &v25, v29, 16);
  if (v8)
  {
    v9 = *v26;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v26 != v9)
      {
        objc_enumerationMutation(preauthorizedInfos);
      }

      v11 = *(*(&v25 + 1) + 8 * v10);
      if (objc_msgSend_isFileTransfer_preauthorizedWithDictionary_(self, v7, v4, v11, v25))
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(preauthorizedInfos, v7, &v25, v29, 16);
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_15;
      }
    }

    v12 = objc_msgSend_objectForKey_(v11, v7, @"sPreauthorizedTransferDictionarySaveToPathKey");
    v15 = objc_msgSend_guid(v4, v13, v14);
    objc_msgSend_acceptTransfer_withPath_autoRename_overwrite_(self, v16, v15, v12, 1, 0);
    v8 = v11;
    preauthorizedGUIDs = self->_preauthorizedGUIDs;
    if (!preauthorizedGUIDs)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v20 = self->_preauthorizedGUIDs;
      self->_preauthorizedGUIDs = v19;

      preauthorizedGUIDs = self->_preauthorizedGUIDs;
    }

    objc_msgSend_addObject_(preauthorizedGUIDs, v17, v15);

    if (v8)
    {
      objc_msgSend_removeObject_(self->_preauthorizedInfos, v21, v8);
      if (!objc_msgSend_count(self->_preauthorizedInfos, v22, v23))
      {
        preauthorizedInfos = self->_preauthorizedInfos;
        self->_preauthorizedInfos = 0;
        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_handleAllFileTransfers:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_msgSend__clearTransfers(self, v5, v6);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = objc_msgSend_allKeys(v4, v7, v8, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v28, v32, 16);
  if (v11)
  {
    v13 = v11;
    v14 = *v29;
    do
    {
      v15 = 0;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = objc_msgSend_objectForKey_(v4, v12, *(*(&v28 + 1) + 8 * v15));
        v17 = objc_opt_class();
        v20 = objc_alloc_init(objc_msgSend_fileTransferClass(v17, v18, v19));
        objc_msgSend__updateWithDictionaryRepresentation_(v20, v21, v16);
        objc_msgSend__addTransfer_(self, v22, v20);

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v28, v32, 16);
    }

    while (v13);
  }

  v25 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v23, v24);
  objc_msgSend___mainThreadPostNotificationName_object_(v25, v26, @"__kIMFileTransferRefreshAllNotification", v4);

  v27 = *MEMORY[0x1E69E9840];
}

- (void)_handleSerializedFileTransfers:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v18, v22, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        v13 = objc_msgSend__dictionaryRepresentationGUIDKey(MEMORY[0x1E69A8078], v7, v8);
        v15 = objc_msgSend_objectForKeyedSubscript_(v12, v14, v13);

        objc_msgSend__handleFileTransfer_createdWithProperties_(self, v16, v15, v12);
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v18, v22, 16);
    }

    while (v9);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_handleFileTransfer:(id)a3 createdWithProperties:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_transferForGUID_(self, v8, v6);
  if (v10)
  {
    objc_msgSend__handleFileTransfer_updatedWithProperties_(self, v9, v6, v7);
  }

  else
  {
    v11 = objc_opt_class();
    v10 = objc_alloc_init(objc_msgSend_fileTransferClass(v11, v12, v13));
    v15 = objc_msgSend__updateWithDictionaryRepresentation_(v10, v14, v7);
    objc_msgSend__addTransfer_(self, v16, v10);
    v17 = IMOSLoggingEnabled();
    if (v15)
    {
      if (v17)
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v22 = objc_msgSend_objectForKeyedSubscript_(v7, v21, *MEMORY[0x1E69A7010]);
          v27 = 138412546;
          v28 = v10;
          v29 = 2112;
          v30 = v22;
          _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Posting transfer created: %@  transferName: %@", &v27, 0x16u);
        }
      }

      v23 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v18, v19);
      objc_msgSend___mainThreadPostNotificationName_object_(v23, v24, @"__kIMFileTransferCreatedNotification", v10);
    }

    else if (v17)
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v27 = 138412290;
        v28 = v10;
        _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Nothing changed for create, not posting for: %@", &v27, 0xCu);
      }
    }

    objc_msgSend_acceptFileTransferIfPreauthorzed_(self, v18, v10);
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)_handleFileTransfers:(id)a3 createdWithLocalPaths:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_count(v6, v8, v9);
  if (v10 == objc_msgSend_count(v7, v11, v12))
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1A82C7360;
    v16[3] = &unk_1E7811580;
    v17 = v7;
    v18 = self;
    objc_msgSend_enumerateObjectsUsingBlock_(v6, v13, v16);
  }

  else if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "IMFileTransferCenter: number of new file transfers %@ does not match number of local urls %@.", buf, 0x16u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_handleFileTransfer:(id)a3 updatedWithProperties:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v9 = objc_msgSend_transferForGUID_(self, v8, v6);
  v12 = v9;
  if (v9)
  {
    v13 = objc_msgSend_transferState(v9, v10, v11);
    isFinished = objc_msgSend_isFinished(v12, v14, v15);
    v18 = objc_msgSend__updateWithDictionaryRepresentation_(v12, v17, v7);
    if (objc_msgSend_isFromMomentShare(v12, v19, v20) && ((objc_msgSend_transferState(v12, v21, v22) == 5) & isFinished) == 1)
    {
      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v45 = 138412290;
          v46 = v12;
          _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "Overriding changed for CMM transfer %@", &v45, 0xCu);
        }
      }

      v18 = 1;
    }

    v26 = objc_msgSend_transferState(v12, v21, v22);
    if ((isFinished & 1) != 0 || !objc_msgSend_isFinished(v12, v24, v25))
    {
      v28 = 0;
      if (v13 <= 1 && v26 >= 2)
      {
        objc_msgSend__addActiveTransfer_(self, v24, v6);
        v28 = 0;
      }
    }

    else
    {
      objc_msgSend__removeActiveTransfer_(self, v24, v6);
      objc_msgSend__removePendingTransfer_(self, v27, v6);
      v28 = 1;
    }

    if (objc_msgSend_isActiveTransfer_(self, v24, v6) && IMFileTransferStateIsNotActive())
    {
      if (IMOSLoggingEnabled())
      {
        v30 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = IMStringFromTransferState();
          v45 = 138412546;
          v46 = v6;
          v47 = 2112;
          v48 = v31;
          _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_INFO, "Removing %@ from active transfers, as newState is %@", &v45, 0x16u);
        }
      }

      objc_msgSend__removeActiveTransfer_(self, v29, v6);
    }

    v32 = IMOSLoggingEnabled();
    if (v18)
    {
      if (v32)
      {
        v35 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v45 = 138412290;
          v46 = v6;
          _os_log_impl(&dword_1A823F000, v35, OS_LOG_TYPE_INFO, "Posting transfer, guid: %@", &v45, 0xCu);
        }
      }

      v36 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v33, v34);
      objc_msgSend___mainThreadPostNotificationName_object_(v36, v37, @"__kIMFileTransferUpdatedNotification", v12);
    }

    else if (v32)
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v45 = 138412290;
        v46 = v6;
        _os_log_impl(&dword_1A823F000, v38, OS_LOG_TYPE_INFO, "Nothing changed for update, not posting, guid: %@", &v45, 0xCu);
      }
    }

    if (v28)
    {
      if (IMOSLoggingEnabled())
      {
        v41 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v45 = 138412290;
          v46 = v6;
          _os_log_impl(&dword_1A823F000, v41, OS_LOG_TYPE_INFO, "Posting transfer, guid: %@  finished", &v45, 0xCu);
        }
      }

      v42 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v39, v40);
      objc_msgSend___mainThreadPostNotificationName_object_(v42, v43, @"__kIMFileTransferFinishedNotification", v12);
    }
  }

  else
  {
    objc_msgSend__handleFileTransfer_createdWithProperties_(self, v10, v6, v7);
  }

  v44 = *MEMORY[0x1E69E9840];
}

- (void)_handleFileTransfer:(id)a3 rejectedWithProperties:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_transferForGUID_(self, v8, v6);
  if (!v10)
  {
    v11 = objc_opt_class();
    v10 = objc_alloc_init(objc_msgSend_fileTransferClass(v11, v12, v13));
  }

  objc_msgSend__updateWithDictionaryRepresentation_(v10, v9, v7);
  if (objc_msgSend_error(v10, v14, v15) == -1)
  {
    objc_msgSend__setError_(v10, v16, 28);
    objc_msgSend__setErrorDescription_(v10, v17, @"File transfer was rejected.");
  }

  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v23 = MEMORY[0x1E696AD98];
      v24 = objc_msgSend_error(v10, v21, v22);
      v26 = objc_msgSend_numberWithInteger_(v23, v25, v24);
      v29 = objc_msgSend_errorDescription(v10, v27, v28);
      v33 = 138412802;
      v34 = v6;
      v35 = 2112;
      v36 = v26;
      v37 = 2112;
      v38 = v29;
      _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Transfer was rejected, guid: %@, error: %@, error description: %@", &v33, 0x20u);
    }
  }

  v30 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v18, v19);
  objc_msgSend___mainThreadPostNotificationName_object_(v30, v31, @"__kIMFileTransferRejectedNotification", v10);

  v32 = *MEMORY[0x1E69E9840];
}

- (void)_handleFileTransfer:(id)a3 updatedWithCurrentBytes:(unint64_t)a4 totalBytes:(unint64_t)a5 averageTransferRate:(unint64_t)a6
{
  v56 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v12 = objc_msgSend_transferForGUID_(self, v11, v10);
  if (objc_msgSend_currentBytes(v12, v13, v14) == a4 && objc_msgSend_totalBytes(v12, v15, v16) == a5 && objc_msgSend_averageTransferRate(v12, v17, v18) == a6)
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v22 = MEMORY[0x1E696AD98];
        v23 = objc_msgSend_transferState(v12, v20, v21);
        v25 = objc_msgSend_numberWithInteger_(v22, v24, v23);
        v27 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v26, a4);
        v29 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v28, a5);
        v48 = 138413058;
        v49 = v10;
        v50 = 2112;
        v51 = v25;
        v52 = 2112;
        v53 = v27;
        v54 = 2112;
        v55 = v29;
        _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Ignoring update for transfer guid: %@ state: %@ currentBytes: %@ totalBytes: %@ (values have not changed)", &v48, 0x2Au);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v34 = MEMORY[0x1E696AD98];
        v35 = objc_msgSend_transferState(v12, v32, v33);
        v37 = objc_msgSend_numberWithInteger_(v34, v36, v35);
        v39 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v38, a4);
        v41 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v40, a5);
        v48 = 138413058;
        v49 = v10;
        v50 = 2112;
        v51 = v37;
        v52 = 2112;
        v53 = v39;
        v54 = 2112;
        v55 = v41;
        _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "Updating transfer guid: %@ state: %@ currentBytes: %@ totalBytes: %@", &v48, 0x2Au);
      }
    }

    objc_msgSend__setCurrentBytes_totalBytes_(v12, v30, a4, a5);
    objc_msgSend__setAveragedTransferRate_lastAveragedInterval_lastAveragedBytes_(v12, v42, a6, 0, 0.0);
    v45 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v43, v44);
    objc_msgSend___mainThreadPostNotificationName_object_(v45, v46, @"__kIMFileTransferUpdatedNotification", v12);
  }

  v47 = *MEMORY[0x1E69E9840];
}

- (void)_handleFileTransferFinishedRemoteIntentDownload:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v6 = objc_msgSend_transferForGUID_(self, v5, v4);
  v7 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v7)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = v4;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Finished remote intent download for guid: %@. Posting IMFileTransferUpdatedNotification.", &v15, 0xCu);
      }
    }

    v11 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v8, v9);
    objc_msgSend___mainThreadPostNotificationName_object_(v11, v12, @"__kIMFileTransferUpdatedNotification", v6);
  }

  else if (v7)
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v4;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Ignoring finished remote intent download notification for transfer guid: %@", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_handleFileTransfer:(id)a3 highQualityDownloadSucceededWithPath:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "High quality download for transfer %@ succeeded at path %@", buf, 0x16u);
    }
  }

  v10 = objc_msgSend_objectForKeyedSubscript_(self->_fetchHighQualityVariantCompletionHandlers, v8, v6);
  objc_msgSend_setObject_forKeyedSubscript_(self->_fetchHighQualityVariantCompletionHandlers, v11, 0, v6);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1A82C809C;
  v15[3] = &unk_1E78115A8;
  v16 = v7;
  v12 = v7;
  objc_msgSend_enumerateObjectsUsingBlock_(v10, v13, v15);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_handleFileTransferHighQualityDownloadFailed:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "High quality download for transfer %@ failed", &v11, 0xCu);
    }
  }

  v7 = objc_msgSend_objectForKeyedSubscript_(self->_fetchHighQualityVariantCompletionHandlers, v5, v4);
  objc_msgSend_setObject_forKeyedSubscript_(self->_fetchHighQualityVariantCompletionHandlers, v8, 0, v4);
  objc_msgSend_enumerateObjectsUsingBlock_(v7, v9, &unk_1F1B6E340);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_handleFileTransfer:(id)a3 explicitDownloadSucceededWithPath:(id)a4 livePhotoBundlePath:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v34 = v8;
      v35 = 2112;
      v36 = v9;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Download for transfer %@ succeeded at path %@", buf, 0x16u);
    }
  }

  v13 = objc_msgSend_objectForKeyedSubscript_(self->_localFileURLRetrievalCompletionHandlers, v11, v8);
  objc_msgSend_setObject_forKeyedSubscript_(self->_localFileURLRetrievalCompletionHandlers, v14, 0, v8);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = sub_1A82C8454;
  v30[3] = &unk_1E78115F0;
  v15 = v9;
  v31 = v15;
  v16 = v10;
  v32 = v16;
  objc_msgSend_enumerateObjectsUsingBlock_(v13, v17, v30);
  v19 = objc_msgSend_objectForKeyedSubscript_(self->_localFileURLRetrievalWithGuidCompletionHandlers, v18, v8);
  objc_msgSend_setObject_forKeyedSubscript_(self->_localFileURLRetrievalWithGuidCompletionHandlers, v20, 0, v8);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_1A82C8474;
  v26[3] = &unk_1E7811618;
  v27 = v8;
  v28 = v15;
  v29 = v16;
  v21 = v16;
  v22 = v15;
  v23 = v8;
  objc_msgSend_enumerateObjectsUsingBlock_(v19, v24, v26);

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_handleFileTransferExplicitDownloadFailed:(id)a3 suggestedRetryGUID:(id)a4 error:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v37 = v8;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Download for transfer %@ failed", buf, 0xCu);
    }
  }

  if (!v8)
  {
    v14 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8168], v11, v12);
    objc_msgSend_forceAutoBugCaptureWithSubType_errorPayload_(v14, v15, @"FileTransferNilGUID", v10);
  }

  v16 = objc_msgSend_objectForKeyedSubscript_(self->_localFileURLRetrievalCompletionHandlers, v11, v8);
  objc_msgSend_setObject_forKeyedSubscript_(self->_localFileURLRetrievalCompletionHandlers, v17, 0, v8);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = sub_1A82C872C;
  v33[3] = &unk_1E78115F0;
  v18 = v9;
  v34 = v18;
  v19 = v10;
  v35 = v19;
  objc_msgSend_enumerateObjectsUsingBlock_(v16, v20, v33);
  v22 = objc_msgSend_objectForKeyedSubscript_(self->_localFileURLRetrievalWithGuidCompletionHandlers, v21, v8);
  objc_msgSend_setObject_forKeyedSubscript_(self->_localFileURLRetrievalWithGuidCompletionHandlers, v23, 0, v8);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = sub_1A82C874C;
  v29[3] = &unk_1E7811618;
  v30 = v8;
  v31 = v18;
  v32 = v19;
  v24 = v19;
  v25 = v18;
  v26 = v8;
  objc_msgSend_enumerateObjectsUsingBlock_(v22, v27, v29);

  v28 = *MEMORY[0x1E69E9840];
}

- (void)_handleFileTransferDownloadSucceededWithLocalURL:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = v4;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Re-Download for transfer at URL %@ succeeded", &v19, 0xCu);
    }
  }

  redownloadlocalFilesWithURLCompletionHandlers = self->_redownloadlocalFilesWithURLCompletionHandlers;
  v9 = objc_msgSend_absoluteString(v4, v5, v6);
  v11 = objc_msgSend_objectForKeyedSubscript_(redownloadlocalFilesWithURLCompletionHandlers, v10, v9);

  localFileURLRetrievalCompletionHandlers = self->_localFileURLRetrievalCompletionHandlers;
  v15 = objc_msgSend_absoluteString(v4, v13, v14);
  objc_msgSend_setObject_forKeyedSubscript_(localFileURLRetrievalCompletionHandlers, v16, 0, v15);

  objc_msgSend_enumerateObjectsUsingBlock_(v11, v17, &unk_1F1B6E360);
  v18 = *MEMORY[0x1E69E9840];
}

- (void)_handleFileTransferDownloadFailedWithLocalURL:(id)a3 error:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = objc_msgSend_description(v7, v11, v12);
      *buf = 138412546;
      v29 = v6;
      v30 = 2112;
      v31 = v13;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Re-Download for transfer at URL %@ failed %@", buf, 0x16u);
    }
  }

  redownloadlocalFilesWithURLCompletionHandlers = self->_redownloadlocalFilesWithURLCompletionHandlers;
  v15 = objc_msgSend_absoluteString(v6, v8, v9);
  v17 = objc_msgSend_objectForKeyedSubscript_(redownloadlocalFilesWithURLCompletionHandlers, v16, v15);

  localFileURLRetrievalCompletionHandlers = self->_localFileURLRetrievalCompletionHandlers;
  v21 = objc_msgSend_absoluteString(v6, v19, v20);
  objc_msgSend_setObject_forKeyedSubscript_(localFileURLRetrievalCompletionHandlers, v22, 0, v21);

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_1A82C8AA8;
  v26[3] = &unk_1E7811660;
  v27 = v7;
  v23 = v7;
  objc_msgSend_enumerateObjectsUsingBlock_(v17, v24, v26);

  v25 = *MEMORY[0x1E69E9840];
}

- (void)setCommSafetySensitiveForTransfer:(id)a3 value:(int64_t)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v9, a4);
      v28 = 138412546;
      v29 = v10;
      v30 = 2112;
      v31 = v6;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Setting Communication Safety Sensitivity to %@ for transfer %@", &v28, 0x16u);
    }
  }

  v11 = objc_msgSend_transferForGUID_(self, v7, v6);
  objc_msgSend_setCommSafetySensitive_(v11, v12, a4);
  v15 = objc_msgSend_sharedController(IMDaemonController, v13, v14);
  v18 = objc_msgSend_remoteDaemon(v15, v16, v17);
  v21 = objc_msgSend__dictionaryRepresentation(v11, v19, v20);
  objc_msgSend_fileTransfer_updatedWithProperties_(v18, v22, v6, v21);

  v25 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v23, v24);
  objc_msgSend___mainThreadPostNotificationName_object_(v25, v26, @"__kIMFileTransferUpdatedNotification", v11);

  v27 = *MEMORY[0x1E69E9840];
}

- (id)guidsForStoredAttachmentPayloadData:(id)a3 messageGUID:(id)a4
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v49 = a4;
  v50 = v5;
  if (objc_msgSend_count(v5, v6, v7))
  {
    v10 = objc_msgSend_array(MEMORY[0x1E695DF70], v8, v9);
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = v50;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v56, v62, 16);
    if (v14)
    {
      v53 = *v57;
      v52 = *MEMORY[0x1E69A7020];
      do
      {
        v15 = 0;
        do
        {
          if (*v57 != v53)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v56 + 1) + 8 * v15);
          v17 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v12, v13);
          v19 = objc_msgSend_stringByAppendingPathExtension_(v17, v18, v52);

          if (IMIsRunningInMessages() & 1) != 0 || (IMIsRunningInMobileSMS() & 1) != 0 || (IMIsRunningInIMDPersistenceAgent())
          {
            v22 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v20, v21);
            v24 = objc_msgSend_im_randomTemporaryFileURLWithFileName_(v22, v23, v19);
            v27 = objc_msgSend_path(v24, v25, v26);
          }

          else
          {
            v22 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v20, v21);
            v27 = objc_msgSend__randomTemporaryPathWithSuffix_withAppendedPathComponent_(v22, v45, v19, @"com.apple.MobileSMS");
          }

          v30 = objc_msgSend_stringByResolvingAndStandardizingPath(v27, v28, v29);

          v55 = 0;
          v32 = objc_msgSend_writeToFile_options_error_(v16, v31, v30, 1, &v55);
          v34 = v55;
          if ((v32 & 1) == 0 && IMOSLoggingEnabled())
          {
            v35 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v61 = v34;
              _os_log_impl(&dword_1A823F000, v35, OS_LOG_TYPE_INFO, "MessageService Failed writing attachment to disk on incoming: %@", buf, 0xCu);
            }
          }

          v36 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v33, v30, 0);
          v38 = objc_msgSend_createNewOutgoingTransferWithLocalFileURL_(self, v37, v36);
          v41 = objc_msgSend_sharedInstance(IMFileTransferCenter, v39, v40);
          v43 = objc_msgSend_transferForGUID_(v41, v42, v38);

          if (v43)
          {
            objc_msgSend_setHideAttachment_(v43, v44, 1);
          }

          if (v10 && v38)
          {
            CFArrayAppendValue(v10, v38);
          }

          ++v15;
        }

        while (v14 != v15);
        v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v56, v62, 16);
        v14 = v46;
      }

      while (v46);
    }
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  v47 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)fetchHighQualityVariantForTransfer:(id)a3 completion:(id)a4
{
  v6 = a3;
  v9 = a4;
  if (v6)
  {
    v10 = objc_msgSend_guid(v6, v7, v8);
    objc_msgSend__fetchHighQualityVariantForTransferGUID_completion_(self, v11, v10, v9);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "fetchHighQualityVariantForTransfer:completion: was given no transfer", v13, 2u);
      }
    }

    if (v9)
    {
      (*(v9 + 2))(v9, 0, 0);
    }
  }
}

- (void)_fetchHighQualityVariantForTransferGUID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = v7;
  if (v6)
  {
    if (v7)
    {
      if (!self->_disconnectionListenerSetUp)
      {
        v11 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v8, v9);
        objc_msgSend_addObserver_selector_name_object_(v11, v12, self, sel__daemonDisconnected_, @"__kIMDaemonDidDisconnectNotification", 0);

        self->_disconnectionListenerSetUp = 1;
      }

      fetchHighQualityVariantCompletionHandlers = self->_fetchHighQualityVariantCompletionHandlers;
      if (!fetchHighQualityVariantCompletionHandlers)
      {
        v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v15 = self->_fetchHighQualityVariantCompletionHandlers;
        self->_fetchHighQualityVariantCompletionHandlers = v14;

        fetchHighQualityVariantCompletionHandlers = self->_fetchHighQualityVariantCompletionHandlers;
      }

      v16 = objc_msgSend_objectForKeyedSubscript_(fetchHighQualityVariantCompletionHandlers, v8, v6);

      if (!v16)
      {
        v19 = objc_msgSend_array(MEMORY[0x1E695DF70], v17, v18);
        objc_msgSend_setObject_forKeyedSubscript_(self->_fetchHighQualityVariantCompletionHandlers, v20, v19, v6);
      }

      v21 = objc_msgSend_objectForKeyedSubscript_(self->_fetchHighQualityVariantCompletionHandlers, v17, v6);
      v22 = _Block_copy(v10);
      objc_msgSend_addObject_(v21, v23, v22);
    }

    objc_msgSend__initiateHighQualityVariantDownloadWithDaemonForGUID_(self, v8, v6);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *v25 = 0;
        _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "fetchHighQualityVariantForTransfer:completion: was given no transfer guid", v25, 2u);
      }
    }

    if (v10)
    {
      v10[2](v10, 0, 0);
    }
  }
}

- (void)_initiateHighQualityVariantDownloadWithDaemonForGUID:(id)a3
{
  v3 = a3;
  v10 = objc_msgSend_sharedController(IMDaemonController, v4, v5);
  v8 = objc_msgSend_remoteDaemon(v10, v6, v7);
  objc_msgSend_downloadHighQualityVariantOfFileTransferWithGUID_(v8, v9, v3);
}

- (void)_daemonRestarted:(id)a3
{
  fetchHighQualityVariantCompletionHandlers = self->_fetchHighQualityVariantCompletionHandlers;
  self->_fetchHighQualityVariantCompletionHandlers = 0;
  v5 = fetchHighQualityVariantCompletionHandlers;

  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v5, v4, &unk_1F1B6E380);
}

- (void)_daemonDisconnected:(id)a3
{
  v32[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E69A7000];
  v31[0] = *MEMORY[0x1E696A578];
  v6 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, a3);
  v8 = objc_msgSend_localizedStringForKey_value_table_(v6, v7, @"File transfer local file URL retrieval operation was unsuccessful.", &stru_1F1B76F98, 0);
  v32[0] = v8;
  v31[1] = *MEMORY[0x1E696A588];
  v11 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v9, v10);
  v13 = objc_msgSend_localizedStringForKey_value_table_(v11, v12, @"The daemon disconnected.", &stru_1F1B76F98, 0);
  v32[1] = v13;
  v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v14, v32, v31, 2);
  v17 = objc_msgSend_errorWithDomain_code_userInfo_(v4, v16, v5, 24, v15);

  localFileURLRetrievalCompletionHandlers = self->_localFileURLRetrievalCompletionHandlers;
  self->_localFileURLRetrievalCompletionHandlers = 0;
  v19 = localFileURLRetrievalCompletionHandlers;

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = sub_1A82C994C;
  v29[3] = &unk_1E78116D0;
  v20 = v17;
  v30 = v20;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v19, v21, v29);
  localFileURLRetrievalWithGuidCompletionHandlers = self->_localFileURLRetrievalWithGuidCompletionHandlers;
  self->_localFileURLRetrievalWithGuidCompletionHandlers = 0;
  v23 = localFileURLRetrievalWithGuidCompletionHandlers;

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_1A82C99FC;
  v27[3] = &unk_1E78116D0;
  v28 = v20;
  v24 = v20;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v23, v25, v27);

  v26 = *MEMORY[0x1E69E9840];
}

- (void)preWarmConnection
{
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "IMTransferCenter is asked for prewarm", v11, 2u);
    }
  }

  v5 = objc_msgSend_sharedController(IMDaemonController, v2, v3);
  v8 = objc_msgSend_remoteDaemon(v5, v6, v7);
  objc_msgSend_preWarm(v8, v9, v10);
}

- (void)retrieveLocalFileURLForFileTransferWithGUID:(id)a3 options:(int64_t)a4 completion:(id)a5
{
  v75 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (objc_msgSend_length(v8, v10, v11))
  {
    v13 = objc_msgSend_transferForGUID_(self, v12, v8);
    if (objc_msgSend_existsAtLocalPath(v13, v14, v15))
    {
      if (v9)
      {
        v18 = objc_msgSend_localPath(v13, v16, v17);
        v21 = objc_msgSend_localPath(v13, v19, v20);
        v24 = objc_msgSend_im_livePhotoBundlePath(v21, v22, v23);
        (*(v9 + 2))(v9, 1, 0, v18, v24, 0);
      }
    }

    else if (objc_msgSend_isInThumbnailState(v13, v16, v17))
    {
      if (v9)
      {
        v42 = MEMORY[0x1E696ABC0];
        v43 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v40, v41, *MEMORY[0x1E696A578]);
        v45 = objc_msgSend_localizedStringForKey_value_table_(v43, v44, @"File transfer local file url retrieval operation was unsuccessful.", &stru_1F1B76F98, 0);
        v70[0] = v45;
        v69[1] = *MEMORY[0x1E696A588];
        v48 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v46, v47);
        v50 = objc_msgSend_localizedStringForKey_value_table_(v48, v49, @"The given GUID references an attachment which is in thumbnail state. You don't want to analyze this, Skip and retry later, user did not tap to downloaded.", &stru_1F1B76F98, 0);
        v70[1] = v50;
        v52 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v51, v70, v69, 2);
        v54 = objc_msgSend_errorWithDomain_code_userInfo_(v42, v53, *MEMORY[0x1E69A7008], 24, v52);

        (*(v9 + 2))(v9, 0, 0, 0, 0, v54);
      }
    }

    else
    {
      if (v9)
      {
        if (!self->_disconnectionListenerSetUp)
        {
          v55 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v40, v41);
          objc_msgSend_addObserver_selector_name_object_(v55, v56, self, sel__daemonDisconnected_, @"__kIMDaemonDidDisconnectNotification", 0);

          self->_disconnectionListenerSetUp = 1;
        }

        localFileURLRetrievalCompletionHandlers = self->_localFileURLRetrievalCompletionHandlers;
        if (!localFileURLRetrievalCompletionHandlers)
        {
          v58 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v59 = self->_localFileURLRetrievalCompletionHandlers;
          self->_localFileURLRetrievalCompletionHandlers = v58;

          localFileURLRetrievalCompletionHandlers = self->_localFileURLRetrievalCompletionHandlers;
        }

        v60 = objc_msgSend_objectForKeyedSubscript_(localFileURLRetrievalCompletionHandlers, v40, v8);

        if (!v60)
        {
          v63 = objc_msgSend_array(MEMORY[0x1E695DF70], v61, v62);
          objc_msgSend_setObject_forKeyedSubscript_(self->_localFileURLRetrievalCompletionHandlers, v64, v63, v8);
        }

        v65 = objc_msgSend_objectForKeyedSubscript_(self->_localFileURLRetrievalCompletionHandlers, v61, v8);
        v66 = _Block_copy(v9);
        objc_msgSend_addObject_(v65, v67, v66);
      }

      objc_msgSend__initiateLocalFileURLRetrievalInDaemonForGUID_options_(self, v40, v8, a4);
    }

    goto LABEL_23;
  }

  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v74 = "[IMFileTransferCenter retrieveLocalFileURLForFileTransferWithGUID:options:completion:]";
      _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_INFO, "%s was given no transfer guid", buf, 0xCu);
    }
  }

  if (v9)
  {
    v28 = MEMORY[0x1E696ABC0];
    v71[0] = *MEMORY[0x1E696A578];
    v29 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v25, v26);
    v31 = objc_msgSend_localizedStringForKey_value_table_(v29, v30, @"File transfer local file url retrieval operation was unsuccessful.", &stru_1F1B76F98, 0);
    v72[0] = v31;
    v71[1] = *MEMORY[0x1E696A588];
    v34 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v32, v33);
    v36 = objc_msgSend_localizedStringForKey_value_table_(v34, v35, @"The given GUID was empty.", &stru_1F1B76F98, 0);
    v72[1] = v36;
    v38 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v37, v72, v71, 2);
    v13 = objc_msgSend_errorWithDomain_code_userInfo_(v28, v39, *MEMORY[0x1E69A7008], 24, v38);

    (*(v9 + 2))(v9, 0, 0, 0, 0, v13);
LABEL_23:
  }

  v68 = *MEMORY[0x1E69E9840];
}

- (void)retrieveLocalFileURLForFileTransferWithGUIDs:(id)a3 options:(int64_t)a4 completion:(id)a5
{
  v70 = a4;
  v90 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v71 = v7;
  if (objc_msgSend_count(v7, v9, v10))
  {
    v75 = objc_opt_new();
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    obj = v7;
    v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v79, v85, 16);
    if (!v78)
    {
      goto LABEL_21;
    }

    v77 = *v80;
    v72 = *MEMORY[0x1E69A7008];
    v74 = *MEMORY[0x1E696A578];
    v73 = *MEMORY[0x1E696A588];
    while (1)
    {
      for (i = 0; i != v78; ++i)
      {
        if (*v80 != v77)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v79 + 1) + 8 * i);
        v15 = objc_msgSend_transferForGUID_(self, v12, v14);
        if (((v8 != 0) & objc_msgSend_existsAtLocalPath(v15, v16, v17)) == 1)
        {
          v20 = objc_msgSend_localPath(v15, v18, v19);
          v23 = objc_msgSend_localPath(v15, v21, v22);
          v26 = objc_msgSend_im_livePhotoBundlePath(v23, v24, v25);
          (*(v8 + 2))(v8, 1, v14, 0, v20, v26, 0);
        }

        else if (objc_msgSend_isInThumbnailState(v15, v18, v19))
        {
          if (!v8)
          {
            goto LABEL_19;
          }

          v29 = MEMORY[0x1E696ABC0];
          v83[0] = v74;
          v30 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v27, v28);
          v32 = objc_msgSend_localizedStringForKey_value_table_(v30, v31, @"File transfer local file url retrieval operation was unsuccessful.", &stru_1F1B76F98, 0);
          v83[1] = v73;
          v84[0] = v32;
          v35 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v33, v34);
          v37 = objc_msgSend_localizedStringForKey_value_table_(v35, v36, @"The given GUID references an attachment which is in thumbnail state. You don't want to analyze this, Skip and retry later, user did not tap to downloaded.", &stru_1F1B76F98, 0);
          v84[1] = v37;
          v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v38, v84, v83, 2);
          v20 = objc_msgSend_errorWithDomain_code_userInfo_(v29, v40, v72, 24, v39);

          (*(v8 + 2))(v8, 0, 0, 0, 0, 0, v20);
        }

        else
        {
          objc_msgSend_addObject_(v75, v27, v14);
          if (!v8)
          {
            goto LABEL_19;
          }

          localFileURLRetrievalWithGuidCompletionHandlers = self->_localFileURLRetrievalWithGuidCompletionHandlers;
          if (!localFileURLRetrievalWithGuidCompletionHandlers)
          {
            v43 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v44 = self->_localFileURLRetrievalWithGuidCompletionHandlers;
            self->_localFileURLRetrievalWithGuidCompletionHandlers = v43;

            localFileURLRetrievalWithGuidCompletionHandlers = self->_localFileURLRetrievalWithGuidCompletionHandlers;
          }

          v45 = objc_msgSend_objectForKeyedSubscript_(localFileURLRetrievalWithGuidCompletionHandlers, v41, v14, v70, v71);
          v46 = v45 == 0;

          if (v46)
          {
            v49 = objc_msgSend_array(MEMORY[0x1E695DF70], v47, v48);
            objc_msgSend_setObject_forKeyedSubscript_(self->_localFileURLRetrievalWithGuidCompletionHandlers, v50, v49, v14);
          }

          v20 = objc_msgSend_objectForKeyedSubscript_(self->_localFileURLRetrievalWithGuidCompletionHandlers, v47, v14);
          v51 = _Block_copy(v8);
          objc_msgSend_addObject_(v20, v52, v51);
        }

LABEL_19:
      }

      v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v79, v85, 16);
      if (!v78)
      {
LABEL_21:

        objc_msgSend__initiateLocalFileURLRetrievalInDaemonForGUIDs_options_(self, v53, v75, v70);
        goto LABEL_28;
      }
    }
  }

  if (IMOSLoggingEnabled())
  {
    v56 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v89 = "[IMFileTransferCenter retrieveLocalFileURLForFileTransferWithGUIDs:options:completion:]";
      _os_log_impl(&dword_1A823F000, v56, OS_LOG_TYPE_INFO, "%s was given no transfer guids", buf, 0xCu);
    }
  }

  if (v8)
  {
    v57 = MEMORY[0x1E696ABC0];
    v86[0] = *MEMORY[0x1E696A578];
    v58 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v54, v55);
    v60 = objc_msgSend_localizedStringForKey_value_table_(v58, v59, @"File transfer local file urls retrieval operation was unsuccessful.", &stru_1F1B76F98, 0);
    v87[0] = v60;
    v86[1] = *MEMORY[0x1E696A588];
    v63 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v61, v62);
    v65 = objc_msgSend_localizedStringForKey_value_table_(v63, v64, @"The given GUIDs was empty.", &stru_1F1B76F98, 0);
    v87[1] = v65;
    v67 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v66, v87, v86, 2);
    v75 = objc_msgSend_errorWithDomain_code_userInfo_(v57, v68, *MEMORY[0x1E69A7008], 24, v67);

    (*(v8 + 2))(v8, 0, 0, 0, 0, 0, v75);
LABEL_28:
  }

  v69 = *MEMORY[0x1E69E9840];
}

- (void)_initiateLocalFileURLRetrievalInDaemonForGUID:(id)a3 options:(int64_t)a4
{
  v6 = a3;
  objc_msgSend__registerDaemonListenerIfNecessary(self, v7, v8);
  v15 = objc_msgSend_sharedController(IMDaemonController, v9, v10);
  v13 = objc_msgSend_remoteDaemon(v15, v11, v12);
  objc_msgSend_retrieveLocalFileURLForFileTransferWithGUID_options_(v13, v14, v6, a4);
}

- (void)_initiateLocalFileURLRetrievalInDaemonForGUIDs:(id)a3 options:(int64_t)a4
{
  v6 = a3;
  objc_msgSend__registerDaemonListenerIfNecessary(self, v7, v8);
  v15 = objc_msgSend_sharedController(IMDaemonController, v9, v10);
  v13 = objc_msgSend_remoteDaemon(v15, v11, v12);
  objc_msgSend_retrieveLocalFileURLForFileTransferWithGUIDs_options_(v13, v14, v6, a4);
}

- (void)createItemForPHAssetWithUUID:(id)a3 parentChatItemGUID:(id)a4 chatGUID:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v16 = objc_msgSend_sharedController(IMDaemonController, v10, v11);
  v14 = objc_msgSend_remoteDaemon(v16, v12, v13);
  objc_msgSend_createItemForPHAssetWithUUID_parentChatItemGUID_chatGUID_(v14, v15, v9, v8, v7);
}

- (void)_registerDaemonListenerIfNecessary
{
  daemonConnection = self->_daemonConnection;
  if (!daemonConnection)
  {
    v5 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, v2);
    v8 = objc_msgSend_bundleIdentifier(v5, v6, v7);

    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, @"%@-IMFileTransferCenter", v8);
    v13 = objc_msgSend_sharedController(IMDaemonController, v11, v12);
    v15 = objc_msgSend_multiplexedConnectionWithLabel_capabilities_context_(v13, v14, v10, 0x10000000, 0);
    v16 = self->_daemonConnection;
    self->_daemonConnection = v15;

    daemonConnection = self->_daemonConnection;
  }

  objc_msgSend_waitForSetup(daemonConnection, a2, v2);
}

@end