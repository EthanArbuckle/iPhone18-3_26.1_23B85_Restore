@interface IMDDatabaseServer
+ (id)sharedServer;
- (void)_authorizeOutgoingSandboxedResource:(id)a3 connection:(id)a4;
- (void)_respondWithAttachmentRecords:(id)a3 responseMessage:(id)a4 completionHandler:(id)a5;
- (void)_respondWithChatRecords:(id)a3 responseMessage:(id)a4 completionHandler:(id)a5;
- (void)_respondWithHandleRecords:(id)a3 responseMessage:(id)a4 completionHandler:(id)a5;
- (void)_respondWithMessageRecords:(id)a3 responseMessage:(id)a4 completionHandler:(id)a5;
- (void)handleDeleteAttachmentsDirectWithPredicate_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDAttachmentRecordCopyFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDAttachmentRecordCopySortedAttachmentsFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDAttachmentRecordsUpdateSyncStatusForGUIDs_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDChatRecordCopyChatsFilteredUsingPredicate_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDChatRecordCopyChatsSortedByLastMessageDateAndFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDChatRecordCopyChatsWithAtLeastHandlesOnServiceWithStyle_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDChatRecordCopyChatsWithHandlesOnServiceWithDisplayNameGroupIDStyle_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDChatRecordCopyChatsWithIdentifier_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDChatRecordCopyChatsWithPinningIdentifier_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDChatRecordCopyDuplicateGroupChatRecords_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDChatRecordCopyGroupPhotoPaths_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDChatRecordCopySortedChatsFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDChatRecordLoadRecoverableMessages_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDChatRecordMoveMessagesToRecoverableMessage_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDChatRecordPermanentlyDeleteRecoverableMessagesInChatsWithGUIDs_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDChatRecordRecoverMessages_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDChatRecordResolveInconsistentGUID_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDChatRecordsUpdateSyncStatusForGUIDs_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDCountOfRecordType_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDDeleteDatabase_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDFetchContactsForIdentifiers_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDHandleRecordCopyHandlesFilteredUsingPredicate_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDHandleRecordCopySortedHandlesFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDKVIntegerForKey_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDMessageDeleteTombstonedScheduledMessagesWithRecordIDs_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDMessageRecordAddScheduledMessageGUIDandCKRecordToDeleteFromCloudKit_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDMessageRecordCalculateMessagesWithoutChatsCount_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDMessageRecordCalculateTotalMessageCount_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDMessageRecordClearUnsyncedRemovedRecoverableMessages_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDMessageRecordCopyAllUnreadMessages_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDMessageRecordCopyLastMessageForChatWithRowID_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDMessageRecordCopyMessageWithGUIDExcludingRecoverableMessages_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDMessageRecordCopyScheduledMessagesForChatGUIDToLimit_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDMessageRecordCopyScheduledMessagesToDeleteFromCloudKitToLimit_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDMessageRecordDeleteJunkMessagesOlderThanDays_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDMessageRecordDeleteRecoverableMessagesOlderThanDays_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDMessageRecordLoadRecoverableMessagesPendingCloudKitDelete_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDMessageRecordLoadRecoverableMessagesPendingCloudKitUpdate_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDMessageRecordMarkGUIDsAsRead_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDMessageRecordMoveToRecoverableMessage_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDMessageRecordStoreRecoverableMessagePartBody_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDMessageRecordUpdateAttachmentSyndicationRanges_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDMessageRecordUpdateMessagesSyndicationRanges_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDMessageRecordUpdateRecoverableMessageSyncStateForMessageGUIDs_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDMessageRecordUpdateRecoverableMessageSyncState_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDMessageRecordsUpdateSyncStatusForGUIDs_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDMessageRecordsUpdateSyncedSyndicationRangesForGUIDsToStatus_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDNotificationsPostSharePlayNotification_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)handleIMDVerifyDatabase_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
- (void)notifyFirstUnlockComplete_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6;
@end

@implementation IMDDatabaseServer

+ (id)sharedServer
{
  if (qword_1EDBE5AC8 != -1)
  {
    sub_1B7CEDA1C();
  }

  v3 = qword_1EDBE5AC0;

  return v3;
}

- (void)_respondWithChatRecords:(id)a3 responseMessage:(id)a4 completionHandler:(id)a5
{
  xdict = a4;
  v8 = a5;
  v10 = objc_msgSend__xpcArrayWithChatRecords_(self, v9, a3);
  if (xdict && v10)
  {
    xpc_dictionary_set_value(xdict, "array_result", v10);
  }

  if (v8)
  {
    v8[2](v8);
  }
}

- (void)_respondWithMessageRecords:(id)a3 responseMessage:(id)a4 completionHandler:(id)a5
{
  xdict = a4;
  v8 = a5;
  v10 = objc_msgSend__xpcArrayWithMessageRecords_(self, v9, a3);
  if (xdict && v10)
  {
    xpc_dictionary_set_value(xdict, "array_result", v10);
  }

  if (v8)
  {
    v8[2](v8);
  }
}

- (void)_respondWithAttachmentRecords:(id)a3 responseMessage:(id)a4 completionHandler:(id)a5
{
  xdict = a4;
  v8 = a5;
  v10 = objc_msgSend__xpcArrayWithAttachmentRecords_(self, v9, a3);
  if (xdict && v10)
  {
    xpc_dictionary_set_value(xdict, "array_result", v10);
  }

  if (v8)
  {
    v8[2](v8);
  }
}

- (void)_respondWithHandleRecords:(id)a3 responseMessage:(id)a4 completionHandler:(id)a5
{
  xdict = a4;
  v8 = a5;
  v10 = objc_msgSend__xpcArrayWithHandleRecords_(self, v9, a3);
  if (xdict && v10)
  {
    xpc_dictionary_set_value(xdict, "array_result", v10);
  }

  if (v8)
  {
    v8[2](v8);
  }
}

- (void)_authorizeOutgoingSandboxedResource:(id)a3 connection:(id)a4
{
  v7 = a3;
  pid = xpc_connection_get_pid(a4);
  objc_msgSend_authorizeForPID_(v7, v6, pid);
}

- (void)handleIMDChatRecordCopyChatsFilteredUsingPredicate_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B1FBF0;
  v16[3] = &unk_1E7CB70F8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v20 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDChatRecordCopySortedChatsFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B1FD78;
  v16[3] = &unk_1E7CB70F8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v20 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDChatRecordCopyChatsSortedByLastMessageDateAndFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B1FFC8;
  v16[3] = &unk_1E7CB70F8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v20 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDChatRecordCopyChatsWithIdentifier_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B2021C;
  v16[3] = &unk_1E7CB70F8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v20 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDChatRecordCopyChatsWithPinningIdentifier_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B20390;
  v16[3] = &unk_1E7CB70F8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v20 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDChatRecordCopyChatsWithHandlesOnServiceWithDisplayNameGroupIDStyle_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B20564;
  v16[3] = &unk_1E7CB70F8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v20 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDChatRecordCopyChatsWithAtLeastHandlesOnServiceWithStyle_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B20778;
  v16[3] = &unk_1E7CB70F8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v20 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDChatRecordCopyGroupPhotoPaths_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1B7B209B8;
  v19[3] = &unk_1E7CB7198;
  v20 = v11;
  v21 = self;
  v22 = v10;
  v23 = v12;
  v24 = v13;
  v14 = v13;
  v15 = v12;
  v16 = v10;
  v17 = v11;
  objc_msgSend__syncPersistenceBlock_(self, v18, v19);
}

- (void)handleIMDChatRecordCopyDuplicateGroupChatRecords_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B20C8C;
  v16[3] = &unk_1E7CB70F8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v20 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDChatRecordsUpdateSyncStatusForGUIDs_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v9 = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B20DD8;
  v13[3] = &unk_1E7CB71C0;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  objc_msgSend__syncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDChatRecordResolveInconsistentGUID_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B20F5C;
  v16[3] = &unk_1E7CB70F8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v20 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDMessageRecordsUpdateSyncStatusForGUIDs_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v9 = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B21178;
  v13[3] = &unk_1E7CB71C0;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  objc_msgSend__syncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDMessageRecordsUpdateSyncedSyndicationRangesForGUIDsToStatus_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v9 = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B212DC;
  v13[3] = &unk_1E7CB71C0;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  objc_msgSend__syncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDMessageRecordCopyLastMessageForChatWithRowID_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B21460;
  v16[3] = &unk_1E7CB70F8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v20 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDMessageRecordCopyAllUnreadMessages_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B216E8;
  v16[3] = &unk_1E7CB70F8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v20 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDMessageRecordCopyMessageWithGUIDExcludingRecoverableMessages_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B218E8;
  v16[3] = &unk_1E7CB70F8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v20 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDMessageRecordUpdateAttachmentSyndicationRanges_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v9 = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B21B4C;
  v13[3] = &unk_1E7CB71C0;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  objc_msgSend__syncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDMessageRecordUpdateMessagesSyndicationRanges_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v9 = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B21CB0;
  v13[3] = &unk_1E7CB71C0;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  objc_msgSend__syncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDMessageRecordCopyScheduledMessagesForChatGUIDToLimit_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B21E34;
  v16[3] = &unk_1E7CB70F8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v20 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDMessageRecordCopyScheduledMessagesToDeleteFromCloudKitToLimit_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B22020;
  v16[3] = &unk_1E7CB70F8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v20 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDMessageRecordAddScheduledMessageGUIDandCKRecordToDeleteFromCloudKit_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v9 = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B221A4;
  v13[3] = &unk_1E7CB71C0;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  objc_msgSend__syncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDMessageDeleteTombstonedScheduledMessagesWithRecordIDs_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v9 = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B22310;
  v13[3] = &unk_1E7CB71C0;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  objc_msgSend__syncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDMessageRecordMarkGUIDsAsRead_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v9 = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B22454;
  v13[3] = &unk_1E7CB71C0;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  objc_msgSend__syncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDMessageRecordCalculateTotalMessageCount_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v8 = a5;
  v9 = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B22598;
  v13[3] = &unk_1E7CB71C0;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  objc_msgSend__asyncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDMessageRecordCalculateMessagesWithoutChatsCount_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v8 = a5;
  v9 = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B227A4;
  v13[3] = &unk_1E7CB71C0;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  objc_msgSend__asyncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDMessageRecordMoveToRecoverableMessage_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v9 = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B229B0;
  v13[3] = &unk_1E7CB71C0;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  objc_msgSend__asyncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDChatRecordMoveMessagesToRecoverableMessage_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v9 = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B22B30;
  v13[3] = &unk_1E7CB71C0;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  objc_msgSend__asyncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDChatRecordRecoverMessages_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v9 = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B22CB0;
  v13[3] = &unk_1E7CB71C0;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  objc_msgSend__asyncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDChatRecordLoadRecoverableMessages_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v8 = a5;
  v9 = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B22DF4;
  v13[3] = &unk_1E7CB71C0;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v10 = v9;
  v11 = v8;
  objc_msgSend__syncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDMessageRecordDeleteRecoverableMessagesOlderThanDays_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v9 = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B22F58;
  v13[3] = &unk_1E7CB71C0;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  objc_msgSend__asyncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDMessageRecordDeleteJunkMessagesOlderThanDays_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v9 = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B230A0;
  v13[3] = &unk_1E7CB71C0;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  objc_msgSend__asyncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDChatRecordPermanentlyDeleteRecoverableMessagesInChatsWithGUIDs_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B23208;
  v16[3] = &unk_1E7CB70F8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v20 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  objc_msgSend__asyncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDMessageRecordLoadRecoverableMessagesPendingCloudKitUpdate_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B23464;
  v16[3] = &unk_1E7CB70F8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v20 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  objc_msgSend__asyncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDMessageRecordLoadRecoverableMessagesPendingCloudKitDelete_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B23620;
  v16[3] = &unk_1E7CB70F8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v20 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  objc_msgSend__asyncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDMessageRecordClearUnsyncedRemovedRecoverableMessages_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v7 = a6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7B23778;
  v10[3] = &unk_1E7CB7260;
  v10[4] = self;
  v11 = v7;
  v8 = v7;
  objc_msgSend__asyncPersistenceBlock_(self, v9, v10);
}

- (void)handleIMDMessageRecordUpdateRecoverableMessageSyncState_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v9 = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B2389C;
  v13[3] = &unk_1E7CB71C0;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  objc_msgSend__asyncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDMessageRecordUpdateRecoverableMessageSyncStateForMessageGUIDs_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v9 = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B23A20;
  v13[3] = &unk_1E7CB71C0;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  objc_msgSend__asyncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDMessageRecordStoreRecoverableMessagePartBody_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v9 = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B23B84;
  v13[3] = &unk_1E7CB71C0;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  objc_msgSend__asyncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDNotificationsPostSharePlayNotification_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7B23D0C;
  v10[3] = &unk_1E7CB6770;
  v11 = v7;
  v12 = self;
  v8 = v7;
  objc_msgSend__asyncPersistenceBlock_(self, v9, v10);
}

- (void)notifyFirstUnlockComplete_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v13 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v11[2]();
  if (IMDPersistenceProtectionMerge_CurrentlyUsingUnprotectedDatabase())
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "Database told that first unlock is complete - exiting.", buf, 2u);
      }
    }

    exit(0);
  }
}

- (void)handleIMDCountOfRecordType_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B23FC4;
  v16[3] = &unk_1E7CB70F8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v20 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDHandleRecordCopyHandlesFilteredUsingPredicate_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B241C8;
  v16[3] = &unk_1E7CB70F8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v20 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDHandleRecordCopySortedHandlesFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B24350;
  v16[3] = &unk_1E7CB70F8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v20 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDAttachmentRecordsUpdateSyncStatusForGUIDs_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v9 = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B24580;
  v13[3] = &unk_1E7CB71C0;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  objc_msgSend__syncPersistenceBlock_(self, v12, v13);
}

- (void)handleDeleteAttachmentsDirectWithPredicate_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v9 = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B246E4;
  v13[3] = &unk_1E7CB71C0;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  objc_msgSend__asyncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDAttachmentRecordCopyFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B2485C;
  v16[3] = &unk_1E7CB70F8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v20 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDAttachmentRecordCopySortedAttachmentsFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B24A5C;
  v16[3] = &unk_1E7CB70F8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v20 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDKVIntegerForKey_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B24CAC;
  v16[3] = &unk_1E7CB70F8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v20 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDFetchContactsForIdentifiers_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B24EC8;
  v16[3] = &unk_1E7CB70F8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v20 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDDeleteDatabase_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v7 = a6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7B25178;
  v10[3] = &unk_1E7CB67C0;
  v11 = v7;
  v8 = v7;
  objc_msgSend__syncPersistenceBlock_(self, v9, v10);
}

- (void)handleIMDVerifyDatabase_IPCActionWithXPCConnection:(id)a3 requestMessage:(id)a4 responseMessage:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B253B8;
  v16[3] = &unk_1E7CB70F8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v20 = v11;
  v12 = v11;
  v13 = v10;
  v14 = v9;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

@end