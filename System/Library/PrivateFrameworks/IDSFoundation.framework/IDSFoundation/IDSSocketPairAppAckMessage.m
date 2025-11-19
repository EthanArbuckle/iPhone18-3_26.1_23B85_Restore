@interface IDSSocketPairAppAckMessage
- (IDSSocketPairAppAckMessage)initWithCommand:(unsigned __int8)a3 underlyingData:(id)a4;
- (IDSSocketPairAppAckMessage)initWithSequenceNumber:(unsigned int)a3 streamID:(unsigned __int16)a4 peerResponseIdentifier:(id)a5;
- (id)_nonHeaderData;
@end

@implementation IDSSocketPairAppAckMessage

- (IDSSocketPairAppAckMessage)initWithCommand:(unsigned __int8)a3 underlyingData:(id)a4
{
  v4 = a3;
  v6 = a4;
  v24.receiver = self;
  v24.super_class = IDSSocketPairAppAckMessage;
  v7 = [(IDSSocketPairMessage *)&v24 initWithCommand:v4 underlyingData:v6];
  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v7->_offset = 0;
    v23 = -1431655766;
    [v6 getBytes:&v23 range:{0, 4}];
    offset = v7->_offset;
    v23 = bswap32(v23);
    v7->_offset = offset + 4;
    v22 = -21846;
    [v6 getBytes:&v22 range:?];
    v22 = bswap32(v22) >> 16;
    v7->_offset += 2;
    HIDWORD(v21) = -1431655766;
    [v6 getBytes:&v21 + 4 range:?];
    v10 = HIDWORD(v21);
    HIDWORD(v21) = bswap32(HIDWORD(v21));
    v7->_offset += 4;
    if (v10)
    {
      v11 = [v6 subdataWithRange:?];
      v7->_offset += HIDWORD(v21);
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v11 encoding:4];
      peerResponseIdentifier = v7->_peerResponseIdentifier;
      v7->_peerResponseIdentifier = v12;
    }

    LODWORD(v21) = -1431655766;
    v14 = [v6 length] - v7->_offset;
    if (v14 >= 4)
    {
      [v6 getBytes:&v21 range:?];
      v15 = v21;
      v16 = bswap32(v21);
      LODWORD(v21) = v16;
      v17 = v7->_offset + 4;
      v7->_offset = v17;
      if (v15)
      {
        if (v14 - v17 >= v16)
        {
          v18 = [v6 subdataWithRange:?];
          v7->_offset += v21;
          v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v18 encoding:4];
          [(IDSSocketPairMessage *)v7 setTopic:v19];
        }
      }
    }

    v7->_sequenceNumber = v23;
    v7->_streamID = v22;
    objc_autoreleasePoolPop(v8);
  }

  return v7;
}

- (IDSSocketPairAppAckMessage)initWithSequenceNumber:(unsigned int)a3 streamID:(unsigned __int16)a4 peerResponseIdentifier:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = IDSSocketPairAppAckMessage;
  v10 = [(IDSSocketPairAppAckMessage *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_sequenceNumber = a3;
    v10->_streamID = a4;
    objc_storeStrong(&v10->_peerResponseIdentifier, a5);
  }

  return v11;
}

- (id)_nonHeaderData
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v14 = bswap32([(IDSSocketPairAppAckMessage *)self sequenceNumber]);
  [v3 appendBytes:&v14 length:4];
  v13 = __rev16([(IDSSocketPairAppAckMessage *)self streamID]);
  [v3 appendBytes:&v13 length:2];
  v4 = [(NSString *)self->_peerResponseIdentifier dataUsingEncoding:4];
  v12 = bswap32([v4 length]);
  [v3 appendBytes:&v12 length:4];
  if (v12)
  {
    [v3 appendData:v4];
  }

  v5 = [(IDSSocketPairMessage *)self topic];
  if (v5)
  {
    v6 = v5;
    v7 = [(IDSSocketPairMessage *)self useDynamicServiceName];

    if (v7)
    {
      v8 = [(IDSSocketPairMessage *)self topic];
      v9 = [v8 dataUsingEncoding:4];

      v11 = bswap32([v9 length]);
      [v3 appendBytes:&v11 length:4];
      if (v11)
      {
        [v3 appendData:v9];
      }
    }
  }

  return v3;
}

@end