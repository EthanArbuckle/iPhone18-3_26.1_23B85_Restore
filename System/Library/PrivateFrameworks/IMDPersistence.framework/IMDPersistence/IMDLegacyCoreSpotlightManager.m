@interface IMDLegacyCoreSpotlightManager
+ (Class)__SLCollaborationHandshakeController;
+ (id)chatAutoDonatingCutomKey;
+ (id)chatAutoDonatingServerDateCustomKey;
+ (id)chatStyleCustomKey;
+ (id)handleToIdentityMapKey;
+ (id)localIdentityKey;
+ (id)localIdentityProofKey;
+ (id)resolvedURLCustomKey;
+ (id)sharedManager;
+ (id)threadIdentifierCustomKey;
- (BOOL)_shouldIndexNextBatchForBatchSize:(unint64_t)a3;
- (BOOL)_shouldSkipMessagePartPrefixingForItemDictionary:(id)a3;
- (IMDLegacyCoreSpotlightManager)init;
- (NSMutableOrderedSet)blocklistMessageGUIDs;
- (id)_chatDictionaryForChatAtIndex:(unint64_t)a3 withChats:(id)a4;
- (id)_chatDictionaryForChatGUID:(id)a3;
- (id)_copyNewSearchableIndexesForMessagesWithLastRowID:(unint64_t *)a3 messageRecordCount:(unint64_t *)a4 messagesWithItemsGeneratedCount:(unint64_t *)a5 reason:(int64_t)a6 batchSize:(unint64_t)a7 timingCollection:(id)a8 rejectedItems:(id)a9;
- (id)_newSearchableChatItemsForChats:(id)a3;
- (id)_personIdentityQueue;
- (id)_scrutinyMessagesQueue;
- (id)chatSearchableItemForGUID:(id)a3;
- (id)newChatSearchableItemForChatDictionary:(id)a3 optionalLastMessageDate:(id)a4;
- (id)newChatSearchableItemForChatDictionary:(id)a3 optionalLastMessageDate:(id)a4 error:(id *)a5;
- (id)newSearchableItemsForMessage:(id)a3 context:(id)a4 rejectedItems:(id)a5;
- (id)newSearchableItemsForMessageGUID:(id)a3 context:(id)a4 rejectedItems:(id)a5;
- (id)newSearchableItemsForMessageItemDictionary:(id)a3 chatDictionary:(id)a4 context:(id)a5 rejectedItems:(id)a6;
- (id)searchableIndex;
- (id)searchableItemIdentifierForChatGUID:(id)a3;
- (int64_t)totalMessages;
- (unint64_t)_batchSizeForTargetBatchSize:(unint64_t)a3 lastIndexedRowID:(unint64_t)a4 lastBatch:(BOOL *)a5;
- (void)_FPProviderIDForItems:(id)a3;
- (void)_enumerateSearchableChatItemsForAllChatsWithBlock:(id)a3 timingCollection:(id)a4;
- (void)_indexSearchableChatItems:(id)a3 withReason:(int64_t)a4 index:(id)a5 blocking:(BOOL)a6;
- (void)_indexSearchableItems:(id)a3 rejectedItems:(id)a4 clientState:(id)a5 lastIndexedRowID:(unint64_t)a6 messagesInBatch:(unint64_t)a7 messagesWithItemsGeneratedCount:(unint64_t)a8 batchSize:(unint64_t)a9 lastBatch:(BOOL)a10 withIndex:(id)a11 reason:(int64_t)a12;
- (void)_postProcessIndexingForItem:(id)a3 chatDictionary:(id)a4 isReindexing:(BOOL)a5;
- (void)_resolvedURLForItems:(id)a3;
- (void)_sanitizeIndexesForCurrentVersionIfNeeded:(id)a3;
- (void)_suspendReindexingDueToError:(id)a3;
- (void)_updateFilteringForSearchableItem:(id)a3 chatDictionary:(id)a4;
- (void)_updateItem:(id)a3 withFPProviderID:(id)a4;
- (void)_updateItem:(id)a3 withIdentityMap:(id)a4 localIdentity:(id)a5 localIdentityProof:(id)a6 completionHandler:(id)a7;
- (void)_updateItem:(id)a3 withResolvedURL:(id)a4;
- (void)addChatSearchableItemForChatGUID:(id)a3 reason:(int64_t)a4;
- (void)clearMessageGUIDFromScrutiny:(id)a3;
- (void)deleteAllDonationsForAppDeletionWithCompletion:(id)a3;
- (void)deleteAllSearchableItemsWithReason:(int64_t)a3 completionHandler:(id)a4;
- (void)deleteChatSearchableItemForChatGUID:(id)a3 reason:(int64_t)a4;
- (void)indexChatsWithReason:(int64_t)a3;
- (void)indexNextMessageBatchIfNeeded:(unint64_t)a3 reason:(int64_t)a4 completion:(id)a5;
- (void)reIndexWithLocalProofOfInclusionForItemsAsync:(id)a3 completionHandler:(id)a4;
- (void)setMessageGUIDUnderScrutiny:(id)a3;
- (void)setNeedsMessageReindexingWithContext:(id)a3 completion:(id)a4;
@end

@implementation IMDLegacyCoreSpotlightManager

+ (id)sharedManager
{
  if (qword_1EBA53A98 != -1)
  {
    sub_1B7CF90E4();
  }

  v3 = qword_1EBA53A78;

  return v3;
}

- (IMDLegacyCoreSpotlightManager)init
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  isSpotlightRefactorEnabled = objc_msgSend_isSpotlightRefactorEnabled(v4, v5, v6);

  if (isSpotlightRefactorEnabled)
  {
    sub_1B7CF90F8(v8, v9, v10);
  }

  v26.receiver = self;
  v26.super_class = IMDLegacyCoreSpotlightManager;
  v11 = [(IMDLegacyCoreSpotlightManager *)&v26 init];
  if (v11)
  {
    v12 = IMGetCachedDomainValueForKey();
    v15 = objc_msgSend_count(v12, v13, v14);
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v28 = v15;
        _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Current blocklist size is %lu", buf, 0xCu);
      }
    }

    if (v15 >= 0xC9)
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          LODWORD(v28) = 200;
          _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, "Blocklist size > %d on load, truncating", buf, 8u);
        }
      }

      v19 = objc_msgSend_subarrayWithRange_(v12, v17, v15 - 200, 200);

      v12 = v19;
    }

    if (v12)
    {
      v20 = objc_alloc(MEMORY[0x1E695DFA0]);
      v22 = objc_msgSend_initWithArray_(v20, v21, v12);
    }

    else
    {
      v22 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    }

    blocklistMessageGUIDs = v11->_blocklistMessageGUIDs;
    v11->_blocklistMessageGUIDs = v22;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v11;
}

- (int64_t)totalMessages
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = objc_msgSend_synchronousDatabase(IMDDatabase, a2, v2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7B9E5CC;
  v7[3] = &unk_1E7CB6B98;
  v7[4] = &v8;
  objc_msgSend_fetchCountOfRecordType_completionHandler_(v3, v4, 0, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (id)searchableIndex
{
  if (objc_msgSend_deviceIsLockedDown(MEMORY[0x1E69A8020], a2, v2))
  {
    v3 = 0;
  }

  else
  {
    v3 = IMCoreSpotlightIndex();
  }

  return v3;
}

- (id)_personIdentityQueue
{
  if (qword_1EBA540D8 != -1)
  {
    sub_1B7CF9184();
  }

  v3 = qword_1EBA540D0;

  return v3;
}

- (id)_scrutinyMessagesQueue
{
  if (qword_1EDBE5BA8 != -1)
  {
    sub_1B7CF9198();
  }

  v3 = qword_1EDBE5B98;

  return v3;
}

+ (Class)__SLCollaborationHandshakeController
{
  if (qword_1EBA540E8 != -1)
  {
    sub_1B7CF91AC();
  }

  v3 = qword_1EBA540E0;

  return v3;
}

- (NSMutableOrderedSet)blocklistMessageGUIDs
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1B7AE1AB0;
  v12 = sub_1B7AE2560;
  v13 = 0;
  v4 = objc_msgSend__scrutinyMessagesQueue(self, a2, v2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7B9E918;
  v7[3] = &unk_1E7CBB6F0;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)setMessageGUIDUnderScrutiny:(id)a3
{
  v4 = a3;
  if (objc_msgSend_length(v4, v5, v6))
  {
    v9 = objc_msgSend__scrutinyMessagesQueue(self, v7, v8);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1B7B9EA1C;
    v18[3] = &unk_1E7CB6770;
    v18[4] = self;
    v19 = v4;
    dispatch_barrier_sync(v9, v18);
  }

  else
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF91C0(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }
}

- (void)clearMessageGUIDFromScrutiny:(id)a3
{
  v4 = a3;
  if (objc_msgSend_length(v4, v5, v6))
  {
    v9 = objc_msgSend__scrutinyMessagesQueue(self, v7, v8);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1B7B9EB84;
    v18[3] = &unk_1E7CB6770;
    v18[4] = self;
    v19 = v4;
    dispatch_barrier_sync(v9, v18);
  }

  else
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF9238(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }
}

- (id)newSearchableItemsForMessageGUID:(id)a3 context:(id)a4 rejectedItems:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1B7AE1AB0;
  v27 = sub_1B7AE2560;
  v28 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = sub_1B7B9EE4C;
  v20 = &unk_1E7CBB6F0;
  v22 = &v23;
  v11 = v8;
  v21 = v11;
  IMDPersistencePerformBlock(&v17, 1, v12);
  v14 = v24[5];
  if (v14)
  {
    v15 = objc_msgSend_newSearchableItemsForMessage_context_rejectedItems_(self, v13, v14, v9, v10, v17, v18, v19, v20);
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(&v23, 8);
  return v15;
}

- (id)newSearchableItemsForMessage:(id)a3 context:(id)a4 rejectedItems:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1B7AE1AB0;
  v30 = sub_1B7AE2560;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1B7AE1AB0;
  v24 = sub_1B7AE2560;
  v25 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7B9F048;
  block[3] = &unk_1E7CBBB48;
  v18 = &v26;
  v11 = v8;
  v17 = v11;
  v19 = &v20;
  IMDPersistencePerformBlock(block, 1, v12);
  v14 = objc_msgSend_newSearchableItemsForMessageItemDictionary_chatDictionary_context_rejectedItems_(self, v13, v27[5], v21[5], v9, v10);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v14;
}

- (id)newSearchableItemsForMessageItemDictionary:(id)a3 chatDictionary:(id)a4 context:(id)a5 rejectedItems:(id)a6
{
  v339 = *MEMORY[0x1E69E9840];
  v283 = a3;
  v286 = a4;
  v282 = a5;
  v281 = a6;
  if ((IMDCoreSpotlightDisabled(v281, v9, v10) & 1) == 0)
  {
    IMDPersistenceCheckNotDatabaseThread();
    v14 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8328], v12, v13);
    isUnderFirstDataProtectionLock = objc_msgSend_isUnderFirstDataProtectionLock(v14, v15, v16);

    if (isUnderFirstDataProtectionLock)
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, " => Before first unlock, skipping indexing", buf, 2u);
        }
      }

      goto LABEL_2;
    }

    v19 = objc_alloc(MEMORY[0x1E695DF70]);
    v277 = objc_msgSend_initWithCapacity_(v19, v20, 2);
    v276 = objc_msgSend_objectForKey_(v283, v21, @"guid");
    v279 = objc_msgSend_objectForKey_(v286, v22, @"guid");
    if (!objc_msgSend_length(v279, v23, v24) || !objc_msgSend_length(v276, v25, v26))
    {
      v37 = IMLogHandleForCategory();
      v38 = v37;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF93A8(v283, v286, v37);
        v38 = v37;
      }

      goto LABEL_119;
    }

    v27 = IMDSpotlightPriorityIndexerClassesForIndexingContext(v282);
    v273 = objc_msgSend_objectForKey_(v286, v28, @"groupName");
    v30 = objc_msgSend_BOOLValueForKey_withDefault_(v286, v29, @"isBlackholed", 0);
    v32 = objc_msgSend_integerValueForKey_withDefault_(v286, v31, @"isFiltered", 0);
    v35 = objc_msgSend_blocklistMessageGUIDs(self, v33, v34);
    if ((objc_msgSend_containsObject_(v35, v36, v276) | v30))
    {

LABEL_15:
      if (IMOSLoggingEnabled())
      {
        v39 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v40 = @"NO";
          if (v30)
          {
            v40 = @"YES";
          }

          *buf = 138412546;
          *&buf[4] = v276;
          *&buf[12] = 2112;
          *&buf[14] = v40;
          _os_log_impl(&dword_1B7AD5000, v39, OS_LOG_TYPE_INFO, "IMDCoreSpotlight - Skipping indexing %@, denylisted - isBlackholed: %@", buf, 0x16u);
        }
      }

      v11 = MEMORY[0x1E695E0F0];
      goto LABEL_120;
    }

    if (v32 == 2)
    {
      goto LABEL_15;
    }

    if (IMOSLoggingEnabled())
    {
      v42 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v276;
        _os_log_impl(&dword_1B7AD5000, v42, OS_LOG_TYPE_INFO, "Indexing placing %@ under scrutiny", buf, 0xCu);
      }
    }

    objc_msgSend_setMessageGUIDUnderScrutiny_(self, v41, v276);
    v43 = objc_alloc(MEMORY[0x1E6964E90]);
    v45 = objc_msgSend_initWithItemContentType_(v43, v44, *MEMORY[0x1E6963848]);
    v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v338 = 0;
    v327 = 0;
    v328 = &v327;
    v329 = 0x2020000000;
    v330 = 0;
    v47 = objc_alloc_init(IMDSpotlightIndexerTimingProfiler);
    v50 = objc_msgSend_spotlightTimeoutSeconds(MEMORY[0x1E69A7FF8], v48, v49);
    objc_msgSend_startMainTimerWithExpectedTimeoutInterval_(v47, v51, v52, v50);
    if (qword_1EBA540F8 != -1)
    {
      sub_1B7CF92B0();
    }

    v323 = 0;
    v324 = &v323;
    v325 = 0x2020000000;
    v326 = 0;
    v53 = dispatch_group_create();
    dispatch_group_enter(v53);
    v54 = qword_1EBA540F0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1B7BA058C;
    block[3] = &unk_1E7CBBB70;
    v264 = v27;
    v309 = v264;
    v268 = v47;
    v310 = v268;
    v320 = &v323;
    v55 = v283;
    v311 = v55;
    v272 = v45;
    v312 = v272;
    v284 = v286;
    v313 = v284;
    v56 = v282;
    v314 = v56;
    v315 = v281;
    v270 = v46;
    v316 = v270;
    v317 = self;
    v321 = buf;
    v322 = &v327;
    v289 = v276;
    v318 = v289;
    group = v53;
    v319 = group;
    dispatch_async(v54, block);
    v59 = objc_msgSend_spotlightTimeoutSeconds(MEMORY[0x1E69A7FF8], v57, v58);
    v60 = dispatch_time(0, 1000000000 * v59);
    if (dispatch_group_wait(group, v60))
    {
      objc_msgSend_stopMainTimerAndLogAfterFailure(v268, v61, v62, v264);
      if (objc_msgSend_exitOnIndexingTimeout(MEMORY[0x1E69A7FF8], v63, v64))
      {
        v263 = IMLogHandleForCategory();
        if (os_log_type_enabled(v263, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF9340();
        }

        exit(1);
      }

      v65 = IMLogHandleForCategory();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF92D8();
      }
    }

    if ((v324[3] & 1) == 0)
    {
      objc_msgSend_stopMainTimerAndLogAfterSuccess(v268, v61, v62);
    }

    if (v328[3])
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_44;
      }

      v67 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        *v333 = 138412290;
        *v334 = v289;
        _os_log_impl(&dword_1B7AD5000, v67, OS_LOG_TYPE_INFO, "Indexing NOT removing %@ from scrutiny, exception was thrown", v333, 0xCu);
      }
    }

    else
    {
      objc_msgSend_clearMessageGUIDFromScrutiny_(self, v61, v289);
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_44;
      }

      v67 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        *v333 = 138412290;
        *v334 = v289;
        _os_log_impl(&dword_1B7AD5000, v67, OS_LOG_TYPE_INFO, "Indexing removing %@ from scrutiny", v333, 0xCu);
      }
    }

LABEL_44:
    v271 = objc_msgSend_objectForKey_(v55, v66, @"threadOriginatorFormattedGUID", v264);
    if ((*(*&buf[8] + 24) & 1) == 0)
    {
      v278 = objc_msgSend_objectForKey_(v55, v68, @"attributedBody");
      v287 = objc_msgSend_objectForKey_(v55, v87, @"time");
      v88 = objc_alloc(MEMORY[0x1E69A8118]);
      v90 = objc_msgSend_initWithMessageBody_messageGUID_(v88, v89, v278, v289);
      if ((objc_msgSend__shouldSkipMessagePartPrefixingForItemDictionary_(self, v91, v55) & 1) != 0 || (objc_msgSend_messageParts(v90, v92, v93), v94 = objc_claimAutoreleasedReturnValue(), v274 = v90, v97 = objc_msgSend_count(v94, v95, v96) > 1, v94, !v97))
      {
        v139 = objc_msgSend_messageBody(v90, v92, v93);
        v142 = objc_msgSend_string(v139, v140, v141);
        objc_msgSend_associateMessageEntityWithIdentifier_displayTitle_displaySubtitle_date_(v272, v143, v289, v142, v273, v287);

        v144 = v271;
        if (!v271)
        {
          v144 = v289;
        }

        v145 = v144;
        v146 = objc_opt_class();
        v149 = objc_msgSend_threadIdentifierCustomKey(v146, v147, v148);
        objc_msgSend_setValue_forCustomKey_(v272, v150, v145, v149);

        v151 = objc_alloc(MEMORY[0x1E6964E80]);
        v269 = objc_msgSend_initWithUniqueIdentifier_domainIdentifier_attributeSet_(v151, v152, v289, v279, v272);
        v155 = objc_msgSend_distantFuture(MEMORY[0x1E695DF00], v153, v154);
        objc_msgSend_setExpirationDate_(v269, v156, v155);

        if (v269 && (objc_msgSend__updateFilteringForSearchableItem_chatDictionary_(self, v157, v269, v284), objc_msgSend_addObject_(v277, v158, v269), (objc_msgSend_isReindexing(v56, v159, v160) & 1) == 0) && (MessageDate = objc_msgSend_newChatSearchableItemForChatDictionary_optionalLastMessageDate_(self, v161, v284, v287)) != 0)
        {
          objc_msgSend_addObject_(v277, v162, MessageDate);
        }

        else
        {
          MessageDate = 0;
        }

        goto LABEL_74;
      }

      v306 = 0u;
      v307 = 0u;
      v304 = 0u;
      v305 = 0u;
      v98 = objc_msgSend_messageParts(v90, v92, v93);
      v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(v98, v99, &v304, v336, 16);
      if (v102)
      {
        v103 = *v305;
        v104 = *MEMORY[0x1E69A5F00];
        v291 = *MEMORY[0x1E69A5F20];
        obj = v98;
        do
        {
          for (i = 0; i != v102; ++i)
          {
            if (*v305 != v103)
            {
              objc_enumerationMutation(obj);
            }

            v106 = *(*(&v304 + 1) + 8 * i);
            v107 = objc_msgSend_messagePartBody(v106, v100, v101);
            v110 = objc_msgSend_string(v107, v108, v109);

            if ((objc_msgSend_isEqualToString_(v110, v111, v104) & 1) == 0 && (objc_msgSend_isEqualToString_(v110, v112, v291) & 1) == 0)
            {
              v115 = objc_msgSend_copy(v272, v113, v114);
              v117 = objc_msgSend_messagePartGUIDForMessageGUID_(v106, v116, v289);
              v120 = objc_msgSend_encodedMessagePartGUID(v117, v118, v119);

              objc_msgSend_associateMessageEntityWithIdentifier_displayTitle_displaySubtitle_date_(v115, v121, v120, v110, v273, v287);
              objc_msgSend_setTextContent_(v115, v122, v110);
              v123 = v271;
              if (!v271)
              {
                v123 = v120;
              }

              v124 = v123;
              v125 = objc_opt_class();
              v128 = objc_msgSend_threadIdentifierCustomKey(v125, v126, v127);
              objc_msgSend_setValue_forCustomKey_(v115, v129, v124, v128);

              v130 = objc_alloc(MEMORY[0x1E6964E80]);
              v132 = objc_msgSend_initWithUniqueIdentifier_domainIdentifier_attributeSet_(v130, v131, v120, v279, v115);
              v135 = objc_msgSend_distantFuture(MEMORY[0x1E695DF00], v133, v134);
              objc_msgSend_setExpirationDate_(v132, v136, v135);

              if (v132)
              {
                objc_msgSend__updateFilteringForSearchableItem_chatDictionary_(self, v137, v132, v284);
                objc_msgSend_addObject_(v277, v138, v132);
              }
            }
          }

          v98 = obj;
          v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v100, &v304, v336, 16);
        }

        while (v102);
      }
    }

    if (!objc_msgSend_count(v270, v68, v69))
    {
      MessageDate = 0;
      v269 = 0;
      goto LABEL_76;
    }

    v72 = v271;
    if (!v271)
    {
      v72 = v289;
    }

    v278 = v72;
    v73 = objc_opt_class();
    v76 = objc_msgSend_threadIdentifierCustomKey(v73, v74, v75);
    objc_msgSend_setValue_forCustomKey_(v272, v77, v278, v76);

    objc_msgSend_setDisableSearchInSpotlight_(v272, v78, MEMORY[0x1E695E118]);
    v79 = objc_alloc(MEMORY[0x1E6964E80]);
    v269 = objc_msgSend_initWithUniqueIdentifier_domainIdentifier_attributeSet_(v79, v80, v289, v279, v272);
    v83 = objc_msgSend_distantFuture(MEMORY[0x1E695DF00], v81, v82);
    objc_msgSend_setExpirationDate_(v269, v84, v83);

    objc_msgSend__updateFilteringForSearchableItem_chatDictionary_(self, v85, v269, v284);
    objc_msgSend_addObject_(v277, v86, v269);
    MessageDate = 0;
LABEL_74:

LABEL_76:
    if (objc_msgSend_count(v270, v70, v71))
    {
      objc_msgSend_addObjectsFromArray_(v277, v163, v270);
    }

    if (objc_msgSend_count(v277, v163, v164))
    {
      v285 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v275 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v302 = 0u;
      v303 = 0u;
      v300 = 0u;
      v301 = 0u;
      obja = v277;
      v166 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v165, &v300, v335, 16);
      if (!v166)
      {
        goto LABEL_102;
      }

      v288 = *v301;
      while (1)
      {
        v290 = v166;
        for (j = 0; j != v290; ++j)
        {
          if (*v301 != v288)
          {
            objc_enumerationMutation(obja);
          }

          v170 = *(*(&v300 + 1) + 8 * j);
          v171 = objc_msgSend_attributeSet(v170, v167, v168);
          v174 = objc_msgSend_messageType(v171, v172, v173);

          if (objc_msgSend_isEqualToString_(v174, v175, @"lnk"))
          {
            v178 = objc_msgSend_attributeSet(v170, v176, v177);
            v292 = objc_msgSend_contentCreationDate(v178, v179, v180);

            v183 = objc_msgSend_currentCalendar(MEMORY[0x1E695DEE8], v181, v182);
            v186 = objc_msgSend_now(MEMORY[0x1E695DF00], v184, v185);
            v188 = objc_msgSend_dateByAddingUnit_value_toDate_options_(v183, v187, 16, -30, v186, 0);

            v191 = objc_msgSend_currentCalendar(MEMORY[0x1E695DEE8], v189, v190);
            v193 = objc_msgSend_startOfDayForDate_(v191, v192, v188);

            if (objc_msgSend_compare_(v292, v194, v193) == 1)
            {
              objc_msgSend_addObject_(v285, v195, v170);
            }

            else if (IMOSLoggingEnabled())
            {
              v198 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v198, OS_LOG_TYPE_INFO))
              {
                v201 = objc_msgSend_attributeSet(v170, v199, v200);
                v204 = objc_msgSend_uniqueIdentifier(v201, v202, v203);
                *v333 = 67109378;
                *v334 = 30;
                *&v334[4] = 2112;
                *&v334[6] = v204;
                _os_log_impl(&dword_1B7AD5000, v198, OS_LOG_TYPE_INFO, "Skipping adding resolvedURL since link is older than %d days: %@", v333, 0x12u);
              }
            }

            v205 = objc_msgSend_attributeSet(v170, v196, v197);
            v208 = objc_msgSend_isShared(v205, v206, v207);
            v211 = objc_msgSend_BOOLValue(v208, v209, v210);

            if (v211)
            {
              v214 = objc_msgSend_attributeSet(v170, v212, v213);
              v217 = objc_msgSend_collaborationMetadataKey(IMDSharedWithYouMetadataManager, v215, v216);
              v219 = objc_msgSend_valueForCustomKey_(v214, v218, v217);

              v220 = MEMORY[0x1E696ACD0];
              v221 = MEMORY[0x1E695DFD8];
              v332 = objc_opt_class();
              v223 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v222, &v332, 1);
              v225 = objc_msgSend_setWithArray_(v221, v224, v223);
              v299 = 0;
              v227 = objc_msgSend__strictlyUnarchivedObjectOfClasses_fromData_error_(v220, v226, v225, v219, &v299);
              v228 = v299;

              if (v227)
              {
                v231 = objc_msgSend_collaborationIdentifier(v227, v229, v230);
                if (v231)
                {
                  if (objc_opt_respondsToSelector())
                  {

                    goto LABEL_97;
                  }

                  v235 = objc_msgSend_handleToIdentityMap(v227, v232, v233);
                  v236 = v235 == 0;

                  if (!v236)
                  {
LABEL_97:
                    objc_msgSend_addObject_(v275, v234, v170);
                  }
                }
              }
            }
          }
        }

        v166 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v167, &v300, v335, 16);
        if (!v166)
        {
LABEL_102:

          if (objc_msgSend_count(v275, v237, v238))
          {
            v297 = 0u;
            v298 = 0u;
            v295 = 0u;
            v296 = 0u;
            v241 = v275;
            v244 = objc_msgSend_countByEnumeratingWithState_objects_count_(v241, v242, &v295, v331, 16);
            if (v244)
            {
              v245 = *v296;
              do
              {
                for (k = 0; k != v244; ++k)
                {
                  if (*v296 != v245)
                  {
                    objc_enumerationMutation(v241);
                  }

                  v247 = objc_msgSend_indexOfObject_(obja, v243, *(*(&v295 + 1) + 8 * k));
                  v249 = objc_msgSend_objectAtIndex_(obja, v248, v247);
                  if (IMOSLoggingEnabled())
                  {
                    v251 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v251, OS_LOG_TYPE_INFO))
                    {
                      v254 = objc_msgSend_attributeSet(v249, v252, v253);
                      v257 = objc_msgSend_uniqueIdentifier(v254, v255, v256);
                      *v333 = 138412290;
                      *v334 = v257;
                      _os_log_impl(&dword_1B7AD5000, v251, OS_LOG_TYPE_INFO, "Setting CS Item with uniqueidentifier  %@ to be updatable", v333, 0xCu);
                    }
                  }

                  objc_msgSend_setIsUpdate_(v249, v250, 1);
                }

                v244 = objc_msgSend_countByEnumeratingWithState_objects_count_(v241, v243, &v295, v331, 16);
              }

              while (v244);
            }
          }

          if (objc_msgSend_count(v285, v239, v240))
          {
            objc_msgSend__resolvedURLForItems_(self, v258, v285);
            objc_msgSend__FPProviderIDForItems_(self, v259, v285);
            objc_msgSend_reIndexWithLocalProofOfInclusionForItemsAsync_completionHandler_(self, v260, v285, &unk_1F2FA0EF0);
          }

          break;
        }
      }
    }

    _Block_object_dispose(&v323, 8);
    _Block_object_dispose(&v327, 8);
    _Block_object_dispose(buf, 8);

    v38 = v269;
LABEL_119:

    v11 = v277;
LABEL_120:

    goto LABEL_121;
  }

LABEL_2:
  v11 = 0;
LABEL_121:

  v261 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)_updateFilteringForSearchableItem:(id)a3 chatDictionary:(id)a4
{
  v23 = a3;
  v5 = a4;
  v8 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8018], v6, v7);
  v10 = objc_msgSend_getValueFromDomain_forKey_(v8, v9, @"com.apple.MobileSMS", @"spamFiltrationExtensionID");
  if (objc_msgSend_isEqualToString_(v10, v11, @"com.apple.smsFilter.extension"))
  {
    v13 = objc_msgSend_objectForKey_(v5, v12, @"properties");
    v15 = objc_msgSend_objectForKey_(v13, v14, @"SMSSubCategory");
    v18 = objc_msgSend_integerValue(v15, v16, v17);

    if (v18 == 4)
    {
      v21 = objc_msgSend_attributeSet(v23, v19, v20);
      objc_msgSend_setPotentialEventMessage_(v21, v22, MEMORY[0x1E695E118]);
    }
  }
}

- (void)_postProcessIndexingForItem:(id)a3 chatDictionary:(id)a4 isReindexing:(BOOL)a5
{
  v6 = a4;
  v20 = objc_msgSend_objectForKeyedSubscript_(v6, v7, @"guid");
  v9 = objc_msgSend_objectForKeyedSubscript_(v6, v8, @"groupPhotoGUID");
  v11 = objc_msgSend_objectForKeyedSubscript_(v6, v10, @"groupPhotoPath");

  if (objc_msgSend_length(v9, v12, v13) && objc_msgSend_length(v11, v14, v15))
  {
    v18 = objc_msgSend__donationManager(self, v16, v17);
    objc_msgSend_copyGroupPhotoToExternalPathIfNecessary_chatGUID_attachmentFilepath_(v18, v19, v9, v20, v11);
  }
}

+ (id)resolvedURLCustomKey
{
  if (qword_1EBA54108 != -1)
  {
    sub_1B7CF9470();
  }

  v3 = qword_1EBA54100;

  return v3;
}

- (void)_updateItem:(id)a3 withResolvedURL:(id)a4
{
  v53[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ((IMDCoreSpotlightDisabled(v7, v8, v9) & 1) == 0)
  {
    if (objc_msgSend_length(v7, v10, v11))
    {
      v12 = objc_alloc(MEMORY[0x1E6964E90]);
      v14 = objc_msgSend_initWithItemContentType_(v12, v13, *MEMORY[0x1E6963848]);
      v15 = objc_opt_class();
      v18 = objc_msgSend_resolvedURLCustomKey(v15, v16, v17);
      objc_msgSend_setValue_forCustomKey_(v14, v19, v7, v18);

      v22 = objc_msgSend_attributeSet(v6, v20, v21);
      v25 = objc_msgSend_bundleID(v22, v23, v24);
      objc_msgSend_setBundleID_(v14, v26, v25);

      v29 = objc_msgSend_attributeSet(v6, v27, v28);
      v32 = objc_msgSend_identifier(v29, v30, v31);
      objc_msgSend_setIdentifier_(v14, v33, v32);

      v34 = objc_alloc(MEMORY[0x1E6964E80]);
      v37 = objc_msgSend_uniqueIdentifier(v6, v35, v36);
      v40 = objc_msgSend_domainIdentifier(v6, v38, v39);
      v42 = objc_msgSend_initWithUniqueIdentifier_domainIdentifier_attributeSet_(v34, v41, v37, v40, v14);

      objc_msgSend_setIsUpdate_(v42, v43, 1);
      v46 = objc_msgSend_searchableIndex(self, v44, v45);
      v53[0] = v42;
      v48 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v47, v53, 1);
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = sub_1B7BA0D98;
      v51[3] = &unk_1E7CB6C58;
      v52 = v6;
      objc_msgSend_indexSearchableItems_completionHandler_(v46, v49, v48, v51);
    }

    else
    {
      v14 = IMLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF9484();
      }
    }
  }

  v50 = *MEMORY[0x1E69E9840];
}

- (void)_updateItem:(id)a3 withFPProviderID:(id)a4
{
  v63[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ((IMDCoreSpotlightDisabled(v7, v8, v9) & 1) == 0)
  {
    if (objc_msgSend_length(v7, v10, v11))
    {
      v12 = objc_alloc(MEMORY[0x1E6964E90]);
      v14 = objc_msgSend_initWithItemContentType_(v12, v13, *MEMORY[0x1E6963848]);
      objc_msgSend_setFileProviderID_(v14, v15, v7);
      v18 = objc_msgSend_attributeSet(v6, v16, v17);
      v21 = objc_msgSend_bundleID(v18, v19, v20);
      objc_msgSend_setBundleID_(v14, v22, v21);

      v25 = objc_msgSend_attributeSet(v6, v23, v24);
      v28 = objc_msgSend_identifier(v25, v26, v27);
      objc_msgSend_setIdentifier_(v14, v29, v28);

      v32 = objc_msgSend_attributeSet(v6, v30, v31);
      v35 = objc_msgSend_contentType(v32, v33, v34);
      objc_msgSend_setContentType_(v14, v36, v35);

      v39 = objc_msgSend_attributeSet(v6, v37, v38);
      v42 = objc_msgSend_contentTypeTree(v39, v40, v41);
      objc_msgSend_setContentTypeTree_(v14, v43, v42);

      v44 = objc_alloc(MEMORY[0x1E6964E80]);
      v47 = objc_msgSend_uniqueIdentifier(v6, v45, v46);
      v50 = objc_msgSend_domainIdentifier(v6, v48, v49);
      v52 = objc_msgSend_initWithUniqueIdentifier_domainIdentifier_attributeSet_(v44, v51, v47, v50, v14);

      objc_msgSend_setIsUpdate_(v52, v53, 1);
      v56 = objc_msgSend_searchableIndex(self, v54, v55);
      v63[0] = v52;
      v58 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v57, v63, 1);
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = sub_1B7BA1168;
      v61[3] = &unk_1E7CB6C58;
      v62 = v6;
      objc_msgSend_indexSearchableItems_completionHandler_(v56, v59, v58, v61);
    }

    else
    {
      v14 = IMLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF94C0();
      }
    }
  }

  v60 = *MEMORY[0x1E69E9840];
}

- (void)_updateItem:(id)a3 withIdentityMap:(id)a4 localIdentity:(id)a5 localIdentityProof:(id)a6 completionHandler:(id)a7
{
  v109 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (IMDCoreSpotlightDisabled(v16, v17, v18))
  {
LABEL_12:
    v16[2](v16);
    goto LABEL_17;
  }

  if (!v13 || !v14 || !v15)
  {
    v88 = IMLogHandleForCategory();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v104 = v14;
      v105 = 2112;
      v106 = v15;
      v107 = 2112;
      v108 = v13;
      _os_log_error_impl(&dword_1B7AD5000, v88, OS_LOG_TYPE_ERROR, "Invalid localIdentity: %@, localIdentityProof: %@ or identityMap: %@", buf, 0x20u);
    }

    goto LABEL_12;
  }

  v19 = objc_alloc(MEMORY[0x1E6964E90]);
  v21 = objc_msgSend_initWithItemContentType_(v19, v20, *MEMORY[0x1E6963848]);
  v101 = 0;
  v23 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v22, v14, 1, &v101);
  v24 = v101;
  v100 = 0;
  v94 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v25, v15, 1, &v100);
  v95 = v100;
  v99 = 0;
  v27 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v26, v13, 1, &v99);
  v28 = v99;
  v93 = v28;
  if (v24 || v95 || v28)
  {
    v89 = IMLogHandleForCategory();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v104 = v24;
      v105 = 2112;
      v106 = v95;
      v107 = 2112;
      v108 = v93;
      _os_log_error_impl(&dword_1B7AD5000, v89, OS_LOG_TYPE_ERROR, "Archive error for localIdentity: %@, localIdentityProof: %@ or identityMap: %@", buf, 0x20u);
    }

    v16[2](v16);
  }

  else
  {
    objc_msgSend_attributeSet(v12, v29, v30);
    v31 = v92 = v27;
    v34 = objc_msgSend_bundleID(v31, v32, v33);
    objc_msgSend_setBundleID_(v21, v35, v34);

    v38 = objc_msgSend_attributeSet(v12, v36, v37);
    v41 = objc_msgSend_identifier(v38, v39, v40);
    objc_msgSend_setIdentifier_(v21, v42, v41);

    v43 = objc_opt_class();
    v46 = objc_msgSend_localIdentityKey(v43, v44, v45);
    objc_msgSend_setValue_forCustomKey_(v21, v47, v23, v46);

    v48 = objc_opt_class();
    v51 = objc_msgSend_localIdentityProofKey(v48, v49, v50);
    objc_msgSend_setValue_forCustomKey_(v21, v52, v94, v51);

    v53 = objc_opt_class();
    v56 = objc_msgSend_handleToIdentityMapKey(v53, v54, v55);
    objc_msgSend_setValue_forCustomKey_(v21, v57, v92, v56);

    v60 = objc_msgSend_attributeSet(v12, v58, v59);
    v63 = objc_msgSend_contentType(v60, v61, v62);
    objc_msgSend_setContentType_(v21, v64, v63);

    v67 = objc_msgSend_attributeSet(v12, v65, v66);
    v70 = objc_msgSend_contentTypeTree(v67, v68, v69);
    objc_msgSend_setContentTypeTree_(v21, v71, v70);

    v72 = objc_alloc(MEMORY[0x1E6964E80]);
    v75 = objc_msgSend_uniqueIdentifier(v12, v73, v74);
    objc_msgSend_domainIdentifier(v12, v76, v77);
    v78 = v91 = v23;
    v80 = objc_msgSend_initWithUniqueIdentifier_domainIdentifier_attributeSet_(v72, v79, v75, v78, v21);

    v24 = 0;
    objc_msgSend_setIsUpdate_(v80, v81, 1);
    v84 = objc_msgSend_searchableIndex(self, v82, v83);
    v102 = v80;
    v86 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v85, &v102, 1);
    v96[0] = MEMORY[0x1E69E9820];
    v96[1] = 3221225472;
    v96[2] = sub_1B7BA17A0;
    v96[3] = &unk_1E7CBB398;
    v97 = v12;
    v98 = v16;
    objc_msgSend_indexSearchableItems_completionHandler_(v84, v87, v86, v96);

    v23 = v91;
    v27 = v92;
  }

LABEL_17:
  v90 = *MEMORY[0x1E69E9840];
}

- (void)_resolvedURLForItems:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v48 = objc_msgSend_count(v3, v5, v6);
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Checking if we need to add resolved URLs for %lu items", buf, 0xCu);
    }
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v7 = v3;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v43, v51, 16);
  if (v11)
  {
    v13 = *v44;
    *&v12 = 138412546;
    v40 = v12;
    do
    {
      v14 = 0;
      do
      {
        if (*v44 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v43 + 1) + 8 * v14);
        v16 = objc_msgSend_attributeSet(v15, v9, v10, v40);
        v21 = objc_msgSend_URL(v16, v17, v18);
        if (qword_1EBA54178 != -1)
        {
          sub_1B7CF9528();
        }

        isNewsURL = objc_msgSend_nr_isNewsURL(v21, v19, v20);
        isWebURL = objc_msgSend_nr_isWebURL(v21, v23, v24);
        if (IMOSLoggingEnabled())
        {
          v28 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            if (isNewsURL)
            {
              v29 = @"YES";
            }

            else
            {
              v29 = @"NO";
            }

            *buf = v40;
            v48 = v29;
            if (isWebURL)
            {
              v30 = @"YES";
            }

            else
            {
              v30 = @"NO";
            }

            v49 = 2112;
            v50 = v30;
            _os_log_impl(&dword_1B7AD5000, v28, OS_LOG_TYPE_INFO, "isNewsURL: %@ isWebURL:%@", buf, 0x16u);
          }
        }

        if ((isNewsURL | isWebURL))
        {
          v31 = objc_msgSend_sharedManager(qword_1EBA54110, v26, v27);
          v33 = v31;
          if (isNewsURL)
          {
            objc_msgSend_createResolutionOperationForNewsURL_(v31, v32, v21);
          }

          else
          {
            objc_msgSend_createResolutionOperationForWebURL_(v31, v32, v21);
          }
          v35 = ;

          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = sub_1B7BA1C78;
          v42[3] = &unk_1E7CBB3E8;
          v42[4] = v15;
          v42[5] = self;
          objc_msgSend_setResolutionCompletion_(v35, v36, v42);
          objc_msgSend_start(v35, v37, v38);
        }

        else if (IMOSLoggingEnabled())
        {
          v34 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1B7AD5000, v34, OS_LOG_TYPE_INFO, "URL was not classified as either WebURL or a News URL", buf, 2u);
          }
        }

        ++v14;
      }

      while (v11 != v14);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v43, v51, 16);
    }

    while (v11);
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (void)_FPProviderIDForItems:(id)a3
{
  v29 = self;
  v43 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v42 = objc_msgSend_count(v3, v5, v6);
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Checking if we need to add FileProviderID for %lu items", buf, 0xCu);
    }
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v3;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v36, v40, 16);
  if (v10)
  {
    v11 = *v37;
    do
    {
      v12 = 0;
      do
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v36 + 1) + 8 * v12);
        v14 = objc_msgSend_attributeSet(v13, v8, v9, v29);
        v17 = objc_msgSend_URL(v14, v15, v16);
        v20 = objc_msgSend_isShared(v14, v18, v19);
        v23 = objc_msgSend_BOOLValue(v20, v21, v22);

        if (((v17 != 0) & v23) == 1)
        {
          if (qword_1EBA54120 != -1)
          {
            sub_1B7CF95C0();
          }

          v24 = off_1EBA54118;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = sub_1B7BA21E0;
          aBlock[3] = &unk_1E7CBB438;
          v25 = v17;
          v32 = v25;
          v33 = v14;
          v34 = v29;
          v35 = v13;
          v26 = _Block_copy(aBlock);
          v24(v25, 0, v26);
        }

        else if (IMOSLoggingEnabled())
        {
          v27 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_INFO, "URL was not classified as a CollaborationURL", buf, 2u);
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v36, v40, 16);
    }

    while (v10);
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)reIndexWithLocalProofOfInclusionForItemsAsync:(id)a3 completionHandler:(id)a4
{
  v123 = *MEMORY[0x1E69E9840];
  v5 = a3;
  block = a4;
  group = dispatch_group_create();
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = objc_msgSend_count(v5, v7, v8, block);
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Generating and donating local proof of inclusion for %lu items", &buf, 0xCu);
    }
  }

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  obj = v5;
  v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v109, v122, 16);
  if (v87)
  {
    v85 = *v110;
    v81 = v96;
    do
    {
      v12 = 0;
      do
      {
        if (*v110 != v85)
        {
          v13 = v12;
          objc_enumerationMutation(obj);
          v12 = v13;
        }

        v90 = v12;
        v14 = *(*(&v109 + 1) + 8 * v12);
        v92 = objc_msgSend_attributeSet(v14, v10, v11, block, v81);
        v91 = objc_msgSend_URL(v92, v15, v16);
        v19 = objc_msgSend_isShared(v92, v17, v18);
        v22 = objc_msgSend_BOOLValue(v19, v20, v21);

        if (((v91 != 0) & v22) == 1)
        {
          v25 = objc_msgSend_attributeSet(v14, v23, v24);
          v86 = objc_msgSend_accountHandles(v25, v26, v27);

          v30 = objc_msgSend_attributeSet(v14, v28, v29);
          v33 = objc_msgSend_collaborationMetadataKey(IMDSharedWithYouMetadataManager, v31, v32);
          v89 = objc_msgSend_valueForCustomKey_(v30, v34, v33);

          v35 = MEMORY[0x1E696ACD0];
          v36 = MEMORY[0x1E695DFD8];
          v121 = objc_opt_class();
          v38 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v37, &v121, 1);
          v40 = objc_msgSend_setWithArray_(v36, v39, v38);
          v108 = 0;
          v42 = objc_msgSend__strictlyUnarchivedObjectOfClasses_fromData_error_(v35, v41, v40, v89, &v108);
          v88 = v108;

          if (v42)
          {
            v45 = objc_msgSend_collaborationIdentifier(v42, v43, v44);
            v46 = v45 == 0;

            if (v46)
            {
              v76 = IMLogHandleForCategory();
              if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
              {
                sub_1B7CF96A0(&v106, v107);
              }
            }

            else
            {
              if (objc_opt_respondsToSelector())
              {
                v49 = objc_msgSend_handleToIdentityMap(v42, v47, v48);
                v50 = v49 == 0;

                if (!v50)
                {
                  *&buf = 0;
                  *(&buf + 1) = &buf;
                  v115 = 0x3032000000;
                  v116 = sub_1B7AE1AB0;
                  v117 = sub_1B7AE2560;
                  v118 = 0;
                  v102 = 0u;
                  v103 = 0u;
                  v104 = 0u;
                  v105 = 0u;
                  v51 = v86;
                  v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v52, &v102, v113, 16);
                  if (v53)
                  {
                    v54 = *v103;
                    do
                    {
                      for (i = 0; i != v53; ++i)
                      {
                        if (*v103 != v54)
                        {
                          objc_enumerationMutation(v51);
                        }

                        v56 = *(*(&v102 + 1) + 8 * i);
                        if (objc_opt_respondsToSelector())
                        {
                          v59 = objc_msgSend_handleToIdentityMap(v42, v57, v58);
                          v61 = objc_msgSend_objectForKey_(v59, v60, v56);

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            objc_storeStrong((*(&buf + 1) + 40), v61);
                          }
                        }
                      }

                      v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v57, &v102, v113, 16);
                    }

                    while (v53);
                  }

                  v64 = objc_alloc(objc_msgSend___SLCollaborationHandshakeController(IMDLegacyCoreSpotlightManager, v62, v63));
                  v67 = objc_msgSend__personIdentityQueue(self, v65, v66);
                  v69 = objc_msgSend_initWithTargetSerialQueue_synchronous_(v64, v68, v67, 1);

                  if (v69)
                  {
                    if (objc_opt_respondsToSelector())
                    {
                      dispatch_group_enter(group);
                      v70 = *(*(&buf + 1) + 40);
                      v73 = objc_msgSend_collaborationIdentifier(v42, v71, v72);
                      v95[0] = MEMORY[0x1E69E9820];
                      v95[1] = 3221225472;
                      v96[0] = sub_1B7BA3068;
                      v96[1] = &unk_1E7CBBB98;
                      p_buf = &buf;
                      v96[2] = self;
                      v96[3] = v14;
                      v97 = v42;
                      v98 = group;
                      objc_msgSend_generateProofForIdentity_collaborationIdentifier_timeout_completion_(v69, v74, v70, v73, v95, 10.0);

                      goto LABEL_49;
                    }

                    v77 = IMLogHandleForCategory();
                    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
                    {
                      sub_1B7CF9638(&v93, v94);
                    }
                  }

                  else
                  {
                    v77 = IMLogHandleForCategory();
                    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
                    {
                      sub_1B7CF966C(&v100, v101);
                    }
                  }

LABEL_49:
                  _Block_object_dispose(&buf, 8);

LABEL_50:
                  goto LABEL_51;
                }
              }

              if (!IMOSLoggingEnabled())
              {
                goto LABEL_50;
              }

              v76 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
              {
                LOWORD(buf) = 0;
                _os_log_impl(&dword_1B7AD5000, v76, OS_LOG_TYPE_INFO, "handleToIdentityMap is required for identity proof lookup. Not indexing proof of inclusion this item. This may not be a generic 3rd party collaboration.", &buf, 2u);
              }
            }
          }

          else
          {
            v76 = IMLogHandleForCategory();
            if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
            {
              sub_1B7CF96D4(v119, v88, &v120, v76);
            }
          }

          goto LABEL_50;
        }

        if (IMOSLoggingEnabled())
        {
          v75 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_1B7AD5000, v75, OS_LOG_TYPE_INFO, "URL was not classified as a CollaborationURL", &buf, 2u);
          }
        }

LABEL_51:

        v12 = v90 + 1;
      }

      while (v90 + 1 != v87);
      v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v109, v122, 16);
    }

    while (v87);
  }

  v78 = IMDIndexingClientRequestQueue();
  dispatch_group_notify(group, v78, block);

  v79 = *MEMORY[0x1E69E9840];
}

- (id)newChatSearchableItemForChatDictionary:(id)a3 optionalLastMessageDate:(id)a4
{
  v6 = a3;
  v13 = 0;
  v8 = objc_msgSend_newChatSearchableItemForChatDictionary_optionalLastMessageDate_error_(self, v7, v6, a4, &v13);
  v9 = v13;
  if (v9)
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF97E4();
    }

    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF984C();
    }
  }

  return v8;
}

- (id)newChatSearchableItemForChatDictionary:(id)a3 optionalLastMessageDate:(id)a4 error:(id *)a5
{
  v123 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    IMDPersistenceCheckNotDatabaseThread();
    v9 = _IMDCoreSpotlightChatUIDForChatDictionary(v7);
    v11 = objc_msgSend_objectForKey_(v7, v10, @"guid");
    v13 = v11;
    if (!v9 || !v11)
    {
      if (!a5)
      {
        v40 = 0;
LABEL_43:

        goto LABEL_44;
      }

      v41 = MEMORY[0x1E696ABC0];
      v120 = *MEMORY[0x1E696A578];
      v42 = MEMORY[0x1E696AEC0];
      v43 = objc_msgSend_objectForKeyedSubscript_(v7, v12, @"chatIdentifier");
      v45 = objc_msgSend_objectForKeyedSubscript_(v7, v44, @"groupID");
      v47 = objc_msgSend_objectForKeyedSubscript_(v7, v46, @"style");
      v112 = v13;
      v49 = objc_msgSend_stringWithFormat_(v42, v48, @"Chat dictionary malformed. unique identifier %@ guid %@ chat identifier %@ group ID %@ style %@", v9, v13, v43, v45, v47);
      v121 = v49;
      v51 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v50, &v121, &v120, 1);
      objc_msgSend_errorWithDomain_code_userInfo_(v41, v52, @"com.apple.Messages.IMDCoreSpotlight", 1, v51);
      *a5 = v40 = 0;
LABEL_42:

      v13 = v112;
      goto LABEL_43;
    }

    v110 = v9;
    v14 = objc_msgSend_objectForKey_(v7, v12, @"lastMessageDate");
    v15 = v14;
    v111 = v8;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v8;
    }

    v17 = v16;

    v18 = objc_alloc(MEMORY[0x1E6964E90]);
    v20 = objc_msgSend_initWithItemContentType_(v18, v19, *MEMORY[0x1E6963848]);
    v112 = v13;
    objc_msgSend_setAccountIdentifier_(v20, v21, v13);
    v108 = v20;
    v109 = v17;
    objc_msgSend_setLastUsedDate_(v20, v22, v17);
    v24 = objc_msgSend_objectForKey_(v7, v23, @"participants");
    v115 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v114 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v25 = v24;
    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v116, v122, 16);
    obj = v25;
    if (v27)
    {
      v28 = v27;
      LOBYTE(v29) = 0;
      v30 = *v117;
      v31 = MEMORY[0x1E69A7AF0];
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v117 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v116 + 1) + 8 * i);
          v34 = _IMDCoreSpotlightCNContactForAddress(v33);
          if (!((v34 == 0) | v29 & 1))
          {
            objc_opt_class();
            v29 = objc_opt_isKindOfClass() ^ 1;
          }

          v35 = _IMDCoreSpotlightFullNameForContact(v34, 0);
          if (!v35)
          {
            v35 = v33;
          }

          v37 = _IMDCoreSpotlightPerson(v35, v33, v34, *v31);
          if (v37)
          {
            objc_msgSend_addObject_(v115, v36, v37);
            objc_msgSend_addObject_(v114, v38, v33);
          }
        }

        v25 = obj;
        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v39, &v116, v122, 16);
      }

      while (v28);
    }

    else
    {
      LOBYTE(v29) = 0;
    }

    objc_msgSend_setPrimaryRecipients_(v108, v53, v115);
    objc_msgSend_setRecipientAddresses_(v108, v54, v114);
    v56 = objc_msgSend_integerValueForKey_withDefault_(v7, v55, @"isFiltered", 0);
    v59 = objc_msgSend_objectForKey_(v7, v57, @"groupName");
    if (v59 && v29 & 1 | (v56 == 0))
    {
      objc_msgSend_setSubject_(v108, v58, v59);
      objc_msgSend_setDisplayName_(v108, v60, v59);
    }

    v61 = objc_msgSend_valueForKey_(v7, v58, @"style");

    if (v61)
    {
      v63 = objc_msgSend_valueForKey_(v7, v62, @"style");
      v66 = objc_msgSend_charValue(v63, v64, v65);

      v68 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v67, @"%c", v66);
      v69 = objc_opt_class();
      v72 = objc_msgSend_chatStyleCustomKey(v69, v70, v71);
      objc_msgSend_setValue_forCustomKey_(v108, v73, v68, v72);

      v75 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v74, v66 == 43);
      objc_msgSend_setIsGroupThread_(v108, v76, v75);
    }

    v77 = objc_msgSend_objectForKey_(v7, v62, @"syndicationType");

    if (v77 && (objc_msgSend_objectForKey_(v7, v78, @"syndicationType"), v79 = objc_claimAutoreleasedReturnValue(), v82 = objc_msgSend_integerValue(v79, v80, v81), v79, (v29 & (v82 < 2)) == 1))
    {
      v83 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v78, 1);
      v84 = objc_opt_class();
      v87 = objc_msgSend_chatAutoDonatingCutomKey(v84, v85, v86);
      objc_msgSend_setValue_forCustomKey_(v108, v88, v83, v87);

      v90 = objc_msgSend_objectForKey_(v7, v89, @"syndicationDate");

      v9 = v110;
      v8 = v111;
      v43 = v109;
      if (!v90)
      {
LABEL_39:
        v103 = objc_msgSend_objectForKeyedSubscript_(v7, v91, @"chatIdentifier");
        if (v103)
        {
          objc_msgSend_associateConversationEntityWithIdentifier_displayTitle_(v108, v102, v103, v59);
        }

        v104 = objc_alloc(MEMORY[0x1E6964E80]);
        v45 = v108;
        v40 = objc_msgSend_initWithUniqueIdentifier_domainIdentifier_attributeSet_(v104, v105, v9, @"chatDomain", v108);

        v51 = v114;
        v49 = v115;
        v47 = obj;
        goto LABEL_42;
      }

      v92 = objc_msgSend_objectForKey_(v7, v91, @"syndicationDate");
      if (!v92)
      {
LABEL_38:

        goto LABEL_39;
      }

      v93 = objc_opt_class();
      v96 = objc_msgSend_chatAutoDonatingServerDateCustomKey(v93, v94, v95);
      objc_msgSend_setValue_forCustomKey_(v108, v97, v92, v96);
    }

    else
    {
      v92 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v78, 0);
      v98 = objc_opt_class();
      v96 = objc_msgSend_chatAutoDonatingCutomKey(v98, v99, v100);
      objc_msgSend_setValue_forCustomKey_(v108, v101, v92, v96);
      v9 = v110;
      v8 = v111;
      v43 = v109;
    }

    goto LABEL_38;
  }

  v40 = 0;
LABEL_44:

  v106 = *MEMORY[0x1E69E9840];
  return v40;
}

+ (id)chatAutoDonatingCutomKey
{
  if (qword_1EDBE5B88 != -1)
  {
    sub_1B7CF98B4();
  }

  v3 = qword_1EDBE5B90;

  return v3;
}

+ (id)chatAutoDonatingServerDateCustomKey
{
  if (qword_1EDBE5B78 != -1)
  {
    sub_1B7CF98C8();
  }

  v3 = qword_1EDBE5B80;

  return v3;
}

+ (id)chatStyleCustomKey
{
  if (qword_1EDBE5EA0 != -1)
  {
    sub_1B7CF98DC();
  }

  v3 = qword_1EDBE5EA8;

  return v3;
}

+ (id)localIdentityProofKey
{
  if (qword_1EBA54150 != -1)
  {
    sub_1B7CF98F0();
  }

  v3 = qword_1EBA54148;

  return v3;
}

+ (id)localIdentityKey
{
  if (qword_1EBA54160 != -1)
  {
    sub_1B7CF9904();
  }

  v3 = qword_1EBA54158;

  return v3;
}

+ (id)handleToIdentityMapKey
{
  if (qword_1EBA54170 != -1)
  {
    sub_1B7CF9918();
  }

  v3 = qword_1EBA54168;

  return v3;
}

+ (id)threadIdentifierCustomKey
{
  if (qword_1EBA53A20 != -1)
  {
    sub_1B7CF992C();
  }

  v3 = qword_1EBA53A28;

  return v3;
}

- (id)chatSearchableItemForGUID:(id)a3
{
  v4 = a3;
  v6 = objc_msgSend__chatDictionaryForChatGUID_(self, v5, v4);
  v13 = 0;
  v8 = objc_msgSend_newChatSearchableItemForChatDictionary_optionalLastMessageDate_error_(self, v7, v6, 0, &v13);
  v9 = v13;
  if (v9)
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF9940();
    }

    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF99B8();
    }
  }

  return v8;
}

- (void)addChatSearchableItemForChatGUID:(id)a3 reason:(int64_t)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v8 = objc_msgSend_chatSearchableItemForGUID_(self, a2, a3);
  if (v8)
  {
    v9 = objc_msgSend_searchableIndex(self, v6, v7);
    v13[0] = v8;
    v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v10, v13, 1);
    sub_1B7BA4008(v9, 0, v11, 0, a4, 0);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)searchableItemIdentifierForChatGUID:(id)a3
{
  v3 = objc_msgSend__chatDictionaryForChatGUID_(self, a2, a3);
  v4 = v3;
  if (v3)
  {
    v5 = _IMDCoreSpotlightChatUIDForChatDictionary(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)deleteChatSearchableItemForChatGUID:(id)a3 reason:(int64_t)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_searchableItemIdentifierForChatGUID_(self, a2, a3);
  if (v5)
  {
    v6 = IMCoreSpotlightCriticalIndex();
    v10[0] = v5;
    v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v7, v10, 1);
    sub_1B7B9B3A8(v6, v8, a4, 0);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)_chatDictionaryForChatGUID:(id)a3
{
  v3 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1B7AE1AB0;
  v15 = sub_1B7AE2560;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BA4B94;
  v8[3] = &unk_1E7CBB6A0;
  v4 = v3;
  v9 = v4;
  v10 = &v11;
  IMDPersistencePerformBlock(v8, 1, v5);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (void)setNeedsMessageReindexingWithContext:(id)a3 completion:(id)a4
{
  v60 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v8, v9);
  isSpotlightReindexRefactorEnabled = objc_msgSend_isSpotlightReindexRefactorEnabled(v10, v11, v12);

  if (isSpotlightReindexRefactorEnabled)
  {
    v16 = objc_msgSend_copy(v6, v14, v15);

    objc_msgSend_setReindexing_(v16, v17, 1);
    objc_msgSend_setRunningViaBGST_(v16, v18, 1);
    objc_msgSend_setFullReindex_(v16, v19, 1);
    v20 = [IMDPersistentTaskQueryProvider alloc];
    v22 = objc_msgSend_initWithBlockingDatabaseCalls_(v20, v21, 0);
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = sub_1B7BA5040;
    v52[3] = &unk_1E7CB67C0;
    v53 = v7;
    objc_msgSend_scheduleFullReindexWithContext_completionBlock_(v22, v23, v16, v52);

    v6 = v16;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v55 = "[IMDLegacyCoreSpotlightManager setNeedsMessageReindexingWithContext:completion:]";
        _os_log_impl(&dword_1B7AD5000, v26, OS_LOG_TYPE_INFO, "%s starting reindex", buf, 0xCu);
      }
    }

    v27 = objc_msgSend_maxRowID(self, v24, v25);
    v30 = objc_msgSend_totalMessages(self, v28, v29);
    if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v55 = "[IMDLegacyCoreSpotlightManager setNeedsMessageReindexingWithContext:completion:]";
        v56 = 2048;
        v57 = v27;
        v58 = 2048;
        v59 = v30;
        _os_log_impl(&dword_1B7AD5000, v33, OS_LOG_TYPE_INFO, "%s max cmj rowID %lld total messages %lld", buf, 0x20u);
      }
    }

    if (v27 <= 0)
    {
      if (IMOSLoggingEnabled())
      {
        v42 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v42, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Failed to get max cmj row ID for indexing!", buf, 2u);
        }
      }

      if (v7)
      {
        v7[2](v7);
      }
    }

    else
    {
      v34 = objc_msgSend_sharedNotifier(IMSpotlightEventNotifier, v31, v32);
      v37 = objc_msgSend_reason(v6, v35, v36);
      objc_msgSend_reindexInitiatedWithTotalMessages_reason_(v34, v38, v30, v37);

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_1B7BA5050;
      aBlock[3] = &unk_1E7CBBBC0;
      aBlock[4] = self;
      v39 = v7;
      v49 = v39;
      v50 = v27;
      v51 = v30;
      v6 = v6;
      v48 = v6;
      v40 = _Block_copy(aBlock);
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = sub_1B7BA5340;
      v44[3] = &unk_1E7CBBBE8;
      v44[4] = self;
      v45 = v39;
      v46 = v40;
      v41 = v40;
      IMDIndexingClientRequest(v44);
    }
  }

  v43 = *MEMORY[0x1E69E9840];
}

- (void)_sanitizeIndexesForCurrentVersionIfNeeded:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = sub_1B7AE1AB0;
  v51 = sub_1B7AE2560;
  v52 = 0;
  v7 = objc_msgSend_sharedManager(IMDSpotlightClientStateManager, v5, v6);
  v8 = (v48 + 5);
  obj = v48[5];
  v10 = objc_msgSend_currentClientStateWithError_(v7, v9, &obj);
  objc_storeStrong(v8, obj);

  if (!v48[5])
  {
    if ((objc_msgSend_needsIndexDrop(v10, 0, v11) & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v33 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v33, OS_LOG_TYPE_INFO, "Bypassing index version comparisons. **NOT** deleting indexes", buf, 2u);
        }
      }

      goto LABEL_24;
    }

    if (objc_msgSend_needsReindex(v10, v12, v13))
    {
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v19 = objc_msgSend_indexRevision(v10, v17, v18);
          v22 = objc_msgSend__latestIndexRevision(MEMORY[0x1E69A82A8], v20, v21);
          *buf = 134218240;
          v54 = v19;
          v55 = 2048;
          v56 = v22;
          _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Current idx version is %llu, expected is %llu, deleting prior indexes", buf, 0x16u);
        }
      }

      v23 = objc_msgSend_searchableIndex(self, v14, v15);
      v24 = v23 == 0;

      if (!v24)
      {
        v25 = objc_alloc_init(MEMORY[0x1E69A6170]);
        objc_msgSend_startTimingForKey_(v25, v26, @"CSDeleteAllIndexes");
        v27 = dispatch_group_create();
        dispatch_group_enter(v27);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = sub_1B7BA590C;
        aBlock[3] = &unk_1E7CBBC10;
        v28 = v25;
        v43 = v28;
        v45 = &v47;
        v29 = v27;
        v44 = v29;
        v30 = _Block_copy(aBlock);
        objc_msgSend_deleteAllSearchableItemsWithReason_completionHandler_(self, v31, 4, v30);
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = sub_1B7BA5A9C;
        v39[3] = &unk_1E7CB8F20;
        v40 = v4;
        v41 = &v47;
        v32 = _Block_copy(v39);
        dispatch_group_notify(v29, MEMORY[0x1E69E96A0], v32);

        goto LABEL_25;
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_23;
      }

      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v34, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Failed to create index!", buf, 2u);
      }
    }

    else
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_23;
      }

      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v37 = objc_msgSend_indexRevision(v10, v35, v36);
        *buf = 134217984;
        v54 = v37;
        _os_log_impl(&dword_1B7AD5000, v34, OS_LOG_TYPE_INFO, "Current idx version is %llu, index does not need deletion", buf, 0xCu);
      }
    }

LABEL_23:
    if (!v4)
    {
      goto LABEL_25;
    }

LABEL_24:
    (*(v4 + 2))(v4, 0);
    goto LABEL_25;
  }

  (*(v4 + 2))(v4);
LABEL_25:

  _Block_object_dispose(&v47, 8);
  v38 = *MEMORY[0x1E69E9840];
}

- (void)_enumerateSearchableChatItemsForAllChatsWithBlock:(id)a3 timingCollection:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_1B7AE1AB0;
  v42 = sub_1B7AE2560;
  v43 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BA5ED8;
  block[3] = &unk_1E7CBB6A0;
  v7 = v6;
  v36 = v7;
  v37 = &v38;
  IMDPersistencePerformBlock(block, 1, v8);
  v34 = objc_msgSend_count(v39[5], v9, v10);
  if (v39[5])
  {
    v13 = objc_msgSend_chatBatchSize(MEMORY[0x1E69A7FF8], v11, v12);
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v45 = v34;
        v46 = 2048;
        v47 = v13;
        _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "About to index %lu chats in batches of %lu", buf, 0x16u);
      }
    }

    if (v34)
    {
      v16 = 0;
      *&v14 = 134218240;
      v32 = v14;
      v17 = v34;
      do
      {
        if (v13 >= v17)
        {
          v18 = v17;
        }

        else
        {
          v18 = v13;
        }

        v19 = objc_autoreleasePoolPush();
        objc_msgSend_startTimingForKey_(v7, v20, @"generateItems");
        if (v13 >= v17)
        {
          v22 = v17;
        }

        else
        {
          v22 = v13;
        }

        v23 = v39[5];
        v24 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x1E696AC90], v21, v16, v22, v32);
        v26 = objc_msgSend_objectsAtIndexes_(v23, v25, v24);

        v28 = objc_msgSend__newSearchableChatItemsForChats_(self, v27, v26);
        v5[2](v5, v28);

        objc_msgSend_stopTimingForKey_(v7, v29, @"generateItems");
        if (IMOSLoggingEnabled())
        {
          v30 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            *buf = v32;
            v45 = v18 + v16;
            v46 = 2048;
            v47 = v17;
            _os_log_impl(&dword_1B7AD5000, v30, OS_LOG_TYPE_INFO, "Finished indexing a batch of chats, indexed %lu, %lu to go", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v19);
        v16 += v13;
        v17 -= v13;
      }

      while (v16 < v34);
    }
  }

  _Block_object_dispose(&v38, 8);
  v31 = *MEMORY[0x1E69E9840];
}

- (void)indexChatsWithReason:(int64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if ((IMDCoreSpotlightDisabled(self, a2, a3) & 1) == 0)
  {
    v7 = objc_msgSend_searchableIndex(self, v5, v6);

    if (v7)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = objc_alloc_init(MEMORY[0x1E69A6170]);
      objc_msgSend_startTimingForKey_(v9, v10, @"totalTime");
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = sub_1B7BA616C;
      v16[3] = &unk_1E7CBBC38;
      v16[4] = self;
      v16[5] = a3;
      objc_msgSend__enumerateSearchableChatItemsForAllChatsWithBlock_timingCollection_(self, v11, v16, v9);
      objc_msgSend_stopTimingForKey_(v9, v12, @"totalTime");
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v17 = 138412290;
          v18 = v9;
          _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "indexChats timing %@", &v17, 0xCu);
        }
      }

      objc_autoreleasePoolPop(v8);
    }

    else if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Failed to create index!", &v17, 2u);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)_newSearchableChatItemsForChats:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v6 = objc_msgSend__chatCountForChats_(self, v5, v4);
  v7 = objc_alloc(MEMORY[0x1E695DF90]);
  v11 = objc_msgSend_initWithCapacity_(v7, v8, v6);
  if (v6 >= 1)
  {
    v13 = 0;
    *&v12 = 138412290;
    v35 = v12;
    while (1)
    {
      v14 = objc_msgSend__chatDictionaryForChatAtIndex_withChats_(self, v9, v13, v4, v35);
      v16 = _IMDCoreSpotlightChatUIDForChatDictionary(v14);
      if (v16)
      {
        break;
      }

LABEL_15:

      if (v6 == ++v13)
      {
        goto LABEL_16;
      }
    }

    v17 = objc_msgSend_objectForKey_(v11, v15, v16);
    v20 = objc_msgSend_attributeSet(v17, v18, v19);
    v23 = objc_msgSend_lastUsedDate(v20, v21, v22);

    v26 = objc_msgSend_objectForKey_(v14, v24, @"lastMessageDate");
    if (v26 && v23 && objc_msgSend_compare_(v23, v25, v26) == 1)
    {
      if (!IMOSLoggingEnabled())
      {
LABEL_14:

        goto LABEL_15;
      }

      MessageDate = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(MessageDate, OS_LOG_TYPE_INFO))
      {
        *buf = v35;
        v37 = v16;
        _os_log_impl(&dword_1B7AD5000, MessageDate, OS_LOG_TYPE_INFO, "Not indexing UID %@, already indexed newer record", buf, 0xCu);
      }
    }

    else
    {
      MessageDate = objc_msgSend_newChatSearchableItemForChatDictionary_optionalLastMessageDate_(self, v25, v14, 0);
      if (MessageDate)
      {
        objc_msgSend_setObject_forKey_(v11, v28, MessageDate, v16);
      }
    }

    goto LABEL_14;
  }

LABEL_16:
  v29 = objc_msgSend_allValues(v11, v9, v10);
  v32 = objc_msgSend_copy(v29, v30, v31);

  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

- (id)_chatDictionaryForChatAtIndex:(unint64_t)a3 withChats:(id)a4
{
  v5 = a4;
  v7 = objc_msgSend_objectAtIndexedSubscript_(v5, v6, a3);
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1B7AE1AB0;
  v19 = sub_1B7AE2560;
  v20 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1B7BA6674;
  v12[3] = &unk_1E7CBB6F0;
  v14 = &v15;
  v8 = v7;
  v13 = v8;
  IMDPersistencePerformBlock(v12, 1, v9);
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

- (void)_indexSearchableChatItems:(id)a3 withReason:(int64_t)a4 index:(id)a5 blocking:(BOOL)a6
{
  if (a6)
  {
    v8 = MEMORY[0x1E69A7FF8];
    v9 = a5;
    v10 = a3;
    v13 = objc_msgSend_extendedSpotlightTimeoutSeconds(v8, v11, v12);
    sub_1B7BA6798(v9, 0, v10, 0, a4, 1000000000 * v13);
  }

  else
  {
    sub_1B7BA4008(a5, 0, a3, 0, a4, 0);
  }
}

- (void)indexNextMessageBatchIfNeeded:(unint64_t)a3 reason:(int64_t)a4 completion:(id)a5
{
  v61 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v11 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v9, v10);
  isSpotlightReindexRefactorEnabled = objc_msgSend_isSpotlightReindexRefactorEnabled(v11, v12, v13);

  if (isSpotlightReindexRefactorEnabled)
  {
    v8[2](v8);
    goto LABEL_51;
  }

  v15 = IMOSLoggingEnabled();
  if (v15)
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v54 = a3;
      _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, "Indexing next batch of messages. Batch size of %lu", buf, 0xCu);
    }
  }

  if (IMDCoreSpotlightDisabled(v15, v16, v17))
  {
    if (!v8)
    {
      goto LABEL_51;
    }

LABEL_43:
    v8[2](v8);
    goto LABEL_51;
  }

  if (objc_msgSend_skipIndexing(MEMORY[0x1E69A7FF8], v19, v20))
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v25 = objc_msgSend_skipIndexing(MEMORY[0x1E69A7FF8], v23, v24);
        v26 = @"NO";
        if (v25)
        {
          v26 = @"YES";
        }

        *buf = 138412290;
        v54 = v26;
        _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "Skipping indexing next batch since skipIndexing is set to %@", buf, 0xCu);
      }
    }

    if (v8)
    {
      goto LABEL_43;
    }
  }

  else if (objc_msgSend__shouldIndexNextBatchForBatchSize_(self, v21, a3))
  {
    v29 = objc_msgSend_searchableIndex(self, v27, v28);
    if (v29)
    {
      v30 = objc_alloc_init(MEMORY[0x1E69A6170]);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_1B7BA6DD4;
      aBlock[3] = &unk_1E7CBBC60;
      v51 = a3;
      v52 = a4;
      aBlock[4] = self;
      v31 = v30;
      v49 = v31;
      v50 = v29;
      v33 = _Block_copy(aBlock);
      v47 = 0;
      if (a3)
      {
        do
        {
          v34 = objc_autoreleasePoolPush();
          v35 = v33[2](v33, &v47);
          objc_autoreleasePoolPop(v34);
          if (v47 < a3)
          {
            v36 = v35;
          }

          else
          {
            v36 = 0;
          }
        }

        while ((v36 & 1) != 0);
      }

      if (v8)
      {
        v8[2](v8);
      }

      objc_msgSend_stopTimingForKey_(v31, v32, @"totalTime");
      if (IMOSLoggingEnabled())
      {
        v37 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v54 = v31;
          _os_log_impl(&dword_1B7AD5000, v37, OS_LOG_TYPE_INFO, "Timing %@", buf, 0xCu);
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v45 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v45, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Failed to create index!", buf, 2u);
        }
      }

      if (v8)
      {
        v8[2](v8);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v41 = objc_msgSend_needsIndexing(MEMORY[0x1E69A7FF8], v39, v40);
        v42 = IMDSystemMigrationOccurred();
        v43 = @"NO";
        v54 = "[IMDLegacyCoreSpotlightManager indexNextMessageBatchIfNeeded:reason:completion:]";
        v55 = 2048;
        if (v41)
        {
          v44 = @"YES";
        }

        else
        {
          v44 = @"NO";
        }

        *buf = 136315906;
        v56 = a3;
        v57 = 2112;
        if (v42)
        {
          v43 = @"YES";
        }

        v58 = v44;
        v59 = 2112;
        v60 = v43;
        _os_log_impl(&dword_1B7AD5000, v38, OS_LOG_TYPE_INFO, "IMDCoreSpotlight %s - Not indexing. Batch size %lu needsIndexing %@ hasMigrated %@", buf, 0x2Au);
      }
    }

    if (v8)
    {
      goto LABEL_43;
    }
  }

LABEL_51:

  v46 = *MEMORY[0x1E69E9840];
}

- (id)_copyNewSearchableIndexesForMessagesWithLastRowID:(unint64_t *)a3 messageRecordCount:(unint64_t *)a4 messagesWithItemsGeneratedCount:(unint64_t *)a5 reason:(int64_t)a6 batchSize:(unint64_t)a7 timingCollection:(id)a8 rejectedItems:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = [IMDIndexingContext alloc];
  v20 = objc_msgSend_initForReindexing_reason_(v18, v19, 1, a6);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_1B7BA7220;
  v25[3] = &unk_1E7CBBC88;
  v25[4] = self;
  v26 = v20;
  v27 = v16;
  v28 = a5;
  v21 = v16;
  v22 = v20;
  v23 = sub_1B7B995F0(a3, a4, a7, v17, v25);

  return v23;
}

- (void)_indexSearchableItems:(id)a3 rejectedItems:(id)a4 clientState:(id)a5 lastIndexedRowID:(unint64_t)a6 messagesInBatch:(unint64_t)a7 messagesWithItemsGeneratedCount:(unint64_t)a8 batchSize:(unint64_t)a9 lastBatch:(BOOL)a10 withIndex:(id)a11 reason:(int64_t)a12
{
  v59 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v42 = a4;
  v19 = a5;
  v20 = a11;
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v54 = "[IMDLegacyCoreSpotlightManager _indexSearchableItems:rejectedItems:clientState:lastIndexedRowID:messagesInBatch:messagesWithItemsGeneratedCount:batchSize:lastBatch:withIndex:reason:]";
      v55 = 2048;
      v56 = objc_msgSend_count(v18, v22, v23);
      v57 = 2112;
      v58 = v20;
      _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "%s Generated %lu items to index!. Using Index %@", buf, 0x20u);
    }
  }

  aBlock = MEMORY[0x1E69E9820];
  v45 = 3221225472;
  v46 = sub_1B7BA7554;
  v47 = &unk_1E7CBBCB0;
  v52 = a10;
  v48 = self;
  v24 = v19;
  v49 = v24;
  v50 = a12;
  v51 = a6;
  v26 = _Block_copy(&aBlock);
  if (a10)
  {
    objc_msgSend_setLastIndexedRowID_(v24, v25, 1, v42, aBlock, v45, v46, v47, v48);
  }

  else
  {
    objc_msgSend_setLastIndexedRowID_(v24, v25, a6, v42, aBlock, v45, v46, v47, v48);
  }

  v29 = objc_msgSend_initialIndexedMessages(v24, v27, v28);
  objc_msgSend_setInitialIndexedMessages_(v24, v30, v29 + a8);
  v33 = objc_msgSend_processedMessageRecords(v24, v31, v32);
  objc_msgSend_setProcessedMessageRecords_(v24, v34, v33 + a7);
  if ((objc_msgSend__shouldBypassForTesting(self, v35, v36) & 1) == 0)
  {
    v39 = objc_msgSend_extendedSpotlightTimeoutSeconds(MEMORY[0x1E69A7FF8], v37, v38);
    if (sub_1B7BA6798(v20, v24, v18, v43, a12, 1000000000 * v39))
    {
      if (IMOSLoggingEnabled())
      {
        v40 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v40, OS_LOG_TYPE_INFO, "Timed out waiting for CoreSpotlight to finish indexing message items!", buf, 2u);
        }
      }
    }
  }

  v26[2](v26);

  v41 = *MEMORY[0x1E69E9840];
}

- (void)deleteAllSearchableItemsWithReason:(int64_t)a3 completionHandler:(id)a4
{
  v5 = a4;
  v10 = objc_msgSend_searchableIndex(self, v6, v7);
  v8 = IMCSIndexReasonFromIMIndexReason();
  objc_msgSend_deleteAllSearchableItemsWithReason_completionHandler_(v10, v9, v8, v5);
}

- (void)_suspendReindexingDueToError:(id)a3
{
  v3 = a3;
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF9BA0();
  }

  v7 = objc_msgSend_now(MEMORY[0x1E695DF00], v5, v6);
  v10 = objc_msgSend_dateByAddingTimeInterval_(v7, v8, v9, 1800.0);

  objc_msgSend_setReindexingSuspendedUntilDate_(MEMORY[0x1E69A7FF8], v11, v10);
  v14 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], v12, v13);
  isInternalInstall = objc_msgSend_isInternalInstall(v14, v15, v16);

  if (isInternalInstall)
  {
    v20 = objc_msgSend_debugDescription(v3, v18, v19);
    objc_msgSend_setReindexingSuspensionReason_(MEMORY[0x1E69A7FF8], v21, v20);
  }

  v22 = objc_msgSend_sharedNotifier(IMSpotlightEventNotifier, v18, v19);
  objc_msgSend_reindexSuspendedUntilDate_withError_(v22, v23, v10, v3);
}

- (BOOL)_shouldIndexNextBatchForBatchSize:(unint64_t)a3
{
  if (!a3 || !objc_msgSend_needsIndexing(MEMORY[0x1E69A7FF8], a2, a3))
  {
    return 0;
  }

  return IMDSystemMigrationOccurred();
}

- (BOOL)_shouldSkipMessagePartPrefixingForItemDictionary:(id)a3
{
  v3 = objc_msgSend_objectForKey_(a3, a2, @"associatedMessageType");
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_integerValue(v3, v4, v5) == 2007;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)deleteAllDonationsForAppDeletionWithCompletion:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v5, v6);
  isMessagesAppDeletionEnabled = objc_msgSend_isMessagesAppDeletionEnabled(v7, v8, v9);

  if (isMessagesAppDeletionEnabled)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "Deleting all spotlight data because the app is being uninstalled.", buf, 2u);
      }
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1B7BA7B00;
    v12[3] = &unk_1E7CB7260;
    v12[4] = self;
    v13 = v4;
    IMDIndexingClientRequest(v12);
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0);
  }
}

- (unint64_t)_batchSizeForTargetBatchSize:(unint64_t)a3 lastIndexedRowID:(unint64_t)a4 lastBatch:(BOOL *)a5
{
  v14 = *MEMORY[0x1E69E9840];
  result = a3;
  if (a4 < a3)
  {
    v9 = IMOSLoggingEnabled();
    result = a4;
    if (v9)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = 134217984;
        v13 = a4;
        _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Reducing batch size to %lu, last batch?", &v12, 0xCu);
      }

      result = a4;
    }
  }

  if (a5)
  {
    *a5 = a4 < a3;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

@end