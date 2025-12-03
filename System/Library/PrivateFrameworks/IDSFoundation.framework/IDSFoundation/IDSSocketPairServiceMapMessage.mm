@interface IDSSocketPairServiceMapMessage
- (IDSSocketPairServiceMapMessage)initWithCommand:(unsigned __int8)command underlyingData:(id)data;
- (IDSSocketPairServiceMapMessage)initWithReason:(unsigned __int8)reason mappedStreamID:(unsigned __int16)d serviceName:(id)name;
- (id)_nonHeaderData;
@end

@implementation IDSSocketPairServiceMapMessage

- (IDSSocketPairServiceMapMessage)initWithCommand:(unsigned __int8)command underlyingData:(id)data
{
  commandCopy = command;
  v24 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v21.receiver = self;
  v21.super_class = IDSSocketPairServiceMapMessage;
  v7 = [(IDSSocketPairMessage *)&v21 initWithCommand:commandCopy underlyingData:dataCopy];
  if (v7)
  {
    v20 = -86;
    v19 = 0xAAAAAAAAAAAAAAAALL;
    v18 = -21846;
    v17 = 0xAAAAAAAAAAAAAAAALL;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v16[0] = v8;
    v16[1] = v8;
    v9 = dataCopy;
    IDSByteBufferInitForRead(v16, [dataCopy bytes], objc_msgSend(dataCopy, "length"));
    while (IDSByteBufferReadField(v16, &v20, &v19, &v18))
    {
      switch(v20)
      {
        case 3u:
          if (v18)
          {
            v11 = objc_alloc(MEMORY[0x1E696AEC0]);
            v12 = [v11 initWithBytes:v19 length:v18 encoding:4];
            v13 = *&v7->_reason;
            *&v7->_reason = v12;
          }

          break;
        case 2u:
          if (v18 == 2)
          {
            v10 = v19 + 2;
            *(&v7->super._wasWrittenToConnection + 1) = bswap32(*v19) >> 16;
            v19 = v10;
          }

          break;
        case 1u:
          if (v18 == 1)
          {
            *(&v7->super._wasWrittenToConnection + 1) = *v19;
          }

          break;
        default:
          v14 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v23 = v20;
            _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "IDSSocketPairServiceMapMessage: Unknown field type: %u", buf, 8u);
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

          break;
      }
    }

    IDSByteBufferRelease(v16);
  }

  return v7;
}

- (IDSSocketPairServiceMapMessage)initWithReason:(unsigned __int8)reason mappedStreamID:(unsigned __int16)d serviceName:(id)name
{
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = IDSSocketPairServiceMapMessage;
  v9 = [(IDSSocketPairServiceMapMessage *)&v14 init];
  v10 = v9;
  if (v9)
  {
    *(&v9->super._wasWrittenToConnection + 1) = reason;
    *(&v9->super._wasWrittenToConnection + 1) = d;
    v11 = [nameCopy copy];
    v12 = *&v10->_reason;
    *&v10->_reason = v11;
  }

  return v10;
}

- (id)_nonHeaderData
{
  v3 = _IDSLinkPacketBufferCreate();
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v4;
  v13 = v4;
  IDSByteBufferInitForWriteWithAllocatedSpace(&v12, v3 + 1310, v3[1]);
  IDSByteBufferWriteField(&v12, 1, &self->super._wasWrittenToConnection + 1, 1uLL);
  __src = bswap32(*(&self->super._wasWrittenToConnection + 1)) >> 16;
  IDSByteBufferWriteField(&v12, 2, &__src, 2uLL);
  v5 = [*&self->_reason dataUsingEncoding:4];
  IDSByteBufferWriteField(&v12, 3, [v5 bytes], objc_msgSend(v5, "length"));
  v6 = v13 - (v3 + 1310);
  IDSByteBufferRelease(&v12);
  v7 = objc_alloc(MEMORY[0x1E695DEF0]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A7C2211C;
  v10[3] = &unk_1E77E1A28;
  v10[4] = v3;
  v8 = [v7 initWithBytesNoCopy:v3 + 1310 length:v6 deallocator:v10];

  return v8;
}

@end