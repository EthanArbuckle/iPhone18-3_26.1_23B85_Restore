@interface IMDCoreSpotlightMessageMetadataIndexer
+ (BOOL)isMutedChatForChatDictionary:(id)a3;
+ (int)_spotlightEffectTypeForItemDictionary:(id)a3;
+ (void)indexItem:(id)a3 withChat:(id)a4 context:(id)a5 metadataToUpdate:(id)a6 timingProfiler:(id)a7;
@end

@implementation IMDCoreSpotlightMessageMetadataIndexer

+ (void)indexItem:(id)a3 withChat:(id)a4 context:(id)a5 metadataToUpdate:(id)a6 timingProfiler:(id)a7
{
  v163[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v153 = a4;
  v149 = a5;
  v13 = a6;
  v140 = a7;
  v148 = objc_msgSend_objectForKey_(v12, v14, @"time");
  v17 = objc_msgSend_distantPast(MEMORY[0x1E695DF00], v15, v16);
  LODWORD(a6) = objc_msgSend_isEqualToDate_(v148, v18, v17);

  if (a6)
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_INFO, "messageDate was distant past. Not setting contentCreationDate on metadataAttributes.", buf, 2u);
      }
    }
  }

  else if (v148)
  {
    objc_msgSend_setContentCreationDate_(v13, v19, v148);
  }

  v152 = objc_msgSend_objectForKey_(v12, v19, @"accountID");
  if (v152)
  {
    objc_msgSend_setAccountIdentifier_(v13, v21, v152);
  }

  v22 = objc_msgSend_objectForKey_(v153, v21, @"lalh");
  v151 = objc_msgSend__stripFZIDPrefix(v22, v23, v24);

  if (v151)
  {
    v163[0] = v151;
    v26 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v25, v163, 1);
    objc_msgSend_setAccountHandles_(v13, v27, v26);
  }

  v28 = objc_msgSend_objectForKey_(v12, v25, @"flags");
  v31 = objc_msgSend_unsignedLongLongValue(v28, v29, v30);

  v141 = (v31 >> 2) & 1;
  v33 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v32, v141);
  objc_msgSend_setIsFromMe_(v13, v34, v33);

  v36 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v35, v141);
  v39 = objc_msgSend_isFromMeCustomKey(a1, v37, v38);
  objc_msgSend_setValue_forCustomKey_(v13, v40, v36, v39);

  v147 = objc_msgSend_objectForKey_(v153, v41, @"participants");
  v44 = objc_msgSend_count(v147, v42, v43) > 1;
  v46 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v45, v44);
  objc_msgSend_setIsGroupThread_(v13, v47, v46);

  objc_msgSend_reason(v149, v48, v49);
  IsIncomingMessage = IMCoreSpotlightIndexReasonIsIncomingMessage();
  v51 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v50, IsIncomingMessage);
  objc_msgSend_setIsNew_(v13, v52, v51);

  v54 = objc_msgSend_objectForKey_(v12, v53, @"attributedBody");
  v145 = _IMDCoreSpotlightTokensMentionedInMessage(v54);
  v57 = objc_msgSend_mentionedAddressesCustomKey(a1, v55, v56);
  objc_msgSend_setValue_forCustomKey_(v13, v58, v145, v57);

  v61 = objc_msgSend_length(v54, v59, v60);
  v63 = objc_msgSend_attribute_existsInRange_(v54, v62, *MEMORY[0x1E69A5FF0], 0, v61);
  v65 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v64, v63);
  objc_msgSend_setIsTwoFactorCode_(v13, v66, v65);

  v144 = objc_msgSend_objectForKey_(v12, v67, @"handle");
  v68 = MEMORY[0x1B8CAF990](v144);
  v70 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v69, v68);
  v73 = objc_msgSend_isBusinessChatCustomKey(a1, v71, v72);
  objc_msgSend_setValue_forCustomKey_(v13, v74, v70, v73);

  v150 = objc_msgSend_objectForKey_(v12, v75, @"service");
  if (v150)
  {
    objc_msgSend_setMessageService_(v13, v76, v150);
  }

  isMutedChatForChatDictionary = objc_msgSend_isMutedChatForChatDictionary_(a1, v76, v153);
  v143 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v78, isMutedChatForChatDictionary);
  v142 = objc_msgSend_isChatMutedCustomKey(a1, v79, v80);
  objc_msgSend_setValue_forCustomKey_(v13, v81, v143, v142);
  v83 = objc_msgSend__spotlightEffectTypeForItemDictionary_(a1, v82, v12);
  objc_msgSend_setMessageEffectType_(v13, v84, v83);
  v87 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v85, v86);
  isAutomaticIncomingTranslationEnabled = objc_msgSend_isAutomaticIncomingTranslationEnabled(v87, v88, v89);

  if (isAutomaticIncomingTranslationEnabled)
  {
    v93 = objc_msgSend_isTranslatedCustomKey(a1, v91, v92);
    v139 = objc_msgSend_objectForKey_(v12, v94, @"messageSummaryInfo");
    v98 = objc_msgSend_objectForKeyedSubscript_(v139, v95, *MEMORY[0x1E69A7278]);
    if (v98)
    {
      v137 = objc_msgSend_translationMessagePartClasses(MEMORY[0x1E69A8138], v96, v97);
      v154 = 0;
      v138 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(MEMORY[0x1E696ACD0], v99, v137, v98, &v154);
      if (v138)
      {
        v102 = objc_msgSend_allValues(v138, v100, v101);
        v105 = objc_msgSend_firstObject(v102, v103, v104);
        v136 = objc_msgSend_firstObject(v105, v106, v107);

        v109 = v136;
        if (v136)
        {
          v110 = objc_msgSend_objectForKey_(v136, v108, @"translatedText");
          v113 = objc_msgSend_string(v110, v111, v112);

          v115 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v113, v114, *MEMORY[0x1E69A5F00], &stru_1F2FA9728);
          v117 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v115, v116, *MEMORY[0x1E69A5F20], &stru_1F2FA9728);

          objc_msgSend_setTextContent_(v13, v118, v117);
          v109 = v136;
        }
      }

      v119 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v100, 1);
      objc_msgSend_setValue_forCustomKey_(v13, v120, v119, v93);
    }

    v121 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v96, 0);
    objc_msgSend_setValue_forCustomKey_(v13, v122, v121, v93);
  }

  v123 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v91, v92);
  isPriorityMessagesEnabled = objc_msgSend_isPriorityMessagesEnabled(v123, v124, v125);

  if ((IsIncomingMessage & isPriorityMessagesEnabled) == 1 && ((v141 | objc_msgSend_needsPriorityCheck(v149, v127, v128) ^ 1) & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v131 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v131, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v131, OS_LOG_TYPE_INFO, "Asking Text Understanding for time sensitive check ", buf, 2u);
      }
    }

    v132 = objc_msgSend__checkTimeSensitiveCustomKey(a1, v129, v130);
    objc_msgSend_setValue_forCustomKey_(v13, v133, MEMORY[0x1E695E118], v132);
  }

  if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v127, v128) && IMOSLoggingEnabled())
  {
    v134 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v134, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v156 = v148;
      v157 = 2112;
      v158 = v152;
      v159 = 2112;
      v160 = v151;
      v161 = 2112;
      v162 = v150;
      _os_log_impl(&dword_1B7AD5000, v134, OS_LOG_TYPE_INFO, "setting date %@ accountID %@ lastAddressedLocalHandle %@ service %@", buf, 0x2Au);
    }
  }

  v135 = *MEMORY[0x1E69E9840];
}

+ (BOOL)isMutedChatForChatDictionary:(id)a3
{
  v3 = a3;
  v5 = objc_msgSend_objectForKey_(v3, v4, @"chatIdentifier");
  v7 = objc_msgSend_objectForKey_(v3, v6, @"style");
  v10 = objc_msgSend_intValue(v7, v8, v9);

  v12 = objc_msgSend_objectForKey_(v3, v11, @"groupID");
  v14 = objc_msgSend_objectForKey_(v3, v13, @"participants");
  v16 = objc_msgSend_arrayByApplyingSelector_(v14, v15, sel__stripFZIDPrefix);
  v18 = objc_msgSend_objectForKey_(v3, v17, @"lalh");
  v21 = objc_msgSend__stripFZIDPrefix(v18, v19, v20);

  v23 = objc_msgSend_objectForKey_(v3, v22, @"originalGroupID");
  v26 = objc_msgSend_sharedList(MEMORY[0x1E69A8180], v24, v25);
  v28 = objc_msgSend_objectForKey_(v3, v27, @"DomainIdentifiers");

  v30 = objc_msgSend_muteIdentifiersForChatStyle_groupID_domainIdentifiers_participantIDs_lastAddressedHandleID_originalGroupID_chatIdentifier_(v26, v29, v10, v12, v28, v16, v21, v23, v5);
  isMutedChatForMuteIdentifiers = objc_msgSend_isMutedChatForMuteIdentifiers_(v26, v31, v30);

  return isMutedChatForMuteIdentifiers;
}

+ (int)_spotlightEffectTypeForItemDictionary:(id)a3
{
  v3 = objc_msgSend_objectForKey_(a3, a2, @"expressiveSendStyleID");
  if (objc_msgSend_isEqualToString_(v3, v4, *MEMORY[0x1E69A7D78]))
  {
    v6 = 5;
  }

  else if (objc_msgSend_isEqualToString_(v3, v5, *MEMORY[0x1E69A7D48]))
  {
    v6 = 8;
  }

  else if (objc_msgSend_isEqualToString_(v3, v7, *MEMORY[0x1E69A7D58]))
  {
    v6 = 9;
  }

  else if (objc_msgSend_isEqualToString_(v3, v8, *MEMORY[0x1E69A7D80]))
  {
    v6 = 11;
  }

  else if (objc_msgSend_isEqualToString_(v3, v9, *MEMORY[0x1E69A7D68]))
  {
    v6 = 12;
  }

  else if (objc_msgSend_isEqualToString_(v3, v10, *MEMORY[0x1E69A7D98]))
  {
    v6 = 14;
  }

  else if (objc_msgSend_isEqualToString_(v3, v11, *MEMORY[0x1E69A7D50]))
  {
    v6 = 13;
  }

  else if (objc_msgSend_isEqualToString_(v3, v12, *MEMORY[0x1E69A7D90]))
  {
    v6 = 10;
  }

  else if (objc_msgSend_isEqualToString_(v3, v13, *MEMORY[0x1E69A7D60]))
  {
    v6 = 6;
  }

  else if (objc_msgSend_isEqualToString_(v3, v14, *MEMORY[0x1E69A7DA8]))
  {
    v6 = 7;
  }

  else if (objc_msgSend_isEqualToString_(v3, v15, *MEMORY[0x1E69A7DA0]))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v3, v16, *MEMORY[0x1E69A7D88]))
  {
    v6 = 3;
  }

  else if (objc_msgSend_isEqualToString_(v3, v17, *MEMORY[0x1E69A7D70]))
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end