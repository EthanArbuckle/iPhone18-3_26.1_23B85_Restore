@interface IDSSocketPairOTREncryptedMessage
- (IDSSocketPairOTREncryptedMessage)initWithCommand:(unsigned __int8)a3 underlyingData:(id)a4;
- (IDSSocketPairOTREncryptedMessage)initWithVersion:(unsigned __int8)a3 encrypted:(BOOL)a4 streamID:(unsigned __int16)a5 priority:(unsigned __int16)a6 sequenceNumber:(unsigned int)a7 fileXfer:(BOOL)a8 data:(id)a9;
- (NSData)data;
- (id)_nonHeaderData;
@end

@implementation IDSSocketPairOTREncryptedMessage

- (IDSSocketPairOTREncryptedMessage)initWithCommand:(unsigned __int8)a3 underlyingData:(id)a4
{
  v4 = a3;
  v6 = a4;
  v16.receiver = self;
  v16.super_class = IDSSocketPairOTREncryptedMessage;
  v7 = [(IDSSocketPairMessage *)&v16 initWithCommand:v4 underlyingData:v6];
  v8 = v7;
  if (v7)
  {
    v7->_offset = 0;
    v15 = 0;
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v11 = 0;
    [v6 getBytes:&v15 range:{0, 1}];
    v9 = v15;
    v8->_versionNumber = v15 & 0x7F;
    v8->_encrypted = v9 >> 7;
    ++v8->_offset;
    [v6 getBytes:&v11 range:?];
    v8->_fileXfer = v11 != 0;
    ++v8->_offset;
    [v6 getBytes:&v14 range:?];
    v14 = bswap32(v14) >> 16;
    v8->_streamID = v14;
    v8->_offset += 2;
    [v6 getBytes:&v13 range:?];
    v13 = bswap32(v13) >> 16;
    v8->_priority = v13;
    v8->_offset += 2;
    [v6 getBytes:&v12 range:?];
    v8->_sequenceNumber = bswap32(v12);
    v8->_offset += 4;
  }

  return v8;
}

- (IDSSocketPairOTREncryptedMessage)initWithVersion:(unsigned __int8)a3 encrypted:(BOOL)a4 streamID:(unsigned __int16)a5 priority:(unsigned __int16)a6 sequenceNumber:(unsigned int)a7 fileXfer:(BOOL)a8 data:(id)a9
{
  v16 = a9;
  v20.receiver = self;
  v20.super_class = IDSSocketPairOTREncryptedMessage;
  v17 = [(IDSSocketPairOTREncryptedMessage *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_data, a9);
    v18->_versionNumber = a3;
    v18->_encrypted = a4;
    v18->_fileXfer = a8;
    v18->_streamID = a5;
    v18->_priority = a6;
    v18->_sequenceNumber = a7;
  }

  return v18;
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
    v5 = [(IDSSocketPairMessage *)self underlyingData];
    offset = self->_offset;
    v7 = [(IDSSocketPairMessage *)self _existingUnderlyingData];
    v3 = [v5 subdataWithRangeNoCopy:{offset, objc_msgSend(v7, "length") - self->_offset}];
  }

  return v3;
}

- (id)_nonHeaderData
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v4 = v3;
  versionNumber = self->_versionNumber;
  v10 = versionNumber;
  if (self->_encrypted)
  {
    v10 = versionNumber | 0x80;
  }

  [v3 appendBytes:&v10 length:1];
  [v4 appendBytes:&self->_fileXfer length:1];
  v11 = bswap32(self->_streamID) >> 16;
  [v4 appendBytes:&v11 length:2];
  v11 = bswap32(self->_priority) >> 16;
  [v4 appendBytes:&v11 length:2];
  v12 = bswap32(self->_sequenceNumber);
  [v4 appendBytes:&v12 length:4];
  v6 = [(IDSSocketPairOTREncryptedMessage *)self data];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [(IDSSocketPairOTREncryptedMessage *)self data];
    [v4 appendData:v8];
  }

  return v4;
}

@end