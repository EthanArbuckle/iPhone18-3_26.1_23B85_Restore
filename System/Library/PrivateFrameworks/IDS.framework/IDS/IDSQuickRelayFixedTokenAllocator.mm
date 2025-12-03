@interface IDSQuickRelayFixedTokenAllocator
- (BOOL)_isSessionInfoValid:(id)valid;
- (IDSQuickRelayFixedTokenAllocator)initWithDefaults;
- (IDSQuickRelayFixedTokenAllocator)initWithDictionary:(id)dictionary;
- (id)_parseQuickRelayDefaults;
- (void)_setAllValuesFromDictionary:(id)dictionary;
@end

@implementation IDSQuickRelayFixedTokenAllocator

- (IDSQuickRelayFixedTokenAllocator)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (_IDSRunningInDaemon())
  {
    v5 = +[IDSTransportLog QRAllocator];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B2E704();
    }

    goto LABEL_9;
  }

  v9.receiver = self;
  v9.super_class = IDSQuickRelayFixedTokenAllocator;
  v6 = [(IDSQuickRelayFixedTokenAllocator *)&v9 init];
  self = v6;
  if (v6)
  {
    if (![(IDSQuickRelayFixedTokenAllocator *)v6 _isSessionInfoValid:dictionaryCopy])
    {
LABEL_9:
      selfCopy = 0;
      goto LABEL_10;
    }

    [(IDSQuickRelayFixedTokenAllocator *)self _setAllValuesFromDictionary:dictionaryCopy];
  }

  self = self;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (IDSQuickRelayFixedTokenAllocator)initWithDefaults
{
  if (_IDSRunningInDaemon())
  {
    _parseQuickRelayDefaults = +[IDSTransportLog QRAllocator];
    if (os_log_type_enabled(_parseQuickRelayDefaults, OS_LOG_TYPE_ERROR))
    {
      sub_195B2E704();
    }

    selfCopy = 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = IDSQuickRelayFixedTokenAllocator;
    v5 = [(IDSQuickRelayFixedTokenAllocator *)&v8 init];
    if (!v5)
    {
      return 0;
    }

    v6 = v5;
    _parseQuickRelayDefaults = [(IDSQuickRelayFixedTokenAllocator *)v5 _parseQuickRelayDefaults];
    self = [(IDSQuickRelayFixedTokenAllocator *)v6 initWithDictionary:_parseQuickRelayDefaults];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)_setAllValuesFromDictionary:(id)dictionary
{
  v4 = *MEMORY[0x1E69A5528];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKey:v4];
  [(IDSQuickRelayFixedTokenAllocator *)self setRelayIP:v6];

  v7 = [dictionaryCopy objectForKey:*MEMORY[0x1E69A5538]];
  [(IDSQuickRelayFixedTokenAllocator *)self setRelayPort:v7];

  v8 = [dictionaryCopy objectForKey:*MEMORY[0x1E69A5550]];
  [(IDSQuickRelayFixedTokenAllocator *)self setRelaySessionToken:v8];

  v9 = [dictionaryCopy objectForKey:*MEMORY[0x1E69A5548]];
  [(IDSQuickRelayFixedTokenAllocator *)self setRelaySessionKey:v9];

  v10 = [dictionaryCopy objectForKey:*MEMORY[0x1E69A5540]];
  [(IDSQuickRelayFixedTokenAllocator *)self setRelaySessionID:v10];

  v11 = [dictionaryCopy objectForKey:*MEMORY[0x1E69A5530]];
  [(IDSQuickRelayFixedTokenAllocator *)self setRelayCombinedSoftwareID:v11];

  v12 = [dictionaryCopy objectForKey:*MEMORY[0x1E69A5510]];

  [(IDSQuickRelayFixedTokenAllocator *)self setAppleID:v12];
}

- (BOOL)_isSessionInfoValid:(id)valid
{
  v21[7] = *MEMORY[0x1E69E9840];
  validCopy = valid;
  if (validCopy)
  {
    v4 = *MEMORY[0x1E69A5538];
    v21[0] = *MEMORY[0x1E69A5528];
    v21[1] = v4;
    v5 = *MEMORY[0x1E69A5548];
    v21[2] = *MEMORY[0x1E69A5550];
    v21[3] = v5;
    v6 = *MEMORY[0x1E69A5530];
    v21[4] = *MEMORY[0x1E69A5540];
    v21[5] = v6;
    v21[6] = *MEMORY[0x1E69A5510];
    [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:7];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v19 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [validCopy objectForKey:{*(*(&v16 + 1) + 8 * i), v16}];

          if (!v12)
          {
            v13 = 0;
            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v13 = 1;
LABEL_12:
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)_parseQuickRelayDefaults
{
  v32[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x19A8BACE0](@"com.apple.ids", @"FixedQuickRelayServerAddress");
  v3 = [v2 componentsSeparatedByString:@":"];
  if ([v3 count] == 2)
  {
    v4 = [v3 objectAtIndex:0];
    v32[0] = 0xAAAAAAAAAAAAAAAALL;
    v32[1] = 0xAAAAAAAAAAAAAAAALL;
    if (inet_pton(2, [v4 UTF8String], v32 + 4) == 1)
    {
      v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v32 + 4 length:4];
      v6 = [v3 objectAtIndex:1];
      integerValue = [v6 integerValue];

      v7 = +[IDSTransportLog QRAllocator];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v29 = v4;
        v30 = 1024;
        v31 = integerValue;
        _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Decoded relay-server-address %@:%u", buf, 0x12u);
      }

      v25 = MEMORY[0x19A8BACE0](@"com.apple.ids", @"FixedQuickRelaySessionID");
      v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v25 options:0];
      bytes = [v8 bytes];
      if (bytes)
      {
        bytes = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{objc_msgSend(v8, "bytes")}];
      }

      v24 = bytes;
      value = [bytes UUIDString];
      v10 = +[IDSTransportLog QRAllocator];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = value;
        _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "Decoded base64 relay-session-id %@", buf, 0xCu);
      }

      v23 = MEMORY[0x19A8BACE0](@"com.apple.ids", @"FixedQuickRelaySessionToken");
      v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v23 options:0];
      v12 = +[IDSTransportLog QRAllocator];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v11;
        _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "Decoded base64 relay-session-token %@", buf, 0xCu);
      }

      v13 = MEMORY[0x19A8BACE0](@"com.apple.ids", @"FixedQuickRelaySessionKey");
      v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v13 options:0];
      v15 = +[IDSTransportLog QRAllocator];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v14;
        _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "Decoded base64 relay-session-key %@", buf, 0xCu);
      }

      if (v5 && integerValue && value && v11 && v14)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(Mutable, *MEMORY[0x1E69A5528], v5);
        v17 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:integerValue];
        if (v17)
        {
          CFDictionarySetValue(Mutable, *MEMORY[0x1E69A5538], v17);
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          sub_195B2E790();
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x1E69A5540], value);
        CFDictionarySetValue(Mutable, *MEMORY[0x1E69A5550], v11);
        CFDictionarySetValue(Mutable, *MEMORY[0x1E69A5548], v14);
        v19 = _IDSQuickRelayProtocolVersionNumber();
        if (v19)
        {
          CFDictionarySetValue(Mutable, *MEMORY[0x1E69A5530], v19);
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          sub_195B2E818();
        }

        v20 = *MEMORY[0x1E69A5558];
        if (v20)
        {
          CFDictionarySetValue(Mutable, *MEMORY[0x1E69A5510], v20);
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          sub_195B2E8A0();
        }

        v18 = +[IDSTransportLog QRAllocator];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "Using preallocated tokens from user defaults", buf, 2u);
        }
      }

      else
      {
        v18 = +[IDSTransportLog QRAllocator];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "Missing a defaults for hardcoded QR session info", buf, 2u);
        }

        Mutable = 0;
      }
    }

    else
    {
      v5 = +[IDSTransportLog QRAllocator];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "Faied to get address in FixedQuickRelayServerAddress defaults", buf, 2u);
      }

      Mutable = 0;
    }
  }

  else
  {
    v4 = +[IDSTransportLog QRAllocator];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "Faied to get address in FixedQuickRelayServerAddress defaults", buf, 2u);
    }

    Mutable = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return Mutable;
}

@end