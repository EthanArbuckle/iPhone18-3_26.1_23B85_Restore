@interface IMDDatabaseServer
+ (id)sharedServer;
- (void)_authorizeOutgoingSandboxedResource:(id)resource connection:(id)connection;
- (void)_respondWithAttachmentRecords:(id)records responseMessage:(id)message completionHandler:(id)handler;
- (void)_respondWithChatRecords:(id)records responseMessage:(id)message completionHandler:(id)handler;
- (void)_respondWithHandleRecords:(id)records responseMessage:(id)message completionHandler:(id)handler;
- (void)_respondWithMessageRecords:(id)records responseMessage:(id)message completionHandler:(id)handler;
- (void)handleDeleteAttachmentsDirectWithPredicate_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDAttachmentRecordCopyFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDAttachmentRecordCopySortedAttachmentsFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDAttachmentRecordsUpdateSyncStatusForGUIDs_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDChatRecordCopyChatsFilteredUsingPredicate_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDChatRecordCopyChatsSortedByLastMessageDateAndFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDChatRecordCopyChatsWithAtLeastHandlesOnServiceWithStyle_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDChatRecordCopyChatsWithHandlesOnServiceWithDisplayNameGroupIDStyle_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDChatRecordCopyChatsWithIdentifier_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDChatRecordCopyChatsWithPinningIdentifier_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDChatRecordCopyDuplicateGroupChatRecords_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDChatRecordCopyGroupPhotoPaths_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDChatRecordCopySortedChatsFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDChatRecordLoadRecoverableMessages_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDChatRecordMoveMessagesToRecoverableMessage_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDChatRecordPermanentlyDeleteRecoverableMessagesInChatsWithGUIDs_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDChatRecordRecoverMessages_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDChatRecordResolveInconsistentGUID_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDChatRecordsUpdateSyncStatusForGUIDs_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDCountOfRecordType_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDDeleteDatabase_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDFetchContactsForIdentifiers_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDHandleRecordCopyHandlesFilteredUsingPredicate_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDHandleRecordCopySortedHandlesFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDKVIntegerForKey_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDMessageDeleteTombstonedScheduledMessagesWithRecordIDs_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDMessageRecordAddScheduledMessageGUIDandCKRecordToDeleteFromCloudKit_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDMessageRecordCalculateMessagesWithoutChatsCount_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDMessageRecordCalculateTotalMessageCount_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDMessageRecordClearUnsyncedRemovedRecoverableMessages_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDMessageRecordCopyAllUnreadMessages_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDMessageRecordCopyLastMessageForChatWithRowID_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDMessageRecordCopyMessageWithGUIDExcludingRecoverableMessages_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDMessageRecordCopyScheduledMessagesForChatGUIDToLimit_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDMessageRecordCopyScheduledMessagesToDeleteFromCloudKitToLimit_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDMessageRecordDeleteJunkMessagesOlderThanDays_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDMessageRecordDeleteRecoverableMessagesOlderThanDays_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDMessageRecordLoadRecoverableMessagesPendingCloudKitDelete_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDMessageRecordLoadRecoverableMessagesPendingCloudKitUpdate_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDMessageRecordMarkGUIDsAsRead_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDMessageRecordMoveToRecoverableMessage_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDMessageRecordStoreRecoverableMessagePartBody_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDMessageRecordUpdateAttachmentSyndicationRanges_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDMessageRecordUpdateMessagesSyndicationRanges_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDMessageRecordUpdateRecoverableMessageSyncStateForMessageGUIDs_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDMessageRecordUpdateRecoverableMessageSyncState_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDMessageRecordsUpdateSyncStatusForGUIDs_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDMessageRecordsUpdateSyncedSyndicationRangesForGUIDsToStatus_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDNotificationsPostSharePlayNotification_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)handleIMDVerifyDatabase_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
- (void)notifyFirstUnlockComplete_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler;
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

- (void)_respondWithChatRecords:(id)records responseMessage:(id)message completionHandler:(id)handler
{
  xdict = message;
  handlerCopy = handler;
  v10 = objc_msgSend__xpcArrayWithChatRecords_(self, v9, records);
  if (xdict && v10)
  {
    xpc_dictionary_set_value(xdict, "array_result", v10);
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)_respondWithMessageRecords:(id)records responseMessage:(id)message completionHandler:(id)handler
{
  xdict = message;
  handlerCopy = handler;
  v10 = objc_msgSend__xpcArrayWithMessageRecords_(self, v9, records);
  if (xdict && v10)
  {
    xpc_dictionary_set_value(xdict, "array_result", v10);
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)_respondWithAttachmentRecords:(id)records responseMessage:(id)message completionHandler:(id)handler
{
  xdict = message;
  handlerCopy = handler;
  v10 = objc_msgSend__xpcArrayWithAttachmentRecords_(self, v9, records);
  if (xdict && v10)
  {
    xpc_dictionary_set_value(xdict, "array_result", v10);
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)_respondWithHandleRecords:(id)records responseMessage:(id)message completionHandler:(id)handler
{
  xdict = message;
  handlerCopy = handler;
  v10 = objc_msgSend__xpcArrayWithHandleRecords_(self, v9, records);
  if (xdict && v10)
  {
    xpc_dictionary_set_value(xdict, "array_result", v10);
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)_authorizeOutgoingSandboxedResource:(id)resource connection:(id)connection
{
  resourceCopy = resource;
  pid = xpc_connection_get_pid(connection);
  objc_msgSend_authorizeForPID_(resourceCopy, v6, pid);
}

- (void)handleIMDChatRecordCopyChatsFilteredUsingPredicate_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  responseMessageCopy = responseMessage;
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B1FBF0;
  v16[3] = &unk_1E7CB70F8;
  v17 = messageCopy;
  selfCopy = self;
  v19 = responseMessageCopy;
  v20 = handlerCopy;
  v12 = handlerCopy;
  v13 = responseMessageCopy;
  v14 = messageCopy;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDChatRecordCopySortedChatsFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  responseMessageCopy = responseMessage;
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B1FD78;
  v16[3] = &unk_1E7CB70F8;
  v17 = messageCopy;
  selfCopy = self;
  v19 = responseMessageCopy;
  v20 = handlerCopy;
  v12 = handlerCopy;
  v13 = responseMessageCopy;
  v14 = messageCopy;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDChatRecordCopyChatsSortedByLastMessageDateAndFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  responseMessageCopy = responseMessage;
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B1FFC8;
  v16[3] = &unk_1E7CB70F8;
  v17 = messageCopy;
  selfCopy = self;
  v19 = responseMessageCopy;
  v20 = handlerCopy;
  v12 = handlerCopy;
  v13 = responseMessageCopy;
  v14 = messageCopy;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDChatRecordCopyChatsWithIdentifier_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  responseMessageCopy = responseMessage;
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B2021C;
  v16[3] = &unk_1E7CB70F8;
  v17 = messageCopy;
  selfCopy = self;
  v19 = responseMessageCopy;
  v20 = handlerCopy;
  v12 = handlerCopy;
  v13 = responseMessageCopy;
  v14 = messageCopy;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDChatRecordCopyChatsWithPinningIdentifier_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  responseMessageCopy = responseMessage;
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B20390;
  v16[3] = &unk_1E7CB70F8;
  v17 = messageCopy;
  selfCopy = self;
  v19 = responseMessageCopy;
  v20 = handlerCopy;
  v12 = handlerCopy;
  v13 = responseMessageCopy;
  v14 = messageCopy;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDChatRecordCopyChatsWithHandlesOnServiceWithDisplayNameGroupIDStyle_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  responseMessageCopy = responseMessage;
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B20564;
  v16[3] = &unk_1E7CB70F8;
  v17 = messageCopy;
  selfCopy = self;
  v19 = responseMessageCopy;
  v20 = handlerCopy;
  v12 = handlerCopy;
  v13 = responseMessageCopy;
  v14 = messageCopy;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDChatRecordCopyChatsWithAtLeastHandlesOnServiceWithStyle_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  responseMessageCopy = responseMessage;
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B20778;
  v16[3] = &unk_1E7CB70F8;
  v17 = messageCopy;
  selfCopy = self;
  v19 = responseMessageCopy;
  v20 = handlerCopy;
  v12 = handlerCopy;
  v13 = responseMessageCopy;
  v14 = messageCopy;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDChatRecordCopyGroupPhotoPaths_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  connectionCopy = connection;
  messageCopy = message;
  responseMessageCopy = responseMessage;
  handlerCopy = handler;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1B7B209B8;
  v19[3] = &unk_1E7CB7198;
  v20 = messageCopy;
  selfCopy = self;
  v22 = connectionCopy;
  v23 = responseMessageCopy;
  v24 = handlerCopy;
  v14 = handlerCopy;
  v15 = responseMessageCopy;
  v16 = connectionCopy;
  v17 = messageCopy;
  objc_msgSend__syncPersistenceBlock_(self, v18, v19);
}

- (void)handleIMDChatRecordCopyDuplicateGroupChatRecords_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  responseMessageCopy = responseMessage;
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B20C8C;
  v16[3] = &unk_1E7CB70F8;
  v17 = messageCopy;
  selfCopy = self;
  v19 = responseMessageCopy;
  v20 = handlerCopy;
  v12 = handlerCopy;
  v13 = responseMessageCopy;
  v14 = messageCopy;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDChatRecordsUpdateSyncStatusForGUIDs_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B20DD8;
  v13[3] = &unk_1E7CB71C0;
  v14 = messageCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = messageCopy;
  objc_msgSend__syncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDChatRecordResolveInconsistentGUID_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  responseMessageCopy = responseMessage;
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B20F5C;
  v16[3] = &unk_1E7CB70F8;
  v17 = messageCopy;
  selfCopy = self;
  v19 = responseMessageCopy;
  v20 = handlerCopy;
  v12 = handlerCopy;
  v13 = responseMessageCopy;
  v14 = messageCopy;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDMessageRecordsUpdateSyncStatusForGUIDs_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B21178;
  v13[3] = &unk_1E7CB71C0;
  v14 = messageCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = messageCopy;
  objc_msgSend__syncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDMessageRecordsUpdateSyncedSyndicationRangesForGUIDsToStatus_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B212DC;
  v13[3] = &unk_1E7CB71C0;
  v14 = messageCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = messageCopy;
  objc_msgSend__syncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDMessageRecordCopyLastMessageForChatWithRowID_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  responseMessageCopy = responseMessage;
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B21460;
  v16[3] = &unk_1E7CB70F8;
  v17 = messageCopy;
  selfCopy = self;
  v19 = responseMessageCopy;
  v20 = handlerCopy;
  v12 = handlerCopy;
  v13 = responseMessageCopy;
  v14 = messageCopy;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDMessageRecordCopyAllUnreadMessages_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  responseMessageCopy = responseMessage;
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B216E8;
  v16[3] = &unk_1E7CB70F8;
  v17 = messageCopy;
  selfCopy = self;
  v19 = responseMessageCopy;
  v20 = handlerCopy;
  v12 = handlerCopy;
  v13 = responseMessageCopy;
  v14 = messageCopy;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDMessageRecordCopyMessageWithGUIDExcludingRecoverableMessages_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  responseMessageCopy = responseMessage;
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B218E8;
  v16[3] = &unk_1E7CB70F8;
  v17 = messageCopy;
  selfCopy = self;
  v19 = responseMessageCopy;
  v20 = handlerCopy;
  v12 = handlerCopy;
  v13 = responseMessageCopy;
  v14 = messageCopy;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDMessageRecordUpdateAttachmentSyndicationRanges_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B21B4C;
  v13[3] = &unk_1E7CB71C0;
  v14 = messageCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = messageCopy;
  objc_msgSend__syncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDMessageRecordUpdateMessagesSyndicationRanges_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B21CB0;
  v13[3] = &unk_1E7CB71C0;
  v14 = messageCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = messageCopy;
  objc_msgSend__syncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDMessageRecordCopyScheduledMessagesForChatGUIDToLimit_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  responseMessageCopy = responseMessage;
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B21E34;
  v16[3] = &unk_1E7CB70F8;
  v17 = messageCopy;
  selfCopy = self;
  v19 = responseMessageCopy;
  v20 = handlerCopy;
  v12 = handlerCopy;
  v13 = responseMessageCopy;
  v14 = messageCopy;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDMessageRecordCopyScheduledMessagesToDeleteFromCloudKitToLimit_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  responseMessageCopy = responseMessage;
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B22020;
  v16[3] = &unk_1E7CB70F8;
  v17 = messageCopy;
  selfCopy = self;
  v19 = responseMessageCopy;
  v20 = handlerCopy;
  v12 = handlerCopy;
  v13 = responseMessageCopy;
  v14 = messageCopy;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDMessageRecordAddScheduledMessageGUIDandCKRecordToDeleteFromCloudKit_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B221A4;
  v13[3] = &unk_1E7CB71C0;
  v14 = messageCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = messageCopy;
  objc_msgSend__syncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDMessageDeleteTombstonedScheduledMessagesWithRecordIDs_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B22310;
  v13[3] = &unk_1E7CB71C0;
  v14 = messageCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = messageCopy;
  objc_msgSend__syncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDMessageRecordMarkGUIDsAsRead_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B22454;
  v13[3] = &unk_1E7CB71C0;
  v14 = messageCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = messageCopy;
  objc_msgSend__syncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDMessageRecordCalculateTotalMessageCount_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  responseMessageCopy = responseMessage;
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B22598;
  v13[3] = &unk_1E7CB71C0;
  v14 = responseMessageCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = responseMessageCopy;
  objc_msgSend__asyncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDMessageRecordCalculateMessagesWithoutChatsCount_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  responseMessageCopy = responseMessage;
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B227A4;
  v13[3] = &unk_1E7CB71C0;
  v14 = responseMessageCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = responseMessageCopy;
  objc_msgSend__asyncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDMessageRecordMoveToRecoverableMessage_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B229B0;
  v13[3] = &unk_1E7CB71C0;
  v14 = messageCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = messageCopy;
  objc_msgSend__asyncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDChatRecordMoveMessagesToRecoverableMessage_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B22B30;
  v13[3] = &unk_1E7CB71C0;
  v14 = messageCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = messageCopy;
  objc_msgSend__asyncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDChatRecordRecoverMessages_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B22CB0;
  v13[3] = &unk_1E7CB71C0;
  v14 = messageCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = messageCopy;
  objc_msgSend__asyncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDChatRecordLoadRecoverableMessages_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  responseMessageCopy = responseMessage;
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B22DF4;
  v13[3] = &unk_1E7CB71C0;
  v13[4] = self;
  v14 = responseMessageCopy;
  v15 = handlerCopy;
  v10 = handlerCopy;
  v11 = responseMessageCopy;
  objc_msgSend__syncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDMessageRecordDeleteRecoverableMessagesOlderThanDays_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B22F58;
  v13[3] = &unk_1E7CB71C0;
  v14 = messageCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = messageCopy;
  objc_msgSend__asyncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDMessageRecordDeleteJunkMessagesOlderThanDays_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B230A0;
  v13[3] = &unk_1E7CB71C0;
  v14 = messageCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = messageCopy;
  objc_msgSend__asyncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDChatRecordPermanentlyDeleteRecoverableMessagesInChatsWithGUIDs_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  responseMessageCopy = responseMessage;
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B23208;
  v16[3] = &unk_1E7CB70F8;
  v17 = messageCopy;
  selfCopy = self;
  v19 = responseMessageCopy;
  v20 = handlerCopy;
  v12 = handlerCopy;
  v13 = responseMessageCopy;
  v14 = messageCopy;
  objc_msgSend__asyncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDMessageRecordLoadRecoverableMessagesPendingCloudKitUpdate_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  responseMessageCopy = responseMessage;
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B23464;
  v16[3] = &unk_1E7CB70F8;
  v17 = messageCopy;
  selfCopy = self;
  v19 = responseMessageCopy;
  v20 = handlerCopy;
  v12 = handlerCopy;
  v13 = responseMessageCopy;
  v14 = messageCopy;
  objc_msgSend__asyncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDMessageRecordLoadRecoverableMessagesPendingCloudKitDelete_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  responseMessageCopy = responseMessage;
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B23620;
  v16[3] = &unk_1E7CB70F8;
  v17 = messageCopy;
  selfCopy = self;
  v19 = responseMessageCopy;
  v20 = handlerCopy;
  v12 = handlerCopy;
  v13 = responseMessageCopy;
  v14 = messageCopy;
  objc_msgSend__asyncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDMessageRecordClearUnsyncedRemovedRecoverableMessages_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7B23778;
  v10[3] = &unk_1E7CB7260;
  v10[4] = self;
  v11 = handlerCopy;
  v8 = handlerCopy;
  objc_msgSend__asyncPersistenceBlock_(self, v9, v10);
}

- (void)handleIMDMessageRecordUpdateRecoverableMessageSyncState_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B2389C;
  v13[3] = &unk_1E7CB71C0;
  v14 = messageCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = messageCopy;
  objc_msgSend__asyncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDMessageRecordUpdateRecoverableMessageSyncStateForMessageGUIDs_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B23A20;
  v13[3] = &unk_1E7CB71C0;
  v14 = messageCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = messageCopy;
  objc_msgSend__asyncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDMessageRecordStoreRecoverableMessagePartBody_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B23B84;
  v13[3] = &unk_1E7CB71C0;
  v14 = messageCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = messageCopy;
  objc_msgSend__asyncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDNotificationsPostSharePlayNotification_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7B23D0C;
  v10[3] = &unk_1E7CB6770;
  v11 = messageCopy;
  selfCopy = self;
  v8 = messageCopy;
  objc_msgSend__asyncPersistenceBlock_(self, v9, v10);
}

- (void)notifyFirstUnlockComplete_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  connectionCopy = connection;
  messageCopy = message;
  responseMessageCopy = responseMessage;
  handlerCopy = handler;
  handlerCopy[2]();
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

- (void)handleIMDCountOfRecordType_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  responseMessageCopy = responseMessage;
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B23FC4;
  v16[3] = &unk_1E7CB70F8;
  v17 = messageCopy;
  selfCopy = self;
  v19 = responseMessageCopy;
  v20 = handlerCopy;
  v12 = handlerCopy;
  v13 = responseMessageCopy;
  v14 = messageCopy;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDHandleRecordCopyHandlesFilteredUsingPredicate_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  responseMessageCopy = responseMessage;
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B241C8;
  v16[3] = &unk_1E7CB70F8;
  v17 = messageCopy;
  selfCopy = self;
  v19 = responseMessageCopy;
  v20 = handlerCopy;
  v12 = handlerCopy;
  v13 = responseMessageCopy;
  v14 = messageCopy;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDHandleRecordCopySortedHandlesFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  responseMessageCopy = responseMessage;
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B24350;
  v16[3] = &unk_1E7CB70F8;
  v17 = messageCopy;
  selfCopy = self;
  v19 = responseMessageCopy;
  v20 = handlerCopy;
  v12 = handlerCopy;
  v13 = responseMessageCopy;
  v14 = messageCopy;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDAttachmentRecordsUpdateSyncStatusForGUIDs_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B24580;
  v13[3] = &unk_1E7CB71C0;
  v14 = messageCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = messageCopy;
  objc_msgSend__syncPersistenceBlock_(self, v12, v13);
}

- (void)handleDeleteAttachmentsDirectWithPredicate_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B246E4;
  v13[3] = &unk_1E7CB71C0;
  v14 = messageCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v10 = handlerCopy;
  v11 = messageCopy;
  objc_msgSend__asyncPersistenceBlock_(self, v12, v13);
}

- (void)handleIMDAttachmentRecordCopyFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  responseMessageCopy = responseMessage;
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B2485C;
  v16[3] = &unk_1E7CB70F8;
  v17 = messageCopy;
  selfCopy = self;
  v19 = responseMessageCopy;
  v20 = handlerCopy;
  v12 = handlerCopy;
  v13 = responseMessageCopy;
  v14 = messageCopy;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDAttachmentRecordCopySortedAttachmentsFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  responseMessageCopy = responseMessage;
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B24A5C;
  v16[3] = &unk_1E7CB70F8;
  v17 = messageCopy;
  selfCopy = self;
  v19 = responseMessageCopy;
  v20 = handlerCopy;
  v12 = handlerCopy;
  v13 = responseMessageCopy;
  v14 = messageCopy;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDKVIntegerForKey_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  responseMessageCopy = responseMessage;
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B24CAC;
  v16[3] = &unk_1E7CB70F8;
  v17 = messageCopy;
  selfCopy = self;
  v19 = responseMessageCopy;
  v20 = handlerCopy;
  v12 = handlerCopy;
  v13 = responseMessageCopy;
  v14 = messageCopy;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDFetchContactsForIdentifiers_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  responseMessageCopy = responseMessage;
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B24EC8;
  v16[3] = &unk_1E7CB70F8;
  v17 = messageCopy;
  selfCopy = self;
  v19 = responseMessageCopy;
  v20 = handlerCopy;
  v12 = handlerCopy;
  v13 = responseMessageCopy;
  v14 = messageCopy;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

- (void)handleIMDDeleteDatabase_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7B25178;
  v10[3] = &unk_1E7CB67C0;
  v11 = handlerCopy;
  v8 = handlerCopy;
  objc_msgSend__syncPersistenceBlock_(self, v9, v10);
}

- (void)handleIMDVerifyDatabase_IPCActionWithXPCConnection:(id)connection requestMessage:(id)message responseMessage:(id)responseMessage completionHandler:(id)handler
{
  messageCopy = message;
  responseMessageCopy = responseMessage;
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B253B8;
  v16[3] = &unk_1E7CB70F8;
  v17 = messageCopy;
  selfCopy = self;
  v19 = responseMessageCopy;
  v20 = handlerCopy;
  v12 = handlerCopy;
  v13 = responseMessageCopy;
  v14 = messageCopy;
  objc_msgSend__syncPersistenceBlock_(self, v15, v16);
}

@end