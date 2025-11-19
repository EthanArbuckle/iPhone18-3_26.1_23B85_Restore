@interface IMHandleRegistrar
+ (id)sharedInstance;
- (IMHandleRegistrar)init;
- (id)CNIDToHandlesMap;
- (id)IDToHandlesMap;
- (id)_accountSiblingsForHandle:(id)a3;
- (id)_chatSiblingsForHandle:(id)a3;
- (id)_existingAccountSiblingsForHandle:(id)a3;
- (id)_existingChatSiblingsForHandle:(id)a3;
- (id)allIMHandles;
- (id)getIDsForAllIMHandles;
- (id)getIDsForFinalBatch;
- (id)getIMHandlesForID:(id)a3;
- (id)handlesForCNIdentifier:(id)a3;
- (id)siblingsForIMHandle:(id)a3;
- (void)_addIMHandleToIDToHandlesMap:(id)a3;
- (void)_addressBookChanged;
- (void)_buildSiblingsForIMHandle:(id)a3;
- (void)_clearSiblingsCacheForIMHandle:(id)a3 rebuildAfter:(BOOL)a4;
- (void)_dumpOutAllIMHandles;
- (void)_dumpOutAllIMHandlesForAccount:(id)a3;
- (void)_emptySiblingCacheForIMHandleGUID:(id)a3;
- (void)_handleAddContactChangeHistoryEvent:(id)a3;
- (void)_handleDeleteContactChangeHistoryEvent:(id)a3;
- (void)_handleDropEverythingChangeHistoryEvent;
- (void)_handleNicknameDidChangeNotification:(id)a3;
- (void)_handleUpdateContactChangeHistoryEvent:(id)a3;
- (void)_postContactChangeHistoryEventClientNotifications;
- (void)_removeIMHandleToIDToHandlesMap:(id)a3;
- (void)addHandleToCNIDMap:(id)a3 CNContact:(id)a4;
- (void)clearCNIDToHandlesMap;
- (void)processContactChangeHistoryEventWithHandleIDs:(id)a3 andCNContact:(id)a4;
- (void)registerIMHandle:(id)a3;
- (void)removeHandleFromCNIDMap:(id)a3 withCNID:(id)a4;
- (void)unregisterIMHandle:(id)a3;
@end

@implementation IMHandleRegistrar

+ (id)sharedInstance
{
  if (qword_1ED767818 != -1)
  {
    sub_1A824DD54();
  }

  if (qword_1ED767928 != -1)
  {
    sub_1A824DD68();
  }

  if (qword_1ED767820 != -1)
  {
    sub_1A824DD38();
  }

  v2 = qword_1ED7678C8;

  return v2;
}

- (IMHandleRegistrar)init
{
  v16.receiver = self;
  v16.super_class = IMHandleRegistrar;
  v2 = [(IMHandleRegistrar *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    siblingsMap = v2->_siblingsMap;
    v2->_siblingsMap = v3;

    v7 = objc_msgSend_weakObjectsHashTable(MEMORY[0x1E696AC70], v5, v6);
    allIMHandles = v2->_allIMHandles;
    v2->_allIMHandles = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    CNIDToHandlesMap = v2->_CNIDToHandlesMap;
    v2->_CNIDToHandlesMap = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    IDToHandlesMap = v2->_IDToHandlesMap;
    v2->_IDToHandlesMap = v11;

    v13 = objc_alloc_init(MEMORY[0x1E69A7F40]);
    businessNameManager = v2->_businessNameManager;
    v2->_businessNameManager = v13;
  }

  return v2;
}

- (id)getIDsForAllIMHandles
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = objc_msgSend_allIMHandles(self, v4, v5, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v26, v30, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = objc_msgSend_ID(v14, v9, v10);
        v18 = objc_msgSend_length(v15, v16, v17);

        if (v18)
        {
          v19 = objc_msgSend_ID(v14, v9, v10);
          objc_msgSend_addObject_(v3, v20, v19);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v26, v30, 16);
    }

    while (v11);
  }

  v23 = objc_msgSend_allObjects(v3, v21, v22);

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (id)allIMHandles
{
  v2 = self;
  objc_sync_enter(v2);
  v5 = objc_msgSend_allObjects(v2->_allIMHandles, v3, v4);
  objc_sync_exit(v2);

  return v5;
}

- (void)_handleDropEverythingChangeHistoryEvent
{
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Handling drop everything ContactStore change history event", v20, 2u);
    }
  }

  v5 = objc_msgSend_sharedInstance(IMHandleRegistrar, v2, v3);
  objc_msgSend__addressBookChanged(v5, v6, v7);

  v10 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v8, v9);
  objc_msgSend_postNotificationName_object_(v10, v11, *MEMORY[0x1E69A6830], 0);

  v14 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v12, v13);
  objc_msgSend_postNotificationName_object_(v14, v15, @"__kIMHandleRegistrarAddressBookChangedNotification", 0);

  v18 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v16, v17);
  objc_msgSend_postNotificationName_object_(v18, v19, *MEMORY[0x1E69A6828], 0);
}

- (void)_handleDeleteContactChangeHistoryEvent:(id)a3
{
  v72 = *MEMORY[0x1E69E9840];
  v54 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Received a DeleteContactChangeHistoryEvent", buf, 2u);
    }
  }

  v6 = objc_msgSend_userInfo(v54, v3, v4);
  v53 = v6;
  if (v6)
  {
    v8 = objc_msgSend_objectForKey_(v6, v7, *MEMORY[0x1E69A6A88]);
    v11 = objc_msgSend_sharedInstance(IMHandleRegistrar, v9, v10);
    v52 = objc_msgSend_handlesForCNIdentifier_(v11, v12, v8);

    if (objc_msgSend_count(v52, v13, v14))
    {
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      obj = v52;
      v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v64, v71, 16);
      if (v58)
      {
        v56 = *v65;
        do
        {
          for (i = 0; i != v58; ++i)
          {
            if (*v65 != v56)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v64 + 1) + 8 * i);
            v20 = objc_msgSend_sharedInstance(IMHandleRegistrar, v16, v17, v52, v53);
            objc_msgSend_removeHandleFromCNIDMap_withCNID_(v20, v21, v19, v8);

            v59 = objc_msgSend_ID(v19, v22, v23);
            v26 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7FD0], v24, v25);
            objc_msgSend_removeContactWithID_(v26, v27, v59);

            objc_msgSend_updateCNContact_(v19, v28, 0);
            v30 = objc_msgSend_getIMHandlesForID_(self, v29, v59);
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v60, v70, 16);
            if (v34)
            {
              v35 = *v61;
              do
              {
                for (j = 0; j != v34; ++j)
                {
                  if (*v61 != v35)
                  {
                    objc_enumerationMutation(v30);
                  }

                  v37 = *(*(&v60 + 1) + 8 * j);
                  if (v37 != v19)
                  {
                    v38 = objc_msgSend_sharedInstance(IMHandleRegistrar, v32, v33);
                    objc_msgSend_removeHandleFromCNIDMap_withCNID_(v38, v39, v37, v8);

                    objc_msgSend_updateCNContact_(v37, v40, 0);
                  }
                }

                v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v32, &v60, v70, 16);
              }

              while (v34);
            }
          }

          v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v64, v71, 16);
        }

        while (v58);
      }

      v43 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v41, v42);
      objc_msgSend_postNotificationName_object_(v43, v44, *MEMORY[0x1E69A6830], 0);

      v47 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v45, v46);
      objc_msgSend_postNotificationName_object_(v47, v48, *MEMORY[0x1E69A6828], 0);
    }

    else if (IMOSLoggingEnabled())
    {
      v50 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v69 = v8;
        _os_log_impl(&dword_1A823F000, v50, OS_LOG_TYPE_INFO, "No handles with CNID %@ found, no action to take.", buf, 0xCu);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v49 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v49, OS_LOG_TYPE_INFO, "No action to take in _handleAddContactChangeHistoryEvent", buf, 2u);
    }
  }

  v51 = *MEMORY[0x1E69E9840];
}

- (void)_handleAddContactChangeHistoryEvent:(id)a3
{
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Received a AddContactChangeHistoryEvent", buf, 2u);
    }
  }

  v7 = objc_msgSend_userInfo(v3, v4, v5);
  v9 = v7;
  if (v7)
  {
    v10 = objc_msgSend_objectForKey_(v7, v8, *MEMORY[0x1E69A6AA8]);
    v12 = objc_msgSend_objectForKey_(v9, v11, *MEMORY[0x1E69A6A90]);
    v15 = objc_msgSend_sharedInstance(IMHandleRegistrar, v13, v14);
    objc_msgSend_processContactChangeHistoryEventWithHandleIDs_andCNContact_(v15, v16, v10, v12);
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_8;
    }

    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "No action to take in _handleAddContactChangeHistoryEvent", v17, 2u);
    }
  }

LABEL_8:
}

- (void)_handleUpdateContactChangeHistoryEvent:(id)a3
{
  v3 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Received a UpdateContactChangeHistoryEvent", buf, 2u);
    }
  }

  v7 = objc_msgSend_userInfo(v3, v4, v5);
  v9 = v7;
  if (v7)
  {
    v10 = objc_msgSend_objectForKey_(v7, v8, *MEMORY[0x1E69A6AA8]);
    v12 = objc_msgSend_objectForKey_(v9, v11, *MEMORY[0x1E69A6A90]);
    v15 = objc_msgSend_sharedInstance(IMHandleRegistrar, v13, v14);
    objc_msgSend_processContactChangeHistoryEventWithHandleIDs_andCNContact_(v15, v16, v10, v12);
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_8;
    }

    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "No action to take in _handleAddContactChangeHistoryEvent", v17, 2u);
    }
  }

LABEL_8:
}

- (void)processContactChangeHistoryEventWithHandleIDs:(id)a3 andCNContact:(id)a4
{
  v81 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v9 = objc_msgSend_count(v5, v7, v8);
  v68 = v6;
  v65 = v5;
  if (v6 && v9)
  {
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v10 = v5;
    v12 = 0;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v73, v80, 16, v5);
    if (v13)
    {
      v14 = *v74;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v74 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v73 + 1) + 8 * i);
          v17 = IMCleanupPhoneNumber();
          v20 = objc_msgSend_sharedInstance(IMHandleRegistrar, v18, v19);
          v22 = objc_msgSend_getIMHandlesForID_(v20, v21, v17);

          if (objc_msgSend_count(v22, v23, v24))
          {
            if (!v12)
            {
              v26 = objc_alloc(MEMORY[0x1E695DF70]);
              v12 = objc_msgSend_initWithCapacity_(v26, v27, 1);
            }

            objc_msgSend_addObjectsFromArray_(v12, v25, v22);
          }
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v28, &v73, v80, 16);
      }

      while (v13);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "Cannot process Contact change history event!. No handles or invalid CNContact recevied.", buf, 2u);
      }
    }

    v12 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v32 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v79 = v12;
      _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_INFO, "Updating handles with IDs %@ with a new Contact", buf, 0xCu);
    }
  }

  if (v6)
  {
    v33 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7FD0], v30, v31);
    v36 = objc_msgSend_identifier(v6, v34, v35);
    v38 = objc_msgSend_handleIDsForCNID_(v33, v37, v36);
  }

  else
  {
    v38 = 0;
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = v12;
  v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v39, &v69, v77, 16);
  if (v42)
  {
    v43 = *v70;
    v44 = MEMORY[0x1E695E0F0];
    do
    {
      for (j = 0; j != v42; ++j)
      {
        if (*v70 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v46 = *(*(&v69 + 1) + 8 * j);
        v47 = objc_msgSend_sharedInstance(IMHandleRegistrar, v40, v41, v65);
        v49 = objc_msgSend_cnContactWithKeys_(v46, v48, v44);
        v52 = objc_msgSend_identifier(v49, v50, v51);
        objc_msgSend_removeHandleFromCNIDMap_withCNID_(v47, v53, v46, v52);

        v54 = MEMORY[0x1E69A7FD0];
        v57 = objc_msgSend_ID(v46, v55, v56);
        v59 = objc_msgSend_validateAndCleanupID_(v54, v58, v57);
        LODWORD(v49) = objc_msgSend_containsObject_(v38, v60, v59);

        if (v49)
        {
          objc_msgSend_updateCNContact_(v46, v61, v68);
        }

        else
        {
          objc_msgSend_updateCNContact_(v46, v61, 0);
        }
      }

      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v40, &v69, v77, 16);
    }

    while (v42);
  }

  objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x1E69E58C0], v62, self, sel__postContactChangeHistoryEventClientNotifications, 0);
  objc_msgSend_performSelector_withObject_afterDelay_(self, v63, sel__postContactChangeHistoryEventClientNotifications, 0, 0.0);

  v64 = *MEMORY[0x1E69E9840];
}

- (void)_postContactChangeHistoryEventClientNotifications
{
  v3 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2);
  objc_msgSend_postNotificationName_object_(v3, v4, *MEMORY[0x1E69A6830], 0);

  v8 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v5, v6);
  objc_msgSend_postNotificationName_object_(v8, v7, *MEMORY[0x1E69A6828], 0);
}

- (void)_addressBookChanged
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69A6170]);
  objc_msgSend_startTimingForKey_(v3, v4, @"_addressBookChanged");
  v7 = objc_msgSend_allIMHandles(self, v5, v6);
  v10 = objc_msgSend_copy(v7, v8, v9);

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = v10;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v29, v33, 16);
  if (v13)
  {
    v16 = v13;
    v17 = *v30;
    do
    {
      v18 = 0;
      do
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v29 + 1) + 8 * v18);
        v20 = objc_msgSend_sharedInstance(IMHandleRegistrar, v14, v15, v29);
        objc_msgSend_clearSiblingCacheForIMHandle_(v20, v21, v19);

        objc_msgSend_updateCNContact_(v19, v22, 0);
        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v29, v33, 16);
    }

    while (v16);
  }

  v25 = objc_msgSend_sharedInstance(IMHandleRegistrar, v23, v24);
  objc_msgSend_clearCNIDToHandlesMap(v25, v26, v27);

  v28 = *MEMORY[0x1E69E9840];
}

- (void)_handleNicknameDidChangeNotification:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v31 = a3;
  v6 = objc_msgSend_userInfo(v31, v4, v5);
  v32 = objc_msgSend_objectForKeyedSubscript_(v6, v7, @"__kIMNicknameDidChangeNotificationHandleIDsWithUpdatedNamesUserInfoKey");

  objc_opt_class();
  v8 = v32;
  if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_count(v32, v9, v10))
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v44 = objc_msgSend_count(v32, v12, v13);
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Resetting cached names for %ld handles due to nickname change notification", buf, 0xCu);
      }

      v8 = v32;
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v14 = v8;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v37, v42, 16);
    if (v16)
    {
      v17 = *v38;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v37 + 1) + 8 * i);
          v20 = objc_autoreleasePoolPush();
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v22 = objc_msgSend_getIMHandlesForID_(self, v21, v19);
          v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v33, v41, 16);
          if (v26)
          {
            v27 = *v34;
            do
            {
              for (j = 0; j != v26; ++j)
              {
                if (*v34 != v27)
                {
                  objc_enumerationMutation(v22);
                }

                objc_msgSend_resetCachedName(*(*(&v33 + 1) + 8 * j), v24, v25);
              }

              v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v24, &v33, v41, 16);
            }

            while (v26);
          }

          objc_autoreleasePoolPop(v20);
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v29, &v37, v42, 16);
      }

      while (v16);
    }

    v8 = v32;
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)_emptySiblingCacheForIMHandleGUID:(id)a3
{
  if (a3)
  {
    v3 = objc_msgSend_objectForKey_(self->_siblingsMap, a2, a3);
    if (v3)
    {
      v6 = v3;
      v3 = objc_msgSend_count(v3, v3, v4);
      if (v3)
      {
        v3 = objc_msgSend_removeAllObjects(v6, v6, v5);
      }
    }

    MEMORY[0x1EEE66BB8](v3);
  }
}

- (void)_buildSiblingsForIMHandle:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_guid(v4, v5, v6);
    objc_msgSend__emptySiblingCacheForIMHandleGUID_(self, v9, v8);

    v12 = objc_msgSend_guid(v7, v10, v11);
    v15 = objc_msgSend_objectForKey_(self->_siblingsMap, v13, v12);
    if (!v15)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      objc_msgSend_setObject_forKey_(self->_siblingsMap, v16, v15, v12);
    }

    objc_msgSend_addObject_(v15, v14, v7);
    v18 = objc_msgSend_cnContactWithKeys_(v7, v17, MEMORY[0x1E695E0F0]);
    v21 = objc_msgSend_identifier(v18, v19, v20);

    v24 = objc_msgSend_sharedInstance(IMHandleRegistrar, v22, v23);
    v26 = objc_msgSend_handlesForCNIdentifier_(v24, v25, v21);
    v29 = objc_msgSend_allObjects(v26, v27, v28);

    if (objc_msgSend_count(v29, v30, v31))
    {
      v46 = v12;
      objc_msgSend_addObjectsFromArray_(v15, v32, v29);
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v33 = v29;
      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v47, v51, 16);
      if (v35)
      {
        v38 = v35;
        v39 = *v48;
        do
        {
          v40 = 0;
          do
          {
            if (*v48 != v39)
            {
              objc_enumerationMutation(v33);
            }

            if (*(*(&v47 + 1) + 8 * v40) != v7)
            {
              v41 = objc_msgSend_guid(v7, v36, v37);
              if (objc_msgSend_length(v41, v42, v43))
              {
                objc_msgSend_setObject_forKey_(self->_siblingsMap, v44, v15, v41);
              }
            }

            ++v40;
          }

          while (v38 != v40);
          v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v36, &v47, v51, 16);
        }

        while (v38);
      }

      v12 = v46;
    }
  }

  v45 = *MEMORY[0x1E69E9840];
}

- (void)_clearSiblingsCacheForIMHandle:(id)a3 rebuildAfter:(BOOL)a4
{
  v4 = a4;
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v9 = objc_msgSend_guid(v6, v7, v8);
  if (objc_msgSend_length(v9, v10, v11))
  {
    v13 = objc_msgSend_objectForKey_(self->_siblingsMap, v12, v9);
    v16 = objc_msgSend_copy(v13, v14, v15);

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v17 = v16;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v32, v36, 16);
    if (v19)
    {
      v22 = v19;
      v23 = *v33;
      do
      {
        v24 = 0;
        do
        {
          if (*v33 != v23)
          {
            objc_enumerationMutation(v17);
          }

          v25 = *(*(&v32 + 1) + 8 * v24);
          if (v25 != v6)
          {
            v26 = objc_msgSend_guid(v25, v20, v21, v32);
            objc_msgSend__emptySiblingCacheForIMHandleGUID_(self, v27, v26);
          }

          ++v24;
        }

        while (v22 != v24);
        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v32, v36, 16);
      }

      while (v22);
    }

    objc_msgSend__emptySiblingCacheForIMHandleGUID_(self, v28, v9);
    if (v4)
    {
      objc_msgSend__buildSiblingsForIMHandle_(self, v29, v6);
      objc_msgSend__clearSiblingsCacheForIMHandle_rebuildAfter_(self, v30, v6, 0);
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)addHandleToCNIDMap:(id)a3 CNContact:(id)a4
{
  v28 = a3;
  v8 = a4;
  if (v28 && v8)
  {
    v9 = objc_msgSend_sharedInstance(IMHandleRegistrar, v6, v7);
    v12 = objc_msgSend_identifier(v8, v10, v11);
    v14 = objc_msgSend_handlesForCNIdentifier_(v9, v13, v12);
    v17 = objc_msgSend_mutableCopy(v14, v15, v16);

    if (self->_CNIDToHandlesMap)
    {
      if (v17)
      {
LABEL_5:
        objc_msgSend_addObject_(v17, v18, v28);

        goto LABEL_6;
      }
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CNIDToHandlesMap = self->_CNIDToHandlesMap;
      self->_CNIDToHandlesMap = Mutable;

      if (v17)
      {
        goto LABEL_5;
      }
    }

    v21 = objc_alloc(MEMORY[0x1E695DFA8]);
    v17 = objc_msgSend_initWithCapacity_(v21, v22, 1);
    v23 = self->_CNIDToHandlesMap;
    v26 = objc_msgSend_identifier(v8, v24, v25);
    objc_msgSend_setObject_forKey_(v23, v27, v17, v26);

    goto LABEL_5;
  }

LABEL_6:
}

- (id)handlesForCNIdentifier:(id)a3
{
  v4 = a3;
  if (objc_msgSend_length(v4, v5, v6))
  {
    v8 = objc_msgSend_objectForKey_(self->_CNIDToHandlesMap, v7, v4);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)removeHandleFromCNIDMap:(id)a3 withCNID:(id)a4
{
  v24 = a3;
  v8 = a4;
  if (v24 && objc_msgSend_length(v8, v6, v7))
  {
    if (!self->_CNIDToHandlesMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CNIDToHandlesMap = self->_CNIDToHandlesMap;
      self->_CNIDToHandlesMap = Mutable;
    }

    v13 = objc_msgSend_sharedInstance(IMHandleRegistrar, v9, v10);
    v15 = objc_msgSend_handlesForCNIdentifier_(v13, v14, v8);
    v18 = objc_msgSend_mutableCopy(v15, v16, v17);

    if (objc_msgSend_count(v18, v19, v20))
    {
      objc_msgSend_removeObject_(v18, v21, v24);
    }

    if (!objc_msgSend_count(v18, v21, v22))
    {
      objc_msgSend_removeObjectForKey_(self->_CNIDToHandlesMap, v23, v8);
    }
  }
}

- (void)clearCNIDToHandlesMap
{
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Clearing the CNIDToHandlesMap", v6, 2u);
    }
  }

  objc_msgSend_removeAllObjects(self->_CNIDToHandlesMap, v3, v4);
}

- (id)CNIDToHandlesMap
{
  v3 = objc_msgSend_copy(self->_CNIDToHandlesMap, a2, v2);

  return v3;
}

- (void)registerIMHandle:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  objc_msgSend_addObject_(v5->_allIMHandles, v6, v4);
  siblingsMap = v5->_siblingsMap;
  v10 = objc_msgSend_guid(v4, v8, v9);
  v12 = objc_msgSend_objectForKey_(siblingsMap, v11, v10);

  if (!v12)
  {
    v15 = objc_msgSend_guid(v4, v13, v14);
    objc_msgSend__emptySiblingCacheForIMHandleGUID_(v5, v16, v15);
  }

  objc_msgSend__addIMHandleToIDToHandlesMap_(v5, v13, v4);
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v20 = objc_msgSend_ID(v4, v18, v19);
      v23 = objc_msgSend_count(v5->_allIMHandles, v21, v22);
      v25 = 138412546;
      v26 = v20;
      v27 = 1024;
      v28 = v23;
      _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_DEBUG, "** Added: %@   (%d now exist)", &v25, 0x12u);
    }
  }

  objc_sync_exit(v5);

  v24 = *MEMORY[0x1E69E9840];
}

- (void)unregisterIMHandle:(id)a3
{
  v14 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_guid(v14, v5, v6);
  if (objc_msgSend_length(v7, v8, v9))
  {
    objc_msgSend_removeObject_(v4->_allIMHandles, v10, v14);
    objc_msgSend__clearSiblingsCacheForIMHandle_rebuildAfter_(v4, v11, v14, 0);
    objc_msgSend_removeObjectForKey_(v4->_siblingsMap, v12, v7);
    objc_msgSend__removeIMHandleToIDToHandlesMap_(v4, v13, v14);
  }

  objc_sync_exit(v4);
}

- (id)siblingsForIMHandle:(id)a3
{
  v4 = a3;
  siblingsMap = self->_siblingsMap;
  v8 = objc_msgSend_guid(v4, v6, v7);
  v10 = objc_msgSend_objectForKey_(siblingsMap, v9, v8);

  if (!objc_msgSend_count(v10, v11, v12))
  {
    objc_msgSend__buildSiblingsForIMHandle_(self, v13, v4);
    v15 = self->_siblingsMap;
    v18 = objc_msgSend_guid(v4, v16, v17);
    v20 = objc_msgSend_objectForKey_(v15, v19, v18);

    v10 = v20;
  }

  v21 = objc_msgSend_copy(v10, v13, v14);

  return v21;
}

- (void)_addIMHandleToIDToHandlesMap:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = v4;
  if (v4 && (objc_msgSend_ID(v4, v5, v6), v8 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend_length(v8, v9, v10), v8, v11))
  {
    IDToHandlesMap = self->_IDToHandlesMap;
    v15 = objc_msgSend_ID(v7, v12, v13);
    v18 = objc_msgSend_im_stripCategoryLabel(v15, v16, v17);
    v20 = objc_msgSend_objectForKey_(IDToHandlesMap, v19, v18);

    if (!v20)
    {
      v22 = objc_alloc(MEMORY[0x1E695DFA8]);
      v20 = objc_msgSend_initWithCapacity_(v22, v23, 1);
      v24 = self->_IDToHandlesMap;
      v27 = objc_msgSend_ID(v7, v25, v26);
      v30 = objc_msgSend_im_stripCategoryLabel(v27, v28, v29);
      objc_msgSend_setObject_forKey_(v24, v31, v20, v30);
    }

    if ((objc_msgSend_containsObject_(v20, v21, v7) & 1) == 0)
    {
      objc_msgSend_addObject_(v20, v32, v7);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v33 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v35 = 138412290;
      v36 = v7;
      _os_log_impl(&dword_1A823F000, v33, OS_LOG_TYPE_INFO, "Not adding %@ to IDToHandlesMap", &v35, 0xCu);
    }
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (void)_removeIMHandleToIDToHandlesMap:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = v4;
  if (v4 && (objc_msgSend_ID(v4, v5, v6), v8 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend_length(v8, v9, v10), v8, v11))
  {
    IDToHandlesMap = self->_IDToHandlesMap;
    v15 = objc_msgSend_ID(v7, v12, v13);
    v18 = objc_msgSend_im_stripCategoryLabel(v15, v16, v17);
    v20 = objc_msgSend_objectForKey_(IDToHandlesMap, v19, v18);

    if (objc_msgSend_containsObject_(v20, v21, v7))
    {
      objc_msgSend_removeObject_(v20, v22, v7);
    }

    if (!objc_msgSend_count(v20, v22, v23))
    {
      v26 = self->_IDToHandlesMap;
      v27 = objc_msgSend_ID(v7, v24, v25);
      v30 = objc_msgSend_im_stripCategoryLabel(v27, v28, v29);
      objc_msgSend_removeObjectForKey_(v26, v31, v30);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v32 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v34 = 138412290;
      v35 = v7;
      _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_INFO, "Not removing %@ from IDToHandlesMap", &v34, 0xCu);
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (id)IDToHandlesMap
{
  v3 = objc_msgSend_copy(self->_IDToHandlesMap, a2, v2);

  return v3;
}

- (id)getIMHandlesForID:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend_length(v4, v5, v6))
  {
    v8 = objc_msgSend_objectForKey_(self->_IDToHandlesMap, v7, v4);
    v11 = objc_msgSend_allObjects(v8, v9, v10);
    v14 = objc_msgSend_copy(v11, v12, v13);

    v17 = objc_msgSend_dialingForCurrentLocale(MEMORY[0x1E69A7FD0], v15, v16);
    if (objc_msgSend_count(v14, v18, v19) || (objc_msgSend_hasPrefix_(v4, v20, v17) & 1) != 0 || !MEMORY[0x1AC56C3C0](v4))
    {
      v22 = v4;
      v36 = objc_msgSend_copy(v14, v20, v21);
    }

    else
    {
      v22 = IMStripFormattingFromAddress();

      v24 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v23, @"%@%@", v17, v22);
      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v41 = v24;
          _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_INFO, "Re-attempting to lookup cache with ID & ITU: %@", buf, 0xCu);
        }
      }

      v27 = objc_msgSend_objectForKey_(self->_IDToHandlesMap, v25, v24);
      v30 = objc_msgSend_allObjects(v27, v28, v29);
      v33 = objc_msgSend_copy(v30, v31, v32);

      v14 = v33;
      v36 = objc_msgSend_copy(v33, v34, v35);
    }

    v37 = v36;

    v4 = v22;
  }

  else
  {
    v37 = 0;
  }

  v38 = *MEMORY[0x1E69E9840];

  return v37;
}

- (id)getIDsForFinalBatch
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = objc_msgSend_allIMHandles(self, v4, v5, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v32, v36, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v33;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        v15 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7FD0], v9, v10);
        v18 = objc_msgSend_ID(v14, v16, v17);
        isContactWithIDAlreadyFetched = objc_msgSend_isContactWithIDAlreadyFetched_(v15, v19, v18);

        if ((isContactWithIDAlreadyFetched & 1) == 0)
        {
          v21 = objc_msgSend_ID(v14, v9, v10);
          v24 = objc_msgSend_length(v21, v22, v23);

          if (v24)
          {
            v25 = objc_msgSend_ID(v14, v9, v10);
            objc_msgSend_addObject_(v3, v26, v25);
          }
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v32, v36, 16);
    }

    while (v11);
  }

  v29 = objc_msgSend_allObjects(v3, v27, v28);

  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

- (void)_dumpOutAllIMHandles
{
  v8 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      allIMHandles = self->_allIMHandles;
      v6 = 138412290;
      v7 = allIMHandles;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "All handles: %@", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_dumpOutAllIMHandlesForAccount:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!_IMWillLog())
  {
    goto LABEL_24;
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = v4;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "All handles for account: %@", buf, 0xCu);
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = self->_allIMHandles;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v22, v26, 16);
  if (!v10)
  {

LABEL_20:
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "    Hurray, no handles!", buf, 2u);
      }
    }

    goto LABEL_24;
  }

  v12 = 0;
  v13 = *v23;
  *&v11 = 138412290;
  v21 = v11;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v23 != v13)
      {
        objc_enumerationMutation(v6);
      }

      v15 = *(*(&v22 + 1) + 8 * i);
      v16 = objc_msgSend_account(v15, v8, v9, v21, v22);
      v17 = v16 == v4;

      if (v17)
      {
        v18 = IMHandleLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v21;
          v28 = v15;
          _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_DEFAULT, "     %@", buf, 0xCu);
        }

        v12 = 1;
      }
    }

    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v22, v26, 16);
  }

  while (v10);

  if ((v12 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_24:

  v20 = *MEMORY[0x1E69E9840];
}

- (id)_accountSiblingsForHandle:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v6 = objc_msgSend_guid(v3, v4, v5);
  if (v6)
  {
    v44 = v6;
    v45 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    objc_msgSend_addObject_(v45, v7, v3);
    v10 = objc_msgSend_countryCode(v3, v8, v9);
    v13 = objc_msgSend_originalID(v3, v11, v12);
    v16 = objc_msgSend_account(v3, v14, v15);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v19 = objc_msgSend_sharedInstance(IMAccountController, v17, v18);
    v22 = objc_msgSend_service(v16, v20, v21);
    v24 = objc_msgSend_accountsForService_(v19, v23, v22);

    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v46, v50, 16);
    if (v26)
    {
      v29 = v26;
      v30 = *v47;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v47 != v30)
          {
            objc_enumerationMutation(v24);
          }

          v32 = *(*(&v46 + 1) + 8 * i);
          if (v32 != v16)
          {
            v33 = v3;
            v34 = objc_msgSend_ID(v3, v27, v28);
            v36 = objc_msgSend__imHandleWithID_alreadyCanonical_originalID_countryCode_(v32, v35, v34, 1, v13, v10);

            if (v36 && (objc_msgSend_containsObject_(v45, v37, v36) & 1) == 0)
            {
              objc_msgSend_addObject_(v45, v38, v36);
            }

            v3 = v33;
          }
        }

        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v27, &v46, v50, 16);
      }

      while (v29);
    }

    v41 = objc_msgSend_allObjects(v45, v39, v40);

    v6 = v44;
  }

  else
  {
    v41 = 0;
  }

  v42 = *MEMORY[0x1E69E9840];

  return v41;
}

- (id)_existingAccountSiblingsForHandle:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v6 = objc_msgSend_guid(v3, v4, v5);
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    objc_msgSend_addObject_(v7, v8, v3);
    v11 = objc_msgSend_account(v3, v9, v10);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v14 = objc_msgSend_sharedInstance(IMAccountController, v12, v13, 0);
    v17 = objc_msgSend_service(v11, v15, v16);
    v19 = objc_msgSend_accountsForService_(v14, v18, v17);

    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v37, v41, 16);
    if (v21)
    {
      v24 = v21;
      v25 = *v38;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v38 != v25)
          {
            objc_enumerationMutation(v19);
          }

          v27 = *(*(&v37 + 1) + 8 * i);
          if (v27 != v11)
          {
            v28 = objc_msgSend_ID(v3, v22, v23);
            v30 = objc_msgSend_existingIMHandleWithID_alreadyCanonical_(v27, v29, v28, 1);

            if (v30)
            {
              objc_msgSend_addObject_(v7, v31, v30);
            }
          }
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v37, v41, 16);
      }

      while (v24);
    }

    v34 = objc_msgSend_allObjects(v7, v32, v33);
  }

  else
  {
    v34 = 0;
  }

  v35 = *MEMORY[0x1E69E9840];

  return v34;
}

- (id)_chatSiblingsForHandle:(id)a3
{
  v72 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v54 = objc_msgSend_guid(v3, v4, v5);
  if (objc_msgSend_length(v54, v6, v7))
  {
    v59 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    objc_msgSend_addObject_(v59, v8, v3);
    v11 = objc_msgSend_account(v3, v9, v10);
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v71 = v3;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_DEBUG, "Handle %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v71 = v11;
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_DEBUG, "Handle account %@", buf, 0xCu);
      }
    }

    v16 = objc_msgSend_countryCode(v3, v13, v14);
    v19 = objc_msgSend_originalID(v3, v17, v18);
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v22 = objc_msgSend_service(v3, v20, v21);
    obj = objc_msgSend_siblingServices(v22, v23, v24);

    v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v64, v69, 16);
    if (v57)
    {
      v56 = *v65;
      do
      {
        v28 = 0;
        do
        {
          if (*v65 != v56)
          {
            v29 = v28;
            objc_enumerationMutation(obj);
            v28 = v29;
          }

          v58 = v28;
          v30 = *(*(&v64 + 1) + 8 * v28);
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v31 = objc_msgSend_sharedInstance(IMAccountController, v26, v27);
          v33 = objc_msgSend_accountsForService_(v31, v32, v30);

          v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v60, v68, 16);
          if (v37)
          {
            v38 = *v61;
            do
            {
              for (i = 0; i != v37; ++i)
              {
                if (*v61 != v38)
                {
                  objc_enumerationMutation(v33);
                }

                v40 = *(*(&v60 + 1) + 8 * i);
                if (v40 != v11)
                {
                  v41 = objc_msgSend_ID(v3, v35, v36);
                  v43 = objc_msgSend__imHandleWithID_alreadyCanonical_originalID_countryCode_(v40, v42, v41, 1, v19, v16);

                  if (v43)
                  {
                    v45 = v43 == v3;
                  }

                  else
                  {
                    v45 = 1;
                  }

                  if (!v45)
                  {
                    objc_msgSend__setOriginalID_countryCode_updateSiblings_(v43, v44, v19, v16, 0);
                    objc_msgSend_addObject_(v59, v46, v43);
                  }
                }
              }

              v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v35, &v60, v68, 16);
            }

            while (v37);
          }

          v28 = v58 + 1;
        }

        while (v58 + 1 != v57);
        v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, &v64, v69, 16);
      }

      while (v57);
    }

    if (IMOSLoggingEnabled())
    {
      v49 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v71 = v59;
        _os_log_impl(&dword_1A823F000, v49, OS_LOG_TYPE_DEBUG, "Account sibling: %@", buf, 0xCu);
      }
    }

    v50 = objc_msgSend_allObjects(v59, v47, v48);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v51 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v51, OS_LOG_TYPE_DEBUG, "No GUID, bailing...", buf, 2u);
      }
    }

    v50 = 0;
  }

  v52 = *MEMORY[0x1E69E9840];

  return v50;
}

- (id)_existingChatSiblingsForHandle:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v6 = objc_msgSend_guid(v3, v4, v5);

  if (v6)
  {
    v45 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    objc_msgSend_addObject_(v45, v7, v3);
    v10 = objc_msgSend_account(v3, v8, v9);
    v44 = objc_msgSend_service(v10, v11, v12);
    v15 = objc_msgSend_countryCode(v3, v13, v14);
    v18 = objc_msgSend_originalID(v3, v16, v17);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v21 = objc_msgSend_sharedInstance(IMAccountController, v19, v20);
    v23 = objc_msgSend_accountsForService_(v21, v22, 0);

    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v46, v50, 16);
    if (v25)
    {
      v27 = v25;
      v28 = *v47;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v47 != v28)
          {
            objc_enumerationMutation(v23);
          }

          v30 = *(*(&v46 + 1) + 8 * i);
          if (v30 != v10)
          {
            if ((objc_msgSend_hasCapability_(*(*(&v46 + 1) + 8 * i), v26, 1024) & 1) != 0 || (objc_msgSend_hasCapability_(v30, v26, 8) & 1) != 0 || (objc_msgSend_service(v30, v26, v31), v32 = objc_claimAutoreleasedReturnValue(), v32, v32 == v44))
            {
              v33 = objc_msgSend_ID(v3, v26, v31);
              v35 = objc_msgSend_existingIMHandleWithID_alreadyCanonical_(v30, v34, v33, 1);

              if (v35)
              {
                v37 = v35 == v3;
              }

              else
              {
                v37 = 1;
              }

              if (!v37)
              {
                objc_msgSend__setOriginalID_countryCode_updateSiblings_(v35, v36, v18, v15, 0);
                objc_msgSend_addObject_(v45, v38, v35);
              }
            }
          }
        }

        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v46, v50, 16);
      }

      while (v27);
    }

    v41 = objc_msgSend_allObjects(v45, v39, v40);
  }

  else
  {
    v41 = 0;
  }

  v42 = *MEMORY[0x1E69E9840];

  return v41;
}

@end