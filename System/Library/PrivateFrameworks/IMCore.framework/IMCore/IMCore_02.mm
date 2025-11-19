void sub_1A82D5530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A82D5554(uint64_t a1, void *a2, uint64_t a3)
{
  v41 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = v41;
    v9 = objc_msgSend_suggestedActionsList(v6, v7, v8);
    v12 = objc_msgSend_count(v9, v10, v11);

    if (v12)
    {
      v15 = a3 + 1;
      if ((objc_msgSend_supportsSuggestedActionsMenu(v6, v13, v14) & 1) == 0)
      {
        if (v15 >= objc_msgSend_count(*(a1 + 32), v16, v17) || (objc_msgSend_objectAtIndex_(*(a1 + 32), v18, v15), v19 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v20 = objc_opt_isKindOfClass(), v19, (v20 & 1) == 0))
        {
          v21 = [IMSuggestedActionsMessagePartChatItem alloc];
          v24 = objc_msgSend_messageItem(v6, v22, v23);
          v27 = objc_msgSend_suggestedActionsList(v6, v25, v26);
          v29 = objc_msgSend_initWithItem_suggestedActionsList_(v21, v28, v24, v27);

          objc_msgSend_addObject_(*(a1 + 40), v30, v29);
          objc_msgSend_addIndex_(*(a1 + 48), v31, *(*(*(a1 + 56) + 8) + 24) + v15);
          ++*(*(*(a1 + 56) + 8) + 24);
        }
      }

      v32 = [IMRichActionFooterChatItem alloc];
      v35 = objc_msgSend_messageItem(v6, v33, v34);
      v37 = objc_msgSend__initWithItem_(v32, v36, v35);

      objc_msgSend_addObject_(*(a1 + 40), v38, v37);
      objc_msgSend_addIndex_(*(a1 + 48), v39, *(*(*(a1 + 56) + 8) + 24) + v15);
      ++*(*(*(a1 + 56) + 8) + 24);
    }
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass);
}

void sub_1A82D5BA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [IMRichLinkCardMessagePartChatItem alloc];
  v5 = *(a1 + 32);
  v8 = objc_msgSend_selectedRichCardIndex(v5, v6, v7);
  v11 = objc_msgSend_initWithItem_richCards_selectedIndex_(v4, v9, v5, v3, v8);

  objc_msgSend_addObject_(*(a1 + 40), v10, v11);
}

void sub_1A82D64B8(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend__senderHandle(*(a1 + 32), a2, a3);
  v8 = objc_msgSend_isFromMe(*(a1 + 32), v6, v7);
  v10 = objc_msgSend_containsIndex_(*(a1 + 40), v9, a2);
  v11 = [IMMessageRetractionChatItem alloc];
  v13 = objc_msgSend__initWithItem_partIndex_isFailedRetraction_retractionUnsupportedByHandles_sender_isFromMe_(v11, v12, *(a1 + 32), a2, v10, *(a1 + 48), v5, v8);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = *(a1 + 56);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1A82D65F8;
  v17[3] = &unk_1E78118C8;
  v17[4] = &v18;
  v17[5] = a2;
  objc_msgSend_enumerateObjectsUsingBlock_(v14, v15, v17);
  objc_msgSend_insertObject_atIndex_(*(a1 + 64), v16, v13, v19[3]);
  _Block_object_dispose(&v18, 8);
}

void sub_1A82D65E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82D65F8(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_msgSend_index(v10, v5, v6);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_8;
    }

    v7 = objc_msgSend_partIndex(v10, v8, v9);
  }

  if (v7 != 0x7FFFFFFFFFFFFFFFLL && v7 < *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = a3 + 1;
  }

LABEL_8:
}

id sub_1A82D69E4(uint64_t *a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v6 = objc_msgSend_count(v2, v4, v5);
  v8 = objc_msgSend_initWithCapacity_(v3, v7, v6);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v9 = v2;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v37, v41, 16);
  if (v11)
  {
    v14 = v11;
    v15 = 0;
    v16 = *v38;
    v17 = -1;
    v18 = -1;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v38 != v16)
        {
          objc_enumerationMutation(v9);
        }

        v20 = *(*(&v37 + 1) + 8 * i);
        v23 = objc_msgSend_transferGUID(v20, v12, v13);
        if (v23)
        {
          objc_msgSend_addObject_(v8, v21, v23);
        }

        location = objc_msgSend_messagePartRange(v20, v21, v22);
        v26.location = location;
        v26.length = length;
        if (v17 != -1)
        {
          v44.location = v17;
          v44.length = v18;
          v27 = NSUnionRange(v44, v26);
          length = v27.length;
          location = v27.location;
        }

        v17 = location;
        v18 = length;
        v28 = objc_msgSend_index(v20, length, v26.location);
        if (v28 > v15)
        {
          v15 = v28;
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v37, v41, 16);
    }

    while (v14);
  }

  else
  {
    v15 = 0;
    v17 = -1;
    v18 = -1;
  }

  v29 = [IMAggregateAttachmentMessagePartChatItem alloc];
  v31 = objc_msgSend__initWithItem_text_index_messagePartRange_transferGUIDs_chatContext_(v29, v30, a1[4], 0, v15, v17, v18, v8, a1[5]);
  objc_msgSend_setChipListFromText_(v31, v32, a1[6]);
  objc_msgSend_setAggregateAttachmentParts_(v31, v33, v9);

  v34 = *MEMORY[0x1E69E9840];

  return v31;
}

void sub_1A82D6BF8(uint64_t a1, const char *a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_count(*(*(*(a1 + 56) + 8) + 40), a2, a3);
  if (v4 <= objc_msgSend__attachmentStackAggregationThreshold(IMMessagePartChatItem, v5, v6))
  {
    if (objc_msgSend_count(*(*(*(a1 + 56) + 8) + 40), v7, v8) < 2)
    {
      objc_msgSend_addObjectsFromArray_(*(a1 + 32), v12, *(*(*(a1 + 56) + 8) + 40));
      goto LABEL_14;
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = *(*(*(a1 + 56) + 8) + 40);
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v31, v35, 16);
    if (v15)
    {
      v16 = v15;
      v17 = *v32;
      do
      {
        v18 = 0;
        do
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v31 + 1) + 8 * v18);
          v20 = [IMOrganicAttachmentMessagePartChatItem alloc];
          v22 = objc_msgSend__initWithAttachmentMessagePartChatItem_(v20, v21, v19, v31);
          objc_msgSend_addObject_(*(a1 + 32), v23, v22);

          ++v18;
        }

        while (v16 != v18);
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v24, &v31, v35, 16);
      }

      while (v16);
    }

    v10 = objc_msgSend_lastObject(*(a1 + 32), v25, v26);
    objc_msgSend_setChipListFromText_(v10, v27, *(a1 + 40));
  }

  else
  {
    v9 = *(*(*(a1 + 56) + 8) + 40);
    v10 = (*(*(a1 + 48) + 16))();
    objc_msgSend_addObject_(*(a1 + 32), v11, v10);
  }

LABEL_14:
  v28 = *(*(a1 + 56) + 8);
  v29 = *(v28 + 40);
  *(v28 + 40) = 0;

  v30 = *MEMORY[0x1E69E9840];
}

void sub_1A82D6DD4(uint64_t a1, void *a2)
{
  v48 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v48;
    v6 = objc_msgSend_sharedInstance(IMFileTransferCenter, v4, v5);
    v9 = objc_msgSend_transferGUID(v3, v7, v8);
    v11 = objc_msgSend_transferForGUID_(v6, v10, v9);

    LODWORD(v9) = objc_msgSend_existsAtLocalPath(v11, v12, v13);
    v16 = objc_msgSend_commSafetySensitive(v11, v14, v15);
    v19 = 1;
    if (v9 && !v16)
    {
      v20 = objc_msgSend_type(v11, v17, v18);
      IsSupportedAnimatedImage = IMUTTypeIsSupportedAnimatedImage();

      if (IsSupportedAnimatedImage)
      {
        v24 = objc_msgSend_localURL(v11, v22, v23);
        v19 = IMFileURLIsActuallyAnimated();
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) == 0 || (v19)
  {
    (*(*(a1 + 40) + 16))();
    objc_msgSend_addObject_(*(a1 + 32), v46, v48);
    goto LABEL_21;
  }

  v25 = v48;
  v28 = objc_msgSend_sharedInstance(IMFileTransferCenter, v26, v27);
  v31 = objc_msgSend_transferGUID(v25, v29, v30);
  v33 = objc_msgSend_transferForGUID_(v28, v32, v31);

  v36 = objc_msgSend_filename(v33, v34, v35);
  v37 = IMUTITypeForFilename();

  if (objc_msgSend_isFromMomentShare(v33, v38, v39))
  {
    IMUTITypeIsSupportedByPhotos();
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((IMUTITypeIsSupportedByPhotos() & 1) == 0 && (isKindOfClass & 1) == 0)
    {
      v45 = (a1 + 32);
      goto LABEL_19;
    }
  }

  v41 = *(*(*(a1 + 48) + 8) + 40);
  if (!v41)
  {
    v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v43 = *(*(a1 + 48) + 8);
    v44 = *(v43 + 40);
    *(v43 + 40) = v42;

    v45 = (*(*(a1 + 48) + 8) + 40);
LABEL_19:
    v41 = *v45;
  }

  objc_msgSend_addObject_(v41, v40, v25);

LABEL_21:
}

void *sub_1A82D72BC()
{
  result = MEMORY[0x1AC56C560]("UTTypeConformsTo", @"CoreServices");
  off_1EB2EA200 = result;
  return result;
}

void sub_1A82D72EC()
{
  v0 = MEMORY[0x1AC56C560]("kUTTypeImage", @"CoreServices");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EB2EA218, v1);
}

id sub_1A82D76B8(uint64_t a1, void *a2, void *a3, char a4, void *a5)
{
  v43 = a5;
  v42 = a3;
  v8 = a2;
  v11 = objc_msgSend_account(v8, v9, v10);
  v12 = _IMBestAccountForIMItem(v8, 0, v11, 0, 0);

  v44 = v12;
  IMMessageFromIMItem = _CreateIMMessageFromIMItem(v8, v12, 1);

  v14 = [IMMessage alloc];
  v17 = objc_msgSend_sender(IMMessageFromIMItem, v15, v16);
  v22 = objc_msgSend_time(IMMessageFromIMItem, v18, v19);
  v45 = a4;
  if (a4)
  {
    v46 = 0;
  }

  else
  {
    v46 = objc_msgSend_messageSubject(IMMessageFromIMItem, v20, v21);
  }

  v23 = objc_msgSend_flags(IMMessageFromIMItem, v20, v21);
  v26 = objc_msgSend_error(IMMessageFromIMItem, v24, v25);
  v29 = objc_msgSend_guid(IMMessageFromIMItem, v27, v28);
  v32 = objc_msgSend_subject(IMMessageFromIMItem, v30, v31);
  v35 = objc_msgSend_threadIdentifier(IMMessageFromIMItem, v33, v34);
  v37 = objc_msgSend_initWithSender_time_text_messageSubject_fileTransferGUIDs_flags_error_guid_subject_threadIdentifier_(v14, v36, v17, v22, v42, v46, v43, v23, v26, v29, v32, v35);

  if ((v45 & 1) == 0)
  {
  }

  v40 = objc_msgSend__imMessageItem(v37, v38, v39);

  return v40;
}

void sub_1A82D7DF8(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69A7FA0];
  v4 = a2;
  v5 = [v3 alloc];
  v11 = objc_msgSend_initWithDictionary_(v5, v6, v4);

  v9 = objc_msgSend_suggestedActions(v11, v7, v8);
  objc_msgSend_setSuggestedActionsList_(*(a1 + 32), v10, v9);
}

void sub_1A82D86C4()
{
  if (IMIsRunningInUnitTesting())
  {
    byte_1EB2EA220 = 1;
  }

  else
  {
    v0 = MEMORY[0x1AC56C550](@"AFPreferences", @"AssistantServices");
    v5 = objc_msgSend_sharedPreferences(v0, v1, v2);
    byte_1EB2EA220 = objc_msgSend_assistantIsEnabled(v5, v3, v4);
  }
}

id IMCreateThreadIdentifierForMessagePartChatItem(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_message(v1, v2, v3);
  v7 = objc_msgSend_guid(v4, v5, v6);

  v10 = objc_msgSend_index(v1, v8, v9);
  v13 = objc_msgSend_originalMessagePartRange(v1, v11, v12);
  v15 = v14;

  v16 = IMCreateThreadIdentifier(v7, v10, v13, v15);

  return v16;
}

id IMCreateThreadIdentifier(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x1E696AEC0];
  v8 = a1;
  v9 = [v7 alloc];
  v11 = objc_msgSend_initWithFormat_(v9, v10, @"r:%lu:%lu:%lu:%@", a2, a3, a4, v8);

  return v11;
}

id IMCreateThreadIdentifierForRetractedMessagePartChatItem(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_messageGUID(v1, v2, v3);
  v7 = objc_msgSend_partIndex(v1, v5, v6);

  v8 = IMCreateThreadIdentifier(v4, v7, 0x7FFFFFFFFFFFFFFFLL, 0);

  return v8;
}

uint64_t sub_1A82D91A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = *(*(a1 + 40) + 8);
  result = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a5 = 1;
  }

  return result;
}

uint64_t sub_1A82D9218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = *(*(a1 + 40) + 8);
  result = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a5 = 1;
  }

  return result;
}

id sub_1A82E1994(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v5, v6);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1A82E1A6C;
  v14[3] = &unk_1E7811A20;
  v15 = v4;
  v8 = v7;
  v16 = v8;
  v9 = v4;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(a1, v10, 2, v14);
  v11 = v16;
  v12 = v8;

  return v8;
}

void sub_1A82E1A6C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_msgSend_message(v12, v7, v8);
    v10 = *(a1 + 32);

    if (v9 == v10)
    {
      objc_msgSend_addIndex_(*(a1 + 40), v11, a3);
    }
  }

  else if (objc_msgSend_count(*(a1 + 40), v7, v8))
  {
    *a4 = 1;
  }
}

id sub_1A82E1B20(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v5, v6);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1A82E1BF8;
  v14[3] = &unk_1E7811A20;
  v15 = v4;
  v8 = v7;
  v16 = v8;
  v9 = v4;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(a1, v10, 2, v14);
  v11 = v16;
  v12 = v8;

  return v8;
}

void sub_1A82E1BF8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v9 = objc_msgSend__item(v14, v7, v8);
  v10 = *(a1 + 32);

  if (v9 == v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_addIndex_(*(a1 + 40), v13, a3);
    }
  }

  else if (objc_msgSend_count(*(a1 + 40), v11, v12))
  {
    *a4 = 1;
  }
}

void sub_1A82E3AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82E3B08(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if (IMMessagePartDescriptionGetMessagePartIndex() == *(a1 + 40))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *a4 = 1;
  }
}

uint64_t sub_1A82E4A6C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  if (objc_msgSend_checkResourceIsReachableAndReturnError_(v9, v10, a5) && !objc_msgSend_removeItemAtURL_error_(a1, v11, v9, a5))
  {
    v16 = 0;
  }

  else
  {
    v14 = MEMORY[0x1AC56C700](v8);
    if (v14)
    {
      objc_msgSend_startAccessingSecurityScopedResource(v8, v12, v13);
      v16 = objc_msgSend_copyItemAtURL_toURL_error_(a1, v15, v8, v9, a5);
      objc_msgSend_stopAccessingSecurityScopedResource(v8, v17, v18);
    }

    else
    {
      v16 = objc_msgSend_copyItemAtURL_toURL_error_(a1, v12, v8, v9, a5);
    }
  }

  return v16;
}

void sub_1A82E544C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A82E5344);
  }

  _Unwind_Resume(a1);
}

void sub_1A82E6C80(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "clearing in memory salt cache due to dispatch notification", v10, 2u);
    }
  }

  v5 = objc_msgSend_model(*(a1 + 32), v2, v3);
  v8 = objc_msgSend_dictionary(MEMORY[0x1E695DF20], v6, v7);
  objc_msgSend_setPluginIDToMetadataCache_(v5, v9, v8);
}

uint64_t sub_1A82E89E8(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = objc_msgSend_extension(v15, v15, v5);
    v9 = v6;
    if (v6)
    {
      v10 = objc_msgSend_extensionPointIdentifier(v6, v7, v8);
      isEqualToString = objc_msgSend_isEqualToString_(v10, v11, *(a1 + 32));

      if ((isEqualToString & 1) == 0)
      {
        objc_msgSend_addObject_(*(a1 + 40), v13, v9);
      }
    }
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass);
}

void sub_1A82E9008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A82E902C(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_msgSend_stopTimingForKey_(*(a1 + 32), v7, *(a1 + 40));
  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 48);
        *buf = 138412546;
        v25 = v9;
        v26 = 2112;
        v27 = v6;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "IMBalloonPluginManager encountered error discovering extensions (%@): %@", buf, 0x16u);
      }
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v11 = objc_opt_class();
    v13 = objc_msgSend_precacheBalloonAppExtensionsForExtensions_(v11, v12, v5);

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1A82E9224;
    v17[3] = &unk_1E7811BB8;
    v18 = *(a1 + 48);
    v19 = v5;
    v20 = *(a1 + 32);
    objc_copyWeak(&v23, (a1 + 64));
    v14 = *(a1 + 56);
    v21 = v13;
    v22 = v14;
    v15 = v13;
    dispatch_async(MEMORY[0x1E69E96A0], v17);

    objc_destroyWeak(&v23);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1A82E9224(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = objc_msgSend_count(*(a1 + 40), v4, v5);
      *buf = 138412546;
      v21 = v6;
      v22 = 2048;
      v23 = v7;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Matching extensions (%@): %lu", buf, 0x16u);
    }
  }

  v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v2, @"loadAppExtensionForProxies_%@", *(a1 + 32));
  objc_msgSend_startTimingForKey_(*(a1 + 48), v9, v8);
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  objc_msgSend__updatePluginsForExtensions_extensionPoint_precachedBalloonAppExtensions_(WeakRetained, v11, *(a1 + 40), *(a1 + 32), *(a1 + 56));

  objc_msgSend_stopTimingForKey_(*(a1 + 48), v12, v8);
  v15 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v13, v14);
  objc_msgSend_postNotificationName_object_(v15, v16, @"__kIMBalloonPluginExtensionsLoaded", *(a1 + 64));

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 48);
      *buf = 138412290;
      v21 = v18;
      _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "3rd party app discovery time: %@", buf, 0xCu);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void sub_1A82E9B70(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = objc_msgSend_bundleIdentifier(v3, v4, v5);
  if (!v7)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_24;
    }

    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v15 = objc_msgSend_bundlePath(v3, v13, v14);
      v48 = 138412290;
      v49 = v15;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Skipping bundle with missing identifier at path:%@", &v48, 0xCu);
    }

    goto LABEL_6;
  }

  if (objc_msgSend__shouldSkipUpdatingPluginBundleIdentifier_(*(a1 + 32), v6, v7))
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = objc_msgSend_bundlePath(v3, v10, v11);
        v48 = 138412546;
        v49 = v7;
        v50 = 2112;
        v51 = v12;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Skipping bundle with identifier:%@ at path:%@", &v48, 0x16u);
      }

LABEL_6:
    }
  }

  else
  {
    objc_msgSend_addObject_(*(*(*(a1 + 56) + 8) + 40), v8, v7);
    v17 = objc_msgSend_containsObject_(*(*(*(a1 + 64) + 8) + 40), v16, v7);
    if (objc_msgSend_containsObject_(*(a1 + 40), v18, v7) && !v17)
    {
      goto LABEL_18;
    }

    if (!*(*(*(a1 + 72) + 8) + 40))
    {
      v21 = *(a1 + 32);
      v22 = objc_opt_class();
      v25 = objc_msgSend_balloonProviderBundlePathURL(v22, v23, v24);
      v26 = *(*(a1 + 72) + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;

      v28 = objc_alloc(MEMORY[0x1E696AAE8]);
      v30 = objc_msgSend_initWithURL_(v28, v29, *(*(*(a1 + 72) + 8) + 40));
      v31 = *(*(a1 + 80) + 8);
      v32 = *(v31 + 40);
      *(v31 + 40) = v30;
    }

    v33 = objc_msgSend__insertPluginForAppBundle_balloonProviderBundle_(*(a1 + 32), v19, v3, *(*(*(a1 + 80) + 8) + 40));
    if (v17)
    {
      objc_msgSend_removeObject_(*(*(*(a1 + 64) + 8) + 40), v19, v7);
    }

    if (!v33)
    {
LABEL_18:
      v34 = objc_msgSend_model(*(a1 + 32), v19, v20);
      v37 = objc_msgSend_pluginsMap(v34, v35, v36);
      v38 = *(a1 + 48);
      v41 = objc_msgSend_bundleIdentifier(v3, v39, v40);
      v43 = objc_msgSend_objectForKeyedSubscript_(v38, v42, v41);
      v33 = objc_msgSend_pluginForIdentifier_(v37, v44, v43);
    }

    if (objc_msgSend_isEnabled(v33, v19, v20))
    {
      ++*(*(*(a1 + 88) + 8) + 24);
    }

    if (objc_msgSend_isStickerPackOnly(v33, v45, v46))
    {
      ++*(*(*(a1 + 96) + 8) + 24);
    }
  }

LABEL_24:

  v47 = *MEMORY[0x1E69E9840];
}

void sub_1A82E9E94(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A82E9E54);
  }

  _Unwind_Resume(a1);
}

void sub_1A82EA5D4(uint64_t a1, void *a2)
{
  v42 = a2;
  v5 = objc_msgSend_identifier(v42, v3, v4);
  objc_msgSend_addObject_(*(*(*(a1 + 64) + 8) + 40), v6, v5);
  v8 = objc_msgSend_containsObject_(*(*(*(a1 + 72) + 8) + 40), v7, v5);
  if (objc_msgSend_containsObject_(*(a1 + 32), v9, v5))
  {
    v12 = v8 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    goto LABEL_12;
  }

  if (!*(*(*(a1 + 80) + 8) + 40))
  {
    v13 = objc_alloc_init(MEMORY[0x1E69A6170]);
    v14 = *(*(a1 + 80) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  if (!*(*(*(a1 + 88) + 8) + 40))
  {
    v16 = *(a1 + 40);
    v17 = objc_opt_class();
    v20 = objc_msgSend_balloonProviderBundlePathURL(v17, v18, v19);
    v21 = *(*(a1 + 88) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

    v23 = objc_alloc(MEMORY[0x1E696AAE8]);
    v25 = objc_msgSend_initWithURL_(v23, v24, *(*(*(a1 + 88) + 8) + 40));
    v26 = *(*(a1 + 96) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;
  }

  v28 = objc_msgSend__insertPluginForExtension_balloonProviderBundle_precachedBalloonAppExtensions_timingCollection_(*(a1 + 40), v10, v42, *(*(*(a1 + 96) + 8) + 40), *(a1 + 48), *(*(*(a1 + 80) + 8) + 40));
  if (v8)
  {
    objc_msgSend_removeObject_(*(*(*(a1 + 72) + 8) + 40), v10, v5);
  }

  if (!v28)
  {
LABEL_12:
    v29 = objc_msgSend_model(*(a1 + 40), v10, v11);
    v32 = objc_msgSend_pluginsMap(v29, v30, v31);
    v33 = *(a1 + 56);
    v36 = objc_msgSend_identifier(v42, v34, v35);
    v38 = objc_msgSend_objectForKeyedSubscript_(v33, v37, v36);
    v28 = objc_msgSend_pluginForIdentifier_(v32, v39, v38);
  }

  if (objc_msgSend_isEnabled(v28, v10, v11))
  {
    ++*(*(*(a1 + 104) + 8) + 24);
  }

  if (objc_msgSend_isStickerPackOnly(v28, v40, v41))
  {
    ++*(*(*(a1 + 112) + 8) + 24);
  }
}

void sub_1A82EB400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82EB418(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = objc_msgSend_objectForKey_(*(a1 + 32), v4, v3);
  if (objc_msgSend_length(v5, v6, v7))
  {
    v10 = objc_msgSend_model(*(a1 + 40), v8, v9);
    v13 = objc_msgSend_pluginsMap(v10, v11, v12);
    v15 = objc_msgSend_pluginForIdentifier_(v13, v14, v5);

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_addObject_(*(*(*(a1 + 48) + 8) + 40), v16, v5);
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v19 = 138412290;
          v20 = v15;
          _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Removing plugin: %@", &v19, 0xCu);
        }
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A82EC06C(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 138412546;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Couldn't enumerate %@: %@", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return 1;
}

void sub_1A82ED2EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = IMLogHandleForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E0070(v3, v5, v6);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Presenting satellite connection banner", v10, 2u);
    }

    v5 = objc_msgSend_messagesAppDomain(MEMORY[0x1E695E000], v7, v8);
    objc_msgSend_setInteger_forKey_(v5, v9, *(a1 + 32) + 1, *MEMORY[0x1E69A7D20]);
  }
}

uint64_t sub_1A82ED978()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AC80]);
  qword_1EB2EA250 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id IMSPISimulateMessagesWithConfiguration(void *a1, void *a2, void *a3)
{
  v4 = a1;
  v5 = a2;
  v8 = objc_msgSend_sharedController(IMDaemonController, v6, v7);
  v10 = objc_msgSend_multiplexedConnectionWithLabel_capabilities_context_(v8, v9, @"IMCoreSPI_HasActiveAlias", 8708, 0);

  objc_msgSend_waitForSetup(v10, v11, v12);
  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69A8298]);
  }

  v15 = MEMORY[0x1E695DF70];
  v16 = objc_msgSend_count(v4, v13, v14);
  v20 = objc_msgSend_arrayWithCapacity_(v15, v17, v16);
  v21 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = sub_1A8259B60;
  v55 = sub_1A825AEDC;
  v56 = 0;
  while (v21 < objc_msgSend_count(v4, v18, v19))
  {
    v24 = objc_autoreleasePoolPush();
    v27 = objc_msgSend_clientBatchSize(v5, v25, v26);
    v33 = v27 >= objc_msgSend_count(v4, v28, v29) - v21 ? objc_msgSend_count(v4, v30, v31) - v21 : objc_msgSend_clientBatchSize(v5, v30, v31);
    v34 = objc_msgSend_subarrayWithRange_(v4, v32, v21, v33);
    v36 = objc_msgSend_arrayByApplyingSelector_(v34, v35, sel__createSimulatedMessage);
    v39 = objc_msgSend_synchronousRemoteProxy(v10, v37, v38);
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = sub_1A82EE8E8;
    v47[3] = &unk_1E7811D08;
    v50 = &v51;
    v48 = v20;
    v40 = v36;
    v49 = v40;
    objc_msgSend_simulateMessages_configuration_completion_(v39, v41, v40, v5, v47);

    v42 = v52[5];
    objc_autoreleasePoolPop(v24);
    if (v42)
    {
      break;
    }

    v21 += objc_msgSend_clientBatchSize(v5, v22, v23);
  }

  objc_msgSend_invalidate(v10, v22, v23);
  if (a3)
  {
    v43 = v52[5];
    if (v43)
    {
      *a3 = v43;
    }
  }

  v44 = v20;
  _Block_object_dispose(&v51, 8);

  return v44;
}

void sub_1A82EE8C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82EE8E8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  v5 = *(a1 + 32);
  v8 = objc_msgSend_arrayByApplyingSelector_(*(a1 + 40), v6, sel_guid);
  objc_msgSend_addObjectsFromArray_(v5, v7, v8);
}

unint64_t FZPersonStatusFromIMPersonStatus(unint64_t result, const char *a2)
{
  if (result >= 6)
  {
    objc_msgSend_raise_format_(MEMORY[0x1E695DF30], a2, *MEMORY[0x1E695D940], @"IMServiceImpl: Unknown IMPersonStatus %d", result);
    return 0;
  }

  return result;
}

uint64_t IMPersonStatusFromFZPersonStatus(uint64_t result, const char *a2)
{
  if (result < 6)
  {
    return result;
  }

  objc_msgSend_raise_format_(MEMORY[0x1E695DF30], a2, *MEMORY[0x1E695D940], @"IMServiceImpl: Unknown FZPersonStatus %d", result);
  return 0;
}

void sub_1A82EEA8C(uint64_t a1, const char *a2)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695C350];
  v7[0] = *MEMORY[0x1E695C348];
  v7[1] = v2;
  v3 = *MEMORY[0x1E695C358];
  v7[2] = *MEMORY[0x1E695C340];
  v7[3] = v3;
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], a2, v7, 4);
  v5 = qword_1EB2E90D0;
  qword_1EB2E90D0 = v4;

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1A82F16D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A82F1710(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && objc_msgSend_length(v3, v4, v5))
  {
    objc_msgSend_setSuggestedName_(WeakRetained, v7, v3);
    v8 = *(a1 + 32);
    v20 = *MEMORY[0x1E69A6868];
    v21[0] = v8;
    v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, v21, &v20, 1);
    v13 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v11, v12);
    objc_msgSend_postNotificationName_object_userInfo_(v13, v14, *MEMORY[0x1E69A6870], *(a1 + 40), v10);

    v17 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v15, v16);
    objc_msgSend_postNotificationName_object_userInfo_(v17, v18, *MEMORY[0x1E69A6838], *(a1 + 40), v10);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void sub_1A82F1B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82F1B8C(uint64_t a1, void *a2)
{
  v15 = a2;
  v4 = objc_msgSend_rangeOfString_(v15, v3, @" ");
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v15;
    v7 = 0;
  }

  else
  {
    v8 = v4;
    v6 = objc_msgSend_substringToIndex_(v15, v5, v4);
    v7 = objc_msgSend_substringFromIndex_(v15, v9, v8 + 1);
  }

  v10 = objc_alloc(MEMORY[0x1E69A8190]);
  Name_lastName_avatar_pronouns = objc_msgSend_initWithFirstName_lastName_avatar_pronouns_(v10, v11, v6, v7, 0, 0);
  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = Name_lastName_avatar_pronouns;

  dispatch_group_leave(*(a1 + 32));
}

void sub_1A82F34FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  objc_msgSend_setCachedDisplayNameWithAbbreviation_(WeakRetained, v3, 0);

  v4 = objc_loadWeakRetained((a1 + 48));
  isBusiness = objc_msgSend_isBusiness(v4, v5, v6);

  v8 = objc_loadWeakRetained((a1 + 48));
  v11 = v8;
  if (isBusiness)
  {
    v12 = MEMORY[0x1E69A7F28];
    v13 = objc_msgSend_ID(*(a1 + 32), v9, v10);
    v15 = objc_msgSend_placeholderNameForBrandURI_(v12, v14, v13);
    objc_msgSend_setCachedName_(v11, v16, v15);
  }

  else
  {
    objc_msgSend_setCachedName_(v8, v9, 0);
  }

  v21 = objc_msgSend_sharedInstance(IMHandleRegistrar, v17, v18);
  v19 = objc_loadWeakRetained((a1 + 48));
  objc_msgSend_addHandleToCNIDMap_CNContact_(v21, v20, v19, *(a1 + 40));
}

void sub_1A82F6684(uint64_t a1, int a2, int a3, int a4, void *a5)
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = IMHandleLogHandle();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E0174(v9, v11);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_msgSend_ID(*(a1 + 32), v12, v13);
    v15 = *(a1 + 40);
    v17 = 138413314;
    v18 = v14;
    v19 = 2112;
    v20 = v15;
    v21 = 1024;
    v22 = a2;
    v23 = 1024;
    v24 = a3;
    v25 = 1024;
    v26 = a4;
    _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEFAULT, "Completed request to share off grid mode with handle %@ from handle %@. didAttemptInvitation: %{BOOL}d wasAlreadyInvited: %{BOOL}d didShareHandle: %{BOOL}d", &v17, 0x28u);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1A82F6B38(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, void *a6)
{
  v31 = *MEMORY[0x1E69E9840];
  v11 = a6;
  v12 = IMHandleLogHandle();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E01EC(v11, v13);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_msgSend_ID(*(a1 + 32), v14, v15);
    v17 = *(a1 + 40);
    v19 = 138413570;
    v20 = v16;
    v21 = 2112;
    v22 = v17;
    v23 = 2048;
    v24 = a2;
    v25 = 2048;
    v26 = a3;
    v27 = 2048;
    v28 = a4;
    v29 = 2048;
    v30 = a5;
    _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEFAULT, "Completed request to share availbaility with handle %@ from handle %@. didAttemptInvitation: %ld wasAlreadyInvited: %ld canShareHandle: %ld didShareHandle: %ld", &v19, 0x3Eu);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1A82F85B8(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v8)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 32);
        v15 = 138412290;
        v16 = v11;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Error getting brand for business with brandURI: %@", &v15, 0xCu);
      }
    }
  }

  else
  {
    if (v8)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = *(a1 + 32);
        v15 = 138412290;
        v16 = v13;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_DEBUG, "Successfully fetched business info for business with brandURI: %@", &v15, 0xCu);
      }
    }

    objc_msgSend__fetchedBrand_withBrandURI_simID_(WeakRetained, v9, v5, *(a1 + 32), *(a1 + 40));
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1A82F8868(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v4 = objc_msgSend_sharedInstance(IMChorosMonitor, v2, v3);
    v7 = objc_msgSend_ID(v11, v5, v6);
    v9 = objc_msgSend_roadsideBusinessIDForChatIdentifier_(v4, v8, v7);

    if (v9)
    {
      objc_msgSend__fetchBrandInfoForBrandWithURI_forType_simID_(v11, v10, v9, 1, 0);
    }

    WeakRetained = v11;
  }
}

void sub_1A82F8C80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak(v1);
  objc_destroyWeak((v3 - 136));
  _Unwind_Resume(a1);
}

void sub_1A82F8CF4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A82F8DE0;
  v9[3] = &unk_1E7811ED0;
  objc_copyWeak(&v13, (a1 + 40));
  v10 = v6;
  v11 = *(a1 + 32);
  v12 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(&v13);
}

void sub_1A82F8DE0(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (*(a1 + 32))
  {
    v5 = objc_msgSend_sharedRegistry(IMChatRegistry, v2, v3);
    v8 = objc_msgSend___im_stripSip(*(a1 + 40), v6, v7);
    v10 = objc_msgSend_brandLogoDataFromChatIdentifier_(v5, v9, v8);

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v15 = objc_msgSend_length(v10, v13, v14);
        v17 = *(a1 + 32);
        v16 = *(a1 + 40);
        v30 = 134218498;
        v31 = v15;
        v32 = 2112;
        v33 = v16;
        v34 = 2112;
        v35 = v17;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_DEBUG, "ChatBot Logo - Square logo data from cache: %lu for %@. We failed to get it from business with error: %@", &v30, 0x20u);
      }
    }

    if (v10)
    {
      objc_msgSend_setBrandSquareLogoImageData_(WeakRetained, v11, v10);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = *(a1 + 40);
        v30 = 138412290;
        v31 = v20;
        _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_DEBUG, "ChatBot Logo - Successfully fetched logo image data for brandURI: %@", &v30, 0xCu);
      }
    }

    objc_msgSend_setBrandSquareLogoImageData_(WeakRetained, v18, *(a1 + 48));
    v10 = objc_msgSend_sharedRegistry(IMChatRegistry, v21, v22);
    v23 = *(a1 + 48);
    v26 = objc_msgSend___im_stripSip(*(a1 + 40), v24, v25);
    objc_msgSend_updateBrandLogo_transferGuid_chatIdentifier_(v10, v27, v23, 0, v26);
  }

  objc_msgSend__postOnScreenChangedNotificationForBrandProperty_(WeakRetained, v28, *MEMORY[0x1E69A6848]);
  v29 = *MEMORY[0x1E69E9840];
}

void sub_1A82F9030(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A82F911C;
  v9[3] = &unk_1E7811ED0;
  objc_copyWeak(&v13, (a1 + 40));
  v10 = v6;
  v11 = *(a1 + 32);
  v12 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(&v13);
}

void sub_1A82F911C(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (*(a1 + 32))
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 40);
        v10 = 138412290;
        v11 = v5;
        _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Error getting square logo data for business with brandURI: %@", &v10, 0xCu);
      }
    }
  }

  else
  {
    v6 = IMHandleLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_DEFAULT, "Successfully fetched square logo image data for business with brandURI: %@", &v10, 0xCu);
    }

    objc_msgSend_setBrandSquareLogoImageData_(WeakRetained, v8, *(a1 + 48));
  }

  objc_msgSend__postOnScreenChangedNotificationForBrandProperty_(WeakRetained, v3, *MEMORY[0x1E69A6848]);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1A82F9284(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A82F9370;
  v9[3] = &unk_1E7811ED0;
  objc_copyWeak(&v13, (a1 + 40));
  v10 = v6;
  v11 = *(a1 + 32);
  v12 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(&v13);
}

void sub_1A82F9370(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (*(a1 + 32))
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 40);
        v10 = 138412290;
        v11 = v5;
        _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Error getting wide logo image data for business with brandURI: %@", &v10, 0xCu);
      }
    }
  }

  else
  {
    v6 = IMHandleLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_DEFAULT, "Successfully fetched wide logo image data for business with brandURI: %@", &v10, 0xCu);
    }

    objc_msgSend_setBrandWideLogoImageData_(WeakRetained, v8, *(a1 + 48));
  }

  objc_msgSend__postOnScreenChangedNotificationForBrandProperty_(WeakRetained, v3, *MEMORY[0x1E69A6850]);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1A82F96D0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A82F95C8);
  }

  _Unwind_Resume(a1);
}

void sub_1A82FA9C4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E696ABC0];
  v4 = a2;
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v5, @"com.apple.Messages.IMDaemonQueryErrorDomain", 1, 0);
  objc_msgSend_failQuery_error_(v2, v6, v4, v7);
}

void sub_1A82FC590(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A82FC550);
  }

  objc_sync_exit(v2);
  _Unwind_Resume(exc_buf);
}

void sub_1A82FE26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82FE28C(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = MEMORY[0x1E696AD98];
    v7 = objc_msgSend_count(*(*(*(a1 + 48) + 8) + 40), v3, v4);
    v9 = objc_msgSend_numberWithUnsignedInteger_(v6, v8, v7);
    v11 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v10, *(a1 + 56));
    v13 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v12, *(a1 + 57));
    v32 = 136316162;
    v33 = "[IMChatItemFilterController insertHistoricalMessages:queryID:hasMessagesBefore:hasMessagesAfter:isReplacingItems:]_block_invoke";
    v34 = 2112;
    v35 = v5;
    v36 = 2112;
    v37 = v9;
    v38 = 2112;
    v39 = v11;
    v40 = 2112;
    v41 = v13;
    _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "%s Updating/acting on queryID: %@  insertHistoricalMessages: %@, hasMessagesBefore: %@ hasMessagesAfter: %@", &v32, 0x34u);
  }

  if (*(a1 + 58) == 1)
  {
    objc_msgSend__removeAllItems(*(a1 + 40), v14, v15);
  }

  v16 = objc_msgSend_itemsToPrepend(*(a1 + 40), v14, v15);
  if (objc_msgSend_count(v16, v17, v18))
  {
    v21 = *(*(a1 + 48) + 8);
    if (*(v21 + 40))
    {
      v22 = objc_msgSend_mutableCopy(v16, v19, v20);
      objc_msgSend_addObjectsFromArray_(v22, v23, *(*(*(a1 + 48) + 8) + 40));
      v24 = *(*(a1 + 48) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v22;
    }

    else
    {
      v26 = v16;
      v25 = *(v21 + 40);
      *(v21 + 40) = v26;
    }
  }

  v27 = objc_msgSend__appendArchivedItemsToItemsArray_(*(a1 + 40), v19, *(*(*(a1 + 48) + 8) + 40));
  v28 = *(*(a1 + 48) + 8);
  v29 = *(v28 + 40);
  *(v28 + 40) = v27;

  objc_msgSend__replaceAndSortItemsWithUnsortedItems_(*(a1 + 40), v30, *(*(*(a1 + 48) + 8) + 40));
  v31 = *MEMORY[0x1E69E9840];
}

id sub_1A82FFDAC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_itemMatchesFilter_(*(a1 + 32), v4, v3))
  {
    v7 = *(a1 + 40);
    v8 = objc_msgSend_guid(v3, v5, v6);
    objc_msgSend_addObject_(v7, v9, v8);

    v10 = v3;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_1A83000CC()
{
  if (IMIsRunningInMessagesUIProcess())
  {
    v0 = objc_alloc_init(IMPhotoLibraryPersistenceManager);
    qword_1ED767860 = v0;

    MEMORY[0x1EEE66BB8](v0);
  }

  else if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *v2 = 0;
      _os_log_impl(&dword_1A823F000, v1, OS_LOG_TYPE_INFO, "Not allowing IMPhotoLibraryPersistenceManager to be created.", v2, 2u);
    }
  }
}

void sub_1A83002D4()
{
  v2 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_DEFAULT, 0);
  v0 = dispatch_queue_create("com.apple.messages.IMPhotoLibraryPersistenceManager", v2);
  v1 = qword_1EB2E9170;
  qword_1EB2E9170 = v0;
}

void sub_1A8300384()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v0 = dispatch_queue_create("com.apple.messages.IMPhotoLibraryPersistenceManagerInternalQueue", v2);
  v1 = qword_1EB2E9120;
  qword_1EB2E9120 = v0;
}

void sub_1A83005FC(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v6 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v4, v5);
  isLQMHQEnabled = objc_msgSend_isLQMHQEnabled(v6, v7, v8);

  if (isLQMHQEnabled)
  {
    v12 = objc_msgSend_sharedInstance(IMFileTransferCenter, v10, v11);
    v14 = objc_msgSend_transferForGUID_(v12, v13, v3);

    v17 = objc_msgSend_userInfo(v14, v15, v16);
    v19 = objc_msgSend_objectForKey_(v17, v18, @"isHQTransfer");
    v22 = objc_msgSend_stringValue(v19, v20, v21);
    isEqualToString = objc_msgSend_isEqualToString_(v22, v23, @"YES");
  }

  else
  {
    isEqualToString = 0;
  }

  v25 = v3;
  v28 = v25;
  if (IMFileTransferGUIDIsTemporary())
  {
    objc_msgSend_messageParts(*(a1 + 32), v26, v27);
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v29 = v55 = 0u;
    v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v52, v56, 16);
    if (v31)
    {
      v34 = v31;
      v35 = *v53;
      while (2)
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v53 != v35)
          {
            objc_enumerationMutation(v29);
          }

          v37 = *(*(&v52 + 1) + 8 * i);
          v38 = objc_msgSend_transferGUID(v37, v32, v33, v52);
          if (objc_msgSend_isEqualToString_(v38, v39, v25))
          {
            objc_msgSend_messagePartIndex(v37, v40, v41);

            goto LABEL_15;
          }
        }

        v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v32, &v52, v56, 16);
        if (v34)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    v44 = objc_msgSend_guid(*(a1 + 32), v42, v43);
    v28 = IMFileTransferGUIDForAttachmentMessagePartAtMessageGUIDAndMessagePartIndex();
  }

  v45 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v26, v27, v52);
  v48 = objc_msgSend_isLQMHQEnabled(v45, v46, v47);

  if ((v48 & isEqualToString) == 1)
  {
    v50 = objc_msgSend_stringByAppendingString_(v28, v49, @"hq");

    v28 = v50;
  }

  objc_msgSend_addObject_(*(a1 + 40), v49, v28);

  v51 = *MEMORY[0x1E69E9840];
}

void sub_1A8301008(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1A8300F60);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A83013E4(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = objc_msgSend_count(*(a1 + 32), v8, v9);
      v12 = 134217984;
      v13 = v10;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Finished fetching identifiers that weren't cached. Notifying listeners. identifiersNeedingFetch count: %lu", &v12, 0xCu);
    }
  }

  objc_msgSend__notifyListeners(*(a1 + 40), v5, v6);

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1A83019D8(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A8301794);
  }

  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(exc_buf);
}

id sub_1A8301A70(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v3 = qword_1EB2E90E8;
  v10 = qword_1EB2E90E8;
  if (!qword_1EB2E90E8)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1A8302F90;
    v6[3] = &unk_1E7811770;
    v6[4] = &v7;
    sub_1A8302F90(v6, a2, a3);
    v3 = v8[3];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_1A8301B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8301B50(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  if (*(a1 + 72) == 1)
  {
    v3 = (a1 + 32);
    v2 = *(a1 + 32);
    v4 = objc_opt_class();
    v7 = objc_msgSend__photoLibraryInternalQueue(v4, v5, v6);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A8301E94;
    block[3] = &unk_1E780FCB0;
    block[4] = *v3;
    dispatch_sync(v7, block);
  }

  v49 = *(*(a1 + 32) + 64);
  v48 = objc_msgSend_librarySpecificFetchOptions(v49, v8, v9);
  objc_msgSend_setIncludeTrashedAssets_(v48, v10, 0);
  objc_msgSend_setIncludeHiddenAssets_(v48, v11, 1);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = *(a1 + 40);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v50, v56, 16);
  v16 = v13;
  if (v13)
  {
    v17 = *v51;
    do
    {
      v18 = 0;
      do
      {
        if (*v51 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v50 + 1) + 8 * v18);
        if (v49)
        {
          v20 = sub_1A8301A70(v13, v14, v15);
          v55 = v19;
          v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, &v55, 1);
          v24 = objc_msgSend_fetchAssetsWithSyndicationIdentifiers_options_includeRejected_(v20, v23, v22, v48, 1);

          v29 = objc_msgSend_count(v24, v25, v26);
          if (v29)
          {
            ++*(*(*(a1 + 56) + 8) + 24);
          }

          v30 = objc_msgSend_firstObject(v24, v27, v28);
          v33 = objc_msgSend_uuid(v30, v31, v32);

          v34 = *(*(a1 + 64) + 8);
          v36 = *(v34 + 40);
          v35 = (v34 + 40);
          if (!v36 && v33)
          {
            objc_storeStrong(v35, v33);
          }

          v37 = v29 != 0;
          v38 = *(a1 + 32);
          objc_sync_enter(v38);
          v39 = *(*(a1 + 32) + 16);
          v41 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v40, v37);
          objc_msgSend_setObject_forKey_(v39, v42, v41, v19);

          objc_msgSend_setObject_forKey_(*(*(a1 + 32) + 24), v43, v24, v19);
          objc_msgSend_removeObject_(*(*(a1 + 32) + 48), v44, v19);
          if (v33)
          {
            objc_msgSend_setObject_forKey_(*(*(a1 + 32) + 32), v45, v33, v19);
          }

          objc_sync_exit(v38);
        }

        else
        {
          v13 = objc_msgSend_removeObject_(*(*(a1 + 32) + 48), v14, v19);
        }

        ++v18;
      }

      while (v16 != v18);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v50, v56, 16);
      v16 = v13;
    }

    while (v13);
  }

  dispatch_group_leave(*(a1 + 48));
  v46 = *MEMORY[0x1E69E9840];
}

void *sub_1A8301E9C(void *result)
{
  *(*(result[5] + 8) + 24) += *(*(result[6] + 8) + 24);
  v1 = result[4];
  if (v1)
  {
    return (*(v1 + 16))(result[4], *(*(result[5] + 8) + 24), *(*(result[7] + 8) + 40));
  }

  return result;
}

uint64_t sub_1A8302874(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend__openPhotoLibraryIfNecessary(*(a1 + 32), a2, a3);
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Registering IMPhotoLibraryPersistenceManager as a system photo library change observer", v7, 2u);
    }
  }

  return objc_msgSend_registerChangeObserver_(*(*(a1 + 32) + 64), v4, *(a1 + 32));
}

uint64_t sub_1A83029BC(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Received photoLibraryDidChange: notification", v7, 2u);
    }
  }

  result = objc_msgSend__invalidateCacheDueToChanges_(*(a1 + 32), v2, *(a1 + 40));
  if (result)
  {
    return objc_msgSend__notifyListeners(*(a1 + 32), v5, v6);
  }

  return result;
}

id sub_1A8302D8C(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v3 = qword_1EB2E9D30;
  v10 = qword_1EB2E9D30;
  if (!qword_1EB2E9D30)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1A8303150;
    v6[3] = &unk_1E7811770;
    v6[4] = &v7;
    sub_1A8303150(v6, a2, a3);
    v3 = v8[3];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_1A8302E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1A8302F90(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1A8302FE8(a1, a2, a3);
  result = objc_getClass("PHAsset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1A84E04D0(result, v5, v6);
  }

  qword_1EB2E90E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A8302FE8(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1EB2E9D90)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = sub_1A83030DC;
    v4[4] = &unk_1E78102B8;
    v4[5] = v4;
    v5 = xmmword_1E78120B0;
    v6 = 0;
    qword_1EB2E9D90 = _sl_dlopen();
  }

  if (!qword_1EB2E9D90)
  {
    sub_1A84E054C(v4, a2, a3);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A83030DC(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1EB2E9D90 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class sub_1A8303150(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1A8302FE8(a1, a2, a3);
  result = objc_getClass("PHPhotoLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1A84E05CC(result, v5, v6);
  }

  qword_1EB2E9D30 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A83031A8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t sub_1A8303208()
{
  v0 = objc_alloc_init(IMLocationManagerUtils);
  qword_1ED7678D0 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A8303554(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Authorized to send out location.", v11, 2u);
    }
  }

  objc_msgSend_setCurrentLocationGUID_(*(a1 + 32), v2, *(a1 + 40));
  v5 = objc_msgSend_locatingMessageWithGuid_error_(IMMessage, v4, *(a1 + 40), 0);
  if (objc_msgSend_length(*(a1 + 48), v6, v7))
  {
    objc_msgSend_setSourceApplicationID_(v5, v8, *(a1 + 48));
  }

  sub_1A8303660(*(a1 + 32), v5);
  objc_msgSend__sendMessage_adjustingSender_shouldQueue_(*(a1 + 32), v9, v5, 1, 1);
  v10 = *(a1 + 56);
  if (v10)
  {
    (*(v10 + 16))(v10, v5);
  }
}

void sub_1A8303660(void *a1, void *a2)
{
  v39 = a1;
  v3 = a2;
  v6 = objc_msgSend_inlineReplyController(v39, v4, v5);
  if (v6)
  {
    v9 = v6;
    v10 = objc_msgSend_inlineReplyController(v39, v7, v8);
    v13 = objc_msgSend_threadIdentifier(v10, v11, v12);

    if (v13)
    {
      v14 = objc_msgSend_inlineReplyController(v39, v7, v8);
      v17 = objc_msgSend_threadIdentifier(v14, v15, v16);
      objc_msgSend_setThreadIdentifier_(v3, v18, v17);
    }
  }

  v19 = objc_msgSend_inlineReplyController(v39, v7, v8);
  if (v19)
  {
    v22 = v19;
    v23 = objc_msgSend_inlineReplyController(v39, v20, v21);
    v26 = objc_msgSend_threadOriginator(v23, v24, v25);

    if (v26)
    {
      v29 = objc_msgSend_inlineReplyController(v39, v27, v28);
      v32 = objc_msgSend_threadOriginator(v29, v30, v31);

      v35 = objc_msgSend_account(v32, v33, v34);
      v36 = _IMBestAccountForIMItem(v32, 0, v35, 0, 0);

      IMMessageFromIMItem = _CreateIMMessageFromIMItem(v32, v36, 1);
      objc_msgSend_setThreadOriginator_(v3, v38, IMMessageFromIMItem);
    }
  }
}

void sub_1A83037E8(uint64_t a1, void *a2, void *a3)
{
  v75 = *MEMORY[0x1E69E9840];
  v63 = a2;
  v64 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v74 = v64;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Update current location complete with error: %@", buf, 0xCu);
    }
  }

  if (!v64)
  {
    v20 = objc_msgSend_account(*(a1 + 32), v4, v5);
    v23 = objc_msgSend_service(v20, v21, v22);
    v26 = objc_msgSend_iMessageService(IMServiceImpl, v24, v25);

    v29 = objc_msgSend_lastAddressedHandleID(*(a1 + 32), v27, v28);
    v32 = objc_msgSend_lastAddressedSIMID(*(a1 + 32), v30, v31);
    v34 = objc_msgSend_mmsEnabledforPhoneNumber_simID_(IMServiceImpl, v33, v29, v32);

    if ((v23 == v26) | v34 & 1)
    {
      if (v23 == v26)
      {
        v36 = 1;
      }

      else
      {
        v36 = 3;
      }

      v8 = objc_msgSend_messageWithLocation_flags_error_guid_(IMMessage, v35, v63, 5, 0, *(a1 + 40));
    }

    else
    {
      v8 = objc_msgSend_textMessageWithLocation_flags_error_guid_(IMMessage, v35, v63, 5, 0, *(a1 + 40));
      v36 = 2;
    }

    v71 = *MEMORY[0x1E69A7420];
    v38 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v37, v36);
    v72 = v38;
    v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v39, &v72, &v71, 1);

    v42 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8168], v40, v41);
    objc_msgSend_trackEvent_withDictionary_(v42, v43, *MEMORY[0x1E69A7418], v18);

    if (objc_msgSend_length(*(a1 + 48), v44, v45))
    {
      objc_msgSend_setSourceApplicationID_(v8, v46, *(a1 + 48));
    }

    v48 = objc_msgSend_account(*(a1 + 32), v46, v47);
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v51 = objc_msgSend_fileTransferGUIDs(v8, v49, v50);
    v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v52, &v66, v70, 16);
    if (v55)
    {
      v56 = *v67;
      do
      {
        for (i = 0; i != v55; ++i)
        {
          if (*v67 != v56)
          {
            objc_enumerationMutation(v51);
          }

          v58 = *(*(&v66 + 1) + 8 * i);
          v59 = objc_msgSend_sharedInstance(IMFileTransferCenter, v53, v54);
          objc_msgSend_assignTransfer_toMessage_account_(v59, v60, v58, v8, v48);
        }

        v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v53, &v66, v70, 16);
      }

      while (v55);
    }

    sub_1A8303660(*(a1 + 32), v8);
    objc_msgSend__sendMessage_adjustingSender_shouldQueue_(*(a1 + 32), v61, v8, 1, 1);

    goto LABEL_24;
  }

  if (objc_msgSend_code(v64, v4, v5) != 42)
  {
    v8 = objc_msgSend_locatingMessageWithGuid_error_(IMMessage, v7, *(a1 + 40), v64);
    v11 = objc_msgSend_account(*(a1 + 32), v9, v10);
    v14 = objc_msgSend_loginIMHandle(v11, v12, v13);
    objc_msgSend__updateSender_(v8, v15, v14);

    v18 = objc_msgSend__imMessageItem(v8, v16, v17);
    objc_msgSend__handleIncomingItem_(*(a1 + 32), v19, v18);
LABEL_24:
  }

  objc_msgSend_setCurrentLocationGUID_(*(a1 + 32), v7, 0);

  v62 = *MEMORY[0x1E69E9840];
}

void sub_1A8303F50(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"guid");
  v7 = objc_msgSend_objectForKeyedSubscript_(v3, v6, @"size");
  v10 = objc_msgSend_unsignedLongLongValue(v7, v8, v9);

  v12 = objc_msgSend_existingChatWithGUID_(*(a1 + 32), v11, v5);
  v15 = v12;
  if (v12)
  {
    v16 = objc_msgSend_chatIdentifier(v12, v13, v14);
    v18 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 40), v17, v16);
    v21 = v18;
    v22 = MEMORY[0x1E696AD98];
    if (v18)
    {
      v10 += objc_msgSend_unsignedLongLongValue(v18, v19, v20);
    }

    v23 = objc_msgSend_numberWithUnsignedLongLong_(v22, v19, v10);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 40), v24, v23, v16);
  }

  else if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v27 = 138412290;
      v28 = v5;
      _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Did not find chat for guid: %@", &v27, 0xCu);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

void sub_1A8304114(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = objc_autoreleasePoolPush();
  v5 = objc_msgSend_existingChatWithChatIdentifier_(*(a1 + 32), v4, v11);
  v7 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 40), v6, v11);
  v10 = v7;
  if (v7)
  {
    objc_msgSend_unsignedLongLongValue(v7, v8, v9);
  }

  (*(*(a1 + 48) + 16))();

  objc_autoreleasePoolPop(v3);
}

uint64_t sub_1A8306910()
{
  v0 = objc_opt_new();
  qword_1EB2EA298 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A83069EC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedController(IMDaemonController, a2, a3);
  hasListenerForID = objc_msgSend_hasListenerForID_(v4, v5, @"__k_IMSPIListenerID");

  if (a1)
  {
    v9 = objc_msgSend_sharedController(IMDaemonController, v7, v8);
    v11 = v9;
    if (hasListenerForID)
    {
      v12 = objc_msgSend_capabilitiesForListenerID_(v9, v10, @"__k_IMSPIListenerID");

      v15 = v12 | a1;
      if (v12 == v15)
      {
        v16 = IMLogHandleForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Capability exists, no need to reset.", buf, 2u);
        }

LABEL_16:

        goto LABEL_17;
      }

      v21 = objc_msgSend_sharedController(IMDaemonController, v13, v14);
      v23 = objc_msgSend_setCapabilities_forListenerID_(v21, v22, v15, @"__k_IMSPIListenerID");

      if ((v23 & 1) == 0)
      {
        v16 = IMLogHandleForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_1A84E0730(v16);
        }

        goto LABEL_16;
      }
    }

    else
    {
      v18 = objc_msgSend_addListenerID_capabilities_(v9, v10, @"__k_IMSPIListenerID", a1);

      if ((v18 & 1) == 0)
      {
        v16 = IMLogHandleForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_1A84E06EC(v16);
        }

        goto LABEL_16;
      }
    }

LABEL_17:
    v24 = objc_msgSend_sharedController(IMDaemonController, v19, v20);
    objc_msgSend_blockUntilConnected(v24, v25, v26);

    return;
  }

  if (hasListenerForID)
  {
    v27 = objc_msgSend_sharedController(IMDaemonController, v7, v8);
    objc_msgSend_removeListenerID_(v27, v17, @"__k_IMSPIListenerID");
  }
}

void sub_1A8306DAC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = sub_1A8306EA0;
  v13 = &unk_1E7810140;
  v5 = v4;
  v14 = v5;
  v6 = v3;
  v15 = v6;
  v7 = _Block_copy(&v10);
  if (objc_msgSend_isMainThread(MEMORY[0x1E696AF00], v8, v9, v10, v11, v12, v13))
  {
    v7[2](v7);
  }

  else
  {
    dispatch_sync(MEMORY[0x1E69E96A0], v7);
  }
}

uint64_t sub_1A8306EA0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Cancel last clear command before adding new caps for: %@", &v7, 0xCu);
  }

  result = objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x1E69E58C0], v4, *(a1 + 40), sel_clearChatCap, 0);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A8306F6C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_sharedController(_IMSPIConnectionController, a2, a3);
  sub_1A8306DAC(v5, @"_IMSetChatCapTimer");
  objc_msgSend_setChatCap(v5, v3, v4);
}

void sub_1A8306FC4(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_sharedController(_IMSPIConnectionController, a2, a3);
  sub_1A8306DAC(v5, @"_IMSetChatSendCapTimer");
  objc_msgSend_setChatSendCap(v5, v3, v4);
}

void sub_1A830701C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_sharedController(_IMSPIConnectionController, a2, a3);
  sub_1A8306DAC(v5, @"_IMSetChatSendCapTimerWithAttachments");
  objc_msgSend_setChatSendCapWithAttachments(v5, v3, v4);
}

void sub_1A8307074(uint64_t a1, const char *a2, uint64_t a3)
{
  isMainThread = objc_msgSend_isMainThread(MEMORY[0x1E696AF00], a2, a3);
  if (isMainThread)
  {

    sub_1A83070D0(isMainThread, v4, v5);
  }

  else
  {
    v6 = MEMORY[0x1E69E96A0];

    dispatch_async(v6, &unk_1F1B6E680);
  }
}

void sub_1A83070D0(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_sharedController(_IMSPIConnectionController, a2, a3);
  objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x1E69E58C0], v3, v5, sel_clearChatCap, 0);
  objc_msgSend_performSelector_withObject_afterDelay_(v5, v4, sel_clearChatCap, 0, 10.0);
}

void sub_1A8307428(uint64_t a1, const char *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend__bestSendingHandle(*(a1 + 32), a2, a3);
  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        *buf = 138412802;
        v25 = v8;
        v26 = 2112;
        v27 = v9;
        v28 = 2112;
        v29 = v4;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Sending notice %@ to %@ from %@", buf, 0x20u);
      }
    }

    v10 = objc_msgSend_daemonConnection(*(a1 + 32), v5, v6);
    v13 = objc_msgSend_remoteProxy(v10, v11, v12);
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1A8307658;
    v19[3] = &unk_1E78121B0;
    v20 = v14;
    v21 = *(a1 + 48);
    v22 = v4;
    v23 = *(a1 + 56);
    objc_msgSend_sendNotice_toHandles_fromHandle_reply_(v13, v16, v20, v15, v22, v19);
  }

  else
  {
    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E0774(a1);
    }

    (*(*(a1 + 56) + 16))();
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A8307658(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = a1[4];
      v4 = a1[5];
      v5 = a1[6];
      v8 = 138412802;
      v9 = v3;
      v10 = 2112;
      v11 = v4;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Completed sending notice %@ to %@ from %@", &v8, 0x20u);
    }
  }

  result = (*(a1[7] + 16))();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A8307910(uint64_t a1, const char *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend__bestSendingHandle(*(a1 + 32), a2, a3);
  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        *buf = 138412802;
        v25 = v8;
        v26 = 2112;
        v27 = v9;
        v28 = 2112;
        v29 = v4;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Finished connecting. Sending clear notice %@ to %@ from %@", buf, 0x20u);
      }
    }

    v10 = objc_msgSend_daemonConnection(*(a1 + 32), v5, v6);
    v13 = objc_msgSend_remoteProxy(v10, v11, v12);
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1A8307B38;
    v19[3] = &unk_1E78121B0;
    v20 = v14;
    v21 = *(a1 + 48);
    v22 = v4;
    v23 = *(a1 + 56);
    objc_msgSend_sendClearNotice_toHandles_reply_(v13, v16, v20, v15, v19);
  }

  else
  {
    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E07EC(a1);
    }

    (*(*(a1 + 56) + 16))();
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A8307B38(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = a1[4];
      v4 = a1[5];
      v5 = a1[6];
      v8 = 138412802;
      v9 = v3;
      v10 = 2112;
      v11 = v4;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Completed sending clear notice %@ to %@ from %@", &v8, 0x20u);
    }
  }

  result = (*(a1[7] + 16))();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A8308120(uint64_t a1, const char *a2)
{
  objc_msgSend_setMonitorStarted_(*(a1 + 32), a2, 1);
  if ((objc_msgSend_isSatelliteConnectionActive(*(a1 + 32), v3, v4) & 1) == 0 && !*(a1 + 40) && *(a1 + 48) == 1 && (objc_msgSend_isStewieActive(*(a1 + 32), v5, v6) & 1) == 0)
  {
    objc_msgSend_presentSatelliteConnectionBannerIfNecessaryWithChat_withReason_ignoreTimerLimit_(*(a1 + 32), v5, 0, @"AppOpen", 0);
  }

  v8 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v5, v6);
  objc_msgSend___mainThreadPostNotificationName_object_(v8, v7, @"IMChorosMonitorStewieStatusChangedNotification", 0);
}

void sub_1A83081D0(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 48) - 1;
      if (v5 > 2)
      {
        v6 = @"AppLaunch";
      }

      else
      {
        v6 = off_1E7812278[v5];
      }

      v7 = @"NO";
      v8 = *(a1 + 57);
      if (*(a1 + 56))
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      *buf = 138412802;
      if (v8)
      {
        v7 = @"YES";
      }

      v21 = v6;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Starting monitor for reason: %@ and show offer: %@ in background: %@", buf, 0x20u);
    }
  }

  v10 = objc_msgSend_start(*(*(a1 + 32) + 24), v2, v3);
  v11 = IMOSLoggingEnabled();
  if (v10)
  {
    if (v11)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        if (*(a1 + 56))
        {
          v15 = @"YES";
        }

        else
        {
          v15 = @"NO";
        }

        *buf = 138412290;
        v21 = v15;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Loaded monitor and show offer: %@", buf, 0xCu);
      }
    }

    if (objc_msgSend_isMainThread(MEMORY[0x1E696AF00], v12, v13))
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1A8308498;
      block[3] = &unk_1E780FE90;
      v19 = *(a1 + 40);
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  else if (v11)
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Failed to start the monitor", buf, 2u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1A8308B08(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Completed request to open Stewie SOS application", v8, 2u);
    }
  }

  if (v3)
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E09FC(v3, v5, v6);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

void sub_1A8308EB8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E0B64();
    }

    v5 = *(*(a1 + 32) + 16);
    goto LABEL_7;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v5 = *(v6 + 16);
LABEL_7:
    v5();
  }
}

void sub_1A8309888(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1A83098F4(uint64_t a1, const char *a2)
{
  v11[13] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69A7D58];
  v11[0] = *MEMORY[0x1E69A7D48];
  v11[1] = v2;
  v3 = *MEMORY[0x1E69A7D68];
  v11[2] = *MEMORY[0x1E69A7D80];
  v11[3] = v3;
  v4 = *MEMORY[0x1E69A7D50];
  v11[4] = *MEMORY[0x1E69A7D98];
  v11[5] = v4;
  v5 = *MEMORY[0x1E69A7D60];
  v11[6] = *MEMORY[0x1E69A7D90];
  v11[7] = v5;
  v6 = *MEMORY[0x1E69A7DA0];
  v11[8] = *MEMORY[0x1E69A7DA8];
  v11[9] = v6;
  v7 = *MEMORY[0x1E69A7D70];
  v11[10] = *MEMORY[0x1E69A7D88];
  v11[11] = v7;
  v11[12] = *MEMORY[0x1E69A7D78];
  v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], a2, v11, 13);
  v9 = qword_1EB2EA2A0;
  qword_1EB2EA2A0 = v8;

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1A8309B88()
{
  v70[13] = *MEMORY[0x1E69E9840];
  v69[0] = *MEMORY[0x1E69A7D48];
  v68 = sub_1A8361964();
  v1 = objc_msgSend_localizedStringForKey_value_table_(v68, v0, @"Balloons", @"Balloons", @"IMCoreLocalizable");
  v67 = v1;
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = @"Balloons";
  }

  v70[0] = v2;
  v69[1] = *MEMORY[0x1E69A7D58];
  v66 = sub_1A8361964();
  v4 = objc_msgSend_localizedStringForKey_value_table_(v66, v3, @"Confetti", @"Confetti", @"IMCoreLocalizable");
  v65 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"Confetti";
  }

  v70[1] = v5;
  v69[2] = *MEMORY[0x1E69A7D80];
  v64 = sub_1A8361964();
  v7 = objc_msgSend_localizedStringForKey_value_table_(v64, v6, @"Lasers", @"Lasers", @"IMCoreLocalizable");
  v63 = v7;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"Lasers";
  }

  v70[2] = v8;
  v69[3] = *MEMORY[0x1E69A7D68];
  v62 = sub_1A8361964();
  v10 = objc_msgSend_localizedStringForKey_value_table_(v62, v9, @"Fireworks", @"Fireworks", @"IMCoreLocalizable");
  v61 = v10;
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = @"Fireworks";
  }

  v70[3] = v11;
  v69[4] = *MEMORY[0x1E69A7D98];
  v60 = sub_1A8361964();
  v13 = objc_msgSend_localizedStringForKey_value_table_(v60, v12, @"Fireworks", @"Fireworks", @"IMCoreLocalizable");
  v59 = v13;
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = @"Fireworks";
  }

  v70[4] = v14;
  v69[5] = *MEMORY[0x1E69A7D50];
  v58 = sub_1A8361964();
  v16 = objc_msgSend_localizedStringForKey_value_table_(v58, v15, @"Celebration", @"Celebration", @"IMCoreLocalizable");
  v57 = v16;
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = @"Celebration";
  }

  v70[5] = v17;
  v69[6] = *MEMORY[0x1E69A7D90];
  v56 = sub_1A8361964();
  v19 = objc_msgSend_localizedStringForKey_value_table_(v56, v18, @"Sent With Love", @"Sent With Love", @"IMCoreLocalizable");
  v55 = v19;
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = @"Sent With Love";
  }

  v70[6] = v20;
  v69[7] = *MEMORY[0x1E69A7D60];
  v54 = sub_1A8361964();
  v22 = objc_msgSend_localizedStringForKey_value_table_(v54, v21, @"Echo", @"Echo", @"IMCoreLocalizable");
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = @"Echo";
  }

  v70[7] = v24;
  v69[8] = *MEMORY[0x1E69A7DA8];
  v53 = sub_1A8361964();
  v26 = objc_msgSend_localizedStringForKey_value_table_(v53, v25, @"Spotlight", @"Spotlight", @"IMCoreLocalizable");
  v27 = v26;
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = @"Spotlight";
  }

  v70[8] = v28;
  v69[9] = *MEMORY[0x1E69A7DA0];
  v52 = sub_1A8361964();
  v30 = objc_msgSend_localizedStringForKey_value_table_(v52, v29, @"Slam Effect", @"Slam Effect", @"IMCoreLocalizable");
  v31 = v30;
  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = @"Slam Effect";
  }

  v70[9] = v32;
  v69[10] = *MEMORY[0x1E69A7D88];
  v33 = sub_1A8361964();
  v35 = objc_msgSend_localizedStringForKey_value_table_(v33, v34, @"Loud Effect", @"Loud Effect", @"IMCoreLocalizable");
  v36 = v35;
  if (v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = @"Loud Effect";
  }

  v70[10] = v37;
  v69[11] = *MEMORY[0x1E69A7D70];
  v38 = sub_1A8361964();
  v40 = objc_msgSend_localizedStringForKey_value_table_(v38, v39, @"Gentle Effect", @"Gentle Effect", @"IMCoreLocalizable");
  v41 = v40;
  if (v40)
  {
    v42 = v40;
  }

  else
  {
    v42 = @"Gentle Effect";
  }

  v70[11] = v42;
  v69[12] = *MEMORY[0x1E69A7D78];
  v43 = sub_1A8361964();
  v45 = objc_msgSend_localizedStringForKey_value_table_(v43, v44, @"Invisible Ink", @"Invisible Ink", @"IMCoreLocalizable");
  v47 = v45;
  if (v45)
  {
    v48 = v45;
  }

  else
  {
    v48 = @"Invisible Ink";
  }

  v70[12] = v48;
  v49 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v46, v70, v69, 13);
  v50 = qword_1EB2EA2B0;
  qword_1EB2EA2B0 = v49;

  v51 = *MEMORY[0x1E69E9840];
}

void sub_1A830A0BC()
{
  v65[12] = *MEMORY[0x1E69E9840];
  v64[0] = *MEMORY[0x1E69A7D48];
  v63 = sub_1A8361964();
  v1 = objc_msgSend_localizedStringForKey_value_table_(v63, v0, @"Replay Balloons", @"Replay Balloons", @"IMCoreLocalizable");
  v62 = v1;
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = @"Replay Balloons";
  }

  v65[0] = v2;
  v64[1] = *MEMORY[0x1E69A7D58];
  v61 = sub_1A8361964();
  v4 = objc_msgSend_localizedStringForKey_value_table_(v61, v3, @"Replay Confetti", @"Replay Confetti", @"IMCoreLocalizable");
  v60 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"Replay Confetti";
  }

  v65[1] = v5;
  v64[2] = *MEMORY[0x1E69A7D80];
  v59 = sub_1A8361964();
  v7 = objc_msgSend_localizedStringForKey_value_table_(v59, v6, @"Replay Lasers", @"Replay Lasers", @"IMCoreLocalizable");
  v58 = v7;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"Replay Lasers";
  }

  v65[2] = v8;
  v64[3] = *MEMORY[0x1E69A7D68];
  v57 = sub_1A8361964();
  v10 = objc_msgSend_localizedStringForKey_value_table_(v57, v9, @"Replay Fireworks", @"Replay Fireworks", @"IMCoreLocalizable");
  v56 = v10;
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = @"Replay Fireworks";
  }

  v65[3] = v11;
  v64[4] = *MEMORY[0x1E69A7D98];
  v55 = sub_1A8361964();
  v13 = objc_msgSend_localizedStringForKey_value_table_(v55, v12, @"Replay Shooting Star", @"Replay Shooting Star", @"IMCoreLocalizable");
  v54 = v13;
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = @"Replay Shooting Star";
  }

  v65[4] = v14;
  v64[5] = *MEMORY[0x1E69A7D50];
  v53 = sub_1A8361964();
  v16 = objc_msgSend_localizedStringForKey_value_table_(v53, v15, @"Replay Celebration", @"Replay Celebration", @"IMCoreLocalizable");
  v52 = v16;
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = @"Replay Celebration";
  }

  v65[5] = v17;
  v64[6] = *MEMORY[0x1E69A7D90];
  v51 = sub_1A8361964();
  v19 = objc_msgSend_localizedStringForKey_value_table_(v51, v18, @"Replay Sent With Love", @"Replay Sent With Love", @"IMCoreLocalizable");
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = @"Replay Sent With Love";
  }

  v65[6] = v21;
  v64[7] = *MEMORY[0x1E69A7D60];
  v50 = sub_1A8361964();
  v23 = objc_msgSend_localizedStringForKey_value_table_(v50, v22, @"Replay Echo", @"Replay Echo", @"IMCoreLocalizable");
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = @"Replay Echo";
  }

  v65[7] = v25;
  v64[8] = *MEMORY[0x1E69A7DA8];
  v49 = sub_1A8361964();
  v27 = objc_msgSend_localizedStringForKey_value_table_(v49, v26, @"Replay Spotlight", @"Replay Spotlight", @"IMCoreLocalizable");
  v28 = v27;
  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = @"Replay Spotlight";
  }

  v65[8] = v29;
  v64[9] = *MEMORY[0x1E69A7DA0];
  v30 = sub_1A8361964();
  v32 = objc_msgSend_localizedStringForKey_value_table_(v30, v31, @"Replay Slam Effect", @"Replay Slam Effect", @"IMCoreLocalizable");
  v33 = v32;
  if (v32)
  {
    v34 = v32;
  }

  else
  {
    v34 = @"Replay Slam Effect";
  }

  v65[9] = v34;
  v64[10] = *MEMORY[0x1E69A7D88];
  v35 = sub_1A8361964();
  v37 = objc_msgSend_localizedStringForKey_value_table_(v35, v36, @"Replay Loud Effect", @"Replay Loud Effect", @"IMCoreLocalizable");
  v38 = v37;
  if (v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = @"Replay Loud Effect";
  }

  v65[10] = v39;
  v64[11] = *MEMORY[0x1E69A7D70];
  v40 = sub_1A8361964();
  v42 = objc_msgSend_localizedStringForKey_value_table_(v40, v41, @"Replay Gentle Effect", @"Replay Gentle Effect", @"IMCoreLocalizable");
  v44 = v42;
  if (v42)
  {
    v45 = v42;
  }

  else
  {
    v45 = @"Replay Gentle Effect";
  }

  v65[11] = v45;
  v46 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v43, v65, v64, 12);
  v47 = qword_1EB2EA2C0;
  qword_1EB2EA2C0 = v46;

  v48 = *MEMORY[0x1E69E9840];
}

void sub_1A830A5A0()
{
  v70[13] = *MEMORY[0x1E69E9840];
  v69[0] = *MEMORY[0x1E69A7D48];
  v68 = sub_1A8361964();
  v1 = objc_msgSend_localizedStringForKey_value_table_(v68, v0, @"SEND WITH BALLOONS", @"SEND WITH BALLOONS", @"IMCoreLocalizable");
  v67 = v1;
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = @"SEND WITH BALLOONS";
  }

  v70[0] = v2;
  v69[1] = *MEMORY[0x1E69A7D58];
  v66 = sub_1A8361964();
  v4 = objc_msgSend_localizedStringForKey_value_table_(v66, v3, @"SEND WITH CONFETTI", @"SEND WITH CONFETTI", @"IMCoreLocalizable");
  v65 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"SEND WITH CONFETTI";
  }

  v70[1] = v5;
  v69[2] = *MEMORY[0x1E69A7D80];
  v64 = sub_1A8361964();
  v7 = objc_msgSend_localizedStringForKey_value_table_(v64, v6, @"SEND WITH LASERS", @"SEND WITH LASERS", @"IMCoreLocalizable");
  v63 = v7;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"SEND WITH LASERS";
  }

  v70[2] = v8;
  v69[3] = *MEMORY[0x1E69A7D68];
  v62 = sub_1A8361964();
  v10 = objc_msgSend_localizedStringForKey_value_table_(v62, v9, @"SEND WITH FIREWORKS", @"SEND WITH FIREWORKS", @"IMCoreLocalizable");
  v61 = v10;
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = @"SEND WITH FIREWORKS";
  }

  v70[3] = v11;
  v69[4] = *MEMORY[0x1E69A7D98];
  v60 = sub_1A8361964();
  v13 = objc_msgSend_localizedStringForKey_value_table_(v60, v12, @"SEND WITH SHOOTING STAR", @"SEND WITH SHOOTING STAR", @"IMCoreLocalizable");
  v59 = v13;
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = @"SEND WITH SHOOTING STAR";
  }

  v70[4] = v14;
  v69[5] = *MEMORY[0x1E69A7D50];
  v58 = sub_1A8361964();
  v16 = objc_msgSend_localizedStringForKey_value_table_(v58, v15, @"SEND WITH CELEBRATION", @"SEND WITH CELEBRATION", @"IMCoreLocalizable");
  v57 = v16;
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = @"SEND WITH CELEBRATION";
  }

  v70[5] = v17;
  v69[6] = *MEMORY[0x1E69A7D90];
  v56 = sub_1A8361964();
  v19 = objc_msgSend_localizedStringForKey_value_table_(v56, v18, @"SEND WITH LOVE", @"SEND WITH LOVE", @"IMCoreLocalizable");
  v55 = v19;
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = @"SEND WITH LOVE";
  }

  v70[6] = v20;
  v69[7] = *MEMORY[0x1E69A7D60];
  v54 = sub_1A8361964();
  v22 = objc_msgSend_localizedStringForKey_value_table_(v54, v21, @"SEND WITH ECHO", @"SEND WITH ECHO", @"IMCoreLocalizable");
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = @"SEND WITH ECHO";
  }

  v70[7] = v24;
  v69[8] = *MEMORY[0x1E69A7DA8];
  v53 = sub_1A8361964();
  v26 = objc_msgSend_localizedStringForKey_value_table_(v53, v25, @"SEND WITH SPOTLIGHT", @"SEND WITH SPOTLIGHT", @"IMCoreLocalizable");
  v27 = v26;
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = @"SEND WITH SPOTLIGHT";
  }

  v70[8] = v28;
  v69[9] = *MEMORY[0x1E69A7DA0];
  v52 = sub_1A8361964();
  v30 = objc_msgSend_localizedStringForKey_value_table_(v52, v29, @"SLAM", @"SLAM", @"IMCoreLocalizable");
  v31 = v30;
  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = @"SLAM";
  }

  v70[9] = v32;
  v69[10] = *MEMORY[0x1E69A7D88];
  v33 = sub_1A8361964();
  v35 = objc_msgSend_localizedStringForKey_value_table_(v33, v34, @"LOUD", @"LOUD", @"IMCoreLocalizable");
  v36 = v35;
  if (v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = @"LOUD";
  }

  v70[10] = v37;
  v69[11] = *MEMORY[0x1E69A7D70];
  v38 = sub_1A8361964();
  v40 = objc_msgSend_localizedStringForKey_value_table_(v38, v39, @"GENTLE", @"GENTLE", @"IMCoreLocalizable");
  v41 = v40;
  if (v40)
  {
    v42 = v40;
  }

  else
  {
    v42 = @"GENTLE";
  }

  v70[11] = v42;
  v69[12] = *MEMORY[0x1E69A7D78];
  v43 = sub_1A8361964();
  v45 = objc_msgSend_localizedStringForKey_value_table_(v43, v44, @"INVISIBLE INK", @"INVISIBLE INK", @"IMCoreLocalizable");
  v47 = v45;
  if (v45)
  {
    v48 = v45;
  }

  else
  {
    v48 = @"INVISIBLE INK";
  }

  v70[12] = v48;
  v49 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v46, v70, v69, 13);
  v50 = qword_1EB2EA2D0;
  qword_1EB2EA2D0 = v49;

  v51 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A830C088()
{
  v0 = objc_alloc_init(IMSimulatedDaemonController);
  qword_1ED767850 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A830C150(uint64_t a1, const char *a2)
{
  v170[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69A7AF0];
  v4 = objc_msgSend_serviceWithInternalName_(IMServiceImpl, a2, *MEMORY[0x1E69A7AF0]);
  v5 = [IMSimulatedAccount alloc];
  v7 = objc_msgSend_initWithService_(v5, v6, v4);
  v9 = objc_msgSend_imHandleWithID_alreadyCanonical_(v7, v8, @"+15557654321", 0);
  objc_msgSend_setLoginHandle_(v7, v10, v9);

  v13 = objc_msgSend_sharedInstance(IMAccountController, v11, v12);
  v170[0] = v7;
  v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v14, v170, 1);
  objc_msgSend_setSimulatedAccounts_forServiceNamed_(v13, v16, v15, *v3);

  v17 = *MEMORY[0x1E69A5E70];
  v168[0] = *MEMORY[0x1E69A5E68];
  v168[1] = v17;
  v169[0] = &unk_1F1BA1710;
  v169[1] = MEMORY[0x1E695E118];
  v168[2] = *MEMORY[0x1E69A7B00];
  v18 = *MEMORY[0x1E69A79C0];
  v166[0] = *MEMORY[0x1E69A7968];
  v166[1] = v18;
  v167[0] = MEMORY[0x1E695E118];
  v167[1] = MEMORY[0x1E695E118];
  v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v19, v167, v166, 2);
  v169[2] = v20;
  v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v21, v169, v168, 3);
  v140 = v4;
  objc_msgSend_setServiceProperties_(v4, v23, v22);

  v24 = MEMORY[0x1E69A7AE0];
  v26 = objc_msgSend_serviceWithInternalName_(IMServiceImpl, v25, *MEMORY[0x1E69A7AE0]);
  v27 = [IMSimulatedAccount alloc];
  v139 = v26;
  v29 = objc_msgSend_initWithService_(v27, v28, v26);
  v31 = objc_msgSend_imHandleWithID_alreadyCanonical_(v29, v30, @"+15557654321", 0);
  objc_msgSend_setLoginHandle_(v29, v32, v31);

  v165 = v29;
  v34 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v33, &v165, 1);
  objc_msgSend_setSimulatedAccounts_forServiceNamed_(v13, v35, v34, *v24);

  v36 = [IMSimulatedChat alloc];
  v164 = @"+15555648583";
  v38 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v37, &v164, 1);
  v145 = objc_msgSend_initWithIncomingIDs_messageIDOffset_account_(v36, v39, v38, 100000, v7);

  v40 = [IMSimulatedChat alloc];
  v163 = @"+18885551212";
  v42 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v41, &v163, 1);
  v146 = objc_msgSend_initWithIncomingIDs_messageIDOffset_account_(v40, v43, v42, 1, v7);

  v44 = [IMSimulatedChat alloc];
  v162 = @"john-appleseed@mac.com";
  v46 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v45, &v162, 1);
  v144 = objc_msgSend_initWithIncomingIDs_messageIDOffset_account_(v44, v47, v46, 300000, v7);

  v48 = [IMSimulatedChat alloc];
  v161 = @"kate-bell@mac.com";
  v50 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v49, &v161, 1);
  v141 = objc_msgSend_initWithIncomingIDs_messageIDOffset_account_(v48, v51, v50, 200001, v7);

  v52 = [IMSimulatedChat alloc];
  v160 = @"+18885551213";
  v54 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v53, &v160, 1);
  v143 = objc_msgSend_initWithIncomingIDs_messageIDOffset_account_(v52, v55, v54, 400001, v29);

  v56 = [IMSimulatedChat alloc];
  v159 = @"+18885551214";
  v58 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v57, &v159, 1);
  v142 = objc_msgSend_initWithIncomingIDs_messageIDOffset_account_(v56, v59, v58, 500001, v29);

  v60 = [IMSimulatedChat alloc];
  v158[0] = @"john-appleseed@mac.com";
  v158[1] = @"kate-bell@mac.com";
  v62 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v61, v158, 2);
  v134 = objc_msgSend_initWithIncomingIDs_messageIDOffset_account_(v60, v63, v62, 500000, v7);

  v64 = [IMSimulatedChat alloc];
  v157[0] = @"+15555648583";
  v157[1] = @"kate-bell@mac.com";
  v66 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v65, v157, 2);
  v137 = v7;
  v68 = objc_msgSend_initWithIncomingIDs_messageIDOffset_account_(v64, v67, v66, 400001, v7);

  v69 = [IMSimulatedChat alloc];
  v156[0] = @"+15555648583";
  v156[1] = @"+18885551212";
  v71 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v70, v156, 2);
  v73 = objc_msgSend_initWithIncomingIDs_messageIDOffset_account_(v69, v72, v71, 700000, v29);

  v74 = [IMSimulatedChat alloc];
  v155[0] = @"+18885551212";
  v155[1] = @"+18885551213";
  v76 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v75, v155, 2);
  v138 = v29;
  v78 = objc_msgSend_initWithIncomingIDs_messageIDOffset_account_(v74, v77, v76, 600001, v29);

  objc_msgSend_setDelegate_(v145, v79, v146);
  objc_msgSend_setDelegate_(v146, v80, v145);
  objc_msgSend_setDelegate_(v144, v81, v141);
  objc_msgSend_setDelegate_(v141, v82, v144);
  objc_msgSend_setDelegate_(v143, v83, v142);
  objc_msgSend_setDelegate_(v142, v84, v143);
  v85 = v134;
  objc_msgSend_setDelegate_(v134, v86, v68);
  objc_msgSend_setDelegate_(v68, v87, v134);
  objc_msgSend_setDelegate_(v73, v88, v78);
  objc_msgSend_setDelegate_(v78, v89, v73);
  v154[0] = v145;
  v154[1] = v146;
  v154[2] = v144;
  v154[3] = v141;
  v154[4] = v143;
  v154[5] = v142;
  v154[6] = v134;
  v154[7] = v68;
  v135 = v73;
  v136 = v68;
  v154[8] = v73;
  v154[9] = v78;
  v90 = v78;
  v92 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v91, v154, 10);
  v95 = objc_msgSend_sharedRegistry(IMChatRegistry, v93, v94);
  objc_msgSend__setSimulatedChats_(v95, v96, v92);

  v97 = objc_opt_class();
  ClassMethod = class_getClassMethod(v97, sel_sharedInstance);
  v99 = objc_opt_class();
  v100 = class_getClassMethod(v99, sel_sharedInstance);
  method_exchangeImplementations(ClassMethod, v100);
  v101 = objc_opt_class();
  v102 = class_getClassMethod(v101, sel_sharedController);
  v103 = objc_opt_class();
  v104 = class_getClassMethod(v103, sel_sharedController);
  method_exchangeImplementations(v102, v104);
  v105 = MEMORY[0x1E695DF70];
  v108 = objc_msgSend_count(v92, v106, v107);
  v110 = objc_msgSend_arrayWithCapacity_(v105, v109, v108);
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v111 = v92;
  v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(v111, v112, &v147, v153, 16);
  if (v113)
  {
    v115 = v113;
    v116 = *v148;
    do
    {
      for (i = 0; i != v115; ++i)
      {
        if (*v148 != v116)
        {
          objc_enumerationMutation(v111);
        }

        v118 = objc_msgSend_dictionaryForChat_(*(a1 + 32), v114, *(*(&v147 + 1) + 8 * i), v134);
        objc_msgSend_addObject_(v110, v119, v118);
      }

      v115 = objc_msgSend_countByEnumeratingWithState_objects_count_(v111, v114, &v147, v153, 16);
    }

    while (v115);
  }

  v122 = objc_msgSend_sharedController(IMDaemonController, v120, v121);
  v125 = objc_msgSend_listener(v122, v123, v124);
  v151 = @"chats";
  v152 = v110;
  v127 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v126, &v152, &v151, 1);
  objc_msgSend_setupComplete_info_(v125, v128, 1, v127);

  v131 = objc_msgSend_sharedController(IMDaemonController, v129, v130);
  objc_msgSend_setListeners_(v131, v132, v111);

  v133 = *MEMORY[0x1E69E9840];
}

void sub_1A830CFA4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v14 = objc_alloc_init(objc_msgSend_contextClass(v8, v9, v10));
  objc_msgSend_setSenderHandle_(v14, v11, v7);

  objc_msgSend_setOtherHandle_(v14, v12, v6);
  objc_msgSend_setContext_(a1, v13, v14);
}

void sub_1A830D050(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_service(a1, a2, a3);
  v6 = objc_msgSend__serviceWithInternalName_(a1, v5, v4);

  v9 = objc_msgSend__accountController(a1, v7, v8);
  v12 = objc_msgSend_account(a1, v10, v11);
  v15 = objc_msgSend_accountID(a1, v13, v14);
  v17 = objc_msgSend_bestAccountForService_login_guid_(v9, v16, v6, v12, v15);

  if (v17)
  {
    if (objc_msgSend_isFromMe(a1, v18, v19))
    {
      v51 = objc_msgSend_loginIMHandle(v17, v20, v21);
      v24 = objc_msgSend_handle(a1, v22, v23);
      if (objc_msgSend_length(v24, v25, v26))
      {
        v29 = objc_msgSend_handle(a1, v27, v28);
        v31 = objc_msgSend_imHandleWithID_alreadyCanonical_(v17, v30, v29, 1);
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v33 = objc_msgSend_sender(a1, v20, v21);
      if (objc_msgSend_length(v33, v34, v35))
      {
        v38 = objc_msgSend_sender(a1, v36, v37);
        v51 = objc_msgSend_imHandleWithID_alreadyCanonical_(v17, v39, v38, 1);
      }

      else
      {
        v51 = 0;
      }

      v31 = objc_msgSend_loginIMHandle(v17, v40, v41);
    }

    v32 = v51;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  v52 = v32;
  v42 = objc_msgSend_service(v32, v18, v19);
  v45 = objc_msgSend_internalName(v42, v43, v44);
  v48 = objc_msgSend_service(a1, v46, v47);
  objc_msgSend_isEqualToString_(v45, v49, v48);

  objc_msgSend__updateContextWithSenderHandle_otherHandle_(a1, v50, v52, v31);
}

id sub_1A830D264(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_service(a1, v5, v6);
  v9 = objc_msgSend__serviceWithInternalName_(a1, v8, v7);

  v12 = objc_msgSend__accountController(a1, v10, v11);
  v15 = objc_msgSend_account(a1, v13, v14);
  v18 = objc_msgSend_accountID(a1, v16, v17);
  v20 = objc_msgSend_bestAccountForService_login_guid_(v12, v19, v9, v15, v18);

  v22 = objc_msgSend_imHandleWithID_alreadyCanonical_(v20, v21, v4, 1);

  return v22;
}

id sub_1A830D354(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_context(a1, a2, a3);
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_otherHandle(v3, v4, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1A830D3BC(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_message(a1, a2, a3);
  isSenderUnknown = objc_msgSend_isSenderUnknown(v3, v4, v5);

  return isSenderUnknown;
}

void *sub_1A830D3F4(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_messageID(a1, a2, a3);
  v7 = objc_msgSend_copy(a1, v5, v6);
  objc_msgSend__setMessageID_(v7, v8, v4);
  return v7;
}

void sub_1A830E02C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E695DF90]);
  v6 = objc_msgSend_initWithCapacity_(v4, v5, 4);
  v9 = objc_msgSend_guid(v3, v7, v8);
  if (v9)
  {
    CFDictionarySetValue(v6, @"messageGUID", v9);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A84E0D74();
  }

  v10 = MEMORY[0x1E696AD98];
  v13 = objc_msgSend_sortID(v3, v11, v12);
  v15 = objc_msgSend_numberWithUnsignedInteger_(v10, v14, v13);
  if (v15)
  {
    CFDictionarySetValue(v6, @"sortID", v15);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A84E0DFC();
  }

  v16 = MEMORY[0x1E696AD98];
  v19 = objc_msgSend_time(v3, v17, v18);
  objc_msgSend_timeIntervalSinceReferenceDate(v19, v20, v21);
  v24 = objc_msgSend_numberWithDouble_(v16, v22, v23);

  if (v24)
  {
    CFDictionarySetValue(v6, @"date", v24);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A84E0E84();
  }

  v27 = objc_msgSend_replyToGUID(v3, v25, v26);
  if (v27)
  {
    CFDictionarySetValue(v6, @"replyToGUID", v27);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = objc_msgSend_body(v3, v28, v29);
    v33 = objc_msgSend_string(v30, v31, v32);

    if (v33)
    {
      CFDictionarySetValue(v6, @"messageText", v33);
    }

    v36 = objc_msgSend_fileTransferGUIDs(v3, v34, v35);
    if (v36)
    {
      CFDictionarySetValue(v6, @"transferGUIDS", v36);
    }
  }

  objc_msgSend_addObject_(*(a1 + 32), v28, v6);
}

void sub_1A830E2D0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_1A830EF44(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "IMCoreAutomationPerformOperationWithDictionary method call not on main queue, calling dispatch_sync", v7, 2u);
    }
  }

  v4 = objc_msgSend_callIMCoreMethodWithDictionary_(*(a1 + 32), v2, *(a1 + 40));
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

uint64_t sub_1A8310330(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_transferForGUID_(*(a1 + 32), a2, a2);
  isAdaptiveImageGlyph = objc_msgSend_isAdaptiveImageGlyph(v2, v3, v4);

  return isAdaptiveImageGlyph;
}

BOOL sub_1A8310370(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_transferForGUID_(*(a1 + 32), a2, a2);
  v5 = objc_msgSend_commSafetySensitive(v2, v3, v4) == 1;

  return v5;
}

id sub_1A8310BAC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v8 = objc_msgSend_mutableCopy(v3, v4, v5);
  if (!v8)
  {
    v8 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v6, v7);
  }

  if (v3)
  {
    v9 = objc_msgSend___im_associatedMessageSummary(v3, v6, v7);
    if (objc_msgSend_length(v9, v10, v11) >= 0x33)
    {
      v13 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(v9, v12, 50);
      v15 = objc_msgSend_substringToIndex_(v9, v14, v13);
      v17 = objc_msgSend_stringByAppendingString_(v15, v16, @"…");

      objc_msgSend_setObject_forKeyedSubscript_(v8, v18, v17, *MEMORY[0x1E69A7260]);
      v9 = v17;
    }

    v19 = *MEMORY[0x1E69A7218];
    v20 = objc_msgSend___imami_attributedStringForKey_(v3, v12, *MEMORY[0x1E69A7218]);
    v23 = objc_msgSend_im_trimmedSummaryIfNeededForTapback(v20, v21, v22);

    objc_msgSend___imami_setAttributedString_forKey_(v8, v24, v23, v19);
  }

  return v8;
}

void sub_1A8310F40(uint64_t a1, const char *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_serviceWithInternalName_(IMServiceImpl, a2, *MEMORY[0x1E69A7AF0]);
  v7 = *MEMORY[0x1E69A5E68];
  v8[0] = &unk_1F1BA1728;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v3, v8, &v7, 1);
  objc_msgSend_setServiceProperties_(v2, v5, v4);

  v6 = *MEMORY[0x1E69E9840];
}

id sub_1A8311880(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, int a6)
{
  v9 = a1;
  v194 = a4;
  v193 = a5;
  v12 = objc_msgSend_guid(v9, v10, v11);
  v13 = v12;
  if (a6)
  {
    v14 = sub_1A83130CC(v12);

    v13 = v14;
  }

  objc_opt_class();
  v195 = v13;
  if (objc_opt_isKindOfClass())
  {
    v210 = objc_msgSend_associatedMessageGUID(v9, v15, v16);
    if (a6)
    {
      v17 = sub_1A83130CC(v210);

      v210 = v17;
    }

    v176 = objc_alloc(MEMORY[0x1E69A7EF0]);
    v199 = objc_msgSend_senderInfo(v9, v18, v19);
    v184 = objc_msgSend_date(MEMORY[0x1E695DF00], v20, v21);
    v182 = objc_msgSend_date(MEMORY[0x1E695DF00], v22, v23);
    v180 = objc_msgSend_subject(v9, v24, v25);
    v209 = objc_msgSend_body(v9, v26, v27);
    v203 = objc_msgSend_bodyData(v9, v28, v29);
    v208 = objc_msgSend_fileTransferGUIDs(v9, v30, v31);
    v207 = objc_msgSend_account(v9, v32, v33);
    v206 = objc_msgSend_accountID(v9, v34, v35);
    v205 = objc_msgSend_service(v9, v36, v37);
    v204 = objc_msgSend_handle(v9, v38, v39);
    v178 = objc_msgSend_roomName(v9, v40, v41);
    v202 = objc_msgSend_unformattedID(v9, v42, v43);
    v201 = objc_msgSend_countryCode(v9, v44, v45);
    v174 = objc_msgSend_expireState(v9, v46, v47);
    v200 = objc_msgSend_balloonBundleID(v9, v48, v49);
    v52 = objc_msgSend_payloadData(v9, v50, v51);
    v55 = objc_msgSend_expressiveSendStyleID(v9, v53, v54);
    v58 = objc_msgSend_timeExpressiveSendPlayed(v9, v56, v57);
    v197 = objc_msgSend_associatedMessageType(v9, v59, v60);
    v63 = objc_msgSend_associatedMessageRange(v9, v61, v62);
    v65 = v64;
    v67 = objc_msgSend_biaReferenceID(v9, v64, v66);
    v70 = objc_msgSend_messageSummaryInfo(v9, v68, v69);
    v73 = objc_msgSend_partCount(v9, v71, v72);
    v76 = objc_msgSend_threadIdentifier(v9, v74, v75);
    objc_msgSend_dateRecovered(v9, v77, v78);
    v169 = v73;
    v171 = v76;
    v186 = v76;
    v79 = v187 = v70;
    v168 = v70;
    v188 = v67;
    v166 = v67;
    v162 = v63;
    v160 = v197;
    v81 = v182;
    v80 = v184;
    v159 = 0;
    v189 = v58;
    v196 = v55;
    v158 = v55;
    v198 = v52;
    v82 = v178;
    v83 = v195;
    v84 = v180;
    timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered = objc_msgSend_initWithSenderInfo_time_timeRead_timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_(v176, v85, v199, v184, 0, v182, 0, v209, v203, 0, v208, a2, v195, a3, v207, v206, v205, v204, v178, v202, v201, v174, v200, v52, v158, v58, v159, v210, v160, v162, v65, 0, 0, v166, v168, v169, v171, v79);
  }

  else
  {
    v177 = objc_alloc(MEMORY[0x1E69A8138]);
    v210 = objc_msgSend_senderInfo(v9, v87, v88);
    v199 = objc_msgSend_date(MEMORY[0x1E695DF00], v89, v90);
    v185 = objc_msgSend_date(MEMORY[0x1E695DF00], v91, v92);
    v183 = objc_msgSend_subject(v9, v93, v94);
    v181 = objc_msgSend_body(v9, v95, v96);
    v209 = objc_msgSend_bodyData(v9, v97, v98);
    v203 = objc_msgSend_fileTransferGUIDs(v9, v99, v100);
    v208 = objc_msgSend_account(v9, v101, v102);
    v207 = objc_msgSend_accountID(v9, v103, v104);
    v206 = objc_msgSend_service(v9, v105, v106);
    v205 = objc_msgSend_handle(v9, v107, v108);
    v204 = objc_msgSend_roomName(v9, v109, v110);
    v179 = objc_msgSend_unformattedID(v9, v111, v112);
    v202 = objc_msgSend_countryCode(v9, v113, v114);
    v175 = objc_msgSend_expireState(v9, v115, v116);
    v201 = objc_msgSend_balloonBundleID(v9, v117, v118);
    v200 = objc_msgSend_payloadData(v9, v119, v120);
    v198 = objc_msgSend_expressiveSendStyleID(v9, v121, v122);
    v196 = objc_msgSend_timeExpressiveSendPlayed(v9, v123, v124);
    v127 = objc_msgSend_biaReferenceID(v9, v125, v126);
    v130 = objc_msgSend_threadIdentifier(v9, v128, v129);
    v133 = objc_msgSend_syndicationRanges(v9, v131, v132);
    v136 = objc_msgSend_syncedSyndicationRanges(v9, v134, v135);
    v190 = objc_msgSend_partCount(v9, v137, v138);
    v141 = objc_msgSend_dateEdited(v9, v139, v140);
    v144 = objc_msgSend_dateRecovered(v9, v142, v143);
    v147 = objc_msgSend_scheduleType(v9, v145, v146);
    v150 = objc_msgSend_scheduleState(v9, v148, v149);
    v153 = objc_msgSend_cloudKitChatID(v9, v151, v152);
    v173 = v150;
    v170 = v144;
    v172 = v147;
    v154 = v144;
    v167 = v190;
    v83 = v195;
    v186 = v136;
    v187 = v133;
    v164 = v133;
    v165 = v136;
    v188 = v130;
    v163 = 0;
    v189 = v127;
    v161 = v127;
    v82 = v179;
    v81 = v183;
    v84 = v181;
    v80 = v185;
    timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered = objc_msgSend_initWithSenderInfo_time_timeRead_timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_bizIntent_locale_biaReferenceID_errorType_threadIdentifier_syndicationRanges_syncedSyndicationRanges_partCount_dateEdited_dateRecovered_scheduleType_scheduleState_cloudKitChatID_(v177, v155, v210, v199, 0, v185, 0, v183, v181, v209, 0, v203, a2, v195, a3, v208, v207, v206, v205, v204, v179, v202, v175, v201, v200, v198, v196, 0, 0, v161, v163, v130, v164, v165, v167, v141, v170, v172, v173, v153);

    v79 = v141;
  }

  objc_msgSend__updateContextWithSenderHandle_otherHandle_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered, v156, v194, v193);

  return timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered;
}

void sub_1A8311FA4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5 = objc_msgSend_guid(*(a1 + 40), a2, a3);
  objc_msgSend_simulateMessageDeliveryForGUID_(v3, v4, v5);
}

id sub_1A83130CC(void *a1)
{
  v1 = a1;
  v3 = objc_msgSend_rangeOfString_(v1, v2, @":");
  v5 = v4;
  v6 = objc_msgSend_rangeOfString_(v1, v4, @"/");
  if (v5)
  {
    v8 = v3;
  }

  else
  {
    v8 = -1;
  }

  if (v7)
  {
    v9 = v6;
  }

  else
  {
    v9 = -1;
  }

  if (v8 <= v9)
  {
    v10 = v9;
    objc_msgSend_substringToIndex_(v1, v7, v9 + 1);
  }

  else
  {
    v10 = v8;
    objc_msgSend_substringToIndex_(v1, v7, v8 + 1);
  }
  v11 = ;
  v12 = v11;
  v14 = objc_msgSend_substringFromIndex_(v1, v13, v10 + 1);

  v16 = v11;
  if (qword_1EB2EA300 != -1)
  {
    sub_1A84E108C();
  }

  v17 = objc_msgSend_objectForKeyedSubscript_(qword_1EB2EA2F0, v15, v14);

  if (v17)
  {
    objc_msgSend_objectForKeyedSubscript_(qword_1EB2EA2F0, v18, v14);
    v22 = LABEL_16:;
    goto LABEL_17;
  }

  v19 = objc_msgSend_objectForKeyedSubscript_(qword_1EB2EA2F8, v18, v14);

  if (v19)
  {
    objc_msgSend_objectForKeyedSubscript_(qword_1EB2EA2F8, v20, v14);
    goto LABEL_16;
  }

  v24 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v20, v21);
  objc_msgSend_setObject_forKeyedSubscript_(qword_1EB2EA2F0, v25, v24, v14);
  objc_msgSend_setObject_forKeyedSubscript_(qword_1EB2EA2F8, v26, v14, v24);
  v22 = objc_msgSend_stringByAppendingString_(v16, v27, v24);

LABEL_17:

  return v22;
}

uint64_t sub_1A8313254(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, a3);
  v4 = qword_1EB2EA2F0;
  qword_1EB2EA2F0 = v3;

  v7 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v5, v6);
  qword_1EB2EA2F8 = v7;

  return MEMORY[0x1EEE66BB8](v7);
}

void sub_1A831356C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1A831359C(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Connection Invalidated", v6, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__clearConnection(WeakRetained, v4, v5);
}

void sub_1A8313644(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Connection Interrupted", v6, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__clearConnection(WeakRetained, v4, v5);
}

void sub_1A83138CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A8313970;
  v6[3] = &unk_1E7812258;
  v7 = *(a1 + 48);
  v4 = objc_msgSend__backgroundMessagingAPIServiceWithErrorHandler_(v2, v3, v6);
  objc_msgSend_requestBackgroundMessagingAuthorizationForRecipients_completion_(v4, v5, *(a1 + 40), *(a1 + 48));
}

void sub_1A8313970(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Connection error", v6, 2u);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void sub_1A8313B68(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A8313C0C;
  v6[3] = &unk_1E7812258;
  v7 = *(a1 + 48);
  v4 = objc_msgSend__backgroundMessagingAPIServiceWithErrorHandler_(v2, v3, v6);
  objc_msgSend_checkAuthorizationStatusForRecipients_completion_(v4, v5, *(a1 + 40), *(a1 + 48));
}

void sub_1A8313C0C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Connection error", v6, 2u);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void sub_1A8313E2C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A8313ED4;
  v6[3] = &unk_1E7812258;
  v7 = *(a1 + 56);
  v4 = objc_msgSend__backgroundMessagingAPIServiceWithErrorHandler_(v2, v3, v6);
  objc_msgSend_sendBackgroundMessage_toRecipient_completion_(v4, v5, *(a1 + 40), *(a1 + 48), *(a1 + 56));
}

void sub_1A8313ED4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Connection error", v6, 2u);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

id sub_1A831484C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_guid(v3, v4, v5), v6 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend_containsString_(v6, v7, *(*(a1 + 32) + 48)), v6, v8))
  {
    v9 = v3;
    if (objc_msgSend_originalMessagePartRange(v9, v10, v11) == *(*(a1 + 32) + 56) && v12 == *(*(a1 + 32) + 64))
    {
      v14 = v9;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = v3;
  }

  return v14;
}

void *sub_1A8314B08()
{
  result = MEMORY[0x1AC56C560]("IMDChatRecordCopyAllChats", @"IMDPersistence");
  off_1EB2EA308 = result;
  return result;
}

void *sub_1A8314ED8()
{
  result = MEMORY[0x1AC56C560]("IMDAttachmentRecordCopyAttachmentGUIDsAndPathsForChatIdentifiersOnServices", @"IMDPersistence");
  off_1EB2EA318 = result;
  return result;
}

void *sub_1A8314F08()
{
  result = MEMORY[0x1AC56C560]("_IMDAttachmentRecordBulkCopy", @"IMDPersistence");
  off_1EB2EA328 = result;
  return result;
}

uint64_t sub_1A8316274(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_progressCount(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_maxProgressCount(*(a1 + 32), v5, v6);
  v10 = *(a1 + 32);
  if (v4 >= v7)
  {
    v15 = *(a1 + 32);

    return MEMORY[0x1EEE66B58](v15, sel_finishTest, v9);
  }

  else
  {
    v11 = objc_msgSend_progressCount(*(a1 + 32), v8, v9);
    objc_msgSend_setProgressCount_(v10, v12, v11 + 1);
    v14 = *(a1 + 32);

    return MEMORY[0x1EEE66B58](v14, sel_sendSyncStateChangedEvent, v13);
  }
}

void sub_1A83173D4()
{
  v0 = qword_1ED7679B8;
  qword_1ED7679B8 = &unk_1F1BA17A0;
}

void sub_1A83173EC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8018], a2, a3);
  byte_1EB2EA338 = objc_msgSend_getBoolFromDomain_forKey_(v4, v3, *MEMORY[0x1E69A7858], *MEMORY[0x1E69A7860]);
}

void sub_1A8318C88(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = MEMORY[0x1E696AD98];
      v7 = *(a1 + 32);
      v8 = objc_msgSend_count(*(a1 + 40), v4, v5);
      v10 = objc_msgSend_numberWithUnsignedInteger_(v6, v9, v8);
      v11 = *(a1 + 56);
      v12 = *(a1 + 64);
      v13 = *(a1 + 65);
      *buf = 138413314;
      *&buf[4] = v7;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      *&buf[22] = 1024;
      v31 = v11;
      v32 = 1024;
      v33 = v12;
      v34 = 1024;
      v35 = v13;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "updating/acting on query ID: %@  insertHistoricalMessages: %@, limit = %d hasMoreMessagesBefore: %d hasMoreMessagesAfter: %d", buf, 0x28u);
    }
  }

  v14 = *(a1 + 48);
  v15 = *(v14 + 424);
  if (v15)
  {
    isEqualToString = objc_msgSend_isEqualToString_(v15, v2, *(a1 + 32));
    v14 = *(a1 + 48);
    if (isEqualToString)
    {
      v17 = *(v14 + 424);
      *(v14 + 424) = 0;

      objc_msgSend__removeAllItems(*(a1 + 48), v18, v19);
      v14 = *(a1 + 48);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v31) = *(v14 + 80);
  v20 = *(a1 + 40);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = sub_1A8318EF0;
  v29[3] = &unk_1E78117B0;
  v29[4] = v14;
  v29[5] = buf;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(v20, v2, 2, v29);
  v22 = objc_msgSend__archivedItemsToReplace_isReplacingItems_(*(a1 + 48), v21, *(a1 + 40), *(a1 + 66));
  objc_msgSend__replaceAndSortItemsWithUnsortedItems_(*(a1 + 48), v23, v22);
  v26 = objc_msgSend__items(*(a1 + 48), v24, v25);
  objc_msgSend_im_logGUIDsForReason_(v26, v27, @"DidInsertHistoricalMessages");

  _Block_object_dispose(buf, 8);
  v28 = *MEMORY[0x1E69E9840];
}

void sub_1A8318EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1A8318D70);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A8318EF0(uint64_t a1, void *a2)
{
  v72 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v8 = objc_msgSend_type(v3, v4, v5);
  if (v8 == 4)
  {
    objc_msgSend__configureLocationShareItem_(*(a1 + 32), v6, v3);
  }

  v9 = objc_msgSend_message(v3, v6, v7);
  v12 = IMCoreMomentShareURLForMessage(v9);
  if (v12)
  {
    v13 = objc_msgSend_momentSharePresentationCache(*(a1 + 32), v10, v11);
    objc_msgSend_registerMomentShareItemForMessage_(v13, v14, v9);
  }

  v15 = objc_msgSend_service(v3, v10, v11);
  v18 = objc_msgSend_iMessageService(IMServiceImpl, v16, v17);
  v21 = objc_msgSend_internalName(v18, v19, v20);
  isEqualToIgnoringCase = objc_msgSend_isEqualToIgnoringCase_(v15, v22, v21);

  if (isEqualToIgnoringCase)
  {
    v26 = objc_msgSend_chatRegistry(*(a1 + 32), v24, v25);
    objc_msgSend__setChatHasCommunicatedOveriMessage_(v26, v27, *(a1 + 32));
  }

  if (objc_msgSend_isBreadcrumb(v3, v24, v25))
  {
    v30 = objc_msgSend_consumedSessionPayloads(v3, v28, v29);
    v33 = objc_msgSend_count(v30, v31, v32);

    if (v33)
    {
      v34 = [IMPluginPayload alloc];
      v36 = objc_msgSend_initWithMessageItem_(v34, v35, v3);
      v39 = objc_msgSend_sharedInstance(IMBalloonPluginManager, v37, v38);
      v41 = objc_msgSend_dataSourceForPluginPayload_(v39, v40, v36);
    }
  }

  if (!v8 && (*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && !objc_msgSend_errorCode(v3, v28, v29))
  {
    if (objc_msgSend_chatStyle(*(a1 + 32), v42, v43) == 45)
    {
      v46 = objc_msgSend__senderHandle(v3, v44, v45);
      if (objc_msgSend_isFromMe(v3, v47, v48))
      {
        v51 = objc_msgSend__otherHandle(v3, v49, v50);

        v46 = v51;
      }

      if (!v46)
      {
        goto LABEL_29;
      }

      if (IMOSLoggingEnabled())
      {
        v53 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v56 = objc_msgSend_recipient(*(a1 + 32), v54, v55);
          v68 = 138412546;
          v69 = v56;
          v70 = 2112;
          v71 = v46;
          _os_log_impl(&dword_1A823F000, v53, OS_LOG_TYPE_INFO, "Fixing recipient based on last message old recipient: (%@), messageAccount: (%@)", &v68, 0x16u);
        }
      }

      objc_msgSend_setRecipient_(*(a1 + 32), v52, v46);
      objc_msgSend_fetchBrandInfoIfNecessary(*(a1 + 32), v57, v58);
    }

    else
    {
      v59 = objc_msgSend_sharedInstance(IMAccountController, v44, v45);
      v62 = objc_msgSend_accountID(v3, v60, v61);
      v46 = objc_msgSend_accountForUniqueID_(v59, v63, v62);

      if (!v46)
      {
LABEL_29:

        goto LABEL_30;
      }

      if (IMOSLoggingEnabled())
      {
        v65 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
        {
          v66 = *(*(a1 + 32) + 128);
          v68 = 138412546;
          v69 = v66;
          v70 = 2112;
          v71 = v46;
          _os_log_impl(&dword_1A823F000, v65, OS_LOG_TYPE_INFO, "fixing up chat account based on last message: oldAccount: (%@), messageAccount: (%@)", &v68, 0x16u);
        }
      }

      objc_msgSend__setAccount_(*(a1 + 32), v64, v46);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    goto LABEL_29;
  }

LABEL_30:

  v67 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A8319750(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_isFromMe(v3, v4, v5))
  {
    isContact = *(a1 + 40);
  }

  else
  {
    v9 = objc_msgSend_account(*(a1 + 32), v6, v7);
    v12 = objc_msgSend_sender(v3, v10, v11);
    v14 = objc_msgSend_imHandleWithID_alreadyCanonical_(v9, v13, v12, 1);

    isContact = objc_msgSend_isContact(v14, v15, v16);
  }

  return isContact & 1;
}

uint64_t sub_1A83197F4(uint64_t a1, void *a2)
{
  v2 = a2;
  v5 = objc_msgSend__parentItem(v2, v3, v4);
  if (objc_msgSend_type(v5, v6, v7) || !objc_msgSend_canReply(v2, v8, v9))
  {
    v15 = 0;
  }

  else
  {
    v12 = objc_msgSend_message(v5, v10, v11);
    v15 = objc_msgSend_isFromMe(v12, v13, v14) ^ 1;
  }

  return v15;
}

uint64_t sub_1A83198E0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_msgSend__item(v2, v3, v4);
    v8 = objc_msgSend_isFromMe(v5, v6, v7) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1A831A084(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = objc_msgSend_chatRegistry(v3, v5, v6);
  objc_msgSend__chat_clearHistory_beforeGUID_afterGUID_queryID_(v8, v7, *(a1 + 32), 0, 0, v4);
}

void sub_1A831A2D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = objc_msgSend_chatRegistry(v3, v5, v6);
  objc_msgSend__chat_markAsSpam_queryID_isJunkReportedToCarrier_(v8, v7, *(a1 + 32), v4, *(a1 + 40));
}

void sub_1A831A838(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A831A7A4);
  }

  _Unwind_Resume(a1);
}

void sub_1A831B1E8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A831B1A8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1A831BB88()
{
  v0 = dispatch_queue_create("com.apple.MobileSMS.particiants_queue", 0);
  qword_1EB2EA340 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A831C70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A831C724(uint64_t a1, const char *a2, void *a3)
{
  isFiltered = objc_msgSend_isFiltered(a3, a2, a3);
  *(*(*(a1 + 40) + 8) + 24) |= isFiltered > 0;
  v5 = *(a1 + 32);
  v8 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v6, isFiltered);
  objc_msgSend_addObject_(v5, v7, v8);
}

void sub_1A831C918(uint64_t a1, const char *a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend__items(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_copy(v4, v5, v6);

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = v7;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v28, v32, 16);
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      v13 = 0;
      do
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v28 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v14;
          v19 = objc_msgSend_message(v16, v17, v18, v28);
          hasDataDetectorResults = objc_msgSend_hasDataDetectorResults(v19, v20, v21);

          if (hasDataDetectorResults)
          {
            v25 = objc_msgSend__copy(v16, v23, v24);

            objc_msgSend__handleItem_(*(a1 + 32), v26, v25);
            v16 = v25;
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v15, &v28, v32, 16);
    }

    while (v11);
  }

  v27 = *MEMORY[0x1E69E9840];
}

void sub_1A831D578(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = objc_msgSend_chatRegistry(v3, v5, v6);
  objc_msgSend__chat_markAsSpam_queryID_autoReport_isJunkReportedToCarrier_reportReason_(v8, v7, *(a1 + 32), v4, 0, 0, *(a1 + 40));
}

void sub_1A831E448(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8048], a2, a3);
  objc_msgSend_notifyListChanged(v5, v3, v4);
}

void sub_1A831F4BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int buf, uint64_t a12)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1A831F36CLL);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1A831F69C()
{
  result = MEMORY[0x1AC56C560]("PKPeerPaymentMessageTypeFromDataURL", @"PassKitCore");
  off_1EB2EA350 = result;
  return result;
}

void sub_1A8321C9C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

uint64_t sub_1A8321D08(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_1A83232EC(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AD40];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v7 = objc_msgSend_displayNameForChat_(v4, v6, *(a1 + 32));
  v10 = objc_msgSend_blockedStatus(v4, v8, v9);

  if (!v10)
  {
    v12 = objc_msgSend_attributedStringWithAttachment_(MEMORY[0x1E696AAB0], v11, *(a1 + 40));
    objc_msgSend_appendAttributedString_(v5, v13, v12);
    v14 = objc_alloc(MEMORY[0x1E696AAB0]);
    v16 = objc_msgSend_initWithString_(v14, v15, @" ");
    objc_msgSend_appendAttributedString_(v5, v17, v16);
  }

  v18 = objc_alloc(MEMORY[0x1E696AAB0]);
  v20 = objc_msgSend_initWithString_(v18, v19, v7);
  objc_msgSend_appendAttributedString_(v5, v21, v20);

  return v5;
}

void sub_1A8324D68(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = objc_msgSend_chatRegistry(v3, v5, v6);
  objc_msgSend__chat_loadUncachedAttachmentsCount_queryID_loadImmediately_(v8, v7, *(a1 + 32), v4, 1);
}

void sub_1A8324F4C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = objc_msgSend_chatRegistry(v3, v5, v6);
  objc_msgSend__chat_loadAttachments_queryID_loadImmediately_(v8, v7, *(a1 + 32), v4, 1);
}

void sub_1A83252F4(uint64_t a1, const char *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v15[0] = *(a1 + 40);
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], a2, v15, 1);
  objc_msgSend__updateRepliesIfNecessaryWithRemovedItems_threadIdentifiersOfRemovedParts_(v3, v5, v4, 0);

  objc_msgSend__removeItem_(*(a1 + 32), v6, *(a1 + 40));
  v7 = *(a1 + 32);
  v10 = objc_msgSend_guid(*(a1 + 40), v8, v9);
  v12 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v11, *(a1 + 48));
  objc_msgSend_cancelScheduledMessageWithGUID_destinations_cancelType_(v7, v13, v10, v12, *(a1 + 56));

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1A832574C(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v13, v17, 16);
  if (v4)
  {
    v7 = v4;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v2);
        }

        v10 = objc_msgSend__copy(*(*(&v13 + 1) + 8 * v9), v5, v6, v13);
        objc_msgSend_editScheduledMessageItem_scheduleType_deliveryTime_(*(a1 + 40), v11, v10, *(a1 + 56), *(a1 + 48));

        ++v9;
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v13, v17, 16);
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1A8325D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A8325D48(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v23 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v8 = v23;
    if (objc_msgSend_scheduleType(v8, v9, v10) == 2)
    {
      v13 = objc_msgSend_currentCalendar(MEMORY[0x1E695DEE8], v11, v12);
      v16 = objc_msgSend_time(*(a1 + 32), v14, v15);
      v19 = objc_msgSend_time(v8, v17, v18);
      v21 = objc_msgSend_compareDate_toDate_toUnitGranularity_(v13, v20, v16, v19, 128);

      if (v21)
      {
LABEL_6:

        goto LABEL_7;
      }

      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    }

    *a4 = 1;
    goto LABEL_6;
  }

LABEL_7:

  return MEMORY[0x1EEE66BB8](isKindOfClass);
}

void sub_1A8326E94(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A8326E40);
  }

  _Unwind_Resume(a1);
}

void sub_1A8327404(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A832738CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A8329228(id *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = a1[4];
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v18, v22, 16);
  if (v4)
  {
    v7 = v4;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v2);
        }

        v10 = objc_msgSend__copy(*(*(&v18 + 1) + 8 * v9), v5, v6, v18);
        objc_msgSend_setSatelliteMessageRetry_(v10, v11, 1);
        objc_msgSend_setIsPendingSatelliteSend_(v10, v12, 0);
        objc_msgSend__refreshContextWithAccountHandles(v10, v13, v14);
        objc_msgSend__handleItem_(a1[5], v15, v10);
        objc_msgSend_addObject_(a1[6], v16, v10);

        ++v9;
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v18, v22, 16);
    }

    while (v7);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1A83297A4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A83296E8);
  }

  _Unwind_Resume(a1);
}

double sub_1A8329F64()
{
  v0 = IMGetCachedDomainIntForKey();
  v1 = 30;
  if (v0)
  {
    v1 = v0;
  }

  result = v1;
  *&qword_1EB2EA360 = v1;
  return result;
}

void sub_1A832A608(uint64_t a1, const char *a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  shouldSendCancelTypingIndicator = objc_msgSend__shouldSendCancelTypingIndicator(*(a1 + 32), a2, a3);
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      v11 = v10[39];
      objc_msgSend_latestTypingIndicatorTimeInterval(v10, v8, v9);
      v13 = @"NO";
      *buf = 138412802;
      v32 = v11;
      if (shouldSendCancelTypingIndicator)
      {
        v13 = @"YES";
      }

      v33 = 2048;
      v34 = v12;
      v35 = 2112;
      v36 = v13;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "In cancel typing indicator block. _typingGUID %@ _latestTypingIndicatorInterval %f, shouldSendCancelTypingIndicator %@", buf, 0x20u);
    }
  }

  v14 = *(a1 + 32);
  if (((v14[39] != 0) & shouldSendCancelTypingIndicator) == 1)
  {
    if (objc_msgSend__chatStyleSupportsTypingAndCancelTypingIndicators(v14, v5, v6))
    {
      v15 = [IMMessage alloc];
      v18 = objc_msgSend__flagsForCancelTypingIndicatorMessage(*(a1 + 32), v16, v17);
      v20 = objc_msgSend_initWithSender_time_text_messageSubject_fileTransferGUIDs_flags_error_guid_subject_threadIdentifier_(v15, v19, 0, 0, 0, 0, 0, v18, 0, *(*(a1 + 32) + 312), 0, 0);
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v32 = v20;
          _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, " => Sending cancel typing message: %@", buf, 0xCu);
        }
      }

      objc_msgSend__sendMessage_adjustingSender_shouldQueue_(*(a1 + 32), v21, v20, 1, 0);
    }

    else if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, " => Not sending cancel typing message, the chat style does not support it", buf, 2u);
      }
    }

    v27 = *(a1 + 32);
    v26 = a1 + 32;
    v28 = *(v27 + 312);
    *(v27 + 312) = 0;

    v29 = *(*v26 + 264);
    *(*v26 + 264) = 0;
  }

  else if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = @"NO";
      if (shouldSendCancelTypingIndicator)
      {
        v24 = @"YES";
      }

      *buf = 138412290;
      v32 = v24;
      _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "*** We tried to send a cancel typing indicator, but already had no guid set. shouldSendCancelTypingIndicator set to %@", buf, 0xCu);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

void sub_1A832B4A0(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(a1 + 32);
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v17, v21, 16);
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        v11 = objc_msgSend_flags(v8, v9, v10, v17);
        v13 = objc_msgSend__copyWithFlags_(v8, v12, v11 | 0x2000);

        objc_msgSend__handleItem_(*(a1 + 40), v14, v13);
        ++v7;
      }

      while (v5 != v7);
      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v15, &v17, v21, 16);
    }

    while (v5);
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A832BF14(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    (*(result + 16))();
    v4 = *(a1 + 32);

    return objc_msgSend_setCurrentlyMarkingAsKnown_(v4, v3, 0);
  }

  return result;
}

void sub_1A832C0B0(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69A7FD0];
  v4 = a2;
  v7 = objc_msgSend_sharedInstance(v3, v5, v6);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A832C174;
  v10[3] = &unk_1E7812868;
  v8 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v8;
  objc_msgSend_recordAcceptedIntroductions_completion_(v7, v9, v4, v10);
}

void sub_1A832C174(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1554();
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, 0, v6);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = objc_msgSend_count(v5, v10, v11);
        v13 = *(a1 + 32);
        v16 = 134218242;
        v17 = v12;
        v18 = 2112;
        v19 = v13;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Recorded %lu marked as known contacts for chat: %@", &v16, 0x16u);
      }
    }

    v14 = *(a1 + 40);
    if (v14)
    {
      (*(v14 + 16))(v14, 1, 0);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1A832C628(uint64_t a1, const char *a2)
{
  v4 = objc_msgSend_introductionWithHandle_suggestedName_(MEMORY[0x1E69A80C8], a2, *(a1 + 32), a2);
  objc_msgSend_addObject_(*(a1 + 40), v3, v4);
  dispatch_group_leave(*(a1 + 48));
}

void sub_1A832D3A8(uint64_t a1, const char *a2)
{
  v22[57] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v22[0] = @"ignoreAlertsFlag";
  v22[1] = @"com.apple.iChat.LastArchivedMessageDate";
  v22[2] = @"com.apple.iChat.LastArchivedMessageID";
  v22[3] = @"CKChatConversationKeyboardKey";
  v22[4] = @"CKChatWatermarkMessageID";
  v22[5] = @"CKChatWatermarkTime";
  v22[6] = @"IMChatWatermarkMessageID";
  v22[7] = @"IMChatWatermarkDate";
  v22[8] = @"CKChatLastCanceledMessageTime";
  v22[9] = @"CKChatConsecutiveCanceledMessageCount";
  v22[10] = @"CKChatConsecutiveManuallyCanceledMessageCount";
  v22[11] = @"CKChatPreviousAccountsDictionaryKey";
  v3 = *MEMORY[0x1E69A6B68];
  v22[12] = @"CKChatUnmuteTime";
  v22[13] = v3;
  v22[14] = *MEMORY[0x1E69A6C78];
  v22[15] = @"hasBeenAutoSpamReported";
  v22[16] = @"wasAutoDetectedForSpam";
  v22[17] = @"wasDetectedAsSMSSpam";
  v22[18] = @"SMSCategory";
  v22[19] = @"SMSSubCategory";
  v22[20] = @"wasDetectedAsiMessageSpam";
  v22[21] = @"smsSpamExtensionName";
  v22[22] = @"numberOfTimesRespondedtoThread";
  v22[23] = @"hasViewedPotentialSpamChat";
  v22[24] = @"lastTUConversationCreatedDate";
  v22[25] = @"lastScheduledMessageCreatedDate";
  v4 = *MEMORY[0x1E69A6C20];
  v22[26] = @"shouldForceToSMS";
  v22[27] = v4;
  v22[28] = @"smsHandshakeState";
  v22[29] = @"messageHandshakeState";
  v22[30] = @"lastBlackholeReceiptPromptDate";
  v22[31] = @"restoredFromBlackhole";
  v5 = *MEMORY[0x1E69A6C28];
  v22[32] = *MEMORY[0x1E69A6B00];
  v22[33] = v5;
  v6 = *MEMORY[0x1E69A6AF8];
  v22[34] = *MEMORY[0x1E69A6BB8];
  v22[35] = v6;
  v7 = *MEMORY[0x1E69A6B58];
  v22[36] = @"emergencyTranscriptSharingState";
  v22[37] = v7;
  v8 = *MEMORY[0x1E69A6BE8];
  v22[38] = @"showAudioButtonInEntryView";
  v22[39] = v8;
  v9 = *MEMORY[0x1E69A6B28];
  v22[40] = *MEMORY[0x1E69A6C00];
  v22[41] = v9;
  v10 = *MEMORY[0x1E69A6CC0];
  v22[42] = *MEMORY[0x1E69A6CC8];
  v22[43] = v10;
  v11 = *MEMORY[0x1E69A6BC8];
  v22[44] = @"RCSGroupURI";
  v22[45] = v11;
  v12 = *MEMORY[0x1E69A6B08];
  v22[46] = *MEMORY[0x1E69A6B10];
  v22[47] = v12;
  v13 = *MEMORY[0x1E69A6B60];
  v22[48] = *MEMORY[0x1E69A6CE0];
  v22[49] = v13;
  v14 = *MEMORY[0x1E69A6C30];
  v22[50] = *MEMORY[0x1E69A6CA0];
  v22[51] = v14;
  v15 = *MEMORY[0x1E69A6A60];
  v22[52] = *MEMORY[0x1E69A6B98];
  v22[53] = v15;
  v16 = *MEMORY[0x1E69A6CB0];
  v22[54] = *MEMORY[0x1E69A7870];
  v22[55] = v16;
  v22[56] = *MEMORY[0x1E69A6AE8];
  v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], a2, v22, 57);
  v19 = objc_msgSend_setWithArray_(v2, v18, v17);
  v20 = qword_1ED7679D0;
  qword_1ED7679D0 = v19;

  v21 = *MEMORY[0x1E69E9840];
}

void sub_1A8330E70(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v6 = objc_msgSend_participants(*(a1 + 32), v4, v5);
  v8 = objc_msgSend_containsObject_(v6, v7, v3);

  v9 = IMOSLoggingEnabled();
  if (v8)
  {
    if (v9)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = v3;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "  * No need to invite: %@   - already in chat", &v14, 0xCu);
      }
    }
  }

  else
  {
    if (v9)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = v3;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "  * Need to invite: %@", &v14, 0xCu);
      }
    }

    objc_msgSend_addObject_(*(*(*(a1 + 40) + 8) + 40), v10, v3);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1A8331444(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A833139CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A83326F4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A83326C0);
  }

  _Unwind_Resume(a1);
}

void sub_1A8332A74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1A8332A90(uint64_t a1, char a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (objc_msgSend_containsMessageFromContactOrMe(WeakRetained, v3, v4))
    {
      v7 = objc_msgSend_lastAddressedHandleID(WeakRetained, v5, v6);
      if (objc_msgSend_length(v7, v8, v9))
      {
        v12 = objc_msgSend_recipient(WeakRetained, v10, v11);
        objc_msgSend_autoInviteToViewAvailabilityIfNeededFromHandleID_(v12, v13, v7);
      }

      else
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_15;
        }

        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *v14 = 0;
          _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Not sharing availability in chat with no lastAddressedHandleID", v14, 2u);
        }
      }

LABEL_15:
      goto LABEL_16;
    }

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Not sharing availability in chat with non contact that I have not participated in", v15, 2u);
      }

      goto LABEL_15;
    }
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    WeakRetained = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, WeakRetained, OS_LOG_TYPE_INFO, "Not auto inviting, chat is not eligible for sharing focus status", buf, 2u);
    }
  }

LABEL_16:
}

void sub_1A8332E58(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1A8332EEC;
  v3[3] = &unk_1E7812930;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

uint64_t sub_1A8332F04(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0 && IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Not able to share focus status from this device because the Focus setting Share Across Devices is disabled for this device.", v5, 2u);
    }
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_1A83333A8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A833338CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A83350DC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A8334FFCLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A8335318(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], a2, a3);
  isInternalInstall = objc_msgSend_isInternalInstall(v3, v4, v5);

  if (isInternalInstall)
  {
    v10 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], v7, v8);
    byte_1EB2EA370 = objc_msgSend_BOOLForKey_(v10, v9, @"CanAlwaysInlineReply");
  }

  else
  {
    byte_1EB2EA370 = 0;
  }
}

void sub_1A8335A38(uint64_t a1)
{
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1A8335B8C;
  v13[3] = &unk_1E7812980;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v14 = v8;
  v15 = v7;
  v16 = *(a1 + 72);
  objc_msgSend_enumerateObjectsUsingBlock_(v2, v9, v13);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A8335D78;
  v12[3] = &unk_1E78129A8;
  v10 = *(a1 + 72);
  v12[4] = *(a1 + 80);
  objc_msgSend_enumerateObjectsUsingBlock_(v10, v11, v12);
}

void sub_1A8335B8C(uint64_t a1, void *a2)
{
  v45 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v45;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v7 = v4;
  if (v4 && v4 != *(a1 + 32))
  {
    v8 = objc_msgSend_guid(v4, v5, v6);
    v11 = objc_msgSend_threadOriginator(v7, v9, v10);
    v14 = objc_msgSend_guid(v11, v12, v13);
    v17 = objc_msgSend_replyCountsByPart(v11, v15, v16);
    isEqual = objc_msgSend_isEqual_(v17, v18, *(a1 + 40));

    v22 = objc_msgSend_retractedPartIndexes(v11, v20, v21);
    v25 = objc_msgSend_retractedPartIndexes(*(a1 + 48), v23, v24);
    v27 = objc_msgSend_isEqual_(v22, v26, v25);

    v30 = objc_msgSend_body(v11, v28, v29);
    v33 = objc_msgSend_body(*(a1 + 48), v31, v32);
    v35 = objc_msgSend_isEqual_(v30, v34, v33);

    if (isEqual && v27 && (v35 & 1) != 0)
    {
      goto LABEL_18;
    }

    if (objc_msgSend_isEqualToString_(v14, v36, *(a1 + 56)))
    {
      v39 = objc_msgSend__copy(v7, v37, v38);
      objc_msgSend_setThreadOriginator_(v39, v40, *(a1 + 48));
      if (!v39)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (!objc_msgSend_isEqualToString_(v8, v37, *(a1 + 56)) || v7 == *(a1 + 48))
      {
        goto LABEL_18;
      }

      v39 = objc_msgSend__copy(v7, v41, v42);
      objc_msgSend_setReplyCountsByPart_(v39, v43, *(a1 + 40));
      if (!v39)
      {
LABEL_17:

LABEL_18:
        goto LABEL_19;
      }
    }

    v44 = *(a1 + 64);
    if (v44)
    {
      CFArrayAppendValue(v44, v39);
    }

    goto LABEL_17;
  }

LABEL_19:
}

void sub_1A8335D78(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v7 = a2;
  v5 = objc_msgSend_chatStyle(v2, v3, v4);
  objc_msgSend__handleItem_forChatStyle_updateReplyCounts_(v2, v6, v7, v5, 0);
}

void sub_1A83362AC(void **a1, const char *a2, uint64_t a3)
{
  v75 = *MEMORY[0x1E69E9840];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v4 = objc_msgSend__items(a1[4], a2, a3);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v69, v74, 16);
  if (v6)
  {
    v9 = v6;
    theArray = 0;
    v10 = *v70;
    v11 = 0x1E69A8000uLL;
    v62 = v4;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v70 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v13 = *(*(&v69 + 1) + 8 * i);
        v14 = objc_msgSend_guid(v13, v7, v8);
        v15 = *(v11 + 312);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_containsObject_(a1[5], v16, v14) & 1) == 0 && (objc_msgSend_containsObject_(a1[6], v17, v14) & 1) == 0)
        {
          v18 = v13;
          v21 = objc_msgSend_threadOriginator(v18, v19, v20);
          v24 = objc_msgSend_threadIdentifier(v18, v22, v23);
          v27 = objc_msgSend_guid(v21, v25, v26);
          v29 = v27;
          v63 = v24;
          if (v24 && v27)
          {
            v32 = objc_msgSend_objectForKey_(a1[7], v28, v27);
            if (v32)
            {
              v33 = objc_msgSend__copy(v18, v30, v31);
              v34 = v21;
              v35 = v33;
              v61 = v34;
              v38 = objc_msgSend__copy(v34, v36, v37);
              objc_msgSend_setReplyCountsByPart_(v38, v39, v32);
              objc_msgSend_setThreadOriginator_(v35, v40, v38);
              v41 = theArray;
              if (!theArray)
              {
                v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
              }

              theArray = v41;
              if (v41 && v35)
              {
                CFArrayAppendValue(v41, v35);
              }

              v21 = v61;
            }

            if ((objc_msgSend_containsObject_(a1[8], v30, v63) & 1) != 0 || objc_msgSend_containsObject_(a1[6], v42, v29))
            {
              v44 = objc_msgSend__copy(v18, v42, v43);
              objc_msgSend_setThreadOriginator_(v44, v45, 0);
              v46 = theArray;
              if (!theArray)
              {
                v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
              }

              theArray = v46;
              if (v44 && v46)
              {
                CFArrayAppendValue(v46, v44);
              }
            }
          }

          v49 = objc_msgSend_objectForKey_(a1[7], v28, v14);
          if (v49)
          {
            v50 = objc_msgSend__copy(v18, v47, v48);
            objc_msgSend_setReplyCountsByPart_(v50, v51, v49);
            v52 = theArray;
            if (!theArray)
            {
              v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            theArray = v52;
            if (v50 && v52)
            {
              CFArrayAppendValue(v52, v50);
            }
          }

          v4 = v62;
          v11 = 0x1E69A8000;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v69, v74, 16);
    }

    while (v9);
  }

  else
  {
    theArray = 0;
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v53 = theArray;
  v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v54, &v65, v73, 16);
  if (v55)
  {
    v57 = v55;
    v58 = *v66;
    do
    {
      for (j = 0; j != v57; ++j)
      {
        if (*v66 != v58)
        {
          objc_enumerationMutation(v53);
        }

        objc_msgSend__handleItem_(a1[4], v56, *(*(&v65 + 1) + 8 * j));
      }

      v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v56, &v65, v73, 16);
    }

    while (v57);
  }

  v60 = *MEMORY[0x1E69E9840];
}

void sub_1A8336A24()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.Messages.IMChatKeyTransparency", v2);
  v1 = qword_1EB2E9138;
  qword_1EB2E9138 = v0;
}

void sub_1A8336CC0(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v11 = 0;
  objc_msgSend_markFailureSeenForResults_error_(v3, a2, v4, &v11);
  v5 = v11;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A8336D9C;
  v7[3] = &unk_1E7810D08;
  v8 = v5;
  v9 = *(a1 + 48);
  v10 = *(a1 + 32);
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void sub_1A8336D9C(uint64_t a1, const char *a2, uint64_t a3)
{
  v70 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v3 = MEMORY[0x1E695DF70];
    v4 = (a1 + 40);
    v5 = objc_msgSend_count(*(a1 + 40), a2, a3);
    v60 = objc_msgSend_arrayWithCapacity_(v3, v6, v5);
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = *v4;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v61, v69, 16);
    if (v10)
    {
      v58 = *v62;
      do
      {
        v11 = 0;
        do
        {
          if (*v62 != v58)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v61 + 1) + 8 * v11);
          v13 = objc_msgSend_sharedController(IMKeyTransparencyController, v8, v9);
          v16 = objc_msgSend_ID(v12, v14, v15);
          v19 = objc_msgSend__stripFZIDPrefix(v16, v17, v18);
          v21 = objc_msgSend_idsIDInfoResultForHandleID_(v13, v20, v19);

          v24 = objc_msgSend_uri(v21, v22, v23);
          v25 = MEMORY[0x1E69DB500];
          v28 = objc_msgSend_applicationIdentifier(*(a1 + 48), v26, v27);
          v30 = objc_msgSend_addApplicationPrefixForIdentifier_uri_(v25, v29, v28, v24);

          v33 = objc_msgSend_sharedController(IMKeyTransparencyController, v31, v32);
          v36 = objc_msgSend_ID(v12, v34, v35);
          v39 = objc_msgSend__stripFZIDPrefix(v36, v37, v38);
          v41 = objc_msgSend_ktVerifierResultForHandleID_(v33, v40, v39);

          v42 = MEMORY[0x1E696AEC0];
          v45 = objc_msgSend_name(v12, v43, v44);
          v48 = objc_msgSend_uiStatus(v41, v46, v47);
          v50 = objc_msgSend_stringWithFormat_(v42, v49, @"(name:%@, uri:%@, uiStatus:%lu)", v45, v30, v48);

          objc_msgSend_addObject_(v60, v51, v50);
          ++v11;
        }

        while (v10 != v11);
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v61, v69, 16);
      }

      while (v10);
    }

    if (IMOSLoggingEnabled())
    {
      v52 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        v54 = objc_msgSend_componentsJoinedByString_(v60, v53, @" ");;
        v55 = *(a1 + 32);
        *buf = 138412546;
        v66 = v54;
        v67 = 2112;
        v68 = v55;
        _os_log_impl(&dword_1A823F000, v52, OS_LOG_TYPE_INFO, "IMChat_KT There was an error marking KT failure as seen for participants [%@] with error: %@", buf, 0x16u);
      }
    }
  }

  v56 = *MEMORY[0x1E69E9840];
}

void sub_1A8339988(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v9 = objc_msgSend_chatRegistry(v3, v5, v6);
  v8 = *(a1 + 64);
  objc_msgSend__chat_loadHistory_limit_beforeGUID_afterGUID_threadIdentifier_queryID_synchronous_completion_(v9, v7, *(a1 + 32), *(a1 + 56), *(a1 + 40), 0, 0, v4, v8, *(a1 + 48));
}

void sub_1A8339D40(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A8339CE0);
  }

  _Unwind_Resume(a1);
}

void sub_1A8339D74(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 64);
      v9 = *(a1 + 72);
      *buf = 138413058;
      v15 = v3;
      v16 = 2112;
      v17 = v7;
      v18 = 2048;
      v19 = v8;
      v20 = 2048;
      v21 = v9;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Completing queryID: %@, loadMessagesBeforeAndAfterGUID: %@ numberOfMessagesBeforeGUID: %lu numberOfMessagesAfterGUID: %lu", buf, 0x2Au);
    }
  }

  v10 = objc_msgSend_chatRegistry(*(a1 + 40), v4, v5);
  v13 = *(a1 + 80);
  objc_msgSend__chat_loadPagedHistory_numberOfMessagesBefore_numberOfMessagesAfter_messageGUID_threadIdentifier_queryID_synchronous_completion_(v10, v11, *(a1 + 40), *(a1 + 64), *(a1 + 72), *(a1 + 32), *(a1 + 48), v3, v13, *(a1 + 56));

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1A8339EB8(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7[0] = 67109378;
      v7[1] = a2;
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "loadMessagesBeforeAndAfterGUID completion with success: %d error: %@", v7, 0x12u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1A833A1E8(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      *buf = 138412802;
      v20 = v3;
      v21 = 2112;
      v22 = v7;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Executing queryID: %@, fetchMessageHistoryForDateInterval: %@ chatGUIDs: %@", buf, 0x20u);
    }
  }

  v9 = objc_msgSend_chatRegistry(*(a1 + 48), v4, v5);
  v10 = *(a1 + 48);
  v11 = *(a1 + 32);
  v12 = *(a1 + 64);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1A833A3B0;
  v15[3] = &unk_1E7812AB0;
  v16 = v11;
  v17 = *(a1 + 40);
  v18 = *(a1 + 56);
  objc_msgSend__chat_fetchHistorySummary_dateInterval_synchronous_queryID_completion_(v9, v13, v10, v16, v12, v3, v15);

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1A833A3B0(void *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = a1[4];
      v9 = a1[5];
      v11 = 138412802;
      v12 = v5;
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Finished queryID: %@, fetchMessageHistoryForDateInterval: %@ chatGUIDs: %@", &v11, 0x20u);
    }
  }

  (*(a1[6] + 16))();

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1A833A4D0(void *a1, char a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = a1[4];
        v8 = a1[5];
        v11 = 138412802;
        v12 = v7;
        v13 = 2112;
        v14 = v8;
        v15 = 2112;
        v16 = v5;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Query completed for fetchMessageHistoryForDateInterval: %@ chatGUIDs: %@, error: %@", &v11, 0x20u);
      }
    }
  }

  else
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1704(a1);
    }

    (*(a1[6] + 16))();
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1A833A814(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      *buf = 138412546;
      v19 = v3;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Executing queryID: %@, fetchOldestMessageDate chatGUID: %@", buf, 0x16u);
    }
  }

  v8 = objc_msgSend_chatRegistry(*(a1 + 40), v4, v5);
  v9 = *(a1 + 40);
  v10 = *(a1 + 56);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1A833A9C4;
  v14[3] = &unk_1E7812B28;
  v15 = v3;
  v16 = *(a1 + 32);
  v17 = *(a1 + 48);
  v11 = v3;
  objc_msgSend__chat_fetchOldestMessageDateForChat_synchronous_queryID_completion_(v8, v12, v9, v10, v11, v14);

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1A833A9C4(void *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = a1[4];
      v9 = a1[5];
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Finished queryID: %@, fetchOldestMessageDate chatGUID: %@", &v11, 0x16u);
    }
  }

  (*(a1[6] + 16))();

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1A833AADC(uint64_t a1, char a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 32);
        v10 = 138412546;
        v11 = v7;
        v12 = 2112;
        v13 = v5;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Query completed for fetchOldestMessageDate chatGUID: %@, error: %@", &v10, 0x16u);
      }
    }
  }

  else
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E178C(a1);
    }

    (*(*(a1 + 40) + 16))();
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1A833ADA0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = objc_msgSend_chatRegistry(v3, v5, v6);
  objc_msgSend__chat_loadFrequentReplies_limit_queryID_loadImmediately_(v8, v7, *(a1 + 32), *(a1 + 40), v4, *(a1 + 48));
}

void sub_1A833AFCC(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 424), a2);
  v4 = a2;
  v8 = objc_msgSend_chatRegistry(*(a1 + 32), v5, v6);
  objc_msgSend__chat_loadUnreadMessages_limit_fallbackGUID_queryID_loadImmediately_(v8, v7, *(a1 + 32), *(a1 + 48), *(a1 + 40), v4, *(a1 + 56));
}

void sub_1A833B288(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = objc_msgSend_chatRegistry(v3, v5, v6);
  objc_msgSend__chat_loadAttachments_queryID_loadImmediately_(v8, v7, *(a1 + 32), v4, 0);
}

void sub_1A833B2FC(uint64_t a1, int a2, void *a3)
{
  v15 = a3;
  v5 = *(*(a1 + 32) + 360);
  objc_msgSend__setAttachments_(*(a1 + 32), v6, 0);
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = v15;
    if (a2)
    {
      v11 = 1;
      v12 = v5;
      v10 = 0;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    (*(v9 + 16))(v9, v11, v12, v10);
  }

  v13 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v7, v8);
  objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v13, v14, @"__kIMChatDidFetchAttachmentsNotification", *(a1 + 32), 0);
}

void sub_1A833B46C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = objc_msgSend_chatRegistry(v3, v5, v6);
  objc_msgSend__chat_isDownloadingPurgedAssetsForChat_queryID_loadImmediately_(v8, v7, *(a1 + 32), v4, 1);
}

void sub_1A833B5CC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = objc_msgSend_chatRegistry(v3, v5, v6);
  objc_msgSend__chat_isDownloadingPurgedAssetsForChat_queryID_loadImmediately_(v8, v7, *(a1 + 32), v4, 0);
}

void sub_1A833BC48(uint64_t a1, void *a2)
{
  v21 = a2;
  v5 = objc_msgSend_transferGUID(v21, v3, v4);
  if (objc_msgSend_containsObject_(*(a1 + 32), v6, v5))
  {
    objc_msgSend_removeObject_(*(a1 + 32), v7, v5);
    objc_msgSend_addObject_(*(a1 + 40), v8, v21);
  }

  else if (IMFileTransferGUIDIsTemporary())
  {
    v11 = objc_msgSend_messageItem(v21, v9, v10);
    v14 = objc_msgSend_guid(v11, v12, v13);

    objc_msgSend_index(v21, v15, v16);
    v17 = IMFileTransferGUIDForAttachmentMessagePartAtMessageGUIDAndMessagePartIndex();
    if (objc_msgSend_containsObject_(*(a1 + 32), v18, v17))
    {
      objc_msgSend_removeObject_(*(a1 + 32), v19, v17);
      objc_msgSend_addObject_(*(a1 + 40), v20, v21);
    }
  }
}

id _IMStringFromIMChatParticipantState(__int16 a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v5 = v2;
  if (a1)
  {
    objc_msgSend_appendString_(v2, v3, @"Not Yet Invited");
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (objc_msgSend_length(v5, v3, v4))
  {
    objc_msgSend_appendString_(v5, v6, @", ");
  }

  objc_msgSend_appendString_(v5, v6, @"Invite Failed");
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_15:
  if (objc_msgSend_length(v5, v3, v4))
  {
    objc_msgSend_appendString_(v5, v7, @", ");
  }

  objc_msgSend_appendString_(v5, v7, @"Deciding");
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_18:
  if (objc_msgSend_length(v5, v3, v4))
  {
    objc_msgSend_appendString_(v5, v8, @", ");
  }

  objc_msgSend_appendString_(v5, v8, @"Declined");
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_21:
  if (objc_msgSend_length(v5, v3, v4))
  {
    objc_msgSend_appendString_(v5, v9, @", ");
  }

  objc_msgSend_appendString_(v5, v9, @"Joined");
  if ((a1 & 0x20) == 0)
  {
LABEL_7:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_24:
  if (objc_msgSend_length(v5, v3, v4))
  {
    objc_msgSend_appendString_(v5, v10, @", ");
  }

  objc_msgSend_appendString_(v5, v10, @"Left");
  if ((a1 & 0x40) == 0)
  {
LABEL_8:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_27:
  if (objc_msgSend_length(v5, v3, v4))
  {
    objc_msgSend_appendString_(v5, v11, @", ");
  }

  objc_msgSend_appendString_(v5, v11, @"Kicked");
  if ((a1 & 0x80) == 0)
  {
LABEL_9:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_33;
  }

LABEL_30:
  if (objc_msgSend_length(v5, v3, v4))
  {
    objc_msgSend_appendString_(v5, v12, @", ");
  }

  objc_msgSend_appendString_(v5, v12, @"Banned");
  if ((a1 & 0x100) != 0)
  {
LABEL_33:
    if (objc_msgSend_length(v5, v3, v4))
    {
      objc_msgSend_appendString_(v5, v13, @", ");
    }

    objc_msgSend_appendString_(v5, v13, @"Removing");
  }

LABEL_36:

  return v5;
}

__CFString *_IMStringFromIMChatJoinState(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7812D48[a1];
  }
}

void sub_1A833E66C(uint64_t a1, const char *a2)
{
  v163 = *MEMORY[0x1E69E9840];
  v2 = a1 + 32;
  v131 = objc_msgSend__getDeleteChatItemMap_(*(a1 + 32), a2, *(a1 + 40));
  v130 = objc_msgSend__getMessageChatItemMap_withDeleteMap_andAllChatItems_(*v2, v3, *(v2 + 8), v131, *(a1 + 48));
  v127 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v126 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v125 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  obj = objc_msgSend_allKeys(v131, v4, v5);
  v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v154, v162, 16);
  if (v132)
  {
    v124 = v143;
    v129 = *v155;
    do
    {
      v8 = 0;
      do
      {
        if (*v155 != v129)
        {
          v9 = v8;
          objc_enumerationMutation(obj);
          v8 = v9;
        }

        v134 = v8;
        v10 = *(*(&v154 + 1) + 8 * v8);
        v135 = objc_msgSend_objectsForKey_(v131, v7, v10, v124);
        v13 = objc_msgSend_lastObject(v135, v11, v12);
        v137 = objc_msgSend__parentItem(v13, v14, v15);

        v136 = objc_msgSend_objectsForKey_(v130, v16, v10);
        if (objc_msgSend_count(v136, v17, v18) == 1)
        {
          v21 = objc_msgSend_firstObject(v136, v19, v20);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = v21;
            v150 = 0u;
            v151 = 0u;
            v152 = 0u;
            v153 = 0u;
            v23 = v135;
            v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v150, v161, 16);
            if (v25)
            {
              v26 = *v151;
              while (2)
              {
                for (i = 0; i != v25; ++i)
                {
                  if (*v151 != v26)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v28 = *(*(&v150 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v29 = v28;
                    v32 = objc_msgSend_aggregateAttachmentParts(v22, v30, v31);
                    v34 = objc_msgSend_containsObject_(v32, v33, v29);

                    if (v34)
                    {
                      continue;
                    }
                  }

                  v37 = IMLogHandleForCategory();
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                  {
                    sub_1A84E19B8(&v148, v149, v37);
                  }

                  v36 = 0;
                  goto LABEL_24;
                }

                v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v35, &v150, v161, 16);
                v36 = 1;
                if (v25)
                {
                  continue;
                }

                break;
              }
            }

            else
            {
              v36 = 1;
            }

LABEL_24:
          }

          else
          {
            v36 = 0;
          }
        }

        else
        {
          v36 = 0;
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v41 = objc_msgSend_count(v136, v39, v40);
        if ((v41 == objc_msgSend_count(v135, v42, v43)) & ~v36 | isKindOfClass & 1)
        {
          if (IMOSLoggingEnabled())
          {
            v48 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v160 = v10;
              _os_log_impl(&dword_1A823F000, v48, OS_LOG_TYPE_INFO, "Request to delete entire chatItem for message (guid: %@). Adding messageGUID for deletion.", buf, 0xCu);
            }
          }

          v49 = objc_msgSend_guid(v137, v46, v47);
          objc_msgSend_addObject_(v127, v50, v49);

          objc_msgSend_addObject_(v126, v51, v137);
        }

        else
        {
          v52 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8018], v44, v45);
          BoolFromDomain_forKey_defaultValue = objc_msgSend_getBoolFromDomain_forKey_defaultValue_(v52, v53, @"com.apple.MobileSMS", @"SuppressDeleteParts", 0);

          if ((BoolFromDomain_forKey_defaultValue & 1) == 0)
          {
            if (IMOSLoggingEnabled())
            {
              v56 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_1A823F000, v56, OS_LOG_TYPE_INFO, "Request to delete subset of chatItems from message. Update message.", buf, 2u);
              }
            }

            v57 = *(a1 + 40);
            v58 = *(*(a1 + 32) + 392);
            v146 = 0;
            v147 = 0;
            v59 = objc_msgSend__itemWithChatItemsDeleted_fromItem_indexesOfItemsDeleted_indexToRangeMapOfItemsDeleted_(v58, v55, v57, v137, &v147, &v146);
            v60 = v147;
            v61 = v146;
            if (IMOSLoggingEnabled())
            {
              v62 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v160 = v59;
                _os_log_impl(&dword_1A823F000, v62, OS_LOG_TYPE_INFO, "New item after removing parts: %@", buf, 0xCu);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v65 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v160 = v61;
                _os_log_impl(&dword_1A823F000, v65, OS_LOG_TYPE_INFO, "DELETING PARTS index:range map: %@", buf, 0xCu);
              }
            }

            v66 = objc_msgSend_message(v59, v63, v64);
            v67 = *(a1 + 32);
            v70 = objc_msgSend_now(MEMORY[0x1E695DF00], v68, v69);
            objc_msgSend_updateMessage_withIndexesOfDeletedItems_withIndexToRangeMapOfDeletedItems_deleteDate_(v67, v71, v66, v60, v61, v70);

            objc_msgSend__handleItem_(*(a1 + 32), v72, v59);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v73 = v137;
              v76 = objc_msgSend_replyCountsByPart(v73, v74, v75);
              v79 = objc_msgSend_count(v76, v77, v78) == 0;

              if (!v79)
              {
                v142[0] = MEMORY[0x1E69E9820];
                v142[1] = 3221225472;
                v143[0] = sub_1A833F060;
                v143[1] = &unk_1E7812C18;
                v144 = v73;
                v145 = v125;
                objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v61, v80, v142);
              }
            }
          }
        }

        v8 = v134 + 1;
      }

      while (v134 + 1 != v132);
      v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v154, v162, 16);
    }

    while (v132);
  }

  objc_msgSend__updateRepliesIfNecessaryWithRemovedItems_threadIdentifiersOfRemovedParts_(*(a1 + 32), v81, v126, v125);
  if (objc_msgSend_count(v127, v82, v83))
  {
    if (IMOSLoggingEnabled())
    {
      v88 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
      {
        v91 = objc_msgSend_count(v127, v89, v90);
        *buf = 134217984;
        v160 = v91;
        _os_log_impl(&dword_1A823F000, v88, OS_LOG_TYPE_INFO, "Recently Deleted | Will move %lu messageGUIDs to recently deleted", buf, 0xCu);
      }
    }

    v92 = objc_msgSend_sharedRegistry(IMChatRegistry, v86, v87);
    v95 = objc_msgSend_now(MEMORY[0x1E695DF00], v93, v94);
    objc_msgSend_moveMessagesWithGUIDsToRecentlyDeleted_deleteDate_synchronously_completionHandler_(v92, v96, v127, v95, 0, &unk_1F1B6ED60);

    v97 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v98 = v126;
    v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(v98, v99, &v138, v158, 16);
    if (v102)
    {
      v103 = *v139;
      v104 = *MEMORY[0x1E69A6930];
      do
      {
        for (j = 0; j != v102; ++j)
        {
          if (*v139 != v103)
          {
            objc_enumerationMutation(v98);
          }

          v106 = *(*(&v138 + 1) + 8 * j);
          v107 = objc_msgSend_balloonBundleID(v106, v100, v101);
          v108 = IMBalloonExtensionIDWithSuffix();
          isEqualToString = objc_msgSend_isEqualToString_(v107, v109, v108);

          if (isEqualToString)
          {
            objc_msgSend_addObject_(v97, v111, v106);
          }

          objc_msgSend__removeItem_(*(a1 + 32), v111, v106);
        }

        v102 = objc_msgSend_countByEnumeratingWithState_objects_count_(v98, v100, &v138, v158, 16);
      }

      while (v102);
    }

    v114 = objc_msgSend_sharedCoordinator(MEMORY[0x1E69A8218], v112, v113);
    v117 = objc_msgSend_copy(v97, v115, v116);
    objc_msgSend_informOfDeletedMessagesWithMessages_(v114, v118, v117);
  }

  v119 = *(a1 + 32);
  v120 = objc_msgSend_numberOfMessagesToKeepLoaded(v119, v84, v85);
  v122 = objc_msgSend_loadMessagesBeforeDate_limit_loadImmediately_(v119, v121, 0, v120, 0);

  v123 = *MEMORY[0x1E69E9840];
}

void sub_1A833F060(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v23, v27, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v23 + 1) + 8 * v13);
        v15 = objc_msgSend_guid(*(a1 + 32), v9, v10);
        objc_msgSend_integerValue(v5, v16, v17);
        objc_msgSend_rangeValue(v14, v18, v19);
        ThreadIdentifierWithOriginatorGUID = IMMessageCreateThreadIdentifierWithOriginatorGUID();

        if (ThreadIdentifierWithOriginatorGUID)
        {
          objc_msgSend_addObject_(*(a1 + 40), v21, ThreadIdentifierWithOriginatorGUID);
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v23, v27, 16);
    }

    while (v11);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void sub_1A833F1BC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedRegistry(IMChatRegistry, a2, a3);
  objc_msgSend_updateRecoverableMessagesMetadataSynchronously_completionHandler_(v4, v3, 0, 0);
}

id sub_1A833F358(uint64_t a1, const char *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  objc_msgSend__updateRepliesIfNecessaryWithRemovedItems_threadIdentifiersOfRemovedParts_(*(a1 + 32), a2, *(a1 + 40), 0);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = *(a1 + 40);
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v32, v37, 16);
  if (v4)
  {
    v5 = *v33;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v33 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v32 + 1) + 8 * i);
        if (IMOSLoggingEnabled())
        {
          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Request to delete message item for message.", buf, 2u);
          }
        }

        v11 = objc_msgSend_remoteDaemon(*(a1 + 32), v8, v9);
        v14 = objc_msgSend_guid(v7, v12, v13);
        v36 = v14;
        v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v15, &v36, 1);
        v19 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v17, v18);
        objc_msgSend_deleteMessageWithGUIDs_queryID_(v11, v20, v16, v19);

        objc_msgSend__removeItem_(*(a1 + 32), v21, v7);
      }

      v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v32, v37, 16);
    }

    while (v4);
  }

  v23 = *(a1 + 32);
  v26 = objc_msgSend_numberOfMessagesToKeepLoaded(v23, v24, v25);
  result = objc_msgSend_loadMessagesBeforeDate_limit_loadImmediately_(v23, v27, 0, v26, 0);
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A833F880(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend__copy(*(a1 + 32), a2, a3);
  objc_msgSend_setExpireState_(v6, v4, 3);
  objc_msgSend__handleItem_(*(a1 + 40), v5, v6);
}

void sub_1A833FA70(uint64_t a1, const char *a2, uint64_t a3)
{
  v9 = objc_msgSend__copy(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_flags(v9, v4, v5);
  objc_msgSend_setFlags_(v9, v7, v6 | 0x800000000);
  objc_msgSend__handleItem_(*(a1 + 40), v8, v9);
}

void sub_1A833FB80(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_flags(v4, a2, a3);
  v13 = objc_msgSend_copyWithFlags_(v4, v6, v5);
  v9 = objc_msgSend_messageID(*(a1 + 32), v7, v8);
  objc_msgSend__setMessageID_(v13, v10, v9);
  objc_msgSend_setSelectedRichCardIndex_(v13, v11, *(a1 + 48));
  objc_msgSend__handleItem_keepExistingIndex_(*(a1 + 40), v12, v13, 1);
}

void sub_1A833FDFC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_flags(v4, a2, a3);
  v15 = objc_msgSend__copyWithFlags_(v4, v6, v5 | 0x400000);
  v9 = objc_msgSend_date(MEMORY[0x1E695DF00], v7, v8);
  objc_msgSend_setTimePlayed_(v15, v10, v9);

  if (objc_msgSend_isExpirable(*(a1 + 32), v11, v12))
  {
    if (IMMessageItemShouldAutomaticallySave())
    {
      objc_msgSend_setExpireState_(v15, v14, 3);
    }

    else
    {
      objc_msgSend_setExpireState_(v15, v14, 1);
    }
  }

  objc_msgSend__handleItem_(*(a1 + 40), v13, v15);
}

void sub_1A8340058(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_flags(v4, a2, a3);
  v13 = objc_msgSend__copyWithFlags_(v4, v6, v5);
  v7 = *(a1 + 32);
  v10 = objc_msgSend_date(MEMORY[0x1E695DF00], v8, v9);
  objc_msgSend_setTimeExpressiveSendPlayed_(v7, v11, v10);

  objc_msgSend__handleItem_(*(a1 + 40), v12, v13);
}

void sub_1A8340E18(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v8;
      v6 = objc_msgSend_sharedInstance(IMFileTransferCenter, v4, v5);
      objc_msgSend_setCommSafetySensitiveForTransfer_value_(v6, v7, v3, *(a1 + 32));
    }
  }
}

void sub_1A8340EBC(id *a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v2 = a1[4];
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v35, v39, 16);
  if (v4)
  {
    v7 = v4;
    v8 = *v36;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v35 + 1) + 8 * i);
        v11 = objc_msgSend__item(v10, v5, v6, v35);
        v14 = objc_msgSend__item(v10, v12, v13);
        v17 = objc_msgSend_flags(v14, v15, v16);
        v19 = objc_msgSend__copyWithFlags_(v11, v18, v17);

        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_setNeedsReloadForTransferStatusChangeWithType_(v19, v20, 0);
        }

        objc_msgSend__handleItem_(a1[5], v20, v19);
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v35, v39, 16);
    }

    while (v7);
  }

  v23 = a1[6];
  if (v23)
  {
    v24 = objc_msgSend__item(v23, v21, v22);
    v27 = objc_msgSend__item(a1[6], v25, v26);
    v30 = objc_msgSend_flags(v27, v28, v29);
    v32 = objc_msgSend__copyWithFlags_(v24, v31, v30);

    if (objc_opt_respondsToSelector())
    {
      objc_msgSend_setNeedsReloadForTransferStatusChangeWithType_(v32, v33, 0);
    }

    objc_msgSend__handleItem_(a1[5], v33, v32, v35);
  }

  v34 = *MEMORY[0x1E69E9840];
}

void sub_1A8341AA4(uint64_t a1, const char *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend__items(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_copy(v4, v5, v6);

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v7;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v25, v29, 16);
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      v13 = 0;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v25 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v14;
          if (objc_msgSend_actionable(v16, v17, v18, v25))
          {
            v21 = objc_msgSend_copy(v16, v19, v20);
            objc_msgSend_setActionable_(v21, v22, 0);
            objc_msgSend__handleItem_(*(a1 + 32), v23, v21);
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v15, &v25, v29, 16);
    }

    while (v11);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void sub_1A8342020(void *a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_context(a1, a2, a3);
  objc_msgSend_setInvitation_(v5, v4, a3);
}

uint64_t sub_1A8342070(void *a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_flags(a1, a2, a3);

  return objc_msgSend__copyWithFlags_(a1, v4, v5);
}

void *sub_1A83420AC(void *a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_messageID(a1, a2, a3);
  v7 = objc_msgSend_copyWithFlags_(a1, v6, a3);
  objc_msgSend__setMessageID_(v7, v8, v5);
  return v7;
}

void sub_1A83421F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = objc_msgSend_sharedController(IMDaemonController, v4, v5);
  v8 = objc_msgSend_synchronousRemoteDaemon(v10, v6, v7);
  objc_msgSend__automation_markMessagesAsRead_messageGUID_forChatGUID_fromMe_queryID_(v8, v9, *(a1 + 48), *(a1 + 32), *(a1 + 40), *(a1 + 49), v3);
}

uint64_t sub_1A834232C()
{
  v0 = objc_alloc(MEMORY[0x1E69A82B8]);
  v2 = objc_msgSend_initWithTitle_maximumNumberOfTrackedObjects_queue_(v0, v1, @"IMChat-RecentlyUpdated", 3, MEMORY[0x1E69E96A0]);
  qword_1ED7676B0 = v2;

  return MEMORY[0x1EEE66BB8](v2);
}

void sub_1A83427A0(uint64_t a1, void *a2)
{
  v27 = a2;
  v5 = objc_msgSend__item(v27, v3, v4);
  v8 = objc_msgSend_guid(v5, v6, v7);

  if (v8 && (objc_msgSend_containsObject_(*(a1 + 32), v9, v8) & 1) == 0)
  {
    objc_msgSend_addObject_(*(a1 + 32), v10, v8);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = *(a1 + 40);
    v14 = MEMORY[0x1E696AEC0];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v18 = objc_msgSend_stringWithFormat_(v14, v17, @"c:%@: %@", v16, v8);
    objc_msgSend_addObject_(v13, v19, v18);
  }

  if (objc_msgSend_count(*(a1 + 48), v11, v12) <= 0x63)
  {
    v20 = *(a1 + 48);
    v21 = MEMORY[0x1E696AEC0];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v25 = objc_msgSend_stringWithFormat_(v21, v24, @"c:%@: %@", v23, v8);
    objc_msgSend_addObject_(v20, v26, v25);
  }
}

void sub_1A8342B7C(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = a2;
  v16 = objc_msgSend_lastAddressedLocalHandle(v6, v8, v9);
  v12 = objc_msgSend_lastAddressedSIMID(v6, v10, v11);

  v14 = objc_msgSend_stringWithFormat_(v5, v13, @"%@-%@", v16, v12);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v15, v14, v7);
}

void sub_1A8342E08(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8342E94;
  block[3] = &unk_1E7812D00;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = a2;
  block[4] = v2;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t sub_1A8342E94(uint64_t a1, const char *a2)
{
  if (*(a1 + 48) == 2)
  {
    objc_msgSend_setIsFiltered_(*(a1 + 32), a2, 2);
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(a1 + 48);
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void sub_1A8342F10(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id sub_1A83431F0(void *a1, const char *a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1A8259BD0;
  v9 = sub_1A825AF14;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A83432F4;
  v4[3] = &unk_1E7812D78;
  v4[4] = &v5;
  objc_msgSend___enumerateItemsWithOptions_usingBlock_(a1, a2, 0, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_1A83432DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A83432F4(uint64_t a1, void *a2, _BYTE *a3)
{
  v12 = a2;
  if (!objc_msgSend_type(v12, v5, v6))
  {
    v9 = objc_msgSend_message(v12, v7, v8);
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a3 = 1;
  }
}

id sub_1A834336C(void *a1, const char *a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1A8259BD0;
  v9 = sub_1A825AF14;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A8343470;
  v4[3] = &unk_1E7812D78;
  v4[4] = &v5;
  objc_msgSend___enumerateItemsWithOptions_usingBlock_(a1, a2, 2, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_1A8343458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8343470(uint64_t a1, void *a2, _BYTE *a3)
{
  v12 = a2;
  if (!objc_msgSend_type(v12, v5, v6))
  {
    v9 = objc_msgSend_message(v12, v7, v8);
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a3 = 1;
  }
}

id sub_1A83434E8(void *a1, const char *a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1A8259BD0;
  v9 = sub_1A825AF14;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A83435EC;
  v4[3] = &unk_1E7812D78;
  v4[4] = &v5;
  objc_msgSend___enumerateItemsWithOptions_usingBlock_(a1, a2, 2, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_1A83435D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A83435EC(uint64_t a1, void *a2, _BYTE *a3)
{
  v17 = a2;
  v7 = objc_msgSend_type(v17, v5, v6);
  if (!v7)
  {
    v9 = objc_msgSend_message(v17, v17, v8);
    if ((objc_msgSend_isTypingMessage(v9, v10, v11) & 1) == 0 && (objc_msgSend_isSuggestedActionResponse(v9, v12, v13) & 1) == 0 && (objc_msgSend_isRCSEncryptionTest(v9, v14, v15) & 1) == 0)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), v9);
      *a3 = 1;
    }
  }

  return MEMORY[0x1EEE66BB8](v7);
}

id sub_1A8343698(void *a1, const char *a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1A8259BD0;
  v9 = sub_1A825AF14;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A834379C;
  v4[3] = &unk_1E7812D78;
  v4[4] = &v5;
  objc_msgSend___enumerateItemsWithOptions_usingBlock_(a1, a2, 2, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_1A8343784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A834379C(uint64_t a1, void *a2, _BYTE *a3)
{
  v13 = a2;
  v7 = objc_msgSend_type(v13, v5, v6);
  if (!v7)
  {
    v9 = objc_msgSend_message(v13, v13, v8);
    if ((objc_msgSend_isFromMe(v9, v10, v11) & 1) == 0)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), v9);
      *a3 = 1;
    }
  }

  return MEMORY[0x1EEE66BB8](v7);
}

id sub_1A8343830(void *a1, const char *a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1A8259BD0;
  v9 = sub_1A825AF14;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A8343934;
  v4[3] = &unk_1E7812D78;
  v4[4] = &v5;
  objc_msgSend___enumerateItemsWithOptions_usingBlock_(a1, a2, 2, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_1A834391C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A8343934(uint64_t a1, void *a2, _BYTE *a3)
{
  v15 = a2;
  v7 = objc_msgSend_type(v15, v5, v6);
  if (!v7)
  {
    v9 = objc_msgSend_message(v15, v15, v8);
    if ((objc_msgSend_isFromMe(v9, v10, v11) & 1) == 0 && (objc_msgSend_isTypingMessage(v9, v12, v13) & 1) == 0)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), v9);
      *a3 = 1;
    }
  }

  return MEMORY[0x1EEE66BB8](v7);
}

void sub_1A83439D4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A8343A78;
  v9[3] = &unk_1E7812DA0;
  v10 = v6;
  v7 = v6;
  objc_msgSend___enumerateItemsWithOptions_usingBlock_(a1, v8, a3, v9);
}

void sub_1A8343A78(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  if (!objc_msgSend_type(v11, v5, v6))
  {
    v9 = *(a1 + 32);
    v10 = objc_msgSend_message(v11, v7, v8);
    (*(v9 + 16))(v9, v10, a3);
  }
}

id sub_1A8343B00(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend___imItems(a1, a2, a3);
  v5 = objc_msgSend___imArrayByApplyingBlock_(v3, v4, &unk_1F1B6EDA0);

  return v5;
}

id sub_1A8343B54(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_msgSend_type(v2, v3, v4))
  {
    v5 = 0;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

id sub_1A8343BA8(void *a1, const char *a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1A8259BD0;
  v9 = sub_1A825AF14;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A8343CAC;
  v4[3] = &unk_1E7812D78;
  v4[4] = &v5;
  objc_msgSend___enumerateItemsWithOptions_usingBlock_(a1, a2, 2, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_1A8343C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8343CAC(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  if (!objc_msgSend_type(v8, v6, v7))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

void sub_1A8343D24(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = sub_1A8259BD0;
  v12[4] = sub_1A825AF14;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A8343E34;
  v9[3] = &unk_1E7812DC8;
  v11 = v12;
  v7 = v6;
  v10 = v7;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(a1, v8, a3 & 0xFFFFFFFFFFFFFFFELL, v9);

  _Block_object_dispose(v12, 8);
}

void sub_1A8343E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A8343E34(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend__parentItem(a2, a2, a3);
  v5 = *(*(a1 + 40) + 8);
  v7 = *(v5 + 40);
  v6 = (v5 + 40);
  if (v4 != v7)
  {
    objc_storeStrong(v6, v4);
    v6 = (*(*(a1 + 32) + 16))();
  }

  return MEMORY[0x1EEE66BB8](v6);
}

id sub_1A8343EB8(void *a1, const char *a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF70];
  v5 = objc_msgSend_count(a1, a2, a3);
  v7 = objc_msgSend_arrayWithCapacity_(v4, v6, v5);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = a1;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v24, v28, 16);
  if (v10)
  {
    v13 = v10;
    v14 = 0;
    v15 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v8);
        }

        v17 = objc_msgSend__parentItem(*(*(&v24 + 1) + 8 * i), v11, v12, v24);
        v19 = v17;
        if (v17)
        {
          v20 = v17 == v14;
        }

        else
        {
          v20 = 1;
        }

        if (!v20)
        {
          objc_msgSend_addObject_(v7, v18, v17);
          v21 = v19;

          v14 = v21;
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v24, v28, 16);
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v7;
}

id IMEmotePrefixes()
{
  v0 = qword_1EB2EA380;
  if (!qword_1EB2EA380)
  {
    v1 = objc_alloc(MEMORY[0x1E695DEC8]);
    v3 = objc_msgSend_initWithObjects_(v1, v2, @"/me", @"/emote", @"/em", 0);
    v4 = qword_1EB2EA380;
    qword_1EB2EA380 = v3;

    v0 = qword_1EB2EA380;
  }

  return v0;
}

uint64_t sub_1A8345540(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    *(*(result + 32) + 72) |= 0x20000000uLL;
    *a5 = 1;
  }

  return result;
}

uint64_t IMMessageCompare(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if (v5 == v6)
  {
    v10 = 0;
  }

  else
  {
    Class = object_getClass(v5);
    if (Class == object_getClass(v6))
    {
      if (a3 == 2)
      {
        v14 = v6[8];
        v15 = v5[8];
        v16 = v14 == v15;
        v17 = v14 < v15;
        v18 = -1;
        if (!v17)
        {
          v18 = 1;
        }

        if (v16)
        {
          v10 = 0;
        }

        else
        {
          v10 = v18;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v11 = v5[7];
          v12 = v6[7];
          v20.length = objc_msgSend_length(v11, v8, v9);
          v20.location = 0;
          v13 = CFStringCompareWithOptionsAndLocale(v11, v12, v20, 1uLL, 0);
        }

        else
        {
          v13 = objc_msgSend_compare_(v5[5], v8, v6[5]);
        }

        v10 = v13;
      }
    }

    else
    {
      v10 = -1;
    }
  }

  return v10;
}

void sub_1A8348850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1A83483ACLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A8348904(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v183 = *MEMORY[0x1E69E9840];
  v162 = a2;
  v163 = a1;
  v8 = objc_msgSend_attributedSubstringFromRange_(*(*(*(a1 + 40) + 8) + 40), v7, a3, a4);
  v160 = objc_msgSend_trimmedString(v8, v9, v10);

  v161 = objc_msgSend_attributedSubstringFromRange_(*(*(*(v163 + 48) + 8) + 40), v11, a3, a4);
  v165 = objc_msgSend_trimmedString(v161, v12, v13);
  if (!v162)
  {
LABEL_17:
    v158 = 0;
    v159 = 0;
    goto LABEL_18;
  }

  v16 = objc_msgSend_sharedInstance(IMBalloonPluginManager, v14, v15);
  v17 = *MEMORY[0x1E69A6A18];
  v19 = objc_msgSend_dataSourceClassForBundleID_(v16, v18, *MEMORY[0x1E69A6A18]);

  LODWORD(v16) = objc_msgSend_supportsURL_(v19, v20, v162);
  v21 = IMOSLoggingEnabled();
  if (!v16)
  {
    if (v21)
    {
      v57 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v19;
        _os_log_impl(&dword_1A823F000, v57, OS_LOG_TYPE_INFO, "%@ did not support URL", &buf, 0xCu);
      }
    }

    goto LABEL_17;
  }

  if (v21)
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Initializing rich link", &buf, 2u);
    }
  }

  v23 = objc_alloc_init(IMPluginPayload);
  objc_msgSend_setMessageGUID_(v23, v24, *(*(*(v163 + 56) + 8) + 40));
  objc_msgSend_setPluginBundleID_(v23, v25, v17);
  objc_msgSend_setUrl_(v23, v26, v162);
  if (objc_msgSend_length(*(*(*(v163 + 48) + 8) + 40), v27, v28) == a4)
  {
    v31 = objc_msgSend_payloadData(*(v163 + 32), v29, v30);
    v176[5] = 0;
    v32 = IMSharedHelperPayloadFromCombinedPluginPayloadData();
    v33 = 0;
    objc_msgSend_setData_(v23, v34, v32);

    objc_msgSend_setAttachments_(v23, v35, v33);
  }

  v36 = objc_msgSend_sharedInstance(IMBalloonPluginManager, v29, v30);
  v38 = objc_msgSend_dataSourceForPluginPayload_(v36, v37, v23);

  objc_msgSend_payloadWillEnterShelf(v38, v39, v40);
  objc_msgSend_payloadWillSendFromShelf(v38, v41, v42);
  v158 = objc_msgSend_messagePayloadDataForSending(v38, v43, v44);
  v159 = v17;
  objc_msgSend_setPayloadInShelf_(v38, v45, 0);
  if (*(*(*(v163 + 64) + 8) + 24) == 1)
  {
    v48 = objc_msgSend_messageSubject(*(v163 + 32), v46, v47);
    v51 = objc_msgSend_length(v48, v49, v50) == 0;

    if (!v51)
    {
      *(*(*(v163 + 72) + 8) + 24) = 1;
      v54 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v52, v53);
      v55 = *(*(v163 + 56) + 8);
      v56 = *(v55 + 40);
      *(v55 + 40) = v54;
    }
  }

LABEL_18:
  *&buf = 0;
  *(&buf + 1) = &buf;
  v179 = 0x3032000000;
  v180 = sub_1A8259BE0;
  v181 = sub_1A825AF1C;
  v182 = 0;
  v58 = objc_msgSend_length(v160, v14, v15);
  v59 = *MEMORY[0x1E69A5F68];
  v176[0] = MEMORY[0x1E69E9820];
  v176[1] = 3221225472;
  v176[2] = sub_1A834928C;
  v176[3] = &unk_1E7812E20;
  v176[4] = &buf;
  objc_msgSend_enumerateAttribute_inRange_options_usingBlock_(v160, v60, v59, 0, v58, 0, v176);
  if (objc_msgSend_length(v165, v61, v62))
  {
    v65 = objc_msgSend_string(v161, v63, v64);
    v68 = objc_msgSend_string(v165, v66, v67);
    v70 = objc_msgSend_rangeOfString_(v65, v69, v68);
  }

  else
  {
    v70 = 0;
  }

  v71 = v70 + a3;
  if (v70 + a3 < 1)
  {
    v164 = v165;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v74 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
      {
        *v175 = 0;
        _os_log_impl(&dword_1A823F000, v74, OS_LOG_TYPE_INFO, "Shifting DD attributed results by a non-zero offset.", v175, 2u);
      }
    }

    v164 = objc_msgSend_mutableCopy(v165, v72, v73);
    v173 = 0u;
    v174 = 0u;
    v171 = 0u;
    v172 = 0u;
    v77 = objc_msgSend_allSupportedDDAttributesKeys(IMDDController, v75, v76);
    v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v77, v78, &v171, v177, 16);
    if (v81)
    {
      v82 = *v172;
      do
      {
        for (i = 0; i != v81; ++i)
        {
          if (*v172 != v82)
          {
            objc_enumerationMutation(v77);
          }

          v84 = *(*(&v171 + 1) + 8 * i);
          v85 = objc_msgSend_length(v165, v79, v80);
          v167[0] = MEMORY[0x1E69E9820];
          v167[1] = 3221225472;
          v167[2] = sub_1A834931C;
          v167[3] = &unk_1E7812E48;
          v170 = v71;
          v168 = v164;
          v169 = v84;
          objc_msgSend_enumerateAttribute_inRange_options_usingBlock_(v165, v86, v84, 0, v85, 0, v167);
        }

        v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v77, v79, &v171, v177, 16);
      }

      while (v81);
    }
  }

  v157 = [IMMessage alloc];
  v166 = objc_msgSend_sender(*(v163 + 32), v87, v88);
  v93 = objc_msgSend_time(*(v163 + 32), v89, v90);
  if (*(*(*(v163 + 64) + 8) + 24) == 1 && (*(*(*(v163 + 72) + 8) + 24) & 1) == 0)
  {
    v94 = objc_msgSend_messageSubject(*(v163 + 32), v91, v92);
    v156 = 1;
  }

  else
  {
    v156 = 0;
    v94 = 0;
  }

  v95 = *(*(&buf + 1) + 40);
  v96 = objc_msgSend_flags(*(v163 + 32), v91, v92);
  v97 = *(*(*(v163 + 56) + 8) + 40);
  v100 = objc_msgSend_subject(*(v163 + 32), v98, v99);
  v103 = objc_msgSend_expressiveSendStyleID(*(v163 + 32), v101, v102);
  v106 = objc_msgSend_threadIdentifier(*(v163 + 32), v104, v105);
  v109 = objc_msgSend_scheduleType(*(v163 + 32), v107, v108);
  v112 = objc_msgSend_scheduleState(*(v163 + 32), v110, v111);
  v114 = objc_msgSend_initWithSender_time_text_messageSubject_fileTransferGUIDs_flags_error_guid_subject_balloonBundleID_payloadData_expressiveSendStyleID_threadIdentifier_scheduleType_scheduleState_(v157, v113, v166, v93, v164, v94, v95, v96, 0, v97, v100, v159, v158, v103, v106, v109, v112);

  if (v156)
  {
  }

  v117 = objc_msgSend_associatedBalloonBundleID(*(v163 + 32), v115, v116);
  objc_msgSend_setAssociatedBalloonBundleID_(v114, v118, v117);

  v121 = objc_msgSend_sourceApplicationID(*(v163 + 32), v119, v120);
  objc_msgSend_setSourceApplicationID_(v114, v122, v121);

  shouldNotifyOnSend = objc_msgSend_shouldNotifyOnSend(*(v163 + 32), v123, v124);
  objc_msgSend_setShouldNotifyOnSend_(v114, v126, shouldNotifyOnSend);
  v129 = objc_msgSend_collaborationInitiationRequestInfo(*(v163 + 32), v127, v128);
  objc_msgSend_setCollaborationInitiationRequestInfo_(v114, v130, v129);

  v131 = v163;
  v134 = objc_msgSend_sentViaRemoteIntent(*(v163 + 32), v132, v133);
  objc_msgSend_setSentViaRemoteIntent_(v114, v135, v134);
  if (objc_msgSend_isReply(v114, v136, v137))
  {
    v140 = objc_msgSend_threadOriginator(*(v163 + 32), v138, v139);
    objc_msgSend_setThreadOriginator_(v114, v141, v140);

    v131 = v163;
  }

  v142 = objc_msgSend_messageSummaryInfo(*(v131 + 32), v138, v139);
  objc_msgSend__messageSummaryInfo_(v114, v143, v142);

  v146 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v144, v145);
  v147 = *(*(v163 + 56) + 8);
  v148 = *(v147 + 40);
  *(v147 + 40) = v146;

  v150 = v163;
  v151 = *(*(*(v163 + 80) + 8) + 40);
  if (!v151)
  {
    v152 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v153 = *(*(v163 + 80) + 8);
    v154 = *(v153 + 40);
    *(v153 + 40) = v152;

    v151 = *(*(*(v163 + 80) + 8) + 40);
    v150 = v163;
  }

  objc_msgSend_addObject_(v151, v149, v114);
  *(*(*(v150 + 64) + 8) + 24) = 0;

  _Block_object_dispose(&buf, 8);
  v155 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A834928C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    v10 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v5 = *(*(*(a1 + 32) + 8) + 40);
    }

    v3 = objc_msgSend_addObject_(v5, v4, v10);
  }

  return MEMORY[0x1EEE66BB8](v3);
}

void sub_1A834931C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v8 = v7;
    v11 = IMOffsetSerializedDDScannerResult(v7, -*(a1 + 48));

    objc_msgSend_removeAttribute_range_(*(a1 + 32), v9, *(a1 + 40), a3, a4);
    objc_msgSend_addAttribute_value_range_(*(a1 + 32), v10, *(a1 + 40), v11, a3, a4);
  }
}

void *sub_1A834A57C()
{
  result = MEMORY[0x1AC56C560]("MarcoLoggingStringForMessageData", @"Marco");
  off_1EB2E9FE0 = result;
  return result;
}

__CFString *_NSStringFromIMMessageError(unint64_t a1)
{
  if (a1 > 0x2B)
  {
    return @"Undefined Error";
  }

  else
  {
    return *(&off_1E7812EB8 + a1);
  }
}

void sub_1A834B62C()
{
  v0 = objc_alloc(MEMORY[0x1E696AD40]);
  v2 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x1E695DF20], v1, &unk_1F1BA17D0, *MEMORY[0x1E69A5FD8]);
  v7 = objc_msgSend_initWithString_attributes_(v0, v3, @" ", v2);

  v5 = objc_msgSend_attributesAtIndex_effectiveRange_(v7, v4, 0, 0);
  v6 = qword_1EB2EA388;
  qword_1EB2EA388 = v5;
}

void sub_1A834BEC0(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A834BF50;
  block[3] = &unk_1E780FDC8;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void sub_1A834BF50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_fetchScreenTimeAppPolicy(WeakRetained, v1, v2);
}

void sub_1A834C094(uint64_t a1, const char *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_policyCache(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_chatForConversationContext_(v4, v5, *(a1 + 40));

  if (v6)
  {
    v9 = objc_msgSend_allowedByScreenTime(*(a1 + 40), v7, v8);
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = @"NO";
        if (v9)
        {
          v12 = @"YES";
        }

        v18 = 138412546;
        v19 = v6;
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Updating chat %@ because Comm Limit policy changed to allowed = %@", &v18, 0x16u);
      }
    }

    objc_msgSend_updateCachedAllowedByScreenTime_(v6, v10, v9);
  }

  else if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v16 = objc_msgSend_allowedByContactsHandle(*(a1 + 40), v14, v15);
      v18 = 138412290;
      v19 = v16;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Could not find chat for conversation context with allowed by contacts handle: %@. unregistering for Communication Limit tracking for that chat identifier.", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1A834C7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A834C7D4(uint64_t a1, void *a2, void *a3)
{
  v72 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v68 = xmmword_1E78130E8;
  v69 = *off_1E78130F8;
  v70 = 446;
  v8 = MEMORY[0x1E696AEC0];
  v9 = IMFileLocationTrimFileName();
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v10, &stru_1F1B76F98);
  v13 = objc_msgSend_stringWithFormat_(v8, v12, @"Unexpected nil '%@' in %s at %s:%d. %@", @"emergencyNumbers", "[IMDowntimeController _allowedToShowConversationWithHandleIDs:sync:context:participantIDsHash:trackingChat:]_block_invoke", v9, 446, v11);

  v14 = IMGetAssertionFailureHandler();
  if (v14)
  {
    v14(v13);
  }

  else
  {
    v17 = objc_msgSend_warning(MEMORY[0x1E69A6138], v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1AB0();
    }
  }

  if (!v7)
  {
LABEL_10:
    v68 = xmmword_1E7813110;
    v69 = *off_1E7813120;
    v70 = 447;
    v18 = MEMORY[0x1E696AEC0];
    v19 = IMFileLocationTrimFileName();
    v21 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v20, &stru_1F1B76F98);
    v23 = objc_msgSend_stringWithFormat_(v18, v22, @"Unexpected nil '%@' in %s at %s:%d. %@", @"conversation", "[IMDowntimeController _allowedToShowConversationWithHandleIDs:sync:context:participantIDsHash:trackingChat:]_block_invoke", v19, 447, v21);

    v24 = IMGetAssertionFailureHandler();
    if (v24)
    {
      v24(v23);
    }

    else
    {
      v27 = objc_msgSend_warning(MEMORY[0x1E69A6138], v25, v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E1AB0();
      }
    }
  }

LABEL_16:
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v28 = *(a1 + 32);
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v64, v71, 16);
  if (v30)
  {
    v32 = v30;
    v33 = *v65;
LABEL_18:
    v34 = 0;
    while (1)
    {
      if (*v65 != v33)
      {
        objc_enumerationMutation(v28);
      }

      if (v5 && (objc_msgSend_containsObject_(v5, v31, *(*(&v64 + 1) + 8 * v34)) & 1) != 0)
      {
        goto LABEL_35;
      }

      if (v32 == ++v34)
      {
        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v64, v71, 16);
        if (v32)
        {
          goto LABEL_18;
        }

        break;
      }
    }
  }

  if (*(a1 + 40))
  {
    v37 = objc_msgSend_policyCache(*(a1 + 48), v35, v36);
    v28 = objc_msgSend_contextForParticipantIDsHash_(v37, v38, *(a1 + 40));

    if (!v28 || (objc_msgSend_null(MEMORY[0x1E695DFB0], v39, v40), v41 = objc_claimAutoreleasedReturnValue(), v41, v28 == v41))
    {
      v45 = *(a1 + 48);
      if (v45[12] == 1)
      {
        objc_msgSend__doRegisterForScreenTimeNotifications(v45, v39, v40);
      }

      if (*(a1 + 80) != 1)
      {
        v50 = objc_msgSend_policyCache(*(a1 + 48), v39, v40);
        objc_msgSend_addSentinelContextForParticipantIDsHash_(v50, v51, *(a1 + 40));

        v54 = objc_msgSend_screenTimeDispatchQueue(*(a1 + 48), v52, v53);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1A834CC94;
        block[3] = &unk_1E78129F8;
        v60 = v7;
        v61 = *(a1 + 32);
        v58 = *(a1 + 40);
        v55 = v58.i64[0];
        v62 = vextq_s8(v58, v58, 8uLL);
        v63 = *(a1 + 56);
        dispatch_async(v54, block);

LABEL_35:
        v44 = 1;
        goto LABEL_36;
      }

      v46 = objc_msgSend_allowableByContactsHandles_(v7, v39, *(a1 + 32));

      objc_storeStrong((*(*(a1 + 72) + 8) + 40), v46);
      objc_msgSend_initializeContext_participantIDsHash_trackingChat_(*(a1 + 48), v47, v46, *(a1 + 40), *(a1 + 56));
      v44 = objc_msgSend_allowedByScreenTime(v46, v48, v49);
      v28 = v46;
    }

    else
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
      objc_storeStrong((*(*(a1 + 72) + 8) + 40), v28);
      v44 = objc_msgSend_allowedByScreenTime(v28, v42, v43);
    }

LABEL_36:

    goto LABEL_37;
  }

  v44 = 1;
LABEL_37:

  v56 = *MEMORY[0x1E69E9840];
  return v44;
}

void sub_1A834CC94(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_allowableByContactsHandles_(*(a1 + 32), a2, *(a1 + 40));
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A834CD64;
  v6[3] = &unk_1E78101E0;
  v4 = *(a1 + 56);
  v6[4] = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 64);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void sub_1A834CD78(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1A834CE0C;
  v3[3] = &unk_1E7810230;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void sub_1A834CE0C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v8 = objc_msgSend_emergencyNumbers(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_STConversation(*(a1 + 32), v5, v6);
  (*(v4 + 16))(v4, v8, v7);
}

void sub_1A834D434(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, a3);
  objc_msgSend_postNotificationName_object_userInfo_(v4, v3, @"com.apple.messages.IMDowntimeStateChangedNotification", 0, 0);
}

void sub_1A834D640(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A834D720;
  v11[3] = &unk_1E78101E0;
  v12 = v6;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v7;
  v14 = v8;
  v15 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

void sub_1A834D720(uint64_t a1, const char *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 32);
        v5 = *(a1 + 40);
        v18 = 138412546;
        v19 = v5;
        v20 = 2112;
        v21 = v6;
        _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "error retrieving application policy for bundle identifier:%@ - %@", &v18, 0x16u);
      }
    }
  }

  else
  {
    v7 = objc_msgSend_bundleIDPolicyMap(*(a1 + 48), a2, a3);
    objc_msgSend_addEntriesFromDictionary_(v7, v8, *(a1 + 56));

    v11 = objc_msgSend_allKeys(*(a1 + 56), v9, v10);
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v18 = 138412290;
        v19 = v11;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Successfully fetched App Downtime Polcies for app bundles with  identifiers: %@", &v18, 0xCu);
      }
    }

    v15 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v12, v13);
    objc_msgSend_postNotificationName_object_userInfo_(v15, v16, @"com.apple.messages.IMDowntimeStateChangedForBundleID", 0, 0);
  }

  v17 = *MEMORY[0x1E69E9840];
}

id IMChatRegistryLogHandle()
{
  if (qword_1EB2EA3A0 != -1)
  {
    sub_1A84E1B80();
  }

  v1 = qword_1EB2EA398;

  return v1;
}

uint64_t sub_1A834DC34()
{
  v0 = os_log_create("com.apple.Messages", "IMChatRegistry");
  qword_1EB2EA398 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t sub_1A834DCBC()
{
  v0 = os_log_create("com.apple.Messages", "chatregistry.performance");
  qword_1EB2E90D8 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t sub_1A834E3BC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7FD0], a2, a3);
  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  *(v5 + 80) = v4;

  return MEMORY[0x1EEE66BB8](v4);
}

void sub_1A834EB20(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A834E9D8);
  }

  _Unwind_Resume(a1);
}

void sub_1A834FEE8(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    v4 = objc_begin_catch(exc_buf);
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v8 = objc_msgSend_name(v4, v6, v7);
        v11 = objc_msgSend_reason(v4, v9, v10);
        v14 = objc_msgSend_userInfo(v4, v12, v13);
        *(v3 - 176) = 138413314;
        *(v2 + 4) = v4;
        *(v3 - 164) = 2112;
        *(v2 + 14) = v8;
        *(v3 - 154) = 2112;
        *(v3 - 152) = v11;
        *(v3 - 144) = 2112;
        *(v2 + 34) = v14;
        *(v3 - 134) = 2080;
        *(v2 + 44) = "[IMChatRegistry _unregisterChat:deleted:didClearUnreadCount:]";
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Caught exception: %@   name: %@   reason: %@   userInfo: %@ in function: %s", (v3 - 176), 0x34u);
      }
    }

    IMLogBacktrace();
    IMLogSimulateCrashForException();

    objc_end_catch();
    JUMPOUT(0x1A834FC50);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1A8350008(void *exc_buf, int a2)
{
  if (a2 == v2)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A834FFECLL);
  }

  objc_end_catch();
  JUMPOUT(0x1A8350034);
}

BOOL sub_1A83503E8(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_existingChatWithChatIdentifier_(*(a1 + 32), a2, a2);
  v3 = v2 != 0;

  return v3;
}

void sub_1A835073C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v7 = v4;
    if (v4)
    {
      v8 = *(*(a1 + 32) + 208);
      v9 = objc_msgSend_guid(v4, v5, v6);
      CFDictionarySetValue(v8, v9, v7);
    }

    else
    {
      v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v10)
      {
        sub_1A84E1D60(v10, v11, v12);
      }
    }
  }
}

void sub_1A83545B8(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      *buf = 138412546;
      v17 = v7;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "EXTENSION INTERRUPTION BLOCK CALLED extensionIdentifier: %@, requestIdentifier: %@", buf, 0x16u);
    }
  }

  v8 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v4, v5);
  v9 = *(a1 + 32);
  v14 = *MEMORY[0x1E69A6F20];
  v15 = v9;
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v10, &v15, &v14, 1);
  objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v8, v12, *MEMORY[0x1E69A6F28], 0, v11);

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1A8354858()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69A69E8];
  v1 = IMBalloonExtensionIDWithSuffix();
  v6 = v1;
  v7[0] = &unk_1F1BA1800;
  v3 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v2, v7, &v6, 1);
  v4 = qword_1EB2EA3A8;
  qword_1EB2EA3A8 = v3;

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A8354BB8(uint64_t a1, const char *a2)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69A6980];
  v6[0] = *MEMORY[0x1E69A6A00];
  v6[1] = v2;
  v7[0] = &unk_1F1BA18D8;
  v7[1] = &unk_1F1BA18E8;
  v3 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v7, v6, 2);
  v4 = qword_1EB2EA3B8;
  qword_1EB2EA3B8 = v3;

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A8354CA0()
{
  v0 = IMSharedHelperStickerAppsTemporarilyDisplayedInSendMenu();
  v1 = qword_1EB2EA3C8;
  qword_1EB2EA3C8 = v0;

  if (!qword_1EB2EA3C8)
  {
    qword_1EB2EA3C8 = &unk_1F1BA1758;
  }
}

void sub_1A8354D48()
{
  v0 = qword_1EB2EA3D8;
  qword_1EB2EA3D8 = &unk_1F1BA1770;
}

void sub_1A83555F0(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E69A6170]);
  objc_msgSend_startTimingForKey_(v2, v3, @"loadAppBundle");
  v4 = *(a1 + 32);
  v7 = objc_msgSend_appBundle(v4, v5, v6);
  v10 = objc_msgSend_load(v7, v8, v9);
  objc_msgSend_setPluginLoaded_(v4, v11, v10);

  objc_msgSend_stopTimingForKey_(v2, v12, @"loadAppBundle");
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v16 = objc_msgSend_appBundle(*(a1 + 32), v14, v15);
      v19 = objc_msgSend_bundleIdentifier(v16, v17, v18);
      v21 = 138412546;
      v22 = v19;
      v23 = 2112;
      v24 = v2;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Loaded %@, %@", &v21, 0x16u);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

void sub_1A8355CD0(uint64_t a1)
{
  v62 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E69A6170]);
  objc_msgSend_startTimingForKey_(v2, v3, @"loadPlugin");
  v4 = *(a1 + 32);
  v7 = objc_msgSend_pluginBundle(v4, v5, v6);
  v10 = objc_msgSend_load(v7, v8, v9);
  objc_msgSend_setPluginLoaded_(v4, v11, v10);

  v14 = objc_msgSend_pluginBundle(*(a1 + 32), v12, v13);
  v17 = objc_msgSend_principalClass(v14, v15, v16);

  objc_msgSend_setBubbleClass_(*(a1 + 32), v18, v17);
  v21 = objc_msgSend_pluginBundle(*(a1 + 32), v19, v20);
  v24 = objc_msgSend_infoDictionary(v21, v22, v23);

  v26 = objc_msgSend_objectForKey_(v24, v25, @"CKBrowserClass");
  if (objc_msgSend_length(v26, v27, v28))
  {
    v30 = NSClassFromString(v26);
    objc_msgSend_setBrowserClass_(*(a1 + 32), v31, v30);
  }

  v32 = objc_msgSend_objectForKey_(v24, v29, @"CKDatasourceClass");
  if (objc_msgSend_length(v32, v33, v34))
  {
    v36 = NSClassFromString(v32);
    objc_msgSend_setDataSourceClass_(*(a1 + 32), v37, v36);
  }

  v38 = objc_msgSend_objectForKey_(v24, v35, @"IMCustomTypingIndicatorClass");
  if (objc_msgSend_length(v38, v39, v40))
  {
    v42 = NSClassFromString(v38);
    objc_msgSend_setCustomTypingIndicatorLayerClass_(*(a1 + 32), v43, v42);
  }

  v44 = objc_msgSend_objectForKey_(v24, v41, @"CKEntryClass");
  if (objc_msgSend_length(v44, v45, v46))
  {
    v48 = NSClassFromString(v44);
    objc_msgSend_setEntryClass_(*(a1 + 32), v49, v48);
  }

  objc_msgSend_stopTimingForKey_(v2, v47, @"loadPlugin");
  if (IMOSLoggingEnabled())
  {
    v50 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      v53 = objc_msgSend_pluginBundle(*(a1 + 32), v51, v52);
      v56 = objc_msgSend_bundleIdentifier(v53, v54, v55);
      v58 = 138412546;
      v59 = v56;
      v60 = 2112;
      v61 = v2;
      _os_log_impl(&dword_1A823F000, v50, OS_LOG_TYPE_INFO, "Loaded %@, %@", &v58, 0x16u);
    }
  }

  v57 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A8356578()
{
  result = MEMORY[0x1AC56C550](@"LSPlugInKitProxy", @"CoreServices");
  qword_1ED767690 = result;
  return result;
}

void sub_1A8356954(uint64_t a1, const char *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v16 = *MEMORY[0x1E696A578];
  v17[0] = @"Observer was not invalidated before dealloc for a handle";
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v17, &v16, 1);
  v6 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v5, @"IMHandleStatusObserverErrorDomain", 0, v4);

  v9 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8168], v7, v8);
  objc_msgSend_forceAutoBugCaptureWithSubType_errorPayload_(v9, v10, @"IMHandleStatusObserver oversubscribed", v6);

  v13 = objc_msgSend_sharedInstance(IMHandleStatusManager, v11, v12);
  objc_msgSend_invalidateObserver_(v13, v14, *(a1 + 32));

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A8356B68()
{
  v0 = objc_alloc_init(IMHandleStatusManager);
  qword_1ED767868 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A835775C(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v6 = objc_msgSend_subscriptionIdentifier(v3, v4, v5);
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      *buf = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Retaining transient subscription assertion on subscription: %@ for handle: %@", buf, 0x16u);
    }
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A83578D4;
  v12[3] = &unk_1E7813450;
  v13 = v6;
  v14 = *(a1 + 32);
  v9 = v6;
  objc_msgSend_retainTransientSubscriptionAssertionWithCompletion_(v3, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1A83578D4(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1E70(a1);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Successfully retained transient subscription assertion for subscription: %@ and handle: %@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1A8357A00(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMOSLoggingEnabled();
  if (!v3)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v22 = objc_msgSend_ID(*(a1 + 32), v20, v21);
      v27 = 138412290;
      v28 = v22;
      _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Failed to fetch StatusKit subscription, it's likely we have not received an invitation from %@", &v27, 0xCu);
    }

LABEL_19:

    goto LABEL_20;
  }

  if (v4)
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v27 = 138412290;
      v28 = v3;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "StatusKit subscription fetched %@, checking if a retain is still necessary", &v27, 0xCu);
    }
  }

  v8 = objc_msgSend_observers(*(a1 + 40), v5, v6);
  v11 = objc_msgSend_ID(*(a1 + 32), v9, v10);
  v13 = objc_msgSend_objectForKey_(v8, v12, v11);

  v14 = IMOSLoggingEnabled();
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_20;
    }

    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v25 = objc_msgSend_ID(*(a1 + 32), v23, v24);
      v27 = 138412290;
      v28 = v25;
      _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "No valid observers for handle %@, not retaining transient subscription assertion", &v27, 0xCu);
    }

    goto LABEL_19;
  }

  if (v14)
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v18 = objc_msgSend_ID(*(a1 + 32), v16, v17);
      v27 = 138412290;
      v28 = v18;
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "There are valid observers for handle %@, retaining assertion", &v27, 0xCu);
    }
  }

  (*(*(a1 + 48) + 16))();
LABEL_20:

  v26 = *MEMORY[0x1E69E9840];
}

void sub_1A8357C90(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A8357C58);
  }

  _Unwind_Resume(a1);
}

void sub_1A8358024(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v6 = objc_msgSend_subscriptionIdentifier(v3, v4, v5);
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      *buf = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Releasing transient subscription assertion on subscription: %@ for handle: %@", buf, 0x16u);
    }
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A8358198;
  v12[3] = &unk_1E7813450;
  v13 = *(a1 + 32);
  v14 = v6;
  v9 = v6;
  objc_msgSend_releaseTransientSubscriptionAssertionWithCompletion_(v3, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1A8358198(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1EF0(a1);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v6 = *(a1 + 40);
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Successfully released transient subscription assertion for subscription: %@ and handle: %@", &v9, 0x16u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}