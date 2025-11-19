BOOL save_pac(uint64_t *a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v38 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v35 = Mutable;
  dict_add_tlv_as_data(Mutable, @"AuthorityID", a1[4], 0);
  v3 = a1[5];
  if (v3)
  {
    dict_add_tlv_as_string(Mutable, @"AuthorityIDInfo", v3);
  }

  v4 = a1[6];
  if (v4)
  {
    dict_add_tlv_as_string(Mutable, @"InitiatorID", v4);
  }

  dict_add_tlv_as_data(Mutable, @"PACOpaque", a1[1], 1);
  dict_add_tlv_as_data(Mutable, @"PACInfo", a1[2], 0);
  v5 = a1[6];
  if (v5)
  {
    v6 = (v5 + 4);
    v7 = bswap32(*(v5 + 2)) >> 16;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = pac_list_copy();
  v36 = v8;
  if (!v8)
  {
    MutableCopy = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    v37 = MutableCopy;
    goto LABEL_15;
  }

  MutableCopy = CFArrayCreateMutableCopy(0, 0, v8);
  v37 = MutableCopy;
  pac = pac_list_find_pac(MutableCopy, (a1[4] + 4), bswap32(*(a1[4] + 2)) >> 16, v6, v7);
  if (pac == -1)
  {
LABEL_15:
    v11 = -1;
    goto LABEL_16;
  }

  v11 = pac;
  ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, pac);
  v13 = CFDictionaryGetValue(ValueAtIndex, @"PACKeyKeychainItemID");
  v38 = v13;
  if (v13)
  {
    v14 = v13;
    CFDictionarySetValue(Mutable, @"PACKeyKeychainItemID", v13);
    v15 = CFDataCreate(0, (*a1 + 4), bswap32(*(*a1 + 2)) >> 16);
    v40 = v15;
    v16 = EAPSecKeychainPasswordItemSet(0, v14, v15);
    if (v16 == -25300)
    {
      v44 = 0;
      v45 = 0;
      v42 = 0;
      v43 = 0;
      v41 = 0;
      pac_keychain_init_items(v6, v7, &v41, &v45, &v44, &v42);
      v17 = EAPSecKeychainPasswordItemCreateWithAccess(0, v45, v14, v42, v44, v41, v15);
      if (v17)
      {
        LogHandle = EAPLogGetLogHandle();
        v29 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(LogHandle, v29))
        {
          v30 = EAPSecurityErrorString(v17);
          *buf = 136315394;
          v47 = v30;
          v48 = 1024;
          v49 = v17;
          _os_log_impl(&dword_249EFB000, LogHandle, v29, "EAP-FAST: EAPSecKeychainPasswordItemCreateWithAccess failed,%s (%d)", buf, 0x12u);
        }
      }

      my_CFRelease(&v43);
      my_CFRelease(&v45);
      my_CFRelease(&v44);
      my_CFRelease(&v42);
      my_CFRelease(&v41);
    }

    else
    {
      v17 = v16;
      if (!v16)
      {
        my_CFRelease(&v40);
        goto LABEL_21;
      }

      v31 = EAPLogGetLogHandle();
      v32 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v31, v32))
      {
        *buf = 136315394;
        v47 = EAPSecurityErrorString(v17);
        v48 = 1024;
        v49 = v17;
        _os_log_impl(&dword_249EFB000, v31, v32, "EAP-FAST: EAPSecKeychainPasswordItemSet failed, %s (%d)", buf, 0x12u);
      }
    }

    my_CFRelease(&v40);
    if (!v17)
    {
      goto LABEL_21;
    }

LABEL_31:
    v27 = 0;
    goto LABEL_32;
  }

LABEL_16:
  v18 = *a1;
  v19 = bswap32(*(*a1 + 2)) >> 16;
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  value = 0;
  pac_keychain_init_items(v6, v7, &v41, &v45, &v44, &v42);
  v40 = CFDataCreate(0, (v18 + 4), v19);
  UniqueWithAccess = EAPSecKeychainPasswordItemCreateUniqueWithAccess(0, v45, v42, v44, v41, v40, &value);
  if (UniqueWithAccess)
  {
    v21 = UniqueWithAccess;
    v22 = EAPLogGetLogHandle();
    v23 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = EAPSecurityErrorString(v21);
      *buf = 136315394;
      v47 = v24;
      v48 = 1024;
      v49 = v21;
      _os_log_impl(&dword_249EFB000, v22, v23, "EAP-FAST: EAPSecKeychainPasswordItemCreateUniqueWithAccess failed,%s (%d)", buf, 0x12u);
    }
  }

  my_CFRelease(&v43);
  my_CFRelease(&v45);
  my_CFRelease(&v44);
  my_CFRelease(&v42);
  my_CFRelease(&v41);
  my_CFRelease(&v40);
  v38 = value;
  if (!value)
  {
    goto LABEL_31;
  }

  CFDictionarySetValue(Mutable, @"PACKeyKeychainItemID", value);
  my_CFRelease(&v38);
  if (v11 == -1)
  {
    CFArrayAppendValue(MutableCopy, Mutable);
    goto LABEL_23;
  }

LABEL_21:
  CFArraySetValueAtIndex(MutableCopy, v11, Mutable);
LABEL_23:
  v25 = *MEMORY[0x277CBF040];
  v26 = *MEMORY[0x277CBF010];
  CFPreferencesSetValue(@"PACList", v37, @"com.apple.network.eapclient.eapfast", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v27 = CFPreferencesSynchronize(@"com.apple.network.eapclient.eapfast", v25, v26) != 0;
LABEL_32:
  my_CFRelease(&v35);
  my_CFRelease(&v36);
  my_CFRelease(&v37);
  v33 = *MEMORY[0x277D85DE8];
  return v27;
}

void dict_add_tlv_as_data(__CFDictionary *a1, const void *a2, uint64_t a3, int a4)
{
  v6 = 4;
  if (a4)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  if (a4)
  {
    v6 = 0;
  }

  v8 = CFDataCreate(0, (a3 + v6), v7 + (bswap32(*(a3 + 2)) >> 16));
  CFDictionarySetValue(a1, a2, v8);
  my_CFRelease(&v8);
}

void dict_add_tlv_as_string(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  v5 = CFStringCreateWithBytes(0, (a3 + 4), bswap32(*(a3 + 2)) >> 16, 0x8000100u, 1u);
  CFDictionarySetValue(a1, a2, v5);
  my_CFRelease(&v5);
}

uint64_t EAPSecKeychainPasswordItemSet(uint64_t a1, void *a2, void *a3)
{
  keys[3] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v4 = *MEMORY[0x277CDC120];
  keys[0] = *MEMORY[0x277CDC228];
  keys[1] = v4;
  keys[2] = *MEMORY[0x277CDC558];
  result = 0;
  values[0] = *MEMORY[0x277CDC238];
  values[1] = a2;
  values[2] = *MEMORY[0x277CBED28];
  v5 = CFDictionaryCreate(0, keys, values, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v6 = SecItemCopyMatching(v5, &result);
  CFRelease(v5);
  if (!v6)
  {
    if (result && CFEqual(a3, result))
    {
      v6 = 0;
    }

    else
    {
      v7 = MEMORY[0x277CBF138];
      v8 = MEMORY[0x277CBF150];
      v9 = CFDictionaryCreate(0, keys, values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v10 = CFDictionaryCreate(0, MEMORY[0x277CDC5E8], &v14, 1, v7, v8);
      v6 = SecItemUpdate(v9, v10);
      CFRelease(v9);
      CFRelease(v10);
    }
  }

  my_CFRelease(&result);
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

CFDataRef pac_keychain_init_items(UInt8 *bytes, CFIndex length, CFDataRef *a3, void *a4, CFDataRef *a5, CFDataRef *a6)
{
  *a4 = 0;
  *a3 = CFDataCreate(0, bytes, length);
  v8 = *MEMORY[0x277CBED00];
  *a6 = CFDataCreateWithBytesNoCopy(0, "802.1X EAP-FAST", 15, *MEMORY[0x277CBED00]);
  result = CFDataCreateWithBytesNoCopy(0, "PAC-Key", 7, v8);
  *a5 = result;
  return result;
}

uint64_t EAPSecKeychainPasswordItemCreateWithAccess(uint64_t a1, uint64_t a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CDC120], a3);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CDBED8], *MEMORY[0x277CDBEE0]);
  if (a4)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277CDC080], a4);
  }

  if (a5)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277CDBFA0], a5);
  }

  if (a6)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277CDBF20], a6);
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x277CDC5E8], a7);
  v13 = SecItemAdd(Mutable, 0);
  CFRelease(Mutable);
  return v13;
}

void make_pac_ack(uint64_t a1, unsigned int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 12);
  if (*(a1 + 8) - v3 <= 9)
  {
    LogHandle = EAPLogGetLogHandle();
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v6))
    {
      v7 = *(a1 + 8) - *(a1 + 12);
      v11[0] = 67109376;
      v11[1] = 10;
      v12 = 1024;
      v13 = v7;
      _os_log_impl(&dword_249EFB000, LogHandle, v6, "EAP-FAST: BufferAdvanceWritePtr failed: %d > %d", v11, 0xEu);
    }

    v8 = EAPLogGetLogHandle();
    v9 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v8, v9))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&dword_249EFB000, v8, v9, "EAP-FAST: make_pac_ack(): buffer too small", v11, 2u);
    }
  }

  else
  {
    v4 = *a1 + v3;
    *(a1 + 12) = v3 + 10;
    *v4 = 0x200080006000B00;
    *(v4 + 8) = __rev16(a2);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void eapmschapv2_free(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
    *a1 = 0;
  }
}

CFStringRef EAPOLControlKeyCreate(char *cStr)
{
  v3 = CFStringCreateWithCString(0, cStr, 0x600u);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, *MEMORY[0x277CE1648], v3, *MEMORY[0x277CE1680]);
  my_CFRelease(&v3);
  return NetworkInterfaceEntity;
}

CFMutableStringRef EAPOLControlKeyCopyInterface(const __CFString *a1)
{
  if (!CFStringHasSuffix(a1, *MEMORY[0x277CE1680]))
  {
    return 0;
  }

  v2 = EAPOLControlKeyCopyInterface_prefix;
  if (!EAPOLControlKeyCopyInterface_prefix)
  {
    v3 = *MEMORY[0x277CE1638];
    v2 = SCDynamicStoreKeyCreate(0, @"%@/%@/%@/", *MEMORY[0x277CE1648], *MEMORY[0x277CE1638], *MEMORY[0x277CE1630]);
    EAPOLControlKeyCopyInterface_prefix = v2;
  }

  if (!CFStringHasPrefix(a1, v2))
  {
    return 0;
  }

  MutableCopy = CFStringCreateMutableCopy(0, 0, a1);
  if (MutableCopy)
  {
    v8.length = CFStringGetLength(v2);
    v8.location = 0;
    CFStringDelete(MutableCopy, v8);
    location = CFStringFind(MutableCopy, @"/", 0).location;
    if (location != -1)
    {
      v6 = location;
      v9.length = CFStringGetLength(MutableCopy) - location;
      v9.location = v6;
      CFStringDelete(MutableCopy, v9);
      return MutableCopy;
    }

    CFRelease(MutableCopy);
    return 0;
  }

  return MutableCopy;
}

uint64_t EAPOLControlCopyStateAndStatus(uint64_t a1, _DWORD *a2, const __CFData **a3)
{
  v14 = *MEMORY[0x277D85DE8];
  memset(v13, 0, sizeof(v13));
  v12 = 0;
  v11 = 0;
  bytes = 0;
  v9 = 0;
  *a3 = 0;
  if (!get_server_port(&v12, &v11))
  {
    goto LABEL_4;
  }

  __strlcpy_chk();
  v5 = eapolcontroller_copy_status(v12, v13, &bytes, &v9, a2, &v12 + 1);
  if (v5)
  {
    mach_error("eapolcontroller_copy_status failed", v5);
LABEL_4:
    v6 = 6;
LABEL_5:
    HIDWORD(v12) = v6;
    goto LABEL_6;
  }

  if (bytes)
  {
    *a3 = my_CFPropertyListCreateWithBytePtrAndLength(bytes, v9);
    MEMORY[0x24C207D30](*MEMORY[0x277D85F48], bytes, v9);
    if (!*a3)
    {
      v6 = 12;
      goto LABEL_5;
    }
  }

LABEL_6:
  result = HIDWORD(v12);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL get_server_port(uint64_t a1, mach_error_t *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D85F18];
  v4 = bootstrap_look_up2();
  *a2 = v4;
  if (v4)
  {
    LogHandle = EAPLogGetLogHandle();
    v6 = _SC_syslog_os_log_mapping();
    result = os_log_type_enabled(LogHandle, v6);
    if (result)
    {
      v8 = mach_error_string(*a2);
      v10 = 136315138;
      v11 = v8;
      _os_log_impl(&dword_249EFB000, LogHandle, v6, "eapolcontroller_server_port failed, %s", &v10, 0xCu);
      result = 0;
    }
  }

  else
  {
    result = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t eapolcontroller_copy_status(int a1, _OWORD *a2, void *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  v23 = *MEMORY[0x277D85DE8];
  memset(&reply_port[16], 0, 48);
  v22 = 0;
  *reply_port = 0u;
  *&reply_port[20] = *MEMORY[0x277D85EF8];
  v11 = a2[1];
  *&reply_port[28] = *a2;
  *&reply_port[44] = v11;
  v12 = mig_get_reply_port();
  *&reply_port[4] = a1;
  *&reply_port[8] = v12;
  v20 = 5395;
  *&reply_port[12] = 0x55F500000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v20);
    v13 = *&reply_port[8];
  }

  else
  {
    v13 = v12;
  }

  v14 = mach_msg(&v20, 3, 0x40u, 0x48u, v13, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&reply_port[8]);
  }

  else
  {
    if (!v14)
    {
      if (*&reply_port[16] == 71)
      {
        v15 = 4294966988;
      }

      else if (*&reply_port[16] == 22105)
      {
        if (v20 < 0)
        {
          v15 = 4294966996;
          if (*&reply_port[20] == 1 && *reply_port == 64 && !*&reply_port[4] && reply_port[35] == 1)
          {
            v16 = *&reply_port[36];
            if (*&reply_port[36] == *&reply_port[48])
            {
              v15 = 0;
              *a3 = *&reply_port[24];
              *a4 = v16;
              v17 = *&reply_port[56];
              *a5 = *&reply_port[52];
              *a6 = v17;
              goto LABEL_27;
            }
          }
        }

        else if (*reply_port == 36)
        {
          v15 = 4294966996;
          if (*&reply_port[28])
          {
            if (*&reply_port[4])
            {
              v15 = 4294966996;
            }

            else
            {
              v15 = *&reply_port[28];
            }
          }
        }

        else
        {
          v15 = 4294966996;
        }
      }

      else
      {
        v15 = 4294966995;
      }

      mach_msg_destroy(&v20);
      goto LABEL_27;
    }

    mig_dealloc_reply_port(*&reply_port[8]);
  }

LABEL_27:
  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t EAPOLClientItemIDCreateWithProfileID(const void *a1)
{
  CFGetAllocator(a1);
  pthread_once(&__EAPOLClientItemIDRegisterClass_initialized, __EAPOLClientItemIDInitialize);
  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 2;
    *(Instance + 24) = CFRetain(a1);
  }

  return v3;
}

uint64_t EAPOLClientItemIDCreateWithWLANSSID(const void *a1)
{
  CFGetAllocator(a1);
  pthread_once(&__EAPOLClientItemIDRegisterClass_initialized, __EAPOLClientItemIDInitialize);
  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 1;
    *(Instance + 24) = CFRetain(a1);
  }

  return v3;
}

uint64_t EAPOLClientItemIDCreateWithWLANDomain(const void *a1)
{
  CFGetAllocator(a1);
  pthread_once(&__EAPOLClientItemIDRegisterClass_initialized, __EAPOLClientItemIDInitialize);
  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 5;
    *(Instance + 24) = CFRetain(a1);
  }

  return v3;
}

uint64_t EAPOLClientItemIDCreateWithProfile(const void *a1)
{
  CFGetAllocator(a1);
  pthread_once(&__EAPOLClientItemIDRegisterClass_initialized, __EAPOLClientItemIDInitialize);
  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 3;
    CFRetain(a1);
    *(v3 + 24) = a1;
  }

  return v3;
}

uint64_t EAPOLClientItemIDCreateDefault()
{
  pthread_once(&__EAPOLClientItemIDRegisterClass_initialized, __EAPOLClientItemIDInitialize);
  result = _CFRuntimeCreateInstance();
  if (result)
  {
    *(result + 16) = 4;
  }

  return result;
}

uint64_t EAPOLClientItemIDGetProfileID(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == 3)
  {
    return EAPOLClientProfileGetID(*(a1 + 24));
  }

  if (v1 == 2)
  {
    return *(a1 + 24);
  }

  return 0;
}

uint64_t EAPOLClientItemIDGetWLANSSID(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == 3)
  {
    return EAPOLClientProfileGetWLANSSIDAndSecurityType(*(a1 + 24), 0);
  }

  if (v1 == 1)
  {
    return *(a1 + 24);
  }

  return 0;
}

uint64_t EAPOLClientItemIDGetProfile(uint64_t a1)
{
  if (*(a1 + 16) == 3)
  {
    return *(a1 + 24);
  }

  else
  {
    return 0;
  }
}

CFDictionaryRef EAPOLClientItemIDCopyDictionary(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 == 3)
  {
    ID = EAPOLClientProfileGetID(*(a1 + 24));
    if (ID)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (v2 != 2)
    {
      goto LABEL_7;
    }

    ID = *(a1 + 24);
    if (ID)
    {
LABEL_4:
      v4 = @"ProfileID";
LABEL_11:
      v7 = ID;
      keys = v4;
      return CFDictionaryCreate(0, &keys, &v7, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }
  }

  v2 = *(a1 + 16);
LABEL_7:
  if (v2 == 3)
  {
    ID = EAPOLClientProfileGetWLANSSIDAndSecurityType(*(a1 + 24), 0);
    if (ID)
    {
      goto LABEL_10;
    }

LABEL_13:
    v2 = *(a1 + 16);
    goto LABEL_14;
  }

  if (v2 == 1)
  {
    ID = *(a1 + 24);
    if (ID)
    {
LABEL_10:
      v4 = @"SSID";
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_14:
  if (v2 == 4)
  {
    keys = @"Default";
    v5 = *MEMORY[0x277CBED28];
  }

  else
  {
    if (v2 != 5)
    {
      return 0;
    }

    keys = @"Domain";
    v5 = *(a1 + 24);
  }

  v7 = v5;
  return CFDictionaryCreate(0, &keys, &v7, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
}

uint64_t EAPOLClientItemIDCreateWithDictionary(uint64_t a1, const void *a2)
{
  TypeID = CFDictionaryGetTypeID();
  if (!a2 || CFGetTypeID(a2) != TypeID)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a2, @"ProfileID");
  v6 = CFStringGetTypeID();
  if (Value && CFGetTypeID(Value) == v6)
  {
    if (!a1 || (ProfileWithID = EAPOLClientConfigurationGetProfileWithID(a1, Value)) == 0)
    {

      return EAPOLClientItemIDCreateWithProfileID(Value);
    }

    goto LABEL_21;
  }

  v9 = CFDictionaryGetValue(a2, @"SSID");
  v10 = CFDataGetTypeID();
  if (v9 && CFGetTypeID(v9) == v10)
  {
    if (!a1 || (ProfileWithID = EAPOLClientConfigurationGetProfileWithWLANSSID(a1, v9)) == 0)
    {

      return EAPOLClientItemIDCreateWithWLANSSID(v9);
    }

LABEL_21:

    return EAPOLClientItemIDCreateWithProfile(ProfileWithID);
  }

  v11 = CFDictionaryGetValue(a2, @"Domain");
  v12 = CFStringGetTypeID();
  if (!v11 || CFGetTypeID(v11) != v12)
  {
    if (CFDictionaryGetValue(a2, @"Default"))
    {

      return EAPOLClientItemIDCreateDefault();
    }

    return 0;
  }

  if (a1)
  {
    ProfileWithID = EAPOLClientConfigurationGetProfileWithWLANDomain(a1, v11);
    if (ProfileWithID)
    {
      goto LABEL_21;
    }
  }

  return EAPOLClientItemIDCreateWithWLANDomain(v11);
}

uint64_t EAPOLClientItemIDCopyIdentity(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = 0;
  v1 = EAPOLClientItemIDCopyUniqueString(a1, 0);
  v22 = v1;
  LogHandle = EAPLogGetLogHandle();
  v3 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(LogHandle, v3))
  {
    *buf = 138412290;
    v24 = v1;
    _os_log_impl(&dword_249EFB000, LogHandle, v3, "looking for identity reference for [%@]", buf, 0xCu);
  }

  v4 = EAPKeychainCopyIdentityReference(v1, &v21);
  if (v4)
  {
    v5 = v4;
    v6 = EAPLogGetLogHandle();
    v7 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = EAPSecurityErrorString(v5);
      *buf = 136315394;
      v24 = v8;
      v25 = 1024;
      v26 = v5;
      v9 = "EAPKeychainCopyIdentityReference() failed %s (%d)";
LABEL_6:
      v10 = v6;
      v11 = v7;
      v12 = 18;
LABEL_7:
      _os_log_impl(&dword_249EFB000, v10, v11, v9, buf, v12);
    }
  }

  else
  {
    if (!v21)
    {
      v18 = EAPLogGetLogHandle();
      v19 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_8;
      }

      *buf = 0;
      v9 = "EAPKeychainCopyIdentityReference() returned NULL";
      v10 = v18;
      v11 = v19;
      v12 = 2;
      goto LABEL_7;
    }

    v15 = EAPSecIdentityHandleCreateSecIdentity(v21, &v20);
    if (v15)
    {
      v16 = v15;
      v6 = EAPLogGetLogHandle();
      v7 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v6, v7))
      {
        v17 = EAPSecurityErrorString(v16);
        *buf = 136315394;
        v24 = v17;
        v25 = 1024;
        v26 = v16;
        v9 = "EAPSecIdentityHandleCreateSecIdentity() failed %s (%d)";
        goto LABEL_6;
      }
    }
  }

LABEL_8:
  my_CFRelease(&v22);
  my_CFRelease(&v21);
  result = v20;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

CFStringRef EAPOLClientItemIDCopyUniqueString(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = "item";
  }

  else
  {
    v3 = "identity";
  }

  v4 = *(a1 + 16);
  if (v4 <= 2)
  {
    if (v4 != 1)
    {
      if (v4 == 2)
      {
        v5 = *(a1 + 24);
        if (v5)
        {
          v6 = "profileid";
          return CFStringCreateWithFormat(0, 0, @"com.apple.network.eap.%s.%s.%s.%@", "system", v3, v6, v5);
        }

        v11 = "profileid";
        return CFStringCreateWithFormat(0, 0, @"com.apple.network.eap.%s.%s.%s", "system", v3, v11);
      }

      return 0;
    }

    WLANSSIDAndSecurityType = *(a1 + 24);
    goto LABEL_20;
  }

  if (v4 != 3)
  {
    if (v4 == 4)
    {
      v11 = "default";
      return CFStringCreateWithFormat(0, 0, @"com.apple.network.eap.%s.%s.%s", "system", v3, v11);
    }

    if (v4 == 5)
    {
      v5 = *(a1 + 24);
      if (v5)
      {
        v6 = "wlan.domain";
        return CFStringCreateWithFormat(0, 0, @"com.apple.network.eap.%s.%s.%s.%@", "system", v3, v6, v5);
      }

      v11 = "wlan.domain";
      return CFStringCreateWithFormat(0, 0, @"com.apple.network.eap.%s.%s.%s", "system", v3, v11);
    }

    return 0;
  }

  WLANSSIDAndSecurityType = EAPOLClientProfileGetWLANSSIDAndSecurityType(*(a1 + 24), 0);
  if (WLANSSIDAndSecurityType)
  {
LABEL_20:
    WLANDomain = my_CFStringCreateWithData(WLANSSIDAndSecurityType);
    if (WLANDomain)
    {
      v12 = WLANDomain;
      v13 = CFStringCreateWithFormat(0, 0, @"com.apple.network.eap.%s.%s.%s.%@", "system", v3, "wlan.ssid", WLANDomain);
      CFRelease(v12);
      return v13;
    }

    v10 = "wlan.ssid";
    return CFStringCreateWithFormat(WLANDomain, 0, @"com.apple.network.eap.%s.%s.%s", "system", v3, v10);
  }

  WLANDomain = EAPOLClientProfileGetWLANDomain(*(a1 + 24));
  if (!WLANDomain)
  {
    WLANDomain = EAPOLClientProfileGetID(*(a1 + 24));
    v10 = "profileid";
    if (WLANDomain)
    {
      return CFStringCreateWithFormat(0, 0, @"com.apple.network.eap.%s.%s.%s.%@", "system", v3, v10, WLANDomain);
    }

    return CFStringCreateWithFormat(WLANDomain, 0, @"com.apple.network.eap.%s.%s.%s", "system", v3, v10);
  }

  v10 = "wlan.domain";
  return CFStringCreateWithFormat(0, 0, @"com.apple.network.eap.%s.%s.%s.%@", "system", v3, v10, WLANDomain);
}

BOOL EAPOLClientItemIDSetIdentity(uint64_t a1, uint64_t a2, __SecIdentity *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v31 = 0;
  v4 = EAPOLClientItemIDCopyUniqueString(a1, 0);
  v32 = v4;
  LogHandle = EAPLogGetLogHandle();
  v6 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(LogHandle, v6))
  {
    v7 = "adding/updating";
    if (!a3)
    {
      v7 = "deleting";
    }

    *buf = 136315394;
    v34 = v7;
    v35 = 2112;
    v36 = v4;
    _os_log_impl(&dword_249EFB000, LogHandle, v6, "%s identity reference for key : [%@]", buf, 0x16u);
  }

  v8 = EAPKeychainCopyIdentityReference(v4, &v30);
  if (!a3 && v8 == -25300)
  {
    goto LABEL_7;
  }

  if (!v30)
  {
    v10 = 0;
    goto LABEL_14;
  }

  v29 = 0;
  if (a3)
  {
    if (!EAPSecIdentityCompareIdentityHandle(a3, v30, &v29) && v29 == 1)
    {
      goto LABEL_7;
    }

    v10 = 1;
LABEL_14:
    v11 = EAPSecIdentityHandleCreate(a3);
    v31 = v11;
    if (!v11)
    {
      v25 = EAPLogGetLogHandle();
      v26 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v25, v26))
      {
        *buf = 0;
        v17 = "EAPSecIdentityHandleCreate() returned NULL";
        v18 = v25;
        v19 = v26;
        v20 = 2;
        goto LABEL_24;
      }

LABEL_25:
      v9 = 0;
      goto LABEL_26;
    }

    v12 = EAPKeychainSetIdentityReference(v4, v11, v10);
    if (v12)
    {
      v13 = v12;
      v14 = EAPLogGetLogHandle();
      v15 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = EAPSecurityErrorString(v13);
        *buf = 136315394;
        v34 = v16;
        v35 = 1024;
        LODWORD(v36) = v13;
        v17 = "failed to add/update identity reference in the Keychain, %s (%d)";
        v18 = v14;
        v19 = v15;
        v20 = 18;
LABEL_24:
        _os_log_impl(&dword_249EFB000, v18, v19, v17, buf, v20);
        goto LABEL_25;
      }

      goto LABEL_25;
    }

LABEL_7:
    v9 = 1;
    goto LABEL_26;
  }

  v21 = EAPKeychainSetIdentityReference(v4, 0, 0);
  if (v21)
  {
    v22 = EAPLogGetLogHandle();
    v23 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = EAPSecurityErrorString(v21);
      *buf = 136315394;
      v34 = v24;
      v35 = 1024;
      LODWORD(v36) = v21;
      _os_log_impl(&dword_249EFB000, v22, v23, "failed to delete identity reference, %s (%d)", buf, 0x12u);
    }
  }

  v9 = v21 == 0;
LABEL_26:
  my_CFRelease(&v30);
  my_CFRelease(&v31);
  my_CFRelease(&v32);
  v27 = *MEMORY[0x277D85DE8];
  return v9;
}

BOOL EAPOLClientItemIDCopyPasswordItem(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a3 | a4)
  {
    v7 = EAPOLClientItemIDCopyUniqueString(a1, 1);
    v17 = v7;
    if (v7)
    {
      v8 = v7;
      LogHandle = EAPLogGetLogHandle();
      v10 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(LogHandle, v10))
      {
        *buf = 138412290;
        v19 = v8;
        _os_log_impl(&dword_249EFB000, LogHandle, v10, "searching username/password for [%@]", buf, 0xCu);
      }

      v11 = EAPKeychainCopyPasswordItem(v8, a3, a4);
      if (v11)
      {
        v12 = EAPLogGetLogHandle();
        v13 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = EAPSecurityErrorString(v11);
          *buf = 136315394;
          v19 = v14;
          v20 = 1024;
          v21 = v11;
          _os_log_impl(&dword_249EFB000, v12, v13, "failed to copy username/password from the Keychain, %s (%d)", buf, 0x12u);
        }
      }

      v4 = v11 == 0;
    }

    else
    {
      v4 = 0;
    }

    my_CFRelease(&v17);
  }

  else
  {
    v4 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t EAPOLClientItemIDRemovePasswordItem(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = EAPOLClientItemIDCopyUniqueString(a1, 1);
  v11 = v1;
  if (v1)
  {
    LogHandle = EAPLogGetLogHandle();
    v3 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v3))
    {
      *buf = 138412290;
      v13 = v1;
      _os_log_impl(&dword_249EFB000, LogHandle, v3, "removing username/password for [%@]", buf, 0xCu);
    }

    v4 = EAPKeychainRemovePasswordItem(v1);
    if (v4)
    {
      v5 = v4;
      v6 = EAPLogGetLogHandle();
      v7 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = EAPSecurityErrorString(v5);
        *buf = 136315394;
        v13 = v8;
        v14 = 1024;
        v15 = v5;
        _os_log_impl(&dword_249EFB000, v6, v7, "failed to remove username/password from the Keychain, %s (%d)", buf, 0x12u);
      }

      v1 = 0;
    }

    else
    {
      v1 = 1;
    }
  }

  my_CFRelease(&v11);
  v9 = *MEMORY[0x277D85DE8];
  return v1;
}

__CFString *EAPOLClientItemIDSetPasswordItem(uint64_t a1, uint64_t a2, const __CFData *a3, void *a4)
{
  v4 = 0;
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0;
  theData = 0;
  if (a3 && a4)
  {
    v4 = EAPOLClientItemIDCopyUniqueString(a1, 1);
    v25 = v4;
    if (!v4)
    {
LABEL_19:
      my_CFRelease(&theData);
      my_CFRelease(&v23);
      my_CFRelease(&v25);
      goto LABEL_20;
    }

    LogHandle = EAPLogGetLogHandle();
    v8 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v8))
    {
      *buf = 138412290;
      v27 = v4;
      _os_log_impl(&dword_249EFB000, LogHandle, v8, "adding/updating username/password for [%@]", buf, 0xCu);
    }

    EAPKeychainCopyPasswordItem(v4, &theData, &v23);
    if (theData)
    {
      Length = CFDataGetLength(theData);
      v13 = 1;
      if (Length == CFDataGetLength(a3))
      {
        BytePtr = CFDataGetBytePtr(theData);
        v11 = CFDataGetBytePtr(a3);
        v12 = CFDataGetLength(theData);
        if (!memcmp(BytePtr, v11, v12))
        {
          v13 = 0;
        }
      }

      if (v23)
      {
        v14 = CFDataGetLength(v23);
        if (v14 != CFDataGetLength(a4) || (v15 = CFDataGetBytePtr(v23), v16 = CFDataGetBytePtr(a3), v17 = CFDataGetLength(theData), memcmp(v15, v16, v17)))
        {
          v18 = 1;
LABEL_18:
          v4 = (EAPKeychainSetPasswordItem(v4, a3, a4, v18 | v13) == 0);
          goto LABEL_19;
        }
      }

      else
      {
        v19 = EAPLogGetLogHandle();
        v20 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v19, v20))
        {
          *buf = 138412290;
          v27 = v4;
          _os_log_impl(&dword_249EFB000, v19, v20, "failed to find current password for [%@]", buf, 0xCu);
        }
      }

      v18 = 0;
      goto LABEL_18;
    }

    v18 = 0;
    v13 = 0;
    goto LABEL_18;
  }

LABEL_20:
  v21 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t __EAPOLClientItemIDInitialize()
{
  result = _CFRuntimeRegisterClass();
  __kEAPOLClientItemIDTypeID = result;
  return result;
}

void __EAPOLClientItemIDDeallocate(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1 > 5;
  v3 = (1 << v1) & 0x2E;
  if (!v2 && v3 != 0)
  {
    CFRelease(*(a1 + 24));
  }
}

uint64_t __EAPOLClientItemIDEqual(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16))
  {
    return CFEqual(*(a1 + 24), *(a2 + 24));
  }

  else
  {
    return 0;
  }
}

__CFString *__EAPOLClientItemIDCopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<EAPOLClientItemID %p [%p]> {", a1, v2);
  v4 = *(a1 + 16);
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      v5 = my_CFStringCreateWithData(*(a1 + 24));
      CFStringAppendFormat(Mutable, 0, @"WLAN SSID = %@", v5);
      CFRelease(v5);
    }

    else if (v4 == 2)
    {
      CFStringAppendFormat(Mutable, 0, @"ProfileID = %@", *(a1 + 24));
    }
  }

  else
  {
    switch(v4)
    {
      case 3:
        ID = EAPOLClientProfileGetID(*(a1 + 24));
        CFStringAppendFormat(Mutable, 0, @"Profile = %@", ID);
        break;
      case 4:
        CFStringAppend(Mutable, @"Default");
        break;
      case 5:
        CFStringAppendFormat(Mutable, 0, @"WLAN domain = %@", *(a1 + 24));
        break;
    }
  }

  CFStringAppend(Mutable, @"}");
  return Mutable;
}

CFIndex accept_types_valid(const __CFArray *a1)
{
  TypeID = CFArrayGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID)
  {
    result = CFArrayGetCount(a1);
    if (!result)
    {
      return result;
    }

    if (result < 1)
    {
      return 1;
    }

    v4 = 0;
    v5 = result & 0x7FFFFFFF;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
      v7 = CFNumberGetTypeID();
      if (!ValueAtIndex || CFGetTypeID(ValueAtIndex) != v7)
      {
        break;
      }

      if (v5 == ++v4)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t EAPOLClientProfileCreate(const void *a1)
{
  v2 = CFGetAllocator(a1);
  pthread_once(&__EAPOLClientProfileRegisterClass_initialized, __EAPOLClientProfileInitialize);
  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0u;
  v5 = Instance;
  if (Instance)
  {
    *(Instance + 24) = my_CFUUIDStringCreate(v2);
    if (!EAPOLClientConfigurationAddProfile(a1, Instance))
    {
      my_CFRelease(&v5);
      return v5;
    }
  }

  return Instance;
}

void EAPOLClientProfileSetUserDefinedName(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 40) = cf;
}

void EAPOLClientProfileSetAuthenticationProperties(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 32) = cf;
}

uint64_t EAPOLClientProfileGetWLANSSIDAndSecurityType(uint64_t a1, void *a2)
{
  result = *(a1 + 48);
  if (result)
  {
    if (a2)
    {
      *a2 = *(a1 + 56);
      return *(a1 + 48);
    }
  }

  else
  {
    result = 0;
    if (a2)
    {
      *a2 = 0;
    }
  }

  return result;
}

uint64_t EAPOLClientProfileSetWLANSSIDAndSecurityType(void *a1, void *cf, CFTypeRef a3)
{
  if (!cf)
  {
    if (!a3)
    {
      goto LABEL_7;
    }

    return 0;
  }

  result = 0;
  if (!a3 || a1[8])
  {
    return result;
  }

  v7 = a1[2];
  if (v7)
  {
    ProfileWithWLANSSID = EAPOLClientConfigurationGetProfileWithWLANSSID(v7, cf);
    if (ProfileWithWLANSSID)
    {
      if (ProfileWithWLANSSID != a1)
      {
        return 0;
      }
    }
  }

LABEL_7:
  v9 = a1[6];
  if (v9)
  {
    v10 = a1[2];
    if (v10)
    {
      EAPOLClientConfigurationSetProfileForSSID(v10, v9, 0);
    }
  }

  if (cf)
  {
    CFRetain(cf);
    v11 = a1[2];
    if (v11)
    {
      EAPOLClientConfigurationSetProfileForSSID(v11, cf, a1);
    }
  }

  if (a3)
  {
    CFRetain(a3);
  }

  v12 = a1[6];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = a1[7];
  if (v13)
  {
    CFRelease(v13);
  }

  a1[6] = cf;
  a1[7] = a3;
  return 1;
}

uint64_t EAPOLClientProfileSetWLANDomain(void *a1, void *cf)
{
  if (cf)
  {
    if (a1[6])
    {
      return 0;
    }

    v5 = a1[2];
    if (v5)
    {
      ProfileWithWLANDomain = EAPOLClientConfigurationGetProfileWithWLANDomain(v5, cf);
      if (ProfileWithWLANDomain)
      {
        if (ProfileWithWLANDomain != a1)
        {
          return 0;
        }
      }
    }
  }

  v7 = a1[8];
  if (v7)
  {
    v8 = a1[2];
    if (v8)
    {
      EAPOLClientConfigurationSetProfileForWLANDomain(v8, v7, 0);
    }
  }

  if (cf)
  {
    CFRetain(cf);
    v9 = a1[2];
    if (v9)
    {
      EAPOLClientConfigurationSetProfileForWLANDomain(v9, cf, a1);
    }
  }

  v10 = a1[8];
  if (v10)
  {
    CFRelease(v10);
  }

  a1[8] = cf;
  return 1;
}

BOOL EAPOLClientProfileSetInformation(uint64_t a1, const __CFString *a2, const void *a3)
{
  result = applicationID_is_valid(a2);
  if (result)
  {
    if (!a3)
    {
      v9 = *(a1 + 72);
      if (v9)
      {
        CFDictionaryRemoveValue(v9, a2);
      }

      return 1;
    }

    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(a3) == TypeID)
    {
      Mutable = *(a1 + 72);
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        *(a1 + 72) = Mutable;
      }

      CFDictionarySetValue(Mutable, a2, a3);
      return 1;
    }

    return 0;
  }

  return result;
}

const void *EAPOLClientProfileGetInformation(uint64_t a1, const __CFString *a2)
{
  if (!*(a1 + 72))
  {
    return 0;
  }

  if (!applicationID_is_valid(a2))
  {
    return 0;
  }

  Value = CFDictionaryGetValue(*(a1 + 72), a2);
  TypeID = CFDictionaryGetTypeID();
  if (!Value)
  {
    return 0;
  }

  if (CFGetTypeID(Value) == TypeID)
  {
    return Value;
  }

  return 0;
}

__CFDictionary *EAPOLClientProfileCreatePropertyList(uint64_t a1)
{
  value = 0;
  DictAndProfileID = EAPOLClientProfileCreateDictAndProfileID(a1, &value);
  v2 = DictAndProfileID;
  if (DictAndProfileID)
  {
    CFDictionarySetValue(DictAndProfileID, @"ProfileID", value);
  }

  return v2;
}

__CFDictionary *EAPOLClientProfileCreateDictAndProfileID(uint64_t a1, CFTypeRef *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  Value = *(a1 + 32);
  if (Value)
  {
    Value = CFDictionaryGetValue(Value, @"AcceptEAPTypes");
  }

  if (accept_types_valid(Value))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (a2)
    {
      *a2 = CFRetain(*(a1 + 24));
    }

    CFDictionarySetValue(Mutable, @"AuthenticationProperties", *(a1 + 32));
    v6 = *(a1 + 40);
    if (v6)
    {
      CFDictionarySetValue(Mutable, @"UserDefinedName", v6);
    }

    v7 = *(a1 + 72);
    if (v7 && CFDictionaryGetCount(v7))
    {
      CFDictionarySetValue(Mutable, @"Information", *(a1 + 72));
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      keys = @"SSID";
      v19 = @"SecurityType";
      v9 = *(a1 + 56);
      values = v8;
      v17 = v9;
      v10 = 2;
LABEL_16:
      v12 = CFDictionaryCreate(0, &keys, &values, v10, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(Mutable, @"WLAN", v12);
      CFRelease(v12);
      goto LABEL_17;
    }

    v11 = *(a1 + 64);
    if (v11)
    {
      keys = @"Domain";
      v19 = 0;
      values = v11;
      v17 = 0;
      v10 = 1;
      goto LABEL_16;
    }
  }

  else
  {
    v15 = *(a1 + 24);
    SCLog();
    Mutable = 0;
  }

LABEL_17:
  v13 = *MEMORY[0x277D85DE8];
  return Mutable;
}

uint64_t EAPOLClientProfileCreateWithPropertyList(const void *a1)
{
  TypeID = CFDictionaryGetTypeID();
  if (!a1)
  {
    return 0;
  }

  if (CFGetTypeID(a1) != TypeID)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"ProfileID");
  v4 = CFStringGetTypeID();
  if (!Value || CFGetTypeID(Value) != v4)
  {
    return 0;
  }

  return EAPOLClientProfileCreateWithDictAndProfileID(a1, Value);
}

uint64_t EAPOLClientProfileCreateWithDictAndProfileID(const void *a1, const void *a2)
{
  CFGetAllocator(a1);
  Value = CFDictionaryGetValue(a1, @"AuthenticationProperties");
  TypeID = CFDictionaryGetTypeID();
  if (!Value)
  {
    goto LABEL_14;
  }

  if (CFGetTypeID(Value) != TypeID)
  {
    goto LABEL_14;
  }

  if (!CFDictionaryGetCount(Value))
  {
    goto LABEL_14;
  }

  v6 = CFDictionaryGetValue(Value, @"AcceptEAPTypes");
  if (!accept_types_valid(v6))
  {
    goto LABEL_14;
  }

  v7 = CFDictionaryGetValue(a1, @"WLAN");
  if (v7)
  {
    v8 = CFDictionaryGetTypeID();
    if (CFGetTypeID(v7) != v8)
    {
LABEL_14:
      SCLog();
      return 0;
    }

    v9 = CFDictionaryGetValue(v7, @"SSID");
    v10 = CFDictionaryGetValue(v7, @"Domain");
    v11 = CFDataGetTypeID();
    if (v9 && CFGetTypeID(v9) == v11)
    {
      goto LABEL_12;
    }

    v12 = CFStringGetTypeID();
    if (!v10 || CFGetTypeID(v10) != v12)
    {
      goto LABEL_14;
    }

    if (v9)
    {
LABEL_12:
      v7 = CFDictionaryGetValue(v7, @"SecurityType");
      v13 = CFStringGetTypeID();
      if (!v7 || CFGetTypeID(v7) != v13)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v16 = CFDictionaryGetValue(a1, @"UserDefinedName");
  if (v16)
  {
    v17 = CFStringGetTypeID();
    if (CFGetTypeID(v16) != v17)
    {
      goto LABEL_14;
    }
  }

  v18 = CFDictionaryGetValue(a1, @"Information");
  if (v18)
  {
    v19 = CFDictionaryGetTypeID();
    if (CFGetTypeID(v18) != v19)
    {
      goto LABEL_14;
    }
  }

  pthread_once(&__EAPOLClientProfileRegisterClass_initialized, __EAPOLClientProfileInitialize);
  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0u;
  if (Instance)
  {
    *(Instance + 24) = CFRetain(a2);
    EAPOLClientProfileSetUserDefinedName(Instance, v16);
    EAPOLClientProfileSetAuthenticationProperties(Instance, Value);
    if (v9)
    {
      EAPOLClientProfileSetWLANSSIDAndSecurityType(Instance, v9, v7);
    }

    else if (v10)
    {
      EAPOLClientProfileSetWLANDomain(Instance, v10);
    }

    if (v18)
    {
      *(Instance + 72) = CFDictionaryCreateMutableCopy(0, 0, v18);
    }
  }

  return Instance;
}

uint64_t __EAPOLClientProfileInitialize()
{
  result = _CFRuntimeRegisterClass();
  __kEAPOLClientProfileTypeID = result;
  return result;
}

void __EAPOLClientProfileDeallocate(const void **a1)
{
  my_CFRelease(a1 + 3);
  my_CFRelease(a1 + 4);
  my_CFRelease(a1 + 5);
  my_CFRelease(a1 + 6);
  my_CFRelease(a1 + 7);

  my_CFRelease(a1 + 9);
}

uint64_t __EAPOLClientProfileEqual(CFTypeRef *a1, CFTypeRef *a2)
{
  result = CFEqual(a1[3], a2[3]);
  if (result)
  {
    result = my_CFEqual(a1[4], a2[4]);
    if (result)
    {
      result = my_CFEqual(a1[5], a2[5]);
      if (result)
      {
        result = my_CFEqual(a1[6], a2[6]);
        if (result)
        {
          result = my_CFEqual(a1[7], a2[7]);
          if (result)
          {
            return my_CFEqual(a1[9], a2[9]) != 0;
          }
        }
      }
    }
  }

  return result;
}

__CFString *__EAPOLClientProfileCopyDebugDesc(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<EAPOLClientProfile %p [%p]> {", a1, v2);
  CFStringAppendFormat(Mutable, 0, @"ProfileID = %@", a1[3]);
  if (a1[5])
  {
    CFStringAppendFormat(Mutable, 0, @" Name = '%@'", a1[5]);
  }

  v4 = a1[6];
  if (v4)
  {
    v5 = my_CFStringCreateWithData(v4);
    CFStringAppendFormat(Mutable, 0, @", WLAN SSID %@ [%@]", v5, a1[7]);
    CFRelease(v5);
  }

  if (a1[4])
  {
    CFStringAppendFormat(Mutable, 0, @", auth_props = %@", a1[4]);
  }

  v6 = a1[9];
  if (v6 && CFDictionaryGetCount(v6))
  {
    CFStringAppendFormat(Mutable, 0, @", info = %@", a1[9]);
  }

  CFStringAppendFormat(Mutable, 0, @"}");
  return Mutable;
}

uint64_t EAPOLClientConfigurationCreateInternal(const __CFAllocator *a1, const AuthorizationOpaqueRef *a2, int a3)
{
  v40 = *MEMORY[0x277D85DE8];
  pthread_once(&__EAPOLClientConfigurationRegisterClass_initialized, __EAPOLClientConfigurationInitialize);
  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 96) = 0;
  v37 = Instance;
  if (Instance)
  {
    if (a3 == 1)
    {
      v7 = SCPreferencesCreateWithAuthorization(a1, @"EAPOLClientConfiguration", @"com.apple.network.eapolclient.configuration.plist", a2);
    }

    else
    {
      v7 = SCPreferencesCreate(a1, @"EAPOLClientConfiguration", @"com.apple.network.eapolclient.configuration.plist");
    }

    *(Instance + 24) = v7;
    if (v7)
    {
      v8 = MEMORY[0x277CBF138];
      v9 = MEMORY[0x277CBF150];
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v11 = CFDictionaryCreateMutable(0, 0, v8, v9);
      v12 = CFDictionaryCreateMutable(0, 0, v8, v9);
      Value = SCPreferencesGetValue(*(Instance + 24), @"Profiles");
      TypeID = CFDictionaryGetTypeID();
      if (Value)
      {
        if (CFGetTypeID(Value) == TypeID)
        {
          Count = CFDictionaryGetCount(Value);
          v16 = Count;
          if (Count)
          {
            theDict = v12;
            v36 = malloc_type_malloc(16 * Count, 0xC0040B8AA526DuLL);
            CFDictionaryGetKeysAndValues(Value, v36, &v36[v16]);
            if (v16 >= 1)
            {
              v17 = v16;
              v18 = v16 & 0x7FFFFFFF;
              v19 = v36;
              do
              {
                v20 = v19[v17];
                v21 = *v19;
                v22 = CFDictionaryGetTypeID();
                if (v20 && CFGetTypeID(v20) == v22)
                {
                  v23 = EAPOLClientProfileCreateWithDictAndProfileID(v20, v21);
                  if (v23)
                  {
                    v24 = v23;
                    WLANSSIDAndSecurityType = EAPOLClientProfileGetWLANSSIDAndSecurityType(v23, 0);
                    if (WLANSSIDAndSecurityType)
                    {
                      v26 = WLANSSIDAndSecurityType;
                      if (CFDictionaryGetValue(v11, WLANSSIDAndSecurityType))
                      {
                        v34 = my_CFStringCreateWithData(v26);
                        SCLog();
                        CFRelease(v34);
LABEL_25:
                        CFRelease(v24);
                        goto LABEL_26;
                      }

                      v28 = v11;
                      goto LABEL_23;
                    }

                    WLANDomain = EAPOLClientProfileGetWLANDomain(v24);
                    if (WLANDomain)
                    {
                      v26 = WLANDomain;
                      if (CFDictionaryGetValue(Mutable, WLANDomain))
                      {
                        SCLog();
                        goto LABEL_25;
                      }

                      v28 = theDict;
LABEL_23:
                      CFDictionarySetValue(v28, v26, v21);
                    }

                    CFDictionarySetValue(Mutable, v21, v24);
                    EAPOLClientProfileSetConfiguration(v24, Instance);
                    goto LABEL_25;
                  }
                }

                else
                {
                  SCLog();
                }

LABEL_26:
                ++v19;
                --v18;
              }

              while (v18);
            }

            free(v36);
            v12 = theDict;
          }
        }
      }

      *(Instance + 48) = Mutable;
      *(Instance + 56) = v11;
      *(Instance + 64) = v12;
      *(Instance + 72) = copy_def_auth_props(*(Instance + 24));
    }

    else
    {
      LogHandle = EAPLogGetLogHandle();
      v30 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(LogHandle, v30))
      {
        v31 = SCError();
        *buf = 136315138;
        v39 = SCErrorString(v31);
        _os_log_impl(&dword_249EFB000, LogHandle, v30, "failed to create preferences %s", buf, 0xCu);
      }

      my_CFRelease(&v37);
      Instance = 0;
    }
  }

  v32 = *MEMORY[0x277D85DE8];
  return Instance;
}

uint64_t EAPOLClientConfigurationSave(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  Count = CFDictionaryGetCount(*(a1 + 48));
  Mutable = CFDictionaryCreateMutable(0, Count, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *buf = Mutable;
  if (Count)
  {
    v4 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
    CFDictionaryGetKeysAndValues(*(a1 + 48), 0, v4);
    if (Count >= 1)
    {
      v5 = Count & 0x7FFFFFFF;
      v6 = v4;
      while (1)
      {
        v7 = *v6;
        key = 0;
        DictAndProfileID = EAPOLClientProfileCreateDictAndProfileID(v7, &key);
        if (!DictAndProfileID)
        {
          break;
        }

        v9 = DictAndProfileID;
        CFDictionarySetValue(Mutable, key, DictAndProfileID);
        CFRelease(v9);
        CFRelease(key);
        ++v6;
        if (!--v5)
        {
          goto LABEL_8;
        }
      }

      my_CFRelease(buf);
      Mutable = *buf;
    }

LABEL_8:
    free(v4);
  }

  key = Mutable;
  if (!Mutable)
  {
    LogHandle = EAPLogGetLogHandle();
    v20 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v20))
    {
      *buf = 0;
      v18 = "EAPOLClientConfigurationSave export_profiles() failed";
      v21 = LogHandle;
      v22 = v20;
      v23 = 2;
LABEL_28:
      _os_log_impl(&dword_249EFB000, v21, v22, v18, buf, v23);
      goto LABEL_29;
    }

    goto LABEL_29;
  }

  Value = SCPreferencesGetValue(*(a1 + 24), @"Profiles");
  if (*(a1 + 80))
  {
    goto LABEL_14;
  }

  if (my_CFEqual(Value, key) && !*(a1 + 96))
  {
    v26 = 0;
    v29 = 1;
    goto LABEL_36;
  }

  if (*(a1 + 80))
  {
LABEL_14:
    if (!SCPreferencesSetValue(*(a1 + 24), @"DefaultAuthenticationProperties", *(a1 + 72)))
    {
      v14 = EAPLogGetLogHandle();
      v15 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v14, v15))
      {
        goto LABEL_29;
      }

LABEL_26:
      v24 = SCError();
      v25 = SCErrorString(v24);
      *buf = 136315138;
      *&buf[4] = v25;
      v18 = "EAPOLClientConfigurationSave SCPreferencesSetValue failed %s";
      goto LABEL_27;
    }
  }

  if (!SCPreferencesSetValue(*(a1 + 24), @"Profiles", key))
  {
    v14 = EAPLogGetLogHandle();
    v15 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  if (*(a1 + 96) == 1)
  {
    v11 = *(a1 + 88);
    v12 = *(a1 + 24);
    if (v11)
    {
      v13 = SCPreferencesSetValue(v12, @"SystemModeEthernetProfileID", v11);
      my_CFRelease((a1 + 88));
      if (!v13)
      {
        v14 = EAPLogGetLogHandle();
        v15 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v14, v15))
        {
LABEL_20:
          v16 = SCError();
          v17 = SCErrorString(v16);
          *buf = 136315138;
          *&buf[4] = v17;
          v18 = "EAPOLClientConfigurationSave SCPreferencesRemoveValue failed %s";
LABEL_27:
          v21 = v14;
          v22 = v15;
          v23 = 12;
          goto LABEL_28;
        }

LABEL_29:
        my_CFRelease(&key);
LABEL_30:
        v26 = 0;
        goto LABEL_31;
      }
    }

    else if (!SCPreferencesRemoveValue(v12, @"SystemModeEthernetProfileID"))
    {
      v14 = EAPLogGetLogHandle();
      v15 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v14, v15))
      {
        goto LABEL_29;
      }

      goto LABEL_20;
    }
  }

  v30 = SCPreferencesCommitChanges(*(a1 + 24));
  if (!v30)
  {
    v31 = EAPLogGetLogHandle();
    v32 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = SCError();
      v34 = SCErrorString(v33);
      *buf = 136315138;
      *&buf[4] = v34;
      _os_log_impl(&dword_249EFB000, v31, v32, "EAPOLClientConfigurationSave SCPreferencesCommitChanges failed %s", buf, 0xCu);
    }

    goto LABEL_30;
  }

  v26 = v30;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  SCPreferencesApplyChanges(*(a1 + 24));
  v29 = 0;
LABEL_36:
  my_CFRelease((a1 + 32));
  my_CFRelease(&key);
  if ((v29 & 1) == 0)
  {
    notify_post(kEAPOLClientConfigurationChangedNotifyKey);
  }

LABEL_31:
  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

CFArrayRef EAPOLClientConfigurationCopyProfiles(CFDictionaryRef *a1)
{
  v2 = CFGetAllocator(a1);
  Count = CFDictionaryGetCount(a1[6]);
  if (!Count)
  {
    return 0;
  }

  v4 = Count;
  v5 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
  CFDictionaryGetKeysAndValues(a1[6], 0, v5);
  v6 = CFArrayCreate(v2, v5, v4, MEMORY[0x277CBF128]);
  free(v5);
  return v6;
}

const void *EAPOLClientConfigurationGetProfileWithWLANSSID(uint64_t a1, const void *a2)
{
  result = CFDictionaryGetValue(*(a1 + 56), a2);
  if (result)
  {
    v4 = result;
    v5 = *(a1 + 48);

    return CFDictionaryGetValue(v5, v4);
  }

  return result;
}

const void *EAPOLClientConfigurationGetProfileWithWLANDomain(uint64_t a1, const void *a2)
{
  result = CFDictionaryGetValue(*(a1 + 64), a2);
  if (result)
  {
    v4 = result;
    v5 = *(a1 + 48);

    return CFDictionaryGetValue(v5, v4);
  }

  return result;
}

uint64_t EAPOLClientConfigurationRemoveProfile(uint64_t a1, const void *a2)
{
  ID = EAPOLClientProfileGetID(a2);
  if (CFDictionaryGetValue(*(a1 + 48), ID) != a2)
  {
    return 0;
  }

  WLANSSIDAndSecurityType = EAPOLClientProfileGetWLANSSIDAndSecurityType(a2, 0);
  if (WLANSSIDAndSecurityType)
  {
    CFDictionaryRemoveValue(*(a1 + 56), WLANSSIDAndSecurityType);
  }

  CFDictionaryRemoveValue(*(a1 + 48), ID);
  Value = SCPreferencesGetValue(*(a1 + 24), @"SystemModeEthernetProfileID");
  TypeID = CFStringGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    return 1;
  }

  v9 = my_CFEqual(Value, ID);
  result = 1;
  if (v9)
  {
    v11 = *(a1 + 88);
    v10 = a1 + 88;
    *(v10 + 8) = 1;
    if (v11)
    {
      my_CFRelease(v10);
      return 1;
    }
  }

  return result;
}

uint64_t EAPOLClientConfigurationAddProfile(uint64_t a1, void *a2)
{
  ID = EAPOLClientProfileGetID(a2);
  if (a2[2])
  {
    return 0;
  }

  v5 = ID;
  if (CFDictionaryGetValue(*(a1 + 48), ID))
  {
    return 0;
  }

  WLANSSIDAndSecurityType = EAPOLClientProfileGetWLANSSIDAndSecurityType(a2, 0);
  if (!WLANSSIDAndSecurityType)
  {
    WLANDomain = EAPOLClientProfileGetWLANDomain(a2);
    if (!WLANDomain)
    {
      v9 = *(a1 + 48);
      v11 = v5;
      v12 = a2;
      goto LABEL_12;
    }

    v8 = WLANDomain;
    if (!EAPOLClientConfigurationGetProfileWithWLANDomain(a1, WLANDomain))
    {
      CFDictionarySetValue(*(a1 + 48), v5, a2);
      v9 = *(a1 + 64);
      goto LABEL_10;
    }

    return 0;
  }

  v8 = WLANSSIDAndSecurityType;
  if (EAPOLClientConfigurationGetProfileWithWLANSSID(a1, WLANSSIDAndSecurityType))
  {
    return 0;
  }

  CFDictionarySetValue(*(a1 + 48), v5, a2);
  v9 = *(a1 + 56);
LABEL_10:
  v11 = v8;
  v12 = v5;
LABEL_12:
  CFDictionarySetValue(v9, v11, v12);
  EAPOLClientProfileSetConfiguration(a2, a1);
  return 1;
}

CFArrayRef EAPOLClientConfigurationCopyMatchingProfiles(CFDictionaryRef *a1, uint64_t a2)
{
  values[2] = *MEMORY[0x277D85DE8];
  ID = EAPOLClientProfileGetID(a2);
  values[0] = 0;
  values[1] = 0;
  Value = CFDictionaryGetValue(a1[6], ID);
  v6 = Value;
  if (Value)
  {
    values[0] = Value;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  WLANSSIDAndSecurityType = EAPOLClientProfileGetWLANSSIDAndSecurityType(a2, 0);
  if (WLANSSIDAndSecurityType)
  {
    ProfileWithWLANSSID = EAPOLClientConfigurationGetProfileWithWLANSSID(a1, WLANSSIDAndSecurityType);
    if (!ProfileWithWLANSSID)
    {
      goto LABEL_11;
    }
  }

  else
  {
    WLANDomain = EAPOLClientProfileGetWLANDomain(a2);
    if (!WLANDomain)
    {
      goto LABEL_11;
    }

    ProfileWithWLANSSID = EAPOLClientConfigurationGetProfileWithWLANDomain(a1, WLANDomain);
    if (!ProfileWithWLANSSID)
    {
      goto LABEL_11;
    }
  }

  if (v6 != ProfileWithWLANSSID)
  {
    values[v7] = ProfileWithWLANSSID;
    v11 = (v7 + 1);
    goto LABEL_13;
  }

LABEL_11:
  if (!v6)
  {
    result = 0;
    goto LABEL_15;
  }

  v11 = 1;
LABEL_13:
  v12 = CFGetAllocator(a1);
  result = CFArrayCreate(v12, values, v11, MEMORY[0x277CBF128]);
LABEL_15:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

const void *EAPOLClientConfigurationGetSystemEthernetProfile(uint64_t a1)
{
  Value = SCPreferencesGetValue(*(a1 + 24), @"SystemModeEthernetProfileID");
  TypeID = CFStringGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    return 0;
  }

  v4 = *(a1 + 48);

  return CFDictionaryGetValue(v4, Value);
}

uint64_t EAPOLClientConfigurationSetSystemEthernetProfile(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 88);
  v4 = (a1 + 88);
  if (v5)
  {
    my_CFRelease(v4);
  }

  *(a1 + 96) = 0;
  Value = SCPreferencesGetValue(*(a1 + 24), @"SystemModeEthernetProfileID");
  if (!a2)
  {
    TypeID = CFStringGetTypeID();
    if (!Value)
    {
      return Value;
    }

    if (CFGetTypeID(Value) == TypeID)
    {
      Value = 1;
      *(a1 + 96) = 1;
      return Value;
    }

    return 0;
  }

  ID = EAPOLClientProfileGetID(a2);
  if (!ID)
  {
    return 0;
  }

  v8 = ID;
  v9 = CFStringGetTypeID();
  if (Value)
  {
    if (CFGetTypeID(Value) == v9 && my_CFEqual(Value, v8))
    {
      return 0;
    }
  }

  Value = 1;
  *(a1 + 96) = 1;
  *(a1 + 88) = v8;
  CFRetain(v8);
  return Value;
}

CFIndex EAPOLClientConfigurationSetDefaultAuthenticationProperties(uint64_t a1, const __CFDictionary *a2)
{
  my_CFRelease((a1 + 72));
  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"AcceptEAPTypes");
    result = accept_types_valid(Value);
    if (!result)
    {
      return result;
    }

    v6 = CFRetain(a2);
  }

  else
  {
    v6 = copy_def_auth_props(*(a1 + 24));
  }

  *(a1 + 72) = v6;
  result = 1;
  *(a1 + 80) = 1;
  return result;
}

CFMutableDictionaryRef copy_def_auth_props(const __SCPreferences *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  valuePtr = xmmword_249F2EDF0;
  Value = SCPreferencesGetValue(a1, @"DefaultAuthenticationProperties");
  if (Value)
  {
    v2 = Value;
    v3 = CFDictionaryGetValue(Value, @"AcceptEAPTypes");
    if (accept_types_valid(v3))
    {
      CFRetain(v2);
      goto LABEL_9;
    }

    if (v3)
    {
      SCLog();
    }
  }

  v4 = 4;
  Mutable = CFArrayCreateMutable(0, 4, MEMORY[0x277CBF128]);
  p_valuePtr = &valuePtr;
  do
  {
    v7 = CFNumberCreate(0, kCFNumberIntType, p_valuePtr);
    CFArrayAppendValue(Mutable, v7);
    CFRelease(v7);
    p_valuePtr = (p_valuePtr + 4);
    --v4;
  }

  while (v4);
  v2 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(v2, @"AcceptEAPTypes", Mutable);
  v8 = *MEMORY[0x277CBED28];
  CFDictionarySetValue(v2, @"EAPFASTUsePAC", *MEMORY[0x277CBED28]);
  CFDictionarySetValue(v2, @"EAPFASTProvisionPAC", v8);
  CFRelease(Mutable);
LABEL_9:
  v9 = *MEMORY[0x277D85DE8];
  return v2;
}

void EAPOLClientConfigurationSetProfileForSSID(uint64_t a1, void *key, uint64_t a3)
{
  v4 = *(a1 + 56);
  if (a3)
  {
    ID = EAPOLClientProfileGetID(a3);

    CFDictionarySetValue(v4, key, ID);
  }

  else
  {
    v6 = *(a1 + 56);

    CFDictionaryRemoveValue(v6, key);
  }
}

void EAPOLClientConfigurationSetProfileForWLANDomain(uint64_t a1, void *key, uint64_t a3)
{
  v4 = *(a1 + 64);
  if (a3)
  {
    ID = EAPOLClientProfileGetID(a3);

    CFDictionarySetValue(v4, key, ID);
  }

  else
  {
    v6 = *(a1 + 64);

    CFDictionaryRemoveValue(v6, key);
  }
}

uint64_t __EAPOLClientConfigurationInitialize()
{
  result = _CFRuntimeRegisterClass();
  __kEAPOLClientConfigurationTypeID = result;
  return result;
}

void __EAPOLClientConfigurationDeallocate(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    free(v2);
    *(a1 + 16) = 0;
  }

  my_CFRelease((a1 + 24));
  my_CFRelease((a1 + 32));
  my_CFRelease((a1 + 40));
  my_CFRelease((a1 + 48));
  my_CFRelease((a1 + 56));
  my_CFRelease((a1 + 64));

  my_CFRelease((a1 + 72));
}

__CFString *__EAPOLClientConfigurationCopyDebugDesc(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = Mutable;
  if (a1[2])
  {
    CFStringAppendFormat(Mutable, 0, @"<EAPOLClientConfiguration %p [%p] auth> {", a1, v2);
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"<EAPOLClientConfiguration %p [%p]> {", a1, v2);
  }

  CFStringAppendFormat(v4, 0, @"profiles = %@", a1[6]);
  CFStringAppendFormat(v4, 0, @"ssids = %@", a1[7]);
  CFStringAppend(v4, @"}");
  return v4;
}

CCCryptorRef sim_simulator_gsm_milenage_algo(int8x16_t *a1, void *key, int8x16_t *a3, _DWORD *a4, int8x8_t *a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v20 = veorq_s8(*a3, *a1);
  sim_simulator_aes128_encrypt(key, &v20, &v21);
  v20 = veorq_s8(*a1, v21);
  v20.i8[15] ^= 1u;
  sim_simulator_aes128_encrypt(key, &v20, &v21);
  v10.i32[1] = v21.i32[1];
  v11 = veorq_s8(v21, *a1);
  v21 = v11;
  v11.i32[0] = v11.i32[2];
  v10.i32[0] = v21.i32[3];
  v18 = vmovl_u8(v10).u64[0];
  v19 = vmovl_u8(*v11.i8).u64[0];
  v20 = veorq_s8(*a3, *a1);
  sim_simulator_aes128_encrypt(key, &v20, &v21);
  for (i = 0; i != 16; ++i)
  {
    *(&v20 | (i + 12) & 0xFLL) = a1->i8[i] ^ v21.i8[i];
  }

  v20.i8[15] ^= 2u;
  sim_simulator_aes128_encrypt(key, &v20, &v21);
  v21 = veorq_s8(v21, *a1);
  v13 = v21;
  v20 = veorq_s8(*a3, *a1);
  sim_simulator_aes128_encrypt(key, &v20, &v21);
  for (j = 0; j != 16; ++j)
  {
    v20.i8[j ^ 8] = a1->i8[j] ^ v21.i8[j];
  }

  v20.i8[15] ^= 4u;
  result = sim_simulator_aes128_encrypt(key, &v20, &v21);
  v21 = veorq_s8(v21, *a1);
  *a5 = veor_s8(veor_s8(veor_s8(v13.u64[1], *v13.i8), *v21.i8), v21.u64[1]);
  v16 = veor_s8(v18, v19);
  *a4 = vuzp1_s8(v16, v16).u32[0];
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

CCCryptorRef sim_simulator_aes128_encrypt(void *key, const void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v18 = 0;
  cryptorRef = 0;
  v5 = CCCryptorCreate(0, 0, 2u, key, 0x10uLL, 0, &cryptorRef);
  if (v5)
  {
    v6 = v5;
    LogHandle = EAPLogGetLogHandle();
    v8 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(LogHandle, v8))
    {
      goto LABEL_8;
    }

    *buf = 67109120;
    v21 = v6;
    v9 = "CCCryptoCreate failed with %d";
    v10 = LogHandle;
    v11 = v8;
    goto LABEL_7;
  }

  v12 = CCCryptorUpdate(cryptorRef, a2, 0x10uLL, a3, 0x10uLL, &v18);
  if (v12)
  {
    v13 = v12;
    v14 = EAPLogGetLogHandle();
    v15 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v14, v15))
    {
      *buf = 67109120;
      v21 = v13;
      v9 = "CCCryptorUpdate failed with %d";
      v10 = v14;
      v11 = v15;
LABEL_7:
      _os_log_impl(&dword_249EFB000, v10, v11, v9, buf, 8u);
    }
  }

LABEL_8:
  result = cryptorRef;
  if (cryptorRef)
  {
    result = CCCryptorRelease(cryptorRef);
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t EAPOLClientEstablishSession(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  *special_port = 0;
  v2 = *MEMORY[0x277D85F18];
  v3 = bootstrap_look_up2();
  if (v3)
  {
    v4 = v3;
    LogHandle = EAPLogGetLogHandle();
    v6 = _SC_syslog_os_log_mapping();
    result = os_log_type_enabled(LogHandle, v6);
    if (result)
    {
      LODWORD(v25[0]) = 136315138;
      *(v25 + 4) = mach_error_string(v4);
      v8 = "eapolcontroller_server_port(): %s";
      v9 = v25;
      v10 = LogHandle;
      v11 = v6;
      v12 = 12;
LABEL_7:
      _os_log_impl(&dword_249EFB000, v10, v11, v8, v9, v12);
      result = 0;
    }
  }

  else
  {
    memset(v25, 0, sizeof(v25));
    __strlcpy_chk();
    result = eapolcontroller_client_get_session(0, v25, special_port, &special_port[1]);
    if (result)
    {
      v13 = result;
      v14 = EAPLogGetLogHandle();
      v15 = _SC_syslog_os_log_mapping();
      result = os_log_type_enabled(v14, v15);
      if (result)
      {
        v16 = mach_error_string(v13);
        *buf = 136315394;
        v22 = a1;
        v23 = 2080;
        v24 = v16;
        v8 = "eapolcontroller_client_get_session(%s): %s";
        v9 = buf;
        v10 = v14;
        v11 = v15;
        v12 = 22;
        goto LABEL_7;
      }
    }

    else if (special_port[0] && special_port[1])
    {
      task_set_special_port(*MEMORY[0x277D85F48], 4, special_port[0]);
      if (audit_session_join(special_port[1]))
      {
        result = 1;
        goto LABEL_8;
      }

      v18 = EAPLogGetLogHandle();
      v19 = _SC_syslog_os_log_mapping();
      result = os_log_type_enabled(v18, v19);
      if (!result)
      {
        goto LABEL_8;
      }

      *buf = 0;
      v8 = "audit_session_join returned AU_DEFAULTSID";
      v9 = buf;
      v10 = v18;
      v11 = v19;
      v12 = 2;
      goto LABEL_7;
    }
  }

LABEL_8:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t eapmschapv2_server_key(uint64_t *a1, _DWORD *a2)
{
  v2 = *a1;
  *a2 = 0;
  if (!*(v2 + 104))
  {
    return 0;
  }

  *a2 = 32;
  return v2 + 72;
}

uint64_t eapmschapv2_msk_copy_bytes(uint64_t *a1, _OWORD *a2, int a3)
{
  if (a3 < 64)
  {
    return 0;
  }

  v3 = *a1;
  if (!*(*a1 + 104))
  {
    return 0;
  }

  *a2 = *(v3 + 88);
  a2[1] = *(v3 + 72);
  a2[2] = 0u;
  a2[3] = 0u;
  return 64;
}

__CFArray *eapmschapv2_require_props(uint64_t *a1)
{
  v1 = *a1;
  if ((*(*a1 + 8) & 1) == 0 && *(v1 + 9) != 1)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v3 = Mutable;
  if (*(v1 + 8) == 1)
  {
    CFArrayAppendValue(Mutable, @"UserPassword");
  }

  if (*(v1 + 9) == 1)
  {
    CFArrayAppendValue(v3, @"NewPassword");
  }

  return v3;
}

__CFString *eapmschapv2_copy_packet_description(unsigned __int8 *a1, char *a2)
{
  Length = EAPPacketGetLength(a1);
  if (*a1 - 1 > 1)
  {
    Mutable = 0;
    goto LABEL_6;
  }

  v5 = Length;
  Mutable = CFStringCreateMutable(0, 0);
  if (v5 <= 5)
  {
    CFStringAppendFormat(Mutable, 0, @"invalid packet: length %d < min length %ld\n", v5, 9);
    goto LABEL_6;
  }

  v9 = EAPCodeStr(*a1);
  if (a1[5] - 1 > 6)
  {
    v10 = "<unknown>";
  }

  else
  {
    v10 = off_278FBDD78[(a1[5] - 1)];
  }

  CFStringAppendFormat(Mutable, 0, @"EAP-MSCHAPv2 %s: Identifier %d Length %d OpCode %s ", v9, a1[1], v5, v10);
  v11 = a1[5];
  if (v11 <= 2)
  {
    if (v11 != 1)
    {
      if (v11 != 2)
      {
        goto LABEL_30;
      }

      if (v5 > 0x3A)
      {
        CFStringAppendFormat(Mutable, 0, @"MS-CHAPv2-ID %d MS-Length %d Value-Size %d\n", a1[6], bswap32(*(a1 + 7)) >> 16, a1[9]);
        if (a1[9] != 49)
        {
          CFStringAppendFormat(Mutable, 0, @"Error: Value-Size should be %d\n", 49);
        }

        if (v5 - 5 == bswap32(*(a1 + 7)) >> 16)
        {
          CFStringAppendFormat(Mutable, 0, @"Response:\n");
          CFStringAppendFormat(Mutable, 0, @"Peer Challenge: ");
          print_bytes_cfstr(Mutable, (a1 + 10), 16);
          CFStringAppendFormat(Mutable, 0, @"\nReserved:       ");
          print_bytes_cfstr(Mutable, (a1 + 26), 8);
          CFStringAppendFormat(Mutable, 0, @"\nNT Response:    ");
          print_bytes_cfstr(Mutable, (a1 + 34), 24);
          CFStringAppendFormat(Mutable, 0, @"\nFlags:          ");
          v7 = 1;
          print_bytes_cfstr(Mutable, (a1 + 58), 1);
          if (v5 != 59)
          {
            CFStringAppendFormat(Mutable, 0, @"\nName:           %.*s\n", (v5 - 59), a1 + 59);
          }

          goto LABEL_60;
        }

        CFStringAppendFormat(Mutable, 0, @"Error: MS-Length should be %d\n", v5 - 5, v19);
      }

      else
      {
        CFStringAppendFormat(Mutable, 0, @"Error: length %d < %d\n", v5, 59);
      }

      v7 = 0;
LABEL_60:
      if (*a1 != 1)
      {
        goto LABEL_7;
      }

      CFStringAppendFormat(Mutable, 0, @"EAP Request contains MSCHAPv2 Response (invalid)\n", v16, v19);
      goto LABEL_6;
    }

    if (v5 > 0x19)
    {
      CFStringAppendFormat(Mutable, 0, @"MS-CHAPv2-ID %d MS-Length %d Value-Size %d\n", a1[6], bswap32(*(a1 + 7)) >> 16, a1[9]);
      if (a1[9] != 16)
      {
        CFStringAppendFormat(Mutable, 0, @"Error: Value-Size should be %d\n", 16);
      }

      if (v5 - 5 == bswap32(*(a1 + 7)) >> 16)
      {
        CFStringAppendFormat(Mutable, 0, @"Challenge: ");
        print_bytes_cfstr(Mutable, (a1 + 10), 16);
        CFStringAppendFormat(Mutable, 0, @"\n");
        if (v5 != 26)
        {
          CFStringAppendFormat(Mutable, 0, @"Name: %.*s\n", (v5 - 26), a1 + 26);
        }

        v7 = 1;
        goto LABEL_56;
      }

      CFStringAppendFormat(Mutable, 0, @"Error: MS-Length should be %d\n", v5 - 5, v20);
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"Error: length %d < %d\n", v5, 26);
    }

    v7 = 0;
LABEL_56:
    if (*a1 != 2)
    {
      goto LABEL_7;
    }

    CFStringAppendFormat(Mutable, 0, @"EAP Response contains MSCHAPv2 Challenge (invalid)\n", v17, v20);
    goto LABEL_6;
  }

  switch(v11)
  {
    case 3u:
      if (*a1 == 1)
      {
        if (v5 <= 0x32)
        {
          v12 = 51;
          goto LABEL_27;
        }

        CFStringAppendFormat(Mutable, 0, @"MS-CHAPv2-ID %d MS-Length %d\n", a1[6], bswap32(*(a1 + 7)) >> 16);
        v13 = v5 - 5;
        if (v13 != bswap32(*(a1 + 7)) >> 16)
        {
          goto LABEL_53;
        }

        CFStringAppendFormat(Mutable, 0, @"Auth Response: %.*s\n", 42, a1 + 9);
        if ((v5 - 53) > 0xFFFFFFFD)
        {
          goto LABEL_52;
        }

        v14 = (v5 - 52);
        v15 = a1 + 52;
LABEL_51:
        CFStringAppendFormat(Mutable, 0, @"Message:       %.*s\n", v14, v15);
        goto LABEL_52;
      }

      break;
    case 4u:
      if (*a1 == 1)
      {
        if (v5 <= 8)
        {
          v12 = 9;
          goto LABEL_27;
        }

        CFStringAppendFormat(Mutable, 0, @"MS-CHAPv2-ID %d MS-Length %d\n", a1[6], bswap32(*(a1 + 7)) >> 16);
        v13 = v5 - 5;
        if (v13 != bswap32(*(a1 + 7)) >> 16)
        {
          goto LABEL_53;
        }

        v14 = (v5 - 9);
        if (v5 == 9)
        {
          goto LABEL_52;
        }

        v15 = a1 + 9;
        goto LABEL_51;
      }

      break;
    case 7u:
      if (v5 <= 0x24E)
      {
        v12 = 591;
LABEL_27:
        CFStringAppendFormat(Mutable, 0, @"Error: length %d < %d\n", v5, v12);
        break;
      }

      CFStringAppendFormat(Mutable, 0, @"MS-CHAPv2-ID %d MS-Length %d\n", a1[6], bswap32(*(a1 + 7)) >> 16);
      v13 = v5 - 5;
      if (v13 == bswap32(*(a1 + 7)) >> 16)
      {
        CFStringAppendFormat(Mutable, 0, @"Encrypted Password:\n");
        print_data_cfstr(Mutable, (a1 + 9), 516);
        CFStringAppendFormat(Mutable, 0, @"Encrypted Hash: ");
        print_bytes_cfstr(Mutable, (a1 + 525), 16);
        CFStringAppendFormat(Mutable, 0, @"\n");
        CFStringAppendFormat(Mutable, 0, @"Peer Challenge: ");
        print_bytes_cfstr(Mutable, (a1 + 541), 16);
        CFStringAppendFormat(Mutable, 0, @"\n");
        CFStringAppendFormat(Mutable, 0, @"Reserved: ");
        print_bytes_cfstr(Mutable, (a1 + 557), 8);
        CFStringAppendFormat(Mutable, 0, @"\n");
        CFStringAppendFormat(Mutable, 0, @"NT Response: ");
        print_bytes_cfstr(Mutable, (a1 + 565), 24);
        CFStringAppendFormat(Mutable, 0, @"\n");
        CFStringAppendFormat(Mutable, 0, @"NT Flags: ");
        print_bytes_cfstr(Mutable, (a1 + 589), 2);
        CFStringAppendFormat(Mutable, 0, @"\n", v18, v21);
LABEL_52:
        v7 = 1;
        goto LABEL_7;
      }

LABEL_53:
      CFStringAppendFormat(Mutable, 0, @"Error: MS-Length should be %d\n", v13, v21);
      break;
    default:
LABEL_30:
      CFStringAppendFormat(Mutable, 0, @"Unknown code %d\n", a1[5]);
      if (v5 != 6)
      {
        print_data_cfstr(Mutable, (a1 + 6), v5 - 6);
      }

      break;
  }

LABEL_6:
  v7 = 0;
LABEL_7:
  *a2 = v7;
  return Mutable;
}

char *EAPMSCHAPv2ResponsePacketCreate(uint64_t *a1, char a2, char a3, _DWORD *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  Value = CFDictionaryGetValue(a1[10], @"EAPMSCHAPv2ClientChallenge");
  v9 = *a1;
  v10 = *(a1 + 12) + 54;
  v11 = EAPPacketCreate((*a1 + 105), 1024, 2, a2, 26, 0, v10, 0);
  if (!Value)
  {
    MSChapFillWithRandom((v9 + 16), 0x10u);
    goto LABEL_5;
  }

  if (CFDataGetLength(Value) == 16)
  {
    *(v9 + 16) = *CFDataGetBytePtr(Value);
LABEL_5:
    MSChap2((v9 + 56), (v9 + 16), a1[5], a1[8], *(a1 + 18), v9 + 32);
    v11[5] = 2;
    v11[6] = a3;
    *(v11 + 7) = bswap32(v10) >> 16;
    v11[9] = 49;
    if (Value)
    {
      *(v11 + 18) = 0;
      *(v11 + 10) = 0;
    }

    else
    {
      *(v11 + 10) = *(v9 + 16);
    }

    *(v11 + 26) = 0;
    v14 = *(v9 + 32);
    *(v11 + 50) = *(v9 + 48);
    *(v11 + 34) = v14;
    v11[58] = 0;
    memcpy(v11 + 59, a1[5], *(a1 + 12));
    goto LABEL_14;
  }

  LogHandle = EAPLogGetLogHandle();
  v13 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(LogHandle, v13))
  {
    v17 = 134218240;
    Length = CFDataGetLength(Value);
    v19 = 2048;
    v20 = 16;
    _os_log_impl(&dword_249EFB000, LogHandle, v13, "EAPMSCHAPv2ResponsePacketCreate: internal error %ld != %ld", &v17, 0x16u);
  }

  if (a4)
  {
    *a4 = 8;
  }

  v11 = 0;
  *(v9 + 4) = 2;
LABEL_14:
  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

char *EAPMSCHAPv2ChangePasswordPacketCreate(unsigned int *a1, char a2, char a3, UInt8 *a4, unsigned int a5)
{
  v9 = *a1;
  v10 = EAPPacketCreate((*a1 + 105), 1024, 2, a2, 26, 0, 586, 0);
  MSChapFillWithRandom((v9 + 16), 0x10u);
  MSChap2((v9 + 56), (v9 + 16), *(a1 + 5), a4, a5, v9 + 32);
  v10[5] = 7;
  v10[6] = a3;
  *(v10 + 7) = 18946;
  *(v10 + 541) = *(v9 + 16);
  *(v10 + 557) = 0;
  v11 = *(v9 + 32);
  *(v10 + 581) = *(v9 + 48);
  *(v10 + 565) = v11;
  NTPasswordBlockEncryptNewPasswordWithOldHash(a4, a5, *(a1 + 8), a1[18], v10 + 9);
  NTPasswordHashEncryptOldWithNew(a4, a5, *(a1 + 8), a1[18], (v10 + 525));
  *(v10 + 589) = 0;
  return v10;
}

uint64_t mschap2_message_int32_attr(const char *a1, size_t __len, char *__little, _DWORD *a4)
{
  v5 = __len;
  v6 = strnstr(a1, __little, __len);
  v7 = v5 <= 2 || v6 == 0;
  v8 = !v7;
  if (!v7)
  {
    *a4 = strtol(v6 + 2, 0, 10);
  }

  return v8;
}

uint64_t EAPSecIdentityListCreate(void *a1)
{
  keys[5] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CDBEC8];
  keys[0] = *MEMORY[0x277CDC5D0];
  keys[1] = v2;
  v3 = *MEMORY[0x277CDC568];
  keys[2] = *MEMORY[0x277CDC228];
  keys[3] = v3;
  keys[4] = *MEMORY[0x277CDC428];
  v8 = 0;
  values[0] = *MEMORY[0x277CBED28];
  values[1] = @"com.apple.identities";
  values[2] = *MEMORY[0x277CDC240];
  values[3] = values[0];
  values[4] = *MEMORY[0x277CDC430];
  v4 = CFDictionaryCreate(0, keys, values, 5, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = SecItemCopyMatching(v4, &v8);
  CFRelease(v4);
  if (!v5)
  {
    *a1 = v8;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t EAPSecIdentityCreateTrustChainWithPersistentCertificateRefs(const void *a1, CFArrayRef theArray, __CFArray **a3)
{
  v36 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  Count = CFArrayGetCount(theArray);
  if (Count)
  {
    v7 = Count;
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    v30 = Mutable;
    if (Mutable)
    {
      v9 = Mutable;
      CFArrayAppendValue(Mutable, a1);
      v10 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v31 = v10;
      if (v10)
      {
        v11 = v10;
        CFDictionaryAddValue(v10, *MEMORY[0x277CDC228], *MEMORY[0x277CDC230]);
        CFDictionaryAddValue(v11, *MEMORY[0x277CDC568], *MEMORY[0x277CBED28]);
        if (v7 < 1)
        {
          goto LABEL_20;
        }

        result = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
        TypeID = CFDataGetTypeID();
        if (ValueAtIndex)
        {
          v14 = TypeID;
          v15 = 0;
          key = *MEMORY[0x277CDC5F0];
          v16 = 4294967246;
          v17 = 1;
          while (CFGetTypeID(ValueAtIndex) == v14)
          {
            CFDictionarySetValue(v11, key, ValueAtIndex);
            v18 = SecItemCopyMatching(v11, &result);
            if (v18)
            {
              v16 = v18;
              LogHandle = EAPLogGetLogHandle();
              v22 = _SC_syslog_os_log_mapping();
              if (os_log_type_enabled(LogHandle, v22))
              {
                v23 = EAPSecurityErrorString(v16);
                *buf = 136315394;
                v33 = v23;
                v34 = 1024;
                v35 = v16;
                _os_log_impl(&dword_249EFB000, LogHandle, v22, "SecItemCopyMatching failed, %s (%d)", buf, 0x12u);
              }

              goto LABEL_23;
            }

            if (!isA_SecCertificate(result))
            {
              v26 = EAPLogGetLogHandle();
              v27 = _SC_syslog_os_log_mapping();
              if (os_log_type_enabled(v26, v27))
              {
                *buf = 0;
                _os_log_impl(&dword_249EFB000, v26, v27, "Certificate data with incorrect data type", buf, 2u);
              }

              goto LABEL_20;
            }

            CFArrayAppendValue(v9, result);
            my_CFRelease(&result);
            if (v7 == v17)
            {
              goto LABEL_20;
            }

            result = 0;
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v17);
            v14 = CFDataGetTypeID();
            v16 = 0;
            ++v17;
            v15 = 1;
            if (!ValueAtIndex)
            {
              break;
            }
          }
        }

        else
        {
          v15 = 0;
          v16 = 4294967246;
        }

        v19 = EAPLogGetLogHandle();
        v20 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v19, v20))
        {
          *buf = 0;
          _os_log_impl(&dword_249EFB000, v19, v20, "Persistent reference with incorrect data type.", buf, 2u);
        }

        if (v15)
        {
LABEL_20:
          v16 = 0;
LABEL_24:
          *a3 = v9;
          my_CFRelease(&v31);
          goto LABEL_25;
        }
      }

      else
      {
        v16 = 4294967188;
      }

LABEL_23:
      my_CFRelease(&v30);
      v9 = v30;
      goto LABEL_24;
    }

    v16 = 4294967188;
  }

  else
  {
    v16 = 4294967246;
  }

LABEL_25:
  v24 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t EAPSecIdentityCompareIdentityHandle(__SecIdentity *a1, const __CFData *a2, _BYTE *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  certificateRef = 0;
  v6 = 4294967246;
  if (isA_SecIdentity(a1) && a2 && a3)
  {
    *a3 = 0;
    v6 = SecIdentityCopyCertificate(a1, &certificateRef);
    if (v6)
    {
      LogHandle = EAPLogGetLogHandle();
      v8 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(LogHandle, v8))
      {
        v9 = EAPSecurityErrorString(v6);
        *buf = 136315394;
        v15 = v9;
        v16 = 1024;
        v17 = v6;
        _os_log_impl(&dword_249EFB000, LogHandle, v8, "SecIdentityCopyCertificate failed, %s (%d)", buf, 0x12u);
      }
    }

    else
    {
      BytePtr = CFDataGetBytePtr(a2);
      if (IdentityHandleMatchesCertificate(BytePtr))
      {
        *a3 = 1;
      }
    }

    my_CFRelease(&certificateRef);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

const void *isA_SecIdentity(const void *a1)
{
  TypeID = SecIdentityGetTypeID();
  if (!a1)
  {
    return 0;
  }

  if (CFGetTypeID(a1) == TypeID)
  {
    return a1;
  }

  return 0;
}

BOOL IdentityHandleMatchesCertificate(void *a1)
{
  v2 = SecCertificateCopySHA256Digest();
  if (CFDataGetLength(v2) != 32)
  {
    IdentityHandleMatchesCertificate_cold_1();
  }

  BytePtr = CFDataGetBytePtr(v2);
  if (*BytePtr == *a1 && *(BytePtr + 1) == a1[1] && *(BytePtr + 2) == a1[2] && *(BytePtr + 3) == a1[3])
  {
    v8 = SecCertificateCopySubjectPublicKeyInfoSHA256Digest();
    if (CFDataGetLength(v8) != 32)
    {
      IdentityHandleMatchesCertificate_cold_2();
    }

    v9 = CFDataGetBytePtr(v8);
    v7 = *v9 == a1[4] && *(v9 + 1) == a1[5] && *(v9 + 2) == a1[6] && *(v9 + 3) == a1[7];
    CFRelease(v8);
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v2);
  return v7;
}

uint64_t EAPSecIdentityCreateTrustChain(__SecIdentity *a1, __CFArray **a2)
{
  v42 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  v36 = 0;
  certificateRef = 0;
  trust = 0;
  v33 = 0;
  v32 = 0;
  EAP = SecPolicyCreateEAP();
  v35 = EAP;
  if (EAP)
  {
    v5 = EAP;
    v6 = SecIdentityCopyCertificate(a1, &certificateRef);
    if (v6)
    {
      v7 = v6;
      LogHandle = EAPLogGetLogHandle();
      v9 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(LogHandle, v9))
      {
        v10 = EAPSecurityErrorString(v7);
        *buf = 136315394;
        v39 = v10;
        v40 = 1024;
        v41 = v7;
        v11 = "SecIdentityCopyCertificate failed: %s (%d)";
LABEL_11:
        _os_log_impl(&dword_249EFB000, LogHandle, v9, v11, buf, 0x12u);
        goto LABEL_12;
      }

      goto LABEL_12;
    }

    v36 = CFArrayCreate(0, &certificateRef, 1, MEMORY[0x277CBF128]);
    my_CFRelease(&certificateRef);
    v7 = SecTrustCreateWithCertificates(v36, v5, &trust);
    my_CFRelease(&v36);
    if (v7)
    {
      LogHandle = EAPLogGetLogHandle();
      v9 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(LogHandle, v9))
      {
        v15 = EAPSecurityErrorString(v7);
        *buf = 136315394;
        v39 = v15;
        v40 = 1024;
        v41 = v7;
        v11 = "SecTrustCreateWithCertificates failed: %s (%d)";
        goto LABEL_11;
      }

LABEL_12:
      Mutable = 0;
      goto LABEL_13;
    }

    v7 = EAPTLSSecTrustEvaluate(trust, &v33);
    if (v7)
    {
      v23 = EAPLogGetLogHandle();
      v24 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = EAPSecurityErrorString(v7);
        *buf = 136315394;
        v39 = v25;
        v40 = 1024;
        v41 = v7;
        _os_log_impl(&dword_249EFB000, v23, v24, "SecTrustEvaluate returned %s (%d)", buf, 0x12u);
      }
    }

    CertificateCount = SecTrustGetCertificateCount(trust);
    if (CertificateCount)
    {
      v27 = CertificateCount;
      Mutable = CFArrayCreateMutable(0, CertificateCount, MEMORY[0x277CBF128]);
      if (v27 >= 1)
      {
        for (i = 0; i != v27; ++i)
        {
          CertificateAtIndex = SecTrustGetCertificateAtIndex(trust, i);
          CFArrayAppendValue(Mutable, CertificateAtIndex);
        }
      }

      v32 = Mutable;
    }

    else
    {
      v30 = EAPLogGetLogHandle();
      v31 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v30, v31))
      {
        *buf = 0;
        _os_log_impl(&dword_249EFB000, v30, v31, "SecTrustGetCertificateCount returned 0", buf, 2u);
      }

      Mutable = 0;
      v7 = 4294967246;
    }
  }

  else
  {
    v12 = EAPLogGetLogHandle();
    v13 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v12, v13))
    {
      *buf = 0;
      _os_log_impl(&dword_249EFB000, v12, v13, "SecPolicyCreateEAP failed", buf, 2u);
    }

    Mutable = 0;
    v7 = 0;
  }

LABEL_13:
  my_CFRelease(&trust);
  my_CFRelease(&v35);
  if (v7)
  {
    v16 = EAPLogGetLogHandle();
    v17 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = EAPSecurityErrorString(v7);
      *buf = 136315394;
      v39 = v18;
      v40 = 1024;
      v41 = v7;
      _os_log_impl(&dword_249EFB000, v16, v17, "EAPSecIdentityCreateCertificateTrustChain failed: %s (%d)", buf, 0x12u);
    }
  }

  else
  {
    Count = CFArrayGetCount(Mutable);
    MutableCopy = CFArrayCreateMutableCopy(0, Count, Mutable);
    CFArraySetValueAtIndex(MutableCopy, 0, a1);
    *a2 = MutableCopy;
  }

  my_CFRelease(&v32);
  v21 = *MEMORY[0x277D85DE8];
  return v7;
}

__CFData *EAPSecIdentityHandleCreate(__SecIdentity *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  certificateRef = 0;
  v1 = SecIdentityCopyCertificate(a1, &certificateRef);
  if (v1)
  {
    v2 = v1;
    LogHandle = EAPLogGetLogHandle();
    v4 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v4))
    {
      v5 = EAPSecurityErrorString(v2);
      *buf = 136315394;
      v15 = v5;
      v16 = 1024;
      v17 = v2;
      _os_log_impl(&dword_249EFB000, LogHandle, v4, "SecIdentityCopyCertificate failed, %s (%d)", buf, 0x12u);
    }

    MutableCopy = 0;
  }

  else
  {
    v7 = SecCertificateCopySHA256Digest();
    if (CFDataGetLength(v7) != 32)
    {
      EAPSecIdentityHandleCreate_cold_1();
    }

    MutableCopy = CFDataCreateMutableCopy(0, 64, v7);
    CFRelease(v7);
    v8 = SecCertificateCopySubjectPublicKeyInfoSHA256Digest();
    if (CFDataGetLength(v8) != 32)
    {
      EAPSecIdentityHandleCreate_cold_2();
    }

    BytePtr = CFDataGetBytePtr(v8);
    Length = CFDataGetLength(v8);
    CFDataAppendBytes(MutableCopy, BytePtr, Length);
    CFRelease(v8);
    CFRelease(certificateRef);
  }

  v11 = *MEMORY[0x277D85DE8];
  return MutableCopy;
}

__CFString *EAPSecCertificateCopySHA1DigestString()
{
  SHA1Digest = SecCertificateGetSHA1Digest();
  Length = CFDataGetLength(SHA1Digest);
  BytePtr = CFDataGetBytePtr(SHA1Digest);
  Mutable = CFStringCreateMutable(0, 0);
  if (Length >= 1)
  {
    do
    {
      v4 = *BytePtr++;
      CFStringAppendFormat(Mutable, 0, @"%02x", v4);
      --Length;
    }

    while (Length);
  }

  return Mutable;
}

unsigned __int8 *NTSessionKey16(UInt8 *a1, unsigned int a2, uint64_t *a3, __int128 *a4, uint64_t *a5, unsigned __int8 *a6)
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = password_to_unicode(a1, a2, data);
  CC_MD4(data, v10, &md);
  CC_MD4(&md, 0x10u, v17);
  v18 = *a3;
  v19 = *a4;
  v11 = *a5;
  v20 = *(a4 + 2);
  v21 = v11;
  CC_MD4(data, v10, &md);
  ChallengeResponse(a5, &md, &v22, v12, v13);
  result = CC_MD5(v17, 0x50u, a6);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

const __CFString *password_to_unicode(UInt8 *bytes, unsigned int a2, UInt8 *a3)
{
  usedBufLen = 0;
  if (a2 >= 0x100)
  {
    v4 = 256;
  }

  else
  {
    v4 = a2;
  }

  result = CFStringCreateWithBytes(0, bytes, v4, 0x8000100u, 0);
  if (result)
  {
    v6 = result;
    v8.length = CFStringGetLength(result);
    v8.location = 0;
    CFStringGetBytes(v6, v8, 0x100u, 0, 0, a3, 512, &usedBufLen);
    CFRelease(v6);
    return usedBufLen;
  }

  return result;
}

uint64_t MSChap(void *a1, UInt8 *bytes, unsigned int a3, uint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = password_to_unicode(bytes, a3, data);
  CC_MD4(data, v6, &md);
  result = ChallengeResponse(a1, &md, a4, v7, v8);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MSChap_MPPE(void *a1, UInt8 *bytes, unsigned int a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = password_to_unicode(bytes, a3, data);
  CC_MD4(data, v6, md);
  CC_MD4(md, 0x10u, &v12);
  result = ChallengeResponse(a1, &v12, a4, v7, v8);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t NTPasswordBlockEncryptNewPasswordWithOldHash(UInt8 *a1, unsigned int a2, UInt8 *a3, unsigned int a4, void *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = password_to_unicode(a1, a2, __src);
  v9 = password_to_unicode(a3, a4, data);
  CC_MD4(data, v9, md);
  v10 = 0;
  memset(dataIn, 0, sizeof(dataIn));
  do
  {
    *&dataIn[v10] = arc4random();
    v10 += 4;
  }

  while (v10 != 516);
  memmove(&dataIn[512 - v8], __src, v8);
  v18 = v8;
  dataOutMoved = 0;
  result = CCCrypt(0, 4u, 0, md, 0x10uLL, 0, dataIn, 0x204uLL, a5, 0x204uLL, &dataOutMoved);
  if (result)
  {
    result = fprintf(*MEMORY[0x277D85DF8], "rc4_encrypt: CCCrypt failed with %d\n", result);
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t NTPasswordHashEncryptOldWithNew(UInt8 *a1, unsigned int a2, UInt8 *a3, unsigned int a4, uint64_t a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = password_to_unicode(a1, a2, data);
  CC_MD4(data, v8, md);
  v9 = password_to_unicode(a3, a4, v18);
  CC_MD4(v18, v9, dataIn);
  DesEncrypt(dataIn, md, a5, v10, v11);
  result = DesEncrypt(&v17, &v20, (a5 + 8), v12, v13);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void EAPOLSIMGenerationIncrement()
{
  v11 = *MEMORY[0x277D85DE8];
  valuePtr = 1;
  v0 = SCPreferencesCreate(0, @"EAPOLSIMPrefsManage", @"com.apple.eapol.sim.generation.plist");
  v9 = v0;
  if (v0)
  {
    v1 = v0;
    Value = SCPreferencesGetValue(v0, @"SIMGenerationID");
    TypeID = CFNumberGetTypeID();
    if (Value && CFGetTypeID(Value) == TypeID)
    {
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
      ++valuePtr;
    }

    *buf = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    SCPreferencesSetValue(v1, @"SIMGenerationID", *buf);
    SCPreferencesCommitChanges(v1);
    my_CFRelease(buf);
    my_CFRelease(&v9);
  }

  else
  {
    LogHandle = EAPLogGetLogHandle();
    v5 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v5))
    {
      v6 = SCError();
      *buf = 136315138;
      *&buf[4] = SCErrorString(v6);
      _os_log_impl(&dword_249EFB000, LogHandle, v5, "SCPreferencesCreate failed, %s", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t EAPOLSIMGenerationGet()
{
  v12 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  v0 = SCPreferencesCreate(0, @"EAPOLSIMPrefsManage", @"com.apple.eapol.sim.generation.plist");
  v8 = v0;
  if (v0)
  {
    Value = SCPreferencesGetValue(v0, @"SIMGenerationID");
    TypeID = CFNumberGetTypeID();
    if (Value && CFGetTypeID(Value) == TypeID)
    {
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    }

    my_CFRelease(&v8);
    result = valuePtr;
  }

  else
  {
    LogHandle = EAPLogGetLogHandle();
    v5 = _SC_syslog_os_log_mapping();
    result = os_log_type_enabled(LogHandle, v5);
    if (result)
    {
      v6 = SCError();
      *buf = 136315138;
      v11 = SCErrorString(v6);
      _os_log_impl(&dword_249EFB000, LogHandle, v5, "SCPreferencesCreate failed, %s", buf, 0xCu);
      result = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t EAPSecKeychainPasswordItemRemove(uint64_t a1, void *a2)
{
  keys[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CDC120];
  keys[0] = *MEMORY[0x277CDC228];
  keys[1] = v2;
  values[0] = *MEMORY[0x277CDC238];
  values[1] = a2;
  v3 = CFDictionaryCreate(0, keys, values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v4 = SecItemDelete(v3);
  CFRelease(v3);
  if (v4)
  {
    LogHandle = EAPLogGetLogHandle();
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v6))
    {
      v9 = 136315394;
      v10 = EAPSecurityErrorString(v4);
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_249EFB000, LogHandle, v6, "SecItemDelete failed: %s (%d)", &v9, 0x12u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t EAPKeychainSetIdentityReference(void *a1, void *a2, int a3)
{
  keys[6] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v10 = 4294967246;
LABEL_8:
    v11 = *MEMORY[0x277D85DE8];
    return v10;
  }

  if (a2)
  {
    v5 = *MEMORY[0x277CDBEC8];
    keys[0] = *MEMORY[0x277CDC5D0];
    keys[1] = v5;
    v6 = *MEMORY[0x277CDC5E8];
    keys[2] = *MEMORY[0x277CDBF30];
    keys[3] = v6;
    v7 = *MEMORY[0x277CDC228];
    keys[4] = *MEMORY[0x277CDBED8];
    keys[5] = v7;
    values[0] = *MEMORY[0x277CBED28];
    values[1] = @"com.apple.identities";
    values[2] = a1;
    values[3] = a2;
    v8 = *MEMORY[0x277CDC250];
    values[4] = *MEMORY[0x277CDBEE0];
    values[5] = v8;
    v9 = CFDictionaryCreate(0, keys, values, 6, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v14 = v9;
    if (!a3 || (v10 = EAPKeychainRemoveIdentityReference(a1), !v10))
    {
      v10 = SecItemAdd(v9, 0);
    }

    my_CFRelease(&v14);
    goto LABEL_8;
  }

  v13 = *MEMORY[0x277D85DE8];

  return EAPKeychainRemoveIdentityReference(a1);
}

uint64_t EAPKeychainRemoveIdentityReference(void *a1)
{
  keys[4] = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277CDBF30];
  keys[0] = *MEMORY[0x277CDC5D0];
  keys[1] = v1;
  v2 = *MEMORY[0x277CDC228];
  keys[2] = *MEMORY[0x277CDBEC8];
  keys[3] = v2;
  values[0] = *MEMORY[0x277CBED28];
  values[1] = a1;
  v3 = *MEMORY[0x277CDC250];
  values[2] = @"com.apple.identities";
  values[3] = v3;
  v7 = CFDictionaryCreate(0, keys, values, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v4 = SecItemDelete(v7);
  my_CFRelease(&v7);
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t EAPKeychainCopyIdentityReference(void *a1, CFTypeRef *a2)
{
  keys[5] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    *a2 = 0;
    v3 = *MEMORY[0x277CDBEC8];
    keys[0] = *MEMORY[0x277CDC5D0];
    keys[1] = v3;
    v4 = *MEMORY[0x277CDC558];
    keys[2] = *MEMORY[0x277CDBF30];
    keys[3] = v4;
    keys[4] = *MEMORY[0x277CDC228];
    values[0] = *MEMORY[0x277CBED28];
    values[1] = @"com.apple.identities";
    values[2] = a1;
    values[3] = values[0];
    values[4] = *MEMORY[0x277CDC250];
    v8 = CFDictionaryCreate(0, keys, values, 5, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v5 = SecItemCopyMatching(v8, a2);
    my_CFRelease(&v8);
  }

  else
  {
    v5 = 4294967246;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t EAPKeychainRemovePasswordItem(void *a1)
{
  keys[3] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = *MEMORY[0x277CDC120];
    keys[0] = *MEMORY[0x277CDC5D0];
    keys[1] = v1;
    keys[2] = *MEMORY[0x277CDC228];
    values[0] = *MEMORY[0x277CBED28];
    values[1] = a1;
    values[2] = *MEMORY[0x277CDC238];
    v5 = CFDictionaryCreate(0, keys, values, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v2 = SecItemDelete(v5);
    my_CFRelease(&v5);
  }

  else
  {
    v2 = 4294967246;
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t EAPKeychainSetPasswordItem(void *a1, void *a2, void *a3, int a4)
{
  keys[6] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a4)
    {
      EAPKeychainRemovePasswordItem(a1);
    }

    v7 = *MEMORY[0x277CDBF20];
    keys[0] = *MEMORY[0x277CDC5D0];
    keys[1] = v7;
    v8 = *MEMORY[0x277CDC228];
    keys[2] = *MEMORY[0x277CDC120];
    keys[3] = v8;
    v9 = *MEMORY[0x277CDBED8];
    keys[4] = *MEMORY[0x277CDC5E8];
    keys[5] = v9;
    values[0] = *MEMORY[0x277CBED28];
    values[1] = a2;
    v10 = *MEMORY[0x277CDC238];
    values[2] = a1;
    values[3] = v10;
    v11 = *MEMORY[0x277CDBEE0];
    values[4] = a3;
    values[5] = v11;
    v15 = CFDictionaryCreate(0, keys, values, 6, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v12 = SecItemAdd(v15, 0);
    my_CFRelease(&v15);
  }

  else
  {
    v12 = 4294967246;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t EAPKeychainCopyPasswordItem(void *a1, void *a2, void *a3)
{
  keys[5] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  result = 0;
  if (!a1)
  {
    v13 = 0;
    v9 = 0;
    v8 = 4294967246;
    if (a2)
    {
      goto LABEL_15;
    }

    goto LABEL_7;
  }

  v5 = *MEMORY[0x277CDC228];
  keys[0] = *MEMORY[0x277CDC5D0];
  keys[1] = v5;
  v6 = *MEMORY[0x277CDC558];
  keys[2] = *MEMORY[0x277CDC120];
  keys[3] = v6;
  keys[4] = *MEMORY[0x277CDC550];
  v7 = *MEMORY[0x277CDC238];
  values[0] = *MEMORY[0x277CBED28];
  values[1] = v7;
  values[2] = a1;
  values[3] = values[0];
  values[4] = values[0];
  v21 = CFDictionaryCreate(0, keys, values, 5, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v8 = SecItemCopyMatching(v21, &result);
  v9 = result;
  TypeID = CFDictionaryGetTypeID();
  if (!v9)
  {
    goto LABEL_13;
  }

  if (CFGetTypeID(v9) != TypeID)
  {
    v13 = 0;
    v9 = 0;
    goto LABEL_14;
  }

  v11 = *MEMORY[0x277CDBF20];
  if (CFDictionaryContainsKey(result, *MEMORY[0x277CDBF20]))
  {
    Value = CFDictionaryGetValue(result, v11);
    v9 = CFRetain(Value);
    v19 = v9;
  }

  else
  {
    v9 = 0;
  }

  v14 = *MEMORY[0x277CDC5E8];
  if (CFDictionaryContainsKey(result, *MEMORY[0x277CDC5E8]))
  {
    v15 = CFDictionaryGetValue(result, v14);
    v13 = CFRetain(v15);
    v18 = v13;
  }

  else
  {
LABEL_13:
    v13 = 0;
  }

LABEL_14:
  my_CFRelease(&result);
  my_CFRelease(&v21);
  if (a2)
  {
LABEL_15:
    *a2 = v9;
    if (a3)
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

LABEL_7:
  my_CFRelease(&v19);
  if (a3)
  {
LABEL_16:
    *a3 = v13;
    goto LABEL_17;
  }

LABEL_8:
  my_CFRelease(&v18);
LABEL_17:
  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t EAPSecKeychainPasswordItemCreateUniqueWithAccess(uint64_t a1, uint64_t a2, const void *a3, const void *a4, const void *a5, const void *a6, CFStringRef *a7)
{
  v12 = my_CFUUIDStringCreate(0);
  v14 = EAPSecKeychainPasswordItemCreateWithAccess(v12, v13, v12, a3, a4, a5, a6);
  v15 = v14;
  if (!a7 || v14)
  {
    if (a7)
    {
      *a7 = 0;
    }

    CFRelease(v12);
  }

  else
  {
    *a7 = v12;
  }

  return v15;
}

uint64_t EAPOLControlStart(uint64_t a1, const void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v31 = 0;
  memset(v36, 0, sizeof(v36));
  v3 = MEMORY[0x277D85F48];
  v4 = MEMORY[0x277D85F18];
  v5 = mach_port_mod_refs(*MEMORY[0x277D85F48], *MEMORY[0x277D85F18], 0, 1);
  v29 = v5;
  if (v5)
  {
    v6 = v5;
    LogHandle = EAPLogGetLogHandle();
    v8 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v8))
    {
      *buf = 136315394;
      v33 = mach_error_string(v6);
      v34 = 1024;
      v35 = v6;
      _os_log_impl(&dword_249EFB000, LogHandle, v8, "mach_port_mod_refs failed, %s (%d)", buf, 0x12u);
    }

    LODWORD(v30) = 6;
    goto LABEL_20;
  }

  v9 = audit_session_self();
  if (v9)
  {
    v10 = v9;
    if (get_server_port(&v30 + 4, &v29))
    {
      TypeID = CFDictionaryGetTypeID();
      if (!a2 || CFGetTypeID(a2) != TypeID)
      {
        v22 = 22;
        goto LABEL_18;
      }

      Data = CFPropertyListCreateData(0, a2, kCFPropertyListBinaryFormat_v1_0, 0, 0);
      v31 = Data;
      if (!Data)
      {
        v22 = 12;
        goto LABEL_18;
      }

      v13 = Data;
      __strlcpy_chk();
      v14 = HIDWORD(v30);
      BytePtr = CFDataGetBytePtr(v13);
      Length = CFDataGetLength(v13);
      v17 = eapolcontroller_start(v14, v36, BytePtr, Length, *v4, v10, &v30);
      if (!v17)
      {
        if (v30)
        {
          v27 = EAPLogGetLogHandle();
          v28 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v27, v28))
          {
            *buf = 67109120;
            LODWORD(v33) = v30;
            _os_log_impl(&dword_249EFB000, v27, v28, "eapolcontroller_start: result is %d", buf, 8u);
          }
        }

        goto LABEL_19;
      }

      v18 = v17;
      v19 = EAPLogGetLogHandle();
      v20 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = mach_error_string(v18);
        *buf = 136315394;
        v33 = v21;
        v34 = 1024;
        v35 = v18;
        _os_log_impl(&dword_249EFB000, v19, v20, "eapolcontroller_start failed, %s (%d)", buf, 0x12u);
      }
    }

    v22 = 6;
LABEL_18:
    LODWORD(v30) = v22;
LABEL_19:
    mach_port_mod_refs(*v3, *v4, 0, -1);
    mach_port_deallocate(*v3, v10);
    goto LABEL_20;
  }

  LODWORD(v30) = 6;
  v23 = EAPLogGetLogHandle();
  v24 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v23, v24))
  {
    *buf = 0;
    _os_log_impl(&dword_249EFB000, v23, v24, "audit_session_self failed", buf, 2u);
  }

  mach_port_mod_refs(*v3, *v4, 0, -1);
LABEL_20:
  my_CFRelease(&v31);
  result = v30;
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t EAPOLControlStartWithClientItemID(uint64_t a1, uint64_t a2, const void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v28 = 0;
  values = 0;
  v26 = 0;
  v24 = 0;
  if (!a3)
  {
    goto LABEL_22;
  }

  v5 = a3;
  TypeID = CFDictionaryGetTypeID();
  if (CFGetTypeID(v5) != TypeID)
  {
    goto LABEL_28;
  }

  Count = CFDictionaryGetCount(v5);
  v8 = Count;
  if (!Count)
  {
LABEL_22:
    v19 = EAPOLClientItemIDCopyDictionary(a2);
    if (v19)
    {
      v15 = v19;
      goto LABEL_24;
    }

LABEL_28:
    v21 = 22;
    goto LABEL_29;
  }

  if (Count > 5)
  {
    goto LABEL_28;
  }

  v33 = 0;
  *keys = 0u;
  v32 = 0u;
  CFDictionaryGetKeysAndValues(v5, keys, 0);
  if (v8 >= 1)
  {
    v9 = v8 & 0x7FFFFFFF;
    v10 = keys;
    do
    {
      if (CFEqual(*v10, @"SaveCredentialsOnSuccessfulAuthentication"))
      {
        if (v8 == 1)
        {
          LogHandle = EAPLogGetLogHandle();
          v12 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(LogHandle, v12))
          {
            v13 = *v10;
            *buf = 138412290;
            v30 = v13;
            _os_log_impl(&dword_249EFB000, LogHandle, v12, "Ignoring %@ since no credentials were specified", buf, 0xCu);
          }

          v5 = 0;
        }
      }

      else if (!CFEqual(*v10, @"UserName") && !CFEqual(*v10, @"UserPassword") && !CFEqual(*v10, @"TLSIdentityHandle") && !CFEqual(*v10, @"DisableUserInteraction"))
      {
        goto LABEL_28;
      }

      ++v10;
    }

    while (--v9);
  }

  v14 = EAPOLClientItemIDCopyDictionary(a2);
  if (!v14)
  {
    goto LABEL_28;
  }

  v15 = v14;
  if (!v5)
  {
LABEL_24:
    v27 = @"ClientItemID";
    values = v15;
    goto LABEL_25;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v5);
  v24 = MutableCopy;
  values = v15;
  v27 = @"ClientItemID";
  if (MutableCopy)
  {
    v17 = MutableCopy;
    if (CFDictionaryGetCount(MutableCopy) >= 1)
    {
      v28 = @"EAPClientConfiguration";
      v26 = v17;
      v18 = 2;
      goto LABEL_26;
    }
  }

LABEL_25:
  v18 = 1;
LABEL_26:
  v20 = CFDictionaryCreate(0, &v27, &values, v18, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFRelease(v15);
  my_CFRelease(&v24);
  v21 = EAPOLControlStart(a1, v20);
  if (v20)
  {
    CFRelease(v20);
  }

LABEL_29:
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t EAPOLControlStop()
{
  v6 = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  v4 = 0;
  v3 = 0;
  if (get_server_port(&v4 + 4, &v3))
  {
    __strlcpy_chk();
    v0 = eapolcontroller_stop(HIDWORD(v4), v5, &v4);
    if (!v0)
    {
      result = v4;
      goto LABEL_6;
    }

    mach_error("eapolcontroller_start failed", v0);
  }

  result = 6;
LABEL_6:
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t EAPOLControlUpdate(uint64_t a1, const void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = 0;
  memset(v16, 0, sizeof(v16));
  v13 = 0;
  if (!get_server_port(&v14 + 4, &v13))
  {
    goto LABEL_7;
  }

  TypeID = CFDictionaryGetTypeID();
  if (!a2 || CFGetTypeID(a2) != TypeID)
  {
    v10 = 22;
    goto LABEL_9;
  }

  Data = CFPropertyListCreateData(0, a2, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  v15 = Data;
  if (!Data)
  {
    v10 = 12;
    goto LABEL_9;
  }

  v5 = Data;
  __strlcpy_chk();
  v6 = HIDWORD(v14);
  BytePtr = CFDataGetBytePtr(v5);
  Length = CFDataGetLength(v5);
  v9 = eapolcontroller_update(v6, v16, BytePtr, Length, &v14);
  if (v9)
  {
    mach_error("eapolcontroller_update failed", v9);
LABEL_7:
    v10 = 6;
LABEL_9:
    LODWORD(v14) = v10;
  }

  my_CFRelease(&v15);
  result = v14;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t EAPOLControlRetry()
{
  v6 = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  v4 = 0;
  v3 = 0;
  if (get_server_port(&v4, &v3))
  {
    __strlcpy_chk();
    v0 = eapolcontroller_retry(v4, v5, &v4 + 1);
    if (!v0)
    {
      result = HIDWORD(v4);
      goto LABEL_6;
    }

    mach_error("eapolcontroller_retry failed", v0);
  }

  result = 6;
LABEL_6:
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t EAPOLControlProvideUserInput(uint64_t a1, const UInt8 *BytePtr)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = 0;
  memset(v14, 0, sizeof(v14));
  v11 = 0;
  if (!get_server_port(&v12 + 4, &v11))
  {
    goto LABEL_9;
  }

  if (BytePtr)
  {
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(BytePtr) != TypeID)
    {
      v8 = 22;
      goto LABEL_12;
    }

    Data = CFPropertyListCreateData(0, BytePtr, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    v13 = Data;
    if (!Data)
    {
      v8 = 12;
      goto LABEL_12;
    }

    v5 = Data;
    BytePtr = CFDataGetBytePtr(Data);
    Length = CFDataGetLength(v5);
  }

  else
  {
    Length = 0;
  }

  __strlcpy_chk();
  v7 = eapolcontroller_provide_user_input(HIDWORD(v12), v14, BytePtr, Length, &v12);
  if (v7)
  {
    mach_error("eapolcontroller_provide_user_input failed", v7);
LABEL_9:
    v8 = 6;
LABEL_12:
    LODWORD(v12) = v8;
  }

  my_CFRelease(&v13);
  result = v12;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t EAPOLControlStartSystem(uint64_t a1, const UInt8 *BytePtr)
{
  v25 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  memset(v24, 0, sizeof(v24));
  v17 = 0;
  if (!get_server_port(&v18 + 4, &v17))
  {
LABEL_10:
    v12 = 6;
LABEL_16:
    LODWORD(v18) = v12;
    goto LABEL_17;
  }

  if (BytePtr)
  {
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(BytePtr) != TypeID)
    {
      v12 = 22;
      goto LABEL_16;
    }

    Data = CFPropertyListCreateData(0, BytePtr, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    v19 = Data;
    if (!Data)
    {
      v12 = 12;
      goto LABEL_16;
    }

    v5 = Data;
    BytePtr = CFDataGetBytePtr(Data);
    Length = CFDataGetLength(v5);
  }

  else
  {
    Length = 0;
  }

  __strlcpy_chk();
  started = eapolcontroller_start_system(HIDWORD(v18), v24, BytePtr, Length, &v18);
  if (started)
  {
    v8 = started;
    LogHandle = EAPLogGetLogHandle();
    v10 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v10))
    {
      v11 = mach_error_string(v8);
      *buf = 136315394;
      v21 = v11;
      v22 = 1024;
      v23 = v8;
      _os_log_impl(&dword_249EFB000, LogHandle, v10, "eapolcontroller_start_system failed, %s (%d)", buf, 0x12u);
    }

    goto LABEL_10;
  }

  if (v18)
  {
    v13 = EAPLogGetLogHandle();
    v14 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v13, v14))
    {
      *buf = 67109120;
      LODWORD(v21) = v18;
      _os_log_impl(&dword_249EFB000, v13, v14, "eapolcontroller_start_system: result is %d", buf, 8u);
    }
  }

LABEL_17:
  my_CFRelease(&v19);
  result = v18;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t EAPOLControlStartSystemWithClientItemID(uint64_t a1, uint64_t a2)
{
  values = EAPOLClientItemIDCopyDictionary(a2);
  if (!values)
  {
    return 22;
  }

  v6 = @"ClientItemID";
  v3 = CFDictionaryCreate(0, &v6, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFRelease(values);
  started = EAPOLControlStartSystem(a1, v3);
  if (v3)
  {
    CFRelease(v3);
  }

  return started;
}

uint64_t chap_md5(char a1, const void *a2, CC_LONG a3, const void *a4, CC_LONG a5, unsigned __int8 *a6)
{
  data = a1;
  memset(&v12, 0, sizeof(v12));
  CC_MD5_Init(&v12);
  CC_MD5_Update(&v12, &data, 1u);
  CC_MD5_Update(&v12, a2, a3);
  CC_MD5_Update(&v12, a4, a5);
  return CC_MD5_Final(a6, &v12);
}

void print_bytes_cfstr(CFMutableStringRef theString, uint64_t a2, int a3)
{
  if (a3 >= 1)
  {
    v5 = 0;
    v6 = a3;
    do
    {
      if ((v5 & 7) != 0)
      {
        v7 = " ";
      }

      else
      {
        v7 = "  ";
      }

      if (!v5)
      {
        v7 = &unk_249F2FF71;
      }

      CFStringAppendFormat(theString, 0, @"%s%02x", v7, *(a2 + v5++));
    }

    while (v6 != v5);
  }
}

void print_data_cfstr(CFMutableStringRef theString, uint64_t a2, int a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a3 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v8 = MEMORY[0x277D85DE0];
    do
    {
      if (!v6)
      {
        CFStringAppendFormat(theString, 0, @"%04x ", v5);
      }

      v9 = *(a2 + v5);
      if (v9 < 0)
      {
        v10 = __maskrune(*(a2 + v5), 0x40000uLL);
      }

      else
      {
        v10 = *(v8 + 4 * v9 + 60) & 0x40000;
      }

      v11 = *(a2 + v5);
      if (v10)
      {
        v12 = v9;
      }

      else
      {
        v12 = 46;
      }

      v18[v6] = v12;
      CFStringAppendFormat(theString, 0, @" %02x", v11);
      if (v6 == 7)
      {
        CFStringAppendFormat(theString, 0, @" ");
        v6 = 8;
      }

      else if (v6 == 15)
      {
        v19 = 0;
        CFStringAppendFormat(theString, 0, @"  %s\n", v18);
        v6 = 0;
      }

      else
      {
        ++v6;
      }

      ++v5;
    }

    while (a3 != v5);
    if (v6)
    {
      if (v6 >= 8)
      {
        v13 = &unk_249F2FF71;
      }

      else
      {
        v13 = " ";
      }

      if (v6 <= 15)
      {
        v14 = &v18[v6];
        v15 = v6 + 1;
        do
        {
          CFStringAppendFormat(theString, 0, @"   ");
          *v14++ = 32;
        }

        while (v15++ != 16);
      }

      v19 = 0;
      CFStringAppendFormat(theString, 0, @"  %s%s\n", v13, v18);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t fprint_bytes(FILE *a1, uint64_t a2, int a3)
{
  Mutable = CFStringCreateMutable(0, 0);
  v7 = Mutable;
  v8 = *MEMORY[0x277D85E08];
  if (!a1)
  {
    a1 = *MEMORY[0x277D85E08];
  }

  print_bytes_cfstr(Mutable, a2, a3);
  SCPrint();
  CFRelease(v7);

  return fflush(a1);
}

uint64_t fprint_data(FILE *a1, uint64_t a2, int a3)
{
  Mutable = CFStringCreateMutable(0, 0);
  print_data_cfstr(Mutable, a2, a3);
  v7 = *MEMORY[0x277D85E08];
  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = *MEMORY[0x277D85E08];
  }

  SCPrint();
  CFRelease(Mutable);

  return fflush(v8);
}

uint64_t sockaddr_dl_print(unsigned __int8 *a1)
{
  printf("link: len %d index %d family %d type 0x%x nlen %d alen %d slen %d addr ", *a1, *(a1 + 1), a1[1], a1[4], a1[5], a1[6], a1[7]);
  if (a1[6])
  {
    v2 = 0;
    do
    {
      if (v2)
      {
        v3 = ":";
      }

      else
      {
        v3 = &unk_249F2FF71;
      }

      printf("%s%x", v3, a1[a1[5] + 8 + v2++]);
    }

    while (v2 < a1[6]);
  }

  return putchar(10);
}

uint64_t LinkAddresses_element(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || *(a1 + 8) <= a2)
  {
    return 0;
  }

  else
  {
    return *(*a1 + 8 * a2);
  }
}

uint64_t leap_init(void *a1, void *a2, _DWORD *a3)
{
  *a3 = 0;
  *a2 = 0;
  v4 = malloc_type_malloc(0xA4uLL, 0x100004083268C5DuLL);
  if (!v4)
  {
    return 2;
  }

  v5 = v4;
  result = 0;
  v5[40] = 0;
  *(v5 + 8) = 0u;
  *(v5 + 9) = 0u;
  *(v5 + 6) = 0u;
  *(v5 + 7) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 5) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *a1 = v5;
  return result;
}

void leap_free(void **a1)
{
  v1 = *a1;
  if (v1)
  {
    free(v1);
  }
}

uint64_t leap_process(uint64_t *a1, unsigned __int8 *a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  v28[3] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  *a4 = 0;
  *a5 = 0;
  *a3 = 0;
  v6 = a1[8];
  if (!v6)
  {
    result = 0;
    *a4 = 3;
    goto LABEL_25;
  }

  result = 0;
  v11 = *a2;
  if (v11 > 2)
  {
    if (v11 != 3)
    {
      if (v11 == 4)
      {
        *a4 = 1;
        *v5 = 4;
        strcpy(v5 + 36, "server sent failure");
LABEL_15:
        result = 2;
        goto LABEL_25;
      }

      goto LABEL_25;
    }

    v15 = *v5;
    if (*v5 != 1)
    {
      goto LABEL_20;
    }

    v16 = 3;
    do
    {
      v17 = v15;
      v18 = arc4random();
      LOBYTE(v15) = 0;
      v5[v16++] = v18;
    }

    while ((v17 & 1) != 0);
    v19 = LEAPPacketCreate(1, v5 + 3, 8u, a2[1], a1[5], *(a1 + 12));
    result = 0;
    *a3 = v19;
    v20 = 2;
LABEL_24:
    *v5 = v20;
    goto LABEL_25;
  }

  if (v11 == 1)
  {
    Length = EAPPacketGetLength(a2);
    if (Length < 8 || (Length & 0xFFF8) == 8 || a2[7] != 8)
    {
      snprintf(v5 + 36, 0x80uLL, "LEAPVerifyRequest: packet is too short %d");
LABEL_14:
      *v5 = 4;
      goto LABEL_15;
    }

    *(v5 + 1) = *(a2 + 1);
    MSChap(v5 + 1, a1[8], *(a1 + 18), v28);
    v21 = LEAPPacketCreate(2, v28, 0x18u, a2[1], a1[5], *(a1 + 12));
    result = 0;
    *a3 = v21;
    v20 = 1;
    goto LABEL_24;
  }

  if (v11 == 2)
  {
    if (*v5 == 2)
    {
      v12 = *(a1 + 18);
      v13 = EAPPacketGetLength(a2);
      if (v13 >= 8 && a2[7] == 24 && (v13 - 8) > 0x17)
      {
        MSChap_MPPE(v5 + 3, v6, v12, v28);
        v23 = *(a2 + 1);
        v24 = *(a2 + 2);
        v25 = a2 + 8;
        if (v28[0] == v23 && v28[1] == v24 && v28[2] == *(v25 + 2))
        {
          NTSessionKey16(v6, v12, (v5 + 3), v25, (v5 + 1), v5 + 20);
          *v5 = 3;
          result = 1;
          goto LABEL_25;
        }

        strcpy(v5 + 36, "LEAPVerifyResponse: server failed mutual authentication");
      }

      else
      {
        snprintf(v5 + 36, 0x80uLL, "LEAPVerifyResponse: packet is too short %d");
      }

      goto LABEL_14;
    }

LABEL_20:
    result = 0;
  }

LABEL_25:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void leap_free_packet(int a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

uint64_t leap_failure_string(void *a1)
{
  if (**a1 == 4)
  {
    return *a1 + 36;
  }

  else
  {
    return 0;
  }
}

uint64_t leap_session_key(_DWORD **a1, int *a2)
{
  v2 = 16 * (**a1 == 3);
  if (**a1 == 3)
  {
    result = (*a1 + 5);
  }

  else
  {
    result = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t leap_server_key(_DWORD **a1, int *a2)
{
  v2 = 16 * (**a1 == 3);
  if (**a1 == 3)
  {
    result = (*a1 + 5);
  }

  else
  {
    result = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t leap_msk_copy_bytes(void *a1, uint64_t a2, int a3)
{
  if (a3 < 64)
  {
    return 0;
  }

  v3 = *a1;
  if (**a1 != 3)
  {
    return 0;
  }

  *a2 = *(v3 + 5);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = *(v3 + 5);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return 64;
}

CFArrayRef leap_require_props(uint64_t a1)
{
  if (*(a1 + 64))
  {
    return 0;
  }

  values[1] = v1;
  values[2] = v2;
  values[0] = @"UserPassword";
  return CFArrayCreate(0, values, 1, MEMORY[0x277CBF128]);
}

_BYTE *LEAPPacketCreate(char a1, const void *a2, unsigned int a3, char a4, const void *a5, int a6)
{
  v12 = a3 + a6 + 8;
  v13 = malloc_type_malloc(v12, 0xE75A20A2uLL);
  v14 = v13;
  if (v13)
  {
    *v13 = a1;
    v13[1] = a4;
    EAPPacketSetLength(v13, v12);
    *(v14 + 2) = 273;
    v14[6] = 0;
    v14[7] = a3;
    memmove(v14 + 8, a2, a3);
    memmove(&v14[a3 + 8], a5, a6);
  }

  return v14;
}

uint64_t my_CFEqual(const void *a1, const void *a2)
{
  if (!a1)
  {
    return a2 == 0;
  }

  if (a2)
  {
    return CFEqual(a1, a2);
  }

  return 0;
}

UInt8 *S_copy_cstring(const __CFString *a1, CFRange a2, CFStringEncoding a3)
{
  length = a2.length;
  location = a2.location;
  maxBufLen = 0;
  CFStringGetBytes(a1, a2, a3, 0, 0, 0, 0, &maxBufLen);
  if (maxBufLen < 1)
  {
    return 0;
  }

  v7 = malloc_type_malloc(maxBufLen + 1, 0x100004077774924uLL);
  v10.location = location;
  v10.length = length;
  CFStringGetBytes(a1, v10, a3, 0, 0, v7, maxBufLen, &maxBufLen);
  v7[maxBufLen] = 0;
  return v7;
}

CFPropertyListRef my_CFPropertyListCreateFromFile(const char *a1)
{
  memset(&v11, 0, sizeof(v11));
  if (stat(a1, &v11) < 0)
  {
    return 0;
  }

  st_size = v11.st_size;
  if (!v11.st_size)
  {
    return 0;
  }

  v3 = malloc_type_malloc(v11.st_size, 0xF46183F3uLL);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = open(a1, 0);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = v5;
    read(v5, v4, st_size);
    close(v6);
  }

  v7 = CFDataCreate(0, v4, st_size);
  if (v7)
  {
    v8 = v7;
    v9 = CFPropertyListCreateWithData(0, v7, 0, 0, 0);
    CFRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  free(v4);
  return v9;
}

uint64_t my_CFPropertyListWriteFile(CFPropertyListRef propertyList, const std::__fs::filesystem::path *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (propertyList && (Data = CFPropertyListCreateData(0, propertyList, kCFPropertyListXMLFormat_v1_0, 0, 0)) != 0)
  {
    v4 = Data;
    BytePtr = CFDataGetBytePtr(Data);
    Length = CFDataGetLength(v4);
    snprintf(__str, 0x400uLL, "%s-", a2);
    v7 = open(__str, 1537, 420);
    if (v7 < 0)
    {
      v10 = 0xFFFFFFFFLL;
    }

    else
    {
      v8 = v7;
      if (write(v7, BytePtr, Length) == Length)
      {
        rename(__str, a2, v9);
        v10 = 0;
      }

      else
      {
        v10 = 0xFFFFFFFFLL;
      }

      close(v8);
    }

    CFRelease(v4);
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

CFStringRef my_CFUUIDStringCreate(const __CFAllocator *a1)
{
  v2 = CFUUIDCreate(a1);
  v3 = CFUUIDCreateString(a1, v2);
  CFRelease(v2);
  return v3;
}

CFStringRef my_CFStringCreateWithData(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    BytePtr = CFDataGetBytePtr(a1);
    Length = CFDataGetLength(a1);
    result = CFStringCreateWithBytes(v2, BytePtr, Length, S_encodings[v3], 0);
    if (result)
    {
      break;
    }

    v4 = 0;
    v3 = 1;
  }

  while ((v5 & 1) != 0);
  return result;
}

CFStringRef my_CFStringCreateWithCString(char *cStr)
{
  v2 = 0;
  v3 = 1;
  do
  {
    v4 = v3;
    result = CFStringCreateWithCString(0, cStr, S_encodings[v2]);
    if (result)
    {
      break;
    }

    v3 = 0;
    v2 = 1;
  }

  while ((v4 & 1) != 0);
  return result;
}

CFDataRef my_CFDataCreateWithString(CFStringRef theString)
{
  v2 = 0;
  v3 = 1;
  do
  {
    v4 = v3;
    result = CFStringCreateExternalRepresentation(0, theString, S_encodings[v2], 0);
    if (result)
    {
      break;
    }

    v3 = 0;
    v2 = 1;
  }

  while ((v4 & 1) != 0);
  return result;
}

void my_FieldSetRetainedCFType(const void **a1, CFTypeRef cf)
{
  v4 = *a1;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = cf;
}

const __CFData *my_CFPropertyListCopyAsXMLString(CFPropertyListRef propertyList)
{
  result = CFPropertyListCreateData(0, propertyList, kCFPropertyListXMLFormat_v1_0, 0, 0);
  if (result)
  {
    v2 = result;
    BytePtr = CFDataGetBytePtr(result);
    Length = CFDataGetLength(v2);
    v5 = CFStringCreateWithBytes(0, BytePtr, Length, 0x8000100u, 0);
    CFRelease(v2);
    return v5;
  }

  return result;
}

const __CFData *my_CFPropertyListCreateVMData(CFPropertyListRef propertyList, _DWORD *a2)
{
  address = 0;
  *a2 = 0;
  result = CFPropertyListCreateData(0, propertyList, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (result)
  {
    v4 = result;
    Length = CFDataGetLength(result);
    if (!vm_allocate(*MEMORY[0x277D85F48], &address, Length, 1))
    {
      v6 = address;
      BytePtr = CFDataGetBytePtr(v4);
      memmove(v6, BytePtr, Length);
      *a2 = Length;
    }

    CFRelease(v4);
    return address;
  }

  return result;
}

CFTypeRef my_CFStringCopyComponent(CFStringRef theString, CFStringRef separatorString, CFIndex a3)
{
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, theString, separatorString);
  if (!ArrayBySeparatingStrings)
  {
    return 0;
  }

  v5 = ArrayBySeparatingStrings;
  if (CFArrayGetCount(ArrayBySeparatingStrings) <= a3)
  {
    v7 = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v5, a3);
    v7 = CFRetain(ValueAtIndex);
  }

  CFRelease(v5);
  return v7;
}

void sub_249F12610(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_249F12AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_249F13084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_249F14110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_249F14378(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_249F146EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

EAPBoringSSLSession *EAPBoringSSLSessionContextCreate(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(EAPBoringSSLSession);
  LODWORD(a1) = [(EAPBoringSSLSession *)v4 setup:a1 clientContext:a2];
  v5 = EAPLogGetLogHandle();
  if (a1)
  {
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v5, v6))
    {
      *buf = 0;
      _os_log_impl(&dword_249EFB000, v5, v6, "EAPBoringSSLSession instance created", buf, 2u);
    }

    v7 = v4;
  }

  else
  {
    v8 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v5, v8))
    {
      *v10 = 0;
      _os_log_impl(&dword_249EFB000, v5, v8, "failed to set up session", v10, 2u);
    }

    v7 = 0;
  }

  return v7;
}

void *EAPBoringSSLSessionStop(void *a1, const char *a2)
{
  if (a1)
  {
    return [a1 stop];
  }

  return a1;
}

void EAPBoringSSLSessionContextFree(void *a1)
{
  if (a1)
  {
    [a1 stop];

    v2 = EAPLogGetLogHandle();
    v3 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v2, v3))
    {
      *v4 = 0;
      _os_log_impl(&dword_249EFB000, v2, v3, "EAPBoringSSLSession instance freed", v4, 2u);
    }
  }
}

void *EAPBoringSSLSessionStart(void *a1, const char *a2)
{
  if (a1)
  {
    return [a1 start];
  }

  return a1;
}

uint64_t EAPBoringSSLSessionGetCurrentState(void *a1, _DWORD *a2)
{
  if (!a1)
  {
    return 4294966387;
  }

  v3 = [a1 state];
  result = 0;
  *a2 = v3;
  return result;
}

__CFString *EAPBoringSSLSessionGetCurrentStateDescription(int a1)
{
  if ((a1 - 1) > 2)
  {
    return @"idle";
  }

  else
  {
    return *(&off_278FBDF60 + (a1 - 1));
  }
}

void EAPBoringSSLUtilGetPreferredTLSVersions(const __CFDictionary *a1, __int16 *a2, __int16 *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    *a2 = 769;
    *a3 = 771;
    goto LABEL_32;
  }

  Value = CFDictionaryGetValue(a1, @"TLSMinimumVersion");
  v7 = CFDictionaryGetValue(a1, @"TLSMaximumVersion");
  v8 = EAPLogGetLogHandle();
  v9 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = @"NONE";
    if (Value)
    {
      v11 = Value;
    }

    else
    {
      v11 = @"NONE";
    }

    if (v7)
    {
      v10 = v7;
    }

    v23 = 138412546;
    v24 = v11;
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&dword_249EFB000, v8, v9, "configured minimum TLS version: [%@], maximum TLS version: [%@]", &v23, 0x16u);
  }

  TypeID = CFStringGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID && !CFEqual(Value, @"1.0"))
  {
    if (CFEqual(Value, @"1.1"))
    {
      v13 = 770;
    }

    else if (CFEqual(Value, @"1.2"))
    {
      v13 = 771;
    }

    else
    {
      if (!CFEqual(Value, @"1.3"))
      {
        *a2 = 769;
        v19 = EAPLogGetLogHandle();
        v20 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v19, v20))
        {
          LOWORD(v23) = 0;
          _os_log_impl(&dword_249EFB000, v19, v20, "invalid minimum TLS version", &v23, 2u);
        }

        goto LABEL_14;
      }

      v13 = 772;
    }
  }

  else
  {
    v13 = 769;
  }

  *a2 = v13;
LABEL_14:
  v14 = CFStringGetTypeID();
  if (!v7 || CFGetTypeID(v7) != v14)
  {
    goto LABEL_26;
  }

  if (CFEqual(v7, @"1.0"))
  {
    v15 = 769;
    goto LABEL_27;
  }

  if (CFEqual(v7, @"1.1"))
  {
    v15 = 770;
    goto LABEL_27;
  }

  if (CFEqual(v7, @"1.2"))
  {
LABEL_26:
    v15 = 771;
    goto LABEL_27;
  }

  if (!CFEqual(v7, @"1.3"))
  {
    *a3 = 771;
    v21 = EAPLogGetLogHandle();
    v22 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v21, v22))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_249EFB000, v21, v22, "invalid maximum TLS version", &v23, 2u);
    }

    v15 = *a3;
    goto LABEL_28;
  }

  v15 = 772;
LABEL_27:
  *a3 = v15;
LABEL_28:
  if (*a2 > v15)
  {
    v16 = EAPLogGetLogHandle();
    v17 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v16, v17))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_249EFB000, v16, v17, "minimum TLS version cannot be higher than maximum TLS version", &v23, 2u);
    }

    *a2 = *a3;
  }

LABEL_32:
  v18 = *MEMORY[0x277D85DE8];
}

uint64_t EAPBoringSSLSessionHandshake(void *a1)
{
  if (a1)
  {
    return [a1 handshake];
  }

  else
  {
    return 4294967246;
  }
}

uint64_t EAPBoringSSLSessionCopyServerCertificates(void *a1, void *a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  v3 = a1;
  if (![v3 serverSecTrust])
  {
    v6 = [v3 copyPeerCertificateChain];

    if ([v6 count])
    {
      v5 = 0;
      *a2 = v6;
    }

    else
    {
      v5 = 4294967246;
    }

    return v5;
  }

  [v3 serverSecTrust];

  return SecTrustCopyInputCertificates();
}

void *EAPBoringSSLSessionGetSecTrust(void *a1, const char *a2)
{
  if (a1)
  {
    return [a1 serverSecTrust];
  }

  return a1;
}

uint64_t EAPBoringSSLSessionComputeKeyData(void *a1, void *a2, int a3)
{
  v3 = 4294967246;
  if (a1 && a2)
  {
    v6 = [a1 getEAPKeyMaterial];
    v7 = v6;
    if (v6)
    {
      if ([v6 length] < a3)
      {
LABEL_11:

        return v3;
      }

      memmove(a2, [v7 bytes], a3);
      v8 = EAPLogGetLogHandle();
      v9 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v8, v9))
      {
        *v12 = 0;
        _os_log_impl(&dword_249EFB000, v8, v9, "key computation is successful", v12, 2u);
      }

      v3 = 0;
    }

    else
    {
      v3 = 4294899625;
      v8 = EAPLogGetLogHandle();
      v10 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v8, v10))
      {
        *buf = 0;
        _os_log_impl(&dword_249EFB000, v8, v10, "key computation failed", buf, 2u);
      }
    }

    goto LABEL_11;
  }

  return v3;
}

uint64_t EAPBoringSSLSessionGetNegotiatedTLSVersion(void *a1, _WORD *a2)
{
  result = 4294967246;
  if (a1)
  {
    if (a2)
    {
      v5 = [a1 getNegotiatedTLSVersion];
      result = 0;
      *a2 = v5;
    }
  }

  return result;
}

uint64_t EAPBoringSSLSessionGetSessionResumed(void *a1, _BYTE *a2)
{
  result = 4294967246;
  if (a1)
  {
    if (a2)
    {
      v5 = [a1 getSessionResumed];
      result = 0;
      *a2 = v5;
    }
  }

  return result;
}

uint64_t EAPClientModuleAdd(uint64_t a1)
{
  v2 = malloc_type_malloc(0x20uLL, 0xB0040D5CDFBD1uLL);
  if (!v2)
  {
    return 3;
  }

  v3 = v2;
  result = 0;
  v3[2] = 0;
  v3[3] = a1;
  v5 = off_281054110;
  *v3 = 0;
  v3[1] = v5;
  *v5 = v3;
  off_281054110 = v3;
  return result;
}

uint64_t EAPClientModulePluginIntrospect(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 24) + 16);
  if (v2)
  {
    return v2(a2);
  }

  else
  {
    return 0;
  }
}

uint64_t EAPClientModulePluginFailureString(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 24) + 64);
  if (v2)
  {
    return v2(a2);
  }

  else
  {
    return 0;
  }
}

uint64_t EAPClientModulePluginMasterSessionKeyCopyBytes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 24) + 88);
  if (v4)
  {
    return v4(a2, a3, a4);
  }

  else
  {
    return 0;
  }
}

uint64_t EAPClientModulePluginRequireProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 24) + 96);
  if (v2)
  {
    return v2(a2);
  }

  else
  {
    return 0;
  }
}

uint64_t EAPClientModulePluginPacketDump(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  v4 = *(v3 + 112);
  v5 = *(v3 + 136);
  v6 = v4 | v5;
  if (!(v4 | v5))
  {
    return v6 & 1;
  }

  v6 = 1;
  if (!a2 || !a3)
  {
    return v6 & 1;
  }

  if (!v4)
  {
    v10 = 0;
    v8 = (v5)(a3, &v10);
    if (v8)
    {
      v9 = v8;
      SCPrint();
      CFRelease(v9);
    }

    v6 = v10;
    return v6 & 1;
  }

  return (v4)(a2, a3);
}

uint64_t EAPClientModulePluginCopyPacketDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 24) + 136);
  if (v3)
  {
    return v3(a2, a3);
  }

  else
  {
    return 0;
  }
}

const char *EAPCodeStr(int a1)
{
  if ((a1 - 1) <= 3)
  {
    return EAPCodeStr_str[a1 - 1];
  }

  else
  {
    return "<unknown>";
  }
}

const char *EAPTypeStr(int a1)
{
  result = "0 (invalid)";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "Identity";
      break;
    case 2:
      result = "Notification";
      break;
    case 3:
      result = "Nak";
      break;
    case 4:
      result = "EAP-MD5";
      break;
    case 5:
      result = "EAP-OTP";
      break;
    case 6:
      result = "EAP-GTC";
      break;
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 14:
    case 15:
    case 16:
    case 20:
    case 22:
    case 24:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
      goto LABEL_6;
    case 13:
      result = "EAP-TLS";
      break;
    case 17:
      result = "LEAP";
      break;
    case 18:
      result = "EAP-SIM";
      break;
    case 19:
      result = "SRPSHA1";
      break;
    case 21:
      result = "EAP-TTLS";
      break;
    case 23:
      result = "EAP-AKA";
      break;
    case 25:
      result = "EAP-PEAP";
      break;
    case 26:
      result = "EAP-MSCHAPv2";
      break;
    case 33:
      result = "PEAP-Extensions";
      break;
    default:
      if (a1 == 43)
      {
        result = "EAP-FAST";
      }

      else if (a1 == 50)
      {
        result = "EAP-AKA'";
      }

      else
      {
LABEL_6:
        result = "<unknown>";
      }

      break;
  }

  return result;
}

uint64_t EAPPacketIsValid(unsigned __int8 *a1, uint64_t a2, CFMutableStringRef theString)
{
  if (a2 <= 3)
  {
    if (theString)
    {
      CFStringAppendFormat(theString, 0, @"EAPPacket header truncated %d < %d\n", a2, 4);
    }

    return 0;
  }

  v6 = bswap32(*(a1 + 1));
  v7 = HIWORD(v6);
  if (v7 > a2)
  {
    if (theString)
    {
      EAPPacketHeaderAppendDescription(a1, HIWORD(v6), theString);
      CFStringAppendFormat(theString, 0, @"EAPPacket truncated %d < %d\n", a2, v7);
    }

    return 0;
  }

  if (*a1 - 1 > 1)
  {
    if (theString)
    {
      EAPPacketHeaderAppendDescription(a1, v7, theString);
      goto LABEL_15;
    }

    return 1;
  }

  if (v7 <= 4)
  {
    if (theString)
    {
      CFStringAppendFormat(theString, 0, @"%s length %d < %d\n", "EAPRequestResponsePacket", v7, 5);
      goto LABEL_21;
    }

    return 0;
  }

  v10 = a1[4];
  if (v10 != 3)
  {
    if (!v10)
    {
      if (theString)
      {
        EAPPacketHeaderAppendDescription(a1, v7, theString);
        CFStringAppendFormat(theString, 0, @"%s type is 0\n", "EAPRequestResponsePacket");
LABEL_21:
        v8 = 0;
        if (!theString)
        {
          return v8;
        }

        goto LABEL_22;
      }

      return 0;
    }

    if (theString)
    {
      v18 = EAPClientModuleLookup(v10);
      if (v18 && (v23 = 0, (v19 = EAPClientModulePluginCopyPacketDescription(v18, a1, &v23)) != 0))
      {
        v20 = v19;
        CFStringAppendFormat(theString, 0, @"%@", v19);
        CFRelease(v20);
      }

      else
      {
        EAPPacketHeaderAppendDescription(a1, v7, theString);
        v21 = a1[4];
        v22 = EAPTypeStr(a1[4]);
        CFStringAppendFormat(theString, 0, @"%s (%d) Payload Length %d\n", v22, v21, (v7 - 5));
        print_data_cfstr(theString, (a1 + 5), v7 - 5);
      }

      goto LABEL_15;
    }

    return 1;
  }

  if (!theString)
  {
    return 1;
  }

  EAPPacketHeaderAppendDescription(a1, v7, theString);
  v12 = a1[4];
  v13 = EAPTypeStr(a1[4]);
  CFStringAppendFormat(theString, 0, @"%s (%d)\n", v13, v12);
  v14 = (v7 - 5);
  CFStringAppendFormat(theString, 0, @"Desired authentication types: ");
  if (v7 != 5)
  {
    v15 = a1 + 5;
    do
    {
      v16 = *v15++;
      v17 = EAPTypeStr(v16);
      CFStringAppendFormat(theString, 0, @"%s(%d) ", v17, v16);
      --v14;
    }

    while (v14);
  }

  CFStringAppendFormat(theString, 0, @"\n");
LABEL_15:
  v8 = 1;
  if (!theString)
  {
    return v8;
  }

LABEL_22:
  if (v7 < a2)
  {
    v11 = (a2 - v7);
    CFStringAppendFormat(theString, 0, @"EAP: %d bytes follow data:\n", v11);
    print_data_cfstr(theString, &a1[v7 + 4], v11);
  }

  return v8;
}

void EAPPacketHeaderAppendDescription(unsigned __int8 *a1, uint64_t a2, CFMutableStringRef theString)
{
  v5 = *a1;
  if ((v5 - 1) <= 3)
  {
    v6 = EAPCodeStr_str[(v5 - 1)];
  }

  else
  {
    v6 = "<unknown>";
  }

  CFStringAppendFormat(theString, 0, @"EAP %s (%d): Identifier %d Length %d\n", v6, v5, a1[1], a2, v3, v4);
}

uint64_t eaptls_server_key(uint64_t *a1, _DWORD *a2)
{
  v2 = *a1;
  *a2 = 0;
  if (!*(v2 + 141))
  {
    return 0;
  }

  *a2 = 32;
  return v2 + 174;
}

uint64_t eaptls_msk_copy_bytes(uint64_t *a1, _OWORD *a2, int a3)
{
  if (a3 < 64)
  {
    return 0;
  }

  v3 = *a1;
  if (!*(*a1 + 141))
  {
    return 0;
  }

  v4 = *(v3 + 142);
  v5 = *(v3 + 158);
  v6 = *(v3 + 190);
  a2[2] = *(v3 + 174);
  a2[3] = v6;
  *a2 = v4;
  a2[1] = v5;
  return 64;
}

CFArrayRef eaptls_require_props(uint64_t a1)
{
  if (*(*a1 + 128) != 3 || (*(*a1 + 140) & 1) != 0)
  {
    return 0;
  }

  values[1] = v1;
  values[2] = v2;
  values[0] = @"TLSUserTrustProceedCertificateChain";
  return CFArrayCreate(0, values, 1, MEMORY[0x277CBF128]);
}

const void *eaptls_user_name_copy(const __CFDictionary *Value)
{
  identityRef = 0;
  certificateRef = 0;
  if (Value)
  {
    Value = CFDictionaryGetValue(Value, @"TLSIdentityHandle");
  }

  if (EAPSecIdentityHandleCreateSecIdentity(Value, &identityRef) || SecIdentityCopyCertificate(identityRef, &certificateRef))
  {
    v1 = 0;
  }

  else
  {
    v1 = EAPSecCertificateCopyUserNameString(certificateRef);
  }

  my_CFRelease(&certificateRef);
  my_CFRelease(&identityRef);
  return v1;
}

void **eaptls_update_tls_session_data(void **result)
{
  if ((*(result + 141) & 1) == 0)
  {
    v1 = result;
    v3 = 0;
    EAPTLSSessionGetSessionResumed(*result, &v3);
    *(v1 + 280) = v3;
    *(v1 + 141) = 0;
    if (!EAPTLSSessionComputeSessionKey(*v1, "client EAP encryption", 21, v1 + 142, 128))
    {
      *(v1 + 141) = 1;
    }

    result = EAPTLSSessionGetNegotiatedTLSProtocolVersion(*v1);
    v1[36] = result;
    v2 = *(v1 + 140);
    if ((*(v1 + 141) & 1) != 0 && !*(v1 + 140))
    {
      v2 = *(v1 + 280);
      *(v1 + 140) = v2;
      *(v1 + 271) = v2;
    }

    if ((v2 & 1) != 0 && !v1[34])
    {
      return EAPTLSSessionCopyPeerCertificates(*v1, v1 + 34);
    }
  }

  return result;
}

_BYTE *eaptls_handshake(uint64_t *a1, const char *a2, _DWORD *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  if (*(*a1 + 271) == 1 && (*(v6 + 140) & 1) == 0)
  {
    v33 = EAPTLSSessionIsRevocationStatusCheckRequired(*v6);
    LogHandle = EAPLogGetLogHandle();
    v35 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v35))
    {
      v36 = "is";
      if (!v33)
      {
        v36 = "is not";
      }

      v37 = 136315138;
      v38 = v36;
      _os_log_impl(&dword_249EFB000, LogHandle, v35, "revocation status check %s required", &v37, 0xCu);
    }

    v7 = eaptls_verify_server(a1, a2, v33, a3);
    if (!*(v6 + 140))
    {
      goto LABEL_38;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = EAPTLSSessionHandshake(*v6);
  if (v8 != -9841)
  {
LABEL_15:
    v16 = v8;
    v37 = 0;
    if (EAPTLSSessionGetState(*v6, &v37))
    {
      v17 = 0;
    }

    else
    {
      v17 = v37 == 2;
    }

    if (v17)
    {
      eaptls_update_tls_session_data(v6);
    }

    if (v16 == -9803)
    {
      if (!*(v6 + 40))
      {
        goto LABEL_38;
      }
    }

    else if (v16)
    {
      v23 = EAPLogGetLogHandle();
      v24 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = EAPSSLErrorString(v16);
        v37 = 136315394;
        v38 = v25;
        v39 = 2048;
        v40 = v16;
        _os_log_impl(&dword_249EFB000, v23, v24, "SSLHandshake failed, %s (%ld)", &v37, 0x16u);
      }

      *(v6 + 124) = v16;
      my_CFRelease((v6 + 272));
      EAPTLSSessionCopyPeerCertificates(*v6, (v6 + 272));
      *(v6 + 104) = 2;
      EAPTLSSessionClose(*v6, v26);
      if (!*(v6 + 40))
      {
        if (v16 != -9802)
        {
          goto LABEL_38;
        }

        v28 = a2;
        v27 = 0;
        v29 = 0;
        v30 = 0;
        goto LABEL_37;
      }
    }

    else if ((*(v6 + 140) & 1) == 0)
    {
      my_CFRelease((v6 + 272));
      EAPTLSSessionCopyPeerCertificates(*v6, (v6 + 272));
      v18 = EAPTLSSessionIsRevocationStatusCheckRequired(*v6);
      v19 = EAPLogGetLogHandle();
      v20 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = "is";
        if (!v18)
        {
          v21 = "is not";
        }

        v37 = 136315138;
        v38 = v21;
        _os_log_impl(&dword_249EFB000, v19, v20, "revocation status check %s required", &v37, 0xCu);
      }

      v22 = eaptls_verify_server(a1, a2, v18, a3);
      if ((*(v6 + 140) & 1) == 0)
      {
        v7 = v22;
        v9 = EAPLogGetLogHandle();
        v10 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v9, v10))
        {
          goto LABEL_38;
        }

        LOWORD(v37) = 0;
        v11 = "trust_proceed is FALSE?";
        goto LABEL_8;
      }
    }

    v27 = *(v6 + 120);
    v28 = a2;
    v29 = (v6 + 40);
    v30 = (v6 + 72);
LABEL_37:
    v7 = EAPTLSPacketCreate(2, 13, v28, v27, v29, v30);
    goto LABEL_38;
  }

  if (*(v6 + 271) != 1)
  {
    *(v6 + 271) = 1;
    my_CFRelease((v6 + 272));
    EAPTLSSessionCopyPeerCertificates(*v6, (v6 + 272));
    v12 = EAPTLSSessionIsRevocationStatusCheckRequired(*v6);
    v13 = EAPLogGetLogHandle();
    v14 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = "is";
      if (!v12)
      {
        v15 = "is not";
      }

      v37 = 136315138;
      v38 = v15;
      _os_log_impl(&dword_249EFB000, v13, v14, "revocation status check %s required", &v37, 0xCu);
    }

    v7 = eaptls_verify_server(a1, a2, v12, a3);
    if (!*(v6 + 140))
    {
      goto LABEL_38;
    }

    v8 = EAPTLSSessionHandshake(*v6);
    goto LABEL_15;
  }

  v9 = EAPLogGetLogHandle();
  v10 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v9, v10))
  {
    LOWORD(v37) = 0;
    v11 = "AuthCompleted again?";
LABEL_8:
    _os_log_impl(&dword_249EFB000, v9, v10, v11, &v37, 2u);
  }

LABEL_38:
  v31 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t md5_init(uint64_t a1, void *a2, _DWORD *a3)
{
  *a3 = 0;
  *a2 = 0;
  return 0;
}

uint64_t md5_process(uint64_t a1, unsigned __int8 *a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  v28 = *MEMORY[0x277D85DE8];
  *a4 = 0;
  *a5 = 0;
  *a3 = 0;
  v5 = *a2;
  if (v5 == 4)
  {
    *a4 = 1;
    result = 2;
  }

  else if (v5 == 3)
  {
    result = 1;
  }

  else
  {
    result = 0;
    if (v5 == 1)
    {
      if (*(a1 + 64))
      {
        Length = EAPPacketGetLength(a2);
        v11 = Length;
        if (Length > 5)
        {
          if (a2[5] + 6 <= Length)
          {
            v22 = *(a1 + 48) + 22;
            v23 = malloc_type_malloc(v22, 0x5786EAF5uLL);
            v20 = v23;
            if (v23)
            {
              *v23 = 2;
              v23[1] = a2[1];
              EAPPacketSetLength(v23, v22);
              *(v20 + 2) = 4100;
              chap_md5(a2[1], *(a1 + 64), *(a1 + 72), a2 + 6, a2[5], v20 + 6);
              memmove(v20 + 22, *(a1 + 40), *(a1 + 48));
            }

            goto LABEL_16;
          }

          LogHandle = EAPLogGetLogHandle();
          v18 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(LogHandle, v18))
          {
            v19 = a2[5] + 6;
            v24 = 67109376;
            v25 = v11;
            v26 = 2048;
            v27 = v19;
            v14 = "value too short (length %d < %ld)";
            v15 = LogHandle;
            v16 = v18;
            goto LABEL_14;
          }
        }

        else
        {
          v12 = EAPLogGetLogHandle();
          v13 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v12, v13))
          {
            v24 = 67109376;
            v25 = v11;
            v26 = 2048;
            v27 = 6;
            v14 = "header too short (length %d < %ld)";
            v15 = v12;
            v16 = v13;
LABEL_14:
            _os_log_impl(&dword_249EFB000, v15, v16, v14, &v24, 0x12u);
          }
        }

        v20 = 0;
LABEL_16:
        result = 0;
        *a3 = v20;
        goto LABEL_17;
      }

      result = 0;
      *a4 = 3;
    }
  }

LABEL_17:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

CFArrayRef md5_require_props(uint64_t a1)
{
  if (*(a1 + 64))
  {
    return 0;
  }

  values[1] = v1;
  values[2] = v2;
  values[0] = @"UserPassword";
  return CFArrayCreate(0, values, 1, MEMORY[0x277CBF128]);
}

void md5_free_packet(int a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

uint64_t eapfast_server_key(uint64_t *a1, _DWORD *a2)
{
  v2 = *a1;
  *a2 = 0;
  if (!*(v2 + 33277))
  {
    return 0;
  }

  *a2 = 32;
  return v2 + 33310;
}

uint64_t eapfast_msk_copy_bytes(uint64_t a1, _OWORD *a2, int a3)
{
  if (a3 < 64 || !*(*a1 + 33277))
  {
    return 0;
  }

  v3 = *(*a1 + 33278);
  v4 = *(*a1 + 33294);
  v5 = *(*a1 + 33326);
  a2[2] = *(*a1 + 33310);
  a2[3] = v5;
  *a2 = v3;
  a2[1] = v4;
  return 64;
}

CFArrayRef eapfast_require_props(uint64_t *a1)
{
  v3 = *a1;
  if (*(*a1 + 140) != 3)
  {
    return 0;
  }

  if ((*(v3 + 33276) & 1) == 0)
  {
    values[1] = v1;
    values[2] = v2;
    values[0] = @"TLSUserTrustProceedCertificateChain";
    return CFArrayCreate(0, values, 1, MEMORY[0x277CBF128]);
  }

  if (*(v3 + 144) != 1)
  {
    return 0;
  }

  result = *(v3 + 312);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

__CFDictionary *eapfast_publish_props_copy(uint64_t *a1)
{
  cipherSuite = 0;
  v1 = *a1;
  v2 = (*a1 + 0x8000);
  v3 = *(*a1 + 33408);
  if (v3)
  {
    CFDataArray = EAPSecCertificateArrayCreateCFDataArray(v3);
    if (!CFDataArray)
    {
      return 0;
    }
  }

  else
  {
    CFDataArray = 0;
  }

  if (*(v1 + 144) == 1 && (v6 = *(v1 + 320)) != 0)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v6);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v5 = MutableCopy;
  if (CFDataArray)
  {
    CFDictionarySetValue(MutableCopy, @"TLSServerCertificateChain", CFDataArray);
    CFRelease(CFDataArray);
  }

  if (*v1)
  {
    SSLGetNegotiatedCipher(*v1, &cipherSuite);
    if (cipherSuite)
    {
      LODWORD(valuePtr) = cipherSuite;
      v8 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFDictionarySetValue(v5, @"TLSNegotiatedCipher", v8);
      CFRelease(v8);
    }
  }

  v9 = *MEMORY[0x277CBED28];
  if (v2[698] == 1)
  {
    CFDictionarySetValue(v5, @"EAPFASTPACWasProvisioned", *MEMORY[0x277CBED28]);
  }

  if (v2[684])
  {
    v10 = v9;
  }

  else
  {
    v10 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(v5, @"TLSSessionWasResumed", v10);
  if (*(v1 + 152))
  {
    v11 = *(v1 + 336);
    v15 = *(v1 + 328);
    if (v15)
    {
      if (v11)
      {
        valuePtr = CFStringCreateWithCString(0, v11, 0x600u);
        CFDictionarySetValue(v5, @"InnerEAPTypeName", valuePtr);
        my_CFRelease(&valuePtr);
      }

      valuePtr = CFNumberCreate(0, kCFNumberIntType, &v15);
      CFDictionarySetValue(v5, @"InnerEAPType", valuePtr);
      my_CFRelease(&valuePtr);
    }
  }

  if (*(v1 + 140) == 3 && (v2[508] & 1) == 0)
  {
    v12 = CFNumberCreate(0, kCFNumberSInt32Type, (v1 + 33272));
    CFDictionarySetValue(v5, @"TLSTrustClientStatus", v12);
    CFRelease(v12);
  }

  return v5;
}

__CFString *eapfast_copy_packet_description(unsigned __int8 *a1, _BYTE *a2)
{
  Length = EAPPacketGetLength(a1);
  *a2 = 0;
  if (*a1 - 1 > 1)
  {
    return 0;
  }

  v5 = Length;
  Mutable = CFStringCreateMutable(0, 0);
  v7 = Mutable;
  if (v5 > 5)
  {
    v9 = a1[5];
    v10 = "Response";
    if (*a1 == 1)
    {
      v10 = "Request";
    }

    v11 = " [";
    if (v9 < 8)
    {
      v11 = &unk_249F2FF71;
    }

    CFStringAppendFormat(Mutable, 0, @"EAP-FAST Version %d %s: Identifier %d Length %d Flags 0x%x%s", v9 & 7, v10, a1[1], v5, v9, v11);
    v12 = a1 + 6;
    v13 = (v5 - 6);
    v14 = a1[5];
    if ((v14 & 0x20) != 0)
    {
      CFStringAppendFormat(v7, 0, @" start");
      v14 = a1[5];
    }

    MessageLength = (v5 - 6);
    if ((v14 & 0x80) != 0 && v5 >= 0xA)
    {
      v12 = a1 + 10;
      v13 = (v5 - 10);
      MessageLength = EAPTLSLengthIncludedPacketGetMessageLength(a1);
      CFStringAppendFormat(v7, 0, @" length=%u", MessageLength);
      v14 = a1[5];
    }

    if ((v14 & 0x40) != 0)
    {
      CFStringAppendFormat(v7, 0, @" more");
      v14 = a1[5];
    }

    if (v14 >= 8)
    {
      v16 = " ]";
    }

    else
    {
      v16 = &unk_249F2FF71;
    }

    CFStringAppendFormat(v7, 0, @"%s Data Length %d\n", v16, v13);
    if (MessageLength <= 0x20000)
    {
      if ((a1[5] & 0x20) != 0 && v13 >= 5 && *v12 == 1024)
      {
        v17 = bswap32(v12[1]) >> 16;
        CFStringAppendFormat(v7, 0, @"Authority ID Data Length %d ID ", v17);
        if (v13 - 4 < v17)
        {
          CFStringAppendFormat(v7, 0, @"> available %d! ", v13 - 4);
          LODWORD(v17) = v13 - 4;
        }

        print_bytes_cfstr(v7, (v12 + 2), v17);
        CFStringAppendFormat(v7, 0, @"\n");
      }

      else
      {
        print_data_cfstr(v7, v12, v13);
      }

      *a2 = 1;
    }

    else
    {
      CFStringAppendFormat(v7, 0, @"potential DOS attack %u > %d\n", MessageLength, 0x20000);
      CFStringAppendFormat(v7, 0, @"bogus EAP Packet:\n");
      print_data_cfstr(v7, a1, v5);
    }
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"EAPTLSPacket header truncated %d < %d\n", v5, 6);
  }

  return v7;
}

_BYTE *eapfast_tunnel(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (!eapfast_eap())
  {
    return 0;
  }

  v4 = *(a2 + 1);
  v5 = *(v3 + 128);

  return EAPTLSPacketCreate2(2, 43, v4, v5, (v3 + 48), (v3 + 80), 0);
}

_BYTE *eapfast_handshake(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v76 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = *a1 + 0x8000;
  if (*(*a1 + 33406) == 1 && (*(*a1 + 33276) & 1) == 0)
  {
    v8 = eapfast_verify_server(a1, *(a2 + 1), a3);
    if (!*(v7 + 508))
    {
      goto LABEL_44;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = SSLHandshake(*v6);
  if (v9 != -9841)
  {
    goto LABEL_11;
  }

  if (*(v7 + 638) != 1)
  {
    *(v7 + 638) = 1;
    my_CFRelease(v6 + 4176);
    EAPSSLCopyPeerCertificates(*v6, v6 + 4176);
    v8 = eapfast_verify_server(a1, *(a2 + 1), a3);
    if (!*(v7 + 508))
    {
      goto LABEL_44;
    }

    v9 = SSLHandshake(*v6);
LABEL_11:
    v13 = v9;
    if (v9 == -9803)
    {
LABEL_39:
      if (*(v6 + 6))
      {
        v43 = *(v6 + 32);
        v44 = (v6 + 48);
        v45 = (v6 + 80);
      }

      else
      {
        v43 = 0;
        v44 = 0;
        v45 = 0;
      }

      v46 = EAPTLSPacketCreate(2, 43, *(a2 + 1), v43, v44, v45);
      goto LABEL_43;
    }

    if (v9)
    {
      LogHandle = EAPLogGetLogHandle();
      v17 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(LogHandle, v17))
      {
        *buf = 136315394;
        v73 = EAPSSLErrorString(v13);
        v74 = 1024;
        v75 = v13;
        v19 = "SSLHandshake failed, %s (%d)";
        v20 = buf;
LABEL_29:
        _os_log_impl(&dword_249EFB000, LogHandle, v17, v19, v20, 0x12u);
      }
    }

    else
    {
      if ((*(v7 + 508) & 1) == 0)
      {
        my_CFRelease(v6 + 4176);
        EAPSSLCopyPeerCertificates(*v6, v6 + 4176);
        v8 = eapfast_verify_server(a1, *(a2 + 1), a3);
        if ((*(v7 + 508) & 1) == 0)
        {
          v10 = EAPLogGetLogHandle();
          v11 = _SC_syslog_os_log_mapping();
          if (!os_log_type_enabled(v10, v11))
          {
            goto LABEL_44;
          }

          *buf = 0;
          v12 = "trust_proceed is FALSE?";
          goto LABEL_8;
        }
      }

      v64 = 0;
      v65 = 0;
      v62 = 64;
      LODWORD(v13) = ssl_get_server_client_random(*v6, v70, &v62);
      if (v13)
      {
        goto LABEL_30;
      }

      v63 = 48;
      v14 = *v6;
      v15 = SSLInternalMasterSecret();
      if (v15)
      {
        v13 = v15;
        LogHandle = EAPLogGetLogHandle();
        v17 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(LogHandle, v17))
        {
          v18 = EAPSSLErrorString(v13);
          *v66 = 136315394;
          v67 = v18;
          v68 = 1024;
          v69 = v13;
          v19 = "SSLInternalMasterSecret failed, %s (%d)";
LABEL_28:
          v20 = v66;
          goto LABEL_29;
        }
      }

      else
      {
        v21 = *v6;
        v22 = SSLGetCipherSizes();
        if (!v22)
        {
          v49 = 2 * (v65 + v64);
          if ((v49 + 72) < 0x101)
          {
            v50 = buf;
          }

          else
          {
            v50 = malloc_type_malloc(v49 + 72, 0x100004077774924uLL);
          }

          v51 = *v6;
          v13 = SSLInternal_PRF();
          if (v13)
          {
            v52 = EAPLogGetLogHandle();
            v53 = _SC_syslog_os_log_mapping();
            log = v52;
            v54 = v52;
            v55 = v53;
            if (os_log_type_enabled(v54, v53))
            {
              v56 = EAPSSLErrorString(v13);
              *v66 = 136315394;
              v67 = v56;
              v68 = 1024;
              v69 = v13;
              _os_log_impl(&dword_249EFB000, log, v55, "SSLInternal_PRF failed, %s (%d)\n", v66, 0x12u);
            }
          }

          else
          {
            v57 = &v50[v49];
            v58 = *v57;
            v59 = *(v57 + 1);
            *(v6 + 33501) = *(v57 + 4);
            *(v6 + 33469) = v58;
            *(v6 + 33485) = v59;
            *(v6 + 33509) = *&v50[v49 + 40];
            *(v6 + 33525) = *(v57 + 56);
          }

          if (v50 && v50 != buf)
          {
            free(v50);
          }

          if (!v13)
          {
            *(v6 + 144) = 1;
            v70[0] = 32;
            LOBYTE(v71) = 0;
            v60 = *v6;
            if (!SSLGetResumableSessionInfo())
            {
              *(v7 + 684) = v71 != 0;
            }

            if (!eapfast_eap())
            {
              goto LABEL_44;
            }

            v46 = EAPTLSPacketCreate2(2, 43, *(a2 + 1), *(v6 + 32), v6 + 6, v6 + 20, 0);
LABEL_43:
            v8 = v46;
            goto LABEL_44;
          }

          goto LABEL_30;
        }

        v13 = v22;
        LogHandle = EAPLogGetLogHandle();
        v17 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(LogHandle, v17))
        {
          v23 = EAPSSLErrorString(v13);
          *v66 = 136315394;
          v67 = v23;
          v68 = 1024;
          v69 = v13;
          v19 = "SSLGetCipherSizes failed, %s (%d)";
          goto LABEL_28;
        }
      }
    }

LABEL_30:
    *(v6 + 34) = v13;
    my_CFRelease(v6 + 4176);
    EAPSSLCopyPeerCertificates(*v6, v6 + 4176);
    *(v6 + 28) = 2;
    SSLClose(*v6);
    if (v13 == -9825)
    {
      v24 = *(v7 + 688);
      if (v24)
      {
        v25 = *(a1 + 40);
        v26 = *(a1 + 48);
        v71 = 0;
        Value = CFDictionaryGetValue(v24, @"PACKeyKeychainItemID");
        v28 = CFDictionaryGetValue(v24, @"AuthorityID");
        v29 = pac_list_copy();
        v70[0] = v29;
        if (v29)
        {
          v30 = v29;
          BytePtr = CFDataGetBytePtr(v28);
          Length = CFDataGetLength(v28);
          pac = pac_list_find_pac(v30, BytePtr, Length, v25, v26);
          if (pac != -1)
          {
            v34 = pac;
            MutableCopy = CFArrayCreateMutableCopy(0, 0, v30);
            v71 = MutableCopy;
            CFArrayRemoveValueAtIndex(MutableCopy, v34);
            v36 = EAPSecKeychainPasswordItemRemove(0, Value);
            if (v36)
            {
              v37 = v36;
              v38 = EAPLogGetLogHandle();
              v39 = _SC_syslog_os_log_mapping();
              if (os_log_type_enabled(v38, v39))
              {
                v40 = EAPSecurityErrorString(v37);
                *buf = 136315394;
                v73 = v40;
                v74 = 1024;
                v75 = v37;
                _os_log_impl(&dword_249EFB000, v38, v39, "EAP-FAST: EAPSecKeychainPasswordItemRemove failed, %s (%d)", buf, 0x12u);
              }
            }

            v41 = *MEMORY[0x277CBF040];
            v42 = *MEMORY[0x277CBF010];
            CFPreferencesSetValue(@"PACList", MutableCopy, @"com.apple.network.eapclient.eapfast", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
            my_CFRelease(&v71);
            CFPreferencesSynchronize(@"com.apple.network.eapclient.eapfast", v41, v42);
          }
        }

        my_CFRelease(v70);
      }
    }

    goto LABEL_39;
  }

  v10 = EAPLogGetLogHandle();
  v11 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v10, v11))
  {
    *buf = 0;
    v12 = "AuthCompleted again?";
LABEL_8:
    _os_log_impl(&dword_249EFB000, v10, v11, v12, buf, 2u);
  }

LABEL_44:
  v47 = *MEMORY[0x277D85DE8];
  return v8;
}

void make_error(uint64_t a1, unsigned int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 12);
  if (*(a1 + 8) - v3 <= 7)
  {
    LogHandle = EAPLogGetLogHandle();
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v6))
    {
      v7 = *(a1 + 8) - *(a1 + 12);
      v11[0] = 67109376;
      v11[1] = 8;
      v12 = 1024;
      v13 = v7;
      _os_log_impl(&dword_249EFB000, LogHandle, v6, "EAP-FAST: BufferAdvanceWritePtr failed: %d > %d", v11, 0xEu);
    }

    v8 = EAPLogGetLogHandle();
    v9 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v8, v9))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&dword_249EFB000, v8, v9, "EAP-FAST: make_error(): buffer too small", v11, 2u);
    }
  }

  else
  {
    v4 = (*a1 + v3);
    *(a1 + 12) = v3 + 8;
    *v4 = 67110272;
    v4[1] = bswap32(a2);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void make_nak(uint64_t a1, _WORD *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 12);
  if (*(a1 + 8) - v3 <= 9)
  {
    LogHandle = EAPLogGetLogHandle();
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v6))
    {
      v7 = *(a1 + 8) - *(a1 + 12);
      v11[0] = 67109376;
      v11[1] = 10;
      v12 = 1024;
      v13 = v7;
      _os_log_impl(&dword_249EFB000, LogHandle, v6, "EAP-FAST: BufferAdvanceWritePtr failed: %d > %d", v11, 0xEu);
    }

    v8 = EAPLogGetLogHandle();
    v9 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v8, v9))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&dword_249EFB000, v8, v9, "EAP-FAST: make_nak(): buffer too small", v11, 2u);
    }
  }

  else
  {
    v4 = *a1 + v3;
    *(a1 + 12) = v3 + 10;
    *v4 = 100664448;
    *(v4 + 8) = *a2 & 0xFF3F;
    *(v4 + 4) = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
}

void make_intermediate_result(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 12);
  if (*(a1 + 8) - v2 <= 5)
  {
    LogHandle = EAPLogGetLogHandle();
    v5 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v5))
    {
      v6 = *(a1 + 8) - *(a1 + 12);
      v10[0] = 67109376;
      v10[1] = 6;
      v11 = 1024;
      v12 = v6;
      _os_log_impl(&dword_249EFB000, LogHandle, v5, "EAP-FAST: BufferAdvanceWritePtr failed: %d > %d", v10, 0xEu);
    }

    v7 = EAPLogGetLogHandle();
    v8 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v7, v8))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&dword_249EFB000, v7, v8, "EAP-FAST: make_intermediate_result(): buffer too small", v10, 2u);
    }
  }

  else
  {
    v3 = *a1 + v2;
    *(a1 + 12) = v2 + 6;
    *v3 = 33557120;
    *(v3 + 4) = 256;
  }

  v9 = *MEMORY[0x277D85DE8];
}

BOOL process_crypto_binding(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v35 = 0;
  if ((*(a3 + 8) - *(a3 + 12)) > 0x3B)
  {
    if (*(a2 + 5) != 1)
    {
      LogHandle = EAPLogGetLogHandle();
      v16 = _SC_syslog_os_log_mapping();
      result = os_log_type_enabled(LogHandle, v16);
      if (!result)
      {
        goto LABEL_16;
      }

      v18 = *(a2 + 5);
      *buf = 67109376;
      *&buf[4] = v18;
      *&buf[8] = 1024;
      *&buf[10] = 1;
      v8 = "EAP-FAST: process_crypto_binding version is %d != %d";
LABEL_11:
      v9 = buf;
      v10 = LogHandle;
      v11 = v16;
      goto LABEL_14;
    }

    if (*(a2 + 6) != *(a1 + 133))
    {
      v19 = EAPLogGetLogHandle();
      v20 = _SC_syslog_os_log_mapping();
      result = os_log_type_enabled(v19, v20);
      if (!result)
      {
        goto LABEL_16;
      }

      v21 = *(a2 + 6);
      v22 = *(a1 + 133);
      *buf = 67109376;
      *&buf[4] = v21;
      *&buf[8] = 1024;
      *&buf[10] = v22;
      v8 = "EAP-FAST: process_crypto_binding received_version is %d != %d";
      v9 = buf;
      v10 = v19;
      v11 = v20;
LABEL_14:
      v12 = 14;
      goto LABEL_15;
    }

    if (*(a2 + 7))
    {
      LogHandle = EAPLogGetLogHandle();
      v16 = _SC_syslog_os_log_mapping();
      result = os_log_type_enabled(LogHandle, v16);
      if (!result)
      {
        goto LABEL_16;
      }

      v17 = *(a2 + 7);
      *buf = 67109376;
      *&buf[4] = v17;
      *&buf[8] = 1024;
      *&buf[10] = 0;
      v8 = "EAP-FAST: process_crypto_binding sub_type %d != %d";
      goto LABEL_11;
    }

    v24 = EAPClientModulePluginSessionKey(*(a1 + 152), a1 + 160, &v35);
    if (v24)
    {
      v25 = v35;
      if (v35 < 0x21)
      {
        __memcpy_chk();
        if (v25 != 32)
        {
          bzero(&v36 + v25, 32 - v25);
        }
      }

      else
      {
        v35 = 32;
        v26 = v24[1];
        v36 = *v24;
        v37 = v26;
      }
    }

    else
    {
      if (*(a1 + 33467) == 1)
      {
        v27 = EAPLogGetLogHandle();
        v28 = _SC_syslog_os_log_mapping();
        result = os_log_type_enabled(v27, v28);
        if (!result)
        {
          goto LABEL_16;
        }

        *buf = 0;
        v8 = "EAP-FAST: anonymous PAC provisioning requires MSCHAPv2 - possible malicious server";
        v9 = buf;
        goto LABEL_34;
      }

      v36 = 0u;
      v37 = 0u;
    }

    T_PRF((a1 + 33469), 40, "Inner Methods Compound Keys", 0x1Bu, &v36, 32, buf, 60);
    v29 = *a3 + *(a3 + 12);
    v30 = *a2;
    v31 = a2[1];
    *(v29 + 32) = *(a2 + 4);
    *v29 = v30;
    *(v29 + 16) = v31;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    CCHmac(0, v40, 0x14uLL, v29, 0x3CuLL, &macOut);
    if (cc_cmp_safe())
    {
      v27 = EAPLogGetLogHandle();
      v28 = _SC_syslog_os_log_mapping();
      result = os_log_type_enabled(v27, v28);
      if (!result)
      {
        goto LABEL_16;
      }

      v34 = 0;
      v8 = "EAP-FAST: process_crypto_binding Compound MAC is incorrect";
    }

    else
    {
      *v29 = 939527296;
      *(v29 + 6) = *(a1 + 134);
      *(v29 + 39) |= 1u;
      *(v29 + 7) = 1;
      CCHmac(0, v40, 0x14uLL, v29, 0x3CuLL, &macOut);
      v32 = macOut;
      *(v29 + 56) = v42;
      *(v29 + 40) = v32;
      if (BufferAdvanceWritePtr(a3, 60))
      {
        v33 = *&buf[16];
        *(a1 + 33469) = *buf;
        *(a1 + 33485) = v33;
        *(a1 + 33501) = v39;
        result = 1;
        goto LABEL_16;
      }

      v27 = EAPLogGetLogHandle();
      v28 = _SC_syslog_os_log_mapping();
      result = os_log_type_enabled(v27, v28);
      if (!result)
      {
        goto LABEL_16;
      }

      v34 = 0;
      v8 = "EAP-FAST: process_crypto_binding: buffer too small";
    }

    v9 = &v34;
LABEL_34:
    v10 = v27;
    v11 = v28;
    v12 = 2;
    goto LABEL_15;
  }

  v4 = EAPLogGetLogHandle();
  v5 = _SC_syslog_os_log_mapping();
  result = os_log_type_enabled(v4, v5);
  if (result)
  {
    v7 = *(a3 + 8) - *(a3 + 12);
    *buf = 67109376;
    *&buf[4] = v7;
    *&buf[8] = 2048;
    *&buf[10] = 60;
    v8 = "EAP-FAST: process_crypto_binding: buffer too small %d < %ld";
    v9 = buf;
    v10 = v4;
    v11 = v5;
    v12 = 18;
LABEL_15:
    _os_log_impl(&dword_249EFB000, v10, v11, v8, v9, v12);
    result = 0;
  }

LABEL_16:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void eapfast_compute_session_key(uint64_t a1)
{
  T_PRF((a1 + 33469), 40, "Session Key Generating Function", 0x1Fu, 0, 0, (a1 + 33278), 64);
  T_PRF((a1 + 33469), 40, "Extended Session Key Generating Function", 0x28u, 0, 0, (a1 + 33342), 64);
  *(a1 + 33277) = 1;
}

void make_pac_request(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 12);
  if (*(a1 + 8) - v2 <= 9)
  {
    LogHandle = EAPLogGetLogHandle();
    v5 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v5))
    {
      v6 = *(a1 + 8) - *(a1 + 12);
      v10[0] = 67109376;
      v10[1] = 10;
      v11 = 1024;
      v12 = v6;
      _os_log_impl(&dword_249EFB000, LogHandle, v5, "EAP-FAST: BufferAdvanceWritePtr failed: %d > %d", v10, 0xEu);
    }

    v7 = EAPLogGetLogHandle();
    v8 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v7, v8))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&dword_249EFB000, v7, v8, "EAP-FAST: make_pac_request(): buffer too small", v10, 2u);
    }
  }

  else
  {
    v3 = *a1 + v2;
    *(a1 + 12) = v2 + 10;
    *v3 = 0x2000A0006000B00;
    *(v3 + 8) = 256;
  }

  v9 = *MEMORY[0x277D85DE8];
}

BOOL BufferAdvanceWritePtr(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 12);
  v5 = *(a1 + 8) - v4;
  if (v5 < a2)
  {
    LogHandle = EAPLogGetLogHandle();
    v7 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(LogHandle, v7))
    {
      v8 = *(a1 + 8) - *(a1 + 12);
      v11[0] = 67109376;
      v11[1] = a2;
      v12 = 1024;
      v13 = v8;
      _os_log_impl(&dword_249EFB000, LogHandle, v7, "EAP-FAST: BufferAdvanceWritePtr failed: %d > %d", v11, 0xEu);
    }
  }

  else
  {
    *(a1 + 12) = v4 + a2;
  }

  result = v5 >= a2;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t peap_server_key(uint64_t *a1, _DWORD *a2)
{
  v2 = *a1;
  *a2 = 0;
  if ((*(v2 + 328) != 6 || *(v2 + 124) || *(v2 + 104) != 1) && (*(v2 + 1397) != 1 || *(v2 + 144) != 1))
  {
    return 0;
  }

  *a2 = 32;
  return v2 + 1430;
}

uint64_t peap_msk_copy_bytes(uint64_t *a1, _OWORD *a2, int a3)
{
  if (a3 < 64)
  {
    return 0;
  }

  v3 = *a1;
  if ((*(*a1 + 328) != 6 || *(v3 + 124) || *(v3 + 104) != 1) && (*(v3 + 1397) != 1 || *(v3 + 144) != 1))
  {
    return 0;
  }

  v4 = (v3 + 1398);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[3];
  a2[2] = v4[2];
  a2[3] = v7;
  *a2 = v5;
  a2[1] = v6;
  return 64;
}

CFArrayRef peap_require_props(uint64_t *a1)
{
  v3 = *a1;
  if (*(*a1 + 136) != 3)
  {
    return 0;
  }

  if ((*(v3 + 1396) & 1) == 0)
  {
    values[1] = v1;
    values[2] = v2;
    values[0] = @"TLSUserTrustProceedCertificateChain";
    return CFArrayCreate(0, values, 1, MEMORY[0x277CBF128]);
  }

  if (*(v3 + 140) != 1)
  {
    return 0;
  }

  result = *(v3 + 312);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

__CFDictionary *peap_publish_props_copy(uint64_t *a1)
{
  cipherSuite = 0;
  v1 = *a1;
  v2 = *(*a1 + 1528);
  if (!v2)
  {
    return 0;
  }

  CFDataArray = EAPSecCertificateArrayCreateCFDataArray(v2);
  v14 = CFDataArray;
  if (!CFDataArray)
  {
    return 0;
  }

  v4 = CFDataArray;
  if (*(v1 + 140) == 1 && (v5 = *(v1 + 320)) != 0)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v5);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v7 = MutableCopy;
  CFDictionarySetValue(MutableCopy, @"TLSServerCertificateChain", v4);
  v8 = MEMORY[0x277CBED28];
  if (!*(v1 + 1537))
  {
    v8 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(v7, @"TLSSessionWasResumed", *v8);
  my_CFRelease(&v14);
  SSLGetNegotiatedCipher(*v1, &cipherSuite);
  if (cipherSuite)
  {
    LODWORD(valuePtr) = cipherSuite;
    v9 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(v7, @"TLSNegotiatedCipher", v9);
    CFRelease(v9);
  }

  if (*(v1 + 152))
  {
    v10 = *(v1 + 336);
    v15 = *(v1 + 328);
    if (v15)
    {
      if (v10)
      {
        valuePtr = CFStringCreateWithCString(0, v10, 0x600u);
        CFDictionarySetValue(v7, @"InnerEAPTypeName", valuePtr);
        my_CFRelease(&valuePtr);
      }

      valuePtr = CFNumberCreate(0, kCFNumberIntType, &v15);
      CFDictionarySetValue(v7, @"InnerEAPType", valuePtr);
      my_CFRelease(&valuePtr);
    }
  }

  if (*(v1 + 136) == 3 && (*(v1 + 1396) & 1) == 0)
  {
    v11 = CFNumberCreate(0, kCFNumberSInt32Type, (v1 + 1392));
    CFDictionarySetValue(v7, @"TLSTrustClientStatus", v11);
    CFRelease(v11);
  }

  return v7;
}

__CFString *peap_copy_packet_description(unsigned __int8 *a1, _BYTE *a2)
{
  Length = EAPPacketGetLength(a1);
  *a2 = 0;
  if (*a1 - 1 > 1)
  {
    return 0;
  }

  v5 = Length;
  Mutable = CFStringCreateMutable(0, 0);
  v7 = Mutable;
  if (v5 > 5)
  {
    v9 = a1[5];
    v10 = "Response";
    if (*a1 == 1)
    {
      v10 = "Request";
    }

    v11 = " [";
    if (v9 < 8)
    {
      v11 = &unk_249F2FF71;
    }

    CFStringAppendFormat(Mutable, 0, @"PEAP Version %d %s: Identifier %d Length %d Flags 0x%x%s", v9 & 7, v10, a1[1], v5, v9, v11);
    v12 = (a1 + 6);
    v13 = (v5 - 6);
    v14 = a1[5];
    if ((v14 & 0x20) != 0)
    {
      CFStringAppendFormat(v7, 0, @" start");
      v14 = a1[5];
    }

    MessageLength = (v5 - 6);
    if ((v14 & 0x80) != 0 && v5 >= 0xA)
    {
      v12 = (a1 + 10);
      v13 = (v5 - 10);
      MessageLength = EAPTLSLengthIncludedPacketGetMessageLength(a1);
      CFStringAppendFormat(v7, 0, @" length=%u", MessageLength);
      v14 = a1[5];
    }

    if ((v14 & 0x40) != 0)
    {
      CFStringAppendFormat(v7, 0, @" more");
      v14 = a1[5];
    }

    if (v14 >= 8)
    {
      v16 = " ]";
    }

    else
    {
      v16 = &unk_249F2FF71;
    }

    CFStringAppendFormat(v7, 0, @"%s Data Length %d\n", v16, v13);
    if (MessageLength <= 0x20000)
    {
      print_data_cfstr(v7, v12, v13);
      *a2 = 1;
    }

    else
    {
      CFStringAppendFormat(v7, 0, @"potential DOS attack %u > %d\n", MessageLength, 0x20000);
      CFStringAppendFormat(v7, 0, @"bogus EAP Packet:\n");
      print_data_cfstr(v7, a1, v5);
    }
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"EAPTLSPacket header truncated %d < %d\n", v5, 6);
  }

  return v7;
}

_BYTE *peap_tunnel()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v64 = *MEMORY[0x277D85DE8];
  v6 = *v0;
  v59 = 0;
  v57 = 0;
  processed = 0;
  v56 = 2048;
  v7 = 2 * (*(v6 + 124) == 0);
  if (*(v6 + 76) != *(v3 + 1))
  {
    *(v6 + 24) = 0;
    v8 = &v63[v7];
    v11 = SSLRead(*v6, v8, 2048 - v7 * 2, &processed);
    if (v11)
    {
      v12 = v11;
      LogHandle = EAPLogGetLogHandle();
      v14 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(LogHandle, v14))
      {
        v15 = EAPSSLErrorString(v12);
        *buf = 136315394;
        *v61 = v15;
        *&v61[8] = 1024;
        *&v61[10] = v12;
        _os_log_impl(&dword_249EFB000, LogHandle, v14, "SSLRead failed, %s (%d)", buf, 0x12u);
      }

      *(v6 + 104) = 2;
      *(v6 + 132) = v12;
      goto LABEL_80;
    }

    if (!*(v6 + 124))
    {
      v19 = processed;
      if (processed < 5 || *v8 != 1 || v8[4] != 33 || (Length = EAPPacketGetLength(&v63[v7]), v19 = processed, processed != Length))
      {
        v63[0] = *v4;
        processed = v19 + 4;
        v8 = v63;
        EAPPacketSetLength(v63, (v19 + 4));
      }
    }

    if (*(v5 + 8))
    {
      Mutable = CFStringCreateMutable(0, 0);
      IsValid = EAPPacketIsValid(v8, processed, Mutable);
      if (Mutable)
      {
        v23 = EAPLogGetLogHandle();
        v24 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = " Invalid";
          if (IsValid)
          {
            v25 = &unk_249F2FF71;
          }

          *buf = 136315394;
          *v61 = v25;
          *&v61[8] = 2112;
          *&v61[10] = Mutable;
          _os_log_impl(&dword_249EFB000, v23, v24, "PEAP Receive EAP Payload%s:\n%@", buf, 0x16u);
        }

        CFRelease(Mutable);
      }

      if (IsValid)
      {
        goto LABEL_3;
      }
    }

    else if (EAPPacketIsValid(v8, processed, 0))
    {
      goto LABEL_3;
    }

    if (*(v5 + 8))
    {
      goto LABEL_80;
    }

    v26 = EAPLogGetLogHandle();
    v27 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_80;
    }

    *buf = 0;
    v28 = "PEAP Receive EAP Payload Invalid";
    v29 = v26;
    v30 = v27;
    v31 = 2;
    goto LABEL_69;
  }

  memoryBufferClear(v6 + 8);
  v8 = *(v6 + 352);
  if (!v8)
  {
    goto LABEL_80;
  }

LABEL_3:
  v9 = *v8;
  if (v9 <= 2)
  {
    if (v9 != 1)
    {
      if (v9 != 2)
      {
        goto LABEL_80;
      }

      goto LABEL_6;
    }

    v32 = v8[4];
    if (v32 != 33)
    {
      if (v32 == 2)
      {
        v33 = v56;
        v34 = v8[1];
        v37 = 2;
        v35 = 0;
        v36 = 0;
      }

      else
      {
        if (v32 != 1)
        {
LABEL_6:
          v10 = peap_eap_process(v5, v8, v62, &v56, v2, &v59);
LABEL_43:
          v17 = v10;
          goto LABEL_44;
        }

        v33 = v56;
        v34 = v8[1];
        v35 = *(v5 + 40);
        v36 = *(v5 + 48);
        v37 = 1;
      }

      v10 = EAPPacketCreate(v62, v33, 2, v34, v37, v35, v36, &v56);
      goto LABEL_43;
    }

    v48 = EAPPacketGetLength(v8);
    if (v48 > 8)
    {
      if ((*(v8 + 5) & 0xFF3F) != 0x300)
      {
        goto LABEL_80;
      }

      v52 = *(v8 + 9);
      v53 = __rev16(v52);
      if (v53 == 1 || v53 == 2)
      {
        *(v6 + 144) = v53;
      }

      v17 = EAPPacketCreate(v62, v56, 2, v8[1], 33, 0, 6, &v56);
      v18 = 0;
      *(v17 + 5) = 33555328;
      *(v17 + 9) = v52;
      if (!v17)
      {
        goto LABEL_75;
      }

      goto LABEL_45;
    }

    v49 = v48;
    v50 = EAPLogGetLogHandle();
    v51 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v50, v51))
    {
      goto LABEL_80;
    }

    *buf = 67109376;
    *v61 = v49;
    *&v61[4] = 2048;
    *&v61[6] = 9;
    v28 = "packet too short %d < %ld";
    v29 = v50;
    v30 = v51;
    v31 = 18;
LABEL_69:
    _os_log_impl(&dword_249EFB000, v29, v30, v28, buf, v31);
    goto LABEL_80;
  }

  if (v9 == 3)
  {
    v17 = peap_eap_process(v5, v8, v62, &v56, v2, &v59);
    v18 = *(v6 + 124) == 1;
    if (v17)
    {
      goto LABEL_45;
    }

LABEL_75:
    if (v18)
    {
      goto LABEL_76;
    }

LABEL_80:
    result = 0;
    goto LABEL_81;
  }

  if (v9 != 4)
  {
    goto LABEL_80;
  }

  v16 = peap_eap_process(v5, v8, v62, &v56, v2, &v59);
  v17 = v16;
  if (*(v6 + 124) == 1)
  {
    *(v6 + 144) = 2;
    v18 = 1;
    if (v16)
    {
      goto LABEL_45;
    }

    goto LABEL_75;
  }

LABEL_44:
  v18 = 0;
  if (!v17)
  {
    goto LABEL_75;
  }

LABEL_45:
  if (*(v5 + 8) == 1)
  {
    v38 = CFStringCreateMutable(0, 0);
    v39 = EAPPacketGetLength(v17);
    EAPPacketIsValid(v17, v39, v38);
    v40 = EAPLogGetLogHandle();
    v41 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v40, v41))
    {
      *buf = 138412290;
      *v61 = v38;
      _os_log_impl(&dword_249EFB000, v40, v41, "PEAP Send EAP Payload:\n%@", buf, 0xCu);
    }

    CFRelease(v38);
  }

  v42 = v56;
  if (!*(v6 + 124) && v56 >= 5 && *v17 == 2 && v17[4] == 33)
  {
    v7 = 0;
  }

  v43 = *(v6 + 352);
  if (v43 && v43 != (v6 + 360))
  {
    free(v43);
    v42 = v56;
  }

  *(v6 + 352) = 0;
  v44 = SSLWrite(*v6, &v17[v7 * 2], (v42 - v7 * 2), &v57);
  if (v17 == v62)
  {
LABEL_60:
    if (!v44)
    {
      goto LABEL_76;
    }

    goto LABEL_63;
  }

  if (v59 == 1)
  {
    EAPClientModulePluginFreePacket(*(v6 + 152), v6 + 160, v17);
    goto LABEL_60;
  }

  free(v17);
  if (!v44)
  {
    goto LABEL_76;
  }

LABEL_63:
  v45 = EAPLogGetLogHandle();
  v46 = _SC_syslog_os_log_mapping();
  if (!os_log_type_enabled(v45, v46))
  {
    goto LABEL_75;
  }

  v47 = EAPSSLErrorString(v44);
  *buf = 136315394;
  *v61 = v47;
  *&v61[8] = 2048;
  *&v61[10] = v44;
  _os_log_impl(&dword_249EFB000, v45, v46, "SSLWrite failed, %s (%ld)", buf, 0x16u);
  if (!v18)
  {
    goto LABEL_80;
  }

LABEL_76:
  result = EAPTLSPacketCreate2(2, 25, *(v4 + 1), *(v6 + 120), (v6 + 40), (v6 + 72), 0);
  if (result && *(v6 + 40) && *(v6 + 128) == 1)
  {
    result[5] |= 0x80u;
  }

LABEL_81:
  v55 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *peap_handshake(uint64_t *a1, char a2, _DWORD *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  if (*(*a1 + 1526) == 1 && (*(v6 + 1396) & 1) == 0)
  {
    v7 = peap_verify_server(a1, a2, a3);
    if (!*(v6 + 1396))
    {
      goto LABEL_32;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = SSLHandshake(*v6);
  if (v8 != -9841)
  {
    goto LABEL_11;
  }

  if (*(v6 + 1526) != 1)
  {
    *(v6 + 1526) = 1;
    my_CFRelease((v6 + 1528));
    EAPSSLCopyPeerCertificates(*v6, (v6 + 1528));
    v7 = peap_verify_server(a1, a2, a3);
    if (!*(v6 + 1396))
    {
      goto LABEL_32;
    }

    v8 = SSLHandshake(*v6);
LABEL_11:
    v12 = v8;
    if (v8 == -9803)
    {
      if (!*(v6 + 40))
      {
        goto LABEL_32;
      }
    }

    else if (v8)
    {
      LogHandle = EAPLogGetLogHandle();
      v20 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(LogHandle, v20))
      {
        *buf = 136315394;
        v29 = EAPSSLErrorString(v12);
        v30 = 1024;
        LODWORD(v31) = v12;
        _os_log_impl(&dword_249EFB000, LogHandle, v20, "SSLHandshake failed, %s (%d)", buf, 0x12u);
      }

      *(v6 + 132) = v12;
      my_CFRelease((v6 + 1528));
      EAPSSLCopyPeerCertificates(*v6, (v6 + 1528));
      *(v6 + 104) = 2;
      SSLClose(*v6);
      if (!*(v6 + 40))
      {
        if (v12 != -9802)
        {
          goto LABEL_32;
        }

        v21 = a2;
        v22 = 0;
        v23 = 0;
        v24 = 0;
LABEL_31:
        v7 = EAPTLSPacketCreate(2, 25, v21, v22, v23, v24);
        goto LABEL_32;
      }
    }

    else
    {
      if ((*(v6 + 1396) & 1) == 0)
      {
        my_CFRelease((v6 + 1528));
        EAPSSLCopyPeerCertificates(*v6, (v6 + 1528));
        v13 = peap_verify_server(a1, a2, a3);
        if ((*(v6 + 1396) & 1) == 0)
        {
          v7 = v13;
          v9 = EAPLogGetLogHandle();
          v10 = _SC_syslog_os_log_mapping();
          if (!os_log_type_enabled(v9, v10))
          {
            goto LABEL_32;
          }

          *buf = 0;
          v11 = "trust_proceed is FALSE?";
          goto LABEL_8;
        }
      }

      *(v6 + 140) = 1;
      *(v6 + 1397) = 0;
      v14 = *v6;
      v15 = EAPTLSComputeKeyData();
      if (v15)
      {
        v16 = v15;
        v17 = EAPLogGetLogHandle();
        v18 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v17, v18))
        {
          *buf = 136315394;
          v29 = EAPSSLErrorString(v16);
          v30 = 2048;
          v31 = v16;
          _os_log_impl(&dword_249EFB000, v17, v18, "EAPTLSComputeSessionKey failed, %s, (%ld)", buf, 0x16u);
        }
      }

      else
      {
        *(v6 + 1397) = 1;
      }

      v25 = *v6;
      if (!SSLGetResumableSessionInfo())
      {
        *(v6 + 1537) = 0;
      }
    }

    v22 = *(v6 + 120);
    v21 = a2;
    v23 = (v6 + 40);
    v24 = (v6 + 72);
    goto LABEL_31;
  }

  v9 = EAPLogGetLogHandle();
  v10 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v9, v10))
  {
    *buf = 0;
    v11 = "AuthCompleted again?";
LABEL_8:
    _os_log_impl(&dword_249EFB000, v9, v10, v11, buf, 2u);
  }

LABEL_32:
  v26 = *MEMORY[0x277D85DE8];
  return v7;
}

void save_last_packet(uint64_t a1, const void *a2)
{
  v2 = *(a1 + 352);
  if (v2 != a2)
  {
    Length = EAPPacketGetLength(a2);
    v6 = Length;
    v7 = Length < 0x401 ? (a1 + 360) : malloc_type_malloc(Length, 0x100004052888210uLL);
    *(a1 + 352) = v7;
    memcpy(v7, a2, v6);
    if (v2)
    {
      if (v2 != (a1 + 360))
      {

        free(v2);
      }
    }
  }
}

NSObject *_SIMCopyIMSI(const __CFDictionary *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(MEMORY[0x277CC37B0]);
  if (v3)
  {
    if (a1 && (Value = CFDictionaryGetValue(a1, *MEMORY[0x277CC42A8]), TypeID = CFStringGetTypeID(), Value) && CFGetTypeID(Value) == TypeID)
    {
      v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:Value];
      v7 = SubscriptionContextMatchingSlotGet(v3, v6);

      if (!v7)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v7 = SubscriptionContextUserPreferredGet(v3);
      if (!v7)
      {
LABEL_6:
        v8 = EAPLogGetLogHandle();
        v9 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v8, v9))
        {
          *buf = 0;
          v10 = "failed to get the preferred subscription context";
LABEL_15:
          _os_log_impl(&dword_249EFB000, v8, v9, v10, buf, 2u);
          goto LABEL_16;
        }

        goto LABEL_16;
      }
    }

    v18 = 0;
    v11 = [v3 copyMobileSubscriberIdentity:v7 error:&v18];
    v12 = v18;
    if (!v12)
    {
      v8 = v11;

      v15 = v8;
      goto LABEL_17;
    }

    v8 = v12;
    v13 = EAPLogGetLogHandle();
    v14 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v13, v14))
    {
      *buf = 138412290;
      v20 = v8;
      _os_log_impl(&dword_249EFB000, v13, v14, "CoreTelephonyClient.copyMobileSubscriberIdentity failed with error: %@", buf, 0xCu);
    }

    goto LABEL_16;
  }

  v8 = EAPLogGetLogHandle();
  v9 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v8, v9))
  {
    *buf = 0;
    v10 = "failed to get the CoreTelephonyClient instance";
    goto LABEL_15;
  }

LABEL_16:
  v15 = 0;
LABEL_17:

  objc_autoreleasePoolPop(v2);
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

id SubscriptionContextMatchingSlotGet(void *a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v32 = 0;
  v4 = [a1 getSubscriptionInfoWithError:&v32];
  v5 = v32;
  if (v5)
  {
    v6 = EAPLogGetLogHandle();
    v7 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v6, v7))
    {
LABEL_5:
      v12 = 0;
      goto LABEL_20;
    }

    *buf = 138412290;
    v35 = v5;
    v8 = "CoreTelephonyClient.getSubscriptionInfoWithError failed with error: %@";
    v9 = v6;
    v10 = v7;
    v11 = 12;
LABEL_4:
    _os_log_impl(&dword_249EFB000, v9, v10, v8, buf, v11);
    goto LABEL_5;
  }

  if (!v4)
  {
    v22 = [0 subscriptions];
    if (!v22 || (v23 = v22, [0 subscriptions], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "count"), v24, v23, !v25))
    {
      v6 = EAPLogGetLogHandle();
      v26 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v6, v26))
      {
        goto LABEL_5;
      }

      *buf = 0;
      v8 = "failed to get the subscription contexts";
      v9 = v6;
      v10 = v26;
      v11 = 2;
      goto LABEL_4;
    }
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [v4 subscriptions];
  v12 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v12)
  {
    v27 = v4;
    v13 = *v29;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v6);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        if (v15)
        {
          v16 = [*(*(&v28 + 1) + 8 * i) uuid];
          if (v16)
          {
            v17 = v16;
            v18 = [v15 uuid];
            v19 = [v18 isEqual:v3];

            if (v19)
            {
              v12 = v15;
              goto LABEL_19;
            }
          }
        }
      }

      v12 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

LABEL_19:
    v4 = v27;
  }

LABEL_20:

  v20 = *MEMORY[0x277D85DE8];

  return v12;
}

id SubscriptionContextUserPreferredGet(void *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v28 = 0;
  v1 = [a1 getSubscriptionInfoWithError:&v28];
  v2 = v28;
  if (v2)
  {
    v3 = EAPLogGetLogHandle();
    v4 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v3, v4))
    {
LABEL_5:
      v9 = 0;
      goto LABEL_6;
    }

    *buf = 138412290;
    v31 = v2;
    v5 = "CoreTelephonyClient.getSubscriptionInfoWithError failed with error: %@";
    v6 = v3;
    v7 = v4;
    v8 = 12;
LABEL_4:
    _os_log_impl(&dword_249EFB000, v6, v7, v5, buf, v8);
    goto LABEL_5;
  }

  if (!v1)
  {
    v19 = [0 subscriptions];
    if (!v19 || (v20 = v19, [0 subscriptions], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "count"), v21, v20, !v22))
    {
      v3 = EAPLogGetLogHandle();
      v23 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v3, v23))
      {
        goto LABEL_5;
      }

      *buf = 0;
      v5 = "failed to get the subscription contexts";
      v6 = v3;
      v7 = v23;
      v8 = 2;
      goto LABEL_4;
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = [v1 subscriptions];
  v9 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v9)
  {
    v12 = *v25;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v3);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        if (v14)
        {
          v15 = [*(*(&v24 + 1) + 8 * i) userDataPreferred];
          if (v15)
          {
            v16 = v15;
            v17 = [v14 userDataPreferred];
            v18 = [v17 BOOLValue];

            if (v18)
            {
              v9 = v14;
              goto LABEL_6;
            }
          }
        }
      }

      v9 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_6:

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id _SIMCopyRealm(const __CFDictionary *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(MEMORY[0x277CC37B0]);
  if (!v3)
  {
    v8 = EAPLogGetLogHandle();
    v9 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v8, v9))
    {
      *buf = 0;
      v10 = "failed to get the CoreTelephonyClient instance";
      goto LABEL_15;
    }

LABEL_16:

    v7 = 0;
    v16 = 0;
    v11 = 0;
    v13 = 0;
LABEL_17:
    v17 = 0;
    goto LABEL_18;
  }

  if (a1 && (Value = CFDictionaryGetValue(a1, *MEMORY[0x277CC42A8]), TypeID = CFStringGetTypeID(), Value) && CFGetTypeID(Value) == TypeID)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:Value];
    v7 = SubscriptionContextMatchingSlotGet(v3, v6);

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = SubscriptionContextUserPreferredGet(v3);
    if (!v7)
    {
LABEL_6:
      v8 = EAPLogGetLogHandle();
      v9 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 0;
        v10 = "failed to get the preferred subscription context";
LABEL_15:
        _os_log_impl(&dword_249EFB000, v8, v9, v10, buf, 2u);
        goto LABEL_16;
      }

      goto LABEL_16;
    }
  }

  v24 = 0;
  v11 = [v3 copyMobileSubscriberCountryCode:v7 error:&v24];
  v12 = v24;
  if (v12)
  {
    v13 = v12;
    v14 = EAPLogGetLogHandle();
    v15 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v14, v15))
    {
      *buf = 138412290;
      v26 = v13;
      _os_log_impl(&dword_249EFB000, v14, v15, "CoreTelephonyClient.copyMobileSubscriberCountryCode failed with error: %@", buf, 0xCu);
    }

    v16 = 0;
    goto LABEL_17;
  }

  v23 = 0;
  v16 = [v3 copyMobileSubscriberNetworkCode:v7 error:&v23];
  v13 = v23;
  if (v13)
  {
    v20 = EAPLogGetLogHandle();
    v21 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v20, v21))
    {
      *buf = 138412290;
      v26 = v13;
      _os_log_impl(&dword_249EFB000, v20, v21, "CoreTelephonyClient.copyMobileSubscriberNetworkCode failed with error: %@", buf, 0xCu);
    }

    goto LABEL_17;
  }

  if (v11 && v16)
  {
    if ([v16 length] == 2)
    {
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"0%@", v16];

      v16 = v22;
    }

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"wlan.mnc%@.mcc%@.3gppnetwork.org", v16, v11];
    v13 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_18:

  objc_autoreleasePoolPop(v2);
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t _SIMIsOOBPseudonymSupported(BOOL *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  *a1 = 0;
  v3 = objc_alloc_init(MEMORY[0x277CC37B0]);
  v4 = v3;
  if (!v3)
  {
    v10 = EAPLogGetLogHandle();
    v13 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v10, v13))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v14 = "failed to get the CoreTelephonyClient instance";
LABEL_11:
    _os_log_impl(&dword_249EFB000, v10, v13, v14, buf, 2u);
    goto LABEL_12;
  }

  v5 = SubscriptionContextUserPreferredGet(v3);
  if (!v5)
  {
    v10 = EAPLogGetLogHandle();
    v13 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v10, v13))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v14 = "failed to get the user preferred subscription context";
    goto LABEL_11;
  }

  v6 = v5;
  v7 = *MEMORY[0x277CC3A08];
  v18 = 0;
  v8 = [v4 context:v5 supportedIdentityProtectionFor:v7 error:&v18];
  v9 = v18;
  if (!v9)
  {
    *a1 = v8 == 2;
    v15 = 1;
    v10 = v6;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = EAPLogGetLogHandle();
  v12 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v11, v12))
  {
    *buf = 138412290;
    v20 = v10;
    _os_log_impl(&dword_249EFB000, v11, v12, "CoreTelephonyClient.supportedIdentityProtectionFor failed with error: %@", buf, 0xCu);
  }

LABEL_12:
  v15 = 0;
LABEL_13:

  objc_autoreleasePoolPop(v2);
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

NSObject *_SIMCopyOOBPseudonym()
{
  v19 = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(MEMORY[0x277CC37B0]);
  v2 = v1;
  if (!v1)
  {
    v6 = EAPLogGetLogHandle();
    v11 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v6, v11))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v12 = "failed to get the CoreTelephonyClient instance";
LABEL_11:
    _os_log_impl(&dword_249EFB000, v6, v11, v12, buf, 2u);
    goto LABEL_12;
  }

  v3 = SubscriptionContextUserPreferredGet(v1);
  if (!v3)
  {
    v6 = EAPLogGetLogHandle();
    v11 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v6, v11))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v12 = "failed to get the user preferred subscription context";
    goto LABEL_11;
  }

  v4 = v3;
  v5 = *MEMORY[0x277CC3A08];
  v16 = 0;
  v6 = [v2 context:v3 getPseudoIdentityFor:v5 error:&v16];
  v7 = v16;
  if (!v7)
  {
    v6 = v6;

    v13 = v6;
    goto LABEL_13;
  }

  v8 = v7;
  v9 = EAPLogGetLogHandle();
  v10 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v9, v10))
  {
    *buf = 138412290;
    v18 = v8;
    _os_log_impl(&dword_249EFB000, v9, v10, "CoreTelephonyClient.getPseudoIdentityFor failed with error: %@", buf, 0xCu);
  }

LABEL_12:
  v13 = 0;
LABEL_13:

  objc_autoreleasePoolPop(v0);
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

NSObject *_SIMCopyEncryptedIMSIInfo(int a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(MEMORY[0x277CC37B0]);
  v4 = v3;
  if (!v3)
  {
    v13 = EAPLogGetLogHandle();
    v14 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v13, v14))
    {
      *buf = 0;
      v15 = "failed to get the CoreTelephonyClient instance";
LABEL_13:
      _os_log_impl(&dword_249EFB000, v13, v14, v15, buf, 2u);
    }

LABEL_14:
    v6 = 0;
    v8 = 0;
    v16 = 0;
    v11 = 0;
    v7 = 0;
    v17 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v5 = SubscriptionContextUserPreferredGet(v3);
  if (!v5)
  {
    v13 = EAPLogGetLogHandle();
    v14 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v13, v14))
    {
      *buf = 0;
      v15 = "failed to get the user preferred subscription context";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v6 = v5;
  v7 = _SIMCopyIMSI(0);
  if (!v7)
  {
    v8 = 0;
    v16 = 0;
    v11 = 0;
    v17 = 0;
LABEL_22:
    v13 = 0;
    goto LABEL_23;
  }

  v8 = _SIMCopyRealm(0);
  if (a1 == 18)
  {
    v9 = @"1%@";
  }

  else
  {
    v9 = @"0%@";
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:v9, v7];
  v11 = v10;
  v22 = v2;
  if (v8)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@@%@", v10, v8];
  }

  else
  {
    v12 = v10;
  }

  v16 = v12;
  v23 = 0;
  v13 = [v4 context:v6 getEncryptedIdentity:v12 error:&v23];
  v17 = v23;
  if (v17)
  {
    v18 = EAPLogGetLogHandle();
    v19 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v18, v19))
    {
      *buf = 138412290;
      v25 = v17;
      _os_log_impl(&dword_249EFB000, v18, v19, "CoreTelephonyClient.getEncryptedIdentity failed with error: %@", buf, 0xCu);
    }

    v2 = v22;
    goto LABEL_21;
  }

LABEL_23:

  objc_autoreleasePoolPop(v2);
  v20 = *MEMORY[0x277D85DE8];
  return v13;
}

void _SIMReportDecryptionError(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(MEMORY[0x277CC37B0]);
  v4 = v3;
  if (!v3)
  {
    v8 = EAPLogGetLogHandle();
    v10 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v8, v10))
    {
      LOWORD(v13) = 0;
      v11 = "failed to get the CoreTelephonyClient instance";
LABEL_10:
      _os_log_impl(&dword_249EFB000, v8, v10, v11, &v13, 2u);
    }

LABEL_11:
    v6 = 0;
    v7 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v5 = SubscriptionContextUserPreferredGet(v3);
  if (!v5)
  {
    v8 = EAPLogGetLogHandle();
    v10 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v8, v10))
    {
      LOWORD(v13) = 0;
      v11 = "failed to get the user preferred subscription context";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v6 = v5;
  v7 = [v4 context:v5 evaluateMobileSubscriberIdentity:a1];
  if (v7)
  {
    v8 = EAPLogGetLogHandle();
    v9 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v8, v9))
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&dword_249EFB000, v8, v9, "CoreTelephonyClient.evaluateMobileSubscriberIdentity failed with error: %@", &v13, 0xCu);
    }

    goto LABEL_12;
  }

LABEL_13:

  objc_autoreleasePoolPop(v2);
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t _SIMCreateAuthResponse(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v5 = objc_alloc_init(MEMORY[0x277CC37B0]);
  v6 = v5;
  if (!v5)
  {
    v9 = EAPLogGetLogHandle();
    v10 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v9, v10))
    {
      *buf = 0;
      _os_log_impl(&dword_249EFB000, v9, v10, "failed to get the CoreTelephonyClient instance", buf, 2u);
    }

    v8 = 0;
    goto LABEL_18;
  }

  if (a1)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:a1];
    v8 = SubscriptionContextMatchingSlotGet(v6, v7);

    if (!v8)
    {
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  v8 = SubscriptionContextUserPreferredGet(v5);
  if (v8)
  {
LABEL_9:
    *buf = 0;
    v24 = buf;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__0;
    v27 = __Block_byref_object_dispose__0;
    v28 = 0;
    v11 = dispatch_semaphore_create(0);
    v12 = *(v24 + 5);
    *(v24 + 5) = v11;

    v13 = *(v24 + 5);
    if (v13)
    {
      v14 = [objc_alloc(MEMORY[0x277CC3778]) initWithData:a2];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = ___SIMCreateAuthResponse_block_invoke;
      v21[3] = &unk_278FBE080;
      v21[4] = &v29;
      v21[5] = buf;
      [v6 generateAuthenticationInfoUsingSim:v8 authParams:v14 completion:v21];
      v15 = dispatch_time(0, 20000000000);
      if (dispatch_semaphore_wait(*(v24 + 5), v15))
      {
        v16 = EAPLogGetLogHandle();
        v17 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v16, v17))
        {
          *v22 = 0;
          _os_log_impl(&dword_249EFB000, v16, v17, "timed out while waiting for response", v22, 2u);
        }
      }
    }

    else
    {
      v14 = EAPLogGetLogHandle();
      v18 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v14, v18))
      {
        *v22 = 0;
        _os_log_impl(&dword_249EFB000, v14, v18, "dispatch_semaphore_create() failed", v22, 2u);
      }
    }

    _Block_object_dispose(buf, 8);
    if (v13)
    {
      goto LABEL_17;
    }

LABEL_18:
    v19 = 0;
    goto LABEL_19;
  }

LABEL_17:
  v19 = v30[3];
LABEL_19:

  _Block_object_dispose(&v29, 8);
  objc_autoreleasePoolPop(v4);
  return v19;
}

void sub_249F1A664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t SIMAuthenticateGSM(const __CFDictionary *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  keys[3] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, *MEMORY[0x277CC42A8]);
    TypeID = CFStringGetTypeID();
    if (Value && CFGetTypeID(Value) != TypeID)
    {
      Value = 0;
    }
  }

  else
  {
    Value = 0;
  }

  if (a3 >= 1)
  {
    v8 = 0;
    v33 = *MEMORY[0x277CC42C8];
    v9 = *MEMORY[0x277CC42C0];
    v10 = *MEMORY[0x277CC4298];
    v11 = *MEMORY[0x277CC4290];
    key = *MEMORY[0x277CC4260];
    v12 = *MEMORY[0x277CC42B0];
    v29 = *MEMORY[0x277CC4268];
    v31 = a3;
    while (1)
    {
      v13 = CFDataCreate(0, (a2 + 16 * v8), 16);
      keys[0] = v33;
      keys[1] = v10;
      values[0] = v9;
      values[1] = v13;
      v14 = 2;
      v15 = CFDictionaryCreate(0, keys, values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFRelease(v13);
      do
      {
        v16 = v14;
        v17 = _SIMCreateAuthResponse(Value, v15);
        if (v17)
        {
          break;
        }

        --v14;
      }

      while (v16);
      CFRelease(v15);
      if (!v17)
      {
        break;
      }

      v18 = CFDictionaryGetValue(v17, v11);
      if (!v18 && (v18 = CFDictionaryGetValue(v17, key)) == 0 || (v19 = v18, CFDataGetLength(v18) != 8))
      {
        v23 = EAPLogGetLogHandle();
        v24 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v23, v24))
        {
          LOWORD(keys[0]) = 0;
          v25 = "bogus Kc value";
          goto LABEL_25;
        }

LABEL_26:

        CFRelease(v17);
        goto LABEL_30;
      }

      v38.location = 0;
      v38.length = 8;
      CFDataGetBytes(v19, v38, (a4 + 8 * v8));
      v20 = CFDictionaryGetValue(v17, v12);
      if (!v20 && (v20 = CFDictionaryGetValue(v17, v29)) == 0 || (v21 = v20, CFDataGetLength(v20) != 4))
      {
        v23 = EAPLogGetLogHandle();
        v24 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v23, v24))
        {
          LOWORD(keys[0]) = 0;
          v25 = "bogus SRES value";
LABEL_25:
          _os_log_impl(&dword_249EFB000, v23, v24, v25, keys, 2u);
        }

        goto LABEL_26;
      }

      v39.location = 0;
      v39.length = 4;
      CFDataGetBytes(v21, v39, (a5 + 4 * v8));
      CFRelease(v17);
      if (++v8 == v31)
      {
        result = 1;
        goto LABEL_31;
      }
    }

    v26 = EAPLogGetLogHandle();
    v27 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v26, v27))
    {
      LOWORD(keys[0]) = 0;
      _os_log_impl(&dword_249EFB000, v26, v27, "Could not access SIM", keys, 2u);
    }
  }

LABEL_30:
  result = 0;
LABEL_31:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL SIMAuthenticateAKA(const __CFDictionary *a1, void *a2, void *a3, uint64_t a4)
{
  keys[3] = *MEMORY[0x277D85DE8];
  *a4 = 0u;
  *(a4 + 16) = 0u;
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, *MEMORY[0x277CC42A8]);
    TypeID = CFStringGetTypeID();
    if (Value && CFGetTypeID(Value) != TypeID)
    {
      Value = 0;
    }
  }

  else
  {
    Value = 0;
  }

  v9 = *MEMORY[0x277CC42B8];
  v10 = *MEMORY[0x277CC4298];
  keys[0] = *MEMORY[0x277CC42C8];
  keys[1] = v10;
  values[0] = v9;
  values[1] = a2;
  keys[2] = *MEMORY[0x277CC4270];
  values[2] = a3;
  v11 = CFDictionaryCreate(0, keys, values, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v12 = 2;
  do
  {
    v13 = v12;
    v14 = _SIMCreateAuthResponse(Value, v11);
    if (v14)
    {
      break;
    }

    v12 = v13 - 1;
  }

  while (v13);
  CFRelease(v11);
  if (v14)
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
    v15 = CFDictionaryGetValue(v14, *MEMORY[0x277CC4280]);
    v16 = CFDictionaryGetValue(v14, *MEMORY[0x277CC4288]);
    v17 = CFDictionaryGetValue(v14, *MEMORY[0x277CC42A0]);
    if (v15)
    {
      v18 = v16 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (v18 || v17 == 0)
    {
      v20 = CFDictionaryGetValue(v14, *MEMORY[0x277CC4278]);
      if (!v20)
      {
LABEL_25:
        CFRelease(v14);
        goto LABEL_26;
      }

      v23 = v20;
      v24 = 24;
    }

    else
    {
      v23 = v17;
      my_FieldSetRetainedCFType(a4, v15);
      my_FieldSetRetainedCFType((a4 + 8), v16);
      v24 = 16;
    }

    my_FieldSetRetainedCFType((a4 + v24), v23);
    goto LABEL_25;
  }

  v21 = EAPLogGetLogHandle();
  v22 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v21, v22))
  {
    LOWORD(keys[0]) = 0;
    _os_log_impl(&dword_249EFB000, v21, v22, "Could not access SIM", keys, 2u);
  }

LABEL_26:
  result = v14 != 0;
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

double AKAAuthResultsInit(_OWORD *a1)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

SIMStatusIndicator *_SIMAccessConnectionCreate(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_alloc_init(SIMStatusIndicator);
  [(SIMStatusIndicator *)v5 setCallback:a1];
  [(SIMStatusIndicator *)v5 setApplicationContext:a2];
  [(SIMStatusIndicator *)v5 createConnection];
  objc_autoreleasePoolPop(v4);
  return v5;
}

void AKAAuthResultsRelease(const void **a1)
{
  my_FieldSetRetainedCFType(a1, 0);
  my_FieldSetRetainedCFType(a1 + 1, 0);
  my_FieldSetRetainedCFType(a1 + 2, 0);

  my_FieldSetRetainedCFType(a1 + 3, 0);
}

CFArrayRef eapgtc_require_props(uint64_t a1)
{
  if (*(a1 + 64))
  {
    return 0;
  }

  values[1] = v1;
  values[2] = v2;
  values[0] = @"UserPassword";
  return CFArrayCreate(0, values, 1, MEMORY[0x277CBF128]);
}

BOOL eapttls_eap()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v58 = *MEMORY[0x277D85DE8];
  v48 = 0;
  v4 = *v0;
  *&__len[1] = 0;
  if (*(v4 + 76) == *(v5 + 1))
  {
    memoryBufferClear(v4 + 8);
    v6 = *(v4 + 496);
    if (!v6)
    {
      goto LABEL_55;
    }

LABEL_3:
    result = 0;
    __len[0] = 2048;
    v8 = *v6;
    if (v8 > 2)
    {
      if (v8 != 3 && v8 != 4)
      {
        goto LABEL_56;
      }

      goto LABEL_27;
    }

    if (v8 != 1)
    {
      if (v8 != 2)
      {
        goto LABEL_56;
      }

      goto LABEL_27;
    }

    v17 = v6[4];
    if (v17 == 2)
    {
      v18 = v6[1];
      v19 = 0;
      v21 = 2;
      v20 = 0;
    }

    else
    {
      if (v17 != 1)
      {
LABEL_27:
        v22 = eapttls_eap_process(v3, v6, buf, __len, v2, &v48);
        goto LABEL_28;
      }

      v18 = v6[1];
      v19 = *(v3 + 40);
      v20 = *(v3 + 48);
      v21 = 1;
    }

    v22 = EAPPacketCreate(buf, 2048, 2, v18, v21, v19, v20, __len);
LABEL_28:
    v23 = v22;
    if (v22)
    {
      if (*(v3 + 8) == 1)
      {
        Mutable = CFStringCreateMutable(0, 0);
        Length = EAPPacketGetLength(v23);
        EAPPacketIsValid(v23, Length, Mutable);
        LogHandle = EAPLogGetLogHandle();
        v27 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(LogHandle, v27))
        {
          *v49 = 138412290;
          v50 = Mutable;
          _os_log_impl(&dword_249EFB000, LogHandle, v27, "TTLS Send EAP Payload:\n%@", v49, 0xCu);
        }

        CFRelease(Mutable);
      }

      v28 = *(v4 + 496);
      if (v28 && v28 != (v4 + 504))
      {
        free(v28);
      }

      *(v4 + 496) = 0;
      v29 = __len[0] + 8;
      if (__len[0] + 8 <= 0)
      {
        v30 = -(-(__len[0] + 8) & 3);
      }

      else
      {
        v30 = (__len[0] + 8) & 3;
      }

      v31 = __len[0] - v30 + 12;
      if (!v30)
      {
        v31 = __len[0] + 8;
      }

      v32 = v31;
      v33 = malloc_type_malloc(v31, 0x91BF6E96uLL);
      bzero(v33, v32);
      *v33 = 1325400064;
      v33[1] = bswap32(v29 & 0xFFFFFF);
      memmove(v33 + 2, v23, __len[0]);
      v34 = SSLWrite(*v4, v33, v32, &__len[1]);
      free(v33);
      if (v23 != buf)
      {
        if (v48 != 1)
        {
          free(v23);
          if (v34)
          {
LABEL_45:
            v35 = EAPLogGetLogHandle();
            v36 = _SC_syslog_os_log_mapping();
            result = os_log_type_enabled(v35, v36);
            if (result)
            {
              v37 = EAPSSLErrorString(v34);
              *v49 = 136315394;
              v50 = v37;
              v51 = 2048;
              v52 = v34;
              v38 = "SSLWrite failed, %s (%ld)";
              v39 = v49;
              v40 = v35;
              v41 = v36;
              v42 = 22;
LABEL_54:
              _os_log_impl(&dword_249EFB000, v40, v41, v38, v39, v42);
              goto LABEL_55;
            }

            goto LABEL_56;
          }

LABEL_48:
          result = 1;
          goto LABEL_56;
        }

        EAPClientModulePluginFreePacket(*(v4 + 296), v4 + 304, v23);
      }

      if (v34)
      {
        goto LABEL_45;
      }

      goto LABEL_48;
    }

LABEL_55:
    result = 0;
    goto LABEL_56;
  }

  v47 = 2048;
  if (!eapttls_eap_read_avp(v0, v57, &v47))
  {
    v15 = EAPLogGetLogHandle();
    v16 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v15, v16))
    {
      *buf = 0;
      _os_log_impl(&dword_249EFB000, v15, v16, "TTLS EAP Payload is missing", buf, 2u);
    }

    result = 0;
    *(v4 + 104) = 2;
    goto LABEL_56;
  }

  if (*(v3 + 8))
  {
    v9 = CFStringCreateMutable(0, 0);
    IsValid = EAPPacketIsValid(v57, v47, v9);
    v11 = IsValid;
    if (v9)
    {
      v12 = EAPLogGetLogHandle();
      v13 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = " Invalid";
        if (v11)
        {
          v14 = &unk_249F2FF71;
        }

        *buf = 136315394;
        v54 = v14;
        v55 = 2112;
        v56 = v9;
        _os_log_impl(&dword_249EFB000, v12, v13, "TTLS Receive EAP Payload%s:\n%@", buf, 0x16u);
      }

      CFRelease(v9);
      if ((v11 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else if ((IsValid & 1) == 0)
    {
      goto LABEL_51;
    }

    v6 = v57;
    goto LABEL_3;
  }

  v6 = v57;
  if (EAPPacketIsValid(v57, v47, 0))
  {
    goto LABEL_3;
  }

LABEL_51:
  if (*(v3 + 8))
  {
    goto LABEL_55;
  }

  v43 = EAPLogGetLogHandle();
  v44 = _SC_syslog_os_log_mapping();
  result = os_log_type_enabled(v43, v44);
  if (result)
  {
    *buf = 0;
    v38 = "TTLS Receive EAP Payload Invalid";
    v39 = buf;
    v40 = v43;
    v41 = v44;
    v42 = 2;
    goto LABEL_54;
  }

LABEL_56:
  v45 = *MEMORY[0x277D85DE8];
  return result;
}