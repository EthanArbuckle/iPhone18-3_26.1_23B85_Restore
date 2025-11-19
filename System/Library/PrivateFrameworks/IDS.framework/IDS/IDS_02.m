void sub_195A7B080(void *a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1[4] + 16) object];
    [v4 connection:v3 incomingAccessoryData:a1[5] fromURI:a1[6] context:a1[7]];
  }
}

void sub_195A7B100(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    v2 = [*(a1 + 32) connectionType];
    v3 = [*(a1 + 40) daemonController];
    v4 = *(a1 + 48);
    v5 = [*(a1 + 56) prefixedURI];
    v6 = [*(*(a1 + 40) + 40) _internal];
    v7 = [v6 uniqueID];
    [v3 sendAppAckWithGUID:v4 toDestination:v5 forAccountWithUniqueID:v7 connectionType:v2];
  }

  if (*(a1 + 64) || *(a1 + 72))
  {
    v15 = [*(a1 + 40) daemonController];
    v8 = [*(a1 + 32) storageGuid];
    v9 = [*(a1 + 32) outgoingResponseIdentifier];
    v10 = [*(*(a1 + 40) + 40) _internal];
    v11 = [v10 uniqueID];
    v12 = *(a1 + 72);
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 80), "length")}];
    v14 = [*(a1 + 32) priority];
    [v15 acknowledgeMessageWithStorageGUID:v8 realGUID:v9 forAccountWithUniqueID:v11 broadcastTime:v12 messageSize:v13 priority:v14 broadcastID:objc_msgSend(*(a1 + 32) connectionType:{"broadcastID"), objc_msgSend(*(a1 + 32), "connectionType")}];
  }
}

void sub_195A7B748(void *a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1[4] + 16) object];
    [v4 connection:v3 incomingAccessoryReportMessage:a1[5] accessoryID:a1[6] controllerID:a1[7] context:a1[8]];
  }
}

void sub_195A7B7C8(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v2 = [*(a1 + 32) connectionType];
    v3 = [*(a1 + 40) daemonController];
    v4 = *(a1 + 48);
    v5 = [*(a1 + 56) prefixedURI];
    v6 = [*(*(a1 + 40) + 40) _internal];
    v7 = [v6 uniqueID];
    [v3 sendAppAckWithGUID:v4 toDestination:v5 forAccountWithUniqueID:v7 connectionType:v2];
  }

  if (*(a1 + 64) || *(a1 + 72))
  {
    v14 = [*(a1 + 40) daemonController];
    v8 = [*(a1 + 32) storageGuid];
    v9 = [*(a1 + 32) outgoingResponseIdentifier];
    v10 = [*(*(a1 + 40) + 40) _internal];
    v11 = [v10 uniqueID];
    v12 = *(a1 + 72);
    v13 = [*(a1 + 32) priority];
    [v14 acknowledgeMessageWithStorageGUID:v8 realGUID:v9 forAccountWithUniqueID:v11 broadcastTime:v12 messageSize:0 priority:v13 broadcastID:objc_msgSend(*(a1 + 32) connectionType:{"broadcastID"), objc_msgSend(*(a1 + 32), "connectionType")}];
  }
}

void sub_195A7BB88(void *a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1[4] + 16) object];
    [v4 connection:v3 incomingInvitation:a1[5] fromURI:a1[6] context:a1[7]];
  }
}

void sub_195A7BE18(void *a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1[4] + 16) object];
    [v4 connection:v3 incomingInvitationUpdate:a1[5] fromURI:a1[6] context:a1[7]];
  }
}

void sub_195A7C58C(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [*(a1[4] + 16) object];
    [v3 connection:v4 incomingProtobuf:a1[5] fromURI:a1[6] context:a1[7]];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = +[IDSLogging IDSConnection];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138412546;
        v8 = @"(unknown)";
        v9 = 2112;
        v10 = v3;
        _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, " => Handed protobuf ID %@ to delegate: %@", &v7, 0x16u);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_195A7C6B8(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    if (*(a1 + 89) == 1)
    {
      v2 = [*(a1 + 32) directMessageConnection];
      [v2 sendAppAckWithGUID:*(a1 + 40)];
    }

    else
    {
      v3 = [*(a1 + 48) connectionType];
      v2 = [*(a1 + 32) daemonController];
      v4 = *(a1 + 40);
      v5 = [*(a1 + 56) prefixedURI];
      v6 = [*(*(a1 + 32) + 40) _internal];
      v7 = [v6 uniqueID];
      [v2 sendAppAckWithGUID:v4 toDestination:v5 forAccountWithUniqueID:v7 connectionType:v3];
    }
  }

  if ((*(a1 + 89) & 1) == 0 && (*(a1 + 64) || *(a1 + 72)))
  {
    v17 = [*(a1 + 32) daemonController];
    v8 = [*(a1 + 48) storageGuid];
    v9 = [*(a1 + 48) outgoingResponseIdentifier];
    v10 = [*(*(a1 + 32) + 40) _internal];
    v11 = [v10 uniqueID];
    v12 = MEMORY[0x1E696AD98];
    v13 = *(a1 + 72);
    v14 = [*(a1 + 80) data];
    v15 = [v12 numberWithUnsignedInteger:{objc_msgSend(v14, "length")}];
    v16 = [*(a1 + 48) priority];
    [v17 acknowledgeMessageWithStorageGUID:v8 realGUID:v9 forAccountWithUniqueID:v11 broadcastTime:v13 messageSize:v15 priority:v16 broadcastID:objc_msgSend(*(a1 + 48) connectionType:{"broadcastID"), objc_msgSend(*(a1 + 48), "connectionType")}];
  }
}

void sub_195A7CDF0(void *a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1[4] + 16) object];
    [v4 connection:v3 didFlushCacheForRemoteURI:a1[5] fromURI:a1[6] guid:a1[7]];
  }
}

void sub_195A7D00C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 16) object];
    [v4 connection:v3 didFlushCacheForKTPeerURI:*(a1 + 40)];
  }
}

void sub_195A7D3F8(void *a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1[4] + 16) object];
    [v4 connection:v3 incomingPendingMessageFromURI:a1[5] context:a1[6]];
  }
}

void sub_195A7D7CC(void *a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1[4] + 16) object];
    [v4 connection:v3 incomingPendingResourceWithMetadata:a1[5] guid:a1[6] fromURI:a1[7] context:a1[8]];
  }
}

void sub_195A7DCF0(void *a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1[4] + 16) object];
    v4 = a1[9];
    [v5 connection:v3 account:*(a1[4] + 40) sessionInviteReceived:a1[5] fromID:a1[6] transportType:a1[7] options:a1[8] context:v4 messageContext:a1[10]];
  }
}

void sub_195A7E0DC(void *a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1[4] + 16) object];
    [v4 connection:v3 account:*(a1[4] + 40) inviteDroppedForSessionID:a1[5] fromID:a1[6] context:a1[7] error:a1[8]];
  }
}

void sub_195A7E3F0(void *a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1[4] + 16) object];
    [v4 connection:v3 account:*(a1[4] + 40) receivedGroupSessionParticipantUpdate:a1[5] context:a1[6]];
  }
}

void sub_195A7E6A8(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 16) object];
    [v4 connection:v3 account:*(*(a1 + 32) + 40) receivedGroupSessionParticipantDataUpdate:*(a1 + 40)];
  }
}

void sub_195A7E888(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 16) object];
    [v4 connection:v3 didHintCheckingTransportLogWithReason:*(a1 + 40)];
  }
}

void sub_195A7EA84(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

uint64_t sub_195A7EAE8()
{
  qword_1EAEDC100 = objc_alloc_init(_IDSSessionStore);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_195A7ED74()
{
  qword_1ED5DE070 = objc_alloc_init(IDSDaemonProtocolController);

  return MEMORY[0x1EEE66BB8]();
}

void sub_195A7F140(uint64_t a1)
{
  v2 = +[IDSLogging DaemonProxy];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Invalidation Handled", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setConnection:0];
}

void sub_195A7F1CC()
{
  v0 = +[IDSLogging DaemonProxy];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1959FF000, v0, OS_LOG_TYPE_DEFAULT, "Interruption Handled", v1, 2u);
  }
}

void sub_195A7F514(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 addObject:*(a1 + 32)];
  if (IMShouldLog() && [v3 count])
  {
    sub_195A7F588(v3);
  }
}

void sub_195A7F588(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E69A6138] watchPairing];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v1;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Unacknowledged IDSServiceDelegate objects: %@", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void sub_195A7F8E0(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 removeObject:*(a1 + 32)];
  if (IMShouldLog() && [v3 count])
  {
    sub_195A7F588(v3);
  }
}

void sub_195A7FA40(uint64_t a1, void *a2)
{
  v2 = a2;
  if (IMShouldLog() && [v2 count])
  {
    sub_195A7F588(v2);
  }

  [v2 removeAllObjects];
}

dispatch_data_t sub_195A7FB04(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = __ROR8__(a2 - a1 + *a1 - 1498, 2);
  v7 = a1[2] - a2;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v8 = sub_195A7FC3C;
      goto LABEL_11;
    }

    if (v6 == 3)
    {
      v8 = sub_195A7FC14;
      goto LABEL_11;
    }

LABEL_8:
    destructor[5] = v2;
    destructor[6] = v3;
    destructor[0] = MEMORY[0x1E69E9820];
    destructor[1] = 3221225472;
    destructor[2] = sub_195A7FC64;
    destructor[3] = &unk_1E743EBC0;
    destructor[4] = a1;
    return dispatch_data_create((v5 + a2), v7, 0, destructor);
  }

  if (!v6)
  {
    v8 = sub_195A7FC50;
    goto LABEL_11;
  }

  if (v6 != 1)
  {
    goto LABEL_8;
  }

  v8 = sub_195A7FC28;
LABEL_11:

  return MEMORY[0x1EEE6FED8](v5 + a2, v7, 0, v8);
}

void sub_195A7FC78(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (v7)
  {
    v7[2](v7, v9);
  }

  else if (v8)
  {
    v8[2](v8, v9, a4);
  }

  else
  {
    v10 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "Warning! No write completion handler to invoke.", v11, 2u);
    }
  }
}

void IDSLocalPairingAddPairedDevice(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (_IDSRunningInDaemon())
  {
    sub_195B308E0();
  }

  v8 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v20 = "void IDSLocalPairingAddPairedDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v21 = 2080;
    v22 = "cbuuid";
    v23 = 2112;
    v24 = v5;
    v25 = 2080;
    v26 = "block";
    v27 = 2048;
    v28 = v9;
    v29 = 2080;
    v30 = "queue";
    v31 = 2048;
    v32 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v10 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v20 = "void IDSLocalPairingAddPairedDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v21 = 2080;
    v22 = "cbuuid";
    v23 = 2112;
    v24 = v5;
    v25 = 2080;
    v26 = "block";
    v27 = 2048;
    v28 = v11;
    v29 = 2080;
    v30 = "queue";
    v31 = 2048;
    v32 = v7;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v12 = sub_195A803DC(v6, v7);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195A8059C;
  v16[3] = &unk_1E7441120;
  v17 = v5;
  v18 = v12;
  v13 = v12;
  v14 = v5;
  sub_195A804D8(v16, v13);

  v15 = *MEMORY[0x1E69E9840];
}

id sub_195A803DC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    v4 = MEMORY[0x1E69E96A0];
    v5 = MEMORY[0x1E69E96A0];
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A845F8;
  v15[3] = &unk_1E743F138;
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = &unk_1F09E6200;
  }

  v16 = v4;
  v17 = v6;
  v7 = v4;
  v8 = v6;
  v9 = MEMORY[0x19A8BBEF0](v15);
  v13 = MEMORY[0x19A8BBEF0](v9, v10, v11, v12);

  return v13;
}

void sub_195A804D8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A8481C;
  v7[3] = &unk_1E743FC78;
  v8 = v4;
  v9 = v3;
  v5 = v3;
  v6 = v4;
  [IDSXPCDaemonController performDaemonControllerTask:v7];
}

uint64_t sub_195A8059C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return MEMORY[0x1EEE66B58](a2, sel_addPairedDevice_completion_);
}

void IDSLocalPairingAddPairedDeviceWithInfo(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (_IDSRunningInDaemon())
  {
    sub_195B3090C();
  }

  v8 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v20 = "void IDSLocalPairingAddPairedDeviceWithInfo(IDSLocalPairingAddPairedDeviceInfo *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v21 = 2080;
    v22 = "info";
    v23 = 2112;
    v24 = v5;
    v25 = 2080;
    v26 = "block";
    v27 = 2048;
    v28 = v9;
    v29 = 2080;
    v30 = "queue";
    v31 = 2048;
    v32 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v10 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v20 = "void IDSLocalPairingAddPairedDeviceWithInfo(IDSLocalPairingAddPairedDeviceInfo *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v21 = 2080;
    v22 = "info";
    v23 = 2112;
    v24 = v5;
    v25 = 2080;
    v26 = "block";
    v27 = 2048;
    v28 = v11;
    v29 = 2080;
    v30 = "queue";
    v31 = 2048;
    v32 = v7;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v12 = sub_195A803DC(v6, v7);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195A8083C;
  v16[3] = &unk_1E7441120;
  v17 = v5;
  v18 = v12;
  v13 = v12;
  v14 = v5;
  sub_195A804D8(v16, v13);

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195A8083C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return MEMORY[0x1EEE66B58](a2, sel_addPairedDeviceWithInfo_completion_);
}

void IDSLocalPairingUpdatePairedDevicePairingType(void *a1, uint64_t a2, void *a3, void *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  v9 = a4;
  if (_IDSRunningInDaemon())
  {
    sub_195B30938();
  }

  v10 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    v12 = MEMORY[0x19A8BBEF0](v8);
    *buf = 136317186;
    v25 = "void IDSLocalPairingUpdatePairedDevicePairingType(NSUUID *__strong, IDSPairingType, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v26 = 2080;
    v27 = "cbuuid";
    v28 = 2112;
    v29 = v7;
    v30 = 2080;
    v31 = "@(pairingType)";
    v32 = 2112;
    v33 = v11;
    v34 = 2080;
    v35 = "block";
    v36 = 2048;
    v37 = v12;
    v38 = 2080;
    v39 = "queue";
    v40 = 2048;
    v41 = v9;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x5Cu);
  }

  v13 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    v15 = MEMORY[0x19A8BBEF0](v8);
    *buf = 136317186;
    v25 = "void IDSLocalPairingUpdatePairedDevicePairingType(NSUUID *__strong, IDSPairingType, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v26 = 2080;
    v27 = "cbuuid";
    v28 = 2112;
    v29 = v7;
    v30 = 2080;
    v31 = "@(pairingType)";
    v32 = 2112;
    v33 = v14;
    v34 = 2080;
    v35 = "block";
    v36 = 2048;
    v37 = v15;
    v38 = 2080;
    v39 = "queue";
    v40 = 2048;
    v41 = v9;
    _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x5Cu);
  }

  v16 = sub_195A803DC(v8, v9);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_195A80B70;
  v20[3] = &unk_1E7441148;
  v22 = v8;
  v23 = a2;
  v21 = v7;
  v17 = v8;
  v18 = v7;
  sub_195A804D8(v20, v16);

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195A80B70(void *a1, uint64_t a2)
{
  v3 = a1[5];
  v2 = a1[6];
  v4 = a1[4];
  return MEMORY[0x1EEE66B58](a2, sel_updatePairedDevice_pairingType_completion_);
}

void IDSLocalPairingConnectPairedDevice(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (_IDSRunningInDaemon())
  {
    sub_195B30964();
  }

  v8 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v20 = "void IDSLocalPairingConnectPairedDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v21 = 2080;
    v22 = "cbuuid";
    v23 = 2112;
    v24 = v5;
    v25 = 2080;
    v26 = "block";
    v27 = 2048;
    v28 = v9;
    v29 = 2080;
    v30 = "queue";
    v31 = 2048;
    v32 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v10 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v20 = "void IDSLocalPairingConnectPairedDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v21 = 2080;
    v22 = "cbuuid";
    v23 = 2112;
    v24 = v5;
    v25 = 2080;
    v26 = "block";
    v27 = 2048;
    v28 = v11;
    v29 = 2080;
    v30 = "queue";
    v31 = 2048;
    v32 = v7;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v12 = sub_195A803DC(v6, v7);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195A80E14;
  v16[3] = &unk_1E7441120;
  v17 = v5;
  v18 = v12;
  v13 = v12;
  v14 = v5;
  sub_195A804D8(v16, v13);

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195A80E14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return MEMORY[0x1EEE66B58](a2, sel_connectPairedDeviceWithID_completion_);
}

void IDSLocalPairingSetupCompletedForPairedDevice(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (_IDSRunningInDaemon())
  {
    sub_195B30990();
  }

  v8 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v20 = "void IDSLocalPairingSetupCompletedForPairedDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v21 = 2080;
    v22 = "cbuuid";
    v23 = 2112;
    v24 = v5;
    v25 = 2080;
    v26 = "block";
    v27 = 2048;
    v28 = v9;
    v29 = 2080;
    v30 = "queue";
    v31 = 2048;
    v32 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v10 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v20 = "void IDSLocalPairingSetupCompletedForPairedDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v21 = 2080;
    v22 = "cbuuid";
    v23 = 2112;
    v24 = v5;
    v25 = 2080;
    v26 = "block";
    v27 = 2048;
    v28 = v11;
    v29 = 2080;
    v30 = "queue";
    v31 = 2048;
    v32 = v7;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v12 = sub_195A803DC(v6, v7);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195A810B4;
  v16[3] = &unk_1E7441120;
  v17 = v5;
  v18 = v12;
  v13 = v12;
  v14 = v5;
  sub_195A804D8(v16, v13);

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195A810B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return MEMORY[0x1EEE66B58](a2, sel_setupCompletedForPairedDeviceWithID_completion_);
}

void IDSLocalPairingSwitchActivePairedDevice(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (_IDSRunningInDaemon())
  {
    sub_195B309BC();
  }

  v8 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v20 = "void IDSLocalPairingSwitchActivePairedDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v21 = 2080;
    v22 = "cbuuid";
    v23 = 2112;
    v24 = v5;
    v25 = 2080;
    v26 = "block";
    v27 = 2048;
    v28 = v9;
    v29 = 2080;
    v30 = "queue";
    v31 = 2048;
    v32 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v10 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v20 = "void IDSLocalPairingSwitchActivePairedDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v21 = 2080;
    v22 = "cbuuid";
    v23 = 2112;
    v24 = v5;
    v25 = 2080;
    v26 = "block";
    v27 = 2048;
    v28 = v11;
    v29 = 2080;
    v30 = "queue";
    v31 = 2048;
    v32 = v7;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v12 = sub_195A803DC(v6, v7);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195A81354;
  v16[3] = &unk_1E7441120;
  v17 = v5;
  v18 = v12;
  v13 = v12;
  v14 = v5;
  sub_195A804D8(v16, v13);

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195A81354(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return MEMORY[0x1EEE66B58](a2, sel_switchActivePairedDeviceWithID_completion_);
}

void IDSLocalPairingDisconnectActivePairedDevice(void *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (_IDSRunningInDaemon())
  {
    sub_195B309E8();
  }

  v5 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x19A8BBEF0](v3);
    *buf = 136316162;
    v15 = "void IDSLocalPairingDisconnectActivePairedDevice(__strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v16 = 2080;
    v17 = "block";
    v18 = 2048;
    v19 = v6;
    v20 = 2080;
    v21 = "queue";
    v22 = 2048;
    v23 = v4;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "%s (%s: %p)   (%s: %p)", buf, 0x34u);
  }

  v7 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x19A8BBEF0](v3);
    *buf = 136316162;
    v15 = "void IDSLocalPairingDisconnectActivePairedDevice(__strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v16 = 2080;
    v17 = "block";
    v18 = 2048;
    v19 = v8;
    v20 = 2080;
    v21 = "queue";
    v22 = 2048;
    v23 = v4;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "%s (%s: %p)   (%s: %p)", buf, 0x34u);
  }

  v9 = sub_195A803DC(v3, v4);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195A8159C;
  v12[3] = &unk_1E7441170;
  v13 = v9;
  v10 = v9;
  sub_195A804D8(v12, v10);

  v11 = *MEMORY[0x1E69E9840];
}

void IDSLocalPairingRedeliverMessages(void *a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 uniqueIDOverride];
  if (_IDSRunningInDaemon())
  {
    sub_195B30A14();
  }

  v9 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v21 = "void IDSLocalPairingRedeliverMessages(IDSDevice *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v22 = 2080;
    v23 = "deviceUniqueID";
    v24 = 2112;
    v25 = v8;
    v26 = 2080;
    v27 = "block";
    v28 = 2048;
    v29 = v10;
    v30 = 2080;
    v31 = "queue";
    v32 = 2048;
    v33 = v7;
    _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v11 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v21 = "void IDSLocalPairingRedeliverMessages(IDSDevice *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v22 = 2080;
    v23 = "deviceUniqueID";
    v24 = 2112;
    v25 = v8;
    v26 = 2080;
    v27 = "block";
    v28 = 2048;
    v29 = v12;
    v30 = 2080;
    v31 = "queue";
    v32 = 2048;
    v33 = v7;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v13 = sub_195A803DC(v6, v7);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_195A81858;
  v17[3] = &unk_1E7441120;
  v18 = v8;
  v19 = v13;
  v14 = v13;
  v15 = v8;
  sub_195A804D8(v17, v14);

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195A81858(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return MEMORY[0x1EEE66B58](a2, sel_redeliverMessagesForDevice_completion_);
}

void IDSLocalPairingDeletePairedDevice(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (_IDSRunningInDaemon())
  {
    sub_195B30A40();
  }

  v8 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v20 = "void IDSLocalPairingDeletePairedDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v21 = 2080;
    v22 = "cbuuid";
    v23 = 2112;
    v24 = v5;
    v25 = 2080;
    v26 = "block";
    v27 = 2048;
    v28 = v9;
    v29 = 2080;
    v30 = "queue";
    v31 = 2048;
    v32 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v10 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v20 = "void IDSLocalPairingDeletePairedDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v21 = 2080;
    v22 = "cbuuid";
    v23 = 2112;
    v24 = v5;
    v25 = 2080;
    v26 = "block";
    v27 = 2048;
    v28 = v11;
    v29 = 2080;
    v30 = "queue";
    v31 = 2048;
    v32 = v7;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v12 = sub_195A803DC(v6, v7);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195A81AF8;
  v16[3] = &unk_1E7441120;
  v17 = v5;
  v18 = v12;
  v13 = v12;
  v14 = v5;
  sub_195A804D8(v16, v13);

  v15 = *MEMORY[0x1E69E9840];
}

void IDSLocalPairingUnpairStartForDevice(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (_IDSRunningInDaemon())
  {
    sub_195B30A6C();
  }

  v8 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v20 = "void IDSLocalPairingUnpairStartForDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v21 = 2080;
    v22 = "cbuuid";
    v23 = 2112;
    v24 = v5;
    v25 = 2080;
    v26 = "block";
    v27 = 2048;
    v28 = v9;
    v29 = 2080;
    v30 = "queue";
    v31 = 2048;
    v32 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v10 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v20 = "void IDSLocalPairingUnpairStartForDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v21 = 2080;
    v22 = "cbuuid";
    v23 = 2112;
    v24 = v5;
    v25 = 2080;
    v26 = "block";
    v27 = 2048;
    v28 = v11;
    v29 = 2080;
    v30 = "queue";
    v31 = 2048;
    v32 = v7;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v12 = sub_195A803DC(v6, v7);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195A81D98;
  v16[3] = &unk_1E7441120;
  v17 = v5;
  v18 = v12;
  v13 = v12;
  v14 = v5;
  sub_195A804D8(v16, v13);

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195A81D98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return MEMORY[0x1EEE66B58](a2, sel_unpairStartForDeviceWithID_completion_);
}

void IDSLocalPairingStopForDevice(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (_IDSRunningInDaemon())
  {
    sub_195B30A98();
  }

  v8 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v20 = "void IDSLocalPairingStopForDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v21 = 2080;
    v22 = "cbuuid";
    v23 = 2112;
    v24 = v5;
    v25 = 2080;
    v26 = "block";
    v27 = 2048;
    v28 = v9;
    v29 = 2080;
    v30 = "queue";
    v31 = 2048;
    v32 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v10 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v20 = "void IDSLocalPairingStopForDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v21 = 2080;
    v22 = "cbuuid";
    v23 = 2112;
    v24 = v5;
    v25 = 2080;
    v26 = "block";
    v27 = 2048;
    v28 = v11;
    v29 = 2080;
    v30 = "queue";
    v31 = 2048;
    v32 = v7;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v12 = sub_195A803DC(v6, v7);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195A82038;
  v16[3] = &unk_1E7441120;
  v17 = v5;
  v18 = v12;
  v13 = v12;
  v14 = v5;
  sub_195A804D8(v16, v13);

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195A82038(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return MEMORY[0x1EEE66B58](a2, sel_stopLocalPairingForDeviceWithID_completion_);
}

void IDSLocalPairingUnpairForDevice(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (_IDSRunningInDaemon())
  {
    sub_195B30AC4();
  }

  v8 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v20 = "void IDSLocalPairingUnpairForDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v21 = 2080;
    v22 = "cbuuid";
    v23 = 2112;
    v24 = v5;
    v25 = 2080;
    v26 = "block";
    v27 = 2048;
    v28 = v9;
    v29 = 2080;
    v30 = "queue";
    v31 = 2048;
    v32 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v10 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v20 = "void IDSLocalPairingUnpairForDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v21 = 2080;
    v22 = "cbuuid";
    v23 = 2112;
    v24 = v5;
    v25 = 2080;
    v26 = "block";
    v27 = 2048;
    v28 = v11;
    v29 = 2080;
    v30 = "queue";
    v31 = 2048;
    v32 = v7;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v12 = sub_195A803DC(v6, v7);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195A822D8;
  v16[3] = &unk_1E7441120;
  v17 = v5;
  v18 = v12;
  v13 = v12;
  v14 = v5;
  sub_195A804D8(v16, v13);

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195A822D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return MEMORY[0x1EEE66B58](a2, sel_unpairDeviceWithID_completion_);
}

void IDSLocalPairingForgetPairedDevice(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (_IDSRunningInDaemon())
  {
    sub_195B30AF0();
  }

  v8 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v20 = "void IDSLocalPairingForgetPairedDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v21 = 2080;
    v22 = "cbuuid";
    v23 = 2112;
    v24 = v5;
    v25 = 2080;
    v26 = "block";
    v27 = 2048;
    v28 = v9;
    v29 = 2080;
    v30 = "queue";
    v31 = 2048;
    v32 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v10 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v20 = "void IDSLocalPairingForgetPairedDevice(NSUUID *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v21 = 2080;
    v22 = "cbuuid";
    v23 = 2112;
    v24 = v5;
    v25 = 2080;
    v26 = "block";
    v27 = 2048;
    v28 = v11;
    v29 = 2080;
    v30 = "queue";
    v31 = 2048;
    v32 = v7;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v12 = sub_195A803DC(v6, v7);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195A82578;
  v16[3] = &unk_1E7441120;
  v17 = v5;
  v18 = v12;
  v13 = v12;
  v14 = v5;
  sub_195A804D8(v16, v13);

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195A82578(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return MEMORY[0x1EEE66B58](a2, sel_forgetDeviceWithID_completion_);
}

void IDSLocalPairingGetPairingDevicesWithCompletionBlock(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (_IDSRunningInDaemon())
  {
    sub_195B30B1C();
  }

  v5 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x19A8BBEF0](v3);
    *buf = 136316162;
    v18 = "void IDSLocalPairingGetPairingDevicesWithCompletionBlock(__strong IDSLocalPairingPairedDevicesCompletionBlock, __strong dispatch_queue_t)";
    v19 = 2080;
    v20 = "block";
    v21 = 2048;
    v22 = v6;
    v23 = 2080;
    v24 = "queue";
    v25 = 2048;
    v26 = v4;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "%s (%s: %p)   (%s: %p)", buf, 0x34u);
  }

  v7 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x19A8BBEF0](v3);
    *buf = 136316162;
    v18 = "void IDSLocalPairingGetPairingDevicesWithCompletionBlock(__strong IDSLocalPairingPairedDevicesCompletionBlock, __strong dispatch_queue_t)";
    v19 = 2080;
    v20 = "block";
    v21 = 2048;
    v22 = v8;
    v23 = 2080;
    v24 = "queue";
    v25 = 2048;
    v26 = v4;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "%s (%s: %p)   (%s: %p)", buf, 0x34u);
  }

  if (!v4)
  {
    v4 = MEMORY[0x1E69E96A0];
    v9 = MEMORY[0x1E69E96A0];
  }

  if (!v3)
  {
    v3 = &unk_1F09E61E0;
  }

  v10 = sub_195A82838(v3, v4);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A82934;
  v15[3] = &unk_1E7441170;
  v16 = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_195A82940;
  v13[3] = &unk_1E743FC50;
  v14 = v16;
  v11 = v16;
  sub_195A804D8(v15, v13);

  v12 = *MEMORY[0x1E69E9840];
}

id sub_195A82838(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    v4 = MEMORY[0x1E69E96A0];
    v5 = MEMORY[0x1E69E96A0];
  }

  v6 = &unk_1F09E6220;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A84884;
  v15[3] = &unk_1E7441230;
  if (v3)
  {
    v6 = v3;
  }

  v16 = v4;
  v17 = v6;
  v7 = v6;
  v8 = v4;
  v9 = MEMORY[0x19A8BBEF0](v15);
  v13 = MEMORY[0x19A8BBEF0](v9, v10, v11, v12);

  return v13;
}

void IDSLocalPairingGetPairedDevicesWithCompletionBlock(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (_IDSRunningInDaemon())
  {
    sub_195B30B48();
  }

  v5 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x19A8BBEF0](v3);
    *buf = 136316162;
    v17 = "void IDSLocalPairingGetPairedDevicesWithCompletionBlock(__strong IDSLocalPairingPairedDevicesCompletionBlock, __strong dispatch_queue_t)";
    v18 = 2080;
    v19 = "block";
    v20 = 2048;
    v21 = v6;
    v22 = 2080;
    v23 = "queue";
    v24 = 2048;
    v25 = v4;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "%s (%s: %p)   (%s: %p)", buf, 0x34u);
  }

  v7 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x19A8BBEF0](v3);
    *buf = 136316162;
    v17 = "void IDSLocalPairingGetPairedDevicesWithCompletionBlock(__strong IDSLocalPairingPairedDevicesCompletionBlock, __strong dispatch_queue_t)";
    v18 = 2080;
    v19 = "block";
    v20 = 2048;
    v21 = v8;
    v22 = 2080;
    v23 = "queue";
    v24 = 2048;
    v25 = v4;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "%s (%s: %p)   (%s: %p)", buf, 0x34u);
  }

  v9 = sub_195A82838(v3, v4);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195A82BE8;
  v14[3] = &unk_1E7441170;
  v15 = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195A82BF4;
  v12[3] = &unk_1E743FC50;
  v13 = v15;
  v10 = v15;
  sub_195A804D8(v14, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void IDSLocalPairingGetPairingRecordsWithCompletionBlock(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (_IDSRunningInDaemon())
  {
    sub_195B30B74();
  }

  v5 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x19A8BBEF0](v3);
    *buf = 136316162;
    *&buf[4] = "void IDSLocalPairingGetPairingRecordsWithCompletionBlock(__strong IDSLocalPairingPairingRecordsCompletionBlock, __strong dispatch_queue_t)";
    *&buf[12] = 2080;
    *&buf[14] = "block";
    *&buf[22] = 2048;
    v27 = v6;
    *v28 = 2080;
    *&v28[2] = "queue";
    *&v28[10] = 2048;
    *&v28[12] = v4;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "%s (%s: %p)   (%s: %p)", buf, 0x34u);
  }

  v7 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x19A8BBEF0](v3);
    *buf = 136316162;
    *&buf[4] = "void IDSLocalPairingGetPairingRecordsWithCompletionBlock(__strong IDSLocalPairingPairingRecordsCompletionBlock, __strong dispatch_queue_t)";
    *&buf[12] = 2080;
    *&buf[14] = "block";
    *&buf[22] = 2048;
    v27 = v8;
    *v28 = 2080;
    *&v28[2] = "queue";
    *&v28[10] = 2048;
    *&v28[12] = v4;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "%s (%s: %p)   (%s: %p)", buf, 0x34u);
  }

  if (v3)
  {
    if (!v4)
    {
      v4 = MEMORY[0x1E69E96A0];
      v9 = MEMORY[0x1E69E96A0];
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_195A82F88;
    v23[3] = &unk_1E74411B8;
    v4 = v4;
    v24 = v4;
    v25 = v3;
    v10 = MEMORY[0x19A8BBEF0](v23);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_195A8309C;
    v21[3] = &unk_1E7441170;
    v11 = v10;
    v22 = v11;
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = sub_195A831D8;
    v19 = &unk_1E743FC50;
    v20 = v11;
    v12 = v21;
    v13 = &v16;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = sub_195A84970;
    v27 = &unk_1E7441258;
    *&v28[8] = v12;
    *&v28[16] = 0x4082C00000000000;
    *v28 = v13;
    v14 = v11;
    [IDSXPCDaemonController performDaemonControllerTask:buf, v16, v17, v18, v19];
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_195A82F88(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A83084;
  v15[3] = &unk_1E743F228;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v11;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(v10, v15);
}

void sub_195A8309C(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_195A83128;
  v3[3] = &unk_1E74411E0;
  v4 = *(a1 + 32);
  [a2 getPairingRecordsWithCompletion:v3];
}

void sub_195A83128(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = MEMORY[0x1E69A6138];
  v9 = a3;
  v10 = a2;
  v11 = [v8 NRPairing];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_195B30BA0(v7, v11);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_195A831D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B30C18(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

void IDSLocalPairingSetAllowedTrafficClassifiersForDevice(void *a1, void *a2, void *a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = [v8 uniqueID];
  if (_IDSRunningInDaemon())
  {
    sub_195B30C90();
  }

  v12 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = MEMORY[0x19A8BBEF0](v9);
    *buf = 136317186;
    v26 = "void IDSLocalPairingSetAllowedTrafficClassifiersForDevice(NSSet *__strong, IDSDevice *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v27 = 2080;
    v28 = "classifiers";
    v29 = 2112;
    v30 = v7;
    v31 = 2080;
    v32 = "deviceUniqueID";
    v33 = 2112;
    v34 = v11;
    v35 = 2080;
    v36 = "block";
    v37 = 2048;
    v38 = v13;
    v39 = 2080;
    v40 = "queue";
    v41 = 2048;
    v42 = v10;
    _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x5Cu);
  }

  v14 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = MEMORY[0x19A8BBEF0](v9);
    *buf = 136317186;
    v26 = "void IDSLocalPairingSetAllowedTrafficClassifiersForDevice(NSSet *__strong, IDSDevice *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v27 = 2080;
    v28 = "classifiers";
    v29 = 2112;
    v30 = v7;
    v31 = 2080;
    v32 = "deviceUniqueID";
    v33 = 2112;
    v34 = v11;
    v35 = 2080;
    v36 = "block";
    v37 = 2048;
    v38 = v15;
    v39 = 2080;
    v40 = "queue";
    v41 = 2048;
    v42 = v10;
    _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x5Cu);
  }

  v16 = sub_195A803DC(v9, v10);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_195A83578;
  v21[3] = &unk_1E7441208;
  v22 = v11;
  v23 = v7;
  v24 = v16;
  v17 = v16;
  v18 = v7;
  v19 = v11;
  sub_195A804D8(v21, v17);

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195A83578(void *a1, uint64_t a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  return MEMORY[0x1EEE66B58](a2, sel_setAllowedTrafficClassifiersForDevice_classifiers_completion_);
}

void IDSLocalPairingGetAllowedTrafficClassifiersForDevice(void *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 uniqueID];
  if (_IDSRunningInDaemon())
  {
    sub_195B30CBC();
  }

  v9 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v17 = "void IDSLocalPairingGetAllowedTrafficClassifiersForDevice(IDSDevice *__strong, __strong IDSLocalPairingTrafficClassifiersCompletionBlock, __strong dispatch_queue_t)";
    v18 = 2080;
    v19 = "deviceUniqueID";
    v20 = 2112;
    v21 = v8;
    v22 = 2080;
    v23 = "block";
    v24 = 2048;
    v25 = v10;
    v26 = 2080;
    v27 = "queue";
    v28 = 2048;
    v29 = v7;
    _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v11 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v17 = "void IDSLocalPairingGetAllowedTrafficClassifiersForDevice(IDSDevice *__strong, __strong IDSLocalPairingTrafficClassifiersCompletionBlock, __strong dispatch_queue_t)";
    v18 = 2080;
    v19 = "deviceUniqueID";
    v20 = 2112;
    v21 = v8;
    v22 = 2080;
    v23 = "block";
    v24 = 2048;
    v25 = v12;
    v26 = 2080;
    v27 = "queue";
    v28 = 2048;
    v29 = v7;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  if (v6 && v7)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A83818;
    block[3] = &unk_1E743E850;
    v15 = v6;
    dispatch_async(v7, block);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_195A83818(uint64_t a1)
{
  v2 = +[IDSPairedDeviceManager sharedInstance];
  v3 = [v2 allowedTrafficClassifiers];

  (*(*(a1 + 32) + 16))();
}

void IDSLocalPairingDropAllMessagesWithoutAnyAllowedTrafficClassifier(void *a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 uniqueID];
  if (_IDSRunningInDaemon())
  {
    sub_195B30CE8();
  }

  v9 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v21 = "void IDSLocalPairingDropAllMessagesWithoutAnyAllowedTrafficClassifier(IDSDevice *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v22 = 2080;
    v23 = "deviceUniqueID";
    v24 = 2112;
    v25 = v8;
    v26 = 2080;
    v27 = "block";
    v28 = 2048;
    v29 = v10;
    v30 = 2080;
    v31 = "queue";
    v32 = 2048;
    v33 = v7;
    _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v11 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316674;
    v21 = "void IDSLocalPairingDropAllMessagesWithoutAnyAllowedTrafficClassifier(IDSDevice *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v22 = 2080;
    v23 = "deviceUniqueID";
    v24 = 2112;
    v25 = v8;
    v26 = 2080;
    v27 = "block";
    v28 = 2048;
    v29 = v12;
    v30 = 2080;
    v31 = "queue";
    v32 = 2048;
    v33 = v7;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "%s (%s: %@)   (%s: %p)   (%s: %p)", buf, 0x48u);
  }

  v13 = sub_195A803DC(v6, v7);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_195A83B40;
  v17[3] = &unk_1E7441120;
  v18 = v8;
  v19 = v13;
  v14 = v13;
  v15 = v8;
  sub_195A804D8(v17, v14);

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195A83B40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return MEMORY[0x1EEE66B58](a2, sel_dropAllMessagesWithoutAnyAllowedClassifierForDevice_completion_);
}

void IDSLocalPairingReunionSyncStartedForServices(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (_IDSRunningInDaemon())
  {
    sub_195B30D14();
  }

  v8 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316162;
    v20 = "void IDSLocalPairingReunionSyncStartedForServices(NSArray *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v21 = 2080;
    v22 = "block";
    v23 = 2048;
    v24 = v9;
    v25 = 2080;
    v26 = "queue";
    v27 = 2048;
    v28 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%s (%s: %p)   (%s: %p)", buf, 0x34u);
  }

  v10 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316162;
    v20 = "void IDSLocalPairingReunionSyncStartedForServices(NSArray *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v21 = 2080;
    v22 = "block";
    v23 = 2048;
    v24 = v11;
    v25 = 2080;
    v26 = "queue";
    v27 = 2048;
    v28 = v7;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "%s (%s: %p)   (%s: %p)", buf, 0x34u);
  }

  v12 = sub_195A803DC(v6, v7);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195A83DBC;
  v16[3] = &unk_1E7440330;
  v17 = v5;
  v18 = v12;
  v13 = v5;
  v14 = v12;
  [IDSXPCDaemonController performDaemonControllerTask:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void sub_195A83DBC(uint64_t a1, void *a2)
{
  v3 = [a2 reunionSyncCollaboratorWithErrorHandler:*(a1 + 40)];
  [v3 reunionSyncStartedForServices:*(a1 + 32) withCompletion:*(a1 + 40)];
}

void IDSLocalPairingReunionSyncCompletedForServices(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (_IDSRunningInDaemon())
  {
    sub_195B30D40();
  }

  v8 = +[IDSTransportLog NRPairing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316162;
    v20 = "void IDSLocalPairingReunionSyncCompletedForServices(NSArray *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v21 = 2080;
    v22 = "block";
    v23 = 2048;
    v24 = v9;
    v25 = 2080;
    v26 = "queue";
    v27 = 2048;
    v28 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%s (%s: %p)   (%s: %p)", buf, 0x34u);
  }

  v10 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x19A8BBEF0](v6);
    *buf = 136316162;
    v20 = "void IDSLocalPairingReunionSyncCompletedForServices(NSArray *__strong, __strong IDSLocalPairingCompletionBlock, __strong dispatch_queue_t)";
    v21 = 2080;
    v22 = "block";
    v23 = 2048;
    v24 = v11;
    v25 = 2080;
    v26 = "queue";
    v27 = 2048;
    v28 = v7;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "%s (%s: %p)   (%s: %p)", buf, 0x34u);
  }

  v12 = sub_195A803DC(v6, v7);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195A84084;
  v16[3] = &unk_1E7440330;
  v17 = v5;
  v18 = v12;
  v13 = v5;
  v14 = v12;
  [IDSXPCDaemonController performDaemonControllerTask:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void sub_195A84084(uint64_t a1, void *a2)
{
  v3 = [a2 reunionSyncCollaboratorWithErrorHandler:*(a1 + 40)];
  [v3 reunionSyncCompletedForServices:*(a1 + 32) withCompletion:*(a1 + 40)];
}

void sub_195A845F8(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x19A8BBEF0](*(a1 + 40));
    *buf = 134218242;
    v14 = v5;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "About to call local pairing completion block { block: %p, error: %@ }", buf, 0x16u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A84748;
  v10[3] = &unk_1E743F110;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11 = v3;
  v12 = v7;
  v8 = v3;
  dispatch_async(v6, v10);

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195A84748(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6138] NRPairing];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = MEMORY[0x19A8BBEF0](*(a1 + 40));
    v7 = 134217984;
    v8 = v3;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Calling local pairing completion block %p", &v7, 0xCu);
  }

  v4 = *(a1 + 32);
  result = (*(*(a1 + 40) + 16))();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_195A8481C(uint64_t a1, void *a2)
{
  v3 = [a2 pairingCollaboratorWithErrorHandler:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void sub_195A84884(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195A84958;
  block[3] = &unk_1E743F1D8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_195A84970(uint64_t a1, void *a2)
{
  v3 = [a2 pairingCollaboratorWithTimeout:*(a1 + 32) errorHandler:*(a1 + 48)];
  (*(*(a1 + 40) + 16))();
}

void sub_195A84A1C()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A52EE8];
  v1 = qword_1ED5DDE58;
  qword_1ED5DDE58 = v0;

  v49 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A33058];
  [qword_1ED5DDE58 setInterface:v49 forSelector:sel_setupOffGridMessengerClient_withUUID_forServiceType_ argumentIndex:0 ofReply:0];
  v2 = qword_1ED5DDE58;
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v3 setWithObjects:{v4, v5, v6, objc_opt_class(), 0}];
  [v2 setClasses:v7 forSelector:sel_resultsForDestinationURIs_senderURI_service_options_completion_ argumentIndex:0 ofReply:0];

  v8 = qword_1ED5DDE58;
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
  [v8 setClasses:v12 forSelector:sel_resultsForDestinationURIs_senderURI_service_options_completion_ argumentIndex:0 ofReply:1];

  v13 = qword_1ED5DDE58;
  v14 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v13 setClasses:v14 forSelector:sel_encryptOffGridMessage_completion_ argumentIndex:0 ofReply:0];

  v15 = qword_1ED5DDE58;
  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  [v15 setClasses:v18 forSelector:sel_encryptOffGridMessage_completion_ argumentIndex:0 ofReply:1];

  v19 = qword_1ED5DDE58;
  v20 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v19 setClasses:v20 forSelector:sel_decryptOffGridMessage_completion_ argumentIndex:0 ofReply:0];

  v21 = qword_1ED5DDE58;
  v22 = MEMORY[0x1E695DFD8];
  v23 = objc_opt_class();
  v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
  [v21 setClasses:v24 forSelector:sel_decryptOffGridMessage_completion_ argumentIndex:0 ofReply:1];

  v25 = qword_1ED5DDE58;
  v26 = MEMORY[0x1E695DFD8];
  v27 = objc_opt_class();
  v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
  [v25 setClasses:v28 forSelector:sel_sendEncryptedOffGridMessage_options_completion_ argumentIndex:0 ofReply:0];

  v29 = qword_1ED5DDE58;
  v30 = MEMORY[0x1E695DFD8];
  v31 = objc_opt_class();
  v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
  [v29 setClasses:v32 forSelector:sel_sendEncryptedOffGridMessage_options_completion_ argumentIndex:0 ofReply:1];

  v33 = qword_1ED5DDE58;
  v34 = MEMORY[0x1E695DFD8];
  v35 = objc_opt_class();
  v36 = objc_opt_class();
  v37 = [v34 setWithObjects:{v35, v36, objc_opt_class(), 0}];
  [v33 setClasses:v37 forSelector:sel_sendFetchRequestForHandles_fromHandle_completion_ argumentIndex:0 ofReply:0];

  v38 = qword_1ED5DDE58;
  v39 = MEMORY[0x1E695DFD8];
  v40 = objc_opt_class();
  v41 = objc_opt_class();
  v42 = objc_opt_class();
  v43 = [v39 setWithObjects:{v40, v41, v42, objc_opt_class(), 0}];
  [v38 setClasses:v43 forSelector:sel_sendFetchRequestForHandles_fromHandle_completion_ argumentIndex:0 ofReply:1];

  v44 = qword_1ED5DDE58;
  v45 = MEMORY[0x1E695DFD8];
  v46 = objc_opt_class();
  v47 = objc_opt_class();
  v48 = [v45 setWithObjects:{v46, v47, objc_opt_class(), 0}];
  [v44 setClasses:v48 forSelector:sel_donateHandlesForMessagingKeys_fromURI_options_completion_ argumentIndex:0 ofReply:0];
}

void sub_195A84F2C()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A52F48];
  v1 = qword_1ED5DDE60;
  qword_1ED5DDE60 = v0;

  v61 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A38998];
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
  [v61 setClasses:v5 forSelector:sel_contactInfoUpdated_ argumentIndex:0 ofReply:0];

  [qword_1ED5DDE60 setInterface:v61 forSelector:sel_setupOffGridStateManagerClient_withUUID_completion_ argumentIndex:0 ofReply:0];
  v6 = qword_1ED5DDE60;
  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v6 setClasses:v7 forSelector:sel_fetchCurrentOffGridMode_ argumentIndex:1 ofReply:1];

  v8 = qword_1ED5DDE60;
  v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v8 setClasses:v9 forSelector:sel_fetchCurrentPublishStatus_ argumentIndex:1 ofReply:1];

  v10 = qword_1ED5DDE60;
  v11 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v10 setClasses:v11 forSelector:sel_setOffGridMode_options_completion_ argumentIndex:0 ofReply:0];

  v12 = qword_1ED5DDE60;
  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  [v12 setClasses:v15 forSelector:sel_invitedHandlesWithCompletion_ argumentIndex:0 ofReply:1];

  v16 = qword_1ED5DDE60;
  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = [v17 setWithObjects:{v18, v19, objc_opt_class(), 0}];
  [v16 setClasses:v20 forSelector:sel_inviteHandles_fromSenderHandle_withDictionaryPayload_completion_ argumentIndex:0 ofReply:0];

  v21 = qword_1ED5DDE60;
  v22 = MEMORY[0x1E695DFD8];
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = [v22 setWithObjects:{v23, v24, v25, objc_opt_class(), 0}];
  [v21 setClasses:v26 forSelector:sel_inviteHandles_fromSenderHandle_withDictionaryPayload_completion_ argumentIndex:0 ofReply:1];

  v27 = qword_1ED5DDE60;
  v28 = MEMORY[0x1E695DFD8];
  v29 = objc_opt_class();
  v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
  [v27 setClasses:v30 forSelector:sel_removeInvitedHandles_completion_ argumentIndex:0 ofReply:0];

  v31 = qword_1ED5DDE60;
  v32 = MEMORY[0x1E695DFD8];
  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v35 = [v32 setWithObjects:{v33, v34, objc_opt_class(), 0}];
  [v31 setClasses:v35 forSelector:sel_removeInvitedHandles_completion_ argumentIndex:0 ofReply:1];

  v36 = qword_1ED5DDE60;
  v37 = MEMORY[0x1E695DFD8];
  v38 = objc_opt_class();
  v39 = objc_opt_class();
  v40 = [v37 setWithObjects:{v38, v39, objc_opt_class(), 0}];
  [v36 setClasses:v40 forSelector:sel_removeAllInvitedHandlesWithCompletion_ argumentIndex:0 ofReply:1];

  v41 = qword_1ED5DDE60;
  v42 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v41 setClasses:v42 forSelector:sel_fetchStewieAvailabilityWithCompletion_ argumentIndex:2 ofReply:1];

  v43 = qword_1ED5DDE60;
  v44 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v43 setClasses:v44 forSelector:sel_connectStewieWithCompletion_ argumentIndex:0 ofReply:1];

  v45 = qword_1ED5DDE60;
  v46 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v45 setClasses:v46 forSelector:sel_disconnectStewieWithCompletion_ argumentIndex:0 ofReply:1];

  v47 = qword_1ED5DDE60;
  v48 = MEMORY[0x1E695DFD8];
  v49 = objc_opt_class();
  v50 = objc_opt_class();
  v51 = objc_opt_class();
  v52 = objc_opt_class();
  v53 = [v48 setWithObjects:{v49, v50, v51, v52, objc_opt_class(), 0}];
  [v47 setClasses:v53 forSelector:sel_fetchContactsOfType_completion_ argumentIndex:0 ofReply:1];

  v54 = qword_1ED5DDE60;
  v55 = MEMORY[0x1E695DFD8];
  v56 = objc_opt_class();
  v57 = objc_opt_class();
  v58 = objc_opt_class();
  v59 = objc_opt_class();
  v60 = [v55 setWithObjects:{v56, v57, v58, v59, objc_opt_class(), 0}];
  [v54 setClasses:v60 forSelector:sel_fetchContactsOfType_phoneNumbersOnly_completion_ argumentIndex:0 ofReply:1];
}

uint64_t sub_195A855BC()
{
  qword_1ED5DE078 = objc_alloc_init(_IDSDeviceConnectionActiveMap);

  return MEMORY[0x1EEE66BB8]();
}

void sub_195A86434(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 56))
  {
    *(v1 + 125) = 1;
    v3 = MEMORY[0x19A8BBEF0](*(*(a1 + 32) + 56));
    v4 = *(a1 + 32);
    v5 = v4[8];
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = sub_195A86510;
    v10 = &unk_1E743EAA8;
    v11 = v4;
    v12 = v3;
    v6 = v3;
    dispatch_async(v5, &v7);
    [*(a1 + 32) _cleanupCompletionBlock];
  }
}

void sub_195A86510(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v2 = +[IDSTransportLog IDSDeviceConnection];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 134217984;
    v9 = v3;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "<%p> _IDSDeviceConnection has timed out waiting for a socket.", buf, 0xCu);
  }

  v4 = objc_alloc(MEMORY[0x1E695DF20]);
  v5 = [v4 initWithObjectsAndKeys:{@"Socket open timed out", *MEMORY[0x1E696A578], 0}];
  v6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:20 userInfo:v5];
  (*(*(a1 + 40) + 16))();

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195A879B4(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void sub_195A87B08(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = +[IDSTransportLog IDSDeviceConnection];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 120);
    *buf = 67109120;
    v16 = v3;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Daemon died, closing socket: %d", buf, 8u);
  }

  v4 = objc_alloc(MEMORY[0x1E695DF20]);
  v5 = [v4 initWithObjectsAndKeys:{@"Disconnected from daemon", *MEMORY[0x1E696A578], 0}];
  v6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:20 userInfo:v5];
  v7 = MEMORY[0x19A8BBEF0](*(*(a1 + 32) + 56));
  v8 = *(*(a1 + 32) + 64);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195A87CC8;
  block[3] = &unk_1E743F110;
  v13 = v6;
  v14 = v7;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
  [*(a1 + 32) _cleanupCompletionBlock];
  [*(a1 + 32) _close];

  v11 = *MEMORY[0x1E69E9840];
}

id sub_195A888AC(uint64_t a1)
{
  if (*(a1 + 72))
  {
    if (*(a1 + 80) == 1)
    {
      v2 = *(a1 + 48);
      if (v2)
      {
        (*(v2 + 16))(v2, 0);
      }
    }

    v3 = *(a1 + 32);
    (*(*(a1 + 56) + 16))();
    if (*(a1 + 81) == 1)
    {
      v4 = *(a1 + 64);
      if (v4)
      {
        (*(v4 + 16))(v4, 0);
      }
    }
  }

  else
  {
    v5 = *(a1 + 56);
    v6 = *(a1 + 32);
    (*(*(a1 + 56) + 16))();
  }

  v7 = *(a1 + 32);
  v8 = objc_opt_self();
  v9 = *(a1 + 40);
  return objc_opt_self();
}

void sub_195A88D38(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 accountController:v3 accountRemoved:*(a1 + 40)];
  }
}

void sub_195A88DB4(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 accountController:v3 accountAdded:*(a1 + 40)];
  }
}

void sub_195A88E30(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 accountController:v3 accountUpdated:*(a1 + 40)];
  }
}

id sub_195A89F08(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKey:@"uri"];
  v4 = [v2 objectForKey:@"status"];

  LODWORD(v2) = [v4 intValue];
  if (v2 == 5051)
  {
    v5 = [v3 _stripFZIDPrefix];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_195A8A30C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 accountController:v3 accountRemoved:*(a1 + 40)];
  }
}

void sub_195A8A388(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 accountController:v3 accountAdded:*(a1 + 40)];
  }
}

void sub_195A8A404(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 accountController:v3 accountEnabled:*(a1 + 40)];
  }
}

void sub_195A8AD08(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 accountController:v3 accountAdded:*(a1 + 40)];
  }
}

void sub_195A8AD84(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 accountController:v3 accountUpdated:*(a1 + 40)];
  }
}

void sub_195A8B05C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 accountController:v3 accountRemoved:*(a1 + 40)];
  }
}

void sub_195A8B508(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 accountController:v3 accountUpdated:*(a1 + 40)];
  }
}

void sub_195A8B584(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 accountController:v3 accountAdded:*(a1 + 40)];
  }
}

void sub_195A8BEA8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 _internal];
  v3 = [v4 uniqueID];
  [v2 addObject:v3];
}

void sub_195A8BF10(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 accountController:v3 accountUpdated:*(a1 + 40)];
  }
}

void sub_195A8BF8C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 accountController:v3 accountAdded:*(a1 + 40)];
  }
}

void sub_195A8C008(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 accountController:v3 accountRemoved:*(a1 + 40)];
  }
}

uint64_t sub_195A8C3E0(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 isActive];
    v5 = @"NO";
    v6 = *(a1 + 40);
    v9 = 138412802;
    v10 = v3;
    if (v4)
    {
      v5 = @"YES";
    }

    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Setup completed for account %@ isActive %@ setupError %@", &v9, 0x20u);
  }

  result = (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 32), [*(a1 + 32) isActive], *(a1 + 40));
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_195A8C7D0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 accountController:v3 accountEnabled:*(a1 + 40)];
  }
}

void sub_195A8CB10(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 accountController:v3 accountDisabled:*(a1 + 40)];
  }
}

void sub_195A8CB8C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_195A8D2E0(uint64_t a1, void *a2)
{
  v3 = [a2 pinnedIdentityCollaboratorWithErrorHandler:&unk_1F09E6320];
  [v3 fetchIdentityForPinningWithCompletion:*(a1 + 32)];
}

void sub_195A8D33C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E69A5270] IDSPinnedIdentity];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_195B32E58();
  }
}

void sub_195A8D4E0(uint64_t a1, void *a2)
{
  v3 = [a2 pinnedIdentityCollaboratorWithErrorHandler:&unk_1F09E6340];
  [v3 pinIdentityBlob:*(a1 + 32) withCompletion:*(a1 + 40)];
}

void sub_195A8D53C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E69A5270] IDSPinnedIdentity];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_195B32E58();
  }
}

void sub_195A8D680(uint64_t a1, void *a2)
{
  v3 = [a2 pinnedIdentityCollaboratorWithErrorHandler:&unk_1F09E6360];
  [v3 fetchAllPinnedIdentitiesWithCompletion:*(a1 + 32)];
}

void sub_195A8D6DC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E69A5270] IDSPinnedIdentity];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_195B32E58();
  }
}

void sub_195A8D7BC(uint64_t a1, void *a2)
{
  v2 = [a2 pinnedIdentityCollaboratorWithErrorHandler:&unk_1F09E63A0];
  [v2 clearAllPinnedIdentities];
}

void sub_195A8D808(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E69A5270] IDSPinnedIdentity];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_195B32E58();
  }
}

uint64_t IDSHardDeregister(unsigned int a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (_IDSRunningInDaemon())
  {
    sub_195B32EC0();
  }

  v2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x1E696AF00] callStackSymbols];
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Hard deregistering, %@", &v7, 0xCu);
  }

  v4 = +[IDSDaemonController sharedInstance];
  [v4 hardDeregister];

  result = sleep(a1);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IDSTriggerFinalDeregister(unsigned int a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (_IDSRunningInDaemon())
  {
    sub_195B32EEC();
  }

  v2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x1E696AF00] callStackSymbols];
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Triggering final deregister, %@", &v7, 0xCu);
  }

  v4 = +[IDSDaemonController sharedInstance];
  [v4 triggerFinalDeregister];

  result = sleep(a1);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IDSClearState(unsigned int a1)
{
  if (_IDSRunningInDaemon())
  {
    sub_195B32F18();
  }

  v2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Clearing IDS state", v6, 2u);
  }

  v3 = [MEMORY[0x1E69A6180] sharedDefaults];
  [v3 setClearStateOnLaunch:1];

  v4 = +[IDSDaemonController sharedInstance];
  [v4 clearIDSState];

  return sleep(a1);
}

void sub_195A8E5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195A8E608(uint64_t a1)
{
  v2 = [*(a1 + 40) onQueueWeakSharedInstance];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void sub_195A8E70C(uint64_t a1)
{
  v2 = [*(a1 + 40) onQueueWeakSharedInstance];
  (*(*(a1 + 32) + 16))();
}

void sub_195A8E824(uint64_t a1)
{
  v2 = [*(a1 + 40) onQueueWeakSharedInstance];
  (*(*(a1 + 32) + 16))();
}

id sub_195A8E8AC()
{
  v0 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.identityservicesd.nsxpc" options:0];

  return v0;
}

void sub_195A8EB9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_195A8EBC4(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x1E69A5270] xpc];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [WeakRetained collaboratorPromiseDictionary];
      *buf = 138543618;
      v20 = v4;
      v21 = 2048;
      v22 = WeakRetained;
      _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "IDSXPCDaemonController connection interrupted -- Dropping collaborators {collaborators: %{public}@, pointer: %p}", buf, 0x16u);
    }

    v5 = [WeakRetained collaboratorPromiseDictionary];
    [v5 removeAllObjects];

    v6 = [WeakRetained syncCollaboratorDictionary];
    [v6 removeAllObjects];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [*(a1 + 32) interruptionHandlerByTarget];
    v8 = NSAllMapTableValues(v7);

    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          (*(*(*(&v14 + 1) + 8 * v12++) + 16))();
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_195A8F134(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AE30];
  v5 = a3;
  v6 = a2;
  v8 = [v4 processInfo];
  v7 = [v8 processName];
  [v6 reunionSyncCollaboratorForClientProcessName:v7 withCompletion:v5];
}

void sub_195A8FFD8(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  v4 = objc_opt_self();
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
  }
}

void sub_195A90124(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  v4 = objc_opt_self();
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
  }
}

void sub_195A90648(uint64_t a1, uint64_t a2)
{
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    v4 = [*(a1 + 40) collaboratorPromiseDictionary];
    [v4 removeObjectForKey:*(a1 + 48)];
  }

  else
  {
    v3 = *(a1 + 32);

    [v3 failWithError:a2];
  }
}

void sub_195A906D4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  *(*(*(a1 + 48) + 8) + 24) = 1;
  if (a3)
  {
    [*(a1 + 32) failWithError:a3];
  }

  else
  {
    v5 = [[IDSXPCConnection alloc] initWithRemoteObject:v6 rootConnection:*(a1 + 40)];
    [*(a1 + 32) fulfillWithValue:v5];
  }
}

void sub_195A9076C(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 state];
  if (v4 == 1)
  {
    v12 = [MEMORY[0x1E69A5270] xpc];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      v14 = [v3 error];
      *buf = 138543618;
      v27 = v13;
      v28 = 2114;
      v29 = v14;
      _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "Failed to get collaborator {identifier: %{public}@, error: %{public}@}", buf, 0x16u);
    }

    v15 = *(a1 + 56);
    if (v15)
    {
      v16 = [v3 error];
      (*(v15 + 16))(v15, v16);
    }

    v17 = *(a1 + 48);
    v18 = [v3 error];
    [v17 failWithError:v18];

    v11 = [*(a1 + 32) collaboratorPromiseDictionary];
    [v11 removeObjectForKey:*(a1 + 40)];
    goto LABEL_11;
  }

  if (!v4)
  {
    v5 = [v3 value];
    v6 = *(a1 + 64);
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = sub_195A909E4;
    v23 = &unk_1E743F138;
    v7 = *(a1 + 56);
    v24 = *(a1 + 32);
    v25 = v7;
    v8 = [v5 remoteObjectProxyWithTimeoutInSeconds:&v20 errorHandler:v6];

    v9 = [MEMORY[0x1E69A5270] xpc];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      *buf = 138543618;
      v27 = v10;
      v28 = 2114;
      v29 = v8;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "Got collaborator {identifier: %{public}@, proxy: %{public}@}", buf, 0x16u);
    }

    [*(a1 + 48) fulfillWithRemoteObject:v8];
    v11 = v25;
LABEL_11:
  }

  v19 = *MEMORY[0x1E69E9840];
}

id sub_195A909E4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);
  return objc_opt_self();
}

void sub_195A90C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A90C18(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 48);
  if (a3)
  {
    v5 = *(v4 + 16);
    v6 = *(a1 + 48);

    v5(v6, a3);
  }

  else
  {
    v8 = [a2 synchronousRemoteObjectProxyWithErrorHandler:v4];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = *(*(*(a1 + 56) + 8) + 40);
    v12 = [*(a1 + 32) syncCollaboratorDictionary];
    [v12 setObject:v11 forKeyedSubscript:*(a1 + 40)];
  }
}

void sub_195A91AA0()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A52FA8];
  v1 = qword_1ED5DDE68;
  qword_1ED5DDE68 = v0;

  v2 = +[IDSXPCGroupSessionKeyValueDeliveryInterface interface];
  [qword_1ED5DDE68 setInterface:v2 forSelector:sel_keyValueDeliveryForSessionID_completionHandler_ argumentIndex:0 ofReply:1];
}

void sub_195A91C70(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A91D38;
  v6[3] = &unk_1E743FC50;
  v7 = *(a1 + 48);
  v4 = [a2 keyTransparencyCollaboratorWithErrorHandler:v6];
  v5 = [*(a1 + 32) applicationIdentifier];
  [v4 fetchPeerVerificationInfoForApplication:v5 forURIs:*(a1 + 40) withCompletion:*(a1 + 48)];
}

void sub_195A91D38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A5270] KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B33138();
  }

  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSKeyTransparencyManagerErrorDomain" code:100 userInfo:0];
  (*(v5 + 16))(v5, MEMORY[0x1E695E0F8], v6);
}

void sub_195A91E84(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A91F4C;
  v6[3] = &unk_1E743FC50;
  v7 = *(a1 + 40);
  v4 = [a2 keyTransparencyCollaboratorWithErrorHandler:v6];
  v5 = [*(a1 + 32) applicationIdentifier];
  [v4 fetchSelfVerificationInfoForApplication:v5 withCompletion:*(a1 + 40)];
}

void sub_195A91F4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A5270] KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B33138();
  }

  v5 = *(a1 + 32);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v6 = qword_1EAEDC108;
  v14 = qword_1EAEDC108;
  if (!qword_1EAEDC108)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_195A94A48;
    v10[3] = &unk_1E743E648;
    v10[4] = &v11;
    sub_195A94A48(v10);
    v6 = v12[3];
  }

  v7 = v6;
  _Block_object_dispose(&v11, 8);
  v8 = objc_alloc_init(v6);
  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSKeyTransparencyManagerErrorDomain" code:100 userInfo:0];
  (*(v5 + 16))(v5, v8, v9);
}

void sub_195A920A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A92184(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A9224C;
  v6[3] = &unk_1E743FC50;
  v7 = *(a1 + 48);
  v4 = [a2 keyTransparencyCollaboratorWithErrorHandler:v6];
  v5 = [*(a1 + 32) applicationIdentifier];
  [v4 healSelfForApplication:v5 withHealableErrors:*(a1 + 40) withCompletion:*(a1 + 48)];
}

void sub_195A9224C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A5270] KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B33138();
  }

  (*(*(a1 + 32) + 16))();
}

id sub_195A92CA8()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_1EAEDBED0;
  v7 = qword_1EAEDBED0;
  if (!qword_1EAEDBED0)
  {
    v1 = sub_195A94AA0();
    v5[3] = dlsym(v1, "kKTApplicationIdentifierIDS");
    qword_1EAEDBED0 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    sub_195B331A0();
  }

  v2 = *v0;

  return v2;
}

void sub_195A92D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_195A92DAC()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_1EAEDBEE0;
  v7 = qword_1EAEDBEE0;
  if (!qword_1EAEDBEE0)
  {
    v1 = sub_195A94AA0();
    v5[3] = dlsym(v1, "kKTApplicationIdentifierIDSFaceTime");
    qword_1EAEDBEE0 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    sub_195B33218();
  }

  v2 = *v0;

  return v2;
}

void sub_195A92E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_195A92EB0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_1EAEDBED8;
  v7 = qword_1EAEDBED8;
  if (!qword_1EAEDBED8)
  {
    v1 = sub_195A94AA0();
    v5[3] = dlsym(v1, "kKTApplicationIdentifierIDSMultiplex");
    qword_1EAEDBED8 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    sub_195B33290();
  }

  v2 = *v0;

  return v2;
}

void sub_195A92F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A930B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_195A930D4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 keyTransparencyCollaboratorWithErrorHandler:&unk_1F09E6600];

  if (*(a1 + 40))
  {
    v5 = WeakRetained;
  }

  else
  {
    v5 = 0;
  }

  v6 = [WeakRetained uuid];
  [v4 setupKeyTransparencyManager:v5 uuid:v6];
}

void sub_195A9317C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E69A5270] KeyTransparency];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_195B33138();
  }
}

uint64_t sub_195A934B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return MEMORY[0x1EEE66B58](a2, sel_getKeyTransparencyOptInEligiblityForApplication_withCompletion_);
}

void sub_195A936D4(uint64_t a1, void *a2)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195A937E0;
  v8[3] = &unk_1E743FC50;
  v9 = *(a1 + 40);
  v4 = [a2 keyTransparencyCollaboratorWithErrorHandler:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A93860;
  v6[3] = &unk_1E74414D0;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  [v4 sendOptInUpdateForApplications:v5 withCompletion:v6];
}

void sub_195A937E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A5270] KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B33138();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_195A93860(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 success];
  v5 = [v3 error];

  (*(v2 + 16))(v2, v4, v5);
}

void sub_195A93AD8(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A93B7C;
  v5[3] = &unk_1E743FC50;
  v6 = *(a1 + 40);
  v4 = [a2 keyTransparencyCollaboratorWithErrorHandler:v5];
  [v4 sendOptInUpdateForApplications:*(a1 + 32) withCompletion:*(a1 + 40)];
}

void sub_195A93B7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A5270] KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B33138();
  }

  v5 = *(a1 + 32);
  v6 = [objc_alloc(MEMORY[0x1E69A52E0]) initWithSuccess:0 serverProvidedSMT:0 error:v3];
  (*(v5 + 16))(v5, v6);
}

void sub_195A93E1C(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A93EC0;
  v5[3] = &unk_1E743FC50;
  v6 = *(a1 + 40);
  v4 = [a2 keyTransparencyCollaboratorWithErrorHandler:v5];
  [v4 sendOptInUpdateRequest:*(a1 + 32) withCompletion:*(a1 + 40)];
}

void sub_195A93EC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A5270] KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B33138();
  }

  v5 = *(a1 + 32);
  v6 = objc_alloc(MEMORY[0x1E69A52E0]);
  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSKeyTransparencyManagerErrorDomain" code:200 userInfo:0];
  v8 = [v6 initWithSuccess:0 optedInOutURIs:0 serverSMTByURI:0 error:v7];
  (*(v5 + 16))(v5, v8);
}

void sub_195A94030(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A940D4;
  v5[3] = &unk_1E743FC50;
  v6 = *(a1 + 32);
  v4 = [a2 keyTransparencyCollaboratorWithErrorHandler:v5];
  [v4 fetchKTRegistrationStatusWithCompletion:*(a1 + 32)];
}

void sub_195A940D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A5270] KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B33138();
  }

  v5 = objc_alloc_init(MEMORY[0x1E69A52E8]);
  (*(*(a1 + 32) + 16))();
}

void sub_195A94178(uint64_t a1, void *a2)
{
  v2 = [a2 keyTransparencyCollaboratorWithErrorHandler:&unk_1F09E6640];
  [v2 registrationDataNeedsUpdate];
}

void sub_195A941C4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E69A5270] KeyTransparency];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_195B33138();
  }
}

void sub_195A942B8(uint64_t a1, void *a2)
{
  v3 = [a2 keyTransparencyCollaboratorWithErrorHandler:&unk_1F09E6660];
  [v3 registrationMightNeedUpdate:*(a1 + 32)];
}

void sub_195A94314(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E69A5270] KeyTransparency];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_195B33138();
  }
}

void sub_195A94458(uint64_t a1, void *a2)
{
  v3 = [a2 keyTransparencyCollaboratorWithErrorHandler:&unk_1F09E6680];
  [v3 peerVerificationFinishedWithResults:*(a1 + 32)];
}

void sub_195A944B4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E69A5270] KeyTransparency];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_195B33138();
  }
}

void sub_195A94630(uint64_t a1, void *a2)
{
  v3 = [a2 keyTransparencyCollaboratorWithErrorHandler:&unk_1F09E66A0];
  [v3 cacheClearRequest:*(a1 + 32)];
}

void sub_195A9468C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E69A5270] KeyTransparency];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_195B33138();
  }
}

void sub_195A947F8(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A9489C;
  v5[3] = &unk_1E743FC50;
  v6 = *(a1 + 40);
  v4 = [a2 keyTransparencyCollaboratorWithErrorHandler:v5];
  [v4 getCurrentRegistrationState:*(a1 + 32) withCompletion:*(a1 + 40)];
}

void sub_195A9489C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A5270] KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B33138();
  }

  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E695DF20] dictionary];
  (*(v5 + 16))(v5, v6);
}

Class sub_195A94A48(uint64_t a1)
{
  sub_195A94AA0();
  result = objc_getClass("KTSelfVerificationInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_195B336C8();
  }

  qword_1EAEDC108 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_195A94AA0()
{
  v3[9] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!qword_1ED5DDF20)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = sub_195A94B90;
    v3[4] = &unk_1E743EBC0;
    v3[5] = v3;
    v3[7] = 0;
    v3[8] = 0;
    v3[6] = "/System/Library/PrivateFrameworks/Transparency.framework/Transparency";
    qword_1ED5DDF20 = _sl_dlopen();
  }

  v0 = qword_1ED5DDF20;
  if (!qword_1ED5DDF20)
  {
    sub_195B33744(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t sub_195A94B90(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1ED5DDF20 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_195A94BFC(uint64_t a1)
{
  v2 = sub_195A94AA0();
  result = dlsym(v2, "kKTApplicationIdentifierIDS");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EAEDBED0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_195A94C4C(uint64_t a1)
{
  v2 = sub_195A94AA0();
  result = dlsym(v2, "kKTApplicationIdentifierIDSFaceTime");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EAEDBEE0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_195A94C9C(uint64_t a1)
{
  v2 = sub_195A94AA0();
  result = dlsym(v2, "kKTApplicationIdentifierIDSMultiplex");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EAEDBED8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_195A94CEC(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A94D9C;
  v5[3] = &unk_1E743FC50;
  v6 = *(a1 + 32);
  v4 = [a2 keyTransparencyCollaboratorWithErrorHandler:v5];
  (*(*(a1 + 40) + 16))();
}

void sub_195A94D9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A5270] KeyTransparency];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B33138();
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_195A952A0(void *a1)
{
  v2 = [[_IDSAccount alloc] initWithDictionary:a1[5] uniqueID:a1[6] serviceName:a1[7] delegateContext:a1[4]];
  v3 = a1[4];
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_195A95524(void *a1)
{
  v2 = [[_IDSAccount alloc] initWithLoginID:a1[5] uniqueID:a1[6] serviceName:a1[7] delegateContext:a1[4]];
  v3 = a1[4];
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void sub_195A9568C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A957E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A957F8(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 primaryServiceName];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A95930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A95948(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isUserDisabled];
}

void sub_195A95AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A95ACC(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 nearbyDevices];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A95C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A95C5C(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 connectedDevices];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A95DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A95DEC(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 profileInfo];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A95F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A95F7C(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 aliases];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A960F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A9610C(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 aliasStrings];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A96284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A9629C(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 vettedAliases];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A96414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A9642C(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 aliasesToRegister];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A965A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A965BC(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 handles];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A96734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A9674C(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 pseudonymURIMap];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A968C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A968DC(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 pseudonyms];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A969FC(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  [v2 setPassword:*(a1 + 40)];
}

void sub_195A96B08(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  [v2 setAuthToken:*(a1 + 40)];
}

void sub_195A96C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A96C44(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  *(*(*(a1 + 40) + 8) + 24) = [v2 _isEnabled];
}

void sub_195A96E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A96E98(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isUsableForOuterMessaging];
}

void sub_195A96FAC(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  [v2 setAccountInfo:*(a1 + 40)];
}

void sub_195A970B8(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  [v2 updateAccountWithAccountInfo:*(a1 + 40)];
}

void sub_195A971DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A971F4(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  *(*(*(a1 + 40) + 8) + 24) = [v2 registrationError];
}

void sub_195A97360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A97378(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 registrationAlertInfo];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A974B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A974C8(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  *(*(*(a1 + 40) + 8) + 24) = [v2 profileValidationStatus];
}

void sub_195A975F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A9760C(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  *(*(*(a1 + 40) + 8) + 24) = [v2 profileValidationErrorReason];
}

void sub_195A97778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A97790(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 nextRegistrationDate];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A97908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A97920(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 dateRegistered];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A97A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A97AB0(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 registeredURIs];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A97C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A97C40(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 registrationCertificate];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A97DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A97DD0(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 pushToken];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A97F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A97F60(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 regionServerContext];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A980D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A980F0(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 profileID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A98238(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  [v2 addDelegate:*(a1 + 40) queue:*(a1 + 48)];
}

void sub_195A98338(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  [v2 removeDelegate:*(a1 + 40)];
}

void sub_195A9846C(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  [v2 addRegistrationDelegate:*(a1 + 40) queue:*(a1 + 48)];
}

void sub_195A9856C(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  [v2 removeRegistrationDelegate:*(a1 + 40)];
}

void sub_195A986D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A986E8(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 regionID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A98808(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  [v2 setRegionID:*(a1 + 40)];
}

void sub_195A9896C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A98984(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 regionBasePhoneNumber];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A98AA4(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  [v2 setRegionBasePhoneNumber:*(a1 + 40)];
}

void sub_195A98C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A98C20(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 displayName];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A98D40(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  [v2 setDisplayName:*(a1 + 40)];
}

void sub_195A98EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A98EBC(uint64_t a1)
{
  v5 = [*(a1 + 32) _internal];
  v2 = [v5 userUniqueIdentifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_195A98FB4(uint64_t a1)
{
  v1 = [*(a1 + 32) _internal];
  [v1 authenticateAccount];
}

void sub_195A99088(uint64_t a1)
{
  v1 = [*(a1 + 32) _internal];
  [v1 passwordUpdated];
}

void sub_195A991A8(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  [v2 updateAuthorizationCredentials:*(a1 + 40) token:*(a1 + 48)];
}

void sub_195A9928C(uint64_t a1)
{
  v1 = [*(a1 + 32) _internal];
  [v1 validateProfile];
}

void sub_195A99388(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  [v2 addAliases:*(a1 + 40)];
}

void sub_195A99494(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  [v2 removeAliases:*(a1 + 40)];
}

void sub_195A997D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, os_activity_scope_state_s state, char a15)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_195A99800(uint64_t a1)
{
  v1 = [*(a1 + 32) _internal];
  [v1 registerAccount];
}

void sub_195A999A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, os_activity_scope_state_s state, char a15)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_195A999D4(uint64_t a1)
{
  v1 = [*(a1 + 32) _internal];
  [v1 unregisterAccount];
}

void sub_195A99B78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, os_activity_scope_state_s state, char a15)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_195A99BA8(uint64_t a1)
{
  v1 = [*(a1 + 32) _internal];
  [v1 forceRemoveAccount];
}

void sub_195A99D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, os_activity_scope_state_s state, char a17)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_195A99DB0(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  [v2 _reregisterAndReidentify:*(a1 + 40)];
}

void sub_195A99F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, os_activity_scope_state_s state, char a15)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_195A99F94(uint64_t a1)
{
  v1 = [*(a1 + 32) _internal];
  [v1 deactivateAndPurgeIdentify];
}

void sub_195A9A068(uint64_t a1)
{
  v1 = [*(a1 + 32) _internal];
  [v1 _callNearbyDevicesChanged];
}

void sub_195A9A140(uint64_t a1)
{
  v1 = [*(a1 + 32) _internal];
  [v1 _reloadCachedDevices];
}

void sub_195A9A40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195A9A424(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v8)
  {

LABEL_11:
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
    goto LABEL_12;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v16;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v15 + 1) + 8 * i);
      v10 |= objc_opt_isKindOfClass();
    }

    v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  }

  while (v9);

  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:

  v14 = *MEMORY[0x1E69E9840];
}

void IDSiCloudSignInHack(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (_IDSRunningInDaemon())
  {
    sub_195B33B84();
  }

  v5 = +[IDSLogging IDSiCloudSignInHack];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"YES";
    if (!v4)
    {
      v6 = @"NO";
    }

    v9 = 138412546;
    v10 = v3;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_INFO, "iCloud sign in hack with userName %@ password %@", &v9, 0x16u);
  }

  v7 = +[IDSDaemonController sharedInstance];
  [v7 iCloudSignInHackWithUserName:v3 password:v4];

  v8 = *MEMORY[0x1E69E9840];
}

void IDSiCloudSignOutHack()
{
  if (_IDSRunningInDaemon())
  {
    sub_195B33BB0();
  }

  v0 = +[IDSLogging IDSiCloudSignInHack];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_1959FF000, v0, OS_LOG_TYPE_INFO, "iCloud sign out hack", v2, 2u);
  }

  v1 = +[IDSDaemonController sharedInstance];
  [v1 iCloudSignOutHack];
}

void IDSKickGetDependent(void *a1)
{
  v1 = a1;
  if (_IDSRunningInDaemon())
  {
    sub_195B33BDC();
  }

  v2 = +[IDSLogging IDSiCloudSignInHack];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_INFO, "Kicking get dependent", v4, 2u);
  }

  v3 = +[IDSDaemonController sharedInstance];
  [v3 kickGetDependentForAccount:v1];
}

void IDSReRegister(void *a1, void *a2, void *a3)
{
  v8 = a1;
  v5 = a2;
  v6 = a3;
  if (_IDSRunningInDaemon())
  {
    sub_195B33C08();
  }

  v7 = +[IDSDaemonController sharedInstance];
  [v7 reRegisterWithUserID:v8 action:v5 service:v6];
}

void IDSRepairAccounts()
{
  if (_IDSRunningInDaemon())
  {
    sub_195B33C34();
  }

  v0 = +[IDSDaemonController sharedInstance];
  [v0 repairAccounts];
}

id IDSCopyBestGuessIDForID(void *a1)
{
  v1 = a1;
  if ([v1 containsString:@":"] && (objc_msgSend(v1, "hasPrefix:", @"biz:") & 1) == 0)
  {
    v2 = v1;
  }

  else
  {
    v2 = [v1 _bestGuessURI];
  }

  v3 = v2;

  return v3;
}

uint64_t IDSCopyIDForAccount()
{
  v0 = objc_alloc(MEMORY[0x1E696AEC0]);
  v1 = *MEMORY[0x1E69A5638];

  return MEMORY[0x1EEE66B58](v0, sel_initWithString_);
}

uint64_t IDSCopyIDForAnonymousCloudIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"urn:ck:%@", v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t IDSIDHasToken()
{
  v0 = _IDSTypeForID();

  return MEMORY[0x1EEE0FF60](v0);
}

uint64_t IDSOSVersionCompare(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return -1;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = a2[1];
  if (v3 < v4)
  {
    return -1;
  }

  if (v3 > v4)
  {
    return 1;
  }

  v5 = a1[2];
  v6 = a2[2];
  v8 = __OFSUB__(v5, v6);
  v7 = v5 - v6 < 0;
  v9 = v5 > v6;
  if (v7 != v8)
  {
    return -1;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_195A9AE7C()
{
  qword_1ED5DE080 = objc_alloc_init(IDSHomeKitManager);

  return MEMORY[0x1EEE66BB8]();
}

void sub_195A9B094(void *a1)
{
  if (a1[6] && a1[4])
  {
    v2 = [[_IDSGenericCompletionHandler alloc] initWithHandler:a1[6] queue:a1[4]];
    v3 = a1[5];
    v4 = *(v3 + 8);
    *(v3 + 8) = v2;
  }

  v5 = +[IDSDaemonController sharedInstance];
  [v5 homeKitGetServiceUserIDs];
}

void sub_195A9B270(uint64_t a1)
{
  if (![*(a1 + 32) length] || !objc_msgSend(*(a1 + 40), "length") || !*(a1 + 48))
  {
    v2 = objc_alloc(MEMORY[0x1E695DF20]);
    v3 = [v2 initWithObjectsAndKeys:{@"Required Field Is Empty", *MEMORY[0x1E696A578], 0}];
    v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:1 userInfo:v3];
    (*(*(a1 + 72) + 16))();
  }

  if (*(a1 + 72) && *(a1 + 56))
  {
    v5 = [[_IDSGenericCompletionHandler alloc] initWithHandler:*(a1 + 72) queue:*(a1 + 56)];
    v6 = *(a1 + 64);
    v7 = *(v6 + 16);
    *(v6 + 16) = v5;
  }

  v8 = +[IDSDaemonController sharedInstance];
  [v8 homeKitGetAdminAccessTokensWithServiceUserID:*(a1 + 32) accessoryID:*(a1 + 40) pairingToken:*(a1 + 48)];
}

void sub_195A9B4F0(uint64_t a1)
{
  v2 = [*(a1 + 32) length];
  v3 = MEMORY[0x1E696A578];
  if (!v2 || ![*(a1 + 40) count] || !objc_msgSend(*(a1 + 48), "length"))
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"A required Field Is Empty", *v3, 0}];
    v5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:1 userInfo:v4];
    (*(*(a1 + 72) + 16))();
  }

  if ([*(a1 + 32) isEqualToIgnoringCase:*(a1 + 48)])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"ServiceUserID and AdminID can not be the same", *v3, 0}];
    v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:2 userInfo:v6];
    (*(*(a1 + 72) + 16))();
  }

  if (*(a1 + 72) && *(a1 + 56))
  {
    v8 = [[_IDSGenericCompletionHandler alloc] initWithHandler:*(a1 + 72) queue:*(a1 + 56)];
    v9 = *(a1 + 64);
    v10 = *(v9 + 24);
    *(v9 + 24) = v8;
  }

  v11 = +[IDSDaemonController sharedInstance];
  [v11 homeKitGetConsentTokensWithServiceUserID:*(a1 + 32) accessoryIDs:*(a1 + 40) adminID:*(a1 + 48)];
}

void sub_195A9B814(uint64_t a1)
{
  if (![*(a1 + 32) length] || !objc_msgSend(*(a1 + 40), "length") || !objc_msgSend(*(a1 + 48), "length") || !objc_msgSend(*(a1 + 56), "count"))
  {
    v2 = objc_alloc(MEMORY[0x1E695DF20]);
    v3 = [v2 initWithObjectsAndKeys:{@"A required Field Is Empty", *MEMORY[0x1E696A578], 0}];
    v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:1 userInfo:v3];
    (*(*(a1 + 80) + 16))();
  }

  if (*(a1 + 80) && *(a1 + 64))
  {
    v5 = [[_IDSGenericCompletionHandler alloc] initWithHandler:*(a1 + 80) queue:*(a1 + 64)];
    v6 = *(a1 + 72);
    v7 = *(v6 + 32);
    *(v6 + 32) = v5;
  }

  v8 = +[IDSDaemonController sharedInstance];
  [v8 homeKitGetUserAccessTokensWithServiceUserID:*(a1 + 32) userID:*(a1 + 40) userHandle:*(a1 + 48) accessoryRequests:*(a1 + 56)];
}

void sub_195A9BAA4(void *a1)
{
  if (a1[9] && a1[4])
  {
    v2 = [[_IDSGenericCompletionHandler alloc] initWithHandler:a1[9] queue:a1[4]];
    v3 = a1[5];
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = +[IDSDaemonController sharedInstance];
  [v5 homeKitRefreshUserAccessTokensWithServiceUserID:a1[6] userID:a1[7] accessoryRequests:a1[8]];
}

void sub_195A9BC3C(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48));
}

void sub_195A9BD9C(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48));
}

void sub_195A9BEFC(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48));
}

void sub_195A9C05C(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48));
}

void sub_195A9C1BC(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48));
}

uint64_t sub_195A9C460(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    return (*(v2 + 16))(v2, -100, 0, -1.0);
  }

  else
  {
    return (*(v2 + 16))(v2, 0, *(a1 + 56), *(a1 + 48));
  }
}

void sub_195A9CF90(uint64_t a1, int a2, void *a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  switch(a2)
  {
    case 4:
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Listener cancelled"];
      v11 = objc_alloc(MEMORY[0x1E696ABC0]);
      v18 = *MEMORY[0x1E696A578];
      v19 = v10;
      v12 = MEMORY[0x1E695DF20];
      v13 = &v19;
      v14 = &v18;
      goto LABEL_7;
    case 3:
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Listener failed with error code %d", nw_error_get_error_code(v5)];
      v11 = objc_alloc(MEMORY[0x1E696ABC0]);
      v20 = *MEMORY[0x1E696A578];
      v21[0] = v10;
      v12 = MEMORY[0x1E695DF20];
      v13 = v21;
      v14 = &v20;
LABEL_7:
      v15 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:1];
      v16 = [v11 initWithDomain:@"com.apple.identityservices.error" code:42 userInfo:v15];

      (*(*(a1 + 56) + 16))();
      goto LABEL_8;
    case 2:
      port = nw_listener_get_port(*(a1 + 32));
      v8 = *(a1 + 40);
      v9 = [*(a1 + 48) copy];
      v10 = [v8 createDataBlobFrom:v9 port:port];

      (*(*(a1 + 56) + 16))();
LABEL_8:

      break;
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_195A9D17C(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  v7 = v4;
  if (v6)
  {
    (*(v6 + 16))();
  }

  else
  {
    objc_storeStrong((v5 + 56), a2);
  }
}

uint64_t sub_195A9D28C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  if (v3)
  {
    *(v2 + 56) = 0;
    v8 = v3;

    v4 = (*(*(a1 + 40) + 16))();
    v5 = v8;
  }

  else
  {
    v4 = MEMORY[0x19A8BBEF0](*(a1 + 40));
    v6 = *(a1 + 32);
    v5 = *(v6 + 40);
    *(v6 + 40) = v4;
  }

  return MEMORY[0x1EEE66BB8](v4, v5);
}

void sub_195A9DC38()
{
  v0 = nw_quic_connection_copy_sec_protocol_options();
  sec_protocol_options_set_verify_block(v0, &unk_1F09E6700, MEMORY[0x1E69E96A0]);
}

void sub_195A9E71C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A9E82C;
  v15[3] = &unk_1E743F228;
  v11 = *(a1 + 40);
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v11;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(v10, v15);
}

void sub_195A9EA08(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A9EAC0;
  v6[3] = &unk_1E743FC50;
  v7 = *(a1 + 56);
  v5 = [a2 baaSignerCollaboratorForTopic:v4 withErrorHandler:v6];
  [v5 baaHeadersBySigningData:*(a1 + 40) serverTimestamp:*(a1 + 48) completion:*(a1 + 56)];
}

void sub_195A9EAC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B33CF4();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_195A9EC48(uint64_t a1, const void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2 && [v7 count] == 2)
  {
    v9 = [objc_alloc(MEMORY[0x1E69A51D8]) initWithSHA256Digest:0 requestBody:*(a1 + 32) serverTimestamp:*(a1 + 40) includeIcloudBAA:1];
    v10 = *(a1 + 48);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_195A9EF64;
    v23[3] = &unk_1E74416A0;
    v23[4] = v10;
    v24 = v9;
    v25 = v7;
    v27 = a2;
    v26 = *(a1 + 56);
    v11 = v9;
    [v10 signData:v11 withKey:a2 completion:v23];
  }

  else
  {
    v12 = [*(a1 + 48) errorStringForNSError:v8];
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v11 = Mutable;
    if (v12)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x1E69A4948], v12);
    }

    v14 = [*(a1 + 48) icloudBAAVersion];
    v15 = [v14 stringValue];

    if (v15)
    {
      CFDictionarySetValue(v11, *MEMORY[0x1E69A4998], v15);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_195B33D68();
    }

    if ([*(a1 + 48) isVirtualMachine])
    {
      v16 = @"2";
    }

    else
    {
      v16 = @"1";
    }

    CFDictionarySetValue(v11, *MEMORY[0x1E69A4940], v16);
    v17 = [*(a1 + 48) isBAASupportedHeaderValue];
    if (v17)
    {
      CFDictionarySetValue(v11, *MEMORY[0x1E69A4988], v17);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_195B33DF0();
    }

    v18 = objc_alloc(MEMORY[0x1E69A53B8]);
    v19 = [MEMORY[0x1E69A6180] keyTransparencyAccountKeyFetchMetricDeviceID];
    v20 = [v18 initWithSuccess:0 error:v8 deviceID:v19];

    v21 = [MEMORY[0x1E69A53A8] loggerWithCategory:4000];
    [v21 logMetric:v20];

    v22 = [MEMORY[0x1E69A5210] defaultLogger];
    [v22 logMetric:v20];

    if (a2)
    {
      CFRelease(a2);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_195A9EF64(uint64_t a1, void *a2)
{
  v27 = a2;
  v3 = [v27 resultData];
  if (v3)
  {
    v4 = [v27 timestamp];
    if (v4)
    {

      v5 = 0;
      v6 = 1;
LABEL_18:

      goto LABEL_19;
    }
  }

  v7 = [v27 icloudResultData];
  if (!v7)
  {
    v8 = [v27 icloudAltResultData];

    if (v3)
    {

      if (v8)
      {
LABEL_9:
        v5 = 0;
        v6 = 1;
        goto LABEL_19;
      }
    }

    else if (v8)
    {
      goto LABEL_9;
    }

    v9 = [v27 error];
    v3 = v9;
    if (v9)
    {
      v5 = v9;
    }

    else
    {
      v10 = [v27 icloudAltError];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = [v27 icloudError];
      }

      v5 = v12;
    }

    v6 = 0;
    goto LABEL_18;
  }

  v5 = 0;
  v6 = 1;
  if (v3)
  {
    goto LABEL_18;
  }

LABEL_19:
  v13 = [IDSBAASignerContext alloc];
  v14 = [v27 icloudDigest];
  v15 = [(IDSBAASignerContext *)v13 initWithSigningDigest:v14];

  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = [*(a1 + 48) objectAtIndexedSubscript:0];
  v19 = [*(a1 + 48) objectAtIndexedSubscript:1];
  v20 = [v16 headersBySigningData:v17 baaSigningResult:v27 baaCert:v18 intermediateRootCert:v19];

  v21 = objc_alloc(MEMORY[0x1E69A53B8]);
  v22 = [MEMORY[0x1E69A6180] keyTransparencyAccountKeyFetchMetricDeviceID];
  v23 = [v21 initWithSuccess:v6 error:v5 deviceID:v22];

  v24 = [MEMORY[0x1E69A53A8] loggerWithCategory:4000];
  [v24 logMetric:v23];

  v25 = [MEMORY[0x1E69A5210] defaultLogger];
  [v25 logMetric:v23];

  v26 = *(a1 + 64);
  if (v26)
  {
    CFRelease(v26);
  }

  (*(*(a1 + 56) + 16))();
}

void sub_195A9F32C(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A9F3DC;
  v6[3] = &unk_1E743FC50;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v5 = [a2 baaSignerCollaboratorForTopic:v4 withErrorHandler:v6];
  [v5 purgeBAACertWithCompletion:*(a1 + 40)];
}

void sub_195A9F3DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B33CF4();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }
}

void *sub_195A9F630()
{
  result = MEMORY[0x19A8BAE10]("DeviceIdentityIssueClientCertificateWithCompletion", @"DeviceIdentity");
  off_1EAEDC110 = result;
  return result;
}

void sub_195A9F660()
{
  v0 = MEMORY[0x19A8BAE10]("kMAOptionsBAAKeychainLabel", @"DeviceIdentity");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAEDC128, v1);
}

void sub_195A9F6B0()
{
  v0 = MEMORY[0x19A8BAE10]("kMAOptionsBAADeleteExistingKeysAndCerts", @"DeviceIdentity");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAEDC138, v1);
}

void sub_195A9F700(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "Completed deletion of BAA cert {error: %@}", &v9, 0xCu);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5 == 0);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void *sub_195A9F7DC()
{
  result = MEMORY[0x19A8BAE10]("DeviceIdentityIsSupported", @"DeviceIdentity");
  off_1EAEDBEC8 = result;
  return result;
}

void sub_195A9FB78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_195A9FBC0(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v20 = v5;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "Starting fetch of device identity for baa signer {validityInMinutes: %@}", buf, 0xCu);
  }

  if (qword_1EAEDC008 != -1)
  {
    sub_195B33F08();
  }

  if (qword_1EAEDC000 != -1)
  {
    sub_195B33F30();
  }

  if (qword_1EAEDBFD0 != -1)
  {
    sub_195B33F58();
  }

  if (qword_1EAEDBFE0 != -1)
  {
    sub_195B33F80();
  }

  if (qword_1EAEDBFD8 != -1)
  {
    sub_195B33FA8();
  }

  if (qword_1EAEDBFF0 != -1)
  {
    sub_195B33FD0();
  }

  if (qword_1EAEDBFE8 != -1)
  {
    sub_195B33FF8();
  }

  if (qword_1EAEDBFF8 != -1)
  {
    sub_195B34020();
  }

  if (off_1EAEDC048 && qword_1EAEDC040 && qword_1EAEDC010 && qword_1EAEDC020 && qword_1EAEDC018 && qword_1EAEDC030 && qword_1EAEDC028 && qword_1EAEDC038)
  {
    v17[0] = qword_1EAEDC040;
    v17[1] = qword_1EAEDC010;
    v6 = *(a1 + 32);
    v18[0] = @"com.apple.IDS";
    v18[1] = v6;
    v17[2] = qword_1EAEDC020;
    v16[0] = qword_1EAEDC018;
    v16[1] = qword_1EAEDC030;
    v16[2] = qword_1EAEDC028;
    v16[3] = qword_1EAEDC038;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:4];
    v18[2] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];

    v9 = off_1EAEDC048;
    v10 = [*(a1 + 40) baaQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_195AA0134;
    v12[3] = &unk_1E7441740;
    v12[4] = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = *(a1 + 64);
    v13 = v3;
    v9(v10, v8, v12);
  }

  else
  {
    v8 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_195B34048();
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void *sub_195A9FED4()
{
  result = MEMORY[0x19A8BAE10]("DeviceIdentityIssueClientCertificateWithCompletion", @"DeviceIdentity");
  off_1EAEDC048 = result;
  return result;
}

void sub_195A9FF04()
{
  v0 = MEMORY[0x19A8BAE10]("kMAOptionsBAAKeychainLabel", @"DeviceIdentity");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAEDC040, v1);
}

void sub_195A9FF54()
{
  v0 = MEMORY[0x19A8BAE10]("kMAOptionsBAAValidity", @"DeviceIdentity");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAEDC010, v1);
}

void sub_195A9FFA4()
{
  v0 = MEMORY[0x19A8BAE10]("kMAOptionsBAAOIDSToInclude", @"DeviceIdentity");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAEDC020, v1);
}

void sub_195A9FFF4()
{
  v0 = MEMORY[0x19A8BAE10]("kMAOptionsBAAOIDUCRTDeviceIdentifiers", @"DeviceIdentity");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAEDC018, v1);
}

void sub_195AA0044()
{
  v0 = MEMORY[0x19A8BAE10]("kMAOptionsBAAOIDDeviceOSInformation", @"DeviceIdentity");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAEDC030, v1);
}

void sub_195AA0094()
{
  v0 = MEMORY[0x19A8BAE10]("kMAOptionsBAAOIDProductType", @"DeviceIdentity");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAEDC028, v1);
}

void sub_195AA00E4()
{
  v0 = MEMORY[0x19A8BAE10]("kMAOptionsBAAOIDDeviceIdentifiers", @"DeviceIdentity");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAEDC038, v1);
}

void sub_195AA0134(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    *buf = 138412802;
    v26 = v10;
    v27 = 2048;
    v28 = [v7 count];
    v29 = 2112;
    v30 = v8;
    _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "Completed fetch of device identity for baa signer {referenceKey: %@, certificates: %lu, error: %@}", buf, 0x20u);
  }

  v11 = [*(a1 + 32) baaQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195AA0328;
  block[3] = &unk_1E7441718;
  v24 = a2;
  v20 = v8;
  v21 = v7;
  v23 = *(a1 + 56);
  v18 = *(a1 + 40);
  v13 = v18;
  v22 = v18;
  v14 = v7;
  v15 = v8;
  v16 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v12, v16);

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195AA0328(uint64_t a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    goto LABEL_2;
  }

  if (!*(a1 + 80))
  {
LABEL_7:
    v3 = 0;
    goto LABEL_8;
  }

  if ([*(a1 + 40) count] != 2)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
LABEL_2:
      v17 = *MEMORY[0x1E696AA08];
      v18[0] = v2;
      v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
LABEL_8:
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSBAASignerErrorDomain" code:4 userInfo:v3];
      v13 = *(*(a1 + 72) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  *(*(*(a1 + 56) + 8) + 24) = *(a1 + 80);
  v4 = objc_alloc(MEMORY[0x1E695DEC8]);
  v5 = [*(a1 + 40) objectAtIndexedSubscript:0];
  v6 = SecCertificateCopyData(v5);
  v7 = [*(a1 + 40) objectAtIndexedSubscript:1];
  v8 = SecCertificateCopyData(v7);
  v9 = [v4 initWithObjects:{v6, v8, 0}];
  v10 = *(*(a1 + 64) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  objc_storeStrong((*(*(a1 + 72) + 8) + 40), *(a1 + 32));
LABEL_9:
  result = (*(*(a1 + 48) + 16))();
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_195AA04D8(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (a2)
    {
      v5 = @"YES";
    }

    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "Device identity fetch final block called {timedOut: %@}", buf, 0xCu);
  }

  v6 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195AA0638;
  block[3] = &unk_1E7441790;
  v13 = a2;
  v12 = *(a1 + 56);
  v9 = *(a1 + 40);
  v7 = v9;
  v11 = v9;
  dispatch_async(v6, block);

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195AA0638(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v2 = *(*(a1 + 48) + 8);
    v3 = *(v2 + 40);
    *(v2 + 40) = 0;

    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSBAASignerErrorDomain" code:1 userInfo:0];
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v7 = *(*(*(a1 + 40) + 8) + 24);
  v8 = *(*(*(a1 + 48) + 8) + 40);
  v9 = *(*(*(a1 + 56) + 8) + 40);
  v10 = *(*(a1 + 32) + 16);

  return v10();
}

void sub_195AA0CB8(uint64_t a1)
{
  if (qword_1EAEDC148 != -1)
  {
    sub_195B34088();
  }

  if (off_1EAEDC140)
  {
    v2 = *(a1 + 32);
    v47 = 0;
    v48[0] = 0;
    v3 = off_1EAEDC140(v2, 0, v48, &v47);
    v4 = v48[0];
    v5 = v47;
    v6 = *(a1 + 40);
    v45 = 0;
    v46 = 0;
    v7 = off_1EAEDC140(v6, 0, &v46, &v45);
    v30 = v46;
    v8 = v45;
    if (!(v5 | v8))
    {
      v11 = 0;
      v5 = 0;
      goto LABEL_12;
    }

    v9 = v8;
    v10 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_195B3409C();
    }
  }

  else
  {
    v10 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_195B34120();
    }

    v30 = 0;
    v7 = 0;
    v9 = 0;
    v3 = 0;
    v5 = 0;
    v4 = 0;
  }

  v11 = v9;
LABEL_12:
  v12 = [*(a1 + 48) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195AA102C;
  block[3] = &unk_1E7441800;
  v43 = *(a1 + 128);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v44 = *(a1 + 136);
  v16 = *(a1 + 80);
  *&v17 = v15;
  *(&v17 + 1) = v16;
  *&v18 = v13;
  *(&v18 + 1) = v14;
  v33 = v18;
  v34 = v17;
  v19 = *(a1 + 88);
  v20 = *(a1 + 96);
  v21 = *(a1 + 104);
  v22 = *(a1 + 112);
  *&v23 = v21;
  *(&v23 + 1) = v22;
  *&v24 = v19;
  *(&v24 + 1) = v20;
  v35 = v24;
  v36 = v23;
  v37 = *(a1 + 120);
  v38 = v4;
  v39 = v3;
  v40 = v7;
  v41 = v5;
  v42 = v11;
  v25 = v11;
  v26 = v5;
  v27 = v7;
  v28 = v3;
  v29 = v4;
  dispatch_async(v12, block);
}

void *sub_195AA0FFC()
{
  result = MEMORY[0x19A8BAE10]("DeviceIdentityCreateHostSignature", @"DeviceIdentity");
  off_1EAEDC140 = result;
  return result;
}

void sub_195AA102C(uint64_t a1)
{
  v2 = *(a1 + 144);
  v3 = [IDSBAASigningResult alloc];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 152);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v15 = *(a1 + 72);
  v13 = *(a1 + 104);
  v14 = *(a1 + 88);
  v12 = *(a1 + 120);
  v10 = *(a1 + 136);
  v16 = [&unk_1F0A29990 stringValue];
  v11 = [IDSBAASigningResult initWithResultData:v3 timestamp:"initWithResultData:timestamp:error:currentTimestampInMs:icloudDigest:icloudAltDigest:icloudResultData:icloudAltResultData:icloudError:icloudAltError:hostCertChain:hostResultData:hostAltResultData:hostError:hostAltError:baaCertSource:" error:v4 currentTimestampInMs:v5 icloudDigest:v7 icloudAltDigest:v6 icloudResultData:v8 icloudAltResultData:v9 icloudError:v15 icloudAltError:v14 hostCertChain:v13 hostResultData:v12 hostAltResultData:v10 hostError:v16 hostAltError:? baaCertSource:?];
  (*(v2 + 16))(v2, v11);
}

uint64_t sub_195AA16F0()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = *MEMORY[0x1E69A4938];
  v2 = [v0 initWithObjects:{*MEMORY[0x1E69A4998], *MEMORY[0x1E69A4938], *MEMORY[0x1E69A4990], *MEMORY[0x1E69A4970], *MEMORY[0x1E69A4978], *MEMORY[0x1E69A4948], *MEMORY[0x1E69A4950], *MEMORY[0x1E69A4960], *MEMORY[0x1E69A4968], *MEMORY[0x1E69A4958], *MEMORY[0x1E69A4940], *MEMORY[0x1E69A4988], 0}];
  v3 = qword_1EAEDC158;
  qword_1EAEDC158 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

id sub_195AA34E8(uint64_t a1)
{
  if (*(a1 + 72))
  {
    if (*(a1 + 80) == 1)
    {
      v2 = *(a1 + 48);
      if (v2)
      {
        (*(v2 + 16))(v2, 0);
      }
    }

    v3 = *(a1 + 32);
    (*(*(a1 + 56) + 16))();
    if (*(a1 + 81) == 1)
    {
      v4 = *(a1 + 64);
      if (v4)
      {
        (*(v4 + 16))(v4, 0);
      }
    }
  }

  else
  {
    v5 = *(a1 + 56);
    v6 = *(a1 + 32);
    (*(*(a1 + 56) + 16))();
  }

  v7 = *(a1 + 32);
  v8 = objc_opt_self();
  v9 = *(a1 + 40);
  return objc_opt_self();
}

id sub_195AA3FB4(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKey:*MEMORY[0x1E69A5570]];
  if (MEMORY[0x19A8BADE0]())
  {
    v3 = IMCanonicalizeFormattedString();

    v2 = v3;
  }

  return v2;
}

void sub_195AA5B68(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 56) object];
    [v4 account:v3 nearbyDevicesChanged:*(a1 + 40)];
  }
}

void sub_195AA5CEC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 56) object];
    [v4 account:v3 connectedDevicesChanged:*(a1 + 40)];
  }
}

void sub_195AA5E5C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 56) object];
    [v4 account:v3 devicesChanged:*(a1 + 40)];
  }
}

void sub_195AA68A4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 account:*(a1 + 32) registrationStatusInfoChanged:*(a1 + 40)];
  }
}

void sub_195AA6904(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 56) object];
    [v4 account:v3 isActiveChanged:*(a1 + 40)];
  }
}

void sub_195AA6BAC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 account:*(a1 + 32) aliasesChanged:*(a1 + 40)];
  }
}

void sub_195AA6C0C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 56) object];
    [v4 account:v3 isActiveChanged:*(a1 + 40)];
  }
}

void sub_195AA6E44(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 account:*(a1 + 32) vettedAliasesChanged:*(a1 + 40)];
  }
}

void sub_195AA7064(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 account:*(a1 + 32) profileChanged:*(a1 + 40)];
  }
}

void sub_195AA7284(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 account:*(a1 + 32) loginChanged:*(a1 + 40)];
  }
}

void sub_195AA74A4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 account:*(a1 + 32) displayNameChanged:*(a1 + 40)];
  }
}

void sub_195AA771C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 account:*(a1 + 32) pseudonymsChanged:*(a1 + 40)];
  }
}

void sub_195AA7F60(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 refreshRegistrationForAccount:*(a1 + 32)];
  }
}

uint64_t sub_195AA87B0()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A53008];
  v1 = qword_1ED5DDE70;
  qword_1ED5DDE70 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_195AA8C90(uint64_t a1)
{
  v2 = objc_alloc_init(IDSService);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195AA8D70;
  v8[3] = &unk_1E7441960;
  v6 = *(a1 + 48);
  v9 = v2;
  v10 = v6;
  v7 = v2;
  [_IDSService serviceWithIdentifier:v3 commands:v4 manuallyAckMessages:v5 delegateContext:v7 completion:v8];
}

void sub_195AA8D70(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (!v8 || a3)
  {
    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 8), a2);
    v6 = *(a1 + 32);
    v7 = *(*(a1 + 40) + 16);
  }

  v7();
}

uint64_t sub_195AA9004(uint64_t a1)
{
  v2 = [[_IDSService alloc] initWithService:*(a1 + 40) commands:*(a1 + 48) manuallyAckMessages:*(a1 + 56) delegateContext:*(a1 + 32)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t sub_195AA95DC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  return MEMORY[0x1EEE66B58](*(*(a1 + 32) + 8), sel_setProtobufAction_forProtobufType_isResponse_);
}

uint64_t sub_195AA9698(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  return MEMORY[0x1EEE66B58](*(*(a1 + 32) + 8), sel_setProtobufAction_forProtobufType_isResponse_);
}

void sub_195AA97A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AA97BC(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) protobufActionForType:*(a1 + 48) isResponse:0];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195AA98F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AA9908(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) protobufActionForType:*(a1 + 48) isResponse:1];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195AA9AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AA9B0C(void *a1)
{
  result = [*(a1[4] + 8) sendProtobuf:a1[5] fromAccount:a1[6] toDestinations:a1[7] priority:a1[10] options:a1[8] identifier:a1[11] error:a1[12]];
  *(*(a1[9] + 8) + 24) = result;
  return result;
}

void sub_195AA9D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AA9D1C(void *a1)
{
  result = [*(a1[4] + 8) sendProtobuf:a1[5] fromAccount:0 toDestinations:a1[6] priority:a1[9] options:a1[7] identifier:a1[10] error:a1[11]];
  *(*(a1[8] + 8) + 24) = result;
  return result;
}

void sub_195AA9EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AA9EFC(void *a1)
{
  result = [*(a1[4] + 8) sendOpportunisticData:a1[5] options:a1[6] identifier:a1[7] error:a1[9]];
  *(*(a1[8] + 8) + 24) = result;
  return result;
}

void sub_195AAA060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAA078(void *a1)
{
  result = [*(a1[4] + 8) cancelOpportunisticDataWithIdentifier:a1[5] error:a1[7]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_195AAA294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAA2AC(void *a1)
{
  result = [*(a1[4] + 8) sendMessage:a1[5] fromAccount:a1[6] toDestinations:a1[7] priority:a1[10] options:a1[8] identifier:a1[11] error:a1[12]];
  *(*(a1[9] + 8) + 24) = result;
  return result;
}

void sub_195AAA488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAA4A0(void *a1)
{
  result = [*(a1[4] + 8) sendMessage:a1[5] fromAccount:0 toDestinations:a1[6] priority:a1[9] options:a1[7] identifier:a1[10] error:a1[11]];
  *(*(a1[8] + 8) + 24) = result;
  return result;
}

void sub_195AAA61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAA634(void *a1)
{
  result = [*(a1[4] + 8) cancelMessageWithOptions:a1[5] identifier:a1[7] error:a1[8]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_195AAA7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAA7DC(void *a1)
{
  result = [*(a1[4] + 8) cancelMessageWithOptions:a1[5] destination:a1[6] identifier:a1[8] error:a1[9]];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

void sub_195AAA970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAA988(void *a1)
{
  result = [*(a1[4] + 8) cancelMessageWithOptions:a1[5] destinations:a1[6] identifier:a1[8] error:a1[9]];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

void sub_195AAAB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAAB8C(void *a1)
{
  result = [*(a1[4] + 8) sendData:a1[5] fromAccount:a1[6] toDestinations:a1[7] priority:a1[10] options:a1[8] identifier:a1[11] error:a1[12]];
  *(*(a1[9] + 8) + 24) = result;
  return result;
}

void sub_195AAAD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAAD80(void *a1)
{
  result = [*(a1[4] + 8) sendData:a1[5] fromAccount:0 toDestinations:a1[6] priority:a1[9] options:a1[7] identifier:a1[10] error:a1[11]];
  *(*(a1[8] + 8) + 24) = result;
  return result;
}

void sub_195AAAF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAAF90(void *a1)
{
  result = [*(a1[4] + 8) sendAccessoryData:a1[5] toAccessoryID:a1[6] accessToken:a1[7] options:a1[8] identifier:a1[10] error:a1[11]];
  *(*(a1[9] + 8) + 24) = result;
  return result;
}

void sub_195AAB14C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAB164(void *a1)
{
  result = [*(a1[4] + 8) sendInvitation:a1[5] fromAccount:0 toDestination:a1[6] options:a1[7] identifier:a1[9] error:a1[10]];
  *(*(a1[8] + 8) + 24) = result;
  return result;
}

void sub_195AAB320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAB338(void *a1)
{
  result = [*(a1[4] + 8) sendInvitationUpdate:a1[5] fromAccount:0 toDestination:a1[6] options:a1[7] identifier:a1[9] error:a1[10]];
  *(*(a1[8] + 8) + 24) = result;
  return result;
}

void sub_195AAB47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAB494(void *a1)
{
  result = [*(a1[4] + 8) setWakingPushPriority:a1[6] error:a1[7]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

void sub_195AAB62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAB644(void *a1)
{
  result = [*(a1[4] + 8) sendData:a1[5] priority:a1[8] options:a1[6] identifier:a1[9] error:a1[10]];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

void sub_195AAB834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAB84C(void *a1)
{
  v2 = a1[11];
  result = [*(a1[4] + 8) sendResourceAtURL:a1[5] metadata:a1[6] fromAccount:0 toDestinations:a1[7] priority:a1[10] options:a1[8] identifier:a1[11] error:a1[12]];
  *(*(a1[9] + 8) + 24) = result;
  return result;
}

void sub_195AAB9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAB9E0(void *a1)
{
  result = [*(a1[4] + 8) getProgressUpdateForIdentifier:a1[5] error:a1[7]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_195AABB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AABB8C(void *a1)
{
  result = [*(a1[4] + 8) sendAheadGroup:a1[5] priority:a1[8] options:a1[6] identifier:a1[9] completion:&unk_1F09E69E0];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

void sub_195AABCEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AABD04(void *a1)
{
  result = [*(a1[4] + 8) reportSpamMessage:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_195AABF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AABF48(void *a1)
{
  result = [*(a1[4] + 8) sendCertifiedDeliveryReceipt:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_195AAC094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAC0AC(void *a1)
{
  result = [*(a1[4] + 8) sendBatchMessageProcessedContext:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_195AAC204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAC21C(void *a1)
{
  result = [*(a1[4] + 8) noteMetricOfType:a1[7] context:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_195AAC37C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAC394(void *a1)
{
  result = [*(a1[4] + 8) cancelIdentifier:a1[5] error:a1[7]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_195AAC534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAC54C(void *a1)
{
  result = [*(a1[4] + 8) sendServerMessage:a1[5] command:a1[6] fromAccount:a1[7]];
  *(*(a1[8] + 8) + 24) = result;
  return result;
}

void sub_195AAC674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAC68C(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) registrationRestrictionReason];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195AAC7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAC810(void *a1)
{
  v2 = [*(a1[4] + 8) linkedDevicesWithRelationship:a1[6]];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AAC990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAC9A8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) serviceDomain];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AACB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AACB3C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) internalAccounts];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AACC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AACC90(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) canSend];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195AACE1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AACE34(void *a1)
{
  v2 = [*(a1[4] + 8) deviceForFromID:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AACFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAD000(void *a1)
{
  v2 = [*(a1[4] + 8) linkedDeviceForFromID:a1[5] withRelationship:a1[7]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AAD180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAD198(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) firstRoutableInternetDestinationForSelf];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AAD33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAD354(void *a1)
{
  v2 = [*(a1[4] + 8) deviceForUniqueID:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AAD4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAD510(void *a1)
{
  v2 = [*(a1[4] + 8) devicesForBTUUID:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AAD6B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAD6CC(void *a1)
{
  v2 = [*(a1[4] + 8) uriForFromID:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AAD88C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _internal];
  [v2 setNeedsLaunchOnNearbyDevicesChanged:v1];
}

void sub_195AAD9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195AAD9E4(uint64_t a1)
{
  v2 = [*(a1 + 32) _internal];
  *(*(*(a1 + 40) + 8) + 24) = [v2 needsLaunchOnNearbyDevicesChanged];
}

void sub_195AADDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AADDB8(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) isPretendingToBeFull];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195AADFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAE010(void *a1)
{
  result = [*(a1[4] + 8) updateSubServices:a1[5] forDevice:a1[6]];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

void sub_195AAE1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAE1C8(void *a1)
{
  v2 = [*(a1[4] + 8) datagramConnectionForSessionDestination:a1[5] error:a1[7]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AAE388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAE3A0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) datagramConnectionForSessionDestination:*(a1 + 40) uid:*(a1 + 64) error:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AAE53C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAE554(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) datagramConnectionForSocketDescriptor:*(a1 + 56) error:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AAE710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAE728(void *a1)
{
  v2 = [*(a1[4] + 8) streamConnectionForSessionDestination:a1[5] error:a1[7]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AAE8C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAE8D8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) streamConnectionForSocketDescriptor:*(a1 + 56) error:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AAEBA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAEBBC(void *a1)
{
  v2 = [*(a1[4] + 8) datagramChannelForSessionDestination:a1[5] options:a1[6] error:a1[8]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AAED58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAED70(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) datagramChannelForSocketDescriptor:*(a1 + 56) error:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t sub_195AAF130(uint64_t a1, void *a2)
{
  v3 = [a2 aliasStrings];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

id sub_195AAF184(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEqualToIgnoringCase:*MEMORY[0x1E69A5630]])
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

void sub_195AAF2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAF2E8(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) maxEffectivePayloadSize];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195AAF44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAF464(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) URIs];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AAF5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAF5F8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) pseudonymURIMap];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AAF79C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAF7B4(void *a1)
{
  v2 = [*(a1[4] + 8) pseudonymForPseudonymURI:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AAF958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAF970(void *a1)
{
  v2 = [*(a1[4] + 8) pseudonymsForMaskedURI:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AAFB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AAFB58(void *a1)
{
  v2 = [*(a1[4] + 8) pseudonymsForMaskedURI:a1[5] matchingProperties:a1[6]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AAFD80(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(v2 + 8);
  if (a1[6])
  {
    v5 = a1[7];
    v6 = *(v2 + 8);

    [v6 provisionPseudonymWithProperties:v3 requestProperties:? completion:?];
  }

  else
  {
    v7 = [MEMORY[0x1E69A53A0] defaultProperties];
    [v4 provisionPseudonymWithProperties:v3 requestProperties:v7 completion:a1[7]];
  }
}

void sub_195AAFF98(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(v2 + 8);
  v5 = a1[6];
  if (a1[7])
  {
    v6 = a1[8];
    v7 = *(v2 + 8);

    [v7 provisionPseudonymForURI:v3 withProperties:v5 requestProperties:? completion:?];
  }

  else
  {
    v8 = [MEMORY[0x1E69A53A0] defaultProperties];
    [v4 provisionPseudonymForURI:v3 withProperties:v5 requestProperties:v8 completion:a1[8]];
  }
}

void sub_195AB0298(double *a1)
{
  v2 = *(a1 + 5);
  v3 = *(*(a1 + 4) + 8);
  v4 = a1[7];
  v5 = [MEMORY[0x1E69A53A0] defaultProperties];
  [v3 renewPseudonym:v2 forUpdatedExpiryEpoch:v5 requestProperties:*(a1 + 6) completion:v4];
}

void sub_195AB0414(void *a1)
{
  v2 = a1[5];
  v3 = *(a1[4] + 8);
  v4 = [MEMORY[0x1E69A53A0] defaultProperties];
  [v3 revokePseudonym:v2 requestProperties:v4 completion:a1[6]];
}

void sub_195AB0618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AB0630(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) pseudonymPropertiesWithFeatureID:*(a1 + 40) scopeID:*(a1 + 48) expiryDurationInSeconds:*(a1 + 64)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

uint64_t sub_195AB08F4(void *a1)
{
  v1 = a1[5];
  v3 = a1[7];
  v2 = a1[8];
  v4 = a1[6];
  return MEMORY[0x1EEE66B58](*(a1[4] + 8), sel_signData_withAlgorithm_options_completion_);
}

uint64_t sub_195AB0A8C(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = a1[7];
  v5 = a1[9];
  v4 = a1[10];
  v6 = a1[8];
  return MEMORY[0x1EEE66B58](*(a1[4] + 8), sel_verifySignedData_matchesExpectedData_withTokenURI_forAlgorithm_options_completion_);
}

uint64_t sub_195AB0BDC(void *a1)
{
  v1 = a1[5];
  v3 = a1[7];
  v2 = a1[8];
  v4 = a1[6];
  return MEMORY[0x1EEE66B58](*(a1[4] + 8), sel_verifySignedPayloads_forAlgorithm_options_completion_);
}

uint64_t sub_195AB0D1C(void *a1)
{
  v1 = a1[5];
  v3 = a1[7];
  v2 = a1[8];
  v4 = a1[6];
  return MEMORY[0x1EEE66B58](*(a1[4] + 8), sel_reportAction_ofTempURI_fromURI_withCompletion_);
}

void IDSAppleCareSignIDSIn(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v15 = a1;
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (_IDSRunningInDaemon())
  {
    sub_195B37E1C();
  }

  v13 = sub_195AB0F0C(v11, v12);
  if (v13)
  {
    if (qword_1EAEDC178 != -1)
    {
      sub_195B37E08();
    }

    v14 = +[IDSDaemonController sharedInstance];
    [v14 appleCareSignInUserName:v15 DSID:v9 authToken:v10 requestID:v13];
  }
}

id sub_195AB0F0C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = MEMORY[0x19A8BBEF0](v3);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195AB1254;
  v14[3] = &unk_1E743E850;
  v15 = v3;
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v9 = [[IDSDaemonResponseHandler alloc] initWithBlock:v6 queue:v7];

  v10 = sub_195AB12DC();
  if (qword_1EAEDC168 != -1)
  {
    sub_195B37E48();
  }

  if (byte_1EAEDC160 == 1)
  {
    v11 = IMGetDomainIntForKey();
  }

  else
  {
    v11 = 60.0;
  }

  v12 = [v10 scheduleTimeoutWithResponseHandler:v9 timeoutInterval:v14 timeoutBlock:v11];

  return v12;
}

void IDSAppleCareSignIDSOut(void *a1, void *a2)
{
  v6 = a1;
  v3 = a2;
  if (_IDSRunningInDaemon())
  {
    sub_195B37E70();
  }

  v4 = sub_195AB0F0C(v6, v3);
  if (v4)
  {
    if (qword_1EAEDC178 != -1)
    {
      sub_195B37E08();
    }

    v5 = +[IDSDaemonController sharedInstance];
    [v5 appleCareSignOutUserWithRequestID:v4];
  }
}

void IDSAppleCareSetDaemonDisconnectedBlock(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (_IDSRunningInDaemon())
  {
    sub_195B37E9C();
  }

  v5 = [IDSAppleCareDaemonResponseListener alloc];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195AB1244;
  v10[3] = &unk_1E743E850;
  v11 = v3;
  v6 = v3;
  v7 = [(IDSAppleCareDaemonResponseListener *)v5 initWithDisconnectedBlockAndNoTimeout:v10];
  v8 = +[IDSDaemonController sharedInstance];
  v9 = [v8 listener];
  [v9 addHandler:v7];
}

void sub_195AB1254(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = objc_alloc(MEMORY[0x1E696ABC0]);
    v3 = [v2 initWithDomain:*MEMORY[0x1E69A4CB8] code:2 userInfo:0];
    (*(*(a1 + 32) + 16))();
  }
}

id sub_195AB12DC()
{
  if (qword_1EAEDBF60 != -1)
  {
    sub_195B37EC8();
  }

  v1 = qword_1EAEDBF40;

  return v1;
}

uint64_t sub_195AB1320()
{
  v0 = objc_alloc_init(IDSDaemonRequestTimer);
  v1 = qword_1EAEDBF40;
  qword_1EAEDBF40 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_195AB135C()
{
  result = IMGetDomainBoolForKey();
  byte_1EAEDC160 = result;
  return result;
}

void sub_195AB138C()
{
  v0 = [IDSAppleCareDaemonResponseListener alloc];
  v1 = sub_195AB12DC();
  v2 = [(IDSAppleCareDaemonResponseListener *)v0 initWithRequestTimer:v1];
  v3 = qword_1EAEDC170;
  qword_1EAEDC170 = v2;

  v5 = +[IDSDaemonController sharedInstance];
  v4 = [v5 listener];
  [v4 addHandler:qword_1EAEDC170];
}

void IDSiCloudSignIn(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v33 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (_IDSRunningInDaemon())
  {
    sub_195B37EDC();
  }

  v17 = [MEMORY[0x1E69A6138] iCloud];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"YES";
    v21 = 138413570;
    v22 = v11;
    if (!v13)
    {
      v18 = @"NO";
    }

    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v18;
    v27 = 2112;
    v28 = v14;
    v29 = 2112;
    v30 = v15;
    v31 = 2112;
    v32 = v16;
    _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "iCloud sign in with userName %@ authToken %@ password %@ accountInfo %@ status %@ and handles %@", &v21, 0x3Eu);
  }

  v19 = +[IDSDaemonController sharedInstance];
  [v19 iCloudSignInWithUserName:v11 authToken:v12 password:v13 accountInfo:v14 accountStatus:v15 handles:v16];

  v20 = *MEMORY[0x1E69E9840];
}

void IDSiCloudSignOut()
{
  if (_IDSRunningInDaemon())
  {
    sub_195B37F08();
  }

  v0 = [MEMORY[0x1E69A6138] iCloud];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1959FF000, v0, OS_LOG_TYPE_DEFAULT, "iCloud sign out", v2, 2u);
  }

  v1 = +[IDSDaemonController sharedInstance];
  [v1 iCloudSignOut];
}

void IDSiCloudUpdate(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (_IDSRunningInDaemon())
  {
    sub_195B37F34();
  }

  v5 = [MEMORY[0x1E69A6138] iCloud];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "iCloud update for userName %@ accountInfo %@", &v8, 0x16u);
  }

  v6 = +[IDSDaemonController sharedInstance];
  [v6 iCloudUpdateForUserName:v3 accountInfo:v4];

  v7 = *MEMORY[0x1E69E9840];
}

void IDSiCloudModify(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (_IDSRunningInDaemon())
  {
    sub_195B37F60();
  }

  v2 = [MEMORY[0x1E69A6138] iCloud];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v1;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "iCloud modify for userName %@", &v5, 0xCu);
  }

  v3 = +[IDSDaemonController sharedInstance];
  [v3 iCloudModifyForUserName:v1];

  v4 = *MEMORY[0x1E69E9840];
}

void IDSiTunesSignIn(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v33 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (_IDSRunningInDaemon())
  {
    sub_195B37F8C();
  }

  v17 = [MEMORY[0x1E69A6138] iCloud];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"YES";
    v21 = 138413570;
    v22 = v11;
    if (!v13)
    {
      v18 = @"NO";
    }

    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v18;
    v27 = 2112;
    v28 = v14;
    v29 = 2112;
    v30 = v15;
    v31 = 2112;
    v32 = v16;
    _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "iTunes sign in with userName %@ authToken %@ password %@ accountInfo %@ status %@ and handles %@", &v21, 0x3Eu);
  }

  v19 = +[IDSDaemonController sharedInstance];
  [v19 iTunesSignInWithUserName:v11 authToken:v12 password:v13 accountInfo:v14 accountStatus:v15 handles:v16];

  v20 = *MEMORY[0x1E69E9840];
}

void IDSiTunesSignOut()
{
  if (_IDSRunningInDaemon())
  {
    sub_195B37FB8();
  }

  v0 = [MEMORY[0x1E69A6138] iCloud];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1959FF000, v0, OS_LOG_TYPE_DEFAULT, "iTunes sign out", v2, 2u);
  }

  v1 = +[IDSDaemonController sharedInstance];
  [v1 iTunesSignOut];
}

void IDSGameCenterSignIn(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v33 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (_IDSRunningInDaemon())
  {
    sub_195B37FE4();
  }

  v17 = [MEMORY[0x1E69A6138] iCloud];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"YES";
    v21 = 138413570;
    v22 = v11;
    if (!v13)
    {
      v18 = @"NO";
    }

    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v18;
    v27 = 2112;
    v28 = v14;
    v29 = 2112;
    v30 = v15;
    v31 = 2112;
    v32 = v16;
    _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "GameCenter sign in with userName %@ authToken %@ password %@ accountInfo %@ status %@ and handles %@", &v21, 0x3Eu);
  }

  v19 = +[IDSDaemonController sharedInstance];
  [v19 gameCenterSignInWithUserName:v11 authToken:v12 password:v13 accountInfo:v14 accountStatus:v15 handles:v16];

  v20 = *MEMORY[0x1E69E9840];
}

void IDSGameCenterSignOut()
{
  if (_IDSRunningInDaemon())
  {
    sub_195B38010();
  }

  v0 = [MEMORY[0x1E69A6138] iCloud];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1959FF000, v0, OS_LOG_TYPE_DEFAULT, "GameCenter sign out", v2, 2u);
  }

  v1 = +[IDSDaemonController sharedInstance];
  [v1 gameCenterSignOut];
}

void IDSGameCenterModify(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (_IDSRunningInDaemon())
  {
    sub_195B3803C();
  }

  v2 = [MEMORY[0x1E69A6138] iCloud];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v1;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "GameCenter modify for userName %@", &v5, 0xCu);
  }

  v3 = +[IDSDaemonController sharedInstance];
  [v3 gameCenterModifyForUserName:v1];

  v4 = *MEMORY[0x1E69E9840];
}

void IDSUpdateUser(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E69A6138] iCloud];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "IDS update user { oldUserName: %@, newUserName: %@ }", &v8, 0x16u);
  }

  v6 = +[IDSDaemonController sharedInstance];
  [v6 updateUserWithOldUserName:v3 newUserName:v4];

  v7 = *MEMORY[0x1E69E9840];
}

void sub_195AB222C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AB2244(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195AB23D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195AB23F0(uint64_t a1)
{
  v2 = [*(a1 + 32) _criticalFindRequestContextWithResponseHandler:*(a1 + 40)];
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringGUID];
    v4 = *(*(a1 + 56) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = objc_alloc(MEMORY[0x1E69A6168]);
    v7 = *(a1 + 64);
    v8 = *(*(*(a1 + 56) + 8) + 40);
    v9 = *(a1 + 32);
    v10 = dispatch_get_global_queue(0, 0);
    v11 = [v6 initWithTimeInterval:v8 name:1 shouldWake:v9 target:sel__handleSystemTimerFired_ selector:v8 userInfo:v10 queue:v7];

    v12 = [[IDSDaemonRequestContext alloc] initWithResponseHandler:*(a1 + 40) timeoutBlock:*(a1 + 48) systemTimer:v11];
    [*(*(a1 + 32) + 8) setObject:v12 forKeyedSubscript:*(*(*(a1 + 56) + 8) + 40)];

    v2 = 0;
  }
}

void sub_195AB294C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AB2964(uint64_t a1)
{
  v2 = [*(a1 + 32) _criticalInvalidateTimeoutAndReturnHandlerForRequestID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AB2AFC(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(*(a1 + 32) + 8) allKeys];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*v2 _criticalInvalidateTimeoutAndReturnHandlerForRequestID:*(*(&v10 + 1) + 8 * v7)];
        if (v8)
        {
          [*(a1 + 40) addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  if ([*(*v2 + 1) count])
  {
    sub_195B38068(a1, v2);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_195AB36F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_activity_scope_state_s state, char a13)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_195AB38C0(uint64_t a1)
{
  v1 = a1;
  v70 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 82) = 1;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v2 = *(*(a1 + 32) + 32);
  v48 = [v2 countByEnumeratingWithState:&v55 objects:v69 count:16];
  if (v48)
  {
    obj = v2;
    LODWORD(v2) = 0;
    v3 = 0;
    v4 = 0;
    v51 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v45 = 0;
    v46 = 0;
    v8 = 0;
    v44 = 0;
    v52 = 0;
    v42 = v1;
    v47 = *v56;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        v50 = v2;
        if (*v56 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v49 = v3;
        v10 = *(*(&v55 + 1) + 8 * i);
        v11 = HIDWORD(v52);
        if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
        {
          v11 = 1;
        }

        v12 = objc_opt_respondsToSelector();
        if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
        {
          BYTE4(v46) = 1;
        }

        HIDWORD(v52) = v11;
        if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
        {
          LOBYTE(v46) = 1;
        }

        v13 = v7;
        if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
        {
          BYTE4(v45) = 1;
        }

        v14 = v4;
        v15 = objc_opt_respondsToSelector();
        if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
        {
          v44 = 1;
        }

        v16 = objc_opt_respondsToSelector();
        if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
        {
          LOBYTE(v45) = 1;
          HIDWORD(v52) = 1;
        }

        v5 |= v12;
        LOBYTE(v52) = v15 | v52;
        v8 |= v16;
        v6 |= objc_opt_respondsToSelector();
        v51 |= objc_opt_respondsToSelector();
        v17 = objc_opt_respondsToSelector();
        v4 = v17 | objc_opt_respondsToSelector() | v14;
        v3 = objc_opt_respondsToSelector() | v49;
        v7 = objc_opt_respondsToSelector() | v13;
        LODWORD(v2) = objc_opt_respondsToSelector() | v50;
      }

      v48 = [obj countByEnumeratingWithState:&v55 objects:v69 count:16];
    }

    while (v48);

    if (v8)
    {
      v1 = v42;
      *(*(v42 + 32) + 88) = 0;
      v18 = 1;
      v19 = v51;
      v20 = v44;
      v21 = v45;
      goto LABEL_39;
    }

    v1 = v42;
    v19 = v51;
    v20 = v44;
    v21 = v45;
  }

  else
  {

    v46 = 0;
    v52 = 0;
    BYTE4(v45) = 0;
    v20 = 0;
    v21 = 0;
    LOBYTE(v7) = 0;
    LOBYTE(v6) = 0;
    v5 = 0;
    v19 = 0;
    LOBYTE(v4) = 0;
    LOBYTE(v3) = 0;
    LOBYTE(v2) = 0;
  }

  v18 = [*(*(v1 + 32) + 48) count] != 0;
  *(*(v1 + 32) + 88) = 0;
LABEL_39:
  if ((v52 & 0x100000000) != 0)
  {
    v22 = MEMORY[0x1E69A54A0];
    *(*(v1 + 32) + 88) |= *MEMORY[0x1E69A54B8];
    *(*(v1 + 32) + 88) |= *v22;
  }

  if ((v46 & 0x100000000) != 0)
  {
    *(*(v1 + 32) + 88) |= *MEMORY[0x1E69A54E0];
  }

  if (v46)
  {
    *(*(v1 + 32) + 88) |= *MEMORY[0x1E69A5500];
  }

  if ((v45 & 0x100000000) == 0)
  {
    if ((v52 & 1) == 0)
    {
      goto LABEL_51;
    }

    v23 = *MEMORY[0x1E69A54A8];
    goto LABEL_50;
  }

  v23 = *MEMORY[0x1E69A54A8];
  *(*(v1 + 32) + 88) |= *MEMORY[0x1E69A54A8];
  if (v52)
  {
LABEL_50:
    *(*(v1 + 32) + 88) |= v23;
  }

LABEL_51:
  if ((v20 & 1) == 0)
  {
    if (!v18)
    {
      goto LABEL_57;
    }

    v25 = *MEMORY[0x1E69A54A0];
    goto LABEL_56;
  }

  v24 = MEMORY[0x1E69A54A0];
  *(*(v1 + 32) + 88) |= *MEMORY[0x1E69A54B0];
  v25 = *v24;
  *(*(v1 + 32) + 88) |= *v24;
  if (v18)
  {
LABEL_56:
    *(*(v1 + 32) + 88) |= *MEMORY[0x1E69A54C0];
    *(*(v1 + 32) + 88) |= v25;
  }

LABEL_57:
  if (v21)
  {
    *(*(v1 + 32) + 88) |= *MEMORY[0x1E69A54C8];
    if ((v6 & 1) == 0)
    {
LABEL_59:
      if ((v5 & 1) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_78;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_59;
  }

  *(*(v1 + 32) + 88) |= *MEMORY[0x1E69A54D8];
  if ((v5 & 1) == 0)
  {
LABEL_60:
    if ((v19 & 1) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(*(v1 + 32) + 88) |= *MEMORY[0x1E69A5498];
  if ((v19 & 1) == 0)
  {
LABEL_61:
    if ((v4 & 1) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(*(v1 + 32) + 88) |= *MEMORY[0x1E69A54E8];
  if ((v4 & 1) == 0)
  {
LABEL_62:
    if ((v7 & 1) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(*(v1 + 32) + 88) |= *MEMORY[0x1E69A54D0];
  if ((v7 & 1) == 0)
  {
LABEL_63:
    if ((v2 & 1) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

LABEL_81:
  *(*(v1 + 32) + 88) |= *MEMORY[0x1E69A54F0];
  if (v2)
  {
LABEL_64:
    *(*(v1 + 32) + 88) |= *MEMORY[0x1E69A54F8];
  }

LABEL_65:
  [*(v1 + 32) setWantsPseudonymUpdates:{v3 & 1, v42}];
  v26 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = *(v1 + 32);
    v28 = [*(v27 + 120) serviceName];
    v29 = *(*(v1 + 32) + 88);
    v30 = *MEMORY[0x1E69A5508];
    _IDSBinaryStringForValue();
    v32 = v31 = v3;
    v33 = [*(*(v1 + 32) + 32) count];
    *buf = 134219010;
    v34 = @"NO";
    v60 = v27;
    v61 = 2112;
    if (v31)
    {
      v34 = @"YES";
    }

    v62 = v28;
    v63 = 2112;
    v64 = v32;
    v65 = 2048;
    v66 = v33;
    v67 = 2112;
    v68 = v34;
    _os_log_impl(&dword_1959FF000, v26, OS_LOG_TYPE_DEFAULT, "_IDSService - added delegate {self: %p, serviceName %@, listenerCaps %@, delegates: %lu, wantsPseudonymUpdates: %@}", buf, 0x34u);
  }

  v35 = [*(*(v1 + 32) + 120) serviceName];
  v36 = *(*(v1 + 32) + 16);
  if (v36 && [v36 count])
  {
    v37 = *(v1 + 32);
    v38 = *(v37 + 16);
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = sub_195AB426C;
    v53[3] = &unk_1E7441CB0;
    v53[4] = v37;
    v54 = v35;
    [v38 enumerateKeysAndObjectsUsingBlock:v53];
  }

  else
  {
    v39 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v39, OS_LOG_TYPE_DEFAULT, "_IDSService - No accounts detected, acknowledging transaction anyway.", buf, 2u);
    }

    v40 = +[_IDSXPCCheckinManager sharedInstance];
    [v40 noteFinishedTransactionForService:v35];
  }

  v41 = *MEMORY[0x1E69E9840];
}

void sub_195AB426C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 _internal];
  [v5 setDelegateCapabilities:*(*(a1 + 32) + 88)];

  v6 = [v4 _internal];

  v7 = *(a1 + 32);
  v8 = +[IDSInternalQueueController sharedInstance];
  v9 = [v8 queue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195AB4378;
  v10[3] = &unk_1E743E878;
  v11 = *(a1 + 40);
  [v6 addDelegate:v7 queue:v9 completion:v10];
}

void sub_195AB4378(uint64_t a1)
{
  v2 = +[_IDSXPCCheckinManager sharedInstance];
  [v2 noteFinishedTransactionForService:*(a1 + 32)];
}

id sub_195AB4A98(uint64_t a1)
{
  if (*(a1 + 72))
  {
    if (*(a1 + 80) == 1)
    {
      v2 = *(a1 + 48);
      if (v2)
      {
        (*(v2 + 16))(v2, 0);
      }
    }

    v3 = *(a1 + 32);
    (*(*(a1 + 56) + 16))();
    if (*(a1 + 81) == 1)
    {
      v4 = *(a1 + 64);
      if (v4)
      {
        (*(v4 + 16))(v4, 0);
      }
    }
  }

  else
  {
    v5 = *(a1 + 56);
    v6 = *(a1 + 32);
    (*(*(a1 + 56) + 16))();
  }

  v7 = *(a1 + 32);
  v8 = objc_opt_self();
  v9 = *(a1 + 40);
  return objc_opt_self();
}

void sub_195AB4B54(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 40) object];
    [v4 serviceAllowedTrafficClassifiersDidReset:v3];
  }
}

void sub_195AB4DAC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 40) object];
    [v4 service:v3 token:*(a1 + 40) time:*(a1 + 48) error:*(a1 + 56)];
  }
}

void sub_195AB500C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 40) object];
    [v4 service:v3 didCancelMessageWithSuccess:*(a1 + 56) error:*(a1 + 40) identifier:*(a1 + 48)];
  }
}

void sub_195AB59F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a72, 8);
  _Block_object_dispose(&STACK[0x228], 8);
  _Block_object_dispose(&STACK[0x2E0], 8);
  _Block_object_dispose(&STACK[0x310], 8);
  _Block_object_dispose((v72 - 192), 8);
  _Block_object_dispose((v72 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_195AB5A84(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(*(*(a1 + 64) + 8) + 40) lock];
  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    v4 = [MEMORY[0x1E69A6138] ACKTracker];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138412290;
      v22 = v5;
      _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "%@ Update cache with active device", buf, 0xCu);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [*(a1 + 40) internalAccounts];
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * v10);
          v12 = [*(a1 + 48) daemonListener];
          v13 = [v11 uniqueID];
          [v12 switchActivePairedDevice:v3 forAccount:v13];

          [v11 _reloadCachedDevices];
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v14 = [*(a1 + 48) daemonListener];
    [v14 switchActivePairedDevice:v3 forService:*(a1 + 56)];

    [*(a1 + 48) _reloadCachedLinkedDevices];
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  [*(*(*(a1 + 64) + 8) + 40) unlock];

  v15 = *MEMORY[0x1E69E9840];
}

void sub_195AB5C94(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6138] ACKTracker];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "%@ Pre didSwitch call back block", buf, 0xCu);
  }

  v4 = a1[5];
  (*(a1[7] + 16))();
  if ((*(*(a1[8] + 8) + 24) & 1) == 0)
  {
    v5 = +[IDSInternalQueueController sharedInstance];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_195AB5E18;
    v9[3] = &unk_1E743EA08;
    v11 = a1[9];
    v8 = *(a1 + 5);
    v6 = v8.i64[0];
    v10 = vextq_s8(v8, v8, 8uLL);
    [v5 performBlock:v9 waitUntilDone:1];

    *(*(a1[8] + 8) + 24) = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195AB5E18(uint64_t a1)
{
  v2 = [*(a1 + 32) _activeDeviceForUniqueID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AB5E68(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 112) awaitAcknowledgementFromServiceDelegate:v3];
  v5 = [*(a1 + 40) object];
  v6 = [v5 _acknowledgementBlockWithDelegateIdentifier:v4];

  v7 = [MEMORY[0x1E69A6138] ACKTracker];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 48);
    v9 = *(*(*(a1 + 64) + 8) + 40);
    v11 = 138413058;
    v12 = v8;
    v13 = 2048;
    v14 = v3;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "%@ Notifying delegate %p of active device switch to %@ (delegateIdentifier %@)", &v11, 0x2Au);
  }

  [v3 service:*(a1 + 56) didSwitchActivePairedDevice:*(*(*(a1 + 64) + 8) + 40) acknowledgementBlock:v6];
  v10 = *MEMORY[0x1E69E9840];
}

void sub_195AB5FBC(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6138] ACKTracker];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "%@ Pre devicesChanged call back block", &v9, 0xCu);
  }

  v4 = *(a1 + 40);
  (*(*(a1 + 56) + 16))();
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v5 = [*(a1 + 48) devices];
    v6 = *(*(a1 + 72) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_195AB60C0(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E69A6138] ACKTracker];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = *(*(a1[6] + 8) + 40);
    v8 = 138412802;
    v9 = v5;
    v10 = 2048;
    v11 = v3;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "%@ Notifying delegate %p of devices changing (devices %@)", &v8, 0x20u);
  }

  [v3 service:a1[5] devicesChanged:*(*(a1[6] + 8) + 40)];
  v7 = *MEMORY[0x1E69E9840];
}

void sub_195AB61BC(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6138] ACKTracker];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "%@ Pre linkedDevicesChanged call back block", &v9, 0xCu);
  }

  v4 = *(a1 + 40);
  (*(*(a1 + 56) + 16))();
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v5 = [*(a1 + 48) linkedDevicesWithRelationship:2];
    v6 = *(*(a1 + 72) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_195AB62C4(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E69A6138] ACKTracker];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = *(*(a1[6] + 8) + 40);
    v8 = 138412802;
    v9 = v5;
    v10 = 2048;
    v11 = v3;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "%@ Notifying delegate %p of linked devices changing (devices %@)", &v8, 0x20u);
  }

  [v3 service:a1[5] linkedDevicesChanged:*(*(a1[6] + 8) + 40)];
  v7 = *MEMORY[0x1E69E9840];
}

void sub_195AB63C0(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6138] ACKTracker];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v12 = 138412290;
    v13 = v3;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "%@ Group notify", &v12, 0xCu);
  }

  v4 = a1[5];
  (*(a1[6] + 16))();
  v5 = *(a1[7] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = *(a1[8] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  v9 = *(a1[9] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;

  v11 = *MEMORY[0x1E69E9840];
}

void sub_195AB6794(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  [v2 _stopAwaitingQuickSwitchAcknowledgementFromDelegateWithIdentifier:*(a1 + 40)];

  v3 = [*(a1 + 32) object];
  LOBYTE(v2) = [v3 _isDroppingMessages];

  if ((v2 & 1) == 0)
  {
    v4 = [MEMORY[0x1E69A6138] watchPairing];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "Stopped suspending traffic to the daemon.", v5, 2u);
    }
  }
}

void sub_195AB6940(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 40) object];
    [v4 service:v3 linkedDevicesChanged:*(a1 + 40)];
  }
}

void sub_195AB7270(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = v3;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "Calling out to IDSService delegate %p for registrationRestrictionReason if it responds.", &v9, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [*(*(a1 + 32) + 40) object];
    [v3 service:v5 registrationRestrictionReasonChanged:*(a1 + 40)];

    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    v10 = v3;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Done for IDSService delegate %p for registrationRestrictionReason - doesRespondToSelector? %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_195AB7D50(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138412546;
    v9 = v5;
    v10 = 2048;
    v11 = v3;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "Calling active accounts changed %@ with delegate %p", &v8, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [*(*(a1 + 40) + 40) object];
    [v3 service:v6 activeAccountsChanged:*(a1 + 32)];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_195AB8568(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) outgoingResponseIdentifier];
    v16 = 138412802;
    v17 = v5;
    v18 = 2112;
    v19 = objc_opt_class();
    v20 = 2048;
    v21 = v3;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "%@ Calling out to IDSService delegate <%@:%p> for incomingOpportunisticData if it responds.", &v16, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [*(*(a1 + 40) + 40) object];
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v10 = [*(a1 + 72) prefixedURI];
    [v3 service:v6 account:v7 incomingOpportunisticData:v8 withIdentifier:v9 fromID:v10 context:*(a1 + 32)];

    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 32) outgoingResponseIdentifier];
    v14 = objc_opt_class();
    v16 = 138413058;
    v17 = v13;
    v18 = 2112;
    v19 = v14;
    v20 = 2048;
    v21 = v3;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "%@ Done for IDSService delegate <%@:%p> for incomingOpportunisticData - doesRespondToSelector? %@", &v16, 0x2Au);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_195AB8774(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v2 = [*(a1 + 32) connectionType];
    v3 = [*(a1 + 40) daemonController];
    v4 = *(a1 + 48);
    v5 = [*(a1 + 56) prefixedURI];
    v6 = [*(a1 + 64) _internal];
    v7 = [v6 account];
    v8 = [v7 _internal];
    v9 = [v8 uniqueID];
    [v3 sendAppAckWithGUID:v4 toDestination:v5 forAccountWithUniqueID:v9 connectionType:v2];
  }

  if (*(a1 + 72) || *(a1 + 48))
  {
    v17 = [*(a1 + 40) daemonController];
    v10 = *(a1 + 48);
    v11 = *(a1 + 72);
    v12 = [*(a1 + 64) _internal];
    v13 = [v12 account];
    v14 = [v13 _internal];
    v15 = [v14 uniqueID];
    v16 = [*(a1 + 32) priority];
    [v17 acknowledgeMessageWithStorageGUID:v11 realGUID:v10 forAccountWithUniqueID:v15 broadcastTime:0 messageSize:0 priority:v16 broadcastID:objc_msgSend(*(a1 + 32) connectionType:{"broadcastID"), objc_msgSend(*(a1 + 32), "connectionType")}];
  }
}

void sub_195AB8F80(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) outgoingResponseIdentifier];
    v15 = 138412802;
    v16 = v5;
    v17 = 2112;
    v18 = objc_opt_class();
    v19 = 2048;
    v20 = v3;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "%@ Calling out to IDSService delegate <%@:%p> for incomingData if it responds.", &v15, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [*(*(a1 + 40) + 40) object];
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = [*(a1 + 64) prefixedURI];
    [v3 service:v6 account:v7 incomingData:v8 fromID:v9 context:*(a1 + 32)];

    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 32) outgoingResponseIdentifier];
    v13 = objc_opt_class();
    v15 = 138413058;
    v16 = v12;
    v17 = 2112;
    v18 = v13;
    v19 = 2048;
    v20 = v3;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "%@ Done for IDSService delegate <%@:%p> for incomingData - doesRespondToSelector? %@", &v15, 0x2Au);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_195AB9188(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) outgoingResponseIdentifier];
    *buf = 138412290;
    v25 = v3;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Sending app-level ack dispatch called for message %@", buf, 0xCu);
  }

  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 97) == 1)
    {
      v4 = [*(a1 + 40) _internal];
      [v4 sendAppAckForDirectMessage:*(a1 + 48)];
    }

    else
    {
      v5 = [*(a1 + 32) connectionType];
      v4 = [*(a1 + 56) daemonController];
      v6 = *(a1 + 48);
      v7 = [*(a1 + 64) prefixedURI];
      v8 = [*(a1 + 40) _internal];
      v9 = [v8 account];
      v10 = [v9 _internal];
      v11 = [v10 uniqueID];
      [v4 sendAppAckWithGUID:v6 toDestination:v7 forAccountWithUniqueID:v11 connectionType:v5];
    }
  }

  if ((*(a1 + 97) & 1) == 0 && (*(a1 + 72) || *(a1 + 80)))
  {
    v12 = [*(a1 + 56) daemonController];
    v13 = *(a1 + 48);
    v22 = v13;
    v23 = *(a1 + 72);
    v14 = [*(a1 + 40) _internal];
    v15 = [v14 account];
    v16 = [v15 _internal];
    v17 = [v16 uniqueID];
    v18 = *(a1 + 80);
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 88), "length")}];
    v20 = [*(a1 + 32) priority];
    [v12 acknowledgeMessageWithStorageGUID:v23 realGUID:v22 forAccountWithUniqueID:v17 broadcastTime:v18 messageSize:v19 priority:v20 broadcastID:objc_msgSend(*(a1 + 32) connectionType:{"broadcastID"), objc_msgSend(*(a1 + 32), "connectionType")}];
  }

  v21 = *MEMORY[0x1E69E9840];
}

void sub_195AB99F4(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_195AB9A7C;
  v2[3] = &unk_1E7441F00;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 performGroupTask:v2];
}

void sub_195AB9A7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195AB9B28;
  v6[3] = &unk_1E7440C30;
  v7 = v4;
  v8 = v3;
  v5 = v3;
  [v5 _groupFromPublicDataRepresentation:v7 completion:v6];
}

void sub_195AB9B28(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Error converting Group Data to ENGroup %@", &v13, 0xCu);
    }
  }

  else if (v5)
  {
    v8 = [MEMORY[0x1E69A5270] groupCrypto];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 groupID];
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Received sentAhead group {groupID: %{public}@}", &v13, 0xCu);
    }

    [*(a1 + 40) cacheIncomingGroup:v5 completion:&unk_1F09E6B20];
  }

  else
  {
    v10 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v13 = 138412546;
      v14 = 0;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "No error returned however unable to create group from data (timeout?) %@, Original Data: %@", &v13, 0x16u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_195AB9CF8(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "Group Share Persisted %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_195AB9DAC(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = +[IDSTransportLog IDSService];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) outgoingResponseIdentifier];
    *buf = 138412290;
    v25 = v3;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Sending app-level ack dispatch called for message %@", buf, 0xCu);
  }

  if (*(a1 + 96) == 1)
  {
    v4 = [*(a1 + 32) connectionType];
    v5 = [*(a1 + 40) daemonController];
    v6 = *(a1 + 48);
    v7 = [*(a1 + 56) prefixedURI];
    v8 = [*(a1 + 64) _internal];
    v9 = [v8 account];
    v10 = [v9 _internal];
    v11 = [v10 uniqueID];
    [v5 sendAppAckWithGUID:v6 toDestination:v7 forAccountWithUniqueID:v11 connectionType:v4];
  }

  if (*(a1 + 72) || *(a1 + 80))
  {
    v12 = [*(a1 + 40) daemonController];
    v13 = *(a1 + 72);
    v22 = v13;
    v23 = *(a1 + 48);
    v14 = [*(a1 + 64) _internal];
    v15 = [v14 account];
    v16 = [v15 _internal];
    v17 = [v16 uniqueID];
    v18 = *(a1 + 80);
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 88), "length")}];
    v20 = [*(a1 + 32) priority];
    [v12 acknowledgeMessageWithStorageGUID:v22 realGUID:v23 forAccountWithUniqueID:v17 broadcastTime:v18 messageSize:v19 priority:v20 broadcastID:objc_msgSend(*(a1 + 32) connectionType:{"broadcastID"), objc_msgSend(*(a1 + 32), "connectionType")}];
  }

  v21 = *MEMORY[0x1E69E9840];
}

void sub_195ABA46C(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) outgoingResponseIdentifier];
    v15 = 138412802;
    v16 = v5;
    v17 = 2112;
    v18 = objc_opt_class();
    v19 = 2048;
    v20 = v3;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "%@ Calling out to IDSService delegate <%@:%p> for incomingAccessoryData if it responds.", &v15, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [*(*(a1 + 40) + 40) object];
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = [*(a1 + 64) prefixedURI];
    [v3 service:v6 account:v7 incomingAccessoryData:v8 fromAccessoryID:v9 context:*(a1 + 32)];

    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 32) outgoingResponseIdentifier];
    v13 = objc_opt_class();
    v15 = 138413058;
    v16 = v12;
    v17 = 2112;
    v18 = v13;
    v19 = 2048;
    v20 = v3;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "%@ Done for IDSService delegate <%@:%p> for incomingAccessoryData - doesRespondToSelector? %@", &v15, 0x2Au);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_195ABA674(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    v2 = [*(a1 + 32) connectionType];
    v3 = [*(a1 + 40) daemonController];
    v4 = *(a1 + 48);
    v5 = [*(a1 + 56) prefixedURI];
    v6 = [*(a1 + 64) _internal];
    v7 = [v6 account];
    v8 = [v7 _internal];
    v9 = [v8 uniqueID];
    [v3 sendAppAckWithGUID:v4 toDestination:v5 forAccountWithUniqueID:v9 connectionType:v2];
  }

  if (*(a1 + 72) || *(a1 + 80))
  {
    v10 = [*(a1 + 40) daemonController];
    v19 = *(a1 + 48);
    v20 = v10;
    v11 = *(a1 + 72);
    v12 = [*(a1 + 64) _internal];
    v13 = [v12 account];
    v14 = [v13 _internal];
    v15 = [v14 uniqueID];
    v16 = *(a1 + 80);
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 88), "length")}];
    v18 = [*(a1 + 32) priority];
    [v20 acknowledgeMessageWithStorageGUID:v11 realGUID:v19 forAccountWithUniqueID:v15 broadcastTime:v16 messageSize:v17 priority:v18 broadcastID:objc_msgSend(*(a1 + 32) connectionType:{"broadcastID"), objc_msgSend(*(a1 + 32), "connectionType")}];
  }
}

void sub_195ABACB8(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) outgoingResponseIdentifier];
    v12 = 138412802;
    v13 = v5;
    v14 = 2112;
    v15 = objc_opt_class();
    v16 = 2048;
    v17 = v3;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "%@ Calling out to IDSService delegate <%@:%p> for incomingAccessoryReportMessage if it responds.", &v12, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [*(*(a1 + 40) + 40) object];
    [v3 service:v6 account:*(a1 + 48) incomingAccessoryReportMessage:*(a1 + 56) controllerID:*(a1 + 64) accessoryID:*(a1 + 72) context:*(a1 + 32)];

    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) outgoingResponseIdentifier];
    v10 = objc_opt_class();
    v12 = 138413058;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    v16 = 2048;
    v17 = v3;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%@ Done for IDSService delegate <%@:%p> for incomingAccessoryReportMessage - doesRespondToSelector? %@", &v12, 0x2Au);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_195ABAE9C(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    v2 = [*(a1 + 32) connectionType];
    v3 = [*(a1 + 40) daemonController];
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = [*(a1 + 64) _internal];
    v7 = [v6 account];
    v8 = [v7 _internal];
    v9 = [v8 uniqueID];
    [v3 sendAppAckWithGUID:v4 toDestination:v5 forAccountWithUniqueID:v9 connectionType:v2];
  }

  if (*(a1 + 72) || *(a1 + 80))
  {
    v18 = [*(a1 + 40) daemonController];
    v10 = *(a1 + 48);
    v11 = *(a1 + 72);
    v12 = [*(a1 + 64) _internal];
    v13 = [v12 account];
    v14 = [v13 _internal];
    v15 = [v14 uniqueID];
    v16 = *(a1 + 80);
    v17 = [*(a1 + 32) priority];
    [v18 acknowledgeMessageWithStorageGUID:v11 realGUID:v10 forAccountWithUniqueID:v15 broadcastTime:v16 messageSize:0 priority:v17 broadcastID:objc_msgSend(*(a1 + 32) connectionType:{"broadcastID"), objc_msgSend(*(a1 + 32), "connectionType")}];
  }
}

id sub_195ABB4FC(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKey:v4];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    if (v5)
    {
      v7 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        sub_195B39164();
      }
    }

    v6 = 0;
  }

  return v6;
}

void sub_195ABB5B8(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) outgoingResponseIdentifier];
    v12 = 138412802;
    v13 = v5;
    v14 = 2112;
    v15 = objc_opt_class();
    v16 = 2048;
    v17 = v3;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "%@ Calling out to IDSService delegate <%@:%p> for incomingInvitation if it responds.", &v12, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [*(*(a1 + 40) + 40) object];
    [v3 service:v6 account:*(a1 + 48) incomingInvitation:*(a1 + 56) withContext:*(a1 + 32)];

    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) outgoingResponseIdentifier];
    v10 = objc_opt_class();
    v12 = 138413058;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    v16 = 2048;
    v17 = v3;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%@ Done for IDSService delegate <%@:%p> for incomingInvitation - doesRespondToSelector? %@", &v12, 0x2Au);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_195ABBC50(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) outgoingResponseIdentifier];
    v12 = 138412802;
    v13 = v5;
    v14 = 2112;
    v15 = objc_opt_class();
    v16 = 2048;
    v17 = v3;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "%@ Calling out to IDSService delegate <%@:%p> for incomingInvitationUpdate if it responds.", &v12, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [*(*(a1 + 40) + 40) object];
    [v3 service:v6 account:*(a1 + 48) incomingInvitationUpdate:*(a1 + 56) withContext:*(a1 + 32)];

    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) outgoingResponseIdentifier];
    v10 = objc_opt_class();
    v12 = 138413058;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    v16 = 2048;
    v17 = v3;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%@ Done for IDSService delegate <%@:%p> for incomingInvitationUpdate - doesRespondToSelector? %@", &v12, 0x2Au);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_195ABC948(_Unwind_Exception *a1)
{
  os_activity_scope_leave((v1 - 216));
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_195ABC9D4(uint64_t a1, uint64_t a2)
{
  v4 = dispatch_get_global_queue(9, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195ABCAA4;
  v7[3] = &unk_1E7440800;
  v8 = *(a1 + 32);
  v10 = a2;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = v5;
  v11 = v6;
  dispatch_async(v4, v7);
}

void sub_195ABCAA4(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = a1[4];
  v11 = 0;
  v4 = [v2 removeItemAtURL:v3 error:&v11];
  v5 = v11;

  v6 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    v8 = a1[6];
    *buf = 138412802;
    if (v4)
    {
      v7 = @"YES";
    }

    v13 = v7;
    v14 = 2112;
    v15 = v5;
    v16 = 1024;
    v17 = v8;
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "Remove file success: %@, error: %@ (accessed %d)", buf, 0x1Cu);
  }

  if (a1[5])
  {
    v9 = a1[7];
    sandbox_extension_release();
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_195ABCBD8(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) outgoingResponseIdentifier];
    v15 = 138412802;
    v16 = v5;
    v17 = 2112;
    v18 = objc_opt_class();
    v19 = 2048;
    v20 = v3;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "%@ Calling out to IDSService delegate <%@:%p> for incomingResource if it responds.", &v15, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [*(*(a1 + 40) + 40) object];
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = [*(a1 + 64) prefixedURI];
    [v3 service:v6 account:v7 incomingResourceAtURL:v8 fromID:v9 context:*(a1 + 32)];

    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 32) outgoingResponseIdentifier];
    v13 = objc_opt_class();
    v15 = 138413058;
    v16 = v12;
    v17 = 2112;
    v18 = v13;
    v19 = 2048;
    v20 = v3;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "%@ Done for IDSService delegate <%@:%p> for incomingResource - doesRespondToSelector? %@", &v15, 0x2Au);
  }

  [*(a1 + 72) incrementAccessCount];
  v14 = *MEMORY[0x1E69E9840];
}

void sub_195ABCDE8(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) outgoingResponseIdentifier];
    v16 = 138412802;
    v17 = v5;
    v18 = 2112;
    v19 = objc_opt_class();
    v20 = 2048;
    v21 = v3;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "%@ Calling out to IDSService delegate <%@:%p> for incomingResource with metadata if it responds.", &v16, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [*(*(a1 + 40) + 40) object];
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v10 = [*(a1 + 72) prefixedURI];
    [v3 service:v6 account:v7 incomingResourceAtURL:v8 metadata:v9 fromID:v10 context:*(a1 + 32)];

    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 32) outgoingResponseIdentifier];
    v14 = objc_opt_class();
    v16 = 138413058;
    v17 = v13;
    v18 = 2112;
    v19 = v14;
    v20 = 2048;
    v21 = v3;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "%@ Done for IDSService delegate <%@:%p> for incomingResource with metadata - doesRespondToSelector? %@", &v16, 0x2Au);
  }

  [*(a1 + 80) incrementAccessCount];
  v15 = *MEMORY[0x1E69E9840];
}