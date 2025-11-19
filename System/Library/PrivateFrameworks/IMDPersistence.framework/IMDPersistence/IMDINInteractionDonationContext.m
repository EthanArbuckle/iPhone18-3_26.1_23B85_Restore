@interface IMDINInteractionDonationContext
- (IMDINInteractionDonationContext)initWithIndexableChatDictionary:(id)a3 messageDictionary:(id)a4;
@end

@implementation IMDINInteractionDonationContext

- (IMDINInteractionDonationContext)initWithIndexableChatDictionary:(id)a3 messageDictionary:(id)a4
{
  v127 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v125.receiver = self;
  v125.super_class = IMDINInteractionDonationContext;
  v9 = [(IMDINInteractionDonationContext *)&v125 init];
  if (v9)
  {
    v10 = objc_msgSend_objectForKey_(v7, v8, @"guid");
    messageGUID = v9->_messageGUID;
    v9->_messageGUID = v10;

    v13 = objc_msgSend_objectForKey_(v7, v12, @"plainBody");
    messagePlainBody = v9->_messagePlainBody;
    v9->_messagePlainBody = v13;

    v16 = objc_msgSend_objectForKey_(v7, v15, @"time");
    messageDate = v9->_messageDate;
    v9->_messageDate = v16;

    v19 = objc_msgSend_objectForKey_(v7, v18, @"service");
    serviceName = v9->_serviceName;
    v9->_serviceName = v19;

    v22 = objc_msgSend_objectForKey_(v6, v21, @"lalh");
    v25 = objc_msgSend__stripFZIDPrefix(v22, v23, v24);

    v27 = objc_msgSend_objectForKey_(v7, v26, @"flags");
    v30 = objc_msgSend_unsignedLongLongValue(v27, v28, v29);

    v118 = v25;
    if ((v30 & 4) != 0)
    {
      v40 = v25;
      senderHandleID = v9->_senderHandleID;
      v9->_senderHandleID = v40;
    }

    else
    {
      senderHandleID = objc_msgSend_objectForKey_(v7, v31, @"handle", v25);
      v35 = objc_msgSend__stripFZIDPrefix(senderHandleID, v33, v34);
      v38 = objc_msgSend_im_stripCategoryLabel(v35, v36, v37);
      v39 = v9->_senderHandleID;
      v9->_senderHandleID = v38;
    }

    v119 = v7;
    v42 = objc_msgSend_objectForKey_(v7, v41, @"uncanonicalizedHandle");
    uncanonicalizedSenderHandleID = v9->_uncanonicalizedSenderHandleID;
    v9->_uncanonicalizedSenderHandleID = v42;

    v45 = objc_msgSend_objectForKey_(v6, v44, @"guid");
    chatGUID = v9->_chatGUID;
    v9->_chatGUID = v45;

    v48 = objc_msgSend_objectForKey_(v6, v47, @"chatIdentifier");
    chatIdentifier = v9->_chatIdentifier;
    v9->_chatIdentifier = v48;

    v51 = objc_msgSend_objectForKey_(v6, v50, @"groupName");
    chatDisplayName = v9->_chatDisplayName;
    v9->_chatDisplayName = v51;

    v54 = objc_msgSend_objectForKey_(v6, v53, @"style");
    v9->_chatStyle = objc_msgSend_intValue(v54, v55, v56);

    v9->_isFilteredValue = objc_msgSend_integerValueForKey_withDefault_(v6, v57, @"isFiltered", 0);
    v59 = objc_msgSend_objectForKey_(v6, v58, @"participants");
    v60 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v61 = v59;
    v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v62, &v121, v126, 16);
    v120 = v9;
    if (v63)
    {
      v64 = v63;
      v65 = *v122;
      do
      {
        for (i = 0; i != v64; ++i)
        {
          if (*v122 != v65)
          {
            objc_enumerationMutation(v61);
          }

          v67 = *(*(&v121 + 1) + 8 * i);
          v68 = _IMDCoreSpotlightCNContactForAddress(v67);
          v69 = v67;
          v72 = objc_msgSend_senderHandleID(v9, v70, v71);
          isEqualToString = objc_msgSend_isEqualToString_(v72, v73, v69);

          v9 = v120;
          v75 = [IMDCoreSpotlightChatParticipant alloc];
          isSender = objc_msgSend_initWithHandleID_contact_isSender_(v75, v76, v69, v68, isEqualToString);

          objc_msgSend_addObject_(v60, v78, isSender);
        }

        v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v79, &v121, v126, 16);
      }

      while (v64);
    }

    v82 = objc_msgSend_copy(v60, v80, v81);
    chatParticipants = v9->_chatParticipants;
    v9->_chatParticipants = v82;

    v85 = objc_msgSend_objectForKey_(v6, v84, @"lalh");
    v88 = objc_msgSend__stripFZIDPrefix(v85, v86, v87);
    chatLastAddressedLocaleHandle = v9->_chatLastAddressedLocaleHandle;
    v9->_chatLastAddressedLocaleHandle = v88;

    v91 = objc_msgSend_objectForKeyedSubscript_(v6, v90, @"groupPhotoGUID");
    groupPhotoGuid = v9->_groupPhotoGuid;
    v9->_groupPhotoGuid = v91;

    v94 = objc_msgSend_objectForKeyedSubscript_(v6, v93, @"groupPhotoPath");
    groupPhotoInternalFilePath = v9->_groupPhotoInternalFilePath;
    v9->_groupPhotoInternalFilePath = v94;

    v7 = v119;
    v97 = objc_msgSend_objectForKey_(v119, v96, @"attributedBody");
    v99 = objc_msgSend_objectForKey_(v119, v98, @"destinationCallerID");
    v9->_isMentionOfMe = _IMDCoreSpotlightMessageMentionsMe(v97, v99);
    v101 = objc_msgSend_objectForKey_(v119, v100, @"threadOriginator");
    v103 = objc_msgSend_objectForKey_(v101, v102, @"flags");
    v120->_isReplyToMe = (objc_msgSend_unsignedLongLongValue(v103, v104, v105) & 4) != 0;

    v107 = objc_msgSend_objectForKey_(v119, v106, @"flags");
    v120->_isNotifyAnyway = (objc_msgSend_unsignedLongLongValue(v107, v108, v109) & 0x800000000) != 0;

    v111 = objc_msgSend_objectForKey_(v6, v110, @"properties");
    v113 = objc_msgSend_objectForKey_(v111, v112, *MEMORY[0x1E69A6BC8]);
    v120->_isMergedBusinessThread = objc_msgSend_BOOLValue(v113, v114, v115);

    v9 = v120;
  }

  v116 = *MEMORY[0x1E69E9840];
  return v9;
}

@end