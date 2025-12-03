@interface IDSSocketPairDataMessage
- (IDSSocketPairDataMessage)initWithCommand:(unsigned __int8)command underlyingData:(id)data;
- (IDSSocketPairDataMessage)initWithSequenceNumber:(unsigned int)number streamID:(unsigned __int16)d expectsPeerResponse:(BOOL)response wantsAppAck:(BOOL)ack compressed:(BOOL)compressed didWakeHint:(BOOL)hint peerResponseIdentifier:(id)identifier messageUUID:(id)self0 data:(id)self1 expiryDate:(id)self2;
- (NSData)data;
- (id)_nonHeaderData;
@end

@implementation IDSSocketPairDataMessage

- (id)_nonHeaderData
{
  data = [MEMORY[0x1E695DF88] data];
  v26 = bswap32([(IDSSocketPairDataMessage *)self sequenceNumber]);
  [data appendBytes:&v26 length:4];
  v25 = __rev16([(IDSSocketPairDataMessage *)self streamID]);
  [data appendBytes:&v25 length:2];
  expectsPeerResponse = self->_expectsPeerResponse;
  v24 = expectsPeerResponse;
  if (self->_compressed)
  {
    expectsPeerResponse |= 2u;
    v24 = expectsPeerResponse;
  }

  if (self->_wantsAppAck)
  {
    expectsPeerResponse |= 4u;
    v24 = expectsPeerResponse;
  }

  if (self->_expiryDate)
  {
    expectsPeerResponse |= 8u;
    v24 = expectsPeerResponse;
  }

  topic = [(IDSSocketPairMessage *)self topic];
  if (topic)
  {
    v6 = topic;
    useDynamicServiceName = [(IDSSocketPairMessage *)self useDynamicServiceName];

    if (useDynamicServiceName)
    {
      expectsPeerResponse |= 0x10u;
      v24 = expectsPeerResponse;
    }
  }

  if (self->_didWakeHint)
  {
    v24 = expectsPeerResponse | 0x20;
  }

  [data appendBytes:&v24 length:1];
  v8 = [(NSString *)self->_peerResponseIdentifier dataUsingEncoding:4];
  v23 = bswap32([v8 length]);
  [data appendBytes:&v23 length:4];
  if (v23)
  {
    [data appendData:v8];
  }

  v9 = [(NSString *)self->_messageUUID dataUsingEncoding:4];
  v22 = bswap32([v9 length]);
  [data appendBytes:&v22 length:4];
  if (v22)
  {
    [data appendData:v9];
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

      v21 = bswap32([v14 length]);
      [data appendBytes:&v21 length:4];
      if (v21)
      {
        [data appendData:v14];
      }
    }
  }

  data2 = [(IDSSocketPairDataMessage *)self data];
  v16 = [data2 length];

  if (v16)
  {
    data3 = [(IDSSocketPairDataMessage *)self data];
    [data appendData:data3];
  }

  expiryDate = self->_expiryDate;
  if (expiryDate)
  {
    [(NSDate *)expiryDate timeIntervalSinceReferenceDate];
    v21 = bswap32(v19);
    [data appendBytes:&v21 length:4];
  }

  return data;
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

- (IDSSocketPairDataMessage)initWithCommand:(unsigned __int8)command underlyingData:(id)data
{
  commandCopy = command;
  v50 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v43.receiver = self;
  v43.super_class = IDSSocketPairDataMessage;
  v7 = [(IDSSocketPairMessage *)&v43 initWithCommand:commandCopy underlyingData:dataCopy];
  if (!v7)
  {
LABEL_26:
    v13 = v7;
    goto LABEL_27;
  }

  v42 = -1431655766;
  [dataCopy getBytes:&v42 range:{0, 4}];
  v42 = bswap32(v42);
  v41 = -21846;
  [dataCopy getBytes:&v41 range:{4, 2}];
  v41 = bswap32(v41) >> 16;
  v40 = -86;
  [dataCopy getBytes:&v40 range:{6, 1}];
  v39 = -1431655766;
  [dataCopy getBytes:&v39 range:{7, 4}];
  v8 = v39;
  v9 = bswap32(v39);
  v39 = v9;
  if (!v8)
  {
    v14 = 11;
LABEL_14:
    *buf = -1431655766;
    [dataCopy getBytes:buf range:{v14, 4}];
    v19 = *buf;
    *buf = bswap32(*buf);
    v20 = v14 + 4;
    if (v19)
    {
      v21 = [dataCopy subdataWithRange:v20];
      v22 = *buf;
      v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v21 encoding:4];
      messageUUID = v7->_messageUUID;
      v7->_messageUUID = v23;

      v20 += v22;
    }

    v25 = v40;
    if ((v40 & 0x10) != 0)
    {
      v38 = -1431655766;
      [dataCopy getBytes:&v38 range:{v20, 4}];
      v26 = v38;
      v38 = bswap32(v38);
      v20 += 4;
      if (v26)
      {
        v27 = [dataCopy subdataWithRange:v20];
        v28 = v38;
        v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v27 encoding:4];
        [(IDSSocketPairMessage *)v7 setTopic:v29];

        v20 += v28;
      }

      v25 = v40;
    }

    v7->_payloadOffset = v20;
    v38 = -1431655766;
    if ((v25 & 8) != 0)
    {
      v30 = -4;
    }

    else
    {
      v30 = 0;
    }

    v31 = v30 + [dataCopy length] - v7->_payloadOffset;
    v7->_payloadLength = v31;
    v32 = v40;
    if ((v40 & 8) != 0)
    {
      [dataCopy getBytes:&v38 range:{v31 + v20, 4}];
      v38 = bswap32(v38);
      v33 = objc_alloc(MEMORY[0x1E695DF00]);
      LODWORD(v34) = v38;
      v35 = [v33 initWithTimeIntervalSinceReferenceDate:v34];
      expiryDate = v7->_expiryDate;
      v7->_expiryDate = v35;

      v32 = v40;
    }

    *(&v7->super._wasWrittenToConnection + 2) = v42;
    LOWORD(v7->_sequenceNumber) = v41;
    v7->_expectsPeerResponse = v32 & 1;
    v7->_compressed = (v32 & 2) != 0;
    v7->_wantsAppAck = (v32 & 4) != 0;
    v7->_didWakeHint = (v32 & 0x20) != 0;
    goto LABEL_26;
  }

  if (v9 + 11 <= [dataCopy length])
  {
    v15 = [dataCopy subdataWithRange:{11, v39}];
    v16 = v39;
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v15 encoding:4];
    peerResponseIdentifier = v7->_peerResponseIdentifier;
    v7->_peerResponseIdentifier = v17;

    v14 = v16 + 11;
    goto LABEL_14;
  }

  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v39;
    v12 = [dataCopy length];
    *buf = 67109632;
    v45 = 11;
    v46 = 1024;
    v47 = v11;
    v48 = 1024;
    v49 = v12;
    _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "Response identifier length is bigger than packet size, offset %u identifier length %u packet length %u\n", buf, 0x14u);
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

  v13 = 0;
LABEL_27:

  return v13;
}

- (IDSSocketPairDataMessage)initWithSequenceNumber:(unsigned int)number streamID:(unsigned __int16)d expectsPeerResponse:(BOOL)response wantsAppAck:(BOOL)ack compressed:(BOOL)compressed didWakeHint:(BOOL)hint peerResponseIdentifier:(id)identifier messageUUID:(id)self0 data:(id)self1 expiryDate:(id)self2
{
  identifierCopy = identifier;
  iDCopy = iD;
  dataCopy = data;
  dateCopy = date;
  v26.receiver = self;
  v26.super_class = IDSSocketPairDataMessage;
  v18 = [(IDSSocketPairDataMessage *)&v26 init];
  v19 = v18;
  if (v18)
  {
    *(&v18->super._wasWrittenToConnection + 2) = number;
    LOWORD(v18->_sequenceNumber) = d;
    objc_storeStrong(&v18->_data, data);
    v19->_expectsPeerResponse = response;
    v19->_compressed = compressed;
    v19->_wantsAppAck = ack;
    v19->_didWakeHint = hint;
    objc_storeStrong(&v19->_peerResponseIdentifier, identifier);
    objc_storeStrong(&v19->_messageUUID, iD);
    objc_storeStrong(&v19->_expiryDate, date);
  }

  return v19;
}

@end