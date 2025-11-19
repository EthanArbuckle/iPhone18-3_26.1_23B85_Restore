@interface IDSSocketPairResourceTransferMessage
+ (id)cancelMessageWithSequenceNumber:(unsigned int)a3 streamID:(unsigned __int16)a4 messageUUID:(id)a5 cancelReason:(unsigned __int8)a6;
+ (id)resumeMessageWithSequenceNumber:(unsigned int)a3 streamID:(unsigned __int16)a4 messageUUID:(id)a5 nextByteOffset:(unint64_t)a6;
- (unint64_t)byteOffset;
- (unsigned)cancelReason;
- (unsigned)type;
@end

@implementation IDSSocketPairResourceTransferMessage

- (unsigned)type
{
  v3 = [(IDSSocketPairDataMessage *)self data];
  v4 = [v3 length];

  if (!v4)
  {
    if (isRunningTests())
    {
      throwsIDSAbortException();
    }

    abort();
  }

  v5 = [(IDSSocketPairDataMessage *)self data];
  v6 = [v5 bytes];

  return *v6;
}

- (unint64_t)byteOffset
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(IDSSocketPairResourceTransferMessage *)self type];
  if ((v3 | 2) == 2)
  {
    v4 = [(IDSSocketPairDataMessage *)self data];
    v5 = [v4 length];

    if (v5 <= 7)
    {
      v6 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v12 = v3;
        _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferMessage: resource transfer type %d does not have enought bytes for byteOffset", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          MarcoLog();
        }

        if (IMShouldLog())
        {
          IMLogString();
        }
      }

      if (isRunningTests())
      {
        throwsIDSAbortException();
      }

      abort();
    }

    v9 = [(IDSSocketPairDataMessage *)self data];
    v10 = [v9 bytes];

    return (v10[1] << 48) | (v10[2] << 40) | (v10[3] << 32) | (v10[4] << 24) | (v10[5] << 16) | (v10[6] << 8) | v10[7];
  }

  else
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v12 = v3;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferMessage: resource transfer type %d does not support byteOffset", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        MarcoLog();
      }

      if (IMShouldLog())
      {
        IMLogString();
      }
    }

    return 0;
  }
}

- (unsigned)cancelReason
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(IDSSocketPairResourceTransferMessage *)self type];
  if (v3 == 3)
  {
    v4 = [(IDSSocketPairDataMessage *)self data];
    v5 = [v4 length];

    if (v5 > 1)
    {
      v10 = [(IDSSocketPairDataMessage *)self data];
      v11 = [v10 bytes];

      LOBYTE(v7) = *(v11 + 1);
      return v7;
    }

    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferMessage: resource transfer cancel message does not have enought bytes for reason", buf, 2u);
    }

    v7 = os_log_shim_legacy_logging_enabled();
    if (v7)
    {
      if (MarcoShouldLog())
      {
        MarcoLog();
      }

      v7 = IMShouldLog();
      if (v7)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v8 = v3;
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v14 = v8;
      _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "IDSSocketPairResourceTransferMessage: resource transfer type %d does not support cancelReason", buf, 8u);
    }

    v7 = os_log_shim_legacy_logging_enabled();
    if (v7)
    {
      if (MarcoShouldLog())
      {
        MarcoLog();
      }

      v7 = IMShouldLog();
      if (v7)
      {
LABEL_16:
        IMLogString();
        LOBYTE(v7) = 0;
      }
    }
  }

  return v7;
}

+ (id)resumeMessageWithSequenceNumber:(unsigned int)a3 streamID:(unsigned __int16)a4 messageUUID:(id)a5 nextByteOffset:(unint64_t)a6
{
  v6 = a4;
  v7 = *&a3;
  v14 = *MEMORY[0x1E69E9840];
  BYTE1(v13) = BYTE6(a6);
  BYTE2(v13) = BYTE5(a6);
  BYTE3(v13) = BYTE4(a6);
  BYTE4(v13) = BYTE3(a6);
  BYTE5(v13) = BYTE2(a6);
  BYTE6(v13) = BYTE1(a6);
  HIBYTE(v13) = a6;
  LOBYTE(v13) = 2;
  v8 = a5;
  v9 = [IDSSocketPairResourceTransferMessage alloc];
  v10 = [MEMORY[0x1E695DEF0] dataWithBytes:&v13 length:8];
  v11 = [(IDSSocketPairDataMessage *)v9 initWithSequenceNumber:v7 streamID:v6 expectsPeerResponse:0 wantsAppAck:0 compressed:0 didWakeHint:0 peerResponseIdentifier:0 messageUUID:v8 data:v10 expiryDate:0, v13, v14];

  return v11;
}

+ (id)cancelMessageWithSequenceNumber:(unsigned int)a3 streamID:(unsigned __int16)a4 messageUUID:(id)a5 cancelReason:(unsigned __int8)a6
{
  v6 = a4;
  v7 = *&a3;
  v13[0] = 3;
  v13[1] = a6;
  v8 = a5;
  v9 = [IDSSocketPairResourceTransferMessage alloc];
  v10 = [MEMORY[0x1E695DEF0] dataWithBytes:v13 length:2];
  v11 = [(IDSSocketPairDataMessage *)v9 initWithSequenceNumber:v7 streamID:v6 expectsPeerResponse:0 wantsAppAck:0 compressed:0 didWakeHint:0 peerResponseIdentifier:0 messageUUID:v8 data:v10 expiryDate:0];

  return v11;
}

@end