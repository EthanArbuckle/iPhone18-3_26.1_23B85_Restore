void sub_1B7B20390(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = IMGetXPCStringFromDictionary();
  v6 = objc_msgSend_database(*(a1 + 40), v4, v5);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7B20470;
  v9[3] = &unk_1E7CB7120;
  v7 = *(a1 + 48);
  v9[4] = *(a1 + 40);
  v10 = v7;
  v11 = *(a1 + 56);
  objc_msgSend_fetchChatRecordsWithPinningIdentifier_completionHandler_(v6, v8, v3, v9);
}

void sub_1B7B20564(uint64_t a1)
{
  v2 = *(a1 + 32);
  v18 = IMGetXPCArrayFromDictionary();
  v3 = *(a1 + 32);
  v4 = IMGetXPCStringFromDictionary();
  v5 = *(a1 + 32);
  v6 = IMGetXPCStringFromDictionary();
  v7 = *(a1 + 32);
  v8 = IMGetXPCStringFromDictionary();
  v9 = *(a1 + 32);
  v10 = IMGetXPCBoolFromDictionary();
  int64 = xpc_dictionary_get_int64(*(a1 + 32), "style");
  v14 = objc_msgSend_database(*(a1 + 40), v12, v13);
  v16 = objc_msgSend_chatRecordsWithHandles_serviceName_displayName_groupID_style_useOriginalGroupID_(v14, v15, v18, v4, v6, v8, int64, v10);

  objc_msgSend__respondWithChatRecords_responseMessage_completionHandler_(*(a1 + 40), v17, v16, *(a1 + 48), *(a1 + 56));
}

void sub_1B7B20778(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = IMGetXPCArrayFromDictionary();
  v4 = *(a1 + 32);
  v5 = IMGetXPCArrayFromDictionary();
  int64 = xpc_dictionary_get_int64(*(a1 + 32), "style");
  v9 = objc_msgSend_database(*(a1 + 40), v7, v8);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1B7B20898;
  v12[3] = &unk_1E7CB7120;
  v10 = *(a1 + 48);
  v12[4] = *(a1 + 40);
  v13 = v10;
  v14 = *(a1 + 56);
  objc_msgSend_fetchChatRecordsWithAtLeastHandles_serviceNames_style_completionHandler_(v9, v11, v3, v5, int64, v12);
}

void sub_1B7B209B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = IMGetXPCArrayFromDictionary();
  v6 = objc_msgSend_database(*(a1 + 40), v4, v5);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B20AB8;
  v13[3] = &unk_1E7CB7170;
  v12 = *(a1 + 40);
  v7 = *(&v12 + 1);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v14 = v12;
  v15 = v10;
  objc_msgSend_fetchGroupPhotoPathsForChatsWithGroupIDs_completionHandler_(v6, v11, v3, v13);
}

void sub_1B7B20AB8(uint64_t a1, void *a2)
{
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = sub_1B7B20BA0;
  v13 = &unk_1E7CB7148;
  v4 = *(a1 + 40);
  v14 = *(a1 + 32);
  v15 = v4;
  v5 = a2;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v5, v6, &v10);
  v8 = objc_msgSend__xpcDictionaryWithCodableObjects_(*(a1 + 32), v7, v5, v10, v11, v12, v13, v14);

  if (v8)
  {
    xpc_dictionary_set_value(*(a1 + 48), "dictionary_result", v8);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    (*(v9 + 16))();
  }
}

void sub_1B7B20C8C(uint64_t a1)
{
  int64 = xpc_dictionary_get_int64(*(a1 + 32), "limit");
  v3 = *(a1 + 40);
  v9 = objc_msgSend_database(v3, v4, v5);
  v7 = objc_msgSend_copyDuplicateGroupChatRecordsWithLimit_(v9, v6, int64);
  objc_msgSend__respondWithChatRecords_responseMessage_completionHandler_(v3, v8, v7, *(a1 + 48), *(a1 + 56));
}

void sub_1B7B20DD8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10 = IMGetXPCArrayFromDictionary();
  v3 = *(a1 + 32);
  v4 = IMGetXPCIntFromDictionary();
  v7 = objc_msgSend_database(*(a1 + 40), v5, v6);
  objc_msgSend_updateChatsSyncStatusTo_forGUIDs_(v7, v8, v4, v10);

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))();
  }
}

void sub_1B7B20F5C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = IMGetXPCStringFromDictionary();
  v4 = *(a1 + 32);
  v5 = IMGetXPCStringFromDictionary();
  v8 = objc_msgSend_database(*(a1 + 40), v6, v7);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7B21058;
  v10[3] = &unk_1E7CB71E8;
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  objc_msgSend_resolveInconsistentGUIDForChatRecordWithGUID_newGUID_completionHandler_(v8, v9, v3, v5, v10);
}

uint64_t sub_1B7B21058(uint64_t a1, BOOL value)
{
  xpc_dictionary_set_BOOL(*(a1 + 32), "success", value);
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_1B7B21178(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10 = IMGetXPCArrayFromDictionary();
  v3 = *(a1 + 32);
  v4 = IMGetXPCIntFromDictionary();
  v7 = objc_msgSend_database(*(a1 + 40), v5, v6);
  objc_msgSend_updateMessagesSyncStatusTo_forGUIDs_(v7, v8, v4, v10);

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))();
  }
}

void sub_1B7B212DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10 = IMGetXPCArrayFromDictionary();
  v3 = *(a1 + 32);
  v4 = IMGetXPCIntFromDictionary();
  v7 = objc_msgSend_database(*(a1 + 40), v5, v6);
  objc_msgSend_updateMessagesSyncedSyndicationRangesForGUIDs_toStatus_(v7, v8, v10, v4);

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))();
  }
}

void sub_1B7B21460(uint64_t a1)
{
  int64 = xpc_dictionary_get_int64(*(a1 + 32), "chatRowID");
  v5 = objc_msgSend_database(*(a1 + 40), v3, v4);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7B21538;
  v8[3] = &unk_1E7CB7210;
  v6 = *(a1 + 48);
  v8[4] = *(a1 + 40);
  v9 = v6;
  v10 = *(a1 + 56);
  objc_msgSend_fetchLastMessageRecordForChatRecordWithRowID_completionHandler_(v5, v7, int64, v8);
}

void sub_1B7B21538(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  if (a2)
  {
    v13 = a2;
    v4 = MEMORY[0x1E695DEC8];
    v5 = a2;
    v7 = objc_msgSend_arrayWithObjects_count_(v4, v6, &v13, 1);
    objc_msgSend__respondWithMessageRecords_responseMessage_completionHandler_(v3, v8, v7, a1[5], a1[6], v13, v14);
  }

  else
  {
    v10 = a1[5];
    v9 = a1[6];
    v7 = 0;
    objc_msgSend__respondWithMessageRecords_responseMessage_completionHandler_(v3, v11, MEMORY[0x1E695E0F0], v10, v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1B7B216E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  v3 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
  v4 = *(a1 + 32);
  v5 = IMGetXPCIntFromDictionary();
  v8 = objc_msgSend_database(*(a1 + 40), v6, v7);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1B7B217F4;
  v11[3] = &unk_1E7CB7120;
  v9 = *(a1 + 48);
  v11[4] = *(a1 + 40);
  v12 = v9;
  v13 = *(a1 + 56);
  objc_msgSend_fetchUnreadMessageRecordsForChatsFilteredUsingPredicate_limit_completionHandler_(v8, v10, v3, v5, v11);
}

void sub_1B7B218E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = IMGetXPCStringFromDictionary();
  v4 = *(a1 + 32);
  v5 = IMGetXPCBoolFromDictionary();
  v8 = objc_msgSend_database(*(a1 + 40), v6, v7);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1B7B219E0;
  v11[3] = &unk_1E7CB7210;
  v9 = *(a1 + 48);
  v11[4] = *(a1 + 40);
  v12 = v9;
  v13 = *(a1 + 56);
  objc_msgSend_fetchMessageRecordWithGUID_excludeRecoverableMessages_completionHandler_(v8, v10, v3, v5, v11);
}

void sub_1B7B219E0(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v9[0] = v3;
    v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v4, v9, 1);
    objc_msgSend__respondWithMessageRecords_responseMessage_completionHandler_(*(a1 + 32), v7, v6, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
    objc_msgSend__respondWithMessageRecords_responseMessage_completionHandler_(*(a1 + 32), v4, MEMORY[0x1E695E0F0], *(a1 + 40), *(a1 + 48));
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7B21B4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9 = IMGetXPCStringFromDictionary();
  v3 = xpc_dictionary_get_BOOL(*(a1 + 32), "shouldHideFromSyndication");
  v6 = objc_msgSend_database(*(a1 + 40), v4, v5);
  objc_msgSend_updateAttachmentSyndicationRanges_shouldHideFromSyndication_(v6, v7, v9, v3);

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))();
  }
}

void sub_1B7B21CB0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9 = IMGetXPCStringFromDictionary();
  v3 = xpc_dictionary_get_BOOL(*(a1 + 32), "shouldHideFromSyndication");
  v6 = objc_msgSend_database(*(a1 + 40), v4, v5);
  objc_msgSend_updateMessageSyndicationRanges_shouldHideFromSyndication_(v6, v7, v9, v3);

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))();
  }
}

void sub_1B7B21E34(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = IMGetXPCStringFromDictionary();
  int64 = xpc_dictionary_get_int64(*(a1 + 32), "limit");
  v7 = objc_msgSend_database(*(a1 + 40), v5, v6);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7B21F2C;
  v10[3] = &unk_1E7CB7120;
  v8 = *(a1 + 48);
  v10[4] = *(a1 + 40);
  v11 = v8;
  v12 = *(a1 + 56);
  objc_msgSend_fetchScheduledMessageRecordsForChatRecordWithGUID_limit_completionHandler_(v7, v9, v3, int64, v10);
}

void sub_1B7B22020(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = IMGetXPCIntFromDictionary();
  v6 = objc_msgSend_database(*(a1 + 40), v4, v5);
  v12 = objc_msgSend_scheduledMessagesMetadataPendingCloudKitDeleteWithLimit_(v6, v7, v3);

  v9 = objc_msgSend__xpcArrayWithCodableObjects_(*(a1 + 40), v8, v12);
  if (v9)
  {
    v10 = *(a1 + 48);
    if (v10)
    {
      xpc_dictionary_set_value(v10, "scheduledMessagesMetadataPendingCloudKitDelete", v9);
    }
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    (*(v11 + 16))();
  }
}

void sub_1B7B221A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10 = IMGetXPCStringFromDictionary();
  v3 = *(a1 + 32);
  v4 = IMGetXPCStringFromDictionary();
  v7 = objc_msgSend_database(*(a1 + 40), v5, v6);
  objc_msgSend_addScheduledMessageGUIDandCKRecordToDeleteFromCloudKit_recordID_(v7, v8, v10, v4);

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))();
  }
}

void sub_1B7B22310(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8 = IMGetXPCArrayFromDictionary();
  v5 = objc_msgSend_database(*(a1 + 40), v3, v4);
  objc_msgSend_deleteTombstonedScheduledMessagesWithRecordIDs_(v5, v6, v8);

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))();
  }
}

void sub_1B7B22454(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8 = IMGetXPCArrayFromDictionary();
  v5 = objc_msgSend_database(*(a1 + 40), v3, v4);
  objc_msgSend_markMessageRecordsAsReadWithGUIDs_(v5, v6, v8);

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))();
  }
}

void sub_1B7B22598(id *a1, const char *a2, uint64_t a3)
{
  if (a1[4])
  {
    v4 = objc_msgSend_database(a1[5], a2, a3);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1B7B22684;
    v8[3] = &unk_1E7CB7238;
    v9 = a1[4];
    v10 = a1[6];
    objc_msgSend_fetchTotalMessageCountWithCompletionHandler_(v4, v5, v8);
  }

  else
  {
    v6 = a1[6];
    if (v6)
    {
      v7 = *(v6 + 2);

      v7();
    }
  }
}

uint64_t sub_1B7B22684(uint64_t a1, int64_t value)
{
  xpc_dictionary_set_int64(*(a1 + 32), "total_messages", value);
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_1B7B227A4(id *a1, const char *a2, uint64_t a3)
{
  if (a1[4])
  {
    v4 = objc_msgSend_database(a1[5], a2, a3);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1B7B22890;
    v8[3] = &unk_1E7CB7238;
    v9 = a1[4];
    v10 = a1[6];
    objc_msgSend_fetchMessagesWithoutChatsCountWithCompletionHandler_(v4, v5, v8);
  }

  else
  {
    v6 = a1[6];
    if (v6)
    {
      v7 = *(v6 + 2);

      v7();
    }
  }
}

uint64_t sub_1B7B22890(uint64_t a1, int64_t value)
{
  xpc_dictionary_set_int64(*(a1 + 32), "missing_messages", value);
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_1B7B229B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10 = IMGetXPCArrayFromDictionary();
  v3 = *(a1 + 32);
  objc_opt_class();
  v4 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
  v7 = objc_msgSend_database(*(a1 + 40), v5, v6);
  objc_msgSend_moveMessageRecordsToRecoveryForMessageGUIDs_deleteDate_(v7, v8, v10, v4);

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))();
  }
}

void sub_1B7B22B30(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10 = IMGetXPCArrayFromDictionary();
  v3 = *(a1 + 32);
  objc_opt_class();
  v4 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
  v7 = objc_msgSend_database(*(a1 + 40), v5, v6);
  objc_msgSend_moveMessageRecordsToRecoveryForChatRecordsWithGUIDs_deleteDate_(v7, v8, v10, v4);

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))();
  }
}

void sub_1B7B22CB0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8 = IMGetXPCArrayFromDictionary();
  v5 = objc_msgSend_database(*(a1 + 40), v3, v4);
  objc_msgSend_recoverMessageRecordsForChatRecordsWithGUIDs_(v5, v6, v8);

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))();
  }
}

void sub_1B7B22DF4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_database(*(a1 + 32), a2, a3);
  v11 = objc_msgSend_loadRecoverableMessagesMetadataGroupedByChatGUID(v4, v5, v6);

  v8 = objc_msgSend__xpcDictionaryWithCodableObjects_(*(a1 + 32), v7, v11);
  if (v8)
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      xpc_dictionary_set_value(v9, "recoverableMessagesMetadataDictionary", v8);
    }
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

uint64_t sub_1B7B22F58(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = IMGetXPCIntFromDictionary();
  v6 = objc_msgSend_database(*(a1 + 40), v4, v5);
  objc_msgSend_deleteRecoverableMessagesOlderThanDays_(v6, v7, v3);

  result = *(a1 + 48);
  if (result)
  {
    v9 = *(result + 16);

    return v9();
  }

  return result;
}

uint64_t sub_1B7B230A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = IMGetXPCIntFromDictionary();
  v6 = objc_msgSend_database(*(a1 + 40), v4, v5);
  objc_msgSend_deleteJunkMessagesOlderThanDays_(v6, v7, v3);

  result = *(a1 + 48);
  if (result)
  {
    v9 = *(result + 16);

    return v9();
  }

  return result;
}

void sub_1B7B23208(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = IMGetXPCArrayFromDictionary();
  v6 = objc_msgSend_database(*(a1 + 40), v4, v5);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7B232E8;
  v10[3] = &unk_1E7CB7120;
  v7 = *(a1 + 48);
  v8 = *(a1 + 40);
  v11 = v7;
  v12 = v8;
  v13 = *(a1 + 56);
  objc_msgSend_permanentlyDeleteRecoverableMessagesInChatsWithGUIDs_completionHandler_(v6, v9, v3, v10);
}

void sub_1B7B232E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  if (v4)
  {
    v5 = objc_msgSend__xpcArrayWithCodableObjects_(*(a1 + 40), v3, v3);
    xpc_dictionary_set_value(v4, "deletedChats", v5);

    v3 = v7;
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
    v3 = v7;
  }
}

void sub_1B7B23464(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = IMGetXPCIntFromDictionary();
  v4 = *(a1 + 32);
  v5 = IMGetXPCIntFromDictionary();
  v8 = objc_msgSend_database(*(a1 + 40), v6, v7);
  v14 = objc_msgSend_recoverableMessagesMetadataPendingCloudKitSaveWithLimit_filter_(v8, v9, v3, v5);

  v11 = objc_msgSend__xpcArrayWithCodableObjects_(*(a1 + 40), v10, v14);
  if (v11)
  {
    v12 = *(a1 + 48);
    if (v12)
    {
      xpc_dictionary_set_value(v12, "recoverableMessagesMetadataPendingCloudKitSave", v11);
    }
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    (*(v13 + 16))();
  }
}

void sub_1B7B23620(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = IMGetXPCIntFromDictionary();
  v6 = objc_msgSend_database(*(a1 + 40), v4, v5);
  v12 = objc_msgSend_recoverableMessagesMetadataPendingCloudKitDeleteWithLimit_(v6, v7, v3);

  v9 = objc_msgSend__xpcArrayWithCodableObjects_(*(a1 + 40), v8, v12);
  if (v9)
  {
    v10 = *(a1 + 48);
    if (v10)
    {
      xpc_dictionary_set_value(v10, "recoverableMessagesMetadataPendingCloudKitDelete", v9);
    }
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    (*(v11 + 16))();
  }
}

uint64_t sub_1B7B23778(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_database(*(a1 + 32), a2, a3);
  objc_msgSend_clearRecoverableMessageTombStones(v4, v5, v6);

  result = *(a1 + 40);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

uint64_t sub_1B7B2389C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = IMGetXPCIntFromDictionary();
  v4 = *(a1 + 32);
  v5 = IMGetXPCIntFromDictionary();
  v6 = *(a1 + 32);
  v7 = IMGetXPCIntFromDictionary();
  v10 = objc_msgSend_database(*(a1 + 40), v8, v9);
  objc_msgSend_updateRecoverableMessageSyncState_forMessageRowID_onPartIndex_(v10, v11, v3, v5, v7);

  result = *(a1 + 48);
  if (result)
  {
    v13 = *(result + 16);

    return v13();
  }

  return result;
}

void sub_1B7B23A20(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = IMGetXPCIntFromDictionary();
  v4 = *(a1 + 32);
  v10 = IMGetXPCArrayFromDictionary();
  v7 = objc_msgSend_database(*(a1 + 40), v5, v6);
  objc_msgSend_updateRecoverableMessageSyncState_forMessageGUIDs_(v7, v8, v3, v10);

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))();
  }
}

void sub_1B7B23B84(uint64_t a1)
{
  v2 = *(a1 + 32);
  v12 = IMGetXPCStringFromDictionary();
  v3 = *(a1 + 32);
  objc_opt_class();
  v4 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
  v5 = *(a1 + 32);
  objc_opt_class();
  v6 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
  v9 = objc_msgSend_database(*(a1 + 40), v7, v8);
  objc_msgSend_storeRecoverableMessagePartWithBody_forMessageWithGUID_deleteDate_(v9, v10, v6, v12, v4);

  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))();
  }
}

void sub_1B7B23D0C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v13 = IMGetXPCStringFromDictionary();
  v3 = *(a1 + 32);
  v4 = IMGetXPCStringFromDictionary();
  v5 = *(a1 + 32);
  v6 = IMGetXPCStringFromDictionary();
  v7 = *(a1 + 32);
  v8 = IMGetXPCStringFromDictionary();
  v11 = objc_msgSend_database(*(a1 + 40), v9, v10);
  objc_msgSend_postSharePlayNotificationForChatGUID_faceTimeConversationUUID_handleIdentifier_localizedApplicationName_(v11, v12, v13, v4, v6, v8);
}

void sub_1B7B23FC4(xpc_object_t *a1)
{
  uint64 = xpc_dictionary_get_uint64(a1[4], "tableName");
  v5 = objc_msgSend_database(a1[5], v3, v4);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7B24098;
  v7[3] = &unk_1E7CB7238;
  v8 = a1[6];
  v9 = a1[7];
  objc_msgSend_fetchCountOfRecordType_completionHandler_(v5, v6, uint64, v7);
}

uint64_t sub_1B7B24098(uint64_t a1, int64_t value)
{
  xpc_dictionary_set_int64(*(a1 + 32), "total", value);
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1B7B241C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  v9 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
  v5 = objc_msgSend_database(*(a1 + 40), v3, v4);
  v7 = objc_msgSend_handleRecordsFilteredByPredicate_(v5, v6, v9);

  objc_msgSend__respondWithHandleRecords_responseMessage_completionHandler_(*(a1 + 40), v8, v7, *(a1 + 48), *(a1 + 56));
}

void sub_1B7B24350(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  v3 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
  v4 = *(a1 + 40);
  v5 = xpc_dictionary_get_value(*(a1 + 32), "sortDescriptors");
  v6 = objc_opt_class();
  v8 = objc_msgSend__codableObjectsCopiedFromXPCArray_objectClass_(v4, v7, v5, v6);

  int64 = xpc_dictionary_get_int64(*(a1 + 32), "limit");
  v12 = objc_msgSend_database(*(a1 + 40), v10, v11);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1B7B244AC;
  v15[3] = &unk_1E7CB7120;
  v13 = *(a1 + 48);
  v15[4] = *(a1 + 40);
  v16 = v13;
  v17 = *(a1 + 56);
  objc_msgSend_fetchHandleRecordsFilteredUsingPredicate_sortedUsingDescriptors_limit_completionHandler_(v12, v14, v3, v8, int64, v15);
}

void sub_1B7B24580(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10 = IMGetXPCArrayFromDictionary();
  v3 = *(a1 + 32);
  v4 = IMGetXPCIntFromDictionary();
  v7 = objc_msgSend_database(*(a1 + 40), v5, v6);
  objc_msgSend_updateAttachmentsSyncStatusTo_forGUIDs_(v7, v8, v4, v10);

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))();
  }
}

void sub_1B7B246E4(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  v8 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
  v5 = objc_msgSend_database(*(a1 + 40), v3, v4);
  objc_msgSend_deleteAttachmentsDirectWithPredicate_(v5, v6, v8);

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))();
  }
}

void sub_1B7B2485C(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  v3 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
  int64 = xpc_dictionary_get_int64(*(a1 + 32), "limit");
  v7 = objc_msgSend_database(*(a1 + 40), v5, v6);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7B24968;
  v10[3] = &unk_1E7CB7120;
  v8 = *(a1 + 48);
  v10[4] = *(a1 + 40);
  v11 = v8;
  v12 = *(a1 + 56);
  objc_msgSend_fetchAttachmentRecordsFilteredUsingPredicate_limit_completionHandler_(v7, v9, v3, int64, v10);
}

uint64_t sub_1B7B24968(void *a1, uint64_t a2)
{
  v2 = a1[5];
  v3 = a1[6];
  return MEMORY[0x1EEE66B58](a1[4], sel__respondWithAttachmentRecords_responseMessage_completionHandler_, a2);
}

void sub_1B7B24A5C(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  v3 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
  v4 = *(a1 + 40);
  v5 = xpc_dictionary_get_value(*(a1 + 32), "sortDescriptors");
  v6 = objc_opt_class();
  v8 = objc_msgSend__codableObjectsCopiedFromXPCArray_objectClass_(v4, v7, v5, v6);

  int64 = xpc_dictionary_get_int64(*(a1 + 32), "limit");
  v12 = objc_msgSend_database(*(a1 + 40), v10, v11);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1B7B24BB8;
  v15[3] = &unk_1E7CB7120;
  v13 = *(a1 + 48);
  v15[4] = *(a1 + 40);
  v16 = v13;
  v17 = *(a1 + 56);
  objc_msgSend_fetchAttachmentRecordsFilteredUsingPredicate_sortedUsingDescriptors_limit_completionHandler_(v12, v14, v3, v8, int64, v15);
}

uint64_t sub_1B7B24BB8(void *a1, uint64_t a2)
{
  v2 = a1[5];
  v3 = a1[6];
  return MEMORY[0x1EEE66B58](a1[4], sel__respondWithAttachmentRecords_responseMessage_completionHandler_, a2);
}

void sub_1B7B24CAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = IMGetXPCStringFromDictionary();
  v6 = objc_msgSend_database(*(a1 + 40), v4, v5);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7B24D88;
  v8[3] = &unk_1E7CB7238;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  objc_msgSend_fetchInteger64ForKey_completionHandler_(v6, v7, v3, v8);
}

uint64_t sub_1B7B24D88(uint64_t a1, int64_t value)
{
  xpc_dictionary_set_int64(*(a1 + 32), "result", value);
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_1B7B24EC8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = IMGetXPCArrayFromDictionary();
  v6 = objc_msgSend_database(*(a1 + 40), v4, v5);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7B24FA8;
  v9[3] = &unk_1E7CB7288;
  v7 = *(a1 + 48);
  v9[4] = *(a1 + 40);
  v10 = v7;
  v11 = *(a1 + 56);
  objc_msgSend_fetchContactsForIdentifiers_completionHandler_(v6, v8, v3, v9);
}

void sub_1B7B24FA8(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v12 = 134217984;
      v13 = objc_msgSend_count(v3, v6, v7);
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "IMDContactQueries: Fetched %tu contacts from IMDP.", &v12, 0xCu);
    }
  }

  if (v3)
  {
    v8 = objc_msgSend__xpcDictionaryWithCodableObjects_(*(a1 + 32), v4, v3);
    if (v8)
    {
      v9 = *(a1 + 40);
      if (v9)
      {
        xpc_dictionary_set_value(v9, "identifiersToContacts", v8);
      }
    }

    v10 = *(a1 + 48);
    if (v10)
    {
      (*(v10 + 16))();
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1B7B25178(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = IMDatabaseMessageEventLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "About to close current DB", &v11, 2u);
  }

  IMDSMSRecordStoreClose();
  v3 = IMMessagesDatabaseURL();
  v6 = objc_msgSend_path(v3, v4, v5);
  v7 = IMDDatabaseDelete(v6, 0);

  if (!v7 && IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Could not delete database at path %@", &v11, 0xCu);
    }
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))();
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1B7B253B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = IMGetXPCDataFromDictionary();
  if (v6)
  {
    v14 = 0;
    v7 = objc_msgSend_createFromData_error_(_TtC14IMDPersistence16StorageInspector, v3, v6, &v14);
    v8 = v14;
    if (v7)
    {
      v9 = objc_msgSend_database(*(a1 + 40), v3, v4);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_1B7B254E4;
      v12[3] = &unk_1E7CB72B0;
      v13 = *(a1 + 48);
      objc_msgSend_inspectStorageWithStorageInspector_completionHandler_(v9, v10, v7, v12);
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    (*(v11 + 16))(v11, v3, v4, v5);
  }
}

void sub_1B7B254E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  v9 = v6;
  if (v5)
  {
    v9 = v6;
    if (!v6)
    {
      v13 = 0;
      v10 = objc_msgSend_encodeToData_(v5, v7, &v13);
      v9 = v13;
      if (v10)
      {
        v11 = *(a1 + 32);
        IMInsertDatasToXPCDictionary();
      }
    }
  }

  if (v9)
  {
    v12 = *(a1 + 32);
    IMInsertCodableObjectsToXPCDictionary();
  }
}

uint64_t _IMDDatabasePerformOneMigration(unsigned int *a1, const char *a2, uint64_t a3, uint64_t a4, _DWORD *a5, void *a6)
{
  v6 = *a1;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7B25DE0;
  v8[3] = &unk_1E7CB72D0;
  v8[4] = a1;
  return sub_1B7B25A24(v6, a2, a3, a4, a5, a6, v8);
}

uint64_t sub_1B7B25A24(const char *a1, const char *a2, uint64_t a3, uint64_t a4, _DWORD *a5, void *a6, uint64_t a7)
{
  v46 = *MEMORY[0x1E69E9840];
  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], a2, a3);
  v15 = v14;
  v39 = 0u;
  memset(v38, 0, sizeof(v38));
  IMDSqlOperationInitWithCSDBConnection(a3, a2, v38);
  v17 = IMDSqlOperationBeginTransaction(v38);
  if ((v17 & 1) == 0 && !*(&v39 + 1))
  {
    v18 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEDA30(a4, a1);
    }
  }

  if (!v17)
  {
    goto LABEL_30;
  }

  v20 = IMDDropAllTriggersWithOperation(v38, 1, v16);
  if (!v20 && !*(&v39 + 1))
  {
    v21 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEDAE0(a4, a1);
      goto LABEL_30;
    }
  }

  if (!v20)
  {
LABEL_30:
    v31 = IMLogHandleForCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *&v34 = COERCE_DOUBLE(IMDSqlOperationErrorDescription(v38, v32, v33));
      *buf = 67109634;
      v41 = a4;
      v42 = 1024;
      v43 = a1;
      v44 = 2112;
      v45 = *&v34;
      _os_log_impl(&dword_1B7AD5000, v31, OS_LOG_TYPE_INFO, "Migration from %d to %d failed with error: %@", buf, 0x18u);
    }

    IMDSqlOperationGetError(v38, a6);
    IMDSqlOperationRevertTransaction(v38);
    IMDSqlOperationRelease(v38, 0);
    v35 = IMLogHandleForCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      v41 = a4;
      v42 = 1024;
      v43 = a1;
      _os_log_impl(&dword_1B7AD5000, v35, OS_LOG_TYPE_INFO, "Unable to perform database migration from %d to %d", buf, 0xEu);
    }

    v27 = 0;
    goto LABEL_35;
  }

  v22 = IMDDropUnknownIndexesWithOperation(v38, 1, v19);
  if (!v22 && !*(&v39 + 1))
  {
    v23 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEDB90(a4, a1);
      goto LABEL_30;
    }
  }

  if (!v22 || !IMDDropUnknownTablesWithOperation(v38, 1))
  {
    goto LABEL_30;
  }

  v24 = IMDCreateTablesWithOperation(v38, 1);
  if (a7)
  {
    if (v24)
    {
      v24 = (*(a7 + 16))(a7, v38, a4);
      if ((v24 & 1) == 0 && !*(&v39 + 1))
      {
        v25 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CEDC40(a4, a1);
        }

        goto LABEL_30;
      }
    }
  }

  if (!v24 || !IMDSqlOperationCommitTransaction(v38))
  {
    goto LABEL_30;
  }

  CSDBSqliteDatabaseSetVersion();
  if (a5)
  {
    *a5 = a1;
  }

  if (*(&v39 + 1))
  {
    goto LABEL_30;
  }

  IMDSqlOperationRelease(v38, 0);
  v26 = IMLogHandleForCategory();
  v27 = 1;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v28, v29);
    *buf = 67109632;
    v41 = a4;
    v42 = 1024;
    v43 = a1;
    v44 = 2048;
    v45 = v30 - v15;
    _os_log_impl(&dword_1B7AD5000, v26, OS_LOG_TYPE_INFO, "Migrated from %d to %d ok in %f seconds", buf, 0x18u);
  }

LABEL_35:
  v36 = *MEMORY[0x1E69E9840];
  return v27;
}

uint64_t sub_1B7B25DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  if (v3)
  {
    return v3(a2, a3);
  }

  else
  {
    return 1;
  }
}

BOOL _IMDDatabaseCompleteMigration(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  IMDSqlOperationInitWithCSDBConnection(a2, a1, v17);
  if (IMDCreateTablesWithOperation(v17, 1))
  {
    IMDCreateIndexesWithOperation(v17, 1);
    IMDCreateTriggersWithOperation(v17, 1);
  }

  else if (!*(&v18 + 1))
  {
    v19 = xmmword_1E7CB7318;
    v20 = *off_1E7CB7328;
    v21 = 240;
    v5 = MEMORY[0x1E696AEC0];
    v6 = IMFileLocationTrimFileName();
    v7 = v21;
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8, @"can't have migration fail without error!!");
    v11 = objc_msgSend_stringWithFormat_(v5, v10, @"Unexpected false '%@' in %s at %s:%d. %@", @"success || operation->error != nil", "BOOL IMDCreateTriggersAndIndexes(IMDSqlOperation *, BOOL)", v6, v7, v9);
    v12 = IMGetAssertionFailureHandler();
    if (v12)
    {
      v12(v11);
    }

    else
    {
      v15 = objc_msgSend_warning(MEMORY[0x1E69A6138], v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEC540(v11, v15);
      }
    }
  }

  return IMDSqlOperationRelease(v17, a4);
}

uint64_t _IMDDatabasePerformMigrations(const char *a1, const char *a2, uint64_t a3, _DWORD *a4, void *a5)
{
  v7 = a3;
  v62 = *MEMORY[0x1E69E9840];
  v55 = 0;
  v10 = dword_1EDBE1D68;
  if (!dword_1EDBE1D68)
  {
LABEL_7:
    v13 = 1;
    goto LABEL_9;
  }

  v11 = &dword_1EDBE1D68;
  while (v7 >= v10)
  {
LABEL_6:
    v12 = v11[6];
    v11 += 6;
    v10 = v12;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v56 = MEMORY[0x1E69E9820];
  v57 = 3221225472;
  v58 = sub_1B7B25DE0;
  v59 = &unk_1E7CB72D0;
  v60 = v11;
  if (sub_1B7B25A24(v10, a1, a2, v7, a4, &v55, &v56))
  {
    v7 = *v11;
    goto LABEL_6;
  }

  v13 = 0;
LABEL_9:
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  LODWORD(v59) = 0;
  v14 = objc_msgSend_schemaVersion(IMDLegacyRecordBridge, a2, a3);
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = sub_1B7B26318;
  v53[3] = &unk_1E7CB72F8;
  v54 = v7;
  v53[4] = &v56;
  v53[5] = a2;
  v17 = v13 & sub_1B7B25A24(v14, a1, a2, v7, a4, &v55, v53);
  if (*(v57 + 24))
  {
    LODWORD(v7) = *(v57 + 24);
  }

  if (v17)
  {
    _IMDDatabaseCompleteMigration(a1, a2, v16, &v55);
    v18 = v55;
    if (!a5)
    {
      goto LABEL_18;
    }

LABEL_16:
    if (v18)
    {
      *a5 = v18;
    }
  }

  else
  {
    v18 = v55;
    if (v55)
    {
      if (!a5)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    v18 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v15, *MEMORY[0x1E696A250], 3072, 0);
    v55 = v18;
    if (a5)
    {
      goto LABEL_16;
    }
  }

LABEL_18:
  if (!v17)
  {
LABEL_32:
    v21 = 0;
    goto LABEL_33;
  }

  if (objc_msgSend_schemaVersion(IMDLegacyRecordBridge, v15, v16) == v7)
  {
    goto LABEL_20;
  }

  v22 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], v19, v20);
  if (!objc_msgSend_isInternalInstall(v22, v23, v24) || objc_msgSend_schemaVersion(IMDLegacyRecordBridge, v25, v26) >= v7)
  {
    v47 = IMLogHandleForCategory();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v50 = objc_msgSend_schemaVersion(IMDLegacyRecordBridge, v48, v49);
      sub_1B7CEDCF0(v50, buf, v47);
    }

    goto LABEL_32;
  }

  v27 = IMLogHandleForCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v30 = objc_msgSend_schemaVersion(IMDLegacyRecordBridge, v28, v29);
    sub_1B7CEDD38(v30, buf, v7, v27);
  }

  v31 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], v28, v29);
  if (objc_msgSend_isInternalInstall(v31, v32, v33))
  {
    v36 = MEMORY[0x1E69A6188];
    v37 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v34, v35);
    v39 = objc_msgSend_userNotificationWithIdentifier_title_message_defaultButton_alternateButton_otherButton_(v36, v38, v37, @"Messages Database Downgrade Detected", @"[Internal Only] Messages database is newer than expected version. This may have occurred due to a software downgrade.\n\nNo data has been removed but Messages may not behave as expected.", @"OK", 0, 0);
    v41 = v39;
    if (v39)
    {
      objc_msgSend_setUsesNotificationCenter_(v39, v40, 0);
      objc_msgSend_setRepresentedApplicationBundle_(v41, v42, *MEMORY[0x1E69A61B8]);
      v45 = objc_msgSend_sharedInstance(MEMORY[0x1E69A6190], v43, v44);
      objc_msgSend_addUserNotification_listener_completionHandler_(v45, v46, v41, 0, &unk_1F2FA0030);
    }
  }

LABEL_20:
  v21 = 1;
LABEL_33:
  _Block_object_dispose(&v56, 8);
  v51 = *MEMORY[0x1E69E9840];
  return v21;
}

void sub_1B7B262E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B2636C()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v1 = 0;
      _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_INFO, "User acknowledged database downgrade", v1, 2u);
    }
  }
}

uint64_t IMDChatRecordAddChat(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7B264EC;
  v3[3] = &unk_1E7CB7368;
  v3[4] = &v4;
  v3[5] = a1;
  _IMDPerformLockedMessageStoreBlock(v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1B7B264D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7B264EC(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = result;
    CSDBRecordStoreAddRecord();
    result = CSDBRecordSaveStore();
    *(*(*(v1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t IMDChatRecordCopyAllChats()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_DEBUG, "IMDSMSRecordStoreCopyAllChats", buf, 2u);
    }
  }

  *buf = 0;
  v9 = buf;
  v10 = 0x2020000000;
  v11 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v3 = objc_msgSend_copyAllChatsQuery(IMDChatQueryStrings, v1, v2);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7B266D8;
    v7[3] = &unk_1E7CB7390;
    v7[4] = buf;
    _IMDPerformLockedStatementBlockWithQuery(v3, v7);
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1B7B267F4;
    v6[3] = &unk_1E7CB6838;
    v6[4] = buf;
    __syncXPCIMDChatRecordCopyAllChats_IPCAction(v6);
  }

  v4 = *(v9 + 3);
  _Block_object_dispose(buf, 8);
  return v4;
}

void sub_1B7B266D8(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1B7AE0D64(a1, a2, a3);
  v4 = CSDBRecordStoreProcessStatement();
  if (v4)
  {
    v5 = v4;
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v7 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v9 = Mutable;
        for (i = 0; i != Count; ++i)
        {
          CFArrayGetValueAtIndex(v5, i);
          ID = CSDBRecordGetID();
          v12 = IMDChatRecordCreateFromRecordIDUnlocked(v7, ID);
          if (v12)
          {
            v13 = v12;
            CFArrayAppendValue(v9, v12);
            CFRelease(v13);
          }
        }

        *(*(*(a1 + 32) + 8) + 24) = v9;
      }
    }

    CFRelease(v5);
  }
}

xpc_object_t sub_1B7B267F4(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7B26888;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7B26888(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v5 = objc_autoreleasePoolPush();
  v6 = _IMDCopyIMDChatRecordFromXPCObjectClient(a3);
  if (v6)
  {
    v7 = v6;
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v6);
    CFRelease(v7);
  }

  objc_autoreleasePoolPop(v5);
  return 1;
}

uint64_t IMDChatRecordCopyAllNamedChats()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_DEBUG, "IMDSMSRecordStoreCopyAllNamedChats", buf, 2u);
    }
  }

  *buf = 0;
  v9 = buf;
  v10 = 0x2020000000;
  v11 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v3 = objc_msgSend_copyAllNamedChatsQuery(IMDChatQueryStrings, v1, v2);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7B26AC8;
    v7[3] = &unk_1E7CB7390;
    v7[4] = buf;
    _IMDPerformLockedStatementBlockWithQuery(v3, v7);
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1B7B26BE4;
    v6[3] = &unk_1E7CB6838;
    v6[4] = buf;
    __syncXPCIMDChatRecordCopyAllNamedChats_IPCAction(v6);
  }

  v4 = *(v9 + 3);
  _Block_object_dispose(buf, 8);
  return v4;
}

void sub_1B7B26AC8(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1B7AE0D64(a1, a2, a3);
  v4 = CSDBRecordStoreProcessStatement();
  if (v4)
  {
    v5 = v4;
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v7 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v9 = Mutable;
        for (i = 0; i != Count; ++i)
        {
          CFArrayGetValueAtIndex(v5, i);
          ID = CSDBRecordGetID();
          v12 = IMDChatRecordCreateFromRecordIDUnlocked(v7, ID);
          if (v12)
          {
            v13 = v12;
            CFArrayAppendValue(v9, v12);
            CFRelease(v13);
          }
        }

        *(*(*(a1 + 32) + 8) + 24) = v9;
      }
    }

    CFRelease(v5);
  }
}

xpc_object_t sub_1B7B26BE4(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7B26C78;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7B26C78(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v5 = objc_autoreleasePoolPush();
  v6 = _IMDCopyIMDChatRecordFromXPCObjectClient(a3);
  if (v6)
  {
    v7 = v6;
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v6);
    CFRelease(v7);
  }

  objc_autoreleasePoolPop(v5);
  return 1;
}

uint64_t IMDChatRecordCopyAllActiveChats()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_DEBUG, "IMDSMSRecordStoreCopyAllActiveChats", buf, 2u);
    }
  }

  *buf = 0;
  v9 = buf;
  v10 = 0x2020000000;
  v11 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v3 = objc_msgSend_copyAllChatsQuery(IMDChatQueryStrings, v1, v2);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7B26EC0;
    v7[3] = &unk_1E7CB7390;
    v7[4] = buf;
    _IMDPerformLockedStatementBlockWithQuery(v3, v7);
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1B7B26FDC;
    v6[3] = &unk_1E7CB6838;
    v6[4] = buf;
    __syncXPCIMDChatRecordCopyAllActiveChatsProgressivelyWithLimit_IPCAction(v6, -1);
  }

  v4 = *(v9 + 3);
  _Block_object_dispose(buf, 8);
  return v4;
}

void sub_1B7B26EC0(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1B7AE0D64(a1, a2, a3);
  v4 = CSDBRecordStoreProcessStatement();
  if (v4)
  {
    v5 = v4;
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v7 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v9 = Mutable;
        for (i = 0; i != Count; ++i)
        {
          CFArrayGetValueAtIndex(v5, i);
          ID = CSDBRecordGetID();
          v12 = IMDChatRecordCreateFromRecordIDUnlocked(v7, ID);
          if (v12)
          {
            v13 = v12;
            CFArrayAppendValue(v9, v12);
            CFRelease(v13);
          }
        }

        *(*(*(a1 + 32) + 8) + 24) = v9;
      }
    }

    CFRelease(v5);
  }
}

xpc_object_t sub_1B7B26FDC(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7B27070;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7B27070(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v5 = objc_autoreleasePoolPush();
  v6 = _IMDCopyIMDChatRecordFromXPCObjectClient(a3);
  if (v6)
  {
    v7 = v6;
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v6);
    CFRelease(v7);
  }

  objc_autoreleasePoolPop(v5);
  return 1;
}

uint64_t sub_1B7B2710C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a3;
  v8 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3);
  if (v3)
  {
    v9 = [IMDPredicateToSQLConverter alloc];
    v12 = objc_msgSend_keyPathsToColumns(IMDChatRecord, v10, v11);
    v3 = objc_msgSend_initWithPredicate_keyPathsToColumns_columnPrefix_(v9, v13, v3, v12, @"c.");
  }

  v14 = objc_msgSend_expression(v3, v6, v7);
  v16 = objc_msgSend_copyChatsWithUnreadMessagesWithLimit_beforeDate_extraCriteria_(IMDChatQueryStrings, v15, a1, a2, v14);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1B7B2721C;
  v18[3] = &unk_1E7CB6F58;
  v18[4] = v3;
  v18[5] = v8;
  _IMDPerformLockedStatementBlockWithQuery(v16, v18);

  return v8;
}

void sub_1B7B2721C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_bindParametersToSqliteWithStatement_(*(a1 + 32), a2, a4);
  sub_1B7AE0D64(v5, v6, v7);
  v8 = CSDBRecordStoreProcessStatement();
  v10 = _IMDChatRecordCopyChatsFromRecords(v8);
  if (!v10)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "No chats found with unread messages.", &v14, 2u);
      }
    }

LABEL_9:
    if (!v8)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  objc_msgSend_addObjectsFromArray_(*(a1 + 40), v9, v10);
  if (!IMOSLoggingEnabled())
  {
    goto LABEL_9;
  }

  v11 = OSLogHandleForIMFoundationCategory();
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    goto LABEL_9;
  }

  v14 = 134217984;
  Count = CFArrayGetCount(v10);
  _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "Found %llu chats with unread messages.", &v14, 0xCu);
  if (v8)
  {
LABEL_10:
    CFRelease(v8);
  }

LABEL_11:
  if (v10)
  {
    CFRelease(v10);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1B7B27390(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    if (!v2)
    {
      JUMPOUT(0x1B7B27354);
    }

    JUMPOUT(0x1B7B2734CLL);
  }

  _Unwind_Resume(a1);
}

void *IMDChatRecordCopyAllUnreadChatsAndRecentChatsWithLimit(int64_t a1, int64_t a2)
{
  v64 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Copying all unread chats and recent chats", buf, 2u);
    }
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    SMSFilterExtensionParams = objc_msgSend_fetchSMSFilterExtensionParams(MEMORY[0x1E69A8210], v6, v7);
    v11 = objc_msgSend_copyAllRecentChatsWithLimitQuery(IMDChatQueryStrings, v9, v10);
    v14 = objc_msgSend_array(MEMORY[0x1E695DF70], v12, v13);
    v15 = 0;
    v16 = MEMORY[0x1E69E9820];
    do
    {
      v56[0] = v16;
      if (v15)
      {
        v17 = a2;
      }

      else
      {
        v17 = a1;
      }

      v56[1] = 3221225472;
      v56[2] = sub_1B7B2D80C;
      v56[3] = &unk_1E7CB75F8;
      v56[5] = v15;
      v56[6] = v17;
      v56[4] = v14;
      _IMDPerformLockedStatementBlockWithQuery(v11, v56);
      ++v15;
    }

    while (v15 != 5);
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(SMSFilterExtensionParams, v18, &v52, buf, 16);
    v44 = a1;
    v45 = v5;
    if (v21)
    {
      v22 = *v53;
      do
      {
        v23 = 0;
        do
        {
          if (*v53 != v22)
          {
            objc_enumerationMutation(SMSFilterExtensionParams);
          }

          v24 = objc_msgSend_filterMode(*(*(&v52 + 1) + 8 * v23), v19, v20, v44, v45);
          if (v24 >= 0x10)
          {
            v51[0] = MEMORY[0x1E69E9820];
            v51[1] = 3221225472;
            v51[2] = sub_1B7B2D958;
            v51[3] = &unk_1E7CB75F8;
            v51[5] = v24;
            v51[6] = a2;
            v51[4] = v14;
            _IMDPerformLockedStatementBlockWithQuery(v11, v51);
          }

          ++v23;
        }

        while (v21 != v23);
        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(SMSFilterExtensionParams, v19, &v52, buf, 16);
      }

      while (v21);
    }

    if (v14)
    {
      v26 = v44;
      v25 = v45;
      v27 = objc_msgSend_count(v14, v19, v20);
    }

    else
    {
      v27 = 0;
      v26 = v44;
      v25 = v45;
    }

    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *v57 = 134218496;
        v58 = v27;
        v59 = 2048;
        v60 = v26;
        v61 = 2048;
        v62 = a2;
        _os_log_impl(&dword_1B7AD5000, v29, OS_LOG_TYPE_INFO, "Found %llu recent chats (knownSenderLimit: %lld, otherFilterLimit: %lld)", v57, 0x20u);
      }
    }

    if (v11)
    {
    }

    objc_msgSend_addObjectsFromArray_(v25, v28, v14, v44, v45);
    v32 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v30, v31);
    if ((objc_msgSend_isUnreadCountRefactorEnabled(v32, v33, v34) & 1) == 0)
    {
      objc_msgSend_count(v25, v35, v36);
      v39 = objc_msgSend_count(v25, v37, v38);
      v40 = sub_1B7B2710C(2000 - v39, 0, 0);
      objc_msgSend_addObjectsFromArray_(v25, v41, v40);
    }

    v48[3] = v25;
  }

  else
  {
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = sub_1B7B27804;
    v46[3] = &unk_1E7CB6838;
    v46[4] = &v47;
    __syncXPCIMDChatRecordCopyAllUnreadChatsAndRecentChatsWithLimit_IPCAction(v46, a1, a2);
    v25 = v48[3];
  }

  _Block_object_dispose(&v47, 8);
  v42 = *MEMORY[0x1E69E9840];
  return v25;
}

xpc_object_t sub_1B7B27804(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    result = _IMDChatRecordCopyChatsFromXPCArray(result);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

void IMDChatRemapChatsWithLastAddressedSIMIDToNewLastAddressedIDs(void *a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      *&buf[4] = a1;
      *&buf[12] = 2112;
      *&buf[14] = a2;
      *&buf[22] = 2112;
      *&buf[24] = a3;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Trying to update chats wuth lastAddressedSIMID %@ to new simID %@ and new handle %@", buf, 0x20u);
    }
  }

  if (a1)
  {
    v9 = objc_msgSend_length(a1, v6, v7) == 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 1;
    if (a2)
    {
LABEL_6:
      v10 = objc_msgSend_length(a2, v6, v7) != 0;
      if (a3)
      {
        goto LABEL_7;
      }

LABEL_13:
      v11 = 0;
      if (v9)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  v10 = 0;
  if (!a3)
  {
    goto LABEL_13;
  }

LABEL_7:
  v11 = objc_msgSend_length(a3, v6, v7) != 0;
  if (v9)
  {
LABEL_8:
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v13 = "Old lastAddressedSIMID passed is nil, returning.";
        v14 = v12;
        v15 = 2;
LABEL_33:
        _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, v13, buf, v15);
        goto LABEL_35;
      }
    }

    goto LABEL_35;
  }

LABEL_14:
  if (v10 || v11)
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v18 = objc_msgSend_copy(a2, v16, v17);
      if (v18)
      {
        v21 = v18;
      }

      else
      {
        v21 = &stru_1F2FA9728;
      }

      v22 = objc_msgSend_copy(a3, v19, v20);
      memset(&v37[7], 0, 32);
      if (v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = &stru_1F2FA9728;
      }

      memset(v37, 0, 112);
      memset(buf, 0, sizeof(buf));
      IMDSqlOperationInitWithSharedCSDBDatabase(buf);
      AddressedSIMIDToNewLastAddressedIDsQuery = objc_msgSend_remapChatsWithLastAddressedSIMIDToNewLastAddressedIDsQuery(IMDChatQueryStrings, v24, v25);
      _IMDSqlOperationBeginQuery(buf, AddressedSIMIDToNewLastAddressedIDsQuery);
      IMDSqlStatementBindTextFromCFString(v37, v23);
      IMDSqlStatementBindTextFromCFString(v37, v21);
      IMDSqlStatementBindTextFromCFString(v37, *MEMORY[0x1E69A7AE0]);
      IMDSqlStatementBindTextFromCFString(v37, a1);
      IMDSqlOperationFinishQuery(buf);
      v31 = 0;
      IMDSqlOperationRelease(buf, &v31);
      if (v31)
      {
        if (IMOSLoggingEnabled())
        {
          v27 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *v32 = 138412290;
            v33 = v31;
            _os_log_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_INFO, "Error executing IMDChatRemapChatsWithLastAddressedSIMIDToNewLastAddressedIDs %@ ", v32, 0xCu);
          }
        }
      }

      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *v32 = 138412546;
          v33 = v23;
          v34 = 2112;
          v35 = v21;
          _os_log_impl(&dword_1B7AD5000, v28, OS_LOG_TYPE_INFO, "Last addressed handles/simIDs got modified to %@ and %@. Posting notification to reload chat registry.", v32, 0x16u);
        }
      }

      notify_post("com.apple.imdpersistenceagent.notification.lastaddressedidsmodified");
    }

    else
    {
      __syncXPCIMDChatRemapChatsWithLastAddressedSIMIDToNewLastAddressedIDs_IPCAction(0);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v29 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = a1;
      v13 = "Both new lastAddressedSIMID and lastAddressedSIMID are nil, not updating chats with simID %@ and returning.";
      v14 = v29;
      v15 = 12;
      goto LABEL_33;
    }
  }

LABEL_35:
  v30 = *MEMORY[0x1E69E9840];
}

uint64_t IMDChatGetMessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs(void *a1, void *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      buf[0] = 138412546;
      *&buf[1] = a1;
      LOWORD(buf[3]) = 2112;
      *(&buf[3] + 2) = a2;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Trying to find last address labelID/date from chatIds %@ and labelIDs %@", buf, 0x16u);
    }
  }

  v7 = objc_msgSend_count(a1, v4, v5);
  v10 = objc_msgSend_count(a2, v8, v9);
  if (v7 && (v12 = v10) != 0)
  {
    v14 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AD60], v11, &stru_1F2FA9728);
    if (v7 >= 2)
    {
      v15 = v7 - 1;
      do
      {
        objc_msgSend_appendString_(v14, v13, @"?, ");
        --v15;
      }

      while (v15);
    }

    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AD60], v13, &stru_1F2FA9728);
    if (v12 >= 2)
    {
      v18 = v12 - 1;
      do
      {
        objc_msgSend_appendString_(v17, v16, @"?, ");
        --v18;
      }

      while (v18);
    }

    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v20 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v19, @"select max(cm.message_date),last_addressed_sim_id from (select * from chat where chat_identifier in (%@?) AND style=45 and service_name=? and last_addressed_sim_id in (%@?)) c INNER JOIN chat_message_join cm ON c.ROWID=cm.chat_id;", v14, v17);
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          buf[0] = 138412290;
          *&buf[1] = v20;
          _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "GetMessageDateAndLastAddressedLabelID: running with query %@", buf, 0xCu);
        }
      }

      memset(v46, 0, sizeof(v46));
      memset(buf, 0, sizeof(buf));
      IMDSqlOperationInitWithSharedCSDBDatabase(buf);
      _IMDSqlOperationBeginQuery(buf, v20);
      IMDSqlStatementBindTextFromArrayOfCFStrings(v46, a1);
      IMDSqlStatementBindTextFromCFString(v46, *MEMORY[0x1E69A7AE0]);
      IMDSqlStatementBindTextFromArrayOfCFStrings(v46, a2);
      if (IMDSqlOperationHasRows(buf))
      {
        Row = IMDSqlStatementGetRow(v46);
        v24 = Row;
        if (Row)
        {
          if (objc_msgSend_objectForKeyedSubscript_(Row, v23, @"last_addressed_sim_id"))
          {
            v26 = v41[3];
            v27 = objc_msgSend_objectForKeyedSubscript_(v24, v25, @"last_addressed_sim_id");
            CFDictionarySetValue(v26, @"labelID", v27);
            if (objc_msgSend_objectForKeyedSubscript_(v24, v28, @"max(cm.message_date)"))
            {
              v30 = v41[3];
              v31 = objc_msgSend_objectForKeyedSubscript_(v24, v29, @"max(cm.message_date)");
              CFDictionarySetValue(v30, @"date", v31);
            }
          }
        }

        if (IMOSLoggingEnabled())
        {
          v32 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v33 = v41[3];
            *v44 = 138412290;
            *&v44[4] = v33;
            _os_log_impl(&dword_1B7AD5000, v32, OS_LOG_TYPE_INFO, "GetMessageDateAndLastAddressedLabelID: found results from db %@", v44, 0xCu);
          }
        }
      }

      IMDSqlOperationFinishQuery(buf);
      *v44 = 0;
      IMDSqlOperationRelease(buf, v44);
      if (*v44)
      {
        v34 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CEDD90(v44);
        }
      }
    }

    else
    {
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = sub_1B7B28134;
      v39[3] = &unk_1E7CB6838;
      v39[4] = &v40;
      __syncXPCIMDChatGetMessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs_IPCAction(v39, a1, a2);
    }

    v36 = v41[3];
    _Block_object_dispose(&v40, 8);
  }

  else
  {
    v35 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEDE00();
    }

    v36 = 0;
  }

  v37 = *MEMORY[0x1E69E9840];
  return v36;
}

void sub_1B7B28134(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "dictionary_result");
  if (value)
  {
    v4 = value;
    v5 = IMGetXPCStringFromDictionary();
    int64 = xpc_dictionary_get_int64(v4, "date");
    if (v5)
    {
      CFDictionarySetValue(*(*(*(a1 + 32) + 8) + 24), @"labelID", v5);
    }

    if (int64)
    {
      v8 = *(*(*(a1 + 32) + 8) + 24);
      v9 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v6, int64);

      CFDictionarySetValue(v8, @"date", v9);
    }
  }
}

__CFArray *IMDChatGetChatsThatContainRecipient(uint64_t a1)
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x3052000000;
    v42 = sub_1B7AE1924;
    v43 = sub_1B7AE248C;
    v44 = objc_msgSend_array(MEMORY[0x1E695DEC8], v3, v4);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = sub_1B7B286E8;
    v38[3] = &unk_1E7CB73B8;
    v38[5] = &v39;
    v38[6] = @"SELECT guid,display_Name,chat_id from chat c INNER JOIN chat_handle_join ch ON c.ROWID = ch.chat_id INNER JOIN handle h on h.ROWID = ch.handle_id WHERE c.state = 3 AND h.id = ?";
    v38[4] = a1;
    IMDRunSqlOperation(v38);
    v7 = 0;
    v8 = *MEMORY[0x1E695E480];
    while (v7 < objc_msgSend_count(v40[5], v5, v6))
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = objc_msgSend_objectAtIndexedSubscript_(v40[5], v9, v7);
      v13 = objc_msgSend_valueForKey_(v11, v12, @"chat_id");
      v15 = objc_msgSend_stringWithFormat_(v10, v14, @"%@", v13);
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = sub_1B7B28788;
      v37[3] = &unk_1E7CB6F30;
      v37[4] = v15;
      v37[5] = &v45;
      _IMDPerformLockedStatementBlockWithQuery(@"SELECT handle_id FROM chat_handle_join WHERE chat_id = ?", v37);
      v16 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v18 = objc_msgSend_objectAtIndexedSubscript_(v40[5], v17, v7);
      v21 = objc_msgSend_valueForKey_(v18, v19, @"guid");
      if (v21)
      {
        CFDictionarySetValue(v16, @"chatGUID", v21);
      }

      v22 = objc_msgSend_objectAtIndexedSubscript_(v40[5], v20, v7);
      v24 = objc_msgSend_valueForKey_(v22, v23, @"display_name");
      if (v24)
      {
        CFDictionarySetValue(v16, @"displayName", v24);
      }

      v25 = v46[3];
      if (v25)
      {
        Count = CFArrayGetCount(v25);
        v27 = CFArrayCreateMutable(v8, Count, MEMORY[0x1E695E9C0]);
        if (v27)
        {
          if (Count >= 1)
          {
            for (i = 0; i != Count; ++i)
            {
              CFArrayGetValueAtIndex(v46[3], i);
              ID = CSDBRecordGetID();
              v30 = IMDHandleRecordCreateFromRecordIDUnlocked(v8, ID);
              CFArrayAppendValue(v27, v30);
              if (v30)
              {
                CFRelease(v30);
              }
            }
          }

          CFDictionarySetValue(v16, @"handles", v27);
          CFRelease(v27);
        }
      }

      else if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v31, OS_LOG_TYPE_INFO, "Handle records from kIMDChatTableSelectHandleIDFromChatID query is empty.", buf, 2u);
        }
      }

      v32 = v46[3];
      if (v32)
      {
        CFRelease(v32);
        v46[3] = 0;
      }

      CFArrayAppendValue(Mutable, v16);
      if (v16)
      {
        CFRelease(v16);
      }

      ++v7;
    }

    _Block_object_dispose(&v39, 8);
    v33 = &v45;
  }

  else
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = sub_1B7B287EC;
    v35[3] = &unk_1E7CB6838;
    v35[4] = &v39;
    __syncXPCIMDChatGetChatsThatContainRecipient_IPCAction(v35, a1);
    Mutable = v40[3];
    v33 = &v39;
  }

  _Block_object_dispose(v33, 8);
  return Mutable;
}

sqlite3_stmt **sub_1B7B286E8(void *a1, sqlite3_stmt **a2)
{
  v4 = a1[6];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7B2877C;
  v6[3] = &unk_1E7CB6FD0;
  v6[4] = a1[4];
  v6[5] = a2;
  result = _IMDSqlOperationGetRowsWithBindingBlock(a2, v4, v6);
  *(*(a1[5] + 8) + 40) = result;
  return result;
}

uint64_t sub_1B7B28788(uint64_t a1)
{
  v2 = *(a1 + 32);
  CSDBSqliteBindTextFromCFString();
  result = CSDBRecordStoreProcessStatement();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1B7B287EC(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "array_result");
  if (value)
  {
    v4 = value;
    count = xpc_array_get_count(value);
    if (count)
    {
      v8 = count;
      for (i = 0; i != v8; ++i)
      {
        v10 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v6, v7);
        v11 = xpc_array_get_value(v4, i);
        if (v11)
        {
          v12 = v11;
          v13 = IMGetXPCStringFromDictionary();
          if (v13)
          {
            CFDictionarySetValue(v10, @"chatGUID", v13);
          }

          v14 = IMGetXPCStringFromDictionary();
          if (v14)
          {
            CFDictionarySetValue(v10, @"displayName", v14);
          }

          v15 = xpc_dictionary_get_value(v12, "handles");
          if (v15)
          {
            v16 = v15;
            Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
            if (xpc_array_get_count(v16))
            {
              v18 = 0;
              do
              {
                v19 = xpc_array_get_value(v16, v18);
                v20 = _IMDCopyIMDHandleRecordFromXPCObjectClient(v19);
                if (v20)
                {
                  v21 = v20;
                  CFArrayAppendValue(Mutable, v20);
                  CFRelease(v21);
                }

                ++v18;
              }

              while (v18 < xpc_array_get_count(v16));
            }

            if (Mutable)
            {
              CFDictionarySetValue(v10, @"handles", Mutable);
              CFRelease(Mutable);
            }
          }

          CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v10);
        }
      }
    }
  }
}

uint64_t IMDChatGetMessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles(void *a1, void *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      buf[0] = 138412546;
      *&buf[1] = a1;
      LOWORD(buf[3]) = 2112;
      *(&buf[3] + 2) = a2;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Trying to find last address handles/date from chatIds %@ and handles %@", buf, 0x16u);
    }
  }

  v7 = objc_msgSend_count(a1, v4, v5);
  v10 = objc_msgSend_count(a2, v8, v9);
  if (v7 && (v12 = v10) != 0)
  {
    v14 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AD60], v11, &stru_1F2FA9728);
    if (v7 >= 2)
    {
      v15 = v7 - 1;
      do
      {
        objc_msgSend_appendString_(v14, v13, @"?, ");
        --v15;
      }

      while (v15);
    }

    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AD60], v13, &stru_1F2FA9728);
    if (v12 >= 2)
    {
      v18 = v12 - 1;
      do
      {
        objc_msgSend_appendString_(v17, v16, @"?, ");
        --v18;
      }

      while (v18);
    }

    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v20 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v19, @"select max(cm.message_date),last_addressed_handle from (select * from chat where chat_identifier in (%@?) AND style=45 and service_name=? and last_addressed_handle in (%@?)) c INNER JOIN chat_message_join cm ON c.ROWID=cm.chat_id;", v14, v17);
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          buf[0] = 138412290;
          *&buf[1] = v20;
          _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "GetMessageDateAndLastAddressedHandle: running with query %@", buf, 0xCu);
        }
      }

      memset(v46, 0, sizeof(v46));
      memset(buf, 0, sizeof(buf));
      IMDSqlOperationInitWithSharedCSDBDatabase(buf);
      _IMDSqlOperationBeginQuery(buf, v20);
      IMDSqlStatementBindTextFromArrayOfCFStrings(v46, a1);
      IMDSqlStatementBindTextFromCFString(v46, *MEMORY[0x1E69A7AE0]);
      IMDSqlStatementBindTextFromArrayOfCFStrings(v46, a2);
      if (IMDSqlOperationHasRows(buf))
      {
        Row = IMDSqlStatementGetRow(v46);
        v24 = Row;
        if (Row)
        {
          if (objc_msgSend_objectForKeyedSubscript_(Row, v23, @"last_addressed_handle"))
          {
            v26 = v41[3];
            v27 = objc_msgSend_objectForKeyedSubscript_(v24, v25, @"last_addressed_handle");
            CFDictionarySetValue(v26, @"handle", v27);
            if (objc_msgSend_objectForKeyedSubscript_(v24, v28, @"max(cm.message_date)"))
            {
              v30 = v41[3];
              v31 = objc_msgSend_objectForKeyedSubscript_(v24, v29, @"max(cm.message_date)");
              CFDictionarySetValue(v30, @"date", v31);
            }
          }
        }

        if (IMOSLoggingEnabled())
        {
          v32 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v33 = v41[3];
            *v44 = 138412290;
            *&v44[4] = v33;
            _os_log_impl(&dword_1B7AD5000, v32, OS_LOG_TYPE_INFO, "GetMessageDateAndLastAddressedHandle: found results from db %@", v44, 0xCu);
          }
        }
      }

      IMDSqlOperationFinishQuery(buf);
      *v44 = 0;
      IMDSqlOperationRelease(buf, v44);
      if (*v44)
      {
        v34 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CEDE40(v44);
        }
      }
    }

    else
    {
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = sub_1B7B28E7C;
      v39[3] = &unk_1E7CB6838;
      v39[4] = &v40;
      __syncXPCIMDChatGetMessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles_IPCAction(v39, a1, a2);
    }

    v36 = v41[3];
    _Block_object_dispose(&v40, 8);
  }

  else
  {
    v35 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEDEB0();
    }

    v36 = 0;
  }

  v37 = *MEMORY[0x1E69E9840];
  return v36;
}

void sub_1B7B28E7C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "dictionary_result");
  if (value)
  {
    v4 = value;
    v5 = IMGetXPCStringFromDictionary();
    int64 = xpc_dictionary_get_int64(v4, "date");
    if (v5)
    {
      CFDictionarySetValue(*(*(*(a1 + 32) + 8) + 24), @"handle", v5);
    }

    if (int64)
    {
      v8 = *(*(*(a1 + 32) + 8) + 24);
      v9 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v6, int64);

      CFDictionarySetValue(v8, @"date", v9);
    }
  }
}

id IMDChatRowIDsMostRecentByLastMessageWithLimit(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    memset(v25, 0, sizeof(v25));
    memset(v24, 0, sizeof(v24));
    IMDSqlOperationInitWithSharedCSDBDatabase(v24);
    MessageDate = objc_msgSend_chatRowIDsSortedByLastMessageDate(IMDChatQueryStrings, v3, v4);
    _IMDSqlOperationBeginQuery(v24, MessageDate);
    if (IMDSqlOperationHasRows(v24))
    {
      v6 = 0;
      v7 = MEMORY[0x1E695E118];
      do
      {
        Row = IMDSqlStatementGetRow(v25);
        v10 = Row;
        if (Row && objc_msgSend_objectForKeyedSubscript_(Row, v9, @"chat_id"))
        {
          v11 = objc_alloc(MEMORY[0x1E695DF20]);
          v14 = objc_msgSend_objectForKeyedSubscript_(v10, v12, @"max(message_date)");
          v15 = MEMORY[0x1E695E110];
          if (v6 < a1)
          {
            v15 = v7;
          }

          v16 = objc_msgSend_initWithObjectsAndKeys_(v11, v13, v14, @"d", v15, @"l", 0);
          v18 = objc_msgSend_objectForKeyedSubscript_(v10, v17, @"chat_id");
          objc_msgSend_setObject_forKey_(v2, v19, v16, v18);
        }

        ++v6;
      }

      while (IMDSqlOperationHasRows(v24));
    }

    IMDSqlOperationFinishQuery(v24);
    v23 = 0;
    IMDSqlOperationRelease(v24, &v23);
    if (v23)
    {
      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v27 = v23;
          _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_INFO, "Unable to find most recent ChatRow IDs from chat_message_join error: %@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v2 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v2;
}

void IMDChatRecordCopyAllActiveChatsProgressivelyWithLimitAndBlock(int64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = IMDIsRunningInDatabaseServerProcess();
  if (a2 && (v4 & 1) == 0)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1B7B29308;
    v8[3] = &unk_1E7CB74A8;
    v8[4] = a2;
    v8[5] = &v9;
    __syncXPCIMDChatRecordCopyAllActiveChatsProgressivelyWithLimit_IPCAction(v8, a1);
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = v10[3];
        *buf = 134217984;
        v14 = v6;
        _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Copying active chats progressively: total number copied was %ld", buf, 0xCu);
      }
    }

    _Block_object_dispose(&v9, 8);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7B29308(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "array_result");
  if (value)
  {
    v4 = value;
    count = xpc_array_get_count(value);
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], count, MEMORY[0x1E695E9C0]);
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7B294B4;
    applier[3] = &unk_1E7CB7480;
    applier[4] = *(a1 + 40);
    applier[5] = Mutable;
    xpc_array_apply(v4, applier);
    v7 = CFArrayGetCount(Mutable);
    if (v7 >= 1)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        v10 = *(a1 + 32);
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, i);
        (*(v10 + 16))(v10, ValueAtIndex);
      }
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "Received empty batch in IMDChatRecordCopyAllActiveChatsProgressivelyWithLimitAndBlock", v13, 2u);
    }
  }
}

uint64_t sub_1B7B294B4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_autoreleasePoolPush();
  v6 = _IMDCopyIMDChatRecordFromXPCObjectClient(a3);
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 40);
    ++*(*(*(a1 + 32) + 8) + 24);
    CFArrayAppendValue(v8, v7);
    CFRelease(v7);
  }

  objc_autoreleasePoolPop(v5);
  return 1;
}

void IMDChatRecordCopyAllActiveChatsWithLimitAndBlock(int64_t a1, uint64_t a2)
{
  if ((IMDIsRunningInDatabaseServerProcess() & 1) == 0)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1B7B296BC;
    v9[3] = &unk_1E7CB74D0;
    v9[4] = &v10;
    v9[5] = &v14;
    __syncXPCIMDChatRecordCopyAllActiveChatsWithLimit_IPCAction(v9, a1);
    if (v11[3])
    {
      v4 = 0;
      while (1)
      {
        v5 = objc_autoreleasePoolPush();
        v6 = *(v15[3] + 8 * v4);
        v7 = _IMDCopyIMDChatRecordFromXPCObjectClient(v6);
        xpc_release(v6);
        if (a2)
        {
          if (v7)
          {
            break;
          }
        }

        if (v7)
        {
          goto LABEL_8;
        }

LABEL_9:
        objc_autoreleasePoolPop(v5);
        if (++v4 >= v11[3])
        {
          goto LABEL_10;
        }
      }

      (*(a2 + 16))(a2, v7);
LABEL_8:
      CFRelease(v7);
      goto LABEL_9;
    }

LABEL_10:
    v8 = v15[3];
    if (v8)
    {
      free(v8);
    }

    _Block_object_dispose(&v10, 8);
    _Block_object_dispose(&v14, 8);
  }
}

void sub_1B7B29690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

xpc_object_t sub_1B7B296BC(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    v4 = result;
    *(*(*(a1 + 32) + 8) + 24) = xpc_array_get_count(result);
    *(*(*(a1 + 40) + 8) + 24) = malloc_type_malloc(8 * *(*(*(a1 + 32) + 8) + 24), 0x80040B8603338uLL);
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7B29798;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 40);
    return xpc_array_apply(v4, applier);
  }

  return result;
}

uint64_t sub_1B7B29798(uint64_t a1, uint64_t a2, xpc_object_t object)
{
  xpc_retain(object);
  *(*(*(*(a1 + 32) + 8) + 24) + 8 * a2) = object;
  return 1;
}

void *sub_1B7B297E4(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDChatRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDChatRecordCopyChatForGUIDWithDisplayNameHiddenIfUnknown(const __CFString *a1, char a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  if (!CFStringGetLength(a1))
  {
    return 0;
  }

  v6 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v4, v5);
  if (objc_msgSend_isOneChatEnabled(v6, v7, v8))
  {
    v3 = IMAnyServiceGUIDFromLegacyChatGUID();
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v11 = objc_msgSend_copyChatForGUIDQuery(IMDChatQueryStrings, v9, v10);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1B7B299A4;
    v15[3] = &unk_1E7CB74F8;
    v15[4] = &v17;
    v15[5] = v3;
    v16 = a2;
    _IMDPerformLockedStatementBlockWithQuery(v11, v15);
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1B7B29AF8;
    v14[3] = &unk_1E7CB6838;
    v14[4] = &v17;
    __syncXPCIMDChatRecordCopyChatForGUID_IPCAction(v14, v3);
  }

  v12 = v18[3];
  _Block_object_dispose(&v17, 8);
  return v12;
}

void sub_1B7B299A4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = CSDBSqliteBindTextFromCFString();
  sub_1B7AE0D64(v3, v4, v5);
  v6 = CSDBRecordStoreProcessStatement();
  if (v6)
  {
    v7 = v6;
    if (CFArrayGetCount(v6))
    {
      CFArrayGetValueAtIndex(v7, 0);
      ID = CSDBRecordGetID();
      v9 = *MEMORY[0x1E695E480];
      *(*(*(a1 + 32) + 8) + 24) = IMDChatRecordCreateFromRecordIDUnlocked(*MEMORY[0x1E695E480], ID);
      if (*(a1 + 48) == 1)
      {
        v10 = IMDChatRecordCopyHandles(*(*(*(a1 + 32) + 8) + 24));
        Property = j__CSDBRecordGetProperty();
        shouldDisplayGroupNameAndPhotoWith_handles = objc_msgSend_shouldDisplayGroupNameAndPhotoWith_handles_(_TtC14IMDPersistence37IMDChatQueriesGroupNameAndPhotoHelper, v12, Property, v10);

        if ((shouldDisplayGroupNameAndPhotoWith_handles & 1) == 0)
        {
          j__CSDBRecordSetProperty();
          *(*(*(a1 + 32) + 8) + 24) = IMDChatRecordCreateFromRecordIDUnlocked(v9, ID);
        }
      }
    }

    CFRelease(v7);
  }
}

void *sub_1B7B29AF8(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDChatRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

int64_t IMDChatRecordCopyChatForMessageID(int64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = sub_1B7B29C74;
      v4[3] = &unk_1E7CB7520;
      v4[4] = &v5;
      v4[5] = v1;
      _IMDPerformLockedStatementBlockWithQuery(@"SELECT ROWID, guid, style, state, account_id, properties, chat_identifier, service_name, room_name, account_login, is_archived, last_addressed_handle, display_name, group_id, is_filtered, successful_query, engram_id, server_change_token, ck_sync_state, original_group_id, last_read_message_timestamp, cloudkit_record_id, last_addressed_sim_id, is_blackholed, syndication_date, syndication_type, is_recovered, is_deleting_incoming_messages FROM chat WHERE ROWID = (SELECT chat_id from chat_message_join WHERE message_id = ?)", v4);
      CFRelease(@"SELECT ROWID, guid, style, state, account_id, properties, chat_identifier, service_name, room_name, account_login, is_archived, last_addressed_handle, display_name, group_id, is_filtered, successful_query, engram_id, server_change_token, ck_sync_state, original_group_id, last_read_message_timestamp, cloudkit_record_id, last_addressed_sim_id, is_blackholed, syndication_date, syndication_type, is_recovered, is_deleting_incoming_messages FROM chat WHERE ROWID = (SELECT chat_id from chat_message_join WHERE message_id = ?)");
    }

    else
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = sub_1B7B29D30;
      v3[3] = &unk_1E7CB6838;
      v3[4] = &v5;
      __syncXPCIMDChatRecordCopyChatForMessageID_IPCAction(v3, v1);
    }

    v1 = v6[3];
    _Block_object_dispose(&v5, 8);
  }

  return v1;
}

void sub_1B7B29C74(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = CSDBSqliteBindInt64();
  sub_1B7AE0D64(v3, v4, v5);
  v6 = CSDBRecordStoreProcessStatement();
  if (v6)
  {
    v7 = v6;
    if (CFArrayGetCount(v6))
    {
      CFArrayGetValueAtIndex(v7, 0);
      ID = CSDBRecordGetID();
      *(*(*(a1 + 32) + 8) + 24) = IMDChatRecordCreateFromRecordIDUnlocked(*MEMORY[0x1E695E480], ID);
    }

    CFRelease(v7);
  }
}

void *sub_1B7B29D30(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDChatRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

CFStringRef IMDChatRecordCopyChatForMessageGUID(CFStringRef theString)
{
  v1 = theString;
  if (theString)
  {
    if (CFStringGetLength(theString))
    {
      v5 = 0;
      v6 = &v5;
      v7 = 0x2020000000;
      v8 = 0;
      if (IMDIsRunningInDatabaseServerProcess())
      {
        v4[0] = MEMORY[0x1E69E9820];
        v4[1] = 3221225472;
        v4[2] = sub_1B7B29EB4;
        v4[3] = &unk_1E7CB7520;
        v4[4] = &v5;
        v4[5] = v1;
        _IMDPerformLockedStatementBlockWithQuery(@"SELECT c.rowid FROM chat c INNER JOIN chat_message_join j   ON c.rowid = j.chat_id INNER JOIN message m   ON m.rowid = j.message_id WHERE m.guid = ?;", v4);
      }

      else
      {
        v3[0] = MEMORY[0x1E69E9820];
        v3[1] = 3221225472;
        v3[2] = sub_1B7B29F34;
        v3[3] = &unk_1E7CB6838;
        v3[4] = &v5;
        __syncXPCIMDChatRecordCopyChatForMessageGUID_IPCAction(v3, v1);
      }

      v1 = v6[3];
      _Block_object_dispose(&v5, 8);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t sub_1B7B29EB4(uint64_t a1)
{
  v2 = *(a1 + 40);
  CSDBSqliteBindTextFromCFString();
  result = CSDBSqliteStep();
  if (result)
  {
    v4 = *MEMORY[0x1E695E480];
    do
    {
      v5 = CSDBSqliteStatementInteger64ResultColumn();
      *(*(*(a1 + 32) + 8) + 24) = IMDChatRecordCreateFromRecordIDUnlocked(v4, v5);
      result = CSDBSqliteStep();
    }

    while ((result & 1) != 0);
  }

  return result;
}

void *sub_1B7B29F34(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDChatRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

CFStringRef IMDChatRecordCopyChatForGUIDUnlocked(CFStringRef theString)
{
  v1 = theString;
  if (theString)
  {
    if (CFStringGetLength(theString))
    {
      v7 = 0;
      v8 = &v7;
      v9 = 0x2020000000;
      v10 = 0;
      v4 = objc_msgSend_copyChatForGUIDUnlockedQuery(IMDChatQueryStrings, v2, v3);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = sub_1B7B2A060;
      v6[3] = &unk_1E7CB7520;
      v6[4] = &v7;
      v6[5] = v1;
      _IMDPerformLockedStatementBlockWithQuery(v4, v6);

      v1 = v8[3];
      _Block_object_dispose(&v7, 8);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

void sub_1B7B2A048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B2A060(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = CSDBSqliteBindTextFromCFString();
  sub_1B7AE0D64(v3, v4, v5);
  v6 = CSDBRecordStoreProcessStatement();
  if (v6)
  {
    v7 = v6;
    if (CFArrayGetCount(v6))
    {
      CFArrayGetValueAtIndex(v7, 0);
      ID = CSDBRecordGetID();
      *(*(*(a1 + 32) + 8) + 24) = IMDChatRecordCreateFromRecordIDUnlocked(*MEMORY[0x1E695E480], ID);
    }

    v9 = *MEMORY[0x1E69E9840];

    CFRelease(v7);
  }

  else
  {
    v10 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 40);
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Did not get results for chat guid %@", &v13, 0xCu);
    }

    v12 = *MEMORY[0x1E69E9840];
  }
}

uint64_t IMDChatRecordCopyChatsWithHandleOnService(const __CFString *a1, const __CFString *a2)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (!a1 || !CFStringGetLength(a1))
  {
    v10 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v11 = "No handle provided to IMDChatRecordCopyChatsWithHandleOnService";
LABEL_14:
      _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, v11, buf, 2u);
    }

LABEL_15:
    v12 = 0;
    goto LABEL_16;
  }

  if (!a2 || !CFStringGetLength(a2))
  {
    v10 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v11 = "No service provided to IMDChatRecordCopyChatsWithHandleOnService";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    v6 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v4, v5);
    if (objc_msgSend_isOneChatEnabled(v6, v7, v8))
    {
      v9 = @"SELECT ROWID, guid, style, state, account_id, properties, chat_identifier, service_name, room_name, account_login, is_archived, last_addressed_handle, display_name, group_id, is_filtered, successful_query, engram_id, server_change_token, ck_sync_state, original_group_id, last_read_message_timestamp, cloudkit_record_id, last_addressed_sim_id, is_blackholed, syndication_date, syndication_type, is_recovered, is_deleting_incoming_messages FROM chat WHERE    chat_identifier = ? ORDER BY chat.ROWID ASC;";
    }

    else
    {
      v9 = @"SELECT ROWID, guid, style, state, account_id, properties, chat_identifier, service_name, room_name, account_login, is_archived, last_addressed_handle, display_name, group_id, is_filtered, successful_query, engram_id, server_change_token, ck_sync_state, original_group_id, last_read_message_timestamp, cloudkit_record_id, last_addressed_sim_id, is_blackholed, syndication_date, syndication_type, is_recovered, is_deleting_incoming_messages FROM chat WHERE    chat_identifier = ? AND    service_name = ? ORDER BY chat.ROWID ASC;";
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1B7B2A3B0;
    v15[3] = &unk_1E7CB7548;
    v15[5] = a1;
    v15[6] = a2;
    v15[4] = &v17;
    _IMDPerformLockedStatementBlockWithQuery(v9, v15);
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1B7B2A464;
    v14[3] = &unk_1E7CB6838;
    v14[4] = &v17;
    __syncXPCIMDChatRecordCopyChatsWithHandleOnService_IPCAction(v14, a1, a2);
  }

  v12 = v18[3];
LABEL_16:
  _Block_object_dispose(&v17, 8);
  return v12;
}

void sub_1B7B2A3B0(void *a1)
{
  v2 = a1[5];
  CSDBSqliteBindTextFromCFString();
  v5 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v3, v4);
  isOneChatEnabled = objc_msgSend_isOneChatEnabled(v5, v6, v7);
  if ((isOneChatEnabled & 1) == 0)
  {
    v11 = a1[6];
    isOneChatEnabled = CSDBSqliteBindTextFromCFString();
  }

  sub_1B7AE0D64(isOneChatEnabled, v9, v10);
  v12 = CSDBRecordStoreProcessStatement();
  *(*(a1[4] + 8) + 24) = _IMDChatRecordCopyChatsFromRecords(v12);
  if (v12)
  {

    CFRelease(v12);
  }
}

xpc_object_t sub_1B7B2A464(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    result = _IMDChatRecordCopyChatsFromXPCArray(result);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t IMDChatRecordCopyChatsWithIdentifierOnService(const __CFString *a1, const __CFString *a2)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (!a1 || !CFStringGetLength(a1))
  {
    v10 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v11 = "No identifier provided to IMDChatRecordCopyChatsWithIdentifierOnService";
LABEL_14:
      _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, v11, buf, 2u);
    }

LABEL_15:
    v12 = 0;
    goto LABEL_16;
  }

  if (!a2 || !CFStringGetLength(a2))
  {
    v10 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v11 = "No service provided to IMDChatRecordCopyChatsWithIdentifierOnService";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    v6 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v4, v5);
    if (objc_msgSend_isOneChatEnabled(v6, v7, v8))
    {
      v9 = @"SELECT ROWID, guid, style, state, account_id, properties, chat_identifier, service_name, room_name, account_login, is_archived, last_addressed_handle, display_name, group_id, is_filtered, successful_query, engram_id, server_change_token, ck_sync_state, original_group_id, last_read_message_timestamp, cloudkit_record_id, last_addressed_sim_id, is_blackholed, syndication_date, syndication_type, is_recovered, is_deleting_incoming_messages FROM chat WHERE    chat_identifier = ? ORDER BY chat.ROWID ASC;";
    }

    else
    {
      v9 = @"SELECT ROWID, guid, style, state, account_id, properties, chat_identifier, service_name, room_name, account_login, is_archived, last_addressed_handle, display_name, group_id, is_filtered, successful_query, engram_id, server_change_token, ck_sync_state, original_group_id, last_read_message_timestamp, cloudkit_record_id, last_addressed_sim_id, is_blackholed, syndication_date, syndication_type, is_recovered, is_deleting_incoming_messages FROM chat WHERE    chat_identifier = ? AND    service_name = ? ORDER BY chat.ROWID ASC;";
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1B7B2A6A4;
    v15[3] = &unk_1E7CB7548;
    v15[5] = a1;
    v15[6] = a2;
    v15[4] = &v17;
    _IMDPerformLockedStatementBlockWithQuery(v9, v15);
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1B7B2A758;
    v14[3] = &unk_1E7CB6838;
    v14[4] = &v17;
    __syncXPCIMDChatRecordCopyChatsWithIdentifierOnService_IPCAction(v14, a1, a2);
  }

  v12 = v18[3];
LABEL_16:
  _Block_object_dispose(&v17, 8);
  return v12;
}

void sub_1B7B2A6A4(void *a1)
{
  v2 = a1[5];
  CSDBSqliteBindTextFromCFString();
  v5 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v3, v4);
  isOneChatEnabled = objc_msgSend_isOneChatEnabled(v5, v6, v7);
  if ((isOneChatEnabled & 1) == 0)
  {
    v11 = a1[6];
    isOneChatEnabled = CSDBSqliteBindTextFromCFString();
  }

  sub_1B7AE0D64(isOneChatEnabled, v9, v10);
  v12 = CSDBRecordStoreProcessStatement();
  *(*(a1[4] + 8) + 24) = _IMDChatRecordCopyChatsFromRecords(v12);
  if (v12)
  {

    CFRelease(v12);
  }
}

xpc_object_t sub_1B7B2A758(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    result = _IMDChatRecordCopyChatsFromXPCArray(result);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t IMDChatRecordCopyChatsWithRoomnameOnService(const __CFString *a1, const __CFString *a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (!a1 || !CFStringGetLength(a1))
  {
    v4 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v5 = "No roomname provided to IMDChatRecordCopyChatsWithRoomnameOnService";
LABEL_11:
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, v5, buf, 2u);
    }

LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

  if (!a2 || !CFStringGetLength(a2))
  {
    v4 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v5 = "No service provided to IMDChatRecordCopyChatsWithRoomnameOnService";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1B7B2A978;
    v9[3] = &unk_1E7CB7548;
    v9[5] = a1;
    v9[6] = a2;
    v9[4] = &v11;
    _IMDPerformLockedStatementBlockWithQuery(@"SELECT ROWID, guid, style, state, account_id, properties, chat_identifier, service_name, room_name, account_login, is_archived, last_addressed_handle, display_name, group_id, is_filtered, successful_query, engram_id, server_change_token, ck_sync_state, original_group_id, last_read_message_timestamp, cloudkit_record_id, last_addressed_sim_id, is_blackholed, syndication_date, syndication_type, is_recovered, is_deleting_incoming_messages FROM chat WHERE    room_name = ? AND    service_name = ? ORDER BY chat.ROWID ASC;", v9);
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1B7B2AA18;
    v8[3] = &unk_1E7CB6838;
    v8[4] = &v11;
    __syncXPCIMDChatRecordCopyChatsWithRoomnameOnService_IPCAction(v8, a1, a2);
  }

  v6 = v12[3];
LABEL_13:
  _Block_object_dispose(&v11, 8);
  return v6;
}

void sub_1B7B2A978(void *a1)
{
  v2 = a1[5];
  CSDBSqliteBindTextFromCFString();
  v3 = a1[6];
  v4 = CSDBSqliteBindTextFromCFString();
  sub_1B7AE0D64(v4, v5, v6);
  v7 = CSDBRecordStoreProcessStatement();
  *(*(a1[4] + 8) + 24) = _IMDChatRecordCopyChatsFromRecords(v7);
  if (v7)
  {

    CFRelease(v7);
  }
}

xpc_object_t sub_1B7B2AA18(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    result = _IMDChatRecordCopyChatsFromXPCArray(result);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t IMDChatRecordCopyChatsWithGroupID(const __CFString *a1)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  if (a1 && CFStringGetLength(a1))
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v2, v3);
      if (objc_msgSend_isMissingMessagesEnabled(v4, v5, v6))
      {
        v9 = objc_msgSend_copyChatsWithIdentifier(IMDChatQueryStrings, v7, v8);
      }

      else
      {
        v9 = @"SELECT ROWID, guid, style, state, account_id, properties, chat_identifier, service_name, room_name, account_login, is_archived, last_addressed_handle, display_name, group_id, is_filtered, successful_query, engram_id, server_change_token, ck_sync_state, original_group_id, last_read_message_timestamp, cloudkit_record_id, last_addressed_sim_id, is_blackholed, syndication_date, syndication_type, is_recovered, is_deleting_incoming_messages FROM chat WHERE    group_id = ? ORDER BY chat.ROWID ASC;";
      }

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_1B7B2AC38;
      v19[3] = &unk_1E7CB7520;
      v19[4] = &v21;
      v19[5] = a1;
      _IMDPerformLockedStatementBlockWithQuery(v9, v19);
      v14 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v12, v13);
      if (objc_msgSend_isMissingMessagesEnabled(v14, v15, v16))
      {
        CFRelease(v9);
      }
    }

    else
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = sub_1B7B2ACCC;
      v18[3] = &unk_1E7CB6838;
      v18[4] = &v21;
      __syncXPCIMDChatRecordCopyChatsWithGroupID_IPCAction(v18, a1);
    }

    v11 = v22[3];
  }

  else
  {
    v10 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "No group ID provided to IMDChatRecordCopyChatsWithGroupID", buf, 2u);
    }

    v11 = 0;
  }

  _Block_object_dispose(&v21, 8);
  return v11;
}

void sub_1B7B2AC38(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = CSDBSqliteBindTextFromCFString();
  sub_1B7AE0D64(v3, v4, v5);
  v6 = CSDBRecordStoreProcessStatement();
  *(*(*(a1 + 32) + 8) + 24) = _IMDChatRecordCopyChatsFromRecords(v6);
  if (v6)
  {

    CFRelease(v6);
  }
}

xpc_object_t sub_1B7B2ACCC(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    result = _IMDChatRecordCopyChatsFromXPCArray(result);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t IMDChatRecordCopyNewestChatForGroupIDOnService(const __CFString *a1, const __CFString *a2, int a3)
{
  if (!a1 || !CFStringGetLength(a1))
  {
    v20 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v21 = "No roomname provided to IMDChatRecordCopyNewestChatForGroupIDOnService";
LABEL_16:
      _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_INFO, v21, buf, 2u);
    }

    return 0;
  }

  if (!a2 || !CFStringGetLength(a2))
  {
    v20 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v21 = "No service provided to IMDChatRecordCopyNewestChatForGroupIDOnService";
      goto LABEL_16;
    }

    return 0;
  }

  *buf = 0;
  v32 = buf;
  v33 = 0x2020000000;
  v34 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    if (a3)
    {
      v8 = @"SELECT ROWID, guid, style, state, account_id, properties, chat_identifier, service_name, room_name, account_login, is_archived, last_addressed_handle, display_name, group_id, is_filtered, successful_query, engram_id, server_change_token, ck_sync_state, original_group_id, last_read_message_timestamp, cloudkit_record_id, last_addressed_sim_id, is_blackholed, syndication_date, syndication_type, is_recovered, is_deleting_incoming_messages FROM chat LEFT OUTER JOIN chat_message_join on    chat_id == chat.rowid WHERE    original_group_id = ? AND    service_name = ? ORDER BY    chat_message_join.message_date DESC LIMIT    1;";
    }

    else
    {
      v8 = @"SELECT ROWID, guid, style, state, account_id, properties, chat_identifier, service_name, room_name, account_login, is_archived, last_addressed_handle, display_name, group_id, is_filtered, successful_query, engram_id, server_change_token, ck_sync_state, original_group_id, last_read_message_timestamp, cloudkit_record_id, last_addressed_sim_id, is_blackholed, syndication_date, syndication_type, is_recovered, is_deleting_incoming_messages FROM chat LEFT OUTER JOIN chat_message_join on    chat_id == chat.rowid WHERE    group_id = ? AND    service_name = ? ORDER BY    chat_message_join.message_date DESC LIMIT    1;";
    }

    v9 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v6, v7);
    if (objc_msgSend_isMissingMessagesEnabled(v9, v10, v11))
    {
      v14 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v12, v13);
      if (objc_msgSend_isOneChatEnabled(v14, v15, v16))
      {
        v19 = objc_msgSend_copyChatsWithIdentifier(IMDChatQueryStrings, v17, v18);
      }

      else
      {
        v19 = objc_msgSend_copyChatsWithIdentiferAndDomain(IMDChatQueryStrings, v17, v18);
      }

      v8 = v19;
    }

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = sub_1B7B2AF60;
    v30[3] = &unk_1E7CB7548;
    v30[5] = a1;
    v30[6] = a2;
    v30[4] = buf;
    _IMDPerformLockedStatementBlockWithQuery(v8, v30);
    v26 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v24, v25);
    if (objc_msgSend_isMissingMessagesEnabled(v26, v27, v28))
    {
      CFRelease(v8);
    }
  }

  else
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = sub_1B7B2B06C;
    v29[3] = &unk_1E7CB6838;
    v29[4] = buf;
    __syncXPCIMDChatRecordCopyNewestChatForGroupIDOnService_IPCAction(v29, a1, a2);
  }

  v22 = *(v32 + 3);
  _Block_object_dispose(buf, 8);
  return v22;
}

void sub_1B7B2AF60(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, a3);
  isMissingMessagesEnabled = objc_msgSend_isMissingMessagesEnabled(v4, v5, v6);
  v8 = a1[5];
  CSDBSqliteBindTextFromCFString();
  if (isMissingMessagesEnabled)
  {
    v11 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v9, v10);
    isOneChatEnabled = objc_msgSend_isOneChatEnabled(v11, v12, v13);
    if (isOneChatEnabled)
    {
      goto LABEL_6;
    }

    v17 = a1[6];
    IMChatLookupDomainForServiceName();
  }

  else
  {
    v18 = a1[6];
  }

  isOneChatEnabled = CSDBSqliteBindTextFromCFString();
LABEL_6:
  sub_1B7AE0D64(isOneChatEnabled, v15, v16);
  v19 = CSDBRecordStoreProcessStatement();
  if (v19)
  {
    v20 = v19;
    if (CFArrayGetCount(v19))
    {
      CFArrayGetValueAtIndex(v20, 0);
      ID = CSDBRecordGetID();
      *(*(a1[4] + 8) + 24) = IMDChatRecordCreateFromRecordIDUnlocked(*MEMORY[0x1E695E480], ID);
    }

    CFRelease(v20);
  }
}

void *sub_1B7B2B06C(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDChatRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void IMDChatRecordDeleteChatForGUID_Fast(void *a1, const char *a2, uint64_t a3)
{
  if (!a1 || !objc_msgSend_length(a1, a2, a3))
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEDEF0(v6, v4);
      if (!a1)
      {
        return;
      }
    }

    else if (!a1)
    {
      return;
    }
  }

  if (objc_msgSend_length(a1, v4, v5))
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = sub_1B7B2B174;
      v7[3] = &unk_1E7CB7570;
      v7[4] = a1;
      IMDRunSqlOperation(v7);
    }

    else
    {
      __syncXPCIMDChatRecordDeleteChatForGUID_IPCAction(0, a1);
    }
  }
}

void sub_1B7B2B174(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1B7B2B224;
  v4[3] = &unk_1E7CB6FD0;
  v4[4] = *(a1 + 32);
  v4[5] = a2;
  _IMDSqlOperationRunQuery(a2, @"DELETE FROM chat WHERE guid = ?;", v4, 0);
  if (!*(a2 + 168))
  {
    IMDCoreSpotlightDeleteChatGUID(*(a1 + 32), 1006);
    IMDCoreSpotlightScheduleUpdateForDeletedMessages(1006);
  }
}

void IMDChatRecordDeleteChatForGUID(__CFString *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1 || !CFStringGetLength(a1))
  {
    goto LABEL_19;
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    IMDCoreSpotlightDeleteChatGUID(a1, 1006);
    IMDCoreSpotlightScheduleUpdateForDeletedMessages(1006);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1B7B2B49C;
    v19[3] = &unk_1E7CB7590;
    v19[4] = a1;
    _IMDPerformLockedStatementBlockWithQuery(@"SELECT ROWID, guid, style, state, account_id, properties, chat_identifier, service_name, room_name, account_login, is_archived, last_addressed_handle, display_name, group_id, is_filtered, successful_query, engram_id, server_change_token, ck_sync_state, original_group_id, last_read_message_timestamp, cloudkit_record_id, last_addressed_sim_id, is_blackholed, syndication_date, syndication_type, is_recovered, is_deleting_incoming_messages FROM chat WHERE guid = ? ORDER BY chat.ROWID ASC;", v19);
    v2 = *MEMORY[0x1E69A7018];
    v3 = IMSharedHelperExternalLocationForFile();
    v6 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v4, v5, 0);
    if (objc_msgSend_fileExistsAtPath_(v6, v7, v3))
    {
      v10 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v8, v9);
      v12 = objc_msgSend_removeItemAtPath_error_(v10, v11, v3, &v18);
      v13 = IMOSLoggingEnabled();
      if (v12)
      {
        if (!v13)
        {
          goto LABEL_19;
        }

        v14 = OSLogHandleForIMFoundationCategory();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          goto LABEL_19;
        }

        *buf = 138412290;
        v21 = v3;
        v15 = "  => Successfully deleted item at path: %@ ";
      }

      else
      {
        if (!v13)
        {
          goto LABEL_19;
        }

        v14 = OSLogHandleForIMFoundationCategory();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          goto LABEL_19;
        }

        *buf = 138412290;
        v21 = v3;
        v15 = "  => failed to remove item at path: %@ ";
      }
    }

    else
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_19;
      }

      v14 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      *buf = 138412290;
      v21 = v3;
      v15 = "   => file doesn't exist at path: %@";
    }

    _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, v15, buf, 0xCu);
LABEL_19:
    v17 = *MEMORY[0x1E69E9840];
    return;
  }

  v16 = *MEMORY[0x1E69E9840];

  __syncXPCIMDChatRecordDeleteChatForGUID_IPCAction(0, a1);
}

void sub_1B7B2B47C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1B7B2B450);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1B7B2B49C(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = CSDBSqliteBindTextFromCFString();
  sub_1B7AE0D64(v2, v3, v4);
  v5 = CSDBRecordStoreProcessStatement();
  Count = CFArrayGetCount(v5);
  v7 = Count;
  if (Count < 2)
  {
    if (Count != 1)
    {
      goto LABEL_15;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v28[0] = 67109120;
      v28[1] = v7;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Query for GUID yields %d results, deleting all\n", v28, 8u);
    }
  }

  v9 = 0;
  v10 = *MEMORY[0x1E695E480];
  do
  {
    CFArrayGetValueAtIndex(v5, v9);
    ID = CSDBRecordGetID();
    v12 = IMDChatRecordCreateFromRecordIDUnlocked(v10, ID);
    v13 = v12;
    if (v12)
    {
      v14 = IMDChatRecordCopyHandles(v12);
      v17 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v15, v16);
      if (objc_msgSend_isSpotlightRefactorEnabled(v17, v18, v19))
      {
        v22 = objc_msgSend_sharedController(IMDCoreRecentsController, v20, v21);
        v24 = objc_msgSend_arrayByApplyingSelector_(v14, v23, sel_canonicalizedURIString);
        objc_msgSend_deleteRecentsWithHandleIDs_(v22, v25, v24);
      }

      else
      {
        sub_1B7B9BB0C(v14);
      }

      if (v14)
      {
        CFRelease(v14);
      }

      CFRelease(v13);
    }

    CSDBRecordStoreRemoveRecord();
    ++v9;
  }

  while ((v7 & 0x7FFFFFFF) != v9);
LABEL_15:
  if (v5)
  {
    CFRelease(v5);
  }

  result = CSDBRecordSaveStore();
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

void IMDChatRecordAssociateMessageWithGUIDToChatWithGUIDIfNeeded(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7B2B824;
    v7[3] = &unk_1E7CB75B0;
    v7[4] = a2;
    v7[5] = a1;
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v9 = a2;
        v10 = 2112;
        v11 = a1;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEBUG, "IMDChatRecordAssociateMessageWithGUIDToChatWithGUIDIfNeeded [ChatGUID: %@] [MessageGUID: %@]", buf, 0x16u);
      }
    }

    _IMDPerformBlock(v7);
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v6 = *MEMORY[0x1E69E9840];

    __syncXPCIMDChatRecordAssociateMessageWithGUIDToChatWithGUIDIfNeeded_IPCAction(0, a1, a2);
  }
}

void sub_1B7B2B824(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = IMDChatRecordCopyChatForGUIDUnlocked(*(a1 + 32));
  v3 = IMDMessageRecordCopyMessageForGUIDUnlocked(*(a1 + 40));
  v4 = v3;
  if (v2)
  {
    if (v3)
    {
      IMDChatRecordAddMessageIfNeededUnlocked(v2, v3);
      CFRelease(v2);
LABEL_10:
      CFRelease(v4);
      goto LABEL_11;
    }
  }

  else
  {
    v5 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Unable to associate message with chat, the chat is NULL (chat guid: %@)", &v10, 0xCu);
    }

    if (v4)
    {
      goto LABEL_10;
    }
  }

  v7 = IMDatabaseMessageEventLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 40);
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Unable to associate message with chat, the message is NULL (message guid: %@)", &v10, 0xCu);
  }

  v4 = v2;
  if (v2)
  {
    goto LABEL_10;
  }

LABEL_11:
  v9 = *MEMORY[0x1E69E9840];
}

void IMDChatRecordDisassociateMessageWithGUIDFromChatWithGUIDIfNeeded(const __CFString *a1, const __CFString *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412546;
      v12 = a2;
      v13 = 2112;
      v14 = a1;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEBUG, "IMDChatRecordDisassociateMessageWithGUIDFromChatWithGUIDIfNeeded [ChatGUID: %@] [MessageGUID: %@]", &v11, 0x16u);
    }
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    v5 = IMDChatRecordCopyChatForGUIDWithDisplayNameHiddenIfUnknown(a2, 0);
    v6 = IMDMessageRecordCopyMessageForGUID(a1);
    v7 = v6;
    if (v5)
    {
      if (v6)
      {
        IMDChatRecordRemoveMessage(v5, v6);
        CFRelease(v5);
LABEL_12:
        CFRelease(v7);
        goto LABEL_17;
      }
    }

    else
    {
      v8 = IMDatabaseMessageEventLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Unable to disassociate message from chat, the chat is NULL.", &v11, 2u);
      }

      if (v7)
      {
        goto LABEL_12;
      }
    }

    v9 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "Unable to disassociate message from chat, the message is NULL.", &v11, 2u);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  else
  {
    __syncXPCIMDChatRecordDisassociateMessageWithGUIDFromChatWithGUIDIfNeeded_IPCAction(0, a1, a2);
  }

LABEL_17:
  v10 = *MEMORY[0x1E69E9840];
}

CFMutableArrayRef IMDChatRecordCopyChatGUIDsWithUnplayedAudioMessages()
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    if (IMOSLoggingEnabled())
    {
      v0 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_DEBUG, "IMDChatRecordCopyChatGUIDsWithUnplayedAudioMessages", buf, 2u);
      }
    }

    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    *buf = MEMORY[0x1E69E9820];
    v5 = 3221225472;
    v6 = sub_1B7B2DACC;
    v7 = &unk_1E7CB76E0;
    v8 = Mutable;
    _IMDPerformLockedDatabaseBlock(buf);
  }

  else
  {
    *buf = 0;
    v5 = buf;
    v6 = 0x2020000000;
    v7 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1B7B2BCDC;
    v3[3] = &unk_1E7CB6838;
    v3[4] = buf;
    __syncXPCIMDChatRecordCopyChatGUIDsWithUnplayedAudioMessages_IPCAction(v3);
    Mutable = *(v5 + 24);
    _Block_object_dispose(buf, 8);
  }

  return Mutable;
}

void sub_1B7B2BCDC(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "array_result");
  if (value)
  {
    v4 = value;
    count = xpc_array_get_count(value);
    if (count)
    {
      v6 = count;
      for (i = 0; i != v6; ++i)
      {
        string = xpc_array_get_string(v4, i);
        if (string)
        {
          v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v9, string);
          if (v10)
          {
            CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v10);
          }
        }
      }
    }
  }
}

void IMDChatRecordSetIsFiltered(const __CFString *a1, uint64_t a2)
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v4 = IMDChatRecordCopyChatForGUIDWithDisplayNameHiddenIfUnknown(a1, 0);
    v5 = IMDChatRecordCopyChatRecordUnlocked(v4[2]);
    if (v5)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1B7B2BE94;
      v8[3] = &unk_1E7CB75B0;
      v8[4] = v5;
      v8[5] = a2;
      _IMDPerformBlock(v8);
    }

    else
    {
      v6 = IMDatabaseMessageEventLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Unable to update filter flag, the chat record is NULL.", v7, 2u);
      }
    }

    CFRelease(v4);
  }

  else
  {

    __syncXPCIMDChatRecordSetIsFiltered_IPCAction(0, a1);
  }
}

void sub_1B7B2BE94(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  j__CSDBRecordSetProperty();
  v4 = *(a1 + 32);

  IMDSMSRecordStoreRecordCommitChangesAndReleaseUnlocked(v4);
}

void IMDChatRecordDeleteEmptyChats()
{
  if (IMDIsRunningInDatabaseServerProcess())
  {

    IMDRunSqlOperation(&unk_1F2FA0050);
  }

  else
  {

    __syncXPCIMDChatRecordDeleteEmptyChats_IPCAction(0);
  }
}

void sub_1B7B2BF28(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_DEFAULT, "Deleting all empty chats.", &v8, 2u);
  }

  _IMDSqlOperationRunQuery(a2, @"DELETE FROM chat WHERE ((SELECT COUNT(*) FROM chat_message_join WHERE chat_id = chat.ROWID) == 0 AND (SELECT COUNT(*) FROM chat_recoverable_message_join WHERE chat_id = chat.ROWID) == 0);", &unk_1F2FA09B0, 0);
  if (*(a2 + 168))
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a2 + 168);
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEFAULT, "Error occured while deleting empty chats %@", &v8, 0xCu);
    }
  }

  v6 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_DEFAULT, "Finished deleting all empty chats.", &v8, 2u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void IMDChatInsertIntoDeletedChatsTable(void *a1, void *a2, sqlite3_int64 a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      *&buf[4] = a1;
      *&buf[12] = 2112;
      *&buf[14] = a2;
      *&buf[22] = 2048;
      *&buf[24] = a3;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Request to insert guid %@ recordID %@ timeStamp %lld", buf, 0x20u);
    }
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    memset(v20, 0, sizeof(v20));
    memset(buf, 0, sizeof(buf));
    IMDSqlOperationInitWithSharedCSDBDatabase(buf);
    _IMDSqlOperationBeginQuery(buf, @"INSERT INTO sync_deleted_chats (guid, recordID, timestamp) VALUES (?, ?, ?);");
    IMDSqlStatementBindTextFromCFString(v20, a1);
    IMDSqlStatementBindTextFromCFString(v20, a2);
    IMDSqlStatementBindInt64(v20, a3);
    IMDSqlOperationFinishQuery(buf);
    v10 = 0;
    IMDSqlOperationRelease(buf, &v10);
    if (v10)
    {
      v7 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v11 = 138413058;
        v12 = a1;
        v13 = 2112;
        v14 = a2;
        v15 = 2048;
        v16 = a3;
        v17 = 2112;
        v18 = v10;
        _os_log_error_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_ERROR, "Unable to insert row (guid:%@ recordID: %@ timeStamp:%ld, error %@) into sync_deleted_chats Table", v11, 0x2Au);
      }
    }
  }

  else
  {
    __syncXPCInsertIntoDeletedChatsTable_IPCAction(0, a1, a2, a3);
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        *&buf[4] = a1;
        *&buf[12] = 2112;
        *&buf[14] = a2;
        *&buf[22] = 2048;
        *&buf[24] = a3;
        _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Returned from IMDP after inserting in synd deleted table guid %@ recordID %@ timeStamp %lld", buf, 0x20u);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t IMDChatCopyChatRecordIDsAndGUIDsToDeleteWithLimit(int64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = a1;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Request to load deleted chat recordIDs with limit %lld", buf, 0xCu);
    }
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = sub_1B7AE1924;
  v19 = sub_1B7AE248C;
  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v22 = 0u;
    memset(v23, 0, sizeof(v23));
    *buf = 0u;
    IMDSqlOperationInitWithSharedCSDBDatabase(buf);
    _IMDSqlOperationBeginQuery(buf, @"select guid, recordID, timestamp from sync_deleted_chats where LENGTH(recordID) > 0;");
    while (IMDSqlOperationHasRows(buf))
    {
      Row = IMDSqlStatementGetRow(v23);
      if (Row)
      {
        objc_msgSend_addObject_(v16[5], v3, Row);
      }
    }

    IMDSqlOperationFinishQuery(buf);
    v14 = 0;
    IMDSqlOperationRelease(buf, &v14);
    if (v14)
    {
      v9 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEDFA8(&v14);
      }
    }
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1B7B2C5F4;
    v13[3] = &unk_1E7CB6838;
    v13[4] = &v15;
    __syncXPCIMDChatRecordCopyChatRecordIDsAndGUIDsToDeleteFromCloudKitWithLimit_IPCAction(v13, a1);
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v8 = objc_msgSend_count(v16[5], v6, v7);
        *buf = 134217984;
        *&buf[4] = v8;
        _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Returned from DB call after loading messages to delete messages count %lu", buf, 0xCu);
      }
    }
  }

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_1B7B2C584(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1B7B2C53CLL);
  }

  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(exc_buf);
}

xpc_object_t sub_1B7B2C5F4(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7B2C688;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7B2C688(uint64_t a1, int a2, xpc_object_t xdict)
{
  v5 = MEMORY[0x1E696AEC0];
  string = xpc_dictionary_get_string(xdict, "guid");
  v8 = objc_msgSend_stringWithCString_encoding_(v5, v7, string, 4);
  v9 = MEMORY[0x1E696AEC0];
  v10 = xpc_dictionary_get_string(xdict, "recordID");
  v12 = objc_msgSend_stringWithCString_encoding_(v9, v11, v10, 4);
  int64 = xpc_dictionary_get_int64(xdict, "timeStamp");
  v14 = MEMORY[0x1E695DF20];
  v16 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v15, int64);
  v18 = objc_msgSend_dictionaryWithObjectsAndKeys_(v14, v17, v8, @"guid", v12, @"recordID", v16, @"timeStamp", 0);
  objc_msgSend_addObject_(*(*(*(a1 + 32) + 8) + 40), v19, v18);
  return 1;
}

void IMDChatClearPendingDeleteChatsTable()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      LOWORD(v2[0]) = 0;
      _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_INFO, "Request to clear pending deletes from chat table", v2, 2u);
    }
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    memset(v2, 0, sizeof(v2));
    IMDSqlOperationInitWithSharedCSDBDatabase(v2);
    IMDSqlOperationExecuteQuery(v2, @"delete from sync_deleted_chats;", &unk_1F2FA09D0);
    IMDSqlOperationRelease(v2, 0);
  }

  else
  {
    __syncXPCIMDChatClearPendingDeleteChatsTable_IPCAction(0);
    if (IMOSLoggingEnabled())
    {
      v1 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
      {
        LOWORD(v2[0]) = 0;
        _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_INFO, "Returned from DB call after marking clearing all pending delete chats", v2, 2u);
      }
    }
  }
}

void sub_1B7B2C8C4()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v1 = 0;
      _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_INFO, "IMDChatClearPendingDeleteChatsTable cleared pending delete chat table", v1, 2u);
    }
  }
}

void IMDChatRemapMessagesWithErrorCodeToErrorCode(void *a1, sqlite3_int64 a2, sqlite3_int64 a3)
{
  v52 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134218498;
      *&buf[4] = a2;
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 2112;
      *&buf[24] = a1;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Request to reset messages with error %lld to error %lld on chatGUIDS %@", buf, 0x20u);
    }
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v8, &v44, v51, 16);
    if (v11)
    {
      v12 = *v45;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v45 != v12)
          {
            objc_enumerationMutation(a1);
          }

          v14 = IMDChatRecordCopyChatForGUIDWithDisplayNameHiddenIfUnknown(*(*(&v44 + 1) + 8 * i), 0);
          v16 = v14;
          if (v14)
          {
            v17 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v15, *(v14 + 16));
            objc_msgSend_addObject_(v7, v18, v17);
            CFRelease(v16);
          }
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v15, &v44, v51, 16);
      }

      while (v11);
    }

    v19 = objc_msgSend_count(v7, v9, v10);
    v20 = v19;
    if (v19)
    {
      if (v19 >= 2)
      {
        Mutable = CFStringCreateMutable(0, 0);
        v22 = Mutable;
        if (Mutable)
        {
          CFStringAppend(Mutable, CFSTR("UPDATE message SET error=? WHERE rowid IN (SELECT message_id FROM chat_message_join WHERE chat_id IN (?"));
          v23 = v20 - 1;
          do
          {
            CFStringAppend(v22, @", ?");
            --v23;
          }

          while (v23);
          CFStringAppend(v22, @") AND error=?"));
        }

        else
        {
          v37 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            sub_1B7CEE018(v37, v38);
          }

          v22 = 0;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v25 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE0D4(v25, v26);
      }
    }

    CFRetain(@"UPDATE message SET error=? WHERE rowid IN (SELECT message_id FROM chat_message_join WHERE chat_id IN (?)) AND error=?");
    v22 = @"UPDATE message SET error=? WHERE rowid IN (SELECT message_id FROM chat_message_join WHERE chat_id IN (?)) AND error=?";
LABEL_26:
    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v22;
        _os_log_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_INFO, "GetMessageDateAndLastAddressedHandle: running with query %@", buf, 0xCu);
      }
    }

    memset(v50, 0, 144);
    memset(buf, 0, sizeof(buf));
    IMDSqlOperationInitWithSharedCSDBDatabase(buf);
    _IMDSqlOperationBeginQuery(buf, v22);
    IMDSqlStatementBindInt64(v50, a3);
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v28, &v40, v48, 16);
    if (v31)
    {
      v32 = *v41;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v41 != v32)
          {
            objc_enumerationMutation(v7);
          }

          v34 = objc_msgSend_integerValue(*(*(&v40 + 1) + 8 * j), v29, v30);
          IMDSqlStatementBindInt64(v50, v34);
        }

        v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v29, &v40, v48, 16);
      }

      while (v31);
    }

    IMDSqlStatementBindInt64(v50, a2);
    IMDSqlOperationFinishQuery(buf);
    v39 = 0;
    IMDSqlOperationRelease(buf, &v39);
    if (v22)
    {
      CFRelease(v22);
    }

    if (v39)
    {
      v35 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE1AC(&v39);
      }
    }

    goto LABEL_41;
  }

  __syncXPCIMDChatRemapMessagesWithErrorCodeToErrorCode_IPCAction(0, a1, a2, a3);
  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v24, OS_LOG_TYPE_INFO, "Returned from DB call after marking clearing all pending delete chats", buf, 2u);
    }
  }

LABEL_41:
  v36 = *MEMORY[0x1E69E9840];
}

void sub_1B7B2CE08(const __CFArray *a1)
{
  v57 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    for (i = 0; Count != i; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      v51 = 0;
      v52 = 0;
      v49 = 0;
      v50 = 0;
      v47 = 0;
      v48 = 0;
      v45 = 0;
      v46 = 0;
      v44 = 0;
      v42 = 0;
      v43 = 0;
      v41 = 0;
      v40 = 0;
      v39 = 0;
      v38 = 0;
      v36 = 0;
      v37 = 0;
      v34 = 0;
      v35 = 0;
      v32 = 0;
      v33 = 0;
      v31 = 0;
      v7 = objc_msgSend_previewGenerationState(ValueAtIndex, v5, v6);
      _IMDAttachmentRecordBulkCopy(ValueAtIndex, &v52, &v51, &v50, &v49, &v48, &v47, &v46, &v45, &v44, &v43, &v42, &v41, &v40, &v39, &v38, &v37, &v36, &v35, &v34, &v33, &v32, &v31);
      if (v48)
      {
        v30 = 0;
        v10 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v8, v9);
        if (objc_msgSend_fileExistsAtPath_(v10, v11, v48))
        {
          v14 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v12, v13);
          objc_msgSend_removeItemAtPath_error_(v14, v15, v48, &v30);
          v16 = v30 == 0;
          v17 = IMOSLoggingEnabled();
          if (v16)
          {
            if (v17)
            {
              v23 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v54 = v48;
                v19 = v23;
                v20 = "Removed attachment at path: %@";
LABEL_15:
                v21 = 12;
LABEL_16:
                _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, v20, buf, v21);
              }
            }
          }

          else if (v17)
          {
            v18 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v54 = v48;
              v55 = 2112;
              v56 = v30;
              v19 = v18;
              v20 = "deleting attachment failed at path: %@: %@";
              v21 = 22;
              goto LABEL_16;
            }
          }
        }

        else if (IMOSLoggingEnabled())
        {
          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v54 = v48;
            v19 = v22;
            v20 = "No attachment to remove at path: %@";
            goto LABEL_15;
          }
        }
      }

      v25 = v37 != 1 || v45 != 0;
      v26 = IMOSLoggingEnabled();
      if (v25)
      {
        if (v26)
        {
          v27 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v54 = v52;
            _os_log_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_INFO, "Resetting downloadState for attachment guid: %@", buf, 0xCu);
          }
        }

        IMDAttachmentRecordBulkUpdate(ValueAtIndex, v52, v51, v50, v49, v48, v47, v46, 0, v44, v43, v42, v41, v40, v39, v38, 1, v36, v35, v34, v33, v32, v31, v7);
      }

      else if (v26)
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v54 = v52;
          _os_log_impl(&dword_1B7AD5000, v28, OS_LOG_TYPE_INFO, "Attachment already marked as needing download for guid: %@", buf, 0xCu);
        }
      }
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

void IMDChatRecordPurgeAttachments(const __CFString *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v36 = a1;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Purging attachment files for chat guid: %@", buf, 0xCu);
    }
  }

  v5 = objc_msgSend_array(MEMORY[0x1E695DF70], v2, v3);
  v6 = IMDChatRecordCopyChatForGUIDWithDisplayNameHiddenIfUnknown(a1, 0);
  cf = v6;
  if (v6)
  {
    v7 = IMDChatRecordCopyMessagesWithLimit(v6, -1);
    v8 = v7;
    if (v7)
    {
      Count = CFArrayGetCount(v7);
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v36 = Count;
          _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Found %ld messages for chat", buf, 0xCu);
        }
      }

      if (Count >= 1)
      {
        v11 = 0;
        v12 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v8, v12);
          v14 = ValueAtIndex;
          if (!ValueAtIndex)
          {
            if (IMOSLoggingEnabled())
            {
              v21 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                *buf = 134217984;
                v36 = v12;
                _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Failed to load message at index: %ld", buf, 0xCu);
              }
            }

            goto LABEL_26;
          }

          v15 = IMDMessageRecordCopyGUIDForMessage(ValueAtIndex);
          objc_msgSend_addObject_(v5, v16, v15);
          v17 = IMDMessageRecordCopyAttachments(v14);
          v18 = v17;
          if (v17)
          {
            v19 = CFArrayGetCount(v17);
            if (IMOSLoggingEnabled())
            {
              v20 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                *buf = 134218242;
                v36 = v19;
                v37 = 2112;
                v38 = v15;
                _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_INFO, "Found %ld attachments for message: %@", buf, 0x16u);
              }
            }

            sub_1B7B2CE08(v18);
            CFRelease(v18);
            v11 += v19;
            if (!v15)
            {
              goto LABEL_26;
            }
          }

          else
          {
            if (IMOSLoggingEnabled())
            {
              v22 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v36 = v15;
                _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "Failed to load attachments for message: %@", buf, 0xCu);
              }
            }

            if (!v15)
            {
              goto LABEL_26;
            }
          }

          CFRelease(v15);
LABEL_26:
          if (Count == ++v12)
          {
            goto LABEL_36;
          }
        }
      }

      v11 = 0;
LABEL_36:
      CFRelease(v8);
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_40;
      }

      v28 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        goto LABEL_40;
      }

      *buf = 134218240;
      v36 = v11;
      v37 = 2048;
      v38 = Count;
      v25 = "Updated %lld attachments on %ld messages";
      v26 = v28;
      v27 = 22;
    }

    else
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_40;
      }

      v24 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        goto LABEL_40;
      }

      *buf = 138412290;
      v36 = a1;
      v25 = "No messages load for chat: %@";
      v26 = v24;
      v27 = 12;
    }

    _os_log_impl(&dword_1B7AD5000, v26, OS_LOG_TYPE_INFO, v25, buf, v27);
LABEL_40:
    CFRelease(cf);
    goto LABEL_41;
  }

  if (!IMOSLoggingEnabled() || (v23 = OSLogHandleForIMFoundationCategory(), !os_log_type_enabled(v23, OS_LOG_TYPE_INFO)))
  {
LABEL_41:
    if (!v5)
    {
      goto LABEL_46;
    }

    goto LABEL_42;
  }

  *buf = 138412290;
  v36 = a1;
  _os_log_impl(&dword_1B7AD5000, v23, OS_LOG_TYPE_INFO, "Chat record not loaded for chat: %@", buf, 0xCu);
  if (!v5)
  {
    goto LABEL_46;
  }

LABEL_42:
  if (IMOSLoggingEnabled())
  {
    v29 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v32 = objc_msgSend_count(v5, v30, v31);
      *buf = 134217984;
      v36 = v32;
      _os_log_impl(&dword_1B7AD5000, v29, OS_LOG_TYPE_INFO, "Reindexing %ld messages", buf, 0xCu);
    }
  }

  IMDCoreSpotlightReindexMessages(v5, 1007, 0);
LABEL_46:
  v33 = *MEMORY[0x1E69E9840];
}

void sub_1B7B2D798(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1B7B2D6E0);
  }

  _Unwind_Resume(a1);
}

void sub_1B7B2D80C(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  CSDBSqliteBindInt64();
  v3 = *(a1 + 48);
  v4 = CSDBSqliteBindInt64();
  sub_1B7AE0D64(v4, v5, v6);
  v7 = CSDBRecordStoreProcessStatement();
  v9 = _IMDChatRecordCopyChatsFromRecords(v7);
  if (v9)
  {
    objc_msgSend_addObjectsFromArray_(*(a1 + 32), v8, v9);
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = 134217984;
        Count = CFArrayGetCount(v9);
        _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Found %llu recent chats for filter modes", &v12, 0xCu);
      }
    }
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1B7B2D958(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  CSDBSqliteBindInt64();
  v3 = *(a1 + 48);
  v4 = CSDBSqliteBindInt64();
  sub_1B7AE0D64(v4, v5, v6);
  v7 = CSDBRecordStoreProcessStatement();
  v9 = _IMDChatRecordCopyChatsFromRecords(v7);
  if (v9)
  {
    objc_msgSend_addObjectsFromArray_(*(a1 + 32), v8, v9);
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        Count = CFArrayGetCount(v9);
        v12 = *(a1 + 40);
        v14 = 134218752;
        v15 = Count;
        v16 = 2048;
        v17 = v12;
        v18 = 2048;
        v19 = v12 & 0xF;
        v20 = 2048;
        v21 = v12 >> 4;
        _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Found %lld recent subclassified chats for filter mode %lld having action: %lld and subaction: %lld", &v14, 0x2Au);
      }
    }
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7B2DACC(uint64_t a1)
{
  if (CSDBSqliteDatabaseConnectionForReading())
  {
    v2 = CSDBSqliteConnectionStatementForSQL();
    if (v2)
    {
      v3 = v2;
      v4 = *(v2 + 8);
      if (v4)
      {
        if (sqlite3_step(v4) == 100)
        {
          v5 = *MEMORY[0x1E695E480];
          do
          {
            if (sqlite3_column_text(*(v3 + 8), 0))
            {
              v6 = sqlite3_column_text(*(v3 + 8), 0);
              v7 = CFStringCreateWithCString(v5, v6, 0x8000100u);
              if (v7)
              {
                v8 = v7;
                CFArrayAppendValue(*(a1 + 32), v7);
                CFRelease(v8);
              }
            }
          }

          while (sqlite3_step(*(v3 + 8)) == 100);
        }

        CSDBSqliteStatementReset();
      }
    }

    CSDBSqliteDatabaseReleaseSqliteConnection();
  }

  CFRelease(@"SELECT DISTINCT  c.guid FROM   chat c INNER JOIN chat_message_join cm ON   c.ROWID = cm.chat_id INNER JOIN message m ON   m.ROWID = cm.message_id WHERE   m.is_from_me = 0   AND m.is_played = 0   AND m.is_audio_message = 1   AND c.style = 45 ");
  CSDBRecordSaveStore();

  return CSDBRecordStoreInvalidateCachesWithStore();
}

uint64_t *sub_1B7B2DBE4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void sub_1B7B2E25C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

uint64_t sub_1B7B2E280(uint64_t a1)
{
  v2 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "Beginning iteration of _IMDCleanseOrphanedAttachmentsWithEnumerator attachments", v6, 2u);
  }

  Weak = objc_loadWeak((a1 + 48));
  return objc_msgSend__cleanseOrphanedAttachmentsWithEnumerator_atPath_(Weak, v4, *(a1 + 32), *(a1 + 40));
}

void sub_1B7B2E5B0(uint64_t a1, const char *a2)
{
  v8[5] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69A7058];
  v7[0] = @"rowID";
  v7[1] = v2;
  v8[0] = @"ROWID";
  v8[1] = @"id";
  v3 = *MEMORY[0x1E69A7060];
  v7[2] = *MEMORY[0x1E69A7070];
  v7[3] = v3;
  v8[2] = @"uncanonicalized_id";
  v8[3] = @"country";
  v7[4] = *MEMORY[0x1E69A7068];
  v8[4] = @"service";
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v8, v7, 5);
  v5 = qword_1EDBE5B18;
  qword_1EDBE5B18 = v4;

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B7B2E6E4()
{
  v0 = os_log_create("com.apple.Messages", "IMDCustomPluginNotificationContext");
  v1 = qword_1EBA53EF0;
  qword_1EBA53EF0 = v0;
}

id sub_1B7B2EA30()
{
  v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2 = @"chat_message_join";
  v3 = off_1E7CB7800;
  v4 = 15;
  do
  {
    v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v0, @"CREATE TABLE IF NOT EXISTS %@ (%@);", v2, *(v3 - 1));
    objc_msgSend_setObject_forKey_(v1, v6, v5, v2);
    v7 = *v3;
    v3 += 2;
    v2 = v7;
    --v4;
  }

  while (v4);

  return v1;
}

uint64_t IMDSelectAllTableNames(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_1B7AE1934;
  v11 = sub_1B7AE2498;
  v12 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7B2EBCC;
  v6[3] = &unk_1E7CB7948;
  v6[4] = &v7;
  v6[5] = a1;
  IMDRunSqlOperation(v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_1B7B2EBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7B2EBCC(uint64_t a1, uint64_t a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B7B2EC7C;
  v5[3] = &unk_1E7CB7920;
  v5[4] = *(a1 + 32);
  v5[5] = a2;
  _IMDSqlOperationRunQuery(a2, @"select name from sqlite_master where type = 'table'", 0, v5);
  result = IMDSqlOperationGetError(a2, *(a1 + 40));
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 40) = 0;
  }

  return result;
}

BOOL sub_1B7B2EC7C(uint64_t a1)
{
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v3 = MEMORY[0x1E69E9820];
    do
    {
      v5[0] = v3;
      v5[1] = 3221225472;
      v5[2] = sub_1B7B2ED28;
      v5[3] = &unk_1E7CB78F8;
      v4 = *(a1 + 40);
      v5[4] = *(a1 + 32);
      IMDSqlOperationIterateRow(v4, v5);
      result = IMDSqlOperationHasRows(*(a1 + 40));
    }

    while (result);
  }

  return result;
}

void sub_1B7B2ED28(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  v6 = *(a2 + 2);
  v3 = IMDStringFromSqlColumn(&v5);
  objc_msgSend_addObject_(*(*(*(a1 + 32) + 8) + 40), v4, v3);
  CFRelease(v3);
}

uint64_t IMDRowCountForTable(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v18 = xmmword_1E7CB7968;
    v19 = *off_1E7CB7978;
    v20 = 101;
    v4 = MEMORY[0x1E696AEC0];
    v5 = IMFileLocationTrimFileName();
    v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v6, &stru_1F2FA9728);
    v9 = objc_msgSend_stringWithFormat_(v4, v8, @"Unexpected nil '%@' in %s at %s:%d. %@", @"tableName", "int64_t IMDRowCountForTable(NSString *, NSError **)", v5, 101, v7);
    v10 = IMGetAssertionFailureHandler();
    if (v10)
    {
      v10(v9);
    }

    else
    {
      v13 = objc_msgSend_warning(MEMORY[0x1E69A6138], v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }
  }

  *&v18 = 0;
  *(&v18 + 1) = &v18;
  *&v19 = 0x2020000000;
  *(&v19 + 1) = -1;
  v14 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"select count(*) from %@", a1);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1B7B2EF48;
  v17[3] = &unk_1E7CB7998;
  v17[4] = &v18;
  v17[5] = v14;
  v17[6] = a2;
  IMDRunSqlOperation(v17);
  CFRelease(v14);
  v15 = *(*(&v18 + 1) + 24);
  _Block_object_dispose(&v18, 8);
  return v15;
}

void sub_1B7B2EF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7B2EF48(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7B2EFE0;
  v6[3] = &unk_1E7CB7920;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v6[5] = a2;
  _IMDSqlOperationRunQuery(a2, v4, 0, v6);
  return IMDSqlOperationGetError(a2, *(a1 + 48));
}

BOOL sub_1B7B2EFE0(uint64_t a1)
{
  for (result = IMDSqlOperationHasRows(*(a1 + 40)); result; result = IMDSqlOperationHasRows(v4))
  {
    IMDSqlStatementColumnByIndex((*(a1 + 40) + 32), 0, v5);
    v3 = IMDIntFromSqlColumn(v5);
    v4 = *(a1 + 40);
    *(*(*(a1 + 32) + 8) + 24) = v3;
  }

  return result;
}

void sub_1B7B2F048(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a1)
  {
    if (!*(a1 + 8))
    {
      v3 = MEMORY[0x1E696AEC0];
      v4 = IMFileLocationTrimFileName();
      v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v5, &stru_1F2FA9728);
      v8 = objc_msgSend_stringWithFormat_(v3, v7, @"Unexpected nil '%@' in %s at %s:%d. %@", @"c", "void IMDCreateLegacyTables(IMDSqlOperation *)", v4, 135, v6);
      v9 = IMGetAssertionFailureHandler();
      if (v9)
      {
        a1 = v9(v8);
      }

      else
      {
        v22 = objc_msgSend_warning(MEMORY[0x1E69A6138], v10, v11);
        a1 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
        if (a1)
        {
          sub_1B7CEE318();
        }
      }
    }

    sub_1B7AEAEE4(a1, a2, a3);
    TablesForClass = CSDBRecordStoreCreateTablesForClass();
    sub_1B7AE0D64(TablesForClass, v24, v25);
    CSDBRecordStoreCreateTablesForClass();
    CSDBRecordStoreCreateTablesForClass();
  }

  else
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = IMFileLocationTrimFileName();
    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, &stru_1F2FA9728);
    v17 = objc_msgSend_stringWithFormat_(v12, v16, @"Unexpected nil '%@' in %s at %s:%d. %@", @"operation", "void IMDCreateLegacyTables(IMDSqlOperation *)", v13, 128, v15);
    v18 = IMGetAssertionFailureHandler();
    if (v18)
    {
      v18(v17);
    }

    else
    {
      v21 = objc_msgSend_warning(MEMORY[0x1E69A6138], v19, v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }
  }
}

BOOL IMDCreateTableWithNameWithOperation(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_1B7B2EA30();
  result = sub_1B7B2F27C(a1, v6, a2, a3);
  if (result)
  {
    sub_1B7B2F048(a1, v8, v9);
    return *(a1 + 168) == 0;
  }

  return result;
}

BOOL sub_1B7B2F27C(_BOOL8 result, void *a2, uint64_t a3, int a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v6 = result;
    v7 = objc_msgSend_objectForKey_(a2, a2, a3);
    _IMDSqlOperationRunQuery(v6, v7, 0, 0);
    if (*(v6 + 168))
    {
      v8 = IMLogHandleForCategory();
      result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
      if (result)
      {
        sub_1B7CEE380(a3, v6, v8);
        result = 0;
      }
    }

    else
    {
      if (a4)
      {
        v9 = IMLogHandleForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v11 = 138412290;
          v12 = a3;
          _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "Created table (if needed) ok: %@", &v11, 0xCu);
        }
      }

      result = *(v6 + 168) == 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IMDCreateTablesWithOperation(uint64_t a1, int a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v29 = xmmword_1E7CB7AA8;
    v30 = *off_1E7CB7AB8;
    v31 = 174;
    v14 = MEMORY[0x1E696AEC0];
    v15 = IMFileLocationTrimFileName();
    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v16, &stru_1F2FA9728);
    v19 = objc_msgSend_stringWithFormat_(v14, v18, @"Unexpected nil '%@' in %s at %s:%d. %@", @"operation", "BOOL IMDCreateTablesWithOperation(IMDSqlOperation *, BOOL)", v15, 174, v17);
    v20 = IMGetAssertionFailureHandler();
    if (v20)
    {
      v20(v19);
    }

    else
    {
      v23 = objc_msgSend_warning(MEMORY[0x1E69A6138], v21, v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }

LABEL_17:
    result = 0;
    goto LABEL_18;
  }

  v4 = sub_1B7B2EA30();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v25, v32, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v26;
LABEL_4:
    v11 = 0;
    while (1)
    {
      if (*v26 != v10)
      {
        objc_enumerationMutation(v4);
      }

      if (!sub_1B7B2F27C(a1, v4, *(*(&v25 + 1) + 8 * v11), a2))
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v25, v32, 16);
        if (v9)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }

  if (*(a1 + 168))
  {
    goto LABEL_17;
  }

  sub_1B7B2F048(a1, v7, v8);
  if (*(a1 + 168))
  {
    goto LABEL_17;
  }

  result = (*(a1 + 168) == 0) & objc_msgSend_createTablesUsingConnection_(IMDLegacyRecordBridge, v12, *(a1 + 8));
LABEL_18:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL IMDDropTableWithOperation(uint64_t a1, const char *a2, int a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a1)
  {
LABEL_6:
    if (a2)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  *buf = xmmword_1E7CB7AD0;
  v32 = *off_1E7CB7AE0;
  v33 = 199;
  v6 = MEMORY[0x1E696AEC0];
  v7 = IMFileLocationTrimFileName();
  v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8, &stru_1F2FA9728);
  v11 = objc_msgSend_stringWithFormat_(v6, v10, @"Unexpected nil '%@' in %s at %s:%d. %@", @"operation", "BOOL IMDDropTableWithOperation(IMDSqlOperation *, NSString *, BOOL)", v7, 199, v9);
  v12 = IMGetAssertionFailureHandler();
  if (!v12)
  {
    v15 = objc_msgSend_warning(MEMORY[0x1E69A6138], v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEE318();
      if (a2)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v12(v11);
  if (a2)
  {
    goto LABEL_11;
  }

LABEL_7:
  *buf = xmmword_1E7CB7AF8;
  v32 = *off_1E7CB7B08;
  v33 = 200;
  v16 = MEMORY[0x1E696AEC0];
  v17 = IMFileLocationTrimFileName();
  v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v18, &stru_1F2FA9728);
  v21 = objc_msgSend_stringWithFormat_(v16, v20, @"Unexpected nil '%@' in %s at %s:%d. %@", @"tableName", "BOOL IMDDropTableWithOperation(IMDSqlOperation *, NSString *, BOOL)", v17, 200, v19);
  v22 = IMGetAssertionFailureHandler();
  if (v22)
  {
    v22(v21);
  }

  else
  {
    v25 = objc_msgSend_warning(MEMORY[0x1E69A6138], v23, v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEE318();
    }
  }

LABEL_11:
  if (a1)
  {
    v26 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"DROP TABLE IF EXISTS %@;", a2);
    _IMDSqlOperationRunQuery(a1, v26, 0, 0);
    if (*(a1 + 168))
    {
      v27 = IMLogHandleForCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE400(a2, a1, v27);
      }
    }

    else if (a3)
    {
      v29 = IMLogHandleForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = a2;
        _os_log_impl(&dword_1B7AD5000, v29, OS_LOG_TYPE_INFO, "Dropped table (if needed) ok: %@", buf, 0xCu);
      }
    }

    result = *(a1 + 168) == 0;
  }

  else
  {
    result = 0;
  }

  v30 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IMDDatabaseContainsTable(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = IMDSelectAllTableNames(a2, a2, a3);

  return objc_msgSend_containsObject_(v4, v5, a1);
}

void *sub_1B7B2F8A0(void *a1, const char *a2)
{
  v2 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(a1, a2, @"IF NOT EXISTS", &stru_1F2FA9728);
  v4 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v2, v3, @";", &stru_1F2FA9728);
  objc_msgSend_rangeOfString_(v4, v5, @" ");
  while (v6)
  {
    v4 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v4, v6, @" ", &stru_1F2FA9728);
    objc_msgSend_rangeOfString_(v4, v7, @" ");
  }

  return v4;
}

uint64_t IMDConfirmTablesCreatedAsExpected(uint64_t a1, const char *a2, uint64_t a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, a3);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = sub_1B7B2FB48;
  v36[3] = &unk_1E7CB7B50;
  v36[4] = v4;
  v36[5] = a1;
  IMDRunSqlOperation(v36);
  v5 = sub_1B7B2EA30();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v32, v37, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v33;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        v13 = objc_msgSend_objectForKey_(v5, v8, v12);
        v15 = sub_1B7B2F8A0(v13, v14);
        v17 = objc_msgSend_objectForKey_(v4, v16, v12);
        v19 = sub_1B7B2F8A0(v17, v18);
        if ((objc_msgSend_isEqualToString_(v15, v20, v19) & 1) == 0)
        {
          v21 = objc_msgSend_objectForKey_(v5, v8, v12);
          NSLog(&cfstr_Expected.isa, v21);
          v23 = objc_msgSend_objectForKey_(v4, v22, v12);
          NSLog(&cfstr_Actual.isa, v23);
          v26 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v24, v25);
          v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v27, "BOOL IMDConfirmTablesCreatedAsExpected(NSError **)");
          objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v26, v29, v28, @"IMDTables.m", 312, @"index check failed");
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v32, v37, 16);
    }

    while (v9);
  }

  v30 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t sub_1B7B2FB48(uint64_t a1, uint64_t a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B7B2FBE8;
  v5[3] = &unk_1E7CB6FD0;
  v5[4] = *(a1 + 32);
  v5[5] = a2;
  _IMDSqlOperationRunQuery(a2, @"SELECT name, sql FROM sqlite_master WHERE type = 'table';", 0, v5);
  return IMDSqlOperationGetError(a2, *(a1 + 40));
}

BOOL sub_1B7B2FBE8(uint64_t a1)
{
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v3 = MEMORY[0x1E69E9820];
    do
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x3052000000;
      v16 = sub_1B7AE1934;
      v17 = sub_1B7AE2498;
      v18 = 0;
      v7 = 0;
      v8 = &v7;
      v9 = 0x3052000000;
      v10 = sub_1B7AE1934;
      v11 = sub_1B7AE2498;
      v12 = 0;
      v4 = *(a1 + 40);
      v6[0] = v3;
      v6[1] = 3221225472;
      v6[2] = sub_1B7B2FD80;
      v6[3] = &unk_1E7CB7B28;
      v6[4] = &v13;
      v6[5] = &v7;
      IMDSqlOperationIterateRow(v4, v6);
      objc_msgSend_setObject_forKey_(*(a1 + 32), v5, v8[5], v14[5]);
      _Block_object_dispose(&v7, 8);
      _Block_object_dispose(&v13, 8);
      result = IMDSqlOperationHasRows(*(a1 + 40));
    }

    while (result);
  }

  return result;
}

void sub_1B7B2FD5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B2FD80(uint64_t a1, __int128 *a2)
{
  v7 = *a2;
  v8 = *(a2 + 2);
  v4 = IMDStringFromSqlColumn(&v7);
  v5 = *(a2 + 1);
  if (!v5)
  {
    v5 = sqlite3_column_name(**a2, *(a2 + 4));
    *(a2 + 1) = v5;
  }

  if (!strncmp(v5, "name", 0x100uLL))
  {
    v6 = 32;
    goto LABEL_9;
  }

  if (!v5)
  {
    v5 = sqlite3_column_name(**a2, *(a2 + 4));
    *(a2 + 1) = v5;
  }

  if (!strncmp(v5, "sql", 0x100uLL))
  {
    v6 = 40;
LABEL_9:
    *(*(*(a1 + v6) + 8) + 40) = CFRetain(v4);
  }

  CFRelease(v4);
}

void sub_1B7B30B94(uint64_t a1, const char *a2)
{
  v6[10] = *MEMORY[0x1E69E9840];
  v5[0] = @"r";
  v5[1] = @"g";
  v6[0] = @"ROWID";
  v6[1] = @"guid";
  v5[2] = @"fg";
  v5[3] = @"f";
  v6[2] = @"flag_group";
  v6[3] = @"flag";
  v5[4] = @"fp";
  v5[5] = @"l";
  v6[4] = @"flag_priority";
  v6[5] = @"lane";
  v5[6] = @"s";
  v5[7] = @"sp";
  v6[6] = @"reason";
  v6[7] = @"reason_priority";
  v5[8] = @"u";
  v5[9] = @"c";
  v6[8] = @"user_info";
  v6[9] = @"retry_count";
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v6, v5, 10);
  v3 = qword_1EDBE5B20;
  qword_1EDBE5B20 = v2;

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1B7B30E60(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 == 3)
  {
    v5 = sqlite3_value_int64(*a3);
    v6 = sub_1B7B3107C(a3[1]);
    v7 = sub_1B7B3107C(a3[2]);
    v37 = v6;
    v9 = v7;
    v10 = v37;
    if (v37)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      goto LABEL_14;
    }

    if (!v37 && v9)
    {
      v12 = v9;
LABEL_15:
      v14 = v12;
LABEL_16:

      if (objc_msgSend_length(v14, v15, v16))
      {
        v17 = v14;
        v20 = objc_msgSend_bytes(v17, v18, v19);
        v23 = objc_msgSend_length(v14, v21, v22);
        sqlite3_result_blob(a1, v20, v23, 0xFFFFFFFFFFFFFFFFLL);
      }

      else
      {
        sqlite3_result_null(a1);
      }

      return;
    }

    if (objc_msgSend_isEqualToData_(v37, v8, v9))
    {
      v10 = v37;
LABEL_14:
      v12 = v10;
      goto LABEL_15;
    }

    v24 = objc_msgSend__decodeUserInfoData_(IMDPersistentTask, v13, v37);
    v26 = objc_msgSend__decodeUserInfoData_(IMDPersistentTask, v25, v9);
    v29 = objc_msgSend_count(v24, v27, v28);
    v32 = objc_msgSend_count(v24, v30, v31);
    if (v29 < 1 || v32)
    {
      if (v29 || v32 < 1)
      {
        v35 = objc_msgSend_mergeUserInfosForFlag_userInfo1_userInfo2_(IMDPersistentTaskUtilities, v33, v5, v24, v26);
        v14 = objc_msgSend__dataForUserInfo_(IMDPersistentTask, v36, v35);

        goto LABEL_30;
      }

      v34 = v9;
    }

    else
    {
      v34 = v37;
    }

    v14 = v34;
LABEL_30:

    goto LABEL_16;
  }

  sqlite3_result_error(a1, "im_reconcile_ptask_user_info: wrong number of arguments", -1);
}

id sub_1B7B3107C(sqlite3_value *a1)
{
  v2 = sqlite3_value_bytes(a1);
  if (v2)
  {
    v3 = v2;
    v4 = sqlite3_value_blob(a1);
    v6 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v5, v4, v3);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1B7B310E0(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v79[1] = *MEMORY[0x1E69E9840];
  if (a2 == 5)
  {
    v5 = sqlite3_value_int64(*a3);
    v6 = sub_1B7B3107C(a3[1]);
    v7 = sub_1B7B3107C(a3[2]);
    v8 = sqlite3_value_int64(a3[3]);
    v10 = sqlite3_value_int64(a3[4]);
    v78 = v7;
    if (!v6 || v7)
    {
      if (v6 || !v7)
      {
        isEqualToData = objc_msgSend_isEqualToData_(v6, v9, v7);
        v12 = objc_msgSend__decodeUserInfoData_(IMDPersistentTask, v66, v6);
        if ((isEqualToData & 1) == 0)
        {
          v68 = objc_msgSend__decodeUserInfoData_(IMDPersistentTask, v67, v7);
          v71 = objc_msgSend_count(v12, v69, v70);
          v74 = objc_msgSend_count(v12, v72, v73);
          if (v71 < 1 || v74)
          {
            if (v71 || v74 < 1)
            {
              v76 = objc_msgSend_mergeUserInfosForFlag_userInfo1_userInfo2_(IMDPersistentTaskUtilities, v75, v5, v12, v68);
            }

            else
            {
              v76 = v68;
            }
          }

          else
          {
            v76 = v12;
          }

          v77 = v76;

          v12 = v77;
        }

        goto LABEL_12;
      }

      objc_msgSend__decodeUserInfoData_(IMDPersistentTask, v9, v7);
    }

    else
    {
      objc_msgSend__decodeUserInfoData_(IMDPersistentTask, v9, v6);
    }
    v12 = ;
LABEL_12:
    v13 = [IMDIndexingContext alloc];
    v15 = objc_msgSend_initWithDictionary_(v13, v14, v12);
    v18 = objc_msgSend_additionalReasons(v15, v16, v17);
    v20 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v19, v10);
    v22 = objc_msgSend_containsObject_(v18, v21, v20);

    if ((v22 & 1) == 0)
    {
      v25 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v23, v10);
      v79[0] = v25;
      v27 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v26, v79, 1);
      v30 = objc_msgSend_additionalReasons(v15, v28, v29);
      v32 = objc_msgSend_arrayByAddingObjectsFromArray_(v27, v31, v30);
      objc_msgSend_setAdditionalReasons_(v15, v33, v32);
    }

    v34 = objc_msgSend_additionalReasons(v15, v23, v24);
    v36 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v35, v8);
    v38 = objc_msgSend_containsObject_(v34, v37, v36);

    if (v38)
    {
      v41 = objc_msgSend_additionalReasons(v15, v39, v40);
      v44 = objc_msgSend_mutableCopy(v41, v42, v43);

      v46 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v45, v8);
      objc_msgSend_removeObject_(v44, v47, v46);

      v50 = objc_msgSend_copy(v44, v48, v49);
      objc_msgSend_setAdditionalReasons_(v15, v51, v50);
    }

    v52 = objc_msgSend_dictionaryRepresentation(v15, v39, v40);
    v54 = objc_msgSend__dataForUserInfo_(IMDPersistentTask, v53, v52);

    if (objc_msgSend_length(v54, v55, v56))
    {
      v57 = v54;
      v60 = objc_msgSend_bytes(v57, v58, v59);
      v63 = objc_msgSend_length(v54, v61, v62);
      sqlite3_result_blob(a1, v60, v63, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      sqlite3_result_null(a1);
    }

    v64 = *MEMORY[0x1E69E9840];
    return;
  }

  v11 = *MEMORY[0x1E69E9840];

  sqlite3_result_error(a1, "im_reconcile_ptask_user_info_with_shadowed_reason: wrong number of arguments", -1);
}

void sub_1B7B316EC()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v0 = dispatch_queue_create(0, v2);
  v1 = qword_1EBA53F00;
  qword_1EBA53F00 = v0;
}

void sub_1B7B31750(uint64_t a1)
{
  group = dispatch_group_create();
  dispatch_group_enter(group);
  v2 = dispatch_time(0, (*(a1 + 32) * 1000000000.0));
  dispatch_group_wait(group, v2);
}

void sub_1B7B317C0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  isBlocking = objc_msgSend_isBlocking(*(a1 + 32), a2, a3);

  IMDPersistencePerformBlockWithHandoffIfNeeded(v3, isBlocking, v5);
}

uint64_t sub_1B7B31884(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_invalidate(qword_1EBA53F10, a2, a3);
  v3 = qword_1EBA53F10;
  qword_1EBA53F10 = 0;

  return notify_post("com.apple.imdpersistenceagent.notification.ptasksupdated");
}

void sub_1B7B318D0(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }

  else
  {
    v14 = v1;
    v15 = v2;
    if (!qword_1EBA53F10)
    {
      v4 = MEMORY[0x1E695DFF0];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_1B7B319D8;
      v12[3] = &unk_1E7CB7F88;
      v13 = *(a1 + 32);
      v6 = objc_msgSend_timerWithTimeInterval_repeats_block_(v4, v5, 0, v12, 1.0);
      v7 = qword_1EBA53F10;
      qword_1EBA53F10 = v6;

      v10 = objc_msgSend_mainRunLoop(MEMORY[0x1E695DFD0], v8, v9);
      objc_msgSend_addTimer_forMode_(v10, v11, qword_1EBA53F10, *MEMORY[0x1E695DA28]);
    }
  }
}

uint64_t sub_1B7B319D8(uint64_t result, uint64_t a2)
{
  if (qword_1EBA53F10 == a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

__CFString *IMDChatRecordCopyChatsWithHandlesOnServicesWithDisplayNameGroupIDStyleQuery(uint64_t a1, uint64_t a2, char a3, int a4, int a5, int a6)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v13 = objc_msgSend_selectAllColumnsWithAlias(IMDChatQueryStrings, v11, v12);
  CFStringAppend(Mutable, v13);
  v16 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v14, v15);
  isMissingMessagesEnabled = objc_msgSend_isMissingMessagesEnabled(v16, v17, v18);
  if ((a5 | a6) == 1 && isMissingMessagesEnabled)
  {
    CFStringAppend(Mutable, @"INNER JOIN chat_lookup cl ON cl.chat = c.rowid ");
  }

  CFStringAppend(Mutable, CFSTR("WHERE(c.ROWID IN("));
  if (a1 >= 1)
  {
    v20 = 0;
    do
    {
      CFStringAppend(Mutable, @"SELECT chat_id FROM chat_handle_join WHERE handle_id IN (SELECT ROWID FROM handle WHERE id = ?)");
      if (v20 < a1 - 1)
      {
        CFStringAppend(Mutable, @" INTERSECT ");
      }

      ++v20;
    }

    while (a1 != v20);
  }

  CFStringAppend(Mutable, @""));
  if (a2 > 0)
  {
    CFStringAppend(Mutable, @" AND c.service_name IN (");
    do
    {
      CFStringAppend(Mutable, @"?");
      if (a2 != 1)
      {
        CFStringAppend(Mutable, @", ");
      }

      --a2;
    }

    while (a2);
    CFStringAppend(Mutable, @""));
  }

  if (a4)
  {
    CFStringAppend(Mutable, @" AND c.display_name = ?");
  }

  v23 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v21, v22);
  if (objc_msgSend_isMissingMessagesEnabled(v23, v24, v25))
  {
    v26 = a3;
    if (((a5 | a6) & 1) == 0)
    {
      goto LABEL_25;
    }

    v27 = @" AND cl.identifier = ?";
    goto LABEL_24;
  }

  if (a5)
  {
    CFStringAppend(Mutable, @" AND c.group_id = ?");
  }

  v26 = a3;
  if (a6)
  {
    v27 = @" AND c.original_group_id = ?";
LABEL_24:
    CFStringAppend(Mutable, v27);
  }

LABEL_25:
  CFStringAppend(Mutable, @" AND style = ?");
  if ((v26 & 1) == 0)
  {
    CFStringAppend(Mutable, @" AND (SELECT COUNT(handle_id) FROM chat_handle_join WHERE chat_id = c.ROWID) = ?");
  }

  CFStringAppend(Mutable, @" "));
  return Mutable;
}

uint64_t IMDChatRecordCopyChatsFilteredUsingPredicateQuery(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = objc_msgSend_selectAllColumns(IMDChatQueryStrings, v3, v4);
  return objc_msgSend_initWithFormat_(v2, v6, @"%@ WHERE %@", v5, a1);
}

uint64_t IMDChatRecordCopySortedChatsFilteredUsingPredicateWithLimitQuery(uint64_t a1, char *a2, uint64_t a3)
{
  if (a1)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"WHERE %@", a1);
  }

  else
  {
    v4 = &stru_1F2FA9728;
  }

  if (objc_msgSend_count(a2, a2, a3))
  {
    v6 = objc_msgSend_componentsJoinedByString_(a2, v5, @", ");
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, @"ORDER BY %@ ", v6);
  }

  else
  {
    v8 = &stru_1F2FA9728;
  }

  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = objc_msgSend_selectAllColumns(IMDChatQueryStrings, v10, v11);
  return objc_msgSend_initWithFormat_(v9, v13, @"%@ %@ %@ LIMIT ?", v12, v4, v8);
}

void *IMDChatRecordRowIDsWithChatGUIDsQuery(void *a1, const char *a2)
{
  v3 = objc_msgSend_stringWithString_(MEMORY[0x1E696AD60], a2, @"SELECT rowid FROM chat WHERE guid IN (");
  if (objc_msgSend_count(a1, v4, v5))
  {
    v7 = 0;
    do
    {
      objc_msgSend_appendString_(v3, v6, @"?");
      if (v7 < objc_msgSend_count(a1, v8, v9) - 1)
      {
        objc_msgSend_appendString_(v3, v10, @", ");
      }

      ++v7;
    }

    while (v7 < objc_msgSend_count(a1, v10, v11));
  }

  objc_msgSend_appendString_(v3, v6, @""));
  return v3;
}

void *IMDInsertMessagesFromChatsWihGUIDsIntoRecoverableMessageJoinQuery(void *a1, const char *a2)
{
  v3 = objc_msgSend_stringWithString_(MEMORY[0x1E696AD60], a2, @"INSERT OR REPLACE INTO chat_recoverable_message_join (chat_id, message_id, delete_date) SELECT chat_id, message_id, message_date FROM chat_message_join WHERE message_date < ? AND chat_id IN (");
  if (objc_msgSend_count(a1, v4, v5))
  {
    v7 = 0;
    do
    {
      objc_msgSend_appendString_(v3, v6, @"?");
      if (v7 < objc_msgSend_count(a1, v8, v9) - 1)
      {
        objc_msgSend_appendString_(v3, v10, @", ");
      }

      ++v7;
    }

    while (v7 < objc_msgSend_count(a1, v10, v11));
  }

  objc_msgSend_appendString_(v3, v6, @";"));
  return v3;
}

void *IMDDeleteFromChatMessageJoinWhereMessageInRecoveryForChatsWithGUIDsQuery(void *a1, const char *a2)
{
  v3 = objc_msgSend_stringWithString_(MEMORY[0x1E696AD60], a2, @"DELETE FROM chat_message_join WHERE chat_id IN (");
  if (objc_msgSend_count(a1, v4, v5))
  {
    v7 = 0;
    do
    {
      objc_msgSend_appendString_(v3, v6, @"?");
      if (v7 < objc_msgSend_count(a1, v8, v9) - 1)
      {
        objc_msgSend_appendString_(v3, v10, @", ");
      }

      ++v7;
    }

    while (v7 < objc_msgSend_count(a1, v10, v11));
  }

  objc_msgSend_appendString_(v3, v6, @" AND message_id IN (SELECT message_id FROM chat_recoverable_message_join WHERE chat_id IN ("));
  if (objc_msgSend_count(a1, v12, v13))
  {
    v15 = 0;
    do
    {
      objc_msgSend_appendString_(v3, v14, @"?");
      if (v15 < objc_msgSend_count(a1, v16, v17) - 1)
      {
        objc_msgSend_appendString_(v3, v18, @", ");
      }

      ++v15;
    }

    while (v15 < objc_msgSend_count(a1, v18, v19));
  }

  objc_msgSend_appendString_(v3, v14, @");"));
  return v3;
}

uint64_t _IMDPerformBlockWithDelay(uint64_t a1)
{
  if (!a1)
  {
    v1 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEE520(v1, v2);
    }
  }

  if (!IMDSharedThreadedRecordStore())
  {
    v3 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEE5C8(v3, v4);
    }
  }

  return CSDBPerformBlockAfterDelay();
}

uint64_t sub_1B7B32164(uint64_t a1)
{
  IMDEnsureSharedRecordStoreInitialized();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void _IMDPerformLockedMessageStoreBlockWithoutInitialize(uint64_t a1)
{
  if (a1)
  {
    IMDSharedThreadedRecordStore();
    v2 = CSDBRecordStoreRefFromThreadedRecordStoreRef();
    v3 = *(a1 + 16);

    v3(a1, v2);
  }

  else
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEE7C0(v4, v5);
    }
  }
}

uint64_t _IMDPerformLockedConnectionBlock(uint64_t a1)
{
  if (a1)
  {
    IMDEnsureSharedRecordStoreInitialized();
    memset(v13, 0, sizeof(v13));
    IMDSqlOperationInitWithSharedCSDBDatabase(v13);
    if (!IMDSharedThreadedRecordStore())
    {
      v2 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEEC58(v2, v3);
      }
    }

    v4 = CSDBRecordStoreRefFromThreadedRecordStoreRef();
    if (!v4)
    {
      v5 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEED00(v5, v6);
      }
    }

    v7 = CSDBSqliteDatabaseFromThreadedRecordStoreRef();
    if (!v7)
    {
      v8 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEEDA8(v8, v9);
      }
    }

    (*(a1 + 16))(a1, v4, v7, *(&v13[0] + 1));
    return IMDSqlOperationRelease(v13, 0);
  }

  else
  {
    v11 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEEE50(v11, v12);
    }

    return IMDEnsureSharedRecordStoreInitialized();
  }
}

const void *IMDBridgedRecordGetPropertyValue(void *a1, CFIndex a2)
{
  v3 = a1;
  v6 = *objc_msgSend__localCache(v3, v4, v5);
  if (!v6 || (ValueAtIndex = CFArrayGetValueAtIndex(v6, a2)) == 0)
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1B7B32478;
      v9[3] = &unk_1E7CB8000;
      v10 = v3;
      v11 = &v13;
      v12 = a2;
      _IMDPerformBlock(v9);
      ValueAtIndex = v14[3];

      _Block_object_dispose(&v13, 8);
    }

    else
    {
      ValueAtIndex = 0;
    }
  }

  return ValueAtIndex;
}

void sub_1B7B32460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B32478(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__copyUpdatedRecord(*(a1 + 32), a2, a3);
  if (v4)
  {
    v6 = v4;
    objc_msgSend__propertyIDForProperty_(*(a1 + 32), v5, *(a1 + 48));
    *(*(*(a1 + 40) + 8) + 24) = CSDBRecordGetProperty();

    CFRelease(v6);
  }
}

uint64_t IMDBridgedRecordCopyPropertyNumberAsInteger64(void *a1, uint64_t a2)
{
  v2 = IMDBridgedRecordCopyPropertyValue(a1, a2);
  v5 = objc_msgSend_longLongValue(v2, v3, v4);

  return v5;
}

id IMDBridgedRecordGetPropertyKeyPathToColumnsMap(objc_class *a1)
{
  pthread_rwlock_rdlock(&stru_1EDBE5750);
  v2 = qword_1EDBE5820;
  v3 = NSStringFromClass(a1);
  v5 = objc_msgSend_objectForKeyedSubscript_(v2, v4, v3);

  pthread_rwlock_unlock(&stru_1EDBE5750);

  return v5;
}

void IMDBridgedRecordEncode(void *a1, void *a2)
{
  v3 = a1;
  v6 = a2;
  if (v3)
  {
    v7 = *objc_msgSend__localCache(v3, v4, v5);
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v10 = objc_msgSend__copyUpdatedRecord(v3, v8, v9);
    }

    else
    {
      v10 = 0;
    }

    if (objc_msgSend__recordPropertyCount(v3, v8, v9))
    {
      for (i = 0; i < objc_msgSend__recordPropertyCount(v3, v21, v22); ++i)
      {
        v13 = objc_msgSend__propertyDescriptorForProperty_(v3, v11, i);
        v15 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, @"_record_property_%s", *v13);
        if (IMDIsRunningInDatabaseServerProcess())
        {
          objc_msgSend__propertyIDForProperty_(v3, v16, i);
          Property = CSDBRecordGetProperty();
        }

        else
        {
          Property = CFArrayGetValueAtIndex(v7, i);
        }

        v19 = v13[1];
        if (v19 > 1)
        {
          if (v19 != 2)
          {
            if (v19 == 3)
            {
              valuePtr = 0;
              if (Property)
              {
                CFNumberGetValue(Property, kCFNumberSInt64Type, &valuePtr);
                v20 = valuePtr;
              }

              else
              {
                v20 = 0;
              }

              objc_msgSend_encodeInt64_forKey_(v6, v18, v20, v15);
            }

            goto LABEL_22;
          }
        }

        else
        {
          if (!v19)
          {
            objc_msgSend_encodeInt64_forKey_(v6, v18, Property, v15);
            goto LABEL_22;
          }

          if (v19 != 1)
          {
            goto LABEL_22;
          }
        }

        objc_msgSend_encodeObject_forKey_(v6, v18, Property, v15);
LABEL_22:
      }
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }
}

void IMDBridgedRecordDecode(void *a1, void *a2)
{
  v29 = a1;
  v5 = a2;
  if (v29)
  {
    v6 = objc_msgSend__recordPropertyCount(v29, v3, v4);
    for (i = CFArrayCreateMutable(0, v6, 0); v6; --v6)
    {
      CFArrayAppendValue(i, 0);
    }

    if (objc_msgSend__recordPropertyCount(v29, v7, v8))
    {
      for (j = 0; j < objc_msgSend__recordPropertyCount(v29, v27, v28); ++j)
      {
        v13 = objc_msgSend__propertyDescriptorForProperty_(v29, v10, j);
        v14 = v13[2];
        v17 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v15, @"_record_property_%s", *v13);
        v18 = 0;
        v19 = v13[1];
        if (v19 > 1)
        {
          if (v19 == 2)
          {
LABEL_14:
            v24 = objc_opt_class();
            v23 = objc_msgSend_decodeObjectOfClass_forKey_(v5, v25, v24, v17);
LABEL_15:
            v18 = v23;
            if (v23)
            {
              v26 = v14 == 0;
            }

            else
            {
              v26 = 1;
            }

            if (!v26 && *v14)
            {
              v18 = (*v14)(v23);
            }

            goto LABEL_21;
          }

          if (v19 == 3)
          {
            v20 = MEMORY[0x1E696AD98];
            v21 = objc_msgSend_decodeInt64ForKey_(v5, v16, v17);
            v23 = objc_msgSend_numberWithLongLong_(v20, v22, v21);
            goto LABEL_15;
          }
        }

        else
        {
          if (!v19)
          {
            v23 = objc_msgSend_decodeInt64ForKey_(v5, v16, v17);
            goto LABEL_15;
          }

          if (v19 == 1)
          {
            goto LABEL_14;
          }
        }

LABEL_21:
        CFArraySetValueAtIndex(i, j, v18);
      }
    }

    *objc_msgSend__localCache(v29, v10, v11) = i;
  }
}

__CFArray *IMDRecordCreateLocalCache(CFIndex capacity)
{
  v1 = capacity;
  Mutable = CFArrayCreateMutable(0, capacity, 0);
  if (v1 >= 1)
  {
    do
    {
      CFArrayAppendValue(Mutable, 0);
      --v1;
    }

    while (v1);
  }

  return Mutable;
}

const void *IMDRecordCopyLocalCacheObject(const __CFArray *a1, uint64_t a2, CFIndex idx)
{
  v3 = *(a2 + 16);
  result = CFArrayGetValueAtIndex(a1, idx);
  if (result)
  {
    if (v3)
    {
      v5 = *v3;
      if (*v3)
      {

        return v5();
      }
    }
  }

  return result;
}

void IMDRecordSetLocalCacheObject(const __CFArray *a1, uint64_t a2, CFIndex a3, void *a4)
{
  v11 = a4;
  v7 = *(a2 + 16);
  if (CFArrayGetValueAtIndex(a1, a3))
  {
    if (v7)
    {
      v8 = *(v7 + 8);
      if (v8)
      {
        v8();
      }
    }
  }

  v9 = v11;
  if (v11 && v7 && *v7)
  {
    v10 = (*v7)(v11);

    v9 = v10;
  }

  v12 = v9;
  CFArraySetValueAtIndex(a1, a3, v9);
}

void sub_1B7B32AB8()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = qword_1EDBE5820;
  qword_1EDBE5820 = v0;

  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = qword_1EDBE5818;
  qword_1EDBE5818 = v2;
}

const void *sub_1B7B32B14(void *a1, const char *a2)
{
  v3 = a1;
  v4 = sub_1B7AF0958(v3, a2);
  PropertyValue = IMDBridgedRecordGetPropertyValue(v3, v4);

  return PropertyValue;
}

uint64_t sub_1B7B32B5C(void *a1, const char *a2)
{
  v2 = MEMORY[0x1E695DF00];
  v5 = sub_1B7B32B14(a1, a2);

  return objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(v2, v3, v4, v5);
}

uint64_t sub_1B7B32B9C(void *a1, const char *a2)
{
  v3 = a1;
  v4 = sub_1B7AF0958(v3, a2);
  v5 = IMDBridgedRecordCopyPropertyValue(v3, v4);

  v8 = objc_msgSend_longLongValue(v5, v6, v7);
  return v8;
}

uint64_t sub_1B7B32BF4(void *a1, const char *a2)
{
  v2 = MEMORY[0x1E695DF00];
  v5 = sub_1B7B32B9C(a1, a2);

  return objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(v2, v3, v4, v5);
}

void sub_1B7B32E1C(uint64_t a1, const char *a2)
{
  v13[14] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69A6B70];
  v12[0] = @"rowID";
  v12[1] = v2;
  v13[0] = @"ROWID";
  v13[1] = @"guid";
  v3 = *MEMORY[0x1E69A6B78];
  v12[2] = *MEMORY[0x1E69A6B18];
  v12[3] = v3;
  v13[2] = @"chat_identifier";
  v13[3] = @"group_id";
  v4 = *MEMORY[0x1E69A6CA8];
  v12[4] = *MEMORY[0x1E69A6C98];
  v12[5] = v4;
  v13[4] = @"service_name";
  v13[5] = @"style";
  v5 = *MEMORY[0x1E69A6BC0];
  v12[6] = *MEMORY[0x1E69A6B48];
  v12[7] = v5;
  v13[6] = @"display_name";
  v13[7] = @"is_filtered";
  v6 = *MEMORY[0x1E69A6BD8];
  v12[8] = *MEMORY[0x1E69A6B40];
  v12[9] = v6;
  v13[8] = @"ck_sync_state";
  v13[9] = @"is_recovered";
  v7 = *MEMORY[0x1E69A6BD0];
  v12[10] = *MEMORY[0x1E69A6BB0];
  v12[11] = v7;
  v13[10] = @"is_deleting_incoming_messages";
  v13[11] = @"is_pending_review";
  v8 = *MEMORY[0x1E69A6C18];
  v12[12] = *MEMORY[0x1E69A6BE0];
  v12[13] = v8;
  v13[12] = @"state";
  v13[13] = @"last_read_message_timestamp";
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v13, v12, 14);
  v10 = qword_1EDBE5B28;
  qword_1EDBE5B28 = v9;

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1B7B33138()
{
  v0 = objc_alloc_init(IMExtensionNotificationManager);
  v1 = qword_1EDBE5AD0;
  qword_1EDBE5AD0 = v0;
}

xpc_object_t _IMDPersistenceIPCCopyConnectionWithForceNew(int a1)
{
  if (qword_1EDBE7988 == -1)
  {
    if (!a1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B7CEEF34();
    if (!a1)
    {
      goto LABEL_6;
    }
  }

  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Forcing a new xpc connection", v6, 2u);
  }

  sub_1B7B3398C();
LABEL_6:
  pthread_mutex_lock(&stru_1EDBE5A80);
  v3 = qword_1EDBE7978;
  if (qword_1EDBE7978 || (qword_1EDBE7978 = IMXPCCreateConnectionForServiceWithQueue(), IMXPCConfigureConnection(), (v3 = qword_1EDBE7978) != 0))
  {
    v4 = xpc_retain(v3);
  }

  else
  {
    v4 = 0;
  }

  pthread_mutex_unlock(&stru_1EDBE5A80);
  return v4;
}

void sub_1B7B33930()
{
  v0 = dispatch_queue_create("com.apple.IMDPersistenceIPCQueue", 0);
  qword_1EDBE7980 = v0;
  global_queue = dispatch_get_global_queue(0, 0);

  dispatch_set_target_queue(v0, global_queue);
}

uint64_t sub_1B7B3398C()
{
  v0 = IMLogHandleForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_INFO, "IMDPersistenceAgent disconnected", v2, 2u);
  }

  pthread_mutex_lock(&stru_1EDBE5A80);
  if (qword_1EDBE7978)
  {
    xpc_connection_cancel(qword_1EDBE7978);
    xpc_release(qword_1EDBE7978);
    qword_1EDBE7978 = 0;
  }

  return pthread_mutex_unlock(&stru_1EDBE5A80);
}

uint64_t IMDSqlOperationInvalidateCaches(uint64_t a1)
{
  if (!a1)
  {
    v1 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEEF48(v1, v2);
    }
  }

  if (!IMDSharedThreadedRecordStore())
  {
    v3 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEEFF0(v3, v4);
    }
  }

  if (!CSDBRecordStoreRefFromThreadedRecordStoreRef())
  {
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEF098(v5, v6);
    }
  }

  return CSDBRecordStoreInvalidateCachesWithStore();
}

void IMDSqlOperationUpdateLastDeleteSequenceNumber(uint64_t a1)
{
  if (!a1 || !*(a1 + 8))
  {
    v2 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEF140(v2, v3);
    }
  }

  if (!IMDSharedThreadedRecordStore())
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = IMFileLocationTrimFileName();
    v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v6, &stru_1F2FA9728);
    v9 = objc_msgSend_stringWithFormat_(v4, v8, @"Unexpected nil '%@' in %s at %s:%d. %@", @"IMDSharedThreadedRecordStore()", "void IMDSqlOperationUpdateLastDeleteSequenceNumber(IMDSqlOperation *)", v5, 48, v7);
    v10 = IMGetAssertionFailureHandler();
    if (v10)
    {
      v10(v9);
    }

    else
    {
      v13 = objc_msgSend_warning(MEMORY[0x1E69A6138], v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }
  }

  IMDSharedThreadedRecordStore();
  if (CSDBRecordStoreRefFromThreadedRecordStoreRef())
  {
    goto LABEL_15;
  }

  v14 = MEMORY[0x1E696AEC0];
  v15 = IMFileLocationTrimFileName();
  v17 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v16, &stru_1F2FA9728);
  v19 = objc_msgSend_stringWithFormat_(v14, v18, @"Unexpected nil '%@' in %s at %s:%d. %@", @"CSDBRecordStoreRefFromThreadedRecordStoreRef(IMDSharedThreadedRecordStore())", "void IMDSqlOperationUpdateLastDeleteSequenceNumber(IMDSqlOperation *)", v15, 49, v17);
  v20 = IMGetAssertionFailureHandler();
  if (v20)
  {
    v20(v19);
    if (!a1)
    {
      return;
    }

    goto LABEL_16;
  }

  v23 = objc_msgSend_warning(MEMORY[0x1E69A6138], v21, v22);
  if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
LABEL_15:
    if (!a1)
    {
      return;
    }

    goto LABEL_16;
  }

  sub_1B7CEE318();
  if (!a1)
  {
    return;
  }

LABEL_16:
  if (*(a1 + 8))
  {
    goto LABEL_20;
  }

  v24 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CEF1E8(v24, v25);
  }

  if (*(a1 + 8))
  {
LABEL_20:
    CSDBSqliteConnectionIntegerForProperty();
    CSDBSqliteConnectionSetIntegerForProperty();
    _IMDSMSRecordStoreUpdateLastDeleteSequenceNumberUnlocked();
  }
}

void IMDSqlOperationInitWithThreadedMessageStore(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = IMFileLocationTrimFileName();
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v5, &stru_1F2FA9728);
    v8 = objc_msgSend_stringWithFormat_(v3, v7, @"Unexpected nil '%@' in %s at %s:%d. %@", @"messageStore", "IMDSqlOperation IMDSqlOperationInitWithThreadedMessageStore(CSDBThreadedRecordStoreRef)", v4, 119, v6);
    v9 = IMGetAssertionFailureHandler();
    if (v9)
    {
      v9(v8);
    }

    else
    {
      v12 = objc_msgSend_warning(MEMORY[0x1E69A6138], v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }
  }

  v13 = CSDBSqliteDatabaseFromThreadedRecordStoreRef();
  IMDSqlOperationInitWithCSDBDatabase(v13, a2);
}

void IMDSqlOperationInitAndCreateIfNeededWithPath(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (!a1)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = IMFileLocationTrimFileName();
    v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v6, &stru_1F2FA9728);
    v9 = objc_msgSend_stringWithFormat_(v4, v8, @"Unexpected nil '%@' in %s at %s:%d. %@", @"path", "IMDSqlOperation IMDSqlOperationInitAndCreateIfNeededWithPath(NSString *)", v5, 124, v7);
    v10 = IMGetAssertionFailureHandler();
    if (v10)
    {
      v10(v9);
    }

    else
    {
      v13 = objc_msgSend_warning(MEMORY[0x1E69A6138], v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }
  }

  v14 = IMDCreateThreadedRecordStoreWithPath(a1);
  *a2 = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  a2[7] = 0u;
  a2[8] = 0u;
  a2[9] = 0u;
  a2[10] = 0u;
  IMDSqlOperationInitWithThreadedMessageStore(v14, a2);
  IMDSqlOperationSetThreadedMessageStore(a2, v14);
}

void IMDSqlOperationSetThreadedMessageStore(uint64_t a1, void *a2)
{
  if (a1)
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      *(a1 + 24) = 0;
    }

    if (a2)
    {
      *(a1 + 24) = a2;
    }
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = IMFileLocationTrimFileName();
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, &stru_1F2FA9728);
    v10 = objc_msgSend_stringWithFormat_(v5, v9, @"Unexpected nil '%@' in %s at %s:%d. %@", @"operation", "void IMDSqlOperationSetThreadedMessageStore(IMDSqlOperation *, CSDBThreadedRecordStoreRef)", v6, 163, v8);
    v11 = IMGetAssertionFailureHandler();
    if (v11)
    {
      v11(v10);
    }

    else
    {
      v14 = objc_msgSend_warning(MEMORY[0x1E69A6138], v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }
  }
}

void IMDSqlOperationInitWithPath(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (!a1)
  {
    v27[0] = xmmword_1E7CB8138;
    v27[1] = *off_1E7CB8148;
    v28 = 137;
    v9 = MEMORY[0x1E696AEC0];
    v10 = IMFileLocationTrimFileName();
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, &stru_1F2FA9728);
    v14 = objc_msgSend_stringWithFormat_(v9, v13, @"Unexpected nil '%@' in %s at %s:%d. %@", @"path", "IMDSqlOperation IMDSqlOperationInitWithPath(NSString *)", v10, 137, v12);
    v15 = IMGetAssertionFailureHandler();
    if (v15)
    {
      v15(v14);
    }

    else
    {
      v18 = objc_msgSend_warning(MEMORY[0x1E69A6138], v16, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }

    LOBYTE(v27[0]) = 0;
    goto LABEL_9;
  }

  LOBYTE(v27[0]) = 0;
  v6 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, a3);
  if ((objc_msgSend_fileExistsAtPath_isDirectory_(v6, v7, a1, v27) & 1) == 0)
  {
LABEL_9:
    a4[9] = 0u;
    a4[10] = 0u;
    a4[7] = 0u;
    a4[8] = 0u;
    a4[5] = 0u;
    a4[6] = 0u;
    a4[3] = 0u;
    a4[4] = 0u;
    a4[1] = 0u;
    a4[2] = 0u;
    *a4 = 0u;
    v19 = objc_alloc(MEMORY[0x1E696ABC0]);
    v20 = *MEMORY[0x1E696A250];
    v21 = MEMORY[0x1E695DF20];
    v23 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v22, @"Database not found at %@", a1);
    v25 = objc_msgSend_dictionaryWithObject_forKey_(v21, v24, v23, *MEMORY[0x1E696A578]);
    v8 = objc_msgSend_initWithDomain_code_userInfo_(v19, v26, v20, 4, v25);
    IMDSqlOperationSetError(a4, v8);
    goto LABEL_10;
  }

  v8 = IMDCreateThreadedRecordStoreWithPath(a1);
  *a4 = 0u;
  a4[1] = 0u;
  a4[2] = 0u;
  a4[3] = 0u;
  a4[4] = 0u;
  a4[5] = 0u;
  a4[6] = 0u;
  a4[7] = 0u;
  a4[8] = 0u;
  a4[9] = 0u;
  a4[10] = 0u;
  IMDSqlOperationInitWithThreadedMessageStore(v8, a4);
  IMDSqlOperationSetThreadedMessageStore(a4, v8);
LABEL_10:
}

void sub_1B7B346D4()
{
  qword_1EDBE7968 = _CFRuntimeRegisterClass();
  v0 = objc_opt_class();
  class_getName(v0);
  _CFRuntimeBridgeClasses();
  v1 = objc_opt_class();
  v4 = *(objc_msgSend_messageRecordDescriptor(IMDLegacyRecordBridge, v2, v3) + 80);

  IMDBridgedRecordPopulatePropertyImplementations(v1, v4, 93);
}

_OWORD *IMDMessageRecordCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    pthread_once(&stru_1EDBE5A60, sub_1B7B346D4);
    Instance = _CFRuntimeCreateInstance();

    return sub_1B7B34C14(Instance, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57);
  }

  else
  {
    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v71 = 0;
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = sub_1B7B3527C;
    v67[3] = &unk_1E7CB6838;
    v67[4] = &v68;
    __syncXPCIMDMessageRecordCreate_IPCAction(v67, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a2, a21, a23, a24, a25, a22, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57);
    v59 = v69[3];
    _Block_object_dispose(&v68, 8);
    return v59;
  }
}

_OWORD *sub_1B7B34C14(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v191 = *MEMORY[0x1E69E9840];
  v101 = a5;
  valuePtr = a4;
  v99 = a7;
  v100 = a6;
  v61 = IMDIsRunningInDatabaseServerProcess();
  v62 = 0;
  if (a1 && v61)
  {
    a1[1] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    if (IMOSLoggingEnabled())
    {
      v63 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v63, OS_LOG_TYPE_DEBUG, "_IMDMessageRecordCreate()", buf, 2u);
      }
    }

    IMDEnsureSharedRecordStoreInitialized();
    objc_msgSend_messageRecordDescriptor(IMDLegacyRecordBridge, v64, v65);
    v68 = CSDBRecordCreate();
    if (v68)
    {
      v69 = objc_msgSend_unsignedLongLongValue(a11, v66, v67);
      v70 = v69;
      v71 = (v69 >> 13) & 1;
      if ((v69 >> 19))
      {
        v72 = 0;
      }

      else
      {
        v72 = (v69 >> 12) & 1;
      }

      if ((v69 >> 19))
      {
        v71 = 0;
      }

      v88 = v71;
      v89 = (v69 >> 19) & 1;
      cf = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
      v96 = CFNumberCreate(0, kCFNumberSInt64Type, &v101);
      v95 = CFNumberCreate(0, kCFNumberSInt64Type, &v100);
      v94 = CFNumberCreate(0, kCFNumberSInt64Type, &v99);
      v93 = CFNumberCreate(0, kCFNumberSInt64Type, &a35);
      v73 = CFNumberCreate(0, kCFNumberSInt64Type, &a44);
      v92 = CFNumberCreate(0, kCFNumberSInt64Type, &a50);
      v91 = CFNumberCreate(0, kCFNumberSInt64Type, &a51);
      v90 = CFNumberCreate(0, kCFNumberSInt64Type, &a49);
      v98 = 0;
      v74 = CFNumberCreate(0, kCFNumberSInt64Type, &v98);
      v110 = a3;
      v114 = a17;
      v116 = a13;
      v117 = 10;
      v118 = a9;
      v119 = a14;
      v120 = a15;
      v121 = a16;
      v122 = a8;
      v77 = vdupq_n_s64(1uLL);
      v126 = v72;
      v127 = 1;
      v131 = v88;
      v134 = (v70 >> 18) & 1;
      v135 = v89;
      v139 = (v70 >> 20) & 1;
      if (a28)
      {
        v78 = 0;
      }

      else
      {
        v78 = a2;
      }

      v143 = v78;
      v145 = a22;
      v146 = a23;
      v147 = a24;
      v148 = a25;
      v149 = (v70 >> 24) & 1;
      v150 = a26;
      v151 = a27;
      v152 = (v70 >> 25) & 1;
      v153 = a28;
      v154 = a29;
      v155 = a32;
      v156 = a33;
      v157 = a34;
      v158 = a30;
      v159 = a31;
      v161 = a36;
      v162 = a37;
      v163 = a38;
      v164 = a40;
      v165 = a42;
      v166 = (v70 >> 26) & 1;
      v167 = a43;
      v168 = v73;
      v170 = a45;
      v171 = a46;
      v172 = a47;
      v173 = a48;
      v175 = v74;
      v178 = (v70 >> 36) & 1;
      v79 = vdupq_n_s64(v70);
      v141 = vandq_s8(vshlq_u64(v79, xmmword_1B7D09510), v77);
      v180 = vandq_s8(vshlq_u64(v79, xmmword_1B7D09540), v77);
      v181 = (v70 >> 38) & 1;
      v182 = a52;
      v183 = (v70 >> 37) & 1;
      v184 = a53;
      v185 = a54;
      v187 = a55;
      v188 = a56;
      v128 = vandq_s8(vshlq_u64(v79, xmmword_1B7D094C0), v77);
      v129 = vandq_s8(vshlq_u64(v79, xmmword_1B7D094D0), v77);
      v130 = vandq_s8(vshlq_u64(v79, xmmword_1B7D094E0), v77);
      v132 = vandq_s8(vshlq_u64(v79, xmmword_1B7D094F0), v77);
      v133 = vandq_s8(vshlq_u64(v79, xmmword_1B7D09500), v77);
      v169 = vandq_s8(vshlq_u64(v79, xmmword_1B7D09520), v77);
      v174 = vandq_s8(vshlq_u64(v79, xmmword_1B7D09530), v77);
      v186 = vandq_s8(vshlq_u64(v79, xmmword_1B7D09550), v77);
      v189 = vandq_s8(vshlq_u64(v79, xmmword_1B7D09560), v77);
      v190 = a57;
      v111 = a10;
      v112 = 0;
      *buf = a12;
      v113 = 0;
      v115 = 0;
      v137 = 0;
      v138 = 0;
      v123 = cf;
      v124 = v96;
      v125 = v95;
      v136 = 0;
      v140 = 0;
      v142 = v94;
      v144 = 0;
      v160 = v93;
      v176 = v92;
      v177 = v91;
      v179 = v90;
      if (*(objc_msgSend_messageRecordDescriptor(IMDLegacyRecordBridge, v75, v76, v88, v89) + 72) != 93)
      {
        v80 = IMLogHandleForCategory();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CEF338();
        }
      }

      for (i = 0; i != 186; i += 2)
      {
        v82 = dword_1B7D09578[i];
        v83 = *&buf[i * 4];
        CSDBRecordSetProperty();
      }

      if (IMDMessageRecordAddMessageRecord(v68))
      {
        *(a1 + 2) = CSDBRecordGetID();
        if (IMOSLoggingEnabled())
        {
          v84 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
          {
            v85 = *(a1 + 2);
            *v103 = 138412802;
            v104 = a1;
            v105 = 2048;
            v106 = v85;
            v107 = 2112;
            v108 = a12;
            _os_log_impl(&dword_1B7AD5000, v84, OS_LOG_TYPE_DEBUG, "New message record [%@] has ID [%lld]  [%@].", v103, 0x20u);
          }
        }

        v62 = a1;
      }

      else
      {
        CFRelease(a1);
        v62 = 0;
      }

      CFRelease(v68);
      if (cf)
      {
        CFRelease(cf);
      }

      if (v95)
      {
        CFRelease(v95);
      }

      if (v96)
      {
        CFRelease(v96);
      }

      if (v94)
      {
        CFRelease(v94);
      }

      if (v93)
      {
        CFRelease(v93);
      }

      if (v92)
      {
        CFRelease(v92);
      }

      if (v91)
      {
        CFRelease(v91);
      }

      if (v90)
      {
        CFRelease(v90);
      }
    }

    else
    {
      CFRelease(a1);
      v62 = 0;
    }
  }

  v86 = *MEMORY[0x1E69E9840];
  return v62;
}

uint64_t sub_1B7B3527C(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDMessageRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDMessageRecordGetRecordIdentifier(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    result = CSDBRecordGetID();
  }

  else
  {
    v2 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = 0;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Attempted to get record identifier for NULL record: %@", &v4, 0xCu);
    }

    result = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IMDMessageRecordCopyGUIDUnlocked(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v9 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEF43C(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    return 0;
  }

  if (!*(a2 + 24))
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1B7B354B0;
    v17[3] = &unk_1E7CB7920;
    v17[4] = &v18;
    v17[5] = a2;
    _IMDPerformBlock(v17);
    ValueAtIndex = v19[3];
    _Block_object_dispose(&v18, 8);
    return ValueAtIndex;
  }

  v4 = *(*(objc_msgSend_messageRecordDescriptor(IMDLegacyRecordBridge, a2, a3) + 80) + 16);
  ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 24), 0);
  if (ValueAtIndex)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return ValueAtIndex;
  }

  v7 = *v4;
  if (!*v4)
  {
    return ValueAtIndex;
  }

  return v7();
}

void sub_1B7B35498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B354B0(uint64_t a1)
{
  v2 = IMDMessageRecordCopyMessageRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

uint64_t IMDMessageRecordCopyText(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v9 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEF4B4(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    return 0;
  }

  if (!*(a2 + 24))
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1B7B3566C;
    v17[3] = &unk_1E7CB7920;
    v17[4] = &v18;
    v17[5] = a2;
    _IMDPerformBlock(v17);
    ValueAtIndex = v19[3];
    _Block_object_dispose(&v18, 8);
    return ValueAtIndex;
  }

  v4 = *(*(objc_msgSend_messageRecordDescriptor(IMDLegacyRecordBridge, a2, a3) + 80) + 56);
  ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 24), 1);
  if (ValueAtIndex)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return ValueAtIndex;
  }

  v7 = *v4;
  if (!*v4)
  {
    return ValueAtIndex;
  }

  return v7();
}

void sub_1B7B35654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B3566C(uint64_t a1)
{
  v2 = IMDMessageRecordCopyMessageRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

uint64_t IMDMessageRecordGetDate(uint64_t a1, const char *a2, uint64_t a3)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = -1;
  if (a1)
  {
    v3 = a2;
    if (*(a1 + 24))
    {
      v5 = *(*(objc_msgSend_messageRecordDescriptor(IMDLegacyRecordBridge, a2, a3) + 80) + 576);
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), 14);
      v7 = ValueAtIndex;
      if (ValueAtIndex && v5)
      {
        if (!*v5)
        {
LABEL_8:
          CFNumberGetValue(v7, kCFNumberSInt64Type, v20 + 3);
          CFRelease(v7);
          goto LABEL_14;
        }

        v7 = (*v5)(ValueAtIndex);
      }

      if (v7)
      {
        goto LABEL_8;
      }
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1B7B35854;
    v18[3] = &unk_1E7CB7920;
    v18[4] = &v19;
    v18[5] = a1;
    if (v3)
    {
      _IMDPerformBlock(v18);
    }

    else
    {
      sub_1B7B35854(v18);
    }
  }

  else
  {
    v8 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEF5A4(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

LABEL_14:
  v16 = v20[3];
  _Block_object_dispose(&v19, 8);
  return v16;
}

void sub_1B7B35834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B35854(uint64_t a1)
{
  v2 = IMDMessageRecordCopyMessageRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    v4 = CSDBRecordCopyProperty();
    if (v4)
    {
      v5 = v4;
      CFNumberGetValue(v4, kCFNumberSInt64Type, (*(*(a1 + 32) + 8) + 24));
      CFRelease(v5);
    }

    CFRelease(v3);
  }
}

uint64_t IMDMessageRecordWasDeduplicated(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a1)
  {
    if (*(a1 + 24))
    {
      v4 = *(*(objc_msgSend_messageRecordDescriptor(IMDLegacyRecordBridge, a2, a3) + 80) + 1456);
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), 36);
      v6 = ValueAtIndex;
      if (ValueAtIndex)
      {
        v7 = v4 == 0;
      }

      else
      {
        v7 = 1;
      }

      if (!v7 && *v4)
      {
        return (*v4)(ValueAtIndex);
      }
    }

    else
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = sub_1B7B35A20;
      v17[3] = &unk_1E7CB7920;
      v17[4] = &v18;
      v17[5] = a1;
      _IMDPerformBlock(v17);
      v6 = *(v19 + 24);
      _Block_object_dispose(&v18, 8);
    }
  }

  else
  {
    v8 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEF70C(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    return 0;
  }

  return v6;
}

void sub_1B7B35A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B35A20(uint64_t a1)
{
  v2 = IMDMessageRecordCopyMessageRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordGetProperty();

    CFRelease(v3);
  }
}

void IMDMessageRecordSetWasDeduplicated(uint64_t a1, char a2)
{
  if (a1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1B7B35B34;
    v3[3] = &unk_1E7CB8188;
    v3[4] = a1;
    v4 = a2;
    _IMDPerformBlock(v3);
  }

  else
  {
    v2 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEF780();
    }
  }
}

void sub_1B7B35B34(uint64_t a1)
{
  v2 = IMDMessageRecordCopyMessageRecordUnlocked(*(*(a1 + 32) + 16));
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 40);
    CSDBRecordSetProperty();

    IMDSMSRecordStoreRecordCommitChangesAndReleaseUnlocked(v3);
  }
}

uint64_t IMDMessageRecordCopyChatsForMessageIdentifier(int64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1B7B35CD4;
    v5[3] = &unk_1E7CB7520;
    v5[4] = &v6;
    v5[5] = a1;
    _IMDPerformLockedStatementBlockWithQuery(@"SELECT chat_id FROM chat_message_join WHERE message_id = ?;", v5);
  }

  else
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1B7B35DB0;
    v4[3] = &unk_1E7CB6838;
    v4[4] = &v6;
    __syncXPCIMDMessageRecordCopyChats_IPCAction(v4, a1);
  }

  v2 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t sub_1B7B35CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  CSDBSqliteBindInt();
  result = sqlite3_step(*(a4 + 8));
  if (result == 100)
  {
    v8 = *MEMORY[0x1E695E480];
    v9 = MEMORY[0x1E695E9C0];
    do
    {
      if (!*(*(*(a1 + 32) + 8) + 24))
      {
        *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, v9);
      }

      v10 = sqlite3_column_int(*(a4 + 8), 0);
      v11 = IMDChatRecordCreateFromRecordIDUnlocked(v8, v10);
      if (v11)
      {
        v12 = v11;
        CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v11);
        CFRelease(v12);
      }

      result = sqlite3_step(*(a4 + 8));
    }

    while (result == 100);
  }

  return result;
}

xpc_object_t sub_1B7B35DB0(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7B35E44;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7B35E44(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v5 = objc_autoreleasePoolPush();
  v6 = _IMDCopyIMDChatRecordFromXPCObjectClient(a3);
  if (v6)
  {
    v7 = v6;
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v6);
    CFRelease(v7);
  }

  objc_autoreleasePoolPop(v5);
  return 1;
}

uint64_t IMDMessageRecordCopyAttachmentsWithLock(uint64_t a1)
{
  Identifier = IMDMessageRecordGetIdentifier(a1);

  return IMDMessageRecordCopyAttachmentsForIDWithLock(Identifier);
}

uint64_t IMDMessageRecordCopyAttachments(uint64_t a1)
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    Identifier = IMDMessageRecordGetIdentifier(a1);

    return IMDMessageRecordCopyAttachmentsForIDWithLock(Identifier);
  }

  else
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = CFRetain(v4);
    }

    else
    {
      v6 = IMDMessageRecordGetIdentifier(a1);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = sub_1B7B36028;
      v7[3] = &unk_1E7CB6838;
      v7[4] = &v8;
      __syncXPCIMDMessageRecordCopyAttachments_IPCAction(v7, v6);
      v5 = v9[3];
    }

    _Block_object_dispose(&v8, 8);
    return v5;
  }
}

void sub_1B7B3600C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

xpc_object_t sub_1B7B36028(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7B360BC;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7B360BC(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v5 = _IMDCopyIMDAttachmentRecordFromXPCObjectClient(a3);
  if (v5)
  {
    v6 = v5;
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v5);
    CFRelease(v6);
  }

  return 1;
}

const __CFString *IMDMessageRecordCopyThreadCountsByPart(uint64_t a1)
{
  v2 = IMDIsRunningInDatabaseServerProcess();
  if (v2)
  {
    v4 = IMDMessageRecordCopyGUID(v2, a1, v3);
    v5 = IMDMessageRecordCountMessagesWithThreadOriginatorGroupedByParts(v4);
    if (v4)
    {
      CFRelease(v4);
    }

    return v5;
  }

  v6 = *(a1 + 56);
  if (!v6)
  {
    return 0;
  }

  return CFRetain(v6);
}

uint64_t sub_1B7B361B8(uint64_t a1, uint64_t a2)
{
  if (!(a1 | a2))
  {
    return 0;
  }

  if (a1 && !a2)
  {
    return 1;
  }

  if (!a1 && a2)
  {
    return -1;
  }

  v5 = *MEMORY[0x1E695E480];
  v6 = IMDAttachmentRecordCopyGUID(*MEMORY[0x1E695E480], a1);
  v7 = IMDAttachmentRecordCopyGUID(v5, a2);
  v3 = CFStringCompare(v6, v7, 0x40uLL);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v3;
}

void sub_1B7B36300(uint64_t a1)
{
  v2 = IMDMessageRecordCopyMessageRecordUnlocked(*(*(a1 + 32) + 16));
  if (v2)
  {
    v3 = v2;
    if (*(a1 + 40))
    {
      **(a1 + 40) = CSDBRecordGetID();
    }

    if (*(a1 + 48))
    {
      **(a1 + 48) = sub_1B7B36E14();
    }

    if (*(a1 + 56))
    {
      **(a1 + 56) = sub_1B7B36E14();
    }

    if (*(a1 + 64))
    {
      **(a1 + 64) = sub_1B7B36E14();
    }

    if (*(a1 + 72))
    {
      **(a1 + 72) = sub_1B7B36E14();
    }

    if (*(a1 + 80))
    {
      **(a1 + 80) = CSDBRecordGetProperty();
    }

    if (*(a1 + 88))
    {
      **(a1 + 88) = CSDBRecordGetProperty();
    }

    if (*(a1 + 96))
    {
      **(a1 + 96) = CSDBRecordGetProperty();
    }

    if (*(a1 + 104))
    {
      **(a1 + 104) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 112))
    {
      **(a1 + 112) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 120))
    {
      **(a1 + 120) = CSDBRecordGetProperty();
    }

    if (*(a1 + 128))
    {
      **(a1 + 128) = CSDBRecordGetProperty();
    }

    if (*(a1 + 136))
    {
      **(a1 + 136) = CSDBRecordGetProperty();
    }

    if (*(a1 + 144))
    {
      **(a1 + 144) = CSDBRecordGetProperty();
    }

    if (*(a1 + 152))
    {
      **(a1 + 152) = CSDBRecordGetProperty();
    }

    if (*(a1 + 160))
    {
      **(a1 + 160) = CSDBRecordGetProperty();
    }

    if (*(a1 + 168))
    {
      **(a1 + 168) = CSDBRecordGetProperty();
    }

    if (*(a1 + 176))
    {
      **(a1 + 176) = CSDBRecordGetProperty();
    }

    if (*(a1 + 184))
    {
      **(a1 + 184) = CSDBRecordGetProperty();
    }

    if (*(a1 + 192))
    {
      **(a1 + 192) = CSDBRecordGetProperty();
    }

    if (*(a1 + 200))
    {
      **(a1 + 200) = CSDBRecordGetProperty();
    }

    if (*(a1 + 208))
    {
      Property = CSDBRecordGetProperty();
      v5 = CSDBRecordGetProperty();
      v6 = *(a1 + 208);
      *v6 = Property;
      v6[1] = v5;
    }

    if (*(a1 + 216))
    {
      **(a1 + 216) = sub_1B7B36E14();
    }

    if (*(a1 + 224))
    {
      **(a1 + 224) = sub_1B7B36E14();
    }

    if (*(a1 + 232))
    {
      **(a1 + 232) = sub_1B7B36E14();
    }

    if (*(a1 + 240))
    {
      **(a1 + 240) = CSDBRecordCopyProperty();
    }

    valuePtr = 0;
    v39 = CSDBRecordGetProperty();
    v40 = CSDBRecordGetProperty();
    v42 = CSDBRecordGetProperty();
    v37 = CSDBRecordGetProperty();
    v41 = CSDBRecordGetProperty();
    v36 = CSDBRecordGetProperty();
    v35 = CSDBRecordGetProperty();
    v38 = CSDBRecordGetProperty();
    v34 = CSDBRecordGetProperty();
    v33 = CSDBRecordGetProperty();
    v32 = CSDBRecordGetProperty();
    v43 = CSDBRecordGetProperty();
    v31 = CSDBRecordGetProperty();
    v30 = CSDBRecordGetProperty();
    v28 = CSDBRecordGetProperty();
    v26 = CSDBRecordGetProperty();
    v22 = CSDBRecordGetProperty();
    v24 = CSDBRecordGetProperty();
    v29 = CSDBRecordGetProperty();
    v27 = CSDBRecordGetProperty();
    v25 = CSDBRecordGetProperty();
    v21 = CSDBRecordGetProperty();
    v23 = CSDBRecordGetProperty();
    v7 = CSDBRecordGetProperty();
    v8 = CSDBRecordGetProperty();
    v9 = CSDBRecordGetProperty();
    v10 = CSDBRecordGetProperty();
    v11 = CSDBRecordGetProperty();
    v20 = CSDBRecordGetProperty();
    v12 = CSDBRecordGetProperty();
    v13 = CSDBRecordGetProperty();
    v14 = CSDBRecordGetProperty();
    v15 = CSDBRecordGetProperty();
    v16 = 2;
    if (v39)
    {
      v16 = 3;
      v17 = 1;
    }

    else
    {
      v17 = 0;
    }

    if (!v40)
    {
      v16 = v17;
    }

    if (v42)
    {
      v16 |= 4uLL;
    }

    if (v37)
    {
      v16 |= 8uLL;
    }

    if (v41)
    {
      v16 |= 0x20uLL;
    }

    if (v36)
    {
      v16 |= 0x40uLL;
    }

    if (v35)
    {
      v16 |= 0x800uLL;
    }

    if (v38)
    {
      v16 |= 0x2000uLL;
    }

    if (v34)
    {
      v16 |= 0x4000uLL;
    }

    if (v33)
    {
      v16 |= 0x8000uLL;
    }

    if (v32)
    {
      v16 |= 0x10000uLL;
    }

    if (v31)
    {
      v16 |= 0x20000uLL;
    }

    if (v30)
    {
      v16 |= 0x40000uLL;
    }

    if (v28)
    {
      v16 |= 0x80000uLL;
    }

    if (v26)
    {
      v16 |= 0x1000uLL;
    }

    if (v22)
    {
      v16 |= 0x400000000uLL;
    }

    if (v24)
    {
      v16 |= 0x800000000uLL;
    }

    if (v43)
    {
      v16 |= 0x100000uLL;
    }

    if (v29)
    {
      v16 |= 0x200000uLL;
    }

    if (v27)
    {
      v16 |= 0x400000uLL;
    }

    if (v25)
    {
      v16 |= 0x1000000uLL;
    }

    if (v21)
    {
      v16 |= 0x4000000uLL;
    }

    if (v23)
    {
      v16 |= 0x8000000uLL;
    }

    if (v7)
    {
      v16 |= 0x10000000uLL;
    }

    if (v8)
    {
      v16 |= 0x1000000000uLL;
    }

    if (v9)
    {
      v16 |= 0x200000000uLL;
    }

    if (v10)
    {
      v16 |= 0x8000000000uLL;
    }

    if (v11)
    {
      v16 |= 0x4000000000uLL;
    }

    if (v14)
    {
      v16 |= 0x80000000000uLL;
    }

    v18 = v39 | v40 | v42 | v37 | v41 | v36 | v35 | v38 | v34 | v33 | v32 | v31 | v30 | v28 | v26 | v22 | v24 | v43 | v29 | v27 | v25 | v21 | v23 | v7 | v8 | v9 | v10 | v11 | v14;
    if (v20)
    {
      v16 |= 0x2000000000uLL;
    }

    if (v12)
    {
      v16 |= 0x20000000000uLL;
    }

    if (v13)
    {
      v16 |= 0x40000000000uLL;
    }

    if (v15)
    {
      v19 = v16 | 0x100000000000;
    }

    else
    {
      v19 = v16;
    }

    if (v18 | (v20 | v12 | v13 | v15))
    {
      valuePtr = v19;
    }

    if (CSDBRecordGetProperty() == 1)
    {
      valuePtr = v19 | 0x2000000;
    }

    if (*(a1 + 248))
    {
      **(a1 + 248) = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
    }

    if (*(a1 + 256))
    {
      **(a1 + 256) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 264))
    {
      **(a1 + 264) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 272))
    {
      **(a1 + 272) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 280))
    {
      **(a1 + 280) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 288))
    {
      **(a1 + 288) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 296))
    {
      **(a1 + 296) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 304))
    {
      **(a1 + 304) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 312))
    {
      **(a1 + 312) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 320))
    {
      **(a1 + 320) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 328))
    {
      **(a1 + 328) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 336))
    {
      **(a1 + 336) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 344))
    {
      **(a1 + 344) = sub_1B7B36E14();
    }

    if (*(a1 + 352))
    {
      **(a1 + 352) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 360))
    {
      **(a1 + 360) = CSDBRecordGetProperty();
    }

    if (*(a1 + 368))
    {
      **(a1 + 368) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 376))
    {
      **(a1 + 376) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 384))
    {
      **(a1 + 384) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 392))
    {
      **(a1 + 392) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 400))
    {
      **(a1 + 400) = sub_1B7B36E14();
    }

    if (*(a1 + 408))
    {
      **(a1 + 408) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 416))
    {
      **(a1 + 416) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 424))
    {
      **(a1 + 424) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 432))
    {
      **(a1 + 432) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 440))
    {
      **(a1 + 440) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 448))
    {
      **(a1 + 448) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 456))
    {
      **(a1 + 456) = CSDBRecordGetProperty();
    }

    if (*(a1 + 464))
    {
      **(a1 + 464) = CSDBRecordGetProperty();
    }

    if (*(a1 + 472))
    {
      **(a1 + 472) = CSDBRecordCopyProperty();
    }

    CFRelease(v3);
  }
}

const __CFNumber *sub_1B7B36E14()
{
  valuePtr = 0;
  result = CSDBRecordCopyProperty();
  if (result)
  {
    v1 = result;
    CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr);
    CFRelease(v1);
    return valuePtr;
  }

  return result;
}

uint64_t sub_1B7B36E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AD98];
  Date = IMDMessageRecordGetDate(a2, 0, a3);
  v8 = objc_msgSend_numberWithUnsignedLongLong_(v5, v7, Date);
  v9 = MEMORY[0x1E696AD98];
  v11 = IMDMessageRecordGetDate(a3, 0, v10);
  v13 = objc_msgSend_numberWithUnsignedLongLong_(v9, v12, v11);
  result = objc_msgSend_compare_(v8, v14, v13);
  if (!result)
  {
    v16 = MEMORY[0x1E696AD98];
    Identifier = IMDMessageRecordGetIdentifier(a2);
    v19 = objc_msgSend_numberWithUnsignedLongLong_(v16, v18, Identifier);
    v20 = MEMORY[0x1E696AD98];
    v21 = IMDMessageRecordGetIdentifier(a3);
    v24 = objc_msgSend_numberWithUnsignedLongLong_(v20, v22, v21);

    return objc_msgSend_compare_(v19, v23, v24);
  }

  return result;
}

uint64_t sub_1B7B36F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AD98];
  Date = IMDMessageRecordGetDate(a2, 0, a3);
  v8 = objc_msgSend_numberWithUnsignedLongLong_(v5, v7, Date);
  v9 = MEMORY[0x1E696AD98];
  v11 = IMDMessageRecordGetDate(a3, 0, v10);
  v13 = objc_msgSend_numberWithUnsignedLongLong_(v9, v12, v11);
  result = objc_msgSend_compare_(v13, v14, v8);
  if (!result)
  {
    v16 = MEMORY[0x1E696AD98];
    Identifier = IMDMessageRecordGetIdentifier(a3);
    v19 = objc_msgSend_numberWithUnsignedLongLong_(v16, v18, Identifier);
    v20 = MEMORY[0x1E696AD98];
    v21 = IMDMessageRecordGetIdentifier(a2);
    v24 = objc_msgSend_numberWithUnsignedLongLong_(v20, v22, v21);

    return objc_msgSend_compare_(v19, v23, v24);
  }

  return result;
}

void IMDMessageRecordSetHandle(uint64_t a1, uint64_t a2)
{
  v4 = IMDIsRunningInDatabaseServerProcess();
  Identifier = IMDHandleRecordGetIdentifier(a2);
  v6 = Identifier;
  if (v4)
  {
    if (a1)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = sub_1B7B389A4;
      v16[3] = &unk_1E7CB75B0;
      v16[4] = a1;
      v16[5] = Identifier;
      _IMDPerformBlock(v16);
    }

    else
    {
      v8 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEF880(v8, v9, v10, v11, v12, v13, v14, v15);
      }
    }
  }

  else
  {
    v7 = IMDMessageRecordGetIdentifier(a1);

    __syncXPCIMDMessageRecordSetHandle_IPCAction(0, v7, v6);
  }
}

void IMDMessageRecordSetOtherHandle(uint64_t a1, uint64_t a2)
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    Identifier = IMDHandleRecordGetIdentifier(a2);
    if (a1)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1B7B38A04;
      v14[3] = &unk_1E7CB75B0;
      v14[4] = a1;
      v14[5] = Identifier;
      _IMDPerformBlock(v14);
    }

    else
    {
      v6 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEF938(v6, v7, v8, v9, v10, v11, v12, v13);
      }
    }
  }

  else
  {
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEF8F8();
    }
  }
}

CFIndex IMDMessageRecordMarkMessageGUIDAsDeduplicated(CFIndex result)
{
  if (result)
  {
    v1 = result;
    result = CFStringGetLength(result);
    if (result)
    {
      if (IMDIsRunningInDatabaseServerProcess())
      {
        v2 = IMDMessageRecordCopyMessageForGUID(v1);
        if (v2)
        {
          v5 = v2;
          if (!IMDMessageRecordWasDeduplicated(v2, v3, v4))
          {
            v6[0] = MEMORY[0x1E69E9820];
            v6[1] = 3221225472;
            v6[2] = sub_1B7B35B34;
            v6[3] = &unk_1E7CB8188;
            v6[4] = v5;
            v7 = 1;
            _IMDPerformBlock(v6);
          }

          CFRelease(v5);
        }
      }

      else
      {
        __syncXPCIMDMessageRecordMarkMessageGUIDAsDeduplicated_IPCAction(0, v1);
      }

      return 1;
    }
  }

  return result;
}

uint64_t IMDMessageRecordAddAttachmentIfNeededUnlocked(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  Identifier = IMDAttachmentRecordGetIdentifier(a2);
  v4 = IMDMessageRecordGetIdentifier(a1);
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v10 = Identifier;
      v11 = 2048;
      v12 = v4;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_DEBUG, "Trying to associate attachment [%lld] with message [%lld]", buf, 0x16u);
    }
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7B37424;
  v8[3] = &unk_1E7CB81C8;
  v8[4] = v4;
  v8[5] = Identifier;
  result = _IMDPerformLockedStatementBlockWithQuery(@"INSERT OR IGNORE INTO message_attachment_join (message_id, attachment_id) VALUES (?, ?);", v8);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B7B37424(uint64_t a1)
{
  v2 = *(a1 + 32);
  CSDBSqliteBindInt();
  v3 = *(a1 + 40);
  CSDBSqliteBindInt();
  if (CSDBSqliteStatementPerform() != 101)
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEF9B0();
    }
  }
}

void IMDMessageRecordBulkUpdate(uint64_t a1, int64_t a2, uint64_t a3, int64_t a4, int64_t a5, int64_t a6, int64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int64_t a14, uint64_t a15, int64_t a16, int64_t a17, int64_t a18, uint64_t a19, int64_t a20, int64_t a21, int64_t a22, int64_t a23, int64_t a24, uint64_t a25, int64_t a26, int64_t a27, int64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int64_t a32, uint64_t a33, int64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int64_t a45, int64_t a46, int64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int64_t a51, int64_t a52, uint64_t a53)
{
  if (a1)
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = sub_1B7B37908;
      v69[3] = &unk_1E7CB81E8;
      v69[4] = a1;
      v69[5] = a10;
      v69[6] = a2;
      v69[7] = a4;
      v69[8] = a5;
      v69[9] = a6;
      v69[10] = a7;
      v69[11] = a32;
      v69[12] = a16;
      v69[13] = a17;
      v69[14] = a14;
      v69[15] = a18;
      v69[16] = a20;
      v69[17] = a22;
      v69[18] = a21;
      v69[19] = a23;
      v69[20] = a24;
      v69[21] = a26;
      v69[22] = a27;
      v69[23] = a28;
      v69[24] = a3;
      v69[25] = a8;
      v69[26] = a9;
      v69[27] = a15;
      v69[28] = a29;
      v69[29] = a30;
      v69[30] = a12;
      v69[31] = a13;
      v69[32] = a11;
      v69[33] = a19;
      v69[34] = a25;
      v69[35] = a31;
      v69[36] = a33;
      v69[37] = a34;
      v69[38] = a35;
      v69[39] = a37;
      v69[40] = a38;
      v69[41] = a39;
      v69[42] = a40;
      v69[43] = a41;
      v69[44] = a42;
      v69[45] = a43;
      v69[46] = a44;
      v69[47] = a46;
      v69[48] = a47;
      v69[49] = a48;
      v69[50] = a45;
      v69[51] = a49;
      v69[52] = a50;
      v69[53] = a51;
      v69[54] = a52;
      v69[55] = a53;
      _IMDPerformBlock(v69);
    }

    else
    {
      __syncXPCIMDMessageRecordBulkUpdate_IPCAction(0, *(a1 + 16), a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a20, a21, a22, a19, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53);
    }
  }

  else
  {
    v54 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEFA38(v54, v55, v56, v57, v58, v59, v60, v61);
    }
  }
}

void sub_1B7B37908(uint64_t a1)
{
  v2 = IMDMessageRecordCopyMessageRecordUnlocked(*(*(a1 + 32) + 16));
  if (v2)
  {
    v5 = v2;
    v6 = objc_msgSend_unsignedLongLongValue(*(a1 + 40), v3, v4);
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    if ((v6 & 0x2000000) != 0)
    {
      CSDBRecordSetProperty();
    }

    if (*(a1 + 48) >= 1)
    {
      CSDBRecordSetProperty();
    }

    sub_1B7AF8CB8(v5, 14, *(a1 + 56));
    sub_1B7AF8CB8(v5, 15, *(a1 + 64));
    sub_1B7AF8CB8(v5, 16, *(a1 + 72));
    sub_1B7AF8CB8(v5, 39, *(a1 + 80));
    sub_1B7AF8CB8(v5, 57, *(a1 + 88));
    v7 = *(a1 + 96);
    CSDBRecordSetProperty();
    v8 = *(a1 + 104);
    CSDBRecordSetProperty();
    v9 = *(a1 + 112);
    CSDBRecordSetProperty();
    v10 = *(a1 + 120);
    CSDBRecordSetProperty();
    v11 = *(a1 + 128);
    CSDBRecordSetProperty();
    v12 = *(a1 + 136);
    CSDBRecordSetProperty();
    v13 = *(a1 + 144);
    CSDBRecordSetProperty();
    v14 = *(a1 + 152);
    CSDBRecordSetProperty();
    v15 = *(a1 + 160);
    CSDBRecordSetProperty();
    v16 = *(a1 + 168);
    CSDBRecordSetProperty();
    if (*(a1 + 184))
    {
      v17 = *(a1 + 176);
      CSDBRecordSetProperty();
      v18 = *(a1 + 184);
      CSDBRecordSetProperty();
    }

    if (*(a1 + 192))
    {
      CSDBRecordSetProperty();
    }

    v19 = *(a1 + 200);
    CSDBRecordSetProperty();
    v20 = *(a1 + 208);
    CSDBRecordSetProperty();
    v21 = *(a1 + 216);
    CSDBRecordSetProperty();
    v22 = *(a1 + 224);
    CSDBRecordSetProperty();
    v23 = *(a1 + 232);
    CSDBRecordSetProperty();
    if (*(a1 + 240))
    {
      CSDBRecordSetProperty();
    }

    if (*(a1 + 248))
    {
      CSDBRecordSetProperty();
    }

    if (*(a1 + 256))
    {
      CSDBRecordSetProperty();
    }

    if (*(a1 + 264))
    {
      CSDBRecordSetProperty();
    }

    if (*(a1 + 272))
    {
      CSDBRecordSetProperty();
    }

    if (*(a1 + 280))
    {
      CSDBRecordSetProperty();
    }

    if (*(a1 + 288))
    {
      CSDBRecordSetProperty();
    }

    v24 = *(a1 + 296);
    CSDBRecordSetProperty();
    if (*(a1 + 304))
    {
      v25 = *(a1 + 304);
    }

    CSDBRecordSetProperty();
    if (*(a1 + 312))
    {
      v26 = *(a1 + 312);
    }

    CSDBRecordSetProperty();
    if (*(a1 + 320))
    {
      CSDBRecordSetProperty();
    }

    if (*(a1 + 328))
    {
      CSDBRecordSetProperty();
    }

    v27 = *(a1 + 336);
    if (v27 >= 1)
    {
      sub_1B7AF8CB8(v5, 65, v27);
    }

    if (*(a1 + 344))
    {
      CSDBRecordSetProperty();
    }

    if (*(a1 + 352))
    {
      CSDBRecordSetProperty();
    }

    if (*(a1 + 360))
    {
      CSDBRecordSetProperty();
    }

    if (*(a1 + 368))
    {
      CSDBRecordSetProperty();
    }

    v28 = *(a1 + 376);
    if (v28)
    {
      sub_1B7AF8CB8(v5, 75, v28);
    }

    v29 = *(a1 + 384);
    if (v29)
    {
      sub_1B7AF8CB8(v5, 76, v29);
    }

    if (*(a1 + 392))
    {
      CSDBRecordSetProperty();
    }

    sub_1B7AF8CB8(v5, 78, *(a1 + 400));
    if (*(a1 + 408))
    {
      CSDBRecordSetProperty();
    }

    if (*(a1 + 416))
    {
      CSDBRecordSetProperty();
    }

    v30 = *(a1 + 424);
    CSDBRecordSetProperty();
    v31 = *(a1 + 432);
    CSDBRecordSetProperty();
    if (*(a1 + 440))
    {
      CSDBRecordSetProperty();
    }

    IMDSMSRecordStoreRecordCommitChangesAndReleaseUnlocked(v5);
  }
}