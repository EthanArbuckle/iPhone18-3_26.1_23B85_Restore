@interface IMDCoreSpotlightIndexingManager
+ (id)handleToIdentityMapKey;
+ (id)localIdentityKey;
+ (id)localIdentityProofKey;
+ (id)resolvedURLCustomKey;
+ (id)sharedManager;
- (BOOL)_shouldIndexNextBatchForBatchSize:(unint64_t)size;
- (IMDCoreSpotlightIndexingManager)init;
- (id)_chatDictionaryForChatGUID:(id)d;
- (id)_personIdentityQueue;
- (id)filteringExtensionBundleID;
- (id)indexableIdentifiersForMessageDict:(id)dict chatDictionary:(id)dictionary context:(id)context requireIndexableAttachments:(BOOL)attachments;
- (id)messageIndexingJobWithSize:(int64_t)size context:(id)context timingCollection:(id)collection;
- (void)_FPProviderIDForItems:(id)items;
- (void)_deleteAllSearchableItemsWithReason:(int64_t)reason completionHandler:(id)handler;
- (void)_deleteSearchableItemsWithIdentifiers:(id)identifiers fromIndex:(id)index withReason:(int64_t)reason completionHandler:(id)handler;
- (void)_resolvedURLForItems:(id)items;
- (void)_sanitizeIndexesForCurrentVersionIfNeeded:(id)needed;
- (void)_updateItem:(id)item withFPProviderID:(id)d;
- (void)_updateItem:(id)item withIdentityMap:(id)map localIdentity:(id)identity localIdentityProof:(id)proof completionBlock:(id)block;
- (void)_updateItem:(id)item withResolvedURL:(id)l;
- (void)addChatGUIDs:(id)ds context:(id)context completionHandler:(id)handler;
- (void)deleteAllDonationsForAppDeletionWithCompletion:(id)completion;
- (void)deleteAttachmentGUIDs:(id)ds reason:(int64_t)reason completionHandler:(id)handler;
- (void)deleteChatGUIDs:(id)ds reason:(int64_t)reason completionHandler:(id)handler;
- (void)deleteMessageGUIDs:(id)ds reason:(int64_t)reason completionHandler:(id)handler;
- (void)indexChatsWithReason:(int64_t)reason completion:(id)completion;
- (void)indexNextMessageBatchIfNeeded:(unint64_t)needed reason:(int64_t)reason completion:(id)completion;
- (void)postProcessIndexingForItem:(id)item chatDictionary:(id)dictionary context:(id)context;
- (void)postProcessItemsPotentiallyNeedingAdditionalMetadata:(id)metadata;
- (void)prepareForReindexingWithReason:(int64_t)reason completion:(id)completion;
- (void)reIndexWithLocalProofOfInclusionForItemsAsync:(id)async completionHandler:(id)handler;
- (void)reindexMessagesWithCollaborationMetadata:(id)metadata collaborationMetadata:(id)collaborationMetadata reason:(int64_t)reason completionBlock:(id)block;
- (void)setNeedsMessageReindexingWithReason:(int64_t)reason completion:(id)completion;
@end

@implementation IMDCoreSpotlightIndexingManager

- (id)filteringExtensionBundleID
{
  v3 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8018], a2, v2);
  v5 = objc_msgSend_getValueFromDomain_forKey_(v3, v4, @"com.apple.MobileSMS", @"spamFiltrationExtensionID");

  return v5;
}

+ (id)resolvedURLCustomKey
{
  if (qword_1EBA53F80 != -1)
  {
    sub_1B7CF843C();
  }

  v3 = qword_1EBA53F78;

  return v3;
}

- (void)_updateItem:(id)item withResolvedURL:(id)l
{
  v55[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  lCopy = l;
  if ((IMDCoreSpotlightDisabled(lCopy, v8, v9) & 1) == 0)
  {
    if (objc_msgSend_length(lCopy, v10, v11))
    {
      v12 = objc_alloc(MEMORY[0x1E6964E90]);
      v14 = objc_msgSend_initWithItemContentType_(v12, v13, *MEMORY[0x1E6963848]);
      v15 = objc_opt_class();
      v18 = objc_msgSend_resolvedURLCustomKey(v15, v16, v17);
      objc_msgSend_setValue_forCustomKey_(v14, v19, lCopy, v18);

      v22 = objc_msgSend_attributeSet(itemCopy, v20, v21);
      v25 = objc_msgSend_bundleID(v22, v23, v24);
      objc_msgSend_setBundleID_(v14, v26, v25);

      v29 = objc_msgSend_attributeSet(itemCopy, v27, v28);
      v32 = objc_msgSend_identifier(v29, v30, v31);
      objc_msgSend_setIdentifier_(v14, v33, v32);

      v34 = objc_alloc(MEMORY[0x1E6964E80]);
      v37 = objc_msgSend_uniqueIdentifier(itemCopy, v35, v36);
      v40 = objc_msgSend_domainIdentifier(itemCopy, v38, v39);
      v42 = objc_msgSend_initWithUniqueIdentifier_domainIdentifier_attributeSet_(v34, v41, v37, v40, v14);

      objc_msgSend_setIsUpdate_(v42, v43, 1);
      v46 = objc_msgSend__collaborationIndex(self, v44, v45);
      v55[0] = v42;
      v48 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v47, v55, 1);
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = sub_1B7B871FC;
      v52[3] = &unk_1E7CB6C58;
      v53 = itemCopy;
      objc_msgSend_indexSearchableItems_completionHandler_(v46, v49, v48, v52);
    }

    else if (IMOSLoggingEnabled())
    {
      v50 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v50, OS_LOG_TYPE_INFO, "Invalid ResolvedURL", buf, 2u);
      }
    }
  }

  v51 = *MEMORY[0x1E69E9840];
}

- (void)_updateItem:(id)item withFPProviderID:(id)d
{
  v67 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  dCopy = d;
  if ((IMDCoreSpotlightDisabled(dCopy, v8, v9) & 1) == 0)
  {
    if (objc_msgSend_length(dCopy, v10, v11))
    {
      v12 = objc_alloc(MEMORY[0x1E6964E90]);
      v14 = objc_msgSend_initWithItemContentType_(v12, v13, *MEMORY[0x1E6963848]);
      objc_msgSend_setFileProviderID_(v14, v15, dCopy);
      v18 = objc_msgSend_attributeSet(itemCopy, v16, v17);
      v21 = objc_msgSend_bundleID(v18, v19, v20);
      objc_msgSend_setBundleID_(v14, v22, v21);

      v25 = objc_msgSend_attributeSet(itemCopy, v23, v24);
      v28 = objc_msgSend_identifier(v25, v26, v27);
      objc_msgSend_setIdentifier_(v14, v29, v28);

      v32 = objc_msgSend_attributeSet(itemCopy, v30, v31);
      v35 = objc_msgSend_contentType(v32, v33, v34);
      objc_msgSend_setContentType_(v14, v36, v35);

      v39 = objc_msgSend_attributeSet(itemCopy, v37, v38);
      v42 = objc_msgSend_contentTypeTree(v39, v40, v41);
      objc_msgSend_setContentTypeTree_(v14, v43, v42);

      v44 = objc_alloc(MEMORY[0x1E6964E80]);
      v47 = objc_msgSend_uniqueIdentifier(itemCopy, v45, v46);
      v50 = objc_msgSend_domainIdentifier(itemCopy, v48, v49);
      v52 = objc_msgSend_initWithUniqueIdentifier_domainIdentifier_attributeSet_(v44, v51, v47, v50, v14);

      objc_msgSend_setIsUpdate_(v52, v53, 1);
      v56 = objc_msgSend__collaborationIndex(self, v54, v55);
      v64 = v52;
      v58 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v57, &v64, 1);
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = sub_1B7B87614;
      v62[3] = &unk_1E7CB6C58;
      v63 = itemCopy;
      objc_msgSend_indexSearchableItems_completionHandler_(v56, v59, v58, v62);
    }

    else if (IMOSLoggingEnabled())
    {
      v60 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v66 = dCopy;
        _os_log_impl(&dword_1B7AD5000, v60, OS_LOG_TYPE_INFO, "Invalid providerID: %@", buf, 0xCu);
      }
    }
  }

  v61 = *MEMORY[0x1E69E9840];
}

+ (id)localIdentityProofKey
{
  if (qword_1EBA53F90 != -1)
  {
    sub_1B7CF8450();
  }

  v3 = qword_1EBA53F88;

  return v3;
}

+ (id)localIdentityKey
{
  if (qword_1EBA53FA0 != -1)
  {
    sub_1B7CF8464();
  }

  v3 = qword_1EBA53F98;

  return v3;
}

+ (id)handleToIdentityMapKey
{
  if (qword_1EBA53FB0 != -1)
  {
    sub_1B7CF8478();
  }

  v3 = qword_1EBA53FA8;

  return v3;
}

- (void)_updateItem:(id)item withIdentityMap:(id)map localIdentity:(id)identity localIdentityProof:(id)proof completionBlock:(id)block
{
  v106 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  mapCopy = map;
  identityCopy = identity;
  proofCopy = proof;
  blockCopy = block;
  if (IMDCoreSpotlightDisabled(blockCopy, v17, v18))
  {
    blockCopy[2](blockCopy);
  }

  else if (mapCopy && identityCopy && proofCopy)
  {
    v19 = objc_alloc(MEMORY[0x1E6964E90]);
    v21 = objc_msgSend_initWithItemContentType_(v19, v20, *MEMORY[0x1E6963848]);
    v98 = 0;
    v89 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v22, identityCopy, 1, &v98);
    v92 = v98;
    v97 = 0;
    v88 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v23, proofCopy, 1, &v97);
    v91 = v97;
    v96 = 0;
    v87 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v24, mapCopy, 1, &v96);
    v90 = v96;
    if (v92 || v91 || v90)
    {
      if (IMOSLoggingEnabled())
      {
        v85 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v101 = v92;
          v102 = 2112;
          v103 = v91;
          v104 = 2112;
          v105 = v90;
          _os_log_impl(&dword_1B7AD5000, v85, OS_LOG_TYPE_INFO, "Archive error for localIdentity: %@, localIdentityProof: %@ or identityMap: %@", buf, 0x20u);
        }
      }

      blockCopy[2](blockCopy);
    }

    else
    {
      v27 = objc_msgSend_attributeSet(itemCopy, v25, v26);
      v30 = objc_msgSend_bundleID(v27, v28, v29);
      objc_msgSend_setBundleID_(v21, v31, v30);

      v34 = objc_msgSend_attributeSet(itemCopy, v32, v33);
      v37 = objc_msgSend_identifier(v34, v35, v36);
      objc_msgSend_setIdentifier_(v21, v38, v37);

      v39 = objc_opt_class();
      v42 = objc_msgSend_localIdentityKey(v39, v40, v41);
      objc_msgSend_setValue_forCustomKey_(v21, v43, v89, v42);

      v44 = objc_opt_class();
      v47 = objc_msgSend_localIdentityProofKey(v44, v45, v46);
      objc_msgSend_setValue_forCustomKey_(v21, v48, v88, v47);

      v49 = objc_opt_class();
      v52 = objc_msgSend_handleToIdentityMapKey(v49, v50, v51);
      objc_msgSend_setValue_forCustomKey_(v21, v53, v87, v52);

      v56 = objc_msgSend_attributeSet(itemCopy, v54, v55);
      v59 = objc_msgSend_contentType(v56, v57, v58);
      objc_msgSend_setContentType_(v21, v60, v59);

      v63 = objc_msgSend_attributeSet(itemCopy, v61, v62);
      v66 = objc_msgSend_contentTypeTree(v63, v64, v65);
      objc_msgSend_setContentTypeTree_(v21, v67, v66);

      v68 = objc_alloc(MEMORY[0x1E6964E80]);
      v71 = objc_msgSend_uniqueIdentifier(itemCopy, v69, v70);
      v74 = objc_msgSend_domainIdentifier(itemCopy, v72, v73);
      v76 = objc_msgSend_initWithUniqueIdentifier_domainIdentifier_attributeSet_(v68, v75, v71, v74, v21);

      objc_msgSend_setIsUpdate_(v76, v77, 1);
      v80 = objc_msgSend__collaborationIndex(self, v78, v79);
      v99 = v76;
      v82 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v81, &v99, 1);
      v93[0] = MEMORY[0x1E69E9820];
      v93[1] = 3221225472;
      v93[2] = sub_1B7B87E64;
      v93[3] = &unk_1E7CBB398;
      v94 = itemCopy;
      v95 = blockCopy;
      objc_msgSend_indexSearchableItems_completionHandler_(v80, v83, v82, v93);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v84 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v101 = identityCopy;
        v102 = 2112;
        v103 = proofCopy;
        v104 = 2112;
        v105 = mapCopy;
        _os_log_impl(&dword_1B7AD5000, v84, OS_LOG_TYPE_INFO, "Invalid localIdentity: %@, localIdentityProof: %@ or identityMap: %@", buf, 0x20u);
      }
    }

    blockCopy[2](blockCopy);
  }

  v86 = *MEMORY[0x1E69E9840];
}

- (void)_resolvedURLForItems:(id)items
{
  v59 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v4 = IMOSLoggingEnabled();
  if (v4)
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v55 = objc_msgSend_count(itemsCopy, v8, v9);
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Checking if we need to add resolved URLs for %lu items", buf, 0xCu);
    }
  }

  sub_1B7B88320(v4, v5, v6);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v10 = itemsCopy;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v50, v58, 16);
  if (v14)
  {
    v16 = *v51;
    *&v15 = 138412546;
    v47 = v15;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v51 != v16)
        {
          objc_enumerationMutation(v10);
        }

        v18 = *(*(&v50 + 1) + 8 * i);
        v19 = objc_msgSend_attributeSet(v18, v12, v13, v47);
        v22 = objc_msgSend_URL(v19, v20, v21);
        isNewsURL = objc_msgSend_nr_isNewsURL(v22, v23, v24);
        isWebURL = objc_msgSend_nr_isWebURL(v22, v26, v27);
        v29 = IMOSLoggingEnabled();
        if (v29)
        {
          v32 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            if (isNewsURL)
            {
              v33 = @"YES";
            }

            else
            {
              v33 = @"NO";
            }

            *buf = v47;
            v55 = v33;
            if (isWebURL)
            {
              v34 = @"YES";
            }

            else
            {
              v34 = @"NO";
            }

            v56 = 2112;
            v57 = v34;
            _os_log_impl(&dword_1B7AD5000, v32, OS_LOG_TYPE_INFO, "isNewsURL: %@ isWebURL:%@", buf, 0x16u);
          }
        }

        if ((isNewsURL | isWebURL))
        {
          v35 = sub_1B7B88414(v29, v30, v31);
          v38 = objc_msgSend_sharedManager(v35, v36, v37);
          v40 = v38;
          if (isNewsURL)
          {
            objc_msgSend_createResolutionOperationForNewsURL_(v38, v39, v22);
          }

          else
          {
            objc_msgSend_createResolutionOperationForWebURL_(v38, v39, v22);
          }
          v42 = ;

          v49[0] = MEMORY[0x1E69E9820];
          v49[1] = 3221225472;
          v49[2] = sub_1B7B884F4;
          v49[3] = &unk_1E7CBB3E8;
          v49[4] = v18;
          v49[5] = self;
          objc_msgSend_setResolutionCompletion_(v42, v43, v49);
          objc_msgSend_start(v42, v44, v45);
        }

        else if (IMOSLoggingEnabled())
        {
          v41 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1B7AD5000, v41, OS_LOG_TYPE_INFO, "URL was not classified as either WebURL or a News URL", buf, 2u);
          }
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v50, v58, 16);
    }

    while (v14);
  }

  v46 = *MEMORY[0x1E69E9840];
}

- (id)_personIdentityQueue
{
  if (qword_1EBA53FC0 != -1)
  {
    sub_1B7CF850C();
  }

  v3 = qword_1EBA53FB8;

  return v3;
}

- (void)_FPProviderIDForItems:(id)items
{
  selfCopy = self;
  v43 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v42 = objc_msgSend_count(itemsCopy, v5, v6);
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Checking if we need to add FileProviderID for %lu items", buf, 0xCu);
    }
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = itemsCopy;
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
        v14 = objc_msgSend_attributeSet(v13, v8, v9, selfCopy);
        v17 = objc_msgSend_URL(v14, v15, v16);
        v20 = objc_msgSend_isShared(v14, v18, v19);
        v23 = objc_msgSend_BOOLValue(v20, v21, v22);

        if (((v17 != 0) & v23) == 1)
        {
          if (qword_1EBA53FD0 != -1)
          {
            sub_1B7CF8520();
          }

          v24 = off_1EBA53FC8;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = sub_1B7B88B90;
          aBlock[3] = &unk_1E7CBB438;
          v25 = v17;
          v32 = v25;
          v33 = v14;
          v34 = selfCopy;
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

- (void)reIndexWithLocalProofOfInclusionForItemsAsync:(id)async completionHandler:(id)handler
{
  v127 = *MEMORY[0x1E69E9840];
  asyncCopy = async;
  block = handler;
  group = dispatch_group_create();
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = objc_msgSend_count(asyncCopy, v7, v8, block);
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Generating and indexing local proof of inclusion for %lu items", &buf, 0xCu);
    }
  }

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  obj = asyncCopy;
  v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v108, v126, 16);
  if (v94)
  {
    v92 = *v109;
    v88 = v114;
    do
    {
      for (i = 0; i != v94; ++i)
      {
        if (*v109 != v92)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v108 + 1) + 8 * i);
        v14 = objc_msgSend_attributeSet(v13, v10, v11, block, v88);
        v96 = objc_msgSend_URL(v14, v15, v16);
        v19 = objc_msgSend_isShared(v14, v17, v18);
        v22 = objc_msgSend_BOOLValue(v19, v20, v21);

        if (((v96 != 0) & v22) == 1)
        {
          v25 = objc_msgSend_attributeSet(v13, v23, v24);
          v28 = objc_msgSend_accountHandles(v25, v26, v27);

          v31 = objc_msgSend_attributeSet(v13, v29, v30);
          v34 = objc_msgSend_collaborationMetadataKey(IMDSharedWithYouMetadataManager, v32, v33);
          v95 = objc_msgSend_valueForCustomKey_(v31, v35, v34);

          v36 = MEMORY[0x1E696ACD0];
          v37 = MEMORY[0x1E695DFD8];
          v125 = objc_opt_class();
          v39 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v38, &v125, 1);
          v41 = objc_msgSend_setWithArray_(v37, v40, v39);
          v107 = 0;
          v43 = objc_msgSend__strictlyUnarchivedObjectOfClasses_fromData_error_(v36, v42, v41, v95, &v107);
          v93 = v107;

          if (!v43)
          {
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_41;
            }

            v80 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
            {
              v83 = objc_msgSend_description(v93, v81, v82);
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v83;
              _os_log_impl(&dword_1B7AD5000, v80, OS_LOG_TYPE_INFO, "Failed to unarchive Collaboration Metadata: %@. Not indexing this item.", &buf, 0xCu);
            }

LABEL_40:

            goto LABEL_41;
          }

          v46 = objc_msgSend_collaborationIdentifier(v43, v44, v45);
          v47 = v46 == 0;

          if (v47)
          {
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_41;
            }

            v80 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&dword_1B7AD5000, v80, OS_LOG_TYPE_INFO, "Collaboration metadata has a nil collaboration identifier, which is needed for key diversification. Not indexing this item.", &buf, 2u);
            }

            goto LABEL_40;
          }

          v50 = objc_msgSend_handleToIdentityMap(v43, v48, v49);
          v51 = v50 == 0;

          if (v51)
          {
            if (IMOSLoggingEnabled())
            {
              v80 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
              {
                LOWORD(buf) = 0;
                _os_log_impl(&dword_1B7AD5000, v80, OS_LOG_TYPE_INFO, "handleToIdentityMap is required for identity proof lookup. Not indexing proof of inclusion this item. This may not be a generic 3rd party collaboration.", &buf, 2u);
              }

              goto LABEL_40;
            }

LABEL_41:

            goto LABEL_47;
          }

          *&buf = 0;
          *(&buf + 1) = &buf;
          v121 = 0x3032000000;
          v122 = sub_1B7AE1A24;
          v123 = sub_1B7AE2528;
          v124 = 0;
          v103 = 0u;
          v104 = 0u;
          v105 = 0u;
          v106 = 0u;
          v52 = v28;
          v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v53, &v103, v119, 16);
          if (v56)
          {
            v57 = *v104;
            do
            {
              for (j = 0; j != v56; ++j)
              {
                if (*v104 != v57)
                {
                  objc_enumerationMutation(v52);
                }

                v59 = *(*(&v103 + 1) + 8 * j);
                v60 = objc_msgSend_handleToIdentityMap(v43, v54, v55);
                v62 = objc_msgSend_objectForKey_(v60, v61, v59);
                v63 = *(*(&buf + 1) + 40);
                *(*(&buf + 1) + 40) = v62;
              }

              v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v54, &v103, v119, 16);
            }

            while (v56);
          }

          v115 = 0;
          v116 = &v115;
          v117 = 0x2050000000;
          v66 = qword_1EBA54008;
          v118 = qword_1EBA54008;
          if (!qword_1EBA54008)
          {
            *v112 = MEMORY[0x1E69E9820];
            v113 = 3221225472;
            v114[0] = sub_1B7B8AC38;
            v114[1] = &unk_1E7CB6EA8;
            v114[2] = &v115;
            sub_1B7B8AC38(v112, v64, v65);
            v66 = v116[3];
          }

          v67 = v66;
          _Block_object_dispose(&v115, 8);
          v68 = [v66 alloc];
          v71 = objc_msgSend__personIdentityQueue(self, v69, v70);
          v73 = objc_msgSend_initWithTargetSerialQueue_synchronous_(v68, v72, v71, 1);

          if (v73)
          {
            dispatch_group_enter(group);
            v74 = *(*(&buf + 1) + 40);
            v77 = objc_msgSend_collaborationIdentifier(v43, v75, v76);
            v97[0] = MEMORY[0x1E69E9820];
            v97[1] = 3221225472;
            v97[2] = sub_1B7B89AB8;
            v97[3] = &unk_1E7CBB460;
            v98 = group;
            selfCopy = self;
            p_buf = &buf;
            v100 = v13;
            v101 = v43;
            objc_msgSend_generateProofForIdentity_collaborationIdentifier_timeout_completion_(v73, v78, v74, v77, v97, 10.0);
          }

          else if (IMOSLoggingEnabled())
          {
            v84 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
            {
              *v112 = 0;
              _os_log_impl(&dword_1B7AD5000, v84, OS_LOG_TYPE_INFO, "Unable to create handshakeController", v112, 2u);
            }
          }

          _Block_object_dispose(&buf, 8);
        }

        else if (IMOSLoggingEnabled())
        {
          v79 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_1B7AD5000, v79, OS_LOG_TYPE_INFO, "URL was not classified as a CollaborationURL", &buf, 2u);
          }
        }

LABEL_47:
      }

      v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v108, v126, 16);
    }

    while (v94);
  }

  v85 = IMDIndexingClientRequestQueue();
  dispatch_group_notify(group, v85, block);

  v86 = *MEMORY[0x1E69E9840];
}

- (void)postProcessItemsPotentiallyNeedingAdditionalMetadata:(id)metadata
{
  v125 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  if (objc_msgSend_count(metadataCopy, v4, v5))
  {
    v105 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v106 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v102 = metadataCopy;
    obj = metadataCopy;
    v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v116, v124, 16);
    if (v108)
    {
      v107 = *v117;
      do
      {
        for (i = 0; i != v108; ++i)
        {
          if (*v117 != v107)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v116 + 1) + 8 * i);
          v11 = objc_msgSend_attributeSet(v10, v7, v8, v102);
          v14 = objc_msgSend_messageType(v11, v12, v13);

          if (objc_msgSend_isEqualToString_(v14, v15, @"lnk"))
          {
            v18 = objc_msgSend_attributeSet(v10, v16, v17);
            v109 = objc_msgSend_contentCreationDate(v18, v19, v20);

            v23 = objc_msgSend_currentCalendar(MEMORY[0x1E695DEE8], v21, v22);
            v26 = objc_msgSend_now(MEMORY[0x1E695DF00], v24, v25);
            v28 = objc_msgSend_dateByAddingUnit_value_toDate_options_(v23, v27, 16, -30, v26, 0);

            v31 = objc_msgSend_currentCalendar(MEMORY[0x1E695DEE8], v29, v30);
            v33 = objc_msgSend_startOfDayForDate_(v31, v32, v28);

            if (objc_msgSend_compare_(v109, v34, v33) == 1)
            {
              objc_msgSend_addObject_(v106, v35, v10);
            }

            else if (IMOSLoggingEnabled())
            {
              v38 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
              {
                v41 = objc_msgSend_attributeSet(v10, v39, v40);
                v44 = objc_msgSend_uniqueIdentifier(v41, v42, v43);
                *buf = 67109378;
                *v123 = 30;
                *&v123[4] = 2112;
                *&v123[6] = v44;
                _os_log_impl(&dword_1B7AD5000, v38, OS_LOG_TYPE_INFO, "Skipping adding resolvedURL since link is older than %d days: %@", buf, 0x12u);
              }
            }

            v45 = objc_msgSend_attributeSet(v10, v36, v37);
            v48 = objc_msgSend_isShared(v45, v46, v47);
            v51 = objc_msgSend_BOOLValue(v48, v49, v50);

            if (v51)
            {
              v54 = objc_msgSend_attributeSet(v10, v52, v53);
              v57 = objc_msgSend_collaborationMetadataKey(IMDSharedWithYouMetadataManager, v55, v56);
              v59 = objc_msgSend_valueForCustomKey_(v54, v58, v57);

              v60 = MEMORY[0x1E696ACD0];
              v61 = MEMORY[0x1E695DFD8];
              v121 = objc_opt_class();
              v63 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v62, &v121, 1);
              v65 = objc_msgSend_setWithArray_(v61, v64, v63);
              v115 = 0;
              v67 = objc_msgSend__strictlyUnarchivedObjectOfClasses_fromData_error_(v60, v66, v65, v59, &v115);
              v68 = v115;

              v73 = objc_msgSend_collaborationIdentifier(v67, v69, v70);
              if (v73)
              {
                v74 = objc_msgSend_handleToIdentityMap(v67, v71, v72);
                v75 = v74 == 0;

                if (!v75)
                {
                  objc_msgSend_addObject_(v105, v76, v10);
                }
              }
            }
          }
        }

        v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v116, v124, 16);
      }

      while (v108);
    }

    if (objc_msgSend_count(v105, v77, v78))
    {
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v81 = v105;
      v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(v81, v82, &v111, v120, 16);
      if (v84)
      {
        v85 = *v112;
        do
        {
          for (j = 0; j != v84; ++j)
          {
            if (*v112 != v85)
            {
              objc_enumerationMutation(v81);
            }

            v87 = objc_msgSend_indexOfObject_(obj, v83, *(*(&v111 + 1) + 8 * j), v102);
            v89 = objc_msgSend_objectAtIndex_(obj, v88, v87);
            if (IMOSLoggingEnabled())
            {
              v91 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
              {
                v94 = objc_msgSend_attributeSet(v89, v92, v93);
                v97 = objc_msgSend_uniqueIdentifier(v94, v95, v96);
                *buf = 138412290;
                *v123 = v97;
                _os_log_impl(&dword_1B7AD5000, v91, OS_LOG_TYPE_INFO, "Setting CS Item with uniqueidentifier  %@ to be updatable", buf, 0xCu);
              }
            }

            objc_msgSend_setIsUpdate_(v89, v90, 1);
          }

          v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(v81, v83, &v111, v120, 16);
        }

        while (v84);
      }
    }

    if (objc_msgSend_count(v106, v79, v80, v102))
    {
      objc_msgSend__resolvedURLForItems_(self, v98, v106);
      objc_msgSend__FPProviderIDForItems_(self, v99, v106);
      objc_msgSend_reIndexWithLocalProofOfInclusionForItemsAsync_completionHandler_(self, v100, v106, &unk_1F2FA0D30);
    }

    metadataCopy = v103;
  }

  v101 = *MEMORY[0x1E69E9840];
}

- (void)reindexMessagesWithCollaborationMetadata:(id)metadata collaborationMetadata:(id)collaborationMetadata reason:(int64_t)reason completionBlock:(id)block
{
  v32 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  collaborationMetadataCopy = collaborationMetadata;
  blockCopy = block;
  v14 = objc_msgSend_count(metadataCopy, v12, v13);
  v15 = IMOSLoggingEnabled();
  if (!v14)
  {
    if (v15)
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "Trying to reindex messages with an empty guids array", buf, 2u);
      }
    }

    goto LABEL_23;
  }

  if (v15)
  {
    v18 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v31 = objc_msgSend_count(metadataCopy, v19, v20);
      _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, "Request to re-index messages with messages count: %d", buf, 8u);
    }
  }

  if (IMDCoreSpotlightDisabled(v15, v16, v17))
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Spotlight is disabled", buf, 2u);
      }
    }

LABEL_23:
    blockCopy[2](blockCopy);
    goto LABEL_24;
  }

  if (!collaborationMetadataCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v23, OS_LOG_TYPE_INFO, "No Collaboration metadata", buf, 2u);
      }
    }

    goto LABEL_23;
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_1B7B8A634;
  v25[3] = &unk_1E7CBB4B0;
  reasonCopy = reason;
  v26 = metadataCopy;
  v27 = collaborationMetadataCopy;
  v28 = blockCopy;
  IMDIndexingClientRequest(v25);

LABEL_24:
  v24 = *MEMORY[0x1E69E9840];
}

+ (id)sharedManager
{
  if (qword_1EBA53A90 != -1)
  {
    sub_1B7CF8E1C();
  }

  v3 = qword_1EBA53A70;

  return v3;
}

- (IMDCoreSpotlightIndexingManager)init
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  isSpotlightRefactorEnabled = objc_msgSend_isSpotlightRefactorEnabled(v4, v5, v6);

  if ((isSpotlightRefactorEnabled & 1) == 0)
  {
    sub_1B7CF8E30(v8, v9, v10);
  }

  v20.receiver = self;
  v20.super_class = IMDCoreSpotlightIndexingManager;
  v11 = [(IMDCoreSpotlightIndexingManager *)&v20 init];
  if (v11)
  {
    v12 = [IMDCoreSpotlightSearchableItemGenerator alloc];
    v15 = objc_msgSend_sharedController(IMDIndexingMessageScrutinyController, v13, v14);
    v17 = objc_msgSend_initWithScrutinyController_delegate_(v12, v16, v15, v11);
    searchableItemGenerator = v11->_searchableItemGenerator;
    v11->_searchableItemGenerator = v17;
  }

  return v11;
}

- (void)_deleteSearchableItemsWithIdentifiers:(id)identifiers fromIndex:(id)index withReason:(int64_t)reason completionHandler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  indexCopy = index;
  handlerCopy = handler;
  IMDIndexingAssertClientRequestQueue();
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v15 = objc_msgSend_count(identifiersCopy, v13, v14);
      v16 = NSStringFromIMCoreSpotlightIndexReason();
      *buf = 134218242;
      *&buf[4] = v15;
      *&buf[12] = 2112;
      *&buf[14] = v16;
      _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "Deleting %ld messages from index due to %@", buf, 0x16u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v28 = sub_1B7AE1A74;
  v29 = sub_1B7AE2550;
  v30 = 0;
  v17 = dispatch_group_create();
  dispatch_group_enter(v17);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_1B7B93F78;
  v24[3] = &unk_1E7CBB600;
  v26 = buf;
  v18 = v17;
  v25 = v18;
  objc_msgSend_deleteSearchableItemsWithIdentifiers_reason_completionHandler_(indexCopy, v19, identifiersCopy, reason, v24);
  v20 = IMDIndexingClientRequestQueue();
  dispatch_time(0, 60000000000);
  v22 = identifiersCopy;
  v23 = handlerCopy;
  IMDispatchGroupNotifyWithTimeout();

  _Block_object_dispose(buf, 8);
  v21 = *MEMORY[0x1E69E9840];
}

- (id)messageIndexingJobWithSize:(int64_t)size context:(id)context timingCollection:(id)collection
{
  collectionCopy = collection;
  contextCopy = context;
  v8 = [IMDCoreSpotlightMessageIndexingJob alloc];
  v10 = objc_msgSend_initWithContext_timing_(v8, v9, contextCopy, collectionCopy);

  return v10;
}

- (void)deleteAttachmentGUIDs:(id)ds reason:(int64_t)reason completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B94288;
  v13[3] = &unk_1E7CBB4B0;
  v13[4] = self;
  v14 = dsCopy;
  v15 = handlerCopy;
  reasonCopy = reason;
  v10 = handlerCopy;
  v11 = dsCopy;
  objc_msgSend__performSpotlightRequestWithBlock_(self, v12, v13);
}

- (void)deleteMessageGUIDs:(id)ds reason:(int64_t)reason completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B943B4;
  v13[3] = &unk_1E7CBB4B0;
  v14 = dsCopy;
  selfCopy = self;
  v16 = handlerCopy;
  reasonCopy = reason;
  v10 = handlerCopy;
  v11 = dsCopy;
  objc_msgSend__performSpotlightRequestWithBlock_(self, v12, v13);
}

- (id)_chatDictionaryForChatGUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1B7AE1A74;
  v15 = sub_1B7AE2550;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7B9464C;
  v8[3] = &unk_1E7CBB6A0;
  v4 = dCopy;
  v9 = v4;
  v10 = &v11;
  IMDPersistencePerformBlock(v8, 1, v5);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (void)deleteChatGUIDs:(id)ds reason:(int64_t)reason completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B94778;
  v13[3] = &unk_1E7CBB4B0;
  v14 = dsCopy;
  selfCopy = self;
  v16 = handlerCopy;
  reasonCopy = reason;
  v10 = handlerCopy;
  v11 = dsCopy;
  objc_msgSend__performSpotlightRequestWithBlock_(self, v12, v13);
}

- (void)addChatGUIDs:(id)ds context:(id)context completionHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  contextCopy = context;
  handlerCopy = handler;
  if (IMDCoreSpotlightDisabled(handlerCopy, v11, v12) || !objc_msgSend_count(dsCopy, v13, v14))
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v26 = objc_msgSend_count(dsCopy, v16, v17);
        _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "Adding %lu chats to CoreSpotlight", buf, 0xCu);
      }
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1B7B94F80;
    v20[3] = &unk_1E7CB70F8;
    v21 = dsCopy;
    selfCopy = self;
    v23 = contextCopy;
    v24 = handlerCopy;
    objc_msgSend__performSpotlightRequestWithBlock_(self, v18, v20);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)deleteAllDonationsForAppDeletionWithCompletion:(id)completion
{
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Deleting all spotlight data because the app is being uninstalled.", buf, 2u);
    }
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7B953C4;
  v8[3] = &unk_1E7CB7260;
  v8[4] = self;
  v9 = completionCopy;
  v6 = completionCopy;
  objc_msgSend__performSpotlightRequestWithBlock_(self, v7, v8);
}

- (void)postProcessIndexingForItem:(id)item chatDictionary:(id)dictionary context:(id)context
{
  contextCopy = context;
  dictionaryCopy = dictionary;
  itemCopy = item;
  v13 = objc_msgSend_sharedController(IMDIndexingController, v10, v11);
  objc_msgSend_postProcessIndexingForItem_chatDictionary_context_(v13, v12, itemCopy, dictionaryCopy, contextCopy);
}

- (id)indexableIdentifiersForMessageDict:(id)dict chatDictionary:(id)dictionary context:(id)context requireIndexableAttachments:(BOOL)attachments
{
  attachmentsCopy = attachments;
  v74 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  dictionaryCopy = dictionary;
  contextCopy = context;
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = objc_msgSend_sharedManager(IMDCoreSpotlightIndexingManager, v13, v14);
  v18 = objc_msgSend_searchableItemGenerator(v15, v16, v17);
  v20 = objc_msgSend_newSearchableItemsForMessageItemDictionary_chatDictionary_context_rejectedItems_populatedChatItems_(v18, v19, dictCopy, dictionaryCopy, contextCopy, v12, 0);

  if (objc_msgSend_count(v20, v21, v22))
  {
    v61 = v12;
    v62 = contextCopy;
    v63 = dictionaryCopy;
    if (attachmentsCopy)
    {
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v25 = v20;
      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v68, v73, 16);
      if (v27)
      {
        v30 = v27;
        v31 = *v69;
        v32 = MEMORY[0x1E695E0F0];
        while (2)
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v69 != v31)
            {
              objc_enumerationMutation(v25);
            }

            v34 = objc_msgSend_domainIdentifier(*(*(&v68 + 1) + 8 * i), v28, v29);
            isEqualToString = objc_msgSend_isEqualToString_(v34, v35, @"attachmentDomain");

            if (isEqualToString)
            {

              goto LABEL_14;
            }
          }

          v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v68, v73, 16);
          if (v30)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v32 = MEMORY[0x1E695E0F0];
      }

      v12 = v61;
    }

    else
    {
LABEL_14:
      v25 = objc_msgSend_set(MEMORY[0x1E695DFA8], v23, v24, dictCopy);
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v37 = v20;
      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v64, v72, 16);
      if (v39)
      {
        v42 = v39;
        v43 = *v65;
        do
        {
          for (j = 0; j != v42; ++j)
          {
            if (*v65 != v43)
            {
              objc_enumerationMutation(v37);
            }

            v45 = *(*(&v64 + 1) + 8 * j);
            v46 = objc_msgSend_domainIdentifier(v45, v40, v41);
            v48 = objc_msgSend_isEqualToString_(v46, v47, @"attachmentDomain");

            if ((v48 & 1) == 0)
            {
              v49 = objc_msgSend_uniqueIdentifier(v45, v40, v41);
              objc_msgSend_addObject_(v25, v50, v49);
            }
          }

          v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v40, &v64, v72, 16);
        }

        while (v42);
      }

      v12 = v61;
      v52 = objc_msgSend_arrayByApplyingSelector_(v61, v51, sel_proposedIdentifier);
      v54 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v53, v52);
      objc_msgSend_minusSet_(v25, v55, v54);

      v32 = objc_msgSend_allObjects(v25, v56, v57);

      dictCopy = v60;
    }

    contextCopy = v62;
    dictionaryCopy = v63;
  }

  else
  {
    v32 = MEMORY[0x1E695E0F0];
  }

  v58 = *MEMORY[0x1E69E9840];

  return v32;
}

- (void)_deleteAllSearchableItemsWithReason:(int64_t)reason completionHandler:(id)handler
{
  v6 = MEMORY[0x1E696AD98];
  handlerCopy = handler;
  v9 = objc_msgSend_numberWithInteger_(v6, v8, reason);
  objc_msgSend__setLastIndexDeleteReason_(self, v10, v9);

  v12 = IMCoreSpotlightCriticalIndex();
  objc_msgSend_deleteAllSearchableItemsWithReason_completionHandler_(v12, v11, reason, handlerCopy);
}

- (void)prepareForReindexingWithReason:(int64_t)reason completion:(id)completion
{
  v36 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v35 = "[IMDCoreSpotlightIndexingManager(Reindexing) prepareForReindexingWithReason:completion:]";
      _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "%s starting reindex", buf, 0xCu);
    }
  }

  v10 = objc_msgSend_sharedController(IMDIndexingController, v7, v8);
  v13 = objc_msgSend_maxRowID(v10, v11, v12);

  v16 = objc_msgSend_sharedController(IMDIndexingController, v14, v15);
  v19 = objc_msgSend_totalMessages(v16, v17, v18);

  v22 = objc_msgSend_sharedController(IMDIndexingController, v20, v21);
  v25 = objc_msgSend_totalChats(v22, v23, v24);

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_1B7B95DC8;
  v28[3] = &unk_1E7CBB7B8;
  v28[4] = self;
  v29 = completionCopy;
  reasonCopy = reason;
  v31 = v13;
  v32 = v19;
  v33 = v25;
  v26 = completionCopy;
  IMDIndexingClientRequest(v28);

  v27 = *MEMORY[0x1E69E9840];
}

- (void)setNeedsMessageReindexingWithReason:(int64_t)reason completion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7B96138;
  v9[3] = &unk_1E7CBB830;
  v9[4] = self;
  v10 = completionCopy;
  reasonCopy = reason;
  v7 = completionCopy;
  objc_msgSend_prepareForReindexingWithReason_completion_(self, v8, reason, v9);
}

- (void)indexNextMessageBatchIfNeeded:(unint64_t)needed reason:(int64_t)reason completion:(id)completion
{
  v47 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v11 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v9, v10);
  isSpotlightReindexRefactorEnabled = objc_msgSend_isSpotlightReindexRefactorEnabled(v11, v12, v13);

  if (isSpotlightReindexRefactorEnabled)
  {
    completionCopy[2](completionCopy, 0);
    goto LABEL_32;
  }

  v15 = IMOSLoggingEnabled();
  if (v15)
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      neededCopy = needed;
      _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, "Indexing next batch of messages. Batch size of %lu", buf, 0xCu);
    }
  }

  if (IMDCoreSpotlightDisabled(v15, v16, v17))
  {
    if (!completionCopy)
    {
      goto LABEL_32;
    }

LABEL_31:
    completionCopy[2](completionCopy, 0);
    goto LABEL_32;
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
        neededCopy = v26;
        _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "Skipping indexing next batch since skipIndexing is set to %@", buf, 0xCu);
      }
    }

    if (completionCopy)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (objc_msgSend__shouldIndexNextBatchForBatchSize_(self, v21, needed))
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = sub_1B7B96878;
      v35[3] = &unk_1E7CBB858;
      reasonCopy = reason;
      neededCopy2 = needed;
      v35[4] = self;
      v36 = completionCopy;
      IMDIndexingClientRequest(v35);

      goto LABEL_32;
    }

    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v30 = objc_msgSend_needsIndexing(MEMORY[0x1E69A7FF8], v28, v29);
        v31 = IMDSystemMigrationOccurred();
        v32 = @"NO";
        neededCopy = "[IMDCoreSpotlightIndexingManager(Reindexing) indexNextMessageBatchIfNeeded:reason:completion:]";
        v41 = 2048;
        if (v30)
        {
          v33 = @"YES";
        }

        else
        {
          v33 = @"NO";
        }

        *buf = 136315906;
        neededCopy3 = needed;
        v43 = 2112;
        if (v31)
        {
          v32 = @"YES";
        }

        v44 = v33;
        v45 = 2112;
        v46 = v32;
        _os_log_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_INFO, "%s - Not indexing. Batch size %lu needsIndexing %@ hasMigrated %@", buf, 0x2Au);
      }
    }

    if (completionCopy)
    {
      goto LABEL_31;
    }
  }

LABEL_32:

  v34 = *MEMORY[0x1E69E9840];
}

- (void)indexChatsWithReason:(int64_t)reason completion:(id)completion
{
  completionCopy = completion;
  if (IMDCoreSpotlightDisabled(completionCopy, v7, v8))
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v9 = _IMDSpotlightIndexForIndexingReason();
    if (v9)
    {
      v10 = [IMDCoreSpotlightChatReindexingJob alloc];
      v12 = objc_msgSend_initWithIndex_reason_delegate_(v10, v11, v9, reason, self);
      objc_msgSend_runWithCompletionBlock_(v12, v13, completionCopy);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *v15 = 0;
          _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, " Failed to create index!", v15, 2u);
        }
      }

      completionCopy[2](completionCopy, 0);
    }
  }
}

- (void)_sanitizeIndexesForCurrentVersionIfNeeded:(id)needed
{
  v45 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  v7 = objc_msgSend_sharedManager(IMDSpotlightClientStateManager, v5, v6);
  v40 = 0;
  v9 = objc_msgSend_currentClientStateWithError_(v7, v8, &v40);
  v10 = v40;

  if (v10)
  {
    neededCopy[2](neededCopy, v10);
    goto LABEL_28;
  }

  if ((objc_msgSend_needsIndexDrop(v9, v11, v12) & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v30, OS_LOG_TYPE_INFO, "Bypassing index version comparisons. **NOT** deleting indexes", buf, 2u);
      }
    }

    goto LABEL_27;
  }

  v15 = objc_msgSend_needsReindex(v9, v13, v14);
  v16 = IMOSLoggingEnabled();
  if (v15)
  {
    if (v16)
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v20 = objc_msgSend_indexRevision(v9, v18, v19);
        v23 = objc_msgSend__latestIndexRevision(MEMORY[0x1E69A82A8], v21, v22);
        *buf = 134218240;
        v42 = v20;
        v43 = 2048;
        v44 = v23;
        _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "Current idx version is %llu, expected is %llu, deleting prior indexes", buf, 0x16u);
      }
    }

    v24 = _IMDSpotlightIndexForIndexingReason();
    v25 = v24 == 0;

    if (!v25)
    {
      v26 = objc_alloc_init(MEMORY[0x1E69A6170]);
      objc_msgSend_startTimingForKey_(v26, v27, @"CSDeleteAllIndexes");
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = sub_1B7B96E7C;
      v37[3] = &unk_1E7CBB398;
      v38 = v26;
      v39 = neededCopy;
      v28 = v26;
      objc_msgSend__deleteAllSearchableItemsWithReason_completionHandler_(self, v29, 4, v37);

      goto LABEL_28;
    }

    if (IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v35, OS_LOG_TYPE_INFO, " Failed to create index!", buf, 2u);
      }
    }

    if (neededCopy)
    {
LABEL_27:
      neededCopy[2](neededCopy, 0);
    }
  }

  else
  {
    if (v16)
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v34 = objc_msgSend_indexRevision(v9, v32, v33);
        *buf = 134217984;
        v42 = v34;
        _os_log_impl(&dword_1B7AD5000, v31, OS_LOG_TYPE_INFO, "Current idx version is %llu, index does not need deletion", buf, 0xCu);
      }
    }

    if (neededCopy)
    {
      goto LABEL_27;
    }
  }

LABEL_28:

  v36 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldIndexNextBatchForBatchSize:(unint64_t)size
{
  if (!size || !objc_msgSend_needsIndexing(MEMORY[0x1E69A7FF8], a2, size))
  {
    return 0;
  }

  return IMDSystemMigrationOccurred();
}

@end