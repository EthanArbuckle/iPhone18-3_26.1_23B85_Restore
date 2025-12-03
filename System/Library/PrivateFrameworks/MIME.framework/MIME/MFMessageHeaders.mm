@interface MFMessageHeaders
+ (BOOL)isStructuredHeaderKey:(id)key;
+ (id)addressListFromEncodedString:(id)string;
+ (id)basicHeaders;
+ (id)copyAddressListFromEncodedData:(id)data encoding:(unsigned int)encoding;
+ (id)encodedDataForAddressList:(id)list splittingAtLength:(unint64_t)length firstLineBuffer:(unint64_t)buffer;
+ (id)uniqueHeaderKeyStringForString:(id)string;
- (BOOL)hasHeaderForKey:(id)key;
- (MFMessageHeaders)initWithASCIIHeaderString:(id)string;
- (id)_capitalizedKeyForKey:(id)key;
- (id)_commaSeparatedValuesForKey:(id)key includeAngleBracket:(BOOL)bracket;
- (id)_copyAddressListForKey:(id)key;
- (id)_copyHeaderValueForKey:(id)key;
- (id)_copyHeaderValueForKey:(id)key offset:(unint64_t *)offset decoded:(BOOL)decoded;
- (id)_decodeHeaderKeysFromData:(id)data;
- (id)_headerValueForKey:(id)key offset:(unint64_t *)offset;
- (id)copyDecodedStringFromHeaderData:(id)data withRange:(_NSRange)range;
- (id)copyFirstNonDecodedHeaderForKey:(id)key;
- (id)copyFirstStringValueForKey:(id)key;
- (id)copyHeadersForKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)firstAddressForKey:(id)key;
- (id)firstHeaderForKey:(id)key;
- (id)firstMessageIDForKey:(id)key;
- (id)firstSenderAddress;
- (id)headersDictionary;
- (id)headersForKey:(id)key;
- (id)headersRequiringSMTPUTF8Support;
- (id)messageIDListForKey:(id)key;
- (id)mutableCopy;
- (id)senderForUnsubscribeMessage;
- (unsigned)_contentTypeEncoding;
- (void)_setCapitalizedKey:(id)key forKey:(id)forKey;
- (void)appendHeaderData:(id)data andRecipients:(id)recipients;
- (void)enumerateKeysAndBytesUsingBlock:(id)block;
@end

@implementation MFMessageHeaders

+ (id)basicHeaders
{
  v10[10] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E699B0E0];
  v10[0] = *MEMORY[0x1E699B160];
  v10[1] = v2;
  v3 = *MEMORY[0x1E699B170];
  v10[2] = *MEMORY[0x1E699B0D8];
  v10[3] = v3;
  v4 = *MEMORY[0x1E699B158];
  v10[4] = *MEMORY[0x1E699B180];
  v10[5] = v4;
  v5 = *MEMORY[0x1E699B178];
  v10[6] = *MEMORY[0x1E699B098];
  v10[7] = v5;
  v6 = *MEMORY[0x1E699B078];
  v10[8] = *MEMORY[0x1E699B150];
  v10[9] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:10];
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (BOOL)isStructuredHeaderKey:(id)key
{
  keyCopy = key;
  v4 = ![keyCopy caseInsensitiveCompare:*MEMORY[0x1E699B180]] || !objc_msgSend(keyCopy, "caseInsensitiveCompare:", *MEMORY[0x1E699B0E0]) || !objc_msgSend(keyCopy, "caseInsensitiveCompare:", *MEMORY[0x1E699B160]) || !objc_msgSend(keyCopy, "caseInsensitiveCompare:", *MEMORY[0x1E699B170]) || !objc_msgSend(keyCopy, "caseInsensitiveCompare:", *MEMORY[0x1E699B158]) || !objc_msgSend(keyCopy, "caseInsensitiveCompare:", *MEMORY[0x1E699B098]) || !objc_msgSend(keyCopy, "caseInsensitiveCompare:", *MEMORY[0x1E699B088]) || objc_msgSend(keyCopy, "caseInsensitiveCompare:", *MEMORY[0x1E699B150]) == 0;

  return v4;
}

- (MFMessageHeaders)initWithASCIIHeaderString:(id)string
{
  v4 = [string dataUsingEncoding:1];
  v5 = [(MFMessageHeaders *)self initWithHeaderData:v4 encoding:1536];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MFMessageHeaders alloc];
  data = self->_data;
  preferredEncoding = self->_preferredEncoding;

  return [(MFMessageHeaders *)v4 initWithHeaderData:data encoding:preferredEncoding];
}

- (id)mutableCopy
{
  v3 = [MFMutableMessageHeaders alloc];
  data = self->_data;
  preferredEncoding = self->_preferredEncoding;

  return [(MFMessageHeaders *)v3 initWithHeaderData:data encoding:preferredEncoding];
}

- (id)headersRequiringSMTPUTF8Support
{
  v3 = objc_opt_new();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__MFMessageHeaders_headersRequiringSMTPUTF8Support__block_invoke;
  v7[3] = &unk_1E8454E30;
  v4 = v3;
  v8 = v4;
  [(MFMessageHeaders *)self enumerateKeysAndBytesUsingBlock:v7];
  allObjects = [v4 allObjects];

  return allObjects;
}

void __51__MFMessageHeaders_headersRequiringSMTPUTF8Support__block_invoke(uint64_t a1, void *a2, char *a3, uint64_t a4)
{
  v9 = a2;
  v7 = &a3[a4];
  while (a3 < v7)
  {
    v8 = *a3++;
    if (v8 < 0)
    {
      [*(a1 + 32) addObject:v9];
      break;
    }
  }
}

- (void)enumerateKeysAndBytesUsingBlock:(id)block
{
  blockCopy = block;
  bytes = [(NSData *)self->_data bytes];
  [(NSData *)self->_data length];
  memset(v9, 170, sizeof(v9));
  while (1)
  {
    data = self->_data;
    if (!ECGetNextHeaderFromDataInRange())
    {
      break;
    }

    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:&bytes[v9[2]] length:v9[3] encoding:1 freeWhenDone:0];
    lowercaseString = [v7 lowercaseString];

    blockCopy[2](blockCopy, lowercaseString, &bytes[v9[0]], v9[1]);
  }
}

- (id)headersDictionary
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  _contentTypeEncoding = [(MFMessageHeaders *)self _contentTypeEncoding];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__MFMessageHeaders_headersDictionary__block_invoke;
  v6[3] = &unk_1E8454E58;
  v7 = _contentTypeEncoding;
  v6[4] = &v8;
  [(MFMessageHeaders *)self enumerateKeysAndBytesUsingBlock:v6];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __37__MFMessageHeaders_headersDictionary__block_invoke(uint64_t a1, void *a2, UInt8 *a3, size_t a4)
{
  v14 = a2;
  v7 = _MFCreateStringFromHeaderBytes(*(a1 + 40), a3, a4);
  if ([v14 length] && objc_msgSend(v7, "length"))
  {
    v8 = *(*(*(a1 + 32) + 8) + 40);
    if (!v8)
    {
      v9 = [MEMORY[0x1E695DF90] dictionary];
      v10 = *(*(a1 + 32) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v8 = *(*(*(a1 + 32) + 8) + 40);
    }

    v12 = [v8 objectForKeyedSubscript:v14];
    v13 = v12;
    if (v12)
    {
      [v12 addObject:v7];
    }

    else
    {
      v13 = [MEMORY[0x1E695DF70] arrayWithObject:v7];
      [*(*(*(a1 + 32) + 8) + 40) setObject:? forKeyedSubscript:?];
    }
  }
}

- (void)_setCapitalizedKey:(id)key forKey:(id)forKey
{
  keyCopy = key;
  forKeyCopy = forKey;
  _MFLockGlobalLock();
  Mutable = _capitalizedKeyCache;
  if (!_capitalizedKeyCache)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
    _capitalizedKeyCache = Mutable;
  }

  if (!CFDictionaryGetValue(Mutable, forKeyCopy))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:keyCopy];
    CFDictionarySetValue(_capitalizedKeyCache, forKeyCopy, v7);
  }

  _MFUnlockGlobalLock();
}

- (id)_capitalizedKeyForKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  if (_capitalizedKeyCache)
  {
    _MFLockGlobalLock();
    capitalizedString = CFDictionaryGetValue(_capitalizedKeyCache, v5);
    _MFUnlockGlobalLock();
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    capitalizedString = 0;
    if (!keyCopy)
    {
      goto LABEL_7;
    }
  }

  if (!capitalizedString)
  {
    capitalizedString = [v5 capitalizedString];
    [(MFMessageHeaders *)self _setCapitalizedKey:capitalizedString forKey:v5];
  }

LABEL_7:

  return capitalizedString;
}

- (unsigned)_contentTypeEncoding
{
  v2 = [(MFMessageHeaders *)self copyFirstNonDecodedHeaderForKey:*MEMORY[0x1E699B0D0]];
  v3 = v2;
  if (v2)
  {
    v4 = _MFCreateStringFromHeaderBytes(0xFFFFFFFF, [v2 bytes], objc_msgSend(v2, "length"));
    if (v4)
    {
      v15 = 0;
      v16 = 0;
      v14 = 0;
      v5 = [MFMimePart parseContentTypeHeader:v4 type:&v16 subtype:&v15 info:&v14];
      v6 = v16;
      v7 = v15;
      v8 = v14;
      v9 = v8;
      if (v5)
      {
        v10 = [v8 objectForKey:@"charset"];
        v11 = v10;
        if (v10)
        {
          v12 = MFEncodingForCharset(v10);
        }

        else
        {
          v12 = -1;
        }
      }

      else
      {
        v12 = -1;
      }
    }

    else
    {
      v12 = -1;
    }
  }

  else
  {
    v12 = -1;
  }

  return v12;
}

- (id)copyDecodedStringFromHeaderData:(id)data withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v27 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (!dataCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = MFLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      [(MFMessageHeaders *)isKindOfClass & 1 copyDecodedStringFromHeaderData:v26 withRange:dataCopy, v9];
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    objc_opt_class();
    [currentHandler handleFailureInMethod:a2 object:self file:@"MessageHeaders.m" lineNumber:305 description:{@"MFMessageHeaders::copyDecodedStringFromHeaderData invalid data, [data:%p] [data.isNSData:%i]", dataCopy, objc_opt_isKindOfClass() & 1}];
  }

  if (location + length > [dataCopy length])
  {
    v12 = MFLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218496;
      v21 = [dataCopy length];
      v22 = 2048;
      v23 = location;
      v24 = 2048;
      v25 = length;
      _os_log_fault_impl(&dword_1D36B2000, v12, OS_LOG_TYPE_FAULT, "_MFCreateStringFromHeaderBytes buffer overflow preempt, [data.length:%lu] [range.location:%lu/length:%lu]", buf, 0x20u);
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MessageHeaders.m" lineNumber:312 description:{@"_MFCreateStringFromHeaderBytes buffer overflow preempt, [data.length:%lu] [range.location:%lu/length:%lu]", objc_msgSend(dataCopy, "length"), location, length}];
  }

  preferredEncoding = self->_preferredEncoding;
  if (preferredEncoding == -1)
  {
    preferredEncoding = [(MFMessageHeaders *)self _contentTypeEncoding];
    self->_preferredEncoding = preferredEncoding;
  }

  v15 = dataCopy;
  v16 = _MFCreateStringFromHeaderBytes(preferredEncoding, ([dataCopy bytes] + location), length);
  if (!v16)
  {
    if (self->_preferredEncoding == -1)
    {
      v16 = 0;
    }

    else
    {
      v17 = dataCopy;
      v16 = _MFCreateStringFromHeaderBytes(0xFFFFFFFF, ([dataCopy bytes] + location), length);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)_copyHeaderValueForKey:(id)key offset:(unint64_t *)offset decoded:(BOOL)decoded
{
  decodedCopy = decoded;
  keyCopy = key;
  v9 = *offset;
  if (v9 < [(NSData *)self->_data length]&& (v10 = *offset, [(NSData *)self->_data length], v11 = *offset, ECGetNextHeaderFromDataInRange()))
  {
    if (decodedCopy)
    {
      v12 = [(MFMessageHeaders *)self copyDecodedStringFromHeaderData:self->_data withRange:0, 0];
    }

    else
    {
      v12 = [(NSData *)self->_data subdataWithRange:0, 0];
    }

    v13 = v12;
    *offset = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_headerValueForKey:(id)key offset:(unint64_t *)offset
{
  v4 = [(MFMessageHeaders *)self _copyHeaderValueForKey:key offset:offset decoded:1];

  return v4;
}

- (id)_copyHeaderValueForKey:(id)key
{
  keyCopy = key;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = 0;
  v9 = 0;
  while (1)
  {
    v7 = [(MFMessageHeaders *)self _copyHeaderValueForKey:keyCopy offset:&v9 decoded:1];

    if (!v7)
    {
      break;
    }

    v6 = v7;
    [v5 addObject:v7];
  }

  return v5;
}

- (BOOL)hasHeaderForKey:(id)key
{
  keyCopy = key;
  [(NSData *)self->_data length];
  LOBYTE(self) = ECGetNextHeaderFromDataInRange();

  return self;
}

- (id)copyHeadersForKey:(id)key
{
  v3 = [(MFMessageHeaders *)self _copyHeaderValueForKey:key];
  v4 = v3;
  if (v3 && ![v3 count])
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

- (id)headersForKey:(id)key
{
  v3 = [(MFMessageHeaders *)self copyHeadersForKey:key];

  return v3;
}

+ (id)copyAddressListFromEncodedData:(id)data encoding:(unsigned int)encoding
{
  dataCopy = data;
  v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [dataCopy length];
  bytes = [dataCopy bytes];
  v6 = bytes;
  if (v4 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = bytes + v4;
    v10 = bytes;
    while (1)
    {
      v11 = *v10;
      if (v10 == v6 && ((v11 - 9) < 2 || v11 == 32))
      {
        break;
      }

      if (v11 == 34)
      {
        v8 ^= 1u;
LABEL_39:
        if (++v10 >= v9)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v12 = v10 + 1;
        v13 = v10 + 1 == v9;
        if (!((v11 != 40) | v8 & 1))
        {
          v14 = 1;
          goto LABEL_14;
        }

LABEL_10:
        LODWORD(v15) = (v11 == 41) & ~v8;
        if (v7)
        {
          v15 = v15;
        }

        else
        {
          v15 = 0;
        }

        v14 = v15 << 63 >> 63;
LABEL_14:
        v7 += v14;
        v16 = (v11 == 44) & ~v8;
        if (v7)
        {
          v16 = 0;
        }

        if ((v16 & 1) == 0 && !v13)
        {
          goto LABEL_39;
        }

        if (v11 == 44)
        {
          v17 = v10;
        }

        else
        {
          v17 = v12;
        }

        v18 = v17;
        if (v17 > v6)
        {
          v18 = v17;
          v19 = v17;
          while (1)
          {
            v20 = *--v19;
            v21 = (1 << v20) & 0x100000600;
            if (v20 > 0x20 || v21 == 0)
            {
              break;
            }

            v18 = v19;
            if (v19 <= v6)
            {
              v18 = v6;
              break;
            }
          }
        }

        if (v18 - v6 >= 1)
        {
          v23 = _MFCreateStringFromHeaderBytes(encoding, v6, v18 - v6);
          emailAddressValue = [v23 emailAddressValue];
          stringValue = [emailAddressValue stringValue];
          v26 = stringValue;
          if (stringValue)
          {
            stringValue2 = stringValue;
          }

          else
          {
            stringValue2 = [v23 stringValue];
          }

          v28 = stringValue2;

          if ([v28 length])
          {
            [v31 addObject:v28];
          }
        }

        v6 = v17 + 1;
        v10 = v17 + 1;
        if ((v17 + 1) >= v9)
        {
          goto LABEL_40;
        }
      }
    }

    ++v6;
    v12 = v10 + 1;
    v13 = v10 + 1 == v9;
    goto LABEL_10;
  }

LABEL_40:

  return v31;
}

+ (id)addressListFromEncodedString:(id)string
{
  v4 = [string dataUsingEncoding:4];
  v5 = [self copyAddressListFromEncodedData:v4 encoding:134217984];

  return v5;
}

+ (id)encodedDataForAddressList:(id)list splittingAtLength:(unint64_t)length firstLineBuffer:(unint64_t)buffer
{
  v117 = *MEMORY[0x1E69E9840];
  listCopy = list;
  v95 = objc_alloc_init(MFMutableData);
  v8 = length - buffer;
  lengthCopy = length;
  v112 = 0u;
  v113 = 0u;
  if (!length)
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v96 = v8;
  v110 = 0uLL;
  v111 = 0uLL;
  obj = listCopy;
  v9 = [obj countByEnumeratingWithState:&v110 objects:v116 count:{16, listCopy}];
  if (v9)
  {
    v92 = *v111;
    do
    {
      v93 = v9;
      for (i = 0; i != v93; ++i)
      {
        if (*v111 != v92)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v110 + 1) + 8 * i);
        v94 = [objc_alloc(MEMORY[0x1E699B250]) initWithStyle:1];
        [v94 setShouldIncludeDisplayName:1];
        v12 = [v94 stringFromEmailAddressConvertible:v11];
        v109 = 0xAAAAAAAAAAAAAAAALL;
        *&v13 = 0xAAAAAAAAAAAAAAAALL;
        *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v107 = v13;
        v108 = v13;
        v105 = v13;
        *v106 = v13;
        v103 = v13;
        v104 = v13;
        v101 = v13;
        v102 = v13;
        v99 = v13;
        v100 = v13;
        *buffer = v13;
        theString = v12;
        v14 = [(__CFString *)v12 length];
        v106[0] = v12;
        *(&v107 + 1) = 0;
        *&v108 = v14;
        v106[1] = CFStringGetCharactersPtr(v12);
        if (v106[1])
        {
          CStringPtr = 0;
        }

        else
        {
          CStringPtr = CFStringGetCStringPtr(v12, 0x600u);
        }

        *&v107 = CStringPtr;
        *(&v108 + 1) = 0;
        v109 = 0;
        v16 = objc_alloc_init(MFMutableData);
        v17 = [(__CFString *)theString length];
        Mutable = CFStringCreateMutable(0, v17);
        chars = -21846;
        if (!v17)
        {
LABEL_48:
          v23 = 0;
          goto LABEL_49;
        }

        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          v24 = v108;
          if (v108 > v19)
          {
            break;
          }

          chars = 0;
LABEL_47:
          v19 = ++v23;
          if (v17 <= v23)
          {
            goto LABEL_48;
          }
        }

        if (v106[1])
        {
          v25 = *(&v106[1]->isa + *(&v107 + 1) + v19);
        }

        else if (v107)
        {
          v25 = *(v107 + *(&v107 + 1) + v19);
        }

        else
        {
          v26 = *(&v108 + 1);
          if (v109 <= v19 || *(&v108 + 1) > v19)
          {
            v28 = v19 - 4;
            if (v23 < 4)
            {
              v28 = 0;
            }

            if (v28 + 64 < v108)
            {
              v24 = v28 + 64;
            }

            *(&v108 + 1) = v28;
            v109 = v24;
            v119.length = v24 - v28;
            v119.location = *(&v107 + 1) + v28;
            CFStringGetCharacters(v106[0], v119, buffer);
            v26 = *(&v108 + 1);
          }

          v25 = buffer[v19 - v26];
        }

        chars = v25;
        if (v25 == 92 && v17 > v23 + 1)
        {
          ++v23;
          goto LABEL_47;
        }

        if (v25 == 34 && v22 == 0)
        {
          v22 = 0;
          v20 ^= 1u;
          goto LABEL_47;
        }

        if (!((v25 != 40) | v20 & 1))
        {
          v20 = 0;
          ++v22;
          goto LABEL_47;
        }

        if (!((v25 != 41) | v20 & 1))
        {
          v20 = 0;
          --v22;
          goto LABEL_47;
        }

        if (v25 != 60 || ((v20 ^ 1) & 1) == 0 || v22)
        {
          v21 |= (v25 == 44) & (v20 ^ 1);
          goto LABEL_47;
        }

        if (!v23)
        {
          goto LABEL_197;
        }

        v51 = v23;
        while (1)
        {
          v52 = (v51 - 1);
          v53 = v108;
          if (v108 <= v52)
          {
            break;
          }

          if (v106[1])
          {
            v54 = *(&v106[1]->isa + *(&v107 + 1) + v52);
          }

          else if (v107)
          {
            v54 = *(v107 + *(&v107 + 1) + v52);
          }

          else
          {
            v55 = *(&v108 + 1);
            if (v109 <= v52 || *(&v108 + 1) > v52)
            {
              v57 = v52 - 4;
              if (v51 < 5)
              {
                v57 = 0;
              }

              if (v57 + 64 < v108)
              {
                v53 = v57 + 64;
              }

              *(&v108 + 1) = v57;
              v109 = v53;
              v124.length = v53 - v57;
              v124.location = *(&v107 + 1) + v57;
              CFStringGetCharacters(v106[0], v124, buffer);
              v55 = *(&v108 + 1);
            }

            v54 = buffer[v52 - v55];
          }

          if (v54 != 9 && v54 != 32)
          {
            break;
          }

          --v51;
          if (!v52)
          {
            goto LABEL_197;
          }
        }

        v58 = 0;
        v59 = v51;
        v60 = 0;
        v61 = 64;
        v89 = v59;
        while (1)
        {
          v62 = v60 >= 4 ? 4 : v60;
          v63 = v108;
          if (v108 <= v60)
          {
            break;
          }

          if (v106[1])
          {
            v64 = v106[1] + *(&v107 + 1);
LABEL_147:
            v65 = v64[v60];
            goto LABEL_150;
          }

          if (!v107)
          {
            v67 = *(&v108 + 1);
            if (v109 <= v60 || *(&v108 + 1) > v60)
            {
              v69 = v62 + v58;
              v70 = v61 - v62;
              v71 = v60 - v62;
              v72 = v71 + 64;
              if (v71 + 64 >= v108)
              {
                v72 = v108;
              }

              *(&v108 + 1) = v71;
              v109 = v72;
              if (v108 >= v70)
              {
                v63 = v70;
              }

              v125.location = v71 + *(&v107 + 1);
              v125.length = v63 + v69;
              CFStringGetCharacters(v106[0], v125, buffer);
              v67 = *(&v108 + 1);
            }

            v64 = &buffer[-v67];
            goto LABEL_147;
          }

          v65 = *(v107 + *(&v107 + 1) + v60);
LABEL_150:
          if (v65 != 32 && v65 != 9)
          {
            break;
          }

          ++v60;
          --v58;
          ++v61;
          if (v89 == v60)
          {
            goto LABEL_197;
          }
        }

        if (v21)
        {
          CFStringAppend(Mutable, @"");
        }

        v73 = 0;
        v74 = 0;
        v75 = 64;
        while (2)
        {
          if (v74 >= 4)
          {
            v76 = 4;
          }

          else
          {
            v76 = v74;
          }

          v77 = v108;
          if (v108 <= v74)
          {
            v114 = 0;
          }

          else
          {
            if (v106[1])
            {
              v78 = v106[1] + *(&v107 + 1);
              goto LABEL_176;
            }

            if (v107)
            {
              v79 = *(v107 + *(&v107 + 1) + v74);
            }

            else
            {
              v80 = *(&v108 + 1);
              if (v109 <= v74 || *(&v108 + 1) > v74)
              {
                v82 = v76 + v73;
                v83 = v75 - v76;
                v84 = v74 - v76;
                v85 = v84 + 64;
                if (v84 + 64 >= v108)
                {
                  v85 = v108;
                }

                *(&v108 + 1) = v84;
                v109 = v85;
                if (v108 >= v83)
                {
                  v77 = v83;
                }

                v126.location = v84 + *(&v107 + 1);
                v126.length = v77 + v82;
                CFStringGetCharacters(v106[0], v126, buffer);
                v80 = *(&v108 + 1);
              }

              v78 = &buffer[-v80];
LABEL_176:
              v79 = v78[v74];
            }

            v114 = v79;
            if ((v21 & (v79 == 34)) == 1)
            {
              CFStringAppend(Mutable, @"\\"");
            }
          }

          CFStringAppendCharacters(Mutable, &v114, 1);
          ++v74;
          --v73;
          ++v75;
          if (v89 != v74)
          {
            continue;
          }

          break;
        }

        if (v21)
        {
          CFStringAppend(Mutable, @"");
        }

        v86 = [(__CFString *)Mutable mf_encodedHeaderDataWithEncodingHint:0xFFFFFFFFLL];
        [(MFMutableData *)v16 appendData:v86];

LABEL_197:
        [(NSMutableData *)v16 mf_appendCString:" "];
        v127.length = CFStringGetLength(Mutable);
        v127.location = 0;
        CFStringDelete(Mutable, v127);
LABEL_49:
        if (v17 > v23)
        {
          v31 = 0;
          v32 = 0;
          v33 = v23;
          while (1)
          {
            v34 = v108;
            if (v108 <= v33)
            {
              chars = 0;
            }

            else
            {
              if (v106[1])
              {
                v35 = *(&v106[1]->isa + *(&v107 + 1) + v33);
              }

              else if (v107)
              {
                v35 = *(v107 + *(&v107 + 1) + v33);
              }

              else
              {
                v36 = *(&v108 + 1);
                if (v109 <= v33 || *(&v108 + 1) > v33)
                {
                  v38 = v33 - 4;
                  if (v23 < 4)
                  {
                    v38 = 0;
                  }

                  if (v38 + 64 < v108)
                  {
                    v34 = v38 + 64;
                  }

                  *(&v108 + 1) = v38;
                  v109 = v34;
                  v120.length = v34 - v38;
                  v120.location = *(&v107 + 1) + v38;
                  CFStringGetCharacters(v106[0], v120, buffer);
                  v36 = *(&v108 + 1);
                }

                v35 = buffer[v33 - v36];
              }

              chars = v35;
              if (v35 == 92)
              {
                v39 = v23 + 1;
                if (v17 > v39)
                {
                  v40 = v108;
                  if (v108 <= v39)
                  {
                    v41 = 0;
                  }

                  else if (v106[1])
                  {
                    v41 = *(&v106[1]->isa + *(&v107 + 1) + v39);
                  }

                  else if (v107)
                  {
                    v41 = *(v107 + *(&v107 + 1) + v39);
                  }

                  else
                  {
                    if (v109 <= v39 || (v45 = *(&v108 + 1), *(&v108 + 1) > v39))
                    {
                      v46 = v39 - 4;
                      if (v39 < 4)
                      {
                        v46 = 0;
                      }

                      if (v46 + 64 < v108)
                      {
                        v40 = v46 + 64;
                      }

                      *(&v108 + 1) = v46;
                      v109 = v40;
                      v123.length = v40 - v46;
                      v123.location = *(&v107 + 1) + v46;
                      CFStringGetCharacters(v106[0], v123, buffer);
                      v45 = *(&v108 + 1);
                    }

                    v41 = buffer[v39 - v45];
                  }

                  chars = v41;
                  ++v23;
                }
              }

              else if (v35 == 34 && v32 == 0)
              {
                v32 = 0;
                v31 ^= 1u;
              }

              else
              {
                if (!((v35 != 40) | v31 & 1))
                {
                  if (v32 < 1)
                  {
                    [(__CFString *)Mutable dataUsingEncoding:4 allowLossyConversion:0];
                  }

                  else
                  {
                    [(__CFString *)Mutable mf_encodedHeaderDataWithEncodingHint:0xFFFFFFFFLL];
                  }
                  v44 = ;
                  [(MFMutableData *)v16 appendData:v44];

                  v122.length = CFStringGetLength(Mutable);
                  v122.location = 0;
                  CFStringDelete(Mutable, v122);
                  -[NSMutableData mf_appendCString:](v16, "mf_appendCString:", "(");
                  v31 = 0;
                  ++v32;
                  goto LABEL_56;
                }

                if (!((v35 != 41) | v31 & 1) && v32 >= 1)
                {
                  v43 = [(__CFString *)Mutable mf_encodedHeaderDataWithEncodingHint:0xFFFFFFFFLL];
                  [(MFMutableData *)v16 appendData:v43];

                  v121.length = CFStringGetLength(Mutable);
                  v121.location = 0;
                  CFStringDelete(Mutable, v121);
                  v31 = 0;
                  --v32;
                }
              }
            }

            CFStringAppendCharacters(Mutable, &chars, 1);
LABEL_56:
            v33 = ++v23;
            if (v17 <= v23)
            {
              goto LABEL_101;
            }
          }
        }

        v32 = 0;
        v31 = 0;
LABEL_101:
        if (CFStringGetLength(Mutable))
        {
          if (v32 < 1)
          {
            [(__CFString *)Mutable dataUsingEncoding:4 allowLossyConversion:0];
          }

          else
          {
            [(__CFString *)Mutable mf_encodedHeaderDataWithEncodingHint:0xFFFFFFFFLL];
          }
          v47 = ;
          [(MFMutableData *)v16 appendData:v47];
        }

        if (v31)
        {
          [(NSMutableData *)v16 mf_appendCString:""];
        }

        v48 = v32 + 1;
        while (--v48 >= 1)
        {
          [(NSMutableData *)v16 mf_appendCString:"]");
        }

        CFRelease(Mutable);

        v49 = [(MFMutableData *)v16 length];
        if ([(MFMutableData *)v95 length])
        {
          if (v49 <= v96)
          {
            [(MFMutableData *)v95 appendBytes:" length:", 2];
          }

          else
          {
            [(MFMutableData *)v95 appendBytes:" length:\n ", 3];
            v96 = lengthCopy;
          }
        }

        [(MFMutableData *)v95 appendData:v16];
        v50 = v96 - v49;
        if (v96 < v49)
        {
          v50 = 0;
        }

        v96 = v50;
      }

      v9 = [obj countByEnumeratingWithState:&v110 objects:v116 count:16];
    }

    while (v9);
  }

  v87 = *MEMORY[0x1E69E9840];

  return v95;
}

- (id)_copyAddressListForKey:(id)key
{
  keyCopy = key;
  if (self->_preferredEncoding == -1)
  {
    self->_preferredEncoding = [(MFMessageHeaders *)self _contentTypeEncoding];
  }

  v8 = 0;
  v5 = [(MFMessageHeaders *)self _copyHeaderValueForKey:keyCopy offset:&v8 decoded:0];
  v6 = [objc_opt_class() copyAddressListFromEncodedData:v5 encoding:self->_preferredEncoding];

  return v6;
}

- (id)firstSenderAddress
{
  v2 = [(MFMessageHeaders *)self _copyAddressListForKey:*MEMORY[0x1E699B0E0]];
  if ([v2 count])
  {
    v3 = [v2 objectAtIndexedSubscript:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)senderForUnsubscribeMessage
{
  copyAddressListForTo = [(MFMessageHeaders *)self copyAddressListForTo];
  if ([copyAddressListForTo count])
  {
    v3 = [copyAddressListForTo objectAtIndexedSubscript:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_commaSeparatedValuesForKey:(id)key includeAngleBracket:(BOOL)bracket
{
  bracketCopy = bracket;
  keyCopy = key;
  v5 = [(MFMessageHeaders *)self copyFirstHeaderForKey:keyCopy];
  v42 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v40 = v6;
  v41 = v6;
  v38 = v6;
  *theString = v6;
  v36 = v6;
  v37 = v6;
  v34 = v6;
  v35 = v6;
  v32 = v6;
  v33 = v6;
  *buffer = v6;
  v7 = [(__CFString *)v5 length];
  v8 = v7;
  if (v7)
  {
    theString[0] = v5;
    *(&v40 + 1) = 0;
    *&v41 = v7;
    theString[1] = CFStringGetCharactersPtr(v5);
    if (theString[1])
    {
      CStringPtr = 0;
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(v5, 0x600u);
    }

    v12 = 0;
    array = 0;
    v13 = 0;
    *(&v41 + 1) = 0;
    v42 = 0;
    v14 = 64;
    *&v40 = CStringPtr;
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      if (v13 >= 4)
      {
        v16 = 4;
      }

      else
      {
        v16 = v13;
      }

      if (v13 < 0 || (v17 = v41, v41 <= v13))
      {
        v19 = 0;
      }

      else
      {
        if (theString[1])
        {
          v18 = theString[1] + *(&v40 + 1);
LABEL_17:
          v19 = v18[v13];
          goto LABEL_19;
        }

        if (!v40)
        {
          if (v42 <= v13 || (v23 = *(&v41 + 1), *(&v41 + 1) > v13))
          {
            v24 = -v16;
            v25 = v16 + v12;
            v26 = v14 - v16;
            v27 = v13 + v24;
            v28 = v27 + 64;
            if (v27 + 64 >= v41)
            {
              v28 = v41;
            }

            *(&v41 + 1) = v27;
            v42 = v28;
            if (v41 >= v26)
            {
              v17 = v26;
            }

            v44.location = v27 + *(&v40 + 1);
            v44.length = v17 + v25;
            CFStringGetCharacters(theString[0], v44, buffer);
            v23 = *(&v41 + 1);
          }

          v18 = &buffer[-v23];
          goto LABEL_17;
        }

        v19 = *(v40 + *(&v40 + 1) + v13);
      }

LABEL_19:
      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v19 == 60)
        {
          v15 = v13;
        }

        else
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        goto LABEL_30;
      }

      if (v19 == 62)
      {
        if (bracketCopy)
        {
          v20 = v13 - v15 + 1;
          if (!array)
          {
LABEL_28:
            array = [MEMORY[0x1E695DF70] array];
          }
        }

        else
        {
          v21 = ~v15++;
          v20 = v13 + v21;
          if (!array)
          {
            goto LABEL_28;
          }
        }

        v22 = [(__CFString *)v5 substringWithRange:v15, v20];
        [array addObject:v22];

        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

LABEL_30:
      ++v13;
      --v12;
      ++v14;
      if (v8 == v13)
      {
        goto LABEL_5;
      }
    }
  }

  array = 0;
LABEL_5:

  return array;
}

- (id)firstHeaderForKey:(id)key
{
  v5 = 0;
  v3 = [(MFMessageHeaders *)self _headerValueForKey:key offset:&v5];

  return v3;
}

- (id)firstAddressForKey:(id)key
{
  v3 = [(MFMessageHeaders *)self firstHeaderForKey:key];

  return v3;
}

- (id)copyFirstNonDecodedHeaderForKey:(id)key
{
  keyCopy = key;
  v7 = 0;
  v5 = [(MFMessageHeaders *)self _copyHeaderValueForKey:keyCopy offset:&v7 decoded:0];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __assert_rtn("[MFMessageHeaders copyFirstNonDecodedHeaderForKey:]", "MessageHeaders.m", 629, "!result || [result isKindOfClass:[NSData class]]");
    }
  }

  return v5;
}

- (id)copyFirstStringValueForKey:(id)key
{
  v4 = [(MFMessageHeaders *)self copyFirstHeaderForKey:key];
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:{-[MFMessageHeaders preferredEncoding](self, "preferredEncoding")}];
  }

  return v5;
}

- (id)_decodeHeaderKeysFromData:(id)data
{
  array = [MEMORY[0x1E695DF70] array];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__MFMessageHeaders__decodeHeaderKeysFromData___block_invoke;
  v7[3] = &unk_1E8454E30;
  v5 = array;
  v8 = v5;
  [(MFMessageHeaders *)self enumerateKeysAndBytesUsingBlock:v7];

  return v5;
}

void __46__MFMessageHeaders__decodeHeaderKeysFromData___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 lowercaseString];
  [v2 addObject:?];
}

- (void)appendHeaderData:(id)data andRecipients:(id)recipients
{
  v66 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  recipientsCopy = recipients;
  allHeaderKeys = [(MFMessageHeaders *)self allHeaderKeys];
  v53 = [allHeaderKeys count];
  v46 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v47 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v48 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v42 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if (v53)
  {
    v6 = 0;
    v55 = 0;
    v51 = *MEMORY[0x1E699B088];
    v50 = *MEMORY[0x1E699B180];
    v45 = *MEMORY[0x1E699B098];
    v49 = *MEMORY[0x1E699B170];
    v44 = *MEMORY[0x1E699B158];
    v7 = 0x1E695D000uLL;
    v43 = *MEMORY[0x1E699B0E0];
    v41 = *MEMORY[0x1E699B160];
    v40 = *MEMORY[0x1E699B150];
    selfCopy = self;
    while (1)
    {
      v8 = [allHeaderKeys objectAtIndex:{v6, v40}];
      v9 = [v8 isEqualToString:v51];
      v10 = ([v8 isEqualToString:v50] & 1) != 0 ? 1 : objc_msgSend(v8, "isEqualToString:", v45);
      if ([v8 isEqualToString:v49])
      {
        break;
      }

      v11 = [v8 isEqualToString:v44];
      if ((v9 | v10 | v11))
      {
        goto LABEL_12;
      }

      if ([v8 isEqualToString:v43] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", v41))
      {
        v11 = 0;
LABEL_12:
        v57 = 1;
        if ((v9 & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_14;
      }

      v57 = [v8 isEqualToString:v40];
      v11 = 0;
      if ((v9 & 1) == 0)
      {
LABEL_13:
        if ([v8 isEqualToString:@"from "])
        {
          goto LABEL_42;
        }
      }

LABEL_14:
      v12 = [(MFMessageHeaders *)self _capitalizedKeyForKey:v8];
      v54 = v8;
      v13 = [(MFMessageHeaders *)self headersForKey:v8];
      v14 = [v13 count];
      if (v14)
      {
        v15 = 0;
        v58 = v10 | v11 | v9;
        v16 = v47;
        if (!v11)
        {
          v16 = v48;
        }

        if (v10)
        {
          v17 = v46;
        }

        else
        {
          v17 = v16;
        }

        while (1)
        {
          v18 = [v13 objectAtIndex:v15];
          v19 = *(v7 + 3824);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            break;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = v18;
            v22 = v24;
            if (v57)
            {
              __assert_rtn("[MFMessageHeaders appendHeaderData:andRecipients:]", "MessageHeaders.m", 1054, "0 && We have already decoded this, so we can't actually grab the address here.");
            }

            if (v24)
            {
              v25 = v9;
            }

            else
            {
              v25 = 1;
            }

            if (v25)
            {
              v20 = 0;
            }

            else
            {
              v20 = [v24 mf_encodedHeaderDataWithEncodingHint:0xFFFFFFFFLL];
            }

LABEL_33:

LABEL_34:
            v7 = 0x1E695D000;
LABEL_35:
            if (v20)
            {
              v26 = v9;
            }

            else
            {
              v26 = 1;
            }

            if ((v26 & 1) == 0)
            {
              [dataCopy mf_appendCString:{objc_msgSend(v12, "ef_lossyDefaultCStringBytes")}];
              [dataCopy appendBytes:": " length:2];
              [dataCopy appendData:v20];
              [dataCopy appendBytes:"\n" length:1];
            }

            goto LABEL_40;
          }

          v20 = 0;
LABEL_40:

          if (v14 == ++v15)
          {
            goto LABEL_41;
          }
        }

        v20 = v18;
        if (v58)
        {
          v21 = v17;
          if (v17)
          {
            v22 = v21;
            v23 = [objc_opt_class() copyAddressListFromEncodedData:v20 encoding:134217984];
            [v22 addObjectsFromArray:v23];

            goto LABEL_33;
          }

          goto LABEL_34;
        }

        goto LABEL_35;
      }

LABEL_41:

      v8 = v54;
      self = selfCopy;
LABEL_42:

      v6 = ++v55;
      if (v53 <= v55)
      {
        goto LABEL_46;
      }
    }

    v11 = 1;
    goto LABEL_12;
  }

LABEL_46:
  [dataCopy appendBytes:"\n" length:1];
  if ([v47 count])
  {
    allObjects = [v47 allObjects];
    [v42 addObjectsFromArray:allObjects];
  }

  else
  {
    if (![v46 count])
    {
      goto LABEL_51;
    }

    allObjects = [v46 allObjects];
    [v42 addObjectsFromArray:allObjects];
  }

LABEL_51:
  if ([v48 count])
  {
    allObjects2 = [v48 allObjects];
    [v42 addObjectsFromArray:allObjects2];
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v29 = v42;
  v30 = [v29 countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (v30)
  {
    v31 = *v62;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v62 != v31)
        {
          objc_enumerationMutation(v29);
        }

        v33 = *(*(&v61 + 1) + 8 * i);
        emailAddressValue = [v33 emailAddressValue];
        simpleAddress = [emailAddressValue simpleAddress];
        v36 = simpleAddress;
        if (simpleAddress)
        {
          stringValue = simpleAddress;
        }

        else
        {
          stringValue = [v33 stringValue];
        }

        v38 = stringValue;

        [recipientsCopy addObject:v38];
      }

      v30 = [v29 countByEnumeratingWithState:&v61 objects:v65 count:16];
    }

    while (v30);
  }

  v39 = *MEMORY[0x1E69E9840];
}

+ (id)uniqueHeaderKeyStringForString:(id)string
{
  stringCopy = string;
  v4 = *MEMORY[0x1E699B0E0];
  if (![stringCopy caseInsensitiveCompare:*MEMORY[0x1E699B0E0]] || (v4 = *MEMORY[0x1E699B178], v5 = stringCopy, !objc_msgSend(stringCopy, "caseInsensitiveCompare:", *MEMORY[0x1E699B178])))
  {
    v5 = v4;
  }

  return v5;
}

- (id)messageIDListForKey:(id)key
{
  v3 = [(MFMessageHeaders *)self headersForKey:key];

  return v3;
}

- (id)firstMessageIDForKey:(id)key
{
  v3 = [(MFMessageHeaders *)self firstHeaderForKey:key];

  return v3;
}

- (void)copyDecodedStringFromHeaderData:(uint64_t)a3 withRange:(os_log_t)log .cold.1(char a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a3;
  *(buf + 6) = 1024;
  *(buf + 14) = a1 & 1;
  _os_log_fault_impl(&dword_1D36B2000, log, OS_LOG_TYPE_FAULT, "MFMessageHeaders::copyDecodedStringFromHeaderData invalid data, [data:%p] [data.isNSData:%i]", buf, 0x12u);
}

@end