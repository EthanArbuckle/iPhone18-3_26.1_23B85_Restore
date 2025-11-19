@interface IDSSocketPairMessage
+ (id)messageWithCommand:(unsigned __int8)a3 data:(id)a4;
+ (id)messageWithData:(id)a3;
+ (id)messageWithHeaderData:(id)a3 data:(id)a4;
+ (unsigned)dataLengthFromHeaderData:(id)a3;
- (IDSSocketPairMessage)initWithCommand:(unsigned __int8)a3 underlyingData:(id)a4;
- (NSData)underlyingData;
- (unint64_t)underlyingDataLength;
@end

@implementation IDSSocketPairMessage

- (unint64_t)underlyingDataLength
{
  v2 = [(IDSSocketPairMessage *)self underlyingData];
  v3 = [v2 length];

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
    v12 = [(IDSSocketPairMessage *)self command];
    [v6 appendBytes:&v12 length:1];
    v8 = [(IDSSocketPairMessage *)self _nonHeaderData];
    v9 = [v8 length];
    v11 = bswap32(v9);
    [v6 appendBytes:&v11 length:4];
    if (v9)
    {
      [v6 appendData:v8];
    }

    objc_storeStrong(p_underlyingData, v6);
    v4 = *p_underlyingData;
  }

  return v4;
}

+ (unsigned)dataLengthFromHeaderData:(id)a3
{
  v5 = 0;
  v3 = a3;
  [v3 getBytes:&v5 range:{objc_msgSend(v3, "length") - 4, 4}];

  return bswap32(v5);
}

+ (id)messageWithData:(id)a3
{
  v8 = -86;
  v4 = a3;
  [v4 getBytes:&v8 range:{0, 1}];
  v5 = [v4 subdataWithRangeNoCopy:{objc_msgSend(a1, "headerDataSize"), objc_msgSend(v4, "length") - objc_msgSend(a1, "headerDataSize")}];

  v6 = [a1 messageWithCommand:v8 data:v5];

  return v6;
}

+ (id)messageWithHeaderData:(id)a3 data:(id)a4
{
  v9 = -86;
  v6 = a4;
  [a3 getBytes:&v9 range:{0, 1}];
  v7 = [a1 messageWithCommand:v9 data:v6];

  return v7;
}

+ (id)messageWithCommand:(unsigned __int8)a3 data:(id)a4
{
  v4 = a3;
  v11 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (v4 > 0x39 || ((0x3FFFEFFFFFFFFFFuLL >> v4) & 1) == 0 || (v6 = [objc_alloc(*off_1E77E1A48[v4]) initWithCommand:v4 underlyingData:v5]) == 0)
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v10 = v4;
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

- (IDSSocketPairMessage)initWithCommand:(unsigned __int8)a3 underlyingData:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = IDSSocketPairMessage;
  v8 = [(IDSSocketPairMessage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_underlyingData, a4);
    v9->_command = a3;
  }

  return v9;
}

@end