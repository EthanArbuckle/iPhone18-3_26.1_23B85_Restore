@interface MRServiceHandleClientMessage
@end

@implementation MRServiceHandleClientMessage

void ___MRServiceHandleClientMessage_block_invoke()
{
  v0 = MEMORY[0x1EEE9AC00]();
  __src[259] = *MEMORY[0x1E69E9840];
  uint64 = xpc_dictionary_get_uint64(*(v0 + 32), "MRXPC_MESSAGE_ID_KEY");
  v2 = uint64;
  if (uint64 <= 0x700000000000007)
  {
    if (uint64 > 0x700000000000003)
    {
      if (uint64 == 0x700000000000004)
      {
        v39 = *(v0 + 40);
        v40 = *(v0 + 32);
        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 3221225472;
        v61[2] = ___MRServiceHandleVideoThumbnailsRequest_block_invoke;
        v61[3] = &unk_1E769C690;
        v16 = v40;
        v62 = v16;
        v41 = MEMORY[0x1A58E3570](v61);
        if (v39 && *(v39 + 24))
        {
          Error = MRCreatePlayerPathFromXPCMessage(v16);
          memset(__src, 0, 512);
          MRVideoThumbnailRequestFromXPCMessage(v16, __src);
          v43 = *(v39 + 24);
          v44 = *(v39 + 64);
          memcpy(__dst, __src, sizeof(__dst));
          v43(Error, __dst, v44, v41);
        }

        else
        {
          Error = MRMediaRemoteCreateError(14);
          (v41)[2](v41, 0, Error);
        }

        v53 = v62;
        goto LABEL_53;
      }

      if (uint64 != 0x700000000000005)
      {
        if (uint64 == 0x700000000000006)
        {
          v10 = *(v0 + 40);
          v9 = *(v0 + 32);
          if (v10 && *(v10 + 40))
          {
            v59 = v9;
            v11 = MRCreatePlayerPathFromXPCMessage(v9);
            v12 = MRCreateDataFromXPCMessage(v59, "MRXPC_LYRICS_EVENT_DATA");
            v13 = MRLyricsEventCreateFromExternalRepresentation(v12);
            (*(v10 + 40))(v11, v13);

            v9 = v59;
          }

          v14 = *MEMORY[0x1E69E9840];
          goto LABEL_15;
        }

        goto LABEL_47;
      }

      v30 = *(v0 + 40);
      v31 = *(v0 + 32);
      __src[0] = MEMORY[0x1E69E9820];
      __src[1] = 3221225472;
      __src[2] = ___MRServiceHandleAudioAmplitudeSamplesRequest_block_invoke;
      __src[3] = &unk_1E769C690;
      v16 = v31;
      __src[4] = v16;
      v27 = MEMORY[0x1A58E3570](__src);
      if (v30 && *(v30 + 32))
      {
        v28 = MRCreatePlayerPathFromXPCMessage(v16);
        v32 = xpc_dictionary_get_uint64(v16, "MRXPC_AUDIO_AMPLITUDE_SAMPLES_COUNT_KEY");
        (*(v30 + 32))(v28, v32, *(v30 + 64), v27);
LABEL_51:

        goto LABEL_52;
      }

LABEL_44:
      v28 = MRMediaRemoteCreateError(14);
      (v27)[2](v27, 0, v28);
      goto LABEL_51;
    }

    if (uint64 == 0x700000000000001)
    {
      v25 = *(v0 + 40);
      v26 = *(v0 + 32);
      __src[0] = MEMORY[0x1E69E9820];
      __src[1] = 3221225472;
      __src[2] = ___MRServiceHandlePostNotification_block_invoke;
      __src[3] = &unk_1E769A228;
      v16 = v26;
      __src[4] = v16;
      v27 = MEMORY[0x1A58E3570](__src);
      if (!v25 || !*(v25 + 8))
      {
        goto LABEL_52;
      }

      v28 = MRCreateStringFromXPCMessage(v16, "MRXPC_NOTIFICATION_NAME_KEY");
      v29 = MRCreatePropertyListFromXPCMessage(v16, "MRXPC_NOTIFICATION_USERINFO_DATA_KEY");
      if (v28)
      {
        (*(v25 + 8))(v28, v29, *(v25 + 64), v27);
      }

      else
      {
        v57 = _MRLogForCategory(0);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          ___MRServiceHandleClientMessage_block_invoke_cold_4();
        }
      }

      goto LABEL_50;
    }

    if (uint64 == 0x700000000000002)
    {
      v21 = *(v0 + 32);
      v16 = MRCreatePlaybackQueueRequestFromXPCMessage(v21);
      v22 = MRCreatePlayerPathFromXPCMessage(v21);
      __src[0] = MEMORY[0x1E69E9820];
      __src[1] = 3221225472;
      __src[2] = ___MRServiceHandleNowPlayingPlaybackQueueRequest_block_invoke;
      __src[3] = &unk_1E769C3B0;
      __src[4] = v21;
      v23 = v21;
      v24 = MEMORY[0x1A58E3570](__src);
      MRServiceClientPlaybackQueueRequestCallback(v22, v16, v24);

LABEL_64:
      v56 = *MEMORY[0x1E69E9840];
      return;
    }

    goto LABEL_47;
  }

  if (uint64 > 0x70000000000000BLL)
  {
    switch(uint64)
    {
      case 0x70000000000000CLL:
        v16 = MRCreateProtobufFromXPCMessage(*(v0 + 32));
        v17 = [v16 context];
        v48 = +[MRClientApplicationConnectionManager sharedManager];
        v49 = [v17 identifier];
        v18 = [v48 connectionForIdentifier:v49];

        if (v18)
        {
          v20 = [v16 message];
          [(MRMusicHandoffSession *)v18 handleMessage:v20];
        }

        else
        {
          v20 = _MRLogForCategory(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            ___MRServiceHandleClientMessage_block_invoke_cold_3(v17, v16, v20);
          }
        }

        goto LABEL_63;
      case 0x70000000000000DLL:
        v16 = MRCreateProtobufFromXPCMessage(*(v0 + 32));
        v17 = [v16 context];
        v37 = +[MRClientApplicationConnectionManager sharedManager];
        v38 = [v17 identifier];
        v18 = [v37 connectionForIdentifier:v38];

        if (v18)
        {
          v20 = [v16 error];
          [(MRMusicHandoffSession *)v18 invalidate:v20];
        }

        else
        {
          v20 = _MRLogForCategory(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            ___MRServiceHandleClientMessage_block_invoke_cold_2(v17, v20);
          }
        }

        goto LABEL_63;
      case 0x70000000000000ELL:
        v15 = *(v0 + 32);
        v16 = MRCreateDataFromXPCMessage(v15, "MRXPC_MUSIC_HANDOFF_SESSION_KEY");
        v17 = MRCreatePlayerPathFromXPCMessage(v15);

        v18 = [[MRMusicHandoffSession alloc] initWithProtobufData:v16];
        v19 = +[MRClientApplicationConnectionManager sharedManager];
        v20 = [v19 handoffSessionHandlerForPlayerPath:v17];

        if (v20)
        {
          (*(v20 + 16))(v20, v18);
        }

        else
        {
          v54 = _MRLogForCategory(0);
          if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
          {
            ___MRServiceHandleClientMessage_block_invoke_cold_1(v17, v54);
          }

          v55 = [[MRMusicHandoffEvent alloc] initWithType:2];
          [(MRMusicHandoffSession *)v18 updateWithEvent:v55];
        }

LABEL_63:

        goto LABEL_64;
    }

LABEL_47:
    v16 = _MRLogForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__src[0]) = 134217984;
      *(__src + 4) = v2;
      _os_log_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEFAULT, "Client XPC message with ID %lu not handled.", __src, 0xCu);
    }

    goto LABEL_64;
  }

  if (uint64 == 0x700000000000008)
  {
    v45 = *(v0 + 40);
    v46 = *(v0 + 32);
    __src[0] = MEMORY[0x1E69E9820];
    __src[1] = 3221225472;
    __src[2] = ___MRServiceHandleClientDiagnosticsRequest_block_invoke;
    __src[3] = &unk_1E769C6B8;
    v16 = v46;
    __src[4] = v16;
    v27 = MEMORY[0x1A58E3570](__src);
    if (v45)
    {
      v47 = *(v45 + 48);
      if (v47)
      {
        v47(*(v45 + 64), v27);
LABEL_52:

        v53 = __src[4];
LABEL_53:

        goto LABEL_64;
      }
    }

    goto LABEL_44;
  }

  if (uint64 == 0x70000000000000ALL)
  {
    v33 = *(v0 + 40);
    v34 = *(v0 + 32);
    __src[0] = MEMORY[0x1E69E9820];
    __src[1] = 3221225472;
    __src[2] = ___MRServiceHandleGeneralClientMessage_block_invoke;
    __src[3] = &unk_1E769C6E0;
    v16 = v34;
    __src[4] = v16;
    v27 = MEMORY[0x1A58E3570](__src);
    v28 = MRCreateProtobufFromXPCMessage(v16);
    v35 = MRCreatePlayerPathFromXPCMessage(v16);
    v29 = v35;
    if (v33 && (v36 = *(v33 + 56)) != 0)
    {
      v36(v35, v28, v27);
    }

    else
    {
      v50 = [MRProtocolMessage alloc];
      v51 = MRMediaRemoteCreateError(14);
      v52 = [(MRProtocolMessage *)v50 initWithUnderlyingCodableMessage:0 error:v51];
      (v27[2])(v27, v52);
    }

LABEL_50:

    goto LABEL_51;
  }

  if (uint64 != 0x70000000000000BLL)
  {
    goto LABEL_47;
  }

  v58 = MRCreateProtobufFromXPCMessage(*(v0 + 32));
  v3 = [MRApplicationConnection alloc];
  v4 = [v58 context];
  v5 = [v58 requestInfo];
  v6 = [(MRApplicationConnection *)v3 initWithContext:v4 requestInfo:v5];

  v7 = +[MRClientApplicationConnectionManager sharedManager];
  [v7 registerConnection:v6];

  v8 = *MEMORY[0x1E69E9840];
  v9 = v58;
LABEL_15:
}

void ___MRServiceHandleClientMessage_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1A2860000, a2, OS_LOG_TYPE_FAULT, "No handoff session handler found for player path: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void ___MRServiceHandleClientMessage_block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A2860000, a2, OS_LOG_TYPE_ERROR, "Could not find connection: %@ to handle invalidation", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void ___MRServiceHandleClientMessage_block_invoke_cold_3(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a2 message];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_1A2860000, a3, OS_LOG_TYPE_ERROR, "Could not find connection: %@ to handle message: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end