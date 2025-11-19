void _DADispatchCallback(CFTypeRef cf, int a2, uint64_t a3, unsigned int a4, const __CFData *a5, const __CFNumber *a6)
{
  v7 = a5;
  if (a5)
  {
    v11 = CFGetAllocator(cf);
    v7 = _DADiskCreateFromSerialization(v11, cf, v7);
  }

  v12 = DAGetCallbackFromSession(cf, a2);
  if (v12)
  {
    v13 = v12;
    IntegerValue = ___CFDictionaryGetIntegerValue(v12, @"DACallbackAddress");
    v15 = ___CFDictionaryGetIntegerValue(v13, @"DACallbackContext");
    v16 = ___CFDictionaryGetIntegerValue(v13, @"DACallbackBlock");
    if (IntegerValue)
    {
      switch(a4)
      {
        case 0u:
        case 4u:
          if (v16)
          {
            (*(IntegerValue + 2))(IntegerValue, v7);
          }

          else
          {
            (IntegerValue)(v7, v15);
          }

          goto LABEL_47;
        case 1u:
        case 5u:
        case 7u:
        case 0xCu:
        case 0xDu:
          if (v16)
          {
            (*(IntegerValue + 2))(IntegerValue, v7, a6);
          }

          else
          {
            (IntegerValue)(v7, a6, v15);
          }

          goto LABEL_46;
        case 2u:
        case 6u:
        case 8u:
        case 0xEu:
          if (v16)
          {
            v17 = (*(IntegerValue + 2))(IntegerValue, v7);
          }

          else
          {
            v17 = (IntegerValue)(v7, v15);
          }

          v18 = *MEMORY[0x277CBEEE8];
          if (v17)
          {
            v19 = v17;
          }

          else
          {
            v19 = *MEMORY[0x277CBEEE8];
          }

          if (!v19)
          {
            break;
          }

          goto LABEL_32;
        case 3u:
          if (v16)
          {
            (*(IntegerValue + 2))(IntegerValue, v7, a6);
          }

          else
          {
            (IntegerValue)(v7, a6, v15);
          }

          goto LABEL_47;
        case 9u:
          if (v16)
          {
            (*(IntegerValue + 2))(IntegerValue, v7);
          }

          else
          {
            (IntegerValue)(v7, v15);
          }

          v18 = *MEMORY[0x277CBEEE8];
          v19 = *MEMORY[0x277CBEEE8];
          if (!*MEMORY[0x277CBEEE8])
          {
            break;
          }

LABEL_32:
          v20 = ___CFNumberGetIntegerValue(a6);
          if (_DASessionGetID(cf) || !_DASessionIsKeepAlive(cf) || !_DASessionRecreate(cf))
          {
            v27 = v18;
            if (v19 == v18)
            {
              v21 = 0;
            }

            else
            {
              v21 = _DASerialize(*MEMORY[0x277CBECE8]);
            }

            ID = _DASessionGetID(cf);
            v23 = _DADiskGetID(v7);
            if (v21)
            {
              v26 = v20;
              BytePtr = CFDataGetBytePtr(v21);
              Length = CFDataGetLength(v21);
              _DAServerSessionQueueResponse(ID, a2, a2, a4, v23, BytePtr, Length, v26);
              CFRelease(v21);
            }

            else
            {
              _DAServerSessionQueueResponse(ID, a2, a2, a4, v23, 0, 0, v20);
            }

            v18 = v27;
          }

          if (v19 != v18)
          {
            CFRelease(v19);
          }

          break;
        case 0xAu:
          if (!v16)
          {
            goto LABEL_46;
          }

          goto LABEL_24;
        case 0xFu:
          if (!v16)
          {
            goto LABEL_27;
          }

          (*(IntegerValue + 2))(IntegerValue);
          goto LABEL_47;
        case 0x10u:
LABEL_27:
          (IntegerValue)(v15);
          goto LABEL_47;
        case 0x11u:
LABEL_24:
          (*(IntegerValue + 2))(IntegerValue, a6);
          goto LABEL_46;
        default:
          goto LABEL_47;
      }
    }
  }

  if (a4 <= 0x11 && ((1 << a4) & 0x234A2) != 0)
  {
LABEL_46:
    DARemoveCallbackFromSessionWithKey(cf, a2);
  }

LABEL_47:
  if (v7)
  {

    CFRelease(v7);
  }
}

void __DAInitialize()
{
  _DADiskInitialize();
  _DASessionInitialize();
  v0 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    __DAInitialize_cold_6();
  }

  v2 = Mutable;
  ___CFDictionarySetIntegerValue(Mutable, @"DAMediaSize", 0);
  kDADiskDescriptionMatchMediaUnformatted = v2;
  v3 = CFDictionaryCreateMutable(v0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v3)
  {
    __DAInitialize_cold_5();
  }

  v4 = v3;
  v5 = *MEMORY[0x277CBED28];
  CFDictionarySetValue(v3, @"DAMediaWhole", *MEMORY[0x277CBED28]);
  kDADiskDescriptionMatchMediaWhole = v4;
  v6 = CFDictionaryCreateMutable(v0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v6)
  {
    __DAInitialize_cold_4();
  }

  v7 = v6;
  CFDictionarySetValue(v6, @"DAVolumeMountable", v5);
  kDADiskDescriptionMatchVolumeMountable = v7;
  v8 = CFDictionaryCreateMutable(v0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v8)
  {
    __DAInitialize_cold_3();
  }

  v9 = v8;
  CFDictionarySetValue(v8, @"DAVolumeMountable", *MEMORY[0x277CBED10]);
  kDADiskDescriptionMatchVolumeUnrecognized = v9;
  v10 = CFArrayCreateMutable(v0, 0, MEMORY[0x277CBF128]);
  if (!v10)
  {
    __DAInitialize_cold_2();
  }

  v11 = v10;
  CFArrayAppendValue(v10, @"DAVolumeName");
  kDADiskDescriptionWatchVolumeName = v11;
  v12 = CFArrayCreateMutable(v0, 0, MEMORY[0x277CBF128]);
  if (!v12)
  {
    __DAInitialize_cold_1();
  }

  v13 = v12;
  CFArrayAppendValue(v12, @"DAVolumePath");
  kDADiskDescriptionWatchVolumePath = v13;
}

void _DARegisterCallback(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, const __CFDictionary *a6, CFMutableDataRef a7, unsigned int a8)
{
  if (!a1 || !_DASessionGetID(a1) && _DASessionIsKeepAlive(a1) && _DASessionRecreate(a1))
  {
    return;
  }

  v16 = *MEMORY[0x277CBECE8];
  if (a6)
  {
    a6 = _DASerializeDiskDescription(*MEMORY[0x277CBECE8], a6);
  }

  if (a7)
  {
    a7 = _DASerialize(v16);
  }

  v17 = DACallbackCreate(v16, a2, a3, a4, a5, a6, a7, a8);
  v18 = DAAddCallbackToSession(a1, v17);
  CFRelease(v17);
  ID = _DASessionGetID(a1);
  v20 = v18;
  if (!a6)
  {
    BytePtr = 0;
    Length = 0;
    if (a7)
    {
      goto LABEL_11;
    }

LABEL_13:
    v23 = 0;
    v24 = 0;
    goto LABEL_14;
  }

  BytePtr = CFDataGetBytePtr(a6);
  Length = CFDataGetLength(a6);
  if (!a7)
  {
    goto LABEL_13;
  }

LABEL_11:
  v23 = CFDataGetBytePtr(a7);
  v24 = CFDataGetLength(a7);
LABEL_14:
  _DAServerSessionRegisterCallback(ID, v20, v20, a4, a5, BytePtr, Length, v23, v24);
  if (a6)
  {
    CFRelease(a6);
  }

  if (a7)
  {

    CFRelease(a7);
  }
}

uint64_t _DAUnregisterCallback(uint64_t result, const __CFNumber *a2, const __CFNumber *a3)
{
  if (result)
  {
    v5 = result;
    if (_DASessionGetID(result) || !_DASessionIsKeepAlive(v5) || (result = _DASessionRecreate(v5), !result))
    {
      v6 = DARemoveCallbackFromSession(v5, a2, a3);
      ID = _DASessionGetID(v5);

      return _DAServerSessionUnregisterCallback(ID, v6, v6);
    }
  }

  return result;
}

void DADiskClaimCommon(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void (**a5)(void, void, void), uint64_t a6, unsigned int a7)
{
  v11 = MEMORY[0x277CBECE8];
  if (!a1)
  {
    v20 = -119930877;
    if (!a5)
    {
      return;
    }

    goto LABEL_9;
  }

  v13 = *MEMORY[0x277CBECE8];
  v14 = DACallbackCreate(*MEMORY[0x277CBECE8], a3, a4, 0xFFFFFFFF, 0, 0, 0, a7);
  Session = _DADiskGetSession(a1);
  v16 = DAAddCallbackToSession(Session, v14);
  CFRelease(v14);
  v17 = ___CFNumberCreateWithIntegerValue(v13, v16);
  v18 = ___CFNumberCreateWithIntegerValue(v13, v16);
  v19 = _DADiskGetSession(a1);
  v20 = __DAQueueRequest(v19, 1, a1, a2, v17, v18, a5, a6, a7);
  if (v17)
  {
    CFRelease(v17);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (a5)
  {
LABEL_9:
    if (v20)
    {
      v21 = DADissenterCreate(*v11, v20, 0);
      if (a7)
      {
        (a5)[2](a5, a1, v21);
        _Block_release(a5);
      }

      else
      {
        (a5)(a1, v21, a6);
      }

      CFRelease(v21);
    }
  }
}

uint64_t __DAQueueRequest(uint64_t a1, int a2, uint64_t a3, int a4, const __CFData *a5, const __CFData *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v9 = 4175036419;
  if (!a1 || !_DASessionGetID(a1) && _DASessionIsKeepAlive(a1) && _DASessionRecreate(a1))
  {
    return v9;
  }

  v18 = *MEMORY[0x277CBECE8];
  if (a5)
  {
    a5 = _DASerialize(*MEMORY[0x277CBECE8]);
  }

  if (a6)
  {
    a6 = _DASerialize(v18);
  }

  v19 = DACallbackCreate(v18, a7, a8, 0xFFFFFFFF, 0, 0, 0, a9);
  v20 = DAAddCallbackToSession(a1, v19);
  CFRelease(v19);
  ID = _DASessionGetID(a1);
  v22 = _DADiskGetID(a3);
  if (!a5)
  {
    BytePtr = 0;
    Length = 0;
    if (a6)
    {
      goto LABEL_11;
    }

LABEL_13:
    v25 = 0;
    v26 = 0;
    goto LABEL_14;
  }

  BytePtr = CFDataGetBytePtr(a5);
  Length = CFDataGetLength(a5);
  if (!a6)
  {
    goto LABEL_13;
  }

LABEL_11:
  v25 = CFDataGetBytePtr(a6);
  v26 = CFDataGetLength(a6);
LABEL_14:
  v9 = _DAServerSessionQueueRequest(ID, a2, v22, a4, BytePtr, Length, v25, v26, v20, v20);
  if (a5)
  {
    CFRelease(a5);
  }

  if (a6)
  {
    CFRelease(a6);
  }

  return v9;
}

void DADiskEjectCommon(uint64_t a1, int a2, void (**a3)(void, void, void), uint64_t a4, int a5, _OWORD *a6)
{
  if (a1)
  {
    _DADiskGetSession(a1);
    v12 = a6[1];
    *atoken.val = *a6;
    *&atoken.val[4] = v12;
    v13 = audit_token_to_pid(&atoken);
    Session = _DADiskGetSession(a1);
    if (v13 == -1)
    {
      v16 = __DAQueueRequest(Session, 5, a1, a2, 0, 0, a3, a4, a5);
    }

    else
    {
      v15 = a6[1];
      *atoken.val = *a6;
      *&atoken.val[4] = v15;
      v16 = __DAQueueRequestWithUserToken(Session, 5, a1, a2, 0, 0, a3, a4, a5, &atoken);
    }

    v17 = v16;
    if (!a3)
    {
      return;
    }
  }

  else
  {
    v17 = -119930877;
    if (!a3)
    {
      return;
    }
  }

  if (v17)
  {
    v18 = DADissenterCreate(*MEMORY[0x277CBECE8], v17, 0);
    if (a5)
    {
      (a3)[2](a3, a1, v18);
      _Block_release(a3);
    }

    else
    {
      (a3)(a1, v18, a4);
    }

    CFRelease(v18);
  }
}

uint64_t __DAQueueRequestWithUserToken(uint64_t a1, int a2, uint64_t a3, int a4, const __CFData *a5, const __CFData *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, _OWORD *a10)
{
  v10 = 4175036419;
  if (!a1 || !_DASessionGetID(a1) && _DASessionIsKeepAlive(a1) && _DASessionRecreate(a1))
  {
    return v10;
  }

  v19 = *MEMORY[0x277CBECE8];
  if (a5)
  {
    a5 = _DASerialize(*MEMORY[0x277CBECE8]);
  }

  if (a6)
  {
    a6 = _DASerialize(v19);
  }

  v20 = DACallbackCreate(v19, a7, a8, 0xFFFFFFFF, 0, 0, 0, a9);
  v21 = DAAddCallbackToSession(a1, v20);
  CFRelease(v20);
  ID = _DASessionGetID(a1);
  v23 = _DADiskGetID(a3);
  if (!a5)
  {
    BytePtr = 0;
    Length = 0;
    if (a6)
    {
      goto LABEL_11;
    }

LABEL_13:
    v26 = 0;
    v27 = 0;
    goto LABEL_14;
  }

  BytePtr = CFDataGetBytePtr(a5);
  Length = CFDataGetLength(a5);
  if (!a6)
  {
    goto LABEL_13;
  }

LABEL_11:
  v26 = CFDataGetBytePtr(a6);
  v27 = CFDataGetLength(a6);
LABEL_14:
  v28 = a10[1];
  v30[0] = *a10;
  v30[1] = v28;
  v10 = _DAServerSessionQueueRequestWithUserToken(ID, a2, v30, v23, a4, BytePtr, Length, v26, v27, v21, v21);
  if (a5)
  {
    CFRelease(a5);
  }

  if (a6)
  {
    CFRelease(a6);
  }

  return v10;
}

Boolean DADiskIsClaimed(DADiskRef disk)
{
  v7 = 0;
  if (!disk)
  {
    return 0;
  }

  Session = _DADiskGetSession(disk);
  if (!_DADiskGetSessionID(disk) && _DASessionIsKeepAlive(Session) && _DASessionRecreate(Session))
  {
    return 0;
  }

  SessionID = _DADiskGetSessionID(disk);
  ID = _DADiskGetID(disk);
  _DAServerDiskIsClaimed(SessionID, ID, &v7);
  return v7;
}

void DADiskMountWithArgumentsCommon(uint64_t a1, const __CFURL *a2, int a3, void (**a4)(void, void, void), uint64_t a5, uint64_t a6, int a7, _OWORD *a8)
{
  if (!a6 || !*a6)
  {
    MutableCopy = 0;
    goto LABEL_10;
  }

  if (*(a6 + 8))
  {
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, *a6);
    if (MutableCopy && *(a6 + 8))
    {
      v17 = (a6 + 16);
      do
      {
        CFStringAppend(MutableCopy, @",");
        CFStringAppend(MutableCopy, *(v17 - 1));
      }

      while (*v17++);
    }

LABEL_10:
    if (a2)
    {
      goto LABEL_11;
    }

LABEL_20:
    v19 = 0;
    if (a1)
    {
      goto LABEL_14;
    }

    goto LABEL_21;
  }

  MutableCopy = CFRetain(*a6);
  if (!a2)
  {
    goto LABEL_20;
  }

LABEL_11:
  v19 = CFURLCopyAbsoluteURL(a2);
  if (!v19)
  {
    CFRetain(a2);
    v19 = a2;
  }

  if (a1)
  {
LABEL_14:
    _DADiskGetSession(a1);
    v20 = a8[1];
    *atoken.val = *a8;
    *&atoken.val[4] = v20;
    v21 = audit_token_to_pid(&atoken);
    Session = _DADiskGetSession(a1);
    if (v21 == -1)
    {
      if (v19)
      {
        v24 = CFURLGetString(v19);
      }

      else
      {
        v24 = 0;
      }

      v27 = __DAQueueRequest(Session, 7, a1, a3, v24, MutableCopy, a4, a5, a7);
    }

    else
    {
      if (v19)
      {
        v23 = CFURLGetString(v19);
      }

      else
      {
        v23 = 0;
      }

      v26 = a8[1];
      *atoken.val = *a8;
      *&atoken.val[4] = v26;
      v27 = __DAQueueRequestWithUserToken(Session, 7, a1, a3, v23, MutableCopy, a4, a5, a7, &atoken);
    }

    v25 = v27;
    if (MutableCopy)
    {
      goto LABEL_28;
    }

    goto LABEL_29;
  }

LABEL_21:
  v25 = -119930877;
  if (MutableCopy)
  {
LABEL_28:
    CFRelease(MutableCopy);
  }

LABEL_29:
  if (v19)
  {
    CFRelease(v19);
  }

  if (a4 && v25)
  {
    v28 = DADissenterCreate(*MEMORY[0x277CBECE8], v25, 0);
    if (a7)
    {
      (a4)[2](a4, a1, v28);
      _Block_release(a4);
    }

    else
    {
      (a4)(a1, v28, a5);
    }

    CFRelease(v28);
  }
}

void DADiskRenameCommon(uint64_t a1, CFTypeRef cf, int a3, void (**a4)(void, void, void), uint64_t a5, int a6, _OWORD *a7)
{
  v11 = -119930877;
  if (a1)
  {
    if (cf)
    {
      v15 = CFGetTypeID(cf);
      if (v15 == CFStringGetTypeID())
      {
        _DADiskGetSession(a1);
        v16 = a7[1];
        *atoken.val = *a7;
        *&atoken.val[4] = v16;
        v17 = audit_token_to_pid(&atoken);
        Session = _DADiskGetSession(a1);
        if (v17 == -1)
        {
          v20 = __DAQueueRequest(Session, 12, a1, a3, cf, 0, a4, a5, a6);
        }

        else
        {
          v19 = a7[1];
          *atoken.val = *a7;
          *&atoken.val[4] = v19;
          v20 = __DAQueueRequestWithUserToken(Session, 12, a1, a3, cf, 0, a4, a5, a6, &atoken);
        }

        v11 = v20;
      }
    }
  }

  if (a4 && v11)
  {
    v21 = DADissenterCreate(*MEMORY[0x277CBECE8], v11, 0);
    if (a6)
    {
      (a4)[2](a4, a1, v21);
      _Block_release(a4);
    }

    else
    {
      (a4)(a1, v21, a5);
    }

    CFRelease(v21);
  }
}

void DADiskProbeWithBlockCommon(uint64_t a1, void (**a2)(void))
{
  if (a1)
  {
    Session = _DADiskGetSession(a1);
    v5 = __DAQueueRequest(Session, 10, a1, 0, 0, 0, a2, 0, 1u);
    if (!a2)
    {
      return;
    }
  }

  else
  {
    v5 = -119930877;
    if (!a2)
    {
      return;
    }
  }

  if (v5)
  {
    a2[2](a2);

    _Block_release(a2);
  }
}

void DADiskSetFSKitAdditionsCommon(uint64_t a1, const __CFData *a2, void (**a3)(void))
{
  if (a1)
  {
    Session = _DADiskGetSession(a1);
    v7 = __DAQueueRequest(Session, 17, a1, 0, a2, 0, a3, 0, 1u);
    if (!a3)
    {
      return;
    }
  }

  else
  {
    v7 = -119930877;
    if (!a3)
    {
      return;
    }
  }

  if (v7)
  {
    a3[2](a3);

    _Block_release(a3);
  }
}

void DADiskUnmountCommon(uint64_t a1, int a2, void (**a3)(void, void, void), uint64_t a4, int a5, _OWORD *a6)
{
  if (a1)
  {
    _DADiskGetSession(a1);
    v12 = a6[1];
    *atoken.val = *a6;
    *&atoken.val[4] = v12;
    v13 = audit_token_to_pid(&atoken);
    Session = _DADiskGetSession(a1);
    if (v13 == -1)
    {
      v16 = __DAQueueRequest(Session, 13, a1, a2, 0, 0, a3, a4, a5);
    }

    else
    {
      v15 = a6[1];
      *atoken.val = *a6;
      *&atoken.val[4] = v15;
      v16 = __DAQueueRequestWithUserToken(Session, 13, a1, a2, 0, 0, a3, a4, a5, &atoken);
    }

    v17 = v16;
    if (!a3)
    {
      return;
    }
  }

  else
  {
    v17 = -119930877;
    if (!a3)
    {
      return;
    }
  }

  if (v17)
  {
    v18 = DADissenterCreate(*MEMORY[0x277CBECE8], v17, 0);
    if (a5)
    {
      (a3)[2](a3, a1, v18);
      _Block_release(a3);
    }

    else
    {
      (a3)(a1, v18, a4);
    }

    CFRelease(v18);
  }
}

void DADiskUnclaim(DADiskRef disk)
{
  if (disk)
  {
    Session = _DADiskGetSession(disk);
    if (_DADiskGetSessionID(disk) || !_DASessionIsKeepAlive(Session) || !_DASessionRecreate(Session))
    {
      SessionID = _DADiskGetSessionID(disk);
      ID = _DADiskGetID(disk);

      _DAServerDiskUnclaim(SessionID, ID);
    }
  }
}

uint64_t _DADiskSetAdoption(uint64_t a1, int a2)
{
  _DADiskGetSession(a1);
  result = _DAAuthorize();
  if (!result)
  {
    Session = _DADiskGetSession(a1);
    if (!_DADiskGetSessionID(a1) && _DASessionIsKeepAlive(Session) && _DASessionRecreate(Session))
    {
      return 4175036419;
    }

    else
    {
      SessionID = _DADiskGetSessionID(a1);
      ID = _DADiskGetID(a1);

      return _DAServerDiskSetAdoption(SessionID, ID, a2);
    }
  }

  return result;
}

void DARegisterIdleCallbackWithBlock(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);

  _DARegisterCallback(a1, v3, 0, 0xFu, 0, 0, 0, 1u);
}

void DARegisterDiskAppearedCallbackBlock(uint64_t a1, const __CFDictionary *a2, void *aBlock)
{
  v5 = _Block_copy(aBlock);

  _DARegisterCallback(a1, v5, 0, 0, 0, a2, 0, 1u);
}

void DARegisterDiskDescriptionChangedCallbackBlock(uint64_t a1, const __CFDictionary *a2, __CFData *a3, void *aBlock)
{
  v7 = _Block_copy(aBlock);

  _DARegisterCallback(a1, v7, 0, 3u, 0, a2, a3, 1u);
}

void DARegisterDiskDisappearedCallbackBlock(uint64_t a1, const __CFDictionary *a2, void *aBlock)
{
  v5 = _Block_copy(aBlock);

  _DARegisterCallback(a1, v5, 0, 4u, 0, a2, 0, 1u);
}

void DARegisterDiskEjectApprovalCallbackBlock(uint64_t a1, const __CFDictionary *a2, void *aBlock)
{
  v5 = _Block_copy(aBlock);

  _DARegisterCallback(a1, v5, 0, 6u, 0, a2, 0, 1u);
}

void DARegisterDiskPeekCallbackBlock(uint64_t a1, const __CFDictionary *a2, uint64_t a3, void *aBlock)
{
  v7 = _Block_copy(aBlock);

  _DARegisterCallback(a1, v7, 0, 9u, a3, a2, 0, 1u);
}

void DARegisterDiskMountApprovalCallbackBlock(uint64_t a1, const __CFDictionary *a2, void *aBlock)
{
  v5 = _Block_copy(aBlock);

  _DARegisterCallback(a1, v5, 0, 8u, 0, a2, 0, 1u);
}

void DARegisterDiskUnmountApprovalCallbackBlock(uint64_t a1, const __CFDictionary *a2, void *aBlock)
{
  v5 = _Block_copy(aBlock);

  _DARegisterCallback(a1, v5, 0, 0xEu, 0, a2, 0, 1u);
}

__n128 DADiskMountWithBlock(uint64_t a1, const __CFURL *a2, int a3, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  *&v8 = -1;
  *(&v8 + 1) = -1;
  v10[0] = v8;
  v10[1] = v8;
  DADiskMountWithArgumentsCommon(a1, a2, a3, v7, 0, 0, 1, v10);
  return result;
}

__n128 DADiskMountWithArgumentsAndBlock(uint64_t a1, const __CFURL *a2, int a3, void *aBlock, uint64_t a5)
{
  v9 = _Block_copy(aBlock);
  *&v10 = -1;
  *(&v10 + 1) = -1;
  v12[0] = v10;
  v12[1] = v10;
  DADiskMountWithArgumentsCommon(a1, a2, a3, v9, 0, a5, 1, v12);
  return result;
}

__n128 DADiskRenameWithBlock(uint64_t a1, const void *a2, int a3, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  *&v8 = -1;
  *(&v8 + 1) = -1;
  v10[0] = v8;
  v10[1] = v8;
  DADiskRenameCommon(a1, a2, a3, v7, 0, 1, v10);
  return result;
}

__n128 DADiskUnmountWithBlock(uint64_t a1, int a2, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  *&v6 = -1;
  *(&v6 + 1) = -1;
  v8[0] = v6;
  v8[1] = v6;
  DADiskUnmountCommon(a1, a2, v5, 0, 1, v8);
  return result;
}

__n128 DADiskEjectWithBlock(uint64_t a1, int a2, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  *&v6 = -1;
  *(&v6 + 1) = -1;
  v8[0] = v6;
  v8[1] = v6;
  DADiskEjectCommon(a1, a2, v5, 0, 1, v8);
  return result;
}

void DADiskClaimWithBlock(uint64_t a1, int a2, void *aBlock, const void *a4)
{
  v7 = _Block_copy(aBlock);
  v8 = _Block_copy(a4);

  DADiskClaimCommon(a1, a2, v7, 0, v8, 0, 1u);
}

void DADiskMountWithBlockAndAuditToken(uint64_t a1, const __CFURL *a2, int a3, const void *a4, __int128 *a5)
{
  v5 = a5[1];
  v6[0] = *a5;
  v6[1] = v5;
  DADiskMountWithArgumentsAndBlockAndAuditToken(a1, a2, a3, a4, 0, v6);
}

void DADiskMountWithArgumentsAndBlockAndAuditToken(uint64_t a1, const __CFURL *a2, int a3, const void *a4, uint64_t a5, __int128 *a6)
{
  v12 = getuid();
  v13 = _Block_copy(a4);
  if (v12)
  {
    *&v14 = -1;
    *(&v14 + 1) = -1;
    v16 = v14;
    v17 = v14;
  }

  else
  {
    v15 = a6[1];
    v16 = *a6;
    v17 = v15;
  }

  DADiskMountWithArgumentsCommon(a1, a2, a3, v13, 0, a5, 1, &v16);
}

void DADiskUnmountWithBlockAndAuditToken(uint64_t a1, int a2, const void *a3, __int128 *a4)
{
  v8 = getuid();
  v9 = _Block_copy(a3);
  if (v8)
  {
    *&v10 = -1;
    *(&v10 + 1) = -1;
    v12 = v10;
    v13 = v10;
  }

  else
  {
    v11 = a4[1];
    v12 = *a4;
    v13 = v11;
  }

  DADiskUnmountCommon(a1, a2, v9, 0, 1, &v12);
}

void DADiskRenameWithBlockAndAuditToken(uint64_t a1, const void *a2, int a3, const void *a4, __int128 *a5)
{
  v10 = getuid();
  v11 = _Block_copy(a4);
  if (v10)
  {
    *&v12 = -1;
    *(&v12 + 1) = -1;
    v14 = v12;
    v15 = v12;
  }

  else
  {
    v13 = a5[1];
    v14 = *a5;
    v15 = v13;
  }

  DADiskRenameCommon(a1, a2, a3, v11, 0, 1, &v14);
}

void DADiskEjectWithBlockAndAuditToken(uint64_t a1, int a2, const void *a3, __int128 *a4)
{
  v8 = getuid();
  v9 = _Block_copy(a3);
  if (v8)
  {
    *&v10 = -1;
    *(&v10 + 1) = -1;
    v12 = v10;
    v13 = v10;
  }

  else
  {
    v11 = a4[1];
    v12 = *a4;
    v13 = v11;
  }

  DADiskEjectCommon(a1, a2, v9, 0, 1, &v12);
}

void DADiskSetFSKitAdditions(uint64_t a1, const __CFData *a2, void *aBlock)
{
  v5 = _Block_copy(aBlock);

  DADiskSetFSKitAdditionsCommon(a1, a2, v5);
}

void DADiskProbeWithBlock(uint64_t a1, void *aBlock)
{
  if (aBlock)
  {
    aBlock = _Block_copy(aBlock);
  }

  DADiskProbeWithBlockCommon(a1, aBlock);
}

void *_DADiskCreate(uint64_t a1, const void *a2, const char *a3)
{
  if (!a2)
  {
    return 0;
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    CFRetain(a2);
    Instance[2] = 0;
    Instance[3] = 0;
    Instance[4] = strdup(a3);
    Instance[5] = a2;
    if (!strncmp(a3, "/dev/", 5uLL))
    {
      Instance[3] = strdup(a3 + 5);
    }
  }

  return Instance;
}

void *_DADiskCreateFromSerialization(int a1, CFTypeRef cf, const __CFData *a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = CFGetAllocator(cf);
  v6 = _DAUnserializeDiskDescription(v5, a3);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  Value = CFDictionaryGetValue(v6, @"DADiskID");
  if (Value && (BytePtr = CFDataGetBytePtr(Value)) != 0)
  {
    v10 = BytePtr;
    v11 = CFGetAllocator(cf);
    v12 = _DADiskCreate(v11, cf, v10);
    if (v12)
    {
      CFDictionaryRemoveValue(v7, @"DADiskID");
      v12[2] = CFRetain(v7);
    }
  }

  else
  {
    v12 = 0;
  }

  CFRelease(v7);
  return v12;
}

uint64_t _DADiskInitialize()
{
  result = _CFRuntimeRegisterClass();
  __kDADiskTypeID = result;
  return result;
}

void _DADiskSetDescription(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 16) = 0;
  }

  if (cf)
  {
    CFRetain(cf);
    *(a1 + 16) = cf;
  }
}

CFDictionaryRef DADiskCopyDescription(DADiskRef disk)
{
  if (!disk)
  {
    return 0;
  }

  v2 = *(disk + 2);
  if (v2)
  {
    CFRetain(v2);
    return *(disk + 2);
  }

  else
  {
    v8 = 0;
    v7 = 0;
    ID = _DASessionGetID(*(disk + 5));
    v3 = 0;
    if (!_DAServerDiskCopyDescription(ID, *(disk + 4), &v8, &v7))
    {
      v5 = CFGetAllocator(disk);
      v3 = _DAUnserializeDiskDescriptionWithBytes(v5, v8, v7);
      CFDictionaryRemoveValue(v3, @"DADiskID");
      MEMORY[0x24C1EB650](*MEMORY[0x277D85F48], v8, v7);
    }
  }

  return v3;
}

io_service_t DADiskCopyIOMedia(DADiskRef disk)
{
  if (!disk)
  {
    return 0;
  }

  v1 = *(disk + 3);
  if (!v1)
  {
    return 0;
  }

  v2 = *MEMORY[0x277CD28A0];
  v3 = IOBSDNameMatching(*MEMORY[0x277CD28A0], 0, v1);

  return IOServiceGetMatchingService(v2, v3);
}

DADiskRef DADiskCopyWholeDisk(DADiskRef disk)
{
  v1 = disk;
  if (disk)
  {
    v2 = DADiskCopyIOMedia(disk);
    if (v2)
    {
      v3 = v2;
      v4 = *MEMORY[0x277CBED28];
      do
      {
        parent = 0;
        if (IOObjectConformsTo(v3, "IOMedia"))
        {
          v5 = CFGetAllocator(v1);
          CFProperty = IORegistryEntryCreateCFProperty(v3, @"Whole", v5, 0);
          if (CFProperty)
          {
            v7 = CFProperty;
            if (CFProperty == v4)
            {
              v9 = CFGetAllocator(v1);
              v1 = DADiskCreateFromIOMedia(v9, v1[5], v3);
              IOObjectRelease(v3);
              CFRelease(v7);
              return v1;
            }

            CFRelease(CFProperty);
          }
        }

        IORegistryEntryGetParentEntry(v3, "IOService", &parent);
        IOObjectRelease(v3);
        v3 = parent;
      }

      while (parent);
    }

    return 0;
  }

  return v1;
}

DADiskRef DADiskCreateFromIOMedia(CFAllocatorRef allocator, DASessionRef session, io_service_t media)
{
  v11 = *MEMORY[0x277D85DE8];
  if (media && (CFProperty = IORegistryEntryCreateCFProperty(media, @"BSD Name", allocator, 0)) != 0)
  {
    v6 = CFProperty;
    CFStringGetCString(CFProperty, buffer, 1024, 0x8000100u);
    v7 = DADiskCreateFromBSDName(allocator, session, buffer);
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

DADiskRef DADiskCreateFromBSDName(CFAllocatorRef allocator, DASessionRef session, const char *name)
{
  v10 = *MEMORY[0x277D85DE8];
  if (name)
  {
    v6 = strstr(name, "://disk");
    if (v6)
    {
      if (!strchr(v6 + 3, 47))
      {
LABEL_9:
        result = _DADiskCreate(allocator, session, __s);
        goto LABEL_10;
      }

      __strlcpy_chk();
      strlen(__s);
    }

    else
    {
      if (!strncmp(name, "/dev/", 5uLL))
      {
        __strlcpy_chk();
        goto LABEL_9;
      }

      __strlcpy_chk();
    }

    __strlcat_chk();
    goto LABEL_9;
  }

  result = 0;
LABEL_10:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

DADiskRef DADiskCreateFromVolumePath(CFAllocatorRef allocator, DASessionRef session, CFURLRef path)
{
  v14 = *MEMORY[0x277D85DE8];
  if (path && (v5 = ___CFURLCopyFileSystemRepresentation(path)) != 0)
  {
    v6 = v5;
    memset(v13, 0, 512);
    if (___statfs(v5, v13, 2) && (!realpath_DARWIN_EXTSN(v6, v12) || ___statfs(v12, v13, 2)) || (v7 = _DAVolumeCopyID(v13)) == 0)
    {
      v9 = 0;
    }

    else
    {
      v8 = v7;
      v9 = _DADiskCreate(allocator, session, v7);
      free(v8);
    }

    free(v6);
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

const char *__cdecl DADiskGetBSDName(const char *disk)
{
  if (disk)
  {
    return *(disk + 3);
  }

  return disk;
}

void __DADiskDeallocate(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    free(v4);
  }

  v5 = a1[5];
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t __DADiskHash(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = strlen(v1);
  if (v2 >= 0x10)
  {
    v3 = 16;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x28210F690](v1, v3);
}

CFStringRef __DADiskCopyDescription(void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<DADisk %p [%p]>{id = %s}", a1, v3, a1[4]);
}

DADissenterRef DADissenterCreate(CFAllocatorRef allocator, DAReturn status, CFStringRef string)
{
  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v6 = getpid();
    ___CFDictionarySetIntegerValue(Mutable, @"DAProcessID", v6);
    ___CFDictionarySetIntegerValue(Mutable, @"DAStatus", status);
    if (string)
    {
      CFDictionarySetValue(Mutable, @"DAStatusString", string);
    }
  }

  return Mutable;
}

uint64_t ___statfs(const char *a1, void *a2, int a3)
{
  v6 = getfsstat(0, 0, 2);
  if (v6 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = 2168 * v6;
  v8 = malloc_type_malloc(2168 * v6, 0x100004087E0324AuLL);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  v10 = getfsstat(v8, v7, a3);
  if (v10 < 1)
  {
    v13 = 0xFFFFFFFFLL;
  }

  else
  {
    v11 = v10;
    f_mntonname = v9->f_mntonname;
    v13 = 0xFFFFFFFFLL;
    do
    {
      if (!strcmp(f_mntonname, a1))
      {
        memcpy(a2, f_mntonname - 88, 0x878uLL);
        v14 = *(f_mntonname - 8);
        v13 = 0;
        if (v14 == geteuid())
        {
          break;
        }
      }

      f_mntonname += 2168;
      --v11;
    }

    while (v11);
  }

  free(v9);
  return v13;
}

uint64_t ___CFArrayContainsValue(const __CFArray *a1, const void *a2)
{
  v4.length = CFArrayGetCount(a1);
  v4.location = 0;

  return CFArrayContainsValue(a1, v4, a2);
}

BOOL ___CFArrayContainsString(const __CFArray *a1, const __CFString *a2)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  else
  {
    v5 = Count;
    v6 = 0;
    v7 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
      v9 = CFGetTypeID(ValueAtIndex);
      if (v9 == CFStringGetTypeID() && CFStringCompare(ValueAtIndex, a2, 1uLL) == kCFCompareEqualTo)
      {
        break;
      }

      v7 = v5 > ++v6;
    }

    while (v5 != v6);
  }

  return v7;
}

void ___CFArrayRemoveValue(const __CFArray *a1, const void *a2)
{
  v6.length = CFArrayGetCount(a1);
  v6.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(a1, v6, a2);
  if (FirstIndexOfValue != -1)
  {

    CFArrayRemoveValueAtIndex(a1, FirstIndexOfValue);
  }
}

vm_address_t ___CFDataCopyBytes(const __CFData *a1, unsigned int *a2)
{
  address = 0;
  Length = CFDataGetLength(a1);
  *a2 = Length;
  vm_allocate(*MEMORY[0x277D85F48], &address, Length, 1);
  v5 = address;
  if (!address)
  {
    return 0;
  }

  BytePtr = CFDataGetBytePtr(a1);
  memmove(v5, BytePtr, *a2);
  return address;
}

const __CFNumber *___CFDictionaryGetIntegerValue(const __CFDictionary *a1, const void *a2)
{
  valuePtr = 0;
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

void ___CFDictionarySetIntegerValue(void *a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFGetAllocator(a1);
  v6 = CFNumberCreate(v5, kCFNumberSInt64Type, &valuePtr);
  if (v6)
  {
    v7 = v6;
    CFDictionarySetValue(a1, a2, v6);
    CFRelease(v7);
  }
}

const __CFNumber *___CFNumberGetIntegerValue(const __CFNumber *result)
{
  valuePtr = 0;
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v1, kCFNumberSInt64Type, &valuePtr);
      return valuePtr;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

UInt8 *___CFStringCopyCString(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  maxBufLen = 0;
  Length = CFStringGetLength(a1);
  v6.location = 0;
  v6.length = Length;
  if (!CFStringGetBytes(a1, v6, 0x8000100u, 0, 0, 0, 0, &maxBufLen))
  {
    return 0;
  }

  v3 = malloc_type_malloc(maxBufLen + 1, 0x5A203444uLL);
  if (v3)
  {
    v7.location = 0;
    v7.length = Length;
    CFStringGetBytes(a1, v7, 0x8000100u, 0, 0, v3, maxBufLen, 0);
    v3[maxBufLen] = 0;
  }

  return v3;
}

UInt8 *___CFURLCopyFileSystemRepresentation(const __CFURL *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CFURLCopyFileSystemPath(a1, kCFURLPOSIXPathStyle);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = ___CFStringCopyCString(v1);
  CFRelease(v2);
  return v3;
}

const char *_DACallbackKindGetName(unsigned int a1)
{
  if (a1 > 0x11)
  {
    return "Unknown Kind";
  }

  else
  {
    return __kDAKindNameList[a1];
  }
}

CFMutableDataRef _DASerialize(const __CFAllocator *a1)
{
  Mutable = CFDataCreateMutable(a1, 0);
  if (Mutable && !__CFBinaryPlistWriteToStream())
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

CFMutableDataRef _DASerializeDiskDescription(const __CFAllocator *a1, CFDictionaryRef theDict)
{
  if (!theDict)
  {
    return 0;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, theDict);
  if (!MutableCopy)
  {
    return 0;
  }

  v5 = MutableCopy;
  Value = CFDictionaryGetValue(theDict, @"DAMediaUUID");
  if (Value)
  {
    v7 = CFUUIDCreateString(a1, Value);
    if (v7)
    {
      v8 = v7;
      CFDictionarySetValue(v5, @"DAMediaUUID", v7);
      CFRelease(v8);
    }
  }

  v9 = CFDictionaryGetValue(theDict, @"DAVolumePath");
  if (v9)
  {
    v10 = CFURLCopyFileSystemPath(v9, kCFURLPOSIXPathStyle);
    if (v10)
    {
      v11 = v10;
      CFDictionarySetValue(v5, @"DAVolumePath", v10);
      CFRelease(v11);
    }
  }

  v12 = CFDictionaryGetValue(theDict, @"DAVolumeUUID");
  if (v12)
  {
    v13 = CFUUIDCreateString(a1, v12);
    if (v13)
    {
      v14 = v13;
      CFDictionarySetValue(v5, @"DAVolumeUUID", v13);
      CFRelease(v14);
    }
  }

  v15 = _DASerialize(a1);
  CFRelease(v5);
  return v15;
}

__CFDictionary *_DAUnserializeDiskDescription(const __CFAllocator *a1, const __CFData *a2)
{
  v3 = CFPropertyListCreateWithData(a1, a2, 1uLL, 0, 0);
  v4 = v3;
  if (v3)
  {
    Value = CFDictionaryGetValue(v3, @"DAMediaUUID");
    if (Value)
    {
      v6 = CFUUIDCreateFromString(a1, Value);
      if (v6)
      {
        v7 = v6;
        CFDictionarySetValue(v4, @"DAMediaUUID", v6);
        CFRelease(v7);
      }
    }

    v8 = CFDictionaryGetValue(v4, @"DAVolumePath");
    if (v8)
    {
      v9 = CFURLCreateWithFileSystemPath(a1, v8, kCFURLPOSIXPathStyle, 1u);
      if (v9)
      {
        v10 = v9;
        CFDictionarySetValue(v4, @"DAVolumePath", v9);
        CFRelease(v10);
      }
    }

    v11 = CFDictionaryGetValue(v4, @"DAVolumeUUID");
    if (v11)
    {
      v12 = CFUUIDCreateFromString(a1, v11);
      if (v12)
      {
        v13 = v12;
        CFDictionarySetValue(v4, @"DAVolumeUUID", v12);
        CFRelease(v13);
      }
    }
  }

  return v4;
}

__CFDictionary *_DAUnserializeDiskDescriptionWithBytes(const __CFAllocator *a1, const UInt8 *a2, CFIndex a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = CFDataCreateWithBytesNoCopy(a1, a2, a3, *MEMORY[0x277CBED00]);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = _DAUnserializeDiskDescription(a1, v4);
  CFRelease(v5);
  return v6;
}

CFPropertyListRef _DAUnserializeWithBytes(const __CFAllocator *a1, const UInt8 *a2, CFIndex a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = CFDataCreateWithBytesNoCopy(a1, a2, a3, *MEMORY[0x277CBED00]);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = CFPropertyListCreateWithData(a1, v4, 0, 0, 0);
  CFRelease(v5);
  return v6;
}

char *_DAVolumeCopyID(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = 0;
  if (!strcmp((a1 + 72), "lifs") && (__strlcpy_chk(), !__DAVolumeGetDeviceIDForLifsMount(v7, v6, 1024)))
  {
    asprintf(&v5, "/dev/%s");
  }

  else if (!strncmp((a1 + 1112), "/dev/", 5uLL))
  {
    asprintf(&v5, "%s");
  }

  else
  {
    v4 = *(a1 + 56);
    asprintf(&v5, "%s?owner=%u");
  }

  result = v5;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __DAVolumeGetDeviceIDForLifsMount(char *a1, char *a2, int a3)
{
  v6 = strstr(a1, "://");
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  if (!strncmp(a1, "apfs", 4uLL))
  {
    return 0xFFFFFFFFLL;
  }

  v8 = strchr(v7 + 3, 47);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  *v8 = 0;
  strlcpy(a2, v7 + 3, a3);
  return 0;
}

char *_DAVolumeGetID(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (!strcmp((a1 + 72), "lifs") && (__strlcpy_chk(), !__DAVolumeGetDeviceIDForLifsMount(v6, v5, 1024)))
  {
    snprintf(_DAVolumeGetID_id, 0x411uLL, "/dev/%s");
  }

  else if (!strncmp((a1 + 1112), "/dev/", 5uLL))
  {
    snprintf(_DAVolumeGetID_id, 0x411uLL, "%s");
  }

  else
  {
    v4 = *(a1 + 56);
    snprintf(_DAVolumeGetID_id, 0x411uLL, "%s?owner=%u");
  }

  v2 = *MEMORY[0x277D85DE8];
  return _DAVolumeGetID_id;
}

uint64_t _DAVolumeGetDevicePathForLifsMount(uint64_t a1, char *a2, int a3)
{
  v11 = *MEMORY[0x277D85DE8];
  __strlcpy_chk();
  v5 = strstr(__s1, "://");
  if (v5 && (v6 = v5, (v7 = strchr(v5 + 3, 47)) != 0))
  {
    *v7 = 0;
    strlcpy(a2, "/dev/", a3);
    strlcat(a2, v6 + 3, a3);
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _DASessionCallback(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v20 = 0;
  v19 = 0;
  result = _DAServerSessionCopyCallbackQueue(a4[9], &v20, &v19);
  if (!result)
  {
    v6 = CFGetAllocator(a4);
    v7 = _DAUnserializeWithBytes(v6, v20, v19);
    if (v7)
    {
      v8 = v7;
      Count = CFArrayGetCount(v7);
      if (Count >= 1)
      {
        v10 = Count;
        for (i = 0; i != v10; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v8, i);
          if (ValueAtIndex)
          {
            v13 = ValueAtIndex;
            IntegerValue = ___CFDictionaryGetIntegerValue(ValueAtIndex, @"DACallbackAddress");
            v15 = ___CFDictionaryGetIntegerValue(v13, @"DACallbackContext");
            Value = CFDictionaryGetValue(v13, @"DACallbackArgument0");
            v17 = CFDictionaryGetValue(v13, @"DACallbackArgument1");
            v18 = ___CFDictionaryGetIntegerValue(v13, @"DACallbackKind");
            _DADispatchCallback(a4, IntegerValue, v15, v18, Value, v17);
          }
        }
      }

      CFRelease(v8);
    }

    return MEMORY[0x24C1EB650](*MEMORY[0x277D85F48], v20, v19);
  }

  return result;
}

uint64_t _DASessionInitialize()
{
  result = _CFRuntimeRegisterClass();
  __kDASessionTypeID = result;
  return result;
}

uint64_t _DASessionScheduleWithRunLoop(uint64_t result)
{
  v3 = *(result + 56);
  *(result + 56) = v3 + 1;
  if (!v3)
  {
    v16 = v1;
    v17 = v2;
    v4 = result;
    v15 = 0;
    v5 = MEMORY[0x277D85F48];
    result = mach_port_allocate(*MEMORY[0x277D85F48], 1u, &v15);
    if (!result)
    {
      v14 = 1;
      if (!MEMORY[0x24C1EB490](*v5, v15, 1, &v14, 1))
      {
        v13.version = 0;
        v13.info = v4;
        v13.retain = MEMORY[0x277CBE558];
        v13.release = MEMORY[0x277CBE550];
        v13.copyDescription = 0;
        v6 = CFGetAllocator(v4);
        v7 = CFMachPortCreateWithPort(v6, v15, _DASessionCallback, &v13, 0);
        if (v7)
        {
          v8 = v7;
          v9 = CFGetAllocator(v4);
          RunLoopSource = CFMachPortCreateRunLoopSource(v9, v8, 0);
          if (RunLoopSource)
          {
            *(v4 + 16) = v8;
            *(v4 + 40) = RunLoopSource;
            v11 = *(v4 + 36);
            Port = CFMachPortGetPort(v8);
            return _DAServerSessionSetClientPort(v11, Port);
          }

          CFMachPortInvalidate(v8);
          CFRelease(v8);
        }
      }

      return mach_port_mod_refs(*v5, v15, 1u, -1);
    }
  }

  return result;
}

uint64_t _DASessionUnscheduleFromRunLoop(uint64_t result)
{
  v1 = result;
  v2 = *(result + 56);
  if (v2 == 1)
  {
    v3 = *(result + 40);
    if (v3)
    {
      CFRunLoopSourceInvalidate(v3);
      CFRelease(*(v1 + 40));
      *(v1 + 40) = 0;
    }

    result = *(v1 + 16);
    if (result)
    {
      Port = CFMachPortGetPort(result);
      CFMachPortInvalidate(*(v1 + 16));
      CFRelease(*(v1 + 16));
      result = mach_port_mod_refs(*MEMORY[0x277D85F48], Port, 1u, -1);
      *(v1 + 16) = 0;
    }

    v2 = *(v1 + 56);
  }

  if (v2)
  {
    *(v1 + 56) = v2 - 1;
  }

  return result;
}

DASessionRef DASessionCreate(CFAllocatorRef allocator)
{
  _DAInitialize();
  Instance = _CFRuntimeCreateInstance();
  v2 = Instance;
  if (Instance)
  {
    *(Instance + 44) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 64) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(v2 + 72) = 0;
    *(v2 + 144) = 0;
    *(v2 + 148) = -1;
    pthread_mutex_init((v2 + 80), 0);
    if (!*(v2 + 64))
    {
      DASessionCreate_cold_2();
    }

    v3 = atomic_fetch_add_explicit(&sessionCount, 1u, memory_order_relaxed) + 1;
    HIDWORD(v4) = 652835029 * v3;
    LODWORD(v4) = 652835029 * v3;
    if ((v4 >> 3) <= 0x418937 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      DASessionCreate_cold_1(v3);
    }

    special_port = 0;
    v5 = MEMORY[0x277D85F48];
    if (task_get_special_port(*MEMORY[0x277D85F48], 4, &special_port))
    {
      goto LABEL_9;
    }

    name = 0;
    v6 = bootstrap_look_up2();
    mach_port_deallocate(*v5, special_port);
    if (v6 || (v15 = 0, v7 = _dyld_get_image_name(0), v8 = basename(v7), v9 = _DAServerSessionCreate(name, v8, &v15), mach_port_deallocate(*v5, name), v9))
    {
LABEL_9:
      CFRelease(v2);
      return 0;
    }

    else
    {
      image_name = _dyld_get_image_name(0);
      v12 = basename(image_name);
      *(v2 + 24) = strdup(v12);
      v13 = getpid();
      v14 = v15;
      *(v2 + 32) = v13;
      *(v2 + 36) = v14;
    }
  }

  return v2;
}

void DASessionScheduleWithRunLoop(DASessionRef session, CFRunLoopRef runLoop, CFStringRef runLoopMode)
{
  if (session)
  {
    _DASessionScheduleWithRunLoop(session);
    v6 = *(session + 5);
    if (v6)
    {

      CFRunLoopAddSource(runLoop, v6, runLoopMode);
    }
  }
}

void DASessionSetDispatchQueue(DASessionRef session, dispatch_queue_t queue)
{
  if (session)
  {
    v4 = *(session + 6);
    if (v4)
    {
      dispatch_source_cancel(v4);
      dispatch_release(*(session + 6));
      *(session + 6) = 0;
    }

    if (queue)
    {
      name = 0;
      v5 = MEMORY[0x277D85F48];
      if (!mach_port_allocate(*MEMORY[0x277D85F48], 1u, &name))
      {
        v14 = 1;
        if (MEMORY[0x24C1EB490](*v5, name, 1, &v14, 1) || (v6 = dispatch_source_create(MEMORY[0x277D85D08], name, 0, queue)) == 0 || (*(session + 6) = v6, CFRetain(session), previous = 0, mach_port_request_notification(*v5, name, 70, 1u, name, 0x15u, &previous)))
        {
          mach_port_mod_refs(*v5, name, 1u, -1);
        }

        else
        {
          v7 = *(session + 6);
          handler[0] = MEMORY[0x277D85DD0];
          handler[1] = 0x40000000;
          handler[2] = __DASessionSetDispatchQueue_block_invoke;
          handler[3] = &__block_descriptor_tmp;
          v12 = name;
          handler[4] = session;
          dispatch_source_set_cancel_handler(v7, handler);
          v8 = *(session + 6);
          v9[0] = MEMORY[0x277D85DD0];
          v9[1] = 0x40000000;
          v9[2] = __DASessionSetDispatchQueue_block_invoke_2;
          v9[3] = &__block_descriptor_tmp_2;
          v10 = name;
          v9[4] = session;
          dispatch_source_set_event_handler(v8, v9);
          dispatch_resume(*(session + 6));
          _DAServerSessionSetClientPort(*(session + 9), name);
        }
      }
    }
  }
}

void __DASessionSetDispatchQueue_block_invoke(uint64_t a1)
{
  mach_port_mod_refs(*MEMORY[0x277D85F48], *(a1 + 40), 1u, -1);
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void __DASessionSetDispatchQueue_block_invoke_2(uint64_t a1)
{
  memset(msg, 0, sizeof(msg));
  v2 = mach_msg(msg, 258, 0, 0x20u, *(a1 + 40), 0, 0);
  if (*&msg[20] == 70)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_248D95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "diskarbitrationd exited.", v9, 2u);
    }

    v5 = *(a1 + 32);
    v6 = *(v5 + 24);
    if (v6)
    {
      free(v6);
      v5 = *(a1 + 32);
    }

    *(v5 + 24) = 0;
    v7 = *(a1 + 32);
    v8 = *(v7 + 36);
    if (v8)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], v8);
      v7 = *(a1 + 32);
    }

    *(v7 + 36) = 0;
  }

  else
  {
    _DASessionCallback(v2, v3, v4, *(a1 + 32));
  }
}

void DASessionUnscheduleFromRunLoop(DASessionRef session, CFRunLoopRef runLoop, CFStringRef runLoopMode)
{
  if (session)
  {
    v4 = *(session + 5);
    if (v4)
    {
      CFRunLoopRemoveSource(runLoop, v4, runLoopMode);
    }

    _DASessionUnscheduleFromRunLoop(session);
  }
}

CFMutableDictionaryRef DACallbackCreate(const __CFAllocator *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, const void *a6, const void *a7, unsigned int a8)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v16 = Mutable;
  if (Mutable)
  {
    ___CFDictionarySetIntegerValue(Mutable, @"DACallbackAddress", a2);
    ___CFDictionarySetIntegerValue(v16, @"DACallbackContext", a3);
    ___CFDictionarySetIntegerValue(v16, @"DACallbackKind", a4);
    ___CFDictionarySetIntegerValue(v16, @"DACallbackOrder", a5);
    ___CFDictionarySetIntegerValue(v16, @"DACallbackBlock", a8);
    if (a6)
    {
      CFDictionarySetValue(v16, @"DACallbackMatch", a6);
    }

    if (a7)
    {
      CFDictionarySetValue(v16, @"DACallbackWatch", a7);
    }
  }

  return v16;
}

uint64_t DAAddCallbackToSession(uint64_t result, const void *a2)
{
  if (result)
  {
    v3 = result;
    pthread_mutex_lock((result + 80));
    v4 = *(v3 + 72) + 1;
    *(v3 + 72) = v4;
    valuePtr = v4;
    while (1)
    {
      v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (!CFDictionaryContainsKey(*(v3 + 64), v5))
      {
        break;
      }

      v6 = *(v3 + 72);
      *(v3 + 72) = v6 + 1;
      valuePtr = v6 + 1;
      if (v6 == -1)
      {
        *(v3 + 72) = 1;
        valuePtr = 1;
      }

      CFRelease(v5);
    }

    CFDictionarySetValue(*(v3 + 64), v5, a2);
    CFRelease(v5);
    pthread_mutex_unlock((v3 + 80));
    return valuePtr;
  }

  return result;
}

void DARemoveCallbackFromSessionWithKey(uint64_t a1, int a2)
{
  v7 = 0;
  valuePtr = a2;
  if (a1)
  {
    v3 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    pthread_mutex_lock((a1 + 80));
    Value = CFDictionaryGetValue(*(a1 + 64), v3);
    IntegerValue = ___CFDictionaryGetIntegerValue(Value, @"DACallbackBlock");
    v6 = ___CFDictionaryGetIntegerValue(Value, @"DACallbackAddress");
    if (IntegerValue)
    {
      _Block_release(v6);
    }

    CFDictionaryRemoveValue(*(a1 + 64), v3);
    CFNumberGetValue(v3, kCFNumberSInt32Type, &v7);
    *(a1 + 72) = v7 - 1;
    pthread_mutex_unlock((a1 + 80));
    CFRelease(v3);
  }
}

uint64_t DARemoveCallbackFromSession(uint64_t a1, const __CFNumber *a2, const __CFNumber *a3)
{
  v3 = a1;
  valuePtr = 0;
  if (a1)
  {
    pthread_mutex_lock((a1 + 80));
    Count = CFDictionaryGetCount(*(v3 + 64));
    v7 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    v8 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(*(v3 + 64), v7, v8);
    pthread_mutex_unlock((v3 + 80));
    if (Count < 1)
    {
      v3 = 0;
    }

    else
    {
      v19 = v3;
      v20 = v8;
      v21 = v7;
      v9 = v8;
      v10 = v7;
      while (1)
      {
        v11 = *v9;
        IntegerValue = ___CFDictionaryGetIntegerValue(*v9, @"DACallbackAddress");
        v13 = ___CFDictionaryGetIntegerValue(v11, @"DACallbackContext");
        v14 = ___CFDictionaryGetIntegerValue(v11, @"DACallbackBlock");
        if (IntegerValue == a2 && v13 == a3)
        {
          break;
        }

        ++v10;
        ++v9;
        if (!--Count)
        {
          v3 = 0;
          goto LABEL_14;
        }
      }

      v16 = v14;
      v17 = *v10;
      CFNumberGetValue(*v10, kCFNumberSInt32Type, &valuePtr);
      if (v16)
      {
        _Block_release(a2);
      }

      pthread_mutex_lock((v19 + 80));
      CFDictionaryRemoveValue(*(v19 + 64), v17);
      *(v19 + 72) = valuePtr - 1;
      pthread_mutex_unlock((v19 + 80));
      v3 = valuePtr;
LABEL_14:
      v8 = v20;
      v7 = v21;
    }

    free(v7);
    free(v8);
  }

  return v3;
}

const void *DAGetCallbackFromSession(uint64_t a1, int a2)
{
  valuePtr = a2;
  if (!a1)
  {
    return 0;
  }

  v3 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  pthread_mutex_lock((a1 + 80));
  Value = CFDictionaryGetValue(*(a1 + 64), v3);
  pthread_mutex_unlock((a1 + 80));
  CFRelease(v3);
  return Value;
}

uint64_t _DASessionRecreate(uint64_t a1)
{
  valuePtr = 1;
  if (a1)
  {
    special_port[0] = 0;
    v2 = MEMORY[0x277D85F48];
    if (!task_get_special_port(*MEMORY[0x277D85F48], 4, special_port))
    {
      name = 0;
      v3 = bootstrap_look_up2();
      mach_port_deallocate(*v2, special_port[0]);
      if (!v3)
      {
        v31 = 0;
        image_name = _dyld_get_image_name(0);
        v5 = basename(image_name);
        v6 = _DAServerSessionCreate(name, v5, &v31);
        mach_port_deallocate(*v2, name);
        if (!v6)
        {
          v9 = _dyld_get_image_name(0);
          v10 = basename(v9);
          *(a1 + 24) = strdup(v10);
          v11 = getpid();
          v12 = v31;
          *(a1 + 32) = v11;
          *(a1 + 36) = v12;
          DASessionSetDispatchQueue(a1, *(a1 + 152));
          pthread_mutex_lock((a1 + 80));
          Count = CFDictionaryGetCount(*(a1 + 64));
          pthread_mutex_unlock((a1 + 80));
          if (Count < 1)
          {
            return _DAServerSessionSetKeepAlive(*(a1 + 36));
          }

          v14 = 0;
          v28 = Count;
          while (1)
          {
            v15 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            if (v15)
            {
              break;
            }

LABEL_19:
            ++valuePtr;
            if (Count <= v14)
            {
              return _DAServerSessionSetKeepAlive(*(a1 + 36));
            }
          }

          v16 = v15;
          pthread_mutex_lock((a1 + 80));
          Value = CFDictionaryGetValue(*(a1 + 64), v16);
          pthread_mutex_unlock((a1 + 80));
          if (!Value)
          {
LABEL_18:
            CFRelease(v16);
            goto LABEL_19;
          }

          IntegerValue = ___CFDictionaryGetIntegerValue(Value, @"DACallbackKind");
          v18 = ___CFDictionaryGetIntegerValue(Value, @"DACallbackOrder");
          v19 = CFDictionaryGetValue(Value, @"DACallbackMatch");
          v20 = CFDictionaryGetValue(Value, @"DACallbackWatch");
          v21 = v20;
          v22 = *(a1 + 36);
          v23 = valuePtr;
          if (v19)
          {
            BytePtr = CFDataGetBytePtr(v19);
            Length = CFDataGetLength(v19);
            if (v21)
            {
LABEL_14:
              v26 = CFDataGetBytePtr(v21);
              v27 = CFDataGetLength(v21);
LABEL_17:
              _DAServerSessionRegisterCallback(v22, v23, v23, IntegerValue, v18, BytePtr, Length, v26, v27);
              ++v14;
              Count = v28;
              goto LABEL_18;
            }
          }

          else
          {
            BytePtr = 0;
            Length = 0;
            if (v20)
            {
              goto LABEL_14;
            }
          }

          v26 = 0;
          v27 = 0;
          goto LABEL_17;
        }
      }
    }
  }

  v7 = 4175036419;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(special_port[0]) = 0;
    _os_log_impl(&dword_248D95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "failed to establish session with diskarbitrationd", special_port, 2u);
  }

  return v7;
}

uint64_t DASessionKeepAlive(uint64_t a1, dispatch_queue_t queue)
{
  if (!a1)
  {
    return 4175036419;
  }

  *(a1 + 144) = 1;
  *(a1 + 152) = queue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 0x40000000;
  handler[2] = __DASessionKeepAlive_block_invoke;
  handler[3] = &__block_descriptor_tmp_5;
  handler[4] = a1;
  *(a1 + 148) = notify_register_dispatch("com.apple.diskarbitrationd.launched", (a1 + 148), queue, handler);
  return _DAServerSessionSetKeepAlive(*(a1 + 36));
}

uint64_t __DASessionKeepAlive_block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_248D95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "diskarbitrationd relaunched", v3, 2u);
  }

  result = *(a1 + 32);
  if (!*(result + 36))
  {
    return _DASessionRecreate(result);
  }

  return result;
}

uint64_t __DASessionDeallocate(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __DASessionDeallocate_cold_1();
  }

  if (*(a1 + 40))
  {
    __DASessionDeallocate_cold_2();
  }

  if (*(a1 + 48))
  {
    __DASessionDeallocate_cold_3();
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    free(v2);
  }

  v3 = *(a1 + 148);
  if (v3 != -1)
  {
    notify_cancel(v3);
  }

  v4 = *(a1 + 36);
  if (v4)
  {
    mach_port_deallocate(*MEMORY[0x277D85F48], v4);
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    Count = CFDictionaryGetCount(v5);
    v7 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    v8 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(*(a1 + 64), v7, v8);
    if (Count >= 1)
    {
      v9 = v8;
      do
      {
        v10 = *v9;
        IntegerValue = ___CFDictionaryGetIntegerValue(*v9, @"DACallbackAddress");
        if (___CFDictionaryGetIntegerValue(v10, @"DACallbackBlock"))
        {
          _Block_release(IntegerValue);
        }

        ++v9;
        --Count;
      }

      while (Count);
    }

    free(v7);
    free(v8);
    CFRelease(*(a1 + 64));
  }

  atomic_fetch_add_explicit(&sessionCount, 0xFFFFFFFF, memory_order_relaxed);

  return pthread_mutex_destroy((a1 + 80));
}

CFStringRef __DASessionCopyDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<DASession %p [%p]>{id = %s [%d]:%d}", a1, v3, *(a1 + 24), *(a1 + 32), *(a1 + 36));
}

uint64_t _DAServerDiskCopyDescription(unsigned int a1, const char *a2, void *a3, mach_port_name_t *a4)
{
  v46 = *MEMORY[0x277D85DE8];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  memset(v16, 0, sizeof(v16));
  *&v16[1].msgh_bits = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v7 = mig_strncpy_zerofill(&v16[1].msgh_voucher_port, a2, 1024);
  }

  else
  {
    v7 = mig_strncpy(&v16[1].msgh_voucher_port, a2, 1024);
  }

  v16[1].msgh_remote_port = 0;
  v16[1].msgh_local_port = v7;
  v8 = (v7 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  v16[0].msgh_bits = 5395;
  *&v16[0].msgh_remote_port = __PAIR64__(special_reply_port, a1);
  *&v16[0].msgh_voucher_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(v16);
    msgh_local_port = v16[0].msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v11 = mach_msg(v16, 3162115, v8 + 40, 0x40u, msgh_local_port, 0, 0);
  msgh_remote_port = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (!v11)
    {
      if (v16[0].msgh_id == 71)
      {
        msgh_remote_port = 4294966988;
      }

      else if (v16[0].msgh_id == 100)
      {
        if ((v16[0].msgh_bits & 0x80000000) == 0)
        {
          if (v16[0].msgh_size == 36)
          {
            msgh_remote_port = 4294966996;
            if (v16[1].msgh_remote_port)
            {
              if (v16[0].msgh_remote_port)
              {
                msgh_remote_port = 4294966996;
              }

              else
              {
                msgh_remote_port = v16[1].msgh_remote_port;
              }
            }
          }

          else
          {
            msgh_remote_port = 4294966996;
          }

          goto LABEL_27;
        }

        msgh_remote_port = 4294966996;
        if (v16[1].msgh_bits == 1 && *&v16[0].msgh_size == 56 && HIBYTE(v16[1].msgh_local_port) == 1)
        {
          msgh_voucher_port = v16[1].msgh_voucher_port;
          if (v16[1].msgh_voucher_port == DWORD1(v17))
          {
            msgh_remote_port = 0;
            *a3 = *&v16[1].msgh_size;
            *a4 = msgh_voucher_port;
            goto LABEL_28;
          }
        }
      }

      else
      {
        msgh_remote_port = 4294966995;
      }

LABEL_27:
      mach_msg_destroy(v16);
      goto LABEL_28;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_28:
  v14 = *MEMORY[0x277D85DE8];
  return msgh_remote_port;
}

uint64_t _DAServerDiskGetOptions(unsigned int a1, const char *a2, _DWORD *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  memset(v16, 0, 480);
  v14 = 0u;
  v15 = 0u;
  *(&v15 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v5 = mig_strncpy_zerofill(v16 + 8, a2, 1024);
  }

  else
  {
    v5 = mig_strncpy(v16 + 8, a2, 1024);
  }

  LODWORD(v16[0]) = 0;
  DWORD1(v16[0]) = v5;
  v6 = (v5 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  *(&v14 + 1) = __PAIR64__(special_reply_port, a1);
  LODWORD(v14) = 5395;
  *&v15 = 0x100000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v14);
    v8 = HIDWORD(v14);
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(&v14, 3162115, v6 + 40, 0x30u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (DWORD1(v15) == 71)
      {
        v10 = 4294966988;
      }

      else if (DWORD1(v15) == 101)
      {
        if ((v14 & 0x80000000) == 0)
        {
          if (DWORD1(v14) == 40)
          {
            if (!DWORD2(v14))
            {
              v10 = LODWORD(v16[0]);
              if (!LODWORD(v16[0]))
              {
                *a3 = DWORD1(v16[0]);
                goto LABEL_27;
              }

              goto LABEL_26;
            }
          }

          else if (DWORD1(v14) == 36)
          {
            if (DWORD2(v14))
            {
              v11 = 1;
            }

            else
            {
              v11 = LODWORD(v16[0]) == 0;
            }

            if (v11)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = LODWORD(v16[0]);
            }

            goto LABEL_26;
          }
        }

        v10 = 4294966996;
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v14);
      goto LABEL_27;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_27:
  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t _DAServerDiskGetUserUID(unsigned int a1, const char *a2, _DWORD *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  memset(v16, 0, 480);
  v14 = 0u;
  v15 = 0u;
  *(&v15 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v5 = mig_strncpy_zerofill(v16 + 8, a2, 1024);
  }

  else
  {
    v5 = mig_strncpy(v16 + 8, a2, 1024);
  }

  LODWORD(v16[0]) = 0;
  DWORD1(v16[0]) = v5;
  v6 = (v5 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  *(&v14 + 1) = __PAIR64__(special_reply_port, a1);
  LODWORD(v14) = 5395;
  *&v15 = 0x200000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v14);
    v8 = HIDWORD(v14);
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(&v14, 3162115, v6 + 40, 0x30u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (DWORD1(v15) == 71)
      {
        v10 = 4294966988;
      }

      else if (DWORD1(v15) == 102)
      {
        if ((v14 & 0x80000000) == 0)
        {
          if (DWORD1(v14) == 40)
          {
            if (!DWORD2(v14))
            {
              v10 = LODWORD(v16[0]);
              if (!LODWORD(v16[0]))
              {
                *a3 = DWORD1(v16[0]);
                goto LABEL_27;
              }

              goto LABEL_26;
            }
          }

          else if (DWORD1(v14) == 36)
          {
            if (DWORD2(v14))
            {
              v11 = 1;
            }

            else
            {
              v11 = LODWORD(v16[0]) == 0;
            }

            if (v11)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = LODWORD(v16[0]);
            }

            goto LABEL_26;
          }
        }

        v10 = 4294966996;
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v14);
      goto LABEL_27;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_27:
  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t _DAServerDiskIsClaimed(unsigned int a1, const char *a2, _DWORD *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  memset(v16, 0, 480);
  v14 = 0u;
  v15 = 0u;
  *(&v15 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v5 = mig_strncpy_zerofill(v16 + 8, a2, 1024);
  }

  else
  {
    v5 = mig_strncpy(v16 + 8, a2, 1024);
  }

  LODWORD(v16[0]) = 0;
  DWORD1(v16[0]) = v5;
  v6 = (v5 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  *(&v14 + 1) = __PAIR64__(special_reply_port, a1);
  LODWORD(v14) = 5395;
  *&v15 = 0x300000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v14);
    v8 = HIDWORD(v14);
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(&v14, 3162115, v6 + 40, 0x30u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (DWORD1(v15) == 71)
      {
        v10 = 4294966988;
      }

      else if (DWORD1(v15) == 103)
      {
        if ((v14 & 0x80000000) == 0)
        {
          if (DWORD1(v14) == 40)
          {
            if (!DWORD2(v14))
            {
              v10 = LODWORD(v16[0]);
              if (!LODWORD(v16[0]))
              {
                *a3 = DWORD1(v16[0]);
                goto LABEL_27;
              }

              goto LABEL_26;
            }
          }

          else if (DWORD1(v14) == 36)
          {
            if (DWORD2(v14))
            {
              v11 = 1;
            }

            else
            {
              v11 = LODWORD(v16[0]) == 0;
            }

            if (v11)
            {
              v10 = 4294966996;
            }

            else
            {
              v10 = LODWORD(v16[0]);
            }

            goto LABEL_26;
          }
        }

        v10 = 4294966996;
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v14);
      goto LABEL_27;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_27:
  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t _DAServerDiskSetAdoption(unsigned int a1, const char *a2, int a3)
{
  v16 = *MEMORY[0x277D85DE8];
  memset(v15, 0, 480);
  v13 = 0u;
  v14 = 0u;
  *(&v14 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v5 = mig_strncpy_zerofill(v15 + 8, a2, 1024);
  }

  else
  {
    v5 = mig_strncpy(v15 + 8, a2, 1024);
  }

  LODWORD(v15[0]) = 0;
  DWORD1(v15[0]) = v5;
  v6 = (v5 + 3) & 0xFFFFFFFC;
  *(v15 + v6 + 8) = a3;
  special_reply_port = mig_get_special_reply_port();
  *(&v13 + 1) = __PAIR64__(special_reply_port, a1);
  LODWORD(v13) = 5395;
  *&v14 = 0x400000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v13);
    v8 = HIDWORD(v13);
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(&v13, 3162115, v6 + 44, 0x2Cu, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (v9)
    {
      mig_dealloc_special_reply_port();
      goto LABEL_20;
    }

    if (DWORD1(v14) == 71)
    {
      v10 = 4294966988;
    }

    else if (DWORD1(v14) == 104)
    {
      v10 = 4294966996;
      if ((v13 & 0x80000000) == 0 && *(&v13 + 4) == 36)
      {
        v10 = LODWORD(v15[0]);
        if (!LODWORD(v15[0]))
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      v10 = 4294966995;
    }

    mach_msg_destroy(&v13);
  }

LABEL_20:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t _DAServerDiskSetOptions(unsigned int a1, const char *a2, int a3, int a4)
{
  v19 = *MEMORY[0x277D85DE8];
  memset(v18, 0, 480);
  v16 = 0u;
  v17 = 0u;
  *(&v17 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v7 = mig_strncpy_zerofill(v18 + 8, a2, 1024);
  }

  else
  {
    v7 = mig_strncpy(v18 + 8, a2, 1024);
  }

  LODWORD(v18[0]) = 0;
  DWORD1(v18[0]) = v7;
  v8 = (v7 + 3) & 0xFFFFFFFC;
  v9 = &v16 + v8;
  *(v9 + 10) = a3;
  *(v9 + 11) = a4;
  special_reply_port = mig_get_special_reply_port();
  *(&v16 + 1) = __PAIR64__(special_reply_port, a1);
  LODWORD(v16) = 5395;
  *&v17 = 0x500000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v16);
    v11 = HIDWORD(v16);
  }

  else
  {
    v11 = special_reply_port;
  }

  v12 = mach_msg(&v16, 3162115, v8 + 48, 0x2Cu, v11, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (v12)
    {
      mig_dealloc_special_reply_port();
      goto LABEL_20;
    }

    if (DWORD1(v17) == 71)
    {
      v13 = 4294966988;
    }

    else if (DWORD1(v17) == 105)
    {
      v13 = 4294966996;
      if ((v16 & 0x80000000) == 0 && *(&v16 + 4) == 36)
      {
        v13 = LODWORD(v18[0]);
        if (!LODWORD(v18[0]))
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      v13 = 4294966995;
    }

    mach_msg_destroy(&v16);
  }

LABEL_20:
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t _DAServerDiskUnclaim(unsigned int a1, const char *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  memset(v9, 0, 480);
  v7 = 0u;
  v8 = 0u;
  *(&v8 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v3 = mig_strncpy_zerofill(v9 + 8, a2, 1024);
  }

  else
  {
    v3 = mig_strncpy(v9 + 8, a2, 1024);
  }

  v4 = v3;
  LODWORD(v9[0]) = 0;
  DWORD1(v9[0]) = v3;
  LODWORD(v7) = 19;
  *(&v7 + 1) = a1;
  *&v8 = 0x600000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v7);
  }

  result = mach_msg(&v7, 2097153, ((v4 + 3) & 0xFFFFFFFC) + 40, 0, 0, 0, 0);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _DAServerSessionCopyCallbackQueue(int a1, void *a2, _DWORD *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  memset(&msg_16[4], 0, 44);
  msg_4 = 0;
  special_reply_port = mig_get_special_reply_port();
  msg_8 = a1;
  msg_12 = special_reply_port;
  msg = 5395;
  *msg_16 = 0x700000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    v7 = msg_12;
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(&msg, 3162115, 0x18u, 0x40u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&msg_16[4] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg_16[4] == 107)
      {
        if ((msg & 0x80000000) == 0)
        {
          if (msg_4 == 36)
          {
            v9 = 4294966996;
            if (*&msg_16[16])
            {
              if (msg_8)
              {
                v9 = 4294966996;
              }

              else
              {
                v9 = *&msg_16[16];
              }
            }
          }

          else
          {
            v9 = 4294966996;
          }

          goto LABEL_25;
        }

        v9 = 4294966996;
        if (*&msg_16[8] == 1 && msg_4 == 56 && !msg_8 && msg_16[23] == 1)
        {
          v10 = *&msg_16[24];
          if (*&msg_16[24] == *&msg_16[36])
          {
            v9 = 0;
            *a2 = *&msg_16[12];
            *a3 = v10;
            goto LABEL_26;
          }
        }
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_25:
      mach_msg_destroy(&msg);
      goto LABEL_26;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_26:
  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t _DAServerSessionCreate(unsigned int a1, const char *a2, _DWORD *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  memset(v15, 0, 480);
  v13 = 0u;
  v14 = 0u;
  *(&v14 + 1) = *MEMORY[0x277D85EF8];
  if (MEMORY[0x28223BE50])
  {
    v5 = mig_strncpy_zerofill(v15 + 8, a2, 1024);
  }

  else
  {
    v5 = mig_strncpy(v15 + 8, a2, 1024);
  }

  LODWORD(v15[0]) = 0;
  DWORD1(v15[0]) = v5;
  v6 = (v5 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  *(&v13 + 1) = __PAIR64__(special_reply_port, a1);
  LODWORD(v13) = 5395;
  *&v14 = 0x800000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v13);
    v8 = HIDWORD(v13);
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(&v13, 3162115, v6 + 40, 0x30u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (DWORD1(v14) == 71)
      {
        v10 = 4294966988;
      }

      else if (DWORD1(v14) == 108)
      {
        if ((v13 & 0x80000000) == 0)
        {
          if (DWORD1(v13) == 36)
          {
            v10 = 4294966996;
            if (LODWORD(v15[0]))
            {
              if (DWORD2(v13))
              {
                v10 = 4294966996;
              }

              else
              {
                v10 = LODWORD(v15[0]);
              }
            }
          }

          else
          {
            v10 = 4294966996;
          }

          goto LABEL_26;
        }

        v10 = 4294966996;
        if (DWORD2(v14) == 1 && *(&v13 + 4) == 40 && WORD3(v15[0]) << 16 == 1114112)
        {
          v10 = 0;
          *a3 = HIDWORD(v14);
          goto LABEL_27;
        }
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v13);
      goto LABEL_27;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_27:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t _DAServerSessionQueueRequest(mach_port_t a1, int a2, char *src, int a4, uint64_t a5, int a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10)
{
  v32 = *MEMORY[0x277D85DE8];
  *&v30[8] = 0u;
  memset(v31, 0, 432);
  memset(&v23, 0, sizeof(v23));
  v24 = 2;
  v25 = a5;
  v26 = 16777472;
  v27 = a6;
  v28 = a7;
  v29 = 16777472;
  *v30 = a8;
  *&v30[4] = *MEMORY[0x277D85EF8];
  *&v30[12] = a2;
  if (MEMORY[0x28223BE50])
  {
    v14 = mig_strncpy_zerofill(v31, src, 1024);
  }

  else
  {
    v14 = mig_strncpy(v31, src, 1024);
  }

  *&v30[16] = 0;
  *&v30[20] = v14;
  v15 = (v14 + 3) & 0xFFFFFFFC;
  v16 = &v23 + v15;
  *(v16 + 20) = a4;
  *(v16 + 21) = a6;
  *(v16 + 22) = a8;
  *(v16 + 92) = a9;
  *(v16 + 100) = a10;
  special_reply_port = mig_get_special_reply_port();
  v23.msgh_remote_port = a1;
  v23.msgh_local_port = special_reply_port;
  v23.msgh_bits = -2147478253;
  *&v23.msgh_voucher_port = 0x900000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v23);
    msgh_local_port = v23.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v19 = mach_msg(&v23, 3162115, v15 + 108, 0x2Cu, msgh_local_port, 0, 0);
  v20 = v19;
  if ((v19 - 268435458) > 0xE || ((1 << (v19 - 2)) & 0x4003) == 0)
  {
    if (v19)
    {
      mig_dealloc_special_reply_port();
      goto LABEL_20;
    }

    if (v23.msgh_id == 71)
    {
      v20 = 4294966988;
    }

    else if (v23.msgh_id == 109)
    {
      v20 = 4294966996;
      if ((v23.msgh_bits & 0x80000000) == 0 && *&v23.msgh_size == 36)
      {
        v20 = HIDWORD(v25);
        if (!HIDWORD(v25))
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      v20 = 4294966995;
    }

    mach_msg_destroy(&v23);
  }

LABEL_20:
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t _DAServerSessionQueueRequestWithUserToken(unsigned int a1, int a2, _OWORD *a3, char *src, int a5, uint64_t a6, int a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11)
{
  v27 = *MEMORY[0x277D85DE8];
  memset(v26, 0, 400);
  memset(&v25[16], 0, 80);
  v24 = 0u;
  *v25 = 0u;
  v14 = a3[1];
  *&v25[56] = *a3;
  *&v25[8] = 2;
  *&v25[12] = a6;
  *&v25[20] = 16777472;
  *&v25[24] = a7;
  *&v25[28] = a8;
  *&v25[36] = 16777472;
  *&v25[40] = a9;
  *&v25[44] = *MEMORY[0x277D85EF8];
  *&v25[52] = a2;
  *&v25[72] = v14;
  if (MEMORY[0x28223BE50])
  {
    v15 = mig_strncpy_zerofill(v26, src, 1024);
  }

  else
  {
    v15 = mig_strncpy(v26, src, 1024);
  }

  *&v25[88] = 0;
  *&v25[92] = v15;
  v16 = (v15 + 3) & 0xFFFFFFFC;
  v17 = &v25[v16 - 16];
  *(v17 + 28) = a5;
  *(v17 + 29) = a7;
  *(v17 + 30) = a9;
  *(v17 + 124) = a10;
  *(v17 + 132) = a11;
  special_reply_port = mig_get_special_reply_port();
  *(&v24 + 1) = __PAIR64__(special_reply_port, a1);
  LODWORD(v24) = -2147478253;
  *v25 = 0xA00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v24);
    v19 = HIDWORD(v24);
  }

  else
  {
    v19 = special_reply_port;
  }

  v20 = mach_msg(&v24, 3162115, v16 + 140, 0x2Cu, v19, 0, 0);
  v21 = v20;
  if ((v20 - 268435458) > 0xE || ((1 << (v20 - 2)) & 0x4003) == 0)
  {
    if (v20)
    {
      mig_dealloc_special_reply_port();
      goto LABEL_20;
    }

    if (*&v25[4] == 71)
    {
      v21 = 4294966988;
    }

    else if (*&v25[4] == 110)
    {
      v21 = 4294966996;
      if ((v24 & 0x80000000) == 0 && *(&v24 + 4) == 36)
      {
        v21 = *&v25[16];
        if (!*&v25[16])
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      v21 = 4294966995;
    }

    mach_msg_destroy(&v24);
  }

LABEL_20:
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t _DAServerSessionQueueResponse(unsigned int a1, uint64_t a2, uint64_t a3, int a4, char *src, uint64_t a6, unsigned int a7, int a8)
{
  v22 = *MEMORY[0x277D85DE8];
  *&v20[24] = 0u;
  memset(v21, 0, 432);
  *&v20[8] = 0u;
  memset(&v16, 0, sizeof(v16));
  v17 = 1;
  v18 = a6;
  v19 = 16777472;
  *v20 = a7;
  *&v20[4] = *MEMORY[0x277D85EF8];
  *&v20[12] = a2;
  *&v20[20] = a3;
  *&v20[28] = a4;
  if (MEMORY[0x28223BE50])
  {
    v11 = mig_strncpy_zerofill(v21, src, 1024);
  }

  else
  {
    v11 = mig_strncpy(v21, src, 1024);
  }

  *&v20[32] = 0;
  *&v20[36] = v11;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  v13 = &v16 + v12;
  *(v13 + 20) = a7;
  *(v13 + 21) = a8;
  v16.msgh_bits = -2147483629;
  *&v16.msgh_remote_port = a1;
  *&v16.msgh_voucher_port = 0xB00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v16);
  }

  result = mach_msg(&v16, 2097153, v12 + 88, 0, 0, 0, 0);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _DAServerSessionRegisterCallback(mach_port_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7, uint64_t a8, int a9)
{
  v31 = *MEMORY[0x277D85DE8];
  v17 = 2;
  v18 = a6;
  v19 = 16777472;
  v20 = a7;
  v21 = a8;
  v22 = 16777472;
  v23 = a9;
  v24 = *MEMORY[0x277D85EF8];
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a7;
  v30 = a9;
  special_reply_port = mig_get_special_reply_port();
  *&v16.msgh_bits = 2147489043;
  v16.msgh_remote_port = a1;
  v16.msgh_local_port = special_reply_port;
  *&v16.msgh_voucher_port = 0xC00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v16);
    msgh_local_port = v16.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v12 = mach_msg(&v16, 3162115, 0x64u, 0x2Cu, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (v12)
    {
      mig_dealloc_special_reply_port();
      goto LABEL_17;
    }

    if (v16.msgh_id == 71)
    {
      v13 = 4294966988;
    }

    else if (v16.msgh_id == 112)
    {
      v13 = 4294966996;
      if ((v16.msgh_bits & 0x80000000) == 0 && *&v16.msgh_size == 36)
      {
        v13 = HIDWORD(v18);
        if (!HIDWORD(v18))
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v13 = 4294966995;
    }

    mach_msg_destroy(&v16);
  }

LABEL_17:
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t _DAServerSessionRelease(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0xD00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
  }

  return mach_msg(&msg, 2097153, 0x18u, 0, 0, 0, 0);
}

uint64_t _DAServerSessionSetKeepAlive(int a1)
{
  v8 = 0;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0xE00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v3 = *&msg[12];
  }

  else
  {
    v3 = special_reply_port;
  }

  v4 = mach_msg(msg, 3162115, 0x18u, 0x2Cu, v3, 0, 0);
  v5 = v4;
  if ((v4 - 268435458) > 0xE || ((1 << (v4 - 2)) & 0x4003) == 0)
  {
    if (v4)
    {
      mig_dealloc_special_reply_port();
      return v5;
    }

    if (*&msg[20] == 71)
    {
      v5 = 4294966988;
    }

    else if (*&msg[20] == 114)
    {
      v5 = 4294966996;
      if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
      {
        v5 = *&msg[32];
        if (!*&msg[32])
        {
          return v5;
        }
      }
    }

    else
    {
      v5 = 4294966995;
    }

    mach_msg_destroy(msg);
  }

  return v5;
}

uint64_t _DAServerSessionSetClientPort(int a1, int a2)
{
  v5 = 0;
  *&msg[4] = 0u;
  v4 = a2;
  v6 = 1310720;
  *msg = -2147483629;
  *&msg[8] = a1;
  *&msg[20] = 0x10000000FLL;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
  }

  return mach_msg(msg, 2097153, 0x28u, 0, 0, 0, 0);
}

uint64_t _DAServerSessionUnregisterCallback(mach_port_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85EF8];
  v6 = a2;
  v7 = a3;
  *&v4.msgh_bits = 19;
  v4.msgh_voucher_port = 0;
  v4.msgh_id = 16;
  v4.msgh_remote_port = a1;
  v4.msgh_local_port = 0;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v4);
  }

  return mach_msg(&v4, 2097153, 0x30u, 0, 0, 0, 0);
}

void DASessionCreate_cold_1(int a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&dword_248D95000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Now using %d DASessionRef objects", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}