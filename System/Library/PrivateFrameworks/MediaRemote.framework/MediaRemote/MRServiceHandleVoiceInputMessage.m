@interface MRServiceHandleVoiceInputMessage
@end

@implementation MRServiceHandleVoiceInputMessage

void ___MRServiceHandleVoiceInputMessage_block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  uint64 = xpc_dictionary_get_uint64(*(a1 + 32), "MRXPC_MESSAGE_ID_KEY");
  if (uint64 == 0x900000000000005)
  {
    v12 = *(a1 + 40);
    v11 = *(a1 + 32);
    if (v12 && *(v12 + 24))
    {
      xdicta = v11;
      v13 = xpc_dictionary_get_uint64(v11, "MRXPC_VOICE_INPUT_DEVICE_ID_KEY");
      v14 = MRCreateDataFromXPCMessage(xdicta, "MRXPC_VOICE_DATA_PROTOBUF_DATA_KEY");
      if (v14)
      {
        v15 = MRAudioDataBlockCreateFromExternalRepresentation(*MEMORY[0x1E695E480], v14);
        v16 = v15;
        if (v15)
        {
          v17 = MRAudioDataBlockGetBuffer(v15);
          Timestamp = MRAudioDataBlockGetTimestamp(v16);
          v20 = v19;
          Gain = MRAudioDataBlockGetGain(v16);
        }

        else
        {
          v17 = 0;
          v20 = 0.0;
          Gain = 0.0;
          Timestamp = 0.0;
        }
      }

      else
      {
        v17 = 0;
        v20 = 0.0;
        Gain = 0.0;
        Timestamp = 0.0;
      }

      (*(v12 + 24))(v13, v17, *v12, Timestamp, v20, Gain);

      v11 = xdicta;
    }

    v24 = *MEMORY[0x1E69E9840];
    goto LABEL_26;
  }

  v3 = uint64;
  if (uint64 == 0x900000000000003)
  {
    v7 = *(a1 + 40);
    v5 = *(a1 + 32);
    xdict = v5;
    if (v7 && *(v7 + 16))
    {
      v8 = xpc_dictionary_get_uint64(v5, "MRXPC_VOICE_INPUT_DEVICE_ID_KEY");
      (*(v7 + 16))(v8, *v7);
      goto LABEL_10;
    }

LABEL_11:
    v9 = 6;
    goto LABEL_12;
  }

  if (uint64 == 0x900000000000002)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);
    xdict = v5;
    if (v4 && *(v4 + 8))
    {
      v6 = xpc_dictionary_get_uint64(v5, "MRXPC_VOICE_INPUT_DEVICE_ID_KEY");
      (*(v4 + 8))(v6, *v4);
LABEL_10:
      v5 = xdict;
      v9 = 0;
LABEL_12:
      _MRServiceSendReply(v5, v9);
      v10 = *MEMORY[0x1E69E9840];
      v11 = xdict;
LABEL_26:

      return;
    }

    goto LABEL_11;
  }

  v22 = _MRLogForCategory(0);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v28 = v3;
    _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, "Voice recording client message %lu not handled", buf, 0xCu);
  }

  v23 = *MEMORY[0x1E69E9840];
}

@end