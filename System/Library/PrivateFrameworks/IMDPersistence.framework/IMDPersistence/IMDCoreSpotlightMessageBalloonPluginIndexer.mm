@interface IMDCoreSpotlightMessageBalloonPluginIndexer
+ (id)_newSummaryTextForPayloadData:(id)a3 item:(id)a4;
+ (id)_pluginPayloadAttachmentPathsForItem:(id)a3;
+ (id)_richLinkMetadataForItem:(id)a3 attachmentPaths:(id)a4 originalURL:(id)a5;
+ (void)indexItem:(id)a3 withChat:(id)a4 context:(id)a5 metadataToUpdate:(id)a6 timingProfiler:(id)a7;
@end

@implementation IMDCoreSpotlightMessageBalloonPluginIndexer

+ (void)indexItem:(id)a3 withChat:(id)a4 context:(id)a5 metadataToUpdate:(id)a6 timingProfiler:(id)a7
{
  v114 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v108 = a4;
  v109 = a5;
  v111 = a6;
  v110 = a7;
  v14 = objc_msgSend_objectForKey_(v12, v13, @"balloonBundleID");
  v16 = objc_msgSend_objectForKey_(v12, v15, @"payloadData");
  v18 = objc_msgSend_objectForKey_(v12, v17, @"flags");
  LOBYTE(a6) = objc_msgSend_unsignedLongLongValue(v18, v19, v20);

  if ((a6 & 4) != 0)
  {
    IsKnownContact = 1;
  }

  else
  {
    v23 = objc_msgSend_objectForKeyedSubscript_(v12, v21, @"handle");
    IsKnownContact = _IMDCoreSpotlightIsKnownContact(v23);
  }

  if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v21, v22) && IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = @"NO";
      if (IsKnownContact)
      {
        v27 = @"YES";
      }

      *buf = 138412290;
      *&buf[4] = v27;
      _os_log_impl(&dword_1B7AD5000, v26, OS_LOG_TYPE_INFO, "known sender: %@", buf, 0xCu);
    }
  }

  if (v14)
  {
    v28 = IsKnownContact;
  }

  else
  {
    v28 = 0;
  }

  if (v28 == 1)
  {
    if (v16)
    {
      v29 = *MEMORY[0x1E69A6A18];
      if ((objc_msgSend_isEqualToString_(v14, v25, *MEMORY[0x1E69A6A18]) & 1) != 0 || objc_msgSend_isEqualToString_(v14, v25, *MEMORY[0x1E69A69F0]))
      {
        if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v25, v30) && IMOSLoggingEnabled())
        {
          v32 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v14;
            _os_log_impl(&dword_1B7AD5000, v32, OS_LOG_TYPE_INFO, "Indexing balloon with bundle ID %@", buf, 0xCu);
          }
        }

        if (objc_msgSend_isEqualToString_(v14, v31, v29))
        {
          if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v33, v34) && IMOSLoggingEnabled())
          {
            v36 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1B7AD5000, v36, OS_LOG_TYPE_INFO, "Found a rich link to index", buf, 2u);
            }
          }

          v107 = objc_msgSend_objectForKey_(v12, v35, @"attributedBody");
          v37 = IMDCoreSpotlightURLFromAttributedMessageBody(v107);
          v40 = objc_msgSend_absoluteString(v37, v38, v39);

          v42 = objc_msgSend__newSummaryTextForPayloadData_item_(a1, v41, v16, v12);
          if (!objc_msgSend_length(v42, v43, v44) && v40)
          {
            v45 = v40;

            v42 = v45;
          }

          v46 = _IMDCoreSpotlightStrippedBody(v12, @"plainBody", v40);
          v48 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v47, v46);
          v50 = objc_msgSend__pluginPayloadAttachmentPathsForItem_(a1, v49, v12);
          v52 = objc_msgSend__richLinkMetadataForItem_attachmentPaths_originalURL_(a1, v51, v12, v50, v48);
          v54 = objc_msgSend_indexerForMetadata_(IMDCoreSpotlightRichLinkIndexer, v53, v52);
          objc_msgSend_mapPropertiesFromMetadata_text_originalURL_attachmentPaths_toAttributes_(v54, v55, v52, v42, v48, v50, v111);

          goto LABEL_54;
        }

LABEL_53:
        objc_msgSend_setMessageType_(v111, v33, @"op");
        goto LABEL_54;
      }
    }
  }

  v56 = objc_msgSend_objectForKey_(v12, v25, @"service");
  isEqualToString = objc_msgSend_isEqualToString_(v56, v57, *MEMORY[0x1E69A7AE0]);

  v60 = objc_msgSend_objectForKey_(v12, v59, @"attributedBody");
  v63 = v60;
  if (isEqualToString)
  {
    v64 = objc_msgSend_length(v60, v61, v62);
    if (v63 && (v66 = v64, v67 = *MEMORY[0x1E69A5FB0], objc_msgSend_attribute_existsInRange_(v63, v65, *MEMORY[0x1E69A5FB0], 0, v64)))
    {
      *buf = 0uLL;
      v69 = objc_msgSend_attribute_atIndex_longestEffectiveRange_inRange_(v63, v68, v67, 0, buf, 0, v66);
      objc_opt_class();
      isDataDetectedLinkAllowedForSWY = 0;
      if ((objc_opt_isKindOfClass() & 1) != 0 && *buf == __PAIR128__(v66, 0))
      {
        v73 = objc_msgSend_sharedManager(MEMORY[0x1E69A8288], v70, v71);
        isDataDetectedLinkAllowedForSWY = objc_msgSend_isDataDetectedLinkAllowedForSWY_(v73, v74, v69);

        if (isDataDetectedLinkAllowedForSWY)
        {
          if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v75, v76) && IMOSLoggingEnabled())
          {
            v79 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
            {
              *v112 = 0;
              _os_log_impl(&dword_1B7AD5000, v79, OS_LOG_TYPE_INFO, "Found a non-rich SMS link to index", v112, 2u);
            }
          }

          v80 = MEMORY[0x1E695DFF8];
          v81 = objc_msgSend_absoluteString(v69, v77, v78);
          v83 = objc_msgSend_URLWithString_(v80, v82, v81);
          objc_msgSend_setURL_(v111, v84, v83);

          objc_msgSend_setMessageType_(v111, v85, @"lnk");
          v87 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v86, 0);
          v90 = objc_msgSend_lpHasRichMediaCustomKey(IMDCoreSpotlightRichLinkIndexer, v88, v89);
          objc_msgSend_setValue_forCustomKey_(v111, v91, v87, v90);

          isDataDetectedLinkAllowedForSWY = 1;
        }
      }
    }

    else
    {
      isDataDetectedLinkAllowedForSWY = 0;
    }
  }

  else
  {
    v94 = IMDCoreSpotlightURLFromAttributedMessageBody(v60);
    if (v94 && (objc_msgSend_sharedManager(MEMORY[0x1E69A8288], v92, v93), v95 = objc_claimAutoreleasedReturnValue(), v97 = objc_msgSend_isDataDetectedLinkAllowedForSWY_(v95, v96, v94), v95, v97))
    {
      objc_msgSend_setURL_(v111, v98, v94);
      objc_msgSend_setMessageType_(v111, v99, @"lnk");
      v101 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v100, 0);
      v104 = objc_msgSend_lpHasRichMediaCustomKey(IMDCoreSpotlightRichLinkIndexer, v102, v103);
      objc_msgSend_setValue_forCustomKey_(v111, v105, v101, v104);

      isDataDetectedLinkAllowedForSWY = 1;
    }

    else
    {
      isDataDetectedLinkAllowedForSWY = 0;
    }
  }

  if (((isDataDetectedLinkAllowedForSWY ^ 1) & (v14 != 0)) == 1)
  {
    goto LABEL_53;
  }

LABEL_54:

  v106 = *MEMORY[0x1E69E9840];
}

+ (id)_newSummaryTextForPayloadData:(id)a3 item:(id)a4
{
  v5 = MEMORY[0x1E69A8010];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  objc_msgSend_setData_(v8, v9, v7);

  v11 = objc_msgSend_objectForKey_(v6, v10, @"guid");
  objc_msgSend_setMessageGUID_(v8, v12, v11);
  v14 = objc_msgSend_objectForKey_(v6, v13, @"flags");

  v17 = (objc_msgSend_unsignedLongLongValue(v14, v15, v16) >> 2) & 1;
  objc_msgSend_setIsFromMe_(v8, v18, v17);
  v20 = objc_msgSend_previewSummaryWithPluginPayload_(MEMORY[0x1E69A8278], v19, v8);
  v23 = objc_msgSend_copy(v20, v21, v22);

  return v23;
}

+ (id)_pluginPayloadAttachmentPathsForItem:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_objectForKeyedSubscript_(a3, a2, @"attachments");
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v16, v20, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v13 = objc_msgSend_objectForKeyedSubscript_(*(*(&v16 + 1) + 8 * i), v8, @"path", v16);
        if (v13)
        {
          objc_msgSend_addObject_(v4, v12, v13);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v16, v20, 16);
    }

    while (v9);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)_richLinkMetadataForItem:(id)a3 attachmentPaths:(id)a4 originalURL:(id)a5
{
  v50 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v11 = objc_msgSend_objectForKey_(v7, v10, @"payloadData");
  v12 = objc_alloc_init(MEMORY[0x1E69A8010]);
  v44 = v11;
  objc_msgSend_setData_(v12, v13, v11);
  v15 = objc_msgSend_objectForKey_(v7, v14, @"guid");
  objc_msgSend_setMessageGUID_(v12, v16, v15);
  v18 = objc_msgSend_objectForKey_(v7, v17, @"flags");
  v21 = (objc_msgSend_unsignedLongLongValue(v18, v19, v20) >> 2) & 1;

  objc_msgSend_setIsFromMe_(v12, v22, v21);
  objc_msgSend_setUrl_(v12, v23, v9);
  v26 = objc_msgSend_array(MEMORY[0x1E695DF70], v24, v25);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v27 = v8;
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v45, v49, 16);
  if (v29)
  {
    v31 = v29;
    v32 = *v46;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v46 != v32)
        {
          objc_enumerationMutation(v27);
        }

        v34 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v30, *(*(&v45 + 1) + 8 * i));
        v35 = v34;
        if (v26 && v34)
        {
          CFArrayAppendValue(v26, v34);
        }
      }

      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v30, &v45, v49, 16);
    }

    while (v31);
  }

  objc_msgSend_setAttachments_(v12, v36, v26);
  v38 = objc_msgSend_linkMetadataForPluginPayload_(MEMORY[0x1E69A8278], v37, v12);
  v41 = objc_msgSend_copy(v38, v39, v40);

  v42 = *MEMORY[0x1E69E9840];

  return v41;
}

@end