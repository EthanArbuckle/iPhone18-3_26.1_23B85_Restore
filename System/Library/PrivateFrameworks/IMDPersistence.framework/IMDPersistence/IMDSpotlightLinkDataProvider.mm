@interface IMDSpotlightLinkDataProvider
+ (id)attachmentPathsFromMessageRecord:(id)record;
- (id)dataForGUID:(id)d error:(id *)error;
@end

@implementation IMDSpotlightLinkDataProvider

+ (id)attachmentPathsFromMessageRecord:(id)record
{
  v42 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_attachmentRecords(recordCopy, v5, v6);
  if (v7)
  {
    v36 = v4;
    v8 = objc_alloc(MEMORY[0x1E695DF70]);
    v11 = objc_msgSend_count(v7, v9, v10);
    v13 = objc_msgSend_initWithCapacity_(v8, v12, v11);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v35 = v7;
    v14 = v7;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v37, v41, 16);
    if (v16)
    {
      v19 = v16;
      v20 = *v38;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v38 != v20)
          {
            objc_enumerationMutation(v14);
          }

          v24 = objc_msgSend_path(*(*(&v37 + 1) + 8 * i), v17, v18);
          if (v24)
          {
            v25 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v22, v24, 0);
            objc_msgSend_absoluteString(v25, v26, v27);
          }

          else
          {
            v25 = 0;
            objc_msgSend_absoluteString(0, v22, v23);
          }
          v28 = ;
          v31 = objc_msgSend_length(v28, v29, v30);

          if (v31)
          {
            objc_msgSend_addObject_(v13, v32, v25);
          }
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v37, v41, 16);
      }

      while (v19);
    }

    v4 = v36;
    v7 = v35;
  }

  else
  {
    v13 = 0;
  }

  objc_autoreleasePoolPop(v4);
  v33 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)dataForGUID:(id)d error:(id *)error
{
  v38[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v6 = IMDMessageRecordCopyMessageForGUID(dCopy);
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v33 = 138412290;
      v34 = v6;
      _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "Found message for data: %@", &v33, 0xCu);
    }
  }

  if (objc_msgSend_cacheHasAttachments(v6, v7, v8))
  {
    v12 = objc_opt_class();
    v14 = objc_msgSend_attachmentPathsFromMessageRecord_(v12, v13, v6);
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  v15 = objc_msgSend_iMessageAppBundleID(v6, v10, v11);
  v18 = objc_msgSend_iMessageAppData(v6, v16, v17);
  isEqual = objc_msgSend_isEqual_(*MEMORY[0x1E69A6A18], v19, v15);
  if (v18)
  {
    v22 = isEqual;
  }

  else
  {
    v22 = 0;
  }

  if (v22 != 1 || v14 == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v33 = 138412546;
        v34 = v15;
        v35 = 2112;
        v36 = v18;
        _os_log_impl(&dword_1B7AD5000, v24, OS_LOG_TYPE_INFO, "Failed to find data for spotlight because either bundleID was wrong (%@) or data was nil (%@)", &v33, 0x16u);
      }
    }

    v27 = 0;
  }

  else
  {
    v37[0] = @"attachmentPaths";
    v37[1] = @"payloadData";
    v38[0] = v14;
    v38[1] = v18;
    v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v21, v38, v37, 2);
    v27 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v26, v25, 0, error);
    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        if (error)
        {
          v30 = *error;
        }

        else
        {
          v30 = 0;
        }

        v33 = 138412546;
        v34 = v27;
        v35 = 2112;
        v36 = v30;
        _os_log_impl(&dword_1B7AD5000, v29, OS_LOG_TYPE_INFO, "Returning data %@ to spotlight with error %@", &v33, 0x16u);
      }
    }
  }

  v31 = *MEMORY[0x1E69E9840];

  return v27;
}

@end