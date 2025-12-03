@interface _IMDCoreSpotlightSearchableMessageItemGenerator
- (BOOL)_populateMetadataAttributesAndCreateAuxItems;
- (BOOL)isDenylisted;
- (BOOL)isMultiPart;
- (BOOL)isOtherPluginMessage;
- (BOOL)isValid;
- (_IMDCoreSpotlightSearchableMessageItemGenerator)initWithGenerator:(id)generator messageItemDictionary:(id)dictionary chatDictionary:(id)chatDictionary context:(id)context rejectedItems:(id)items populatedChatItems:(id)chatItems;
- (id)chatDisplayName;
- (id)chatGUID;
- (id)date;
- (id)descriptor;
- (id)generate;
- (id)indexers;
- (id)messageGUID;
- (id)threadOriginatorFormattedGUID;
- (void)_addTimeSensitiveListenerIfNeededForSearchableItem:(id)item;
- (void)_generateHiddenRootItem;
- (void)_generateTextParts;
- (void)_generateVisibleRootItem;
@end

@implementation _IMDCoreSpotlightSearchableMessageItemGenerator

- (void)_generateVisibleRootItem
{
  v4 = objc_msgSend_metadataAttributes(self, a2, v2);
  v7 = objc_msgSend_messageGUID(self, v5, v6);
  v10 = objc_msgSend_descriptor(self, v8, v9);
  v13 = objc_msgSend_messageBody(v10, v11, v12);
  v16 = objc_msgSend_string(v13, v14, v15);
  v19 = objc_msgSend_chatDisplayName(self, v17, v18);
  v22 = objc_msgSend_date(self, v20, v21);
  objc_msgSend_associateMessageEntityWithIdentifier_displayTitle_displaySubtitle_date_(v4, v23, v7, v16, v19, v22);

  v26 = objc_msgSend_metadataAttributes(self, v24, v25);
  v31 = objc_msgSend_threadOriginatorFormattedGUID(self, v27, v28);
  v32 = v31;
  if (!v31)
  {
    v32 = objc_msgSend_messageGUID(self, v29, v30);
  }

  v33 = objc_msgSend_threadIdentifierCustomKey(MEMORY[0x1E69A7FF8], v29, v30);
  objc_msgSend_setValue_forCustomKey_(v26, v34, v32, v33);

  if (!v31)
  {
  }

  v37 = objc_msgSend_metadataAttributes(self, v35, v36);
  v40 = objc_msgSend_partCountKey(MEMORY[0x1E69A7FF8], v38, v39);
  objc_msgSend_setValue_forCustomKey_(v37, v41, &unk_1F2FCA320, v40);

  v44 = objc_msgSend_metadataAttributes(self, v42, v43);
  v47 = objc_msgSend_partIndexKey(MEMORY[0x1E69A7FF8], v45, v46);
  objc_msgSend_setValue_forCustomKey_(v44, v48, &unk_1F2FCA338, v47);

  v49 = objc_alloc(MEMORY[0x1E6964E80]);
  v52 = objc_msgSend_messageGUID(self, v50, v51);
  v55 = objc_msgSend_chatGUID(self, v53, v54);
  v58 = objc_msgSend_metadataAttributes(self, v56, v57);
  v81 = objc_msgSend_initWithUniqueIdentifier_domainIdentifier_attributeSet_(v49, v59, v52, v55, v58);

  v62 = objc_msgSend_distantFuture(MEMORY[0x1E695DF00], v60, v61);
  objc_msgSend_setExpirationDate_(v81, v63, v62);

  v66 = objc_msgSend_context(self, v64, v65);
  v67 = sub_1B7BC1A24(v66);
  objc_msgSend_setIsUpdate_(v81, v68, v67);

  objc_msgSend__addTimeSensitiveListenerIfNeededForSearchableItem_(self, v69, v81);
  v72 = objc_msgSend_generator(self, v70, v71);
  v75 = objc_msgSend_chatDictionary(self, v73, v74);
  objc_msgSend__updateFilteringForSearchableItem_chatDictionary_(v72, v76, v81, v75);

  v79 = objc_msgSend_generatedItems(self, v77, v78);
  objc_msgSend_addObject_(v79, v80, v81);
}

- (id)generate
{
  if (objc_msgSend__populateMetadataAttributesAndCreateAuxItems(self, a2, v2))
  {
    if (objc_msgSend_isMultiPart(self, v4, v5))
    {
      objc_msgSend__generateTextParts(self, v6, v7);
      objc_msgSend__generateHiddenRootItem(self, v8, v9);
    }

    else
    {
      objc_msgSend__generateVisibleRootItem(self, v6, v7);
    }

    v13 = objc_msgSend_generatedItems(self, v10, v11);
    v16 = objc_msgSend_auxItems(self, v14, v15);
    objc_msgSend_addObjectsFromArray_(v13, v17, v16);

    v20 = objc_msgSend_generatedItems(self, v18, v19);
    v12 = objc_msgSend_copy(v20, v21, v22);
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  return v12;
}

- (_IMDCoreSpotlightSearchableMessageItemGenerator)initWithGenerator:(id)generator messageItemDictionary:(id)dictionary chatDictionary:(id)chatDictionary context:(id)context rejectedItems:(id)items populatedChatItems:(id)chatItems
{
  generatorCopy = generator;
  dictionaryCopy = dictionary;
  chatDictionaryCopy = chatDictionary;
  contextCopy = context;
  itemsCopy = items;
  chatItemsCopy = chatItems;
  v28.receiver = self;
  v28.super_class = _IMDCoreSpotlightSearchableMessageItemGenerator;
  v18 = [(_IMDCoreSpotlightSearchableMessageItemGenerator *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_generator, generator);
    objc_storeStrong(&v19->_itemDictionary, dictionary);
    objc_storeStrong(&v19->_chatDictionary, chatDictionary);
    objc_storeStrong(&v19->_context, context);
    objc_storeStrong(&v19->_rejectedItems, items);
    objc_storeStrong(&v19->_populatedChatItems, chatItems);
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    auxItems = v19->_auxItems;
    v19->_auxItems = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    generatedItems = v19->_generatedItems;
    v19->_generatedItems = v22;
  }

  return v19;
}

- (id)messageGUID
{
  v3 = objc_msgSend_itemDictionary(self, a2, v2);
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"guid");

  return v5;
}

- (id)chatGUID
{
  v3 = objc_msgSend_chatDictionary(self, a2, v2);
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"guid");

  return v5;
}

- (id)indexers
{
  v3 = objc_msgSend_context(self, a2, v2);
  v4 = IMDSpotlightPriorityIndexerClassesForIndexingContext(v3);

  return v4;
}

- (id)chatDisplayName
{
  v4 = objc_msgSend_chatDictionary(self, a2, v2);
  v6 = objc_msgSend_integerValueForKey_withDefault_(v4, v5, @"isFiltered", 0);

  v9 = objc_msgSend_chatDictionary(self, v7, v8);
  v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"participants");
  v12 = v11;
  v13 = MEMORY[0x1E695E0F0];
  if (v11)
  {
    v13 = v11;
  }

  v14 = v13;

  shouldDisplayGroupNameAndPhotoWith_handles = objc_msgSend_shouldDisplayGroupNameAndPhotoWith_handles_(IMDGroupNameAndPhotoHelper, v15, v6, v14);
  v19 = 0;
  if (shouldDisplayGroupNameAndPhotoWith_handles)
  {
    v20 = objc_msgSend_chatDictionary(self, v17, v18);
    v19 = objc_msgSend_objectForKeyedSubscript_(v20, v21, @"groupName");
  }

  return v19;
}

- (BOOL)isDenylisted
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_chatDictionary(self, a2, v2);
  v6 = objc_msgSend_BOOLValueForKey_withDefault_(v4, v5, @"isBlackholed", 0);

  v9 = objc_msgSend_chatDictionary(self, v7, v8);
  v11 = objc_msgSend_integerValueForKey_withDefault_(v9, v10, @"isFiltered", 0);

  v14 = objc_msgSend_generator(self, v12, v13);
  v17 = objc_msgSend_scrutinyController(v14, v15, v16);
  v20 = objc_msgSend_messageGUID(self, v18, v19);
  if ((objc_msgSend_isMessageBlocklisted_(v17, v21, v20) | v6))
  {
  }

  else
  {

    if (v11 != 2)
    {
      result = 0;
      goto LABEL_12;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v25 = objc_msgSend_messageGUID(self, v23, v24);
      v26 = v25;
      v27 = @"NO";
      if (v6)
      {
        v27 = @"YES";
      }

      v30 = 138412546;
      v31 = v25;
      v32 = 2112;
      v33 = v27;
      _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "IMDCoreSpotlight - Skipping indexing %@, denylisted - isBlackholed: %@", &v30, 0x16u);
    }
  }

  result = 1;
LABEL_12:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isValid
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_chatGUID(self, a2, v2);
  if (objc_msgSend_length(v4, v5, v6))
  {
    v9 = objc_msgSend_messageGUID(self, v7, v8);
    v12 = objc_msgSend_length(v9, v10, v11);

    if (v12)
    {
      LOBYTE(v15) = objc_msgSend_isDenylisted(self, v13, v14) ^ 1;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v15 = IMOSLoggingEnabled();
  if (v15)
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v19 = objc_msgSend_itemDictionary(self, v17, v18);
      v22 = objc_msgSend_count(v19, v20, v21);
      v25 = objc_msgSend_chatDictionary(self, v23, v24);
      v28 = objc_msgSend_count(v25, v26, v27);
      v31 = objc_msgSend_itemDictionary(self, v29, v30);
      v34 = objc_msgSend_chatDictionary(self, v32, v33);
      v37 = 134349826;
      v38 = v22;
      v39 = 2050;
      v40 = v28;
      v41 = 2112;
      v42 = v31;
      v43 = 2112;
      v44 = v34;
      _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Not attempting to index malformed message/chat pair. message dict has %{public}lld entries, chat dict has %{public}lld entries. %@ %@", &v37, 0x2Au);
    }

    LOBYTE(v15) = 0;
  }

LABEL_9:
  v35 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)_populateMetadataAttributesAndCreateAuxItems
{
  v153 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_isValid(self, a2, v2))
  {
    LOBYTE(v37) = 0;
    goto LABEL_43;
  }

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = objc_msgSend_messageGUID(self, v5, v6);
      *buf = 138412290;
      v151 = v7;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Indexing placing %@ under scrutiny", buf, 0xCu);
    }
  }

  v8 = objc_alloc(MEMORY[0x1E6964E90]);
  v10 = objc_msgSend_initWithItemContentType_(v8, v9, *MEMORY[0x1E6963848]);
  objc_msgSend_setMetadataAttributes_(self, v11, v10);

  v14 = objc_msgSend_generator(self, v12, v13);
  v17 = objc_msgSend_scrutinyController(v14, v15, v16);
  v20 = objc_msgSend_messageGUID(self, v18, v19);
  objc_msgSend_setMessageGUIDUnderScrutiny_(v17, v21, v20);

  val = objc_alloc_init(IMDSpotlightIndexerTimingProfiler);
  v24 = objc_msgSend_spotlightTimeoutSeconds(MEMORY[0x1E69A7FF8], v22, v23);
  objc_msgSend_startMainTimerWithExpectedTimeoutInterval_(val, v25, v26, v24);
  if (objc_msgSend_exitOnIndexingTimeout(MEMORY[0x1E69A7FF8], v27, v28))
  {
    objc_initWeak(buf, val);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1B7BC1404;
    block[3] = &unk_1E7CBC240;
    objc_copyWeak(&v149, buf);
    block[4] = self;
    v31 = dispatch_block_create(0, block);
    v34 = objc_msgSend_spotlightTimeoutSeconds(MEMORY[0x1E69A7FF8], v32, v33);
    v35 = dispatch_time(0, 1000000000 * v34);
    v36 = dispatch_get_global_queue(2, 0);
    v139 = v31;
    dispatch_after(v35, v36, v31);

    objc_destroyWeak(&v149);
    objc_destroyWeak(buf);
  }

  else
  {
    v139 = 0;
  }

  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  v38 = objc_msgSend_indexers(self, v29, v30, v139);
  v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v144, v152, 16);
  if (v41)
  {
    obj = v38;
    v142 = *v145;
    while (2)
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v145 != v142)
        {
          objc_enumerationMutation(obj);
        }

        v43 = *(*(&v144 + 1) + 8 * i);
        objc_msgSend_startTimingWithProfiler_(v43, v40, val);
        v46 = objc_msgSend_itemDictionary(self, v44, v45);
        v48 = objc_msgSend_cancelIndexingForItem_(v43, v47, v46);
        objc_msgSend_setBailed_(self, v49, v48);

        v52 = objc_msgSend_metadataAttributes(self, v50, v51);
        v55 = objc_msgSend_itemDictionary(self, v53, v54);
        v58 = objc_msgSend_chatDictionary(self, v56, v57);
        v61 = objc_msgSend_context(self, v59, v60);
        v64 = objc_msgSend_rejectedItems(self, v62, v63);
        v66 = objc_msgSend_auxiliaryItemsForPrimaryAttributes_withItem_chat_context_timingProfiler_rejectedItems_(v43, v65, v52, v55, v58, v61, val, v64);

        v69 = objc_msgSend_auxItems(self, v67, v68);
        objc_msgSend_addObjectsFromArray_(v69, v70, v66);

        if (objc_msgSend_bailed(self, v71, v72))
        {
          objc_msgSend_stopProfilingAfterIndexersBailed(val, v73, v74);

          v38 = obj;
          goto LABEL_22;
        }

        v75 = objc_msgSend_context(self, v73, v74);
        v78 = objc_msgSend_preflight(v75, v76, v77);

        if ((v78 & 1) == 0)
        {
          v81 = objc_msgSend_itemDictionary(self, v79, v80);
          v84 = objc_msgSend_chatDictionary(self, v82, v83);
          v87 = objc_msgSend_context(self, v85, v86);
          v90 = objc_msgSend_metadataAttributes(self, v88, v89);
          objc_msgSend_indexItem_withChat_context_metadataToUpdate_timingProfiler_(v43, v91, v81, v84, v87, v90, val);
        }

        objc_msgSend_stopTimingWithProfiler_(v43, v79, val);
      }

      v38 = obj;
      v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v40, &v144, v152, 16);
      if (v41)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:

  if ((objc_msgSend_bailed(self, v92, v93) & 1) == 0)
  {
    objc_msgSend_startTimingForKey_(val, v94, @"post-processor");
  }

  v96 = objc_msgSend_generator(self, v94, v95);
  v99 = objc_msgSend_delegate(v96, v97, v98);
  v102 = objc_msgSend_itemDictionary(self, v100, v101);
  v105 = objc_msgSend_chatDictionary(self, v103, v104);
  v108 = objc_msgSend_context(self, v106, v107);
  objc_msgSend_postProcessIndexingForItem_chatDictionary_context_(v99, v109, v102, v105, v108);

  if ((objc_msgSend_bailed(self, v110, v111) & 1) == 0)
  {
    objc_msgSend_stopTimingForKey_(val, v112, @"post-processor");
  }

  if (v140)
  {
    dispatch_block_cancel(v140);
  }

  if ((objc_msgSend_bailed(self, v112, v113) & 1) == 0)
  {
    objc_msgSend_stopMainTimerAndLogAfterSuccess(val, v114, v115);
  }

  if (objc_msgSend_threwException(self, v114, v115))
  {
    if (IMOSLoggingEnabled())
    {
      v120 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v120, OS_LOG_TYPE_INFO))
      {
        v123 = objc_msgSend_messageGUID(self, v121, v122);
        *buf = 138412290;
        v151 = v123;
        _os_log_impl(&dword_1B7AD5000, v120, OS_LOG_TYPE_INFO, "Indexing NOT removing %@ from scrutiny, exception was thrown", buf, 0xCu);
      }

LABEL_38:
    }
  }

  else
  {
    v124 = objc_msgSend_generator(self, v116, v117);
    v127 = objc_msgSend_scrutinyController(v124, v125, v126);
    v130 = objc_msgSend_messageGUID(self, v128, v129);
    objc_msgSend_clearMessageGUIDFromScrutiny_(v127, v131, v130);

    if (IMOSLoggingEnabled())
    {
      v120 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v120, OS_LOG_TYPE_INFO))
      {
        v134 = objc_msgSend_messageGUID(self, v132, v133);
        *buf = 138412290;
        v151 = v134;
        _os_log_impl(&dword_1B7AD5000, v120, OS_LOG_TYPE_INFO, "Indexing removing %@ from scrutiny", buf, 0xCu);
      }

      goto LABEL_38;
    }
  }

  if (objc_msgSend_bailed(self, v118, v119))
  {
    LOBYTE(v37) = 0;
  }

  else
  {
    v37 = objc_msgSend_threwException(self, v135, v136) ^ 1;
  }

LABEL_43:
  v137 = *MEMORY[0x1E69E9840];
  return v37;
}

- (id)descriptor
{
  v4 = objc_msgSend_itemDictionary(self, a2, v2);
  v6 = objc_msgSend_objectForKey_(v4, v5, @"attributedBody");

  v7 = objc_alloc(MEMORY[0x1E69A8118]);
  v10 = objc_msgSend_messageGUID(self, v8, v9);
  v12 = objc_msgSend_initWithMessageBody_messageGUID_(v7, v11, v6, v10);

  return v12;
}

- (id)date
{
  v3 = objc_msgSend_itemDictionary(self, a2, v2);
  v5 = objc_msgSend_objectForKey_(v3, v4, @"time");

  return v5;
}

- (id)threadOriginatorFormattedGUID
{
  v3 = objc_msgSend_itemDictionary(self, a2, v2);
  v5 = objc_msgSend_objectForKey_(v3, v4, @"threadOriginatorFormattedGUID");

  return v5;
}

- (void)_generateTextParts
{
  v114 = *MEMORY[0x1E69E9840];
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v4 = objc_msgSend_descriptor(self, a2, v2);
  v7 = objc_msgSend_messageParts(v4, v5, v6);

  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v109, v113, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v110;
    v14 = *MEMORY[0x1E69A5F00];
    v15 = *MEMORY[0x1E69A5F20];
    v106 = *v110;
    v107 = v7;
    v104 = *MEMORY[0x1E69A5F20];
    v105 = *MEMORY[0x1E69A5F00];
    do
    {
      v16 = 0;
      v108 = v12;
      do
      {
        if (*v110 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v17 = *(*(&v109 + 1) + 8 * v16);
        v18 = objc_msgSend_messagePartBody(v17, v10, v11);
        v21 = objc_msgSend_string(v18, v19, v20);

        if ((objc_msgSend_isEqualToString_(v21, v22, v14) & 1) == 0 && (objc_msgSend_isEqualToString_(v21, v23, v15) & 1) == 0)
        {
          v26 = objc_msgSend_metadataAttributes(self, v24, v25);
          v29 = objc_msgSend_copy(v26, v27, v28);

          v32 = objc_msgSend_messageGUID(self, v30, v31);
          v34 = objc_msgSend_messagePartGUIDForMessageGUID_(v17, v33, v32);
          v37 = objc_msgSend_encodedMessagePartGUID(v34, v35, v36);

          v40 = objc_msgSend_context(self, v38, v39);
          LODWORD(v32) = IMDSpotlightIndexingIncludesTextContentForIndexingContext(v40, v41, v42);

          if (v32)
          {
            v45 = objc_msgSend_chatDisplayName(self, v43, v44);
            v48 = objc_msgSend_date(self, v46, v47);
            objc_msgSend_associateMessageEntityWithIdentifier_displayTitle_displaySubtitle_date_(v29, v49, v37, v21, v45, v48);

            objc_msgSend_setTextContent_(v29, v50, v21);
          }

          v51 = objc_msgSend_threadOriginatorFormattedGUID(self, v43, v44);
          v54 = v51;
          if (v51)
          {
            v55 = v51;
          }

          else
          {
            v55 = v37;
          }

          v56 = objc_msgSend_threadIdentifierCustomKey(MEMORY[0x1E69A7FF8], v52, v53);
          objc_msgSend_setValue_forCustomKey_(v29, v57, v55, v56);

          v58 = MEMORY[0x1E696AD98];
          v61 = objc_msgSend_messagePartIndex(v17, v59, v60);
          v63 = objc_msgSend_numberWithUnsignedInteger_(v58, v62, v61);
          v66 = objc_msgSend_partIndexKey(MEMORY[0x1E69A7FF8], v64, v65);
          objc_msgSend_setValue_forCustomKey_(v29, v67, v63, v66);

          v70 = objc_msgSend_messageGUID(self, v68, v69);
          objc_msgSend_setOwnerIdentifier_(v29, v71, v70);

          v74 = objc_msgSend_messageGUID(self, v72, v73);
          objc_msgSend_setRelatedUniqueIdentifier_(v29, v75, v74);

          v76 = objc_alloc(MEMORY[0x1E6964E80]);
          v79 = objc_msgSend_chatGUID(self, v77, v78);
          v81 = objc_msgSend_initWithUniqueIdentifier_domainIdentifier_attributeSet_(v76, v80, v37, v79, v29);

          v84 = objc_msgSend_distantFuture(MEMORY[0x1E695DF00], v82, v83);
          objc_msgSend_setExpirationDate_(v81, v85, v84);

          v88 = objc_msgSend_context(self, v86, v87);
          v89 = sub_1B7BC1A24(v88);
          objc_msgSend_setIsUpdate_(v81, v90, v89);

          objc_msgSend__addTimeSensitiveListenerIfNeededForSearchableItem_(self, v91, v81);
          v94 = objc_msgSend_generator(self, v92, v93);
          v97 = objc_msgSend_chatDictionary(self, v95, v96);
          objc_msgSend__updateFilteringForSearchableItem_chatDictionary_(v94, v98, v81, v97);

          v101 = objc_msgSend_generatedItems(self, v99, v100);
          objc_msgSend_addObject_(v101, v102, v81);

          v13 = v106;
          v7 = v107;
          v15 = v104;
          v14 = v105;
          v12 = v108;
        }

        ++v16;
      }

      while (v12 != v16);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v109, v113, 16);
    }

    while (v12);
  }

  v103 = *MEMORY[0x1E69E9840];
}

- (void)_generateHiddenRootItem
{
  if (objc_msgSend_isOtherPluginMessage(self, a2, v2))
  {
    v6 = objc_msgSend_metadataAttributes(self, v4, v5);
    v9 = objc_msgSend_messageGUID(self, v7, v8);
    v12 = objc_msgSend_descriptor(self, v10, v11);
    v15 = objc_msgSend_messageBody(v12, v13, v14);
    v18 = objc_msgSend_string(v15, v16, v17);
    v21 = objc_msgSend_chatDisplayName(self, v19, v20);
    v24 = objc_msgSend_date(self, v22, v23);
    objc_msgSend_associateMessageEntityWithIdentifier_displayTitle_displaySubtitle_date_(v6, v25, v9, v18, v21, v24);
  }

  v26 = objc_msgSend_metadataAttributes(self, v4, v5);
  v91 = objc_msgSend_copy(v26, v27, v28);

  v31 = objc_msgSend_threadOriginatorFormattedGUID(self, v29, v30);
  v34 = v31;
  if (v31)
  {
    v35 = v31;
  }

  else
  {
    v35 = objc_msgSend_messageGUID(self, v32, v33);
  }

  v36 = v35;

  v39 = objc_msgSend_threadIdentifierCustomKey(MEMORY[0x1E69A7FF8], v37, v38);
  objc_msgSend_setValue_forCustomKey_(v91, v40, v36, v39);

  v41 = MEMORY[0x1E696AD98];
  v44 = objc_msgSend_generatedItems(self, v42, v43);
  v47 = objc_msgSend_count(v44, v45, v46);
  v50 = objc_msgSend_auxItems(self, v48, v49);
  v53 = objc_msgSend_count(v50, v51, v52);
  v55 = objc_msgSend_numberWithUnsignedInteger_(v41, v54, v53 + v47);
  v58 = objc_msgSend_partCountKey(MEMORY[0x1E69A7FF8], v56, v57);
  objc_msgSend_setValue_forCustomKey_(v91, v59, v55, v58);

  objc_msgSend_setTextContent_(v91, v60, 0);
  objc_msgSend_setDisableSearchInSpotlight_(v91, v61, MEMORY[0x1E695E118]);
  v62 = objc_alloc(MEMORY[0x1E6964E80]);
  v65 = objc_msgSend_messageGUID(self, v63, v64);
  v68 = objc_msgSend_chatGUID(self, v66, v67);
  v70 = objc_msgSend_initWithUniqueIdentifier_domainIdentifier_attributeSet_(v62, v69, v65, v68, v91);

  v73 = objc_msgSend_distantFuture(MEMORY[0x1E695DF00], v71, v72);
  objc_msgSend_setExpirationDate_(v70, v74, v73);

  v77 = objc_msgSend_context(self, v75, v76);
  v78 = sub_1B7BC1A24(v77);
  objc_msgSend_setIsUpdate_(v70, v79, v78);

  v82 = objc_msgSend_generator(self, v80, v81);
  v85 = objc_msgSend_chatDictionary(self, v83, v84);
  objc_msgSend__updateFilteringForSearchableItem_chatDictionary_(v82, v86, v70, v85);

  v89 = objc_msgSend_generatedItems(self, v87, v88);
  objc_msgSend_insertObject_atIndex_(v89, v90, v70, 0);
}

- (BOOL)isMultiPart
{
  v4 = objc_msgSend_generator(self, a2, v2);
  v7 = objc_msgSend_itemDictionary(self, v5, v6);
  shouldSkipMessagePartPrefixingForItemDictionary = objc_msgSend__shouldSkipMessagePartPrefixingForItemDictionary_(v4, v8, v7);

  if (shouldSkipMessagePartPrefixingForItemDictionary)
  {
    return 0;
  }

  v13 = objc_msgSend_descriptor(self, v10, v11);
  v16 = objc_msgSend_messageParts(v13, v14, v15);
  v12 = objc_msgSend_count(v16, v17, v18) > 1;

  return v12;
}

- (BOOL)isOtherPluginMessage
{
  v3 = objc_msgSend_metadataAttributes(self, a2, v2);
  v6 = objc_msgSend_messageType(v3, v4, v5);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v7, @"op");

  return isEqualToString;
}

- (void)_addTimeSensitiveListenerIfNeededForSearchableItem:(id)item
{
  itemCopy = item;
  v6 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v4, v5);
  isPriorityMessagesEnabled = objc_msgSend_isPriorityMessagesEnabled(v6, v7, v8);

  if (isPriorityMessagesEnabled)
  {
    v12 = objc_msgSend_metadataAttributes(self, v10, v11);
    v15 = objc_msgSend_checkPriorityCustomKey(MEMORY[0x1E69A7FF8], v13, v14);
    v17 = objc_msgSend_valueForCustomKey_(v12, v16, v15);

    if (objc_msgSend_BOOLValue(v17, v18, v19))
    {
      updated = objc_msgSend_updateListenerOptions(itemCopy, v20, v21);
      objc_msgSend_setUpdateListenerOptions_(itemCopy, v23, updated | 8);
    }
  }
}

@end