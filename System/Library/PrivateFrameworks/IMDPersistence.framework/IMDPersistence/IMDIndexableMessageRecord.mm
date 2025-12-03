@interface IMDIndexableMessageRecord
- (BOOL)isKnownSender;
- (IMDIndexableMessageRecord)initWithDictionaryRepresentation:(id)representation;
- (IMDIndexableMessageRecord)initWithMessageRecord:(id)record;
- (id)dictionaryRepresentation;
- (id)formattedGUIDWithPart:(id)part;
- (id)messageDescriptor;
@end

@implementation IMDIndexableMessageRecord

- (IMDIndexableMessageRecord)initWithMessageRecord:(id)record
{
  v149 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v147.receiver = self;
  v147.super_class = IMDIndexableMessageRecord;
  v7 = [(IMDIndexableMessageRecord *)&v147 init];
  if (v7)
  {
    v7->_rowID = objc_msgSend_rowID(recordCopy, v5, v6);
    v10 = objc_msgSend_date(recordCopy, v8, v9);
    v13 = v10;
    if (v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = objc_msgSend_date(MEMORY[0x1E695DF00], v11, v12);
    }

    time = v7->_time;
    v7->_time = v14;

    v18 = objc_msgSend_dateRead(recordCopy, v16, v17);
    timeRead = v7->_timeRead;
    v7->_timeRead = v18;

    v22 = objc_msgSend_guid(recordCopy, v20, v21);
    guid = v7->_guid;
    v7->_guid = v22;

    v26 = objc_msgSend_text(recordCopy, v24, v25);
    plainBody = v7->_plainBody;
    v7->_plainBody = v26;

    v30 = objc_msgSend_attributedBodyText(recordCopy, v28, v29);
    attributedBody = v7->_attributedBody;
    v7->_attributedBody = v30;

    v34 = objc_msgSend_subject(recordCopy, v32, v33);
    subject = v7->_subject;
    v7->_subject = v34;

    v38 = objc_msgSend_serviceName(recordCopy, v36, v37);
    service = v7->_service;
    v7->_service = v38;

    v7->_flags = objc_msgSend_flags(recordCopy, v40, v41);
    v7->_hasAttachments = objc_msgSend_cacheHasAttachments(recordCopy, v42, v43);
    v7->_type = objc_msgSend_itemType(recordCopy, v44, v45);
    v48 = objc_msgSend_balloonBundleID(recordCopy, v46, v47);
    balloonBundleID = v7->_balloonBundleID;
    v7->_balloonBundleID = v48;

    v52 = objc_msgSend_payloadData(recordCopy, v50, v51);
    payloadData = v7->_payloadData;
    v7->_payloadData = v52;

    v56 = objc_msgSend_expressiveSendStyleID(recordCopy, v54, v55);
    expressiveSendStyleID = v7->_expressiveSendStyleID;
    v7->_expressiveSendStyleID = v56;

    v7->_associatedMessageType = objc_msgSend_associatedMessageType(recordCopy, v58, v59);
    v62 = objc_msgSend_associatedMessageGUID(recordCopy, v60, v61);
    associatedMessageGUID = v7->_associatedMessageGUID;
    v7->_associatedMessageGUID = v62;

    v66 = objc_msgSend_syndicationRanges(recordCopy, v64, v65);
    syndicationRanges = v7->_syndicationRanges;
    v7->_syndicationRanges = v66;

    v70 = objc_msgSend_destinationCallerID(recordCopy, v68, v69);
    destinationCallerID = v7->_destinationCallerID;
    v7->_destinationCallerID = v70;

    v74 = objc_msgSend_threadOriginatorGUID(recordCopy, v72, v73);
    if (objc_msgSend_length(v74, v75, v76))
    {
      v79 = IMDMessageRecordCopyMessageForGUID(v74);
      if (v79)
      {
        v80 = [IMDIndexableMessageRecord alloc];
        v82 = objc_msgSend_initWithMessageRecord_(v80, v81, v79);
        threadOriginator = v7->_threadOriginator;
        v7->_threadOriginator = v82;

        v86 = objc_msgSend_threadOriginator(v7, v84, v85);
        v89 = objc_msgSend_threadOriginatorPart(recordCopy, v87, v88);
        v91 = objc_msgSend_formattedGUIDWithPart_(v86, v90, v89);
        threadOriginatorFormattedGUID = v7->_threadOriginatorFormattedGUID;
        v7->_threadOriginatorFormattedGUID = v91;
      }
    }

    v93 = objc_msgSend_biaReferenceID(recordCopy, v77, v78);
    biaReferenceID = v7->_biaReferenceID;
    v7->_biaReferenceID = v93;

    v97 = objc_msgSend_associatedMessageEmoji(recordCopy, v95, v96);
    associatedEmoji = v7->_associatedEmoji;
    v7->_associatedEmoji = v97;

    v101 = objc_msgSend_messageSummaryInfo(recordCopy, v99, v100);
    messageSummaryInfo = v7->_messageSummaryInfo;
    v7->_messageSummaryInfo = v101;

    v105 = objc_msgSend_handleRecord(recordCopy, v103, v104);
    v108 = v105;
    if (v105)
    {
      v109 = _IMDCoreSpotlightHandleID(v105);
      handle = v7->_handle;
      v7->_handle = v109;

      v113 = objc_msgSend_uncanonicalizedURIString(v108, v111, v112);
      uncanonicalizedHandle = v7->_uncanonicalizedHandle;
      v7->_uncanonicalizedHandle = v113;
    }

    if (objc_msgSend_cacheHasAttachments(recordCopy, v106, v107))
    {
      v142 = v74;
      v117 = objc_msgSend_attachmentRecords(recordCopy, v115, v116);
      v118 = MEMORY[0x1E695DF70];
      v121 = objc_msgSend_count(v117, v119, v120);
      v123 = objc_msgSend_arrayWithCapacity_(v118, v122, v121);
      v143 = 0u;
      v144 = 0u;
      v145 = 0u;
      v146 = 0u;
      v124 = v117;
      v126 = objc_msgSend_countByEnumeratingWithState_objects_count_(v124, v125, &v143, v148, 16);
      if (v126)
      {
        v127 = v126;
        v128 = *v144;
        do
        {
          for (i = 0; i != v127; ++i)
          {
            if (*v144 != v128)
            {
              objc_enumerationMutation(v124);
            }

            v130 = *(*(&v143 + 1) + 8 * i);
            v131 = [IMDIndexableAttachmentRecord alloc];
            v133 = objc_msgSend_initWithAttachmentRecord_(v131, v132, v130);
            objc_msgSend_addObject_(v123, v134, v133);
          }

          v127 = objc_msgSend_countByEnumeratingWithState_objects_count_(v124, v135, &v143, v148, 16);
        }

        while (v127);
      }

      v138 = objc_msgSend_copy(v123, v136, v137);
      attachments = v7->_attachments;
      v7->_attachments = v138;

      v74 = v142;
    }
  }

  v140 = *MEMORY[0x1E69E9840];
  return v7;
}

- (IMDIndexableMessageRecord)initWithDictionaryRepresentation:(id)representation
{
  v120 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v118.receiver = self;
  v118.super_class = IMDIndexableMessageRecord;
  v6 = [(IMDIndexableMessageRecord *)&v118 init];
  if (v6)
  {
    v7 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v5, @"rowID");
    v6->_rowID = objc_msgSend_integerValue(v7, v8, v9);

    v11 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v10, @"time");
    time = v6->_time;
    v6->_time = v11;

    v14 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v13, @"timeRead");
    timeRead = v6->_timeRead;
    v6->_timeRead = v14;

    v17 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v16, @"guid");
    guid = v6->_guid;
    v6->_guid = v17;

    v20 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v19, @"plainBody");
    plainBody = v6->_plainBody;
    v6->_plainBody = v20;

    v23 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v22, @"attributedBody");
    attributedBody = v6->_attributedBody;
    v6->_attributedBody = v23;

    v26 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v25, @"subject");
    subject = v6->_subject;
    v6->_subject = v26;

    v29 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v28, @"service");
    service = v6->_service;
    v6->_service = v29;

    v32 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v31, @"flags");
    v6->_flags = objc_msgSend_integerValue(v32, v33, v34);

    v36 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v35, @"hasAttachments");
    v6->_hasAttachments = objc_msgSend_BOOLValue(v36, v37, v38);

    v40 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v39, @"type");
    v6->_type = objc_msgSend_integerValue(v40, v41, v42);

    v44 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v43, @"balloonBundleID");
    balloonBundleID = v6->_balloonBundleID;
    v6->_balloonBundleID = v44;

    v47 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v46, @"payloadData");
    payloadData = v6->_payloadData;
    v6->_payloadData = v47;

    v50 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v49, @"expressiveSendStyleID");
    expressiveSendStyleID = v6->_expressiveSendStyleID;
    v6->_expressiveSendStyleID = v50;

    v53 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v52, @"associatedMessageType");
    v6->_associatedMessageType = objc_msgSend_integerValue(v53, v54, v55);

    v57 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v56, @"associatedMessageGUID");
    associatedMessageGUID = v6->_associatedMessageGUID;
    v6->_associatedMessageGUID = v57;

    v60 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v59, @"syndicationRanges");
    syndicationRanges = v6->_syndicationRanges;
    v6->_syndicationRanges = v60;

    v63 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v62, @"destinationCallerID");
    destinationCallerID = v6->_destinationCallerID;
    v6->_destinationCallerID = v63;

    v66 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v65, @"threadOriginator");
    threadOriginator = v6->_threadOriginator;
    v6->_threadOriginator = v66;

    v69 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v68, @"threadOriginatorFormattedGUID");
    threadOriginatorFormattedGUID = v6->_threadOriginatorFormattedGUID;
    v6->_threadOriginatorFormattedGUID = v69;

    v72 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v71, @"biaReferenceID");
    biaReferenceID = v6->_biaReferenceID;
    v6->_biaReferenceID = v72;

    v75 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v74, @"associatedMessageEmoji");
    associatedEmoji = v6->_associatedEmoji;
    v6->_associatedEmoji = v75;

    v78 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v77, @"messageSummaryInfo");
    messageSummaryInfo = v6->_messageSummaryInfo;
    v6->_messageSummaryInfo = v78;

    v81 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v80, @"uncanonicalizedHandle");
    uncanonicalizedHandle = v6->_uncanonicalizedHandle;
    v6->_uncanonicalizedHandle = v81;

    v84 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v83, @"handle");
    handle = v6->_handle;
    v6->_handle = v84;

    v87 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v86, @"attachments");
    if (objc_msgSend_count(v87, v88, v89))
    {
      v92 = MEMORY[0x1E695DF70];
      v93 = objc_msgSend_count(v87, v90, v91);
      v95 = objc_msgSend_arrayWithCapacity_(v92, v94, v93);
      v114 = 0u;
      v115 = 0u;
      v116 = 0u;
      v117 = 0u;
      v96 = v87;
      v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v96, v97, &v114, v119, 16);
      if (v98)
      {
        v99 = v98;
        v100 = *v115;
        do
        {
          v101 = 0;
          do
          {
            if (*v115 != v100)
            {
              objc_enumerationMutation(v96);
            }

            v102 = *(*(&v114 + 1) + 8 * v101);
            v103 = [IMDIndexableAttachmentRecord alloc];
            v105 = objc_msgSend_initWithDictionaryRepresentation_(v103, v104, v102, v114);
            objc_msgSend_addObject_(v95, v106, v105);

            ++v101;
          }

          while (v99 != v101);
          v99 = objc_msgSend_countByEnumeratingWithState_objects_count_(v96, v107, &v114, v119, 16);
        }

        while (v99);
      }

      v110 = objc_msgSend_copy(v95, v108, v109);
      attachments = v6->_attachments;
      v6->_attachments = v110;
    }
  }

  v112 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)messageDescriptor
{
  v3 = objc_alloc(MEMORY[0x1E69A8118]);
  v6 = objc_msgSend_attributedBody(self, v4, v5);
  v9 = objc_msgSend_guid(self, v7, v8);
  v11 = objc_msgSend_initWithMessageBody_messageGUID_(v3, v10, v6, v9);

  return v11;
}

- (id)formattedGUIDWithPart:(id)part
{
  partCopy = part;
  v7 = objc_msgSend_messageDescriptor(self, v5, v6);
  v10 = v7;
  if (partCopy && (objc_msgSend_messageParts(v7, v8, v9), v11 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend_count(v11, v12, v13), v11, v14 >= 2))
  {
    v15 = objc_msgSend_guid(self, v8, v9);
    ThreadIdentifierWithComponents = IMMessageCreateThreadIdentifierWithComponents();

    AssociatedMessageGUIDFromThreadIdentifier = IMMessageCreateAssociatedMessageGUIDFromThreadIdentifier();
  }

  else
  {
    AssociatedMessageGUIDFromThreadIdentifier = objc_msgSend_guid(self, v8, v9);
  }

  return AssociatedMessageGUIDFromThreadIdentifier;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = MEMORY[0x1E696AD98];
  v7 = objc_msgSend_rowID(self, v5, v6);
  v9 = objc_msgSend_numberWithInteger_(v4, v8, v7);
  if (v9)
  {
    CFDictionarySetValue(v3, @"rowID", v9);
  }

  v12 = objc_msgSend_time(self, v10, v11);
  if (v12)
  {
    CFDictionarySetValue(v3, @"time", v12);
  }

  v15 = objc_msgSend_timeRead(self, v13, v14);
  if (v15)
  {
    CFDictionarySetValue(v3, @"timeRead", v15);
  }

  v18 = objc_msgSend_guid(self, v16, v17);
  if (v18)
  {
    CFDictionarySetValue(v3, @"guid", v18);
  }

  v21 = objc_msgSend_plainBody(self, v19, v20);
  if (v21)
  {
    CFDictionarySetValue(v3, @"plainBody", v21);
  }

  v24 = objc_msgSend_attributedBody(self, v22, v23);
  if (v24)
  {
    CFDictionarySetValue(v3, @"attributedBody", v24);
  }

  v27 = objc_msgSend_subject(self, v25, v26);
  if (v27)
  {
    CFDictionarySetValue(v3, @"subject", v27);
  }

  v30 = objc_msgSend_service(self, v28, v29);
  if (v30)
  {
    CFDictionarySetValue(v3, @"service", v30);
  }

  v31 = MEMORY[0x1E696AD98];
  v34 = objc_msgSend_flags(self, v32, v33);
  v36 = objc_msgSend_numberWithUnsignedLongLong_(v31, v35, v34);
  if (v36)
  {
    CFDictionarySetValue(v3, @"flags", v36);
  }

  v37 = MEMORY[0x1E696AD98];
  hasAttachments = objc_msgSend_hasAttachments(self, v38, v39);
  v42 = objc_msgSend_numberWithBool_(v37, v41, hasAttachments);
  if (v42)
  {
    CFDictionarySetValue(v3, @"hasAttachments", v42);
  }

  v43 = MEMORY[0x1E696AD98];
  v46 = objc_msgSend_type(self, v44, v45);
  v48 = objc_msgSend_numberWithLongLong_(v43, v47, v46);
  if (v48)
  {
    CFDictionarySetValue(v3, @"type", v48);
  }

  v51 = objc_msgSend_balloonBundleID(self, v49, v50);
  if (v51)
  {
    CFDictionarySetValue(v3, @"balloonBundleID", v51);
  }

  v54 = objc_msgSend_payloadData(self, v52, v53);
  if (v54)
  {
    CFDictionarySetValue(v3, @"payloadData", v54);
  }

  v57 = objc_msgSend_expressiveSendStyleID(self, v55, v56);
  if (v57)
  {
    CFDictionarySetValue(v3, @"expressiveSendStyleID", v57);
  }

  v58 = MEMORY[0x1E696AD98];
  v61 = objc_msgSend_associatedMessageType(self, v59, v60);
  v63 = objc_msgSend_numberWithLongLong_(v58, v62, v61);
  if (v63)
  {
    CFDictionarySetValue(v3, @"associatedMessageType", v63);
  }

  v66 = objc_msgSend_associatedMessageGUID(self, v64, v65);
  if (v66)
  {
    CFDictionarySetValue(v3, @"associatedMessageGUID", v66);
  }

  v69 = objc_msgSend_syndicationRanges(self, v67, v68);
  if (v69)
  {
    CFDictionarySetValue(v3, @"syndicationRanges", v69);
  }

  v72 = objc_msgSend_destinationCallerID(self, v70, v71);
  if (v72)
  {
    CFDictionarySetValue(v3, @"destinationCallerID", v72);
  }

  v75 = objc_msgSend_threadOriginator(self, v73, v74);
  v78 = objc_msgSend_dictionaryRepresentation(v75, v76, v77);

  if (v78)
  {
    CFDictionarySetValue(v3, @"threadOriginator", v78);
  }

  v81 = objc_msgSend_threadOriginatorFormattedGUID(self, v79, v80);
  if (v81)
  {
    CFDictionarySetValue(v3, @"threadOriginatorFormattedGUID", v81);
  }

  v84 = objc_msgSend_biaReferenceID(self, v82, v83);
  if (v84)
  {
    CFDictionarySetValue(v3, @"biaReferenceID", v84);
  }

  v87 = objc_msgSend_associatedEmoji(self, v85, v86);
  if (v87)
  {
    CFDictionarySetValue(v3, @"associatedMessageEmoji", v87);
  }

  return v3;
}

- (BOOL)isKnownSender
{
  if (objc_msgSend_isFromMe(self, a2, v2))
  {
    return 1;
  }

  v7 = objc_msgSend_handle(self, v4, v5);
  IsKnownContact = _IMDCoreSpotlightIsKnownContact(v7);

  return IsKnownContact;
}

@end