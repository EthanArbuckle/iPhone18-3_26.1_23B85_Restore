double sub_1B7B9130C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], a2, a3);
  isInternalInstall = objc_msgSend_isInternalInstall(v3, v4, v5);

  if (isInternalInstall)
  {
    result = IMGetDomainIntForKey();
    *&qword_1EBA540A8 = result;
  }

  return result;
}

double sub_1B7B9136C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], a2, a3);
  isInternalInstall = objc_msgSend_isInternalInstall(v3, v4, v5);

  if (isInternalInstall)
  {
    result = IMGetDomainIntForKey();
    *&qword_1EBA540B0 = result;
  }

  return result;
}

void sub_1B7B913CC(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], a2, a3);
  isInternalInstall = objc_msgSend_isInternalInstall(v3, v4, v5);

  if (isInternalInstall)
  {
    byte_1EBA53B80 = IMGetDomainBoolForKey();
  }
}

void sub_1B7B91428(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], a2, a3);
  isInternalInstall = objc_msgSend_isInternalInstall(v3, v4, v5);

  if (isInternalInstall)
  {
    byte_1EBA540B8 = IMGetDomainBoolForKey();
  }
}

uint64_t sub_1B7B91484()
{
  if (IMGetCachedDomainBoolForKeyWithDefaultValue())
  {
    return 4;
  }

  if (IMGetCachedDomainBoolForKeyWithDefaultValue())
  {
    return 3;
  }

  if (IMGetCachedDomainBoolForKeyWithDefaultValue())
  {
    return 2;
  }

  return IMGetCachedDomainBoolForKeyWithDefaultValue();
}

uint64_t sub_1B7B91534(void *a1)
{
  v2 = IMGetCachedDomainValueForKey();
  v5 = v2;
  if (v2)
  {
    InitialReindexRowID = objc_msgSend_unsignedLongLongValue(v2, v3, v4);
  }

  else
  {
    InitialReindexRowID = objc_msgSend__readInitialReindexRowID(a1, v3, v4);
  }

  v7 = InitialReindexRowID;

  return v7;
}

uint64_t sub_1B7B915A8(void *a1)
{
  v2 = IMGetCachedDomainValueForKey();
  v5 = v2;
  if (v2)
  {
    v6 = objc_msgSend_unsignedLongLongValue(v2, v3, v4);
  }

  else
  {
    InitialReindexRowID = objc_msgSend__readInitialReindexRowID(a1, v3, v4);
    v6 = InitialReindexRowID - objc_msgSend__readLastIndexedRowID(a1, v8, v9);
  }

  return v6;
}

uint64_t sub_1B7B91620(void *a1)
{
  v2 = IMGetCachedDomainValueForKey();
  v5 = v2;
  if (v2)
  {
    IndexedMessagesWithFallback = objc_msgSend_unsignedLongLongValue(v2, v3, v4);
  }

  else
  {
    IndexedMessagesWithFallback = objc_msgSend__readIndexedMessagesWithFallback(a1, v3, v4);
  }

  v7 = IndexedMessagesWithFallback;

  return v7;
}

id sub_1B7B91680(void *a1)
{
  v31.receiver = a1;
  v31.super_class = &off_1F2FE03C8;
  v3 = objc_msgSendSuper2(&v31, sel_init);
  if (v3)
  {
    LastIndexedRowID = objc_msgSend__readLastIndexedRowID(MEMORY[0x1E69A82A8], v1, v2);
    objc_msgSend_setLastIndexedRowID_(v3, v5, LastIndexedRowID);
    InitialReindexRowID = objc_msgSend__readInitialReindexRowID(MEMORY[0x1E69A82A8], v6, v7);
    objc_msgSend_setInitialReindexRowID_(v3, v9, InitialReindexRowID);
    v10 = IMGetDomainIntForKey();
    objc_msgSend_setIndexRevision_(v3, v11, v10);
    CurrentIndexVersionFromDefaults = objc_msgSend__readCurrentIndexVersionFromDefaults(MEMORY[0x1E69A82A8], v12, v13);
    objc_msgSend_setIndexVersion_(v3, v15, CurrentIndexVersionFromDefaults);
    IndexedMessagesWithFallback = objc_msgSend__readIndexedMessagesWithFallback(MEMORY[0x1E69A82A8], v16, v17);
    objc_msgSend_setInitialIndexedMessages_(v3, v19, IndexedMessagesWithFallback);
    TotalMessagesWithFallback = objc_msgSend__readTotalMessagesWithFallback(MEMORY[0x1E69A82A8], v20, v21);
    objc_msgSend_setInitialTotalMessages_(v3, v23, TotalMessagesWithFallback);
    ProcessedMessageRecordsWithFallback = objc_msgSend__readProcessedMessageRecordsWithFallback(MEMORY[0x1E69A82A8], v24, v25);
    objc_msgSend_setProcessedMessageRecords_(v3, v27, ProcessedMessageRecordsWithFallback);
    v28 = IMGetCachedDomainValueForKey();
    objc_msgSend_setIndexBeginDate_(v3, v29, v28);
  }

  return v3;
}

void sub_1B7B9179C(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_lastIndexedRowID(a1, a2, a3);
  IMSetDomainIntForKey();
  objc_msgSend_initialReindexRowID(a1, v4, v5);
  IMSetDomainIntForKey();
  objc_msgSend_indexRevision(a1, v6, v7);
  IMSetDomainIntForKey();
  v12 = objc_msgSend_indexVersion(a1, v8, v9);
  v13 = MEMORY[0x1E696AEC0];
  if (v12 < 1)
  {
    v14 = objc_msgSend__latestIndexVersion(MEMORY[0x1E69A82A8], v10, v11);
  }

  else
  {
    v14 = objc_msgSend_indexVersion(a1, v10, v11);
  }

  v16 = objc_msgSend_stringWithFormat_(v13, v15, @"IMCSBypassIndexVersionCheckV%lld", v14);
  IMSetDomainBoolForKey();

  objc_msgSend_initialIndexedMessages(a1, v17, v18);
  IMSetDomainIntForKey();
  objc_msgSend_initialTotalMessages(a1, v19, v20);
  IMSetDomainIntForKey();
  objc_msgSend_processedMessageRecords(a1, v21, v22);
  IMSetDomainIntForKey();
  v25 = objc_msgSend_indexBeginDate(a1, v23, v24);
  IMSetDomainValueForKey();
}

uint64_t sub_1B7B9193C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, a3);
  isSpotlightClientStateEnabled = objc_msgSend_isSpotlightClientStateEnabled(v3, v4, v5);

  return isSpotlightClientStateEnabled;
}

uint64_t sub_1B7B9197C(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend__currentClientStateStorageMechanism(a1, a2, a3);

  return IMSetDomainIntForKey();
}

void sub_1B7B91C00(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1B7B91C1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__updateClientState(WeakRetained, v1, v2);
}

void sub_1B7B91E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B91F68(uint64_t a1)
{
  notify_cancel(*(*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_1B7B9218C(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = objc_msgSend__createDataProviders(*(a1 + 32), v3, v4, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v21, v25, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = objc_msgSend_typeIdentifier(v13, v8, v9);
        objc_msgSend_setObject_forKeyedSubscript_(v2, v15, v13, v14);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v21, v25, 16);
    }

    while (v10);
  }

  v18 = objc_msgSend_copy(v2, v16, v17);
  v19 = qword_1EBA540C0;
  qword_1EBA540C0 = v18;

  v20 = *MEMORY[0x1E69E9840];
}

void sub_1B7B93090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B930AC(uint64_t a1, const char *a2, uint64_t a3)
{
  v9 = objc_msgSend_batchFetcher(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_nextBatch(v9, v4, v5);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

uint64_t sub_1B7B93380(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a3 || a2)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return objc_msgSend__indexAllSearchableItemsWithCompletionBlock_(*(a1 + 32), a2, *(a1 + 40));
  }
}

void sub_1B7B934D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B934E8(uint64_t a1)
{
  v2 = IMCopyIndexableChatDictionaryForRecord(*(a1 + 32), 1);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1B7B93948(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v6 = objc_msgSend_timingCollection(*(a1 + 32), v4, v5);
  objc_msgSend_stopTimingForKey_(v6, v7, @"totalTime");

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = objc_msgSend_timingCollection(*(a1 + 32), v9, v10);
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "indexChats timing %@", &v13, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1B7B93B80()
{
  v0 = objc_alloc_init(IMDCoreSpotlightIndexingManager);
  v1 = qword_1EBA53A70;
  qword_1EBA53A70 = v0;
}

void sub_1B7B93F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1B7B93D74);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B7B93F78(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1B7B93FD8(void *a1, const char *a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = objc_msgSend__timeoutError(IMDCoreSpotlightIndexingJob, a2, a3);
  }

  else
  {
    v4 = *(*(a1[6] + 8) + 40);
  }

  v7 = v4;
  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v16 = 138412290;
        v17 = v7;
        _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "deleting for searchable items failed with error %@", &v16, 0xCu);
      }
    }
  }

  else
  {
    v9 = objc_msgSend_sharedPublisher(IMDSpotlightActivityPublisher, v5, v6);
    v10 = a1[4];
    v12 = objc_msgSend_contextWithReason_(IMDIndexingContext, v11, a1[7]);
    objc_msgSend_searchableItemsDeletedWithIdentifiers_forDomainIdentifier_context_(v9, v13, v10, 0, v12);
  }

  v14 = a1[5];
  if (v14)
  {
    (*(v14 + 16))(v14, v7);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1B7B94288(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v5 = IMCoreSpotlightCriticalIndex();
  objc_msgSend__deleteSearchableItemsWithIdentifiers_fromIndex_withReason_completionHandler_(v2, v4, v3, v5, a1[7], a1[6]);
}

void sub_1B7B943B4(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      *buf = 138412290;
      v13 = v3;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, " => Nuking messages: %@", buf, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = IMCoreSpotlightCriticalIndex();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7B94518;
  v10[3] = &unk_1E7CBB328;
  v7 = *(a1 + 56);
  v11 = *(a1 + 48);
  objc_msgSend__deleteSearchableItemsWithIdentifiers_fromIndex_withReason_completionHandler_(v4, v8, v5, v6, v7, v10);

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7B94518(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1B7B94634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B9464C(uint64_t a1)
{
  v5 = IMDChatRecordCopyChatForGUID(*(a1 + 32));
  v2 = IMCopyIndexableChatDictionaryForRecord(v5, 1);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1B7B94778(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v34 = IMCoreSpotlightCriticalIndex();
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v3 = *(a1 + 32);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v39, v45, 16);
  if (v5)
  {
    v6 = *v40;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v40 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v39 + 1) + 8 * i);
        if (IMOSLoggingEnabled())
        {
          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v44 = v8;
            _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, " => Nuking chat: %@", buf, 0xCu);
          }
        }

        v11 = objc_msgSend__chatDictionaryForChatGUID_(*(a1 + 40), v9, v8);
        v12 = v11;
        if (v11)
        {
          v13 = _IMDCoreSpotlightChatUIDForChatDictionary(v11);
          if (objc_msgSend_length(v13, v14, v15))
          {
            objc_msgSend_addObject_(v2, v16, v13);
          }
        }
      }

      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v17, &v39, v45, 16);
    }

    while (v5);
  }

  v18 = dispatch_group_create();
  v20 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v19, 2);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1B7B94B00;
  aBlock[3] = &unk_1E7CB6C10;
  v21 = v20;
  v37 = v21;
  v38 = v18;
  v22 = v18;
  v23 = _Block_copy(aBlock);
  dispatch_group_enter(v22);
  v24 = *(a1 + 56);
  v25 = *(a1 + 32);
  v26 = IMCSIndexReasonFromIMIndexReason();
  objc_msgSend_deleteSearchableItemsWithDomainIdentifiers_reason_completionHandler_(v34, v27, v25, v26, v23);
  dispatch_group_enter(v22);
  v28 = *(a1 + 56);
  v29 = IMCSIndexReasonFromIMIndexReason();
  objc_msgSend_deleteSearchableItemsWithIdentifiers_reason_completionHandler_(v34, v30, v2, v29, v23);
  v31 = IMDIndexingClientRequestQueue();
  dispatch_time(0, 60000000000);
  v35 = *(a1 + 48);
  v32 = v21;
  IMDispatchGroupNotifyWithTimeout();

  v33 = *MEMORY[0x1E69E9840];
}

void sub_1B7B94B00(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B7B94BBC;
  v5[3] = &unk_1E7CB6798;
  v6 = v3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v4 = v3;
  IMDIndexingClientRequest(v5);
}

void sub_1B7B94BBC(uint64_t a1, const char *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696AA08];
    v12[0] = v3;
    v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v12, &v11, 1);
    v8 = objc_msgSend_errorWithDomain_code_userInfo_(v5, v7, @"IMDIndexingErrorDomain", 1, v6);
    objc_msgSend_addObject_(v4, v9, v8);
  }

  dispatch_group_leave(*(a1 + 48));
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1B7B94CA8(uint64_t a1, const char *a2, uint64_t a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = objc_msgSend__timeoutError(IMDCoreSpotlightIndexingJob, a2, a3);
LABEL_6:
    v11 = v4;
    goto LABEL_7;
  }

  if (objc_msgSend_count(*(a1 + 32), a2, a3) < 2)
  {
    v4 = objc_msgSend_firstObject(*(a1 + 32), v5, v6);
    goto LABEL_6;
  }

  v7 = MEMORY[0x1E696ABC0];
  v8 = *(a1 + 32);
  v13 = *MEMORY[0x1E696A750];
  v14[0] = v8;
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v5, v14, &v13, 1);
  v11 = objc_msgSend_errorWithDomain_code_userInfo_(v7, v10, @"IMDIndexingErrorDomain", 2, v9);

LABEL_7:
  (*(*(a1 + 40) + 16))();

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1B7B94F80(uint64_t a1, const char *a2, uint64_t a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF70];
  v5 = (a1 + 32);
  v6 = objc_msgSend_count(*(a1 + 32), a2, a3);
  v40 = objc_msgSend_arrayWithCapacity_(v4, v7, v6);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = *v5;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v42, v50, 16);
  if (v9)
  {
    v10 = *v43;
    do
    {
      v11 = 0;
      do
      {
        if (*v43 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v42 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v15 = objc_msgSend__chatDictionaryForChatGUID_(*(a1 + 40), v14, v12);
        v18 = objc_msgSend_searchableItemGenerator(*(a1 + 40), v16, v17);
        v41 = 0;
        v20 = objc_msgSend_newChatSearchableItemForChatDictionary_optionalLastMessageDate_error_(v18, v19, v15, 0, &v41);
        v21 = v41;

        if (v20)
        {
          v24 = objc_msgSend_sharedController(IMDIndexingController, v22, v23);
          objc_msgSend_postProcessIndexingForChatDictionary_context_(v24, v25, v15, *(a1 + 48));

          objc_msgSend_addObject_(v40, v26, v20);
        }

        else if (v21)
        {
          if (IMOSLoggingEnabled())
          {
            v28 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v47 = v12;
              v48 = 2112;
              v49 = v15;
              _os_log_impl(&dword_1B7AD5000, v28, OS_LOG_TYPE_INFO, "(1/2) Failed to generate searchable chat item for chat GUID %@ dictionary %@", buf, 0x16u);
            }
          }

          if (IMOSLoggingEnabled())
          {
            v29 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v47 = v21;
              _os_log_impl(&dword_1B7AD5000, v29, OS_LOG_TYPE_INFO, "(2/2) Failed to generate searchable chat item with error %@", buf, 0xCu);
            }
          }
        }

        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v9 != v11);
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v42, v50, 16);
      v9 = v30;
    }

    while (v30);
  }

  if (objc_msgSend_count(v40, v31, v32))
  {
    v33 = [IMDCoreSpotlightIndexingJob alloc];
    v35 = objc_msgSend_initWithContext_(v33, v34, *(a1 + 48));
    objc_msgSend_setSearchableItems_(v35, v36, v40);
    objc_msgSend_runWithCompletion_(v35, v37, *(a1 + 56));
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

  v38 = *MEMORY[0x1E69E9840];
}

void sub_1B7B953C4(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7B95450;
  v3[3] = &unk_1E7CBB328;
  v1 = *(a1 + 32);
  v4 = *(a1 + 40);
  objc_msgSend__deleteAllSearchableItemsWithReason_completionHandler_(v1, v2, 1009, v3);
}

void sub_1B7B95450(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (v5)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v18 = v5;
        _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Failed to delete all searchable items upon app deletion with error %@. Defaults and client state will not be cleared.", buf, 0xCu);
      }
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v3, v4);
    objc_msgSend_removePersistentDomainForName_(v7, v8, @"com.apple.IMCoreSpotlight");

    v9 = objc_alloc_init(MEMORY[0x1E69A82A8]);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1B7B95600;
    v13[3] = &unk_1E7CBB768;
    v14 = v9;
    v10 = *(a1 + 32);
    v15 = 0;
    v16 = v10;
    v11 = v9;
    IMDIndexingClientRequest(v13);
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7B95600(uint64_t *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedManager(IMDSpotlightClientStateManager, a2, a3);
  objc_msgSend_saveClientState_(v4, v5, a1[4]);

  v6 = a1[5];
  v7 = *(a1[6] + 16);

  return v7();
}

void sub_1B7B95DC8(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = _IMDSpotlightIndexForIndexingReason();

  if (v3)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1B7B95F04;
    v8[3] = &unk_1E7CBB790;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v5;
    v10 = *(a1 + 56);
    v11 = *(a1 + 72);
    objc_msgSend__sanitizeIndexesForCurrentVersionIfNeeded_(v4, v6, v8);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, " Failed to create index!", buf, 2u);
      }
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_1B7B95F04(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF8EBC(v3, v4);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v22 = 0;
        _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "_sanitizeIndexesForCurrentVersionIfNeeded complete, kicking off standard indexes", v22, 2u);
      }
    }

    v8 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v5, v6);
    isSpotlightReindexRefactorEnabled = objc_msgSend_isSpotlightReindexRefactorEnabled(v8, v9, v10);

    if ((isSpotlightReindexRefactorEnabled & 1) == 0)
    {
      objc_msgSend_setNeedsIndexing_(*(a1 + 32), v12, 1);
      objc_msgSend__setNeedsDeferredIndexing_(*(a1 + 32), v13, 0);
    }

    v14 = objc_alloc(MEMORY[0x1E69A82A8]);
    v16 = objc_msgSend_initWithMaxRowID_totalMessages_(v14, v15, *(a1 + 48), *(a1 + 56));
    objc_msgSend_setInitialTotalChats_(v16, v17, *(a1 + 64));
    v20 = objc_msgSend_sharedManager(IMDSpotlightClientStateManager, v18, v19);
    objc_msgSend_saveClientState_(v20, v21, v16);

    (*(*(a1 + 40) + 16))();
  }
}

void sub_1B7B96138(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Beginning chat reindexing", buf, 2u);
      }
    }

    v5 = *(a1 + 48);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1B7B9627C;
    v11[3] = &unk_1E7CBB808;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v13 = v7;
    v14 = v9;
    v11[4] = v8;
    v12 = 0;
    objc_msgSend_indexChatsWithReason_completion_(v6, v10, v5, v11);
  }
}

void sub_1B7B9627C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Finished chat reindexing", buf, 2u);
    }
  }

  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Beginning message reindexing", buf, 2u);
      }
    }

    v8 = *(a1 + 32);
    BatchSize = objc_msgSend_reindexFirstBatchSize(MEMORY[0x1E69A7FF8], v5, v6);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1B7B96444;
    v12[3] = &unk_1E7CBB7E0;
    v10 = *(a1 + 56);
    v14 = *(a1 + 48);
    v13 = *(a1 + 40);
    objc_msgSend_indexNextMessageBatchIfNeeded_reason_completion_(v8, v11, BatchSize, v10, v12);
  }
}

void sub_1B7B96444(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Finished message reindexing", v6, 2u);
    }
  }

  v5 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

void sub_1B7B96878(void *a1)
{
  v2 = a1[6];
  v3 = _IMDSpotlightIndexForIndexingReason();
  if (v3)
  {
    v4 = [IMDCoreSpotlightMessageReindexingJob alloc];
    v6 = objc_msgSend_initWithBatchSize_index_delegate_reason_(v4, v5, a1[7], v3, a1[4], a1[6]);
    objc_msgSend_runWithCompletion_(v6, v7, a1[5]);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, " Failed to create index!", v10, 2u);
      }
    }

    v9 = a1[5];
    if (v9)
    {
      (*(v9 + 16))(v9, 0);
    }
  }
}

void sub_1B7B96E7C(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_msgSend_stopTimingForKey_(*(a1 + 32), v4, @"CSDeleteAllIndexes");
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Index deletion complete - %@", buf, 0xCu);
    }
  }

  if (v3 && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v3;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, " Version mismatch failed to delete all indexes! %@", buf, 0xCu);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1B7B97060;
    v10[3] = &unk_1E7CB7F60;
    v12 = v8;
    v11 = v3;
    IMDIndexingClientRequest(v10);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7B978BC(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v6 = objc_msgSend_timingCollection(*(a1 + 32), v4, v5);
  objc_msgSend_stopTimingForKey_(v6, v7, @"CSIngest");

  v8 = *(a1 + 32);
  v11 = objc_msgSend_indexedCount(v8, v9, v10);
  objc_msgSend_setIndexedCount_(v8, v12, *(a1 + 48) + v11);
  if (v3)
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v32 = *(a1 + 56);
      v33 = objc_msgSend_indexedCount(*(a1 + 32), v14, v15);
      v36 = objc_msgSend_batchSize(*(a1 + 32), v34, v35);
      if (v36 == objc_msgSend_indexedCount(*(a1 + 32), v37, v38))
      {
        v41 = 0;
      }

      else
      {
        v42 = objc_msgSend_batchSize(*(a1 + 32), v39, v40);
        v41 = v42 - objc_msgSend_indexedCount(*(a1 + 32), v43, v44);
      }

      v45 = 134218754;
      v46 = v32;
      v47 = 2048;
      v48 = v33;
      v49 = 2048;
      v50 = v41;
      v51 = 2112;
      v52 = v3;
      _os_log_error_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_ERROR, "Failed to index %lld items. Batch progress: %lu/%lu, error: %@", &v45, 0x2Au);
    }

LABEL_10:

    goto LABEL_11;
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 56);
      v19 = objc_msgSend_indexedCount(*(a1 + 32), v16, v17);
      v22 = objc_msgSend_batchSize(*(a1 + 32), v20, v21);
      if (v22 == objc_msgSend_indexedCount(*(a1 + 32), v23, v24))
      {
        v27 = 0;
      }

      else
      {
        v28 = objc_msgSend_batchSize(*(a1 + 32), v25, v26);
        v27 = v28 - objc_msgSend_indexedCount(*(a1 + 32), v29, v30);
      }

      v45 = 134218496;
      v46 = v18;
      v47 = 2048;
      v48 = v19;
      v49 = 2048;
      v50 = v27;
      _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Indexed %lld items. Batch progress: %lu/%lu", &v45, 0x20u);
    }

    goto LABEL_10;
  }

LABEL_11:
  (*(*(a1 + 40) + 16))();

  v31 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7B97DD0(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend__generateSearchableItemsForMessageItemDictionary_chatDictionary_(*(a1 + 32), a2, a2, a3);
  if (result)
  {
    v7 = *(a1 + 32);
    v9 = objc_msgSend_messagesWithItemsGeneratedCount(v7, v5, v6) + 1;

    return objc_msgSend_setMessagesWithItemsGeneratedCount_(v7, v8, v9);
  }

  return result;
}

void sub_1B7B98374(uint64_t a1, void *a2)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v6 = v3;
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696AA08];
    v19[0] = v3;
    v18[0] = v8;
    v18[1] = @"IMDIndexingErrorFailedMessageGUIDs";
    v9 = objc_msgSend_guidsInBatch(*(a1 + 32), v4, v5);
    v12 = objc_msgSend_copy(v9, v10, v11);
    v19[1] = v12;
    v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v13, v19, v18, 2);
    v16 = objc_msgSend_errorWithDomain_code_userInfo_(v7, v15, @"IMDIndexingErrorDomain", 4, v14);
  }

  else
  {
    v16 = 0;
  }

  objc_msgSend__indexingFinished(*(a1 + 32), v4, v5);
  (*(*(a1 + 40) + 16))();

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1B7B98630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B98648(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (v5 || !objc_msgSend__shouldIndexMore(*(a1 + 32), v3, v4))
  {
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;

    v11 = objc_msgSend_timingCollection(*(a1 + 32), v9, v10);
    objc_msgSend_stopTimingForKey_(v11, v12, @"totalTime");

    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v16 = objc_msgSend_timingCollection(*(a1 + 32), v14, v15);
        v19 = 138412290;
        v20 = v16;
        _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Timing %@", &v19, 0xCu);
      }
    }

    v17 = *(a1 + 40);
    if (v17)
    {
      (*(v17 + 16))(v17, v5);
    }
  }

  else
  {
    objc_msgSend__indexMoreWithCompletionBlock_(*(a1 + 32), v6, *(*(*(a1 + 48) + 8) + 40));
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1B7B98A6C(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = v3;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v28, v32, 16);
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v28 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v10;
          if (objc_msgSend_count(v12, v13, v14) == 2)
          {
            v16 = objc_msgSend_objectAtIndexedSubscript_(v12, v15, 0);
            v18 = objc_msgSend_objectAtIndexedSubscript_(v12, v17, 1);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v20 = *(a1 + 32);
                if (!v20 || objc_msgSend_isEqualToString_(v16, v19, v20))
                {
                  objc_msgSend_setObject_forKeyedSubscript_(v24, v19, v16, v18);
                }
              }
            }
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v11, &v28, v32, 16);
    }

    while (v7);
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_1B7B98CB4;
  v25[3] = &unk_1E7CB7F60;
  v21 = *(a1 + 40);
  v26 = v24;
  v27 = v21;
  v22 = v24;
  IMDIndexingClientRequest(v25);

  v23 = *MEMORY[0x1E69E9840];
}

void sub_1B7B98CB4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = objc_msgSend_copy(*(a1 + 32), a2, a3);
  (*(v3 + 16))(v3, v4);
}

void sub_1B7B98DB4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x1E695DFD8];
  v7 = objc_msgSend_allKeys(a2, a2, a3);
  v6 = objc_msgSend_setWithArray_(v4, v5, v7);
  (*(v3 + 16))(v3, v6, 0);
}

void sub_1B7B98EE4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x1E695DFD8];
  v7 = objc_msgSend_allKeys(a2, a2, a3);
  v6 = objc_msgSend_setWithArray_(v4, v5, v7);
  (*(v3 + 16))(v3, v6, 0);
}

void sub_1B7B990EC(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(IMDChatRecordBatchFetcher);
  v3 = *MEMORY[0x1E69A6B70];
  v5 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], v4, @"%K IN %@", *MEMORY[0x1E69A6B70], *(a1 + 32));
  objc_msgSend_setPredicate_(v2, v6, v5);

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v2;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v25, v29, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        v16 = objc_msgSend_guid(v15, v10, v11);
        if (objc_msgSend_length(v16, v17, v18))
        {
          v19 = IMCopyIndexableChatDictionaryForRecord(v15, 0);
          v20 = _IMDCoreSpotlightChatUIDForChatDictionary(v19);
          if (objc_msgSend_length(v20, v21, v22))
          {
            objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), v23, v16, v20);
          }
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v25, v29, 16);
    }

    while (v12);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void sub_1B7B99294(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = objc_msgSend_allKeys(v3, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v23, v27, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v10, *(*(&v23 + 1) + 8 * v13));
        if (objc_msgSend_length(v14, v15, v16))
        {
          objc_msgSend_addObject_(v4, v17, v14);
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v23, v27, 16);
    }

    while (v11);
  }

  v18 = *(a1 + 40);
  v21 = objc_msgSend_copy(v4, v19, v20);
  (*(v18 + 16))(v18, v21, 0);

  v22 = *MEMORY[0x1E69E9840];
}

void sub_1B7B99410(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a4;
  v12 = a5;
  v13 = IMOSLoggingEnabled();
  if (v13)
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v27 = objc_msgSend_count(v9, v17, v18);
      v28 = 2112;
      v29 = v11;
      _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Indexing %lu number of items with Index %@", buf, 0x16u);
    }
  }

  if (IMDCoreSpotlightDisabled(v13, v14, v15))
  {
    if (v12)
    {
      v12[2](v12);
    }
  }

  else
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1B7BA7F04;
    v20[3] = &unk_1E7CB85B8;
    v21 = v11;
    v22 = v9;
    v23 = v10;
    v25 = a3;
    v24 = v12;
    IMDIndexingClientRequest(v20);
  }

  v19 = *MEMORY[0x1E69E9840];
}

id sub_1B7B995F0(uint64_t *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v75 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v13 = objc_msgSend_array(MEMORY[0x1E695DF70], v9, v10);
  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69A6170]);
  }

  v14 = objc_msgSend_messageRecordBatchSize(MEMORY[0x1E69A7FF8], v11, v12);
  v15 = [IMDMessageRecordBatchFetcher alloc];
  v17 = objc_msgSend_initWithAssociatedChatGUID_sortAscending_(v15, v16, 0, 0);
  objc_msgSend_setLastRowID_(v17, v18, *a1);
  objc_msgSend_setParentedOnly_(v17, v19, 1);
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = sub_1B7AE1AB0;
  v66 = sub_1B7AE2560;
  v67 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v20, v14);
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1B7B99A60;
  aBlock[3] = &unk_1E7CBB9C0;
  v54 = &v62;
  v55 = a3;
  v53 = &v58;
  v45 = v7;
  v51 = v45;
  v39 = v17;
  v52 = v39;
  v56 = v14;
  v57 = a1;
  v42 = _Block_copy(aBlock);
  do
  {
    context = objc_autoreleasePoolPush();
    v43 = v42[2]();
    objc_msgSend_startTimingForKey_(v45, v21, @"indexCreation");
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v22 = v63[5];
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v46, v74, 16);
    if (v25)
    {
      v26 = *v47;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v47 != v26)
          {
            objc_enumerationMutation(v22);
          }

          v28 = *(*(&v46 + 1) + 8 * i);
          v29 = objc_msgSend_objectAtIndexedSubscript_(v28, v24, 0, v39);
          v31 = objc_msgSend_objectAtIndexedSubscript_(v28, v30, 1);
          v32 = v8[2](v8, v29, v31);

          if (v32)
          {
            objc_msgSend_addObjectsFromArray_(v13, v33, v32);
          }
        }

        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v24, &v46, v74, 16);
      }

      while (v25);
    }

    objc_msgSend_stopTimingForKey_(v45, v34, @"indexCreation");
    objc_autoreleasePoolPop(context);
  }

  while (v43);
  *a2 = v59[3];
  if (IMOSLoggingEnabled())
  {
    v35 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = v59[3];
      *buf = 134218498;
      v69 = a3;
      v70 = 2112;
      v71 = v45;
      v72 = 2048;
      v73 = v36;
      _os_log_impl(&dword_1B7AD5000, v35, OS_LOG_TYPE_INFO, "Finished index creation with batch size %lu : %@ - processed %lu messages", buf, 0x20u);
    }
  }

  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v62, 8);

  v37 = *MEMORY[0x1E69E9840];

  return v13;
}

BOOL sub_1B7B99A60(uint64_t a1, const char *a2, uint64_t a3)
{
  if (*(*(*(a1 + 48) + 8) + 24) >= *(a1 + 64))
  {
    objc_msgSend_removeAllObjects(*(*(*(a1 + 56) + 8) + 40), a2, a3);
    return 0;
  }

  else
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = sub_1B7AE1AB0;
    v35 = sub_1B7AE2560;
    v36 = 0;
    objc_msgSend_startTimingForKey_(*(a1 + 32), a2, @"sqlQuery");
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1B7B99CA4;
    block[3] = &unk_1E7CBB970;
    v28 = &v31;
    v4 = *(a1 + 40);
    v30 = vextq_s8(*(a1 + 64), *(a1 + 64), 8uLL);
    v5 = *(a1 + 48);
    v27 = v4;
    v29 = v5;
    IMDPersistencePerformBlock(block, 1, v6);
    v9 = objc_msgSend_lastObject(v32[5], v7, v8);
    **(a1 + 80) = objc_msgSend_rowID(v9, v10, v11);

    *(*(*(a1 + 48) + 8) + 24) += objc_msgSend_count(v32[5], v12, v13);
    objc_msgSend_stopTimingForKey_(*(a1 + 32), v14, @"sqlQuery");
    objc_msgSend_startTimingForKey_(*(a1 + 32), v15, @"dictionaryConversion");
    objc_msgSend_removeAllObjects(*(*(*(a1 + 56) + 8) + 40), v16, v17);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_1B7B99D0C;
    v25[3] = &unk_1E7CBB998;
    v18 = *(a1 + 56);
    v25[4] = &v31;
    v25[5] = v18;
    IMDPersistencePerformBlock(v25, 1, v19);
    objc_msgSend_stopTimingForKey_(*(a1 + 32), v20, @"dictionaryConversion");
    v23 = objc_msgSend_count(v32[5], v21, v22) != 0;

    _Block_object_dispose(&v31, 8);
  }

  return v23;
}

void sub_1B7B99CA4(void *a1, const char *a2)
{
  v3 = a1[4];
  if (a1[7] >= a1[8] - *(*(a1[6] + 8) + 24))
  {
    objc_msgSend_nextBatchWithSize_(v3, a2, a1[8] - *(*(a1[6] + 8) + 24));
  }

  else
  {
    objc_msgSend_nextBatchWithSize_(v3, a2, a1[7]);
  }
  v4 = ;
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_1B7B99D0C(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v19, v24, 16);
  if (v4)
  {
    v7 = v4;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = objc_msgSend_chatRecord(v10, v5, v6, v19);
        if (v11)
        {
          v12 = *(*(*(a1 + 40) + 8) + 40);
          v13 = IMCopyIndexableItemDictionaryForRecord(v10);
          v23[0] = v13;
          v14 = IMCopyIndexableChatDictionaryForRecord(v11, 0);
          v23[1] = v14;
          v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v15, v23, 2);
          objc_msgSend_addObject_(v12, v17, v16);
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v19, v24, 16);
    }

    while (v7);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1B7B99E94(void *a1, uint64_t a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = a3;
  v8 = objc_msgSend_count(v4, v6, v7);
  if (v8 && !IMDCoreSpotlightDisabled(v8, v9, v10))
  {
    v29 = v5;
    v11 = dispatch_group_create();
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v30 = v4;
    v12 = v4;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v39, v45, 16);
    if (v14)
    {
      v15 = v14;
      v16 = *v40;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v40 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v39 + 1) + 8 * i);
          v19 = IMDMessageRecordCopyMessageForGUID(v18);
          v22 = objc_msgSend_chatRecord(v19, v20, v21);
          v23 = v22;
          if (v19)
          {
            v24 = v22 == 0;
          }

          else
          {
            v24 = 1;
          }

          if (v24)
          {
            v25 = IMLogHandleForCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v44 = v18;
              _os_log_error_impl(&dword_1B7AD5000, v25, OS_LOG_TYPE_ERROR, "Couldn't find message/chat combo for %@", buf, 0xCu);
            }
          }

          else
          {
            dispatch_group_enter(v11);
            v34[0] = MEMORY[0x1E69E9820];
            v34[1] = 3221225472;
            v34[2] = sub_1B7B9A19C;
            v34[3] = &unk_1E7CBB9E8;
            v35 = v23;
            v36 = v19;
            v38 = a2;
            v37 = v11;
            IMDIndexingClientRequest(v34);

            v25 = v35;
          }
        }

        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v26, &v39, v45, 16);
      }

      while (v15);
    }

    v27 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1B7B9A578;
    block[3] = &unk_1E7CB67C0;
    v5 = v29;
    v33 = v29;
    dispatch_group_notify(v11, v27, block);

    v4 = v30;
  }

  else if (v5)
  {
    (*(v5 + 2))(v5, 0);
  }

  v28 = *MEMORY[0x1E69E9840];
}

void sub_1B7B9A19C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1B7B9A570;
  v4[3] = &unk_1E7CB6C58;
  v3 = *(a1 + 56);
  v5 = *(a1 + 48);
  sub_1B7B9A238(v1, v2, v3, v4);
}

void sub_1B7B9A238(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  if (IMDCoreSpotlightDisabled(v9, v10, v11))
  {
    if (v9)
    {
      v9[2](v9, 0);
    }
  }

  else
  {
    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = sub_1B7AE1AB0;
    v48 = sub_1B7AE2560;
    v49 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = sub_1B7AE1AB0;
    v42 = sub_1B7AE2560;
    v43 = 0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1B7B9AC94;
    block[3] = &unk_1E7CBBA58;
    v36 = &v44;
    v12 = v8;
    v34 = v12;
    v13 = v7;
    v35 = v13;
    v37 = &v38;
    IMDPersistencePerformBlock(block, 1, v14);
    context = objc_autoreleasePoolPush();
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = [IMDIndexingContext alloc];
    v18 = objc_msgSend_initForReindexing_reason_(v16, v17, 0, a3);
    v21 = objc_msgSend_sharedManager(IMDLegacyCoreSpotlightManager, v19, v20);
    v23 = objc_msgSend_newSearchableItemsForMessageItemDictionary_chatDictionary_context_rejectedItems_(v21, v22, v45[5], v39[5], v18, v15);

    if (objc_msgSend_count(v23, v24, v25))
    {
      if (IMCoreSpotlightIndexReasonIsIncomingMessage() && objc_msgSend_messageSummarizationEnabled(MEMORY[0x1E69A8090], v26, v27))
      {
        v28 = IMCoreSpotlightCriticalIndex();
      }

      else
      {
        v28 = IMCoreSpotlightIndex();
      }

      v29 = v28;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = sub_1B7B9ADD8;
      v31[3] = &unk_1E7CB67C0;
      v32 = v9;
      sub_1B7B99410(v23, v15, a3, v29, v31);
    }

    else if (v9)
    {
      v9[2](v9, 0);
    }

    objc_autoreleasePoolPop(context);
    sub_1B7B9A594(v13, v12);

    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&v44, 8);
  }
}

void sub_1B7B9A540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7B9A578(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_1B7B9A594(void *a1, void *a2)
{
  v3 = a1;
  v6 = a2;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v7 = qword_1EDBE5B60;
  v27 = qword_1EDBE5B60;
  if (!qword_1EDBE5B60)
  {
    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = sub_1B7BA7F94;
    v33 = &unk_1E7CB6EA8;
    v34 = &v24;
    sub_1B7BA7F94(&v30, v4, v5);
    v7 = *(v25 + 24);
  }

  v8 = v7;
  _Block_object_dispose(&v24, 8);
  v13 = objc_msgSend_sharedManager(v7, v9, v10);
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_1B7AE1AB0;
  v34 = sub_1B7AE2560;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2050000000;
  v14 = qword_1EDBE5B50;
  v39 = qword_1EDBE5B50;
  if (!qword_1EDBE5B50)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = sub_1B7BA8154;
    v27 = &unk_1E7CB6EA8;
    v28 = &v36;
    sub_1B7BA8154(&v24, v11, v12);
    v14 = v37[3];
  }

  v15 = v14;
  _Block_object_dispose(&v36, 8);
  v35 = objc_alloc_init(v14);
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1B7AE1AB0;
  v28 = sub_1B7AE2560;
  v29 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7B9A878;
  block[3] = &unk_1E7CBBA10;
  v16 = v6;
  v21 = v16;
  v22 = &v30;
  v23 = &v24;
  IMDPersistencePerformBlock(block, 1, v17);
  v19 = *(v25 + 40);
  if (v19)
  {
    objc_msgSend_suggestionsForRequest_withCompletion_(v13, v18, v19, &unk_1F2FA0430);
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
}

void sub_1B7B9A878(uint64_t a1, const char *a2, uint64_t a3)
{
  v85[1] = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_text(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = (a1 + 32);
    v8 = objc_msgSend_text(*(a1 + 32), v5, v6);
    v11 = objc_msgSend_copy(v8, v9, v10);
    objc_msgSend_setTitle_(*(*(*(a1 + 40) + 8) + 40), v12, v11);

    v17 = objc_msgSend_associatedMessageType(*(a1 + 32), v13, v14) >= 2000 && objc_msgSend_associatedMessageType(*(a1 + 32), v15, v16) < 3000;
    v21 = objc_msgSend_associatedMessageType(*(a1 + 32), v15, v16) >= 3000 && objc_msgSend_associatedMessageType(*(a1 + 32), v19, v20) < 4000;
    objc_msgSend_setTapBack_(*(*(*(a1 + 40) + 8) + 40), v19, v17 || v21);
    v26 = objc_msgSend_dateRead(*(a1 + 32), v22, v23);
    if (v26)
    {
      v11 = objc_msgSend_dateRead(*(a1 + 32), v24, v25);
      v27 = objc_alloc(MEMORY[0x1E695DF00]);
      v7 = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v27, v28, v29, 0.0);
      v31 = objc_msgSend_isEqual_(v11, v30, v7) ^ 1;
      objc_msgSend_setRead_(*(*(*(a1 + 40) + 8) + 40), v32, v31);
    }

    else
    {
      objc_msgSend_setRead_(*(*(*(a1 + 40) + 8) + 40), v24, 0);
    }

    if (v26)
    {
    }

    objc_msgSend_setEmote_(*(*(*(a1 + 40) + 8) + 40), v33, 0);
    v38 = objc_msgSend_isFromMe(*(a1 + 32), v34, v35);
    if (v38)
    {
      v39 = 0;
      objc_msgSend_setSenderIdentifier_(*(*(*(a1 + 40) + 8) + 40), v36, 0);
    }

    else
    {
      v11 = objc_msgSend_handleRecord(*(a1 + 32), v36, v37);
      v7 = objc_msgSend_canonicalizedURIString(v11, v42, v43);
      v39 = objc_msgSend_copy(v7, v44, v45);
      objc_msgSend_setSenderIdentifier_(*(*(*(a1 + 40) + 8) + 40), v46, v39);
    }

    if ((v38 & 1) == 0)
    {
    }

    v47 = objc_msgSend_text(*(a1 + 32), v40, v41);
    v50 = objc_msgSend_copy(v47, v48, v49);
    objc_msgSend_setSummary_(*(*(*(a1 + 40) + 8) + 40), v51, v50);

    v54 = objc_msgSend_date(*(a1 + 32), v52, v53);
    objc_msgSend_setDateSent_(*(*(*(a1 + 40) + 8) + 40), v55, v54);

    v85[0] = *(*(*(a1 + 40) + 8) + 40);
    v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v56, v85, 1);
    v81 = 0;
    v82 = &v81;
    v83 = 0x2050000000;
    v59 = qword_1EDBE5B40;
    v84 = qword_1EDBE5B40;
    if (!qword_1EDBE5B40)
    {
      v80[0] = MEMORY[0x1E69E9820];
      v80[1] = 3221225472;
      v80[2] = sub_1B7BA81AC;
      v80[3] = &unk_1E7CB6EA8;
      v80[4] = &v81;
      sub_1B7BA81AC(v80, v57, v58);
      v59 = v82[3];
    }

    v60 = v59;
    _Block_object_dispose(&v81, 8);
    v61 = [v59 alloc];
    v62 = (a1 + 32);
    if (objc_msgSend_isFromMe(*(a1 + 32), v63, v64))
    {
      v66 = objc_msgSend_initWithType_receivedMessages_(v61, v65, 0, MEMORY[0x1E695E0F0]);
    }

    else
    {
      v66 = objc_msgSend_initWithType_receivedMessages_(v61, v65, 0, v18);
    }

    v68 = *(a1 + 48);
    v67 = a1 + 48;
    v69 = *(v68 + 8);
    v70 = *(v69 + 40);
    *(v69 + 40) = v66;

    if (objc_msgSend_isFromMe(*v62, v71, v72))
    {
      objc_msgSend_setSenderMessages_(*(*(*v67 + 8) + 40), v73, v18);
    }

    else
    {
      objc_msgSend_setSenderMessages_(*(*(*v67 + 8) + 40), v73, 0);
    }

    objc_msgSend_setIncludesDynamicSuggestions_(*(*(*v67 + 8) + 40), v74, 1);
    v77 = objc_msgSend_date(*v62, v75, v76);
    objc_msgSend_setRequestDate_(*(*(*v67 + 8) + 40), v78, v77);
  }

  else
  {
    v18 = IMLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_1B7CF8FAC();
    }
  }

  v79 = *MEMORY[0x1E69E9840];
}

void sub_1B7B9AC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B9AC94(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = IMCopyIndexableItemDictionaryForRecord(*(a1 + 32));
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 40);
  if (v5)
  {
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = objc_msgSend_rowID(*(a1 + 32), v9, v10);
      v16 = 134217984;
      v17 = v11;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Getting chat for message id %lld", &v16, 0xCu);
    }
  }

  v5 = objc_msgSend_chatRecord(*(a1 + 32), v6, v7);
  if (v5)
  {
LABEL_7:
    v12 = IMCopyIndexableChatDictionaryForRecord(v5, 0);
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7B9ADD8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_1B7B9ADF4(void *a1, uint64_t a2, void *a3)
{
  v64 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v51 = v5;
  if (objc_msgSend_count(v5, v7, v8))
  {
    v11 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8328], v9, v10);
    isUnderFirstDataProtectionLock = objc_msgSend_isUnderFirstDataProtectionLock(v11, v12, v13);

    v15 = IMOSLoggingEnabled();
    if (isUnderFirstDataProtectionLock)
    {
      if (v15)
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, " => Before first unlock, skipping indexing", buf, 2u);
        }
      }

      if (v6)
      {
LABEL_8:
        v6[2](v6, 0);
      }
    }

    else
    {
      if (v15)
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v63 = v5;
          _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, " => Nuking messages: %@", buf, 0xCu);
        }
      }

      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = sub_1B7B9B2AC;
      v54[3] = &unk_1E7CBBA80;
      v56 = v6;
      v19 = v5;
      v55 = v19;
      v57 = a2;
      IMDIndexingClientRequest(v54);
      v50 = v19;
      v20 = objc_alloc_init(IMDMessageRecordBatchFetcher);
      v22 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], v21, @"%K = %@ AND %K IN %@", *MEMORY[0x1E69A7170], MEMORY[0x1E695E118], *MEMORY[0x1E69A7168], v50);
      objc_msgSend_setPredicate_(v20, v23, v22);

      objc_msgSend_setBatchSize_(v20, v24, 50);
      v27 = objc_msgSend_array(MEMORY[0x1E695DF70], v25, v26);
      do
      {
        v28 = objc_autoreleasePoolPush();
        v31 = objc_msgSend_nextBatch(v20, v29, v30);
        v34 = objc_msgSend_count(v31, v32, v33);
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v35 = v31;
        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v58, buf, 16);
        if (v39)
        {
          v40 = *v59;
          do
          {
            for (i = 0; i != v39; ++i)
            {
              if (*v59 != v40)
              {
                objc_enumerationMutation(v35);
              }

              v42 = objc_msgSend_guid(*(*(&v58 + 1) + 8 * i), v37, v38);
              objc_msgSend_addObject_(v27, v43, v42);
            }

            v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v37, &v58, buf, 16);
          }

          while (v39);
        }

        objc_autoreleasePoolPop(v28);
      }

      while (v34 >= 0x32);
      v46 = objc_msgSend_copy(v27, v44, v45);

      if (objc_msgSend_count(v46, v47, v48))
      {
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = sub_1B7B9B560;
        v52[3] = &unk_1E7CB6AE0;
        v53 = v46;
        IMDIndexingClientRequest(v52);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "Attempted to delete messages without providing guids. Bailing.", buf, 2u);
      }
    }

    if (v6)
    {
      goto LABEL_8;
    }
  }

  v49 = *MEMORY[0x1E69E9840];
}

void sub_1B7B9B2AC(uint64_t a1)
{
  v2 = IMCoreSpotlightCriticalIndex();

  if (v2)
  {
    v5 = IMCoreSpotlightCriticalIndex();
    sub_1B7B9B3A8(v5, *(a1 + 32), *(a1 + 48), *(a1 + 40));
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "No Spotlight index available for this platform. Bailing.", buf, 2u);
      }
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, 0);
    }
  }
}

void sub_1B7B9B3A8(void *a1, void *a2, uint64_t a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1B7BA8204;
  aBlock[3] = &unk_1E7CBB328;
  v10 = v9;
  v20 = v10;
  v11 = _Block_copy(aBlock);
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v16 = objc_msgSend_count(v8, v14, v15);
      v17 = NSStringFromIMCoreSpotlightIndexReason();
      *buf = 134218242;
      v22 = v16;
      v23 = 2112;
      v24 = v17;
      _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Deleting %ld messages from index due to %@", buf, 0x16u);
    }
  }

  objc_msgSend_deleteSearchableItemsWithIdentifiers_reason_completionHandler_(v7, v12, v8, a3, v11);

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1B7B9B568(void *a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (objc_msgSend_count(v1, v2, v3))
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v45 = v1;
        _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Attempting to remove messages from CoreRecents. guids={%@}", buf, 0xCu);
      }
    }

    v7 = objc_msgSend_set(MEMORY[0x1E695DFA8], v4, v5);
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v8 = v1;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v38, v43, 16);
    if (v11)
    {
      v12 = *v39;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v39 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v38 + 1) + 8 * i);
          v15 = objc_msgSend_referenceURLForMessageGUID_(MEMORY[0x1E69A7FE8], v10, v14);
          objc_msgSend_addObject_(v7, v16, v15);
          v18 = objc_msgSend_deprecatedReferenceURLsForMessageGUID_(MEMORY[0x1E69A7FE8], v17, v14);
          objc_msgSend_addObjectsFromArray_(v7, v19, v18);
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v38, v43, 16);
      }

      while (v11);
    }

    v20 = objc_alloc_init(MEMORY[0x1E6998FD8]);
    v42 = *MEMORY[0x1E6998FA8];
    v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, &v42, 1);
    objc_msgSend_setDomains_(v20, v23, v22);

    v26 = objc_msgSend_sharedInstance(IMDCoreSpotlightDispatchObject, v24, v25);
    v29 = objc_msgSend_recentsInstance(v26, v27, v28);

    v30 = IMDIndexingClientRequestQueue();
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = sub_1B7B9C11C;
    v35[3] = &unk_1E7CBBAA8;
    v36 = v7;
    v37 = v29;
    v31 = v29;
    v32 = v7;
    objc_msgSend_performRecentsSearch_queue_completion_(v31, v33, v20, v30, v35);
  }

  v34 = *MEMORY[0x1E69E9840];
}

void sub_1B7B9B850(void *a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v9 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8328], v7, v8);
  isUnderFirstDataProtectionLock = objc_msgSend_isUnderFirstDataProtectionLock(v9, v10, v11);

  if (isUnderFirstDataProtectionLock)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, " => Before first unlock, skipping indexing", buf, 2u);
      }
    }

    if (v6)
    {
      v6[2](v6, 0);
    }
  }

  else if (objc_msgSend_count(v5, v13, v14))
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v23 = v5;
        _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, " => Nuking attachment message parts: %@", buf, 0xCu);
      }
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1B7B9BA8C;
    v18[3] = &unk_1E7CBBA80;
    v20 = v6;
    v19 = v5;
    v21 = a2;
    IMDIndexingClientRequest(v18);
  }

  else if (v6)
  {
    v6[2](v6, 0);
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7B9BA8C(uint64_t a1)
{
  v2 = IMCoreSpotlightCriticalIndex();
  if (v2)
  {
    sub_1B7B9B3A8(v2, *(a1 + 32), *(a1 + 48), *(a1 + 40));
  }

  else
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      (*(v3 + 16))(v3, 0);
    }
  }

  return MEMORY[0x1EEE66C38]();
}

void sub_1B7B9BB0C(void *a1)
{
  v49[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  _IMDCoreRecentsApiInit(v1, v2, v3);
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8328], v5, v6);
  isUnderFirstDataProtectionLock = objc_msgSend_isUnderFirstDataProtectionLock(v7, v8, v9);

  if (isUnderFirstDataProtectionLock)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, " => Deleting this chat", buf, 2u);
      }

LABEL_5:
    }
  }

  else
  {
    if (!v1 && IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "IMDCoreSpotlightDeleteCoreRecentsWithHandlesLegacy bailing because we were passed no handles.", buf, 2u);
      }
    }

    if (objc_msgSend_count(v1, v11, v12) >= 2)
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_24;
      }

      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "IMDCoreSpotlightDeleteCoreRecentsWithHandlesLegacy bailing because this is a group chat.", buf, 2u);
      }

      goto LABEL_5;
    }

    v17 = objc_msgSend_firstObject(v1, v15, v16);
    v20 = objc_msgSend_canonicalizedURIString(v17, v18, v19);
    if (objc_msgSend_length(v20, v21, v22))
    {
      v23 = objc_alloc_init(MEMORY[0x1E6998FD8]);
      v49[0] = *MEMORY[0x1E6998FB0];
      v25 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v24, v49, 1);
      objc_msgSend_setDomains_(v23, v26, v25);

      v27 = MEMORY[0x1E6998FD0];
      v48 = v20;
      v29 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v28, &v48, 1);
      v31 = objc_msgSend_predicateForKey_inCollection_(v27, v30, *MEMORY[0x1E6998F70], v29);

      objc_msgSend_setSearchPredicate_(v23, v32, v31);
      if (v23)
      {
        v35 = objc_msgSend_sharedInstance(IMDCoreSpotlightDispatchObject, v33, v34);
        v38 = objc_msgSend_recentsInstance(v35, v36, v37);

        v39 = dispatch_get_global_queue(0, 0);
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = sub_1B7B9BEF8;
        v44[3] = &unk_1E7CBB2D8;
        v45 = v38;
        v40 = v38;
        objc_msgSend_performRecentsSearch_queue_completion_(v40, v41, v23, v39, v44);
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v42 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v47 = v17;
        _os_log_impl(&dword_1B7AD5000, v42, OS_LOG_TYPE_INFO, "performRecentsSearch: not performing recents SEARCH since a valid handleAlias was not found for handleRecord: gi%@", buf, 0xCu);
      }
    }
  }

LABEL_24:
  objc_autoreleasePoolPop(v4);

  v43 = *MEMORY[0x1E69E9840];
}

void sub_1B7B9BEF8(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v19 = v5;
      _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "performRecentsSearch - recents = %@", buf, 0xCu);
    }
  }

  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v19 = v6;
        _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "performRecentsSearch: recents SEARCH failed with error %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (v5 && objc_msgSend_count(v5, v7, v8))
    {
      v12 = *(a1 + 32);
      v17 = 0;
      v13 = objc_msgSend_removeRecentContacts_error_(v12, v11, v5, &v17);
      v14 = v17;
      if ((v13 & 1) == 0 && IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v19 = v14;
          _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "Removing recents contacts failed with error %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v14 = 0;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1B7B9C11C(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v36 = a3;
  v8 = objc_msgSend_array(MEMORY[0x1E695DF70], v6, v7);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = v5;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v38, v44, 16);
  if (v13)
  {
    v14 = *v39;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v38 + 1) + 8 * i);
        v17 = objc_msgSend_metadata(v16, v11, v12);
        v19 = objc_msgSend_objectForKey_(v17, v18, @"corerecents:reference-url");

        if (objc_msgSend_containsObject_(*(a1 + 32), v20, v19))
        {
          objc_msgSend_addObject_(v8, v21, v16);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v38, v44, 16);
    }

    while (v13);
  }

  if (objc_msgSend_count(v8, v22, v23))
  {
    v26 = *(a1 + 40);
    v27 = objc_msgSend_copy(v8, v24, v25);
    v37 = 0;
    objc_msgSend_removeRecentContacts_error_(v26, v28, v27, &v37);
    v29 = v37;

    v30 = IMOSLoggingEnabled();
    if (v29)
    {
      if (v30)
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v43 = v29;
          _os_log_impl(&dword_1B7AD5000, v31, OS_LOG_TYPE_INFO, "Recent messages remove failed with error %@.", buf, 0xCu);
        }

LABEL_19:
      }
    }

    else if (v30)
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v34 = objc_msgSend_count(v8, v32, v33);
        *buf = 134217984;
        v43 = v34;
        _os_log_impl(&dword_1B7AD5000, v31, OS_LOG_TYPE_INFO, "Successfully removed %ld messages from CoreRecents.", buf, 0xCu);
      }

      goto LABEL_19;
    }
  }

  v35 = *MEMORY[0x1E69E9840];
}

void sub_1B7B9C3B0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1B7B9C360);
  }

  _Unwind_Resume(a1);
}

void sub_1B7B9C3D0(void *a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v9 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8328], v7, v8);
  isUnderFirstDataProtectionLock = objc_msgSend_isUnderFirstDataProtectionLock(v9, v10, v11);

  if (isUnderFirstDataProtectionLock)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, " => Before first unlock, skipping indexing", buf, 2u);
      }
    }

    if (v6)
    {
      v6[2](v6, 0);
    }
  }

  else if (objc_msgSend_count(v5, v13, v14))
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v23 = v5;
        _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, " => Nuking chat: %@", buf, 0xCu);
      }
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1B7B9C60C;
    v18[3] = &unk_1E7CBBAD0;
    v19 = v5;
    v21 = a2;
    v20 = v6;
    IMDIndexingClientRequest(v18);
  }

  else if (v6)
  {
    v6[2](v6, 0);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1B7B9C60C(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v23 = IMCoreSpotlightCriticalIndex();
  objc_msgSend_beginIndexBatch(v23, v2, v3);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = *(a1 + 32);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v27, v35, 16);
  if (v8)
  {
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = objc_msgSend_sharedManager(IMDLegacyCoreSpotlightManager, v6, v7);
        objc_msgSend_deleteChatSearchableItemForChatGUID_reason_(v12, v13, v11, *(a1 + 48));

        if (IMOSLoggingEnabled())
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = *(a1 + 48);
            v16 = NSStringFromIMCoreSpotlightIndexReason();
            *buf = 138412546;
            v32 = v11;
            v33 = 2112;
            v34 = v16;
            _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "Deleting %@ from index due to %@", buf, 0x16u);
          }
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v27, v35, 16);
    }

    while (v8);
  }

  v17 = *(a1 + 32);
  v18 = *(a1 + 48);
  v19 = IMCSIndexReasonFromIMIndexReason();
  objc_msgSend_deleteSearchableItemsWithDomainIdentifiers_reason_completionHandler_(v23, v20, v17, v19, 0);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_1B7B9C894;
  v24[3] = &unk_1E7CBB398;
  v25 = *(a1 + 32);
  v26 = *(a1 + 40);
  objc_msgSend_endIndexBatchWithClientState_completionHandler_(v23, v21, 0, v24);

  v22 = *MEMORY[0x1E69E9840];
}

void sub_1B7B9C894(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3 && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "IMDCoreSpotlightDeleteChatGUIDsLegacy: Failed to delete items with domain identifiers %@ with error %@", &v8, 0x16u);
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7B9C9A0(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (objc_msgSend_count(v5, v7, v8))
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1B7B9CAF4;
    v10[3] = &unk_1E7CBBAD0;
    v11 = v5;
    v13 = a2;
    v12 = v6;
    IMDIndexingClientRequest(v10);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "No chats to add", buf, 2u);
      }
    }

    if (v6)
    {
      (*(v6 + 2))(v6, 0);
    }
  }
}

void sub_1B7B9CAF4(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = objc_msgSend_count(*(a1 + 32), v5, v6);
      *buf = 134217984;
      v35 = v7;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Adding %lu chats to CoreSpotlight", buf, 0xCu);
    }
  }

  v8 = MEMORY[0x1E695DF70];
  v9 = objc_msgSend_count(*(a1 + 32), v2, v3);
  v11 = objc_msgSend_arrayWithCapacity_(v8, v10, v9);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = *(a1 + 32);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v29, v33, 16);
  if (v16)
  {
    v17 = *v30;
    do
    {
      v18 = 0;
      do
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v29 + 1) + 8 * v18);
        v20 = objc_msgSend_sharedManager(IMDLegacyCoreSpotlightManager, v14, v15);
        v22 = objc_msgSend_chatSearchableItemForGUID_(v20, v21, v19);

        if (v22)
        {
          objc_msgSend_addObject_(v11, v23, v22);
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v29, v33, 16);
    }

    while (v16);
  }

  v24 = *(a1 + 48);
  v25 = IMCoreSpotlightIndex();
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_1B7B9CD60;
  v27[3] = &unk_1E7CB67C0;
  v28 = *(a1 + 40);
  sub_1B7B99410(v11, 0, v24, v25, v27);

  v26 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7B9CD60(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_1B7B9CD7C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a1;
  v7 = a4;
  v10 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8328], v8, v9);
  isUnderFirstDataProtectionLock = objc_msgSend_isUnderFirstDataProtectionLock(v10, v11, v12);

  if (isUnderFirstDataProtectionLock)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_12;
    }

    v16 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v17 = " => Before first unlock, skipping re-indexing of messages";
    goto LABEL_10;
  }

  if (objc_msgSend_count(v6, v14, v15))
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1B7B9CF38;
    v18[3] = &unk_1E7CBBAD0;
    v19 = v6;
    v20 = v7;
    v21 = a2;
    IMDIndexingClientRequest(v18);

    goto LABEL_14;
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
LABEL_11:

      goto LABEL_12;
    }

    *buf = 0;
    v17 = "Trying to reindex messages with an empty guids array";
LABEL_10:
    _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, v17, buf, 2u);
    goto LABEL_11;
  }

LABEL_12:
  if (v7)
  {
    v7[2](v7);
  }

LABEL_14:
}

void sub_1B7B9CF38(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v5 = objc_msgSend_count(*(a1 + 32), v3, v4);
      *buf = 67109120;
      v40 = v5;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Request to re-index messages with messages count: %d", buf, 8u);
    }
  }

  v6 = IMCoreSpotlightIndex();
  v7 = v6 == 0;

  if (v7)
  {
    v29 = *(a1 + 40);
    if (v29)
    {
      (*(v29 + 16))();
    }
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E69A6170]);
    objc_msgSend_startTimingForKey_(v8, v9, @"total time for indexing messages");
    v10 = objc_alloc(MEMORY[0x1E695DF70]);
    v13 = objc_msgSend_count(*(a1 + 32), v11, v12);
    v15 = objc_msgSend_initWithCapacity_(v10, v14, v13);
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = [IMDIndexingContext alloc];
    v19 = objc_msgSend_initForReindexing_reason_(v17, v18, 1, *(a1 + 48));
    v20 = *(a1 + 32);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = sub_1B7B9D218;
    v34[3] = &unk_1E7CBBAF8;
    v21 = v8;
    v35 = v21;
    v36 = v19;
    v37 = v16;
    v38 = v15;
    v22 = v15;
    v23 = v16;
    v24 = v19;
    objc_msgSend_enumerateObjectsUsingBlock_(v20, v25, v34);
    v26 = *(a1 + 48);
    v27 = IMCoreSpotlightIndex();
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = sub_1B7B9D2D4;
    v31[3] = &unk_1E7CB7260;
    v32 = v21;
    v33 = *(a1 + 40);
    v28 = v21;
    sub_1B7B99410(v22, v23, v26, v27, v31);
  }

  v30 = *MEMORY[0x1E69E9840];
}

void sub_1B7B9D218(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = objc_autoreleasePoolPush();
  objc_msgSend_startTimingForKey_(*(a1 + 32), v4, @"generate indexable item");
  v7 = objc_msgSend_sharedManager(IMDLegacyCoreSpotlightManager, v5, v6);
  v9 = objc_msgSend_newSearchableItemsForMessageGUID_context_rejectedItems_(v7, v8, v12, *(a1 + 40), *(a1 + 48));

  objc_msgSend_addObjectsFromArray_(*(a1 + 56), v10, v9);
  objc_msgSend_stopTimingForKey_(*(a1 + 32), v11, @"generate indexable item");

  objc_autoreleasePoolPop(v3);
}

uint64_t sub_1B7B9D2D4(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stopTimingForKey_(*(a1 + 32), a2, @"total time for indexing messages");
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Done re-indexing messages, time: %@", &v7, 0xCu);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B7B9D3C8(void *a1, void *a2, uint64_t a3, void *a4)
{
  v82 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v65 = a2;
  v8 = a4;
  v11 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8328], v9, v10);
  isUnderFirstDataProtectionLock = objc_msgSend_isUnderFirstDataProtectionLock(v11, v12, v13);

  if (isUnderFirstDataProtectionLock)
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, " => Before first unlock, skipping re-indexing of messages", buf, 2u);
      }
    }

LABEL_6:
    v8[2](v8);
    goto LABEL_37;
  }

  v18 = objc_msgSend_count(v7, v15, v16);
  v19 = IMOSLoggingEnabled();
  if (!v18)
  {
    if (v19)
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v26, OS_LOG_TYPE_INFO, "Trying to reindex messages with an empty guids array", buf, 2u);
      }
    }

    goto LABEL_6;
  }

  if (v19)
  {
    v22 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v81 = objc_msgSend_count(v7, v23, v24);
      _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "Request to re-index messages with messages count: %d", buf, 8u);
    }
  }

  if (IMDCoreSpotlightDisabled(v19, v20, v21))
  {
    v25 = IMLogHandleForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF90A8();
    }

LABEL_15:

    v8[2](v8);
    goto LABEL_37;
  }

  if (!v65)
  {
    v25 = IMLogHandleForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF906C();
    }

    goto LABEL_15;
  }

  v27 = objc_alloc_init(MEMORY[0x1E69A6170]);
  objc_msgSend_startTimingForKey_(v27, v28, @"total time for indexing messages");
  v29 = objc_alloc(MEMORY[0x1E695DF70]);
  v32 = objc_msgSend_count(v7, v30, v31);
  v34 = objc_msgSend_initWithCapacity_(v29, v33, v32);
  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v36 = [IMDIndexingContext alloc];
  v38 = objc_msgSend_initForReindexing_reason_(v36, v37, 1, a3);
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = sub_1B7B9D994;
  v74[3] = &unk_1E7CBBAF8;
  v62 = v27;
  v75 = v62;
  v61 = v38;
  v76 = v61;
  v60 = v35;
  v77 = v60;
  v64 = v34;
  v78 = v64;
  objc_msgSend_enumerateObjectsUsingBlock_(v7, v39, v74);
  v73 = 0;
  v41 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v40, v65, 1, &v73);
  v63 = v73;
  if (v41)
  {
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v42 = v64;
    v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v69, v79, 16, v60, v61);
    if (v46)
    {
      v47 = *v70;
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v70 != v47)
          {
            objc_enumerationMutation(v42);
          }

          v49 = objc_msgSend_attributeSet(*(*(&v69 + 1) + 8 * i), v44, v45);
          v52 = objc_msgSend_collaborationMetadataKey(IMDSharedWithYouMetadataManager, v50, v51);
          objc_msgSend_setValue_forCustomKey_(v49, v53, v41, v52);
        }

        v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v44, &v69, v79, 16);
      }

      while (v46);
    }
  }

  else
  {
    v42 = IMLogHandleForCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF8FEC();
    }
  }

  v56 = objc_msgSend_sharedManager(IMDLegacyCoreSpotlightManager, v54, v55);
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = sub_1B7B9DA50;
  v66[3] = &unk_1E7CB7260;
  v67 = v62;
  v68 = v8;
  v57 = v62;
  objc_msgSend_reIndexWithLocalProofOfInclusionForItemsAsync_completionHandler_(v56, v58, v64, v66);

LABEL_37:
  v59 = *MEMORY[0x1E69E9840];
}

void sub_1B7B9D994(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = objc_autoreleasePoolPush();
  objc_msgSend_startTimingForKey_(*(a1 + 32), v4, @"generate indexable item");
  v7 = objc_msgSend_sharedManager(IMDLegacyCoreSpotlightManager, v5, v6);
  v9 = objc_msgSend_newSearchableItemsForMessageGUID_context_rejectedItems_(v7, v8, v12, *(a1 + 40), *(a1 + 48));

  objc_msgSend_addObjectsFromArray_(*(a1 + 56), v10, v9);
  objc_msgSend_stopTimingForKey_(*(a1 + 32), v11, @"generate indexable item");

  objc_autoreleasePoolPop(v3);
}

uint64_t sub_1B7B9DA50(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stopTimingForKey_(*(a1 + 32), a2, @"total time for indexing messages");
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Done re-indexing messages, time: %@", &v7, 0xCu);
    }
  }

  result = (*(*(a1 + 40) + 16))();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B7B9DB40(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8328], v5, v6);
  isUnderFirstDataProtectionLock = objc_msgSend_isUnderFirstDataProtectionLock(v7, v8, v9);

  if (isUnderFirstDataProtectionLock)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v19 = 136315138;
        v20 = "void IMDCoreSpotlightSetNeedsMessageReindexBlockingLegacy(BOOL, IMCoreSpotlightIndexReason, __strong dispatch_block_t)";
        _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, " => %s Before first unlock, skipping indexing", &v19, 0xCu);
      }
    }

    if (v4)
    {
      v4[2](v4);
    }
  }

  else
  {
    v14 = objc_msgSend_sharedManager(IMDLegacyCoreSpotlightManager, v11, v12);
    v16 = objc_msgSend_contextWithReason_(IMDIndexingContext, v15, a2);
    objc_msgSend_setNeedsMessageReindexingWithContext_completion_(v14, v17, v16, v4);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1B7B9DCAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v9 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8328], v7, v8);
  isUnderFirstDataProtectionLock = objc_msgSend_isUnderFirstDataProtectionLock(v9, v10, v11);

  if (isUnderFirstDataProtectionLock)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v20 = "void IMDCoreSpotlightIndexNextMessageBatchIfNeededBlockingLegacy(BOOL, NSUInteger, IMCoreSpotlightIndexReason, __strong dispatch_block_t)";
        _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, " => %s Before first unlock, skipping indexing", buf, 0xCu);
      }
    }

    if (v6)
    {
      v6[2](v6);
    }
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1B7B9DE40;
    v15[3] = &unk_1E7CBBB20;
    v17 = a2;
    v18 = a3;
    v16 = v6;
    IMDIndexingClientRequest(v15);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1B7B9DE40(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedManager(IMDLegacyCoreSpotlightManager, a2, a3);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7B9DEF8;
  v8[3] = &unk_1E7CB67C0;
  v9 = *(a1 + 32);
  objc_msgSend_indexNextMessageBatchIfNeeded_reason_completion_(v4, v7, v5, v6, v8);
}

uint64_t sub_1B7B9DEF8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1B7B9DF10(int a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v4 = IMDMessageRecordDeleteBatchOfDeletedMessageGuids(a1, &v17, a3);
  v5 = v17;
  v8 = v5;
  if (v4)
  {
    if (v5 && objc_msgSend_count(v5, v6, v7))
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v12 = objc_msgSend_count(v8, v10, v11);
          *buf = 134217984;
          v19 = v12;
          _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "Found %ld messages guids to remove from spotlight", buf, 0xCu);
        }
      }

      sub_1B7B9ADF4(v8, a2, 0);
      v13 = 1;
LABEL_15:

      goto LABEL_16;
    }

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "Found 0 messages guids to remove from spotlight", buf, 2u);
      }
    }

    v13 = 0;
    if (v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_16:

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

void sub_1B7B9E0BC(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1B7B9E150;
  aBlock[3] = &unk_1E7CB6A70;
  aBlock[4] = a1;
  v1 = _Block_copy(aBlock);
  if ((IMIsRunningInUnitTesting() & 1) == 0)
  {
    _IMDPerformBlockWithDelay(v1);
  }
}

uint64_t sub_1B7B9E150(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = 0;
  result = sub_1B7B9DF10(2000, v2, &v4);
  if (result)
  {
    return sub_1B7B9E0BC(*(a1 + 32));
  }

  return result;
}

void *sub_1B7B9E198(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [IMDIndexingContext alloc];
  v7 = objc_msgSend_initForReindexing_reason_(v5, v6, 1, 1008);
  v10 = objc_msgSend_sharedManager(IMDLegacyCoreSpotlightManager, v8, v9);
  v12 = objc_msgSend_newSearchableItemsForMessage_context_rejectedItems_(v10, v11, v4, v7, v3);

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  v14 = v13;

  return v13;
}

void sub_1B7B9E294()
{
  v0 = objc_alloc_init(IMDLegacyCoreSpotlightManager);
  v1 = qword_1EBA53A78;
  qword_1EBA53A78 = v0;
}

void sub_1B7B9E5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B9E664()
{
  v0 = dispatch_queue_create(0, 0);
  v1 = qword_1EBA540D0;
  qword_1EBA540D0 = v0;

  v2 = qword_1EBA540D0;
  v3 = dispatch_get_global_queue(2, 0);
  dispatch_set_target_queue(v2, v3);
}

void sub_1B7B9E720()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.imdpersistence.scrutinyMessagesQueue", v2);
  v1 = qword_1EDBE5B98;
  qword_1EDBE5B98 = v0;
}

uint64_t sub_1B7B9E7CC()
{
  result = MEMORY[0x1B8CAFAC0](@"SLCollaborationHandshakeController", @"SocialLayer");
  qword_1EBA540E0 = result;
  return result;
}

void sub_1B7B9E900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B9EA1C(uint64_t a1, const char *a2)
{
  objc_msgSend_addObject_(*(*(a1 + 32) + 16), a2, *(a1 + 40));
  v5 = objc_msgSend_array(*(*(a1 + 32) + 16), v3, v4);
  IMSetDomainValueForKey();
}

void sub_1B7B9EB84(uint64_t a1, const char *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  objc_msgSend_removeObject_(*(*(a1 + 32) + 16), a2, *(a1 + 40));
  v5 = objc_msgSend_array(*(*(a1 + 32) + 16), v3, v4);
  v8 = objc_msgSend_count(v5, v6, v7);
  if (v8 < 0xC9)
  {
    v12 = v5;
  }

  else
  {
    v9 = v8;
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v19[0] = 67109120;
        v19[1] = 200;
        _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "Blocklist size > %d on load, truncating", v19, 8u);
      }
    }

    v12 = objc_msgSend_subarrayWithRange_(v5, v10, v9 - 200, 200);

    v13 = objc_alloc(MEMORY[0x1E695DFA0]);
    v15 = objc_msgSend_initWithArray_(v13, v14, v12);
    v16 = *(a1 + 32);
    v17 = *(v16 + 16);
    *(v16 + 16) = v15;
  }

  IMSetDomainValueForKey();

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1B7B9EE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B9EE4C(uint64_t a1)
{
  v2 = IMDMessageRecordCopyMessageForGUID(*(a1 + 32));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1B7B9F024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1B7B9F048(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = IMCopyIndexableItemDictionaryForRecord(*(a1 + 32));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = objc_msgSend_rowID(*(a1 + 32), v8, v9);
      v17 = 134217984;
      v18 = v10;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Getting chat for message id %lld", &v17, 0xCu);
    }
  }

  v11 = objc_msgSend_chatRecord(*(a1 + 32), v5, v6);
  v12 = v11;
  if (v11)
  {
    v13 = IMCopyIndexableChatDictionaryForRecord(v11, 0);
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1B7BA03E0(_Unwind_Exception *a1)
{
  _Block_object_dispose(&v3, 8);
  _Block_object_dispose(&v4, 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1B7BA0514()
{
  v0 = dispatch_queue_create(0, 0);
  v1 = qword_1EBA540F0;
  qword_1EBA540F0 = v0;

  v2 = qword_1EBA540F0;
  v3 = dispatch_get_global_queue(2, 0);
  dispatch_set_target_queue(v2, v3);
}

void sub_1B7BA058C(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v2 = *(a1 + 32);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v25, v29, 16);
  if (v5)
  {
    v6 = *v26;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        objc_msgSend_startTimingWithProfiler_(v8, v4, *(a1 + 40), v25);
        *(*(*(a1 + 120) + 8) + 24) = objc_msgSend_cancelIndexingForItem_(v8, v9, *(a1 + 48));
        v11 = objc_msgSend_auxiliaryItemsForPrimaryAttributes_withItem_chat_context_timingProfiler_rejectedItems_(v8, v10, *(a1 + 56), *(a1 + 48), *(a1 + 64), *(a1 + 72), *(a1 + 40), *(a1 + 80));
        objc_msgSend_addObjectsFromArray_(*(a1 + 88), v12, v11);
        if (*(*(*(a1 + 120) + 8) + 24))
        {
          objc_msgSend_stopProfilingAfterIndexersBailed(*(a1 + 40), v13, v14);

          goto LABEL_11;
        }

        objc_msgSend_indexItem_withChat_context_metadataToUpdate_timingProfiler_(v8, v13, *(a1 + 48), *(a1 + 64), *(a1 + 72), *(a1 + 56), *(a1 + 40));
        objc_msgSend_stopTimingWithProfiler_(v8, v15, *(a1 + 40));
      }

      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v25, v29, 16);
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if ((*(*(*(a1 + 120) + 8) + 24) & 1) == 0)
  {
    objc_msgSend_startTimingForKey_(*(a1 + 40), v16, @"post-processor");
  }

  v18 = *(a1 + 96);
  v19 = *(a1 + 48);
  v20 = *(a1 + 64);
  isReindexing = objc_msgSend_isReindexing(*(a1 + 72), v16, v17, v25);
  objc_msgSend__postProcessIndexingForItem_chatDictionary_isReindexing_(v18, v22, v19, v20, isReindexing);
  if ((*(*(*(a1 + 120) + 8) + 24) & 1) == 0)
  {
    objc_msgSend_stopTimingForKey_(*(a1 + 40), v23, @"post-processor");
  }

  dispatch_group_leave(*(a1 + 112));
  v24 = *MEMORY[0x1E69E9840];
}

void sub_1B7BA0ACC()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_resolvedURL", 1, 0, 0, 0);
  v3 = qword_1EBA54100;
  qword_1EBA54100 = v2;
}

void sub_1B7BA0D98(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3 && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = objc_msgSend_uniqueIdentifier(*(a1 + 32), v5, v6);
      v9 = 136315650;
      v10 = "[IMDLegacyCoreSpotlightManager _updateItem:withResolvedURL:]_block_invoke";
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "IMDCoreSpotlight %s: indexing resolved url searchable item %@ failed with error %@", &v9, 0x20u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7BA1168(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3 && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = objc_msgSend_uniqueIdentifier(*(a1 + 32), v5, v6);
      v9 = 136315650;
      v10 = "[IMDLegacyCoreSpotlightManager _updateItem:withFPProviderID:]_block_invoke";
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "IMDCoreSpotlight %s: Updating FileProviderID for searchable item %@ failed with error %@", &v9, 0x20u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7BA17A0(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3 && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = objc_msgSend_uniqueIdentifier(*(a1 + 32), v5, v6);
      v9 = 136315650;
      v10 = "[IMDLegacyCoreSpotlightManager _updateItem:withIdentityMap:localIdentity:localIdentityProof:completionHandler:]_block_invoke";
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "IMDCoreSpotlight %s: Updating Proof of inclusion for searchable item %@ failed with error %@", &v9, 0x20u);
    }
  }

  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7BA1C78(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = IMDIndexingClientRequestQueue();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7BA1D54;
  v10[3] = &unk_1E7CBB3C0;
  v11 = v6;
  v12 = *(a1 + 32);
  v13 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);
}

void sub_1B7BA1D54(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = (a1 + 32);
  if (*(a1 + 32))
  {
    v2 = IMLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF9550(v1, v2, v3, v4, v5, v6, v7, v8);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v15 = objc_msgSend_uniqueIdentifier(*(a1 + 40), v13, v14);
        v20 = 138412290;
        v21 = v15;
        _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "Found resolved URL for item %@", &v20, 0xCu);
      }
    }

    v17 = *(a1 + 40);
    v16 = *(a1 + 48);
    v2 = objc_msgSend_absoluteString(*(a1 + 56), v10, v11);
    objc_msgSend__updateItem_withResolvedURL_(v16, v18, v17, v2);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void *sub_1B7BA21B0()
{
  result = MEMORY[0x1B8CAFAD0]("FPProviderForShareURL", @"FileProvider");
  off_1EBA54118 = result;
  return result;
}

void sub_1B7BA21E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = IMDIndexingClientRequestQueue();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7BA22E0;
  v10[3] = &unk_1E7CBB410;
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void sub_1B7BA22E0(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (!*(a1 + 40))
  {
    goto LABEL_23;
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = objc_msgSend_description(*(a1 + 40), v6, v7);
      v36 = 138412546;
      v37 = v4;
      v38 = 2112;
      v39 = v8;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Failed to get FPProviderID:%@ for URL. Error: %@", &v36, 0x16u);
    }
  }

  if (qword_1EBA54130 != -1)
  {
    sub_1B7CF95E8();
  }

  if (off_1EBA54128)
  {
    v9 = off_1EBA54128();
    v12 = objc_msgSend_host(*(a1 + 48), v10, v11);
    v14 = objc_msgSend_containsObject_(v9, v13, v12);
    v15 = IMOSLoggingEnabled();
    if (v14)
    {
      if (v15)
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          LOWORD(v36) = 0;
          _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Setting default FileProviderID for URL", &v36, 2u);
        }
      }

      if (qword_1EBA54140 != -1)
      {
        sub_1B7CF9610();
      }

      if (off_1EBA54138 && (off_1EBA54138(), (v17 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        if (IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v36 = 138412290;
            v37 = v17;
            _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, "Found FileProviderID from FPCloudDocsProviderID(): %@", &v36, 0xCu);
          }
        }

        v19 = v17;

        v4 = v19;
      }

      else
      {
        v19 = @"com.apple.CloudDocs.MobileDocumentsFileProvider";
        if (IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v36 = 138412290;
            v37 = @"com.apple.CloudDocs.MobileDocumentsFileProvider";
            _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Did not find FileProviderID from FPCloudDocsProviderID(), falling back to default ID: %@", &v36, 0xCu);
          }
        }
      }
    }

    else
    {
      if (v15)
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          LOWORD(v36) = 0;
          _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_INFO, "Host for URL not in ValidSharingURLs so not defaulting FPProviderID", &v36, 2u);
        }
      }

      v19 = v4;
    }
  }

  else
  {
LABEL_23:
    v19 = v4;
  }

  v22 = objc_msgSend_filename(*(a1 + 56), v2, v3);
  v25 = objc_msgSend_length(v22, v23, v24) == 0;

  LODWORD(v22) = objc_msgSend_length(v19, v26, v27) == 0;
  v28 = IMOSLoggingEnabled();
  if ((v22 | v25))
  {
    if (v28)
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v33 = objc_msgSend_filename(*(a1 + 56), v31, v32);
        v36 = 138412546;
        v37 = v19;
        v38 = 2112;
        v39 = v33;
        _os_log_impl(&dword_1B7AD5000, v30, OS_LOG_TYPE_INFO, "Not setting FPProviderID: %@ for URL in CSSI. FileName: %@", &v36, 0x16u);
      }
    }
  }

  else
  {
    if (v28)
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v36 = 138412290;
        v37 = v19;
        _os_log_impl(&dword_1B7AD5000, v34, OS_LOG_TYPE_INFO, "Setting FPProviderID: %@ for URL in CSSI", &v36, 0xCu);
      }
    }

    objc_msgSend__updateItem_withFPProviderID_(*(a1 + 64), v29, *(a1 + 72), v19);
  }

  v35 = *MEMORY[0x1E69E9840];
}

void *sub_1B7BA27C4()
{
  result = MEMORY[0x1B8CAFAD0]("CKValidSharingURLHostnames", @"CloudKit");
  off_1EBA54128 = result;
  return result;
}

void *sub_1B7BA27F4()
{
  result = MEMORY[0x1B8CAFAD0]("FPCloudDocsProviderID", @"FileProvider");
  off_1EBA54138 = result;
  return result;
}

void sub_1B7BA3010(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1B7BA28E8);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1B7BA3068(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF974C(v6, v7, v8);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = *(*(*(a1 + 64) + 8) + 40);
        *buf = 138412546;
        v22 = v5;
        v23 = 2112;
        v24 = v12;
        _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "Fetched localIdentityProof: %@ for localIdentity: %@", buf, 0x16u);
      }
    }

    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = objc_msgSend_handleToIdentityMap(*(a1 + 48), v9, v10);
    v16 = *(*(*(a1 + 64) + 8) + 40);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1B7BA324C;
    v19[3] = &unk_1E7CB6AE0;
    v20 = *(a1 + 56);
    objc_msgSend__updateItem_withIdentityMap_localIdentity_localIdentityProof_completionHandler_(v13, v17, v14, v15, v16, v5, v19);

    v7 = v20;
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1B7BA3A34()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_isChatAutoDonating", 1, 0, 0, 0);
  v3 = qword_1EDBE5B90;
  qword_1EDBE5B90 = v2;
}

void sub_1B7BA3AD0()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_chatAutoDonatingServerDate", 1, 0, 0, 0);
  v3 = qword_1EDBE5B80;
  qword_1EDBE5B80 = v2;
}

void sub_1B7BA3B6C()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_chatStyle", 1, 0, 0, 0);
  v3 = qword_1EDBE5EA8;
  qword_1EDBE5EA8 = v2;
}

void sub_1B7BA3C08()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_localIdentityProof", 0, 0, 1, 0);
  v3 = qword_1EBA54148;
  qword_1EBA54148 = v2;
}

void sub_1B7BA3CA4()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_localIdentity", 0, 0, 1, 0);
  v3 = qword_1EBA54158;
  qword_1EBA54158 = v2;
}

void sub_1B7BA3D40()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_handleToIdentityMap", 0, 0, 1, 0);
  v3 = qword_1EBA54168;
  qword_1EBA54168 = v2;
}

void sub_1B7BA3DDC()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_threadIdentifier", 0, 0, 1, 0);
  v3 = qword_1EBA53A28;
  qword_1EBA53A28 = v2;
}

void sub_1B7BA4008(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v140 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v98 = a2;
  v101 = a3;
  v100 = a4;
  v11 = a6;
  v99 = v10;
  if (IMDCoreSpotlightDisabled(v11, v12, v13))
  {
    v11[2](v11);
    goto LABEL_54;
  }

  v96 = v11;
  group = dispatch_group_create();
  objc_msgSend_beginIndexBatch(v10, v14, v15);
  v18 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v16, v17);
  dispatch_group_enter(group);
  v129[0] = MEMORY[0x1E69E9820];
  v129[1] = 3221225472;
  v129[2] = sub_1B7BA8330;
  v129[3] = &unk_1E7CB6C10;
  v104 = v18;
  v130 = v104;
  v131 = v10;
  v94 = v131;
  objc_msgSend_indexSearchableItems_completionHandler_(v131, v19, v101, v129);
  if (objc_msgSend_count(v100, v20, v21) && (IMCoreSpotlightIndexReasonIsIncomingMessage() & 1) == 0)
  {
    if (objc_msgSend_withdrawDonationsForFailedPreviewGenerations(MEMORY[0x1E69A7FF8], v22, v23))
    {
      v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v25 = v100;
      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v125, v139, 16);
      if (v29)
      {
        v30 = *v126;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v126 != v30)
            {
              objc_enumerationMutation(v25);
            }

            v32 = *(*(&v125 + 1) + 8 * i);
            v33 = MEMORY[0x1E696AD98];
            v34 = objc_msgSend_reason(v32, v27, v28);
            v36 = objc_msgSend_numberWithInteger_(v33, v35, v34);
            v40 = objc_msgSend_objectForKeyedSubscript_(v24, v37, v36);
            if (!v40)
            {
              v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
              objc_msgSend_setObject_forKeyedSubscript_(v24, v41, v40, v36);
            }

            v42 = objc_msgSend_proposedIdentifier(v32, v38, v39);
            objc_msgSend_addObject_(v40, v43, v42);
          }

          v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v27, &v125, v139, 16);
        }

        while (v29);
      }

      v122[0] = MEMORY[0x1E69E9820];
      v122[1] = 3221225472;
      v122[2] = sub_1B7BA842C;
      v122[3] = &unk_1E7CBBD18;
      v123 = v94;
      v124 = a5;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v24, v44, v122);
    }

    else if (IMOSLoggingEnabled())
    {
      v45 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v48 = objc_msgSend_count(v100, v46, v47);
        *buf = 134217984;
        v134 = v48;
        _os_log_impl(&dword_1B7AD5000, v45, OS_LOG_TYPE_INFO, "not deleting %ld items from Spotlight due to override", buf, 0xCu);
      }
    }
  }

  v49 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v22, v23);
  isSpotlightClientStateEnabled = objc_msgSend_isSpotlightClientStateEnabled(v49, v50, v51);

  if (!isSpotlightClientStateEnabled)
  {
    v56 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v53, v54);
    v95 = objc_msgSend_dataUsingEncoding_(v56, v58, 4);
LABEL_27:

    goto LABEL_29;
  }

  if (!v98)
  {
    v95 = 0;
    goto LABEL_29;
  }

  v121 = 0;
  v95 = objc_msgSend_dataWithError_(v98, v53, &v121);
  v55 = v121;
  if (v55)
  {
    v56 = v55;
    v57 = IMLogHandleForCategory();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
    {
      sub_1B7CF9A20();
    }

    goto LABEL_27;
  }

LABEL_29:
  if (IMOSLoggingEnabled())
  {
    v61 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
    {
      v64 = objc_msgSend_count(v101, v62, v63);
      v65 = NSStringFromIMCoreSpotlightIndexReason();
      *buf = 134218498;
      v134 = v64;
      v135 = 2112;
      v136 = v65;
      v137 = 2112;
      v138 = v104;
      _os_log_impl(&dword_1B7AD5000, v61, OS_LOG_TYPE_INFO, "Indexing %ld searchable items due to %@ - transaction %@", buf, 0x20u);
    }
  }

  if (objc_msgSend_count(v101, v59, v60))
  {
    if (qword_1EBA53BC0 != -1)
    {
      sub_1B7CF9A9C();
    }

    if (IMOSLoggingEnabled())
    {
      v66 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
      {
        v69 = objc_msgSend_count(v101, v67, v68);
        *buf = 134218242;
        v134 = v69;
        v135 = 2112;
        v136 = v104;
        _os_log_impl(&dword_1B7AD5000, v66, OS_LOG_TYPE_INFO, "Donating %ld items to Suggestions with transaction ID %@", buf, 0x16u);
      }
    }

    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    obj = v101;
    v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v70, &v117, v132, 16);
    if (v73)
    {
      v74 = *v118;
      do
      {
        for (j = 0; j != v73; ++j)
        {
          if (*v118 != v74)
          {
            objc_enumerationMutation(obj);
          }

          v76 = *(*(&v117 + 1) + 8 * j);
          if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v71, v72) && IMOSLoggingEnabled())
          {
            v77 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
            {
              v80 = objc_msgSend_uniqueIdentifier(v76, v78, v79);
              v83 = objc_msgSend_domainIdentifier(v76, v81, v82);
              *buf = 138412802;
              v134 = v80;
              v135 = 2112;
              v136 = v83;
              v137 = 2112;
              v138 = v104;
              _os_log_impl(&dword_1B7AD5000, v77, OS_LOG_TYPE_INFO, "Donating item ID %@ domain %@ to Suggestions with transaction ID %@", buf, 0x20u);
            }
          }

          dispatch_group_enter(group);
          v84 = qword_1EBA53BB8;
          v114[0] = MEMORY[0x1E69E9820];
          v114[1] = 3221225472;
          v114[2] = sub_1B7BA86DC;
          v114[3] = &unk_1E7CBBD40;
          v114[4] = v76;
          v115 = v104;
          v116 = group;
          objc_msgSend_suggestionsFromMessage_options_completionHandler_(v84, v85, v76, 3, v114);
        }

        v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v71, &v117, v132, 16);
      }

      while (v73);
    }
  }

  v86 = IMCSIndexReasonFromIMIndexReason();
  v109[0] = MEMORY[0x1E69E9820];
  v109[1] = 3221225472;
  v109[2] = sub_1B7BA8888;
  v109[3] = &unk_1E7CBBD68;
  v87 = v104;
  v110 = v87;
  v111 = v94;
  v88 = v101;
  v112 = v88;
  v113 = group;
  v89 = group;
  objc_msgSend_endIndexBatchWithExpectedClientState_newClientState_reason_completionHandler_(v111, v90, 0, v95, v86, v109);
  v91 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BA89D4;
  block[3] = &unk_1E7CB71C0;
  v106 = v88;
  v107 = v87;
  v108 = v96;
  v92 = v87;
  dispatch_group_notify(v89, v91, block);

  v11 = v96;
LABEL_54:

  v93 = *MEMORY[0x1E69E9840];
}

void sub_1B7BA4B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7BA4B94(uint64_t a1)
{
  v5 = IMDChatRecordCopyChatForGUID(*(a1 + 32));
  v2 = IMCopyIndexableChatDictionaryForRecord(v5, 1);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1B7BA5050(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMOSLoggingEnabled();
  if (v3)
  {
    if (v4)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v33 = 138412290;
        v34 = v3;
        _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Failed to check if we should sanitize indexes, suspending reindexing: %@", &v33, 0xCu);
      }
    }

    objc_msgSend__suspendReindexingDueToError_(*(a1 + 32), v5, v3);
    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))();
    }
  }

  else
  {
    if (v4)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v33) = 0;
        _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "_sanitizeIndexesForCurrentVersionIfNeeded complete, kicking off standard indexes", &v33, 2u);
      }
    }

    objc_msgSend__setNeedsIndexing_(*(a1 + 32), v5, 1);
    objc_msgSend__setNeedsDeferredIndexing_(*(a1 + 32), v9, 0);
    v12 = objc_msgSend_sharedManager(IMDSpotlightClientStateManager, v10, v11);
    v13 = objc_alloc(MEMORY[0x1E69A82A8]);
    v15 = objc_msgSend_initWithMaxRowID_totalMessages_(v13, v14, *(a1 + 56), *(a1 + 64));
    objc_msgSend_saveClientState_(v12, v16, v15);

    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        LOWORD(v33) = 0;
        _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, "Beginning message reindexing", &v33, 2u);
      }
    }

    v20 = *(a1 + 32);
    v21 = objc_msgSend_reason(*(a1 + 40), v17, v18);
    objc_msgSend_indexChatsWithReason_(v20, v22, v21);
    v23 = *(a1 + 32);
    BatchSize = objc_msgSend_reindexFirstBatchSize(MEMORY[0x1E69A7FF8], v24, v25);
    v29 = objc_msgSend_reason(*(a1 + 40), v27, v28);
    objc_msgSend_indexNextMessageBatchIfNeeded_reason_completion_(v23, v30, BatchSize, v29, *(a1 + 48));
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        LOWORD(v33) = 0;
        _os_log_impl(&dword_1B7AD5000, v31, OS_LOG_TYPE_INFO, "Finished message reindexing", &v33, 2u);
      }
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7BA5340(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_searchableIndex(*(a1 + 32), a2, a3);

  if (v4)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);

    return objc_msgSend__sanitizeIndexesForCurrentVersionIfNeeded_(v6, v5, v7);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Failed to create index!", v10, 2u);
      }
    }

    result = *(a1 + 40);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

void sub_1B7BA5884(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1B7BA5814);
  }

  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(exc_buf);
}

void sub_1B7BA590C(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_msgSend_stopTimingForKey_(*(a1 + 32), v5, @"CSDeleteAllIndexes");
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Index deletion complete - %@", &v10, 0xCu);
    }
  }

  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = v4;
        _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Version mismatch failed to delete all indexes! %@", &v10, 0xCu);
      }
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 40));

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7BA5A9C(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1B7BA5B28;
  v4[3] = &unk_1E7CB8F20;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  IMDIndexingClientRequest(v4);
}

uint64_t sub_1B7BA5B28(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

uint64_t sub_1B7BA5ED8(uint64_t a1, const char *a2)
{
  objc_msgSend_startTimingForKey_(*(a1 + 32), a2, @"copyAllActiveChats");
  active = IMDChatRecordCopyAllActiveChats();
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = active;

  v7 = *(a1 + 32);

  return objc_msgSend_stopTimingForKey_(v7, v6, @"copyAllActiveChats");
}

void sub_1B7BA616C(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMOSLoggingEnabled();
  if (v3)
  {
    if (v4)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v16 = 134217984;
        v17 = objc_msgSend_count(v3, v8, v9);
        _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Indexing %ld chat records", &v16, 0xCu);
      }
    }

    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = objc_msgSend_searchableIndex(v11, v5, v6);
    objc_msgSend__indexSearchableChatItems_withReason_index_blocking_(v11, v13, v3, v10, v12, 1);
  }

  else if (v4)
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Failed to get chats to index!", &v16, 2u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1B7BA665C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7BA6674(uint64_t a1)
{
  v2 = IMCopyIndexableChatDictionaryForRecord(*(a1 + 32), 1);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

BOOL sub_1B7BA6798(void *a1, void *a2, void *a3, void *a4, uint64_t a5, int64_t a6)
{
  v11 = a4;
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = dispatch_semaphore_create(0);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1B7BA8AD0;
  v20[3] = &unk_1E7CB6AE0;
  v21 = v15;
  v16 = v15;
  sub_1B7BA4008(v14, v13, v12, v11, a5, v20);

  v17 = dispatch_time(0, a6);
  v18 = dispatch_semaphore_wait(v16, v17) != 0;

  return v18;
}

BOOL sub_1B7BA6DD4(uint64_t a1, const char *a2, uint64_t a3)
{
  *&v44[5] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 56);
  v6 = *a2;
  v7 = objc_msgSend_messageSubBatchSize(MEMORY[0x1E69A7FF8], a2, a3);
  v10 = objc_msgSend_sharedManager(IMDSpotlightClientStateManager, v8, v9);
  v40 = 0;
  v12 = objc_msgSend_currentClientStateWithError_(v10, v11, &v40);
  v13 = v40;

  if (v13)
  {
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_1B7CF9AC4();
    }

    objc_msgSend__suspendReindexingDueToError_(*(a1 + 32), v17, v13);
    v18 = 0;
  }

  else
  {
    v38 = 0;
    IndexedRowID = objc_msgSend_lastIndexedRowID(v12, v14, v15);
    if (v5 - v6 >= v7)
    {
      v19 = v7;
    }

    else
    {
      v19 = v5 - v6;
    }

    v37 = 0;
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v23 = objc_msgSend__copyNewSearchableIndexesForMessagesWithLastRowID_messageRecordCount_messagesWithItemsGeneratedCount_reason_batchSize_timingCollection_rejectedItems_(*(a1 + 32), v21, &IndexedRowID, &v38, &v37, *(a1 + 64), v19, *(a1 + 40), v20);
    v24 = v38;
    if (v38 < v19 && IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v42 = v38;
        v43 = 2048;
        *v44 = v19;
        _os_log_impl(&dword_1B7AD5000, v25, OS_LOG_TYPE_INFO, "messageRecordCount (%lu) < current sub batch size (%lu). Reaching the end of indexing all message records.", buf, 0x16u);
      }
    }

    objc_msgSend_startTimingForKey_(*(a1 + 40), v22, @"CSIngest");
    v26 = *(a1 + 48);
    objc_msgSend__indexSearchableItems_rejectedItems_clientState_lastIndexedRowID_messagesInBatch_messagesWithItemsGeneratedCount_batchSize_lastBatch_withIndex_reason_(*(a1 + 32), v27, v23, v20, v12, IndexedRowID, v38, v37, v19, v24 < v19, v26, *(a1 + 64));
    objc_msgSend_stopTimingForKey_(*(a1 + 40), v28, @"CSIngest");
    *a2 += v19;
    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v32 = objc_msgSend_count(v23, v30, v31);
        v33 = *a2;
        v34 = (*(a1 + 56) - v33) & ~((*(a1 + 56) - v33) >> 31);
        *buf = 134218496;
        v42 = v32;
        v43 = 1024;
        *v44 = v33;
        v44[2] = 1024;
        *&v44[3] = v34;
        _os_log_impl(&dword_1B7AD5000, v29, OS_LOG_TYPE_INFO, "Indexed %lld items. Batch progress: %d/%d", buf, 0x18u);
      }
    }

    v18 = v24 >= v19;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v18;
}

id sub_1B7BA7220(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_newSearchableItemsForMessageItemDictionary_chatDictionary_context_rejectedItems_(*(a1 + 32), a2, a2, a3, *(a1 + 40), *(a1 + 48));
  if (objc_msgSend_count(v4, v5, v6))
  {
    ++**(a1 + 56);
  }

  return v4;
}

void sub_1B7BA7554(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  v3 = IMOSLoggingEnabled();
  if (v2 == 1)
  {
    if (v3)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Indexing complete!", buf, 2u);
      }
    }

    objc_msgSend__setNeedsIndexing_(*(a1 + 32), v4, 0);
    v9 = objc_msgSend_sharedNotifier(IMSpotlightEventNotifier, v7, v8);
    objc_msgSend_reindexCompletedWithState_reason_(v9, v10, *(a1 + 40), *(a1 + 48));
  }

  else if (v3)
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 56);
      *buf = 134217984;
      v28 = v12;
      _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "New lastIndexedRowID is %lu", buf, 0xCu);
    }
  }

  if (*(a1 + 40))
  {
    v13 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v4, v5);
    isSpotlightClientStateEnabled = objc_msgSend_isSpotlightClientStateEnabled(v13, v14, v15);

    if ((isSpotlightClientStateEnabled & 1) == 0)
    {
      v19 = objc_msgSend_sharedManager(IMDSpotlightClientStateManager, v17, v18);
      v20 = *(a1 + 40);
      v26 = 0;
      objc_msgSend_saveClientState_withError_(v19, v21, v20, &v26);
      v22 = v26;

      if (v22)
      {
        v23 = IMLogHandleForCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF9B38();
        }

        objc_msgSend__suspendReindexingDueToError_(*(a1 + 32), v24, v22);
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

void sub_1B7BA7B00(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7BA7B8C;
  v3[3] = &unk_1E7CBB328;
  v1 = *(a1 + 32);
  v4 = *(a1 + 40);
  objc_msgSend_deleteAllSearchableItemsWithReason_completionHandler_(v1, v2, 1009, v3);
}

void sub_1B7BA7B8C(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (v5)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v19 = v5;
        _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Failed to delete all searchable items upon app deletion with error %@. Defaults and client state will not be cleared.", buf, 0xCu);
      }
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      (*(v7 + 16))(v7, v5);
    }
  }

  else
  {
    v8 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v3, v4);
    objc_msgSend_removePersistentDomainForName_(v8, v9, @"com.apple.IMCoreSpotlight");

    v10 = objc_alloc_init(MEMORY[0x1E69A82A8]);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1B7BA7D40;
    v14[3] = &unk_1E7CBB768;
    v15 = v10;
    v11 = *(a1 + 32);
    v16 = 0;
    v17 = v11;
    v12 = v10;
    IMDIndexingClientRequest(v14);
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7BA7D40(uint64_t *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedManager(IMDSpotlightClientStateManager, a2, a3);
  objc_msgSend_saveClientState_(v4, v5, a1[4]);

  result = a1[6];
  if (result)
  {
    v7 = a1[5];
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

uint64_t sub_1B7BA7F04(uint64_t a1)
{
  sub_1B7BA6798(*(a1 + 32), 0, *(a1 + 40), *(a1 + 48), *(a1 + 64), 10000000000);
  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1B7BA7F68(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

Class sub_1B7BA7F94(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1B7BA7FEC(a1, a2, a3);
  result = objc_getClass("SROSmartRepliesManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CF9C08(result, v5, v6);
  }

  qword_1EDBE5B60 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B7BA7FEC(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1EDBE5C08)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = sub_1B7BA80E0;
    v4[4] = &unk_1E7CB6A70;
    v4[5] = v4;
    v5 = xmmword_1E7CBBCD0;
    v6 = 0;
    qword_1EDBE5C08 = _sl_dlopen();
  }

  if (!qword_1EDBE5C08)
  {
    sub_1B7CF9C84(v4, a2, a3);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7BA80E0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1EDBE5C08 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class sub_1B7BA8154(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1B7BA7FEC(a1, a2, a3);
  result = objc_getClass("SROSmartRepliesMessage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CF9D04(result, v5, v6);
  }

  qword_1EDBE5B50 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_1B7BA81AC(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1B7BA7FEC(a1, a2, a3);
  result = objc_getClass("SROSmartRepliesSuggestionRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CF9D80(result, v5, v6);
  }

  qword_1EDBE5B40 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B7BA8204(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3 && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "_IMDCoreSpotlightDeleteSearchableItems: deleting for searchable items failed with error %@", &v7, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7BA8300()
{
  result = MEMORY[0x1B8CAFAC0](@"NRURLResolutionManager", @"NewsURLResolution");
  qword_1EBA54110 = result;
  return result;
}

void sub_1B7BA8330(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3 && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = 138412802;
      v9 = v5;
      v10 = 2112;
      v11 = v3;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "IMDCoreSpotlightIndexSearchableItems: indexing transaction %@ failed with error %@. Using Index %@", &v8, 0x20u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7BA842C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v9 = objc_msgSend_integerValue(a2, v7, v8);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7BA84EC;
  v13[3] = &unk_1E7CBBCF0;
  v10 = *(a1 + 40);
  v14 = v5;
  v15 = v10;
  v11 = v5;
  objc_msgSend_deleteSearchableItemsWithIdentifiers_reason_completionHandler_(v6, v12, v11, v9, v13);
}

void sub_1B7BA84EC(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMOSLoggingEnabled();
  if (v3)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v8 = objc_msgSend_count(*(a1 + 32), v6, v7);
        v9 = *(a1 + 40);
        v10 = NSStringFromIMCoreSpotlightIndexReason();
        v17 = 134218498;
        v18 = v8;
        v19 = 2112;
        v20 = v10;
        v21 = 2112;
        v22 = v3;
        _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "IMDCoreSpotlightIndexSearchableItems: failed to delete %ld items for reason %@ due to %@", &v17, 0x20u);
      }

LABEL_9:
    }
  }

  else if (v4)
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v13 = objc_msgSend_count(*(a1 + 32), v11, v12);
      v14 = *(a1 + 40);
      v15 = NSStringFromIMCoreSpotlightIndexReason();
      v17 = 134218242;
      v18 = v13;
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "deleted %ld items for reason %@", &v17, 0x16u);
    }

    goto LABEL_9;
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1B7BA8678(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1B7BA8644);
  }

  _Unwind_Resume(a1);
}

void sub_1B7BA869C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_serviceForMessages(MEMORY[0x1E69992A0], a2, a3);
  v4 = qword_1EBA53BB8;
  qword_1EBA53BB8 = v3;
}

void sub_1B7BA86DC(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v40 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v13, v14) && IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v18 = objc_msgSend_uniqueIdentifier(*(a1 + 32), v16, v17);
      v21 = objc_msgSend_domainIdentifier(*(a1 + 32), v19, v20);
      v24 = objc_msgSend_count(v10, v22, v23);
      v27 = objc_msgSend_count(v11, v25, v26);
      v28 = *(a1 + 40);
      v30 = 138413314;
      v31 = v18;
      v32 = 2112;
      v33 = v21;
      v34 = 2048;
      v35 = v24;
      v36 = 2048;
      v37 = v27;
      v38 = 2112;
      v39 = v28;
      _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "Finished donating item ID %@ domain %@ to Suggestions with %ld pseudo-contacts %ld pseudo-events transaction ID %@", &v30, 0x34u);
    }
  }

  dispatch_group_leave(*(a1 + 48));

  v29 = *MEMORY[0x1E69E9840];
}

void sub_1B7BA8888(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF9DFC(a1);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v8 = objc_msgSend_count(*(a1 + 48), v6, v7);
        v9 = *(a1 + 32);
        v11 = 134218242;
        v12 = v8;
        v13 = 2112;
        v14 = v9;
        _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "donation of %ld items to spotlight with transaction ID %@ completed", &v11, 0x16u);
      }
    }

    notify_post("com.apple.imdpersistenceagent.notification.spotlightclientstateupdated");
  }

  dispatch_group_leave(*(a1 + 56));

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7BA89D4(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v5 = objc_msgSend_count(*(a1 + 32), v3, v4);
      v6 = *(a1 + 40);
      v9 = 134218242;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Finished donating %ld items to Spotlight and Suggestions with transaction ID %@", &v9, 0x16u);
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))();
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B7BA8B2C()
{
  v0 = objc_alloc_init(IMDLegacyCoreSpotlightQueryProvider);
  v1 = qword_1EBA53A40;
  qword_1EBA53A40 = v0;
}

void sub_1B7BA8C44(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_reason(*(a1 + 40), a2, a3);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7BA8CE8;
  v6[3] = &unk_1E7CBB328;
  v7 = *(a1 + 48);
  sub_1B7B9C9A0(v4, v5, v6);
}

uint64_t sub_1B7BA8CE8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1B7BA8DDC(uint64_t a1, const char *a2, uint64_t a3)
{
  isReindexing = objc_msgSend_isReindexing(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);
  v8 = objc_msgSend_reason(*(a1 + 32), v6, v7);
  if (isReindexing)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1B7BA8F00;
    v12[3] = &unk_1E7CB67C0;
    v9 = &v13;
    v13 = *(a1 + 48);
    sub_1B7B9CD7C(v5, v8, 0, v12);
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1B7BA8F14;
    v10[3] = &unk_1E7CBB328;
    v9 = &v11;
    v11 = *(a1 + 48);
    sub_1B7B99E94(v5, v8, v10);
  }
}

uint64_t sub_1B7BA8F14(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1B7BA8FBC(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_sharedManager(IMDLegacyCoreSpotlightManager, a2, a3);
  objc_msgSend_deleteAllDonationsForAppDeletionWithCompletion_(v5, v4, *(a1 + 32));
}

void sub_1B7BA90F0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_reason(*(a1 + 40), a2, a3);
  v6 = *(a1 + 48);

  sub_1B7B9B850(v4, v5, v6);
}

void sub_1B7BA9210(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_reason(*(a1 + 40), a2, a3);
  v6 = *(a1 + 48);

  sub_1B7B9C3D0(v4, v5, v6);
}

void sub_1B7BA9330(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_reason(*(a1 + 40), a2, a3);
  v6 = *(a1 + 48);

  sub_1B7B9ADF4(v4, v5, v6);
}

void sub_1B7BA9410(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7BA94A4;
  v3[3] = &unk_1E7CB67C0;
  v4 = *(a1 + 32);
  sub_1B7B9DCAC(0, v1, v2, v3);
}

void sub_1B7BA9564(uint64_t a1)
{
  v2 = [IMDHandleReindexer alloc];
  v6 = objc_msgSend_initWithHandles_batchDeferralTime_messageAge_reason_(v2, v3, *(a1 + 32), *(a1 + 40), *(a1 + 56), *(a1 + 48));
  objc_msgSend_reindex(v6, v4, v5);
}

void sub_1B7BA96EC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_reason(*(a1 + 32), a2, a3);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B7BA9788;
  v5[3] = &unk_1E7CB67C0;
  v6 = *(a1 + 40);
  sub_1B7B9DB40(0, v4, v5);
}

void sub_1B7BA9C0C(uint64_t a1)
{
  v2 = [IMDIndexingContext alloc];
  v4 = objc_msgSend_initForReindexing_reason_(v2, v3, 1, 1004);
  objc_msgSend_setPreflight_(v4, v5, 1);
  v6 = *(a1 + 56);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7BA9CF4;
  v13[3] = &unk_1E7CBBDB8;
  v7 = *(a1 + 32);
  v10 = a1 + 40;
  v8 = *(a1 + 40);
  v9 = *(v10 + 8);
  v13[4] = v7;
  v14 = v4;
  v15 = v6;
  v11 = v4;
  objc_msgSend_copyIndexableMessageDictionariesWithLimit_requireIndexableAttachments_isIndexableBlock_completionHandler_(IMDIndexingUtilities, v12, v9, v6, v13, v8);
}

BOOL sub_1B7BA9CF4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend__indexableMessageGUIDsInSpotlight_chatDictionary_context_requireIndexableAttachments_(*(a1 + 32), a2, a2, a3, *(a1 + 40), *(a1 + 48));
  v6 = objc_msgSend_count(v3, v4, v5) != 0;

  return v6;
}

void sub_1B7BA9E28(uint64_t a1)
{
  v2 = [IMDIndexingContext alloc];
  v4 = objc_msgSend_initForReindexing_reason_(v2, v3, 1, 1004);
  objc_msgSend_setPreflight_(v4, v5, 1);
  objc_msgSend_setIgnoreRejections_(v4, v6, *(a1 + 56));
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [IMDThreadSafeMessageDictionaryMapper alloc];
  v9 = *(a1 + 32);
  v10 = objc_alloc_init(MEMORY[0x1E69A6170]);
  v12 = objc_msgSend_initForFetchingMessageGUIDs_timingCollection_(v8, v11, v9, v10);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1B7BA9FF8;
  aBlock[3] = &unk_1E7CBBE08;
  v30 = v7;
  v13 = v7;
  v14 = _Block_copy(aBlock);
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = sub_1B7BAA0A4;
  v25 = &unk_1E7CBBE30;
  v27 = v4;
  v28 = v14;
  v26 = *(a1 + 40);
  v15 = v4;
  v16 = v14;
  objc_msgSend_processWithBlock_(v12, v17, &v22);
  v18 = *(a1 + 48);
  v21 = objc_msgSend_copy(v13, v19, v20, v22, v23, v24, v25, v26);
  (*(v18 + 16))(v18, v21, 0);
}

void sub_1B7BA9FF8(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (objc_msgSend_count(v5, v6, v7))
  {
    v10 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v8, v12);
    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v11, v10, v12);
    }

    objc_msgSend_addObjectsFromArray_(v10, v9, v5);
  }
}

void sub_1B7BAA0A4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  v4 = objc_msgSend__indexableMessageGUIDsInSpotlight_chatDictionary_context_requireIndexableAttachments_(*(a1 + 32), a2, a2, a3, *(a1 + 40), 0);
  (*(v3 + 16))(v3, @"Spotlight", v4);
}

void sub_1B7BAA27C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7BAA294(uint64_t a1)
{
  v2 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1B7BAA3EC;
  v12[3] = &unk_1E7CBBEA8;
  v15 = *(a1 + 64);
  v3 = *(a1 + 48);
  v13 = *(a1 + 40);
  v14 = *(a1 + 32);
  (*(v3 + 16))(v3, v2, v12);
  v4 = *(a1 + 32);
  v5 = IMDIndexingClientRequestQueue();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BAA58C;
  v8[3] = &unk_1E7CBBED0;
  v10 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = *(a1 + 64);
  v9 = v6;
  v11 = v7;
  dispatch_group_notify(v4, v5, v8);
}

void sub_1B7BAA3EC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1B7BAA4FC;
  v14[3] = &unk_1E7CBBE80;
  v10 = *(a1 + 48);
  v15 = v9;
  v20 = v10;
  v16 = *(a1 + 32);
  v17 = v7;
  v18 = v8;
  v19 = *(a1 + 40);
  v11 = v8;
  v12 = v7;
  v13 = v9;
  IMDIndexingClientRequest(v14);
}

void sub_1B7BAA4FC(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(*(a1 + 72) + 8);
    v7 = *(v4 + 40);
    v5 = (v4 + 40);
    v6 = v7;
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = v3;
    }

    objc_storeStrong(v5, v8);
  }

  else
  {
    v9 = *(a1 + 56);
    if (v9)
    {
      objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), a2, v9, *(a1 + 48));
    }

    else
    {
      v10 = objc_msgSend_set(MEMORY[0x1E695DFD8], a2, 0);
      objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), v11, v10, *(a1 + 48));
    }
  }

  v12 = *(a1 + 64);

  dispatch_group_leave(v12);
}

void sub_1B7BAA58C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v5 = objc_msgSend_copy(*(a1 + 32), a2, a3);
  (*(v4 + 16))(v4, v5, *(*(*(a1 + 48) + 8) + 40));
}

void sub_1B7BAA698(uint64_t a1, NSObject *a2, void *a3)
{
  v5 = a3;
  dispatch_group_enter(a2);
  v6 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BAA754;
  v9[3] = &unk_1E7CBBF20;
  v10 = v5;
  v7 = v5;
  objc_msgSend_checkForIndexedChatGUIDs_completionBlock_(IMDCoreSpotlightValidationUtilities, v8, v6, v9);
}

void sub_1B7BAA818(uint64_t a1, NSObject *a2, void *a3)
{
  v5 = a3;
  dispatch_group_enter(a2);
  v6 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BAA8D4;
  v9[3] = &unk_1E7CBBF20;
  v10 = v5;
  v7 = v5;
  objc_msgSend_checkForIndexedMessageGUIDs_completionBlock_(IMDCoreSpotlightValidationUtilities, v8, v6, v9);
}

void sub_1B7BAA998(uint64_t a1, NSObject *a2, void *a3)
{
  v5 = a3;
  dispatch_group_enter(a2);
  v6 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BAAA54;
  v9[3] = &unk_1E7CBBF20;
  v10 = v5;
  v7 = v5;
  objc_msgSend_checkForIndexedAttachmentGUIDs_completionBlock_(IMDCoreSpotlightValidationUtilities, v8, v6, v9);
}

void sub_1B7BAAFC0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1B7BAAF38);
  }

  _Unwind_Resume(a1);
}

void sub_1B7BAAFF4(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = objc_msgSend__stripFZIDPrefix(a2, a2, a3);
  v6 = _IMDCoreSpotlightCNContactForAddress(v13);
  if (v6 && v13)
  {
    v7 = objc_msgSend_sharedInstance(IMDContactCache, v4, v5);
    v9 = objc_msgSend_fullNameForContact_(v7, v8, v6);

    if (!v9)
    {
      v9 = v13;
    }

    objc_msgSend_addObject_(*(a1 + 32), v10, v9);
    objc_msgSend_addObject_(*(a1 + 40), v11, v13);
  }

  else if (v13)
  {
    objc_msgSend_addObject_(*(a1 + 32), v4, v13);
    objc_msgSend_addObject_(*(a1 + 40), v12, v13);
  }
}

void sub_1B7BAB424(uint64_t a1)
{
  v2 = CPCopySharedResourcesPreferencesDomainForDomain();
  if (v2)
  {
    v3 = v2;
    CFPreferencesAppSynchronize(v2);
    v5 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v4, a1);
    CFPreferencesSetAppValue(@"IMCSIndexReason", v5, v3);

    CFRelease(v3);
  }
}

void sub_1B7BAB4A0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = IMLogHandleForCategory();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF9F10(v2, v4);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Finished setting need reindexing", v5, 2u);
  }
}

id sub_1B7BAB53C()
{
  v0 = CPCopySharedResourcesPreferencesDomainForDomain();
  if (v0)
  {
    v1 = v0;
    CFPreferencesAppSynchronize(v0);
    v2 = CFPreferencesCopyAppValue(@"IMDCoreSpotlightLastFullReindexRequestTime", v1);
    CFRelease(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1B7BAC5C8(uint64_t a1, int a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v48 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = IMOSLoggingEnabled();
  if (a2)
  {
    if (!v18)
    {
      goto LABEL_10;
    }

    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = *(*(*(a1 + 48) + 8) + 40);
      v42 = 138412802;
      v43 = v22;
      v44 = 2112;
      v45 = v15;
      v46 = 2112;
      v47 = v16;
      _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Successfully downloaded file transfer with GUID %@. filePath: %@, livePhotoBundlePath: %@", &v42, 0x20u);
    }
  }

  else
  {
    if (!v18)
    {
      goto LABEL_10;
    }

    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v23 = *(*(*(a1 + 48) + 8) + 40);
      v42 = 138412802;
      v43 = v23;
      v44 = 2112;
      v45 = v14;
      v46 = 2112;
      v47 = v17;
      _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Failed to download file transfer with GUID %@. suggestedRetryGUID: %@ Error: %@", &v42, 0x20u);
    }
  }

LABEL_10:
  if (v15 | v16)
  {
    v24 = objc_msgSend_pathExtension(v15, v19, v20);
    v25 = IMUTITypeForExtension();
    v26 = *(*(a1 + 56) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;

    if (v16)
    {
      v28 = v16;
    }

    else
    {
      v28 = v15;
    }

    v29 = v28;
    v30 = objc_alloc(MEMORY[0x1E695DFF8]);
    inited = objc_msgSend_initFileURLWithPath_(v30, v31, v29);
    v33 = *(*(a1 + 64) + 8);
    v34 = *(v33 + 40);
    *(v33 + 40) = inited;

    if (v16 && IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = *(*(*(a1 + 64) + 8) + 40);
        v42 = 138412290;
        v43 = v36;
        _os_log_impl(&dword_1B7AD5000, v35, OS_LOG_TYPE_INFO, "Requested transfer is a live photo. Returning live photo bundle URL. fileURL: %@", &v42, 0xCu);
      }
    }
  }

  objc_storeStrong((*(*(a1 + 72) + 8) + 40), a4);
  if (v17)
  {
    v38 = objc_msgSend__createErrorFromSyncError_(*(a1 + 32), v37, v17);
    v39 = *(*(a1 + 80) + 8);
    v40 = *(v39 + 40);
    *(v39 + 40) = v38;
  }

  dispatch_group_leave(*(a1 + 40));

  v41 = *MEMORY[0x1E69E9840];
}

void sub_1B7BAC8F0(uint64_t a1, int a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v44 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = IMOSLoggingEnabled();
  if (a2)
  {
    if (!v18)
    {
      goto LABEL_10;
    }

    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = *(*(*(a1 + 40) + 8) + 40);
      v38 = 138412802;
      v39 = v22;
      v40 = 2112;
      v41 = v15;
      v42 = 2112;
      v43 = v16;
      _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Successfully downloaded file transfer with secondary GUID %@. filePath: %@, livePhotoBundlePath: %@", &v38, 0x20u);
    }
  }

  else
  {
    if (!v18)
    {
      goto LABEL_10;
    }

    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v23 = *(*(*(a1 + 40) + 8) + 40);
      v38 = 138412546;
      v39 = v23;
      v40 = 2112;
      v41 = v17;
      _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Failed to download file transfer with secondary GUID %@. Error: %@", &v38, 0x16u);
    }
  }

LABEL_10:
  if (v15 | v16)
  {
    v24 = objc_msgSend_pathExtension(v15, v19, v20);
    v25 = IMUTITypeForExtension();
    v26 = *(*(a1 + 48) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;

    if (v16)
    {
      v28 = v16;
    }

    else
    {
      v28 = v15;
    }

    v29 = v28;
    v30 = objc_alloc(MEMORY[0x1E695DFF8]);
    inited = objc_msgSend_initFileURLWithPath_(v30, v31, v29);
    v33 = *(*(a1 + 56) + 8);
    v34 = *(v33 + 40);
    *(v33 + 40) = inited;

    if (v16 && IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = *(*(*(a1 + 56) + 8) + 40);
        v38 = 138412290;
        v39 = v36;
        _os_log_impl(&dword_1B7AD5000, v35, OS_LOG_TYPE_INFO, "Requested transfer is a live photo. Returning live photo bundle URL. fileURL: %@", &v38, 0xCu);
      }
    }
  }

  dispatch_group_leave(*(a1 + 32));

  v37 = *MEMORY[0x1E69E9840];
}

void sub_1B7BADCA8(uint64_t a1, int a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v44 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = IMOSLoggingEnabled();
  if (a2)
  {
    if (!v18)
    {
      goto LABEL_10;
    }

    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v38 = 138412802;
      v39 = v13;
      v40 = 2112;
      v41 = v15;
      v42 = 2112;
      v43 = v16;
      _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Successfully downloaded file transfer with GUID %@. filePath: %@, livePhotoBundlePath: %@", &v38, 0x20u);
    }
  }

  else
  {
    if (!v18)
    {
      goto LABEL_10;
    }

    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v38 = 138412802;
      v39 = v13;
      v40 = 2112;
      v41 = v14;
      v42 = 2112;
      v43 = v17;
      _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Failed to download file transfer with GUID %@. suggestedRetryGUID: %@ Error: %@", &v38, 0x20u);
    }
  }

LABEL_10:
  if (v15 | v16)
  {
    v22 = objc_msgSend_pathExtension(v15, v19, v20);
    v23 = IMUTITypeForExtension();
    objc_msgSend_setObject_forKeyedSubscript_(*(*(*(a1 + 48) + 8) + 40), v24, v23, v13);

    if (v16)
    {
      v25 = v16;
    }

    else
    {
      v25 = v15;
    }

    v26 = v25;
    v27 = objc_alloc(MEMORY[0x1E695DFF8]);
    inited = objc_msgSend_initFileURLWithPath_(v27, v28, v26);
    objc_msgSend_setObject_forKeyedSubscript_(*(*(*(a1 + 56) + 8) + 40), v30, inited, v13);

    if (v16 && IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v33 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 56) + 8) + 40), v32, v13);
        v38 = 138412546;
        v39 = v33;
        v40 = 2112;
        v41 = v13;
        _os_log_impl(&dword_1B7AD5000, v31, OS_LOG_TYPE_INFO, "Requested transfer is a live photo. Returning live photo bundle URL. fileURL: %@ for file transfer guid: %@", &v38, 0x16u);
      }
    }
  }

  objc_msgSend_setObject_forKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v19, v14, v13);
  if (v17)
  {
    v35 = objc_msgSend__createErrorFromSyncError_(*(a1 + 32), v34, v17);
    objc_msgSend_setObject_forKeyedSubscript_(*(*(*(a1 + 72) + 8) + 40), v36, v35, v13);
  }

  objc_msgSend_addObject_(*(*(*(a1 + 80) + 8) + 40), v34, v13);
  dispatch_group_leave(*(a1 + 40));

  v37 = *MEMORY[0x1E69E9840];
}

void sub_1B7BAE018(uint64_t a1, int a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v41 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = IMOSLoggingEnabled();
  if (a2)
  {
    if (!v18)
    {
      goto LABEL_10;
    }

    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v35 = 138412802;
      v36 = v13;
      v37 = 2112;
      v38 = v15;
      v39 = 2112;
      v40 = v16;
      _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Successfully downloaded file transfer with secondary GUID %@. filePath: %@, livePhotoBundlePath: %@", &v35, 0x20u);
    }
  }

  else
  {
    if (!v18)
    {
      goto LABEL_10;
    }

    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v35 = 138412546;
      v36 = v13;
      v37 = 2112;
      v38 = v17;
      _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Failed to download file transfer with secondary GUID %@. Error: %@", &v35, 0x16u);
    }
  }

LABEL_10:
  if (v15 | v16)
  {
    v22 = objc_msgSend_pathExtension(v15, v19, v20);
    v23 = IMUTITypeForExtension();
    objc_msgSend_setObject_forKeyedSubscript_(*(*(*(a1 + 40) + 8) + 40), v24, v23, v13);

    if (v16)
    {
      v25 = v16;
    }

    else
    {
      v25 = v15;
    }

    v26 = v25;
    v27 = objc_alloc(MEMORY[0x1E695DFF8]);
    inited = objc_msgSend_initFileURLWithPath_(v27, v28, v26);
    objc_msgSend_setObject_forKeyedSubscript_(*(*(*(a1 + 48) + 8) + 40), v30, inited, v13);

    if (v16 && IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v33 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 48) + 8) + 40), v32, v13);
        v35 = 138412546;
        v36 = v33;
        v37 = 2112;
        v38 = v13;
        _os_log_impl(&dword_1B7AD5000, v31, OS_LOG_TYPE_INFO, "Requested transfer is a live photo. Returning live photo bundle URL. fileURL: %@ for file transfer guid: %@", &v35, 0x16u);
      }
    }
  }

  dispatch_group_leave(*(a1 + 32));

  v34 = *MEMORY[0x1E69E9840];
}

void IMDCoreSpotlightDeleteMessageGUIDS(void *a1, uint64_t a2)
{
  v3 = a1;
  v6 = objc_msgSend_queryProvider(IMDIndexingController, v4, v5);
  v8 = objc_msgSend_contextWithReason_(IMDIndexingContext, v7, a2);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1B7BAF020;
  v11[3] = &unk_1E7CB6C58;
  v12 = v3;
  v9 = v3;
  objc_msgSend_deleteMessageGUIDs_context_completionHandler_(v6, v10, v9, v8, v11);
}

void sub_1B7BAF020(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF9F88();
    }
  }
}

void IMDCoreSpotlightDeleteAttachmentGUIDs(void *a1, uint64_t a2)
{
  v3 = a1;
  v6 = objc_msgSend_queryProvider(IMDIndexingController, v4, v5);
  v8 = objc_msgSend_contextWithReason_(IMDIndexingContext, v7, a2);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1B7BAF16C;
  v11[3] = &unk_1E7CB6C58;
  v12 = v3;
  v9 = v3;
  objc_msgSend_deleteAttachmentGUIDs_context_completionHandler_(v6, v10, v9, v8, v11);
}

void sub_1B7BAF16C(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF9FFC();
    }
  }
}

void IMDCoreSpotlightDeleteChatGUID(void *a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v6 = objc_msgSend_queryProvider(IMDIndexingController, v4, v5);
  v16[0] = v3;
  v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v7, v16, 1);
  v10 = objc_msgSend_contextWithReason_(IMDIndexingContext, v9, a2);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1B7BAF308;
  v14[3] = &unk_1E7CB6C58;
  v15 = v3;
  v11 = v3;
  objc_msgSend_deleteChatGUIDs_context_completionBlock_(v6, v12, v8, v10, v14);

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1B7BAF308(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFA070(a1, v3, v4);
    }
  }
}

void IMDCoreSpotlightAddChatGUID(void *a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = a1;
  v3 = MEMORY[0x1E695DEC8];
  v4 = a1;
  v6 = objc_msgSend_arrayWithObjects_count_(v3, v5, v8, 1);

  IMDCoreSpotlightAddChatGUIDs(v6, a2);
  v7 = *MEMORY[0x1E69E9840];
}

void IMDCoreSpotlightAddChatGUIDs(void *a1, uint64_t a2)
{
  v3 = a1;
  v6 = objc_msgSend_queryProvider(IMDIndexingController, v4, v5);
  v8 = objc_msgSend_contextWithReason_(IMDIndexingContext, v7, a2);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1B7BAF4F0;
  v11[3] = &unk_1E7CB6C58;
  v12 = v3;
  v9 = v3;
  objc_msgSend_addChatGUIDs_context_completionHandler_(v6, v10, v9, v8, v11);
}

void sub_1B7BAF4F0(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFA0FC();
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = objc_msgSend_count(*(a1 + 32), v6, v7);
      v10 = 134217984;
      v11 = v8;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Finished adding %lu chats from CoreSpotlight", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void IMDCoreSpotlightAddMessageGUID(void *a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = a1;
  v3 = MEMORY[0x1E695DEC8];
  v4 = a1;
  v6 = objc_msgSend_arrayWithObjects_count_(v3, v5, v8, 1);

  IMDCoreSpotlightAddMessageGUIDs(v6, a2);
  v7 = *MEMORY[0x1E69E9840];
}

void IMDCoreSpotlightAddMessageGUIDs(void *a1, uint64_t a2)
{
  v3 = a1;
  v6 = objc_msgSend_queryProvider(IMDIndexingController, v4, v5);
  v8 = objc_msgSend_contextWithReason_(IMDIndexingContext, v7, a2);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1B7BAF790;
  v11[3] = &unk_1E7CB6C58;
  v12 = v3;
  v9 = v3;
  objc_msgSend_addMessageGUIDs_context_completionHandler_(v6, v10, v9, v8, v11);
}

void sub_1B7BAF790(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFA170();
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = objc_msgSend_count(*(a1 + 32), v6, v7);
      v10 = 134217984;
      v11 = v8;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Finished adding %ld message GUIDs to Spotlight", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void IMDCoreSpotlightReIndexForHandles(void *a1, uint64_t a2)
{
  v3 = a1;
  v7 = objc_msgSend_queryProvider(IMDIndexingController, v4, v5);
  objc_msgSend_reindexRecentMessagesWithHandles_batchDeferralTime_messageAge_reason_(v7, v6, v3, 10, a2, 30.0);
}

void sub_1B7BAF934(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMLogHandleForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFA1E4();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = objc_msgSend_count(*(a1 + 32), v6, v7);
    v11 = 134217984;
    v12 = v8;
    _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Finished re-indexing %lu messages", &v11, 0xCu);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))();
  }

  v10 = *MEMORY[0x1E69E9840];
}

void IMDCoreSpotlightReindexAttachment(void *a1, const char *a2, uint64_t a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_messageRecord(a1, a2, a3);
  v7 = objc_msgSend_guid(v4, v5, v6);
  v9 = v7;
  if (v7)
  {
    v12[0] = v7;
    v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v12, 1);
    IMDCoreSpotlightReindexMessagesWhileBlocking(v10, a2, 1, 0);
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7BAFAF4(int a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v4 = IMDMessageRecordDeleteBatchOfDeletedMessageGuids(a1, &v17, a3);
  v5 = v17;
  v8 = v5;
  if (v4)
  {
    if (v5 && objc_msgSend_count(v5, v6, v7))
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v12 = objc_msgSend_count(v8, v10, v11);
          *buf = 134217984;
          v19 = v12;
          _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "Found %ld messages guids to remove from spotlight", buf, 0xCu);
        }
      }

      IMDCoreSpotlightDeleteMessageGUIDS(v8, a2);
      v13 = 1;
LABEL_15:

      goto LABEL_16;
    }

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "Found 0 messages guids to remove from spotlight", buf, 2u);
      }
    }

    v13 = 0;
    if (v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_16:

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

void IMDCoreSpotlightScheduleUpdateForDeletedMessages(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1B7BAFD30;
  aBlock[3] = &unk_1E7CB6A70;
  aBlock[4] = a1;
  v1 = _Block_copy(aBlock);
  if ((IMIsRunningInUnitTesting() & 1) == 0)
  {
    _IMDPerformBlockWithDelay(v1);
  }
}

uint64_t sub_1B7BAFD30(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = 0;
  result = sub_1B7BAFAF4(2000, v2, &v4);
  if (result)
  {
    return IMDCoreSpotlightScheduleUpdateForDeletedMessages(*(a1 + 32));
  }

  return result;
}

uint64_t sub_1B7BAFD84(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);

  return objc_msgSend_count(v4, a2, a3);
}

id IMDSpotlightPriorityIndexerClassesForIndexingContext(void *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v4 = objc_msgSend_reason(v1, v2, v3);
  if ((v4 == 1013 || v4 == 1008) && (objc_msgSend_additionalReasons(v1, v5, v6), v7 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend_count(v7, v8, v9), v7, v10))
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = objc_msgSend_reason(v1, v12, v13);
    v15 = sub_1B7BB0010(v14);
    objc_msgSend_addObjectsFromArray_(v11, v16, v15);

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v19 = objc_msgSend_additionalReasons(v1, v17, v18, 0);
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v34, v38, 16);
    if (v21)
    {
      v24 = v21;
      v25 = *v35;
      while (2)
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(v19);
          }

          v27 = objc_msgSend_integerValue(*(*(&v34 + 1) + 8 * i), v22, v23);
          if (v27 != 1013 && v27 != 1008)
          {
            v30 = sub_1B7BB0010(v27);

            goto LABEL_16;
          }

          v28 = sub_1B7BB0010(v27);
          objc_msgSend_addObjectsFromArray_(v11, v29, v28);
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v34, v38, 16);
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v30 = v11;
LABEL_16:
  }

  else
  {
    v31 = objc_msgSend_reason(v1, v5, v6);
    v30 = sub_1B7BB0010(v31);
  }

  v32 = *MEMORY[0x1E69E9840];

  return v30;
}

id sub_1B7BB0010(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a1 == 1008)
  {
    v9 = objc_opt_class();
    v2 = MEMORY[0x1E695DEC8];
    v3 = &v9;
    goto LABEL_5;
  }

  if (a1 == 1013)
  {
    v10[0] = objc_opt_class();
    v2 = MEMORY[0x1E695DEC8];
    v3 = v10;
LABEL_5:
    objc_msgSend_arrayWithObjects_count_(v2, v1, v3, 1);
    goto LABEL_7;
  }

  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v8[2] = objc_opt_class();
  v8[3] = objc_opt_class();
  v8[4] = objc_opt_class();
  v8[5] = objc_opt_class();
  v8[6] = objc_opt_class();
  v8[7] = objc_opt_class();
  v8[8] = objc_opt_class();
  v8[9] = objc_opt_class();
  objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v4, v8, 10);
  v5 = LABEL_7:;
  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

void sub_1B7BB02B8()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_fromMe", 1, 0, 1, 0);
  v3 = qword_1EDBE5E68;
  qword_1EDBE5E68 = v2;
}

void sub_1B7BB0354()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_businessChat", 1, 0, 1, 0);
  v3 = qword_1EDBE5E78;
  qword_1EDBE5E78 = v2;
}

void sub_1B7BB03F0()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_mentionedAddresses", 1, 0, 1, 0);
  v3 = qword_1EDBE5AE0;
  qword_1EDBE5AE0 = v2;
}

void sub_1B7BB048C()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_chatUniqueIdentifier", 0, 0, 1, 0);
  v3 = qword_1EDBE5B70;
  qword_1EDBE5B70 = v2;
}

void sub_1B7BB0528()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_chatIsMuted", 0, 0, 1, 0);
  v3 = qword_1EBA53B08;
  qword_1EBA53B08 = v2;
}

void sub_1B7BB05C4()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_isTranslated", 1, 0, 1, 0);
  v3 = qword_1EBA53AF8;
  qword_1EBA53AF8 = v2;
}

void sub_1B7BB0660()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_check_priority", 0, 0, 1, 0);
  v3 = qword_1EBA54180;
  qword_1EBA54180 = v2;
}

void sub_1B7BB07F4()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_suggested_contact_name", 0, 0, 0, 0);
  v3 = qword_1EBA54190;
  qword_1EBA54190 = v2;
}

void sub_1B7BB0890()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_suggested_contact_photo", 0, 0, 0, 0);
  v3 = qword_1EBA541A0;
  qword_1EBA541A0 = v2;
}

void sub_1B7BB092C()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_groupPhotoPath", 0, 0, 0, 0);
  v3 = qword_1EDBE5E88;
  qword_1EDBE5E88 = v2;
}

id sub_1B7BB1D8C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_handles(a2, a2, a3);
  v6 = objc_msgSend_firstObject(v3, v4, v5);

  return v6;
}

void sub_1B7BB59B8()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_isSyndicatableMedia", 0, 0, 1, 0);
  v3 = qword_1EDBE5C78;
  qword_1EDBE5C78 = v2;
}

void sub_1B7BB5A54()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_livePhotoComplementPath", 0, 0, 1, 0);
  v3 = qword_1EDBE5C50;
  qword_1EDBE5C50 = v2;
}

void sub_1B7BB5AF0()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_momentShareURL", 0, 0, 1, 0);
  v3 = qword_1EBA541B0;
  qword_1EBA541B0 = v2;
}

void sub_1B7BB5B8C()
{
  v0 = objc_alloc(MEMORY[0x1E6964E00]);
  v2 = objc_msgSend_initWithKeyName_searchable_searchableByDefault_unique_multiValued_(v0, v1, @"com_apple_mobilesms_PHAssetUUID", 0, 0, 1, 0);
  v3 = qword_1EBA541C0;
  qword_1EBA541C0 = v2;
}

id IMCoreSpotlightCriticalIndex()
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    IMDIndexingAssertClientRequestQueue();
  }

  if (qword_1EBA53C28 != -1)
  {
    sub_1B7CFA43C();
  }

  v0 = qword_1EBA53C30;

  return v0;
}

void sub_1B7BB5FF4()
{
  v0 = objc_alloc(MEMORY[0x1E6964E78]);
  v2 = objc_msgSend__initWithName_protectionClass_bundleIdentifier_options_(v0, v1, @"com.apple.MobileSMS", 0, @"com.apple.MobileSMS", 32);
  v3 = qword_1EBA53C30;
  qword_1EBA53C30 = v2;
}

__CFDictionary *IMCopyIndexableItemDictionaryForRecord(void *a1)
{
  v209 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc(MEMORY[0x1E695DF90]);
  v4 = objc_msgSend_initWithCapacity_(v2, v3, 14);
  v206 = 0;
  v207 = 0;
  v204 = 0;
  v205 = 0;
  v203 = 0;
  v202 = 0;
  v201 = 0;
  v200 = 0;
  v199 = 0;
  v198 = 0;
  v197 = 0;
  v196 = 0;
  v195 = 0;
  v194 = 0;
  v193 = 0;
  v192 = 0;
  v191 = 0;
  v190 = 0;
  v189 = 0;
  v188 = 0;
  v187 = 0;
  v186 = 0;
  IMDMessageRecordBulkCopy(v1, &v198, 0, 0, &v205, &v207, &v206, 0, 0, &v204, &v203, &v200, &v201, 0, 0, 0, &v202, 0, 0, &v199, 0, 0, 0, 0, 0, 0, 0, 0, 0, &v194, &v195, 0, &v197, &v193, &v196, 0, &v192, 0, 0, 0, 0, &v190, 0, 0, &v189, &v188, &v191, 0, 0, 0, 0, &v187, 0, &v186, 0, 0, 0);
  v5 = v204;
  value = v205;
  v6 = v203;
  v179 = v202;
  v177 = v201;
  v173 = v200;
  v171 = v197;
  v167 = v196;
  v169 = v193;
  v7 = v192;
  v161 = v190;
  v163 = v191;
  v8 = v189;
  v156 = v188;
  v165 = v194;
  v149 = v187;
  v151 = v186;
  if (objc_msgSend_length(v189, v9, v10))
  {
    v13 = IMDMessageRecordCopyMessageForGUID(v8);
    v14 = v13;
    if (v13)
    {
      v157 = IMCopyIndexableItemDictionaryForRecord(v13);
    }

    else
    {
      v157 = 0;
    }
  }

  else
  {
    v157 = 0;
  }

  v15 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v11, v12, v207);
  v18 = v15;
  if (v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = objc_msgSend_date(MEMORY[0x1E695DF00], v16, v17);
  }

  if (v206)
  {
    v22 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v20, v21, v206);
  }

  else
  {
    v22 = 0;
  }

  v154 = v6;
  v25 = JWDecodeCodableObjectWithStandardAllowlist();
  v181 = v8;
  if (v157)
  {
    v159 = v25;
    v26 = v5;
    v27 = v7;
    v28 = v4;
    v29 = objc_msgSend_objectForKey_(v157, v23, @"attributedBody");
    v30 = objc_alloc(MEMORY[0x1E69A8118]);
    v32 = objc_msgSend_initWithMessageBody_messageGUID_(v30, v31, v29, v8);
    v35 = v32;
    if (v156 && (objc_msgSend_messageParts(v32, v33, v34), v36 = objc_claimAutoreleasedReturnValue(), v39 = v1, v40 = objc_msgSend_count(v36, v37, v38), v36, v41 = v40 >= 2, v1 = v39, v41))
    {
      ThreadIdentifierWithComponents = IMMessageCreateThreadIdentifierWithComponents();
      AssociatedMessageGUIDFromThreadIdentifier = IMMessageCreateAssociatedMessageGUIDFromThreadIdentifier();

      v1 = v39;
    }

    else
    {
      AssociatedMessageGUIDFromThreadIdentifier = v181;
    }

    v4 = v28;

    v7 = v27;
    v5 = v26;
    v25 = v159;
  }

  else
  {
    AssociatedMessageGUIDFromThreadIdentifier = 0;
  }

  v44 = MEMORY[0x1E696AD98];
  v45 = objc_msgSend_rowID(v1, v23, v24);
  v47 = objc_msgSend_numberWithLongLong_(v44, v46, v45);
  if (v47)
  {
    CFDictionarySetValue(v4, @"rowID", v47);
  }

  v48 = v19;
  if (v48)
  {
    CFDictionarySetValue(v4, @"time", v48);
  }

  v49 = v22;
  v50 = v181;
  if (v49)
  {
    CFDictionarySetValue(v4, @"timeRead", v49);
  }

  v153 = v49;

  v51 = value;
  if (v51)
  {
    CFDictionarySetValue(v4, @"guid", v51);
  }

  v52 = v5;
  if (v52)
  {
    CFDictionarySetValue(v4, @"plainBody", v52);
  }

  v53 = v25;
  valuea = v53;
  if (v53)
  {
    CFDictionarySetValue(v4, @"attributedBody", v53);
    v53 = valuea;
  }

  v54 = v179;
  v180 = v54;
  if (v54)
  {
    CFDictionarySetValue(v4, @"subject", v54);
    v54 = v180;
  }

  v55 = v177;
  v178 = v55;
  if (v55)
  {
    CFDictionarySetValue(v4, @"service", v55);
    v55 = v178;
  }

  v56 = v173;
  v174 = v56;
  if (v56)
  {
    CFDictionarySetValue(v4, @"flags", v56);
    v56 = v174;
  }

  v58 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v57, v199 != 0);
  if (v58)
  {
    CFDictionarySetValue(v4, @"hasAttachments", v58);
  }

  v60 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v59, v198);
  if (v60)
  {
    CFDictionarySetValue(v4, @"type", v60);
  }

  v61 = v171;
  v172 = v61;
  if (v61)
  {
    CFDictionarySetValue(v4, @"balloonBundleID", v61);
    v61 = v172;
  }

  v62 = v169;
  v170 = v62;
  if (v62)
  {
    CFDictionarySetValue(v4, @"payloadData", v62);
    v62 = v170;
  }

  v63 = v167;
  v168 = v63;
  if (v63)
  {
    CFDictionarySetValue(v4, @"expressiveSendStyleID", v63);
    v63 = v168;
  }

  v65 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v64, v195);
  if (v65)
  {
    CFDictionarySetValue(v4, @"associatedMessageType", v65);
  }

  v66 = v165;
  v166 = v66;
  if (v66)
  {
    CFDictionarySetValue(v4, @"associatedMessageGUID", v66);
    v66 = v166;
  }

  v67 = v163;
  v164 = v67;
  if (v67)
  {
    CFDictionarySetValue(v4, @"syndicationRanges", v67);
    v67 = v164;
  }

  v68 = v161;
  v162 = v68;
  if (v68)
  {
    CFDictionarySetValue(v4, @"destinationCallerID", v68);
    v68 = v162;
  }

  v69 = v157;
  v160 = v69;
  if (v157)
  {
    CFDictionarySetValue(v4, @"threadOriginator", v69);
    v69 = v160;
  }

  v70 = AssociatedMessageGUIDFromThreadIdentifier;
  if (v70)
  {
    CFDictionarySetValue(v4, @"threadOriginatorFormattedGUID", v70);
  }

  v148 = v70;

  v71 = v149;
  if (v71)
  {
    CFDictionarySetValue(v4, @"biaReferenceID", v71);
  }

  v158 = v71;

  v72 = v151;
  if (v72)
  {
    CFDictionarySetValue(v4, @"associatedMessageEmoji", v72);
  }

  v152 = v72;

  if (v7)
  {
    v75 = v7;
    v77 = objc_msgSend_dictionaryWithMessageSummaryInfoData_(MEMORY[0x1E695DF20], v76, v75);
    if (v77)
    {
      CFDictionarySetValue(v4, @"messageSummaryInfo", v77);
    }
  }

  v78 = objc_msgSend_handleRecord(v1, v73, v74);
  v81 = v78;
  v155 = v48;
  if (v78)
  {
    v82 = _IMDCoreSpotlightHandleID(v78);
    v83 = v81;
    v86 = objc_msgSend_uncanonicalizedURIString(v81, v84, v85);
    if (v86)
    {
      CFDictionarySetValue(v4, @"uncanonicalizedHandle", v86);
    }

    v87 = v82;
    v81 = v83;
    v50 = v181;
    if (v87)
    {
      v88 = v87;
      CFDictionarySetValue(v4, @"handle", v87);
    }
  }

  if (v199)
  {
    v143 = v81;
    v144 = v52;
    v145 = v51;
    v146 = v7;
    theDict = v4;
    v150 = v1;
    v89 = objc_msgSend_attachmentRecords(v1, v79, v80);
    v90 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v182 = 0u;
    v183 = 0u;
    v184 = 0u;
    v185 = 0u;
    v91 = v89;
    v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(v91, v92, &v182, v208, 16);
    if (v93)
    {
      v94 = v93;
      v95 = *v183;
      do
      {
        for (i = 0; i != v94; ++i)
        {
          if (*v183 != v95)
          {
            objc_enumerationMutation(v91);
          }

          v97 = *(*(&v182 + 1) + 8 * i);
          v98 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v101 = objc_msgSend_attributionInfo(v97, v99, v100);
          objc_msgSend__writeIfNeededForPreviewGenerationStateMigration(v97, v102, v103);
          v106 = objc_msgSend_guid(v97, v104, v105);
          if (v106)
          {
            CFDictionarySetValue(v98, @"guid", v106);
          }

          v109 = objc_msgSend_path(v97, v107, v108);
          if (v109)
          {
            CFDictionarySetValue(v98, @"path", v109);
          }

          v112 = objc_msgSend_transferName(v97, v110, v111);
          if (v112)
          {
            CFDictionarySetValue(v98, @"name", v112);
          }

          v113 = v101;
          if (v113)
          {
            CFDictionarySetValue(v98, @"attributionInfo", v113);
          }

          v114 = MEMORY[0x1E696AD98];
          isCommSafetySensitive = objc_msgSend_isCommSafetySensitive(v97, v115, v116);
          v119 = objc_msgSend_numberWithBool_(v114, v118, isCommSafetySensitive);
          if (v119)
          {
            CFDictionarySetValue(v98, @"isCommSafetySensitive", v119);
          }

          v120 = MEMORY[0x1E696AD98];
          isSticker = objc_msgSend_isSticker(v97, v121, v122);
          v125 = objc_msgSend_numberWithBool_(v120, v124, isSticker);
          if (v125)
          {
            CFDictionarySetValue(v98, @"isSticker", v125);
          }

          v128 = objc_msgSend_utiString(v97, v126, v127);
          if (v128)
          {
            CFDictionarySetValue(v98, @"uti", v128);
          }

          v129 = MEMORY[0x1E696AD98];
          v132 = objc_msgSend_previewGenerationState(v97, v130, v131);
          v134 = objc_msgSend_numberWithInteger_(v129, v133, v132);
          if (v134)
          {
            CFDictionarySetValue(v98, @"previewGenerationState", v134);
          }

          if (objc_msgSend_count(v98, v135, v136))
          {
            objc_msgSend_addObject_(v90, v137, v98);
          }
        }

        v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v91, v138, &v182, v208, 16);
      }

      while (v94);
    }

    v139 = v90;
    v4 = theDict;
    if (v139)
    {
      CFDictionarySetValue(theDict, @"attachments", v139);
    }

    v1 = v150;
    v51 = v145;
    v7 = v146;
    v50 = v181;
    v81 = v143;
    v52 = v144;
    v48 = v155;
  }

  v140 = v4;

  v141 = *MEMORY[0x1E69E9840];

  return v140;
}

id _IMDCoreSpotlightHandleID(void *a1)
{
  v3 = a1;
  if (!v3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = IMFileLocationTrimFileName();
    v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v6, &stru_1F2FA9728);
    v9 = objc_msgSend_stringWithFormat_(v4, v8, @"Unexpected nil '%@' in %s at %s:%d. %@", @"handle", "NSString *_IMDCoreSpotlightHandleID(IMDHandleRecord *__strong)", v5, 437, v7);

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

  v16 = objc_msgSend_canonicalizedURIString(v3, v1, v2);
  if (!v16)
  {
    v16 = objc_msgSend_uncanonicalizedURIString(v3, v14, v15);
  }

  v17 = objc_msgSend__stripFZIDPrefix(v16, v14, v15);
  v20 = objc_msgSend_im_stripCategoryLabel(v17, v18, v19);

  return v20;
}

__CFDictionary *IMCopyIndexableChatDictionaryForRecord(void *a1, int a2)
{
  v2 = a1;
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v5 = objc_msgSend_initWithCapacity_(v3, v4, 19);
  v66 = 0;
  v67 = 0;
  v64 = 0;
  v65 = 0;
  v62 = 0;
  v63 = 0;
  v60 = 0;
  v61 = 0;
  v58 = 0;
  v59 = 0;
  v56 = 0;
  v57 = 1;
  v54 = 0;
  v55 = 0;
  _IMDChatRecordBulkCopy(v2, &v65, 0, &v63, &v62, &v61, 0, &v67, 0, &v66, &v58, &v64, &v60, 0, &v57, 0, 0, 0, 0, &v59, 0, 0, 0, &v56, &v55, &v54, 0, 0);
  v8 = v66;
  v7 = v67;
  v10 = v63;
  v9 = v64;
  v12 = v61;
  v11 = v62;
  v14 = v59;
  v13 = v60;
  value = v58;
  if (v67)
  {
    CFDictionarySetValue(v5, @"guid", v67);
  }

  v53 = v14;
  v51 = v7;
  if (v8)
  {
    CFDictionarySetValue(v5, @"groupName", v8);
  }

  v15 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v6, v65);
  if (v15)
  {
    CFDictionarySetValue(v5, @"style", v15);
  }

  if (v9)
  {
    CFDictionarySetValue(v5, @"loginID", v9);
  }

  v17 = JWDecodeDictionary();
  if (v17)
  {
    CFDictionarySetValue(v5, @"properties", v17);
  }

  if (v12)
  {
    CFDictionarySetValue(v5, @"chatIdentifier", v12);
  }

  if (v13)
  {
    CFDictionarySetValue(v5, @"groupID", v13);
  }

  if (v14)
  {
    CFDictionarySetValue(v5, @"originalGroupID", v14);
  }

  if (v10)
  {
    CFDictionarySetValue(v5, @"accountID", v10);
  }

  v50 = v8;
  if (value)
  {
    CFDictionarySetValue(v5, @"lalh", value);
  }

  v48 = v10;
  v49 = v9;
  v18 = objc_msgSend_objectForKeyedSubscript_(v17, v16, *MEMORY[0x1E69A6B80]);
  if (v18)
  {
    CFDictionarySetValue(v5, @"groupPhotoGUID", v18);
  }

  v19 = IMDAttachmentRecordCopyAttachmentForGUID(v18);
  v22 = v19;
  if (v19)
  {
    v23 = objc_msgSend_path(v19, v20, v21);
    if (v23)
    {
      CFDictionarySetValue(v5, @"groupPhotoPath", v23);
    }
  }

  v45 = v12;
  v46 = v11;
  v24 = objc_msgSend_handleRecords(v2, v20, v21);
  v26 = objc_msgSend___imArrayByApplyingBlock_(v24, v25, &unk_1F2FA1250);

  if (v26)
  {
    CFDictionarySetValue(v5, @"participants", v26);
  }

  v28 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v27, v57);
  if (v28)
  {
    CFDictionarySetValue(v5, @"isFiltered", v28);
  }

  v30 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v29, v56);
  if (v30)
  {
    CFDictionarySetValue(v5, @"isBlackholed", v30);
  }

  v32 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v31, v55);
  if (v32)
  {
    CFDictionarySetValue(v5, @"syndicationType", v32);
  }

  v37 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v33, v34, v54);
  v38 = v13;
  if (v37)
  {
    CFDictionarySetValue(v5, @"syndicationDate", v37);
  }

  if (a2)
  {
    Message = IMDChatRecordCopyLastMessage(v2);
    v42 = objc_msgSend_date(Message, v40, v41);
    if (v42)
    {
      CFDictionarySetValue(v5, @"lastMessageDate", v42);
    }

    v38 = v13;
  }

  v43 = objc_msgSend_domainIdentifiers(v2, v35, v36);
  if (v43)
  {
    CFDictionarySetValue(v5, @"DomainIdentifiers", v43);
  }

  return v5;
}

void _IMDCoreRecentsApiInit(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_sharedInstance(IMDCoreSpotlightDispatchObject, a2, a3);
  v6 = objc_msgSend_allowsOverrideOfObjects(v3, v4, v5);

  if (v6)
  {
    v13 = objc_msgSend_sharedInstance(IMDCoreSpotlightDispatchObject, v7, v8);
    v11 = objc_msgSend_defaultInstance(MEMORY[0x1E6998FC8], v9, v10);
    objc_msgSend_setRecentsInstance_(v13, v12, v11);
  }
}

void *_IMDCoreSpotlightCNContactForHandleID(void *a1)
{
  v1 = _IMDCoreSpotlightCNContactForAddress(a1);
  if (objc_msgSend_isCNContactAKnownContact_(MEMORY[0x1E69A7FD0], v2, v1))
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

id _IMDCoreSpotlightCNContactForAddress(void *a1)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E695C208];
  v9[0] = *MEMORY[0x1E695C330];
  v9[1] = v1;
  v2 = MEMORY[0x1E695DEC8];
  v3 = a1;
  v5 = objc_msgSend_arrayWithObjects_count_(v2, v4, v9, 2);
  v6 = _IMDCoreSpotlightCNContactForAddressWithAdditionalPropertyKeys(v3, v5);

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id _IMDCoreSpotlightCNContactForHandle(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = IMFileLocationTrimFileName();
    v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v4, &stru_1F2FA9728);
    v7 = objc_msgSend_stringWithFormat_(v2, v6, @"Unexpected nil '%@' in %s at %s:%d. %@", @"handle", "CNContact * _Nonnull _IMDCoreSpotlightCNContactForHandle(IMDHandleRecord *__strong _Nonnull)", v3, 458, v5);

    v8 = IMGetAssertionFailureHandler();
    if (v8)
    {
      v8(v7);
    }

    else
    {
      v11 = objc_msgSend_warning(MEMORY[0x1E69A6138], v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }
  }

  v12 = _IMDCoreSpotlightHandleID(v1);
  v13 = _IMDCoreSpotlightCNContactForHandleID(v12);

  return v13;
}

uint64_t _IMDCoreSpotlightIsKnownContact(void *a1)
{
  v1 = _IMDCoreSpotlightCNContactForAddress(a1);
  isCNContactAKnownContact = objc_msgSend_isCNContactAKnownContact_(MEMORY[0x1E69A7FD0], v2, v1);

  return isCNContactAKnownContact;
}

id _IMDCoreSpotlightCNContactForAddressWithAdditionalPropertyKeys(void *a1, void *a2)
{
  v78 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v5 = a2;
  if (v3)
  {
    v6 = objc_msgSend_validateAndCleanupID_(MEMORY[0x1E69A7FD0], v4, v3);
    if (!objc_msgSend_length(v6, v7, v8))
    {
      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v75 = v3;
          _os_log_impl(&dword_1B7AD5000, v25, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Validated Address is nil, we are returning nil. Address: %@", buf, 0xCu);
        }
      }

      v23 = 0;
      goto LABEL_46;
    }

    v10 = MEMORY[0x1E695DF70];
    v11 = objc_msgSend_descriptorForRequiredKeysForStyle_(MEMORY[0x1E695CD80], v9, 0);
    v13 = objc_msgSend_arrayWithObject_(v10, v12, v11);

    if (objc_msgSend_count(v5, v14, v15))
    {
      objc_msgSend_addObjectsFromArray_(v13, v16, v5);
    }

    v18 = objc_msgSend_sharedInstance(IMDContactCache, v16, v17);
    v20 = objc_msgSend_cachedContactForKey_(v18, v19, v6);

    if (v20)
    {
      if (objc_msgSend_areKeysAvailable_(v20, v21, v13))
      {
        v23 = v20;
LABEL_45:

LABEL_46:
        goto LABEL_47;
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v75 = v6;
        _os_log_impl(&dword_1B7AD5000, v26, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: No cached contact for ID:%@. We are refetching.", buf, 0xCu);
      }
    }

    v27 = objc_msgSend_predicateForContactsMatchingEmailAddress_(MEMORY[0x1E695CD58], v22, v6);
    v28 = _IMDContactStore();
    v73 = 0;
    v30 = objc_msgSend_unifiedContactsMatchingPredicate_keysToFetch_error_(v28, v29, v27, v13, &v73);
    v71 = v73;

    if (v71)
    {
      if (IMOSLoggingEnabled())
      {
        v34 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v37 = objc_msgSend_localizedDescription(v71, v35, v36);
          *buf = 138412290;
          v75 = v37;
          _os_log_impl(&dword_1B7AD5000, v34, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Contact Store (email)fetch failed: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v39 = objc_msgSend_firstObject(v30, v31, v32);
      if (v39)
      {
        v40 = objc_msgSend_sharedInstance(IMDContactCache, v33, v38);
        objc_msgSend_cacheContact_forKey_(v40, v41, v39, v6);

        if (IMOSLoggingEnabled())
        {
          v42 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v75 = v6;
            v76 = 2112;
            v77 = v39;
            _os_log_impl(&dword_1B7AD5000, v42, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Got a Contact for address %@. Caching and returning contact: %@", buf, 0x16u);
          }
        }

        v23 = v39;
        goto LABEL_44;
      }
    }

    v43 = MEMORY[0x1E695CD58];
    v44 = objc_msgSend_phoneNumberWithStringValue_(MEMORY[0x1E695CF50], v33, v6);
    v46 = objc_msgSend_predicateForContactsMatchingPhoneNumber_(v43, v45, v44);

    v47 = _IMDContactStore();
    v72 = 0;
    v49 = objc_msgSend_unifiedContactsMatchingPredicate_keysToFetch_error_(v47, v48, v46, v13, &v72);
    v50 = v72;

    if (v50)
    {
      if (IMOSLoggingEnabled())
      {
        v53 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v56 = objc_msgSend_localizedDescription(v50, v54, v55);
          *buf = 138412290;
          v75 = v56;
          _os_log_impl(&dword_1B7AD5000, v53, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Contact Store (phone)fetch failed: %@", buf, 0xCu);
        }
      }

      v57 = 0;
    }

    else
    {
      v57 = objc_msgSend_firstObject(v49, v51, v52);
      if (v57)
      {
        v63 = objc_msgSend_sharedInstance(IMDContactCache, v61, v62);
        objc_msgSend_cacheContact_forKey_(v63, v64, v57, v6);

        if (IMOSLoggingEnabled())
        {
          v65 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v75 = v6;
            _os_log_impl(&dword_1B7AD5000, v65, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Got a Contact for address %@. Caching and returning contact.", buf, 0xCu);
          }
        }
      }

      else
      {
        v57 = objc_msgSend_createMutableContactWithID_(MEMORY[0x1E69A7FD0], v61, v6);
        if (IMOSLoggingEnabled())
        {
          v68 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v75 = v6;
            v76 = 2112;
            v77 = v57;
            _os_log_impl(&dword_1B7AD5000, v68, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Did not get a Contact for address %@ from Contact Store. Caching mutable contact: %@", buf, 0x16u);
          }
        }

        v69 = objc_msgSend_sharedInstance(IMDContactCache, v66, v67);
        objc_msgSend_cacheContact_forKey_(v69, v70, v57, v6);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v58 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v75 = v57;
        _os_log_impl(&dword_1B7AD5000, v58, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Return contact: %@", buf, 0xCu);
      }
    }

    v23 = v57;

    v30 = v49;
    v27 = v46;
LABEL_44:

    goto LABEL_45;
  }

  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v24, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Address is nil, we are returning nil.", buf, 2u);
    }
  }

  v23 = 0;
LABEL_47:

  v59 = *MEMORY[0x1E69E9840];

  return v23;
}

id _IMDCoreSpotlightPerson(void *a1, void *a2, void *a3, void *a4)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v8)
  {
    v11 = objc_alloc(MEMORY[0x1E6964E50]);
    v40[0] = v8;
    v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v12, v40, 1);
    v14 = _IMDContactsKindForID(v8, v10);
    v16 = objc_msgSend_initWithDisplayName_handles_handleIdentifier_(v11, v15, v7, v13, v14);
  }

  else
  {
    *buf = xmmword_1E7CBC0A0;
    *&buf[16] = *off_1E7CBC0B0;
    *v37 = 545;
    v19 = MEMORY[0x1E696AEC0];
    v20 = IMFileLocationTrimFileName();
    v22 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v21, &stru_1F2FA9728);
    v24 = objc_msgSend_stringWithFormat_(v19, v23, @"Unexpected nil '%@' in %s at %s:%d. %@", @"handleID", "CSPerson *_IMDCoreSpotlightPerson(NSString *__strong, NSString *__strong, CNContact *__strong, NSString *__strong)", v20, 545, v22);

    v27 = IMGetAssertionFailureHandler();
    if (v27)
    {
      v27(v24);
    }

    else
    {
      v28 = objc_msgSend_warning(MEMORY[0x1E69A6138], v25, v26);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }

    v16 = 0;
  }

  v29 = objc_msgSend_identifier(v9, v17, v18);
  objc_msgSend_setContactIdentifier_(v16, v30, v29);

  if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v31, v32) && IMOSLoggingEnabled())
  {
    v33 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 138413314;
      *&buf[4] = v16;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      *&buf[22] = 2112;
      *&buf[24] = v8;
      *v37 = 2112;
      *&v37[2] = v9;
      v38 = 2112;
      v39 = v10;
      _os_log_impl(&dword_1B7AD5000, v33, OS_LOG_TYPE_INFO, "Created CSPerson: %@, fullName: %@, handleID: %@, contact: %@, service: %@", buf, 0x34u);
    }
  }

  v34 = *MEMORY[0x1E69E9840];

  return v16;
}

id _IMDContactsKindForID(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = IMFileLocationTrimFileName();
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, &stru_1F2FA9728);
    v10 = objc_msgSend_stringWithFormat_(v5, v9, @"Unexpected nil '%@' in %s at %s:%d. %@", @"handleID", "NSString *_IMDContactsKindForID(NSString *__strong, NSString *__strong)", v6, 566, v8);

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

  v15 = *MEMORY[0x1E695C2B0];
  if ((_IMDCoreSpotlightServiceIsLegacy(v4) & 1) == 0)
  {
    if (objc_msgSend__appearsToBePhoneNumber(v3, v16, v17))
    {
      v20 = MEMORY[0x1E695C330];
    }

    else
    {
      if (!objc_msgSend__appearsToBeEmail(v3, v18, v19))
      {
        goto LABEL_14;
      }

      v20 = MEMORY[0x1E695C208];
    }

    v21 = *v20;

    v15 = v21;
  }

LABEL_14:

  return v15;
}

uint64_t _IMDCoreSpotlightServiceIsLegacy(void *a1)
{
  v1 = qword_1EBA53BA8;
  v3 = a1;
  if (v1 != -1)
  {
    sub_1B7CFA450();
  }

  v4 = objc_msgSend_containsObject_(qword_1EBA53BB0, v2, v3);

  return v4 ^ 1u;
}

void sub_1B7BB821C(uint64_t a1, const char *a2)
{
  v7[5] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69A7AF8];
  v7[0] = *MEMORY[0x1E69A7AF0];
  v7[1] = v2;
  v3 = *MEMORY[0x1E69A7AE8];
  v7[2] = *MEMORY[0x1E69A7AD8];
  v7[3] = v3;
  v7[4] = *MEMORY[0x1E69A7AE0];
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], a2, v7, 5);
  v5 = qword_1EBA53BB0;
  qword_1EBA53BB0 = v4;

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t _IMDCoreSpotlightMessageMentionsMe(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = _IMDCoreSpotlightTokensMentionedInMessage(v3);
  if (objc_msgSend_count(v5, v6, v7))
  {
    v8 = _IMDCoreSpotlightTokensForMeIncludingCallerID(v4);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1B7BB85DC;
    v13[3] = &unk_1E7CBC0F8;
    v9 = v8;
    v14 = v9;
    v15 = &v16;
    objc_msgSend_enumerateObjectsUsingBlock_(v5, v10, v13);
    v11 = *(v17 + 24);

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void sub_1B7BB83EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _IMDCoreSpotlightTokensMentionedInMessage(void *a1)
{
  v1 = MEMORY[0x1E695DF70];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = *MEMORY[0x1E69A70F8];
  v7 = objc_msgSend_length(v2, v5, v6);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1B7BB8624;
  v14[3] = &unk_1E7CBAE78;
  v15 = v3;
  v8 = v3;
  objc_msgSend_enumerateAttribute_inRange_options_usingBlock_(v2, v9, v4, 0, v7, 0, v14);

  v12 = objc_msgSend_copy(v8, v10, v11);

  return v12;
}

id _IMDCoreSpotlightTokensForMeIncludingCallerID(void *a1)
{
  v1 = a1;
  v2 = _IMDContactStore();
  v3 = IMMentionContactKeysForMe();
  v16 = 0;
  v5 = objc_msgSend__crossPlatformUnifiedMeContactWithKeysToFetch_error_(v2, v4, v3, &v16);

  v6 = IMMentionMeTokensForContact();
  v9 = objc_msgSend_mutableCopy(v6, v7, v8);
  if (objc_msgSend_length(v1, v10, v11))
  {
    objc_msgSend_addObject_(v9, v12, v1);
  }

  v14 = objc_msgSend_copy(v9, v12, v13);

  return v14;
}

uint64_t sub_1B7BB85DC(uint64_t a1, const char *a2, uint64_t a3, _BYTE *a4)
{
  result = objc_msgSend_containsObject_(*(a1 + 32), a2, a2);
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_1B7BB8624(uint64_t a1, void *a2)
{
  v8 = a2;
  if (MEMORY[0x1B8CAF9C0]())
  {
    v3 = IMNormalizePhoneNumber();
  }

  else
  {
    v3 = v8;
  }

  v6 = v3;
  if (objc_msgSend_length(v3, v4, v5))
  {
    objc_msgSend_addObject_(*(a1 + 32), v7, v6);
  }
}

id _IMDCoreRecentsKindForHandleID(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = IMFileLocationTrimFileName();
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, &stru_1F2FA9728);
    v10 = objc_msgSend_stringWithFormat_(v5, v9, @"Unexpected nil '%@' in %s at %s:%d. %@", @"handleID", "NSString *_IMDCoreRecentsKindForHandleID(NSString *__strong, NSString *__strong)", v6, 652, v8);

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

  v15 = *MEMORY[0x1E6998F50];
  if ((_IMDCoreSpotlightServiceIsLegacy(v4) & 1) == 0)
  {
    if (objc_msgSend__appearsToBePhoneNumber(v3, v16, v17))
    {
      v20 = MEMORY[0x1E6998F60];
    }

    else
    {
      if (!objc_msgSend__appearsToBeEmail(v3, v18, v19))
      {
        goto LABEL_14;
      }

      v20 = MEMORY[0x1E6998F48];
    }

    v21 = *v20;

    v15 = v21;
  }

LABEL_14:

  return v15;
}

id sub_1B7BB883C()
{
  if (!qword_1EDBE5E50 && (IMIsRunningInUnitTesting() & 1) == 0)
  {
    v1 = objc_msgSend_stringByAppendingString_(*MEMORY[0x1E69A77E0], v0, @"pendingNicknamesKeyStore.db");
    v4 = objc_msgSend_stringByResolvingAndStandardizingPath(v1, v2, v3);

    v5 = objc_alloc(MEMORY[0x1E69A5670]);
    v7 = objc_msgSend_initWithPath_storeName_dataProtectionClass_(v5, v6, v4, @"pendingNicknameUpdatesStore", 0);
    v8 = qword_1EDBE5E50;
    qword_1EDBE5E50 = v7;
  }

  v9 = qword_1EDBE5E50;

  return v9;
}

id sub_1B7BB88E8()
{
  if (!qword_1EDBE5E58 && (IMIsRunningInUnitTesting() & 1) == 0)
  {
    v1 = objc_msgSend_stringByAppendingString_(*MEMORY[0x1E69A77E0], v0, @"handledNicknamesKeyStore.db");
    v4 = objc_msgSend_stringByResolvingAndStandardizingPath(v1, v2, v3);

    v5 = objc_alloc(MEMORY[0x1E69A5670]);
    v7 = objc_msgSend_initWithPath_storeName_dataProtectionClass_(v5, v6, v4, @"handledNicknamesStore", 0);
    v8 = qword_1EDBE5E58;
    qword_1EDBE5E58 = v7;
  }

  v9 = qword_1EDBE5E58;

  return v9;
}

id sub_1B7BB8994(void *a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (IMSharedHelperCurrentRegionRequiresKnownSenderForNickname() && !_IMDCoreSpotlightIsKnownContact(v4))
  {
    v12 = 0;
    goto LABEL_25;
  }

  v23 = 0;
  v6 = objc_msgSend_dataForKey_error_(v3, v5, v4, &v23);
  v9 = v23;
  if (!v9)
  {
    if (objc_msgSend_length(v6, v7, v8))
    {
      v13 = MEMORY[0x1E696ACD0];
      v14 = IMNicknameUnarchivingClasses();
      v22 = 0;
      v11 = objc_msgSend__strictlyUnarchivedObjectOfClasses_fromData_error_(v13, v15, v14, v6, &v22);
      v16 = v22;

      v17 = IMOSLoggingEnabled();
      if (v16)
      {
        if (v17)
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v25 = v16;
            _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, "We got an error unarchiving the nickname dictionary %@", buf, 0xCu);
          }
        }

        goto LABEL_9;
      }

      if (v17)
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v25 = v4;
          v26 = 2112;
          v27 = v11;
          _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, "We have a nickname dictionary for %@ %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v11 = 0;
    }

    v11 = v11;
    v12 = v11;
    goto LABEL_24;
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v9;
      _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "We got an error loading the nickname info from the kv store for notifications %@", buf, 0xCu);
    }
  }

  v11 = 0;
LABEL_9:
  v12 = 0;
LABEL_24:

LABEL_25:
  v20 = *MEMORY[0x1E69E9840];

  return v12;
}

id _IMDNicknameInfoForAddress(void *a1)
{
  v1 = a1;
  v2 = sub_1B7BB883C();
  v3 = sub_1B7BB8994(v2, v1);

  if (!objc_msgSend_count(v3, v4, v5))
  {
    v6 = sub_1B7BB88E8();
    v7 = sub_1B7BB8994(v6, v1);

    v3 = v7;
  }

  return v3;
}

id _IMDContactNameForNickname(void *a1, uint64_t a2)
{
  v5 = a1;
  if (qword_1EBA53BD8 != -1)
  {
    sub_1B7CFA464();
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_msgSend_firstName(v5, v3, v4);
  v10 = objc_msgSend_lastName(v5, v8, v9);
  v12 = objc_msgSend_stringWithFormat_(v6, v11, @"%d-%@-%@", a2, v7, v10);

  v14 = objc_msgSend_objectForKey_(qword_1EBA53BE0, v13, v12);
  v17 = objc_msgSend_null(MEMORY[0x1E695DFB0], v15, v16);

  if (v14 == v17)
  {
    v20 = 0;
  }

  else if (v14)
  {
    v20 = v14;
  }

  else
  {
    if (v5)
    {
      v21 = objc_alloc_init(MEMORY[0x1E695CF18]);
      v24 = objc_msgSend_firstName(v5, v22, v23);
      objc_msgSend_setGivenName_(v21, v25, v24);

      v28 = objc_msgSend_lastName(v5, v26, v27);
      objc_msgSend_setFamilyName_(v21, v29, v28);

      v20 = objc_msgSend_stringFromContact_style_(MEMORY[0x1E695CD80], v30, v21, 0);
    }

    else
    {
      v20 = 0;
    }

    if (objc_msgSend_length(v20, v18, v19) && a2)
    {
      v33 = MEMORY[0x1E696AEC0];
      v34 = IMSharedUtilitiesFrameworkBundle();
      v36 = objc_msgSend_localizedStringForKey_value_table_(v34, v35, @"MAYBE", &stru_1F2FA9728, @"IMSharedUtilities");
      v38 = objc_msgSend_localizedStringWithFormat_(v33, v37, v36, v20);

      v20 = v38;
    }

    v39 = qword_1EBA53BE0;
    if (v20)
    {
      objc_msgSend_setObject_forKey_(qword_1EBA53BE0, v31, v20, v12);
    }

    else
    {
      v40 = objc_msgSend_null(MEMORY[0x1E695DFB0], v31, v32);
      objc_msgSend_setObject_forKey_(v39, v41, v40, v12);
    }
  }

  return v20;
}

void sub_1B7BB8F54()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = qword_1EBA53BE0;
  qword_1EBA53BE0 = v0;
}

id _IMDCoreSpotlightChatUIDForChatDictionary(void *a1)
{
  v1 = a1;
  v3 = objc_msgSend_valueForKey_(v1, v2, @"style");

  if (v3)
  {
    v5 = objc_msgSend_valueForKey_(v1, v4, @"style");
    v8 = objc_msgSend_charValue(v5, v6, v7);

    if (v8 == 45)
    {
      objc_msgSend_valueForKey_(v1, v9, @"chatIdentifier");
      goto LABEL_6;
    }

    if (v8 == 43)
    {
      objc_msgSend_valueForKey_(v1, v9, @"groupID");
      v3 = LABEL_6:;
      goto LABEL_8;
    }

    v3 = 0;
  }

LABEL_8:

  return v3;
}

uint64_t IMDCoreSpotlightPhotoAtPathIsScreenshot(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], a2, a1);
  v3 = IMIsScreenshotURL();

  return v3;
}

void IMDCoreSpotlightURLFromAttributedMessageBody(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_length(v1, v2, v3);
  if (v1)
  {
    v6 = v4;
    v7 = *MEMORY[0x1E69A5FB0];
    if (objc_msgSend_attribute_existsInRange_(v1, v5, *MEMORY[0x1E69A5FB0], 0, v4))
    {
      v43 = 0;
      v44 = 0;
      v9 = objc_msgSend_attribute_atIndex_longestEffectiveRange_inRange_(v1, v8, v7, 0, &v43, 0, v6);
      objc_opt_class();
      v10 = 0;
      if (objc_opt_isKindOfClass())
      {
        v10 = 0;
        if (!v43 && v44 == v6)
        {
          v10 = v9;
        }
      }

      goto LABEL_21;
    }

    if (objc_msgSend_attribute_existsInRange_(v1, v8, *MEMORY[0x1E69A5F48], 0, v6))
    {
      v43 = 0;
      v44 = &v43;
      v45 = 0x3032000000;
      v46 = sub_1B7AE1AE0;
      v47 = sub_1B7AE2578;
      v48 = 0;
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = sub_1B7BB951C;
      v42[3] = &unk_1E7CBC148;
      v42[4] = &v43;
      objc_msgSend_enumerateAttributesInRange_options_usingBlock_(v1, v11, 0, v6, 0, v42);
      v12 = _IMDCopyDDScannerResultFromAttributedStringData(v44[5]);
      v15 = objc_msgSend_coreResult(v12, v13, v14);
      v10 = v15;
      if (v15)
      {
        v54 = 0;
        v55 = &v54;
        v56 = 0x2020000000;
        v18 = off_1EBA541D8;
        v57 = off_1EBA541D8;
        if (!off_1EBA541D8)
        {
          v49 = MEMORY[0x1E69E9820];
          v50 = 3221225472;
          v51 = sub_1B7BBA1A0;
          v52 = &unk_1E7CB6EA8;
          v53 = &v54;
          v19 = sub_1B7BBA1F0(v15, v16, v17);
          v20 = dlsym(v19, "DDResultGetCategory");
          *(v53[1] + 24) = v20;
          off_1EBA541D8 = *(v53[1] + 24);
          v18 = v55[3];
        }

        _Block_object_dispose(&v54, 8);
        if (v18)
        {
          v23 = v18(v10);
          if (v23 != 1)
          {
            v10 = 0;
            goto LABEL_20;
          }

          v54 = 0;
          v55 = &v54;
          v56 = 0x2020000000;
          v26 = off_1EBA541E8;
          v57 = off_1EBA541E8;
          if (!off_1EBA541E8)
          {
            v49 = MEMORY[0x1E69E9820];
            v50 = 3221225472;
            v51 = sub_1B7BBA35C;
            v52 = &unk_1E7CB6EA8;
            v53 = &v54;
            v27 = sub_1B7BBA1F0(v23, v24, v25);
            v28 = dlsym(v27, "DDResultCopyExtractedURLWithOptions");
            *(v53[1] + 24) = v28;
            off_1EBA541E8 = *(v53[1] + 24);
            v26 = v55[3];
          }

          _Block_object_dispose(&v54, 8);
          if (v26)
          {
            v31 = v26(v10, 0);
            v10 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v32, v31);

            goto LABEL_20;
          }

          v34 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v29, v30);
          v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v39, "CFStringRef _DDResultCopyExtractedURLWithOptions(DDResultRef, DDResultURLExtractionOptions)");
          v40 = dlerror();
          objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v34, v41, v36, @"IMDCoreSpotlightIndexHelpers.m", 78, @"%s", v40);
        }

        else
        {
          v34 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v21, v22);
          v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v35, "DDResultCategory _DDResultGetCategory(DDResultRef)");
          v37 = dlerror();
          objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v34, v38, v36, @"IMDCoreSpotlightIndexHelpers.m", 77, @"%s", v37);
        }

        __break(1u);
        return;
      }

LABEL_20:

      _Block_object_dispose(&v43, 8);
      goto LABEL_21;
    }
  }

  v10 = 0;
LABEL_21:

  v33 = v10;
}

void sub_1B7BB94DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose((v8 - 96), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7BB951C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  v8 = *MEMORY[0x1E69A5F48];
  v15 = v7;
  v10 = objc_msgSend_objectForKeyedSubscript_(v7, v9, *MEMORY[0x1E69A5F48]);

  if (v10)
  {
    v12 = objc_msgSend_objectForKeyedSubscript_(v15, v11, v8);
    v13 = *(*(a1 + 32) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    *a5 = 1;
  }
}

id _IMDCopyDDScannerResultFromAttributedStringData(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!objc_msgSend_length(v1, v2, v3))
  {
    v11 = 0;
    goto LABEL_17;
  }

  v4 = objc_autoreleasePoolPush();
  v5 = objc_alloc(MEMORY[0x1E696ACD0]);
  v20 = 0;
  v7 = objc_msgSend_initForReadingFromData_error_(v5, v6, v1, &v20);
  v8 = v20;
  if (v7)
  {
    if (!qword_1EBA541D0)
    {
      qword_1EBA541D0 = MEMORY[0x1B8CAFAC0](@"DDScannerResult", @"DataDetectorsCore");
    }

    v9 = objc_opt_class();
    v11 = objc_msgSend_decodeObjectOfClass_forKey_(v7, v10, v9, @"dd-result");
    objc_msgSend_finishDecoding(v7, v12, v13);
    if (v11)
    {
      goto LABEL_16;
    }

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v17 = objc_msgSend_error(v7, v15, v16);
        *buf = 138412546;
        v22 = v1;
        v23 = 2112;
        v24 = v17;
        _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "Could not unarchive DDScannerResult data: %@ error: %@", buf, 0x16u);
      }

LABEL_14:
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = v8;
      _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "Could not create keyed unarchiver due to error: %@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v11 = 0;
LABEL_16:

  objc_autoreleasePoolPop(v4);
LABEL_17:

  v18 = *MEMORY[0x1E69E9840];

  return v11;
}

void sub_1B7BB97EC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1B7BB978CLL);
  }

  _Unwind_Resume(a1);
}

id _IMDCoreSpotlightStrippedBody(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = objc_msgSend_objectForKey_(a1, v6, a2);
  if (!v8)
  {
    v8 = v5;
  }

  v9 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v8, v7, *MEMORY[0x1E69A5F00], &stru_1F2FA9728);
  v11 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v9, v10, *MEMORY[0x1E69A5F20], &stru_1F2FA9728);

  return v11;
}

void sub_1B7BB9A0C()
{
  v0 = objc_alloc_init(IMDCoreSpotlightDispatchObject);
  v1 = qword_1EDBE7940;
  qword_1EDBE7940 = v0;
}

id _IMDCoreSpotlightFullNameForContact(void *a1, int a2)
{
  v3 = a1;
  v6 = v3;
  if (v3)
  {
    if (a2)
    {
      v7 = objc_msgSend_nickname(v3, v4, v5);
      v10 = objc_msgSend_length(v7, v8, v9);
    }

    else
    {
      v7 = 0;
      v10 = objc_msgSend_length(0, v4, v5);
    }

    if (!v10)
    {
      v12 = objc_msgSend_stringFromContact_style_(MEMORY[0x1E695CD80], v11, v6, 0);

      v7 = v12;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id _IMDCoreSpotlightNicknameForAddress(void *a1)
{
  v1 = _IMDNicknameInfoForAddress(a1);
  if (objc_msgSend_count(v1, v2, v3))
  {
    v4 = objc_alloc(MEMORY[0x1E69A8190]);
    v6 = objc_msgSend_initWithDictionaryRepresentation_(v4, v5, v1);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_1B7BB9BF4()
{
  if (qword_1EBA53BD0 != -1)
  {
    sub_1B7CFA48C();
  }

  v1 = qword_1EBA53BC8;

  return v1;
}

void sub_1B7BB9C38(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_serviceForContacts(MEMORY[0x1E69992A0], a2, a3);
  v4 = qword_1EBA53BC8;
  qword_1EBA53BC8 = v3;
}

id _IMDCoreSpotlightSuggestedNameForAddress(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (objc_msgSend_length(v1, v2, v3))
  {
    v4 = sub_1B7BB9BF4();
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = sub_1B7AE1AE0;
    v24 = sub_1B7AE2578;
    v25 = 0;
    v5 = dispatch_semaphore_create(0);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1B7BB9F58;
    v16[3] = &unk_1E7CBC170;
    v17 = 0;
    v19 = &v20;
    v6 = v5;
    v18 = v6;
    objc_msgSend_namesForDetail_limitTo_prependMaybe_onlySignificant_withCompletion_(v4, v7, v1, 1, 0, 0, v16);
    v8 = dispatch_time(0, 400000000);
    if (dispatch_semaphore_wait(v6, v8) && IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "Suggestion service request timed out", buf, 2u);
      }
    }

    if (objc_msgSend_length(v21[5], v9, v10))
    {
      v12 = v21[5];
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v27 = v12;
          v28 = 2112;
          v29 = v1;
          _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Using suggested name %@ for handle %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v12 = 0;
    }

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v12 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v12;
}

void sub_1B7BB9F58(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v8 = a3;
  if (v8)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 32);
        v20 = 138412546;
        v21 = v10;
        v22 = 2112;
        v23 = v8;
        _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "Error fetching suggested name for handle %@ Error: %@", &v20, 0x16u);
      }
    }
  }

  else if (objc_msgSend_count(v5, v6, v7))
  {
    v13 = objc_msgSend_firstObject(v5, v11, v12);
    v16 = objc_msgSend_copy(v13, v14, v15);
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  dispatch_semaphore_signal(*(a1 + 40));

  v19 = *MEMORY[0x1E69E9840];
}

void *sub_1B7BBA1A0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_1B7BBA1F0(a1, a2, a3);
  result = dlsym(v4, "DDResultGetCategory");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EBA541D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1B7BBA1F0(uint64_t a1, const char *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EBA541E0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = sub_1B7BBA2E8;
    v6[4] = &unk_1E7CB6A70;
    v6[5] = v6;
    v7 = xmmword_1E7CBC190;
    v8 = 0;
    qword_1EBA541E0 = _sl_dlopen();
  }

  v3 = qword_1EBA541E0;
  if (!qword_1EBA541E0)
  {
    sub_1B7CFA4A0(v6, a2, a3);
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1B7BBA2E8(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1EBA541E0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1B7BBA35C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_1B7BBA1F0(a1, a2, a3);
  result = dlsym(v4, "DDResultCopyExtractedURLWithOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EBA541E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1B7BBA71C(uint64_t a1, int a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = objc_msgSend_searchableItems(*(a1 + 32), v7, v8);
      v12 = objc_msgSend_count(v9, v10, v11);
      v15 = objc_msgSend_transactionID(*(a1 + 32), v13, v14);
      v22 = 134218498;
      v23 = v12;
      v24 = 2112;
      v25 = v15;
      v26 = 1024;
      v27 = a2 ^ 1;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Finished indexing %ld items to Spotlight and Suggestions with transaction ID %@ successfully %{BOOL}d", &v22, 0x1Cu);
    }
  }

  if (a2)
  {
    v16 = objc_msgSend__timeoutError(IMDCoreSpotlightIndexingJob, v4, v5);
    v17 = *(a1 + 32);
    v18 = *(v17 + 56);
    *(v17 + 56) = v16;
  }

  v19 = *(*(a1 + 32) + 56);
  result = (*(*(a1 + 40) + 16))();
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B7BBA888(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3 && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = objc_msgSend_transactionID(*(a1 + 32), v5, v6);
      v10 = objc_msgSend_index(*(a1 + 32), v8, v9);
      v12 = 138412802;
      v13 = v7;
      v14 = 2112;
      v15 = v3;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "IMDCoreSpotlightIndexSearchableItems: indexing transaction %@ failed with error %@. Using Index %@", &v12, 0x20u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1B7BBACF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = IMCoreSpotlightCriticalIndex();
  v10 = objc_msgSend_integerValue(v6, v8, v9);

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1B7BBADD8;
  v14[3] = &unk_1E7CB6C10;
  v11 = *(a1 + 32);
  v15 = v5;
  v16 = v11;
  v12 = v5;
  objc_msgSend_deleteSearchableItemsWithIdentifiers_reason_completionHandler_(v7, v13, v12, v10, v14);
}

void sub_1B7BBADD8(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMOSLoggingEnabled();
  if (v3)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v8 = objc_msgSend_count(*(a1 + 32), v6, v7);
        v11 = objc_msgSend_context(*(a1 + 40), v9, v10);
        objc_msgSend_reason(v11, v12, v13);
        v14 = NSStringFromIMCoreSpotlightIndexReason();
        v28 = 134218498;
        v29 = v8;
        v30 = 2112;
        v31 = v14;
        v32 = 2112;
        v33 = v3;
        _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "failed to delete %ld items for reason %@ due to %@", &v28, 0x20u);
      }

LABEL_9:
    }
  }

  else if (v4)
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v17 = objc_msgSend_count(*(a1 + 32), v15, v16);
      v20 = objc_msgSend_context(*(a1 + 40), v18, v19);
      objc_msgSend_reason(v20, v21, v22);
      v23 = NSStringFromIMCoreSpotlightIndexReason();
      v26 = objc_msgSend_transactionID(*(a1 + 40), v24, v25);
      v28 = 134218498;
      v29 = v17;
      v30 = 2112;
      v31 = v23;
      v32 = 2112;
      v33 = v26;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Deleted %ld items for reason %@ with transaction ID %@", &v28, 0x20u);
    }

    goto LABEL_9;
  }

  v27 = *MEMORY[0x1E69E9840];
}

void sub_1B7BBAFB8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1B7BBAF80);
  }

  _Unwind_Resume(a1);
}

void sub_1B7BBB348(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_serviceForMessages(MEMORY[0x1E69992A0], a2, a3);
  v4 = qword_1EBA53B38;
  qword_1EBA53B38 = v3;
}

void sub_1B7BBB388(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v45 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v13, v14) && IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v34 = objc_msgSend_uniqueIdentifier(*(a1 + 32), v18, v19);
      v22 = objc_msgSend_domainIdentifier(*(a1 + 32), v20, v21);
      v25 = objc_msgSend_count(v10, v23, v24);
      v28 = objc_msgSend_count(v11, v26, v27);
      v31 = objc_msgSend_transactionID(*(a1 + 40), v29, v30);
      *buf = 138413314;
      v36 = v34;
      v37 = 2112;
      v38 = v22;
      v39 = 2048;
      v40 = v25;
      v41 = 2048;
      v42 = v28;
      v43 = 2112;
      v44 = v31;
      _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "Finished donating item ID %@ domain %@ to Suggestions with %ld pseudo-contacts %ld pseudo-events transaction ID %@", buf, 0x34u);
    }
  }

  v32 = objc_msgSend_group(*(a1 + 40), v15, v16);
  dispatch_group_leave(v32);

  v33 = *MEMORY[0x1E69E9840];
}

void sub_1B7BBB8C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = (a1 + 32);
  v8 = a2;
  v11 = objc_msgSend_context(v7, v9, v10);
  v14 = objc_msgSend_oldestFullReindexMessageGUID(v11, v12, v13);
  v16 = objc_msgSend_objectForKeyedSubscript_(v8, v15, v14);

  if (v16)
  {
    v19 = objc_msgSend_integerValue(v16, v17, v18);
    v22 = objc_msgSend_clientState(*v6, v20, v21);
    objc_msgSend_setLastIndexedRowID_(v22, v23, v19);
  }

  else
  {
    v24 = IMLogHandleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFA5D4(v6, v5, v24);
    }
  }
}