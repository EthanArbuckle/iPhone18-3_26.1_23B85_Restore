@interface MRServiceHandleBrowsableContentMessage
@end

@implementation MRServiceHandleBrowsableContentMessage

void ___MRServiceHandleBrowsableContentMessage_block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (v2 <= 0x500000000000003)
  {
    switch(v2)
    {
      case 0x500000000000001:
        v24 = *(a1 + 48);
        v25 = *(a1 + 32);
        v5 = v25;
        if (v24 && v24[1])
        {
          *&v46 = 0;
          data = xpc_dictionary_get_data(v25, "MRXPC_INDEXPATH_DATA_KEY", &v46);
          if (data)
          {
            v27 = v46 >> 3;
          }

          else
          {
            v27 = 0;
          }

          v30 = v24;
          v28 = *v24;
          v29 = v30[1];
          *&v46 = MEMORY[0x1E69E9820];
          *(&v46 + 1) = 3221225472;
          v47 = ___MRServiceHandleBeginLoadingContentMessage_block_invoke;
          v48 = &unk_1E769C758;
          v49 = v5;
          v29(data, v27, v28, &v46);

          goto LABEL_60;
        }

        Error = MRMediaRemoteCreateError(6);
        _MRServiceSendReplyWithClientError(v5, Error);
        goto LABEL_59;
      case 0x500000000000002:
        v41 = *(a1 + 48);
        v5 = *(a1 + 32);
        if (!v41)
        {
          goto LABEL_60;
        }

        v42 = v41[2];
        if (!v42)
        {
          goto LABEL_60;
        }

        Error = v42(*v41);
        if (!Error)
        {
          v43 = _MRLogForCategory(0);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v46) = 0;
            _os_log_impl(&dword_1A2860000, v43, OS_LOG_TYPE_DEFAULT, "WARNING: Client endpoint returned nil when requesting now playing identifiers", &v46, 2u);
          }
        }

        v11 = xpc_dictionary_get_remote_connection(v5);
        if (!v11)
        {
          goto LABEL_57;
        }

        reply = xpc_dictionary_create_reply(v5);
        if (!reply)
        {
          goto LABEL_56;
        }

        if (Error)
        {
          v44 = [MEMORY[0x1E696AE40] dataWithPropertyList:Error format:200 options:0 error:0];
          xpc_dictionary_set_data(reply, "MRXPC_CONTENT_NOW_PLAYING_IDENTIFIERS_KEY", [v44 bytes], objc_msgSend(v44, "length"));
        }

        goto LABEL_55;
      case 0x500000000000003:
        v14 = *(a1 + 48);
        v15 = *(a1 + 32);
        v5 = v15;
        if (!v14 || !v14[3])
        {
          goto LABEL_60;
        }

        *&v46 = 0;
        xpc_dictionary_get_data(v15, "MRXPC_INDEXPATH_DATA_KEY", &v46);
        v16 = *v14;
        v17 = (v14[3])();
        Error = xpc_dictionary_get_remote_connection(v5);
        if (!Error)
        {
          goto LABEL_59;
        }

        v18 = xpc_dictionary_create_reply(v5);
        v19 = v18;
        if (!v18)
        {
          goto LABEL_41;
        }

        xpc_dictionary_set_BOOL(v18, "MRXPC_CONTENT_SUPPORTS_PLAYBACK_PROGRESS_KEY", v17);
LABEL_40:
        xpc_connection_send_message(Error, v19);
LABEL_41:

        goto LABEL_59;
    }
  }

  else
  {
    if (v2 <= 0x500000000000005)
    {
      if (v2 != 0x500000000000004)
      {
        v3 = *(a1 + 48);
        v4 = *(a1 + 32);
        v5 = v4;
        if (!v3 || !v3[5])
        {
          goto LABEL_60;
        }

        *&v46 = 0;
        v6 = xpc_dictionary_get_data(v4, "MRXPC_INDEXPATH_DATA_KEY", &v46);
        if (v6)
        {
          v7 = v46 >> 3;
        }

        else
        {
          v7 = 0;
        }

        int64 = xpc_dictionary_get_int64(v5, "MRXPC_RANGE_BEGIN_KEY");
        v9 = xpc_dictionary_get_int64(v5, "MRXPC_RANGE_LENGTH_KEY");
        Error = (v3[5])(v6, v7, int64, v9, *v3);
        if (!Error)
        {
          v11 = _MRLogForCategory(0);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v46) = 0;
            _os_log_impl(&dword_1A2860000, v11, OS_LOG_TYPE_DEFAULT, "Client endpoint returned nil when requesting child content items.", &v46, 2u);
          }

          goto LABEL_57;
        }

        v11 = xpc_dictionary_get_remote_connection(v5);
        if (!v11)
        {
LABEL_57:

          goto LABEL_59;
        }

        v12 = xpc_dictionary_create_reply(v5);
        reply = v12;
        if (!v12)
        {
LABEL_56:

          goto LABEL_57;
        }

        MRAddContentItemsToXPCMessage(v12, Error);
LABEL_55:
        xpc_connection_send_message(v11, reply);
        goto LABEL_56;
      }

      v33 = *(a1 + 48);
      v34 = *(a1 + 32);
      v5 = v34;
      if (!v33 || !v33[4])
      {
        goto LABEL_60;
      }

      *&v46 = 0;
      xpc_dictionary_get_data(v34, "MRXPC_INDEXPATH_DATA_KEY", &v46);
      v35 = *v33;
      v36 = (v33[4])();
      Error = xpc_dictionary_get_remote_connection(v5);
      if (!Error)
      {
        goto LABEL_59;
      }

      v37 = xpc_dictionary_create_reply(v5);
      v19 = v37;
      if (!v37)
      {
        goto LABEL_41;
      }

      xpc_dictionary_set_uint64(v37, "MRXPC_CONTENT_CHILD_ITEMS_COUNT_KEY", v36);
      goto LABEL_40;
    }

    if (v2 == 0x500000000000006)
    {
      v38 = *(a1 + 48);
      v39 = *(a1 + 32);
      v5 = v39;
      if (v38 && v38[6])
      {
        *&v46 = 0;
        xpc_dictionary_get_data(v39, "MRXPC_INDEXPATH_DATA_KEY", &v46);
        v40 = *v38;
        (v38[6])();
      }

      goto LABEL_60;
    }

    if (v2 == 0x50000000000000ALL)
    {
      v20 = *(a1 + 48);
      v21 = *(a1 + 32);
      v5 = v21;
      if (!v20 || !v20[7])
      {
        _MRServiceSendReply(v21, 6uLL);
        goto LABEL_60;
      }

      Error = MRCreatePropertyListFromXPCMessage(v21, "MRXPC_CONTENT_IDENTIFIERS");
      v22 = v20[7];
      v23 = *v20;
      *&v46 = MEMORY[0x1E69E9820];
      *(&v46 + 1) = 3221225472;
      v47 = ___MRServiceHandleGetContentItemsForIdentifiers_block_invoke;
      v48 = &unk_1E769C690;
      v49 = v5;
      v22(Error, v23, &v46);

LABEL_59:
LABEL_60:

      goto LABEL_61;
    }
  }

  v31 = _MRLogForCategory(0);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = *(a1 + 40);
    LODWORD(v46) = 134217984;
    *(&v46 + 4) = v32;
    _os_log_impl(&dword_1A2860000, v31, OS_LOG_TYPE_DEFAULT, "Client-side browsable content message with ID %lu not handled.", &v46, 0xCu);
  }

LABEL_61:
  v45 = *MEMORY[0x1E69E9840];
}

@end