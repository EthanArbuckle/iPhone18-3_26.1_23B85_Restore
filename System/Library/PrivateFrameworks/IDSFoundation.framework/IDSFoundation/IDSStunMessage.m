@interface IDSStunMessage
- (BOOL)addAttribute:(IDSStunAttribute *)a3;
- (BOOL)dataIndicationToBuffer:(char *)a3 outputLength:(int *)a4 data:(char *)a5 dataLen:(int)a6 keyData:(id)a7 remainingLength:(unint64_t)a8;
- (BOOL)decryptAES128CTRStunAttributes:(id)a3;
- (BOOL)getAttribute:(int64_t)a3 attribute:(IDSStunAttribute *)a4;
- (BOOL)hasAttribute:(int64_t)a3;
- (BOOL)initAES128CTR:(id)a3;
- (BOOL)read:(char *)a3 inputLength:(unint64_t)a4 internal:(BOOL)a5;
- (BOOL)stunRequestToBuffer:(char *)a3 outputLength:(int *)a4 transactionID:(char *)a5 reqCount:(int)a6 userName:(char *)a7 usernameLen:(int)a8 sendTime:(unsigned __int16)a9 keyData:(id)a10 remainingLength:(unint64_t)a11;
- (BOOL)stunResponseToBuffer:(char *)a3 outputLength:(int *)a4 transactionID:(id)a5 reqCount:(int)a6 echoTime:(unsigned __int16)a7 delay:(unsigned __int16)a8 keyData:(id)a9 remainingLength:(unint64_t)a10;
- (BOOL)verifyMessageIntegrityWithKey:(id)a3 inputBuffer:(char *)a4 inputLength:(int)a5;
- (BOOL)write:(char *)a3 outputLength:(int *)a4 remainingLength:(unint64_t)a5 internal:(BOOL)a6;
- (IDSStunMessage)initWithType:(int64_t)a3;
- (void)_addBinaryDataAttribute:(int64_t)a3 value:(id)a4;
- (void)_addUInt16Attribute:(int64_t)a3 value:(unsigned __int16)a4;
- (void)_addUInt32Attribute:(int64_t)a3 value:(unsigned int)a4;
- (void)_addUInt64Attribute:(int64_t)a3 value:(unint64_t)a4;
- (void)_addUInt8Attribute:(int64_t)a3 value:(unsigned __int8)a4;
- (void)_addUUIDAttribute:(int64_t)a3 value:(id)a4;
- (void)_addXORAddressAttribute:(int64_t)a3 value:(sockaddr *)a4;
- (void)dealloc;
- (void)setAttributes:(id)a3;
- (void)setTransactionID:(id)a3;
- (void)setTransactionID:(id)a3 attributes:(id)a4;
@end

@implementation IDSStunMessage

- (IDSStunMessage)initWithType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = IDSStunMessage;
  result = [(IDSStunMessage *)&v5 init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

- (void)dealloc
{
  cryptorRef = self->_cryptorRef;
  if (cryptorRef)
  {
    CCCryptorRelease(cryptorRef);
  }

  v4.receiver = self;
  v4.super_class = IDSStunMessage;
  [(IDSStunMessage *)&v4 dealloc];
}

- (BOOL)addAttribute:(IDSStunAttribute *)a3
{
  if (!a3)
  {
    return 0;
  }

  numAttribute = self->_numAttribute;
  if (numAttribute < 19)
  {
    memcpy(&self->_attributes[numAttribute], a3, sizeof(self->_attributes[numAttribute]));
    ++self->_numAttribute;
    return 1;
  }

  else
  {
    v5 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E18BB8();
    }

    return 0;
  }
}

- (BOOL)hasAttribute:(int64_t)a3
{
  numAttribute = self->_numAttribute;
  if (numAttribute < 1)
  {
    return 0;
  }

  if (self->_attributes[0].type == a3)
  {
    return 1;
  }

  v5 = &self->_attributes[1];
  v6 = 1;
  do
  {
    v7 = v6;
    if (numAttribute == v6)
    {
      break;
    }

    type = v5->type;
    ++v6;
    ++v5;
  }

  while (type != a3);
  return v7 < numAttribute;
}

- (BOOL)getAttribute:(int64_t)a3 attribute:(IDSStunAttribute *)a4
{
  numAttribute = self->_numAttribute;
  if (numAttribute < 1)
  {
    return 0;
  }

  attributes = self->_attributes;
  if (self->_attributes[0].type != a3)
  {
    v7 = 0;
    v8 = &self->_attributes[1];
    while (numAttribute - 1 != v7)
    {
      type = v8->type;
      ++v8;
      ++v7;
      if (type == a3)
      {
        v6 = v7 < numAttribute;
        attributes = v8 - 1;
        goto LABEL_8;
      }
    }

    return 0;
  }

  v6 = 1;
LABEL_8:
  memcpy(a4, attributes, sizeof(IDSStunAttribute));
  return v6;
}

- (BOOL)stunRequestToBuffer:(char *)a3 outputLength:(int *)a4 transactionID:(char *)a5 reqCount:(int)a6 userName:(char *)a7 usernameLen:(int)a8 sendTime:(unsigned __int16)a9 keyData:(id)a10 remainingLength:(unint64_t)a11
{
  v25[186] = *MEMORY[0x1E69E9840];
  v18 = a10;
  if (a3)
  {
    v19 = a4 == 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = v19 || a11 == 0;
  v21 = !v20;
  if (v20)
  {
    v23 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v25[0]) = 134218496;
      *(v25 + 4) = a3;
      WORD2(v25[1]) = 2048;
      *(&v25[1] + 6) = a4;
      HIWORD(v25[2]) = 2048;
      v25[3] = a11;
      _os_log_error_impl(&dword_1A7AD9000, v23, OS_LOG_TYPE_ERROR, "refreshRequestToBuffer - invalid parameter outputBuffer: %p, outputLength: %p, remainingLength: %zd", v25, 0x20u);
    }
  }

  else
  {
    if (a5)
    {
      v22 = [MEMORY[0x1E695DEF0] dataWithBytes:a5 length:12];
      [(IDSStunMessage *)self setTransactionID:v22];
    }

    else
    {
      [(IDSStunMessage *)self setTransactionID:0];
    }

    if (a6 >= 1)
    {
      memset(v25, 170, 0x5D0uLL);
      LODWORD(v25[0]) = 262181;
      LODWORD(v25[1]) = a6;
      [(IDSStunMessage *)self addAttribute:v25];
    }

    if (a7 && a8 >= 1)
    {
      memset(v25, 170, 0x5D0uLL);
      LOWORD(v25[0]) = 6;
      WORD1(v25[0]) = a8;
      LODWORD(v25[1]) = a8;
      __memcpy_chk();
      [(IDSStunMessage *)self addAttribute:v25];
    }

    if (a9)
    {
      memset(v25, 170, 0x5D0uLL);
      LODWORD(v25[0]) = 294917;
      LODWORD(v25[1]) = 4;
      BYTE4(v25[1]) = HIBYTE(a9);
      BYTE5(v25[1]) = a9;
      HIWORD(v25[1]) = 0;
      [(IDSStunMessage *)self addAttribute:v25];
    }

    if (v18)
    {
      [(IDSStunMessage *)self setKey:v18];
      memset(v25, 170, 0x5D0uLL);
      LODWORD(v25[0]) = 1310728;
      LODWORD(v25[1]) = 20;
      [(IDSStunMessage *)self addAttribute:v25];
    }

    [(IDSStunMessage *)self write:a3 outputLength:a4 remainingLength:a11];
  }

  return v21;
}

- (BOOL)stunResponseToBuffer:(char *)a3 outputLength:(int *)a4 transactionID:(id)a5 reqCount:(int)a6 echoTime:(unsigned __int16)a7 delay:(unsigned __int16)a8 keyData:(id)a9 remainingLength:(unint64_t)a10
{
  v11 = a7;
  v23[186] = *MEMORY[0x1E69E9840];
  v17 = a9;
  if (a3)
  {
    v18 = a4 == 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = v18 || a10 == 0;
  v20 = !v19;
  if (v19)
  {
    v21 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v23[0]) = 134218496;
      *(v23 + 4) = a3;
      WORD2(v23[1]) = 2048;
      *(&v23[1] + 6) = a4;
      HIWORD(v23[2]) = 2048;
      v23[3] = a10;
      _os_log_error_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_ERROR, "refreshRequestToBuffer - invalid parameter: outputBuffer: %p, outputLength: %p, remainingLength: %zd", v23, 0x20u);
    }
  }

  else
  {
    [(IDSStunMessage *)self setTransactionID:a5];
    if (a6 >= 1)
    {
      memset(v23, 170, 0x5D0uLL);
      LODWORD(v23[0]) = 262181;
      LODWORD(v23[1]) = a6;
      [(IDSStunMessage *)self addAttribute:v23];
    }

    if (v11)
    {
      memset(v23, 170, 0x5D0uLL);
      LODWORD(v23[0]) = 294917;
      LODWORD(v23[1]) = 4;
      BYTE4(v23[1]) = BYTE1(v11);
      BYTE5(v23[1]) = v11;
      BYTE6(v23[1]) = HIBYTE(a8);
      HIBYTE(v23[1]) = a8;
      [(IDSStunMessage *)self addAttribute:v23];
    }

    if (v17)
    {
      [(IDSStunMessage *)self setKey:v17];
      memset(v23, 170, 0x5D0uLL);
      LODWORD(v23[0]) = 1310728;
      LODWORD(v23[1]) = 20;
      [(IDSStunMessage *)self addAttribute:v23];
    }

    [(IDSStunMessage *)self write:a3 outputLength:a4 remainingLength:a10];
  }

  return v20;
}

- (BOOL)dataIndicationToBuffer:(char *)a3 outputLength:(int *)a4 data:(char *)a5 dataLen:(int)a6 keyData:(id)a7 remainingLength:(unint64_t)a8
{
  __b[187] = *MEMORY[0x1E69E9840];
  v14 = a7;
  if (a3)
  {
    v15 = a4 == 0;
  }

  else
  {
    v15 = 1;
  }

  v17 = v15 || a5 == 0 || a6 <= 0;
  v18 = !v17;
  if (v17)
  {
    v19 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__b[0]) = 134218496;
      *(__b + 4) = a3;
      WORD2(__b[1]) = 2048;
      *(&__b[1] + 6) = a4;
      HIWORD(__b[2]) = 2048;
      __b[3] = a8;
      _os_log_error_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_ERROR, "failed to create data indication with invalid parameter, outputBuffer: %p, outputLength: %p, remainingLength: %zd", __b, 0x20u);
    }
  }

  else
  {
    [(IDSStunMessage *)self setTransactionID:0];
    memset(__b, 170, 0x5D0uLL);
    LOWORD(__b[0]) = 19;
    WORD1(__b[0]) = a6;
    LODWORD(__b[1]) = a6;
    __memcpy_chk();
    [(IDSStunMessage *)self addAttribute:__b];
    if (v14)
    {
      [(IDSStunMessage *)self setKey:v14];
      memset(v21, 170, sizeof(v21));
      v21[0] = 1310728;
      v21[2] = 20;
      [(IDSStunMessage *)self addAttribute:v21];
    }

    [(IDSStunMessage *)self write:a3 outputLength:a4 remainingLength:a8];
  }

  return v18;
}

- (void)_addUInt8Attribute:(int64_t)a3 value:(unsigned __int8)a4
{
  v5 = a3;
  v8 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  __b[0] = v5;
  __b[1] = 1;
  LOBYTE(__b[4]) = a4;
  [(IDSStunMessage *)self addAttribute:__b];
}

- (void)_addUInt16Attribute:(int64_t)a3 value:(unsigned __int16)a4
{
  v5 = a3;
  v8 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  __b[0] = v5;
  __b[1] = 2;
  __b[4] = a4;
  [(IDSStunMessage *)self addAttribute:__b];
}

- (void)_addUInt32Attribute:(int64_t)a3 value:(unsigned int)a4
{
  v5 = a3;
  v8 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  LOWORD(__b[0]) = v5;
  HIWORD(__b[0]) = 4;
  __b[2] = a4;
  [(IDSStunMessage *)self addAttribute:__b];
}

- (void)_addUInt64Attribute:(int64_t)a3 value:(unint64_t)a4
{
  v5 = a3;
  __b[186] = *MEMORY[0x1E69E9840];
  memset(__b, 170, 0x5D0uLL);
  LOWORD(__b[0]) = v5;
  WORD1(__b[0]) = 8;
  __b[1] = a4;
  [(IDSStunMessage *)self addAttribute:__b];
}

- (void)_addBinaryDataAttribute:(int64_t)a3 value:(id)a4
{
  v4 = a3;
  v15 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      memset(__b, 170, sizeof(__b));
      v7 = [v6 length];
      v8 = v7;
      if (v7 < 0x5C1)
      {
        LOWORD(__b[0]) = v4;
        HIWORD(__b[0]) = v7;
        BYTE2(__b[1]) = 0;
        __b[2] = v7;
        [v6 bytes];
        __memcpy_chk();
        [(IDSStunMessage *)self addAttribute:__b];
      }

      else
      {
        v9 = +[IDSFoundationLog Stun];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 134218240;
          v11 = v8;
          v12 = 2048;
          v13 = 1472;
          _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "_addBinaryDataAttribute: len %lu > sizeof(attr.value.binaryData.data) %lu", &v10, 0x16u);
        }
      }
    }
  }
}

- (void)_addUUIDAttribute:(int64_t)a3 value:(id)a4
{
  v4 = a3;
  v10 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      memset(__b, 170, sizeof(__b));
      v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v6];
      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      [v7 getUUIDBytes:&v8];
      LOWORD(__b[0]) = v4;
      HIWORD(__b[0]) = 16;
      __b[2] = 16;
      *&__b[3] = v8;
      [(IDSStunMessage *)self addAttribute:__b];
    }
  }
}

- (void)_addXORAddressAttribute:(int64_t)a3 value:(sockaddr *)a4
{
  v9 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    sa_family = a4->sa_family;
    if (sa_family == 30 || sa_family == 2)
    {
      v6 = a3;
      memset(__b, 170, sizeof(__b));
      __b[0] = v6;
      __b[1] = 128;
      __memcpy_chk();
      [(IDSStunMessage *)self addAttribute:__b];
    }
  }
}

- (void)setTransactionID:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    memset(bytes, 170, sizeof(bytes));
    v5 = CCRandomGenerateBytes(bytes, 0xCuLL);
    if (v5)
    {
      v6 = v5;
      v7 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v19 = v6;
        _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "CCRandomGenerateBytes failed (%d), use arc4random_buf.", buf, 8u);
      }

      arc4random_buf(bytes, 0xCuLL);
    }

    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:bytes length:12];
  }

  objc_storeStrong(&self->_transactionID, v4);
  v8 = [(NSData *)self->_transactionID bytes];
  if ([(NSData *)self->_transactionID length]== 12)
  {
    v9 = [MEMORY[0x1E696AD60] stringWithCapacity:24];
    v10 = 0;
    do
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02X", v8[v10]];
      [v9 appendString:v11];

      ++v10;
    }

    while (v10 != 12);
    v12 = [MEMORY[0x1E696AEC0] stringWithString:v9];
    requestID = self->_requestID;
    self->_requestID = v12;
  }

  else
  {
    v9 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(NSData *)self->_transactionID length];
      *bytes = 134218240;
      *&bytes[4] = v14;
      v16 = 2048;
      v17 = 12;
      _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "ERROR: TransactionID length = %lu, mismatch STUN_TRANSACTIONID_LEN = %ld", bytes, 0x16u);
    }
  }
}

- (void)setAttributes:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKey:?];

  if (v5)
  {
    v6 = [v4 objectForKey:@"ids-stun-attribute-channelnumber"];
    -[IDSStunMessage _addUInt32Attribute:value:](self, "_addUInt32Attribute:value:", 12, [v6 unsignedIntegerValue] << 16);
  }

  v7 = [v4 objectForKey:@"ids-stun-attribute-qr-sessiontokenkey"];

  if (v7)
  {
    v8 = [v4 objectForKey:@"ids-stun-attribute-qr-sessiontokenkey"];
    v9 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v8;
      _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "setAttributes: IDSStunAttributeQRSessionTokenKey: %@", buf, 0xCu);
    }

    [(IDSStunMessage *)self _addBinaryDataAttribute:65522 value:v8];
  }

  v10 = [v4 objectForKey:?];

  if (v10)
  {
    v11 = [v4 objectForKey:@"ids-stun-attribute-qr-realloctoken"];
    v12 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v11;
      _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "setAttributes: IDSStunAttributeQRReallocToken: %@", buf, 0xCu);
    }

    [(IDSStunMessage *)self _addBinaryDataAttribute:65520 value:v11];
  }

  [v4 allKeys];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v13 = v26 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (!v14)
  {

    goto LABEL_115;
  }

  v23 = 0;
  v24 = 0;
  v15 = *v26;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v26 != v15)
      {
        objc_enumerationMutation(v13);
      }

      v17 = *(*(&v25 + 1) + 8 * i);
      v18 = [v4 objectForKey:{v17, v21}];
      if ([v17 isEqualToString:@"ids-stun-attribute-requestedtransport"])
      {
        -[IDSStunMessage _addUInt32Attribute:value:](self, "_addUInt32Attribute:value:", 25, [v18 unsignedCharValue] << 24);
      }

      else if (([v17 isEqualToString:@"ids-stun-attribute-qr-sessiontokenkey"] & 1) == 0)
      {
        if ([v17 isEqualToString:@"ids-stun-attribute-qr-sessionid"])
        {
          [(IDSStunMessage *)self _addUUIDAttribute:65521 value:v18];
        }

        else if ([v17 isEqualToString:@"ids-stun-attribute-lifetime"])
        {
          -[IDSStunMessage _addUInt32Attribute:value:](self, "_addUInt32Attribute:value:", 13, [v18 unsignedIntegerValue]);
        }

        else if (([v17 isEqualToString:@"ids-stun-attribute-qr-realloctoken"] & 1) == 0)
        {
          if ([v17 isEqualToString:@"ids-stun-attribute-messageintegrity"])
          {
            [(IDSStunMessage *)self setKey:v18];
            v24 = 1;
          }

          else if ([v17 isEqualToString:@"ids-stun-attribute-data"])
          {
            [(IDSStunMessage *)self _addBinaryDataAttribute:19 value:v18];
          }

          else if (([v17 isEqualToString:@"ids-stun-attribute-channelnumber"] & 1) == 0)
          {
            if ([v17 isEqualToString:@"ids-stun-attribute-xormappedaddress"])
            {
              -[IDSStunMessage _addXORAddressAttribute:value:](self, "_addXORAddressAttribute:value:", 32, [v18 sa]);
            }

            else if ([v17 isEqualToString:@"ids-stun-attribute-cellrat"])
            {
              -[IDSStunMessage _addUInt32Attribute:value:](self, "_addUInt32Attribute:value:", 32775, [v18 unsignedIntegerValue]);
            }

            else if ([v17 isEqualToString:@"ids-stun-attribute-linkuuid"])
            {
              [(IDSStunMessage *)self _addBinaryDataAttribute:32776 value:v18];
            }

            else if ([v17 isEqualToString:@"ids-stun-attribute-software"])
            {
              [(IDSStunMessage *)self _addBinaryDataAttribute:32802 value:v18];
            }

            else if ([v17 isEqualToString:@"ids-stun-attribute-clienttime"])
            {
              -[IDSStunMessage _addUInt32Attribute:value:](self, "_addUInt32Attribute:value:", 65523, [v18 unsignedIntegerValue]);
            }

            else if ([v17 isEqualToString:@"ids-stun-attribute-clientlatency"])
            {
              -[IDSStunMessage _addUInt32Attribute:value:](self, "_addUInt32Attribute:value:", 65524, [v18 unsignedIntegerValue]);
            }

            else if ([v17 isEqualToString:@"ids-stun-attribute-infoflags"])
            {
              -[IDSStunMessage _addUInt32Attribute:value:](self, "_addUInt32Attribute:value:", 65525, [v18 unsignedIntegerValue]);
            }

            else if ([v17 isEqualToString:@"ids-stun-attribute-capabilityflags"])
            {
              -[IDSStunMessage _addUInt64Attribute:value:](self, "_addUInt64Attribute:value:", 65527, [v18 longValue]);
            }

            else if ([v17 isEqualToString:@"ids-stun-attribute-enc-pub-streams"])
            {
              self->_requiresAES128CTR = 1;
              [(IDSStunMessage *)self _addBinaryDataAttribute:60929 value:v18];
            }

            else if ([v17 isEqualToString:@"ids-stun-attribute-enc-sub-streams"])
            {
              self->_requiresAES128CTR = 1;
              [(IDSStunMessage *)self _addBinaryDataAttribute:60930 value:v18];
            }

            else if ([v17 isEqualToString:@"ids-stun-attribvute-enc-marker"])
            {
              v19 = v18;

              v23 = v19;
            }

            else if ([v17 isEqualToString:@"ids-stun-attribute-generation-counter"])
            {
              -[IDSStunMessage _addUInt32Attribute:value:](self, "_addUInt32Attribute:value:", 65531, [v18 unsignedIntegerValue]);
            }

            else if ([v17 isEqualToString:@"ids-stun-attribute-max-concurrent-streams"])
            {
              -[IDSStunMessage _addUInt8Attribute:value:](self, "_addUInt8Attribute:value:", 65532, [v18 unsignedIntValue]);
            }

            else if ([v17 isEqualToString:@"ids-stun-attribute-sent-packets"])
            {
              -[IDSStunMessage _addUInt32Attribute:value:](self, "_addUInt32Attribute:value:", 65504, [v18 unsignedIntegerValue]);
            }

            else if ([v17 isEqualToString:@"ids-stun-attribute-received-packets"])
            {
              -[IDSStunMessage _addUInt32Attribute:value:](self, "_addUInt32Attribute:value:", 65505, [v18 unsignedIntegerValue]);
            }

            else if ([v17 isEqualToString:@"ids-stun-attribute-channel-binding-info"])
            {
              -[IDSStunMessage _addUInt32Attribute:value:](self, "_addUInt32Attribute:value:", 65508, [v18 unsignedIntegerValue]);
            }

            else if ([v17 isEqualToString:@"ids-stun-attribute-relay-link-id"])
            {
              -[IDSStunMessage _addUInt16Attribute:value:](self, "_addUInt16Attribute:value:", 65509, [v18 unsignedIntegerValue]);
            }

            else if ([v17 isEqualToString:@"ids-stun-attribute-qr-request-id"])
            {
              -[IDSStunMessage _addUInt32Attribute:value:](self, "_addUInt32Attribute:value:", 65510, [v18 unsignedIntegerValue]);
            }

            else if ([v17 isEqualToString:@"ids-stun-attribute-qr-cookie"])
            {
              -[IDSStunMessage _addUInt32Attribute:value:](self, "_addUInt32Attribute:value:", 65513, [v18 unsignedIntegerValue]);
            }

            else if ([v17 isEqualToString:@"ids-stun-attribute-qr-testoptions"])
            {
              -[IDSStunMessage _addUInt32Attribute:value:](self, "_addUInt32Attribute:value:", 65511, [v18 unsignedIntegerValue]);
            }

            else if ([v17 isEqualToString:@"ids-stun-attribute-qr-test-requested-message"])
            {
              -[IDSStunMessage _addUInt16Attribute:value:](self, "_addUInt16Attribute:value:", 65472, [v18 unsignedIntegerValue]);
            }

            else if ([v17 isEqualToString:@"ids-stun-attribute-qr-test-requested-error-code"])
            {
              -[IDSStunMessage _addUInt16Attribute:value:](self, "_addUInt16Attribute:value:", 65474, [v18 unsignedIntegerValue]);
            }

            else if ([v17 isEqualToString:@"ids-stun-attribute-qr-testsuboperation"])
            {
              [(IDSStunMessage *)self _addBinaryDataAttribute:65473 value:v18];
            }

            else if ([v17 isEqualToString:@"ids-stun-attribute-link-attributes"])
            {
              -[IDSStunMessage _addUInt32Attribute:value:](self, "_addUInt32Attribute:value:", 32803, [v18 unsignedIntegerValue]);
            }

            else if ([v17 isEqualToString:@"ids-stun-attribute-data-so-masks-attributes"])
            {
              -[IDSStunMessage _addUInt32Attribute:value:](self, "_addUInt32Attribute:value:", 32804, [v18 unsignedIntegerValue]);
            }

            else if ([v17 isEqualToString:@"gl-attr-error-code-data"])
            {
              -[IDSStunMessage _addUInt32Attribute:value:](self, "_addUInt32Attribute:value:", 9, [v18 unsignedIntegerValue]);
            }

            else if ([v17 isEqualToString:@"ids-stun-attribute-session-state-counter"])
            {
              -[IDSStunMessage _addUInt32Attribute:value:](self, "_addUInt32Attribute:value:", 65489, [v18 unsignedIntegerValue]);
            }

            else if ([v17 isEqualToString:@"ids-stun-attribute-session-state-type"])
            {
              -[IDSStunMessage _addUInt16Attribute:value:](self, "_addUInt16Attribute:value:", 65518, [v18 unsignedIntegerValue]);
            }

            else if ([v17 isEqualToString:@"ids-stun-attribute-enc-ParticipantIDs"])
            {
              self->_requiresAES128CTR = 1;
              [(IDSStunMessage *)self _addBinaryDataAttribute:60928 value:v18];
            }

            else if ([v17 isEqualToString:@"ids-stun-attribute-plugin-name"])
            {
              self->_requiresAES128CTR = 1;
              [(IDSStunMessage *)self _addBinaryDataAttribute:60935 value:v18];
            }

            else if ([v17 isEqualToString:@"ids-stun-attribute-raw-public-key"])
            {
              [(IDSStunMessage *)self _addBinaryDataAttribute:65495 value:v18];
            }

            else if ([v17 isEqualToString:@"ids-stun-attribute-plugin-operation"])
            {
              -[IDSStunMessage _addUInt8Attribute:value:](self, "_addUInt8Attribute:value:", 65491, [v18 unsignedIntValue]);
            }

            else if ([v17 isEqualToString:@"ids-stun-attribute-qr-server-blob"])
            {
              [(IDSStunMessage *)self _addBinaryDataAttribute:65503 value:v18];
            }

            else if ([v17 isEqualToString:@"ids-stun-attribute-tle-p2p-blob"])
            {
              [(IDSStunMessage *)self _addBinaryDataAttribute:36865 value:v18];
            }

            else if ([v17 isEqualToString:@"ids-stun-attribute-tle-p2p-connection-id-ids"])
            {
              -[IDSStunMessage _addUInt32Attribute:value:](self, "_addUInt32Attribute:value:", 36867, [v18 unsignedIntValue]);
            }

            else if ([v17 isEqualToString:@"ids-stun-attribute-tle-p2p-connection-id-avc"])
            {
              -[IDSStunMessage _addUInt32Attribute:value:](self, "_addUInt32Attribute:value:", 36866, [v18 unsignedIntValue]);
            }

            else if ([v17 isEqualToString:@"ids-stun-attribute-qr-materials"])
            {
              [(IDSStunMessage *)self _addBinaryDataAttribute:65499 value:v18];
            }

            else
            {
              oslog = OSLogHandleForIDSCategory();
              if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = v17;
                _os_log_impl(&dword_1A7AD9000, oslog, OS_LOG_TYPE_ERROR, "receive unknown stun attribute key %@ for QR stun message, ignore.", buf, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                _IDSWarnV();
                _IDSLogV(0, @"IDSFoundation", @"Warning", @"receive unknown stun attribute key %@ for QR stun message, ignore.");
                v21 = v17;
                _IDSLogTransport(@"Warning", @"IDS", @"receive unknown stun attribute key %@ for QR stun message, ignore.");
              }
            }
          }
        }
      }
    }

    v14 = [v13 countByEnumeratingWithState:&v25 objects:v30 count:16];
  }

  while (v14);

  if (v23)
  {
    [(IDSStunMessage *)self _addBinaryDataAttribute:60934 value:?];
    if ((v24 & 1) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_114;
  }

  if ((v24 & 1) == 0)
  {
LABEL_115:
    v23 = 0;
    goto LABEL_116;
  }

LABEL_114:
  memset(buf, 170, 20);
  v20 = [MEMORY[0x1E695DEF0] dataWithBytes:buf length:{20, v21}];
  [(IDSStunMessage *)self _addBinaryDataAttribute:8 value:v20];

LABEL_116:
}

- (void)setTransactionID:(id)a3 attributes:(id)a4
{
  v6 = a4;
  [(IDSStunMessage *)self setTransactionID:a3];
  [(IDSStunMessage *)self setAttributes:v6];
}

- (BOOL)write:(char *)a3 outputLength:(int *)a4 remainingLength:(unint64_t)a5 internal:(BOOL)a6
{
  v45 = *MEMORY[0x1E69E9840];
  v41 = -1431655766;
  if (!a3 || !a4)
  {
    v12 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E18C58();
    }

    return 0;
  }

  v8 = a5;
  if (!a5)
  {
    v13 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E18FB4();
    }

LABEL_92:

    return 0;
  }

  v9 = a6;
  if (a6)
  {
    v8 = a5 - 1;
    *a3 = 15;
    v11 = a3 + 1;
  }

  else
  {
    v11 = a3;
  }

  if (v8 <= 3)
  {
    v13 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E18F44();
    }

    goto LABEL_92;
  }

  *v11 = bswap32(LOWORD(self->_type)) >> 16;
  if (v8 - 4 <= 3)
  {
    v13 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E18ED4();
    }

    goto LABEL_92;
  }

  *(v11 + 1) = 1118048801;
  if (v8 - 8 <= 0xB)
  {
    v13 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E18E64();
    }

    goto LABEL_92;
  }

  v14 = [(NSData *)self->_transactionID bytes];
  v15 = *v14;
  *(v11 + 4) = v14[2];
  *(v11 + 1) = v15;
  v16 = v11 + 20;
  if (self->_numAttribute >= 1)
  {
    v17 = 0;
    v18 = 0;
    v19 = v8 - 20;
    do
    {
      v41 = 0;
      v21 = &self->_attributes[v17];
      type = v21->type;
      if (type > 0x9001)
      {
        switch(self->_attributes[v17].type)
        {
          case 0xFFC0u:
          case 0xFFC2u:
          case 0xFFE5u:
          case 0xFFEEu:
            writeStunUINT16Attribute(&self->_attributes[v17].type, v16, &v41, v19);
            goto LABEL_73;
          case 0xFFC1u:
          case 0xFFD7u:
          case 0xFFDBu:
          case 0xFFDFu:
          case 0xFFF0u:
          case 0xFFF1u:
          case 0xFFF2u:
            break;
          case 0xFFC3u:
          case 0xFFC4u:
          case 0xFFC5u:
          case 0xFFC6u:
          case 0xFFC7u:
          case 0xFFC8u:
          case 0xFFC9u:
          case 0xFFCAu:
          case 0xFFCBu:
          case 0xFFCCu:
          case 0xFFCDu:
          case 0xFFCEu:
          case 0xFFCFu:
          case 0xFFD0u:
          case 0xFFD2u:
          case 0xFFD4u:
          case 0xFFD5u:
          case 0xFFD6u:
          case 0xFFD8u:
          case 0xFFD9u:
          case 0xFFDAu:
          case 0xFFDCu:
          case 0xFFDDu:
          case 0xFFDEu:
          case 0xFFE8u:
          case 0xFFEAu:
          case 0xFFEBu:
          case 0xFFECu:
          case 0xFFEDu:
          case 0xFFEFu:
          case 0xFFF6u:
          case 0xFFF8u:
          case 0xFFF9u:
          case 0xFFFAu:
            goto LABEL_79;
          case 0xFFD1u:
          case 0xFFE0u:
          case 0xFFE1u:
          case 0xFFE2u:
          case 0xFFE4u:
          case 0xFFE6u:
          case 0xFFE7u:
          case 0xFFE9u:
          case 0xFFF3u:
          case 0xFFF4u:
          case 0xFFF5u:
          case 0xFFFBu:
            goto LABEL_72;
          case 0xFFD3u:
          case 0xFFFCu:
            writeStunUINT8Attribute(&self->_attributes[v17].type, v16, &v41, v19);
            goto LABEL_73;
          case 0xFFE3u:
          case 0xFFF7u:
            goto LABEL_67;
          default:
            if (type - 60928 > 7 || ((1 << type) & 0xC7) == 0)
            {
              if (type - 36866 < 2)
              {
LABEL_72:
                writeStunUINT32Attribute(&self->_attributes[v17].type, v16, &v41, v19);
                goto LABEL_73;
              }

              goto LABEL_79;
            }

            v24 = +[IDSFoundationLog Stun];
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = v21->type;
              u32 = self->_attributes[v17].value.u32;
              *buf = 67109376;
              *&buf[4] = v25;
              *&buf[8] = 1024;
              *&buf[10] = u32;
              _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "send enc attr %04X, %dB.", buf, 0xEu);
            }

            v27 = self + v17 * 1488;
            if (!self->_attributes[v17].encrypted && *(v27 + 21) && self->_cryptorRef)
            {
              cryptorRef = self->_cryptorRef;
              memset(buf, 170, sizeof(buf));
              __n = 0;
              v39 = self + v17 * 1488;
              if (!StunUtilDoAES128CTR(cryptorRef, &self->_attributes[v17].value.u32 + 1, self->_attributes[v17].value.binaryData.len, buf, &__n))
              {
                v31 = +[IDSFoundationLog Stun];
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  v32 = v21->type;
                  *v42 = 67109120;
                  v43 = v32;
                  _os_log_impl(&dword_1A7AD9000, v31, OS_LOG_TYPE_DEFAULT, "write: failed to enc attribute %04x.", v42, 8u);
                }

                goto LABEL_75;
              }

              cryptorRef = __n;
              memcpy(v39 + 52, buf, __n);
              *(v39 + 12) = cryptorRef;
              v27[46] = 1;
            }

            break;
        }
      }

      else if (self->_attributes[v17].type > 0x1Fu)
      {
        if (self->_attributes[v17].type <= 0x8004u)
        {
          switch(type)
          {
            case ' ':
              goto LABEL_65;
            case '""':
LABEL_67:
              writeStunUINT64Attribute(&self->_attributes[v17].type, v16, &v41, v19);
              goto LABEL_73;
            case '%':
              goto LABEL_72;
          }

          goto LABEL_79;
        }

        if (type - 32773 <= 0x1F)
        {
          v22 = 1 << (type - 5);
          if ((v22 & 0x20000009) != 0)
          {
            goto LABEL_49;
          }

          if ((v22 & 0xC0000004) != 0)
          {
            goto LABEL_72;
          }
        }

        if (type != 36865)
        {
          goto LABEL_79;
        }
      }

      else if (self->_attributes[v17].type <= 0xBu)
      {
        if (self->_attributes[v17].type > 8u)
        {
          if (type == 9)
          {
            writeStunErrorCodeAttribute(&self->_attributes[v17].type, v16, &v41, v19);
            goto LABEL_73;
          }

          if (type == 10)
          {
            writeStunUnknownAttribute(&self->_attributes[v17], v16, &v41, v19);
            goto LABEL_73;
          }

LABEL_79:
          v29 = +[IDSFoundationLog Stun];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = v21->type;
            *buf = 67109120;
            *&buf[4] = v30;
            _os_log_impl(&dword_1A7AD9000, v29, OS_LOG_TYPE_DEFAULT, "write: unknown attribute %04X", buf, 8u);
          }

          goto LABEL_66;
        }

        if (type != 6 && type != 8)
        {
          goto LABEL_79;
        }
      }

      else
      {
        if (self->_attributes[v17].type <= 0x12u)
        {
          if (type - 12 < 2)
          {
            goto LABEL_72;
          }

          if (type != 18)
          {
            goto LABEL_79;
          }

          goto LABEL_65;
        }

        if (type != 19)
        {
          if (type != 22)
          {
            if (type == 25)
            {
              goto LABEL_72;
            }

            goto LABEL_79;
          }

LABEL_65:
          v29 = [(IDSStunMessage *)self transactionID];
          writeStunXORAddressAttribute(&self->_attributes[v17].type, v29, v16, &v41, v19);
LABEL_66:

          goto LABEL_73;
        }
      }

LABEL_49:
      writeStunBinaryDataAttribute(&self->_attributes[v17].type, v16, &v41, v19);
LABEL_73:
      if (v19 < v41)
      {
        v13 = +[IDSFoundationLog Stun];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_1A7E18DD8(&v41, v19, v13);
        }

        goto LABEL_92;
      }

      v16 += v41;
      v19 -= v41;
LABEL_75:
      ++v18;
      ++v17;
    }

    while (v18 < self->_numAttribute);
  }

  v33 = v16 - a3;
  if (v33 <= 19)
  {
    v13 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E18D54();
    }

    goto LABEL_92;
  }

  v34 = v33 - 20;
  self->_len = v33 - 20;
  if (v9)
  {
    if (v33 == 20)
    {
      v13 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E18CDC();
      }

      goto LABEL_92;
    }

    v34 = v33 - 21;
    self->_len = v33 - 21;
    v35 = 3;
  }

  else
  {
    v35 = 2;
  }

  *&a3[v35] = bswap32(v34) >> 16;
  *a4 = v33;
  key = self->_key;
  if (key)
  {
    CCHmac(0, [(NSData *)key bytes], [(NSData *)self->_key length], a3, v33 - 24, &a3[v33 - 20]);
  }

  return 1;
}

- (BOOL)verifyMessageIntegrityWithKey:(id)a3 inputBuffer:(char *)a4 inputLength:(int)a5
{
  v13 = *MEMORY[0x1E69E9840];
  if (a5 < 44)
  {
    return 0;
  }

  v7 = (a5 - 24);
  memset(v12, 170, 20);
  v8 = a3;
  v9 = [v8 bytes];
  v10 = [v8 length];

  CCHmac(0, v9, v10, a4, v7, v12);
  return timingsafe_bcmp(v12, &a4[a5 - 20], 0x14uLL) == 0;
}

- (BOOL)read:(char *)a3 inputLength:(unint64_t)a4 internal:(BOOL)a5
{
  v51 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v7 = [IDSFoundationLog Stun:0];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "read: invalid inputBuffer";
      v9 = v7;
      v10 = 2;
      goto LABEL_10;
    }

LABEL_11:

LABEL_12:
    LOBYTE(v11) = 0;
    return v11;
  }

  if (a5)
  {
    v6 = 21;
  }

  else
  {
    v6 = 20;
  }

  if (v6 > a4)
  {
    v7 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *v49 = a4;
      *&v49[8] = 2048;
      v50 = v6;
      v8 = "read: short packet (%zd < %zd)";
      v9 = v7;
      v10 = 22;
LABEL_10:
      _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v14 = &a3[a5];
  self->_type = bswap32(*v14) >> 16;
  v15 = bswap32(*(v14 + 1)) >> 16;
  self->_len = v15;
  if (v15 + 20 > a4)
  {
    v16 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = self->_len + 20;
      *buf = 134218240;
      *v49 = a4;
      *&v49[8] = 1024;
      LODWORD(v50) = v17;
      _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "read: short packet (%zd < %d)", buf, 0x12u);
    }

    goto LABEL_12;
  }

  v18 = *(v14 + 1);
  if (v18 != 1118048801)
  {
    v7 = +[IDSFoundationLog Stun];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 67109120;
    *v49 = bswap32(v18);
    v8 = "read: invalid magic cookie %08X";
    v9 = v7;
    v10 = 8;
    goto LABEL_10;
  }

  v19 = &self->_attributes[19].value.unknownAttribute + 8;
  v20 = &a3[a4];
  v46 = *(v14 + 1);
  v47 = *(v14 + 4);
  v21 = [MEMORY[0x1E695DEF0] dataWithBytes:&v46 length:12];
  [(IDSStunMessage *)self setTransactionID:v21];

  v22 = (v14 + 24);
  LOBYTE(v11) = v14 + 24 > v20;
  if (v14 + 24 > v20)
  {
    v23 = 0;
    goto LABEL_100;
  }

  v23 = 0;
  v24 = 0;
  attributes = self->_attributes;
  v26 = (v14 + 20);
  do
  {
    v27 = v24;
    attributes->i16[0] = bswap32(*v26) >> 16;
    v28 = bswap32(v26[1]);
    attributes->i16[1] = HIWORD(v28);
    v45 = HIWORD(v28);
    if ((StunUtilHasValidAttrLength(v22, HIWORD(v28), v20) & 1) == 0)
    {
      v39 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = attributes->u16[0];
        *buf = 67109376;
        *v49 = v45;
        *&v49[4] = 1024;
        *&v49[6] = v40;
        v41 = "read: bad attribute length %d, type %u";
        v42 = v39;
        v43 = 14;
LABEL_97:
        _os_log_impl(&dword_1A7AD9000, v42, OS_LOG_TYPE_DEFAULT, v41, buf, v43);
      }

LABEL_98:

      return v11;
    }

    if (v20 - v22 < 0)
    {
      v39 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v49 = v20 - v22;
        v41 = "remaining Bytes = %d";
        v42 = v39;
        v43 = 8;
        goto LABEL_97;
      }

      goto LABEL_98;
    }

    v29 = attributes->u16[0];
    if (v29 > 0xFFD0)
    {
      switch(attributes->i16[0])
      {
        case 0xFFD1:
        case 0xFFE0:
        case 0xFFE1:
        case 0xFFE2:
        case 0xFFE4:
        case 0xFFE6:
        case 0xFFE8:
        case 0xFFE9:
        case 0xFFF3:
        case 0xFFF4:
        case 0xFFF5:
        case 0xFFFB:
          goto LABEL_36;
        case 0xFFD2:
          attributes->i16[2] = 8;
          v32 = v45;
          ++v23;
          if (v45)
          {
            goto LABEL_99;
          }

          goto LABEL_49;
        case 0xFFD3:
          attributes->i16[2] = 10;
          StunErrorCodeAttribute = readStunUINT8Attribute(attributes, &v45, v22, v20 - v22);
          goto LABEL_47;
        case 0xFFD5:
        case 0xFFE3:
        case 0xFFF7:
          goto LABEL_75;
        case 0xFFDB:
        case 0xFFDF:
        case 0xFFEA:
        case 0xFFEB:
        case 0xFFED:
        case 0xFFF0:
        case 0xFFF1:
          goto LABEL_46;
        case 0xFFE5:
        case 0xFFEC:
        case 0xFFEE:
          attributes->i16[2] = 7;
          ++v23;
          if (!readStunUINT16Attribute(attributes, &v45, v22, v20 - v22))
          {
            goto LABEL_99;
          }

          goto LABEL_48;
        default:
          goto LABEL_70;
      }
    }

    if (attributes->u16[0] <= 0x8004u)
    {
      if (attributes->u16[0] > 0x12u)
      {
        if (attributes->u16[0] > 0x1Fu)
        {
          switch(v29)
          {
            case ' ':
              goto LABEL_78;
            case '""':
LABEL_75:
              attributes->i16[2] = 4;
              StunErrorCodeAttribute = readStunUINT64Attribute(attributes, &v45, v22, v20 - v22);
              goto LABEL_47;
            case '%':
              goto LABEL_36;
          }
        }

        else
        {
          switch(v29)
          {
            case 0x13u:
              goto LABEL_46;
            case 0x16u:
              goto LABEL_78;
            case 0x19u:
              goto LABEL_36;
          }
        }
      }

      else if (attributes->u16[0] > 9u)
      {
        if (v29 - 12 < 2)
        {
          goto LABEL_36;
        }

        if (v29 == 10)
        {
          attributes->i16[2] = 9;
          StunUnknownAttribute = readStunUnknownAttribute(attributes, &v45, v22, v20 - v22);
          v36 = +[IDSFoundationLog Stun];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = @"NO";
            if (StunUnknownAttribute)
            {
              v37 = @"YES";
            }

            *buf = 138412290;
            *v49 = v37;
            _os_log_impl(&dword_1A7AD9000, v36, OS_LOG_TYPE_DEFAULT, "read unknown attribute, success = %@", buf, 0xCu);
          }

          ++v23;
          if ((StunUnknownAttribute & 1) == 0)
          {
            goto LABEL_99;
          }

          goto LABEL_48;
        }

        if (v29 == 18)
        {
LABEL_78:
          attributes->i16[2] = 2;
          StunErrorCodeAttribute = readStunXORAddressAttribute(attributes, &v45, self->_transactionID, v22, v20 - v22);
          goto LABEL_47;
        }
      }

      else
      {
        if (v29 == 6 || v29 == 8)
        {
          goto LABEL_46;
        }

        if (v29 == 9)
        {
          attributes->i16[2] = 6;
          StunErrorCodeAttribute = readStunErrorCodeAttribute(attributes, &v45, v22, v20 - v22);
          goto LABEL_47;
        }
      }
    }

    else if (attributes->u16[0] > 0xEDFFu)
    {
      if (v29 - 60928 <= 0xB && ((1 << v29) & 0xD71) != 0)
      {
        self->_requiresAES128CTR = 1;
LABEL_46:
        attributes->i16[2] = 5;
        StunErrorCodeAttribute = readStunBinaryDataAttribute(attributes, &v45, v22, v20 - v22);
LABEL_47:
        ++v23;
        if ((StunErrorCodeAttribute & 1) == 0)
        {
          goto LABEL_99;
        }

        goto LABEL_48;
      }
    }

    else
    {
      if (v29 - 32773 <= 0x1F)
      {
        v30 = 1 << (v29 - 5);
        if ((v30 & 0x20000009) != 0)
        {
          goto LABEL_46;
        }

        if ((v30 & 0xC0000004) != 0)
        {
          goto LABEL_36;
        }
      }

      if (v29 - 36866 < 2)
      {
LABEL_36:
        attributes->i16[2] = 3;
        StunErrorCodeAttribute = readStunUINT32Attribute(attributes, &v45, v22, v20 - v22);
        goto LABEL_47;
      }

      if (v29 == 36865)
      {
        goto LABEL_46;
      }
    }

LABEL_70:
    if (!isReservedStunEncryptedAttribute(attributes->i16[0]))
    {
      if ((v45 & 3) != 0)
      {
        v45 += -v45 & 3;
      }

      v38 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v49 = v29;
        _os_log_impl(&dword_1A7AD9000, v38, OS_LOG_TYPE_DEFAULT, "read: unknown attribute %04X", buf, 8u);
      }

      v26 = (v22 + v45);
      ++v23;
      goto LABEL_50;
    }

    self->_requiresAES128CTR = 1;
    attributes->i16[2] = 5;
    StunBinaryDataAttribute = readStunBinaryDataAttribute(attributes, &v45, v22, v20 - v22);
    v34 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v49 = v29;
      _os_log_impl(&dword_1A7AD9000, v34, OS_LOG_TYPE_DEFAULT, "read: decrypt and drop the reserved encrypted attribute %04X", buf, 8u);
    }

    ++v23;
    if (!StunBinaryDataAttribute)
    {
      goto LABEL_99;
    }

LABEL_48:
    v32 = v45;
LABEL_49:
    v26 = (v22 + v32);
LABEL_50:
    v24 = v27 + 1;
    v22 = v26 + 2;
    v11 = v26 + 2 > v20 || v27 > 0x12;
    attributes += 93;
  }

  while (!v11);
  v23 = v27 + 1;
LABEL_99:
  v19 = &self->_attributes[19].value.unknownAttribute + 8;
LABEL_100:
  *&v19[25].unknowAttributes[12] = v23;
  return v11;
}

- (BOOL)initAES128CTR:(id)a3
{
  *&v16[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->_requiresAES128CTR)
  {
    if (v4)
    {
      if (self->_cryptorRef)
      {
        v6 = +[IDSFoundationLog Stun];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          cryptorRef = self->_cryptorRef;
          v15 = 134217984;
          *v16 = cryptorRef;
          _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "release AES128-CTR cryptor %p.", &v15, 0xCu);
        }

        CCCryptorRelease(self->_cryptorRef);
        self->_cryptorRef = 0;
      }

      v8 = self->_type & 0x110;
      v9 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = "encrypt";
        type_low = LOWORD(self->_type);
        if (v8)
        {
          v10 = "decrypt";
        }

        v15 = 67109378;
        v16[0] = type_low;
        LOWORD(v16[1]) = 2080;
        *(&v16[1] + 2) = v10;
        _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "Start AES128-CTR for stun message type %04X to %s.", &v15, 0x12u);
      }

      inited = StunUtilInitAES128CTR(self->_transactionID, v8 != 0, [v5 bytes], &self->_cryptorRef);
    }

    else
    {
      v13 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "initAES128CTR failed with invalid key.", &v15, 2u);
      }

      inited = 0;
    }
  }

  else
  {
    inited = 1;
  }

  return inited;
}

- (BOOL)decryptAES128CTRStunAttributes:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  __n = 0;
  [(IDSStunMessage *)self initAES128CTR:a3];
  v5 = 1;
  if (self->_numAttribute >= 1)
  {
    v6 = 0;
    for (i = &self->_attributes[0].value.errorCode.errorNumber; ; i += 372)
    {
      v8 = *(i - 6);
      if (v8 - 60928 <= 8 && ((1 << v8) & 0x171) != 0)
      {
        v10 = *(i - 1);
        v11 = +[IDSFoundationLog Stun];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          v21 = v8;
          v22 = 1024;
          v23 = v10;
          _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "recv enc attr %04X, %dB.", buf, 0xEu);
        }

        if (v10 >= 1)
        {
          if (!StunUtilDoAES128CTR(self->_cryptorRef, i, v10, __b, &__n))
          {
            v14 = +[IDSFoundationLog Stun];
            if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_20;
            }

            *buf = 67109120;
            v21 = v8;
            v15 = "decryptAES128CTRStunAttributes: failed to read attr (%04x).";
            v16 = v14;
            v17 = 8;
            goto LABEL_19;
          }

          v12 = __n;
          memcpy(i, __b, __n);
          *(i - 1) = v12;
          if (v8 == 60934)
          {
            v13 = *i;
            if (*i != 1414938954)
            {
              break;
            }
          }
        }
      }

      if (++v6 >= self->_numAttribute)
      {
        return 1;
      }
    }

    v14 = +[IDSFoundationLog Stun];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 67109376;
    v21 = bswap32(v13);
    v22 = 1024;
    v23 = 1245795924;
    v15 = "decryptAES128CTRStunAttributes: enc marker mismatch (%08x != %08x).";
    v16 = v14;
    v17 = 14;
LABEL_19:
    _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
LABEL_20:

    return 0;
  }

  return v5;
}

@end