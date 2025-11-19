@interface IMDCoreSpotlightSearchableItemGenerator
- (BOOL)_shouldSkipMessagePartPrefixingForItemDictionary:(id)a3;
- (IMDCoreSpotlightSearchableItemGenerator)initWithScrutinyController:(id)a3 delegate:(id)a4;
- (id)newChatSearchableItemForChatDictionary:(id)a3 optionalLastMessageDate:(id)a4;
- (id)newChatSearchableItemForChatDictionary:(id)a3 optionalLastMessageDate:(id)a4 error:(id *)a5;
- (id)newSearchableItemsForMessageItemDictionary:(id)a3 chatDictionary:(id)a4 context:(id)a5 rejectedItems:(id)a6 populatedChatItems:(id)a7;
- (void)_updateFilteringForSearchableItem:(id)a3 chatDictionary:(id)a4;
@end

@implementation IMDCoreSpotlightSearchableItemGenerator

- (IMDCoreSpotlightSearchableItemGenerator)initWithScrutinyController:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IMDCoreSpotlightSearchableItemGenerator;
  v9 = [(IMDCoreSpotlightSearchableItemGenerator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_scrutinyController, a3);
    objc_storeStrong(&v10->_delegate, a4);
  }

  return v10;
}

- (id)newChatSearchableItemForChatDictionary:(id)a3 optionalLastMessageDate:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v9 = objc_msgSend_newChatSearchableItemForChatDictionary_optionalLastMessageDate_error_(self, v8, v6, v7, &v15);
  v10 = v15;
  if (v10)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v17 = v6;
        _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "(1/2) Failed to generate searchable chat item for chat dictionary %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v17 = v10;
        _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "(1/2) Failed to generate searchable chat item with error %@", buf, 0xCu);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)newChatSearchableItemForChatDictionary:(id)a3 optionalLastMessageDate:(id)a4 error:(id *)a5
{
  v151 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    IMDPersistenceCheckNotDatabaseThread();
    IMDIndexingAssertClientRequestQueue();
    v9 = _IMDCoreSpotlightChatUIDForChatDictionary(v7);
    v11 = objc_msgSend_objectForKey_(v7, v10, @"guid");
    v13 = v11;
    v134 = v11;
    if (!v9 || !v11)
    {
      if (!a5)
      {
        v44 = 0;
LABEL_51:

        goto LABEL_52;
      }

      v45 = MEMORY[0x1E696ABC0];
      v147 = *MEMORY[0x1E696A578];
      v46 = MEMORY[0x1E696AEC0];
      v47 = objc_msgSend_objectForKeyedSubscript_(v7, v12, @"chatIdentifier");
      v49 = objc_msgSend_objectForKeyedSubscript_(v7, v48, @"groupID");
      v51 = objc_msgSend_objectForKeyedSubscript_(v7, v50, @"style");
      v53 = objc_msgSend_stringWithFormat_(v46, v52, @"Chat dictionary malformed. unique identifier %@ guid %@ chat identifier %@ group ID %@ style %@", v9, v13, v47, v49, v51);
      v148 = v53;
      v55 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v54, &v148, &v147, 1);
      v56 = v45;
      v57 = v55;
      objc_msgSend_errorWithDomain_code_userInfo_(v56, v58, @"com.apple.Messages.IMDCoreSpotlight", 1, v55);
      *a5 = v44 = 0;
LABEL_50:

      goto LABEL_51;
    }

    v132 = v9;
    v14 = objc_msgSend_objectForKey_(v7, v12, @"lastMessageDate");
    v15 = v14;
    v133 = v8;
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
    objc_msgSend_setAccountIdentifier_(v20, v21, v13);
    v135 = v20;
    v131 = v17;
    objc_msgSend_setLastUsedDate_(v20, v22, v17);
    v24 = objc_msgSend_objectForKey_(v7, v23, @"participants");
    v138 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v137 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v143 = 0u;
    v144 = 0u;
    v145 = 0u;
    v146 = 0u;
    v25 = v24;
    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v143, v150, 16);
    obj = v25;
    if (v27)
    {
      v28 = v27;
      LOBYTE(v29) = 0;
      v30 = *v144;
      v31 = MEMORY[0x1E69A7AF0];
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v144 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v143 + 1) + 8 * i);
          v36 = _IMDCoreSpotlightCNContactForAddress(v33);
          if (!((v36 == 0) | v29 & 1))
          {
            objc_opt_class();
            v29 = objc_opt_isKindOfClass() ^ 1;
          }

          v37 = objc_msgSend_sharedInstance(IMDContactCache, v34, v35);
          v39 = objc_msgSend_fullNameForContact_(v37, v38, v36);

          if (!v39)
          {
            v39 = v33;
          }

          v41 = _IMDCoreSpotlightPerson(v39, v33, v36, *v31);
          if (v41)
          {
            objc_msgSend_addObject_(v138, v40, v41);
            objc_msgSend_addObject_(v137, v42, v33);
          }
        }

        v25 = obj;
        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v43, &v143, v150, 16);
      }

      while (v28);
    }

    else
    {
      LOBYTE(v29) = 0;
    }

    objc_msgSend_setPrimaryRecipients_(v135, v59, v138);
    objc_msgSend_setRecipientAddresses_(v135, v60, v137);
    v62 = objc_msgSend_integerValueForKey_withDefault_(v7, v61, @"isFiltered", 0);
    shouldDisplayGroupNameAndPhotoWith_handles = objc_msgSend_shouldDisplayGroupNameAndPhotoWith_handles_(IMDGroupNameAndPhotoHelper, v63, v62, v137);
    v66 = objc_msgSend_objectForKey_(v7, v65, @"groupName");
    v69 = v66;
    if (v66 && ((objc_msgSend_length(v66, v67, v68) != 0) & shouldDisplayGroupNameAndPhotoWith_handles) == 1)
    {
      objc_msgSend_setSubject_(v135, v70, v69);
      objc_msgSend_setDisplayName_(v135, v71, v69);
    }

    else
    {
      v73 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v139 = 0u;
      v140 = 0u;
      v141 = 0u;
      v142 = 0u;
      v74 = v138;
      v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v75, &v139, v149, 16);
      if (v76)
      {
        v79 = v76;
        v80 = *v140;
        do
        {
          for (j = 0; j != v79; ++j)
          {
            if (*v140 != v80)
            {
              objc_enumerationMutation(v74);
            }

            v82 = objc_msgSend_displayName(*(*(&v139 + 1) + 8 * j), v77, v78);
            objc_msgSend_addObject_(v73, v83, v82);
          }

          v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v77, &v139, v149, 16);
        }

        while (v79);
      }

      v85 = objc_msgSend_getDisplayNameFromParticipantNames_(MEMORY[0x1E69A7F80], v84, v73);

      objc_msgSend_setSubject_(v135, v86, v85);
      objc_msgSend_setDisplayName_(v135, v87, v85);

      v69 = v85;
    }

    v88 = objc_msgSend_valueForKey_(v7, v72, @"style");

    if (v88)
    {
      v90 = objc_msgSend_valueForKey_(v7, v89, @"style");
      v93 = objc_msgSend_charValue(v90, v91, v92);

      v95 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v94, @"%c", v93);
      v98 = objc_msgSend_chatStyleCustomKey(MEMORY[0x1E69A7FF8], v96, v97);
      objc_msgSend_setValue_forCustomKey_(v135, v99, v95, v98);

      v101 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v100, v93 == 43);
      objc_msgSend_setIsGroupThread_(v135, v102, v101);
    }

    v103 = objc_msgSend_objectForKey_(v7, v89, @"syndicationType");

    v47 = v131;
    if (v103 && (objc_msgSend_objectForKey_(v7, v104, @"syndicationType"), v105 = objc_claimAutoreleasedReturnValue(), v108 = objc_msgSend_integerValue(v105, v106, v107), v105, (v29 & (v108 < 2)) == 1))
    {
      v109 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v104, 1);
      v112 = objc_msgSend_chatAutoDonatingCutomKey(MEMORY[0x1E69A7FF8], v110, v111);
      objc_msgSend_setValue_forCustomKey_(v135, v113, v109, v112);

      v115 = objc_msgSend_objectForKey_(v7, v114, @"syndicationDate");

      v9 = v132;
      v8 = v133;
      if (!v115)
      {
LABEL_47:
        v126 = objc_msgSend_objectForKeyedSubscript_(v7, v116, @"chatIdentifier");
        v49 = v135;
        if (v126)
        {
          objc_msgSend_associateConversationEntityWithIdentifier_displayTitle_(v135, v125, v126, v69);
        }

        v127 = objc_alloc(MEMORY[0x1E6964E80]);
        v44 = objc_msgSend_initWithUniqueIdentifier_domainIdentifier_attributeSet_(v127, v128, v9, @"chatDomain", v135);

        v57 = v137;
        v53 = v138;
        v51 = obj;
        goto LABEL_50;
      }

      v119 = objc_msgSend_objectForKey_(v7, v116, @"syndicationDate");
      if (!v119)
      {
LABEL_46:

        goto LABEL_47;
      }

      v120 = objc_msgSend_chatAutoDonatingServerDateCustomKey(MEMORY[0x1E69A7FF8], v117, v118);
      objc_msgSend_setValue_forCustomKey_(v135, v121, v119, v120);
    }

    else
    {
      v119 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v104, 0);
      v120 = objc_msgSend_chatAutoDonatingCutomKey(MEMORY[0x1E69A7FF8], v122, v123);
      objc_msgSend_setValue_forCustomKey_(v135, v124, v119, v120);
      v9 = v132;
      v8 = v133;
    }

    goto LABEL_46;
  }

  v44 = 0;
LABEL_52:

  v129 = *MEMORY[0x1E69E9840];
  return v44;
}

- (id)newSearchableItemsForMessageItemDictionary:(id)a3 chatDictionary:(id)a4 context:(id)a5 rejectedItems:(id)a6 populatedChatItems:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (IMDCoreSpotlightDisabled(v16, v17, v18))
  {
    v19 = 0;
  }

  else
  {
    IMDPersistenceCheckNotDatabaseThread();
    IMDIndexingAssertClientRequestQueue();
    v20 = [_IMDCoreSpotlightSearchableMessageItemGenerator alloc];
    v22 = objc_msgSend_initWithGenerator_messageItemDictionary_chatDictionary_context_rejectedItems_populatedChatItems_(v20, v21, self, v12, v13, v14, v15, v16);
    v25 = objc_msgSend_generate(v22, v23, v24);
    if (objc_msgSend_count(v25, v26, v27))
    {
      if ((objc_msgSend_isReindexing(v14, v28, v29) & 1) == 0 && (sub_1B7BC1A24(v14) & 1) == 0)
      {
        v32 = objc_msgSend_chatGUID(v22, v30, v31);
        v34 = objc_msgSend_containsObject_(v16, v33, v32);

        if ((v34 & 1) == 0)
        {
          v35 = objc_msgSend_date(v22, v30, v31);
          MessageDate = objc_msgSend_newChatSearchableItemForChatDictionary_optionalLastMessageDate_(self, v36, v13, v35);

          if (MessageDate)
          {
            v39 = objc_msgSend_arrayByAddingObject_(v25, v38, MessageDate);

            v42 = objc_msgSend_chatGUID(v22, v40, v41);
            objc_msgSend_addObject_(v16, v43, v42);

            v25 = v39;
          }
        }
      }

      if (!IMDSpotlightIndexingUsesPartialIndexersForIndexingContext(v14, v30, v31))
      {
        v46 = objc_msgSend_delegate(self, v44, v45);
        v47 = objc_opt_respondsToSelector();

        if (v47)
        {
          v50 = objc_msgSend_delegate(self, v48, v49);
          objc_msgSend_postProcessItemsPotentiallyNeedingAdditionalMetadata_(v50, v51, v25);
        }
      }

      v25 = v25;
      v19 = v25;
    }

    else
    {
      v19 = MEMORY[0x1E695E0F0];
    }
  }

  return v19;
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

- (void)_updateFilteringForSearchableItem:(id)a3 chatDictionary:(id)a4
{
  v26 = a3;
  v6 = a4;
  v9 = objc_msgSend_delegate(self, v7, v8);
  v12 = objc_msgSend_filteringExtensionBundleID(v9, v10, v11);
  isEqualToString = objc_msgSend_isEqualToString_(v12, v13, @"com.apple.smsFilter.extension");

  if (isEqualToString)
  {
    v16 = objc_msgSend_objectForKey_(v6, v15, @"properties");
    v18 = objc_msgSend_objectForKey_(v16, v17, @"SMSSubCategory");
    v21 = objc_msgSend_integerValue(v18, v19, v20);

    if (v21 == 4)
    {
      v24 = objc_msgSend_attributeSet(v26, v22, v23);
      objc_msgSend_setPotentialEventMessage_(v24, v25, MEMORY[0x1E695E118]);
    }
  }
}

@end