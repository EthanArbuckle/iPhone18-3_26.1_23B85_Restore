@interface IMDCoreSpotlightMessageAttachmentIndexer
+ (BOOL)_attachmentIsSticker:(id)sticker;
+ (BOOL)messageSupportsIndexingForItem:(id)item;
+ (id)assetUUIDKey;
+ (id)attachmentIndexTypeForPath:(id)path filename:(id)filename isSticker:(BOOL)sticker isCommSafetySensitive:(BOOL)sensitive knownSender:(BOOL)sender;
+ (id)attachmentIsSyndicatableMediaKey;
+ (id)auxiliaryItemsForPrimaryAttributes:(id)attributes withItem:(id)item chat:(id)chat context:(id)context timingProfiler:(id)profiler rejectedItems:(id)items;
+ (id)livePhotoComplementKey;
+ (id)momentShareURLKey;
+ (id)videoComplementPathForResourceURL:(id)l;
+ (void)indexItem:(id)item withChat:(id)chat context:(id)context metadataToUpdate:(id)update timingProfiler:(id)profiler;
@end

@implementation IMDCoreSpotlightMessageAttachmentIndexer

+ (void)indexItem:(id)item withChat:(id)chat context:(id)context metadataToUpdate:(id)update timingProfiler:(id)profiler
{
  v105 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  chatCopy = chat;
  contextCopy = context;
  updateCopy = update;
  profilerCopy = profiler;
  v97 = itemCopy;
  v14 = objc_msgSend_objectForKey_(itemCopy, v13, @"hasAttachments");
  LODWORD(update) = objc_msgSend_BOOLValue(v14, v15, v16);

  v18 = objc_msgSend_messageSupportsIndexingForItem_(self, v17, itemCopy);
  if (update && v18)
  {
    v86 = objc_msgSend_objectForKeyedSubscript_(itemCopy, v19, @"attachments");
    v20 = v86;
    if (!objc_msgSend_count(v86, v21, v22))
    {
LABEL_71:

      goto LABEL_72;
    }

    v91 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v93 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v92 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    obj = v86;
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, &v98, v104, 16);
    if (v25)
    {
      v95 = *MEMORY[0x1E69A7018];
      v96 = *v99;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v99 != v96)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v98 + 1) + 8 * i);
          v28 = objc_msgSend_objectForKeyedSubscript_(v27, v24, @"name");
          if ((objc_msgSend_containsString_(v28, v29, v95) & 1) == 0)
          {
            v31 = objc_msgSend_objectForKeyedSubscript_(v27, v30, @"path");
            v34 = objc_msgSend_length(v31, v32, v33);
            if (v31)
            {
              v36 = v34 == 0;
            }

            else
            {
              v36 = 1;
            }

            if (!v36)
            {
              objc_msgSend_addObject_(v91, v35, v31);
            }

            v37 = objc_msgSend_objectForKeyedSubscript_(v27, v35, @"guid");
            v39 = objc_msgSend_objectForKey_(v97, v38, @"guid");
            v41 = objc_msgSend_objectForKey_(v97, v40, @"attributedBody");
            v44 = objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v42, v43);
            v46 = objc_msgSend__syndicationIdentifierForAttachmentGUID_messageGUID_attributedBody_verbose_(IMDAttachmentSyndicationUtilities, v45, v37, v39, v41, v44);
            v49 = objc_msgSend_length(v46, v47, v48) == 0;
            v52 = objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v50, v51);
            if (v49)
            {
              if (v52 && IMOSLoggingEnabled())
              {
                v55 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1B7AD5000, v55, OS_LOG_TYPE_INFO, "Failed to determine attachment name!", buf, 2u);
                }
              }
            }

            else
            {
              if (v52 && IMOSLoggingEnabled())
              {
                v54 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v103 = v46;
                  _os_log_impl(&dword_1B7AD5000, v54, OS_LOG_TYPE_INFO, "Adding attachment name %@", buf, 0xCu);
                }
              }

              objc_msgSend_addObject_(v93, v53, v46);
            }

            v56 = IMUTITypeForFilename();
            v59 = objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v57, v58);
            if (v56)
            {
              if (v59 && IMOSLoggingEnabled())
              {
                v61 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v103 = v56;
                  _os_log_impl(&dword_1B7AD5000, v61, OS_LOG_TYPE_INFO, "Adding attachment UTI type to %@", buf, 0xCu);
                }
              }

              objc_msgSend_addObject_(v92, v60, v56);
            }

            else if (v59 && IMOSLoggingEnabled())
            {
              v62 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_1B7AD5000, v62, OS_LOG_TYPE_INFO, "Failed to determine attachment UTI type!", buf, 2u);
              }
            }
          }
        }

        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v98, v104, 16);
      }

      while (v25);
    }

    v64 = objc_msgSend_objectForKey_(v97, v63, @"flags");
    v67 = (objc_msgSend_unsignedLongLongValue(v64, v65, v66) & 4) == 0;

    if (v67 && (objc_msgSend_objectForKeyedSubscript_(v97, v68, @"handle"), v70 = objc_claimAutoreleasedReturnValue(), IsKnownContact = _IMDCoreSpotlightIsKnownContact(v70), v70, (IsKnownContact & 1) == 0))
    {
      if (!objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v68, v69) || !IMOSLoggingEnabled())
      {
        goto LABEL_56;
      }

      v76 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v76, OS_LOG_TYPE_INFO, "Not adding attachment paths for unknown sender", buf, 2u);
      }
    }

    else
    {
      if (objc_msgSend_count(v91, v68, v69))
      {
        objc_msgSend_setAttachmentPaths_(updateCopy, v72, v91);
LABEL_56:
        if (objc_msgSend_count(v93, v74, v75))
        {
          objc_msgSend_setAttachmentNames_(updateCopy, v77, v93);
        }

        else if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v77, v78) && IMOSLoggingEnabled())
        {
          v81 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1B7AD5000, v81, OS_LOG_TYPE_INFO, "No attachment names to add", buf, 2u);
          }
        }

        if (objc_msgSend_count(v92, v79, v80))
        {
          objc_msgSend_setAttachmentTypes_(updateCopy, v82, v92);
        }

        else if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v82, v83) && IMOSLoggingEnabled())
        {
          v84 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1B7AD5000, v84, OS_LOG_TYPE_INFO, "No attachment types to add", buf, 2u);
          }
        }

        v20 = v86;
        goto LABEL_71;
      }

      if (!objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v72, v73) || !IMOSLoggingEnabled())
      {
        goto LABEL_56;
      }

      v76 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v76, OS_LOG_TYPE_INFO, "No attachment Paths to add", buf, 2u);
      }
    }

    goto LABEL_56;
  }

LABEL_72:

  v85 = *MEMORY[0x1E69E9840];
}

+ (id)auxiliaryItemsForPrimaryAttributes:(id)attributes withItem:(id)item chat:(id)chat context:(id)context timingProfiler:(id)profiler rejectedItems:(id)items
{
  v368 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  itemCopy = item;
  chatCopy = chat;
  contextCopy = context;
  profilerCopy = profiler;
  itemsCopy = items;
  _IMDCoreRecentsApiInit(itemsCopy, v14, v15);
  v344 = itemCopy;
  v17 = objc_msgSend_objectForKey_(itemCopy, v16, @"hasAttachments");
  v20 = objc_msgSend_BOOLValue(v17, v18, v19);

  v22 = objc_msgSend_messageSupportsIndexingForItem_(self, v21, itemCopy);
  v321 = objc_msgSend_objectForKey_(chatCopy, v23, @"groupName");
  v330 = objc_msgSend_objectForKey_(itemCopy, v24, @"messageSummaryInfo");
  v26 = objc_msgSend_objectForKey_(v330, v25, *MEMORY[0x1E69A7228]);
  v338 = objc_msgSend_unsignedIntegerValue(v26, v27, v28);

  v30 = objc_msgSend_objectForKey_(itemCopy, v29, @"flags");
  LOBYTE(chat) = objc_msgSend_unsignedLongLongValue(v30, v31, v32);

  chatCopy2 = chat;
  if ((chat & 4) != 0)
  {
    IsKnownContact = 1;
  }

  else
  {
    v34 = objc_msgSend_objectForKeyedSubscript_(itemCopy, v33, @"handle");
    IsKnownContact = _IMDCoreSpotlightIsKnownContact(v34);
  }

  v323 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v37 = 0x1E69A7000;
  if ((v20 & v22) == 1)
  {
    objc_msgSend_objectForKeyedSubscript_(itemCopy, v35, @"attachments");
    v354 = 0u;
    v355 = 0u;
    v352 = 0u;
    obj = v353 = 0u;
    v337 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v38, &v352, v367, 16);
    if (!v337)
    {
      goto LABEL_170;
    }

    v336 = *v353;
    v329 = *MEMORY[0x1E69A7220];
    v314 = *MEMORY[0x1E69A68D0];
    v312 = *MEMORY[0x1E6998FA8];
    v313 = *MEMORY[0x1E6963AF0];
    v40 = *MEMORY[0x1E69A6FC0];
    v316 = *MEMORY[0x1E69A6FC0];
    v317 = *MEMORY[0x1E69A6FB8];
    while (1)
    {
      for (i = 0; i != v337; ++i)
      {
        if (*v353 != v336)
        {
          objc_enumerationMutation(obj);
        }

        v42 = *(*(&v352 + 1) + 8 * i);
        v346 = objc_msgSend_objectForKeyedSubscript_(v42, v39, @"guid");
        v347 = objc_msgSend_objectForKey_(v344, v43, @"guid");
        v345 = objc_msgSend_objectForKey_(v344, v44, @"attributedBody");
        v47 = objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v45, v46);
        v50 = objc_msgSend__syndicationIdentifierForAttachmentGUID_messageGUID_attributedBody_verbose_(IMDAttachmentSyndicationUtilities, v48, v346, v347, v345, v47);
        if (!v338 || (v51 = IMCMMAssetIndexFromIMFileTransferGUID(), objc_msgSend_objectForKey_(v330, v52, v329), v53 = objc_claimAutoreleasedReturnValue(), v56 = objc_msgSend_unsignedIntegerValue(v53, v54, v55), v53, v51 >= v56))
        {
          v343 = objc_msgSend_objectForKeyedSubscript_(v42, v49, @"uti");
          v59 = objc_msgSend_objectForKeyedSubscript_(v42, v58, @"previewGenerationState");
          objc_msgSend_unsignedLongLongValue(v59, v60, v61);

          if (objc_msgSend_ignoreRejections(contextCopy, v62, v63))
          {
            v342 = 0;
            goto LABEL_19;
          }

          v351 = 0;
          v65 = IMShouldAllowInteractionlessUsageOfUTITypeWithPreviewGenerationState();
          v342 = v351;
          if (v65)
          {
LABEL_19:
            if (objc_msgSend_isItemGroupPhoto_(IMDIndexingUtilities, v64, v344))
            {
              if (IMOSLoggingEnabled())
              {
                v68 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v360 = v346;
                  v361 = 2112;
                  v362 = v343;
                  _os_log_impl(&dword_1B7AD5000, v68, OS_LOG_TYPE_INFO, "Not donating attachment to CoreSpotlight because it's a group photo. attachmentGUID: %@ UTI: %@", buf, 0x16u);
                }
              }

              if (v50)
              {
                v69 = objc_alloc(MEMORY[0x1E69A7FF0]);
                v71 = objc_msgSend_initWithDomain_identifier_reason_(v69, v70, @"attachmentDomain", v50, 2);
                objc_msgSend_addObject_(itemsCopy, v72, v71);
                goto LABEL_166;
              }

LABEL_167:

              goto LABEL_168;
            }

            v71 = objc_msgSend_copy(attributesCopy, v66, v67);
            v333 = IMCMMAssetIndexFromIMFileTransferGUID();
            v73 = objc_alloc(MEMORY[0x1E69A8148]);
            v76 = objc_msgSend_defaultPrefix(MEMORY[0x1E69A8140], v74, v75);
            v332 = objc_msgSend_initWithMessageGUID_prefix_partNumber_(v73, v77, v347, v76, v333);

            v341 = objc_msgSend_objectForKeyedSubscript_(v42, v78, @"path");
            if (objc_msgSend_length(v341, v79, v80))
            {
              if (v341)
              {
                v326 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v81, v341, 0);
                if (v326)
                {
                  objc_msgSend_setContentURL_(v71, v82, v326);
                  v86 = objc_msgSend_videoComplementPathForResourceURL_(self, v83, v326);
                  if (v86)
                  {
                    v87 = objc_msgSend_livePhotoComplementKey(self, v84, v85);
                    objc_msgSend_setValue_forCustomKey_(v71, v88, v86, v87);
                  }
                }

                v358 = v341;
                v89 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v82, &v358, 1);
                objc_msgSend_setAttachmentPaths_(v71, v90, v89);
              }

              else
              {
                v326 = 0;
              }

              v334 = objc_msgSend_objectForKeyedSubscript_(v42, v81, @"name");
              if (objc_msgSend_length(v334, v95, v96))
              {
                objc_msgSend_setTextContent_(v71, v97, v334);
                if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v99, v100))
                {
                  if (IMOSLoggingEnabled())
                  {
                    v101 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v360 = v334;
                      _os_log_impl(&dword_1B7AD5000, v101, OS_LOG_TYPE_INFO, "setting text content %@", buf, 0xCu);
                    }
                  }
                }
              }

              v102 = objc_msgSend_length(v50, v97, v98) == 0;
              v105 = objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v103, v104);
              if (v102)
              {
                if (v105 && IMOSLoggingEnabled())
                {
                  v110 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1B7AD5000, v110, OS_LOG_TYPE_INFO, "Failed to determine attachment name!", buf, 2u);
                  }
                }
              }

              else
              {
                if (v105 && IMOSLoggingEnabled())
                {
                  v107 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v360 = v50;
                    _os_log_impl(&dword_1B7AD5000, v107, OS_LOG_TYPE_INFO, "setting attachment name %@", buf, 0xCu);
                  }
                }

                v357 = v50;
                v108 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v106, &v357, 1);
                objc_msgSend_setAttachmentNames_(v71, v109, v108);
              }

              v111 = objc_msgSend_objectForKeyedSubscript_(v42, v106, @"isCommSafetySensitive");
              v114 = objc_msgSend_BOOLValue(v111, v112, v113);

              IsSticker = objc_msgSend__attachmentIsSticker_(self, v115, v42);
              v339 = objc_msgSend_attachmentIndexTypeForPath_filename_isSticker_isCommSafetySensitive_knownSender_(self, v117, v341, v334, IsSticker, v114, IsKnownContact);
              v120 = objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v118, v119);
              if (v339)
              {
                if (v120 && IMOSLoggingEnabled())
                {
                  v122 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v122, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v360 = v339;
                    _os_log_impl(&dword_1B7AD5000, v122, OS_LOG_TYPE_INFO, "Setting attachment index type to %@", buf, 0xCu);
                  }
                }

                objc_msgSend_setMessageType_(v71, v121, v339);
                v125 = objc_msgSend_messageType(v71, v123, v124);
                isEqualToString = objc_msgSend_isEqualToString_(v125, v126, @"ad");

                if (isEqualToString)
                {
                  v130 = objc_msgSend_attribute_atIndex_effectiveRange_(v345, v128, v314, 0, 0);
                  if (v130)
                  {
                    objc_msgSend_setTextContent_(v71, v129, v130);
                  }

                  goto LABEL_72;
                }
              }

              else if (v120 && IMOSLoggingEnabled())
              {
                v130 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v130, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1B7AD5000, v130, OS_LOG_TYPE_INFO, "Failed to determine attachment index type!", buf, 2u);
                }

LABEL_72:
              }

              v328 = IMUTITypeForFilename();
              v133 = objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v131, v132);
              if (v328)
              {
                if (v133 && IMOSLoggingEnabled())
                {
                  v135 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v135, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v360 = v328;
                    _os_log_impl(&dword_1B7AD5000, v135, OS_LOG_TYPE_INFO, "Setting attachment UTI type to %@", buf, 0xCu);
                  }
                }

                v356 = v328;
                v136 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v134, &v356, 1);
                objc_msgSend_setAttachmentTypes_(v71, v137, v136);
              }

              else if (v133 && IMOSLoggingEnabled())
              {
                v138 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v138, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1B7AD5000, v138, OS_LOG_TYPE_INFO, "Failed to determine attachment UTI type!", buf, 2u);
                }
              }

              if ((objc_msgSend_isEqualToString_(v339, v134, @"pa") & IsKnownContact) == 1)
              {
                v319 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x1E695DEF0], v139, v341);
                v140 = objc_alloc(MEMORY[0x1E69B8A20]);
                v350 = 0;
                v142 = objc_msgSend_initWithData_error_(v140, v141, v319, &v350);
                v318 = v350;
                if (v142)
                {
                  v145 = objc_msgSend_array(MEMORY[0x1E695DF70], v143, v144);
                  v148 = objc_msgSend_localizedName(v142, v146, v147);
                  v151 = objc_msgSend_localizedDescription(v142, v149, v150);
                  v155 = objc_msgSend_organizationName(v142, v152, v153);
                  if (v148)
                  {
                    objc_msgSend_addObject_(v145, v154, v148);
                  }

                  if (v151)
                  {
                    objc_msgSend_addObject_(v145, v154, v151);
                  }

                  if (v155)
                  {
                    objc_msgSend_addObject_(v145, v154, v155);
                  }

                  v156 = objc_msgSend_componentsJoinedByString_(v145, v154, @" ");
                  objc_msgSend_setTextContent_(v71, v157, v156);
                }

                else if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v143, v144) && IMOSLoggingEnabled())
                {
                  v158 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v158, OS_LOG_TYPE_INFO))
                  {
                    v161 = objc_msgSend_attributeDictionary(v71, v159, v160);
                    *buf = 138412546;
                    v360 = v161;
                    v361 = 2112;
                    v362 = v318;
                    _os_log_impl(&dword_1B7AD5000, v158, OS_LOG_TYPE_INFO, "Indexing .pkpass with attributes %@ error %@", buf, 0x16u);
                  }
                }
              }

              if (objc_msgSend_isEqualToString_(v339, v139, @"ct"))
              {
                if (!IsKnownContact)
                {
                  goto LABEL_127;
                }
              }

              else if ((objc_msgSend_isEqualToString_(v339, v162, @"loc") & IsKnownContact & 1) == 0)
              {
                goto LABEL_127;
              }

              if ((chatCopy2 & 4) == 0 && (objc_msgSend_isReindexing(contextCopy, v162, v163) & 1) == 0)
              {
                v164 = objc_msgSend_objectForKey_(v344, v162, @"time");
                v166 = objc_msgSend_objectForKey_(v344, v165, @"lalh");
                v320 = objc_msgSend__stripFZIDPrefix(v166, v167, v168);

                v170 = objc_msgSend_objectForKey_(v344, v169, @"handle");

                v173 = objc_msgSend_sharedController(IMDCoreRecentsController, v171, v172);
                v349 = 0;
                v175 = objc_msgSend_createRecentsFromVCFWithPath_messageGUID_senderID_messageDate_outAddress_(v173, v174, v341, v347, v170, v164, &v349);
                v176 = v349;

                if (objc_msgSend_count(v175, v177, v178))
                {
                  v181 = objc_msgSend_sharedInstance(IMDCoreSpotlightDispatchObject, v179, v180);
                  v184 = objc_msgSend_recentsInstance(v181, v182, v183);
                  objc_msgSend_recordContactEvents_recentsDomain_sendingAddress_source_userInitiated_(v184, v185, v175, v312, 0, 0, 0);
                }

                if (v176)
                {
                  if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v179, v180) && IMOSLoggingEnabled())
                  {
                    v187 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v187, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v360 = v176;
                      _os_log_impl(&dword_1B7AD5000, v187, OS_LOG_TYPE_INFO, "Got address to index %@", buf, 0xCu);
                    }
                  }

                  objc_msgSend_setFullyFormattedAddress_(v71, v186, v176);
                  if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v188, v189) && IMOSLoggingEnabled())
                  {
                    v190 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v190, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v360 = v176;
                      _os_log_impl(&dword_1B7AD5000, v190, OS_LOG_TYPE_INFO, "Setting address to %@", buf, 0xCu);
                    }
                  }
                }
              }

              if (objc_msgSend_isEqualToString_(v339, v162, @"loc"))
              {
                v192 = objc_msgSend_contactsForVCardAtPath_(IMDContactCache, v191, v341);
                v195 = objc_msgSend_firstObject(v192, v193, v194);

                v197 = objc_msgSend_vCardNameForContact_(IMDContactCache, v196, v195);
                v199 = objc_msgSend_vCardMapURLForContact_(IMDContactCache, v198, v195);
                v348 = 0;
                objc_msgSend_vCardCoordinateForMapURL_outLatitude_outLongitude_(IMDContactCache, v200, v199, &v348 + 4, &v348);
                objc_msgSend_setTextContent_(v71, v201, v197);
                objc_msgSend_setFullyFormattedAddress_(v71, v202, 0);
                objc_msgSend_updateAttributes_withAddressFromContact_(IMDContactCache, v203, v71, v195);
                LODWORD(v204) = HIDWORD(v348);
                v207 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v205, v206, v204);
                objc_msgSend_setLatitude_(v71, v208, v207);

                LODWORD(v209) = v348;
                v212 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v210, v211, v209);
                objc_msgSend_setLongitude_(v71, v213, v212);

                v215 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v214, v199);
                objc_msgSend_setURL_(v71, v216, v215);

                objc_msgSend_setLinkType_(v71, v217, v313);
                if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v218, v219) && IMOSLoggingEnabled())
                {
                  v220 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v220, OS_LOG_TYPE_INFO))
                  {
                    v223 = objc_msgSend_attributeDictionary(v71, v221, v222);
                    *buf = 138412290;
                    v360 = v223;
                    _os_log_impl(&dword_1B7AD5000, v220, OS_LOG_TYPE_INFO, "Indexing .loc.vcf with attributes %@", buf, 0xCu);
                  }
                }
              }

LABEL_127:
            }

            if (v343)
            {
              objc_msgSend_setContentType_(v71, v81, v343);
            }

            v224 = objc_msgSend_objectForKey_(v344, v81, @"syndicationRanges");
            v226 = objc_msgSend_objectForKeyedSubscript_(v42, v225, @"isCommSafetySensitive");
            v229 = objc_msgSend_BOOLValue(v226, v227, v228);

            if ((objc_msgSend__attachmentIsSticker_(self, v230, v42) & 1) == 0)
            {
              LOBYTE(v310) = objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v231, v232);
              isCommSafetySensitive_verbose = objc_msgSend__attachmentSyndicationTypeForAttachmentGUID_syndicationIdentifier_attachmentUTI_attributedBody_encodedSyndicationRanges_isCommSafetySensitive_verbose_(IMDAttachmentSyndicationUtilities, v233, v346, v50, v343, v345, v224, v229, v310, profilerCopy);
              if (((isCommSafetySensitive_verbose == 1) & IsKnownContact) == 1)
              {
                LOBYTE(v310) = objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v231, v235);
                isCMM_verbose = objc_msgSend__attachmentGUIDIsSyndicatable_syndicationIdentifier_attachmentUTI_attributedBody_encodedSyndicationRanges_isCMM_verbose_(IMDAttachmentSyndicationUtilities, v236, v346, v50, v343, v345, v224, v338 != 0, v310);
                v239 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v238, isCMM_verbose);
                v242 = objc_msgSend_attachmentIsSyndicatableMediaKey(self, v240, v241);
                objc_msgSend_setValue_forCustomKey_(v71, v243, v239, v242);

LABEL_135:
                if (objc_msgSend_hasPrefix_(v50, v231, @"at_"))
                {
                  v245 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v244, 1);
                  objc_msgSend_setEligibleForPhotosProcessing_(v71, v246, v245);
                }

                else if (IMOSLoggingEnabled())
                {
                  v247 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v247, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v360 = v50;
                    _os_log_impl(&dword_1B7AD5000, v247, OS_LOG_TYPE_INFO, "Not marking item as Syndicatable. identifier: %@", buf, 0xCu);
                  }
                }
              }

              else if (isCommSafetySensitive_verbose)
              {
                if (isCommSafetySensitive_verbose == 1)
                {
                  goto LABEL_135;
                }
              }

              else
              {
                v248 = objc_alloc_init(IMDSharedWithYouMetadataManager);
                v250 = objc_msgSend_updateAttributesWithSharedWithYouMetadata_withItem_chat_(v248, v249, v71, v344, chatCopy);
                if (v250)
                {
                  if (IMOSLoggingEnabled())
                  {
                    v251 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v251, OS_LOG_TYPE_INFO))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_1B7AD5000, v251, OS_LOG_TYPE_INFO, "Appended Shared with You meta-data", buf, 2u);
                    }
                  }

                  v252 = v250;

                  v71 = v252;
                }
              }
            }

            v253 = objc_msgSend_objectForKeyedSubscript_(v42, v231, @"attributionInfo");
            v255 = v253;
            if (v253)
            {
              v258 = objc_msgSend_objectForKey_(v253, v254, v317);
              if (v258)
              {
                v259 = objc_msgSend_momentShareURLKey(self, v256, v257);
                objc_msgSend_setValue_forCustomKey_(v71, v260, v258, v259);
              }

              v263 = objc_msgSend_objectForKey_(v255, v256, v316);
              if (v263)
              {
                v264 = objc_msgSend_assetUUIDKey(self, v261, v262);
                objc_msgSend_setValue_forCustomKey_(v71, v265, v263, v264);
              }
            }

            v266 = objc_msgSend_objectForKey_(chatCopy, v254, @"guid");
            if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v267, v268) && IMOSLoggingEnabled())
            {
              v269 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v269, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v360 = v347;
                v361 = 2112;
                v362 = v266;
                _os_log_impl(&dword_1B7AD5000, v269, OS_LOG_TYPE_INFO, "Creating new attribute set with messageGUID %@ chatGUID %@", buf, 0x16u);
              }
            }

            v272 = _IMDCoreSpotlightChatUIDForChatDictionary(chatCopy);
            if (v272)
            {
              v273 = objc_msgSend_chatUniqueIdentifierKey(self, v270, v271);
              objc_msgSend_setValue_forCustomKey_(v71, v274, v272, v273);
            }

            else if (IMOSLoggingEnabled())
            {
              v276 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v276, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_1B7AD5000, v276, OS_LOG_TYPE_INFO, "Not donating the chat's unique identifier to spotlight because it was nil.", buf, 2u);
              }
            }

            objc_msgSend_setAccountIdentifier_(v71, v275, v266);
            objc_msgSend_setOwnerIdentifier_(v71, v277, v347);
            objc_msgSend_setRelatedUniqueIdentifier_(v71, v278, v347);
            v281 = objc_msgSend_encodedMessagePartGUID(v332, v279, v280);
            v284 = objc_msgSend_textContent(v71, v282, v283);
            v286 = objc_msgSend_objectForKey_(v344, v285, @"time");
            objc_msgSend_associateMessageEntityWithIdentifier_displayTitle_displaySubtitle_date_(v71, v287, v281, v284, v321, v286);

            v289 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v288, v333);
            v292 = objc_msgSend_partIndexKey(MEMORY[0x1E69A7FF8], v290, v291);
            objc_msgSend_setValue_forCustomKey_(v71, v293, v289, v292);

            v294 = objc_alloc(MEMORY[0x1E6964E80]);
            v296 = objc_msgSend_initWithUniqueIdentifier_domainIdentifier_attributeSet_(v294, v295, v50, @"attachmentDomain", v71);
            v299 = objc_msgSend_distantFuture(MEMORY[0x1E695DF00], v297, v298);
            objc_msgSend_setExpirationDate_(v296, v300, v299);

            objc_msgSend_addObject_(v323, v301, v296);
          }

          else
          {
            if (IMOSLoggingEnabled())
            {
              v91 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
              {
                *buf = 138543874;
                v360 = v342;
                v361 = 2112;
                v362 = v346;
                v363 = 2112;
                v364 = v343;
                _os_log_impl(&dword_1B7AD5000, v91, OS_LOG_TYPE_INFO, "Not donating attachment to CoreSpotlight because %{public}@. attachmentGUID: %@ UTI: %@", buf, 0x20u);
              }
            }

            if (!v50)
            {
              goto LABEL_167;
            }

            v92 = objc_alloc(MEMORY[0x1E69A7FF0]);
            v71 = objc_msgSend_initWithDomain_identifier_reason_(v92, v93, @"attachmentDomain", v50, 1010);
            objc_msgSend_addObject_(itemsCopy, v94, v71);
          }

LABEL_166:

          goto LABEL_167;
        }

        if (IMOSLoggingEnabled())
        {
          v57 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
          {
            *buf = 134218754;
            v360 = v51;
            v361 = 2048;
            v362 = v56;
            v363 = 2112;
            v364 = v346;
            v365 = 2112;
            v366 = v50;
            _os_log_impl(&dword_1B7AD5000, v57, OS_LOG_TYPE_INFO, "Not donating CMM preview attachment to CoreSpotlight. attachmentIndex: %lu, cmmOffset: %lu, attachmentGUID: %@, syndicationIdentifier: %@", buf, 0x2Au);
          }
        }

LABEL_168:
      }

      v337 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v39, &v352, v367, 16);
      if (!v337)
      {
LABEL_170:

        v37 = 0x1E69A7000uLL;
        break;
      }
    }
  }

  if (objc_msgSend_verboseLoggingEnabled(*(v37 + 4088), v35, v36) && IMOSLoggingEnabled())
  {
    v302 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v302, OS_LOG_TYPE_INFO))
    {
      v305 = objc_msgSend_count(v323, v303, v304);
      v307 = objc_msgSend_objectForKeyedSubscript_(v344, v306, @"guid");
      *buf = 134218242;
      v360 = v305;
      v361 = 2112;
      v362 = v307;
      _os_log_impl(&dword_1B7AD5000, v302, OS_LOG_TYPE_INFO, "Generated %lu aux items for message guid %@", buf, 0x16u);
    }
  }

  v308 = *MEMORY[0x1E69E9840];
  return v323;
}

+ (id)attachmentIndexTypeForPath:(id)path filename:(id)filename isSticker:(BOOL)sticker isCommSafetySensitive:(BOOL)sensitive knownSender:(BOOL)sender
{
  senderCopy = sender;
  sensitiveCopy = sensitive;
  stickerCopy = sticker;
  v66 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  filenameCopy = filename;
  v14 = objc_msgSend_pathExtension(filenameCopy, v12, v13);
  v17 = objc_msgSend_lowercaseString(v14, v15, v16);

  isEqualToString = objc_msgSend_isEqualToString_(v17, v18, @"vcf");
  isAudioMessageExtension = objc_msgSend_im_isAudioMessageExtension(v17, v20, v21);
  isPluginPayloadExtension = objc_msgSend_im_isPluginPayloadExtension(v17, v23, v24);
  v27 = objc_msgSend_isEqualToString_(v17, v26, @"pkpass");
  v29 = objc_msgSend_isEqualToString_(v17, v28, @"order");
  if (isAudioMessageExtension)
  {
    v32 = @"ad";
  }

  else
  {
    v32 = @"pp";
  }

  if ((isAudioMessageExtension & 1) == 0 && (isPluginPayloadExtension & 1) == 0)
  {
    if ((v27 | v29))
    {
      v32 = @"pa";
    }

    else if (isEqualToString)
    {
      v33 = objc_msgSend_stringByDeletingPathExtension(filenameCopy, v30, v31);
      v36 = objc_msgSend_pathExtension(v33, v34, v35);
      v38 = objc_msgSend_isEqualToString_(v36, v37, @"loc");

      if (v38)
      {
        v32 = @"loc";
      }

      else
      {
        v32 = @"ct";
      }
    }

    else
    {
      v39 = IMUTITypeForFilename();
      v42 = objc_msgSend_sharedInstance(MEMORY[0x1E69A81D8], v40, v41);
      v44 = objc_msgSend_previewGeneratorClassForUTIType_(v42, v43, v39);

      if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v45, v46) && IMOSLoggingEnabled())
      {
        v47 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v63 = v39;
          v64 = 2112;
          v65 = v44;
          _os_log_impl(&dword_1B7AD5000, v47, OS_LOG_TYPE_INFO, "UTI Type is %@ generator class is %@", buf, 0x16u);
        }
      }

      v48 = objc_opt_class();
      if (objc_msgSend_isEqual_(v44, v49, v48))
      {
        if (stickerCopy)
        {
          v51 = @"st";
        }

        else if (senderCopy && (IMDCoreSpotlightPhotoAtPathIsScreenshot(pathCopy, v50) & 1) != 0)
        {
          v51 = @"scr";
        }

        else
        {
          v51 = @"pto";
        }
      }

      else
      {
        v52 = objc_opt_class();
        if (objc_msgSend_isEqual_(v44, v53, v52))
        {
          v51 = @"apto";
          v54 = @"st";
          v55 = !stickerCopy;
        }

        else
        {
          v56 = objc_opt_class();
          isEqual = objc_msgSend_isEqual_(v44, v57, v56);
          v51 = @"at";
          v54 = @"mov";
          v55 = isEqual == 0;
        }

        if (!v55)
        {
          v51 = v54;
        }
      }

      if (sensitiveCopy)
      {
        v32 = @"csspto";
      }

      else
      {
        v32 = v51;
      }
    }
  }

  v59 = *MEMORY[0x1E69E9840];
  return v32;
}

+ (BOOL)_attachmentIsSticker:(id)sticker
{
  if (IMDCoreSpotlightMessageAttachmentIndexer_TestOverrideIsSticker)
  {
    return 1;
  }

  v4 = objc_msgSend_objectForKeyedSubscript_(sticker, a2, @"isSticker");
  v7 = objc_msgSend_BOOLValue(v4, v5, v6);

  return v7;
}

+ (BOOL)messageSupportsIndexingForItem:(id)item
{
  v37 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v5 = objc_msgSend_objectForKey_(itemCopy, v4, @"balloonBundleID");
  v7 = objc_msgSend_objectForKey_(itemCopy, v6, @"hasAttachments");
  v10 = objc_msgSend_BOOLValue(v7, v8, v9);

  v12 = objc_msgSend_objectForKey_(itemCopy, v11, @"messageSummaryInfo");
  v14 = objc_msgSend_objectForKey_(v12, v13, *MEMORY[0x1E69A7228]);
  v17 = objc_msgSend_unsignedIntegerValue(v14, v15, v16);

  v20 = v17 == 4 || v5 == 0;
  if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v18, v19))
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v29 = 138412290;
        v30 = v12;
        _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "messageSummaryInfo: %@", &v29, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = @"NO";
        if (v10)
        {
          v24 = @"YES";
        }

        else
        {
          v24 = @"NO";
        }

        if (v5)
        {
          v25 = @"YES";
        }

        else
        {
          v25 = @"NO";
        }

        v29 = 138413058;
        v30 = v24;
        if (v17)
        {
          v26 = @"YES";
        }

        else
        {
          v26 = @"NO";
        }

        v31 = 2112;
        v32 = v25;
        v33 = 2112;
        v34 = v26;
        if (v20)
        {
          v23 = @"YES";
        }

        v35 = 2112;
        v36 = v23;
        _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "messageHasAttachments %@ isPlugin %@ isCMM %@ messageSupportsIndexing %@", &v29, 0x2Au);
      }
    }
  }

  v27 = *MEMORY[0x1E69E9840];
  return v20;
}

+ (id)videoComplementPathForResourceURL:(id)l
{
  v48 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v42 = objc_msgSend_pathExtension(lCopy, v5, v6);
  v9 = objc_msgSend_path(lCopy, v7, v8);
  v12 = objc_msgSend_stringByDeletingPathExtension(v9, v10, v11);
  objc_msgSend__possibleVideoComplementExtensions(self, v13, v14);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v15 = v46 = 0u;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v43, v47, 16);
  if (v17)
  {
    v19 = v17;
    v41 = v9;
    v20 = 0;
    v21 = *v44;
LABEL_3:
    v22 = 0;
    while (1)
    {
      if (*v44 != v21)
      {
        objc_enumerationMutation(v15);
      }

      v23 = *(*(&v43 + 1) + 8 * v22);
      if (objc_msgSend_isEqualToString_(v42, v18, v23))
      {
        goto LABEL_11;
      }

      v25 = objc_msgSend_stringByAppendingPathExtension_(v12, v24, v23);

      v28 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v26, v27);
      v30 = objc_msgSend_fileExistsAtPath_(v28, v29, v25);

      if (v30)
      {
        goto LABEL_14;
      }

      v33 = objc_msgSend_uppercaseString(v23, v31, v32);
      v20 = objc_msgSend_stringByAppendingPathExtension_(v12, v34, v33);

      v37 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v35, v36);
      LOBYTE(v33) = objc_msgSend_fileExistsAtPath_(v37, v38, v20);

      if (v33)
      {
        break;
      }

      if (v19 == ++v22)
      {
        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v43, v47, 16);
        if (v19)
        {
          goto LABEL_3;
        }

LABEL_11:

        v25 = 0;
        goto LABEL_14;
      }
    }

    v25 = v20;
LABEL_14:
    v9 = v41;
  }

  else
  {
    v25 = 0;
  }

  v39 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (id)attachmentIsSyndicatableMediaKey
{
  if (qword_1EDBE5C70 != -1)
  {
    sub_1B7CFA3EC();
  }

  v3 = qword_1EDBE5C78;

  return v3;
}

+ (id)livePhotoComplementKey
{
  if (qword_1EDBE5C48 != -1)
  {
    sub_1B7CFA400();
  }

  v3 = qword_1EDBE5C50;

  return v3;
}

+ (id)momentShareURLKey
{
  if (qword_1EBA541B8 != -1)
  {
    sub_1B7CFA414();
  }

  v3 = qword_1EBA541B0;

  return v3;
}

+ (id)assetUUIDKey
{
  if (qword_1EBA541C8 != -1)
  {
    sub_1B7CFA428();
  }

  v3 = qword_1EBA541C0;

  return v3;
}

@end