@interface IMGroupTypingTrackingController
- (IMGroupTypingTrackingController)init;
- (IMGroupTypingTrackingControllerDelegate)delegate;
- (NSArray)currentTypingHandles;
- (void)_addTyper:(id)typer messageTime:(id)time;
- (void)_removeTyper:(id)typer;
- (void)invalidateScheduledTimeoutsForHandleIfNecessary:(id)necessary;
- (void)scheduleTypingTimeoutForHandle:(id)handle withBeginDate:(id)date;
- (void)typingTimeoutDidTriggerWithTimer:(id)timer;
- (void)updateWithIncomingItem:(id)item;
@end

@implementation IMGroupTypingTrackingController

- (IMGroupTypingTrackingController)init
{
  v10.receiver = self;
  v10.super_class = IMGroupTypingTrackingController;
  v2 = [(IMGroupTypingTrackingController *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    typingHandles = v2->_typingHandles;
    v2->_typingHandles = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    scheduledTimers = v2->_scheduledTimers;
    v2->_scheduledTimers = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pluginPayloads = v2->_pluginPayloads;
    v2->_pluginPayloads = v7;
  }

  return v2;
}

- (NSArray)currentTypingHandles
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  isGroupTypingIndicatorsEnabled = objc_msgSend_isGroupTypingIndicatorsEnabled(v4, v5, v6);

  if (isGroupTypingIndicatorsEnabled)
  {
    v10 = objc_msgSend_typingHandles(self, v8, v9);
    v13 = objc_msgSend_copy(v10, v11, v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)updateWithIncomingItem:(id)item
{
  v68 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v7 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v5, v6);
  isGroupTypingIndicatorsEnabled = objc_msgSend_isGroupTypingIndicatorsEnabled(v7, v8, v9);

  if (isGroupTypingIndicatorsEnabled)
  {
    v11 = IMOSLoggingEnabled();
    if (!itemCopy)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Incoming item was nil. Ignoring.", buf, 2u);
      }

      goto LABEL_11;
    }

    if (v11)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v67 = itemCopy;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Handling item: %@", buf, 0xCu);
      }
    }

    if (objc_msgSend_isFromMe(itemCopy, v12, v13))
    {
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Incoming item was from me. Ignoring.", buf, 2u);
        }

LABEL_11:
      }
    }

    else
    {
      v18 = objc_msgSend__senderHandle(itemCopy, v15, v16);
      if (v18)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = itemCopy;
          if (objc_msgSend_isIncomingTypingOrCancelTypingMessage(v20, v21, v22))
          {
            if (objc_msgSend_isCancelTypingMessage(v20, v23, v24))
            {
              objc_msgSend__removeTyper_(self, v25, v18);
              objc_msgSend_setHandleToRemoveViaAnimation_(self, v26, 0);
            }

            else
            {
              v65 = 0;
              isExtensibleMessageWithPluginPayload = objc_msgSend_isExtensibleMessageWithPluginPayload_(v20, v25, &v65);
              v30 = v65;
              v33 = v30;
              if (isExtensibleMessageWithPluginPayload)
              {
                if (v30)
                {
                  v34 = objc_msgSend_sharedInstance(IMBalloonPluginManager, v31, v32);
                  v36 = objc_msgSend_dataSourceForPluginPayload_(v34, v35, v33);
                }

                else
                {
                  v36 = 0;
                }

                v39 = objc_alloc_init(IMPluginTypingPayloadValue);
                v43 = objc_msgSend_typingIndicatorIcon(v20, v41, v42);
                objc_msgSend_setTypingIndicatorIcon_(v39, v44, v43);

                v47 = objc_msgSend_bundleID(v36, v45, v46);
                objc_msgSend_setPluginBundleID_(v39, v48, v47);

                v51 = objc_msgSend_bundleID(v36, v49, v50);
                objc_msgSend_setType_(v39, v52, v51);

                v55 = objc_msgSend_pluginPayloads(self, v53, v54);
                v58 = objc_msgSend_ID(v18, v56, v57);
                objc_msgSend_setObject_forKey_(v55, v59, v39, v58);
              }

              else
              {
                v36 = objc_msgSend_pluginPayloads(self, v31, v32);
                v39 = objc_msgSend_ID(v18, v37, v38);
                objc_msgSend_removeObjectForKey_(v36, v40, v39);
              }

              v62 = objc_msgSend_time(v20, v60, v61);
              objc_msgSend__addTyper_messageTime_(self, v63, v18, v62);
            }
          }

          else
          {
            objc_msgSend__removeTyper_(self, v23, v18);
          }
        }

        else
        {
          objc_msgSend__removeTyper_(self, v19, v18);
          objc_msgSend_setHandleToRemoveViaAnimation_(self, v28, 0);
        }
      }

      else if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_INFO, "Could not derive handle from the incoming item. Not updating typing controller.", buf, 2u);
        }
      }
    }
  }

LABEL_35:

  v64 = *MEMORY[0x1E69E9840];
}

- (void)_removeTyper:(id)typer
{
  v35 = *MEMORY[0x1E69E9840];
  typerCopy = typer;
  v5 = IMOSLoggingEnabled();
  if (typerCopy)
  {
    if (v5)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "[IMGroupTypingTrackingController _removeTyper:]";
        *&buf[12] = 2112;
        *&buf[14] = typerCopy;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "%s handle to remove: %@", buf, 0x16u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v34 = 0;
    v9 = objc_msgSend_typingHandles(self, v6, v7);
    v12 = objc_msgSend__copyForEnumerating(v9, v10, v11);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_1A835D4C4;
    v27[3] = &unk_1E7813538;
    v13 = typerCopy;
    v28 = v13;
    selfCopy = self;
    v30 = buf;
    objc_msgSend_enumerateObjectsUsingBlock_(v12, v14, v27);

    objc_msgSend_invalidateScheduledTimeoutsForHandleIfNecessary_(self, v15, v13);
    if (*(*&buf[8] + 24))
    {
      objc_msgSend_setHandleToRemoveViaAnimation_(self, v16, v13);
    }

    else
    {
      objc_msgSend_setHandleToRemoveViaAnimation_(self, v16, 0);
      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *v31 = 138412290;
          v32 = v13;
          _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "We received a call to remove a handle from typingHandles, but the there was no matching handle in the array. handle that we attempted to remove: %@", v31, 0xCu);
        }
      }
    }

    v21 = objc_msgSend_pluginPayloads(self, v17, v18);
    v24 = objc_msgSend_ID(v13, v22, v23);
    objc_msgSend_removeObjectForKey_(v21, v25, v24);

    _Block_object_dispose(buf, 8);
  }

  else if (v5)
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "There was a call to remove a nil typer handle. Not attempting to removing typer.", buf, 2u);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)_addTyper:(id)typer messageTime:(id)time
{
  v30 = *MEMORY[0x1E69E9840];
  typerCopy = typer;
  timeCopy = time;
  if (typerCopy)
  {
    objc_msgSend_setHandleToRemoveViaAnimation_(self, v7, 0);
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "[IMGroupTypingTrackingController _addTyper:messageTime:]";
        *&buf[12] = 2112;
        *&buf[14] = typerCopy;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "%s handle to add: %@", buf, 0x16u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v29 = 0;
    v12 = objc_msgSend_typingHandles(self, v9, v10);
    v15 = objc_msgSend__copyForEnumerating(v12, v13, v14);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1A835D7D0;
    v24[3] = &unk_1E7813560;
    v16 = typerCopy;
    selfCopy = self;
    v27 = buf;
    v25 = v16;
    objc_msgSend_enumerateObjectsUsingBlock_(v15, v17, v24);

    if ((*(*&buf[8] + 24) & 1) == 0)
    {
      v20 = objc_msgSend_typingHandles(self, v18, v19);
      objc_msgSend_addObject_(v20, v21, v16);
    }

    objc_msgSend_scheduleTypingTimeoutForHandle_withBeginDate_(self, v18, v16, timeCopy);

    _Block_object_dispose(buf, 8);
  }

  else if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "There was a call to add a nil typer handle. Not attempting to add typer.", buf, 2u);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)invalidateScheduledTimeoutsForHandleIfNecessary:(id)necessary
{
  v44 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  if (necessaryCopy)
  {
    *v34 = 0;
    v35 = v34;
    v36 = 0x3032000000;
    v37 = sub_1A8259C20;
    v38 = sub_1A825AF3C;
    v39 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0x7FFFFFFFFFFFFFFFLL;
    v7 = objc_msgSend_scheduledTimers(self, v4, v5);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_1A835DC24;
    v26[3] = &unk_1E7813588;
    v8 = necessaryCopy;
    v27 = v8;
    v28 = v34;
    v29 = &v30;
    objc_msgSend_enumerateObjectsUsingBlock_(v7, v9, v26);

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v15 = objc_msgSend_handle(*(v35 + 5), v13, v14);
        *buf = 138412546;
        v41 = v15;
        v42 = 2112;
        v43 = v8;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Removing scheduled typing timeout for matchingTimer.handle %@, handle: %@", buf, 0x16u);
      }
    }

    v16 = *(v35 + 5);
    if (v16 && v31[3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (objc_msgSend_isValid(v16, v10, v11))
      {
        objc_msgSend_invalidate(*(v35 + 5), v21, v22);
      }

      v23 = objc_msgSend_scheduledTimers(self, v21, v22);
      objc_msgSend_removeObjectAtIndex_(v23, v24, v31[3]);
    }

    else if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = *(v35 + 5);
        v19 = v31[3];
        *buf = 138412546;
        v41 = v18;
        v42 = 2048;
        v43 = v19;
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "No matchingTimer or invalid index. Not invalidating timer. matchingTimer %@, matchingTimerIndex %li", buf, 0x16u);
      }
    }

    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(v34, 8);
  }

  else if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *v34 = 0;
      _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Attempted to invalidate a scheduled typing indicator timeout with a nil handle. Not invalidating scheduled timeout.", v34, 2u);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)scheduleTypingTimeoutForHandle:(id)handle withBeginDate:(id)date
{
  v23 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  dateCopy = date;
  if (!dateCopy)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_16;
    }

    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Attempted to schedule typing indicator timeout with a nil beginDate. Not scheduling timeout.", &v21, 2u);
    }

LABEL_15:

    goto LABEL_16;
  }

  if (!handleCopy)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_16;
    }

    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Typing indicator timeout had a nil handle. Not scheduling timeout.", &v21, 2u);
    }

    goto LABEL_15;
  }

  objc_msgSend_invalidateScheduledTimeoutsForHandleIfNecessary_(self, v7, handleCopy);
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v21 = 138412290;
      v22 = handleCopy;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Scheduling typing timeout for handle %@", &v21, 0xCu);
    }
  }

  v10 = [IMTypingTimer alloc];
  objc_msgSend_timeoutInterval(IMGroupTypingTrackingController, v11, v12);
  v14 = objc_msgSend_initWithHandle_beginDate_timeoutInterval_delegate_(v10, v13, handleCopy, dateCopy, self);
  v17 = objc_msgSend_scheduledTimers(self, v15, v16);
  objc_msgSend_addObject_(v17, v18, v14);

LABEL_16:
  v20 = *MEMORY[0x1E69E9840];
}

- (void)typingTimeoutDidTriggerWithTimer:(id)timer
{
  v20 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  v7 = objc_msgSend_handle(timerCopy, v5, v6);
  v8 = IMOSLoggingEnabled();
  if (v7)
  {
    if (v8)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v18 = 138412290;
        v19 = v7;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Typing timeout triggered with handle: %@", &v18, 0xCu);
      }
    }

    objc_msgSend__removeTyper_(self, v9, v7);
    objc_msgSend_setHandleToRemoveViaAnimation_(self, v11, 0);
    v14 = objc_msgSend_delegate(self, v12, v13);
    objc_msgSend_typingTrackingControllerDidReceiveTimeout_(v14, v15, self);
  }

  else if (v8)
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Typing timeout triggered, but the underlying handle was nil. Not removing the typer.", &v18, 2u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (IMGroupTypingTrackingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end