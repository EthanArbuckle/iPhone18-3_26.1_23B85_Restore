@interface IMDDatabaseClient
- (id)chatRecordsFilteredByPredicate:(id)a3;
- (id)chatRecordsWithHandles:(id)a3 serviceName:(id)a4 displayName:(id)a5 groupID:(id)a6 style:(unsigned __int8)a7 useOriginalGroupID:(BOOL)a8;
- (id)chatRecordsWithIdentifier:(id)a3;
- (id)copyDuplicateGroupChatRecordsWithLimit:(int64_t)a3;
- (id)handleRecordsFilteredByPredicate:(id)a3;
- (id)loadRecoverableMessagesMetadataGroupedByChatGUID;
- (id)recoverableMessagesMetadataPendingCloudKitDeleteWithLimit:(int64_t)a3;
- (id)recoverableMessagesMetadataPendingCloudKitSaveWithLimit:(int64_t)a3 filter:(unint64_t)a4;
- (id)scheduledMessagesMetadataPendingCloudKitDeleteWithLimit:(int64_t)a3;
- (void)_sendAsyncXPCMessage:(id)a3 action:(int64_t)a4 responseHandler:(id)a5;
- (void)_sendSyncXPCMessage:(id)a3 action:(int64_t)a4 responseHandler:(id)a5;
- (void)addScheduledMessageGUIDandCKRecordToDeleteFromCloudKit:(id)a3 recordID:(id)a4;
- (void)clearRecoverableMessageTombStones;
- (void)deleteAttachmentsDirectWithPredicate:(id)a3;
- (void)deleteDatabase;
- (void)deleteJunkMessagesOlderThanDays:(int64_t)a3;
- (void)deleteRecoverableMessagesOlderThanDays:(int64_t)a3;
- (void)deleteTombstonedScheduledMessagesWithRecordIDs:(id)a3;
- (void)fetchAttachmentRecordsFilteredUsingPredicate:(id)a3 limit:(unint64_t)a4 completionHandler:(id)a5;
- (void)fetchAttachmentRecordsFilteredUsingPredicate:(id)a3 sortedUsingDescriptors:(id)a4 limit:(unint64_t)a5 completionHandler:(id)a6;
- (void)fetchChatRecordsFilteredUsingPredicate:(id)a3 sortedUsingDescriptors:(id)a4 limit:(unint64_t)a5 completionHandler:(id)a6;
- (void)fetchChatRecordsFilteredUsingPredicate:(id)a3 sortedUsingLastMessageDateAscending:(BOOL)a4 olderThan:(id)a5 limit:(unint64_t)a6 completionHandler:(id)a7;
- (void)fetchChatRecordsWithAtLeastHandles:(id)a3 serviceNames:(id)a4 style:(unsigned __int8)a5 completionHandler:(id)a6;
- (void)fetchChatRecordsWithPinningIdentifier:(id)a3 completionHandler:(id)a4;
- (void)fetchContactsForIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)fetchCountOfRecordType:(unint64_t)a3 completionHandler:(id)a4;
- (void)fetchDataForKey:(id)a3 completionHandler:(id)a4;
- (void)fetchGroupPhotoPathsForChatsWithGroupIDs:(id)a3 completionHandler:(id)a4;
- (void)fetchHandleRecordsFilteredUsingPredicate:(id)a3 sortedUsingDescriptors:(id)a4 limit:(unint64_t)a5 completionHandler:(id)a6;
- (void)fetchInteger64ForKey:(id)a3 completionHandler:(id)a4;
- (void)fetchLastMessageRecordForChatRecordWithRowID:(int64_t)a3 completionHandler:(id)a4;
- (void)fetchMessagesWithoutChatsCountWithCompletionHandler:(id)a3;
- (void)fetchScheduledMessageRecordsForChatRecordWithGUID:(id)a3 limit:(unint64_t)a4 completionHandler:(id)a5;
- (void)fetchTotalMessageCountWithCompletionHandler:(id)a3;
- (void)fetchUnreadMessageRecordsForChatsFilteredUsingPredicate:(id)a3 limit:(unint64_t)a4 completionHandler:(id)a5;
- (void)inspectStorageWithStorageInspector:(id)a3 completionHandler:(id)a4;
- (void)markMessageRecordsAsReadWithGUIDs:(id)a3;
- (void)moveMessageRecordsToRecoveryForChatRecordsWithGUIDs:(id)a3 deleteDate:(id)a4;
- (void)moveMessageRecordsToRecoveryForMessageGUIDs:(id)a3 deleteDate:(id)a4;
- (void)notifyFirstUnlockComplete;
- (void)permanentlyDeleteRecoverableMessagesInChatsWithGUIDs:(id)a3 completionHandler:(id)a4;
- (void)postSharePlayNotificationForChatGUID:(id)a3 faceTimeConversationUUID:(id)a4 handleIdentifier:(id)a5 localizedApplicationName:(id)a6;
- (void)recoverMessageRecordsForChatRecordsWithGUIDs:(id)a3;
- (void)resolveInconsistentGUIDForChatRecordWithGUID:(id)a3 newGUID:(id)a4 completionHandler:(id)a5;
- (void)sendLegacyXPCCommandWithObject:(id)a3 reply:(id)a4;
- (void)storeRecoverableMessagePartWithBody:(id)a3 forMessageWithGUID:(id)a4 deleteDate:(id)a5;
- (void)updateAttachmentSyndicationRanges:(id)a3 shouldHideFromSyndication:(BOOL)a4;
- (void)updateAttachmentsSyncStatusTo:(int64_t)a3 forGUIDs:(id)a4;
- (void)updateChatsSyncStatusTo:(int64_t)a3 forGUIDs:(id)a4;
- (void)updateMessageSyndicationRanges:(id)a3 shouldHideFromSyndication:(BOOL)a4;
- (void)updateMessagesSyncStatusTo:(int64_t)a3 forGUIDs:(id)a4;
- (void)updateMessagesSyncedSyndicationRangesForGUIDs:(id)a3 toStatus:(int64_t)a4;
- (void)updateRecoverableMessageSyncState:(int64_t)a3 forMessageGUIDs:(id)a4;
- (void)updateRecoverableMessageSyncState:(int64_t)a3 forMessageRowID:(int64_t)a4 onPartIndex:(int64_t)a5;
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

- (void)_sendSyncXPCMessage:(id)a3 action:(int64_t)a4 responseHandler:(id)a5
{
  v7 = a5;
  v8 = a3;
  xpc_dictionary_set_int64(v8, "__xpc__event_code__", a4);
  __XPCIMDMessageStoreSendXPCMessage(v8, v7, 0);
}

- (void)_sendAsyncXPCMessage:(id)a3 action:(int64_t)a4 responseHandler:(id)a5
{
  v7 = a5;
  v8 = a3;
  xpc_dictionary_set_int64(v8, "__xpc__event_code__", a4);
  __XPCIMDMessageStoreSendXPCMessage(v8, v7, 1);
}

- (id)chatRecordsFilteredByPredicate:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1B7AE1994;
  v17 = sub_1B7AE24D4;
  v18 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    if (v4)
    {
      v10 = v4;
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

- (void)fetchChatRecordsFilteredUsingPredicate:(id)a3 sortedUsingDescriptors:(id)a4 limit:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v14 = xpc_dictionary_create(0, 0, 0);
  if (v14)
  {
    if (v10)
    {
      IMInsertCodableObjectsToXPCDictionary();
    }

    if (v11)
    {
      v15 = objc_msgSend__xpcArrayWithCodableObjects_(self, v13, v11);
      xpc_dictionary_set_value(v14, "sortDescriptors", v15);
    }

    xpc_dictionary_set_int64(v14, "limit", a5);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1B7B48DF0;
    v17[3] = &unk_1E7CB70A8;
    v17[4] = self;
    v18 = v12;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v16, v14, 129, v17);
  }
}

- (void)fetchChatRecordsFilteredUsingPredicate:(id)a3 sortedUsingLastMessageDateAscending:(BOOL)a4 olderThan:(id)a5 limit:(unint64_t)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v15 = xpc_dictionary_create(0, 0, 0);
  if (v15)
  {
    if (v12)
    {
      IMInsertCodableObjectsToXPCDictionary();
    }

    xpc_dictionary_set_BOOL(v15, "ascending", a4);
    if (v13)
    {
      IMInsertCodableObjectsToXPCDictionary();
    }

    xpc_dictionary_set_int64(v15, "limit", a6);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1B7B48FF8;
    v17[3] = &unk_1E7CB70A8;
    v17[4] = self;
    v18 = v14;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v16, v15, 130, v17);
  }
}

- (id)chatRecordsWithIdentifier:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1B7AE1994;
  v17 = sub_1B7AE24D4;
  v18 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    if (v4)
    {
      v10 = v4;
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

- (void)fetchChatRecordsWithPinningIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = xpc_dictionary_create(0, 0, 0);
  if (v8)
  {
    if (v6)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1B7B49378;
    v10[3] = &unk_1E7CB70A8;
    v10[4] = self;
    v11 = v7;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v9, v8, 133, v10);
  }
}

- (id)chatRecordsWithHandles:(id)a3 serviceName:(id)a4 displayName:(id)a5 groupID:(id)a6 style:(unsigned __int8)a7 useOriginalGroupID:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1B7AE1994;
  v28 = sub_1B7AE24D4;
  v29 = 0;
  v18 = xpc_dictionary_create(0, 0, 0);
  if (v18)
  {
    if (v14)
    {
      IMInsertArraysToXPCDictionary();
    }

    if (v15)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (v16)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (v17)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (v8)
    {
      IMInsertBoolsToXPCDictionary();
    }

    xpc_dictionary_set_int64(v18, "style", v9);
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

- (void)fetchChatRecordsWithAtLeastHandles:(id)a3 serviceNames:(id)a4 style:(unsigned __int8)a5 completionHandler:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v15 = xpc_dictionary_create(0, 0, 0);
  if (v15)
  {
    if (v10)
    {
      v17 = v10;
      v18 = 0;
      IMInsertArraysToXPCDictionary();
    }

    if (objc_msgSend_count(v11, v13, v14, v17, v18))
    {
      IMInsertArraysToXPCDictionary();
    }

    xpc_dictionary_set_int64(v15, "style", v7);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1B7B49810;
    v19[3] = &unk_1E7CB70A8;
    v19[4] = self;
    v20 = v12;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v16, v15, 127, v19);
  }
}

- (void)fetchGroupPhotoPathsForChatsWithGroupIDs:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = sub_1B7AE1994;
  v13[4] = sub_1B7AE24D4;
  v14 = 0;
  v8 = xpc_dictionary_create(0, 0, 0);
  if (v8)
  {
    if (v6)
    {
      IMInsertArraysToXPCDictionary();
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1B7B49A10;
    v10[3] = &unk_1E7CB8D20;
    v12 = v13;
    v10[4] = self;
    v11 = v7;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v9, v8, 137, v10);
  }

  _Block_object_dispose(v13, 8);
}

- (id)copyDuplicateGroupChatRecordsWithLimit:(int64_t)a3
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
    xpc_dictionary_set_int64(empty, "limit", a3);
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

- (void)resolveInconsistentGUIDForChatRecordWithGUID:(id)a3 newGUID:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  empty = xpc_dictionary_create_empty();
  if (empty)
  {
    if (v8)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (v9)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1B7B49D88;
    v13[3] = &unk_1E7CB8D48;
    v14 = v10;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v12, empty, 138, v13);
  }
}

- (void)fetchLastMessageRecordForChatRecordWithRowID:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  empty = xpc_dictionary_create_empty();
  v8 = empty;
  if (empty)
  {
    xpc_dictionary_set_int64(empty, "chatRowID", a3);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1B7B49EBC;
    v10[3] = &unk_1E7CB70A8;
    v10[4] = self;
    v11 = v6;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v9, v8, 48, v10);
  }
}

- (void)fetchUnreadMessageRecordsForChatsFilteredUsingPredicate:(id)a3 limit:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  empty = xpc_dictionary_create_empty();
  if (empty)
  {
    if (v8)
    {
      IMInsertCodableObjectsToXPCDictionary();
    }

    IMInsertIntsToXPCDictionary();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1B7B4A06C;
    v12[3] = &unk_1E7CB70A8;
    v12[4] = self;
    v13 = v9;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v11, empty, 83, v12, a4, 0);
  }
}

- (void)updateAttachmentSyndicationRanges:(id)a3 shouldHideFromSyndication:(BOOL)a4
{
  v8 = a3;
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    if (v8)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    xpc_dictionary_set_BOOL(v6, "shouldHideFromSyndication", a4);
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v7, v6, 206, &unk_1F2FA0210);
  }
}

- (void)updateMessageSyndicationRanges:(id)a3 shouldHideFromSyndication:(BOOL)a4
{
  v8 = a3;
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    if (v8)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    xpc_dictionary_set_BOOL(v6, "shouldHideFromSyndication", a4);
    objc_msgSend__sendAsyncXPCMessage_action_responseHandler_(self, v7, v6, 216, &unk_1F2F9FB90);
  }
}

- (void)fetchTotalMessageCountWithCompletionHandler:(id)a3
{
  v4 = a3;
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
    v8 = v4;
    objc_msgSend__sendAsyncXPCMessage_action_responseHandler_(self, v6, v5, 234, v7);

    _Block_object_dispose(v10, 8);
  }
}

- (void)fetchMessagesWithoutChatsCountWithCompletionHandler:(id)a3
{
  v4 = a3;
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
    v8 = v4;
    objc_msgSend__sendAsyncXPCMessage_action_responseHandler_(self, v6, v5, 235, v7);

    _Block_object_dispose(v10, 8);
  }
}

- (void)postSharePlayNotificationForChatGUID:(id)a3 faceTimeConversationUUID:(id)a4 handleIdentifier:(id)a5 localizedApplicationName:(id)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  empty = xpc_dictionary_create_empty();
  v15 = empty;
  if (v12 && v11 && v10 && empty)
  {
    IMInsertNSStringsToXPCDictionary();
    IMInsertNSStringsToXPCDictionary();
    v19 = v12;
    IMInsertNSStringsToXPCDictionary();
    if (v13)
    {
      v19 = v13;
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
      v23 = v10;
      v24 = 2112;
      v25 = v11;
      v26 = 2112;
      v27 = v12;
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

- (id)handleRecordsFilteredByPredicate:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1B7AE1994;
  v17 = sub_1B7AE24D4;
  v18 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    if (v4)
    {
      v10 = v4;
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

- (void)fetchHandleRecordsFilteredUsingPredicate:(id)a3 sortedUsingDescriptors:(id)a4 limit:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v14 = xpc_dictionary_create(0, 0, 0);
  if (v14)
  {
    if (v10)
    {
      IMInsertCodableObjectsToXPCDictionary();
    }

    if (v11)
    {
      v15 = objc_msgSend__xpcArrayWithCodableObjects_(self, v13, v11);
      xpc_dictionary_set_value(v14, "sortDescriptors", v15);
    }

    xpc_dictionary_set_int64(v14, "limit", a5);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1B7B4AEE4;
    v17[3] = &unk_1E7CB70A8;
    v17[4] = self;
    v18 = v12;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v16, v14, 228, v17);
  }
}

- (void)deleteAttachmentsDirectWithPredicate:(id)a3
{
  v8 = a3;
  v5 = xpc_dictionary_create(0, 0, 0);
  if (v5)
  {
    if (v8)
    {
      v6 = v8;
      v7 = 0;
      IMInsertCodableObjectsToXPCDictionary();
    }

    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v4, v5, 32, &unk_1F2FA0A70, v6, v7);
  }
}

- (void)fetchAttachmentRecordsFilteredUsingPredicate:(id)a3 limit:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = xpc_dictionary_create(0, 0, 0);
  if (v10)
  {
    if (v8)
    {
      IMInsertCodableObjectsToXPCDictionary();
    }

    xpc_dictionary_set_int64(v10, "limit", a4);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1B7B4B130;
    v12[3] = &unk_1E7CB70A8;
    v12[4] = self;
    v13 = v9;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v11, v10, 33, v12);
  }
}

- (void)fetchAttachmentRecordsFilteredUsingPredicate:(id)a3 sortedUsingDescriptors:(id)a4 limit:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v14 = xpc_dictionary_create(0, 0, 0);
  if (v14)
  {
    if (v10)
    {
      IMInsertCodableObjectsToXPCDictionary();
    }

    if (v11)
    {
      v15 = objc_msgSend__xpcArrayWithCodableObjects_(self, v13, v11);
      xpc_dictionary_set_value(v14, "sortDescriptors", v15);
    }

    xpc_dictionary_set_int64(v14, "limit", a5);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1B7B4B328;
    v17[3] = &unk_1E7CB70A8;
    v17[4] = self;
    v18 = v12;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v16, v14, 34, v17);
  }
}

- (void)fetchDataForKey:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
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
  v7 = v6;
  v9 = v7;
  __syncXPCIMDKVValueForKey_IPCAction(v8, v5);

  _Block_object_dispose(v11, 8);
}

- (void)fetchInteger64ForKey:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  empty = xpc_dictionary_create_empty();
  if (empty)
  {
    if (v6)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1B7B4B638;
    v10[3] = &unk_1E7CB8D48;
    v11 = v7;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v9, empty, 192, v10);
  }
}

- (void)moveMessageRecordsToRecoveryForMessageGUIDs:(id)a3 deleteDate:(id)a4
{
  v11 = a3;
  v6 = a4;
  empty = xpc_dictionary_create_empty();
  if (empty && objc_msgSend_count(v11, v7, v8))
  {
    IMInsertArraysToXPCDictionary();
    IMInsertCodableObjectsToXPCDictionary();
    objc_msgSend__sendAsyncXPCMessage_action_responseHandler_(self, v10, empty, 207, &unk_1F2FA0A90, v6, 0);
  }
}

- (void)moveMessageRecordsToRecoveryForChatRecordsWithGUIDs:(id)a3 deleteDate:(id)a4
{
  v11 = a3;
  v6 = a4;
  empty = xpc_dictionary_create_empty();
  if (empty && objc_msgSend_count(v11, v7, v8))
  {
    IMInsertArraysToXPCDictionary();
    IMInsertCodableObjectsToXPCDictionary();
    objc_msgSend__sendAsyncXPCMessage_action_responseHandler_(self, v10, empty, 141, &unk_1F2FA0AB0, v6, 0);
  }
}

- (void)recoverMessageRecordsForChatRecordsWithGUIDs:(id)a3
{
  v8 = a3;
  empty = xpc_dictionary_create_empty();
  if (empty && objc_msgSend_count(v8, v4, v5))
  {
    IMInsertArraysToXPCDictionary();
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v7, empty, 142, &unk_1F2F9FAB0, v8, 0);
  }
}

- (void)updateChatsSyncStatusTo:(int64_t)a3 forGUIDs:(id)a4
{
  v10 = a4;
  if (objc_msgSend_count(v10, v6, v7))
  {
    empty = xpc_dictionary_create_empty();
    IMInsertArraysToXPCDictionary();
    IMInsertIntsToXPCDictionary();
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v9, empty, 150, &unk_1F2FA0AD0, a3, 0);
  }
}

- (void)updateMessagesSyncStatusTo:(int64_t)a3 forGUIDs:(id)a4
{
  v10 = a4;
  if (objc_msgSend_count(v10, v6, v7))
  {
    empty = xpc_dictionary_create_empty();
    IMInsertArraysToXPCDictionary();
    IMInsertIntsToXPCDictionary();
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v9, empty, 181, &unk_1F2FA0AF0, a3, 0);
  }
}

- (void)updateMessagesSyncedSyndicationRangesForGUIDs:(id)a3 toStatus:(int64_t)a4
{
  v10 = a3;
  if (objc_msgSend_count(v10, v6, v7))
  {
    empty = xpc_dictionary_create_empty();
    IMInsertArraysToXPCDictionary();
    IMInsertIntsToXPCDictionary();
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v9, empty, 182, &unk_1F2FA0B10, a4, 0);
  }
}

- (void)updateAttachmentsSyncStatusTo:(int64_t)a3 forGUIDs:(id)a4
{
  v10 = a4;
  if (objc_msgSend_count(v10, v6, v7))
  {
    empty = xpc_dictionary_create_empty();
    IMInsertArraysToXPCDictionary();
    IMInsertIntsToXPCDictionary();
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v9, empty, 188, &unk_1F2FA0B30, a3, 0);
  }
}

- (void)deleteRecoverableMessagesOlderThanDays:(int64_t)a3
{
  empty = xpc_dictionary_create_empty();
  if (empty)
  {
    v7 = empty;
    IMInsertIntsToXPCDictionary();
    objc_msgSend__sendAsyncXPCMessage_action_responseHandler_(self, v6, v7, 208, &unk_1F2F9FF50, a3, 0);
    empty = v7;
  }
}

- (void)deleteJunkMessagesOlderThanDays:(int64_t)a3
{
  empty = xpc_dictionary_create_empty();
  if (empty)
  {
    v7 = empty;
    IMInsertIntsToXPCDictionary();
    objc_msgSend__sendAsyncXPCMessage_action_responseHandler_(self, v6, v7, 219, &unk_1F2F9FF30, a3, 0);
    empty = v7;
  }
}

- (void)permanentlyDeleteRecoverableMessagesInChatsWithGUIDs:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  empty = xpc_dictionary_create_empty();
  if (empty && objc_msgSend_count(v6, v8, v9))
  {
    IMInsertArraysToXPCDictionary();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1B7B4BD44;
    v12[3] = &unk_1E7CB70A8;
    v12[4] = self;
    v13 = v7;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v11, empty, 143, v12, v6, 0);
  }
}

- (id)recoverableMessagesMetadataPendingCloudKitSaveWithLimit:(int64_t)a3 filter:(unint64_t)a4
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
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v7, empty, 210, v10, a4, 0);
    v8 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (id)recoverableMessagesMetadataPendingCloudKitDeleteWithLimit:(int64_t)a3
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
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v6, empty, 213, v9, a3, 0);
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

- (void)updateRecoverableMessageSyncState:(int64_t)a3 forMessageRowID:(int64_t)a4 onPartIndex:(int64_t)a5
{
  empty = xpc_dictionary_create_empty();
  if (empty)
  {
    v9 = empty;
    IMInsertIntsToXPCDictionary();
    IMInsertIntsToXPCDictionary();
    IMInsertIntsToXPCDictionary();
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v8, v9, 211, &unk_1F2F9FE90, a5, 0);
    empty = v9;
  }
}

- (void)updateRecoverableMessageSyncState:(int64_t)a3 forMessageGUIDs:(id)a4
{
  v6 = a4;
  empty = xpc_dictionary_create_empty();
  if (empty)
  {
    IMInsertIntsToXPCDictionary();
    IMInsertArraysToXPCDictionary();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1B7B4C404;
    v9[3] = &unk_1E7CB8D90;
    v9[4] = a3;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v8, empty, 221, v9, v6, 0);
  }
}

- (void)storeRecoverableMessagePartWithBody:(id)a3 forMessageWithGUID:(id)a4 deleteDate:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  empty = xpc_dictionary_create_empty();
  if (v9 && objc_msgSend_length(v9, v11, v12) && objc_msgSend_length(v8, v14, v15))
  {
    IMInsertNSStringsToXPCDictionary();
    IMInsertCodableObjectsToXPCDictionary();
    IMInsertCodableObjectsToXPCDictionary();
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v16, empty, 212, &unk_1F2FA0B70, v8, 0);
  }

  else if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v20 = v9;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "IMDDatabaseClient | Early return: Recently Deleted:storeRecoverableMessagePartWithBody given messageGUID: %@ partBody: %@", buf, 0x16u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)fetchCountOfRecordType:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  empty = xpc_dictionary_create_empty();
  v8 = empty;
  if (empty)
  {
    xpc_dictionary_set_uint64(empty, "recordType", a3);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1B7B4C794;
    v11[3] = &unk_1E7CB8D48;
    v12 = v6;
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

    (*(v6 + 2))(v6, 0);
  }
}

- (void)inspectStorageWithStorageInspector:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  empty = xpc_dictionary_create_empty();
  if (empty)
  {
    v16 = 0;
    v10 = objc_msgSend_encodeToData_(v6, v8, &v16);
    v11 = v16;
    v12 = v11;
    if (!v10 || v11)
    {
      v7[2](v7, 0, v11);
    }

    else
    {
      IMInsertDatasToXPCDictionary();
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1B7B4C918;
      v14[3] = &unk_1E7CB8D48;
      v15 = v7;
      objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v13, empty, 233, v14, v10, 0);
    }
  }
}

- (void)fetchScheduledMessageRecordsForChatRecordWithGUID:(id)a3 limit:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  empty = xpc_dictionary_create_empty();
  if (empty)
  {
    if (v8)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    xpc_dictionary_set_int64(empty, "limit", a4);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1B7B4CB08;
    v12[3] = &unk_1E7CB70A8;
    v12[4] = self;
    v13 = v9;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v11, empty, 69, v12);
  }
}

- (id)scheduledMessagesMetadataPendingCloudKitDeleteWithLimit:(int64_t)a3
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
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v6, empty, 70, v9, a3, 0);
    v7 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (void)addScheduledMessageGUIDandCKRecordToDeleteFromCloudKit:(id)a3 recordID:(id)a4
{
  v6 = a3;
  v7 = a4;
  empty = xpc_dictionary_create_empty();
  if (empty && objc_msgSend_length(v6, v8, v9) && objc_msgSend_length(v7, v11, v12))
  {
    IMInsertNSStringsToXPCDictionary();
    IMInsertNSStringsToXPCDictionary();
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1B7B4CE94;
    v14[3] = &unk_1E7CB8DB8;
    v15 = v6;
    v16 = v7;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v13, empty, 71, v14, v7, 0);
  }
}

- (void)deleteTombstonedScheduledMessagesWithRecordIDs:(id)a3
{
  v4 = a3;
  empty = xpc_dictionary_create_empty();
  if (empty)
  {
    if (objc_msgSend_count(v4, v5, v6))
    {
      IMInsertArraysToXPCDictionary();
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1B7B4D01C;
    v9[3] = &unk_1E7CB8DE0;
    v10 = v4;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v8, empty, 72, v9);
  }
}

- (void)markMessageRecordsAsReadWithGUIDs:(id)a3
{
  v4 = a3;
  empty = xpc_dictionary_create_empty();
  if (empty)
  {
    IMInsertArraysToXPCDictionary();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7B4D18C;
    v7[3] = &unk_1E7CB8DE0;
    v8 = v4;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v6, empty, 229, v7, v4, 0);
  }
}

- (void)sendLegacyXPCCommandWithObject:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v8 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], v7, *MEMORY[0x1E695D930], @"IMDDatabaseClient should not fulfill this method, should use proxy directly!", 0);
  objc_exception_throw(v8);
}

- (void)fetchContactsForIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  empty = xpc_dictionary_create_empty();
  if (empty)
  {
    if (v6)
    {
      IMInsertArraysToXPCDictionary();
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1B7B4D37C;
    v10[3] = &unk_1E7CB70A8;
    v10[4] = self;
    v11 = v7;
    objc_msgSend__sendSyncXPCMessage_action_responseHandler_(self, v9, empty, 231, v10);
  }

  else
  {
    (*(v7 + 2))(v7, MEMORY[0x1E695E0F8]);
  }
}

@end