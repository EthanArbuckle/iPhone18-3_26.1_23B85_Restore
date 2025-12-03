@interface IDSSocketPairMessage
+ (id)messageWithCommand:(unsigned __int8)command data:(id)data;
+ (id)messageWithData:(id)data;
+ (id)messageWithHeaderData:(id)data data:(id)a4;
+ (unsigned)dataLengthFromHeaderData:(id)data;
- (IDSSocketPairMessage)initWithCommand:(unsigned __int8)command underlyingData:(id)data;
- (NSData)underlyingData;
- (unint64_t)underlyingDataLength;
@end

@implementation IDSSocketPairMessage

- (unint64_t)underlyingDataLength
{
  underlyingData = [(IDSSocketPairMessage *)self underlyingData];
  v3 = [underlyingData length];

  return v3;
}

- (NSData)underlyingData
{
  p_underlyingData = &self->_underlyingData;
  underlyingData = self->_underlyingData;
  if (underlyingData)
  {
    v4 = underlyingData;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF88]);
    v7 = v6;
    command = [(IDSSocketPairMessage *)self command];
    [v6 appendBytes:&command length:1];
    _nonHeaderData = [(IDSSocketPairMessage *)self _nonHeaderData];
    v9 = [_nonHeaderData length];
    v11 = bswap32(v9);
    [v6 appendBytes:&v11 length:4];
    if (v9)
    {
      [v6 appendData:_nonHeaderData];
    }

    objc_storeStrong(p_underlyingData, v6);
    v4 = *p_underlyingData;
  }

  return v4;
}

+ (unsigned)dataLengthFromHeaderData:(id)data
{
  v5 = 0;
  dataCopy = data;
  [dataCopy getBytes:&v5 range:{objc_msgSend(dataCopy, "length") - 4, 4}];

  return bswap32(v5);
}

+ (id)messageWithData:(id)data
{
  v8 = -86;
  dataCopy = data;
  [dataCopy getBytes:&v8 range:{0, 1}];
  v5 = [dataCopy subdataWithRangeNoCopy:{objc_msgSend(self, "headerDataSize"), objc_msgSend(dataCopy, "length") - objc_msgSend(self, "headerDataSize")}];

  v6 = [self messageWithCommand:v8 data:v5];

  return v6;
}

+ (id)messageWithHeaderData:(id)data data:(id)a4
{
  v9 = -86;
  v6 = a4;
  [data getBytes:&v9 range:{0, 1}];
  v7 = [self messageWithCommand:v9 data:v6];

  return v7;
}

+ (id)messageWithCommand:(unsigned __int8)command data:(id)data
{
  commandCopy = command;
  v11 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (commandCopy > 0x39 || ((0x3FFFEFFFFFFFFFFuLL >> commandCopy) & 1) == 0 || (v6 = [objc_alloc(*off_1E77E1A48[commandCopy]) initWithCommand:commandCopy underlyingData:dataCopy]) == 0)
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v10 = commandCopy;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "Got unhandled socket pair command %d", buf, 8u);
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

    v6 = 0;
  }

  return v6;
}

- (IDSSocketPairMessage)initWithCommand:(unsigned __int8)command underlyingData:(id)data
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = IDSSocketPairMessage;
  v8 = [(IDSSocketPairMessage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_underlyingData, data);
    v9->_command = command;
  }

  return v9;
}

@end