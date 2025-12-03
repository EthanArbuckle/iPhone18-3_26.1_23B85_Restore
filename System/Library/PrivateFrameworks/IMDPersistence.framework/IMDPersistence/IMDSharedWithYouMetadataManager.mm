@interface IMDSharedWithYouMetadataManager
+ (Class)LPSharedObjectMetadataClass;
+ (Class)LPSpecializationMetadataClass;
+ (id)Sha256ForData:(id)data withSalt:(id)salt;
+ (id)collaborationMetadataKey;
+ (id)dataDetectedLink;
- (BOOL)_isAttachmentType:(id)type;
- (BOOL)_isLNKTypeMessage:(id)message;
- (BOOL)_shouldDonateToSharedWithYou:(id)you lpLinkMetadata:(id)metadata;
- (BOOL)chatDictionary:(id)dictionary matchesFaceTimeConversation:(id)conversation;
- (id)_ckBundleIDsKey;
- (id)_collaborationIdentifierKey;
- (id)_highlightedContentServerDateKey;
- (id)_lpLinkMetadataForItem:(id)item attachmentPaths:(id)paths originalURL:(id)l;
- (id)_lpTitleCustomKey;
- (id)_pluginPayloadAttachmentPathsForItem:(id)item;
- (id)_syndicationContentTypeKey;
- (id)_uniqueIdentifierForResourceURL:(id)l;
- (id)_updateAttributesWithCollaborationMetadata:(id)metadata forMessageWithGUID:(id)d withURL:(id)l lpLinkMetadata:(id)linkMetadata messageDate:(id)date;
- (id)highlightDictionaryFromAttributes:(id)attributes withItem:(id)item chat:(id)chat;
- (id)titleFromLPLinkMetadata:(id)metadata;
- (id)updateAttributesWithSharedWithYouMetadata:(id)metadata withItem:(id)item chat:(id)chat;
- (void)updateConversationManagerWithItem:(id)item chat:(id)chat attributes:(id)attributes;
@end

@implementation IMDSharedWithYouMetadataManager

+ (Class)LPSharedObjectMetadataClass
{
  if (qword_1EBA54020 != -1)
  {
    sub_1B7CF8710();
  }

  v3 = qword_1EBA54018;

  return v3;
}

+ (Class)LPSpecializationMetadataClass
{
  if (qword_1EBA54030 != -1)
  {
    sub_1B7CF8724();
  }

  v3 = qword_1EBA54028;

  return v3;
}

+ (id)Sha256ForData:(id)data withSalt:(id)salt
{
  v29 = *MEMORY[0x1E69E9840];
  saltCopy = salt;
  memset(&v26, 0, sizeof(v26));
  dataCopy = data;
  CC_SHA256_Init(&v26);
  v7 = dataCopy;
  v10 = objc_msgSend_bytes(v7, v8, v9, *v26.count, *&v26.hash[2], *&v26.hash[6], *&v26.wbuf[2], *&v26.wbuf[6], *&v26.wbuf[10], *&v26.wbuf[14]);
  v13 = objc_msgSend_length(dataCopy, v11, v12);

  CC_SHA256_Update(&v26, v10, v13);
  if (saltCopy)
  {
    v14 = saltCopy;
    v17 = objc_msgSend_bytes(v14, v15, v16);
    v20 = objc_msgSend_length(saltCopy, v18, v19);
    CC_SHA256_Update(&v26, v17, v20);
  }

  *md = 0u;
  v28 = 0u;
  CC_SHA256_Final(md, &v26);
  v21 = objc_alloc(MEMORY[0x1E695DEF0]);
  v23 = objc_msgSend_initWithBytes_length_(v21, v22, md, 32);

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (id)updateAttributesWithSharedWithYouMetadata:(id)metadata withItem:(id)item chat:(id)chat
{
  v183 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  itemCopy = item;
  chatCopy = chat;
  v161 = metadataCopy;
  if (metadataCopy)
  {
    v9 = metadataCopy;
  }

  else
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF8738();
    }
  }

  v154 = chatCopy;
  v12 = objc_msgSend_objectForKey_(chatCopy, v10, @"lalh");
  v157 = objc_msgSend__stripFZIDPrefix(v12, v13, v14);

  v16 = objc_msgSend_objectForKey_(itemCopy, v15, @"flags");
  v19 = objc_msgSend_unsignedLongLongValue(v16, v17, v18);

  v151 = (v19 >> 2) & 1;
  if (v151)
  {
    v21 = v157;
  }

  else
  {
    v22 = objc_msgSend_objectForKey_(itemCopy, v20, @"handle");
    v25 = objc_msgSend__stripFZIDPrefix(v22, v23, v24);

    v21 = v25;
  }

  v155 = v21;
  v26 = MEMORY[0x1B8CAF990]();
  v156 = objc_msgSend_objectForKey_(itemCopy, v27, @"guid");
  if (v26)
  {
    v30 = v161;
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v172 = v156;
        v173 = 2112;
        v174 = v155;
        _os_log_impl(&dword_1B7AD5000, v31, OS_LOG_TYPE_INFO, "NOT Appending highlight metadata Message: %@ shared by business chat with ID: %@", buf, 0x16u);
      }

      v30 = v161;
    }

    goto LABEL_126;
  }

  v159 = objc_msgSend_URL(v161, v28, v29);
  if (v159)
  {
    v33 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v32, 0);
    v34 = objc_opt_class();
    v37 = objc_msgSend_dataDetectedLink(v34, v35, v36);
    objc_msgSend_setValue_forCustomKey_(v161, v38, v33, v37);
  }

  else
  {
    v33 = objc_msgSend_objectForKey_(itemCopy, v32, @"attributedBody");
    v159 = IMDCoreSpotlightURLFromAttributedMessageBody(v33);
    if (!v159)
    {
      goto LABEL_17;
    }

    v49 = objc_msgSend_sharedManager(MEMORY[0x1E69A8288], v47, v48);
    isDataDetectedLinkAllowedForSWY = objc_msgSend_isDataDetectedLinkAllowedForSWY_(v49, v50, v159);

    if (!isDataDetectedLinkAllowedForSWY)
    {
      goto LABEL_17;
    }

    objc_msgSend_setURL_(v161, v52, v159);
    v37 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v53, 1);
    v54 = objc_opt_class();
    v57 = objc_msgSend_dataDetectedLink(v54, v55, v56);
    objc_msgSend_setValue_forCustomKey_(v161, v58, v37, v57);
  }

LABEL_17:
  if (objc_msgSend__isLNKTypeMessage_(self, v39, v161))
  {
    v152 = objc_msgSend__pluginPayloadAttachmentPathsForItem_(self, v40, itemCopy);
    v42 = objc_msgSend__lpLinkMetadataForItem_attachmentPaths_originalURL_(self, v41, itemCopy, v152, v159);
  }

  else
  {
    v42 = 0;
    v152 = 0;
  }

  v150 = v42;
  shouldDonateToSharedWithYou_lpLinkMetadata = objc_msgSend__shouldDonateToSharedWithYou_lpLinkMetadata_(self, v40, v159);
  if (v159)
  {
    if (!shouldDonateToSharedWithYou_lpLinkMetadata)
    {
      goto LABEL_22;
    }

LABEL_30:
    if (IMOSLoggingEnabled())
    {
      v64 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v172 = v156;
        _os_log_impl(&dword_1B7AD5000, v64, OS_LOG_TYPE_INFO, "Appending highlight metadata Message: %@", buf, 0xCu);
      }
    }

    v65 = objc_msgSend_objectForKeyedSubscript_(itemCopy, v63, @"hasAttachments");
    v68 = objc_msgSend_BOOLValue(v65, v66, v67);

    if (v68)
    {
      objc_msgSend_objectForKeyedSubscript_(itemCopy, v69, @"attachments");
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v70 = v168 = 0u;
      v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v70, v71, &v167, v182, 16);
      if (v73)
      {
        v74 = *v168;
        v75 = 1;
        while (2)
        {
          for (i = 0; i != v73; ++i)
          {
            if (*v168 != v74)
            {
              objc_enumerationMutation(v70);
            }

            v77 = objc_msgSend_objectForKeyedSubscript_(*(*(&v167 + 1) + 8 * i), v72, @"isCommSafetySensitive");
            v80 = objc_msgSend_BOOLValue(v77, v78, v79);

            if (v80)
            {
              if (IMOSLoggingEnabled())
              {
                v81 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v172 = v156;
                  _os_log_impl(&dword_1B7AD5000, v81, OS_LOG_TYPE_INFO, "Setting highlight metadata for Message: %@ to be hidden because flagged as CommSafety sensitive.", buf, 0xCu);
                }
              }

              v75 = 4;
              goto LABEL_51;
            }
          }

          v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v70, v72, &v167, v182, 16);
          if (v73)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v75 = 1;
      }

LABEL_51:
    }

    else
    {
      v75 = 1;
    }

    v149 = objc_msgSend_objectForKey_(itemCopy, v69, @"syndicationRanges");
    v160 = objc_msgSend_objectForKey_(itemCopy, v82, @"time");
    if (v149)
    {
      v84 = objc_msgSend_rangesFromSerializedString_(MEMORY[0x1E69A8158], v83, v149);
      v148 = v84;
      v85 = v84;
      if (v84)
      {
        v165 = 0u;
        v166 = 0u;
        v163 = 0u;
        v164 = 0u;
        obj = v84;
        v89 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v86, &v163, v181, 16);
        if (v89)
        {
          v90 = *v164;
          while (2)
          {
            for (j = 0; j != v89; ++j)
            {
              if (*v164 != v90)
              {
                objc_enumerationMutation(obj);
              }

              v92 = *(*(&v163 + 1) + 8 * j);
              if (objc_msgSend_syndicationStatus(v92, v87, v88) == 2)
              {
                if (IMOSLoggingEnabled())
                {
                  v113 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v172 = v156;
                    _os_log_impl(&dword_1B7AD5000, v113, OS_LOG_TYPE_INFO, "NOT Appending highlight metadata for Message: %@ since its been marked as Do not donate", buf, 0xCu);
                  }
                }

                v114 = v161;

                goto LABEL_127;
              }

              v95 = objc_msgSend_syndicationType(v92, v93, v94);
              v98 = objc_msgSend_syndicationType(v92, v96, v97);
              v103 = objc_msgSend_syndicationType(v92, v99, v100);
              v104 = (v95 >> 2) & 1;
              v105 = 4;
              if ((v95 & 4) == 0)
              {
                v105 = v75;
              }

              v106 = 8;
              if (((v95 & 4) != 0 || (v103 & 8) == 0) | v98 & 1)
              {
                v106 = v105;
              }

              if ((v95 & 4) != 0 || (v98 & 1) == 0)
              {
                v75 = v106;
              }

              else
              {
                v75 = 2;
              }

              v107 = objc_msgSend_syndicationStartDate(v92, v101, v102);

              if (v107)
              {
                v108 = objc_msgSend_syndicationStartDate(v92, v87, v88);
                v109 = v108;
                if (v160)
                {
                  v110 = objc_msgSend_compare_(v160, v87, v108) == -1;

                  if (v110)
                  {
                    v111 = objc_msgSend_syndicationStartDate(v92, v87, v88);

                    v160 = v111;
                  }
                }

                else
                {
                  v160 = v108;
                }
              }
            }

            v89 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v87, &v163, v181, 16);
            if (v89)
            {
              continue;
            }

            break;
          }

          v112 = v98 | (v103 >> 3) & 1;
        }

        else
        {
          v112 = 0;
          LOBYTE(v104) = 0;
        }

        v85 = v148;
      }

      else
      {
        v112 = 0;
        LOBYTE(v104) = 0;
      }
    }

    else
    {
      v112 = 0;
      LOBYTE(v104) = 0;
    }

    v115 = _IMDCoreSpotlightCNContactForAddress(v155);
    isCNContactAKnownContact = objc_msgSend_isCNContactAKnownContact_(MEMORY[0x1E69A7FD0], v116, v115);
    if ((isCNContactAKnownContact | v104))
    {
      v112 = isCNContactAKnownContact ^ 1;
    }

    v118 = IMOSLoggingEnabled();
    if ((isCNContactAKnownContact | v151 | v112))
    {
      if (v118)
      {
        v120 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v120, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v172 = v156;
          _os_log_impl(&dword_1B7AD5000, v120, OS_LOG_TYPE_INFO, "Appending highlight metadata for Message: %@", buf, 0xCu);
        }
      }

      v121 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v119, v75);
      objc_msgSend_setSyndicationStatus_(v161, v122, v121);

      if (v160)
      {
        if (IMOSLoggingEnabled())
        {
          v125 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v125, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v172 = v156;
            _os_log_impl(&dword_1B7AD5000, v125, OS_LOG_TYPE_INFO, "Appending highlight server date for Message: %@", buf, 0xCu);
          }
        }

        v126 = objc_msgSend__highlightedContentServerDateKey(self, v123, v124);
        objc_msgSend_setValue_forCustomKey_(v161, v127, v160, v126);
      }

      else
      {
        v126 = IMLogHandleForCategory();
        if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF876C();
        }
      }

      v130 = objc_msgSend_objectForKey_(itemCopy, v129, @"time");
      v30 = objc_msgSend__updateAttributesWithCollaborationMetadata_forMessageWithGUID_withURL_lpLinkMetadata_messageDate_(self, v131, v161, v156, v159, v150, v130);

      if (v30)
      {
        objc_msgSend_updateConversationManagerWithItem_chat_attributes_(self, v132, itemCopy, v154, v30);
      }
    }

    else
    {
      v30 = v161;
      if (v118)
      {
        v128 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v172 = v155;
          v173 = 2112;
          v174 = v115;
          _os_log_impl(&dword_1B7AD5000, v128, OS_LOG_TYPE_INFO, "NOT Appending highlight metadata for Message since sender %@ is not known. Contact: %@", buf, 0x16u);
        }

        v30 = v161;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v134 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v134, OS_LOG_TYPE_INFO))
      {
        v135 = @"YES";
        if (v75)
        {
          v136 = @"YES";
        }

        else
        {
          v136 = @"NO";
        }

        *buf = 138413314;
        v172 = v156;
        if ((v75 & 2) != 0)
        {
          v137 = @"YES";
        }

        else
        {
          v137 = @"NO";
        }

        v173 = 2112;
        v174 = v136;
        if ((v75 & 4) != 0)
        {
          v138 = @"YES";
        }

        else
        {
          v138 = @"NO";
        }

        v175 = 2112;
        v176 = v137;
        if ((v75 & 8) == 0)
        {
          v135 = @"NO";
        }

        v177 = 2112;
        v178 = v138;
        v179 = 2112;
        v180 = v135;
        _os_log_impl(&dword_1B7AD5000, v134, OS_LOG_TYPE_INFO, "Highlight type for Message: %@. automatic %@ starred %@ hidden %@ userInteracted %@", buf, 0x34u);
      }
    }

    v139 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v133, 1);
    objc_msgSend_setLocal_(v30, v140, v139);

    v143 = objc_msgSend_isShared(v30, v141, v142);
    v144 = v143 == 0;

    if (v144)
    {
      objc_msgSend_setShared_(v30, v145, MEMORY[0x1E695E110]);
    }

    goto LABEL_125;
  }

  v59 = objc_msgSend_attachmentNames(v161, v44, v45);
  v62 = objc_msgSend_count(v59, v60, v61) == 0;

  if (!v62)
  {
    goto LABEL_30;
  }

LABEL_22:
  v30 = v161;
  if (IMOSLoggingEnabled())
  {
    v46 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v172 = v156;
      _os_log_impl(&dword_1B7AD5000, v46, OS_LOG_TYPE_INFO, "NOT Appending highlight metadata Message: %@ since LP recommended that we do not.", buf, 0xCu);
    }

    v30 = v161;
  }

LABEL_125:

LABEL_126:
  v114 = v30;
LABEL_127:

  v146 = *MEMORY[0x1E69E9840];

  return v114;
}

- (id)_updateAttributesWithCollaborationMetadata:(id)metadata forMessageWithGUID:(id)d withURL:(id)l lpLinkMetadata:(id)linkMetadata messageDate:(id)date
{
  v214 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  dCopy = d;
  lCopy = l;
  linkMetadataCopy = linkMetadata;
  dateCopy = date;
  if (metadataCopy)
  {
    v15 = metadataCopy;
    if ((objc_msgSend__isLNKTypeMessage_(self, v16, v15) & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v43 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v209 = v15;
          _os_log_impl(&dword_1B7AD5000, v43, OS_LOG_TYPE_INFO, "Message was not detected as a link, skipping adding collaboration metadata. attributes: %@", buf, 0xCu);
        }
      }

      goto LABEL_91;
    }

    v203 = objc_alloc_init(MEMORY[0x1E69A82D8]);
    v19 = objc_msgSend_collaborationMetadata(linkMetadataCopy, v17, v18);

    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v25 = objc_msgSend_collaborationMetadata(linkMetadataCopy, v23, v24);
        v26 = v25;
        v27 = @"YES";
        if (!v19)
        {
          v27 = @"NO";
        }

        *buf = 138412546;
        v209 = v27;
        v210 = 2112;
        v211 = v25;
        _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "hasCollaborationMetadata: %@ CollaborationMetadata: %@", buf, 0x16u);
      }
    }

    if (v19)
    {
      v202 = objc_msgSend_sharedManager(MEMORY[0x1E69A8288], v20, v21);
      v30 = objc_msgSend_URL(v15, v28, v29);
      v201 = objc_msgSend_urlMinusFragment_onlyCKURL_(v202, v31, v30, 1);

      objc_msgSend_setURL_(v15, v32, v201);
      v35 = objc_msgSend_collaborationMetadata(linkMetadataCopy, v33, v34);
      v204 = objc_msgSend_collaborationIdentifier(v35, v36, v37);

      v40 = objc_msgSend_length(v204, v38, v39);
      if (v40)
      {
        v41 = 1;
      }

      else
      {
        v44 = IMLogHandleForCategory();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF87A0();
        }

        v41 = 2;
      }

      if (IMOSLoggingEnabled())
      {
        v46 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          *buf = 134218498;
          v209 = v41;
          v210 = 2112;
          v211 = dCopy;
          v212 = 2112;
          v213 = @"YES";
          _os_log_impl(&dword_1B7AD5000, v46, OS_LOG_TYPE_INFO, "Setting share status to %lu for MessageGUID: %@. hasCollaborationMetadata: %@", buf, 0x20u);
        }
      }

      v47 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v45, v41);
      objc_msgSend_setShared_(v15, v48, v47);

      v51 = objc_msgSend__syndicationContentTypeKey(self, v49, v50);
      objc_msgSend_setValue_forCustomKey_(v15, v52, &unk_1F2FCA2F0, v51);

      if (v40)
      {
        objc_msgSend_setAttribute_forKey_(v15, v53, MEMORY[0x1E695E118], @"FPIsTopLevelSharedItem");
      }

      v54 = objc_msgSend_titleFromLPLinkMetadata_(self, v53, linkMetadataCopy);
      if (objc_msgSend_length(v54, v55, v56))
      {
        v59 = v54;
      }

      else
      {
        v60 = objc_msgSend_urlDescription(v15, v57, v58);

        v59 = v60;
      }

      v61 = v59;
      if (objc_msgSend_length(v59, v57, v58))
      {
        v64 = objc_msgSend_length(v61, v62, v63, v61);
      }

      else
      {
        v67 = objc_msgSend__lpTitleCustomKey(self, v62, v63);
        v69 = objc_msgSend_valueForCustomKey_(v15, v68, v67);

        v64 = objc_msgSend_length(v69, v70, v71, v69);
      }

      if (v64)
      {
        objc_msgSend_setFilename_(v15, v65, v200);
      }

      else
      {
        v75 = objc_msgSend_filename(v15, v65, v66);
        if (v75)
        {
          objc_msgSend_setFilename_(v15, v74, v75);
        }
      }

      v76 = objc_msgSend_collaborationMetadata(linkMetadataCopy, v72, v73);
      v79 = objc_msgSend_contentType(v76, v77, v78);
      v82 = objc_msgSend_identifier(v79, v80, v81);

      if (!objc_msgSend_length(v82, v83, v84))
      {
        v87 = objc_msgSend_specialization(linkMetadataCopy, v85, v86);
        objc_msgSend_LPSharedObjectMetadataClass(IMDSharedWithYouMetadataManager, v88, v89);
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v91 = objc_msgSend_specialization(linkMetadataCopy, v85, v86);
          v94 = objc_msgSend_specialization(v91, v92, v93);
          objc_msgSend_LPSpecializationMetadataClass(IMDSharedWithYouMetadataManager, v95, v96);
          v97 = objc_opt_isKindOfClass();

          if (v97)
          {
            v100 = objc_msgSend_specialization(v91, v98, v99);
            if (objc_opt_respondsToSelector())
            {
              v102 = objc_msgSend_performSelector_(v100, v101, sel_type);

              v82 = v102;
            }
          }
        }
      }

      if (objc_msgSend_length(v82, v85, v86))
      {
        v105 = v82;
      }

      else
      {
        v106 = objc_msgSend_UTITypeForURL_(v203, v103, lCopy);

        v105 = v106;
      }

      v107 = v105;
      if (objc_msgSend_length(v105, v103, v104))
      {
        objc_msgSend_setContentType_(v15, v108, v107);
      }

      v110 = objc_msgSend_collaborationMetadata(linkMetadataCopy, v108, v109);
      v113 = objc_msgSend_creationDate(v110, v111, v112);

      v116 = objc_msgSend_distantPast(MEMORY[0x1E695DF00], v114, v115);
      isEqualToDate = objc_msgSend_isEqualToDate_(v113, v117, v116);

      if (isEqualToDate)
      {
        v120 = IMLogHandleForCategory();
        if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF87D4();
        }
      }

      else if (v113)
      {
        objc_msgSend_setContentCreationDate_(v15, v119, v113);
      }

      if (IMOSLoggingEnabled())
      {
        v123 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v209 = v204;
          v210 = 2112;
          v211 = dCopy;
          _os_log_impl(&dword_1B7AD5000, v123, OS_LOG_TYPE_INFO, "Setting collaborationIdentifier to %@ for messageGUID: %@", buf, 0x16u);
        }
      }

      v124 = objc_msgSend__collaborationIdentifierKey(self, v121, v122);
      objc_msgSend_setValue_forCustomKey_(v15, v125, v204, v124);

      objc_msgSend_setAttribute_forKey_(v15, v126, v204, @"FPCollaborationIdentifier");
      objc_msgSend_setAttribute_forKey_(v15, v127, @"NSFileProviderRootContainerItemIdentifier", @"FPParentFileItemID");
      v130 = objc_msgSend_collaborationMetadata(linkMetadataCopy, v128, v129);
      v133 = objc_msgSend_ckAppBundleIDs(v130, v131, v132);

      if (!objc_msgSend_count(v133, v134, v135))
      {
        v138 = IMLogHandleForCategory();
        if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF8808(dCopy, v138);
        }
      }

      v139 = objc_msgSend__ckBundleIDsKey(self, v136, v137);
      objc_msgSend_setValue_forCustomKey_(v15, v140, v133, v139);

      v141 = MEMORY[0x1E696ACC8];
      v144 = objc_msgSend_collaborationMetadata(linkMetadataCopy, v142, v143);
      v207 = 0;
      v146 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(v141, v145, v144, 1, &v207);
      v147 = v207;

      if (v146)
      {
        v148 = objc_opt_class();
        v151 = objc_msgSend_collaborationMetadataKey(v148, v149, v150);
        objc_msgSend_setValue_forCustomKey_(v15, v152, v146, v151);
      }

      else
      {
        v151 = IMLogHandleForCategory();
        if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF8880(v147, v151);
        }
      }

      v154 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v153, 0);
      objc_msgSend_setUserOwned_(v15, v155, v154);

      v157 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v156, 0);
      objc_msgSend_setTrashed_(v15, v158, v157);

      objc_msgSend_setAttribute_forKey_(v15, v159, &unk_1F2FCA2F0, @"FPCapabilities");
      v162 = objc_msgSend_authors(v15, v160, v161);
      if (objc_msgSend_count(v162, v163, v164))
      {
        v167 = objc_msgSend_firstObject(v162, v165, v166);
        v170 = objc_msgSend_displayName(v167, v168, v169);
        objc_msgSend_setOwnerName_(v15, v171, v170);

        if (!objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v172, v173) || !IMOSLoggingEnabled())
        {
          goto LABEL_80;
        }

        v176 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v176, OS_LOG_TYPE_INFO))
        {
          v179 = objc_msgSend_ownerName(v15, v177, v178);
          *buf = 138412290;
          v209 = v179;
          _os_log_impl(&dword_1B7AD5000, v176, OS_LOG_TYPE_INFO, "Owner name set to %@", buf, 0xCu);
        }
      }

      else
      {
        if (!objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v165, v166) || !IMOSLoggingEnabled())
        {
          goto LABEL_80;
        }

        v176 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v176, OS_LOG_TYPE_INFO))
        {
          v182 = objc_msgSend_identifier(v15, v180, v181);
          *buf = 138412290;
          v209 = v182;
          _os_log_impl(&dword_1B7AD5000, v176, OS_LOG_TYPE_INFO, "No authors found to derive the Owner name from for message guid:%@", buf, 0xCu);
        }
      }

LABEL_80:
      v183 = objc_msgSend_distantPast(MEMORY[0x1E695DF00], v174, v175);
      v185 = objc_msgSend_isEqualToDate_(dateCopy, v184, v183);

      if (v185)
      {
        v187 = IMLogHandleForCategory();
        if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF8904();
        }
      }

      else if (dateCopy)
      {
        objc_msgSend_setContentCreationDate_(v15, v186, dateCopy);
        objc_msgSend_setLastUsedDate_(v15, v188, dateCopy);
        if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v189, v190))
        {
          if (IMOSLoggingEnabled())
          {
            v191 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v191, OS_LOG_TYPE_INFO))
            {
              v194 = objc_msgSend_contentCreationDate(v15, v192, v193);
              *buf = 138412290;
              v209 = v194;
              _os_log_impl(&dword_1B7AD5000, v191, OS_LOG_TYPE_INFO, "Setting the creation & last used date to %@", buf, 0xCu);
            }
          }
        }
      }

LABEL_91:
      v195 = v15;
      goto LABEL_92;
    }

    if (IMOSLoggingEnabled())
    {
      v198 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v198, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v198, OS_LOG_TYPE_INFO, "Skipping adding additional collaboration related meta-data since the message is non-collaborative", buf, 2u);
      }
    }

    v199 = v15;
  }

  else
  {
    v42 = IMLogHandleForCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF8738();
    }
  }

LABEL_92:

  v196 = *MEMORY[0x1E69E9840];

  return metadataCopy;
}

- (BOOL)chatDictionary:(id)dictionary matchesFaceTimeConversation:(id)conversation
{
  v67 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  conversationCopy = conversation;
  if (objc_msgSend_state(conversationCopy, v7, v8) == 3)
  {
    v10 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v9, @"groupID");
    v13 = objc_msgSend_groupUUID(conversationCopy, v11, v12);
    v16 = objc_msgSend_UUIDString(v13, v14, v15);
    isEqualToString = objc_msgSend_isEqualToString_(v10, v17, v16);

    if (isEqualToString)
    {
      isEqualToSet = 1;
    }

    else
    {
      v22 = objc_msgSend_set(MEMORY[0x1E695DFA8], v19, v20);
      v25 = objc_msgSend_set(MEMORY[0x1E695DFA8], v23, v24);
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v56 = dictionaryCopy;
      v27 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v26, @"participants");
      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v61, v66, 16);
      if (v29)
      {
        v31 = v29;
        v32 = *v62;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v62 != v32)
            {
              objc_enumerationMutation(v27);
            }

            v34 = objc_msgSend_normalizedHandleWithDestinationID_(MEMORY[0x1E69D8C00], v30, *(*(&v61 + 1) + 8 * i));
            objc_msgSend_addObject_(v22, v35, v34);
          }

          v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v30, &v61, v66, 16);
        }

        while (v31);
      }

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v38 = objc_msgSend_remoteMembers(conversationCopy, v36, v37);
      v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v57, v65, 16);
      if (v40)
      {
        v43 = v40;
        v44 = *v58;
        do
        {
          for (j = 0; j != v43; ++j)
          {
            if (*v58 != v44)
            {
              objc_enumerationMutation(v38);
            }

            v46 = *(*(&v57 + 1) + 8 * j);
            v47 = objc_msgSend_handle(v46, v41, v42);
            v50 = objc_msgSend_type(v47, v48, v49);

            if (v50 != 1)
            {
              v51 = objc_msgSend_handle(v46, v41, v42);
              objc_msgSend_addObject_(v25, v52, v51);
            }
          }

          v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v41, &v57, v65, 16);
        }

        while (v43);
      }

      isEqualToSet = objc_msgSend_isEqualToSet_(v22, v53, v25);
      dictionaryCopy = v56;
    }
  }

  else
  {
    isEqualToSet = 0;
  }

  v54 = *MEMORY[0x1E69E9840];
  return isEqualToSet;
}

- (void)updateConversationManagerWithItem:(id)item chat:(id)chat attributes:(id)attributes
{
  v56 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  chatCopy = chat;
  attributesCopy = attributes;
  v11 = objc_msgSend_sharedInstance(MEMORY[0x1E69D8A58], v9, v10);
  v42 = objc_msgSend_conversationManager(v11, v12, v13);

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = objc_msgSend_activeConversations(v42, v14, v15);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v49, v55, 16);
  if (v18)
  {
    v20 = *v50;
    *&v19 = 138412290;
    v40 = v19;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v50 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v49 + 1) + 8 * i);
        if (objc_msgSend_chatDictionary_matchesFaceTimeConversation_(self, v17, chatCopy, v22, v40))
        {
          if (IMOSLoggingEnabled())
          {
            v24 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              *buf = v40;
              v54 = v22;
              _os_log_impl(&dword_1B7AD5000, v24, OS_LOG_TYPE_INFO, "TUConversation matches chatRecord for conversation: %@", buf, 0xCu);
            }
          }

          v25 = objc_msgSend_highlightDictionaryFromAttributes_withItem_chat_(self, v23, attributesCopy, itemCopy, chatCopy);
          if (IMOSLoggingEnabled())
          {
            v27 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              *buf = v40;
              v54 = v25;
              _os_log_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_INFO, "Going to update Conversation Manager with highlightDictionary: %@", buf, 0xCu);
            }
          }

          v28 = objc_msgSend_objectForKeyedSubscript_(itemCopy, v26, @"flags");
          v31 = objc_msgSend_unsignedLongLongValue(v28, v29, v30);

          v34 = objc_msgSend_sharedInstance(MEMORY[0x1E69D8A58], v32, v33);
          v37 = objc_msgSend_queue(v34, v35, v36);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_1B7B8CFD4;
          block[3] = &unk_1E7CBB508;
          block[4] = v22;
          v46 = v25;
          v47 = v42;
          v48 = (v31 & 4) != 0;
          v38 = v25;
          dispatch_async(v37, block);
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v49, v55, 16);
    }

    while (v18);
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (id)highlightDictionaryFromAttributes:(id)attributes withItem:(id)item chat:(id)chat
{
  v89 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  itemCopy = item;
  chatCopy = chat;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "Generating highlight dictionary", buf, 2u);
    }
  }

  v14 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v9, v10);
  if (attributesCopy)
  {
    v82 = objc_msgSend_filename(attributesCopy, v12, v13);
    if (objc_msgSend_length(v82, v15, v16))
    {
      objc_msgSend_setObject_forKey_(v14, v17, v82, @"fn");
    }

    v81 = objc_msgSend_contentCreationDate(attributesCopy, v17, v18);
    if (v81)
    {
      objc_msgSend_setObject_forKey_(v14, v19, v81, @"cd");
    }

    v80 = objc_msgSend_objectForKey_(itemCopy, v19, @"time");
    if (v80)
    {
      objc_msgSend_setObject_forKey_(v14, v20, v80, @"md");
    }

    v79 = objc_msgSend_contentType(attributesCopy, v20, v21);
    if (objc_msgSend_length(v79, v22, v23))
    {
      objc_msgSend_setObject_forKey_(v14, v24, v79, @"ct");
    }

    v84 = objc_msgSend_URL(attributesCopy, v24, v25);
    if (v84)
    {
      v28 = objc_msgSend_absoluteString(v84, v26, v27);
      objc_msgSend_setObject_forKey_(v14, v29, v28, @"ru");

      v31 = objc_msgSend__uniqueIdentifierForResourceURL_(self, v30, v84);
      if (objc_msgSend_length(v31, v32, v33))
      {
        objc_msgSend_setObject_forKey_(v14, v34, v31, @"i");
      }
    }

    v35 = objc_msgSend_customAttributeDictionary(attributesCopy, v26, v27);
    v78 = objc_msgSend_valueForKey_(v35, v36, @"com_apple_mobilesms_collaborationIdentifier");

    v41 = objc_msgSend_null(MEMORY[0x1E695DFB0], v37, v38);
    if (v78 == v41)
    {
    }

    else
    {
      v42 = objc_msgSend_length(v78, v39, v40) == 0;

      if (!v42)
      {
        objc_msgSend_setObject_forKey_(v14, v43, v78, @"ci");
      }
    }

    v46 = objc_msgSend_customAttributeDictionary(attributesCopy, v43, v44);
    v48 = objc_msgSend_valueForKey_(v46, v47, @"com_apple_mobilesms_ckBundleIDs");

    if (v48)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

        v48 = MEMORY[0x1E695E0F0];
      }

      objc_msgSend_setObject_forKey_(v14, v51, v48, @"ckAppBundleIDs");
    }

    v52 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v49, v50);
    v54 = objc_msgSend_objectForKey_(chatCopy, v53, @"guid");
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_msgSend_setObject_forKey_(v52, v55, v54, @"cid");
    }

    v56 = objc_msgSend_objectForKey_(itemCopy, v55, @"guid");
    if (objc_msgSend_length(v56, v57, v58))
    {
      objc_msgSend_setObject_forKey_(v52, v59, v56, @"uid");
    }

    objc_msgSend_setObject_forKey_(v52, v59, @"Messages", @"sa");
    objc_msgSend_setObject_forKey_(v52, v60, MEMORY[0x1E695E110], @"l");
    v63 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v61, v62);
    v65 = objc_msgSend_objectForKey_(itemCopy, v64, @"handle");
    if (objc_msgSend_length(v65, v66, v67))
    {
      objc_msgSend_setObject_forKey_(v63, v68, v65, @"h");
    }

    objc_msgSend_setObject_forKey_(v52, v68, v63, @"s");
    v71 = objc_msgSend_copy(v52, v69, v70);
    v86 = v71;
    v73 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v72, &v86, 1);
    objc_msgSend_setObject_forKey_(v14, v74, v73, @"a");

    if (IMOSLoggingEnabled())
    {
      v75 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v88 = v14;
        _os_log_impl(&dword_1B7AD5000, v75, OS_LOG_TYPE_INFO, "Returning highlight dictionary: %@", buf, 0xCu);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v45 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v88 = 0;
      _os_log_impl(&dword_1B7AD5000, v45, OS_LOG_TYPE_INFO, "Nil attributes: %@ passed in. Skipping generating highlight dictionary ", buf, 0xCu);
    }
  }

  v76 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_uniqueIdentifierForResourceURL:(id)l
{
  v3 = objc_msgSend_absoluteString(l, a2, l);
  v5 = objc_msgSend_dataUsingEncoding_(v3, v4, 4);

  v6 = objc_opt_class();
  v8 = objc_msgSend_Sha256ForData_withSalt_(v6, v7, v5, 0);
  v10 = objc_msgSend_base64EncodedStringWithOptions_(v8, v9, 0);

  return v10;
}

- (BOOL)_isLNKTypeMessage:(id)message
{
  v3 = objc_msgSend_messageType(message, a2, message);
  v5 = v3;
  if (v3)
  {
    isEqual = objc_msgSend_isEqual_(v3, v4, @"lnk");
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (BOOL)_isAttachmentType:(id)type
{
  v3 = objc_msgSend_messageType(type, a2, type);
  v5 = v3;
  if (v3)
  {
    isEqual = objc_msgSend_isEqual_(v3, v4, @"at");
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (id)titleFromLPLinkMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (!metadataCopy)
  {
    v11 = 0;
    goto LABEL_19;
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend_collaborationMetadata(metadataCopy, v4, v5), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_opt_respondsToSelector(), v6, (v7))
  {
    v8 = objc_msgSend_collaborationMetadata(metadataCopy, v4, v5);
    v11 = objc_msgSend_title(v8, v9, v10);
  }

  else
  {
    v11 = 0;
  }

  if (!objc_msgSend_length(v11, v4, v5))
  {
    if (!MEMORY[0x1B8CAFAC0](@"LPSharedObjectMetadata", @"LinkPresentation"))
    {
      v35 = objc_msgSend_title(metadataCopy, v12, v13);
      v38 = objc_msgSend_length(v35, v36, v37);

      if (v38)
      {
        goto LABEL_19;
      }

      v21 = objc_msgSend_title(metadataCopy, v39, v40);
      v18 = v11;
      goto LABEL_18;
    }

    v14 = objc_msgSend_specialization(metadataCopy, v12, v13);
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_19;
    }

    v18 = objc_msgSend_specialization(metadataCopy, v16, v17);
    v21 = objc_msgSend_title(v18, v19, v20);

    if (!objc_msgSend_length(v21, v22, v23))
    {
      MEMORY[0x1B8CAFAC0](@"LPFileMetadata", @"LinkPresentation");
      MEMORY[0x1B8CAFAC0](@"LPiCloudSharingMetadata", @"LinkPresentation");
      v26 = objc_msgSend_specialization(v18, v24, v25);
      v27 = objc_opt_isKindOfClass();

      v30 = objc_msgSend_specialization(v18, v28, v29);
      v33 = v30;
      if (v27)
      {
        v34 = objc_msgSend_name(v30, v31, v32);
LABEL_17:
        v46 = v34;

        v21 = v46;
        goto LABEL_18;
      }

      v41 = objc_opt_isKindOfClass();

      if (v41)
      {
        v33 = objc_msgSend_specialization(v18, v42, v43);
        v34 = objc_msgSend_title(v33, v44, v45);
        goto LABEL_17;
      }
    }

LABEL_18:

    v11 = v21;
  }

LABEL_19:

  return v11;
}

- (id)_pluginPayloadAttachmentPathsForItem:(id)item
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_objectForKeyedSubscript_(item, a2, @"attachments");
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v18, v22, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v13 = objc_msgSend_objectForKeyedSubscript_(*(*(&v18 + 1) + 8 * i), v8, @"path", v18);
        if (v13)
        {
          v14 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v12, v13);
          objc_msgSend_addObject_(v4, v15, v14);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v18, v22, 16);
    }

    while (v9);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_lpLinkMetadataForItem:(id)item attachmentPaths:(id)paths originalURL:(id)l
{
  itemCopy = item;
  pathsCopy = paths;
  lCopy = l;
  if (MEMORY[0x1B8CAFAC0](@"LPLinkMetadataPresentationTransformer", @"LinkPresentation"))
  {
    v10 = objc_alloc_init(MEMORY[0x1E69A8010]);
    v12 = objc_msgSend_objectForKey_(itemCopy, v11, @"payloadData");
    v13 = IMSharedHelperCombinedPluginPayloadDictionaryDataWithAttachmentURLs();
    v14 = IMSharedHelperPayloadFromCombinedPluginPayloadData();
    objc_msgSend_setData_(v10, v15, v14);
    v17 = objc_msgSend_objectForKey_(itemCopy, v16, @"guid");
    objc_msgSend_setMessageGUID_(v10, v18, v17);
    v20 = objc_msgSend_objectForKey_(itemCopy, v19, @"flags");
    v23 = (objc_msgSend_unsignedLongLongValue(v20, v21, v22) >> 2) & 1;

    objc_msgSend_setIsFromMe_(v10, v24, v23);
    objc_msgSend_setUrl_(v10, v25, lCopy);
    objc_msgSend_setAttachments_(v10, v26, pathsCopy);
    v28 = objc_msgSend_linkMetadataForPluginPayload_(MEMORY[0x1E69A8278], v27, v10);
    v31 = objc_msgSend_copy(v28, v29, v30);
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (BOOL)_shouldDonateToSharedWithYou:(id)you lpLinkMetadata:(id)metadata
{
  v30 = *MEMORY[0x1E69E9840];
  youCopy = you;
  metadataCopy = metadata;
  if (metadataCopy)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v9 = qword_1EBA54098;
    v25 = qword_1EBA54098;
    if (!qword_1EBA54098)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v27 = sub_1B7B8E54C;
      v28 = &unk_1E7CB6EA8;
      v29 = &v22;
      sub_1B7B8E54C(&buf, v6, v7);
      v9 = v23[3];
    }

    v10 = v9;
    _Block_object_dispose(&v22, 8);
    v11 = [v9 alloc];
    v13 = objc_msgSend_initWithMetadata_URL_(v11, v12, metadataCopy, youCopy, v22);
    if (v13 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      shouldDonateToSharedWithYou = objc_msgSend_shouldDonateToSharedWithYou(v13, v14, v15);
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = @"NO";
          if (shouldDonateToSharedWithYou)
          {
            v18 = @"YES";
          }

          LODWORD(buf) = 138412290;
          *(&buf + 4) = v18;
          _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "LP's recommendation is %@", &buf, 0xCu);
        }
      }
    }

    else
    {
      LOBYTE(shouldDonateToSharedWithYou) = 1;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, "Since we failed to get LPLinkMetadata, not asking LP's recommendation here.", &buf, 2u);
      }
    }

    LOBYTE(shouldDonateToSharedWithYou) = 1;
  }

  v20 = *MEMORY[0x1E69E9840];
  return shouldDonateToSharedWithYou;
}

- (id)_highlightedContentServerDateKey
{
  if (qword_1EDBE5BB8 != -1)
  {
    sub_1B7CF8938();
  }

  v3 = qword_1EDBE5BC0;

  return v3;
}

- (id)_syndicationContentTypeKey
{
  if (qword_1EBA54040 != -1)
  {
    sub_1B7CF894C();
  }

  v3 = qword_1EBA54038;

  return v3;
}

- (id)_collaborationIdentifierKey
{
  if (qword_1EBA54050 != -1)
  {
    sub_1B7CF8960();
  }

  v3 = qword_1EBA54048;

  return v3;
}

- (id)_ckBundleIDsKey
{
  if (qword_1EBA54060 != -1)
  {
    sub_1B7CF8974();
  }

  v3 = qword_1EBA54058;

  return v3;
}

- (id)_lpTitleCustomKey
{
  if (qword_1EBA54070 != -1)
  {
    sub_1B7CF8988();
  }

  v3 = qword_1EBA54068;

  return v3;
}

+ (id)collaborationMetadataKey
{
  if (qword_1EBA54080 != -1)
  {
    sub_1B7CF899C();
  }

  v3 = qword_1EBA54078;

  return v3;
}

+ (id)dataDetectedLink
{
  if (qword_1EBA54090 != -1)
  {
    sub_1B7CF89B0();
  }

  v3 = qword_1EBA54088;

  return v3;
}

@end