void IMDMessageRecordClearDeleteTombStones()
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    if (IMOSLoggingEnabled())
    {
      v0 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
      {
        LOWORD(v2[0]) = 0;
        _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_INFO, "IMDMessageRecordClearDeleteTombStones", v2, 2u);
      }
    }

    memset(v2, 0, sizeof(v2));
    IMDSqlOperationInitWithSharedCSDBDatabase(v2);
    IMDSqlOperationExecuteQuery(v2, @"delete from sync_deleted_messages;", &unk_1F2FA1490);
    IMDSqlOperationRelease(v2, 0);
  }

  else
  {
    __syncXPCIMDMessageRecordMarkDeletedTombStonedMessagesAsNeedingCloudKitSync_IPCAction(0);
    if (IMOSLoggingEnabled())
    {
      v1 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
      {
        LOWORD(v2[0]) = 0;
        _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_INFO, "Returned from DB call after marking clearing all tombstones", v2, 2u);
      }
    }
  }
}

void __syncXPCIMDMessageRecordMarkDeletedTombStonedMessagesAsNeedingCloudKitSync_IPCAction(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 171);
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void __XPCIMDMessageStoreSendXPCMessage(void *a1, uint64_t a2, uint64_t a3)
{
  v72 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v19 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF7304(v19, v20, v21, v22, v23, v24, v25, v26);
    }

    goto LABEL_46;
  }

  v3 = a3;
  v6 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], a2, a3);
  if (objc_msgSend_isInternalInstall(v6, v7, v8) && IMIsRunningInUnitTesting())
  {
    v54 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF72CC(v54, v55, v56, v57, v58, v59, v60, v61);
    }

    v62 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], v55, @"IMDPersistenceXPCNotAllowedInTest", @"Called into IMDPersistence XPC layer while in a test", 0);
    objc_exception_throw(v62);
  }

  v11 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v9, v10);
  if (objc_msgSend_isModernPersistenceXPCEnabled(v11, v12, v13))
  {
    int64 = xpc_dictionary_get_int64(a1, "__xpc__event_code__");
    v15 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = int64;
      *&buf[12] = 1024;
      *&buf[14] = v3;
      _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_DEFAULT, "Sending legacy command %lli async %{BOOL}d", buf, 0x12u);
    }

    if (v3)
    {
      v18 = objc_msgSend_service(IMDPersistenceService, v16, v17);
    }

    else
    {
      v18 = objc_msgSend_synchronousService(IMDPersistenceService, v16, v17);
    }

    v36 = v18;
    v37 = objc_alloc(MEMORY[0x1E69A8368]);
    v40 = objc_msgSend_initWithXPCObject_(v37, v38, a1);
    if (a2)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1B7AE15F8;
      v68 = &unk_1E7CBACE0;
      v69 = a2;
      v70 = int64;
      v71 = v3;
      objc_msgSend_sendLegacyXPCCommandWithObject_reply_(v36, v39, v40, buf);
    }

    else
    {
      objc_msgSend_sendLegacyXPCCommandWithObject_(v36, v39, v40);
      v52 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        sub_1B7CF7240(v3, int64, v52);
      }
    }

    goto LABEL_46;
  }

  xpc_dictionary_set_int64(a1, "__xpc_wants_reply__", 1);
  v27 = 0;
  v28 = MEMORY[0x1E69E9E98];
  do
  {
    v29 = _IMDPersistenceIPCCopyConnectionWithForceNew(v27 != 0);
    if (v29)
    {
      v30 = v29;
      if (v3)
      {
        xpc_connection_send_message_with_reply(v29, a1, MEMORY[0x1E69E96A0], a2);
      }

      else
      {
        v31 = xpc_connection_send_message_with_reply_sync(v29, a1);
        v32 = v31;
        if (!v31 || MEMORY[0x1B8CB1210](v31) == v28)
        {
          v33 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            *&buf[4] = v27 + 1;
            _os_log_error_impl(&dword_1B7AD5000, v33, OS_LOG_TYPE_ERROR, "__syncXPCIMDMessageStoreSendXPCMessage has failed %lu time(s)!", buf, 0xCu);
            if (!v32)
            {
              goto LABEL_19;
            }
          }

          else if (!v32)
          {
LABEL_19:
            xpc_release(v30);
            goto LABEL_22;
          }

          xpc_release(v32);
          goto LABEL_19;
        }

        if (a2)
        {
          (*(a2 + 16))(a2, v32);
        }

        xpc_release(v32);
      }

      v51 = v30;
      goto LABEL_45;
    }

    v34 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF7188(&v65, v66, v34);
    }

LABEL_22:
    if (v27 >= 3)
    {
      v35 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF71C8(&v63, v64, v35);
      }

      sleep(0xBu);
    }

    sleep(1u);
    ++v27;
  }

  while (v27 != 5);
  v41 = IMDatabaseLogHandle();
  if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    if (!a2)
    {
      goto LABEL_46;
    }

LABEL_35:
    v50 = xpc_dictionary_create(0, 0, 0);
    (*(a2 + 16))(a2, v50);
    if (!v50)
    {
      goto LABEL_46;
    }

    v51 = v50;
LABEL_45:
    xpc_release(v51);
    goto LABEL_46;
  }

  sub_1B7CF7208(v41, v43, v44, v45, v46, v47, v48, v49);
  if (a2)
  {
    goto LABEL_35;
  }

LABEL_46:
  v53 = *MEMORY[0x1E69E9840];
}

id sub_1B7AD7FD8(uint64_t a1, uint64_t a2, SEL *a3)
{
  if (qword_1EDBE5968 != -1)
  {
    v4 = a3;
    swift_once();
    a3 = v4;
  }

  result = [qword_1EDBE79F0 *a3];
  if (result)
  {

    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B7AD80E0(void **a1@<X0>, void *a2@<X8>)
{
  sub_1B7AD8208(a1);
  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_3;
  }

  v7[4] = sub_1B7C4EC20;
  v7[5] = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1B7C4E668;
  v7[3] = &unk_1F2F9F8E8;
  v5 = _Block_copy(v7);
  v6 = [v4 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v5);
  sub_1B7CFF0A0();
  swift_unknownObjectRelease();
  sub_1B7C107FC(&qword_1EBA52810, &qword_1B7D0D250);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_3:
    *a2 = 0;
  }
}

void sub_1B7AD8208(void *a1)
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    sub_1B7CFF340();
    __break(1u);
  }

  else if (!*a1)
  {
    v3 = v1;
    if (qword_1EDBE5940 != -1)
    {
      swift_once();
    }

    v4 = sub_1B7CFE420();
    sub_1B7AD9040(v4, qword_1EDBE5950);
    v5 = sub_1B7CFE400();
    v6 = sub_1B7CFEED0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1B7AD5000, v5, v6, "Connecting to persistence agent", v7, 2u);
      MEMORY[0x1B8CB0E70](v7, -1, -1);
    }

    v8 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
    v9 = sub_1B7CFEA30();
    v10 = [v8 initWithServiceName_];

    *a1 = v10;
    v11 = v10;
    v12 = sub_1B7CE04F8();
    [v11 setRemoteObjectInterface_];

    v13 = sub_1B7CFE400();
    v14 = sub_1B7CFEF00();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1B7AD5000, v13, v14, "Resuming connection to persistence service", v15, 2u);
      MEMORY[0x1B8CB0E70](v15, -1, -1);
    }

    [v11 resume];
    v16 = swift_allocObject();
    *(v16 + 16) = v3;
    v24 = sub_1B7C4EFB8;
    v25 = v16;
    aBlock = MEMORY[0x1E69E9820];
    v21 = 1107296256;
    v22 = sub_1B7AE14D0;
    v23 = &unk_1F2FA4758;
    v17 = _Block_copy(&aBlock);
    v18 = v3;

    [v11 setInvalidationHandler_];
    _Block_release(v17);
    v24 = sub_1B7C4EABC;
    v25 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v21 = 1107296256;
    v22 = sub_1B7AE14D0;
    v23 = &unk_1F2FA4780;
    v19 = _Block_copy(&aBlock);
    [v11 setInterruptionHandler_];

    _Block_release(v19);
  }
}

uint64_t sub_1B7AD8574()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

__CFString *sub_1B7AD85AC(unint64_t a1)
{
  if (a1 > 0xEB)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7CBDF88[a1];
  }
}

uint64_t sub_1B7AD85EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B7AD85FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B7AD860C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B7AD861C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B7AD862C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B7AD864C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B7AD865C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B7AD866C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B7AD867C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B7AD868C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B7AD869C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B7AD86AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B7AD86BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B7AD86CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B7AD86DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __IMDPersistenceCheckGreaterEntitlements(void *a1, const char *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (qword_1EDBE62F8 != -1)
  {
    sub_1B7AF2794();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = qword_1EDBE62E8;
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(qword_1EDBE62E8, a2, &v13, v17, 16);
  if (result)
  {
    v6 = result;
    v7 = *v14;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = objc_msgSend_objectForKey_(a1, v5, *(*(&v13 + 1) + 8 * v8));
        if (v9)
        {
          v10 = v9;
          v11 = CFGetTypeID(v9);
          if (v11 == CFBooleanGetTypeID())
          {
            if (CFBooleanGetValue(v10))
            {
              result = 1;
              goto LABEL_15;
            }
          }
        }

        ++v8;
      }

      while (v6 != v8);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v13, v17, 16);
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void IMDAttachmentRecordClearDeleteTombStones()
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    if (IMOSLoggingEnabled())
    {
      v0 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
      {
        LOWORD(v2[0]) = 0;
        _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_INFO, "IMDAttachmentRecordClearDeleteTombStones", v2, 2u);
      }
    }

    memset(v2, 0, sizeof(v2));
    IMDSqlOperationInitWithSharedCSDBDatabase(v2);
    IMDSqlOperationExecuteQuery(v2, @"delete from sync_deleted_attachments;", &unk_1F2FA1550);
    IMDSqlOperationRelease(v2, 0);
  }

  else
  {
    __syncXPCMDAttachmentRecordDeleteTombStonedAttachmentsToDeleteFromCloudKit_IPCAction(0);
    if (IMOSLoggingEnabled())
    {
      v1 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
      {
        LOWORD(v2[0]) = 0;
        _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_INFO, "Returned from DB call after clearing all tombstones", v2, 2u);
      }
    }
  }
}

void __syncXPCMDAttachmentRecordDeleteTombStonedAttachmentsToDeleteFromCloudKit_IPCAction(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = v2;
    xpc_dictionary_set_int64(v2, "__xpc__event_code__", 187);
    __XPCIMDMessageStoreSendXPCMessage(v3, a1, 0);

    xpc_release(v3);
  }
}

void _sSo21IMDPersistenceServiceC0A0E20sendLegacyXPCCommand10withObject5replyySo15IMXPCDictionaryC_yAHctF_0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() currentConnection];
  if (v6)
  {
    v7 = v6;
    v8 = [a1 object];
    empty = xpc_dictionary_create_empty();
    int64 = xpc_dictionary_get_int64(v8, "__xpc__event_code__");
    [v7 auditToken];
    if (__IMDPersistenceCheckEntitlements(aBlock, int64))
    {
      if (qword_1EDBE3808 != -1)
      {
        swift_once();
      }

      v11 = sub_1B7CFE420();
      sub_1B7AD9040(v11, qword_1EDBE79D0);
      v12 = v7;
      v13 = sub_1B7CFE400();
      v14 = sub_1B7CFEED0();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 134218240;
        *(v15 + 4) = int64;
        *(v15 + 12) = 1024;
        *(v15 + 14) = [v12 processIdentifier];

        _os_log_impl(&dword_1B7AD5000, v13, v14, "Received command %ld from PID %d", v15, 0x12u);
        MEMORY[0x1B8CB0E70](v15, -1, -1);
      }

      else
      {

        v13 = v12;
      }

      v24 = [v12 _xpcConnection];
      v25 = swift_allocObject();
      v25[2] = empty;
      v25[3] = a2;
      v25[4] = a3;
      aBlock[4] = sub_1B7AE1514;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B7AE14D0;
      aBlock[3] = &unk_1F2FA60E8;
      v26 = _Block_copy(aBlock);
      swift_unknownObjectRetain_n();
      swift_unknownObjectRetain();
      sub_1B7AD8F38(a2);

      __IMDPersistenceIPCServer_command_dispatcher(int64, v24, v8, a2 != 0, empty, v26);
      _Block_release(v26);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease_n();
      swift_unknownObjectRelease_n();
    }

    else
    {
      if (qword_1EDBE3808 != -1)
      {
        swift_once();
      }

      v19 = sub_1B7CFE420();
      sub_1B7AD9040(v19, qword_1EDBE79D0);
      v20 = v7;
      v21 = sub_1B7CFE400();
      v22 = sub_1B7CFEEF0();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 67109120;
        *(v23 + 4) = [v20 processIdentifier];

        _os_log_impl(&dword_1B7AD5000, v21, v22, "Command from %d denied, lacks entitlements", v23, 8u);
        MEMORY[0x1B8CB0E70](v23, -1, -1);
      }

      else
      {

        v21 = v20;
      }

      [v20 invalidate];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1EDBE3808 != -1)
    {
      swift_once();
    }

    v16 = sub_1B7CFE420();
    sub_1B7AD9040(v16, qword_1EDBE79D0);
    oslog = sub_1B7CFE400();
    v17 = sub_1B7CFEEF0();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1B7AD5000, oslog, v17, "No current NSXPCConnection", v18, 2u);
      MEMORY[0x1B8CB0E70](v18, -1, -1);
    }
  }
}

uint64_t sub_1B7AD8F38(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B7AD8F48()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  if (v0[3])
  {
    v2 = v0[4];
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t __IMDPersistenceCheckEntitlements(uint64_t a1, const char *a2)
{
  if (qword_1EDBE62F8 != -1)
  {
    sub_1B7AF2794();
  }

  v3 = IMDAuditTokenTaskCopyValuesForEntitlements();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (__IMDPersistenceCheckGreaterEntitlements(v4, v5))
    {
      v7 = 1;
    }

    else
    {
      v7 = __IMDPersistenceCheckLesserEntitlements(v4, a2, v6);
    }
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v4);
  return v7;
}

uint64_t sub_1B7AD9040(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __IMDPersistenceIPCServer_command_dispatcher(uint64_t a1, _xpc_connection_s *a2, void *a3, int a4, uint64_t a5, uint64_t a6)
{
  v1255 = *MEMORY[0x1E69E9840];
  v12 = _os_activity_create(&dword_1B7AD5000, "com.apple.messages.IMDPCommandDispatcher", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v12, &state);
  pid = xpc_connection_get_pid(a2);
  v14 = IMOSLoggingEnabled();
  if (v14)
  {
    v17 = OSLogHandleForIMFoundationCategory();
    v14 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    if (v14)
    {
      *buf = 134218496;
      v1250 = a1;
      v1251 = 1024;
      v1252 = pid;
      v1253 = 1024;
      v1254 = a4;
      _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "Handling message %ld from (%d) wantsReply %{BOOL}d", buf, 0x18u);
    }
  }

  v18 = -1;
  switch(a1)
  {
    case 0:
      if (a4)
      {
        v19 = a5;
      }

      else
      {
        v19 = 0;
      }

      if (a4)
      {
        v20 = a6;
      }

      else
      {
        v20 = 0;
      }

      __XPCServerIMDMessageStoreSave_IPCAction(v14, v15, v19, v20);
      v18 = 0;
      break;
    case 1:
      if (a4)
      {
        v802 = a5;
      }

      else
      {
        v802 = 0;
      }

      if (a4)
      {
        v803 = a6;
      }

      else
      {
        v803 = 0;
      }

      __XPCServerIMDMessageStoreIsFull_IPCAction(v14, v15, v802, v803);
      v18 = 1;
      break;
    case 2:
      if (a4)
      {
        v165 = a5;
      }

      else
      {
        v165 = 0;
      }

      if (a4)
      {
        v166 = a6;
      }

      else
      {
        v166 = 0;
      }

      __XPCServerIMDMessageStoreSchemaVersion_IPCAction(v14, v15, v165, v166);
      v18 = 2;
      break;
    case 3:
      if (a4)
      {
        v922 = a5;
      }

      else
      {
        v922 = 0;
      }

      if (a4)
      {
        v923 = a6;
      }

      else
      {
        v923 = 0;
      }

      __XPCServerIMDMessageStoreSchema_IPCAction(v14, v15, v922, v923);
      v18 = 3;
      break;
    case 4:
      v1238 = IMGetXPCStringFromDictionary();
      int64 = xpc_dictionary_get_int64(a3, "createdDate");
      v1219 = xpc_dictionary_get_int64(a3, "startDate");
      v1212 = IMGetXPCStringFromDictionary();
      v1206 = IMGetXPCStringFromDictionary();
      v1200 = IMGetXPCStringFromDictionary();
      v1194 = IMGetXPCStringFromDictionary();
      v1188 = xpc_dictionary_get_int64(a3, "transferState");
      v1182 = xpc_dictionary_get_BOOL(a3, "isOutgoing");
      v1176 = IMGetXPCDictionaryFromDictionary();
      v1170 = IMGetXPCIntFromDictionary();
      v1164 = xpc_dictionary_get_BOOL(a3, "isSticker");
      v1158 = IMGetXPCDictionaryFromDictionary();
      v1152 = IMGetXPCDictionaryFromDictionary();
      v1146 = xpc_dictionary_get_BOOL(a3, "hideAttachment");
      v1140 = xpc_dictionary_get_int64(a3, "cloudKitSyncState");
      v1134 = IMGetXPCDataFromDictionary();
      v1128 = IMGetXPCStringFromDictionary();
      v1122 = IMGetXPCStringFromDictionary();
      v222 = xpc_dictionary_get_int64(a3, "isCommSafetySensitive");
      v223 = IMGetXPCStringFromDictionary();
      v224 = IMGetXPCStringFromDictionary();
      v225 = xpc_dictionary_get_int64(a3, "previewGenerationState");
      if (a4)
      {
        v227 = a5;
      }

      else
      {
        v227 = 0;
      }

      if (a4)
      {
        v228 = a6;
      }

      else
      {
        v228 = 0;
      }

      *&v1027 = v1134;
      *(&v1027 + 1) = v1128;
      *(&v1010 + 1) = v1200;
      *&v1010 = v1206;
      __XPCServerIMDAttachmentRecordCreate_IPCAction(v225, v226, v227, v228, v1238, int64, v1219, v1212, v1010, v1194, v1188, v1182, v1170, v1176, v1164, v1158, v1152, v1146, v1140, v1027, v1122, v222, v223, v224, v225);
      v18 = 4;
      break;
    case 5:
      v906 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v908 = a5;
      }

      else
      {
        v908 = 0;
      }

      if (a4)
      {
        v909 = a6;
      }

      else
      {
        v909 = 0;
      }

      __XPCServerIMDAttachmentRecordRIDForGUID_IPCAction(v906, v907, v908, v909, v906);
      v18 = 5;
      break;
    case 6:
      v257 = IMGetXPCStringFromDictionary();
      v258 = xpc_dictionary_get_BOOL(a3, "isLegacyGUID");
      if (a4)
      {
        v260 = a5;
      }

      else
      {
        v260 = 0;
      }

      if (a4)
      {
        v261 = a6;
      }

      else
      {
        v261 = 0;
      }

      __XPCServerIMDAttachmentRecordCopyAttachmentForGUID_IPCAction(v258, v259, v260, v261, v257, v258);
      v18 = 6;
      break;
    case 7:
      v21 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v23 = a5;
      }

      else
      {
        v23 = 0;
      }

      if (a4)
      {
        v24 = a6;
      }

      else
      {
        v24 = 0;
      }

      __XPCServerIMDAttachmentRecordCopyStickerAttachmentForStickerCachePath_IPCAction(v21, v22, v23, v24, v21);
      v18 = 7;
      break;
    case 8:
      v467 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v469 = a5;
      }

      else
      {
        v469 = 0;
      }

      if (a4)
      {
        v470 = a6;
      }

      else
      {
        v470 = 0;
      }

      __XPCServerIMDAttachmentRecordDeleteAttachmentForGUID_IPCAction(v467, v468, v469, v470, v467);
      v18 = 8;
      break;
    case 9:
      v741 = xpc_dictionary_get_int64(a3, "days");
      if (a4)
      {
        v743 = a5;
      }

      else
      {
        v743 = 0;
      }

      if (a4)
      {
        v744 = a6;
      }

      else
      {
        v744 = 0;
      }

      __XPCServerIMDAttachmentRecordDeleteAttachmentsOlderThanDays_IPCAction(v741, v742, v743, v744, v741);
      v18 = 9;
      break;
    case 10:
      v95 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v97 = a5;
      }

      else
      {
        v97 = 0;
      }

      if (a4)
      {
        v98 = a6;
      }

      else
      {
        v98 = 0;
      }

      __XPCServerIMDAttachmentRecordDoesAttachmentWithGUIDExist_IPCAction(v95, v96, v97, v98, v95);
      v18 = 10;
      break;
    case 11:
      v370 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v372 = a5;
      }

      else
      {
        v372 = 0;
      }

      if (a4)
      {
        v373 = a6;
      }

      else
      {
        v373 = 0;
      }

      __XPCServerIMDAttachmentRecordDoesStickerPathHaveAttachments_IPCAction(v370, v371, v372, v373, v370);
      v18 = 11;
      break;
    case 12:
      v296 = xpc_dictionary_get_int64(a3, "numRecents");
      if (a4)
      {
        v298 = a5;
      }

      else
      {
        v298 = 0;
      }

      if (a4)
      {
        v299 = a6;
      }

      else
      {
        v299 = 0;
      }

      __XPCServerIMDAttachmentRecordCopyRecentFilenames_IPCAction(v296, v297, v298, v299, v296);
      v18 = 12;
      break;
    case 13:
      if (IMOSLoggingEnabled())
      {
        v120 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v120, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v120, OS_LOG_TYPE_INFO, "IMDAttachmentRecordCopyAttachmentsForQueryWithLimit_IPCAction", buf, 2u);
        }
      }

      v121 = xpc_dictionary_get_int64(a3, "queryType");
      if (xpc_dictionary_get_value(a3, "afterRow"))
      {
        v122 = xpc_dictionary_get_int64(a3, "afterRow");
        v124 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v123, v122);
      }

      else
      {
        v124 = 0;
      }

      v1001 = xpc_dictionary_get_int64(a3, "limit");
      if (a4)
      {
        v1003 = a5;
      }

      else
      {
        v1003 = 0;
      }

      if (a4)
      {
        v1004 = a6;
      }

      else
      {
        v1004 = 0;
      }

      __XPCServerIMDAttachmentRecordCopyAttachmentsForQueryWithLimit_IPCAction(v1001, v1002, v1003, v1004, v121, v124, v1001);
      v18 = 13;
      break;
    case 14:
      if (IMOSLoggingEnabled())
      {
        v216 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v216, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v216, OS_LOG_TYPE_INFO, "IMDAttachmentRecordMarkAttachmentWithROWIDWithSyncState_IPCAction", buf, 2u);
        }
      }

      v217 = xpc_dictionary_get_int64(a3, "rowid");
      v218 = xpc_dictionary_get_int64(a3, "syncState");
      if (a4)
      {
        v220 = a5;
      }

      else
      {
        v220 = 0;
      }

      if (a4)
      {
        v221 = a6;
      }

      else
      {
        v221 = 0;
      }

      __XPCServerIMDAttachmentRecordMarkAttachmentWithROWIDWithSyncState_IPCAction(v218, v219, v220, v221, v217, v218);
      v18 = 14;
      break;
    case 15:
      if (IMOSLoggingEnabled())
      {
        v46 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v46, OS_LOG_TYPE_INFO, "IMDAttachmentRecordMarkAttachmentWithROWIDAsSyncedWithCloudKit_IPCAction", buf, 2u);
        }
      }

      v47 = xpc_dictionary_get_int64(a3, "rowid");
      if (a4)
      {
        v49 = a5;
      }

      else
      {
        v49 = 0;
      }

      if (a4)
      {
        v50 = a6;
      }

      else
      {
        v50 = 0;
      }

      __XPCServerIMDAttachmentRecordMarkAttachmentWithROWIDAsSyncedWithCloudKit_IPCAction(v47, v48, v49, v50, v47);
      v18 = 15;
      break;
    case 16:
      v988 = IMOSLoggingEnabled();
      if (v988)
      {
        v990 = OSLogHandleForIMFoundationCategory();
        v988 = os_log_type_enabled(v990, OS_LOG_TYPE_INFO);
        if (v988)
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v990, OS_LOG_TYPE_INFO, "IMDAttachmentRecordMarkAllAttachmentsAsNeedingCloudKitSync_IPCAction", buf, 2u);
        }
      }

      if (a4)
      {
        v991 = a5;
      }

      else
      {
        v991 = 0;
      }

      if (a4)
      {
        v992 = a6;
      }

      else
      {
        v992 = 0;
      }

      __XPCServerIMDAttachmentRecordMarkAllAttachmentsAsNeedingCloudKitSync_IPCAction(v988, v989, v991, v992);
      v18 = 16;
      break;
    case 17:
      v613 = IMOSLoggingEnabled();
      if (v613)
      {
        v615 = OSLogHandleForIMFoundationCategory();
        v613 = os_log_type_enabled(v615, OS_LOG_TYPE_INFO);
        if (v613)
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v615, OS_LOG_TYPE_INFO, "IMDAttachmentResetAllAttachmentsInFailedCloudDownloadState_IPCAction", buf, 2u);
        }
      }

      if (a4)
      {
        v616 = a5;
      }

      else
      {
        v616 = 0;
      }

      if (a4)
      {
        v617 = a6;
      }

      else
      {
        v617 = 0;
      }

      __XPCServerIMDAttachmentResetAllAttachmentsInFailedCloudDownloadState_IPCAction(v613, v614, v616, v617);
      v18 = 17;
      break;
    case 18:
      if (IMOSLoggingEnabled())
      {
        v687 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v687, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v687, OS_LOG_TYPE_INFO, "IMDAttachmentRecordCopyMessageForAttachmentGUID_IPCAction", buf, 2u);
        }
      }

      v688 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v690 = a5;
      }

      else
      {
        v690 = 0;
      }

      if (a4)
      {
        v691 = a6;
      }

      else
      {
        v691 = 0;
      }

      __XPCServerIMDAttachmentRecordCopyMessageForAttachmentGUID_IPCAction(v688, v689, v690, v691, v688);
      v18 = 18;
      break;
    case 19:
      if (IMOSLoggingEnabled())
      {
        v956 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v956, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v956, OS_LOG_TYPE_INFO, "IMDAttachmentRecordUpdateAttachmentGUIDWithGUID_IPCAction", buf, 2u);
        }
      }

      v957 = IMGetXPCStringFromDictionary();
      v958 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v960 = a5;
      }

      else
      {
        v960 = 0;
      }

      if (a4)
      {
        v961 = a6;
      }

      else
      {
        v961 = 0;
      }

      __XPCServerIMDAttachmentRecordUpdateAttachmentGUIDWithGUID_IPCAction(v958, v959, v960, v961, v957, v958);
      v18 = 19;
      break;
    case 20:
      v148 = IMOSLoggingEnabled();
      if (v148)
      {
        v150 = OSLogHandleForIMFoundationCategory();
        v148 = os_log_type_enabled(v150, OS_LOG_TYPE_INFO);
        if (v148)
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v150, OS_LOG_TYPE_INFO, "IMDAttachmentRecordGetPurgeableDiskSpace_IPCAction", buf, 2u);
        }
      }

      if (a4)
      {
        v151 = a5;
      }

      else
      {
        v151 = 0;
      }

      if (a4)
      {
        v152 = a6;
      }

      else
      {
        v152 = 0;
      }

      __XPCServerIMDAttachmentRecordGetPurgeableDiskSpace_IPCAction(v148, v149, v151, v152);
      v18 = 20;
      break;
    case 21:
      v983 = IMOSLoggingEnabled();
      if (v983)
      {
        v985 = OSLogHandleForIMFoundationCategory();
        v983 = os_log_type_enabled(v985, OS_LOG_TYPE_INFO);
        if (v983)
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v985, OS_LOG_TYPE_INFO, "IMDAttachmentRecordGetNonSyncedAttachmentDiskSpace_IPCAction", buf, 2u);
        }
      }

      if (a4)
      {
        v986 = a5;
      }

      else
      {
        v986 = 0;
      }

      if (a4)
      {
        v987 = a6;
      }

      else
      {
        v987 = 0;
      }

      __XPCServerIMDAttachmentRecordGetNonSyncedAttachmentDiskSpace_IPCAction(v983, v984, v986, v987);
      v18 = 21;
      break;
    case 22:
      if (IMOSLoggingEnabled())
      {
        v973 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v973, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v973, OS_LOG_TYPE_INFO, "IMDAttachmentRecordCopyAttachmentsToMetricForDiskSpace_IPCAction", buf, 2u);
        }
      }

      v974 = xpc_dictionary_get_int64(a3, "bytesToFreeUp");
      if (a4)
      {
        v976 = a5;
      }

      else
      {
        v976 = 0;
      }

      if (a4)
      {
        v977 = a6;
      }

      else
      {
        v977 = 0;
      }

      __XPCServerIMDAttachmentRecordCopyAttachmentsToMetricForDiskSpace_IPCAction(v974, v975, v976, v977, v974);
      v18 = 22;
      break;
    case 23:
      if (IMOSLoggingEnabled())
      {
        v414 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v414, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v414, OS_LOG_TYPE_INFO, "IMDAttachmentRecordCopyMostRecentAttachmentsInMostRecentChats_IPCAction", buf, 2u);
        }
      }

      v415 = xpc_dictionary_get_int64(a3, "chatLimit");
      v416 = xpc_dictionary_get_int64(a3, "attachmentLimit");
      if (a4)
      {
        v418 = a5;
      }

      else
      {
        v418 = 0;
      }

      if (a4)
      {
        v419 = a6;
      }

      else
      {
        v419 = 0;
      }

      __XPCServerIMDAttachmentRecordCopyMostRecentAttachmentsInMostRecentChats_IPCAction(v416, v417, v418, v419, v415, v416);
      v18 = 23;
      break;
    case 24:
      if (IMOSLoggingEnabled())
      {
        v35 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v35, OS_LOG_TYPE_INFO, "IMDAttachmentUpdateAttachmentFileSizeWithRowIDGreaterThanWatermark_IPCAction", buf, 2u);
        }
      }

      v36 = xpc_dictionary_get_int64(a3, "watermark");
      if (a4)
      {
        v38 = a5;
      }

      else
      {
        v38 = 0;
      }

      if (a4)
      {
        v39 = a6;
      }

      else
      {
        v39 = 0;
      }

      __XPCServerIMDAttachmentUpdateAttachmentFileSizeWithRowIDGreaterThanWatermark_IPCAction(v36, v37, v38, v39, v36);
      v18 = 24;
      break;
    case 25:
      if (IMOSLoggingEnabled())
      {
        v55 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v55, OS_LOG_TYPE_INFO, "IMDAttachmentRecordCopyAttachmentsToPurgeForDiskSpace_IPCAction", buf, 2u);
        }
      }

      v56 = xpc_dictionary_get_int64(a3, "bytesToFreeUp");
      v57 = xpc_dictionary_get_int64(a3, "startingOffset");
      if (a4)
      {
        v59 = a5;
      }

      else
      {
        v59 = 0;
      }

      if (a4)
      {
        v60 = a6;
      }

      else
      {
        v60 = 0;
      }

      __XPCServerIMDAttachmentRecordCopyAttachmentsToPurgeForDiskSpace_IPCAction(v57, v58, v59, v60, v56, v57);
      v18 = 25;
      break;
    case 26:
      v132 = xpc_dictionary_get_int64(a3, "numRecents");
      if (a4)
      {
        v134 = a5;
      }

      else
      {
        v134 = 0;
      }

      if (a4)
      {
        v135 = a6;
      }

      else
      {
        v135 = 0;
      }

      __XPCServerIMDAttachmentRecordDeleteAttachmentPreviewsOlderThan_IPCAction(v132, v133, v134, v135, v132);
      v18 = 26;
      break;
    case 27:
      v167 = IMGetXPCArrayFromDictionary();
      v168 = IMGetXPCArrayFromDictionary();
      if (a4)
      {
        v170 = a5;
      }

      else
      {
        v170 = 0;
      }

      if (a4)
      {
        v171 = a6;
      }

      else
      {
        v171 = 0;
      }

      __XPCServerIMDAttachmentRecordCopyAttachmentGUIDsAndPathsForChatIdentifiersOnServices_IPCAction(v168, v169, v170, v171, v167, v168);
      v18 = 27;
      break;
    case 28:
      v40 = IMGetXPCArrayFromDictionary();
      v41 = IMGetXPCArrayFromDictionary();
      v42 = IMGetXPCIntFromDictionary();
      if (a4)
      {
        v44 = a5;
      }

      else
      {
        v44 = 0;
      }

      if (a4)
      {
        v45 = a6;
      }

      else
      {
        v45 = 0;
      }

      __XPCServerIMDAttachmentRecordCopyPurgedAttachmentsForChatIdentifiersOnServices_IPCAction(v42, v43, v44, v45, v40, v41, v42);
      v18 = 28;
      break;
    case 29:
      v736 = IMGetXPCArrayFromDictionary();
      v737 = IMGetXPCArrayFromDictionary();
      if (a4)
      {
        v739 = a5;
      }

      else
      {
        v739 = 0;
      }

      if (a4)
      {
        v740 = a6;
      }

      else
      {
        v740 = 0;
      }

      __XPCServerIMDAttachmentRecordCopyPurgedAttachmentsCountForChatIdentifiersOnServices_IPCAction(v737, v738, v739, v740, v736, v737);
      v18 = 29;
      break;
    case 30:
      v31 = xpc_dictionary_get_int64(a3, "numRecents");
      if (a4)
      {
        v33 = a5;
      }

      else
      {
        v33 = 0;
      }

      if (a4)
      {
        v34 = a6;
      }

      else
      {
        v34 = 0;
      }

      __XPCServerIMDAttachmentRecordCopyStickers_IPCAction(v31, v32, v33, v34, v31);
      v18 = 30;
      break;
    case 31:
      v1246 = IMGetXPCStringFromDictionary();
      v1233 = xpc_dictionary_get_int64(a3, "createdDate");
      v1223 = xpc_dictionary_get_int64(a3, "startDate");
      v1215 = IMGetXPCStringFromDictionary();
      v1209 = IMGetXPCStringFromDictionary();
      v1203 = IMGetXPCStringFromDictionary();
      v1197 = IMGetXPCStringFromDictionary();
      v1191 = xpc_dictionary_get_int64(a3, "transferState");
      v1185 = xpc_dictionary_get_BOOL(a3, "isOutgoing");
      v1179 = IMGetXPCDictionaryFromDictionary();
      v1173 = IMGetXPCIntFromDictionary();
      v1167 = xpc_dictionary_get_BOOL(a3, "isSticker");
      v1161 = IMGetXPCDictionaryFromDictionary();
      v1155 = IMGetXPCDictionaryFromDictionary();
      v1149 = xpc_dictionary_get_BOOL(a3, "hideAttachment");
      v1143 = xpc_dictionary_get_int64(a3, "cloudKitSyncState");
      v1137 = IMGetXPCDataFromDictionary();
      v1131 = IMGetXPCStringFromDictionary();
      v1125 = IMGetXPCStringFromDictionary();
      v878 = xpc_dictionary_get_int64(a3, "isCommSafetySensitive");
      v879 = IMGetXPCStringFromDictionary();
      v880 = IMGetXPCStringFromDictionary();
      v881 = xpc_dictionary_get_int64(a3, "previewGenerationState");
      if (a4)
      {
        v883 = a5;
      }

      else
      {
        v883 = 0;
      }

      if (a4)
      {
        v884 = a6;
      }

      else
      {
        v884 = 0;
      }

      *&v1028 = v1137;
      *(&v1028 + 1) = v1131;
      *(&v1013 + 1) = v1203;
      *&v1013 = v1209;
      __XPCServerIMDAttachmentRecordBulkUpdate_IPCAction(v881, v882, v883, v884, v1246, v1233, v1223, v1215, v1013, v1197, v1191, v1185, v1173, v1179, v1167, v1161, v1155, v1149, v1143, v1028, v1125, v878, v879, v880, v881);
      v18 = 31;
      break;
    case 32:
      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_INFO, "In server for IMDAttachmentRecordDeleteAttachmentsDirectWithPredicate_IPCAction", buf, 2u);
        }
      }

      v28 = objc_msgSend_sharedServer(IMDDatabaseServer, v25, v26);
      if (a4)
      {
        v30 = a5;
      }

      else
      {
        v30 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleDeleteAttachmentsDirectWithPredicate_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v28, v29, a2, a3, v30, a6);
      }

      else
      {
        objc_msgSend_handleDeleteAttachmentsDirectWithPredicate_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v28, v29, a2, a3, v30, 0);
      }

      v18 = 32;
      break;
    case 33:
      if (IMOSLoggingEnabled())
      {
        v758 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v758, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v758, OS_LOG_TYPE_INFO, "In server for IMDAttachmentRecordCopyAttachmentsDirectWithPredicate_IPCAction", buf, 2u);
        }
      }

      v759 = objc_msgSend_sharedServer(IMDDatabaseServer, v756, v757);
      if (a4)
      {
        v761 = a5;
      }

      else
      {
        v761 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDAttachmentRecordCopyFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v759, v760, a2, a3, v761, a6);
      }

      else
      {
        objc_msgSend_handleIMDAttachmentRecordCopyFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v759, v760, a2, a3, v761, 0);
      }

      v18 = 33;
      break;
    case 34:
      if (IMOSLoggingEnabled())
      {
        v78 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v78, OS_LOG_TYPE_INFO, "In server for IMDAttachmentRecordCopySortedAttachmentsFilteredUsingPredicateWithLimit_IPCAction", buf, 2u);
        }
      }

      v79 = objc_msgSend_sharedServer(IMDDatabaseServer, v76, v77);
      if (a4)
      {
        v81 = a5;
      }

      else
      {
        v81 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDAttachmentRecordCopySortedAttachmentsFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v79, v80, a2, a3, v81, a6);
      }

      else
      {
        objc_msgSend_handleIMDAttachmentRecordCopySortedAttachmentsFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v79, v80, a2, a3, v81, 0);
      }

      v18 = 34;
      break;
    case 35:
      v702 = IMGetXPCArrayFromDictionary();
      if (a4)
      {
        v704 = a5;
      }

      else
      {
        v704 = 0;
      }

      if (a4)
      {
        v705 = a6;
      }

      else
      {
        v705 = 0;
      }

      __XPCServerIMDCNRecordIDAndHistoryTokenForAliases_IPAction(v702, v703, v704, v705, v702);
      v18 = 35;
      break;
    case 36:
      v978 = IMGetXPCDictionaryFromDictionary();
      v979 = IMGetXPCDataFromDictionary();
      if (a4)
      {
        v981 = a5;
      }

      else
      {
        v981 = 0;
      }

      if (a4)
      {
        v982 = a6;
      }

      else
      {
        v982 = 0;
      }

      __XPCServerIMDCNRecordIDAndHistoryTokenForAliases_asyncIPAction(v979, v980, v981, v982, v978, v979);
      v18 = 36;
      break;
    case 37:
      v345 = IMGetXPCArrayFromDictionary();
      if (a4)
      {
        v347 = a5;
      }

      else
      {
        v347 = 0;
      }

      if (a4)
      {
        v348 = a6;
      }

      else
      {
        v348 = 0;
      }

      __XPCServerIMDCNRecordIDForAliases_IPAction(v345, v346, v347, v348, v345);
      v18 = 37;
      break;
    case 38:
      v403 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v405 = a5;
      }

      else
      {
        v405 = 0;
      }

      if (a4)
      {
        v406 = a6;
      }

      else
      {
        v406 = 0;
      }

      __XPCServerIMDIsFavoritedContact_IPCAction(v403, v404, v405, v406, v403);
      v18 = 38;
      break;
    case 39:
      v1244 = IMGetXPCStringFromDictionary();
      v749 = IMGetXPCStringFromDictionary();
      v750 = IMGetXPCStringFromDictionary();
      v751 = IMGetXPCStringFromDictionary();
      v752 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v754 = a5;
      }

      else
      {
        v754 = 0;
      }

      if (a4)
      {
        v755 = a6;
      }

      else
      {
        v755 = 0;
      }

      __XPCServerIMDHandleRecordCreate_IPCAction(v752, v753, v754, v755, v1244, v749, v750, v751, v752);
      v18 = 39;
      break;
    case 40:
      v1241 = xpc_dictionary_get_int64(a3, "handleID");
      v1230 = IMGetXPCStringFromDictionary();
      v603 = IMGetXPCStringFromDictionary();
      v604 = IMGetXPCStringFromDictionary();
      v605 = IMGetXPCStringFromDictionary();
      v606 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v608 = a5;
      }

      else
      {
        v608 = 0;
      }

      if (a4)
      {
        v609 = a6;
      }

      else
      {
        v609 = 0;
      }

      __XPCServerIMDHandleRecordBulkUpdate_IPCAction(v606, v607, v608, v609, v1241, v1230, v603, v604, v605, v606);
      v18 = 40;
      break;
    case 41:
      v99 = IMGetXPCStringFromDictionary();
      v100 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v102 = a5;
      }

      else
      {
        v102 = 0;
      }

      if (a4)
      {
        v103 = a6;
      }

      else
      {
        v103 = 0;
      }

      __XPCServerIMDHandleRecordCopyHandleForIDOnService_IPCAction(v100, v101, v102, v103, v99, v100);
      v18 = 41;
      break;
    case 42:
      v885 = IMGetXPCStringFromDictionary();
      v886 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v888 = a5;
      }

      else
      {
        v888 = 0;
      }

      if (a4)
      {
        v889 = a6;
      }

      else
      {
        v889 = 0;
      }

      __XPCServerIMDMessageRecordUnassociateMessageWithGUIDFromAttachmentWithGUID_IPCAction(v886, v887, v888, v889, v885, v886);
      v18 = 42;
      break;
    case 43:
      v200 = IMGetXPCStringFromDictionary();
      v201 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v203 = a5;
      }

      else
      {
        v203 = 0;
      }

      if (a4)
      {
        v204 = a6;
      }

      else
      {
        v204 = 0;
      }

      __XPCServerIMDMessageRecordAssociateMessageWithGUIDToAttachmentWithGUID_IPCAction(v201, v202, v203, v204, v200, v201);
      v18 = 43;
      break;
    case 44:
      v640 = IMGetXPCArrayFromDictionary();
      if (a4)
      {
        v642 = a5;
      }

      else
      {
        v642 = 0;
      }

      if (a4)
      {
        v643 = a6;
      }

      else
      {
        v643 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessagesForGUIDs_IPCAction(v640, v641, v642, v643, v640);
      v18 = 44;
      break;
    case 45:
      v51 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v53 = a5;
      }

      else
      {
        v53 = 0;
      }

      if (a4)
      {
        v54 = a6;
      }

      else
      {
        v54 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessagesForAssociatedGUID_IPCAction(v51, v52, v53, v54, v51);
      v18 = 45;
      break;
    case 46:
      v860 = xpc_dictionary_get_int64(a3, "lowerRowID");
      v861 = xpc_dictionary_get_int64(a3, "maxRowID");
      if (a4)
      {
        v863 = a5;
      }

      else
      {
        v863 = 0;
      }

      if (a4)
      {
        v864 = a6;
      }

      else
      {
        v864 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessagesBetweenRowIDs_IPCAction(v861, v862, v863, v864, v860, v861);
      v18 = 46;
      break;
    case 47:
      v798 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v800 = a5;
      }

      else
      {
        v800 = 0;
      }

      if (a4)
      {
        v801 = a6;
      }

      else
      {
        v801 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessageForGUID_IPCAction(v798, v799, v800, v801, v798);
      v18 = 47;
      break;
    case 48:
      v87 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v89 = a5;
      }

      else
      {
        v89 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordCopyLastMessageForChatWithRowID_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v87, v88, a2, a3, v89, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordCopyLastMessageForChatWithRowID_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v87, v88, a2, a3, v89, 0);
      }

      goto LABEL_145;
    case 49:
      if (a4)
      {
        v904 = a5;
      }

      else
      {
        v904 = 0;
      }

      if (a4)
      {
        v905 = a6;
      }

      else
      {
        v905 = 0;
      }

      __XPCServerIMDMessageRecordCopyLastReceivedMessage_IPCAction(v14, v15, v904, v905);
      v18 = 49;
      break;
    case 50:
      v176 = xpc_dictionary_get_int64(a3, "limit");
      if (a4)
      {
        v178 = a5;
      }

      else
      {
        v178 = 0;
      }

      if (a4)
      {
        v179 = a6;
      }

      else
      {
        v179 = 0;
      }

      __XPCServerIMDMessageRecordCopyLastReceivedMessageLimit_IPCAction(v176, v177, v178, v179, v176);
      v18 = 50;
      break;
    case 51:
      v838 = xpc_dictionary_get_int64(a3, "rowID");
      if (a4)
      {
        v840 = a5;
      }

      else
      {
        v840 = 0;
      }

      if (a4)
      {
        v841 = a6;
      }

      else
      {
        v841 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessageForRowID_IPCAction(v838, v839, v840, v841, v838);
      v18 = 51;
      break;
    case 52:
      v104 = IMGetXPCArrayFromDictionary();
      if (a4)
      {
        v106 = a5;
      }

      else
      {
        v106 = 0;
      }

      if (a4)
      {
        v107 = a6;
      }

      else
      {
        v107 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessagesForRowIDs_IPCAction(v104, v105, v106, v107, v104);
      v18 = 52;
      break;
    case 53:
      v232 = IMGetXPCArrayFromDictionary();
      if (a4)
      {
        v234 = a5;
      }

      else
      {
        v234 = 0;
      }

      if (a4)
      {
        v235 = a6;
      }

      else
      {
        v235 = 0;
      }

      __XPCServerIMDMessageRecordDeleteMessagesForGUIDs_IPCAction(v232, v233, v234, v235, v232);
      v18 = 53;
      break;
    case 54:
      v929 = xpc_dictionary_get_int64(a3, "days");
      if (a4)
      {
        v931 = a5;
      }

      else
      {
        v931 = 0;
      }

      if (a4)
      {
        v932 = a6;
      }

      else
      {
        v932 = 0;
      }

      __XPCServerIMDMessageRecordDeleteMessagesOlderThanDays_IPCAction(v929, v930, v931, v932, v929);
      v18 = 54;
      break;
    case 55:
      v854 = IMGetXPCStringFromDictionary();
      v855 = IMGetXPCStringFromDictionary();
      v856 = xpc_dictionary_get_int64(a3, "limit");
      if (a4)
      {
        v858 = a5;
      }

      else
      {
        v858 = 0;
      }

      if (a4)
      {
        v859 = a6;
      }

      else
      {
        v859 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessagesWithRoomnameOnServiceLimit_IPCAction(v856, v857, v858, v859, v854, v855, v856);
      v18 = 55;
      break;
    case 56:
      v1236 = IMGetXPCArrayFromDictionary();
      v1225 = IMGetXPCArrayFromDictionary();
      v1217 = xpc_dictionary_get_int64(a3, "limit");
      v141 = IMGetXPCStringFromDictionary();
      v142 = IMGetXPCStringFromDictionary();
      v143 = xpc_dictionary_get_BOOL(a3, "only_messages");
      v144 = xpc_dictionary_get_BOOL(a3, "only_unread");
      if (a4)
      {
        v146 = a5;
      }

      else
      {
        v146 = 0;
      }

      if (a4)
      {
        v147 = a6;
      }

      else
      {
        v147 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesWithOptionalThreadIdentifierAndLimit_IPCAction(v144, v145, v146, v147, v1236, v1225, v141, v142, v1217, v143, v144);
      v18 = 56;
      break;
    case 57:
      v1247 = IMGetXPCArrayFromDictionary();
      v1234 = IMGetXPCArrayFromDictionary();
      v966 = xpc_dictionary_get_int64(a3, "numberOfMessagesBefore");
      v967 = xpc_dictionary_get_int64(a3, "numberOfMessagesAfter");
      v968 = IMGetXPCStringFromDictionary();
      v969 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v971 = a5;
      }

      else
      {
        v971 = 0;
      }

      if (a4)
      {
        v972 = a6;
      }

      else
      {
        v972 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesBeforeAndAfterGUIDWithOptionalThreadIdentifier_IPCAction(v969, v970, v971, v972, v1247, v1234, v968, v969, v966, v967);
      v18 = 57;
      break;
    case 58:
      v833 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v835 = a5;
      }

      else
      {
        v835 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordCopyMessageWithGUIDExcludingRecoverableMessages_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v833, v834, a2, a3, v835, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordCopyMessageWithGUIDExcludingRecoverableMessages_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v833, v834, a2, a3, v835, 0);
      }

      v18 = 58;
      break;
    case 59:
      v681 = IMGetXPCArrayFromDictionary();
      v682 = IMGetXPCArrayFromDictionary();
      v683 = xpc_dictionary_get_int64(a3, "limit");
      if (a4)
      {
        v685 = a5;
      }

      else
      {
        v685 = 0;
      }

      if (a4)
      {
        v686 = a6;
      }

      else
      {
        v686 = 0;
      }

      __XPCServerIMDMessageRecordCopyFrequentRepliesForChatIdentifiersOnServicesLimit_IPCAction(v683, v684, v685, v686, v681, v682, v683);
      v18 = 59;
      break;
    case 60:
      v61 = IMGetXPCArrayFromDictionary();
      v62 = IMGetXPCArrayFromDictionary();
      if (a4)
      {
        v64 = a5;
      }

      else
      {
        v64 = 0;
      }

      if (a4)
      {
        v65 = a6;
      }

      else
      {
        v65 = 0;
      }

      __XPCServerIMDMessageRecordCopyGUIDsForMessagesWithChatIdentifiersOnServices_IPCAction(v62, v63, v64, v65, v61, v62);
      v18 = 60;
      break;
    case 61:
      v942 = IMGetXPCArrayFromDictionary();
      v943 = IMGetXPCArrayFromDictionary();
      v944 = IMGetXPCArrayFromDictionary();
      if (a4)
      {
        v946 = a5;
      }

      else
      {
        v946 = 0;
      }

      if (a4)
      {
        v947 = a6;
      }

      else
      {
        v947 = 0;
      }

      __XPCServerIMDMessageRecordDeleteMessagesWithGUIDsChatIdentifiersOnServices_IPCAction(v944, v945, v946, v947, v942, v943, v944);
      v18 = 61;
      break;
    case 62:
      v72 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v74 = a5;
      }

      else
      {
        v74 = 0;
      }

      if (a4)
      {
        v75 = a6;
      }

      else
      {
        v75 = 0;
      }

      __XPCServerIMDChatGetChatsThatContainRecipient_IPCAction(v72, v73, v74, v75, v72);
      v18 = 62;
      break;
    case 63:
      v66 = IMGetXPCStringFromDictionary();
      v67 = IMGetXPCStringFromDictionary();
      v68 = xpc_dictionary_get_int64(a3, "limit");
      if (a4)
      {
        v70 = a5;
      }

      else
      {
        v70 = 0;
      }

      if (a4)
      {
        v71 = a6;
      }

      else
      {
        v71 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessagesWithHandleOnServiceLimit_IPCAction(v68, v69, v70, v71, v66, v67, v68);
      v18 = 63;
      break;
    case 64:
      v1240 = IMGetXPCStringFromDictionary();
      v1229 = IMGetXPCStringFromDictionary();
      v1221 = IMGetXPCArrayFromDictionary();
      v534 = IMGetXPCArrayFromDictionary();
      v535 = xpc_dictionary_get_double(a3, "searchAfter");
      v536 = IMGetXPCArrayFromDictionary();
      v537 = IMGetXPCArrayFromDictionary();
      v538 = xpc_dictionary_get_BOOL(a3, "includeFromMe");
      if (a4)
      {
        v540 = a5;
      }

      else
      {
        v540 = 0;
      }

      if (a4)
      {
        v541 = a6;
      }

      else
      {
        v541 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessageMatchingBodyStringWithChatIdentifiersServicesSkippingGUIDs_IPCAction(v535, v538, v539, v540, v541, v1240, v1229, v1221, v534, v538, v536, v537);
      v18 = 64;
      break;
    case 65:
      v1242 = IMGetXPCStringFromDictionary();
      v649 = IMGetXPCStringFromDictionary();
      v650 = IMGetXPCArrayFromDictionary();
      v651 = IMGetXPCArrayFromDictionary();
      v654 = xpc_dictionary_get_double(a3, "searchAfter");
      if (a4)
      {
        v655 = a5;
      }

      else
      {
        v655 = 0;
      }

      if (a4)
      {
        v656 = a6;
      }

      else
      {
        v656 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessageMatchingBodyStringWithHandleSkippingServicesSkippingGUIDs_IPCAction(v654, v652, v653, v655, v656, v1242, v649, v650, v651);
      v18 = 65;
      break;
    case 66:
      v1243 = IMGetXPCStringFromDictionary();
      v1231 = IMGetXPCStringFromDictionary();
      v717 = IMGetXPCStringFromDictionary();
      v718 = xpc_dictionary_get_BOOL(a3, "matchingIsSOS");
      v719 = IMGetXPCStringFromDictionary();
      v722 = xpc_dictionary_get_double(a3, "searchAfter");
      if (a4)
      {
        v723 = a5;
      }

      else
      {
        v723 = 0;
      }

      if (a4)
      {
        v724 = a6;
      }

      else
      {
        v724 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessageMatchingBodyStringWithHandleMatchingServiceMatchingSOSSkippingGUID_IPCAction(v722, v720, v721, v723, v724, v1243, v1231, v717, v718, v719);
      v18 = 66;
      break;
    case 67:
      v332 = IMGetXPCStringFromDictionary();
      v333 = IMGetXPCStringFromDictionary();
      v334 = xpc_dictionary_get_int64(a3, "replaceID");
      if (a4)
      {
        v336 = a5;
      }

      else
      {
        v336 = 0;
      }

      if (a4)
      {
        v337 = a6;
      }

      else
      {
        v337 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessageWithHandleOnServiceWithReplaceID_IPCAction(v334, v335, v336, v337, v332, v333, v334);
      v18 = 67;
      break;
    case 68:
      v125 = xpc_dictionary_get_int64(a3, "limit");
      v126 = IMGetXPCArrayFromDictionary();
      v127 = IMGetXPCArrayFromDictionary();
      v128 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v130 = a5;
      }

      else
      {
        v130 = 0;
      }

      if (a4)
      {
        v131 = a6;
      }

      else
      {
        v131 = 0;
      }

      __XPCServerIMDMessageRecordCopyUnreadIncomingMessagesWithChatIdentifiersOnServicesToLimitFallbackGUID_IPCAction(v128, v129, v130, v131, v126, v127, v125, v128);
      v18 = 68;
      break;
    case 69:
      v546 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v548 = a5;
      }

      else
      {
        v548 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordCopyScheduledMessagesForChatGUIDToLimit_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v546, v547, a2, a3, v548, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordCopyScheduledMessagesForChatGUIDToLimit_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v546, v547, a2, a3, v548, 0);
      }

      v18 = 69;
      break;
    case 70:
      v279 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v281 = a5;
      }

      else
      {
        v281 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordCopyScheduledMessagesToDeleteFromCloudKitToLimit_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v279, v280, a2, a3, v281, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordCopyScheduledMessagesToDeleteFromCloudKitToLimit_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v279, v280, a2, a3, v281, 0);
      }

      v18 = 70;
      break;
    case 71:
      v84 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v86 = a5;
      }

      else
      {
        v86 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordAddScheduledMessageGUIDandCKRecordToDeleteFromCloudKit_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v84, v85, a2, a3, v86, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordAddScheduledMessageGUIDandCKRecordToDeleteFromCloudKit_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v84, v85, a2, a3, v86, 0);
      }

      v18 = 71;
      break;
    case 72:
      v458 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v460 = a5;
      }

      else
      {
        v460 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageDeleteTombstonedScheduledMessagesWithRecordIDs_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v458, v459, a2, a3, v460, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageDeleteTombstonedScheduledMessagesWithRecordIDs_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v458, v459, a2, a3, v460, 0);
      }

      v18 = 72;
      break;
    case 73:
      v938 = xpc_dictionary_get_int64(a3, "afterRowID");
      if (a4)
      {
        v940 = a5;
      }

      else
      {
        v940 = 0;
      }

      if (a4)
      {
        v941 = a6;
      }

      else
      {
        v941 = 0;
      }

      __XPCServerIMDMessageRecordCopyUndeliveredOneToOneiMessages_IPCAction(v938, v939, v940, v941, v938);
      v18 = 73;
      break;
    case 74:
      v952 = xpc_dictionary_get_int64(a3, "afterRowID");
      if (a4)
      {
        v954 = a5;
      }

      else
      {
        v954 = 0;
      }

      if (a4)
      {
        v955 = a6;
      }

      else
      {
        v955 = 0;
      }

      __XPCServerIMDMessageRecordCopyExpiringOrExpiredMessages_IPCAction(v952, v953, v954, v955, v952);
      v18 = 74;
      break;
    case 75:
      v914 = xpc_dictionary_get_int64(a3, "afterRowID");
      if (a4)
      {
        v916 = a5;
      }

      else
      {
        v916 = 0;
      }

      if (a4)
      {
        v917 = a6;
      }

      else
      {
        v917 = 0;
      }

      __XPCServerIMDMessageRecordCopyUnsentUnfailedMessages_IPCAction(v914, v915, v916, v917, v914);
      v18 = 75;
      break;
    case 76:
      v180 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v182 = a5;
      }

      else
      {
        v182 = 0;
      }

      if (a4)
      {
        v183 = a6;
      }

      else
      {
        v183 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessageActionItemsForOriginalMessageGUID_IPCAction(v180, v181, v182, v183, v180);
      v18 = 76;
      break;
    case 77:
      v243 = IMGetXPCArrayFromDictionary();
      v244 = IMGetXPCArrayFromDictionary();
      if (a4)
      {
        v246 = a5;
      }

      else
      {
        v246 = 0;
      }

      if (a4)
      {
        v247 = a6;
      }

      else
      {
        v247 = 0;
      }

      __XPCServerIMDChatGetMessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles_IPCAction(v244, v245, v246, v247, v243, v244);
      v18 = 77;
      break;
    case 78:
      v873 = IMGetXPCArrayFromDictionary();
      v874 = IMGetXPCArrayFromDictionary();
      if (a4)
      {
        v876 = a5;
      }

      else
      {
        v876 = 0;
      }

      if (a4)
      {
        v877 = a6;
      }

      else
      {
        v877 = 0;
      }

      __XPCServerIMDChatGetMessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs_IPCAction(v874, v875, v876, v877, v873, v874);
      v18 = 78;
      break;
    case 79:
      v848 = IMGetXPCStringFromDictionary();
      v849 = IMGetXPCStringFromDictionary();
      v850 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v852 = a5;
      }

      else
      {
        v852 = 0;
      }

      if (a4)
      {
        v853 = a6;
      }

      else
      {
        v853 = 0;
      }

      __XPCServerIMDChatRemapChatsWithLastAddressedSIMIDToNewLastAddressedIDs_IPCAction(v850, v851, v852, v853, v848, v849, v850);
      v18 = 79;
      break;
    case 80:
      if (a4)
      {
        v82 = a5;
      }

      else
      {
        v82 = 0;
      }

      if (a4)
      {
        v83 = a6;
      }

      else
      {
        v83 = 0;
      }

      __XPCServerIMDMessageRecordCountAllUnreadMessages_IPCAction(v14, v15, v82, v83);
      v18 = 80;
      break;
    case 81:
      v962 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v964 = a5;
      }

      else
      {
        v964 = 0;
      }

      if (a4)
      {
        v965 = a6;
      }

      else
      {
        v965 = 0;
      }

      __XPCServerIMDMessageRecordCountAllUnreadMessagesForChatGUID_IPCAction(v962, v963, v964, v965, v962);
      v18 = 81;
      break;
    case 82:
      v434 = xpc_dictionary_get_int64(a3, "chatID");
      if (a4)
      {
        v436 = a5;
      }

      else
      {
        v436 = 0;
      }

      if (a4)
      {
        v437 = a6;
      }

      else
      {
        v437 = 0;
      }

      __XPCServerIMDMessageRecordCountAllUnreadMessagesForChatRowID_IPCAction(v434, v435, v436, v437, v434);
      v18 = 82;
      break;
    case 83:
      v92 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v94 = a5;
      }

      else
      {
        v94 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordCopyAllUnreadMessages_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v92, v93, a2, a3, v94, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordCopyAllUnreadMessages_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v92, v93, a2, a3, v94, 0);
      }

LABEL_145:
      v18 = 48;
      break;
    case 84:
      if (a4)
      {
        v910 = a5;
      }

      else
      {
        v910 = 0;
      }

      if (a4)
      {
        v911 = a6;
      }

      else
      {
        v911 = 0;
      }

      __XPCServerIMDMessageRecordLastFailedMessageRowID_IPCAction(v14, v15, v910, v911);
      v18 = 84;
      break;
    case 85:
      if (a4)
      {
        v762 = a5;
      }

      else
      {
        v762 = 0;
      }

      if (a4)
      {
        v763 = a6;
      }

      else
      {
        v763 = 0;
      }

      __XPCServerIMDMessageRecordLastSyncedMessageRowID_IPCAction(v14, v15, v762, v763);
      v18 = 85;
      break;
    case 86:
      if (a4)
      {
        v912 = a5;
      }

      else
      {
        v912 = 0;
      }

      if (a4)
      {
        v913 = a6;
      }

      else
      {
        v913 = 0;
      }

      __XPCServerIMDMessageRecordLastFailedMessageDate_IPCAction(v14, v15, v912, v913);
      v18 = 86;
      break;
    case 87:
      if (a4)
      {
        v819 = a5;
      }

      else
      {
        v819 = 0;
      }

      if (a4)
      {
        v820 = a6;
      }

      else
      {
        v820 = 0;
      }

      __XPCServerIMDMessageRecordGetMostRecentMessageDate_IPCAction(v14, v15, v819, v820);
      v18 = 87;
      break;
    case 88:
      v948 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v950 = a5;
      }

      else
      {
        v950 = 0;
      }

      if (a4)
      {
        v951 = a6;
      }

      else
      {
        v951 = 0;
      }

      __XPCServerIMDMessageRecordGetIndentifierForMessageWithGUID_IPCAction(v948, v949, v950, v951, v948);
      v18 = 88;
      break;
    case 89:
      if (a4)
      {
        v210 = a5;
      }

      else
      {
        v210 = 0;
      }

      if (a4)
      {
        v211 = a6;
      }

      else
      {
        v211 = 0;
      }

      __XPCServerIMDMessageRecordMaxMessageIDFromChatMessageJoin_IPCAction(v14, v15, v210, v211);
      v18 = 89;
      break;
    case 90:
      if (a4)
      {
        v90 = a5;
      }

      else
      {
        v90 = 0;
      }

      if (a4)
      {
        v91 = a6;
      }

      else
      {
        v91 = 0;
      }

      __XPCServerIMDMessageRecordGetMessagesSequenceNumber_IPCAction(v14, v15, v90, v91);
      v18 = 90;
      break;
    case 91:
      v303 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v305 = a5;
      }

      else
      {
        v305 = 0;
      }

      if (a4)
      {
        v306 = a6;
      }

      else
      {
        v306 = 0;
      }

      __XPCServerIMDMessageRecordMarkMessageGUIDAsDeduplicated_IPCAction(v303, v304, v305, v306, v303);
      v18 = 91;
      break;
    case 92:
      if (a4)
      {
        v174 = a5;
      }

      else
      {
        v174 = 0;
      }

      if (a4)
      {
        v175 = a6;
      }

      else
      {
        v175 = 0;
      }

      __XPCServerIMDMessageRecordMarkFailedAllUnsentUnfailedMessages_IPCAction(v14, v15, v174, v175);
      v18 = 92;
      break;
    case 93:
      if (a4)
      {
        v338 = a5;
      }

      else
      {
        v338 = 0;
      }

      if (a4)
      {
        v339 = a6;
      }

      else
      {
        v339 = 0;
      }

      __XPCServerIMDMessageRecordDeleteOrphanedMessages_IPCAction(v14, v15, v338, v339);
      v18 = 93;
      break;
    case 94:
      v769 = IMGetXPCStringFromDictionary();
      v770 = IMGetXPCArrayFromDictionary();
      v771 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
      v772 = xpc_dictionary_get_BOOL(a3, "fromMe");
      if (a4)
      {
        v774 = a5;
      }

      else
      {
        v774 = 0;
      }

      if (a4)
      {
        v775 = a6;
      }

      else
      {
        v775 = 0;
      }

      __XPCServerIMDMessageRecordCopyAndMarkAsReadMessagesPriorToGuidMatchingChatGUIDs_IPCAction(v772, v773, v774, v775, v769, v770, v771, v772);
      v18 = 94;
      break;
    case 95:
      v530 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v532 = a5;
      }

      else
      {
        v532 = 0;
      }

      if (a4)
      {
        v533 = a6;
      }

      else
      {
        v533 = 0;
      }

      __XPCServerIMDMessageRecordCopyAllUnplayedMessageGUIDsForChatGUID_IPCAction(v530, v531, v532, v533, v530);
      v18 = 95;
      break;
    case 96:
      v725 = xpc_dictionary_get_int64(a3, "limit");
      v726 = xpc_dictionary_get_int64(a3, "rowID");
      if (a4)
      {
        v728 = a5;
      }

      else
      {
        v728 = 0;
      }

      if (a4)
      {
        v729 = a6;
      }

      else
      {
        v729 = 0;
      }

      __XPCServerIMDMessageRecordCopyNewestUnreadIncomingMessagesToLimitAfterRowID_IPCAction(v726, v727, v728, v729, v725, v726);
      v18 = 96;
      break;
    case 97:
      v354 = xpc_dictionary_get_int64(a3, "limit");
      v355 = xpc_dictionary_get_int64(a3, "date");
      if (a4)
      {
        v357 = a5;
      }

      else
      {
        v357 = 0;
      }

      if (a4)
      {
        v358 = a6;
      }

      else
      {
        v358 = 0;
      }

      __XPCServerIMDMessageRecordCopyNewestFailedOutgoingMessagesToLimitAfterDate_IPCAction(v355, v356, v357, v358, v354, v355);
      v18 = 97;
      break;
    case 98:
      v395 = xpc_dictionary_get_int64(a3, "limit");
      v396 = xpc_dictionary_get_int64(a3, "rowID");
      if (a4)
      {
        v398 = a5;
      }

      else
      {
        v398 = 0;
      }

      if (a4)
      {
        v399 = a6;
      }

      else
      {
        v399 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessagesDataDetectionResults_IPCAction(v396, v397, v398, v399, v395, v396);
      v18 = 98;
      break;
    case 99:
      v268 = IMGetXPCArrayFromDictionary();
      if (a4)
      {
        v270 = a5;
      }

      else
      {
        v270 = 0;
      }

      if (a4)
      {
        v271 = a6;
      }

      else
      {
        v271 = 0;
      }

      __XPCServerIMDMessageRecordCopyMostRecentUseageOfAddresses_IPCAction(v268, v269, v270, v271, v268);
      v18 = 99;
      break;
    case 100:
      v1245 = IMGetXPCStringFromDictionary();
      v1232 = xpc_dictionary_get_int64(a3, "date");
      v1222 = xpc_dictionary_get_int64(a3, "dateRead");
      v1214 = xpc_dictionary_get_int64(a3, "dateDelivered");
      v1208 = xpc_dictionary_get_int64(a3, "datePlayed");
      v1202 = xpc_dictionary_get_int64(a3, "error");
      v1196 = xpc_dictionary_get_int64(a3, "type");
      v1190 = xpc_dictionary_get_int64(a3, "replaceID");
      v1184 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
      v1178 = IMGetXPCStringFromDictionary();
      v1172 = IMGetXPCDataFromDictionary();
      v1166 = IMGetXPCStringFromDictionary();
      v1160 = IMGetXPCStringFromDictionary();
      v1154 = IMGetXPCStringFromDictionary();
      v1148 = IMGetXPCStringFromDictionary();
      v1142 = IMGetXPCStringFromDictionary();
      v1136 = IMGetXPCStringFromDictionary();
      v1130 = IMGetXPCStringFromDictionary();
      v1124 = IMGetXPCStringFromDictionary();
      v1119 = xpc_dictionary_get_int64(a3, "groupActionType");
      v1115 = xpc_dictionary_get_int64(a3, "itemType");
      v1111 = IMGetXPCStringFromDictionary();
      v1107 = xpc_dictionary_get_int64(a3, "shareStatus");
      v1103 = xpc_dictionary_get_int64(a3, "shareDirection");
      v1100 = xpc_dictionary_get_int64(a3, "expireState");
      v1098 = xpc_dictionary_get_int64(a3, "messageActionType");
      v1096 = IMGetXPCStringFromDictionary();
      v1094 = xpc_dictionary_get_int64(a3, "associatedMessageType");
      v1092 = xpc_dictionary_get_int64(a3, "associatedMessageRangeLocation");
      v1090 = xpc_dictionary_get_int64(a3, "associatedMessageRangeLength");
      v1088 = IMGetXPCStringFromDictionary();
      v1086 = IMGetXPCDataFromDictionary();
      v1084 = IMGetXPCStringFromDictionary();
      v1082 = xpc_dictionary_get_int64(a3, "timeExpressiveSendPlayed");
      v1080 = IMGetXPCDataFromDictionary();
      v1078 = xpc_dictionary_get_int64(a3, "cloudKitSyncState");
      v1076 = IMGetXPCStringFromDictionary();
      v1074 = IMGetXPCDataFromDictionary();
      v1072 = IMGetXPCStringFromDictionary();
      v1070 = IMGetXPCDictionaryFromDictionary();
      v1068 = IMGetXPCStringFromDictionary();
      v1066 = IMGetXPCStringFromDictionary();
      v1064 = xpc_dictionary_get_int64(a3, "sortID");
      v1062 = IMGetXPCStringFromDictionary();
      v1060 = IMGetXPCStringFromDictionary();
      v1058 = IMGetXPCStringFromDictionary();
      v1056 = IMGetXPCStringFromDictionary();
      v1054 = xpc_dictionary_get_int64(a3, "partCount");
      v1052 = xpc_dictionary_get_int64(a3, "dateEdited");
      v1050 = xpc_dictionary_get_int64(a3, "dateRecovered");
      v1049 = IMGetXPCStringFromDictionary();
      v1048 = IMGetXPCStringFromDictionary();
      v804 = IMGetXPCStringFromDictionary();
      v805 = xpc_dictionary_get_int64(a3, "scheduleType");
      v806 = xpc_dictionary_get_int64(a3, "scheduleState");
      v807 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v809 = a5;
      }

      else
      {
        v809 = 0;
      }

      if (a4)
      {
        v810 = a6;
      }

      else
      {
        v810 = 0;
      }

      *&v1047 = v1049;
      *(&v1047 + 1) = v1048;
      *(&v1046 + 1) = v1052;
      *&v1046 = v1054;
      *(&v1043 + 1) = v1060;
      *&v1043 = v1062;
      *&v1041 = v1076;
      *(&v1041 + 1) = v1074;
      *&v1032 = v1119;
      *(&v1032 + 1) = v1107;
      *(&v1026 + 1) = v1148;
      *(&v1023 + 1) = v1160;
      *&v1026 = v1154;
      *&v1023 = v1166;
      *(&v1012 + 1) = v1202;
      *&v1012 = v1208;
      __XPCServerIMDMessageRecordCreate_IPCAction(v807, v808, v809, v810, v1245, v1232, v1222, v1214, v1012, v1196, v1190, v1184, v1178, v1172, v1023, v1026, v1142, v1136, v1130, v1115, v1111, v1032, v1103, v1124, v1100, v1098, v1096, v1094, v1092, v1090, v1088, v1086, v1084, v1082, v1080, v1078, v1041, v1072, v1070, v1068, v1066, v1064, v1043, v1058, v1056, v1046, v1050, v1047, v804, v805, v806, v807);
      v18 = 100;
      break;
    case 101:
      v307 = xpc_dictionary_get_int64(a3, "messageID");
      if (a4)
      {
        v309 = a5;
      }

      else
      {
        v309 = 0;
      }

      if (a4)
      {
        v310 = a6;
      }

      else
      {
        v310 = 0;
      }

      __XPCServerIMDMessageRecordCopyChats_IPCAction(v307, v308, v309, v310, v307);
      v18 = 101;
      break;
    case 102:
      v212 = xpc_dictionary_get_int64(a3, "messageID");
      if (a4)
      {
        v214 = a5;
      }

      else
      {
        v214 = 0;
      }

      if (a4)
      {
        v215 = a6;
      }

      else
      {
        v215 = 0;
      }

      __XPCServerIMDMessageRecordCopyAttachments_IPCAction(v212, v213, v214, v215, v212);
      v18 = 102;
      break;
    case 103:
      v764 = xpc_dictionary_get_int64(a3, "messageID");
      v765 = xpc_dictionary_get_int64(a3, "handleID");
      if (a4)
      {
        v767 = a5;
      }

      else
      {
        v767 = 0;
      }

      if (a4)
      {
        v768 = a6;
      }

      else
      {
        v768 = 0;
      }

      __XPCServerIMDMessageRecordSetHandle_IPCAction(v765, v766, v767, v768, v764, v765);
      v18 = 103;
      break;
    case 104:
      v918 = xpc_dictionary_get_int64(a3, "messageID");
      if (a4)
      {
        v920 = a5;
      }

      else
      {
        v920 = 0;
      }

      if (a4)
      {
        v921 = a6;
      }

      else
      {
        v921 = 0;
      }

      __XPCServerIMDMessageRecordCopyHandle_IPCAction(v918, v919, v920, v921, v918);
      v18 = 104;
      break;
    case 105:
      v894 = xpc_dictionary_get_int64(a3, "messageID");
      if (a4)
      {
        v896 = a5;
      }

      else
      {
        v896 = 0;
      }

      if (a4)
      {
        v897 = a6;
      }

      else
      {
        v897 = 0;
      }

      __XPCServerIMDMessageRecordCopyOtherHandle_IPCAction(v894, v895, v896, v897, v894);
      v18 = 105;
      break;
    case 106:
      v1239 = xpc_dictionary_get_int64(a3, "messageID");
      v1228 = xpc_dictionary_get_int64(a3, "replaceID");
      v1220 = IMGetXPCStringFromDictionary();
      v1213 = xpc_dictionary_get_int64(a3, "fzDate");
      v1207 = xpc_dictionary_get_int64(a3, "fzDateRead");
      v1201 = xpc_dictionary_get_int64(a3, "fzDateDelivered");
      v1195 = xpc_dictionary_get_int64(a3, "fzDatePlayed");
      v1189 = IMGetXPCStringFromDictionary();
      v1183 = IMGetXPCDataFromDictionary();
      v1177 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
      v1171 = IMGetXPCStringFromDictionary();
      v1165 = IMGetXPCStringFromDictionary();
      v1159 = IMGetXPCStringFromDictionary();
      v1153 = xpc_dictionary_get_int64(a3, "handleID");
      v1147 = IMGetXPCStringFromDictionary();
      v1141 = xpc_dictionary_get_int64(a3, "fzError");
      v1135 = xpc_dictionary_get_int64(a3, "fzType");
      v1129 = IMGetXPCStringFromDictionary();
      v1123 = xpc_dictionary_get_int64(a3, "groupActionType");
      v1118 = xpc_dictionary_get_int64(a3, "otherHandleID");
      v1114 = xpc_dictionary_get_int64(a3, "shareStatus");
      v1110 = xpc_dictionary_get_int64(a3, "shareDirection");
      v1106 = xpc_dictionary_get_int64(a3, "expireState");
      v1102 = xpc_dictionary_get_int64(a3, "messageActionType");
      v1099 = IMGetXPCStringFromDictionary();
      v1097 = xpc_dictionary_get_int64(a3, "associatedMessageType");
      v1095 = IMGetXPCStringFromDictionary();
      v1093 = xpc_dictionary_get_int64(a3, "timePlayedExpressiveSend");
      v1091 = xpc_dictionary_get_int64(a3, "associatedMessageRangeLocation");
      v1089 = xpc_dictionary_get_int64(a3, "associatedMessageRangeLength");
      v1087 = IMGetXPCStringFromDictionary();
      v1085 = IMGetXPCDataFromDictionary();
      v1083 = IMGetXPCDataFromDictionary();
      v1081 = xpc_dictionary_get_int64(a3, "cloudKitSyncState");
      v1079 = IMGetXPCStringFromDictionary();
      v1077 = IMGetXPCDataFromDictionary();
      v1075 = IMGetXPCStringFromDictionary();
      v1073 = IMGetXPCStringFromDictionary();
      v1071 = IMGetXPCStringFromDictionary();
      v1069 = xpc_dictionary_get_int64(a3, "sortID");
      v1067 = IMGetXPCStringFromDictionary();
      v1065 = IMGetXPCStringFromDictionary();
      v1063 = IMGetXPCStringFromDictionary();
      v1061 = IMGetXPCStringFromDictionary();
      v1059 = xpc_dictionary_get_int64(a3, "partCount");
      v1057 = xpc_dictionary_get_int64(a3, "dateEdited");
      v1055 = xpc_dictionary_get_int64(a3, "dateRecovered");
      v1053 = IMGetXPCStringFromDictionary();
      v1051 = IMGetXPCStringFromDictionary();
      v489 = IMGetXPCStringFromDictionary();
      v490 = xpc_dictionary_get_int64(a3, "scheduleType");
      v491 = xpc_dictionary_get_int64(a3, "scheduleState");
      v492 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v494 = a5;
      }

      else
      {
        v494 = 0;
      }

      if (a4)
      {
        v495 = a6;
      }

      else
      {
        v495 = 0;
      }

      *&v1045 = v1053;
      *(&v1045 + 1) = v1051;
      *(&v1044 + 1) = v1057;
      *&v1044 = v1059;
      *(&v1042 + 1) = v1065;
      *&v1042 = v1067;
      *(&v1040 + 1) = v1073;
      *(&v1039 + 1) = v1077;
      *&v1040 = v1075;
      *&v1039 = v1079;
      *(&v1038 + 1) = v1085;
      *&v1038 = v1087;
      *&v1037 = v1097;
      *(&v1037 + 1) = v1091;
      *(&v1031 + 1) = v1114;
      *&v1031 = v1123;
      *&v1030 = v1141;
      *(&v1030 + 1) = v1135;
      *(&v1022 + 1) = v1159;
      *&v1022 = v1165;
      *(&v1019 + 1) = v1171;
      *&v1019 = v1177;
      *(&v1016 + 1) = v1183;
      *&v1016 = v1189;
      *(&v1011 + 1) = v1201;
      *&v1011 = v1207;
      __XPCServerIMDMessageRecordBulkUpdate_IPCAction(v492, v493, v494, v495, v1239, v1228, v1220, v1213, v1011, v1195, v1016, v1019, v1022, v1153, v1147, v1030, v1118, v1031, v1110, v1129, v1106, v1102, v1099, v1037, v1089, v1038, v1095, v1093, v1083, v1081, v1039, v1040, v1071, v1069, v1042, v1063, v1061, v1044, v1055, v1045, v489, v490, v491, v492);
      v18 = 106;
      break;
    case 107:
      v484 = IMGetXPCStringFromDictionary();
      v485 = xpc_dictionary_get_int64(a3, "task_flags");
      if (a4)
      {
        v487 = a5;
      }

      else
      {
        v487 = 0;
      }

      if (a4)
      {
        v488 = a6;
      }

      else
      {
        v488 = 0;
      }

      __XPCServerIMDMessagePTaskInsertRow_IPCAction(v485, v486, v487, v488, v484, v485);
      v18 = 107;
      break;
    case 108:
      v890 = xpc_dictionary_get_int64(a3, "limit");
      if (a4)
      {
        v892 = a5;
      }

      else
      {
        v892 = 0;
      }

      if (a4)
      {
        v893 = a6;
      }

      else
      {
        v893 = 0;
      }

      __XPCServerIMDMessagePTaskSelectWithLimit_IPCAction(v890, v891, v892, v893, v890);
      v18 = 108;
      break;
    case 109:
      v933 = IMGetXPCStringFromDictionary();
      v934 = xpc_dictionary_get_int64(a3, "task_flags");
      if (a4)
      {
        v936 = a5;
      }

      else
      {
        v936 = 0;
      }

      if (a4)
      {
        v937 = a6;
      }

      else
      {
        v937 = 0;
      }

      __XPCServerIMDMessagePTaskUpdateTaskFlagsForGUID_IPCAction(v934, v935, v936, v937, v933, v934);
      v18 = 109;
      break;
    case 110:
      if (a4)
      {
        v172 = a5;
      }

      else
      {
        v172 = 0;
      }

      if (a4)
      {
        v173 = a6;
      }

      else
      {
        v173 = 0;
      }

      __XPCServerIMDMessagePTaskDeleteAllCompletedTask_IPCAction(v14, v15, v172, v173);
      v18 = 110;
      break;
    case 111:
      v1235 = xpc_dictionary_get_int64(a3, "style");
      v1224 = xpc_dictionary_get_int64(a3, "state");
      v1216 = IMGetXPCStringFromDictionary();
      v1210 = IMGetXPCDataFromDictionary();
      v1204 = IMGetXPCStringFromDictionary();
      v1198 = IMGetXPCStringFromDictionary();
      v1192 = IMGetXPCStringFromDictionary();
      v1186 = IMGetXPCStringFromDictionary();
      v1180 = IMGetXPCStringFromDictionary();
      v1174 = IMGetXPCStringFromDictionary();
      v1168 = IMGetXPCStringFromDictionary();
      v1162 = IMGetXPCStringFromDictionary();
      v1156 = xpc_dictionary_get_int64(a3, "isArchived");
      v1150 = xpc_dictionary_get_int64(a3, "isFiltered");
      v1144 = xpc_dictionary_get_int64(a3, "isBlackholed");
      v1138 = xpc_dictionary_get_int64(a3, "hasHadSuccessfulQuery");
      v1132 = IMGetXPCStringFromDictionary();
      v1126 = IMGetXPCStringFromDictionary();
      v1120 = xpc_dictionary_get_int64(a3, "ckSyncState");
      v1116 = IMGetXPCStringFromDictionary();
      v1112 = xpc_dictionary_get_int64(a3, "lastReadMessageTimeStamp");
      v1108 = IMGetXPCStringFromDictionary();
      v1104 = IMGetXPCStringFromDictionary();
      v113 = xpc_dictionary_get_int64(a3, "syndicationType");
      v114 = xpc_dictionary_get_int64(a3, "syndicationDate");
      v115 = xpc_dictionary_get_int64(a3, "isRecovered");
      v116 = xpc_dictionary_get_int64(a3, "isDeletingIncomingMessages");
      if (a4)
      {
        v118 = a5;
      }

      else
      {
        v118 = 0;
      }

      if (a4)
      {
        v119 = a6;
      }

      else
      {
        v119 = 0;
      }

      *(&v1035 + 1) = v115;
      *(&v1033 + 1) = v113;
      *&v1035 = v114;
      *&v1033 = v1144;
      *&v1029 = v1132;
      *(&v1029 + 1) = v1126;
      *(&v1024 + 1) = v1150;
      *&v1024 = v1156;
      *(&v1020 + 1) = v1162;
      *&v1020 = v1168;
      *(&v1017 + 1) = v1174;
      *&v1017 = v1180;
      *(&v1014 + 1) = v1186;
      *&v1014 = v1192;
      *(&v1008 + 1) = v1198;
      *&v1008 = v1204;
      __XPCServerIMDChatRecordCreate_IPCAction(v116, v117, v118, v119, v1235, v1224, v1216, v1210, v1008, v1014, v1017, v1020, v1024, v1138, v1029, v1120, v1116, v1112, v1108, v1104, v1033, v1035, v116);
      v18 = 111;
      break;
    case 112:
      v236 = xpc_dictionary_get_int64(a3, "chatRowID");
      if (a4)
      {
        v238 = a5;
      }

      else
      {
        v238 = 0;
      }

      if (a4)
      {
        v239 = a6;
      }

      else
      {
        v239 = 0;
      }

      __XPCServerIMDChatRecordCopyHandles_IPCAction(v236, v237, v238, v239, v236);
      v18 = 112;
      break;
    case 113:
      v108 = xpc_dictionary_get_int64(a3, "chatRowID");
      v109 = xpc_dictionary_get_int64(a3, "limit");
      if (a4)
      {
        v111 = a5;
      }

      else
      {
        v111 = 0;
      }

      if (a4)
      {
        v112 = a6;
      }

      else
      {
        v112 = 0;
      }

      __XPCServerIMDChatRecordCopyMessagesWithLimit_IPCAction(v109, v110, v111, v112, v108, v109);
      v18 = 113;
      break;
    case 114:
      v644 = xpc_dictionary_get_int64(a3, "chatRowID");
      v645 = xpc_dictionary_get_int64(a3, "isArchived");
      if (a4)
      {
        v647 = a5;
      }

      else
      {
        v647 = 0;
      }

      if (a4)
      {
        v648 = a6;
      }

      else
      {
        v648 = 0;
      }

      __XPCServerIMDChatRecordSetIsArchived_IPCAction(v645, v646, v647, v648, v644, v645);
      v18 = 114;
      break;
    case 115:
      v924 = xpc_dictionary_get_int64(a3, "chatRowID");
      v925 = xpc_dictionary_get_int64(a3, "handleID");
      if (a4)
      {
        v927 = a5;
      }

      else
      {
        v927 = 0;
      }

      if (a4)
      {
        v928 = a6;
      }

      else
      {
        v928 = 0;
      }

      __XPCServerIMDChatRecordAddHandle_IPCAction(v925, v926, v927, v928, v924, v925);
      v18 = 115;
      break;
    case 116:
      v349 = xpc_dictionary_get_int64(a3, "chatRowID");
      v350 = xpc_dictionary_get_int64(a3, "handleID");
      if (a4)
      {
        v352 = a5;
      }

      else
      {
        v352 = 0;
      }

      if (a4)
      {
        v353 = a6;
      }

      else
      {
        v353 = 0;
      }

      __XPCServerIMDChatRecordRemoveHandle_IPCAction(v350, v351, v352, v353, v349, v350);
      v18 = 116;
      break;
    case 117:
      v1237 = xpc_dictionary_get_int64(a3, "identifier");
      v1226 = xpc_dictionary_get_int64(a3, "style");
      v1218 = xpc_dictionary_get_int64(a3, "state");
      v1211 = IMGetXPCStringFromDictionary();
      v1205 = IMGetXPCDataFromDictionary();
      v1199 = IMGetXPCStringFromDictionary();
      v1193 = IMGetXPCStringFromDictionary();
      v1187 = IMGetXPCStringFromDictionary();
      v1181 = IMGetXPCStringFromDictionary();
      v1175 = IMGetXPCStringFromDictionary();
      v1169 = IMGetXPCStringFromDictionary();
      v1163 = IMGetXPCStringFromDictionary();
      v1157 = IMGetXPCStringFromDictionary();
      v1151 = xpc_dictionary_get_int64(a3, "isArchived");
      v1145 = xpc_dictionary_get_int64(a3, "isFiltered");
      v1139 = xpc_dictionary_get_int64(a3, "isBlackholed");
      v1133 = xpc_dictionary_get_int64(a3, "hasHadSuccessfulQuery");
      v1127 = IMGetXPCStringFromDictionary();
      v1121 = IMGetXPCStringFromDictionary();
      v1117 = xpc_dictionary_get_int64(a3, "ckSyncState");
      v1113 = IMGetXPCStringFromDictionary();
      v1109 = xpc_dictionary_get_int64(a3, "lastReadMessageTimeStamp");
      v1105 = IMGetXPCStringFromDictionary();
      v1101 = IMGetXPCStringFromDictionary();
      v158 = xpc_dictionary_get_int64(a3, "syndicationType");
      v159 = xpc_dictionary_get_int64(a3, "syndicationDate");
      v160 = xpc_dictionary_get_int64(a3, "isRecovered");
      v161 = xpc_dictionary_get_int64(a3, "isDeletingIncomingMessages");
      if (a4)
      {
        v163 = a5;
      }

      else
      {
        v163 = 0;
      }

      if (a4)
      {
        v164 = a6;
      }

      else
      {
        v164 = 0;
      }

      *(&v1036 + 1) = v160;
      *(&v1034 + 1) = v158;
      *&v1036 = v159;
      *&v1034 = v1139;
      *(&v1025 + 1) = v1145;
      *&v1025 = v1151;
      *(&v1021 + 1) = v1163;
      *&v1021 = v1169;
      *(&v1018 + 1) = v1175;
      *&v1018 = v1181;
      *(&v1015 + 1) = v1187;
      *&v1015 = v1193;
      *(&v1009 + 1) = v1199;
      *&v1009 = v1205;
      __XPCServerIMDChatRecordBulkUpdate_IPCAction(v161, v162, v163, v164, v1237, v1226, v1218, v1211, v1009, v1015, v1018, v1021, v1157, v1025, v1133, v1127, v1121, v1117, v1113, v1109, v1105, v1101, v1034, v1036, v161);
      v18 = 117;
      break;
    case 118:
      if (a4)
      {
        v594 = a5;
      }

      else
      {
        v594 = 0;
      }

      if (a4)
      {
        v595 = a6;
      }

      else
      {
        v595 = 0;
      }

      __XPCServerIMDChatRecordCopyAllChats_IPCAction(v14, v15, v594, v595);
      v18 = 118;
      break;
    case 119:
      v542 = xpc_dictionary_get_int64(a3, "limit");
      if (a4)
      {
        v544 = a5;
      }

      else
      {
        v544 = 0;
      }

      if (a4)
      {
        v545 = a6;
      }

      else
      {
        v545 = 0;
      }

      __XPCServerIMDChatRecordCopyAllActiveChatsWithLimit_IPCAction(v542, v543, v544, v545, v542);
      v18 = 119;
      break;
    case 120:
      v205 = xpc_dictionary_get_int64(a3, "request");
      v206 = xpc_dictionary_get_int64(a3, "limit");
      if (a4)
      {
        v208 = a5;
      }

      else
      {
        v208 = 0;
      }

      if (a4)
      {
        v209 = a6;
      }

      else
      {
        v209 = 0;
      }

      __XPCServerIMDChatRecordCopyAllActiveChatsProgressivelyWithLimit_IPCAction(v206, v207, v208, v209, v205, v206);
      v18 = 120;
      break;
    case 121:
      v286 = xpc_dictionary_get_int64(a3, "knownSenderLimit");
      v287 = xpc_dictionary_get_int64(a3, "otherFilterLimit");
      if (a4)
      {
        v289 = a5;
      }

      else
      {
        v289 = 0;
      }

      if (a4)
      {
        v290 = a6;
      }

      else
      {
        v290 = 0;
      }

      __XPCServerIMDChatRecordCopyAllUnreadChatsAndRecentChatsWithLimit_IPCAction(v287, v288, v289, v290, v286, v287);
      v18 = 121;
      break;
    case 122:
      v136 = IMGetXPCStringFromDictionary();
      v137 = IMGetXPCBoolFromDictionary();
      if (a4)
      {
        v139 = a5;
      }

      else
      {
        v139 = 0;
      }

      if (a4)
      {
        v140 = a6;
      }

      else
      {
        v140 = 0;
      }

      __XPCServerIMDChatRecordCopyChatForGUID_IPCAction(v137, v138, v139, v140, v136, v137);
      v18 = 122;
      break;
    case 123:
      v596 = xpc_dictionary_get_int64(a3, "messageID");
      if (a4)
      {
        v598 = a5;
      }

      else
      {
        v598 = 0;
      }

      if (a4)
      {
        v599 = a6;
      }

      else
      {
        v599 = 0;
      }

      __XPCServerIMDChatRecordCopyChatForMessageID_IPCAction(v596, v597, v598, v599, v596);
      v18 = 123;
      break;
    case 124:
      v779 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v781 = a5;
      }

      else
      {
        v781 = 0;
      }

      if (a4)
      {
        v782 = a6;
      }

      else
      {
        v782 = 0;
      }

      __XPCServerIMDChatRecordCopyChatForMessageGUID_IPCAction(v779, v780, v781, v782, v779);
      v18 = 124;
      break;
    case 125:
      v323 = IMGetXPCStringFromDictionary();
      v324 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v326 = a5;
      }

      else
      {
        v326 = 0;
      }

      if (a4)
      {
        v327 = a6;
      }

      else
      {
        v327 = 0;
      }

      __XPCServerIMDChatRecordCopyChatsWithHandleOnService_IPCAction(v324, v325, v326, v327, v323, v324);
      v18 = 125;
      break;
    case 126:
      v577 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v579 = a5;
      }

      else
      {
        v579 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDChatRecordCopyChatsWithHandlesOnServiceWithDisplayNameGroupIDStyle_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v577, v578, a2, a3, v579, a6);
      }

      else
      {
        objc_msgSend_handleIMDChatRecordCopyChatsWithHandlesOnServiceWithDisplayNameGroupIDStyle_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v577, v578, a2, a3, v579, 0);
      }

      v18 = 126;
      break;
    case 127:
      v669 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v671 = a5;
      }

      else
      {
        v671 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDChatRecordCopyChatsWithAtLeastHandlesOnServiceWithStyle_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v669, v670, a2, a3, v671, a6);
      }

      else
      {
        objc_msgSend_handleIMDChatRecordCopyChatsWithAtLeastHandlesOnServiceWithStyle_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v669, v670, a2, a3, v671, 0);
      }

      v18 = 127;
      break;
    case 128:
      v240 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v242 = a5;
      }

      else
      {
        v242 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDChatRecordCopyChatsFilteredUsingPredicate_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v240, v241, a2, a3, v242, a6);
      }

      else
      {
        objc_msgSend_handleIMDChatRecordCopyChatsFilteredUsingPredicate_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v240, v241, a2, a3, v242, 0);
      }

      v18 = 128;
      break;
    case 129:
      v830 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v832 = a5;
      }

      else
      {
        v832 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDChatRecordCopySortedChatsFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v830, v831, a2, a3, v832, a6);
      }

      else
      {
        objc_msgSend_handleIMDChatRecordCopySortedChatsFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v830, v831, a2, a3, v832, 0);
      }

      v18 = 129;
      break;
    case 130:
      v300 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v302 = a5;
      }

      else
      {
        v302 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDChatRecordCopyChatsSortedByLastMessageDateAndFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v300, v301, a2, a3, v302, a6);
      }

      else
      {
        objc_msgSend_handleIMDChatRecordCopyChatsSortedByLastMessageDateAndFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v300, v301, a2, a3, v302, 0);
      }

      v18 = 130;
      break;
    case 131:
      v842 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v844 = a5;
      }

      else
      {
        v844 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDChatRecordCopyChatsWithIdentifier_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v842, v843, a2, a3, v844, a6);
      }

      else
      {
        objc_msgSend_handleIMDChatRecordCopyChatsWithIdentifier_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v842, v843, a2, a3, v844, 0);
      }

      v18 = 131;
      break;
    case 132:
      v471 = IMGetXPCStringFromDictionary();
      v472 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v474 = a5;
      }

      else
      {
        v474 = 0;
      }

      if (a4)
      {
        v475 = a6;
      }

      else
      {
        v475 = 0;
      }

      __XPCServerIMDChatRecordCopyChatsWithIdentifierOnService_IPCAction(v472, v473, v474, v475, v471, v472);
      v18 = 132;
      break;
    case 133:
      v870 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v872 = a5;
      }

      else
      {
        v872 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDChatRecordCopyChatsWithPinningIdentifier_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v870, v871, a2, a3, v872, a6);
      }

      else
      {
        objc_msgSend_handleIMDChatRecordCopyChatsWithPinningIdentifier_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v870, v871, a2, a3, v872, 0);
      }

      v18 = 133;
      break;
    case 134:
      v153 = IMGetXPCStringFromDictionary();
      v154 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v156 = a5;
      }

      else
      {
        v156 = 0;
      }

      if (a4)
      {
        v157 = a6;
      }

      else
      {
        v157 = 0;
      }

      __XPCServerIMDChatRecordCopyChatsWithRoomnameOnService_IPCAction(v154, v155, v156, v157, v153, v154);
      v18 = 134;
      break;
    case 135:
      v811 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v813 = a5;
      }

      else
      {
        v813 = 0;
      }

      if (a4)
      {
        v814 = a6;
      }

      else
      {
        v814 = 0;
      }

      __XPCServerIMDChatRecordCopyChatsWithGroupID_IPCAction(v811, v812, v813, v814, v811);
      v18 = 135;
      break;
    case 136:
      v901 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v903 = a5;
      }

      else
      {
        v903 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDChatRecordCopyDuplicateGroupChatRecords_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v901, v902, a2, a3, v903, a6);
      }

      else
      {
        objc_msgSend_handleIMDChatRecordCopyDuplicateGroupChatRecords_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v901, v902, a2, a3, v903, 0);
      }

      v18 = 136;
      break;
    case 137:
      v845 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v847 = a5;
      }

      else
      {
        v847 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDChatRecordCopyGroupPhotoPaths_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v845, v846, a2, a3, v847, a6);
      }

      else
      {
        objc_msgSend_handleIMDChatRecordCopyGroupPhotoPaths_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v845, v846, a2, a3, v847, 0);
      }

      v18 = 137;
      break;
    case 138:
      v184 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v186 = a5;
      }

      else
      {
        v186 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDChatRecordResolveInconsistentGUID_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v184, v185, a2, a3, v186, a6);
      }

      else
      {
        objc_msgSend_handleIMDChatRecordResolveInconsistentGUID_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v184, v185, a2, a3, v186, 0);
      }

      v18 = 138;
      break;
    case 139:
      v317 = IMGetXPCStringFromDictionary();
      v318 = IMGetXPCStringFromDictionary();
      v319 = IMGetXPCBoolFromDictionary();
      if (a4)
      {
        v321 = a5;
      }

      else
      {
        v321 = 0;
      }

      if (a4)
      {
        v322 = a6;
      }

      else
      {
        v322 = 0;
      }

      __XPCServerIMDChatRecordCopyNewestChatForGroupIDOnService_IPCAction(v319, v320, v321, v322, v317, v318, v319);
      v18 = 139;
      break;
    case 140:
      v253 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v255 = a5;
      }

      else
      {
        v255 = 0;
      }

      if (a4)
      {
        v256 = a6;
      }

      else
      {
        v256 = 0;
      }

      __XPCServerIMDChatRecordDeleteChatForGUID_IPCAction(v253, v254, v255, v256, v253);
      v18 = 140;
      break;
    case 141:
      v187 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v189 = a5;
      }

      else
      {
        v189 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDChatRecordMoveMessagesToRecoverableMessage_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v187, v188, a2, a3, v189, a6);
      }

      else
      {
        objc_msgSend_handleIMDChatRecordMoveMessagesToRecoverableMessage_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v187, v188, a2, a3, v189, 0);
      }

      v18 = 141;
      break;
    case 142:
      v898 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v900 = a5;
      }

      else
      {
        v900 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDChatRecordRecoverMessages_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v898, v899, a2, a3, v900, a6);
      }

      else
      {
        objc_msgSend_handleIMDChatRecordRecoverMessages_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v898, v899, a2, a3, v900, 0);
      }

      v18 = 142;
      break;
    case 143:
      v229 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v231 = a5;
      }

      else
      {
        v231 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDChatRecordPermanentlyDeleteRecoverableMessagesInChatsWithGUIDs_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v229, v230, a2, a3, v231, a6);
      }

      else
      {
        objc_msgSend_handleIMDChatRecordPermanentlyDeleteRecoverableMessagesInChatsWithGUIDs_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v229, v230, a2, a3, v231, 0);
      }

      v18 = 143;
      break;
    case 144:
      v663 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v665 = a5;
      }

      else
      {
        v665 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDChatRecordLoadRecoverableMessages_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v663, v664, a2, a3, v665, a6);
      }

      else
      {
        objc_msgSend_handleIMDChatRecordLoadRecoverableMessages_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v663, v664, a2, a3, v665, 0);
      }

      v18 = 144;
      break;
    case 145:
      v291 = IMGetXPCStringFromDictionary();
      v292 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v294 = a5;
      }

      else
      {
        v294 = 0;
      }

      if (a4)
      {
        v295 = a6;
      }

      else
      {
        v295 = 0;
      }

      __XPCServerIMDChatRecordAssociateMessageWithGUIDToChatWithGUIDIfNeeded_IPCAction(v292, v293, v294, v295, v291, v292);
      v18 = 145;
      break;
    case 146:
      v438 = IMGetXPCStringFromDictionary();
      v439 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v441 = a5;
      }

      else
      {
        v441 = 0;
      }

      if (a4)
      {
        v442 = a6;
      }

      else
      {
        v442 = 0;
      }

      __XPCServerIMDChatRecordDisassociateMessageWithGUIDFromChatWithGUIDIfNeeded_IPCAction(v439, v440, v441, v442, v438, v439);
      v18 = 146;
      break;
    case 147:
      if (a4)
      {
        v821 = a5;
      }

      else
      {
        v821 = 0;
      }

      if (a4)
      {
        v822 = a6;
      }

      else
      {
        v822 = 0;
      }

      __XPCServerIMDChatRecordCopyChatGUIDsWithUnplayedAudioMessages_IPCAction(v14, v15, v821, v822);
      v18 = 147;
      break;
    case 148:
      v190 = IMGetXPCStringFromDictionary();
      v191 = xpc_dictionary_get_int64(a3, "isFiltered");
      if (a4)
      {
        v193 = a5;
      }

      else
      {
        v193 = 0;
      }

      if (a4)
      {
        v194 = a6;
      }

      else
      {
        v194 = 0;
      }

      __XPCServerIMDChatRecordSetIsFiltered_IPCAction(v191, v192, v193, v194, v190, v191);
      v18 = 148;
      break;
    case 149:
      if (a4)
      {
        v359 = a5;
      }

      else
      {
        v359 = 0;
      }

      if (a4)
      {
        v360 = a6;
      }

      else
      {
        v360 = 0;
      }

      __XPCServerIMDChatRecordDeleteEmptyChats_IPCAction(v14, v15, v359, v360);
      v18 = 149;
      break;
    case 150:
      v276 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v278 = a5;
      }

      else
      {
        v278 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDChatRecordsUpdateSyncStatusForGUIDs_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v276, v277, a2, a3, v278, a6);
      }

      else
      {
        objc_msgSend_handleIMDChatRecordsUpdateSyncStatusForGUIDs_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v276, v277, a2, a3, v278, 0);
      }

      goto LABEL_1304;
    case 151:
      v623 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v625 = a5;
      }

      else
      {
        v625 = 0;
      }

      if (a4)
      {
        v626 = a6;
      }

      else
      {
        v626 = 0;
      }

      __XPCServerIMDMessageRecordCopyLastReadMessageForChatIdentifier_IPCAction(v623, v624, v625, v626, v623);
      v18 = 151;
      break;
    case 152:
      v378 = IMGetXPCStringFromDictionary();
      v379 = IMGetXPCArrayFromDictionary();
      v380 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v382 = a5;
      }

      else
      {
        v382 = 0;
      }

      if (a4)
      {
        v383 = a6;
      }

      else
      {
        v383 = 0;
      }

      __XPCServerIMDChatRecordRepairDuplicateChats_IPCAction(v380, v381, v382, v383, v379, v378, v380);
      v18 = 152;
      break;
    case 153:
      v248 = IMGetXPCStringFromDictionary();
      v249 = xpc_dictionary_get_int64(a3, "days");
      if (a4)
      {
        v251 = a5;
      }

      else
      {
        v251 = 0;
      }

      if (a4)
      {
        v252 = a6;
      }

      else
      {
        v252 = 0;
      }

      __XPCServerIMDChatRecordSplitDatabaseByDays_IPCAction(v249, v250, v251, v252, v249, v248);
      v18 = 153;
      break;
    case 154:
      v195 = IMGetXPCStringFromDictionary();
      v196 = xpc_dictionary_get_int64(a3, "message_count");
      if (a4)
      {
        v198 = a5;
      }

      else
      {
        v198 = 0;
      }

      if (a4)
      {
        v199 = a6;
      }

      else
      {
        v199 = 0;
      }

      __XPCServerIMDChatRecordSplitDatabaseByRecentCount_IPCAction(v196, v197, v198, v199, v196, v195);
      v18 = 154;
      break;
    case 155:
      v446 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v448 = a5;
      }

      else
      {
        v448 = 0;
      }

      if (a4)
      {
        v449 = a6;
      }

      else
      {
        v449 = 0;
      }

      __XPCServerIMDSwitchDatabase_IPCAction(v446, v447, v448, v449, v446);
      v18 = 155;
      break;
    case 156:
      if (a4)
      {
        v262 = a5;
      }

      else
      {
        v262 = 0;
      }

      if (a4)
      {
        v263 = a6;
      }

      else
      {
        v263 = 0;
      }

      __XPCServerIMDChatRecordCopyAllNamedChats_IPCAction(v14, v15, v262, v263);
      v18 = 156;
      break;
    case 157:
      v865 = IMGetXPCStringFromDictionary();
      v866 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v868 = a5;
      }

      else
      {
        v868 = 0;
      }

      if (a4)
      {
        v869 = a6;
      }

      else
      {
        v869 = 0;
      }

      __XPCServerIMDMessageRecordCopyArrayOfAssociatedMessagesForMessageGUIDFromSender_IPCAction(v866, v867, v868, v869, v865, v866);
      v18 = 157;
      break;
    case 158:
      v311 = IMGetXPCStringFromDictionary();
      v312 = IMGetXPCStringFromDictionary();
      v313 = xpc_dictionary_get_int64(a3, "version");
      if (a4)
      {
        v315 = a5;
      }

      else
      {
        v315 = 0;
      }

      if (a4)
      {
        v316 = a6;
      }

      else
      {
        v316 = 0;
      }

      __XPCServerIMDDowngradeDatabase_IPCAction(v313, v314, v315, v316, v311, v312, v313);
      v18 = 158;
      break;
    case 159:
      v618 = xpc_dictionary_get_int64(a3, "limit");
      v619 = xpc_dictionary_get_int64(a3, "filter");
      if (a4)
      {
        v621 = a5;
      }

      else
      {
        v621 = 0;
      }

      if (a4)
      {
        v622 = a6;
      }

      else
      {
        v622 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessagesToUploadToCloudKit_IPCAction(v619, v620, v621, v622, v618, v619);
      v18 = 159;
      break;
    case 160:
      v410 = xpc_dictionary_get_int64(a3, "limit");
      if (a4)
      {
        v412 = a5;
      }

      else
      {
        v412 = 0;
      }

      if (a4)
      {
        v413 = a6;
      }

      else
      {
        v413 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessagesPendingUpdateT1ToCloudKit_IPCAction(v410, v411, v412, v413, v410);
      v18 = 160;
      break;
    case 161:
      v282 = xpc_dictionary_get_int64(a3, "limit");
      if (a4)
      {
        v284 = a5;
      }

      else
      {
        v284 = 0;
      }

      if (a4)
      {
        v285 = a6;
      }

      else
      {
        v285 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessagesPendingUpdateT2ToCloudKit_IPCAction(v282, v283, v284, v285, v282);
      v18 = 161;
      break;
    case 162:
      v713 = xpc_dictionary_get_int64(a3, "limit");
      if (a4)
      {
        v715 = a5;
      }

      else
      {
        v715 = 0;
      }

      if (a4)
      {
        v716 = a6;
      }

      else
      {
        v716 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessagesPendingUpdateT3ToCloudKit_IPCAction(v713, v714, v715, v716, v713);
      v18 = 162;
      break;
    case 163:
      if (a4)
      {
        v836 = a5;
      }

      else
      {
        v836 = 0;
      }

      if (a4)
      {
        v837 = a6;
      }

      else
      {
        v837 = 0;
      }

      __XPCServerIMDMessageRecordMarkAllMessagesAsNeedingCloudKitSync_IPCAction(v14, v15, v836, v837);
      v18 = 163;
      break;
    case 164:
      v521 = xpc_dictionary_get_int64(a3, "days");
      if (a4)
      {
        v523 = a5;
      }

      else
      {
        v523 = 0;
      }

      if (a4)
      {
        v524 = a6;
      }

      else
      {
        v524 = 0;
      }

      __XPCServerIMDAttachmentRecordEstimateSpaceTakenByAttachmentsOlderThanDays_IPCAction(v521, v522, v523, v524, v521);
      v18 = 164;
      break;
    case 165:
      v815 = xpc_dictionary_get_int64(a3, "options");
      if (a4)
      {
        v817 = a5;
      }

      else
      {
        v817 = 0;
      }

      if (a4)
      {
        v818 = a6;
      }

      else
      {
        v818 = 0;
      }

      __XPCServerIMDAttachmentRecordFindLargestConversations_IPCAction(v815, v816, v817, v818, v815);
      v18 = 165;
      break;
    case 166:
      v783 = xpc_dictionary_get_int64(a3, "options");
      v784 = xpc_dictionary_get_int64(a3, "limit");
      v785 = xpc_dictionary_get_int64(a3, "offset");
      if (a4)
      {
        v786 = a5;
      }

      else
      {
        v786 = 0;
      }

      if (a4)
      {
        v787 = a6;
      }

      else
      {
        v787 = 0;
      }

      __XPCServerIMDAttachmentRecordFindLargestAttachmentGUIDsWithLimitAndOffset_IPCAction(v785, a3, v786, v787, v783, v784, v785);
      v18 = 166;
      break;
    case 167:
      v272 = xpc_dictionary_get_int64(a3, "options");
      if (a4)
      {
        v274 = a5;
      }

      else
      {
        v274 = 0;
      }

      if (a4)
      {
        v275 = a6;
      }

      else
      {
        v275 = 0;
      }

      __XPCServerIMDAttachmentRecordSpaceTakenByAttachmentClass_IPCAction(v272, v273, v274, v275, v272);
      v18 = 167;
      break;
    case 168:
      v745 = xpc_dictionary_get_int64(a3, "limit");
      if (a4)
      {
        v747 = a5;
      }

      else
      {
        v747 = 0;
      }

      if (a4)
      {
        v748 = a6;
      }

      else
      {
        v748 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessagesToDeleteFromCloudKit_IPCAction(v745, v746, v747, v748, v745);
      v18 = 168;
      break;
    case 169:
      v429 = IMGetXPCStringFromDictionary();
      v430 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v432 = a5;
      }

      else
      {
        v432 = 0;
      }

      if (a4)
      {
        v433 = a6;
      }

      else
      {
        v433 = 0;
      }

      __XPCServerIMDMessageRecordAddGUIDAndCKRecordIDToDeleteFromCloudKit_IPCAction(v430, v431, v432, v433, v429, v430);
      v18 = 169;
      break;
    case 170:
      if (a4)
      {
        v706 = a5;
      }

      else
      {
        v706 = 0;
      }

      if (a4)
      {
        v707 = a6;
      }

      else
      {
        v707 = 0;
      }

      __XPCServerIMDAddIncompatibleGroupPhotoChangedMessagesToDeleteFromCloudKit_IPCAction(v14, v15, v706, v707);
      v18 = 170;
      break;
    case 171:
      if (a4)
      {
        v700 = a5;
      }

      else
      {
        v700 = 0;
      }

      if (a4)
      {
        v701 = a6;
      }

      else
      {
        v701 = 0;
      }

      __XPCServerIMDMessageRecordMarkDeletedTombStonedMessages_IPCAction(v14, v15, v700, v701);
      v18 = 171;
      break;
    case 172:
      v826 = IMGetXPCArrayFromDictionary();
      if (a4)
      {
        v828 = a5;
      }

      else
      {
        v828 = 0;
      }

      if (a4)
      {
        v829 = a6;
      }

      else
      {
        v829 = 0;
      }

      __XPCServerIMDMessageRecordDeleteTombStonedMessagesWithRecordIDs_IPCAction(v826, v827, v828, v829, v826);
      v18 = 172;
      break;
    case 173:
      v792 = IMGetXPCStringFromDictionary();
      v793 = IMGetXPCStringFromDictionary();
      v794 = xpc_dictionary_get_int64(a3, "timeStamp");
      if (a4)
      {
        v796 = a5;
      }

      else
      {
        v796 = 0;
      }

      if (a4)
      {
        v797 = a6;
      }

      else
      {
        v797 = 0;
      }

      __XPCServerInsertIntoDeletedChatsTable_IPCAction(v794, v795, v796, v797, v792, v793, v794);
      v18 = 173;
      break;
    case 174:
      v264 = xpc_dictionary_get_int64(a3, "limit");
      if (a4)
      {
        v266 = a5;
      }

      else
      {
        v266 = 0;
      }

      if (a4)
      {
        v267 = a6;
      }

      else
      {
        v267 = 0;
      }

      __XPCServerIMDChatRecordCopyChatRecordIDsAndGUIDsToDeleteFromCloudKitWithLimit_IPCAction(v264, v265, v266, v267, v264);
      break;
    case 175:
      if (a4)
      {
        v711 = a5;
      }

      else
      {
        v711 = 0;
      }

      if (a4)
      {
        v712 = a6;
      }

      else
      {
        v712 = 0;
      }

      __XPCServerIMDChatClearPendingDeleteChatsTable_IPCAction(v14, v15, v711, v712);
      break;
    case 176:
      v730 = IMGetXPCArrayFromDictionary();
      v731 = xpc_dictionary_get_int64(a3, "fromError");
      v732 = xpc_dictionary_get_int64(a3, "toError");
      if (a4)
      {
        v734 = a5;
      }

      else
      {
        v734 = 0;
      }

      if (a4)
      {
        v735 = a6;
      }

      else
      {
        v735 = 0;
      }

      __XPCServerIMDChatRemapMessagesWithErrorCodeToErrorCode_IPCAction(v732, v733, v734, v735, v730, v731, v732);
      break;
    case 177:
      if (a4)
      {
        v361 = a5;
      }

      else
      {
        v361 = 0;
      }

      if (a4)
      {
        v362 = a6;
      }

      else
      {
        v362 = 0;
      }

      __XPCServerIMDMessageRecordCalculateLocalCloudKitStatistics_IPCAction(v14, v15, v361, v362);
      break;
    case 178:
      v692 = xpc_dictionary_get_int64(a3, "rowID");
      if (a4)
      {
        v694 = a5;
      }

      else
      {
        v694 = 0;
      }

      if (a4)
      {
        v695 = a6;
      }

      else
      {
        v695 = 0;
      }

      __XPCServerIMDMessageRecordMarkMessageWithROWIDAsSyncedWithCloudKit_IPCAction(v692, v693, v694, v695, v692);
      break;
    case 179:
      v636 = xpc_dictionary_get_int64(a3, "rowID");
      if (a4)
      {
        v638 = a5;
      }

      else
      {
        v638 = 0;
      }

      if (a4)
      {
        v639 = a6;
      }

      else
      {
        v639 = 0;
      }

      __XPCServerIMDMessageRecordMarkMessageWithROWIDAsIgnoreButNeedingSyncWithCloudKit_IPCAction(v636, v637, v638, v639, v636);
      break;
    case 180:
      v363 = IMGetXPCDictionaryFromDictionary();
      if (a4)
      {
        v365 = a5;
      }

      else
      {
        v365 = 0;
      }

      if (a4)
      {
        v366 = a6;
      }

      else
      {
        v366 = 0;
      }

      __XPCServerIMDMessageRecordSetCloudKitSyncCounts_IPCAction(v363, v364, v365, v366, v363);
      break;
    case 181:
      v776 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v778 = a5;
      }

      else
      {
        v778 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordsUpdateSyncStatusForGUIDs_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v776, v777, a2, a3, v778, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordsUpdateSyncStatusForGUIDs_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v776, v777, a2, a3, v778, 0);
      }

LABEL_1304:
      v18 = 150;
      break;
    case 182:
      v823 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v825 = a5;
      }

      else
      {
        v825 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordsUpdateSyncedSyndicationRangesForGUIDsToStatus_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v823, v824, a2, a3, v825, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordsUpdateSyncedSyndicationRangesForGUIDsToStatus_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v823, v824, a2, a3, v825, 0);
      }

      v18 = 182;
      break;
    case 183:
      if (a4)
      {
        v330 = a5;
      }

      else
      {
        v330 = 0;
      }

      if (a4)
      {
        v331 = a6;
      }

      else
      {
        v331 = 0;
      }

      __XPCServerIMDAttachmentRecordMarkFailedAttachmentsAsNeedingSync_IPCAction(v14, v15, v330, v331);
      v18 = 183;
      break;
    case 184:
      if (xpc_dictionary_get_value(a3, "afterRow"))
      {
        v367 = xpc_dictionary_get_int64(a3, "afterRow");
        v369 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v368, v367);
      }

      else
      {
        v369 = 0;
      }

      v993 = xpc_dictionary_get_int64(a3, "limit");
      if (a4)
      {
        v995 = a5;
      }

      else
      {
        v995 = 0;
      }

      if (a4)
      {
        v996 = a6;
      }

      else
      {
        v996 = 0;
      }

      __XPCServerIMDAttachmentRecordCopyAttachmentsToDeleteFromCloudKit(v993, v994, v995, v996, v369, v993);
      v18 = 184;
      break;
    case 185:
      if (xpc_dictionary_get_value(a3, "afterRow"))
      {
        v610 = xpc_dictionary_get_int64(a3, "afterRow");
        v612 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v611, v610);
      }

      else
      {
        v612 = 0;
      }

      v997 = xpc_dictionary_get_int64(a3, "limit");
      if (a4)
      {
        v999 = a5;
      }

      else
      {
        v999 = 0;
      }

      if (a4)
      {
        v1000 = a6;
      }

      else
      {
        v1000 = 0;
      }

      __XPCServerIMDAttachmentRecordCopyAttachmentGUIDs(v997, v998, v999, v1000, v612, v997);
      v18 = 185;
      break;
    case 186:
      v788 = IMGetXPCArrayFromDictionary();
      if (a4)
      {
        v790 = a5;
      }

      else
      {
        v790 = 0;
      }

      if (a4)
      {
        v791 = a6;
      }

      else
      {
        v791 = 0;
      }

      __XPCServerIMDAttachmentRecordDeleteTombStonedAttachmentsWithRecordIDs_IPCAction(v788, v789, v790, v791, v788);
      v18 = 186;
      break;
    case 187:
      if (a4)
      {
        v627 = a5;
      }

      else
      {
        v627 = 0;
      }

      if (a4)
      {
        v628 = a6;
      }

      else
      {
        v628 = 0;
      }

      __XPCServerIMDAttachmentRecordDeleteTombStonedAttachmentsToDeleteFromCloudKit_IPCAction(v14, v15, v627, v628);
      v18 = 187;
      break;
    case 188:
      v600 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v602 = a5;
      }

      else
      {
        v602 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDAttachmentRecordsUpdateSyncStatusForGUIDs_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v600, v601, a2, a3, v602, a6);
      }

      else
      {
        objc_msgSend_handleIMDAttachmentRecordsUpdateSyncStatusForGUIDs_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v600, v601, a2, a3, v602, 0);
      }

      v18 = 188;
      break;
    case 189:
      v420 = IMOSLoggingEnabled();
      if (v420)
      {
        v422 = OSLogHandleForIMFoundationCategory();
        v420 = os_log_type_enabled(v422, OS_LOG_TYPE_INFO);
        if (v420)
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v422, OS_LOG_TYPE_INFO, "Clean database requested", buf, 2u);
        }
      }

      if (a4)
      {
        v423 = a5;
      }

      else
      {
        v423 = 0;
      }

      if (a4)
      {
        v424 = a6;
      }

      else
      {
        v424 = 0;
      }

      __XPCServerIMDDatabaseClean_IPCAction(v420, v421, v423, v424);
      v18 = 189;
      break;
    case 190:
      if (a4)
      {
        v328 = a5;
      }

      else
      {
        v328 = 0;
      }

      if (a4)
      {
        v329 = a6;
      }

      else
      {
        v329 = 0;
      }

      __XPCServerIMDMessageRecordMarkAllUnsuccessFullSyncMessagesAsNeedingSync_IPCAction(v14, v15, v328, v329);
      v18 = 190;
      break;
    case 191:
      v696 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v698 = a5;
      }

      else
      {
        v698 = 0;
      }

      if (a4)
      {
        v699 = a6;
      }

      else
      {
        v699 = 0;
      }

      __XPCServerIMDKVValueForKey_IPCAction(v696, v697, v698, v699, v696);
      goto LABEL_1175;
    case 192:
      v591 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v593 = a5;
      }

      else
      {
        v593 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDKVIntegerForKey_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v591, v592, a2, a3, v593, a6);
      }

      else
      {
        objc_msgSend_handleIMDKVIntegerForKey_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v591, v592, a2, a3, v593, 0);
      }

      v18 = 192;
      break;
    case 193:
      v503 = IMGetXPCStringFromDictionary();
      v504 = IMGetXPCDataFromDictionary();
      if (a4)
      {
        v506 = a5;
      }

      else
      {
        v506 = 0;
      }

      if (a4)
      {
        v507 = a6;
      }

      else
      {
        v507 = 0;
      }

      __XPCServerIMDKVPersistValueForKey_IPCAction(v504, v505, v506, v507, v503, v504);
LABEL_1175:
      v18 = 191;
      break;
    case 194:
      v374 = IMGetXPCDictionaryFromDictionary();
      if (a4)
      {
        v376 = a5;
      }

      else
      {
        v376 = 0;
      }

      if (a4)
      {
        v377 = a6;
      }

      else
      {
        v377 = 0;
      }

      __XPCServerIMDNotificationsPostNotifications_asyncIPCAction(v374, v375, v376, v377, v374);
      v18 = 194;
      break;
    case 195:
      v387 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v389 = a5;
      }

      else
      {
        v389 = 0;
      }

      if (a4)
      {
        v390 = a6;
      }

      else
      {
        v390 = 0;
      }

      __XPCServerIMDMessageRecordCopyMessagesWithReplyToGUIDs(v387, v388, v389, v390, v387);
      v18 = 195;
      break;
    case 196:
      v629 = IMGetXPCArrayFromDictionary();
      if (a4)
      {
        v631 = a5;
      }

      else
      {
        v631 = 0;
      }

      if (a4)
      {
        v632 = a6;
      }

      else
      {
        v632 = 0;
      }

      __XPCServerIMDNotificationsRetractNotificationsForReadMessages_asyncIPCAction(v629, v630, v631, v632, v629);
      v18 = 196;
      break;
    case 197:
      v391 = IMGetXPCDictionaryFromDictionary();
      if (a4)
      {
        v393 = a5;
      }

      else
      {
        v393 = 0;
      }

      if (a4)
      {
        v394 = a6;
      }

      else
      {
        v394 = 0;
      }

      __XPCServerIMDNotificationsRetractNotificationsFromFirstUnlock_IPCAction(v391, v392, v393, v394, v391);
      v18 = 197;
      break;
    case 198:
      v340 = IMGetXPCArrayFromDictionary();
      v341 = IMGetXPCDictionaryFromDictionary();
      if (a4)
      {
        v343 = a5;
      }

      else
      {
        v343 = 0;
      }

      if (a4)
      {
        v344 = a6;
      }

      else
      {
        v344 = 0;
      }

      __XPCServerIMDNotificationsPostUrgentNotificationsForMessages_IPCAction(v341, v342, v343, v344, v340, v341);
      goto LABEL_1143;
    case 199:
      v676 = IMGetXPCArrayFromDictionary();
      v677 = IMGetXPCDictionaryFromDictionary();
      if (a4)
      {
        v679 = a5;
      }

      else
      {
        v679 = 0;
      }

      if (a4)
      {
        v680 = a6;
      }

      else
      {
        v680 = 0;
      }

      __XPCServerIMDNotificationsUpdatePostedNotificationsForMessages_IPCAction(v677, v678, v679, v680, v676, v677);
      goto LABEL_1143;
    case 200:
      v479 = IMGetXPCStringFromDictionary();
      v480 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v482 = a5;
      }

      else
      {
        v482 = 0;
      }

      if (a4)
      {
        v483 = a6;
      }

      else
      {
        v483 = 0;
      }

      __XPCServerIMDNotificationsPostFirstUnlockMessage_IPCAction(v480, v481, v482, v483, v479, v480);
LABEL_1143:
      v18 = 198;
      break;
    case 202:
      v586 = xpc_dictionary_get_int64(a3, "chatRowID");
      v587 = xpc_dictionary_get_int64(a3, "isBlackholed");
      if (a4)
      {
        v589 = a5;
      }

      else
      {
        v589 = 0;
      }

      if (a4)
      {
        v590 = a6;
      }

      else
      {
        v590 = 0;
      }

      __XPCServerIMDChatRecordSetIsBlackholed_IPCAction(v587, v588, v589, v590, v586, v587);
      v18 = 202;
      break;
    case 203:
      v517 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v519 = a5;
      }

      else
      {
        v519 = 0;
      }

      if (a4)
      {
        v520 = a6;
      }

      else
      {
        v520 = 0;
      }

      __XPCServerIMDMessageRecordMarkMessageGUIDUnread_IPCAction(v517, v518, v519, v520, v517);
      v18 = 203;
      break;
    case 204:
      v580 = IMGetXPCStringFromDictionary();
      v581 = IMGetXPCStringFromDictionary();
      v582 = xpc_dictionary_get_BOOL(a3, "fromMe");
      if (a4)
      {
        v584 = a5;
      }

      else
      {
        v584 = 0;
      }

      if (a4)
      {
        v585 = a6;
      }

      else
      {
        v585 = 0;
      }

      __XPCServerIMDMessageRecordMarkMessagesAsUnreadWithChatGUIDUpToGUIDFromMe_IPCAction(v582, v583, v584, v585, v580, v581, v582);
      v18 = 204;
      break;
    case 205:
      v672 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v674 = a5;
      }

      else
      {
        v674 = 0;
      }

      if (a4)
      {
        v675 = a6;
      }

      else
      {
        v675 = 0;
      }

      __XPCServerIMDChatRecordPurgeAttachments_IPCAction(v672, v673, v674, v675, v672);
      v18 = 205;
      break;
    case 206:
      v666 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v668 = a5;
      }

      else
      {
        v668 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordUpdateAttachmentSyndicationRanges_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v666, v667, a2, a3, v668, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordUpdateAttachmentSyndicationRanges_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v666, v667, a2, a3, v668, 0);
      }

      v18 = 206;
      break;
    case 207:
      v384 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v386 = a5;
      }

      else
      {
        v386 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordMoveToRecoverableMessage_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v384, v385, a2, a3, v386, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordMoveToRecoverableMessage_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v384, v385, a2, a3, v386, 0);
      }

      v18 = 207;
      break;
    case 208:
      v708 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v710 = a5;
      }

      else
      {
        v710 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordDeleteRecoverableMessagesOlderThanDays_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v708, v709, a2, a3, v710, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordDeleteRecoverableMessagesOlderThanDays_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v708, v709, a2, a3, v710, 0);
      }

      v18 = 208;
      break;
    case 210:
      v461 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v463 = a5;
      }

      else
      {
        v463 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordLoadRecoverableMessagesPendingCloudKitUpdate_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v461, v462, a2, a3, v463, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordLoadRecoverableMessagesPendingCloudKitUpdate_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v461, v462, a2, a3, v463, 0);
      }

      v18 = 210;
      break;
    case 211:
      v464 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v466 = a5;
      }

      else
      {
        v466 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordUpdateRecoverableMessageSyncState_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v464, v465, a2, a3, v466, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordUpdateRecoverableMessageSyncState_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v464, v465, a2, a3, v466, 0);
      }

      v18 = 211;
      break;
    case 212:
      v660 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v662 = a5;
      }

      else
      {
        v662 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordStoreRecoverableMessagePartBody_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v660, v661, a2, a3, v662, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordStoreRecoverableMessagePartBody_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v660, v661, a2, a3, v662, 0);
      }

      v18 = 212;
      break;
    case 213:
      v633 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v635 = a5;
      }

      else
      {
        v635 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordLoadRecoverableMessagesPendingCloudKitDelete_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v633, v634, a2, a3, v635, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordLoadRecoverableMessagesPendingCloudKitDelete_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v633, v634, a2, a3, v635, 0);
      }

      v18 = 213;
      break;
    case 214:
      v556 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v558 = a5;
      }

      else
      {
        v558 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordClearUnsyncedRemovedRecoverableMessages_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v556, v557, a2, a3, v558, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordClearUnsyncedRemovedRecoverableMessages_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v556, v557, a2, a3, v558, 0);
      }

      v18 = 214;
      break;
    case 215:
      v549 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v551 = a5;
      }

      else
      {
        v551 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDNotificationsPostSharePlayNotification_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v549, v550, a2, a3, v551, a6);
      }

      else
      {
        objc_msgSend_handleIMDNotificationsPostSharePlayNotification_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v549, v550, a2, a3, v551, 0);
      }

      v18 = 215;
      break;
    case 216:
      v657 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v659 = a5;
      }

      else
      {
        v659 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordUpdateMessagesSyndicationRanges_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v657, v658, a2, a3, v659, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordUpdateMessagesSyndicationRanges_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v657, v658, a2, a3, v659, 0);
      }

      v18 = 216;
      break;
    case 217:
      v565 = xpc_dictionary_get_int64(a3, "chatRowID");
      v566 = xpc_dictionary_get_int64(a3, "isRecovered");
      if (a4)
      {
        v568 = a5;
      }

      else
      {
        v568 = 0;
      }

      if (a4)
      {
        v569 = a6;
      }

      else
      {
        v569 = 0;
      }

      __XPCServerIMDChatRecordSetIsRecovered_IPCAction(v566, v567, v568, v569, v565, v566);
      v18 = 217;
      break;
    case 218:
      v525 = xpc_dictionary_get_int64(a3, "chatRowID");
      v526 = xpc_dictionary_get_int64(a3, "isDeletingIncomingMessages");
      if (a4)
      {
        v528 = a5;
      }

      else
      {
        v528 = 0;
      }

      if (a4)
      {
        v529 = a6;
      }

      else
      {
        v529 = 0;
      }

      __XPCServerIMDChatRecordSetIsDeletingIncomingMessages_IPCAction(v526, v527, v528, v529, v525, v526);
      v18 = 218;
      break;
    case 219:
      v400 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v402 = a5;
      }

      else
      {
        v402 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordDeleteJunkMessagesOlderThanDays_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v400, v401, a2, a3, v402, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordDeleteJunkMessagesOlderThanDays_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v400, v401, a2, a3, v402, 0);
      }

      v18 = 219;
      break;
    case 220:
      v496 = IMGetXPCArrayFromDictionary();
      if (a4)
      {
        v498 = a5;
      }

      else
      {
        v498 = 0;
      }

      if (a4)
      {
        v499 = a6;
      }

      else
      {
        v499 = 0;
      }

      __XPCServerIMDMessageRecordRetractNotificationsForChatGuids_asyncIPCAction(v496, v497, v498, v499, v496);
      v18 = 220;
      break;
    case 221:
      v407 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v409 = a5;
      }

      else
      {
        v409 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordUpdateRecoverableMessageSyncStateForMessageGUIDs_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v407, v408, a2, a3, v409, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordUpdateRecoverableMessageSyncStateForMessageGUIDs_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v407, v408, a2, a3, v409, 0);
      }

      v18 = 221;
      break;
    case 222:
      v559 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v561 = a5;
      }

      else
      {
        v561 = 0;
      }

      if (a4)
      {
        objc_msgSend_notifyFirstUnlockComplete_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v559, v560, a2, a3, v561, a6);
      }

      else
      {
        objc_msgSend_notifyFirstUnlockComplete_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v559, v560, a2, a3, v561, 0);
      }

      v18 = 222;
      break;
    case 223:
      v450 = IMGetXPCStringFromDictionary();
      v451 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v453 = a5;
      }

      else
      {
        v453 = 0;
      }

      if (a4)
      {
        v454 = a6;
      }

      else
      {
        v454 = 0;
      }

      __XPCServerIMDUpdateWallpaperForCNContact_IPCAction(v451, v452, v453, v454, v450, v451);
      v18 = 223;
      break;
    case 224:
      v425 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v427 = a5;
      }

      else
      {
        v427 = 0;
      }

      if (a4)
      {
        v428 = a6;
      }

      else
      {
        v428 = 0;
      }

      __XPCServerIMDCNGivenNameAndBirthdayForHandleID_IPCAction(v425, v426, v427, v428, v425);
      v18 = 224;
      break;
    case 225:
      v570 = IMGetXPCStringFromDictionary();
      if (a4)
      {
        v572 = a5;
      }

      else
      {
        v572 = 0;
      }

      if (a4)
      {
        v573 = a6;
      }

      else
      {
        v573 = 0;
      }

      __XPCServerIMDCNFullNameAndOrganizationNameForHandleID_IPCAction(v570, v571, v572, v573, v570);
      v18 = 225;
      break;
    case 226:
      v455 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v457 = a5;
      }

      else
      {
        v457 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDCountOfRecordType_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v455, v456, a2, a3, v457, a6);
      }

      else
      {
        objc_msgSend_handleIMDCountOfRecordType_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v455, v456, a2, a3, v457, 0);
      }

      v18 = 226;
      break;
    case 227:
      v574 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v576 = a5;
      }

      else
      {
        v576 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDHandleRecordCopyHandlesFilteredUsingPredicate_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v574, v575, a2, a3, v576, a6);
      }

      else
      {
        objc_msgSend_handleIMDHandleRecordCopyHandlesFilteredUsingPredicate_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v574, v575, a2, a3, v576, 0);
      }

      v18 = 227;
      break;
    case 228:
      v508 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v510 = a5;
      }

      else
      {
        v510 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDHandleRecordCopySortedHandlesFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v508, v509, a2, a3, v510, a6);
      }

      else
      {
        objc_msgSend_handleIMDHandleRecordCopySortedHandlesFilteredUsingPredicateWithLimit_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v508, v509, a2, a3, v510, 0);
      }

      v18 = 228;
      break;
    case 229:
      v562 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v564 = a5;
      }

      else
      {
        v564 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordMarkGUIDsAsRead_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v562, v563, a2, a3, v564, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordMarkGUIDsAsRead_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v562, v563, a2, a3, v564, 0);
      }

      v18 = 229;
      break;
    case 230:
      v552 = xpc_dictionary_get_int64(a3, "identifier");
      if (a4)
      {
        v554 = a5;
      }

      else
      {
        v554 = 0;
      }

      if (a4)
      {
        v555 = a6;
      }

      else
      {
        v555 = 0;
      }

      __XPCServerIMDChatRecordCopyChatRecordForIdentifier_IPCAction(v552, v553, v554, v555, v552);
      v18 = 230;
      break;
    case 231:
      v443 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v445 = a5;
      }

      else
      {
        v445 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDFetchContactsForIdentifiers_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v443, v444, a2, a3, v445, a6);
      }

      else
      {
        objc_msgSend_handleIMDFetchContactsForIdentifiers_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v443, v444, a2, a3, v445, 0);
      }

      v18 = 231;
      break;
    case 232:
      v500 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v502 = a5;
      }

      else
      {
        v502 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDDeleteDatabase_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v500, v501, a2, a3, v502, a6);
      }

      else
      {
        objc_msgSend_handleIMDDeleteDatabase_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v500, v501, a2, a3, v502, 0);
      }

      v18 = 232;
      break;
    case 233:
      v476 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v478 = a5;
      }

      else
      {
        v478 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDVerifyDatabase_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v476, v477, a2, a3, v478, a6);
      }

      else
      {
        objc_msgSend_handleIMDVerifyDatabase_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v476, v477, a2, a3, v478, 0);
      }

      v18 = 233;
      break;
    case 234:
      v511 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v513 = a5;
      }

      else
      {
        v513 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordCalculateTotalMessageCount_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v511, v512, a2, a3, v513, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordCalculateTotalMessageCount_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v511, v512, a2, a3, v513, 0);
      }

      v18 = 234;
      break;
    case 235:
      v514 = objc_msgSend_sharedServer(IMDDatabaseServer, v15, v16);
      if (a4)
      {
        v516 = a5;
      }

      else
      {
        v516 = 0;
      }

      if (a4)
      {
        objc_msgSend_handleIMDMessageRecordCalculateMessagesWithoutChatsCount_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v514, v515, a2, a3, v516, a6);
      }

      else
      {
        objc_msgSend_handleIMDMessageRecordCalculateMessagesWithoutChatsCount_IPCActionWithXPCConnection_requestMessage_responseMessage_completionHandler_(v514, v515, a2, a3, v516, 0);
      }

      v18 = 235;
      break;
    default:
      break;
  }

  if (IMOSLoggingEnabled())
  {
    v1005 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1005, OS_LOG_TYPE_INFO))
    {
      *buf = 134218496;
      v1250 = a1;
      v1251 = 1024;
      v1252 = pid;
      v1253 = 1024;
      v1254 = a4;
      _os_log_impl(&dword_1B7AD5000, v1005, OS_LOG_TYPE_INFO, "Handled message %ld from (%d) wantsReply %{BOOL}d", buf, 0x18u);
    }
  }

  os_activity_scope_leave(&state);
  v1006 = *MEMORY[0x1E69E9840];
  return v18;
}

void __XPCServerIMDMessageRecordMarkDeletedTombStonedMessages_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7ADEEDC;
  block[3] = &unk_1E7CB7FD8;
  block[4] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v4, v5);
}

BOOL sub_1B7ADEAB4(uint64_t a1, const char *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a1 != 0;
  v5 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], a2, a3);
  if (objc_msgSend_isInternalInstall(v5, v6, v7))
  {
    if (qword_1EDBE5BE8 != -1)
    {
      sub_1B7AF27A8();
    }

    if (byte_1EBA53BA0 == 1)
    {
      v8 = IMDatabaseLogHandle();
      v4 = 0;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = @"NO";
        if (a1)
        {
          v9 = @"YES";
        }

        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_DEFAULT, "Database client wants response: %@, but DisablePriorityInversionFixIMDP is YES", &v12, 0xCu);
        v4 = 0;
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v4;
}

void IMDPersistencePerformBlock(dispatch_block_t block, const char *a2, uint64_t a3)
{
  if (!block)
  {
    return;
  }

  v3 = a2;
  if (byte_1EDBE7948 == 1)
  {
    v7 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
    IMDSharedThreadedRecordStore();
    CSDBPerformBlock();
LABEL_13:

    return;
  }

  v4 = objc_msgSend_copy(block, a2, a3);
  if (qword_1EBA54330[0] != -1)
  {
    sub_1B7CFDA3C();
  }

  v5 = qword_1EBA54328;
  if (qword_1EBA54328)
  {
    if (!v3)
    {
      v7 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, v4);
      dispatch_async(v5, v7);
      goto LABEL_13;
    }

    v6 = qword_1EBA54328;

    dispatch_sync(v6, v4);
  }
}

uint64_t IMDSharedThreadedRecordStore()
{
  v16 = *MEMORY[0x1E69E9840];
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    block = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = sub_1B7B6A70C;
    v9 = &unk_1E7CB6EA8;
    v10 = &v11;
    if (qword_1EDBE6308 != -1)
    {
      dispatch_once(&qword_1EDBE6308, &block);
    }

    if (!qword_1EDBE6300)
    {
      v0 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
      {
        if (*(v12 + 24))
        {
          v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v1, @"CSDBCreateThreadedRecordStore should not be nil. Did attempt to init: %@", @"YES", block, v7, v8, v9, v10, v11);
        }

        else
        {
          v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v1, @"CSDBCreateThreadedRecordStore should not be nil. Did attempt to init: %@", @"NO", block, v7, v8, v9, v10, v11);
        }

        sub_1B7CF54FC(v2, buf, v0);
      }
    }

    v3 = qword_1EDBE6300;
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1B7ADEEDC(uint64_t a1)
{
  IMDMessageRecordClearDeleteTombStones();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

BOOL IMDPersistenceCheckDatabaseThread()
{
  if (byte_1EDBE7948 != 1)
  {
    return 1;
  }

  IMDSharedThreadedRecordStore();
  if (CSDBThreadedRecordStoreOwnsCurrentThread())
  {
    return 1;
  }

  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_INFO, "**************************************************************************", buf, 2u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "****** Database access off the database thread, please file a radar ******", v6, 2u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "**************************************************************************", v5, 2u);
    }
  }

  if (qword_1EBA54318 != -1)
  {
    sub_1B7CFD98C();
  }

  v4 = qword_1EBA54320;
  result = os_log_type_enabled(qword_1EBA54320, OS_LOG_TYPE_FAULT);
  if (result)
  {
    sub_1B7CFD9F8(v4);
    return 0;
  }

  return result;
}

uint64_t _IMDSMSRecordStoreInitializeSharedThreadedRecordStore()
{
  result = IMDIsRunningInDatabaseServerProcess();
  if (result)
  {
    v3 = IMDSMSRecordStoreUseProtectedDatabase(result, v1, v2);
    v4 = IMDSharedThreadedRecordStore();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7B6BB64;
    v7[3] = &unk_1E7CBA308;
    v8 = v3;
    objc_msgSend_schemaVersion(IMDLegacyRecordBridge, v5, v6);
    return _IMDInitializeMessagesRecordStoreWithVersion(v4, v7, v3);
  }

  return result;
}

uint64_t IMDSMSRecordStoreUseProtectedDatabase(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8328], a2, a3);
  isUnderFirstDataProtectionLock = objc_msgSend_isUnderFirstDataProtectionLock(v3, v4, v5);

  return isUnderFirstDataProtectionLock ^ 1u;
}

uint64_t _IMDInitializeMessagesRecordStoreWithVersion(uint64_t a1, uint64_t a2, int a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  _IMDAllowLocalMigration();
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = sub_1B7B6BAE8;
  v41[3] = &unk_1E7CBA2E8;
  v41[4] = &v42;
  LODWORD(v39) = v4;
  CSDBThreadedRecordStoreEnsureDatabaseSetupWithProtection();
  if (*(v43 + 24) == 1)
  {
    v40 = 0;
    IMDCreateTriggers(&v40, 0);
    if (v40)
    {
      v5 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = IMDSharedThreadedRecordStore();
        v9 = objc_msgSend_localizedDescription(v40, v7, v8, v39, v41);
        sub_1B7CF5B64(v6, v9, buf, v5);
      }
    }

    IMDSharedThreadedRecordStore();
    CSDBSqliteDatabaseFromThreadedRecordStoreRef();
    v10 = CSDBSqliteDatabaseConnectionForWriting();
    v13 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v11, v12);
    if (objc_msgSend_isMissingMessagesEnabled(v13, v14, v15))
    {
      v18 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], v16, v17);
      if (objc_msgSend_isInternalInstall(v18, v19, v20))
      {
        if (objc_msgSend_schemaVersion(IMDLegacyRecordBridge, v16, v17) <= 19999)
        {
          objc_msgSend_migrateChatLookupIfNeededUsingConnection_(IMDLegacyRecordBridge, v16, v10);
        }
      }
    }

    v21 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], v16, v17, v39);
    if (objc_msgSend_isInternalInstall(v21, v22, v23) && objc_msgSend_schemaVersion(IMDLegacyRecordBridge, v24, v25) <= 19999)
    {
      objc_msgSend_migrateChatTableIfNeededUsingConnection_(IMDLegacyRecordBridge, v24, v10);
    }

    objc_msgSend_registerChatTableVersionUsingConnection_(IMDLegacyRecordBridge, v24, v10);
    v28 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v26, v27);
    if ((objc_msgSend_isOneChatEnabled(v28, v29, v30) & 1) == 0)
    {
      v31 = objc_autoreleasePoolPush();
      if (objc_msgSend_schemaVersion(IMDLegacyRecordBridge, v32, v33) <= 19999)
      {
        objc_msgSend_runMigrationTrial(IMDLegacyRecordBridge, v34, v35);
      }

      objc_autoreleasePoolPop(v31);
    }

    v36 = *(v43 + 24);
  }

  else
  {
    v36 = 0;
  }

  _Block_object_dispose(&v42, 8);
  v37 = *MEMORY[0x1E69E9840];
  return v36 & 1;
}

void sub_1B7ADF454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7ADF510(int a1)
{
  if (!IMDSharedThreadedRecordStore())
  {
    v2 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF523C(v2, v3);
    }
  }

  v4 = CSDBSqliteDatabaseFromThreadedRecordStoreRef();
  if (!v4 && a1)
  {
    CSDBPerformBlock();
    v4 = CSDBSqliteDatabaseFromThreadedRecordStoreRef();
  }

  if (!v4)
  {
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF52EC(v5, v6);
    }
  }

  return v4;
}

void IMDSqlOperationInitWithCSDBDatabase(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    *buf = xmmword_1E7CB80C0;
    *&buf[16] = *off_1E7CB80D0;
    *&buf[32] = 89;
    v4 = MEMORY[0x1E696AEC0];
    v5 = IMFileLocationTrimFileName();
    v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v6, &stru_1F2FA9728);
    v9 = objc_msgSend_stringWithFormat_(v4, v8, @"Unexpected nil '%@' in %s at %s:%d. %@", @"database", "IMDSqlOperation IMDSqlOperationInitWithCSDBDatabase(CSDBSqliteDatabase *)", v5, 89, v7);
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

  v16 = CSDBSqliteDatabaseConnectionForWriting();
  if (!v16)
  {
    v36 = 0;
    v17 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v14, v15);
    v19 = objc_msgSend_attributesOfItemAtPath_error_(v17, v18, *a1, &v36);
    v21 = objc_msgSend_objectForKey_(v19, v20, *MEMORY[0x1E696A360]);
    v23 = objc_msgSend_objectForKey_(v19, v22, *MEMORY[0x1E696A328]);
    v25 = objc_msgSend_objectForKey_(v19, v24, *MEMORY[0x1E696A370]);
    v28 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8168], v26, v27);
    v37[0] = @"dbOwner";
    v37[1] = @"dbGroup";
    v38[0] = v21;
    v38[1] = v23;
    v37[2] = @"permission";
    v38[2] = v25;
    v30 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v29, v38, v37, 3);
    objc_msgSend_forceAutoBugCaptureWithSubType_errorPayload_type_context_metadata_(v28, v31, @"Connection error to database", 0, @"Database", @"CSDBSqliteConnection is nil, there's an issue accessing the DB file", v30);
    v32 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v35 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v33, @"CSDBSqliteDatabaseConnectionForWriting returned a nil CSDBSqliteConnection, owner: %@, group: %@, permission: %@", v21, v23, v25);
      *buf = 136315906;
      *&buf[4] = "sqlConnection";
      *&buf[12] = 2080;
      *&buf[14] = "IMDSqlOperation IMDSqlOperationInitWithCSDBDatabase(CSDBSqliteDatabase *)";
      *&buf[22] = 1024;
      *&buf[24] = 100;
      *&buf[28] = 2112;
      *&buf[30] = v35;
      _os_log_error_impl(&dword_1B7AD5000, v32, OS_LOG_TYPE_ERROR, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", buf, 0x26u);
    }
  }

  IMDSqlOperationInitWithCSDBConnection(v16, a1, a2);
  v34 = *MEMORY[0x1E69E9840];
}

void IMDSqlOperationInitWithCSDBConnection(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    goto LABEL_6;
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = IMFileLocationTrimFileName();
  v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8, &stru_1F2FA9728);
  v11 = objc_msgSend_stringWithFormat_(v6, v10, @"Unexpected nil '%@' in %s at %s:%d. %@", @"db", "IMDSqlOperation IMDSqlOperationInitWithCSDBConnection(CSDBSqliteConnection *, CSDBSqliteDatabase *)", v7, 74, v9);
  v12 = IMGetAssertionFailureHandler();
  if (v12)
  {
    v12(v11);
    if (a1)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v15 = objc_msgSend_warning(MEMORY[0x1E69A6138], v13, v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CEE318();
    if (a1)
    {
      goto LABEL_11;
    }
  }

  else
  {
LABEL_6:
    if (a1)
    {
      goto LABEL_11;
    }
  }

LABEL_7:
  v16 = MEMORY[0x1E696AEC0];
  v17 = IMFileLocationTrimFileName();
  v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v18, &stru_1F2FA9728);
  v21 = objc_msgSend_stringWithFormat_(v16, v20, @"Unexpected nil '%@' in %s at %s:%d. %@", @"connection", "IMDSqlOperation IMDSqlOperationInitWithCSDBConnection(CSDBSqliteConnection *, CSDBSqliteDatabase *)", v17, 75, v19);
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
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = a2;
  *(a3 + 8) = a1;
  IMDSqlOperationWasInitialized(a3);
}

void IMDSqlOperationWasInitialized(void *a1)
{
  if (!a1 || !a1[1] || !*a1)
  {
    v1 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEE244(v1, v2);
    }
  }
}

void sub_1B7ADFAC0()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v1 = 0;
      _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_INFO, "IMDMessageRecordMarkAllMessagesAsNeedingCloudKitSync deleted pending sync table", v1, 2u);
    }
  }
}

BOOL IMDSqlOperationFinishQuery(uint64_t a1)
{
  if (a1)
  {
    if (!*(a1 + 168) && *(a1 + 32))
    {
        ;
      }
    }

    sub_1B7ADFD40(a1);
    return *(a1 + 168) == 0;
  }

  else
  {
    v3 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF2480(v3, v4);
    }

    return 0;
  }
}

BOOL IMDSqlOperationHasRows(uint64_t a1)
{
  if (!a1)
  {
    v8 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF25F8(v8, v9);
    }

    return 0;
  }

  if (*(a1 + 48) && *(a1 + 32))
  {
    goto LABEL_12;
  }

  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF253C(v2, v3);
  }

  if (*(a1 + 32))
  {
LABEL_12:
    if (!*(a1 + 72) || (v4 = *(a1 + 40), v4 == 100))
    {
      v5 = *(a1 + 8);
      v4 = CSDBSqliteStepWithConnection();
      *(a1 + 40) = v4;
      ++*(a1 + 72);
      if ((v4 - 100) >= 2 && v4 != 0)
      {
        ErrorCode = IMDCreateCFErrorWithQueryErrorCode(v4, *(a1 + 56), *(a1 + 48));
        if (ErrorCode)
        {
          v11 = ErrorCode;
          IMDSqlOperationSetError(a1, ErrorCode);
          CFRelease(v11);
          return 0;
        }

        v4 = *(a1 + 40);
      }
    }

    return v4 == 100;
  }

  return 0;
}

sqlite3_stmt *sub_1B7ADFD40(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 48) = 0;
    if (!*(a1 + 168) && !*(a1 + 72))
    {
      v3 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF26B4(v3, v4);
      }
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    result = sqlite3_finalize(result);
    *(a1 + 32) = 0;
  }

  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return result;
}

void IMDSqlOperationInitWithSharedCSDBDatabase(uint64_t a1@<X8>)
{
  IMDEnsureSharedRecordStoreInitialized();
  v2 = IMDSharedSqliteDatabase();
  if (!v2)
  {
    v3 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEF290(v3, v4);
    }
  }

  IMDSqlOperationInitWithCSDBDatabase(v2, a1);
}

void IMDEnsureSharedRecordStoreInitialized()
{
  IMDPersistenceCheckDatabaseThread();
  if (IMDSharedThreadedRecordStore())
  {

    _IMDSMSRecordStoreInitializeSharedThreadedRecordStore();
  }

  else
  {
    v0 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF578C(v0, v1);
    }
  }
}

BOOL IMDSqlOperationExecuteQuery(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = IMFileLocationTrimFileName();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, &stru_1F2FA9728);
    v12 = objc_msgSend_stringWithFormat_(v7, v11, @"Unexpected nil '%@' in %s at %s:%d. %@", @"query", "BOOL IMDSqlOperationExecuteQuery(IMDSqlOperation *, NSString *__strong, __strong IMDBlock)", v8, 386, v10);

    v13 = IMGetAssertionFailureHandler();
    if (v13)
    {
      v13(v12);
    }

    else
    {
      v16 = objc_msgSend_warning(MEMORY[0x1E69A6138], v14, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }

    v17 = MEMORY[0x1E696AEC0];
    v18 = IMFileLocationTrimFileName();
    v20 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v19, &stru_1F2FA9728);
    v22 = objc_msgSend_stringWithFormat_(v17, v21, @"Unexpected nil '%@' in %s at %s:%d. %@", @"query", "BOOL IMDSqlOperationExecuteQuery(IMDSqlOperation *, NSString *__strong, __strong IMDBlock)", v18, 387, v20);

    v23 = IMGetAssertionFailureHandler();
    if (v23)
    {
      v23(v22);
    }

    else
    {
      v26 = objc_msgSend_warning(MEMORY[0x1E69A6138], v24, v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }
  }

  _IMDSqlOperationBeginQuery(a1, v5);
  if (v6)
  {
    v6[2](v6);
  }

  v27 = IMDSqlOperationFinishQuery(a1);

  return v27;
}

BOOL _IMDSqlOperationBeginQuery(uint64_t a1, CFStringRef theString)
{
  if (a1)
  {
    if (theString)
    {
      goto LABEL_3;
    }

LABEL_8:
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF1E14(v6, v7);
    }

    if (!a1)
    {
      return 0;
    }

    goto LABEL_11;
  }

  v4 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF1D58(v4, v5);
  }

  if (!theString)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (!a1)
  {
    return 0;
  }

LABEL_11:
  if (*(a1 + 32))
  {
    v8 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF1ED0(v8, v9);
    }
  }

  if (!*(a1 + 8))
  {
    v10 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF1F8C(v10, v11);
    }

    if (!*(a1 + 8))
    {
      return 0;
    }
  }

  if (*(a1 + 168))
  {
    v12 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF2048(a1, v12, v13);
    }

    v14 = *(a1 + 168);
    if (v14)
    {
      CFRelease(v14);
      *(a1 + 168) = 0;
    }
  }

  v15 = *(a1 + 8);
  *(a1 + 56) = *(v15 + 8);
  *(a1 + 64) = 0;
  *(a1 + 40) = 100;
  *(a1 + 72) = 0;
  if (theString)
  {
    v16 = *(a1 + 48);
    if (v16 == theString)
    {
      goto LABEL_41;
    }

    if (v16)
    {
      v17 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF20D4(v17, v18);
      }

      v19 = *(a1 + 48);
      if (v19)
      {
        CFRelease(v19);
        *(a1 + 48) = 0;
      }
    }

    Length = CFStringGetLength(theString);
    v21 = CFStringGetCharacterAtIndex(theString, Length - 1) == 59 ? CFRetain(theString) : CFStringCreateWithFormat(0, 0, @"%@;", theString);
    *(a1 + 48) = v21;
    if (v21)
    {
      goto LABEL_41;
    }

    v23 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF2190(v23, v25);
    }
  }

  else
  {
    v23 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF224C(v23, v24);
    }
  }

  v26 = *(a1 + 48);
LABEL_41:
  v27 = CSDBCreateUTF8StringFromCFString();
  ppStmt = 0;
  do
  {
    v28 = sqlite3_prepare_v2(*(v15 + 8), v27, -1, &ppStmt, 0);
  }

  while ((v28 - 5) < 2);
  v29 = v28;
  if (v27)
  {
    free(v27);
  }

  v30 = (v29 - 100) < 2 || v29 == 0;
  if (v30 || (ErrorCode = IMDCreateCFErrorWithQueryErrorCode(v29, *(a1 + 56), *(a1 + 48))) == 0)
  {
    v31 = ppStmt;
    *(a1 + 32) = ppStmt;
    if (!v31)
    {
      v32 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF2308(v32, v33);
      }
    }
  }

  else
  {
    v35 = ErrorCode;
    IMDSqlOperationSetError(a1, ErrorCode);
    CFRelease(v35);
  }

  return *(a1 + 168) == 0;
}

void __XPCServerIMDAttachmentRecordDeleteTombStonedAttachmentsToDeleteFromCloudKit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7AE0638;
  block[3] = &unk_1E7CB7FD8;
  block[4] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v4, v5);
}

uint64_t sub_1B7AE0448(int a1, int a2, sqlite3_stmt *pStmt, unint64_t *a4)
{
  if (a1 == 2)
  {
    v4 = *a4;
    if (*a4 >= 0x3BAA0C40)
    {
      v5 = sqlite3_expanded_sql(pStmt);
      v6 = objc_alloc(MEMORY[0x1E696AEC0]);
      v8 = objc_msgSend_initWithFormat_(v6, v7, @"%s", v5);
      sqlite3_free(v5);
      if ((objc_msgSend_containsString_(v8, v9, @"EXPLAIN QUERY PLAN") & 1) == 0)
      {
        sub_1B7B6AC34(v8, v4 / 0xF4240);
      }
    }
  }

  return 0;
}

BOOL IMDSqlOperationRelease(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_1B7ADFD40(a1);
    v4 = *(a1 + 168);
    v5 = v4 == 0;
    if (v4)
    {
      IMDSqlOperationGetError(a1, a2);
    }

    if (*(a1 + 16))
    {
      v6 = *(a1 + 168);
      v7 = IMDatabaseLogHandle();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      if (v6)
      {
        if (v8)
        {
          sub_1B7CF2E0C(a1, v7, v9);
        }

        IMDSqlOperationRevertTransaction(a1);
      }

      else
      {
        if (v8)
        {
          sub_1B7CF2E98(v7);
        }

        IMDSqlOperationCommitTransaction(a1);
      }

      v12 = *(a1 + 16);
      if (v12)
      {
        CFRelease(v12);
        *(a1 + 16) = 0;
      }
    }

    if (*(a1 + 8))
    {
      CSDBSqliteDatabaseReleaseSqliteConnection();
      *(a1 + 8) = 0;
    }

    v13 = *(a1 + 168);
    if (v13)
    {
      CFRelease(v13);
    }

    *(a1 + 144) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  else
  {
    v10 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF2EDC(v10, v11);
    }

    return 0;
  }

  return v5;
}

uint64_t sub_1B7AE0638(uint64_t a1)
{
  IMDAttachmentRecordClearDeleteTombStones();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1B7AE0688()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v1 = 0;
      _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_INFO, "IMDAttachmentRecordClearDeleteTombStones deleted pending sync table", v1, 2u);
    }
  }
}

id sub_1B7AE07C8(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend__legacyDatabaseClient(*(a1 + 32), a2, a3);
  if (objc_opt_respondsToSelector())
  {
    v6 = v3;
  }

  else
  {
    v6 = objc_msgSend_synchronousDatabaseQueryProvider(IMDPersistenceService, v4, v5);
  }

  v7 = v6;

  return v7;
}

uint64_t sub_1B7AE0928()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1B7AE0A6C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x26u);
}

void sub_1B7AE0AC0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0x26u);
}

void sub_1B7AE0AE0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_1B7AE0B74(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

float *sub_1B7AE0BA4(float *result, _DWORD *a2, float a3)
{
  *result = a3;
  *a2 = 1;
  return result;
}

void sub_1B7AE0BB4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t IMDChatRecordCopyChatsSortedByLastMessageDateAndFilteredUsingPredicateWithLimitQuery(int a1, const char *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"AND (%@)", a3);
  }

  else
  {
    v5 = &stru_1F2FA9728;
  }

  if (a1)
  {
    v6 = @"ASC";
  }

  else
  {
    v6 = @"DESC";
  }

  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (a2)
  {
    return objc_msgSend_initWithFormat_(v7, v8, @"SELECT ROWID, guid, style, state, account_id, properties, chat_identifier, service_name, room_name, account_login, is_archived, last_addressed_handle, display_name, group_id, is_filtered, successful_query, engram_id, server_change_token, ck_sync_state, original_group_id, last_read_message_timestamp, cloudkit_record_id, last_addressed_sim_id, is_blackholed, syndication_date, syndication_type, is_recovered, is_deleting_incoming_messages FROM chat LEFT OUTER JOIN chat_message_join ON    chat_message_join.chat_id == chat.rowid    AND chat_message_join.message_date = (SELECT MAX(message_date) FROM chat_message_join WHERE chat_message_join.chat_id = chat.rowid) WHERE    chat.is_archived = 0 %@ GROUP BY    chat.rowid HAVING    chat_message_join.message_date < ? ORDER BY    chat_message_join.message_date %@ LIMIT    ?;", v5, v6);
  }

  else
  {
    return objc_msgSend_initWithFormat_(v7, v8, @"SELECT ROWID, guid, style, state, account_id, properties, chat_identifier, service_name, room_name, account_login, is_archived, last_addressed_handle, display_name, group_id, is_filtered, successful_query, engram_id, server_change_token, ck_sync_state, original_group_id, last_read_message_timestamp, cloudkit_record_id, last_addressed_sim_id, is_blackholed, syndication_date, syndication_type, is_recovered, is_deleting_incoming_messages FROM chat LEFT OUTER JOIN chat_message_join ON    chat_message_join.chat_id == chat.rowid    AND chat_message_join.message_date = (SELECT MAX(message_date) FROM chat_message_join WHERE chat_message_join.chat_id = chat.rowid) WHERE    chat.is_archived = 0 %@ GROUP BY    chat.rowid ORDER BY    chat_message_join.message_date %@ LIMIT    ?;", v5, v6);
  }
}

uint64_t _IMDPerformLockedStatementBlockWithQuery(uint64_t a1, uint64_t a2)
{
  if (!a2 && (v3 = IMDatabaseLogHandle(), os_log_type_enabled(v3, OS_LOG_TYPE_ERROR)))
  {
    sub_1B7CEEB08(v3, v4);
    if (a1)
    {
      goto LABEL_6;
    }
  }

  else if (a1)
  {
    goto LABEL_6;
  }

  v5 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CEEBB0(v5, v6);
  }

LABEL_6:
  IMDEnsureSharedRecordStoreInitialized();
  IMDSharedThreadedRecordStore();
  return CSDBPerformLockedSectionForQueryForReading();
}

uint64_t sub_1B7AE0DCC(uint64_t (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  v5 = a1(0);
  sub_1B7C4BE44(a2, a3);
  if (qword_1EDBE3F50 != -1)
  {
    swift_once();
  }

  v6 = *(qword_1EDBE79E8 + 16);
  v7 = qword_1EDBE3AE0;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = off_1EDBE3AE8;

  os_unfair_lock_lock(v8 + 8);
  v9 = *(v8 + 3);
  if (*(v9 + 16))
  {
    v10 = *(v8 + 3);
    v11 = sub_1B7AFEA28(v5);
    if (v12)
    {
      v13 = *(v8 + 2);
      if (*(v13 + 16))
      {
        v14 = (*(v9 + 56) + 16 * v11);
        v15 = *v14;
        v16 = v14[1];

        v17 = sub_1B7AE11D0(v15, v16);
        v19 = v18;

        if (v19)
        {
          v20 = *(*(v13 + 56) + 8 * v17);

LABEL_12:
          os_unfair_lock_unlock(v8 + 8);

          v28 = *(v20 + 16);

          return v28;
        }
      }
    }
  }

  v21 = sub_1B7CFE8A0();
  if (v21)
  {
    v22 = v21;
    v23 = sub_1B7CFE880();
    v25 = v24;
    v26 = *(v8 + 3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v8 + 3);
    *(v8 + 3) = 0x8000000000000000;
    sub_1B7AE9C00(v23, v25, v5, isUniquelyReferenced_nonNull_native);
    *(v8 + 3) = v31;
    v20 = sub_1B7AE9FE4(v22, v8 + 2);

    goto LABEL_12;
  }

  sub_1B7CFF210();

  sub_1B7C107FC(&qword_1EBA524C8, &qword_1B7D0CAB0);
  v30 = sub_1B7CFEAB0();
  MEMORY[0x1B8CADCA0](v30);

  result = sub_1B7CFF340();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for ChatRecord()
{
  result = qword_1EDBE56F0;
  if (!qword_1EDBE56F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7AE10D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7AE1118(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B7AE1164(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1B7AE11D0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1B7CFF7C0();
  sub_1B7CFEB10();
  v6 = sub_1B7CFF800();

  return sub_1B7AE1248(a1, a2, v6);
}

unint64_t sub_1B7AE1248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1B7CFF590())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id _IMDChatRecordCopyChatsFromRecords(void *a1)
{
  if (a1)
  {
    v3 = objc_alloc(MEMORY[0x1E695DF70]);
    v6 = objc_msgSend_count(a1, v4, v5);
    v8 = objc_msgSend_initWithCapacity_(v3, v7, v6);
    if (objc_msgSend_count(a1, v9, v10))
    {
      v12 = 0;
      v13 = *MEMORY[0x1E695E480];
      do
      {
        objc_msgSend_objectAtIndex_(a1, v11, v12);
        ID = CSDBRecordGetID();
        v15 = sub_1B7AEF890(v13, ID, 0);
        if (v15)
        {
          v18 = v15;
          objc_msgSend_addObject_(v8, v16, v15);
          CFRelease(v18);
        }

        ++v12;
      }

      while (v12 < objc_msgSend_count(a1, v16, v17));
    }

    return v8;
  }

  else
  {
    v20 = MEMORY[0x1E695DEC8];

    return objc_alloc_init(v20);
  }
}

void _IMDChatRecordCopyChatsToXPCArray(const __CFArray *a1, void *a2, char a3, char a4, char a5, int a6)
{
  if (a1)
  {
    if (a2)
    {
      Count = CFArrayGetCount(a1);
      if (Count >= 1)
      {
        v12 = Count;
        for (i = 0; i != v12; ++i)
        {
          v14 = objc_autoreleasePoolPush();
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          v16 = xpc_dictionary_create(0, 0, 0);
          if (v16)
          {
            v17 = v16;
            _IMDChatRecordBulkCopyXPCDictionary(ValueAtIndex, v16, a3, a4, a5, a6);
            xpc_array_append_value(a2, v17);
            xpc_release(v17);
          }

          objc_autoreleasePoolPop(v14);
        }
      }
    }
  }
}

uint64_t sub_1B7AE14D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_1B7AE1520(uint64_t a1, void (*a2)(id))
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69A8368]) initWithXPCObject_];
  if (a2)
  {
    v4 = v3;

    a2(v4);

    sub_1B7AE15D4(a2);
  }

  else
  {
  }
}

uint64_t sub_1B7AE15D4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1B7AE15F8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_object(a2, a2, a3);
  (*(v4 + 16))(v4, v5);
  v6 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1B7CF733C(a1, v6);
  }
}

id _IMDChatRecordCopyChatsFromXPCArray(void *a1)
{
  if (a1)
  {
    v3 = objc_alloc(MEMORY[0x1E695DF70]);
    count = xpc_array_get_count(a1);
    v6 = objc_msgSend_initWithCapacity_(v3, v5, count);
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7AF2A34;
    applier[3] = &unk_1E7CB8400;
    applier[4] = v6;
    xpc_array_apply(a1, applier);
    return v6;
  }

  else
  {
    v8 = MEMORY[0x1E695DEC8];

    return objc_alloc_init(v8);
  }
}

void sub_1B7AE188C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7AE18C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE18D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE18E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE18F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1914(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1954(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1964(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1984(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1994(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE19B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE19C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE19D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1A04(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1A14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1A24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1A34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1A44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1A54(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1A64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1A74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *sub_1B7AE1A84(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1B7AE1AB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1AC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1AD0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1AE0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1AF0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1B00(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1B10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1B20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1B60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B7AE1B70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B7AE1D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL IMDRunSqlOperation(uint64_t a1)
{
  if (a1)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v5 = 0u;
    IMDSqlOperationInitWithSharedCSDBDatabase(&v5);
    (*(a1 + 16))(a1, &v5);
  }

  else
  {
    v2 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CED878(v2, v3);
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v5 = 0u;
    IMDSqlOperationInitWithSharedCSDBDatabase(&v5);
  }

  return IMDSqlOperationRelease(&v5, 0);
}

BOOL _IMDSqlOperationRunQuery(uint64_t a1, CFStringRef theString, uint64_t a3, uint64_t a4)
{
  if (!a1 && (v8 = IMDatabaseLogHandle(), os_log_type_enabled(v8, OS_LOG_TYPE_ERROR)))
  {
    sub_1B7CED568(v8, v9);
    if (theString)
    {
      goto LABEL_6;
    }
  }

  else if (theString)
  {
    goto LABEL_6;
  }

  v10 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CED618(v10, v11);
  }

LABEL_6:
  if (!a1)
  {
    return 0;
  }

  _IMDSqlOperationBeginQuery(a1, theString);
  v12 = *(a1 + 168);
  if (a3 && !v12)
  {
    (*(a3 + 16))(a3);
    v12 = *(a1 + 168);
  }

  if (a4 && !v12)
  {
    (*(a4 + 16))(a4);
  }

  IMDSqlOperationFinishQuery(a1);
  if (*(a1 + 168))
  {
    v13 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CED6C8(a1, v13, v14);
    }
  }

  return *(a1 + 168) == 0;
}

BOOL sub_1B7AE1EF4(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7AE1F84;
  v3[3] = &unk_1E7CB7920;
  v3[4] = *(a1 + 32);
  v3[5] = a2;
  return _IMDSqlOperationRunQuery(a2, @"WITH recoverable_tables_union_all (chat_guid, message_id, delete_date) as( SELECT c.guid, crmj.message_id, crmj.delete_date  FROM chat_recoverable_message_join AS crmj  JOIN chat AS c  ON c.ROWID = crmj.chat_id   UNION ALL  SELECT c.guid, rmp.message_id, rmp.delete_date  FROM recoverable_message_part AS rmp  JOIN chat AS c  ON c.ROWID = rmp.chat_id) SELECT chat_guid, COUNT(message_id), SUM(m.is_read), MIN(delete_date), MAX(delete_date)  FROM recoverable_tables_union_all AS rtua  JOIN message as m  ON rtua.message_id = m.ROWID  WHERE m.item_type == 0 AND NOT (m.group_action_type IN (1,3) AND (m.ROWID IN (SELECT message_id FROM message_attachment_join)))  GROUP BY rtua.chat_guid;", &unk_1F2FA0C70, v3);
}

BOOL sub_1B7AE1F84(uint64_t a1)
{
  v62 = *MEMORY[0x1E69E9840];
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v28 = MEMORY[0x1E69E9820];
    v26 = *MEMORY[0x1E69A78A0];
    v27 = *MEMORY[0x1E69A7898];
    v24 = *MEMORY[0x1E69A7890];
    v25 = *MEMORY[0x1E69A7888];
    do
    {
      v46 = 0;
      v47 = &v46;
      v48 = 0x3032000000;
      v49 = sub_1B7AE1A14;
      v50 = sub_1B7AE2520;
      v51 = 0;
      v42 = 0;
      v43 = &v42;
      v44 = 0x2020000000;
      v45 = 0;
      v38 = 0;
      v39 = &v38;
      v40 = 0x2020000000;
      v41 = 0;
      v34 = 0;
      v35 = &v34;
      v36 = 0x2020000000;
      v37 = 0;
      v30 = 0;
      v31 = &v30;
      v32 = 0x2020000000;
      v33 = 0;
      v3 = *(a1 + 40);
      v29[0] = v28;
      v29[1] = 3221225472;
      v29[2] = sub_1B7B7F180;
      v29[3] = &unk_1E7CBAE08;
      v29[4] = &v46;
      v29[5] = &v42;
      v29[6] = &v38;
      v29[7] = &v34;
      v29[8] = &v30;
      IMDSqlOperationIterateRow(v3, v29);
      if (objc_msgSend_length(v47[5], v4, v5) && (v7 = v43[3]) != 0 && v35[3] && v31[3])
      {
        v8 = v39[3];
        v52[0] = v27;
        v9 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v6, v7);
        v53[0] = v9;
        v52[1] = v26;
        v11 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v10, v7 - v8);
        v53[1] = v11;
        v52[2] = v25;
        v13 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v12, v35[3]);
        v53[2] = v13;
        v52[3] = v24;
        v15 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v14, v31[3]);
        v53[3] = v15;
        v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, v53, v52, 4);

        objc_msgSend_setObject_forKeyedSubscript_(*(*(*(a1 + 32) + 8) + 40), v18, v17, v47[5]);
      }

      else
      {
        v17 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v47[5];
          v20 = v43[3];
          v21 = v35[3];
          v22 = v31[3];
          *buf = 138413058;
          v55 = v19;
          v56 = 2048;
          v57 = v20;
          v58 = 2048;
          v59 = v21;
          v60 = 2048;
          v61 = v22;
          _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_DEFAULT, "Error in column values returned: %@|%llu|%llu|%llu", buf, 0x2Au);
        }
      }

      _Block_object_dispose(&v30, 8);
      _Block_object_dispose(&v34, 8);
      _Block_object_dispose(&v38, 8);
      _Block_object_dispose(&v42, 8);
      _Block_object_dispose(&v46, 8);

      result = IMDSqlOperationHasRows(*(a1 + 40));
    }

    while (result);
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B7AE2354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void sub_1B7AE23AC(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "recoverableMessagesMetadataDictionary");
  if (v3)
  {
    v4 = *(a1 + 32);
    v10 = v3;
    v5 = objc_opt_class();
    v7 = objc_msgSend__codableDictionaryCopiedFromXPCDictionary_objectClass_(v4, v6, v10, v5);
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v3 = v10;
  }
}

uint64_t type metadata accessor for MessageRecord()
{
  result = qword_1EDBE5640;
  if (!qword_1EDBE5640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

CFTypeRef sub_1B7AE267C(void *a1, const char *a2, uint64_t a3)
{
  v3 = a1;
  if (a1)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = -1;
    if (a1[3])
    {
      v4 = *(*(objc_msgSend_messageRecordDescriptor(IMDLegacyRecordBridge, a2, a3) + 80) + 176);
      ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 3), 4);
      v6 = ValueAtIndex;
      if (ValueAtIndex && v4 && *v4)
      {
        v6 = (*v4)(ValueAtIndex);
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9820];
      v11 = 3221225472;
      v12 = sub_1B7AEED40;
      v13 = &unk_1E7CB7920;
      v14 = &v16;
      v15 = a1;
      if (a2)
      {
        _IMDPerformBlock(&v10);
      }

      else
      {
        sub_1B7AEED40(&v10);
      }

      v6 = v17[3];
    }

    _Block_object_dispose(&v16, 8);
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v3 = IMDHandleRecordCreateFromRecordIDUnlocked(*MEMORY[0x1E695E480], v6);
      *(v11 + 24) = v3;
    }

    else
    {
      v7 = *(v3 + 4);
      if (v7)
      {
        v3 = CFRetain(v7);
      }

      else
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = sub_1B7B38970;
        v9[3] = &unk_1E7CB6838;
        v9[4] = &v10;
        __syncXPCIMDMessageRecordCopyHandle_IPCAction(v9, *(v3 + 2));
        v3 = *(v11 + 24);
      }
    }

    _Block_object_dispose(&v10, 8);
  }

  return v3;
}

void IMDMessageRecordBulkCopy(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, CFNumberRef *a12, void *a13, void *a14, void *a15, const void **a16, void *a17, void *a18, void *a19, _BYTE *a20, _BYTE *a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, void *a29, void *a30, void *a31, void *a32, void *a33, void *a34, void *a35, void *a36, void *a37, const void **a38, void *a39, uint64_t a40, void *a41, void *a42, void *a43, void *a44, void *a45, void *a46, void *a47, void *a48, void *a49, void *a50, void *a51, void *a52, void *a53, void *a54, const void **a55, const void **a56, void *a57)
{
  if (a1)
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v171[0] = MEMORY[0x1E69E9820];
      v171[1] = 3221225472;
      v171[2] = sub_1B7B36300;
      v171[3] = &unk_1E7CB81A8;
      v171[4] = a1;
      v171[5] = a3;
      v171[6] = a6;
      v171[7] = a7;
      v171[8] = a8;
      v171[9] = a9;
      v171[10] = a4;
      v171[11] = a18;
      v171[12] = a19;
      v171[13] = a5;
      v171[14] = a10;
      v171[15] = a16;
      v171[16] = a20;
      v171[17] = a21;
      v171[18] = a2;
      v171[19] = a23;
      v171[20] = a25;
      v171[21] = a26;
      v171[22] = a27;
      v171[23] = a28;
      v171[24] = a29;
      v171[25] = a31;
      v171[26] = a32;
      v171[27] = a49;
      v171[28] = a50;
      v171[29] = a51;
      v171[30] = a53;
      v171[31] = a12;
      v171[32] = a11;
      v171[33] = a14;
      v171[34] = a15;
      v171[35] = a17;
      v171[36] = a13;
      v171[37] = a22;
      v171[38] = a24;
      v171[39] = a30;
      v171[40] = a33;
      v171[41] = a34;
      v171[42] = a35;
      v171[43] = a36;
      v171[44] = a37;
      v171[45] = a38;
      v171[46] = a39;
      v171[47] = a41;
      v171[48] = a42;
      v171[49] = a43;
      v171[50] = a44;
      v171[51] = a45;
      v171[52] = a46;
      v171[53] = a47;
      v171[54] = a48;
      v171[55] = a52;
      v171[56] = a54;
      v171[57] = a55;
      v171[58] = a56;
      v171[59] = a57;
      _IMDPerformBlock(v171);
    }

    else
    {
      v65 = *(a1 + 24);
      if (v65)
      {
        valuePtr = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v65, 18);
        v161 = CFArrayGetValueAtIndex(*(a1 + 24), 19);
        v160 = CFArrayGetValueAtIndex(*(a1 + 24), 20);
        v159 = CFArrayGetValueAtIndex(*(a1 + 24), 21);
        v158 = CFArrayGetValueAtIndex(*(a1 + 24), 22);
        v157 = CFArrayGetValueAtIndex(*(a1 + 24), 23);
        v156 = CFArrayGetValueAtIndex(*(a1 + 24), 24);
        v155 = CFArrayGetValueAtIndex(*(a1 + 24), 25);
        v154 = CFArrayGetValueAtIndex(*(a1 + 24), 26);
        v153 = CFArrayGetValueAtIndex(*(a1 + 24), 27);
        v152 = CFArrayGetValueAtIndex(*(a1 + 24), 28);
        v67 = CFArrayGetValueAtIndex(*(a1 + 24), 35);
        v149 = CFArrayGetValueAtIndex(*(a1 + 24), 29);
        v146 = CFArrayGetValueAtIndex(*(a1 + 24), 30);
        v143 = CFArrayGetValueAtIndex(*(a1 + 24), 31);
        v141 = CFArrayGetValueAtIndex(*(a1 + 24), 17);
        v139 = CFArrayGetValueAtIndex(*(a1 + 24), 72);
        v137 = CFArrayGetValueAtIndex(*(a1 + 24), 73);
        v151 = CFArrayGetValueAtIndex(*(a1 + 24), 37);
        v150 = CFArrayGetValueAtIndex(*(a1 + 24), 38);
        v148 = CFArrayGetValueAtIndex(*(a1 + 24), 46);
        v145 = CFArrayGetValueAtIndex(*(a1 + 24), 63);
        v142 = CFArrayGetValueAtIndex(*(a1 + 24), 66);
        v140 = CFArrayGetValueAtIndex(*(a1 + 24), 67);
        v138 = CFArrayGetValueAtIndex(*(a1 + 24), 77);
        v136 = CFArrayGetValueAtIndex(*(a1 + 24), 79);
        v135 = CFArrayGetValueAtIndex(*(a1 + 24), 80);
        v134 = CFArrayGetValueAtIndex(*(a1 + 24), 81);
        v147 = CFArrayGetValueAtIndex(*(a1 + 24), 83);
        v144 = CFArrayGetValueAtIndex(*(a1 + 24), 86);
        v132 = CFArrayGetValueAtIndex(*(a1 + 24), 90);
        v133 = CFArrayGetValueAtIndex(*(a1 + 24), 87);
        v68 = CFArrayGetValueAtIndex(*(a1 + 24), 91);
        if (ValueAtIndex)
        {
          valuePtr |= 1uLL;
        }

        if (v161)
        {
          valuePtr |= 2uLL;
        }

        if (v160)
        {
          valuePtr |= 4uLL;
        }

        if (v159)
        {
          valuePtr |= 8uLL;
        }

        if (v158)
        {
          valuePtr |= 0x20uLL;
        }

        if (v157)
        {
          valuePtr |= 0x40uLL;
        }

        if (v156)
        {
          valuePtr |= 0x800uLL;
        }

        if (v155)
        {
          valuePtr |= 0x2000uLL;
        }

        if (v154)
        {
          valuePtr |= 0x4000uLL;
        }

        if (v153)
        {
          valuePtr |= 0x8000uLL;
        }

        if (v152)
        {
          valuePtr |= 0x10000uLL;
        }

        if (v149)
        {
          valuePtr |= 0x20000uLL;
        }

        if (v146)
        {
          valuePtr |= 0x40000uLL;
        }

        if (v143)
        {
          valuePtr |= 0x80000uLL;
        }

        if (v141)
        {
          valuePtr |= 0x1000uLL;
        }

        if (v139)
        {
          valuePtr |= 0x400000000uLL;
        }

        if (v137)
        {
          valuePtr |= 0x800000000uLL;
        }

        if (v67)
        {
          valuePtr |= 0x100000uLL;
        }

        if (v151)
        {
          valuePtr |= 0x200000uLL;
        }

        if (v150)
        {
          valuePtr |= 0x400000uLL;
        }

        if (v148)
        {
          valuePtr |= 0x1000000uLL;
        }

        if (v145)
        {
          valuePtr |= 0x4000000uLL;
        }

        if (v142)
        {
          valuePtr |= 0x8000000uLL;
        }

        if (v140)
        {
          valuePtr |= 0x10000000uLL;
        }

        if (v138)
        {
          valuePtr |= 0x1000000000uLL;
        }

        if (v136)
        {
          valuePtr |= 0x200000000uLL;
        }

        if (v135)
        {
          valuePtr |= 0x8000000000uLL;
        }

        if (v134)
        {
          valuePtr |= 0x4000000000uLL;
        }

        if (v132)
        {
          valuePtr |= 0x80000000000uLL;
        }

        if (v147)
        {
          valuePtr |= 0x2000000000uLL;
        }

        if (v144)
        {
          valuePtr |= 0x20000000000uLL;
        }

        if (v133)
        {
          valuePtr |= 0x40000000000uLL;
        }

        if (v68)
        {
          valuePtr |= 0x100000000000uLL;
        }

        if (CFArrayGetValueAtIndex(*(a1 + 24), 49) == 1)
        {
          valuePtr |= 0x2000000uLL;
        }

        if (a12)
        {
          *a12 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
        }

        if (a3)
        {
          *a3 = *(a1 + 16);
        }

        if (a6)
        {
          v69 = CFArrayGetValueAtIndex(*(a1 + 24), 14);
          if (v69)
          {
            CFNumberGetValue(v69, kCFNumberSInt64Type, a6);
          }
        }

        if (a7)
        {
          v70 = CFArrayGetValueAtIndex(*(a1 + 24), 15);
          if (v70)
          {
            CFNumberGetValue(v70, kCFNumberSInt64Type, a7);
          }
        }

        if (a8)
        {
          v71 = CFArrayGetValueAtIndex(*(a1 + 24), 16);
          if (v71)
          {
            CFNumberGetValue(v71, kCFNumberSInt64Type, a8);
          }
        }

        if (a9)
        {
          v72 = CFArrayGetValueAtIndex(*(a1 + 24), 39);
          if (v72)
          {
            CFNumberGetValue(v72, kCFNumberSInt64Type, a9);
          }
        }

        if (a36)
        {
          v73 = CFArrayGetValueAtIndex(*(a1 + 24), 57);
          if (v73)
          {
            CFNumberGetValue(v73, kCFNumberSInt64Type, a36);
          }
        }

        if (a4)
        {
          *a4 = CFArrayGetValueAtIndex(*(a1 + 24), 2);
        }

        if (a18)
        {
          *a18 = CFArrayGetValueAtIndex(*(a1 + 24), 13);
        }

        if (a19)
        {
          *a19 = CFArrayGetValueAtIndex(*(a1 + 24), 9);
        }

        if (a2)
        {
          *a2 = CFArrayGetValueAtIndex(*(a1 + 24), 40);
        }

        if (a23)
        {
          *a23 = CFArrayGetValueAtIndex(*(a1 + 24), 41);
        }

        if (a25)
        {
          *a25 = CFArrayGetValueAtIndex(*(a1 + 24), 43);
        }

        if (a27)
        {
          *a27 = CFArrayGetValueAtIndex(*(a1 + 24), 45);
        }

        if (a26)
        {
          *a26 = CFArrayGetValueAtIndex(*(a1 + 24), 44);
        }

        if (a29)
        {
          *a29 = CFArrayGetValueAtIndex(*(a1 + 24), 48);
        }

        if (a28)
        {
          *a28 = CFArrayGetValueAtIndex(*(a1 + 24), 47);
        }

        if (a5)
        {
          v74 = CFArrayGetValueAtIndex(*(a1 + 24), 0);
          v75 = v74;
          if (v74)
          {
            CFRetain(v74);
          }

          *a5 = v75;
        }

        if (a10)
        {
          v76 = CFArrayGetValueAtIndex(*(a1 + 24), 1);
          v77 = v76;
          if (v76)
          {
            CFRetain(v76);
          }

          *a10 = v77;
        }

        if (a16)
        {
          *a16 = CFArrayGetValueAtIndex(*(a1 + 24), 4);
        }

        if (a20)
        {
          *a20 = CFArrayGetValueAtIndex(*(a1 + 24), 33);
        }

        if (a21)
        {
          *a21 = CFArrayGetValueAtIndex(*(a1 + 24), 35);
        }

        if (a11)
        {
          v78 = CFArrayGetValueAtIndex(*(a1 + 24), 7);
          v79 = v78;
          if (v78)
          {
            CFRetain(v78);
          }

          *a11 = v79;
        }

        if (a24)
        {
          v80 = CFArrayGetValueAtIndex(*(a1 + 24), 42);
          v81 = v80;
          if (v80)
          {
            CFRetain(v80);
          }

          *a24 = v81;
        }

        if (a14)
        {
          v82 = CFArrayGetValueAtIndex(*(a1 + 24), 11);
          v83 = v82;
          if (v82)
          {
            CFRetain(v82);
          }

          *a14 = v83;
        }

        if (a15)
        {
          v84 = CFArrayGetValueAtIndex(*(a1 + 24), 12);
          v85 = v84;
          if (v84)
          {
            CFRetain(v84);
          }

          *a15 = v85;
        }

        if (a17)
        {
          v86 = CFArrayGetValueAtIndex(*(a1 + 24), 5);
          v87 = v86;
          if (v86)
          {
            CFRetain(v86);
          }

          *a17 = v87;
        }

        if (a13)
        {
          v88 = CFArrayGetValueAtIndex(*(a1 + 24), 10);
          v89 = v88;
          if (v88)
          {
            CFRetain(v88);
          }

          *a13 = v89;
        }

        if (a22)
        {
          v90 = CFArrayGetValueAtIndex(*(a1 + 24), 34);
          v91 = v90;
          if (v90)
          {
            CFRetain(v90);
          }

          *a22 = v91;
        }

        if (a30)
        {
          v92 = CFArrayGetValueAtIndex(*(a1 + 24), 50);
          v93 = v92;
          if (v92)
          {
            CFRetain(v92);
          }

          *a30 = v93;
        }

        if (a31)
        {
          *a31 = CFArrayGetValueAtIndex(*(a1 + 24), 51);
        }

        if (a32)
        {
          v94 = CFArrayGetValueAtIndex(*(a1 + 24), 55);
          v95 = CFArrayGetValueAtIndex(*(a1 + 24), 56);
          *a32 = v94;
          a32[1] = v95;
        }

        if (a33)
        {
          v96 = CFArrayGetValueAtIndex(*(a1 + 24), 52);
          v97 = v96;
          if (v96)
          {
            CFRetain(v96);
          }

          *a33 = v97;
        }

        if (a34)
        {
          v98 = CFArrayGetValueAtIndex(*(a1 + 24), 53);
          v99 = v98;
          if (v98)
          {
            CFRetain(v98);
          }

          *a34 = v99;
        }

        if (a35)
        {
          v100 = CFArrayGetValueAtIndex(*(a1 + 24), 54);
          v101 = v100;
          if (v100)
          {
            CFRetain(v100);
          }

          *a35 = v101;
        }

        if (a37)
        {
          v102 = CFArrayGetValueAtIndex(*(a1 + 24), 58);
          v103 = v102;
          if (v102)
          {
            CFRetain(v102);
          }

          *a37 = v103;
        }

        if (a38)
        {
          *a38 = CFArrayGetValueAtIndex(*(a1 + 24), 59);
        }

        if (a39)
        {
          v104 = CFArrayGetValueAtIndex(*(a1 + 24), 60);
          v105 = v104;
          if (v104)
          {
            CFRetain(v104);
          }

          *a39 = v105;
        }

        if (a41)
        {
          v106 = CFArrayGetValueAtIndex(*(a1 + 24), 61);
          v107 = v106;
          if (v106)
          {
            CFRetain(v106);
          }

          *a41 = v107;
        }

        if (a42)
        {
          v108 = CFArrayGetValueAtIndex(*(a1 + 24), 62);
          v109 = v108;
          if (v108)
          {
            CFRetain(v108);
          }

          *a42 = v109;
        }

        if (a43)
        {
          v110 = CFArrayGetValueAtIndex(*(a1 + 24), 64);
          v111 = v110;
          if (v110)
          {
            CFRetain(v110);
          }

          *a43 = v111;
        }

        if (a44)
        {
          v112 = CFArrayGetValueAtIndex(*(a1 + 24), 65);
          if (v112)
          {
            CFNumberGetValue(v112, kCFNumberSInt64Type, a44);
          }
        }

        if (a45)
        {
          v113 = CFArrayGetValueAtIndex(*(a1 + 24), 68);
          v114 = v113;
          if (v113)
          {
            CFRetain(v113);
          }

          *a45 = v114;
        }

        if (a46)
        {
          v115 = CFArrayGetValueAtIndex(*(a1 + 24), 69);
          v116 = v115;
          if (v115)
          {
            CFRetain(v115);
          }

          *a46 = v116;
        }

        if (a47)
        {
          v117 = CFArrayGetValueAtIndex(*(a1 + 24), 70);
          v118 = v117;
          if (v117)
          {
            CFRetain(v117);
          }

          *a47 = v118;
        }

        if (a48)
        {
          v119 = CFArrayGetValueAtIndex(*(a1 + 24), 71);
          v120 = v119;
          if (v119)
          {
            CFRetain(v119);
          }

          *a48 = v120;
        }

        if (a49)
        {
          v121 = CFArrayGetValueAtIndex(*(a1 + 24), 78);
          if (v121)
          {
            CFNumberGetValue(v121, kCFNumberSInt64Type, a49);
          }
        }

        if (a50)
        {
          v122 = CFArrayGetValueAtIndex(*(a1 + 24), 75);
          if (v122)
          {
            CFNumberGetValue(v122, kCFNumberSInt64Type, a50);
          }
        }

        if (a51)
        {
          v123 = CFArrayGetValueAtIndex(*(a1 + 24), 76);
          if (v123)
          {
            CFNumberGetValue(v123, kCFNumberSInt64Type, a51);
          }
        }

        if (a52)
        {
          v124 = CFArrayGetValueAtIndex(*(a1 + 24), 82);
          v125 = v124;
          if (v124)
          {
            CFRetain(v124);
          }

          *a52 = v125;
        }

        if (a53)
        {
          v126 = CFArrayGetValueAtIndex(*(a1 + 24), 84);
          v127 = v126;
          if (v126)
          {
            CFRetain(v126);
          }

          *a53 = v127;
        }

        if (a54)
        {
          v128 = CFArrayGetValueAtIndex(*(a1 + 24), 85);
          v129 = v128;
          if (v128)
          {
            CFRetain(v128);
          }

          *a54 = v129;
        }

        if (a55)
        {
          *a55 = CFArrayGetValueAtIndex(*(a1 + 24), 88);
        }

        if (a56)
        {
          *a56 = CFArrayGetValueAtIndex(*(a1 + 24), 89);
        }

        if (a57)
        {
          v130 = CFArrayGetValueAtIndex(*(a1 + 24), 92);
          v131 = v130;
          if (v130)
          {
            CFRetain(v130);
          }

          *a57 = v131;
        }
      }
    }
  }

  else
  {
    v57 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEF808(v57, v58, v59, v60, v61, v62, v63, v64);
    }
  }
}