@interface IDSSocketPairProtobufMessage
- (IDSSocketPairProtobufMessage)initWithCommand:(unsigned __int8)command underlyingData:(id)data;
- (IDSSocketPairProtobufMessage)initWithSequenceNumber:(unsigned int)number streamID:(unsigned __int16)d expectsPeerResponse:(BOOL)response wantsAppAck:(BOOL)ack compressed:(BOOL)compressed didWakeHint:(BOOL)hint peerResponseIdentifier:(id)identifier messageUUID:(id)self0 expiryDate:(id)self1 protobuf:(id)self2;
- (NSData)data;
- (id)_nonHeaderData;
@end

@implementation IDSSocketPairProtobufMessage

- (IDSSocketPairProtobufMessage)initWithCommand:(unsigned __int8)command underlyingData:(id)data
{
  commandCopy = command;
  v53 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v46.receiver = self;
  v46.super_class = IDSSocketPairProtobufMessage;
  v7 = [(IDSSocketPairMessage *)&v46 initWithCommand:commandCopy underlyingData:dataCopy];
  if (!v7)
  {
LABEL_26:
    v14 = v7;
    goto LABEL_27;
  }

  v8 = objc_autoreleasePoolPush();
  v45 = -1431655766;
  [dataCopy getBytes:&v45 range:{0, 4}];
  v45 = bswap32(v45);
  v44 = -21846;
  [dataCopy getBytes:&v44 range:{4, 2}];
  v44 = bswap32(v44) >> 16;
  v43 = -86;
  [dataCopy getBytes:&v43 range:{6, 1}];
  v42 = -1431655766;
  [dataCopy getBytes:&v42 range:{7, 4}];
  v9 = v42;
  v10 = bswap32(v42);
  v42 = v10;
  if (!v9)
  {
    v15 = 11;
LABEL_14:
    *buf = -1431655766;
    [dataCopy getBytes:buf range:{v15, 4}];
    v20 = *buf;
    *buf = bswap32(*buf);
    v21 = v15 + 4;
    if (v20)
    {
      v22 = [dataCopy subdataWithRange:v21];
      v23 = *buf;
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v22 encoding:4];
      messageUUID = v7->_messageUUID;
      v7->_messageUUID = v24;

      v21 += v23;
    }

    v26 = v43;
    if ((v43 & 0x10) != 0)
    {
      v41 = -1431655766;
      [dataCopy getBytes:&v41 range:{v21, 4}];
      v27 = v41;
      v41 = bswap32(v41);
      v21 += 4;
      if (v27)
      {
        v28 = [dataCopy subdataWithRange:v21];
        v29 = v41;
        v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v28 encoding:4];
        [(IDSSocketPairMessage *)v7 setTopic:v30];

        v21 += v29;
      }

      v26 = v43;
    }

    v7->_sequenceNumber = v45;
    v7->_streamID = v44;
    v7->_expectsPeerResponse = v26 & 1;
    v7->_compressed = (v26 & 2) != 0;
    v7->_wantsAppAck = (v26 & 4) != 0;
    v7->_didWakeHint = (v26 & 0x20) != 0;
    [dataCopy getBytes:&v7->_type range:{v21, 2}];
    v7->_type = bswap32(v7->_type) >> 16;
    [dataCopy getBytes:&v7->_isResponse range:{v21 + 2, 2}];
    v7->_isResponse = bswap32(v7->_isResponse) >> 16;
    v41 = 0;
    [dataCopy getBytes:&v41 range:{v21 + 4, 4}];
    v31 = bswap32(v41);
    v32 = v21 + 8;
    v7->_payloadOffset = v32;
    v40 = -1431655766;
    v41 = v31;
    if ((v43 & 8) != 0)
    {
      v33 = -4;
    }

    else
    {
      v33 = 0;
    }

    v34 = v33 + [dataCopy length] - v7->_payloadOffset;
    v7->_payloadLength = v34;
    if ((v43 & 8) != 0)
    {
      [dataCopy getBytes:&v40 range:{v34 + v32, 4}];
      v40 = bswap32(v40);
      v35 = objc_alloc(MEMORY[0x1E695DF00]);
      LODWORD(v36) = v40;
      v37 = [v35 initWithTimeIntervalSinceReferenceDate:v36];
      expiryDate = v7->_expiryDate;
      v7->_expiryDate = v37;
    }

    objc_autoreleasePoolPop(v8);
    goto LABEL_26;
  }

  if (v10 + 11 <= [dataCopy length])
  {
    v16 = [dataCopy subdataWithRange:{11, v42}];
    v17 = v42;
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v16 encoding:4];
    peerResponseIdentifier = v7->_peerResponseIdentifier;
    v7->_peerResponseIdentifier = v18;

    v15 = v17 + 11;
    goto LABEL_14;
  }

  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v42;
    v13 = [dataCopy length];
    *buf = 67109632;
    v48 = 11;
    v49 = 1024;
    v50 = v12;
    v51 = 1024;
    v52 = v13;
    _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "Response identifier length is bigger than packet size, offset %u identifier length %u packet length %u\n", buf, 0x14u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      [dataCopy length];
      MarcoLog();
    }

    if (IMShouldLog())
    {
      [dataCopy length];
      IMLogString();
    }
  }

  objc_autoreleasePoolPop(v8);
  v14 = 0;
LABEL_27:

  return v14;
}

- (IDSSocketPairProtobufMessage)initWithSequenceNumber:(unsigned int)number streamID:(unsigned __int16)d expectsPeerResponse:(BOOL)response wantsAppAck:(BOOL)ack compressed:(BOOL)compressed didWakeHint:(BOOL)hint peerResponseIdentifier:(id)identifier messageUUID:(id)self0 expiryDate:(id)self1 protobuf:(id)self2
{
  identifierCopy = identifier;
  iDCopy = iD;
  dateCopy = date;
  protobufCopy = protobuf;
  v27.receiver = self;
  v27.super_class = IDSSocketPairProtobufMessage;
  v19 = [(IDSSocketPairProtobufMessage *)&v27 init];
  if (v19)
  {
    v19->_isResponse = [protobufCopy isResponse];
    v19->_type = [protobufCopy type];
    data = [protobufCopy data];
    data = v19->_data;
    v19->_data = data;

    v19->_sequenceNumber = number;
    v19->_streamID = d;
    v19->_expectsPeerResponse = response;
    v19->_wantsAppAck = ack;
    v19->_compressed = compressed;
    v19->_didWakeHint = hint;
    objc_storeStrong(&v19->_peerResponseIdentifier, identifier);
    objc_storeStrong(&v19->_messageUUID, iD);
    objc_storeStrong(&v19->_expiryDate, date);
  }

  return v19;
}

- (NSData)data
{
  data = self->_data;
  if (data)
  {
    v3 = data;
  }

  else
  {
    _existingUnderlyingData = [(IDSSocketPairMessage *)self _existingUnderlyingData];
    v3 = [_existingUnderlyingData subdataWithRangeNoCopy:{self->_payloadOffset, self->_payloadLength}];
  }

  return v3;
}

- (id)_nonHeaderData
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v31 = bswap32([(IDSSocketPairProtobufMessage *)self sequenceNumber]);
  [v3 appendBytes:&v31 length:4];
  v30 = __rev16([(IDSSocketPairProtobufMessage *)self streamID]);
  [v3 appendBytes:&v30 length:2];
  expectsPeerResponse = self->_expectsPeerResponse;
  v29 = expectsPeerResponse;
  if (self->_compressed)
  {
    expectsPeerResponse |= 2u;
    v29 = expectsPeerResponse;
  }

  if (self->_wantsAppAck)
  {
    expectsPeerResponse |= 4u;
    v29 = expectsPeerResponse;
  }

  if (self->_expiryDate)
  {
    expectsPeerResponse |= 8u;
    v29 = expectsPeerResponse;
  }

  topic = [(IDSSocketPairMessage *)self topic];
  if (topic)
  {
    v6 = topic;
    useDynamicServiceName = [(IDSSocketPairMessage *)self useDynamicServiceName];

    if (useDynamicServiceName)
    {
      expectsPeerResponse |= 0x10u;
      v29 = expectsPeerResponse;
    }
  }

  if (self->_didWakeHint)
  {
    v29 = expectsPeerResponse | 0x20;
  }

  [v3 appendBytes:&v29 length:1];
  v8 = [(NSString *)self->_peerResponseIdentifier dataUsingEncoding:4];
  v28 = bswap32([v8 length]);
  [v3 appendBytes:&v28 length:4];
  if (v28)
  {
    [v3 appendData:v8];
  }

  v9 = [(NSString *)self->_messageUUID dataUsingEncoding:4];
  v27 = bswap32([v9 length]);
  [v3 appendBytes:&v27 length:4];
  if (v27)
  {
    [v3 appendData:v9];
  }

  topic2 = [(IDSSocketPairMessage *)self topic];
  if (topic2)
  {
    v11 = topic2;
    useDynamicServiceName2 = [(IDSSocketPairMessage *)self useDynamicServiceName];

    if (useDynamicServiceName2)
    {
      topic3 = [(IDSSocketPairMessage *)self topic];
      v14 = [topic3 dataUsingEncoding:4];

      v26 = bswap32([v14 length]);
      [v3 appendBytes:&v26 length:4];
      if (v26)
      {
        [v3 appendData:v14];
      }
    }
  }

  v25 = __rev16([(IDSSocketPairProtobufMessage *)self type]);
  [v3 appendBytes:&v25 length:2];
  v24 = __rev16([(IDSSocketPairProtobufMessage *)self isResponse]);
  [v3 appendBytes:&v24 length:2];
  data = [(IDSSocketPairProtobufMessage *)self data];
  v16 = bswap32([data length]);

  v26 = v16;
  [v3 appendBytes:&v26 length:4];
  data2 = [(IDSSocketPairProtobufMessage *)self data];
  v18 = [data2 length];

  if (v18)
  {
    data3 = [(IDSSocketPairProtobufMessage *)self data];
    [v3 appendData:data3];
  }

  expiryDate = self->_expiryDate;
  if (expiryDate)
  {
    [(NSDate *)expiryDate timeIntervalSinceReferenceDate];
    v23 = bswap32(v21);
    [v3 appendBytes:&v23 length:4];
  }

  return v3;
}

@end