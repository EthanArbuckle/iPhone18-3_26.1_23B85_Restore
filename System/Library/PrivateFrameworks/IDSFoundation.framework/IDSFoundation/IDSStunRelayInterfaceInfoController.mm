@interface IDSStunRelayInterfaceInfoController
+ (id)sharedInstance;
- (id)candidatePairsFromRelayInterfaceInfo:(char *)a3 bufferLength:(int)a4 token:(id)a5 sessionID:(id)a6 error:(int *)a7;
- (id)createRelayInterfaceInfoFromCandidatePairs:(id)a3 token:(id)a4;
- (unint64_t)relayInterfaceInfoDeliveryStatus:(id)a3;
- (void)removeCache:(id)a3;
- (void)setRelayInterfaceInfoDeliveryStatus:(id)a3 status:(unint64_t)a4;
@end

@implementation IDSStunRelayInterfaceInfoController

+ (id)sharedInstance
{
  if (qword_1ED5DF6D8 != -1)
  {
    sub_1A7E1D534();
  }

  v3 = qword_1ED5DF728;

  return v3;
}

- (id)createRelayInterfaceInfoFromCandidatePairs:(id)a3 token:(id)a4
{
  v72 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v44 = a4;
  memset(__b, 170, sizeof(__b));
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v5;
  v6 = 0x1E77DB000uLL;
  v51 = [obj countByEnumeratingWithState:&v54 objects:v70 count:16];
  if (v51)
  {
    v7 = 0;
    v8 = *v55;
    v9 = &__b[7];
    v10 = 1;
    v11 = 1022;
    v12 = *v55;
    while (1)
    {
      if (v12 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v53 = v7;
      v13 = *(*(&v54 + 1) + 8 * v7);
      v14 = [v13 local];
      v15 = [v14 type];

      v16 = [v13 local];
      v17 = v16;
      v18 = v15 ? [v16 external] : objc_msgSend(v16, "address");
      v19 = v18;

      if (v11 <= 11)
      {
        break;
      }

      v52 = v11;
      v20 = *(v19 + 1);
      v21 = ((v20 != 2) << 15) | (v15 << 11);
      v22 = [v13 local];
      v23 = v21 & 0xFFFFF87F | (([v22 transport] & 0xF) << 7);

      v24 = [v13 local];
      v25 = v23 & 0xFFFFFF87 | (8 * ([v24 radioAccessTechnology] & 0xF));

      *(v9 - 6) = bswap32(v25) >> 16;
      *(v9 - 5) = __rev16([v13 relayLinkID]);
      v26 = [v13 local];
      v27 = bswap32([v26 mtu]) >> 16;

      *(v9 - 4) = v27;
      v28 = [v13 local];
      LOWORD(v27) = __rev16([v28 linkFlags]);

      *(v9 - 3) = v27;
      v29 = +[IDSCellularLinkMonitor sharedInstance];
      v30 = [v29 dataSoMaskBits];

      *(v9 - 1) = bswap32(v30);
      v31 = [*(v6 + 2592) Stun];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v48 = [v13 local];
        v46 = [v48 transport];
        v47 = [v13 local];
        v32 = [v47 radioAccessTechnology];
        v45 = [v13 relayLinkID];
        [v13 local];
        v33 = v49 = v10;
        v34 = [v33 mtu];
        v35 = [v13 local];
        v36 = v8;
        v37 = [v35 linkFlags];
        v38 = +[IDSCellularLinkMonitor sharedInstance];
        v39 = [v38 dataSoMaskBits];
        *buf = 67110656;
        *v59 = v20;
        *&v59[4] = 2048;
        *&v59[6] = v46;
        v60 = 1024;
        v61 = v32;
        v6 = 0x1E77DB000;
        v62 = 1024;
        v63 = v45;
        v64 = 1024;
        v65 = v34;
        v66 = 1024;
        v67 = v37;
        v8 = v36;
        v68 = 1024;
        v69 = v39;
        _os_log_impl(&dword_1A7AD9000, v31, OS_LOG_TYPE_DEFAULT, "createRelayInterfaceInfoFromCandidatePairs: family: %d, transport: %ld, RAT: %u, relay LinkID: %04x, MTU: %u, linkFlags: 0x%x, dataSoMasks: 0x%x", buf, 0x30u);

        v10 = v49;
      }

      v7 = v53 + 1;
      if (v53 + 1 >= v51)
      {
        v51 = [obj countByEnumeratingWithState:&v54 objects:v70 count:16];
        if (!v51)
        {
          goto LABEL_20;
        }

        v7 = 0;
      }

      v12 = *v55;
      ++v10;
      v9 += 6;
      v11 = v52 - 12;
    }

    v40 = [*(v6 + 2592) Stun];
    v9 -= 6;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v59 = 2;
      _os_log_impl(&dword_1A7AD9000, v40, OS_LOG_TYPE_DEFAULT, "createRelayInterfaceInfoFromCandidatePairs: candidatePtrEnd - candidatePtr = %d < 12, break", buf, 8u);
    }

    v10 = 85;
  }

  else
  {
    v10 = 0;
    v9 = &__b[1];
  }

LABEL_20:

  __b[0] = bswap32(v10 | 0x2000) >> 16;
  v41 = [MEMORY[0x1E695DEF0] dataWithBytes:__b length:(v9 - __b)];
  v42 = [*(v6 + 2592) Stun];
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    *v59 = v44;
    *&v59[8] = 1024;
    *&v59[10] = 1;
    v60 = 1024;
    v61 = v10;
    v62 = 1024;
    v63 = v9 - __b;
    _os_log_impl(&dword_1A7AD9000, v42, OS_LOG_TYPE_DEFAULT, "new interfaceInformation for %@ (V:%1d #CAN:%d LEN:%dB).", buf, 0x1Eu);
  }

  return v41;
}

- (id)candidatePairsFromRelayInterfaceInfo:(char *)a3 bufferLength:(int)a4 token:(id)a5 sessionID:(id)a6 error:(int *)a7
{
  v63 = *MEMORY[0x1E69E9840];
  v11 = a5;
  v12 = a6;
  *a7 = 0;
  if (a4 > 1)
  {
    v15 = a3 + 2;
    v16 = bswap32(*a3);
    v17 = HIWORD(v16) & 0x1F;
    v18 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      *v50 = v16 >> 29;
      *&v50[4] = 1024;
      *&v50[6] = HIWORD(v16) & 0x1F;
      *v51 = 2112;
      *&v51[2] = v11;
      _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "receive interfaceInfo (ver:%u numCandidate:%d) for %@", buf, 0x18u);
    }

    theArray = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v17)
    {
      v43 = a7;
      v44 = v11;
      v42 = a4;
      v19 = a3;
      v20 = a4 - 2;
      v41 = v19;
      v21 = (v19 + 6);
      v45 = v12;
      while (1)
      {
        if (v20 <= 1)
        {
          v35 = +[IDSFoundationLog Stun];
          if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_29;
          }

          *buf = 67109120;
          *v50 = v20;
          v36 = "candidatePairsFromInterfaceInfo: remainingInterfaceInfoLength = %d < 2, break";
          goto LABEL_28;
        }

        if (v20 <= 0xB)
        {
          break;
        }

        v22 = bswap32(*(v21 - 2));
        v23 = HIWORD(v22);
        v24 = (v22 >> 23) & 0xF;
        if (v24 < 5)
        {
          v26 = (v22 >> 27) & 0xF;
          v27 = bswap32(*(v21 - 1)) >> 16;
          v28 = bswap32(*v21) >> 16;
          v47 = (v22 >> 19) & 0xF;
          v48 = bswap32(v21[1]) >> 16;
          v29 = bswap32(*(v21 + 1));
          v30 = +[IDSFoundationLog Stun];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138414082;
            v31 = @"YES";
            if ((v23 & 0x8000u) == 0)
            {
              v31 = @"NO";
            }

            *v50 = v31;
            *&v50[8] = 2048;
            *v51 = v26;
            *&v51[8] = 1024;
            v52 = v47;
            v53 = 2048;
            v54 = v24;
            v55 = 1024;
            v56 = v27;
            v57 = 1024;
            v58 = v28;
            v59 = 1024;
            v60 = v48;
            v61 = 1024;
            v62 = v29;
            _os_log_impl(&dword_1A7AD9000, v30, OS_LOG_TYPE_DEFAULT, "candidatePairsFromRelayInterfaceInfo: isIPv6: %@, type: %lu, RAT: %u, transport: %ld, relayLinkID: %04x, MTU: %u, linkFlags: 0x%x, dataSoMasks: 0x%x", buf, 0x3Eu);
          }

          v32 = v27;

          v25 = [IDSStunCandidate candidateWithType:v26 transport:v24 radioAccessTechnology:v47 mtu:v28 index:0xFFFFFFFFLL address:0 external:0];
          [v25 setDataSoMask:v29];
          [v25 setLinkFlags:v48];
          v33 = [IDSStunCandidate candidateWithType:3 transport:0 radioAccessTechnology:10 mtu:1280 index:0xFFFFFFFFLL address:0 external:0];
          v12 = v45;
          v34 = [IDSStunCandidatePair candidatePairWithLocalCandidate:v33 remoteCandidate:v25 sessionID:v45 delegate:0];
          [v34 setRelayLinkID:v32];
          if (theArray && v34)
          {
            CFArrayAppendValue(theArray, v34);
          }
        }

        else
        {
          v25 = +[IDSFoundationLog Stun];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *v50 = v24;
            _os_log_impl(&dword_1A7AD9000, v25, OS_LOG_TYPE_DEFAULT, "candidatePairsFromRelayInterfaceInfo: transport is invalid: %lu.", buf, 0xCu);
          }
        }

        v21 += 6;
        v20 -= 12;
        if (!--v17)
        {
          v15 = v21 - 4;
          a7 = v43;
          v11 = v44;
          a4 = v42;
          LODWORD(a3) = v41;
          goto LABEL_30;
        }
      }

      v35 = +[IDSFoundationLog Stun];
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      *buf = 67109120;
      *v50 = v20;
      v36 = "candidatePairsFromRelayInterfaceInfo: remainingInterfaceInfoLength = %d < 12, return";
LABEL_28:
      _os_log_impl(&dword_1A7AD9000, v35, OS_LOG_TYPE_DEFAULT, v36, buf, 8u);
LABEL_29:
      a7 = v43;
      v11 = v44;
      a4 = v42;
      LODWORD(a3) = v41;

      v15 = v21 - 4;
    }

LABEL_30:
    v37 = v15 - a3;
    if (v37 == a4)
    {
      v38 = theArray;
      v14 = theArray;
    }

    else
    {
      v39 = +[IDSFoundationLog Stun];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v50 = v37;
        *&v50[4] = 1024;
        *&v50[6] = a4;
        _os_log_impl(&dword_1A7AD9000, v39, OS_LOG_TYPE_DEFAULT, "invalid interfaceInfo data length: %d, not equal to InterfaceInfoLength: %d.", buf, 0xEu);
      }

      v14 = 0;
      *a7 = 1;
      v38 = theArray;
    }
  }

  else
  {
    v13 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v50 = a4;
      _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "candidatePairsFromInterfaceInfo: remainingInterfaceInfoLength = %d < 2, return nil", buf, 8u);
    }

    v14 = 0;
    *a7 = 1;
  }

  return v14;
}

- (unint64_t)relayInterfaceInfoDeliveryStatus:(id)a3
{
  Value = 0;
  if (a3)
  {
    tokenToRelayInterfaceInfoDeliveryStatus = self->_tokenToRelayInterfaceInfoDeliveryStatus;
    if (tokenToRelayInterfaceInfoDeliveryStatus)
    {
      Value = CFDictionaryGetValue(tokenToRelayInterfaceInfoDeliveryStatus, a3);
      v3 = vars8;
    }
  }

  return [Value unsignedIntegerValue];
}

- (void)setRelayInterfaceInfoDeliveryStatus:(id)a3 status:(unint64_t)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v13 = +[IDSFoundationLog Stun];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
LABEL_16:

      goto LABEL_17;
    }

    LOWORD(v17) = 0;
    v14 = "setRelayInterfaceInfoDeliveryStatus failed due to invalid token.";
    v15 = v13;
    v16 = 2;
LABEL_15:
    _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, v14, &v17, v16);
    goto LABEL_16;
  }

  tokenToRelayInterfaceInfoDeliveryStatus = self->_tokenToRelayInterfaceInfoDeliveryStatus;
  if (tokenToRelayInterfaceInfoDeliveryStatus)
  {
    tokenToRelayInterfaceInfoDeliveryStatus = CFDictionaryGetValue(tokenToRelayInterfaceInfoDeliveryStatus, v6);
  }

  v8 = [(__CFDictionary *)tokenToRelayInterfaceInfoDeliveryStatus unsignedIntegerValue];
  if (v8 != a4)
  {
    v9 = v8;
    if (!self->_tokenToRelayInterfaceInfoDeliveryStatus)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v11 = self->_tokenToRelayInterfaceInfoDeliveryStatus;
      self->_tokenToRelayInterfaceInfoDeliveryStatus = Mutable;
    }

    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    if (v12)
    {
      CFDictionarySetValue(self->_tokenToRelayInterfaceInfoDeliveryStatus, v6, v12);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1D548(v6);
    }

    v13 = +[IDSFoundationLog Stun];
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v17 = 138412802;
    v18 = v6;
    v19 = 2048;
    v20 = v9;
    v21 = 2048;
    v22 = a4;
    v14 = "setRelayInterfaceInfoDeliveryStatus for %@ (%lu->%lu).";
    v15 = v13;
    v16 = 32;
    goto LABEL_15;
  }

LABEL_17:
}

- (void)removeCache:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    tokenToRelayInterfaceInfoDeliveryStatus = self->_tokenToRelayInterfaceInfoDeliveryStatus;
    if (tokenToRelayInterfaceInfoDeliveryStatus)
    {
      CFDictionaryRemoveValue(tokenToRelayInterfaceInfoDeliveryStatus, v4);
    }

    v6 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      v7 = "removed relay interface information for %@.";
      v8 = v6;
      v9 = 12;
LABEL_8:
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, v7, &v10, v9);
    }
  }

  else
  {
    v6 = +[IDSFoundationLog Stun];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      v7 = "remove relay interface information failed due to invalid token.";
      v8 = v6;
      v9 = 2;
      goto LABEL_8;
    }
  }
}

@end