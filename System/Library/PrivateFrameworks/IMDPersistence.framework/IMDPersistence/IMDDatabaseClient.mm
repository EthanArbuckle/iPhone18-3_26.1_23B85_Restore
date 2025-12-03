@interface IMDDatabaseClient
- (id)chatRecordsFilteredByPredicate:(id)predicate;
- (id)chatRecordsWithHandles:(id)handles serviceName:(id)name displayName:(id)displayName groupID:(id)d style:(unsigned __int8)style useOriginalGroupID:(BOOL)iD;
- (id)chatRecordsWithIdentifier:(id)identifier;
- (id)copyDuplicateGroupChatRecordsWithLimit:(int64_t)limit;
- (id)handleRecordsFilteredByPredicate:(id)predicate;
- (id)loadRecoverableMessagesMetadataGroupedByChatGUID;
- (id)recoverableMessagesMetadataPendingCloudKitDeleteWithLimit:(int64_t)limit;
- (id)recoverableMessagesMetadataPendingCloudKitSaveWithLimit:(int64_t)limit filter:(unint64_t)filter;
- (id)scheduledMessagesMetadataPendingCloudKitDeleteWithLimit:(int64_t)limit;
- (void)_sendAsyncXPCMessage:(id)message action:(int64_t)action responseHandler:(id)handler;
- (void)_sendSyncXPCMessage:(id)message action:(int64_t)action responseHandler:(id)handler;
- (void)addScheduledMessageGUIDandCKRecordToDeleteFromCloudKit:(id)kit recordID:(id)d;
- (void)clearRecoverableMessageTombStones;
- (void)deleteAttachmentsDirectWithPredicate:(id)predicate;
- (void)deleteDatabase;
- (void)deleteJunkMessagesOlderThanDays:(int64_t)days;
- (void)deleteRecoverableMessagesOlderThanDays:(int64_t)days;
- (void)deleteTombstonedScheduledMessagesWithRecordIDs:(id)ds;
- (void)fetchAttachmentRecordsFilteredUsingPredicate:(id)predicate limit:(unint64_t)limit completionHandler:(id)handler;
- (void)fetchAttachmentRecordsFilteredUsingPredicate:(id)predicate sortedUsingDescriptors:(id)descriptors limit:(unint64_t)limit completionHandler:(id)handler;
- (void)fetchChatRecordsFilteredUsingPredicate:(id)predicate sortedUsingDescriptors:(id)descriptors limit:(unint64_t)limit completionHandler:(id)handler;
- (void)fetchChatRecordsFilteredUsingPredicate:(id)predicate sortedUsingLastMessageDateAscending:(BOOL)ascending olderThan:(id)than limit:(unint64_t)limit completionHandler:(id)handler;
- (void)fetchChatRecordsWithAtLeastHandles:(id)handles serviceNames:(id)names style:(unsigned __int8)style completionHandler:(id)handler;
- (void)fetchChatRecordsWithPinningIdentifier:(id)identifier completionHandler:(id)handler;
- (void)fetchContactsForIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)fetchCountOfRecordType:(unint64_t)type completionHandler:(id)handler;
- (void)fetchDataForKey:(id)key completionHandler:(id)handler;
- (void)fetchGroupPhotoPathsForChatsWithGroupIDs:(id)ds completionHandler:(id)handler;
- (void)fetchHandleRecordsFilteredUsingPredicate:(id)predicate sortedUsingDescriptors:(id)descriptors limit:(unint64_t)limit completionHandler:(id)handler;
- (void)fetchInteger64ForKey:(id)key completionHandler:(id)handler;
- (void)fetchLastMessageRecordForChatRecordWithRowID:(int64_t)d completionHandler:(id)handler;
- (void)fetchMessagesWithoutChatsCountWithCompletionHandler:(id)handler;
- (void)fetchScheduledMessageRecordsForChatRecordWithGUID:(id)d limit:(unint64_t)limit completionHandler:(id)handler;
- (void)fetchTotalMessageCountWithCompletionHandler:(id)handler;
- (void)fetchUnreadMessageRecordsForChatsFilteredUsingPredicate:(id)predicate limit:(unint64_t)limit completionHandler:(id)handler;
- (void)inspectStorageWithStorageInspector:(id)inspector completionHandler:(id)handler;
- (void)markMessageRecordsAsReadWithGUIDs:(id)ds;
- (void)moveMessageRecordsToRecoveryForChatRecordsWithGUIDs:(id)ds deleteDate:(id)date;
- (void)moveMessageRecordsToRecoveryForMessageGUIDs:(id)ds deleteDate:(id)date;
- (void)notifyFirstUnlockComplete;
- (void)permanentlyDeleteRecoverableMessagesInChatsWithGUIDs:(id)ds completionHandler:(id)handler;
- (void)postSharePlayNotificationForChatGUID:(id)d faceTimeConversationUUID:(id)iD handleIdentifier:(id)identifier localizedApplicationName:(id)name;
- (void)recoverMessageRecordsForChatRecordsWithGUIDs:(id)ds;
- (void)resolveInconsistentGUIDForChatRecordWithGUID:(id)d newGUID:(id)iD completionHandler:(id)handler;
- (void)sendLegacyXPCCommandWithObject:(id)object reply:(id)reply;
- (void)storeRecoverableMessagePartWithBody:(id)body forMessageWithGUID:(id)d deleteDate:(id)date;
- (void)updateAttachmentSyndicationRanges:(id)ranges shouldHideFromSyndication:(BOOL)syndication;
- (void)updateAttachmentsSyncStatusTo:(int64_t)to forGUIDs:(id)ds;
- (void)updateChatsSyncStatusTo:(int64_t)to forGUIDs:(id)ds;
- (void)updateMessageSyndicationRanges:(id)ranges shouldHideFromSyndication:(BOOL)syndication;
- (void)updateMessagesSyncStatusTo:(int64_t)to forGUIDs:(id)ds;
- (void)updateMessagesSyncedSyndicationRangesForGUIDs:(id)ds toStatus:(int64_t)status;
- (void)updateRecoverableMessageSyncState:(int64_t)state forMessageGUIDs:(id)ds;
- (void)updateRecoverableMessageSyncState:(int64_t)state forMessageRowID:(int64_t)d onPartIndex:(int64_t)index;
@end

@implementation IMDDatabaseClient

- (id)loadRecoverableMessagesMetadataGroupedByChatGUID
{
  empty = xpc_dictionary_create_empty();
  if (empty)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = sub_1B7AE1994;
    v12 = sub_1B7AE24D4;
    v13 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7AE23AC;
    v7[3] = &unk_1E7CB70D0;
    v7[4] = self;
    v7[5] = &v8;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v3, empty, 144, v7);
    v5 = v9[5];
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_sendSyncXPCMessage:(id)message action:(int64_t)action responseHandler:(id)handler
{
  handlerCopy = handler;
  messageCopy = message;
  xpc_dictionary_set_int64(messageCopy, "__xpc__event_code__", action);
  __XPCIMDMessageStoreSendXPCMessage(messageCopy, handlerCopy, 0);
}

- (void)_sendAsyncXPCMessage:(id)message action:(int64_t)action responseHandler:(id)handler
{
  handlerCopy = handler;
  messageCopy = message;
  xpc_dictionary_set_int64(messageCopy, "__xpc__event_code__", action);
  __XPCIMDMessageStoreSendXPCMessage(messageCopy, handlerCopy, 1);
}

- (id)chatRecordsFilteredByPredicate:(id)predicate
{
  predicateCopy = predicate;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1B7AE1994;
  v17 = sub_1B7AE24D4;
  v18 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    if (predicateCopy)
    {
      v10 = predicateCopy;
      v11 = 0;
      IMInsertCodableObjectsToXPCDictionary();
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1B7B48C18;
    v12[3] = &unk_1E7CB70D0;
    v12[4] = self;
    v12[5] = &v13;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v5, v6, 128, v12, v10, v11);
  }

  v7 = v14[5];
  if (!v7)
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = v7;

  _Block_object_dispose(&v13, 8);

  return v8;
}

- (void)fetchChatRecordsFilteredUsingPredicate:(id)predicate sortedUsingDescriptors:(id)descriptors limit:(unint64_t)limit completionHandler:(id)handler
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  handlerCopy = handler;
  v14 = xpc_dictionary_create(0, 0, 0);
  if (v14)
  {
    if (predicateCopy)
    {
      IMInsertCodableObjectsToXPCDictionary();
    }

    if (descriptorsCopy)
    {
      v15 = objc_msgSend__xpcArrayWithCodableObjects_(self, v13, descriptorsCopy);
      xpc_dictionary_set_value(v14, "sortDescriptors", v15);
    }

    xpc_dictionary_set_int64(v14, "limit", limit);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1B7B48DF0;
    v17[3] = &unk_1E7CB70A8;
    v17[4] = self;
    v18 = handlerCopy;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v16, v14, 129, v17);
  }
}

- (void)fetchChatRecordsFilteredUsingPredicate:(id)predicate sortedUsingLastMessageDateAscending:(BOOL)ascending olderThan:(id)than limit:(unint64_t)limit completionHandler:(id)handler
{
  predicateCopy = predicate;
  thanCopy = than;
  handlerCopy = handler;
  v15 = xpc_dictionary_create(0, 0, 0);
  if (v15)
  {
    if (predicateCopy)
    {
      IMInsertCodableObjectsToXPCDictionary();
    }

    xpc_dictionary_set_BOOL(v15, "ascending", ascending);
    if (thanCopy)
    {
      IMInsertCodableObjectsToXPCDictionary();
    }

    xpc_dictionary_set_int64(v15, "limit", limit);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1B7B48FF8;
    v17[3] = &unk_1E7CB70A8;
    v17[4] = self;
    v18 = handlerCopy;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v16, v15, 130, v17);
  }
}

- (id)chatRecordsWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1B7AE1994;
  v17 = sub_1B7AE24D4;
  v18 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    if (identifierCopy)
    {
      v10 = identifierCopy;
      v11 = 0;
      IMInsertNSStringsToXPCDictionary();
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1B7B49208;
    v12[3] = &unk_1E7CB70D0;
    v12[4] = self;
    v12[5] = &v13;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v5, v6, 131, v12, v10, v11);
  }

  v7 = v14[5];
  if (!v7)
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = v7;

  _Block_object_dispose(&v13, 8);

  return v8;
}

- (void)fetchChatRecordsWithPinningIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = xpc_dictionary_create(0, 0, 0);
  if (v8)
  {
    if (identifierCopy)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1B7B49378;
    v10[3] = &unk_1E7CB70A8;
    v10[4] = self;
    v11 = handlerCopy;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v9, v8, 133, v10);
  }
}

- (id)chatRecordsWithHandles:(id)handles serviceName:(id)name displayName:(id)displayName groupID:(id)d style:(unsigned __int8)style useOriginalGroupID:(BOOL)iD
{
  iDCopy = iD;
  styleCopy = style;
  handlesCopy = handles;
  nameCopy = name;
  displayNameCopy = displayName;
  dCopy = d;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1B7AE1994;
  v28 = sub_1B7AE24D4;
  v29 = 0;
  v18 = xpc_dictionary_create(0, 0, 0);
  if (v18)
  {
    if (handlesCopy)
    {
      IMInsertArraysToXPCDictionary();
    }

    if (nameCopy)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (displayNameCopy)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (dCopy)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (iDCopy)
    {
      IMInsertBoolsToXPCDictionary();
    }

    xpc_dictionary_set_int64(v18, "style", styleCopy);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_1B7B49650;
    v23[3] = &unk_1E7CB70D0;
    v23[4] = self;
    v23[5] = &v24;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v19, v18, 126, v23);
  }

  v20 = v25[5];
  if (!v20)
  {
    v20 = MEMORY[0x1E695E0F0];
  }

  v21 = v20;

  _Block_object_dispose(&v24, 8);

  return v21;
}

- (void)fetchChatRecordsWithAtLeastHandles:(id)handles serviceNames:(id)names style:(unsigned __int8)style completionHandler:(id)handler
{
  styleCopy = style;
  handlesCopy = handles;
  namesCopy = names;
  handlerCopy = handler;
  v15 = xpc_dictionary_create(0, 0, 0);
  if (v15)
  {
    if (handlesCopy)
    {
      v17 = handlesCopy;
      v18 = 0;
      IMInsertArraysToXPCDictionary();
    }

    if (objc_msgSend_count(namesCopy, v13, v14, v17, v18))
    {
      IMInsertArraysToXPCDictionary();
    }

    xpc_dictionary_set_int64(v15, "style", styleCopy);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1B7B49810;
    v19[3] = &unk_1E7CB70A8;
    v19[4] = self;
    v20 = handlerCopy;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v16, v15, 127, v19);
  }
}

- (void)fetchGroupPhotoPathsForChatsWithGroupIDs:(id)ds completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = sub_1B7AE1994;
  v13[4] = sub_1B7AE24D4;
  v14 = 0;
  v8 = xpc_dictionary_create(0, 0, 0);
  if (v8)
  {
    if (dsCopy)
    {
      IMInsertArraysToXPCDictionary();
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1B7B49A10;
    v10[3] = &unk_1E7CB8D20;
    v12 = v13;
    v10[4] = self;
    v11 = handlerCopy;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v9, v8, 137, v10);
  }

  _Block_object_dispose(v13, 8);
}

- (id)copyDuplicateGroupChatRecordsWithLimit:(int64_t)limit
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1B7AE1994;
  v15 = sub_1B7AE24D4;
  v16 = 0;
  empty = xpc_dictionary_create_empty();
  v6 = empty;
  if (empty)
  {
    xpc_dictionary_set_int64(empty, "limit", limit);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1B7B49BF8;
    v10[3] = &unk_1E7CB70D0;
    v10[4] = self;
    v10[5] = &v11;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v7, v6, 136, v10);
  }

  v8 = v12[5];

  _Block_object_dispose(&v11, 8);
  return v8;
}

- (void)resolveInconsistentGUIDForChatRecordWithGUID:(id)d newGUID:(id)iD completionHandler:(id)handler
{
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  empty = xpc_dictionary_create_empty();
  if (empty)
  {
    if (dCopy)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (iDCopy)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1B7B49D88;
    v13[3] = &unk_1E7CB8D48;
    v14 = handlerCopy;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v12, empty, 138, v13);
  }
}

- (void)fetchLastMessageRecordForChatRecordWithRowID:(int64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  empty = xpc_dictionary_create_empty();
  v8 = empty;
  if (empty)
  {
    xpc_dictionary_set_int64(empty, "chatRowID", d);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1B7B49EBC;
    v10[3] = &unk_1E7CB70A8;
    v10[4] = self;
    v11 = handlerCopy;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v9, v8, 48, v10);
  }
}

- (void)fetchUnreadMessageRecordsForChatsFilteredUsingPredicate:(id)predicate limit:(unint64_t)limit completionHandler:(id)handler
{
  predicateCopy = predicate;
  handlerCopy = handler;
  empty = xpc_dictionary_create_empty();
  if (empty)
  {
    if (predicateCopy)
    {
      IMInsertCodableObjectsToXPCDictionary();
    }

    IMInsertIntsToXPCDictionary();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1B7B4A06C;
    v12[3] = &unk_1E7CB70A8;
    v12[4] = self;
    v13 = handlerCopy;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v11, empty, 83, v12, limit, 0);
  }
}

- (void)updateAttachmentSyndicationRanges:(id)ranges shouldHideFromSyndication:(BOOL)syndication
{
  rangesCopy = ranges;
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    if (rangesCopy)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    xpc_dictionary_set_BOOL(v6, "shouldHideFromSyndication", syndication);
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v7, v6, 206, &unk_1F2FA0210);
  }
}

- (void)updateMessageSyndicationRanges:(id)ranges shouldHideFromSyndication:(BOOL)syndication
{
  rangesCopy = ranges;
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    if (rangesCopy)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    xpc_dictionary_set_BOOL(v6, "shouldHideFromSyndication", syndication);
    objc_msgSend__sendAsyncXPCMessage_action_responseHandler_(self, v7, v6, 216, &unk_1F2F9FB90);
  }
}

- (void)fetchTotalMessageCountWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = xpc_dictionary_create(0, 0, 0);
  if (v5)
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2020000000;
    v10[3] = 1;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7B4A608;
    v7[3] = &unk_1E7CB8D70;
    v9 = v10;
    v8 = handlerCopy;
    objc_msgSend__sendAsyncXPCMessage_action_responseHandler_(self, v6, v5, 234, v7);

    _Block_object_dispose(v10, 8);
  }
}

- (void)fetchMessagesWithoutChatsCountWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = xpc_dictionary_create(0, 0, 0);
  if (v5)
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2020000000;
    v10[3] = -1;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7B4A770;
    v7[3] = &unk_1E7CB8D70;
    v9 = v10;
    v8 = handlerCopy;
    objc_msgSend__sendAsyncXPCMessage_action_responseHandler_(self, v6, v5, 235, v7);

    _Block_object_dispose(v10, 8);
  }
}

- (void)postSharePlayNotificationForChatGUID:(id)d faceTimeConversationUUID:(id)iD handleIdentifier:(id)identifier localizedApplicationName:(id)name
{
  v28 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  identifierCopy = identifier;
  nameCopy = name;
  empty = xpc_dictionary_create_empty();
  v15 = empty;
  if (identifierCopy && iDCopy && dCopy && empty)
  {
    IMInsertNSStringsToXPCDictionary();
    IMInsertNSStringsToXPCDictionary();
    v19 = identifierCopy;
    IMInsertNSStringsToXPCDictionary();
    if (nameCopy)
    {
      v19 = nameCopy;
      IMInsertNSStringsToXPCDictionary();
    }

    objc_msgSend__sendAsyncXPCMessage_action_responseHandler_(self, v16, v15, 215, &unk_1F2FA0A30, v19, 0);
  }

  else if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v21 = v15;
      v22 = 2112;
      v23 = dCopy;
      v24 = 2112;
      v25 = iDCopy;
      v26 = 2112;
      v27 = identifierCopy;
      _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "Not sending XPC message for SharePlay notification because message (%@), chatGUID (%@), faceTimeConversationUUID (%@), or handleIdentifier (%@) were nil", buf, 0x2Au);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)notifyFirstUnlockComplete
{
  v4 = xpc_dictionary_create(0, 0, 0);
  objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v3, v4, 222, &unk_1F2FA0A50);
}

- (void)deleteDatabase
{
  v4 = xpc_dictionary_create(0, 0, 0);
  objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v3, v4, 232, &unk_1F2F9FB10);
}

- (id)handleRecordsFilteredByPredicate:(id)predicate
{
  predicateCopy = predicate;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1B7AE1994;
  v17 = sub_1B7AE24D4;
  v18 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    if (predicateCopy)
    {
      v10 = predicateCopy;
      v11 = 0;
      IMInsertCodableObjectsToXPCDictionary();
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1B7B4AD0C;
    v12[3] = &unk_1E7CB70D0;
    v12[4] = self;
    v12[5] = &v13;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v5, v6, 227, v12, v10, v11);
  }

  v7 = v14[5];
  if (!v7)
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = v7;

  _Block_object_dispose(&v13, 8);

  return v8;
}

- (void)fetchHandleRecordsFilteredUsingPredicate:(id)predicate sortedUsingDescriptors:(id)descriptors limit:(unint64_t)limit completionHandler:(id)handler
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  handlerCopy = handler;
  v14 = xpc_dictionary_create(0, 0, 0);
  if (v14)
  {
    if (predicateCopy)
    {
      IMInsertCodableObjectsToXPCDictionary();
    }

    if (descriptorsCopy)
    {
      v15 = objc_msgSend__xpcArrayWithCodableObjects_(self, v13, descriptorsCopy);
      xpc_dictionary_set_value(v14, "sortDescriptors", v15);
    }

    xpc_dictionary_set_int64(v14, "limit", limit);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1B7B4AEE4;
    v17[3] = &unk_1E7CB70A8;
    v17[4] = self;
    v18 = handlerCopy;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v16, v14, 228, v17);
  }
}

- (void)deleteAttachmentsDirectWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = xpc_dictionary_create(0, 0, 0);
  if (v5)
  {
    if (predicateCopy)
    {
      v6 = predicateCopy;
      v7 = 0;
      IMInsertCodableObjectsToXPCDictionary();
    }

    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v4, v5, 32, &unk_1F2FA0A70, v6, v7);
  }
}

- (void)fetchAttachmentRecordsFilteredUsingPredicate:(id)predicate limit:(unint64_t)limit completionHandler:(id)handler
{
  predicateCopy = predicate;
  handlerCopy = handler;
  v10 = xpc_dictionary_create(0, 0, 0);
  if (v10)
  {
    if (predicateCopy)
    {
      IMInsertCodableObjectsToXPCDictionary();
    }

    xpc_dictionary_set_int64(v10, "limit", limit);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1B7B4B130;
    v12[3] = &unk_1E7CB70A8;
    v12[4] = self;
    v13 = handlerCopy;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v11, v10, 33, v12);
  }
}

- (void)fetchAttachmentRecordsFilteredUsingPredicate:(id)predicate sortedUsingDescriptors:(id)descriptors limit:(unint64_t)limit completionHandler:(id)handler
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  handlerCopy = handler;
  v14 = xpc_dictionary_create(0, 0, 0);
  if (v14)
  {
    if (predicateCopy)
    {
      IMInsertCodableObjectsToXPCDictionary();
    }

    if (descriptorsCopy)
    {
      v15 = objc_msgSend__xpcArrayWithCodableObjects_(self, v13, descriptorsCopy);
      xpc_dictionary_set_value(v14, "sortDescriptors", v15);
    }

    xpc_dictionary_set_int64(v14, "limit", limit);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1B7B4B328;
    v17[3] = &unk_1E7CB70A8;
    v17[4] = self;
    v18 = handlerCopy;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v16, v14, 34, v17);
  }
}

- (void)fetchDataForKey:(id)key completionHandler:(id)handler
{
  keyCopy = key;
  handlerCopy = handler;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = sub_1B7AE1994;
  v11[4] = sub_1B7AE24D4;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7B4B4D8;
  v8[3] = &unk_1E7CB8D70;
  v10 = v11;
  v7 = handlerCopy;
  v9 = v7;
  __syncXPCIMDKVValueForKey_IPCAction(v8, keyCopy);

  _Block_object_dispose(v11, 8);
}

- (void)fetchInteger64ForKey:(id)key completionHandler:(id)handler
{
  keyCopy = key;
  handlerCopy = handler;
  empty = xpc_dictionary_create_empty();
  if (empty)
  {
    if (keyCopy)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1B7B4B638;
    v10[3] = &unk_1E7CB8D48;
    v11 = handlerCopy;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v9, empty, 192, v10);
  }
}

- (void)moveMessageRecordsToRecoveryForMessageGUIDs:(id)ds deleteDate:(id)date
{
  dsCopy = ds;
  dateCopy = date;
  empty = xpc_dictionary_create_empty();
  if (empty && objc_msgSend_count(dsCopy, v7, v8))
  {
    IMInsertArraysToXPCDictionary();
    IMInsertCodableObjectsToXPCDictionary();
    objc_msgSend__sendAsyncXPCMessage_action_responseHandler_(self, v10, empty, 207, &unk_1F2FA0A90, dateCopy, 0);
  }
}

- (void)moveMessageRecordsToRecoveryForChatRecordsWithGUIDs:(id)ds deleteDate:(id)date
{
  dsCopy = ds;
  dateCopy = date;
  empty = xpc_dictionary_create_empty();
  if (empty && objc_msgSend_count(dsCopy, v7, v8))
  {
    IMInsertArraysToXPCDictionary();
    IMInsertCodableObjectsToXPCDictionary();
    objc_msgSend__sendAsyncXPCMessage_action_responseHandler_(self, v10, empty, 141, &unk_1F2FA0AB0, dateCopy, 0);
  }
}

- (void)recoverMessageRecordsForChatRecordsWithGUIDs:(id)ds
{
  dsCopy = ds;
  empty = xpc_dictionary_create_empty();
  if (empty && objc_msgSend_count(dsCopy, v4, v5))
  {
    IMInsertArraysToXPCDictionary();
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v7, empty, 142, &unk_1F2F9FAB0, dsCopy, 0);
  }
}

- (void)updateChatsSyncStatusTo:(int64_t)to forGUIDs:(id)ds
{
  dsCopy = ds;
  if (objc_msgSend_count(dsCopy, v6, v7))
  {
    empty = xpc_dictionary_create_empty();
    IMInsertArraysToXPCDictionary();
    IMInsertIntsToXPCDictionary();
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v9, empty, 150, &unk_1F2FA0AD0, to, 0);
  }
}

- (void)updateMessagesSyncStatusTo:(int64_t)to forGUIDs:(id)ds
{
  dsCopy = ds;
  if (objc_msgSend_count(dsCopy, v6, v7))
  {
    empty = xpc_dictionary_create_empty();
    IMInsertArraysToXPCDictionary();
    IMInsertIntsToXPCDictionary();
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v9, empty, 181, &unk_1F2FA0AF0, to, 0);
  }
}

- (void)updateMessagesSyncedSyndicationRangesForGUIDs:(id)ds toStatus:(int64_t)status
{
  dsCopy = ds;
  if (objc_msgSend_count(dsCopy, v6, v7))
  {
    empty = xpc_dictionary_create_empty();
    IMInsertArraysToXPCDictionary();
    IMInsertIntsToXPCDictionary();
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v9, empty, 182, &unk_1F2FA0B10, status, 0);
  }
}

- (void)updateAttachmentsSyncStatusTo:(int64_t)to forGUIDs:(id)ds
{
  dsCopy = ds;
  if (objc_msgSend_count(dsCopy, v6, v7))
  {
    empty = xpc_dictionary_create_empty();
    IMInsertArraysToXPCDictionary();
    IMInsertIntsToXPCDictionary();
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v9, empty, 188, &unk_1F2FA0B30, to, 0);
  }
}

- (void)deleteRecoverableMessagesOlderThanDays:(int64_t)days
{
  empty = xpc_dictionary_create_empty();
  if (empty)
  {
    v7 = empty;
    IMInsertIntsToXPCDictionary();
    objc_msgSend__sendAsyncXPCMessage_action_responseHandler_(self, v6, v7, 208, &unk_1F2F9FF50, days, 0);
    empty = v7;
  }
}

- (void)deleteJunkMessagesOlderThanDays:(int64_t)days
{
  empty = xpc_dictionary_create_empty();
  if (empty)
  {
    v7 = empty;
    IMInsertIntsToXPCDictionary();
    objc_msgSend__sendAsyncXPCMessage_action_responseHandler_(self, v6, v7, 219, &unk_1F2F9FF30, days, 0);
    empty = v7;
  }
}

- (void)permanentlyDeleteRecoverableMessagesInChatsWithGUIDs:(id)ds completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  empty = xpc_dictionary_create_empty();
  if (empty && objc_msgSend_count(dsCopy, v8, v9))
  {
    IMInsertArraysToXPCDictionary();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1B7B4BD44;
    v12[3] = &unk_1E7CB70A8;
    v12[4] = self;
    v13 = handlerCopy;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v11, empty, 143, v12, dsCopy, 0);
  }
}

- (id)recoverableMessagesMetadataPendingCloudKitSaveWithLimit:(int64_t)limit filter:(unint64_t)filter
{
  empty = xpc_dictionary_create_empty();
  if (empty)
  {
    IMInsertIntsToXPCDictionary();
    IMInsertIntsToXPCDictionary();
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = sub_1B7AE1994;
    v15 = sub_1B7AE24D4;
    v16 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1B7B4BF48;
    v10[3] = &unk_1E7CB70D0;
    v10[4] = self;
    v10[5] = &v11;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v7, empty, 210, v10, filter, 0);
    v8 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (id)recoverableMessagesMetadataPendingCloudKitDeleteWithLimit:(int64_t)limit
{
  empty = xpc_dictionary_create_empty();
  if (empty)
  {
    IMInsertIntsToXPCDictionary();
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_1B7AE1994;
    v14 = sub_1B7AE24D4;
    v15 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1B7B4C128;
    v9[3] = &unk_1E7CB70D0;
    v9[4] = self;
    v9[5] = &v10;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v6, empty, 213, v9, limit, 0);
    v7 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (void)clearRecoverableMessageTombStones
{
  empty = xpc_dictionary_create_empty();
  if (empty)
  {
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v3, empty, 214, &unk_1F2FA0B50);
  }

  else if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Recently Deleted | Could not create xpc message. Not clearing message tombstones", v6, 2u);
    }
  }
}

- (void)updateRecoverableMessageSyncState:(int64_t)state forMessageRowID:(int64_t)d onPartIndex:(int64_t)index
{
  empty = xpc_dictionary_create_empty();
  if (empty)
  {
    v9 = empty;
    IMInsertIntsToXPCDictionary();
    IMInsertIntsToXPCDictionary();
    IMInsertIntsToXPCDictionary();
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v8, v9, 211, &unk_1F2F9FE90, index, 0);
    empty = v9;
  }
}

- (void)updateRecoverableMessageSyncState:(int64_t)state forMessageGUIDs:(id)ds
{
  dsCopy = ds;
  empty = xpc_dictionary_create_empty();
  if (empty)
  {
    IMInsertIntsToXPCDictionary();
    IMInsertArraysToXPCDictionary();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1B7B4C404;
    v9[3] = &unk_1E7CB8D90;
    v9[4] = state;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v8, empty, 221, v9, dsCopy, 0);
  }
}

- (void)storeRecoverableMessagePartWithBody:(id)body forMessageWithGUID:(id)d deleteDate:(id)date
{
  v23 = *MEMORY[0x1E69E9840];
  bodyCopy = body;
  dCopy = d;
  dateCopy = date;
  empty = xpc_dictionary_create_empty();
  if (dCopy && objc_msgSend_length(dCopy, v11, v12) && objc_msgSend_length(bodyCopy, v14, v15))
  {
    IMInsertNSStringsToXPCDictionary();
    IMInsertCodableObjectsToXPCDictionary();
    IMInsertCodableObjectsToXPCDictionary();
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v16, empty, 212, &unk_1F2FA0B70, bodyCopy, 0);
  }

  else if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v20 = dCopy;
      v21 = 2112;
      v22 = bodyCopy;
      _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "IMDDatabaseClient | Early return: Recently Deleted:storeRecoverableMessagePartWithBody given messageGUID: %@ partBody: %@", buf, 0x16u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)fetchCountOfRecordType:(unint64_t)type completionHandler:(id)handler
{
  handlerCopy = handler;
  empty = xpc_dictionary_create_empty();
  v8 = empty;
  if (empty)
  {
    xpc_dictionary_set_uint64(empty, "recordType", type);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1B7B4C794;
    v11[3] = &unk_1E7CB8D48;
    v12 = handlerCopy;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v9, v8, 226, v11);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Failed to create XPC dictionary", buf, 2u);
      }
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)inspectStorageWithStorageInspector:(id)inspector completionHandler:(id)handler
{
  inspectorCopy = inspector;
  handlerCopy = handler;
  empty = xpc_dictionary_create_empty();
  if (empty)
  {
    v16 = 0;
    v10 = objc_msgSend_encodeToData_(inspectorCopy, v8, &v16);
    v11 = v16;
    v12 = v11;
    if (!v10 || v11)
    {
      handlerCopy[2](handlerCopy, 0, v11);
    }

    else
    {
      IMInsertDatasToXPCDictionary();
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1B7B4C918;
      v14[3] = &unk_1E7CB8D48;
      v15 = handlerCopy;
      objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v13, empty, 233, v14, v10, 0);
    }
  }
}

- (void)fetchScheduledMessageRecordsForChatRecordWithGUID:(id)d limit:(unint64_t)limit completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  empty = xpc_dictionary_create_empty();
  if (empty)
  {
    if (dCopy)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    xpc_dictionary_set_int64(empty, "limit", limit);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1B7B4CB08;
    v12[3] = &unk_1E7CB70A8;
    v12[4] = self;
    v13 = handlerCopy;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v11, empty, 69, v12);
  }
}

- (id)scheduledMessagesMetadataPendingCloudKitDeleteWithLimit:(int64_t)limit
{
  empty = xpc_dictionary_create_empty();
  if (empty)
  {
    IMInsertIntsToXPCDictionary();
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_1B7AE1994;
    v14 = sub_1B7AE24D4;
    v15 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1B7B4CCEC;
    v9[3] = &unk_1E7CB70D0;
    v9[4] = self;
    v9[5] = &v10;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v6, empty, 70, v9, limit, 0);
    v7 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (void)addScheduledMessageGUIDandCKRecordToDeleteFromCloudKit:(id)kit recordID:(id)d
{
  kitCopy = kit;
  dCopy = d;
  empty = xpc_dictionary_create_empty();
  if (empty && objc_msgSend_length(kitCopy, v8, v9) && objc_msgSend_length(dCopy, v11, v12))
  {
    IMInsertNSStringsToXPCDictionary();
    IMInsertNSStringsToXPCDictionary();
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1B7B4CE94;
    v14[3] = &unk_1E7CB8DB8;
    v15 = kitCopy;
    v16 = dCopy;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v13, empty, 71, v14, dCopy, 0);
  }
}

- (void)deleteTombstonedScheduledMessagesWithRecordIDs:(id)ds
{
  dsCopy = ds;
  empty = xpc_dictionary_create_empty();
  if (empty)
  {
    if (objc_msgSend_count(dsCopy, v5, v6))
    {
      IMInsertArraysToXPCDictionary();
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1B7B4D01C;
    v9[3] = &unk_1E7CB8DE0;
    v10 = dsCopy;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v8, empty, 72, v9);
  }
}

- (void)markMessageRecordsAsReadWithGUIDs:(id)ds
{
  dsCopy = ds;
  empty = xpc_dictionary_create_empty();
  if (empty)
  {
    IMInsertArraysToXPCDictionary();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7B4D18C;
    v7[3] = &unk_1E7CB8DE0;
    v8 = dsCopy;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v6, empty, 229, v7, dsCopy, 0);
  }
}

- (void)sendLegacyXPCCommandWithObject:(id)object reply:(id)reply
{
  objectCopy = object;
  replyCopy = reply;
  v8 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], v7, *MEMORY[0x1E695D930], @"IMDDatabaseClient should not fulfill this method, should use proxy directly!", 0);
  objc_exception_throw(v8);
}

- (void)fetchContactsForIdentifiers:(id)identifiers completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  empty = xpc_dictionary_create_empty();
  if (empty)
  {
    if (identifiersCopy)
    {
      IMInsertArraysToXPCDictionary();
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1B7B4D37C;
    v10[3] = &unk_1E7CB70A8;
    v10[4] = self;
    v11 = handlerCopy;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v9, empty, 231, v10);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F8]);
  }
}

@end