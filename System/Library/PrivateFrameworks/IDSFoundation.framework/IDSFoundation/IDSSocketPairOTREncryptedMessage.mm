@interface IDSSocketPairOTREncryptedMessage
- (IDSSocketPairOTREncryptedMessage)initWithCommand:(unsigned __int8)command underlyingData:(id)data;
- (IDSSocketPairOTREncryptedMessage)initWithVersion:(unsigned __int8)version encrypted:(BOOL)encrypted streamID:(unsigned __int16)d priority:(unsigned __int16)priority sequenceNumber:(unsigned int)number fileXfer:(BOOL)xfer data:(id)data;
- (NSData)data;
- (id)_nonHeaderData;
@end

@implementation IDSSocketPairOTREncryptedMessage

- (IDSSocketPairOTREncryptedMessage)initWithCommand:(unsigned __int8)command underlyingData:(id)data
{
  commandCopy = command;
  dataCopy = data;
  v16.receiver = self;
  v16.super_class = IDSSocketPairOTREncryptedMessage;
  v7 = [(IDSSocketPairMessage *)&v16 initWithCommand:commandCopy underlyingData:dataCopy];
  v8 = v7;
  if (v7)
  {
    v7->_offset = 0;
    v15 = 0;
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v11 = 0;
    [dataCopy getBytes:&v15 range:{0, 1}];
    v9 = v15;
    v8->_versionNumber = v15 & 0x7F;
    v8->_encrypted = v9 >> 7;
    ++v8->_offset;
    [dataCopy getBytes:&v11 range:?];
    v8->_fileXfer = v11 != 0;
    ++v8->_offset;
    [dataCopy getBytes:&v14 range:?];
    v14 = bswap32(v14) >> 16;
    v8->_streamID = v14;
    v8->_offset += 2;
    [dataCopy getBytes:&v13 range:?];
    v13 = bswap32(v13) >> 16;
    v8->_priority = v13;
    v8->_offset += 2;
    [dataCopy getBytes:&v12 range:?];
    v8->_sequenceNumber = bswap32(v12);
    v8->_offset += 4;
  }

  return v8;
}

- (IDSSocketPairOTREncryptedMessage)initWithVersion:(unsigned __int8)version encrypted:(BOOL)encrypted streamID:(unsigned __int16)d priority:(unsigned __int16)priority sequenceNumber:(unsigned int)number fileXfer:(BOOL)xfer data:(id)data
{
  dataCopy = data;
  v20.receiver = self;
  v20.super_class = IDSSocketPairOTREncryptedMessage;
  v17 = [(IDSSocketPairOTREncryptedMessage *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_data, data);
    v18->_versionNumber = version;
    v18->_encrypted = encrypted;
    v18->_fileXfer = xfer;
    v18->_streamID = d;
    v18->_priority = priority;
    v18->_sequenceNumber = number;
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
    underlyingData = [(IDSSocketPairMessage *)self underlyingData];
    offset = self->_offset;
    _existingUnderlyingData = [(IDSSocketPairMessage *)self _existingUnderlyingData];
    v3 = [underlyingData subdataWithRangeNoCopy:{offset, objc_msgSend(_existingUnderlyingData, "length") - self->_offset}];
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
  data = [(IDSSocketPairOTREncryptedMessage *)self data];
  v7 = [data length];

  if (v7)
  {
    data2 = [(IDSSocketPairOTREncryptedMessage *)self data];
    [v4 appendData:data2];
  }

  return v4;
}

@end