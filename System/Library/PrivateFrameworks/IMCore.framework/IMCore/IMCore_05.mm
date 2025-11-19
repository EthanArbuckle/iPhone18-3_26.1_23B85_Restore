BOOL IMSPIMarkSPIMessagesAsSaved(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_count(v1, v2, v3);
  if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83DA2A0;
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
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Empty messages to be marked as saved, failing", buf, 2u);
    }
  }

  return v4 != 0;
}

void sub_1A83DA2A0(uint64_t a1, const char *a2, uint64_t a3)
{
  v43 = *MEMORY[0x1E69E9840];
  sub_1A8306F6C(a1, a2, a3);
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v42 = v5;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Marking messages as saved: %@", buf, 0xCu);
    }
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = *(a1 + 32);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v36, v40, 16);
  if (v8)
  {
    v10 = *v37;
    *&v9 = 138412290;
    v35 = v9;
    do
    {
      v11 = 0;
      do
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v36 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          v15 = objc_msgSend_guid(v12, v13, v14);
          v18 = objc_msgSend_length(v15, v16, v17, v35, v36);
        }

        else
        {
          v15 = 0;
          v18 = objc_msgSend_length(0, v13, v14, v35, v36);
        }

        v19 = v18 == 0;
        v20 = IMOSLoggingEnabled();
        if (v19)
        {
          if (v20)
          {
            v29 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              *buf = v35;
              v42 = v12;
              _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "Missing message guid for message: %@, not marking as saved", buf, 0xCu);
            }
          }
        }

        else
        {
          if (v20)
          {
            v23 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              *buf = v35;
              v42 = v15;
              _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, " => Message guid: %@", buf, 0xCu);
            }
          }

          v24 = objc_msgSend_sharedController(IMDaemonController, v21, v22);
          v27 = objc_msgSend_remoteDaemon(v24, v25, v26);
          objc_msgSend_markSavedForMessageGUID_(v27, v28, v15);
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v30, &v36, v40, 16);
    }

    while (v8);
  }

  sub_1A8307074(v31, v32, v33);
  v34 = *MEMORY[0x1E69E9840];
}

uint64_t IMSPIQueryMessageWithRowIDAndQOS(uint64_t a1, dispatch_qos_class_t a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v11 = v8;
  if (v7)
  {
    v12 = v8 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  if (v12)
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v25 = "BOOL IMSPIQueryMessageWithRowIDAndQOS(int64_t, dispatch_qos_class_t, __strong dispatch_queue_t, __strong IMSPIMessageQueryCallback)";
        _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Empty results block or queue supplied to %s", buf, 0xCu);
      }
    }
  }

  else
  {
    v14 = objc_msgSend_copy(v8, v9, v10);

    v15 = sub_1A826443C(a2);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1A83DA768;
    v19[3] = &unk_1E7814980;
    v22 = a1;
    v23 = a2;
    v20 = v7;
    v11 = v14;
    v21 = v11;
    dispatch_async(v15, v19);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v13;
}

void sub_1A83DA768(uint64_t a1)
{
  if (qword_1EB2EA550 != -1)
  {
    sub_1A84E46B4();
  }

  v2 = off_1EB2EA548(*(a1 + 48));
  v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1A8259CB0;
  v24 = sub_1A825AF84;
  v25 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83DA994;
  block[3] = &unk_1E7814898;
  v17 = &v20;
  v18 = v2;
  v4 = v3;
  v16 = v4;
  v19 = *(a1 + 56);
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  v7 = v21[5];
  if (v7)
  {
    v8 = objc_msgSend_service(v7, v5, v6);
    isEqualToString = objc_msgSend_isEqualToString_(v8, v9, *MEMORY[0x1E69A7AE0]);

    if (isEqualToString)
    {
      IMGreenTeaMessageReadLog();
    }
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A83DA9F0;
  v12[3] = &unk_1E78148C0;
  v14 = &v20;
  v11 = *(a1 + 32);
  v13 = *(a1 + 40);
  dispatch_async(v11, v12);
  if (v2)
  {
    CFRelease(v2);
  }

  _Block_object_dispose(&v20, 8);
}

void sub_1A83DA94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1A83DA964()
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyMessageForRowID", @"IMDPersistence");
  off_1EB2EA548 = result;
  return result;
}

uint64_t sub_1A83DA994(uint64_t a1)
{
  v2 = _IMSPIMessageFromRecord(*(a1 + 48), 1, 0, *(a1 + 32), *(a1 + 56));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2);
}

void sub_1A83DA9F0(uint64_t a1, const char *a2)
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

uint64_t IMSPIQueryMessagesWithRowIDsAndQOS(void *a1, dispatch_qos_class_t a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v12 = v9;
  if (v8)
  {
    v13 = v9 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = !v13;
  if (v13)
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v26 = "BOOL IMSPIQueryMessagesWithRowIDsAndQOS(NSArray<NSNumber *> *__strong, dispatch_qos_class_t, __strong dispatch_queue_t, __strong IMSPIMessageQueryCallback)";
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Empty results block or queue supplied to %s", buf, 0xCu);
      }
    }
  }

  else
  {
    v15 = objc_msgSend_copy(v9, v10, v11);

    v16 = sub_1A826443C(a2);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1A83DAC58;
    v20[3] = &unk_1E78149A8;
    v21 = v7;
    v24 = a2;
    v22 = v8;
    v12 = v15;
    v23 = v12;
    dispatch_async(v16, v20);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v14;
}

void sub_1A83DAC58(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (qword_1EB2EA560 != -1)
  {
    sub_1A84E46C8();
  }

  v2 = off_1EB2EA558(*(a1 + 32));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = objc_msgSend_count(v2, v4, v5);
      v9 = objc_msgSend_count(*(a1 + 32), v7, v8);
      *buf = 134218240;
      v19 = v6;
      v20 = 2048;
      v21 = v9;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Got back %lu messages for %lu row IDs", buf, 0x16u);
    }
  }

  v10 = sub_1A82618D4(v2, *(a1 + 56));
  sub_1A8262A8C(v10);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1A83DAE48;
  v15[3] = &unk_1E7810230;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v16 = v10;
  v17 = v12;
  v13 = v10;
  dispatch_async(v11, v15);

  v14 = *MEMORY[0x1E69E9840];
}

void *sub_1A83DAE18()
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyMessagesForRowIDs", @"IMDPersistence");
  off_1EB2EA558 = result;
  return result;
}

uint64_t sub_1A83DAE84(void *a1, char a2, int a3, void *a4, void *a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a4;
  v11 = a5;
  v14 = v11;
  if (v10)
  {
    v15 = v11 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = !v15;
  if (v15)
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v32 = "BOOL _IMSPIQueryMessageWithGUIDAndLoadAttachments(NSString *__strong, BOOL, dispatch_qos_class_t, __strong dispatch_queue_t, __strong IMSPIMessageQueryCallback)";
        _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "Empty results block or queue supplied to %s", buf, 0xCu);
      }
    }
  }

  else
  {
    v17 = objc_msgSend_copy(v11, v12, v13);

    if (qword_1EB2EA660 != -1)
    {
      sub_1A84E46DC();
    }

    v18 = off_1EB2EA658(v9);
    v19 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83E16B8;
    block[3] = &unk_1E7814C40;
    v30 = a2;
    v28 = v18;
    v25 = v19;
    v29 = a3;
    v26 = v10;
    v14 = v17;
    v27 = v14;
    v20 = v19;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v22 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t IMSPIQueryMessagesWithGUIDsAndQOS(void *a1, dispatch_qos_class_t a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v12 = v9;
  if (v8)
  {
    v13 = v9 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = !v13;
  if (v13)
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v26 = "BOOL IMSPIQueryMessagesWithGUIDsAndQOS(NSArray<NSString *> *__strong, dispatch_qos_class_t, __strong dispatch_queue_t, __strong IMSPIMessageQueryCallback)";
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Empty results block or queue supplied to %s", buf, 0xCu);
      }
    }
  }

  else
  {
    v15 = objc_msgSend_copy(v9, v10, v11);

    v16 = sub_1A826443C(a2);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1A83DB2B8;
    v20[3] = &unk_1E78149A8;
    v21 = v7;
    v24 = a2;
    v22 = v8;
    v12 = v15;
    v23 = v12;
    dispatch_async(v16, v20);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v14;
}

void sub_1A83DB2B8(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (qword_1EB2EA570 != -1)
  {
    sub_1A84E46F0();
  }

  v2 = off_1EB2EA568(*(a1 + 32));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = objc_msgSend_count(v2, v4, v5);
      v9 = objc_msgSend_count(*(a1 + 32), v7, v8);
      *buf = 134218240;
      v19 = v6;
      v20 = 2048;
      v21 = v9;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Got back %lu messages for %lu GUIDs", buf, 0x16u);
    }
  }

  v10 = sub_1A82618D4(v2, *(a1 + 56));
  sub_1A8262A8C(v10);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1A83DB4A8;
  v15[3] = &unk_1E7810230;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v16 = v10;
  v17 = v12;
  v13 = v10;
  dispatch_async(v11, v15);

  v14 = *MEMORY[0x1E69E9840];
}

void *sub_1A83DB478()
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyMessagesForGUIDs", @"IMDPersistence");
  off_1EB2EA568 = result;
  return result;
}

uint64_t IMSPIGetAttachmentPathsForTransferGUIDsWithQOS(void *a1, dispatch_qos_class_t a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v12 = v9;
  if (v8)
  {
    v13 = v9 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = !v13;
  if (v13)
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v25 = "BOOL IMSPIGetAttachmentPathsForTransferGUIDsWithQOS(NSArray<NSString *> *__strong, dispatch_qos_class_t, __strong dispatch_queue_t, __strong IMSPITransferPathsCallback)";
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Empty results block or queue supplied to %s", buf, 0xCu);
      }
    }
  }

  else
  {
    v15 = objc_msgSend_copy(v9, v10, v11);

    v16 = sub_1A826443C(a2);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83DB6A0;
    block[3] = &unk_1E7810190;
    v21 = v7;
    v22 = v8;
    v12 = v15;
    v23 = v12;
    dispatch_async(v16, block);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v14;
}

void sub_1A83DB6A0(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  if (qword_1EB2EA580 != -1)
  {
    sub_1A84E4704();
  }

  if (qword_1EB2EA590 != -1)
  {
    sub_1A84E4718();
  }

  v2 = objc_alloc(MEMORY[0x1E695DF90]);
  v5 = objc_msgSend_count(*(a1 + 32), v3, v4);
  v7 = objc_msgSend_initWithCapacity_(v2, v6, v5);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v43 = a1;
  v8 = *(a1 + 32);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v50, v54, 16);
  if (v10)
  {
    v11 = v10;
    v12 = *v51;
    v44 = *v51;
    do
    {
      v13 = 0;
      v45 = v11;
      do
      {
        if (*v51 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v50 + 1) + 8 * v13);
        v15 = IMDAttachmentRecordCopyAttachmentForGUID();
        if (v15)
        {
          v17 = v15;
          cf = 0;
          off_1EB2EA578(v15, 0, 0, 0, 0, &cf, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
          if (cf)
          {
            v18 = cf;
            v21 = objc_msgSend_copy(cf, v19, v20);
            v23 = objc_msgSend_componentsSeparatedByString_(v21, v22, @"/Attachments/");

            if (objc_msgSend_count(v23, v24, v25) >= 2)
            {
              v27 = objc_msgSend_objectAtIndexedSubscript_(v23, v26, 1);
              v29 = sub_1A83DBA08(v27, v28);
              objc_msgSend_path(v29, v30, v31);
              v32 = v8;
              v34 = v33 = v7;

              v18 = v34;
              v7 = v33;
              v8 = v32;
              v12 = v44;
            }

            v37 = objc_msgSend_copy(v18, v35, v36);
            objc_msgSend_setObject_forKey_(v7, v38, v37, v14);

            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }

            v11 = v45;
          }

          CFRelease(v17);
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v16, &v50, v54, 16);
    }

    while (v11);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83DBA8C;
  block[3] = &unk_1E7810230;
  v39 = *(v43 + 40);
  v40 = *(v43 + 48);
  v47 = v7;
  v48 = v40;
  v41 = v7;
  dispatch_async(v39, block);

  v42 = *MEMORY[0x1E69E9840];
}

void *sub_1A83DB9A8()
{
  result = MEMORY[0x1AC56C560]("_IMDAttachmentRecordBulkCopy", @"IMDPersistence");
  off_1EB2EA578 = result;
  return result;
}

uint64_t sub_1A83DB9D8()
{
  result = MEMORY[0x1AC56C560]("IMDAttachmentRecordCopyAttachmentForGUID", @"IMDPersistence");
  qword_1EB2EA588 = result;
  return result;
}

id sub_1A83DBA08(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"%@/%@", @"/var/mobile/Library/SMS/Attachments", a1);
  v4 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v3, v2, 0);

  return v4;
}

id IMSPIGetGroupPhotosForChatsWithGroupIDs(void *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1A8259CB0;
  v27 = sub_1A825AF84;
  v2 = objc_alloc(MEMORY[0x1E695DF90]);
  v5 = objc_msgSend_count(v1, v3, v4);
  v28 = objc_msgSend_initWithCapacity_(v2, v6, v5);
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = v1;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Attempting to lookup group photos for chats with groupIDs: %@", buf, 0xCu);
    }
  }

  v10 = objc_msgSend_sharedController(IMDaemonController, v7, v8);
  v13 = objc_msgSend_synchronousRemoteDaemon(v10, v11, v12);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1A83DBD4C;
  v22[3] = &unk_1E7811198;
  v22[4] = &v23;
  objc_msgSend_fetchGroupPhotoPathsForChatsWithGroupIDs_completionHandler_(v13, v14, v1, v22);

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = v24[5];
      *buf = 138412546;
      v30 = v18;
      v31 = 2112;
      v32 = v1;
      _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Finished fetching group photos data: '%@', for groups: '%@'.", buf, 0x16u);
    }
  }

  v19 = objc_msgSend_copy(v24[5], v15, v16);
  _Block_object_dispose(&v23, 8);

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

void sub_1A83DBD4C(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMLogHandleForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v10 = v3;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Received group photos: %@", buf, 0xCu);
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1A83DBE88;
    v8[3] = &unk_1E78149F8;
    v8[4] = *(a1 + 32);
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v3, v6, v8);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E472C(v5);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1A83DBE88(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A83DBF7C;
  v10[3] = &unk_1E78149D0;
  v12 = *(a1 + 32);
  v7 = v5;
  v11 = v7;
  if ((objc_msgSend_accessResourceByConsumingSandboxExtensionWithBlock_(v6, v8, v10) & 1) == 0)
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E4770(v7, v6, v9);
    }
  }
}

void sub_1A83DBF7C(uint64_t a1, const char *a2)
{
  if (a2)
  {
    v10 = 0;
    v3 = objc_msgSend_dataWithContentsOfURL_options_error_(MEMORY[0x1E695DEF0], a2, a2, 0, &v10);
    v4 = v10;
    v6 = v4;
    if (v3)
    {
      v7 = v4 == 0;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      objc_msgSend_setObject_forKeyedSubscript_(*(*(*(a1 + 40) + 8) + 40), v5, v3, *(a1 + 32));
    }

    else
    {
      v8 = IMLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E47F8(v6, v8, v9);
      }
    }
  }

  else
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E4890(v6);
    }
  }
}

uint64_t IMSPIHasActiveAliasForSendingOnService(void *a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v7 = v4;
  if (v3 && v4)
  {
    v8 = objc_msgSend_sharedController(IMDaemonController, v5, v6);
    v10 = objc_msgSend_multiplexedConnectionWithLabel_capabilities_context_(v8, v9, @"IMCoreSPI_HasActiveAlias", 512, 0);

    objc_msgSend_waitForSetup(v10, v11, v12);
    v15 = objc_msgSend_sharedInstance(IMAccountController, v13, v14);
    v18 = objc_msgSend_activeAccounts(v15, v16, v17);

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v19 = v18;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v39, v44, 16);
    if (v23)
    {
      v24 = *v40;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v40 != v24)
          {
            objc_enumerationMutation(v19);
          }

          v26 = *(*(&v39 + 1) + 8 * i);
          v27 = objc_msgSend_serviceName(v26, v21, v22, v39);
          if (objc_msgSend_isEqualToString_(v27, v28, v7))
          {
            v31 = objc_msgSend_aliases(v26, v29, v30);
            v33 = objc_msgSend_containsObject_(v31, v32, v3);

            if (v33)
            {
              v23 = 1;
              goto LABEL_20;
            }
          }

          else
          {
          }
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v39, v44, 16);
      }

      while (v23);
    }

LABEL_20:

    objc_msgSend_invalidate(v10, v35, v36);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v34, OS_LOG_TYPE_INFO, "Invalid input to IMSPIHasActiveAliasForSendingOnService", buf, 2u);
      }
    }

    v23 = 0;
  }

  v37 = *MEMORY[0x1E69E9840];
  return v23;
}

uint64_t IMSPIQueryIMMessageItemsWithGUIDsAndQOS(void *a1, dispatch_qos_class_t a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v12 = v9;
  if (v8)
  {
    v13 = v9 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = !v13;
  if (v13)
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v25 = "BOOL IMSPIQueryIMMessageItemsWithGUIDsAndQOS(NSArray<NSString *> *__strong, dispatch_qos_class_t, __strong dispatch_queue_t, __strong IMSPIMessageQueryCallback)";
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Empty results block or queue supplied to %s", buf, 0xCu);
      }
    }
  }

  else
  {
    v15 = objc_msgSend_copy(v9, v10, v11);

    v16 = sub_1A826443C(a2);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83DC4A4;
    block[3] = &unk_1E7810190;
    v21 = v7;
    v22 = v8;
    v12 = v15;
    v23 = v12;
    dispatch_async(v16, block);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v14;
}

void sub_1A83DC4A4(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  if (qword_1EB2EA5A0 != -1)
  {
    sub_1A84E48D4();
  }

  v2 = off_1EB2EA598(*(a1 + 32));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = objc_msgSend_count(v2, v4, v5);
      v9 = objc_msgSend_count(*(a1 + 32), v7, v8);
      *buf = 134218240;
      v36 = v6;
      v37 = 2048;
      v38 = v9;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Got back %lu messages for %lu GUIDs", buf, 0x16u);
    }
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = v2;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v30, v34, 16);
  if (v13)
  {
    v14 = *v31;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = sub_1A83D22A0(*(*(&v30 + 1) + 8 * i));
        if (v17)
        {
          objc_msgSend_addObject_(v10, v16, v17);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v18, &v30, v34, 16);
    }

    while (v13);
  }

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v22 = objc_msgSend_count(v10, v20, v21);
      *buf = 134217984;
      v36 = v22;
      _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Converted records into items %lu items", buf, 0xCu);
    }
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_1A83DC7C4;
  v27[3] = &unk_1E7810230;
  v23 = *(a1 + 40);
  v24 = *(a1 + 48);
  v28 = v10;
  v29 = v24;
  v25 = v10;
  dispatch_async(v23, v27);

  v26 = *MEMORY[0x1E69E9840];
}

void *sub_1A83DC794()
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyMessagesForGUIDs", @"IMDPersistence");
  off_1EB2EA598 = result;
  return result;
}

uint64_t IMSPIQueryUnreadMessagesWithQOS(uint64_t a1, uint64_t a2, dispatch_qos_class_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v13 = v10;
  if (!v9 || !v10)
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v18 = "Empty results block or queue supplied to IMSPIQueryUnreadMessages";
LABEL_11:
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, v18, buf, 2u);
      }

LABEL_12:
    }

LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  if (!a1)
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v18 = "0 limit supplied, no query issued to IMSPIQueryUnreadMessages";
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v14 = objc_msgSend_copy(v10, v11, v12);

  v15 = sub_1A826443C(a3);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83DC9B4;
  block[3] = &unk_1E7814A20;
  v23 = a1;
  v24 = a2;
  v25 = a3;
  v21 = v9;
  v13 = v14;
  v22 = v13;
  dispatch_async(v15, block);

  v16 = 1;
LABEL_14:

  return v16;
}

void sub_1A83DC9B4(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (qword_1EB2EA5B0 != -1)
  {
    sub_1A84E48E8();
  }

  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 48);
      v4 = *(a1 + 56);
      *buf = 134218240;
      v19 = v3;
      v20 = 2048;
      v21 = v4;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Querying for unread messages with limit: %lld, from row id: %lld", buf, 0x16u);
    }
  }

  v5 = off_1EB2EA5A8(*(a1 + 48), *(a1 + 56));
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = objc_msgSend_count(v5, v7, v8);
      *buf = 134217984;
      v19 = v9;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Got back %lu unread messages", buf, 0xCu);
    }
  }

  v10 = sub_1A82618D4(v5, *(a1 + 64));
  sub_1A8262A8C(v10);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1A83DCC10;
  v15[3] = &unk_1E7810230;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v16 = v10;
  v17 = v12;
  v13 = v10;
  dispatch_async(v11, v15);

  v14 = *MEMORY[0x1E69E9840];
}

void *sub_1A83DCBE0()
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyNewestUnreadIncomingMessagesToLimitAfterRowID", @"IMDPersistence");
  off_1EB2EA5A8 = result;
  return result;
}

uint64_t sub_1A83DCC10(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (objc_msgSend_count(*(a1 + 32), a2, a3))
  {
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v4 + 16);

  return v6(v4, v5);
}

uint64_t IMSPIQueryUnreadMessagesWithIDsAndQOS(void *a1, void *a2, uint64_t a3, dispatch_qos_class_t a4, void *a5, void *a6)
{
  v42 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a5;
  v14 = a6;
  v17 = v14;
  if (!v13 || !v14)
  {
    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "Empty results block or queue supplied to IMSPIQueryUnreadMessagesWithIDs", buf, 2u);
      }

      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v18 = objc_msgSend_count(v11, v15, v16);
  if (v18 != objc_msgSend_count(v12, v19, v20))
  {
    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v39 = v11;
        v40 = 2112;
        v41 = v12;
        _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "Services is not matched with IDs: [%@] [%@] to IMSPIQueryUnreadMessagesWithIDs", buf, 0x16u);
      }

      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (!objc_msgSend_count(v11, v21, v22))
  {
    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "Empty services or IDs supplied to IMSPIQueryUnreadMessagesWithIDs", buf, 2u);
      }

      goto LABEL_22;
    }

LABEL_23:
    v27 = 0;
    goto LABEL_24;
  }

  if (!a3)
  {
    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "0 limit supplied, no query issued to IMSPIQueryUnreadMessagesWithIDs", buf, 2u);
      }

LABEL_22:

      goto LABEL_23;
    }

    goto LABEL_23;
  }

  v25 = objc_msgSend_copy(v17, v23, v24);

  v26 = sub_1A826443C(a4);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = sub_1A83DCFC0;
  v31[3] = &unk_1E7814A48;
  v32 = v12;
  v33 = v11;
  v36 = a3;
  v37 = a4;
  v34 = v13;
  v17 = v25;
  v35 = v17;
  dispatch_async(v26, v31);

  v27 = 1;
LABEL_24:

  v29 = *MEMORY[0x1E69E9840];
  return v27;
}

void sub_1A83DCF9C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A83DCF48);
  }

  _Unwind_Resume(a1);
}

void sub_1A83DCFC0(uint64_t a1)
{
  if (qword_1EB2EA5C0 != -1)
  {
    sub_1A84E48FC();
  }

  v2 = off_1EB2EA5B8(*(a1 + 32), *(a1 + 40), *(a1 + 64));
  v3 = sub_1A82618D4(v2, *(a1 + 72));
  v5 = objc_msgSend___imArrayByFilteringWithBlock_(v3, v4, &unk_1F1B6FD40);
  sub_1A8262A8C(v5);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A83DD100;
  v9[3] = &unk_1E7810230;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, v9);
}

void *sub_1A83DD0D0()
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyMessagesWithHandlesOnServicesLimit", @"IMDPersistence");
  off_1EB2EA5B8 = result;
  return result;
}

uint64_t sub_1A83DD100(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (objc_msgSend_count(*(a1 + 32), a2, a3))
  {
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v4 + 16);

  return v6(v4, v5);
}

uint64_t IMSPIQueryMessagesWithIDsWithOnlyUnreadAndQOS(void *a1, void *a2, char a3, char a4, uint64_t a5, dispatch_qos_class_t a6, void *a7, void *a8)
{
  v48 = *MEMORY[0x1E69E9840];
  v15 = a1;
  v16 = a2;
  v17 = a7;
  v18 = a8;
  v21 = v18;
  if (!v17 || !v18)
  {
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "Empty results block or queue supplied to IMSPIQueryMessagesWithIDs", buf, 2u);
      }

      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v22 = objc_msgSend_count(v15, v19, v20);
  if (v22 != objc_msgSend_count(v16, v23, v24))
  {
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v45 = v15;
        v46 = 2112;
        v47 = v16;
        _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "Services is not matched with IDs: [%@] [%@] to IMSPIQueryMessagesWithIDs", buf, 0x16u);
      }

      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (!objc_msgSend_count(v15, v25, v26))
  {
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "Empty services or IDs supplied to IMSPIQueryMessagesWithIDs", buf, 2u);
      }

      goto LABEL_22;
    }

LABEL_23:
    v30 = 0;
    goto LABEL_24;
  }

  if (!a5)
  {
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "0 limit supplied, no query issued to IMSPIQueryMessagesWithIDs", buf, 2u);
      }

LABEL_22:

      goto LABEL_23;
    }

    goto LABEL_23;
  }

  v34 = objc_msgSend_copy(v21, v27, v28);

  v29 = sub_1A826443C(a6);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83DD504;
  block[3] = &unk_1E7814A70;
  v36 = v16;
  v42 = a3;
  v43 = a4;
  v37 = v15;
  v40 = a5;
  v41 = a6;
  v38 = v17;
  v21 = v34;
  v39 = v21;
  dispatch_async(v29, block);

  v30 = 1;
LABEL_24:

  v32 = *MEMORY[0x1E69E9840];
  return v30;
}

void sub_1A83DD4D4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A83DD480);
  }

  _Unwind_Resume(a1);
}

void sub_1A83DD504(uint64_t a1)
{
  if (qword_1EB2EA5D0 != -1)
  {
    sub_1A84E4910();
  }

  v2 = off_1EB2EA5C8(*(a1 + 32), *(a1 + 40), *(a1 + 76), *(a1 + 77), *(a1 + 64));
  v3 = sub_1A82618D4(v2, *(a1 + 72));
  sub_1A8262A8C(v3);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A83DD62C;
  v7[3] = &unk_1E7810230;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void *sub_1A83DD5FC()
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesWithOnlyUnreadAndLimit", @"IMDPersistence");
  off_1EB2EA5C8 = result;
  return result;
}

uint64_t sub_1A83DD62C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (objc_msgSend_count(*(a1 + 32), a2, a3))
  {
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v4 + 16);

  return v6(v4, v5);
}

uint64_t IMSPIQueryMessagesWithQOS(uint64_t a1, dispatch_qos_class_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v11 = v8;
  if (!v7 || !v8)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v16 = "Empty results block or queue supplied to IMSPIQueryMessages";
LABEL_11:
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, v16, buf, 2u);
      }

LABEL_12:
    }

LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  if (!a1)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v16 = "0 limit supplied, no query issued to IMSPIQueryMessages";
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v12 = objc_msgSend_copy(v8, v9, v10);

  v13 = sub_1A826443C(a2);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1A83DD850;
  v18[3] = &unk_1E7814980;
  v21 = a1;
  v22 = a2;
  v19 = v7;
  v11 = v12;
  v20 = v11;
  dispatch_async(v13, v18);

  v14 = 1;
LABEL_14:

  return v14;
}

void sub_1A83DD850(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (qword_1EB2EA5E0 != -1)
  {
    sub_1A84E4924();
  }

  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 48);
      *buf = 134217984;
      v18 = v3;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Querying for messages with limit: %lld", buf, 0xCu);
    }
  }

  v4 = off_1EB2EA5D8(*(a1 + 48));
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = objc_msgSend_count(v4, v6, v7);
      *buf = 134217984;
      v18 = v8;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Got back %lu messages", buf, 0xCu);
    }
  }

  v9 = sub_1A82618D4(v4, *(a1 + 56));
  sub_1A8262A8C(v9);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1A83DDAA0;
  v14[3] = &unk_1E7810230;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v15 = v9;
  v16 = v11;
  v12 = v9;
  dispatch_async(v10, v14);

  v13 = *MEMORY[0x1E69E9840];
}

void *sub_1A83DDA70()
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyLastReceivedMessageLimit", @"IMDPersistence");
  off_1EB2EA5D8 = result;
  return result;
}

uint64_t sub_1A83DDAA0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (objc_msgSend_count(*(a1 + 32), a2, a3))
  {
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v4 + 16);

  return v6(v4, v5);
}

void *sub_1A83DDB20()
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesWithOnlyUnreadAndLimit", @"IMDPersistence");
  off_1EB2E91F8 = result;
  return result;
}

uint64_t IMSPIQueryHasConversationWithIDAndQOS(void *a1, void *a2, dispatch_qos_class_t a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a4;
  v12 = a5;
  v15 = v12;
  if (!v11 || !v12)
  {
    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v35 = "Empty results block or queue supplied to IMSPIQueryHasConversationWithID";
LABEL_16:
        _os_log_impl(&dword_1A823F000, v34, OS_LOG_TYPE_INFO, v35, buf, 2u);
      }

LABEL_17:
    }

LABEL_18:
    v33 = 0;
    goto LABEL_19;
  }

  if (!objc_msgSend_length(v9, v13, v14))
  {
    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v35 = "Empty ID passed into IMSPIQueryHasConversationWithID";
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v16 = IMSingleObjectArray();
  if (!objc_msgSend_count(v16, v17, v18))
  {
    v20 = objc_msgSend_arrayWithObjects_(MEMORY[0x1E695DEC8], v19, @"iMessage", @"SMS", 0);

    v16 = v20;
  }

  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (objc_msgSend_count(v16, v22, v23))
  {
    v26 = 0;
    do
    {
      objc_msgSend_addObject_(v21, v24, v9);
      ++v26;
    }

    while (v26 < objc_msgSend_count(v16, v27, v28));
  }

  v29 = objc_msgSend_copy(v15, v24, v25);

  v30 = sub_1A826443C(a3);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83DDDF8;
  block[3] = &unk_1E78120D0;
  v38 = v21;
  v39 = v16;
  v40 = v11;
  v15 = v29;
  v41 = v15;
  v31 = v16;
  v32 = v21;
  dispatch_async(v30, block);

  v33 = 1;
LABEL_19:

  return v33;
}

void sub_1A83DDDF8(uint64_t a1)
{
  if (qword_1EB2EA5F0 != -1)
  {
    sub_1A84E494C();
  }

  v2 = off_1EB2EA5E8(*(a1 + 32), *(a1 + 40), 1);
  v5 = objc_msgSend_count(v2, v3, v4) != 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A83DDF00;
  v7[3] = &unk_1E7812930;
  v6 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = v5;
  dispatch_async(v6, v7);
}

void *sub_1A83DDED0()
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyMessagesWithHandlesOnServicesLimit", @"IMDPersistence");
  off_1EB2EA5E8 = result;
  return result;
}

BOOL IMSPIQueryChatsWithUnplayedAudioMessages(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E69E96A0];
  v3 = MEMORY[0x1E69E96A0];
  if (v1)
  {
    v6 = objc_msgSend_copy(v1, v4, v5);

    v7 = sub_1A826443C(QOS_CLASS_DEFAULT);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1A83DE078;
    v11[3] = &unk_1E7814750;
    v8 = v2;
    v12 = v2;
    v13 = v6;
    v9 = v6;
    dispatch_async(v7, v11);
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_4;
    }

    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Empty results block supplied to IMSPIQueryChatsWithUnplayedAudioMessages", buf, 2u);
    }
  }

LABEL_4:
  return v1 != 0;
}

void sub_1A83DE078(uint64_t a1)
{
  if (qword_1EB2EA600 != -1)
  {
    sub_1A84E4960();
  }

  v2 = off_1EB2EA5F8();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A83DE178;
  v6[3] = &unk_1E7810230;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  dispatch_async(v3, v6);
}

void *sub_1A83DE148()
{
  result = MEMORY[0x1AC56C560]("IMDChatRecordCopyChatGUIDsWithUnplayedAudioMessages", @"IMDPersistence");
  off_1EB2EA5F8 = result;
  return result;
}

void IMSPIBatchFetchMessageGUIDsWithBalloonBundleID(void *a1, uint64_t a2, void *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v40 = a1;
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v47 = v40;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Received request to get message GUIDs for balloon bundle ID %@", buf, 0xCu);
    }
  }

  v9 = objc_msgSend_copy(v5, v6, v7);

  v10 = objc_alloc_init(MEMORY[0x1E69A5DD0]);
  objc_msgSend_setBatchSize_(v10, v11, a2);
  v13 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], v12, @"%K = %@", *MEMORY[0x1E69A7130], v40);
  objc_msgSend_setPredicate_(v10, v14, v13);

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v15 = v10;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v41, v45, 16);
  if (v19)
  {
    v20 = *v42;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v42 != v20)
        {
          objc_enumerationMutation(v15);
        }

        v22 = *(*(&v41 + 1) + 8 * i);
        v23 = objc_msgSend_guid(v22, v17, v18);
        v26 = objc_msgSend_copy(v23, v24, v25);

        v29 = objc_msgSend_iMessageAppData(v22, v27, v28);
        v32 = objc_msgSend_copy(v29, v30, v31);

        v33 = _IMSPIExtractPayloadURLFromPayloadNSData(v32);
        v36 = objc_msgSend_copy(v33, v34, v35);

        if ((v9)[2](v9, v26, v36))
        {
          if (IMOSLoggingEnabled())
          {
            v37 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v47 = v40;
              _os_log_impl(&dword_1A823F000, v37, OS_LOG_TYPE_INFO, "Stopping early for batch fetch of message records with balloon bundle ID %@", buf, 0xCu);
            }
          }

          goto LABEL_19;
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v41, v45, 16);
      if (v19)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  if (IMOSLoggingEnabled())
  {
    v38 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v47 = v40;
      _os_log_impl(&dword_1A823F000, v38, OS_LOG_TYPE_INFO, "Finished batch fetch of message records with balloon bundle ID %@", buf, 0xCu);
    }
  }

  v39 = *MEMORY[0x1E69E9840];
}

void sub_1A83DE514(uint64_t a1)
{
  if (qword_1EB2EA610 != -1)
  {
    sub_1A84E4974();
  }

  v2 = off_1EB2EA608(*(a1 + 32));
  if (v2)
  {
    v3 = [IMSPIChat alloc];
    v5 = objc_msgSend_initWithChatRecord_(v3, v4, v2);
  }

  else
  {
    v5 = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A83DE648;
  v9[3] = &unk_1E7810230;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, v9);
  if (v2)
  {
    CFRelease(v2);
  }
}

void *sub_1A83DE618()
{
  result = MEMORY[0x1AC56C560]("IMDChatRecordCopyChatForGUID", @"IMDPersistence");
  off_1EB2EA608 = result;
  return result;
}

BOOL IMSPIQueryChatWithGroupID(void *a1, dispatch_qos_class_t a2, void *a3, void *a4)
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
    block[2] = sub_1A83DE7E4;
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

void sub_1A83DE7E4(uint64_t a1)
{
  if (qword_1EB2EA620 != -1)
  {
    sub_1A84E4988();
  }

  v2 = off_1EB2EA618(*(a1 + 32));
  v3 = v2;
  if (v2 && CFArrayGetCount(v2) >= 1)
  {
    Count = CFArrayGetCount(v3);
    ValueAtIndex = CFArrayGetValueAtIndex(v3, Count - 1);
    if (ValueAtIndex)
    {
      v6 = [IMSPIChat alloc];
      ValueAtIndex = objc_msgSend_initWithChatRecord_(v6, v7, ValueAtIndex);
    }
  }

  else
  {
    ValueAtIndex = 0;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A83DE944;
  v11[3] = &unk_1E7810230;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v12 = ValueAtIndex;
  v13 = v9;
  v10 = ValueAtIndex;
  dispatch_async(v8, v11);
  if (v3)
  {
    CFRelease(v3);
  }
}

void *sub_1A83DE914()
{
  result = MEMORY[0x1AC56C560]("IMDChatRecordCopyChatsWithGroupID", @"IMDPersistence");
  off_1EB2EA618 = result;
  return result;
}

uint64_t IMSPIQueryMessagesWithAttributesAndQOS(int a1, uint64_t a2, uint64_t a3, dispatch_qos_class_t a4, void *a5, void *a6)
{
  v11 = a5;
  v12 = a6;
  v15 = v12;
  if (!v11 || !v12)
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v20 = "Empty results block or queue supplied to IMSPIQueryUnreadMessagesWithIDs";
LABEL_11:
        _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, v20, buf, 2u);
      }

LABEL_12:
    }

LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

  if (!a2)
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v20 = "0 limit supplied, no query issued to IMSPIQueryUnreadMessagesWithIDs";
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v16 = objc_msgSend_copy(v12, v13, v14);

  v17 = sub_1A826443C(a4);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83DEB38;
  block[3] = &unk_1E7814AE0;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a1;
  v23 = v11;
  v15 = v16;
  v24 = v15;
  dispatch_async(v17, block);

  v18 = 1;
LABEL_14:

  return v18;
}

void sub_1A83DEB38(uint64_t a1)
{
  if (qword_1EB2EA630 != -1)
  {
    sub_1A84E499C();
  }

  v2 = off_1EB2EA628(*(a1 + 48), *(a1 + 56));
  v3 = sub_1A82618D4(v2, *(a1 + 64));
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A83DECB8;
  v12[3] = &unk_1E7814AB8;
  v13 = *(a1 + 68);
  v5 = objc_msgSend___imArrayByFilteringWithBlock_(v3, v4, v12);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83DEE14;
  block[3] = &unk_1E7810230;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

void *sub_1A83DEC88()
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyMessagesDataDetectionResults", @"IMDPersistence");
  off_1EB2EA628 = result;
  return result;
}

uint64_t sub_1A83DECB8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_attributedText(a2, a2, a3);
  v7 = v4;
  v8 = *(a1 + 32);
  if (v8)
  {
    v10 = *MEMORY[0x1E69A5FB0];
    v11 = objc_msgSend_length(v4, v5, v6);
    v9 = objc_msgSend_attribute_existsInRange_(v7, v12, v10, 0, v11);
    v8 = *(a1 + 32);
  }

  else
  {
    v9 = 0;
  }

  v13 = MEMORY[0x1E69A5EF0];
  if ((v8 & 4) != 0)
  {
    v18 = *MEMORY[0x1E69A5EF0];
    v19 = objc_msgSend_length(v7, v5, v6);
    v9 = v9 | objc_msgSend_attribute_existsInRange_(v7, v20, v18, 0, v19);
    v8 = *(a1 + 32);
    if ((v8 & 2) == 0)
    {
LABEL_6:
      if ((v8 & 8) == 0)
      {
        goto LABEL_7;
      }

LABEL_12:
      v24 = *MEMORY[0x1E69A5F38];
      v25 = objc_msgSend_length(v7, v5, v6);
      v9 = v9 | objc_msgSend_attribute_existsInRange_(v7, v26, v24, 0, v25);
      if ((*(a1 + 32) & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_6;
  }

  v21 = *v13;
  v22 = objc_msgSend_length(v7, v5, v6);
  v9 = v9 | objc_msgSend_attribute_existsInRange_(v7, v23, v21, 0, v22);
  v8 = *(a1 + 32);
  if ((v8 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v8 & 0x10) != 0)
  {
LABEL_8:
    v14 = *MEMORY[0x1E69A5F48];
    v15 = objc_msgSend_length(v7, v5, v6);
    v9 = v9 | objc_msgSend_attribute_existsInRange_(v7, v16, v14, 0, v15);
  }

LABEL_9:

  return v9;
}

uint64_t sub_1A83DEE14(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (objc_msgSend_count(*(a1 + 32), a2, a3))
  {
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v4 + 16);

  return v6(v4, v5);
}

void IMSPIRemoveAttachmentGUIDFromSyndication(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v1;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Received request to hide syndication for attachment GUID %@", &v8, 0xCu);
    }
  }

  v5 = objc_msgSend_synchronousDatabase(MEMORY[0x1E69A5DA8], v2, v3);
  objc_msgSend_updateAttachmentSyndicationRanges_shouldHideFromSyndication_(v5, v6, v1, 1);

  v7 = *MEMORY[0x1E69E9840];
}

void IMSPIUnhideSyndicationForAttachmentGUID(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v1;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Received request to unhide syndication for attachment GUID %@", &v8, 0xCu);
    }
  }

  v5 = objc_msgSend_synchronousDatabase(MEMORY[0x1E69A5DA8], v2, v3);
  objc_msgSend_updateAttachmentSyndicationRanges_shouldHideFromSyndication_(v5, v6, v1, 0);

  v7 = *MEMORY[0x1E69E9840];
}

void IMSPIRemoveMessageGUIDFromSyndication(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v1;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Received request to hide syndication for message GUID: %@", &v8, 0xCu);
    }
  }

  v5 = objc_msgSend_database(MEMORY[0x1E69A5DA8], v2, v3);
  objc_msgSend_updateMessageSyndicationRanges_shouldHideFromSyndication_(v5, v6, v1, 1);

  v7 = *MEMORY[0x1E69E9840];
}

void IMSPIUnhideSyndicationForMessageGUID(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v1;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Received request to hide syndication for message GUID: %@", &v8, 0xCu);
    }
  }

  v5 = objc_msgSend_database(MEMORY[0x1E69A5DA8], v2, v3);
  objc_msgSend_updateMessageSyndicationRanges_shouldHideFromSyndication_(v5, v6, v1, 0);

  v7 = *MEMORY[0x1E69E9840];
}

void IMSPIUpdatePluginMessageWithGUID(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = v3;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Received request to update plugin payload data for message GUID: %@", buf, 0xCu);
    }
  }

  v8 = objc_msgSend_sharedController(IMDaemonController, v5, v6);
  v10 = objc_msgSend_multiplexedConnectionWithLabel_capabilities_context_(v8, v9, @"IMCoreSPI_UpdatePluginMessageWithGUID", 8708, 0);

  objc_msgSend_waitForSetup(v10, v11, v12);
  v15 = objc_msgSend_synchronousRemoteProxy(v10, v13, v14);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1A83DF40C;
  v20[3] = &unk_1E7814B08;
  v21 = v3;
  v22 = v10;
  v16 = v10;
  v17 = v3;
  objc_msgSend_updatePluginMessageWithGUID_newPayloadData_completion_(v15, v18, v17, v4, v20);

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A83DF40C(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      v8 = *(a1 + 32);
      if (a2)
      {
        v7 = @"YES";
      }

      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Finished updating plugin payload data for message with GUID %@. success: %@", &v11, 0x16u);
    }
  }

  result = objc_msgSend_invalidate(*(a1 + 40), v4, v5);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

id IMSPILastAddressedHandleForChatWithGUID(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_sharedController(IMDaemonController, v2, v3);
  v6 = objc_msgSend_multiplexedConnectionWithLabel_capabilities_context_(v4, v5, @"IMCoreSPI_LastAddressedHandleForChatWithGUID", 516, 0);

  objc_msgSend_waitForSetup(v6, v7, v8);
  if (v1)
  {
    v11 = objc_msgSend_sharedRegistry(IMChatRegistry, v9, v10);
    v13 = objc_msgSend_existingChatWithGUID_(v11, v12, v1);

    if (v13)
    {
      v14 = objc_msgSend_lastAddressedHandleID(v13, v9, v10);
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = 0;
LABEL_6:
  objc_msgSend_invalidate(v6, v9, v10);

  return v14;
}

void IMSPIResetChatRegistry()
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "IMSPIResetChatRegistry", v6, 2u);
    }
  }

  v3 = objc_msgSend_sharedRegistry(IMChatRegistry, v0, v1);
  objc_msgSend__resetChatRegistry(v3, v4, v5);
}

uint64_t IMCopyIDForPhoneNumber(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (objc_msgSend_length(v3, v5, v6))
  {
    v7 = IMInternationalForPhoneNumberWithOptions();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL sub_1A83DF740(uint64_t a1, void *a2, void *a3, void *a4, BOOL *a5, BOOL *a6, void *a7)
{
  v26 = *MEMORY[0x1E69E9840];
  v12 = a2;
  v13 = IMDAttachmentRecordCopyAttachmentForGUID();
  if (v13)
  {
    if (a7)
    {
      *a7 = 0;
    }

    v14 = MEMORY[0x1E695E480];
    if (a3)
    {
      v15 = *MEMORY[0x1E695E480];
      v16 = IMDAttachmentRecordCopyFilename();
      if (CFStringGetLength(v16) < 1)
      {
        v18 = 0;
      }

      else
      {
        v18 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v17, v16, 0);
      }

      *a3 = v18;
      if (v16)
      {
        CFRelease(v16);
      }
    }

    if (a4)
    {
      v20 = *v14;
      v21 = IMDAttachmentRecordCopyUTIType();
      *a4 = v21;
      if (v21)
      {
        CFRelease(v21);
      }
    }

    if (a5)
    {
      *a5 = IMDAttachmentRecordIsSticker() != 0;
    }

    if (a6)
    {
      *a6 = IMDAttachmentRecordGetIsOutgoing() != 0;
    }

    CFRelease(v13);
  }

  else if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v24 = 138412290;
      v25 = v12;
      _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Couldn't find attachment with guid %@", &v24, 0xCu);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v13 != 0;
}

uint64_t IMSPISimulateMessageReceive(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a1;
  sub_1A8306F6C(v10, v11, v12);
  v15 = objc_msgSend_sharedController(IMDaemonController, v13, v14);
  v18 = objc_msgSend_remoteDaemon(v15, v16, v17);
  objc_msgSend_simulateMessageReceive_serviceName_groupID_handles_sender_(v18, v19, v10, v8, 0, v9, v7);

  return 1;
}

void *sub_1A83DF9CC()
{
  result = MEMORY[0x1AC56C560]("_IMDAttachmentRecordBulkCopy", @"IMDPersistence");
  off_1EB2E9208 = result;
  return result;
}

void *sub_1A83DF9FC()
{
  result = MEMORY[0x1AC56C560]("IMDCreateIMItemFromIMDMessageRecordRefWithAccountLookup", @"IMDPersistence");
  off_1EB2EA638 = result;
  return result;
}

void *sub_1A83DFA2C()
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyChats", @"IMDPersistence");
  off_1EB2E9168 = result;
  return result;
}

void *sub_1A83DFA5C()
{
  result = MEMORY[0x1AC56C560]("_IMDChatRecordBulkCopy", @"IMDPersistence");
  off_1EB2E9158 = result;
  return result;
}

void *sub_1A83DFA8C()
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyLastReadMessageForChatIdentifier", @"IMDPersistence");
  off_1EB2E9160 = result;
  return result;
}

void *sub_1A83DFABC()
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordBulkCopy", @"IMDPersistence");
  off_1EB2EA648 = result;
  return result;
}

void sub_1A83DFAEC(uint64_t a1, void *a2)
{
  v4 = objc_msgSend_allValuesSortedByGUIDKeyWithBackupOrder_(a2, a2, *(a1 + 32));
  objc_msgSend_addAttachmentsFromFilePaths_(*(a1 + 40), v3, v4);
  dispatch_group_leave(*(a1 + 48));
}

void sub_1A83DFB50(uint64_t a1, const char *a2, uint64_t a3)
{
  v8 = objc_msgSend_sharedInstance(IMBalloonPluginManager, a2, a3);
  v5 = objc_msgSend_dataSourceForPluginPayload_(v8, v4, *(a1 + 32));
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_1A83DFBC0(void **a1, const char *a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_count(a1[4], a2, a3) || a1[5] || IMIsRunningInGameCenter())
  {
    v4 = IMOSLoggingEnabled();
    if (v4)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Have non-zero attachments to send, ensuring we have transfer capability", buf, 2u);
      }
    }

    sub_1A830701C(v4, v5, v6);
  }

  else
  {
    v31 = IMOSLoggingEnabled();
    if (v31)
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v34, OS_LOG_TYPE_INFO, "Setting the chat cap only", buf, 2u);
      }
    }

    sub_1A8306FC4(v31, v32, v33);
  }

  v10 = sub_1A83D3A58(a1[6], a1[7], a1[8], a1[9], 1);
  if (v10)
  {
    if (objc_msgSend_length(a1[6], v8, v9))
    {
      v13 = objc_msgSend_serviceWithInternalName_(IMServiceImpl, v11, a1[6]);
      objc_msgSend__targetToService_newComposition_supportsEncryption_(v10, v14, v13, 1, 0);
    }

    else
    {
      objc_msgSend_refreshServiceForSending(v10, v11, v12);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1A83DFFDC;
    aBlock[3] = &unk_1E7814B78;
    v40 = a1[4];
    v20 = v10;
    v41 = v20;
    v21 = a1[10];
    v22 = a1[11];
    v23 = a1[12];
    v24 = a1[13];
    *&v25 = v23;
    *(&v25 + 1) = v24;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v42 = v26;
    v43 = v25;
    v44 = a1[14];
    v45 = a1[5];
    v46 = a1[15];
    v47 = a1[16];
    v27 = _Block_copy(aBlock);
    v28 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83E0874;
    block[3] = &unk_1E7810190;
    v36 = v20;
    v37 = a1[6];
    v38 = v27;
    v29 = v27;
    dispatch_after(v28, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v15 = IMOSLoggingEnabled();
    if (v15)
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = a1[7];
        *buf = 138412290;
        v49 = v19;
        _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Cannot get chat for destinations: %@", buf, 0xCu);
      }
    }

    sub_1A8307074(v15, v16, v17);
  }

  v30 = *MEMORY[0x1E69E9840];
}

void sub_1A83DFFDC(void **a1)
{
  v5 = sub_1A83D775C(a1[4]);
  v2 = sub_1A83E004C(a1[5], a1[6], a1[7], a1[8], a1[9], v5, a1[10], a1[11], a1[12], a1[13]);
  sub_1A8307074(v2, v3, v4);
}

BOOL sub_1A83E004C(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v134 = *MEMORY[0x1E69E9840];
  v17 = a1;
  v119 = a2;
  v117 = a3;
  v111 = a4;
  v118 = a5;
  v114 = a6;
  v112 = a7;
  v113 = a8;
  v115 = a9;
  v116 = a10;
  v18 = IMOSLoggingEnabled();
  v120 = v17;
  if (v17)
  {
    if (v18)
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        if (v115)
        {
          objc_msgSend_timeIntervalSinceNow(v115, v20, v21);
        }

        else
        {
          v22 = 0;
        }

        *buf = 138412802;
        v129 = v17;
        v130 = 2048;
        v131 = v22;
        v132 = 2112;
        v133 = v118;
        _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "About to send message for chat: %@ time delay: %lf associatedMessageGUID: %@", buf, 0x20u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v27 = objc_msgSend_participants(v17, v25, v26);
        *buf = 138412290;
        v129 = v27;
        _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "About to send message to: %@", buf, 0xCu);
      }
    }

    v122 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    obj = v114;
    v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v28, &v123, v127, 16);
    if (v31)
    {
      v32 = *v124;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v124 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v34 = *(*(&v123 + 1) + 8 * i);
          v35 = objc_msgSend_fileURL(v34, v29, v30);
          v37 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v36, v35);
          v40 = objc_msgSend_sharedInstance(IMFileTransferCenter, v38, v39);
          objc_msgSend_setIssueSandboxEstensionsForTransfers_(v40, v41, 1);

          v44 = objc_msgSend_sharedInstance(IMFileTransferCenter, v42, v43);
          v46 = objc_msgSend_createNewOutgoingTransferWithLocalFileURL_(v44, v45, v37);

          v49 = objc_msgSend_sharedInstance(IMFileTransferCenter, v47, v48);
          objc_msgSend_setIssueSandboxEstensionsForTransfers_(v49, v50, 0);

          v53 = objc_msgSend_sharedInstance(IMFileTransferCenter, v51, v52);
          v55 = objc_msgSend_transferForGUID_(v53, v54, v46);

          if (objc_msgSend_isSensitive(v34, v56, v57))
          {
            objc_msgSend_setCommSafetySensitive_(v55, v58, 2);
          }

          objc_msgSend_addObject_(v122, v58, v46);
          v61 = objc_msgSend_sharedInstance(IMFileTransferCenter, v59, v60);
          objc_msgSend_registerTransferWithDaemon_(v61, v62, v46);
        }

        v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v123, v127, 16);
      }

      while (v31);
    }

    v63 = objc_alloc(MEMORY[0x1E696AAB0]);
    if (objc_msgSend_length(v119, v64, v65))
    {
      v67 = objc_msgSend_initWithString_(v63, v66, v119);
    }

    else
    {
      v67 = objc_msgSend_initWithString_(v63, v66, &stru_1F1B76F98);
    }

    v69 = v67;
    v70 = objc_msgSend___im_attributedStringByAppendingFileTransfers_(v67, v68, v122);
    v73 = objc_msgSend___im_attributedStringByAssigningMessagePartNumbers(v70, v71, v72);
    v76 = v73;
    if (v117)
    {
      v77 = objc_msgSend_mutableCopy(v73, v74, v75);
      objc_msgSend_appendAttributedString_(v77, v78, v117);
      v81 = objc_msgSend_copy(v77, v79, v80);

      v76 = v81;
    }

    v82 = objc_msgSend_length(v118, v74, v75) == 0;
    v83 = [IMMessage alloc];
    v86 = v83;
    if (v82)
    {
      if (!v115)
      {
        v93 = objc_msgSend_date(MEMORY[0x1E695DF00], v84, v85);
        timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState = objc_msgSend_initWithSender_time_text_messageSubject_fileTransferGUIDs_flags_error_guid_subject_balloonBundleID_payloadData_expressiveSendStyleID_threadIdentifier_scheduleType_scheduleState_(v86, v94, 0, v93, v76, 0, v122, 5, 0, v111, 0, v112, v113, 0, 0, 0, 0);

        goto LABEL_39;
      }

      v87 = objc_msgSend_initWithSender_time_text_messageSubject_fileTransferGUIDs_flags_error_guid_subject_balloonBundleID_payloadData_expressiveSendStyleID_threadIdentifier_scheduleType_scheduleState_(v83, v84, 0, v115, v76, 0, v122, 5, 0, v111, 0, v112, v113, 0, 0, 1, 2);
    }

    else
    {
      if (!v115)
      {
        v91 = objc_msgSend_date(MEMORY[0x1E695DF00], v84, v85);
        timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState = objc_msgSend__initWithSender_time_timeRead_timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState_(v86, v92, 0, v91, 0, 0, 0, 0, v76, 0, v122, 5, 0, v111, 0, 0, v112, v113, 0, 0, v118, 2, 0, 0x7FFFFFFFFFFFFFFFLL, 0, 0, 0, 0, 0, 0, 0);

        goto LABEL_39;
      }

      v87 = objc_msgSend__initWithSender_time_timeRead_timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState_(v83, v84, 0, v115, 0, 0, 0, 0, v76, 0, v122, 5, 0, v111, 0, 0, v112, v113, 0, 0, v118, 2, 0, 0x7FFFFFFFFFFFFFFFLL, 0, 0, 0, 0, 0, 1, 2);
    }

    timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState = v87;
LABEL_39:
    v95 = objc_msgSend_sharedInstance(IMFileTransferCenter, v88, v89);
    objc_msgSend_setIssueSandboxEstensionsForTransfers_(v95, v96, 1);

    objc_msgSend_sendMessage_(v120, v97, timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState);
    v100 = objc_msgSend_sharedInstance(IMFileTransferCenter, v98, v99);
    objc_msgSend_setIssueSandboxEstensionsForTransfers_(v100, v101, 0);

    if (IMOSLoggingEnabled())
    {
      v104 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
      {
        v107 = objc_msgSend_guid(timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState, v105, v106);
        *buf = 138412546;
        v129 = v107;
        v130 = 2112;
        v131 = v120;
        _os_log_impl(&dword_1A823F000, v104, OS_LOG_TYPE_INFO, "Sent message with guid: %@ to chat: %@", buf, 0x16u);
      }
    }

    if (v116)
    {
      v108 = objc_msgSend_guid(timeDelivered_timePlayed_plainText_text_messageSubject_fileTransferGUIDs_flags_error_guid_messageID_subject_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_messageSummaryInfo_threadIdentifier_dateEdited_dateRecovered_scheduleType_scheduleState, v102, v103);
      v116[2](v116, v108);
    }

    goto LABEL_46;
  }

  if (v18)
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "Cannot send message without chat", buf, 2u);
    }
  }

LABEL_46:

  v109 = *MEMORY[0x1E69E9840];
  return v120 != 0;
}

void sub_1A83E0814(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A83E01ECLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A83E0874(void **a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_account(a1[4], a2, a3);
  v7 = objc_msgSend_service(v4, v5, v6);

  v10 = objc_msgSend_iMessageService(IMServiceImpl, v8, v9);
  v13 = v10;
  if (v7 == v10)
  {
  }

  else
  {
    v14 = objc_msgSend_length(a1[5], v11, v12);

    if (!v14)
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *v18 = 0;
          _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Waiting for registration check before sending", v18, 2u);
        }
      }

      v16 = dispatch_time(0, 4000000000);
      dispatch_after(v16, MEMORY[0x1E69E96A0], a1[6]);
      goto LABEL_14;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Cache hit, send now", buf, 2u);
    }
  }

  (*(a1[6] + 2))();
LABEL_14:
}

void sub_1A83E0A04(void **a1, const char *a2, uint64_t a3)
{
  v46 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_count(a1[4], a2, a3) || a1[5] || IMIsRunningInGameCenter())
  {
    v4 = IMOSLoggingEnabled();
    if (v4)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Have non-zero attachments to receive, ensuring we have transfer capability", buf, 2u);
      }
    }

    sub_1A830701C(v4, v5, v6);
  }

  else
  {
    v29 = IMOSLoggingEnabled();
    if (v29)
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_INFO, "Setting the chat cap only", buf, 2u);
      }
    }

    sub_1A8306FC4(v29, v30, v31);
  }

  v8 = sub_1A83D3A58(a1[6], a1[7], a1[8], a1[9], 1);
  v11 = v8;
  if (v8)
  {
    objc_msgSend_refreshServiceForSending(v8, v9, v10);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1A83E0DD4;
    aBlock[3] = &unk_1E7814BC8;
    v37 = a1[4];
    v12 = v11;
    v38 = v12;
    v13 = a1[10];
    v14 = a1[11];
    v15 = a1[12];
    v16 = a1[13];
    *&v17 = v15;
    *(&v17 + 1) = v16;
    *&v18 = v13;
    *(&v18 + 1) = v14;
    v39 = v18;
    v40 = v17;
    v41 = a1[14];
    v42 = a1[5];
    v43 = a1[15];
    v19 = _Block_copy(aBlock);
    v20 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83E1494;
    block[3] = &unk_1E7814750;
    v34 = v12;
    v35 = v19;
    v21 = v19;
    dispatch_after(v20, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v22 = IMOSLoggingEnabled();
    if (v22)
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = a1[7];
        *buf = 138412290;
        v45 = v26;
        _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Cannot get chat for destinations: %@", buf, 0xCu);
      }
    }

    sub_1A8307074(v22, v23, v24);
    v27 = a1[15];
    if (v27)
    {
      v27[2](v27, 0);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

void sub_1A83E0DD4(uint64_t a1)
{
  v129 = *MEMORY[0x1E69E9840];
  v2 = sub_1A83D775C(*(a1 + 32));
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v10 = *(a1 + 88);
  v9 = *(a1 + 96);
  v11 = v3;
  v112 = v4;
  v113 = v5;
  v108 = v6;
  v109 = v7;
  v116 = v2;
  v110 = v8;
  v111 = v10;
  v114 = v11;
  v115 = v9;
  if (v11)
  {
    v14 = objc_msgSend_account(v11, v12, v13);
    v107 = objc_msgSend_imHandleWithID_(v14, v15, v112);

    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v128 = v11;
        _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "About to insert a received message for chat: %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v128 = v107;
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "About to insert a received message from handle: %@", buf, 0xCu);
      }
    }

    v118 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    obj = v116;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v119, buf, 16);
    if (v21)
    {
      v22 = *v120;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v120 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v119 + 1) + 8 * i);
          v25 = objc_msgSend_fileURL(v24, v19, v20);
          v27 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v26, v25);
          v30 = objc_msgSend_sharedInstance(IMFileTransferCenter, v28, v29);
          objc_msgSend_setIssueSandboxEstensionsForTransfers_(v30, v31, 1);

          v34 = objc_msgSend_sharedInstance(IMFileTransferCenter, v32, v33);
          v36 = objc_msgSend_createNewOutgoingTransferWithLocalFileURL_(v34, v35, v27);

          v39 = objc_msgSend_sharedInstance(IMFileTransferCenter, v37, v38);
          objc_msgSend_setIssueSandboxEstensionsForTransfers_(v39, v40, 0);

          v43 = objc_msgSend_sharedInstance(IMFileTransferCenter, v41, v42);
          v45 = objc_msgSend_transferForGUID_(v43, v44, v36);

          if (objc_msgSend_isSensitive(v24, v46, v47))
          {
            objc_msgSend_setCommSafetySensitive_(v45, v48, 2);
          }

          objc_msgSend_addObject_(v118, v48, v36);
          v51 = objc_msgSend_sharedInstance(IMFileTransferCenter, v49, v50);
          objc_msgSend_registerTransferWithDaemon_(v51, v52, v36);
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v119, buf, 16);
      }

      while (v21);
    }

    v53 = objc_alloc(MEMORY[0x1E696AAB0]);
    if (objc_msgSend_length(v113, v54, v55))
    {
      v57 = objc_msgSend_initWithString_(v53, v56, v113);
    }

    else
    {
      v57 = objc_msgSend_initWithString_(v53, v56, &stru_1F1B76F98);
    }

    v59 = v57;
    v60 = objc_msgSend___im_attributedStringByAppendingFileTransfers_(v57, v58, v118);
    v65 = objc_msgSend___im_attributedStringByAssigningMessagePartNumbers(v60, v61, v62);
    if (v109)
    {
      v66 = v109;
    }

    else
    {
      v66 = objc_msgSend_date(MEMORY[0x1E695DF00], v63, v64);
    }

    v68 = v66;
    v69 = [IMMessage alloc];
    v71 = objc_msgSend_initWithSender_time_text_messageSubject_fileTransferGUIDs_flags_error_guid_subject_balloonBundleID_payloadData_expressiveSendStyleID_threadIdentifier_(v69, v70, v107, v68, v65, 0, v118, 1, 0, v108, 0, v110, v111, 0, 0);
    v74 = objc_msgSend_sharedInstance(IMFileTransferCenter, v72, v73);
    objc_msgSend_setIssueSandboxEstensionsForTransfers_(v74, v75, 1);

    v78 = objc_msgSend_sharedController(IMDaemonController, v76, v77);
    v81 = objc_msgSend_remoteDaemon(v78, v79, v80);
    v84 = objc_msgSend__imMessageItem(v71, v82, v83);
    v87 = objc_msgSend_chatIdentifier(v114, v85, v86);
    v90 = objc_msgSend_chatStyle(v114, v88, v89);
    objc_msgSend_insertReceivedMessage_forChat_style_serviceName_(v81, v91, v84, v87, v90, @"iMessage");

    v94 = objc_msgSend_sharedInstance(IMFileTransferCenter, v92, v93);
    objc_msgSend_setIssueSandboxEstensionsForTransfers_(v94, v95, 0);

    if (IMOSLoggingEnabled())
    {
      v98 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
      {
        v101 = objc_msgSend_guid(v71, v99, v100);
        *v123 = 138412546;
        v124 = v101;
        v125 = 2112;
        v126 = v114;
        _os_log_impl(&dword_1A823F000, v98, OS_LOG_TYPE_INFO, "Inserted received message with guid: %@ to chat: %@", v123, 0x16u);
      }
    }

    if (v115)
    {
      v102 = objc_msgSend_guid(v71, v96, v97);
      v115[2](v115, v102);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v67 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v67, OS_LOG_TYPE_INFO, "Cannot receive message without chat", buf, 2u);
      }
    }

    if (v115)
    {
      v115[2](v115, 0);
    }
  }

  sub_1A8307074(v103, v104, v105);
  v106 = *MEMORY[0x1E69E9840];
}

void sub_1A83E1494(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_account(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_service(v4, v5, v6);

  v10 = objc_msgSend_iMessageService(IMServiceImpl, v8, v9);

  v11 = IMOSLoggingEnabled();
  if (v7 == v10)
  {
    if (v11)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Cache hit, send now", buf, 2u);
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Waiting for registration check before sending", v15, 2u);
      }
    }

    v13 = dispatch_time(0, 4000000000);
    dispatch_after(v13, MEMORY[0x1E69E96A0], *(a1 + 40));
  }
}

void sub_1A83E160C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [IMSPIOutgoingAttachmentObject alloc];
  isSensitive = objc_msgSend_initWithFileURL_isSensitive_(v4, v5, v3, 0);

  objc_msgSend_addObject_(v2, v6, isSensitive);
}

void *sub_1A83E1688()
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyMessageForGUID", @"IMDPersistence");
  off_1EB2EA658 = result;
  return result;
}

void sub_1A83E16B8(uint64_t a1)
{
  v2 = _IMSPIMessageFromRecord(*(a1 + 56), 1, *(a1 + 68), *(a1 + 32), *(a1 + 64));
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A83E1790;
  v6[3] = &unk_1E7814750;
  v4 = v2;
  v7 = v4;
  v8 = *(a1 + 48);
  dispatch_async(v3, v6);
  v5 = *(a1 + 56);
  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_1A83E1790(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_msgSend_arrayWithObject_(MEMORY[0x1E695DEC8], a2, v3);
  }

  else
  {
    objc_msgSend_array(MEMORY[0x1E695DEC8], a2, 0);
  }
  v4 = ;
  (*(*(a1 + 40) + 16))();
}

BOOL IMMomentShareCacheErrorIsPermanent(void *a1)
{
  v1 = a1;
  v4 = v1;
  if (v1)
  {
    v5 = objc_msgSend_domain(v1, v2, v3);
    if (objc_msgSend_isEqualToString_(v5, v6, @"IMMomentShareCacheErrorDomain"))
    {
      v9 = objc_msgSend_code(v4, v7, v8) == -1001;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_1A83E199C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_1A83E1A48(a1, a2, a3);
  v7 = objc_msgSend_sharedMomentSharePhotoLibrary(v4, v5, v6);
  objc_msgSend_registerChangeObserver_(v7, v8, *(a1 + 32));

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83E1B28;
  block[3] = &unk_1E780FCB0;
  v10 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

id sub_1A83E1A48(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v3 = qword_1EB2E9D38;
  v10 = qword_1EB2E9D38;
  if (!qword_1EB2E9D38)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1A83E3090;
    v6[3] = &unk_1E7811770;
    v6[4] = &v7;
    sub_1A83E3090(v6, a2, a3);
    v3 = v8[3];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_1A83E1B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A83E1B7C()
{
  v12 = *MEMORY[0x1E69E9840];
  if ((IMIsRunningInImagent() & 1) != 0 || (IMIsRunningInIMDPersistenceAgent() & 1) != 0 || IMIsRunningInMessagesUIProcess())
  {
    v2 = objc_alloc_init(IMMomentShareCache);
    qword_1ED767878 = v2;
    v3 = *MEMORY[0x1E69E9840];

    MEMORY[0x1EEE66BB8](v2);
  }

  else
  {
    v4 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v0, v1);
    v7 = objc_msgSend_bundleIdentifier(v4, v5, v6);

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = v7;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Not allowing IMMomentShareCache to be created because we're running in %@.", &v10, 0xCu);
      }
    }

    v9 = *MEMORY[0x1E69E9840];
  }
}

id sub_1A83E1F6C(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v3 = qword_1EB2EA668;
  v10 = qword_1EB2EA668;
  if (!qword_1EB2EA668)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1A83E3250;
    v6[3] = &unk_1E7811770;
    v6[4] = &v7;
    sub_1A83E3250(v6, a2, a3);
    v3 = v8[3];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_1A83E2034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A83E204C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83E213C;
  block[3] = &unk_1E78129F8;
  v7 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v11 = v7;
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 48);
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t sub_1A83E213C(void *a1, const char *a2)
{
  objc_msgSend_setObject_forKeyedSubscript_(*(a1[4] + 8), a2, 0, a1[5]);
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];

  return objc_msgSend__processFetchedMomentShare_forURLString_error_completionHandlers_(v4, v3, v6, v5, v7, v8);
}

id sub_1A83E22A4(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v11 = *MEMORY[0x1E696AA08];
    v12[0] = v3;
    v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v4, v12, &v11, 1);
    objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v7, @"IMMomentShareCacheErrorDomain", a1, v6);
  }

  else
  {
    v6 = 0;
    objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v4, @"IMMomentShareCacheErrorDomain", a1, 0);
  }
  v8 = ;

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void sub_1A83E27C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
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

void sub_1A83E281C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1A83E2B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1A83E2B6C(void *a1)
{
  v1 = a1;
  v4 = objc_alloc(sub_1A83E3464(v1, v2, v3));
  second = objc_msgSend_initWithFirst_second_(v4, v5, v1, 0);

  return second;
}

id sub_1A83E2BC0(void *a1)
{
  v1 = a1;
  v4 = objc_alloc(sub_1A83E3464(v1, v2, v3));
  second = objc_msgSend_initWithFirst_second_(v4, v5, 0, v1);

  return second;
}

void sub_1A83E2CC4(uint64_t a1)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = objc_msgSend_allKeys(*(*(a1 + 32) + 16), v3, v4);
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = sub_1A83E2E6C;
  v23 = &unk_1E7814D18;
  v6 = *(a1 + 40);
  v24 = *(a1 + 32);
  v25 = v6;
  v7 = v2;
  v26 = v7;
  objc_msgSend_enumerateObjectsUsingBlock_(v5, v8, &v20);

  if (objc_msgSend_count(v7, v9, v10, v20, v21, v22, v23, v24))
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1A84E4D58(v11);
    }

    v14 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v12, v13);
    v15 = *(a1 + 32);
    v27 = @"IMMomentShareCacheNotificationURLStringsUserInfoKey";
    v28[0] = v7;
    v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, v28, &v27, 1);
    objc_msgSend_postNotificationName_object_userInfo_(v14, v18, @"IMMomentShareCacheDidChangeNotification", v15, v17);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void sub_1A83E2E6C(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = objc_msgSend_objectForKeyedSubscript_(*(*(a1 + 32) + 16), v4, v3);
  v9 = objc_msgSend_first(v5, v6, v7);
  if (v9)
  {
    v11 = objc_msgSend_changeDetailsForObject_(*(a1 + 40), v8, v9);
    if (v11)
    {
      objc_msgSend_addObject_(*(a1 + 48), v10, v3);
      v14 = objc_msgSend_objectWasDeleted(v11, v12, v13);
      v15 = IMLogHandleForCategory();
      v16 = v15;
      if (v14)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v19 = objc_msgSend_uuid(v9, v17, v18);
          v27 = 138543618;
          v28 = v19;
          v29 = 2112;
          v30 = v3;
          _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_DEFAULT, "Moment share was deleted: %{public}@, URL: %@", &v27, 0x16u);
        }

        v20 = sub_1A83E22A4(-1001, 0);
        v21 = sub_1A83E2BC0(v20);
      }

      else
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          sub_1A84E4D9C(v9, v3, v16);
        }

        v20 = objc_msgSend_objectAfterChanges(v11, v23, v24);
        v21 = sub_1A83E2B6C(v20);
      }

      v25 = v21;
      objc_msgSend_setObject_forKeyedSubscript_(*(*(a1 + 32) + 16), v22, v21, v3);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

Class sub_1A83E3090(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1A83E30E8(a1, a2, a3);
  result = objc_getClass("PHPhotoLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1A84E4E30(result, v5, v6);
  }

  qword_1EB2E9D38 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A83E30E8(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1EB2E9D98)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = sub_1A83E31DC;
    v4[4] = &unk_1E78102B8;
    v4[5] = v4;
    v5 = xmmword_1E7814D38;
    v6 = 0;
    qword_1EB2E9D98 = _sl_dlopen();
  }

  if (!qword_1EB2E9D98)
  {
    sub_1A84E4EAC(v4, a2, a3);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A83E31DC(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1EB2E9D98 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class sub_1A83E3250(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1A83E30E8(a1, a2, a3);
  result = objc_getClass("PHMomentShare");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1A84E4F2C(result, v5, v6);
  }

  qword_1EB2EA668 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1A83E32A8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_1A83E32F8(a1, a2, a3);
  result = dlsym(v4, "PXIsMomentShareErrorPermanent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EB2EA670 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1A83E32F8(uint64_t a1, const char *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1EB2EA678)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = sub_1A83E33F0;
    v6[4] = &unk_1E78102B8;
    v6[5] = v6;
    v7 = xmmword_1E7814D50;
    v8 = 0;
    qword_1EB2EA678 = _sl_dlopen();
  }

  v3 = qword_1EB2EA678;
  if (!qword_1EB2EA678)
  {
    sub_1A84E4FA8(v6, a2, a3);
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1A83E33F0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1EB2EA678 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1A83E3464(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v3 = qword_1EB2EA680;
  v10 = qword_1EB2EA680;
  if (!qword_1EB2EA680)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1A83E3544;
    v6[3] = &unk_1E7811770;
    v6[4] = &v7;
    sub_1A83E3544(v6, a2, a3);
    v3 = v8[3];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_1A83E352C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1A83E3544(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1A83E32F8(a1, a2, a3);
  result = objc_getClass("PXTwoTuple");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1A84E5028(result, v5, v6);
  }

  qword_1EB2EA680 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A83E35B0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_1A83E35CC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void _IMIntentsApiInit()
{
  if (qword_1EB2EA010 != -1)
  {
    sub_1A84E50A4();
  }
}

uint64_t sub_1A83E4C88()
{
  qword_1EB2EA058 = MEMORY[0x1AC56C550](@"INInteraction", @"Intents");
  qword_1EB2EA038 = MEMORY[0x1AC56C550](@"INSendMessageIntent", @"Intents");
  qword_1EB2EA030 = MEMORY[0x1AC56C550](@"INSendMessageIntentResponse", @"Intents");
  qword_1EB2E9218 = MEMORY[0x1AC56C550](@"INUnsendMessagesIntent", @"Intents");
  qword_1EB2E9210 = MEMORY[0x1AC56C550](@"INUnsendMessagesIntentResponse", @"Intents");
  qword_1EB2EA048 = MEMORY[0x1AC56C550](@"INPerson", @"Intents");
  qword_1EB2EA040 = MEMORY[0x1AC56C550](@"INPersonHandle", @"Intents");
  qword_1EB2EA050 = MEMORY[0x1AC56C550](@"INMessage", @"Intents");
  qword_1EB2EA028 = MEMORY[0x1AC56C550](@"INSpeakableString", @"Intents");
  result = MEMORY[0x1AC56C550](@"INImage", @"Intents");
  qword_1EB2EA060 = result;
  return result;
}

void *sub_1A83E5108()
{
  result = MEMORY[0x1AC56C560]("INPersonHandleLabelForCNLabeledValue", @"Intents");
  off_1EB2EA688 = result;
  return result;
}

void *sub_1A83E5138()
{
  result = MEMORY[0x1AC56C560]("INPersonHandleLabelForCNLabeledValue", @"Intents");
  off_1EB2EA698 = result;
  return result;
}

void sub_1A83E53F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_1A83E540C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_copy(a2, a2, a3);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 32);

  return dispatch_semaphore_signal(v7);
}

void sub_1A83E7F34(uint64_t a1, const char *a2, uint64_t a3)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, a3);
  v13[0] = @"ResultSuccess";
  v6 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v5, *(a1 + 32));
  v13[1] = @"ResultKeyNewState";
  v14[0] = v6;
  v8 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v7, *(a1 + 33));
  v14[1] = v8;
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, v14, v13, 2);
  objc_msgSend_postNotificationName_object_userInfo_(v4, v11, @"com.apple.IMCore.IMCloudKitHooks.SetEnabledReturned", 0, v10);

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1A83E8314(uint64_t a1, const char *a2, uint64_t a3)
{
  v14 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, a3);
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v4, *(a1 + 56));
  objc_msgSend_setObject_forKey_(v14, v6, v5, @"ResultSuccess");

  if (*(a1 + 56) == 1)
  {
    v8 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v7, *(a1 + 48));
    objc_msgSend_setObject_forKey_(v14, v9, v8, @"ResultAdditionalStorageRequired");

    v10 = *(a1 + 32);
    if (v10)
    {
      objc_msgSend_setObject_forKey_(v14, v7, v10, @"ResultiCloudAccountId");
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    objc_msgSend_setObject_forKey_(v14, v7, v11, @"Error");
  }

  v12 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v7, v11);
  objc_msgSend_postNotificationName_object_userInfo_(v12, v13, @"com.apple.IMCore.IMCloudKitHooks.AdditionalStorageCheckReturned", 0, v14);
}

void sub_1A83E8674(uint64_t a1, const char *a2, uint64_t a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, a3);
  v11 = @"ResultSuccess";
  v6 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v5, *(a1 + 32));
  v12[0] = v6;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v12, &v11, 1);
  objc_msgSend_postNotificationName_object_userInfo_(v4, v9, @"com.apple.IMCore.IMCloudKitHooks.tryToDisableAllDevicesReturned", 0, v8);

  v10 = *MEMORY[0x1E69E9840];
}

id sub_1A83E95D8(void *a1)
{
  v1 = a1;
  v2 = sub_1A83E9674();

  return v2;
}

id sub_1A83E9674()
{
  v1 = [v0 transferGUID];
  if (!v1)
  {
    sub_1A84E5DBC();
    v1 = sub_1A84E5D8C();
  }

  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 transferForGUID_];

    if (v4)
    {
      v5 = [v4 commSafetySensitive];

      v1 = v4;
    }

    else
    {
      v5 = 0;
      v1 = v3;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1A83E9754@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void *sub_1A83E97D4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1A83E9800@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1A83E98B0()
{
  v1 = *v0;
  v2 = sub_1A84E5DBC();
  v3 = MEMORY[0x1AC56AA10](v2);

  return v3;
}

uint64_t sub_1A83E98EC()
{
  v1 = *v0;
  sub_1A84E5DBC();
  sub_1A84E5E5C();
}

uint64_t sub_1A83E9940()
{
  v1 = *v0;
  sub_1A84E5DBC();
  sub_1A84E684C();
  sub_1A84E5E5C();
  v2 = sub_1A84E687C();

  return v2;
}

uint64_t sub_1A83E99B4(uint64_t a1, id *a2)
{
  result = sub_1A84E5D9C();
  *a2 = 0;
  return result;
}

uint64_t sub_1A83E9A2C(uint64_t a1, id *a2)
{
  v3 = sub_1A84E5DAC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1A83E9AAC@<X0>(uint64_t *a1@<X8>)
{
  sub_1A84E5DBC();
  v2 = sub_1A84E5D8C();

  *a1 = v2;
  return result;
}

uint64_t sub_1A83E9AF0()
{
  v1 = *v0;
  sub_1A84E684C();
  MEMORY[0x1AC56B350](v1);
  return sub_1A84E687C();
}

uint64_t sub_1A83E9B64()
{
  v1 = *v0;
  sub_1A84E684C();
  MEMORY[0x1AC56B350](v1);
  return sub_1A84E687C();
}

uint64_t sub_1A83E9BA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1A83EA070(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1A83E9C78(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A83E9D50(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1A84E5DBC();
  v6 = v5;
  if (v4 == sub_1A84E5DBC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1A84E67AC();
  }

  return v9 & 1;
}

uint64_t sub_1A83E9DD8(uint64_t a1)
{
  v2 = sub_1A83E9C78(&qword_1EB2E5B90, type metadata accessor for Key);
  v3 = sub_1A83E9C78(&qword_1EB2E5B98, type metadata accessor for Key);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1A83E9E94@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1A84E5D8C();

  *a2 = v5;
  return result;
}

uint64_t sub_1A83E9EDC(uint64_t a1)
{
  v2 = sub_1A83E9C78(&qword_1EB2E5B48, type metadata accessor for FileAttributeKey);
  v3 = sub_1A83E9C78(&qword_1EB2E5B50, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1A83EA070(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1A83EA0F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A83EA110(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1A83EA2FC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id DaemonConnection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DaemonConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A83EA4C4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1A83EA52C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    swift_beginAccess();
    v7 = *(a3 + 16);
    *(a3 + 16) = a2;

    swift_beginAccess();
    *(a4 + 16) = 1;
  }

  return result;
}

uint64_t sub_1A83EA5B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = sub_1A84E5D3C();

  v4(a2, v5);
}

uint64_t sub_1A83EA63C(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v7 = IMSetupInfoAllowedClasses();
    if (!v7)
    {
      sub_1A83EA2FC(&unk_1EB2E6698, &qword_1A8500950);
      sub_1A84E5FFC();
      v7 = sub_1A84E5FEC();
    }

    v8 = [a2 dictionaryForKey:"setupInfo" allowedClasses:v7];

    if (v8)
    {
      v9 = sub_1A84E5D3C();
    }

    else
    {
      v9 = 0;
    }

    swift_beginAccess();
    v10 = *(a3 + 16);
    *(a3 + 16) = v9;

    result = swift_beginAccess();
    *(a4 + 16) = 1;
  }

  return result;
}

void sub_1A83EA774(uint64_t a1)
{
  v3 = sub_1A84E5CFC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR___IMDaemonConnection_queue);
  *v7 = sub_1A84E5A4C();
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  LOBYTE(v8) = sub_1A84E5D1C();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    if (qword_1ED7675D0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = sub_1A84E5C9C();
  sub_1A824431C(v9, qword_1ED7679F8);
  v10 = sub_1A84E5C7C();
  v11 = sub_1A84E617C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1A823F000, v10, v11, "Disconnecting from daemon", v12, 2u);
    MEMORY[0x1AC56D3F0](v12, -1, -1);
  }

  v13 = *a1;
  [*a1 invalidate];

  *a1 = 0;
  *(a1 + 24) = 1;
}

void sub_1A83EA978(void *a1, const char *a2)
{
  if (qword_1ED7675D0 != -1)
  {
    swift_once();
  }

  v4 = sub_1A84E5C9C();
  sub_1A824431C(v4, qword_1ED7679F8);
  v5 = a1;
  oslog = sub_1A84E5C7C();
  v6 = sub_1A84E619C();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_1A84E67FC();
    v11 = sub_1A82446BC(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1A823F000, oslog, v6, a2, v7, 0xCu);
    sub_1A8244788(v8);
    MEMORY[0x1AC56D3F0](v8, -1, -1);
    MEMORY[0x1AC56D3F0](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1A83EAB10(void *a1, uint64_t a2)
{
  if (qword_1ED7675D0 != -1)
  {
    swift_once();
  }

  v4 = sub_1A84E5C9C();
  sub_1A824431C(v4, qword_1ED7679F8);
  v5 = a1;
  v6 = sub_1A84E5C7C();
  v7 = sub_1A84E617C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = [v5 processIdentifier];

    _os_log_impl(&dword_1A823F000, v6, v7, "Connection to PID %d was interrupted", v8, 8u);
    MEMORY[0x1AC56D3F0](v8, -1, -1);
  }

  else
  {

    v6 = v5;
  }

  v9 = *(a2 + OBJC_IVAR___IMDaemonConnection_queue);
  return sub_1A84E5A6C();
}

uint64_t sub_1A83EAC64(void *a1, char *a2)
{
  if (qword_1ED7675D0 != -1)
  {
    swift_once();
  }

  v4 = sub_1A84E5C9C();
  sub_1A824431C(v4, qword_1ED7679F8);
  v5 = a1;
  v6 = sub_1A84E5C7C();
  v7 = sub_1A84E617C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = [v5 processIdentifier];

    _os_log_impl(&dword_1A823F000, v6, v7, "Connection to PID %d was invalidated", v8, 8u);
    MEMORY[0x1AC56D3F0](v8, -1, -1);
  }

  else
  {

    v6 = v5;
  }

  v9 = *&a2[OBJC_IVAR___IMDaemonConnection_queue];
  *(swift_allocObject() + 16) = a2;
  v10 = a2;
  sub_1A84E5A6C();
}

uint64_t DaemonConnection.isConnected.getter()
{
  v1 = *(v0 + OBJC_IVAR___IMDaemonConnection_queue);
  sub_1A84E5A5C();
  return v3;
}

uint64_t sub_1A83EAEA4()
{
  v1 = *(v0 + OBJC_IVAR___IMDaemonConnection_queue);
  sub_1A83EA2FC(&qword_1EB2E65A8, &qword_1A8500738);
  sub_1A84E5A5C();
  return v3;
}

uint64_t (*DaemonConnection.onSetupComplete.getter())(uint64_t a1)
{
  v1 = *(v0 + OBJC_IVAR___IMDaemonConnection_queue);
  sub_1A83EA2FC(&qword_1EB2E65B0, &qword_1A8500740);
  sub_1A84E5A5C();
  if (!v4)
  {
    return 0;
  }

  v2 = swift_allocObject();
  *(v2 + 16) = v4;
  *(v2 + 24) = v5;
  return sub_1A83EBB5C;
}

uint64_t sub_1A83EB0E4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_1A84E5D3C();

  v2(v3);
}

uint64_t DaemonConnection.onSetupComplete.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___IMDaemonConnection_queue);
  sub_1A84E5A5C();
  return sub_1A8245638(a1);
}

double sub_1A83EB1E0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR___IMDaemonConnection_queue);
  sub_1A83EA2FC(&qword_1EB2E65B0, &qword_1A8500740);
  sub_1A84E5A5C();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_1A83EB258(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    a1 = swift_allocObject();
    a1[2] = v3;
    a1[3] = v4;
    v5 = sub_1A83ECC40;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*a2 + OBJC_IVAR___IMDaemonConnection_queue);
  MEMORY[0x1EEE9AC00](a1);
  sub_1A8242AE8(v3);
  sub_1A84E5A5C();
  return sub_1A8245638(v5);
}

uint64_t sub_1A83EB344@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A83ECC14;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_1A8242AE8(v3);
}

void (*DaemonConnection.onSetupComplete.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___IMDaemonConnection_queue);
  sub_1A83EA2FC(&qword_1EB2E65B0, &qword_1A8500740);
  sub_1A84E5A5C();
  v5 = v4[2];
  if (v5)
  {
    v6 = v4[3];
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_1A83ECC40;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *v4 = v8;
  v4[1] = v7;
  return sub_1A83EB4BC;
}

void sub_1A83EB4BC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v6 = (*a1)[1];
  v4 = (*a1)[4];
  if (a2)
  {
    sub_1A8242AE8(v3);
    sub_1A84E5A5C();
    sub_1A8245638(v3);
    v5 = v2[1];
    sub_1A8245638(*v2);
  }

  else
  {
    sub_1A84E5A5C();
    sub_1A8245638(v3);
  }

  free(v2);
}

uint64_t DaemonConnection.connect(capabilities:context:contextChanged:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *&v3[OBJC_IVAR___IMDaemonConnection_queue];
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = v3;

  v9 = v3;
  sub_1A84E5A6C();
}

uint64_t sub_1A83EB6D0()
{
  v1 = *&v0[OBJC_IVAR___IMDaemonConnection_queue];
  *(swift_allocObject() + 16) = v0;
  v2 = v0;
  sub_1A84E5A6C();
}

uint64_t sub_1A83EB760(char *a1)
{
  v2 = *&a1[OBJC_IVAR___IMDaemonConnection_queue];
  *(swift_allocObject() + 16) = a1;
  v3 = a1;
  sub_1A84E5A6C();
}

uint64_t sub_1A83EB800()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E88D0] + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1A83EB8F4;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1A83EB8F4()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A83EBA0C, 0, 0);
}

unint64_t sub_1A83EBA20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A83EA2FC(&qword_1EB2E6668, &qword_1A8500930);
    v3 = sub_1A84E657C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1A824B390(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A83EBB5C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

void sub_1A83EBB94(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(a1 + 24) = 1;
  sub_1A8244F9C(a1);
}

uint64_t sub_1A83EBBEC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A83EBC48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1A83EBC98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A83EBCE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A83EBD30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A83EA2FC(&qword_1EB2E6630, &qword_1A85008F8);
    v3 = sub_1A84E657C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1A824B390(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A83EBE2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A83EA2FC(&qword_1EB2E6610, &qword_1A85008D8);
    v3 = sub_1A84E657C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A8243D74(v4, &v11, &qword_1EB2E6618, &unk_1A85008E0);
      v5 = v11;
      result = sub_1A8490560(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1A8243DDC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A83EBF90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1A83EA2FC(a2, a3);
    v5 = sub_1A84E657C();

    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *(i - 8);
      v8 = *i;
      result = sub_1A8489DCC(v7);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + result) = v7;
      *(v5[7] + 8 * result) = v8;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A83EC07C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A83EA2FC(&qword_1EB2E6648, &qword_1A8500910);
  v3 = sub_1A84E657C();

  v4 = *(a1 + 144);
  *&v29[96] = *(a1 + 128);
  *&v29[112] = v4;
  *&v29[128] = *(a1 + 160);
  *&v29[144] = *(a1 + 176);
  v5 = *(a1 + 80);
  *&v29[32] = *(a1 + 64);
  *&v29[48] = v5;
  v6 = *(a1 + 112);
  *&v29[64] = *(a1 + 96);
  *&v29[80] = v6;
  v7 = *(a1 + 48);
  *v29 = *(a1 + 32);
  *&v29[16] = v7;
  v8 = v29[0];
  sub_1A8243D74(v29, v28, &qword_1EB2E6650, &qword_1A8500918);
  result = sub_1A8489DCC(v8);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = a1 + 184;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v8;
    v12 = (v3[7] + 144 * result);
    *v12 = *&v29[8];
    v13 = *&v29[24];
    v14 = *&v29[40];
    v15 = *&v29[72];
    v12[3] = *&v29[56];
    v12[4] = v15;
    v12[1] = v13;
    v12[2] = v14;
    v16 = *&v29[88];
    v17 = *&v29[104];
    v18 = *&v29[136];
    v12[7] = *&v29[120];
    v12[8] = v18;
    v12[5] = v16;
    v12[6] = v17;
    v19 = v3[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      break;
    }

    v3[2] = v21;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v22 = v11 + 152;
    v23 = *(v11 + 112);
    *&v29[96] = *(v11 + 96);
    *&v29[112] = v23;
    *&v29[128] = *(v11 + 128);
    *&v29[144] = *(v11 + 144);
    v24 = *(v11 + 48);
    *&v29[32] = *(v11 + 32);
    *&v29[48] = v24;
    v25 = *(v11 + 80);
    *&v29[64] = *(v11 + 64);
    *&v29[80] = v25;
    v26 = *(v11 + 16);
    *v29 = *v11;
    *&v29[16] = v26;
    v8 = v29[0];
    sub_1A8243D74(v29, v28, &qword_1EB2E6650, &qword_1A8500918);
    result = sub_1A8489DCC(v8);
    v11 = v22;
    if (v27)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A83EC260(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A83EA2FC(&qword_1EB2E6640, &qword_1A8500908);
    v3 = sub_1A84E657C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_1A8489DCC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A83EC354(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A83EA2FC(&unk_1EB2E6620, &qword_1A8509AD0);
    v3 = sub_1A84E657C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A8243D74(v4, v13, &qword_1EB2E8790, &qword_1A85008F0);
      result = sub_1A8250C0C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1A8243DDC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A83EC490(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A83EA2FC(&qword_1EB2E6608, &qword_1A85008D0);
    v3 = sub_1A84E657C();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1A8489EA0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A83EC580(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A83EA2FC(&qword_1EB2E65F0, &qword_1A8500898);
    v3 = sub_1A84E657C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v8;
      result = sub_1A8489F0C(v5, v6, v7);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 24 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v7;
      *(v3[7] + 8 * result) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A83EC6AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A83EA2FC(&qword_1EB2E65D0, &qword_1A8500878);
    v3 = sub_1A84E657C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1A8489FA0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A83EC7B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1A83EA2FC(a2, a3);
    v5 = sub_1A84E657C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1A824B390(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A83EC8C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A824FBE0;

  return sub_1A8248724(v2, v3, v5);
}

uint64_t sub_1A83EC988@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  sub_1A8244354(a1);
  *a2 = *(a1 + 16);

  return swift_unknownObjectRetain();
}

uint64_t sub_1A83EC9D4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1A83ECA54()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A83ECAAC(char a1)
{
  v2 = IMGetDaemonProtocol();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v5 = objc_allocWithZone(MEMORY[0x1E69A80D0]);
  aBlock[4] = sub_1A8246FEC;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A8247230;
  aBlock[3] = &unk_1F1B717C0;
  v6 = _Block_copy(aBlock);

  [v5 initWithProtocol:v2 forwardingHandler:v6];

  _Block_release(v6);

  return swift_dynamicCastObjCProtocolUnconditional();
}

uint64_t sub_1A83ECC14(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t ImportExport.ExportedAttachmentStatistics.downloadErrors.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

double ImportExport.ExportedAttachmentStatistics.averageDownloadSpeed.getter()
{
  v1 = *(v0 + 40);
  result = 0.0;
  if (v1 > 0.0)
  {
    return *(v0 + 32) / v1;
  }

  return result;
}

uint64_t ImportExport.ExportedAttachmentStatistics.init(downloadCount:downloadFailureCount:downloadErrors:missingCount:totalDownloadBytes:totalDownloadSeconds:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = a7;
  return result;
}

void ImportExport.ExportedAttachmentStatistics.init()(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = MEMORY[0x1E69E7CC0];
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
}

uint64_t sub_1A83ECE34()
{
  v1 = *v0;
  sub_1A84E684C();
  MEMORY[0x1AC56B350](v1);
  return sub_1A84E687C();
}

uint64_t sub_1A83ECE7C()
{
  v1 = *v0;
  sub_1A84E684C();
  MEMORY[0x1AC56B350](v1);
  return sub_1A84E687C();
}

uint64_t sub_1A83ECEC0()
{
  v1 = 0x64616F6C6E776F64;
  v2 = *v0;
  v3 = 0x43676E697373696DLL;
  v4 = 0xD000000000000012;
  if (v2 != 4)
  {
    v4 = 0xD000000000000014;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000014;
  if (v2 != 1)
  {
    v5 = 0x64616F6C6E776F64;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A83ECF9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A83F0410(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A83ECFDC(uint64_t a1)
{
  v2 = sub_1A83ED308();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A83ED018(uint64_t a1)
{
  v2 = sub_1A83ED308();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ExportedAttachmentStatistics.encode(to:)(void *a1)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E6D60, &qword_1A8500980);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v22 = v1[2];
  v23 = v9;
  v21 = v11;
  v12 = v1[4];
  v13 = v1[5];
  v14 = a1[3];
  v15 = a1[4];
  v16 = a1;
  v18 = v17;
  sub_1A82471E0(v16, v14);
  sub_1A83ED308();
  sub_1A84E68AC();
  v30 = 0;
  sub_1A84E673C();
  if (!v2)
  {
    v19 = v22;
    v29 = 1;
    sub_1A84E673C();
    v28 = v19;
    v27 = 2;
    sub_1A83EA2FC(&qword_1EB2E6D70, &qword_1A8500988);
    sub_1A83ED654(&qword_1EB2E6D78, &qword_1EB2E6D80);
    sub_1A84E672C();
    v26 = 3;
    sub_1A84E673C();
    v25 = 4;
    sub_1A84E673C();
    v24 = 5;
    sub_1A84E66EC();
  }

  return (*(v5 + 8))(v8, v18);
}

unint64_t sub_1A83ED308()
{
  result = qword_1EB2E6D68;
  if (!qword_1EB2E6D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E6D68);
  }

  return result;
}

uint64_t ImportExport.ExportedAttachmentStatistics.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A83EA2FC(&qword_1EB2E6D88, &qword_1A8500990);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A83ED308();
  sub_1A84E689C();
  if (v2)
  {
    return sub_1A8244788(a1);
  }

  v26 = 0;
  v11 = sub_1A84E667C();
  v25 = 1;
  v12 = sub_1A84E667C();
  sub_1A83EA2FC(&qword_1EB2E6D70, &qword_1A8500988);
  v23 = 2;
  sub_1A83ED654(&qword_1EB2E6D90, &qword_1EB2E6D98);
  sub_1A84E666C();
  v19 = v24;
  v22 = 3;
  v18 = sub_1A84E667C();
  v21 = 4;
  v17 = sub_1A84E667C();
  v20 = 5;
  sub_1A84E662C();
  v15 = v14;
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  a2[1] = v12;
  v16 = v18;
  a2[2] = v19;
  a2[3] = v16;
  a2[4] = v17;
  a2[5] = v15;

  sub_1A8244788(a1);
}

uint64_t sub_1A83ED654(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E6D70, &qword_1A8500988);
    sub_1A83ED6DC(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A83ED6DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ImportExport.AttachmentDownloadError();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A83ED750()
{
  xmmword_1EB2E6D30 = 0uLL;
  qword_1EB2E6D40 = MEMORY[0x1E69E7CC0];
  unk_1EB2E6D48 = 0;
  qword_1EB2E6D50 = 0;
  qword_1EB2E6D58 = 0;
}

uint64_t static ImportExport.ExportedAttachmentStatistics.zero.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB2E5930 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EB2E6D40;
  v3 = qword_1EB2E6D58;
  *a1 = xmmword_1EB2E6D30;
  *(a1 + 16) = v2;
  *(a1 + 24) = unk_1EB2E6D48;
  *(a1 + 40) = v3;
}

uint64_t static ImportExport.ExportedAttachmentStatistics.zero.setter(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  if (qword_1EB2E5930 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *&xmmword_1EB2E6D30 = v1;
  *(&xmmword_1EB2E6D30 + 1) = v2;
  qword_1EB2E6D40 = v3;
  unk_1EB2E6D48 = v4;
  qword_1EB2E6D50 = v5;
  qword_1EB2E6D58 = v6;
}

uint64_t (*static ImportExport.ExportedAttachmentStatistics.zero.modify())()
{
  if (qword_1EB2E5930 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void *static ImportExport.ExportedAttachmentStatistics.- infix(_:_:)@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = *result - *a2;
  if (__OFSUB__(*result, *a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2[1];
  v5 = result[1];
  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  if (v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = result[3];
  v9 = a2[3];
  v6 = __OFSUB__(v8, v9);
  v10 = v8 - v9;
  if (v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = result[4];
  v12 = a2[4];
  v6 = __OFSUB__(v11, v12);
  v13 = v11 - v12;
  if (!v6)
  {
    v14 = result[2];
    *a3 = v3;
    a3[1] = v7;
    a3[2] = v14;
    a3[3] = v10;
    a3[4] = v13;
    a3[5] = 0;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *static ImportExport.ExportedAttachmentStatistics.+ infix(_:_:)@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *result + *a2;
  if (__OFADD__(*result, *a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a2[1];
  v6 = result[1];
  v7 = v6 + v5;
  if (__OFADD__(v6, v5))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = result[3];
  v9 = result[4];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v14 = result[2];

  result = sub_1A83EE58C(v13, &qword_1EB2E6EE8, &unk_1A8500CD0, type metadata accessor for ImportExport.AttachmentDownloadError, type metadata accessor for ImportExport.AttachmentDownloadError);
  if (__OFADD__(v8, v11))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!__OFADD__(v9, v12))
  {
    *a3 = v4;
    a3[1] = v7;
    a3[2] = v14;
    a3[3] = v8 + v11;
    a3[4] = v9 + v12;
    a3[5] = 0;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1A83EDAA8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB2E5930 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EB2E6D40;
  v3 = qword_1EB2E6D58;
  *a1 = xmmword_1EB2E6D30;
  *(a1 + 16) = v2;
  *(a1 + 24) = unk_1EB2E6D48;
  *(a1 + 40) = v3;
}

uint64_t sub_1A83EDB44(__int128 *a1, __int128 *a2)
{
  v2 = *(a2 + 2);
  v3 = *(a2 + 5);
  v11 = *a2;
  v12 = v2;
  v13 = *(a2 + 24);
  v14 = v3;
  v4 = *(a1 + 2);
  v5 = *(a1 + 5);
  v7 = *a1;
  v8 = v4;
  v9 = *(a1 + 24);
  v10 = v5;
  static ImportExport.ExportedAttachmentStatistics.+ infix(_:_:)(&v7, &v11, a1);
}

void *sub_1A83EDBD0(void *result, void *a2)
{
  if (__OFSUB__(*result, *a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = result[1];
  v3 = a2[1];
  v4 = __OFSUB__(v2, v3);
  v5 = v2 - v3;
  if (v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = a2[3];
  v7 = result[3];
  v4 = __OFSUB__(v7, v6);
  v8 = v7 - v6;
  if (v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = a2[4];
  v10 = result[4];
  v4 = __OFSUB__(v10, v9);
  v11 = v10 - v9;
  if (!v4)
  {
    *result -= *a2;
    result[1] = v5;
    result[3] = v8;
    result[4] = v11;
    result[5] = 0;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t ImportExport.ExportedAttachmentStatistics.format(report:)(uint64_t a1)
{
  v3 = type metadata accessor for ImportExport.AttachmentDownloadError();
  v61 = *(v3 - 8);
  v4 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[1];
  v9 = v1[2];
  v8 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  rawValue = *v1;
  v12 = sub_1A84E676C();
  v14 = v13;
  v62 = a1;
  v15 = *(a1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_1A83EEBEC(0, *(v15 + 2) + 1, 1, v15);
  }

  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = sub_1A83EEBEC((v16 > 1), v17 + 1, 1, v15);
  }

  *(v15 + 2) = v17 + 1;
  v18 = &v15[32 * v17];
  strcpy(v18 + 32, "downloadCount");
  *(v18 + 23) = -4864;
  *(v18 + 6) = v12;
  *(v18 + 7) = v14;
  *(v62 + 16) = v15;
  rawValue = v7;
  v19 = sub_1A84E676C();
  v22 = *(v15 + 2);
  v21 = *(v15 + 3);
  if (v22 >= v21 >> 1)
  {
    v52 = v19;
    v53 = v20;
    v54 = sub_1A83EEBEC((v21 > 1), v22 + 1, 1, v15);
    v20 = v53;
    v15 = v54;
    v19 = v52;
  }

  *(v15 + 2) = v22 + 1;
  v23 = &v15[32 * v22];
  *(v23 + 4) = 0xD000000000000014;
  *(v23 + 5) = 0x80000001A852F210;
  *(v23 + 6) = v19;
  *(v23 + 7) = v20;
  v24 = v62;
  *(v62 + 16) = v15;
  rawValue = v8;
  v25 = sub_1A84E676C();
  v28 = *(v15 + 2);
  v27 = *(v15 + 3);
  if (v28 >= v27 >> 1)
  {
    v55 = v25;
    v56 = v26;
    v57 = sub_1A83EEBEC((v27 > 1), v28 + 1, 1, v15);
    v26 = v56;
    v15 = v57;
    v25 = v55;
  }

  *(v15 + 2) = v28 + 1;
  v29 = &v15[32 * v28];
  strcpy(v29 + 32, "missingCount");
  v29[45] = 0;
  *(v29 + 23) = -5120;
  *(v29 + 6) = v25;
  *(v29 + 7) = v26;
  *(v24 + 16) = v15;
  rawValue = v10;
  v30 = sub_1A84E676C();
  v33 = *(v15 + 2);
  v32 = *(v15 + 3);
  if (v33 >= v32 >> 1)
  {
    v58 = v30;
    v59 = v31;
    v60 = sub_1A83EEBEC((v32 > 1), v33 + 1, 1, v15);
    v31 = v59;
    v15 = v60;
    v30 = v58;
  }

  *(v15 + 2) = v33 + 1;
  v34 = &v15[32 * v33];
  *(v34 + 4) = 0xD000000000000012;
  *(v34 + 5) = 0x80000001A852F230;
  *(v34 + 6) = v30;
  *(v34 + 7) = v31;
  *(v24 + 16) = v15;
  rawValue = 0;
  v64 = 0xE000000000000000;
  sub_1A84E60EC();
  v35 = rawValue;
  v36 = v64;
  v38 = *(v15 + 2);
  v37 = *(v15 + 3);
  if (v38 >= v37 >> 1)
  {
    v15 = sub_1A83EEBEC((v37 > 1), v38 + 1, 1, v15);
  }

  *(v15 + 2) = v38 + 1;
  v39 = &v15[32 * v38];
  *(v39 + 4) = 0xD000000000000014;
  *(v39 + 5) = 0x80000001A852F250;
  *(v39 + 6) = v35;
  *(v39 + 7) = v36;
  *(v24 + 16) = v15;
  v40 = v9[2];
  v41._rawValue = MEMORY[0x1E69E7CC0];
  if (v40)
  {
    rawValue = MEMORY[0x1E69E7CC0];
    sub_1A83EF534(0, v40, 0);
    v41._rawValue = rawValue;
    v42 = v9 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
    v43 = *(v61 + 72);
    do
    {
      sub_1A83EFFDC(v42, v6);
      v44 = ImportExport.AttachmentDownloadError.description.getter();
      v46 = v45;
      sub_1A83F0040(v6);
      rawValue = v41._rawValue;
      v48 = *(v41._rawValue + 2);
      v47 = *(v41._rawValue + 3);
      if (v48 >= v47 >> 1)
      {
        sub_1A83EF534((v47 > 1), v48 + 1, 1);
        v41._rawValue = rawValue;
      }

      *(v41._rawValue + 2) = v48 + 1;
      v49 = v41._rawValue + 16 * v48;
      *(v49 + 4) = v44;
      *(v49 + 5) = v46;
      v42 += v43;
      --v40;
    }

    while (v40);
  }

  v50._countAndFlagsBits = 0xD000000000000011;
  v50._object = 0x80000001A852F270;
  ImportExport.Report.add(reportNamed:forList:)(v50, v41);
}

uint64_t ImportExport.ExportedAttachmentStatistics.description.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_1A83EE154();
}

uint64_t sub_1A83EE154()
{
  v2[0] = 0xD000000000000014;
  v2[1] = 0x80000001A852F1F0;
  v2[2] = MEMORY[0x1E69E7CC0];
  v2[3] = MEMORY[0x1E69E7CC0];
  v3 = 0;
  ImportExport.ExportedAttachmentStatistics.format(report:)(v2);
  sub_1A8471734(0);
  sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
  sub_1A83F0624(&qword_1EB2E6E50, &qword_1EB2E6E48, &qword_1A8502950);
  v0 = sub_1A84E5D6C();

  return v0;
}

uint64_t sub_1A83EE280()
{
  v2[0] = 0xD000000000000011;
  v2[1] = 0x80000001A852F290;
  v2[2] = MEMORY[0x1E69E7CC0];
  v2[3] = MEMORY[0x1E69E7CC0];
  v3 = 0;
  ImportExport.ExportStatistics.format(report:)(v2);
  sub_1A8471734(0);
  sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
  sub_1A83F0624(&qword_1EB2E6E50, &qword_1EB2E6E48, &qword_1A8502950);
  v0 = sub_1A84E5D6C();

  return v0;
}

uint64_t _s6IMCore12ImportExportO0B10StatisticsC19progressDescriptionSSvg_0()
{
  v2[0] = 0xD000000000000011;
  v2[1] = 0x80000001A852F2B0;
  v2[2] = MEMORY[0x1E69E7CC0];
  v2[3] = MEMORY[0x1E69E7CC0];
  v3 = 0;
  ImportExport.ImportStatistics.format(report:)(v2);
  sub_1A8471734(0);
  sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
  sub_1A83F0624(&qword_1EB2E6E50, &qword_1EB2E6E48, &qword_1A8502950);
  v0 = sub_1A84E5D6C();

  return v0;
}

uint64_t sub_1A83EE4D8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_1A83EE154();
}

uint64_t sub_1A83EE58C(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  v15 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v24 = v8 + v6;
  }

  else
  {
    v24 = v8;
  }

  v7 = sub_1A83EF190(isUniquelyReferenced_nonNull_native, v24, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v17 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  v18 = *(result - 8);
  if (v17 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = *(v18 + 72);
  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v21 = v7[2];
  v22 = __OFADD__(v21, v6);
  v23 = v21 + v6;
  if (!v22)
  {
    v7[2] = v23;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A83EE724(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1A824A1FC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A83EE818(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v4 + 3) >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v3;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1A824A1FC(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = *(v4 + 3) >> 1;
  }

  v12 = *(v4 + 2);
  v13 = v10 - v12;
  result = sub_1A84D86E4(&v43, &v4[16 * v12 + 32], v10 - v12, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v16 = result;
  if (result)
  {
    v17 = *(v4 + 2);
    v18 = __OFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      __break(1u);
LABEL_19:
      v22 = (v15 + 64) >> 6;
      if (v22 <= v2 + 1)
      {
        v23 = v2 + 1;
      }

      else
      {
        v23 = (v15 + 64) >> 6;
      }

      v24 = v23 - 1;
      do
      {
        v25 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v25 >= v22)
        {
          v46 = v24;
          v47 = 0;
          goto LABEL_13;
        }

        v26 = *(v14 + 8 * v25);
        ++v2;
      }

      while (!v26);
      v40 = v15;
      v20 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v2 = v25;
      goto LABEL_27;
    }

    *(v4 + 2) = v19;
  }

  result = v43;
  if (v16 != v13)
  {
    goto LABEL_13;
  }

LABEL_16:
  v13 = *(v4 + 2);
  v14 = v44;
  v15 = v45;
  v2 = v46;
  v42 = v44;
  if (!v47)
  {
    goto LABEL_19;
  }

  v20 = (v47 - 1) & v47;
  v21 = __clz(__rbit64(v47)) | (v46 << 6);
  v40 = v45;
  v22 = (v45 + 64) >> 6;
LABEL_27:
  v41 = result;
  v27 = (*(result + 48) + 16 * v21);
  v29 = *v27;
  v28 = v27[1];

  v30 = v42;
LABEL_29:
  while (1)
  {
    v31 = *(v4 + 3);
    v32 = v31 >> 1;
    if ((v31 >> 1) < v13 + 1)
    {
      break;
    }

    if (v13 < v32)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v13;
  }

  v38 = sub_1A824A1FC((v31 > 1), v13 + 1, 1, v4);
  v30 = v42;
  v4 = v38;
  v32 = *(v38 + 3) >> 1;
  if (v13 >= v32)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v33 = &v4[16 * v13 + 32];
    *v33 = v29;
    *(v33 + 1) = v28;
    ++v13;
    if (!v20)
    {
      break;
    }

    result = v41;
LABEL_38:
    v36 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v37 = (*(result + 48) + ((v2 << 10) | (16 * v36)));
    v29 = *v37;
    v28 = v37[1];

    v30 = v42;
    if (v13 == v32)
    {
      v13 = v32;
      *(v4 + 2) = v32;
      goto LABEL_29;
    }
  }

  v34 = v2;
  result = v41;
  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v35 >= v22)
    {
      break;
    }

    v20 = *(v30 + 8 * v35);
    ++v34;
    if (v20)
    {
      v2 = v35;
      goto LABEL_38;
    }
  }

  if (v22 <= v2 + 1)
  {
    v39 = v2 + 1;
  }

  else
  {
    v39 = v22;
  }

  v45 = v40;
  v46 = v39 - 1;
  v47 = 0;
  *(v4 + 2) = v13;
LABEL_13:
  result = sub_1A8267334();
  *v1 = v4;
  return result;
}

uint64_t sub_1A83EEAD4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1A84E654C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_1A84E654C();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1A83EF494(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1A83EFDA8(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

char *sub_1A83EEBEC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A83EA2FC(&qword_1EB2E6EE0, &qword_1A8500CC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A83EECF8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A83EA2FC(&qword_1EB2E6ED8, &qword_1A8500CC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A83EEE14(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A83EA2FC(&qword_1EB2E6DC8, &unk_1A8500C18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1A83EEF08(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A83EA2FC(&qword_1EB2E6EA0, &qword_1A8503A70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1A83EF00C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A83EA2FC(&qword_1EB2E6ED0, &unk_1A8501A80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1A83EF190(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A83EA2FC(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1A83EF36C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A83EA2FC(&qword_1EB2E6E98, &unk_1A8500C80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[144 * v8])
    {
      memmove(v12, v13, 144 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A83EF494(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1A84E654C();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1A84E649C();
  *v1 = result;
  return result;
}

char *sub_1A83EF534(char *a1, int64_t a2, char a3)
{
  result = sub_1A83EF6BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A83EF554(void *a1, int64_t a2, char a3)
{
  result = sub_1A83EF7C8(a1, a2, a3, *v3, &qword_1EB2E6EA8, &qword_1A8500C90, &qword_1EB2E6EB0, &qword_1A8500C98);
  *v3 = result;
  return result;
}

void *sub_1A83EF594(void *a1, int64_t a2, char a3)
{
  result = sub_1A83EF7C8(a1, a2, a3, *v3, &qword_1EB2E6E80, &qword_1A8500C68, &qword_1EB2E6E88, &qword_1A8500C70);
  *v3 = result;
  return result;
}

void *sub_1A83EF5D4(void *a1, int64_t a2, char a3)
{
  result = sub_1A83EF7C8(a1, a2, a3, *v3, &qword_1EB2E6E70, &qword_1A8500C58, &qword_1EB2E6E78, &qword_1A8500C60);
  *v3 = result;
  return result;
}

char *sub_1A83EF614(char *a1, int64_t a2, char a3)
{
  result = sub_1A83EF910(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A83EF634(size_t a1, int64_t a2, char a3)
{
  result = sub_1A83EFB44(a1, a2, a3, *v3, &qword_1EB2E6EC8, &unk_1A8500CB0, MEMORY[0x1E6968FB0]);
  *v3 = result;
  return result;
}

size_t sub_1A83EF678(size_t a1, int64_t a2, char a3)
{
  result = sub_1A83EFB44(a1, a2, a3, *v3, &qword_1EB2E6E90, &qword_1A8500C78, type metadata accessor for ImportExport.Conversation);
  *v3 = result;
  return result;
}

char *sub_1A83EF6BC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A83EA2FC(&unk_1EB2E8DC0, &qword_1A8500C50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A83EF7C8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1A83EA2FC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A83EA2FC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1A83EF910(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A83EA2FC(&qword_1EB2E6DC0, &qword_1A8500C10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A83EFA1C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A83EA2FC(&qword_1EB2E6E98, &unk_1A8500C80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[144 * v8])
    {
      memmove(v12, v13, 144 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1A83EFB44(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A83EA2FC(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t (*sub_1A83EFD20(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1AC56AF80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return sub_1A83EFDA0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A83EFDA8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A84E654C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A84E654C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A83F0624(&qword_1EB2E6E40, &qword_1EB2E6E38, &unk_1A8500C30);
          for (i = 0; i != v6; ++i)
          {
            sub_1A83EA2FC(&qword_1EB2E6E38, &unk_1A8500C30);
            v9 = sub_1A83EFD20(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1A83EA2FC(&qword_1EB2E6E30, &qword_1A8500C28);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s6IMCore12ImportExportO28ExportedAttachmentStatisticsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  v5 = *(a1 + 40);
  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  v9 = *(a1 + 24);
  v8 = *(a1 + 32);
  v10 = sub_1A8414BB0(*(a1 + 16), *(a2 + 16)) & (v9 == v7);
  if (v8 != v6)
  {
    v10 = 0;
  }

  if (v5 == v4)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A83EFFDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.AttachmentDownloadError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A83F0040(uint64_t a1)
{
  v2 = type metadata accessor for ImportExport.AttachmentDownloadError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A83F00A0()
{
  result = qword_1EB2E6DA0;
  if (!qword_1EB2E6DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E6DA0);
  }

  return result;
}

__n128 sub_1A83F00F4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1A83F0108(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A83F0150(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s28ExportedAttachmentStatisticsV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s28ExportedAttachmentStatisticsV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A83F030C()
{
  result = qword_1EB2E6DA8;
  if (!qword_1EB2E6DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E6DA8);
  }

  return result;
}

unint64_t sub_1A83F0364()
{
  result = qword_1EB2E6DB0;
  if (!qword_1EB2E6DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E6DB0);
  }

  return result;
}

unint64_t sub_1A83F03BC()
{
  result = qword_1EB2E6DB8;
  if (!qword_1EB2E6DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E6DB8);
  }

  return result;
}

uint64_t sub_1A83F0410(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x64616F6C6E776F64 && a2 == 0xED0000746E756F43;
  if (v3 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A852F210 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xEE0073726F727245 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x43676E697373696DLL && a2 == 0xEC000000746E756FLL || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A852F230 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A852F250 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1A83F0624(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

IMCore::CountStatistics::RootKeys_optional __swiftcall CountStatistics.RootKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A84E67BC();

  v5 = 0;
  v6 = 5;
  switch(v3)
  {
    case 0:
      goto LABEL_15;
    case 1:
      v5 = 1;
      goto LABEL_15;
    case 2:
      v5 = 2;
      goto LABEL_15;
    case 3:
      v5 = 3;
      goto LABEL_15;
    case 4:
      v5 = 4;
LABEL_15:
      v6 = v5;
      break;
    case 5:
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    default:
      v6 = 23;
      break;
  }

  *v2 = v6;
  return result;
}

IMCore::CountStatistics::RootKeys_optional __swiftcall CountStatistics.RootKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = CountStatistics.RootKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t CountStatistics.RootKeys.rawValue.getter()
{
  result = 0x756F436C61746F74;
  switch(*v0)
  {
    case 1:
      result = 0x65636E79536C6C61;
      break;
    case 2:
    case 8:
      result = 0x766C6F7365726E75;
      break;
    case 3:
      result = 0x6F43726576726573;
      break;
    case 4:
      result = 0x726F7453636E7973;
      break;
    case 5:
      result = 0x6168436C61746F74;
      break;
    case 6:
      result = 0x68436465636E7973;
      break;
    case 7:
      result = 0x43646574656C6564;
      break;
    case 9:
      result = 0x73654D6C61746F74;
      break;
    case 0xA:
      result = 0x654D6465636E7973;
      break;
    case 0xB:
      result = 0x4D646574656C6564;
      break;
    case 0xC:
      result = 0xD000000000000012;
      break;
    case 0xD:
      result = 0xD000000000000010;
      break;
    case 0xE:
      result = 0xD000000000000011;
      break;
    case 0xF:
      result = 0xD000000000000012;
      break;
    case 0x10:
      result = 0xD000000000000015;
      break;
    case 0x11:
      result = 0xD000000000000018;
      break;
    case 0x12:
      result = 0xD000000000000019;
      break;
    case 0x13:
      result = 0xD00000000000001ALL;
      break;
    case 0x14:
      result = 0xD00000000000001DLL;
      break;
    case 0x15:
    case 0x16:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A83F0B0C(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = CountStatistics.RootKeys.rawValue.getter();
  v4 = v3;
  if (v2 == CountStatistics.RootKeys.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1A84E67AC();
  }

  return v7 & 1;
}

uint64_t sub_1A83F0BA8()
{
  v1 = *v0;
  sub_1A84E684C();
  CountStatistics.RootKeys.rawValue.getter();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

uint64_t sub_1A83F0C10()
{
  v2 = *v0;
  CountStatistics.RootKeys.rawValue.getter();
  sub_1A84E5E5C();
}

uint64_t sub_1A83F0C74()
{
  v1 = *v0;
  sub_1A84E684C();
  CountStatistics.RootKeys.rawValue.getter();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

unint64_t sub_1A83F0CE4@<X0>(unint64_t *a1@<X8>)
{
  result = CountStatistics.RootKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A83F0D84(uint64_t a1)
{
  v2 = sub_1A83F3678();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A83F0DC0(uint64_t a1)
{
  v2 = sub_1A83F3678();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

IMCore::CountStatistics::SyncStoreCountKeys_optional __swiftcall CountStatistics.SyncStoreCountKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A84E65AC();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

IMCore::CountStatistics::SyncStoreCountKeys_optional __swiftcall CountStatistics.SyncStoreCountKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = CountStatistics.SyncStoreCountKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t sub_1A83F0EAC()
{
  v1 = 0xD000000000000013;
  v2 = *v0;
  if (v2 > 4)
  {
    v6 = 0xD00000000000001DLL;
    v7 = 0xD000000000000023;
    if (v2 != 8)
    {
      v7 = 0xD000000000000022;
    }

    if (v2 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD00000000000001ELL;
    if (v2 == 5)
    {
      v8 = 0xD000000000000019;
    }

    if (*v0 <= 6u)
    {
      result = v8;
    }

    else
    {
      result = v6;
    }

    *v0;
  }

  else
  {
    v3 = 0xD000000000000017;
    v4 = 0xD000000000000016;
    if (v2 != 3)
    {
      v4 = 0xD00000000000001ALL;
    }

    if (v2 != 2)
    {
      v3 = v4;
    }

    if (!*v0)
    {
      v1 = 0xD000000000000014;
    }

    if (*v0 <= 1u)
    {
      result = v1;
    }

    else
    {
      result = v3;
    }

    *v0;
  }

  return result;
}

uint64_t sub_1A83F0FD4()
{
  v1 = *v0;
  sub_1A84E684C();
  sub_1A84A1428();
  return sub_1A84E687C();
}

uint64_t sub_1A83F1024()
{
  v1 = *v0;
  sub_1A84E684C();
  sub_1A84A1428();
  return sub_1A84E687C();
}

uint64_t sub_1A83F1074@<X0>(uint64_t *a1@<X8>)
{
  result = CountStatistics.SyncStoreCountKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A83F10E4(uint64_t a1)
{
  v2 = sub_1A83F36CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A83F1120(uint64_t a1)
{
  v2 = sub_1A83F36CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

IMCore::CountStatistics::ServerZoneKeys_optional __swiftcall CountStatistics.ServerZoneKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A84E65AC();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

IMCore::CountStatistics::ServerZoneKeys_optional __swiftcall CountStatistics.ServerZoneKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = CountStatistics.ServerZoneKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t sub_1A83F120C()
{
  v1 = *v0;
  v2 = 0x616E614D74616863;
  v3 = 0xD000000000000015;
  v4 = 0xD00000000000001CLL;
  if (v1 == 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A83F12C8()
{
  v1 = *v0;
  sub_1A84E684C();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

uint64_t sub_1A83F13C0()
{
  *v0;
  *v0;
  *v0;
  sub_1A84E5E5C();
}

uint64_t sub_1A83F14A4()
{
  v1 = *v0;
  sub_1A84E684C();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

void sub_1A83F15A4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF656E6F5A656574;
  v4 = 0x616E614D74616863;
  v5 = 0x80000001A852EAE0;
  v6 = 0xD000000000000015;
  v7 = 0x80000001A852EB00;
  v8 = 0xD00000000000001CLL;
  if (v2 == 3)
  {
    v8 = 0xD000000000000011;
  }

  else
  {
    v7 = 0x80000001A852EB20;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x80000001A852EAC0;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1A83F169C(uint64_t a1)
{
  v2 = sub_1A83F3720();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A83F16D8(uint64_t a1)
{
  v2 = sub_1A83F3720();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A83F172C@<X0>(char *a1@<X8>)
{
  v2 = sub_1A84E65AC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t CountStatistics.ServerCountKeys.stringValue.getter()
{
  if (*v0)
  {
    result = 0x6365725F6576696CLL;
  }

  else
  {
    result = 0x65725F6C61746F74;
  }

  *v0;
  return result;
}

uint64_t sub_1A83F17F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6365725F6576696CLL;
  }

  else
  {
    v4 = 0x65725F6C61746F74;
  }

  if (v3)
  {
    v5 = 0xED00007364726F63;
  }

  else
  {
    v5 = 0xEC0000007364726FLL;
  }

  if (*a2)
  {
    v6 = 0x6365725F6576696CLL;
  }

  else
  {
    v6 = 0x65725F6C61746F74;
  }

  if (*a2)
  {
    v7 = 0xEC0000007364726FLL;
  }

  else
  {
    v7 = 0xED00007364726F63;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1A84E67AC();
  }

  return v9 & 1;
}

uint64_t sub_1A83F18B0()
{
  v1 = *v0;
  sub_1A84E684C();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

uint64_t sub_1A83F1948()
{
  *v0;
  sub_1A84E5E5C();
}

uint64_t sub_1A83F19CC()
{
  v1 = *v0;
  sub_1A84E684C();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

uint64_t sub_1A83F1A60@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1A84E65AC();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1A83F1AC0(uint64_t *a1@<X8>)
{
  v2 = 0x65725F6C61746F74;
  if (*v1)
  {
    v2 = 0x6365725F6576696CLL;
  }

  v3 = 0xED00007364726F63;
  if (*v1)
  {
    v3 = 0xEC0000007364726FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1A83F1B14()
{
  if (*v0)
  {
    result = 0x6365725F6576696CLL;
  }

  else
  {
    result = 0x65725F6C61746F74;
  }

  *v0;
  return result;
}

uint64_t sub_1A83F1B64@<X0>(char *a1@<X8>)
{
  v2 = sub_1A84E65AC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1A83F1BD4(uint64_t a1)
{
  v2 = sub_1A83F3774();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A83F1C10(uint64_t a1)
{
  v2 = sub_1A83F3774();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1A83F1C4C()
{
  if (qword_1EB2E59A0 != -1)
  {
    swift_once();
  }

  qword_1EB2FF028 = 0;
  unk_1EB2FF030 = 0;
  qword_1EB2FF038 = 0;
  unk_1EB2FF060 = xmmword_1EB2FF2E0;
  unk_1EB2FF070 = xmmword_1EB2FF2F0;
  unk_1EB2FF080 = xmmword_1EB2FF300;
  unk_1EB2FF040 = xmmword_1EB2FF2C0;
  unk_1EB2FF050 = xmmword_1EB2FF2D0;
  unk_1EB2FF0B0 = xmmword_1EB2FF2D0;
  unk_1EB2FF0A0 = xmmword_1EB2FF2C0;
  unk_1EB2FF090 = xmmword_1EB2FF310;
  unk_1EB2FF0F0 = xmmword_1EB2FF310;
  unk_1EB2FF0E0 = xmmword_1EB2FF300;
  unk_1EB2FF0D0 = xmmword_1EB2FF2F0;
  unk_1EB2FF0C0 = xmmword_1EB2FF2E0;
  xmmword_1EB2FF140 = xmmword_1EB2FF300;
  unk_1EB2FF150 = xmmword_1EB2FF310;
  xmmword_1EB2FF130 = xmmword_1EB2FF2F0;
  unk_1EB2FF120 = xmmword_1EB2FF2E0;
  xmmword_1EB2FF180 = xmmword_1EB2FF2E0;
  unk_1EB2FF190 = xmmword_1EB2FF2F0;
  unk_1EB2FF110 = xmmword_1EB2FF2D0;
  xmmword_1EB2FF1A0 = xmmword_1EB2FF300;
  unk_1EB2FF1B0 = xmmword_1EB2FF310;
  unk_1EB2FF100 = xmmword_1EB2FF2C0;
  xmmword_1EB2FF160 = xmmword_1EB2FF2C0;
  *algn_1EB2FF170 = xmmword_1EB2FF2D0;
  xmmword_1EB2FF1C0 = xmmword_1EB2FF2C0;
  *algn_1EB2FF1D0 = xmmword_1EB2FF2D0;
  result = *&xmmword_1EB2FF310;
  xmmword_1EB2FF200 = xmmword_1EB2FF300;
  unk_1EB2FF210 = xmmword_1EB2FF310;
  xmmword_1EB2FF1E0 = xmmword_1EB2FF2E0;
  unk_1EB2FF1F0 = xmmword_1EB2FF2F0;
  return result;
}

uint64_t CountStatistics.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v296 = a2;
  v3 = sub_1A83EA2FC(&qword_1EB2E6EF0, &qword_1A8500CE0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v290 = &v249 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v288 = &v249 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v286 = &v249 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v284 = &v249 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v282 = &v249 - v13;
  v14 = sub_1A83EA2FC(&qword_1EB2E6EF8, &qword_1A8500CE8);
  v15 = *(v14 - 8);
  v292 = v14;
  v293 = v15;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v291 = &v249 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v289 = &v249 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v287 = &v249 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v285 = &v249 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v283 = &v249 - v25;
  v26 = sub_1A83EA2FC(&qword_1EB2E6F00, &qword_1A8500CF0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v281 = &v249 - v28;
  v294 = sub_1A83EA2FC(&qword_1EB2E6F08, &qword_1A8500CF8);
  v280 = *(v294 - 8);
  v29 = *(v280 + 64);
  MEMORY[0x1EEE9AC00](v294);
  v295 = &v249 - v30;
  v31 = sub_1A83EA2FC(&qword_1EB2E6F10, &qword_1A8500D00);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v249 - v33;
  v35 = sub_1A83EA2FC(&qword_1EB2E6F18, &qword_1A8500D08);
  v297 = *(v35 - 8);
  v36 = *(v297 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v249 - v37;
  v39 = sub_1A83EA2FC(&qword_1EB2E6F20, &qword_1A8500D10);
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v249 - v42;
  v45 = a1[3];
  v44 = a1[4];
  v298 = a1;
  sub_1A82471E0(a1, v45);
  sub_1A83F3678();
  v46 = v299;
  sub_1A84E689C();
  if (v46)
  {
    v299 = v46;
    return sub_1A8244788(v298);
  }

  v47 = v297;
  v300 = 0;
  v48 = v43;
  v49 = sub_1A84E65EC();
  if (v50)
  {
    v51 = 0;
  }

  else
  {
    v51 = v49;
  }

  v300 = 1;
  v52 = sub_1A84E65EC();
  v279 = v51;
  if (v53)
  {
    v54 = 0;
  }

  else
  {
    v54 = v52;
  }

  v300 = 2;
  v55 = sub_1A84E65EC();
  v276 = v54;
  v277 = v48;
  v278 = v39;
  if (v56)
  {
    v58 = 0;
  }

  else
  {
    v58 = v55;
  }

  if (v279 < 0)
  {
    __break(1u);
    goto LABEL_94;
  }

  if (v276 < 0)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  if (v58 < 0)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v300 = 5;
  v59 = sub_1A84E65EC();
  if (v60)
  {
    v39 = 0;
  }

  else
  {
    v39 = v59;
  }

  v300 = 6;
  v61 = sub_1A84E65EC();
  v275 = v58;
  if (v62)
  {
    v63 = 0;
  }

  else
  {
    v63 = v61;
  }

  v300 = 7;
  v64 = sub_1A84E65EC();
  v274 = v63;
  if (v65)
  {
    v58 = 0;
  }

  else
  {
    v58 = v64;
  }

  v300 = 8;
  v66 = sub_1A84E65EC();
  if (v67)
  {
    v68 = 0;
  }

  else
  {
    v68 = v66;
  }

  v273 = v68;
  v300 = 9;
  v69 = sub_1A84E65EC();
  if (v70)
  {
    v71 = 0;
  }

  else
  {
    v71 = v69;
  }

  v272 = v71;
  v300 = 10;
  v72 = sub_1A84E65EC();
  v299 = 0;
  if (v73)
  {
    v74 = 0;
  }

  else
  {
    v74 = v72;
  }

  v271 = v74;
  v300 = 11;
  v75 = v299;
  v76 = sub_1A84E65EC();
  v299 = v75;
  if (v77)
  {
    v78 = 0;
  }

  else
  {
    v78 = v76;
  }

  v270 = v78;
  v300 = 12;
  v79 = v299;
  v80 = sub_1A84E65EC();
  v299 = v79;
  if (v81)
  {
    v82 = 0;
  }

  else
  {
    v82 = v80;
  }

  v269 = v82;
  v300 = 13;
  v83 = v299;
  v84 = sub_1A84E65EC();
  v299 = v83;
  if (v85)
  {
    v86 = 0;
  }

  else
  {
    v86 = v84;
  }

  v268 = v86;
  v300 = 14;
  v87 = v299;
  v88 = sub_1A84E65EC();
  v299 = v87;
  if (v89)
  {
    v90 = 0;
  }

  else
  {
    v90 = v88;
  }

  v267 = v90;
  v300 = 15;
  v91 = v299;
  v92 = sub_1A84E65EC();
  v299 = v91;
  if (v93)
  {
    v94 = 0;
  }

  else
  {
    v94 = v92;
  }

  v266 = v94;
  v300 = 16;
  v95 = v299;
  v96 = sub_1A84E65EC();
  v299 = v95;
  if (v97)
  {
    v98 = 0;
  }

  else
  {
    v98 = v96;
  }

  v265 = v98;
  v300 = 17;
  v99 = v299;
  v100 = sub_1A84E65EC();
  v299 = v99;
  if (v101)
  {
    v102 = 0;
  }

  else
  {
    v102 = v100;
  }

  v264 = v102;
  v300 = 18;
  v103 = v299;
  v104 = sub_1A84E65EC();
  v299 = v103;
  if (v105)
  {
    v106 = 0;
  }

  else
  {
    v106 = v104;
  }

  v263 = v106;
  v300 = 19;
  v107 = v299;
  v108 = sub_1A84E65EC();
  v299 = v107;
  if (v109)
  {
    v110 = 0;
  }

  else
  {
    v110 = v108;
  }

  v262 = v110;
  v300 = 20;
  v111 = v299;
  v112 = sub_1A84E65EC();
  v299 = v111;
  if (v113)
  {
    v114 = 0;
  }

  else
  {
    v114 = v112;
  }

  v261 = v114;
  v300 = 21;
  v115 = v299;
  v116 = sub_1A84E65EC();
  v299 = v115;
  if (v117)
  {
    v118 = 0;
  }

  else
  {
    v118 = v116;
  }

  v260 = v118;
  v300 = 22;
  v119 = v299;
  v120 = sub_1A84E65EC();
  v299 = v119;
  if (v121)
  {
    v122 = 0;
  }

  else
  {
    v122 = v120;
  }

  v250 = v122;
  v300 = 4;
  sub_1A83F36CC();
  v123 = v299;
  sub_1A84E65BC();
  v299 = v123;
  if (v123)
  {

    (*(v47 + 56))(v34, 1, 1, v35);
    sub_1A824B2D4(v34, &qword_1EB2E6F10, &qword_1A8500D00);
    v297 = 0;
    v251 = 0;
    v252 = 0;
    v253 = 0;
    v254 = 0;
    v255 = 0;
    v256 = 0;
    v257 = 0;
    v258 = 0;
    v259 = 0;
    v299 = 0;
    while (1)
    {
      v300 = 3;
      sub_1A83F3720();
      v124 = v299;
      sub_1A84E65BC();
      if (v124)
      {
        break;
      }

      v180 = v280;
      v179 = v281;
      v181 = v294;
      (*(v280 + 56))(v281, 0, 1, v294);
      (*(v180 + 32))(v295, v179, v181);
      v300 = 0;
      sub_1A83F3774();
      sub_1A84E65BC();
      v190 = v292;
      v191 = v293;
      v192 = v282;
      v281 = *(v293 + 56);
      (v281)(v282, 0, 1, v292);
      (*(v191 + 32))(v283, v192, v190);
      v300 = 0;
      v193 = sub_1A84E65EC();
      v299 = 0;
      v194 = v193;
      v196 = v195;
      v300 = 1;
      v197 = sub_1A84E65EC();
      v299 = 0;
      v232 = v197;
      v233 = v198;
      if (v196)
      {
        v234 = 0;
      }

      else
      {
        v234 = v194;
      }

      v282 = v234;
      (*(v293 + 8))(v283, v292);
      if (v233)
      {
        v235 = 0;
      }

      else
      {
        v235 = v232;
      }

      v283 = v235;
      v300 = 1;
      v182 = v299;
      sub_1A84E65BC();
      if (v182)
      {

        v183 = v284;
        (v281)(v284, 1, 1, v292);
        sub_1A824B2D4(v183, &qword_1EB2E6EF0, &qword_1A8500CE0);
        v285 = 0;
        v38 = 0;
        v299 = 0;
      }

      else
      {
        v199 = v292;
        v200 = v293;
        v201 = v284;
        (v281)(v284, 0, 1, v292);
        (*(v200 + 32))(v285, v201, v199);
        v300 = 0;
        v202 = sub_1A84E65EC();
        v299 = 0;
        v203 = v202;
        v205 = v204;
        v300 = 1;
        v206 = sub_1A84E65EC();
        v299 = 0;
        v236 = v206;
        v237 = v207;
        if (v205)
        {
          v38 = 0;
        }

        else
        {
          v38 = v203;
        }

        (*(v293 + 8))(v285, v292);
        if (v237)
        {
          v238 = 0;
        }

        else
        {
          v238 = v236;
        }

        v285 = v238;
      }

      v300 = 2;
      v184 = v299;
      sub_1A84E65BC();
      if (v184)
      {

        v185 = v286;
        (v281)(v286, 1, 1, v292);
        sub_1A824B2D4(v185, &qword_1EB2E6EF0, &qword_1A8500CE0);
        v286 = 0;
        v287 = 0;
        v299 = 0;
      }

      else
      {
        v209 = v292;
        v208 = v293;
        v210 = v286;
        (v281)(v286, 0, 1, v292);
        (*(v208 + 32))(v287, v210, v209);
        v300 = 0;
        v211 = sub_1A84E65EC();
        v299 = 0;
        v212 = v211;
        v214 = v213;
        v300 = 1;
        v215 = sub_1A84E65EC();
        v299 = 0;
        v239 = v215;
        v240 = v216;
        if (v214)
        {
          v241 = 0;
        }

        else
        {
          v241 = v212;
        }

        v286 = v241;
        (*(v293 + 8))(v287, v292);
        if (v240)
        {
          v242 = 0;
        }

        else
        {
          v242 = v239;
        }

        v287 = v242;
      }

      v300 = 3;
      v186 = v299;
      sub_1A84E65BC();
      if (v186)
      {

        v187 = v288;
        (v281)(v288, 1, 1, v292);
        sub_1A824B2D4(v187, &qword_1EB2E6EF0, &qword_1A8500CE0);
        v130 = 0;
        v131 = 0;
        v299 = 0;
      }

      else
      {
        v217 = v292;
        v218 = v293;
        v219 = v288;
        (v281)(v288, 0, 1, v292);
        (*(v218 + 32))(v289, v219, v217);
        v300 = 0;
        v220 = sub_1A84E65EC();
        v299 = 0;
        v131 = v220;
        v222 = v221;
        v300 = 1;
        v223 = sub_1A84E65EC();
        v299 = 0;
        v243 = v223;
        v244 = v224;
        if (v222)
        {
          v131 = 0;
        }

        (*(v293 + 8))(v289, v292);
        if (v244)
        {
          v130 = 0;
        }

        else
        {
          v130 = v243;
        }
      }

      v300 = 4;
      v188 = v299;
      sub_1A84E65BC();
      if (v188)
      {

        v35 = v280 + 8;
        (*(v280 + 8))(v295, v294);
        v189 = *(v40 + 8);
        v40 += 8;
        v189(v277, v278);
        v47 = v290;
        (v281)(v290, 1, 1, v292);
        sub_1A824B2D4(v47, &qword_1EB2E6EF0, &qword_1A8500CE0);
        v128 = 0;
        v129 = 0;
        goto LABEL_75;
      }

      v225 = v292;
      v226 = v290;
      (v281)(v290, 0, 1, v292);
      (*(v293 + 32))(v291, v226, v225);
      v300 = 0;
      v227 = sub_1A84E65EC();
      LODWORD(v290) = v228;
      v299 = 0;
      v229 = v227;
      v300 = 1;
      v230 = sub_1A84E65EC();
      LODWORD(v289) = v231;
      v299 = 0;
      v35 = v230;
      if (v290)
      {
        v129 = 0;
      }

      else
      {
        v129 = v229;
      }

      (*(v293 + 8))(v291, v292);
      v47 = v280 + 8;
      (*(v280 + 8))(v295, v294);
      v245 = *(v40 + 8);
      v40 += 8;
      v245(v277, v278);
      if (v289)
      {
        v128 = 0;
      }

      else
      {
        v128 = v35;
      }

LABEL_76:
      if ((v274 | v39 | v58 | v273) < 0)
      {
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
        goto LABEL_183;
      }

      if ((v259 | v258) < 0)
      {
        goto LABEL_169;
      }

      if (((v282 | v283) & 0x8000000000000000) != 0)
      {
        goto LABEL_170;
      }

      if ((v271 | v272 | v270 | v269) < 0)
      {
        goto LABEL_171;
      }

      if ((v257 | v256) < 0)
      {
        goto LABEL_172;
      }

      if (((v38 | v285) & 0x8000000000000000) != 0)
      {
        goto LABEL_173;
      }

      if ((v267 | v268 | v266 | v265) < 0)
      {
        goto LABEL_174;
      }

      if ((v255 | v254) < 0)
      {
        goto LABEL_175;
      }

      if (((v286 | v287) & 0x8000000000000000) != 0)
      {
        goto LABEL_176;
      }

      v132 = v260 + v250;
      if (__OFADD__(v260, v250))
      {
        goto LABEL_177;
      }

      if (v132 < 0)
      {
        goto LABEL_178;
      }

      if ((v253 | v252) < 0)
      {
        goto LABEL_179;
      }

      if ((v131 | v130) < 0)
      {
        goto LABEL_180;
      }

      if ((v263 | v264 | v262 | v261) < 0)
      {
        goto LABEL_181;
      }

      if ((v251 | v297) < 0)
      {
        goto LABEL_182;
      }

      if (((v129 | v128) & 0x8000000000000000) == 0)
      {
        v133 = v296;
        v134 = v276;
        *v296 = v279;
        v133[1] = v134;
        v133[2] = v275;
        v133[5] = v274;
        v133[6] = v39;
        v135 = v273;
        v133[7] = v58;
        v133[8] = v135;
        v136 = v258;
        v133[10] = v259;
        v133[11] = v136;
        v137 = v283;
        v133[13] = v282;
        v133[14] = v137;
        *(v133 + 24) = 0;
        *(v133 + 32) = 0;
        *(v133 + 72) = 0;
        *(v133 + 96) = 0;
        *(v133 + 120) = 1;
        *(v133 + 128) = 1;
        v133[17] = v271;
        v133[18] = v272;
        v133[19] = v270;
        v133[20] = v269;
        *(v133 + 168) = 1;
        v133[22] = v257;
        v133[23] = v256;
        *(v133 + 192) = 1;
        v138 = v285;
        v133[25] = v38;
        v133[26] = v138;
        *(v133 + 216) = 2;
        *(v133 + 224) = 2;
        v133[29] = v267;
        v133[30] = v268;
        v133[31] = v266;
        v133[32] = v265;
        *(v133 + 264) = 2;
        v133[34] = v255;
        v133[35] = v254;
        *(v133 + 288) = 2;
        v139 = v287;
        v133[37] = v286;
        v133[38] = v139;
        *(v133 + 312) = 3;
        *(v133 + 320) = 3;
        v133[41] = 0;
        v133[42] = v132;
        v133[43] = 0;
        v133[44] = 0;
        *(v133 + 360) = 3;
        v140 = v252;
        v133[46] = v253;
        v133[47] = v140;
        *(v133 + 384) = 3;
        v133[49] = v131;
        v133[50] = v130;
        *(v133 + 408) = 4;
        *(v133 + 416) = 4;
        v141 = v264;
        v133[53] = v263;
        v133[54] = v141;
        v142 = v261;
        v133[55] = v262;
        v133[56] = v142;
        *(v133 + 456) = 4;
        v143 = v297;
        v133[58] = v251;
        v133[59] = v143;
        *(v133 + 480) = 4;
        v133[61] = v129;
        v133[62] = v128;
        return sub_1A8244788(v298);
      }

LABEL_183:
      __break(1u);
LABEL_184:
      v246 = v127;
      if (v130)
      {
        v247 = 0;
      }

      else
      {
        v247 = v131;
      }

      v251 = v247;
      (*(v47 + 8))(v38, v35);
      v248 = v249;
      if (v246)
      {
        v248 = 0;
      }

      v297 = v248;
    }

    v125 = *(v40 + 8);
    v40 += 8;
    v125(v277, v278);
    v126 = v281;
    v47 = v280 + 56;
    (*(v280 + 56))(v281, 1, 1, v294);
    sub_1A824B2D4(v126, &qword_1EB2E6F00, &qword_1A8500CF0);
    v128 = 0;
    v129 = 0;
    v130 = 0;
    v131 = 0;
    v286 = 0;
    v287 = 0;
    v285 = 0;
    v38 = 0;
    v282 = 0;
    v283 = 0;
LABEL_75:
    v299 = 0;
    goto LABEL_76;
  }

LABEL_96:
  (*(v47 + 56))(v34, 0, 1, v35);
  (*(v47 + 32))(v38, v34, v35);
  v300 = 0;
  v144 = v299;
  v145 = sub_1A84E65EC();
  v299 = v144;
  if (!v144)
  {
    if (v146)
    {
      v147 = 0;
    }

    else
    {
      v147 = v145;
    }

    v259 = v147;
    v300 = 1;
    v148 = v299;
    v149 = sub_1A84E65EC();
    v299 = v148;
    if (v150)
    {
      v151 = 0;
    }

    else
    {
      v151 = v149;
    }

    v258 = v151;
    v300 = 2;
    v152 = v299;
    v153 = sub_1A84E65EC();
    v299 = v152;
    if (v154)
    {
      v155 = 0;
    }

    else
    {
      v155 = v153;
    }

    v257 = v155;
    v300 = 3;
    v156 = v299;
    v157 = sub_1A84E65EC();
    v299 = v156;
    if (v158)
    {
      v159 = 0;
    }

    else
    {
      v159 = v157;
    }

    v256 = v159;
    v300 = 4;
    v160 = v299;
    v161 = sub_1A84E65EC();
    v299 = v160;
    if (v162)
    {
      v163 = 0;
    }

    else
    {
      v163 = v161;
    }

    v255 = v163;
    v300 = 5;
    v164 = v299;
    v165 = sub_1A84E65EC();
    v299 = v164;
    if (v166)
    {
      v167 = 0;
    }

    else
    {
      v167 = v165;
    }

    v254 = v167;
    v300 = 6;
    v168 = v299;
    v169 = sub_1A84E65EC();
    v299 = v168;
    if (v170)
    {
      v171 = 0;
    }

    else
    {
      v171 = v169;
    }

    v253 = v171;
    v300 = 7;
    v172 = v299;
    v173 = sub_1A84E65EC();
    v299 = v172;
    if (v174)
    {
      v175 = 0;
    }

    else
    {
      v175 = v173;
    }

    v252 = v175;
    v300 = 8;
    v176 = v299;
    v177 = sub_1A84E65EC();
    v299 = v176;
    v131 = v177;
    LOBYTE(v130) = v178;
    v300 = 9;
    v249 = sub_1A84E65EC();
    v299 = 0;
    goto LABEL_184;
  }

  (*(v47 + 8))(v38, v35);
  (*(v40 + 8))(v277, v278);
  return sub_1A8244788(v298);
}