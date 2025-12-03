@interface IMDIndexableChatRecord
- (IMDIndexableChatRecord)initWithChatRecord:(id)record copyLastMessageDate:(BOOL)date;
- (IMDIndexableChatRecord)initWithDictionaryRepresentation:(id)representation;
- (id)dictionaryRepresentation;
@end

@implementation IMDIndexableChatRecord

- (IMDIndexableChatRecord)initWithChatRecord:(id)record copyLastMessageDate:(BOOL)date
{
  dateCopy = date;
  recordCopy = record;
  v84.receiver = self;
  v84.super_class = IMDIndexableChatRecord;
  v9 = [(IMDIndexableChatRecord *)&v84 init];
  if (v9)
  {
    v10 = objc_msgSend_guid(recordCopy, v7, v8);
    guid = v9->_guid;
    v9->_guid = v10;

    v14 = objc_msgSend_groupName(recordCopy, v12, v13);
    groupName = v9->_groupName;
    v9->_groupName = v14;

    v18 = objc_msgSend_accountLogin(recordCopy, v16, v17);
    loginID = v9->_loginID;
    v9->_loginID = v18;

    v22 = objc_msgSend_accountID(recordCopy, v20, v21);
    accountID = v9->_accountID;
    v9->_accountID = v22;

    v26 = objc_msgSend_properties(recordCopy, v24, v25);
    properties = v9->_properties;
    v9->_properties = v26;

    v30 = objc_msgSend_chatIdentifier(recordCopy, v28, v29);
    chatIdentifier = v9->_chatIdentifier;
    v9->_chatIdentifier = v30;

    v34 = objc_msgSend_groupID(recordCopy, v32, v33);
    groupID = v9->_groupID;
    v9->_groupID = v34;

    v38 = objc_msgSend_originalGroupID(recordCopy, v36, v37);
    originalGroupID = v9->_originalGroupID;
    v9->_originalGroupID = v38;

    v42 = objc_msgSend_lastAddressedHandle(recordCopy, v40, v41);
    lastAddressedLocalHandle = v9->_lastAddressedLocalHandle;
    v9->_lastAddressedLocalHandle = v42;

    v46 = objc_msgSend_properties(v9, v44, v45);
    v48 = objc_msgSend_objectForKeyedSubscript_(v46, v47, *MEMORY[0x1E69A6B80]);
    groupPhotoGUID = v9->_groupPhotoGUID;
    v9->_groupPhotoGUID = v48;

    v52 = objc_msgSend_groupPhotoGUID(v9, v50, v51);
    v55 = objc_msgSend_length(v52, v53, v54);

    if (v55)
    {
      v58 = objc_msgSend_groupPhotoGUID(v9, v56, v57);
      v59 = IMDAttachmentRecordCopyAttachmentForGUID(v58);

      if (v59)
      {
        v62 = objc_msgSend_path(v59, v60, v61);
        groupPhotoPath = v9->_groupPhotoPath;
        v9->_groupPhotoPath = v62;
      }
    }

    v64 = objc_msgSend_handleRecords(recordCopy, v56, v57);
    v66 = objc_msgSend___imArrayByApplyingBlock_(v64, v65, &unk_1F2FA0510);
    participants = v9->_participants;
    v9->_participants = v66;

    v9->_filtered = objc_msgSend_isFiltered(recordCopy, v68, v69);
    v9->_blackholed = objc_msgSend_isBlackholed(recordCopy, v70, v71);
    v9->_syndicationType = objc_msgSend_syndicationType(recordCopy, v72, v73);
    v76 = objc_msgSend_syndicationDate(recordCopy, v74, v75);
    syndicationDate = v9->_syndicationDate;
    v9->_syndicationDate = v76;

    if (dateCopy)
    {
      Message = IMDChatRecordCopyLastMessage(recordCopy);
      v81 = objc_msgSend_date(Message, v79, v80);
      lastMessageDate = v9->_lastMessageDate;
      v9->_lastMessageDate = v81;
    }
  }

  return v9;
}

- (IMDIndexableChatRecord)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v65.receiver = self;
  v65.super_class = IMDIndexableChatRecord;
  v6 = [(IMDIndexableChatRecord *)&v65 init];
  if (v6)
  {
    v7 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v5, @"guid");
    guid = v6->_guid;
    v6->_guid = v7;

    v10 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v9, @"groupName");
    groupName = v6->_groupName;
    v6->_groupName = v10;

    v13 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v12, @"style");
    v6->_chatStyle = objc_msgSend_integerValue(v13, v14, v15);

    v17 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v16, @"loginID");
    loginID = v6->_loginID;
    v6->_loginID = v17;

    v20 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v19, @"properties");
    properties = v6->_properties;
    v6->_properties = v20;

    v23 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v22, @"chatIdentifier");
    chatIdentifier = v6->_chatIdentifier;
    v6->_chatIdentifier = v23;

    v26 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v25, @"groupID");
    groupID = v6->_groupID;
    v6->_groupID = v26;

    v29 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v28, @"originalGroupID");
    originalGroupID = v6->_originalGroupID;
    v6->_originalGroupID = v29;

    v32 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v31, @"accountID");
    accountID = v6->_accountID;
    v6->_accountID = v32;

    v35 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v34, @"lalh");
    lastAddressedLocalHandle = v6->_lastAddressedLocalHandle;
    v6->_lastAddressedLocalHandle = v35;

    v38 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v37, @"groupPhotoGUID");
    groupPhotoGUID = v6->_groupPhotoGUID;
    v6->_groupPhotoGUID = v38;

    v41 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v40, @"groupPhotoPath");
    groupPhotoPath = v6->_groupPhotoPath;
    v6->_groupPhotoPath = v41;

    v44 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v43, @"participants");
    participants = v6->_participants;
    v6->_participants = v44;

    v47 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v46, @"isFiltered");
    v6->_filtered = objc_msgSend_integerValue(v47, v48, v49);

    v51 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v50, @"isBlackholed");
    v6->_blackholed = objc_msgSend_integerValue(v51, v52, v53) != 0;

    v55 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v54, @"syndicationType");
    v6->_syndicationType = objc_msgSend_integerValue(v55, v56, v57);

    v59 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v58, @"syndicationDate");
    syndicationDate = v6->_syndicationDate;
    v6->_syndicationDate = v59;

    v62 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v61, @"lastMessageDate");
    lastMessageDate = v6->_lastMessageDate;
    v6->_lastMessageDate = v62;
  }

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = objc_msgSend_guid(self, v4, v5);
  if (v6)
  {
    CFDictionarySetValue(v3, @"guid", v6);
  }

  v9 = objc_msgSend_groupName(self, v7, v8);
  if (v9)
  {
    CFDictionarySetValue(v3, @"groupName", v9);
  }

  v10 = MEMORY[0x1E696AD98];
  v13 = objc_msgSend_chatStyle(self, v11, v12);
  v15 = objc_msgSend_numberWithUnsignedChar_(v10, v14, v13);
  if (v15)
  {
    CFDictionarySetValue(v3, @"style", v15);
  }

  v18 = objc_msgSend_loginID(self, v16, v17);
  if (v18)
  {
    CFDictionarySetValue(v3, @"loginID", v18);
  }

  v21 = objc_msgSend_properties(self, v19, v20);
  if (v21)
  {
    CFDictionarySetValue(v3, @"properties", v21);
  }

  v24 = objc_msgSend_chatIdentifier(self, v22, v23);
  if (v24)
  {
    CFDictionarySetValue(v3, @"chatIdentifier", v24);
  }

  v27 = objc_msgSend_groupID(self, v25, v26);
  if (v27)
  {
    CFDictionarySetValue(v3, @"groupID", v27);
  }

  v30 = objc_msgSend_originalGroupID(self, v28, v29);
  if (v30)
  {
    CFDictionarySetValue(v3, @"originalGroupID", v30);
  }

  v33 = objc_msgSend_accountID(self, v31, v32);
  if (v33)
  {
    CFDictionarySetValue(v3, @"accountID", v33);
  }

  v36 = objc_msgSend_lastAddressedLocalHandle(self, v34, v35);
  if (v36)
  {
    CFDictionarySetValue(v3, @"lalh", v36);
  }

  v39 = objc_msgSend_groupPhotoGUID(self, v37, v38);
  if (v39)
  {
    CFDictionarySetValue(v3, @"groupPhotoGUID", v39);
  }

  v42 = objc_msgSend_groupPhotoPath(self, v40, v41);
  if (v42)
  {
    CFDictionarySetValue(v3, @"groupPhotoPath", v42);
  }

  v45 = objc_msgSend_participants(self, v43, v44);
  if (v45)
  {
    CFDictionarySetValue(v3, @"participants", v45);
  }

  v46 = MEMORY[0x1E696AD98];
  isFiltered = objc_msgSend_isFiltered(self, v47, v48);
  v51 = objc_msgSend_numberWithInteger_(v46, v50, isFiltered);
  if (v51)
  {
    CFDictionarySetValue(v3, @"isFiltered", v51);
  }

  v52 = MEMORY[0x1E696AD98];
  isBlackholed = objc_msgSend_isBlackholed(self, v53, v54);
  v57 = objc_msgSend_numberWithBool_(v52, v56, isBlackholed);
  if (v57)
  {
    CFDictionarySetValue(v3, @"isBlackholed", v57);
  }

  v58 = MEMORY[0x1E696AD98];
  v61 = objc_msgSend_syndicationType(self, v59, v60);
  v63 = objc_msgSend_numberWithInteger_(v58, v62, v61);
  if (v63)
  {
    CFDictionarySetValue(v3, @"syndicationType", v63);
  }

  v66 = objc_msgSend_syndicationDate(self, v64, v65);
  if (v66)
  {
    CFDictionarySetValue(v3, @"syndicationDate", v66);
  }

  v69 = objc_msgSend_lastMessageDate(self, v67, v68);
  if (v69)
  {
    CFDictionarySetValue(v3, @"lastMessageDate", v69);
  }

  return v3;
}

@end