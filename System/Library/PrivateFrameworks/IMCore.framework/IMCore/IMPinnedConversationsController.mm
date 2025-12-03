@interface IMPinnedConversationsController
+ (id)_forceSyncDispatchQueue;
+ (id)_ubiquitousDispatchQueue;
+ (id)pinConfigurationMigrationKey;
+ (id)requiredKeys;
+ (id)sharedInstance;
- (BOOL)_canPostPinnedConversationsDidChangeNotification;
- (BOOL)_updateLocalStoreWithPinConfiguration:(id)configuration;
- (BOOL)pinConfigurationHasCompatibleVersion:(id)version;
- (BOOL)pinConfigurationHasCurrentVersion:(id)version;
- (BOOL)pinConfigurationIsValid:(id)valid;
- (BOOL)pinnedConversationsContainsChat:(id)chat;
- (BOOL)shouldSync;
- (BOOL)shouldUpdateExistingPinConfig:(id)config withProposedPinConfig:(id)pinConfig;
- (BOOL)shouldWriteProposedPinConfiguration:(id)configuration toUbiquitousStoreWithExistingPinConfiguration:(id)pinConfiguration;
- (IMPinnedConversationsController)init;
- (NSUbiquitousKeyValueStore)dataStore;
- (id)_dictionaryWithPinnedConversationIdentifiers:(id)identifiers chatMetadata:(id)metadata updateReason:(id)reason timestamp:(id)timestamp;
- (id)_locallyStoredPinConfiguration;
- (id)_metadataDictionaryForChat:(id)chat;
- (id)_ubiquitousPinConfigurationInStore:(id)store;
- (id)dictionaryWithPinnedConversationIdentifiers:(id)identifiers chatMetadata:(id)metadata updateReason:(id)reason;
- (id)matchingIdentifierForChat:(id)chat;
- (id)matchingIdentifierForChat:(id)chat inIdentifierSet:(id)set withMetadata:(id)metadata;
- (id)mostUpToDatePinConfigurationByComparingPinConfiguration:(id)configuration toOtherPinConfiguration:(id)pinConfiguration;
- (id)pinnedConversationIdentifiersFromPinConfiguration:(id)configuration;
- (id)validatedPinConfigurationWithCurrentVersionForPinConfiguration:(id)configuration;
- (unint64_t)pinIndexForChat:(id)chat inIdentifierSet:(id)set withMetadata:(id)metadata;
- (void)_fetchUbiquitousPinConfiguration:(id)configuration;
- (void)_handleChatGroupIDDidChangeNotification:(id)notification;
- (void)_postDeferredPinnedConversationsDidChangeNotificationIfNecessary;
- (void)_postPinnedConversationsDidChangeNotification;
- (void)_setPinnedConversationIdentifiers:(id)identifiers withChatMetadata:(id)metadata updateReason:(id)reason shouldUpdateStores:(BOOL)stores;
- (void)_updateUbiquitousStoreWithPinConfiguration:(id)configuration completion:(id)completion;
- (void)conversationWasDeletedWithIdentifier:(id)identifier;
- (void)conversationsWereDeletedWithIdentifiers:(id)identifiers;
- (void)fetchMostUpToDatePinConfiguration:(id)configuration;
- (void)fetchPinnedConversationIdentifiersFromLocalStore;
- (void)forceSynchronizeUbiquitousStore;
- (void)handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification:(id)notification;
- (void)imCloudKitHooksSetEnabledDidReturn:(id)return;
- (void)performPinConfigValidationAndMigrationIfNecessary;
- (void)setPinnedChats:(id)chats withUpdateReason:(id)reason;
- (void)synchronizeLocalDataStore;
- (void)updateStoresWithPinConfiguration:(id)configuration;
@end

@implementation IMPinnedConversationsController

- (IMPinnedConversationsController)init
{
  v30 = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = IMPinnedConversationsController;
  v4 = [(IMPinnedConversationsController *)&v27 init];
  if (v4)
  {
    if (objc_msgSend_processSupportsPinnedConversations(IMPinnedConversationsController, v2, v3))
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v10 = objc_msgSend_currentPinConfigurationVersion(IMPinnedConversationsController, v8, v9);
          *buf = 134217984;
          v29 = v10;
          _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "currentPinConfigurationVersion == %li", buf, 0xCu);
        }
      }

      v4->_numberOfPendingForceSyncs = 0;
      v11 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v5, v6);
      objc_msgSend_addObserver_selector_name_object_(v11, v12, v4, sel_imCloudKitHooksSetEnabledDidReturn_, @"com.apple.IMCore.IMCloudKitHooks.SetEnabledReturned", 0);
      objc_msgSend_addObserver_selector_name_object_(v11, v13, v4, sel__handleChatGroupIDDidChangeNotification_, @"__kIMChatRegistryGroupIDChangedNotification", 0);
      objc_msgSend_addObserver_selector_name_object_(v11, v14, v4, sel__connectedToDaemon_, @"__kIMDaemonDidConnectNotification", 0);
      objc_msgSend_fetchPinnedConversationIdentifiersFromLocalStore(v4, v15, v16);
      shouldSync = objc_msgSend_shouldSync(v4, v17, v18);
      v20 = IMOSLoggingEnabled();
      if (shouldSync)
      {
        if (v20)
        {
          v23 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "sync to local data store", buf, 2u);
          }
        }

        objc_msgSend_synchronizeLocalDataStore(v4, v21, v22);
      }

      else if (v20)
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "cannot sync to local data store", buf, 2u);
        }
      }

      objc_msgSend_performPinConfigValidationAndMigrationIfNecessary(v4, v21, v22);
      v4->_hasCompletedInitialization = 1;
    }

    else
    {
      v11 = IMLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1A84DEC98(v11);
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)_locallyStoredPinConfiguration
{
  v3 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8018], a2, v2);
  v5 = objc_msgSend_getValueFromDomain_forKey_(v3, v4, @"com.apple.messages.pinning", @"pD");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_postPinnedConversationsDidChangeNotification
{
  if (objc_msgSend__canPostPinnedConversationsDidChangeNotification(self, a2, v2))
  {
    v10 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v4, v5);
    v8 = objc_msgSend_copy(self->_pinnedConversationIdentifierSet, v6, v7);
    objc_msgSend_postNotificationName_object_(v10, v9, @"__kIMPinnedConversationsDidChangeNotification", v8);
  }

  else
  {
    self->_hasDefferedPinnedConversationsDidChangeNotification = 1;
  }
}

- (BOOL)_canPostPinnedConversationsDidChangeNotification
{
  if (!self->_hasCompletedInitialization)
  {
    v7 = IMOSLoggingEnabled();
    if (!v7)
    {
      return v7;
    }

    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v13 = 0;
      v9 = "Deffering pinned conversations did change notification until after initialization is completed.";
      v10 = &v13;
LABEL_10:
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, v9, v10, 2u);
    }

LABEL_11:

    LOBYTE(v7) = 0;
    return v7;
  }

  v3 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  isConnected = objc_msgSend_isConnected(v3, v4, v5);

  if ((isConnected & 1) == 0)
  {
    v7 = IMOSLoggingEnabled();
    if (!v7)
    {
      return v7;
    }

    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = 0;
      v9 = "Deffering pinned conversations did change notification until after connected to daemon.";
      v10 = &v12;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  LOBYTE(v7) = 1;
  return v7;
}

- (BOOL)shouldSync
{
  v3 = objc_msgSend_sharedInstance(IMCloudKitHooks, a2, v2);
  if (objc_msgSend_isEnabled(v3, v4, v5))
  {
    v8 = objc_msgSend_sharedInstance(IMCloudKitHooks, v6, v7);
    v11 = objc_msgSend_mocAccountsMatch(v8, v9, v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)performPinConfigValidationAndMigrationIfNecessary
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v6 = objc_msgSend_pinConfigurationMigrationKey(v3, v4, v5);
  v9 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8018], v7, v8);
  BoolFromDomain_forKey = objc_msgSend_getBoolFromDomain_forKey_(v9, v10, @"com.apple.messages.pinning", v6);

  if ((BoolFromDomain_forKey & 1) == 0)
  {
    v15 = objc_msgSend__locallyStoredPinConfiguration(self, v12, v13);
    if (v15)
    {
      v16 = objc_msgSend_validatedPinConfigurationWithCurrentVersionForPinConfiguration_(self, v14, v15);
      v18 = objc_msgSend_pinnedConversationIdentifiersFromPinConfiguration_(self, v17, v16);
      v21 = objc_msgSend_chatMetadataFromPinConfiguration_(self, v19, v16);
      if (!v16)
      {
        v22 = IMLogHandleForCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_1A84DECDC(v15, v22);
        }
      }

      objc_msgSend__setPinnedConversationIdentifiers_withChatMetadata_updateReason_shouldUpdateStores_(self, v20, v18, v21, @"migration", 1);
    }

    else if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v29 = 136315138;
        v30 = "[IMPinnedConversationsController performPinConfigValidationAndMigrationIfNecessary]";
        _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "%s Not performing migration because the local pin config is nil", &v29, 0xCu);
      }
    }

    v26 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8018], v23, v24);
    objc_msgSend_setBool_forDomain_forKey_(v26, v27, 1, @"com.apple.messages.pinning", v6);
  }

  v28 = *MEMORY[0x1E69E9840];
}

+ (id)pinConfigurationMigrationKey
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_currentPinConfigurationVersion(self, a2, v2);
  v8 = objc_msgSend_currentPinConfigurationRevision(self, v6, v7);
  return objc_msgSend_stringWithFormat_(v4, v9, @"IMPinningPinConfigMigrationKey-v%li-r%li", v5, v8);
}

- (void)_postDeferredPinnedConversationsDidChangeNotificationIfNecessary
{
  if (self->_hasDefferedPinnedConversationsDidChangeNotification && objc_msgSend__canPostPinnedConversationsDidChangeNotification(self, a2, v2))
  {
    self->_hasDefferedPinnedConversationsDidChangeNotification = 0;
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Performing deffered pinned conversations did change notification.", v7, 2u);
      }
    }

    objc_msgSend__postPinnedConversationsDidChangeNotification(self, v4, v5);
  }
}

+ (id)sharedInstance
{
  if (qword_1ED767728 != -1)
  {
    sub_1A824658C();
  }

  objc_msgSend__postDeferredPinnedConversationsDidChangeNotificationIfNecessary(qword_1ED767840, a2, v2);
  v3 = qword_1ED767840;

  return v3;
}

- (void)fetchPinnedConversationIdentifiersFromLocalStore
{
  v9 = objc_msgSend__locallyStoredPinConfiguration(self, a2, v2);
  v5 = objc_msgSend_pinnedConversationIdentifiersFromPinConfiguration_(self, v4, v9);
  v7 = objc_msgSend_chatMetadataFromPinConfiguration_(self, v6, v9);
  objc_msgSend__setPinnedConversationIdentifiers_withChatMetadata_updateReason_shouldUpdateStores_(self, v8, v5, v7, @"fetchFromLocalStore", 0);
}

+ (id)requiredKeys
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v8[0] = @"pV";
  v8[1] = @"pT";
  v8[2] = @"pP";
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], a2, v8, 3);
  v5 = objc_msgSend_setWithArray_(v2, v4, v3);

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)_ubiquitousDispatchQueue
{
  if (qword_1EB2E9118 != -1)
  {
    sub_1A84DEC84();
  }

  v3 = qword_1EB2E9110;

  return v3;
}

- (NSUbiquitousKeyValueStore)dataStore
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  dataStore = selfCopy->_dataStore;
  if (!dataStore)
  {
    v4 = objc_alloc(MEMORY[0x1E696AFB8]);
    v6 = objc_msgSend__initWithStoreIdentifier_usingEndToEndEncryption_(v4, v5, @"com.apple.messages.pinning", 1);
    v7 = selfCopy->_dataStore;
    selfCopy->_dataStore = v6;

    v10 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v8, v9);
    objc_msgSend_addObserver_selector_name_object_(v10, v11, selfCopy, sel_handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification_, *MEMORY[0x1E696A9E8], selfCopy->_dataStore);

    dataStore = selfCopy->_dataStore;
  }

  v12 = dataStore;
  objc_sync_exit(selfCopy);

  return v12;
}

- (id)_dictionaryWithPinnedConversationIdentifiers:(id)identifiers chatMetadata:(id)metadata updateReason:(id)reason timestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v10 = MEMORY[0x1E695DF90];
  reasonCopy = reason;
  metadataCopy = metadata;
  identifiersCopy = identifiers;
  v14 = objc_alloc_init(v10);
  v15 = MEMORY[0x1E696AD98];
  v18 = objc_msgSend_currentPinConfigurationRevision(IMPinnedConversationsController, v16, v17);
  v20 = objc_msgSend_numberWithInteger_(v15, v19, v18);
  objc_msgSend_setObject_forKeyedSubscript_(v14, v21, v20, @"pR");

  v22 = MEMORY[0x1E696AD98];
  v25 = objc_msgSend_currentPinConfigurationVersion(IMPinnedConversationsController, v23, v24);
  v27 = objc_msgSend_numberWithInteger_(v22, v26, v25);
  objc_msgSend_setObject_forKeyedSubscript_(v14, v28, v27, @"pV");

  if (timestampCopy)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v14, v29, timestampCopy, @"pT");
  }

  else
  {
    v32 = objc_msgSend_date(MEMORY[0x1E695DF00], v29, v30);
    objc_msgSend_setObject_forKeyedSubscript_(v14, v33, v32, @"pT");
  }

  if (identifiersCopy)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v14, v31, identifiersCopy, @"pP");
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v14, v31, MEMORY[0x1E695E0F0], @"pP");
  }

  if (metadataCopy)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v14, v34, metadataCopy, @"pZ");
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v14, v34, MEMORY[0x1E695E0F8], @"pZ");
  }

  objc_msgSend_setObject_forKeyedSubscript_(v14, v35, reasonCopy, @"pU");
  v38 = objc_msgSend_copy(v14, v36, v37);

  return v38;
}

- (id)dictionaryWithPinnedConversationIdentifiers:(id)identifiers chatMetadata:(id)metadata updateReason:(id)reason
{
  v8 = MEMORY[0x1E695DF00];
  reasonCopy = reason;
  metadataCopy = metadata;
  identifiersCopy = identifiers;
  v14 = objc_msgSend_date(v8, v12, v13);
  v16 = objc_msgSend__dictionaryWithPinnedConversationIdentifiers_chatMetadata_updateReason_timestamp_(self, v15, identifiersCopy, metadataCopy, reasonCopy, v14);

  return v16;
}

- (id)_metadataDictionaryForChat:(id)chat
{
  v28 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = objc_msgSend_originalGroupID(chatCopy, v5, v6);
  if (v9 && objc_msgSend_isGroupChat(chatCopy, v7, v8))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v4, v10, v9, @"o");
  }

  else if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v26 = 138412290;
      v27 = chatCopy;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "originalGroupID was nil for chat. Not including in chat metadata dictionary. chat: %@", &v26, 0xCu);
    }
  }

  v16 = objc_msgSend_identityHash(chatCopy, v11, v12);
  if (v16 && objc_msgSend_isGroupChat(chatCopy, v14, v15))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v4, v17, v16, @"h");
  }

  else if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v26 = 138412290;
      v27 = chatCopy;
      _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "identityHash was nil for chat. Not including in chat metadata dictionary. chat: %@", &v26, 0xCu);
    }
  }

  if (objc_msgSend_count(v4, v18, v19))
  {
    v23 = objc_msgSend_copy(v4, v21, v22);
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (id)mostUpToDatePinConfigurationByComparingPinConfiguration:(id)configuration toOtherPinConfiguration:(id)pinConfiguration
{
  configurationCopy = configuration;
  pinConfigurationCopy = pinConfiguration;
  v8 = objc_msgSend_objectForKey_(configurationCopy, v7, @"pT");
  v10 = objc_msgSend_objectForKey_(pinConfigurationCopy, v9, @"pT");
  v13 = v10;
  if (v10)
  {
    v14 = 1;
  }

  else
  {
    v14 = v8 == 0;
  }

  v15 = configurationCopy;
  if (!v14)
  {
    goto LABEL_13;
  }

  objc_msgSend_timeIntervalSinceReferenceDate(v10, v11, v12);
  v17 = v16;
  objc_msgSend_timeIntervalSinceReferenceDate(v8, v18, v19);
  v15 = configurationCopy;
  if (v17 < v22)
  {
    goto LABEL_13;
  }

  v23 = v8 || v13 == 0;
  v15 = pinConfigurationCopy;
  if (v23 && (objc_msgSend_timeIntervalSinceReferenceDate(v8, v20, v21), v25 = v24, objc_msgSend_timeIntervalSinceReferenceDate(v13, v26, v27), v15 = pinConfigurationCopy, v25 >= v28))
  {
    v29 = 0;
  }

  else
  {
LABEL_13:
    v29 = v15;
  }

  return v29;
}

- (void)_handleChatGroupIDDidChangeNotification:(id)notification
{
  v55 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v7 = objc_msgSend_object(notificationCopy, v5, v6);
  v10 = objc_msgSend_userInfo(notificationCopy, v8, v9);
  v12 = objc_msgSend_objectForKey_(v10, v11, @"__kIMChatRegistryPreviousGroupIDKey");

  v15 = objc_msgSend_userInfo(notificationCopy, v13, v14);
  v17 = objc_msgSend_objectForKey_(v15, v16, @"__kIMChatRegistryUpdatedGroupIDKey");

  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v49 = 138412802;
      v50 = v12;
      v51 = 2112;
      v52 = v17;
      v53 = 2112;
      v54 = v7;
      _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Received group ID change notification for chat. previousGroupID: %@, newGroupID: %@, chat: %@", &v49, 0x20u);
    }
  }

  if (v7)
  {
    v21 = objc_msgSend_pinnedConversationIdentifierSet(self, v18, v19);
    v23 = objc_msgSend_containsObject_(v21, v22, v12);

    if (v23)
    {
      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v49 = 138412802;
          v50 = v12;
          v51 = 2112;
          v52 = v17;
          v53 = 2112;
          v54 = v7;
          _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_INFO, "Chat with previousGroupID (%@) was pinned, but that group ID changed. Replacing previous group ID with new group ID (%@) in the pinning stores. chat: %@", &v49, 0x20u);
        }
      }

      v27 = objc_msgSend_pinnedConversationIdentifierSet(self, v24, v25);
      v30 = objc_msgSend_mutableCopy(v27, v28, v29);

      v33 = objc_msgSend_indexOfObject_(v30, v31, v12);
      if (v33 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (IMOSLoggingEnabled())
        {
          v34 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            LOWORD(v49) = 0;
            _os_log_impl(&dword_1A823F000, v34, OS_LOG_TYPE_INFO, "pinnedConversationIdentifierSet contained the previous groupID, but the index was NSNotFound!", &v49, 2u);
          }

LABEL_23:
        }
      }

      else
      {
        if (v17)
        {
          objc_msgSend_replaceObjectAtIndex_withObject_(v30, v32, v33, v17);
          v37 = objc_msgSend_chatMetadata(self, v35, v36);
          v40 = objc_msgSend_mutableCopy(v37, v38, v39);

          objc_msgSend_removeObjectForKey_(v40, v41, v12);
          v45 = objc_msgSend__metadataDictionaryForChat_(self, v42, v7);
          if (v45)
          {
            objc_msgSend_setObject_forKey_(v40, v43, v45, v17);
          }

          v46 = objc_msgSend_array(v30, v43, v44);
          objc_msgSend__setPinnedConversationIdentifiers_withChatMetadata_updateReason_shouldUpdateStores_(self, v47, v46, v40, @"groupIDChange", 1);

          goto LABEL_24;
        }

        if (IMOSLoggingEnabled())
        {
          v34 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v49 = 138412546;
            v50 = v12;
            v51 = 2112;
            v52 = v7;
            _os_log_impl(&dword_1A823F000, v34, OS_LOG_TYPE_INFO, "IMPinnedConversationsController received a groupID change notification, but the new groupID was nil! Not making changes to the pin config. previousGroupID: %@, chat: %@", &v49, 0x16u);
          }

          goto LABEL_23;
        }
      }

LABEL_24:
    }
  }

  v48 = *MEMORY[0x1E69E9840];
}

- (void)setPinnedChats:(id)chats withUpdateReason:(id)reason
{
  v34 = *MEMORY[0x1E69E9840];
  chatsCopy = chats;
  reasonCopy = reason;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = chatsCopy;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v27, v33, 16);
  if (v13)
  {
    v14 = *v28;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        v18 = objc_msgSend_pinningIdentifier(v16, v11, v12);
        if (v18)
        {
          objc_msgSend_addObject_(v7, v17, v18);
        }

        else if (IMOSLoggingEnabled())
        {
          v20 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v32 = v16;
            _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "pinningIdentifier was nil for chat. Not including in new pinnedConversationIdentifiers. chat: %@", buf, 0xCu);
          }
        }

        v22 = objc_msgSend__metadataDictionaryForChat_(self, v19, v16);
        if (v22)
        {
          v23 = v18 != 0;
        }

        else
        {
          v23 = 0;
        }

        if (v23)
        {
          objc_msgSend_setObject_forKey_(v8, v21, v22, v18);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v27, v33, 16);
    }

    while (v13);
  }

  objc_msgSend__setPinnedConversationIdentifiers_withChatMetadata_updateReason_shouldUpdateStores_(self, v24, v7, v8, reasonCopy, 1);
  v25 = *MEMORY[0x1E69E9840];
}

- (void)_setPinnedConversationIdentifiers:(id)identifiers withChatMetadata:(id)metadata updateReason:(id)reason shouldUpdateStores:(BOOL)stores
{
  storesCopy = stores;
  v48 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  metadataCopy = metadata;
  reasonCopy = reason;
  if (!identifiersCopy)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_28;
    }

    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *v41 = 136315138;
      *&v41[4] = "[IMPinnedConversationsController _setPinnedConversationIdentifiers:withChatMetadata:updateReason:shouldUpdateStores:]";
      _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "%s called with nil. Ignoring.", v41, 0xCu);
    }

    goto LABEL_6;
  }

  v15 = objc_msgSend_count(identifiersCopy, v12, v13);
  v16 = objc_opt_class();
  v19 = objc_msgSend_maximumNumberOfPinnedConversations(v16, v17, v18);
  v20 = IMOSLoggingEnabled();
  if (v15 <= v19)
  {
    if (v20)
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *&v41[4] = "[IMPinnedConversationsController _setPinnedConversationIdentifiers:withChatMetadata:updateReason:shouldUpdateStores:]";
        v26 = @"NO";
        *v41 = 136316162;
        if (storesCopy)
        {
          v26 = @"YES";
        }

        *&v41[12] = 2112;
        *&v41[14] = reasonCopy;
        v42 = 2112;
        v43 = v26;
        v44 = 2112;
        v45 = identifiersCopy;
        v46 = 2112;
        v47 = metadataCopy;
        _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "%s called with reason: %@, shouldUpdateStores: %@, pinnedConversationIdentifiers: %@, chatMetadata: %@", v41, 0x34u);
      }
    }

    if (storesCopy)
    {
      v27 = objc_msgSend_dictionaryWithPinnedConversationIdentifiers_chatMetadata_updateReason_(self, v21, identifiersCopy, metadataCopy, reasonCopy);
      objc_msgSend_updateStoresWithPinConfiguration_(self, v28, v27);
    }

    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *v41 = 136315394;
        *&v41[4] = "[IMPinnedConversationsController _setPinnedConversationIdentifiers:withChatMetadata:updateReason:shouldUpdateStores:]";
        *&v41[12] = 2112;
        *&v41[14] = identifiersCopy;
        _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_INFO, "%s Setting new cached pinned conversation identifiers %@", v41, 0x16u);
      }
    }

    v31 = objc_msgSend_orderedSetWithArray_(MEMORY[0x1E695DFB8], v29, identifiersCopy, *v41);
    pinnedConversationIdentifierSet = self->_pinnedConversationIdentifierSet;
    self->_pinnedConversationIdentifierSet = v31;

    if (IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *v41 = 136315394;
        *&v41[4] = "[IMPinnedConversationsController _setPinnedConversationIdentifiers:withChatMetadata:updateReason:shouldUpdateStores:]";
        *&v41[12] = 2112;
        *&v41[14] = metadataCopy;
        _os_log_impl(&dword_1A823F000, v35, OS_LOG_TYPE_INFO, "%s Setting new cached chat metadata %@", v41, 0x16u);
      }
    }

    v36 = objc_msgSend_copy(metadataCopy, v33, v34);
    chatMetadata = self->_chatMetadata;
    self->_chatMetadata = v36;

    objc_msgSend__postPinnedConversationsDidChangeNotification(self, v38, v39);
  }

  else if (v20)
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *v41 = 136315394;
      *&v41[4] = "[IMPinnedConversationsController _setPinnedConversationIdentifiers:withChatMetadata:updateReason:shouldUpdateStores:]";
      *&v41[12] = 2048;
      *&v41[14] = objc_msgSend_count(identifiersCopy, v23, v24);
      _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "%s called with %ld items. Ignoring.", v41, 0x16u);
    }

LABEL_6:
  }

LABEL_28:

  v40 = *MEMORY[0x1E69E9840];
}

- (void)conversationWasDeletedWithIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  if (identifier)
  {
    identifierCopy = identifier;
    v4 = MEMORY[0x1E695DEC8];
    identifierCopy2 = identifier;
    v7 = objc_msgSend_arrayWithObjects_count_(v4, v6, &identifierCopy, 1);

    objc_msgSend_conversationsWereDeletedWithIdentifiers_(self, v8, v7, identifierCopy, v11);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)conversationsWereDeletedWithIdentifiers:(id)identifiers
{
  v79 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  selfCopy = self;
  v7 = objc_msgSend_pinnedConversationIdentifierSet(self, v5, v6);
  v10 = objc_msgSend_count(v7, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_pinnedConversationIdentifierSet(self, v11, v12);
    v16 = objc_msgSend_mutableCopy(v13, v14, v15);

    v19 = objc_msgSend_chatMetadata(self, v17, v18);
    v22 = objc_msgSend_mutableCopy(v19, v20, v21);

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v23 = identifiersCopy;
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v66, v78, 16);
    if (v26)
    {
      v27 = *v67;
      v3 = "Warning";
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v67 != v27)
          {
            objc_enumerationMutation(v23);
          }

          v29 = *(*(&v66 + 1) + 8 * i);
          if (v29)
          {
            objc_msgSend_removeObject_(v16, v25, *(*(&v66 + 1) + 8 * i));
            objc_msgSend_removeObjectForKey_(v22, v30, v29);
          }

          else if (IMOSLoggingEnabled())
          {
            v31 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v71 = "[IMPinnedConversationsController conversationsWereDeletedWithIdentifiers:]";
              _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "%s Tried to delete a nil identifier.", buf, 0xCu);
            }
          }
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v66, v78, 16);
      }

      while (v26);
    }

    v36 = objc_msgSend_pinnedConversationIdentifierSet(selfCopy, v32, v33);
    if (v16 != v36)
    {
      v3 = objc_msgSend_pinnedConversationIdentifierSet(selfCopy, v34, v35);
      if ((objc_msgSend_isEqualToOrderedSet_(v16, v37, v3) & 1) == 0)
      {

LABEL_29:
        if (IMOSLoggingEnabled())
        {
          v51 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
          {
            v54 = objc_msgSend_pinnedConversationIdentifierSet(selfCopy, v52, v53);
            v57 = objc_msgSend_array(v54, v55, v56);
            *buf = 136315906;
            v71 = "[IMPinnedConversationsController conversationsWereDeletedWithIdentifiers:]";
            v72 = 2112;
            v73 = v23;
            v74 = 2112;
            v75 = v16;
            v76 = 2112;
            v77 = v57;
            _os_log_impl(&dword_1A823F000, v51, OS_LOG_TYPE_INFO, "%s Removing pinned conversations with identifers %@, resulting in pinnedConversationIdentifiers: %@ existing value: %@", buf, 0x2Au);
          }
        }

        v58 = objc_msgSend_array(v16, v49, v50);
        v61 = objc_msgSend_copy(v22, v59, v60);
        objc_msgSend__setPinnedConversationIdentifiers_withChatMetadata_updateReason_shouldUpdateStores_(selfCopy, v62, v58, v61, @"conversationDelete", 1);

LABEL_34:
        goto LABEL_35;
      }
    }

    v38 = objc_msgSend_chatMetadata(selfCopy, v34, v35);
    v41 = v38;
    if (v22 == v38)
    {

      if (v16 != v36)
      {
      }
    }

    else
    {
      v42 = objc_msgSend_chatMetadata(selfCopy, v39, v40);
      isEqualToDictionary = objc_msgSend_isEqualToDictionary_(v22, v43, v42);

      if (v16 != v36)
      {
      }

      if ((isEqualToDictionary & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v45 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v48 = objc_msgSend_pinnedConversationIdentifierSet(selfCopy, v46, v47);
        *buf = 136315906;
        v71 = "[IMPinnedConversationsController conversationsWereDeletedWithIdentifiers:]";
        v72 = 2112;
        v73 = v23;
        v74 = 2112;
        v75 = v16;
        v76 = 2112;
        v77 = v48;
        _os_log_impl(&dword_1A823F000, v45, OS_LOG_TYPE_INFO, "Received call to %s with identifiers %@, but it resulted in no changes to the cached pinningIdentifiers. proposed: %@ existing value: %@", buf, 0x2Au);
      }
    }

    goto LABEL_34;
  }

LABEL_35:

  v63 = *MEMORY[0x1E69E9840];
}

- (BOOL)pinnedConversationsContainsChat:(id)chat
{
  chatCopy = chat;
  v7 = objc_msgSend_pinnedConversationIdentifierSet(self, v5, v6);
  v10 = objc_msgSend_chatMetadata(self, v8, v9);
  v12 = objc_msgSend_pinIndexForChat_inIdentifierSet_withMetadata_(self, v11, chatCopy, v7, v10);

  return v12 != 0x7FFFFFFFFFFFFFFFLL;
}

- (id)matchingIdentifierForChat:(id)chat
{
  chatCopy = chat;
  v7 = objc_msgSend_pinnedConversationIdentifierSet(self, v5, v6);
  v10 = objc_msgSend_chatMetadata(self, v8, v9);
  v12 = objc_msgSend_matchingIdentifierForChat_inIdentifierSet_withMetadata_(self, v11, chatCopy, v7, v10);

  return v12;
}

- (id)matchingIdentifierForChat:(id)chat inIdentifierSet:(id)set withMetadata:(id)metadata
{
  setCopy = set;
  v10 = objc_msgSend_pinIndexForChat_inIdentifierSet_withMetadata_(self, v9, chat, setCopy, metadata);
  if (v10 >= objc_msgSend_count(setCopy, v11, v12))
  {
    v14 = 0;
  }

  else
  {
    v14 = objc_msgSend_objectAtIndex_(setCopy, v13, v10);
  }

  return v14;
}

- (unint64_t)pinIndexForChat:(id)chat inIdentifierSet:(id)set withMetadata:(id)metadata
{
  v96 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  setCopy = set;
  metadataCopy = metadata;
  v12 = objc_msgSend_count(setCopy, v10, v11);
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  v77 = chatCopy;
  if (chatCopy && v12)
  {
    v76 = metadataCopy;
    v75 = objc_msgSend_pinningIdentifier(chatCopy, v13, v14);
    v17 = objc_msgSend_indexOfObject_(setCopy, v16, v75);
    if (v17 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = v17;
      if (IMOSLoggingEnabled())
      {
        v64 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
        {
          *buf = 134218242;
          v87 = v15;
          v88 = 2112;
          v89 = chatCopy;
          _os_log_impl(&dword_1A823F000, v64, OS_LOG_TYPE_INFO, "Match found for chat at index %lu using pinning identifier. chat: %@", buf, 0x16u);
        }
      }

      goto LABEL_44;
    }

    objc_msgSend_mergedPinningIdentifiers(chatCopy, v18, v19);
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v20 = v83 = 0u;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v82, v95, 16);
    if (v23)
    {
      v24 = *v83;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v83 != v24)
          {
            objc_enumerationMutation(v20);
          }

          v15 = objc_msgSend_indexOfObject_(setCopy, v22, *(*(&v82 + 1) + 8 * i));
          if (v15 != 0x7FFFFFFFFFFFFFFFLL)
          {

            if (IMOSLoggingEnabled())
            {
              v65 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
              {
                *buf = 134218242;
                v87 = v15;
                v88 = 2112;
                v89 = v77;
                _os_log_impl(&dword_1A823F000, v65, OS_LOG_TYPE_INFO, "Match found for chat at index %lu using merged pinning identifiers. chat: %@", buf, 0x16u);
              }
            }

            goto LABEL_44;
          }
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v82, v95, 16);
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    if (objc_msgSend_isGroupChat(v77, v26, v27))
    {
      v30 = objc_msgSend_displayName(v77, v28, v29);
      if (!v30 || (objc_msgSend_displayName(v77, v28, v29), v31 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v31, v32, &stru_1F1B76F98), v31, v30, isEqualToString))
      {
        v34 = objc_msgSend_sharedRegistry(IMChatRegistry, v28, v29);
        v37 = objc_msgSend_participants(v77, v35, v36);
        v39 = objc_msgSend__sortedParticipantIDHashForParticipants_usesPersonCentricID_(v34, v38, v37, 0);

        v15 = objc_msgSend_indexOfObject_(setCopy, v40, v39);
        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          if (IMOSLoggingEnabled())
          {
            v69 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
            {
              *buf = 134218242;
              v87 = v15;
              v88 = 2112;
              v89 = v77;
              _os_log_impl(&dword_1A823F000, v69, OS_LOG_TYPE_INFO, "Match found for chat at index %lu using participantHash to pinning identifier comparison. chat: %@", buf, 0x16u);
            }
          }

LABEL_51:

LABEL_44:
          metadataCopy = v76;
          goto LABEL_45;
        }
      }
    }

    if (!objc_msgSend_isGroupChat(v77, v28, v29))
    {
      goto LABEL_20;
    }

    v39 = objc_msgSend_originalGroupID(v77, v41, v42);
    v15 = objc_msgSend_indexOfObject_(setCopy, v43, v39);
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {

LABEL_20:
      if (objc_msgSend_isGroupChat(v77, v41, v42))
      {
        v73 = objc_msgSend_originalGroupID(v77, v44, v45);
        v72 = objc_msgSend_identityHash(v77, v46, v47);
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        obj = objc_msgSend_allKeys(v76, v48, v49);
        v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v50, &v78, v94, 16);
        if (v52)
        {
          v74 = *v79;
          while (2)
          {
            for (j = 0; j != v52; ++j)
            {
              if (*v79 != v74)
              {
                objc_enumerationMutation(obj);
              }

              v54 = *(*(&v78 + 1) + 8 * j);
              v55 = objc_msgSend_objectForKey_(v76, v51, v54);
              v57 = objc_msgSend_objectForKey_(v55, v56, @"o");
              v59 = v57;
              if (v57)
              {
                if (objc_msgSend_isEqualToString_(v57, v58, v73))
                {
                  v15 = objc_msgSend_indexOfObject_(setCopy, v58, v54);
                  if (v15 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    if (IMOSLoggingEnabled())
                    {
                      v62 = OSLogHandleForIMFoundationCategory();
                      if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
                      {
                        *buf = 134218754;
                        v87 = v15;
                        v88 = 2112;
                        v89 = v54;
                        v90 = 2112;
                        v91 = v59;
                        v92 = 2112;
                        v93 = v77;
                        _os_log_impl(&dword_1A823F000, v62, OS_LOG_TYPE_INFO, "Match found for chat at index %lu using originalGroupID. pinnedPinningIdentifier: %@, originalGroupID: %@, chat: %@", buf, 0x2Au);
                      }

LABEL_65:
                    }

                    goto LABEL_67;
                  }
                }
              }

              v60 = objc_msgSend_objectForKey_(v55, v58, @"h");
              v62 = v60;
              if (v60)
              {
                if (objc_msgSend_isEqualToString_(v60, v61, v72))
                {
                  v15 = objc_msgSend_indexOfObject_(setCopy, v63, v54);
                  if (v15 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    if (IMOSLoggingEnabled())
                    {
                      v70 = OSLogHandleForIMFoundationCategory();
                      if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
                      {
                        *buf = 134218754;
                        v87 = v15;
                        v88 = 2112;
                        v89 = v54;
                        v90 = 2112;
                        v91 = v62;
                        v92 = 2112;
                        v93 = v77;
                        _os_log_impl(&dword_1A823F000, v70, OS_LOG_TYPE_INFO, "Match found for chat at index %lu using identityHash. pinnedPinningIdentifier: %@, identityHash: %@, chat: %@", buf, 0x2Au);
                      }
                    }

                    goto LABEL_65;
                  }
                }
              }
            }

            v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v51, &v78, v94, 16);
            if (v52)
            {
              continue;
            }

            break;
          }
        }

        v15 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_67:
      }

      else
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      goto LABEL_44;
    }

    if (IMOSLoggingEnabled())
    {
      v68 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
      {
        *buf = 134218242;
        v87 = v15;
        v88 = 2112;
        v89 = v77;
        _os_log_impl(&dword_1A823F000, v68, OS_LOG_TYPE_INFO, "Match found for chat at index %lu using originalGroupID to pinning identifier comparison. chat: %@", buf, 0x16u);
      }
    }

    goto LABEL_51;
  }

LABEL_45:

  v66 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)validatedPinConfigurationWithCurrentVersionForPinConfiguration:(id)configuration
{
  v92 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v6 = objc_msgSend_currentPinConfigurationVersion(IMPinnedConversationsController, v4, v5);
  v9 = objc_msgSend_currentPinConfigurationRevision(IMPinnedConversationsController, v7, v8);
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v87 = v6;
      v88 = 2112;
      v89 = configurationCopy;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Determining if pin config needs migration to version %li. %@", buf, 0x16u);
    }
  }

  v79 = objc_msgSend_objectForKey_(configurationCopy, v10, @"pV");
  if (v79)
  {
    v78 = objc_msgSend_objectForKey_(configurationCopy, v12, @"pR");
    v15 = objc_msgSend_integerValue(v78, v13, v14);
    v18 = objc_msgSend_integerValue(v79, v16, v17);
    v19 = v18;
    if (v18 > v6)
    {
      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 134218498;
          v87 = v19;
          v88 = 2048;
          v89 = v6;
          v90 = 2112;
          v91 = configurationCopy;
          _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Pin config has a version (%li) greater than the current version (%li). This pin config is not usable. %@", buf, 0x20u);
        }
      }

      v21 = 0;
      goto LABEL_83;
    }

    v24 = v18 == v6 && v15 == v9;
    v25 = IMOSLoggingEnabled();
    if (v24)
    {
      if (v25)
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          v87 = v6;
          v88 = 2048;
          v89 = v9;
          _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "Pin config has current version (%li) and revision (%li) already . No migration necessary.", buf, 0x16u);
        }
      }

      v21 = configurationCopy;
      goto LABEL_83;
    }

    if (v25)
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 134218496;
        v87 = v19;
        v88 = 2048;
        v89 = v6;
        v90 = 2048;
        v91 = v9;
        _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "Pin config has a version (%li) less than the current version (%li) or revision (%li). Attempting migration.", buf, 0x20u);
      }
    }

    v77 = objc_msgSend_mutableCopy(configurationCopy, v26, v27);
    if (v19 < 2)
    {
      v31 = IMLogHandleForCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_1A84DED54(v31);
      }

      v33 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v32, 2);
      objc_msgSend_setObject_forKey_(v77, v34, v33, @"pV");
    }

    if (v19 <= 2 && v15 <= 1)
    {
      if (IMOSLoggingEnabled())
      {
        v36 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v87 = v77;
          _os_log_impl(&dword_1A823F000, v36, OS_LOG_TYPE_INFO, "The given pin config did not have chat metadata. Attempting to add some. pin config: %@", buf, 0xCu);
        }
      }

      v76 = objc_msgSend_pinnedConversationIdentifiersFromPinConfiguration_(self, v35, v77);
      v38 = objc_msgSend_orderedSetWithArray_(MEMORY[0x1E695DFB8], v37, v76);
      v40 = objc_msgSend_chatMetadataFromPinConfiguration_(self, v39, v77);
      v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v44 = objc_msgSend_sharedRegistry(IMChatRegistry, v42, v43);
      v47 = objc_msgSend_cachedChats(v44, v45, v46);

      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v48 = v47;
      v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, &v81, v85, 16);
      if (v51)
      {
        v52 = *v82;
        do
        {
          for (i = 0; i != v51; ++i)
          {
            if (*v82 != v52)
            {
              objc_enumerationMutation(v48);
            }

            v54 = *(*(&v81 + 1) + 8 * i);
            v56 = objc_msgSend_matchingIdentifierForChat_inIdentifierSet_withMetadata_(self, v50, v54, v38, v40);
            if (v56)
            {
              v58 = objc_msgSend__metadataDictionaryForChat_(self, v55, v54);
              if (v58)
              {
                objc_msgSend_setObject_forKey_(v41, v57, v58, v56);
              }
            }
          }

          v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v50, &v81, v85, 16);
        }

        while (v51);
      }

      if (v41 && objc_msgSend_count(v41, v59, v60))
      {
        objc_msgSend_setObject_forKey_(v77, v59, v41, @"pZ");
      }

      v61 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v59, 2);
      objc_msgSend_setObject_forKey_(v77, v62, v61, @"pV");

      v64 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v63, 2);
      objc_msgSend_setObject_forKey_(v77, v65, v64, @"pR");
    }

    if (objc_msgSend_pinConfigurationIsValid_(self, v30, v77))
    {
      if (objc_msgSend_pinConfigurationHasCurrentVersion_(self, v66, v77))
      {
        v21 = objc_msgSend_copy(v77, v67, v68);
LABEL_82:

LABEL_83:
        goto LABEL_84;
      }

      v72 = IMLogHandleForCategory();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        sub_1A84DEE00();
      }

      if (IMOSLoggingEnabled())
      {
        v73 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v87 = configurationCopy;
          _os_log_impl(&dword_1A823F000, v73, OS_LOG_TYPE_INFO, "Migrated pin config wrong version. pinConfigToMigrate: %@", buf, 0xCu);
        }
      }

      if (!IMOSLoggingEnabled())
      {
LABEL_81:
        v21 = 0;
        goto LABEL_82;
      }

      v71 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v87 = v77;
        _os_log_impl(&dword_1A823F000, v71, OS_LOG_TYPE_INFO, "Migrated pin config wrong version. migratedPinConfig: %@", buf, 0xCu);
      }
    }

    else
    {
      v69 = IMLogHandleForCategory();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        sub_1A84DED98();
      }

      if (IMOSLoggingEnabled())
      {
        v70 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v87 = configurationCopy;
          _os_log_impl(&dword_1A823F000, v70, OS_LOG_TYPE_INFO, "Invalid migrated pin config. pinConfigToMigrate: %@", buf, 0xCu);
        }
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_81;
      }

      v71 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v87 = v77;
        _os_log_impl(&dword_1A823F000, v71, OS_LOG_TYPE_INFO, "Invalid migrated pin config. migratedPinConfig: %@", buf, 0xCu);
      }
    }

    goto LABEL_81;
  }

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v87 = configurationCopy;
      _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Pin config has nil version. This pin config is not valid. %@", buf, 0xCu);
    }
  }

  v21 = 0;
LABEL_84:

  v74 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (id)_forceSyncDispatchQueue
{
  if (qword_1EB2EA158 != -1)
  {
    sub_1A84DEE68();
  }

  v3 = qword_1EB2EA150;

  return v3;
}

- (void)imCloudKitHooksSetEnabledDidReturn:(id)return
{
  v27 = *MEMORY[0x1E69E9840];
  returnCopy = return;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v23 = 138412290;
      v24 = returnCopy;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Received IMCloudKitHooksSetEnabledReturned notification {notification %@}", &v23, 0xCu);
    }
  }

  v8 = objc_msgSend_userInfo(returnCopy, v5, v6);
  v10 = objc_msgSend_objectForKey_(v8, v9, @"ResultKeyNewState");
  v13 = objc_msgSend_BOOLValue(v10, v11, v12);

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      shouldSync = objc_msgSend_shouldSync(self, v17, v18);
      v20 = @"NO";
      if (v13)
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      if (shouldSync)
      {
        v20 = @"YES";
      }

      v23 = 138412546;
      v24 = v21;
      v25 = 2112;
      v26 = v20;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "New MiC enabled state is %@. [self shouldSync] == %@", &v23, 0x16u);
    }
  }

  objc_msgSend_synchronizeLocalDataStore(self, v14, v15);

  v22 = *MEMORY[0x1E69E9840];
}

- (void)synchronizeLocalDataStore
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A826C640;
  v4[3] = &unk_1E780FDF0;
  objc_copyWeak(&v5, &location);
  objc_msgSend_fetchMostUpToDatePinConfiguration_(self, v3, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)forceSynchronizeUbiquitousStore
{
  v19 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_numberOfPendingForceSyncs(self, a2, v2) < 4)
  {
    v7 = objc_msgSend_numberOfPendingForceSyncs(self, v4, v5);
    objc_msgSend_setNumberOfPendingForceSyncs_(self, v8, v7 + 1);
    objc_initWeak(&v15, self);
    v11 = objc_msgSend__forceSyncDispatchQueue(IMPinnedConversationsController, v9, v10);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1A826CAF0;
    v13[3] = &unk_1E780FDC8;
    objc_copyWeak(&v14, &v15);
    dispatch_async(v11, v13);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v15);
  }

  else if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v15 = 136315394;
      v16 = "[IMPinnedConversationsController forceSynchronizeUbiquitousStore]";
      v17 = 2048;
      v18 = 3;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Blocking additional calls to %s because there are already at least %ld pending calls.", &v15, 0x16u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification:(id)notification
{
  v29 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = notificationCopy;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Received NSUbiquitousKeyValueStoreDidChangeExternallyNotification {notification: %@}", buf, 0xCu);
    }
  }

  if (objc_msgSend_shouldSync(self, v5, v6))
  {
    v10 = objc_msgSend_userInfo(notificationCopy, v8, v9);
    v12 = objc_msgSend_objectForKey_(v10, v11, *MEMORY[0x1E696A9E0]);

    if ((objc_msgSend_containsObject_(v12, v13, @"pD") & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "-[handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification:] IMPinConfigurationTopLevelKey was not in NSUbiquitousKeyValueStoreChangedKeysKey. Ignoring notification.", buf, 2u);
        }
      }

      goto LABEL_25;
    }

    v16 = objc_msgSend_userInfo(notificationCopy, v14, v15);
    v18 = objc_msgSend_objectForKey_(v16, v17, *MEMORY[0x1E696A9D8]);

    if (v18)
    {
      v21 = objc_msgSend_integerValue(v18, v19, v20);
      if (v21 <= 1)
      {
        if (!v21)
        {
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_16;
          }

          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "-[handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification:] change reason is NSUbiquitousKeyValueStoreServerChange.", buf, 2u);
          }

          goto LABEL_15;
        }

        if (v21 == 1)
        {
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_16;
          }

          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "-[handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification:] change reason is NSUbiquitousKeyValueStoreInitialSyncChange.", buf, 2u);
          }

          goto LABEL_15;
        }
      }

      else
      {
        switch(v21)
        {
          case 2:
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_16;
            }

            v22 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "-[handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification:] change reason is NSUbiquitousKeyValueStoreQuotaViolationChange.", buf, 2u);
            }

            goto LABEL_15;
          case 3:
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_16;
            }

            v22 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "-[handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification:] change reason is NSUbiquitousKeyValueStoreAccountChange.", buf, 2u);
            }

            goto LABEL_15;
          case 0x7FFFFFFFFFFFFFFFLL:
            goto LABEL_12;
        }
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_16;
      }

      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v28 = v18;
        _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "-[handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification:] change reason is %@", buf, 0xCu);
      }

      goto LABEL_15;
    }

LABEL_12:
    if (!IMOSLoggingEnabled())
    {
LABEL_16:
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1A826D1A0;
      block[3] = &unk_1E780FCB0;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);

LABEL_25:
      goto LABEL_26;
    }

    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "-[handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification:] change reason is nil.", buf, 2u);
    }

LABEL_15:

    goto LABEL_16;
  }

  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "[self shouldSync] == NO. Ignoring NSUbiquitousKeyValueStoreDidChangeExternallyNotification.", buf, 2u);
    }
  }

LABEL_26:

  v25 = *MEMORY[0x1E69E9840];
}

- (void)updateStoresWithPinConfiguration:(id)configuration
{
  v17 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v14 = "[IMPinnedConversationsController updateStoresWithPinConfiguration:]";
      v15 = 2112;
      v16 = configurationCopy;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "%s Updating stores %@", buf, 0x16u);
    }
  }

  objc_msgSend__updateLocalStoreWithPinConfiguration_(self, v5, configurationCopy);
  if (objc_msgSend_shouldSync(self, v7, v8))
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1A826D318;
    v11[3] = &unk_1E780FE18;
    v12 = configurationCopy;
    objc_msgSend__updateUbiquitousStoreWithPinConfiguration_completion_(self, v9, v12, v11);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_updateUbiquitousStoreWithPinConfiguration:(id)configuration completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = configurationCopy;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Attempting to save new pin configuration to ubiquitous store: %@", buf, 0xCu);
    }
  }

  objc_initWeak(buf, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1A826D5D8;
  v13[3] = &unk_1E780FE40;
  objc_copyWeak(&v16, buf);
  v9 = configurationCopy;
  v14 = v9;
  v10 = completionCopy;
  v15 = v10;
  objc_msgSend__fetchUbiquitousPinConfiguration_(self, v11, v13);

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)_updateLocalStoreWithPinConfiguration:(id)configuration
{
  v39 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v38 = configurationCopy;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Received request to save new pin configuration to local store: %@", buf, 0xCu);
    }
  }

  v7 = objc_msgSend_validatedPinConfigurationWithCurrentVersionForPinConfiguration_(self, v5, configurationCopy);
  v8 = IMOSLoggingEnabled();
  if (v7)
  {
    if (v8)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v38 = configurationCopy;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Successfully migrated pin config to current version. before: %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v38 = v7;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Successfully migrated pin config to current version. after: %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v38 = v7;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Attempting to save the migrated pin config to local store: %@", buf, 0xCu);
      }
    }

    v14 = objc_msgSend__locallyStoredPinConfiguration(self, v11, v12);
    shouldUpdateExistingPinConfig_withProposedPinConfig = objc_msgSend_shouldUpdateExistingPinConfig_withProposedPinConfig_(self, v15, v14, v7);
    v17 = IMOSLoggingEnabled();
    if (shouldUpdateExistingPinConfig_withProposedPinConfig)
    {
      if (v17)
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v38 = v14;
          _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Saving new pin configuration to local store. Old: %@", buf, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v38 = v7;
          _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Saving new pin configuration to local store. New: %@", buf, 0xCu);
        }
      }

      if ((IMIsRunningInUnitTesting() & 1) == 0)
      {
        v24 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8018], v20, v21);
        objc_msgSend_setValue_forDomain_forKey_(v24, v25, v7, @"com.apple.messages.pinning", @"pD");

        v26 = objc_alloc_init(MEMORY[0x1AC56C550](@"NPSManager", @"NanoPreferencesSync"));
        v27 = MEMORY[0x1E695DFD8];
        v36 = @"pD";
        v29 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v28, &v36, 1);
        v31 = objc_msgSend_setWithArray_(v27, v30, v29);
        objc_msgSend_synchronizeUserDefaultsDomain_keys_(v26, v32, @"com.apple.messages.pinning", v31);

        if (IMOSLoggingEnabled())
        {
          v33 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A823F000, v33, OS_LOG_TYPE_INFO, "syncManager", buf, 2u);
          }
        }

        goto LABEL_46;
      }

      if (!IMOSLoggingEnabled())
      {
LABEL_46:

        goto LABEL_47;
      }

      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v38 = "[IMPinnedConversationsController _updateLocalStoreWithPinConfiguration:]";
        _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "%s Didn't actually update the local store because we're running a unit test.", buf, 0xCu);
      }
    }

    else
    {
      if (!v17)
      {
        goto LABEL_46;
      }

      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v38 = v7;
        _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "shouldUpdate == NO. Not saving new pin configuration to local store: %@", buf, 0xCu);
      }
    }

    goto LABEL_46;
  }

  if (v8)
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v38 = configurationCopy;
      _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "Could not migrate the proposedConfig to the current version. Not saving new pin configuration to local store: %@", buf, 0xCu);
    }
  }

  LOBYTE(shouldUpdateExistingPinConfig_withProposedPinConfig) = 0;
LABEL_47:

  v34 = *MEMORY[0x1E69E9840];
  return shouldUpdateExistingPinConfig_withProposedPinConfig;
}

- (BOOL)shouldWriteProposedPinConfiguration:(id)configuration toUbiquitousStoreWithExistingPinConfiguration:(id)pinConfiguration
{
  v40 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  pinConfigurationCopy = pinConfiguration;
  v8 = objc_msgSend_objectForKey_(pinConfigurationCopy, v7, @"pV");
  v10 = objc_msgSend_objectForKey_(configurationCopy, v9, @"pV");
  v13 = v10;
  if (!v10)
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v32 = 138413058;
        v33 = 0;
        v34 = 2048;
        v35 = objc_msgSend_integerValue(0, v21, v22);
        v36 = 2112;
        v37 = v8;
        v38 = 2048;
        v39 = objc_msgSend_integerValue(v8, v23, v24);
        _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Could not definitively determine if proposed version (%@, %li) is greater than or equal to the existing ubiquitous data's (%@, %li), not writing to ubiquitous store", &v32, 0x2Au);
      }
    }

    goto LABEL_12;
  }

  if (v8)
  {
    v14 = objc_msgSend_integerValue(v10, v11, v12);
    v17 = objc_msgSend_integerValue(v8, v15, v16);
    v18 = IMOSLoggingEnabled();
    if (v14 < v17)
    {
      if (v18)
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v32 = 134218240;
          v33 = v14;
          v34 = 2048;
          v35 = v17;
          _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Proposed version (%li) is less than the existing ubiquitous data's (%li), not writing earlier version to ubiquitous store", &v32, 0x16u);
        }
      }

LABEL_12:
      v25 = 0;
      goto LABEL_22;
    }

    if (v18)
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v32 = 134218240;
        v33 = v14;
        v34 = 2048;
        v35 = v17;
        _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_INFO, "Proposed version (%li) is greater than or equal to the existing ubiquitous data's (%li), ok to write to ubiquitous store", &v32, 0x16u);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_INFO, "There was no existing version in the ubiquitous store.", &v32, 2u);
    }
  }

  v25 = 1;
LABEL_22:
  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = @"NO";
      if (v25)
      {
        v29 = @"YES";
      }

      v32 = 138412546;
      v33 = v29;
      v34 = 2080;
      v35 = "[IMPinnedConversationsController shouldWriteProposedPinConfiguration:toUbiquitousStoreWithExistingPinConfiguration:]";
      _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "Returning %@ for %s", &v32, 0x16u);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
  return v25;
}

- (BOOL)pinConfigurationHasCompatibleVersion:(id)version
{
  v28 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  v5 = objc_msgSend_objectForKey_(versionCopy, v4, @"pV");
  v8 = v5;
  if (!v5)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v22 = 136315138;
        v23 = "[IMPinnedConversationsController pinConfigurationHasCompatibleVersion:]";
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "%s The pin config's version was nil.", &v22, 0xCu);
      }
    }

    goto LABEL_11;
  }

  v9 = objc_msgSend_integerValue(v5, v6, v7);
  v12 = objc_msgSend_currentPinConfigurationVersion(IMPinnedConversationsController, v10, v11);
  v13 = IMOSLoggingEnabled();
  if (v9 > v12)
  {
    if (v13)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v22 = 136315650;
        v23 = "[IMPinnedConversationsController pinConfigurationHasCompatibleVersion:]";
        v24 = 2048;
        v25 = v9;
        v26 = 2048;
        v27 = v12;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "%s The pin config's version (%li) was definitively greater than the current version (%li).", &v22, 0x20u);
      }
    }

LABEL_11:
    v16 = 0;
    goto LABEL_17;
  }

  if (v13)
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v22 = 136315650;
      v23 = "[IMPinnedConversationsController pinConfigurationHasCompatibleVersion:]";
      v24 = 2048;
      v25 = v9;
      v26 = 2048;
      v27 = v12;
      _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "%s The pin config's version (%li) was definitively less than or equal to the current version (%li).", &v22, 0x20u);
    }
  }

  v16 = 1;
LABEL_17:
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = @"NO";
      if (v16)
      {
        v19 = @"YES";
      }

      v22 = 138412546;
      v23 = v19;
      v24 = 2080;
      v25 = "[IMPinnedConversationsController pinConfigurationHasCompatibleVersion:]";
      _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Returning %@ for %s", &v22, 0x16u);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)pinConfigurationIsValid:(id)valid
{
  v24 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  objc_msgSend_requiredKeys(IMPinnedConversationsController, v5, v6);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v22 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v19, v23, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v20;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = objc_msgSend_objectForKey_(validCopy, v10, *(*(&v19 + 1) + 8 * i), v19);

        if (!v14)
        {

          HasCompatibleVersion = 0;
          goto LABEL_11;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v19, v23, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  HasCompatibleVersion = objc_msgSend_pinConfigurationHasCompatibleVersion_(self, v15, validCopy);
LABEL_11:

  v17 = *MEMORY[0x1E69E9840];
  return HasCompatibleVersion;
}

- (BOOL)pinConfigurationHasCurrentVersion:(id)version
{
  v3 = objc_msgSend_objectForKey_(version, a2, @"pV");
  v6 = objc_msgSend_currentPinConfigurationVersion(IMPinnedConversationsController, v4, v5);
  if (v3)
  {
    v9 = objc_msgSend_integerValue(v3, v7, v8) == v6;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)shouldUpdateExistingPinConfig:(id)config withProposedPinConfig:(id)pinConfig
{
  v33 = *MEMORY[0x1E69E9840];
  configCopy = config;
  pinConfigCopy = pinConfig;
  if (!objc_msgSend_pinConfigurationIsValid_(self, v8, pinConfigCopy))
  {
    v23 = 0;
    goto LABEL_25;
  }

  v10 = objc_msgSend_objectForKey_(configCopy, v9, @"pT");
  v14 = objc_msgSend_objectForKey_(pinConfigCopy, v11, @"pT");
  if (!v14)
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v29 = 136315138;
        v30 = "[IMPinnedConversationsController shouldUpdateExistingPinConfig:withProposedPinConfig:]";
        _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "%s The proposed timestamp was nil.", &v29, 0xCu);
      }

      goto LABEL_22;
    }

LABEL_23:
    v23 = 0;
    goto LABEL_24;
  }

  if (v10)
  {
    objc_msgSend_timeIntervalSinceReferenceDate(v10, v12, v13);
    v16 = v15;
    objc_msgSend_timeIntervalSinceReferenceDate(v14, v17, v18);
    v20 = v19;
    v21 = IMOSLoggingEnabled();
    if (v16 < v20)
    {
      if (v21)
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v29 = 136315138;
          v30 = "[IMPinnedConversationsController shouldUpdateExistingPinConfig:withProposedPinConfig:]";
          _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "%s The proposed timestamp was definitively later than the existing timestamp.", &v29, 0xCu);
        }

LABEL_17:

        goto LABEL_18;
      }

      goto LABEL_18;
    }

    if (v21)
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v29 = 136315138;
        v30 = "[IMPinnedConversationsController shouldUpdateExistingPinConfig:withProposedPinConfig:]";
        _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "%s The proposed timestamp was definitively earlier than or equivalent to the existing timestamp.", &v29, 0xCu);
      }

LABEL_22:

      goto LABEL_23;
    }

    goto LABEL_23;
  }

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v29 = 136315138;
      v30 = "[IMPinnedConversationsController shouldUpdateExistingPinConfig:withProposedPinConfig:]";
      _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "%s There was no existing timestamp.", &v29, 0xCu);
    }

    goto LABEL_17;
  }

LABEL_18:
  v23 = 1;
LABEL_24:

LABEL_25:
  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = @"NO";
      if (v23)
      {
        v26 = @"YES";
      }

      v29 = 138412546;
      v30 = v26;
      v31 = 2080;
      v32 = "[IMPinnedConversationsController shouldUpdateExistingPinConfig:withProposedPinConfig:]";
      _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Returning %@ for %s", &v29, 0x16u);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
  return v23;
}

- (void)_fetchUbiquitousPinConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_initWeak(&location, self);
  v7 = objc_msgSend__ubiquitousDispatchQueue(IMPinnedConversationsController, v5, v6);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A826EB98;
  block[3] = &unk_1E780FEB8;
  objc_copyWeak(&v11, &location);
  v10 = configurationCopy;
  v8 = configurationCopy;
  dispatch_async(v7, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)fetchMostUpToDatePinConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A826EEF8;
  v7[3] = &unk_1E780FF08;
  v7[4] = self;
  v8 = configurationCopy;
  v5 = configurationCopy;
  objc_msgSend__fetchUbiquitousPinConfiguration_(self, v6, v7);
}

- (id)_ubiquitousPinConfigurationInStore:(id)store
{
  v20 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  v6 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8018], v4, v5);
  BoolFromDomain_forKey = objc_msgSend_getBoolFromDomain_forKey_(v6, v7, @"com.apple.messages.pinning", @"IMPinningShouldTryFetchAgainIfNullKey");
  v10 = objc_msgSend_dictionaryForKey_(storeCopy, v9, @"pD");
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      v19 = v10;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Retrieved from iCloud: %@", &v18, 0xCu);
    }
  }

  if (v10)
  {
    if ((BoolFromDomain_forKey & 1) == 0)
    {
      objc_msgSend_setBool_forDomain_forKey_(v6, v11, 1, @"com.apple.messages.pinning", @"IMPinningShouldTryFetchAgainIfNullKey");
    }

    goto LABEL_24;
  }

  if (!storeCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Received nil when trying to fetch the pin configuration from the ubiquitous store because the NSUbiquitousKeyValueStore was nil.", &v18, 2u);
      }

      goto LABEL_22;
    }

LABEL_23:
    v10 = 0;
    goto LABEL_24;
  }

  if (!BoolFromDomain_forKey)
  {
    goto LABEL_23;
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Received nil when trying to fetch the pin configuration from the ubiquitous store even though the NSUbiquitousKeyValueStore is initialized and the user has already pinned something before. This is an issue in NSUbiquitousKeyValueStore. Trying again.", &v18, 2u);
    }
  }

  v10 = objc_msgSend_dictionaryForKey_(storeCopy, v13, @"pD");
  if (!v10)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Received nil when trying to fetch the pin configuration from the ubiquitous store even after trying the fetch again. This is an issue in NSUbiquitousKeyValueStore.", &v18, 2u);
      }

LABEL_22:

      goto LABEL_23;
    }

    goto LABEL_23;
  }

LABEL_24:

  v16 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)pinnedConversationIdentifiersFromPinConfiguration:(id)configuration
{
  v3 = objc_msgSend_objectForKey_(configuration, a2, @"pP");
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

@end