@interface IDSGlobalLinkMessage
+ (id)messageWithBuffer:(char *)a3 length:(int)a4;
+ (id)messageWithCommand:(int64_t)a3 attributes:(id)a4;
- (BOOL)_addAttribute:(IDSGlobalLinkAttribute *)a3;
- (BOOL)_write:(char *)a3 outputLength:(int *)a4 dropLowerPriorityFields:(BOOL)a5;
- (BOOL)getAttribute:(int64_t)a3 attribute:(IDSGlobalLinkAttribute *)a4;
- (BOOL)read:(char *)a3 inputLength:(int)a4;
- (BOOL)verifyHMacDigestWithKey:(id)a3 inputBuffer:(char *)a4 inputLength:(int)a5;
- (BOOL)write:(char *)a3 outputLength:(int *)a4;
- (IDSGlobalLinkMessage)initWithCommand:(int64_t)a3;
- (void)_addAddressAttribute:(int64_t)a3 value:(sockaddr *)a4;
- (void)_addBinaryDataAttribute:(int64_t)a3 value:(id)a4;
- (void)_addUInt16Attribute:(int64_t)a3 value:(unsigned __int16)a4;
- (void)_addUInt32Attribute:(int64_t)a3 value:(unsigned int)a4;
- (void)_addUInt64Attribute:(int64_t)a3 value:(unint64_t)a4;
- (void)dealloc;
- (void)setAttributes:(id)a3;
@end

@implementation IDSGlobalLinkMessage

- (IDSGlobalLinkMessage)initWithCommand:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = IDSGlobalLinkMessage;
  result = [(IDSGlobalLinkMessage *)&v5 init];
  if (result)
  {
    result->_command = a3;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = IDSGlobalLinkMessage;
  [(IDSGlobalLinkMessage *)&v2 dealloc];
}

+ (id)messageWithCommand:(int64_t)a3 attributes:(id)a4
{
  v5 = a4;
  v6 = [[IDSGlobalLinkMessage alloc] initWithCommand:a3];
  [(IDSGlobalLinkMessage *)v6 setAttributes:v5];

  return v6;
}

+ (id)messageWithBuffer:(char *)a3 length:(int)a4
{
  v4 = *&a4;
  v6 = objc_alloc_init(IDSGlobalLinkMessage);
  [(IDSGlobalLinkMessage *)v6 read:a3 inputLength:v4];

  return v6;
}

- (BOOL)_addAttribute:(IDSGlobalLinkAttribute *)a3
{
  if (a3)
  {
    numAttribute = self->_numAttribute;
    if (numAttribute != 20)
    {
      memcpy(&self->_attributes[numAttribute], a3, sizeof(self->_attributes[numAttribute]));
      ++self->_numAttribute;
      LOBYTE(v6) = 1;
      return v6;
    }

    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "maximum GL attribute limit reached, skip.", v10, 2u);
    }

    v6 = os_log_shim_legacy_logging_enabled();
    if (v6)
    {
      v6 = _IDSShouldLogTransport();
      if (v6)
      {
        _IDSLogTransport(@"GL", @"IDS", @"maximum GL attribute limit reached, skip.");
        v6 = _IDSShouldLog();
        if (v6)
        {
          v7 = @"maximum GL attribute limit reached, skip.";
LABEL_15:
          _IDSLogV(0, @"IDSFoundation", @"GL", v7);
          LOBYTE(v6) = 0;
        }
      }
    }
  }

  else
  {
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "invalid GL attribute.", buf, 2u);
    }

    v6 = os_log_shim_legacy_logging_enabled();
    if (v6)
    {
      v6 = _IDSShouldLogTransport();
      if (v6)
      {
        _IDSLogTransport(@"GL", @"IDS", @"invalid GL attribute.");
        v6 = _IDSShouldLog();
        if (v6)
        {
          v7 = @"invalid GL attribute.";
          goto LABEL_15;
        }
      }
    }
  }

  return v6;
}

- (void)_addAddressAttribute:(int64_t)a3 value:(sockaddr *)a4
{
  v4 = a3;
  v7 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  __b[0] = v4;
  __b[1] = 128;
  __memcpy_chk();
  [(IDSGlobalLinkMessage *)self _addAttribute:__b];
}

- (void)_addUInt16Attribute:(int64_t)a3 value:(unsigned __int16)a4
{
  v5 = a3;
  v8 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  __b[0] = v5;
  __b[1] = 2;
  __b[4] = a4;
  [(IDSGlobalLinkMessage *)self _addAttribute:__b];
}

- (void)_addUInt32Attribute:(int64_t)a3 value:(unsigned int)a4
{
  v5 = a3;
  v8 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  LOWORD(__b[0]) = v5;
  HIWORD(__b[0]) = 4;
  __b[2] = a4;
  [(IDSGlobalLinkMessage *)self _addAttribute:__b];
}

- (void)_addUInt64Attribute:(int64_t)a3 value:(unint64_t)a4
{
  v5 = a3;
  __b[130] = *MEMORY[0x1E69E9840];
  memset(__b, 170, 0x410uLL);
  LOWORD(__b[0]) = v5;
  WORD1(__b[0]) = 8;
  __b[1] = a4;
  [(IDSGlobalLinkMessage *)self _addAttribute:__b];
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
      if ((v7 - 1025) > 0xFFFFFBFF)
      {
        LOWORD(__b[0]) = v4;
        HIWORD(__b[0]) = v7;
        __b[2] = v7;
        [v6 bytes];
        __memcpy_chk();
        [(IDSGlobalLinkMessage *)self _addAttribute:__b];
      }

      else
      {
        v9 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          v11 = v8;
          v12 = 1024;
          v13 = v4;
          _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "failed to add %dB for binary attr type %04x.", buf, 0xEu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"failed to add %dB for binary attr type %04x.");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to add %dB for binary attr type %04x.");
            }
          }
        }
      }
    }
  }
}

- (void)setAttributes:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    command = self->_command;
    *buf = 134218242;
    *&buf[4] = command;
    *&buf[12] = 2112;
    *&buf[14] = v4;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "[IDSGlobalLinkMessage command:%04lx setAttributes: %@]", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v15 = self->_command;
      v16 = v4;
      _IDSLogTransport(@"GL", @"IDS", @"[IDSGlobalLinkMessage command:%04lx setAttributes: %@]");
      if (_IDSShouldLog())
      {
        v15 = self->_command;
        v16 = v4;
        _IDSLogV(0, @"IDSFoundation", @"GL", @"[IDSGlobalLinkMessage command:%04lx setAttributes: %@]");
      }
    }
  }

  [v4 allKeys];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  obj = v20 = 0u;
  v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v17 = 0;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        Value = 0;
        v11 = *(*(&v19 + 1) + 8 * i);
        if (v4 && v11)
        {
          Value = CFDictionaryGetValue(v4, *(*(&v19 + 1) + 8 * i));
        }

        v12 = Value;
        if ([v11 isEqualToString:@"gl-attr-counter"])
        {
          -[IDSGlobalLinkMessage _addUInt16Attribute:value:](self, "_addUInt16Attribute:value:", 1, [v12 unsignedIntValue]);
        }

        else if ([v11 isEqualToString:@"gl-attr-skedata"])
        {
          [(IDSGlobalLinkMessage *)self _addBinaryDataAttribute:4 value:v12];
        }

        else if ([v11 isEqualToString:@"gl-attr-transport"])
        {
          -[IDSGlobalLinkMessage _addUInt16Attribute:value:](self, "_addUInt16Attribute:value:", 2, [v12 unsignedIntValue]);
        }

        else if ([v11 isEqualToString:@"gl-attr-rat"])
        {
          -[IDSGlobalLinkMessage _addUInt16Attribute:value:](self, "_addUInt16Attribute:value:", 5, [v12 unsignedIntValue]);
        }

        else if ([v11 isEqualToString:@"gl-attr-mtu"])
        {
          -[IDSGlobalLinkMessage _addUInt16Attribute:value:](self, "_addUInt16Attribute:value:", 6, [v12 unsignedIntValue]);
        }

        else if ([v11 isEqualToString:@"gl-attr-conndata"])
        {
          [(IDSGlobalLinkMessage *)self _addBinaryDataAttribute:3 value:v12];
        }

        else if ([v11 isEqualToString:@"gl-attr-acceptdelay"])
        {
          -[IDSGlobalLinkMessage _addUInt32Attribute:value:](self, "_addUInt32Attribute:value:", 7, [v12 unsignedIntValue]);
        }

        else if ([v11 isEqualToString:@"gl-attr-relayremoteaddress"])
        {
          -[IDSGlobalLinkMessage _addAddressAttribute:value:](self, "_addAddressAttribute:value:", 8, [v12 sa]);
        }

        else if ([v11 isEqualToString:@"gl-attr-hmac"])
        {
          objc_storeStrong(&self->_hmacKeyData, Value);
          v17 = 1;
        }

        else if ([v11 isEqualToString:@"gl-attr-rttreport"])
        {
          [(IDSGlobalLinkMessage *)self _addBinaryDataAttribute:10 value:v12];
        }

        else if ([v11 isEqualToString:@"gl-attr-linkuuid"])
        {
          [(IDSGlobalLinkMessage *)self _addBinaryDataAttribute:11 value:v12];
        }

        else if ([v11 isEqualToString:@"gl-attr-capability"])
        {
          -[IDSGlobalLinkMessage _addUInt16Attribute:value:](self, "_addUInt16Attribute:value:", 12, [v12 unsignedIntValue]);
        }

        else if ([v11 isEqualToString:@"gl-attr-local-cbuuid"])
        {
          [(IDSGlobalLinkMessage *)self _addBinaryDataAttribute:13 value:v12];
        }

        else if ([v11 isEqualToString:@"gl-attr-remote-cbuuid"])
        {
          [(IDSGlobalLinkMessage *)self _addBinaryDataAttribute:14 value:v12];
        }

        else if ([v11 isEqualToString:@"gl-attr-generic-data"])
        {
          [(IDSGlobalLinkMessage *)self _addBinaryDataAttribute:15 value:v12];
        }

        else if ([v11 isEqualToString:@"gl-attr-error-code-data"])
        {
          -[IDSGlobalLinkMessage _addUInt32Attribute:value:](self, "_addUInt32Attribute:value:", 17, [v12 unsignedIntValue]);
        }

        else if ([v11 isEqualToString:@"gl-attr-version"])
        {
          -[IDSGlobalLinkMessage _addUInt16Attribute:value:](self, "_addUInt16Attribute:value:", 18, [v12 unsignedShortValue]);
        }

        else if ([v11 isEqualToString:@"gl-attr-link-flags"])
        {
          -[IDSGlobalLinkMessage _addUInt16Attribute:value:](self, "_addUInt16Attribute:value:", 19, [v12 unsignedShortValue]);
        }

        else if ([v11 isEqualToString:@"gl-attr-data-so-mask"])
        {
          -[IDSGlobalLinkMessage _addUInt32Attribute:value:](self, "_addUInt32Attribute:value:", 20, [v12 unsignedIntValue]);
        }

        else if ([v11 isEqualToString:@"gl-attr-relay-link-interface-info"])
        {
          [(IDSGlobalLinkMessage *)self _addBinaryDataAttribute:21 value:v12];
        }

        else if ([v11 isEqualToString:@"gl-attr-mkm"])
        {
          [(IDSGlobalLinkMessage *)self _addBinaryDataAttribute:22 value:v12];
        }

        else
        {
          v13 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v11;
            _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "receive invalid attribute key %@.", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"GL", @"IDS", @"receive invalid attribute key %@.");
              if (_IDSShouldLog())
              {
                _IDSLogV(0, @"IDSFoundation", @"GL", @"receive invalid attribute key %@.");
              }
            }
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);

    if (v17)
    {
      memset(buf, 170, 20);
      v14 = [MEMORY[0x1E695DEF0] dataWithBytes:buf length:20];
      [(IDSGlobalLinkMessage *)self _addBinaryDataAttribute:9 value:v14];
    }
  }

  else
  {
  }
}

- (BOOL)getAttribute:(int64_t)a3 attribute:(IDSGlobalLinkAttribute *)a4
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
  memcpy(a4, attributes, sizeof(IDSGlobalLinkAttribute));
  return v6;
}

- (BOOL)verifyHMacDigestWithKey:(id)a3 inputBuffer:(char *)a4 inputLength:(int)a5
{
  macOut[3] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  memset(macOut, 170, 20);
  if (a5 < 44)
  {
    v15 = 0;
  }

  else
  {
    CCHmac(0, [v7 bytes], objc_msgSend(v7, "length"), a4, (a5 - 24), macOut);
    v9 = &a4[a5];
    v10 = *(v9 - 20);
    v11 = *(v9 - 12);
    v12 = *(v9 - 1);
    v15 = macOut[0] == v10 && macOut[1] == v11 && LODWORD(macOut[2]) == v12;
  }

  v16 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v36 = v15;
    if (v15)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    v18 = [MEMORY[0x1E695DEF0] dataWithBytes:macOut length:20];
    v19 = [v18 __imHexString];
    v20 = [MEMORY[0x1E695DEF0] dataWithBytes:&a4[a5 - 20] length:20];
    v21 = [v20 __imHexString];
    v22 = [v8 __imHexString];
    *buf = 138413058;
    v38 = v17;
    v39 = 2112;
    v40 = v19;
    v41 = 2112;
    v42 = v21;
    v43 = 2112;
    v44 = v22;
    _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "verifyHMacDigestWithKey result:%@ (HMac:%@, Recv:%@, Key: %@).", buf, 0x2Au);

    v15 = v36;
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    if (v15)
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    v24 = [MEMORY[0x1E695DEF0] dataWithBytes:macOut length:20];
    v25 = [v24 __imHexString];
    v26 = &a4[a5 - 20];
    v27 = [MEMORY[0x1E695DEF0] dataWithBytes:v26 length:20];
    v28 = [v27 __imHexString];
    v34 = [v8 __imHexString];
    _IDSLogTransport(@"GL", @"IDS", @"verifyHMacDigestWithKey result:%@ (HMac:%@, Recv:%@, Key: %@).");

    if (_IDSShouldLog())
    {
      v29 = [MEMORY[0x1E695DEF0] dataWithBytes:macOut length:{20, v23, v25, v28, v34}];
      v30 = [v29 __imHexString];
      v31 = [MEMORY[0x1E695DEF0] dataWithBytes:v26 length:20];
      v32 = [v31 __imHexString];
      v35 = [v8 __imHexString];
      _IDSLogV(0, @"IDSFoundation", @"GL", @"verifyHMacDigestWithKey result:%@ (HMac:%@, Recv:%@, Key: %@).");
    }
  }

  return v15;
}

- (BOOL)write:(char *)a3 outputLength:(int *)a4
{
  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "[IDSGlobalLinkMessage write] attempting with all fields", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"[IDSGlobalLinkMessage write] attempting with all fields");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"[IDSGlobalLinkMessage write] attempting with all fields");
      }
    }
  }

  if ([(IDSGlobalLinkMessage *)self _write:a3 outputLength:a4 dropLowerPriorityFields:0])
  {
    goto LABEL_15;
  }

  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "[IDSGlobalLinkMessage write] failed with all fields; will drop lower priority fields", v15, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"[IDSGlobalLinkMessage write] failed with all fields; will drop lower priority fields");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"[IDSGlobalLinkMessage write] failed with all fields; will drop lower priority fields");
      }
    }
  }

  if ([(IDSGlobalLinkMessage *)self _write:a3 outputLength:a4 dropLowerPriorityFields:1])
  {
LABEL_15:
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "[IDSGlobalLinkMessage write] success", v13, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v10 = @"[IDSGlobalLinkMessage write] success";
      goto LABEL_25;
    }
  }

  else
  {
    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "[IDSGlobalLinkMessage write] WARNING: failed even after dropping lower priority fields", v14, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v10 = @"[IDSGlobalLinkMessage write] WARNING: failed even after dropping lower priority fields";
LABEL_25:
      _IDSLogTransport(@"GL", @"IDS", v10);
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", v10);
      }
    }
  }

  return 1;
}

- (BOOL)_write:(char *)a3 outputLength:(int *)a4 dropLowerPriorityFields:(BOOL)a5
{
  v5 = a4;
  v41 = *MEMORY[0x1E69E9840];
  *a3 = bswap32(LOWORD(self->_command)) >> 16;
  *(a3 + 12) = 0;
  *(a3 + 4) = 0;
  v8 = a3 + 20;
  numAttribute = self->_numAttribute;
  if (numAttribute <= 0)
  {
    v35 = 0;
    v17 = 1;
    goto LABEL_41;
  }

  v10 = a5;
  v11 = 0;
  v35 = 0;
  attributes = self->_attributes;
  while (1)
  {
    if (v10 && attributes->type == 22)
    {
      goto LABEL_30;
    }

    v13 = attributes->len + 4;
    v36 = attributes->len + 4;
    if (v8 - a3 + v13 >= 1025)
    {
      break;
    }

    type = attributes->type;
    if (type <= 7)
    {
      if (attributes->type > 4u)
      {
        if (type - 5 >= 2)
        {
          if (type != 7)
          {
LABEL_22:
            v15 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = attributes->type;
              *buf = 67109120;
              LODWORD(v38) = v16;
              _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "receive invalid command attribute (%04x), skip.", buf, 8u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport(@"GL", @"IDS", @"receive invalid command attribute (%04x), skip.");
                if (_IDSShouldLog())
                {
                  _IDSLogV(0, @"IDSFoundation", @"GL", @"receive invalid command attribute (%04x), skip.");
                }
              }
            }

            goto LABEL_29;
          }

LABEL_21:
          writeIDSGLAttrU32(&attributes->type, v8, &v36);
          goto LABEL_29;
        }

LABEL_19:
        writeIDSGLAttrU16(&attributes->type, v8, &v36);
        goto LABEL_29;
      }

      if (type - 1 < 2)
      {
        goto LABEL_19;
      }

      if (type - 3 >= 2)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (type > 0x16)
      {
        goto LABEL_11;
      }

      if (((1 << type) & 0x60EC00) == 0)
      {
        if (((1 << type) & 0xC1000) != 0)
        {
          goto LABEL_19;
        }

        if (type == 20)
        {
          goto LABEL_21;
        }

LABEL_11:
        if (type == 8)
        {
          writeIDSGLAttrAddress(&attributes->type, v8, &v36);
          goto LABEL_29;
        }

        if (type != 9)
        {
          goto LABEL_22;
        }

        v35 = 1;
      }
    }

    writeIDSGLAttrBinaryData(&attributes->type, v8, &v36);
LABEL_29:
    v8 += v36;
    numAttribute = self->_numAttribute;
LABEL_30:
    ++v11;
    ++attributes;
    if (v11 >= numAttribute)
    {
      v17 = 1;
      goto LABEL_40;
    }
  }

  v18 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "exceed max command buffer length, stop.", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"exceed max command buffer length, stop.");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"exceed max command buffer length, stop.");
      }
    }
  }

  v17 = 0;
LABEL_40:
  v5 = a4;
LABEL_41:
  *(a3 + 1) = bswap32(v8 - a3 - 20) >> 16;
  if (v5)
  {
    *v5 = v8 - a3;
  }

  v19 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = @"NO";
    if (v35)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    if (self->_hmacKeyData)
    {
      v20 = @"YES";
    }

    *buf = 138412546;
    v38 = v21;
    v39 = 2112;
    v40 = v20;
    _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "has hmac? %@; data: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"has hmac? %@; data: %@");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"has hmac? %@; data: %@");
      }
    }
  }

  if (v35)
  {
    hmacKeyData = self->_hmacKeyData;
    if (hmacKeyData)
    {
      CCHmac(0, [(NSData *)hmacKeyData bytes], [(NSData *)self->_hmacKeyData length], a3, *v5 - 24, &a3[*v5 - 20]);
      v23 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [MEMORY[0x1E695DEF0] dataWithBytes:&a3[*v5 - 20] length:20];
        v25 = [v24 __imHexString];
        v26 = [(NSData *)self->_hmacKeyData __imHexString];
        *buf = 138412546;
        v38 = v25;
        v39 = 2112;
        v40 = v26;
        _os_log_impl(&dword_1A7AD9000, v23, OS_LOG_TYPE_DEFAULT, "HMac:%@, Key: %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v27 = [MEMORY[0x1E695DEF0] dataWithBytes:&a3[*v5 - 20] length:20];
          v28 = [v27 __imHexString];
          v32 = [(NSData *)self->_hmacKeyData __imHexString];
          _IDSLogTransport(@"GL", @"IDS", @"HMac:%@, Key: %@");

          if (_IDSShouldLog())
          {
            v29 = [MEMORY[0x1E695DEF0] dataWithBytes:&a3[*v5 - 20] length:{20, v28, v32}];
            v30 = [v29 __imHexString];
            v33 = [(NSData *)self->_hmacKeyData __imHexString];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"HMac:%@, Key: %@");
          }
        }
      }
    }
  }

  return v17;
}

- (BOOL)read:(char *)a3 inputLength:(int)a4
{
  v29 = *MEMORY[0x1E69E9840];
  if (a4 <= 19)
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v26 = a4;
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "receive invalid command data length %uB, too short.", buf, 8u);
    }

    v6 = os_log_shim_legacy_logging_enabled();
    if (!v6)
    {
      return v6;
    }

    v6 = _IDSShouldLogTransport();
    if (!v6)
    {
      return v6;
    }

    _IDSLogTransport(@"GL", @"IDS", @"receive invalid command data length %uB, too short.");
    v6 = _IDSShouldLog();
    if (!v6)
    {
      return v6;
    }

    _IDSLogV(0, @"IDSFoundation", @"GL", @"receive invalid command data length %uB, too short.");
    goto LABEL_15;
  }

  self->_command = bswap32(*a3) >> 16;
  v8 = (bswap32(*(a3 + 1)) >> 16) + 20;
  if (v8 > a4)
  {
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v26 = a4;
      v27 = 1024;
      v28 = v8;
      _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "receive incomplete packet (%d < %d), skip.", buf, 0xEu);
    }

    v6 = os_log_shim_legacy_logging_enabled();
    if (!v6)
    {
      return v6;
    }

    v6 = _IDSShouldLogTransport();
    if (!v6)
    {
      return v6;
    }

    _IDSLogTransport(@"GL", @"IDS", @"receive incomplete packet (%d < %d), skip.");
    v6 = _IDSShouldLog();
    if (!v6)
    {
      return v6;
    }

    _IDSLogV(0, @"IDSFoundation", @"GL", @"receive incomplete packet (%d < %d), skip.");
LABEL_15:
    LOBYTE(v6) = 0;
    return v6;
  }

  v24 = -1431655766;
  if (a4 < 0x18)
  {
    v10 = 0;
LABEL_18:
    self->_numAttribute = v10;
    LOBYTE(v6) = 1;
    return v6;
  }

  v11 = 0;
  v12 = &a3[a4];
  v13 = (a3 + 24);
  v14 = a3 + 20;
  attributes = self->_attributes;
  while (1)
  {
    v16 = bswap32(*v14) >> 16;
    attributes->type = v16;
    v17 = bswap32(*(v14 + 1)) >> 16;
    attributes->len = v17;
    v24 = v17;
    if (v12 - v13 < v17)
    {
      v21 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v26 = v12 - v13;
        v27 = 1024;
        v28 = v24;
        _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "Buffer may overflow, %d, %d, return", buf, 0xEu);
      }

      v6 = os_log_shim_legacy_logging_enabled();
      if (v6)
      {
        v6 = _IDSShouldLogTransport();
        if (v6)
        {
          _IDSLogTransport(@"GL", @"IDS", @"Buffer may overflow, %d, %d, return");
          v6 = _IDSShouldLog();
          if (v6)
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"Buffer may overflow, %d, %d, return");
            goto LABEL_15;
          }
        }
      }

      return v6;
    }

    if (v17 >= 0x401)
    {
      break;
    }

    if (v16 <= 6)
    {
      if ((v16 - 1) < 2)
      {
        goto LABEL_34;
      }

      if ((v16 - 3) >= 2)
      {
        if ((v16 - 5) >= 2)
        {
LABEL_41:
          v19 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            type = attributes->type;
            *buf = 67109120;
            v26 = type;
            _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "receive invalid attribute %04x, skip.", buf, 8u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"GL", @"IDS", @"receive invalid attribute %04x, skip.");
              if (_IDSShouldLog())
              {
                _IDSLogV(0, @"IDSFoundation", @"GL", @"receive invalid attribute %04x, skip.");
              }
            }
          }

          goto LABEL_36;
        }

LABEL_34:
        readIDSGLAttrU16(attributes, &v24, v13, v12 - v13);
        goto LABEL_36;
      }

LABEL_35:
      readIDSGLAttrBinaryData(attributes, &v24, v13, v12 - v13);
      goto LABEL_36;
    }

    if (v16 <= 0x16)
    {
      if (((1 << v16) & 0x60EE00) != 0)
      {
        goto LABEL_35;
      }

      if (((1 << v16) & 0xC1000) != 0)
      {
        goto LABEL_34;
      }

      if (v16 == 20)
      {
        goto LABEL_40;
      }
    }

    if (v16 == 7)
    {
LABEL_40:
      readIDSGLAttrU32(attributes, &v24, v13, v12 - v13);
    }

    else
    {
      if (v16 != 8)
      {
        goto LABEL_41;
      }

      readIDSGLAttrAddress(attributes, &v24, v13, v12 - v13);
    }

LABEL_36:
    v14 = v13 + v24;
    v10 = v11 + 1;
    v13 = (v14 + 4);
    if (v14 + 4 <= v12)
    {
      ++attributes;
      if (v11++ < 0x13)
      {
        continue;
      }
    }

    goto LABEL_18;
  }

  v22 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v26 = v24;
    _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "attrLen %d is greater than kIDSGLAttributeMaxSize, return", buf, 8u);
  }

  v6 = os_log_shim_legacy_logging_enabled();
  if (v6)
  {
    v6 = _IDSShouldLogTransport();
    if (v6)
    {
      _IDSLogTransport(@"GL", @"IDS", @"attrLen %d is greater than kIDSGLAttributeMaxSize, return");
      v6 = _IDSShouldLog();
      if (v6)
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"attrLen %d is greater than kIDSGLAttributeMaxSize, return");
        goto LABEL_15;
      }
    }
  }

  return v6;
}

@end