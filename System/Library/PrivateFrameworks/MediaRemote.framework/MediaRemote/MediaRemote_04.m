uint64_t __MRMediaRemoteServiceVirtualVoiceSetRecordingState_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
    v1 = vars8;
  }

  return kdebug_trace();
}

void MRMediaRemoteServiceAgentNotifyCallChanged(void *a1, uint64_t a2)
{
  kdebug_trace();
  v4 = a1;
  message = MRCreateXPCMessage(0xA00000000000001uLL);
  MRAddPropertyListToXPCMessage(message, a2, "MRXPC_AGENT_CALL_ID_KEY");
  v5 = [v4 connection];

  xpc_connection_send_message(v5, message);
}

void _MRMediaRemoteServiceCollectDiagnosticWithXPCMessage(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = v7;
  if (a3 && v7)
  {
    v9 = a2;
    v10 = a3;
    v11 = MRCreateXPCMessage(a1);
    v12 = [v9 connection];

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = ___MRMediaRemoteServiceCollectDiagnosticWithXPCMessage_block_invoke;
    handler[3] = &unk_1E769C4D0;
    v14 = v8;
    xpc_connection_send_message_with_reply(v12, v11, v10, handler);
  }
}

void MRMediaRemoteServicePostNotification(void *a1, void *a2, void *a3)
{
  kdebug_trace();
  v6 = a1;
  xdict = MRCreateXPCMessage(0x100000000000003uLL);
  UTF8String = _MRServiceGetUTF8String(a2);
  xpc_dictionary_set_string(xdict, "MRXPC_NOTIFICATION_NAME_KEY", UTF8String);
  v8 = MRCreateEncodedUserInfo(a3);
  v9 = [MEMORY[0x1E696AE40] dataWithPropertyList:v8 format:200 options:0 error:0];
  xpc_dictionary_set_data(xdict, "MRXPC_NOTIFICATION_USERINFO_DATA_KEY", [v9 bytes], objc_msgSend(v9, "length"));
  v10 = [v6 connection];

  xpc_connection_send_message(v10, xdict);
}

void MRMediaRemoteServicePostDelayedNotification(void *a1, void *a2, double a3)
{
  kdebug_trace();
  v6 = a1;
  xdict = MRCreateXPCMessage(0x10000000000000AuLL);
  UTF8String = _MRServiceGetUTF8String(a2);
  xpc_dictionary_set_string(xdict, "MRXPC_NOTIFICATION_NAME_KEY", UTF8String);
  xpc_dictionary_set_double(xdict, "MRXPC_NOTIFICATION_DELAY", a3);
  v8 = [v6 connection];

  xpc_connection_send_message(v8, xdict);
}

BOOL MRMediaRemoteServiceIsBooksAppInstalled(void *a1)
{
  kdebug_trace();
  v2 = [a1 mrXPCConnection];
  v7 = 0;
  v3 = [v2 sendSyncMessageWithType:0x100000000000016 error:&v7];
  v4 = v7;

  kdebug_trace();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = xpc_dictionary_get_BOOL(v3, "MRXPC_APP_INSTALLED_KEY");
  }

  return v5;
}

BOOL MRMediaRemoteServiceSystemMediaAppWake(void *a1)
{
  kdebug_trace();
  v2 = a1;
  v3 = MRCreateXPCMessage(0x100000000000010uLL);
  v4 = [v2 connection];

  v5 = xpc_connection_send_message_with_reply_sync(v4, v3);
  kdebug_trace();
  v7 = v5 != MEMORY[0x1E69E9E18] && v5 != MEMORY[0x1E69E9E20] && xpc_dictionary_get_BOOL(v5, "MRXPC_BOOL_RESULT_KEY");

  return v7;
}

void MRMediaRemoteServiceRegisterPairingHandler(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  kdebug_trace();
  v10 = a1;
  v11 = MRCreateXPCMessage(0x100000000000013uLL);
  MRAddStringToXPCMessage(v11, v9, "MRXPC_ROUTE_UID_KEY");

  v12 = [v10 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceRegisterPairingHandler_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v15 = v7;
  v13 = v7;
  xpc_connection_send_message_with_reply(v12, v11, v8, handler);
}

void __MRMediaRemoteServiceRegisterPairingHandler_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }

  kdebug_trace();
}

void MRMediaRemoteServiceUnregisterPairingHandler(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  kdebug_trace();
  v10 = a1;
  v11 = MRCreateXPCMessage(0x100000000000014uLL);
  MRAddStringToXPCMessage(v11, v9, "MRXPC_ROUTE_UID_KEY");

  v12 = [v10 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceUnregisterPairingHandler_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v15 = v7;
  v13 = v7;
  xpc_connection_send_message_with_reply(v12, v11, v8, handler);
}

void __MRMediaRemoteServiceUnregisterPairingHandler_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }

  kdebug_trace();
}

void MRMediaRemoteServiceCompletePairingHandler(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  kdebug_trace();
  v13 = a1;
  v14 = MRCreateXPCMessage(0x100000000000015uLL);
  MRAddStringToXPCMessage(v14, v12, "MRXPC_ROUTE_UID_KEY");

  MRAddStringToXPCMessage(v14, v11, "MRXPC_CUSTOM_DATA_KEY");
  v15 = [v13 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceCompletePairingHandler_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v18 = v9;
  v16 = v9;
  xpc_connection_send_message_with_reply(v15, v14, v10, handler);
}

void __MRMediaRemoteServiceCompletePairingHandler_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }

  kdebug_trace();
}

uint64_t MRMediaRemoteServiceBeginLoadingBrowsableContent(void *a1, void *a2, const void *a3, uint64_t a4)
{
  v7 = a2;
  kdebug_trace();
  v8 = a1;
  v9 = MRCreateXPCMessage(0x500000000000001uLL);
  MRAddStringToXPCMessage(v9, v7, "MRXPC_BUNDLE_ID_KEY");
  xpc_dictionary_set_data(v9, "MRXPC_INDEXPATH_DATA_KEY", a3, 8 * a4);

  v10 = [v8 connection];

  xpc_connection_send_message(v10, v9);
  return 0;
}

void MRMediaRemoteServiceCopyBrowsableContentNowPlayingIdentifiers(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  kdebug_trace();
  v10 = a1;
  v11 = MRCreateXPCMessage(0x500000000000002uLL);
  MRAddStringToXPCMessage(v11, v9, "MRXPC_BUNDLE_ID_KEY");

  v12 = [v10 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceCopyBrowsableContentNowPlayingIdentifiers_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v15 = v7;
  v13 = v7;
  xpc_connection_send_message_with_reply(v12, v11, v8, handler);
}

void __MRMediaRemoteServiceCopyBrowsableContentNowPlayingIdentifiers_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();
  }

  else
  {
    length = 0;
    data = xpc_dictionary_get_data(v3, "MRXPC_CONTENT_NOW_PLAYING_IDENTIFIERS_KEY", &length);
    if (data)
    {
      v7 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:data length:length freeWhenDone:0];
      v8 = [MEMORY[0x1E696AE40] propertyListWithData:v7 options:0 format:0 error:0];

      goto LABEL_10;
    }
  }

  v8 = 0;
LABEL_10:
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v8);
  }

  kdebug_trace();
}

void MRMediaRemoteServiceGetBrowsableContentSupportsPlaybackProgress(void *a1, void *a2, const void *a3, uint64_t a4, void *a5, void *a6)
{
  v11 = a6;
  v12 = a5;
  v13 = a2;
  kdebug_trace();
  v14 = a1;
  v15 = MRCreateXPCMessage(0x500000000000003uLL);
  MRAddStringToXPCMessage(v15, v13, "MRXPC_BUNDLE_ID_KEY");
  xpc_dictionary_set_data(v15, "MRXPC_INDEXPATH_DATA_KEY", a3, 8 * a4);

  v16 = [v14 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceGetBrowsableContentSupportsPlaybackProgress_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v19 = v11;
  v17 = v11;
  xpc_connection_send_message_with_reply(v16, v15, v12, handler);
}

void __MRMediaRemoteServiceGetBrowsableContentSupportsPlaybackProgress_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20];
  v7 = v3;
  if (v4)
  {
    _MRServiceLogReplyError();
    v5 = 0;
  }

  else
  {
    v5 = xpc_dictionary_get_BOOL(v3, "MRXPC_CONTENT_SUPPORTS_PLAYBACK_PROGRESS_KEY");
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }

  kdebug_trace();
}

void MRMediaRemoteServiceGetCountOfBrowsableContentChildItems(void *a1, void *a2, const void *a3, uint64_t a4, void *a5, void *a6)
{
  v11 = a6;
  v12 = a5;
  v13 = a2;
  kdebug_trace();
  v14 = a1;
  v15 = MRCreateXPCMessage(0x500000000000004uLL);
  MRAddStringToXPCMessage(v15, v13, "MRXPC_BUNDLE_ID_KEY");
  xpc_dictionary_set_data(v15, "MRXPC_INDEXPATH_DATA_KEY", a3, 8 * a4);

  v16 = [v14 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceGetCountOfBrowsableContentChildItems_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v19 = v11;
  v17 = v11;
  xpc_connection_send_message_with_reply(v16, v15, v12, handler);
}

void __MRMediaRemoteServiceGetCountOfBrowsableContentChildItems_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20];
  v7 = v3;
  if (v4)
  {
    _MRServiceLogReplyError();
    uint64 = 0;
  }

  else
  {
    uint64 = xpc_dictionary_get_uint64(v3, "MRXPC_CONTENT_CHILD_ITEMS_COUNT_KEY");
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, uint64);
  }

  kdebug_trace();
}

void MRMediaRemoteServiceCopyBrowsableContentChildItems(void *a1, void *a2, const void *a3, uint64_t a4, int64_t a5, int64_t a6, void *a7, void *a8)
{
  v15 = a8;
  v16 = a7;
  v17 = a2;
  kdebug_trace();
  v18 = a1;
  v19 = MRCreateXPCMessage(0x500000000000005uLL);
  MRAddStringToXPCMessage(v19, v17, "MRXPC_BUNDLE_ID_KEY");
  xpc_dictionary_set_data(v19, "MRXPC_INDEXPATH_DATA_KEY", a3, 8 * a4);

  xpc_dictionary_set_int64(v19, "MRXPC_RANGE_BEGIN_KEY", a5);
  xpc_dictionary_set_int64(v19, "MRXPC_RANGE_LENGTH_KEY", a6);
  v20 = [v18 connection];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __MRMediaRemoteServiceCopyBrowsableContentChildItems_block_invoke;
  handler[3] = &unk_1E769C4D0;
  v23 = v15;
  v21 = v15;
  xpc_connection_send_message_with_reply(v20, v19, v16, handler);
}

void __MRMediaRemoteServiceCopyBrowsableContentChildItems_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20];
  v7 = v3;
  if (v4)
  {
    _MRServiceLogReplyError();
    v5 = 0;
  }

  else
  {
    v5 = MRCreateContentItemsFromXPCMessage(v3);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }

  kdebug_trace();
}

void MRMediaRemoteServiceRequestPlaybackInitialization(void *a1, void *a2, const void *a3, uint64_t a4)
{
  v7 = a2;
  kdebug_trace();
  v8 = a1;
  xdict = MRCreateXPCMessage(0x500000000000006uLL);
  MRAddStringToXPCMessage(xdict, v7, "MRXPC_BUNDLE_ID_KEY");
  xpc_dictionary_set_data(xdict, "MRXPC_INDEXPATH_DATA_KEY", a3, 8 * a4);

  v9 = [v8 connection];

  xpc_connection_send_message(v9, xdict);
}

void MRMediaRemoteServiceGetSupportedBrowsableContentAPI(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  kdebug_trace();
  if (v8 && v9)
  {
    v10 = a1;
    v11 = MRCreateXPCMessage(0x500000000000007uLL);
    MRAddStringToXPCMessage(v11, v7, "MRXPC_BUNDLE_ID_KEY");
    v12 = [v10 connection];

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __MRMediaRemoteServiceGetSupportedBrowsableContentAPI_block_invoke;
    handler[3] = &unk_1E769C4D0;
    v14 = v9;
    xpc_connection_send_message_with_reply(v12, v11, v8, handler);
  }

  else
  {
    kdebug_trace();
  }
}

void __MRMediaRemoteServiceGetSupportedBrowsableContentAPI_block_invoke(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x1E69E9E18];
  v5 = a2;
  v6 = v5;
  if (a2 == v4 || a2 == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();

    Error = MRMediaRemoteCreateError(1);
  }

  else
  {
    xpc_dictionary_get_uint64(v5, "MRXPC_CONTENT_API_MASK_KEY");
    Error = MRCreateClientErrorFromXPCMessage(v6);
  }

  (*(*(a1 + 32) + 16))();
  kdebug_trace();
}

void MRMediaRemoteServiceGetAppsSupportingBrowsableContentAPIs(void *a1, unsigned int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  kdebug_trace();
  if (v7 && v8)
  {
    v9 = a1;
    v10 = MRCreateXPCMessage(0x500000000000009uLL);
    xpc_dictionary_set_uint64(v10, "MRXPC_CONTENT_API_MASK_KEY", a2);
    v11 = [v9 connection];

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __MRMediaRemoteServiceGetAppsSupportingBrowsableContentAPIs_block_invoke;
    handler[3] = &unk_1E769C4D0;
    v13 = v8;
    xpc_connection_send_message_with_reply(v11, v10, v7, handler);
  }

  else
  {
    kdebug_trace();
  }
}

void __MRMediaRemoteServiceGetAppsSupportingBrowsableContentAPIs_block_invoke(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x1E69E9E18];
  v5 = a2;
  v6 = v5;
  if (a2 == v4 || a2 == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();

    Error = MRMediaRemoteCreateError(1);
    v9 = 0;
  }

  else
  {
    Error = _MRServiceCreateGenericErrorFromReply(v5);
    v9 = MRCreatePropertyListFromXPCMessage(v6, "MRXPC_BUNDLE_ID_ARRAY_DATA_KEY");
  }

  (*(*(a1 + 32) + 16))();
  kdebug_trace();
}

void MRMediaRemoteServiceSetSupportedBrowsableContentAPI(void *a1, unsigned int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  kdebug_trace();
  v9 = a1;
  v10 = MRCreateXPCMessage(0x500000000000008uLL);
  xpc_dictionary_set_uint64(v10, "MRXPC_CONTENT_API_MASK_KEY", a2);
  v11 = [v9 connection];

  if (v7 && v8)
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __MRMediaRemoteServiceSetSupportedBrowsableContentAPI_block_invoke;
    handler[3] = &unk_1E769C4D0;
    v13 = v8;
    xpc_connection_send_message_with_reply(v11, v10, v7, handler);
  }

  else
  {
    xpc_connection_send_message(v11, v10);

    kdebug_trace();
  }
}

uint64_t __MRMediaRemoteServiceSetSupportedBrowsableContentAPI_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  if (xdict == MEMORY[0x1E69E9E18] || xdict == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();
  }

  else
  {
    xpc_dictionary_get_uint64(xdict, "MRXPC_ERROR_CODE_KEY");
  }

  (*(*(a1 + 32) + 16))();

  return kdebug_trace();
}

void MRMediaRemoteServicePostBrowsableContentNotification(void *a1, void *a2, void *a3)
{
  if (a3)
  {
    v5 = [a3 mutableCopy];
  }

  else
  {
    v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  }

  v8 = v5;
  v6 = [MEMORY[0x1E696AAE8] mainBundle];
  v7 = [v6 bundleIdentifier];
  [v8 setObject:v7 forKeyedSubscript:@"kMRMediaRemoteBrowsableContentBundleIdentifierUserInfoKey"];

  MRMediaRemoteServicePostNotification(a1, a2, v8);
}

void MRMediaRemoteServiceGetContentItemsForIdentifiers(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v11 = a3;
  v12 = a2;
  kdebug_trace();
  v13 = a1;
  v14 = MRCreateXPCMessage(0x50000000000000AuLL);
  MRAddStringToXPCMessage(v14, v12, "MRXPC_BUNDLE_ID_KEY");

  MRAddPropertyListToXPCMessage(v14, v11, "MRXPC_CONTENT_IDENTIFIERS");
  v15 = [v13 connection];

  if (v9 && v10)
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __MRMediaRemoteServiceGetContentItemsForIdentifiers_block_invoke;
    handler[3] = &unk_1E769C4D0;
    v17 = v10;
    xpc_connection_send_message_with_reply(v15, v14, v9, handler);
  }

  else
  {
    xpc_connection_send_message(v15, v14);

    kdebug_trace();
  }
}

void __MRMediaRemoteServiceGetContentItemsForIdentifiers_block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18] || v3 == MEMORY[0x1E69E9E20])
  {
    _MRServiceLogReplyError();
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v7 = MRCreateClientErrorFromXPCMessage(v3);
    v8 = MRCreateContentItemsFromXPCMessage(v4);
    v9 = v8;
    if (v8)
    {
      v18 = a1;
      v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v8, "count")}];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v20;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v19 + 1) + 8 * i);
            v16 = [v15 identifier];
            [v6 setObject:v15 forKeyedSubscript:v16];
          }

          v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v12);
      }

      a1 = v18;
    }

    else
    {
      v6 = 0;
    }
  }

  (*(*(a1 + 32) + 16))();
  kdebug_trace();

  v17 = *MEMORY[0x1E69E9840];
}

BOOL MRMediaRemoteServiceRequestBless(void *a1)
{
  kdebug_trace();
  v2 = a1;
  v3 = MRCreateXPCMessage(0x100000000000012uLL);
  v4 = [v2 connection];

  v5 = xpc_connection_send_message_with_reply_sync(v4, v3);
  kdebug_trace();
  v7 = v5 != MEMORY[0x1E69E9E18] && v5 != MEMORY[0x1E69E9E20] && xpc_dictionary_get_BOOL(v5, "MRXPC_BOOL_RESULT_KEY");

  return v7;
}

BOOL MRMediaRemoteServiceWakePlayerServiceProcess(void *a1)
{
  kdebug_trace();
  v2 = a1;
  v3 = MRCreateXPCMessage(0x100000000000011uLL);
  v4 = [v2 connection];

  v5 = xpc_connection_send_message_with_reply_sync(v4, v3);
  kdebug_trace();
  v7 = v5 != MEMORY[0x1E69E9E18] && v5 != MEMORY[0x1E69E9E20] && xpc_dictionary_get_BOOL(v5, "MRXPC_BOOL_RESULT_KEY");

  return v7;
}

void _MRServiceSendReply(void *a1, uint64_t a2)
{
  original = a1;
  v3 = xpc_dictionary_get_remote_connection(original);
  if (v3)
  {
    reply = xpc_dictionary_create_reply(original);
    v5 = reply;
    if (reply)
    {
      xpc_dictionary_set_uint64(reply, "MRXPC_ERROR_CODE_KEY", a2);
      xpc_connection_send_message(v3, v5);
    }
  }
}

void _MRServiceSendReplyWithClientError(void *a1, uint64_t a2)
{
  original = a1;
  v3 = xpc_dictionary_get_remote_connection(original);
  if (v3)
  {
    reply = xpc_dictionary_create_reply(original);
    v5 = reply;
    if (reply)
    {
      MRAddClientErrorToXPCMessage(reply, a2);
      xpc_connection_send_message(v3, v5);
    }
  }
}

uint64_t _MRApplicationConnectionRequestInfoProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_MRDeviceInfoMessageProtobuf);
        objc_storeStrong((a1 + 16), v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_MRDeviceInfoMessageProtobufReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_MRNowPlayingClientProtobuf);
    objc_storeStrong((a1 + 8), v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_MRNowPlayingClientProtobufReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

void sub_1A2922340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 160), 8);
  objc_destroyWeak((v33 - 120));
  _Unwind_Resume(a1);
}

void sub_1A2922C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _MRGetVoiceInputDevicesMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRApplicationConnectionProtocolMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_MRApplicationConnectionMessageProtobuf);
        objc_storeStrong((a1 + 8), v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_MRApplicationConnectionMessageProtobufReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_MRApplicationConnectionContextProtobuf);
    objc_storeStrong((a1 + 16), v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_MRApplicationConnectionContextProtobufReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

__CFString *NSStringFromMROriginType(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"Custom";
  }

  else
  {
    return @"Local";
  }
}

uint64_t _MRSetArtworkMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1A29268D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  _Block_object_dispose((v28 - 144), 8);
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MobileKeyBagLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MobileKeyBagLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E769C9A0;
    v7 = 0;
    MobileKeyBagLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = MobileKeyBagLibraryCore_frameworkLibrary;
  if (!MobileKeyBagLibraryCore_frameworkLibrary)
  {
    __getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "MKBDeviceUnlockedSinceBoot");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBDeviceUnlockedSinceBootSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MobileKeyBagLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MobileKeyBagLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id soft_BiomeLibrary()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getBiomeLibrarySymbolLoc_ptr;
  v7 = getBiomeLibrarySymbolLoc_ptr;
  if (!getBiomeLibrarySymbolLoc_ptr)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getBiomeLibrarySymbolLoc_block_invoke;
    v3[3] = &unk_1E769ADA8;
    v3[4] = &v4;
    __getBiomeLibrarySymbolLoc_block_invoke(v3);
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    soft_BiomeLibrary_cold_1();
  }

  v1 = v0();

  return v1;
}

void sub_1A292A91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A292B32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A292B5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getBiomeLibrarySymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!BiomeLibraryLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __BiomeLibraryLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E769CB38;
    v7 = 0;
    BiomeLibraryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = BiomeLibraryLibraryCore_frameworkLibrary;
  if (!BiomeLibraryLibraryCore_frameworkLibrary)
  {
    __getBiomeLibrarySymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "BiomeLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBiomeLibrarySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __BiomeLibraryLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BiomeLibraryLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getBMPublisherOptionsClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!BiomeStreamsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __BiomeStreamsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E769CB50;
    v6 = 0;
    BiomeStreamsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!BiomeStreamsLibraryCore_frameworkLibrary)
  {
    __getBMPublisherOptionsClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("BMPublisherOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBMPublisherOptionsClass_block_invoke_cold_1();
  }

  getBMPublisherOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __BiomeStreamsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BiomeStreamsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getINPlayMediaIntentClass_block_invoke(uint64_t a1)
{
  IntentsLibrary_0();
  result = objc_getClass("INPlayMediaIntent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINPlayMediaIntentClass_block_invoke_cold_1();
  }

  getINPlayMediaIntentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void IntentsLibrary_0()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!IntentsLibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __IntentsLibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E769CB68;
    v3 = 0;
    IntentsLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!IntentsLibraryCore_frameworkLibrary_0)
  {
    IntentsLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t __IntentsLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IntentsLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getINInteractionClass_block_invoke_0(uint64_t a1)
{
  IntentsLibrary_0();
  result = objc_getClass("INInteraction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINInteractionClass_block_invoke_cold_1();
  }

  getINInteractionClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getINSchemaClass_block_invoke(uint64_t a1)
{
  IntentsLibrary_0();
  result = objc_getClass("INSchema");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINSchemaClass_block_invoke_cold_1();
  }

  getINSchemaClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t _MRSendCommandResultProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v26) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_MRNowPlayingPlayerPathProtobuf);
          objc_storeStrong((a1 + 16), v14);
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !_MRNowPlayingPlayerPathProtobufReadFrom(&v14->super.super.isa, a2))
          {
LABEL_50:

            return 0;
          }

          goto LABEL_41;
        }

        if (v13 == 2)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 48) |= 1u;
          while (1)
          {
            LOBYTE(v26) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v26 & 0x7F) << v15;
            if ((v26 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_47;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_47:
          *(a1 + 24) = v21;
          goto LABEL_48;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(_MRSendCommandResultStatusProtobuf);
            [a1 addStatuses:v14];
            v26 = 0;
            v27 = 0;
            if (!PBReaderPlaceMark() || !_MRSendCommandResultStatusProtobufReadFrom(v14, a2))
            {
              goto LABEL_50;
            }

            goto LABEL_41;
          case 4:
            v22 = PBReaderReadString();
            v23 = *(a1 + 32);
            *(a1 + 32) = v22;

            goto LABEL_48;
          case 5:
            v14 = objc_alloc_init(_MRErrorProtobuf);
            objc_storeStrong((a1 + 8), v14);
            v26 = 0;
            v27 = 0;
            if (!PBReaderPlaceMark() || !_MRErrorProtobufReadFrom(v14, a2))
            {
              goto LABEL_50;
            }

LABEL_41:
            PBReaderRecallMark();

            goto LABEL_48;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_48:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRGenericMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = &OBJC_IVAR____MRGenericMessageProtobuf__key;
LABEL_21:
        v15 = *v14;
        v16 = *(a1 + v15);
        *(a1 + v15) = v13;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = PBReaderReadData();
    v14 = &OBJC_IVAR____MRGenericMessageProtobuf__data;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRDiagnosticProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v21 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v21 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v21 & 0x7F) << v5;
        if ((v21 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = PBReaderReadString();
        v16 = *(a1 + 16);
        *(a1 + 16) = v15;
      }

      else if ((v12 >> 3) == 1)
      {
        *(a1 + 24) |= 1u;
        v20 = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v18 = [a2 data];
          [v18 getBytes:&v20 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v20;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v19 = [a2 position];
    }

    while (v19 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1A292EAD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _MRAVRouteQueryProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRAVAirPlaySecuritySettingsProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 16) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1A2933280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A29336A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_23(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

uint64_t _MRPromptForRouteAuthorizationResponseMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1A29388E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2939638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A29399DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1A2939BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t _MRAnimatedArtworkProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = &OBJC_IVAR____MRAnimatedArtworkProtobuf__type;
LABEL_21:
        v15 = *v14;
        v16 = *(a1 + v15);
        *(a1 + v15) = v13;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = PBReaderReadData();
    v14 = &OBJC_IVAR____MRAnimatedArtworkProtobuf__assetFileURLData;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRLyricsItemProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v26[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = objc_alloc_init(_MRLyricsTokenProtobuf);
        objc_storeStrong((a1 + 16), v23);
        v26[0] = 0;
        v26[1] = 0;
        if (!PBReaderPlaceMark() || !_MRLyricsTokenProtobufReadFrom(v23, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 2)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v26[0] & 0x7F) << v16;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_36;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_36:
        *(a1 + 24) = v22;
      }

      else if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = *(a1 + 8);
        *(a1 + 8) = v14;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1A2940E1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t MRMediaRemoteCopyCommandsDescription(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = MRMediaRemoteGetCommandDescription([*(*(&v12 + 1) + 8 * v7) longValue]);
        [v2 addObject:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@", v2];
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

CFStringRef MRMediaRemoteCopyCommandHandlerStatusDescription(int a1)
{
  if (a1 > 102)
  {
    if (a1 <= 107)
    {
      if (a1 <= 104)
      {
        if (a1 == 103)
        {
          v1 = @"UserQueueModificationNotSupportedForCurrentItem";
        }

        else
        {
          v1 = @"SubscriptionRequiredForSharedQueue";
        }
      }

      else if (a1 == 105)
      {
        v1 = @"InsertionPositionNotSpecified";
      }

      else if (a1 == 106)
      {
        v1 = @"InvalidInsertionPosition";
      }

      else
      {
        v1 = @"RequestParametersOutOfBounds";
      }

      return CFStringCreateCopy(*MEMORY[0x1E695E480], v1);
    }

    if (a1 <= 403)
    {
      if (a1 == 108)
      {
        v1 = @"SkipLimitReached";
        return CFStringCreateCopy(*MEMORY[0x1E695E480], v1);
      }

      if (a1 == 401)
      {
        v1 = @"AuthenticationFailure";
        return CFStringCreateCopy(*MEMORY[0x1E695E480], v1);
      }
    }

    else
    {
      switch(a1)
      {
        case 404:
          v1 = @"UnsupportedCommand";
          return CFStringCreateCopy(*MEMORY[0x1E695E480], v1);
        case 501:
          v1 = @"MediaServicesUnavailable";
          return CFStringCreateCopy(*MEMORY[0x1E695E480], v1);
        case 555:
          v1 = @"Timeout";
          return CFStringCreateCopy(*MEMORY[0x1E695E480], v1);
      }
    }
  }

  else if (a1 > 9)
  {
    if (a1 > 99)
    {
      if (a1 == 100)
      {
        v1 = @"SkipAdProhibited";
      }

      else if (a1 == 101)
      {
        v1 = @"QueueIsUserCurated";
      }

      else
      {
        v1 = @"UserModifiedQueueDisabled";
      }

      return CFStringCreateCopy(*MEMORY[0x1E695E480], v1);
    }

    if (a1 == 10)
    {
      v1 = @"NoActionableNowPlayingItem";
      return CFStringCreateCopy(*MEMORY[0x1E695E480], v1);
    }

    if (a1 == 20)
    {
      v1 = @"DeviceNotFound";
      return CFStringCreateCopy(*MEMORY[0x1E695E480], v1);
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      v1 = @"Success";
      return CFStringCreateCopy(*MEMORY[0x1E695E480], v1);
    }

    if (a1 == 1)
    {
      v1 = @"NoSuchContent";
      return CFStringCreateCopy(*MEMORY[0x1E695E480], v1);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v1 = @"CommandFailed";
        return CFStringCreateCopy(*MEMORY[0x1E695E480], v1);
      case 3:
        v1 = @"UIKitLegacy";
        return CFStringCreateCopy(*MEMORY[0x1E695E480], v1);
      case 4:
        v1 = @"CannotModifyQueueWithPlaybackTokenItems";
        return CFStringCreateCopy(*MEMORY[0x1E695E480], v1);
    }
  }

  return 0;
}

CFStringRef MRMediaRemoteCopySendCommandErrorDescription(uint64_t a1)
{
  if ((a1 + 1) >= 0x1C)
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownErrorCode-%u", a1];
  }

  else
  {
    v1 = off_1E769D318[(a1 + 1)];
  }

  Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], v1);
  CFRelease(v1);
  return Copy;
}

__CFString *MRMediaRemoteSendCommandErrorDescription(uint64_t a1)
{
  v1 = MRMediaRemoteCopySendCommandErrorDescription(a1);

  return v1;
}

CFStringRef MRMediaRemoteCopyShuffleModeDescription(int a1)
{
  if ((a1 - 1) > 2)
  {
    v1 = @"<Unknown>";
  }

  else
  {
    v1 = off_1E769D3F8[a1 - 1];
  }

  return CFStringCreateCopy(*MEMORY[0x1E695E480], v1);
}

CFStringRef MRMediaRemoteCopyRepeatModeDescription(int a1)
{
  if ((a1 - 1) > 2)
  {
    v1 = @"<Unknown>";
  }

  else
  {
    v1 = off_1E769D410[a1 - 1];
  }

  return CFStringCreateCopy(*MEMORY[0x1E695E480], v1);
}

CFStringRef MRMediaRemoteCopyHardwareRemoteBehaviorDescription(int a1)
{
  if (!a1)
  {
    v1 = @"Default";
    return CFStringCreateCopy(*MEMORY[0x1E695E480], v1);
  }

  if (a1 == 1)
  {
    v1 = @"ForegroundReceiver";
    return CFStringCreateCopy(*MEMORY[0x1E695E480], v1);
  }

  return 0;
}

uint64_t MRMediaRemoteCommandCreateExternalRepresentation(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(_MRSendCommandMessageProtobuf);
  [(_MRSendCommandMessageProtobuf *)v4 setCommand:MRMediaRemoteCommandToProtobuf(a1)];
  v5 = MRMediaRemoteCommandOptionsToProtobuf(a2);
  [(_MRSendCommandMessageProtobuf *)v4 setOptions:v5];

  v6 = [(_MRSendCommandMessageProtobuf *)v4 data];
  v7 = [v6 copy];

  return v7;
}

void MRMediaRemoteCommandFromExternalRepresentation(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [[_MRSendCommandMessageProtobuf alloc] initWithData:a1];
  v4 = MRMediaRemoteCommandFromProtobuf([(_MRSendCommandMessageProtobuf *)v7 command]);
  v5 = [(_MRSendCommandMessageProtobuf *)v7 options];
  v6 = MRMediaRemoteCommandOptionsFromProtobuf(v5);

  v3[2](v3, v4, v6);
}

uint64_t MRMediaRemoteCommandIsLegacy(unsigned int a1)
{
  result = 1;
  if (a1 > 0x15 || ((1 << a1) & 0x20FFFF) == 0)
  {
    v3 = a1 - 100;
    if (v3 > 0xF || ((1 << v3) & 0xF87F) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t MRMediaRemoteCopyCommandHandlerStatusesDescription(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v1, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = MRMediaRemoteCopyCommandHandlerStatusDescription([v8 unsignedIntValue]);
          if (v9)
          {
            [v2 addObject:v9];
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          v9 = v8;
          v10 = [MRPlayerPath alloc];
          v11 = [(MRPlayerPath *)v10 initWithData:v9, v17];
          v12 = v11;
          if (!v11)
          {
            v11 = v9;
          }

          v13 = [(MRPlayerPath *)v11 description];
          [v2 addObject:v13];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v14 = [v2 description];

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

id MRMediaRemoteCommandCreateDescription(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = MRMediaRemoteGetCommandDescription(a1);
  v7 = [v5 mutableCopy];

  v8 = [(__CFString *)v7 objectForKeyedSubscript:@"kMRMediaRemoteOptionSenderID"];
  [(__CFString *)v7 removeObjectForKey:@"kMRMediaRemoteOptionSenderID"];
  v9 = [(__CFString *)v7 objectForKeyedSubscript:@"kMRMediaRemoteOptionCommandID"];
  [(__CFString *)v7 removeObjectForKey:@"kMRMediaRemoteOptionCommandID"];
  v10 = [(__CFString *)v7 objectForKeyedSubscript:@"kMRMediaRemoteOptionRemoteControlInterfaceIdentifier"];
  [(__CFString *)v7 removeObjectForKey:@"kMRMediaRemoteOptionRemoteControlInterfaceIdentifier"];
  v11 = [(__CFString *)v7 objectForKeyedSubscript:@"kMRMediaRemoteOptionSendOptionsNumber"];
  [(__CFString *)v7 removeObjectForKey:@"kMRMediaRemoteOptionSendOptionsNumber"];
  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13 = @"not included";
  if (a3)
  {
    v13 = v7;
  }

  v14 = [v12 initWithFormat:@"Command = <%@>, %@, commandID = <%@>, remote control interface = <%@>, appOptions = <%@>, options = <%@>", v6, v8, v9, v10, v11, v13];

  return v14;
}

id MRMediaRemoteErrorFromCommandStatuses(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = MRMediaRemoteCopySendCommandErrorDescription(a1);
    v6 = 26;
    switch(a1)
    {
      case 1:
        v6 = 4;
        break;
      case 2:
        v6 = 100;
        break;
      case 5:
        break;
      case 6:
        v6 = 5;
        break;
      case 7:
        v6 = 2;
        break;
      case 8:
        v6 = 44;
        break;
      case 12:
        v6 = 46;
        break;
      case 13:
        v6 = 47;
        break;
      case 14:
        v6 = 48;
        break;
      case 18:
        v6 = 35;
        break;
      case 21:
        v6 = 28;
        break;
      case 22:
        v6 = 135;
        break;
      case 23:
        v6 = 133;
        break;
      case 24:
        v6 = 140;
        break;
      case 25:
        v6 = 137;
        break;
      default:
        v6 = 1;
        break;
    }

LABEL_14:
    ErrorWithDescription = MRMediaRemoteCreateErrorWithDescription(v6, v5);
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if ([*(*(&v15 + 1) + 8 * i) intValue])
          {
            v5 = MRMediaRemoteCopyCommandHandlerStatusesDescription(v7);

            v6 = 187;
            goto LABEL_14;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
    ErrorWithDescription = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return ErrorWithDescription;
}

uint64_t MRMediaRemoteSendErrorFromError(void *a1, void *a2)
{
  v3 = a1;
  if (!v3)
  {
    MRMediaRemoteSendErrorFromError_cold_1();
  }

  v4 = [v3 domain];
  v5 = [v4 isEqualToString:@"kMRMediaRemoteFrameworkErrorDomain"];

  if ((v5 & 1) == 0)
  {
    MRMediaRemoteSendErrorFromError_cold_2();
  }

  v6 = [v3 code];
  v7 = [v3 userInfo];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696A588]];

  if ([v3 mr_isMediaRemoteError])
  {
    if (v6 > 120)
    {
      if (v6 > 134)
      {
        if (v6 <= 137)
        {
          if (v6 == 135)
          {
            v9 = 22;
            goto LABEL_15;
          }

          if (v6 == 137)
          {
            v9 = 25;
            goto LABEL_15;
          }

          goto LABEL_43;
        }

        if (v6 == 138)
        {
          v9 = 26;
          goto LABEL_15;
        }

        if (v6 != 140)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v6 <= 130)
        {
          if (v6 != 121)
          {
            if (v6 == 126)
            {
              v9 = 15;
              goto LABEL_15;
            }

            goto LABEL_43;
          }

LABEL_33:
          v9 = 2;
          goto LABEL_15;
        }

        if (v6 != 131)
        {
          if (v6 == 134)
          {
            goto LABEL_36;
          }

LABEL_43:
          v9 = 0xFFFFFFFFLL;
          goto LABEL_15;
        }
      }

      v9 = 24;
      goto LABEL_15;
    }

    if (v6 > 46)
    {
      if (v6 <= 99)
      {
        if (v6 == 47)
        {
          v9 = 13;
          goto LABEL_15;
        }

        if (v6 == 48)
        {
          v9 = 14;
          goto LABEL_15;
        }

        goto LABEL_43;
      }

      if (v6 == 100 || v6 == 117)
      {
        goto LABEL_33;
      }

      goto LABEL_43;
    }

    if (v6 != 1)
    {
      if (v6 != 28)
      {
        if (v6 == 35)
        {
          v9 = 18;
          goto LABEL_15;
        }

        goto LABEL_43;
      }

LABEL_36:
      v9 = 21;
      goto LABEL_15;
    }

    v9 = 11;
  }

  else if (v3)
  {
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = 0;
  }

LABEL_15:
  if (a2)
  {
    v10 = v8;
    *a2 = v8;
  }

  return v9;
}

BOOL MRMediaRemoteShouldWakeSystemForCommand(int a1)
{
  result = 1;
  if ((a1 - 122) > 0x10 || ((1 << (a1 - 122)) & 0x1C801) == 0)
  {
    return !a1 || a1 == 2;
  }

  return result;
}

uint64_t _MRUpdateActiveSystemEndpointRequestProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v51 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v51 & 0x7F) << v5;
        if ((v51 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v40 = 0;
            v41 = 0;
            v42 = 0;
            *(a1 + 60) |= 8u;
            while (1)
            {
              v53 = 0;
              v43 = [a2 position] + 1;
              if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
              {
                v45 = [a2 data];
                [v45 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v42 |= (v53 & 0x7F) << v40;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v40 += 7;
              v11 = v41++ >= 9;
              if (v11)
              {
                LOBYTE(v29) = 0;
                goto LABEL_78;
              }
            }

            v29 = (v42 != 0) & ~[a2 hasError];
LABEL_78:
            v47 = 56;
LABEL_85:
            *(a1 + v47) = v29;
            goto LABEL_88;
          }

          if (v13 != 8)
          {
LABEL_71:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_88;
          }

          v30 = PBReaderReadString();
          v31 = 40;
          goto LABEL_61;
        }

        if (v13 == 5)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          *(a1 + 60) |= 2u;
          while (1)
          {
            v55 = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v34 |= (v55 & 0x7F) << v32;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v11 = v33++ >= 9;
            if (v11)
            {
              v38 = 0;
              goto LABEL_76;
            }
          }

          if ([a2 hasError])
          {
            v38 = 0;
          }

          else
          {
            v38 = v34;
          }

LABEL_76:
          *(a1 + 16) = v38;
        }

        else
        {
          if (v13 != 6)
          {
            goto LABEL_71;
          }

          *(a1 + 60) |= 1u;
          v50 = 0;
          v21 = [a2 position] + 8;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v50 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v50;
        }
      }

      else
      {
        if (v13 > 2)
        {
          if (v13 != 3)
          {
            if (v13 != 4)
            {
              goto LABEL_71;
            }

            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 60) |= 0x10u;
            while (1)
            {
              v54 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v54 & 0x7F) << v23;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                LOBYTE(v29) = 0;
                goto LABEL_84;
              }
            }

            v29 = (v25 != 0) & ~[a2 hasError];
LABEL_84:
            v47 = 57;
            goto LABEL_85;
          }

          v30 = PBReaderReadString();
          v31 = 48;
          goto LABEL_61;
        }

        if (v13 == 1)
        {
          v30 = PBReaderReadString();
          v31 = 32;
LABEL_61:
          v39 = *(a1 + v31);
          *(a1 + v31) = v30;

          goto LABEL_88;
        }

        if (v13 != 2)
        {
          goto LABEL_71;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 60) |= 4u;
        while (1)
        {
          v52 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v52 & 0x7F) << v14;
          if ((v52 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_82;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_82:
        *(a1 + 24) = v20;
      }

LABEL_88:
      v49 = [a2 position];
    }

    while (v49 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRUpdateClientMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_MRNowPlayingClientProtobuf);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_MRNowPlayingClientProtobufReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRRegisterHIDDeviceResultMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 16) |= 2u;
        while (1)
        {
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR____MRRegisterHIDDeviceResultMessageProtobuf__errorCode;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR____MRRegisterHIDDeviceResultMessageProtobuf__errorCode;
LABEL_41:
        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v15;
        }

LABEL_44:
        *(a1 + *v21) = v20;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 16) |= 1u;
    while (1)
    {
      v30 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v30 & 0x7F) << v22;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR____MRRegisterHIDDeviceResultMessageProtobuf__deviceIdentifier;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR____MRRegisterHIDDeviceResultMessageProtobuf__deviceIdentifier;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRGameControllerPropertiesMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = objc_alloc_init(_MRGameControllerPropertiesProtobuf);
        objc_storeStrong((a1 + 16), v20);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !_MRGameControllerPropertiesProtobufReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        *(a1 + 8) = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRAudioFadeResponseMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1A294A3D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A294A538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A294EC18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose((v67 - 256), 8);
  _Block_object_dispose((v67 - 208), 8);
  _Block_object_dispose((v67 - 160), 8);
  _Block_object_dispose((v67 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1A295216C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2952408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2953444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A29538E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _MRSendPackedVirtualTouchEventMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

_MRGameControllerAccelerationProtobuf *MRGameControllerAccelerationCreate(double a1, double a2, double a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v7 length:24];
  v4 = objc_alloc_init(_MRGameControllerAccelerationProtobuf);
  [(_MRGameControllerAccelerationProtobuf *)v4 setData:v3, *&v7, *&v8, *&v9, v10];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

_MRGameControllerAccelerationProtobuf *MRGameControllerAccelerationCreate4(double a1, double a2, double a3, double a4)
{
  v8[4] = *MEMORY[0x1E69E9840];
  *v8 = a1;
  *&v8[1] = a2;
  *&v8[2] = a3;
  *&v8[3] = a4;
  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v8 length:32];
  v5 = objc_alloc_init(_MRGameControllerAccelerationProtobuf);
  [(_MRGameControllerAccelerationProtobuf *)v5 setData:v4];

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

_MRGameControllerAccelerationProtobuf *MRGameControllerAccelerationCreate4F(float a1, float a2, float a3, float a4)
{
  v8 = objc_alloc_init(_MRGameControllerAccelerationProtobuf);
  v10 = v8;
  if (a1 != 0.0)
  {
    *&v9 = a1;
    [(_MRGameControllerAccelerationProtobuf *)v8 setX:v9];
  }

  if (a2 != 0.0)
  {
    *&v9 = a2;
    [(_MRGameControllerAccelerationProtobuf *)v10 setY:v9];
  }

  if (a3 != 0.0)
  {
    *&v9 = a3;
    [(_MRGameControllerAccelerationProtobuf *)v10 setZ:v9];
  }

  if (a4 != 0.0)
  {
    *&v9 = a4;
    [(_MRGameControllerAccelerationProtobuf *)v10 setW:v9];
  }

  return v10;
}

_MRGameControllerAccelerationProtobuf *MRGameControllerAccelerationCopyF(void *a1)
{
  MRGameControllerAccelerationGetX(a1);
  v3 = v2;
  MRGameControllerAccelerationGetY(a1);
  v5 = v4;
  MRGameControllerAccelerationGetZ(a1);
  v7 = v6;
  v8 = MRGameControllerAccelerationGetW(a1);

  return MRGameControllerAccelerationCreate4F(v3, v5, v7, v8);
}

void MRGameControllerAccelerationGetX(void *a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 hasData])
  {
    v2 = [v1 data];

    [v2 getBytes:v4 range:{0, 8}];
  }

  else
  {
    [v1 x];
  }

  v3 = *MEMORY[0x1E69E9840];
}

void MRGameControllerAccelerationGetY(void *a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 hasData])
  {
    v2 = [v1 data];

    [v2 getBytes:v4 range:{8, 8}];
  }

  else
  {
    [v1 y];
  }

  v3 = *MEMORY[0x1E69E9840];
}

void MRGameControllerAccelerationGetZ(void *a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 hasData])
  {
    v2 = [v1 data];

    [v2 getBytes:v4 range:{16, 8}];
  }

  else
  {
    [v1 z];
  }

  v3 = *MEMORY[0x1E69E9840];
}

double MRGameControllerAccelerationGetW(void *a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 hasData])
  {
    v9[0] = 0;
    v2 = [v1 data];
    v3 = [v2 length];

    v4 = 0.0;
    if (v3 >= 0x19)
    {
      v5 = [v1 data];
      [v5 getBytes:v9 range:{24, 8}];

      v4 = *v9;
    }
  }

  else
  {
    [v1 w];
    v4 = v6;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

_MRGameControllerMotionProtobuf *MRGameControllerMotionCopyF(void *a1)
{
  v1 = a1;
  v2 = [v1 gravity];
  v3 = MRGameControllerAccelerationCopyF(v2);

  v4 = [v1 userAcceleration];
  v5 = MRGameControllerAccelerationCopyF(v4);

  v6 = [v1 attitude];
  v7 = MRGameControllerAccelerationCopyF(v6);

  v8 = [v1 rotation];

  v9 = MRGameControllerAccelerationCopyF(v8);
  v10 = objc_alloc_init(_MRGameControllerMotionProtobuf);
  [(_MRGameControllerMotionProtobuf *)v10 setGravity:v3];
  [(_MRGameControllerMotionProtobuf *)v10 setUserAcceleration:v5];
  [(_MRGameControllerMotionProtobuf *)v10 setAttitude:v7];
  [(_MRGameControllerMotionProtobuf *)v10 setRotation:v9];

  return v10;
}

_MRGameControllerMotionProtobuf *MRGameControllerMotionCreateWithLegacyMotion(double *a1)
{
  v2 = objc_alloc_init(_MRGameControllerMotionProtobuf);
  v3 = MRGameControllerAccelerationCreate(*a1, a1[1], a1[2]);
  [(_MRGameControllerMotionProtobuf *)v2 setGravity:v3];
  v4 = MRGameControllerAccelerationCreate(a1[3], a1[4], a1[5]);
  [(_MRGameControllerMotionProtobuf *)v2 setUserAcceleration:v4];

  return v2;
}

_MRGameControllerButtonsProtobuf *MRGameControllerButtonsCreateWithLegacyButtons(float *a1)
{
  v2 = objc_alloc_init(_MRGameControllerButtonsProtobuf);
  v3 = v2;
  if (fabsf(fabsf(*a1) + -1337.0) > 0.0001)
  {
    [(_MRGameControllerButtonsProtobuf *)v2 setA:?];
  }

  if (fabsf(fabsf(a1[1]) + -1337.0) > 0.0001)
  {
    [(_MRGameControllerButtonsProtobuf *)v3 setX:?];
  }

  if (fabsf(fabsf(a1[2]) + -1337.0) > 0.0001)
  {
    [(_MRGameControllerButtonsProtobuf *)v3 setPause:?];
  }

  if (fabsf(fabsf(a1[3]) + -1337.0) > 0.0001)
  {
    [(_MRGameControllerButtonsProtobuf *)v3 setDPadX:?];
  }

  if (fabsf(fabsf(a1[4]) + -1337.0) > 0.0001)
  {
    [(_MRGameControllerButtonsProtobuf *)v3 setDPadY:?];
  }

  if (fabsf(fabsf(a1[5]) + -1337.0) > 0.0001)
  {
    [(_MRGameControllerButtonsProtobuf *)v3 setB:?];
  }

  if (fabsf(fabsf(a1[6]) + -1337.0) > 0.0001)
  {
    [(_MRGameControllerButtonsProtobuf *)v3 setY:?];
  }

  if (fabsf(fabsf(a1[7]) + -1337.0) > 0.0001)
  {
    [(_MRGameControllerButtonsProtobuf *)v3 setLeftShoulder:?];
  }

  if (fabsf(fabsf(a1[8]) + -1337.0) > 0.0001)
  {
    [(_MRGameControllerButtonsProtobuf *)v3 setRightShoulder:?];
  }

  if (fabsf(fabsf(a1[9]) + -1337.0) > 0.0001)
  {
    [(_MRGameControllerButtonsProtobuf *)v3 setLeftThumbstickX:?];
  }

  if (fabsf(fabsf(a1[10]) + -1337.0) > 0.0001)
  {
    [(_MRGameControllerButtonsProtobuf *)v3 setLeftThumbstickY:?];
  }

  if (fabsf(fabsf(a1[11]) + -1337.0) > 0.0001)
  {
    [(_MRGameControllerButtonsProtobuf *)v3 setRightThumbstickX:?];
  }

  if (fabsf(fabsf(a1[12]) + -1337.0) > 0.0001)
  {
    [(_MRGameControllerButtonsProtobuf *)v3 setRightThumbstickY:?];
  }

  if (fabsf(fabsf(a1[13]) + -1337.0) > 0.0001)
  {
    [(_MRGameControllerButtonsProtobuf *)v3 setLeftTrigger:?];
  }

  if (fabsf(fabsf(a1[14]) + -1337.0) > 0.0001)
  {
    [(_MRGameControllerButtonsProtobuf *)v3 setRightTrigger:?];
  }

  return v3;
}

_MRGameControllerDigitizerProtobuf *MRGameControllerDigitizerCreateWithLegacyDigitizer(uint64_t a1)
{
  v2 = objc_alloc_init(_MRGameControllerDigitizerProtobuf);
  [(_MRGameControllerDigitizerProtobuf *)v2 setX:*a1];
  [(_MRGameControllerDigitizerProtobuf *)v2 setY:*(a1 + 4)];
  [(_MRGameControllerDigitizerProtobuf *)v2 setTouchDown:*(a1 + 8)];
  [(_MRGameControllerDigitizerProtobuf *)v2 setTimestamp:*(a1 + 16)];
  return v2;
}

_MRGameControllerDigitizerProtobuf *MRGameControllerDigitizerCreateWithHIDTouchEvent(uint64_t a1)
{
  v2 = objc_alloc_init(_MRGameControllerDigitizerProtobuf);
  [(_MRGameControllerDigitizerProtobuf *)v2 setX:*a1];
  [(_MRGameControllerDigitizerProtobuf *)v2 setY:*(a1 + 4)];
  [(_MRGameControllerDigitizerProtobuf *)v2 setTimestamp:*(a1 + 16)];
  [(_MRGameControllerDigitizerProtobuf *)v2 setTouchDown:*(a1 + 8) != 4];
  return v2;
}

_MRGameControllerMessageProtobuf *MRGameControllerEventCreateWithMotion(uint64_t a1)
{
  v2 = objc_alloc_init(_MRGameControllerMessageProtobuf);
  [(_MRGameControllerMessageProtobuf *)v2 setMotion:a1];
  return v2;
}

_MRGameControllerMessageProtobuf *MRGameControllerEventCreateWithButtons(uint64_t a1)
{
  v2 = objc_alloc_init(_MRGameControllerMessageProtobuf);
  [(_MRGameControllerMessageProtobuf *)v2 setButtons:a1];
  return v2;
}

_MRGameControllerMessageProtobuf *MRGameControllerEventCreateWithDigitizer(uint64_t a1)
{
  v2 = objc_alloc_init(_MRGameControllerMessageProtobuf);
  [(_MRGameControllerMessageProtobuf *)v2 setDigitizer:a1];
  return v2;
}

_MRGameControllerMessageProtobuf *MRGameControllerEventCreateWithLegacyEvent(float *a1)
{
  v2 = objc_alloc_init(_MRGameControllerMessageProtobuf);
  v3 = *a1;
  if ((*a1 - 2) < 2)
  {
    v4 = MRGameControllerButtonsCreateWithLegacyButtons(a1 + 2);
    [(_MRGameControllerMessageProtobuf *)v2 setButtons:v4];
    goto LABEL_7;
  }

  if (LODWORD(v3) == 4)
  {
    v4 = MRGameControllerDigitizerCreateWithLegacyDigitizer((a1 + 2));
    [(_MRGameControllerMessageProtobuf *)v2 setDigitizer:v4];
    goto LABEL_7;
  }

  if (LODWORD(v3) == 1)
  {
    v4 = MRGameControllerMotionCreateWithLegacyMotion(a1 + 1);
    [(_MRGameControllerMessageProtobuf *)v2 setMotion:v4];
LABEL_7:
  }

  return v2;
}

_MRGameControllerPropertiesProtobuf *MRGameControllerPropertiesCreate()
{
  v0 = objc_alloc_init(_MRGameControllerPropertiesProtobuf);
  [(_MRGameControllerPropertiesProtobuf *)v0 setButtonAUpDelay:0xFFFFFFFFLL];
  return v0;
}

uint64_t MRGameControllerPropertiesCopyVendorName(void *a1)
{
  v1 = [a1 vendorName];
  v2 = [v1 copy];

  return v2;
}

void MRGameControllerServerGetRemoteInputMode(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v6 = [v5 service];

  MRMediaRemoteServiceGetGameControllerRemoteInputMode(v6, v4, v3);
}

void MRGameControllerServerSetRemoteInputMode(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v11 = [v7 service];

  v8 = +[MRNowPlayingOriginClientManager sharedManager];
  v9 = +[MROrigin localOrigin];
  v10 = [v8 originClientForOrigin:v9];

  [v10 setInputMode:a1];
  MRMediaRemoteServiceSetGameControllerRemoteInputMode(v11, a1, v6, v5);
}

__CFString *MRGameControllerInputModeCreateDescription(char a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppend(Mutable, @"MRGameControllerInputModeNone |");
  if ((a1 & 1) == 0)
  {
    if ((a1 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    CFStringAppend(Mutable, @"MRGameControllerInputModeCaptureButtons |");
    if ((a1 & 4) == 0)
    {
      return Mutable;
    }

    goto LABEL_4;
  }

  CFStringAppend(Mutable, @"MRGameControllerInputModeCaptureMotion |");
  if ((a1 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((a1 & 4) != 0)
  {
LABEL_4:
    CFStringAppend(Mutable, @"MRGameControllerInputModeCaptureDigitizer");
  }

  return Mutable;
}

__CFString *MRGameControllerPlayerIndexCreateDescription(unsigned int a1)
{
  if (a1 > 3)
  {
    return @"MRGameControllerPlayerIndexUnset";
  }

  else
  {
    return off_1E769D5E0[a1];
  }
}

__CFString *MRGameControllerEventTypeCreateDescription(unsigned int a1)
{
  if (a1 > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E769D600[a1];
  }
}

uint64_t MRGameControllerEventCreateDescription(uint64_t a1)
{
  v1 = *a1;
  v2 = @"Unknown Event: Did you remember to use the event initializers?";
  if (*a1 > 2)
  {
    if (v1 == 3)
    {
      v6 = *(a1 + 24);
      v9 = *(a1 + 8);
      v10 = v6;
      v11[0] = *(a1 + 40);
      *(v11 + 12) = *(a1 + 52);
      Description = MRGameControllerButtonsExtendedCreateDescription(&v9);
      goto LABEL_13;
    }

    if (v1 == 4)
    {
      if (*(a1 + 16))
      {
        v4 = @"true";
      }

      else
      {
        v4 = @"false";
      }

      Description = [MEMORY[0x1E696AEC0] stringWithFormat:@"Digitizer: { \nx: %lf \ny: %lf \ntouchDown: %@ \n}", *(a1 + 8), *(a1 + 12), v4];
      goto LABEL_13;
    }
  }

  else
  {
    if (v1 == 1)
    {
      v5 = *(a1 + 24);
      v9 = *(a1 + 8);
      v10 = v5;
      v11[0] = *(a1 + 40);
      Description = MRGameControllerMotionCreateDescription(&v9);
      goto LABEL_13;
    }

    if (v1 == 2)
    {
      Description = MRGameControllerButtonsCreateDescription(*(a1 + 8), *(a1 + 12), *(a1 + 16));
LABEL_13:
      v2 = Description;
    }
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Game Controller Event: {\n%@\n}", v2];

  return v7;
}

uint64_t MRGameControllerMotionCreateDescription(void *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Acceleration: {\nx:%lf y:%lf z:%lf\n}", *a1, a1[1], a1[2]];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Acceleration: {\nx:%lf y:%lf z:%lf\n}", a1[3], a1[4], a1[5]];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Motion: {\nGravity: %@ \nUserAcceleration: %@\n}", v2, v3];

  return v4;
}

uint64_t MRGameControllerButtonsCreateDescription(float a1, float a2, float a3)
{
  v6 = [MEMORY[0x1E696AD60] stringWithString:@"Buttons: {\n"];
  if (a1 != -1337.0)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"buttonA:%lf\n", a1];
    [v6 appendString:v7];
  }

  if (a2 != -1337.0)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"buttonX:%lf\n", a2];
    [v6 appendString:v8];
  }

  if (a3 != -1337.0)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"buttonPause:%lf\n", a3];
    [v6 appendString:v9];
  }

  [v6 appendString:@"\n}"];
  v10 = [v6 copy];

  return v10;
}

uint64_t MRGameControllerButtonsExtendedCreateDescription(float *a1)
{
  v2 = [MEMORY[0x1E696AD60] stringWithString:@"Extended Buttons: {\n"];
  v3 = a1[3];
  if (v3 != -1337.0)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"dpadX:%lf\n", v3];
    [v2 appendString:v4];
  }

  v5 = a1[4];
  if (v5 != -1337.0)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"dpadY:%lf\n", v5];
    [v2 appendString:v6];
  }

  v7 = a1[5];
  if (v7 != -1337.0)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"buttonB:%lf\n", v7];
    [v2 appendString:v8];
  }

  v9 = a1[6];
  if (v9 != -1337.0)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"buttonY:%lf\n", v9];
    [v2 appendString:v10];
  }

  v11 = a1[7];
  if (v11 != -1337.0)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"leftShoulder:%lf\n", v11];
    [v2 appendString:v12];
  }

  v13 = a1[8];
  if (v13 != -1337.0)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rightShoulder:%lf\n", v13];
    [v2 appendString:v14];
  }

  v15 = a1[9];
  if (v15 != -1337.0)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"leftThumbstickX:%lf\n", v15];
    [v2 appendString:v16];
  }

  v17 = a1[10];
  if (v17 != -1337.0)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"leftThumbstickY:%lf\n", v17];
    [v2 appendString:v18];
  }

  v19 = a1[11];
  if (v19 != -1337.0)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rightThumbstickX:%lf\n", v19];
    [v2 appendString:v20];
  }

  v21 = a1[12];
  if (v21 != -1337.0)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rightThumbstickY:%lf\n", v21];
    [v2 appendString:v22];
  }

  v23 = a1[13];
  if (v23 != -1337.0)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"leftTrigger:%lf\n", v23];
    [v2 appendString:v24];
  }

  v25 = a1[14];
  if (v25 != -1337.0)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rightTrigger:%lf\n", v25];
    [v2 appendString:v26];
  }

  Description = MRGameControllerButtonsCreateDescription(*a1, a1[1], a1[2]);
  [v2 appendString:Description];
  [v2 appendString:@"\n}"];
  v28 = [v2 copy];

  return v28;
}

uint64_t MRGameControllerDigitizerCreateDescription(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v1 = @"true";
  }

  else
  {
    v1 = @"false";
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"Digitizer: { \nx: %lf \ny: %lf \ntouchDown: %@ \n}", *a1, *(a1 + 4), v1];
  return objc_claimAutoreleasedReturnValue();
}

int64x2_t MRGameControllerMotionMake@<Q0>(int64x2_t *a1@<X8>)
{
  result = vdupq_n_s64(0xC094E40000000000);
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  return result;
}

int32x4_t MRGameControllerButtonsExtendedMake@<Q0>(int32x4_t *a1@<X8>)
{
  result = vdupq_n_s32(0xC4A72000);
  *a1 = result;
  a1[1] = result;
  a1[3].i32[2] = -995680256;
  a1[3].i64[0] = result.i64[0];
  a1[2] = result;
  return result;
}

int32x2_t MRGameControllerDigitizerMake@<D0>(int32x2_t *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  result = vdup_n_s32(0xC4A72000);
  *a1 = result;
  a1[1].i8[0] = 1;
  return result;
}

void MRGameControllerEventMake(int a1@<W0>, uint64_t a2@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *a2 = a1;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v5 = vdupq_n_s32(0xC4A72000);
      *(a2 + 8) = v5;
      *(a2 + 24) = v5;
      *(a2 + 40) = v5;
      *(a2 + 56) = v5.i64[0];
      *(a2 + 64) = -995680256;
      goto LABEL_13;
    }

    if (a1 == 4)
    {
      *(a2 + 8) = vdup_n_s32(0xC4A72000);
      *(a2 + 16) = 1;
      goto LABEL_13;
    }
  }

  else
  {
    if (a1 == 1)
    {
      v4 = vdupq_n_s64(0xC094E40000000000);
      *(a2 + 8) = v4;
      *(a2 + 24) = v4;
      *(a2 + 40) = v4;
      goto LABEL_13;
    }

    if (a1 == 2)
    {
      *(a2 + 8) = vdup_n_s32(0xC4A72000);
      *(a2 + 16) = -995680256;
      goto LABEL_13;
    }
  }

  v3 = _MRLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a1;
    _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "Unknown MRGameControllerEventType: %ld", &v7, 0xCu);
  }

LABEL_13:
  v6 = *MEMORY[0x1E69E9840];
}

void MRMediaRemotePlaybackSessionMigrateForDevice(void *a1, void *a2, void *a3, void *a4)
{
  v74 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v7 = MEMORY[0x1E69E96A0];
    v9 = MEMORY[0x1E69E96A0];
  }

  v33 = a1;
  v10 = a2;
  v11 = [MEMORY[0x1E695DF00] date];
  v12 = [MEMORY[0x1E696AFB0] UUID];
  v13 = [v12 UUIDString];

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"source=%@ destination=%@", v33, v10];
  v15 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"migratePlaybackSessionForDevice", v13];
  v16 = v15;
  if (v14)
  {
    [v15 appendFormat:@" for %@", v14];
  }

  v17 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v16;
    _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__12;
  v72 = __Block_byref_object_dispose__12;
  v73 = 0;
  v67[0] = 0;
  v67[1] = v67;
  v67[2] = 0x3032000000;
  v67[3] = __Block_byref_object_copy__12;
  v67[4] = __Block_byref_object_dispose__12;
  v68 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__12;
  v65 = __Block_byref_object_dispose__12;
  v66 = 0;
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x3032000000;
  v59[3] = __Block_byref_object_copy__12;
  v59[4] = __Block_byref_object_dispose__12;
  v60 = 0;
  v18 = dispatch_group_create();
  v19 = v18;
  if (!*(*(&buf + 1) + 40))
  {
    dispatch_group_enter(v18);
    v20 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@<%@>", @"migratePlaybackSessionForDevice", v13];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __MRMediaRemotePlaybackSessionMigrateForDevice_block_invoke;
    v52[3] = &unk_1E769D658;
    v22 = v20;
    v53 = v22;
    v54 = v13;
    v55 = @"migratePlaybackSessionForDevice";
    v57 = v59;
    p_buf = &buf;
    v56 = v19;
    [(MRAVLightweightReconnaissanceSession *)v22 searchEndpointsForOutputDeviceUID:v33 timeout:v21 reason:v7 queue:v52 completion:7.0];
  }

  if (!v62[5])
  {
    dispatch_group_enter(v19);
    v23 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@<%@>", @"migratePlaybackSessionForDevice", v13];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __MRMediaRemotePlaybackSessionMigrateForDevice_block_invoke_3;
    v45[3] = &unk_1E769D680;
    v25 = v23;
    v46 = v25;
    v49 = v67;
    v50 = &v61;
    v47 = v10;
    v51 = v59;
    v48 = v19;
    [(MRAVLightweightReconnaissanceSession *)v25 searchEndpointsForOutputDeviceUID:v47 timeout:v24 reason:v7 queue:v45 completion:7.0];
  }

  v26 = objc_alloc_init(MRPlaybackSessionMigrateRequest);
  [(MRPlaybackSessionMigrateRequest *)v26 setInitiator:@"shortcuts"];
  [(MRPlaybackSessionMigrateRequest *)v26 setRequestID:v13];
  [(MRPlaybackSessionMigrateRequest *)v26 setPlayerOptions:[(MRPlaybackSessionMigrateRequest *)v26 playerOptions]| 4];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __MRMediaRemotePlaybackSessionMigrateForDevice_block_invoke_5;
  block[3] = &unk_1E769D6D0;
  v41 = &buf;
  v42 = &v61;
  v35 = @"migratePlaybackSessionForDevice";
  v36 = v13;
  v37 = v11;
  v38 = v26;
  v39 = v7;
  v40 = v8;
  v43 = v67;
  v44 = v59;
  v27 = v7;
  v28 = v8;
  v29 = v26;
  v30 = v11;
  v31 = v13;
  dispatch_group_notify(v19, v27, block);

  _Block_object_dispose(v59, 8);
  _Block_object_dispose(&v61, 8);

  _Block_object_dispose(v67, 8);
  _Block_object_dispose(&buf, 8);

  v32 = *MEMORY[0x1E69E9840];
}

void sub_1A29567F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose((v47 - 240), 8);
  _Block_object_dispose((v47 - 192), 8);
  _Block_object_dispose((v47 - 144), 8);
  _Unwind_Resume(a1);
}

void __MRMediaRemotePlaybackSessionMigrateForDevice_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(a1 + 32);
  if (v5)
  {
    v22[0] = @"MREndpointConnectionCorrelationIDUserInfoKey";
    v22[1] = @"MRExternalDeviceConnectionReasonUserInfoKey";
    v9 = *(a1 + 48);
    v23[0] = *(a1 + 40);
    v23[1] = v9;
    v10 = MEMORY[0x1E695DF20];
    v11 = v8;
    v12 = [v10 dictionaryWithObjects:v23 forKeys:v22 count:2];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __MRMediaRemotePlaybackSessionMigrateForDevice_block_invoke_2;
    v18[3] = &unk_1E769D630;
    v21 = *(a1 + 64);
    v19 = v5;
    v20 = *(a1 + 56);
    [v19 connectToExternalDeviceWithUserInfo:v12 completion:v18];
  }

  else
  {
    v13 = *(*(a1 + 64) + 8);
    v14 = v6;
    v15 = *(v13 + 40);
    *(v13 + 40) = v14;
    v16 = v8;

    dispatch_group_leave(*(a1 + 56));
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __MRMediaRemotePlaybackSessionMigrateForDevice_block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  if (!v4)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
  }

  dispatch_group_leave(*(a1 + 40));
}

void __MRMediaRemotePlaybackSessionMigrateForDevice_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(a1 + 32);
  if (v5)
  {
    v9 = *(*(a1 + 56) + 8);
    v10 = v5;
    v11 = *(v9 + 40);
    *(v9 + 40) = v10;
    v12 = v8;

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __MRMediaRemotePlaybackSessionMigrateForDevice_block_invoke_4;
    v21[3] = &unk_1E769CDC0;
    v22 = *(a1 + 40);
    v13 = [v10 outputDevicesMatchingPredicate:v21];
    v14 = [v13 firstObject];
    v15 = *(*(a1 + 64) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  else
  {
    v17 = *(*(a1 + 72) + 8);
    v18 = v6;
    v19 = *(v17 + 40);
    *(v17 + 40) = v18;
    v20 = v8;
  }

  dispatch_group_leave(*(a1 + 48));
}

void __MRMediaRemotePlaybackSessionMigrateForDevice_block_invoke_5(uint64_t a1)
{
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __MRMediaRemotePlaybackSessionMigrateForDevice_block_invoke_6;
  v12[3] = &unk_1E769D6A8;
  v16 = *(a1 + 80);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v2;
  *(&v7 + 1) = v3;
  v13 = v7;
  v14 = v6;
  v15 = *(a1 + 72);
  v8 = MEMORY[0x1A58E3570](v12);
  if (!*(*(*(a1 + 80) + 8) + 40))
  {
    goto LABEL_7;
  }

  v9 = [*(*(*(a1 + 96) + 8) + 40) isLocalEndpoint];
  v10 = *(*(*(a1 + 80) + 8) + 40);
  if (!v9)
  {
    if (v10)
    {
      v11 = *(*(*(a1 + 88) + 8) + 40);
      if (v11)
      {
        [v10 migrateToOutputDevice:v11 request:*(a1 + 56) initiator:0 queue:*(a1 + 64) completion:v8];
        goto LABEL_8;
      }
    }

LABEL_7:
    v8[2](v8, *(*(*(a1 + 104) + 8) + 40));
    goto LABEL_8;
  }

  [v10 migrateToEndpoint:*(*(*(a1 + 96) + 8) + 40) request:*(a1 + 56) queue:*(a1 + 64) completion:v8];
LABEL_8:
}

void __MRMediaRemotePlaybackSessionMigrateForDevice_block_invoke_6(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E696AEC0];
  v5 = [*(*(*(a1 + 72) + 8) + 40) debugName];
  v6 = [*(*(*(a1 + 80) + 8) + 40) debugName];
  v7 = [v4 stringWithFormat:@"source=%@ destination=%@", v5, v6];

  v8 = _MRLogForCategory(0xAuLL);
  v9 = v8;
  if (!v3)
  {
    v15 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v15)
      {
        goto LABEL_14;
      }

      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544130;
      v28 = v16;
      v29 = 2114;
      v30 = v17;
      v31 = 2114;
      v32 = v7;
      v33 = 2048;
      v34 = v18;
      v19 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v20 = v9;
      v21 = 42;
    }

    else
    {
      if (!v15)
      {
        goto LABEL_14;
      }

      v22 = *(a1 + 32);
      v23 = *(a1 + 40);
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138543874;
      v28 = v22;
      v29 = 2114;
      v30 = v23;
      v31 = 2048;
      v32 = v24;
      v19 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v20 = v9;
      v21 = 32;
    }

    _os_log_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
    goto LABEL_13;
  }

  v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (!v10)
    {
      goto LABEL_14;
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = [MEMORY[0x1E695DF00] date];
    [v13 timeIntervalSinceDate:*(a1 + 48)];
    *buf = 138544386;
    v28 = v11;
    v29 = 2114;
    v30 = v12;
    v31 = 2114;
    v32 = v3;
    v33 = 2114;
    v34 = v7;
    v35 = 2048;
    v36 = v14;
    _os_log_error_impl(&dword_1A2860000, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_13:

    goto LABEL_14;
  }

  if (v10)
  {
    __MRMediaRemotePlaybackSessionMigrateForDevice_block_invoke_6_cold_1(a1, v3, v9);
  }

LABEL_14:

  [*(a1 + 56) finalizeWithCompletion:0];
  v25 = *(a1 + 64);
  if (v25)
  {
    (*(v25 + 16))(v25, v3);
  }

  v26 = *MEMORY[0x1E69E9840];
}

void MRMediaRemotePlaybackSessionMigrateFromOriginToOrigin(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __MRMediaRemotePlaybackSessionMigrateFromOriginToOrigin_block_invoke;
  v11[3] = &unk_1E769AD80;
  v12 = v9;
  v10 = v9;
  MRMediaRemotePlaybackSessionMigrateForOriginWithRequest(a1, a2, a3, a4, v11);
}

void MRMediaRemotePlaybackSessionMigrateForOriginWithRequest(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v49 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v38 = a3;
  v11 = a4;
  v36 = a5;
  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = objc_alloc_init(MRPlaybackSessionMigrateRequest);
  }

  v13 = v12;
  v14 = [MRPlayerPath alloc];
  v15 = [(MRPlaybackSessionMigrateRequest *)v13 playerPath];
  v16 = [v15 client];
  v17 = [(MRPlaybackSessionMigrateRequest *)v13 playerPath];
  v18 = [v17 player];
  v37 = v10;
  v19 = [(MRPlayerPath *)v14 initWithOrigin:v10 client:v16 player:v18];

  if (!v11)
  {
    v11 = MEMORY[0x1E69E96A0];
    v20 = MEMORY[0x1E69E96A0];
  }

  v21 = [MEMORY[0x1E695DF00] date];
  v22 = MEMORY[0x1E696AEC0];
  v23 = [v38 displayName];
  v24 = [v22 stringWithFormat:@"source=%@ destination=%@ request=%@", v19, v23, v13];

  v25 = objc_alloc(MEMORY[0x1E696AD60]);
  v26 = [(MRPlaybackSessionMigrateRequest *)v13 requestID];
  v27 = [v25 initWithFormat:@"%@<%@>", @"migratePlaybackSession", v26];

  if (v24)
  {
    [v27 appendFormat:@" for %@", v24];
  }

  v28 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v48 = v27;
    _os_log_impl(&dword_1A2860000, v28, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v29 = [(MRPlaybackSessionMigrateRequest *)v13 startEvent:@"DetermineRecipe" role:6];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __MRMediaRemotePlaybackSessionMigrateForOriginWithRequest_block_invoke;
  v39[3] = &unk_1E769D7C0;
  v40 = @"migratePlaybackSession";
  v41 = v13;
  v42 = v21;
  v43 = v9;
  v46 = v29;
  v44 = v11;
  v45 = v36;
  v30 = v11;
  v31 = v36;
  v32 = v9;
  v33 = v21;
  v34 = v13;
  _MRPSMDetermineRecipe(v19, v38, v34, v30, v39);

  v35 = *MEMORY[0x1E69E9840];
}

uint64_t __MRMediaRemotePlaybackSessionMigrateFromOriginToOrigin_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void MRMediaRemotePlaybackSessionIsMigrationPossibleForPlayer(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __MRMediaRemotePlaybackSessionIsMigrationPossibleForPlayer_block_invoke;
  v11[3] = &unk_1E769D720;
  v12 = v7;
  v13 = v8;
  v9 = v7;
  v10 = v8;
  _MRPSMDetermineRecipe(a1, a2, 0, v9, v11);
}

void _MRPSMDetermineRecipe(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!v12)
  {
    _MRPSMDetermineRecipe_cold_1();
  }

  v14 = +[MRUserSettings currentSettings];
  v15 = [v14 supportMigration];

  if (v15)
  {
    v16 = [v11 startEvent:@"ResolveSource" role:1];
    v17 = [v9 description];
    [v11 addEventInput:v17 withKey:@"playerPath" toEventID:v16];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = ___MRPSMDetermineRecipe_block_invoke;
    v20[3] = &unk_1E769DD38;
    v21 = v9;
    v22 = v11;
    v26 = v16;
    v25 = v13;
    v23 = v10;
    v24 = v12;
    MRMediaRemoteNowPlayingResolvePlayerPath(v21, v24, v20);
  }

  else
  {
    v18 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:6 format:@"Migration feature not enabled"];
    v19 = [_MRPSMRecipe notPossibleWithError:v18];
    (*(v13 + 2))(v13, 0, 0, v19);
  }
}

void __MRMediaRemotePlaybackSessionIsMigrationPossibleForPlayer_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([v9 type] == 2)
  {
    v10 = [MRPlaybackSessionRequest alloc];
    v11 = [MEMORY[0x1E696AFB0] UUID];
    v12 = [v11 UUIDString];
    v13 = [v9 playbackSessionType];
    v14 = [(MRPlaybackSessionRequest *)v10 initWithIdentifier:v12 type:v13];

    [(MRPlaybackSessionRequest *)v14 setDestinationPlayerPath:v8];
    [(MRPlaybackSessionRequest *)v14 setIsPreflight:1];
    v15 = [v9 destinationSetPlaybackSessionCommandInfo];
    v16 = [v15 options];
    [(MRPlaybackSessionRequest *)v14 setDestinationCommandInfo:v16];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __MRMediaRemotePlaybackSessionIsMigrationPossibleForPlayer_block_invoke_2;
    v19[3] = &unk_1E769D6F8;
    v17 = *(a1 + 32);
    v22 = *(a1 + 40);
    v20 = v7;
    v21 = v8;
    MRMediaRemotePlaybackSessionRequestWithResponse(v14, v20, v17, v19);
  }

  else
  {
    v18 = *(a1 + 40);
    v14 = [v9 error];
    (*(v18 + 16))(v18, v7, v8, v14);
  }
}

void MRMediaRemoteSendPlaybackSession(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a5;
  v13 = MEMORY[0x1E695DF00];
  v14 = a4;
  v15 = [v13 date];
  if (v9)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"destination=<%@>, playbackSession=<%@>, request=<%@>", v11, v9, v10];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"destination=<%@>, request=<%@>", v11, v10, v28];
  }
  v16 = ;
  v17 = objc_alloc(MEMORY[0x1E696AD60]);
  v18 = [v10 requestID];
  v19 = [v17 initWithFormat:@"%@<%@>", @"sendPlaybackSession", v18];

  if (v16)
  {
    [v19 appendFormat:@" for %@", v16];
  }

  v20 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v35 = v19;
    _os_log_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v21 = [[MRPlaybackSessionMigrateRequestMessage alloc] initWithPlaybackSession:v9 request:v10 forPlayerPath:v11];
  v22 = MRGetSharedService();
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __MRMediaRemoteSendPlaybackSession_block_invoke;
  v29[3] = &unk_1E769D748;
  v30 = v11;
  v31 = v10;
  v32 = v15;
  v33 = v12;
  v23 = v12;
  v24 = v15;
  v25 = v10;
  v26 = v11;
  MRMediaRemoteServiceSendPlaybackSession(v22, v21, v14, v29);

  v27 = *MEMORY[0x1E69E9840];
}

void __MRMediaRemoteSendPlaybackSession_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = v8;
  if (!v6)
  {
    v15 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v15)
      {
        goto LABEL_14;
      }

      v11 = [*(a1 + 40) requestID];
      v16 = *(a1 + 32);
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:*(a1 + 48)];
      v30 = 138544130;
      v31 = @"sendPlaybackSession";
      v32 = 2114;
      v33 = v11;
      v34 = 2114;
      v35 = v16;
      v36 = 2048;
      v37 = v17;
      v18 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v19 = v9;
      v20 = 42;
    }

    else
    {
      if (!v15)
      {
        goto LABEL_14;
      }

      v11 = [*(a1 + 40) requestID];
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:*(a1 + 48)];
      v30 = 138543874;
      v31 = @"sendPlaybackSession";
      v32 = 2114;
      v33 = v11;
      v34 = 2048;
      v35 = v21;
      v18 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v19 = v9;
      v20 = 32;
    }

    _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, v18, &v30, v20);
    goto LABEL_13;
  }

  v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (!v10)
    {
      goto LABEL_14;
    }

    v11 = [*(a1 + 40) requestID];
    v12 = *(a1 + 32);
    v13 = [MEMORY[0x1E695DF00] date];
    [v13 timeIntervalSinceDate:*(a1 + 48)];
    v30 = 138544386;
    v31 = @"sendPlaybackSession";
    v32 = 2114;
    v33 = v11;
    v34 = 2114;
    v35 = v6;
    v36 = 2114;
    v37 = v12;
    v38 = 2048;
    v39 = v14;
    _os_log_error_impl(&dword_1A2860000, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v30, 0x34u);
LABEL_13:

    goto LABEL_14;
  }

  if (v10)
  {
    __MRMediaRemoteSendPlaybackSession_block_invoke_cold_1(a1, v6, v9);
  }

LABEL_14:

  v22 = *(a1 + 56);
  if (v22)
  {
    if (v5)
    {
      v23 = [v5 underlyingCodableMessage];

      v24 = *(a1 + 56);
      if (v23)
      {
        v25 = [v5 request];
        v26 = [v5 error];
        (*(v24 + 16))(v24, v25, v26);
      }

      else
      {
        v27 = *(a1 + 40);
        v28 = [v5 error];
        (*(v24 + 16))(v24, v27, v28);
      }
    }

    else
    {
      (*(v22 + 16))(v22, *(a1 + 40), v6);
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

void MRMediaRemoteSendPlaybackSessionMigrateBegin(void *a1, void *a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v10 = MEMORY[0x1E695DF00];
  v11 = a3;
  v12 = [v10 now];
  v13 = objc_alloc(MEMORY[0x1E696AD60]);
  v14 = [v7 requestIdentifier];
  v15 = [v13 initWithFormat:@"%@<%@>", @"sendPlaybackSessionMigrateBegin", v14];

  if (v8)
  {
    [v15 appendFormat:@" for %@", v8];
  }

  v16 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v30 = v15;
    _os_log_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v17 = [[MRPlaybackSessionMigrateBeginMessage alloc] initWithRequest:v7 playerPath:v8];
  v18 = MRGetSharedService();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __MRMediaRemoteSendPlaybackSessionMigrateBegin_block_invoke;
  v24[3] = &unk_1E769D748;
  v25 = v8;
  v26 = v7;
  v27 = v12;
  v28 = v9;
  v19 = v9;
  v20 = v12;
  v21 = v7;
  v22 = v8;
  MRMediaRemoteServiceSendPlaybackSessionMigrateBegin(v18, v17, v11, v24);

  v23 = *MEMORY[0x1E69E9840];
}

void __MRMediaRemoteSendPlaybackSessionMigrateBegin_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = v8;
  if (!v6)
  {
    v15 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v15)
      {
        goto LABEL_14;
      }

      v11 = [*(a1 + 40) requestIdentifier];
      v16 = *(a1 + 32);
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:*(a1 + 48)];
      v24 = 138544130;
      v25 = @"sendPlaybackSessionMigrateBegin";
      v26 = 2114;
      v27 = v11;
      v28 = 2114;
      v29 = v16;
      v30 = 2048;
      v31 = v17;
      v18 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v19 = v9;
      v20 = 42;
    }

    else
    {
      if (!v15)
      {
        goto LABEL_14;
      }

      v11 = [*(a1 + 40) requestIdentifier];
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:*(a1 + 48)];
      v24 = 138543874;
      v25 = @"sendPlaybackSessionMigrateBegin";
      v26 = 2114;
      v27 = v11;
      v28 = 2048;
      v29 = v21;
      v18 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v19 = v9;
      v20 = 32;
    }

    _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, v18, &v24, v20);
    goto LABEL_13;
  }

  v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (!v10)
    {
      goto LABEL_14;
    }

    v11 = [*(a1 + 40) requestIdentifier];
    v12 = *(a1 + 32);
    v13 = [MEMORY[0x1E695DF00] date];
    [v13 timeIntervalSinceDate:*(a1 + 48)];
    v24 = 138544386;
    v25 = @"sendPlaybackSessionMigrateBegin";
    v26 = 2114;
    v27 = v11;
    v28 = 2114;
    v29 = v6;
    v30 = 2114;
    v31 = v12;
    v32 = 2048;
    v33 = v14;
    _os_log_error_impl(&dword_1A2860000, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v24, 0x34u);
LABEL_13:

    goto LABEL_14;
  }

  if (v10)
  {
    __MRMediaRemoteSendPlaybackSessionMigrateBegin_block_invoke_cold_1(a1, v6, v9);
  }

LABEL_14:

  v22 = *(a1 + 56);
  if (v22)
  {
    (*(v22 + 16))(v22, v5, v6);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void MRMediaRemoteSendPlaybackSessionMigrateEnd(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a3;
  v11 = a5;
  v12 = MEMORY[0x1E695DF00];
  v13 = a4;
  v14 = a2;
  v15 = [v12 now];
  v16 = objc_alloc(MEMORY[0x1E696AD60]);
  v17 = [v9 requestIdentifier];
  v18 = [v16 initWithFormat:@"%@<%@>", @"sendPlaybackSessionMigrateEnd", v17];

  if (v10)
  {
    [v18 appendFormat:@" for %@", v10];
  }

  v19 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v33 = v18;
    _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v20 = [[MRPlaybackSessionMigrateEndMessage alloc] initWithRequest:v9 error:v14 setPlaybackSessionCommandStatus:0 playerPath:v10];
  v21 = MRGetSharedService();
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __MRMediaRemoteSendPlaybackSessionMigrateEnd_block_invoke;
  v27[3] = &unk_1E769D770;
  v28 = v10;
  v29 = v9;
  v30 = v15;
  v31 = v11;
  v22 = v11;
  v23 = v15;
  v24 = v9;
  v25 = v10;
  MRMediaRemoteServiceSendPlaybackSessionMigrateEnd(v21, v20, v13, v27);

  v26 = *MEMORY[0x1E69E9840];
}

void __MRMediaRemoteSendPlaybackSessionMigrateEnd_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = v8;
  if (!v6)
  {
    v15 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v15)
      {
        goto LABEL_14;
      }

      v11 = [*(a1 + 40) requestIdentifier];
      v16 = *(a1 + 32);
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:*(a1 + 48)];
      v24 = 138544130;
      v25 = @"sendPlaybackSessionMigrateEnd";
      v26 = 2114;
      v27 = v11;
      v28 = 2114;
      v29 = v16;
      v30 = 2048;
      v31 = v17;
      v18 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v19 = v9;
      v20 = 42;
    }

    else
    {
      if (!v15)
      {
        goto LABEL_14;
      }

      v11 = [*(a1 + 40) requestIdentifier];
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:*(a1 + 48)];
      v24 = 138543874;
      v25 = @"sendPlaybackSessionMigrateEnd";
      v26 = 2114;
      v27 = v11;
      v28 = 2048;
      v29 = v21;
      v18 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v19 = v9;
      v20 = 32;
    }

    _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, v18, &v24, v20);
    goto LABEL_13;
  }

  v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (!v10)
    {
      goto LABEL_14;
    }

    v11 = [*(a1 + 40) requestIdentifier];
    v12 = *(a1 + 32);
    v13 = [MEMORY[0x1E695DF00] date];
    [v13 timeIntervalSinceDate:*(a1 + 48)];
    v24 = 138544386;
    v25 = @"sendPlaybackSessionMigrateEnd";
    v26 = 2114;
    v27 = v11;
    v28 = 2114;
    v29 = v6;
    v30 = 2114;
    v31 = v12;
    v32 = 2048;
    v33 = v14;
    _os_log_error_impl(&dword_1A2860000, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v24, 0x34u);
LABEL_13:

    goto LABEL_14;
  }

  if (v10)
  {
    __MRMediaRemoteSendPlaybackSessionMigrateEnd_block_invoke_cold_1(a1, v6, v9);
  }

LABEL_14:

  v22 = *(a1 + 56);
  if (v22)
  {
    (*(v22 + 16))(v22, v6);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void MRMediaRemoteSendPlaybackSessionMigrateFinalize(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v37 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a4;
  v13 = a6;
  v14 = MEMORY[0x1E695DF00];
  v15 = a5;
  v16 = a3;
  v17 = a2;
  v18 = [v14 now];
  v19 = objc_alloc(MEMORY[0x1E696AD60]);
  v20 = [v11 requestIdentifier];
  v21 = [v19 initWithFormat:@"%@<%@>", @"sendPlaybackSessionMigrateFinalize", v20];

  if (v12)
  {
    [v21 appendFormat:@" for %@", v12];
  }

  v22 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = v21;
    _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v23 = [[MRPlaybackSessionMigrateEndMessage alloc] initWithRequest:v11 error:v17 setPlaybackSessionCommandStatus:v16 playerPath:v12];
  v24 = MRGetSharedService();
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __MRMediaRemoteSendPlaybackSessionMigrateFinalize_block_invoke;
  v30[3] = &unk_1E769D748;
  v31 = v12;
  v32 = v11;
  v33 = v18;
  v34 = v13;
  v25 = v13;
  v26 = v18;
  v27 = v11;
  v28 = v12;
  MRMediaRemoteServiceSendPlaybackSessionMigrateEnd(v24, v23, v15, v30);

  v29 = *MEMORY[0x1E69E9840];
}

void __MRMediaRemoteSendPlaybackSessionMigrateFinalize_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = v8;
  if (!v6)
  {
    v15 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v15)
      {
        goto LABEL_14;
      }

      v11 = [*(a1 + 40) requestIdentifier];
      v16 = *(a1 + 32);
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:*(a1 + 48)];
      v24 = 138544130;
      v25 = @"sendPlaybackSessionMigrateFinalize";
      v26 = 2114;
      v27 = v11;
      v28 = 2114;
      v29 = v16;
      v30 = 2048;
      v31 = v17;
      v18 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v19 = v9;
      v20 = 42;
    }

    else
    {
      if (!v15)
      {
        goto LABEL_14;
      }

      v11 = [*(a1 + 40) requestIdentifier];
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:*(a1 + 48)];
      v24 = 138543874;
      v25 = @"sendPlaybackSessionMigrateFinalize";
      v26 = 2114;
      v27 = v11;
      v28 = 2048;
      v29 = v21;
      v18 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v19 = v9;
      v20 = 32;
    }

    _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, v18, &v24, v20);
    goto LABEL_13;
  }

  v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (!v10)
    {
      goto LABEL_14;
    }

    v11 = [*(a1 + 40) requestIdentifier];
    v12 = *(a1 + 32);
    v13 = [MEMORY[0x1E695DF00] date];
    [v13 timeIntervalSinceDate:*(a1 + 48)];
    v24 = 138544386;
    v25 = @"sendPlaybackSessionMigrateFinalize";
    v26 = 2114;
    v27 = v11;
    v28 = 2114;
    v29 = v6;
    v30 = 2114;
    v31 = v12;
    v32 = 2048;
    v33 = v14;
    _os_log_error_impl(&dword_1A2860000, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v24, 0x34u);
LABEL_13:

    goto LABEL_14;
  }

  if (v10)
  {
    __MRMediaRemoteSendPlaybackSessionMigrateFinalize_block_invoke_cold_1(a1, v6, v9);
  }

LABEL_14:

  v22 = *(a1 + 56);
  if (v22)
  {
    (*(v22 + 16))(v22, v5, v6);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __MRMediaRemotePlaybackSessionMigrateForOriginWithRequest_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __MRMediaRemotePlaybackSessionMigrateForOriginWithRequest_block_invoke_2;
  v29[3] = &unk_1E769D798;
  v10 = v7;
  v30 = v10;
  v11 = v8;
  v31 = v11;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  *&v16 = v14;
  *(&v16 + 1) = v15;
  *&v17 = v12;
  *(&v17 + 1) = v13;
  v32 = v17;
  v33 = v16;
  v34 = *(a1 + 72);
  v18 = MEMORY[0x1A58E3570](v29);
  v19 = *(a1 + 40);
  v20 = *(a1 + 80);
  v21 = [v9 error];
  [v19 endEventWithID:v20 error:v21];

  [*(a1 + 40) setRecipeType:{objc_msgSend(v9, "type")}];
  [*(a1 + 40) setResolvedPlayerPath:v10];
  v22 = [v9 type];
  switch(v22)
  {
    case 2:
      [*(a1 + 40) addEventOutput:@"OneShot" withKey:@"recipeType" toEventID:*(a1 + 80)];
      v23 = objc_alloc_init(MRPlaybackSessionRequest);
      v26 = [*(a1 + 40) requestID];
      [(MRPlaybackSessionRequest *)v23 setRequestIdentifier:v26];

      [(MRPlaybackSessionRequest *)v23 setDestinationPlayerPath:v11];
      v27 = [v9 destinationSetPlaybackSessionCommandInfo];
      v28 = [v27 options];
      [(MRPlaybackSessionRequest *)v23 setDestinationCommandInfo:v28];

      [*(a1 + 40) setPlaybackSessionRequest:v23];
      _MRPSMPerformOneShotMigration(*(a1 + 40), v10, v11, *(a1 + 64), v18);
      goto LABEL_7;
    case 1:
      [*(a1 + 40) addEventOutput:@"Legacy" withKey:@"recipeType" toEventID:*(a1 + 80)];
      v23 = objc_alloc_init(MRPlaybackSessionRequest);
      v24 = [v9 playbackSessionType];
      [(MRPlaybackSessionRequest *)v23 setType:v24];

      v25 = [*(a1 + 40) requestID];
      [(MRPlaybackSessionRequest *)v23 setRequestIdentifier:v25];

      [(MRPlaybackSessionRequest *)v23 setDestinationPlayerPath:v11];
      [*(a1 + 40) setPlaybackSessionRequest:v23];
      _MRPSMPerformLegacyMigration(*(a1 + 40), v10, v11, *(a1 + 64), v18);
      goto LABEL_7;
    case 0:
      [*(a1 + 40) addEventOutput:@"NotPossible" withKey:@"recipeType" toEventID:*(a1 + 80)];
      v23 = [v9 error];
      (v18)[2](v18, v23);
LABEL_7:

      break;
  }
}

void __MRMediaRemotePlaybackSessionMigrateForOriginWithRequest_block_invoke_2(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"source=%@ destination=%@", *(a1 + 32), *(a1 + 40)];
  v5 = _MRLogForCategory(0xAuLL);
  v6 = v5;
  if (!v3)
  {
    v12 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (!v12)
      {
        goto LABEL_14;
      }

      v13 = *(a1 + 48);
      v9 = [*(a1 + 56) requestID];
      v10 = [MEMORY[0x1E695DF00] date];
      [v10 timeIntervalSinceDate:*(a1 + 64)];
      *buf = 138544130;
      v23 = v13;
      v24 = 2114;
      v25 = v9;
      v26 = 2114;
      v27 = v4;
      v28 = 2048;
      v29 = v14;
      v15 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v16 = v6;
      v17 = 42;
    }

    else
    {
      if (!v12)
      {
        goto LABEL_14;
      }

      v18 = *(a1 + 48);
      v9 = [*(a1 + 56) requestID];
      v10 = [MEMORY[0x1E695DF00] date];
      [v10 timeIntervalSinceDate:*(a1 + 64)];
      *buf = 138543874;
      v23 = v18;
      v24 = 2114;
      v25 = v9;
      v26 = 2048;
      v27 = v19;
      v15 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v16 = v6;
      v17 = 32;
    }

    _os_log_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
    goto LABEL_13;
  }

  v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = *(a1 + 48);
    v9 = [*(a1 + 56) requestID];
    v10 = [MEMORY[0x1E695DF00] date];
    [v10 timeIntervalSinceDate:*(a1 + 64)];
    *buf = 138544386;
    v23 = v8;
    v24 = 2114;
    v25 = v9;
    v26 = 2114;
    v27 = v3;
    v28 = 2114;
    v29 = v4;
    v30 = 2048;
    v31 = v11;
    _os_log_error_impl(&dword_1A2860000, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_13:

    goto LABEL_14;
  }

  if (v7)
  {
    __MRMediaRemotePlaybackSessionMigrateForOriginWithRequest_block_invoke_2_cold_1(a1, v3, v6);
  }

LABEL_14:

  if (!*(a1 + 72))
  {
    [*(a1 + 56) finalizeWithCompletion:0];
  }

  v20 = *(a1 + 80);
  if (v20)
  {
    (*(v20 + 16))(v20, v3);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void _MRPSMPerformLegacyMigration(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v39 = a3;
  v11 = a4;
  v12 = a5;
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = ___MRPSMPerformLegacyMigration_block_invoke;
  v69[3] = &unk_1E769D810;
  v13 = v9;
  v70 = v13;
  v14 = v10;
  v71 = v14;
  v15 = v11;
  v72 = v15;
  v16 = MEMORY[0x1A58E3570](v69);
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = ___MRPSMPerformLegacyMigration_block_invoke_6;
  v66[3] = &unk_1E769D838;
  v17 = v16;
  v67 = v17;
  v38 = v12;
  v68 = v38;
  v18 = MEMORY[0x1A58E3570](v66);
  v19 = +[MRUserSettings currentSettings];
  LODWORD(a3) = [v19 forceFadeForEveryHandoff];

  if (a3)
  {
    [v13 setPlayerOptions:{objc_msgSend(v13, "playerOptions") | 0x40}];
  }

  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x2020000000;
  v65 = 0;
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x3032000000;
  v62[3] = __Block_byref_object_copy__12;
  v62[4] = __Block_byref_object_dispose__12;
  v63 = 0;
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x3032000000;
  v60[3] = __Block_byref_object_copy__12;
  v60[4] = __Block_byref_object_dispose__12;
  v61 = 0;
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x2020000000;
  v59[3] = 0;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = ___MRPSMPerformLegacyMigration_block_invoke_8;
  v54[3] = &unk_1E769D888;
  v20 = v13;
  v55 = v20;
  v21 = v14;
  v56 = v21;
  v22 = v15;
  v57 = v22;
  v58 = v60;
  v23 = MEMORY[0x1A58E3570](v54);
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = ___MRPSMPerformLegacyMigration_block_invoke_13;
  v50[3] = &unk_1E769D9F0;
  v24 = v20;
  v51 = v24;
  v25 = v21;
  v52 = v25;
  v26 = v22;
  v53 = v26;
  v27 = MEMORY[0x1A58E3570](v50);
  v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = [v27 copy];
  v30 = MEMORY[0x1A58E3570]();
  [v28 addObject:v30];

  v31 = [v23 copy];
  v32 = MEMORY[0x1A58E3570]();
  [v28 addObject:v32];

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = ___MRPSMPerformLegacyMigration_block_invoke_18;
  v40[3] = &unk_1E769DC70;
  v33 = v24;
  v41 = v33;
  v34 = v25;
  v42 = v34;
  v35 = v26;
  v43 = v35;
  v46 = v62;
  v47 = v64;
  v36 = v39;
  v44 = v36;
  v48 = v60;
  v49 = v59;
  v37 = v18;
  v45 = v37;
  MRPerformAsyncOperationsUntilError(v28, v40);

  _Block_object_dispose(v59, 8);
  _Block_object_dispose(v60, 8);

  _Block_object_dispose(v62, 8);
  _Block_object_dispose(v64, 8);
}

void sub_1A2959898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose((v49 - 240), 8);
  _Unwind_Resume(a1);
}

void _MRPSMPerformOneShotMigration(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v38 = a3;
  v11 = a4;
  v12 = a5;
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = ___MRPSMPerformOneShotMigration_block_invoke;
  v63[3] = &unk_1E769D810;
  v13 = v9;
  v64 = v13;
  v14 = v10;
  v65 = v14;
  v15 = v11;
  v66 = v15;
  v16 = MEMORY[0x1A58E3570](v63);
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = ___MRPSMPerformOneShotMigration_block_invoke_3;
  v60[3] = &unk_1E769D838;
  v17 = v16;
  v61 = v17;
  v18 = v12;
  v62 = v18;
  v37 = MEMORY[0x1A58E3570](v60);
  v19 = +[MRUserSettings currentSettings];
  LODWORD(v9) = [v19 forceFadeForEveryHandoff];

  if (v9)
  {
    [v13 setPlayerOptions:{objc_msgSend(v13, "playerOptions") | 0x40}];
  }

  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x3032000000;
  v58[3] = __Block_byref_object_copy__12;
  v58[4] = __Block_byref_object_dispose__12;
  v59 = 0;
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x2020000000;
  v57 = 0;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = ___MRPSMPerformOneShotMigration_block_invoke_5;
  v51[3] = &unk_1E769D888;
  v20 = v14;
  v52 = v20;
  v21 = v13;
  v53 = v21;
  v22 = v15;
  v54 = v22;
  v55 = v58;
  v23 = MEMORY[0x1A58E3570](v51);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = ___MRPSMPerformOneShotMigration_block_invoke_7;
  v46[3] = &unk_1E769D8D8;
  v50 = v56;
  v24 = v21;
  v47 = v24;
  v25 = v20;
  v48 = v25;
  v26 = v22;
  v49 = v26;
  v27 = MEMORY[0x1A58E3570](v46);
  v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = [v27 copy];
  v30 = MEMORY[0x1A58E3570]();
  [v28 addObject:v30];

  v31 = [v23 copy];
  v32 = MEMORY[0x1A58E3570]();
  [v28 addObject:v32];

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = ___MRPSMPerformOneShotMigration_block_invoke_9;
  v39[3] = &unk_1E769D950;
  v33 = v24;
  v40 = v33;
  v44 = v56;
  v34 = v38;
  v41 = v34;
  v45 = v58;
  v35 = v26;
  v42 = v35;
  v36 = v37;
  v43 = v36;
  MRPerformAsyncOperationsUntilError(v28, v39);

  _Block_object_dispose(v56, 8);
  _Block_object_dispose(v58, 8);
}

void sub_1A2959D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void MRMediaRemotePlaybackSessionIsMigrationPossible(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a1;
  v11 = [[MRPlayerPath alloc] initWithOrigin:v10 client:0 player:0];

  MRMediaRemotePlaybackSessionIsMigrationPossibleForPlayer(v11, v9, v8, v7);
}

void sub_1A295D950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(&a56, 8);
  _Block_object_dispose((v56 - 192), 8);
  _Block_object_dispose((v56 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t _MRSetConversationDetectionEnabledMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadString();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_32;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_32:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MRPlaybackSessionMigrateFallbackReasonFromMRMediaRemoteError(uint64_t a1)
{
  if ((a1 - 150) >= 6)
  {
    return 16;
  }

  else
  {
    return a1 - 144;
  }
}

void *MRMediaRemotePlaybackSessionMigratePlayerOptionsCopyDescription(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v3 = v2;
  if (!a1)
  {
    v4 = @"None | ";
LABEL_14:
    [v3 appendString:v4];
    return v3;
  }

  if ((a1 & 2) != 0)
  {
    [v2 appendString:@"RestorePlaybackState | "];
    if ((a1 & 4) == 0)
    {
LABEL_4:
      if ((a1 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_4;
  }

  [v3 appendString:@"PlayDestination | "];
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  [v3 appendString:@"PauseSource | "];
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      return v3;
    }

    goto LABEL_13;
  }

LABEL_12:
  [v3 appendString:@"RestorePlaybackPosition | "];
  if ((a1 & 0x20) != 0)
  {
LABEL_13:
    v4 = @"RestorePlaybackRate | ";
    goto LABEL_14;
  }

  return v3;
}

void *MRMediaRemotePlaybackSessionMigrateEndpointOptionsCopyDescription(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v3 = v2;
  if (!a1)
  {
    v4 = @"None | ";
LABEL_14:
    [v3 appendString:v4];
    return v3;
  }

  if ((a1 & 2) != 0)
  {
    [v2 appendString:@"UpdateActiveEndpointToDestination | "];
    if ((a1 & 4) == 0)
    {
LABEL_4:
      if ((a1 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_4;
  }

  [v3 appendString:@"ResetOutputContext | "];
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  [v3 appendString:@"FallbackToAddOutputDevices | "];
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      return v3;
    }

    goto LABEL_13;
  }

LABEL_12:
  [v3 appendString:@"AllowMigrateToGroup | "];
  if ((a1 & 0x20) != 0)
  {
LABEL_13:
    v4 = @"AllowMigrateFromGroup | ";
    goto LABEL_14;
  }

  return v3;
}

uint64_t MRConvertTimestampToMachAbsoluteTime(double a1)
{
  info = 0;
  mach_timebase_info(&info);
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  return ((a1 - v2) * 1000000000.0) * info.denom / info.numer + mach_absolute_time();
}

__CFString *MRPlaybackSessionMigrateFallbackReasonCopyDescription(uint64_t a1)
{
  if ((a1 - 2) > 0xE)
  {
    return @"LocalDeviceIsGroupable";
  }

  else
  {
    return off_1E769DE68[a1 - 2];
  }
}

__CFString *MRPlaybackSessionMigrateFallbackReasonStatus(uint64_t a1)
{
  if ((a1 - 1) > 0xF)
  {
    v2 = 0;
  }

  else
  {
    v2 = *off_1E769DEE0[a1 - 1];
  }

  return v2;
}

void MRMediaRemoteSendPlaybackSessionMigratePost(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a3;
  v11 = a5;
  v12 = MEMORY[0x1E695DF00];
  v13 = a4;
  v14 = a2;
  v15 = [v12 now];
  v16 = objc_alloc(MEMORY[0x1E696AD60]);
  v17 = [v9 requestID];
  v18 = [v16 initWithFormat:@"%@<%@>", @"sendPlaybackSessionMigratePost", v17];

  if (v10)
  {
    [v18 appendFormat:@" for %@", v10];
  }

  v19 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v33 = v18;
    _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v20 = [[MRPlaybackSessionMigratePostMessage alloc] initWithRequest:v9 playerPath:v10 setPlaybackSessionCommandID:v14];
  v21 = MRGetSharedService();
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __MRMediaRemoteSendPlaybackSessionMigratePost_block_invoke;
  v27[3] = &unk_1E769DDD8;
  v28 = v10;
  v29 = v9;
  v30 = v15;
  v31 = v11;
  v22 = v11;
  v23 = v15;
  v24 = v9;
  v25 = v10;
  MRMediaRemoteServiceSendPlaybackSessionMigratePost(v21, v20, v13, v27);

  v26 = *MEMORY[0x1E69E9840];
}

id _FirstErrorEvent(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        if ([v6 hasError])
        {
          v8 = v6;
          goto LABEL_13;
        }

        v7 = [v6 events];
        v8 = _FirstErrorEvent();

        if (v8)
        {
          goto LABEL_13;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v8 = 0;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_13:

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __MRMediaRemoteSendPlaybackSessionMigratePost_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = v8;
  if (!v6)
  {
    v15 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v15)
      {
        goto LABEL_14;
      }

      v11 = [*(a1 + 40) requestID];
      v16 = *(a1 + 32);
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:*(a1 + 48)];
      v24 = 138544130;
      v25 = @"sendPlaybackSessionMigratePost";
      v26 = 2114;
      v27 = v11;
      v28 = 2114;
      v29 = v16;
      v30 = 2048;
      v31 = v17;
      v18 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v19 = v9;
      v20 = 42;
    }

    else
    {
      if (!v15)
      {
        goto LABEL_14;
      }

      v11 = [*(a1 + 40) requestID];
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:*(a1 + 48)];
      v24 = 138543874;
      v25 = @"sendPlaybackSessionMigratePost";
      v26 = 2114;
      v27 = v11;
      v28 = 2048;
      v29 = v21;
      v18 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v19 = v9;
      v20 = 32;
    }

    _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, v18, &v24, v20);
    goto LABEL_13;
  }

  v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (!v10)
    {
      goto LABEL_14;
    }

    v11 = [*(a1 + 40) requestID];
    v12 = *(a1 + 32);
    v13 = [MEMORY[0x1E695DF00] date];
    [v13 timeIntervalSinceDate:*(a1 + 48)];
    v24 = 138544386;
    v25 = @"sendPlaybackSessionMigratePost";
    v26 = 2114;
    v27 = v11;
    v28 = 2114;
    v29 = v6;
    v30 = 2114;
    v31 = v12;
    v32 = 2048;
    v33 = v14;
    _os_log_error_impl(&dword_1A2860000, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v24, 0x34u);
LABEL_13:

    goto LABEL_14;
  }

  if (v10)
  {
    __MRMediaRemoteSendPlaybackSessionMigratePost_block_invoke_cold_1(a1, v6, v9);
  }

LABEL_14:

  v22 = *(a1 + 56);
  if (v22)
  {
    (*(v22 + 16))(v22, v5, v6);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void sub_1A296BD74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  _Block_object_dispose((v23 - 136), 8);
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A296C8B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A296CA04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

Class __getCURunLoopThreadClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CoreUtilsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CoreUtilsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E769DFC0;
    v6 = 0;
    CoreUtilsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreUtilsLibraryCore_frameworkLibrary)
  {
    __getCURunLoopThreadClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("CURunLoopThread");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCURunLoopThreadClass_block_invoke_cold_1();
  }

  getCURunLoopThreadClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CoreUtilsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreUtilsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _MRVoiceInputDeviceReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v21 = objc_alloc_init(_MRVoiceInputDeviceDescriptorProtobuf);
        objc_storeStrong((a1 + 8), v21);
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !_MRVoiceInputDeviceDescriptorProtobufReadFrom(&v21->super.super.isa, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else
      {
        if (v13 == 1)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 24) |= 1u;
          while (1)
          {
            LOBYTE(v31[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v31[0] & 0x7F) << v14;
            if ((v31[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_50;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_50:
          v28 = 16;
LABEL_51:
          *(a1 + v28) = v20;
          goto LABEL_52;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

LABEL_52:
      v29 = [a2 position];
      if (v29 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    *(a1 + 24) |= 2u;
    while (1)
    {
      LOBYTE(v31[0]) = 0;
      v25 = [a2 position] + 1;
      if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v24 |= (v31[0] & 0x7F) << v22;
      if ((v31[0] & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v11 = v23++ >= 9;
      if (v11)
      {
        v20 = 0;
        goto LABEL_46;
      }
    }

    if ([a2 hasError])
    {
      v20 = 0;
    }

    else
    {
      v20 = v24;
    }

LABEL_46:
    v28 = 20;
    goto LABEL_51;
  }

  return [a2 hasError] ^ 1;
}

uint64_t MREqualPlayerPaths(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 == v4 || [v3 isEqual:v4])
  {
    v5 = [v3 client];
    v6 = [v5 bundleIdentifierHierarchy];
    v7 = [v4 client];
    v8 = [v7 bundleIdentifierHierarchy];
    if (v6 == v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = [v6 isEqual:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

_DWORD *_MSV_XXH_XXH32_update(_DWORD *result, char *__src)
{
  if (__src)
  {
    v3 = result;
    v4 = result[1];
    v5 = *result + 8;
    *result = v5;
    result[1] = v4 | (v5 > 0xF);
    v6 = result[10];
    v7 = (result + 6);
    if (v6 > 7)
    {
      result = memcpy(&v7[v6], __src, (16 - v6));
      HIDWORD(v9) = v3[2] - 2048144777 * v3[6];
      LODWORD(v9) = HIDWORD(v9);
      v10 = -1640531535 * (v9 >> 19);
      HIDWORD(v9) = v3[3] - 2048144777 * v3[7];
      LODWORD(v9) = HIDWORD(v9);
      v3[2] = v10;
      v3[3] = -1640531535 * (v9 >> 19);
      HIDWORD(v9) = v3[4] - 2048144777 * v3[8];
      LODWORD(v9) = HIDWORD(v9);
      v3[4] = -1640531535 * (v9 >> 19);
      HIDWORD(v9) = v3[5] - 2048144777 * v3[9];
      LODWORD(v9) = HIDWORD(v9);
      v3[5] = -1640531535 * (v9 >> 19);
      v11 = 16 - v3[10];
      v3[10] = 0;
      if (v11 > 7)
      {
        return result;
      }

      v12 = &__src[v11];
      v8 = 8 - v11;
      result = memcpy(v7, v12, 8 - v11);
    }

    else
    {
      *&v7[v6] = *__src;
      v8 = result[10] + 8;
    }

    v3[10] = v8;
  }

  return result;
}

uint64_t _MRCreateHostedEndpointRequestProtobufReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      if (v14)
      {
        [a1 addOutputDeviceUIDs:v14];
      }
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRGroupSessionFastSyncMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadData();
        v21 = *(a1 + 16);
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRGroupSessionJoinResponseProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = &OBJC_IVAR____MRGroupSessionJoinResponseProtobuf__publicSigningKeyData;
LABEL_21:
        v15 = *v14;
        v16 = *(a1 + v15);
        *(a1 + v15) = v13;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = PBReaderReadString();
    v14 = &OBJC_IVAR____MRGroupSessionJoinResponseProtobuf__joinURL;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRConfigureConnectionMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = (v12 >> 3) - 1;
      if (v13 >= 5)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_1E769E0A0[v13];
        v15 = PBReaderReadString();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *MRMediaRemoteVolumeControlAdjustmentDescription(unint64_t a1)
{
  if (a1 > 6)
  {
    return @"?";
  }

  else
  {
    return off_1E769E0C8[a1];
  }
}

uint64_t _MRVolumeDidChangeMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v23 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v16 = PBReaderReadString();
        v17 = 16;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            *(a1 + 28) |= 1u;
            v22 = 0;
            v14 = [a2 position] + 4;
            if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 4, v15 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v22 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 24) = v22;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_30;
        }

        v16 = PBReaderReadString();
        v17 = 8;
      }

      v18 = *(a1 + v17);
      *(a1 + v17) = v16;

LABEL_30:
      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRPlaybackSessionMigrateEndMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v26) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v22 = PBReaderReadString();
            v23 = *(a1 + 24);
            *(a1 + 24) = v22;

            goto LABEL_52;
          case 5:
            v21 = objc_alloc_init(_MRErrorProtobuf);
            objc_storeStrong((a1 + 16), v21);
            v26 = 0;
            v27 = 0;
            if (!PBReaderPlaceMark() || !_MRErrorProtobufReadFrom(v21, a2))
            {
LABEL_54:

              return 0;
            }

            goto LABEL_47;
          case 6:
            v21 = objc_alloc_init(_MRSendCommandResultStatusProtobuf);
            objc_storeStrong((a1 + 48), v21);
            v26 = 0;
            v27 = 0;
            if (!PBReaderPlaceMark() || !_MRSendCommandResultStatusProtobufReadFrom(v21, a2))
            {
              goto LABEL_54;
            }

            goto LABEL_47;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v21 = objc_alloc_init(_MRPlaybackSessionRequestProtobuf);
            objc_storeStrong((a1 + 40), v21);
            v26 = 0;
            v27 = 0;
            if (!PBReaderPlaceMark() || !_MRPlaybackSessionRequestProtobufReadFrom(v21, a2))
            {
              goto LABEL_54;
            }

            goto LABEL_47;
          case 2:
            v21 = objc_alloc_init(_MRNowPlayingPlayerPathProtobuf);
            objc_storeStrong((a1 + 32), v21);
            v26 = 0;
            v27 = 0;
            if (!PBReaderPlaceMark() || !_MRNowPlayingPlayerPathProtobufReadFrom(&v21->super.super.isa, a2))
            {
              goto LABEL_54;
            }

LABEL_47:
            PBReaderRecallMark();

            goto LABEL_52;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 56) |= 1u;
            while (1)
            {
              LOBYTE(v26) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v26 & 0x7F) << v14;
              if ((v26 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_51;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_51:
            *(a1 + 8) = v20;
            goto LABEL_52;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_52:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRUnregisterGameControllerMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _MRSendCommandResultHandlerDialogActionProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v26[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = objc_alloc_init(_MRSendCommandMessageProtobuf);
        objc_storeStrong((a1 + 8), v23);
        v26[0] = 0;
        v26[1] = 0;
        if (!PBReaderPlaceMark() || !_MRSendCommandMessageProtobufReadFrom(v23, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 2)
      {
        v21 = PBReaderReadString();
        v22 = *(a1 + 16);
        *(a1 + 16) = v21;
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v26[0] & 0x7F) << v14;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_38;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_38:
        *(a1 + 24) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id MRApplicationConnectionGetQueue()
{
  if (MRApplicationConnectionGetQueue_onceToken != -1)
  {
    MRApplicationConnectionGetQueue_cold_1();
  }

  v1 = MRApplicationConnectionGetQueue___queue;

  return v1;
}

void __MRApplicationConnectionGetQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.MediaRemote.MRApplicationConnection", v2);
  v1 = MRApplicationConnectionGetQueue___queue;
  MRApplicationConnectionGetQueue___queue = v0;
}

id MRApplicationConnectionGetMessageQueue()
{
  if (MRApplicationConnectionGetMessageQueue_onceToken != -1)
  {
    MRApplicationConnectionGetMessageQueue_cold_1();
  }

  v1 = MRApplicationConnectionGetMessageQueue___queue;

  return v1;
}

void __MRApplicationConnectionGetMessageQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.MediaRemote.MRApplicationConnectionMessage", v2);
  v1 = MRApplicationConnectionGetMessageQueue___queue;
  MRApplicationConnectionGetMessageQueue___queue = v0;
}

__CFString *MRApplicationConnectionStateDescription(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown-%ld", a1];
  }

  else
  {
    v2 = off_1E769E458[a1];
  }

  return v2;
}

void MRTelevisionSetPinPairingCallback(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __MRTelevisionSetPinPairingCallback_block_invoke;
  v7[3] = &unk_1E769E4A8;
  v8 = v5;
  v6 = v5;
  MRExternalDeviceSetPairingCallback(a1, a2, v7);
}

void __MRTelevisionSetPinPairingCallback_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __MRTelevisionSetPinPairingCallback_block_invoke_2;
  v11[3] = &unk_1E769E480;
  v12 = v7;
  v9 = *(v8 + 16);
  v10 = v7;
  v9(v8, a2, a3, v11, 0.0);
}

void MRTelevisionSetHiliteModeCallback(void *a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (!a1)
  {
    MRTelevisionSetHiliteModeCallback_cold_1();
  }

  v6 = objc_autoreleasePoolPush();
  v7 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRTelevisionSetHiliteModeCallback_cold_2();
  }

  [v7 setHiliteModeCallback:v5 withQueue:v8];

  objc_autoreleasePoolPop(v6);
}

void MRTelevisionRequestHiliteModeExit(void *a1)
{
  if (!a1)
  {
    MRTelevisionRequestHiliteModeExit_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  v3 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRTelevisionRequestHiliteModeExit_cold_2();
  }

  [v3 exitHiliteMode];

  objc_autoreleasePoolPop(v2);
}

uint64_t MRTelevisionGetHiliteMode(void *a1)
{
  if (!a1)
  {
    MRTelevisionGetHiliteMode_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  v3 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRTelevisionGetHiliteMode_cold_2();
  }

  v4 = [v3 hiliteMode];

  objc_autoreleasePoolPop(v2);
  return v4;
}

void MRTelevisionWake(void *a1)
{
  if (!a1)
  {
    MRTelevisionWake_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  v3 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRTelevisionWake_cold_2();
  }

  [v3 wake];

  objc_autoreleasePoolPop(v2);
}

void MRTelevisionRegisterVirtualTouchDevice(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_8:
    MRTelevisionRegisterVirtualTouchDevice_cold_2();
    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  MRTelevisionRegisterVirtualTouchDevice_cold_1();
  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v8)
  {
    goto LABEL_4;
  }

LABEL_9:
  MRTelevisionRegisterVirtualTouchDevice_cold_3();
LABEL_4:
  v9 = objc_autoreleasePoolPush();
  v10 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRTelevisionRegisterVirtualTouchDevice_cold_4();
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __MRTelevisionRegisterVirtualTouchDevice_block_invoke;
  v12[3] = &unk_1E769E4D0;
  v11 = v8;
  v13 = v11;
  [v10 registerTouchDeviceWithDescriptor:a2 replyQueue:v7 completion:v12];

  objc_autoreleasePoolPop(v9);
}

void MRTelevisionSendVirtualTouchEvent(void *a1, _OWORD *a2, uint64_t a3)
{
  if (!a1)
  {
    MRTelevisionSendVirtualTouchEvent_cold_1();
  }

  v6 = objc_autoreleasePoolPush();
  v7 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRTelevisionSendVirtualTouchEvent_cold_2();
  }

  v8 = a2[1];
  v9[0] = *a2;
  v9[1] = v8;
  [v7 sendTouchEvent:v9 toVirtualDeviceWithID:a3];

  objc_autoreleasePoolPop(v6);
}

void MRTelevisionSendHIDEvent(void *a1)
{
  if (!a1)
  {
    MRTelevisionSendHIDEvent_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  v3 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    MRTelevisionSendHIDEvent_cold_2();
  }

  objc_autoreleasePoolPop(v2);
}

void MRTelevisionGetCurrentTextEditingSession(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_8:
    MRTelevisionGetCurrentTextEditingSession_cold_2();
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  MRTelevisionGetCurrentTextEditingSession_cold_1();
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v6)
  {
    goto LABEL_4;
  }

LABEL_9:
  MRTelevisionGetCurrentTextEditingSession_cold_3();
LABEL_4:
  v7 = objc_autoreleasePoolPush();
  v8 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRTelevisionGetCurrentTextEditingSession_cold_4();
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __MRTelevisionGetCurrentTextEditingSession_block_invoke;
  v10[3] = &unk_1E769E4F8;
  v9 = v6;
  v11 = v9;
  [v8 getTextEditingSessionWithReplyQueue:v5 completion:v10];

  objc_autoreleasePoolPop(v7);
}

void MRTelevisionSetTextEditingCallback(void *a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (!a1)
  {
    MRTelevisionSetTextEditingCallback_cold_1();
  }

  v6 = objc_autoreleasePoolPush();
  v7 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRTelevisionSetTextEditingCallback_cold_2();
  }

  [v7 setTextEditingCallback:v5 withQueue:v8];

  objc_autoreleasePoolPop(v6);
}

void MRTelevisionTextEditingInsert(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    MRTelevisionTextEditingInsert_cold_1();
  }

  v5 = objc_autoreleasePoolPush();
  v6 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRTelevisionTextEditingInsert_cold_2();
  }

  [v6 insertTextIntoActiveTextEditingSessionWithText:a3];

  objc_autoreleasePoolPop(v5);
}

void MRTelevisionTextEditingSetText(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    MRTelevisionTextEditingSetText_cold_1();
  }

  v5 = objc_autoreleasePoolPush();
  v6 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRTelevisionTextEditingSetText_cold_2();
  }

  [v6 setTextOnActiveTextEditingSessionWithText:a3];

  objc_autoreleasePoolPop(v5);
}

void MRTelevisionTextEditingDeleteBackward(void *a1)
{
  if (!a1)
  {
    MRTelevisionTextEditingDeleteBackward_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  v3 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRTelevisionTextEditingDeleteBackward_cold_2();
  }

  [v3 deleteBackwardInActiveTextEditingSession];

  objc_autoreleasePoolPop(v2);
}

void MRTelevisionTextEditingClearText(void *a1)
{
  if (!a1)
  {
    MRTelevisionTextEditingClearText_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  v3 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRTelevisionTextEditingClearText_cold_2();
  }

  [v3 clearActiveTextEditingSessionData];

  objc_autoreleasePoolPop(v2);
}

void MRTelevisionGetCurrentRTISourceSession(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_8:
    MRTelevisionGetCurrentRTISourceSession_cold_2();
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  MRTelevisionGetCurrentRTISourceSession_cold_1();
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v6)
  {
    goto LABEL_4;
  }

LABEL_9:
  MRTelevisionGetCurrentRTISourceSession_cold_3();
LABEL_4:
  v7 = objc_autoreleasePoolPush();
  v8 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRTelevisionGetCurrentRTISourceSession_cold_4();
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __MRTelevisionGetCurrentRTISourceSession_block_invoke;
  v10[3] = &unk_1E769E520;
  v9 = v6;
  v11 = v9;
  [v8 getRTISessionWithReplyQueue:v5 completion:v10];

  objc_autoreleasePoolPop(v7);
}

void MRTelevisionSetRTICallback(void *a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (!a1)
  {
    MRTelevisionSetRTICallback_cold_1();
  }

  v6 = objc_autoreleasePoolPush();
  v7 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRTelevisionSetRTICallback_cold_2();
  }

  [v7 setRTICallback:v5 withQueue:v8];

  objc_autoreleasePoolPop(v6);
}

void MRTelevisionRegisterGameController(void *a1, const char *a2, void *a3, void *a4)
{
  v10 = a3;
  v7 = a4;
  if (!a1)
  {
    MRTelevisionRegisterGameController_cold_1();
  }

  if (v10)
  {
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    MRTelevisionRegisterGameController_cold_2();
    if (v7)
    {
      goto LABEL_5;
    }
  }

  MRTelevisionRegisterGameController_cold_3();
LABEL_5:
  v8 = objc_autoreleasePoolPush();
  v9 = MRGameControllerPropertiesCreate();
  MRGameControllerPropertiesSetProfile(v9, a2);
  MRTelevisionRegisterGameControllerWithProperties(a1, v9, v10, v7);

  objc_autoreleasePoolPop(v8);
}

void MRTelevisionRegisterGameControllerWithProperties(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    MRTelevisionRegisterGameControllerWithProperties_cold_1();
    if (a2)
    {
LABEL_3:
      if (v7)
      {
        goto LABEL_4;
      }

LABEL_10:
      MRTelevisionRegisterGameControllerWithProperties_cold_3();
      if (v8)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  MRTelevisionRegisterGameControllerWithProperties_cold_2();
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v8)
  {
    goto LABEL_5;
  }

LABEL_11:
  MRTelevisionRegisterGameControllerWithProperties_cold_4();
LABEL_5:
  v9 = objc_autoreleasePoolPush();
  v10 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRTelevisionRegisterGameControllerWithProperties_cold_5();
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __MRTelevisionRegisterGameControllerWithProperties_block_invoke;
  v12[3] = &unk_1E769E4D0;
  v11 = v8;
  v13 = v11;
  [v10 registerGameControllerWithProperties:a2 queue:v7 completion:v12];

  objc_autoreleasePoolPop(v9);
}

uint64_t __MRTelevisionRegisterGameControllerWithProperties_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void MRTelevisionUnregisterGameController(void *a1, uint64_t a2)
{
  if (!a1)
  {
    MRTelevisionUnregisterGameController_cold_1();
  }

  v4 = objc_autoreleasePoolPush();
  v5 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRTelevisionUnregisterGameController_cold_2();
  }

  [v5 unregisterGameController:a2];

  objc_autoreleasePoolPop(v4);
}

void MRTelevisionSetGameControllerInputModeCallback(void *a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (!a1)
  {
    MRTelevisionSetGameControllerInputModeCallback_cold_1();
  }

  v6 = objc_autoreleasePoolPush();
  v7 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRTelevisionSetGameControllerInputModeCallback_cold_2();
  }

  [v7 setGameControllerInputModeCallback:v5 withQueue:v8];

  objc_autoreleasePoolPop(v6);
}

void MRTelevisionSetGameControllerPropertiesCallback(void *a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (!a1)
  {
    MRTelevisionSetGameControllerPropertiesCallback_cold_1();
  }

  v6 = objc_autoreleasePoolPush();
  v7 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRTelevisionSetGameControllerPropertiesCallback_cold_2();
  }

  [v7 setGameControllerPropertiesCallback:v5 withQueue:v8];

  objc_autoreleasePoolPop(v6);
}

void MRTelevisionSendGameControllerEvent(void *a1, float *a2, uint64_t a3)
{
  if (!a1)
  {
    MRTelevisionSendGameControllerEvent_cold_1();
  }

  v6 = objc_autoreleasePoolPush();
  v7 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRTelevisionSendGameControllerEvent_cold_2();
  }

  v8 = MRGameControllerEventCreateWithLegacyEvent(a2);
  [v7 sendGameControllerEvent:v8 controllerID:a3];

  objc_autoreleasePoolPop(v6);
}

void MRTelevisionSendGameControllerEventV2(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    MRTelevisionSendGameControllerEventV2_cold_1();
    if (a2)
    {
      goto LABEL_3;
    }
  }

  MRTelevisionSendGameControllerEventV2_cold_2();
LABEL_3:
  v6 = objc_autoreleasePoolPush();
  v7 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRTelevisionSendGameControllerEventV2_cold_3();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRTelevisionSendGameControllerEventV2_cold_4();
  }

  [v7 sendGameControllerEvent:a2 controllerID:a3];

  objc_autoreleasePoolPop(v6);
}

uint64_t MRTelevisionGetGameControllerInputMode(void *a1)
{
  if (!a1)
  {
    MRTelevisionGetGameControllerInputMode_cold_1();
  }

  v2 = objc_autoreleasePoolPush();
  v3 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRTelevisionGetGameControllerInputMode_cold_2();
  }

  v4 = [v3 gameControllerInputMode];

  objc_autoreleasePoolPop(v2);
  return v4;
}

void MRTelevisionRegisterVirtualVoiceInputDevice(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_8:
    MRTelevisionRegisterVirtualVoiceInputDevice_cold_2();
    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  MRTelevisionRegisterVirtualVoiceInputDevice_cold_1();
  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v8)
  {
    goto LABEL_4;
  }

LABEL_9:
  MRTelevisionRegisterVirtualVoiceInputDevice_cold_3();
LABEL_4:
  v9 = objc_autoreleasePoolPush();
  v10 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRTelevisionRegisterVirtualVoiceInputDevice_cold_4();
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __MRTelevisionRegisterVirtualVoiceInputDevice_block_invoke;
  v12[3] = &unk_1E769E1B8;
  v11 = v8;
  v13 = v11;
  [v10 registerVoiceInputDeviceWithDescriptor:a2 replyQueue:v7 completion:v12];

  objc_autoreleasePoolPop(v9);
}

uint64_t __MRTelevisionRegisterVirtualVoiceInputDevice_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void MRTelevisionSetVoiceRecordingStateCallback(void *a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (!a1)
  {
    MRTelevisionSetVoiceRecordingStateCallback_cold_1();
  }

  v6 = objc_autoreleasePoolPush();
  v7 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRTelevisionSetVoiceRecordingStateCallback_cold_2();
  }

  [v7 setVoiceRecordingStateCallback:v5 withQueue:v8];

  objc_autoreleasePoolPop(v6);
}

void MRTelevisionProcessVirtualVoiceInputAudioData(void *a1, uint64_t a2, uint64_t a3, double a4, double a5, float a6)
{
  if (!a1)
  {
    MRTelevisionProcessVirtualVoiceInputAudioData_cold_1();
  }

  v12 = objc_autoreleasePoolPush();
  v13 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    MRTelevisionProcessVirtualVoiceInputAudioData_cold_2();
  }

  *&v14 = a6;
  [v13 processVoiceInputAudioDataForDeviceID:a2 withBuffer:a3 time:a4 gain:{a5, v14}];

  objc_autoreleasePoolPop(v12);
}

uint64_t _MRUpdateEndpointsMessageProtobufReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v23[0] & 0x7F) << v14;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_36:
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_MRAVEndpointDescriptorProtobuf);
        [a1 addEndpoints:v13];
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !_MRAVEndpointDescriptorProtobufReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MRCapabilitiesFromProtobuf(void *a1)
{
  v1 = a1;
  if ([v1 hasVolumeCapabilities])
  {
    v2 = [v1 volumeCapabilities];
  }

  else if ([v1 hasVolumeControlAvailable])
  {
    if ([v1 volumeControlAvailable])
    {
      v2 = 3;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void MRMediaRemoteAgentSetEndpoint(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = MRGetSharedService();
  MRMediaRemoteServiceSetAgentEndpoint(v3, a1, v4);
}

void MRMediaRemoteAgentNotifyCallChanged(uint64_t a1)
{
  v2 = MRGetSharedService();

  MRMediaRemoteServiceAgentNotifyCallChanged(v2, a1);
}

void MRMediaRemoteSetHardwareRemoteBehavior(uint64_t a1)
{
  v2 = +[MRNowPlayingOriginClientManager sharedManager];
  v4 = [v2 localOriginClient];

  [v4 setHardwareRemoteBehavior:a1];
  v3 = MRGetSharedService();
  MRMediaRemoteServiceSetHardwareRemoteBehavior(v3, a1);
}

void MRMediaRemotePrewarmMediaControlsCommand(void *a1, unsigned int a2, void *a3)
{
  v6 = a3;
  v5 = MRGetSharedService();
  MRMediaRemoteServicePrewarmMediaControlsCommand(v5, a2, a1, v6);
}

void MRMediaRemotePresentMediaControlsCommand(void *a1, void *a2)
{
  v6 = a1;
  if (!v6)
  {
    v6 = MEMORY[0x1E69E96A0];
    v3 = MEMORY[0x1E69E96A0];
  }

  v4 = a2;
  v5 = MRGetSharedService();
  MRMediaRemoteServicePresentMediaControlsCommand(v5, v6, v4);
}

void MRMediaRemoteDismissMediaControlsCommand()
{
  v0 = MRGetSharedService();

  MRMediaRemoteServiceDismissMediaControlsCommand(v0);
}

id MRMediaRemoteResolveCommandOptions(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 mutableCopy];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v6 = v5;
  v7 = [v5 objectForKey:@"kMRMediaRemoteOptionCommandID"];
  if (!v7)
  {
    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [v8 UUIDString];
    [v6 setObject:v9 forKeyedSubscript:@"kMRMediaRemoteOptionCommandID"];
  }

  v10 = [v6 objectForKey:@"kMRMediaRemoteOptionSenderID"];
  if (!v10)
  {
    v19 = +[MROrigin localOrigin];
    v11 = +[MRClient localClient];
    v12 = objc_alloc(MEMORY[0x1E696AEC0]);
    v13 = [v19 displayName];
    [v11 bundleIdentifier];
    v15 = v14 = a2;
    v16 = [v12 initWithFormat:@"SenderDevice = <%@>, SenderBundleIdentifier = <%@>, SenderPID = <%d>", v13, v15, objc_msgSend(v11, "processIdentifier")];
    [v6 setObject:v16 forKeyedSubscript:@"kMRMediaRemoteOptionSenderID"];

    a2 = v14;
  }

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  [v6 setObject:v17 forKeyedSubscript:@"kMRMediaRemoteOptionSendOptionsNumber"];

  return v6;
}

BOOL MRMediaRemoteValidateOutgoingCommandOptions(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MRMediaRemoteCopyCommandDescription(a1);
  if (MRMediaRemoteCommandRequiresSourcePositionOption(a1))
  {
    v5 = [v3 objectForKey:@"kMRMediaRemoteOptionContentItemID"];
    v6 = [v3 objectForKey:@"kMRMediaRemoteOptionPlaybackQueueOffset"];
    v7 = [v3 objectForKey:@"kMRMediaRemoteOptionTrackID"];
    v8 = v5 | v6 | v7;
    v9 = v8 != 0;
    if (!v8)
    {
      v10 = _MRLogForCategory(2uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138544130;
        v17 = v4;
        v18 = 2114;
        v19 = @"kMRMediaRemoteOptionContentItemID";
        v20 = 2114;
        v21 = @"kMRMediaRemoteOptionPlaybackQueueOffset";
        v22 = 2114;
        v23 = @"kMRMediaRemoteOptionTrackID";
        _os_log_error_impl(&dword_1A2860000, v10, OS_LOG_TYPE_ERROR, "[MRRemoteControl] Command %{public}@ missing source position option(s): %{public}@ | %{public}@ | %{public}@", buf, 0x2Au);
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (MRMediaRemoteCommandRequiresDestinationPositionOption(a1))
  {
    v11 = [v3 objectForKey:@"kMRMediaRemoteOptionInsertAfterContentItemID"];
    v12 = [v3 objectForKey:@"kMRMediaRemoteOptionPlaybackQueueDestinationOffset"];
    if (!(v11 | v12))
    {
      v13 = _MRLogForCategory(2uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v17 = v4;
        v18 = 2114;
        v19 = @"kMRMediaRemoteOptionInsertAfterContentItemID";
        v20 = 2114;
        v21 = @"kMRMediaRemoteOptionPlaybackQueueDestinationOffset";
        _os_log_error_impl(&dword_1A2860000, v13, OS_LOG_TYPE_ERROR, "[MRRemoteControl] Command %{public}@ missing source position option(s): %{public}@ | %{public}@", buf, 0x20u);
      }

      v9 = 0;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

BOOL MRMediaRemoteValidateIncomingCommandOptions(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = MRMediaRemoteCopyCommandDescription(a1);
  if (MRMediaRemoteCommandRequiresSourcePositionOption(a1))
  {
    v8 = [v5 objectForKey:@"kMRMediaRemoteOptionContentItemID"];
    v9 = [v5 objectForKey:@"kMRMediaRemoteOptionTrackID"];
    v10 = (v8 | v9) != 0;
    if (!(v8 | v9))
    {
      v11 = _MRLogForCategory(2uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v24 = 138543874;
        v25 = v7;
        v26 = 2114;
        v27 = @"kMRMediaRemoteOptionContentItemID";
        v28 = 2114;
        v29 = @"kMRMediaRemoteOptionTrackID";
        _os_log_error_impl(&dword_1A2860000, v11, OS_LOG_TYPE_ERROR, "[MRRemoteControl] Command %{public}@ missing source position option(s): %{public}@ | %{public}@", &v24, 0x20u);
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (MRMediaRemoteCommandRequiresDestinationPositionOption(a1))
  {
    v12 = [v5 objectForKey:@"kMRMediaRemoteOptionInsertAfterContentItemID"];
    if (!v12)
    {
      v13 = _MRLogForCategory(2uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        MRMediaRemoteValidateIncomingCommandOptions_cold_1(v7, @"kMRMediaRemoteOptionInsertAfterContentItemID", v13);
      }

      v10 = 0;
    }
  }

  if (MRMediaRemoteCommandRequiresNowPlayingItemValidation(a1))
  {
    v14 = [v6 subscriptionController];
    v15 = [v14 contentItemIdentifierForOffset:0];

    v16 = [v5 objectForKey:@"kMRMediaRemoteOptionNowPlayingContentItemID"];
    v17 = v16;
    if (v16)
    {
      if (!v15)
      {
        v18 = _MRLogForCategory(2uLL);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v24 = 138543874;
          v25 = v7;
          v26 = 2112;
          v27 = @"kMRMediaRemoteOptionNowPlayingContentItemID";
          v28 = 2112;
          v29 = v17;
          v19 = "[MRRemoteControl] Command %{public}@ sender sepecified %@ = %@ which is no longer the now playing item.";
          v20 = v18;
          v21 = 32;
          goto LABEL_25;
        }

LABEL_21:

        v10 = 0;
        goto LABEL_22;
      }

      if ([(__CFString *)v16 isEqualToString:v15])
      {
        v18 = _MRLogForCategory(2uLL);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v24 = 138544130;
          v25 = v7;
          v26 = 2112;
          v27 = @"kMRMediaRemoteOptionNowPlayingContentItemID";
          v28 = 2112;
          v29 = v17;
          v30 = 2112;
          v31 = v15;
          v19 = "[MRRemoteControl] Command %{public}@ sender sepecified %@ = %@. Now Playing Item = %@. Ignoring command";
          v20 = v18;
          v21 = 42;
LABEL_25:
          _os_log_error_impl(&dword_1A2860000, v20, OS_LOG_TYPE_ERROR, v19, &v24, v21);
          goto LABEL_21;
        }

        goto LABEL_21;
      }
    }

LABEL_22:
  }

  v22 = *MEMORY[0x1E69E9840];
  return v10;
}