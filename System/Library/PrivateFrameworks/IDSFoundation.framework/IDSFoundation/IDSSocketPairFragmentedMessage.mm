@interface IDSSocketPairFragmentedMessage
+ (id)createMessageFragmentsFromOriginalMessage:(id)a3 withFragmentedMessageID:(unsigned int)a4 fragmentSize:(unsigned int)a5;
+ (id)createOriginalMessageFromFragmentedMessages:(id)a3;
- (IDSSocketPairFragmentedMessage)initWithCommand:(unsigned __int8)a3 underlyingData:(id)a4;
- (IDSSocketPairFragmentedMessage)initWithData:(id)a3 withFragmentedMessageID:(unsigned int)a4 fragmentIndex:(unsigned int)a5 totalFragmentCount:(unsigned int)a6;
- (NSData)data;
- (id)_nonHeaderData;
@end

@implementation IDSSocketPairFragmentedMessage

- (IDSSocketPairFragmentedMessage)initWithCommand:(unsigned __int8)a3 underlyingData:(id)a4
{
  v4 = a3;
  v6 = a4;
  v10.receiver = self;
  v10.super_class = IDSSocketPairFragmentedMessage;
  v7 = [(IDSSocketPairMessage *)&v10 initWithCommand:v4 underlyingData:v6];
  if (v7)
  {
    v8 = [v6 bytes];
    v7->_fragmentedMessageID = bswap32(*v8);
    v7->_fragmentIndex = bswap32(v8[1]);
    v7->_totalFragmentCount = bswap32(v8[2]);
    v7->_offset = 12;
  }

  return v7;
}

- (IDSSocketPairFragmentedMessage)initWithData:(id)a3 withFragmentedMessageID:(unsigned int)a4 fragmentIndex:(unsigned int)a5 totalFragmentCount:(unsigned int)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = IDSSocketPairFragmentedMessage;
  v12 = [(IDSSocketPairFragmentedMessage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_fragmentedMessageID = a4;
    v12->_fragmentIndex = a5;
    v12->_totalFragmentCount = a6;
    objc_storeStrong(&v12->_data, a3);
  }

  return v13;
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
  v7 = bswap32(self->_fragmentedMessageID);
  [v3 appendBytes:&v7 length:4];
  v6 = bswap32(self->_fragmentIndex);
  [v3 appendBytes:&v6 length:4];
  v5 = bswap32(self->_totalFragmentCount);
  [v3 appendBytes:&v5 length:4];
  [v3 appendData:self->_data];

  return v3;
}

+ (id)createOriginalMessageFromFragmentedMessages:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 count];
  if (!v4)
  {
    v20 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v24 = 0;
      _os_log_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_DEFAULT, "createOriginalMessageFromFragmentedMessages: have %u pieces, nothing created", buf, 8u);
    }

    if (!os_log_shim_legacy_logging_enabled())
    {
      goto LABEL_30;
    }

    if (MarcoShouldLog())
    {
      MarcoLog();
    }

    if (!IMShouldLog())
    {
      goto LABEL_30;
    }

LABEL_29:
    IMLogString();
LABEL_30:
    v17 = 0;
    goto LABEL_40;
  }

  v5 = v4;
  v6 = [v3 objectAtIndex:0];
  v7 = [v6 totalFragmentCount];

  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = 0;
  LODWORD(v9) = 0;
  v10 = v7;
  do
  {
    v11 = [v3 objectAtIndex:v8];
    v12 = [v11 data];
    v9 = v9 + [v12 length];

    ++v8;
  }

  while (v7 != v8);
  if (!v9)
  {
LABEL_16:
    v19 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v24 = v5;
      v25 = 1024;
      v26 = v7;
      _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "FragmentedMessage: have %u pieces, %u expected, 0 length", buf, 0xEu);
    }

    if (!os_log_shim_legacy_logging_enabled())
    {
      goto LABEL_30;
    }

    if (MarcoShouldLog())
    {
      MarcoLog();
    }

    if (!IMShouldLog())
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v13 = [MEMORY[0x1E695DF88] dataWithCapacity:v9];
  if (v13)
  {
    for (i = 0; i != v10; ++i)
    {
      v15 = [v3 objectAtIndex:i];
      v16 = [v15 data];
      [v13 appendData:v16];
    }

    v17 = [IDSSocketPairMessage messageWithData:v13];
    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v24 = [v17 command];
      v25 = 1024;
      v26 = [v13 length];
      v27 = 1024;
      v28 = v5;
      _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "createOriginalMessageFromFragmentedMessages: made cmd %u length %u from %u pieces", buf, 0x14u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        [v17 command];
        [v13 length];
        MarcoLog();
      }

      if (IMShouldLog())
      {
        [v17 command];
        [v13 length];
        IMLogString();
      }
    }
  }

  else
  {
    v21 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v24 = v9;
      v25 = 1024;
      v26 = v5;
      v27 = 1024;
      v28 = v7;
      _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "FragmentedMessage: can't create NSMutableData of %u length (have %u pieces, %u expected)", buf, 0x14u);
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

    v17 = 0;
  }

LABEL_40:
  return v17;
}

+ (id)createMessageFragmentsFromOriginalMessage:(id)a3 withFragmentedMessageID:(unsigned int)a4 fragmentSize:(unsigned int)a5
{
  v5 = *&a4;
  v30 = *MEMORY[0x1E69E9840];
  v23 = a3;
  v6 = a5 - +[IDSSocketPairMessage headerDataSize]- 12;
  v7 = [v23 length];
  v8 = v7 / v6;
  v9 = v7 % v6;
  if (v9)
  {
    v10 = (v8 + 1);
  }

  else
  {
    v10 = v8;
  }

  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:(v8 + 1)];
  v21 = v7;
  if (v6 > v7)
  {
    v12 = 0;
    if (!v9)
    {
      goto LABEL_11;
    }

LABEL_10:
    v16 = [v23 subdataWithRangeNoCopy:{(v12 * v6), v9}];
    v17 = [[IDSSocketPairFragmentedMessage alloc] initWithData:v16 withFragmentedMessageID:v5 fragmentIndex:v12 totalFragmentCount:(v8 + 1)];
    [v11 addObject:v17];

    goto LABEL_11;
  }

  v20 = v7 % v6;
  v13 = 0;
  v12 = 0;
  do
  {
    v14 = [v23 subdataWithRangeNoCopy:{v13, v6}];
    v15 = [[IDSSocketPairFragmentedMessage alloc] initWithData:v14 withFragmentedMessageID:v5 fragmentIndex:v12 totalFragmentCount:v10];
    [v11 addObject:v15];

    ++v12;
    v13 += v6;
  }

  while (v12 < v8);
  v9 = v20;
  if (v20)
  {
    goto LABEL_10;
  }

LABEL_11:
  v18 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    v25 = v10;
    v26 = 1024;
    v27 = v21;
    v28 = 1024;
    v29 = a5;
    _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "createMessageFragmentsFromOriginalMessage: made %u pieces from %u length at %u per fragment", buf, 0x14u);
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

  return v11;
}

@end