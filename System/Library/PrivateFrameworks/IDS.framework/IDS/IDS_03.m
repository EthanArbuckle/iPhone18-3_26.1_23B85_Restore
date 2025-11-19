void sub_195ABCFFC(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "%@ Calling out to IDSService delegate <%@:%p> for incomingMessage if it responds.", &v15, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [*(*(a1 + 40) + 40) object];
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = [*(a1 + 64) prefixedURI];
    [v3 service:v6 account:v7 incomingMessage:v8 fromID:v9];

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
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "%@ Done for IDSService delegate <%@:%p> for incomingMessage - doesRespondToSelector? %@", &v15, 0x2Au);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_195ABD200(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "%@ Calling out to IDSService delegate <%@:%p> for incomingMessage with context if it responds.", &v15, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [*(*(a1 + 40) + 40) object];
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = [*(a1 + 64) prefixedURI];
    [v3 service:v6 account:v7 incomingMessage:v8 fromID:v9 context:*(a1 + 32)];

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
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "%@ Done for IDSService delegate <%@:%p> for incomingMessage with context - doesRespondToSelector? %@", &v15, 0x2Au);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_195ABD408(uint64_t a1)
{
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v20 = _os_activity_create(&dword_1959FF000, "Service finished calling out", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v20, &state);
  if (*(a1 + 88) == 1)
  {
    if (*(a1 + 89) == 1)
    {
      v2 = [*(a1 + 32) _internal];
      [v2 sendAppAckForDirectMessage:*(a1 + 40)];
    }

    else
    {
      v3 = [*(a1 + 48) connectionType];
      v2 = [*(a1 + 56) daemonController];
      v4 = *(a1 + 40);
      v5 = [*(a1 + 64) prefixedURI];
      v6 = [*(a1 + 32) _internal];
      v7 = [v6 account];
      v8 = [v7 _internal];
      v9 = [v8 uniqueID];
      [v2 sendAppAckWithGUID:v4 toDestination:v5 forAccountWithUniqueID:v9 connectionType:v3];
    }
  }

  if ((*(a1 + 89) & 1) == 0 && (*(a1 + 72) || *(a1 + 80)))
  {
    v10 = [*(a1 + 56) daemonController];
    v18 = *(a1 + 72);
    v11 = *(a1 + 40);
    v12 = [*(a1 + 32) _internal];
    v13 = [v12 account];
    v14 = [v13 _internal];
    v15 = [v14 uniqueID];
    v16 = *(a1 + 80);
    v17 = [*(a1 + 48) priority];
    [v10 acknowledgeMessageWithStorageGUID:v18 realGUID:v11 forAccountWithUniqueID:v15 broadcastTime:v16 messageSize:0 priority:v17 broadcastID:objc_msgSend(*(a1 + 48) connectionType:{"broadcastID"), objc_msgSend(*(a1 + 48), "connectionType")}];
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

void sub_195ABD62C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_activity_scope_state_s state, char a13)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_195ABDF48(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 80);
  if (objc_opt_respondsToSelector())
  {
    v5 = +[IDSTransportLog IDSService];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromSelector(*(a1 + 80));
      v7 = *(a1 + 32);
      *buf = 134218498;
      *&buf[4] = v3;
      v26 = 2112;
      v27 = v6;
      v28 = 2048;
      v29 = v7;
      _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, " => Delgate %p responds to: %@, passing along protobuf: %p", buf, 0x20u);
    }

    v8 = [v3 methodSignatureForSelector:*(a1 + 80)];
    v9 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v8];
    [v9 setSelector:*(a1 + 80)];
    [v9 setTarget:v3];
    v10 = [*(a1 + 40) prefixedURI];
    v11 = *(a1 + 56);
    v24 = *(a1 + 48);
    *buf = v10;
    v23 = *(a1 + 32);
    v12 = [*(v11 + 40) object];
    v21 = *(a1 + 64);
    v22 = v12;
    [v9 setArgument:&v23 atIndex:2];
    [v9 setArgument:&v22 atIndex:3];
    [v9 setArgument:&v24 atIndex:4];
    [v9 setArgument:buf atIndex:5];
    [v9 setArgument:&v21 atIndex:6];
    [v9 invokeWithTarget:v3];
    v13 = +[IDSTransportLog IDSService];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "   * Done handling", v20, 2u);
    }

    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  else
  {
    v14 = *(a1 + 88);
    if (objc_opt_respondsToSelector())
    {
      v15 = +[IDSTransportLog IDSService];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = NSStringFromSelector(*(a1 + 88));
        v17 = *(a1 + 32);
        *buf = 134218498;
        *&buf[4] = v3;
        v26 = 2112;
        v27 = v16;
        v28 = 2048;
        v29 = v17;
        _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, " => Delgate %p responds to: %@, passing along protobuf: %p", buf, 0x20u);
      }

      [v3 performSelector:*(a1 + 88) withObject:*(a1 + 32)];
      v18 = +[IDSTransportLog IDSService];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "   * Done handling", buf, 2u);
      }

      *(*(*(a1 + 72) + 8) + 24) = 1;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void sub_195ABE284(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = +[IDSTransportLog IDSService];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v13 = 134218240;
      v14 = v3;
      v15 = 2048;
      v16 = v5;
      _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, " => Delgate %p responds unhandled protobuf passing along protobuf: %p", &v13, 0x16u);
    }

    v6 = [*(*(a1 + 40) + 40) object];
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v9 = [*(a1 + 56) prefixedURI];
    [v3 service:v6 account:v8 incomingUnhandledProtobuf:v7 fromID:v9 context:*(a1 + 64)];

    v10 = [*(a1 + 64) messageSequenceNumber];
    [v10 unsignedIntegerValue];
    kdebug_trace();

    v11 = +[IDSTransportLog IDSService];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "   * Done handling", &v13, 2u);
    }

    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_195ABE44C(uint64_t a1)
{
  if ((*(*(*(a1 + 96) + 8) + 24) & 1) == 0)
  {
    v2 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_195B39488(a1);
    }
  }

  if (*(a1 + 104) == 1)
  {
    if (*(a1 + 105) == 1)
    {
      v3 = [*(a1 + 40) _internal];
      [v3 sendAppAckForDirectMessage:*(a1 + 32)];
    }

    else
    {
      v4 = [*(a1 + 48) connectionType];
      v3 = [*(a1 + 56) daemonController];
      v5 = *(a1 + 32);
      v6 = [*(a1 + 64) prefixedURI];
      v7 = [*(a1 + 40) _internal];
      v8 = [v7 account];
      v9 = [v8 _internal];
      v10 = [v9 uniqueID];
      [v3 sendAppAckWithGUID:v5 toDestination:v6 forAccountWithUniqueID:v10 connectionType:v4];
    }
  }

  if ((*(a1 + 105) & 1) == 0 && (*(a1 + 72) || *(a1 + 80)))
  {
    v11 = [*(a1 + 56) daemonController];
    v23 = *(a1 + 72);
    v21 = v11;
    v22 = *(a1 + 32);
    v12 = [*(a1 + 40) _internal];
    v13 = [v12 account];
    v14 = [v13 _internal];
    v15 = [v14 uniqueID];
    v16 = MEMORY[0x1E696AD98];
    v17 = *(a1 + 80);
    v18 = [*(a1 + 88) data];
    v19 = [v16 numberWithUnsignedInteger:{objc_msgSend(v18, "length")}];
    v20 = [*(a1 + 48) priority];
    [v21 acknowledgeMessageWithStorageGUID:v23 realGUID:v22 forAccountWithUniqueID:v15 broadcastTime:v17 messageSize:v19 priority:v20 broadcastID:objc_msgSend(*(a1 + 48) connectionType:{"broadcastID"), objc_msgSend(*(a1 + 48), "connectionType")}];
  }
}

void sub_195ABEB74(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) outgoingResponseIdentifier];
    v14 = 138412802;
    v15 = v5;
    v16 = 2112;
    v17 = objc_opt_class();
    v18 = 2048;
    v19 = v3;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "%@ Calling out to IDSService delegate <%@:%p> for incomingTopLevelMessage if it responds.", &v14, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [*(*(a1 + 40) + 40) object];
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = [*(a1 + 64) prefixedURI];
    [v3 service:v6 account:v7 incomingTopLevelMessage:v8 fromID:v9 messageContext:*(a1 + 32)];

    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 72);
    v14 = 134218498;
    v15 = v3;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "Done for IDSService delegate %p for incomingTopLevelMessage - doesRespondToSelector? %@ guid: %@", &v14, 0x20u);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_195ABED58(uint64_t a1)
{
  if (*(a1 + 32) || *(a1 + 40))
  {
    v9 = [*(a1 + 48) daemonController];
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = [*(a1 + 56) _internal];
    v5 = [v4 account];
    v6 = [v5 _internal];
    v7 = [v6 uniqueID];
    v8 = [*(a1 + 64) priority];
    [v9 acknowledgeMessageWithStorageGUID:v2 realGUID:v3 forAccountWithUniqueID:v7 broadcastTime:0 messageSize:0 priority:v8 broadcastID:objc_msgSend(*(a1 + 64) connectionType:{"broadcastID"), objc_msgSend(*(a1 + 64), "connectionType")}];
  }
}

void sub_195ABF070(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 83);
  v3 = [a2 messageContext];
  [v3 setWantsManualAck:v2];
}

void sub_195ABF0C8(uint64_t a1, void *a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v62 = objc_opt_class();
    v63 = 2048;
    v64 = v2;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "Calling out to IDSService delegate <%@:%p> for incomingBatchMessage if it responds.", buf, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [*(*(a1 + 32) + 40) object];
    [v2 service:v4 account:*(a1 + 40) incomingBatchMessage:*(a1 + 48)];
    v5 = @"YES";
LABEL_45:

    goto LABEL_47;
  }

  if (objc_opt_respondsToSelector())
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v4 = [*(a1 + 48) messages];
    v51 = [v4 countByEnumeratingWithState:&v57 objects:v69 count:16];
    if (v51)
    {
      v52 = v2;
      key = *MEMORY[0x1E69A51A0];
      v49 = *v58;
      v46 = *MEMORY[0x1E69A51B0];
      v47 = *MEMORY[0x1E69A49F0];
      v44 = *MEMORY[0x1E69A50A0];
      v45 = *MEMORY[0x1E69A4C78];
      v42 = *MEMORY[0x1E69A5188];
      v43 = *MEMORY[0x1E69A5030];
      v40 = *MEMORY[0x1E69A5178];
      v41 = *MEMORY[0x1E69A5180];
      v39 = *MEMORY[0x1E69A5198];
      v38 = *MEMORY[0x1E69A4DD0];
      v37 = *MEMORY[0x1E69A4DE8];
      v36 = *MEMORY[0x1E69A4DF0];
      *&v6 = 138413058;
      v34 = v6;
      v35 = v4;
      do
      {
        for (i = 0; i != v51; ++i)
        {
          if (*v58 != v49)
          {
            objc_enumerationMutation(v35);
          }

          v8 = *(*(&v57 + 1) + 8 * i);
          v9 = [v8 messageContext];
          v54 = [v9 outgoingResponseIdentifier];
          value = [v8 decryptedData];
          v10 = [v9 senderPushToken];
          v11 = [v8 messageContext];
          v12 = [v11 fromID];

          v55 = IDSCopyIDForTokenWithID();
          v13 = [v9 certifiedDeliveryContext];
          [v13 originalEncryptionType];
          v14 = IDSEncryptionTypeStringFromEncryptionType();

          v53 = [v9 originalGUID];
          v15 = IDSGetUUIDData();
          v16 = [MEMORY[0x1E695DF90] dictionary];
          v17 = v16;
          if (v15)
          {
            CFDictionarySetValue(v16, key, v15);
          }

          v18 = [v9 originalCommand];
          if (v18)
          {
            CFDictionarySetValue(v17, v47, v18);
          }

          v19 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v9, "needsDeliveryReceipt")}];
          if (v19)
          {
            CFDictionarySetValue(v17, v46, v19);
          }

          if (v14)
          {
            CFDictionarySetValue(v17, v45, v14);
          }

          if (v12)
          {
            CFDictionarySetValue(v17, v44, v12);
          }

          v20 = [v8 messageContext];
          v21 = [v20 toID];

          if (v21)
          {
            CFDictionarySetValue(v17, v43, v21);
          }

          if (v10)
          {
            CFDictionarySetValue(v17, v42, v10);
          }

          v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v9, "serverTimestampInNanoseconds")}];
          if (v22)
          {
            CFDictionarySetValue(v17, v41, v22);
          }

          v23 = [v9 storageContext];
          if (v23)
          {
            CFDictionarySetValue(v17, v40, v23);
          }

          v24 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v9, "isFromTrustedSender")}];
          if (v24)
          {
            CFDictionarySetValue(v17, v39, v24);
          }

          v25 = [MEMORY[0x1E695DF90] dictionary];
          v26 = v25;
          if (value)
          {
            CFDictionarySetValue(v25, v38, value);
          }

          if (v14)
          {
            CFDictionarySetValue(v26, v37, v14);
          }

          if (v17)
          {
            CFDictionarySetValue(v26, v36, v17);
          }

          v27 = [v9 senderCorrelationIdentifier];
          if (v27)
          {
            CFDictionarySetValue(v26, @"mid", v27);
          }

          [v9 setWantsManualAck:*(*(a1 + 32) + 83)];
          v28 = [*(*(a1 + 32) + 40) object];
          [v52 service:v28 account:*(a1 + 40) incomingTopLevelMessage:v26 fromID:v55 messageContext:v9];

          v29 = +[IDSLogging _IDSService];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = objc_opt_class();
            *buf = v34;
            v62 = v30;
            v63 = 2048;
            v64 = v52;
            v65 = 2112;
            v66 = @"YES";
            v67 = 2112;
            v68 = v54;
            _os_log_impl(&dword_1959FF000, v29, OS_LOG_TYPE_DEFAULT, "Done for IDSService delegate <%@:%p> for incomingTopLevelMessage - doesRespondToSelector? %@ guid: %@", buf, 0x2Au);
          }
        }

        v4 = v35;
        v51 = [v35 countByEnumeratingWithState:&v57 objects:v69 count:16];
      }

      while (v51);
      v2 = v52;
    }

    v5 = @"NO";
    goto LABEL_45;
  }

  v5 = @"NO";
LABEL_47:
  v31 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = objc_opt_class();
    *buf = 138412802;
    v62 = v32;
    v63 = 2048;
    v64 = v2;
    v65 = 2112;
    v66 = v5;
    _os_log_impl(&dword_1959FF000, v31, OS_LOG_TYPE_DEFAULT, "Done for IDSService delegate <%@:%p> for incomingTopLevelMessage - doesRespondToSelector? %@", buf, 0x20u);
  }

  v33 = *MEMORY[0x1E69E9840];
}

void sub_195ABF998(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "%@ Calling out to IDSService delegate <%@:%p> for incomingPendingMessage if it responds.", &v15, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [*(*(a1 + 40) + 40) object];
    v7 = *(a1 + 64);
    v8 = *(a1 + 48);
    v9 = [*(a1 + 56) prefixedURI];
    [v3 service:v6 account:v8 incomingPendingMessageOfType:v7 fromID:v9 context:*(a1 + 32)];

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
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "%@ Done for IDSService delegate <%@:%p> for incomingPendingMessage - doesRespondToSelector? %@", &v15, 0x2Au);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_195ABFD54(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) daemonController];
  v5 = *(a1 + 40);
  v6 = v4;
  if (a2)
  {
    [v4 downloadPendingResourceWithMessageGUID:v5];
  }

  else
  {
    [v4 deletePendingResourceWithMessageGUID:v5];
  }
}

void sub_195ABFDB8(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "%@ Calling out to IDSService delegate <%@:%p> for incomingPendingResourceWithMetadata if it responds.", &v15, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [*(*(a1 + 40) + 40) object];
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = [*(a1 + 64) prefixedURI];
    [v3 service:v6 account:v7 pendingResourceWithMetadata:v8 fromID:v9 acknowledgementBlock:*(a1 + 72) context:*(a1 + 32)];

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
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "%@ Done for IDSService delegate <%@:%p> for incomingPendingResourceWithMetadata - doesRespondToSelector? %@", &v15, 0x2Au);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_195AC040C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = +[IDSLogging IDSConnection];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v36 = v7;
    v37 = 2112;
    v38 = v9;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "DecryptedEngramData %@ %@", buf, 0x16u);
  }

  v11 = [MEMORY[0x1E69A5270] groupCrypto];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "length")}];
    *buf = 138543362;
    v36 = v12;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "  {decryptedData.length: %{public}@}", buf, 0xCu);
  }

  v13 = [*(a1 + 32) mutableCopy];
  v14 = v13;
  if (v7)
  {
    CFDictionarySetValue(v13, @"IDSIncomingMessageDecryptedData", v7);
  }

  if (*MEMORY[0x1E69A4DD8] && v14)
  {
    CFDictionaryRemoveValue(v14, *MEMORY[0x1E69A4DD8]);
  }

  if (v8)
  {
    CFDictionarySetValue(v14, *MEMORY[0x1E69A4DE0], v8);
  }

  v34 = v8;
  v15 = [(__CFDictionary *)v14 objectForKey:@"IDSIncomingMessageDecryptedData", v9];
  v16 = [*(a1 + 40) originalCommand];
  v17 = [v16 integerValue];

  if (v17 == 242)
  {
    v18 = [v15 _FTOptionallyDecompressData];
    v19 = 0;
LABEL_16:
    v23 = 0;
    goto LABEL_18;
  }

  v20 = [*(a1 + 40) originalCommand];
  v21 = [v20 integerValue];

  if (v21 == 243)
  {
    v22 = [v15 _FTOptionallyDecompressData];
    v19 = JWDecodeDictionary();

    v18 = 0;
    goto LABEL_16;
  }

  v23 = [*(a1 + 48) _payloadFromDecryptedData:v15];
  v19 = 0;
  v18 = 0;
LABEL_18:
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v18;
  }

  v25 = v24;
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = v19;
  }

  v28 = v27;

  [*(a1 + 40) setUsedEngram:1];
  v29 = [*(a1 + 40) originalCommand];
  v30 = [v29 integerValue];

  if (v30 > 241)
  {
    if (v30 == 242)
    {
      [*(a1 + 48) connection:*(a1 + 56) incomingData:v28 fromURI:*(a1 + 64) context:*(a1 + 40)];
    }

    else if (v30 == 243)
    {
      v31 = [objc_alloc(MEMORY[0x1E69A5388]) initWithDictionary:v28];
      [*(a1 + 48) connection:*(a1 + 56) incomingProtobuf:v31 fromURI:*(a1 + 64) context:*(a1 + 40)];
    }
  }

  else if (v30 == 100 || v30 == 227)
  {
    [*(a1 + 48) connection:*(a1 + 56) incomingMessage:v28 fromURI:*(a1 + 64) context:*(a1 + 40)];
    [*(a1 + 48) connection:*(a1 + 56) incomingTopLevelMessage:v14 fromURI:*(a1 + 64) messageContext:*(a1 + 40)];
  }

  v32 = *MEMORY[0x1E69E9840];
}

void sub_195AC07AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195AC088C;
  v8[3] = &unk_1E7442158;
  v4 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = *(a1 + 56);
  v10 = v3;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v11 = v5;
  v12 = v6;
  v7 = v3;
  [v7 fetchGroupWithGroupID:v4 completion:v8];
}

void sub_195AC088C(uint64_t a1, void *a2, void *a3)
{
  v77 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v48 = a3;
  v6 = +[IDSLogging IDSConnection];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138412290;
    v72 = v7;
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "Decrypting Engram Message, Org Payload %@", buf, 0xCu);
  }

  v8 = *MEMORY[0x1E69A4DD8];
  v9 = [*(a1 + 32) objectForKey:*MEMORY[0x1E69A4DD8]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = MEMORY[0x1E695DEF0];
    v11 = [*(a1 + 32) objectForKey:v8];
    v12 = [v10 _IDSDataFromBase64String:v11];
LABEL_7:
    v50 = v12;
    goto LABEL_9;
  }

  v11 = [*(a1 + 32) objectForKey:v8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [*(a1 + 32) objectForKey:v8];
    goto LABEL_7;
  }

  v50 = 0;
LABEL_9:

  v13 = objc_opt_class();
  v14 = sub_195ABB4FC(v13, *(a1 + 32), *MEMORY[0x1E69A4DF0]);
  v15 = [v14 objectForKey:@"t"];
  objc_opt_class();
  v47 = a1;
  if (objc_opt_isKindOfClass())
  {
    v16 = MEMORY[0x1E695DEF0];
    v17 = [v14 objectForKey:{@"t", v14}];
    v18 = [v16 _IDSDataFromBase64String:v17];
LABEL_13:
    v19 = v18;
    goto LABEL_15;
  }

  v17 = [v14 objectForKey:{@"t", v14}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [v14 objectForKey:@"t"];
    goto LABEL_13;
  }

  v19 = 0;
LABEL_15:

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v49 = v5;
  obj = [v5 participants];
  v20 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
  if (v20)
  {
    v21 = v20;
    v52 = *v68;
    v53 = 0;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v68 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v67 + 1) + 8 * i);
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v24 = [v23 devices];
        v25 = [v24 countByEnumeratingWithState:&v63 objects:v75 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v64;
          while (2)
          {
            for (j = 0; j != v26; ++j)
            {
              if (*v64 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v63 + 1) + 8 * j);
              v30 = [v29 identifier];
              v31 = [v30 isEqual:v19];

              if (v31)
              {
                v32 = v29;

                v53 = v32;
                goto LABEL_30;
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v63 objects:v75 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }
        }

LABEL_30:
      }

      v21 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
    }

    while (v21);
  }

  else
  {
    v53 = 0;
  }

  v62 = 0;
  v33 = v49;
  v34 = [v49 verifyAndRevealData:v50 sendingDevice:v53 cypherIdentifier:&stru_1F09E7B80 error:&v62];
  v35 = v62;
  v36 = v35;
  if (v35)
  {
    if ([v35 code] == -67808)
    {
      v38 = *(v47 + 40);
      v37 = *(v47 + 48);
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = sub_195AC0ED4;
      v54[3] = &unk_1E7442130;
      v55 = v48;
      v56 = v50;
      v57 = v53;
      v39 = *(v47 + 64);
      v40 = *(v47 + 56);
      v61 = v39;
      v58 = v40;
      v59 = *(v47 + 32);
      v60 = *(v47 + 48);
      [v38 _fetchGroupWithGroupID:v37 skipCache:1 completion:v54];
    }

    else
    {
      v41 = [*(*(v47 + 56) + 8) _internal];
      v42 = [v41 serviceName];

      v43 = +[IDSLogging IDSConnection];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v72 = v48;
        v73 = 2112;
        v74 = v42;
        _os_log_impl(&dword_1959FF000, v43, OS_LOG_TYPE_DEFAULT, "Failed decrypting Engram {error: %@, serviceName: %@}", buf, 0x16u);
      }

      v44 = [*(v47 + 56) daemonController];
      [v44 failedDecryptingMessage:*(v47 + 32) reason:800 forGroupID:*(v47 + 48) onService:v42];
    }

    v33 = v49;
  }

  else
  {
    (*(*(v47 + 64) + 16))();
  }

  v45 = *MEMORY[0x1E69E9840];
}

void sub_195AC0ED4(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v5 = [*(*(a1 + 56) + 8) _internal];
    v6 = [v5 serviceName];

    v7 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138412546;
      v20 = v8;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Failed decrypting Engram {error: %@, serviceName: %@}", buf, 0x16u);
    }

    v9 = [*(a1 + 56) daemonController];
    [v9 failedDecryptingMessage:*(a1 + 64) reason:800 forGroupID:*(a1 + 72) onService:v6];
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v18 = 0;
    v9 = [v3 verifyAndRevealData:v10 sendingDevice:v11 cypherIdentifier:&stru_1F09E7B80 error:&v18];
    v6 = v18;
    if (v9)
    {
      v12 = [*(*(a1 + 56) + 8) _internal];
      v13 = [v12 serviceName];

      v14 = +[IDSLogging IDSConnection];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        *buf = 138412546;
        v20 = v15;
        v21 = 2112;
        v22 = v13;
        _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "Failed decrypting Engram {error: %@, serviceName: %@}", buf, 0x16u);
      }

      v16 = [*(a1 + 56) daemonController];
      [v16 failedDecryptingMessage:*(a1 + 64) reason:804 forGroupID:*(a1 + 72) onService:v13];
    }

    else
    {
      (*(*(a1 + 80) + 16))();
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_195AC15A0(uint64_t a1)
{
  v1 = [*(a1 + 32) object];
  [v1 _callDelegatesForDevicesChanged];
}

void sub_195AC16D8(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 40) object];
    [v4 service:v3 nearbyDevicesChanged:*(a1 + 40)];
  }
}

void sub_195AC1948(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 40) object];
    [v4 service:v3 connectedDevicesChanged:*(a1 + 40)];
  }
}

void sub_195AC1EB0(void *a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1[4] + 40) object];
    [v4 service:v3 account:a1[5] identifier:a1[6] sentBytes:a1[7] totalBytes:a1[8]];
  }
}

void sub_195AC1F30(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 40) object];
    LOBYTE(v4) = *(a1 + 88);
    [v5 service:v3 account:*(a1 + 40) messageIdentifier:*(a1 + 48) alternateCallbackID:*(a1 + 56) updatedWithResponseCode:*(a1 + 80) error:*(a1 + 64) lastCall:v4];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_6;
    }

    v3 = [*(*(a1 + 32) + 40) object];
    LOBYTE(v4) = *(a1 + 88);
    [v5 service:v3 account:*(a1 + 40) messageIdentifier:*(a1 + 48) alternateCallbackID:*(a1 + 56) updatedWithResponseCode:*(a1 + 80) error:*(a1 + 64) lastCall:v4 messageContext:*(a1 + 72)];
  }

LABEL_6:
}

void sub_195AC237C(void *a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1[4] + 40) object];
    [v4 service:v3 account:a1[5] identifier:a1[6] alternateCallbackID:a1[7] willSendToDestinations:a1[8] skippedDestinations:a1[9] registrationPropertyToDestinations:a1[10]];
  }
}

void sub_195AC26F0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 40) object];
    [v4 service:v3 account:*(a1 + 40) identifier:*(a1 + 48) didSendWithSuccess:*(a1 + 72) error:*(a1 + 56) context:*(a1 + 64)];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_6;
    }

    v3 = [*(*(a1 + 32) + 40) object];
    [v4 service:v3 account:*(a1 + 40) identifier:*(a1 + 48) didSendWithSuccess:*(a1 + 72) error:*(a1 + 56)];
  }

LABEL_6:
}

void sub_195AC29E8(uint64_t a1, void *a2)
{
  v8 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 40) object];
    [v8 service:v3 account:*(a1 + 40) identifier:*(a1 + 48) hasBeenDeliveredWithContext:*(a1 + 56)];
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [*(*(a1 + 32) + 40) object];
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = [*(a1 + 64) prefixedURI];
    [v8 service:v4 account:v5 identifier:v6 fromID:v7 hasBeenDeliveredWithContext:*(a1 + 56)];
  }
}

void sub_195AC2CB8(void *a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1[4] + 40) object];
    [v4 service:v3 didFlushCacheForRemoteURI:a1[5] fromURI:a1[6] guid:a1[7]];
  }
}

void sub_195AC2EBC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 40) object];
    [v4 service:v3 didFlushCacheForKTPeerURI:*(a1 + 40)];
  }
}

void sub_195AC31C4(void *a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1[4] + 40) object];
    [v4 service:v3 account:a1[5] inviteReceivedForSession:a1[6] fromID:a1[7] withOptions:a1[8]];
  }

  else if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1[4] + 40) object];
    [v4 service:v3 account:a1[5] inviteReceivedForSession:a1[6] fromID:a1[7] withContext:a1[9]];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_8;
    }

    v3 = [*(a1[4] + 40) object];
    [v4 service:v3 account:a1[5] inviteReceivedForSession:a1[6] fromID:a1[7]];
  }

LABEL_8:
}

void sub_195AC34EC(void *a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1[4] + 40) object];
    [v4 service:v3 account:a1[5] inviteDroppedForSessionID:a1[6] fromID:a1[7] context:a1[8] error:a1[9]];
  }
}

void sub_195AC3748(void *a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1[4] + 40) object];
    [v4 service:v3 account:a1[5] receivedGroupSessionParticipantUpdate:a1[6] context:a1[7]];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_6;
    }

    v3 = [*(a1[4] + 40) object];
    [v4 service:v3 account:a1[5] receivedGroupSessionParticipantUpdate:a1[6]];
  }

LABEL_6:
}

void sub_195AC3924(void *a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1[4] + 40) object];
    [v4 service:v3 account:a1[5] receivedGroupSessionParticipantDataUpdate:a1[6]];
  }
}

void sub_195AC3B58(void *a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1[4] + 40) object];
    [v4 service:v3 didSendOpportunisticDataWithIdentifier:a1[5] toIDs:a1[6]];
  }
}

void sub_195AC3D44(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 40) object];
    [v4 serviceSpaceDidBecomeAvailable:v3];
  }
}

void sub_195AC44F8(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6138] reloadAccounts];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 64);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Linked devices before %@", &v7, 0xCu);
  }

  *(*(a1 + 32) + 80) = 0;
  [*(a1 + 32) _loadCachedLinkedDevices];
  v4 = [MEMORY[0x1E69A6138] reloadAccounts];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 64);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "Linked devices after %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195AC5230(uint64_t a1, void *a2)
{
  v3 = [a2 properties];
  LODWORD(a1) = [v3 isEqualToPseudonymProperties:*(a1 + 32)];

  return a1 ^ 1;
}

id IDSServiceCalculatedPseudonymChanges_0(void *a1, void *a2)
{
  v176 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v104 = a2;
  v101 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v5 = v3;
  v6 = 0x1E743D000uLL;
  v123 = v4;
  v102 = v5;
  v105 = [v5 countByEnumeratingWithState:&v162 objects:v175 count:16];
  if (v105)
  {
    v103 = *v163;
    do
    {
      for (i = 0; i != v105; i = v79 + 1)
      {
        if (*v163 != v103)
        {
          objc_enumerationMutation(v5);
        }

        v110 = i;
        v8 = *(*(&v162 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v9 = [v5 objectForKey:{v8, v101}];
        v10 = [v104 objectForKey:v8];
        v119 = v10;
        if (v10)
        {
          v11 = [MEMORY[0x1E695DFA8] setWithArray:v9];
          v12 = [MEMORY[0x1E695DFA8] setWithArray:v10];
          v13 = [v11 mutableCopy];
          [v13 minusSet:v12];
          v106 = v12;
          v111 = [v12 mutableCopy];
          v112 = v11;
          [v111 minusSet:v11];
          v108 = v13;
          if ([v13 count] || objc_msgSend(v111, "count"))
          {
            v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            v121 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v154 = 0u;
            v155 = 0u;
            v156 = 0u;
            v157 = 0u;
            obj = v13;
            v16 = [obj countByEnumeratingWithState:&v154 objects:v173 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v155;
              do
              {
                for (j = 0; j != v17; ++j)
                {
                  if (*v155 != v18)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v20 = *(*(&v154 + 1) + 8 * j);
                  v21 = [v20 URI];
                  [v14 addObject:v21];

                  v22 = [v20 URI];
                  [v15 setObject:v20 forKey:v22];
                }

                v17 = [obj countByEnumeratingWithState:&v154 objects:v173 count:16];
              }

              while (v17);
            }

            v107 = v14;

            v152 = 0u;
            v153 = 0u;
            v150 = 0u;
            v151 = 0u;
            v23 = v111;
            v24 = [v23 countByEnumeratingWithState:&v150 objects:v172 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v151;
              do
              {
                for (k = 0; k != v25; ++k)
                {
                  if (*v151 != v26)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v28 = *(*(&v150 + 1) + 8 * k);
                  v29 = [v28 URI];
                  [v121 addObject:v29];

                  v30 = [v28 URI];
                  [v15 setObject:v28 forKey:v30];
                }

                v25 = [v23 countByEnumeratingWithState:&v150 objects:v172 count:16];
              }

              while (v25);
            }

            v31 = [v107 mutableCopy];
            [v31 minusSet:v121];
            v32 = [v121 mutableCopy];
            [v32 minusSet:v107];
            v148 = 0u;
            v149 = 0u;
            v146 = 0u;
            v147 = 0u;
            v117 = v31;
            v33 = [v117 countByEnumeratingWithState:&v146 objects:v171 count:16];
            v125 = v15;
            if (v33)
            {
              v34 = v33;
              v35 = *v147;
              do
              {
                for (m = 0; m != v34; ++m)
                {
                  if (*v147 != v35)
                  {
                    objc_enumerationMutation(v117);
                  }

                  v37 = [v15 objectForKeyedSubscript:*(*(&v146 + 1) + 8 * m)];
                  v38 = [objc_alloc(*(v6 + 1392)) initWithPseudonym:v37 changeType:0 updateFlags:0];
                  [v4 addObject:v38];

                  v15 = v125;
                }

                v34 = [v117 countByEnumeratingWithState:&v146 objects:v171 count:16];
              }

              while (v34);
            }

            v144 = 0u;
            v145 = 0u;
            v142 = 0u;
            v143 = 0u;
            v116 = v32;
            v39 = [v116 countByEnumeratingWithState:&v142 objects:v170 count:16];
            if (v39)
            {
              v40 = v39;
              v41 = *v143;
              do
              {
                for (n = 0; n != v40; ++n)
                {
                  if (*v143 != v41)
                  {
                    objc_enumerationMutation(v116);
                  }

                  v43 = [v15 objectForKeyedSubscript:*(*(&v142 + 1) + 8 * n)];
                  v44 = [objc_alloc(*(v6 + 1392)) initWithPseudonym:v43 changeType:1 updateFlags:0];
                  [v4 addObject:v44];
                }

                v40 = [v116 countByEnumeratingWithState:&v142 objects:v170 count:16];
              }

              while (v40);
            }

            v140 = 0u;
            v141 = 0u;
            v138 = 0u;
            v139 = 0u;
            v115 = v23;
            v10 = v119;
            v122 = [v115 countByEnumeratingWithState:&v138 objects:v169 count:16];
            if (v122)
            {
              v120 = *v139;
              v118 = v9;
              do
              {
                for (ii = 0; ii != v122; ++ii)
                {
                  if (*v139 != v120)
                  {
                    objc_enumerationMutation(v115);
                  }

                  v46 = *(*(&v138 + 1) + 8 * ii);
                  v134 = 0u;
                  v135 = 0u;
                  v136 = 0u;
                  v137 = 0u;
                  v47 = obj;
                  v48 = [v47 countByEnumeratingWithState:&v134 objects:v168 count:16];
                  if (v48)
                  {
                    v49 = v48;
                    v50 = *v135;
LABEL_44:
                    v51 = 0;
                    while (1)
                    {
                      if (*v135 != v50)
                      {
                        objc_enumerationMutation(v47);
                      }

                      v52 = *(*(&v134 + 1) + 8 * v51);
                      v53 = [v52 URI];
                      v54 = [v46 URI];
                      v55 = [v53 isEqualToURI:v54];

                      if (v55)
                      {
                        break;
                      }

                      if (v49 == ++v51)
                      {
                        v49 = [v47 countByEnumeratingWithState:&v134 objects:v168 count:16];
                        if (v49)
                        {
                          goto LABEL_44;
                        }

                        v56 = v47;
                        v6 = 0x1E743D000;
                        v9 = v118;
                        v10 = v119;
                        goto LABEL_69;
                      }
                    }

                    v56 = v52;

                    v6 = 0x1E743D000;
                    v9 = v118;
                    v10 = v119;
                    if (!v56)
                    {
                      goto LABEL_70;
                    }

                    v57 = [v56 properties];
                    v58 = [v46 properties];
                    v59 = v57;
                    if ([v59 isEqualToPseudonymProperties:v58])
                    {
                      v60 = 0;
                    }

                    else
                    {
                      v61 = [v59 featureID];
                      v62 = [v58 featureID];
                      v63 = [v61 isEqualToString:v62];

                      v64 = v63 ^ 1u;
                      v65 = [v59 scopeID];
                      v66 = [v58 scopeID];
                      v67 = v66;
                      if (v65 == v66)
                      {
                      }

                      else
                      {
                        v68 = [v59 scopeID];
                        v69 = [v58 scopeID];
                        v113 = [v68 isEqualToString:v69];

                        if ((v113 & 1) == 0)
                        {
                          v64 |= 2uLL;
                        }
                      }

                      v70 = [v59 allowedServices];
                      v71 = [v70 __imSetFromArray];
                      v72 = [v58 allowedServices];
                      v73 = [v72 __imSetFromArray];
                      v114 = [v71 isEqual:v73];

                      if (v114)
                      {
                        v60 = v64;
                      }

                      else
                      {
                        v60 = v64 | 8;
                      }

                      [v59 expiryEpoch];
                      v75 = v74;
                      [v58 expiryEpoch];
                      v77 = v75 - v76;
                      if (v77 < 0.0)
                      {
                        v77 = -v77;
                      }

                      if (v77 > 1.0)
                      {
                        v60 |= 4uLL;
                      }

                      v6 = 0x1E743D000uLL;
                      v9 = v118;
                      v10 = v119;
                    }

                    v78 = [objc_alloc(*(v6 + 1392)) initWithPseudonym:v46 changeType:2 updateFlags:v60];
                    [v123 addObject:v78];
                  }

                  else
                  {
                    v56 = v47;
                  }

LABEL_69:

LABEL_70:
                  v15 = v125;
                }

                v122 = [v115 countByEnumeratingWithState:&v138 objects:v169 count:16];
              }

              while (v122);
            }

            v4 = v123;
            v5 = v102;
          }

LABEL_74:
          v79 = v110;
          goto LABEL_83;
        }

        v160 = 0u;
        v161 = 0u;
        v158 = 0u;
        v159 = 0u;
        v112 = v9;
        v80 = [v112 countByEnumeratingWithState:&v158 objects:v174 count:16];
        if (!v80)
        {
          goto LABEL_74;
        }

        v81 = v80;
        v82 = *v159;
        do
        {
          for (jj = 0; jj != v81; ++jj)
          {
            if (*v159 != v82)
            {
              objc_enumerationMutation(v112);
            }

            v84 = [objc_alloc(*(v6 + 1392)) initWithPseudonym:*(*(&v158 + 1) + 8 * jj) changeType:0 updateFlags:0];
            [v4 addObject:v84];
          }

          v81 = [v112 countByEnumeratingWithState:&v158 objects:v174 count:16];
        }

        while (v81);
        v79 = v110;
        v10 = 0;
LABEL_83:

        objc_autoreleasePoolPop(context);
      }

      v105 = [v5 countByEnumeratingWithState:&v162 objects:v175 count:16];
    }

    while (v105);
  }

  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v85 = v104;
  v86 = [v85 countByEnumeratingWithState:&v130 objects:v167 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = *v131;
    do
    {
      for (kk = 0; kk != v87; ++kk)
      {
        if (*v131 != v88)
        {
          objc_enumerationMutation(v85);
        }

        v90 = *(*(&v130 + 1) + 8 * kk);
        v91 = [v5 objectForKey:{v90, v101}];
        if (!v91)
        {
          v92 = [v85 objectForKey:v90];
          v126 = 0u;
          v127 = 0u;
          v128 = 0u;
          v129 = 0u;
          v93 = [v92 countByEnumeratingWithState:&v126 objects:v166 count:16];
          if (v93)
          {
            v94 = v93;
            v95 = *v127;
            do
            {
              for (mm = 0; mm != v94; ++mm)
              {
                if (*v127 != v95)
                {
                  objc_enumerationMutation(v92);
                }

                v97 = [[IDSServicePseudonymChange alloc] initWithPseudonym:*(*(&v126 + 1) + 8 * mm) changeType:1 updateFlags:0];
                [v123 addObject:v97];
              }

              v94 = [v92 countByEnumeratingWithState:&v126 objects:v166 count:16];
            }

            while (v94);
          }

          v4 = v123;
          v5 = v102;
        }
      }

      v87 = [v85 countByEnumeratingWithState:&v130 objects:v167 count:16];
    }

    while (v87);
  }

  v98 = [v4 copy];
  objc_autoreleasePoolPop(v101);

  v99 = *MEMORY[0x1E69E9840];

  return v98;
}

void sub_195AC6444(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 40) object];
    [v4 service:v3 didUpdatePseudonymsWithChanges:*(a1 + 40)];
  }
}

id sub_195AC667C(uint64_t a1)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v2 = *MEMORY[0x1E69A4FE8];
  if (a1 <= 499)
  {
    if (a1 > 299)
    {
      if (a1 == 300)
      {
        v22 = *MEMORY[0x1E696A578];
        v23 = @"Internal server error";
        v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
        v4 = v1;
        v5 = v2;
        v6 = 300;
        goto LABEL_22;
      }

      if (a1 == 400)
      {
        v20 = *MEMORY[0x1E696A578];
        v21 = @"Invalid URI";
        v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
        v4 = v1;
        v5 = v2;
        v6 = 400;
        goto LABEL_22;
      }
    }

    else
    {
      if (a1 == 100)
      {
        v26 = *MEMORY[0x1E696A578];
        v27[0] = @"Feature disabled";
        v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
        v4 = v1;
        v5 = v2;
        v6 = 100;
        goto LABEL_22;
      }

      if (a1 == 200)
      {
        v24 = *MEMORY[0x1E696A578];
        v25 = @"Server error";
        v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        v4 = v1;
        v5 = v2;
        v6 = 200;
        goto LABEL_22;
      }
    }
  }

  else if (a1 <= 699)
  {
    if (a1 == 500)
    {
      v18 = *MEMORY[0x1E696A578];
      v19 = @"Missing entitlements";
      v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v4 = v1;
      v5 = v2;
      v6 = 500;
      goto LABEL_22;
    }

    if (a1 == 600)
    {
      v16 = *MEMORY[0x1E696A578];
      v17 = @"Unable to send request";
      v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v4 = v1;
      v5 = v2;
      v6 = 600;
      goto LABEL_22;
    }
  }

  else
  {
    switch(a1)
    {
      case 700:
        v14 = *MEMORY[0x1E696A578];
        v15 = @"Pseudonym limit reached";
        v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
        v4 = v1;
        v5 = v2;
        v6 = 700;
        goto LABEL_22;
      case 800:
        v12 = *MEMORY[0x1E696A578];
        v13 = @"Request failed";
        v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
        v4 = v1;
        v5 = v2;
        v6 = 800;
        goto LABEL_22;
      case 900:
        v10 = *MEMORY[0x1E696A578];
        v11 = @"Max number of in flight provisions reached";
        v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
        v4 = v1;
        v5 = v2;
        v6 = 900;
LABEL_22:
        v7 = [v4 errorWithDomain:v5 code:v6 userInfo:v3];

        goto LABEL_23;
    }
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69A4FE8] code:a1 userInfo:0];
LABEL_23:
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

void sub_195AC6D6C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_195AC667C(600);
  (*(v1 + 16))(v1, 0, v2);
}

void sub_195AC7120(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_195AC667C(600);
  (*(v1 + 16))(v1, 0, v2);
}

void sub_195AC74B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_195AC667C(600);
  (*(v1 + 16))(v1, 0, v2);
}

id sub_195AC78FC(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = [v2 isEqualToString:*MEMORY[0x1E69A4FE8]];

  if (v3)
  {
    v4 = sub_195AC667C([v1 code]);
  }

  else
  {
    v5 = [v1 domain];
    v6 = [v5 isEqualToString:*MEMORY[0x1E69A5170]];

    if (v6)
    {
      v4 = sub_195AC85F4([v1 code]);
    }

    else
    {
      v7 = [v1 domain];
      v8 = [v7 isEqualToString:*MEMORY[0x1E69A50B8]];

      if (v8)
      {
        v4 = sub_195ACA530([v1 code]);
      }

      else
      {
        v4 = v1;
      }
    }
  }

  v9 = v4;

  return v9;
}

uint64_t sub_195AC79FC(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 64))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v11 = 138413058;
    v12 = v4;
    v13 = 2112;
    v14 = v3;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "finishedProvisioningPseudonym called - block invoke {pseudonym: %@, success:%@, requestUUID: %@, error:%@}", &v11, 0x2Au);
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  result = (*(*(a1 + 56) + 16))();
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_195AC7DAC(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 64))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v11 = 138413058;
    v12 = v4;
    v13 = 2112;
    v14 = v3;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "finishedRenewingPseudonym called - block invoke {pseudonym: %@, success:%@, requestUUID: %@, error:%@}", &v11, 0x2Au);
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  result = (*(*(a1 + 56) + 16))();
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_195AC8124(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 56))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v10 = 138412802;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "finishedRevokingPseudonymWithSuccess called - block invoke {success:%@, requestUUID: %@, error:%@}", &v10, 0x20u);
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 40);
  result = (*(*(a1 + 48) + 16))();
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_195AC85F4(unsigned int a1)
{
  v67[1] = *MEMORY[0x1E69E9840];
  v1 = 0;
  switch(a1)
  {
    case 0u:
      break;
    case 1u:
      v2 = MEMORY[0x1E696ABC0];
      v3 = *MEMORY[0x1E69A5170];
      v66 = *MEMORY[0x1E696A578];
      v67[0] = @"Invalid parameters";
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:&v66 count:1];
      v5 = v2;
      v6 = v3;
      v7 = 1;
      goto LABEL_17;
    case 2u:
      v18 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E69A5170];
      v64 = *MEMORY[0x1E696A578];
      v65 = @"URI not a token URI";
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
      v5 = v18;
      v6 = v19;
      v7 = 2;
      goto LABEL_17;
    case 3u:
      v22 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E69A5170];
      v62 = *MEMORY[0x1E696A578];
      v63 = @"Daemon disconnected";
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
      v5 = v22;
      v6 = v23;
      v7 = 3;
      goto LABEL_17;
    case 4u:
      v12 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E69A5170];
      v60 = *MEMORY[0x1E696A578];
      v61 = @"Missing entitlements";
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      v5 = v12;
      v6 = v13;
      v7 = 4;
      goto LABEL_17;
    case 5u:
      v26 = MEMORY[0x1E696ABC0];
      v27 = *MEMORY[0x1E69A5170];
      v58 = *MEMORY[0x1E696A578];
      v59 = @"Service has no application key";
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      v5 = v26;
      v6 = v27;
      v7 = 5;
      goto LABEL_17;
    case 6u:
      v30 = MEMORY[0x1E696ABC0];
      v31 = *MEMORY[0x1E69A5170];
      v56 = *MEMORY[0x1E696A578];
      v57 = @"Cannot perform query";
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v5 = v30;
      v6 = v31;
      v7 = 6;
      goto LABEL_17;
    case 7u:
      v24 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E69A5170];
      v54 = *MEMORY[0x1E696A578];
      v55 = @"Query failed";
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      v5 = v24;
      v6 = v25;
      v7 = 7;
      goto LABEL_17;
    case 8u:
      v34 = MEMORY[0x1E696ABC0];
      v35 = *MEMORY[0x1E69A5170];
      v52 = *MEMORY[0x1E696A578];
      v53 = @"Query rate limited";
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      v5 = v34;
      v6 = v35;
      v7 = 8;
      goto LABEL_17;
    case 9u:
      v16 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E69A5170];
      v50 = *MEMORY[0x1E696A578];
      v51 = @"Remote identity unregistered";
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v5 = v16;
      v6 = v17;
      v7 = 9;
      goto LABEL_17;
    case 0xAu:
      v32 = MEMORY[0x1E696ABC0];
      v33 = *MEMORY[0x1E69A5170];
      v48 = *MEMORY[0x1E696A578];
      v49 = @"Remote identity registered without signing key type";
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v5 = v32;
      v6 = v33;
      v7 = 10;
      goto LABEL_17;
    case 0xBu:
      v10 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E69A5170];
      v46 = *MEMORY[0x1E696A578];
      v47 = @"Unable to load signing key type";
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      v5 = v10;
      v6 = v11;
      v7 = 11;
      goto LABEL_17;
    case 0xCu:
      v14 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E69A5170];
      v44 = *MEMORY[0x1E696A578];
      v45 = @"MessageProtection signing/verification error";
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v5 = v14;
      v6 = v15;
      v7 = 12;
      goto LABEL_17;
    case 0xDu:
      v28 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E69A5170];
      v40 = *MEMORY[0x1E696A578];
      v41 = @"SecKey signing/verification error";
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v5 = v28;
      v6 = v29;
      v7 = 13;
      goto LABEL_17;
    case 0xEu:
      v8 = MEMORY[0x1E696ABC0];
      v9 = *MEMORY[0x1E69A5170];
      v42 = *MEMORY[0x1E696A578];
      v43 = @"Local device unregistered";
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v5 = v8;
      v6 = v9;
      v7 = 14;
      goto LABEL_17;
    case 0xFu:
      v20 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E69A5170];
      v38 = *MEMORY[0x1E696A578];
      v39 = @"Failed to diversify key";
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v5 = v20;
      v6 = v21;
      v7 = 15;
LABEL_17:
      v1 = [v5 errorWithDomain:v6 code:v7 userInfo:v4];

      break;
    default:
      v1 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69A5170] code:a1 userInfo:0];
      break;
  }

  v36 = *MEMORY[0x1E69E9840];

  return v1;
}

void sub_195AC8C30(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_195AC85F4(3u);
  (*(v1 + 16))(v1, 0, v2);
}

void sub_195AC8C94(void *a1, void *a2)
{
  v3 = a1[8];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2;
  v8 = [v5 serviceProperties];
  v7 = [v8 identifier];
  [v6 signData:v4 withAlgorithm:v3 onService:v7 options:a1[6] requestUUID:a1[7]];
}

void sub_195AC9184(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_195AC85F4(3u);
  (*(v1 + 16))(v1, 0, v2);
}

void sub_195AC91E8(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[10];
  v6 = a1[6];
  v7 = a2;
  v9 = [v6 serviceProperties];
  v8 = [v9 identifier];
  [v7 verifySignedData:v3 matchesData:v4 forAlgorithm:v5 onService:v8 tokenUri:a1[7] options:a1[8] requestUUID:a1[9]];
}

void sub_195AC9754(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_195AC85F4(3u);
  (*(v1 + 16))(v1, MEMORY[0x1E695E0F8], v2);
}

void sub_195AC97BC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = [v3 copy];
  v5 = *(a1 + 64);
  v6 = [*(a1 + 40) serviceProperties];
  v7 = [v6 identifier];
  [v4 verifySignedPayloads:v8 forAlgorithm:v5 onService:v7 options:*(a1 + 48) requestUUID:*(a1 + 56)];
}

void sub_195ACA0F4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) copy];
  (*(v2 + 16))(v2, v3, *(a1 + 40));
}

id sub_195ACA530(uint64_t a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v2 = *MEMORY[0x1E69A50B8];
  if (a1 <= 299)
  {
    if (a1 == 100)
    {
      v18 = *MEMORY[0x1E696A578];
      v19[0] = @"Feature disabled";
      v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v4 = v1;
      v5 = v2;
      v6 = 100;
      goto LABEL_12;
    }

    if (a1 == 200)
    {
      v16 = *MEMORY[0x1E696A578];
      v17 = @"Server error";
      v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v4 = v1;
      v5 = v2;
      v6 = 200;
      goto LABEL_12;
    }
  }

  else
  {
    switch(a1)
    {
      case 300:
        v14 = *MEMORY[0x1E696A578];
        v15 = @"Internal server error";
        v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
        v4 = v1;
        v5 = v2;
        v6 = 300;
        goto LABEL_12;
      case 400:
        v12 = *MEMORY[0x1E696A578];
        v13 = @"Invalid URI";
        v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
        v4 = v1;
        v5 = v2;
        v6 = 400;
        goto LABEL_12;
      case 500:
        v10 = *MEMORY[0x1E696A578];
        v11 = @"Missing entitlements";
        v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
        v4 = v1;
        v5 = v2;
        v6 = 500;
LABEL_12:
        v7 = [v4 errorWithDomain:v5 code:v6 userInfo:v3];

        goto LABEL_13;
    }
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69A50B8] code:a1 userInfo:0];
LABEL_13:
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

void sub_195ACA778(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_195ACA530(600);
  (*(v1 + 16))(v1, v2);
}

void sub_195ACB174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_activity_scope_state_s state, char a11)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_195ACB320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_activity_scope_state_s state, char a11)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

BOOL sub_195ACBF38(uint64_t a1, void *a2)
{
  v2 = [a2 _internal];
  v3 = [v2 accountType] == 0;

  return v3;
}

uint64_t sub_195ACBF78(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 loginID];
  v6 = [v4 loginID];

  v7 = [v5 compare:v6];
  return v7;
}

id sub_195ACBFE8(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasPrefix:@"device:"])
  {
    v3 = 0;
  }

  else
  {
    v4 = [v2 _stripPotentialTokenURIWithToken:0];
    v3 = [v4 _stripFZIDPrefix];
  }

  return v3;
}

void sub_195ACCF0C(void *a1)
{
  v2 = a1[5];
  v1 = a1[6];
  v3 = a1[4];
  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.identityservices.error" code:14 userInfo:0];
  (*(v1 + 16))(v1, v3, v2, v4);
}

void sub_195ACD720(void *a1)
{
  v2 = a1[5];
  v1 = a1[6];
  v3 = a1[4];
  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.identityservices.error" code:14 userInfo:0];
  (*(v1 + 16))(v1, v3, v2, v4);
}

void sub_195ACDF8C(void *a1)
{
  v2 = a1[5];
  v1 = a1[6];
  v3 = a1[4];
  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.identityservices.error" code:14 userInfo:0];
  (*(v1 + 16))(v1, v3, v2, v4);
}

void sub_195ACF704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, os_activity_scope_state_s state, char a39)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_195ACF880(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E695DF20]);
  v3 = [v2 initWithObjectsAndKeys:{@"Out of space", *MEMORY[0x1E696A578], 0}];
  v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:27 userInfo:v3];
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195ACF988;
  v7[3] = &unk_1E7442068;
  v7[4] = v5;
  v8 = *(a1 + 40);
  v9 = v4;
  v6 = v4;
  [v5 _callDelegatesWithBlock:v7];
}

void sub_195ACF988(void *a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1[4] + 40) object];
    [v4 service:v3 account:0 identifier:a1[5] didSendWithSuccess:0 error:a1[6]];
  }
}

void sub_195AD02BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, os_activity_scope_state_s state, char a39)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_195AD08BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, os_activity_scope_state_s state, char a17)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_195AD3EFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, os_activity_scope_state_s state, char a32)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_195AD41A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[IDSInternalQueueController sharedInstance];
  v8 = [v7 assertQueueIsCurrent];

  if (v8)
  {
    v9 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_195B3C1F8();
    }
  }

  if (v6)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v10 = [*(a1 + 32) objectForKeyedSubscript:@"IDSSendMessageOptionFromID"];
    v11 = [*(a1 + 40) _sendingAccountForAccount:0 destination:0 fromID:v10];
    v12 = [v11 _internal];
    v13 = [v12 uniqueID];

    v14 = MEMORY[0x1E69A5240];
    v15 = [*(a1 + 48) destinations];
    v16 = [v14 destinationWithStrings:v15];

    v17 = *(a1 + 48);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_195AD43CC;
    v26[3] = &unk_1E7442348;
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v27 = v18;
    v28 = v19;
    v29 = v11;
    v30 = v16;
    v20 = *(a1 + 56);
    v21 = *(a1 + 64);
    v31 = v13;
    v22 = *(a1 + 72);
    v33 = v21;
    v34 = v22;
    v32 = v20;
    v23 = v13;
    v24 = v16;
    v25 = v11;
    [v5 _publicDataRepresentationForGroup:v17 completion:v26];
  }
}

void sub_195AD43CC(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*(a1 + 32)];
  v5 = v4;
  if (v3)
  {
    CFDictionarySetValue(v4, @"IDSSendMessageOptionDataToEncrypt", v3);
  }

  v6 = MEMORY[0x1E695E118];
  CFDictionarySetValue(v5, @"IDSSendMessageOptionTopLevelDictionary", MEMORY[0x1E695E118]);
  CFDictionarySetValue(v5, @"IDSSendMessageOptionCommand", &unk_1F0A29A20);
  CFDictionarySetValue(v5, @"IDSSendMessageOptionEncryptPayload", v6);
  CFDictionarySetValue(v5, @"IDSSendMessageOptionAlwaysSkipSelfKey", v6);
  if (![*(a1 + 40) canSendMessageWithAccount:*(a1 + 48) toDestination:*(a1 + 56)])
  {
    v16 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [*(a1 + 48) _internal];
      *buf = 138412290;
      v32 = v17;
      _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "sendMessage - Unable to send message to this destination from this account %@", buf, 0xCu);
    }

    v27 = *MEMORY[0x1E696A578];
    v28 = @"Destination device is not active for this account";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v18 = MEMORY[0x1E696ABC0];
    v19 = 37;
    goto LABEL_15;
  }

  if (!*(a1 + 64) || ([*(*(a1 + 40) + 16) objectForKeyedSubscript:?], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v20 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [*(a1 + 48) _internal];
      *buf = 138412290;
      v32 = v21;
      _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "sendMessage - Could not find connection for account %@", buf, 0xCu);
    }

    [*(a1 + 40) _logConnectionMap];
    v22 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [*(*(a1 + 40) + 8) _internal];
      v24 = [v23 accounts];
      *buf = 138412290;
      v32 = v24;
      _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "sendMessage - All accounts %@", buf, 0xCu);
    }

    v29 = *MEMORY[0x1E696A578];
    v30 = @"Could not find valid account";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v18 = MEMORY[0x1E696ABC0];
    v19 = 7;
LABEL_15:
    v14 = [v18 errorWithDomain:@"com.apple.identityservices.error" code:v19 userInfo:v8];
    v15 = *(*(a1 + 72) + 16);
    goto LABEL_16;
  }

  v8 = v7;
  v9 = [v7 _internal];
  v10 = [MEMORY[0x1E695DEF0] data];
  v11 = *(a1 + 56);
  v12 = *(a1 + 80);
  v13 = *(a1 + 88);
  v26 = 0;
  [v9 sendData:v10 toDestinations:v11 priority:v12 options:v5 identifier:v13 error:&v26];
  v14 = v26;

  v15 = *(*(a1 + 72) + 16);
LABEL_16:
  v15();

  v25 = *MEMORY[0x1E69E9840];
}

void sub_195AD5BD0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 40) object];
    [v4 service:v3 didHintCheckingTransportLogWithReason:*(a1 + 40)];
  }
}

void sub_195AD5D70(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[IDSLogging _IDSService];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v3;
      v7 = "Failed to send group ahead {group: %@, error: %@}";
LABEL_6:
      _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, v7, &v11, 0x16u);
    }
  }

  else if (v5)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v7 = "Did send group ahead {group: %@ identifier: %@}";
    goto LABEL_6;
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195AD6440()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"accountsd", @"addressbooksyncd", @"airplayutil", @"amsaccountsd", @"assistantd", @"Assistive Control", @"audioDeviceTest", @"audioperftest", @"Bridge", @"CallHistorySyncHelper", @"Carousel", @"carouseluitrigger", @"ClarityBoard", @"cloudpaird", @"com.apple.accessibility.AccessibilityUIServer", @"com.apple.audio.virtualaudio.IntegrationTests.xctrunner", @"com.apple.FTLivePhotoService", @"companion_proxy", @"companionappd", @"companioncamerad", @"companionfindlocallyd", 0x1F09EC000, @"coreautomationd", @"coreduetd", @"demod", @"diagnosticextensionsd", @"ekgremlin", @"eventkitsyncd", @"fmflocatord", @"gamed", @"HealthKitControl", @"homeutil", @"HomeKitTestHostApp", @"IDSInvitationTestApp", @"idsrelay", @"idstool", @"IMAP Unit Tests-Runner", @"IMNotificationServiceAgent", @"IntegrationTests-Runner", @"iosdiagnosticsd", @"iTester", @"itesterd.mobile", @"itunescloudd", @"Legacy Account Migration Tests-", @"libassistantdTests-Runner", @"livabilityd", @"loctilestool", @"mediaremoted", @"Messages Catalyst", @"MessageUnitTests-Runner", @"MessagesViewService", @"minilab", @"mobiletimerd", @"mstreamd", @"Music", @"nanoappregistryd", @"nanobackupd", @"nanofindlocallyd", @"nanomediaremotelinkagent", @"nanomessagesd", @"nanomediatool"}];
  v1 = qword_1ED5DDF50;
  qword_1ED5DDF50 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_195AD6994(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

void sub_195AD7A00(void *a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1[4] + 32) objectForKey:a1[5]];
  v4 = [v3 copy];

  if (v4)
  {
    v5 = [MEMORY[0x1E695DF20] dictionary];
    (v4)[2](v4, v5, a1[6], 0, v6);
  }

  [*(a1[4] + 32) removeObjectForKey:a1[5]];
}

void sub_195AD8040(void *a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1[4] + 32) objectForKey:a1[5]];
  v4 = [v3 copy];

  if (v4)
  {
    v5 = [MEMORY[0x1E695DF20] dictionary];
    (v4)[2](v4, v5, a1[6], a1[7], v6);
  }

  [*(a1[4] + 32) removeObjectForKey:a1[5]];
}

void sub_195AD8100(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMGetXPCDictionaryFromDictionary();
  v5 = IMGetXPCStringFromDictionary();
  objc_opt_class();
  v6 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();

  v7 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412802;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Received cached id status {destinations: %@, service: %@, error: %@}", &v13, 0x20u);
  }

  v8 = [*(a1[4] + 32) objectForKey:a1[5]];
  v9 = [v8 copy];

  if (v9)
  {
    (v9)[2](v9, v4, v5, a1[6], v6);
  }

  if (a1[5])
  {
    [*(a1[4] + 32) removeObjectForKey:?];
    v10 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1[4] + 32);
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "transactionID map after REMOVE %@", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_195AD89AC(void *a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1[4] + 32) objectForKey:a1[5]];
  v4 = [v3 copy];

  if (v4)
  {
    v5 = [MEMORY[0x1E695DF20] dictionary];
    (v4)[2](v4, v5, a1[6], a1[7], v6);
  }

  [*(a1[4] + 32) removeObjectForKey:a1[5]];
}

void sub_195AD8A6C(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMGetXPCDataFromDictionary();
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v5 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
  v11 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v10 fromData:v4 error:0];
  v12 = IMGetXPCStringFromDictionary();
  objc_opt_class();
  v13 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();

  v14 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = v13;
    _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "Received id status {destinations: %@, service: %@, error: %@}", buf, 0x20u);
  }

  v15 = [*(a1[4] + 32) objectForKey:a1[5]];
  v16 = [v15 copy];

  if (v16)
  {
    (v16)[2](v16, v11, v12, a1[6], v13);
  }

  if (a1[5])
  {
    [*(a1[4] + 32) removeObjectForKey:?];
    v17 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1[4] + 32);
      *buf = 138412290;
      v21 = v18;
      _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "transactionID map after REMOVE %@", buf, 0xCu);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void sub_195AD9308(void *a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1[4] + 32) objectForKey:a1[5]];
  v4 = [v3 copy];

  if (v4)
  {
    v5 = [MEMORY[0x1E695DF20] dictionary];
    (v4)[2](v4, v5, a1[6], a1[7], v6);
  }

  [*(a1[4] + 32) removeObjectForKey:a1[5]];
}

void sub_195AD93C8(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMGetXPCDataFromDictionary();
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v5 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
  v11 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v10 fromData:v4 error:0];
  v12 = IMGetXPCStringFromDictionary();
  objc_opt_class();
  v13 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();

  v14 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = v13;
    _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "Received id status {destinations: %@, service: %@, error: %@}", buf, 0x20u);
  }

  v15 = [*(a1[4] + 32) objectForKey:a1[5]];
  v16 = [v15 copy];

  if (v16)
  {
    (v16)[2](v16, v11, v12, a1[6], v13);
  }

  if (a1[5])
  {
    [*(a1[4] + 32) removeObjectForKey:?];
    v17 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1[4] + 32);
      *buf = 138412290;
      v21 = v18;
      _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "transactionID map after REMOVE %@", buf, 0xCu);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void sub_195AD9CA0(void *a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1[4] + 32) objectForKey:a1[5]];
  v4 = [v3 copy];

  if (v4)
  {
    v5 = [MEMORY[0x1E695DF20] dictionary];
    (v4)[2](v4, v5, a1[6], a1[7], v6);
  }

  [*(a1[4] + 32) removeObjectForKey:a1[5]];
}

void sub_195AD9D60(void *a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = IMGetXPCDataFromDictionary();
  v24 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v23 = v9;
  v12 = v3;
  v13 = [v24 setWithObjects:{v4, v5, v6, v7, v8, v23, v10, v11, objc_opt_class(), 0}];
  v14 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v13 fromData:v12 error:0];
  v15 = IMGetXPCStringFromDictionary();
  objc_opt_class();
  v16 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();

  v17 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v27 = v14;
    v28 = 2112;
    v29 = v15;
    v30 = 2112;
    v31 = v16;
    _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "Received id status {destinations: %@, service: %@, error: %@}", buf, 0x20u);
  }

  v18 = [*(a1[4] + 32) objectForKey:a1[5]];
  v19 = [v18 copy];

  if (v19)
  {
    (v19)[2](v19, v14, v15, a1[6], v16);
  }

  if (a1[5])
  {
    [*(a1[4] + 32) removeObjectForKey:?];
    v20 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1[4] + 32);
      *buf = 138412290;
      v27 = v21;
      _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "transactionID map after REMOVE %@", buf, 0xCu);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void sub_195ADA39C(uint64_t a1)
{
  v2 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Query service disconnected", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195ADA474;
  block[3] = &unk_1E743E878;
  block[4] = v3;
  dispatch_async(v4, block);
}

void sub_195ADA474(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_195ADA490(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x19A8BBEF0](*(a1 + 32));
  if (MEMORY[0x19A8BC560](v3) == MEMORY[0x1E69E9E98])
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{xpc_dictionary_get_string(v3, *MEMORY[0x1E69E9E28])}];
    v7 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B3C8CC(v6, v7);
    }

    if (v4)
    {
      v8 = MEMORY[0x1E696ABC0];
      v12 = *MEMORY[0x1E696A278];
      v13[0] = v6;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      v10 = [v8 errorWithDomain:@"IDSIDQueryControllerErrorDomain" code:-1000 userInfo:v9];
      (v4)[2](v4, v10);
    }
  }

  else
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, v3);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

id sub_195ADAD18()
{
  v0 = [IDSXPCDaemonController alloc];
  v1 = +[IDSInternalQueueController sharedInstance];
  v2 = [v1 queue];
  v3 = [(IDSXPCDaemonController *)v0 initSyncControllerWithQueue:v2];

  return v3;
}

void sub_195ADAF28(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195ADE3D8;
  v7[3] = &unk_1E743FC78;
  v8 = v4;
  v9 = v3;
  v5 = v3;
  v6 = v4;
  [IDSXPCDaemonController performDaemonControllerTask:v7];
}

void sub_195ADB844(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195ADB8E8;
  v5[3] = &unk_1E743FC50;
  v6 = *(a1 + 40);
  v4 = [a2 registrationCollaboratorWithErrorHandler:v5];
  [v4 removeTemporaryPhoneAlias:*(a1 + 32) withCompletion:*(a1 + 40)];
}

void sub_195ADB8E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B3CD7C();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_195ADBB78(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195ADBC1C;
  v5[3] = &unk_1E743FC50;
  v6 = *(a1 + 40);
  v4 = [a2 registrationCollaboratorWithErrorHandler:v5];
  [v4 disableTemporaryPhoneAlias:*(a1 + 32) withCompletion:*(a1 + 40)];
}

void sub_195ADBC1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B3CD7C();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_195ADBEAC(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195ADBF50;
  v5[3] = &unk_1E743FC50;
  v6 = *(a1 + 40);
  v4 = [a2 registrationCollaboratorWithErrorHandler:v5];
  [v4 enableTemporaryPhoneAlias:*(a1 + 32) withCompletion:*(a1 + 40)];
}

void sub_195ADBF50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B3CD7C();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_195ADC2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195ADC324(uint64_t result, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v8 = v3;
    v9 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_195ADC3AC;
    v5[3] = &unk_1E7442518;
    v6 = *(result + 32);
    v7 = *(result + 48);
    return [a2 requestSelectedSubscriptionsWithCompletion:v5];
  }

  return result;
}

void sub_195ADC3AC(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v6 = 40;
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;

  *(*(*(a1 + 48) + 8) + 24) = 1;
}

void sub_195ADC750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v10 - 120), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195ADC78C(uint64_t result, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v9 = v3;
    v10 = v4;
    v5 = *(result + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_195ADC818;
    v6[3] = &unk_1E7442518;
    v7 = *(result + 40);
    v8 = *(result + 56);
    return [a2 selectSubscription:v5 withCompletion:v6];
  }

  return result;
}

void sub_195ADC818(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v6 = 40;
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;

  *(*(*(a1 + 48) + 8) + 24) = 1;
}

void sub_195ADCBBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v10 - 120), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195ADCBF8(uint64_t result, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v9 = v3;
    v10 = v4;
    v5 = *(result + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_195ADCC84;
    v6[3] = &unk_1E7442518;
    v7 = *(result + 40);
    v8 = *(result + 56);
    return [a2 unselectSubscription:v5 withCompletion:v6];
  }

  return result;
}

void sub_195ADCC84(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v6 = 40;
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;

  *(*(*(a1 + 48) + 8) + 24) = 1;
}

void sub_195ADD028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v10 - 120), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195ADD064(uint64_t result, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v9 = v3;
    v10 = v4;
    v5 = *(result + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_195ADD0F0;
    v6[3] = &unk_1E7442518;
    v7 = *(result + 40);
    v8 = *(result + 56);
    return [a2 setSelectedSubscriptions:v5 withCompletion:v6];
  }

  return result;
}

void sub_195ADD0F0(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v6 = 40;
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;

  *(*(*(a1 + 48) + 8) + 24) = 1;
}

void sub_195ADD45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195ADD498(uint64_t result, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v9 = v3;
    v10 = v4;
    v5 = *(result + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_195ADD524;
    v6[3] = &unk_1E7442590;
    v7 = *(result + 40);
    v8 = *(result + 56);
    return [a2 removeTemporaryPhoneAlias:v5 withCompletion:v6];
  }

  return result;
}

void sub_195ADD524(void *a1, char a2, void *a3)
{
  v6 = a3;
  *(*(a1[4] + 8) + 24) = a2;
  if ((*(*(a1[4] + 8) + 24) & 1) == 0)
  {
    v7 = v6;
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
    v6 = v7;
  }

  *(*(a1[6] + 8) + 24) = 1;
}

void sub_195ADD888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195ADD8C4(uint64_t result, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v9 = v3;
    v10 = v4;
    v5 = *(result + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_195ADD950;
    v6[3] = &unk_1E7442590;
    v7 = *(result + 40);
    v8 = *(result + 56);
    return [a2 enableTemporaryPhoneAlias:v5 withCompletion:v6];
  }

  return result;
}

void sub_195ADD950(void *a1, char a2, void *a3)
{
  v6 = a3;
  *(*(a1[4] + 8) + 24) = a2;
  if ((*(*(a1[4] + 8) + 24) & 1) == 0)
  {
    v7 = v6;
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
    v6 = v7;
  }

  *(*(a1[6] + 8) + 24) = 1;
}

void sub_195ADDCB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195ADDCF0(uint64_t result, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v9 = v3;
    v10 = v4;
    v5 = *(result + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_195ADDD7C;
    v6[3] = &unk_1E7442590;
    v7 = *(result + 40);
    v8 = *(result + 56);
    return [a2 disableTemporaryPhoneAlias:v5 withCompletion:v6];
  }

  return result;
}

void sub_195ADDD7C(void *a1, char a2, void *a3)
{
  v6 = a3;
  *(*(a1[4] + 8) + 24) = a2;
  if ((*(*(a1[4] + 8) + 24) & 1) == 0)
  {
    v7 = v6;
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
    v6 = v7;
  }

  *(*(a1[6] + 8) + 24) = 1;
}

void sub_195ADE028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195ADE05C(uint64_t result, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v8 = v3;
    v9 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_195ADE0E4;
    v5[3] = &unk_1E7442518;
    v6 = *(result + 32);
    v7 = *(result + 48);
    return [a2 requestUnselectedTemporaryPhoneAliasesWithCompletion:v5];
  }

  return result;
}

void sub_195ADE0E4(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v6 = 40;
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;

  *(*(*(a1 + 48) + 8) + 24) = 1;
}

void sub_195ADE344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195ADE3D8(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195ADE488;
  v5[3] = &unk_1E743FC50;
  v6 = *(a1 + 32);
  v4 = [a2 registrationCollaboratorWithErrorHandler:v5];
  (*(*(a1 + 40) + 16))();
}

void sub_195ADE488(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B3CD7C();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_195ADECB4(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1[5])
  {
    v4 = [MEMORY[0x1E69A5270] GroupSessionKeyValueDelivery];
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_195B3D3F8(a1);
      }

      v6 = *(a1[5] + 16);
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v7 = a1[4];
        v8 = *(*(a1[6] + 8) + 40);
        v11 = 138412546;
        v12 = v7;
        v13 = 2112;
        v14 = v8;
        _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "created keyValueDelivery for session %@: %@", &v11, 0x16u);
      }

      v9 = *(*(a1[6] + 8) + 40);
      v6 = *(a1[5] + 16);
    }

    v6();
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_195ADF1A0(uint64_t a1, void *a2)
{
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195ADF2CC;
  v14[3] = &unk_1E74423C0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v15 = v4;
  v16 = v5;
  v6 = [a2 groupSessionKeyValueDeliveryProviderCollaboratorWithErrorHandler:v14];
  v7 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195ADF354;
  v10[3] = &unk_1E74425E0;
  v11 = v7;
  v8 = *(a1 + 48);
  v9 = *(a1 + 40);
  v12 = v8;
  v13 = v9;
  [v6 keyValueDeliveryForSessionID:v11 completionHandler:v10];
}

void sub_195ADF2CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A5270] GroupSessionKeyValueDelivery];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B3D464(a1);
  }

  v5 = *(*(a1 + 40) + 16);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void sub_195ADF354(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E69A5270] GroupSessionKeyValueDelivery];
  v8 = v7;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 32);
      *buf = 138412802;
      v28 = v23;
      v29 = 2112;
      v30 = v6;
      v31 = 2112;
      v32 = v5;
      _os_log_error_impl(&dword_1959FF000, v8, OS_LOG_TYPE_ERROR, "failed to get keyValueDelivery for session %@: error: %@ keyValueDelivery: %@", buf, 0x20u);
    }

    v11 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A278];
    v26 = @"NULL keyValueDelivery";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v13 = [v11 errorWithDomain:@"IDSXPCConnectionErrorDomain" code:-3000 userInfo:v12];

    [*(a1 + 40) failWithError:v13];
    ids_monotonic_time();
    v14 = *(a1 + 48);
    if (v15 - *(v14 + 24) <= 5.0)
    {
      v17 = [MEMORY[0x1E69A5270] GroupSessionKeyValueDelivery];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 32);
        *buf = 138412290;
        v28 = v18;
        _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "retry later setup XPC for session %@", buf, 0xCu);
      }

      v19 = dispatch_time(0, 500000000);
      v20 = +[IDSInternalQueueController sharedInstance];
      v21 = [v20 queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_195ADF684;
      block[3] = &unk_1E743E878;
      block[4] = *(a1 + 48);
      dispatch_after(v19, v21, block);
    }

    else
    {
      v16 = *(v14 + 16);
      if (v16)
      {
        (*(v16 + 16))(v16, v13);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138412546;
      v28 = v9;
      v29 = 2112;
      v30 = v5;
      _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "for session %@, keyValueDelivery: %@", buf, 0x16u);
    }

    [*(a1 + 40) fulfillWithRemoteObject:v5];
    v10 = *(*(a1 + 48) + 16);
    if (v10)
    {
      (*(v10 + 16))(v10, 0);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void sub_195ADF754(uint64_t a1)
{
  v4 = [[IDSGroupSessionKeyValueDeliveryHandlerProxy alloc] initWithHandler:*(a1 + 32)];
  v2 = *(*(a1 + 40) + 32);
  v3 = [(IDSGroupSessionKeyValueDeliveryHandlerProxy *)v4 handlerUUID];
  [v2 addDeliveryHandler:v4 uuid:v3];

  [*(*(a1 + 40) + 40) addObject:v4];
}

void sub_195ADF8B0(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(*(a1 + 32) + 40);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v16 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v15 + 1) + 8 * v6);
      v8 = [v7 handler];
      v9 = *(a1 + 40);

      if (v8 == v9)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v15 objects:v21 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v10 = v7;

    if (!v10)
    {
      goto LABEL_12;
    }

    v11 = *(*(a1 + 32) + 32);
    v12 = [v10 handlerUUID];
    [v11 removeDeliveryHandler:v12];

    [*(*(a1 + 32) + 40) removeObject:v10];
  }

  else
  {
LABEL_9:

LABEL_12:
    v10 = [MEMORY[0x1E69A5270] GroupSessionKeyValueDelivery];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      *buf = 138412290;
      v20 = v13;
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "removeDeliveryHandler: could not find proxy for handler %@", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_195ADFB38(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A5270] GroupSessionKeyValueDelivery];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    v8[0] = 67109376;
    v8[1] = v3;
    v9 = 2048;
    v10 = v4;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "requestDataForKey: getting key %d for participant %llu", v8, 0x12u);
  }

  v5 = *(*(a1 + 32) + 32);
  if (v5)
  {
    [v5 requestDataForKey:*(a1 + 48) participantID:*(a1 + 40)];
  }

  else
  {
    v6 = [MEMORY[0x1E69A5270] GroupSessionKeyValueDelivery];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "requestDataForKey: xpc not ready", v8, 2u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_195ADFD94(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A5270] GroupSessionKeyValueDelivery];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    *buf = 138412802;
    v24 = v4;
    v25 = 1024;
    v26 = v3;
    v27 = 2112;
    v28 = v5;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "sendData: sending data: %@ with key: %d for capability: %@", buf, 0x1Cu);
  }

  v6 = *(*(a1 + 48) + 32);
  if (!v6)
  {
    v7 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A278];
    v22 = @"XPC doesn't set up";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v9 = [v7 errorWithDomain:@"IDSXPCConnectionErrorDomain" code:-3000 userInfo:v8];

    v10 = *(a1 + 56);
    if (v10)
    {
      (*(v10 + 16))(v10, v9);
    }

    v6 = *(*(a1 + 48) + 32);
  }

  v11 = *(a1 + 64);
  v12 = *(a1 + 68);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195ADFFB8;
  v16[3] = &unk_1E7442658;
  v17 = v13;
  v20 = *(a1 + 64);
  v18 = *(a1 + 40);
  v19 = *(a1 + 56);
  [v6 sendData:v17 forKey:v11 encryption:v12 capability:v14 withCompletion:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void sub_195ADFFB8(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E69A5270] GroupSessionKeyValueDelivery];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 56);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v10 = 138412802;
    v11 = v6;
    v12 = 1024;
    v13 = v5;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "sendData: finished sending data: %@ with key: %d for capability:%@", &v10, 0x1Cu);
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195AE0190(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 56);
  v3 = *(a1 + 48);
  return MEMORY[0x1EEE66B58](*(*(a1 + 32) + 32), sel_test_receiveData_forKey_fromParticipant_);
}

id sub_195AE0844()
{
  if (qword_1EAEDC188 != -1)
  {
    sub_195B3D4D0();
  }

  v1 = qword_1EAEDC180;

  return v1;
}

void sub_195AE0888()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = qword_1EAEDC180;
  qword_1EAEDC180 = v1;

  if (!qword_1EAEDC180)
  {
    v6 = [MEMORY[0x1E696AAE8] mainBundle];
    v3 = [v6 executablePath];
    v4 = [v3 lastPathComponent];
    v5 = qword_1EAEDC180;
    qword_1EAEDC180 = v4;
  }
}

uint64_t IDSLog(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = sub_195AE0844();
  v6 = _IDSLog();

  return v6;
}

uint64_t IDSWarn(void *a1)
{
  v1 = a1;
  v2 = sub_195AE0844();
  v3 = _IDSWarn();

  return v3;
}

uint64_t sub_195AE0A38()
{
  v0 = os_log_create("com.apple.Transport", "IDSService");
  v1 = qword_1ED5DDED8;
  qword_1ED5DDED8 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_195AE0AC0()
{
  v0 = os_log_create("com.apple.Transport", "QRAllocator");
  v1 = qword_1EAEDC190;
  qword_1EAEDC190 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_195AE0B04()
{
  v0 = os_log_create("com.apple.Transport", "IDSConnection");
  v1 = qword_1ED5DDD58;
  qword_1ED5DDD58 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_195AE0B8C()
{
  v0 = os_log_create("com.apple.Transport", "IDSDeviceConnection");
  v1 = qword_1EAEDC1A0;
  qword_1EAEDC1A0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_195AE0C14()
{
  v0 = os_log_create("com.apple.Transport", "IDSDataChannels");
  v1 = qword_1EAEDBFC8;
  qword_1EAEDBFC8 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_195AE0C9C()
{
  v0 = os_log_create("com.apple.Transport", "IDSLocalSetup");
  v1 = qword_1EAEDC1B0;
  qword_1EAEDC1B0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_195AE0D24()
{
  v0 = os_log_create("com.apple.Transport", "IDSReportSpam");
  v1 = qword_1EAEDBF88;
  qword_1EAEDBF88 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_195AE0DAC()
{
  v0 = os_log_create("com.apple.Transport", "NRPairing");
  v1 = qword_1EAEDBF70;
  qword_1EAEDBF70 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_195AE0E34()
{
  v0 = os_log_create("com.apple.IDS", "");
  v1 = qword_1EAEDC1C0;
  qword_1EAEDC1C0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_195AE0EBC()
{
  v0 = os_log_create("com.apple.IDS", "transactionLog");
  v1 = qword_1EAEDC1D0;
  qword_1EAEDC1D0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_195AE0F00()
{
  v0 = os_log_create("com.apple.IDS", "IDSService");
  v1 = qword_1EAEDC078;
  qword_1EAEDC078 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_195AE0F44()
{
  v0 = os_log_create("com.apple.IDS", "IDSConnection");
  v1 = qword_1ED5DDF98;
  qword_1ED5DDF98 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_195AE0FCC()
{
  v0 = os_log_create("com.apple.IDS", "IDSConnection-oversize");
  v1 = qword_1ED5DDD68;
  qword_1ED5DDD68 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_195AE1054()
{
  v0 = os_log_create("com.apple.IDS", "IDSDirectMessagingConnection");
  v1 = qword_1ED5DDF40;
  qword_1ED5DDF40 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_195AE10DC()
{
  v0 = os_log_create("com.apple.IDS", "continuity");
  v1 = qword_1EAEDC1E0;
  qword_1EAEDC1E0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_195AE1164()
{
  v0 = os_log_create("com.apple.IDS", "IDSSession");
  v1 = qword_1EAEDC1F0;
  qword_1EAEDC1F0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_195AE11EC()
{
  v0 = os_log_create("com.apple.IDS", "CFS");
  v1 = qword_1EAEDC1F8;
  qword_1EAEDC1F8 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_195AE1274()
{
  v0 = os_log_create("com.apple.IDS", "_IDSGroupSession");
  v1 = qword_1EAEDBF20;
  qword_1EAEDBF20 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_195AE12FC()
{
  v0 = os_log_create("com.apple.IDS", "_IDSGroupSession-oversize");
  v1 = qword_1EAEDBF10;
  qword_1EAEDBF10 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_195AE1384()
{
  v0 = os_log_create("com.apple.IDS", "DaemonProxy");
  v1 = qword_1EAEDC208;
  qword_1EAEDC208 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_195AE13C8()
{
  v0 = os_log_create("com.apple.IDS", "GUIDTRACE");
  v1 = qword_1ED5DDEE8;
  qword_1ED5DDEE8 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_195AE1450()
{
  v0 = os_log_create("com.apple.IDS", "IDSDevice");
  v1 = qword_1EAEDC218;
  qword_1EAEDC218 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_195AE14D8()
{
  v0 = os_log_create("com.apple.IDS", "IDSDeviceConnection");
  v1 = qword_1EAEDC228;
  qword_1EAEDC228 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_195AE1560()
{
  v0 = os_log_create("com.apple.IDS", "IDSDataChannels");
  v1 = qword_1EAEDBFC0;
  qword_1EAEDBFC0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_195AE15E8()
{
  v0 = os_log_create("com.apple.IDS", "IDSDataChannels-oversize");
  v1 = qword_1EAEDBF98;
  qword_1EAEDBF98 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_195AE1670()
{
  v0 = os_log_create("com.apple.IDS", "IDSRealTimeEncryptionProxy");
  v1 = qword_1EAEDC238;
  qword_1EAEDC238 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_195AE16F8()
{
  v0 = os_log_create("com.apple.IDS", "IDSiCloudSignInHack");
  v1 = qword_1EAEDC248;
  qword_1EAEDC248 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t sub_195AE1780()
{
  v0 = os_log_create("com.apple.IDS", "_IDSSession");
  v1 = qword_1EAEDC258;
  qword_1EAEDC258 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_195AE2D78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_195AE2DAC(uint64_t a1)
{
  v2 = [MEMORY[0x1E69A5270] xpc];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "IDSXPCConnection interrupted", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _cleanupAllPendingTransactions];
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

void sub_195AE2E50(uint64_t a1)
{
  v2 = [MEMORY[0x1E69A5270] xpc];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "IDSXPCConnection invalidated", v8, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _cleanupAllPendingTransactions];
  }

  v5 = [v4 clientInvalidationHandler];

  if (v5)
  {
    v6 = [v4 clientInvalidationHandler];
    v6[2]();
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))();
  }
}

id sub_195AE3188(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);
  return objc_opt_self();
}

id sub_195AE32C4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);
  return objc_opt_self();
}

id sub_195AE3454(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);
  return objc_opt_self();
}

uint64_t sub_195AE3938(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);

  return MEMORY[0x1EEE74158](v2, 0);
}

void sub_195AE4298(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A5270] xpc];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    *buf = 138543874;
    v20 = v3;
    v21 = 2114;
    v22 = v4;
    v23 = 2114;
    v24 = v5;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "xpc message timed out -- calling error {selector: %{public}@, uuid: %{public}@, timeout: %{public}@}", buf, 0x20u);
  }

  v6 = [*(a1 + 56) connection];
  v7 = [v6 pendingTransactions];
  v8 = [v7 objectForKeyedSubscript:*(a1 + 40)];

  if (v8)
  {
    v9 = [*(a1 + 56) connection];
    v10 = [v9 pendingTransactions];
    [v10 removeObjectForKey:*(a1 + 40)];

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Timed-out expecting response for @selector(%@)", *(a1 + 32)];
    v12 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A278];
    v18 = v11;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v14 = [v12 errorWithDomain:@"IDSXPCConnectionErrorDomain" code:-1000 userInfo:v13];

    v15 = [*(a1 + 56) errorHandler];
    (v15)[2](v15, v14);

    v8[2](v8);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_195AE4494(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A5270] xpc];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Clearing transaction timeout timer {selector: %{public}@, uuid: %{public}@}", &v6, 0x16u);
  }

  dispatch_source_cancel(*(a1 + 48));
  v5 = *MEMORY[0x1E69E9840];
}

void sub_195AE4558(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 connection];
  v6 = [v5 pendingTransactions];
  v8 = [v6 objectForKeyedSubscript:*(a1 + 40)];

  if (v8)
  {
    v8[2]();
  }

  v7 = [*(a1 + 32) errorHandler];
  (v7)[2](v7, v4);
}

void sub_195AE461C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) errorHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) errorHandler];
    (v4)[2](v4, v5);
  }
}

void sub_195AE4C30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_195AE4C70(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  state64 = 0;
  notify_get_state(a2, &state64);
  [WeakRetained notifyDelegatesAboutNewState:state64 token:a2];
}

void sub_195AE5030(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 first];
  if ([v3 isEqual:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v4];
  }
}

void sub_195AE6E9C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([v5 count])
  {
    v6 = [*(a1 + 32) _cacheForService:v8];
    v7 = [v6 mutableCopy];

    if (v7)
    {
      [v7 addEntriesFromDictionary:v5];
    }

    else
    {
      v7 = [v5 mutableCopy];
    }

    [*(*(a1 + 32) + 24) setObject:v7 forKey:v8];
  }
}

void sub_195AE7034(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(*(a1 + 32) + 24);

  if (WeakRetained == v3)
  {
    v4 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 0;
      _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "Purging idStatusCache", v7, 2u);
    }

    v5 = *(a1 + 32);
    v6 = *(v5 + 24);
    *(v5 + 24) = 0;
  }
}

void sub_195AE7510(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7 = 138412546;
      v8 = v3;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "Notifying delegate %@ about KT peer verification results for service: %@", &v7, 0x16u);
    }

    [v3 idsKTVerifierResultsUpdatedForDestinations:*(a1 + 40) service:*(a1 + 32)];
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_195AE7CE8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_autoreleasePoolPush();
  v14 = *(a1 + 32);
  if (v14[3])
  {
    [v14 _updateCacheWithDictionary:v9 service:*(a1 + 40)];
  }

  v15 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v28 = v10;
    v29 = 2112;
    v30 = v9;
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "Received results for service: %@  updates %@", buf, 0x16u);
  }

  v16 = [*(a1 + 32) _delegateMapForListenerID:*(a1 + 48) service:v10];
  v17 = *(a1 + 32);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_195AE7F2C;
  v25[3] = &unk_1E743FD48;
  v18 = v9;
  v26 = v18;
  [v17 _callDelegatesWithBlock:v25 delegateMap:v16];
  if (*(a1 + 56))
  {
    v19 = objc_alloc(MEMORY[0x1E69956E8]);
    v20 = v19;
    if (v12)
    {
      v21 = [v19 initWithError:v12];
    }

    else
    {
      v22 = [v18 objectForKey:v10];
      v23 = sub_195AE80D4(v22);
      v21 = [v20 initWithSuccess:v23];
    }

    (*(*(a1 + 56) + 16))();
  }

  objc_autoreleasePoolPop(v13);
  v24 = *MEMORY[0x1E69E9840];
}

void sub_195AE7F2C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_195AE7FD4;
    v5[3] = &unk_1E743FD20;
    v6 = v3;
    [v4 enumerateKeysAndObjectsUsingBlock:v5];
  }
}

void sub_195AE7FD4(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Notifying delegate %@ about ID status update", &v12, 0xCu);
  }

  v9 = *(a1 + 32);
  v10 = sub_195AE80D4(v5);

  [v9 idStatusUpdatedForDestinations:v10 service:v6];
  v11 = *MEMORY[0x1E69E9840];
}

id sub_195AE80D4(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v10 = [v3 objectForKeyedSubscript:{v8, v15}];
        if (isKindOfClass)
        {
          v11 = [v8 prefixedURI];
          [v2 setObject:v10 forKeyedSubscript:v11];
        }

        else
        {
          [v2 setObject:v10 forKeyedSubscript:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v12 = [v2 copy];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

void sub_195AE8278(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (*(a1 + 48) == 1)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v13 = *(*(a1 + 32) + 56);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195AE83C8;
    block[3] = &unk_1E74405D0;
    v19 = *(a1 + 40);
    v15 = v9;
    v16 = v10;
    v17 = v11;
    v18 = v12;
    dispatch_async(v13, block);
  }
}

void sub_195AE8690(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_195AE8764;
    v5[3] = &unk_1E743F110;
    v4 = *(a1 + 32);
    v7 = *(a1 + 40);
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

void sub_195AE889C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v6 = v3;
    if ([v3 state])
    {
      (*(v4 + 16))(v4, MEMORY[0x1E695E0F8]);
    }

    else
    {
      v5 = [v6 value];
      (*(v4 + 16))(v4, v5);
    }

    v3 = v6;
  }
}

void sub_195AE8B00(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1[6])
  {
    if (![v3 state])
    {
      v5 = [v4 value];
      v6 = [v5 objectForKey:a1[4]];

      if (v6)
      {
        [v6 integerValue];
      }

      else
      {
        v7 = +[IDSLogging IDQuery];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = a1[4];
          v10 = a1[5];
          v11 = IDSLoggableDescriptionForHandleOnService();
          v12 = [v4 value];
          v13 = 138412546;
          v14 = v11;
          v15 = 2112;
          v16 = v12;
          _os_log_error_impl(&dword_1959FF000, v7, OS_LOG_TYPE_ERROR, "Destination %@ not found in id query results %@. Verify destination is a properly formed IDS destination (and not just the handle string).", &v13, 0x16u);
        }
      }
    }

    (*(a1[6] + 16))();
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_195AE8DE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40))
  {
    if (![v3 state])
    {
      v5 = [v4 value];
      v6 = [v5 objectForKey:*(a1 + 32)];

      if (v6)
      {
        [v6 integerValue];
      }

      else
      {
        v7 = +[IDSLogging IDQuery];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_195B3F534((a1 + 32), v4, v7);
        }
      }
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_195AE8FC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v6 = v3;
    if ([v3 state])
    {
      (*(v4 + 16))(v4, MEMORY[0x1E695E0F8]);
    }

    else
    {
      v5 = [v6 value];
      (*(v4 + 16))(v4, v5);
    }

    v3 = v6;
  }
}

void sub_195AE91B4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [a2 objectForKey:*(a1 + 32)];
    (*(v2 + 16))(v2, [v3 integerValue]);
  }
}

void sub_195AE945C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v59 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v34 = a3;
  v33 = a4;
  v30 = a5;
  v32 = objc_autoreleasePoolPush();
  v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v47 objects:v58 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v48;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v48 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v47 + 1) + 8 * i);
        objc_msgSend(v9, "appendFormat:", @"\n    %@ =     (\n"), v14;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v15 = [obj objectForKeyedSubscript:v14];
        v16 = [v15 countByEnumeratingWithState:&v43 objects:v57 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v44;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v44 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = [*(*(&v43 + 1) + 8 * j) debugDescription];
              [v9 appendFormat:@"        %@\n", v20];
            }

            v17 = [v15 countByEnumeratingWithState:&v43 objects:v57 count:16];
          }

          while (v17);
        }

        [v9 appendString:@"   ;\n"]);
      }

      v11 = [obj countByEnumeratingWithState:&v47 objects:v58 count:16];
    }

    while (v11);
  }

  v21 = +[IDSLogging IDSConnection_oversize];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v52 = v34;
    v53 = 2112;
    v54 = v30;
    v55 = 2112;
    v56 = v9;
    _os_log_impl(&dword_1959FF000, v21, OS_LOG_TYPE_DEFAULT, "Received results for service: %@ error: %@ updates {%@}", buf, 0x20u);
  }

  v22 = [*(a1 + 32) _delegateMapForListenerID:*(a1 + 40) service:v34];
  v23 = *(a1 + 32);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = sub_195AE9874;
  v41[3] = &unk_1E743FD48;
  v24 = obj;
  v42 = v24;
  [v23 _callDelegatesWithBlock:v41 delegateMap:v22];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = sub_195AE9A1C;
  v36[3] = &unk_1E74429F8;
  v39 = *(a1 + 56);
  v25 = v24;
  v37 = v25;
  v40 = *(a1 + 64);
  v26 = v30;
  v38 = v26;
  v27 = MEMORY[0x19A8BBEF0](v36);
  v28 = v27;
  if (*(a1 + 72) == 1)
  {
    v27[2](v27);
  }

  else
  {
    dispatch_async(*(a1 + 48), v27);
  }

  objc_autoreleasePoolPop(v32);
  v29 = *MEMORY[0x1E69E9840];
}

void sub_195AE9874(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_195AE991C;
    v5[3] = &unk_1E743FD20;
    v6 = v3;
    [v4 enumerateKeysAndObjectsUsingBlock:v5];
  }
}

void sub_195AE991C(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Notifying delegate %@ about ID status update", &v12, 0xCu);
  }

  v9 = *(a1 + 32);
  v10 = sub_195AE80D4(v5);

  [v9 idStatusUpdatedForDestinations:v10 service:v6];
  v11 = *MEMORY[0x1E69E9840];
}

void sub_195AE9A1C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v6 = sub_195AE80D4(*(a1 + 32));
    (*(v2 + 16))(v2);
  }

  else
  {
    v3 = *(a1 + 56);
    if (!v3)
    {
      return;
    }

    v4 = sub_195AE80D4(*(a1 + 32));
    v5 = *(a1 + 40);
    v6 = v4;
    (*(v3 + 16))(v3);
  }
}

void sub_195AE9AC8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (*(a1 + 48) == 1)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v13 = *(*(a1 + 32) + 56);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195AE9C18;
    block[3] = &unk_1E74405D0;
    v19 = *(a1 + 40);
    v15 = v9;
    v16 = v10;
    v17 = v11;
    v18 = v12;
    dispatch_async(v13, block);
  }
}

void sub_195AE9E40(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = *(v12 + 56);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_195AE9F80;
  v17[3] = &unk_1E7442A70;
  v18 = v9;
  v19 = v8;
  v20 = v12;
  v21 = v11;
  v25 = *(a1 + 64);
  v22 = *(a1 + 48);
  v23 = v10;
  v24 = *(a1 + 56);
  v14 = v10;
  v15 = v8;
  v16 = v9;
  dispatch_async(v13, v17);
}

void sub_195AE9F80(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = +[IDSLogging IDSConnection_oversize];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    *buf = 138412546;
    v20 = v4;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "Received results for service: %@  updates {%@}", buf, 0x16u);
  }

  v6 = [*(a1 + 48) _delegateMapForListenerID:*(a1 + 56) service:*(a1 + 32)];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195AEA1C0;
  v16[3] = &unk_1E74428E0;
  v7 = *(a1 + 48);
  v17 = *(a1 + 40);
  v18 = *(a1 + 32);
  [v7 _callDelegatesWithBlock:v16 delegateMap:v6];
  if (*(a1 + 88))
  {
    if ([*(a1 + 64) waitForReply])
    {
      v8 = *(a1 + 88);
      v9 = sub_195AE80D4(*(a1 + 40));
      (*(v8 + 16))(v8, v9, *(a1 + 72));
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_195AEA3B8;
      block[3] = &unk_1E743F1D8;
      v10 = *(a1 + 80);
      v15 = *(a1 + 88);
      v13 = *(a1 + 40);
      v14 = *(a1 + 72);
      dispatch_async(v10, block);

      v9 = v15;
    }
  }

  objc_autoreleasePoolPop(v2);
  v11 = *MEMORY[0x1E69E9840];
}

void sub_195AEA1C0(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_195AEA318;
    v9[3] = &unk_1E7442A48;
    v6 = v4;
    v10 = v6;
    [v5 enumerateKeysAndObjectsUsingBlock:v9];
    v7 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Notifying delegate %@ about ID status update", buf, 0xCu);
    }

    [v3 idStatusUpdatedForDestinations:v6 service:*(a1 + 40)];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_195AEA318(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = a2;
  v9 = [v5 numberWithInteger:{objc_msgSend(a3, "status")}];
  v7 = *(a1 + 32);
  v8 = [v6 prefixedURI];

  [v7 setObject:v9 forKeyedSubscript:v8];
}

void sub_195AEA3B8(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = sub_195AE80D4(*(a1 + 32));
  (*(v2 + 16))(v2, v3, *(a1 + 40));
}

void sub_195AEA5F8(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 1024;
    v12 = [v5 count];
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Received cache for service %@, %d count", &v9, 0x12u);
  }

  [*(a1 + 32) _updateCacheWithDictionary:v5 service:*(a1 + 40)];
  v8 = *MEMORY[0x1E69E9840];
}

void sub_195AEAF50()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A53068];
  v1 = qword_1ED5DDE78;
  qword_1ED5DDE78 = v0;

  v2 = qword_1ED5DDE78;
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v4, v5, objc_opt_class(), 0}];
  [v2 setClasses:v6 forSelector:sel_copyOpportunisticCacheWithBlock_ argumentIndex:0 ofReply:1];
}

void sub_195AEB1E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_195AEB20C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sendStatsRequestViaDaemon];
}

void sub_195AEC124(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v113 = *MEMORY[0x1E69E9840];
  v75 = a6;
  v74 = a7;
  if (!a1)
  {
    goto LABEL_100;
  }

  ids_monotonic_time();
  v14 = v13;
  v76 = a1;
  v70 = a3;
  sub_195B4061C(a1);
  if ([v75 RATType])
  {
    v15 = [v75 RATType];
    if (a3 >= 4 && v15 != 9 && *a2 == -272716322)
    {
      if (*(a1[1] + 8) == 1)
      {
        v16 = +[IDSLogging IDSDataChannels];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "received baseband notification packet.", buf, 2u);
        }
      }

      v101 = 0;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      *buf = 0u;
      [a1 handleIncomingDatagram:a2 datagramSize:a3 datagramInfo:a4 datagramOptions:{0, buf}];
      goto LABEL_100;
    }
  }

  if ([v75 connectionType] != 1)
  {
    bzero(&buf[8], 0x518uLL);
    *buf = a2;
    *&v95 = a3;
    v103 = a5;
    if ([v74 isQUICPod] && objc_msgSend(v75, "connectionType") != 1)
    {
      v18 = StunUtilProcessIncomingChannelDataWithoutChannelHeader();
    }

    else
    {
      v18 = StunUtilProcessIncomingChannelData();
    }

    if (v18)
    {
      if ([v75 isQualityMetadataEnabled])
      {
        StunUtilSkipQualityMetadata();
      }

      if (v106)
      {
        v19 = [v75 localRelayLinkID];
        v20 = v107 | (v19 << 16);
        v21 = *(a1[1] + 4440);
        v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v20];
        v23 = [v21 objectForKeyedSubscript:v22];

        if (v23)
        {
          a4 = [v23 unsignedShortValue];
        }

        else
        {
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v26 = [v76 connectedLinks];
          v27 = [v26 countByEnumeratingWithState:&v79 objects:v93 count:16];
          if (v27)
          {
            v28 = *v80;
            while (2)
            {
              for (i = 0; i != v27; ++i)
              {
                if (*v80 != v28)
                {
                  objc_enumerationMutation(v26);
                }

                v7 = *(*(&v79 + 1) + 8 * i);
                v30 = [v7 localRelayLinkID];
                if (([v7 remoteRelayLinkID] | (v30 << 16)) == v20)
                {
                  v23 = 0;
                  v31 = [MEMORY[0x1E696AD98] numberWithChar:{objc_msgSend(v7, "linkID")}];
                  v32 = *(v76[1] + 4440);
                  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v20];
                  [v32 setObject:v31 forKeyedSubscript:v33];

                  a4 = [v7 linkID];
                  goto LABEL_38;
                }
              }

              v27 = [v26 countByEnumeratingWithState:&v79 objects:v93 count:16];
              if (v27)
              {
                continue;
              }

              break;
            }

            v23 = 0;
          }

LABEL_38:
        }

        a1 = v76;
      }

      v73 = [a1 _linkContextWithID:a4];
      v34 = a4;
      if ([v73 isVirtualRelayLink])
      {
        v34 = [v73 delegatedLinkID];
      }

      [v73 setTotalPacketsReceivedOnLink:{objc_msgSend(v73, "totalPacketsReceivedOnLink") + 1}];
      [v73 setTotalBytesReceivedOnLink:{objc_msgSend(v73, "totalBytesReceivedOnLink") + v70}];
      if (v73 != v75)
      {
        [v75 setTotalPacketsReceivedOnLink:{objc_msgSend(v75, "totalPacketsReceivedOnLink") + 1}];
        [v75 setTotalBytesReceivedOnLink:{objc_msgSend(v75, "totalBytesReceivedOnLink") + v70}];
      }

      sub_195B3F5FC(a1, v70, v14, 0, v73, v74);
      v36 = v104;
      if (v104 <= 1)
      {
        v36 = 1;
      }

      if (v36 >= 1)
      {
        v37 = 0;
        v71 = 96 * v36;
        v72 = a4;
        v68 = v34;
        *&v35 = 136315138;
        v67 = v35;
        do
        {
          v38 = &buf[v37];
          v92 = 0;
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v85 = 0u;
          v39 = v102;
          v40 = v103;
          v41 = *&v108[v37];
          if (v41)
          {
            LODWORD(v85) = 1;
            *(&v85 + 1) = [v76 _translateParticipantID:*(v38 + 61) forLinkID:v68];
            if (!*(&v85 + 1))
            {
              v42 = [MEMORY[0x1E69A60F0] sharedInstance];
              v43 = [v42 isInternalInstall];

              if ((v43 & 1) == 0)
              {
                break;
              }

              v44 = +[IDSLogging IDSDataChannels];
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                sub_195AECB68(a2, v70);
                *v83 = v67;
                v84 = byte_1EAEDC270;
                _os_log_error_impl(&dword_1959FF000, v44, OS_LOG_TYPE_ERROR, "Unable to translate participant ID for this datagram: [%s]", v83, 0xCu);
              }
            }
          }

          if ((v41 & 0x10) != 0)
          {
            LODWORD(v85) = v85 | 0x10;
            LOWORD(v86) = *&v105[v37 + 42];
            if ((v41 & 8) == 0)
            {
LABEL_56:
              if ((v41 & 2) == 0)
              {
                goto LABEL_62;
              }

              goto LABEL_60;
            }
          }

          else if ((v41 & 8) == 0)
          {
            goto LABEL_56;
          }

          LODWORD(v85) = v85 | 8;
          BYTE2(v86) = v105[v37 + 40];
          if ((v41 & 2) == 0)
          {
            goto LABEL_62;
          }

LABEL_60:
          LODWORD(v85) = v85 | 2;
          v45 = *&v105[v37 + 4];
          BYTE3(v86) = *&v105[v37 + 4];
          if (v45 >= 1)
          {
            memcpy(&v86 + 4, v38 + 464, 2 * v45);
          }

LABEL_62:
          if ((v41 & 0x20) != 0)
          {
            LODWORD(v85) = v85 | 0x20;
            BYTE12(v87) = v105[v37 + 44];
          }

          if ((v41 & 0x40) != 0)
          {
            LODWORD(v85) = v85 | 0x40;
            HIWORD(v87) = *&v105[v37 + 48];
            WORD4(v88) = *&v105[v37 + 58];
            *&v88 = *&v105[v37 + 50];
          }

          v46 = v109;
          if (v109 > 0.0)
          {
            *&v89 = v109;
            if ((v41 & 4) == 0)
            {
LABEL_68:
              if ((v41 & 0x80) == 0)
              {
                goto LABEL_69;
              }

              goto LABEL_83;
            }
          }

          else if ((v41 & 4) == 0)
          {
            goto LABEL_68;
          }

          LODWORD(v85) = v85 | 4;
          if ((v41 & 0x80) == 0)
          {
LABEL_69:
            if ((v41 & 0x100) == 0)
            {
              goto LABEL_70;
            }

            goto LABEL_84;
          }

LABEL_83:
          LODWORD(v85) = v85 | 0x80;
          if ((v41 & 0x100) == 0)
          {
LABEL_70:
            if ((v41 & 0x10000) == 0)
            {
              goto LABEL_71;
            }

            goto LABEL_85;
          }

LABEL_84:
          LODWORD(v85) = v85 | 0x100;
          if ((v41 & 0x10000) == 0)
          {
LABEL_71:
            if ((v41 & 0x20000) == 0)
            {
              goto LABEL_73;
            }

LABEL_72:
            LODWORD(v85) = v85 | 0x20000;
            BYTE1(v92) = 1;
            goto LABEL_73;
          }

LABEL_85:
          LODWORD(v85) = v85 | 0x10000;
          LOBYTE(v92) = 1;
          if ((v41 & 0x20000) != 0)
          {
            goto LABEL_72;
          }

LABEL_73:
          v47 = v39 << 16;
          v48 = v40 << 32;
          if ((v41 & 0x400) != 0)
          {
            if ([v74 isQUICPod])
            {
              v52 = +[IDSLogging IDSDataChannels];
              if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
              {
                sub_195B3FA0C(&v77, v78, v52);
              }
            }

            LODWORD(v85) = v85 | 0x400;
            LOBYTE(v90) = 1;
            v53 = *(v38 + 56);
            v54 = *&v105[v37];
            v55 = [v73 hbhDecryptionkey];
            v56 = IDSHBHDecryptDataWithKey();

            if (!v56)
            {
              v58 = +[IDSLogging IDSDataChannels];
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
                sub_195B3FA4C(v58, v59, v60, v61, v62, v63, v64, v65);
              }

              break;
            }

            v57 = v56;
            v34 &= 0xFFFFFFFFFFFF0000;
            [v76 handleIncomingDatagram:objc_msgSend(v56 datagramSize:"bytes") datagramInfo:objc_msgSend(v56 datagramOptions:{"length"), v47 | v72 | v48, v34, &v85}];
          }

          else
          {
            v49 = v76;
            if (v112 == 1)
            {
              LODWORD(v85) = v85 | 0x400;
              LOBYTE(v90) = 1;
              v50 = v76[1];
              if (v50)
              {
                if (*(v50 + 8) == 1)
                {
                  v51 = +[IDSLogging IDSDataChannels];
                  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                  {
                    *v83 = 0;
                    _os_log_impl(&dword_1959FF000, v51, OS_LOG_TYPE_DEFAULT, "received useExplicitQPod packet over relay link.", v83, 2u);
                  }

                  v49 = v76;
                }
              }
            }

            v7 &= 0xFFFFFFFFFFFF0000;
            [v49 handleIncomingDatagram:*(v38 + 56) datagramSize:*&v105[v37] datagramInfo:v47 | v72 | v48 datagramOptions:{v7, &v85, v46, v67}];
          }

          v37 += 96;
        }

        while (v71 != v37);
      }

      v25 = v73;
    }

    else
    {
      v24 = +[IDSLogging IDSDataChannels];
      sub_195B3FAF4(v24, &v85);
      v25 = v85;
    }

    goto LABEL_100;
  }

  v101 = 0;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  *buf = 0u;
  if ([v74 isQUICPod])
  {
    LOBYTE(v99) = 1;
    *buf = 1024;
    v17 = a1[1];
    if (v17)
    {
      if (*(v17 + 8) == 1)
      {
        sub_195B3FA84();
      }
    }
  }

  sub_195B3F5FC(a1, a3, v14, 0, v75, v74);
  [a1 handleIncomingDatagram:a2 datagramSize:a3 datagramInfo:a4 | (a5 << 32) datagramOptions:{0, buf}];
LABEL_100:

  v66 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195AECB68(uint64_t result, uint64_t a2)
{
  if (a2 >= 2000)
  {
    v2 = 2000;
  }

  else
  {
    v2 = a2;
  }

  if (a2 < 1)
  {
    v14 = 0;
    goto LABEL_19;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(result + v3);
    v6 = (v5 >> 4) + 87;
    if (v5 < 0xA0)
    {
      LOBYTE(v6) = (*(result + v3) >> 4) | 0x30;
    }

    v7 = v5 & 0xF;
    v8 = v5 & 0xF | 0x30;
    v9 = (v5 & 0xF) + 87;
    if (v7 >= 0xA)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }

    v11 = &byte_1EAEDC270[v4];
    *v11 = v6;
    v12 = v4 + 2;
    v11[1] = v10;
    if ((~v3 & 0xF) != 0)
    {
      if ((v3 & 1) == 0)
      {
        goto LABEL_16;
      }

      v13 = 32;
    }

    else
    {
      v13 = 10;
    }

    byte_1EAEDC270[v12] = v13;
    LODWORD(v12) = v4 + 3;
LABEL_16:
    ++v3;
    v4 = v12;
  }

  while (v2 != v3);
  v14 = v12;
LABEL_19:
  byte_1EAEDC270[v14] = 0;
  return result;
}

void sub_195AECFC0(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[IDSLogging IDSDataChannels];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "createIfNecessaryDirectConnectionForLinkID: relay qpod connection ready: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_195AED074(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[IDSLogging IDSDataChannels];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v3;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "createIfNecessaryDirectConnectionForLinkID: udp connection ready: %@", &v16, 0xCu);
  }

  os_unfair_lock_lock((*(*(a1 + 32) + 8) + 60));
  v5 = [*(a1 + 40) qpodConnection];

  if (v5)
  {
    v6 = +[IDSLogging IDSDataChannels];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_11:

      goto LABEL_12;
    }

    v7 = [*(a1 + 40) qpodConnection];
    v16 = 138412290;
    v17 = v7;
    v8 = "createIfNecessaryDirectConnectionForLinkID child qpod connection already created previously: %@";
    v9 = v6;
    goto LABEL_9;
  }

  if (*(a1 + 56) == 1)
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 57);
    v12 = *(a1 + 48);
    v13 = [v12 connections];
    v14 = [v13 qpod];
    v6 = [v10 _createIfNecessaryDirectQPodConnectionForLinkID:v11 linkContext:v12 connection:v14 parentConnection:v3 readyHandler:&unk_1F09E71A0];

    [*(a1 + 40) setQpodConnection:v6];
    v7 = +[IDSLogging IDSDataChannels];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
LABEL_10:

      goto LABEL_11;
    }

    v16 = 138412290;
    v17 = v6;
    v8 = "createIfNecessaryDirectConnectionForLinkID: created p2p qpod connection: %@";
    v9 = v7;
LABEL_9:
    _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, v8, &v16, 0xCu);
    goto LABEL_10;
  }

LABEL_12:
  os_unfair_lock_unlock((*(*(a1 + 32) + 8) + 60));

  v15 = *MEMORY[0x1E69E9840];
}

void sub_195AED2C0(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[IDSLogging IDSDataChannels];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "createIfNecessaryDirectConnectionForLinkID: p2p qpod connection ready: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_195AED4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_195AED510(NSObject *a1)
{
  v1 = nw_protocol_options_copy_definition(a1);
  v2 = [MEMORY[0x1E696AEC0] stringWithCString:nw_protocol_definition_get_identifier() encoding:4];

  return v2;
}

void sub_195AED56C(uint64_t a1, NSObject *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v7 = sub_195AED510(a2);
  v4 = [v3 stringWithFormat:@".%@%@", v7, *(*(*(a1 + 32) + 8) + 40)];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_195AEDCAC(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = +[IDSLogging IDSDataChannels];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = nw_connection_state_to_string();
    v6 = *(a1 + 32);
    v10 = 136315394;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "addDirectConnectionForLinkID connection event %s for %@", &v10, 0x16u);
  }

  v7 = *(a1 + 40);
  if (a2 == 3)
  {
    [v7 setDirectConnectionReady:1];
    [*(a1 + 48) reportEvent:*MEMORY[0x1E69A4D10] forLinkID:*(a1 + 72)];
    v9 = *(a1 + 32);
    (*(*(a1 + 64) + 16))();
    sub_195B3F85C(*(a1 + 48), *(a1 + 32), *(a1 + 72), *(a1 + 40), *(a1 + 56));
  }

  else
  {
    [v7 setDirectConnectionReady:0];
    if (a2 == 4)
    {
      [*(a1 + 48) reportEvent:*MEMORY[0x1E69A4D00] forLinkID:*(a1 + 72)];
      [*(a1 + 48) _removeDirectConnection:*(a1 + 32)];
      nw_connection_cancel(*(a1 + 32));
    }

    else if (a2 == 5)
    {
      [*(a1 + 48) reportEvent:*MEMORY[0x1E69A4CF8] forLinkID:*(a1 + 72)];
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_195AEE6B8(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v42 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = v11;
  if (v9 && !v11)
  {
    buffer_ptr = 0xAAAAAAAAAAAAAAAALL;
    size_ptr = 0xAAAAAAAAAAAAAAAALL;
    v13 = dispatch_data_create_map(v9, &buffer_ptr, &size_ptr);
    if (!v13)
    {
LABEL_32:
      if (a4)
      {
        sub_195B3FC5C(a1);
      }

      goto LABEL_35;
    }

    v14 = *(*(a1 + 32) + 8);
    if (v14 && *(v14 + 8) == 1)
    {
      v15 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        if ([*(a1 + 40) connectionType] == 1)
        {
          v16 = 80;
        }

        else
        {
          v16 = 82;
        }

        v17 = *(a1 + 64);
        v31 = *(a1 + 48);
        v18 = size_ptr;
        sub_195AECB68(buffer_ptr, size_ptr);
        *buf = 67110146;
        *v36 = v16;
        *&v36[4] = 1024;
        *&v36[6] = v17;
        *v37 = 2048;
        *&v37[2] = v31;
        v38 = 2048;
        v39 = v18;
        v40 = 2080;
        v41 = byte_1EAEDC270;
        _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, " ** direct reading (%c) linkID %d connection <%p> datagram length %zu\npacket:\n%s", buf, 0x2Cu);
      }

      [*(a1 + 32) _dumpLinkContextConnectionsInfo];
    }

    if (v10)
    {
      v19 = nw_protocol_copy_ip_definition();
      v20 = nw_content_context_copy_protocol_metadata(v10, v19);

      if (!v20)
      {
        ecn_flag = 0;
LABEL_23:
        if (([*(a1 + 56) isQUICPod] & 1) == 0)
        {
          v23 = [*(a1 + 40) connections];
          v24 = [v23 qpod];
          if (v24)
          {
            v25 = size_ptr;

            if (v25 < 5)
            {
              goto LABEL_31;
            }

            v32 = [*(a1 + 40) connections];
            v26 = [v32 qpod];
            v27 = [v26 qpodParameters];
            v28 = [v27 clientConnectionID];

            v29 = v28;
            if (__PAIR64__(*(buffer_ptr + 2), *(buffer_ptr + 1)) != __PAIR64__(BYTE2(v28), HIBYTE(v28)) || __PAIR64__(*(buffer_ptr + 4), *(buffer_ptr + 3)) != __PAIR64__(v28, BYTE1(v28)))
            {
              goto LABEL_31;
            }

            v23 = +[IDSLogging IDSDataChannels];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              sub_195B3FBE4(v29, v23);
            }
          }
        }

LABEL_31:
        sub_195AEC124(*(a1 + 32), buffer_ptr, size_ptr, *(a1 + 64), ecn_flag, *(a1 + 40), *(a1 + 56));
        goto LABEL_32;
      }

      ecn_flag = nw_ip_metadata_get_ecn_flag(v20);
    }

    else
    {
      v20 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "nw_connection_receive_message: Null context", buf, 2u);
      }

      ecn_flag = 0;
    }

    goto LABEL_23;
  }

  v22 = +[IDSLogging IDSDataChannels];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v36 = v12;
    *&v36[8] = 2112;
    *v37 = v9;
    _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "nw_connection_receive_message in _readFromDirectConnection failed %@ %@", buf, 0x16u);
  }

LABEL_35:
  v30 = *MEMORY[0x1E69E9840];
}

NSObject *sub_195AEF944(int a1, int a2)
{
  if (a1 <= 699)
  {
    if (a1 == 100 || a1 == 200)
    {
      v3 = &qword_1EAEDD9E8;
      v4 = qword_1EAEDD9E8;
      if (qword_1EAEDD9E8)
      {
        goto LABEL_21;
      }

      v5 = nw_service_class_background;
      goto LABEL_20;
    }

    if (a1 == 600)
    {
      v3 = &qword_1EAEDD9F0;
      v4 = qword_1EAEDD9F0;
      if (qword_1EAEDD9F0)
      {
        goto LABEL_21;
      }

      v5 = nw_service_class_responsive_data;
      goto LABEL_20;
    }

LABEL_16:
    if (!a2)
    {
      v6 = 0;
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  if (a1 == 700)
  {
    v3 = &qword_1EAEDBEB8;
    v4 = qword_1EAEDBEB8;
    if (qword_1EAEDBEB8)
    {
      goto LABEL_21;
    }

    v5 = nw_service_class_interactive_video;
    goto LABEL_20;
  }

  if (a1 != 800)
  {
    if (a1 == 900)
    {
      v3 = &qword_1EAEDD9F8;
      v4 = qword_1EAEDD9F8;
      if (qword_1EAEDD9F8)
      {
        goto LABEL_21;
      }

      v5 = nw_service_class_signaling;
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v3 = &qword_1EAEDBEB0;
  v4 = qword_1EAEDBEB0;
  if (qword_1EAEDBEB0)
  {
    goto LABEL_21;
  }

  v5 = nw_service_class_interactive_voice;
LABEL_20:
  v7 = MEMORY[0x19A8BB920]();
  v8 = *v3;
  *v3 = v7;

  nw_ip_metadata_set_service_class(*v3, v5);
  v4 = *v3;
LABEL_21:
  v9 = v4;
  v6 = v9;
  if (a2)
  {
    if (v9)
    {
LABEL_24:
      v10 = a2 & 3;
      v9 = v6;
      goto LABEL_27;
    }

LABEL_23:
    v6 = MEMORY[0x19A8BB920]();
    goto LABEL_24;
  }

  if (!v9)
  {
    goto LABEL_28;
  }

  v10 = nw_ip_ecn_flag_non_ect;
LABEL_27:
  nw_ip_metadata_set_ecn_flag(v9, v10);
LABEL_28:

  return v6;
}

void sub_195AEFA8C(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = a2;
  ids_monotonic_time();
  v5 = v4;
  if (v3)
  {
    error_code = nw_error_get_error_code(v3);
  }

  else
  {
    error_code = 0;
  }

  [*(a1 + 32) setTotalPacketsSentOnLink:{objc_msgSend(*(a1 + 32), "totalPacketsSentOnLink") + 1}];
  [*(a1 + 32) setTotalBytesSentOnLink:{objc_msgSend(*(a1 + 32), "totalBytesSentOnLink") + *(a1 + 88)}];
  if (error_code)
  {
    v7 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 88);
      *buf = 67109632;
      *v44 = 1;
      *&v44[4] = 1024;
      *&v44[6] = v8;
      LOWORD(v45) = 1024;
      *(&v45 + 2) = error_code;
      _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "DCW failed for %d packet(s), %uB (%d).", buf, 0x14u);
    }

    goto LABEL_8;
  }

  if (([*(a1 + 32) hasSentPacket] & 1) == 0)
  {
    [*(a1 + 32) setHasSentPacket:1];
    [*(a1 + 40) reportEvent:*MEMORY[0x1E69A4D18] forLinkID:*(a1 + 92)];
  }

  [*(a1 + 32) setLastPacketSentTime:v5];
  sub_195B3F7A8(*(a1 + 40), *(a1 + 32), v5);
  v26 = *(a1 + 48);
  id = nw_connection_get_id();
  if (*(*(*(a1 + 40) + 8) + 4448))
  {
    v28 = id;
    if (*(a1 + 93) == 1 && ([*(a1 + 32) connections], v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "qpod"), v30 = objc_claimAutoreleasedReturnValue(), v30, v29, v30))
    {
      v31 = [*(a1 + 32) connections];
      v32 = [v31 qpod];
    }

    else
    {
      v33 = [*(a1 + 32) connections];
      v34 = [v33 udp];

      if (!v34)
      {
        v35 = 0;
LABEL_35:
        v36 = [v35 packetLogHandle];
        if (v36)
        {
          v37 = v36;
        }

        else
        {
          v42 = *(*(*(a1 + 40) + 8) + 4448);
          v38 = [*(a1 + 32) linkID];
          v39 = v28;
          v40 = [*(a1 + 32) delegatedLinkID];
          v41 = [v35 protocolStack];
          v37 = [v42 packetLogIDWithLinkID:v38 delegatedLinkID:v40 protocolStack:v41 connectionID:v39];

          [v35 setPacketLogHandle:v37];
          if (!v37)
          {
LABEL_39:

            goto LABEL_8;
          }
        }

        [*(*(*(a1 + 40) + 8) + 4448) recordPacketsWithPacketLogID:v37 kind:2 bytes:*(a1 + 88) packetCount:1];
        goto LABEL_39;
      }

      v31 = [*(a1 + 32) connections];
      v32 = [v31 udp];
    }

    v35 = v32;

    goto LABEL_35;
  }

LABEL_8:
  v9 = *(*(a1 + 40) + 8);
  if (v9 && *(v9 + 8) == 1)
  {
    v10 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if ([*(a1 + 32) connectionType] == 1)
      {
        v11 = 80;
      }

      else
      {
        v11 = 82;
      }

      v12 = *(a1 + 92);
      v13 = *(a1 + 48);
      v14 = *(a1 + 88);
      sub_195AECB68(**(a1 + 80), *(*(a1 + 80) + 16));
      *buf = 67110402;
      *v44 = v11;
      *&v44[4] = 1024;
      *&v44[6] = v12;
      LOWORD(v45) = 2048;
      *(&v45 + 2) = v13;
      WORD5(v45) = 1024;
      HIDWORD(v45) = error_code;
      v46 = 1024;
      v47 = v14;
      v48 = 2080;
      v49 = byte_1EAEDC270;
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, " ** direct write (%c) linkID %d connection <%p> error %d datagram length %u\npacket:\n%s", buf, 0x2Eu);
    }

    [*(a1 + 40) _dumpLinkContextConnectionsInfo];
  }

  if (v3)
  {
    v15 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 40);
      v17 = MEMORY[0x19A8BBEF0](*(a1 + 64));
      *buf = 138412802;
      *v44 = v16;
      *&v44[8] = 1024;
      LODWORD(v45) = error_code;
      WORD2(v45) = 2048;
      *(&v45 + 6) = v17;
      _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "<%@> direct write failed error_number %d calling completion handler %p", buf, 0x1Cu);
    }

    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to send write bytes (%d)", error_code];
    v19 = objc_alloc(MEMORY[0x1E695DF20]);
    v20 = [v19 initWithObjectsAndKeys:{v18, *MEMORY[0x1E696A578], 0}];
    v21 = objc_alloc(MEMORY[0x1E696ABC0]);
    v22 = [v21 initWithDomain:*MEMORY[0x1E69A4A18] code:6 userInfo:v20];
  }

  else
  {
    v23 = *(a1 + 88);
    sub_195B404C4(*(a1 + 40));
    v22 = 0;
  }

  v24 = *(*(a1 + 40) + 8);
  if (v24 && (*(v24 + 80) & 1) == 0)
  {
    sub_195A7FC78(*(a1 + 64), *(a1 + 72), v22, *(a1 + 88));
  }

  v25 = *MEMORY[0x1E69E9840];
}

void sub_195AF1904(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

uint64_t sub_195AF1BE8(uint64_t a1)
{
  v2 = [[_IDSDevice alloc] initWithDictionary:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AF1D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AF1D60(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) fullDescription];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AF1EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AF1ED8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) compactDescription];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AF1FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AF2010(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) isCloudConnected];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195AF2118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AF2130(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) locallyPresent];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195AF2278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AF2290(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) capabilities];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AF23B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AF23C8(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) isHSATrusted];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195AF2520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AF2538(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) linkedUserURIs];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AF275C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AF2774(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) stableBluetoothIdentifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AF2894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AF28AC(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) supportsiCloudPairing];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195AF29B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AF29CC(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) supportsHandoff];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195AF2AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AF2AEC(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) supportsSMSRelay];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195AF2BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AF2C0C(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) supportsMMSRelay];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195AF2D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AF2D2C(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) supportsPhoneCalls];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195AF2E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AF2E8C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) deviceColor];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AF2FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AF3004(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) enclosureColor];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AF3164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AF317C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) lastActivityDate];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195AF3360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AF3378(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) pairingProtocolVersion];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195AF3480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AF3498(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) minCompatibilityVersion];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195AF35A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AF35B8(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) maxCompatibilityVersion];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195AF36C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195AF36D8(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) serviceMinCompatibilityVersion];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195AF3E1C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [IDSDatagramChannel getIDSDataChannelsQueue]_0();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195AF3F04;
  block[3] = &unk_1E743E850;
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, block);
}

void sub_195AF443C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [IDSDatagramChannel getIDSDataChannelsQueue]_0();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195AF44E0;
  block[3] = &unk_1E743E850;
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, block);
}

void sub_195AF4E94()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_initially_inactive(v0);
  v2 = dispatch_queue_create("IDSDataChannelsRealTimeQueue", v1);
  v3 = qword_1EAEDBFA0;
  qword_1EAEDBFA0 = v2;

  v4 = IDSRealTimeContext();
  nw_queue_context_target_dispatch_queue();

  v5 = qword_1EAEDBFA0;

  dispatch_activate(v5);
}

void sub_195AF53CC(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = +[IDSLogging IDSDataChannels_oversize];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    v6[0] = 67109378;
    v6[1] = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "LinkID %d associated with LinkContext %@", v6, 0x12u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

double sub_195AF5818()
{
  if (qword_1EAEDBEE8 != -1)
  {
    sub_195B40788();
  }

  return *&qword_1EAEDBEF0 * mach_continuous_time();
}

double sub_195AF5858()
{
  if (qword_1EAEDBEE8 != -1)
  {
    sub_195B40788();
  }

  return *&qword_1EAEDBEF0 * mach_continuous_time();
}

double sub_195AF5898()
{
  if (qword_1EAEDBEE8 != -1)
  {
    sub_195B40788();
  }

  return *&qword_1EAEDBEF0 * mach_continuous_time();
}

double sub_195AF679C()
{
  if (qword_1EAEDBEE8 != -1)
  {
    sub_195B40788();
  }

  return *&qword_1EAEDBEF0 * mach_continuous_time();
}

double sub_195AF67DC()
{
  if (qword_1EAEDBEE8 != -1)
  {
    sub_195B40788();
  }

  return *&qword_1EAEDBEF0 * mach_continuous_time();
}

uint64_t sub_195AF681C(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return MEMORY[0x1EEE66B58](*(result + 32), sel_sendPacketLogData_);
  }

  return result;
}

void sub_195AF6830(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v3;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "nw_path_evaluator_set_update_handler called update handler with path %@", buf, 0xCu);
  }

  memset(src, 170, sizeof(src));
  v42 = 0;
  nexus_instance = nw_path_get_nexus_instance();
  v6 = *(*(a1 + 32) + 8);
  if (nexus_instance)
  {
    is_null = uuid_is_null((v6 + 176));
    v8 = *(*(a1 + 32) + 8);
    if (is_null)
    {
      uuid_copy((v8 + 176), src);
    }

    else if (uuid_compare((v8 + 176), src))
    {
      v23 = +[IDSTransportLog IDSDataChannels];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 32);
        *buf = 138412290;
        *&buf[4] = v24;
        _os_log_impl(&dword_1959FF000, v23, OS_LOG_TYPE_DEFAULT, "%@: close due to the new ids instance.", buf, 0xCu);
      }

      v25 = *(a1 + 32);
      v26 = v25[1];
      if (*(v26 + 132) == 1)
      {
        v37 = MEMORY[0x1E69E9820];
        v38 = 3221225472;
        v39 = sub_195AF6F20;
        v40 = &unk_1E7442DA8;
        v41 = v25;
        IDSTransportThreadAddBlock();
      }

      else
      {
        v29 = *(v26 + 24);
        if (v29)
        {
          v46[0] = @"event-type";
          v46[1] = @"connected-link";
          v47[0] = &unk_1F0A29A50;
          v30 = [v25 connectedLinks];
          v47[1] = v30;
          v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:2];
          (*(v29 + 16))(v29, v31);

          v25 = *(a1 + 32);
        }

        [v25 close];
      }

      goto LABEL_48;
    }

    if (!*(*(*(a1 + 32) + 8) + 152))
    {
      v9 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "nw_path_get_nexus_instance returned yes", buf, 2u);
      }

      *v36 = 0;
      nw_path_get_nexus_key();
      if (os_channel_attr_create())
      {
        os_channel_attr_set_key();
        os_channel_attr_set();
        *(*(*(a1 + 32) + 8) + 152) = os_channel_create_extended();
        os_channel_attr_destroy();
        if (*(*(*(a1 + 32) + 8) + 152))
        {
          *(*(*(a1 + 32) + 8) + 136) = os_channel_get_fd();
          v10 = *(*(*(a1 + 32) + 8) + 152);
          os_channel_ring_id();
          v11 = *(*(*(a1 + 32) + 8) + 152);
          v12 = os_channel_rx_ring();
          v13 = *(*(*(a1 + 32) + 8) + 152);
          os_channel_ring_id();
          v14 = *(*(*(a1 + 32) + 8) + 152);
          *(*(*(a1 + 32) + 8) + 160) = os_channel_tx_ring();
          *(*(*(a1 + 32) + 8) + 168) = v12;
          *(*(*(a1 + 32) + 8) + 56) = 1;
          v15 = +[IDSTransportLog IDSDataChannels];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = *(a1 + 32);
            v17 = *(v16 + 8);
            v18 = *(v17 + 152);
            LODWORD(v17) = *(v17 + 136);
            *buf = 134218498;
            *&buf[4] = v18;
            *&buf[12] = 1024;
            *&buf[14] = v17;
            v44 = 2112;
            v45 = v16;
            _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "_internal->_osChannel %p channelFD_get %d %@", buf, 0x1Cu);
          }

          if (*(*(*(a1 + 32) + 8) + 134) == 1)
          {
            IDSTransportThreadInit();
            v35 = *(a1 + 32);
            IDSTransportThreadAddBlock();
          }

          *(*(*(a1 + 48) + 8) + 24) = 1;
          goto LABEL_47;
        }

        v27 = +[IDSTransportLog IDSDataChannels];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v28 = "os_channel_create failed";
          v32 = buf;
LABEL_45:
          _os_log_impl(&dword_1959FF000, v27, OS_LOG_TYPE_DEFAULT, v28, v32, 2u);
        }

LABEL_46:

        v33 = *(*(*(a1 + 32) + 8) + 144);
        nw_path_evaluator_cancel();
LABEL_47:
        dispatch_semaphore_signal(*(a1 + 40));
        goto LABEL_48;
      }

      v20 = +[IDSLogging IDSDataChannels];
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      *buf = 0;
      v21 = "initWithDestination: os_channel_attr_create failed";
      v22 = buf;
      goto LABEL_36;
    }
  }

  else if (!*(v6 + 152))
  {
    v19 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v19, OS_LOG_TYPE_DEFAULT, "nw_path_get_nexus_instance returned no", buf, 2u);
    }

    memset(buf, 170, 16);
    nw_path_get_nexus_agent_uuid();
    if (nw_path_assert_agent())
    {
      if (MEMORY[0x19A8BBB20](v3))
      {
        if (nw_path_request_nexus())
        {
          v20 = +[IDSLogging IDSDataChannels];
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
LABEL_37:

            goto LABEL_48;
          }

          *v36 = 0;
          v21 = "nw_path_request_nexus succeeded";
          v22 = v36;
LABEL_36:
          _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, v21, v22, 2u);
          goto LABEL_37;
        }

        v27 = +[IDSTransportLog IDSDataChannels];
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_46;
        }

        *v36 = 0;
        v28 = "nw_path_request_nexus failed - cannot recover";
      }

      else
      {
        v27 = +[IDSTransportLog IDSDataChannels];
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_46;
        }

        *v36 = 0;
        v28 = "nw_path_uses_nexus failed - cannot recover";
      }
    }

    else
    {
      v27 = +[IDSTransportLog IDSDataChannels];
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_46;
      }

      *v36 = 0;
      v28 = "nw_path_assert_agent failed";
    }

    v32 = v36;
    goto LABEL_45;
  }

LABEL_48:

  v34 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195AF6F20(uint64_t a1)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2[1] + 24);
  if (v3)
  {
    v8[0] = @"event-type";
    v8[1] = @"connected-link";
    v9[0] = &unk_1F0A29A50;
    v4 = [v2 connectedLinks];
    v9[1] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
    (*(v3 + 16))(v3, v5);

    v2 = *(a1 + 32);
  }

  result = [v2 close];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_195AF7000(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2[1] + 136);
  v5 = v2;
  v4 = *(a1 + 32);
  IDSTransportThreadAddSocket();
}

uint64_t sub_195AF70F0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2[1] + 8) == 1)
  {
    v3 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "readable for %@", &v7, 0xCu);
    }

    v2 = *(a1 + 32);
  }

  result = [v2 scheduleRead];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_195AF71BC(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(*(a1 + 32) + 8) + 60));
  v2 = *(a1 + 32);
  if (*(v2[1] + 8) == 1)
  {
    v3 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "writable for %@", &v7, 0xCu);
    }

    v2 = *(a1 + 32);
  }

  [v2 sendMetadata];
  v5 = *(*(*(a1 + 32) + 8) + 136);
  IDSTransportThreadSuspendSocket();
  os_unfair_lock_unlock((*(*(a1 + 32) + 8) + 60));
  v6 = *MEMORY[0x1E69E9840];
}

void sub_195AF915C(uint64_t a1)
{
  v64 = *MEMORY[0x1E69E9840];
  v2 = +[IDSLogging IDSDataChannels_oversize];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 136);
    v4 = *(a1 + 137);
    v5 = *(a1 + 158);
    v6 = *(a1 + 138);
    v7 = *(a1 + 139);
    v8 = *(a1 + 144);
    v9 = *(a1 + 141);
    v10 = *(a1 + 142);
    v11 = *(a1 + 146);
    v13 = *(a1 + 148);
    v12 = *(a1 + 152);
    if (*(a1 + 164))
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v17 = *(a1 + 156);
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    v20 = *(a1 + 64);
    v21 = *(a1 + 72);
    v22 = *(a1 + 80);
    v24 = 138417154;
    v25 = v15;
    v26 = 1024;
    v27 = v3;
    v28 = 1024;
    v29 = v4;
    v30 = 1024;
    v31 = v5;
    v32 = 1024;
    v33 = v6;
    v34 = 1024;
    v35 = v7;
    v36 = 1024;
    v37 = v8;
    v38 = 1024;
    v39 = v13;
    v40 = 1024;
    v41 = v9;
    v42 = 1024;
    v43 = v10;
    v44 = 1024;
    v45 = v11;
    v46 = 1024;
    v47 = v12;
    v48 = 2112;
    v49 = v14;
    v50 = 2112;
    v51 = v16;
    v52 = 1024;
    v53 = v17;
    v54 = 2112;
    v55 = v18;
    v56 = 2112;
    v57 = v19;
    v58 = 2112;
    v59 = v20;
    v60 = 2112;
    v61 = v21;
    v62 = 2112;
    v63 = v22;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "<%@> got connectedLinkID %d (link family:%u) (mtu:%u) (l-conn:%u) (l-RAT:%u) (l-flags:0x%x) (l-dataSoMask: %u) (r-conn:%u) (r-RAT:%u) (r-flags:0x%x) (r-datasoMask:%u) isVirtualRelayLink: %@, childConnectionID: %@, channelNumber: %04X, relayProtocolStack: %@, connections: %@, feature flags: %@, qrExperiments: %@, (Current LinkContexts %@", &v24, 0x9Au);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void sub_195AFF350()
{
  v0 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1959FF000, v0, OS_LOG_TYPE_DEFAULT, "LinkQuality: imported link quality measurer delta", v1, 2u);
  }
}

void sub_195AFF9CC(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  [*(a1 + 32) setObject:v5 forKey:v7];
  v6 = [*(a1 + 32) objectForKey:v5];

  if (!v6)
  {
    [*(a1 + 32) setObject:v7 forKey:v5];
  }
}

void sub_195B003EC(uint64_t a1, id *a2, int a3, int a4)
{
  v36[2] = *MEMORY[0x1E69E9840];
  v26 = *(*(a1 + 32) + 8);
  os_unfair_lock_lock(v26 + 16);
  if (!a3)
  {
    v18 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v20 = MEMORY[0x19A8BBEF0](*(*(v19 + 8) + 24));
      *buf = 138412802;
      *v30 = v19;
      *&v30[8] = 1024;
      *&v30[10] = a4;
      v31 = 2048;
      v32 = v20;
      _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "<%@> read failed %d due to datagram_count 0 - calling event handler %p", buf, 0x1Cu);
    }

    v21 = *(a1 + 32);
    v22 = *(v21[1] + 24);
    if (v22)
    {
      v35[0] = @"event-type";
      v35[1] = @"connected-link";
      v36[0] = &unk_1F0A29A50;
      v23 = [v21 connectedLinks];
      v36[1] = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
      (*(v22 + 16))(v22, v24);

      v21 = *(a1 + 32);
    }

    [v21 close];
    goto LABEL_22;
  }

  while (1)
  {
    v10 = *a2;
    buffer_ptr = 0xAAAAAAAAAAAAAAAALL;
    size_ptr = 0xAAAAAAAAAAAAAAAALL;
    v11 = dispatch_data_create_map(v10, &buffer_ptr, &size_ptr);
    v12 = *(a1 + 32);
    v13 = v12[1];
    if (*(v13 + 8) == 1)
    {
      v14 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(*(*(a1 + 32) + 8) + 128);
        *buf = 67109888;
        *v30 = a3;
        *&v30[4] = 2048;
        *&v30[6] = buffer_ptr;
        v31 = 2048;
        v32 = size_ptr;
        v33 = 1024;
        v34 = v15;
        _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, " ** reading %u packets remaining: mapped %p length %zu hasMetadata %u", buf, 0x22u);
      }

      v12 = *(a1 + 32);
      v13 = v12[1];
    }

    if (*(v13 + 128) != 1)
    {
      if (qword_1EAEDBEE8 != -1)
      {
        sub_195B4089C();
      }

      mach_continuous_time();
      sub_195B4061C(v12);
      v16 = *(a1 + 64);
      if (v16)
      {
        v4 &= 0xFFFFFFFFFFFF0000;
        (*(v16 + 16))(v16, buffer_ptr, size_ptr, 0, v4, 0);
      }

      else
      {
        v5 &= 0xFFFFFFFFFFFF0000;
        (*(*(a1 + 72) + 16))();
      }

      goto LABEL_14;
    }

    if (([v12 processDatagram:buffer_ptr datagramSize:size_ptr readHandler:*(a1 + 48) readHandlerWithOptions:*(a1 + 56)] & 1) == 0)
    {
      break;
    }

LABEL_14:
    v17 = objc_opt_self();

    ++a2;
    if (!--a3)
    {
      goto LABEL_21;
    }
  }

LABEL_21:
  [*(a1 + 32) readFromNWConnection:*(a1 + 40) maximumDatagrams:*(a1 + 80) readHandler:*(a1 + 64) readHandlerWithOptions:*(a1 + 72)];
LABEL_22:
  os_unfair_lock_unlock(v26 + 16);
  v25 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195B0146C(uint64_t a1)
{
  if (*(a1 + 40) != -1)
  {
    IDSTransportThreadRemoveSocket();
  }

  result = *(a1 + 32);
  if (result)
  {

    return os_channel_destroy();
  }

  return result;
}

void sub_195B018A8(uint64_t a1)
{
  os_unfair_lock_lock((*(*(a1 + 32) + 8) + 60));
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 152))
  {
    IDSTransportThreadInit();
    v3 = *(a1 + 32);
    IDSTransportThreadAddBlock();
  }

  else
  {
    *(v2 + 134) = 1;
  }

  os_unfair_lock_unlock((*(*(a1 + 32) + 8) + 60));
}

uint64_t sub_195B01A14(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2[1] + 8) == 1)
  {
    v3 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "readable for %@", &v7, 0xCu);
    }

    v2 = *(a1 + 32);
  }

  result = [v2 scheduleRead];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_195B01AE0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(*(a1 + 32) + 8) + 60));
  v2 = *(a1 + 32);
  if (*(v2[1] + 8) == 1)
  {
    v3 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "writable for %@", &v7, 0xCu);
    }

    v2 = *(a1 + 32);
  }

  [v2 sendMetadata];
  v5 = *(*(*(a1 + 32) + 8) + 136);
  IDSTransportThreadSuspendSocket();
  os_unfair_lock_unlock((*(*(a1 + 32) + 8) + 60));
  v6 = *MEMORY[0x1E69E9840];
}

void sub_195B01D84(uint64_t a1, int a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  os_unfair_lock_lock((*(*(a1 + 32) + 8) + 60));
  v6 = MEMORY[0x19A8BBEF0](*(*(*(a1 + 32) + 8) + 24));
  os_unfair_lock_unlock((*(*(a1 + 32) + 8) + 60));
  if (a2)
  {
    if (a2 == 3)
    {
      os_unfair_lock_lock((*(*(a1 + 32) + 8) + 60));
      *(*(*(a1 + 32) + 8) + 56) = 1;
      v7 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v9 = MEMORY[0x19A8BBEF0](v6);
        *buf = 138412546;
        v27 = v8;
        v28 = 2048;
        v29 = v9;
        _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "<%@> got event connected and calls event handler %p", buf, 0x16u);
      }

      [*(a1 + 32) sendMetadata];
      os_unfair_lock_unlock((*(*(a1 + 32) + 8) + 60));
      [*(a1 + 32) scheduleRead];
      goto LABEL_16;
    }

    if ((a2 & 0xFFFFFFFE) == 4)
    {
      os_unfair_lock_lock((*(*(a1 + 32) + 8) + 60));
      *(*(*(a1 + 32) + 8) + 56) = 0;
      os_unfair_lock_unlock((*(*(a1 + 32) + 8) + 60));
      v17 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 32);
        v19 = MEMORY[0x19A8BBEF0](v6);
        *buf = 138412802;
        v27 = v18;
        v28 = 2112;
        v29 = v5;
        v30 = 2048;
        v31 = v19;
        _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "<%@> got event disconnected with error %@ and calls event handler %p", buf, 0x20u);
      }

      if (v6)
      {
        v13 = [*(a1 + 32) connectedLinks];
        v23[1] = v13;
        v14 = MEMORY[0x1E695DF20];
        v15 = v23;
        v16 = &v22;
        goto LABEL_15;
      }
    }
  }

  else
  {
    v10 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = MEMORY[0x19A8BBEF0](v6);
      *buf = 138412802;
      v27 = v11;
      v28 = 2112;
      v29 = v5;
      v30 = 2048;
      v31 = v12;
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "<%@> got event error %@ and calls event handler %p", buf, 0x20u);
    }

    if (v6)
    {
      v24[0] = @"event-type";
      v24[1] = @"connected-link";
      v25[0] = &unk_1F0A29C60;
      v13 = [*(a1 + 32) connectedLinks];
      v25[1] = v13;
      v14 = MEMORY[0x1E695DF20];
      v15 = v25;
      v16 = v24;
LABEL_15:
      v20 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:2];
      (v6)[2](v6, v20);
    }
  }

LABEL_16:

  v21 = *MEMORY[0x1E69E9840];
}

void sub_195B02D80(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    error_code = nw_error_get_error_code(v3);
  }

  else
  {
    error_code = 0;
  }

  if (qword_1EAEDBEE8 != -1)
  {
    sub_195B40788();
  }

  v6 = mach_continuous_time();
  if (*(*(*(a1 + 32) + 8) + 8) == 1)
  {
    v7 = v6;
    v8 = *&qword_1EAEDBEF0;
    v9 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v8 * v7;
      v11 = *(a1 + 76);
      v12 = *(a1 + 32);
      v13 = MEMORY[0x19A8BBEF0](*(a1 + 40));
      v14 = *(a1 + 56);
      v15 = v14 - *(a1 + 64);
      *buf = 138413826;
      v29 = v12;
      v30 = 1024;
      v31 = v11;
      v32 = 1024;
      *v33 = error_code;
      *&v33[4] = 2048;
      *&v33[6] = v13;
      v34 = 2048;
      v35 = v15;
      v36 = 2048;
      v37 = v10 - v14;
      v38 = 2048;
      v39 = v10;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "<%@> write linkID %d error_number %d calling completion handler %p dataCreateTime %0.6lf writeTime %0.6lf [%013.6lf]", buf, 0x40u);
    }
  }

  if (v4)
  {
    v16 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v18 = MEMORY[0x19A8BBEF0](*(a1 + 40));
      *buf = 138412802;
      v29 = v17;
      v30 = 1024;
      v31 = error_code;
      v32 = 2048;
      *v33 = v18;
      _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "<%@> write failed error_number %d calling completion handler %p", buf, 0x1Cu);
    }

    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to send write bytes (%d)", error_code];
    v20 = objc_alloc(MEMORY[0x1E695DF20]);
    v21 = [v20 initWithObjectsAndKeys:{v19, *MEMORY[0x1E696A578], 0}];
    v22 = objc_alloc(MEMORY[0x1E696ABC0]);
    v23 = [v22 initWithDomain:*MEMORY[0x1E69A4A18] code:6 userInfo:v21];
  }

  else
  {
    v26 = *(a1 + 32);
    v27 = *(a1 + 72);
    if (qword_1EAEDBEE8 != -1)
    {
      sub_195B4089C();
    }

    mach_continuous_time();
    sub_195B404C4(v26);
    v23 = 0;
  }

  v24 = *(*(a1 + 32) + 8);
  if (v24 && (*(v24 + 80) & 1) == 0)
  {
    sub_195A7FC78(*(a1 + 40), *(a1 + 48), v23, *(a1 + 72));
  }

  v25 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195B0333C(uint64_t a1)
{
  v3 = 0;
  v4 = 0;
  do
  {
    v5 = (*(a1 + 88) - 1);
    if (v4 == v5)
    {
      v6 = *(a1 + 48);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(a1 + 72) + v3;
    v1 = v1 & 0xFFFFFFFFFFFF0000 | *(v7 + 8);
    result = [*(a1 + 32) _writeToNWConnection:*(a1 + 40) datagram:*(*(a1 + 56) + 8 * v4) datagramSize:*(*(a1 + 64) + 4 * v4) currentDatagramCount:v4 totalDatagramCount:*(a1 + 88) datagramInfo:*v7 datagramOptions:v1 completionHandler:{*(*(a1 + 80) + 8 * v4), v6}];
    v3 += 10;
  }

  while (v4++ != v5);
  return result;
}

void sub_195B04A6C(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    error_code = nw_error_get_error_code(v3);
  }

  else
  {
    error_code = 0;
  }

  v6 = +[IDSLogging IDSDataChannels];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138412546;
    v23 = v7;
    v24 = 1024;
    v25 = error_code;
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "<%@> write error_number %d calling setChannelPreferences", buf, 0x12u);
  }

  if (v4)
  {
    v8 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138412546;
      v23 = v9;
      v24 = 1024;
      v25 = error_code;
      _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "<%@> write failed error_number %d calling setChannelPreferences", buf, 0x12u);
    }

    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to send write bytes (%d)", error_code];
    v11 = objc_alloc(MEMORY[0x1E695DF20]);
    v12 = [v11 initWithObjectsAndKeys:{v10, *MEMORY[0x1E696A578], 0}];
    v13 = objc_alloc(MEMORY[0x1E696ABC0]);
    v14 = [v13 initWithDomain:*MEMORY[0x1E69A4A18] code:6 userInfo:v12];
    v15 = v14;
    v16 = *(*(*(a1 + 32) + 8) + 24);
    if (v16)
    {
      v20[0] = @"event-type";
      v20[1] = @"error-key";
      v21[0] = &unk_1F0A29C60;
      v21[1] = v14;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
      (*(v16 + 16))(v16, v17);
    }
  }

  else
  {
    if (*(*(*(a1 + 32) + 8) + 8) != 1)
    {
      goto LABEL_13;
    }

    v10 = +[IDSLogging IDSDataChannels];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      *buf = 138412290;
      v23 = v19;
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "<%@> write done for setChannelPreferences", buf, 0xCu);
    }
  }

LABEL_13:
  v18 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195B07E9C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  return MEMORY[0x1EEE66B58](*(a1 + 32), sel__reportMKIArrival_time_isLocallyGenerated_);
}

uint64_t sub_195B08168(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = a1[7];
  return MEMORY[0x1EEE66B58](a1[4], sel__reportFirstIncomingPacketTimeForMKI_time_participantID_);
}

uint64_t sub_195B08434(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = a1[7];
  return MEMORY[0x1EEE66B58](a1[4], sel__reportFirstOutgoingPacketTimeForMKI_time_participantID_);
}

void sub_195B08EB4(uint64_t a1)
{
  v2 = +[IDSTransportLog IDSDataChannels];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "LinkQuality: syncing...", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _periodicTasksTick];
}

void sub_195B09568(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 80));
  _Unwind_Resume(a1);
}

void sub_195B09594(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained && (*(WeakRetained[1] + 80) & 1) == 0)
  {
    v6 = [v3 json];
    v7 = [v3 syncToken];
    v8 = v5[1];
    v9 = *(v8 + 4464);
    *(v8 + 4464) = v7;

    v10 = +[IDSTransportLog IDSDataChannels];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12[0] = 67109120;
      v12[1] = [v6 length];
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "LinkQuality: link quality measurement delta is %d bytes", v12, 8u);
    }

    [*(a1 + 32) _sendChunkedDataToDaemon:v6 withKey:85 shouldTerminateWithEmptyData:1];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_195B096C8(uint64_t a1, void *a2)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained && (*(WeakRetained[1] + 80) & 1) == 0)
  {
    v19 = 0;
    v6 = [v3 jsonWithError:&v19];
    v7 = v19;
    if (v7)
    {
      v8 = +[IDSTransportLog IDSDataChannels];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_195B40B20();
      }
    }

    else
    {
      v9 = [v3 syncToken];
      v10 = v5[1];
      v11 = *(v10 + 4480);
      *(v10 + 4480) = v9;

      v22[0] = @"source";
      v12 = [MEMORY[0x1E696AE30] processInfo];
      v13 = [v12 processName];
      v22[1] = @"delta";
      v23[0] = v13;
      v23[1] = v6;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
      v8 = JWEncodeDictionary();

      v15 = +[IDSTransportLog IDSDataChannels];
      v16 = v15;
      if (v8)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v8 length];
          *buf = 67109120;
          v21 = v17;
          _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "LinkQuality: link engine link quality measurement delta is %d bytes", buf, 8u);
        }

        [*(a1 + 32) _sendChunkedDataToDaemon:v8 withKey:87 shouldTerminateWithEmptyData:1];
      }

      else
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_195B40B90();
        }
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t IDSEstimateAdditionalOverheadForDatagramOptions(unsigned int *a1)
{
  if ((a1[20] & 1) != 0 || (a1[28] & 1) != 0 || (*(a1 + 113) & 1) != 0 || (v1 = *a1, (*a1 & 0x30000) != 0))
  {
    v1 = *a1;
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  v3 = ((v1 >> 10) & 2) + v2;
  if ((v1 & 2) != 0)
  {
    v4 = *(a1 + 19);
    v5 = v3 + 2;
    if (v4 <= 0)
    {
      v5 = v3;
    }

    v6 = 2 * (v4 & 0x7F) + v3;
    if (v4 >= 2)
    {
      v3 = v6 + 1;
    }

    else
    {
      v3 = v5;
    }
  }

  return ((v1 >> 3) & 2 | (__rbit32(v1 & 0xFFFFFFF9) >> 28)) + ((v1 >> 5) & 3) + ((v1 >> 6) & 8) + v3;
}

double sub_195B09B04()
{
  info = 0xAAAAAAAAAAAAAAAALL;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 / v1 / 1000000000.0;
  qword_1EAEDBEF0 = *&result;
  return result;
}

void sub_195B09B88(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x16u);
}

void sub_195B09BA8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x20u);
}

void sub_195B0A5BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 224), 8);
  _Block_object_dispose((v35 - 192), 8);
  _Block_object_dispose((v35 - 144), 8);
  objc_destroyWeak((v35 - 112));
  _Unwind_Resume(a1);
}

void sub_195B0A600(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E69A5270] IDSServerMessaging];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    v8 = *(a1 + 32);
    v13 = 138412802;
    if (a2)
    {
      v7 = @"YES";
    }

    v14 = v7;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "Finished sending parakeet storage fetch -- ip service{success: %@, error: %@, identifier: %@}", &v13, 0x20u);
  }

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  *(*(*(a1 + 56) + 8) + 24) = a2;
  dispatch_group_leave(*(a1 + 40));

  v12 = *MEMORY[0x1E69E9840];
}

void sub_195B0A724(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E69A5270] IDSServerMessaging];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    v8 = *(a1 + 32);
    v13 = 138412802;
    if (a2)
    {
      v7 = @"YES";
    }

    v14 = v7;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "Finished sending parakeet storage fetch -- offgrid service {success: %@, error: %@, identifier: %@}", &v13, 0x20u);
  }

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  *(*(*(a1 + 56) + 8) + 24) = a2;
  dispatch_group_leave(*(a1 + 40));

  v12 = *MEMORY[0x1E69E9840];
}

void sub_195B0A848(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (*(*(*(a1 + 40) + 8) + 24) == 1 && (*(*(*(a1 + 48) + 8) + 24) & 1) != 0)
  {
    v3 = 0;
    v4 = 1;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = v5;
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      [v5 addObject:?];
    }

    if (*(*(*(a1 + 64) + 8) + 40))
    {
      [v6 addObject:?];
    }

    v7 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A750];
    v8 = [v6 copy];
    v12[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v3 = [v7 errorWithDomain:@"IDSParakeetMessagingErrorDomain" code:2 userInfo:v9];

    v4 = 0;
  }

  [WeakRetained _noteSentFetchForIdentifier:*(a1 + 32) success:v4 error:v3];

  v10 = *MEMORY[0x1E69E9840];
}

void sub_195B0AD34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_195B0AD60(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _noteAckTimerFiredForIdentifier:*(a1 + 32)];
  }

  [v5 invalidate];
}

void sub_195B0B510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_195B0B53C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = [MEMORY[0x1E69A5270] IDSServerMessaging];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    v13 = 138412802;
    if (a2)
    {
      v11 = @"YES";
    }

    v14 = v11;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "Finished sending parakeet stop {success: %@, error: %@, context: %@}", &v13, 0x20u);
  }

  [WeakRetained _noteSentStopForIdentifier:*(a1 + 32) success:a2 error:v7];
  v12 = *MEMORY[0x1E69E9840];
}

void sub_195B0B874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_195B0B8A0(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [MEMORY[0x1E69A5270] IDSServerMessaging];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    v9 = *(a1 + 32);
    v12 = 138412802;
    if (a2)
    {
      v8 = @"YES";
    }

    v13 = v8;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Finished cancelling parakeet stop {success: %@, error: %@, UUID: %@}", &v12, 0x20u);
  }

  v10 = [*(a1 + 32) UUIDString];
  [WeakRetained _noteCanceledFetchForIdentifier:v10 success:a2 error:v5];

  v11 = *MEMORY[0x1E69E9840];
}

void sub_195B0BB20(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) originalGUID];
  [v1 _noteAckedMessageWithMessageIdentifier:v2];
}

void sub_195B0C098(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = (a1 + 32);
  v5 = [v3 objectForKeyedSubscript:*(a1 + 32)];
  v6 = v5;
  if (!v5 || ([(_IDSXPCCheckInInfo *)v5 connection], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@-idswake", *(a1 + 32)];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_195B0C2EC;
    v19[3] = &unk_1E7443078;
    v18 = *(a1 + 32);
    v9 = v18.i64[0];
    v20 = vextq_s8(v18, v18, 8uLL);
    v10 = MEMORY[0x19A8BBEF0](v19);
    v11 = [*(a1 + 40) XPCAdapter];
    v12 = [v8 UTF8String];
    v13 = [v11 createServiceConnectionWithServiceName:v12 invalidationHandler:0 terminationHandler:0 peerEventHandler:v10 peerQueue:MEMORY[0x1E69E96A0]];

    v14 = +[IDSLogging _IDSService];
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *v4;
        *buf = 138412290;
        v22 = v16;
        _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "Client setup service -- checked in {service: %@}", buf, 0xCu);
      }

      [v13 resume];
      if (!v6)
      {
        v6 = objc_alloc_init(_IDSXPCCheckInInfo);
      }

      [v3 setObject:v6 forKeyedSubscript:*v4];
      [(_IDSXPCCheckInInfo *)v6 setConnection:v13];
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_195B41398(v4, v15);
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_195B0C390(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];
  v5 = +[IDSLogging _IDSService];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "Finalized check in -- finishing {service: %@}", &v8, 0xCu);
  }

  if (!v4)
  {
    v4 = objc_alloc_init(_IDSXPCCheckInInfo);
    [v3 setObject:v4 forKeyedSubscript:*(a1 + 32)];
  }

  [(_IDSXPCCheckInInfo *)v4 setTempObject:0];
  [(_IDSXPCCheckInInfo *)v4 setFinishedTransaction:1];

  v7 = *MEMORY[0x1E69E9840];
}

void sub_195B0C53C(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 objectForKeyedSubscript:*(a1 + 32)];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 connection];
    [v5 cancel];

    [v6 setObject:0 forKeyedSubscript:*(a1 + 32)];
  }
}

void sub_195B0C5D4(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [v2 objectForKeyedSubscript:*(*(&v10 + 1) + 8 * v6)];
        v8 = [v7 connection];
        [v8 cancel];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  [v2 removeAllObjects];

  v9 = *MEMORY[0x1E69E9840];
}

void sub_195B0C810(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = v3;
  if (v3 && ([v3 finishedTransaction] & 1) == 0)
  {
    v5 = MEMORY[0x19A8BC4D0](*(a1 + 40));
    v6 = +[IDSLogging _IDSService];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 138412546;
      v10 = v7;
      v11 = 2080;
      v12 = v5;
      _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "Client received xpc-wake event -- storing {service: %@, description: %s}", &v9, 0x16u);
    }

    free(v5);
    [v4 setTempObject:*(a1 + 40)];
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195B0CBE4(void *a1)
{
  v2 = [[_IDSDeviceConnection alloc] initWithDevice:a1[5] options:a1[6] completionHandler:a1[8] queue:a1[7]];
  v3 = a1[4];
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195B0CEB8(uint64_t a1)
{
  v2 = [_IDSDeviceConnection alloc];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195B0CFD4;
  v10[3] = &unk_1E7443138;
  v11 = *(a1 + 32);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 queue];
  v7 = [(_IDSDeviceConnection *)v2 initWithDevice:v3 options:v4 completionHandler:v10 queue:v6];
  v8 = *(a1 + 32);
  v9 = *(v8 + 8);
  *(v8 + 8) = v7;
}

void sub_195B0CFD4(uint64_t a1, CFSocketNativeHandle a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    readStream = 0;
    writeStream = 0;
    CFStreamCreatePairWithSocket(*MEMORY[0x1E695E480], a2, &readStream, &writeStream);
    v8 = *MEMORY[0x1E695E940];
    v9 = *MEMORY[0x1E695E4D0];
    CFReadStreamSetProperty(readStream, *MEMORY[0x1E695E940], *MEMORY[0x1E695E4D0]);
    CFWriteStreamSetProperty(writeStream, v8, v9);
    v6 = readStream;
    v7 = writeStream;
    [*(*(a1 + 32) + 8) setStreamPairWithInputStream:readStream outputStream:writeStream];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195B0D148;
  v14[3] = &unk_1E743F318;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v10 = *(a1 + 40);
  v18 = *(a1 + 48);
  v11 = v7;
  v12 = v6;
  v13 = v5;
  dispatch_async(v10, v14);
}

void sub_195B0D148(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  if ((!*(a1 + 40) || !*(a1 + 48)) && !*(a1 + 32))
  {
    v9 = v2;
    v4 = objc_alloc(MEMORY[0x1E695DF20]);
    v5 = [v4 initWithObjectsAndKeys:{@"Unable to create input and output stream", *MEMORY[0x1E696A578], 0}];
    v6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:19 userInfo:v5];

    v7 = *(a1 + 40);
    v3 = v6;
  }

  v8 = *(a1 + 48);
  v10 = v3;
  (*(*(a1 + 56) + 16))();
}

void sub_195B0D338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195B0D350(void *a1)
{
  result = [*(a1[4] + 8) updateConnectionWithOptions:a1[5] error:a1[7]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_195B0D4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195B0D5F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195B0D60C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) description];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195B0D81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195B0D834(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) socket];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195B0D97C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195B0D994(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) inputStream];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195B0DAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195B0DB0C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) outputStream];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void sub_195B0DCC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195B0DCE0(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) mtu];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_195B0DE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195B0DE40(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) metrics];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

id ACAccountForIDSAccount(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [MEMORY[0x19A8BAE00](@"FTPasswordManager" @"FTServices")];
  v6 = [v4 profileID];
  v7 = [v4 loginID];

  v8 = [v5 acAccountWithProfileID:v6 username:v7 accountStore:v3];

  return v8;
}

void sub_195B0E0D4()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A530C8];
  v1 = qword_1ED5DDE80;
  qword_1ED5DDE80 = v0;

  v2 = qword_1ED5DDE80;
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v4, v5, objc_opt_class(), 0}];
  [v2 setClasses:v6 forSelector:sel_reportClientEvent_withCompletion_ argumentIndex:0 ofReply:0];
}

void IDSGetServiceUserIDsWithCompletionBlock(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (_IDSRunningInDaemon())
  {
    sub_195B41608();
  }

  if (v3)
  {
    v5 = +[IDSHomeKitManager sharedInstance];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_195B0E280;
    v6[3] = &unk_1E7443160;
    v7 = v3;
    [v5 getServiceUserIDsWithCompletionBlock:v6 queue:v4];
  }
}

void IDSGetAdminAccessTokensWithCompletionBlock(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (_IDSRunningInDaemon())
  {
    sub_195B41634();
  }

  if (v12)
  {
    v14 = +[IDSHomeKitManager sharedInstance];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_195B0E3A8;
    v15[3] = &unk_1E7443160;
    v16 = v12;
    [v14 getAdminAccessTokensWithWithServiceUserID:v9 accessoryID:v10 pairingToken:v11 completionBlock:v15 queue:v13];
  }
}

void IDSGetConsentTokensWithCompletionBlock(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (_IDSRunningInDaemon())
  {
    sub_195B41660();
  }

  if (v12)
  {
    v14 = +[IDSHomeKitManager sharedInstance];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_195B0E4D0;
    v15[3] = &unk_1E7443160;
    v16 = v12;
    [v14 getConsentTokensWithServiceUserID:v9 accessoryIDs:v10 adminID:v11 completionBlock:v15 queue:v13];
  }
}

void IDSGetUserAccessTokensWithCompletionBlock(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (_IDSRunningInDaemon())
  {
    sub_195B4168C();
  }

  if (v15)
  {
    v17 = +[IDSHomeKitManager sharedInstance];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_195B0E614;
    v18[3] = &unk_1E7443160;
    v19 = v15;
    [v17 getUserAccessTokensWithServiceUserID:v11 userID:v12 userHandle:v13 accessoryRequests:v14 completionBlock:v18 queue:v16];
  }
}

void IDSRefreshUserAccessTokensWithCompletionBlock(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v13 = a1;
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (_IDSRunningInDaemon())
  {
    sub_195B416B8();
  }
}

void sub_195B0E6FC()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A53128];
  v1 = qword_1ED5DDE88;
  qword_1ED5DDE88 = v0;

  v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A4B7A8];
  v2 = qword_1ED5DDE88;
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v4, v5, objc_opt_class(), 0}];
  [v2 setClasses:v6 forSelector:sel_currentSubscriptionsForActivity_completion_ argumentIndex:0 ofReply:1];

  [qword_1ED5DDE88 setInterface:v7 forSelector:sel_setupActivityMonitorClient_forActivity_ argumentIndex:0 ofReply:0];
}

void sub_195B0F438(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195B0F4FC;
  v7[3] = &unk_1E743F110;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_195B0F510(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 service];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195B0F5E4;
  v7[3] = &unk_1E743FC50;
  v8 = *(a1 + 48);
  v6 = [v4 featureTogglerCollaboratorForService:v5 withErrorHandler:v7];

  [v6 retrieveFeatureToggleStateForOptions:*(a1 + 40) completion:*(a1 + 48)];
}

void sub_195B0F5E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A5270] FeatureToggler];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B417B0();
  }

  v5 = [v3 domain];
  if (![v5 isEqualToString:@"IDSXPCConnectionErrorDomain"])
  {

    goto LABEL_7;
  }

  v6 = [v3 code];

  if (v6 != -2000)
  {
LABEL_7:
    v7 = 2;
    goto LABEL_8;
  }

  v7 = 3;
LABEL_8:
  v8 = *(a1 + 32);
  v9 = [IDSFeatureToggleRetrievalResult resultWithError:v7];
  (*(v8 + 16))(v8, v9);
}

void sub_195B0F908(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195B0F9CC;
  v7[3] = &unk_1E743F110;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_195B0F9E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 service];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195B0FAB4;
  v7[3] = &unk_1E743FC50;
  v8 = *(a1 + 48);
  v6 = [v4 featureTogglerCollaboratorForService:v5 withErrorHandler:v7];

  [v6 updateFeatureToggleStateWithOptions:*(a1 + 40) completion:*(a1 + 48)];
}

void sub_195B0FAB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A5270] FeatureToggler];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B417B0();
  }

  v5 = [v3 domain];
  if (![v5 isEqualToString:@"IDSXPCConnectionErrorDomain"])
  {

    goto LABEL_7;
  }

  v6 = [v3 code];

  if (v6 != -2000)
  {
LABEL_7:
    v7 = 2;
    goto LABEL_8;
  }

  v7 = 3;
LABEL_8:
  v8 = *(a1 + 32);
  v9 = [IDSFeatureToggleUpdateResult resultWithError:v7];
  (*(v8 + 16))(v8, v9);
}

void sub_195B0FC48()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A53188];
  v1 = qword_1ED5DDE90;
  qword_1ED5DDE90 = v0;

  v2 = qword_1ED5DDE90;
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_updateFeatureToggleStateWithOptions_completion_ argumentIndex:0 ofReply:0];

  v4 = qword_1ED5DDE90;
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v4 setClasses:v5 forSelector:sel_updateFeatureToggleStateWithOptions_completion_ argumentIndex:0 ofReply:1];

  v6 = qword_1ED5DDE90;
  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v6 setClasses:v7 forSelector:sel_retrieveFeatureToggleStateForOptions_completion_ argumentIndex:0 ofReply:0];

  v8 = qword_1ED5DDE90;
  v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v8 setClasses:v9 forSelector:sel_retrieveFeatureToggleStateForOptions_completion_ argumentIndex:0 ofReply:1];
}

uint64_t sub_195B10418(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  return MEMORY[0x1EEE66B58](*(a1[4] + 8), sel_addListenerID_forService_);
}

void sub_195B105C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195B105E8(void *a1)
{
  result = [*(a1[4] + 8) removeListenerID:a1[5] forService:a1[6]];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

void sub_195B10920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195B10940(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195B10A18;
  v8[3] = &unk_1E7440DC0;
  v9 = *(a1 + 80);
  *(*(*(a1 + 88) + 8) + 24) = [v3 refreshIDStatusForDestinations:v2 service:v4 preferredFromID:v5 listenerID:v6 forceRefresh:0 queue:v7 completionBlock:v8];
}

void sub_195B10A18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v6 = v3;
    if ([v3 state])
    {
      (*(v4 + 16))(v4, MEMORY[0x1E695E0F8]);
    }

    else
    {
      v5 = [v6 value];
      (*(v4 + 16))(v4, v5);
    }

    v3 = v6;
  }
}

void sub_195B10DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195B10DD0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195B10EA8;
  v8[3] = &unk_1E7440DC0;
  v9 = *(a1 + 80);
  *(*(*(a1 + 88) + 8) + 24) = [v3 refreshIDStatusForDestinations:v2 service:v4 preferredFromID:v5 listenerID:v6 forceRefresh:1 queue:v7 completionBlock:v8];
}

void sub_195B10EA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v6 = v3;
    if ([v3 state])
    {
      (*(v4 + 16))(v4, MEMORY[0x1E695E0F8]);
    }

    else
    {
      v5 = [v6 value];
      (*(v4 + 16))(v4, v5);
    }

    v3 = v6;
  }
}

void sub_195B11240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195B11260(void *a1)
{
  result = [*(a1[4] + 8) refreshIDStatusForDestinations:a1[5] service:a1[6] preferredFromID:a1[7] listenerID:a1[8] forceRefresh:0 queue:a1[9] completionBlock:a1[10]];
  *(*(a1[11] + 8) + 24) = result;
  return result;
}

void sub_195B11538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_195B11558(void *a1)
{
  result = [*(a1[4] + 8) refreshIDStatusForDestination:a1[5] service:a1[6] preferredFromID:a1[7] listenerID:a1[8] queue:a1[9] completionBlock:a1[10]];
  *(*(a1[11] + 8) + 24) = result;
  return result;
}

void sub_195B11898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195B118B8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195B1198C;
  v8[3] = &unk_1E7440DC0;
  v9 = *(a1 + 80);
  *(*(*(a1 + 88) + 8) + 24) = [v3 requiredIDStatusForDestinations:v2 service:v4 preferredFromID:v5 listenerID:v6 queue:v7 completionBlock:v8];
}

void sub_195B1198C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v6 = v3;
    if ([v3 state])
    {
      (*(v4 + 16))(v4, MEMORY[0x1E695E0F8]);
    }

    else
    {
      v5 = [v6 value];
      (*(v4 + 16))(v4, v5);
    }

    v3 = v6;
  }
}