@interface IMDCoreSpotlightRecipientIndexer
+ (id)_contactForURI:(id)i;
+ (id)_createCSPersonForParticipantID:(id)d messageService:(id)service timingProfiler:(id)profiler timingIteration:(int64_t)iteration;
+ (id)_handleIDForHandleID:(id)d;
+ (id)_selfCSPersonFromHandleID:(id)d messageService:(id)service;
+ (id)groupPhotoPathCustomKey;
+ (id)suggestedContactNameCustomKey;
+ (id)suggestedContactPhotoCustomKey;
+ (void)indexItem:(id)item withChat:(id)chat context:(id)context metadataToUpdate:(id)update timingProfiler:(id)profiler;
@end

@implementation IMDCoreSpotlightRecipientIndexer

+ (id)suggestedContactNameCustomKey
{
  if (qword_1EBA54198 != -1)
  {
    sub_1B7CFA2E4();
  }

  v3 = qword_1EBA54190;

  return v3;
}

+ (id)suggestedContactPhotoCustomKey
{
  if (qword_1EBA541A8 != -1)
  {
    sub_1B7CFA2F8();
  }

  v3 = qword_1EBA541A0;

  return v3;
}

+ (id)groupPhotoPathCustomKey
{
  if (qword_1EDBE5E80 != -1)
  {
    sub_1B7CFA30C();
  }

  v3 = qword_1EDBE5E88;

  return v3;
}

+ (id)_createCSPersonForParticipantID:(id)d messageService:(id)service timingProfiler:(id)profiler timingIteration:(int64_t)iteration
{
  profilerCopy = profiler;
  serviceCopy = service;
  dCopy = d;
  v14 = objc_msgSend__contactForURI_(self, v13, dCopy);
  objc_msgSend_startTimingForKey_iteration_(profilerCopy, v15, @"IMDCoreSpotlightFullNameForContactProfilingKey", iteration);
  v18 = objc_msgSend_sharedInstance(IMDContactCache, v16, v17);
  v20 = objc_msgSend_fullNameForContact_(v18, v19, v14);

  objc_msgSend_stopTimingForKey_iteration_(profilerCopy, v21, @"IMDCoreSpotlightFullNameForContactProfilingKey", iteration);
  objc_msgSend_startTimingForKey_iteration_(profilerCopy, v22, @"IMDCoreSpotlightContactsHandleIDForHandler", iteration);
  v24 = objc_msgSend__handleIDForHandleID_(self, v23, dCopy);

  objc_msgSend_stopTimingForKey_iteration_(profilerCopy, v25, @"IMDCoreSpotlightContactsHandleIDForHandler", iteration);
  if (!v20)
  {
    v20 = objc_msgSend_im_stripCategoryLabel(v24, v26, v27);
  }

  objc_msgSend_startTimingForKey_iteration_(profilerCopy, v26, @"IMDCoreSpotlightCreateCoreSpotlightPerson", iteration);
  v28 = _IMDCoreSpotlightPerson(v20, v24, v14, serviceCopy);

  objc_msgSend_stopTimingForKey_iteration_(profilerCopy, v29, @"IMDCoreSpotlightCreateCoreSpotlightPerson", iteration);

  return v28;
}

+ (void)indexItem:(id)item withChat:(id)chat context:(id)context metadataToUpdate:(id)update timingProfiler:(id)profiler
{
  v276 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  chatCopy = chat;
  contextCopy = context;
  updateCopy = update;
  profilerCopy = profiler;
  started = objc_msgSend_startTimingForKey_(profilerCopy, v13, @"IMDCoreRecentsApiInitProfilingKey");
  _IMDCoreRecentsApiInit(started, v15, v16);
  v245 = profilerCopy;
  objc_msgSend_stopTimingForKey_(profilerCopy, v17, @"IMDCoreRecentsApiInitProfilingKey");
  v239 = __PAIR128__(IMDCoreSpotlightRecipientIndexer_TestHandleID, IMDCoreSpotlightRecipientIndexer_TestContact) == 0;
  v234 = chatCopy;
  v19 = objc_msgSend_objectForKey_(chatCopy, v18, @"participants");
  v242 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v238 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v237 = objc_msgSend_objectForKey_(itemCopy, v20, @"time");
  v246 = objc_msgSend_objectForKey_(itemCopy, v21, @"service");
  v23 = objc_msgSend_objectForKey_(chatCopy, v22, @"lalh");
  v231 = objc_msgSend__stripFZIDPrefix(v23, v24, v25);

  v27 = objc_msgSend_objectForKey_(itemCopy, v26, @"flags");
  LOBYTE(context) = objc_msgSend_unsignedLongLongValue(v27, v28, v29);

  contextCopy2 = context;
  if ((context & 4) != 0)
  {
    v37 = v231;
  }

  else
  {
    v31 = objc_msgSend_objectForKey_(itemCopy, v30, @"handle");
    v34 = objc_msgSend__stripFZIDPrefix(v31, v32, v33);
    v37 = objc_msgSend_im_stripCategoryLabel(v34, v35, v36);
  }

  v233 = v37;
  v226 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v38, @"%@:%@", v246, v37);
  if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v39, v40) && IMOSLoggingEnabled())
  {
    v41 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v44 = objc_msgSend_count(v19, v42, v43);
      v45 = @"YES";
      *buf = 134219522;
      v263 = v44;
      v264 = 2112;
      if ((contextCopy2 & 4) == 0)
      {
        v45 = @"NO";
      }

      v265 = v237;
      v266 = 2112;
      v267 = v246;
      v268 = 2112;
      v269 = v231;
      v270 = 2112;
      v271 = v45;
      v272 = 2112;
      v273 = v37;
      v274 = 2112;
      v275 = v226;
      _os_log_impl(&dword_1B7AD5000, v41, OS_LOG_TYPE_INFO, "Got %lu participants, date %@ service %@ lastAddressedLocalHandle %@ isFromMe %@ senderID %@ sendingAddress %@", buf, 0x48u);
    }
  }

  v253 = 0u;
  v254 = 0u;
  v251 = 0u;
  v252 = 0u;
  obj = v19;
  v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v46, &v251, v261, 16);
  if (v48)
  {
    v49 = 0;
    v50 = *v252;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v252 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v52 = objc_msgSend__createCSPersonForParticipantID_messageService_timingProfiler_timingIteration_(self, v47, *(*(&v251 + 1) + 8 * i), v246, v245, v49);
        v55 = objc_msgSend_handles(v52, v53, v54);
        v58 = objc_msgSend_firstObject(v55, v56, v57);

        v59 = _IMDCoreRecentsKindForHandleID(v58, v246);
        if ((objc_msgSend_isReindexing(contextCopy, v60, v61) & 1) == 0)
        {
          v64 = v58 && v239;
          if (v64 && v59 != 0)
          {
            objc_msgSend_startTimingForKey_iteration_(v245, v62, @"IMDCoreSpotlightCoreRecentsRecentEventForAddress", v49);
            v66 = MEMORY[0x1E6998FC8];
            v69 = objc_msgSend_displayName(v52, v67, v68);
            v71 = objc_msgSend_recentEventForAddress_displayName_kind_date_weight_metadata_options_(v66, v70, v58, v69, v59, v237, 0, 0, 1);

            objc_msgSend_addObject_(v238, v72, v71);
            objc_msgSend_stopTimingForKey_iteration_(v245, v73, @"IMDCoreSpotlightCoreRecentsRecentEventForAddress", v49);
          }
        }

        if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v62, v63) && IMOSLoggingEnabled())
        {
          v75 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v263 = v52;
            _os_log_impl(&dword_1B7AD5000, v75, OS_LOG_TYPE_INFO, "Adding name %@", buf, 0xCu);
          }
        }

        if (v52)
        {
          objc_msgSend_addObject_(v242, v74, v52);
        }

        ++v49;
      }

      v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v47, &v251, v261, 16);
    }

    while (v48);
    v76 = v49 + 1;
  }

  else
  {
    v76 = 1;
  }

  v79 = _IMDCoreSpotlightChatUIDForChatDictionary(v234);
  if (v79)
  {
    v80 = objc_msgSend_chatUniqueIdentifierKey(self, v77, v78);
    objc_msgSend_setValue_forCustomKey_(updateCopy, v81, v79, v80);
  }

  v236 = objc_msgSend_objectForKeyedSubscript_(v234, v77, @"groupPhotoPath");
  v83 = objc_msgSend_objectForKey_(v234, v82, @"groupName");
  v85 = objc_msgSend_integerValueForKey_withDefault_(v234, v84, @"isFiltered", 0);
  shouldDisplayGroupNameAndPhotoWith_handles = objc_msgSend_shouldDisplayGroupNameAndPhotoWith_handles_(IMDGroupNameAndPhotoHelper, v86, v85, obj);
  if (shouldDisplayGroupNameAndPhotoWith_handles)
  {
    v89 = v83;
  }

  else
  {

    v89 = 0;
    v236 = 0;
  }

  v227 = v89;
  if (objc_msgSend_length(v89, v87, v88))
  {
    objc_msgSend_setDisplayName_(updateCopy, v90, v227);
  }

  v92 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v90, v91);
  isSpotlightRefactorEnabled = objc_msgSend_isSpotlightRefactorEnabled(v92, v93, v94);

  if ((isSpotlightRefactorEnabled & 1) == 0)
  {
    v98 = [IMDINInteractionMessageDonationJob alloc];
    v100 = objc_msgSend_initWithContext_(v98, v99, contextCopy);
    objc_msgSend_processMessageDictionary_chatDictionary_(v100, v101, itemCopy, v234);
    objc_msgSend_finishWithCompletion_(v100, v102, &unk_1F2FA1190);
  }

  if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v96, v97) && IMOSLoggingEnabled())
  {
    v105 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v263 = v242;
      _os_log_impl(&dword_1B7AD5000, v105, OS_LOG_TYPE_INFO, "generated CSPersons %@", buf, 0xCu);
    }
  }

  if (!(objc_msgSend_isReindexing(contextCopy, v103, v104) & 1 | !v239) && objc_msgSend_count(v238, v106, v107) && objc_msgSend_count(obj, v106, v107) == 1)
  {
    v108 = objc_msgSend_sharedInstance(IMDCoreSpotlightDispatchObject, v106, v107);
    v111 = objc_msgSend_recentsInstance(v108, v109, v110);
    objc_msgSend_recordContactEvents_recentsDomain_sendingAddress_source_userInitiated_(v111, v112, v238, *MEMORY[0x1E6998FB0], v226, @"com.apple.MobileSMS", 1);
  }

  if (v231 != 0 && v239)
  {
    objc_msgSend_startTimingForKey_(v245, v106, @"IMDCoreSpotlightCreateCoreSpotlightPersonForHandleID");
    v240 = objc_msgSend__selfCSPersonFromHandleID_messageService_(self, v113, v231, v246);
    objc_msgSend_stopTimingForKey_(v245, v114, @"IMDCoreSpotlightCreateCoreSpotlightPersonForHandleID");
  }

  else
  {
    v240 = 0;
  }

  if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v106, v107) && IMOSLoggingEnabled())
  {
    v116 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v116, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v263 = v240;
      _os_log_impl(&dword_1B7AD5000, v116, OS_LOG_TYPE_INFO, "generated self person %@", buf, 0xCu);
    }
  }

  v117 = (contextCopy2 & 4) == 0;
  v229 = objc_msgSend_objectForKey_(itemCopy, v115, @"handle");
  v119 = MEMORY[0x1E696AD98];
  if (v117)
  {
    IsKnownContact = _IMDCoreSpotlightIsKnownContact(v229);
    v122 = objc_msgSend_numberWithInt_(v119, v121, IsKnownContact);
    objc_msgSend_setIsMessageFromKnownSender_(updateCopy, v123, v122);

    objc_msgSend_startTimingForKey_(v245, v124, @"IMDCoreSpotlightAddAuthorDataTimingKey");
    if (objc_msgSend_containsObject_(obj, v125, v233))
    {
      v249 = 0u;
      v250 = 0u;
      v247 = 0u;
      v248 = 0u;
      v127 = v242;
      v131 = objc_msgSend_countByEnumeratingWithState_objects_count_(v127, v128, &v247, v260, 16);
      if (v131)
      {
        v132 = *v248;
        while (2)
        {
          for (j = 0; j != v131; ++j)
          {
            if (*v248 != v132)
            {
              objc_enumerationMutation(v127);
            }

            v134 = *(*(&v247 + 1) + 8 * j);
            v135 = objc_msgSend_handles(v134, v129, v130);
            v138 = objc_msgSend_firstObject(v135, v136, v137);

            if (objc_msgSend_isEqualToString_(v138, v139, v233))
            {
              v140 = v134;

              goto LABEL_83;
            }
          }

          v131 = objc_msgSend_countByEnumeratingWithState_objects_count_(v127, v129, &v247, v260, 16);
          if (v131)
          {
            continue;
          }

          break;
        }
      }

      v140 = 0;
LABEL_83:
    }

    else
    {
      v140 = objc_msgSend__createCSPersonForParticipantID_messageService_timingProfiler_timingIteration_(self, v126, v233, v246, v245, v76);
    }

    if (v140)
    {
      if (MEMORY[0x1B8CAF990](v229))
      {
        v259 = v227;
        v152 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v151, &v259, 1);
        objc_msgSend_setAuthorNames_(updateCopy, v153, v152);
      }

      else
      {
        v258 = v140;
        v152 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v151, &v258, 1);
        objc_msgSend_setAuthors_(updateCopy, v155, v152);
      }

      v157 = v233;
      if (v233)
      {
        v257 = v233;
        v158 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v156, &v257, 1);
        objc_msgSend_setAuthorAddresses_(updateCopy, v159, v158);

        v157 = v233;
      }

      v154 = _IMDNicknameInfoForAddress(v157);
      v160 = objc_alloc(MEMORY[0x1E69A8190]);
      v162 = objc_msgSend_initWithDictionaryRepresentation_(v160, v161, v154);
      v163 = _IMDContactNameForNickname(v162, 0);
      v166 = objc_msgSend_avatar(v162, v164, v165);
      v169 = objc_msgSend_imageFilePath(v166, v167, v168);

      if (objc_msgSend_length(v163, v170, v171))
      {
        if (IMOSLoggingEnabled())
        {
          v176 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v176, OS_LOG_TYPE_INFO))
          {
            v179 = MEMORY[0x1E696AD98];
            v180 = objc_msgSend_length(v163, v177, v178);
            v182 = objc_msgSend_numberWithUnsignedInteger_(v179, v181, v180);
            *buf = 138412290;
            v263 = v182;
            _os_log_impl(&dword_1B7AD5000, v176, OS_LOG_TYPE_INFO, " Adding profile name of length %@ ", buf, 0xCu);
          }
        }

        v183 = objc_msgSend_suggestedContactNameCustomKey(self, v174, v175);
        objc_msgSend_setValue_forCustomKey_(updateCopy, v184, v163, v183);
      }

      if (objc_msgSend_length(v169, v172, v173))
      {
        if (IMOSLoggingEnabled())
        {
          v188 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v188, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1B7AD5000, v188, OS_LOG_TYPE_INFO, " Adding profile avatar path ", buf, 2u);
          }
        }

        v189 = objc_msgSend_suggestedContactPhotoCustomKey(self, v186, v187);
        objc_msgSend_setValue_forCustomKey_(updateCopy, v190, v169, v189);
      }

      objc_msgSend_removeObject_(v242, v185, v140);
      if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v191, v192) && IMOSLoggingEnabled())
      {
        v193 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v193, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v263 = v140;
          v264 = 2112;
          v265 = v233;
          _os_log_impl(&dword_1B7AD5000, v193, OS_LOG_TYPE_INFO, "Adding author %@ author senderID %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v154 = IMLogHandleForCategory();
      if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CFA348(v154);
      }
    }

    if (v240)
    {
      objc_msgSend_insertObject_atIndex_(v242, v194, v240, 0);
    }

    objc_msgSend_stopTimingForKey_(v245, v194, @"IMDCoreSpotlightAddAuthorDataTimingKey");
  }

  else
  {
    v141 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v118, 1);
    objc_msgSend_setIsMessageFromKnownSender_(updateCopy, v142, v141);

    if (v240)
    {
      v256 = v240;
      v144 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v143, &v256, 1);
      objc_msgSend_setAuthors_(updateCopy, v145, v144);

      if (v231)
      {
        v255 = v231;
        v148 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v146, &v255, 1);
        objc_msgSend_setAuthorAddresses_(updateCopy, v149, v148);
      }

      if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v146, v147) && IMOSLoggingEnabled())
      {
        v150 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v150, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v263 = v240;
          v264 = 2112;
          v265 = v231;
          _os_log_impl(&dword_1B7AD5000, v150, OS_LOG_TYPE_INFO, "Adding author %@ author senderID %@", buf, 0x16u);
        }
      }
    }
  }

  objc_msgSend_setPrimaryRecipients_(updateCopy, v143, v242);
  v196 = objc_msgSend___imArrayByApplyingBlock_(v242, v195, &unk_1F2FA11B0);
  objc_msgSend_setRecipientAddresses_(updateCopy, v197, v196);
  v199 = objc_msgSend_objectForKey_(v234, v198, @"guid");
  v202 = objc_msgSend_im_lastPathComponent(v236, v200, v201);
  v205 = IMSharedHelperExternalLocationForFile();
  if (shouldDisplayGroupNameAndPhotoWith_handles)
  {
    v206 = objc_msgSend_groupPhotoPathCustomKey(self, v203, v204);
    objc_msgSend_setValue_forCustomKey_(updateCopy, v207, v205, v206);

    objc_msgSend_setGroupPhotoPath_(updateCopy, v208, v205);
  }

  if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v203, v204))
  {
    if (IMOSLoggingEnabled())
    {
      v209 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v209, OS_LOG_TYPE_INFO))
      {
        v212 = objc_msgSend_primaryRecipients(updateCopy, v210, v211);
        *buf = 138412290;
        v263 = v212;
        _os_log_impl(&dword_1B7AD5000, v209, OS_LOG_TYPE_INFO, "Setting primary recipients %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v213 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v213, OS_LOG_TYPE_INFO))
      {
        v216 = objc_msgSend_recipientAddresses(updateCopy, v214, v215);
        *buf = 138412290;
        v263 = v216;
        _os_log_impl(&dword_1B7AD5000, v213, OS_LOG_TYPE_INFO, "Setting primary recipient IDs %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v217 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v217, OS_LOG_TYPE_INFO))
      {
        v220 = objc_msgSend_authors(updateCopy, v218, v219);
        *buf = 138412290;
        v263 = v220;
        _os_log_impl(&dword_1B7AD5000, v217, OS_LOG_TYPE_INFO, "Setting author %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v221 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v221, OS_LOG_TYPE_INFO))
      {
        v224 = objc_msgSend_authorAddresses(updateCopy, v222, v223);
        *buf = 138412290;
        v263 = v224;
        _os_log_impl(&dword_1B7AD5000, v221, OS_LOG_TYPE_INFO, "Setting author IDs %@", buf, 0xCu);
      }
    }
  }

  v225 = *MEMORY[0x1E69E9840];
}

+ (id)_contactForURI:(id)i
{
  if (IMDCoreSpotlightRecipientIndexer_TestContact)
  {
    v3 = IMDCoreSpotlightRecipientIndexer_TestContact;
  }

  else
  {
    v3 = _IMDCoreSpotlightCNContactForAddress(i);
  }

  return v3;
}

+ (id)_handleIDForHandleID:(id)d
{
  dCopy = d;
  v4 = dCopy;
  v5 = IMDCoreSpotlightRecipientIndexer_TestHandleID;
  if (!IMDCoreSpotlightRecipientIndexer_TestHandleID)
  {
    v5 = dCopy;
  }

  v6 = v5;

  return v6;
}

+ (id)_selfCSPersonFromHandleID:(id)d messageService:(id)service
{
  dCopy = d;
  serviceCopy = service;
  v7 = _IMDCoreSpotlightCNContactForAddress(dCopy);
  v10 = objc_msgSend_sharedInstance(IMDContactCache, v8, v9);
  v12 = objc_msgSend_fullNameForContact_(v10, v11, v7);

  if (!v12)
  {
    v12 = dCopy;
  }

  v13 = _IMDCoreSpotlightPerson(v12, dCopy, v7, serviceCopy);

  return v13;
}

@end