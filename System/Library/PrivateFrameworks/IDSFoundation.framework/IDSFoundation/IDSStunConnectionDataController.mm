@interface IDSStunConnectionDataController
+ (id)sharedInstance;
- (id)candidatesFromData:(id)data token:(id)token;
- (id)dataFromCandidates:(id)candidates token:(id)token remoteDeviceVersion:(unsigned int)version;
- (unint64_t)deliveryStatus:(id)status;
- (void)removeData:(id)data;
- (void)setDeliveryStatus:(id)status status:(unint64_t)a4;
@end

@implementation IDSStunConnectionDataController

+ (id)sharedInstance
{
  if (qword_1ED5DF6E8 != -1)
  {
    sub_1A7E1F520();
  }

  v3 = qword_1ED5DF738;

  return v3;
}

- (id)dataFromCandidates:(id)candidates token:(id)token remoteDeviceVersion:(unsigned int)version
{
  v87 = *MEMORY[0x1E69E9840];
  candidatesCopy = candidates;
  key = token;
  selfCopy = self;
  if (key)
  {
    tokenToConnectionData = self->_tokenToConnectionData;
    if (tokenToConnectionData)
    {
      v8 = CFDictionaryGetValue(tokenToConnectionData, key);
      if (v8)
      {
        v9 = v8;
        goto LABEL_121;
      }
    }
  }

  theArray = objc_alloc_init(MEMORY[0x1E695DF70]);
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v86[31] = v10;
  v86[30] = v10;
  v86[29] = v10;
  v86[28] = v10;
  v86[27] = v10;
  v86[26] = v10;
  v86[25] = v10;
  v86[24] = v10;
  v86[23] = v10;
  v86[22] = v10;
  v86[21] = v10;
  v86[20] = v10;
  v86[19] = v10;
  v86[18] = v10;
  v86[17] = v10;
  v86[16] = v10;
  v86[15] = v10;
  v86[14] = v10;
  v86[13] = v10;
  v86[12] = v10;
  v86[11] = v10;
  v86[10] = v10;
  v86[9] = v10;
  v86[8] = v10;
  v86[7] = v10;
  v86[6] = v10;
  v86[5] = v10;
  v86[4] = v10;
  v86[3] = v10;
  v86[2] = v10;
  v86[1] = v10;
  v86[0] = v10;
  __src[31] = v10;
  __src[30] = v10;
  __src[29] = v10;
  __src[28] = v10;
  __src[27] = v10;
  __src[26] = v10;
  __src[25] = v10;
  __src[24] = v10;
  __src[23] = v10;
  __src[22] = v10;
  __src[21] = v10;
  __src[20] = v10;
  __src[19] = v10;
  __src[18] = v10;
  __src[17] = v10;
  __src[16] = v10;
  __src[15] = v10;
  __src[14] = v10;
  __src[13] = v10;
  __src[12] = v10;
  __src[11] = v10;
  __src[10] = v10;
  __src[9] = v10;
  __src[8] = v10;
  __src[7] = v10;
  __src[6] = v10;
  __src[5] = v10;
  __src[4] = v10;
  __src[3] = v10;
  __src[2] = v10;
  __src[1] = v10;
  __src[0] = v10;
  memset(__b, 170, sizeof(__b));
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = candidatesCopy;
  v70 = [obj countByEnumeratingWithState:&v72 objects:v83 count:16];
  v71 = __src;
  v67 = v86;
  if (!v70)
  {
    LODWORD(v69) = 0;
    v61 = 0;
    goto LABEL_84;
  }

  v69 = 0;
  v11 = 0;
  v61 = 0;
  v64 = *v73;
  for (i = *v73; ; i = *v73)
  {
    if (i != v64)
    {
      v13 = v11;
      objc_enumerationMutation(obj);
      v11 = v13;
    }

    v68 = v11;
    v14 = *(*(&v72 + 1) + 8 * v11);
    type = [v14 type];
    if (type)
    {
      external = [v14 external];
      if (type >= 3)
      {
        v17 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v77 = v14;
          _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "skip candidate %@ due to invalid type.", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v56 = v14;
            _IDSLogTransport(@"GL", @"IDS", @"skip candidate %@ due to invalid type.");
            if (_IDSShouldLog())
            {
              v56 = v14;
              _IDSLogV(0, @"IDSFoundation", @"GL", @"skip candidate %@ due to invalid type.");
            }
          }
        }

LABEL_64:
        v34 = v69;
        v35 = v71;
        goto LABEL_65;
      }

      address = external;
      v19 = *(external + 1);
      if (type == 1 && !IsValidSA(external))
      {
        v36 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v77 = v14;
          _os_log_impl(&dword_1A7AD9000, v36, OS_LOG_TYPE_DEFAULT, "skip candidate %@ with invalid external address.", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v56 = v14;
            _IDSLogTransport(@"GL", @"IDS", @"skip candidate %@ with invalid external address.");
            if (_IDSShouldLog())
            {
              v56 = v14;
              _IDSLogV(0, @"IDSFoundation", @"GL", @"skip candidate %@ with invalid external address.");
            }
          }
        }

        goto LABEL_64;
      }
    }

    else
    {
      address = [v14 address];
      v19 = *(address + 1);
    }

    if (v19 == 2)
    {
      v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(address + 4)];
      v63 = 0;
    }

    else
    {
      v20 = [MEMORY[0x1E695DEF0] dataWithBytes:address + 8 length:16];
      v63 = 0x8000;
    }

    v21 = *(address + 2);
    if ([v14 active])
    {
      v22 = 0x4000;
    }

    else
    {
      v22 = 0;
    }

    radioAccessTechnology = [v14 radioAccessTechnology];
    v24 = radioAccessTechnology;
    if (radioAccessTechnology == 9 && version < 3)
    {
      v26 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v26, OS_LOG_TYPE_DEFAULT, "RATType Wired -> NonCell due to remote version", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"RATType Wired -> NonCell due to remote version");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"RATType Wired -> NonCell due to remote version");
          }
        }
      }

      v24 = 0;
    }

    linkFlags = [v14 linkFlags];
    v28 = [(__CFArray *)theArray indexOfObject:v20];
    if (v28 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

LABEL_50:
    if (v86 - v71 <= 3)
    {
      v37 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v77 = v14;
        _os_log_impl(&dword_1A7AD9000, v37, OS_LOG_TYPE_DEFAULT, "candidate buffer full, candidate: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"candidate buffer full, candidate: %@");
          if (_IDSShouldLog())
          {
            v38 = @"candidate buffer full, candidate: %@";
LABEL_82:
            _IDSLogV(0, @"IDSFoundation", @"GL", v38);
            goto LABEL_83;
          }
        }
      }

      goto LABEL_83;
    }

    v33 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v77 = v14;
      *&v77[8] = 2048;
      *v78 = v28;
      _os_log_impl(&dword_1A7AD9000, v33, OS_LOG_TYPE_DEFAULT, "candidate %@, ip_index [%lu]", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v56 = v14;
        v57 = v28;
        _IDSLogTransport(@"GL", @"IDS", @"candidate %@, ip_index [%lu]");
        if (_IDSShouldLog())
        {
          v56 = v14;
          v57 = v28;
          _IDSLogV(0, @"IDSFoundation", @"GL", @"candidate %@, ip_index [%lu]");
        }
      }
    }

    *v71 = bswap32(v28 & 0x1F | (32 * ([v14 transport] & 7)) | (type << 12)) >> 16;
    *(v71 + 1) = v21;

    v34 = (v69 + 1);
    v35 = v71 + 4;
LABEL_65:
    v11 = v68 + 1;
    v69 = v34;
    v71 = v35;
    if (v68 + 1 >= v70)
    {
      v70 = [obj countByEnumeratingWithState:&v72 objects:v83 count:16];
      if (!v70)
      {
        goto LABEL_84;
      }

      v11 = 0;
    }
  }

  v29 = 18;
  if (v19 == 2)
  {
    v29 = 6;
  }

  if (&v87 - v67 >= v29)
  {
    v28 = [(__CFArray *)theArray count];
    if (v20)
    {
      v30 = theArray != 0;
    }

    else
    {
      v30 = 0;
    }

    if (v30)
    {
      CFArrayAppendValue(theArray, v20);
    }

    ++v61;
    *v67 = ((linkFlags << 7) & 0x200 | ((v24 & 0xF) << 10) | v22 | v63) >> 8;
    v31 = v67 + 2;
    if (v19 == 2)
    {
      *(v67 + 2) = [v20 unsignedIntValue];
      v32 = v67 + 6;
    }

    else
    {
      [v20 getBytes:v31 length:16];
      v32 = v67 + 18;
    }

    v67 = v32;
    goto LABEL_50;
  }

  v39 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v77 = v14;
    _os_log_impl(&dword_1A7AD9000, v39, OS_LOG_TYPE_DEFAULT, "IP buffer full, candidate: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"IP buffer full, candidate: %@");
      if (_IDSShouldLog())
      {
        v38 = @"IP buffer full, candidate: %@";
        goto LABEL_82;
      }
    }
  }

LABEL_83:

LABEL_84:
  v40 = v67 - v86;
  if ((v67 - v86) - 1451 <= 0xFFFFFA55)
  {
    v41 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v77 = v67 - v86;
      _os_log_impl(&dword_1A7AD9000, v41, OS_LOG_TYPE_DEFAULT, "invalid buffer length for IP list (%d).", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"invalid buffer length for IP list (%d).");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"invalid buffer length for IP list (%d).");
        }
      }
    }

    goto LABEL_119;
  }

  v42 = v71 - __src;
  if ((v71 - __src) - 1451 <= 0xFFFFFA55)
  {
    v43 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v77 = v71 - __src;
      _os_log_impl(&dword_1A7AD9000, v43, OS_LOG_TYPE_DEFAULT, "invalid buffer length for candidate list (%d).", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"invalid buffer length for candidate list (%d).");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"invalid buffer length for candidate list (%d).");
        }
      }
    }

    goto LABEL_119;
  }

  if (v42 + v40 + 2 >= 0x5AB)
  {
    v44 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v77 = v67 - v86;
      *&v77[4] = 1024;
      *&v77[6] = v71 - __src;
      _os_log_impl(&dword_1A7AD9000, v44, OS_LOG_TYPE_DEFAULT, "invalid total buffer length: %d %d", buf, 0xEu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"invalid total buffer length: %d %d");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"invalid total buffer length: %d %d");
        }
      }
    }

    goto LABEL_119;
  }

  if (v61 >= 32)
  {
    v45 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v77 = v61;
      _os_log_impl(&dword_1A7AD9000, v45, OS_LOG_TYPE_DEFAULT, "IP list reached max number (%u).", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"IP list reached max number (%u).");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"IP list reached max number (%u).");
        }
      }
    }

    goto LABEL_119;
  }

  if (v69 < 64)
  {
    __b[0] = bswap32(v69 | (v61 << 6) | 0x2000) >> 16;
    __memcpy_chk();
    v48 = &__b[1] + v40;
    memcpy(v48, __src, v42);
    v49 = &v48[v42] - __b;
    v50 = [MEMORY[0x1E695DEF0] dataWithBytes:__b length:v49];
    v51 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413314;
      *v77 = key;
      *&v77[8] = 1024;
      *v78 = 1;
      *&v78[4] = 1024;
      *&v78[6] = v61;
      v79 = 1024;
      v80 = v69;
      v81 = 1024;
      v82 = v49;
      _os_log_impl(&dword_1A7AD9000, v51, OS_LOG_TYPE_DEFAULT, "new connection data for %@ (V:%1d #IP:%d #CAN:%d LEN:%dB).", buf, 0x24u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"new connection data for %@ (V:%1d #IP:%d #CAN:%d LEN:%dB).");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"new connection data for %@ (V:%1d #IP:%d #CAN:%d LEN:%dB).");
        }
      }
    }

    v52 = selfCopy;
    if (!selfCopy->_tokenToConnectionData)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v54 = selfCopy->_tokenToConnectionData;
      selfCopy->_tokenToConnectionData = Mutable;

      v52 = selfCopy;
    }

    v55 = v50;
    if (v55)
    {
      CFDictionarySetValue(v52->_tokenToConnectionData, key, v55);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1F534();
    }

    v9 = v55;
  }

  else
  {
    v46 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v77 = v69;
      _os_log_impl(&dword_1A7AD9000, v46, OS_LOG_TYPE_DEFAULT, "reached max number of candidate: %u.", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"reached max number of candidate: %u.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"reached max number of candidate: %u.");
        }
      }
    }

LABEL_119:
    v9 = 0;
  }

LABEL_121:

  return v9;
}

- (id)candidatesFromData:(id)data token:(id)token
{
  v81 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  tokenCopy = token;
  v6 = [dataCopy length];
  bytes = [dataCopy bytes];
  v66 = dataCopy;
  v8 = [dataCopy length];
  if (v8 > 1)
  {
    v11 = v8;
    v13 = *bytes;
    v12 = bytes + 1;
    v14 = bswap32(v13);
    v15 = v14 >> 29;
    v16 = HIWORD(v14) & 0x1000;
    v70 = (v14 >> 22) & 0x1F;
    v67 = HIWORD(v14) & 0x3F;
    v63 = v6;
    v17 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110146;
      *&buf[4] = v15;
      *&buf[8] = 1024;
      *&buf[10] = v16 >> 12;
      *&buf[14] = 1024;
      *&buf[16] = v70;
      *&buf[20] = 1024;
      *&buf[22] = v67;
      *&buf[26] = 2112;
      *&buf[28] = v66;
      _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "receive connection data (ver:%u ext:%d numIP:%d numCandidate:%d) %@.", buf, 0x24u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"receive connection data (ver:%u ext:%d numIP:%d numCandidate:%d) %@.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive connection data (ver:%u ext:%d numIP:%d numCandidate:%d) %@.");
        }
      }
    }

    theArray = objc_alloc_init(MEMORY[0x1E695DF70]);
    v68 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = v11 - 2;
    if (v70)
    {
      v19 = 0;
      v20 = 0;
      while (1)
      {
        v21 = v19;
        if (v18 <= 1)
        {
          break;
        }

        v22 = (v12 + 1);
        v23 = bswap32(*v12);
        v24 = v18 - 2;
        if ((v23 & 0x80000000) != 0)
        {
          if (v24 <= 0xF)
          {
            v60 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *&buf[4] = v20;
              _os_log_impl(&dword_1A7AD9000, v60, OS_LOG_TYPE_DEFAULT, "Error: connectionData is too short for IPv6 address, i = %d", buf, 8u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport(@"GL", @"IDS", @"Error: connectionData is too short for IPv6 address, i = %d");
                if (_IDSShouldLog())
                {
                  _IDSLogV(0, @"IDSFoundation", @"GL", @"Error: connectionData is too short for IPv6 address, i = %d");
                }
              }
            }

            goto LABEL_142;
          }

          v19 = [MEMORY[0x1E695DEF0] dataWithBytes:v22 length:16];
          v25 = -18;
          v26 = 18;
        }

        else
        {
          if (v24 <= 3)
          {
            v55 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *&buf[4] = v20;
              _os_log_impl(&dword_1A7AD9000, v55, OS_LOG_TYPE_DEFAULT, "Error: connectionData is too short for IPv4 address, i = %d", buf, 8u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport(@"GL", @"IDS", @"Error: connectionData is too short for IPv4 address, i = %d");
                if (_IDSShouldLog())
                {
                  _IDSLogV(0, @"IDSFoundation", @"GL", @"Error: connectionData is too short for IPv4 address, i = %d");
                }
              }
            }

            goto LABEL_142;
          }

          v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*v22];
          v25 = -6;
          v26 = 6;
        }

        if (v19)
        {
          v27 = theArray != 0;
        }

        else
        {
          v27 = 0;
        }

        if (v27)
        {
          CFArrayAppendValue(theArray, v19);
        }

        if (v68)
        {
          v28 = HIWORD(v23);
          v29 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v28];
          v30 = v29 == 0;

          if (!v30)
          {
            v31 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v28];
            CFArrayAppendValue(v68, v31);
          }
        }

        v12 = (v12 + v26);
        v18 += v25;
        if (v70 == ++v20)
        {
          goto LABEL_34;
        }
      }

      v54 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v20;
        _os_log_impl(&dword_1A7AD9000, v54, OS_LOG_TYPE_DEFAULT, "Error: connectionData is too short for header, i = %d", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"Error: connectionData is too short for header, i = %d");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"Error: connectionData is too short for header, i = %d");
          }
        }
      }

LABEL_142:
      v10 = 0;
      goto LABEL_143;
    }

    v19 = 0;
LABEL_34:
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v76 = 0u;
    memset(buf, 0, sizeof(buf));
    v64 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v67)
    {
      v32 = 0;
      while (v18 > 1)
      {
        if ((v18 & 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          v57 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            *v71 = 67109120;
            LODWORD(v72) = v32;
            _os_log_impl(&dword_1A7AD9000, v57, OS_LOG_TYPE_DEFAULT, "Error: connectionData is too short for port, i = %d", v71, 8u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"GL", @"IDS", @"Error: connectionData is too short for port, i = %d");
              if (_IDSShouldLog())
              {
                _IDSLogV(0, @"IDSFoundation", @"GL", @"Error: connectionData is too short for port, i = %d");
              }
            }
          }

          goto LABEL_134;
        }

        v33 = v12;
        v34 = bswap32(*v12) >> 16;
        if ((v34 & 0x1F) >= v70)
        {
          v39 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *v71 = 134218240;
            v72 = v34 & 0x1F;
            v73 = 1024;
            v74 = v70;
            _os_log_impl(&dword_1A7AD9000, v39, OS_LOG_TYPE_DEFAULT, "invalid ip_index (%lu >= %d).", v71, 0x12u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"GL", @"IDS", @"invalid ip_index (%lu >= %d).");
              if (_IDSShouldLog())
              {
                _IDSLogV(0, @"IDSFoundation", @"GL", @"invalid ip_index (%lu >= %d).");
              }
            }
          }
        }

        else
        {
          v35 = v12[1];
          0x1F = [(__CFArray *)theArray objectAtIndex:v34 & 0x1F];

          if (0x1F)
          {
            v37 = v34 >> 12;
            if (v34 < 0x4000)
            {
              v41 = v34 >> 5;
              if (v41 < 5)
              {
                0x1F2 = [(__CFArray *)v68 objectAtIndex:v34 & 0x1F];
                unsignedShortValue = [0x1F2 unsignedShortValue];

                if (unsignedShortValue < 0)
                {
                  memset(&buf[8], 0, 20);
                  *buf = 7708;
                  *&buf[2] = v35;
                  if ([0x1F length] <= 0xF)
                  {
                    v62 = OSLogHandleForTransportCategory();
                    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                    {
                      *v71 = 67109120;
                      LODWORD(v72) = v32;
                      _os_log_impl(&dword_1A7AD9000, v62, OS_LOG_TYPE_DEFAULT, "Error: connectionData is too short for sin6_addr.s6_addr, i = %d", v71, 8u);
                    }

                    if (os_log_shim_legacy_logging_enabled())
                    {
                      if (_IDSShouldLogTransport())
                      {
                        _IDSLogTransport(@"GL", @"IDS", @"Error: connectionData is too short for sin6_addr.s6_addr, i = %d");
                        if (_IDSShouldLog())
                        {
                          _IDSLogV(0, @"IDSFoundation", @"GL", @"Error: connectionData is too short for sin6_addr.s6_addr, i = %d");
                        }
                      }
                    }

                    v10 = 0;
                    v19 = 0x1F;
                    goto LABEL_135;
                  }

                  v46 = 0x1F;
                  *&buf[8] = *[0x1F bytes];
                  v45 = 1280;
                }

                else
                {
                  *&buf[8] = 0;
                  *buf = 528;
                  *&buf[2] = v35;
                  *&buf[4] = [0x1F unsignedLongValue];
                  v45 = 1450;
                }

                v47 = (unsignedShortValue >> 10) & 0xF;
                if (v45 >= 0x578)
                {
                  v48 = 1400;
                }

                else
                {
                  v48 = v45;
                }

                if (v47 == 9)
                {
                  v48 = v45;
                }

                if (v47)
                {
                  v49 = v48;
                }

                else
                {
                  v49 = v45;
                }

                if (v41 == 3)
                {
                  v50 = 896;
                }

                else
                {
                  v50 = 0;
                }

                if (v41 == 2)
                {
                  v50 = 4;
                }

                if ((unsignedShortValue & 0x8000u) == 0)
                {
                  v51 = 1;
                }

                else
                {
                  v51 = 2;
                }

                v52 = [IDSStunCandidate candidateWithType:v37 transport:v41 radioAccessTechnology:v47 mtu:(v49 - GLUtilGetLinkOverhead(v51 | v50)) index:0xFFFFFFFFLL address:buf external:buf];
                [v52 setActive:(unsignedShortValue >> 14) & 1];
                if ((unsignedShortValue & 0x200) != 0)
                {
                  [v52 setLinkFlags:4];
                }

                if (v64 && v52)
                {
                  CFArrayAppendValue(v64, v52);
                }

                v53 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                {
                  *v71 = 138412290;
                  v72 = v52;
                  _os_log_impl(&dword_1A7AD9000, v53, OS_LOG_TYPE_DEFAULT, "receive remote candidate %@.", v71, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    _IDSLogTransport(@"GL", @"IDS", @"receive remote candidate %@.");
                    if (_IDSShouldLog())
                    {
                      _IDSLogV(0, @"IDSFoundation", @"GL", @"receive remote candidate %@.");
                    }
                  }
                }
              }

              else
              {
                v42 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                {
                  *v71 = 134217984;
                  v72 = v34 >> 5;
                  _os_log_impl(&dword_1A7AD9000, v42, OS_LOG_TYPE_DEFAULT, "candidatesFromData: transport is invalid: %lu.", v71, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    _IDSLogTransport(@"GL", @"IDS", @"candidatesFromData: transport is invalid: %lu.");
                    if (_IDSShouldLog())
                    {
                      _IDSLogV(0, @"IDSFoundation", @"GL", @"candidatesFromData: transport is invalid: %lu.");
                    }
                  }
                }
              }
            }

            else
            {
              v38 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
              {
                *v71 = 134217984;
                v72 = v34 >> 12;
                _os_log_impl(&dword_1A7AD9000, v38, OS_LOG_TYPE_DEFAULT, "candidatesFromData: IDSStunCandidateType is invalid: %lu.", v71, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  _IDSLogTransport(@"GL", @"IDS", @"candidatesFromData: IDSStunCandidateType is invalid: %lu.");
                  if (_IDSShouldLog())
                  {
                    _IDSLogV(0, @"IDSFoundation", @"GL", @"candidatesFromData: IDSStunCandidateType is invalid: %lu.");
                  }
                }
              }
            }

            v19 = 0x1F;
          }

          else
          {
            v40 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              *v71 = 134217984;
              v72 = v34 & 0x1F;
              _os_log_impl(&dword_1A7AD9000, v40, OS_LOG_TYPE_DEFAULT, "found no ipAdderss at index %lu.", v71, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport(@"GL", @"IDS", @"found no ipAdderss at index %lu.");
                if (_IDSShouldLog())
                {
                  _IDSLogV(0, @"IDSFoundation", @"GL", @"found no ipAdderss at index %lu.");
                }
              }
            }

            v19 = 0;
          }
        }

        ++v32;
        v18 -= 4;
        v12 = v33 + 2;
        if (v67 == v32)
        {
          LODWORD(v12) = v33 + 4;
          goto LABEL_126;
        }
      }

      v56 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *v71 = 67109120;
        LODWORD(v72) = v32;
        _os_log_impl(&dword_1A7AD9000, v56, OS_LOG_TYPE_DEFAULT, "Error: connectionData is too short for candidateHeader, i = %d", v71, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"Error: connectionData is too short for candidateHeader, i = %d");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"Error: connectionData is too short for candidateHeader, i = %d");
          }
        }
      }
    }

    else
    {
LABEL_126:
      v58 = v66;
      if (v12 - [v66 bytes] == v63)
      {
        v10 = v64;
LABEL_135:

        v21 = v19;
LABEL_143:

        goto LABEL_144;
      }

      v59 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        *v71 = 67109120;
        LODWORD(v72) = v63;
        _os_log_impl(&dword_1A7AD9000, v59, OS_LOG_TYPE_DEFAULT, "invalid connection data length (%d).", v71, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"invalid connection data length (%d).");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"invalid connection data length (%d).");
          }
        }
      }
    }

LABEL_134:
    v10 = 0;
    goto LABEL_135;
  }

  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "Error: connectionData is too short for header", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"Error: connectionData is too short for header");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"Error: connectionData is too short for header");
      }
    }
  }

  v10 = 0;
LABEL_144:

  return v10;
}

- (unint64_t)deliveryStatus:(id)status
{
  Value = 0;
  if (status)
  {
    tokenToDeliveryStatus = self->_tokenToDeliveryStatus;
    if (tokenToDeliveryStatus)
    {
      Value = CFDictionaryGetValue(tokenToDeliveryStatus, status);
      v3 = vars8;
    }
  }

  return [Value unsignedIntegerValue];
}

- (void)setDeliveryStatus:(id)status status:(unint64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  if (statusCopy)
  {
    tokenToDeliveryStatus = self->_tokenToDeliveryStatus;
    if (tokenToDeliveryStatus)
    {
      tokenToDeliveryStatus = CFDictionaryGetValue(tokenToDeliveryStatus, statusCopy);
    }

    unsignedIntegerValue = [(__CFDictionary *)tokenToDeliveryStatus unsignedIntegerValue];
    if (unsignedIntegerValue != a4)
    {
      v9 = unsignedIntegerValue;
      if (!self->_tokenToDeliveryStatus)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v11 = self->_tokenToDeliveryStatus;
        self->_tokenToDeliveryStatus = Mutable;
      }

      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
      if (v12)
      {
        CFDictionarySetValue(self->_tokenToDeliveryStatus, statusCopy, v12);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_1A7E1F5BC();
      }

      v14 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v16 = statusCopy;
        v17 = 2048;
        v18 = v9;
        v19 = 2048;
        v20 = a4;
        _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "set connection data delivery status for %@ (%lu->%lu).", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"set connection data delivery status for %@ (%lu->%lu).");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"set connection data delivery status for %@ (%lu->%lu).");
          }
        }
      }
    }
  }

  else
  {
    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "set connection data delivery status failed due to invalid token.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"LC_GLOBALLINK", @"IDS", @"set connection data delivery status failed due to invalid token.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"LC_GLOBALLINK", @"set connection data delivery status failed due to invalid token.");
        }
      }
    }
  }
}

- (void)removeData:(id)data
{
  v11 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (dataCopy)
  {
    tokenToConnectionData = self->_tokenToConnectionData;
    if (tokenToConnectionData)
    {
      CFDictionaryRemoveValue(tokenToConnectionData, dataCopy);
    }

    tokenToDeliveryStatus = self->_tokenToDeliveryStatus;
    if (tokenToDeliveryStatus)
    {
      CFDictionaryRemoveValue(tokenToDeliveryStatus, dataCopy);
    }

    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = dataCopy;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "removed connection data for %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"removed connection data for %@.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"removed connection data for %@.");
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
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "remove connection data failed due to invalid token.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"LC_GLOBALLINK", @"IDS", @"remove connection data failed due to invalid token.");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"LC_GLOBALLINK", @"remove connection data failed due to invalid token.");
        }
      }
    }
  }
}

@end