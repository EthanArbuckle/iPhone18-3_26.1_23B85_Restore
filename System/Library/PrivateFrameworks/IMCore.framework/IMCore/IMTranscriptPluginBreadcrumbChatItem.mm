@interface IMTranscriptPluginBreadcrumbChatItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isFromMe;
- (id)_initWithItem:(id)item datasource:(id)datasource statusText:(id)text optionFlags:(unint64_t)flags;
- (unint64_t)hash;
- (void)configureStatusTextWithAccount:(id)account;
@end

@implementation IMTranscriptPluginBreadcrumbChatItem

- (id)_initWithItem:(id)item datasource:(id)datasource statusText:(id)text optionFlags:(unint64_t)flags
{
  itemCopy = item;
  datasourceCopy = datasource;
  textCopy = text;
  v20.receiver = self;
  v20.super_class = IMTranscriptPluginBreadcrumbChatItem;
  v15 = [(IMChatItem *)&v20 _initWithItem:itemCopy];
  if (v15)
  {
    v16 = objc_msgSend_guid(itemCopy, v13, v14);
    v17 = sub_1A83AC604();

    objc_msgSend__setGUID_(v15, v18, v17);
    objc_storeStrong(v15 + 7, datasource);
    objc_storeStrong(v15 + 8, text);
    v15[10] = flags;
  }

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v13.receiver = self;
  v13.super_class = IMTranscriptPluginBreadcrumbChatItem;
  if ([(IMTranscriptChatItem *)&v13 isEqual:equalCopy])
  {
    v6 = equalCopy;
    if (self->_optionFlags == v6[10] && ((rawStatusText = self->_rawStatusText, v8 = v6[8], rawStatusText == v8) || objc_msgSend_isEqual_(rawStatusText, v5, v8)))
    {
      dataSource = self->_dataSource;
      v10 = v6[7];
      if (dataSource == v10)
      {
        isEqual = 1;
      }

      else
      {
        isEqual = objc_msgSend_isEqual_(dataSource, v5, v10);
      }
    }

    else
    {
      isEqual = 0;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  v10.receiver = self;
  v10.super_class = IMTranscriptPluginBreadcrumbChatItem;
  v3 = [(IMTranscriptChatItem *)&v10 hash]+ self->_optionFlags;
  v6 = &v3[objc_msgSend_hash(self->_rawStatusText, v4, v5)];
  return &v6[objc_msgSend_hash(self->_dataSource, v7, v8)];
}

- (void)configureStatusTextWithAccount:(id)account
{
  v108 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v7 = objc_msgSend_balloonBundleID(self, v5, v6);
  v8 = *MEMORY[0x1E69A6928];
  v9 = IMBalloonExtensionIDWithSuffix();
  isEqualToString = objc_msgSend_isEqualToString_(v7, v10, v9);

  if (isEqualToString)
  {
    v14 = objc_msgSend__item(self, v12, v13);
    v17 = objc_msgSend_isFromMe(v14, v15, v16);

    if (v17)
    {
      v18 = sub_1A8361964();
      v20 = objc_msgSend_localizedStringForKey_value_table_(v18, v19, @"You sent a poll", &stru_1F1B76F98, @"IMCoreLocalizable");
    }

    else
    {
      v45 = MEMORY[0x1E696AEC0];
      v18 = sub_1A8361964();
      v47 = objc_msgSend_localizedStringForKey_value_table_(v18, v46, @"$(%@) sent a poll", &stru_1F1B76F98, @"IMCoreLocalizable");
      v20 = objc_msgSend_stringWithFormat_(v45, v48, v47, kIMTranscriptPluginBreadcrumbTextSenderIdentifier);
    }

    v44 = 0;
  }

  else
  {
    v20 = self->_rawStatusText;
    v18 = objc_msgSend_alphanumericCharacterSet(MEMORY[0x1E696AD48], v21, v22);
    v25 = objc_msgSend_nonBaseCharacterSet(MEMORY[0x1E696AB08], v23, v24);
    objc_msgSend_formUnionWithCharacterSet_(v18, v26, v25);

    v29 = objc_msgSend_symbolCharacterSet(MEMORY[0x1E696AB08], v27, v28);
    objc_msgSend_formUnionWithCharacterSet_(v18, v30, v29);

    objc_msgSend_invert(v18, v31, v32);
    v34 = objc_msgSend_stringByAppendingString_(*MEMORY[0x1E69A5F00], v33, *MEMORY[0x1E69A5F20]);
    objc_msgSend_addCharactersInString_(v18, v35, v34);

    v37 = objc_msgSend_componentsSeparatedByCharactersInSet_(v20, v36, v18);
    v39 = objc_msgSend_componentsJoinedByString_(v37, v38, &stru_1F1B76F98);

    if (objc_msgSend_length(v39, v40, v41))
    {
      v44 = 0;
    }

    else
    {
      v49 = objc_msgSend_bundleID(self->_dataSource, v42, v43);
      hasPrefix = objc_msgSend_hasPrefix_(v49, v50, *MEMORY[0x1E69A69F0]);

      if (!hasPrefix)
      {
        goto LABEL_10;
      }

      v54 = objc_msgSend_pluginPayload(self->_dataSource, v52, v53);
      v57 = objc_msgSend_payloadDictionary(v54, v55, v56);

      v44 = objc_msgSend_objectForKey_(v57, v58, *MEMORY[0x1E69A6EC0]);

      if (!v44)
      {
LABEL_10:
        v59 = objc_msgSend_sharedInstance(IMBalloonPluginManager, v52, v53);
        v62 = objc_msgSend_bundleID(self->_dataSource, v60, v61);
        v64 = objc_msgSend_balloonPluginForBundleID_(v59, v63, v62);

        v44 = objc_msgSend_browserDisplayName(v64, v65, v66);
      }

      v67 = MEMORY[0x1E696AEC0];
      v68 = sub_1A8361964();
      v70 = objc_msgSend_localizedStringForKey_value_table_(v68, v69, @"$(%@) sent %@ message", &stru_1F1B76F98, @"IMCoreLocalizable");
      v72 = objc_msgSend_stringWithFormat_(v67, v71, v70, kIMTranscriptPluginBreadcrumbTextSenderIdentifier, v44);

      v20 = v72;
    }
  }

  v75 = objc_msgSend___im_rangesOfHandleIdentifierStrings(v20, v73, v74);
  if (objc_msgSend_count(v75, v76, v77))
  {
    v78 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v81 = objc_msgSend__item(self, v79, v80);
    v84 = objc_msgSend__senderHandle(v81, v82, v83);

    if (v84 && objc_msgSend_hasName(v84, v85, v86))
    {
      v87 = objc_msgSend_name(v84, v85, v86);
      if (v87)
      {
        CFDictionarySetValue(v78, kIMTranscriptPluginBreadcrumbTextSenderIdentifier, v87);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_1A84DFD7C();
      }
    }

    v90 = objc_msgSend__item(self, v85, v86);
    v93 = objc_msgSend__otherHandle(v90, v91, v92);

    if (v93 && objc_msgSend_hasName(v93, v94, v95))
    {
      v96 = objc_msgSend_name(v93, v94, v95);
      if (v96)
      {
        CFDictionarySetValue(v78, kIMTranscriptPluginBreadcrumbTextReceiverIdentifier, v96);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_1A84DFE0C();
      }
    }

    v97 = objc_msgSend_mutableCopy(v20, v94, v95);
    v99 = objc_msgSend_replaceHandleWithContactNameInString_forAccount_additionalHandles_(IMBalloonPluginDataSource, v98, v97, accountCopy, v78);
    statusText = self->_statusText;
    self->_statusText = v99;
  }

  else
  {
    v88 = IMLogHandleForCategory();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v103 = v20;
      v104 = 2112;
      v105 = v75;
      v106 = 2112;
      v107 = v44;
      _os_log_error_impl(&dword_1A823F000, v88, OS_LOG_TYPE_ERROR, "There are no identifier strings to replace, so we display the raw string. tmpRawStatusText: %@, identifierRanges: %@, pluginName: %@", buf, 0x20u);
    }

    v89 = v20;
    v78 = self->_statusText;
    self->_statusText = v89;
  }

  v101 = *MEMORY[0x1E69E9840];
}

- (BOOL)isFromMe
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_isFromMe(v3, v4, v5);

  return v6;
}

@end