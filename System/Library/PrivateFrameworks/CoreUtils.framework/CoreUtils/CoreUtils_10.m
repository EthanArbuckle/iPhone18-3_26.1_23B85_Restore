uint64_t _PairingThrottle()
{
  pthread_mutex_lock(&gPairingGlobalLock);
  if (gPairingMaxTries)
  {
    if (gPairingTries >= gPairingMaxTries)
    {
      v4 = 4294960532;
      goto LABEL_20;
    }

    ++gPairingTries;
    goto LABEL_19;
  }

  if (UpTicksPerSecond_sOnce != -1)
  {
    dispatch_once_f(&UpTicksPerSecond_sOnce, &UpTicksPerSecond_sTicksPerSecond, _UpTicksPerSecondInit);
  }

  v0 = UpTicksPerSecond_sTicksPerSecond;
  v1 = mach_absolute_time();
  if (!gPairingThrottleNextTicks || (v2 = gPairingThrottleNextTicks - v1, gPairingThrottleNextTicks <= v1))
  {
    v5 = 2 * gPairingThrottleCounter;
    if ((2 * gPairingThrottleCounter) >= 0x2A30)
    {
      v5 = 10800;
    }

    if (gPairingThrottleCounter)
    {
      v6 = v5;
    }

    else
    {
      v6 = 1;
    }

    gPairingThrottleCounter = v6;
    gPairingThrottleNextTicks = v1 + v0 * v6;
LABEL_19:
    v4 = 4294960539;
    goto LABEL_20;
  }

  if (UpTicksPerSecond_sOnce != -1)
  {
    v8 = gPairingThrottleNextTicks - v1;
    dispatch_once_f(&UpTicksPerSecond_sOnce, &UpTicksPerSecond_sTicksPerSecond, _UpTicksPerSecondInit);
    v2 = v8;
  }

  v3 = v2 / UpTicksPerSecond_sTicksPerSecond;
  if (v2 == v2 / UpTicksPerSecond_sTicksPerSecond * UpTicksPerSecond_sTicksPerSecond)
  {
    v4 = v3;
  }

  else
  {
    v4 = (v3 + 1);
  }

LABEL_20:
  pthread_mutex_unlock(&gPairingGlobalLock);
  return v4;
}

uint64_t _SetupServerAuthenticationFailed(uint64_t a1, unsigned int a2, uint64_t a3, void *a4, size_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v13 = *(a1 + 16);
  if (*v13 > 30)
  {
    goto LABEL_5;
  }

  if (*v13 != -1)
  {
    goto LABEL_3;
  }

  if (_LogCategory_Initialize(v13, 0x1Eu))
  {
    v13 = *(a1 + 16);
LABEL_3:
    LogPrintF_safe(v13, "OSStatus _SetupServerAuthenticationFailed(PairingSessionRef, uint8_t, TLV8Buffer *, uint8_t **, size_t *)", 0x1Eu, "### PairSetup server wrong setup code", a5, a6, a7, a8, v18[0]);
  }

LABEL_5:
  LOBYTE(v18[0]) = 2;
  result = TLV8BufferAppend(a3, 7, v18, 1uLL);
  if (!result)
  {
    result = TLV8BufferAppendUInt64(a3, 6, a2);
    if (!result)
    {
      v15 = mach_absolute_time();
      v16 = gPairingThrottleNextTicks - v15;
      if (gPairingThrottleNextTicks <= v15)
      {
        goto LABEL_15;
      }

      if (UpTicksPerSecond_sOnce != -1)
      {
        dispatch_once_f(&UpTicksPerSecond_sOnce, &UpTicksPerSecond_sTicksPerSecond, _UpTicksPerSecondInit);
      }

      if (v16 == v16 / UpTicksPerSecond_sTicksPerSecond * UpTicksPerSecond_sTicksPerSecond)
      {
        v17 = v16 / UpTicksPerSecond_sTicksPerSecond;
      }

      else
      {
        LODWORD(v17) = v16 / UpTicksPerSecond_sTicksPerSecond + 1;
      }

      if (v17 < 1 || (result = TLV8BufferAppendUInt64(a3, 8, v17 & 0x7FFFFFFF), !result))
      {
LABEL_15:
        result = TLV8BufferDetach(a3, a4, a5);
        if (!result)
        {
          _PairingSessionReset(a1);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t PairingResetThrottle()
{
  pthread_mutex_lock(&gPairingGlobalLock);
  gPairingThrottleNextTicks = 0;
  gPairingThrottleCounter = 0;
  gPairingTries = 0;

  return pthread_mutex_unlock(&gPairingGlobalLock);
}

void _ServerEncryptExtra(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  memset(v21, 0, sizeof(v21));
  v18 = v21;
  v19 = xmmword_191FF95F0;
  v20 = 0;
  v4 = *(a1 + 360);
  TypeID = CFDataGetTypeID();
  TypedValue = CFDictionaryGetTypedValue(v4, @"productData", TypeID, 0);
  if (!TypedValue || (v7 = TypedValue, BytePtr = CFDataGetBytePtr(TypedValue), Length = CFDataGetLength(v7), v14 = TLV8BufferAppend(&v18, 28, BytePtr, Length), !v14))
  {
    if (!v19)
    {
      if (v20)
      {
        free(v20);
      }

      return;
    }

    v15 = malloc_type_malloc(v19 + 16, 0x100004077774924uLL);
    if (v15)
    {
      v16 = v15;
      _chacha20_poly1305_encrypt_all((a1 + 430), "PS-Msg04", 8, 0, 0, v18, v19, v15, v15->i64 + v19);
      v14 = TLV8BufferAppend(a2, 5, v16, v19 + 16);
      free(v16);
      if (v20)
      {
        free(v20);
        v20 = 0;
      }

      if (!v14)
      {
        return;
      }

      goto LABEL_10;
    }

    v14 = 4294960568;
  }

  if (v20)
  {
    free(v20);
    v20 = 0;
  }

LABEL_10:
  v17 = *(a1 + 16);
  if (*v17 <= 90)
  {
    if (*v17 != -1)
    {
LABEL_12:
      LogPrintF(v17, "OSStatus _ServerEncryptExtra(PairingSessionRef, const uint8_t *, TLV8Buffer *)", 0x5Au, "### ServerEncryptExtra failed: %#m\n", v10, v11, v12, v13, v14);
      return;
    }

    if (_LogCategory_Initialize(v17, 0x5Au))
    {
      v17 = *(a1 + 16);
      goto LABEL_12;
    }
  }
}

CFTypeRef _PairingSessionIntersectACL(uint64_t a1, CFDictionaryRef theDict, _DWORD *a3)
{
  v6 = *(a1 + 184);
  context[0] = 0;
  context[1] = v6;
  v10 = 0;
  if (CFDictionaryGetCount(theDict) >= 1)
  {
    v7 = *(a1 + 184);
    if (!v7 || CFDictionaryGetCount(v7) <= 0)
    {
      result = 0;
      LODWORD(v10) = -6773;
      goto LABEL_5;
    }

    CFDictionaryApplyFunction(theDict, _PairingSessionIntersectACLApplier, context);
    result = context[0];
    if (!v10 || !context[0])
    {
      goto LABEL_5;
    }

    CFRelease(context[0]);
  }

  result = 0;
LABEL_5:
  if (a3)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t _PairingSessionVerifyAllowed(uint64_t a1)
{
  v2 = *(a1 + 360);
  TypeID = CFArrayGetTypeID();
  result = CFDictionaryGetTypedValue(v2, @"allowedMACAddresses", TypeID, 0);
  if (result)
  {
    v5 = result;
    v6 = *(a1 + 328);
    v7 = CFDataGetTypeID();
    TypedValue = CFDictionaryGetTypedValue(v6, @"mac", v7, 0);
    v9 = *(a1 + 328);
    v10 = CFDataGetTypeID();
    v11 = CFDictionaryGetTypedValue(v9, @"wifiMAC", v10, 0);
    if (TypedValue | v11)
    {
      v12 = v11;
      Count = CFArrayGetCount(v5);
      if (Count < 1)
      {
        return 4294960520;
      }

      else
      {
        v14 = Count;
        v15 = 0;
        while (1)
        {
          v16 = CFDataGetTypeID();
          TypedValueAtIndex = CFArrayGetTypedValueAtIndex(v5, v15, v16, 0);
          if (TypedValueAtIndex)
          {
            v18 = TypedValueAtIndex;
            if (TypedValue)
            {
              if (CFEqual(TypedValueAtIndex, TypedValue))
              {
                break;
              }
            }

            if (v12 && CFEqual(v18, v12))
            {
              break;
            }
          }

          if (v14 == ++v15)
          {
            return 4294960520;
          }
        }

        return 0;
      }
    }

    else
    {
      return 4294960535;
    }
  }

  return result;
}

uint64_t PairingSessionSavePeer(uint64_t a1, char *__s, size_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v62 = *MEMORY[0x1E69E9840];
  if (a3 == -1)
  {
    v9 = strlen(__s);
  }

  v12 = *(a1 + 72);
  if (v12)
  {
    v13 = *(a1 + 24);

    return v12(__s, v9, a4, v13);
  }

  if ((*(a1 + 100) & 4) != 0)
  {
    v57 = 0;
    v58 = &v57;
    v59 = 0x2020000000;
    v60 = 1;
    v15 = StringToUUIDEx(__s, v9, 0, 0, &v61, a6, a7, a8);
    *(v58 + 6) = v15;
    if (v15)
    {
      v61 = 0uLL;
      v16 = TextToHardwareAddress(__s, v9, 6, &v61 + 10);
      *(v58 + 6) = v16;
      if (v16)
      {
        v45 = v16;
        v17 = 0;
        v18 = 0;
        v44 = 0;
        v46 = 0;
        v47 = 0;
        goto LABEL_36;
      }
    }

    v17 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v61];
    if (v17)
    {
      v18 = objc_alloc_init(CUPairedPeer);
      [(CUPairedPeer *)v18 setIdentifier:v17];
      v19 = *(a1 + 96) - 1;
      if (v19 > 0xC)
      {
        v20 = 288;
      }

      else
      {
        v20 = qword_191FFB118[v19];
      }

      [(CUPairedPeer *)v18 setAcl:*(a1 + v20)];
      v21 = *(a1 + 328);
      TypeID = CFDataGetTypeID();
      [(CUPairedPeer *)v18 setAltIRK:CFDictionaryGetTypedValue(v21, @"altIRK", TypeID, 0)];
      v23 = PairingSessionCopyPeerInfo(a1, 0);
      [(CUPairedPeer *)v18 setInfo:v23];

      v24 = [MEMORY[0x1E695DEF0] dataWithBytes:a4 length:32];
      [(CUPairedPeer *)v18 setPublicKey:v24];

      v25 = *(a1 + 100);
      v26 = _Block_copy(*(a1 + 1008));
      v27 = v26;
      v28 = v25 >> 1;
      if (v26)
      {
        v54[0] = 0;
        (*(v26 + 2))(v26, v18, (v25 >> 1) & 4, v54);
        v29 = v54[0];
        v37 = v29;
        if (!v29)
        {
LABEL_32:
          *(v58 + 6) = v29;

          v44 = 0;
          v46 = 0;
          v47 = 0;
          goto LABEL_33;
        }

        v38 = *(a1 + 16);
        if (*v38 <= 90)
        {
          if (*v38 == -1)
          {
            if (!_LogCategory_Initialize(*(a1 + 16), 0x5Au))
            {
              goto LABEL_31;
            }

            v38 = *(a1 + 16);
          }

          v53 = NSPrintF("%{error}", v30, v31, v32, v33, v34, v35, v36, v37);
          LogPrintF(v38, "OSStatus _PairingSessionSavePeerPairingManager(PairingSessionRef, const void *, size_t, const uint8_t *)", 0x5Au, "### SavePeerHandler failed: %@, %@", v39, v40, v41, v42, v18);
        }

LABEL_31:
        LODWORD(v29) = NSErrorToOSStatusEx(v37, 0);
        goto LABEL_32;
      }

      v43 = +[CUPairingDaemon sharedPairingDaemon];
      v44 = v43;
      if (v43)
      {
        v45 = [v43 savePairedPeer:v18 options:v28 & 4];
        v46 = 0;
        *(v58 + 6) = v45;
        v47 = 0;
        if (v45)
        {
          v47 = 0;
LABEL_36:

          _Block_object_dispose(&v57, 8);
          return v45;
        }

LABEL_33:
        v52 = *(a1 + 272);
        if (v52)
        {
          CFRelease(v52);
        }

        v18 = v18;
        *(a1 + 272) = v18;
        v45 = *(v58 + 6);
        goto LABEL_36;
      }

      v46 = objc_alloc_init(CUPairingManager);
      v48 = dispatch_queue_create("OSStatus _PairingSessionSavePeerPairingManager(PairingSessionRef, const void *, size_t, const uint8_t *)", 0);
      [(CUPairingManager *)v46 setDispatchQueue:v48];

      if ((*(a1 + 100) & 0x40) != 0)
      {
        [(CUPairingManager *)v46 setTargetUserSession:1];
      }

      v49 = dispatch_semaphore_create(0);
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = ___PairingSessionSavePeerPairingManager_block_invoke;
      v54[3] = &unk_1E73A4C80;
      v56 = &v57;
      v47 = v49;
      v55 = v47;
      [(CUPairingManager *)v46 savePairedPeer:v18 options:v28 & 4 completion:v54];

      v50 = dispatch_time(0, 120000000000);
      v44 = dispatch_semaphore_wait(v47, v50);
      [(CUPairingManager *)v46 invalidate];
      v51 = v58;
      if (!v44)
      {
        v45 = *(v58 + 6);
        if (v45)
        {
          goto LABEL_36;
        }

        goto LABEL_33;
      }

      v44 = 0;
      v45 = 4294960574;
    }

    else
    {
      v18 = 0;
      v44 = 0;
      v46 = 0;
      v47 = 0;
      v51 = v58;
      v45 = 4294960588;
    }

    *(v51 + 6) = v45;
    goto LABEL_36;
  }

  return _PairingSessionSavePeerKeychain(a1, __s, v9, a4, 0);
}

void sub_191FB3620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFDictionary *_PairingSessionGetSelfInfo(uint64_t a1)
{
  Mutable = *(a1 + 344);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v19 = 0;
      if ((*(a1 + 100) & 4) != 0)
      {
        value = 0;
        v17 = 0;
        _PairingSessionCopyIdentityPairingManager(a1, 3, &v17, &value, 0, 0);
        if (v17)
        {
          CFDictionarySetCString(Mutable, @"accountID", v17, -1);
          free(v17);
        }

        if (value)
        {
          CFDictionarySetValue(Mutable, @"altIRK", value);
          CFRelease(value);
        }
      }

      v3 = GestaltCopyAnswer(@"UserAssignedDeviceName", 0, 0);
      if (v3)
      {
        v4 = v3;
        CFDictionarySetValue(Mutable, @"name", v3);
        CFRelease(v4);
      }

      v5 = GestaltCopyAnswer(@"BluetoothAddress", 0, 0);
      if (v5)
      {
        v6 = v5;
        CFDictionarySetValue(Mutable, @"btAddr", v5);
        CFRelease(v6);
      }

      GetPrimaryMACAddress(bytes, &v19);
      if (!v19)
      {
        CFDictionarySetData(Mutable, @"mac", bytes, 6);
      }

      v7 = GestaltCopyAnswer(@"ProductType", 0, 0);
      if (v7)
      {
        v8 = v7;
        CFDictionarySetValue(Mutable, @"model", v7);
        CFRelease(v8);
      }

      v9 = GestaltCopyAnswer(@"WifiAddressData", 0, 0);
      if (v9)
      {
        v10 = v9;
        CFDictionarySetValue(Mutable, @"wifiMAC", v9);
        CFRelease(v10);
      }

      v11 = *(a1 + 352);
      if (v11)
      {
        CFDictionaryApplyFunction(v11, _CFDictionaryMergeDictionaryApplier, Mutable);
      }

      v12 = *(a1 + 360);
      TypeID = CFDictionaryGetTypeID();
      TypedValue = CFDictionaryGetTypedValue(v12, @"groupInfoSelf", TypeID, 0);
      if (TypedValue)
      {
        CFDictionarySetValue(Mutable, @"groupInfo", TypedValue);
      }

      *(a1 + 344) = Mutable;
    }
  }

  return Mutable;
}

void _PairingSessionIntersectACLApplier(void *key, const void *a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    return;
  }

  Value = CFDictionaryGetValue(*(a3 + 8), key);
  if (!Value || (v7 = Value, !CFEqual(Value, a2)))
  {
    v9 = -6773;
LABEL_10:
    *(a3 + 16) = v9;
    return;
  }

  Mutable = *a3;
  if (!*a3)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *a3 = Mutable;
    if (!Mutable)
    {
      v9 = -6728;
      goto LABEL_10;
    }
  }

  CFDictionarySetValue(Mutable, key, v7);
}

uint64_t _SetupClientAuthenticationFailed(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 16);
  if (*v11 <= 30)
  {
    if (*v11 != -1)
    {
LABEL_3:
      LogPrintF_safe(v11, "OSStatus _SetupClientAuthenticationFailed(PairingSessionRef, const uint8_t *, const uint8_t *const)", 0x1Eu, "### PairSetup client wrong setup code", a5, a6, a7, a8, v18);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(v11, 0x1Eu))
    {
      v11 = *(a1 + 16);
      goto LABEL_3;
    }
  }

LABEL_5:
  _PairingSessionReset(a1);
  v12 = *(a1 + 400);
  if (v12)
  {
    free(v12);
    *(a1 + 400) = 0;
  }

  *(a1 + 408) = 0;
  *(a1 + 416) = 1;
  if (!*(a1 + 48))
  {
    return 4294960551;
  }

  v13 = *(a1 + 100);
  UInt64 = TLV8GetUInt64(a2, a3, 8, 0, 0);
  if (UInt64)
  {
    v15 = 196608;
  }

  else
  {
    v15 = 0x10000;
  }

  if (UInt64)
  {
    v16 = UInt64;
  }

  else
  {
    v16 = 0xFFFFFFFFLL;
  }

  LODWORD(result) = (*(a1 + 48))(v15 | v13, v16, *(a1 + 24));
  if (result)
  {
    return result;
  }

  else
  {
    return 4294960525;
  }
}

void _ClientDecryptExtra(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v19 = 0;
  v18 = 0;
  v4 = TLV8CopyCoalesced(a2, &a2[a3], 5, &v19, &v18);
  if (!v4)
  {
    return;
  }

  v5 = v4;
  if (v19 <= 0xF)
  {
    v14 = -6743;
    goto LABEL_17;
  }

  v6 = &v4[-1].u8[v19];
  v18 = _chacha20_poly1305_decrypt_all((a1 + 430), "PS-Msg04", 8, 0, 0, v4, v19 - 16, v4, v6, 16);
  if (!v18)
  {
    length = 0;
    bytes = 0;
    v15 = 0;
    TLV8GetOrCopyCoalesced(v5, v6, 28, &bytes, &length, &v15, 0);
    if (bytes)
    {
      v7 = CFDataCreate(0, bytes, length);
      if (v15)
      {
        free(v15);
      }

      if (v7)
      {
        v18 = PairingSessionSetProperty(a1, @"productData", v7);
        CFRelease(v7);
        goto LABEL_9;
      }

      v14 = -6728;
LABEL_17:
      v18 = v14;
    }
  }

LABEL_9:
  free(v5);
  v12 = v18;
  if (v18)
  {
    v13 = *(a1 + 16);
    if (*v13 <= 90)
    {
      if (*v13 != -1)
      {
LABEL_12:
        LogPrintF(v13, "OSStatus _ClientDecryptExtra(PairingSessionRef, const void *, size_t, const uint8_t *)", 0x5Au, "### ClientDecryptExtra failed: %#m\n", v8, v9, v10, v11, v12);
        return;
      }

      if (_LogCategory_Initialize(v13, 0x5Au))
      {
        v12 = v18;
        v13 = *(a1 + 16);
        goto LABEL_12;
      }
    }
  }
}

uint64_t PairingSessionDeleteIdentity(uint64_t a1)
{
  pthread_mutex_lock(&gPairingGlobalLock);
  _PairingSessionDeleteIdentity(a1, v2, v3, v4, v5, v6, v7, v8);
  pthread_mutex_unlock(&gPairingGlobalLock);
  return 0;
}

const __CFArray *PairingSessionCopyPeer(int a1, char *a2, uint64_t a3, _DWORD *a4)
{
  v11 = 0;
  v5 = _PairingSessionCopyPeers(a1, a2, a3, &v11);
  v6 = v5;
  if (v11)
  {
LABEL_4:
    v9 = 0;
    if (!v6)
    {
      goto LABEL_8;
    }

LABEL_7:
    CFRelease(v6);
    goto LABEL_8;
  }

  if (CFArrayGetCount(v5) > 0)
  {
    TypeID = CFDictionaryGetTypeID();
    TypedValueAtIndex = CFArrayGetTypedValueAtIndex(v6, 0, TypeID, &v11);
    if (!v11)
    {
      v9 = TypedValueAtIndex;
      CFRetain(TypedValueAtIndex);
      if (!v6)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    goto LABEL_4;
  }

  v9 = 0;
  v11 = -6727;
  if (v6)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (a4)
  {
    *a4 = v11;
  }

  return v9;
}

uint64_t PairingSessionDeletePeer(uint64_t a1, char *__s, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 100) & 4) != 0)
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 1;
    v17 = StringToUUIDEx(__s, a3, 0, 0, &v39, a6, a7, a8);
    *(v36 + 6) = v17;
    if (v17 && (v39 = 0uLL, v18 = TextToHardwareAddress(__s, a3, 6, &v39 + 10), (*(v36 + 6) = v18) != 0))
    {
      v16 = v18;
    }

    else
    {
      v19 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v39];
      if (v19)
      {
        v20 = objc_alloc_init(CUPairedPeer);
        [(CUPairedPeer *)v20 setIdentifier:v19];
        v21 = *(a1 + 100);
        v22 = +[CUPairingDaemon sharedPairingDaemon];
        v23 = v22;
        v24 = v21 >> 1;
        if (v22)
        {
          v16 = [v22 removePairedPeer:v20 options:(v21 >> 1) & 4];
          *(v36 + 6) = v16;
        }

        else
        {
          v25 = objc_alloc_init(CUPairingManager);
          v26 = dispatch_queue_create("OSStatus _PairingSessionDeletePeerPairingManager(PairingSessionRef, const void *, size_t)", 0);
          [(CUPairingManager *)v25 setDispatchQueue:v26];

          if ((*(a1 + 100) & 0x40) != 0)
          {
            [(CUPairingManager *)v25 setTargetUserSession:1];
          }

          v27 = dispatch_semaphore_create(0);
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = ___PairingSessionDeletePeerPairingManager_block_invoke;
          v32[3] = &unk_1E73A4C80;
          v34 = &v35;
          v28 = v27;
          v33 = v28;
          [(CUPairingManager *)v25 removePairedPeer:v20 options:v24 & 4 completion:v32];

          v29 = dispatch_time(0, 120000000000);
          v30 = dispatch_semaphore_wait(v28, v29);
          [(CUPairingManager *)v25 invalidate];
          if (v30)
          {
            *(v36 + 6) = -6722;

            v16 = 4294960574;
          }

          else
          {
            v16 = *(v36 + 6);
          }
        }
      }

      else
      {
        v16 = 4294960588;
        *(v36 + 6) = -6708;
      }
    }

    _Block_object_dispose(&v35, 8);
  }

  else
  {
    pthread_mutex_lock(&gPairingGlobalLock);
    _PairingSessionDeletePeer(a1, __s, a3, v11, v12, v13, v14, v15);
    pthread_mutex_unlock(&gPairingGlobalLock);
    return 0;
  }

  return v16;
}

uint64_t PairingSessionUpdatePeerInfo(uint64_t a1, char *__s, uint64_t a3, const void *a4)
{
  v23 = 0;
  if (a3 == -1)
  {
    strlen(__s);
  }

  pthread_mutex_lock(&gPairingGlobalLock);
  Formatted = CFPropertyListCreateFormatted(0, &v23, "{%kO=%O%kO=%O%kO=%i%kO=%.*s%kO=%O}", v6, v7, v8, v9, v10, *MEMORY[0x1E697AFF8]);
  if (Formatted)
  {
    updated = Formatted;
  }

  else
  {
    Data = CFPropertyListCreateData(0, a4, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    if (Data)
    {
      v20 = Data;
      updated = KeychainUpdateFormatted(v23, "{%kO=%O}", v18, v19, v12, v13, v14, v15, *MEMORY[0x1E697ACF0]);
      CFRelease(v20);
      if (!updated)
      {
        goto LABEL_11;
      }
    }

    else
    {
      updated = 4294960596;
    }
  }

  v21 = *(a1 + 16);
  if (*v21 <= 60)
  {
    if (*v21 != -1)
    {
LABEL_9:
      LogPrintF(v21, "OSStatus PairingSessionUpdatePeerInfo(PairingSessionRef, const void *, size_t, CFDictionaryRef)", 0x3Cu, "### Update %@ %.*s info failed: %#m\n", v12, v13, v14, v15, *(a1 + 816));
      goto LABEL_11;
    }

    if (_LogCategory_Initialize(v21, 0x3Cu))
    {
      v21 = *(a1 + 16);
      goto LABEL_9;
    }
  }

LABEL_11:
  if (v23)
  {
    CFRelease(v23);
  }

  pthread_mutex_unlock(&gPairingGlobalLock);
  return updated;
}

uint64_t PairingSessionSetCopyIdentityHandler_b(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v8 = v3;
    v5 = [v3 copy];
    v6 = *(a1 + 992);
    if (v6)
    {
      CFRelease(v6);
    }

    *(a1 + 992) = v5;
    v4 = v8;
  }

  else
  {
    v6 = *(a1 + 992);
    if (v6)
    {
      CFRelease(v6);
      v4 = 0;
      *(a1 + 992) = 0;
    }
  }

  return MEMORY[0x1EEE66BB8](v6, v4);
}

uint64_t PairingSessionSetFindPeerHandler_b(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v8 = v3;
    v5 = [v3 copy];
    v6 = *(a1 + 1000);
    if (v6)
    {
      CFRelease(v6);
    }

    *(a1 + 1000) = v5;
    v4 = v8;
  }

  else
  {
    v6 = *(a1 + 1000);
    if (v6)
    {
      CFRelease(v6);
      v4 = 0;
      *(a1 + 1000) = 0;
    }
  }

  return MEMORY[0x1EEE66BB8](v6, v4);
}

uint64_t PairingSessionSetSavePeerHandler_b(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v8 = v3;
    v5 = [v3 copy];
    v6 = *(a1 + 1008);
    if (v6)
    {
      CFRelease(v6);
    }

    *(a1 + 1008) = v5;
    v4 = v8;
  }

  else
  {
    v6 = *(a1 + 1008);
    if (v6)
    {
      CFRelease(v6);
      v4 = 0;
      *(a1 + 1008) = 0;
    }
  }

  return MEMORY[0x1EEE66BB8](v6, v4);
}

uint64_t PairingSessionSetMyAppleID(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 848);
  if (cf)
  {
    CFRetain(cf);
  }

  *(a1 + 848) = cf;
  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t PairingSessionSetMyAppleIDInfoClient(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 872);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 872) = v3;

  return 0;
}

uint64_t PairingSessionSetPeerAppleID(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 856);
  if (cf)
  {
    CFRetain(cf);
  }

  *(a1 + 856) = cf;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 864);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 864) = 0;
  }

  return 0;
}

uint64_t PairingSessionSetPeerAppleIDs(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 864);
  if (cf)
  {
    CFRetain(cf);
  }

  *(a1 + 864) = cf;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 856);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 856) = 0;
  }

  return 0;
}

uint64_t PrintFRegisterExtension(const char *a1, uint64_t a2, uint64_t a3)
{
  pthread_mutex_lock(&gPrintFUtilsLock);
  v6 = &gExtensionList;
  while (1)
  {
    v6 = *v6;
    if (!v6)
    {
      break;
    }

    if (!strcasecmp(v6 + 24, a1))
    {
      v7 = 4294960566;
      goto LABEL_7;
    }
  }

  v8 = strlen(a1);
  v9 = malloc_type_malloc(v8 + 25, 0x10A0040060C124AuLL);
  if (v9)
  {
    v10 = v9;
    v9[1] = a2;
    v9[2] = a3;
    memcpy(v9 + 3, a1, v8 + 1);
    v7 = 0;
    *v10 = gExtensionList;
    gExtensionList = v10;
  }

  else
  {
    v7 = 4294960568;
  }

LABEL_7:
  pthread_mutex_unlock(&gPrintFUtilsLock);
  return v7;
}

uint64_t PrintFDeregisterExtension(const char *a1)
{
  pthread_mutex_lock(&gPrintFUtilsLock);
  v2 = &gExtensionList;
  while (1)
  {
    v3 = v2;
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    if (!strcasecmp(v2 + 24, a1))
    {
      *v3 = *v2;
      free(v2);
      v4 = 0;
      goto LABEL_6;
    }
  }

  v4 = 4294960569;
LABEL_6:
  pthread_mutex_unlock(&gPrintFUtilsLock);
  return v4;
}

uint64_t CFAppendPrintV(CFMutableStringRef *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*a1)
  {
    Mutable = CFStringCreateMutable(0, 0);
    *a1 = Mutable;
    if (!Mutable)
    {
      return 4294960568;
    }
  }

  cStr = 0;
  VASPrintF(&cStr, a2, a3, a4, a5, a6, a7, a8);
  v12 = cStr;
  if (!cStr)
  {
    return 4294960568;
  }

  CFStringAppendCString(*a1, cStr, 0x8000100u);
  free(v12);
  return 0;
}

uint64_t SNPrintF_Add(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *a1;
  v10 = a2 - *a1;
  if (a2 == *a1)
  {
    return 4294960533;
  }

  result = VSNPrintF(v9, v10, a3, &a9);
  if ((result & 0x80000000) == 0)
  {
    v14 = v9 + result;
    if (result < v10)
    {
      result = 0;
    }

    else
    {
      v14 = a2;
      result = 4294960545;
    }

    *a1 = v14;
  }

  return result;
}

uint64_t _PrintFObfuscateIPv4(unsigned __int8 *a1, _BYTE *a2)
{
  if (gObfuscateOnce != -1)
  {
    dispatch_once_f(&gObfuscateOnce, 0, _PrintFObfuscateInit);
  }

  result = SipHash(gObfuscateKey, a1, 4);
  *a2 = -69;
  a2[1] = BYTE2(result);
  a2[2] = BYTE1(result);
  a2[3] = result;
  return result;
}

void _PrintFObfuscateHardwareAddress(unsigned __int8 *a1, unint64_t a2, _WORD *a3)
{
  if (gObfuscateOnce != -1)
  {
    dispatch_once_f(&gObfuscateOnce, 0, _PrintFObfuscateInit);
  }

  v6 = SipHash(gObfuscateKey, a1, a2);
  *a3 = 187;
  v7 = a3 + 1;
  v8 = 8;
  if (a2 < 8)
  {
    v8 = a2;
  }

  v9 = v8 - 2;
  do
  {
    *v7++ = v6;
    v6 >>= 8;
    --v9;
  }

  while (v9);
  if (a2 >= 9)
  {

    bzero(a3 + v8, a2 - v8);
  }
}

uint64_t _PrintFObfuscateIPv6(unsigned __int8 *a1, uint64_t a2)
{
  if (gObfuscateOnce != -1)
  {
    dispatch_once_f(&gObfuscateOnce, 0, _PrintFObfuscateInit);
  }

  result = SipHash(gObfuscateKey, a1, 16);
  *a2 = -69;
  *(a2 + 1) = 0;
  *(a2 + 8) = 0;
  *(a2 + 12) = bswap32(result);
  return result;
}

uint64_t PrintFWriteSingleLineText(uint64_t (**a1)(unsigned __int8 *, int64_t, void), unsigned __int8 *a2, uint64_t a3, int a4)
{
  if (a3 >= 1)
  {
    v5 = a2;
    v7 = 0;
    v8 = &a2[a3];
    while (1)
    {
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v10 == 10 || v10 == 13)
        {
          break;
        }

        ++v9;
      }

      while (v9 < v8);
      if (v5 < v9)
      {
        v12 = (*a1)(v5, v9 - v5, a1);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        v7 = (v12 + v7);
      }

      if (v9 >= v8)
      {
        v5 = v9;
      }

      else
      {
        v13 = v8 - v9;
        v5 = v9;
        while (1)
        {
          v14 = *v5;
          if (v14 != 13 && v14 != 10)
          {
            break;
          }

          ++v5;
          if (!--v13)
          {
            v5 = v8;
            goto LABEL_22;
          }
        }

        if (v9 < v5)
        {
          if (a4)
          {
            v16 = " ";
            v17 = 1;
          }

          else
          {
            v16 = " ⏎ ";
            v17 = 5;
          }

          v12 = (*a1)(v16, v17, a1);
          if ((v12 & 0x80000000) != 0)
          {
            return v12;
          }

          v7 = (v12 + v7);
        }
      }

LABEL_22:
      if (v5 >= v8)
      {
        return v7;
      }
    }
  }

  return 0;
}

uint64_t PrintFWriteTLV8(uint64_t a1, uint64_t a2, const char *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = a4;
  v6 = &a4[a5];
  if (a5 < 2)
  {
    v8 = 0;
  }

  else
  {
    v47 = a5;
    v7 = 0;
    v8 = 0;
    v9 = a4;
    do
    {
      v10 = v9[1];
      v11 = &v9[v10 + 2];
      if (v11 > v6)
      {
        break;
      }

      v12 = *v9;
      v9 += v10 + 2;
      for (i = a3; ; i += v14 + 2)
      {
        v14 = strlen(i + 1);
        if (!v14)
        {
          break;
        }

        if (v8 <= v14)
        {
          v15 = v14;
        }

        else
        {
          v15 = v8;
        }

        if (*i == v12)
        {
          v8 = v15;
        }
      }

      if (v7 <= v10)
      {
        v7 = v10;
      }
    }

    while ((v6 - v11) >= 2);
    a5 = v47;
  }

  if (a5 >= 2)
  {
    v16 = 0;
    while (1)
    {
      v17 = v5[1];
      v18 = v5 + 2;
      v19 = &v5[v17 + 2];
      if (v19 > v6)
      {
        return v16;
      }

      v20 = *v5;
      v5 += v17 + 2;
      for (j = a3; ; j = &v22[v23 + 1])
      {
        v22 = j + 1;
        v23 = strlen(j + 1);
        if (!v23)
        {
          break;
        }

        if (*j == v20)
        {
          goto LABEL_25;
        }
      }

      v22 = 0;
LABEL_25:
      if (v17)
      {
        v30 = v17 - 1;
        v31 = v18;
        do
        {
          v32 = *v31++;
          v33 = (v32 - 32) < 0x5F;
        }

        while ((v32 - 32) <= 0x5E && v30-- != 0);
      }

      else
      {
        v33 = 1;
      }

      v35 = PrintFCore(a1, "%*s0x%02X", v24, v25, v26, v27, v28, v29, (4 * *(a2 + 8)));
      if ((v35 & 0x80000000) != 0)
      {
        return v35;
      }

      v42 = v35 + v16;
      if (v22)
      {
        v43 = PrintFCore(a1, " (%s)", v36, v37, v38, v39, v40, v41, v22);
        v16 = v43;
        if ((v43 & 0x80000000) != 0)
        {
          return v16;
        }

        v42 += v43;
        v44 = v8 - strlen(v22);
        if (v17)
        {
LABEL_38:
          if (v33)
          {
            v45 = PrintFCore(a1, ", %*s%*u bytes, %.*s\n", v36, v37, v38, v39, v40, v41, v44);
          }

          else if (v17 > 0x10)
          {
            v45 = PrintFCore(a1, "\n%*.1H", v36, v37, v38, v39, v40, v41, (*(a2 + 8) + 1));
          }

          else
          {
            v45 = PrintFCore(a1, ", %*s%*u bytes, %#H\n", v36, v37, v38, v39, v40, v41, v44);
          }

          goto LABEL_45;
        }
      }

      else
      {
        v44 = v8 + 3;
        if (v17)
        {
          goto LABEL_38;
        }
      }

      v45 = PrintFCore(a1, ", %*s%*u bytes\n", v36, v37, v38, v39, v40, v41, v44);
LABEL_45:
      v16 = v45;
      if ((v45 & 0x80000000) == 0)
      {
        v16 = (v45 + v42);
        if ((v6 - v19) > 1)
        {
          continue;
        }
      }

      return v16;
    }
  }

  return 0;
}

uint64_t PrintFWriteTXTRecord(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v33 = *MEMORY[0x1E69E9840];
  v12 = &a3[a4];
  if (*(a2 + 3))
  {
    if (a4 < 1)
    {
      return 0;
    }

    v13 = 0;
    v14 = "";
    do
    {
      v17 = *v9;
      v15 = v9 + 1;
      v16 = v17;
      if (v12 - v15 < v17)
      {
        break;
      }

      v18 = PrintFCore(a1, "%s%.*s", a3, a4, a5, a6, a7, a8, v14);
      if ((v18 & 0x80000000) != 0)
      {
        return v18;
      }

      v13 = (v18 + v13);
      v14 = *(a2 + 3) <= 1 ? " | " : ", ";
      v9 = &v15[v16];
    }

    while (v9 < v12);
    return v13;
  }

  v19 = (4 * *(a2 + 8));
  if (a4 < 6 || (*(a3 + 1) == 1095590263 ? (v20 = a3[5] == 61) : (v20 = 0), !v20))
  {
    if (a4 >= 1)
    {
      LODWORD(v13) = 0;
      v21 = a3;
      while (1)
      {
        v22 = &v21[*v21 + 1];
        if (v22 > v12)
        {
          break;
        }

        v18 = PrintFCore(a1, "%*s%.*s\n", a3, a4, a5, a6, a7, a8, v19);
        if ((v18 & 0x80000000) != 0)
        {
          return v18;
        }

        v13 = (v18 + v13);
        v21 = v22;
        if (v22 >= v12)
        {
          goto LABEL_40;
        }
      }

      v23 = PrintFCore(a1, "%*s### TXT record length byte too big (%zu, %zu max)\n", a3, a4, a5, a6, a7, a8, v19);
LABEL_43:
      if (v23 >= 0)
      {
        v29 = v13;
      }

      else
      {
        v29 = 0;
      }

      return (v29 + v23);
    }

    goto LABEL_39;
  }

  if (&a3[*a3 + 1] == v12)
  {
    if (a4 >= 2)
    {
      LODWORD(v13) = 0;
      v24 = a3 + 1;
      do
      {
        v25 = &v32;
        v26 = v24;
        do
        {
          v28 = *v24++;
          v27 = v28;
          if (v28 == 92)
          {
            if (v24 >= v12)
            {
              v23 = PrintFCore(a1, "%*s### bad TXT escape: %.*s\n", a3, a4, a5, a6, a7, a8, v19);
              goto LABEL_43;
            }

            v24 = v26 + 2;
            LOBYTE(v27) = v26[1];
          }

          else if (v27 == 44)
          {
            break;
          }

          *v25++ = v27;
          v26 = v24;
        }

        while (v24 < v12);
        v18 = PrintFCore(a1, "%*s%.*s\n", a3, a4, a5, a6, a7, a8, v19);
        if ((v18 & 0x80000000) != 0)
        {
          return v18;
        }

        v13 = (v18 + v13);
      }

      while (v24 < v12);
      goto LABEL_40;
    }

LABEL_39:
    v13 = 0;
LABEL_40:
    if (a4 && *v9)
    {
      return v13;
    }

    v23 = PrintFCore(a1, "\n", a3, a4, a5, a6, a7, a8, v31);
    goto LABEL_43;
  }

  return PrintFCore(a1, "%*s### bad TXT record length byte (%zu, %zu expected)\n", a3, a4, a5, a6, a7, a8, v19);
}

uint64_t PrintFWriteXMLEscaped(uint64_t (**a1)(char *, int64_t, void), char *__s, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __s;
  if (a3 == -1)
  {
    a3 = strlen(__s);
  }

  if (a3 < 1)
  {
    return 0;
  }

  v10 = 0;
  v11 = &v8[a3];
  v12 = v8;
  do
  {
    v13 = *v12;
    if (v13 <= 0x26)
    {
      if (v13 == 34)
      {
        v14 = "&quot;";
      }

      else
      {
        v14 = "&amp;";
        if (v13 != 38)
        {
LABEL_12:
          ++v12;
          continue;
        }
      }
    }

    else
    {
      switch(v13)
      {
        case '\'':
          v14 = "&#39;";
          break;
        case '<':
          v14 = "&lt;";
          break;
        case '>':
          v14 = "&gt;";
          break;
        default:
          goto LABEL_12;
      }
    }

    if (v12 != v8)
    {
      v15 = (*a1)(v8, v12 - v8, a1);
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }

      LODWORD(v10) = v15 + v10;
    }

    v15 = PrintFCore(a1, "%s", a3, a4, a5, a6, a7, a8, v14);
    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }

    ++v12;
    v10 = (v15 + v10);
    v8 = v12;
  }

  while (v12 < v11);
  if (v12 != v8)
  {
    v16 = (*a1)(v8, v12 - v8, a1);
    if (v16 >= 0)
    {
      v17 = v10;
    }

    else
    {
      v17 = 0;
    }

    return (v17 + v16);
  }

  return v10;
}

id NSPrintF_safe(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = NSPrintV(a1, &a9, a3, a4, a5, a6, a7, a8);

  return v9;
}

id NSPrintTypedObject(const char *a1, void *a2, int *a3)
{
  v5 = a2;
  v6 = 0;
  v7 = -6735;
  v8 = 0;
  v9 = 0;
  switch(*a1)
  {
    case 'a':
      if (!strcasecmp(a1, "addr"))
      {
        v9 = v5;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_80;
        }

        [(__CFString *)v9 bytes];
        v112 = [(__CFString *)v9 length];
        v120 = __ROR8__(v112 - 2, 1);
        if (v120 < 4 || v120 == 7)
        {
          NSPrintF("%.*a", v113, v114, v115, v116, v117, v118, v119, v112);
          goto LABEL_62;
        }

        goto LABEL_79;
      }

      if (strcasecmp(a1, "asbd"))
      {
        goto LABEL_50;
      }

      v9 = v5;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_80;
      }

      if ([(__CFString *)v9 length]!= 40)
      {
        goto LABEL_79;
      }

      v153 = [(__CFString *)v9 bytes];
      NSPrintF("%{asbd}", v10, v11, v12, v13, v14, v15, v16, v153);
      goto LABEL_62;
    case 'b':
      if (strcasecmp(a1, "base2"))
      {
        goto LABEL_50;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_77;
      }

      v156 = [(__CFString *)v5 unsignedLongLongValue];
      NSPrintF("%llb", v48, v49, v50, v51, v52, v53, v54, v156);
      goto LABEL_68;
    case 'c':
      if (strcasecmp(a1, "cec"))
      {
        goto LABEL_50;
      }

      v9 = v5;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_80;
      }

      v69 = [(__CFString *)v9 bytes];
      [(__CFString *)v9 length];
      NSPrintF("%{cec}", v70, v71, v72, v73, v74, v75, v76, v69);
      goto LABEL_62;
    case 'd':
      if (strcasecmp(a1, "dur"))
      {
        goto LABEL_50;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_77;
      }

      v158 = [(__CFString *)v5 unsignedLongLongValue];
      NSPrintF("%ll{dur}", v77, v78, v79, v80, v81, v82, v83, v158);
      goto LABEL_68;
    case 'e':
      if (!strcasecmp(a1, "err"))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_77;
        }

        v159 = [(__CFString *)v5 longValue];
        NSPrintF("%#m", v105, v106, v107, v108, v109, v110, v111, v159);
      }

      else
      {
        if (strcasecmp(a1, "error"))
        {
          goto LABEL_50;
        }

        NSPrintF("%{error}", v55, v56, v57, v58, v59, v60, v61, v5);
      }

      goto LABEL_68;
    case 'f':
    case 'g':
    case 'i':
    case 'j':
    case 'k':
    case 'l':
    case 'm':
    case 'n':
    case 'q':
    case 'r':
    case 'v':
    case 'w':
      goto LABEL_74;
    case 'h':
      if (strcasecmp(a1, "hex"))
      {
        goto LABEL_50;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_77;
      }

LABEL_48:
      NSPrintF("%@", v84, v85, v86, v87, v88, v89, v90, v5);
      goto LABEL_68;
    case 'o':
      if (!strcasecmp(a1, "obj"))
      {
        goto LABEL_48;
      }

      if (!strcasecmp(a1, "obj1"))
      {
        NSPrintF("%##@", v91, v92, v93, v94, v95, v96, v97, v5);
        goto LABEL_68;
      }

      if (strcasecmp(a1, "oneline"))
      {
        if (strcasecmp(a1, "onoff"))
        {
          goto LABEL_50;
        }

        v24 = CFGetInt64(v5, 0);
        v32 = "on";
        v33 = "off";
LABEL_35:
        if (!v24)
        {
          v32 = v33;
        }

        NSPrintF("%s", v25, v26, v27, v28, v29, v30, v31, v32);
        goto LABEL_68;
      }

      v135 = NSPrintF("%@", v98, v99, v100, v101, v102, v103, v104, v5);
      v9 = v135;
      if (v135)
      {
        v136 = [(__CFString *)v135 UTF8String];
        v8 = NSPrintF("%{sline}", v137, v138, v139, v140, v141, v142, v143, v136);

        goto LABEL_69;
      }

      v6 = 0;
      v8 = 0;
      v7 = -6700;
      goto LABEL_74;
    case 'p':
      if (!strcasecmp(a1, "pid"))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_77;
        }

        v160 = [(__CFString *)v5 unsignedLongLongValue];
        NSPrintF("%#{pid}", v121, v122, v123, v124, v125, v126, v127, v160);
      }

      else
      {
        if (strcasecmp(a1, "ptr"))
        {
LABEL_50:
          v6 = 0;
          v8 = 0;
          v9 = 0;
          goto LABEL_51;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_77;
        }

        v157 = [(__CFString *)v5 unsignedLongLongValue];
        NSPrintF("%{ptr}", v62, v63, v64, v65, v66, v67, v68, v157);
      }

      goto LABEL_68;
    case 's':
      if (strcasecmp(a1, "sa"))
      {
        goto LABEL_50;
      }

      v9 = v5;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_80;
      }

      v161 = [(__CFString *)v9 bytes];
      NSPrintF("%##a", v128, v129, v130, v131, v132, v133, v134, v161);
      goto LABEL_62;
    case 't':
      if (strcasecmp(a1, "truefalse"))
      {
        goto LABEL_50;
      }

      v24 = CFGetInt64(v5, 0);
      v32 = "true";
      v33 = "false";
      goto LABEL_35;
    case 'u':
      if (strcasecmp(a1, "uuid"))
      {
        goto LABEL_50;
      }

      v9 = v5;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_80:
        v6 = 0;
        v8 = 0;
        goto LABEL_78;
      }

      if ([(__CFString *)v9 length]!= 16)
      {
        goto LABEL_79;
      }

      v155 = [(__CFString *)v9 bytes];
      NSPrintF("%#U", v41, v42, v43, v44, v45, v46, v47, v155);
      goto LABEL_62;
    case 'x':
      if (strcasecmp(a1, "xpc"))
      {
        goto LABEL_50;
      }

      NSPrintF("%{xpc}", v34, v35, v36, v37, v38, v39, v40, v5);
      goto LABEL_68;
    case 'y':
      if (strcasecmp(a1, "yesno"))
      {
        goto LABEL_50;
      }

      v24 = CFGetInt64(v5, 0);
      v32 = "yes";
      v33 = "no";
      goto LABEL_35;
    default:
      if (*a1 != 52)
      {
        goto LABEL_74;
      }

      if (strcasecmp(a1, "4cc"))
      {
        goto LABEL_50;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v5;
        if ([(__CFString *)v9 length]!= 4)
        {
LABEL_79:
          v6 = 0;
          v8 = 0;
          v7 = -6743;
          goto LABEL_74;
        }

        v154 = *[(__CFString *)v9 bytes];
        NSPrintF("%C", v17, v18, v19, v20, v21, v22, v23, v154);
        v8 = LABEL_62:;
        goto LABEL_70;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v162 = [(__CFString *)v5 unsignedIntValue];
        NSPrintF("%C", v144, v145, v146, v147, v148, v149, v150, v162);
        v8 = LABEL_68:;
LABEL_69:
        v9 = 0;
LABEL_70:
        if (v8)
        {
          v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v8];

          if (v6)
          {
            v7 = 0;
          }

          else
          {
            v7 = -6700;
          }
        }

        else
        {
          v6 = 0;
LABEL_51:
          v7 = -6717;
        }

        goto LABEL_74;
      }

LABEL_77:
      v6 = 0;
      v8 = 0;
      v9 = 0;
LABEL_78:
      v7 = -6756;
LABEL_74:
      if (a3)
      {
        *a3 = v7;
      }

      v151 = v6;

      return v6;
  }
}

size_t FPrintFCallBack(const void *a1, size_t __nitems, FILE *__stream)
{
  if (__stream)
  {
    fwrite(a1, 1uLL, __nitems, __stream);
  }

  return __nitems;
}

uint64_t MemPrintF(uint64_t (*a1)(unsigned __int8 *, int64_t, void), uint64_t (*a2)(unsigned __int8 *, int64_t, void), unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10[4] = 0;
  v10[5] = 0;
  v10[0] = PrintFCallBackFixedString;
  v10[1] = a1;
  v10[2] = 0;
  v10[3] = a2;
  return PrintFCoreVAList(v10, a3, &a9, a4, a5, a6, a7, a8);
}

__CFString *CUPrintFlags(unint64_t a1, _BYTE *a2, char a3)
{
  v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v7 = v6;
  if (a3)
  {
    [(__CFString *)v6 appendString:@"["];
  }

  v8 = 0;
  v9 = *a2;
  do
  {
    v10 = a2 + 1;
    if ((a1 >> v9))
    {
      if (v8 <= 0)
      {
        v11 = "";
      }

      else
      {
        v11 = ", ";
      }

      [(__CFString *)v7 appendFormat:@"%s%s", v11, v10];
      ++v8;
    }

    v12 = &v10[strlen(v10)];
    v13 = *(v12 + 1);
    a2 = v12 + 1;
    v9 = v13;
  }

  while (v13);
  if (a3)
  {
    [(__CFString *)v7 appendString:@"]"];
  }

  if (v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = &stru_1F068B090;
  }

  v15 = v14;

  return v14;
}

id CUPrintHex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = "%.3H";
  if (a4)
  {
    v8 = "%H";
  }

  v9 = NSPrintF(v8, a2, a3, a4, a5, a6, a7, a8, a1);

  return v9;
}

id CUPrintNSDataHexDump(void *a1)
{
  v1 = a1;
  v2 = [v1 bytes];
  [v1 length];

  return NSPrintF("%.1H", v3, v4, v5, v6, v7, v8, v9, v2);
}

id CUPrintTimeNow(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = "%N";
  if (a1 == 1)
  {
    v8 = "%#N";
  }

  if (a1 == 2)
  {
    v9 = "%##N";
  }

  else
  {
    v9 = v8;
  }

  v10 = NSPrintF(v9, a2, a3, a4, a5, a6, a7, a8, vars0);

  return v10;
}

id CUPrintTXTRecordNSData(void *a1, int a2)
{
  v3 = a1;
  v4 = [v3 bytes];
  [v3 length];

  if (a2)
  {
    v12 = "%##{txt}";
  }

  else
  {
    v12 = "%{txt}";
  }

  v13 = NSPrintF(v12, v5, v6, v7, v8, v9, v10, v11, v4);

  return v13;
}

uint64_t CryptoRandomKey(void *a1, size_t a2)
{
  RandomBytes(a1, a2);
  ccsha512_di();
  return cchkdf();
}

_BYTE *RandomString(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  bytes = 0;
  RandomBytes(&bytes, 4uLL);
  v10 = &a5[a3 + bytes % (a4 - a3 + 1)];
  v11 = a5;
  if (v10 > a5)
  {
    v11 = a5;
    do
    {
      RandomBytes(&bytes, 4uLL);
      *v11++ = *(a1 + bytes % a2);
    }

    while (v11 < v10);
  }

  *v11 = 0;
  return a5;
}

uint64_t SDPFindAttribute(char *a1, unint64_t a2, unsigned __int8 *a3, void *a4, void *a5, char **a6)
{
  v21 = a1;
  v20 = 0;
  v18 = 0;
  v19 = 0;
  while (1)
  {
    result = SDPGetNext(a1, a2, &v20, &v19, &v18, &v21);
    if (result)
    {
      break;
    }

    if (v20 == 97 && v18 >= 1)
    {
      v12 = 0;
      v13 = v19;
      v14 = &v19[v18];
      v15 = v19;
      while (*v15 != 58)
      {
        ++v15;
        --v12;
        if (v15 >= v14)
        {
          goto LABEL_15;
        }
      }

      v16 = a3;
      while (v12)
      {
        v17 = *v16;
        if (*v13 != v17)
        {
          goto LABEL_15;
        }

        ++v16;
        ++v13;
        ++v12;
        if (!v17)
        {
          goto LABEL_16;
        }
      }

      if (a3[v15 - v19])
      {
        goto LABEL_15;
      }

LABEL_16:
      result = 0;
      *a4 = v15 + 1;
      *a5 = v14 - (v15 + 1);
      break;
    }

LABEL_15:
    a1 = v21;
  }

  if (a6)
  {
    *a6 = v21;
  }

  return result;
}

uint64_t SDPGetNext(char *a1, unint64_t a2, _BYTE *a3, void *a4, unsigned __int8 **a5, void *a6)
{
  if (a1 >= a2)
  {
    return 4294960569;
  }

  if ((a2 - a1) < 2)
  {
    return 4294960553;
  }

  if (a1[1] != 61)
  {
    return 4294960554;
  }

  v6 = a1 + 2;
  v7 = (a1 + 2);
  if ((a1 + 2) < a2)
  {
    v7 = (a1 + 2);
    while (1)
    {
      v8 = *v7;
      if (v8 == 10 || v8 == 13)
      {
        break;
      }

      if (++v7 == a2)
      {
        v7 = a2;
        break;
      }
    }
  }

  v10 = *a1;
  v11 = (v7 - v6);
  if (v7 < a2)
  {
    v12 = a2 - v7;
    while (1)
    {
      v13 = *v7;
      if (v13 != 13 && v13 != 10)
      {
        break;
      }

      ++v7;
      if (!--v12)
      {
        v7 = a2;
        break;
      }
    }
  }

  result = 0;
  *a3 = v10;
  *a4 = v6;
  *a5 = v11;
  *a6 = v7;
  return result;
}

uint64_t SDPFindMediaSection(char *a1, unint64_t a2, void *a3, void *a4, void *a5, unsigned __int8 **a6, void *a7)
{
  v20 = a1;
  v19 = 0;
  v17 = 0;
  v18 = 0;
  do
  {
    if (SDPGetNext(v20, a2, &v19, &v18, &v17, &v20))
    {
      return 4294960569;
    }
  }

  while (v19 != 109);
  v13 = v17;
  v14 = v18;
  v15 = v18 - 2;
  while (!SDPGetNext(v20, a2, &v19, &v18, &v17, &v20))
  {
    if (v19 == 109)
    {
      v20 = (v18 - 2);
      break;
    }
  }

  if (a3)
  {
    *a3 = v15;
  }

  if (a4)
  {
    *a4 = v20;
  }

  if (a5)
  {
    *a5 = v14;
  }

  if (a6)
  {
    *a6 = v13;
  }

  result = 0;
  if (a7)
  {
    *a7 = v20;
  }

  return result;
}

uint64_t SDPFindMediaSectionEx(char *a1, unint64_t a2, unsigned __int8 **a3, void *a4, unsigned __int8 **a5, void *a6, unsigned __int8 **a7, void *a8, unsigned __int8 **a9, void *a10, void *a11, void *a12, void *a13)
{
  v17 = a10;
  v18 = a9;
  v59 = a1;
  v58 = 0;
  v54 = 0;
  v55 = 0;
  do
  {
    v19 = SDPGetNext(v59, a2, &v58, &v55, &v54, &v59);
    v20 = v19;
  }

  while (!v19 && v58 != 109);
  if (!v19)
  {
    v52 = a4;
    v56 = 0;
    v57 = 0;
    v21 = v59;
    while (!SDPGetNext(v59, a2, &v58, &v57, &v56, &v59))
    {
      if (v58 == 109)
      {
        v59 = (v57 - 2);
        break;
      }
    }

    if (a11)
    {
      *a11 = v21;
    }

    v22 = a3;
    if (a12)
    {
      *a12 = v59 - v21;
    }

    v48 = a5;
    v49 = a6;
    if (a13)
    {
      *a13 = v59;
    }

    v23 = v54;
    v24 = v55;
    v25 = &v55[v54];
    v26 = MEMORY[0x1E69E9830];
    v27 = v52;
    v28 = v55;
    if (v54 >= 1)
    {
      do
      {
        v29 = *v28;
        if (v29 < 0)
        {
          if (!__maskrune(*v28, 0x4000uLL))
          {
            break;
          }
        }

        else if ((*(v26 + 4 * v29 + 60) & 0x4000) == 0)
        {
          break;
        }

        ++v28;
      }

      while (v28 < v25);
      v22 = a3;
    }

    v30 = v28;
    if (v28 < v25)
    {
      v31 = &v24[v23] - v28;
      v30 = v28;
      do
      {
        v32 = *v30;
        if (v32 < 0)
        {
          if (__maskrune(*v30, 0x4000uLL))
          {
            goto LABEL_30;
          }
        }

        else if ((*(v26 + 4 * v32 + 60) & 0x4000) != 0)
        {
          goto LABEL_30;
        }

        ++v30;
        --v31;
      }

      while (v31);
      v30 = &v24[v23];
LABEL_30:
      v17 = a10;
      v18 = a9;
      v27 = v52;
      v22 = a3;
    }

    if (v22)
    {
      *v22 = v28;
    }

    if (v27)
    {
      *v27 = v30 - v28;
    }

    if (v30 < v25)
    {
      v33 = &v24[v23] - v30;
      do
      {
        v34 = *v30;
        if (v34 < 0)
        {
          if (!__maskrune(*v30, 0x4000uLL))
          {
            break;
          }
        }

        else if ((*(v26 + 4 * v34 + 60) & 0x4000) == 0)
        {
          break;
        }

        ++v30;
        --v33;
      }

      while (v33);
    }

    v35 = v30;
    if (v30 < v25)
    {
      v36 = &v24[v23] - v30;
      v35 = v30;
      do
      {
        v37 = *v35;
        if (v37 < 0)
        {
          if (__maskrune(*v35, 0x4000uLL))
          {
            break;
          }
        }

        else if ((*(v26 + 4 * v37 + 60) & 0x4000) != 0)
        {
          break;
        }

        ++v35;
        --v36;
      }

      while (v36);
    }

    if (v48)
    {
      *v48 = v30;
    }

    if (v49)
    {
      *v49 = v35 - v30;
    }

    if (v35 < v25)
    {
      v38 = &v24[v23] - v35;
      do
      {
        v39 = *v35;
        if (v39 < 0)
        {
          if (!__maskrune(*v35, 0x4000uLL))
          {
            break;
          }
        }

        else if ((*(v26 + 4 * v39 + 60) & 0x4000) == 0)
        {
          break;
        }

        ++v35;
        --v38;
      }

      while (v38);
    }

    v40 = v35;
    if (v35 < v25)
    {
      v41 = &v24[v23] - v35;
      v40 = v35;
      do
      {
        v42 = *v40;
        if (v42 < 0)
        {
          if (__maskrune(*v40, 0x4000uLL))
          {
            break;
          }
        }

        else if ((*(v26 + 4 * v42 + 60) & 0x4000) != 0)
        {
          break;
        }

        ++v40;
        --v41;
      }

      while (v41);
    }

    if (a7)
    {
      *a7 = v35;
    }

    if (a8)
    {
      *a8 = v40 - v35;
    }

    if (v40 < v25)
    {
      for (i = &v24[v23] - v40; i; --i)
      {
        v44 = *v40;
        if (v44 < 0)
        {
          if (!__maskrune(*v40, 0x4000uLL))
          {
            break;
          }
        }

        else if ((*(v26 + 4 * v44 + 60) & 0x4000) == 0)
        {
          break;
        }

        ++v40;
      }
    }

    while (1)
    {
      v45 = v25;
      if (v40 >= v25)
      {
        break;
      }

      --v25;
      v46 = *(v45 - 1);
      if (v46 < 0)
      {
        if (!__maskrune(*(v45 - 1), 0x4000uLL))
        {
          break;
        }
      }

      else if ((*(v26 + 4 * v46 + 60) & 0x4000) == 0)
      {
        break;
      }
    }

    if (v18)
    {
      *v18 = v40;
    }

    if (v17)
    {
      *v17 = v45 - v40;
    }
  }

  return v20;
}

uint64_t SDPFindParameter(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 **a4, void *a5, unsigned __int8 **a6)
{
  v12 = a2 - 1;
  v13 = MEMORY[0x1E69E9830];
LABEL_2:
  while (2)
  {
    v14 = a1;
    if (a1 < a2)
    {
      v14 = a1;
      do
      {
        v15 = *v14;
        if (v15 < 0)
        {
          if (!__maskrune(*v14, 0x4000uLL))
          {
            goto LABEL_10;
          }
        }

        else if ((*(v13 + 4 * v15 + 60) & 0x4000) == 0)
        {
          goto LABEL_10;
        }

        ++v14;
      }

      while (v14 != a2);
      v14 = a2;
    }

LABEL_10:
    if (v14 == a2)
    {
      v28 = 4294960569;
      result = 4294960569;
      if (!a6)
      {
        return result;
      }

      goto LABEL_39;
    }

    if (v14 >= a2)
    {
      v17 = 0;
      v16 = v14;
    }

    else if (*v14 == 61)
    {
      v16 = v14;
      v17 = 1;
    }

    else
    {
      v18 = v12 - v14;
      v16 = v14;
      while (v18)
      {
        v19 = *++v16;
        --v18;
        if (v19 == 61)
        {
          goto LABEL_20;
        }
      }

      v16 = a2;
LABEL_20:
      v17 = v16 < a2;
    }

    v20 = &v16[v17];
    if (v20 >= a2)
    {
      v23 = 0;
      v21 = v20;
    }

    else
    {
      v21 = v20;
      while (1)
      {
        v22 = *v21;
        if (v22 == 59)
        {
          break;
        }

        if (++v21 >= a2)
        {
          v21 = a2;
          break;
        }
      }

      v23 = v22 == 59;
    }

    v24 = v16 - v14;
    a1 = &v21[v23];
    v25 = (v14 - v16);
    v26 = a3;
    while (v25)
    {
      v27 = *v26;
      if (*v14 != v27)
      {
        goto LABEL_2;
      }

      ++v26;
      ++v14;
      ++v25;
      if (!v27)
      {
        goto LABEL_34;
      }
    }

    if (a3[v24])
    {
      continue;
    }

    break;
  }

LABEL_34:
  if (a4)
  {
    *a4 = v20;
  }

  if (a5)
  {
    *a5 = v21 - v20;
  }

  v28 = 0;
  result = 0;
  if (a6)
  {
LABEL_39:
    *a6 = a1;
    return v28;
  }

  return result;
}

uint64_t SDPFindSessionSection(char *a1, unint64_t a2, char **a3, void *a4, void *a5)
{
  v14 = a1;
  v13 = 0;
  v12 = 0;
  while (!SDPGetNext(v14, a2, &v13, &v12, &v11, &v14))
  {
    if (v13 == 109)
    {
      v14 = (v12 - 2);
      break;
    }
  }

  if (a3)
  {
    *a3 = a1;
  }

  if (a4)
  {
    *a4 = v14;
  }

  if (a5)
  {
    *a5 = v14;
  }

  return 0;
}

uint64_t SDPFindType(char *a1, unint64_t a2, unsigned __int8 a3, void *a4, void *a5, void *a6)
{
  v15 = a1;
  v14 = 0;
  v10 = a3;
  v12 = 0;
  v13 = 0;
  while (1)
  {
    result = SDPGetNext(v15, a2, &v14, &v13, &v12, &v15);
    if (result)
    {
      break;
    }

    if (v14 == v10)
    {
      if (a4)
      {
        *a4 = v13;
      }

      result = 0;
      if (a5)
      {
        *a5 = v12;
      }

      break;
    }
  }

  if (a6)
  {
    *a6 = v15;
  }

  return result;
}

uint64_t SDPGetNextAttribute(char *a1, unint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v22 = a1;
  v21 = 0;
  v19 = 0;
  v20 = 0;
  do
  {
    result = SDPGetNext(v22, a2, &v21, &v20, &v19, &v22);
  }

  while (!result && v21 != 97);
  if (result)
  {
    goto LABEL_18;
  }

  v14 = v20;
  v15 = &v20[v19];
  if (v19 < 1)
  {
    v16 = 0;
    v17 = v20;
    if (!a3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v16 = 1;
    v17 = v20;
    while (*v17 != 58)
    {
      if (++v17 >= v15)
      {
        v16 = 0;
        break;
      }
    }

    if (!a3)
    {
      goto LABEL_12;
    }
  }

  *a3 = v20;
LABEL_12:
  if (a4)
  {
    *a4 = v17 - v14;
  }

  v18 = &v17[v16];
  if (a5)
  {
    *a5 = v18;
  }

  if (a6)
  {
    *a6 = v15 - v18;
  }

LABEL_18:
  if (a7)
  {
    *a7 = v22;
  }

  return result;
}

uint64_t SDPScanFAttribute(char *a1, unint64_t a2, char **a3, unsigned __int8 *a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v11 = 0;
  v12 = 0;
  if (SDPFindAttribute(a1, a2, a4, &v12, &v11, a3))
  {
    return 0;
  }

  else
  {
    return VSNScanF(v12, v11, a5, &a9);
  }
}

uint64_t HMAC_SHA1_Init(CC_SHA1_CTX *c, unsigned __int8 *a2, unint64_t a3)
{
  v3 = a3;
  v11 = *MEMORY[0x1E69E9840];
  if (a3 < 0x41)
  {
    if (!a3)
    {
LABEL_7:
      memset(&data[v3], 54, 64 - v3);
      memset(&c[1] + v3, 92, 64 - v3);
      goto LABEL_8;
    }
  }

  else
  {
    CC_SHA1_Init(c);
    CC_SHA1_Update(c, a2, v3);
    a2 = md;
    CC_SHA1_Final(md, c);
    v3 = 20;
  }

  v6 = 0;
  do
  {
    v7 = a2[v6];
    data[v6] = v7 ^ 0x36;
    *(&c[1].h0 + v6++) = v7 ^ 0x5C;
  }

  while (v3 != v6);
  if (v3 <= 0x3F)
  {
    goto LABEL_7;
  }

LABEL_8:
  CC_SHA1_Init(c);
  return CC_SHA1_Update(c, data, 0x40u);
}

uint64_t HMAC_SHA1_Final(CC_SHA1_CTX *c, unsigned __int8 *md)
{
  CC_SHA1_Final(md, c);
  CC_SHA1_Init(c);
  CC_SHA1_Update(c, &c[1], 0x40u);
  CC_SHA1_Update(c, md, 0x14u);

  return CC_SHA1_Final(md, c);
}

void *PBKDF2_HMAC_SHA1(char *__s, size_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  v27 = *MEMORY[0x1E69E9840];
  if (a2 == -1)
  {
    v7 = strlen(__s);
  }

  if (a4 == -1)
  {
    LODWORD(a4) = strlen(a3);
  }

  v9 = 0;
  data = 0x1000000;
  memset(&c, 0, sizeof(c));
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = 32;
  do
  {
    HMAC_SHA1_Init(&c, __s, v7);
    CC_SHA1_Update(&c, a3, a4);
    CC_SHA1_Update(&c, &data, 4u);
    HMAC_SHA1_Final(&c, __src);
    for (i = 1; i != 4096; ++i)
    {
      HMAC_SHA1_Init(&c, __s, v7);
      if (i == 1)
      {
        v12 = __src;
      }

      else
      {
        v12 = md;
      }

      CC_SHA1_Update(&c, v12, 0x14u);
      HMAC_SHA1_Final(&c, md);
      for (j = 0; j != 20; ++j)
      {
        __src[j] ^= md[j];
      }
    }

    if (v10 >= 0x14)
    {
      v14 = 20;
    }

    else
    {
      v14 = v10;
    }

    result = memcpy((a5 + v9), __src, v14);
    v9 += v14;
    v10 -= v14;
    v16 = 3;
    do
    {
      if (v16 == -1)
      {
        break;
      }

      v17 = ++md[v16-- - 4];
    }

    while ((v17 & 0x100) != 0);
  }

  while (v10);
  return result;
}

uint64_t srp6_client_respond(uint64_t a1, void **a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *a2;
  if (!*a2)
  {
    v4 = malloc_type_malloc(0x18uLL, 0x1010040E2407E0AuLL);
    if (v4)
    {
      *v4 = &cstr_empty_string;
      v4[1] = 0;
      *(v4 + 4) = 1;
    }

    *a2 = v4;
  }

  cstr_set_length(v4, **(a1 + 144));
  (*(*(a1 + 144) + 32))(**a2, *(a1 + 104));
  (*(*(a1 + 144) + 24))(*(a1 + 104) + 208, **a2, *(*a2 + 2));
  (*(*(a1 + 144) + 24))(*(a1 + 104) + 208, *(a1 + 104) + 416, *(*(a1 + 144) + 8));
  return 0;
}

uint64_t srp6_client_verify(uint64_t a1, const void *a2, int a3)
{
  v8 = *MEMORY[0x1E69E9840];
  (*(*(a1 + 144) + 32))(__s1, *(a1 + 104) + 208);
  if (**(a1 + 144) != a3)
  {
    return 0xFFFFFFFFLL;
  }

  result = memcmp(__s1, a2, a3);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t srp6a_client_key(uint64_t a1, void **a2, const void *a3, int a4)
{
  LODWORD(v4) = a4;
  v30 = *MEMORY[0x1E69E9840];
  memset(v25, 0, sizeof(v25));
  (*(*(a1 + 144) + 16))(v25);
  v8 = malloc_type_malloc(0x18uLL, 0x1010040E2407E0AuLL);
  v9 = v8;
  if (v8)
  {
    *v8 = &cstr_empty_string;
    v8[1] = 0;
    *(v8 + 4) = 1;
  }

  BigIntegerToCstr(*(a1 + 16), v8);
  (*(*(a1 + 144) + 24))(v25, *v9, *(v9 + 2));
  v10 = *(a1 + 24);
  if ((*(a1 + 4) & 2) != 0)
  {
    BigIntegerToCstrEx(v10, v9, *(v9 + 2));
  }

  else
  {
    BigIntegerToCstr(v10, v9);
  }

  (*(*(a1 + 144) + 24))(v25, *v9, *(v9 + 2));
  (*(*(a1 + 144) + 32))(v28, v25);
  cstr_free(v9);
  LODWORD(v26[0]) = 0;
  CCBigNumFromData();
  if (!MEMORY[0x193B04B90]())
  {
    goto LABEL_19;
  }

  v11 = CCBigNumBitCount();
  v12 = v11 + 7;
  if (v11 < -7)
  {
    v12 = v11 + 14;
  }

  v13 = v12 >> 3;
  if (v12 >> 3 < v4)
  {
    goto LABEL_19;
  }

  memset(v26, 0, sizeof(v26));
  (*(*(a1 + 144) + 16))(v26);
  v14 = malloc_type_malloc(0x18uLL, 0x1010040E2407E0AuLL);
  v15 = v14;
  if (v14)
  {
    *v14 = &cstr_empty_string;
    v14[1] = 0;
    *(v14 + 4) = 1;
  }

  v16 = *(a1 + 56);
  if ((*(a1 + 4) & 2) == 0)
  {
    BigIntegerToCstr(v16, v15);
    (*(*(a1 + 144) + 24))(v26, *v15, *(v15 + 2));
LABEL_16:
    v4 = v4;
    (*(*(a1 + 144) + 24))(v26, a3, v4);
    goto LABEL_17;
  }

  BigIntegerToCstrEx(v16, v15, v13);
  (*(*(a1 + 144) + 24))(v26, *v15, *(v15 + 2));
  v17 = v13 - v4;
  if (v13 <= v4)
  {
    goto LABEL_16;
  }

  v18 = v17;
  v4 = v4;
  memcpy((*v15 + v17), a3, v4);
  bzero(*v15, v18);
  (*(*(a1 + 144) + 24))(v26, *v15, v13);
LABEL_17:
  (*(*(a1 + 144) + 32))(v29, v26);
  v27 = 0;
  *(a1 + 72) = CCBigNumFromData();
  (*(*(a1 + 144) + 24))(*(a1 + 104), a3, v4);
  v27 = 0;
  v19 = CCBigNumFromData();
  if ((MEMORY[0x193B04B80](v19, *(a1 + 16)) & 0x80000000) == 0 || !MEMORY[0x193B04B90](v19, 0))
  {
    CCBigNumFree();
    cstr_clear_free(v15);
LABEL_19:
    v20 = 0xFFFFFFFFLL;
    goto LABEL_20;
  }

  BigIntegerFromInt();
  *(a1 + 80) = BigIntegerFromInt();
  CCBigNumSub();
  CCBigNumMul();
  CCBigNumAdd();
  CCBigNumMod();
  CCBigNumMul();
  CCBigNumAdd();
  CCBigNumModExp();
  CCBigNumFree();
  CCBigNumFree();
  BigIntegerToCstr(*(a1 + 80), v15);
  v22 = *(a1 + 144);
  if (*(v22 + 8) == 40)
  {
    t_mgf1((*(a1 + 104) + 416), *v15, *(v15 + 2));
  }

  else
  {
    (*(v22 + 16))(v26);
    (*(*(a1 + 144) + 24))(v26, *v15, *(v15 + 2));
    (*(*(a1 + 144) + 32))(*(a1 + 104) + 416, v26);
  }

  cstr_clear_free(v15);
  (*(*(a1 + 144) + 24))(*(a1 + 104), *(a1 + 104) + 416, *(*(a1 + 144) + 8));
  v23 = *(a1 + 88);
  if (*(v23 + 8) >= 1)
  {
    (*(*(a1 + 144) + 24))(*(a1 + 104), *v23);
  }

  if (a2)
  {
    v24 = *a2;
    if (!*a2)
    {
      v24 = malloc_type_malloc(0x18uLL, 0x1010040E2407E0AuLL);
      if (v24)
      {
        *v24 = &cstr_empty_string;
        v24[1] = 0;
        *(v24 + 4) = 1;
      }

      *a2 = v24;
    }

    cstr_setn(v24, (*(a1 + 104) + 416), *(*(a1 + 144) + 8));
  }

  v20 = 0;
LABEL_20:
  CCBigNumFree();
  return v20;
}

uint64_t srp6_client_genpub(uint64_t *a1, void ***a2)
{
  CCBigNumBitCount();
  if (a2)
  {
    v4 = *a2;
    if (!*a2)
    {
      v5 = malloc_type_malloc(0x18uLL, 0x1010040E2407E0AuLL);
      v4 = v5;
      if (v5)
      {
        *v5 = &cstr_empty_string;
        v5[1] = 0;
        *(v5 + 4) = 1;
      }

      *a2 = v5;
    }
  }

  else
  {
    v6 = malloc_type_malloc(0x18uLL, 0x1010040E2407E0AuLL);
    v4 = v6;
    if (v6)
    {
      *v6 = &cstr_empty_string;
      v6[1] = 0;
      *(v6 + 4) = 1;
    }
  }

  v7 = CCBigNumBitCount();
  v8 = v7 + 7;
  if (v7 < -7)
  {
    v8 = v7 + 14;
  }

  cstr_set_length(v4, v8 >> 3);
  RandomBytes(*v4, 0x20uLL);
  a1[8] = CCBigNumFromData();
  CCBigNumBitCount();
  CCBigNumAddI();
  a1[7] = BigIntegerFromInt();
  CCBigNumModExp();
  BigIntegerToCstr(a1[7], v4);
  (*(a1[18] + 24))(a1[13], *v4, *(v4 + 2));
  (*(a1[18] + 24))(a1[13] + 208, *v4, *(v4 + 2));
  if (!a2)
  {
    cstr_clear_free(v4);
  }

  return 0;
}

uint64_t srp6_client_passwd(uint64_t a1, uint64_t a2, int a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  (*(*(a1 + 144) + 16))(&v8);
  (*(*(a1 + 144) + 24))(&v8, **(a1 + 8), *(*(a1 + 8) + 8));
  (*(*(a1 + 144) + 24))(&v8, ":", 1);
  (*(*(a1 + 144) + 24))(&v8, a2, a3);
  (*(*(a1 + 144) + 32))(v21, &v8);
  (*(*(a1 + 144) + 16))(&v8);
  (*(*(a1 + 144) + 24))(&v8, **(a1 + 32), *(*(a1 + 32) + 8));
  (*(*(a1 + 144) + 24))(&v8, v21, **(a1 + 144));
  (*(*(a1 + 144) + 32))(v21, &v8);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  v6 = (*(*(a1 + 96) + 32))(a1, v21, **(a1 + 144));
  __memset_chk();
  return v6;
}

uint64_t srp6_client_auth(uint64_t a1)
{
  *(a1 + 48) = CCBigNumFromData();
  *(a1 + 40) = BigIntegerFromInt();
  CCBigNumModExp();
  return 0;
}

uint64_t srp6_client_params(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v20 = *MEMORY[0x1E69E9840];
  memset(v17, 0, sizeof(v17));
  (*(*(a1 + 144) + 16))(v17);
  (*(*(a1 + 144) + 24))(v17, a2, a3);
  (*(*(a1 + 144) + 32))(v19, v17);
  (*(*(a1 + 144) + 16))(v17);
  (*(*(a1 + 144) + 24))(v17, a4, a5);
  (*(*(a1 + 144) + 32))(v18, v17);
  v14 = *(a1 + 144);
  if (*v14 >= 1)
  {
    v15 = 0;
    do
    {
      v19[v15] ^= v18[v15];
      ++v15;
    }

    while (v15 < *v14);
  }

  (*(v14 + 24))(*(a1 + 104), v19);
  (*(*(a1 + 144) + 16))(v17);
  (*(*(a1 + 144) + 24))(v17, **(a1 + 8), *(*(a1 + 8) + 8));
  (*(*(a1 + 144) + 32))(v19, v17);
  (*(*(a1 + 144) + 24))(*(a1 + 104), v19, **(a1 + 144));
  (*(*(a1 + 144) + 24))(*(a1 + 104), a6, a7);
  return 0;
}

uint64_t srp6_client_finish(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1)
  {
    v1[28] = 0u;
    v1[29] = 0u;
    v1[26] = 0u;
    v1[27] = 0u;
    v1[24] = 0u;
    v1[25] = 0u;
    v1[22] = 0u;
    v1[23] = 0u;
    v1[20] = 0u;
    v1[21] = 0u;
    v1[18] = 0u;
    v1[19] = 0u;
    v1[16] = 0u;
    v1[17] = 0u;
    v1[14] = 0u;
    v1[15] = 0u;
    v1[12] = 0u;
    v1[13] = 0u;
    v1[10] = 0u;
    v1[11] = 0u;
    v1[8] = 0u;
    v1[9] = 0u;
    v1[6] = 0u;
    v1[7] = 0u;
    v1[4] = 0u;
    v1[5] = 0u;
    v1[2] = 0u;
    v1[3] = 0u;
    *v1 = 0u;
    v1[1] = 0u;
    free(*(a1 + 104));
  }

  return 0;
}

uint64_t srp6a_client_init(void *a1)
{
  *a1 = 0x30000000CLL;
  a1[13] = malloc_type_malloc(0x1E0uLL, 0x1000040048C4DA3uLL);
  (*(a1[18] + 16))();
  (*(a1[18] + 16))(a1[13] + 208);
  return 0;
}

uint64_t srp6_server_respond(uint64_t a1, void ***a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *a2;
  if (!*a2)
  {
    v4 = malloc_type_malloc(0x18uLL, 0x1010040E2407E0AuLL);
    if (v4)
    {
      *v4 = &cstr_empty_string;
      v4[1] = 0;
      *(v4 + 4) = 1;
    }

    *a2 = v4;
  }

  cstr_set_length(v4, **(a1 + 144));
  memcpy(**a2, (*(a1 + 104) + 896), **(a1 + 144));
  return 0;
}

uint64_t srp6_server_verify(uint64_t a1, const void *a2, int a3)
{
  v11 = *MEMORY[0x1E69E9840];
  (*(*(a1 + 144) + 32))(__s1, *(a1 + 104) + 624);
  v6 = *(a1 + 144);
  if (*v6 == a3 && !memcmp(__s1, a2, a3))
  {
    (*(v6 + 32))(*(a1 + 104) + 896, *(a1 + 104) + 416);
  }

  else
  {
    (*(v6 + 32))(__s1, *(a1 + 104) + 208);
    v7 = *(a1 + 144);
    v8 = *v7;
    if (*v7 != a3 || memcmp(__s1, a2, a3))
    {
      return 0xFFFFFFFFLL;
    }

    (v7[3])(*(a1 + 104), __s1, v8);
    (*(*(a1 + 144) + 24))(*(a1 + 104), *(a1 + 104) + 832, *(*(a1 + 144) + 8));
    (*(*(a1 + 144) + 32))(*(a1 + 104) + 896, *(a1 + 104));
  }

  return 0;
}

uint64_t srp6_server_key(uint64_t a1, void **a2, const void *a3, int a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = CCBigNumBitCount();
  v9 = v8 + 7;
  if (v8 < -7)
  {
    v9 = v8 + 14;
  }

  v10 = v9 >> 3;
  if (v9 >> 3 < a4)
  {
    return 0xFFFFFFFFLL;
  }

  memset(v20, 0, sizeof(v20));
  (*(*(a1 + 144) + 24))(*(a1 + 104) + 208, a3, a4);
  v11 = malloc_type_malloc(0x18uLL, 0x1010040E2407E0AuLL);
  v12 = v11;
  if (v11)
  {
    *v11 = &cstr_empty_string;
    v11[1] = 0;
    *(v11 + 4) = 1;
  }

  BigIntegerToCstr(*(a1 + 56), v11);
  (*(*(a1 + 144) + 24))(*(a1 + 104) + 208, *v12, *(v12 + 2));
  (*(*(a1 + 144) + 24))(*(a1 + 104), a3, a4);
  (*(*(a1 + 144) + 24))(*(a1 + 104) + 416, a3, a4);
  (*(*(a1 + 144) + 16))(v20);
  if ((*(a1 + 4) & 2) != 0)
  {
    v13 = v10 - a4;
    if (v10 <= a4)
    {
      (*(*(a1 + 144) + 24))(v20, a3, a4);
      if (*(v12 + 2) >= v10)
      {
        goto LABEL_12;
      }
    }

    else
    {
      cstr_set_length(v12, v10);
      memcpy((*v12 + v13), a3, a4);
      bzero(*v12, v13);
      (*(*(a1 + 144) + 24))(v20, *v12, v10);
    }

    BigIntegerToCstrEx(*(a1 + 56), v12, v10);
    goto LABEL_12;
  }

  (*(*(a1 + 144) + 24))(v20, a3, a4);
LABEL_12:
  (*(*(a1 + 144) + 24))(v20, *v12, *(v12 + 2));
  (*(*(a1 + 144) + 32))(v22, v20);
  v21 = 0;
  *(a1 + 72) = CCBigNumFromData();
  v14 = BigIntegerFromInt();
  CCBigNumModExp();
  v21 = 0;
  CCBigNumFromData();
  v15 = BigIntegerFromInt();
  CCBigNumMulMod();
  CCBigNumFree();
  if (MEMORY[0x193B04B90](v15, 1) <= 0 || (CCBigNumAddI(), !MEMORY[0x193B04B80](v14, *(a1 + 16))))
  {
    CCBigNumFree();
    CCBigNumFree();
    cstr_free(v12);
    return 0xFFFFFFFFLL;
  }

  *(a1 + 80) = BigIntegerFromInt();
  CCBigNumModExp();
  CCBigNumFree();
  CCBigNumFree();
  BigIntegerToCstr(*(a1 + 80), v12);
  v16 = *(a1 + 144);
  if (*(v16 + 8) == 40)
  {
    t_mgf1((*(a1 + 104) + 832), *v12, *(v12 + 2));
  }

  else
  {
    (*(v16 + 16))(v20);
    (*(*(a1 + 144) + 24))(v20, *v12, *(v12 + 2));
    (*(*(a1 + 144) + 32))(*(a1 + 104) + 832, v20);
  }

  cstr_clear_free(v12);
  (*(*(a1 + 144) + 24))(*(a1 + 104) + 208, *(a1 + 104) + 832, *(*(a1 + 144) + 8));
  v18 = *(a1 + 88);
  if (*(v18 + 8) >= 1)
  {
    (*(*(a1 + 144) + 24))(*(a1 + 104) + 208, *v18);
  }

  (*(*(a1 + 144) + 24))(*(a1 + 104) + 416, *(a1 + 104) + 832, *(*(a1 + 144) + 8));
  (*(*(a1 + 144) + 24))(*(a1 + 104) + 624, *(a1 + 104) + 832, *(*(a1 + 144) + 8));
  if (a2)
  {
    v19 = *a2;
    if (!*a2)
    {
      v19 = malloc_type_malloc(0x18uLL, 0x1010040E2407E0AuLL);
      if (v19)
      {
        *v19 = &cstr_empty_string;
        v19[1] = 0;
        *(v19 + 4) = 1;
      }

      *a2 = v19;
    }

    cstr_setn(v19, (*(a1 + 104) + 832), *(*(a1 + 144) + 8));
  }

  return 0;
}

uint64_t srp6_server_passwd(uint64_t a1, uint64_t a2, int a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  (*(*(a1 + 144) + 16))(&v7);
  (*(*(a1 + 144) + 24))(&v7, **(a1 + 8), *(*(a1 + 8) + 8));
  (*(*(a1 + 144) + 24))(&v7, ":", 1);
  (*(*(a1 + 144) + 24))(&v7, a2, a3);
  (*(*(a1 + 144) + 32))(v21, &v7);
  (*(*(a1 + 144) + 16))(&v7);
  (*(*(a1 + 144) + 24))(&v7, **(a1 + 32), *(*(a1 + 32) + 8));
  (*(*(a1 + 144) + 24))(&v7, v21, **(a1 + 144));
  (*(*(a1 + 144) + 32))(v21, &v7);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  v20 = 0;
  *(a1 + 48) = CCBigNumFromData();
  __memset_chk();
  *(a1 + 40) = BigIntegerFromInt();
  CCBigNumModExp();
  return 0;
}

uint64_t srp6_server_params(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v20 = *MEMORY[0x1E69E9840];
  memset(v17, 0, sizeof(v17));
  (*(*(a1 + 144) + 16))(v17);
  (*(*(a1 + 144) + 24))(v17, a2, a3);
  (*(*(a1 + 144) + 32))(v19, v17);
  (*(*(a1 + 144) + 16))(v17);
  (*(*(a1 + 144) + 24))(v17, a4, a5);
  (*(*(a1 + 144) + 32))(v18, v17);
  v14 = *(a1 + 144);
  if (*v14 >= 1)
  {
    v15 = 0;
    do
    {
      v19[v15] ^= v18[v15];
      ++v15;
    }

    while (v15 < *v14);
  }

  (*(v14 + 24))(*(a1 + 104) + 208, v19);
  (*(*(a1 + 144) + 16))(v17);
  (*(*(a1 + 144) + 24))(v17, **(a1 + 8), *(*(a1 + 8) + 8));
  (*(*(a1 + 144) + 32))(v19, v17);
  (*(*(a1 + 144) + 24))(*(a1 + 104) + 208, v19, **(a1 + 144));
  (*(*(a1 + 144) + 24))(*(a1 + 104) + 208, a6, a7);
  return 0;
}

uint64_t srp6_server_finish(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    bzero(v2, 0x3C0uLL);
    free(*(a1 + 104));
  }

  return 0;
}

uint64_t srp6a_server_genpub(uint64_t a1, void ***a2)
{
  v17 = *MEMORY[0x1E69E9840];
  memset(v14, 0, sizeof(v14));
  (*(*(a1 + 144) + 16))(v14);
  v4 = malloc_type_malloc(0x18uLL, 0x1010040E2407E0AuLL);
  v5 = v4;
  if (v4)
  {
    *v4 = &cstr_empty_string;
    v4[1] = 0;
    *(v4 + 4) = 1;
  }

  BigIntegerToCstr(*(a1 + 16), v4);
  (*(*(a1 + 144) + 24))(v14, *v5, *(v5 + 2));
  v6 = *(a1 + 24);
  if ((*(a1 + 4) & 2) != 0)
  {
    BigIntegerToCstrEx(v6, v5, *(v5 + 2));
  }

  else
  {
    BigIntegerToCstr(v6, v5);
  }

  (*(*(a1 + 144) + 24))(v14, *v5, *(v5 + 2));
  (*(*(a1 + 144) + 32))(v16, v14);
  cstr_free(v5);
  v15 = 0;
  CCBigNumFromData();
  if (MEMORY[0x193B04B90]())
  {
    CCBigNumBitCount();
    if (a2)
    {
      v7 = *a2;
      if (!*a2)
      {
        v8 = malloc_type_malloc(0x18uLL, 0x1010040E2407E0AuLL);
        v7 = v8;
        if (v8)
        {
          *v8 = &cstr_empty_string;
          v8[1] = 0;
          *(v8 + 4) = 1;
        }

        *a2 = v8;
      }
    }

    else
    {
      v10 = malloc_type_malloc(0x18uLL, 0x1010040E2407E0AuLL);
      v7 = v10;
      if (v10)
      {
        *v10 = &cstr_empty_string;
        v10[1] = 0;
        *(v10 + 4) = 1;
      }
    }

    v11 = CCBigNumBitCount();
    v12 = v11 + 7;
    if (v11 < -7)
    {
      v12 = v11 + 14;
    }

    cstr_set_length(v7, v12 >> 3);
    RandomBytes(*v7, 0x20uLL);
    v15 = 0;
    *(a1 + 64) = CCBigNumFromData();
    *(a1 + 56) = BigIntegerFromInt();
    CCBigNumMul();
    CCBigNumModExp();
    CCBigNumAdd();
    CCBigNumMod();
    BigIntegerToCstr(*(a1 + 56), v7);
    (*(*(a1 + 144) + 24))(*(a1 + 104) + 624, *v7, *(v7 + 2));
    v9 = 0;
    if (!a2)
    {
      cstr_clear_free(v7);
      v9 = 0;
    }
  }

  else
  {
    v9 = 0xFFFFFFFFLL;
  }

  CCBigNumFree();
  return v9;
}

uint64_t srp6a_server_init(void *a1)
{
  *a1 = 0x30000001CLL;
  a1[13] = malloc_type_malloc(0x3C0uLL, 0x100004020E4CBADuLL);
  (*(a1[18] + 16))();
  (*(a1[18] + 16))(a1[13] + 208);
  (*(a1[18] + 16))(a1[13] + 416);
  (*(a1[18] + 16))(a1[13] + 624);
  return 0;
}

void *SRP_new(uint64_t a1)
{
  v2 = malloc_type_malloc(0x98uLL, 0x10E004039FB2966uLL);
  v3 = v2;
  if (v2)
  {
    v2[1] = 0;
    v4 = malloc_type_malloc(0x18uLL, 0x1010040E2407E0AuLL);
    if (v4)
    {
      *v4 = &cstr_empty_string;
      v4[1] = 0;
      *(v4 + 4) = 1;
    }

    v3[1] = v4;
    *(v3 + 1) = 0u;
    *(v3 + 2) = 0u;
    *(v3 + 3) = 0u;
    *(v3 + 4) = 0u;
    v3[10] = 0;
    v3[14] = 0;
    v3[15] = 0;
    v5 = malloc_type_malloc(0x18uLL, 0x1010040E2407E0AuLL);
    if (v5)
    {
      *v5 = &cstr_empty_string;
      v5[1] = 0;
      *(v5 + 4) = 1;
    }

    v3[11] = v5;
    v3[12] = a1;
    v3[13] = 0;
    v3[16] = 0;
    v3[17] = 0;
    v3[18] = &kSRPHashDescriptor_SHA512;
    v6 = *(a1 + 8);
    if (v6 && v6(v3))
    {
      free(v3);
      return 0;
    }
  }

  return v3;
}

void SRP_free(void *a1)
{
  v2 = *(a1[12] + 16);
  if (v2)
  {
    v2(a1);
  }

  v3 = a1[1];
  if (v3)
  {
    cstr_clear_free(v3);
  }

  if (a1[2])
  {
    CCBigNumFree();
  }

  if (a1[3])
  {
    CCBigNumFree();
  }

  v4 = a1[4];
  if (v4)
  {
    cstr_clear_free(v4);
  }

  if (a1[5])
  {
    CCBigNumFree();
  }

  if (a1[6])
  {
    CCBigNumFree();
  }

  if (a1[7])
  {
    CCBigNumFree();
  }

  if (a1[8])
  {
    CCBigNumFree();
  }

  if (a1[9])
  {
    CCBigNumFree();
  }

  if (a1[10])
  {
    CCBigNumFree();
  }

  v5 = a1[11];
  if (v5)
  {
    cstr_clear_free(v5);
  }

  free(a1);
}

uint64_t SRP_set_user_raw(uint64_t a1, const void *a2, int a3)
{
  cstr_setn(*(a1 + 8), a2, a3);
  result = *(a1 + 136);
  if (result)
  {
    v5 = *(*result + 24);

    return v5();
  }

  return result;
}

uint64_t SRP_set_params(uint64_t a1, const void *a2, uint64_t a3)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 16) = CCBigNumFromData();
  if (*(a1 + 4))
  {
    *(a1 + 120) = 0;
  }

  *(a1 + 24) = CCBigNumFromData();
  v6 = *(a1 + 32);
  if (!v6)
  {
    v6 = malloc_type_malloc(0x18uLL, 0x1010040E2407E0AuLL);
    if (v6)
    {
      *v6 = &cstr_empty_string;
      v6[1] = 0;
      *(v6 + 4) = 1;
    }

    *(a1 + 32) = v6;
  }

  cstr_setn(v6, a2, a3);
  if (CCBigNumBitCount() < 512)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a1 + 128);
  if (!v8 || (result = v8(a1, &kSRPModulus3072, 384, &kSRPGenerator5, 1), !result))
  {
    v9 = *(*(a1 + 96) + 24);

    return v9(a1, &kSRPModulus3072, 384, &kSRPGenerator5, 1, a2, a3);
  }

  return result;
}

uint64_t t_mgf1(unsigned __int8 *a1, const void *a2, CC_LONG a3)
{
  v6 = 0;
  memset(&c, 0, sizeof(c));
  v7 = 40;
  do
  {
    data = bswap32(v6);
    CC_SHA1_Init(&c);
    CC_SHA1_Update(&c, a2, a3);
    CC_SHA1_Update(&c, &data, 4u);
    result = CC_SHA1_Final(a1, &c);
    ++v6;
    a1 += 20;
    v7 -= 20;
  }

  while (v7);
  return result;
}

uint64_t SRPCreate_corecrypto(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x38uLL, 0x103004063A0F53DuLL);
  if (!v2)
  {
    return 4294960568;
  }

  v3 = v2;
  result = 0;
  *a1 = v3;
  return result;
}

void SRPDelete_corecrypto(void *a1)
{
  if (a1)
  {
    _SRPCleanup_corecrypto(a1);

    free(a1);
  }
}

void _SRPCleanup_corecrypto(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    memset_s(v2, *(a1 + 8), 0, *(a1 + 8));
    if (*a1)
    {
      free(*a1);
      *a1 = 0;
    }
  }

  *(a1 + 8) = 0;
  v3 = *(a1 + 16);
  if (v3)
  {
    free(v3);
    *(a1 + 16) = 0;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    memset_s(v4, *(a1 + 32), 0, *(a1 + 32));
    v5 = *(a1 + 24);
    if (v5)
    {
      free(v5);
      *(a1 + 24) = 0;
    }
  }

  *(a1 + 32) = 0;
  v6 = *(a1 + 40);
  if (v6)
  {
    memset_s(v6, *(a1 + 48), 0, *(a1 + 48));
    v7 = *(a1 + 40);
    if (v7)
    {
      free(v7);
      *(a1 + 40) = 0;
    }
  }

  *(a1 + 48) = 0;
}

uint64_t SRPClientStart_corecrypto(void *a1, void *a2, const char *a3, size_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, size_t a10, void *a11, size_t *a12, void *a13, size_t *a14, void *a15, size_t *a16)
{
  if (a2 != &_kSRPParameters_3072_SHA512)
  {
    v17 = 4294960561;
LABEL_37:
    _SRPCleanup_corecrypto(a1);
    return v17;
  }

  v21 = ccsha512_di();
  ccsrp_gp_rfc5054_3072();
  v22 = 4 * (*v21 + ccdh_ccn_size()) + 48;
  a1[1] = v22;
  v23 = malloc_type_calloc(1uLL, v22, 0x106004070A5FD05uLL);
  *a1 = v23;
  if (!v23)
  {
    goto LABEL_33;
  }

  ccrng();
  ccsrp_ctx_init_option();
  v24 = MEMORY[0x193B06230](*(*a1 + 8));
  v25 = 8 * v24;
  v26 = 8 * v24 - a10;
  if (8 * v24 <= a10)
  {
    if (v25 != a10)
    {
      v17 = 4294960553;
      goto LABEL_37;
    }

    v28 = 0;
    goto LABEL_9;
  }

  v27 = malloc_type_malloc(8 * v24, 0x100004077774924uLL);
  if (!v27)
  {
LABEL_33:
    v17 = 4294960568;
    goto LABEL_37;
  }

  v28 = v27;
  memset(v27, 48, v26);
  memcpy(&v28[v26], a9, a10);
LABEL_9:
  v29 = malloc_type_malloc(v25, 0x100004077774924uLL);
  if (v29)
  {
    if (ccsrp_client_start_authentication())
    {
      LOBYTE(v30) = 0;
      v31 = 0;
      v32 = 0;
      v17 = 4294960596;
      if (!v28)
      {
        goto LABEL_25;
      }

LABEL_24:
      free(v28);
      goto LABEL_25;
    }

    if (a4 == -1)
    {
      a4 = strlen(a3);
    }

    __s = strndup(a3, a4);
    if (__s)
    {
      session_key_length = ccsrp_get_session_key_length();
      if (!session_key_length)
      {
        LOBYTE(v30) = 0;
        v32 = 0;
        v17 = 4294960553;
        goto LABEL_23;
      }

      v34 = session_key_length;
      v32 = malloc_type_malloc(session_key_length, 0x100004077774924uLL);
      if (v32)
      {
        if (a6 == -1)
        {
          strlen(a5);
        }

        if (ccsrp_client_process_challenge())
        {
          LOBYTE(v30) = 0;
          v17 = 4294960542;
LABEL_23:
          v31 = __s;
          if (!v28)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

        v30 = malloc_type_malloc(v34, 0x100004077774924uLL);
        if (v30)
        {
          v35 = *a1;
          v36 = MEMORY[0x193B06230](*(*a1 + 8));
          memcpy(v30, (v35 + 32 * v36 + 32), v34);
          v17 = 0;
          *a11 = v29;
          *a12 = v25;
          *a13 = v30;
          *a14 = v34;
          LOBYTE(v30) = 1;
          *a15 = v32;
          *a16 = v34;
          v29 = 0;
          v32 = 0;
          goto LABEL_23;
        }
      }

      else
      {
        LOBYTE(v30) = 0;
      }

      v17 = 4294960568;
      goto LABEL_23;
    }
  }

  LOBYTE(v30) = 0;
  v31 = 0;
  v32 = 0;
  v17 = 4294960568;
  if (v28)
  {
    goto LABEL_24;
  }

LABEL_25:
  if (v29)
  {
    free(v29);
  }

  if (v31)
  {
    free(v31);
  }

  if (v32)
  {
    free(v32);
  }

  if ((v30 & 1) == 0)
  {
    goto LABEL_37;
  }

  return 0;
}

uint64_t SRPClientVerify_corecrypto(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    if (ccsrp_get_session_key_length() == a3)
    {
      if (ccsrp_client_verify_session())
      {
        v4 = 0;
      }

      else
      {
        v4 = 4294960542;
      }
    }

    else
    {
      v4 = 4294960553;
    }
  }

  else
  {
    v4 = 4294960551;
  }

  _SRPCleanup_corecrypto(a1);
  return v4;
}

uint64_t SRPServerStart_corecrypto(uint64_t a1, void *a2, const char *a3, size_t a4, const char *a5, uint64_t a6, size_t a7, void *a8, void *a9, size_t *a10)
{
  if (a2 == &_kSRPParameters_3072_SHA512)
  {
    v18 = ccsha512_di();
    ccsrp_gp_rfc5054_3072();
    v19 = 4 * (*v18 + ccdh_ccn_size()) + 48;
    *(a1 + 8) = v19;
    v20 = malloc_type_calloc(1uLL, v19, 0x106004070A5FD05uLL);
    *a1 = v20;
    if (v20)
    {
      ccrng();
      ccsrp_ctx_init_option();
      v21 = 8 * MEMORY[0x193B06230](*(*a1 + 8));
      v22 = malloc_type_malloc(v21, 0x100004077774924uLL);
      *(a1 + 40) = v22;
      if (v22)
      {
        if (a4 == -1)
        {
          a4 = strlen(a3);
        }

        v23 = strndup(a3, a4);
        *(a1 + 16) = v23;
        if (v23)
        {
          v24 = malloc_type_malloc(a7, 0x100004077774924uLL);
          *(a1 + 24) = v24;
          if (v24)
          {
            *(a1 + 32) = a7;
            if (a6 == -1)
            {
              strlen(a5);
            }

            if (ccsrp_generate_salt_and_verification())
            {
LABEL_15:
              v11 = 4294960596;
              goto LABEL_16;
            }

            memcpy(a8, *(a1 + 24), a7);
            v25 = malloc_type_malloc(v21, 0x100004077774924uLL);
            if (v25)
            {
              v26 = v25;
              if (!ccsrp_server_generate_public_key())
              {
                v11 = 0;
                *a9 = v26;
                *a10 = v21;
                return v11;
              }

              free(v26);
              goto LABEL_15;
            }
          }
        }
      }
    }

    v11 = 4294960568;
    goto LABEL_16;
  }

  v11 = 4294960561;
LABEL_16:
  _SRPCleanup_corecrypto(a1);
  return v11;
}

uint64_t SRPServerVerify_corecrypto(void *a1, const void *a2, size_t a3, uint64_t a4, size_t a5, void *a6, size_t *a7, void *a8, size_t *a9)
{
  if (!*a1 || !a1[2] || !a1[3] || !a1[4])
  {
    v17 = 4294960551;
    goto LABEL_21;
  }

  session_key_length = ccsrp_get_session_key_length();
  v17 = 4294960553;
  if (session_key_length)
  {
    if (session_key_length == a5)
    {
      v18 = 8 * MEMORY[0x193B06230](*(*a1 + 8));
      if (v18 >= a3)
      {
        v28 = a8;
        v19 = v18 - a3;
        if (v18 <= a3)
        {
          v21 = 0;
        }

        else
        {
          v20 = malloc_type_malloc(v18, 0x100004077774924uLL);
          if (!v20)
          {
            v17 = 4294960568;
            goto LABEL_21;
          }

          v21 = v20;
          bzero(v20, v19);
          memcpy(&v21[v19], a2, a3);
        }

        if (ccsrp_server_compute_session())
        {
          v22 = 0;
        }

        else
        {
          v22 = malloc_type_malloc(a5, 0x100004077774924uLL);
          if (!v22)
          {
            goto LABEL_23;
          }

          if (ccsrp_server_verify_session())
          {
            v23 = malloc_type_malloc(a5, 0x100004077774924uLL);
            if (v23)
            {
              v24 = v23;
              v25 = *a1;
              v26 = MEMORY[0x193B06230](*(*a1 + 8));
              memcpy(v24, (v25 + 32 * v26 + 32), a5);
              v17 = 0;
              *a6 = v24;
              *a7 = a5;
              *v28 = v22;
              *a9 = a5;
              v22 = 0;
LABEL_17:
              if (v21)
              {
                free(v21);
              }

              if (v22)
              {
                free(v22);
              }

              goto LABEL_21;
            }

LABEL_23:
            v17 = 4294960568;
            goto LABEL_17;
          }
        }

        v17 = 4294960542;
        goto LABEL_17;
      }
    }
  }

LABEL_21:
  _SRPCleanup_corecrypto(a1);
  return v17;
}

uint64_t SRPCreate_libsrp(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x38uLL, 0x103004063A0F53DuLL);
  if (!v2)
  {
    return 4294960568;
  }

  v3 = v2;
  result = 0;
  *a1 = v3;
  return result;
}

void SRPDelete_libsrp(void *a1)
{
  v2 = *a1;
  if (v2)
  {
    SRP_free(v2);
  }

  free(a1);
}

uint64_t SRPClientStart_libsrp(uint64_t *a1, void *a2, const char *a3, uint64_t a4, const char *a5, uint64_t a6, const void *a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16)
{
  if (a2 == &_kSRPParameters_3072_SHA512)
  {
    v24 = *a1;
    if (v24)
    {
      SRP_free(v24);
      *a1 = 0;
    }

    v25 = SRP_new(&srp6a_client_meth);
    *a1 = v25;
    if (!v25)
    {
      return 4294960568;
    }

    v26 = v25;
    if (a4 == -1)
    {
      LODWORD(a4) = strlen(a3);
    }

    if (SRP_set_user_raw(v26, a3, a4) || SRP_set_params(*a1, a7, a8))
    {
      return 4294960596;
    }

    if (a6 == -1)
    {
      strlen(a5);
    }

    if ((*(*(*a1 + 96) + 40))() || (*(*(*a1 + 96) + 48))())
    {
      return 4294960596;
    }

    if (MEMORY[8] < 1)
    {
      v16 = 4294960553;
      cstr_free(0);
      return v16;
    }

    if ((*(*(*a1 + 96) + 56))())
    {
      return 4294960596;
    }

    if (MEMORY[8] >= 1)
    {
      if ((*(*(*a1 + 96) + 72))())
      {
        return 4294960596;
      }

      if (MEMORY[8] >= 1)
      {
        v16 = 0;
        *a11 = MEMORY[0];
        *a12 = MEMORY[8];
        MEMORY[8] = 0;
        *a13 = MEMORY[0];
        *a14 = MEMORY[8];
        MEMORY[8] = 0;
        *a15 = MEMORY[0];
        *a16 = MEMORY[8];
        MEMORY[8] = 0;
        return v16;
      }
    }

    return 4294960553;
  }

  return 4294960561;
}

uint64_t SRPClientVerify_libsrp(void **a1)
{
  v2 = *a1;
  if (!v2)
  {
    return 4294960551;
  }

  if ((*(*(v2 + 96) + 64))())
  {
    v3 = 4294960542;
  }

  else
  {
    v3 = 0;
  }

  if (*a1)
  {
    SRP_free(*a1);
    *a1 = 0;
  }

  return v3;
}

uint64_t SRPServerStart_libsrp(uint64_t *a1, void *a2, const char *a3, uint64_t a4, const char *a5, uint64_t a6, size_t a7, void *a8, void *a9, void *a10)
{
  if (a2 != &_kSRPParameters_3072_SHA512)
  {
    return 4294960561;
  }

  v18 = *a1;
  if (v18)
  {
    SRP_free(v18);
    *a1 = 0;
  }

  v19 = SRP_new(&srp6a_server_meth);
  *a1 = v19;
  if (!v19)
  {
    return 4294960568;
  }

  v20 = v19;
  if (a4 == -1)
  {
    LODWORD(a4) = strlen(a3);
  }

  if (SRP_set_user_raw(v20, a3, a4))
  {
    return 4294960596;
  }

  if (a7 < 0x10)
  {
    return 4294960591;
  }

  RandomBytes(a8, a7);
  ccsha512_di();
  cchkdf();
  if (SRP_set_params(*a1, a8, a7))
  {
    return 4294960596;
  }

  if (a6 == -1)
  {
    strlen(a5);
  }

  if ((*(*(*a1 + 96) + 40))(*a1))
  {
    return 4294960596;
  }

  if ((*(*(*a1 + 96) + 48))(*a1))
  {
    return 4294960596;
  }

  v10 = 0;
  *a9 = MEMORY[0];
  *a10 = MEMORY[8];
  MEMORY[8] = 0;
  cstr_free(0);
  return v10;
}

uint64_t SRPServerVerify_libsrp(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9)
{
  v10 = *a1;
  if (!v10)
  {
    return 4294960551;
  }

  if ((*(*(v10 + 96) + 56))())
  {
    goto LABEL_6;
  }

  if (MEMORY[8] < 1)
  {
    v14 = 4294960553;
    cstr_clear_free(0);
  }

  else if ((*((*a1)[12] + 64))())
  {
    v14 = 4294960542;
  }

  else
  {
    if ((*((*a1)[12] + 72))())
    {
LABEL_6:
      v14 = 4294960596;
      goto LABEL_7;
    }

    if (MEMORY[8] < 1)
    {
      v14 = 4294960553;
    }

    else
    {
      v14 = 0;
      *a6 = MEMORY[0];
      *a7 = MEMORY[8];
      MEMORY[8] = 0;
      *a8 = MEMORY[0];
      *a9 = MEMORY[8];
      MEMORY[8] = 0;
    }
  }

LABEL_7:
  if (*a1)
  {
    SRP_free(*a1);
    *a1 = 0;
  }

  return v14;
}

_BYTE *BitListString_Make(unsigned int a1, _BYTE *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = 0;
    v3 = a2;
    do
    {
      if (a1)
      {
        v5 = a2;
        if (v3 != a2)
        {
          *v3 = 44;
          v5 = v3 + 1;
        }

        v6 = v11;
        v7 = v4;
        do
        {
          *v6++ = (v7 % 0xA) | 0x30;
          v8 = v7 > 9;
          v7 /= 0xAu;
        }

        while (v8);
        while (v6 > v11)
        {
          v9 = *--v6;
          *v5++ = v9;
        }

        v3 = v5;
      }

      ++v4;
      v8 = a1 > 1;
      a1 >>= 1;
    }

    while (v8);
  }

  *v3 = 0;
  if (a3)
  {
    *a3 = v3 - a2;
  }

  return a2;
}

uint64_t BitListString_Parse(char *__s, int64_t a2, _DWORD *a3)
{
  v4 = __s;
  if (a2 == -1)
  {
    a2 = strlen(__s);
  }

  if (a2 < 1)
  {
    v5 = 0;
LABEL_16:
    result = 0;
    *a3 = v5;
    return result;
  }

  v5 = 0;
  v6 = &v4[a2];
  while (2)
  {
    v7 = 0;
    v8 = v4;
    while (1)
    {
      v9 = *v8;
      if ((v9 - 48) > 9)
      {
        break;
      }

      v7 = v9 + 10 * v7 - 48;
      if (++v8 >= v6)
      {
        goto LABEL_10;
      }
    }

    if (v8 == v4)
    {
      return 4294960554;
    }

LABEL_10:
    if (v8 != v6 && v9 != 44)
    {
      return 4294960554;
    }

    if (v7 <= 0x1F)
    {
      v5 |= 1 << v7;
      v4 = v8 + 1;
      if ((v8 + 1) < v6)
      {
        continue;
      }

      goto LABEL_16;
    }

    return 4294960586;
  }
}

_BYTE *FourCharCodeToCString(unsigned int a1, _BYTE *a2)
{
  v2 = HIBYTE(a1);
  if (!HIBYTE(a1))
  {
    LOBYTE(v2) = 32;
  }

  *a2 = v2;
  v3 = HIWORD(a1);
  if (!BYTE2(a1))
  {
    LOBYTE(v3) = 32;
  }

  a2[1] = v3;
  v4 = a1 >> 8;
  if (!BYTE1(a1))
  {
    LOBYTE(v4) = 32;
  }

  a2[2] = v4;
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = 32;
  }

  a2[3] = v5;
  a2[4] = 0;
  return a2;
}

uint64_t TextToFourCharCode(char *__s, size_t a2)
{
  if (a2 == -1)
  {
    a2 = strlen(__s);
  }

  v3 = 32;
  if (!a2)
  {
    v6 = 0x2000;
    v5 = 0x2000;
    goto LABEL_9;
  }

  v4 = *__s;
  if (!*__s)
  {
    v4 = 32;
  }

  v5 = v4 << 8;
  if (a2 == 1)
  {
    v6 = 0x2000;
LABEL_9:
    v7 = 32;
    return v7 | v6 | ((v5 | v3) << 16);
  }

  v3 = __s[1];
  v7 = 32;
  if (!__s[1])
  {
    v3 = 32;
  }

  if (a2 < 3)
  {
    v6 = 0x2000;
  }

  else
  {
    v9 = __s[2];
    if (!__s[2])
    {
      v9 = 32;
    }

    v6 = v9 << 8;
    if (a2 != 3)
    {
      v7 = __s[3];
      if (!__s[3])
      {
        v7 = 32;
      }
    }
  }

  return v7 | v6 | ((v5 | v3) << 16);
}

unint64_t TextToHardwareAddressScalar(char *a1, size_t a2, unint64_t a3)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a3 > 8 || TextToHardwareAddress(a1, a2, a3, v5))
  {
    return 0;
  }

  if (a3 != 8)
  {
    if (a3 == 6)
    {
      return (LOBYTE(v5[0]) << 40) | (BYTE1(v5[0]) << 32) | (BYTE2(v5[0]) << 24) | (BYTE3(v5[0]) << 16) | (BYTE4(v5[0]) << 8) | BYTE5(v5[0]);
    }

    return 0;
  }

  return bswap64(v5[0]);
}

_BYTE *HardwareAddressToCString(unsigned __int8 *a1, uint64_t a2, _BYTE *a3)
{
  v3 = a3;
  if (a2 >= 1)
  {
    v4 = &a1[a2];
    v3 = a3;
    do
    {
      v5 = a3;
      if (v3 != a3)
      {
        *v3 = 58;
        v5 = v3 + 1;
      }

      v6 = *a1++;
      *v5 = a0123456789abcd_0[v6 >> 4];
      v3 = v5 + 2;
      v5[1] = a0123456789abcd_0[v6 & 0xF];
    }

    while (a1 < v4);
  }

  *v3 = 0;
  return a3;
}

uint64_t TextToNumVersion(char *__s, int64_t a2, int *a3)
{
  v4 = a2;
  if (a2 == -1)
  {
    v4 = strlen(__s);
  }

  v6 = &__s[v4];
  if (v4 < 1)
  {
    v8 = __s;
  }

  else
  {
    v7 = MEMORY[0x1E69E9830];
    v8 = __s;
    do
    {
      v9 = *v8;
      if (v9 < 0)
      {
        if (!__maskrune(*v8, 0x4000uLL))
        {
          break;
        }
      }

      else if ((*(v7 + 4 * v9 + 60) & 0x4000) == 0)
      {
        break;
      }

      ++v8;
    }

    while (v8 < v6);
  }

  if (v8 >= v6)
  {
    v13 = 0;
LABEL_20:
    v11 = v8;
    goto LABEL_23;
  }

  if (*v8 - 48 > 9)
  {
    v13 = 1;
    goto LABEL_20;
  }

  v10 = &__s[v4 + ~v8];
  v11 = v8;
  while (v10)
  {
    v12 = *++v11;
    --v10;
    if ((v12 - 48) > 9)
    {
      goto LABEL_22;
    }
  }

  v11 = &__s[v4];
LABEL_22:
  v13 = v11 < v6;
LABEL_23:
  if (v8 == v11)
  {
    return 4294960554;
  }

  v14 = TextToInt32(v8, v11 - v8, 10);
  if (v14 > 0xFF)
  {
    return 4294960586;
  }

  v15 = v14;
  v16 = &v11[v13];
  if (v16 >= v6)
  {
    v19 = 1;
    v17 = v16;
  }

  else
  {
    v17 = v16;
    while (1)
    {
      v18 = *v17 - 48;
      v19 = v18 < 0xA;
      if (v18 > 9)
      {
        break;
      }

      if (++v17 >= v6)
      {
        v19 = 1;
        v17 = &__s[v4];
        break;
      }
    }
  }

  v20 = TextToInt32(v16, v17 - v16, 10);
  if (v20 > 0xF)
  {
    return 4294960586;
  }

  v21 = v20;
  v22 = v16 == v17 || v19;
  if ((v22 & 1) == 0)
  {
    v26 = v17 + 1;
    v27 = __tolower(*v17);
    v47 = a3;
    if (v27 != 46)
    {
      v34 = 0;
      v28 = v26;
      goto LABEL_55;
    }

    if (v26 >= v6)
    {
      v29 = 1;
      v28 = v17 + 1;
      v33 = 1;
    }

    else if (v17[1] - 48 > 9)
    {
      v33 = 0;
      v29 = 1;
      v28 = v17 + 1;
    }

    else
    {
      v28 = &__s[v4];
      v29 = &__s[v4] - v17;
      v30 = 2;
      while (v29 != v30)
      {
        v31 = v30;
        v32 = v17[v30++] - 48;
        if (v32 > 9)
        {
          v28 = &v17[v31];
          v29 = v31;
          break;
        }
      }

      v33 = v28 >= v6;
    }

    v35 = TextToInt32(v17 + 1, v29 - 1, 10);
    if (v35 <= 0xF)
    {
      v34 = v35;
      v36 = v29 == 1 || v33;
      if (v36)
      {
        v37 = 0x8000;
LABEL_63:
        v40 = v28;
        if (v28 < v6)
        {
          v41 = (&__s[v4] - v28);
          v40 = v28;
          while (*v40 - 48 <= 9)
          {
            ++v40;
            if (!--v41)
            {
              v40 = &__s[v4];
              break;
            }
          }
        }

        if (v28 >= v40)
        {
          v42 = 0;
        }

        else
        {
          v42 = TextToInt32(v28, v40 - v28, 10);
        }

        v44 = v28 == v40 || v42 > 0xFF;
        v45 = !v44;
        if (v44)
        {
          v25 = 0x8000;
        }

        else
        {
          v25 = v37;
        }

        if (v45)
        {
          v24 = v42;
        }

        else
        {
          v24 = 0;
        }

        v23 = v34 << 16;
        a3 = v47;
        goto LABEL_84;
      }

      v38 = *v28++;
      v27 = __tolower(v38);
LABEL_55:
      if (v27 == 100)
      {
        v39 = 0x2000;
      }

      else
      {
        v39 = 0x8000;
      }

      if (v27 == 98)
      {
        v39 = 24576;
      }

      if (v27 == 97)
      {
        v37 = 0x4000;
      }

      else
      {
        v37 = v39;
      }

      goto LABEL_63;
    }

    return 4294960586;
  }

  v23 = 0;
  v24 = 0;
  v25 = 0x8000;
LABEL_84:
  result = 0;
  if (a3)
  {
    *a3 = v23 | (v21 << 20) | (v15 << 24) | v25 | v24;
  }

  return result;
}

uint64_t TextToInt32(char *__s, int64_t a2, int a3)
{
  v4 = a2;
  if (a2 == -1)
  {
    v4 = strlen(__s);
  }

  v6 = &__s[v4];
  if (v4 < 1)
  {
    v8 = __s;
  }

  else
  {
    v7 = MEMORY[0x1E69E9830];
    v8 = __s;
    do
    {
      v9 = *v8;
      if (v9 < 0)
      {
        if (!__maskrune(*v8, 0x4000uLL))
        {
          break;
        }
      }

      else if ((*(v7 + 4 * v9 + 60) & 0x4000) == 0)
      {
        break;
      }

      ++v8;
    }

    while (v8 < v6);
  }

  if (v6 - v8 <= 1)
  {
    if (a3)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (*v8 == 48)
    {
      if (__tolower(v8[1]) == 120)
      {
        v8 += 2;
        a3 = 16;
LABEL_22:
        v10 = a3 - 2;
        goto LABEL_27;
      }

      if (*v8 == 48 && __tolower(v8[1]) == 98)
      {
        v8 += 2;
        a3 = 2;
        goto LABEL_22;
      }
    }

    if (a3)
    {
      goto LABEL_22;
    }

    if (*v8 == 48 && (v8[1] & 0xF8) == 0x30)
    {
      a3 = 8;
      ++v8;
      goto LABEL_22;
    }
  }

  v10 = 8;
LABEL_27:
  v11 = 0;
  HIDWORD(v13) = v10;
  LODWORD(v13) = v10;
  v12 = v13 >> 1;
  if (v12 > 3)
  {
    if (v12 == 4)
    {
      v23 = *v8;
      if (v23 == 45 || v23 == 43)
      {
        ++v8;
      }

      v24 = 0;
      while (v8 < v6)
      {
        v26 = *v8++;
        v25 = v26;
        if (v26 != 44)
        {
          v27 = v25 - 48;
          if (v27 > 9)
          {
            break;
          }

          v24 = v27 + 10 * v24;
        }
      }

      if (v23 == 45)
      {
        return -v24;
      }

      else
      {
        return v24;
      }
    }

    else
    {
      if (v12 != 7)
      {
        return v11;
      }

      if (v8 >= v6)
      {
        return 0;
      }

      v11 = 0;
      v16 = (&__s[v4] - v8);
      v17 = MEMORY[0x1E69E9830];
      do
      {
        v19 = *v8++;
        v18 = v19;
        v20 = v19 - 48;
        if (v19 - 48 > 9)
        {
          if ((*(v17 + 4 * v18 + 60) & 0x10000) == 0)
          {
            return v11;
          }

          v11 = (__tolower(v18) + 16 * v11 - 87);
        }

        else
        {
          v11 = v20 | (16 * v11);
        }

        --v16;
      }

      while (v16);
    }
  }

  else
  {
    if (v12)
    {
      if (v12 != 3)
      {
        return v11;
      }

      if (v8 < v6)
      {
        v11 = 0;
        v14 = (&__s[v4] - v8);
        do
        {
          v15 = *v8;
          if ((v15 - 56) < 0xFFFFFFF8)
          {
            break;
          }

          ++v8;
          v11 = (v15 + 8 * v11 - 48);
          --v14;
        }

        while (v14);
        return v11;
      }

      return 0;
    }

    if (v8 >= v6)
    {
      return 0;
    }

    v11 = 0;
    v21 = (&__s[v4] - v8);
    do
    {
      v22 = *v8;
      if ((v22 - 50) < 0xFFFFFFFE)
      {
        break;
      }

      ++v8;
      v11 = (v22 + 2 * v11 - 48);
      --v21;
    }

    while (v21);
  }

  return v11;
}

char *SourceVersionToCString(unsigned int a1, char *__str)
{
  if (a1 % 0x64)
  {
    snprintf(__str, 0x10uLL, "%u.%u.%u");
  }

  else if (a1 / 0x64 == 100 * ((42949673 * (a1 / 0x64)) >> 32))
  {
    snprintf(__str, 0x10uLL, "%u");
  }

  else
  {
    snprintf(__str, 0x10uLL, "%u.%u");
  }

  return __str;
}

uint64_t HexToDataCopy(char *a1, int64_t a2, char a3, void *a4, unint64_t *a5, char **a6)
{
  v15 = 0;
  HexToData(a1, a2, a3, 0, 0, 0, &v15, 0);
  v12 = malloc_type_malloc(v15 + 1, 0x100004077774924uLL);
  if (!v12)
  {
    return 4294960568;
  }

  v13 = v12;
  HexToData(a1, a2, a3, v12, v15, a5, 0, a6);
  result = 0;
  v13[v15] = 0;
  *a4 = v13;
  return result;
}

_BYTE *DataToHexCStringEx(unsigned __int8 *a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v4 = a3;
  if (a2 >= 1)
  {
    v5 = &a1[a2];
    v6 = a3;
    do
    {
      v7 = *a1++;
      *v6 = *(a4 + (v7 >> 4));
      v4 = v6 + 2;
      v6[1] = *(a4 + (v7 & 0xF));
      v6 += 2;
    }

    while (a1 < v5);
  }

  *v4 = 0;
  return a3;
}

uint64_t NormalizeUUIDString(char *a1, size_t a2, __int128 *a3, char a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *MEMORY[0x1E69E9840];
  result = StringToUUIDEx(a1, a2, a4 & 1, a3, &v13, a6, a7, a8);
  v12 = result;
  if (!result)
  {
    UUIDtoCStringFlags(&v13, 16, a3, a4, a5, &v12);
    return v12;
  }

  return result;
}

uint64_t StringToUUIDEx(char *__s, size_t a2, int a3, _OWORD *a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a2;
  v26 = *MEMORY[0x1E69E9840];
  if (a2 == -1)
  {
    v11 = strlen(__s);
  }

  v23 = 0;
  v24 = 0;
  if (a3)
  {
    v13 = SNScanF(__s, v11, "%2hhx%2hhx%2hhx%2hhx-%2hhx%2hhx-%2hhx%2hhx-%2hhx%2hhx-%2hhx%2hhx%2hhx%2hhx%2hhx%2hhx%n", &v25 + 4, &v25 + 7, &v25 + 6, &v24 + 4, a8, &v25 + 3);
  }

  else
  {
    v13 = SNScanF(__s, v11, "%2hhx%2hhx%2hhx%2hhx-%2hhx%2hhx-%2hhx%2hhx-%2hhx%2hhx-%2hhx%2hhx%2hhx%2hhx%2hhx%2hhx%n", &v25 + 5, &v25 + 6, &v25 + 7, &v24 + 4, a8, &v25);
  }

  v19 = v13;
  if (!a4 || v13 == 16)
  {
    result = 4294960554;
    if (v19 != 16 || HIDWORD(v24) != 36)
    {
      return result;
    }

    if (a5)
    {
      result = 0;
      *a5 = v25;
      return result;
    }

    return 0;
  }

  v20 = SNScanF(__s, v11, "%llx%n", v14, v15, v16, v17, v18, &v23);
  result = 4294960554;
  if (v20 != 1)
  {
    return result;
  }

  v22 = v23;
  if (HIDWORD(v23) || v24 != v11)
  {
    return result;
  }

  if (!a5)
  {
    return 0;
  }

  *a5 = *a4;
  result = 0;
  if (!a3)
  {
    v22 = bswap32(v22);
  }

  *a5 = v22;
  return result;
}

char *UUIDtoCStringFlags(_BYTE *a1, uint64_t a2, __int128 *a3, char a4, char *__str, int *a6)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2 == 1 && a3)
  {
    v8 = 0;
    v20 = *a3;
    if (a4)
    {
      v9 = 0;
    }

    else
    {
      v9 = 3;
    }

    v10 = &v20;
    *(&v20 | v9) = *a1;
    goto LABEL_24;
  }

  if (a2 == 2 && a3)
  {
    v20 = *a3;
    v8 = 0;
    if (a4)
    {
      LOBYTE(v20) = a1[1];
      BYTE1(v20) = *a1;
      goto LABEL_23;
    }

    v11 = *a1;
LABEL_15:
    WORD1(v20) = v11;
LABEL_23:
    v10 = &v20;
    goto LABEL_24;
  }

  if (a2 == 4 && a3)
  {
    v20 = *a3;
    v8 = 0;
    if (a4)
    {
      BYTE3(v20) = *a1;
      BYTE2(v20) = a1[1];
      BYTE1(v20) = a1[2];
      LOBYTE(v20) = a1[3];
      goto LABEL_23;
    }

    LOWORD(v20) = *a1;
    v11 = *(a1 + 1);
    goto LABEL_15;
  }

  v10 = &unk_191FFB315;
  if (a2 == 16)
  {
    v10 = a1;
    v8 = 0;
  }

  else
  {
    v8 = -6743;
  }

  if (!a3)
  {
    goto LABEL_29;
  }

LABEL_24:
  if ((a4 & 2) == 0 || (*(v10 + 4) == *(a3 + 4) ? (v12 = *(v10 + 3) == *(a3 + 3)) : (v12 = 0), !v12))
  {
LABEL_29:
    if (a4)
    {
      v13 = v10[3];
      v14 = v10[2];
      v15 = v10[1];
      v16 = *v10;
      v17 = v10[5];
      v18 = v10[4];
    }

    else
    {
      v13 = *v10;
      v14 = v10[1];
      v15 = v10[2];
      v16 = v10[3];
      v17 = v10[4];
      v18 = v10[5];
    }

    snprintf(__str, 0x25uLL, "%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x%02x%02x%02x%02x", v13, v14, v15, v16, v17, v18);
    goto LABEL_33;
  }

  snprintf(__str, 0x25uLL, "%x");
LABEL_33:
  if (a6)
  {
    *a6 = v8;
  }

  return __str;
}

uint64_t memicmp(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = a1;
  v5 = &a1[a3];
  while (1)
  {
    if (v4 >= v5)
    {
      return 0;
    }

    v6 = *a2;
    v7 = __tolower(*v4);
    v8 = __tolower(v6);
    if (v7 < v8)
    {
      break;
    }

    ++a2;
    ++v4;
    if (v7 > v8)
    {
      return 1;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t snprintf_add(char **a1, char *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = *a1;
  v10 = a2 - *a1;
  if (a2 == *a1)
  {
    return 4294960533;
  }

  result = vsnprintf(*a1, v10, a3, &a9);
  if ((result & 0x80000000) == 0)
  {
    v14 = &v9[result];
    if (result < v10)
    {
      result = 0;
    }

    else
    {
      v14 = a2;
      result = 4294960545;
    }

    *a1 = v14;
  }

  return result;
}

uint64_t strcmp_prefix(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v3 = a2 + 1;
  while (1)
  {
    v4 = *a1;
    if (v4 < v2)
    {
      return 0xFFFFFFFFLL;
    }

    if (v4 > v2)
    {
      break;
    }

    ++a1;
    v5 = *v3++;
    v2 = v5;
    if (!v5)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t strncmp_prefix(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = a2;
  v4 = a3;
  while (v3)
  {
    v6 = *v4++;
    v5 = v6;
    if (!v6)
    {
      return 0;
    }

    v8 = *a1++;
    v7 = v8;
    if (v8 < v5)
    {
      return 0xFFFFFFFFLL;
    }

    --v3;
    if (v7 > v5)
    {
      return 1;
    }
  }

  if (a3[a2])
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t strnicmp_prefix(unsigned __int8 *a1, uint64_t a2, _BYTE *a3)
{
  if (a2)
  {
    v4 = a2;
    while (1)
    {
      v6 = __tolower(*a1);
      result = __tolower(*a3);
      if (!result)
      {
        break;
      }

      --v4;
      if (v6 < result)
      {
        return 0xFFFFFFFFLL;
      }

      if (v6 > result)
      {
        return 1;
      }

      ++a1;
      ++a3;
      if (!v4)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    if (*a3)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t strncmpx(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = a2;
  v4 = a3;
  while (v3)
  {
    v6 = *a1++;
    v5 = v6;
    v8 = *v4++;
    v7 = v8;
    v9 = v5 > v8;
    if (v5 < v8)
    {
      return 0xFFFFFFFFLL;
    }

    if (v9)
    {
      return 1;
    }

    --v3;
    if (!v7)
    {
      return 0;
    }
  }

  if (a3[a2])
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t strnicmp_suffix(uint64_t a1, size_t a2, char *__s)
{
  v5 = 0;
  if (a2)
  {
    while (*(a1 + v5))
    {
      if (a2 == ++v5)
      {
        v5 = a2;
        break;
      }
    }
  }

  v6 = strlen(__s);
  if (v5 < v6)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = v6;
  v9 = (a1 + v5 - v6);

  return strnicmpx(v9, v8, __s);
}

_BYTE *stristr(_BYTE *a1, _BYTE *a2)
{
  if (a2 && *a2)
  {
    v4 = __tolower(*a2);
    while (*a1)
    {
      if (__tolower(*a1) == v4)
      {
        v5 = 1;
        do
        {
          v6 = __tolower(a1[v5]);
          v7 = __tolower(a2[v5++]);
          if (v6)
          {
            v8 = v6 == v7;
          }

          else
          {
            v8 = 0;
          }
        }

        while (v8);
        if (!v7)
        {
          return a1;
        }
      }

      ++a1;
    }

    return 0;
  }

  return a1;
}

const char *strncasestr(const char *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = (a2 + 1);
  v6 = __tolower(*a2) << 24;
  if (v6)
  {
    v7 = strlen(v5);
    for (i = a3 - 1; i != -1; --i)
    {
      v9 = __tolower(*a1) << 24;
      if (!v9)
      {
        break;
      }

      if (v9 == v6)
      {
        if (v7 > i)
        {
          return 0;
        }

        if (!strncasecmp(a1 + 1, v5, v7))
        {
          return a1;
        }
      }

      ++a1;
    }

    return 0;
  }

  return a1;
}

unint64_t memrchr(unint64_t a1, int a2, uint64_t a3)
{
  result = a1 + a3;
  while (result > a1)
  {
    v5 = *--result;
    if (v5 == a2)
    {
      return result;
    }
  }

  return 0;
}

uint64_t memrlen(uint64_t a1, uint64_t a2)
{
  for (; a2; --a2)
  {
    if (*(a1 - 1 + a2))
    {
      break;
    }
  }

  return a2;
}

unsigned __int8 *CUTrimText(unsigned __int8 *a1, char *a2, char **a3)
{
  v4 = a2;
  v5 = a1;
  v6 = MEMORY[0x1E69E9830];
  if (a1 < a2)
  {
    while (1)
    {
      v7 = *v5;
      if (v7 < 0)
      {
        if (!__maskrune(*v5, 0x4000uLL))
        {
          break;
        }
      }

      else if ((*(v6 + 4 * v7 + 60) & 0x4000) == 0)
      {
        break;
      }

      if (++v5 == v4)
      {
        v5 = v4;
        break;
      }
    }
  }

  while (1)
  {
    v8 = v4;
    if (v5 >= v4)
    {
      break;
    }

    --v4;
    v9 = *(v8 - 1);
    if (v9 < 0)
    {
      if (!__maskrune(*(v8 - 1), 0x4000uLL))
      {
        break;
      }
    }

    else if ((*(v6 + 4 * v9 + 60) & 0x4000) == 0)
    {
      break;
    }
  }

  *a3 = v8;
  return v5;
}

uint64_t TruncatedUTF8Length(char *__s, size_t a2, unint64_t a3)
{
  if (a2 == -1)
  {
    a2 = strlen(__s);
  }

  if (a2 >= a3)
  {
    result = a3;
  }

  else
  {
    result = a2;
  }

  if (result)
  {
    do
    {
      if ((__s[result - 1] & 0x80000000) == 0)
      {
        return result;
      }

      v6 = 0;
      v7 = __s[result - 1];
      v8 = result - 1;
      if (result == 1 || v7 > 0xBF)
      {
        v11 = 1;
        LOBYTE(v15) = 0;
      }

      else
      {
        v9 = 0;
        v10 = result - 2;
        LODWORD(v11) = 1;
        while (1)
        {
          v12 = v7;
          v13 = v11;
          if ((__s[v10] & 0x80000000) == 0)
          {
            break;
          }

          v7 = __s[v10];
          LODWORD(v11) = v11 + 1;
          if (v10-- != 0)
          {
            v9 = v12;
            if (v7 < 0xC0)
            {
              continue;
            }
          }

          v8 = v10 + 1;
          v15 = v13;
          goto LABEL_18;
        }

        v8 = v10 + 1;
        v15 = v11 - 1;
        v12 = v9;
LABEL_18:
        v6 = (v12 & 0xF0) == 160;
        if (v15 >= 6)
        {
          goto LABEL_25;
        }

        v11 = v11;
      }

      v16 = 255 << (v15 ^ 7);
      v17 = (v16 | (1 << (6 - v15))) & v7;
      v18 = v7 == 237 && v6;
      if (v17 == v16 && !v18)
      {
        return v8 + v11;
      }

LABEL_25:
      result = v8;
    }

    while (v8);
  }

  return result;
}

const char *GetLastFilePathSegment(const char *__s, uint64_t a2, size_t *a3)
{
  v4 = __s;
  if (a2 == -1)
  {
    for (i = __s + 1; ; ++i)
    {
      if (*(i - 1) == 47)
      {
        v4 = i;
      }

      else if (!*(i - 1))
      {
        if (a3)
        {
          v8 = strlen(v4);
          __s = v4;
          goto LABEL_18;
        }

        return v4;
      }
    }
  }

  v5 = &__s[a2];
  if (a2 < 1)
  {
    if (!a3)
    {
      return __s;
    }
  }

  else
  {
    do
    {
      v6 = *v4++;
      if (v6 == 47)
      {
        __s = v4;
      }
    }

    while (v4 < v5);
    if (!a3)
    {
      return __s;
    }
  }

  v8 = v5 - __s;
LABEL_18:
  *a3 = v8;
  return __s;
}

uint64_t LevenshteinDistance(const char *a1, uint64_t a2, const char *a3, size_t a4, int a5, int a6, int a7, int a8, int *a9)
{
  v10 = a2;
  if (a2 == -1)
  {
    v10 = strlen(a1);
  }

  v11 = a9;
  if (a4 == -1)
  {
    a4 = strlen(a3);
  }

  v12 = ((a4 << 32) + 0x100000000) >> 30;
  v13 = malloc_type_malloc(v12, 0x100004052888210uLL);
  if (!v13)
  {
    v47 = 0x7FFFFFFFLL;
    v48 = -6728;
    if (!a9)
    {
      return v47;
    }

    goto LABEL_40;
  }

  v14 = v13;
  v15 = malloc_type_malloc(v12, 0x100004052888210uLL);
  if (v15)
  {
    v16 = v15;
    v17 = malloc_type_malloc(v12, 0x100004052888210uLL);
    if (v17)
    {
      if ((a4 & 0x80000000) == 0)
      {
        v18 = 0;
        v19 = (a4 + 1);
        v20 = vdupq_n_s64(v19 - 1);
        v21 = (v19 + 3) & 0x1FFFFFFFCLL;
        v22 = v16 + 2;
        v23 = xmmword_191FF9400;
        v24 = xmmword_191FF9410;
        v25 = vdupq_n_s64(4uLL);
        do
        {
          v26 = vmovn_s64(vcgeq_u64(v20, v24));
          if (vuzp1_s16(v26, *v20.i8).u8[0])
          {
            *(v22 - 2) = v18;
          }

          if (vuzp1_s16(v26, *&v20).i8[2])
          {
            *(v22 - 1) = a7 + v18;
          }

          if (vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, *&v23))).i32[1])
          {
            *v22 = 2 * a7 + v18;
            v22[1] = 3 * a7 + v18;
          }

          v23 = vaddq_s64(v23, v25);
          v24 = vaddq_s64(v24, v25);
          v18 += 4 * a7;
          v22 += 4;
          v21 -= 4;
        }

        while (v21);
      }

      v50 = a4 << 32;
      if (v10 < 1)
      {
        v46 = v17;
      }

      else
      {
        v27 = 0;
        v53 = v10 & 0x7FFFFFFF;
        v54 = a4;
        v28 = a4 & 0x7FFFFFFF;
        do
        {
          v57 = v14;
          v59 = v16;
          v55 = v27 + 1;
          v58 = v17;
          *v17 = (v27 + 1) * a8;
          if (a4 >= 1)
          {
            v29 = 0;
            v30 = a3;
            v31 = &a1[v27];
            v32 = v14 - 4;
            v33 = v17 + 1;
            v34 = v59 + 1;
            do
            {
              v35 = *(v34 - 1);
              v36 = __tolower(*v31);
              v37 = __tolower(*v30);
              v38 = a6;
              if (v36 == v37)
              {
                v38 = 0;
              }

              v39 = v38 + v35;
              *v33 = v39;
              if (v27)
              {
                if (v29)
                {
                  v40 = __tolower(*(v31 - 1));
                  if (v40 == __tolower(*v30))
                  {
                    v41 = __tolower(*v31);
                    if (v41 == __tolower(*(v30 - 1)))
                    {
                      v42 = *v32 + a5;
                      if (v39 > v42)
                      {
                        *v33 = v42;
                      }
                    }
                  }
                }
              }

              v43 = *v33;
              v44 = *v34 + a8;
              if (*v33 > v44)
              {
                *v33 = v44;
                v43 = v44;
              }

              v45 = *(v33 - 1) + a7;
              if (v43 > v45)
              {
                *v33 = v45;
              }

              ++v29;
              v32 += 4;
              ++v30;
              ++v33;
              ++v34;
            }

            while (v28 != v29);
          }

          LODWORD(a4) = v54;
          ++v27;
          v46 = v57;
          v16 = v58;
          v17 = v57;
          v14 = v59;
        }

        while (v55 != v53);
      }

      v47 = *(v16 + (v50 >> 30));
      free(v14);
      v48 = 0;
      v14 = v16;
      v16 = v46;
      v11 = a9;
    }

    else
    {
      v47 = 0x7FFFFFFFLL;
      v48 = -6728;
    }

    free(v14);
    v14 = v16;
  }

  else
  {
    v47 = 0x7FFFFFFFLL;
    v48 = -6728;
  }

  free(v14);
  if (v11)
  {
LABEL_40:
    *v11 = v48;
  }

  return v47;
}

uint64_t MapStringToValue(char *__s1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = &a9;
  while (1)
  {
    v11 = v16;
    v17 = (v16 + 1);
    v12 = *v11;
    if (!*v11)
    {
      break;
    }

    v13 = v17;
    v16 = (v17 + 2);
    v14 = *v13;
    if (!strcmp(__s1, v12))
    {
      return v14;
    }
  }

  return a2;
}

const char *MIMETypeToExtension(uint64_t a1)
{
  v3[0] = a1;
  v3[1] = 0;
  v1 = bsearch(v3, kMIMEMap, 0x10uLL, 0x10uLL, _MIMETypeMatch);
  if (v1)
  {
    return v1[1];
  }

  else
  {
    return "";
  }
}

uint64_t NMEAParse(uint64_t a1, char a2, char *__s, int64_t a4, char **a5)
{
  v6 = a4;
  if (a4 == -1)
  {
    v6 = strlen(__s);
  }

  *(a1 + 4) = 0u;
  v10 = (a1 + 4);
  *(a1 + 308) = 0;
  v11 = &__s[v6];
  *(a1 + 244) = 0u;
  *(a1 + 228) = 0u;
  *(a1 + 212) = 0u;
  *(a1 + 196) = 0u;
  *(a1 + 180) = 0u;
  *(a1 + 164) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 276) = 0u;
  *(a1 + 292) = 0u;
  *(a1 + 260) = 0u;
  *a1 = a2 & 0x10;
  if ((a2 & 8) != 0)
  {
    v12 = __s;
    if (v6 >= 1)
    {
      v12 = __s;
      do
      {
        if (*v12 == 36)
        {
          break;
        }

        ++v12;
      }

      while (v12 < v11);
    }
  }

  else
  {
    v12 = __s;
    if (v6 >= 1)
    {
      v13 = MEMORY[0x1E69E9830];
      v12 = __s;
      do
      {
        v14 = *v12;
        if (v14 < 0)
        {
          if (!__maskrune(*v12, 0x4000uLL))
          {
            break;
          }
        }

        else if ((*(v13 + 4 * v14 + 60) & 0x4000) == 0)
        {
          break;
        }

        ++v12;
      }

      while (v12 < v11);
    }
  }

  if (v12 >= v11)
  {
    if (a5)
    {
      *a5 = v12;
    }

    return 4294960569;
  }

  if (*v12 == 36)
  {
    ++v12;
    *a1 |= 1u;
  }

  v15 = v12;
  if (v12 < v11)
  {
    v16 = (&__s[v6] - v12);
    v15 = v12;
    while (1)
    {
      v17 = *v15;
      if (v17 == 10 || v17 == 13)
      {
        break;
      }

      ++v15;
      if (!--v16)
      {
        v15 = &__s[v6];
        break;
      }
    }
  }

  if (a5)
  {
    v19 = v15;
    if (v15 < v11)
    {
      v20 = (&__s[v6] - v15);
      v19 = v15;
      while (1)
      {
        v21 = *v19;
        if (v21 != 13 && v21 != 10)
        {
          break;
        }

        ++v19;
        if (!--v20)
        {
          v19 = &__s[v6];
          break;
        }
      }
    }

    *a5 = v19;
  }

  if (v12 >= v15)
  {
LABEL_42:
    v25 = v15;
  }

  else
  {
    v23 = 0;
    v24 = v15 - v12;
    v25 = v12;
    while (1)
    {
      v26 = *v25;
      if (v26 == 42)
      {
        break;
      }

      v23 ^= v26;
      ++v25;
      if (!--v24)
      {
        goto LABEL_42;
      }
    }

    if (v15 - v25 >= 3)
    {
      v28 = v25[1];
      if ((*(MEMORY[0x1E69E9830] + 4 * v28 + 60) & 0x10000) != 0)
      {
        v29 = v25[2];
        if ((*(MEMORY[0x1E69E9830] + 4 * v29 + 60) & 0x10000) != 0)
        {
          v30 = v28 - 48;
          v31 = v28 - 65;
          if ((v28 - 97) >= 6)
          {
            v32 = 0;
          }

          else
          {
            v32 = v28 - 87;
          }

          v33 = v28 - 55;
          if (v31 > 5)
          {
            v33 = v32;
          }

          if (v30 < 0xA)
          {
            v33 = v30;
          }

          v34 = 16 * v33;
          v35 = v29 - 48;
          v36 = v29 - 65;
          if ((v29 - 97) >= 6)
          {
            v37 = 0;
          }

          else
          {
            v37 = v29 - 87;
          }

          v38 = v29 - 55;
          if (v36 > 5)
          {
            v38 = v37;
          }

          if (v35 < 0xA)
          {
            v38 = v35;
          }

          if ((v38 | v34) == v23)
          {
            *a1 |= 2u;
          }
        }
      }
    }

    v15 = v25;
  }

  if (v12 >= v25)
  {
    *v10 = 0;
    v39 = v12;
    goto LABEL_79;
  }

  if (*v12 == 44)
  {
    *v10 = 0;
    v39 = v12;
LABEL_77:
    if (*v39 == 44)
    {
      ++v39;
    }

    goto LABEL_79;
  }

  v40 = &v15[~v12];
  v39 = v12;
  while (v40)
  {
    v41 = *++v39;
    --v40;
    if (v41 == 44)
    {
      goto LABEL_75;
    }
  }

  v39 = v15;
LABEL_75:
  if ((v39 - v12) > 7)
  {
    return 4294960540;
  }

  memcpy((a1 + 4), v12, v39 - v12);
  v10[v39 - v12] = 0;
  if (v39 < v25)
  {
    goto LABEL_77;
  }

LABEL_79:
  if (!strcasecmp((a1 + 4), "GPGGA"))
  {
    v152 = 0;
    HIDWORD(v151) = 0;
    for (i = 1; ; ++i)
    {
      v103 = v39;
      if (v39 >= v25)
      {
LABEL_99:
        v106 = v15;
        v104 = v25;
        v39 = v25;
        if (v103 == v25)
        {
LABEL_239:
          result = 0;
          *a1 |= 4u;
          return result;
        }
      }

      else
      {
        v104 = v39;
        while (1)
        {
          v105 = *v39++;
          if (v105 == 44)
          {
            break;
          }

          v104 = v39;
          if (v39 == v25)
          {
            goto LABEL_99;
          }
        }

        v106 = v104;
      }

      v107 = v106 - v103;
      switch(i)
      {
        case 1:
          if (SNScanF(v103, v107, "%2u%2u%lf", v42, v43, v44, v45, v46, &v152 + 4) < 3)
          {
            return 4294960554;
          }

          *(a1 + 16) = (3600 * HIDWORD(v152) + 60 * v152) + 0.0;
          break;
        case 2:
          if (SNScanF(v103, v107, "%2u%lf", v42, v43, v44, v45, v46, &v151 + 4) != 2)
          {
            return 4294960554;
          }

          LODWORD(v114) = HIDWORD(v151);
          *(a1 + 24) = 0.0 / 60.0 + v114;
          break;
        case 3:
          if (v104 == v103)
          {
            v112 = 63;
          }

          else
          {
            v112 = *v103;
          }

          *(a1 + 32) = v112;
          break;
        case 4:
          if (SNScanF(v103, v107, "%3u%lf", v42, v43, v44, v45, v46, &v151 + 4) != 2)
          {
            return 4294960554;
          }

          LODWORD(v113) = HIDWORD(v151);
          *(a1 + 40) = 0.0 / 60.0 + v113;
          break;
        case 5:
          if (v104 == v103)
          {
            v109 = 63;
          }

          else
          {
            v109 = *v103;
          }

          *(a1 + 48) = v109;
          break;
        case 6:
          if (v104 == v103)
          {
            v115 = 63;
          }

          else
          {
            v115 = *v103;
          }

          *(a1 + 49) = v115;
          break;
        case 7:
          SNScanF(v103, v107, "%u", v42, v43, v44, v45, v46, a1 + 52);
          break;
        case 8:
          SNScanF(v103, v107, "%lf", v42, v43, v44, v45, v46, a1 + 56);
          break;
        case 9:
          SNScanF(v103, v107, "%lf", v42, v43, v44, v45, v46, a1 + 64);
          break;
        case 10:
          if (v104 == v103)
          {
            v111 = 63;
          }

          else
          {
            v111 = *v103;
          }

          *(a1 + 72) = v111;
          break;
        case 11:
          v110 = a1 + 80;
          goto LABEL_124;
        case 12:
          if (v104 == v103)
          {
            v108 = 63;
          }

          else
          {
            v108 = *v103;
          }

          *(a1 + 88) = v108;
          break;
        case 13:
          v110 = a1 + 96;
LABEL_124:
          SNScanF(v103, v107, "%lf", v42, v43, v44, v45, v46, v110);
          break;
        case 14:
          SNScanF(v103, v107, "%.s", v42, v43, v44, v45, v46, 8);
          break;
        default:
          continue;
      }
    }
  }

  if (!strcasecmp((a1 + 4), "GPGLL"))
  {
    v116 = 1;
    v151 = 0;
    v152 = 0;
    while (1)
    {
      v117 = v39;
      if (v39 >= v25)
      {
LABEL_142:
        v120 = v15;
        v118 = v25;
        v39 = v25;
        if (v117 == v25)
        {
          goto LABEL_239;
        }
      }

      else
      {
        v118 = v39;
        while (1)
        {
          v119 = *v39++;
          if (v119 == 44)
          {
            break;
          }

          v118 = v39;
          if (v39 == v25)
          {
            goto LABEL_142;
          }
        }

        v120 = v118;
      }

      v121 = v120 - v117;
      if (v116 <= 3)
      {
        switch(v116)
        {
          case 1:
            if (SNScanF(v117, v121, "%2u%lf", v47, v48, v49, v50, v51, &v151) != 2)
            {
              return 4294960554;
            }

            LODWORD(v124) = v151;
            *(a1 + 16) = 0.0 / 60.0 + v124;
            break;
          case 2:
            if (v118 == v117)
            {
              v127 = 63;
            }

            else
            {
              v127 = *v117;
            }

            *(a1 + 24) = v127;
            break;
          case 3:
            if (SNScanF(v117, v121, "%3u%lf", v47, v48, v49, v50, v51, &v151) != 2)
            {
              return 4294960554;
            }

            LODWORD(v122) = v151;
            *(a1 + 32) = 0.0 / 60.0 + v122;
            break;
        }
      }

      else if (v116 > 5)
      {
        if (v116 == 6)
        {
          if (v118 == v117)
          {
            v126 = 63;
          }

          else
          {
            v126 = *v117;
          }

          *(a1 + 56) = v126;
        }

        else if (v116 == 7)
        {
          if (v118 == v117)
          {
            v123 = 63;
          }

          else
          {
            v123 = *v117;
          }

          *(a1 + 57) = v123;
        }
      }

      else if (v116 == 4)
      {
        if (v118 == v117)
        {
          v125 = 63;
        }

        else
        {
          v125 = *v117;
        }

        *(a1 + 40) = v125;
      }

      else
      {
        if (SNScanF(v117, v121, "%2u%2u%2u%lf", v47, v48, v49, v50, v51, &v152 + 4) < 3)
        {
          return 4294960554;
        }

        *(a1 + 48) = (3600 * HIDWORD(v152) + 60 * v152 + HIDWORD(v151)) + 0.0;
      }

      ++v116;
    }
  }

  if (!strcasecmp((a1 + 4), "GPGSA"))
  {
    for (j = 1; ; ++j)
    {
      v129 = v39;
      if (v39 >= v25)
      {
LABEL_181:
        v132 = v15;
        v130 = v25;
        v39 = v25;
        if (v129 == v25)
        {
          goto LABEL_239;
        }
      }

      else
      {
        v130 = v39;
        while (1)
        {
          v131 = *v39++;
          if (v131 == 44)
          {
            break;
          }

          v130 = v39;
          if (v39 == v25)
          {
            goto LABEL_181;
          }
        }

        v132 = v130;
      }

      v133 = v132 - v129;
      if ((j - 3) >= 0xC)
      {
        if (j <= 14)
        {
          if (j == 1)
          {
            if (v130 == v129)
            {
              v135 = 63;
            }

            else
            {
              v135 = *v129;
            }

            *(a1 + 16) = v135;
          }

          else if (j == 2)
          {
            if (v130 == v129)
            {
              v134 = 63;
            }

            else
            {
              v134 = *v129;
            }

            *(a1 + 17) = v134;
          }
        }

        else
        {
          switch(j)
          {
            case 15:
              SNScanF(v129, v133, "%lf", v52, v53, v54, v55, v56, a1 + 72);
              break;
            case 16:
              SNScanF(v129, v133, "%lf", v52, v53, v54, v55, v56, a1 + 80);
              break;
            case 17:
              SNScanF(v129, v133, "%lf", v52, v53, v54, v55, v56, a1 + 88);
              break;
          }
        }
      }

      else
      {
        SNScanF(v129, v133, "%u", v52, v53, v54, v55, v56, a1 + 20 + 4 * j - 12);
      }
    }
  }

  if (!strcasecmp((a1 + 4), "GPGSV"))
  {
    v136 = a1 + 32;
    v137 = 1;
    while (1)
    {
      v138 = v39;
      if (v39 >= v25)
      {
LABEL_209:
        v139 = v15;
        v39 = v25;
        if (v138 == v25)
        {
          goto LABEL_239;
        }
      }

      else
      {
        v139 = v39;
        while (1)
        {
          v140 = *v39++;
          if (v140 == 44)
          {
            break;
          }

          v139 = v39;
          if (v39 == v25)
          {
            goto LABEL_209;
          }
        }
      }

      v141 = v139 - v138;
      switch(v137)
      {
        case 1:
          v150 = a1 + 16;
          goto LABEL_222;
        case 2:
          v150 = a1 + 20;
          goto LABEL_222;
        case 3:
          v150 = a1 + 24;
LABEL_222:
          v143 = "%d";
          goto LABEL_217;
        case 4:
        case 8:
        case 12:
        case 16:
          if (SNScanF(v138, v141, "%d", v57, v58, v59, v60, v61, v136 + 32 * ((v137 - 4) >> 2)) != 1)
          {
            return 4294960554;
          }

          ++*(a1 + 28);
          goto LABEL_218;
        case 5:
        case 9:
        case 13:
        case 17:
          v142 = v136 + 32 * ((v137 - 4) >> 2) + 8;
          goto LABEL_216;
        case 6:
        case 10:
        case 14:
        case 18:
          v142 = v136 + 32 * ((v137 - 4) >> 2) + 16;
          goto LABEL_216;
        case 7:
        case 11:
        case 15:
        case 19:
          v142 = v136 + 32 * ((v137 - 4) >> 2) + 24;
LABEL_216:
          v150 = v142;
          v143 = "%lf";
LABEL_217:
          if (SNScanF(v138, v141, v143, v57, v58, v59, v60, v61, v150) == 1)
          {
            goto LABEL_218;
          }

          return 4294960554;
        default:
LABEL_218:
          ++v137;
          break;
      }
    }
  }

  if (!strcasecmp((a1 + 4), "GPHDT"))
  {
    for (k = 1; ; ++k)
    {
      if (v39 >= v25)
      {
LABEL_228:
        v145 = v25;
        v148 = v25;
        if (v39 == v25)
        {
          goto LABEL_239;
        }
      }

      else
      {
        v145 = v39;
        v146 = v39;
        while (1)
        {
          v147 = *v146++;
          if (v147 == 44)
          {
            break;
          }

          v145 = v146;
          if (v146 == v25)
          {
            goto LABEL_228;
          }
        }

        v148 = v145 + 1;
      }

      if (k == 2)
      {
        if (v145 == v39)
        {
          v149 = 63;
        }

        else
        {
          v149 = *v39;
        }

        *(a1 + 24) = v149;
      }

      else if (k == 1)
      {
        SNScanF(v39, v145 - v39, "%lf", v62, v63, v64, v65, v66, a1 + 16);
      }

      v39 = v148;
    }
  }

  if (!strcasecmp((a1 + 4), "GPRMC"))
  {

    return _NMEAParseGPRMC(a1, v39, v25, v67, v68, v69, v70, v71);
  }

  else
  {
    if (!strcasecmp((a1 + 4), "GPVTG"))
    {
      _NMEAParseGPVTG(a1, v39, v25, v72, v73, v74, v75, v76);
      return 0;
    }

    if (!strcasecmp((a1 + 4), "GPZDA"))
    {

      return _NMEAParseGPZDA(a1, v39, v25, v77, v78, v79, v80, v81);
    }

    else
    {
      if (!strcasecmp((a1 + 4), "OHPR"))
      {
        _NMEAParseOHPR(a1, v39, v25, v82, v83, v84, v85, v86);
        return 0;
      }

      if (!strcasecmp((a1 + 4), "PAACD"))
      {

        return _NMEAParsePAACD(a1, v39, v25, v87, v88, v89, v90, v91);
      }

      else
      {
        if (strcasecmp((a1 + 4), "PAGCD"))
        {
          if (!strcasecmp((a1 + 4), "PASCD"))
          {

            return _NMEAParsePASCD(a1, v39, v25, v97, v98, v99, v100, v101);
          }

          return 0;
        }

        return _NMEAParsePAGCD(a1, v39, v25, v92, v93, v94, v95, v96);
      }
    }
  }
}

uint64_t _NMEAParseGPRMC(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = 0;
  v30 = 0;
  v11 = a1 + 88;
  v12 = a1 + 72;
  v13 = a1 + 64;
  v14 = 1;
  v28 = 0;
  while (1)
  {
    v15 = a2;
    if (a2 >= a3)
    {
LABEL_6:
      if (a2 == a3)
      {
        result = 0;
        *a1 |= 4u;
        return result;
      }

      v30 = a2;
      v16 = a3;
      a2 = a3;
    }

    else
    {
      v16 = a2;
      while (*v16 != 44)
      {
        if (++v16 == a3)
        {
          goto LABEL_6;
        }
      }

      v30 = a2;
      a2 = v16 + 1;
    }

    v17 = v16 - v15;
    if (v14 <= 6)
    {
      break;
    }

    if (v14 > 9)
    {
      switch(v14)
      {
        case 10:
          SNScanF(v15, v17, "%lf", a4, a5, a6, a7, a8, v11);
          break;
        case 11:
          if (v16 == v15)
          {
            v26 = 63;
          }

          else
          {
            v26 = *v15;
          }

          *(a1 + 96) = v26;
          break;
        case 12:
          if (v16 == v15)
          {
            v22 = 63;
          }

          else
          {
            v22 = *v15;
          }

          *(a1 + 97) = v22;
          break;
      }
    }

    else
    {
      if (v14 == 7)
      {
        SNScanF(v15, v17, "%lf", a4, a5, a6, a7, a8, v13);
        goto LABEL_54;
      }

      if (v14 != 8)
      {
        if (SNScanF(v15, v17, "%2u%2u%2u", a4, a5, a6, a7, a8, &v28) != 3)
        {
          return 4294960554;
        }

        v19 = YMD_HMStoSeconds(2000, v29, v28, 0, 0, 0, 0);
        *(a1 + 80) = v19 / 86400;
        v20 = (v19 - 0xEB1E31100);
LABEL_32:
        *(a1 + 104) = *(a1 + 104) + v20;
        goto LABEL_54;
      }

      SNScanF(v15, v17, "%lf", a4, a5, a6, a7, a8, v12);
    }

LABEL_54:
    ++v14;
  }

  if (v14 <= 3)
  {
    switch(v14)
    {
      case 1:
        if (SNScanF(v15, v17, "%2u%2u%2u%lf", a4, a5, a6, a7, a8, &v29 + 4) < 3)
        {
          return 4294960554;
        }

        v20 = (3600 * HIDWORD(v29) + 60 * v29 + HIDWORD(v28)) + 0.0;
        *(a1 + 16) = v20;
        goto LABEL_32;
      case 2:
        if (v16 == v15)
        {
          v24 = 63;
        }

        else
        {
          v24 = *v15;
        }

        *(a1 + 24) = v24;
        break;
      case 3:
        if (SNScanF(v15, v17, "%2u%lf", a4, a5, a6, a7, a8, &v28) != 2)
        {
          return 4294960554;
        }

        LODWORD(v18) = v28;
        *(a1 + 32) = 0.0 / 60.0 + v18;
        break;
    }

    goto LABEL_54;
  }

  if (v14 == 4)
  {
    if (v16 == v15)
    {
      v23 = 63;
    }

    else
    {
      v23 = *v15;
    }

    *(a1 + 40) = v23;
    goto LABEL_54;
  }

  if (v14 != 5)
  {
    if (v16 == v15)
    {
      v21 = 63;
    }

    else
    {
      v21 = *v15;
    }

    *(a1 + 56) = v21;
    goto LABEL_54;
  }

  if (SNScanF(v15, v17, "%3u%lf", a4, a5, a6, a7, a8, &v28) == 2)
  {
    LODWORD(v25) = v28;
    *(a1 + 48) = 0.0 / 60.0 + v25;
    goto LABEL_54;
  }

  return 4294960554;
}

char *_NMEAParseGPVTG(uint64_t a1, char *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a1 + 64;
  v12 = a1 + 48;
  v13 = a1 + 32;
  v14 = a1 + 16;
  for (i = 1; ; ++i)
  {
    result = a2;
    if (a2 >= a3)
    {
      break;
    }

    v17 = a2;
    v18 = a2;
    while (1)
    {
      v19 = *v18++;
      if (v19 == 44)
      {
        break;
      }

      v17 = v18;
      if (v18 == a3)
      {
        goto LABEL_6;
      }
    }

    a2 = v17 + 1;
LABEL_9:
    v20 = v17 - result;
    if (i <= 4)
    {
      if (i > 2)
      {
        if (i == 3)
        {
          SNScanF(result, v20, "%lf", a4, a5, a6, a7, a8, v13);
        }

        else
        {
          if (v17 == result)
          {
            v23 = 63;
          }

          else
          {
            v23 = *result;
          }

          *(a1 + 40) = v23;
        }
      }

      else if (i == 1)
      {
        SNScanF(result, v20, "%lf", a4, a5, a6, a7, a8, v14);
      }

      else if (i == 2)
      {
        if (v17 == result)
        {
          v22 = 63;
        }

        else
        {
          v22 = *result;
        }

        *(a1 + 24) = v22;
      }
    }

    else if (i <= 6)
    {
      if (i == 5)
      {
        SNScanF(result, v20, "%lf", a4, a5, a6, a7, a8, v12);
      }

      else
      {
        if (v17 == result)
        {
          v24 = 63;
        }

        else
        {
          v24 = *result;
        }

        *(a1 + 56) = v24;
      }
    }

    else
    {
      switch(i)
      {
        case 7:
          SNScanF(result, v20, "%lf", a4, a5, a6, a7, a8, v11);
          break;
        case 8:
          if (v17 == result)
          {
            v25 = 63;
          }

          else
          {
            v25 = *result;
          }

          *(a1 + 72) = v25;
          break;
        case 9:
          if (v17 == result)
          {
            v21 = 63;
          }

          else
          {
            v21 = *result;
          }

          *(a1 + 73) = v21;
          break;
      }
    }
  }

LABEL_6:
  v17 = a3;
  a2 = a3;
  if (result != a3)
  {
    goto LABEL_9;
  }

  *a1 |= 4u;
  return result;
}

uint64_t _NMEAParseGPZDA(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a1 + 44;
  v25 = a1 + 48;
  v23 = a1 + 40;
  v11 = (a1 + 36);
  v12 = (a1 + 32);
  v13 = a1 + 16;
  for (i = 1; ; ++i)
  {
    v15 = a2;
    if (a2 >= a3)
    {
LABEL_6:
      v16 = a3;
      a2 = a3;
      if (v15 == a3)
      {
        v21 = YMD_HMStoSeconds(*(a1 + 40), *(a1 + 36), *(a1 + 32), *(a1 + 16), *(a1 + 20), 0, 730486);
        result = 0;
        *(a1 + 56) = *(a1 + 24) + v21 + (3600 * *(a1 + 44)) + (60 * *(a1 + 48));
        *a1 |= 4u;
        return result;
      }
    }

    else
    {
      v16 = a2;
      v17 = a2;
      while (1)
      {
        v18 = *v17++;
        if (v18 == 44)
        {
          break;
        }

        v16 = v17;
        if (v17 == a3)
        {
          goto LABEL_6;
        }
      }

      a2 = (v16 + 1);
    }

    v19 = v16 - v15;
    if (i <= 3)
    {
      break;
    }

    if (i == 4)
    {
      SNScanF(v15, v19, "%u", a4, a5, a6, a7, a8, v23);
    }

    else
    {
      if (i == 5)
      {
        v20 = v24;
      }

      else
      {
        if (i != 6)
        {
          continue;
        }

        v20 = v25;
      }

      SNScanF(v15, v19, "%d", a4, a5, a6, a7, a8, v20);
    }

LABEL_26:
    ;
  }

  if (i == 1)
  {
    if (SNScanF(v15, v19, "%2u%2u%lf", a4, a5, a6, a7, a8, v13) != 3)
    {
      return 4294960554;
    }

    goto LABEL_26;
  }

  if (i == 2)
  {
    SNScanF(v15, v19, "%u", a4, a5, a6, a7, a8, v12);
    if (*v12 > 0x1Fu)
    {
      return 4294960554;
    }

    goto LABEL_26;
  }

  if (i != 3)
  {
    goto LABEL_26;
  }

  SNScanF(v15, v19, "%u", a4, a5, a6, a7, a8, v11);
  if (*v11 <= 0xCu)
  {
    goto LABEL_26;
  }

  return 4294960554;
}

uint64_t _NMEAParseOHPR(uint64_t result, char *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = result;
  v11 = result + 48;
  v12 = result + 40;
  v13 = result + 32;
  v14 = result + 24;
  v15 = result + 16;
  v16 = 1;
  while (a2 < a3)
  {
    v17 = a2;
    v18 = a2;
    while (1)
    {
      v19 = *v18++;
      if (v19 == 44)
      {
        break;
      }

      v17 = v18;
      if (v18 == a3)
      {
        goto LABEL_6;
      }
    }

    v20 = v17 + 1;
LABEL_9:
    if (v16 > 2)
    {
      v21 = v13;
      if (v16 != 3)
      {
        v21 = v12;
        if (v16 != 4)
        {
          if (v16 != 5)
          {
            goto LABEL_17;
          }

          v21 = v11;
        }
      }

LABEL_16:
      result = SNScanF(a2, v17 - a2, "%lf", a4, a5, a6, a7, a8, v21);
      goto LABEL_17;
    }

    v21 = v15;
    if (v16 == 1)
    {
      goto LABEL_16;
    }

    v21 = v14;
    if (v16 == 2)
    {
      goto LABEL_16;
    }

LABEL_17:
    ++v16;
    a2 = v20;
  }

LABEL_6:
  v17 = a3;
  v20 = a3;
  if (a2 != a3)
  {
    goto LABEL_9;
  }

  *v10 |= 4u;
  return result;
}

uint64_t _NMEAParsePAACD(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a1 + 24;
  v29 = a1 + 32;
  __src = (a1 + 48);
  v27 = a1 + 16;
  for (i = 1; ; ++i)
  {
    v12 = a2;
    if (a2 >= a3)
    {
LABEL_6:
      v13 = a3;
      a2 = a3;
      if (v12 == a3)
      {
        result = 0;
        *a1 |= 4u;
        return result;
      }
    }

    else
    {
      v13 = a2;
      v14 = a2;
      while (1)
      {
        v15 = *v14++;
        if (v15 == 44)
        {
          break;
        }

        v13 = v14;
        if (v14 == a3)
        {
          goto LABEL_6;
        }
      }

      a2 = (v13 + 1);
    }

    v16 = v13 - v12;
    if (i == 3)
    {
      SNScanF(v12, v16, "%u", a4, a5, a6, a7, a8, v29);
      continue;
    }

    if (i == 2)
    {
      v18 = v28;
      goto LABEL_29;
    }

    v17 = i - 1;
    if (i == 1)
    {
      v18 = v27;
LABEL_29:
      SNScanF(v12, v16, "%lf", a4, a5, a6, a7, a8, v18);
      continue;
    }

    if (i >= 4)
    {
      v17 = i - 4;
    }

    v19 = v17 >> 2;
    if ((v17 >> 2) >= 8)
    {
      break;
    }

    v20 = __src;
LABEL_22:
    *(a1 + 40) = v20;
LABEL_23:
    v21 = v20 + 32 * v19;
    v22 = i - 4 - 4 * v19;
    if (v22 != 2)
    {
      if (v22 == 1)
      {
        SNScanF(v12, v16, "%lf", a4, a5, a6, a7, a8, v21 + 8);
      }

      else if (!v22)
      {
        SNScanF(v12, v16, "%lf", a4, a5, a6, a7, a8, v21);
        ++*(a1 + 36);
      }

      v18 = v21 + 24;
      goto LABEL_29;
    }

    SNScanF(v12, v16, "%lf", a4, a5, a6, a7, a8, v21 + 16);
LABEL_30:
    ;
  }

  if ((*a1 & 0x10) == 0)
  {
    goto LABEL_30;
  }

  if (v19 < *(a1 + 36))
  {
    v20 = *(a1 + 40);
    goto LABEL_23;
  }

  v16 = 32 * v19 + 32;
  v23 = malloc_type_realloc(*(a1 + 304), v16, 0x1000040E0EAB150uLL);
  if (v23)
  {
    v20 = v23;
    if (!*(a1 + 304))
    {
      memcpy(v23, __src, 32 * v19);
    }

    v24 = &v20[32 * v19];
    *v24 = 0u;
    *(v24 + 1) = 0u;
    *(a1 + 304) = v20;
    goto LABEL_22;
  }

  return 4294960568;
}

uint64_t _NMEAParsePAGCD(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a1 + 16;
  v28 = a1 + 24;
  __src = (a1 + 40);
  for (i = 1; ; ++i)
  {
    v12 = a2;
    if (a2 >= a3)
    {
LABEL_6:
      v13 = a3;
      a2 = a3;
      if (v12 == a3)
      {
        result = 0;
        *a1 |= 4u;
        return result;
      }
    }

    else
    {
      v13 = a2;
      v14 = a2;
      while (1)
      {
        v15 = *v14++;
        if (v15 == 44)
        {
          break;
        }

        v13 = v14;
        if (v14 == a3)
        {
          goto LABEL_6;
        }
      }

      a2 = (v13 + 1);
    }

    v16 = v13 - v12;
    if (i == 2)
    {
      SNScanF(v12, v16, "%u", a4, a5, a6, a7, a8, v28);
      continue;
    }

    if (i == 1)
    {
      v17 = v27;
LABEL_28:
      SNScanF(v12, v16, "%lf", a4, a5, a6, a7, a8, v17);
      continue;
    }

    v18 = i >= 3 ? i - 3 : i;
    v19 = v18 >> 2;
    if ((v18 >> 2) >= 8)
    {
      break;
    }

    v20 = __src;
LABEL_21:
    *(a1 + 32) = v20;
LABEL_22:
    v21 = v20 + 32 * v19;
    v22 = i - 3 - 4 * v19;
    if (v22 != 2)
    {
      if (v22 == 1)
      {
        SNScanF(v12, v16, "%lf", a4, a5, a6, a7, a8, v21 + 8);
      }

      else if (!v22)
      {
        SNScanF(v12, v16, "%lf", a4, a5, a6, a7, a8, v21);
        ++*(a1 + 28);
      }

      v17 = v21 + 24;
      goto LABEL_28;
    }

    SNScanF(v12, v16, "%lf", a4, a5, a6, a7, a8, v21 + 16);
LABEL_29:
    ;
  }

  if ((*a1 & 0x10) == 0)
  {
    goto LABEL_29;
  }

  if (v19 < *(a1 + 28))
  {
    v20 = *(a1 + 32);
    goto LABEL_22;
  }

  v16 = 32 * v19 + 32;
  v23 = malloc_type_realloc(*(a1 + 296), v16, 0x1000040E0EAB150uLL);
  if (v23)
  {
    v20 = v23;
    if (!*(a1 + 296))
    {
      memcpy(v23, __src, 32 * v19);
    }

    v24 = &v20[32 * v19];
    *v24 = 0u;
    *(v24 + 1) = 0u;
    *(a1 + 296) = v20;
    goto LABEL_21;
  }

  return 4294960568;
}

uint64_t _NMEAParsePASCD(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a1 + 32;
  v12 = a1 + 28;
  __src = (a1 + 48);
  v31 = a1 + 16;
  for (i = 1; ; ++i)
  {
    v14 = a2;
    if (a2 >= a3)
    {
LABEL_6:
      v15 = a3;
      a2 = a3;
      if (v14 == a3)
      {
        result = 0;
        *a1 |= 4u;
        return result;
      }
    }

    else
    {
      v15 = a2;
      v16 = a2;
      while (1)
      {
        v17 = *v16++;
        if (v17 == 44)
        {
          break;
        }

        v15 = v16;
        if (v16 == a3)
        {
          goto LABEL_6;
        }
      }

      a2 = (v15 + 1);
    }

    v18 = v15 - v14;
    if (i > 2)
    {
      break;
    }

    if (i == 1)
    {
      v29 = v31;
      v21 = v14;
      v22 = v15 - v14;
      goto LABEL_35;
    }

    if (i != 2)
    {
      goto LABEL_23;
    }

    if (v18)
    {
      v19 = *v14;
    }

    else
    {
      v19 = 63;
    }

    *(a1 + 24) = v19;
LABEL_37:
    ;
  }

  switch(i)
  {
    case 3:
      if (v18)
      {
        v20 = *v14;
      }

      else
      {
        v20 = 63;
      }

      *(a1 + 25) = v20;
      goto LABEL_37;
    case 4:
      v29 = v12;
LABEL_21:
      v21 = v14;
      v22 = v15 - v14;
      v23 = "%u";
      goto LABEL_36;
    case 5:
      v29 = v11;
      goto LABEL_21;
  }

LABEL_23:
  v24 = (i - 6 + ((i - 6) >> 31)) >> 1;
  if (((i - 6) / 2) < 8)
  {
    LODWORD(v25) = __src;
    *(a1 + 40) = __src;
    goto LABEL_28;
  }

  if ((*a1 & 0x10) == 0)
  {
    goto LABEL_37;
  }

  if (((i - 6) / 2) < *(a1 + 36))
  {
    v25 = *(a1 + 40);
LABEL_28:
    if ((i & 1) == 0)
    {
      SNScanF(v14, v18, "%lf", a4, a5, a6, a7, a8, v25 + 16 * ((i - 6) / 2));
      ++*(a1 + 36);
      goto LABEL_37;
    }

    v29 = v25 + 16 * ((i - 6) / 2) + 8;
    v21 = v14;
    v22 = v18;
LABEL_35:
    v23 = "%lf";
LABEL_36:
    SNScanF(v21, v22, v23, a4, a5, a6, a7, a8, v29);
    goto LABEL_37;
  }

  v18 = 16 * v24 + 16;
  v26 = malloc_type_realloc(*(a1 + 176), v18, 0x1000040451B5BE8uLL);
  if (v26)
  {
    v25 = v26;
    if (!*(a1 + 176))
    {
      memcpy(v26, __src, 16 * v24);
    }

    v27 = &v25[16 * v24];
    *v27 = 0;
    *(v27 + 1) = 0;
    *(a1 + 176) = v25;
    *(a1 + 40) = v25;
    goto LABEL_28;
  }

  return 4294960568;
}

void NMEAFree(uint64_t a1)
{
  if (!strcmp((a1 + 4), "PAACD"))
  {
    *(a1 + 36) = 0;
    *(a1 + 40) = 0;
    v2 = *(a1 + 304);
    if (!v2)
    {
      return;
    }

    v3 = (a1 + 304);
    goto LABEL_10;
  }

  if (!strcmp((a1 + 4), "PAGCD"))
  {
    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v2 = *(a1 + 296);
    if (!v2)
    {
      return;
    }

    v3 = (a1 + 296);
    goto LABEL_10;
  }

  if (!strcmp((a1 + 4), "PASCD"))
  {
    v4 = *(a1 + 176);
    v3 = (a1 + 176);
    v2 = v4;
    *(v3 - 35) = 0;
    *(v3 - 17) = 0;
    if (v4)
    {
LABEL_10:
      free(v2);
      *v3 = 0;
    }
  }
}

uint64_t ParseCommandLineIntoArgV(const char *a1, _DWORD *a2, void *a3)
{
  v5 = a1;
  v6 = strlen(a1);
  v7 = malloc_type_malloc(v6 + 1, 0x100004077774924uLL);
  if (!v7)
  {
    return 4294960568;
  }

  v8 = v7;
  v9 = malloc_type_malloc(0x88uLL, 0x10040436913F5uLL);
  if (!v9)
  {
    goto LABEL_59;
  }

  v10 = v9;
  if (v6 < 1)
  {
    v29 = 0;
    *v9 = 0;
    *a2 = 0;
    *a3 = v9;
    goto LABEL_55;
  }

  v33 = a2;
  v11 = 0;
  v12 = &v5[v6];
  v13 = 16;
  v14 = MEMORY[0x1E69E9830];
  v15 = v8;
  while (2)
  {
    v16 = v11;
    while (1)
    {
      v17 = *v5;
      if (v17 < 0)
      {
        break;
      }

      if ((*(v14 + 4 * v17 + 60) & 0x4000) == 0)
      {
        goto LABEL_12;
      }

LABEL_10:
      if (++v5 >= v12)
      {
        v29 = 0;
        v10[v16] = 0;
        *v33 = v16;
        *a3 = v10;
        if (!v16)
        {
          goto LABEL_55;
        }

        return v29;
      }
    }

    if (__maskrune(*v5, 0x4000uLL))
    {
      goto LABEL_10;
    }

LABEL_12:
    v32 = v13;
    v31 = a3;
    v18 = 0;
    v19 = 0;
    v20 = v15;
    v21 = v5;
    while (1)
    {
      do
      {
        while (2)
        {
          while (1)
          {
            v5 = v21;
            v22 = v18;
            while (1)
            {
              if (v5 >= v12)
              {
                goto LABEL_44;
              }

              v18 = v22;
              v21 = v5 + 1;
              v23 = *v5;
              if (!v22)
              {
                break;
              }

              v22 = 0;
              ++v5;
              if (v23 != 39)
              {
                goto LABEL_17;
              }
            }

            if (!v19)
            {
              break;
            }

            v18 = 0;
            v19 = 0;
            if (v23 != 34)
            {
              if (v23 != 92)
              {
                goto LABEL_36;
              }

              if (v21 >= v12)
              {
                goto LABEL_35;
              }

              LODWORD(v23) = *v21;
              if (v23 != 10)
              {
                if (v23 == 92 || v23 == 34)
                {
                  v18 = 0;
                  v21 = v5 + 2;
                }

                else
                {
LABEL_35:
                  v18 = 0;
                  LOBYTE(v23) = 92;
                }

LABEL_36:
                v19 = 1;
LABEL_17:
                *v20++ = v23;
                continue;
              }

              v18 = 0;
              v21 = v5 + 2;
              goto LABEL_31;
            }
          }

          if (v23 == 34)
          {
            v18 = 0;
LABEL_31:
            v19 = 1;
            continue;
          }

          break;
        }

        v19 = 0;
        v18 = 1;
      }

      while (v23 == 39);
      if (v23 != 92)
      {
        break;
      }

      if (v21 >= v12)
      {
        v18 = 0;
        v19 = 0;
        LOBYTE(v23) = 92;
        goto LABEL_17;
      }

      v18 = 0;
      v21 = v5 + 2;
      LODWORD(v23) = v5[1];
      v19 = 0;
      if (v23 != 10)
      {
        v19 = 0;
        goto LABEL_17;
      }
    }

    if ((v23 & 0x80) != 0)
    {
      v24 = __maskrune(*v5, 0x4000uLL);
    }

    else
    {
      v24 = *(v14 + 4 * v23 + 60) & 0x4000;
    }

    if (!v24)
    {
      v18 = 0;
      v19 = 0;
      goto LABEL_17;
    }

    ++v5;
LABEL_44:
    *v20 = 0;
    v25 = v20 + 1;
    v13 = v32;
    if (v16 < v32)
    {
LABEL_50:
      v11 = v16 + 1;
      v10[v16] = v15;
      v15 = v25;
      a3 = v31;
      if (v5 >= v12)
      {
        v29 = 0;
        v10[v11] = 0;
        *v33 = v11;
        *v31 = v10;
        return v29;
      }

      continue;
    }

    break;
  }

  v26 = malloc_type_malloc(8 * ((2 * v32) | 1), 0x10040436913F5uLL);
  if (v26)
  {
    v27 = v26;
    if (v16)
    {
      for (i = 0; i != v16; ++i)
      {
        v26[i] = v10[i];
      }
    }

    v13 = 2 * v32;
    free(v10);
    v10 = v27;
    goto LABEL_50;
  }

  free(v10);
LABEL_59:
  v29 = 4294960568;
LABEL_55:
  free(v8);
  return v29;
}

void FreeCommandLineArgV(int a1, void **a2)
{
  if (a2)
  {
    if (*a2)
    {
      free(*a2);
    }

    free(a2);
  }
}

uint64_t ParseCommaSeparatedNameValuePair(unsigned __int8 *a1, unint64_t a2, _BYTE *a3, uint64_t a4, void *a5, _BYTE *a6, void *a7, void *a8)
{
  v13 = a1;
  if (a1 >= a2)
  {
    result = 4294960569;
    if (!a8)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = ParseEscapedString(a1, a2, 0x3Du, a3, a4, a5, &v13);
  if (!result)
  {
    result = ParseEscapedString(v13, a2, 0x2Cu, a6, 256, a7, &v13);
  }

  if (a8)
  {
LABEL_5:
    *a8 = v13;
  }

  return result;
}

uint64_t ParseEscapedString(unsigned __int8 *a1, unint64_t a2, unsigned __int8 a3, _BYTE *a4, uint64_t a5, void *a6, unsigned __int8 **a7)
{
  if (a5)
  {
    v7 = a5 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (a1 < a2)
  {
    v8 = &a4[v7];
    v9 = a4;
    while (1)
    {
      v10 = a1 + 1;
      v11 = *a1;
      if (v11 == a3)
      {
        ++a1;
        goto LABEL_19;
      }

      if (v11 == 92)
      {
        if (v10 >= a2)
        {
          v12 = 4294960546;
          if (!a6)
          {
            goto LABEL_23;
          }

LABEL_22:
          *a6 = v9 - a4;
          goto LABEL_23;
        }

        LOBYTE(v11) = a1[1];
        a1 += 2;
      }

      else
      {
        ++a1;
      }

      if (v9 < v8)
      {
        if (a4)
        {
          *v9 = v11;
        }

        ++v9;
      }

      if (a1 >= a2)
      {
        goto LABEL_19;
      }
    }
  }

  v9 = a4;
LABEL_19:
  v12 = 0;
  if (a4)
  {
    *v9 = 0;
  }

  v10 = a1;
  if (a6)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (a7)
  {
    *a7 = v10;
  }

  return v12;
}

uint64_t ParseLine(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 **a3, int64_t *a4, unsigned __int8 **a5)
{
  if (a1 == a2)
  {
    return 0;
  }

  if (a1 >= a2)
  {
    v5 = 0;
    a2 = a1;
LABEL_12:
    *a3 = a1;
    *a4 = v5;
  }

  else
  {
    v5 = a2 - a1;
    v6 = a1;
    while (1)
    {
      v7 = *v6;
      if (v7 == 10 || v7 == 13)
      {
        break;
      }

      if (++v6 == a2)
      {
        goto LABEL_12;
      }
    }

    *a3 = a1;
    *a4 = v6 - a1;
    v10 = v6 + 1;
    v11 = v7 != 13 || v10 >= a2;
    a2 = v6 + 1;
    if (!v11)
    {
      v12 = v6[1];
      v13 = v6 + 2;
      if (v12 == 10)
      {
        a2 = v13;
      }

      else
      {
        a2 = v10;
      }
    }
  }

  *a5 = a2;
  return 1;
}

uint64_t ReplaceDifferentString(void **a1, char *a2)
{
  v2 = a2;
  v4 = *a1;
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = "";
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = "";
  }

  result = strcmp(v5, v6);
  if (result)
  {
    if (v2)
    {
      if (!*v2)
      {
        v2 = 0;
        if (!v4)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      v2 = strdup(v2);
      if (!v2)
      {
        return 4294960568;
      }
    }

    if (!v4)
    {
LABEL_13:
      result = 0;
      *a1 = v2;
      return result;
    }

LABEL_12:
    free(v4);
    goto LABEL_13;
  }

  return result;
}

uint64_t ReplaceString(void **a1, size_t *a2, char *__s, size_t a4)
{
  v4 = a4;
  if (__s)
  {
    if (a4 == -1)
    {
      v4 = strlen(__s);
    }

    v8 = malloc_type_malloc(v4 + 1, 0x100004077774924uLL);
    if (!v8)
    {
      return 4294960568;
    }

    v9 = v8;
    memcpy(v8, __s, v4);
    v9[v4] = 0;
  }

  else
  {
    v9 = 0;
  }

  if (*a1)
  {
    free(*a1);
  }

  *a1 = v9;
  result = 0;
  if (a2)
  {
    *a2 = v4;
  }

  return result;
}

const char *GetFileExtensionFromString(char *a1)
{
  v1 = strrchr(a1, 46);
  if (!v1)
  {
    return "";
  }

  v4 = v1[1];
  result = v1 + 1;
  v3 = v4;
  if ((v4 - 48) < 0xA || v3 == 37 || v3 == 32)
  {
    return "";
  }

  return result;
}

uint64_t StringArray_Append(const void **a1, uint64_t *a2, char *__s1)
{
  v5 = strdup(__s1);
  if (!v5)
  {
    return 4294960568;
  }

  v6 = v5;
  v7 = *a2;
  v8 = *a2 + 1;
  v9 = malloc_type_malloc(8 * v8, 0x10040436913F5uLL);
  if (!v9)
  {
    free(v6);
    return 4294960568;
  }

  v10 = v9;
  if (v7)
  {
    v11 = *a1;
    memcpy(v9, *a1, 8 * v7);
    free(v11);
  }

  result = 0;
  v10[v7] = v6;
  *a1 = v10;
  *a2 = v8;
  return result;
}

void StringArray_Free(void **a1, uint64_t a2)
{
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      free(a1[i]);
    }

    free(a1);
  }
}

uint64_t TextFindColumn(char *__s, size_t a2, _BYTE *a3, int a4, void *a5, void *a6)
{
  v10 = __s;
  if (a2 == -1)
  {
    a2 = strlen(__s);
  }

  v11 = &v10[a2];
  v12 = 1;
  do
  {
    v13 = v10;
    if (v10 >= v11)
    {
LABEL_11:
      v14 = v11;
      v10 = v11;
      if (v13 == v11)
      {
        return 4294960569;
      }
    }

    else
    {
      v14 = v10;
      while (!*a3)
      {
LABEL_10:
        if (++v14 == v11)
        {
          goto LABEL_11;
        }
      }

      v15 = a3 + 1;
      v16 = *a3;
      while (*v14 != v16)
      {
        v17 = *v15++;
        v16 = v17;
        if (!v17)
        {
          goto LABEL_10;
        }
      }

      v10 = v14 + 1;
    }
  }

  while (v12++ != a4);
  if (a5)
  {
    *a5 = v13;
  }

  result = 0;
  if (a6)
  {
    *a6 = v14 - v13;
  }

  return result;
}

uint64_t TextSep(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, void *a4, void *a5, unsigned __int8 **a6)
{
  if (a1 >= a2)
  {
LABEL_8:
    if (a1 == a2)
    {
      result = 0;
      if (a6)
      {
        goto LABEL_14;
      }
    }

    else
    {
      *a4 = a1;
      *a5 = a2 - a1;
      result = 1;
      if (a6)
      {
LABEL_14:
        *a6 = a2;
      }
    }
  }

  else
  {
    v8 = *a3;
    v6 = a3 + 1;
    v7 = v8;
    v9 = a1;
    while (!v7)
    {
LABEL_7:
      if (++v9 == a2)
      {
        goto LABEL_8;
      }
    }

    v10 = v6;
    v11 = v7;
    while (*v9 != v11)
    {
      v12 = *v10++;
      v11 = v12;
      if (!v12)
      {
        goto LABEL_7;
      }
    }

    *a4 = a1;
    *a5 = v9 - a1;
    if (a6)
    {
      a2 = v9 + 1;
      result = 1;
      goto LABEL_14;
    }

    return 1;
  }

  return result;
}

size_t TruncateUTF8(char *a1, size_t a2, void *a3, uint64_t a4, int a5)
{
  if (!a4)
  {
    return 0;
  }

  v8 = TruncatedUTF8Length(a1, a2, a4 - (a5 != 0));
  memmove(a3, a1, v8);
  if (a5)
  {
    *(a3 + v8) = 0;
  }

  return v8;
}

int64_t XMLEscape(const char *a1, char *a2, void *a3)
{
  v5 = a1;
  result = strlen(a1);
  v7 = a2;
  if (result >= 1)
  {
    v8 = &v5[result];
    v7 = a2;
    do
    {
      v9 = *v5;
      if (v9 <= 0x26)
      {
        if (v9 == 34)
        {
          v10 = "&quot;";
        }

        else
        {
          v10 = "&amp;";
          if (v9 != 38)
          {
LABEL_10:
            if (a2)
            {
              *v7 = v9;
            }

            ++v7;
            goto LABEL_21;
          }
        }
      }

      else
      {
        switch(v9)
        {
          case '\'':
            v10 = "&#39;";
            break;
          case '<':
            v10 = "&lt;";
            break;
          case '>':
            v10 = "&gt;";
            break;
          default:
            goto LABEL_10;
        }
      }

      v11 = *v10;
      if (*v10)
      {
        v12 = (v10 + 1);
        do
        {
          if (a2)
          {
            *v7 = v11;
          }

          ++v7;
          v13 = *v12++;
          v11 = v13;
        }

        while (v13);
      }

LABEL_21:
      ++v5;
    }

    while (v5 < v8);
  }

  *a3 = v7 - a2;
  return result;
}

uint64_t XMLEscapeCopy(const char *a1, char **a2)
{
  v7 = 0;
  XMLEscape(a1, 0, &v7);
  v4 = malloc_type_malloc(v7 + 1, 0x100004077774924uLL);
  if (!v4)
  {
    return 4294960568;
  }

  v5 = v4;
  XMLEscape(a1, v4, &v7);
  result = 0;
  v5[v7] = 0;
  *a2 = v5;
  return result;
}

_BYTE *MakeDomainNameFromDNSNameString(_BYTE *a1, char *a2)
{
  v2 = 0;
  *a1 = 0;
  while (1)
  {
    v3 = a1[v2];
    if (v3 > 0x3F)
    {
LABEL_5:
      v4 = a1 + 255;
      goto LABEL_6;
    }

    if (!a1[v2])
    {
      break;
    }

    v2 += v3 + 1;
    if (v2 >= 0xFF)
    {
      goto LABEL_5;
    }
  }

  v7 = &a1[v2];
  if (v2 > 0xFD || (v8 = *a2) == 0)
  {
    v4 = &a1[v2];
    goto LABEL_6;
  }

  v9 = a1 + 1;
  do
  {
    if (v8 == 46)
    {
      return 0;
    }

    if (v2 <= 253)
    {
      v10 = 253;
    }

    else
    {
      v10 = v2;
    }

    for (i = v2; ; ++i)
    {
      if (!v8 || v8 == 46)
      {
        v10 = i;
LABEL_29:
        v18 = i + 1;
        v4 = &v9[i];
        i = v10;
        goto LABEL_30;
      }

      if (v10 == i)
      {
        goto LABEL_29;
      }

      v12 = a2 + 1;
      if (v8 == 92)
      {
        break;
      }

LABEL_27:
      v9[i] = v8;
      v8 = *v12;
      a2 = v12;
    }

    v13 = *v12;
    if (*v12)
    {
      v8 = *v12;
      v12 = a2 + 2;
      if (v13 - 48 <= 9)
      {
        v14 = *v12;
        if ((v14 - 48) <= 9)
        {
          v15 = a2[3];
          if ((v15 - 48) <= 9)
          {
            v16 = 100 * v13 + 10 * v14 + v15;
            v17 = a2 + 4;
            if (v16 < 5584)
            {
              v8 = v16 + 48;
              v12 = v17;
            }
          }
        }
      }

      goto LABEL_27;
    }

    v8 = 0;
    v18 = i + 1;
    v4 = &v9[i];
    ++a2;
LABEL_30:
    v19 = i - v2;
    if (v19 > 63)
    {
      return 0;
    }

    if (v8)
    {
      ++a2;
    }

    *v7 = v19;
    if (i > 252)
    {
      break;
    }

    v8 = *a2;
    v7 = v4;
    v2 = v18;
  }

  while (*a2);
LABEL_6:
  *v4 = 0;
  v5 = v4 + 1;
  if (*a2)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}