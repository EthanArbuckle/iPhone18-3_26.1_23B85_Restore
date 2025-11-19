uint64_t IMSetPreferredAccountForService(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  IMRegisterForPreferredAccountChangeNotificationsInternal();
  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v15 = 138412546;
        v16 = v4;
        v17 = 2112;
        v18 = v3;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Updating preferred account for service: %@    account: %@", &v15, 0x16u);
      }
    }

    v8 = objc_msgSend_internalName(v4, v5, v6);
    v11 = objc_msgSend_uniqueID(v3, v9, v10);
    v12 = IMUpdatePreferredAccountForService();
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

id IMFindExistingChatForAddresses(void *a1, void *a2, int a3, int a4)
{
  v81 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v61 = v5;
  if (!objc_msgSend_count(v5, v7, v8))
  {
    v56 = 0;
    goto LABEL_51;
  }

  IMRegisterForPreferredAccountChangeNotificationsInternal();
  v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v10 = v5;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v71, v80, 16);
  if (v12)
  {
    v13 = *v72;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v72 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v71 + 1) + 8 * i);
        if (objc_msgSend__appearsToBePhoneNumber(v15, v16, v17))
        {
          IMInternationalForPhoneNumberWithOptions();
        }

        else
        {
          objc_msgSend_lowercaseString(v15, v18, v19);
        }
        v20 = ;

        if (objc_msgSend_length(v20, v21, v22))
        {
          objc_msgSend_addObject_(v9, v23, v20);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v24, &v71, v80, 16);
    }

    while (v12);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v27 = objc_msgSend_sharedRegistry(IMChatRegistry, v25, v26);
  obj = objc_msgSend_allExistingChats(v27, v28, v29);

  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v30, &v67, v79, 16);
  if (!v33)
  {
LABEL_38:

LABEL_45:
    if (IMOSLoggingEnabled())
    {
      v58 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v76 = v10;
        _os_log_impl(&dword_1A823F000, v58, OS_LOG_TYPE_INFO, "[IMFindExistingChatForAddresses] Did not find existing chat for addresses: %@", buf, 0xCu);
      }
    }

    v56 = 0;
    goto LABEL_50;
  }

  v64 = *v68;
  v34 = &selRef__updateChatItemsForChatItemUpdater;
LABEL_16:
  v35 = 0;
  v62 = v34[285];
  while (1)
  {
    if (*v68 != v64)
    {
      objc_enumerationMutation(obj);
    }

    v36 = *(*(&v67 + 1) + 8 * v35);
    v37 = objc_msgSend_displayName(v36, v31, v32);
    if (objc_msgSend_isEqualToString_(v6, v38, &stru_1F1B76F98))
    {

      v6 = 0;
    }

    if (objc_msgSend_isEqualToString_(v37, v39, &stru_1F1B76F98))
    {

      v37 = 0;
    }

    if (objc_msgSend_joinState(v36, v40, v41) == 3 || objc_msgSend_joinState(v36, v42, v43) == 2)
    {
      v44 = 1;
      if (v37)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v44 = objc_msgSend_joinState(v36, v42, v43) == 4;
      if (v37)
      {
LABEL_26:
        isEqualToString = objc_msgSend_isEqualToString_(v37, v42, v6);
        goto LABEL_29;
      }
    }

    isEqualToString = v6 == 0;
LABEL_29:
    if ((isEqualToString & ((objc_msgSend_chatStyle(v36, v42, v43) == 45) ^ a3)) != 1 || v44 != a4)
    {
      goto LABEL_36;
    }

    v49 = objc_msgSend_participants(v36, v46, v47);
    v51 = objc_msgSend_arrayByApplyingSelector_(v49, v50, v62);
    v54 = objc_msgSend___imSetFromArray(v51, v52, v53);

    if (objc_msgSend_isEqualToSet_(v54, v55, v9))
    {
      break;
    }

LABEL_36:
    if (v33 == ++v35)
    {
      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v67, v79, 16);
      v34 = &selRef__updateChatItemsForChatItemUpdater;
      if (v33)
      {
        goto LABEL_16;
      }

      goto LABEL_38;
    }
  }

  v56 = v36;

  if (!v56)
  {
    goto LABEL_45;
  }

  if (IMOSLoggingEnabled())
  {
    v57 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v76 = v56;
      v77 = 2112;
      v78 = v10;
      _os_log_impl(&dword_1A823F000, v57, OS_LOG_TYPE_INFO, "[IMFindExistingChatForAddresses] Found existing chat: %@ for addresses: %@", buf, 0x16u);
    }
  }

LABEL_50:

LABEL_51:
  v59 = *MEMORY[0x1E69E9840];

  return v56;
}

id IMPreferredSendingAccountForAddressesWantsGroupWithFallbackService(void *a1, int a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  IMRegisterForPreferredAccountChangeNotificationsInternal();
  if (a2)
  {
    v9 = objc_msgSend_count(v5, v7, v8) > 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = IMFindExistingChatForAddresses(v5, 0, v9, 1);
  v13 = v10;
  if (v10)
  {
    v14 = objc_msgSend_account(v10, v11, v12);
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_13;
    }

    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "[IMPreferredSendingAccountForAddressesWantsGroupWithFallbackService] Found existing chat, returning chat's account", &v19, 2u);
    }
  }

  else
  {
    v14 = IMPreferredAccountForService(v6);
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_13;
    }

    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = v6;
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "[IMPreferredSendingAccountForAddressesWantsGroupWithFallbackService] Failed to find existing chat, for fallbackService: %@", &v19, 0xCu);
    }
  }

LABEL_13:
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = v14;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "[IMPreferredSendingAccountForAddressesWantsGroupWithFallbackService] account: %@", &v19, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];

  return v14;
}

id IMPreferredSendingAccountForAddressWithFallbackService(void *a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v11[0] = a1;
  v3 = MEMORY[0x1E695DEC8];
  v4 = a2;
  v5 = a1;
  v7 = objc_msgSend_arrayWithObjects_count_(v3, v6, v11, 1);

  v8 = IMPreferredSendingAccountForAddressesWantsGroupWithFallbackService(v7, 0, v4);

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void sub_1A83981AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A83981C4(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend__cachedChatWithGUID_(*(a1 + 32), a2, a2);
  if (v3)
  {
    v3 = objc_msgSend_addObject_(*(*(*(a1 + 40) + 8) + 40), v3, v3);
  }

  return MEMORY[0x1EEE66BB8](v3);
}

void sub_1A8398E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8398E9C(uint64_t a1, const char *a2, BOOL *a3)
{
  v5 = objc_msgSend__cachedChatWithGUID_(*(a1 + 32), a2, a2);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *a3 = *(*(*(a1 + 40) + 8) + 40) != 0;
}

void sub_1A8399020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8399038(uint64_t a1, const char *a2, BOOL *a3)
{
  v5 = objc_msgSend__cachedChatWithGUID_(*(a1 + 32), a2, a2);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *a3 = *(*(*(a1 + 40) + 8) + 40) != 0;
}

uint64_t IMCopyDDScannerResultFromAttributedStringData(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (objc_msgSend_length(v1, v2, v3))
  {
    v4 = objc_autoreleasePoolPush();
    v5 = objc_alloc(MEMORY[0x1E696ACD0]);
    v20 = 0;
    v7 = objc_msgSend_initForReadingFromData_error_(v5, v6, v1, &v20);
    v8 = v20;
    if (v7)
    {
      if (!qword_1EB2E9220)
      {
        qword_1EB2E9220 = MEMORY[0x1AC56C550](@"DDScannerResult", @"DataDetectorsCore");
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
          _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Could not unarchive DDScannerResult data: %@ error: %@", buf, 0x16u);
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
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Could not create keyed unarchiver due to error: %@", buf, 0xCu);
      }

      goto LABEL_14;
    }

    v11 = 0;
LABEL_16:

    objc_autoreleasePoolPop(v4);
    goto LABEL_17;
  }

  v11 = 0;
LABEL_17:

  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

void sub_1A8399CF8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A8399CA8);
  }

  _Unwind_Resume(a1);
}

id _IMDDResultAttributeName()
{
  if (qword_1EB2E91E8 != -1)
  {
    sub_1A84E2818();
  }

  v1 = qword_1EB2E91E0;

  return v1;
}

void sub_1A8399E60()
{
  v0 = MEMORY[0x1AC56C560]("DDResultAttributeName", @"DataDetectorsCore");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EB2E91E0, v1);
}

id sub_1A8399EB0(void *a1)
{
  v1 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1A8259C70;
  v17 = sub_1A825AF64;
  v18 = 0;
  v4 = objc_msgSend_length(v1, v2, v3);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A8399FE4;
  v10[3] = &unk_1E7813ED0;
  v12 = &v13;
  v5 = v1;
  v11 = v5;
  objc_msgSend_enumerateAttributesInRange_options_usingBlock_(v5, v6, 0, v4, 0, v10);
  v7 = v14[5];
  if (!v7)
  {
    v7 = v5;
  }

  v8 = v7;

  _Block_object_dispose(&v13, 8);
  return v8;
}

void sub_1A8399FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8399FE4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1A8259C70;
  v26 = sub_1A825AF64;
  v27 = 0;
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = sub_1A839A148;
  v19 = &unk_1E7813EA8;
  v21 = &v22;
  v8 = v7;
  v20 = v8;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v8, v9, &v16);
  v11 = v23[5];
  if (v11)
  {
    v12 = *(*(*(a1 + 40) + 8) + 40);
    if (!v12)
    {
      v13 = objc_msgSend_mutableCopy(*(a1 + 32), v10, v11, v16, v17, v18, v19);
      v14 = *(*(a1 + 40) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      v12 = *(*(*(a1 + 40) + 8) + 40);
      v11 = v23[5];
    }

    objc_msgSend_setAttributes_range_(v12, v10, v11, a3, a4, v16, v17, v18, v19);
  }

  _Block_object_dispose(&v22, 8);
}

void sub_1A839A130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A839A148(uint64_t a1, void *a2, void *a3)
{
  v20 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = objc_msgSend_allSupportedDDAttributesKeys(IMDDController, v5, v6);
    v10 = objc_msgSend_containsObject_(v8, v9, v20);

    if (v10)
    {
      v13 = *(*(*(a1 + 40) + 8) + 40);
      if (!v13)
      {
        v14 = objc_msgSend_mutableCopy(*(a1 + 32), v11, v12);
        v15 = *(*(a1 + 40) + 8);
        v16 = *(v15 + 40);
        *(v15 + 40) = v14;

        v13 = *(*(*(a1 + 40) + 8) + 40);
      }

      objc_msgSend_removeObjectForKey_(v13, v11, v20);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = IMCopyDDScannerResultFromAttributedStringData(v7);
        if (v17)
        {
          v18 = _IMDDResultAttributeName();
          objc_msgSend_setObject_forKey_(*(*(*(a1 + 40) + 8) + 40), v19, v17, v18);
        }
      }
    }
  }
}

id IMOffsetSerializedDDScannerResult(void *a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v7 = IMCopyDDScannerResultFromAttributedStringData(v3);
    if (v7)
    {
      if (qword_1EB2EA450 != -1)
      {
        sub_1A84E282C();
      }

      v8 = off_1EB2EA448;
      if (off_1EB2EA448)
      {
        v9 = objc_msgSend_coreResult(v7, v5, v6);
        v8(v9, a2);
      }

      else if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          LOWORD(v27) = 0;
          _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Failed to link DDResultOffsetAbsoluteRange from DataDetectorsCore.", &v27, 2u);
        }
      }

      v12 = v7;
      v13 = MEMORY[0x1AC56C550](@"DDScannerResult", @"DataDetectorsCore");
      v14 = objc_alloc(MEMORY[0x1E696ACC8]);
      inited = objc_msgSend_initRequiringSecureCoding_(v14, v15, 0);
      objc_msgSend_encodeObject_forKey_(inited, v17, v12, @"dd-result");
      objc_msgSend_encodeObject_forKey_(inited, v18, &unk_1F1BA1890, @"version");
      v19 = objc_alloc(MEMORY[0x1E695DEF0]);
      v22 = objc_msgSend_encodedData(inited, v20, v21);
      v10 = objc_msgSend_initWithData_(v19, v23, v22);

      if (!v10)
      {
        if (IMOSLoggingEnabled())
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v27 = 134218498;
            v28 = v13;
            v29 = 2048;
            v30 = v12;
            v31 = 2112;
            v32 = 0;
            _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "_DDScannerResultClass = %p, ddScannerResult = %p, keyedArchivedData = %@", &v27, 0x20u);
          }
        }

        v10 = 0;
      }
    }

    else
    {
      v10 = v4;
    }
  }

  else
  {
    v10 = v3;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v10;
}

void *sub_1A839A5F4()
{
  result = MEMORY[0x1AC56C560]("DDResultOffsetAbsoluteRange", @"DataDetectorsCore");
  off_1EB2EA448 = result;
  return result;
}

uint64_t sub_1A839A668()
{
  v0 = objc_alloc_init(IMDDController);
  qword_1ED7678F8 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A839A954(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12 = a2;
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = objc_msgSend_absoluteString(v12, v7, v8);
      objc_msgSend_replaceCharactersInRange_withString_(*(a1 + 32), v10, a3, a4, v9);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_replaceCharactersInRange_withString_(*(a1 + 32), v11, a3, a4, v12);
      }
    }
  }
}

void sub_1A839ADB4(uint64_t a1, const char *a2, uint64_t a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = (a1 + 32);
  v5 = objc_msgSend_text(*(a1 + 32), a2, a3);
  v8 = objc_msgSend_string(v5, v6, v7);

  v11 = objc_msgSend_text(*v4, v9, v10);
  v14 = objc_msgSend_mutableCopy(v11, v12, v13);

  isTypingMessage = objc_msgSend_isTypingMessage(*v4, v15, v16);
  if (isTypingMessage)
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = *(a1 + 32);
        *buf = 138412290;
        v47 = v23;
        _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Not scanning message, it is unfinished or empty: %@", buf, 0xCu);
      }

LABEL_14:
    }
  }

  else if ((objc_msgSend_supportsDataDetectors(MEMORY[0x1E69A8020], v17, v18) & 1) != 0 || *(a1 + 56) == 1)
  {
    if (v8 && CFStringGetLength(v8) >= 2)
    {
      v25 = objc_msgSend__scanMessageUsingScanner_attributedString_(*(a1 + 40), v24, *(a1 + 32), v14);
      goto LABEL_16;
    }

    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v28 = objc_msgSend_guid(*(a1 + 32), v26, v27);
        *buf = 138412290;
        v47 = v28;
        _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Did not scan message with guid: %@", buf, 0xCu);
      }

      goto LABEL_14;
    }
  }

  v25 = 0;
LABEL_16:
  v29 = objc_msgSend_copy(*(a1 + 32), v20, v21);
  v32 = objc_msgSend_flags(v29, v30, v31);
  v34 = v32;
  if (v25)
  {
    objc_msgSend__updateText_(v29, v33, v14);
    v35 = v34 | 0x110000;
    if (*(a1 + 57) == 1)
    {
      objc_msgSend__updateText_(*(a1 + 32), v33, v14);
    }
  }

  else
  {
    v35 = v32 | 0x100000;
  }

  if (*(a1 + 57) == 1)
  {
    objc_msgSend__updateFlags_(*(a1 + 32), v33, v35);
  }

  objc_msgSend__updateFlags_(v29, v33, v35);
  if (IMOSLoggingEnabled())
  {
    v36 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = @"NO";
      if (v25)
      {
        v38 = @"YES";
      }

      else
      {
        v38 = @"NO";
      }

      *buf = 138412802;
      v47 = v29;
      v49 = v38;
      v48 = 2112;
      if (!isTypingMessage)
      {
        v37 = @"YES";
      }

      v50 = 2112;
      v51 = v37;
      _os_log_impl(&dword_1A823F000, v36, OS_LOG_TYPE_INFO, " => Result message: %@  Found Results: %@, wasProcessed = %@", buf, 0x20u);
    }
  }

  v39 = *(a1 + 48);
  if (v39)
  {
    v40 = isTypingMessage ^ 1u;
    if (*(a1 + 57) == 1)
    {
      (*(v39 + 16))(v39, v40, v29);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1A839B184;
      block[3] = &unk_1E7813EF8;
      v44 = *(a1 + 48);
      v45 = v40;
      v43 = v29;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  v41 = *MEMORY[0x1E69E9840];
}

void sub_1A839B150(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A839AF58);
  }

  _Unwind_Resume(a1);
}

void sub_1A839B1E0(uint64_t a1, const char *a2)
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = *MEMORY[0x1E69A5FE0];
  v10[0] = *MEMORY[0x1E69A5FF8];
  v10[1] = v3;
  v4 = *MEMORY[0x1E69A5F38];
  v10[2] = *MEMORY[0x1E69A5EF0];
  v10[3] = v4;
  v10[4] = *MEMORY[0x1E69A5F48];
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], a2, v10, 5);
  v7 = objc_msgSend_setWithArray_(v2, v6, v5);
  v8 = qword_1EB2E9108;
  qword_1EB2E9108 = v7;

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1A839BA78(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = objc_msgSend__processLoadedChatDictionaries_(*(a1 + 32), v4, v3);
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = MEMORY[0x1E696AD98];
      v12 = objc_msgSend_count(v5, v9, v10);
      v14 = objc_msgSend_numberWithUnsignedInteger_(v11, v13, v12);
      v19 = 138412290;
      v20 = v14;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Unblackholed %@ chats, returning first object", &v19, 0xCu);
    }
  }

  v15 = objc_msgSend_firstObject(v5, v6, v7);
  v16 = *(*(a1 + 40) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  v18 = *MEMORY[0x1E69E9840];
}

id sub_1A839C3FC(void *a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v6 = objc_msgSend_chatStyle(v3, v4, v5);
  v9 = objc_msgSend_groupID(v3, v7, v8);
  v12 = objc_msgSend_participants(v3, v10, v11);
  v14 = objc_msgSend_arrayByApplyingSelector_(v12, v13, "ID");

  v17 = objc_msgSend_lastAddressedHandleID(v3, v15, v16);
  v20 = objc_msgSend_originalGroupID(v3, v18, v19);
  v23 = objc_msgSend_chatIdentifier(v3, v21, v22);
  v26 = objc_msgSend_domainIdentifiers(v3, v24, v25);
  v29 = objc_msgSend_account(v3, v27, v28);
  v30 = IMCopyGUIDForChatOnAccount(v3, v29);

  v32 = objc_msgSend_mergedDomainIdentifiersWithLatestChatGUID_(v26, v31, v30);

  v34 = objc_msgSend_muteIdentifiersForChatStyle_groupID_domainIdentifiers_participantIDs_lastAddressedHandleID_originalGroupID_chatIdentifier_(a1, v33, v6, v9, v32, v14, v17, v20, v23);

  return v34;
}

void sub_1A839C574(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v9 = objc_msgSend_muteIdentifiersForChat_(a1, v7, a3);
  objc_msgSend_muteChatWithMuteIdentifiers_untilDate_syncToPairedDevice_(a1, v8, v9, v6, 1);
}

id sub_1A839C5F0(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_muteIdentifiersForChat_(a1, a2, a3);
  v6 = objc_msgSend_unmuteDateForMuteIdentifiers_(a1, v5, v4);

  return v6;
}

uint64_t sub_1A839C648(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_muteIdentifiersForChat_(a1, a2, a3);
  isMutedChatForMuteIdentifiers = objc_msgSend_isMutedChatForMuteIdentifiers_(a1, v5, v4);

  return isMutedChatForMuteIdentifiers;
}

void sub_1A839CFEC(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v198 = *MEMORY[0x1E69E9840];
  v159 = a1;
  v160 = a2;
  v9 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v7, v8);
  isOneChatEnabled = objc_msgSend_isOneChatEnabled(v9, v10, v11);

  if (isOneChatEnabled)
  {
    v14 = objc_msgSend_allGUIDsForChat_(v159, v13, v160);
    v165 = objc_msgSend_array(MEMORY[0x1E695DF70], v15, v16);
    v161 = objc_msgSend_array(MEMORY[0x1E695DF70], v17, v18);
    v157 = objc_msgSend_currentMessageFilterMode(v159, v19, v20);
    v187 = 0u;
    v188 = 0u;
    v189 = 0u;
    v190 = 0u;
    obj = v14;
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v187, v197, 16);
    if (v22)
    {
      v23 = *v188;
      v24 = MEMORY[0x1E69A7AC8];
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v188 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v187 + 1) + 8 * i);
          v185 = 0;
          v186 = 0;
          IMComponentsFromChatGUID();
          v27 = 0;
          v28 = 0;
          v31 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v29, v30);
          isMergeFilteredThreadsEnabled = objc_msgSend_isMergeFilteredThreadsEnabled(v31, v32, v33);

          if (!isMergeFilteredThreadsEnabled || !objc_msgSend_canBeMessageLevelFiltered(v160, v35, v36) || (objc_msgSend_chatGUIDToInfoMap(v159, v35, v37), v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKey_(v38, v39, v26), v40 = objc_claimAutoreleasedReturnValue(), isFiltered = objc_msgSend_isFiltered(v40, v41, v42), v40, v38, objc_msgSend_isFilterMode_subsetOf_(MEMORY[0x1E69A8210], v44, isFiltered, v157)))
          {
            if ((objc_msgSend_isEqualToString_(v28, v35, *v24) & 1) == 0)
            {
              v46 = IMLogHandleForCategory();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v196 = v26;
                _os_log_error_impl(&dword_1A823F000, v46, OS_LOG_TYPE_ERROR, "Found invalid chat GUID %@ during history load", buf, 0xCu);
              }
            }

            objc_msgSend_addObject_(v165, v45, v27);
            objc_msgSend_addObject_(v161, v47, *v24);
          }
        }

        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v48, &v187, v197, 16);
      }

      while (v22);
    }

    if (a3)
    {
      v49 = v165;
      *a3 = v165;
    }

    v50 = v161;
    if (!a4)
    {
      goto LABEL_78;
    }

LABEL_77:
    v150 = v50;
    v151 = v50;
    v50 = v150;
    *a4 = v150;
    goto LABEL_78;
  }

  obja = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v166 = objc_msgSend_currentMessageFilterMode(v159, v51, v52);
  if (objc_msgSend_chatStyle(v160, v53, v54) != 45 || a5)
  {
    v162 = objc_msgSend_allGUIDsForChat_(v159, v55, v160);
    v183 = 0u;
    v184 = 0u;
    v181 = 0u;
    v182 = 0u;
    v96 = objc_msgSend_countByEnumeratingWithState_objects_count_(v162, v95, &v181, v194, 16);
    if (v96)
    {
      v97 = *v182;
      isFilterMode_subsetOf = 1;
      do
      {
        for (j = 0; j != v96; ++j)
        {
          if (*v182 != v97)
          {
            objc_enumerationMutation(v162);
          }

          v100 = *(*(&v181 + 1) + 8 * j);
          v179 = 0;
          v180 = 0;
          IMComponentsFromChatGUID();
          v101 = 0;
          v102 = 0;
          v103 = objc_alloc(MEMORY[0x1E69A6128]);
          second = objc_msgSend_initWithFirst_second_(v103, v104, v101, v102);
          v108 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v106, v107);
          v111 = objc_msgSend_isMergeFilteredThreadsEnabled(v108, v109, v110);

          if (v111 && objc_msgSend_canBeMessageLevelFiltered(v160, v112, v113))
          {
            v115 = objc_msgSend_chatGUIDToInfoMap(v159, v112, v114);
            v117 = objc_msgSend_objectForKey_(v115, v116, v100);
            v120 = objc_msgSend_isFiltered(v117, v118, v119);

            isFilterMode_subsetOf = objc_msgSend_isFilterMode_subsetOf_(MEMORY[0x1E69A8210], v121, v120, v166);
          }

          if (second && (isFilterMode_subsetOf & 1) != 0)
          {
            objc_msgSend_addObject_(obja, v112, second);
          }
        }

        v96 = objc_msgSend_countByEnumeratingWithState_objects_count_(v162, v122, &v181, v194, 16);
      }

      while (v96);
    }
  }

  else
  {
    v177 = 0u;
    v178 = 0u;
    v175 = 0u;
    v176 = 0u;
    v162 = objc_msgSend_participants(v160, v55, v56);
    v156 = objc_msgSend_countByEnumeratingWithState_objects_count_(v162, v57, &v175, v193, 16);
    if (v156)
    {
      v155 = *v176;
      do
      {
        v60 = 0;
        do
        {
          if (*v176 != v155)
          {
            v61 = v60;
            objc_enumerationMutation(v162);
            v60 = v61;
          }

          v158 = v60;
          v62 = *(*(&v175 + 1) + 8 * v60);
          v171 = 0u;
          v172 = 0u;
          v173 = 0u;
          v174 = 0u;
          v63 = objc_msgSend__chatSiblings(v62, v58, v59);
          v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v64, &v171, v192, 16);
          if (v65)
          {
            v66 = *v172;
            do
            {
              for (k = 0; k != v65; ++k)
              {
                if (*v172 != v66)
                {
                  objc_enumerationMutation(v63);
                }

                v68 = *(*(&v171 + 1) + 8 * k);
                v69 = IMChatRegistryLogHandle();
                if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v196 = v68;
                  _os_log_impl(&dword_1A823F000, v69, OS_LOG_TYPE_DEFAULT, "     Query with participant: %@", buf, 0xCu);
                }

                v70 = IMChatRegistryLogHandle();
                if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
                {
                  v73 = objc_msgSend_ID(v68, v71, v72);
                  *buf = 138412290;
                  v196 = v73;
                  _os_log_impl(&dword_1A823F000, v70, OS_LOG_TYPE_DEFAULT, "           => Adding handle: %@", buf, 0xCu);
                }

                v74 = IMChatRegistryLogHandle();
                if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
                {
                  v77 = objc_msgSend_service(v68, v75, v76);
                  v80 = objc_msgSend_internalName(v77, v78, v79);
                  *buf = 138412290;
                  v196 = v80;
                  _os_log_impl(&dword_1A823F000, v74, OS_LOG_TYPE_DEFAULT, "           => Adding service: %@", buf, 0xCu);
                }

                v81 = objc_alloc(MEMORY[0x1E69A6128]);
                v84 = objc_msgSend_ID(v68, v82, v83);
                v87 = objc_msgSend_service(v68, v85, v86);
                v90 = objc_msgSend_internalName(v87, v88, v89);
                v92 = objc_msgSend_initWithFirst_second_(v81, v91, v84, v90);

                if (v92)
                {
                  objc_msgSend_addObject_(obja, v93, v92);
                }
              }

              v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v94, &v171, v192, 16);
            }

            while (v65);
          }

          v60 = v158 + 1;
        }

        while (v158 + 1 != v156);
        v156 = objc_msgSend_countByEnumeratingWithState_objects_count_(v162, v58, &v175, v193, 16);
      }

      while (v156);
    }
  }

  v165 = objc_msgSend_array(MEMORY[0x1E695DF70], v123, v124);
  v127 = objc_msgSend_array(MEMORY[0x1E695DF70], v125, v126);
  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  obj = obja;
  v131 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v128, &v167, v191, 16);
  if (v131)
  {
    v132 = *v168;
    do
    {
      for (m = 0; m != v131; ++m)
      {
        if (*v168 != v132)
        {
          objc_enumerationMutation(obj);
        }

        v134 = *(*(&v167 + 1) + 8 * m);
        v135 = objc_msgSend_first(v134, v129, v130);
        objc_msgSend_addObject_(v165, v136, v135);

        v139 = objc_msgSend_second(v134, v137, v138);
        objc_msgSend_addObject_(v127, v140, v139);

        if (IMOSLoggingEnabled())
        {
          v141 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v141, OS_LOG_TYPE_INFO))
          {
            v144 = objc_msgSend_first(v134, v142, v143);
            *buf = 138412290;
            v196 = v144;
            _os_log_impl(&dword_1A823F000, v141, OS_LOG_TYPE_INFO, "           => Adding identifier: %@", buf, 0xCu);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v145 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
          {
            v148 = objc_msgSend_second(v134, v146, v147);
            *buf = 138412290;
            v196 = v148;
            _os_log_impl(&dword_1A823F000, v145, OS_LOG_TYPE_INFO, "           => Adding service: %@", buf, 0xCu);
          }
        }
      }

      v131 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v129, &v167, v191, 16);
    }

    while (v131);
  }

  if (a3)
  {
    v149 = v165;
    *a3 = v165;
  }

  v50 = v127;
  if (a4)
  {
    goto LABEL_77;
  }

LABEL_78:

  v152 = *MEMORY[0x1E69E9840];
}

void sub_1A839DC70(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v9 = a1;
  v8 = IMSharedHelperPersonCentricMergingEnabled();
  sub_1A839CFEC(v9, v7, a3, a4, v8);
}

uint64_t sub_1A83A103C(uint64_t result, const char *a2)
{
  if (a2)
  {
    *(*(*(result + 56) + 8) + 24) = 1;
    return objc_msgSend_setUserActivityForChat_message_orHandles_(*(result + 32), a2, *(result + 40), *(result + 48), 0);
  }

  return result;
}

uint64_t sub_1A83A1068(uint64_t result, const char *a2)
{
  if ((*(*(*(result + 56) + 8) + 24) & 1) == 0)
  {
    return objc_msgSend_setUserActivityForChat_message_orHandles_(*(result + 32), a2, *(result + 40), *(result + 48), 0);
  }

  return result;
}

void sub_1A83A61E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v9 = objc_msgSend_sharedInstance(IMFileTransferCenter, v7, v8);
  objc_msgSend__handleSerializedFileTransfers_(v9, v10, v5);

  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v16 = objc_msgSend_guid(*(a1 + 48), v13, v14);
  objc_msgSend_historyQuery_chatID_services_finishedWithResult_limit_(v11, v15, v12, v16, *(a1 + 56), v6, *(a1 + 64));
}

void sub_1A83A6294(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = v7;
  v9 = *(a1 + 56);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A823F000, v8, OS_SIGNPOST_INTERVAL_END, v9, "loadHistoryForChatWithGUID", "", buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A83A6470;
  aBlock[3] = &unk_1E7810E88;
  v19 = *(a1 + 40);
  v10 = v5;
  v17 = v10;
  v11 = v6;
  v18 = v11;
  v12 = _Block_copy(aBlock);
  if (*(a1 + 64))
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83A6488;
    block[3] = &unk_1E7813FC8;
    v14 = *(a1 + 48);
    v15 = v12;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void sub_1A83A68C8(uint64_t a1, void *a2, void *a3, char a4, char a5)
{
  v9 = a2;
  v10 = a3;
  v11 = *(a1 + 32);
  v12 = v11;
  v13 = *(a1 + 80);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A823F000, v12, OS_SIGNPOST_INTERVAL_END, v13, "loadPagedHistoryAroundMessageWithGUID", "", buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A83A6AFC;
  aBlock[3] = &unk_1E7814018;
  v14 = v10;
  v26 = v14;
  v21 = *(a1 + 40);
  v15 = *(&v21 + 1);
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  *&v18 = v16;
  *(&v18 + 1) = v17;
  v27 = v21;
  v28 = v18;
  v30 = *(a1 + 88);
  v19 = v9;
  v29 = v19;
  v31 = a4;
  v32 = a5;
  v20 = _Block_copy(aBlock);
  if (*(a1 + 104))
  {
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83A6B94;
    block[3] = &unk_1E7813FC8;
    v23 = *(a1 + 72);
    v24 = v20;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void sub_1A83A6AFC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedInstance(IMFileTransferCenter, a2, a3);
  objc_msgSend__handleSerializedFileTransfers_(v4, v5, *(a1 + 32));

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v12 = objc_msgSend_guid(*(a1 + 56), v8, v9);
  v11 = *(a1 + 96);
  objc_msgSend_pagedHistoryQuery_chatID_services_numberOfMessagesBefore_numberOfMessagesAfter_finishedWithResult_hasMessagesBefore_hasMessagesAfter_(v6, v10, v7, v12, *(a1 + 64), *(a1 + 80), *(a1 + 88), *(a1 + 72), v11);
}

void sub_1A83A6EA8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48))
  {
    v4 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83A6F88;
    block[3] = &unk_1E7810E88;
    v8 = *(a1 + 40);
    v6 = *(a1 + 32);
    v7 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void sub_1A83A7284(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48))
  {
    v4 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83A7364;
    block[3] = &unk_1E7810E88;
    v8 = *(a1 + 40);
    v6 = *(a1 + 32);
    v7 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void sub_1A83A7994(uint64_t a1, const char *a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v12 = objc_msgSend_guid(*(a1 + 48), a2, a3);
    v8 = *(a1 + 56);
    v10 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v9, a2);
    objc_msgSend_markAsSpamQuery_chatID_services_finishedWithResult_(v6, v11, v7, v12, v8, v10);
  }
}

void sub_1A83A7D44(uint64_t a1, void *a2)
{
  v5 = a2;
  if (*(a1 + 72))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = objc_msgSend_guid(*(a1 + 48), v3, v4);
    objc_msgSend_frequentRepliesQuery_chatID_services_finishedWithResult_limit_(v6, v9, v7, v8, *(a1 + 56), v5, *(a1 + 64));
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83A7E78;
    block[3] = &unk_1E78140E0;
    v16 = *(a1 + 32);
    v10 = *(&v16 + 1);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    *&v13 = v11;
    *(&v13 + 1) = v12;
    v18 = v16;
    v19 = v13;
    v14 = v5;
    v15 = *(a1 + 64);
    v20 = v14;
    v21 = v15;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void sub_1A83A7E78(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = objc_msgSend_guid(*(a1 + 48), a2, a3);
  objc_msgSend_frequentRepliesQuery_chatID_services_finishedWithResult_limit_(v4, v6, v5, v7, *(a1 + 56), *(a1 + 64), *(a1 + 72));
}

void sub_1A83A8288(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v9 = objc_msgSend_sharedInstance(IMFileTransferCenter, v7, v8);
  objc_msgSend__handleSerializedFileTransfers_(v9, v10, v5);

  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v16 = objc_msgSend_guid(*(a1 + 48), v13, v14);
  objc_msgSend_historyQuery_chatID_services_finishedWithResult_limit_(v11, v15, v12, v16, *(a1 + 56), v6, *(a1 + 64));
}

void sub_1A83A8338(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 40))
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83A8430;
    block[3] = &unk_1E7810E88;
    v10 = *(a1 + 32);
    v8 = v5;
    v9 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void sub_1A83A8730(uint64_t a1, void *a2)
{
  v5 = a2;
  if (*(a1 + 64))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = objc_msgSend_guid(*(a1 + 48), v3, v4);
    objc_msgSend_attachmentQuery_chatID_services_finishedWithResult_(v6, v9, v7, v8, *(a1 + 56), v5);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83A8864;
    block[3] = &unk_1E78129F8;
    v14 = *(a1 + 32);
    v10 = *(&v14 + 1);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    *&v13 = v11;
    *(&v13 + 1) = v12;
    v16 = v14;
    v17 = v13;
    v18 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void sub_1A83A8864(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = objc_msgSend_guid(*(a1 + 48), a2, a3);
  objc_msgSend_attachmentQuery_chatID_services_finishedWithResult_(v4, v6, v5, v7, *(a1 + 56), *(a1 + 64));
}

void sub_1A83A8BB8(uint64_t a1, const char *a2, uint64_t a3)
{
  if (*(a1 + 64))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v15 = objc_msgSend_guid(*(a1 + 48), a2, a3);
    v7 = *(a1 + 56);
    v9 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v8, a2);
    objc_msgSend_uncachedAttachmentCountQuery_chatID_services_finishedWithResult_(v5, v10, v6, v15, v7, v9);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83A8D10;
    block[3] = &unk_1E7814180;
    *v16 = *(a1 + 32);
    v11 = v16[1];
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    *&v14 = v12;
    *(&v14 + 1) = v13;
    v18 = *v16;
    v19 = v14;
    v20 = a2;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void sub_1A83A8D10(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10 = objc_msgSend_guid(*(a1 + 48), a2, a3);
  v6 = *(a1 + 56);
  v8 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v7, *(a1 + 64));
  objc_msgSend_uncachedAttachmentCountQuery_chatID_services_finishedWithResult_(v4, v9, v5, v10, v6, v8);
}

void sub_1A83A9240(uint64_t a1, const char *a2, uint64_t a3)
{
  if (*(a1 + 64))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v12 = objc_msgSend_guid(*(a1 + 48), a2, a3);
    objc_msgSend_isDownloadingQuery_chatID_services_finishedWithResult_(v5, v7, v6, v12, *(a1 + 56), a2);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83A9378;
    block[3] = &unk_1E78141A8;
    *v13 = *(a1 + 32);
    v8 = v13[1];
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    *&v11 = v9;
    *(&v11 + 1) = v10;
    v15 = *v13;
    v16 = v11;
    v17 = a2;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void sub_1A83A9378(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = objc_msgSend_guid(*(a1 + 48), a2, a3);
  objc_msgSend_isDownloadingQuery_chatID_services_finishedWithResult_(v4, v6, v5, v7, *(a1 + 56), *(a1 + 64));
}

void _ReplaceExtensionPayloadDataWithAttachmentForOutgoingMessage(void *a1, void *a2, void *a3, void *a4)
{
  v87 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v75 = a2;
  v8 = a3;
  v9 = a4;
  if ((objc_msgSend_isTypingMessage(v7, v10, v11) & 1) == 0)
  {
    v14 = objc_msgSend_payloadData(v7, v12, v13);
    v17 = objc_msgSend_length(v14, v15, v16);

    if (v17)
    {
      v18 = IMChatRegistryLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v84 = v7;
        v85 = 2112;
        v86 = v75;
        _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_DEFAULT, "Request to _ReplaceExtensionPayloadDataWithAttachmentForOutgoingMessage: %@ chatIdentifier: %@", buf, 0x16u);
      }

      v72 = IMExtensionPayloadUnarchivingClasses();
      v19 = objc_alloc(MEMORY[0x1E696ACD0]);
      v22 = objc_msgSend_payloadData(v7, v20, v21);
      v80 = 0;
      v71 = objc_msgSend_initForReadingFromData_error_(v19, v23, v22, &v80);
      v73 = v80;

      v74 = objc_msgSend_decodeObjectOfClasses_forKey_(v71, v24, v72, *MEMORY[0x1E696A508]);
      if (v73 && IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v84 = v73;
          _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Failed to unarchive payload. Error: %@", buf, 0xCu);
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = *MEMORY[0x1E69A6EE0];
        v70 = objc_msgSend_objectForKey_(v74, v26, *MEMORY[0x1E69A6EE0]);
        if (objc_msgSend_length(v70, v28, v29))
        {
          v32 = objc_msgSend_sharedInstance(IMFileTransferCenter, v30, v31);
          v82 = v70;
          v34 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v33, &v82, 1);
          v37 = objc_msgSend_guid(v7, v35, v36);
          v68 = objc_msgSend_guidsForStoredAttachmentPayloadData_messageGUID_(v32, v38, v34, v37);

          v39 = IMChatRegistryLogHandle();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v84 = v68;
            _os_log_impl(&dword_1A823F000, v39, OS_LOG_TYPE_DEFAULT, "Wrote extension payload data to attachments folder with GUIDs: %@", buf, 0xCu);
          }

          v41 = objc_msgSend_arrayWithArray_(MEMORY[0x1E695DF70], v40, v68);
          v44 = objc_msgSend_fileTransferGUIDs(v7, v42, v43);
          objc_msgSend_addObjectsFromArray_(v41, v45, v44);

          v48 = objc_msgSend_copy(v41, v46, v47);
          objc_msgSend_setFileTransferGUIDs_(v7, v49, v48);

          v69 = objc_msgSend_mutableCopy(v74, v50, v51);
          objc_msgSend_removeObjectForKey_(v69, v52, v27);
          v54 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v53, v69, 0, 0);
          objc_msgSend_setPayloadData_(v7, v55, v54);

          objc_msgSend__updateFileTransferGUIDs_(v8, v56, v41);
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v57 = v41;
          v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v58, &v76, v81, 16);
          if (v61)
          {
            v62 = *v77;
            do
            {
              v63 = 0;
              do
              {
                if (*v77 != v62)
                {
                  objc_enumerationMutation(v57);
                }

                v64 = *(*(&v76 + 1) + 8 * v63);
                v65 = objc_msgSend_sharedInstance(IMFileTransferCenter, v59, v60, v68);
                objc_msgSend_assignTransfer_toMessage_account_(v65, v66, v64, v8, v9);

                ++v63;
              }

              while (v61 != v63);
              v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v59, &v76, v81, 16);
            }

            while (v61);
          }
        }
      }
    }
  }

  v67 = *MEMORY[0x1E69E9840];
}

double sub_1A83A9E48(uint64_t a1)
{
  result = (a1 * a1) * 3600.0;
  if (result > 172800.0)
  {
    return 172800.0;
  }

  return result;
}

double sub_1A83A9E70(void *a1, BOOL *a2)
{
  v3 = a1;
  v6 = v3;
  if (!v3)
  {
    v9 = 0;
    v11 = 0.0;
    if (!a2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  objc_msgSend_timeIntervalSinceNow(v3, v4, v5);
  v8 = v7 > 0.0;
  v9 = v7 <= 0.0;
  v10 = -v7;
  if (v8)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v10;
  }

  if (a2)
  {
LABEL_6:
    *a2 = v9;
  }

LABEL_7:

  return v11;
}

uint64_t sub_1A83A9EE0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v7 = v4;
  v8 = (v3 | v4) == 0;
  if (v4)
  {
    v8 = objc_msgSend_unsignedIntegerValue(v4, v5, v6);
  }

  if (v3)
  {
    v9 = objc_msgSend_unsignedIntegerValue(v3, v5, v6);
    if (v9)
    {
      v10 = v9 - 1;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 + v8;
}

double sub_1A83AA28C()
{
  result = *MEMORY[0x1AC56C560]("kCLLocationAccuracyNearestTenMeters", @"CoreLocation");
  qword_1EB2EA458 = *&result;
  return result;
}

uint64_t sub_1A83AA304()
{
  v0 = objc_alloc_init(IMLocationManager);
  qword_1ED767900 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A83AAA34(id *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v3;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Completion block called with error: %@", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  objc_msgSend_setInRequestPreciseLocation_(WeakRetained, v6, 0);

  if (v3)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v14 = v3;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Error happened when requesting temporary precise location: %@", buf, 0xCu);
      }
    }

    (*(a1[4] + 2))();
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83AAC50;
    block[3] = &unk_1E78141F8;
    objc_copyWeak(&v12, a1 + 6);
    v10 = a1[5];
    v11 = a1[4];
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v12);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1A83AAC50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = objc_msgSend_locationManager(WeakRetained, v3, v4);
  v8 = objc_msgSend__limitsPrecision(v5, v6, v7);

  if (v8)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "User denied accurate location authorization.", buf, 2u);
      }
    }

    v10 = objc_alloc(MEMORY[0x1E695DF20]);
    v12 = objc_msgSend_initWithObjectsAndKeys_(v10, v11, @"IMLocationManager does not have accurate location access", *MEMORY[0x1E696A578], 0);
    v13 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = objc_msgSend_initWithDomain_code_userInfo_(v13, v14, *MEMORY[0x1E69A5F40], 42, v12);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v17 = objc_loadWeakRetained((a1 + 48));
    objc_msgSend__startLocationUpdateTimerWithAuthorizedHandler_updateHandler_(v17, v16, *(a1 + 32), *(a1 + 40));
  }
}

void sub_1A83ABD60(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v6 = objc_msgSend_handlers(*(a1 + 32), v4, v5);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v22, v26, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v23;
    do
    {
      v13 = 0;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = objc_msgSend_objectAtIndexedSubscript_(*(*(&v22 + 1) + 8 * v13), v9, 1);
        v17 = objc_msgSend_error(*(a1 + 32), v15, v16);
        (v14)[2](v14, v3, v17);

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v22, v26, 16);
    }

    while (v11);
  }

  objc_msgSend_removeAllObjects(v6, v9, v10);
  objc_msgSend_setLocation_(*(a1 + 32), v18, 0);
  objc_msgSend_setError_(*(a1 + 32), v19, 0);
  objc_msgSend_setLocateStartTime_(*(a1 + 32), v20, 0);

  v21 = *MEMORY[0x1E69E9840];
}

objc_class *sub_1A83ABF1C()
{
  result = MEMORY[0x1AC56C550](@"_MKLocationShifter", @"MapKit");
  if (result)
  {
    v1 = objc_alloc_init(result);
    qword_1EB2EA468 = v1;

    return MEMORY[0x1EEE66BB8](v1);
  }

  return result;
}

void sub_1A83AC0B0(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Location shift started", buf, 2u);
    }
  }

  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v8 = objc_msgSend_locationShifter(v5, v6, v7);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1A83AC308;
  v18[3] = &unk_1E7814270;
  v9 = *(a1 + 40);
  v20 = *(a1 + 48);
  v10 = v2;
  v19 = v10;
  objc_msgSend_shiftLocation_withCompletionHandler_callbackQueue_(v8, v11, v9, v18, MEMORY[0x1E69E96A0]);

  v12 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v10, v12))
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Location shift timed out.", buf, 2u);
      }
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1A83AC3CC;
    v15[3] = &unk_1E7810230;
    v17 = *(a1 + 48);
    v16 = *(a1 + 40);
    v14 = MEMORY[0x1E69E96A0];
    dispatch_async(MEMORY[0x1E69E96A0], v15);
  }
}

void sub_1A83AC308(uint64_t a1, void *a2)
{
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Location shift completed", v5, 2u);
    }
  }

  (*(*(a1 + 40) + 16))();
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_1A83AC424()
{
  result = MEMORY[0x1AC56C550](@"CLLocationManager", @"CoreLocation");
  qword_1EB2EA478 = result;
  return result;
}

uint64_t sub_1A83AC498()
{
  result = MEMORY[0x1AC56C550](@"CLInUseAssertion", @"CoreLocation");
  qword_1EB2EA488 = result;
  return result;
}

void sub_1A83ACC88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A83ACCC8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A83ACD80;
  v6[3] = &unk_1E7810450;
  objc_copyWeak(&v8, (a1 + 32));
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);

  objc_destroyWeak(&v8);
}

void sub_1A83ACD80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_msgSend_handleWithFMLHandle_(IMFindMyHandle, v2, *(a1 + 32));
  objc_msgSend_didReceiveLocationForHandle_(WeakRetained, v4, v3);
}

void sub_1A83ACDF0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83ACEB0;
  block[3] = &unk_1E78142E8;
  objc_copyWeak(v9, (a1 + 32));
  v8 = v5;
  v9[1] = a3;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v9);
}

void sub_1A83ACEB0(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = IMLocationLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    v19 = 138412546;
    v20 = v4;
    v21 = 2048;
    v22 = v5;
    _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_DEFAULT, "FindMyLocateSession friendShipUpdateCallback. updateFriend: %@, updateType: %lu", &v19, 0x16u);
  }

  MEMORY[0x1AC56C550](@"FMLHandle", @"FindMyLocateObjCWrapper");
  v7 = *(a1 + 32);
  v6 = (a1 + 32);
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend_handle(*v6, v8, v9), v10 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v10, (isKindOfClass))
  {
    v14 = objc_msgSend_handle(*v6, v12, v13);
    v16 = objc_msgSend_handleWithFMLHandle_(IMFindMyHandle, v15, v14);
    objc_msgSend__postRelationshipStatusDidChangeNotificationWithIMFindMyHandle_(WeakRetained, v17, v16);
  }

  else
  {
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E2D3C(v6);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1A83AD040(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A83AD0F8;
  v5[3] = &unk_1E7810450;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void sub_1A83AD0F8(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = IMLocationLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_DEFAULT, "FindMyLocateSession meDeviceUpdateCallback: %@", &v10, 0xCu);
  }

  v6 = objc_msgSend_deviceWithFMLDevice_(IMFindMyDevice, v5, *(a1 + 32));
  objc_msgSend_setActiveDevice_(WeakRetained, v7, v6);

  objc_msgSend__postNotification_object_userInfo_(WeakRetained, v8, @"__kIMFMFSessionActiveDeviceChangedNotification", 0, 0);
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1A83AD520(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E2E50();
    }
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_5;
    }

    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "FindMyLocateSession startUpdatingFriendsWithCompletion completed without an error", v4, 2u);
    }
  }

LABEL_5:
}

void sub_1A83AD5F4(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = v5;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "FindMyLocateSession getFriendsSharingLocationsWithMeWithCompletion completed initial fetch with friends: %@. Posting notifications for these handles now", buf, 0xCu);
    }
  }

  v10 = MEMORY[0x1E695DFD8];
  if (v5)
  {
    v11 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v7, v5);
    v13 = objc_msgSend___im_findMyHandlesWithFMLFriends_(v10, v12, v11);
  }

  else
  {
    v13 = objc_msgSend_set(MEMORY[0x1E695DFD8], v7, v8);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = v13;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v21, v25, 16);
  if (v17)
  {
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v14);
        }

        objc_msgSend__postRelationshipStatusDidChangeNotificationWithIMFindMyHandle_(*(a1 + 32), v16, *(*(&v21 + 1) + 8 * v19++), v21);
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v21, v25, 16);
    }

    while (v17);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void sub_1A83AD7D0(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = v5;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "FindMyLocateSession getFriendsFollowingMyLocationWithCompletion completed initial fetch with friends: %@. Posting notifications for these handles now", buf, 0xCu);
    }
  }

  v10 = MEMORY[0x1E695DFD8];
  if (v5)
  {
    v11 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v7, v5);
    v13 = objc_msgSend___im_findMyHandlesWithFMLFriends_(v10, v12, v11);
  }

  else
  {
    v13 = objc_msgSend_set(MEMORY[0x1E695DFD8], v7, v8);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = v13;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v21, v25, 16);
  if (v17)
  {
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v14);
        }

        objc_msgSend__postRelationshipStatusDidChangeNotificationWithIMFindMyHandle_(*(a1 + 32), v16, *(*(&v21 + 1) + 8 * v19++), v21);
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v21, v25, 16);
    }

    while (v17);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void sub_1A83AD9AC(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E2EC0();
    }
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_5;
    }

    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "FindMyLocateSession startMonitoringActiveLocationSharingDeviceChangeWithCompletion completed without an error.", v4, 2u);
    }
  }

LABEL_5:
}

uint64_t sub_1A83ADAC4()
{
  v0 = objc_alloc_init(IMFMFSession);
  qword_1ED767908 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

objc_class *sub_1A83ADF3C()
{
  result = MEMORY[0x1AC56C550](@"ACAccountStore", @"AppleAccount");
  if (result)
  {
    v1 = objc_alloc_init(result);
    qword_1EB2E9D60 = v1;

    return MEMORY[0x1EEE66BB8](v1);
  }

  return result;
}

void sub_1A83AE874(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E2F8C(a1);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "FindMyLocateSession startRefreshingLocationForHandles completed for handles: %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1A83AEE74(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E3008(a1);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "FindMyLocateSession stopRefreshingLocationForHandles completed for handles: %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1A83AFFF8(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = IMLocationLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v10 = 138412802;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "refreshLocationForHandles %@ callerId %@ error %@", &v10, 0x20u);
  }

  objc_msgSend__postNotification_object_userInfo_(*(a1 + 48), v8, @"__kIMFMFSessionHandleLocationRefreshedNotification", *(a1 + 56), 0);
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1A83B0228(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = IMLocationLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v10 = 138412802;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEFAULT, "refreshLocationForHandles %@ callerId %@ error %@", &v10, 0x20u);
  }

  objc_msgSend__postNotification_object_userInfo_(*(a1 + 48), v8, @"__kIMFMFSessionChatLocationRefreshedNotification", *(a1 + 56), 0);
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1A83B165C(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E3200();
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "FindMyLocateSession getActiveLocationSharingDeviceWithCompletion device: %@", &v15, 0xCu);
    }
  }

  if (v5)
  {
    v10 = *(a1 + 32);
    v11 = objc_msgSend_deviceWithFMLDevice_(IMFindMyDevice, v8, v5);
    objc_msgSend_setActiveDevice_(v10, v12, v11);

    objc_msgSend__postNotification_object_userInfo_(*(a1 + 32), v13, @"__kIMFMFSessionActiveDeviceChangedNotification", 0, 0);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1A83B17DC(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v9 = objc_msgSend_deviceWithFMFDevice_(IMFindMyDevice, v8, v5);
  objc_msgSend_setActiveDevice_(v7, v10, v9);

  v11 = IMLocationLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEFAULT, "FMF updated active device %@ error %@", &v14, 0x16u);
  }

  objc_msgSend__postNotification_object_userInfo_(*(a1 + 32), v12, @"__kIMFMFSessionActiveDeviceChangedNotification", 0, 0);
  v13 = *MEMORY[0x1E69E9840];
}

void sub_1A83B19C8(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = IMLocationLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_DEFAULT, "FMF setActiveDevice %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1A83B24B4(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E32A8(v3, a1);
    }
  }

  else
  {
    v4 = IMLocationLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = 138412546;
      v9 = v5;
      v10 = 2048;
      v11 = v6;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_DEFAULT, "sendFriendshipOfferToHandles completed for handles: %@, duration: %ld", &v8, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1A83B284C(void *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = IMLocationLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    v11 = a1[7];
    v13 = 138413570;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    v21 = 2112;
    v22 = v5;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "sendFriendshipOfferToHandles %@ untilDate %@ callerId %@ groupId %@ mappingIdentifiers %@ error %@", &v13, 0x3Eu);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1A83B2B1C(void *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = IMLocationLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    v12 = 138413314;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "stopSharingMyLocationWithHandles %@ callerId %@ groupId %@ mappingIdentifier %@ error %@", &v12, 0x34u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1A83B2DC4(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E3334(v3, a1);
    }
  }

  else
  {
    v4 = IMLocationLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = 138412546;
      v9 = v5;
      v10 = 1024;
      v11 = v6;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_DEFAULT, "FindMyLocateSession stopSharingLocationWith completed for handles: %@, isFromGroup: %{BOOL}d", &v8, 0x12u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A83B30D8()
{
  result = MEMORY[0x1AC56C550](@"FMFSession", @"FMF");
  qword_1EB2EA008 = result;
  return result;
}

uint64_t sub_1A83B314C()
{
  result = MEMORY[0x1AC56C550](@"FindMyLocateSession", @"FindMyLocateObjCWrapper");
  qword_1EB2E9D70 = result;
  return result;
}

void sub_1A83B31C0()
{
  v0 = *MEMORY[0x1AC56C560]("FMFGroupIdOneToOne", @"FMF");

  objc_storeStrong(&qword_1EB2EA498, v0);
}

void sub_1A83B3248()
{
  v0 = *MEMORY[0x1AC56C560]("FMFGroupIdGroup", @"FMF");

  objc_storeStrong(&qword_1EB2EA4A8, v0);
}

id sub_1A83B4F34(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = objc_msgSend_account(v2, v4, v5);
  v8 = objc_msgSend_objectForKeyedSubscript_(v3, v7, *MEMORY[0x1E69A6310]);

  v10 = objc_msgSend_imHandleWithID_(v6, v9, v8);

  return v10;
}

BOOL sub_1A83B4FC4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = objc_msgSend_account(v2, v4, v5);
  v8 = objc_msgSend_objectForKeyedSubscript_(v3, v7, *MEMORY[0x1E69A6310]);

  v10 = objc_msgSend_imHandleWithID_(v6, v9, v8);
  v11 = v10 != 0;

  return v11;
}

uint64_t sub_1A83B5638(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v4;
  v9 = objc_msgSend_time(v5, v7, v8);
  v12 = objc_msgSend_time(v6, v10, v11);
  v14 = objc_msgSend_compare_(v9, v13, v12);

  if (!v14)
  {
    v17 = objc_msgSend_messageID(v5, v15, v16);
    if (v17 == objc_msgSend_messageID(v6, v18, v19))
    {
      v14 = 0;
    }

    else
    {
      v22 = objc_msgSend_messageID(v6, v20, v21);
      if (v22 < objc_msgSend_messageID(v5, v23, v24))
      {
        v14 = 1;
      }

      else
      {
        v14 = -1;
      }
    }
  }

  return v14;
}

uint64_t sub_1A83B6E38()
{
  result = MEMORY[0x1AC56C550](@"LSApplicationWorkspace", @"CoreServices");
  qword_1EB2EA4B8 = result;
  return result;
}

BOOL sub_1A83B7EC8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v12 = 0;
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_guid(v3, v4, v5);
    v9 = objc_msgSend_guid(*(a1 + 32), v7, v8);
    isEqualToString = objc_msgSend_isEqualToString_(v6, v10, v9);

    if (!isEqualToString)
    {
      v12 = 1;
    }
  }

  return v12;
}

void sub_1A83BBB70(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A83BBA5CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A83BD3EC(uint64_t a1, const char *a2)
{
  objc_msgSend_removeGUIDInAttemptingListInScrutinyMode_(IMChat, a2, *(a1 + 32));
  if ((*(a1 + 40) & 1) == 0)
  {
    v6 = objc_msgSend_sharedController(IMChatScrutinyController, v3, v4);
    objc_msgSend_markMessageAsCorrupt_(v6, v5, *(a1 + 32));
  }
}

void sub_1A83BE754(uint64_t a1, void *a2)
{
  v3 = a2;
  v23 = objc_msgSend_objectForKey_(v3, v4, @"path");
  v6 = objc_msgSend_objectForKey_(v3, v5, @"guid");
  v8 = objc_msgSend_objectForKey_(v3, v7, @"createdDate");
  v10 = objc_msgSend_objectForKey_(v3, v9, @"isSticker");
  v12 = objc_msgSend_objectForKey_(v3, v11, @"transferState");

  if (v23 && v6 && v8 && v10)
  {
    v13 = [IMAttachment alloc];
    v16 = objc_msgSend_BOOLValue(v10, v14, v15);
    v19 = objc_msgSend_BOOLValue(v12, v17, v18);
    isTransferComplete = objc_msgSend_initWithPath_guid_createdDate_isSticker_isTransferComplete_(v13, v20, v23, v6, v8, v16, v19);
    objc_msgSend_addObject_(*(a1 + 32), v22, isTransferComplete);
  }
}

void sub_1A83BECC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A83BECD8(uint64_t a1, const char *a2, uint64_t a3, _BYTE *a4)
{
  v6 = objc_msgSend_existingChatWithChatIdentifier_(*(a1 + 32), a2, a2);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

void sub_1A83BFED0(void *a1, void *a2, int a3)
{
  v192 = *MEMORY[0x1E69E9840];
  v158 = a2;
  if (a1)
  {
    v4 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v187 = objc_msgSend_count(v158, v5, v6);
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_DEFAULT, "Total number of IMChats we expect to create %lu", buf, 0xCu);
    }

    v7 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      isFirstLoad = objc_msgSend_isFirstLoad(a1, v8, v9);
      *buf = 67109376;
      *v187 = isFirstLoad;
      *&v187[4] = 1024;
      *&v187[6] = a3;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "First Load: %{BOOL}d, Full Reload: %{BOOL}d", buf, 0xEu);
    }

    if (a3)
    {
      objc_msgSend__resetChatRegistry(a1, v11, v12);
    }

    v156 = objc_msgSend_isFirstLoad(a1, v11, v12);
    v162 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v15 = objc_msgSend_contactStore(a1, v13, v14);
    isBatchFetchingForLaunchCompleted = objc_msgSend_isBatchFetchingForLaunchCompleted(v15, v16, v17);

    if (isBatchFetchingForLaunchCompleted)
    {
      v161 = 0;
    }

    else if (objc_msgSend_count(v158, v19, v20) > 0x18)
    {
      v161 = 25;
    }

    else
    {
      v161 = objc_msgSend_count(v158, v21, v22);
    }

    v159 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v184 = 0u;
    v185 = 0u;
    v182 = 0u;
    v183 = 0u;
    obj = v158;
    v165 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, &v182, v191, 16);
    if (v165)
    {
      v164 = *v183;
      do
      {
        v24 = 0;
        do
        {
          if (*v183 != v164)
          {
            v25 = v24;
            objc_enumerationMutation(obj);
            v24 = v25;
          }

          v166 = v24;
          v26 = *(*(&v182 + 1) + 8 * v24);
          context = objc_autoreleasePoolPush();
          v170 = objc_msgSend_first(v26, v27, v28);
          v168 = objc_msgSend_second(v26, v29, v30);
          v181 = 0;
          if (objc_msgSend_count(v170, v31, v32))
          {
            v169 = objc_msgSend_firstObject(v170, v33, v34);
            v179 = 0u;
            v180 = 0u;
            v177 = 0u;
            v178 = 0u;
            v35 = v170;
            v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v177, v190, 16);
            if (v38)
            {
              v39 = 0;
              v40 = *v178;
              do
              {
                for (i = 0; i != v38; ++i)
                {
                  if (*v178 != v40)
                  {
                    objc_enumerationMutation(v35);
                  }

                  v42 = objc_msgSend__lastMessageItemForChatDictionary_(a1, v37, *(*(&v177 + 1) + 8 * i));
                  v45 = v42;
                  if (v42)
                  {
                    if (!v39 || (objc_msgSend_time(v42, v43, v44), v46 = objc_claimAutoreleasedReturnValue(), objc_msgSend_time(v39, v47, v48), v49 = objc_claimAutoreleasedReturnValue(), v51 = objc_msgSend_compare_(v46, v50, v49) == 1, v49, v46, v51))
                    {
                      v52 = v45;

                      v39 = v52;
                    }
                  }
                }

                v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v37, &v177, v190, 16);
              }

              while (v38);

              if (v181)
              {
                v55 = 0;
                v56 = 0;
                goto LABEL_48;
              }

              if (v39)
              {
                v189 = v39;
                v160 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v53, &v189, 1);
                v57 = 0;
                v54 = v160;
              }

              else
              {
                v54 = 0;
                v57 = 1;
              }

LABEL_37:
              v176 = 0;
              v55 = sub_1A84E342C(a1, v169, v54, 1, &v181, &v176);
              v56 = v176;
              if ((v57 & 1) == 0)
              {
              }

              if (v55)
              {
                v58 = MEMORY[0x1E696AD98];
                isFiltered = objc_msgSend_isFiltered(v55, v53, v54);
                v61 = objc_msgSend_numberWithInteger_(v58, v60, isFiltered);
                v63 = objc_msgSend_objectForKeyedSubscript_(v159, v62, v61);

                v66 = objc_msgSend_lastFinishedMessageDate(v55, v64, v65);
                v68 = objc_msgSend_compare_(v66, v67, v63);
                v70 = objc_msgSend_objectForKey_(v169, v69, @"unreadCount");
                v73 = objc_msgSend_unsignedIntegerValue(v70, v71, v72);

                v76 = v68 == -1 || v63 == 0;
                if (v76 && !v73)
                {
                  v77 = MEMORY[0x1E696AD98];
                  v78 = objc_msgSend_isFiltered(v55, v74, v75);
                  v80 = objc_msgSend_numberWithInteger_(v77, v79, v78);
                  objc_msgSend_setObject_forKeyedSubscript_(v159, v81, v66, v80);
                }

                v57 = 0;
              }

              else
              {
LABEL_48:
                v57 = 1;
              }
            }

            else
            {

              v39 = 0;
              v54 = 0;
              v55 = 0;
              v56 = 0;
              v57 = 1;
              if (!v181)
              {
                goto LABEL_37;
              }
            }

            v175 = 0;
            v82 = objc_msgSend_service(v39, v53, v54);
            v85 = objc_msgSend_iMessageService(IMServiceImpl, v83, v84);
            v88 = objc_msgSend_internalName(v85, v86, v87);
            isEqualToIgnoringCase = objc_msgSend_isEqualToIgnoringCase_(v82, v89, v88);

            if (isEqualToIgnoringCase)
            {
              v93 = objc_msgSend_sharedRegistry(IMChatRegistry, v91, v92);
              objc_msgSend__setChatHasCommunicatedOveriMessage_(v93, v94, v55);

              v175 = 1;
            }

            if (v57)
            {
              v95 = IMChatRegistryLogHandle();
              if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v187 = v169;
                _os_log_impl(&dword_1A823F000, v95, OS_LOG_TYPE_DEFAULT, "*********** Error creating chat with %@", buf, 0xCu);
              }
            }

            else
            {
              objc_msgSend_addObject_(v162, v91, v55);
              objc_msgSend__updatePersonCentricIDToChatMapForChat_toNewPersonCentricID_(a1, v98, v55, v168);
              v100 = objc_msgSend__winningJoinStateForExistingChat_incomingDictionary_(a1, v99, v55, v169);
              objc_msgSend__setJoinState_(v55, v101, v100);
              objc_msgSend__registerChatDictionary_forChat_isIncoming_newGUID_shouldPostNotification_(a1, v102, v169, v55, 0, v56, 0);
              objc_msgSend__updateInfo_forGUID_updatingUnreadCount_shouldPostNotifications_(a1, v103, v169, v56, 1, 0);
              v106 = objc_msgSend_joinState(v55, v104, v105);
              objc_msgSend_updateChatDictionaryArray_createdChat_joinstate_setHasCommunicatedOveriMessage_(a1, v107, v35, v55, v106, &v175);
            }

            objc_msgSend_invalidateMergedThreadFilterModes(v55, v96, v97);
            v110 = objc_msgSend_contactStore(a1, v108, v109);
            v113 = objc_msgSend_isBatchFetchingForLaunchCompleted(v110, v111, v112);

            if ((v113 & 1) == 0)
            {
              v116 = objc_msgSend_sharedRegistry(IMChatRegistry, v114, v115);
              v119 = objc_msgSend_cachedChats(v116, v117, v118);
              v122 = objc_msgSend_count(v119, v120, v121) == v161;

              if (v122)
              {
                objc_msgSend__fetchInitialBatchOfContactsOnLaunch(a1, v123, v124);
              }
            }
          }

          objc_autoreleasePoolPop(context);
          v24 = v166 + 1;
        }

        while (v166 + 1 != v165);
        v165 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v125, &v182, v191, 16);
      }

      while (v165);
    }

    objc_msgSend_setFilterCategoryToEarliestInitiallyFetchedLastMessageDate_(a1, v126, v159);
    objc_msgSend__resetChatReconstructionGroupMaps(a1, v127, v128);
    v173 = 0u;
    v174 = 0u;
    v171 = 0u;
    v172 = 0u;
    v129 = v162;
    v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(v129, v130, &v171, v188, 16);
    if (v132)
    {
      v133 = *v172;
      do
      {
        for (j = 0; j != v132; ++j)
        {
          if (*v172 != v133)
          {
            objc_enumerationMutation(v129);
          }

          objc_msgSend__updateUnreadCountForChat_(a1, v131, *(*(&v171 + 1) + 8 * j));
        }

        v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(v129, v131, &v171, v188, 16);
      }

      while (v132);
    }

    objc_msgSend_setLoading_(a1, v135, 0);
    objc_msgSend_setFirstLoad_(a1, v136, 0);
    v139 = objc_msgSend_contactStore(a1, v137, v138);
    v142 = objc_msgSend_isBatchFetchingForLaunchCompleted(v139, v140, v141);

    if ((v142 & 1) == 0)
    {
      objc_msgSend__batchFetchRemainingContactsOnLaunch(a1, v143, v144);
    }

    v145 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v145, OS_LOG_TYPE_DEFAULT, "Done restoring chats", buf, 2u);
    }

    v146 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v146, OS_LOG_TYPE_DEFAULT, "** Posting did load notification", buf, 2u);
    }

    if (v156 & a3)
    {
      v149 = 0;
    }

    else
    {
      v150 = MEMORY[0x1E695DF90];
      v151 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v147, 1);
      v149 = objc_msgSend_dictionaryWithObjectsAndKeys_(v150, v152, v151, @"__kIMChatRegistryDidLoadIsRefreshKey", 0);
    }

    v153 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v147, v148);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v153, v154, @"__kIMChatRegistryDidLoadNotification", a1, v149);
  }

  v155 = *MEMORY[0x1E69E9840];
}

void sub_1A83C14FC(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "ChatRegistry: Fetching the remaining(Final batch) of contacts", v15, 2u);
    }
  }

  v5 = objc_msgSend_sharedInstance(IMHandleRegistrar, v2, v3);
  v8 = objc_msgSend_getIDsForFinalBatch(v5, v6, v7);

  if (objc_msgSend_count(v8, v9, v10))
  {
    v13 = objc_msgSend_contactStore(*(a1 + 32), v11, v12);
    objc_msgSend_fetchCNContactsForHandlesWithIDs_isFinalBatch_(v13, v14, v8, 1);
  }
}

void sub_1A83C1B9C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v4 = objc_begin_catch(exception_object);
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v8 = objc_msgSend_name(v4, v6, v7);
        v11 = objc_msgSend_reason(v4, v9, v10);
        v14 = objc_msgSend_userInfo(v4, v12, v13);
        *(v3 - 160) = 138413314;
        *(v2 + 4) = v4;
        *(v3 - 148) = 2112;
        *(v2 + 14) = v8;
        *(v3 - 138) = 2112;
        *(v3 - 136) = v11;
        *(v3 - 128) = 2112;
        *(v2 + 34) = v14;
        *(v3 - 118) = 2080;
        *(v2 + 44) = "[IMChatRegistry(IMChatRegistry_DaemonIncoming) _handleChatReconstructions:]";
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Caught exception: %@   name: %@   reason: %@   userInfo: %@ in function: %s", (v3 - 160), 0x34u);
      }
    }

    IMLogBacktrace();
    IMLogSimulateCrashForException();

    objc_end_catch();
    JUMPOUT(0x1A83C1970);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A83C34E0(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {

    objc_end_catch();
    JUMPOUT(0x1A83C1F5CLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1A83C3674(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = *(a1 + 32);
  v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v2, &v10, v14, 16);
  if (v3)
  {
    v6 = v3;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v1);
        }

        objc_msgSend__setupObservation(*(*(&v10 + 1) + 8 * v8++), v4, v5, v10);
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v4, &v10, v14, 16);
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1A83C3CD4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A83C3B64);
  }

  _Unwind_Resume(a1);
}

void sub_1A83C3D1C(uint64_t a1, const char *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_sharedInstance(IMUltraConstrainedNetworkMonitor, a2, a3);
  v6 = objc_msgSend_createNetworkMonitorWithRemoteHost_delegate_allowsUltraConstrainedNetwork_(MEMORY[0x1E69A8188], v5, 0, v4, 0);
  objc_msgSend_setNetworkMonitor_(*(a1 + 32), v7, v6);

  v10 = objc_msgSend_networkMonitor(*(a1 + 32), v8, v9);

  v11 = IMChatRegistryLogHandle();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_DEFAULT, "Set networkMonitor: %@", &v14, 0xCu);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1A84E3DAC(v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1A83C4578(uint64_t a1, void *a2)
{
  v4 = objc_msgSend_objectForKey_(a2, a2, *MEMORY[0x1E69A6310]);
  objc_msgSend_addObject_(*(a1 + 32), v3, v4);
}

uint64_t sub_1A83C6738(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_existingChatWithGUID_(*(a1 + 32), a2, a2);
  if (v3)
  {
    v3 = objc_msgSend_addObject_(*(a1 + 40), v3, v3);
  }

  return MEMORY[0x1EEE66BB8](v3);
}

void sub_1A83C68D4(uint64_t a1, void *a2)
{
  v10 = a2;
  objc_msgSend_setRecoverableMessagesCount_(v10, v3, 1);
  v5 = *(a1 + 32);
  if (v5)
  {
    objc_msgSend_setEarliestRecoverableMessageDeletionDate_(v10, v4, v5);
    objc_msgSend_setLatestRecoverableMessageDeletionDate_(v10, v6, *(a1 + 32));
  }

  v7 = objc_msgSend_numberOfMessagesToKeepLoaded(v10, v4, v5);
  v9 = objc_msgSend_loadMessagesBeforeDate_limit_loadImmediately_(v10, v8, 0, v7, 0);
}

uint64_t sub_1A83C6B10(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_existingChatWithGUID_(*(a1 + 32), a2, a2);
  if (v3)
  {
    v3 = objc_msgSend_addObject_(*(a1 + 40), v3, v3);
  }

  return MEMORY[0x1EEE66BB8](v3);
}

void sub_1A83C6B84(uint64_t a1, void *a2)
{
  v11 = a2;
  objc_msgSend_setRecoverableMessagesCount_(v11, v2, 0);
  objc_msgSend_setUnreadRecoverableMessagesCount_(v11, v3, 0);
  objc_msgSend_setEarliestRecoverableMessageDeletionDate_(v11, v4, 0);
  objc_msgSend_setLatestRecoverableMessageDeletionDate_(v11, v5, 0);
  v8 = objc_msgSend_numberOfMessagesToKeepLoaded(v11, v6, v7);
  v10 = objc_msgSend_loadMessagesBeforeDate_limit_loadImmediately_(v11, v9, 0, v8, 0);
}

void sub_1A83C7114(uint64_t a1, const char *a2)
{
  v6 = objc_msgSend_existingChatWithGUID_(*(a1 + 32), a2, a2);
  objc_msgSend_setRecoverableMessagesCount_(v6, v2, 0);
  objc_msgSend_setUnreadRecoverableMessagesCount_(v6, v3, 0);
  objc_msgSend_setEarliestRecoverableMessageDeletionDate_(v6, v4, 0);
  objc_msgSend_setLatestRecoverableMessageDeletionDate_(v6, v5, 0);
}

void sub_1A83C7230(uint64_t a1, const char *a2)
{
  v11 = objc_msgSend_existingChatWithGUID_(*(a1 + 32), a2, a2);
  objc_msgSend_setRecoverableMessagesCount_(v11, v2, 0);
  objc_msgSend_setUnreadRecoverableMessagesCount_(v11, v3, 0);
  objc_msgSend_setEarliestRecoverableMessageDeletionDate_(v11, v4, 0);
  objc_msgSend_setLatestRecoverableMessageDeletionDate_(v11, v5, 0);
  v8 = objc_msgSend_numberOfMessagesToKeepLoaded(v11, v6, v7);
  v10 = objc_msgSend_loadMessagesBeforeDate_limit_loadImmediately_(v11, v9, 0, v8, 1);
}

uint64_t sub_1A83C7A10()
{
  v0 = objc_alloc_init(IMCollaborationNoticeController);
  qword_1ED767910 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

uint64_t sub_1A83C7EC0()
{
  v0 = objc_alloc_init(IMChatScrutinyController);
  qword_1ED7677E0 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A83C8FA8(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A83C8ED4);
  }

  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(exc_buf);
}

void sub_1A83C8FFC(uint64_t a1, const char *a2, uint64_t a3, _BYTE *a4)
{
  v6 = objc_msgSend_objectForKey_(*(a1 + 32), a2, a2);

  if (!v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_1A83C9058(uint64_t a1, const char *a2, uint64_t a3, _BYTE *a4)
{
  v6 = objc_msgSend_objectForKey_(*(a1 + 32), a2, a2);

  if (!v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

uint64_t sub_1A83C9988(uint64_t a1, uint64_t a2, void *a3)
{
  v54 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v5 = v54;
    v10 = objc_msgSend_clientSendTime(v5, v6, v7);
    if (v10)
    {
      objc_msgSend_clientSendTime(v5, v8, v9);
    }

    else
    {
      objc_msgSend_time(v5, v8, v9);
    }
    v11 = ;

    objc_msgSend_timeIntervalSinceReferenceDate(v11, v12, v13);
    v17 = *(*(a1 + 40) + 8);
    v18 = *(v17 + 24);
    if (v18 == 0.0)
    {
      *(v17 + 24) = v16;
      v17 = *(*(a1 + 40) + 8);
      v18 = *(v17 + 24);
    }

    if (v16 <= v18)
    {
      *(v17 + 24) = v16;
    }

    if (objc_msgSend_isSent(v5, v14, v15) && (objc_msgSend_isLocatingMessage(v5, v19, v20) & 1) == 0)
    {
      v23 = *(a1 + 48);
      goto LABEL_16;
    }

    if (objc_msgSend_errorCode(v5, v19, v20))
    {
      v23 = *(a1 + 56);
LABEL_16:
      ++*(*(v23 + 8) + 24);
LABEL_22:

      goto LABEL_23;
    }

    v24 = objc_msgSend_fileTransferGUIDs(v5, v21, v22);
    if (objc_msgSend_count(v24, v25, v26))
    {
    }

    else
    {
      isLocatingMessage = objc_msgSend_isLocatingMessage(v5, v27, v28);

      if ((isLocatingMessage & 1) == 0)
      {
        ++*(*(*(a1 + 80) + 8) + 24);
        objc_msgSend_timeIntervalSinceReferenceDate(*(a1 + 32), v29, v30);
        v46 = v45;
        v49 = objc_msgSend_time(v5, v47, v48);
        objc_msgSend_timeIntervalSinceReferenceDate(v49, v50, v51);
        v40 = v46 - v52;

        v41 = 7.0;
        goto LABEL_19;
      }
    }

    ++*(*(*(a1 + 64) + 8) + 24);
    objc_msgSend_timeIntervalSinceReferenceDate(*(a1 + 32), v29, v30);
    v33 = v32;
    v36 = objc_msgSend_time(v5, v34, v35);
    objc_msgSend_timeIntervalSinceReferenceDate(v36, v37, v38);
    v40 = v33 - v39;

    v41 = 30.0;
LABEL_19:
    v42 = v40 / v41;
    if (v42 > 0.899999976)
    {
      v42 = 0.899999976;
    }

    v43 = *(*(a1 + 72) + 8);
    v44 = v42 + *(v43 + 24);
    *(v43 + 24) = v44;
    goto LABEL_22;
  }

LABEL_23:

  return MEMORY[0x1EEE66BB8](isKindOfClass);
}

void _IMAppendChatItemsForItemForTesting(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = MEMORY[0x1E69A8070];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1A83C9CA8;
  v13[3] = &unk_1E7810D08;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v9 = v7;
  v10 = v6;
  v11 = v5;
  objc_msgSend_testWithFeature_enabled_block_(v8, v12, sel_isTranscriptSharingEnabled, 0, v13);
}

void _IMAppendChatItemsForItem(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v10 = a1;
  v9 = objc_msgSend_count(v10, v7, v8);
  sub_1A83C9D3C(v10, v6, v9, 0, v5);
}

void sub_1A83C9D3C(void *a1, void *a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v12 = a5;
  if (v12)
  {
    v13 = [IMItemCollection alloc];
    v16 = objc_msgSend_initWithChatItems_range_(v13, v14, v9, 0, a3);
    if (a3 + a4)
    {
      v17 = objc_msgSend_objectAtIndex_(v9, v15, a3 + a4 - 1);
      v20 = objc_msgSend__parentItem(v17, v18, v19);
    }

    else
    {
      v20 = 0;
    }

    v32 = objc_msgSend__chatItemsForItem_previousItems_(v10, v15, v12, v16);
    if (!objc_msgSend_count(v32, v33, v34))
    {
      v37 = IMLogHandleForCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E4084(v12, v16, v37);
      }
    }

    v38 = objc_msgSend__items(v10, v35, v36);
    v41 = objc_msgSend_count(v38, v39, v40);

    if (!v41)
    {
      objc_msgSend__invalidateSpamIndicatorCachedValues(v10, v42, v43);
    }

    objc_msgSend_replaceObjectsInRange_withObjectsFromArray_(v9, v42, a3, a4, v32);
    v46 = objc_msgSend_count(v32, v44, v45) + a3;
    if (v46 < objc_msgSend_count(v9, v47, v48))
    {
      v50 = objc_msgSend_objectAtIndex_(v9, v49, v46);
      v53 = objc_msgSend__parentItem(v50, v51, v52);

      if (objc_msgSend__shouldRegenerateChatItemsForItem_previousItem_oldPreviousItem_(v10, v54, v53, v12, v20))
      {
        sub_1A83CBFEC(v9, v10, v46);
      }
    }
  }

  else
  {
    v16 = 0;
    if (a3 != 0x7FFFFFFFFFFFFFFFLL && a3 + a4)
    {
      v21 = objc_msgSend_objectAtIndex_(v9, v11, a3 + a4 - 1);
      v16 = objc_msgSend__parentItem(v21, v22, v23);
    }

    objc_msgSend_removeObjectsInRange_(v9, v11, a3, a4);
    if (a3 < objc_msgSend_count(v9, v24, v25))
    {
      if (a3)
      {
        v28 = objc_msgSend_objectAtIndex_(v9, v26, a3 - 1);
        v31 = objc_msgSend__parentItem(v28, v29, v30);
      }

      else
      {
        v31 = 0;
      }

      if (a3 >= objc_msgSend_count(v9, v26, v27))
      {
        v59 = 0;
      }

      else
      {
        v56 = objc_msgSend_objectAtIndex_(v9, v55, a3);
        v59 = objc_msgSend__parentItem(v56, v57, v58);
      }

      if (objc_msgSend__shouldRegenerateChatItemsForItem_previousItem_oldPreviousItem_(v10, v55, v59, v31, v16))
      {
        sub_1A83CBFEC(v9, v10, a3);
        if (sub_1A83CC118(v59))
        {
          v62 = a3 + 1;
          if (v62 < objc_msgSend_count(v9, v60, v61))
          {
            sub_1A83CBFEC(v9, v10, v62);
          }
        }
      }
    }
  }
}

void _IMInsertChatItemsForItem(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v10 = objc_msgSend_messageID(v7, v8, v9);
  if (v10)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1A83CA170;
    v14[3] = &unk_1E7814688;
    v14[4] = &v15;
    v14[5] = v10;
    objc_msgSend_enumerateObjectsWithOptions_usingBlock_(v5, v11, 2, v14);
    sub_1A83C9D3C(v5, v6, v16[3], 0, v7);
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v13 = objc_msgSend_count(v5, v11, v12);
    sub_1A83C9D3C(v5, v6, v13, 0, v7);
  }
}

void sub_1A83CA158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A83CA170(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = objc_msgSend__parentItem(a2, a2, a3);
  v10 = objc_msgSend_messageID(v7, v8, v9);

  if (v10)
  {
    if (v10 <= *(a1 + 40))
    {
      *(*(*(a1 + 32) + 8) + 24) = a3 + 1;
      *a4 = 1;
    }
  }
}

void _IMReplaceChatItemsForItem(void *a1, void *a2, void *a3, void *a4)
{
  v15 = a1;
  v7 = a2;
  v8 = a4;
  v9 = a3;
  objc_msgSend_count(v15, v10, v11);
  v12 = sub_1A83CA2C8(v15, v9);
  v14 = v13;

  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1A83C9D3C(v15, v7, v12, v14, v8);
  }
}

uint64_t sub_1A83CA2C8(void *a1, void *a2)
{
  v3 = a1;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3010000000;
  v15 = &unk_1A8573D95;
  v16 = xmmword_1A84FFF70;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_1A8259CA0;
  v10[4] = sub_1A825AF7C;
  v11 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_1A8259CA0;
  v8[4] = sub_1A825AF7C;
  v9 = 0;
  v7 = a2;
  IMEnumerateArrayInRange();
  v4 = v13[4];
  v5 = v13[5];

  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v10, 8);

  _Block_object_dispose(&v12, 8);
  return v4;
}

void sub_1A83CA478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 112), 8);
  _Unwind_Resume(a1);
}

void _IMReplaceChatItemsWithChatItemsForItemsForTesting(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = MEMORY[0x1E69A8070];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1A83CA5AC;
  v13[3] = &unk_1E7810D08;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v9 = v7;
  v10 = v6;
  v11 = v5;
  objc_msgSend_testWithFeature_enabled_block_(v8, v12, sel_isTranscriptSharingEnabled, 0, v13);
}

void _IMReplaceChatItemsWithChatItemsForItems(void *a1, void *a2, void *a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v10 = objc_msgSend___imItems(v5, v8, v9);
  if (objc_msgSend_count(v7, v11, v12))
  {
    if (objc_msgSend_count(v10, v13, v14))
    {
      if (v10)
      {
        if (!v7)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v10 = objc_msgSend_array(MEMORY[0x1E695DF70], v15, v16);
        if (!v7)
        {
LABEL_16:
          v7 = objc_msgSend_array(MEMORY[0x1E695DF70], v15, v16);
        }
      }

      v23 = objc_msgSend_differenceFromArray_withOptions_usingEquivalenceTest_(v7, v15, v10, 0, &unk_1F1B6F700);
      v54 = 0;
      v55 = 0;
      IMIndexesFromOrderedCollectionDifference(v23, &v55, &v54);
      v24 = v55;
      v25 = v54;
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = sub_1A83CA9E8;
      v50[3] = &unk_1E78146B0;
      v10 = v10;
      v51 = v10;
      v26 = v5;
      v52 = v26;
      v27 = v6;
      v53 = v27;
      objc_msgSend_enumerateRangesUsingBlock_(v25, v28, v50);
      v31 = objc_msgSend_mutableCopy(v10, v29, v30);
      objc_msgSend_removeObjectsAtIndexes_(v31, v32, v25);
      v40 = v23;
      v49[0] = 0;
      v49[1] = v49;
      v49[2] = 0x2020000000;
      v49[3] = 0;
      v35 = objc_msgSend_count(v31, v33, v34);
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = sub_1A83CAB3C;
      v41[3] = &unk_1E78146D8;
      v36 = v24;
      v42 = v36;
      v48 = v35;
      v37 = v31;
      v43 = v37;
      v44 = v26;
      v47 = v49;
      v45 = v27;
      v7 = v7;
      v46 = v7;
      objc_msgSend_enumerateRangesUsingBlock_(v36, v38, v41);

      _Block_object_dispose(v49, 8);
      goto LABEL_18;
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v7 = v7;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v18, &v56, v60, 16);
    if (v19)
    {
      v20 = *v57;
      do
      {
        v21 = 0;
        do
        {
          if (*v57 != v20)
          {
            objc_enumerationMutation(v7);
          }

          _IMAppendChatItemsForItem(v5, v6, *(*(&v56 + 1) + 8 * v21++));
        }

        while (v19 != v21);
        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v22, &v56, v60, 16);
      }

      while (v19);
    }
  }

  else
  {
    v17 = objc_msgSend_count(v5, v13, v14);
    sub_1A83C9D3C(v5, v6, 0, v17, 0);
  }

LABEL_18:

  v39 = *MEMORY[0x1E69E9840];
}

void sub_1A83CA958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A83CA978(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_guid(a2, v5, v6);
  v10 = objc_msgSend_guid(v4, v8, v9);

  isEqualToString = objc_msgSend_isEqualToString_(v7, v11, v10);
  return isEqualToString;
}

void sub_1A83CA9E8(uint64_t a1, const char *a2, uint64_t a3)
{
  v12 = objc_msgSend_objectAtIndex_(*(a1 + 32), a2, a2);
  v7 = objc_msgSend_objectAtIndex_(*(a1 + 32), v6, &a2[a3 - 1]);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = sub_1A83CAA90(v8, v12, v7);
  sub_1A83C9D3C(v8, v9, v10, v11, 0);
}

uint64_t sub_1A83CAA90(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = a2;
  objc_msgSend_count(v5, v8, v9);
  v10 = sub_1A83CA2C8(v5, v7);

  if (v7 != v6)
  {
    sub_1A83CA2C8(v5, v6);
  }

  return v10;
}

void sub_1A83CAB3C(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = &a2[a3 - objc_msgSend_countOfIndexesInRange_(*(a1 + 32), a2, 0, &a2[a3])];
  if (v7 >= *(a1 + 80))
  {
    *(*(*(a1 + 72) + 8) + 24) = objc_msgSend_count(*(a1 + 48), v6, v7);
  }

  else
  {
    v8 = objc_msgSend_objectAtIndex_(*(a1 + 40), v6, v7);
    v9 = *(a1 + 48);
    v10 = *(*(*(a1 + 72) + 8) + 24);
    objc_msgSend_count(v9, v11, v12);
    v13 = *(*(*(a1 + 72) + 8) + 24);
    *(*(*(a1 + 72) + 8) + 24) = sub_1A83CA2C8(v9, v8);
  }

  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = objc_msgSend_subarrayWithRange_(*(a1 + 64), v14, a2, a3);
  *(*(*(a1 + 72) + 8) + 24) += sub_1A83CAC70(v15, v16, v17, *(*(*(a1 + 72) + 8) + 24));
}

uint64_t sub_1A83CAC70(void *a1, void *a2, void *a3, uint64_t a4)
{
  v59 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = [IMItemCollection alloc];
  v53 = v7;
  v12 = objc_msgSend_initWithChatItems_range_(v10, v11, v7, 0, a4);
  v52 = objc_msgSend_lastObject(v12, v13, v14);
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v16 = v9;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v54, v58, 16);
  if (v18)
  {
    v20 = v18;
    v21 = *v55;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v55 != v21)
        {
          objc_enumerationMutation(v16);
        }

        v23 = *(*(&v54 + 1) + 8 * i);
        v24 = objc_msgSend__chatItemsForItem_previousItems_(v8, v19, v23, v12, v52);
        if (objc_msgSend_count(v24, v25, v26))
        {
          objc_msgSend_addObjectsFromArray_(v15, v27, v24);
          objc_msgSend_addItem_(v12, v28, v23);
        }
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v54, v58, 16);
    }

    while (v20);
  }

  objc_msgSend_replaceObjectsInRange_withObjectsFromArray_(v53, v29, a4, 0, v15);
  v32 = objc_msgSend_count(v15, v30, v31) + a4;
  v37 = v52;
  if (v32 < objc_msgSend_count(v53, v33, v34))
  {
    v38 = objc_msgSend_objectAtIndex_(v53, v35, v32);
    v41 = objc_msgSend__parentItem(v38, v39, v40);

    v44 = objc_msgSend_lastObject(v12, v42, v43);
    shouldRegenerateChatItemsForItem_previousItem_oldPreviousItem = objc_msgSend__shouldRegenerateChatItemsForItem_previousItem_oldPreviousItem_(v8, v45, v41, v44, v52);

    if (shouldRegenerateChatItemsForItem_previousItem_oldPreviousItem)
    {
      sub_1A83CBFEC(v53, v8, v32);
      if (sub_1A83CC118(v41))
      {
        if (v32 < objc_msgSend_count(v53, v47, v48))
        {
          sub_1A83CBFEC(v53, v8, v32);
        }
      }
    }
  }

  v49 = objc_msgSend_count(v15, v35, v36, v52);

  v50 = *MEMORY[0x1E69E9840];
  return v49;
}

BOOL _IMScheduledMessageShouldBePinnedToBottom(void *a1)
{
  v1 = a1;
  if (objc_msgSend_scheduleType(v1, v2, v3) != 2)
  {
    goto LABEL_5;
  }

  v6 = objc_msgSend_scheduleState(v1, v4, v5);
  if ((v6 - 1) < 2)
  {
    v14 = 1;
    goto LABEL_7;
  }

  if ((v6 - 4) <= 1)
  {
    v9 = objc_msgSend_time(v1, v7, v8);
    v12 = objc_msgSend_now(MEMORY[0x1E695DF00], v10, v11);
    v14 = objc_msgSend_compare_(v9, v13, v12) == 1;
  }

  else
  {
LABEL_5:
    v14 = 0;
  }

LABEL_7:

  return v14;
}

void _IMChatItemsReplaceWithChatItemsForItems(void *a1, void *a2, void *a3)
{
  v113 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v78 = a3;
  v77 = objc_msgSend__items(v6, v7, v8);
  if (objc_msgSend_count(v77, v9, v10))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v112) = 0;
    v106[0] = MEMORY[0x1E69E9820];
    v106[1] = 3221225472;
    v106[2] = sub_1A83CB6BC;
    v106[3] = &unk_1E7813BD8;
    v107 = v5;
    v108 = buf;
    objc_msgSend_enumerateObjectsWithOptions_usingBlock_(v107, v12, 2, v106);
    v13 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v13 = 1;
  }

  objc_msgSend__setItems_(v6, v11, v78);
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v19 = MEMORY[0x1E696AD98];
      v20 = objc_msgSend_count(v77, v17, v18);
      v22 = objc_msgSend_numberWithUnsignedInteger_(v19, v21, v20);
      v23 = MEMORY[0x1E696AD98];
      v26 = objc_msgSend_count(v78, v24, v25);
      v28 = objc_msgSend_numberWithUnsignedInteger_(v23, v27, v26);
      *buf = 138412546;
      *&buf[4] = v22;
      *&buf[12] = 2112;
      *&buf[14] = v28;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "_IMChatItemsReplaceWithChatItemsForItems oldMessages.count: %@ newMessages.count: %@", buf, 0x16u);
    }
  }

  if (!objc_msgSend_count(v78, v14, v15))
  {
    v53 = objc_msgSend_count(v5, v29, v30);
    sub_1A83C9D3C(v5, v6, 0, v53, 0);
    goto LABEL_38;
  }

  sub_1A83CB78C(v5);
  sub_1A83CB8F8(v5);
  if (v13)
  {
    objc_msgSend_removeAllObjects(v5, v31, v32);
    v35 = objc_msgSend_copy(v78, v33, v34);
    v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v37 = v35;
    v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v102, v110, 16);
    if (!v39)
    {
      goto LABEL_22;
    }

    v40 = *v103;
    while (1)
    {
      v41 = 0;
      do
      {
        if (*v103 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v102 + 1) + 8 * v41);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v43 = v42;
          if (_IMScheduledMessageShouldBePinnedToBottom(v43))
          {
            objc_msgSend_addObject_(v36, v44, v43);

            goto LABEL_20;
          }
        }

        _IMAppendChatItemsForItem(v5, v6, v42);
LABEL_20:
        ++v41;
      }

      while (v39 != v41);
      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v45, &v102, v110, 16);
      if (!v39)
      {
LABEL_22:

        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v47 = objc_msgSend_sortedArrayUsingComparator_(v36, v46, &unk_1F1B6F720);
        v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v98, v109, 16);
        if (v49)
        {
          v50 = *v99;
          do
          {
            v51 = 0;
            do
            {
              if (*v99 != v50)
              {
                objc_enumerationMutation(v47);
              }

              _IMAppendChatItemsForItem(v5, v6, *(*(&v98 + 1) + 8 * v51++));
            }

            while (v49 != v51);
            v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v52, &v98, v109, 16);
          }

          while (v49);
        }

        sub_1A83CBA00(v5);
        goto LABEL_38;
      }
    }
  }

  if (!v77)
  {
    v77 = objc_msgSend_array(MEMORY[0x1E695DF70], v31, v32);
  }

  v54 = v78;
  if (!v78)
  {
    v54 = objc_msgSend_array(MEMORY[0x1E695DF70], v31, v32);
  }

  v55 = v54;
  v56 = objc_msgSend_differenceFromArray_withOptions_usingEquivalenceTest_(v54, v31, v77, 0, &unk_1F1B6F740);
  v96 = 0;
  v97 = 0;
  IMIndexesFromOrderedCollectionDifference(v56, &v97, &v96);
  v57 = v97;
  v58 = v96;
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = sub_1A83CBAC8;
  v92[3] = &unk_1E78146B0;
  v59 = v5;
  v93 = v59;
  v77 = v77;
  v94 = v77;
  v60 = v6;
  v95 = v60;
  objc_msgSend_enumerateRangesUsingBlock_(v58, v61, v92);
  v64 = objc_msgSend_mutableCopy(v77, v62, v63);
  objc_msgSend_removeObjectsAtIndexes_(v64, v65, v58);
  v76 = v58;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v112 = 0;
  v68 = objc_msgSend_count(v64, v66, v67);
  v84[0] = MEMORY[0x1E69E9820];
  v84[1] = 3221225472;
  v84[2] = sub_1A83CBC8C;
  v84[3] = &unk_1E78146D8;
  v69 = v57;
  v85 = v69;
  v91 = v68;
  v70 = v64;
  v86 = v70;
  v71 = v59;
  v87 = v71;
  v90 = buf;
  v88 = v60;
  v72 = v55;
  v89 = v72;
  objc_msgSend_enumerateRangesUsingBlock_(v69, v73, v84);
  v80 = 0;
  v81 = &v80;
  v82 = 0x2020000000;
  v83 = 0;
  v78 = v72;
  v79[0] = MEMORY[0x1E69E9820];
  v79[1] = 3221225472;
  v79[2] = sub_1A83CBE10;
  v79[3] = &unk_1E7810CB8;
  v79[4] = &v80;
  objc_msgSend_enumerateObjectsUsingBlock_(v72, v74, v79);
  if (*(v81 + 24) == 1)
  {
    sub_1A83CBA00(v71);
  }

  _Block_object_dispose(&v80, 8);

  _Block_object_dispose(buf, 8);
LABEL_38:

  v75 = *MEMORY[0x1E69E9840];
}

void sub_1A83CB664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A83CB6BC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  isKindOfClass = objc_msgSend_count(*(a1 + 32), v7, v8);
  if ((isKindOfClass - a3) > 0x31)
  {
    goto LABEL_2;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v11 = objc_msgSend_messageItem(v16, v16, v10);
    v14 = objc_msgSend_scheduleType(v11, v12, v13);

    if (v14 == 2)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_2:
      *a4 = 1;
    }
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass);
}

void sub_1A83CB78C(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = objc_msgSend_reverseObjectEnumerator(v1, v2, v3, 0);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v20, v24, 16);
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v21;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v11;
          v16 = objc_msgSend_statusType(v13, v14, v15);
          if (((v16 == 34) & v8) == 1)
          {
            objc_msgSend_removeObject_(v1, v17, v13);

            goto LABEL_14;
          }

          v18 = v16;

          if (v18 != 34)
          {
            goto LABEL_14;
          }

          v8 = 1;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v12, &v20, v24, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A83CB8F8(void *a1)
{
  v10 = a1;
  v3 = objc_msgSend_count(v10, v1, v2);
  if (v3)
  {
    v5 = objc_msgSend_count(v10, v10, v4) - 1;
    objc_opt_class();
    v7 = objc_msgSend_objectAtIndex_(v10, v6, v5);
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_removeObject_(v10, v8, v7);
    }
  }

  return MEMORY[0x1EEE66BB8](v3);
}

uint64_t sub_1A83CB990(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_time(a2, v5, v6);
  v10 = objc_msgSend_time(v4, v8, v9);

  v12 = objc_msgSend_compare_(v7, v11, v10);
  return v12;
}

void sub_1A83CBA00(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = sub_1A83CC1E4;
  v10 = &unk_1E7813AE8;
  v11 = v1;
  v12 = v2;
  v3 = v2;
  v4 = v1;
  objc_msgSend_enumerateObjectsUsingBlock_(v4, v5, &v7);
  objc_msgSend_removeObjectsAtIndexes_(v4, v6, v3, v7, v8, v9, v10);
}

void sub_1A83CBAC8(void **a1, const char *a2, uint64_t a3)
{
  v3 = a3;
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_count(a1[4], a2, a3);
  v8 = v6;
  if (v3 == 1)
  {
    v9 = a1[4];
    v10 = objc_msgSend_objectAtIndex_(a1[5], v7, a2);
    v11 = sub_1A83CA2C8(v9, v10);
    v13 = v12;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v6);
    v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v15, v14);
    objc_msgSend_getObjects_range_(a1[5], v16, v15, a2, v3);
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    if (v3)
    {
      v17 = v15;
      v18 = v3;
      while (1)
      {
        v19 = sub_1A83CA2C8(a1[4], *v17);
        if (v19 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        ++v17;
        if (!--v18)
        {
          v11 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_10;
        }
      }

      v11 = v19;
LABEL_10:
      v21 = v15 - 8;
      while (1)
      {
        v22 = sub_1A83CA2C8(a1[4], *&v21[8 * v3]);
        if (v22 != 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (!--v3)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      v20 = 0;
LABEL_13:
      v22 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v13 = v20 - v11 + v22;
  }

  if (v11 != 0x7FFFFFFFFFFFFFFFLL && v13 <= v8 && v11 + v13 <= v8)
  {
    sub_1A83C9D3C(a1[4], a1[6], v11, v13, 0);
  }

  v25 = *MEMORY[0x1E69E9840];
}

void sub_1A83CBC8C(uint64_t a1, const char *a2, uint64_t a3)
{
  v8 = &a2[a3 - objc_msgSend_countOfIndexesInRange_(*(a1 + 32), a2, 0, &a2[a3])];
  if (v8 >= *(a1 + 80))
  {
    *(*(*(a1 + 72) + 8) + 24) = objc_msgSend_count(*(a1 + 48), v6, v7);
  }

  else
  {
    v9 = 0;
    while (v8 < *(a1 + 80))
    {
      v10 = objc_msgSend_objectAtIndex_(*(a1 + 40), v6, v8);

      v11 = *(a1 + 48);
      v12 = *(*(*(a1 + 72) + 8) + 24);
      objc_msgSend_count(v11, v13, v14);
      v15 = *(*(*(a1 + 72) + 8) + 24);
      v16 = sub_1A83CA2C8(v11, v10);
      ++v8;
      v9 = v10;
      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        *(*(*(a1 + 72) + 8) + 24) = v16;

        goto LABEL_8;
      }
    }

    *(*(*(a1 + 72) + 8) + 24) = objc_msgSend_count(*(a1 + 48), v6, v7);
  }

LABEL_8:
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = objc_msgSend_subarrayWithRange_(*(a1 + 64), v17, a2, a3);
  *(*(*(a1 + 72) + 8) + 24) += sub_1A83CAC70(v18, v19, v20, *(*(*(a1 + 72) + 8) + 24));
}

void sub_1A83CBE10(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_msgSend_replyCountsByPart(v12, v6, v7);
    v11 = objc_msgSend_count(v8, v9, v10);

    if (v11 == 1)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

void sub_1A83CBEB4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = objc_msgSend__parentItem(a2, a2, a3);
  if (v7 != *(*(*(a1 + 40) + 8) + 40))
  {
    obj = v7;
    v10 = objc_msgSend_guid(*(a1 + 32), v8, v9);
    v13 = objc_msgSend_guid(obj, v11, v12);
    isEqualToString = objc_msgSend_isEqualToString_(v10, v14, v13);

    if (isEqualToString)
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
      *(*(*(a1 + 56) + 8) + 32) = a3;
      *(*(*(a1 + 56) + 8) + 40) = 0;
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
    v7 = obj;
  }

  v16 = *(*(a1 + 56) + 8);
  if (*(v16 + 32) != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v7 == *(*(*(a1 + 48) + 8) + 40))
    {
      ++*(v16 + 40);
    }

    else
    {
      *a4 = 1;
    }
  }
}

void sub_1A83CBFEC(void *a1, void *a2, unint64_t a3)
{
  v21 = a1;
  v5 = a2;
  v6 = [IMItemCollection alloc];
  v8 = objc_msgSend_initWithChatItems_range_(v6, v7, v21, 0, a3);
  v13 = 0;
  if (objc_msgSend_count(v21, v9, v10) > a3)
  {
    v14 = objc_msgSend_objectAtIndex_(v21, v11, a3);
    v13 = objc_msgSend__parentItem(v14, v15, v16);
  }

  objc_msgSend_count(v21, v11, v12);
  v17 = sub_1A83CA2C8(v21, v13);
  if (v17 != 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_removeObjectsInRange_(v21, v18, v17, v18);
  }

  v19 = objc_msgSend__chatItemsForItem_previousItems_(v5, v18, v13, v8);
  objc_msgSend_replaceObjectsInRange_withObjectsFromArray_(v21, v20, a3, 0, v19);
}

uint64_t sub_1A83CC118(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  if (objc_msgSend_changeType(v1, v2, v3))
  {
    goto LABEL_5;
  }

  v6 = objc_msgSend__senderHandle(v1, v4, v5);
  v9 = objc_msgSend_ID(v6, v7, v8);
  v12 = objc_msgSend__otherHandle(v1, v10, v11);
  v15 = objc_msgSend_ID(v12, v13, v14);
  isEqualToString = objc_msgSend_isEqualToString_(v9, v16, v15);

  if (isEqualToString)
  {
    v18 = 1;
  }

  else
  {
LABEL_5:
    v18 = 0;
  }

  return v18;
}

void sub_1A83CC1E4(uint64_t a1, void *a2, uint64_t a3)
{
  v25 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_count(v25, v5, v6) == 1)
  {
    v7 = v25;
    v8 = a3 + 1;
    if (a3 + 1 >= objc_msgSend_count(*(a1 + 32), v9, v10))
    {
      v14 = 0;
    }

    else
    {
      do
      {
        v13 = objc_msgSend_objectAtIndex_(*(a1 + 32), v11, v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }
      }

      while (++v8 < objc_msgSend_count(*(a1 + 32), v15, v16) && v14 == 0);
    }

    v18 = objc_msgSend_threadIdentifier(v14, v11, v12);
    v21 = objc_msgSend_threadIdentifier(v7, v19, v20);
    isEqualToString = objc_msgSend_isEqualToString_(v18, v22, v21);

    if (isEqualToString)
    {
      objc_msgSend_addIndex_(*(a1 + 40), v24, a3);
    }
  }
}

uint64_t sub_1A83CC388()
{
  v0 = objc_alloc_init(IMHandleAvailabilityManager);
  qword_1ED767870 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A83CCB38(uint64_t a1, void *a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = objc_msgSend_currentStatus(v3, v5, v6);
  v10 = objc_msgSend_statusUniqueIdentifier(v7, v8, v9);

  v13 = objc_msgSend_pendingFetchesForCacheKeys(WeakRetained, v11, v12);
  objc_sync_enter(v13);
  v16 = objc_msgSend_currentCacheGeneration(WeakRetained, v14, v15);
  objc_sync_exit(v13);

  if (*(a1 + 64) == v16)
  {
    v19 = objc_msgSend_pendingFetchesForCacheKeys(WeakRetained, v17, v18);
    objc_sync_enter(v19);
    v22 = objc_msgSend_pendingFetchesForCacheKeys(WeakRetained, v20, v21);
    objc_msgSend_removeObject_(v22, v23, *(a1 + 32));

    objc_sync_exit(v19);
    if (v3)
    {
      v26 = v3;
    }

    else
    {
      v26 = objc_msgSend_null(MEMORY[0x1E695DFB0], v24, v25);
    }

    v29 = v26;
    if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v34 = *(a1 + 32);
        v33 = *(a1 + 40);
        v56 = 138412802;
        v57 = v33;
        v58 = 2112;
        v59 = v34;
        v60 = 2112;
        v61 = v29;
        _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_INFO, "Caching subscription for handle %@ with key %@ and value: %@", &v56, 0x20u);
      }
    }

    v35 = objc_msgSend_currentSubscriptionCache(WeakRetained, v30, v31);
    objc_sync_enter(v35);
    v38 = objc_msgSend_currentSubscriptionCache(WeakRetained, v36, v37);
    objc_msgSend_setObject_forKey_(v38, v39, v29, *(a1 + 32));

    objc_sync_exit(v35);
    v42 = objc_msgSend_lastKnownSubscriptionCache(WeakRetained, v40, v41);
    objc_sync_enter(v42);
    v45 = objc_msgSend_lastKnownSubscriptionCache(WeakRetained, v43, v44);
    objc_msgSend_setObject_forKey_(v45, v46, v29, *(a1 + 32));

    objc_sync_exit(v42);
    v48 = *(a1 + 48);
    if (v10 == v48 || v10 && v48 && (objc_msgSend_isEqualToString_(v10, v47, v48) & 1) != 0)
    {
      if (IMOSLoggingEnabled())
      {
        v49 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          v50 = *(a1 + 32);
          v56 = 138412290;
          v57 = v50;
          _os_log_impl(&dword_1A823F000, v49, OS_LOG_TYPE_INFO, "Fetched status is the same as the lask known status already returned. Not posting change notification for key: %@", &v56, 0xCu);
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v52 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          v53 = *(a1 + 48);
          v54 = *(a1 + 32);
          v56 = 138412802;
          v57 = v10;
          v58 = 2112;
          v59 = v53;
          v60 = 2112;
          v61 = v54;
          _os_log_impl(&dword_1A823F000, v52, OS_LOG_TYPE_INFO, "Fetched status %@ is different than the last known status %@. Posting change notification for key: %@", &v56, 0x20u);
        }
      }

      objc_msgSend__postNotificationForUpdatedStatusWithSubscription_(WeakRetained, v51, v3);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = *(a1 + 64);
      v56 = 134218498;
      v57 = v28;
      v58 = 2048;
      v59 = v16;
      v60 = 2112;
      v61 = v10;
      _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_INFO, "Fetched status is not current (startGeneration: %ld, endGeneration: %ld), discarding status %@.", &v56, 0x20u);
    }
  }

  v55 = *MEMORY[0x1E69E9840];
}

void sub_1A83CD2DC(uint64_t a1, const char *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_personalStatusSubscription(*(a1 + 32), a2, a3);
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Personal status subscription: %@", buf, 0xCu);
    }
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A83CD43C;
  v9[3] = &unk_1E7810230;
  v6 = *(a1 + 40);
  v10 = v4;
  v11 = v6;
  v7 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1A83CD450(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v9 = IMOSLoggingEnabled();
    if (v5)
    {
      if (!v9)
      {
        goto LABEL_5;
      }

      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v13 = objc_msgSend_handleString(*(a1 + 32), v11, v12);
        v17 = 138412546;
        v18 = v13;
        v19 = 2112;
        v20 = v5;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Found status subscription for handleID: %@. Subscription: %@", &v17, 0x16u);
      }
    }

    else
    {
      if (!v9)
      {
        goto LABEL_5;
      }

      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v16 = objc_msgSend_handleString(*(a1 + 32), v14, v15);
        v17 = 138412290;
        v18 = v16;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Did not find status subscription for handleID: %@", &v17, 0xCu);
      }
    }

    goto LABEL_5;
  }

  v7 = IMLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1A84E415C(a1, v6, v7);
  }

LABEL_5:
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1A83CD618(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A83CD4CCLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A83CD6D0(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, a3);
  objc_msgSend___mainThreadPostNotificationName_object_(v5, v4, IMHandleAvailabilityChangedNotification, *(a1 + 32));
}

void sub_1A83CDBF0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_subscriptionService(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_personalStatusSubscription(v4, v5, v6);
  v9 = objc_msgSend__availablityFromStatusSubscription_handleID_(*(a1 + 32), v8, v7, 0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A83CDCC0;
  v10[3] = &unk_1E78147A0;
  v11 = *(a1 + 40);
  v12 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

void sub_1A83CE000(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E428C(a1);
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

void sub_1A83CE470(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E4314(a1);
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

intptr_t sub_1A83CFD48(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_copy(a2, a2, a3);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 32);

  return dispatch_semaphore_signal(v7);
}

void *sub_1A83D0380()
{
  result = MEMORY[0x1AC56C560]("_IMDChatRecordBulkCopy", @"IMDPersistence");
  off_1EB2EA4C8 = result;
  return result;
}

void *sub_1A83D03B0()
{
  result = MEMORY[0x1AC56C560]("IMDChatRecordCopyHandles", @"IMDPersistence");
  off_1EB2EA4D8 = result;
  return result;
}

void sub_1A83D11E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL IMSPIQueryChatWithGuid(void *a1, dispatch_qos_class_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v12 = v9;
  if (v9)
  {
    v13 = objc_msgSend_copy(v9, v10, v11);

    v14 = sub_1A826443C(a2);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83DE514;
    block[3] = &unk_1E7810190;
    v19 = v7;
    v20 = v8;
    v21 = v13;
    v15 = v13;
    dispatch_async(v14, block);
  }

  else if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Empty result block supplied to IMSPIQueryChatWithGuid", buf, 2u);
    }
  }

  return v12 != 0;
}

void sub_1A83D1384(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t _IMSPIMessageTypeFromPeerPaymentPayloadURL(void *a1)
{
  v1 = a1;
  if (qword_1EB2EA4F0 != -1)
  {
    sub_1A84E445C();
  }

  if (off_1EB2EA4E8)
  {
    v2 = off_1EB2EA4E8(v1);
    if (v2 == 1)
    {
      v3 = 209;
      goto LABEL_17;
    }

    if (v2 == 2)
    {
      v3 = 210;
      goto LABEL_17;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Failed to weak link PassKitCore/PKPeerPaymentMessageTypeFromDataURL.", buf, 2u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Could not determine peer payment message type.", v7, 2u);
    }
  }

  v3 = 214;
LABEL_17:

  return v3;
}

void *sub_1A83D1910()
{
  result = MEMORY[0x1AC56C560]("PKPeerPaymentMessageTypeFromDataURL", @"PassKitCore");
  off_1EB2EA4E8 = result;
  return result;
}

NSObject *_IMSPIExtractPayloadURLFromPayloadNSData(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = a1;
  if (!v2)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Payload data was nil, retuning nil payload URL", buf, 2u);
      }
    }

    goto LABEL_30;
  }

  v3 = IMExtensionPayloadUnarchivingClasses();
  v4 = objc_alloc(MEMORY[0x1E696ACD0]);
  v18 = 0;
  v6 = objc_msgSend_initForReadingFromData_error_(v4, v5, v2, &v18);
  v7 = v18;
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend__enableStrictSecureDecodingMode(v6, v8, v9);
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "strict-decoding 010 _enableStrictSecureDecodingMode called", buf, 2u);
      }
    }
  }

  v11 = objc_msgSend_decodeObjectOfClasses_forKey_(v6, v8, v3, *MEMORY[0x1E696A508]);
  if (v7 && IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&dword_1A823F000, v1, OS_LOG_TYPE_INFO, "Failed to unarchive message payload data. Error: %@", buf, 0xCu);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v1 = objc_msgSend_objectForKey_(v11, v12, *MEMORY[0x1E69A6F10]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = 0;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Payload URL not in archived payload dictionary, retuning nil payload URL", buf, 2u);
        }
      }

      v13 = 1;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v1 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v1, OS_LOG_TYPE_INFO, "Could not decode payload dictionary, retuning nil payload URL", buf, 2u);
      }
    }

    v13 = 1;
  }

  if (v13)
  {
LABEL_30:
    v1 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v1;
}

id _IMSPIExtractPayloadURLFromPayloadData(void *a1)
{
  if (a1)
  {
    v2 = _IMSPIExtractPayloadURLFromPayloadNSData(a1);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v5 = 0;
        _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Payload data was nil, retuning nil payload URL", v5, 2u);
      }
    }

    v2 = 0;
  }

  return v2;
}

id _IMSPIPeerPaymentAmountFromExtensionPayloadURL(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (qword_1EB2EA500 != -1)
    {
      sub_1A84E4470();
    }

    if (off_1EB2EA4F8)
    {
      v2 = off_1EB2EA4F8(v1);
      goto LABEL_15;
    }

    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v4 = "Failed to weak link PassKitCore/PKPeerPaymentMessageTypeFromDataURL.";
        v5 = buf;
        goto LABEL_12;
      }

      goto LABEL_13;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v7 = 0;
      v4 = "Extension payload URL is nil, not setting peer payment amount.";
      v5 = &v7;
LABEL_12:
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, v4, v5, 2u);
    }

LABEL_13:
  }

  v2 = 0;
LABEL_15:

  return v2;
}

void *sub_1A83D1FCC()
{
  result = MEMORY[0x1AC56C560]("PKPeerPaymentMessageCurrencyAmountFromDataURL", @"PassKitCore");
  off_1EB2EA4F8 = result;
  return result;
}

uint64_t _IMSPIMessageOrAttachmentsMatchPluginIdentifier(void *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (objc_msgSend_containsString_(a2, v7, v5))
  {
    v8 = 1;
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v6;
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v20, v24, 16);
    if (v8)
    {
      v13 = *v21;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = objc_msgSend_bundleID(*(*(&v20 + 1) + 8 * i), v11, v12, v20);
          v17 = objc_msgSend_containsString_(v15, v16, v5);

          if (v17)
          {
            v8 = 1;
            goto LABEL_13;
          }
        }

        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v20, v24, 16);
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v18 = *MEMORY[0x1E69E9840];
  return v8;
}

id _IMSPIDisplayAppNameFromAttachments(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v1 = a1;
  v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v2, &v17, v21, 16);
  if (v3)
  {
    v6 = v3;
    v7 = *v18;
    v8 = *MEMORY[0x1E69A6FA8];
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v1);
        }

        v10 = objc_msgSend_attributionInfo(*(*(&v17 + 1) + 8 * i), v4, v5, v17);
        v12 = objc_msgSend_objectForKey_(v10, v11, v8);
        if (objc_msgSend_length(v12, v13, v14))
        {

          goto LABEL_11;
        }
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v4, &v17, v21, 16);
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  v15 = *MEMORY[0x1E69E9840];

  return v12;
}

id sub_1A83D22A0(uint64_t a1)
{
  if (qword_1EB2EA640 != -1)
  {
    sub_1A84E45C4();
  }

  v2 = off_1EB2EA638(a1, 0, 0, 0);
  objc_opt_class();
  v3 = 0;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  return v3;
}

BOOL sub_1A83D233C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v60 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (qword_1EB2EA510 != -1)
  {
    sub_1A84E45D8();
  }

  v7 = off_1EB2EA508;
  v8 = v6;
  v10 = objc_msgSend_regularExpressionWithPattern_options_error_(MEMORY[0x1E696AE70], v9, @"(p:(\\d+)\\/)?([\\dA-F]{8}-[\\dA-F]{4}-[\\dA-F]{4}-[\\dA-F]{4}-[\\dA-F]{12})", 1, 0);
  v13 = objc_msgSend_length(v8, v11, v12);
  v15 = objc_msgSend_firstMatchInString_options_range_(v10, v14, v8, 0, 0, v13);
  v18 = v15;
  if (v15 && objc_msgSend_numberOfRanges(v15, v16, v17) == 4)
  {
    v20 = objc_msgSend_rangeAtIndex_(v18, v19, 2);
    v22 = 0x7FFFFFFFFFFFFFFFLL;
    if (v20 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = objc_msgSend_substringWithRange_(v8, v21, v20, v21);
      v22 = objc_msgSend_integerValue(v23, v24, v25);
    }

    v26 = objc_msgSend_rangeAtIndex_(v18, v21, 3);
    v28 = objc_msgSend_substringWithRange_(v8, v27, v26, v27);
  }

  else
  {
    v28 = v8;
    v22 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v29 = v7(v28);
  if (v29)
  {
    v30 = sub_1A83D22A0(v29);
    v33 = objc_msgSend_body(v30, v31, v32);
    v36 = v33;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v56 = 0x3032000000;
    v57 = sub_1A8259CB0;
    v58 = sub_1A825AF84;
    v59 = 0;
    if (v22 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_12;
    }

    v37 = objc_msgSend_length(v33, v34, v35);
    v38 = *MEMORY[0x1E69A5FD8];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = sub_1A83D2734;
    v51[3] = &unk_1E7814848;
    p_buf = &buf;
    v54 = v22;
    v52 = v30;
    objc_msgSend_enumerateAttribute_inRange_options_usingBlock_(v36, v39, v38, 0, v37, 0, v51);

    if (!*(*(&buf + 1) + 40))
    {
LABEL_12:
      v40 = [IMMessagePartChatItem alloc];
      v43 = objc_msgSend_length(v36, v41, v42);
      v45 = objc_msgSend__initWithItem_index_messagePartRange_(v40, v44, v30, 0, 0, v43);
      v46 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v45;
    }

    v47 = v30;
    *a3 = v30;
    *a4 = *(*(&buf + 1) + 40);
    CFRelease(v29);
    _Block_object_dispose(&buf, 8);
  }

  else if (IMOSLoggingEnabled())
  {
    v48 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v8;
      _os_log_impl(&dword_1A823F000, v48, OS_LOG_TYPE_INFO, "Failed to retrieve message %@", &buf, 0xCu);
    }
  }

  v49 = *MEMORY[0x1E69E9840];
  return v29 != 0;
}

void *sub_1A83D2704()
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyMessageForGUID", @"IMDPersistence");
  off_1EB2EA508 = result;
  return result;
}

void sub_1A83D2734(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v16 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_integerValue(v16, v9, v10) == a1[6])
  {
    v11 = [IMMessagePartChatItem alloc];
    v13 = objc_msgSend__initWithItem_index_messagePartRange_(v11, v12, a1[4], a1[6], a3, a4);
    v14 = *(a1[5] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    *a5 = 1;
  }
}

uint64_t sub_1A83D27F8(uint64_t a1, void *a2, void *a3, void *a4, _BYTE *a5, _BYTE *a6, void *a7, void *a8)
{
  v37 = a6;
  v48 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v12 = *(a1 + 32);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v41, v47, 16);
  if (v16)
  {
    v17 = *v42;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v42 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v41 + 1) + 8 * i);
        v20 = objc_msgSend_guid(v19, v14, v15, v37);
        isEqualToString = objc_msgSend_isEqualToString_(v11, v21, v20);

        if (isEqualToString)
        {
          *a3 = objc_msgSend_fileUrl(v19, v14, v15);
          *a4 = objc_msgSend_uti(v19, v25, v26);
          *a5 = objc_msgSend_isSticker(v19, v27, v28);
          *v37 = objc_msgSend_isOutgoing(v19, v29, v30) ^ 1;
          if (a7)
          {
            *a7 = objc_msgSend_adaptiveImageGlyphContentDescription(v19, v31, v32);
          }

          if (a8)
          {
            v33 = objc_msgSend_attributionInfo(v19, v31, v32);
            *a8 = objc_msgSend_objectForKeyedSubscript_(v33, v34, *MEMORY[0x1E69A6F98]);
          }

          v24 = 1;
          goto LABEL_19;
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v41, v47, 16);
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v46 = v11;
      _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "Could not find attachment matching attachment guid: %@", buf, 0xCu);
    }
  }

  v24 = 0;
LABEL_19:

  v35 = *MEMORY[0x1E69E9840];
  return v24;
}

void *sub_1A83D2A6C()
{
  result = MEMORY[0x1AC56C560]("IMDChatRecordCopyGUID", @"IMDPersistence");
  off_1EB2E91D8 = result;
  return result;
}

void *sub_1A83D2A9C()
{
  result = MEMORY[0x1AC56C560]("IMDChatRecordCopyHandles", @"IMDPersistence");
  off_1EB2E91D0 = result;
  return result;
}

void *sub_1A83D2ACC()
{
  result = MEMORY[0x1AC56C560]("_IMDChatRecordBulkCopy", @"IMDPersistence");
  off_1EB2E91B0 = result;
  return result;
}

void *sub_1A83D2B34()
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyMessageForGUID", @"IMDPersistence");
  off_1EB2EA518 = result;
  return result;
}

uint64_t IMSPIQueryLastReceivedMessageWithQOS(dispatch_qos_class_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v9 = v6;
  if (v5)
  {
    v10 = v6 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (v10)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v22 = "BOOL IMSPIQueryLastReceivedMessageWithQOS(dispatch_qos_class_t, __strong dispatch_queue_t, __strong IMSPIMessageQueryCallback)";
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Empty results block or queue supplied to %s", buf, 0xCu);
      }
    }
  }

  else
  {
    v12 = objc_msgSend_copy(v6, v7, v8);

    v13 = sub_1A826443C(a1);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83D2D2C;
    block[3] = &unk_1E78148E8;
    v20 = a1;
    v18 = v5;
    v9 = v12;
    v19 = v9;
    dispatch_async(v13, block);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

void sub_1A83D2D2C(uint64_t a1)
{
  if (qword_1EB2EA530 != -1)
  {
    sub_1A84E468C();
  }

  v2 = off_1EB2EA528();
  v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = sub_1A8259CB0;
  v14[4] = sub_1A825AF84;
  v15 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83D2F1C;
  block[3] = &unk_1E7814898;
  v11 = v14;
  v12 = v2;
  v4 = v3;
  v10 = v4;
  v13 = *(a1 + 48);
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A83D2F78;
  v6[3] = &unk_1E78148C0;
  v8 = v14;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  dispatch_async(v5, v6);
  if (v2)
  {
    CFRelease(v2);
  }

  _Block_object_dispose(v14, 8);
}

void sub_1A83D2ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1A83D2EEC()
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyLastReceivedMessage", @"IMDPersistence");
  off_1EB2EA528 = result;
  return result;
}

uint64_t sub_1A83D2F1C(uint64_t a1)
{
  v2 = _IMSPIMessageFromRecord(*(a1 + 48), 1, 0, *(a1 + 32), *(a1 + 56));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2);
}

void sub_1A83D2F78(uint64_t a1, const char *a2)
{
  v3 = *(*(*(a1 + 40) + 8) + 40);
  if (v3)
  {
    objc_msgSend_arrayWithObject_(MEMORY[0x1E695DEC8], a2, v3);
  }

  else
  {
    objc_msgSend_array(MEMORY[0x1E695DEC8], a2, 0);
  }
  v4 = ;
  (*(*(a1 + 32) + 16))();
}

BOOL IMSPIShareSheetCanSendMedia(int a1, const char *a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v6 = objc_msgSend_sharedInstance(MEMORY[0x1E699BEB8], a2, a3);
  v9 = objc_msgSend_iMessageSupported(v6, v7, v8);

  AddressedHandle_simID = objc_msgSend_iMessageEnabledForSenderLastAddressedHandle_simID_(IMServiceImpl, v10, 0, 0);
  v13 = objc_msgSend_mmsEnabledforPhoneNumber_simID_(IMServiceImpl, v12, 0, 0);
  result = 0;
  if ((v13 & 1) != 0 || v9)
  {
    if ((v9 & AddressedHandle_simID & 1) != 0 || !v13)
    {
      return 1;
    }

    if (v4 + a1 + v3 <= objc_msgSend_IMMMSMaximumSlideCountForPhoneNumber_simID_(MEMORY[0x1E69A7F58], v14, 0, 0) && (v4 < 1 || v3 <= 0))
    {
      v17 = objc_msgSend_IMMMSMaximumSlideCountForPhoneNumber_simID_(MEMORY[0x1E69A7F58], v16, 0, 0) * 0.95 / 10240.0;
      if (fmaxf(floorf(v17), 1.0) >= a1)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t IMSPILastFailedMessageDateWithQOS(dispatch_qos_class_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = v6;
  if (v5)
  {
    v10 = v6 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (v10)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Empty queue or callback block provided to IMSPILastFailedMessageDate", buf, 2u);
      }
    }
  }

  else
  {
    v12 = objc_msgSend_copy(v6, v7, v8);

    v13 = sub_1A826443C(a1);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1A83D3290;
    v16[3] = &unk_1E7814750;
    v17 = v5;
    v9 = v12;
    v18 = v9;
    dispatch_async(v13, v16);
  }

  return v11;
}

void sub_1A83D3290(uint64_t a1)
{
  if (qword_1EB2EA540 != -1)
  {
    sub_1A84E46A0();
  }

  v2 = off_1EB2EA538();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A83D337C;
  v4[3] = &unk_1E78147A0;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = v2;
  dispatch_async(v3, v4);
}

void *sub_1A83D334C()
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordLastFailedMessageDate", @"IMDPersistence");
  off_1EB2EA538 = result;
  return result;
}

id IMSPISetChatContextForSubscriptionIdentifier(void *a1, void *a2, void *a3, void *a4)
{
  v83 = *MEMORY[0x1E69E9840];
  v67 = a1;
  v7 = a2;
  v69 = a3;
  v8 = a4;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v75 = v8;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Trying to set chat context for subscription identifier %@", buf, 0xCu);
    }
  }

  v12 = objc_msgSend_array(MEMORY[0x1E695DF70], v9, v10, v67);
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v13 = v7;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v70, v82, 16);
  if (v17)
  {
    v18 = *v71;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v71 != v18)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(*(&v70 + 1) + 8 * i);
        if (objc_msgSend_length(v20, v15, v16))
        {
          objc_msgSend_addObject_(v12, v21, v20);
        }

        else if (IMOSLoggingEnabled())
        {
          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Sending destinations contain empty string", buf, 2u);
          }
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v70, v82, 16);
    }

    while (v17);
  }

  v25 = objc_msgSend_count(v12, v23, v24) == 0;
  v26 = IMOSLoggingEnabled();
  if (!v25)
  {
    if (v26)
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "Setting the chat cap only", buf, 2u);
      }
    }

    sub_1A8306FC4(v26, v27, v28);
    v30 = sub_1A83D3A58(v68, v12, v69, 0, 1);
    v33 = v30;
    if (v30)
    {
      v34 = objc_msgSend_lastAddressedSIMID(v30, v31, v32);
      if (v34 != v8)
      {
        if (IMSharedHelperDeviceHasMultipleSubscriptions() && objc_msgSend_length(v8, v35, v36))
        {
          v37 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7F68], v35, v36);
          v40 = objc_msgSend_ctSubscriptionInfo(v37, v38, v39);
          v42 = objc_msgSend___im_subscriptionContextForForSimID_(v40, v41, v8);

          if (v42)
          {
            v45 = objc_msgSend_phoneNumber(v42, v43, v44);
            v48 = objc_msgSend_labelID(v42, v46, v47);
            if (IMOSLoggingEnabled())
            {
              v50 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
              {
                v53 = objc_msgSend_guid(v33, v51, v52);
                *buf = 138413058;
                v75 = v42;
                v76 = 2112;
                v77 = v45;
                v78 = 2112;
                v79 = v48;
                v80 = 2112;
                v81 = v53;
                _os_log_impl(&dword_1A823F000, v50, OS_LOG_TYPE_INFO, "Found subscription %@ and setting phoneNumber %@ and simID %@ for chat %@", buf, 0x2Au);
              }
            }

            objc_msgSend_setLastAddressedHandleID_(v33, v49, v45);
            objc_msgSend_setLastAddressedSIMID_(v33, v54, v48);
          }

          else if (IMOSLoggingEnabled())
          {
            v61 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
            {
              v64 = objc_msgSend_guid(v33, v62, v63);
              *buf = 138412546;
              v75 = v8;
              v76 = 2112;
              v77 = v64;
              _os_log_impl(&dword_1A823F000, v61, OS_LOG_TYPE_INFO, "No subscription found with new simID %@, not changing last addressed IDs of chat %@.", buf, 0x16u);
            }
          }
        }

        objc_msgSend_refreshServiceForSending(v33, v35, v36);
        v34 = v34;
        v56 = v34;
        goto LABEL_50;
      }
    }

    else
    {
      v57 = IMOSLoggingEnabled();
      if (v57)
      {
        v60 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v75 = v12;
          _os_log_impl(&dword_1A823F000, v60, OS_LOG_TYPE_INFO, "Cannot get chat for destinations: %@", buf, 0xCu);
        }
      }

      sub_1A8307074(v57, v58, v59);
      v34 = 0;
    }

    v56 = 0;
LABEL_50:

    goto LABEL_51;
  }

  if (v26)
  {
    v55 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v75 = v13;
      _os_log_impl(&dword_1A823F000, v55, OS_LOG_TYPE_INFO, "Invalid destination specified to send to: %@", buf, 0xCu);
    }
  }

  v56 = 0;
LABEL_51:

  v65 = *MEMORY[0x1E69E9840];

  return v56;
}

void sub_1A83D39D4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A83D3948);
  }

  _Unwind_Resume(a1);
}

__CFString *sub_1A83D3A58(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v121 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v107 = a2;
  v106 = a3;
  v103 = v8;
  v104 = a4;
  if (v8)
  {
    objc_msgSend_serviceWithInternalName_(IMServiceImpl, v9, v8);
    v11 = v10 = 0;
  }

  else
  {
    v12 = objc_msgSend_operationalServicesWithCapability_(IMServiceImpl, v9, 1024);
    v15 = objc_msgSend_smsService(IMServiceImpl, v13, v14);
    v17 = objc_msgSend_containsObject_(v12, v16, v15);

    if (v17)
    {
      objc_msgSend_smsService(IMServiceImpl, v18, v19);
    }

    else
    {
      objc_msgSend_firstObject(v12, v18, v19);
    }
    v10 = ;

    v11 = 0;
  }

  if (v11)
  {
    v20 = v11;
  }

  else
  {
    v20 = v10;
  }

  v21 = v20;
  v102 = v10;
  v105 = v11;
  if (v21)
  {
    v101 = v21;
    v22 = IMPreferredSendingAccountForAddressesWantsGroupWithFallbackService(v107, 1, v21);
    v25 = v22;
    if (v11)
    {
      v26 = objc_msgSend_service(v22, v23, v24);
      v27 = v26 != v11;
    }

    else
    {
      v27 = 0;
    }

    isUsableForSending = objc_msgSend__isUsableForSending(v25, v23, v24);
    v31 = isUsableForSending;
    if (v27 || !isUsableForSending)
    {
      v33 = IMOSLoggingEnabled();
      v34 = v101;
      if (v33)
      {
        v35 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = @"NO";
          if (v27)
          {
            v37 = @"YES";
          }

          else
          {
            v37 = @"NO";
          }

          *buf = 138412802;
          v113 = v25;
          v114 = 2112;
          v115 = v37;
          if (!v31)
          {
            v36 = @"YES";
          }

          v116 = 2112;
          v117 = v36;
          _os_log_impl(&dword_1A823F000, v35, OS_LOG_TYPE_INFO, "Account: %@  is not usable for sending, finding a better one... different from asking: %@, account cannot send: %@", buf, 0x20u);
        }

        v34 = v101;
      }

      v32 = IMPreferredAccountForService(v34);

      if (IMOSLoggingEnabled())
      {
        v38 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v113 = v32;
          _os_log_impl(&dword_1A823F000, v38, OS_LOG_TYPE_INFO, "   => Found: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v32 = v25;
    }

    v39 = IMOSLoggingEnabled();
    if (!v32)
    {
      if (v39)
      {
        v69 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v113 = v8;
          _os_log_impl(&dword_1A823F000, v69, OS_LOG_TYPE_INFO, "No account found matching service: %@", buf, 0xCu);
        }
      }

      v29 = 0;
      goto LABEL_98;
    }

    if (v39)
    {
      v42 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v113 = v32;
        _os_log_impl(&dword_1A823F000, v42, OS_LOG_TYPE_INFO, "Using account: %@", buf, 0xCu);
      }
    }

    v43 = objc_msgSend_array(MEMORY[0x1E695DF70], v40, v41);
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v44 = v107;
    v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v45, &v108, v120, 16);
    if (v46)
    {
      v47 = *v109;
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v109 != v47)
          {
            objc_enumerationMutation(v44);
          }

          v49 = *(*(&v108 + 1) + 8 * i);
          v51 = IMStripFormattingFromAddress();
          if (v51)
          {
            v53 = objc_msgSend_imHandleWithID_alreadyCanonical_(v32, v50, v51, 0);
            if (v53)
            {
              objc_msgSend_addObject_(v43, v52, v53);
            }

            else if (IMOSLoggingEnabled())
            {
              v54 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v113 = v51;
                _os_log_impl(&dword_1A823F000, v54, OS_LOG_TYPE_INFO, "account doesn't have a handle for raw address %@", buf, 0xCu);
              }
            }
          }
        }

        v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v55, &v108, v120, 16);
      }

      while (v46);
    }

    if (!objc_msgSend_count(v43, v56, v57))
    {
      if (IMOSLoggingEnabled())
      {
        v70 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v113 = v44;
          v114 = 2112;
          v115 = v32;
          _os_log_impl(&dword_1A823F000, v70, OS_LOG_TYPE_INFO, "Could not get handle for %@ on account: %@", buf, 0x16u);
        }
      }

      v29 = 0;
      goto LABEL_97;
    }

    if (v106)
    {
      v60 = objc_msgSend_sharedRegistry(IMChatRegistry, v58, v59);
      v29 = objc_msgSend_existingChatWithGUID_(v60, v61, v106);

      v64 = objc_msgSend_participants(v29, v62, v63);
      v66 = objc_msgSend_equivalentToRecipients_(v64, v65, v43);

      if (v66)
      {
        if (IMOSLoggingEnabled())
        {
          v67 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v113 = v29;
            _os_log_impl(&dword_1A823F000, v67, OS_LOG_TYPE_INFO, "Had originally found a chat: %@", buf, 0xCu);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v68 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v113 = v43;
            _os_log_impl(&dword_1A823F000, v68, OS_LOG_TYPE_INFO, "But it's handles were not equivalent: %@", buf, 0xCu);
          }
        }

        if (v29)
        {
          goto LABEL_83;
        }
      }

      else
      {
      }
    }

    v71 = objc_msgSend_sharedRegistry(IMChatRegistry, v58, v59);
    v73 = v71;
    if (a5)
    {
      objc_msgSend_chatWithHandles_(v71, v72, v43);
    }

    else
    {
      objc_msgSend_existingChatWithHandles_allowAlternativeService_(v71, v72, v43, 0);
    }
    v29 = ;

    if (!v29)
    {
LABEL_97:

LABEL_98:
      v21 = v101;
      goto LABEL_99;
    }

LABEL_83:
    if (IMSharedHelperDeviceHasMultipleSubscriptions() && objc_msgSend_length(v104, v74, v75))
    {
      v76 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7F68], v74, v75);
      v79 = objc_msgSend_ctSubscriptionInfo(v76, v77, v78);
      v81 = objc_msgSend___im_subscriptionContextForForSimID_(v79, v80, v104);

      if (v81)
      {
        v84 = objc_msgSend_phoneNumber(v81, v82, v83);
        v87 = objc_msgSend_labelID(v81, v85, v86);
        if (IMOSLoggingEnabled())
        {
          v89 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
          {
            v92 = objc_msgSend_guid(v29, v90, v91);
            *buf = 138413058;
            v113 = v81;
            v114 = 2112;
            v115 = v84;
            v116 = 2112;
            v117 = v87;
            v118 = 2112;
            v119 = v92;
            _os_log_impl(&dword_1A823F000, v89, OS_LOG_TYPE_INFO, "Found subscription %@ and setting phoneNumber %@ and simID %@ for chat %@", buf, 0x2Au);
          }
        }

        objc_msgSend_setLastAddressedHandleID_(v29, v88, v84);
        objc_msgSend_setLastAddressedSIMID_(v29, v93, v87);
      }

      else if (IMOSLoggingEnabled())
      {
        v94 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
        {
          v97 = objc_msgSend_guid(v29, v95, v96);
          *buf = 138412546;
          v113 = v104;
          v114 = 2112;
          v115 = v97;
          _os_log_impl(&dword_1A823F000, v94, OS_LOG_TYPE_INFO, "No subscription found with new simID %@, not changing last addressed IDs of chat %@.", buf, 0x16u);
        }
      }
    }

    objc_msgSend_join(v29, v74, v75);
    goto LABEL_97;
  }

  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "No operational service to use", buf, 2u);
    }
  }

  v29 = 0;
LABEL_99:

  v98 = *MEMORY[0x1E69E9840];

  return v29;
}

void sub_1A83D4398(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A83D42FCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1A83D44AC(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13)
{
  v81 = *MEMORY[0x1E69E9840];
  v19 = a1;
  v20 = a2;
  v47 = a3;
  v59 = a4;
  v49 = a5;
  v50 = a6;
  v51 = a7;
  v55 = a8;
  v52 = a9;
  v56 = a10;
  v21 = v19;
  v58 = a11;
  v53 = a12;
  v54 = a13;
  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v80 = v58;
      _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "Trying to send message with attachments for subscription identifier %@", buf, 0xCu);
    }
  }

  v25 = objc_msgSend_array(MEMORY[0x1E695DF70], v22, v23, v47);
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v26 = v20;
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v74, v78, 16);
  if (v30)
  {
    v31 = *v75;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v75 != v31)
        {
          objc_enumerationMutation(v26);
        }

        v33 = *(*(&v74 + 1) + 8 * i);
        if (objc_msgSend_length(v33, v28, v29))
        {
          objc_msgSend_addObject_(v25, v34, v33);
        }

        else if (IMOSLoggingEnabled())
        {
          v35 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A823F000, v35, OS_LOG_TYPE_INFO, "Sending destinations contain empty string", buf, 2u);
          }
        }
      }

      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v28, &v74, v78, 16);
    }

    while (v30);
  }

  if (!objc_msgSend_count(v25, v36, v37))
  {
    if (IMOSLoggingEnabled())
    {
      v43 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v80 = v26;
        _os_log_impl(&dword_1A823F000, v43, OS_LOG_TYPE_INFO, "Invalid destination specified to send to: %@", buf, 0xCu);
      }

      goto LABEL_30;
    }

LABEL_31:
    v42 = 0;
    goto LABEL_32;
  }

  if (!objc_msgSend_length(v59, v38, v39))
  {
    v44 = objc_msgSend_count(v55, v40, v41);
    if (!v56 && !v44)
    {
      if (IMOSLoggingEnabled())
      {
        v43 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v43, OS_LOG_TYPE_INFO, "Empty message specified to send with no attachments or payloadData, ignoring", buf, 2u);
        }

LABEL_30:

        goto LABEL_31;
      }

      goto LABEL_31;
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83DFBC0;
  block[3] = &unk_1E7814BA0;
  v61 = v55;
  v62 = v56;
  v63 = v21;
  v64 = v25;
  v65 = v48;
  v66 = v58;
  v67 = v59;
  v68 = v49;
  v69 = v50;
  v70 = v51;
  v71 = v52;
  v72 = v53;
  v73 = v54;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  v42 = 1;
LABEL_32:

  v45 = *MEMORY[0x1E69E9840];
  return v42;
}

uint64_t IMSPISendMessageWithAttachmentsReturningGUIDForSubscriptionIdentifier(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v23[0] = a2;
  v11 = MEMORY[0x1E695DEC8];
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = a2;
  v17 = a1;
  v19 = objc_msgSend_arrayWithObjects_count_(v11, v18, v23, 1);

  v20 = sub_1A83D44AC(v17, v19, 0, v15, 0, 0, 0, v14, 0, 0, v13, 0, v12);
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t IMSPISendRichLink(void *a1, void *a2, void *a3, void *a4)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v11 = a4;
  if (v7)
  {
    v18[0] = v7;
    v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v10, v18, 1);
    v13 = IMSPISendRichLinkToMany(v12, 0, v8, v9, v11);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *v17 = 0;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Destination cannot be nil.", v17, 2u);
      }
    }

    v13 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t IMSPISendRichLinkToMany(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Sending rich link", buf, 2u);
      }
    }

    v15 = IMSharedHelperCombinedPluginPayloadDictionaryData();
    v18 = objc_msgSend_absoluteString(v11, v16, v17);
    v19 = sub_1A83D44AC(@"iMessage", v9, v10, v18, 0, 0, 0, 0, *MEMORY[0x1E69A6A18], v15, 0, 0, 0);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v24 = v11;
        _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "IMCoreSPI: url is not an NSURL %@", buf, 0xCu);
      }
    }

    v19 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

void IMSPICancelScheduledMessageWithGUID(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v4 = objc_msgSend_length(v1, v2, v3);
  v5 = IMOSLoggingEnabled();
  if (v4)
  {
    if (v5)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Setting the chat cap only", &v19, 2u);
      }
    }

    sub_1A8306FC4(v5, v6, v7);
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v19 = 138412290;
        v20 = v1;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Cancel scheduled message with GUID: %@", &v19, 0xCu);
      }
    }

    v12 = objc_msgSend_sharedController(IMDaemonController, v9, v10);
    v15 = objc_msgSend_remoteDaemon(v12, v13, v14);
    objc_msgSend_cancelScheduledMessageWithGUID_(v15, v16, v1);
  }

  else if (v5)
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Empty message GUID passed in.", &v19, 2u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t IMSPICancelScheduledMessageWithGUIDAndDestination(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!objc_msgSend_length(v3, v5, v6))
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Empty message GUID passed in.", &v23, 2u);
      }

      goto LABEL_19;
    }

LABEL_20:
    v19 = 0;
    goto LABEL_21;
  }

  v7 = IMOSLoggingEnabled();
  if (!v4)
  {
    if (v7)
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Empty destination passed in.", &v23, 2u);
      }

LABEL_19:

      goto LABEL_20;
    }

    goto LABEL_20;
  }

  if (v7)
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Setting the chat cap only", &v23, 2u);
    }
  }

  sub_1A8306FC4(v7, v8, v9);
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v23 = 138412546;
      v24 = v3;
      v25 = 2112;
      v26 = v4;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Cancel scheduled message with GUID: %@, destination: %@", &v23, 0x16u);
    }
  }

  v14 = objc_msgSend_sharedController(IMDaemonController, v11, v12);
  v17 = objc_msgSend_remoteDaemon(v14, v15, v16);
  objc_msgSend_cancelScheduledMessageWithGUID_destination_(v17, v18, v3, v4);

  v19 = 1;
LABEL_21:

  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t IMSPICancelScheduledMessageWithGUIDAndDestinations(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!objc_msgSend_length(v3, v5, v6))
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Empty message GUID passed in.", &v25, 2u);
      }

      goto LABEL_20;
    }

LABEL_21:
    v21 = 0;
    goto LABEL_22;
  }

  if (!v4 || !objc_msgSend_count(v4, v7, v8))
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Empty destinations passed in.", &v25, 2u);
      }

LABEL_20:

      goto LABEL_21;
    }

    goto LABEL_21;
  }

  v9 = IMOSLoggingEnabled();
  if (v9)
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Setting the chat cap only", &v25, 2u);
    }
  }

  sub_1A8306FC4(v9, v10, v11);
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v25 = 138412546;
      v26 = v3;
      v27 = 2112;
      v28 = v4;
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Cancel scheduled message with GUID: %@, destinations: %@", &v25, 0x16u);
    }
  }

  v16 = objc_msgSend_sharedController(IMDaemonController, v13, v14);
  v19 = objc_msgSend_remoteDaemon(v16, v17, v18);
  objc_msgSend_cancelScheduledMessageWithGUID_destinations_cancelType_(v19, v20, v3, v4, 0);

  v21 = 1;
LABEL_22:

  v23 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t IMSPIScheduleSendMSMessagePayloadReturningGUID(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = *MEMORY[0x1E69A69F0];
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a2;
  v19 = a1;
  v21 = objc_msgSend_stringByAppendingFormat_(v13, v20, @":0000000000:%@", a3);
  v22 = sub_1A83D5750(v19);
  v23 = sub_1A83D44AC(@"iMessage", v18, v17, 0, v22, 0, 0, v15, v21, v19, 0, v16, v14);

  return v23;
}

id sub_1A83D5750(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = IMExtensionPayloadUnarchivingClasses();
    if (objc_opt_respondsToSelector())
    {
      v19 = 0;
      v4 = objc_msgSend__strictlyUnarchivedObjectOfClasses_fromData_error_(MEMORY[0x1E696ACD0], v3, v2, v1, &v19);
      v5 = v19;
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v23 = v5;
          _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Finished _strictlyUnarchivedObjectOfClasses for payloadData. Error: [%@]", buf, 0xCu);
        }
      }
    }

    else
    {
      v18 = 0;
      v4 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(MEMORY[0x1E696ACD0], v3, v2, v1, &v18);
      v5 = v18;
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v23 = v5;
          _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Finished unarchivedObjectOfClasses for payloadData. Error: [%@]", buf, 0xCu);
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = objc_msgSend_objectForKey_(v4, v9, *MEMORY[0x1E69A6EF0]);
      if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v12 = *MEMORY[0x1E69A5F30];
        v20[0] = *MEMORY[0x1E69A5F28];
        v20[1] = v12;
        v21[0] = v10;
        v21[1] = &unk_1F1BA18A8;
        v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v11, v21, v20, 2);
        v14 = objc_alloc(MEMORY[0x1E696AAB0]);
        v7 = objc_msgSend_initWithString_attributes_(v14, v15, *MEMORY[0x1E69A5F20], v13);
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v7;
}

uint64_t IMSPIScheduleSendMSMessagePayloadWithSummaryTextReturningGUID(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = *MEMORY[0x1E69A69F0];
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a2;
  v22 = a1;
  v24 = objc_msgSend_stringByAppendingFormat_(v15, v23, @":0000000000:%@", a3);
  v25 = sub_1A83D5750(v22);
  v26 = sub_1A83D44AC(@"iMessage", v21, v20, 0, v25, 0, v18, v17, v24, v22, 0, v19, v16);

  return v26;
}

uint64_t IMSPIScheduleSendMSMessagePayloadWithSummaryTextAndGUID(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a6;
  v16 = *MEMORY[0x1E69A69F0];
  v17 = a8;
  v18 = a7;
  v19 = a5;
  v20 = a4;
  v21 = a2;
  v22 = a1;
  v24 = objc_msgSend_stringByAppendingFormat_(v16, v23, @":0000000000:%@", a3);
  v25 = sub_1A83D5750(v22);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = sub_1A83D5CDC;
  v29[3] = &unk_1E7812700;
  v30 = v15;
  v26 = v15;
  v27 = sub_1A83D44AC(@"iMessage", v21, v20, 0, v25, v26, v18, v17, v24, v22, 0, v19, v29);

  return v27;
}

void sub_1A83D5CDC(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  isEqualToString = objc_msgSend_isEqualToString_(v3, v4, *(a1 + 32));
  v6 = IMOSLoggingEnabled();
  if (isEqualToString)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 32);
        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Returned GUID matches %@.", &v11, 0xCu);
      }

LABEL_9:
    }
  }

  else if (v6)
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v11 = 138412546;
      v12 = v3;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "IMCoreSPI: Returned GUID (%@) does not match requested GUID (%@).", &v11, 0x16u);
    }

    goto LABEL_9;
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t IMSPISendMSMessagePayload(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v16 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v14, v15);
  if (objc_msgSend_isWaldoEnabled(v16, v17, v18))
  {

LABEL_9:
    v22 = IMSPISendMSMessagePayloadReturningGUID(v9, v10, v11, v12, 0, v13, 0);
    goto LABEL_10;
  }

  v20 = objc_msgSend_containsString_(v11, v19, *MEMORY[0x1E69A6938]);

  if (!v20)
  {
    goto LABEL_9;
  }

  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *v24 = 0;
      _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "IMCoreSPI: Waldo is disabled, and client attempted to send a waldo plugin message. Aborting.", v24, 2u);
    }
  }

  v22 = 0;
LABEL_10:

  return v22;
}

uint64_t IMSPISendMSMessagePayloadReturningGUID(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v22 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v20, v21);
  if (objc_msgSend_isWaldoEnabled(v22, v23, v24))
  {

LABEL_9:
    v30 = objc_msgSend_stringByAppendingFormat_(*MEMORY[0x1E69A69F0], v26, @":0000000000:%@", v15);
    v31 = sub_1A83D5750(v13);
    v29 = sub_1A83D44AC(@"iMessage", v14, v16, 0, v31, v17, 0, v18, v30, v13, 0, 0, v19);

    goto LABEL_10;
  }

  v27 = objc_msgSend_containsString_(v15, v25, *MEMORY[0x1E69A6938]);

  if (!v27)
  {
    goto LABEL_9;
  }

  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "IMCoreSPI: Waldo is disabled, and client attempted to send a waldo plugin message. Aborting.", buf, 2u);
    }
  }

  v29 = 0;
LABEL_10:

  return v29;
}

uint64_t IMSPISendMSMessagePayloadWithSummaryTextReturningGUID(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = *MEMORY[0x1E69A69F0];
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a2;
  v22 = a1;
  v24 = objc_msgSend_stringByAppendingFormat_(v15, v23, @":0000000000:%@", a3);
  v25 = sub_1A83D5750(v22);
  v26 = sub_1A83D44AC(@"iMessage", v21, v20, 0, v25, v19, v18, v17, v24, v22, 0, 0, v16);

  return v26;
}

uint64_t IMSPIReceiveMSMessagePayload(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v25 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v23, v24);
  if (objc_msgSend_isWaldoEnabled(v25, v26, v27))
  {

LABEL_9:
    v33 = objc_msgSend_stringByAppendingFormat_(*MEMORY[0x1E69A69F0], v29, @":0000000000:%@", v19);
    sub_1A8306F6C(v33, v34, v35);
    v32 = sub_1A83D6490(v16, v17, v20, v21, v18, v22, v33, v15, 0);

    goto LABEL_10;
  }

  v30 = objc_msgSend_containsString_(v19, v28, *MEMORY[0x1E69A6938]);

  if (!v30)
  {
    goto LABEL_9;
  }

  if (IMOSLoggingEnabled())
  {
    v31 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "IMCoreSPI: Waldo is disabled, and client attempted to receive a waldo plugin message. Aborting.", buf, 2u);
    }
  }

  v32 = 0;
LABEL_10:

  return v32;
}

uint64_t sub_1A83D6490(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v71 = *MEMORY[0x1E69E9840];
  v16 = a1;
  v44 = a2;
  v45 = a3;
  v46 = a4;
  v47 = a5;
  v49 = a6;
  v48 = a7;
  v50 = a8;
  v17 = a9;
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v70 = 0;
      _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Trying to send message with attachments for subscription identifier %@", buf, 0xCu);
    }
  }

  v21 = objc_msgSend_array(MEMORY[0x1E695DF70], v18, v19);
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v22 = v16;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v64, v68, 16);
  if (v26)
  {
    v27 = *v65;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v65 != v27)
        {
          objc_enumerationMutation(v22);
        }

        v29 = *(*(&v64 + 1) + 8 * i);
        if (objc_msgSend_length(v29, v24, v25))
        {
          objc_msgSend_addObject_(v21, v30, v29);
        }

        else if (IMOSLoggingEnabled())
        {
          v31 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "Receive participants contain empty string", buf, 2u);
          }
        }
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v24, &v64, v68, 16);
    }

    while (v26);
  }

  if (!objc_msgSend_count(v21, v32, v33))
  {
    if (IMOSLoggingEnabled())
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v70 = v22;
        _os_log_impl(&dword_1A823F000, v39, OS_LOG_TYPE_INFO, "Invalid participants specified to receive from: %@", buf, 0xCu);
      }
    }

    if (!v17)
    {
      goto LABEL_35;
    }

LABEL_34:
    v17[2](v17, 0);
LABEL_35:
    v38 = 0;
    goto LABEL_36;
  }

  if (!objc_msgSend_length(0, v34, v35))
  {
    v40 = objc_msgSend_count(v49, v36, v37);
    if (!v50 && !v40)
    {
      if (IMOSLoggingEnabled())
      {
        v41 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v41, OS_LOG_TYPE_INFO, "Empty message specified to receive with no attachments or payloadData, ignoring", buf, 2u);
        }
      }

      if (!v17)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83E0A04;
  block[3] = &unk_1E7814BF0;
  v52 = v49;
  v53 = v50;
  v54 = @"iMessage";
  v55 = v21;
  v56 = v45;
  v57 = 0;
  v63 = v17;
  v58 = v44;
  v59 = 0;
  v60 = v46;
  v61 = v47;
  v62 = v48;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  v38 = 1;
LABEL_36:

  v42 = *MEMORY[0x1E69E9840];
  return v38;
}

void IMSPIReceiveMSMessagePayloadWithCallback(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v37 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v26 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v24, v25);
  if (objc_msgSend_isWaldoEnabled(v26, v27, v28))
  {

LABEL_10:
    v34 = objc_msgSend_stringByAppendingFormat_(*MEMORY[0x1E69A69F0], v30, @":0000000000:%@", v19);
    sub_1A8306F6C(v34, v35, v36);
    sub_1A83D6490(v16, v17, v20, v21, v18, v22, v34, v37, v23);

    v32 = v37;
    goto LABEL_11;
  }

  v31 = objc_msgSend_containsString_(v19, v29, *MEMORY[0x1E69A6938]);

  if (!v31)
  {
    goto LABEL_10;
  }

  v32 = v37;
  if (IMOSLoggingEnabled())
  {
    v33 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v33, OS_LOG_TYPE_INFO, "IMCoreSPI: Waldo is disabled, and client attempted to receive a waldo plugin message. Aborting.", buf, 2u);
    }
  }

  if (v23)
  {
    (*(v23 + 2))(v23, 0);
  }

LABEL_11:
}

id IMSPIRetrieveLocalizedServiceStringByServiceName(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_serviceWithName_(IMService, a2, a1);
  v5 = objc_msgSend__displayName(v2, v3, v4);

  return v5;
}

void IMSPICalculateSendingServiceByDestinationsAndChatGUID(void *a1, void *a2, void *a3)
{
  v77 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v59 = a2;
  v58 = a3;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v74 = v59;
      v75 = 2112;
      v76 = v5;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Get sending service by guid: %@, destinations: %@", buf, 0x16u);
    }
  }

  v9 = objc_msgSend_array(MEMORY[0x1E695DF70], v6, v7);
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v10 = v5;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v67, v72, 16);
  if (v14)
  {
    v15 = *v68;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v68 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v67 + 1) + 8 * i);
        if (objc_msgSend_length(v17, v12, v13))
        {
          objc_msgSend_addObject_(v9, v18, v17);
        }

        else if (IMOSLoggingEnabled())
        {
          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Destinations contain empty string when calculating sending service.", buf, 2u);
          }
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v67, v72, 16);
    }

    while (v14);
  }

  v22 = objc_msgSend_count(v9, v20, v21);
  if (v22)
  {
    sub_1A8306F6C(v22, v23, v24);
    v25 = sub_1A83D3A58(0, v9, v59, 0, 0);
    sub_1A8307074(v25, v26, v27);
    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v74 = v25;
        _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "IMSPIGetIMChat returns %@", buf, 0xCu);
      }
    }

    objc_msgSend___imArrayByApplyingBlock_(v9, v28, &unk_1F1B6F960);
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v30 = v64 = 0u;
    v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v63, v71, 16);
    if (v32)
    {
      v33 = *v64;
      while (2)
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v64 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v63 + 1) + 8 * j);
          if (IMStringIsEmail())
          {
            v57 = 1;
            goto LABEL_33;
          }
        }

        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v36, &v63, v71, 16);
        if (v32)
        {
          continue;
        }

        break;
      }
    }

    v57 = 0;
LABEL_33:

    shouldForceServerStatusRefresh = objc_msgSend_shouldForceServerStatusRefresh(v25, v37, v38);
    v41 = objc_msgSend_lastAddressedHandleID(v25, v39, v40);
    v44 = objc_msgSend_lastAddressedSIMID(v25, v42, v43);
    v47 = objc_msgSend_repliedToChat(v25, v45, v46);
    v50 = objc_msgSend_forceMMS(v25, v48, v49);
    isDowngraded = objc_msgSend_isDowngraded(v25, v51, v52);
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = sub_1A83D7150;
    v60[3] = &unk_1E7814910;
    v62 = v58;
    v61 = v10;
    IMChatCalculateServiceForSendingNewComposeMaybeForce(v30, v25, v41, v44, v50, v57, shouldForceServerStatusRefresh, isDowngraded, v47, 0, v60);
  }

  else if (IMOSLoggingEnabled())
  {
    v54 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v74 = v10;
      _os_log_impl(&dword_1A823F000, v54, OS_LOG_TYPE_INFO, "Invalid destination when calculating sending service: %@", buf, 0xCu);
    }
  }

  v55 = *MEMORY[0x1E69E9840];
}

void sub_1A83D7150(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = objc_msgSend_name(a2, a2, a3);
    (*(v3 + 16))(v3, v5, *(a1 + 32));
  }
}

uint64_t sub_1A83D71D8(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v66 = *MEMORY[0x1E69E9840];
  v55 = a1;
  v13 = a2;
  v56 = a3;
  v57 = a4;
  v58 = a5;
  v54 = a6;
  v14 = a7;
  v17 = objc_msgSend_array(MEMORY[0x1E695DF70], v15, v16);
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v18 = v13;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v59, v65, 16);
  if (v22)
  {
    v23 = *v60;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v60 != v23)
        {
          objc_enumerationMutation(v18);
        }

        v25 = *(*(&v59 + 1) + 8 * i);
        if (objc_msgSend_length(v25, v20, v21))
        {
          objc_msgSend_addObject_(v17, v26, v25);
        }

        else if (IMOSLoggingEnabled())
        {
          v27 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_INFO, "Sending destinations contain empty string", buf, 2u);
          }
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v20, &v59, v65, 16);
    }

    while (v22);
  }

  if (!objc_msgSend_count(v17, v28, v29))
  {
    if (IMOSLoggingEnabled())
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v64 = v18;
        _os_log_impl(&dword_1A823F000, v39, OS_LOG_TYPE_INFO, "Invalid destination specified to send to: %@", buf, 0xCu);
      }

      goto LABEL_33;
    }

LABEL_34:
    v41 = 0;
    goto LABEL_48;
  }

  if (!objc_msgSend_length(v57, v30, v31))
  {
    v40 = objc_msgSend_count(v58, v32, v33);
    if (!v14 && !v40)
    {
      if (IMOSLoggingEnabled())
      {
        v39 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v39, OS_LOG_TYPE_INFO, "Empty message specified to send with no attachments or payloadData, ignoring", buf, 2u);
        }

LABEL_33:

        goto LABEL_34;
      }

      goto LABEL_34;
    }
  }

  v34 = objc_msgSend_count(v58, v32, v33);
  if (v14 || v34 || IMIsRunningInGameCenter())
  {
    v35 = IMOSLoggingEnabled();
    if (v35)
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v38, OS_LOG_TYPE_INFO, "Have non-zero attachments to send, ensuring we have transfer capability", buf, 2u);
      }
    }

    sub_1A830701C(v35, v36, v37);
  }

  else
  {
    v42 = IMOSLoggingEnabled();
    if (v42)
    {
      v45 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v45, OS_LOG_TYPE_INFO, "Setting the chat cap only", buf, 2u);
      }
    }

    sub_1A8306FC4(v42, v43, v44);
  }

  v46 = sub_1A83D3A58(v55, v17, v56, 0, 1);
  v47 = v46;
  if (v46)
  {
    v48 = sub_1A83E004C(v46, v57, 0, 0, 0, v58, v54, v14, 0, 0);
    v41 = v48;
  }

  else
  {
    v48 = IMOSLoggingEnabled();
    if (v48)
    {
      v51 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v51, OS_LOG_TYPE_INFO, "Cannot send message without chat", buf, 2u);
      }
    }

    v41 = 0;
  }

  sub_1A8307074(v48, v49, v50);

LABEL_48:
  v52 = *MEMORY[0x1E69E9840];
  return v41;
}

uint64_t IMSPISendMessageWithAttachmentsSynchronously(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = a1;
  v13 = sub_1A83D775C(a5);
  v14 = sub_1A83D71D8(v12, v11, v10, v9, v13, 0, 0);

  return v14;
}

id sub_1A83D775C(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v5 = v2;
  if (v1)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1A83E160C;
    v14[3] = &unk_1E78133D0;
    v6 = v2;
    v15 = v6;
    objc_msgSend_enumerateObjectsUsingBlock_(v1, v7, v14);

    objc_msgSend_count(v6, v8, v9);
LABEL_4:
    v12 = objc_msgSend_copy(v5, v10, v11);
    goto LABEL_5;
  }

  if (objc_msgSend_count(v2, v3, v4))
  {
    goto LABEL_4;
  }

  v12 = 0;
LABEL_5:

  return v12;
}

uint64_t IMSPISendRichLinkSynchronously(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v27 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v17 = IMSharedHelperCombinedPluginPayloadDictionaryData();
    v20 = objc_msgSend_absoluteString(v14, v18, v19);
    v21 = sub_1A83D71D8(v11, v12, v13, v20, 0, *MEMORY[0x1E69A6A18], v17);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v25 = 138412290;
        v26 = v14;
        _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "IMCoreSPI: url is not an NSURL %@", &v25, 0xCu);
      }
    }

    v21 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v21;
}

void IMSPIRemapChatsWithLastAddressedLabelIDToNewLabelID(void *a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (objc_msgSend_length(v3, v5, v6) && objc_msgSend_length(v4, v7, v8))
  {
    if ((IMSharedHelperDeviceHasMultipleSubscriptions() & 1) != 0 || IMIsRunningInDebugMode())
    {
      v11 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7F68], v9, v10);
      v14 = objc_msgSend_ctSubscriptionInfo(v11, v12, v13);
      v16 = objc_msgSend___im_subscriptionContextForForSimID_(v14, v15, v4);

      v19 = objc_msgSend_labelID(v16, v17, v18);
      if (objc_msgSend_length(v19, v20, v21))
      {

LABEL_12:
        v31 = objc_msgSend_phoneNumber(v16, v24, v25);
        if (IMOSLoggingEnabled())
        {
          v32 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v37 = 138412290;
            v38 = v16;
            _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_INFO, "Found subscription to remap chats with: %@", &v37, 0xCu);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v33 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v37 = 138412802;
            v38 = v3;
            v39 = 2112;
            v40 = v4;
            v41 = 2112;
            v42 = v31;
            _os_log_impl(&dword_1A823F000, v33, OS_LOG_TYPE_INFO, "Remapping chats with old labelID %@ to new labelID %@ and new phone number %@.", &v37, 0x20u);
          }
        }

        IMDChatRemapChatsWithLastAddressedSIMIDToNewLastAddressedIDs();
LABEL_31:

        goto LABEL_32;
      }

      v27 = objc_msgSend_phoneNumber(v16, v22, v23);
      v30 = objc_msgSend_length(v27, v28, v29);

      if (v30)
      {
        goto LABEL_12;
      }

      if (IMOSLoggingEnabled())
      {
        v34 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v37 = 138412546;
          v38 = v4;
          v39 = 2112;
          v40 = v16;
          _os_log_impl(&dword_1A823F000, v34, OS_LOG_TYPE_INFO, "No valid subscription found with new labelID %@, not remapping chats. Subscription %@", &v37, 0x16u);
        }
      }
    }

    if (IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        LOWORD(v37) = 0;
        _os_log_impl(&dword_1A823F000, v35, OS_LOG_TYPE_INFO, "Remapping chats' lastAddressedIDs not supported.", &v37, 2u);
      }
    }

    v31 = &stru_1F1B76F98;
    goto LABEL_31;
  }

  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v37 = 138412546;
      v38 = v3;
      v39 = 2112;
      v40 = v4;
      _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_INFO, "Cannot remap chats because invalid arguments: oldLabelID %@ newLabelID %@", &v37, 0x16u);
    }
  }

LABEL_32:

  v36 = *MEMORY[0x1E69E9840];
}

id IMSPIGetDisplayNameAndParticipantsForChatWithGUID(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = v1;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Request to get display name and participants for chat GUID: %@", buf, 0xCu);
    }
  }

  v3 = IMDChatRecordCopyChatForGUIDWithDisplayNameHiddenIfUnknown();
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_handleRecords(v3, v4, v5);
    v9 = objc_msgSend___imArrayByApplyingBlock_(v7, v8, &unk_1F1B6F980);

    v10 = [IMSPISuggestionsObject alloc];
    v13 = objc_msgSend_groupName(v6, v11, v12);
    v15 = objc_msgSend_initWithChatGuid_displayName_participants_(v10, v14, v1, v13, v9);

    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v24 = v15;
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Results for fetching chat group name and participants: %@", buf, 0xCu);
      }
    }

    v22 = v15;
    v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v16, &v22, 1);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v24 = v1;
        _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Failed to find chat for guid: %@", buf, 0xCu);
      }
    }

    v18 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v18;
}

id IMSPIGetMostRecentContacts(int a1)
{
  v44 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = a1;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Request to get most recent contacts used by messages: %d", buf, 8u);
    }
  }

  v3 = IMOSLoggingEnabled();
  if (v3)
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Setting the chat cap only", buf, 2u);
    }
  }

  sub_1A8306F6C(v3, v4, v5);
  *buf = 0;
  v39 = buf;
  v40 = 0x3032000000;
  v41 = sub_1A8259CB0;
  v42 = sub_1A825AF84;
  v43 = 0;
  v9 = objc_msgSend_sharedRegistry(IMChatRegistry, v7, v8);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = sub_1A83D83E8;
  v36[3] = &unk_1E7814958;
  v36[4] = buf;
  objc_msgSend__loadChatsFilteredUsingPredicate_lastMessageOlderThan_limit_waitForReply_completionHandler_(v9, v10, 0, 0, a1, 1, v36);

  objc_msgSend_sortUsingComparator_(*(v39 + 5), v11, &unk_1F1B6F9A0);
  v13 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v12, a1);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v14 = *(v39 + 5);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v32, v37, 16);
  if (v16)
  {
    v17 = *v33;
LABEL_11:
    v18 = 0;
    while (1)
    {
      if (*v33 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v21 = sub_1A83D8438(*(*(&v32 + 1) + 8 * v18));
      if (v21)
      {
        objc_msgSend_addObject_(v13, v19, v21, v32);
      }

      v22 = objc_msgSend_count(v13, v19, v20, v32) < a1;

      if (!v22)
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v23, &v32, v37, 16);
        if (v16)
        {
          goto LABEL_11;
        }

        break;
      }
    }
  }

  sub_1A8307074(v24, v25, v26);
  v29 = objc_msgSend_copy(v13, v27, v28);

  _Block_object_dispose(buf, 8);
  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

uint64_t sub_1A83D83E8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_mutableCopy(a2, a2, a3);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x1EEE66BB8](v4);
}

id sub_1A83D8438(void *a1)
{
  v62 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = MEMORY[0x1E695DFA8];
  v5 = objc_msgSend_participants(v1, v3, v4);
  v8 = objc_msgSend_count(v5, v6, v7);
  v10 = objc_msgSend_setWithCapacity_(v2, v9, v8);

  v11 = MEMORY[0x1E695DF70];
  v14 = objc_msgSend_participants(v1, v12, v13);
  v17 = objc_msgSend_count(v14, v15, v16);
  v19 = objc_msgSend_arrayWithCapacity_(v11, v18, v17);

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v22 = objc_msgSend_participants(v1, v20, v21, 0);
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v57, v61, 16);
  if (v24)
  {
    v27 = v24;
    v28 = *v58;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v58 != v28)
        {
          objc_enumerationMutation(v22);
        }

        v30 = *(*(&v57 + 1) + 8 * i);
        v31 = objc_msgSend_ID(v30, v25, v26);
        v33 = objc_msgSend_containsObject_(v10, v32, v31);

        if ((v33 & 1) == 0)
        {
          v34 = objc_msgSend_ID(v30, v25, v26);
          objc_msgSend_addObject_(v10, v35, v34);

          objc_msgSend_addObject_(v19, v36, v30);
        }
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v57, v61, 16);
    }

    while (v27);
  }

  v39 = objc_msgSend_displayName(v1, v37, v38);
  v42 = v39;
  if (!v39 || !objc_msgSend_length(v39, v40, v41))
  {
    isTextMessageExtensionEnabled = objc_msgSend_isTextMessageExtensionEnabled(MEMORY[0x1E69A8198], v40, v41);
    v45 = objc_msgSend_displayNameWithRawAddress_isSpamFilteringEnabled_(v1, v44, 0, isTextMessageExtensionEnabled);

    v42 = v45;
  }

  if (objc_msgSend_count(v19, v40, v41))
  {
    v46 = [IMSPISuggestionsObject alloc];
    v49 = objc_msgSend_guid(v1, v47, v48);
    v52 = objc_msgSend_copy(v19, v50, v51);
    v54 = objc_msgSend_initWithChatGuid_displayName_participants_(v46, v53, v49, v42, v52);
  }

  else
  {
    v54 = 0;
  }

  v55 = *MEMORY[0x1E69E9840];

  return v54;
}

id IMSPIGetContactsByChatGUID(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = v1;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Request to get contacts used by existing chatGUID: %@", &v20, 0xCu);
    }
  }

  v3 = IMOSLoggingEnabled();
  if (v3)
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Setting the chat cap only", &v20, 2u);
    }
  }

  sub_1A8306F6C(v3, v4, v5);
  v9 = objc_msgSend_sharedRegistry(IMChatRegistry, v7, v8);
  v11 = objc_msgSend_existingChatWithGUID_(v9, v10, v1);

  v12 = IMOSLoggingEnabled();
  if (v11)
  {
    if (v12)
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v20 = 138412546;
        v21 = v1;
        v22 = 2112;
        v23 = v11;
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "For existing chatGUID: %@, found chat: %@", &v20, 0x16u);
      }
    }

    v12 = sub_1A83D8438(v11);
    v16 = v12;
  }

  else
  {
    if (v12)
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v20 = 138412290;
        v21 = v1;
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Did not find existing chat for chatGUID: %@", &v20, 0xCu);
      }
    }

    v16 = 0;
  }

  sub_1A8307074(v12, v13, v14);

  v18 = *MEMORY[0x1E69E9840];

  return v16;
}

id IMSPIGetAllChatsContainingParticipantWithHandle(void *a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v35 = a1;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v43 = v35;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Request to get all chat guid, display name and all participatns for  %@", buf, 0xCu);
    }
  }

  v4 = objc_msgSend_array(MEMORY[0x1E695DF70], v1, v2, v35);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = IMDChatGetChatsThatContainRecipient();
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v38, v46, 16);
  if (v7)
  {
    v8 = *v39;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v38 + 1) + 8 * i);
        v11 = objc_msgSend_valueForKey_(v10, v6, @"handles");
        v14 = objc_msgSend_array(MEMORY[0x1E695DF70], v12, v13);
        if (objc_msgSend_count(v11, v15, v16))
        {
          v18 = 0;
          do
          {
            v19 = objc_msgSend_objectAtIndex_(v11, v17, v18);
            v21 = sub_1A8262D14(v19);
            if (v21)
            {
              objc_msgSend_addObject_(v14, v20, v21);
            }

            ++v18;
          }

          while (objc_msgSend_count(v11, v22, v23) > v18);
        }

        v24 = [IMSPISuggestionsObject alloc];
        v26 = objc_msgSend_valueForKey_(v10, v25, @"chatGUID");
        v28 = objc_msgSend_valueForKey_(v10, v27, @"displayName");
        v30 = objc_msgSend_initWithChatGuid_displayName_participants_(v24, v29, v26, v28, v14);

        objc_msgSend_addObject_(v4, v31, v30);
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v38, v46, 16);
    }

    while (v7);
  }

  if (IMOSLoggingEnabled())
  {
    v32 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v43 = v36;
      v44 = 2112;
      v45 = obj;
      _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_INFO, "Results for chats with participant %@ = %@", buf, 0x16u);
    }
  }

  v33 = *MEMORY[0x1E69E9840];

  return v4;
}

id IMSPIGetMostRecentIMEventForContactHandlesAndLocalLabelIDs(void *a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v45 = 138412546;
      v46 = v3;
      v47 = 2112;
      v48 = v4;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Request to get message date and last addressed labelID from chat ids %@ and last addressed handles %@", &v45, 0x16u);
    }
  }

  v7 = objc_msgSend___imSetByApplyingBlock_(v3, v5, &unk_1F1B6F9C0);
  v10 = objc_msgSend_allObjects(v7, v8, v9);
  v13 = objc_msgSend_allObjects(v4, v11, v12);
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v45 = 138412546;
      v46 = v10;
      v47 = 2112;
      v48 = v13;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Searching with canonicalized chat ids %@ and last addressed labelIDs %@", &v45, 0x16u);
    }
  }

  if (objc_msgSend_count(v10, v14, v15) && objc_msgSend_count(v13, v17, v18))
  {
    MessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs = IMDChatGetMessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs();
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v45 = 138412290;
        v46 = MessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs;
        _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "Got results %@", &v45, 0xCu);
      }
    }

    v22 = objc_msgSend_objectForKeyedSubscript_(MessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs, v20, @"labelID");
    v25 = objc_msgSend_length(v22, v23, v24) == 0;

    if (v25)
    {
      v37 = 0;
    }

    else
    {
      v27 = objc_msgSend_objectForKeyedSubscript_(MessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs, v26, @"date");

      if (v27)
      {
        v29 = objc_msgSend_objectForKeyedSubscript_(MessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs, v28, @"date");
        v32 = objc_msgSend_integerValue(v29, v30, v31);

        v35 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v33, v34, v32);
      }

      else
      {
        v35 = 0;
      }

      v38 = [IMSPIRecentEvent alloc];
      v40 = objc_msgSend_objectForKeyedSubscript_(MessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs, v39, @"labelID");
      v37 = objc_msgSend_initWithLabelID_date_(v38, v41, v40, v35);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        LOWORD(v45) = 0;
        _os_log_impl(&dword_1A823F000, v36, OS_LOG_TYPE_INFO, "Could not retrieve last address labelID/last message date because received invalid arguments!", &v45, 2u);
      }
    }

    v37 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v42 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v45 = 138412290;
      v46 = v37;
      _os_log_impl(&dword_1A823F000, v42, OS_LOG_TYPE_INFO, "Returning recent event %@", &v45, 0xCu);
    }
  }

  v43 = *MEMORY[0x1E69E9840];

  return v37;
}

id sub_1A83D90E0(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!v2)
  {
    v5 = 0;
    goto LABEL_10;
  }

  v3 = IMStripFormattingFromAddress();

  if (MEMORY[0x1AC56C3C0](v3))
  {
    v4 = IMInternationalForPhoneNumberWithOptions();
  }

  else
  {
    if (!IMStringIsEmail())
    {
      v5 = 0;
      goto LABEL_9;
    }

    v4 = objc_msgSend_lowercaseString(v3, v6, v7);
  }

  v5 = v4;
LABEL_9:

LABEL_10:

  return v5;
}

id IMSPIGetMostRecentIMEventForContactHandlesAndLocalPhoneHandles(void *a1, void *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v47 = 138412546;
      v48 = v3;
      v49 = 2112;
      v50 = v4;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Request to get message date and last addressed handle from chat ids %@ and last addressed handles %@", &v47, 0x16u);
    }
  }

  v7 = objc_msgSend___imSetByApplyingBlock_(v3, v5, &unk_1F1B6F9E0);
  v9 = objc_msgSend___imSetByApplyingBlock_(v4, v8, &unk_1F1B6FA00);
  v12 = objc_msgSend_allObjects(v7, v10, v11);
  v15 = objc_msgSend_allObjects(v9, v13, v14);
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v47 = 138412546;
      v48 = v12;
      v49 = 2112;
      v50 = v15;
      _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Searching with canonicalized chat ids %@ and last addressed handles %@", &v47, 0x16u);
    }
  }

  if (objc_msgSend_count(v12, v16, v17) && objc_msgSend_count(v15, v19, v20))
  {
    MessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles = IMDChatGetMessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles();
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v47 = 138412290;
        v48 = MessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles;
        _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "Got results %@", &v47, 0xCu);
      }
    }

    v24 = objc_msgSend_objectForKeyedSubscript_(MessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles, v22, @"handle");
    v27 = objc_msgSend_length(v24, v25, v26) == 0;

    if (v27)
    {
      v39 = 0;
    }

    else
    {
      v29 = objc_msgSend_objectForKeyedSubscript_(MessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles, v28, @"date");

      if (v29)
      {
        v31 = objc_msgSend_objectForKeyedSubscript_(MessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles, v30, @"date");
        v34 = objc_msgSend_integerValue(v31, v32, v33);

        v37 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v35, v36, v34);
      }

      else
      {
        v37 = 0;
      }

      v40 = [IMSPIRecentEvent alloc];
      v42 = objc_msgSend_objectForKeyedSubscript_(MessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles, v41, @"handle");
      v39 = objc_msgSend_initWithHandle_date_(v40, v43, v42, v37);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        LOWORD(v47) = 0;
        _os_log_impl(&dword_1A823F000, v38, OS_LOG_TYPE_INFO, "Could not retrieve last address handle/last message date because received invalid arguments!", &v47, 2u);
      }
    }

    v39 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v44 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v47 = 138412290;
      v48 = v39;
      _os_log_impl(&dword_1A823F000, v44, OS_LOG_TYPE_INFO, "Returning recent event %@", &v47, 0xCu);
    }
  }

  v45 = *MEMORY[0x1E69E9840];

  return v39;
}

id sub_1A83D95F8(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!v2)
  {
    v5 = 0;
    goto LABEL_10;
  }

  v3 = IMStripFormattingFromAddress();

  if (MEMORY[0x1AC56C3C0](v3))
  {
    v4 = IMInternationalForPhoneNumberWithOptions();
  }

  else
  {
    if (!IMStringIsEmail())
    {
      v5 = 0;
      goto LABEL_9;
    }

    v4 = objc_msgSend_lowercaseString(v3, v6, v7);
  }

  v5 = v4;
LABEL_9:

LABEL_10:

  return v5;
}

id sub_1A83D96AC(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!v2)
  {
    v5 = 0;
    goto LABEL_10;
  }

  v3 = IMStripFormattingFromAddress();

  if (MEMORY[0x1AC56C3C0](v3))
  {
    v4 = IMInternationalForPhoneNumberWithOptions();
  }

  else
  {
    if (!IMStringIsEmail())
    {
      v5 = 0;
      goto LABEL_9;
    }

    v4 = objc_msgSend_lowercaseString(v3, v6, v7);
  }

  v5 = v4;
LABEL_9:

LABEL_10:

  return v5;
}

BOOL IMSPIMarkSPIMessagesAsReadWithCompletion(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v7 = objc_msgSend_count(v3, v5, v6);
  if (v7)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1A83D98C0;
    v10[3] = &unk_1E7810230;
    v12 = v4;
    v11 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Empty messages to be marked as read, failing", buf, 2u);
      }
    }

    if (v4)
    {
      v4[2](v4);
    }
  }

  return v7 != 0;
}

void sub_1A83D98C0(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    v2 = dispatch_group_create();
  }

  else
  {
    v2 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v39 = v4;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Marking messages as read: %@", buf, 0xCu);
    }
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v30 = a1;
  v5 = *(a1 + 32);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v33, v37, 16);
  if (v7)
  {
    v8 = *v34;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v13 = objc_msgSend_guid(v10, v11, v12);
          v16 = objc_msgSend_length(v13, v14, v15);
        }

        else
        {
          v13 = 0;
          v16 = objc_msgSend_length(0, v11, v12);
        }

        v17 = v16 == 0;
        v18 = IMOSLoggingEnabled();
        if (v17)
        {
          if (v18)
          {
            v27 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v39 = v10;
              _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_INFO, "Missing message guid for message: %@, not marking as read", buf, 0xCu);
            }
          }
        }

        else
        {
          if (v18)
          {
            v21 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v39 = v13;
              _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, " => Message guid: %@", buf, 0xCu);
            }
          }

          if (v2)
          {
            dispatch_group_enter(v2);
          }

          v22 = objc_msgSend_sharedController(IMDaemonController, v19, v20);
          v25 = objc_msgSend_remoteDaemon(v22, v23, v24);
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = sub_1A83D9C64;
          v31[3] = &unk_1E780FE18;
          v32 = v2;
          objc_msgSend_markMessageAsReadWithGUID_callerOrigin_reply_(v25, v26, v13, 1, v31);
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v28, &v33, v37, 16);
    }

    while (v7);
  }

  if (v2)
  {
    dispatch_group_notify(v2, MEMORY[0x1E69E96A0], *(v30 + 40));
  }

  v29 = *MEMORY[0x1E69E9840];
}

void sub_1A83D9C64(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = @"NO";
      if (a2)
      {
        v5 = @"YES";
      }

      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Marked message as read: %@", &v8, 0xCu);
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    dispatch_group_leave(v6);
  }

  v7 = *MEMORY[0x1E69E9840];
}

BOOL IMSPIMarkSPIMessagesAsPlayed(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_count(v1, v2, v3);
  if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83D9E8C;
    block[3] = &unk_1E780FCB0;
    v8 = v1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Empty messages to be marked as played, failing", buf, 2u);
    }
  }

  return v4 != 0;
}

void sub_1A83D9E8C(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      *buf = 138412290;
      v37 = v3;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Marking messages as played: %@", buf, 0xCu);
    }
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = *(a1 + 32);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v31, v35, 16);
  if (v6)
  {
    v8 = *v32;
    *&v7 = 138412290;
    v30 = v7;
    do
    {
      v9 = 0;
      do
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v31 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v13 = objc_msgSend_guid(v10, v11, v12);
          v16 = objc_msgSend_length(v13, v14, v15, v30, v31);
        }

        else
        {
          v13 = 0;
          v16 = objc_msgSend_length(0, v11, v12, v30, v31);
        }

        v17 = v16 == 0;
        v18 = IMOSLoggingEnabled();
        if (v17)
        {
          if (v18)
          {
            v27 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              *buf = v30;
              v37 = v10;
              _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_INFO, "Missing message guid for message: %@, not marking as read", buf, 0xCu);
            }
          }
        }

        else
        {
          if (v18)
          {
            v21 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              *buf = v30;
              v37 = v13;
              _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, " => Message guid: %@", buf, 0xCu);
            }
          }

          v22 = objc_msgSend_sharedController(IMDaemonController, v19, v20);
          v25 = objc_msgSend_remoteDaemon(v22, v23, v24);
          objc_msgSend_markPlayedForMessageGUID_(v25, v26, v13);
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v28, &v31, v35, 16);
    }

    while (v6);
  }

  v29 = *MEMORY[0x1E69E9840];
}