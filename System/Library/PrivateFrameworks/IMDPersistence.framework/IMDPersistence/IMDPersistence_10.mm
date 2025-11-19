void __XPCServerIMDMessageRecordCopyMessagesWithReplyToGUIDs(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF4418;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BF4418(uint64_t a1, const char *a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = IMDMessageRecordCopyMessagesWithReplyToGUIDs(*(a1 + 32), a2, a3);
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v19 = 138412290;
      v20 = v6;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Copy messages with reply to guid %@", &v19, 0xCu);
    }
  }

  if (v4)
  {
    v9 = xpc_array_create(0, 0);
    if (v9)
    {
      v10 = objc_msgSend_count(v4, v7, v8);
      if (v10 >= 1)
      {
        v12 = 0;
        v13 = v10 & 0x7FFFFFFF;
        do
        {
          v14 = objc_msgSend_objectAtIndex_(v4, v11, v12);
          v15 = xpc_dictionary_create(0, 0, 0);
          if (v15)
          {
            _IMDMessageRecordBulkCopyXPCDictionary(v14, v15, 1, 0);
            xpc_array_append_value(v9, v15);
            xpc_release(v15);
          }

          ++v12;
        }

        while (v13 != v12);
      }

      v16 = *(a1 + 40);
      if (v16)
      {
        xpc_dictionary_set_value(v16, "array_result", v9);
      }

      xpc_release(v9);
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))();
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordCopyNewestUnreadIncomingMessagesToLimitAfterRowID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BF464C;
  v8[3] = &unk_1E7CBD488;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v8, v6, v7);
}

uint64_t sub_1B7BF464C(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyNewestUnreadIncomingMessagesToLimitAfterRowID(a1[6], a1[7]);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = a1[6];
      v7 = a1[7];
      v20 = 134218496;
      v21 = v7;
      v22 = 2048;
      v23 = v6;
      v24 = 2048;
      v25 = objc_msgSend_count(v2, v4, v5);
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copy newest unread incoming messages up to rowID: %lld  limit: %lld   (Result: %lu)", &v20, 0x20u);
    }
  }

  v10 = xpc_array_create(0, 0);
  if (v10)
  {
    v11 = objc_msgSend_count(v2, v8, v9);
    if (v11 >= 1)
    {
      v13 = 0;
      v14 = v11 & 0x7FFFFFFF;
      do
      {
        v15 = objc_msgSend_objectAtIndex_(v2, v12, v13);
        v16 = xpc_dictionary_create(0, 0, 0);
        if (v16)
        {
          _IMDMessageRecordBulkCopyXPCDictionary(v15, v16, 1, 0);
          xpc_array_append_value(v10, v16);
          xpc_release(v16);
        }

        ++v13;
      }

      while (v14 != v13);
    }

    v17 = a1[4];
    if (v17)
    {
      xpc_dictionary_set_value(v17, "array_result", v10);
    }

    xpc_release(v10);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = a1[5];
  if (result)
  {
    result = (*(result + 16))();
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordCopyNewestFailedOutgoingMessagesToLimitAfterDate_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BF48A4;
  v8[3] = &unk_1E7CBD488;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v8, v6, v7);
}

uint64_t sub_1B7BF48A4(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyNewestFailedOutgoingMessagesToLimitAfterDate(a1[6], a1[7]);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = a1[6];
      v7 = a1[7];
      v20 = 134218496;
      v21 = v7;
      v22 = 2048;
      v23 = v6;
      v24 = 2048;
      v25 = objc_msgSend_count(v2, v4, v5);
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copy newest failed outgoing messages up to date: %lld  limit: %lld   (Result: %lu)", &v20, 0x20u);
    }
  }

  v10 = xpc_array_create(0, 0);
  if (v10)
  {
    v11 = objc_msgSend_count(v2, v8, v9);
    if (v11 >= 1)
    {
      v13 = 0;
      v14 = v11 & 0x7FFFFFFF;
      do
      {
        v15 = objc_msgSend_objectAtIndex_(v2, v12, v13);
        v16 = xpc_dictionary_create(0, 0, 0);
        if (v16)
        {
          _IMDMessageRecordBulkCopyXPCDictionary(v15, v16, 1, 0);
          xpc_array_append_value(v10, v16);
          xpc_release(v16);
        }

        ++v13;
      }

      while (v14 != v13);
    }

    v17 = a1[4];
    if (v17)
    {
      xpc_dictionary_set_value(v17, "array_result", v10);
    }

    xpc_release(v10);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = a1[5];
  if (result)
  {
    result = (*(result + 16))();
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordCopyMostRecentUseageOfAddresses_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF4AFC;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BF4AFC(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyMostRecentUseageOfAddresses(*(a1 + 32));
  v3 = xpc_array_create(0, 0);
  if (v3)
  {
    v6 = v3;
    v7 = objc_msgSend_count(v2, v4, v5);
    if (v7 >= 1)
    {
      v9 = 0;
      v10 = v7 & 0x7FFFFFFF;
      do
      {
        v11 = objc_msgSend_objectAtIndex_(v2, v8, v9);
        v12 = xpc_dictionary_create(0, 0, 0);
        if (v12)
        {
          v14 = v12;
          v15 = objc_msgSend_UTF8String(v11, v8, v13);
          xpc_array_set_string(v6, 0xFFFFFFFFFFFFFFFFLL, v15);
          xpc_release(v14);
        }

        ++v9;
      }

      while (v10 != v9);
    }

    v16 = *(a1 + 40);
    if (v16)
    {
      xpc_dictionary_set_value(v16, "array_result", v6);
    }

    xpc_release(v6);
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 32);
      v21 = 138412546;
      v22 = v18;
      v23 = 2112;
      v24 = v2;
      _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "Copy most recent usage of addresses: %@   result: %@", &v21, 0x16u);
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))();
  }

  v20 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordCreate_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int128 a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __int128 a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, __int128 a43, uint64_t a44, uint64_t a45, __int128 a46, uint64_t a47, __int128 a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = sub_1B7BF4E7C;
  v54[3] = &unk_1E7CBD690;
  v54[4] = a12;
  v54[5] = a14;
  v54[6] = a31;
  v54[7] = a5;
  v54[8] = a13;
  v54[9] = a17;
  v54[10] = a39;
  v77 = a6;
  v78 = a20;
  v79 = a7;
  v80 = a8;
  v82 = a10;
  v83 = a11;
  v57 = a21;
  v58 = a24;
  v85 = a23;
  v86 = a25;
  v59 = a27;
  v87 = a26;
  v88 = a28;
  v89 = a29;
  v90 = a30;
  v60 = a32;
  v61 = a33;
  v62 = a35;
  v91 = a34;
  v92 = a36;
  v64 = a38;
  v65 = a40;
  v66 = a41;
  v68 = a44;
  v69 = a45;
  v94 = a46;
  v93 = a42;
  v95 = a47;
  v96 = a50;
  v97 = a51;
  v71 = a49;
  v72 = a52;
  v73 = a18;
  v74 = a19;
  v75 = a3;
  v76 = a4;
  v81 = a9;
  v55 = a15;
  v56 = a16;
  v84 = a22;
  v63 = a37;
  v67 = a43;
  v70 = a48;
  v52 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v54, v52, v53);
}

uint64_t sub_1B7BF4E7C(uint64_t a1, const char *a2, uint64_t a3)
{
  v78 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = objc_msgSend_unsignedLongLongValue(v4, a2, a3);
  v7 = *(a1 + 48);
  if ((v6 & 0x100000) != 0)
  {
    v73 = v4;
    goto LABEL_24;
  }

  v8 = *(a1 + 56);
  v9 = *(a1 + 40);
  v10 = JWDecodeCodableObjectWithStandardAllowlist();
  v13 = objc_msgSend_mutableCopy(v10, v11, v12);
  if (!objc_msgSend_length(v8, v14, v15))
  {
    objc_msgSend_string(v13, v16, v17);
  }

  if (objc_msgSend_supportsDataDetectors(MEMORY[0x1E69A8020], v16, v17) && objc_msgSend_length(v13, v18, v19) < *MEMORY[0x1E69A6878])
  {
    v74 = v7;
    v21 = *(a1 + 64);
    v22 = *(a1 + 72);
    objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v18, v20, *(a1 + 304));
    v23 = *(a1 + 80);
    if (IMDDScanAttributedStringWithExtendedContext())
    {
      v25 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v24, v6 | 0x110000);
      v5 = JWEncodeCodableObject();
    }

    else
    {
      v25 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v24, v6 | 0x100000);
    }

    v7 = v74;
    if ((v6 & 4) == 0)
    {
LABEL_13:
      if (objc_msgSend_isEqualToString_(*(a1 + 48), v26, *MEMORY[0x1E69A68F0]))
      {
        v27 = objc_alloc_init(MEMORY[0x1E69A81B0]);
        OTCFromMessageBody_sender_guid = objc_msgSend_createOTCFromMessageBody_sender_guid_(v27, v28, v13, *(a1 + 72), *(a1 + 64));
        if (OTCFromMessageBody_sender_guid)
        {
          if (IMOSLoggingEnabled())
          {
            v30 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              v31 = *(a1 + 64);
              *buf = 138412290;
              v77 = v31;
              _os_log_impl(&dword_1B7AD5000, v30, OS_LOG_TYPE_INFO, "Creating chat bot message containing OTC guid: %@", buf, 0xCu);
            }
          }

          v7 = 0;
        }

        if (v27)
        {
        }

        if (OTCFromMessageBody_sender_guid)
        {
        }
      }
    }
  }

  else
  {
    v25 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v18, v6 | 0x100000);
    if ((v6 & 4) == 0)
    {
      goto LABEL_13;
    }
  }

  v73 = v25;
LABEL_24:
  v32 = *(a1 + 88);
  v33 = *(a1 + 120);
  v34 = *(a1 + 368);
  v35 = *(a1 + 384);
  v36 = IMDMessageRecordCreate(0, *(a1 + 312), *(a1 + 56), *(a1 + 304), *(a1 + 320), *(a1 + 328), *(a1 + 336), *(a1 + 344), *(a1 + 352), *(a1 + 360), v73, *(a1 + 64), v5, v32, *(&v32 + 1), *(a1 + 104), *(a1 + 112), 0, 0, 0, v33, *(&v33 + 1), v34, *(&v34 + 1), v35, *(&v35 + 1), *(a1 + 400), *(a1 + 136), *(a1 + 408), *(a1 + 416), *(a1 + 424), v7, *(a1 + 144), *(a1 + 152), *(a1 + 432), *(a1 + 160), *(a1 + 440), *(a1 + 168), *(a1 + 176), *(a1 + 184), 0, *(a1 + 192), *(a1 + 200), *(a1 + 448), *(a1 + 208), *(a1 + 216), *(a1 + 224), *(a1 + 232), *(a1 + 456), *(a1 + 464), *(a1 + 472), *(a1 + 240), *(a1 + 248), *(a1 + 256), *(a1 + 480), *(a1 + 488), *(a1 + 264));
  if (v36)
  {
    v37 = *(a1 + 72);
    if (v37)
    {
      v38 = IMDHandleRecordCopyHandleForIDOnService(v37, *(a1 + 88));
      if (v38)
      {
        goto LABEL_30;
      }

      v39 = *(a1 + 72);
      v40 = *(a1 + 272);
      if (!v40)
      {
        v40 = IMCountryCodeForIncomingTextMessage();
      }

      v38 = IMDHandleRecordCreate(*MEMORY[0x1E695E480], v39, v40, *(a1 + 88), *(a1 + 280), 0);
      if (v38)
      {
LABEL_30:
        IMDMessageRecordSetHandle(v36, v38);
        IMDSMSRecordStoreInvalidateCaches();
        CFRelease(v38);
      }
    }

    v41 = *(a1 + 120);
    if (v41)
    {
      v42 = IMDHandleRecordCopyHandleForIDOnService(v41, *(a1 + 88));
      if (v42)
      {
        goto LABEL_36;
      }

      v43 = *(a1 + 120);
      v44 = *(a1 + 272);
      if (!v44)
      {
        v44 = IMCountryCodeForIncomingTextMessage();
      }

      v42 = IMDHandleRecordCreate(*MEMORY[0x1E695E480], v43, v44, *(a1 + 88), *(a1 + 280), 0);
      if (v42)
      {
LABEL_36:
        IMDMessageRecordSetOtherHandle(v36, v42);
        IMDSMSRecordStoreInvalidateCaches();
        CFRelease(v42);
      }
    }
  }

  v45 = *MEMORY[0x1E69A6A38];
  v46 = IMBalloonExtensionIDWithSuffix();
  if (objc_msgSend_isEqualToString_(v7, v47, v46))
  {
    v48 = *(a1 + 144);
    v49 = *(a1 + 64);
    IMProcessPeerPaymentMessageWithPayloadData();
  }

  else
  {
    v50 = *MEMORY[0x1E69A6A08];
    v51 = IMBalloonExtensionIDWithSuffix();
    if (objc_msgSend_isEqualToString_(v7, v52, v51))
    {
      v54 = *(a1 + 144);
      IMProcessPhotosExtensionMessageWithPayloadData();
    }

    else if (objc_msgSend_isEqualToString_(v7, v53, *MEMORY[0x1E69A6A18]))
    {
      IMProcessRichLinkMessageWithBody();
    }

    else
    {
      v55 = *MEMORY[0x1E69A69C8];
      v56 = IMBalloonExtensionIDWithSuffix();
      if (objc_msgSend_isEqualToString_(v7, v57, v56))
      {
        if (*(a1 + 72))
        {
          v75 = *(a1 + 72);
          v59 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v58, &v75, 1);
          v60 = IMDCNRecordIDForAliases(v59);
          v62 = objc_msgSend_objectForKey_(v60, v61, *(a1 + 72));
          objc_msgSend_isEqualToString_(v62, v63, @"__kIMDCNPersonNotFound");
          v64 = *(a1 + 72);
        }

        v65 = *(a1 + 144);
        IMProcessGameCenterMessageWithPayloadData();
      }
    }
  }

  v66 = IMOSLoggingEnabled();
  if (v36)
  {
    if (v66)
    {
      v67 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        v68 = *(a1 + 64);
        *buf = 138412290;
        v77 = v68;
        _os_log_impl(&dword_1B7AD5000, v67, OS_LOG_TYPE_INFO, "Created message with guid: %@", buf, 0xCu);
      }
    }

    _IMDMessageRecordBulkCopyXPCDictionary(v36, *(a1 + 288), 0, 0);
    CFRelease(v36);
  }

  else if (v66)
  {
    v69 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
    {
      v70 = *(a1 + 64);
      *buf = 138412290;
      v77 = v70;
      _os_log_impl(&dword_1B7AD5000, v69, OS_LOG_TYPE_INFO, "Failed to create message with guid: %@", buf, 0xCu);
    }
  }

  result = *(a1 + 296);
  if (result)
  {
    result = (*(result + 16))();
  }

  v72 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDChatRecordCopyChatForMessageGUID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF5580;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BF5580(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = IMDChatRecordCopyChatForMessageGUID(*(a1 + 32));
  v3 = IMOSLoggingEnabled();
  if (v2)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        v10 = 138412546;
        v11 = v2;
        v12 = 2112;
        v13 = v5;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Found chat: %@  for message GUID: %@", &v10, 0x16u);
      }
    }

    _IMDChatRecordBulkCopyXPCDictionary(v2, *(a1 + 40), 0, 0, 0, 1);
    CFRelease(v2);
  }

  else if (v3)
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Tried to find chat from message GUID: %@, but no chat was found", &v10, 0xCu);
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))();
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordCopyAttachments_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF5788;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  IMDPersistencePerformBlock(block, 1, a3);
}

uint64_t sub_1B7BF5788(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCreateFromRecordID(0, a1[6]);
  if (v2)
  {
    v3 = v2;
    v4 = IMDMessageRecordCopyAttachments(v2);
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v8 = a1[6];
        v23 = 134218240;
        v24 = v8;
        v25 = 2048;
        v26 = objc_msgSend_count(v4, v6, v7);
        _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Copy attachments from message ID: %lld  (Results: %lu)", &v23, 0x16u);
      }
    }

    v11 = xpc_array_create(0, 0);
    if (v11)
    {
      v12 = objc_msgSend_count(v4, v9, v10);
      if (v12 >= 1)
      {
        v14 = 0;
        v15 = v12 & 0x7FFFFFFF;
        do
        {
          v16 = objc_msgSend_objectAtIndex_(v4, v13, v14);
          v17 = xpc_dictionary_create(0, 0, 0);
          if (v17)
          {
            _IMDAttachmentRecordBulkCopyXPCDictionary(v16, v17, 1);
            xpc_array_append_value(v11, v17);
            xpc_release(v17);
          }

          ++v14;
        }

        while (v15 != v14);
      }

      v18 = a1[4];
      if (v18)
      {
        xpc_dictionary_set_value(v18, "array_result", v11);
      }

      xpc_release(v11);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    CFRelease(v3);
  }

  else if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = a1[6];
      v23 = 134217984;
      v24 = v20;
      _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, "Tried to copy attachments from message ID: %lld, but no attachments found", &v23, 0xCu);
    }
  }

  result = a1[5];
  if (result)
  {
    result = (*(result + 16))();
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordSetHandle_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF5A58;
  block[3] = &unk_1E7CBD438;
  block[5] = a6;
  block[6] = a5;
  block[4] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v6, v7);
}

uint64_t sub_1B7BF5A58(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = IMDHandleRecordCreateFromRecordID(0, a1[5]);
  v3 = IMDMessageRecordCreateFromRecordIDWithLock(0, a1[6], 1);
  v4 = IMOSLoggingEnabled();
  if (v3)
  {
    v5 = v2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    if (v4)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = a1[5];
        v11 = a1[6];
        v14 = 134218240;
        v15 = v10;
        v16 = 2048;
        v17 = v11;
        _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "Setting handle ID: %lld  on message ID: %lld", &v14, 0x16u);
      }
    }

    IMDMessageRecordSetHandle(v3, v2);
LABEL_15:
    CFRelease(v3);
    goto LABEL_16;
  }

  if (v4)
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = a1[5];
      v8 = a1[6];
      v14 = 134218754;
      v15 = v7;
      v16 = 2048;
      v17 = v8;
      v18 = 2112;
      v19 = v3;
      v20 = 2112;
      v21 = v2;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Failed to set handle (%lld) on message (%lld)   (Message: %@  Handle: %@)", &v14, 0x2Au);
    }
  }

  if (v3)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (v2)
  {
    CFRelease(v2);
  }

  IMDSMSRecordStoreInvalidateCaches();
  result = a1[4];
  if (result)
  {
    result = (*(result + 16))();
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordCopyHandle_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF5CB0;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BF5CB0(uint64_t *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCreateFromRecordIDWithLock(0, a1[6], 1);
  if (v2)
  {
    v5 = v2;
    v6 = IMDMessageRecordCopyHandle(v2, v3, v4);
    v7 = IMOSLoggingEnabled();
    if (v6)
    {
      if (v7)
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = a1[6];
          v16 = 138412546;
          v17 = v6;
          v18 = 2048;
          v19 = v9;
          _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Copied handle: %@  for message ID: %lld", &v16, 0x16u);
        }
      }

      _IMDHandleRecordBulkCopyXPCDictionary(v6, a1[4], 1);
      CFRelease(v6);
    }

    else if (v7)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = a1[6];
        v16 = 134217984;
        v17 = v13;
        _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "Tried to copy handle from Message ID: %lld, but no handle was found", &v16, 0xCu);
      }
    }

    CFRelease(v5);
  }

  else if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = a1[6];
      v16 = 134217984;
      v17 = v11;
      _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Tried to copy handle from Message ID: %lld, but no message was found", &v16, 0xCu);
    }
  }

  result = a1[5];
  if (result)
  {
    result = (*(result + 16))();
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordCopyOtherHandle_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF5F44;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BF5F44(uint64_t *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCreateFromRecordIDWithLock(0, a1[6], 1);
  if (v2)
  {
    v5 = v2;
    v6 = IMDMessageRecordCopyOtherHandle(v2, v3, v4);
    v7 = IMOSLoggingEnabled();
    if (v6)
    {
      if (v7)
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = a1[6];
          v16 = 138412546;
          v17 = v6;
          v18 = 2048;
          v19 = v9;
          _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Copied other handle: %@  for message ID: %lld", &v16, 0x16u);
        }
      }

      _IMDHandleRecordBulkCopyXPCDictionary(v6, a1[4], 1);
      CFRelease(v6);
    }

    else if (v7)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = a1[6];
        v16 = 134217984;
        v17 = v13;
        _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "Tried to copy other handle from Message ID: %lld, but no handle was found", &v16, 0xCu);
      }
    }

    CFRelease(v5);
  }

  else if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = a1[6];
      v16 = 134217984;
      v17 = v11;
      _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Tried to copy other handle from Message ID: %lld, but no message was found", &v16, 0xCu);
    }
  }

  result = a1[5];
  if (result)
  {
    result = (*(result + 16))();
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordBulkUpdate_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, __int128 a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15, __int128 a16, uint64_t a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, __int128 a24, uint64_t a25, __int128 a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 a31, __int128 a32, uint64_t a33, uint64_t a34, __int128 a35, uint64_t a36, uint64_t a37, __int128 a38, uint64_t a39, __int128 a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = sub_1B7BF62F4;
  v46[3] = &unk_1E7CBD6B8;
  v66 = a5;
  v67 = a6;
  v46[4] = a7;
  v69 = a9;
  v68 = a8;
  v70 = a10;
  v50 = a15;
  v72 = a16;
  v71 = a14;
  v73 = a17;
  v51 = a20;
  v75 = a19;
  v76 = a21;
  v52 = a23;
  v78 = a24;
  v77 = a22;
  v79 = a25;
  v80 = a28;
  v54 = a27;
  v55 = a29;
  v81 = a30;
  v58 = a33;
  v60 = a36;
  v83 = a38;
  v82 = a34;
  v84 = a39;
  v59 = a35;
  v62 = a40;
  v61 = a37;
  v63 = a41;
  v85 = a42;
  v86 = a43;
  v64 = a44;
  v65 = a4;
  v47 = a11;
  v48 = a12;
  v49 = a13;
  v74 = a18;
  v53 = a26;
  v56 = a31;
  v57 = a32;
  v44 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v46, v44, v45);
}

uint64_t sub_1B7BF62F4(uint64_t a1)
{
  v2 = IMDMessageRecordCreateFromRecordIDWithLock(0, *(a1 + 256), 1);
  if (v2)
  {
    v8 = *(a1 + 296);
    v3 = *(a1 + 456);
    v7 = *(a1 + 112);
    v4 = v2;
    IMDMessageRecordBulkUpdate(v2, *(a1 + 264), *(a1 + 32), *(a1 + 272), *(a1 + 280), *(a1 + 288), v8, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 304), *(a1 + 88), *(a1 + 312), *(a1 + 320), *(a1 + 328), *(a1 + 96), *(a1 + 336), *(a1 + 344), *(a1 + 352), *(a1 + 360), *(a1 + 368), *(a1 + 104), *(a1 + 376), *(a1 + 384), *(a1 + 392), v7, *(&v7 + 1), *(a1 + 128), *(a1 + 400), *(a1 + 136), *(a1 + 408), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 416), *(a1 + 184), *(a1 + 192), *(a1 + 200), *(a1 + 208), *(a1 + 424), *(a1 + 432), *(a1 + 440), *(a1 + 216), *(a1 + 224), *(a1 + 232), *(a1 + 448), v3, *(a1 + 240));
    CFRelease(v4);
  }

  result = *(a1 + 248);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void __XPCServerIMDMessagePTaskInsertRow_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF655C;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a6;
  block[4] = a5;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v6, v7);
}

uint64_t sub_1B7BF655C(uint64_t *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = a1[4];
      v4 = a1[6];
      v7 = 138412546;
      v8 = v3;
      v9 = 2048;
      v10 = v4;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Inserting Message Processing Task with (guid: %@, taskflags: %ld)", &v7, 0x16u);
    }
  }

  IMDMessagePTaskInsertRow(a1[4], a1[6]);
  result = a1[5];
  if (result)
  {
    result = (*(result + 16))();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessagePTaskSelectWithLimit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF66D0;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BF66D0(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = IMDMessagePTaskSelectWithLimit(a1[6]);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = a1[6];
      *buf = 134218240;
      v27 = v6;
      v28 = 2048;
      v29 = objc_msgSend_count(v2, v4, v5);
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Coping first %ld Message Processing Task (Results: %ld)", buf, 0x16u);
    }
  }

  v9 = xpc_array_create(0, 0);
  if (v9)
  {
    if (objc_msgSend_count(v2, v7, v8))
    {
      v11 = 0;
      do
      {
        v12 = objc_msgSend_objectAtIndex_(v2, v10, v11);
        v15 = xpc_dictionary_create(0, 0, 0);
        if (v15)
        {
          if (objc_msgSend_objectForKeyedSubscript_(v12, v13, @"guid"))
          {
            v24 = objc_msgSend_objectForKeyedSubscript_(v12, v16, @"guid");
            v25 = 0;
            IMInsertNSStringsToXPCDictionary();
          }

          if (objc_msgSend_objectForKeyedSubscript_(v12, v16, @"task_flags", v24, v25))
          {
            v18 = objc_msgSend_objectForKeyedSubscript_(v12, v17, @"task_flags");
            v24 = objc_msgSend_intValue(v18, v19, v20);
            v25 = 0;
            IMInsertIntsToXPCDictionary();
          }

          xpc_array_append_value(v9, v15);
          xpc_release(v15);
        }

        ++v11;
      }

      while (v11 < objc_msgSend_count(v2, v13, v14, v24, v25));
    }

    v21 = a1[4];
    if (v21)
    {
      xpc_dictionary_set_value(v21, "array_result", v9);
    }

    xpc_release(v9);
  }

  result = a1[5];
  if (result)
  {
    result = (*(result + 16))();
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessagePTaskUpdateTaskFlagsForGUID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF697C;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a6;
  block[4] = a5;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v6, v7);
}

uint64_t sub_1B7BF697C(uint64_t *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = a1[6];
      v4 = a1[4];
      v7 = 134218242;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Updating task_flags to %ld for Message Processing Task with guid: %@", &v7, 0x16u);
    }
  }

  IMDMessagePTaskUpdateTaskFlagsForGUID(a1[4], a1[6]);
  result = a1[5];
  if (result)
  {
    result = (*(result + 16))();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessagePTaskDeleteAllCompletedTask_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF6AEC;
  block[3] = &unk_1E7CB7FD8;
  block[4] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v4, v5);
}

uint64_t sub_1B7BF6AEC(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Deleting all completed task from Message Processing Table", v4, 2u);
    }
  }

  IMDMessagePTaskDeleteAllCompletedTask();
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDChatRecordCreate_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, uint64_t a23)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF6C74;
  block[3] = &unk_1E7CBD6E0;
  v36 = a5;
  v37 = a6;
  block[4] = a7;
  block[5] = a8;
  v26 = a9;
  v27 = a10;
  v28 = a11;
  v29 = a12;
  v38 = a13;
  v30 = a15;
  v39 = a14;
  v40 = a16;
  v41 = a18;
  v31 = a17;
  v32 = a19;
  v42 = a21;
  v43 = a22;
  v44 = a23;
  v33 = a20;
  v34 = a3;
  v35 = a4;
  v23 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v23, v24);
}

void sub_1B7BF6C74(uint64_t *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a1[31];
  v3 = IMDChatRecordCreate(0, a1[21], a1[22], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9], a1[10], a1[11], a1[12], a1[13], a1[23], a1[24], a1[25], a1[14], a1[15], a1[26], a1[16], a1[27], a1[17], a1[18], a1[28], a1[29], a1[30], a1[31], a1[32]);
  v4 = IMOSLoggingEnabled();
  if (v3)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = a1[8];
        *buf = 138412546;
        v12 = v6;
        v13 = 2048;
        v14 = v3;
        _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Created chat with guid: %@  (0x%p)", buf, 0x16u);
      }
    }

    _IMDChatRecordBulkCopyXPCDictionary(v3, a1[19], 0, 0, 1, 1);
  }

  else if (v4)
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = a1[8];
      *buf = 138412290;
      v12 = v8;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Failed to create chat with guid: %@", buf, 0xCu);
    }
  }

  v9 = a1[20];
  if (v9)
  {
    (*(v9 + 16))();
  }

  if (v3)
  {
    CFRelease(v3);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __XPCServerIMDChatRecordCopyMessagesWithLimit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BF6EF8;
  v8[3] = &unk_1E7CBD488;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v8, v6, v7);
}

uint64_t sub_1B7BF6EF8(void *a1)
{
  v2 = IMDChatRecordCreateFromRecordID(0, a1[6]);
  if (v2)
  {
    v3 = v2;
    v4 = IMDChatRecordCopyMessagesWithLimit(v2, a1[7]);
    v5 = xpc_array_create(0, 0);
    if (v5)
    {
      v8 = v5;
      v9 = objc_msgSend_count(v4, v6, v7);
      if (v9 >= 1)
      {
        v11 = 0;
        v12 = v9 & 0x7FFFFFFF;
        do
        {
          v13 = objc_msgSend_objectAtIndex_(v4, v10, v11);
          v14 = xpc_dictionary_create(0, 0, 0);
          if (v14)
          {
            v15 = v14;
            _IMDMessageRecordBulkCopyXPCDictionary(v13, v14, 0, 0);
            xpc_array_append_value(v8, v15);
            xpc_release(v15);
          }

          ++v11;
        }

        while (v12 != v11);
      }

      v16 = a1[4];
      if (v16)
      {
        xpc_dictionary_set_value(v16, "array_result", v8);
      }

      xpc_release(v8);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    CFRelease(v3);
  }

  result = a1[5];
  if (result)
  {
    v18 = *(result + 16);

    return v18();
  }

  return result;
}

void __XPCServerIMDChatRecordSetIsArchived_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF70C4;
  block[3] = &unk_1E7CBD438;
  block[5] = a5;
  block[6] = a6;
  block[4] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v6, v7);
}

uint64_t sub_1B7BF70C4(void *a1)
{
  v2 = IMDChatRecordCreateFromRecordID(0, a1[5]);
  if (v2)
  {
    v3 = v2;
    IMDChatRecordSetIsArchived(v2, a1[6]);
    CFRelease(v3);
  }

  result = a1[4];
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __XPCServerIMDChatRecordSetIsBlackholed_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF71B0;
  block[3] = &unk_1E7CBD438;
  block[5] = a5;
  block[6] = a6;
  block[4] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v6, v7);
}

uint64_t sub_1B7BF71B0(void *a1)
{
  v2 = IMDChatRecordCreateFromRecordID(0, a1[5]);
  if (v2)
  {
    v3 = v2;
    IMDChatRecordSetIsBlackholed(v2, a1[6]);
    CFRelease(v3);
  }

  result = a1[4];
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __XPCServerIMDChatRecordSetIsRecovered_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF729C;
  block[3] = &unk_1E7CBD438;
  block[5] = a5;
  block[6] = a6;
  block[4] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v6, v7);
}

uint64_t sub_1B7BF729C(void *a1)
{
  v2 = IMDChatRecordCreateFromRecordID(0, a1[5]);
  if (v2)
  {
    v3 = v2;
    IMDChatRecordSetIsRecovered(v2, a1[6]);
    CFRelease(v3);
  }

  result = a1[4];
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __XPCServerIMDChatRecordSetIsDeletingIncomingMessages_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF7388;
  block[3] = &unk_1E7CBD438;
  block[5] = a5;
  block[6] = a6;
  block[4] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v6, v7);
}

uint64_t sub_1B7BF7388(void *a1)
{
  v2 = IMDChatRecordCreateFromRecordID(0, a1[5]);
  if (v2)
  {
    v3 = v2;
    IMDChatRecordSetIsDeletingIncomingMessages(v2, a1[6]);
    CFRelease(v3);
  }

  result = a1[4];
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __XPCServerIMDChatRecordAddHandle_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF7474;
  block[3] = &unk_1E7CBD438;
  block[5] = a5;
  block[6] = a6;
  block[4] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v6, v7);
}

uint64_t sub_1B7BF7474(void *a1)
{
  v2 = IMDChatRecordCreateFromRecordID(0, a1[5]);
  v3 = IMDHandleRecordCreateFromRecordID(0, a1[6]);
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (!v2)
    {
      if (!v3)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    IMDChatRecordAddHandle(v2, v3);
  }

  CFRelease(v2);
  if (v4)
  {
LABEL_8:
    CFRelease(v4);
  }

LABEL_9:
  result = a1[4];
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

void __XPCServerIMDChatRecordRemoveHandle_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF75A0;
  block[3] = &unk_1E7CBD438;
  block[5] = a5;
  block[6] = a6;
  block[4] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v6, v7);
}

uint64_t sub_1B7BF75A0(void *a1)
{
  v2 = IMDChatRecordCreateFromRecordID(0, a1[5]);
  v3 = IMDHandleRecordCreateFromRecordID(0, a1[6]);
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (!v2)
    {
      if (!v3)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    IMDChatRecordRemoveHandle(v2, v3);
  }

  CFRelease(v2);
  if (v4)
  {
LABEL_8:
    CFRelease(v4);
  }

LABEL_9:
  result = a1[4];
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

void __XPCServerIMDChatRecordCopyAllChats_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7BF76C8;
  v6[3] = &unk_1E7CBD2F8;
  v6[4] = a3;
  v6[5] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v6, v4, v5);
}

uint64_t sub_1B7BF76C8(uint64_t a1)
{
  v2 = IMDChatRecordCopyAllChats();
  v3 = xpc_array_create(0, 0);
  if (v3)
  {
    v6 = v3;
    v7 = objc_msgSend_count(v2, v4, v5);
    if (v7 >= 1)
    {
      v9 = 0;
      v10 = v7 & 0x7FFFFFFF;
      do
      {
        v11 = objc_msgSend_objectAtIndex_(v2, v8, v9);
        v12 = xpc_dictionary_create(0, 0, 0);
        if (v12)
        {
          v13 = v12;
          _IMDChatRecordBulkCopyXPCDictionary(v11, v12, 0, 0, 0, 1);
          xpc_array_append_value(v6, v13);
          xpc_release(v13);
        }

        ++v9;
      }

      while (v10 != v9);
    }

    v14 = *(a1 + 32);
    if (v14)
    {
      xpc_dictionary_set_value(v14, "array_result", v6);
    }

    xpc_release(v6);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(a1 + 40);
  if (result)
  {
    v16 = *(result + 16);

    return v16();
  }

  return result;
}

void __XPCServerIMDChatRecordCopyAllNamedChats_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7BF7874;
  v6[3] = &unk_1E7CBD2F8;
  v6[4] = a3;
  v6[5] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v6, v4, v5);
}

uint64_t sub_1B7BF7874(uint64_t a1)
{
  v2 = IMDChatRecordCopyAllNamedChats();
  v3 = xpc_array_create(0, 0);
  if (v3)
  {
    v6 = v3;
    v7 = objc_msgSend_count(v2, v4, v5);
    if (v7 >= 1)
    {
      v9 = 0;
      v10 = v7 & 0x7FFFFFFF;
      do
      {
        v11 = objc_msgSend_objectAtIndex_(v2, v8, v9);
        v12 = xpc_dictionary_create(0, 0, 0);
        if (v12)
        {
          v13 = v12;
          _IMDChatRecordBulkCopyXPCDictionary(v11, v12, 0, 0, 0, 1);
          xpc_array_append_value(v6, v13);
          xpc_release(v13);
        }

        ++v9;
      }

      while (v10 != v9);
    }

    v14 = *(a1 + 32);
    if (v14)
    {
      xpc_dictionary_set_value(v14, "array_result", v6);
    }

    xpc_release(v6);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(a1 + 40);
  if (result)
  {
    v16 = *(result + 16);

    return v16();
  }

  return result;
}

void __XPCServerIMDChatRecordCopyAllActiveChatsProgressivelyWithLimit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1B7BF7A2C;
    v8[3] = &unk_1E7CBD488;
    v8[4] = a3;
    v8[5] = a4;
    v8[6] = a5;
    v8[7] = a6;
    v6 = sub_1B7ADEAB4(a3, a2, a3);
    IMDPersistencePerformBlock(v8, v6, v7);
  }
}

void sub_1B7BF7A2C(void *a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v48 = objc_alloc_init(MEMORY[0x1E69A6170]);
  objc_msgSend_startTimingForKey_(v48, v2, @"goFetchAllActiveChatsProgressively");
  v46 = a1;
  if (qword_1EBA50C70 != a1[6])
  {
    if (qword_1EBA53B68)
    {
      CFRelease(qword_1EBA53B68);
      qword_1EBA53B68 = 0;
    }

    if (qword_1EBA54300)
    {
      CFRelease(qword_1EBA54300);
      qword_1EBA54300 = 0;
    }

    if (qword_1EBA53B70)
    {
      CFRelease(qword_1EBA53B70);
      qword_1EBA53B70 = 0;
    }

    active = IMDChatRecordCopyAllActiveChats();
    qword_1EBA53B68 = active;
    qword_1EDBE5C88 = 0;
    qword_1EBA50C70 = a1[6];
    if (!active)
    {
      if (IMOSLoggingEnabled())
      {
        v42 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v42, OS_LOG_TYPE_INFO, "Got nil for all active chats, aborting progressive copy all chats request early", buf, 2u);
        }
      }

      qword_1EBA50C70 = -1;
      v43 = a1[4];
      if (v43)
      {
        xpc_dictionary_set_BOOL(v43, "complete", 1);
      }

      v44 = a1[5];
      if (v44)
      {
        (*(v44 + 16))();
      }

      goto LABEL_54;
    }

    if (a1[7] >= 1)
    {
      Count = CFArrayGetCount(active);
      v5 = a1[7];
      if (Count > v5)
      {
        qword_1EBA54300 = IMDChatRowIDsMostRecentByLastMessageWithLimit(v5);
        if (IMOSLoggingEnabled())
        {
          v6 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
          {
            v7 = a1[7];
            *buf = 134218240;
            v50 = v7;
            v51 = 2048;
            v52 = CFDictionaryGetCount(qword_1EBA54300);
            _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Enforcing lastMessage load limit of %lld, found %lu chats with messages", buf, 0x16u);
          }
        }
      }
    }

    v8 = CFArrayGetCount(qword_1EBA53B68);
    qword_1EBA53B70 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], v8, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    _IMDMessageRecordCountAllUnreadMessagesForAllUnreadChats(&unk_1F2F9FEF0);
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = CFArrayGetCount(qword_1EBA53B68);
        *buf = 134218240;
        v50 = v10;
        v51 = 2048;
        v52 = 250;
        _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "Received new copy all chats request (total: %ld, batch size: %ld)", buf, 0x16u);
      }
    }
  }

  v11 = xpc_array_create(0, 0);
  v12 = CFArrayGetCount(qword_1EBA53B68);
  v13 = qword_1EDBE5C88;
  if (qword_1EDBE5C88 < v12)
  {
    v14 = qword_1EDBE5C88 + 250;
    while (1)
    {
      v15 = xpc_dictionary_create(0, 0, 0);
      ValueAtIndex = CFArrayGetValueAtIndex(qword_1EBA53B68, v13);
      Identifier = IMDChatRecordGetIdentifier(ValueAtIndex);
      v19 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v18, Identifier);
      if (!qword_1EBA54300)
      {
        break;
      }

      Value = CFDictionaryGetValue(qword_1EBA54300, v19);
      v22 = Value;
      if (!Value)
      {
        v26 = 0;
        goto LABEL_24;
      }

      v23 = objc_msgSend_objectForKeyedSubscript_(Value, v21, @"l");
      v26 = objc_msgSend_BOOLValue(v23, v24, v25);
      v28 = objc_msgSend_objectForKeyedSubscript_(v22, v27, @"d");
      v31 = objc_msgSend_integerValue(v28, v29, v30);
LABEL_25:
      _IMDChatRecordBulkCopyXPCDictionary(ValueAtIndex, v15, 1, 0, v26, 1);
      xpc_dictionary_set_int64(v15, "last_message_date_on_load", v31);
      v32 = CFDictionaryGetValue(qword_1EBA53B70, v19);
      if (v32)
      {
        v35 = objc_msgSend_longLongValue(v32, v33, v34);
      }

      else
      {
        v35 = 0;
      }

      xpc_dictionary_set_int64(v15, "unread_count_cache", v35);
      xpc_array_append_value(v11, v15);
      xpc_release(v15);
      ++qword_1EDBE5C88;
      if (v13 + 1 < v12 && v13++ < v14)
      {
        continue;
      }

      goto LABEL_30;
    }

    v26 = 1;
LABEL_24:
    v31 = -1;
    goto LABEL_25;
  }

LABEL_30:
  if (IMOSLoggingEnabled())
  {
    v37 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v50 = qword_1EDBE5C88;
      v51 = 2048;
      v52 = v12;
      _os_log_impl(&dword_1B7AD5000, v37, OS_LOG_TYPE_INFO, "Progressive chat send progress: %lu out of %lu", buf, 0x16u);
    }
  }

  xpc_dictionary_set_value(v46[4], "array_result", v11);
  xpc_release(v11);
  v38 = v46[4];
  if (qword_1EDBE5C88 == v12)
  {
    xpc_dictionary_set_BOOL(v38, "complete", 1);
    qword_1EBA50C70 = -1;
    if (qword_1EBA53B68)
    {
      CFRelease(qword_1EBA53B68);
      qword_1EBA53B68 = 0;
    }

    if (qword_1EBA54300)
    {
      CFRelease(qword_1EBA54300);
      qword_1EBA54300 = 0;
    }

    if (qword_1EBA53B70)
    {
      CFRelease(qword_1EBA53B70);
      qword_1EBA53B70 = 0;
    }

    if (IMOSLoggingEnabled())
    {
      v40 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v50 = qword_1EDBE5C88;
        _os_log_impl(&dword_1B7AD5000, v40, OS_LOG_TYPE_INFO, "Progressive chat send complete with %lu chats sent", buf, 0xCu);
      }
    }
  }

  else
  {
    xpc_dictionary_set_BOOL(v38, "complete", 0);
  }

  objc_msgSend_stopTimingForKey_(v48, v39, @"goFetchAllActiveChatsProgressively", v46);

  v41 = *(v47 + 40);
  if (v41)
  {
    (*(v41 + 16))();
  }

LABEL_54:
  v45 = *MEMORY[0x1E69E9840];
}

void sub_1B7BF809C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], a2, a2);
  v6 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v5, a3);
  v7 = qword_1EBA53B70;

  CFDictionarySetValue(v7, v4, v6);
}

void __XPCServerIMDChatRecordCopyAllActiveChatsWithLimit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF8180;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BF8180(void *a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v48 = objc_alloc_init(MEMORY[0x1E69A6170]);
  objc_msgSend_startTimingForKey_(v48, v2, @"goFetchAllActiveChats");
  active = IMDChatRecordCopyAllActiveChats();
  xarray = xpc_array_create(0, 0);
  v6 = objc_msgSend_count(active, v4, v5);
  MessageWithLimit = 0;
  v47 = a1;
  v7 = a1[6];
  v9 = v7 > 0 && v7 < v6;
  if (v9)
  {
    MessageWithLimit = IMDChatRowIDsMostRecentByLastMessageWithLimit(v7);
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v13 = v47[6];
        *buf = 134218240;
        v53 = v13;
        v54 = 2048;
        v55 = objc_msgSend_count(MessageWithLimit, v11, v12);
        _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Enforing lastMessage load limit of %lld, found %lu chats with messages", buf, 0x16u);
      }
    }
  }

  if (xarray)
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (v6 >= 1)
    {
      v16 = 0;
      v17 = v6 & 0x7FFFFFFF;
      while (1)
      {
        v18 = objc_msgSend_objectAtIndex_(active, v14, v16);
        v19 = v18;
        if (!v9)
        {
          break;
        }

        Identifier = IMDChatRecordGetIdentifier(v18);
        v22 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v21, Identifier);
        v24 = objc_msgSend_objectForKeyedSubscript_(MessageWithLimit, v23, v22);
        v26 = v24;
        if (!v24)
        {
          v30 = 0;
          goto LABEL_19;
        }

        v27 = objc_msgSend_objectForKeyedSubscript_(v24, v25, @"l");
        v30 = objc_msgSend_BOOLValue(v27, v28, v29);
        v32 = objc_msgSend_objectForKeyedSubscript_(v26, v31, @"d");
        v35 = objc_msgSend_integerValue(v32, v33, v34);
LABEL_20:
        v36 = xpc_dictionary_create(0, 0, 0);
        if (v36)
        {
          _IMDChatRecordBulkCopyXPCDictionary(v19, v36, 1, 0, v30, 1);
          xpc_dictionary_set_int64(v36, "last_message_date_on_load", v35);
          xpc_array_append_value(xarray, v36);
          int64 = xpc_dictionary_get_int64(v36, "recordIdentifier");
          v39 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v38, int64);
          objc_msgSend_setObject_forKeyedSubscript_(v15, v40, v36, v39);
          xpc_release(v36);
        }

        if (v17 == ++v16)
        {
          goto LABEL_23;
        }
      }

      v30 = 1;
LABEL_19:
      v35 = -1;
      goto LABEL_20;
    }

LABEL_23:
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = sub_1B7BF856C;
    v51[3] = &unk_1E7CBD750;
    v51[4] = v15;
    _IMDMessageRecordCountAllUnreadMessagesForAllUnreadChats(v51);
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v15, v41, &unk_1F2FA14B0);

    v42 = v47[4];
    if (v42)
    {
      xpc_dictionary_set_value(v42, "array_result", xarray);
    }

    xpc_release(xarray);
  }

  if (active)
  {
    CFRelease(active);
  }

  objc_msgSend_stopTimingForKey_(v48, v43, @"goFetchAllActiveChats");
  if (IMOSLoggingEnabled())
  {
    v44 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v53 = v48;
      _os_log_impl(&dword_1B7AD5000, v44, OS_LOG_TYPE_INFO, "Finished timing goFetchAllActiveChats with time: %@", buf, 0xCu);
    }
  }

  result = v47[5];
  if (result)
  {
    result = (*(result + 16))();
  }

  v46 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1B7BF856C(uint64_t a1, const char *a2, int64_t a3)
{
  v6 = *(a1 + 32);
  v7 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], a2, a2);
  result = objc_msgSend_objectForKeyedSubscript_(v6, v8, v7);
  if (result)
  {
    xpc_dictionary_set_int64(result, "unread_count_cache", a3);
    v10 = *(a1 + 32);
    v13 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v11, a2);

    return objc_msgSend_removeObjectForKey_(v10, v12, v13);
  }

  return result;
}

void __XPCServerIMDChatRecordCopyAllUnreadChatsAndRecentChatsWithLimit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BF86A4;
  v8[3] = &unk_1E7CBD488;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v8, v6, v7);
}

uint64_t sub_1B7BF86A4(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E69A6170]);
  objc_msgSend_startTimingForKey_(v2, v3, @"copyRecentChats");
  v4 = IMDChatRecordCopyAllUnreadChatsAndRecentChatsWithLimit(a1[6], a1[7]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = xpc_array_create(0, 0);
  if (v6)
  {
    v9 = v6;
    if (objc_msgSend_count(v4, v7, v8))
    {
      v11 = 0;
      do
      {
        v12 = objc_msgSend_objectAtIndex_(v4, v10, v11);
        v13 = xpc_dictionary_create(0, 0, 0);
        if (v13)
        {
          v16 = v13;
          _IMDChatRecordBulkCopyXPCDictionary(v12, v13, 1, 0, 1, 1);
          xpc_dictionary_set_int64(v16, "unread_count_cache", 0);
          v17 = MEMORY[0x1E696AD98];
          Identifier = IMDChatRecordGetIdentifier(v12);
          v20 = objc_msgSend_numberWithLongLong_(v17, v19, Identifier);
          objc_msgSend_setObject_forKey_(v5, v21, v16, v20);
          xpc_array_append_value(v9, v16);
          xpc_release(v16);
        }

        ++v11;
      }

      while (v11 < objc_msgSend_count(v4, v14, v15));
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_1B7BF893C;
    v27[3] = &unk_1E7CBD750;
    v27[4] = v5;
    _IMDMessageRecordCountAllUnreadMessagesForAllUnreadChats(v27);
    v22 = a1[4];
    if (v22)
    {
      xpc_dictionary_set_value(v22, "array_result", v9);
    }

    xpc_release(v9);
  }

  objc_msgSend_stopTimingForKey_(v2, v23, @"copyRecentChats");
  if (IMOSLoggingEnabled())
  {
    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = v2;
      _os_log_impl(&dword_1B7AD5000, v24, OS_LOG_TYPE_INFO, "Finished timing copyRecentChats with time: %@", buf, 0xCu);
    }
  }

  result = a1[5];
  if (result)
  {
    result = (*(result + 16))();
  }

  v26 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B7BF893C(uint64_t a1, const char *a2, int64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], a2, a2);
  v8 = objc_msgSend_objectForKeyedSubscript_(v5, v7, v6);
  if (v8)
  {
    v9 = *MEMORY[0x1E69E9840];

    xpc_dictionary_set_int64(v8, "unread_count_cache", a3);
  }

  else
  {
    v10 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 134218240;
      v13 = a2;
      v14 = 2048;
      v15 = a3;
      _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "An unread chat was not included in recent chats with rowID: %llu unreadCount: %lld", &v12, 0x16u);
    }

    v11 = *MEMORY[0x1E69E9840];
  }
}

void __XPCServerIMDChatRecordCopyChatRecordForIdentifier_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF8AD8;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

void sub_1B7BF8AD8(uint64_t *a1)
{
  v2 = IMDChatRecordCopyChatRecord(a1[6]);
  v3 = v2;
  if (v2)
  {
    _IMDChatRecordBulkCopyXPCDictionary(v2, a1[4], 0, 0, 1, 1);
  }

  v4 = a1[5];
  if (v4)
  {
    (*(v4 + 16))();
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

void __XPCServerIMDChatRecordCopyChatForMessageID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF8BD8;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

void sub_1B7BF8BD8(uint64_t *a1)
{
  v2 = IMDChatRecordCopyChatForMessageID(a1[6]);
  v3 = v2;
  if (v2)
  {
    _IMDChatRecordBulkCopyXPCDictionary(v2, a1[4], 0, 0, 0, 1);
  }

  v4 = a1[5];
  if (v4)
  {
    (*(v4 + 16))();
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

void __XPCServerIMDChatRecordCopyChatsWithHandleOnService_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BF8CD8;
  v8[3] = &unk_1E7CBD460;
  v8[4] = a5;
  v8[5] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v8, v6, v7);
}

uint64_t sub_1B7BF8CD8(uint64_t a1)
{
  v2 = IMDChatRecordCopyChatsWithHandleOnService(*(a1 + 32), *(a1 + 40));
  v3 = xpc_array_create(0, 0);
  if (v3)
  {
    v4 = v3;
    _IMDChatRecordCopyChatsToXPCArray(v2, v3, 0, 0, 0, 1);
    v5 = *(a1 + 48);
    if (v5)
    {
      xpc_dictionary_set_value(v5, "array_result", v4);
    }

    xpc_release(v4);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(a1 + 56);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

void __XPCServerIMDChatRecordCopyChatsWithIdentifierOnService_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BF8E18;
  v8[3] = &unk_1E7CBD460;
  v8[4] = a5;
  v8[5] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v8, v6, v7);
}

uint64_t sub_1B7BF8E18(uint64_t a1)
{
  v2 = IMDChatRecordCopyChatsWithIdentifierOnService(*(a1 + 32), *(a1 + 40));
  v3 = xpc_array_create(0, 0);
  if (v3)
  {
    v4 = v3;
    _IMDChatRecordCopyChatsToXPCArray(v2, v3, 0, 0, 0, 1);
    v5 = *(a1 + 48);
    if (v5)
    {
      xpc_dictionary_set_value(v5, "array_result", v4);
    }

    xpc_release(v4);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(a1 + 56);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

void __XPCServerIMDChatRecordCopyChatsWithRoomnameOnService_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BF8F58;
  v8[3] = &unk_1E7CBD460;
  v8[4] = a5;
  v8[5] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v8, v6, v7);
}

uint64_t sub_1B7BF8F58(uint64_t a1)
{
  v2 = IMDChatRecordCopyChatsWithRoomnameOnService(*(a1 + 32), *(a1 + 40));
  v3 = xpc_array_create(0, 0);
  if (v3)
  {
    v4 = v3;
    _IMDChatRecordCopyChatsToXPCArray(v2, v3, 0, 0, 0, 1);
    v5 = *(a1 + 48);
    if (v5)
    {
      xpc_dictionary_set_value(v5, "array_result", v4);
    }

    xpc_release(v4);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(a1 + 56);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

void __XPCServerIMDChatRecordCopyChatsWithGroupID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF9098;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BF9098(uint64_t a1)
{
  v2 = IMDChatRecordCopyChatsWithGroupID(*(a1 + 32));
  v3 = xpc_array_create(0, 0);
  if (v3)
  {
    v4 = v3;
    _IMDChatRecordCopyChatsToXPCArray(v2, v3, 0, 0, 0, 1);
    v5 = *(a1 + 40);
    if (v5)
    {
      xpc_dictionary_set_value(v5, "array_result", v4);
    }

    xpc_release(v4);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(a1 + 48);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

void __XPCServerIMDChatRecordCopyNewestChatForGroupIDOnService_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF91D8;
  block[3] = &unk_1E7CBD798;
  block[4] = a5;
  block[5] = a6;
  v10 = a7;
  block[6] = a3;
  block[7] = a4;
  v7 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v7, v8);
}

void sub_1B7BF91D8(uint64_t a1)
{
  v2 = IMDChatRecordCopyNewestChatForGroupIDOnService(*(a1 + 32), *(a1 + 40), *(a1 + 64));
  v3 = v2;
  if (v2)
  {
    _IMDChatRecordBulkCopyXPCDictionary(v2, *(a1 + 48), 0, 0, 0, 1);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    (*(v4 + 16))();
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

void __XPCServerIMDChatRecordDeleteChatForGUID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BF92DC;
  v7[3] = &unk_1E7CBD2F8;
  v7[4] = a5;
  v7[5] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v7, v5, v6);
}

uint64_t sub_1B7BF92DC(uint64_t a1)
{
  IMDChatRecordDeleteChatForGUID(*(a1 + 32));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDChatRecordAssociateMessageWithGUIDToChatWithGUIDIfNeeded_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF93AC;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a6;
  block[6] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v6, v7);
}

uint64_t sub_1B7BF93AC(uint64_t *a1)
{
  IMDChatRecordAssociateMessageWithGUIDToChatWithGUIDIfNeeded(a1[4], a1[5]);
  result = a1[6];
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDChatRecordDisassociateMessageWithGUIDFromChatWithGUIDIfNeeded_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF9480;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a6;
  block[6] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v6, v7);
}

uint64_t sub_1B7BF9480(uint64_t a1)
{
  IMDChatRecordDisassociateMessageWithGUIDFromChatWithGUIDIfNeeded(*(a1 + 32), *(a1 + 40));
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDChatRecordCopyChatGUIDsWithUnplayedAudioMessages_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7BF9550;
  v6[3] = &unk_1E7CBD2F8;
  v6[4] = a3;
  v6[5] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v6, v4, v5);
}

uint64_t sub_1B7BF9550(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = IMDChatRecordCopyChatGUIDsWithUnplayedAudioMessages();
  v3 = xpc_array_create(0, 0);
  if (v3)
  {
    v5 = v3;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v19, v23, 16);
    if (v6)
    {
      v9 = v6;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v2);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          if (objc_msgSend_UTF8String(v12, v7, v8))
          {
            v13 = objc_msgSend_UTF8String(v12, v7, v8);
            v14 = xpc_string_create(v13);
            if (v14)
            {
              v15 = v14;
              xpc_array_append_value(v5, v14);
              xpc_release(v15);
            }
          }
        }

        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v7, &v19, v23, 16);
      }

      while (v9);
    }

    v16 = *(a1 + 32);
    if (v16)
    {
      xpc_dictionary_set_value(v16, "array_result", v5);
    }

    xpc_release(v5);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDChatRecordSetIsFiltered_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF9744;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a6;
  block[4] = a5;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v6, v7);
}

uint64_t sub_1B7BF9744(uint64_t a1)
{
  IMDChatRecordSetIsFiltered(*(a1 + 32), *(a1 + 48));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDChatRecordDeleteEmptyChats_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF9814;
  block[3] = &unk_1E7CB7FD8;
  block[4] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v4, v5);
}

uint64_t sub_1B7BF9814(uint64_t a1)
{
  IMDChatRecordDeleteEmptyChats();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDChatRecordRepairDuplicateChats_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF98E4;
  block[3] = &unk_1E7CBD7C0;
  block[4] = a5;
  block[5] = a6;
  block[6] = a7;
  block[7] = a3;
  block[8] = a4;
  v7 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v7, v8);
}

uint64_t sub_1B7BF98E4(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v2 = IMDChatRecordRepairDuplicateChats(*(a1 + 32), *(a1 + 40), *(a1 + 48), &v31);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = @"NO";
      if (v2)
      {
        v4 = @"YES";
      }

      *buf = 138412290;
      v33 = v4;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "IMDChatRecordRepairDuplicateChats is returned %@", buf, 0xCu);
    }
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    xpc_dictionary_set_BOOL(v5, "BOOL_result", v2);
    if ((v2 & 1) == 0)
    {
      v6 = v31 == 0;
      v7 = IMOSLoggingEnabled();
      if (v6)
      {
        if (v7)
        {
          v28 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1B7AD5000, v28, OS_LOG_TYPE_INFO, "got NO success with NO error!?", buf, 2u);
          }
        }
      }

      else
      {
        if (v7)
        {
          v10 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v11 = objc_msgSend_description(v31, v8, v9);
            *buf = 138412290;
            v33 = v11;
            _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "got NO success with error: %@", buf, 0xCu);
          }
        }

        v12 = *(a1 + 56);
        v13 = objc_msgSend_domain(v31, v8, v9);
        v16 = objc_msgSend_UTF8String(v13, v14, v15);
        xpc_dictionary_set_string(v12, "error_domain", v16);
        v17 = *(a1 + 56);
        v20 = objc_msgSend_code(v31, v18, v19);
        xpc_dictionary_set_int64(v17, "error_code", v20);
        v21 = *(a1 + 56);
        v24 = objc_msgSend_localizedDescription(v31, v22, v23);
        v27 = objc_msgSend_UTF8String(v24, v25, v26);
        xpc_dictionary_set_string(v21, "error_localized_description", v27);
      }
    }
  }

  result = *(a1 + 64);
  if (result)
  {
    result = (*(result + 16))();
  }

  v30 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDChatRecordSplitDatabaseByDays_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BF9BE0;
  v8[3] = &unk_1E7CBD7E8;
  v8[4] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[7] = a5;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v8, v6, v7);
}

uint64_t sub_1B7BF9BE0(uint64_t a1)
{
  v2 = IMDTrimSharedDatabaseToDays(*(a1 + 32), *(a1 + 56), 0);
  xpc_dictionary_set_BOOL(*(a1 + 40), "BOOL_result", v2);
  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __XPCServerIMDChatRecordSplitDatabaseByRecentCount_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BF9CCC;
  v8[3] = &unk_1E7CBD7E8;
  v8[4] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[7] = a5;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v8, v6, v7);
}

uint64_t sub_1B7BF9CCC(uint64_t a1)
{
  v2 = IMDTrimSharedDatabaseToMessageCount(*(a1 + 32), *(a1 + 56), 0);
  xpc_dictionary_set_BOOL(*(a1 + 40), "BOOL_result", v2);
  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __XPCServerIMDSwitchDatabase_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BF9DB4;
  v7[3] = &unk_1E7CBD2F8;
  v7[4] = a5;
  v7[5] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v7, v5, v6);
}

uint64_t sub_1B7BF9DB4(uint64_t a1)
{
  IMDSwitchToDatabase(*(a1 + 32));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDMessageRecordCopyArrayOfAssociatedMessagesForMessageGUIDFromSender_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BF9E84;
  v8[3] = &unk_1E7CBD460;
  v8[4] = a5;
  v8[5] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v8, v6, v7);
}

uint64_t sub_1B7BF9E84(uint64_t *a1)
{
  v37 = 0;
  v2 = IMDMessageRecordCopyArrayOfAssociatedMessagesForMessageGUIDFromSender(a1[4], a1[5], &v37);
  v3 = xpc_array_create(0, 0);
  if (v3)
  {
    v6 = v3;
    v7 = objc_msgSend_count(v2, v4, v5);
    if (v7 >= 1)
    {
      v9 = 0;
      v10 = v7 & 0x7FFFFFFF;
      do
      {
        v11 = objc_msgSend_objectAtIndex_(v2, v8, v9);
        v12 = xpc_dictionary_create(0, 0, 0);
        if (v12)
        {
          v13 = v12;
          _IMDMessageRecordBulkCopyXPCDictionary(v11, v12, 0, 0);
          xpc_array_append_value(v6, v13);
          xpc_release(v13);
        }

        ++v9;
      }

      while (v10 != v9);
    }

    v14 = a1[6];
    if (v14)
    {
      xpc_dictionary_set_value(v14, "array_result", v6);
    }

    xpc_release(v6);
  }

  if (v37)
  {
    v15 = a1[6];
    if (v15)
    {
      v16 = objc_msgSend_code(v37, v4, v5);
      xpc_dictionary_set_int64(v15, "error_code", v16);
      v17 = a1[6];
      v20 = objc_msgSend_domain(v37, v18, v19);
      v23 = objc_msgSend_UTF8String(v20, v21, v22);
      xpc_dictionary_set_string(v17, "error_domain", v23);
      v26 = objc_msgSend_localizedDescription(v37, v24, v25);
      if (objc_msgSend_UTF8String(v26, v27, v28))
      {
        v31 = a1[6];
        v32 = objc_msgSend_localizedDescription(v37, v29, v30);
        v35 = objc_msgSend_UTF8String(v32, v33, v34);
        xpc_dictionary_set_string(v31, "error_description", v35);
      }
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = a1[7];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDDowngradeDatabase_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BFA0A8;
  block[3] = &unk_1E7CBD4D8;
  block[4] = a5;
  block[5] = a6;
  block[7] = a4;
  block[8] = a7;
  block[6] = a3;
  v7 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v7, v8);
}

uint64_t sub_1B7BFA0A8(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v2 = IMDDowngradeDatabaseToVersion(*(a1 + 32), *(a1 + 40), *(a1 + 64), &v8);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 64);
      *buf = 134217984;
      v10 = v4;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Downgrade Database to version %ld", buf, 0xCu);
    }
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    xpc_dictionary_set_BOOL(v5, "BOOL_result", v2);
  }

  if (v8)
  {
    _IMDInsertErrorToXPCDictionary(*(a1 + 48), "error", v8);
  }

  result = *(a1 + 56);
  if (result)
  {
    result = (*(result + 16))();
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordCopyMessagesToUploadToCloudKit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BFA254;
  v8[3] = &unk_1E7CBD488;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v8, v6, v7);
}

uint64_t sub_1B7BFA254(void *a1)
{
  v2 = IMDMessageRecordCopyMessagesToUploadToCloudKitWithLimit(a1[6], a1[7]);
  if (v2)
  {
    v3 = xpc_array_create(0, 0);
    if (v3)
    {
      v6 = v3;
      v7 = objc_msgSend_count(v2, v4, v5);
      if (v7 >= 1)
      {
        v9 = 0;
        v10 = v7 & 0x7FFFFFFF;
        do
        {
          v11 = objc_msgSend_objectAtIndex_(v2, v8, v9);
          v12 = xpc_dictionary_create(0, 0, 0);
          if (v12)
          {
            v13 = v12;
            _IMDMessageRecordBulkCopyXPCDictionary(v11, v12, 1, 1);
            xpc_array_append_value(v6, v13);
            xpc_release(v13);
          }

          ++v9;
        }

        while (v10 != v9);
      }

      v14 = a1[4];
      if (v14)
      {
        xpc_dictionary_set_value(v14, "array_result", v6);
      }

      xpc_release(v6);
    }
  }

  result = a1[5];
  if (result)
  {
    v16 = *(result + 16);

    return v16();
  }

  return result;
}

void __XPCServerIMDMessageRecordCopyMessagesPendingUpdateT1ToCloudKit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BFA404;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BFA404(void *a1)
{
  updated = IMDMessageRecordCopyMessagesPendingUpdateT1ToCloudKitWithLimit(a1[6]);
  if (updated)
  {
    v3 = xpc_array_create(0, 0);
    if (v3)
    {
      v6 = v3;
      v7 = objc_msgSend_count(updated, v4, v5);
      if (v7 >= 1)
      {
        v9 = 0;
        v10 = v7 & 0x7FFFFFFF;
        do
        {
          objc_msgSend_objectAtIndex_(updated, v8, v9);
          v11 = IMCreateXPCObjectFromDictionary();
          if (v11)
          {
            v12 = v11;
            xpc_array_append_value(v6, v11);
            xpc_release(v12);
          }

          ++v9;
        }

        while (v10 != v9);
      }

      v13 = a1[4];
      if (v13)
      {
        xpc_dictionary_set_value(v13, "array_result", v6);
      }

      xpc_release(v6);
    }
  }

  result = a1[5];
  if (result)
  {
    v15 = *(result + 16);

    return v15();
  }

  return result;
}

void __XPCServerIMDMessageRecordCopyMessagesPendingUpdateT2ToCloudKit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BFA57C;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BFA57C(void *a1)
{
  updated = IMDMessageRecordCopyMessagesPendingUpdateT2ToCloudKitWithLimit(a1[6]);
  if (updated)
  {
    v3 = xpc_array_create(0, 0);
    if (v3)
    {
      v6 = v3;
      v7 = objc_msgSend_count(updated, v4, v5);
      if (v7 >= 1)
      {
        v9 = 0;
        v10 = v7 & 0x7FFFFFFF;
        do
        {
          objc_msgSend_objectAtIndex_(updated, v8, v9);
          v11 = IMCreateXPCObjectFromDictionary();
          if (v11)
          {
            v12 = v11;
            xpc_array_append_value(v6, v11);
            xpc_release(v12);
          }

          ++v9;
        }

        while (v10 != v9);
      }

      v13 = a1[4];
      if (v13)
      {
        xpc_dictionary_set_value(v13, "array_result", v6);
      }

      xpc_release(v6);
    }
  }

  result = a1[5];
  if (result)
  {
    v15 = *(result + 16);

    return v15();
  }

  return result;
}

void __XPCServerIMDMessageRecordCopyMessagesPendingUpdateT3ToCloudKit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BFA6F4;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BFA6F4(void *a1)
{
  updated = IMDMessageRecordCopyMessagesPendingUpdateT3ToCloudKitWithLimit(a1[6]);
  if (updated)
  {
    v3 = xpc_array_create(0, 0);
    if (v3)
    {
      v6 = v3;
      v7 = objc_msgSend_count(updated, v4, v5);
      if (v7 >= 1)
      {
        v9 = 0;
        v10 = v7 & 0x7FFFFFFF;
        do
        {
          objc_msgSend_objectAtIndex_(updated, v8, v9);
          v11 = IMCreateXPCObjectFromDictionary();
          if (v11)
          {
            v12 = v11;
            xpc_array_append_value(v6, v11);
            xpc_release(v12);
          }

          ++v9;
        }

        while (v10 != v9);
      }

      v13 = a1[4];
      if (v13)
      {
        xpc_dictionary_set_value(v13, "array_result", v6);
      }

      xpc_release(v6);
    }
  }

  result = a1[5];
  if (result)
  {
    v15 = *(result + 16);

    return v15();
  }

  return result;
}

void __XPCServerIMDMessageRecordMarkAllMessagesAsNeedingCloudKitSync_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BFA868;
  block[3] = &unk_1E7CB7FD8;
  block[4] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v4, v5);
}

uint64_t sub_1B7BFA868(uint64_t a1)
{
  IMDMessageRecordMarkAllMessagesAsNeedingCloudKitSync();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDMessageRecordCopyMessagesToDeleteFromCloudKit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BFA934;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BFA934(uint64_t a1)
{
  v1 = a1;
  v41 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyRecordIDsAndGUIDsToDeleteWithLimit(*(a1 + 48));
  if (objc_msgSend_count(v2, v3, v4))
  {
    v5 = xpc_array_create(0, 0);
    if (v5)
    {
      v8 = v5;
      v33 = v1;
      if (objc_msgSend_count(v2, v6, v7))
      {
        v9 = 0;
        xarray = v8;
        v35 = v2;
        do
        {
          v10 = xpc_dictionary_create(0, 0, 0);
          if (v10)
          {
            v13 = v10;
            v14 = objc_msgSend_objectAtIndex_(v2, v11, v9);
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v17 = objc_msgSend_allKeys(v14, v15, v16);
            v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v36, v40, 16);
            if (v19)
            {
              v21 = v19;
              v22 = *v37;
              do
              {
                for (i = 0; i != v21; ++i)
                {
                  if (*v37 != v22)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v24 = *(*(&v36 + 1) + 8 * i);
                  if ((objc_msgSend_isEqualToString_(v24, v20, @"ROWID") & 1) == 0)
                  {
                    v25 = objc_msgSend_valueForKey_(v14, v20, v24);
                    v27 = objc_msgSend_cStringUsingEncoding_(v24, v26, 4);
                    v29 = objc_msgSend_cStringUsingEncoding_(v25, v28, 4);
                    xpc_dictionary_set_string(v13, v27, v29);
                  }
                }

                v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v36, v40, 16);
              }

              while (v21);
            }

            v8 = xarray;
            xpc_array_append_value(xarray, v13);
            xpc_release(v13);
            v2 = v35;
          }

          ++v9;
        }

        while (objc_msgSend_count(v2, v11, v12) > v9);
      }

      v1 = v33;
      v30 = *(v33 + 32);
      if (v30)
      {
        xpc_dictionary_set_value(v30, "array_result", v8);
      }

      xpc_release(v8);
    }
  }

  result = *(v1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v32 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDUpdateWallpaperForCNContact_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BFABCC;
  v8[3] = &unk_1E7CBD460;
  v8[4] = a5;
  v8[5] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v8, v6, v7);
}

uint64_t sub_1B7BFABCC(uint64_t a1)
{
  v2 = IMDSaveWallpaperForCNContact(*(a1 + 32), *(a1 + 40));
  v3 = *(a1 + 48);
  if (v3)
  {
    xpc_dictionary_set_BOOL(v3, "BOOL_result", v2);
  }

  result = *(a1 + 56);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __XPCServerIMDMessageRecordAddGUIDAndCKRecordIDToDeleteFromCloudKit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BFACB8;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a6;
  block[6] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v6, v7);
}

uint64_t sub_1B7BFACB8(uint64_t a1)
{
  IMDMessageRecordAddGUIDAndCKRecordIDToDeleteFromCloudKit(*(a1 + 32), *(a1 + 40));
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDAddIncompatibleGroupPhotoChangedMessagesToDeleteFromCloudKit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BFAD88;
  block[3] = &unk_1E7CB7FD8;
  block[4] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v4, v5);
}

uint64_t sub_1B7BFAD88(uint64_t a1)
{
  IMDAddIncompatibleGroupPhotoChangedMessagesToDeleteFromCloudKit();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDMessageRecordDeleteTombStonedMessagesWithRecordIDs_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BFAE50;
  v7[3] = &unk_1E7CBD2F8;
  v7[4] = a5;
  v7[5] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v7, v5, v6);
}

uint64_t sub_1B7BFAE50(uint64_t a1)
{
  IMDMessageRecordDeleteTombStonedMessagesWithRecordIDs(*(a1 + 32));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerInsertIntoDeletedChatsTable_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BFAF20;
  v9[3] = &unk_1E7CBD7E8;
  v9[4] = a5;
  v9[5] = a6;
  v9[6] = a4;
  v9[7] = a7;
  v7 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v9, v7, v8);
}

uint64_t sub_1B7BFAF20(uint64_t a1)
{
  IMDChatInsertIntoDeletedChatsTable(*(a1 + 32), *(a1 + 40), *(a1 + 56));
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDChatRecordCopyChatRecordIDsAndGUIDsToDeleteFromCloudKitWithLimit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BFAFF8;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BFAFF8(uint64_t a1)
{
  v1 = a1;
  v47 = *MEMORY[0x1E69E9840];
  v2 = IMDChatCopyChatRecordIDsAndGUIDsToDeleteWithLimit(*(a1 + 48));
  if (objc_msgSend_count(v2, v3, v4))
  {
    v5 = xpc_array_create(0, 0);
    if (v5)
    {
      v8 = v5;
      v38 = v1;
      if (objc_msgSend_count(v2, v6, v7))
      {
        v9 = 0;
        xarray = v8;
        v40 = v2;
        do
        {
          v10 = xpc_dictionary_create(0, 0, 0);
          if (v10)
          {
            v13 = v10;
            v41 = v9;
            v14 = objc_msgSend_objectAtIndex_(v2, v11, v9);
            v42 = 0u;
            v43 = 0u;
            v44 = 0u;
            v45 = 0u;
            v17 = objc_msgSend_allKeys(v14, v15, v16);
            v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v42, v46, 16);
            if (v19)
            {
              v21 = v19;
              v22 = *v43;
              do
              {
                for (i = 0; i != v21; ++i)
                {
                  if (*v43 != v22)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v24 = *(*(&v42 + 1) + 8 * i);
                  if ((objc_msgSend_isEqualToString_(v24, v20, @"ROWID") & 1) == 0)
                  {
                    if ((objc_msgSend_isEqualToString_(v24, v20, @"guid") & 1) != 0 || objc_msgSend_isEqualToString_(v24, v25, @"recordID"))
                    {
                      v26 = objc_msgSend_valueForKey_(v14, v25, v24);
                      v28 = objc_msgSend_cStringUsingEncoding_(v24, v27, 4);
                      v30 = objc_msgSend_cStringUsingEncoding_(v26, v29, 4);
                      xpc_dictionary_set_string(v13, v28, v30);
                    }

                    if (objc_msgSend_isEqualToString_(v24, v25, @"timestamp"))
                    {
                      v31 = objc_msgSend_valueForKey_(v14, v20, v24);
                      v34 = objc_msgSend_unsignedIntegerValue(v31, v32, v33);
                      xpc_dictionary_set_int64(v13, "timestamp", v34);
                    }
                  }
                }

                v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v42, v46, 16);
              }

              while (v21);
            }

            v8 = xarray;
            xpc_array_append_value(xarray, v13);
            xpc_release(v13);
            v2 = v40;
            v9 = v41;
          }

          ++v9;
        }

        while (objc_msgSend_count(v2, v11, v12) > v9);
      }

      v1 = v38;
      v35 = *(v38 + 32);
      if (v35)
      {
        xpc_dictionary_set_value(v35, "array_result", v8);
      }

      xpc_release(v8);
    }
  }

  result = *(v1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v37 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDChatClearPendingDeleteChatsTable_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BFB2F0;
  block[3] = &unk_1E7CB7FD8;
  block[4] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v4, v5);
}

uint64_t sub_1B7BFB2F0(uint64_t a1)
{
  IMDChatClearPendingDeleteChatsTable();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDChatRemapMessagesWithErrorCodeToErrorCode_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BFB3BC;
  v9[3] = &unk_1E7CBD488;
  v9[6] = a6;
  v9[7] = a7;
  v9[4] = a5;
  v9[5] = a4;
  v7 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v9, v7, v8);
}

uint64_t sub_1B7BFB3BC(uint64_t a1)
{
  IMDChatRemapMessagesWithErrorCodeToErrorCode(*(a1 + 32), *(a1 + 48), *(a1 + 56));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDMessageRecordCalculateLocalCloudKitStatistics_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7BFB48C;
  v6[3] = &unk_1E7CBD2F8;
  v6[4] = a3;
  v6[5] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v6, v4, v5);
}

void sub_1B7BFB48C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1B7BFB508;
    v5[3] = &unk_1E7CBD528;
    v4 = *(a1 + 40);
    v5[4] = v3;
    v5[5] = v4;
    IMDMessageRecordCalculateLocalCloudKitStatisticsAsync(v5, a2, a3);
  }
}

uint64_t sub_1B7BFB508(uint64_t a1)
{
  v2 = IMCreateXPCObjectFromDictionary();
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_value(*(a1 + 32), "dictionary_result", v2);
    xpc_release(v3);
  }

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __XPCServerIMDMessageRecordMarkMessageWithROWIDAsSyncedWithCloudKit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BFB5F8;
  v7[3] = &unk_1E7CBD398;
  v7[4] = a4;
  v7[5] = a5;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v7, v5, v6);
}

uint64_t sub_1B7BFB5F8(uint64_t a1)
{
  IMDMessageRecordMarkMessageWithROWIDAsSyncedWithCloudKit(*(a1 + 40));
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDMessageRecordMarkMessageWithROWIDAsIgnoreButNeedingSyncWithCloudKit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BFB6C4;
  v7[3] = &unk_1E7CBD398;
  v7[4] = a4;
  v7[5] = a5;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v7, v5, v6);
}

uint64_t sub_1B7BFB6C4(uint64_t a1)
{
  IMDMessageRecordMarkMessageWithROWIDAsIgnoreButNeedingSyncWithCloudKit(*(a1 + 40));
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDMessageRecordSetCloudKitSyncCounts_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BFB790;
  v7[3] = &unk_1E7CBD2F8;
  v7[4] = a5;
  v7[5] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v7, v5, v6);
}

uint64_t sub_1B7BFB790(uint64_t a1)
{
  _IMDMessageRecordSetCloudKitSyncCounts(*(a1 + 32));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordMarkFailedAttachmentsAsNeedingSync_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BFB85C;
  block[3] = &unk_1E7CB7FD8;
  block[4] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v4, v5);
}

uint64_t sub_1B7BFB85C(uint64_t a1)
{
  IMDAttachmentMarkAllFailedAttachmentsAsNeedingSync();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordCopyAttachmentsToDeleteFromCloudKit(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BFB928;
  v8[3] = &unk_1E7CBD7E8;
  v8[4] = a5;
  v8[5] = a3;
  v8[6] = a4;
  v8[7] = a6;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v8, v6, v7);
}

uint64_t sub_1B7BFB928(uint64_t a1)
{
  v1 = a1;
  v47 = *MEMORY[0x1E69E9840];
  v2 = IMDAttachmentCopyRecordIDsToDeleteAfterRowWithLimit(*(a1 + 32), *(a1 + 56));
  if (objc_msgSend_count(v2, v3, v4))
  {
    v5 = xpc_array_create(0, 0);
    if (v5)
    {
      v8 = v5;
      v38 = v1;
      if (objc_msgSend_count(v2, v6, v7))
      {
        v9 = 0;
        xarray = v8;
        v40 = v2;
        do
        {
          v10 = xpc_dictionary_create(0, 0, 0);
          if (v10)
          {
            v13 = v10;
            v41 = v9;
            v14 = objc_msgSend_objectAtIndex_(v2, v11, v9);
            v42 = 0u;
            v43 = 0u;
            v44 = 0u;
            v45 = 0u;
            v17 = objc_msgSend_allKeys(v14, v15, v16);
            v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v42, v46, 16);
            if (v19)
            {
              v21 = v19;
              v22 = *v43;
              do
              {
                for (i = 0; i != v21; ++i)
                {
                  if (*v43 != v22)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v24 = *(*(&v42 + 1) + 8 * i);
                  if (objc_msgSend_isEqualToString_(v24, v20, @"ROWID"))
                  {
                    v26 = objc_msgSend_objectForKeyedSubscript_(v14, v25, v24);
                    v29 = objc_msgSend_longLongValue(v26, v27, v28);
                    xpc_dictionary_set_int64(v13, "ROWID", v29);
                  }

                  else
                  {
                    v30 = objc_msgSend_valueForKey_(v14, v25, v24);
                    v32 = objc_msgSend_cStringUsingEncoding_(v24, v31, 4);
                    v34 = objc_msgSend_cStringUsingEncoding_(v30, v33, 4);
                    xpc_dictionary_set_string(v13, v32, v34);
                  }
                }

                v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v42, v46, 16);
              }

              while (v21);
            }

            v8 = xarray;
            xpc_array_append_value(xarray, v13);
            xpc_release(v13);
            v2 = v40;
            v9 = v41;
          }

          ++v9;
        }

        while (objc_msgSend_count(v2, v11, v12) > v9);
      }

      v1 = v38;
      v35 = *(v38 + 40);
      if (v35)
      {
        xpc_dictionary_set_value(v35, "array_result", v8);
      }

      xpc_release(v8);
    }
  }

  result = *(v1 + 48);
  if (result)
  {
    result = (*(result + 16))();
  }

  v37 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDAttachmentRecordCopyAttachmentGUIDs(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BFBBF4;
  v8[3] = &unk_1E7CBD7E8;
  v8[4] = a5;
  v8[5] = a3;
  v8[6] = a4;
  v8[7] = a6;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v8, v6, v7);
}

uint64_t sub_1B7BFBBF4(uint64_t a1)
{
  v2 = IMDAttachmentCopyGUIDsAfterRowWithLimit(*(a1 + 32), *(a1 + 56));
  if (objc_msgSend_count(v2, v3, v4))
  {
    v5 = xpc_array_create(0, 0);
    if (v5)
    {
      v8 = v5;
      if (objc_msgSend_count(v2, v6, v7))
      {
        v9 = 0;
        do
        {
          v10 = xpc_dictionary_create(0, 0, 0);
          if (v10)
          {
            v13 = v10;
            v14 = objc_msgSend_objectAtIndex_(v2, v11, v9);
            v16 = objc_msgSend_objectForKey_(v14, v15, @"ROWID");
            v19 = objc_msgSend_longLongValue(v16, v17, v18);
            v21 = objc_msgSend_objectForKey_(v14, v20, @"guid");
            v23 = objc_msgSend_objectForKey_(v14, v22, @"is_orphaned");
            LOBYTE(v14) = objc_msgSend_BOOLValue(v23, v24, v25);
            xpc_dictionary_set_int64(v13, "ROWID", v19);
            v27 = objc_msgSend_cStringUsingEncoding_(v21, v26, 4);
            xpc_dictionary_set_string(v13, "guid", v27);
            xpc_dictionary_set_BOOL(v13, "is_orphaned", v14);
            xpc_array_append_value(v8, v13);
            xpc_release(v13);
          }

          ++v9;
        }

        while (objc_msgSend_count(v2, v11, v12) > v9);
      }

      v28 = *(a1 + 40);
      if (v28)
      {
        xpc_dictionary_set_value(v28, "array_result", v8);
      }

      xpc_release(v8);
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    v30 = *(result + 16);

    return v30();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordDeleteTombStonedAttachmentsWithRecordIDs_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BFBE28;
  v7[3] = &unk_1E7CBD2F8;
  v7[4] = a5;
  v7[5] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v7, v5, v6);
}

uint64_t sub_1B7BFBE28(uint64_t a1)
{
  IMDAttachmentRecordDeleteTombStonedAttachmentsWithRecordIDs(*(a1 + 32));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDMessageRecordMarkAllUnsuccessFullSyncMessagesAsNeedingSync_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BFCD60;
  block[3] = &unk_1E7CB7FD8;
  block[4] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v4, v5);
}

void __XPCServerIMDKVValueForKey_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BFCDB0;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

void __XPCServerIMDKVPersistValueForKey_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BFCE2C;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a6;
  block[6] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v6, v7);
}

void __XPCServerIMDNotificationsPostNotifications_asyncIPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BFCE84;
  v7[3] = &unk_1E7CBD2F8;
  v7[4] = a5;
  v7[5] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v7, v5, v6);
}

void __XPCServerIMDMessageRecordRetractNotificationsForChatGuids_asyncIPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BFCED8;
  v7[3] = &unk_1E7CBD2F8;
  v7[4] = a5;
  v7[5] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v7, v5, v6);
}

void __XPCServerIMDNotificationsRetractNotificationsFromFirstUnlock_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BFCF2C;
  v7[3] = &unk_1E7CBD2F8;
  v7[4] = a5;
  v7[5] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v7, v5, v6);
}

void __XPCServerIMDNotificationsPostUrgentNotificationsForMessages_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BFCF80;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a6;
  block[6] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v6, v7);
}

void __XPCServerIMDNotificationsUpdatePostedNotificationsForMessages_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BFCFD8;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a6;
  block[6] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v6, v7);
}

void __XPCServerIMDNotificationsPostFirstUnlockMessage_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BFD030;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a6;
  block[6] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v6, v7);
}

void __XPCServerIMDMessageRecordMarkMessageGUIDUnread_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BFD088;
  v7[3] = &unk_1E7CBD2F8;
  v7[4] = a5;
  v7[5] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v7, v5, v6);
}

void __XPCServerIMDMessageRecordMarkMessagesAsUnreadWithChatGUIDUpToGUIDFromMe_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BFD0DC;
  v9[3] = &unk_1E7CBD370;
  v9[4] = a5;
  v9[5] = a6;
  v10 = a7;
  v9[6] = a4;
  v7 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v9, v7, v8);
}

void __XPCServerIMDChatRecordPurgeAttachments_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BFD138;
  v7[3] = &unk_1E7CBD2F8;
  v7[4] = a5;
  v7[5] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v7, v5, v6);
}

uint64_t __IMDPersistenceCheckAnyEntitlementsForInitialConnection()
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1EDBE62F8 != -1)
  {
    sub_1B7AF2794();
  }

  v0 = IMDAuditTokenTaskCopyValuesForEntitlements();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v2 = qword_1EDBE62F0;
    v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(qword_1EDBE62F0, v1, &v12, v16, 16);
    if (v3)
    {
      v5 = v3;
      v6 = *v13;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = objc_msgSend_objectForKeyedSubscript_(v0, v4, *(*(&v12 + 1) + 8 * i));
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_BOOLValue(v8, v4, v9))
          {

            result = 1;
            goto LABEL_15;
          }
        }

        v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v12, v16, 16);
        if (v5)
        {
          continue;
        }

        break;
      }
    }
  }

  result = 0;
LABEL_15:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void __IMDPersistenceIPCServer_InitializeEntitlements()
{
  if (qword_1EDBE62F8 != -1)
  {
    sub_1B7AF2794();
  }
}

uint64_t __IMDPersistenceCheckLesserEntitlements(void *a1, const char *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (qword_1EDBE62F8 != -1)
  {
    sub_1B7AF2794();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = objc_msgSend_allKeys(qword_1EDBE62E0, a2, a3, 0);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v18, v22, 16);
  if (result)
  {
    v9 = result;
    v10 = *v19;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        v13 = objc_msgSend_objectForKey_(a1, v8, v12);
        if (v13)
        {
          v14 = v13;
          v15 = CFGetTypeID(v13);
          if (v15 == CFBooleanGetTypeID())
          {
            if (CFBooleanGetValue(v14))
            {
              v16 = objc_msgSend_objectForKey_(qword_1EDBE62E0, v8, v12);
              if (v16)
              {
                if (objc_msgSend_containsIndex_(v16, v8, a2))
                {
                  result = 1;
                  goto LABEL_17;
                }
              }
            }
          }
        }

        ++v11;
      }

      while (v9 != v11);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v18, v22, 16);
      v9 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B7BFC750()
{
  v24[4] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  qword_1EDBE62E8 = objc_msgSend_initWithObjects_(v0, v1, @"com.apple.private.imcore.spi.database-access", @"com.apple.private.imcore.imdpersistence.data-detection-access", @"com.apple.private.imcore.imdpersistence.database-access", 0);
  v3 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x1E696AD50], v2, 20, 2);
  objc_msgSend_addIndexesInRange_(v3, v4, 164, 4);
  v6 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x1E696AD50], v5, 206, 1);
  objc_msgSend_addIndexesInRange_(v6, v7, 216, 1);
  v23[0] = @"com.apple.imdpersistence.IMDPersistenceAgent-UnreadChatList";
  v24[0] = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x1E696AC90], v8, 201, 1);
  v24[1] = v3;
  v23[1] = @"com.apple.imdpersistence.IMDPersistenceAgent-StorageManagement";
  v23[2] = @"com.apple.imdpersistence.IMDPersistenceAgent-GroupMetadata";
  v23[3] = @"com.apple.imdpersistence.IMDPersistenceAgent-Syndication";
  v24[2] = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x1E696AC90], v9, 137, 1);
  v24[3] = v6;
  qword_1EDBE62E0 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v10, v24, v23, 4);
  v11 = MEMORY[0x1E695DF70];
  v14 = objc_msgSend_allObjects(qword_1EDBE62E8, v12, v13);
  v16 = objc_msgSend_arrayWithArray_(v11, v15, v14);
  qword_1EDBE62F0 = v16;
  v19 = objc_msgSend_allKeys(qword_1EDBE62E0, v17, v18);
  result = objc_msgSend_addObjectsFromArray_(v16, v20, v19);
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void __IMDPersistenceIPCServer_peer_event_handler(_xpc_connection_s *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1B8CB1210](a2);
  if (v4 == MEMORY[0x1E69E9E98])
  {
    if (a2 == MEMORY[0x1E69E9E20])
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = xpc_connection_get_pid(a1);
          _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "peer(%d) received XPC_ERROR_CONNECTION_INVALID", buf, 8u);
        }
      }

      xpc_connection_cancel(a1);
      goto LABEL_28;
    }

    if (a2 == MEMORY[0x1E69E9E18])
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = xpc_connection_get_pid(a1);
          v14 = "peer(%d) received XPC_ERROR_CONNECTION_INTERRUPTED";
          goto LABEL_23;
        }
      }
    }

    else if (a2 == MEMORY[0x1E69E9E38])
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = xpc_connection_get_pid(a1);
          v14 = "peer(%d) received XPC_ERROR_TERMINATION_IMMINENT";
LABEL_23:
          _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, v14, buf, 8u);
        }
      }
    }

LABEL_28:
    if ((byte_1EDBE5C38 & 1) == 0)
    {
      byte_1EDBE5C38 = 1;
      IMDPersistencePerformBlockAfterDelay(&unk_1F2FA1510, v5, v6, 3.0);
    }

    goto LABEL_30;
  }

  if (v4 != MEMORY[0x1E69E9E80])
  {
    goto LABEL_28;
  }

  int64 = xpc_dictionary_get_int64(a2, "__xpc__event_code__");
  *buf = 0u;
  v26 = 0u;
  xpc_connection_get_audit_token();
  memset(v24, 0, sizeof(v24));
  if (__IMDPersistenceCheckEntitlements(v24, int64))
  {
    v8 = xpc_dictionary_get_int64(a2, "__xpc_wants_reply__");
    xpc_retain(a2);
    xpc_retain(a1);
    v11 = os_transaction_create();
    if (v8)
    {
      reply = xpc_dictionary_create_reply(a2);
    }

    else
    {
      reply = 0;
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_1B7BFCD04;
    v23[3] = &unk_1E7CB8E30;
    v20 = v8 != 0;
    v23[4] = reply;
    v23[5] = a1;
    v23[6] = a2;
    v23[7] = v11;
    v21 = objc_msgSend_copy(v23, v9, v10);
    __IMDPersistenceIPCServer_command_dispatcher(int64, a1, a2, v20, reply, v21);
    if (!v20)
    {
      v21[2](v21);
    }

    goto LABEL_28;
  }

  pid = xpc_connection_get_pid(a1);
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = sub_1B7AD85AC(int64);
      v19 = IMProcessNameForPid();
      *v24 = 138412802;
      *&v24[4] = v18;
      *&v24[12] = 2112;
      *&v24[14] = v19;
      *&v24[22] = 1024;
      *&v24[24] = pid;
      _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "Denying xpc connection, task does not have entitlement for message: %@  (%@:%d)", v24, 0x1Cu);
    }
  }

  xpc_connection_cancel(a1);
LABEL_30:
  v22 = *MEMORY[0x1E69E9840];
}

void sub_1B7BFCCB0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1B7BFCC54);
  }

  _Unwind_Resume(a1);
}

void sub_1B7BFCD04(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    xpc_connection_send_message(*(a1 + 40), v2);
    xpc_release(*(a1 + 32));
  }

  xpc_release(*(a1 + 40));
  xpc_release(*(a1 + 48));
  v3 = *(a1 + 56);
}

uint64_t sub_1B7BFCD60(uint64_t a1)
{
  IMDMessageRecordMarkAllUnsuccessFullSyncMessagesAsNeedingSync();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_1B7BFCDB0(uint64_t a1)
{
  IMDKVValueForKey(*(a1 + 32));
  if (*(a1 + 40))
  {
    IMInsertDatasToXPCDictionary();
  }

  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_1B7BFCE2C(uint64_t *a1)
{
  IMDKVPersistValueForKey(a1[4], a1[5]);
  result = a1[6];
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_1B7BFCE84(uint64_t a1)
{
  IMDNotificationsPostNotificationsWithContext(*(a1 + 32));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_1B7BFCED8(uint64_t a1)
{
  IMDMessageRecordRetractNotificationsForMessagesMatchingChatGUIDs(*(a1 + 32));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_1B7BFCF2C(uint64_t a1)
{
  IMDNotificationsRetractNotificationsFromFirstUnlockWithContext(*(a1 + 32));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_1B7BFCF80(uint64_t a1)
{
  IMDNotificationsPostUrgentNotificationsForMessages(*(a1 + 32), *(a1 + 40));
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_1B7BFCFD8(uint64_t a1)
{
  IMDNotificationsUpdatePostedNotificationsForMessages(*(a1 + 32), *(a1 + 40));
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_1B7BFD030(uint64_t a1)
{
  IMDNotificationsPostFirstUnlockMessage(*(a1 + 32), *(a1 + 40));
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_1B7BFD088(uint64_t a1)
{
  IMDMessageRecordMarkMessageGUIDUnread(*(a1 + 32));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_1B7BFD0DC(uint64_t a1)
{
  IMDMessageRecordMarkMessagesAsUnreadWithChatGUIDUpToGUIDFromMe(*(a1 + 32), *(a1 + 40), *(a1 + 56));
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_1B7BFD138(uint64_t a1)
{
  IMDChatRecordPurgeAttachments(*(a1 + 32));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

__CFString *IMDCreateQueryRemoveMessagesFromTombStoneTableQuery(uint64_t a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppend(Mutable, @"DELETE FROM sync_deleted_messages WHERE (recordID = ?");
  v3 = a1 - 1;
  if (a1 != 1)
  {
    do
    {
      CFStringAppend(Mutable, @" OR recordID = ?");
      --v3;
    }

    while (v3);
  }

  CFStringAppend(Mutable, @""));
  return Mutable;
}

__CFString *IMDCreateQueryRemoveMessagesFromMessageTableWithMessageGuidCount(uint64_t a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 256);
  CFStringAppend(Mutable, @"DELETE FROM message WHERE (guid = ?");
  v3 = a1 - 1;
  if (a1 != 1)
  {
    do
    {
      CFStringAppend(Mutable, @" OR guid = ?");
      --v3;
    }

    while (v3);
  }

  CFStringAppend(Mutable, @""));
  return Mutable;
}

__CFString *IMDMessageRecordGetMessagesWithChatIdentifiersOnServicesBeforeAndAfterGUIDWithOptionalThreadIdentifierQuery(int a1, int a2, uint64_t a3, uint64_t a4)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppend(Mutable, @"SELECT message_id from chat_message_join cmj ");
  if (a1)
  {
    CFStringAppend(Mutable, @"INNER JOIN message m ON m.ROWID = cmj.message_id ");
    if (a2)
    {
      v9 = @"WHERE cmj.chat_id in (SELECT c.rowid FROM chat c WHERE c.chat_identifier = ? AND c.service_name = ?) ";
    }

    else
    {
      v9 = @"WHERE cmj.chat_id in (SELECT c.rowid FROM chat c WHERE c.chat_identifier = ?) ";
    }

    CFStringAppend(Mutable, v9);
    v10 = @"AND ((m.thread_originator_guid = ? AND m.thread_originator_part = ?) OR m.associated_message_guid = ?) ";
  }

  else if (a2)
  {
    v10 = @"WHERE cmj.chat_id in (SELECT c.rowid FROM chat c WHERE c.chat_identifier = ? AND c.service_name = ?) ";
  }

  else
  {
    v10 = @"WHERE cmj.chat_id in (SELECT c.rowid FROM chat c WHERE c.chat_identifier = ?) ";
  }

  CFStringAppend(Mutable, v10);
  if (a3 < 1 || a4)
  {
    if (a3 < 1)
    {
      if (a4 < 1)
      {
        CFRelease(Mutable);
        return 0;
      }

      v11 = @"AND cmj.message_date >= (SELECT om.date FROM message om WHERE om.guid = ?) ORDER BY cmj.message_date ASC LIMIT ? + 1";
    }

    else
    {
      v11 = @"AND cmj.message_date < (SELECT om.date FROM message om WHERE om.guid = ?) ORDER BY cmj.message_date DESC LIMIT ?";
    }
  }

  else
  {
    v11 = @"AND cmj.message_date <= (SELECT om.date FROM message om WHERE om.guid = ?) ORDER BY cmj.message_date DESC LIMIT ? + 1";
  }

  CFStringAppend(Mutable, v11);
  return Mutable;
}

id IMDMessageRecordSelectMessagesWithGUIDsChatIdentifiersOnServicesQuery1(int a1)
{
  v1 = IMDMessageRecordDeleteMessagesWithGUIDsChatIdentifiersOnServicesQuery1(a1);
  v3 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v1, v2, @"DELETE", @"SELECT *");
  CFRelease(v1);
  return v3;
}

__CFString *IMDMessageRecordDeleteMessagesWithGUIDsChatIdentifiersOnServicesQuery1(int a1)
{
  if (!a1)
  {
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFCD24(v5, v6);
    }

    goto LABEL_9;
  }

  if (a1 < 2)
  {
LABEL_9:
    v3 = @"DELETE FROM chat_message_join WHERE chat_id = (SELECT c.rowid FROM chat c WHERE c.chat_identifier = ? AND c.service_name = ?) AND message_id = (SELECT m.ROWID FROM message m WHERE m.guid = ?);";
    CFRetain(@"DELETE FROM chat_message_join WHERE chat_id = (SELECT c.rowid FROM chat c WHERE c.chat_identifier = ? AND c.service_name = ?) AND message_id = (SELECT m.ROWID FROM message m WHERE m.guid = ?);");
    return v3;
  }

  Mutable = CFStringCreateMutable(0, 0);
  if (Mutable)
  {
    v3 = Mutable;
    CFStringAppend(Mutable, CFSTR("DELETE FROM chat_message_join WHERE chat_id = (SELECT c.rowid FROM chat c WHERE c.chat_identifier = ? AND c.service_name = ?) AND message_id IN (SELECT m.ROWID FROM message m WHERE m.guid IN (?"));
    v4 = a1 - 1;
    do
    {
      CFStringAppend(v3, @", ?");
      --v4;
    }

    while (v4);
    CFStringAppend(v3, @");"));
  }

  else
  {
    v8 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFCC74(v8, v9);
    }

    return 0;
  }

  return v3;
}

__CFString *IMDMessageRecordDeleteMessagesWithGUIDsChatIdentifiersOnServicesQuery2(int a1)
{
  if (!a1)
  {
    v2 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFCDE0(v2, v3);
    }
  }

  Mutable = CFStringCreateMutable(0, 0);
  v5 = Mutable;
  if (Mutable)
  {
    CFStringAppend(Mutable, @"DELETE FROM message WHERE(    SELECT 1 FROM chat_message_join     WHERE message_id = message.rowid     LIMIT 1) IS NULL AND message.guid ");
    v7 = IMDGenerateInClauseForCount(a1, v6);
    CFStringAppend(v5, v7);
  }

  else
  {
    v8 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFCE9C(v8, v9);
    }
  }

  return v5;
}

__CFString *IMDMessageRecordDeleteMessagesWithGUIDsChatIdentifiersOnServicesQuery3(int a1)
{
  if (!a1)
  {
    v2 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFCF4C(v2, v3);
    }
  }

  Mutable = CFStringCreateMutable(0, 0);
  v5 = Mutable;
  if (Mutable)
  {
    CFStringAppend(Mutable, @"UPDATE message SET cache_roomnames = (SELECT group_concat(c.room_name)                    FROM chat c INNER JOIN chat_message_join j                    ON c.ROWID = j.chat_id                    WHERE j.message_id = message.ROWID) WHERE message.guid ");
    v7 = IMDGenerateInClauseForCount(a1, v6);
    CFStringAppend(v5, v7);
  }

  else
  {
    v8 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFD008(v8, v9);
    }
  }

  return v5;
}

void sub_1B7BFD664(uint64_t a1, const char *a2, int a3, CFTypeRef *a4)
{
  v7 = *MEMORY[0x1E695E480];
  if (a1 < 1)
  {
    v9 = 0;
  }

  else
  {
    v8 = IMDGenerateInClauseForCount(a1, a2);
    v9 = CFStringCreateWithFormat(v7, 0, @"AND h.service NOT %@", v8);
  }

  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v10 = IMDGenerateInClauseForCount(a2, a2);
    v11 = CFStringCreateWithFormat(v7, 0, @"AND m.guid NOT %@", v10);
  }

  v12 = @"m.is_from_me = 0 AND";
  if (a3)
  {
    v12 = @"m.is_from_me = 1 OR";
  }

  v13 = &stru_1F2FA9728;
  if (v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = &stru_1F2FA9728;
  }

  if (v11)
  {
    v13 = v11;
  }

  v15 = CFStringCreateWithFormat(v7, 0, @"SELECT   MAX(m.ROWID) FROM   message m   INDEXED BY message_idx_handle WHERE (  %@  m.handle_id IN(   SELECT       h.rowid     FROM       handle h     WHERE       h.id = ?       %@) )   AND m.date >= ?   AND m.was_deduplicated = 0   AND m.cache_has_attachments = 0   %@   AND im_trim(m.text) = im_trim(?)   AND m.ROWID IN(    SELECT        cm.message_id      FROM        chat_message_join cm      WHERE        m.ROWID = cm.message_id        AND cm.chat_id = (SELECT c.rowid FROM chat c WHERE c.chat_identifier = ? AND c.service_name = ?)  ) ", v12, v14, v13);
  if (v11)
  {
    CFRelease(v11);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v15)
  {
    if (a4)
    {
      *a4 = CFRetain(v15);
    }

    CFRelease(v15);
  }
}

CFTypeRef IMDMessageRecordCopyMessageMatchingBodyStringWithChatIdentifiersServicesSkippingGUIDsQuery(uint64_t a1, const char *a2, int a3)
{
  v4 = 0;
  sub_1B7BFD664(a1, a2, a3, &v4);
  return v4;
}

CFStringRef IMDMessageRecordCopyMessageMatchingBodyStringWithHandleSkippingServicesSkippingGUIDsQuery(int a1, const char *a2)
{
  v2 = a2;
  v3 = *MEMORY[0x1E695E480];
  if (a1 < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = IMDGenerateInClauseForCount(a1, a2);
    v5 = CFStringCreateWithFormat(v3, 0, @"AND h.service NOT %@", v4);
  }

  if (v2 < 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = IMDGenerateInClauseForCount(v2, a2);
    v7 = CFStringCreateWithFormat(v3, 0, @"AND m.guid NOT %@", v6);
  }

  v8 = &stru_1F2FA9728;
  if (v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = &stru_1F2FA9728;
  }

  if (v7)
  {
    v8 = v7;
  }

  v10 = CFStringCreateWithFormat(v3, 0, @"SELECT   MAX(m.ROWID) FROM   message m   INDEXED BY message_idx_handle WHERE   m.handle_id IN(   SELECT       h.rowid     FROM       handle h     WHERE       h.id = ?       %@ )  AND m.date >= ?   AND m.is_from_me = 0   AND m.was_deduplicated = 0   AND m.cache_roomnames IS NULL   %@   AND im_trim(m.text) = im_trim(?) ", v9, v8);
  if (v10 || (v11 = IMDatabaseLogHandle(), !os_log_type_enabled(v11, OS_LOG_TYPE_ERROR)))
  {
    if (!v7)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  sub_1B7CFD0B8(v11, v12);
  if (v7)
  {
LABEL_15:
    CFRelease(v7);
  }

LABEL_16:
  if (v5)
  {
    CFRelease(v5);
  }

  return v10;
}

__CFString *IMDMessageRecordCopyMostRecentUseageOfAddressesQuery(int a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = Mutable;
  if (Mutable)
  {
    CFStringAppend(Mutable, @"SELECT   MAX(cm.message_id), h.ID FROM chat_message_join cm   INNER JOIN chat_handle_join j     ON cm.chat_id = j.chat_id       INNER JOIN handle h         ON h.ROWID = j.handle_id WHERE h.ID ");
    v5 = IMDGenerateInClauseForCount(a1, v4);
    CFStringAppend(v3, v5);
    CFStringAppend(v3, @" GROUP BY h.ID ");
    CFStringAppend(v3, @" ORDER BY cm.message_id DESC ");
  }

  else
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFD168(v6, v7);
    }
  }

  return v3;
}

__CFString *IMDCreateDeleteDeletedMessagesGuidsQuery(int a1)
{
  if (!a1)
  {
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFD378(v5, v6);
    }

    return 0;
  }

  if (a1 < 1)
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(0, 0);
  if (!Mutable)
  {
    v7 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFD2C8(v7, v8);
    }

    return 0;
  }

  v3 = Mutable;
  CFStringAppend(Mutable, @"DELETE from deleted_messages where (ROWID = ?");
  v4 = a1 - 1;
  if (a1 != 1)
  {
    do
    {
      CFStringAppend(v3, @" OR ROWID = ?");
      --v4;
    }

    while (v4);
  }

  CFStringAppend(v3, @""));
  return v3;
}

__CFString *IMDMessageRecordCountAllUnreadMessagesQuery(int a1, const char *a2, uint64_t a3)
{
  if (!a1)
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFD434(v4, a2);
    }
  }

  v5 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, a3);
  if (!objc_msgSend_isPriorityMessagesEnabled(v5, v6, v7))
  {
    if (a1 >= 2)
    {
      Mutable = CFStringCreateMutable(0, 0);
      if (Mutable)
      {
        v9 = Mutable;
        CFStringAppend(Mutable, CFSTR("SELECT COUNT(1) FROM (SELECT m.rowid , cm.message_id FROM message m INNER JOIN chat_message_join cm ON cm.message_id = m.rowid INNER JOIN chat c ON c.ROWID = cm.chat_id WHERE   m.is_read == 0   AND NOT (m.ROWID in (SELECT message_id FROM chat_recoverable_message_join))  AND m.is_finished == 1  AND m.is_from_me == 0  AND m.item_type == 0  AND m.is_system_message == 0  AND c.is_blackholed != 1  AND c.is_filtered NOT IN (?"));
        v12 = a1 - 1;
        do
        {
          CFStringAppend(v9, @", ?");
          --v12;
        }

        while (v12);
        goto LABEL_14;
      }

      v15 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CFD4F0(v15, v16);
      }

      return 0;
    }

LABEL_15:
    v9 = @"SELECT   COUNT(1) FROM (SELECT   m.rowid , cm.message_id FROM   message m INNER JOIN chat_message_join cm ON  cm.message_id = m.rowid INNER JOIN chat c ON   c.ROWID = cm.chat_id WHERE   m.is_read == 0   AND NOT (m.ROWID in (SELECT message_id FROM chat_recoverable_message_join))  AND m.is_finished == 1  AND m.is_from_me == 0  AND m.item_type == 0  AND m.is_system_message == 0  AND c.is_blackholed != 1  AND c.is_filtered != ?)";
    CFRetain(@"SELECT   COUNT(1) FROM (SELECT   m.rowid , cm.message_id FROM   message m INNER JOIN chat_message_join cm ON  cm.message_id = m.rowid INNER JOIN chat c ON   c.ROWID = cm.chat_id WHERE   m.is_read == 0   AND NOT (m.ROWID in (SELECT message_id FROM chat_recoverable_message_join))  AND m.is_finished == 1  AND m.is_from_me == 0  AND m.item_type == 0  AND m.is_system_message == 0  AND c.is_blackholed != 1  AND c.is_filtered != ?)");
    return v9;
  }

  if (a1 < 2)
  {
    goto LABEL_15;
  }

  v8 = CFStringCreateMutable(0, 0);
  if (!v8)
  {
    v13 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFD5A0(v13, v14);
    }

    return 0;
  }

  v9 = v8;
  CFStringAppend(v8, CFSTR("SELECT COUNT(1) FROM (SELECT m.rowid , cm.message_id FROM message m INNER JOIN chat_message_join cm ON cm.message_id = m.rowid INNER JOIN chat c ON c.ROWID = cm.chat_id WHERE   m.is_read == 0   AND NOT (m.ROWID in (SELECT message_id FROM chat_recoverable_message_join))  AND m.is_finished == 1  AND m.is_from_me == 0  AND m.item_type == 0  AND m.is_system_message == 0  AND c.is_blackholed != 1  AND c.is_filtered NOT IN (?"));
  v10 = a1 - 1;
  do
  {
    CFStringAppend(v9, @", ?");
    --v10;
  }

  while (v10);
LABEL_14:
  CFStringAppend(v9, @");"));
  return v9;
}

uint64_t IMDMessageRecordCopyAllUnreadMessagesQueryWithFilter(uint64_t a1, const char *a2)
{
  if (a1)
  {
    v3 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"AND (%@)", a1);
  }

  else
  {
    v3 = &stru_1F2FA9728;
  }

  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  return objc_msgSend_initWithFormat_(v4, v5, @"%@ %@ ORDER BY m.date DESC LIMIT %ld", @"SELECT m.ROWID, m.guid, m.text, m.replace, m.service_center, m.handle_id, m.subject, m.country, m.attributedBody, m.version, m.type, m.service, m.account, m.account_guid, m.error, m.date, m.date_read, m.date_delivered, m.is_delivered, m.is_finished, m.is_emote, m.is_from_me, m.is_empty, m.is_delayed, m.is_auto_reply, m.is_prepared, m.is_read, m.is_system_message, m.is_sent, m.has_dd_results, m.is_service_message, m.is_forward, m.was_downgraded, m.is_archive, m.cache_has_attachments, m.cache_roomnames, m.was_data_detected, m.was_deduplicated, m.is_audio_message, m.is_played, m.date_played, m.item_type, m.other_handle, m.group_title, m.group_action_type, m.share_status, m.share_direction, m.is_expirable, m.expire_state, m.message_action_type, m.message_source, m.associated_message_guid, m.associated_message_type, m.balloon_bundle_id, m.payload_data, m.expressive_send_style_id, m.associated_message_range_location, m.associated_message_range_length, m.time_expressive_send_played, m.message_summary_info, m.ck_sync_state, m.ck_record_id, m.ck_record_change_tag, m.destination_caller_id, m.is_corrupt, m.reply_to_guid, m.sort_id, m.is_spam, m.has_unseen_mention, m.thread_originator_guid, m.thread_originator_part, m.syndication_ranges, m.synced_syndication_ranges, m.was_delivered_quietly, m.did_notify_recipient, m.date_retracted, m.date_edited, m.date_recovered, m.was_detonated, m.part_count, m.is_stewie, m.is_sos, m.is_critical, m.bia_reference_id, m.is_kt_verified, m.fallback_hash, m.associated_message_emoji, m.is_pending_satellite_send, m.needs_relay, m.schedule_type, m.schedule_state, m.sent_or_received_off_grid, m.is_time_sensitive, m.ck_chat_id FROM message m  INNER JOIN chat_message_join cm ON cm.message_id = m.rowid  INNER JOIN chat c ON c.ROWID = cm.chat_id  WHERE m.is_read == 0  AND m.is_finished == 1  AND m.is_from_me == 0  AND m.item_type == 0  AND m.is_system_message == 0 ", v3, a2);
}

void _IMDSMSRecordStoreCustomFunctionBeforeDeleteChatDeleteChatBackground(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a2 == 2)
  {
    v5 = sqlite3_value_text(*a3);
    v6 = a3[1];
    v7 = sqlite3_value_bytes(v6);
    if (v7 && (v8 = v7, (v9 = sqlite3_value_blob(v6)) != 0) && (objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v10, v9, v8), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = v11;
      v13 = JWDecodeDictionary();

      if (v13)
      {
        v15 = objc_msgSend_transcriptBackgroundFileURLFromProperties_(IMDChatRecord, v14, v13);
        if (!v15)
        {
          v18 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v41 = v5;
            _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, "CustomFunctionBeforeDeleteChatDeleteChatBackground: chat %s has nil chat background url - nothing to do (this is not an error)", buf, 0xCu);
          }

          goto LABEL_20;
        }

        v18 = v15;
        v19 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v16, v17);
        v39 = 0;
        v21 = objc_msgSend_removeItemAtURL_error_(v19, v20, v18, &v39);
        v22 = v39;

        if (v21 && !v22)
        {
          v25 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v28 = objc_msgSend_path(v18, v26, v27);
            *buf = 138412546;
            v41 = v28;
            v42 = 2080;
            v43 = v5;
            _os_log_impl(&dword_1B7AD5000, v25, OS_LOG_TYPE_INFO, "CustomFunctionBeforeDeleteChatDeleteChatBackground: Successfully deleted chat backgound file at '%@' for chat %s", buf, 0x16u);
          }

LABEL_20:
          goto LABEL_16;
        }

        v31 = MEMORY[0x1E696AEC0];
        v32 = objc_msgSend_path(v18, v23, v24);
        v34 = objc_msgSend_stringWithFormat_(v31, v33, @"deleting chat background file at '%@' for chat %s FAILED with error: '%@'", v32, v5, v22);

        if (v34)
        {
          v35 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            sub_1B7CFD650(v34, v35);
          }

          v36 = v34;
          v38 = objc_msgSend_cStringUsingEncoding_(v36, v37, 1);
          sqlite3_result_error(a1, v38, -1);

          goto LABEL_17;
        }
      }
    }

    else
    {
      v13 = 0;
    }

LABEL_16:
    sqlite3_result_int(a1, 0);
LABEL_17:

    v30 = *MEMORY[0x1E69E9840];
    return;
  }

  v29 = *MEMORY[0x1E69E9840];

  sqlite3_result_error(a1, "_IMDSMSRecordStateCustomFunctionDeleteChatBackground: wrong number of arguments", -1);
}

void _IMDSMSRecordStoreCustomFunctionVerifyChat(sqlite3_context *a1, const char *a2, sqlite3_value **a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, a3);
  isOneChatEnabled = objc_msgSend_isOneChatEnabled(v5, v6, v7);

  if (!isOneChatEnabled)
  {
    sqlite3_result_int(a1, 0);
LABEL_14:
    v22 = *MEMORY[0x1E69E9840];
    return;
  }

  v9 = sqlite3_value_text(*a3);
  v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v10, v9);
  if (objc_msgSend___im_isParseableChatGUID(v23, v11, v12))
  {
    IMComponentsFromChatGUID();
    v13 = 0;
    v14 = 0;
    if (objc_msgSend_length(v13, v15, v16))
    {
      if (objc_msgSend_length(v14, v17, v18) && objc_msgSend_isEqualToString_(v14, v19, *MEMORY[0x1E69A7AC8]))
      {
        v20 = "verify_chat: invalid style";
      }

      else
      {
        v20 = "verify_chat: invalid service";
      }
    }

    else
    {
      v20 = "verify_chat: invalid chat identifier";
    }

    sqlite3_result_error(a1, v20, -1);

    goto LABEL_14;
  }

  sqlite3_result_error(a1, "verify_chat: invalid chat identifier (not parseable)", -1);
  v21 = *MEMORY[0x1E69E9840];
}

void _IMDSMSRecordStoreCustomFunctionGUIDForChat(sqlite3_context *a1, const char *a2, sqlite3_value **a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, a3);
  isOneChatEnabled = objc_msgSend_isOneChatEnabled(v5, v6, v7);

  if (isOneChatEnabled)
  {
    v9 = sqlite3_value_text(*a3);
    v10 = sqlite3_value_text(a3[1]);
    v11 = sqlite3_value_int(a3[2]);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v12, v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v14, v10);
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v27 = 138412802;
        v28 = v13;
        v29 = 2112;
        v30 = v15;
        v31 = 2048;
        v32 = v11;
        _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "chatIdentifier %@ service %@ style %lu", &v27, 0x20u);
      }
    }

    if (v13 && v15 && v11)
    {
      v17 = IMCopyGUIDForChat();
      v18 = v17;
      if (v17)
      {
        v19 = v17;
        v22 = objc_msgSend_UTF8String(v18, v20, v21);
        sqlite3_result_text(a1, v22, -1, 0xFFFFFFFFFFFFFFFFLL);
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            LOWORD(v27) = 0;
            _os_log_impl(&dword_1B7AD5000, v24, OS_LOG_TYPE_INFO, "Failed to create chat guid from non-null chat identifer and service.", &v27, 2u);
          }
        }

        sqlite3_result_error(a1, "_IMDSMSRecordStoreCustomFunctionGUIDForChat: Failed to create chat guid from non-null chat identifer and service.", -1);
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          LOWORD(v27) = 0;
          _os_log_impl(&dword_1B7AD5000, v25, OS_LOG_TYPE_INFO, "Failed to create chat guid due to a null chat identifier or service.", &v27, 2u);
        }
      }

      sqlite3_result_error(a1, "_IMDSMSRecordStoreCustomFunctionGUIDForChat: Failed to create chat guid due to a null chat identifier or service.", -1);
    }

    v26 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v23 = *MEMORY[0x1E69E9840];

    sqlite3_result_error(a1, "_IMDSMSRecordStoreCustomFunctionGUIDForChat: This should not be running when one chat is disabled.", -1);
  }
}

void _IMDSMSRecordStoreCustomFunctionIsMiCEnabled(sqlite3_context *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (IMIsRunningInUnitTesting())
  {
    BoolFromDomain_forKey = 1;
  }

  else
  {
    v5 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8018], v2, v3);
    BoolFromDomain_forKey = objc_msgSend_getBoolFromDomain_forKey_(v5, v6, *MEMORY[0x1E69A6D10], *MEMORY[0x1E69A6E00]);
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = @"NO";
      if (BoolFromDomain_forKey)
      {
        v9 = @"YES";
      }

      v15 = 138412290;
      v16 = v9;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "isEnabled returning = isCloudKitEnabled = %@", &v15, 0xCu);
    }
  }

  v10 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v7, BoolFromDomain_forKey);
  v13 = objc_msgSend_intValue(v10, v11, v12);
  sqlite3_result_int(a1, v13);

  v14 = *MEMORY[0x1E69E9840];
}

void _IMDSMSRecordStoreCustomFunctionDomainForService(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = sqlite3_value_text(*a3);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, v4);
  v7 = IMChatLookupDomainForServiceName();
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    v12 = objc_msgSend_UTF8String(v9, v10, v11);
    sqlite3_result_text(a1, v12, -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = v6;
        _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "No domain for service %@", &v15, 0xCu);
      }
    }

    sqlite3_result_null(a1);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t IMDAttachmentRecordCreateEphemeralRecord(uint64_t a1)
{
  IMDAttachmentRecordGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0;
    *(Instance + 24) = 0;
    Mutable = CFArrayCreateMutable(0, 23, 0);
    if (a1)
    {
      v5 = (*MEMORY[0x1E69990F8])(a1);
    }

    else
    {
      v5 = 0;
    }

    CFArraySetValueAtIndex(Mutable, 0, v5);
    *(v3 + 16) = 3735928559;
    v6 = 22;
    do
    {
      CFArrayAppendValue(Mutable, 0);
      --v6;
    }

    while (v6);
  }

  return v3;
}

uint64_t IMDAttachmentRecordCopyAttachmentRecordUnlocked(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7BFE918;
  v3[3] = &unk_1E7CB7368;
  v3[4] = &v4;
  v3[5] = a1;
  _IMDPerformLockedMessageStoreBlock(v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1B7BFE900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7BFE918(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = CSDBRecordStoreCopyInstanceOfClassWithUID();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDAttachmentRecordCopyAttachmentRecord(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7BFEA1C;
  v3[3] = &unk_1E7CB7368;
  v3[4] = &v4;
  v3[5] = a1;
  _IMDPerformLockedMessageStoreBlock(v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1B7BFEA04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7BFEA1C(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = CSDBRecordStoreCopyInstanceOfClassWithUID();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDAttachmentRecordDoesAttachmentWithGUIDExist(const __CFString *a1)
{
  v2 = IMDIsRunningInDatabaseServerProcess();
  v3 = &v8;
  if ((v2 & 1) == 0)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7BFEBBC;
    v7[3] = &unk_1E7CB6838;
    v7[4] = &v8;
    __syncXPCIMDAttachmentRecordDoesAttachmentWithGUIDExist_IPCAction(v7, a1);
LABEL_6:
    v3 = v9;
    goto LABEL_7;
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (a1)
  {
    if (CFStringGetLength(a1))
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = sub_1B7BFEBFC;
      v6[3] = &unk_1E7CB7520;
      v6[4] = &v8;
      v6[5] = a1;
      _IMDPerformLockedStatementBlockWithQuery(@"SELECT count(rowid) FROM Attachment where guid = ?", v6);
    }

    goto LABEL_6;
  }

LABEL_7:
  v4 = *(v3 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

BOOL sub_1B7BFEBBC(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_BOOL(xdict, "BOOL_result");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_1B7BFEBFC(uint64_t a1)
{
  v2 = *(a1 + 40);
  CSDBSqliteBindTextFromCFString();
  result = CSDBSqliteStatementIntegerResult();
  *(*(*(a1 + 32) + 8) + 24) = result > 0;
  return result;
}

CFStringRef IMDAttachmentRecordCopyAttachmentForGUIDIsLegacyGUID(CFStringRef theString, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = @"YES";
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "*** IMDAttachmentRecordCopyAttachmentForGUIDIsLegacyGUID called with isLegacyGUID %@", &buf, 0xCu);
      }
    }
  }

  if (theString)
  {
    if (CFStringGetLength(theString))
    {
      if (!IMDIsRunningInDatabaseServerProcess())
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v16 = 0x2020000000;
        v17 = 0;
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = sub_1B7BFEF84;
        v13[3] = &unk_1E7CB6838;
        v13[4] = &buf;
        __syncXPCIMDAttachmentRecordCopyAttachmentForGUID_IPCAction(v13, theString);
        theString = *(*(&buf + 1) + 24);
LABEL_22:
        _Block_object_dispose(&buf, 8);
        goto LABEL_23;
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v16 = 0x2020000000;
      v17 = 0;
      if (a2)
      {
        v5 = @"SELECT ROWID, guid, created_date, start_date, filename, uti, mime_type, transfer_state, is_outgoing, user_info, transfer_name, total_bytes, is_sticker, sticker_user_info, attribution_info, hide_attachment, ck_sync_state, ck_server_change_token_blob, ck_record_id, original_guid, is_commsafety_sensitive, emoji_image_content_identifier, emoji_image_short_description, preview_generation_state FROM attachment WHERE original_guid = ? ORDER BY ROWID DESC;";
      }

      else
      {
        v5 = @"SELECT ROWID, guid, created_date, start_date, filename, uti, mime_type, transfer_state, is_outgoing, user_info, transfer_name, total_bytes, is_sticker, sticker_user_info, attribution_info, hide_attachment, ck_sync_state, ck_server_change_token_blob, ck_record_id, original_guid, is_commsafety_sensitive, emoji_image_content_identifier, emoji_image_short_description, preview_generation_state FROM attachment WHERE guid = ? ORDER BY ROWID DESC;";
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1B7BFEF20;
      v14[3] = &unk_1E7CB7520;
      v14[4] = &buf;
      v14[5] = theString;
      _IMDPerformLockedStatementBlockWithQuery(v5, v14);
      v6 = *(*(&buf + 1) + 24);
      if (v6)
      {
        Count = CFArrayGetCount(v6);
        if (Count >= 2)
        {
          v8 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            sub_1B7CFD6C8();
          }

          goto LABEL_18;
        }

        if (Count == 1)
        {
LABEL_18:
          CFArrayGetValueAtIndex(*(*(&buf + 1) + 24), 0);
          ID = CSDBRecordGetID();
          theString = IMDAttachmentRecordCreateFromRecordIDUnlocked(*MEMORY[0x1E695E480], ID);
          goto LABEL_20;
        }
      }

      theString = 0;
LABEL_20:
      v10 = *(*(&buf + 1) + 24);
      if (v10)
      {
        CFRelease(v10);
      }

      goto LABEL_22;
    }

    theString = 0;
  }

LABEL_23:
  v11 = *MEMORY[0x1E69E9840];
  return theString;
}

uint64_t sub_1B7BFEF20(uint64_t a1)
{
  v2 = *(a1 + 40);
  CSDBSqliteBindTextFromCFString();
  result = CSDBRecordStoreProcessStatement();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_1B7BFEF84(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDAttachmentRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDAttachmentRecordRowIDForGUID(const __CFString *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  if (!IMDIsRunningInDatabaseServerProcess())
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_1B7BFF3F8;
    v23[3] = &unk_1E7CB6838;
    v23[4] = &v30;
    __syncXPCIMDAttachmentRecordRIDForGUID_IPCAction(v23, a1);
    v11 = v31[3];
LABEL_21:
    _Block_object_dispose(&v30, 8);
    goto LABEL_22;
  }

  v2 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1B7CFD738();
  }

  if (a1 && CFStringGetLength(a1))
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0xD010000000;
    v33 = "";
    memset(v34, 0, sizeof(v34));
    IMDSqlOperationInitWithSharedCSDBDatabase(v34);
    IMDSqlOperationBeginTransaction(v31 + 4);
    v25 = 0;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v27 = sub_1B7BFF388;
    v28 = &unk_1E7CB6EA8;
    v29 = &v30;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1B7BFF3E8;
    v24[3] = &unk_1E7CBD8A8;
    v24[4] = a1;
    RowsForQueryWithBindingBlock = _IMDSqlOperationGetRowsForQueryWithBindingBlock(@"SELECT ROWID FROM attachment WHERE guid = ? LIMIT 1;", &v25, v24);
    v6 = RowsForQueryWithBindingBlock;
    if (v25)
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_20;
      }

      v7 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        goto LABEL_20;
      }

      *buf = 138412290;
      v36 = v25;
      v8 = "kIMDAttachmentRecordGetAttachmentRowIDForGUID returned error %@";
      v9 = v7;
      v10 = 12;
    }

    else
    {
      if (objc_msgSend_count(RowsForQueryWithBindingBlock, v4, v5))
      {
        Object = objc_msgSend_firstObject(v6, v12, v13);
        v16 = objc_msgSend_objectForKey_(Object, v15, @"ROWID");
        v11 = objc_msgSend_integerValue(v16, v17, v18);
        v19 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v36 = v11;
          v37 = 2112;
          v38 = a1;
          _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_DEFAULT, "Got ROWID %lu for GUID %@", buf, 0x16u);
        }

        v27(v26);
        goto LABEL_21;
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_20;
      }

      v20 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        goto LABEL_20;
      }

      *buf = 0;
      v8 = "kIMDAttachmentRecordGetAttachmentRowIDForGUID returned zero results";
      v9 = v20;
      v10 = 2;
    }

    _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, v8, buf, v10);
LABEL_20:

    v27(v26);
    v11 = 0;
    goto LABEL_21;
  }

  v11 = 0;
LABEL_22:
  v21 = *MEMORY[0x1E69E9840];
  return v11;
}

void sub_1B7BFF368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1B7BFF388(uint64_t a1)
{
  IMDSqlOperationFinishQuery(*(*(a1 + 32) + 8) + 32);
  IMDSqlOperationCommitOrRevertTransaction((*(*(a1 + 32) + 8) + 32));
  v2 = *(*(a1 + 32) + 8) + 32;

  return IMDSqlOperationRelease(v2, 0);
}

int64_t sub_1B7BFF3F8(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_int64(xdict, "rrid");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDAttachmentRecordCopyMessageForAttachmentGUID(const __CFString *a1)
{
  v57 = *MEMORY[0x1E69E9840];
  if (!IMDIsRunningInDatabaseServerProcess())
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v54 = 0x2020000000;
    v55 = 0;
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = sub_1B7BFFAF4;
    v43[3] = &unk_1E7CB6838;
    v43[4] = &buf;
    __syncXPCIMDAttachmentRecordCopyMessageForAttachmentGUID_IPCAction(v43, a1);
    v11 = *(*(&buf + 1) + 24);
LABEL_37:
    _Block_object_dispose(&buf, 8);
    goto LABEL_38;
  }

  v2 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = a1;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "Getting message record for attachment guid %@", &buf, 0xCu);
  }

  if (a1 && CFStringGetLength(a1))
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v54 = 0xD010000000;
    v55 = "";
    memset(v56, 0, 176);
    IMDSqlOperationInitWithSharedCSDBDatabase(v56);
    IMDSqlOperationBeginTransaction((*(&buf + 1) + 32));
    v46 = 0;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v48 = sub_1B7BFFA74;
    v49 = &unk_1E7CB6EA8;
    p_buf = &buf;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = sub_1B7BFFAD4;
    v45[3] = &unk_1E7CBD8A8;
    v45[4] = a1;
    RowsForQueryWithBindingBlock = _IMDSqlOperationGetRowsForQueryWithBindingBlock(@"SELECT ROWID FROM attachment WHERE guid = ? LIMIT 1;", &v46, v45);
    v4 = RowsForQueryWithBindingBlock;
    if (v46)
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_35;
      }

      v7 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        goto LABEL_35;
      }

      *v51 = 138412290;
      v52 = v46;
      v8 = "kIMDAttachmentRecordGetAttachmentRowIDForGUID returned error %@";
      v9 = v7;
      v10 = 12;
LABEL_10:
      _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, v8, v51, v10);
LABEL_35:
      v48(v47);
      goto LABEL_36;
    }

    if (!objc_msgSend_count(RowsForQueryWithBindingBlock, v5, v6))
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_35;
      }

      v29 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        goto LABEL_35;
      }

      *v51 = 0;
      v8 = "kIMDAttachmentRecordGetAttachmentRowIDForGUID returned zero results";
      v9 = v29;
      v10 = 2;
      goto LABEL_10;
    }

    Object = objc_msgSend_firstObject(RowsForQueryWithBindingBlock, v12, v13);
    v16 = objc_msgSend_objectForKey_(Object, v15, @"ROWID");
    v19 = objc_msgSend_integerValue(v16, v17, v18);
    v20 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v51 = 134217984;
      v52 = v19;
      _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_DEFAULT, "Looking up message ID that corresponds to attachment ID %lld", v51, 0xCu);
    }

    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = sub_1B7BFFAE4;
    v44[3] = &unk_1E7CBD8A8;
    v44[4] = v19;
    v21 = _IMDSqlOperationGetRowsForQueryWithBindingBlock(@"SELECT message_id FROM message_attachment_join WHERE attachment_id = ?;", &v46, v44);
    v22 = v21;
    if (v46)
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_34;
      }

      v25 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        goto LABEL_34;
      }

      *v51 = 138412290;
      v52 = v46;
      v26 = "kIMDAttachmentRecordGetMessageIDFromAttachmentID returned error %@";
      v27 = v25;
      v28 = 12;
    }

    else
    {
      if (objc_msgSend_count(v21, v23, v24))
      {
        v32 = objc_msgSend_firstObject(v21, v30, v31);
        v34 = objc_msgSend_objectForKey_(v32, v33, @"message_id");
        v37 = objc_msgSend_integerValue(v34, v35, v36);
        v38 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *v51 = 134217984;
          v52 = v37;
          _os_log_impl(&dword_1B7AD5000, v38, OS_LOG_TYPE_DEFAULT, "Looking up message record corresponding to %lld", v51, 0xCu);
        }

        v11 = IMDMessageRecordCopyMessageForRowID(v37);
        IMDSqlOperationFinishQuery(*(&buf + 1) + 32);
        IMDSqlOperationCommitOrRevertTransaction((*(&buf + 1) + 32));
        IMDSqlOperationRelease(*(&buf + 1) + 32, 0);
        if (v11)
        {
          goto LABEL_37;
        }

        if (IMOSLoggingEnabled())
        {
          v39 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            *v51 = 134217984;
            v52 = v37;
            _os_log_impl(&dword_1B7AD5000, v39, OS_LOG_TYPE_INFO, "Failed to look up message record for messsage_id %llu", v51, 0xCu);
          }
        }

        goto LABEL_36;
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_34;
      }

      v40 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        goto LABEL_34;
      }

      *v51 = 0;
      v26 = "kIMDAttachmentRecordGetMessageIDFromAttachmentID returned zero results";
      v27 = v40;
      v28 = 2;
    }

    _os_log_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_INFO, v26, v51, v28);
LABEL_34:
    v48(v47);
LABEL_36:
    v11 = 0;
    goto LABEL_37;
  }

  v11 = 0;
LABEL_38:
  v41 = *MEMORY[0x1E69E9840];
  return v11;
}

BOOL sub_1B7BFFA74(uint64_t a1)
{
  IMDSqlOperationFinishQuery(*(*(a1 + 32) + 8) + 32);
  IMDSqlOperationCommitOrRevertTransaction((*(*(a1 + 32) + 8) + 32));
  v2 = *(*(a1 + 32) + 8) + 32;

  return IMDSqlOperationRelease(v2, 0);
}

uint64_t sub_1B7BFFAF4(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDMessageRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDAttachmentRecordCopyAttachmentStickers(int64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x3052000000;
    v39 = sub_1B7AE1B50;
    v40 = sub_1B7AE25B8;
    v41 = 0;
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v43[3] = Mutable;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = sub_1B7BFFEC8;
    v35[3] = &unk_1E7CB7998;
    v35[4] = &v36;
    v35[5] = @"SELECT sticker_user_info, filename, created_date, attribution_info FROM attachment a INNER JOIN message_attachment_join ma ON a.ROWID = ma.attachment_id INNER JOIN message m ON ma.message_id = m.ROWID WHERE a.sticker_user_info IS NOT NULL AND m.is_from_me=1 AND a.transfer_state=5 GROUP BY filename ORDER BY a.ROWID DESC LIMIT ?;";
    v35[6] = a1;
    IMDRunSqlOperation(v35);
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v37[5];
    v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v31, v46, 16);
    if (v5)
    {
      v29 = *v32;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v32 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v31 + 1) + 8 * i);
          objc_msgSend_valueForKey_(v7, v4, @"attribution_info");
          v8 = JWDecodeDictionary();
          v10 = objc_msgSend_valueForKey_(v8, v9, @"accessl");
          v12 = MEMORY[0x1E695DF20];
          if (v10)
          {
            v13 = objc_msgSend_valueForKey_(v7, v11, @"filename");
            v15 = objc_msgSend_valueForKey_(v7, v14, @"sticker_user_info");
            v17 = objc_msgSend_valueForKey_(v7, v16, @"created_date");
            v19 = objc_msgSend_valueForKey_(v8, v18, @"accessl");
          }

          else
          {
            v13 = objc_msgSend_valueForKey_(v7, v11, @"filename");
            v15 = objc_msgSend_valueForKey_(v7, v21, @"sticker_user_info");
            v17 = objc_msgSend_valueForKey_(v7, v22, @"created_date");
            v19 = objc_msgSend_valueForKey_(v7, v23, @"filename");
          }

          v24 = objc_msgSend_dictionaryWithObjectsAndKeys_(v12, v20, v13, @"filename", v15, @"sticker_user_info", v17, @"created_date", v19, @"accessibility_string", 0);
          CFArrayAppendValue(v43[3], v24);
        }

        v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v31, v46, 16);
      }

      while (v5);
    }

    _Block_object_dispose(&v36, 8);
  }

  else
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = sub_1B7BFFF64;
    v30[3] = &unk_1E7CB6838;
    v30[4] = &v42;
    __syncXPCIMDAttachmentRecordCopyStickers_IPCAction(v30, a1);
  }

  v25 = v43[3];
  _Block_object_dispose(&v42, 8);
  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

void sub_1B7BFFE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 256), 8);
  _Unwind_Resume(a1);
}

sqlite3_stmt **sub_1B7BFFEC8(void *a1, sqlite3_stmt **a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BFFF58;
  v7[3] = &unk_1E7CB75B0;
  v4 = a1[5];
  v5 = a1[6];
  v7[4] = a2;
  v7[5] = v5;
  result = _IMDSqlOperationGetRowsWithBindingBlock(a2, v4, v7);
  *(*(a1[4] + 8) + 40) = result;
  return result;
}

void sub_1B7BFFF64(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "array_result");
  if (value)
  {
    v4 = value;
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    count = xpc_array_get_count(v4);
    if (count)
    {
      v6 = count;
      for (i = 0; i != v6; ++i)
      {
        xpc_array_get_dictionary(v4, i);
        v8 = IMGetXPCStringFromDictionary();
        v9 = IMGetXPCDataFromDictionary();
        v10 = IMGetXPCIntFromDictionary();
        v11 = IMGetXPCStringFromDictionary();
        v12 = MEMORY[0x1E695DF20];
        v14 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v13, v10);
        v16 = objc_msgSend_dictionaryWithObjectsAndKeys_(v12, v15, v8, @"filename", v9, @"sticker_user_info", v14, @"created_date", v11, @"accessibility_string", 0);
        CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v16);
      }
    }
  }
}

const void *IMDAttachmentCopyAttachmentWithStickerPath(CFStringRef theString)
{
  v18 = *MEMORY[0x1E69E9840];
  if (theString && CFStringGetLength(theString) > 0)
  {
    if (!IMDIsRunningInDatabaseServerProcess())
    {
      *&v15 = 0;
      *(&v15 + 1) = &v15;
      v16 = 0x2020000000;
      v17 = 0;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1B7C00418;
      v11[3] = &unk_1E7CB6838;
      v11[4] = &v15;
      __syncXPCIMDAttachmentRecordCopyStickerAttachmentForStickerCachePath_IPCAction(v11, theString);
      v6 = *(*(&v15 + 1) + 24);
LABEL_19:
      _Block_object_dispose(&v15, 8);
      goto LABEL_20;
    }

    *&v15 = 0;
    *(&v15 + 1) = &v15;
    v16 = 0x2020000000;
    v17 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1B7C003B4;
    v12[3] = &unk_1E7CB7520;
    v12[4] = &v15;
    v12[5] = theString;
    _IMDPerformLockedStatementBlockWithQuery(@"SELECT ROWID, guid, created_date, start_date, filename, uti, mime_type, transfer_state, is_outgoing, user_info, transfer_name, total_bytes, is_sticker, sticker_user_info, attribution_info, hide_attachment, ck_sync_state, ck_server_change_token_blob, ck_record_id, original_guid, is_commsafety_sensitive, emoji_image_content_identifier, emoji_image_short_description, preview_generation_state FROM attachment WHERE filename LIKE ?;", v12);
    v2 = *(*(&v15 + 1) + 24);
    if (v2)
    {
      Count = CFArrayGetCount(v2);
      if (Count >= 2)
      {
        if (IMOSLoggingEnabled())
        {
          v4 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v14 = theString;
            _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "There appears to be more than one sticker with sticker path [%@]", buf, 0xCu);
          }
        }

        goto LABEL_15;
      }

      if (Count == 1)
      {
LABEL_15:
        CFArrayGetValueAtIndex(*(*(&v15 + 1) + 24), 0);
        ID = CSDBRecordGetID();
        v6 = IMDAttachmentRecordCreateFromRecordIDUnlocked(*MEMORY[0x1E695E480], ID);
        goto LABEL_17;
      }
    }

    v6 = 0;
LABEL_17:
    v8 = *(*(&v15 + 1) + 24);
    if (v8)
    {
      CFRelease(v8);
    }

    goto LABEL_19;
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LODWORD(v15) = 138412290;
      *(&v15 + 4) = theString;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Invalid parameter to IMDAttachmentCountAttachmentsWithStickerPath stickerCachePath %@", &v15, 0xCu);
    }
  }

  v6 = 0;
LABEL_20:
  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_1B7C003B4(uint64_t a1)
{
  v2 = *(a1 + 40);
  CSDBSqliteBindTextFromCFString();
  result = CSDBRecordStoreProcessStatement();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_1B7C00418(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDAttachmentRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t _IMDAttachmentRecordProcessStickerPathAttachmentCount(uint64_t result)
{
  if (!result)
  {
    return -1;
  }

  return result;
}

uint64_t IMDAttachmentRecordDoesStickerPathHaveAttachments(CFStringRef theString)
{
  v11 = *MEMORY[0x1E69E9840];
  if (theString && CFStringGetLength(theString) > 0)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v9 = 0x2020000000;
    v10 = 0;
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = sub_1B7C00658;
      v7[3] = &unk_1E7CB7520;
      v7[4] = &buf;
      v7[5] = theString;
      _IMDPerformLockedStatementBlockWithQuery(@"SELECT count(rowid) FROM Attachment WHERE is_sticker = 1 AND filename LIKE ?;", v7);
    }

    else
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = sub_1B7C006AC;
      v6[3] = &unk_1E7CB6838;
      v6[4] = &buf;
      __syncXPCIMDAttachmentRecordDoesStickerPathHaveAttachments_IPCAction(v6, theString);
    }

    v3 = *(*(&buf + 1) + 24);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = theString;
        _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Invalid parameter to IMDAttachmentCountAttachmentsWithStickerPath stickerCachePath %@", &buf, 0xCu);
      }
    }

    v3 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1B7C00658(uint64_t a1)
{
  v2 = *(a1 + 40);
  CSDBSqliteBindTextFromCFString();
  result = CSDBSqliteStatementIntegerResult();
  if (result)
  {
    v4 = result;
  }

  else
  {
    v4 = -1;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

int64_t sub_1B7C006AC(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_int64(xdict, "int64_result");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

CFStringRef IMDAttachmentRecordCopyAttachmentForGUIDUnlocked(CFStringRef theString)
{
  v1 = theString;
  if (!theString)
  {
    return v1;
  }

  if (!CFStringGetLength(theString))
  {
    return 0;
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7C00860;
  v8[3] = &unk_1E7CB7520;
  v8[4] = &v9;
  v8[5] = v1;
  _IMDPerformLockedStatementBlockWithQuery(@"SELECT ROWID, guid, created_date, start_date, filename, uti, mime_type, transfer_state, is_outgoing, user_info, transfer_name, total_bytes, is_sticker, sticker_user_info, attribution_info, hide_attachment, ck_sync_state, ck_server_change_token_blob, ck_record_id, original_guid, is_commsafety_sensitive, emoji_image_content_identifier, emoji_image_short_description, preview_generation_state FROM attachment WHERE guid = ? ORDER BY ROWID DESC;", v8);
  v2 = v10[3];
  if (!v2)
  {
    goto LABEL_10;
  }

  Count = CFArrayGetCount(v2);
  if (Count >= 2)
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFD6C8();
    }

    goto LABEL_9;
  }

  if (Count != 1)
  {
LABEL_10:
    v1 = 0;
    goto LABEL_11;
  }

LABEL_9:
  CFArrayGetValueAtIndex(v10[3], 0);
  ID = CSDBRecordGetID();
  v1 = IMDAttachmentRecordCreateFromRecordIDUnlocked(*MEMORY[0x1E695E480], ID);
LABEL_11:
  v6 = v10[3];
  if (v6)
  {
    CFRelease(v6);
  }

  _Block_object_dispose(&v9, 8);
  return v1;
}

void sub_1B7C00838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7C00860(uint64_t a1)
{
  v2 = *(a1 + 40);
  CSDBSqliteBindTextFromCFString();
  result = CSDBRecordStoreProcessStatement();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDAttachmentRecordCopyRecentFilenames(int64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1B7C00ADC;
    v4[3] = &unk_1E7CB7520;
    v4[4] = &v6;
    v4[5] = a1;
    _IMDPerformLockedStatementBlockWithQuery(@"SELECT filename from attachment where mime_type in (image/jpeg, image/png, image/gif)  order by ROWID DESC LIMIT ?", v4);
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1B7C00A08;
    v5[3] = &unk_1E7CB6838;
    v5[4] = &v6;
    __syncXPCIMDAttachmentRecordCopyRecentFilenames_IPCAction(v5, a1);
  }

  v2 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v2;
}

void sub_1B7C00A08(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "array_result");
  if (value)
  {
    v4 = value;
    count = xpc_array_get_count(value);
    if (count)
    {
      v6 = count;
      v7 = 0;
      v8 = MEMORY[0x1E695E9C0];
      do
      {
        if (!*(*(*(a1 + 32) + 8) + 24))
        {
          *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, v8);
        }

        string = xpc_array_get_string(v4, v7);
        if (string)
        {
          v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v10, string);
          if (v11)
          {
            CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v11);
          }
        }

        ++v7;
      }

      while (v6 != v7);
    }
  }
}

uint64_t sub_1B7C00ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  CSDBSqliteBindInt64();
  result = sqlite3_step(*(a4 + 8));
  if (result == 100)
  {
    v8 = *MEMORY[0x1E695E480];
    v9 = MEMORY[0x1E695E9C0];
    do
    {
      if (sqlite3_column_text(*(a4 + 8), 0))
      {
        v10 = sqlite3_column_text(*(a4 + 8), 0);
        v11 = CFStringCreateWithCString(v8, v10, 0x8000100u);
        if (v11)
        {
          v12 = v11;
          v13 = *(*(*(a1 + 32) + 8) + 24);
          if (!v13)
          {
            *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, v9);
            v13 = *(*(*(a1 + 32) + 8) + 24);
          }

          CFArrayAppendValue(v13, v12);
          CFRelease(v12);
        }
      }

      result = sqlite3_step(*(a4 + 8));
    }

    while (result == 100);
  }

  return result;
}

void IMDAttachmentRecordMarkAttachmentWithROWIDWithSyncState(sqlite3_int64 a1, sqlite3_int64 a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v7[0]) = 134217984;
    *(v7 + 4) = a1;
    _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEFAULT, "Request to mark attachment with ROWID %lld as failed to upload to cloudKit", v7, 0xCu);
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    memset(v8, 0, sizeof(v8));
    memset(v7, 0, sizeof(v7));
    IMDSqlOperationInitWithSharedCSDBDatabase(v7);
    _IMDSqlOperationBeginQuery(v7, @"update attachment set ck_sync_state = ? where rowid=?");
    IMDSqlStatementBindInt64(v8, a2);
    IMDSqlStatementBindInt64(v8, a1);
    IMDSqlOperationFinishQuery(v7);
    IMDSqlOperationRelease(v7, 0);
  }

  else
  {
    __syncXPCIMDAttachmentRecordMarkAttachmentWithROWIDWithSyncState_IPCAction(0, a1, a2);
  }

  v5 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v7[0]) = 134217984;
    *(v7 + 4) = a1;
    _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_DEFAULT, "Finished marking attachment with ROWID %lld as failed to upload (2)", v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void IMDAttachmentRecordMarkAttachmentWithROWIDAsSyncedWithCloudKit(sqlite3_int64 a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v5[0]) = 134217984;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "Request to mark attachment with ROWID %lld as clean", v5, 0xCu);
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    memset(v6, 0, sizeof(v6));
    memset(v5, 0, sizeof(v5));
    IMDSqlOperationInitWithSharedCSDBDatabase(v5);
    _IMDSqlOperationBeginQuery(v5, @"update attachment set ck_sync_state = 1,transfer_state = 5 where rowid=?");
    IMDSqlStatementBindInt64(v6, a1);
    IMDSqlOperationFinishQuery(v5);
    IMDSqlOperationRelease(v5, 0);
  }

  else
  {
    __syncXPCIMDAttachmentRecordMarkAttachmentWithROWIDAsSyncedWithCloudKit_IPCAction(0, a1);
  }

  v3 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v5[0]) = 134217984;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_DEFAULT, "Finished marking attachment with ROWID %lld as clean", v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void IMDAttachmentRecordMarkAllAttachmentsAsNeedingCloudKitSync()
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    if (IMOSLoggingEnabled())
    {
      v0 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
      {
        LOWORD(v2[0]) = 0;
        _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_INFO, "IMDAttachmentRecordMarkAllAttachmentsAsNeedingCloudKitSync", v2, 2u);
      }
    }

    memset(v2, 0, sizeof(v2));
    IMDSqlOperationInitWithSharedCSDBDatabase(v2);
    IMDSqlOperationExecuteQuery(v2, @"update attachment set ck_sync_state=0, ck_server_change_token_blob='', ck_record_id='';", &unk_1F2FA0650);
    IMDSqlOperationRelease(v2, 0);
  }

  else
  {
    __syncXPCIMDAttachmentRecordMarkAllAttachmentsAsNeedingCloudKitSync_IPCAction(0);
    if (IMOSLoggingEnabled())
    {
      v1 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
      {
        LOWORD(v2[0]) = 0;
        _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_INFO, "Returned from DB call after marking all attachments as dirty.", v2, 2u);
      }
    }
  }
}

void sub_1B7C00FF4()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v1 = 0;
      _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_INFO, "IMDAttachmentRecordMarkAllAttachmentsAsNeedingCloudKitSync updated attachments as dirty ", v1, 2u);
    }
  }
}

void IMDAttachmentResetAllAttachmentsInFailedCloudDownloadState()
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    if (IMOSLoggingEnabled())
    {
      v0 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
      {
        LOWORD(v2[0]) = 0;
        _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_INFO, "IMDAttachmentResetAllAttachmentsInFailedCloudDownloadState", v2, 2u);
      }
    }

    memset(v2, 0, sizeof(v2));
    IMDSqlOperationInitWithSharedCSDBDatabase(v2);
    IMDSqlOperationExecuteQuery(v2, @"UPDATE attachment SET ck_sync_state == 1 WHERE ck_sync_state == 5;", &unk_1F2F9FA90);
    IMDSqlOperationExecuteQuery(v2, @"UPDATE attachment SET ck_sync_state=0 where ck_sync_state in (2,3,5) OR (ck_sync_state==1 AND guid not like at_%);", &unk_1F2FA1530);
    IMDSqlOperationRelease(v2, 0);
  }

  else
  {
    __syncXPCIMDAttachmentResetAllAttachmentsInFailedCloudDownloadState_IPCAction(0);
    if (IMOSLoggingEnabled())
    {
      v1 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
      {
        LOWORD(v2[0]) = 0;
        _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_INFO, "IMDAttachmentResetAllAttachmentsInFailedCloudDownloadState Returned from DB call after resetting all failed cloud attachment downloads.", v2, 2u);
      }
    }
  }
}

void sub_1B7C01208()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v1 = 0;
      _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_INFO, "IMDAttachmentResetAllAttachmentsInFailedCloudDownloadState update all failed cloud attachment downloads ", v1, 2u);
    }
  }
}

void sub_1B7C012A8()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v1 = 0;
      _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_INFO, "IMDAttachmentResetAllAttachmentsInFailedCloudDownloadState reset all failed cloud attachments ", v1, 2u);
    }
  }
}

uint64_t IMDAttachmentRecordGetNonSyncedAttachmentDiskSpace()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_DEFAULT, "Request to fetch the non synced attachment disk space", buf, 2u);
  }

  *buf = 0;
  v9 = buf;
  v10 = 0x2020000000;
  v11 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7C01534;
    v7[3] = &unk_1E7CB7390;
    v7[4] = buf;
    _IMDPerformLockedStatementBlockWithQuery(@"SELECT sum(total_bytes) FROM attachment WHERE ck_sync_state != 1 AND hide_attachment == 0 ORDER BY created_date ASC;", v7);
    v1 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v2 = *(v9 + 3);
      *v12 = 134217984;
      v13 = v2;
      _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_DEFAULT, "Returning non synced attachment disk space with: %lld bytes", v12, 0xCu);
    }
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1B7C0156C;
    v6[3] = &unk_1E7CB6838;
    v6[4] = buf;
    __syncXPCIMDAttachmentRecordGetNonSyncedAttachmentDiskSpace_IPCAction(v6);
  }

  v3 = *(v9 + 3);
  _Block_object_dispose(buf, 8);
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_1B7C01514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7C01534(uint64_t a1)
{
  result = CSDBSqliteStatementInteger64Result();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

int64_t sub_1B7C0156C(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_int64(xdict, "diskSpace");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDAttachmentRecordGetPurgeableDiskSpace()
{
  v43 = *MEMORY[0x1E69E9840];
  v0 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_DEFAULT, "Request to fetch the purgeable disk space", buf, 2u);
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    *buf = 0u;
    v23 = 0u;
    IMDSqlOperationInitWithSharedCSDBDatabase(buf);
    _IMDSqlOperationBeginQuery(buf, @"SELECT filename, total_bytes FROM attachment WHERE ck_sync_state == 1 AND transfer_state == 5 AND ck_server_change_token_blob != '' AND ck_server_change_token_blob NOT NULL;");
    v1 = 0;
    v2 = 0;
    while (IMDSqlOperationHasRows(buf))
    {
      IMDSqlOperationColumnByIndex(buf, 0, v37);
      v3 = IMDStringFromSqlColumn(v37);
      IMDSqlOperationColumnByIndex(buf, 1, v37);
      v4 = IMDInt64FromSqlColumn(v37);
      if (objc_msgSend_length(v3, v5, v6) && (v9 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v7, v8), v11 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v3, v10, @"~", @"/var/mobile"), objc_msgSend_fileExistsAtPath_(v9, v12, v11)))
      {
        v34[3] += v4;
        ++v2;
      }

      else
      {
        v13 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v15 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v3, v14, @"~", @"/var/mobile");
          *v37 = 138412290;
          v38 = v15;
          _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_DEFAULT, "File does not exist at path %@", v37, 0xCu);
        }
      }

      ++v1;
    }

    IMDSqlOperationFinishQuery(buf);
    IMDSqlOperationRelease(buf, 0);
    v16 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v34[3];
      *v37 = 134218496;
      v38 = v17;
      v39 = 2048;
      v40 = v2;
      v41 = 2048;
      v42 = v1;
      _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_DEFAULT, "returning purgeable disk space results (%lld) to delete number of attachments to delete (%lld) number of attachments total (%lld) ", v37, 0x20u);
    }
  }

  else
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1B7C018F4;
    v21[3] = &unk_1E7CB6838;
    v21[4] = &v33;
    __syncXPCIMDAttachmentRecordGetPurgeableDiskSpace_IPCAction(v21);
  }

  v18 = v34[3];
  _Block_object_dispose(&v33, 8);
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

int64_t sub_1B7C018F4(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_int64(xdict, "purgeableDiskSpace");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDAttachmentRecordCopyAttachmentsToMetricForDiskSpace(int64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "Request to copy attachments to metric what we would purge", buf, 2u);
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    *buf = 0;
    v15 = buf;
    v16 = 0x2020000000;
    LODWORD(v17) = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1B7C01B9C;
    v13[3] = &unk_1E7CB7390;
    v13[4] = buf;
    _IMDPerformLockedStatementBlockWithQuery(@"SELECT COUNT(*) FROM attachment WHERE ck_sync_state == 1 AND transfer_state == 5 AND ck_server_change_token_blob != '' AND ck_server_change_token_blob NOT NULL;", v13);
    v3 = arc4random_uniform(*(v15 + 6));
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v5, v3);
      v8 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v7, *(v15 + 6));
      *v18 = 138412546;
      v19 = v6;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEFAULT, "Offset we are choosing: %@ number of available records: %@", v18, 0x16u);
    }

    v9 = IMDAttachmentRecordCopyAttachmentsToPurgeForDiskSpace(a1, v3);
  }

  else
  {
    *buf = 0;
    v15 = buf;
    v16 = 0x2020000000;
    v17 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1B7C01F50;
    v12[3] = &unk_1E7CB6838;
    v12[4] = buf;
    __syncXPCIMDAttachmentRecordCopyAttachmentsToMetricForDiskSpace_IPCAction(v12, a1);
    v9 = *(v15 + 3);
  }

  _Block_object_dispose(buf, 8);
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_1B7C01B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7C01B9C(uint64_t a1)
{
  result = CSDBSqliteStatementIntegerResult();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDAttachmentRecordCopyAttachmentsToPurgeForDiskSpace(int64_t a1, int a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = a1;
    *&buf[12] = 1024;
    *&buf[14] = a2;
    _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEFAULT, "Request to copy attachments to purge from disk that have been synced to CloudKit with bytes to free up: %lld starting offset: %d", buf, 0x12u);
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x2020000000;
    v28 = a2;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = a1 < 1;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v14 = sub_1B7C02718;
    v15 = &unk_1E7CBD920;
    v22 = a2;
    v16 = v27;
    v17 = &v23;
    v20 = @"SELECT ROWID, guid, created_date, start_date, filename, uti, mime_type, transfer_state, is_outgoing, user_info, transfer_name, total_bytes, is_sticker, sticker_user_info, attribution_info, hide_attachment, ck_sync_state, ck_server_change_token_blob, ck_record_id, original_guid, is_commsafety_sensitive, emoji_image_content_identifier, emoji_image_short_description, preview_generation_state FROM attachment WHERE ck_sync_state == 1 AND transfer_state == 5 AND ck_server_change_token_blob != '' AND ck_server_change_token_blob NOT NULL ORDER BY created_date ASC LIMIT ? OFFSET ?;";
    v21 = a1;
    v18 = &v29;
    v19 = buf;
    while ((v24[3] & 1) == 0)
    {
      v5 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = a1 - v30[3];
        *v33 = 134217984;
        v34 = v6;
        _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_DEFAULT, "Going to try and free up disk space with remaining bytes to free up: %lld", v33, 0xCu);
      }

      v14(v13);
    }

    v8 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      Count = CFArrayGetCount(*(*&buf[8] + 24));
      *v33 = 67109120;
      LODWORD(v34) = Count;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_DEFAULT, "returning results (%d) to delete ", v33, 8u);
    }

    v7 = *(*&buf[8] + 24);
    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(v27, 8);
    _Block_object_dispose(&v29, 8);
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    Mutable = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1B7C02A1C;
    v12[3] = &unk_1E7CB6838;
    v12[4] = buf;
    __syncXPCIMDAttachmentRecordCopyAttachmentsToPurgeForDiskSpace_IPCAction(v12, a1, a2);
    v7 = *(*&buf[8] + 24);
  }

  _Block_object_dispose(buf, 8);
  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1B7C01EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B7C01F50(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "array_result");
  if (value)
  {
    v4 = value;
    count = xpc_array_get_count(value);
    if (count)
    {
      v6 = count;
      v7 = 0;
      v8 = MEMORY[0x1E695E9C0];
      do
      {
        if (!*(*(*(a1 + 32) + 8) + 24))
        {
          *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, v8);
        }

        v9 = xpc_array_get_value(v4, v7);
        v10 = _IMDCopyIMDAttachmentRecordFromXPCObjectClient(v9);
        CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v10);
        if (v10)
        {
          CFRelease(v10);
        }

        ++v7;
      }

      while (v6 != v7);
    }
  }
}

__CFDictionary *IMDAttachmentRecordCopyMostRecentAttachmentsInMostRecentChatsTest(int64_t a1, int64_t a2)
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x3052000000;
    v34 = sub_1B7AE1B50;
    v35 = sub_1B7AE25B8;
    v36 = objc_msgSend_array(MEMORY[0x1E695DEC8], v4, v5);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = sub_1B7C02434;
    v30[3] = &unk_1E7CB7998;
    v30[4] = &v31;
    v30[5] = @"SELECT DISTINCT chat_id FROM (SELECT chat_id,message_date FROM chat_message_join ORDER BY message_date desc) ORDER BY message_date DESC LIMIT ?;";
    v30[6] = a1;
    IMDRunSqlOperation(v30);
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v9 = 0;
    v10 = *MEMORY[0x1E695E480];
    while (v9 < objc_msgSend_count(v32[5], v6, v7))
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = objc_msgSend_objectAtIndexedSubscript_(v32[5], v11, v9);
      v15 = objc_msgSend_valueForKey_(v13, v14, @"chat_id");
      v17 = objc_msgSend_stringWithFormat_(v12, v16, @"%@", v15);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = sub_1B7C024D0;
      v29[3] = &unk_1E7CBD018;
      v29[4] = v17;
      v29[5] = &v37;
      v29[6] = a2;
      _IMDPerformLockedStatementBlockWithQuery(@"SELECT a.ROWID, a.guid, a.is_sticker, a.transfer_name, a.filename FROM attachment a JOIN (SELECT ma.attachment_id as a_id, message_date as m_date FROM message_attachment_join ma JOIN (SELECT cm.message_id as message_id, cm.message_date as message_date FROM message m JOIN chat_message_join cm WHERE m.cache_has_attachments = 1 AND cm.chat_id AND cm.chat_id = ? AND m.rowid = cm.message_id) as tmp WHERE ma.message_id = tmp.message_id) as tmp2 WHERE a.rowid = tmp2.a_id ORDER BY tmp2.m_date DESC LIMIT ?", v29);
      v18 = v38[3];
      if (v18)
      {
        Count = CFArrayGetCount(v18);
      }

      else
      {
        Count = 0;
      }

      v20 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          CFArrayGetValueAtIndex(v38[3], i);
          ID = CSDBRecordGetID();
          v23 = IMDAttachmentRecordCreateFromRecordIDUnlocked(v10, ID);
          CFArrayAppendValue(v20, v23);
          if (v23)
          {
            CFRelease(v23);
          }
        }
      }

      CFDictionarySetValue(Mutable, v17, v20);
      if (v20)
      {
        CFRelease(v20);
      }

      v24 = v38[3];
      if (v24)
      {
        CFRelease(v24);
        v38[3] = 0;
      }

      ++v9;
    }

    v26 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    CFArrayAppendValue(v26, Mutable);
    _Block_object_dispose(&v31, 8);
    v25 = &v37;
  }

  else
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = CFDictionaryCreateMutable(0, 0, 0, 0);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_1B7C02540;
    v28[3] = &unk_1E7CB74D0;
    v28[4] = &v31;
    v28[5] = &v37;
    __syncXPCIMDAttachmentRecordCopyMostRecentAttachmentsInMostRecentChats_IPCAction(v28, a1, a2);
    Mutable = v38[3];
    _Block_object_dispose(&v37, 8);
    v25 = &v31;
  }

  _Block_object_dispose(v25, 8);
  return Mutable;
}

void sub_1B7C023C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose((v30 - 136), 8);
  _Block_object_dispose(&a30, 8);
  _Unwind_Resume(a1);
}

sqlite3_stmt **sub_1B7C02434(void *a1, sqlite3_stmt **a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7C024C4;
  v7[3] = &unk_1E7CB75B0;
  v4 = a1[5];
  v5 = a1[6];
  v7[4] = a2;
  v7[5] = v5;
  result = _IMDSqlOperationGetRowsWithBindingBlock(a2, v4, v7);
  *(*(a1[4] + 8) + 40) = result;
  return result;
}

uint64_t sub_1B7C024D0(void *a1)
{
  v2 = a1[4];
  CSDBSqliteBindTextFromCFString();
  v3 = a1[6];
  CSDBSqliteBindInt64();
  result = CSDBRecordStoreProcessStatement();
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

xpc_object_t sub_1B7C02540(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "dictionary_result");
  if (result)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1B7C025D4;
    v4[3] = &unk_1E7CBD8D0;
    v5 = *(a1 + 32);
    return xpc_dictionary_apply(result, v4);
  }

  return result;
}

uint64_t sub_1B7C025D4(uint64_t a1, uint64_t a2, xpc_object_t xarray)
{
  if (xpc_array_get_count(xarray))
  {
    v6 = 0;
    v7 = MEMORY[0x1E695E9C0];
    do
    {
      if (!*(*(*(a1 + 32) + 8) + 24))
      {
        *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, v7);
      }

      value = xpc_array_get_value(xarray, v6);
      v9 = _IMDCopyIMDAttachmentRecordFromXPCObjectClient(value);
      v10 = IMDAttachmentRecordCopyFilename(0, v9, 0);
      if (v10)
      {
        v11 = v10;
        CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v10);
        CFRelease(v11);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      ++v6;
    }

    while (xpc_array_get_count(xarray) > v6);
  }

  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = objc_msgSend_initWithUTF8String_(v12, v13, a2);
  CFDictionaryAddValue(*(*(*(a1 + 40) + 8) + 24), v14, *(*(*(a1 + 32) + 8) + 24));
  v15 = *(*(*(a1 + 32) + 8) + 24);
  if (v15)
  {
    CFRelease(v15);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return 1;
}

void sub_1B7C02718(uint64_t a1)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v2 = *(a1 + 64);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1B7C029A4;
  v22[3] = &unk_1E7CBD8F8;
  v22[4] = *(a1 + 32);
  v22[5] = &v23;
  _IMDPerformLockedStatementBlockWithQuery(v2, v22);
  v3 = v24[3];
  if (!v3)
  {
    v5 = 0;
    goto LABEL_7;
  }

  Count = CFArrayGetCount(v3);
  v5 = Count;
  if (!Count)
  {
LABEL_7:
    *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_8:
    if (v5 < 1)
    {
      goto LABEL_19;
    }

    goto LABEL_9;
  }

  if (Count <= 49)
  {
    if (*(a1 + 80))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_9:
  v6 = 0;
  v7 = *MEMORY[0x1E695E480];
  while (*(*(*(a1 + 48) + 8) + 24) < *(a1 + 72))
  {
    CFArrayGetValueAtIndex(v24[3], v6);
    ID = CSDBRecordGetID();
    v9 = IMDAttachmentRecordCreateFromRecordIDUnlocked(v7, ID);
    v10 = IMDAttachmentRecordCopyFilename(0, v9, 0);
    if (objc_msgSend_length(v10, v11, v12))
    {
      v15 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v13, v14);
      if (objc_msgSend_fileExistsAtPath_(v15, v16, v10))
      {
        *(*(*(a1 + 48) + 8) + 24) += IMDAttachmentRecordGetTotalBytes(v9);
        CFArrayAppendValue(*(*(*(a1 + 56) + 8) + 24), v9);
      }
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (v5 == ++v6)
    {
      goto LABEL_19;
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_19:
  v17 = v24[3];
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(a1 + 80);
  v19 = *(*(a1 + 32) + 8);
  v20 = *(v19 + 24);
  if (v18 < 1)
  {
    goto LABEL_30;
  }

  if (v20 >= v18 || v20 + 50 < v18)
  {
    if (v5 <= 49 && v20 >= v18)
    {
      *(v19 + 24) = 0;
      goto LABEL_31;
    }

LABEL_30:
    *(v19 + 24) = v20 + v5;
    goto LABEL_31;
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_31:
  _Block_object_dispose(&v23, 8);
}

void sub_1B7C02970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7C029A4(uint64_t a1)
{
  CSDBSqliteBindInt64();
  v2 = *(*(*(a1 + 32) + 8) + 24);
  CSDBSqliteBindInt();
  result = CSDBRecordStoreProcessStatement();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1B7C02A1C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "array_result");
  if (value)
  {
    v4 = value;
    count = xpc_array_get_count(value);
    if (count)
    {
      v6 = count;
      v7 = 0;
      v8 = MEMORY[0x1E695E9C0];
      do
      {
        if (!*(*(*(a1 + 32) + 8) + 24))
        {
          *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, v8);
        }

        v9 = xpc_array_get_value(v4, v7);
        v10 = _IMDCopyIMDAttachmentRecordFromXPCObjectClient(v9);
        CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v10);
        if (v10)
        {
          CFRelease(v10);
        }

        ++v7;
      }

      while (v6 != v7);
    }
  }
}

__CFString *sub_1B7C02AEC(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  switch(a1)
  {
    case 3:
      v4 = @"SELECT * FROM attachment a INNER JOIN message_attachment_join ma ON a.ROWID = ma.attachment_id INNER JOIN message m ON m.rowid = ma.message_id WHERE a.ck_sync_state == 0 AND m.balloon_bundle_id == 'com.apple.messages.chatbot' ORDER BY a.ROWID LIMIT ? ";
      v5 = @"SELECT * FROM attachment a INNER JOIN message_attachment_join ma ON a.ROWID = ma.attachment_id INNER JOIN message m ON m.rowid = ma.message_id WHERE a.ck_sync_state == 0 AND m.balloon_bundle_id == 'com.apple.messages.chatbot' AND a.ROWID > ? ORDER BY a.ROWID LIMIT ? ";
LABEL_7:
      if (a2)
      {
        result = v5;
      }

      else
      {
        result = v4;
      }

      goto LABEL_16;
    case 2:
      v4 = @"SELECT * FROM attachment a WHERE a.ck_sync_state == 1 AND a.transfer_state == 0 ORDER BY a.ROWID LIMIT ? ";
      v5 = @"SELECT * FROM attachment a WHERE a.ck_sync_state == 1 AND a.transfer_state == 0 AND a.ROWID > ? ORDER BY a.ROWID LIMIT ? ";
      goto LABEL_7;
    case 1:
      v4 = @"SELECT * FROM attachment a INNER JOIN message_attachment_join ma ON a.ROWID = ma.attachment_id INNER JOIN message m ON m.rowid = ma.message_id WHERE a.ck_sync_state == 0 AND (m.balloon_bundle_id IS NULL OR m.balloon_bundle_id != 'com.apple.messages.chatbot') ORDER BY a.ROWID LIMIT ? ";
      v5 = @"SELECT * FROM attachment a INNER JOIN message_attachment_join ma ON a.ROWID = ma.attachment_id INNER JOIN message m ON m.rowid = ma.message_id WHERE a.ck_sync_state == 0 AND (m.balloon_bundle_id IS NULL OR m.balloon_bundle_id != 'com.apple.messages.chatbot') AND a.ROWID > ? ORDER BY a.ROWID LIMIT ? ";
      goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (a2)
      {
        v8 = @"YES";
      }

      v10 = 134218242;
      v11 = a1;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "IMDAttachmentQueryStringForIMAttachmentsQuery unknown IMAttachmentsQuery type %lld, fromRow %@", &v10, 0x16u);
    }
  }

  result = 0;
LABEL_16:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

__CFArray *IMDAttachmentRecordCopyAttachmentsForQueryWithLimit(uint64_t a1, void *a2, int64_t a3)
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v6 = sub_1B7C02AEC(a1, a2 != 0);
    if (v6)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = sub_1B7C02E80;
      v18[3] = &unk_1E7CBD018;
      v18[4] = a2;
      v18[5] = &v19;
      v18[6] = a3;
      _IMDPerformLockedStatementBlockWithQuery(v6, v18);
      v7 = v20[3];
      if (v7 && (Count = CFArrayGetCount(v7), Count >= 1))
      {
        v9 = 0;
        Mutable = 0;
        v11 = *MEMORY[0x1E695E480];
        v12 = MEMORY[0x1E695E9C0];
        do
        {
          CFArrayGetValueAtIndex(v20[3], v9);
          ID = CSDBRecordGetID();
          v14 = IMDAttachmentRecordCreateFromRecordIDUnlocked(v11, ID);
          if (!Mutable)
          {
            Mutable = CFArrayCreateMutable(0, 0, v12);
          }

          CFArrayAppendValue(Mutable, v14);
          if (v14)
          {
            CFRelease(v14);
          }

          ++v9;
        }

        while (Count != v9);
      }

      else
      {
        Mutable = 0;
      }

      v15 = v20[3];
      if (v15)
      {
        CFRelease(v15);
      }
    }

    else
    {
      Mutable = 0;
    }
  }

  else
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1B7C02EFC;
    v17[3] = &unk_1E7CB6838;
    v17[4] = &v19;
    __syncXPCIMDAttachmentRecordCopyAttachmentsForQueryWithLimit_IPCAction(v17, a1, a2, a3);
    Mutable = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  return Mutable;
}

uint64_t sub_1B7C02E80(void *a1, const char *a2, uint64_t a3)
{
  v4 = a1[4];
  if (v4)
  {
    objc_msgSend_longLongValue(v4, a2, a3);
    CSDBSqliteBindInt64();
  }

  v5 = a1[6];
  CSDBSqliteBindInt64();
  result = CSDBRecordStoreProcessStatement();
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

void sub_1B7C02EFC(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "array_result");
  if (value)
  {
    v4 = value;
    count = xpc_array_get_count(value);
    if (count)
    {
      v6 = count;
      v7 = 0;
      v8 = MEMORY[0x1E695E9C0];
      do
      {
        if (!*(*(*(a1 + 32) + 8) + 24))
        {
          *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, v8);
        }

        v9 = xpc_array_get_value(v4, v7);
        v10 = _IMDCopyIMDAttachmentRecordFromXPCObjectClient(v9);
        CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v10);
        if (v10)
        {
          CFRelease(v10);
        }

        ++v7;
      }

      while (v6 != v7);
    }
  }
}

uint64_t _IMDAttachmentRecordGetGuidsAndTransferNamesFromQueryRows(void *a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v30 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v31 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v29 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = a1;
  v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v2, &v33, v39, 16);
  if (v3)
  {
    v5 = v3;
    v6 = *v34;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        v9 = objc_msgSend_valueForKey_(v8, v4, @"guid");
        v11 = objc_msgSend_valueForKey_(v8, v10, @"transfer_name");
        v13 = objc_msgSend_valueForKey_(v8, v12, @"filename");
        v15 = objc_msgSend_valueForKey_(v8, v14, @"is_sticker");
        v18 = objc_msgSend_intValue(v15, v16, v17);
        if (v18 != 1 || v11 == 0)
        {
          v20 = v18;
          if (v18 != 1 && v9 != 0)
          {
            objc_msgSend_addObject_(v30, v4, v9);
          }

          if (v20 != 1 && v13 != 0)
          {
            objc_msgSend_addObject_(v29, v4, v13);
          }
        }

        else
        {
          StickerPathFromTransferName = _IMDAttachmentRecordGetStickerPathFromTransferName(v11, v4);
          if (objc_msgSend_length(StickerPathFromTransferName, v24, v25))
          {
            objc_msgSend_addObject_(v31, v4, StickerPathFromTransferName);
          }
        }
      }

      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v33, v39, 16);
    }

    while (v5);
  }

  v37[0] = @"guids";
  v37[1] = @"transfernames";
  v38[0] = v30;
  v38[1] = v31;
  v37[2] = @"filenames";
  v38[2] = v29;
  result = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v4, v38, v37, 3);
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *_IMDAttachmentRecordGetStickerPathFromTransferName(void *a1, const char *a2)
{
  if (!objc_msgSend_containsString_(a1, a2, @"sticker"))
  {
    return &stru_1F2FA9728;
  }

  if (!objc_msgSend_containsString_(a1, v3, @"-"))
  {
    return &stru_1F2FA9728;
  }

  v5 = objc_msgSend_componentsSeparatedByString_(a1, v4, @"-");
  if (!objc_msgSend_count(v5, v6, v7))
  {
    return &stru_1F2FA9728;
  }

  v9 = objc_msgSend_objectAtIndex_(v5, v8, 0);
  if (objc_msgSend_length(v9, v10, v11))
  {
    return objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12, @"%@-%@-sticker", v9, v9);
  }

  return v9;
}

void IMDAttachmentRecordDeleteAttachmentPreviewsOlderThan(int64_t a1)
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v2 = IMDAttachmentRecordCopyMostRecentAttachmentsInMostRecentChats(50, 15);
    GuidsAndTransferNamesFromQueryRows = _IMDAttachmentRecordGetGuidsAndTransferNamesFromQueryRows(v2);

    v5 = objc_msgSend_objectForKey_(GuidsAndTransferNamesFromQueryRows, v4, @"guids");
    v6 = IMCachesDirectoryURL();
    v9 = objc_msgSend_path(v6, v7, v8);
    v11 = objc_msgSend_arrayWithObjects_(MEMORY[0x1E695DEC8], v10, v9, @"Previews", @"Attachments", 0);
    v13 = objc_msgSend_pathWithComponents_(MEMORY[0x1E696AEC0], v12, v11);
    v23 = objc_alloc_init(MEMORY[0x1E696AC08]);
    v15 = objc_msgSend_enumeratorAtPath_(v23, v14, v13);
    _IMDAttachmentRecordDeleteAttachmentsExceptPreviewsToKeep(v5, v13, v23, v15);
    v17 = objc_msgSend_objectForKey_(GuidsAndTransferNamesFromQueryRows, v16, @"transfernames");
    v19 = objc_msgSend_arrayWithObjects_(MEMORY[0x1E695DEC8], v18, v9, @"Previews", @"StickerCache", 0);
    v21 = objc_msgSend_pathWithComponents_(MEMORY[0x1E696AEC0], v20, v19);
    _IMDAttachmentRecordDeleteStickersExceptPreviewsToKeep(v17, v21, v22);
  }

  else
  {

    __syncXPCIMDAttachmentRecordDeleteAttachmentPreviewsOlderThan_IPCAction(0, a1);
  }
}

id IMDAttachmentRecordCopyMostRecentAttachmentsInMostRecentChats(uint64_t a1, uint64_t a2)
{
  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0;
  v28 = &v27;
  v29 = 0x3052000000;
  v30 = sub_1B7AE1B50;
  v31 = sub_1B7AE25B8;
  v32 = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_1B7C06C7C;
  v26[3] = &unk_1E7CB7998;
  v26[4] = &v27;
  v26[5] = @"SELECT DISTINCT chat_id FROM (SELECT chat_id,message_date FROM chat_message_join ORDER BY message_date desc) ORDER BY message_date DESC LIMIT ?;";
  v26[6] = a1;
  IMDRunSqlOperation(v26);
  for (i = 0; objc_msgSend_count(v28[5], v4, v5) > i; ++i)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_msgSend_objectAtIndexedSubscript_(v28[5], v7, i);
    v11 = objc_msgSend_valueForKey_(v9, v10, @"chat_id");
    v13 = objc_msgSend_stringWithFormat_(v8, v12, @"%@", v11);
    v20 = 0;
    v21 = &v20;
    v22 = 0x3052000000;
    v23 = sub_1B7AE1B50;
    v24 = sub_1B7AE25B8;
    v25 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1B7C06D18;
    v19[3] = &unk_1E7CBD9C0;
    v19[4] = v13;
    v19[5] = &v20;
    v19[6] = @"SELECT a.ROWID, a.guid, a.is_sticker, a.transfer_name, a.filename FROM attachment a JOIN (SELECT ma.attachment_id as a_id, message_date as m_date FROM message_attachment_join ma JOIN (SELECT cm.message_id as message_id, cm.message_date as message_date FROM message m JOIN chat_message_join cm WHERE m.cache_has_attachments = 1 AND cm.chat_id AND cm.chat_id = ? AND m.rowid = cm.message_id) as tmp WHERE ma.message_id = tmp.message_id) as tmp2 WHERE a.rowid = tmp2.a_id ORDER BY tmp2.m_date DESC LIMIT ?";
    v19[7] = a2;
    IMDRunSqlOperation(v19);
    v15 = v21[5];
    if (v15)
    {
      objc_msgSend_addObjectsFromArray_(v18, v14, v15);
    }

    _Block_object_dispose(&v20, 8);
  }

  v16 = v28[5];
  if (v16)
  {
    CFRelease(v16);
    v28[5] = 0;
  }

  _Block_object_dispose(&v27, 8);
  return v18;
}

void _IMDAttachmentRecordDeleteAttachmentsExceptPreviewsToKeep(void *a1, void *a2, void *a3, void *a4)
{
  *(&v43[2] + 2) = *MEMORY[0x1E69E9840];
  v8 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = a2;
    _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_DEFAULT, "Deleting previews at %@", buf, 0xCu);
  }

  Object = objc_msgSend_nextObject(a4, v9, v10);
  if (Object)
  {
    v15 = Object;
    v16 = 501;
    *&v14 = 138412290;
    v37 = v14;
    do
    {
      if (!--v16)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1B7C03F34;
        block[3] = &unk_1E7CB8E30;
        block[4] = a1;
        block[5] = a2;
        block[6] = a3;
        block[7] = a4;
        IMDPersistencePerformBlock(block, 0, v13);
        goto LABEL_26;
      }

      v19 = objc_msgSend_level(a4, v12, v13);
      if (v19 == 3)
      {
        if (objc_msgSend_level(a4, v17, v18) != 3)
        {
          goto LABEL_19;
        }

        PathComponent = objc_msgSend_lastPathComponent(v15, v20, v21);
        v23 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v41 = v15;
          v42 = 2112;
          v43[0] = PathComponent;
          _os_log_impl(&dword_1B7AD5000, v23, OS_LOG_TYPE_DEFAULT, "Examining '%@' as it looks like it contains a guid '%@'.", buf, 0x16u);
        }

        if (objc_msgSend_containsObject_(a1, v24, PathComponent, v37))
        {
          goto LABEL_19;
        }

        v39 = 0;
        v25 = objc_msgSend_stringByAppendingPathComponent_(a2, v20, v15);
        v26 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v37;
          v41 = v25;
          _os_log_impl(&dword_1B7AD5000, v26, OS_LOG_TYPE_DEFAULT, "To Delete: %@", buf, 0xCu);
        }

        v28 = objc_msgSend_removeItemAtPath_error_(a3, v27, v25, &v39);
        v29 = IMAttachmentsLogHandle();
        v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
        if (!v28)
        {
          if (!v30)
          {
            goto LABEL_19;
          }

          *buf = 138412546;
          v41 = v25;
          v42 = 2112;
          v43[0] = v39;
          v31 = v29;
          v32 = "Could ~not~ clean up '%@' due to error '%@'.";
          v33 = 22;
          goto LABEL_18;
        }

        if (v30)
        {
          *buf = v37;
          v41 = v25;
          v31 = v29;
          v32 = "Cleaned up '%@'";
          v33 = 12;
LABEL_18:
          _os_log_impl(&dword_1B7AD5000, v31, OS_LOG_TYPE_DEFAULT, v32, buf, v33);
        }
      }

      else
      {
        v34 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v41 = v15;
          v42 = 1024;
          LODWORD(v43[0]) = v19;
          WORD2(v43[0]) = 1024;
          *(v43 + 6) = 3;
          v31 = v34;
          v32 = "Skipping '%@' as its level is %d and our target level is %d.";
          v33 = 24;
          goto LABEL_18;
        }
      }

LABEL_19:
      v15 = objc_msgSend_nextObject(a4, v20, v21, v37);
    }

    while (v15);
  }

  v35 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v35, OS_LOG_TYPE_DEFAULT, "_IMDAttachmentRecordDeleteAttachmentsExceptPreviewsToKeep File cleanse ended", buf, 2u);
  }

LABEL_26:
  v36 = *MEMORY[0x1E69E9840];
}

void _IMDAttachmentRecordDeleteStickersExceptPreviewsToKeep(char *a1, const char *a2, uint64_t a3)
{
  v3 = a2;
  v51 = *MEMORY[0x1E69E9840];
  v45 = 0;
  v5 = 0x1E696A000uLL;
  v6 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, a3);
  v8 = objc_msgSend_contentsOfDirectoryAtPath_error_(v6, v7, v3, &v45);
  if (v45)
  {
    v10 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v47 = v45;
      _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_DEFAULT, "Could ~not~ clean up sticker previews due to error '%@'.", buf, 0xCu);
    }

    goto LABEL_26;
  }

  v11 = v8;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v41, v50, 16);
  if (!v12)
  {
LABEL_26:
    v35 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v35, OS_LOG_TYPE_DEFAULT, "_IMDAttachmentRecordDeleteStickersExceptPreviewsToKeep File cleanse ended", buf, 2u);
    }

    goto LABEL_28;
  }

  v15 = v12;
  v16 = 0;
  v39 = *v42;
  *&v14 = 138412546;
  v37 = v14;
  obj = v11;
LABEL_6:
  v17 = 0;
  if (v16 <= 0x1F4)
  {
    v18 = 500 - v16;
  }

  else
  {
    v18 = 0;
  }

  while (1)
  {
    if (*v42 != v39)
    {
      objc_enumerationMutation(obj);
    }

    v19 = *(*(&v41 + 1) + 8 * v17);
    if (v18 == v17)
    {
      break;
    }

    if (_IMDAttachmentRecordShouldDeleteSticketPreviewWithFolderName(*(*(&v41 + 1) + 8 * v17), a1, v13))
    {
      v21 = v3;
      v22 = objc_msgSend_stringByAppendingPathComponent_(v3, v20, v19);
      v45 = 0;
      v23 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v47 = v22;
        _os_log_impl(&dword_1B7AD5000, v23, OS_LOG_TYPE_DEFAULT, "Sticker Preview to Delete: %@", buf, 0xCu);
      }

      v26 = v5;
      v27 = objc_msgSend_defaultManager(*(v5 + 3080), v24, v25, v37);
      v29 = objc_msgSend_removeItemAtPath_error_(v27, v28, v22, &v45);
      v30 = IMAttachmentsLogHandle();
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      if (v29)
      {
        v5 = v26;
        v3 = v21;
        if (v31)
        {
          *buf = 138412290;
          v47 = v22;
          v32 = v30;
          v33 = "Cleaned up sticker preview '%@'";
          v34 = 12;
LABEL_20:
          _os_log_impl(&dword_1B7AD5000, v32, OS_LOG_TYPE_DEFAULT, v33, buf, v34);
        }
      }

      else
      {
        v5 = v26;
        v3 = v21;
        if (v31)
        {
          *buf = v37;
          v47 = v22;
          v48 = 2112;
          v49 = v45;
          v32 = v30;
          v33 = "Could ~not~ clean up sticker preview '%@' due to error '%@'.";
          v34 = 22;
          goto LABEL_20;
        }
      }
    }

    ++v17;
    ++v16;
    if (v15 == v17)
    {
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v41, v50, 16);
      if (v15)
      {
        goto LABEL_6;
      }

      goto LABEL_26;
    }
  }

  if (!v19)
  {
    goto LABEL_26;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7C03EC8;
  block[3] = &unk_1E7CBD948;
  block[4] = a1;
  block[5] = v3;
  IMDPersistencePerformBlock(block, 0, v13);
LABEL_28:
  v36 = *MEMORY[0x1E69E9840];
}

BOOL _IMDAttachmentRecordShouldDeleteSticketPreviewWithFolderName(void *a1, char *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_length(a1, a2, a3);
  v6 = IMAttachmentsLogHandle();
  result = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (result)
    {
      v11 = 138412290;
      v12 = a1;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_DEFAULT, "Examining pewview folder name'%@'.", &v11, 0xCu);
    }

    if (!objc_msgSend_containsObject_(a2, v8, a1))
    {
      result = 1;
      goto LABEL_11;
    }

    v6 = IMAttachmentsLogHandle();
    result = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v11 = 138412290;
      v12 = a1;
      v9 = "Sticker preview %@ is part of 200 last attachments, not deleting";
LABEL_9:
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_DEFAULT, v9, &v11, 0xCu);
      result = 0;
    }
  }

  else if (result)
  {
    v11 = 138412290;
    v12 = a1;
    v9 = "Skipping folder %@ as it does not have a valid transfername";
    goto LABEL_9;
  }

LABEL_11:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B7C03EC8(uint64_t a1)
{
  v2 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "Beginning iteration of _IMDAttachmentRecordDeleteStickersExceptPreviewsToKeep attachments", v4, 2u);
  }

  return _IMDAttachmentRecordDeleteStickersExceptPreviewsToKeep(*(a1 + 32), *(a1 + 40));
}

uint64_t sub_1B7C03F34(void *a1)
{
  v2 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "Beginning iteration of _IMDAttachmentRecordDeleteAttachmentsExceptPreviewsToKeep attachments", v4, 2u);
  }

  return _IMDAttachmentRecordDeleteAttachmentsExceptPreviewsToKeep(a1[4], a1[5], a1[6], a1[7]);
}

void IMDAttachmentRecordDeleteAttachmentsOlderThanDays(uint64_t a1)
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    sub_1B7C04060(a1);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1B7C040E4;
    v3[3] = &unk_1E7CB7590;
    v3[4] = v2;
    _IMDPerformLockedStatementBlockWithQuery(@"DELETE FROM attachment WHERE created_date < ? AND transfer_name != 'GroupPhotoImage';", v3);
  }

  else
  {

    __syncXPCIMDAttachmentRecordDeleteAttachmentsOlderThanDays_IPCAction(0, a1);
  }
}

uint64_t sub_1B7C04060(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF10]);
  objc_msgSend_setDay_(v2, v3, -a1);
  v6 = objc_msgSend_currentCalendar(MEMORY[0x1E695DEE8], v4, v5);
  v9 = objc_msgSend_date(MEMORY[0x1E695DF00], v7, v8);
  v11 = objc_msgSend_dateByAddingComponents_toDate_options_(v6, v10, v2, v9, 0);

  return objc_msgSend_timeIntervalSinceReferenceDate(v11, v12, v13);
}

uint64_t sub_1B7C040E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  CSDBSqliteBindInt64();
  CSDBSqliteStatementPerform();
  CSDBRecordSaveStore();

  return CSDBRecordStoreInvalidateCachesWithStore();
}

uint64_t IMDAttachmentRecordEstimateSpaceTakenByAttachmentsOlderThanDays(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = a1;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "Request to fetch estimate space taken by attachments older than days %llu", buf, 0xCu);
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    sub_1B7C04060(a1);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1B7C04398;
    v9[3] = &unk_1E7CB7520;
    v9[5] = v3;
    v9[4] = &v11;
    _IMDPerformLockedStatementBlockWithQuery(@"SELECT filename FROM attachment WHERE created_date < ?;", v9);
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v12[3];
      *buf = 134218240;
      v16 = a1;
      v17 = 2048;
      v18 = v5;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEFAULT, "Request to fetch estimate space taken by attachments older than days %llu returning %llu", buf, 0x16u);
    }
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1B7C04358;
    v10[3] = &unk_1E7CB6838;
    v10[4] = &v11;
    __syncXPCIMDAttachmentRecordEstimateSpaceTakenByAttachmentsOlderThanDays_IPCAction(v10, a1);
  }

  v6 = v12[3];
  _Block_object_dispose(&v11, 8);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_1B7C04358(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_uint64(xdict, "bytes");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_1B7C04398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  CSDBSqliteBindInt64();
  CSDBSqliteStatementPerform();
  if (sqlite3_step(*(a4 + 8)) == 100)
  {
    v7 = *MEMORY[0x1E695E480];
    v41 = *MEMORY[0x1E69A7078];
    do
    {
      v8 = objc_autoreleasePoolPush();
      v9 = sqlite3_column_text(*(a4 + 8), 0);
      if (v9)
      {
        v10 = sqlite3_column_text(*(a4 + 8), 0);
        v9 = CFStringCreateWithCString(v7, v10, 0x8000100u);
      }

      v11 = v9;
      if (v11)
      {
        v14 = v11;
        if (objc_msgSend_length(v11, v12, v13))
        {
          v17 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v15, v16);
          v43 = 0;
          v44 = &v43;
          v45 = 0x2020000000;
          v46 = 0;
          v21 = objc_msgSend_stringByResolvingAndStandardizingPath(v14, v18, v19);
          if (v21)
          {
            v22 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DF70], v20, v21);
            v24 = objc_msgSend___im_filePathWithVariant_(v21, v23, v41);
            objc_msgSend_addObject_(v22, v25, v24);
            v28 = objc_msgSend_stringByDeletingPathExtension(v14, v26, v27);
            v30 = objc_msgSend_stringByAppendingPathExtension_(v28, v29, @"MOV");
            objc_msgSend_addObject_(v22, v31, v30);
            v34 = objc_msgSend_stringByDeletingPathExtension(v24, v32, v33);
            v36 = objc_msgSend_stringByAppendingPathExtension_(v34, v35, @"MOV");
            objc_msgSend_addObject_(v22, v37, v36);
            v42[0] = MEMORY[0x1E69E9820];
            v42[1] = 3221225472;
            v42[2] = sub_1B7C09998;
            v42[3] = &unk_1E7CBDDA8;
            v42[4] = v17;
            v42[5] = &v43;
            objc_msgSend_enumerateObjectsUsingBlock_(v22, v38, v42);
          }

          v39 = v44[3];
          _Block_object_dispose(&v43, 8);
          *(*(*(a1 + 32) + 8) + 24) += v39;
        }
      }

      objc_autoreleasePoolPop(v8);
    }

    while (sqlite3_step(*(a4 + 8)) == 100);
  }

  return CSDBSqliteStatementReset();
}

void sub_1B7C045C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id IMDAttachmentFindLargestConversations(unint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = sub_1B7AE1B50;
  v24 = sub_1B7AE25B8;
  v25 = 0;
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "Request to fetch largest non synced conversations", buf, 2u);
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    *buf = 0;
    v14 = buf;
    v15 = 0x3052000000;
    v16 = sub_1B7AE1B50;
    v17 = sub_1B7AE25B8;
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (a1 >= 3)
    {
      v3 = 0;
    }

    else
    {
      v3 = off_1E7CBDDC8[a1];
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1B7C04908;
    v12[3] = &unk_1E7CB7390;
    v12[4] = buf;
    _IMDPerformLockedStatementBlockWithQuery(v3, v12);
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_msgSend_count(*(v14 + 5), v5, v6);
      *v26 = 134217984;
      v27 = v7;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEFAULT, "Returning %lu conversations", v26, 0xCu);
    }

    v8 = objc_msgSend_copy(*(v14 + 5), v5, v6);
    v21[5] = v8;

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1B7C048C0;
    v19[3] = &unk_1E7CB6838;
    v19[4] = &v20;
    __syncXPCIMDAttachmentRecordFindLargestConversations_IPCAction(v19, a1);
  }

  v9 = v21[5];
  _Block_object_dispose(&v20, 8);
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_1B7C04884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7C048C0(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "result");
  if (result)
  {
    result = _CFXPCCreateCFObjectFromXPCObject();
    *(*(*(a1 + 32) + 8) + 40) = result;
  }

  return result;
}

uint64_t sub_1B7C04908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[2] = *MEMORY[0x1E69E9840];
  if (sqlite3_step(*(a4 + 8)) == 100)
  {
    v6 = *MEMORY[0x1E695E480];
    do
    {
      v7 = objc_autoreleasePoolPush();
      v8 = sqlite3_column_text(*(a4 + 8), 0);
      if (v8)
      {
        v9 = sqlite3_column_text(*(a4 + 8), 0);
        v8 = CFStringCreateWithCString(v6, v9, 0x8000100u);
      }

      v10 = v8;
      v11 = sqlite3_column_int64(*(a4 + 8), 1);
      if (v10)
      {
        v18[1] = @"size";
        v19[0] = v10;
        v18[0] = @"guid";
        v19[1] = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v12, v11);
        v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v13, v19, v18, 2);
        objc_msgSend_addObject_(*(*(*(a1 + 32) + 8) + 40), v15, v14);
      }

      objc_autoreleasePoolPop(v7);
    }

    while (sqlite3_step(*(a4 + 8)) == 100);
  }

  result = CSDBSqliteStatementReset();
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

id IMDAttachmentFindLargestAttachmentGUIDsForAttachmentClassWithLimitAndOffset(void *a1, unint64_t a2, int64_t a3, int64_t a4)
{
  v54 = *MEMORY[0x1E69E9840];
  v42 = 0;
  v43 = &v42;
  v44 = 0x3052000000;
  v45 = sub_1B7AE1B50;
  v46 = sub_1B7AE25B8;
  v47 = 0;
  v8 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_DEFAULT, "Request to fetch non synced attachment guids for attachment class", buf, 2u);
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    v10 = &stru_1F2FA9728;
    if (a2 <= 2)
    {
      v10 = off_1E7CBDDE0[a2];
    }

    if (objc_msgSend_isEqualToString_(a1, v9, IMAttachmentClassPhoto[0]))
    {
      valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x1E696AEC0], v11, v10, @"%@", 0, @"AND is_sticker = 0 AND mime_type LIKE 'image/%' AND NOT mime_type = 'image/gif'");
    }

    else if (objc_msgSend_isEqualToString_(a1, v11, IMAttachmentClassVideo))
    {
      valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x1E696AEC0], v15, v10, @"%@", 0, @"AND mime_type LIKE 'video/%'");
    }

    else if (objc_msgSend_isEqualToString_(a1, v15, IMAttachmentClassGIFOrSticker[0]))
    {
      valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x1E696AEC0], v16, v10, @"%@", 0, @"AND (is_sticker = 1 OR mime_type = 'image/gif')");
    }

    else
    {
      isEqualToString = objc_msgSend_isEqualToString_(a1, v16, IMAttachmentClassOther);
      v19 = @"AND NOT (mime_type LIKE 'image/%' OR mime_type LIKE 'video/%' OR is_sticker = 1 OR mime_type = 'image/gif')";
      if (!isEqualToString)
      {
        v19 = &stru_1F2FA9728;
      }

      valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x1E696AEC0], v18, v10, @"%@", 0, v19);
    }

    v20 = valid;
    *buf = 0;
    v36 = buf;
    v37 = 0x3052000000;
    v38 = sub_1B7AE1B50;
    v39 = sub_1B7AE25B8;
    v40 = objc_msgSend_array(MEMORY[0x1E695DF70], v13, v14);
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    if (v20)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = sub_1B7C04EC8;
      v30[3] = &unk_1E7CBD970;
      v30[6] = a3;
      v30[7] = a4;
      v30[4] = buf;
      v30[5] = &v31;
      _IMDPerformLockedStatementBlockWithQuery(v20, v30);
    }

    v21 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_msgSend_count(*(v36 + 5), v22, v23);
      v25 = v32[3];
      *v48 = 134218498;
      v49 = v24;
      v50 = 2048;
      v51 = v25;
      v52 = 2112;
      v53 = a1;
      _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_DEFAULT, "Returning %lu non synced attachments with total size %llu for attachmentClass %@", v48, 0x20u);
    }

    v26 = objc_msgSend_copy(*(v36 + 5), v22, v23);
    v43[5] = v26;
    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = sub_1B7C04E80;
    v41[3] = &unk_1E7CB6838;
    v41[4] = &v42;
    __syncXPCIMDAttachmentRecordFindLargestAttachmentGUIDsWithLimitAndOffset_IPCAction(v41, a1, a2, a3, a4);
  }

  v27 = v43[5];
  _Block_object_dispose(&v42, 8);
  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

void sub_1B7C04E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7C04E80(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "result");
  if (result)
  {
    result = _CFXPCCreateCFObjectFromXPCObject();
    *(*(*(a1 + 32) + 8) + 40) = result;
  }

  return result;
}

uint64_t sub_1B7C04EC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29[4] = *MEMORY[0x1E69E9840];
  v6 = a1[6];
  CSDBSqliteBindInt64();
  v7 = a1[7];
  CSDBSqliteBindInt64();
  result = sqlite3_step(*(a4 + 8));
  if (result == 100)
  {
    v9 = *MEMORY[0x1E695E480];
    do
    {
      v10 = sqlite3_column_text(*(a4 + 8), 0);
      if (v10)
      {
        v11 = sqlite3_column_text(*(a4 + 8), 0);
        v10 = CFStringCreateWithCString(v9, v11, 0x8000100u);
      }

      v12 = v10;
      v13 = sqlite3_column_int64(*(a4 + 8), 1);
      v14 = sqlite3_column_text(*(a4 + 8), 2);
      if (v14)
      {
        v15 = sqlite3_column_text(*(a4 + 8), 2);
        v14 = CFStringCreateWithCString(v9, v15, 0x8000100u);
      }

      v16 = v14;
      v17 = MEMORY[0x1E695DF00];
      v18 = sqlite3_column_int64(*(a4 + 8), 3);
      v21 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v17, v19, v20, v18);
      if (v12)
      {
        if (v16)
        {
          v23 = v21;
          if (v21)
          {
            v29[0] = v12;
            v28[0] = @"guid";
            v28[1] = @"size";
            v29[1] = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v22, v13);
            v29[2] = v16;
            v28[2] = @"filename";
            v28[3] = @"date";
            v29[3] = v23;
            v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v24, v29, v28, 4);
            objc_msgSend_addObject_(*(*(a1[4] + 8) + 40), v26, v25);
            *(*(a1[5] + 8) + 24) += v13;
          }
        }
      }

      result = sqlite3_step(*(a4 + 8));
    }

    while (result == 100);
  }

  v27 = *MEMORY[0x1E69E9840];
  return result;
}

id IMDAttachmentSpaceTakenByAttachmentClass(int64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = sub_1B7AE1B50;
  v12 = sub_1B7AE25B8;
  v13 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v2 = @"SELECT mime_type, is_sticker, SUM(total_bytes) FROM attachment WHERE ck_sync_state != 1 AND hide_attachment=0 AND transfer_state = 5 GROUP BY mime_type, is_sticker ;";
    if (a1 == 1)
    {
      v2 = @"SELECT mime_type, is_sticker, SUM(total_bytes) FROM attachment WHERE ck_sync_state != 0 AND hide_attachment=0 AND transfer_state = 5 GROUP BY mime_type, is_sticker ;";
    }

    if (a1)
    {
      v3 = v2;
    }

    else
    {
      v3 = @"SELECT mime_type, is_sticker, SUM(total_bytes) FROM attachment WHERE hide_attachment=0 AND transfer_state = 5 GROUP BY mime_type, is_sticker ;";
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1B7C05284;
    v6[3] = &unk_1E7CB7390;
    v6[4] = &v8;
    _IMDPerformLockedStatementBlockWithQuery(v3, v6);
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7C0523C;
    v7[3] = &unk_1E7CB6838;
    v7[4] = &v8;
    __syncXPCIMDAttachmentRecordSpaceTakenByAttachmentClass_IPCAction(v7, a1);
  }

  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t sub_1B7C0523C(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "result");
  if (result)
  {
    result = _CFXPCCreateCFObjectFromXPCObject();
    *(*(*(a1 + 32) + 8) + 40) = result;
  }

  return result;
}

void sub_1B7C05284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a1;
  v5 = objc_alloc(MEMORY[0x1E695DF90]);
  v31 = objc_msgSend_initWithCapacity_(v5, v6, 4);
  if (sqlite3_step(*(a4 + 8)) == 100)
  {
    v9 = *MEMORY[0x1E695E480];
    do
    {
      v10 = sqlite3_column_text(*(a4 + 8), 0);
      if (v10)
      {
        v11 = sqlite3_column_text(*(a4 + 8), 0);
        v10 = CFStringCreateWithCString(v9, v11, 0x8000100u);
      }

      v12 = v10;
      v13 = sqlite3_column_int(*(a4 + 8), 1);
      v15 = sqlite3_column_int64(*(a4 + 8), 2);
      if (v13 || (objc_msgSend_isEqualToString_(v12, v14, @"image/gif") & 1) != 0)
      {
        v16 = IMAttachmentClassGIFOrSticker;
      }

      else
      {
        v26 = objc_msgSend_containsString_(v12, v14, @"image/");
        v16 = IMAttachmentClassPhoto;
        if ((v26 & 1) == 0)
        {
          v27 = objc_msgSend_rangeOfString_(v12, v14, @"video/") || v14 == 0;
          v16 = &IMAttachmentClassOther;
          if (!v27)
          {
            v16 = &IMAttachmentClassVideo;
          }
        }
      }

      v17 = *v16;
      v18 = objc_msgSend_objectForKeyedSubscript_(v31, v14, *v16, v29);
      v21 = MEMORY[0x1E696AD98];
      if (v18)
      {
        v22 = objc_msgSend_unsignedLongLongValue(v18, v19, v20);
        v24 = objc_msgSend_numberWithUnsignedLongLong_(v21, v23, v22 + v15);
      }

      else
      {
        v24 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v19, v15);
      }

      objc_msgSend_setObject_forKeyedSubscript_(v31, v25, v24, v17);
    }

    while (sqlite3_step(*(a4 + 8)) == 100);
  }

  v28 = objc_msgSend_copy(v31, v7, v8, v29);
  *(*(*(v30 + 32) + 8) + 40) = v28;
}

BOOL _IMDAttachmentUpdateAttachmentWithRowidToFileSize(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0xD010000000;
    v21 = "";
    memset(v22, 0, sizeof(v22));
    IMDSqlOperationInitWithSharedCSDBDatabase(v22);
    IMDSqlOperationBeginTransaction(v19 + 4);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v15 = sub_1B7C056C0;
    v16 = &unk_1E7CB6EA8;
    v17 = &v18;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1B7C05720;
    v13[3] = &unk_1E7CBD998;
    v13[4] = &v18;
    v13[5] = a2;
    v13[6] = a1;
    v4 = IMDSqlOperationExecuteQuery((v19 + 4), @"UPDATE attachment set total_bytes = ? WHERE rowid = ?;", v13);
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v6, a1);
      v9 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v8, a2);
      v10 = @"NO";
      *buf = 138412802;
      v24 = v7;
      v25 = 2112;
      if (v4)
      {
        v10 = @"YES";
      }

      v26 = v9;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_DEFAULT, "Updated attachment at rowID %@ to new filesize %@ with success %@", buf, 0x20u);
    }

    v15(v14);
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v4 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1B7C05694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1B7C056C0(uint64_t a1)
{
  IMDSqlOperationFinishQuery(*(*(a1 + 32) + 8) + 32);
  IMDSqlOperationCommitOrRevertTransaction((*(*(a1 + 32) + 8) + 32));
  v2 = *(*(a1 + 32) + 8) + 32;

  return IMDSqlOperationRelease(v2, 0);
}

void sub_1B7C05720(void *a1)
{
  IMDSqlStatementBindInt64(*(a1[4] + 8) + 64, a1[5]);
  v2 = a1[6];
  v3 = *(a1[4] + 8) + 64;

  IMDSqlStatementBindInt64(v3, v2);
}

BOOL _IMDAttachmentUpdateAttachmentWithRowidToTransferState(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0xD010000000;
    v21 = "";
    memset(v22, 0, sizeof(v22));
    IMDSqlOperationInitWithSharedCSDBDatabase(v22);
    IMDSqlOperationBeginTransaction(v19 + 4);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v15 = sub_1B7C059CC;
    v16 = &unk_1E7CB6EA8;
    v17 = &v18;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1B7C05A2C;
    v13[3] = &unk_1E7CBD998;
    v13[4] = &v18;
    v13[5] = a2;
    v13[6] = a1;
    v4 = IMDSqlOperationExecuteQuery((v19 + 4), @"UPDATE attachment set transfer_state = ? WHERE rowid = ?;", v13);
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v6, a1);
      v9 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v8, a2);
      v10 = @"NO";
      *buf = 138412802;
      v24 = v7;
      v25 = 2112;
      if (v4)
      {
        v10 = @"YES";
      }

      v26 = v9;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_DEFAULT, "Updated attachment at rowID %@ to new transfer_state %@ with success %@", buf, 0x20u);
    }

    v15(v14);
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v4 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1B7C059A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1B7C059CC(uint64_t a1)
{
  IMDSqlOperationFinishQuery(*(*(a1 + 32) + 8) + 32);
  IMDSqlOperationCommitOrRevertTransaction((*(*(a1 + 32) + 8) + 32));
  v2 = *(*(a1 + 32) + 8) + 32;

  return IMDSqlOperationRelease(v2, 0);
}

void sub_1B7C05A2C(void *a1)
{
  IMDSqlStatementBindInt64(*(a1[4] + 8) + 64, a1[5]);
  v2 = a1[6];
  v3 = *(a1[4] + 8) + 64;

  IMDSqlStatementBindInt64(v3, v2);
}

uint64_t _IMDCopyAttachmentsNeedingFileSizeUpdatesForWatermark(uint64_t a1, uint64_t *a2)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = -1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = sub_1B7AE1B50;
  v13 = sub_1B7AE25B8;
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7C05BE4;
  v8[3] = &unk_1E7CB9010;
  v8[5] = &v9;
  v8[6] = a1;
  v8[4] = &v15;
  _IMDPerformLockedStatementBlockWithQuery(@"SELECT filename,rowid,total_bytes,ck_sync_state,is_sticker,hide_attachment,transfer_state,guid FROM attachment WHERE rowid > ? AND filename != '' ORDER BY rowid ASC LIMIT 20;", v8);
  *a2 = objc_msgSend_copy(v10[5], v4, v5);

  v6 = v16[3];
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v15, 8);
  return v6;
}

uint64_t sub_1B7C05BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v39[8] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 48);
  CSDBSqliteBindInt64();
  result = sqlite3_step(*(a4 + 8));
  if (result == 100)
  {
    v8 = *MEMORY[0x1E695E480];
    v36 = *MEMORY[0x1E695E480];
    v37 = v5;
    do
    {
      v9 = sqlite3_column_text(*(a4 + 8), 0);
      if (v9)
      {
        v10 = sqlite3_column_text(*(a4 + 8), 0);
        v9 = CFStringCreateWithCString(v8, v10, 0x8000100u);
      }

      v11 = v9;
      *(*(*(v5 + 32) + 8) + 24) = sqlite3_column_int64(*(a4 + 8), 1);
      v12 = sqlite3_column_int64(*(a4 + 8), 2);
      v13 = sqlite3_column_int64(*(a4 + 8), 3);
      v14 = sqlite3_column_int64(*(a4 + 8), 4);
      v15 = sqlite3_column_int64(*(a4 + 8), 5);
      v16 = sqlite3_column_int64(*(a4 + 8), 6);
      v17 = sqlite3_column_text(*(a4 + 8), 7);
      if (v17)
      {
        v18 = sqlite3_column_text(*(a4 + 8), 7);
        v17 = CFStringCreateWithCString(v8, v18, 0x8000100u);
      }

      v19 = v17;
      if (objc_msgSend_length(v11, v20, v21) && v19)
      {
        v23 = *(v5 + 32);
        v24 = *(*(*(v5 + 40) + 8) + 40);
        v38[0] = @"rowID";
        v39[0] = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v22, *(*(v23 + 8) + 24));
        v38[1] = @"bytes";
        v39[1] = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v25, v12);
        v39[2] = v11;
        v38[2] = @"filename";
        v38[3] = @"ck_sync_state";
        v39[3] = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v26, v13);
        v38[4] = @"is_sticker";
        v39[4] = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v27, v14);
        v38[5] = @"hide_attachment";
        v39[5] = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v28, v15);
        v38[6] = @"transfer_state";
        v30 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v29, v16);
        v38[7] = @"guid";
        v39[6] = v30;
        v39[7] = v19;
        v32 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v31, v39, v38, 8);
        v33 = v24;
        v8 = v36;
        v5 = v37;
        objc_msgSend_addObject_(v33, v34, v32);
      }

      result = sqlite3_step(*(a4 + 8));
    }

    while (result == 100);
  }

  v35 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _IMDUpdateAttachmentFileSizeIfNeeded(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3 != a2)
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412802;
      v13 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v7, a1);
      v14 = 2112;
      v15 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v8, a2);
      v16 = 2112;
      v17 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v9, a3);
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_DEFAULT, "For rowID %@ bytes %@ is not equal to new byte count %@ for file.", &v12, 0x20u);
    }

    _IMDAttachmentUpdateAttachmentWithRowidToFileSize(a1, a3);
  }

  result = a3 != a2;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void *IMDAttachmentUpdateAttachmentFileSizeWithRowIDGreaterThanWatermark(int64_t a1)
{
  v193 = *MEMORY[0x1E69E9840];
  v165 = 0;
  v166 = &v165;
  v167 = 0x3052000000;
  v168 = sub_1B7AE1B50;
  v169 = sub_1B7AE25B8;
  v170 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v161 = 0;
  v162 = &v161;
  v163 = 0x2020000000;
  v164 = 0;
  if ((IMDIsRunningInDatabaseServerProcess() & 1) == 0)
  {
    v160[0] = MEMORY[0x1E69E9820];
    v160[1] = 3221225472;
    v160[2] = sub_1B7C069B0;
    v160[3] = &unk_1E7CB74D0;
    v160[4] = &v161;
    v160[5] = &v165;
    __syncXPCIMDAttachmentUpdateAttachmentFileSizeWithRowIDGreaterThanWatermark_IPCAction(v160, a1);
    goto LABEL_56;
  }

  v159 = 0;
  _IMDCopyAttachmentsNeedingFileSizeUpdatesForWatermark(a1, &v159);
  v157 = 0u;
  v158 = 0u;
  v155 = 0u;
  v156 = 0u;
  obj = v159;
  v140 = objc_msgSend_countByEnumeratingWithState_objects_count_(v159, v2, &v155, v192, 16);
  if (!v140)
  {
    goto LABEL_50;
  }

  v138 = *MEMORY[0x1E69A7018];
  v139 = *v156;
  v137 = *MEMORY[0x1E69A6A18];
  do
  {
    for (i = 0; i != v140; ++i)
    {
      if (*v156 != v139)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v155 + 1) + 8 * i);
      v6 = objc_msgSend_objectForKey_(v5, v3, @"filename");
      v8 = objc_msgSend_objectForKey_(v5, v7, @"rowID");
      v148 = objc_msgSend_longLongValue(v8, v9, v10);
      v12 = objc_msgSend_objectForKey_(v5, v11, @"bytes");
      v141 = objc_msgSend_longLongValue(v12, v13, v14);
      v16 = objc_msgSend_objectForKey_(v5, v15, @"ck_sync_state");
      v146 = objc_msgSend_longLongValue(v16, v17, v18);
      v20 = objc_msgSend_stringWithString_(MEMORY[0x1E696AEC0], v19, v6);
      v149 = objc_msgSend_stringByExpandingTildeInPath(v20, v21, v22);
      v24 = objc_msgSend_objectForKey_(v5, v23, @"is_sticker");
      v145 = objc_msgSend_BOOLValue(v24, v25, v26);
      v28 = objc_msgSend_objectForKey_(v5, v27, @"hide_attachment");
      LODWORD(v6) = objc_msgSend_BOOLValue(v28, v29, v30);
      v32 = objc_msgSend_objectForKey_(v5, v31, @"transfer_state");
      v143 = objc_msgSend_longLongValue(v32, v33, v34);
      v37 = objc_msgSend_pathExtension(v149, v35, v36);
      v142 = v6;
      isAudioMessageExtension = objc_msgSend_im_isAudioMessageExtension(v37, v38, v39);
      v43 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v41, v42);
      v144 = objc_msgSend_fileExistsAtPath_(v43, v44, v149);
      PathComponent = objc_msgSend_lastPathComponent(v149, v45, v46);
      v49 = objc_msgSend_containsString_(PathComponent, v48, v138);
      isPluginPayloadExtension = objc_msgSend_im_isPluginPayloadExtension(v37, v50, v51);
      v54 = objc_msgSend_objectForKey_(v5, v53, @"guid");
      v55 = IMDAttachmentRecordCopyMessageForAttachmentGUID(v54);
      v58 = objc_msgSend_balloonBundleID(v55, v56, v57);

      LOBYTE(v135) = objc_msgSend_hasPrefix_(v58, v59, v137);
      isRichLink = objc_msgSend_canMarkPurgeableWithCKSyncState_transferState_isAudio_isSticker_isGroupPhoto_isPluginPayload_isRichLink_(MEMORY[0x1E69A8078], v60, v146, 5, isAudioMessageExtension, v145, v49, isPluginPayloadExtension, v135);
      v62 = IMOffloadingLogHandle();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134219778;
        v177 = v148;
        v178 = 2112;
        v179 = v149;
        v180 = 2048;
        v181 = v146;
        v182 = 1024;
        v183 = v145;
        v184 = 1024;
        v185 = v142;
        v186 = 1024;
        v187 = isPluginPayloadExtension;
        v188 = 2112;
        v189 = v58;
        v190 = 1024;
        v191 = isRichLink;
        _os_log_impl(&dword_1B7AD5000, v62, OS_LOG_TYPE_DEFAULT, "Can mark rowID: %lld file: [%@], cloudKitSyncState: [%lld], is_sticker: [%{BOOL}d], hide_attachment: [%{BOOL}d], isPluginPayload: [%{BOOL}d], bundleID: [%@], purgeable: [%{BOOL}d]", buf, 0x42u);
      }

      if (isRichLink)
      {
        if (v144)
        {
          v64 = v166[5];
          v174[0] = @"rowID";
          v175[0] = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v63, v148);
          v175[1] = v149;
          v174[1] = @"filename";
          v174[2] = @"guid";
          v175[2] = v54;
          v66 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v65, v175, v174, 3);
          objc_msgSend_addObject_(v64, v67, v66);
          if (v143 != 5)
          {
            v68 = IMDatabaseLogHandle();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
            {
              v70 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v69, v148);
              *buf = 138412546;
              v177 = v70;
              v178 = 2112;
              v179 = v149;
              _os_log_impl(&dword_1B7AD5000, v68, OS_LOG_TYPE_DEFAULT, "File on disk, but not in finished state: %@, filename: %@.", buf, 0x16u);
            }

            _IMDAttachmentUpdateAttachmentWithRowidToTransferState(v148, 5);
          }
        }
      }

      else
      {
        v71 = v166[5];
        v172[0] = @"rowID";
        v72 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v63, v148);
        v172[1] = @"filename";
        v173[0] = v72;
        v173[1] = &stru_1F2FA9728;
        v74 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v73, v173, v172, 2);
        objc_msgSend_addObject_(v71, v75, v74);
      }

      objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v63, v149);
      v76 = IMAttachmentPreviewFileURL();
      v79 = objc_msgSend_path(v76, v77, v78);
      v82 = objc_msgSend_im_livePhotoBundlePath(v149, v80, v81);
      v83 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (objc_msgSend_length(v82, v84, v85))
      {
        objc_msgSend_addObject_(v83, v86, v82);
      }

      if (objc_msgSend_length(v79, v86, v87))
      {
        v90 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v88, v89);
        if (objc_msgSend_fileExistsAtPath_(v90, v91, v79))
        {
          objc_msgSend_addObject_(v83, v88, v79);
        }
      }

      v153 = 0u;
      v154 = 0u;
      v151 = 0u;
      v152 = 0u;
      v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v83, v88, &v151, v171, 16);
      if (v94)
      {
        v95 = *v152;
        do
        {
          for (j = 0; j != v94; ++j)
          {
            if (*v152 != v95)
            {
              objc_enumerationMutation(v83);
            }

            v97 = *(*(&v151 + 1) + 8 * j);
            if (objc_msgSend_length(v97, v92, v93))
            {
              v150 = 0;
              v98 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v92, v93);
              if (objc_msgSend_removeItemAtPath_error_(v98, v99, v97, &v150))
              {
                v100 = IMDatabaseLogHandle();
                if (!os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
                {
                  continue;
                }

                *buf = 138412290;
                v177 = v97;
                v101 = v100;
                v102 = "Live Photo bundle deleted: %@";
                v103 = 12;
              }

              else
              {
                v104 = IMDatabaseLogHandle();
                if (!os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
                {
                  continue;
                }

                *buf = 138412546;
                v177 = v97;
                v178 = 2112;
                v179 = v150;
                v101 = v104;
                v102 = "Live Photo bundle on disk, but failed to delete it: %@, error: %@";
                v103 = 22;
              }

              _os_log_impl(&dword_1B7AD5000, v101, OS_LOG_TYPE_DEFAULT, v102, buf, v103);
            }
          }

          v94 = objc_msgSend_countByEnumeratingWithState_objects_count_(v83, v92, &v151, v171, 16);
        }

        while (v94);
      }

      if (v144)
      {
        v106 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v3, v105);
        v108 = objc_msgSend_attributesOfItemAtPath_error_(v106, v107, v149, 0);
        v111 = objc_msgSend_fileSize(v108, v109, v110);
        v114 = objc_msgSend_im_livePhotoVideoPath(v149, v112, v113);
        if (v108)
        {
          v117 = v114;
          if (!objc_msgSend_length(v114, v115, v116))
          {
            goto LABEL_40;
          }

          v120 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v118, v119);
          v122 = objc_msgSend_attributesOfItemAtPath_error_(v120, v121, v117, 0);
          v125 = objc_msgSend_fileSize(v122, v123, v124);
          if (v122)
          {
            v111 += v125;
LABEL_40:
            _IMDUpdateAttachmentFileSizeIfNeeded(v148, v141, v111);
            continue;
          }
        }

        v129 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
        {
          v130 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v3, v148);
          *buf = 138412546;
          v177 = v130;
          v178 = 2112;
          v179 = v149;
          _os_log_impl(&dword_1B7AD5000, v129, OS_LOG_TYPE_DEFAULT, "Failed getting filesize at rowID %@ and path %@.", buf, 0x16u);
        }
      }

      else if (v146 == 1 && v143 == 5)
      {
        v126 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
        {
          v128 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v127, v148);
          *buf = 138412546;
          v177 = v128;
          v178 = 2112;
          v179 = v149;
          _os_log_impl(&dword_1B7AD5000, v126, OS_LOG_TYPE_DEFAULT, "File not on disk, lets switch it to tap to download rowID: %@, filename: %@.", buf, 0x16u);
        }

        _IMDAttachmentUpdateAttachmentWithRowidToTransferState(v148, 0);
      }
    }

    v140 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v155, v192, 16);
  }

  while (v140);
LABEL_50:
  if (objc_msgSend_count(obj, v3, v4))
  {
    *(v162 + 24) = 1;
  }

  else
  {
    v131 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v131, OS_LOG_TYPE_DEFAULT, "No more attachments found to update", buf, 2u);
    }
  }

LABEL_56:
  v132 = v166[5];
  if ((v162[3] & 1) == 0)
  {

    v132 = 0;
  }

  _Block_object_dispose(&v161, 8);
  _Block_object_dispose(&v165, 8);
  v133 = *MEMORY[0x1E69E9840];
  return v132;
}