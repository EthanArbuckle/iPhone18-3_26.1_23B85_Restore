@interface IDSSessionInfoMetadataSerializer
+ (id)_readArrayFromByteArray:(char *)a3 fieldByteSize:(unsigned __int16)a4 byteBuffer:(id *)a5;
+ (id)_readDictionaryFromByteArray:(char *)a3 fieldByteSize:(unsigned __int16)a4 byteBuffer:(id *)a5;
+ (id)deserializeSessionInfoMetadata:(id)a3;
+ (id)serializeSessionInfoMetadata:(id)a3;
+ (void)_writeArrayToByteBuffer:(id)a3 buffer:(id *)a4;
+ (void)_writeDictionaryToByteBuffer:(id)a3 buffer:(id *)a4;
+ (void)_writeNumberToByteBuffer:(id)a3 buffer:(id *)a4;
+ (void)_writeStringToByteBuffer:(id)a3 buffer:(id *)a4;
@end

@implementation IDSSessionInfoMetadataSerializer

+ (id)serializeSessionInfoMetadata:(id)a3
{
  v3 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x4810000000;
  v12 = "";
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13[0] = v4;
  v13[1] = v4;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  IDSByteBufferInitForWrite(v13);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A7C9EEC0;
  v8[3] = &unk_1E77E29F8;
  v8[4] = &v9;
  [v3 enumerateKeysAndObjectsUsingBlock:v8];
  v5 = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
  v6 = [v5 _CUTCopyGzippedData];

  _Block_object_dispose(&v9, 8);

  return v6;
}

+ (void)_writeStringToByteBuffer:(id)a3 buffer:(id *)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 length];
  v7 = v6 + 2;
  v8 = (v6 + 17) & 0xFFFFFFFFFFFFFFF0;
  v9 = (v13 - v8);
  if (v6 != -2)
  {
    memset(v13 - v8, 170, v7);
  }

  if (v5 && (v10 = [v5 UTF8String]) != 0)
  {
    v11 = v10;
    v12 = strlen(v10);
    *v9 = bswap32(v12) >> 16;
    if (v12)
    {
      memcpy(v9 + 1, v11, v12);
    }
  }

  else
  {
    *v9 = 0;
  }

  IDSByteBufferWriteField(a4, 1, v9, v7);
}

+ (void)_writeNumberToByteBuffer:(id)a3 buffer:(id *)a4
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = bswap64([a3 unsignedLongLongValue]);
  IDSByteBufferWriteField(a4, 2, v5, 8uLL);
}

+ (void)_writeDictionaryToByteBuffer:(id)a3 buffer:(id *)a4
{
  v6 = a3;
  __src = bswap32([v6 count]) >> 16;
  IDSByteBufferWriteField(a4, 4, &__src, 2uLL);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A7C9F238;
  v7[3] = &unk_1E77E2A18;
  v7[4] = a1;
  v7[5] = a4;
  [v6 enumerateKeysAndObjectsUsingBlock:v7];
}

+ (void)_writeArrayToByteBuffer:(id)a3 buffer:(id *)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  __src = bswap32([v6 count]) >> 16;
  IDSByteBufferWriteField(a4, 3, &__src, 2uLL);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [a1 _writeNumberToByteBuffer:*(*(&v12 + 1) + 8 * v11++) buffer:{a4, v12}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v9);
  }
}

+ (id)deserializeSessionInfoMetadata:(id)a3
{
  v3 = a3;
  v32 = -86;
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v30 = -21846;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28[0] = v4;
  v28[1] = v4;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [v3 _CUTDecompressData];
  IDSByteBufferInitForRead(v28, [v6 bytes], objc_msgSend(v6, "length"));
  if (!IDSByteBufferReadField(v28, &v32, &v31, &v30))
  {
    v8 = &stru_1F1AC8480;
LABEL_39:
    IDSByteBufferRelease(v28);
    v23 = v5;
    goto LABEL_40;
  }

  v7 = 0x1E696A000uLL;
  v8 = &stru_1F1AC8480;
  while (v32 > 2u)
  {
    if (v32 == 3)
    {
      v10 = [IDSSessionInfoMetadataSerializer _readArrayFromByteArray:v31 fieldByteSize:v30 byteBuffer:v28];
      if (!v10)
      {
LABEL_43:
        IDSByteBufferRelease(v28);
        goto LABEL_44;
      }

      goto LABEL_20;
    }

    if (v32 == 4)
    {
      v10 = [IDSSessionInfoMetadataSerializer _readDictionaryFromByteArray:v31 fieldByteSize:v30 byteBuffer:v28];
      if (!v10)
      {
        goto LABEL_43;
      }

      goto LABEL_20;
    }

LABEL_22:
    if (!IDSByteBufferReadField(v28, &v32, &v31, &v30))
    {
      goto LABEL_39;
    }
  }

  if (v32 != 1)
  {
    if (v32 == 2)
    {
      v9 = bswap64(*v31++);
      v10 = [*(v7 + 3480) numberWithUnsignedLongLong:v9];
LABEL_20:
      v16 = v10;
      [v5 setObject:v10 forKeyedSubscript:v8];

      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v11 = [(__CFString *)v8 isEqualToString:&stru_1F1AC8480];
  v12 = v30 - 2;
  if (v11)
  {
    if (v30 >= 2u)
    {
      v13 = v31 + 2;
      v14 = __rev16(*v31);
      if (v14)
      {
        v15 = v12 >= v14;
      }

      else
      {
        v15 = 0;
      }

      if (v15)
      {
        v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v13 length:v14 encoding:4];

        if (!v21)
        {
          v26 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *v27 = 0;
            _os_log_impl(&dword_1A7AD9000, v26, OS_LOG_TYPE_DEFAULT, "Could not read NSString from byte array", v27, 2u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"IDSNetworking", @"IDS", @"Could not read NSString from byte array");
              if (_IDSShouldLog())
              {
                _IDSLogV(0, @"IDSFoundation", @"IDSNetworking", @"Could not read NSString from byte array");
              }
            }
          }

          v8 = 0;
          goto LABEL_44;
        }

        v31 = &v13[v14];
        v30 = v12 - v14;
        v8 = v21;
      }

      else
      {

        v8 = 0;
      }

      v7 = 0x1E696A000;
    }

    else
    {

      v8 = 0;
    }

    goto LABEL_22;
  }

  if (v30 < 2u)
  {
    v20 = 0;
    goto LABEL_37;
  }

  v17 = v31 + 2;
  v18 = __rev16(*v31);
  if (v18)
  {
    v19 = v12 >= v18;
  }

  else
  {
    v19 = 0;
  }

  if (!v19)
  {
    v20 = 0;
LABEL_36:
    v7 = 0x1E696A000;
LABEL_37:
    [v5 setObject:v20 forKeyedSubscript:v8];

LABEL_21:
    v8 = &stru_1F1AC8480;
    goto LABEL_22;
  }

  v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v17 length:v18 encoding:4];
  if (v22)
  {
    v20 = v22;
    v31 = &v17[v18];
    v30 = v12 - v18;
    goto LABEL_36;
  }

  v25 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 0;
    _os_log_impl(&dword_1A7AD9000, v25, OS_LOG_TYPE_DEFAULT, "Could not read NSString from byte array", v27, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"IDSNetworking", @"IDS", @"Could not read NSString from byte array");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"IDSNetworking", @"Could not read NSString from byte array");
      }
    }
  }

LABEL_44:
  v23 = 0;
LABEL_40:

  return v23;
}

+ (id)_readArrayFromByteArray:(char *)a3 fieldByteSize:(unsigned __int16)a4 byteBuffer:(id *)a5
{
  v6 = a4;
  v16 = a3;
  v15 = a4;
  v14 = -86;
  v8 = [MEMORY[0x1E695DF70] array];
  if (v6 >= 2)
  {
    v15 = v6 - 2;
    v10 = __rev16(*a3);
    v16 = a3 + 2;
    if (v10)
    {
      while (1)
      {
        v9 = 0;
        if (!IDSByteBufferReadField(a5, &v14, &v16, &v15) || v15 < 8u)
        {
          break;
        }

        v11 = bswap64(*v16);
        v16 += 8;
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v11];
        [v8 addObject:v12];

        if (!--v10)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v9 = v8;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_readDictionaryFromByteArray:(char *)a3 fieldByteSize:(unsigned __int16)a4 byteBuffer:(id *)a5
{
  v6 = a4;
  v37 = a3;
  v36 = a4;
  v35 = -86;
  v8 = [MEMORY[0x1E695DF90] dictionary];
  if (v6 < 2)
  {
    goto LABEL_40;
  }

  v36 = v6 - 2;
  v9 = __rev16(*a3);
  v37 = a3 + 2;
  if (!v9)
  {
LABEL_37:
    v29 = v8;
    goto LABEL_41;
  }

  v10 = 0;
  while (1)
  {
    if (!IDSByteBufferReadField(a5, &v35, &v37, &v36))
    {
      goto LABEL_40;
    }

    if (v35 == 1)
    {
      break;
    }

    if (v35 != 2)
    {
      goto LABEL_14;
    }

    if (v36 < 8u)
    {
      v12 = 0;
      goto LABEL_39;
    }

    v36 -= 8;
    v11 = bswap64(*v37);
    v37 += 8;
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v11];
LABEL_15:
    if (!IDSByteBufferReadField(a5, &v35, &v37, &v36))
    {
      goto LABEL_39;
    }

    if (v35 == 3)
    {
      if (v36 < 2u)
      {
        goto LABEL_39;
      }

      v36 -= 2;
      v23 = *v37;
      v24 = v37[1];
      v37 += 2;
      v18 = [MEMORY[0x1E695DF70] array];
      if (v24 | (v23 << 8))
      {
        v25 = (v23 << 8) + v24;
        while (IDSByteBufferReadField(a5, &v35, &v37, &v36) && v36 > 7u)
        {
          v26 = bswap64(*v37);
          v37 += 8;
          v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v26];
          [v18 addObject:v27];

          if (!--v25)
          {
            goto LABEL_30;
          }
        }

        goto LABEL_39;
      }

      goto LABEL_30;
    }

    if (v35 == 1 && (v17 = v36 - 2, v36 >= 2u))
    {
      v18 = 0;
      v19 = v37 + 2;
      v20 = __rev16(*v37);
      if (v20)
      {
        v21 = v17 - v20;
        if (v17 >= v20)
        {
          v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v19 length:v20 encoding:4];
          if (v22)
          {
            v18 = v22;
            v37 = &v19[v20];
            v36 = v21;
LABEL_30:
            if (v12 && v18)
            {
              [v8 setObject:v18 forKeyedSubscript:v12];
            }

            goto LABEL_33;
          }

          v32 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *v33 = 0;
            _os_log_impl(&dword_1A7AD9000, v32, OS_LOG_TYPE_DEFAULT, "Could not read NSString from byte array", v33, 2u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"IDSNetworking", @"IDS", @"Could not read NSString from byte array");
              if (_IDSShouldLog())
              {
                _IDSLogV(0, @"IDSFoundation", @"IDSNetworking", @"Could not read NSString from byte array");
              }
            }
          }

LABEL_39:

          goto LABEL_40;
        }
      }
    }

    else
    {
      v18 = 0;
    }

LABEL_33:

    if (++v10 == v9)
    {
      goto LABEL_37;
    }
  }

  v13 = v36 - 2;
  if (v36 < 2u || ((v14 = v37 + 2, v15 = __rev16(*v37), v15) ? (v16 = v13 >= v15) : (v16 = 0), !v16))
  {
LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v14 length:v15 encoding:4];
  if (v28)
  {
    v12 = v28;
    v37 = &v14[v15];
    v36 = v13 - v15;
    goto LABEL_15;
  }

  v31 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v31, OS_LOG_TYPE_DEFAULT, "Could not read NSString from byte array", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"IDSNetworking", @"IDS", @"Could not read NSString from byte array");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"IDSNetworking", @"Could not read NSString from byte array");
      }
    }
  }

LABEL_40:
  v29 = 0;
LABEL_41:

  return v29;
}

@end