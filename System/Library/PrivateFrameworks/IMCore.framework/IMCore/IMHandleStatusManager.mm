@interface IMHandleStatusManager
+ (id)sharedInstance;
- (IMHandleStatusManager)init;
- (id)acquireObservationAssertionForHandle:(id)handle;
- (void)adjustObservingStatusForHandles;
- (void)beginObservingAvailabilityForHandle:(id)handle;
- (void)beginObservingOffGridStateForHandle:(id)handle;
- (void)beginObservingStatusUpdatesForHandle:(id)handle;
- (void)endObservingAvailabilityForHandle:(id)handle;
- (void)endObservingOffGridStateForHandle:(id)handle;
- (void)endObservingStatusUpdatesForHandle:(id)handle;
- (void)invalidateObserver:(id)observer;
@end

@implementation IMHandleStatusManager

- (IMHandleStatusManager)init
{
  v12.receiver = self;
  v12.super_class = IMHandleStatusManager;
  v4 = [(IMHandleStatusManager *)&v12 init];
  if (v4)
  {
    v5 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x1E696AD18], v2, v3);
    observers = v4->_observers;
    v4->_observers = v5;

    v9 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x1E696AD18], v7, v8);
    handlesForObserver = v4->_handlesForObserver;
    v4->_handlesForObserver = v9;
  }

  return v4;
}

+ (id)sharedInstance
{
  if (qword_1ED7678A8 != -1)
  {
    sub_1A84E1E5C();
  }

  v3 = qword_1ED767868;

  return v3;
}

- (id)acquireObservationAssertionForHandle:(id)handle
{
  v41 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = objc_msgSend_ID(handleCopy, v8, v9);
      v39 = 138412290;
      v40 = v10;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Vending a new observer for handle %@", &v39, 0xCu);
    }
  }

  v11 = objc_msgSend_observers(self, v5, v6);
  v14 = objc_msgSend_ID(handleCopy, v12, v13);
  v16 = objc_msgSend_objectForKey_(v11, v15, v14);

  if (!v16)
  {
    v16 = objc_msgSend_weakObjectsHashTable(MEMORY[0x1E696AC70], v17, v18);
    v21 = objc_msgSend_observers(self, v19, v20);
    v24 = objc_msgSend_ID(handleCopy, v22, v23);
    objc_msgSend_setObject_forKey_(v21, v25, v16, v24);

    v28 = objc_msgSend_handlesForObserver(self, v26, v27);
    v31 = objc_msgSend_ID(handleCopy, v29, v30);
    objc_msgSend_setObject_forKey_(v28, v32, handleCopy, v31);
  }

  objc_msgSend_beginObservingStatusUpdatesForHandle_(self, v17, handleCopy);
  v33 = [IMHandleStatusObserverAssertion alloc];
  v35 = objc_msgSend_initWithHandle_(v33, v34, handleCopy);
  objc_msgSend_addObject_(v16, v36, v35);

  v37 = *MEMORY[0x1E69E9840];

  return v35;
}

- (void)invalidateObserver:(id)observer
{
  v40 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = objc_msgSend_handle(observerCopy, v8, v9);
      v13 = objc_msgSend_ID(v10, v11, v12);
      v36 = 138412290;
      v37 = v13;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Invalidating observer for handle %@", &v36, 0xCu);
    }
  }

  v14 = objc_msgSend_observers(self, v5, v6);
  v17 = objc_msgSend_handle(observerCopy, v15, v16);
  v20 = objc_msgSend_ID(v17, v18, v19);
  v22 = objc_msgSend_objectForKey_(v14, v21, v20);

  if (v22)
  {
    if (objc_msgSend_containsObject_(v22, v23, observerCopy))
    {
      objc_msgSend_removeObject_(v22, v23, observerCopy);
      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v28 = objc_msgSend_handle(observerCopy, v26, v27);
          v31 = objc_msgSend_ID(v28, v29, v30);
          v34 = objc_msgSend_count(v22, v32, v33);
          v36 = 138412546;
          v37 = v31;
          v38 = 2048;
          v39 = v34;
          _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Remaining observers for handle %@: %lu", &v36, 0x16u);
        }
      }
    }
  }

  objc_msgSend_adjustObservingStatusForHandles(self, v23, v24);

  v35 = *MEMORY[0x1E69E9840];
}

- (void)adjustObservingStatusForHandles
{
  v48 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Checking whether to unsubscribe handles", buf, 2u);
    }
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = objc_msgSend_observers(self, v3, v4);
  v9 = objc_msgSend_dictionaryRepresentation(v6, v7, v8);

  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v41, v47, 16);
  if (v13)
  {
    v15 = *v42;
    *&v14 = 138412290;
    v40 = v14;
    do
    {
      v16 = 0;
      do
      {
        if (*v42 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v41 + 1) + 8 * v16);
        v18 = objc_msgSend_observers(self, v11, v12, v40);
        v20 = objc_msgSend_objectForKey_(v18, v19, v17);

        if (!v20 || !objc_msgSend_count(v20, v21, v22))
        {
          if (IMOSLoggingEnabled())
          {
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = v40;
              v46 = v17;
              _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "No more observers for handle %@, ending observing status updates", buf, 0xCu);
            }
          }

          v26 = objc_msgSend_handlesForObserver(self, v23, v24);
          v28 = objc_msgSend_objectForKey_(v26, v27, v17);

          if (v28)
          {
            objc_msgSend_endObservingStatusUpdatesForHandle_(self, v29, v28);
            v32 = objc_msgSend_observers(self, v30, v31);
            objc_msgSend_removeObjectForKey_(v32, v33, v17);

            v36 = objc_msgSend_handlesForObserver(self, v34, v35);
            objc_msgSend_removeObjectForKey_(v36, v37, v17);
          }

          else if (IMOSLoggingEnabled())
          {
            v38 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              *buf = v40;
              v46 = v17;
              _os_log_impl(&dword_1A823F000, v38, OS_LOG_TYPE_INFO, "No IMHandle found for handle %@", buf, 0xCu);
            }
          }
        }

        ++v16;
      }

      while (v13 != v16);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v41, v47, 16);
    }

    while (v13);
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (void)beginObservingStatusUpdatesForHandle:(id)handle
{
  v14 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = objc_msgSend_ID(handleCopy, v7, v8);
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Status manager beginning observing for handle: %@", &v12, 0xCu);
    }
  }

  objc_msgSend_beginObservingAvailabilityForHandle_(self, v5, handleCopy);
  objc_msgSend_beginObservingOffGridStateForHandle_(self, v10, handleCopy);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)beginObservingAvailabilityForHandle:(id)handle
{
  v36 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  if (objc_msgSend_isInAppleStoreDemoMode(MEMORY[0x1E69A7EE0], v5, v6))
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Not beginnign observing availability in Apple Store Demo mode.", buf, 2u);
      }
    }
  }

  else
  {
    v10 = objc_msgSend_ID(handleCopy, v7, v8);
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v35 = v10;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Received request to begin observing availability for: %@", buf, 0xCu);
      }
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1A835775C;
    aBlock[3] = &unk_1E7813478;
    v12 = v10;
    v33 = v12;
    v13 = _Block_copy(aBlock);
    v16 = objc_msgSend_sharedInstance(IMHandleAvailabilityManager, v14, v15);
    v18 = objc_msgSend_statusSubscriptionForHandle_(v16, v17, handleCopy);

    if (v18)
    {
      v13[2](v13, v18);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v24 = objc_msgSend_ID(handleCopy, v22, v23);
          *buf = 138412290;
          v35 = v24;
          _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "Could not find cached subscription for handle: %@. Not observing availability (yet).", buf, 0xCu);
        }
      }

      v25 = objc_msgSend_sharedInstance(IMHandleAvailabilityManager, v19, v20);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = sub_1A8357A00;
      v28[3] = &unk_1E78134A0;
      v29 = handleCopy;
      selfCopy = self;
      v31 = v13;
      objc_msgSend_fetchUpdatedStatusForHandle_completion_(v25, v26, v29, v28);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)endObservingAvailabilityForHandle:(id)handle
{
  v36 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  if (objc_msgSend_isInAppleStoreDemoMode(MEMORY[0x1E69A7EE0], v5, v6))
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Not ending observing availability in Apple Store Demo mode.", buf, 2u);
      }
    }
  }

  else
  {
    v10 = objc_msgSend_ID(handleCopy, v7, v8);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1A8358024;
    aBlock[3] = &unk_1E7813478;
    v11 = v10;
    v33 = v11;
    v12 = _Block_copy(aBlock);
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v35 = v11;
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Received request to end observing availability for: %@", buf, 0xCu);
      }
    }

    v16 = objc_msgSend_sharedInstance(IMHandleAvailabilityManager, v13, v14);
    v18 = objc_msgSend_statusSubscriptionForHandle_(v16, v17, handleCopy);

    if (v18)
    {
      v12[2](v12, v18);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v24 = objc_msgSend_ID(handleCopy, v22, v23);
          *buf = 138412290;
          v35 = v24;
          _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "Could not find cached subscription for handle: %@. Not observing availability (yet).", buf, 0xCu);
        }
      }

      v25 = objc_msgSend_sharedInstance(IMHandleAvailabilityManager, v19, v20);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = sub_1A83582C4;
      v28[3] = &unk_1E78134A0;
      v29 = handleCopy;
      selfCopy = self;
      v31 = v12;
      objc_msgSend_fetchUpdatedStatusForHandle_completion_(v25, v26, v29, v28);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)beginObservingOffGridStateForHandle:(id)handle
{
  v33 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v7 = objc_msgSend_ID(handleCopy, v5, v6);
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v32 = v7;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Received request to begin observing offgrid status for: %@", buf, 0xCu);
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A835886C;
  aBlock[3] = &unk_1E7813478;
  v9 = v7;
  v30 = v9;
  v10 = _Block_copy(aBlock);
  v13 = objc_msgSend_sharedInstance(MEMORY[0x1E69A80A8], v11, v12);
  v15 = objc_msgSend_cachedStatusSubscriptionForHandle_(v13, v14, handleCopy);

  if (v15)
  {
    v10[2](v10, v15);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v21 = objc_msgSend_ID(handleCopy, v19, v20);
        *buf = 138412290;
        v32 = v21;
        _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Could not find cached subscription for handle: %@. Not observing offgrid status (yet).", buf, 0xCu);
      }
    }

    v22 = objc_msgSend_sharedInstance(MEMORY[0x1E69A80A8], v16, v17);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_1A8358B10;
    v25[3] = &unk_1E78134A0;
    v26 = handleCopy;
    selfCopy = self;
    v28 = v10;
    objc_msgSend_fetchUpdatedStatusForHandle_completion_(v22, v23, v26, v25);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)endObservingOffGridStateForHandle:(id)handle
{
  v33 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v7 = objc_msgSend_ID(handleCopy, v5, v6);
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v32 = v7;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Received request to end observing offgrid status for: %@", buf, 0xCu);
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A83590B8;
  aBlock[3] = &unk_1E7813478;
  v9 = v7;
  v30 = v9;
  v10 = _Block_copy(aBlock);
  v13 = objc_msgSend_sharedInstance(MEMORY[0x1E69A80A8], v11, v12);
  v15 = objc_msgSend_cachedStatusSubscriptionForHandle_(v13, v14, handleCopy);

  if (v15)
  {
    v10[2](v10, v15);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v21 = objc_msgSend_ID(handleCopy, v19, v20);
        *buf = 138412290;
        v32 = v21;
        _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Could not find cached subscription for handle: %@. Not observing offgrid status (yet).", buf, 0xCu);
      }
    }

    v22 = objc_msgSend_sharedInstance(MEMORY[0x1E69A80A8], v16, v17);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_1A8359358;
    v25[3] = &unk_1E78134A0;
    v26 = handleCopy;
    selfCopy = self;
    v28 = v10;
    objc_msgSend_fetchUpdatedStatusForHandle_completion_(v22, v23, v26, v25);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)endObservingStatusUpdatesForHandle:(id)handle
{
  v14 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = objc_msgSend_ID(handleCopy, v7, v8);
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Status manager ending observing for handle: %@", &v12, 0xCu);
    }
  }

  objc_msgSend_endObservingAvailabilityForHandle_(self, v5, handleCopy);
  objc_msgSend_endObservingOffGridStateForHandle_(self, v10, handleCopy);

  v11 = *MEMORY[0x1E69E9840];
}

@end