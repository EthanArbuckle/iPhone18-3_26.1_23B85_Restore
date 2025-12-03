@interface IDSSocketPairResourceTransferMessage
+ (id)cancelMessageWithSequenceNumber:(unsigned int)number streamID:(unsigned __int16)d messageUUID:(id)iD cancelReason:(unsigned __int8)reason;
+ (id)resumeMessageWithSequenceNumber:(unsigned int)number streamID:(unsigned __int16)d messageUUID:(id)iD nextByteOffset:(unint64_t)offset;
- (unint64_t)byteOffset;
- (unsigned)cancelReason;
- (unsigned)type;
@end

@implementation IDSSocketPairResourceTransferMessage

- (unsigned)type
{
  data = [(IDSSocketPairDataMessage *)self data];
  v4 = [data length];

  if (!v4)
  {
    if (isRunningTests())
    {
      throwsIDSAbortException();
    }

    abort();
  }

  data2 = [(IDSSocketPairDataMessage *)self data];
  bytes = [data2 bytes];

  return *bytes;
}

- (unint64_t)byteOffset
{
  v13 = *MEMORY[0x1E69E9840];
  type = [(IDSSocketPairResourceTransferMessage *)self type];
  if ((type | 2) == 2)
  {
    data = [(IDSSocketPairDataMessage *)self data];
    v5 = [data length];

    if (v5 <= 7)
    {
      v6 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v12 = type;
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

    data2 = [(IDSSocketPairDataMessage *)self data];
    bytes = [data2 bytes];

    return (bytes[1] << 48) | (bytes[2] << 40) | (bytes[3] << 32) | (bytes[4] << 24) | (bytes[5] << 16) | (bytes[6] << 8) | bytes[7];
  }

  else
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v12 = type;
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
  type = [(IDSSocketPairResourceTransferMessage *)self type];
  if (type == 3)
  {
    data = [(IDSSocketPairDataMessage *)self data];
    v5 = [data length];

    if (v5 > 1)
    {
      data2 = [(IDSSocketPairDataMessage *)self data];
      bytes = [data2 bytes];

      LOBYTE(v7) = *(bytes + 1);
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
    v8 = type;
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

+ (id)resumeMessageWithSequenceNumber:(unsigned int)number streamID:(unsigned __int16)d messageUUID:(id)iD nextByteOffset:(unint64_t)offset
{
  dCopy = d;
  v7 = *&number;
  v14 = *MEMORY[0x1E69E9840];
  BYTE1(v13) = BYTE6(offset);
  BYTE2(v13) = BYTE5(offset);
  BYTE3(v13) = BYTE4(offset);
  BYTE4(v13) = BYTE3(offset);
  BYTE5(v13) = BYTE2(offset);
  BYTE6(v13) = BYTE1(offset);
  HIBYTE(v13) = offset;
  LOBYTE(v13) = 2;
  iDCopy = iD;
  v9 = [IDSSocketPairResourceTransferMessage alloc];
  v10 = [MEMORY[0x1E695DEF0] dataWithBytes:&v13 length:8];
  v11 = [(IDSSocketPairDataMessage *)v9 initWithSequenceNumber:v7 streamID:dCopy expectsPeerResponse:0 wantsAppAck:0 compressed:0 didWakeHint:0 peerResponseIdentifier:0 messageUUID:iDCopy data:v10 expiryDate:0, v13, v14];

  return v11;
}

+ (id)cancelMessageWithSequenceNumber:(unsigned int)number streamID:(unsigned __int16)d messageUUID:(id)iD cancelReason:(unsigned __int8)reason
{
  dCopy = d;
  v7 = *&number;
  v13[0] = 3;
  v13[1] = reason;
  iDCopy = iD;
  v9 = [IDSSocketPairResourceTransferMessage alloc];
  v10 = [MEMORY[0x1E695DEF0] dataWithBytes:v13 length:2];
  v11 = [(IDSSocketPairDataMessage *)v9 initWithSequenceNumber:v7 streamID:dCopy expectsPeerResponse:0 wantsAppAck:0 compressed:0 didWakeHint:0 peerResponseIdentifier:0 messageUUID:iDCopy data:v10 expiryDate:0];

  return v11;
}

@end