@interface IDSSocketPairOTRMessage
- (IDSSocketPairOTRMessage)initWithCommand:(unsigned __int8)a3 underlyingData:(id)a4;
- (IDSSocketPairOTRMessage)initWithVersion:(unsigned __int8)a3 encrypted:(BOOL)a4 shouldEncrypt:(BOOL)a5 protectionClass:(unsigned __int8)a6 streamID:(unsigned __int16)a7 priority:(unsigned __int16)a8 sequenceNumber:(unsigned int)a9 data:(id)a10;
- (NSData)data;
- (id)_nonHeaderData;
- (id)description;
@end

@implementation IDSSocketPairOTRMessage

- (IDSSocketPairOTRMessage)initWithCommand:(unsigned __int8)a3 underlyingData:(id)a4
{
  v4 = a3;
  v6 = a4;
  v15.receiver = self;
  v15.super_class = IDSSocketPairOTRMessage;
  v7 = [(IDSSocketPairMessage *)&v15 initWithCommand:v4 underlyingData:v6];
  v8 = v7;
  if (v7)
  {
    v7->_offset = 0;
    v14 = 0;
    v13 = 0;
    v12 = 0;
    [v6 getBytes:&v14 range:{0, 1}];
    v9 = v14;
    v8->_encrypted = v14 >> 7;
    v8->_shouldEncrypt = (v9 & 0x40) != 0;
    v8->_versionNumber = v9 & 0xF;
    ++v8->_offset;
    [v6 getBytes:&v14 range:?];
    v10 = v14;
    v8->_protectionClass = v14 & 3;
    v8->_priority = 100 * (v10 >> 6);
    ++v8->_offset;
    [v6 getBytes:&v13 range:?];
    v13 = bswap32(v13) >> 16;
    v8->_streamID = v13;
    v8->_offset += 2;
    [v6 getBytes:&v12 range:?];
    v8->_sequenceNumber = bswap32(v12);
    v8->_offset += 4;
  }

  return v8;
}

- (IDSSocketPairOTRMessage)initWithVersion:(unsigned __int8)a3 encrypted:(BOOL)a4 shouldEncrypt:(BOOL)a5 protectionClass:(unsigned __int8)a6 streamID:(unsigned __int16)a7 priority:(unsigned __int16)a8 sequenceNumber:(unsigned int)a9 data:(id)a10
{
  v17 = a10;
  v21.receiver = self;
  v21.super_class = IDSSocketPairOTRMessage;
  v18 = [(IDSSocketPairOTRMessage *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_data, a10);
    v19->_versionNumber = a3;
    v19->_encrypted = a4;
    v19->_shouldEncrypt = a5;
    v19->_protectionClass = a6;
    v19->_streamID = a7;
    v19->_priority = a8;
    v19->_sequenceNumber = a9;
  }

  return v19;
}

- (id)description
{
  v2 = @"NO";
  if (self->_encrypted)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  if (self->_shouldEncrypt)
  {
    v2 = @"YES";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"OTRMessage: encrypted %@ shouldEncrypt %@ version %u streamID %u protectionClass %u priority %u sequenceNumber %u", v3, v2, self->_versionNumber, self->_streamID, self->_protectionClass, self->_priority, self->_sequenceNumber];
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
    versionNumber |= 0x80u;
    v10 = versionNumber;
  }

  if (self->_shouldEncrypt)
  {
    v10 = versionNumber | 0x40;
  }

  [v3 appendBytes:&v10 length:1];
  v10 = ((5243 * (self->_priority >> 2)) >> 11) & 0xC0 | self->_protectionClass;
  [v4 appendBytes:&v10 length:1];
  v11 = bswap32(self->_streamID) >> 16;
  [v4 appendBytes:&v11 length:2];
  v12 = bswap32(self->_sequenceNumber);
  [v4 appendBytes:&v12 length:4];
  v6 = [(IDSSocketPairOTRMessage *)self data];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [(IDSSocketPairOTRMessage *)self data];
    [v4 appendData:v8];
  }

  return v4;
}

@end