@interface IMDContactChangeHandler
- (void)visitAddContactEvent:(id)a3;
- (void)visitDeleteContactEvent:(id)a3;
- (void)visitDropEverythingEvent:(id)a3;
- (void)visitUpdateContactEvent:(id)a3;
@end

@implementation IMDContactChangeHandler

- (void)visitDropEverythingEvent:(id)a3
{
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "IMDContactChangeHandler: Handling a Drop everything change history event", v10, 2u);
    }
  }

  v7 = objc_msgSend_sharedInstance(IMDContactCache, v4, v5);
  objc_msgSend_resetCache(v7, v8, v9);
}

- (void)visitAddContactEvent:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "IMDContactChangeHandler: Handling a Add Contact change history event", buf, 2u);
    }
  }

  v7 = objc_msgSend_contact(v3, v4, v5);
  v9 = objc_msgSend_IDsFromCNContact_(MEMORY[0x1E69A7FD0], v8, v7);
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = v9;
      _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "IMDContactChangeHandler: Updating contact cache for handle IDs: %@", buf, 0xCu);
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v9;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v22, v26, 16);
  if (v15)
  {
    v16 = *v23;
    do
    {
      v17 = 0;
      do
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v22 + 1) + 8 * v17);
        v19 = objc_msgSend_sharedInstance(IMDContactCache, v13, v14, v22);
        objc_msgSend_cacheContact_forKey_(v19, v20, v7, v18);

        ++v17;
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v22, v26, 16);
    }

    while (v15);
  }

  if (v11)
  {
    IMDCoreSpotlightReIndexForHandles(v11, 1015);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)visitUpdateContactEvent:(id)a3
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "IMDContactChangeHandler: Handling a Update Contact change history event", buf, 2u);
    }
  }

  v7 = objc_msgSend_contact(v3, v4, v5);
  v9 = objc_msgSend_IDsFromCNContact_(MEMORY[0x1E69A7FD0], v8, v7);
  v12 = objc_msgSend_sharedInstance(IMDContactCache, v10, v11);
  v15 = objc_msgSend_identifier(v7, v13, v14);
  v17 = objc_msgSend__handlesMatchingContactIdentifier_(v12, v16, v15);

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v62 = v17;
      _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, "IMDContactChangeHandler: Removing entries from contact cache for handle IDs: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v62 = v9;
      _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "IMDContactChangeHandler: Updating contact cache with the new CNContact for handle IDs: %@", buf, 0xCu);
    }
  }

  v22 = objc_msgSend_sharedInstance(IMDContactCache, v19, v20);
  v25 = objc_msgSend_fullNameCache(v22, v23, v24);
  v28 = objc_msgSend_identifier(v7, v26, v27);
  objc_msgSend_removeObjectForKey_(v25, v29, v28);

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v30 = v17;
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v55, v60, 16);
  if (v34)
  {
    v35 = *v56;
    do
    {
      v36 = 0;
      do
      {
        if (*v56 != v35)
        {
          objc_enumerationMutation(v30);
        }

        v37 = *(*(&v55 + 1) + 8 * v36);
        v38 = objc_msgSend_sharedInstance(IMDContactCache, v32, v33);
        objc_msgSend_removeCachedContactForKey_(v38, v39, v37);

        ++v36;
      }

      while (v34 != v36);
      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v32, &v55, v60, 16);
    }

    while (v34);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v40 = v9;
  v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, &v51, v59, 16);
  if (v44)
  {
    v45 = *v52;
    do
    {
      v46 = 0;
      do
      {
        if (*v52 != v45)
        {
          objc_enumerationMutation(v40);
        }

        v47 = *(*(&v51 + 1) + 8 * v46);
        v48 = objc_msgSend_sharedInstance(IMDContactCache, v42, v43, v51);
        objc_msgSend_cacheContact_forKey_(v48, v49, v7, v47);

        ++v46;
      }

      while (v44 != v46);
      v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v42, &v51, v59, 16);
    }

    while (v44);
  }

  if (v40)
  {
    IMDCoreSpotlightReIndexForHandles(v40, 1008);
  }

  v50 = *MEMORY[0x1E69E9840];
}

- (void)visitDeleteContactEvent:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "IMDContactChangeHandler: Handling a Delete Contact change history event", &v26, 2u);
    }
  }

  v7 = objc_msgSend_contactIdentifier(v3, v4, v5);
  v10 = objc_msgSend_sharedInstance(IMDContactCache, v8, v9);
  v12 = objc_msgSend__handlesMatchingContactIdentifier_(v10, v11, v7);

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v26 = 138412290;
      v27 = v12;
      _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "IMDContactChangeHandler: Removing entries from contact cache for handle IDs: %@", &v26, 0xCu);
    }
  }

  v16 = objc_msgSend_sharedInstance(IMDContactCache, v13, v14);
  v19 = objc_msgSend_fullNameCache(v16, v17, v18);
  objc_msgSend_removeObjectForKey_(v19, v20, v7);

  v23 = objc_msgSend_sharedInstance(IMDContactCache, v21, v22);
  objc_msgSend_removeCachedContactsForKeys_(v23, v24, v12);

  if (v12)
  {
    IMDCoreSpotlightReIndexForHandles(v12, 1015);
  }

  v25 = *MEMORY[0x1E69E9840];
}

@end