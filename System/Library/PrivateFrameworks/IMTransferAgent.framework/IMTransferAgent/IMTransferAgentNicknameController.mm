@interface IMTransferAgentNicknameController
+ (id)sharedInstance;
- (BOOL)_serverSaysToUseOldContainer;
- (BOOL)shouldUseDevNickNameContainer;
- (id)_errorWrappingError:(id)error;
- (id)_nickNameContainer;
- (id)_nickNameContainerIdentifier;
- (id)_nickNameFetchConfiguration;
- (id)_nickNameSaveConfiguration;
- (id)nickNamePublicDatabase;
- (void)_handleSaveNicknameError:(id)error queue:(id)queue withCompletionBlock:(id)block;
- (void)_updateEncryptedPersonalNicknameToPublicCloudKitDBSavingRecord:(id)record wallpaperRecordToSave:(id)save deletingRecordID:(id)d queue:(id)queue withCompletionBlock:(id)block;
- (void)_updateEncryptedPersonalNicknameToPublicCloudKitDBSavingRecords:(id)records deletingRecordIDs:(id)ds queue:(id)queue withCompletionBlock:(id)block;
- (void)cloudKitOperationWithRetryCount:(unint64_t)count queue:(id)queue withError:(id)error operation:(id)operation;
- (void)deleteAllPersonalNicknamesOnQueue:(id)queue withCompletion:(id)completion;
- (void)fetchAllNicknamesForCurrentUser:(id)user;
- (void)fetchCurrentUserForNicknameContainer:(id)container;
- (void)getNicknameWithRecordID:(id)d decryptionKey:(id)key wallpaperDataTag:(id)tag wallpaperLowResDataTag:(id)dataTag wallpaperMetadataTag:(id)metadataTag avatarRecipeDataTag:(id)recipeDataTag knownSender:(BOOL)sender shouldDecodeImageFields:(BOOL)self0 queue:(id)self1 completionBlock:(id)self2;
- (void)setPersonalNickname:(id)nickname oldRecordID:(id)d queue:(id)queue completionBlock:(id)block;
- (void)setPersonalNicknameData:(id)data oldRecordID:(id)d queue:(id)queue completionBlock:(id)block;
@end

@implementation IMTransferAgentNicknameController

+ (id)sharedInstance
{
  if (qword_28112DA00 != -1)
  {
    sub_2548680C8();
  }

  v3 = qword_28112D9D8;

  return v3;
}

- (void)getNicknameWithRecordID:(id)d decryptionKey:(id)key wallpaperDataTag:(id)tag wallpaperLowResDataTag:(id)dataTag wallpaperMetadataTag:(id)metadataTag avatarRecipeDataTag:(id)recipeDataTag knownSender:(BOOL)sender shouldDecodeImageFields:(BOOL)self0 queue:(id)self1 completionBlock:(id)self2
{
  dCopy = d;
  keyCopy = key;
  tagCopy = tag;
  dataTagCopy = dataTag;
  metadataTagCopy = metadataTag;
  recipeDataTagCopy = recipeDataTag;
  queueCopy = queue;
  blockCopy = block;
  if (objc_msgSend_supportsNameAndPhoto(MEMORY[0x277D1A9A0], v26, v27))
  {
    if (objc_msgSend_length(dCopy, v28, v29))
    {
      v49 = 0;
      v50 = &v49;
      v51 = 0x3032000000;
      v52 = sub_25485D6FC;
      v53 = sub_25485D70C;
      v54 = 0;
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = sub_25485D714;
      v36[3] = &unk_27978CF70;
      v37 = dCopy;
      v38 = metadataTagCopy;
      v39 = tagCopy;
      v40 = dataTagCopy;
      senderCopy = sender;
      v41 = recipeDataTagCopy;
      selfCopy = self;
      v31 = queueCopy;
      v43 = v31;
      v35 = keyCopy;
      v44 = keyCopy;
      fieldsCopy = fields;
      v45 = blockCopy;
      v46 = &v49;
      v32 = MEMORY[0x259C1C440](v36);
      objc_msgSend_performCloudKitOperation_queue_withError_(self, v33, v32, v31, v50[5]);

      _Block_object_dispose(&v49, 8);
      keyCopy = v35;
    }

    else
    {
      v34 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v30, @"com.apple.nickname", 1, 0);
      (*(blockCopy + 2))(blockCopy, 0, v34);
    }
  }
}

- (void)fetchCurrentUserForNicknameContainer:(id)container
{
  containerCopy = container;
  v7 = objc_msgSend__nickNameContainer(self, v5, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_25485E218;
  v10[3] = &unk_27978CF98;
  v11 = containerCopy;
  v8 = containerCopy;
  objc_msgSend_fetchUserRecordIDWithCompletionHandler_(v7, v9, v10);
}

- (void)fetchAllNicknamesForCurrentUser:(id)user
{
  userCopy = user;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_25485E2BC;
  v7[3] = &unk_27978CFE8;
  v7[4] = self;
  v8 = userCopy;
  v5 = userCopy;
  objc_msgSend_fetchCurrentUserForNicknameContainer_(self, v6, v7);
}

- (void)setPersonalNicknameData:(id)data oldRecordID:(id)d queue:(id)queue completionBlock:(id)block
{
  dCopy = d;
  queueCopy = queue;
  blockCopy = block;
  v13 = MEMORY[0x277CCAAC8];
  v14 = MEMORY[0x277CBEB98];
  dataCopy = data;
  v16 = objc_opt_class();
  v18 = objc_msgSend_setWithObject_(v14, v17, v16);
  v25 = 0;
  v20 = objc_msgSend__strictlyUnarchivedObjectOfClasses_fromData_error_(v13, v19, v18, dataCopy, &v25);

  v21 = v25;
  if (v20)
  {
    v23 = v21 == 0;
  }

  else
  {
    v23 = 0;
  }

  if (v23)
  {
    objc_msgSend_setPersonalNickname_oldRecordID_queue_completionBlock_(self, v22, v20, dCopy, queueCopy, blockCopy);
  }

  else
  {
    v24 = objc_msgSend__errorWrappingError_(self, v22, v21);
    (*(blockCopy + 2))(blockCopy, 0, 0, 0, 0, 0, 0, 0, 0, v24);
  }
}

- (void)setPersonalNickname:(id)nickname oldRecordID:(id)d queue:(id)queue completionBlock:(id)block
{
  v73 = *MEMORY[0x277D85DE8];
  nicknameCopy = nickname;
  dCopy = d;
  queueCopy = queue;
  blockCopy = block;
  v14 = nicknameCopy;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    selfCopy = self;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v19 = objc_msgSend_avatar(v14, v17, v18);
      v22 = objc_msgSend_imageFilePath(v19, v20, v21);
      *buf = 138412546;
      v70 = v14;
      v71 = 2112;
      v72 = v22;
      _os_log_impl(&dword_254850000, v15, OS_LOG_TYPE_INFO, "Client request to store new personal nickname %@ path%@", buf, 0x16u);
    }

    self = selfCopy;
  }

  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = sub_25485EC18;
  v67[3] = &unk_27978D010;
  v23 = blockCopy;
  v67[4] = self;
  v68 = v23;
  selfCopy2 = self;
  v24 = MEMORY[0x259C1C440](v67);
  v66 = 0;
  v26 = objc_msgSend_generatePreKeyWithError_(MEMORY[0x277D1AB00], v25, &v66);
  v27 = v66;
  v29 = v27;
  if (v26)
  {
    v65 = 0;
    v63 = 0;
    v64 = 0;
    v61 = v27;
    v62 = 0;
    v50 = objc_msgSend_publicRecordsForNicknameWithPreKey_wallpaperDataTag_lowResWallpaperDataTag_wallpaperMetadataTag_avatarRecipeDataTag_error_(v14, v28, v26, &v65, &v64, &v63, &v62, &v61);
    v30 = v65;
    v31 = v64;
    v46 = v63;
    v47 = v62;
    v45 = v61;

    v49 = objc_msgSend_objectForKeyedSubscript_(v50, v32, @"profileRecord");
    v48 = objc_msgSend_objectForKeyedSubscript_(v50, v33, @"wallpaperRecord");
    if (v49)
    {
      if (objc_msgSend_length(dCopy, v34, v35))
      {
        v36 = objc_alloc(MEMORY[0x277CBC5D0]);
        v43 = objc_msgSend_initWithRecordName_(v36, v37, dCopy);
      }

      else
      {
        v43 = 0;
      }

      v38 = objc_alloc_init(MEMORY[0x277D192C0]);
      objc_msgSend_startTimingForKey_(v38, v39, @"Nickname Upload");
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = sub_25485ED70;
      v51[3] = &unk_27978D038;
      v52 = v38;
      v53 = v14;
      v54 = v49;
      v60 = v24;
      v55 = v26;
      v56 = v30;
      v57 = v31;
      v58 = v46;
      v59 = v47;
      v40 = v38;
      objc_msgSend__updateEncryptedPersonalNicknameToPublicCloudKitDBSavingRecord_wallpaperRecordToSave_deletingRecordID_queue_withCompletionBlock_(selfCopy2, v41, v54, v48, v43, queueCopy, v51);
    }

    else
    {
      (v24)[2](v24, 0, 0, 0, 0, 0, 0, 0, 0, v45);
    }

    v29 = v45;
  }

  else
  {
    (v24)[2](v24, 0, 0, 0, 0, 0, 0, 0, 0, v27);
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)deleteAllPersonalNicknamesOnQueue:(id)queue withCompletion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_254850000, v8, OS_LOG_TYPE_INFO, "Client request to delete personal nickname with recordID", buf, 2u);
    }
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_25485F1FC;
  v12[3] = &unk_27978D088;
  v12[4] = self;
  v13 = queueCopy;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = queueCopy;
  objc_msgSend_fetchAllNicknamesForCurrentUser_(self, v11, v12);
}

- (void)_updateEncryptedPersonalNicknameToPublicCloudKitDBSavingRecord:(id)record wallpaperRecordToSave:(id)save deletingRecordID:(id)d queue:(id)queue withCompletionBlock:(id)block
{
  recordCopy = record;
  saveCopy = save;
  dCopy = d;
  queueCopy = queue;
  blockCopy = block;
  if (dCopy)
  {
    v19 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v16, dCopy);
  }

  else
  {
    v19 = 0;
  }

  v20 = objc_msgSend_array(MEMORY[0x277CBEB18], v16, v17);
  v23 = v20;
  if (recordCopy)
  {
    objc_msgSend_addObject_(v20, v21, recordCopy);
    if (saveCopy)
    {
      objc_msgSend_addObject_(v23, v21, saveCopy);
    }
  }

  if (objc_msgSend_count(v19, v21, v22))
  {
    v25 = objc_alloc_init(MEMORY[0x277D192C0]);
    objc_msgSend_startTimingForKey_(v25, v26, @"Nickname Delete");
    v36 = MEMORY[0x277D85DD0];
    v37 = 3221225472;
    v38 = sub_25485F67C;
    v39 = &unk_27978D0B0;
    v40 = v25;
    v41 = recordCopy;
    selfCopy = self;
    v43 = v23;
    v27 = queueCopy;
    v44 = v27;
    v45 = blockCopy;
    v28 = v25;
    v29 = MEMORY[0x259C1C440](&v36);
    selfCopy2 = self;
    v31 = blockCopy;
    v32 = queueCopy;
    v33 = saveCopy;
    v34 = v29;
    objc_msgSend__updateEncryptedPersonalNicknameToPublicCloudKitDBSavingRecords_deletingRecordIDs_queue_withCompletionBlock_(selfCopy2, v35, 0, v19, v27, v29, v36, v37, v38, v39);

    saveCopy = v33;
    queueCopy = v32;
    blockCopy = v31;
  }

  else
  {
    objc_msgSend__updateEncryptedPersonalNicknameToPublicCloudKitDBSavingRecords_deletingRecordIDs_queue_withCompletionBlock_(self, v24, v23, 0, queueCopy, blockCopy);
  }
}

- (void)_updateEncryptedPersonalNicknameToPublicCloudKitDBSavingRecords:(id)records deletingRecordIDs:(id)ds queue:(id)queue withCompletionBlock:(id)block
{
  v38 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  dsCopy = ds;
  queueCopy = queue;
  blockCopy = block;
  if (recordsCopy && IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = recordsCopy;
      _os_log_impl(&dword_254850000, v14, OS_LOG_TYPE_INFO, "Publishing Nickname to CloudKit Public DB with record %@", &buf, 0xCu);
    }
  }

  if (dsCopy && IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = dsCopy;
      _os_log_impl(&dword_254850000, v15, OS_LOG_TYPE_INFO, "Deleting Nickname from CloudKit Public DB with recordID %@", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v34 = 0x3032000000;
  v35 = sub_25485D6FC;
  v36 = sub_25485D70C;
  v37 = 0;
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = sub_25485FA94;
  v26 = &unk_27978D178;
  v16 = dsCopy;
  v27 = v16;
  v17 = recordsCopy;
  v28 = v17;
  selfCopy = self;
  v18 = queueCopy;
  v30 = v18;
  v19 = blockCopy;
  v31 = v19;
  p_buf = &buf;
  v20 = MEMORY[0x259C1C440](&v23);
  objc_msgSend_performCloudKitOperation_queue_withError_(self, v21, v20, v18, *(*(&buf + 1) + 40), v23, v24, v25, v26);

  _Block_object_dispose(&buf, 8);
  v22 = *MEMORY[0x277D85DE8];
}

- (void)_handleSaveNicknameError:(id)error queue:(id)queue withCompletionBlock:(id)block
{
  v49[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  queueCopy = queue;
  blockCopy = block;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 1;
  if (errorCopy)
  {
    if (objc_msgSend_code(errorCopy, v10, v11) == 2)
    {
      v15 = objc_msgSend_userInfo(errorCopy, v13, v14);
      v17 = objc_msgSend_valueForKey_(v15, v16, *MEMORY[0x277CBBFB0]);
      v20 = objc_msgSend_allValues(v17, v18, v19);
    }

    else
    {
      v49[0] = errorCopy;
      v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v49, 1);
    }
  }

  else
  {
    v20 = 0;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v21 = v20;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v40, v48, 16);
  if (v25)
  {
    v26 = *v41;
    while (2)
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v41 != v26)
        {
          objc_enumerationMutation(v21);
        }

        v28 = *(*(&v40 + 1) + 8 * i);
        if (objc_msgSend_code(v28, v23, v24) == 19 || objc_msgSend_code(v28, v29, v30) == 12)
        {
          *(v45 + 24) = 1;
          v37[0] = MEMORY[0x277D85DD0];
          v37[1] = 3221225472;
          v37[2] = sub_2548604E0;
          v37[3] = &unk_27978D1A0;
          v39 = &v44;
          v38 = blockCopy;
          objc_msgSend_deleteAllPersonalNicknamesOnQueue_withCompletion_(self, v35, queueCopy, v37);

          goto LABEL_22;
        }

        if (objc_msgSend_code(v28, v31, v32) == 14)
        {
          *(v45 + 24) = 0;
        }

        if (objc_msgSend_code(v28, v33, v34) == 15)
        {
          *(v45 + 24) = 0;
        }
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v40, v48, 16);
      if (v25)
      {
        continue;
      }

      break;
    }
  }

  if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy, *(v45 + 24));
  }

LABEL_22:
  _Block_object_dispose(&v44, 8);

  v36 = *MEMORY[0x277D85DE8];
}

- (void)cloudKitOperationWithRetryCount:(unint64_t)count queue:(id)queue withError:(id)error operation:(id)operation
{
  v37 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  errorCopy = error;
  operationCopy = operation;
  v15 = objc_msgSend_userInfo(errorCopy, v13, v14);
  v17 = objc_msgSend_objectForKey_(v15, v16, *MEMORY[0x277CBBF68]);

  if (v17)
  {
    objc_msgSend__retryIntervalForRetryCount_(self, v18, count);
    v20 = v19;
  }

  else
  {
    v20 = 0.0;
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_254860764;
  v28[3] = &unk_27978D1F0;
  countCopy = count;
  v28[4] = self;
  v21 = queueCopy;
  v29 = v21;
  v22 = errorCopy;
  v30 = v22;
  v23 = operationCopy;
  v31 = v23;
  v24 = MEMORY[0x259C1C440](v28);
  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      countCopy2 = count;
      v35 = 2048;
      v36 = v20;
      _os_log_impl(&dword_254850000, v25, OS_LOG_TYPE_INFO, "Dispatching CloudKit operation with retry: %lu and retryInterval: %f", buf, 0x16u);
    }
  }

  if (v20 <= 0.0)
  {
    v24[2](v24);
  }

  else
  {
    v26 = dispatch_time(0, (v20 * 1000000000.0));
    dispatch_after(v26, v21, v24);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (id)nickNamePublicDatabase
{
  if (IMSharedHelperNickNameEnabled())
  {
    v5 = objc_msgSend__nickNameContainer(self, v3, v4);
    v8 = objc_msgSend_publicCloudDatabase(v5, v6, v7);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_254850000, v9, OS_LOG_TYPE_INFO, "Nicknames NOT enabled, returning nil public database", v11, 2u);
      }
    }

    v8 = 0;
  }

  return v8;
}

- (id)_nickNameSaveConfiguration
{
  v2 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  objc_msgSend_setQualityOfService_(v2, v3, 25);

  return v2;
}

- (id)_nickNameFetchConfiguration
{
  v2 = objc_alloc_init(MEMORY[0x277CBC4F0]);
  objc_msgSend_setQualityOfService_(v2, v3, 25);
  objc_msgSend_setPreferAnonymousRequests_(v2, v4, 1);

  return v2;
}

- (BOOL)_serverSaysToUseOldContainer
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = objc_msgSend_sharedInstanceForBagType_(MEMORY[0x277D18A10], a2, 1);
  v4 = objc_msgSend_objectForKey_(v2, v3, @"use-old-nickname-container");
  v7 = objc_msgSend_unsignedIntegerValue(v4, v5, v6) != 0;
  v10 = objc_msgSend_sharedInstance(MEMORY[0x277D1A990], v8, v9);
  BoolFromDomain_forKey = objc_msgSend_getBoolFromDomain_forKey_(v10, v11, *MEMORY[0x277D1A3C0], @"UseOldProfilesContainer");

  v13 = BoolFromDomain_forKey | v7;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v15, 0);
      v17 = v16;
      v18 = @"NO";
      v21 = 138412802;
      if (v13)
      {
        v18 = @"YES";
      }

      v22 = v18;
      v23 = 2112;
      v24 = v4;
      v25 = 2112;
      v26 = v16;
      _os_log_impl(&dword_254850000, v14, OS_LOG_TYPE_INFO, "Server says to use new container? %@ {serverbagValue: %@ version: %@}", &v21, 0x20u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v13 & 1;
}

- (id)_nickNameContainerIdentifier
{
  if (objc_msgSend__serverSaysToUseOldContainer(self, a2, v2))
  {
    return @"com.apple.internal.messages.memoji";
  }

  else
  {
    return @"com.apple.messages.profiles";
  }
}

- (id)_nickNameContainer
{
  v27 = *MEMORY[0x277D85DE8];
  nickNameContainer = self->_nickNameContainer;
  if (!nickNameContainer)
  {
    v5 = objc_msgSend__nickNameContainerIdentifier(self, a2, v2);
    shouldUseDevNickNameContainer = objc_msgSend_shouldUseDevNickNameContainer(self, v6, v7);
    v9 = IMOSLoggingEnabled();
    if (shouldUseDevNickNameContainer)
    {
      if (v9)
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v25 = 138412290;
          v26 = v5;
          _os_log_impl(&dword_254850000, v10, OS_LOG_TYPE_INFO, "**** Initializing dev nick name container with ID %@", &v25, 0xCu);
        }
      }

      v11 = 2;
    }

    else
    {
      if (v9)
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v25 = 138412290;
          v26 = v5;
          _os_log_impl(&dword_254850000, v12, OS_LOG_TYPE_INFO, "Initializing production container %@", &v25, 0xCu);
        }
      }

      v11 = 1;
    }

    v13 = objc_alloc(MEMORY[0x277CBC220]);
    v15 = objc_msgSend_initWithContainerIdentifier_environment_(v13, v14, v5, v11);
    v16 = objc_alloc_init(MEMORY[0x277CBC230]);
    objc_msgSend_setUseZoneWidePCS_(v16, v17, 1);
    v18 = objc_alloc(MEMORY[0x277CBC218]);
    v20 = objc_msgSend_initWithContainerID_options_(v18, v19, v15, v16);
    v22 = self->_nickNameContainer;
    p_nickNameContainer = &self->_nickNameContainer;
    *p_nickNameContainer = v20;

    nickNameContainer = *p_nickNameContainer;
  }

  v23 = *MEMORY[0x277D85DE8];

  return nickNameContainer;
}

- (BOOL)shouldUseDevNickNameContainer
{
  v3 = *MEMORY[0x277D19A08];
  v4 = *MEMORY[0x277D19BE8];
  v5 = IMGetCachedDomainBoolForKey();
  if (v5)
  {
    v8 = objc_msgSend_lockdownManager(self, v6, v7);
    isInternalInstall = objc_msgSend_isInternalInstall(v8, v9, v10);

    LOBYTE(v5) = isInternalInstall;
  }

  return v5;
}

- (id)_errorWrappingError:(id)error
{
  v40[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = errorCopy;
  if (errorCopy)
  {
    v7 = objc_msgSend_domain(errorCopy, v4, v5);
    v10 = objc_msgSend_lowercaseString(v7, v8, v9);
    v12 = objc_msgSend_containsString_(v10, v11, @"blastdoor");

    if (v12)
    {
      v15 = v6;
    }

    else
    {
      v21 = objc_msgSend_description(v6, v13, v14);
      if (v21)
      {
        v39 = *MEMORY[0x277CCA068];
        v22 = objc_msgSend_description(v6, v19, v20);
        v40[0] = v22;
        v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v23, v40, &v39, 1);
      }

      else
      {
        v24 = 0;
      }

      v25 = MEMORY[0x277CCA9B8];
      v28 = objc_msgSend_domain(v6, v26, v27);
      v31 = v28;
      if (v28)
      {
        v32 = v28;
      }

      else
      {
        v32 = @"com.apple.nickname";
      }

      v33 = objc_msgSend_code(v6, v29, v30);
      v15 = objc_msgSend_errorWithDomain_code_userInfo_(v25, v34, v32, v33, v24);
    }
  }

  else
  {
    v16 = MEMORY[0x277CCA9B8];
    v37 = *MEMORY[0x277CCA068];
    v38 = @"Unknown error (inner error is nil).";
    v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v4, &v38, &v37, 1);
    v15 = objc_msgSend_errorWithDomain_code_userInfo_(v16, v18, @"com.apple.nickname", 1, v17);
  }

  v35 = *MEMORY[0x277D85DE8];

  return v15;
}

@end