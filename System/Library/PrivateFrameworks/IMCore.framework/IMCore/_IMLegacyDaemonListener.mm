@interface _IMLegacyDaemonListener
- (_IMLegacyDaemonListener)init;
- (unint64_t)myStatus;
- (unsigned)myIdleTime;
- (void)_cacheValue:(id)value forPersistentProperty:(id)property;
- (void)_cacheValue:(id)value forProperty:(id)property;
- (void)_deferNotification:(id)notification;
- (void)_deferredSetup:(id)setup;
- (void)_processDeferredInvitationDictionary:(id)dictionary;
- (void)_processMyStatusChanged;
- (void)_reallyProcessMyStatusChanged;
- (void)_resetPostedSetupCompleted;
- (void)_setStamp:(id)stamp forContext:(id)context;
- (void)account:(id)account buddyPictureChanged:(id)changed imageData:(id)data imageHash:(id)hash;
- (void)account:(id)account buddyProperties:(id)properties buddyPictures:(id)pictures;
- (void)account:(id)account buddyPropertiesChanged:(id)changed;
- (void)account:(id)account capabilitiesChanged:(unint64_t)changed;
- (void)account:(id)account conference:(id)conference remoteUser:(id)user properties:(id)properties;
- (void)account:(id)account defaults:(id)defaults blockList:(id)list allowList:(id)allowList blockingMode:(unsigned int)mode blockIdleStatus:(BOOL)status status:(id)a9 capabilities:(unint64_t)self0 serviceLoginStatus:(unint64_t)self1 loginStatusMessage:(id)self2;
- (void)account:(id)account defaultsChanged:(id)changed;
- (void)account:(id)account groupsChanged:(id)changed error:(id)error;
- (void)account:(id)account handleSubscriptionRequestFrom:(id)from withMessage:(id)message;
- (void)account:(id)account postedError:(id)error;
- (void)account:(id)account status:(id)status capabilities:(unint64_t)capabilities serviceLoginStatus:(unint64_t)loginStatus loginStatusMessage:(id)message;
- (void)account:(id)account statusChanged:(id)changed;
- (void)accountAdded:(id)added defaults:(id)defaults service:(id)service;
- (void)accountRemoved:(id)removed;
- (void)activeAccountsChanged:(id)changed forService:(id)service;
- (void)addHandler:(id)handler;
- (void)databaseChatSpamUpdated:(id)updated;
- (void)databaseUpdated:(id)updated;
- (void)defaultsChanged:(id)changed forService:(id)service;
- (void)didAttemptToDisableiCloudBackups:(int64_t)backups error:(id)error;
- (void)didFetchCloudKitSyncDebuggingInfo:(id)info;
- (void)didFetchRampState:(id)state;
- (void)didFetchSyncStateStats:(id)stats;
- (void)displayPinCodeForAccount:(id)account pinCode:(id)code deviceName:(id)name deviceType:(id)type phoneNumber:(id)number;
- (void)fileTransfer:(id)transfer createdWithProperties:(id)properties;
- (void)fileTransfer:(id)transfer explicitDownloadSucceededWithPath:(id)path livePhotoBundlePath:(id)bundlePath;
- (void)fileTransfer:(id)transfer highQualityDownloadSucceededWithPath:(id)path;
- (void)fileTransfer:(id)transfer rejectedWithProperties:(id)properties;
- (void)fileTransfer:(id)transfer updatedWithCurrentBytes:(unint64_t)bytes totalBytes:(unint64_t)totalBytes averageTransferRate:(unint64_t)rate;
- (void)fileTransfer:(id)transfer updatedWithProperties:(id)properties;
- (void)fileTransferDownloadFailedWithLocalURL:(id)l error:(id)error;
- (void)fileTransferDownloadedSucceededWithLocalURL:(id)l;
- (void)fileTransferExplicitDownloadFailed:(id)failed suggestedRetryGUID:(id)d error:(id)error;
- (void)fileTransferFinishedRemoteIntentDownload:(id)download;
- (void)fileTransferHighQualityDownloadFailed:(id)failed;
- (void)fileTransfers:(id)transfers createdWithLocalPaths:(id)paths;
- (void)forwardInvocation:(id)invocation;
- (void)newSetupInfoAvailable;
- (void)oneTimeCodesDidChange:(id)change;
- (void)persistentProperty:(id)property changedTo:(id)to from:(id)from;
- (void)property:(id)property changedTo:(id)to from:(id)from;
- (void)receivedUrgentRequestForMessages:(id)messages;
- (void)releaseHeldChatMessages;
- (void)removeHandler:(id)handler;
- (void)service:(id)service properties:(id)properties defaults:(id)defaults defaultAccountSettings:(id)settings allAccounts:(id)accounts activeAccounts:(id)activeAccounts;
- (void)services:(id)services properties:(id)properties persistentProperties:(id)persistentProperties;
- (void)setupComplete:(BOOL)complete info:(id)info;
- (void)simSubscriptionsDidChange;
- (void)updateActiveNicknameRecords:(id)records;
- (void)updateCloudKitProgressWithDictionary:(id)dictionary;
- (void)updateCloudKitState;
- (void)updateCloudKitStateWithDictionary:(id)dictionary;
- (void)updateIgnoredNicknameRecords:(id)records;
- (void)updateNicknameHandlesForSharing:(id)sharing blocked:(id)blocked;
- (void)updatePendingNicknameUpdates:(id)updates handledNicknames:(id)nicknames archivedNicknames:(id)archivedNicknames;
- (void)updatePersonalNickname:(id)nickname;
- (void)updateTransitionedNicknameHandles:(id)handles;
- (void)updateUnknownSenderRecords:(id)records;
- (void)vcCapabilitiesChanged:(unint64_t)changed;
@end

@implementation _IMLegacyDaemonListener

- (_IMLegacyDaemonListener)init
{
  v14.receiver = self;
  v14.super_class = _IMLegacyDaemonListener;
  v2 = [(_IMLegacyDaemonListener *)&v14 init];
  v3 = v2;
  if (v2)
  {
    myIdleSince = v2->_myIdleSince;
    v2->_myIdleSince = 0;

    v3->_setupComplete = 0;
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    properties = v3->_properties;
    v3->_properties = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    persistentProperties = v3->_persistentProperties;
    v3->_persistentProperties = v7;

    v9 = objc_alloc(MEMORY[0x1E696AE48]);
    v11 = objc_msgSend_initWithProtocol_(v9, v10, &unk_1F1BF71E8);
    protocol = v3->_protocol;
    v3->_protocol = v11;
  }

  return v3;
}

- (void)_processMyStatusChanged
{
  if (!self->_hasPendingProcessChange && self->_setupComplete)
  {
    objc_msgSend_performSelector_withObject_afterDelay_(self, a2, sel__reallyProcessMyStatusChanged, 0, 0.0);
  }
}

- (void)_reallyProcessMyStatusChanged
{
  v81 = *MEMORY[0x1E69E9840];
  if (self->_hasPendingProcessChange)
  {
    objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x1E69E58C0], a2, self, sel__reallyProcessMyStatusChanged, 0);
  }

  self->_hasPendingProcessChange = 0;
  v4 = objc_msgSend_sharedInstance(IMAccountController, a2, v2);
  v7 = objc_msgSend_bestAccountForStatus(v4, v5, v6);

  v65 = objc_msgSend_myStatus(v7, v8, v9);
  v12 = objc_msgSend_myStatusMessage(v7, v10, v11);
  obj = objc_msgSend_myIdleSince(v7, v13, v14);
  v17 = objc_msgSend_myPictureData(v7, v15, v16);
  v20 = objc_msgSend_myNowPlayingString(v7, v18, v19);
  v23 = &stru_1F1B76F98;
  if (v12)
  {
    v24 = v12;
  }

  else
  {
    v24 = &stru_1F1B76F98;
  }

  if (v20)
  {
    v23 = v20;
  }

  v67 = v23;
  v68 = v24;
  if ((objc_msgSend_isNull(v17, v21, v22) & 1) != 0 || !objc_msgSend_length(v17, v25, v26))
  {

    v17 = 0;
  }

  v66 = v17;
  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109634;
      v75 = v65;
      v76 = 2112;
      v77 = v68;
      v78 = 2112;
      v79 = obj;
      _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_DEBUG, "Notified that my status is now %i, message '%@', idleSince %@", buf, 0x1Cu);
    }
  }

  myIdleSince = self->_myIdleSince;
  v64 = obj != myIdleSince;
  if (obj != myIdleSince)
  {
    objc_storeStrong(&self->_myIdleSince, obj);
  }

  if (v7)
  {
    myPicture = self->_myPicture;
    if (v17 != myPicture && (objc_msgSend_isEqualToData_(v17, v27, myPicture) & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v34 = objc_msgSend_length(v17, v32, v33);
          *buf = 67109120;
          v75 = v34;
          _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "Service: Received my new picture from daemon -- %d bytes", buf, 8u);
        }
      }

      objc_storeStrong(&self->_myPicture, v17);
      v37 = objc_msgSend_me(IMMe, v35, v36);
      objc_msgSend_myPictureChanged(v37, v38, v39);

      v42 = objc_msgSend__copyForEnumerating(self->_handlers, v40, v41);
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v43 = v42;
      v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, &v70, v80, 16);
      if (v45)
      {
        v46 = *v71;
        do
        {
          for (i = 0; i != v45; ++i)
          {
            if (*v71 != v46)
            {
              objc_enumerationMutation(v43);
            }

            v48 = *(*(&v70 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              objc_msgSend_myPictureDataChanged_(v48, v49, self->_myPicture);
            }
          }

          v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v49, &v70, v80, 16);
        }

        while (v45);
      }
    }
  }

  if (self->_myStatus != v65)
  {
    self->_myStatus = v65;
    v64 = 1;
  }

  if (objc_msgSend_isEqualToString_(self->_myStatusMessage, v27, v68))
  {
    myNowPlayingString = self->_myNowPlayingString;
    p_myNowPlayingString = &self->_myNowPlayingString;
    if (objc_msgSend_isEqualToString_(v67, v50, myNowPlayingString))
    {
      if (!v64)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    goto LABEL_41;
  }

  objc_storeStrong(&self->_myStatusMessage, v68);
  v55 = self->_myNowPlayingString;
  p_myNowPlayingString = &self->_myNowPlayingString;
  if ((objc_msgSend_isEqualToString_(v67, v56, v55) & 1) == 0)
  {
LABEL_41:
    objc_storeStrong(p_myNowPlayingString, v67);
  }

LABEL_42:
  v57 = objc_msgSend_notificationCenter(IMService, v53, v54);
  objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v57, v58, @"__kIMMyStatusChangedNotification", 0, 0);

  v61 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v59, v60);
  objc_msgSend___mainThreadPostNotificationName_object_(v61, v62, @"__kIMMeStatusChangedNotification", 0);

LABEL_43:
  v63 = *MEMORY[0x1E69E9840];
}

- (void)addHandler:(id)handler
{
  handlerCopy = handler;
  if ((objc_msgSend_containsObjectIdenticalTo_(self->_handlers, v4, handlerCopy) & 1) == 0)
  {
    handlers = self->_handlers;
    if (!handlers)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v8 = self->_handlers;
      self->_handlers = v7;

      handlers = self->_handlers;
    }

    objc_msgSend_addObject_(handlers, v5, handlerCopy);
  }
}

- (void)removeHandler:(id)handler
{
  objc_msgSend_removeObjectIdenticalTo_(self->_handlers, a2, handler);
  if (!objc_msgSend_count(self->_handlers, v4, v5))
  {
    handlers = self->_handlers;
    self->_handlers = 0;
  }
}

- (unint64_t)myStatus
{
  v4 = objc_msgSend_sharedInstance(IMAccountController, a2, v2);
  v7 = objc_msgSend_connectedAccounts(v4, v5, v6);
  v10 = objc_msgSend_count(v7, v8, v9);

  if (v10)
  {
    return self->_myStatus;
  }

  else
  {
    return 1;
  }
}

- (unsigned)myIdleTime
{
  myIdleSince = self->_myIdleSince;
  if (myIdleSince)
  {
    objc_msgSend_timeIntervalSinceNow(myIdleSince, a2, v2);
    LODWORD(myIdleSince) = -v4;
  }

  return myIdleSince;
}

- (void)_processDeferredInvitationDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6 = objc_msgSend_objectForKey_(dictionaryCopy, v5, @"AccountUniqueID");
  v8 = objc_msgSend_objectForKey_(dictionaryCopy, v7, @"ChatIdentifier");
  v10 = objc_msgSend_objectForKey_(dictionaryCopy, v9, @"Properties");
  v12 = objc_msgSend_objectForKey_(dictionaryCopy, v11, @"ChatStyle");
  v15 = objc_msgSend_charValue(v12, v13, v14);

  v17 = objc_msgSend_objectForKey_(dictionaryCopy, v16, @"Message");
  v19 = objc_msgSend_objectForKey_(dictionaryCopy, v18, @"DeferType");
  v22 = objc_msgSend_intValue(v19, v20, v21);

  if (v22 == 2)
  {
    v24 = objc_msgSend_objectForKey_(dictionaryCopy, v23, @"Messages");
    objc_msgSend_account_chat_style_chatProperties_messagesReceived_(self, v25, v6, v8, v15, v10, v24);
  }

  else if (v22 == 1)
  {
    objc_msgSend_account_chat_style_chatProperties_messageReceived_(self, v23, v6, v8, v15, v10, v17);
  }

  else if (v22)
  {
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *v27 = 0;
        _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_INFO, "Unknown defer type", v27, 2u);
      }
    }
  }

  else
  {
    objc_msgSend_account_chat_style_chatProperties_invitationReceived_(self, v23, v6, v8, v15, v10, v17);
  }
}

- (void)_deferNotification:(id)notification
{
  notificationCopy = notification;
  deferredChatMessages = self->_deferredChatMessages;
  v8 = notificationCopy;
  if (!deferredChatMessages)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_deferredChatMessages;
    self->_deferredChatMessages = v6;

    notificationCopy = v8;
    deferredChatMessages = self->_deferredChatMessages;
  }

  objc_msgSend_addObject_(deferredChatMessages, notificationCopy, notificationCopy);
}

- (void)releaseHeldChatMessages
{
  v17 = *MEMORY[0x1E69E9840];
  self->_holdingChatMessages = 0;
  if (objc_msgSend_isHoldingChatMessages(self, a2, v2))
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = self->_deferredChatMessages;
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v12, v16, 16);
    if (v6)
    {
      v8 = v6;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v4);
          }

          objc_msgSend__processDeferredInvitationDictionary_(self, v7, *(*(&v12 + 1) + 8 * v10++), v12);
        }

        while (v8 != v10);
        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v12, v16, 16);
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)defaultsChanged:(id)changed forService:(id)service
{
  v28 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  serviceCopy = service;
  v9 = objc_msgSend_serviceWithInternalName_(IMServiceImpl, v8, serviceCopy);
  v11 = v9;
  if (v9)
  {
    objc_msgSend_defaultsChanged_(v9, v10, changedCopy);
    v14 = objc_msgSend__copyForEnumerating(self->_handlers, v12, v13);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = v14;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v23, v27, 16);
    if (v17)
    {
      v18 = *v24;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v23 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            objc_msgSend_defaultsChanged_forService_(v20, v21, changedCopy, serviceCopy);
          }
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v21, &v23, v27, 16);
      }

      while (v17);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)activeAccountsChanged:(id)changed forService:(id)service
{
  v81 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  serviceCopy = service;
  v65 = objc_msgSend_serviceWithInternalName_(IMServiceImpl, v6, serviceCopy);
  if (v65)
  {
    v9 = objc_msgSend_sharedInstance(IMAccountController, v7, v8);
    v11 = objc_msgSend_accountsForService_(v9, v10, v65);
    v14 = objc_msgSend_mutableCopy(v11, v12, v13);

    v17 = objc_msgSend_sharedInstance(IMAccountController, v15, v16);
    objc_msgSend_setReadOnly_(v17, v18, 1);

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v19 = changedCopy;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v74, v80, 16);
    if (v23)
    {
      v24 = *v75;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v75 != v24)
          {
            objc_enumerationMutation(v19);
          }

          v26 = *(*(&v74 + 1) + 8 * i);
          v27 = objc_msgSend_sharedInstance(IMAccountController, v21, v22);
          v29 = objc_msgSend_accountForUniqueID_(v27, v28, v26);

          v32 = objc_msgSend_sharedInstance(IMAccountController, v30, v31);
          objc_msgSend_activateAccount_locally_(v32, v33, v29, 1);

          objc_msgSend_removeObject_(v14, v34, v29);
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v74, v80, 16);
      }

      while (v23);
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v35 = v14;
    v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v70, v79, 16);
    if (v39)
    {
      v40 = *v71;
      do
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v71 != v40)
          {
            objc_enumerationMutation(v35);
          }

          v42 = *(*(&v70 + 1) + 8 * j);
          v43 = objc_msgSend_sharedInstance(IMAccountController, v37, v38);
          objc_msgSend__deactivateAccount_(v43, v44, v42);
        }

        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v37, &v70, v79, 16);
      }

      while (v39);
    }

    v47 = objc_msgSend_sharedInstance(IMAccountController, v45, v46);
    objc_msgSend_setReadOnly_(v47, v48, 0);

    objc_msgSend_activeAccountsChanged_(v65, v49, v19);
    v52 = objc_msgSend__copyForEnumerating(self->_handlers, v50, v51);
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v53 = v52;
    v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v54, &v66, v78, 16);
    if (v55)
    {
      v56 = *v67;
      do
      {
        for (k = 0; k != v55; ++k)
        {
          if (*v67 != v56)
          {
            objc_enumerationMutation(v53);
          }

          v58 = *(*(&v66 + 1) + 8 * k);
          if (objc_opt_respondsToSelector())
          {
            objc_msgSend_activeAccountsChanged_forService_(v58, v59, v19, serviceCopy);
          }
        }

        v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v59, &v66, v78, 16);
      }

      while (v55);
    }

    objc_msgSend__processMyStatusChanged(self, v60, v61);
  }

  v62 = *MEMORY[0x1E69E9840];
}

- (void)account:(id)account defaultsChanged:(id)changed
{
  v30 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  changedCopy = changed;
  v10 = objc_msgSend_sharedInstance(IMAccountController, v8, v9);
  v12 = objc_msgSend_accountForUniqueID_(v10, v11, accountCopy);

  objc_msgSend_loadFromDictionary_(v12, v13, changedCopy);
  v16 = objc_msgSend__copyForEnumerating(self->_handlers, v14, v15);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = v16;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v25, v29, 16);
  if (v19)
  {
    v20 = *v26;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v25 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_account_defaultsChanged_(v22, v23, accountCopy, changedCopy);
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v23, &v25, v29, 16);
    }

    while (v19);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)accountAdded:(id)added defaults:(id)defaults service:(id)service
{
  addedCopy = added;
  defaultsCopy = defaults;
  v12 = objc_msgSend_serviceWithName_(self, v9, service);
  if (v12)
  {
    v13 = objc_msgSend_sharedInstance(IMAccountController, v10, v11);
    v15 = objc_msgSend_accountForUniqueID_(v13, v14, addedCopy);

    if (!v15)
    {
      v16 = [IMAccount alloc];
      v20 = objc_msgSend_initWithUniqueID_service_(v16, v17, addedCopy, v12);
      if (v20)
      {
        if (defaultsCopy)
        {
          objc_msgSend_account_defaultsChanged_(self, v18, addedCopy, defaultsCopy);
        }

        v21 = objc_msgSend_sharedInstance(IMAccountController, v18, v19);
        objc_msgSend_addAccount_locally_(v21, v22, v20, 1);
      }

      objc_msgSend__processMyStatusChanged(self, v23, v24);
    }
  }
}

- (void)accountRemoved:(id)removed
{
  removedCopy = removed;
  v7 = objc_msgSend_sharedInstance(IMAccountController, v5, v6);
  v13 = objc_msgSend_accountForUniqueID_(v7, v8, removedCopy);

  if (v13)
  {
    v11 = objc_msgSend_sharedInstance(IMAccountController, v9, v10);
    objc_msgSend_deleteAccount_locally_(v11, v12, v13, 1);
  }

  objc_msgSend__processMyStatusChanged(self, v9, v10);
}

- (void)account:(id)account statusChanged:(id)changed
{
  v32 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  changedCopy = changed;
  v10 = objc_msgSend_sharedInstance(IMAccountController, v8, v9);
  v12 = objc_msgSend_accountForUniqueID_(v10, v11, accountCopy);
  objc_msgSend_setCurrentAccountStatus_(v12, v13, changedCopy);

  objc_msgSend__processMyStatusChanged(self, v14, v15);
  v18 = objc_msgSend__copyForEnumerating(self->_handlers, v16, v17);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v19 = v18;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v27, v31, 16);
  if (v21)
  {
    v22 = *v28;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v27 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_account_statusChanged_(v24, v25, accountCopy, changedCopy);
        }
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v25, &v27, v31, 16);
    }

    while (v21);
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)account:(id)account capabilitiesChanged:(unint64_t)changed
{
  v33 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v8 = objc_msgSend_sharedInstance(IMAccountController, v6, v7);
  v10 = objc_msgSend_accountForUniqueID_(v8, v9, accountCopy);

  v26 = objc_msgSend_capabilities(v10, v11, v12);
  if (v26 != changed)
  {
    objc_msgSend_updateCapabilities_(v10, v13, changed);
  }

  v15 = objc_msgSend__copyForEnumerating(self->_handlers, v13, v14);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = v15;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v28, v32, 16);
  if (v18)
  {
    v19 = *v29;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v28 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_account_capabilitiesChanged_(v21, v22, accountCopy, changed);
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v22, &v28, v32, 16);
    }

    while (v18);
  }

  if (v26 != changed)
  {
    objc_msgSend__processMyStatusChanged(self, v23, v24);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)vcCapabilitiesChanged:(unint64_t)changed
{
  v18 = *MEMORY[0x1E69E9840];
  self->_vcCapabilities = changed;
  v4 = objc_msgSend__copyForEnumerating(self->_handlers, a2, changed);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v13, v17, 16);
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_vcCapabilitiesChanged_(v10, v11, changed);
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v11, &v13, v17, 16);
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)account:(id)account buddyPropertiesChanged:(id)changed
{
  v31 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  changedCopy = changed;
  v10 = objc_msgSend_sharedInstance(IMAccountController, v8, v9);
  v12 = objc_msgSend_accountForUniqueID_(v10, v11, accountCopy);

  v13 = objc_autoreleasePoolPush();
  objc_msgSend_buddyPropertiesChanged_(v12, v14, changedCopy);
  objc_autoreleasePoolPop(v13);
  v17 = objc_msgSend__copyForEnumerating(self->_handlers, v15, v16);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = v17;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v26, v30, 16);
  if (v20)
  {
    v21 = *v27;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v26 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_account_buddyPropertiesChanged_(v23, v24, accountCopy, changedCopy);
        }
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v24, &v26, v30, 16);
    }

    while (v20);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)account:(id)account buddyPictureChanged:(id)changed imageData:(id)data imageHash:(id)hash
{
  v37 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  changedCopy = changed;
  dataCopy = data;
  hashCopy = hash;
  v16 = objc_msgSend_sharedInstance(IMAccountController, v14, v15);
  v31 = objc_msgSend_accountForUniqueID_(v16, v17, accountCopy);

  v18 = objc_autoreleasePoolPush();
  objc_msgSend_buddyPictureChanged_imageData_imageHash_(v31, v19, changedCopy, dataCopy, hashCopy);
  objc_autoreleasePoolPop(v18);
  v22 = objc_msgSend__copyForEnumerating(self->_handlers, v20, v21);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v23 = v22;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v32, v36, 16);
  if (v25)
  {
    v26 = *v33;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v32 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_account_buddyPictureChanged_imageData_imageHash_(v28, v29, accountCopy, changedCopy, dataCopy, hashCopy);
        }
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v29, &v32, v36, 16);
    }

    while (v25);
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)displayPinCodeForAccount:(id)account pinCode:(id)code deviceName:(id)name deviceType:(id)type phoneNumber:(id)number
{
  v31 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  codeCopy = code;
  nameCopy = name;
  typeCopy = type;
  numberCopy = number;
  v17 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x1E695DF20], v16, codeCopy, @"pinCode", nameCopy, @"deviceName", typeCopy, @"deviceType", numberCopy, @"phoneNumber", 0);
  v20 = objc_msgSend_sharedInstance(IMAccountController, v18, v19);
  v22 = objc_msgSend_accountForUniqueID_(v20, v21, accountCopy);

  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = v22;
      _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "SMSPINRelay accountToBroadcast %@", buf, 0xCu);
    }
  }

  v26 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v23, v24);
  objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v26, v27, @"__kIMAccountSMSRelayPinAlertNotification", v22, v17);

  v28 = *MEMORY[0x1E69E9840];
}

- (void)account:(id)account buddyProperties:(id)properties buddyPictures:(id)pictures
{
  v34 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  propertiesCopy = properties;
  picturesCopy = pictures;
  v13 = objc_msgSend_sharedInstance(IMAccountController, v11, v12);
  v28 = objc_msgSend_accountForUniqueID_(v13, v14, accountCopy);

  v15 = objc_autoreleasePoolPush();
  objc_msgSend_setBuddyProperties_buddyPictures_(v28, v16, propertiesCopy, picturesCopy);
  objc_autoreleasePoolPop(v15);
  v19 = objc_msgSend__copyForEnumerating(self->_handlers, v17, v18);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = v19;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v29, v33, 16);
  if (v22)
  {
    v23 = *v30;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v29 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_account_buddyProperties_buddyPictures_(v25, v26, accountCopy, propertiesCopy, picturesCopy);
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v26, &v29, v33, 16);
    }

    while (v22);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)fileTransfer:(id)transfer createdWithProperties:(id)properties
{
  transferCopy = transfer;
  propertiesCopy = properties;
  v8 = objc_msgSend_sharedController(IMDaemonController, v6, v7);
  v10 = *MEMORY[0x1E69A6268] & objc_msgSend_capabilitiesForListenerID_(v8, v9, 0);

  if (v10)
  {
    v13 = objc_msgSend_sharedInstance(IMFileTransferCenter, v11, v12);
    objc_msgSend__handleFileTransfer_createdWithProperties_(v13, v14, transferCopy, propertiesCopy);
  }
}

- (void)fileTransfers:(id)transfers createdWithLocalPaths:(id)paths
{
  transfersCopy = transfers;
  pathsCopy = paths;
  v8 = objc_msgSend_sharedController(IMDaemonController, v6, v7);
  v10 = *MEMORY[0x1E69A6268] & objc_msgSend_capabilitiesForListenerID_(v8, v9, 0);

  if (v10)
  {
    v13 = objc_msgSend_sharedInstance(IMFileTransferCenter, v11, v12);
    objc_msgSend__handleFileTransfers_createdWithLocalPaths_(v13, v14, transfersCopy, pathsCopy);
  }
}

- (void)fileTransfer:(id)transfer updatedWithProperties:(id)properties
{
  transferCopy = transfer;
  propertiesCopy = properties;
  v8 = objc_msgSend_sharedController(IMDaemonController, v6, v7);
  v10 = *MEMORY[0x1E69A6268] & objc_msgSend_capabilitiesForListenerID_(v8, v9, 0);

  if (v10)
  {
    v13 = objc_msgSend_sharedInstance(IMFileTransferCenter, v11, v12);
    objc_msgSend__handleFileTransfer_updatedWithProperties_(v13, v14, transferCopy, propertiesCopy);
  }
}

- (void)fileTransfer:(id)transfer rejectedWithProperties:(id)properties
{
  transferCopy = transfer;
  propertiesCopy = properties;
  v8 = objc_msgSend_sharedController(IMDaemonController, v6, v7);
  v10 = *MEMORY[0x1E69A6268] & objc_msgSend_capabilitiesForListenerID_(v8, v9, 0);

  if (v10)
  {
    v13 = objc_msgSend_sharedInstance(IMFileTransferCenter, v11, v12);
    objc_msgSend__handleFileTransfer_rejectedWithProperties_(v13, v14, transferCopy, propertiesCopy);
  }
}

- (void)fileTransfer:(id)transfer updatedWithCurrentBytes:(unint64_t)bytes totalBytes:(unint64_t)totalBytes averageTransferRate:(unint64_t)rate
{
  transferCopy = transfer;
  v11 = objc_msgSend_sharedController(IMDaemonController, v9, v10);
  v13 = *MEMORY[0x1E69A6268] & objc_msgSend_capabilitiesForListenerID_(v11, v12, 0);

  if (v13)
  {
    v16 = objc_msgSend_sharedInstance(IMFileTransferCenter, v14, v15);
    objc_msgSend__handleFileTransfer_updatedWithCurrentBytes_totalBytes_averageTransferRate_(v16, v17, transferCopy, bytes, totalBytes, rate);
  }
}

- (void)fileTransferFinishedRemoteIntentDownload:(id)download
{
  downloadCopy = download;
  v5 = objc_msgSend_sharedController(IMDaemonController, v3, v4);
  v7 = *MEMORY[0x1E69A6268] & objc_msgSend_capabilitiesForListenerID_(v5, v6, 0);

  if (v7)
  {
    v10 = objc_msgSend_sharedInstance(IMFileTransferCenter, v8, v9);
    objc_msgSend__handleFileTransferFinishedRemoteIntentDownload_(v10, v11, downloadCopy);
  }
}

- (void)fileTransfer:(id)transfer highQualityDownloadSucceededWithPath:(id)path
{
  transferCopy = transfer;
  pathCopy = path;
  v8 = objc_msgSend_sharedController(IMDaemonController, v6, v7);
  v10 = *MEMORY[0x1E69A6268] & objc_msgSend_capabilitiesForListenerID_(v8, v9, 0);

  if (v10)
  {
    v13 = objc_msgSend_sharedInstance(IMFileTransferCenter, v11, v12);
    objc_msgSend__handleFileTransfer_highQualityDownloadSucceededWithPath_(v13, v14, transferCopy, pathCopy);
  }
}

- (void)fileTransferHighQualityDownloadFailed:(id)failed
{
  failedCopy = failed;
  v5 = objc_msgSend_sharedController(IMDaemonController, v3, v4);
  v7 = *MEMORY[0x1E69A6268] & objc_msgSend_capabilitiesForListenerID_(v5, v6, 0);

  if (v7)
  {
    v10 = objc_msgSend_sharedInstance(IMFileTransferCenter, v8, v9);
    objc_msgSend__handleFileTransferHighQualityDownloadFailed_(v10, v11, failedCopy);
  }
}

- (void)fileTransfer:(id)transfer explicitDownloadSucceededWithPath:(id)path livePhotoBundlePath:(id)bundlePath
{
  transferCopy = transfer;
  pathCopy = path;
  bundlePathCopy = bundlePath;
  v11 = objc_msgSend_sharedController(IMDaemonController, v9, v10);
  v13 = objc_msgSend_capabilitiesForListenerID_(v11, v12, 0);

  if ((v13 & 0x10000000) != 0)
  {
    v16 = objc_msgSend_sharedInstance(IMFileTransferCenter, v14, v15);
    objc_msgSend__handleFileTransfer_explicitDownloadSucceededWithPath_livePhotoBundlePath_(v16, v17, transferCopy, pathCopy, bundlePathCopy);
  }
}

- (void)fileTransferExplicitDownloadFailed:(id)failed suggestedRetryGUID:(id)d error:(id)error
{
  failedCopy = failed;
  dCopy = d;
  errorCopy = error;
  v11 = objc_msgSend_sharedController(IMDaemonController, v9, v10);
  v13 = objc_msgSend_capabilitiesForListenerID_(v11, v12, 0);

  if ((v13 & 0x10000000) != 0)
  {
    v16 = objc_msgSend_sharedInstance(IMFileTransferCenter, v14, v15);
    objc_msgSend__handleFileTransferExplicitDownloadFailed_suggestedRetryGUID_error_(v16, v17, failedCopy, dCopy, errorCopy);
  }
}

- (void)fileTransferDownloadedSucceededWithLocalURL:(id)l
{
  lCopy = l;
  v5 = objc_msgSend_sharedController(IMDaemonController, v3, v4);
  v7 = objc_msgSend_capabilitiesForListenerID_(v5, v6, 0);

  if ((v7 & 0x10000000) != 0)
  {
    v10 = objc_msgSend_sharedInstance(IMFileTransferCenter, v8, v9);
    objc_msgSend__handleFileTransferDownloadSucceededWithLocalURL_(v10, v11, lCopy);
  }
}

- (void)fileTransferDownloadFailedWithLocalURL:(id)l error:(id)error
{
  lCopy = l;
  errorCopy = error;
  v8 = objc_msgSend_sharedController(IMDaemonController, v6, v7);
  v10 = objc_msgSend_capabilitiesForListenerID_(v8, v9, 0);

  if ((v10 & 0x10000000) != 0)
  {
    v13 = objc_msgSend_sharedInstance(IMFileTransferCenter, v11, v12);
    objc_msgSend__handleFileTransferDownloadFailedWithLocalURL_error_(v13, v14, lCopy, errorCopy);
  }
}

- (void)account:(id)account groupsChanged:(id)changed error:(id)error
{
  v34 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  changedCopy = changed;
  errorCopy = error;
  v13 = objc_msgSend_sharedInstance(IMAccountController, v11, v12);
  v28 = objc_msgSend_accountForUniqueID_(v13, v14, accountCopy);

  v15 = objc_autoreleasePoolPush();
  objc_msgSend_groupsChanged_error_(v28, v16, changedCopy, errorCopy);
  objc_autoreleasePoolPop(v15);
  v19 = objc_msgSend__copyForEnumerating(self->_handlers, v17, v18);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = v19;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v29, v33, 16);
  if (v22)
  {
    v23 = *v30;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v29 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_account_groupsChanged_error_(v25, v26, accountCopy, changedCopy, errorCopy);
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v26, &v29, v33, 16);
    }

    while (v22);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)account:(id)account handleSubscriptionRequestFrom:(id)from withMessage:(id)message
{
  v33 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  fromCopy = from;
  messageCopy = message;
  v13 = objc_msgSend_sharedInstance(IMAccountController, v11, v12);
  v27 = objc_msgSend_accountForUniqueID_(v13, v14, accountCopy);

  objc_msgSend_handleSubscriptionRequestFrom_withMessage_(v27, v15, fromCopy, messageCopy);
  v18 = objc_msgSend__copyForEnumerating(self->_handlers, v16, v17);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v19 = v18;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v28, v32, 16);
  if (v21)
  {
    v22 = *v29;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v28 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_account_handleSubscriptionRequestFrom_withMessage_(v24, v25, accountCopy, fromCopy, messageCopy);
        }
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v25, &v28, v32, 16);
    }

    while (v21);
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)account:(id)account postedError:(id)error
{
  v26 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  errorCopy = error;
  if (errorCopy)
  {
    v10 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v7, v8);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v10, v11, *MEMORY[0x1E69A5F58], errorCopy, 0);
  }

  v12 = objc_msgSend__copyForEnumerating(self->_handlers, v7, v8);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = v12;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v21, v25, 16);
  if (v15)
  {
    v16 = *v22;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v21 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_account_postedError_(v18, v19, accountCopy, errorCopy);
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v19, &v21, v25, 16);
    }

    while (v15);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_setStamp:(id)stamp forContext:(id)context
{
  stampCopy = stamp;
  contextCopy = context;
  if (contextCopy)
  {
    contexts = self->_contexts;
    v8 = stampCopy;
    if (stampCopy)
    {
      if (!contexts)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v10 = self->_contexts;
        self->_contexts = Mutable;

        v8 = stampCopy;
        contexts = self->_contexts;
      }

      objc_msgSend_setObject_forKey_(contexts, v8, v8, contextCopy);
    }

    else
    {
      objc_msgSend_removeObjectForKey_(contexts, 0, contextCopy);
      if (!objc_msgSend_count(self->_contexts, v11, v12))
      {
        v13 = self->_contexts;
        self->_contexts = 0;
      }
    }
  }
}

- (void)_cacheValue:(id)value forProperty:(id)property
{
  valueCopy = value;
  propertyCopy = property;
  if (propertyCopy)
  {
    properties = self->_properties;
    if (valueCopy)
    {
      objc_msgSend_setObject_forKey_(properties, valueCopy, valueCopy, propertyCopy);
    }

    else
    {
      objc_msgSend_removeObjectForKey_(properties, 0, propertyCopy);
    }
  }
}

- (void)property:(id)property changedTo:(id)to from:(id)from
{
  v28 = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  toCopy = to;
  fromCopy = from;
  objc_msgSend__cacheValue_forProperty_(self, v11, toCopy, propertyCopy);
  v14 = objc_msgSend__copyForEnumerating(self->_handlers, v12, v13);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = v14;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v23, v27, 16);
  if (v17)
  {
    v18 = *v24;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v23 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_property_changedTo_from_(v20, v21, propertyCopy, toCopy, fromCopy);
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v21, &v23, v27, 16);
    }

    while (v17);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_cacheValue:(id)value forPersistentProperty:(id)property
{
  valueCopy = value;
  propertyCopy = property;
  if (propertyCopy)
  {
    persistentProperties = self->_persistentProperties;
    if (valueCopy)
    {
      objc_msgSend_setObject_forKey_(persistentProperties, valueCopy, valueCopy, propertyCopy);
    }

    else
    {
      objc_msgSend_removeObjectForKey_(persistentProperties, 0, propertyCopy);
    }
  }
}

- (void)persistentProperty:(id)property changedTo:(id)to from:(id)from
{
  v28 = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  toCopy = to;
  fromCopy = from;
  objc_msgSend__cacheValue_forPersistentProperty_(self, v11, toCopy, propertyCopy);
  v14 = objc_msgSend__copyForEnumerating(self->_handlers, v12, v13);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = v14;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v23, v27, 16);
  if (v17)
  {
    v18 = *v24;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v23 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_persistentProperty_changedTo_from_(v20, v21, propertyCopy, toCopy, fromCopy);
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v21, &v23, v27, 16);
    }

    while (v17);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)account:(id)account status:(id)status capabilities:(unint64_t)capabilities serviceLoginStatus:(unint64_t)loginStatus loginStatusMessage:(id)message
{
  v41 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  statusCopy = status;
  messageCopy = message;
  v16 = objc_msgSend_sharedInstance(IMAccountController, v14, v15);
  v34 = objc_msgSend_accountForUniqueID_(v16, v17, accountCopy);

  objc_msgSend_updateCapabilities_(v34, v18, capabilities);
  objc_msgSend_setIMAccountLoginStatus_(v34, v19, loginStatus);
  objc_msgSend_setCurrentAccountStatus_(v34, v20, statusCopy);
  objc_msgSend__processMyStatusChanged(self, v21, v22);
  v25 = objc_msgSend__copyForEnumerating(self->_handlers, v23, v24);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v26 = v25;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v36, v40, 16);
  if (v28)
  {
    v29 = *v37;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v37 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v36 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_account_status_capabilities_serviceLoginStatus_loginStatusMessage_(v31, v32, accountCopy, statusCopy, capabilities, loginStatus, messageCopy);
        }
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v32, &v36, v40, 16);
    }

    while (v28);
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)services:(id)services properties:(id)properties persistentProperties:(id)persistentProperties
{
  v85 = *MEMORY[0x1E69E9840];
  servicesCopy = services;
  propertiesCopy = properties;
  persistentPropertiesCopy = persistentProperties;
  objc_msgSend_removeAllObjects(self->_properties, v11, v12);
  v71 = propertiesCopy;
  objc_msgSend_addEntriesFromDictionary_(self->_properties, v13, propertiesCopy);
  objc_msgSend_removeAllObjects(self->_persistentProperties, v14, v15);
  selfCopy = self;
  v70 = persistentPropertiesCopy;
  objc_msgSend_addEntriesFromDictionary_(self->_persistentProperties, v16, persistentPropertiesCopy);
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v17 = servicesCopy;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v77, v84, 16);
  if (!v21)
  {
    v59 = v17;
LABEL_48:

    goto LABEL_50;
  }

  log = 0;
  v22 = *v78;
  do
  {
    for (i = 0; i != v21; i = (i + 1))
    {
      if (*v78 != v22)
      {
        objc_enumerationMutation(v17);
      }

      v24 = *(*(&v77 + 1) + 8 * i);
      v25 = objc_msgSend_sharedController(IMDaemonController, v19, v20, log);
      v28 = objc_msgSend__servicesToAllow(v25, v26, v27);

      if (!objc_msgSend_count(v28, v29, v30))
      {
        goto LABEL_16;
      }

      if (IMOSLoggingEnabled())
      {
        v34 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v82 = v28;
          _os_log_impl(&dword_1A823F000, v34, OS_LOG_TYPE_INFO, "Allowing only services: %@", buf, 0xCu);
        }
      }

      v35 = objc_msgSend_containsObject_(v28, v33, v24);
      v36 = IMOSLoggingEnabled();
      if (v35)
      {
        if (v36)
        {
          v37 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v82 = v24;
            _os_log_impl(&dword_1A823F000, v37, OS_LOG_TYPE_INFO, "  Allowing: %@", buf, 0xCu);
          }
        }

LABEL_16:
        v38 = objc_msgSend_sharedController(IMDaemonController, v31, v32);
        v41 = objc_msgSend__servicesToDeny(v38, v39, v40);

        if (objc_msgSend_count(v41, v42, v43))
        {
          if (IMOSLoggingEnabled())
          {
            v46 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v82 = v41;
              _os_log_impl(&dword_1A823F000, v46, OS_LOG_TYPE_INFO, "Denying services: %@", buf, 0xCu);
            }
          }

          v47 = objc_msgSend_containsObject_(v41, v45, v24);
          v48 = IMOSLoggingEnabled();
          if (v47)
          {
            if (v48)
            {
              v49 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v82 = v24;
                _os_log_impl(&dword_1A823F000, v49, OS_LOG_TYPE_INFO, "  Skipping: %@", buf, 0xCu);
              }

              goto LABEL_41;
            }

            goto LABEL_42;
          }

          if (v48)
          {
            v51 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v82 = v24;
              _os_log_impl(&dword_1A823F000, v51, OS_LOG_TYPE_INFO, "  Allowing: %@", buf, 0xCu);
            }
          }
        }

        v49 = objc_msgSend_objectForKey_(selfCopy->_services, v44, v24);
        if (!v49)
        {
          v49 = objc_msgSend_serviceWithInternalName_(IMServiceImpl, v52, v24);
          if (v49)
          {
            v55 = log;
            if (!log)
            {
              services = selfCopy->_services;
              if (services)
              {
                v55 = objc_msgSend_mutableCopy(services, v53, v54);
              }

              else
              {
                v55 = objc_alloc_init(MEMORY[0x1E695DF90]);
              }
            }

            objc_msgSend_setObject_forKey_(v55, v53, v49, v24, v55);
          }
        }

LABEL_41:

LABEL_42:
        goto LABEL_43;
      }

      if (v36)
      {
        v50 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v82 = v24;
          _os_log_impl(&dword_1A823F000, v50, OS_LOG_TYPE_INFO, "  Skipping: %@", buf, 0xCu);
        }
      }

LABEL_43:
    }

    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v77, v84, 16);
  }

  while (v21);

  if (log)
  {
    v21 = log;
    v59 = selfCopy->_services;
    selfCopy->_services = v21;
    goto LABEL_48;
  }

  v21 = 0;
LABEL_50:
  v60 = objc_msgSend__copyForEnumerating(selfCopy->_handlers, v57, v58);
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v61 = v60;
  v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v62, &v73, v83, 16);
  if (v63)
  {
    v64 = *v74;
    do
    {
      for (j = 0; j != v63; ++j)
      {
        if (*v74 != v64)
        {
          objc_enumerationMutation(v61);
        }

        v66 = *(*(&v73 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_services_properties_persistentProperties_(v66, v67, v17, v71, v70);
        }
      }

      v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v61, v67, &v73, v83, 16);
    }

    while (v63);
  }

  v68 = *MEMORY[0x1E69E9840];
}

- (void)service:(id)service properties:(id)properties defaults:(id)defaults defaultAccountSettings:(id)settings allAccounts:(id)accounts activeAccounts:(id)activeAccounts
{
  v171 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  propertiesCopy = properties;
  defaultsCopy = defaults;
  settingsCopy = settings;
  accountsCopy = accounts;
  activeAccountsCopy = activeAccounts;
  v15 = objc_msgSend_sharedController(IMDaemonController, v13, v14);
  v125 = objc_msgSend__servicesToAllow(v15, v16, v17);

  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v166 = serviceCopy;
      v167 = 2112;
      v168 = accountsCopy;
      v169 = 2112;
      v170 = activeAccountsCopy;
      _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Service: %@   all accounts: %@   activeAccounts: %@", buf, 0x20u);
    }
  }

  if (objc_msgSend_count(v125, v18, v19) && (objc_msgSend_containsObject_(v125, v21, serviceCopy) & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v81 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v166 = serviceCopy;
        _os_log_impl(&dword_1A823F000, v81, OS_LOG_TYPE_INFO, "  Skipping: %@ (not allowed)", buf, 0xCu);
      }
    }

    goto LABEL_81;
  }

  v23 = objc_msgSend_sharedController(IMDaemonController, v21, v22);
  v123 = objc_msgSend__servicesToDeny(v23, v24, v25);

  if (objc_msgSend_count(v123, v26, v27) && objc_msgSend_containsObject_(v123, v28, serviceCopy))
  {
    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v166 = serviceCopy;
        _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "  Skipping: %@ (denied)", buf, 0xCu);
      }
    }

    goto LABEL_80;
  }

  v133 = objc_msgSend_serviceWithInternalName_(IMServiceImpl, v28, serviceCopy);
  objc_msgSend_setServiceProperties_(v133, v30, propertiesCopy);
  objc_msgSend_setServiceDefaults_(v133, v31, defaultsCopy);
  objc_msgSend_setDefaultAccountSettings_(v133, v32, settingsCopy);
  v157 = 0u;
  v158 = 0u;
  v155 = 0u;
  v156 = 0u;
  obj = accountsCopy;
  v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v33, &v155, v164, 16);
  if (v36)
  {
    v37 = *v156;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v156 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v155 + 1) + 8 * i);
        v40 = objc_msgSend_sharedInstance(IMAccountController, v34, v35);
        v42 = objc_msgSend_accountForUniqueID_(v40, v41, v39);

        if (!v42)
        {
          v44 = objc_msgSend_serviceWithName_(self, v43, serviceCopy);
          v45 = [IMAccount alloc];
          v49 = objc_msgSend_initWithUniqueID_service_(v45, v46, v39, v44);
          if (v49)
          {
            v50 = objc_msgSend_sharedInstance(IMAccountController, v47, v48);
            objc_msgSend_addAccount_locally_(v50, v51, v49, 1);
          }
        }
      }

      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v34, &v155, v164, 16);
    }

    while (v36);
  }

  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v54 = objc_msgSend_sharedInstance(IMAccountController, v52, v53);
  v57 = objc_msgSend_accounts(v54, v55, v56);

  v59 = 0;
  v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v58, &v151, v163, 16);
  if (!v62)
  {
    v126 = 0;
    v63 = 0;
    goto LABEL_49;
  }

  v126 = 0;
  v63 = 0;
  v64 = *v152;
  do
  {
    for (j = 0; j != v62; ++j)
    {
      if (*v152 != v64)
      {
        objc_enumerationMutation(v57);
      }

      v66 = *(*(&v151 + 1) + 8 * j);
      v67 = objc_msgSend_service(v66, v60, v61);
      v68 = v67 == v133;

      if (v68)
      {
        v69 = objc_msgSend_uniqueID(v66, v60, v61);
        v71 = objc_msgSend_containsObject_(activeAccountsCopy, v70, v69);

        if (v71)
        {
          if (v63)
          {
            objc_msgSend_addObject_(v63, v72, v66);
            goto LABEL_37;
          }

          v75 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v63 = v75;
LABEL_36:
          objc_msgSend_addObject_(v75, v72, v66);
        }

        else
        {
          v75 = v126;
          if (v126)
          {
            goto LABEL_36;
          }

          v126 = objc_alloc_init(MEMORY[0x1E695DF70]);
          objc_msgSend_addObject_(v126, v76, v66);
        }

LABEL_37:
        v77 = objc_msgSend_uniqueID(v66, v73, v74);
        v79 = objc_msgSend_containsObject_(obj, v78, v77);

        if ((v79 & 1) == 0)
        {
          v80 = v59;
          if (!v59)
          {
            v80 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v59 = v80;
          objc_msgSend_addObject_(v80, v60, v66);
        }

        continue;
      }
    }

    v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v60, &v151, v163, 16);
  }

  while (v62);
LABEL_49:

  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v82 = v63;
  v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v82, v83, &v147, v162, 16);
  if (v86)
  {
    v87 = *v148;
    do
    {
      for (k = 0; k != v86; ++k)
      {
        if (*v148 != v87)
        {
          objc_enumerationMutation(v82);
        }

        v89 = *(*(&v147 + 1) + 8 * k);
        v90 = objc_msgSend_sharedInstance(IMAccountController, v84, v85);
        objc_msgSend_activateAccount_locally_(v90, v91, v89, 1);
      }

      v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v82, v84, &v147, v162, 16);
    }

    while (v86);
  }

  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v92 = v126;
  v96 = objc_msgSend_countByEnumeratingWithState_objects_count_(v92, v93, &v143, v161, 16);
  if (v96)
  {
    v97 = *v144;
    do
    {
      for (m = 0; m != v96; ++m)
      {
        if (*v144 != v97)
        {
          objc_enumerationMutation(v92);
        }

        v99 = *(*(&v143 + 1) + 8 * m);
        v100 = objc_msgSend_sharedInstance(IMAccountController, v94, v95);
        objc_msgSend_deactivateAccount_withDisable_(v100, v101, v99, 0);
      }

      v96 = objc_msgSend_countByEnumeratingWithState_objects_count_(v92, v94, &v143, v161, 16);
    }

    while (v96);
  }

  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  v102 = v59;
  v106 = objc_msgSend_countByEnumeratingWithState_objects_count_(v102, v103, &v139, v160, 16);
  if (v106)
  {
    v107 = *v140;
    do
    {
      for (n = 0; n != v106; ++n)
      {
        if (*v140 != v107)
        {
          objc_enumerationMutation(v102);
        }

        v109 = *(*(&v139 + 1) + 8 * n);
        v110 = objc_msgSend_sharedInstance(IMAccountController, v104, v105);
        objc_msgSend_deleteAccount_locally_(v110, v111, v109, 1);
      }

      v106 = objc_msgSend_countByEnumeratingWithState_objects_count_(v102, v104, &v139, v160, 16);
    }

    while (v106);
  }

  v114 = objc_msgSend__copyForEnumerating(self->_handlers, v112, v113);
  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v115 = v114;
  v117 = objc_msgSend_countByEnumeratingWithState_objects_count_(v115, v116, &v135, v159, 16);
  if (v117)
  {
    v118 = *v136;
    do
    {
      for (ii = 0; ii != v117; ++ii)
      {
        if (*v136 != v118)
        {
          objc_enumerationMutation(v115);
        }

        v120 = *(*(&v135 + 1) + 8 * ii);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_service_properties_defaults_defaultAccountSettings_allAccounts_activeAccounts_(v120, v121, serviceCopy, propertiesCopy, defaultsCopy, settingsCopy, obj, activeAccountsCopy);
        }
      }

      v117 = objc_msgSend_countByEnumeratingWithState_objects_count_(v115, v121, &v135, v159, 16);
    }

    while (v117);
  }

LABEL_80:
LABEL_81:

  v122 = *MEMORY[0x1E69E9840];
}

- (void)account:(id)account defaults:(id)defaults blockList:(id)list allowList:(id)allowList blockingMode:(unsigned int)mode blockIdleStatus:(BOOL)status status:(id)a9 capabilities:(unint64_t)self0 serviceLoginStatus:(unint64_t)self1 loginStatusMessage:(id)self2
{
  messageCopy = message;
  v16 = a9;
  accountCopy = account;
  objc_msgSend_account_defaultsChanged_(self, v17, accountCopy, defaults);
  objc_msgSend_account_status_capabilities_serviceLoginStatus_loginStatusMessage_(self, v18, accountCopy, v16, capabilities, loginStatus, messageCopy);
}

- (void)setupComplete:(BOOL)complete info:(id)info
{
  completeCopy = complete;
  v165 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (completeCopy)
      {
        v6 = @"YES";
      }

      *buf = 138412290;
      v161 = v6;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Setup complete with success %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEBUG, "Setup starting", buf, 2u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = MarcoLoggingStringForMessageData();
      *buf = 138412290;
      v161 = v11;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEBUG, "Setup info: %@", buf, 0xCu);
    }
  }

  v12 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7F68], v8, v9);
  v14 = objc_msgSend_objectForKey_(infoCopy, v13, *MEMORY[0x1E69A7B70]);
  objc_msgSend_setAllowedChatBotExtensions_(v12, v15, v14);

  v17 = objc_msgSend_objectForKey_(infoCopy, v16, *MEMORY[0x1E69A7B80]);
  LODWORD(v12) = objc_msgSend_intValue(v17, v18, v19);

  v22 = objc_msgSend_sharedController(IMDaemonController, v20, v21);
  objc_msgSend_setProcessCapabilities_(v22, v23, v12);

  v25 = objc_msgSend_objectForKey_(infoCopy, v24, *MEMORY[0x1E69A7BF8]);
  v27 = objc_msgSend_objectForKey_(infoCopy, v26, *MEMORY[0x1E69A7BF0]);
  v29 = objc_msgSend_objectForKey_(infoCopy, v28, *MEMORY[0x1E69A7BE0]);
  objc_msgSend_services_properties_persistentProperties_(self, v30, v25, v27, v29);

  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  obj = objc_msgSend_objectForKey_(infoCopy, v31, *MEMORY[0x1E69A7C00]);
  v141 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v32, &v156, v164, 16);
  if (v141)
  {
    v140 = *v157;
    do
    {
      v33 = 0;
      do
      {
        if (*v157 != v140)
        {
          v34 = v33;
          objc_enumerationMutation(obj);
          v33 = v34;
        }

        v142 = v33;
        v35 = *(*(&v156 + 1) + 8 * v33);
        if (IMOSLoggingEnabled())
        {
          v37 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v161 = v35;
            _os_log_impl(&dword_1A823F000, v37, OS_LOG_TYPE_DEBUG, "Service info: %@", buf, 0xCu);
          }
        }

        v38 = objc_msgSend_objectForKey_(v35, v36, *MEMORY[0x1E69A7AB8]);
        v40 = objc_msgSend_objectForKey_(v35, v39, *MEMORY[0x1E69A7AC0]);
        v42 = objc_msgSend_objectForKey_(v35, v41, *MEMORY[0x1E69A7AB0]);
        v44 = objc_msgSend_objectForKey_(v35, v43, *MEMORY[0x1E69A7AA8]);
        v46 = objc_msgSend_objectForKey_(v35, v45, *MEMORY[0x1E69A7A98]);
        v48 = objc_msgSend_objectForKey_(v35, v47, *MEMORY[0x1E69A7AA0]);
        objc_msgSend_service_properties_defaults_defaultAccountSettings_allAccounts_activeAccounts_(self, v49, v38, v40, v42, v44, v46, v48);

        v154 = 0u;
        v155 = 0u;
        v152 = 0u;
        v153 = 0u;
        v144 = objc_msgSend_objectForKey_(v35, v50, *MEMORY[0x1E69A7A90]);
        v146 = objc_msgSend_countByEnumeratingWithState_objects_count_(v144, v51, &v152, v163, 16);
        if (v146)
        {
          v145 = *v153;
          do
          {
            for (i = 0; i != v146; ++i)
            {
              if (*v153 != v145)
              {
                objc_enumerationMutation(v144);
              }

              v53 = *(*(&v152 + 1) + 8 * i);
              v54 = objc_autoreleasePoolPush();
              if (IMOSLoggingEnabled())
              {
                v56 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v161 = v53;
                  _os_log_impl(&dword_1A823F000, v56, OS_LOG_TYPE_DEBUG, "Account info: %@", buf, 0xCu);
                }
              }

              v57 = objc_msgSend_objectForKey_(v53, v55, *MEMORY[0x1E69A6808]);
              v59 = objc_msgSend_objectForKey_(v53, v58, *MEMORY[0x1E69A67F8]);
              objc_msgSend_account_defaultsChanged_(self, v60, v57, v59);

              v62 = objc_msgSend_objectForKey_(v53, v61, *MEMORY[0x1E69A6820]);
              v64 = objc_msgSend_objectForKey_(v53, v63, *MEMORY[0x1E69A67F0]);
              v67 = objc_msgSend_unsignedLongLongValue(v64, v65, v66);
              v69 = objc_msgSend_objectForKey_(v53, v68, *MEMORY[0x1E69A6810]);
              v72 = objc_msgSend_intValue(v69, v70, v71);
              v74 = objc_msgSend_objectForKey_(v53, v73, *MEMORY[0x1E69A6818]);
              objc_msgSend_account_status_capabilities_serviceLoginStatus_loginStatusMessage_(self, v75, v57, v62, v67, v72, v74);

              v78 = objc_msgSend_objectForKey_(v53, v76, *MEMORY[0x1E69A6800]);
              if (v78)
              {
                objc_msgSend_account_groupsChanged_error_(self, v77, v57, v78, 0);
              }

              objc_autoreleasePoolPop(v54);
            }

            v146 = objc_msgSend_countByEnumeratingWithState_objects_count_(v144, v79, &v152, v163, 16);
          }

          while (v146);
        }

        v33 = v142 + 1;
      }

      while (v142 + 1 != v141);
      v141 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v80, &v156, v164, 16);
    }

    while (v141);
  }

  v82 = objc_msgSend_objectForKey_(infoCopy, v81, *MEMORY[0x1E69A7B98]);
  objc_msgSend__setStamp_forContext_(self, v83, v82, @"DBModificationStamp");
  v85 = objc_msgSend_objectForKey_(infoCopy, v84, *MEMORY[0x1E69A7BA8]);
  objc_msgSend__setStamp_forContext_(self, v86, v85, @"fileTransfers");
  v89 = objc_msgSend_sharedController(IMDaemonController, v87, v88);
  v91 = (*MEMORY[0x1E69A6268] & objc_msgSend_capabilitiesForListenerID_(v89, v90, 0)) == 0;

  if (v91)
  {
    if (IMOSLoggingEnabled())
    {
      v102 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v102, OS_LOG_TYPE_DEBUG, "Clearing file transfer center", buf, 2u);
      }
    }

    v93 = objc_msgSend_sharedInstance(IMFileTransferCenter, v100, v101);
    objc_msgSend__handleAllFileTransfers_(v93, v103, 0);
  }

  else
  {
    v93 = objc_msgSend_objectForKey_(infoCopy, v92, *MEMORY[0x1E69A7BA0]);
    v94 = IMOSLoggingEnabled();
    if (v93)
    {
      if (v94)
      {
        v97 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v97, OS_LOG_TYPE_DEBUG, "Updating file transfers", buf, 2u);
        }
      }

      v98 = objc_msgSend_sharedInstance(IMFileTransferCenter, v95, v96);
      objc_msgSend__handleAllFileTransfers_(v98, v99, v93);
    }

    else if (v94)
    {
      v104 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v104, OS_LOG_TYPE_DEBUG, "Not updating file transfers", buf, 2u);
      }
    }

    v105 = objc_msgSend_objectForKey_(infoCopy, v95, *MEMORY[0x1E69A7BC0]);
    v106 = IMOSLoggingEnabled();
    if (v105)
    {
      if (v106)
      {
        v109 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v109, OS_LOG_TYPE_DEBUG, "Updating file transfers for group photo", buf, 2u);
        }
      }

      v110 = objc_msgSend_sharedInstance(IMFileTransferCenter, v107, v108);
      objc_msgSend__handleAllFileTransfers_(v110, v111, v105);
    }

    else if (v106)
    {
      v112 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v112, OS_LOG_TYPE_DEBUG, "Not updating file transfers for group photo", buf, 2u);
      }
    }
  }

  self->_setupComplete = 1;
  v115 = objc_msgSend_sharedController(IMDaemonController, v113, v114);
  v117 = (*MEMORY[0x1E69A62A0] & objc_msgSend_capabilitiesForListenerID_(v115, v116, 0)) == 0;

  if (v117)
  {
    objc_msgSend__reallyProcessMyStatusChanged(self, v118, v119);
    v122 = objc_msgSend_me(IMMe, v120, v121);
    objc_msgSend_rebuildIMHandles(v122, v123, v124);
  }

  if (IMOSLoggingEnabled())
  {
    v126 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG))
    {
      services = self->_services;
      *buf = 138412290;
      v161 = services;
      _os_log_impl(&dword_1A823F000, v126, OS_LOG_TYPE_DEBUG, "Setup is complete (Services: %@)", buf, 0xCu);
    }
  }

  objc_msgSend__deferredSetup_(self, v125, infoCopy);
  v130 = objc_msgSend__copyForEnumerating(self->_handlers, v128, v129);
  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v131 = v130;
  v133 = objc_msgSend_countByEnumeratingWithState_objects_count_(v131, v132, &v148, v162, 16);
  if (v133)
  {
    v134 = *v149;
    do
    {
      for (j = 0; j != v133; ++j)
      {
        if (*v149 != v134)
        {
          objc_enumerationMutation(v131);
        }

        v136 = *(*(&v148 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_setupComplete_info_(v136, v137, 1, infoCopy);
        }
      }

      v133 = objc_msgSend_countByEnumeratingWithState_objects_count_(v131, v137, &v148, v162, 16);
    }

    while (v133);
  }

  v138 = *MEMORY[0x1E69E9840];
}

- (void)_deferredSetup:(id)setup
{
  v139 = *MEMORY[0x1E69E9840];
  setupCopy = setup;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Performing deferred setup", buf, 2u);
    }
  }

  v7 = objc_msgSend_sharedRegistry(IMChatRegistry, v4, v5);
  objc_msgSend__daemonBeganDeferredSetup(v7, v8, v9);

  v12 = objc_msgSend_sharedController(IMDaemonController, v10, v11);
  v14 = objc_msgSend_capabilitiesForListenerID_(v12, v13, 0);
  v125 = *MEMORY[0x1E69A6260];
  v15 = ((*MEMORY[0x1E69A62B0] | *MEMORY[0x1E69A6258] | *MEMORY[0x1E69A6260]) & v14) == 0;

  if (v15)
  {
    v34 = objc_msgSend_sharedRegistry(IMChatRegistry, v16, v17);
    objc_msgSend__handleChatReconstructions_(v34, v49, 0);
    goto LABEL_27;
  }

  v18 = objc_msgSend_sharedController(IMKeyTransparencyController, v16, v17);
  objc_msgSend_setupComplete_info_(v18, v19, 1, setupCopy);

  v21 = objc_msgSend_objectForKey_(setupCopy, v20, *MEMORY[0x1E69A7BB8]);
  v24 = objc_msgSend_intValue(v21, v22, v23);

  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = @"NO";
      if (v24)
      {
        v28 = @"YES";
      }

      *buf = 138412290;
      v136 = v28;
      _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_INFO, "Setup info uses legacy chat version: %@", buf, 0xCu);
    }
  }

  v29 = v24 != 0;
  v30 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v25, v26);
  objc_msgSend__setOneChatForceDisabled_persist_(v30, v31, v29, 0);

  v32 = MEMORY[0x1E69A7B90];
  v34 = objc_msgSend_objectForKey_(setupCopy, v33, *MEMORY[0x1E69A7B90]);
  v36 = objc_msgSend_objectForKey_(setupCopy, v35, *MEMORY[0x1E69A7BE8]);
  v38 = objc_msgSend_objectForKey_(setupCopy, v37, *MEMORY[0x1E69A7B78]);
  v40 = objc_msgSend_objectForKey_(setupCopy, v39, *MEMORY[0x1E69A7B88]);
  v44 = objc_msgSend_objectForKey_(setupCopy, v41, *MEMORY[0x1E69A7BB0]);
  if (v38)
  {
    v45 = objc_msgSend_sharedRegistry(IMChatRegistry, v42, v43);
    objc_msgSend__handleCachingAliasToCNIDMap_(v45, v46, v38);
  }

  if (v36)
  {
    v47 = objc_msgSend_sharedRegistry(IMChatRegistry, v42, v43);
    objc_msgSend__handleMergedChatReconstructions_(v47, v48, v36);
LABEL_19:

    goto LABEL_20;
  }

  if (v34)
  {
    v47 = objc_msgSend_sharedRegistry(IMChatRegistry, v42, v43);
    v51 = objc_msgSend_objectForKey_(setupCopy, v50, *v32);
    objc_msgSend__handleChatReconstructions_(v47, v52, v51);

    goto LABEL_19;
  }

LABEL_20:
  if (v40)
  {
    v53 = objc_msgSend_sharedRegistry(IMChatRegistry, v42, v43);
    v56 = objc_msgSend_BOOLValue(v40, v54, v55);
    objc_msgSend__updateBlackholedChatsExist_(v53, v57, v56);
  }

  if (v44)
  {
    v58 = objc_msgSend_sharedRegistry(IMChatRegistry, v42, v43);
    v61 = objc_msgSend_BOOLValue(v44, v59, v60);
    objc_msgSend__updateFilterediMessageChatsExist_(v58, v62, v61);
  }

  v63 = objc_msgSend_sharedRegistry(IMChatRegistry, v42, v43);
  objc_msgSend_updateRecoverableMessagesMetadataSynchronously_loadChats_completionHandler_(v63, v64, 0, 0, 0);

  v68 = objc_msgSend_objectForKey_(setupCopy, v65, *MEMORY[0x1E69A7BD8]);
  if (v68)
  {
    v69 = objc_msgSend_sharedInstance(MEMORY[0x1E69A80A8], v66, v67);
    objc_msgSend__setCachedOverrideDatesByHandleID_(v69, v70, v68);
  }

LABEL_27:
  v72 = objc_msgSend_objectForKey_(setupCopy, v71, *MEMORY[0x1E69A7C28]);
  v75 = objc_msgSend_unsignedLongLongValue(v72, v73, v74);
  objc_msgSend_vcCapabilitiesChanged_(self, v76, v75);

  v79 = objc_msgSend_sharedRegistry(IMChatRegistry, v77, v78);
  objc_msgSend__daemonCompletedDeferredSetup(v79, v80, v81);

  self->_postedSetupComplete = 1;
  v84 = objc_msgSend__copyForEnumerating(self->_handlers, v82, v83);
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v85 = v84;
  v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v86, &v131, v138, 16);
  if (v87)
  {
    v88 = *v132;
    do
    {
      for (i = 0; i != v87; ++i)
      {
        if (*v132 != v88)
        {
          objc_enumerationMutation(v85);
        }

        v90 = *(*(&v131 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_setupComplete(v90, v91, v92);
        }
      }

      v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v91, &v131, v138, 16);
    }

    while (v87);
  }

  if ((objc_msgSend__hidingDisconnect(self, v93, v94) & 1) == 0)
  {
    v97 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v95, v96);
    objc_msgSend___mainThreadPostNotificationName_object_(v97, v98, @"__kIMDaemonDidConnectNotification", 0);
  }

  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v99 = objc_msgSend_allServicesNonBlocking(IMServiceImpl, v95, v96);
  v103 = objc_msgSend_countByEnumeratingWithState_objects_count_(v99, v100, &v127, v137, 16);
  if (v103)
  {
    v104 = *v128;
    do
    {
      for (j = 0; j != v103; ++j)
      {
        if (*v128 != v104)
        {
          objc_enumerationMutation(v99);
        }

        v106 = *(*(&v127 + 1) + 8 * j);
        if ((objc_msgSend__hidingDisconnect(self, v101, v102) & 1) == 0)
        {
          v109 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v107, v108);
          objc_msgSend___mainThreadPostNotificationName_object_(v109, v110, @"ServiceDidConnect", v106);
        }

        v111 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v107, v108);
        objc_msgSend___mainThreadPostNotificationName_object_(v111, v112, @"__k_IMServiceDidConnectNotification", v106);
      }

      v103 = objc_msgSend_countByEnumeratingWithState_objects_count_(v99, v101, &v127, v137, 16);
    }

    while (v103);
  }

  v115 = objc_msgSend_sharedController(IMDaemonController, v113, v114);
  v118 = objc_msgSend_capabilities(v115, v116, v117);

  if ((v118 & v125) != 0)
  {
    IMSMSReportSpamActivateExtensions();
  }

  v121 = objc_msgSend_sharedController(IMDaemonController, v119, v120);
  objc_msgSend__noteSetupComplete(v121, v122, v123);

  v124 = *MEMORY[0x1E69E9840];
}

- (void)newSetupInfoAvailable
{
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v19 = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Received notice from daemon that setup info has been invalidated, re-requesting", v19, 2u);
    }
  }

  v5 = objc_msgSend_sharedController(IMDaemonController, v2, v3);
  objc_msgSend_requestSetup(v5, v6, v7);

  v10 = objc_msgSend_sharedController(IMDaemonController, v8, v9);
  v13 = objc_msgSend_blockMainThreadForNewSetup(v10, v11, v12);

  if (v13)
  {
    v16 = objc_msgSend_sharedController(IMDaemonController, v14, v15);
    objc_msgSend_blockUntilConnected(v16, v17, v18);
  }
}

- (void)databaseUpdated:(id)updated
{
  v37 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  if (updatedCopy)
  {
    objc_msgSend__setStamp_forContext_(self, v4, updatedCopy, @"DBModificationStamp");
  }

  v7 = objc_msgSend__copyForEnumerating(self->_handlers, v4, v5);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = v7;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v31, v36, 16);
  if (v10)
  {
    v11 = *v32;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_databaseUpdated_(v13, v14, updatedCopy);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v14, &v31, v36, 16);
    }

    while (v10);
  }

  v17 = objc_msgSend__copyForEnumerating(self->_handlers, v15, v16);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = v17;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v27, v35, 16);
  if (v20)
  {
    v21 = *v28;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v27 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_databaseUpdated(v23, v24, v25);
        }
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v24, &v27, v35, 16);
    }

    while (v20);
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)databaseChatSpamUpdated:(id)updated
{
  v21 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  v7 = objc_msgSend__copyForEnumerating(self->_handlers, v5, v6);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v7;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v16, v20, 16);
  if (v10)
  {
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_databaseChatSpamUpdated_(v13, v14, updatedCopy);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v14, &v16, v20, 16);
    }

    while (v10);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)didFetchSyncStateStats:(id)stats
{
  v18 = *MEMORY[0x1E69E9840];
  statsCopy = stats;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v17 = statsCopy;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEBUG, "didFetchSyncStateStats %@", buf, 0xCu);
    }
  }

  if (statsCopy)
  {
    v8 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v5, v6);
    v14 = @"IMCloudKitSyncStatisticsKey";
    v15 = statsCopy;
    v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, &v15, &v14, 1);
    objc_msgSend_postNotificationName_object_userInfo_(v8, v11, @"IMCloudKitFetchedSyncStatsNotification", self, v10);
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Received nil sync state stats", buf, 2u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)didFetchRampState:(id)state
{
  v18 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v17 = stateCopy;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEBUG, "didFetchRampState %@", buf, 0xCu);
    }
  }

  if (stateCopy)
  {
    v8 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v5, v6);
    v14 = @"IMCloudKitRampStateKey";
    v15 = stateCopy;
    v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, &v15, &v14, 1);
    objc_msgSend_postNotificationName_object_userInfo_(v8, v11, @"IMCloudKitFetchedRampStateNotification", self, v10);
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Received nil rampState", buf, 2u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)didAttemptToDisableiCloudBackups:(int64_t)backups error:(id)error
{
  v30[2] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (errorCopy)
  {
    v29[0] = @"IMCloudKitBackupDisableBackupAttemptResultKey";
    v8 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v6, backups);
    v29[1] = @"IMCloudKitBackupDisableBackupAttemptErrorKey";
    v30[0] = v8;
    v30[1] = errorCopy;
    v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, v30, v29, 2);

    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v16 = objc_msgSend_localizedDescription(errorCopy, v14, v15);
        *buf = 134218242;
        backupsCopy2 = backups;
        v27 = 2112;
        v28 = v16;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Attempt to disable iCloud backups resulted in error. Result: %ld, error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v17 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v6, backups, @"IMCloudKitBackupDisableBackupAttemptResultKey");
    v24 = v17;
    v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v18, &v24, &v23, 1);

    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        backupsCopy2 = backups;
        _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "did attempt to disable iCloud backups: %ld", buf, 0xCu);
      }
    }
  }

  v20 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v11, v12);
  objc_msgSend_postNotificationName_object_userInfo_(v20, v21, @"IMCloudKitAttemptedToDisableiCloudBackupsNotification", self, v10);

  v22 = *MEMORY[0x1E69E9840];
}

- (void)didFetchCloudKitSyncDebuggingInfo:(id)info
{
  v13 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = infoCopy;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "did fetch cloudkit sync state debugging info: %@", &v11, 0xCu);
    }
  }

  v8 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v5, v6);
  objc_msgSend_postNotificationName_object_userInfo_(v8, v9, @"IMCloudKitFetchedSyncDebuggingInfoNotification", self, infoCopy);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)forwardInvocation:(id)invocation
{
  v25 = *MEMORY[0x1E69E9840];
  invocationCopy = invocation;
  v5 = objc_autoreleasePoolPush();
  v8 = objc_msgSend_copy(self->_handlers, v6, v7);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v8;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v20, v24, 16);
  if (v13)
  {
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        objc_msgSend_selector(invocationCopy, v11, v12);
        if (objc_opt_respondsToSelector())
        {
          v17 = objc_autoreleasePoolPush();
          objc_msgSend_invokeWithTarget_(invocationCopy, v18, v16);
          objc_autoreleasePoolPop(v17);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v20, v24, 16);
    }

    while (v13);
  }

  objc_autoreleasePoolPop(v5);
  v19 = *MEMORY[0x1E69E9840];
}

- (void)updateCloudKitState
{
  v5 = objc_msgSend_sharedInstance(IMCloudKitHooks, a2, v2);
  objc_msgSend__updateCloudKitState(v5, v3, v4);
}

- (void)updateCloudKitStateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7 = objc_msgSend_sharedInstance(IMCloudKitHooks, v4, v5);
  objc_msgSend__updateCloudKitStateWithDictionary_(v7, v6, dictionaryCopy);
}

- (void)updateCloudKitProgressWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7 = objc_msgSend_sharedInstance(IMCloudKitHooks, v4, v5);
  objc_msgSend__updateCloudKitProgressWithDictionary_(v7, v6, dictionaryCopy);
}

- (void)receivedUrgentRequestForMessages:(id)messages
{
  v21 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  v7 = objc_msgSend__copyForEnumerating(self->_handlers, v5, v6);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v7;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v16, v20, 16);
  if (v10)
  {
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_receivedUrgentRequestForMessages_(v13, v14, messagesCopy);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v14, &v16, v20, 16);
    }

    while (v10);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)updatePendingNicknameUpdates:(id)updates handledNicknames:(id)nicknames archivedNicknames:(id)archivedNicknames
{
  v50 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  nicknamesCopy = nicknames;
  archivedNicknamesCopy = archivedNicknames;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v49 = updatesCopy;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Got back pending nickname updates %@", buf, 0xCu);
    }
  }

  v11 = objc_alloc(MEMORY[0x1E695DF90]);
  v14 = objc_msgSend_count(updatesCopy, v12, v13);
  v16 = objc_msgSend_initWithCapacity_(v11, v15, v14);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = sub_1A82A3974;
  v46[3] = &unk_1E78109A0;
  v17 = v16;
  v47 = v17;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(updatesCopy, v18, v46);
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v49 = nicknamesCopy;
      _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Got back handled nicknames %@", buf, 0xCu);
    }
  }

  v20 = objc_alloc(MEMORY[0x1E695DF90]);
  v23 = objc_msgSend_count(nicknamesCopy, v21, v22);
  v25 = objc_msgSend_initWithCapacity_(v20, v24, v23);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = sub_1A82A3A00;
  v44[3] = &unk_1E78109A0;
  v26 = v25;
  v45 = v26;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(nicknamesCopy, v27, v44);
  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v49 = archivedNicknamesCopy;
      _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "Got back archived nicknames %@", buf, 0xCu);
    }
  }

  v29 = objc_alloc(MEMORY[0x1E695DF90]);
  v32 = objc_msgSend_count(archivedNicknamesCopy, v30, v31);
  v34 = objc_msgSend_initWithCapacity_(v29, v33, v32);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_1A82A3A8C;
  v42[3] = &unk_1E78109A0;
  v43 = v34;
  v35 = v34;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(archivedNicknamesCopy, v36, v42);
  v39 = objc_msgSend_sharedInstance(IMNicknameController, v37, v38);
  objc_msgSend_updatePendingNicknames_handledNicknames_archivedNicknames_(v39, v40, v17, v26, v35);

  v41 = *MEMORY[0x1E69E9840];
}

- (void)updateNicknameHandlesForSharing:(id)sharing blocked:(id)blocked
{
  blockedCopy = blocked;
  sharingCopy = sharing;
  v10 = objc_msgSend_sharedInstance(IMNicknameController, v7, v8);
  objc_msgSend_updateSharingAllowList_denyList_(v10, v9, sharingCopy, blockedCopy);
}

- (void)updateTransitionedNicknameHandles:(id)handles
{
  handlesCopy = handles;
  v7 = objc_msgSend_sharedInstance(IMNicknameController, v4, v5);
  objc_msgSend_updateTransitionedNicknameHandles_(v7, v6, handlesCopy);
}

- (void)updateActiveNicknameRecords:(id)records
{
  recordsCopy = records;
  v7 = objc_msgSend_sharedInstance(IMNicknameController, v4, v5);
  objc_msgSend_updateIsActiveList_(v7, v6, recordsCopy);
}

- (void)updateIgnoredNicknameRecords:(id)records
{
  recordsCopy = records;
  v7 = objc_msgSend_sharedInstance(IMNicknameController, v4, v5);
  objc_msgSend_updateIsIgnoredList_(v7, v6, recordsCopy);
}

- (void)updateUnknownSenderRecords:(id)records
{
  recordsCopy = records;
  v7 = objc_msgSend_sharedInstance(IMNicknameController, v4, v5);
  objc_msgSend_updateUnknownSenderRecords_(v7, v6, recordsCopy);
}

- (void)updatePersonalNickname:(id)nickname
{
  nicknameCopy = nickname;
  v7 = objc_msgSend_sharedInstance(IMNicknameController, v4, v5);
  objc_msgSend_updatePersonalNickname_(v7, v6, nicknameCopy);
}

- (void)oneTimeCodesDidChange:(id)change
{
  v22 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = MEMORY[0x1E696AD98];
      v10 = objc_msgSend_count(changeCopy, v7, v8);
      v12 = objc_msgSend_numberWithUnsignedInteger_(v9, v11, v10);
      *buf = 138412290;
      v21 = v12;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Got the call back for validation codes count %@", buf, 0xCu);
    }
  }

  v13 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v4, v5);
  v18 = @"validCodes";
  v19 = changeCopy;
  v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v14, &v19, &v18, 1);
  objc_msgSend_postNotificationName_object_userInfo_(v13, v16, @"com.apple.imcore.otcUpdated", 0, v15);

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_resetPostedSetupCompleted
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Resetting posted setup complete after changing listener caps", v4, 2u);
    }
  }

  self->_postedSetupComplete = 0;
}

- (void)simSubscriptionsDidChange
{
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Raising notification that SIM subscriptions have changed.", v7, 2u);
    }
  }

  v5 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v2, v3);
  objc_msgSend___mainThreadPostNotificationName_object_(v5, v6, *MEMORY[0x1E69A78C0], 0);
}

- (void)account:(id)account conference:(id)conference remoteUser:(id)user properties:(id)properties
{
  v32 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  conferenceCopy = conference;
  userCopy = user;
  propertiesCopy = properties;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Received protected initiate request on CSD side, piping to IMAVHandler", buf, 2u);
    }
  }

  v17 = objc_msgSend_copy(self->_handlers, v14, v15);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = v17;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v26, v31, 16);
  if (v20)
  {
    v21 = *v27;
    do
    {
      v22 = 0;
      do
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v26 + 1) + 8 * v22);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_account_conference_remoteUser_properties_(v23, v24, accountCopy, conferenceCopy, userCopy, propertiesCopy, v26);
        }

        ++v22;
      }

      while (v20 != v22);
      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v24, &v26, v31, 16);
    }

    while (v20);
  }

  v25 = *MEMORY[0x1E69E9840];
}

@end