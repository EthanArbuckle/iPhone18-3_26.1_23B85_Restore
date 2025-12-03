@interface IMDCoreRecentsController
+ (id)sharedController;
- (id)_dataDetectedMessageGUIDsFromGUIDs:(id)ds;
- (id)createRecentFromMessageDictionary:(id)dictionary participantHandleID:(id)d;
- (id)createRecentsFromVCFWithPath:(id)path messageGUID:(id)d senderID:(id)iD messageDate:(id)date outAddress:(id *)address;
- (void)deleteMessageGUIDs:(id)ds reason:(int64_t)reason completionHandler:(id)handler;
- (void)deleteRecentsForMessageGUIDs:(id)ds completionBlock:(id)block;
- (void)deleteRecentsWithHandleIDs:(id)ds;
@end

@implementation IMDCoreRecentsController

+ (id)sharedController
{
  if (qword_1EBA53AD0 != -1)
  {
    sub_1B7CF839C();
  }

  v3 = qword_1EBA53AA0;

  return v3;
}

- (id)_dataDetectedMessageGUIDsFromGUIDs:(id)ds
{
  dsCopy = ds;
  v6 = objc_msgSend_array(MEMORY[0x1E695DF70], v4, v5);
  if (objc_msgSend_count(dsCopy, v7, v8))
  {
    v11 = 0;
    v12 = 0;
    do
    {
      if ((objc_msgSend_count(dsCopy, v9, v10) + v11) >> 4 > 0x270)
      {
        v15 = 10000;
      }

      else
      {
        v15 = objc_msgSend_count(dsCopy, v13, v14) + v11;
      }

      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = sub_1B7B83318;
      v22[3] = &unk_1E7CBB2B0;
      v16 = dsCopy;
      v23 = v16;
      v25 = v12;
      v26 = v15;
      v24 = v6;
      IMDPersistencePerformBlock(v22, 1, v17);

      v12 += 10000;
      v11 -= 10000;
    }

    while (v12 < objc_msgSend_count(v16, v18, v19));
  }

  v20 = objc_msgSend_copy(v6, v9, v10);

  return v20;
}

- (void)deleteRecentsWithHandleIDs:(id)ds
{
  dsCopy = ds;
  if (!dsCopy && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "IMDCoreSpotlightDeleteCoreRecentsWithHandles bailing because we were passed no handles.", buf, 2u);
    }
  }

  if (objc_msgSend_count(dsCopy, v4, v5) < 2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1B7B83648;
    v10[3] = &unk_1E7CB6AE0;
    v11 = dsCopy;
    objc_msgSend__performClientRequest_(self, v9, v10);
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "IMDCoreSpotlightDeleteCoreRecentsWithHandles bailing because this is a group chat.", buf, 2u);
    }
  }
}

- (void)deleteRecentsForMessageGUIDs:(id)ds completionBlock:(id)block
{
  dsCopy = ds;
  blockCopy = block;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1B7B83B6C;
  v11[3] = &unk_1E7CB7260;
  v12 = dsCopy;
  v13 = blockCopy;
  v8 = blockCopy;
  v9 = dsCopy;
  objc_msgSend__performClientRequest_(self, v10, v11);
}

- (id)createRecentFromMessageDictionary:(id)dictionary participantHandleID:(id)d
{
  dCopy = d;
  dictionaryCopy = dictionary;
  v7 = _IMDCoreSpotlightCNContactForAddress(dCopy);
  v9 = objc_msgSend_objectForKey_(dictionaryCopy, v8, @"time");
  v11 = objc_msgSend_objectForKey_(dictionaryCopy, v10, @"service");

  v12 = _IMDCoreRecentsKindForHandleID(dCopy, v11);
  v15 = objc_msgSend_sharedInstance(IMDContactCache, v13, v14);
  v17 = objc_msgSend_fullNameForContact_(v15, v16, v7);

  if (!v17)
  {
    v17 = objc_msgSend_im_stripCategoryLabel(dCopy, v18, v19);
  }

  if (v17)
  {
    objc_msgSend_recentEventForAddress_displayName_kind_date_weight_metadata_options_(MEMORY[0x1E6998FC8], v18, dCopy, v17, v12, v9, 0, 0, 1);
  }

  else
  {
    objc_msgSend_recentEventForAddress_displayName_kind_date_weight_metadata_options_(MEMORY[0x1E6998FC8], v18, dCopy, &stru_1F2FA9728, v12, v9, 0, 0, 1);
  }
  v20 = ;

  return v20;
}

- (id)createRecentsFromVCFWithPath:(id)path messageGUID:(id)d senderID:(id)iD messageDate:(id)date outAddress:(id *)address
{
  v123 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  dCopy = d;
  iDCopy = iD;
  dateCopy = date;
  v87 = pathCopy;
  if (pathCopy)
  {
    v88 = objc_msgSend_contactsForVCardAtPath_(IMDContactCache, v11, pathCopy);
    if (objc_msgSend_count(v88, v12, v13))
    {
      v99 = objc_msgSend_array(MEMORY[0x1E695DF70], v14, v15);
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      obj = v88;
      v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v114, v122, 16);
      if (v86)
      {
        v83 = *v115;
        v98 = *MEMORY[0x1E6998F58];
        v17 = *MEMORY[0x1E69A6888];
        do
        {
          v18 = 0;
          do
          {
            if (*v115 != v83)
            {
              v19 = v18;
              objc_enumerationMutation(obj);
              v18 = v19;
            }

            v84 = v18;
            v20 = *(*(&v114 + 1) + 8 * v18);
            v21 = MEMORY[0x1E696AD98];
            v22 = MEMORY[0x1B8CAFAD0]("CRRecentWeightMessagesReceivedAddress", @"CoreRecents");
            v100 = objc_msgSend_numberWithDouble_(v21, v23, v24, *v22);
            v26 = objc_msgSend_metadataDictionaryForMessageID_senderID_date_(MEMORY[0x1E69A7FE8], v25, dCopy, iDCopy, dateCopy);
            v112 = 0u;
            v113 = 0u;
            v110 = 0u;
            v111 = 0u;
            v29 = objc_msgSend_postalAddresses(v20, v27, v28);
            v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v110, v121, 16);
            if (v33)
            {
              v34 = *v111;
              do
              {
                for (i = 0; i != v33; ++i)
                {
                  if (*v111 != v34)
                  {
                    objc_enumerationMutation(v29);
                  }

                  v36 = MEMORY[0x1E695CF68];
                  v37 = objc_msgSend_value(*(*(&v110 + 1) + 8 * i), v31, v32);
                  v39 = objc_msgSend_singleLineStringFromPostalAddress_addCountryName_(v36, v38, v37, 0);

                  v41 = objc_msgSend_recentEventForAddress_displayName_kind_date_weight_metadata_options_(MEMORY[0x1E6998FC8], v40, v39, 0, v98, dateCopy, v100, v26, 0);
                  objc_msgSend_addObject_(v99, v42, v41);

                  if (address)
                  {
                    *address = objc_msgSend_copy(v39, v43, v44);
                  }
                }

                v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v31, &v110, v121, 16);
              }

              while (v33);
            }

            v108 = 0u;
            v109 = 0u;
            v106 = 0u;
            v107 = 0u;
            v91 = objc_msgSend_urlAddresses(v20, v45, v46);
            v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(v91, v47, &v106, v120, 16);
            if (v93)
            {
              v92 = *v107;
              do
              {
                v50 = 0;
                do
                {
                  if (*v107 != v92)
                  {
                    v51 = v50;
                    objc_enumerationMutation(v91);
                    v50 = v51;
                  }

                  v96 = v50;
                  v52 = *(*(&v106 + 1) + 8 * v50);
                  v53 = objc_msgSend_label(v52, v48, v49);
                  isEqualToString = objc_msgSend_isEqualToString_(v53, v54, @"map url");

                  if (isEqualToString)
                  {
                    v95 = objc_msgSend_value(v52, v48, v49);
                    v57 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v56, v95);
                    v94 = objc_msgSend_query(v57, v58, v59);

                    v104 = 0u;
                    v105 = 0u;
                    v102 = 0u;
                    v103 = 0u;
                    v61 = objc_msgSend_componentsSeparatedByString_(v94, v60, @"&");
                    v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v62, &v102, v119, 16);
                    if (v64)
                    {
                      v65 = *v103;
                      do
                      {
                        for (j = 0; j != v64; ++j)
                        {
                          if (*v103 != v65)
                          {
                            objc_enumerationMutation(v61);
                          }

                          v67 = objc_msgSend_componentsSeparatedByString_(*(*(&v102 + 1) + 8 * j), v63, @"=");
                          v69 = objc_msgSend_objectAtIndex_(v67, v68, 0);
                          v71 = objc_msgSend_objectAtIndex_(v67, v70, 1);
                          if (objc_msgSend_isEqualToString_(v69, v72, v17))
                          {
                            v74 = objc_msgSend_recentEventForAddress_displayName_kind_date_weight_metadata_options_(MEMORY[0x1E6998FC8], v73, v71, 0, v98, dateCopy, v100, v26, 0);
                            objc_msgSend_addObject_(v99, v75, v74);
                          }
                        }

                        v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v63, &v102, v119, 16);
                      }

                      while (v64);
                    }
                  }

                  v50 = v96 + 1;
                }

                while (v96 + 1 != v93);
                v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(v91, v48, &v106, v120, 16);
              }

              while (v93);
            }

            v18 = v84 + 1;
          }

          while (v84 + 1 != v86);
          v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v76, &v114, v122, 16);
        }

        while (v86);
      }

      v79 = objc_msgSend_copy(v99, v77, v78);
    }

    else
    {
      v79 = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v80 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v80, OS_LOG_TYPE_INFO, "_IMDCreateRecentEventsFromVCF() was passed a nil filePath", buf, 2u);
      }
    }

    v79 = 0;
  }

  v81 = *MEMORY[0x1E69E9840];

  return v79;
}

- (void)deleteMessageGUIDs:(id)ds reason:(int64_t)reason completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = objc_msgSend__dataDetectedMessageGUIDsFromGUIDs_(self, v8, ds);
  if (objc_msgSend_count(v9, v10, v11))
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1B7B84A10;
    v13[3] = &unk_1E7CBB328;
    v14 = handlerCopy;
    objc_msgSend_deleteRecentsForMessageGUIDs_completionBlock_(self, v12, v9, v13);
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

@end