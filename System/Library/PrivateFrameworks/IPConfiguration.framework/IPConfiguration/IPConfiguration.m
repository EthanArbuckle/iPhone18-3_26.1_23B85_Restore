_OWORD *DHCPv6PDServiceCreate(const __CFString *a1, void *a2, unsigned int a3, uint64_t a4)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v28 = 0;
  v29 = 0;
  keys = 0;
  v35 = 0;
  v36[0] = 0;
  v27 = 0;
  values = 0;
  v31 = 0;
  v32 = 0;
  IPConfigurationServiceGetTypeID();
  v33[0] = 0;
  if (a2)
  {
    inet_ntop(30, a2, v33, 0x2Eu);
  }

  sub_254978E24();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    _os_log_pack_size();
    MEMORY[0x28223BE20]();
    v8 = *__error();
    v9 = _os_log_pack_fill();
    *v9 = 136315906;
    *(v9 + 4) = "DHCPv6PDServiceCreate";
    *(v9 + 12) = 2112;
    *(v9 + 14) = a1;
    *(v9 + 22) = 2080;
    *(v9 + 24) = v33;
    *(v9 + 32) = 1024;
    *(v9 + 34) = a3;
    __SC_log_send();
  }

  Instance = 0;
  if (a3 > 0x80 || !a1 || a4)
  {
    goto LABEL_20;
  }

  keys = *MEMORY[0x277CE1760];
  values = @"DHCPv6PD";
  if (!a2)
  {
    v11 = &v35;
    v12 = &v31;
    v13 = 1;
    if (!a3)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v11 = v36;
  v12 = &v32;
  v27 = sub_254978CFC(a2);
  v35 = @"RequestedPrefix";
  v31 = v27;
  v13 = 2;
  if (a3)
  {
LABEL_10:
    valuePtr = a3;
    v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v28 = v14;
    *v11 = @"RequestedPrefixLength";
    *v12 = v14;
    ++v13;
  }

LABEL_11:
  v15 = MEMORY[0x277CBF138];
  v16 = MEMORY[0x277CBF150];
  v17 = CFDictionaryCreate(0, &keys, &values, v13, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  sub_254978A20(&v27);
  sub_254978A20(&v28);
  keys = @"IPv6Entity";
  values = v17;
  v18 = CFDictionaryCreate(0, &keys, &values, 1, v15, v16);
  CFRelease(v17);
  v19 = sub_254972D9C(a1, v18);
  CFRelease(v18);
  if (!v19)
  {
    goto LABEL_19;
  }

  pthread_once(&stru_27F612B90, sub_254971920);
  Instance = _CFRuntimeCreateInstance();
  Instance[1] = 0u;
  Instance[2] = 0u;
  Instance[3] = 0u;
  v29 = Instance;
  *(Instance + 2) = v19;
  v20 = dispatch_queue_create("DHCPv6PDService", 0);
  *(Instance + 5) = v20;
  if (!v20)
  {
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      _os_log_pack_size();
      MEMORY[0x28223BE20]();
      v22 = *__error();
      v23 = _os_log_pack_fill();
      *v23 = 136315138;
      *(v23 + 4) = "DHCPv6PDServiceCreate";
      __SC_log_send();
    }

    goto LABEL_19;
  }

  v21 = sub_254972AF0(Instance, @"DHCPv6PDService", 0, sub_25497117C, 0, Instance + 4);
  *(Instance + 3) = v21;
  if (!v21)
  {
LABEL_19:
    sub_254978A20(&v29);
    Instance = v29;
  }

LABEL_20:
  v24 = *MEMORY[0x277D85DE8];
  return Instance;
}

void sub_25497117C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_254972880(a3);
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = IPConfigurationServiceCopyInformation(v5);
      if (v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = sub_254974198(v4[2]);
      }

      global_queue = v4[7];
      if (!global_queue)
      {
        global_queue = dispatch_get_global_queue(0, 0);
      }

      v9 = v4[6];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = sub_254971AC8;
      block[3] = &unk_2797973A0;
      block[4] = v9;
      block[5] = v6;
      v11 = v7;
      dispatch_async(global_queue, block);
    }
  }
}

void DHCPv6PDServiceSetQueueAndHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[7] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  if (v4)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = sub_2549713C0;
    block[3] = &unk_279797338;
    block[5] = a1;
    block[6] = a2;
    block[4] = a3;
    dispatch_sync(v4, block);
  }

  else
  {
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      _os_log_pack_size();
      MEMORY[0x28223BE20]();
      v5 = *__error();
      v6 = _os_log_pack_fill();
      *v6 = 136315138;
      *(v6 + 4) = "DHCPv6PDServiceSetQueueAndHandler";
      __SC_log_send();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_2549713C0(void *a1)
{
  v2 = a1[5];
  v1 = a1[6];
  v3 = a1[4];
  v4 = *(v2 + 48);
  if (v4)
  {
    _Block_release(v4);
    *(v2 + 48) = 0;
  }

  if (v3)
  {
    *(v2 + 48) = _Block_copy(v3);
  }

  v5 = *(v2 + 56);
  if (v5)
  {
    dispatch_release(v5);
    *(v2 + 56) = 0;
  }

  if (v1)
  {
    dispatch_retain(v1);
    *(v2 + 56) = v1;
  }
}

void DHCPv6PDServiceResume(uint64_t a1)
{
  block[5] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (v2 && *(a1 + 16))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = sub_2549715A8;
    block[3] = &unk_279797358;
    block[4] = a1;
    dispatch_async(v2, block);
  }

  else
  {
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      _os_log_pack_size();
      MEMORY[0x28223BE20]();
      v3 = *__error();
      v4 = _os_log_pack_fill();
      *v4 = 136315138;
      *(v4 + 4) = "DHCPv6PDServiceResume";
      __SC_log_send();
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_2549715B0(uint64_t a1)
{
  values[1] = *MEMORY[0x277D85DE8];
  v2 = a1 + 16;
  values[0] = IPConfigurationServiceGetNotificationKey(*(a1 + 16));
  v3 = CFArrayCreate(0, values, 1, MEMORY[0x277CBF128]);
  SCDynamicStoreSetNotificationKeys(*(v2 + 8), v3, 0);
  CFRelease(v3);
  if (SCDynamicStoreSetDispatchQueue(*(v2 + 8), *(v2 + 24)))
  {
    if (sub_254973CD4(*v2))
    {
      goto LABEL_12;
    }

    sub_254978E24();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
LABEL_6:
      _os_log_pack_size();
      MEMORY[0x28223BE20]();
      v4 = *__error();
      v5 = _os_log_pack_fill();
      *v5 = 136315138;
      *(v5 + 4) = "DHCPv6PDServiceResumeSync";
      __SC_log_send();
    }
  }

  v7 = *(a1 + 48);
  global_queue = *(a1 + 56);
  sub_254978A20(v2);
  v8 = *(a1 + 24);
  if (v8)
  {
    SCDynamicStoreSetDispatchQueue(v8, 0);
    SCDynamicStoreSetNotificationKeys(*(a1 + 24), 0, 0);
  }

  if (!global_queue)
  {
    global_queue = dispatch_get_global_queue(0, 0);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = sub_254971C34;
  block[3] = &unk_2797973C8;
  block[4] = v7;
  dispatch_async(global_queue, block);
LABEL_12:
  v9 = *MEMORY[0x277D85DE8];
}

__n128 DHCPv6PDServiceInfoGetPrefix(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

const void *DHCPv6PDServiceInfoGetOptionData(uint64_t a1, uint64_t a2)
{
  Value = CFDictionaryGetValue(*(a1 + 32), @"DHCPv6");
  TypeID = CFDictionaryGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    CFArrayGetTypeID();
    return 0;
  }

  v5 = CFStringCreateWithFormat(0, 0, @"Option_%d", a2);
  v6 = CFDictionaryGetValue(Value, v5);
  CFRelease(v5);
  v7 = CFArrayGetTypeID();
  if (!v6)
  {
    return 0;
  }

  if (CFGetTypeID(v6) == v7)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254971920()
{
  result = _CFRuntimeRegisterClass();
  qword_27F612C00 = result;
  return result;
}

void sub_254971948(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = sub_254971ABC;
      block[3] = &unk_279797378;
      block[4] = a1;
      dispatch_sync(v3, block);
      v2 = *(a1 + 32);
    }

    sub_2549728D4(v2);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    SCDynamicStoreSetDispatchQueue(v4, 0);
    sub_254978A20((a1 + 24));
  }

  sub_254978A20((a1 + 16));
  v5 = *(a1 + 48);
  if (v5)
  {
    _Block_release(v5);
    *(a1 + 48) = 0;
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    dispatch_release(v6);
    *(a1 + 56) = 0;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    dispatch_release(v7);
    *(a1 + 40) = 0;
  }
}

__CFString *sub_254971A34(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<DHCPv6PDService %p [%p]> {", a1, v2);
  CFStringAppendFormat(Mutable, 0, @"service = %@", a1[2]);
  CFStringAppend(Mutable, @"}");
  return Mutable;
}

void sub_254971AC8(uint64_t a1)
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 40);
  if (v2)
  {
    v13 = 0;
    v12 = 0uLL;
    v11 = 0uLL;
    Value = CFDictionaryGetValue(v2, *MEMORY[0x277CE1690]);
    TypeID = CFDictionaryGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == TypeID)
      {
        v5 = CFDictionaryGetValue(Value, @"DelegatedPrefix");
        v6 = CFStringGetTypeID();
        if (v5)
        {
          if (CFGetTypeID(v5) == v6)
          {
            if (sub_254978AE0(v5, &v11))
            {
              v14 = 0;
              v7 = CFDictionaryGetValue(Value, @"DelegatedPrefixLength");
              if (sub_254978C38(v7, &v14))
              {
                LOBYTE(v12) = v14;
                v8 = CFDictionaryGetValue(Value, @"DelegatedPrefixValidLifetime");
                if (sub_254978C38(v8, &v14))
                {
                  DWORD1(v12) = v14;
                  v9 = CFDictionaryGetValue(Value, @"DelegatedPrefixPreferredLifetime");
                  if (sub_254978C38(v9, &v14))
                  {
                    DWORD2(v12) = v14;
                    v13 = *(a1 + 40);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), *(a1 + 48));
  v10 = *(a1 + 40);
  if (v10)
  {
    CFRelease(v10);
  }
}

uint64_t IPConfigurationForgetNetwork(const __CFString *a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  *sp = 0;
  sub_254972A34("Library");
  if (a1 && a2)
  {
    v4 = bootstrap_look_up(*MEMORY[0x277D85F18], "com.apple.network.IPConfiguration", &sp[1]);
    if (v4)
    {
      v5 = v4;
      sub_254978E24();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        _os_log_pack_size();
        MEMORY[0x28223BE20]();
        v7 = *__error();
        v8 = _os_log_pack_fill();
        v9 = mach_error_string(v5);
        *v8 = 136315138;
        *(v8 + 4) = v9;
LABEL_11:
        __SC_log_send();
        result = 0;
      }
    }

    else
    {
      v30 = 0uLL;
      sub_254978A58(a1, &v30, 16, 0);
      values = a2;
      keys = @"SSID";
      v12 = CFDictionaryCreate(0, &keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      Data = CFPropertyListCreateData(0, v12, kCFPropertyListBinaryFormat_v1_0, 0, 0);
      CFRelease(v12);
      BytePtr = CFDataGetBytePtr(Data);
      Length = CFDataGetLength(Data);
      v16 = sub_2549784A8(sp[1], &v30, BytePtr, Length, sp);
      CFRelease(Data);
      if (v16)
      {
        sub_254978E24();
        _SC_syslog_os_log_mapping();
        result = __SC_log_enabled();
        if (result)
        {
          _os_log_pack_size();
          MEMORY[0x28223BE20]();
          v17 = *__error();
          v18 = _os_log_pack_fill();
          v19 = mach_error_string(v16);
          *v18 = 136315394;
          *(v18 + 4) = &v30;
          *(v18 + 12) = 2080;
          *(v18 + 14) = v19;
          goto LABEL_11;
        }
      }

      else
      {
        v21 = sp[0];
        sub_254978E24();
        _SC_syslog_os_log_mapping();
        result = __SC_log_enabled();
        if (v21)
        {
          if (!result)
          {
            goto LABEL_12;
          }

          _os_log_pack_size();
          MEMORY[0x28223BE20]();
          v22 = *__error();
          v23 = _os_log_pack_fill();
          if (sp[0] <= 0x15)
          {
            v24 = off_2797973E8[sp[0]];
          }

          else
          {
            v24 = "<unknown>";
          }

          *v23 = 136315394;
          *(v23 + 4) = &v30;
          *(v23 + 12) = 2080;
          *(v23 + 14) = v24;
          goto LABEL_11;
        }

        if (result)
        {
          _os_log_pack_size();
          MEMORY[0x28223BE20]();
          v25 = *__error();
          v26 = _os_log_pack_fill();
          *v26 = 136315138;
          *(v26 + 4) = &v30;
          __SC_log_send();
        }

        result = 1;
      }
    }
  }

  else
  {
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      _os_log_pack_size();
      MEMORY[0x28223BE20]();
      v10 = *__error();
      v11 = _os_log_pack_fill();
      *v11 = 136315138;
      *(v11 + 4) = "IPConfigurationForgetNetwork";
      goto LABEL_11;
    }
  }

LABEL_12:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

const void *IPConfigurationCopyIPv4RouterInformation(const __CFString *a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v32 = 0uLL;
  v31 = 0;
  v30 = 0;
  *sp = 0;
  v29 = 0;
  sub_254972A34("Library");
  if (!a1)
  {
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      _os_log_pack_size();
      MEMORY[0x28223BE20]();
      v9 = *__error();
      v10 = _os_log_pack_fill();
      *v10 = 136315138;
      *(v10 + 4) = "IPConfigurationCopyIPv4RouterInformation";
      goto LABEL_10;
    }

    goto LABEL_31;
  }

  v4 = bootstrap_look_up(*MEMORY[0x277D85F18], "com.apple.network.IPConfiguration", &sp[1]);
  if (v4)
  {
    v5 = v4;
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      _os_log_pack_size();
      MEMORY[0x28223BE20]();
      v6 = *__error();
      v7 = _os_log_pack_fill();
      v8 = mach_error_string(v5);
      *v7 = 136315138;
      *(v7 + 4) = v8;
LABEL_10:
      __SC_log_send();
      Value = 0;
      v17 = 0;
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v32 = 0uLL;
  sub_254978A58(a1, &v32, 16, 0);
  v11 = sub_254978830(sp[1], &v32, &v31, &v30, sp);
  if (v11)
  {
    v12 = v11;
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      _os_log_pack_size();
      MEMORY[0x28223BE20]();
      v13 = *__error();
      v14 = _os_log_pack_fill();
      v15 = mach_error_string(v12);
      *v14 = 136315394;
      *(v14 + 4) = &v32;
      *(v14 + 12) = 2080;
      *(v14 + 14) = v15;
      goto LABEL_10;
    }

    goto LABEL_31;
  }

  if (!v31)
  {
    if (!sp[0])
    {
      sub_254978E24();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    goto LABEL_22;
  }

  v18 = sub_254978DAC(v31, v30);
  v29 = v18;
  MEMORY[0x259C20D70](*MEMORY[0x277D85F48], v31, v30);
  TypeID = CFDictionaryGetTypeID();
  if (!v18 || CFGetTypeID(v18) != TypeID)
  {
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if (sp[0])
  {
LABEL_22:
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      _os_log_pack_size();
      MEMORY[0x28223BE20]();
      v22 = *__error();
      v23 = _os_log_pack_fill();
      if (sp[0] <= 0x15)
      {
        v24 = off_2797973E8[sp[0]];
      }

      else
      {
        v24 = "<unknown>";
      }

      *v23 = 136315394;
      *(v23 + 4) = &v32;
      *(v23 + 12) = 2080;
      *(v23 + 14) = v24;
      goto LABEL_10;
    }

    goto LABEL_31;
  }

  Value = CFDictionaryGetValue(v18, @"ARPResolvedHardwareAddress");
  v17 = CFDictionaryGetValue(v18, @"ARPResolvedIPAddress");
  if (!sub_25497282C(Value) || !sub_25497282C(v17))
  {
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
LABEL_30:
      _os_log_pack_size();
      MEMORY[0x28223BE20]();
      v25 = *__error();
      *_os_log_pack_fill() = 0;
      goto LABEL_10;
    }

LABEL_31:
    Value = 0;
    v17 = 0;
    goto LABEL_32;
  }

  CFRetain(Value);
  sub_254978E24();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    _os_log_pack_size();
    MEMORY[0x28223BE20]();
    v20 = *__error();
    v21 = _os_log_pack_fill();
    *v21 = 136315138;
    *(v21 + 4) = &v32;
    __SC_log_send();
  }

LABEL_32:
  if (a2)
  {
    if (v17)
    {
      CFRetain(v17);
    }

    *a2 = v17;
  }

  sub_254978A20(&v29);
  v26 = *MEMORY[0x277D85DE8];
  return Value;
}

const void *sub_25497282C(const void *a1)
{
  TypeID = CFStringGetTypeID();
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

_DWORD *sub_254972890(uint64_t a1)
{
  result = malloc_type_malloc(0x10uLL, 0x10C0040AE459949uLL);
  *result = a1;
  result[2] = 1;
  return result;
}

void sub_2549728D4(atomic_uint *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  add_explicit = atomic_fetch_add_explicit(a1 + 2, 0xFFFFFFFF, memory_order_relaxed);
  if (add_explicit == 1)
  {
    v2 = *MEMORY[0x277D85DE8];

    free(a1);
  }

  else
  {
    if (add_explicit <= 0)
    {
      sub_254978E24();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        _os_log_pack_size();
        MEMORY[0x28223BE20]();
        v4 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send();
      }

      abort();
    }

    v3 = *MEMORY[0x277D85DE8];
  }
}

void sub_254972A34(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = sub_254972ABC;
  block[3] = &unk_279797498;
  block[4] = a1;
  if (qword_2815358A0 != -1)
  {
    dispatch_once(&qword_2815358A0, block);
  }
}

uint64_t sub_254972ABC(uint64_t a1)
{
  v1 = os_log_create("com.apple.IPConfiguration", *(a1 + 32));

  return sub_254978E18(v1);
}

SCDynamicStoreRef sub_254972AF0(uint64_t a1, const __CFString *a2, NSObject *a3, void (__cdecl *a4)(SCDynamicStoreRef, CFArrayRef, void *), uint64_t a5, void *a6)
{
  v20 = *MEMORY[0x277D85DE8];
  context.version = xmmword_2866BF650;
  *&context.retain = *off_2866BF660;
  context.copyDescription = qword_2866BF670;
  v11 = sub_254972890(a1);
  context.info = v11;
  v12 = SCDynamicStoreCreate(0, a2, a4, &context);
  v18 = v12;
  if (!v12)
  {
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v13 = v12;
  if (a5 && !SCDynamicStoreSetDisconnectCallBack())
  {
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (!a3 || SCDynamicStoreSetDispatchQueue(v13, a3))
  {
    goto LABEL_14;
  }

  sub_254978E24();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
LABEL_11:
    _os_log_pack_size();
    MEMORY[0x28223BE20]();
    v14 = *__error();
    v15 = _os_log_pack_fill();
    *v15 = 138412290;
    *(v15 + 4) = a2;
    __SC_log_send();
  }

LABEL_12:
  sub_254978A20(&v18);
  if (v11)
  {
    sub_2549728D4(v11);
    v11 = 0;
  }

LABEL_14:
  *a6 = v11;
  result = v18;
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

char *sub_254972D9C(const __CFString *a1, const __CFDictionary *a2)
{
  v74 = *MEMORY[0x277D85DE8];
  v49 = 0;
  pthread_once(&stru_281535888, sub_254975544);
  *BOOLean = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  if (!a2)
  {
    Value = 1;
    goto LABEL_6;
  }

  if (!sub_254973610(a2, @"NoPublish", BOOLean))
  {
    goto LABEL_70;
  }

  if (BOOLean[0])
  {
    Value = CFBooleanGetValue(BOOLean[0]);
  }

  else
  {
    Value = 1;
  }

  v12 = @"MTU";
  v13 = CFDictionaryGetValue(a2, @"MTU");
  BOOLean[1] = v13;
  if (v13)
  {
    v14 = v13;
    TypeID = CFNumberGetTypeID();
    if (CFGetTypeID(v14) != TypeID)
    {
      sub_254978E24();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_70;
      }

LABEL_47:
      _os_log_pack_size();
      MEMORY[0x28223BE20]();
      v34 = *__error();
      v35 = _os_log_pack_fill();
      *v35 = 138412290;
      *(v35 + 4) = v12;
LABEL_69:
      __SC_log_send();
      goto LABEL_70;
    }
  }

  v12 = @"APNName";
  v16 = CFDictionaryGetValue(a2, @"APNName");
  *&v51 = v16;
  if (v16)
  {
    v17 = v16;
    v18 = CFStringGetTypeID();
    if (CFGetTypeID(v17) != v18)
    {
      sub_254978E24();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_70;
      }

      goto LABEL_47;
    }
  }

  if (!sub_254973610(a2, @"ClearState", &v51 + 1) || !sub_254973610(a2, @"EnableL4S", &v52 + 1))
  {
    goto LABEL_70;
  }

  if (CFDictionaryContainsKey(a2, @"IPv4Entity"))
  {
    if (!sub_254973764(a2, &v53))
    {
      goto LABEL_70;
    }
  }

  else
  {
    LOBYTE(v52) = 1;
    if (!sub_2549738A4(a2, &v53))
    {
      goto LABEL_70;
    }
  }

LABEL_6:
  pthread_once(&stru_281535888, sub_254975544);
  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = 0u;
  v6 = (Instance + 16);
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 96) = 0u;
  *(Instance + 112) = 0u;
  *(Instance + 128) = 0u;
  *(Instance + 144) = 0u;
  *(Instance + 160) = 0u;
  *(Instance + 176) = 0u;
  *(Instance + 192) = 0u;
  *(Instance + 208) = 0u;
  v49 = Instance;
  if (!Instance)
  {
    goto LABEL_70;
  }

  v7 = Instance;
  *v6 = 0;
  *(Instance + 24) = 0;
  sub_254978A58(a1, v6, 16, 0);
  v8 = sub_254978D68(0);
  *(v7 + 23) = v8;
  v9 = *MEMORY[0x277CBED28];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v63 = @"MonitorPID";
  v64 = @"NoPublish";
  v10 = BOOLean[0];
  if (!BOOLean[0])
  {
    v10 = v9;
  }

  v69 = 0;
  v58 = 0uLL;
  v59 = 0uLL;
  v60 = 0uLL;
  v61 = 0uLL;
  v62 = 0;
  v56 = v9;
  v57 = v10;
  if (BOOLean[1])
  {
    *&v65 = @"MTU";
    *&v58 = BOOLean[1];
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  *(&v63 + v11) = @"ServiceID";
  *(&v56 + v11) = v8;
  v19 = v11 + 1;
  v20 = v51;
  if (*(&v51 + 1))
  {
    v9 = *(&v51 + 1);
  }

  *(&v63 + v19) = @"ClearState";
  *(&v56 + v19) = v9;
  v21 = v11 + 2;
  if (v20)
  {
    *(&v63 + v21) = @"APNName";
    *(&v56 + v21) = v20;
    v21 = v11 + 3;
  }

  v22 = v52;
  if (v52)
  {
    v23 = *(&v53 + 1);
    if (*(&v53 + 1))
    {
      *(&v63 + v21) = @"PerformNUD";
      *(&v56 + v21++) = v23;
    }

    v24 = *(&v54 + 1);
    if (*(&v54 + 1))
    {
      *(&v63 + v21) = @"EnableDAD";
      *(&v56 + v21++) = v24;
    }

    v25 = v55;
    if (v55)
    {
      *(&v63 + v21) = @"EnableCLAT46";
      *(&v56 + v21++) = v25;
    }

    v26 = *(&v55 + 1);
    if (*(&v55 + 1))
    {
      *(&v63 + v21) = @"EnableDHCPv6";
      *(&v56 + v21++) = v26;
    }
  }

  v27 = *(&v52 + 1);
  if (*(&v52 + 1))
  {
    *(&v63 + v21) = @"EnableL4S";
    *(&v56 + v21++) = v27;
  }

  v28 = CFDictionaryCreate(0, &v63, &v56, v21, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v29 = v53;
  if (v22)
  {
    if (v53)
    {
      v30 = v54;
      if (v54)
      {
        v31 = *MEMORY[0x277CE1770];
        if (!CFDictionaryContainsKey(v53, *MEMORY[0x277CE1770]))
        {
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v29);
          CFDictionarySetValue(MutableCopy, v31, v30);
LABEL_58:
          v38 = MEMORY[0x277CE1690];
          goto LABEL_59;
        }
      }

      v32 = CFRetain(v29);
    }

    else
    {
      keys = *MEMORY[0x277CE1760];
      v73 = 0;
      values = *MEMORY[0x277CE1840];
      v71 = 0;
      if (v54)
      {
        v73 = *MEMORY[0x277CE1770];
        v71 = v54;
        v36 = 2;
      }

      else
      {
        v36 = 1;
      }

      v32 = CFDictionaryCreate(0, &keys, &values, v36, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    MutableCopy = v32;
    goto LABEL_58;
  }

  if (v53)
  {
    v33 = CFRetain(v53);
  }

  else
  {
    v33 = CFDictionaryCreate(0, MEMORY[0x277CE1730], MEMORY[0x277CE1810], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  MutableCopy = v33;
  v38 = MEMORY[0x277CE1688];
LABEL_59:
  v39 = *v38;
  v63 = @"__IPConfigurationServiceOptions";
  v64 = v39;
  v56 = v28;
  v57 = MutableCopy;
  v40 = CFDictionaryCreate(0, &v63, &v56, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFRelease(v28);
  CFRelease(MutableCopy);
  *(v7 + 26) = v40;
  v7[216] = v22;
  if (Value)
  {
    NetworkServiceEntity = CFStringCreateWithFormat(0, 0, @"Plugin:IPConfigurationService:%@", *(v7 + 23));
  }

  else
  {
    v42 = MEMORY[0x277CE1690];
    if (!v22)
    {
      v42 = MEMORY[0x277CE1688];
    }

    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, *MEMORY[0x277CE1648], *(v7 + 23), *v42);
  }

  *(v7 + 56) = 0u;
  *(v7 + 24) = NetworkServiceEntity;
  v43 = *(v7 + 23);
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0u;
  *(v7 + 120) = 0u;
  *(v7 + 136) = 0u;
  *(v7 + 152) = 0u;
  *(v7 + 168) = 0u;
  sub_254978A58(v43, v7 + 56, 128, 0);
  v44 = dispatch_queue_create("IPConfigurationService", 0);
  *(v7 + 6) = v44;
  if (!v44)
  {
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      _os_log_pack_size();
      MEMORY[0x28223BE20]();
      v46 = *__error();
      *_os_log_pack_fill() = 0;
      goto LABEL_69;
    }

LABEL_70:
    sub_254978A20(&v49);
    v7 = v49;
    goto LABEL_71;
  }

  v45 = sub_254972AF0(v7, @"IPConfigurationService", v44, nullsub_1, sub_254973B14, v7 + 25);
  *(v7 + 5) = v45;
  if (!v45)
  {
    goto LABEL_70;
  }

LABEL_71:
  v47 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t sub_254973610(const __CFDictionary *a1, const void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  Value = CFDictionaryGetValue(a1, a2);
  if (Value && (TypeID = CFBooleanGetTypeID(), CFGetTypeID(Value) != TypeID))
  {
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      _os_log_pack_size();
      MEMORY[0x28223BE20]();
      v8 = *__error();
      v9 = _os_log_pack_fill();
      *v9 = 138412290;
      *(v9 + 4) = a2;
      __SC_log_send();
      result = 0;
    }

    Value = 0;
  }

  else
  {
    result = 1;
  }

  *a3 = Value;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_254973764(const __CFDictionary *a1, const __CFDictionary **a2)
{
  v9 = *MEMORY[0x277D85DE8];
  Value = CFDictionaryGetValue(a1, @"IPv4Entity");
  if (!Value)
  {
    goto LABEL_4;
  }

  v4 = Value;
  if (sub_2549747D8(Value))
  {
    *a2 = v4;
LABEL_4:
    result = 1;
    goto LABEL_5;
  }

  sub_254978E24();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    _os_log_pack_size();
    MEMORY[0x28223BE20]();
    v7 = *__error();
    v8 = _os_log_pack_fill();
    *v8 = 138412290;
    *(v8 + 4) = @"IPv4Entity";
    __SC_log_send();
    result = 0;
  }

LABEL_5:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2549738A4(const __CFDictionary *a1, const __CFDictionary **a2)
{
  v14[2] = *MEMORY[0x277D85DE8];
  result = sub_254973610(a1, @"PerformNUD", a2 + 1);
  if (result)
  {
    result = sub_254973610(a1, @"EnableDAD", a2 + 3);
    if (result)
    {
      result = sub_254973610(a1, @"EnableCLAT46", a2 + 4);
      if (result)
      {
        result = sub_254973610(a1, @"EnableDHCPv6", a2 + 5);
        if (result)
        {
          v14[0] = 0;
          v14[1] = 0;
          v5 = @"IPv6Entity";
          Value = CFDictionaryGetValue(a1, @"IPv6Entity");
          if (Value)
          {
            v7 = Value;
            if (!sub_254974EE8(Value))
            {
              sub_254978E24();
              _SC_syslog_os_log_mapping();
              result = __SC_log_enabled();
              if (!result)
              {
                goto LABEL_19;
              }

              _os_log_pack_size();
              MEMORY[0x28223BE20]();
              v11 = *__error();
              goto LABEL_18;
            }

            *a2 = v7;
          }

          v5 = @"IPv6LinkLocalAddress";
          v8 = CFDictionaryGetValue(a1, @"IPv6LinkLocalAddress");
          if (!v8)
          {
LABEL_13:
            result = 1;
            goto LABEL_19;
          }

          v9 = v8;
          if (sub_254978AE0(v8, v14) && LOBYTE(v14[0]) == 254 && (BYTE1(v14[0]) & 0xC0) == 0x80)
          {
            a2[2] = v9;
            goto LABEL_13;
          }

          sub_254978E24();
          _SC_syslog_os_log_mapping();
          result = __SC_log_enabled();
          if (!result)
          {
            goto LABEL_19;
          }

          _os_log_pack_size();
          MEMORY[0x28223BE20]();
          v10 = *__error();
LABEL_18:
          v12 = _os_log_pack_fill();
          *v12 = 138412290;
          *(v12 + 4) = v5;
          __SC_log_send();
          result = 0;
        }
      }
    }
  }

LABEL_19:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_254973B14(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  result = sub_254972880(a2);
  if (result)
  {
    v3 = result;
    if (*(result + 32))
    {
      Value = CFDictionaryGetValue(*(result + 208), @"__IPConfigurationServiceOptions");
      if (Value)
      {
        v5 = Value;
        if (CFDictionaryContainsKey(Value, @"ClearState"))
        {
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v5);
          CFDictionaryRemoveValue(MutableCopy, @"ClearState");
          v7 = CFDictionaryCreateMutableCopy(0, 0, *(v3 + 208));
          CFDictionarySetValue(v7, @"__IPConfigurationServiceOptions", MutableCopy);
          CFRelease(MutableCopy);
          CFRelease(*(v3 + 208));
          *(v3 + 208) = v7;
        }
      }

      sub_254978E24();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        _os_log_pack_size();
        MEMORY[0x28223BE20]();
        v8 = *__error();
        v9 = _os_log_pack_fill();
        *v9 = 136315138;
        *(v9 + 4) = v3 + 16;
        __SC_log_send();
      }

      result = sub_254973EAC(v3, *(v3 + 32));
    }

    else
    {
      *(result + 217) = 1;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_254973CD4(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  sp = 0;
  v2 = bootstrap_look_up(*MEMORY[0x277D85F18], "com.apple.network.IPConfiguration", &sp);
  if (v2)
  {
    v3 = v2;
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      _os_log_pack_size();
      MEMORY[0x28223BE20]();
      v4 = *__error();
      v5 = _os_log_pack_fill();
      v6 = mach_error_string(v3);
      *v5 = 136315138;
      *(v5 + 4) = v6;
      __SC_log_send();
    }
  }

  else if (!sub_254973EAC(a1, sp))
  {
    v9 = *(a1 + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = sub_25497417C;
    block[3] = &unk_279797510;
    block[4] = a1;
    v11 = sp;
    dispatch_sync(v9, block);
    result = 1;
    goto LABEL_8;
  }

  if (sp)
  {
    mach_port_deallocate(*MEMORY[0x277D85F48], sp);
  }

  result = 0;
LABEL_8:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_254973EAC(uint64_t a1, mach_port_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v19 = 0;
  Data = CFPropertyListCreateData(0, *(a1 + 208), kCFPropertyListBinaryFormat_v1_0, 0, 0);
  BytePtr = CFDataGetBytePtr(Data);
  Length = CFDataGetLength(Data);
  v7 = a1 + 16;
  v8 = sub_254977D2C(a2, (a1 + 16), BytePtr, Length, (a1 + 56), &v19);
  if (v8)
  {
LABEL_2:
    v9 = v8;
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      _os_log_pack_size();
      MEMORY[0x28223BE20]();
      v10 = *__error();
      v11 = _os_log_pack_fill();
      v12 = mach_error_string(v9);
      *v11 = 136315394;
      *(v11 + 4) = v7;
      *(v11 + 12) = 2080;
      *(v11 + 14) = v12;
LABEL_4:
      __SC_log_send();
    }
  }

  else
  {
    v15 = 0;
    while (v19)
    {
      if (((v19 == 15) & ~v15) == 0)
      {
        sub_254978E24();
        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          break;
        }

        _os_log_pack_size();
        MEMORY[0x28223BE20]();
        v16 = *__error();
        v17 = _os_log_pack_fill();
        if (v19 <= 0x15)
        {
          v18 = off_279797578[v19];
        }

        else
        {
          v18 = "<unknown>";
        }

        *v17 = 136315394;
        *(v17 + 4) = v7;
        *(v17 + 12) = 2080;
        *(v17 + 14) = v18;
        goto LABEL_4;
      }

      sub_254977F50(a2, (a1 + 16), BytePtr, Length, &v19);
      v8 = sub_254977D2C(a2, (a1 + 16), BytePtr, Length, (a1 + 56), &v19);
      v15 = 1;
      if (v8)
      {
        goto LABEL_2;
      }
    }
  }

  CFRelease(Data);
  result = v19;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25497417C(uint64_t a1)
{
  v1 = *(a1 + 40);
  result = *(a1 + 32);
  *(result + 32) = v1;
  if (*(result + 217))
  {
    return sub_254973EAC(result, v1);
  }

  return result;
}

BOOL sub_254974198(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 17;
  v1 = *(a1 + 48);
  if (v1 && *(a1 + 32))
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 0x40000000;
    v4[2] = sub_254974268;
    v4[3] = &unk_279797538;
    v4[4] = &v5;
    v4[5] = a1;
    dispatch_sync(v1, v4);
    v2 = *(v6 + 6) == 0;
  }

  else
  {
    v2 = 0;
  }

  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t sub_254974268(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  result = sub_254978660(*(*(a1 + 40) + 32), (*(a1 + 40) + 16), (*(a1 + 40) + 56), (*(*(a1 + 32) + 8) + 24));
  if (result)
  {
    v3 = result;
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      _os_log_pack_size();
      v4 = *__error();
      v5 = _os_log_pack_fill();
      v6 = *(a1 + 40);
      v7 = v6 + 16;
      v8 = v6 + 56;
      v9 = mach_error_string(v3);
      *v5 = 136315650;
      *(v5 + 4) = v7;
      *(v5 + 12) = 2080;
      *(v5 + 14) = v8;
      *(v5 + 22) = 2080;
      *(v5 + 24) = v9;
      result = __SC_log_send();
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

char *IPConfigurationServiceCreate(const __CFString *a1, const __CFDictionary *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  sub_254978E24();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    _os_log_pack_size();
    MEMORY[0x28223BE20]();
    v4 = *__error();
    v5 = _os_log_pack_fill();
    *v5 = 136315394;
    *(v5 + 4) = "IPConfigurationServiceCreate";
    *(v5 + 12) = 2112;
    *(v5 + 14) = a1;
    __SC_log_send();
  }

  v6 = sub_254972D9C(a1, a2);
  v7 = v6;
  v10[0] = v6;
  if (v6 && !sub_254973CD4(v6))
  {
    sub_254978A20(v10);
    v7 = v10[0];
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

CFPropertyListRef IPConfigurationServiceCopyInformation(uint64_t a1)
{
  v1 = SCDynamicStoreCopyValue(*(a1 + 40), *(a1 + 192));
  v4 = v1;
  if (v1)
  {
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(v1) != TypeID)
    {
      sub_254978A20(&v4);
      return v4;
    }
  }

  return v1;
}

uint64_t IPConfigurationServiceRefreshConfiguration(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v1 = a1 + 16;
  v2 = a1 + 56;
  result = sub_2549782D8(*(a1 + 32), (a1 + 16), (a1 + 56), &v12);
  if (result)
  {
    v4 = result;
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      _os_log_pack_size();
      MEMORY[0x28223BE20]();
      v5 = *__error();
      v6 = _os_log_pack_fill();
      v7 = mach_error_string(v4);
      *v6 = 136315650;
      *(v6 + 4) = v1;
      *(v6 + 12) = 2080;
      *(v6 + 14) = v2;
      *(v6 + 22) = 2080;
      *(v6 + 24) = v7;
LABEL_10:
      result = __SC_log_send();
    }
  }

  else if (v12)
  {
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      _os_log_pack_size();
      MEMORY[0x28223BE20]();
      v8 = *__error();
      v9 = _os_log_pack_fill();
      if (v12 <= 0x15)
      {
        v10 = off_279797578[v12];
      }

      else
      {
        v10 = "<unknown>";
      }

      *v9 = 136315650;
      *(v9 + 4) = v1;
      *(v9 + 12) = 2080;
      *(v9 + 14) = v2;
      *(v9 + 22) = 2080;
      *(v9 + 24) = v10;
      goto LABEL_10;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2549747D8(const __CFDictionary *a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CE1730]);
  TypeID = CFStringGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    goto LABEL_21;
  }

  if (!CFEqual(Value, *MEMORY[0x277CE1828]))
  {
    if (CFEqual(Value, *MEMORY[0x277CE1810]))
    {
      v4 = *MEMORY[0x277CE1738];
      v18 = CFDictionaryGetValue(a1, *MEMORY[0x277CE1738]);
      if (v18)
      {
        v19 = v18;
        v20 = CFStringGetTypeID();
        if (CFGetTypeID(v19) == v20)
        {
          v10 = 2;
          goto LABEL_29;
        }

        sub_254978E24();
        _SC_syslog_os_log_mapping();
        result = __SC_log_enabled();
        if (!result)
        {
          goto LABEL_22;
        }

        goto LABEL_18;
      }
    }

    else
    {
      result = CFEqual(Value, *MEMORY[0x277CE1820]);
      if (!result)
      {
        goto LABEL_22;
      }
    }

    v10 = 1;
    goto LABEL_29;
  }

  v24 = 0;
  v25[0] = 0;
  v4 = *MEMORY[0x277CE1728];
  v5 = CFDictionaryGetValue(a1, *MEMORY[0x277CE1728]);
  v6 = CFArrayGetTypeID();
  if (v5 && CFGetTypeID(v5) == v6)
  {
    Count = CFArrayGetCount(v5);
    if (Count)
    {
      v8 = Count;
      if (!sub_254974CB8(a1, *MEMORY[0x277CE1750], Count, &v24) || !sub_254974CB8(a1, *MEMORY[0x277CE1740], v8, v25))
      {
        goto LABEL_21;
      }

      v9 = 2;
      if (v24)
      {
        v9 = 3;
      }

      if (v25[0])
      {
        v10 = v9 + 1;
      }

      else
      {
        v10 = v9;
      }

      v4 = *MEMORY[0x277CE1748];
      v11 = CFDictionaryGetValue(a1, *MEMORY[0x277CE1748]);
      if (!v11)
      {
        goto LABEL_29;
      }

      v12 = v11;
      v13 = CFStringGetTypeID();
      if (CFGetTypeID(v12) == v13)
      {
        ++v10;
LABEL_29:
        if (v10 == CFDictionaryGetCount(a1))
        {
          result = 1;
          goto LABEL_22;
        }

        sub_254978E24();
        _SC_syslog_os_log_mapping();
        result = __SC_log_enabled();
        if (!result)
        {
          goto LABEL_22;
        }

        _os_log_pack_size();
        MEMORY[0x28223BE20]();
        v21 = *__error();
        v22 = _os_log_pack_fill();
        *v22 = 138412290;
        *(v22 + 4) = a1;
        goto LABEL_20;
      }

      sub_254978E24();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_21;
      }

      _os_log_pack_size();
      MEMORY[0x28223BE20]();
      v23 = *__error();
LABEL_19:
      v15 = _os_log_pack_fill();
      *v15 = 138412290;
      *(v15 + 4) = v4;
LABEL_20:
      __SC_log_send();
      goto LABEL_21;
    }

    sub_254978E24();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_21;
    }

LABEL_18:
    _os_log_pack_size();
    MEMORY[0x28223BE20]();
    v14 = *__error();
    goto LABEL_19;
  }

  sub_254978E24();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    goto LABEL_18;
  }

LABEL_21:
  result = 0;
LABEL_22:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_254974CB8(const __CFDictionary *a1, const void *a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  *a4 = 0;
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    goto LABEL_4;
  }

  TypeID = CFArrayGetTypeID();
  if (CFGetTypeID(Value) != TypeID)
  {
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      goto LABEL_10;
    }

    _os_log_pack_size();
    MEMORY[0x28223BE20]();
    v11 = *__error();
    v12 = _os_log_pack_fill();
    *v12 = 138412290;
    *(v12 + 4) = a2;
    __SC_log_send();
LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  Count = CFArrayGetCount(Value);
  if (Count != a3)
  {
    v13 = Count;
    sub_254978E24();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      goto LABEL_10;
    }

    _os_log_pack_size();
    MEMORY[0x28223BE20]();
    v14 = *__error();
    v15 = _os_log_pack_fill();
    *v15 = 138412802;
    *(v15 + 4) = a2;
    *(v15 + 12) = 2048;
    *(v15 + 14) = v13;
    *(v15 + 22) = 2048;
    *(v15 + 24) = a3;
    __SC_log_send();
    goto LABEL_9;
  }

LABEL_4:
  *a4 = Value;
  result = 1;
LABEL_10:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_254974EE8(const __CFDictionary *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CE1760]);
  TypeID = CFStringGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    goto LABEL_42;
  }

  if (!CFEqual(Value, *MEMORY[0x277CE1850]))
  {
    if (CFEqual(Value, *MEMORY[0x277CE1840]) || CFEqual(Value, *MEMORY[0x277CE1848]))
    {
      v14 = 1;
      goto LABEL_18;
    }

    result = CFEqual(Value, @"DHCPv6PD");
    if (!result)
    {
      goto LABEL_43;
    }

    v4 = @"RequestedPrefix";
    v20 = CFDictionaryGetValue(a1, @"RequestedPrefix");
    if (v20)
    {
      v21 = v20;
      v22 = CFStringGetTypeID();
      if (CFGetTypeID(v21) != v22)
      {
        sub_254978E24();
        _SC_syslog_os_log_mapping();
        result = __SC_log_enabled();
        if (!result)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }

      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    v4 = @"RequestedPrefixLength";
    v23 = CFDictionaryGetValue(a1, @"RequestedPrefixLength");
    if (!v23)
    {
      goto LABEL_18;
    }

    v24 = v23;
    v25 = CFNumberGetTypeID();
    if (CFGetTypeID(v24) == v25)
    {
      ++v14;
      goto LABEL_18;
    }

    sub_254978E24();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v4 = *MEMORY[0x277CE1758];
  v5 = CFDictionaryGetValue(a1, *MEMORY[0x277CE1758]);
  v6 = *MEMORY[0x277CE1778];
  v7 = CFDictionaryGetValue(a1, *MEMORY[0x277CE1778]);
  v8 = CFArrayGetTypeID();
  if (v5)
  {
    if (CFGetTypeID(v5) == v8)
    {
      v9 = CFArrayGetTypeID();
      if (v7)
      {
        if (CFGetTypeID(v7) == v9)
        {
          Count = CFArrayGetCount(v5);
          if (Count)
          {
            if (Count == CFArrayGetCount(v7))
            {
              v4 = *MEMORY[0x277CE1780];
              v11 = CFDictionaryGetValue(a1, *MEMORY[0x277CE1780]);
              if (!v11)
              {
                v14 = 3;
                goto LABEL_18;
              }

              v12 = v11;
              v13 = CFStringGetTypeID();
              if (CFGetTypeID(v12) == v13)
              {
                v14 = 4;
LABEL_18:
                if (CFDictionaryGetCount(a1) == v14)
                {
                  result = 1;
                  goto LABEL_43;
                }

                sub_254978E24();
                _SC_syslog_os_log_mapping();
                result = __SC_log_enabled();
                if (!result)
                {
                  goto LABEL_43;
                }

                _os_log_pack_size();
                MEMORY[0x28223BE20]();
                v18 = *__error();
                v19 = _os_log_pack_fill();
                *v19 = 138412290;
                *(v19 + 4) = a1;
                goto LABEL_41;
              }

              sub_254978E24();
              _SC_syslog_os_log_mapping();
              result = __SC_log_enabled();
              if (!result)
              {
                goto LABEL_43;
              }

              goto LABEL_40;
            }

            sub_254978E24();
            _SC_syslog_os_log_mapping();
            result = __SC_log_enabled();
            if (!result)
            {
              goto LABEL_43;
            }

LABEL_14:
            _os_log_pack_size();
            MEMORY[0x28223BE20]();
            v16 = *__error();
            v17 = _os_log_pack_fill();
            *v17 = 138412546;
            *(v17 + 4) = v4;
            *(v17 + 12) = 2112;
            *(v17 + 14) = v6;
LABEL_41:
            __SC_log_send();
LABEL_42:
            result = 0;
            goto LABEL_43;
          }

          sub_254978E24();
          _SC_syslog_os_log_mapping();
          result = __SC_log_enabled();
          if (!result)
          {
            goto LABEL_43;
          }

LABEL_40:
          _os_log_pack_size();
          MEMORY[0x28223BE20]();
          v26 = *__error();
          v27 = _os_log_pack_fill();
          *v27 = 138412290;
          *(v27 + 4) = v4;
          goto LABEL_41;
        }
      }
    }
  }

  sub_254978E24();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    goto LABEL_14;
  }

LABEL_43:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_254975544()
{
  sub_254972A34("Library");
  result = _CFRuntimeRegisterClass();
  qword_281535898 = result;
  return result;
}

void sub_254975578(uint64_t a1)
{
  block[5] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 200);
  if (v2)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = sub_254975924;
      block[3] = &unk_279797558;
      block[4] = a1;
      dispatch_sync(v3, block);
      v2 = *(a1 + 200);
    }

    sub_2549728D4(v2);
    *(a1 + 200) = 0;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    SCDynamicStoreSetDispatchQueue(v4, 0);
    sub_254978A20((a1 + 40));
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    dispatch_release(v5);
    *(a1 + 48) = 0;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v18 = 0;
    v7 = a1 + 16;
    v8 = a1 + 56;
    v9 = sub_254978108(v6, (a1 + 16), (a1 + 56), &v18);
    if (v9)
    {
      v10 = v9;
      sub_254978E24();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
LABEL_20:
        mach_port_deallocate(*MEMORY[0x277D85F48], *(a1 + 32));
        *(a1 + 32) = 0;
        goto LABEL_21;
      }

      _os_log_pack_size();
      MEMORY[0x28223BE20]();
      v11 = *__error();
      v12 = _os_log_pack_fill();
      v13 = mach_error_string(v10);
      *v12 = 136315650;
      *(v12 + 4) = v7;
      *(v12 + 12) = 2080;
      *(v12 + 14) = v8;
      *(v12 + 22) = 2080;
      *(v12 + 24) = v13;
    }

    else
    {
      if (!v18)
      {
        goto LABEL_20;
      }

      sub_254978E24();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_20;
      }

      _os_log_pack_size();
      MEMORY[0x28223BE20]();
      v14 = *__error();
      v15 = _os_log_pack_fill();
      if (v18 <= 0x15)
      {
        v16 = off_279797578[v18];
      }

      else
      {
        v16 = "<unknown>";
      }

      *v15 = 136315650;
      *(v15 + 4) = v7;
      *(v15 + 12) = 2080;
      *(v15 + 14) = v8;
      *(v15 + 22) = 2080;
      *(v15 + 24) = v16;
    }

    __SC_log_send();
    goto LABEL_20;
  }

LABEL_21:
  sub_254978A20((a1 + 208));
  sub_254978A20((a1 + 192));
  sub_254978A20((a1 + 184));
  v17 = *MEMORY[0x277D85DE8];
}

__CFString *sub_254975898(char *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<IPConfigurationService %p [%p]> {", a1, v2);
  CFStringAppendFormat(Mutable, 0, @"ifname = %s, serviceID = %s", a1 + 16, a1 + 56);
  CFStringAppend(Mutable, @"}");
  return Mutable;
}

_BYTE *PvDInfoRequestCreate(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (qword_27F612C10 != -1)
  {
    sub_254978E30();
  }

  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 96) = 0u;
  *(Instance + 112) = 0;
  v21 = Instance;
  if (Instance && (v9 = Instance, v10 = sub_254972890(Instance), (*(v9 + 2) = v10) != 0) && (v11 = dispatch_queue_create("PvDInfoRequestQueue", 0), v12 = *(v9 + 3), *(v9 + 3) = v11, v12, *(v9 + 3)))
  {
    v9[40] = 0;
    v13 = *(v9 + 7);
    *(v9 + 7) = 0;

    v14 = *(v9 + 6);
    *(v9 + 6) = 0;

    v15 = *(v9 + 8);
    *(v9 + 8) = 0;

    *(v9 + 26) = 0;
    *(v9 + 14) = 0;
    CFRetain(a1);
    if (a2)
    {
      CFRetain(a2);
    }

    *(v9 + 9) = a1;
    *(v9 + 10) = a2;
    *(v9 + 11) = a3;
    *(v9 + 12) = a4;
  }

  else
  {
    v16 = sub_254978E24();
    v17 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v22, 0, sizeof(v22));
      *MEMORY[0x277CE1608];
      os_log_type_enabled(v16, v17);
      v18 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v18 != v22)
      {
        free(v18);
      }
    }

    sub_254978A20(&v21);
    v9 = v21;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v9;
}

void PvDInfoRequestSetCompletionHandler(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_254975C30;
  block[3] = &unk_279797630;
  v12 = v5;
  v13 = a1;
  v11 = v6;
  v8 = v5;
  v9 = v6;
  dispatch_sync(v7, block);
}

void sub_254975C30(uint64_t a1)
{
  sub_254975D34(*(a1 + 48));
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 16);
  v4 = *(a1 + 40);
  v5 = dispatch_source_create(MEMORY[0x277D85CE0], 0, 0, v2);
  if (v5)
  {
    sub_254972870(v3);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_25497704C;
    v9[3] = &unk_2797976E0;
    v11 = v3;
    v10 = v4;
    v6 = _Block_copy(v9);
    dispatch_source_set_event_handler(v5, v6);
    dispatch_activate(v5);
  }

  v7 = *(a1 + 48);
  v8 = *(v7 + 32);
  *(v7 + 32) = v5;
}

BOOL sub_254975D34(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_source_cancel(*(a1 + 32));
    v3 = *(a1 + 32);
    *(a1 + 32) = 0;

    sub_2549728D4(*(a1 + 16));
  }

  return v1 != 0;
}

void PvDInfoRequestCancel(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 24);
  if (v2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_254975F98;
    block[3] = &unk_279797650;
    block[4] = a1;
    dispatch_sync(v2, block);
    v3 = *(a1 + 16);
    sub_254972870(v3);
    v4 = *(a1 + 24);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_254975FA0;
    v9[3] = &unk_279797650;
    v9[4] = v3;
    dispatch_async(v4, v9);
  }

  else
  {
    v5 = sub_254978E24();
    v6 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v13, 0, sizeof(v13));
      *MEMORY[0x277CE1608];
      os_log_type_enabled(v5, v6);
      v11 = 136315138;
      v12 = "PvDInfoRequestCancel";
      v7 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v7 != v13)
      {
        free(v7);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_254975FA0(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = sub_254972880(*(a1 + 32));
  sub_2549728D4(*(a1 + 32));
  if (v2)
  {
    sub_25497611C(v2);
    sub_254976174(v2);
    *(v2 + 104) = 0;
  }

  else
  {
    v3 = sub_254978E24();
    v4 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v7, 0, sizeof(v7));
      *MEMORY[0x277CE1608];
      os_log_type_enabled(v3, v4);
      v5 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v5 != v7)
      {
        free(v5);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_25497611C(uint64_t a1)
{
  sub_254976FF4(a1);
  v2 = *(a1 + 56);
  if (v2)
  {
    [v2 cancelRequest];
    v3 = *(a1 + 56);
    *(a1 + 56) = 0;
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    [v4 invalidate];
    v5 = *(a1 + 48);
    *(a1 + 48) = 0;
  }

  *(a1 + 40) = 0;
}

double sub_254976174(uint64_t a1)
{
  sub_254978A20((a1 + 72));
  sub_254978A20((a1 + 80));
  sub_254978A20((a1 + 112));
  result = 0.0;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  return result;
}

void PvDInfoRequestResume(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    v2 = *(a1 + 16);
    sub_254972870(v2);
    v3 = *(a1 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_254976388;
    block[3] = &unk_279797670;
    block[4] = a1;
    block[5] = v2;
    dispatch_async(v3, block);
  }

  else
  {
    v4 = sub_254978E24();
    v5 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v11, 0, sizeof(v11));
      *MEMORY[0x277CE1608];
      os_log_type_enabled(v4, v5);
      v9 = 136315138;
      v10 = "PvDInfoRequestResume";
      v6 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v6 != v11)
      {
        free(v6);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_254976388(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 16);
  v3 = sub_254972880(v2);
  if (!v3)
  {
    v7 = sub_254978E24();
    v8 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      aBlock = 0u;
      v41 = 0u;
      *MEMORY[0x277CE1608];
      os_log_type_enabled(v7, v8);
      v9 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v9 != &aBlock)
      {
        free(v9);
      }
    }

    v10 = 0;
    goto LABEL_30;
  }

  v4 = v3;
  if (*(v3 + 40) == 1)
  {
    v5 = sub_254978E24();
    v6 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
LABEL_4:
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      aBlock = 0u;
      v41 = 0u;
      *MEMORY[0x277CE1608];
      os_log_type_enabled(v5, v6);
LABEL_23:
      v28 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v28 != &aBlock)
      {
        free(v28);
      }
    }

LABEL_25:

    v10 = 0;
    goto LABEL_26;
  }

  if (*(v3 + 104))
  {
    v5 = sub_254978E24();
    v11 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      aBlock = 0u;
      v41 = 0u;
      *MEMORY[0x277CE1608];
      os_log_type_enabled(v5, v11);
      v12 = *(v4 + 104);
      if (v12 <= 3)
      {
        v13 = off_279797740[v12];
      }

      goto LABEL_23;
    }

    goto LABEL_25;
  }

  v14 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.IPConfiguration.IPConfigurationHelper"];
  if (!v14)
  {
    v5 = sub_254978E24();
    v6 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      goto LABEL_4;
    }

    goto LABEL_25;
  }

  v10 = v14;
  v15 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2866C0148];
  [v10 setRemoteObjectInterface:v15];

  v16 = [v10 remoteObjectProxyWithErrorHandler:&unk_2866BF6D8];
  if (v16)
  {
    v17 = v16;
    objc_storeStrong((v4 + 48), v10);
    objc_storeStrong((v4 + 56), v17);
    v18 = sub_254978E24();
    v19 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      aBlock = 0u;
      v41 = 0u;
      *MEMORY[0x277CE1608];
      os_log_type_enabled(v18, v19);
      v20 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v20 != &aBlock)
      {
        free(v20);
      }
    }

    [*(v4 + 48) activate];
    *(v4 + 40) = 1;
    v21 = sub_254972880(v2);
    if (v21)
    {
      v22 = v21;
      v23 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v21 + 24));
      if (v23)
      {
        v24 = v22[2];
        sub_254972870(v24);
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 3221225472;
        *&v41 = sub_25497720C;
        *(&v41 + 1) = &unk_279797650;
        *&v42 = v24;
        v25 = _Block_copy(&aBlock);
        dispatch_source_set_event_handler(v23, v25);
        v26 = dispatch_time(0, 1000000 * v22[12]);
        dispatch_source_set_timer(v23, v26, 0xFFFFFFFFFFFFFFFFLL, 0);
        dispatch_activate(v23);
      }

      else
      {
        v25 = sub_254978E24();
        v38 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          aBlock = 0u;
          v41 = 0u;
          *MEMORY[0x277CE1608];
          os_log_type_enabled(v25, v38);
          v39 = _os_log_send_and_compose_impl();
          __SC_log_send2();
          if (v39 != &aBlock)
          {
            free(v39);
          }
        }
      }

      v27 = v22[8];
      v22[8] = v23;
    }

    else
    {
      v27 = sub_254978E24();
      v36 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        aBlock = 0u;
        v41 = 0u;
        *MEMORY[0x277CE1608];
        os_log_type_enabled(v27, v36);
        v37 = _os_log_send_and_compose_impl();
        __SC_log_send2();
        if (v37 != &aBlock)
        {
          free(v37);
        }
      }
    }

    goto LABEL_34;
  }

LABEL_26:
  if (*(v4 + 72))
  {
    v17 = sub_254978E24();
    v29 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      aBlock = 0u;
      v41 = 0u;
      *MEMORY[0x277CE1608];
      os_log_type_enabled(v17, v29);
      v30 = *(v4 + 72);
      v17 = v17;
      CFStringGetCStringPtr(v30, 0x8000100u);
      v31 = _os_log_send_and_compose_impl();

      __SC_log_send2();
      if (v31 != &aBlock)
      {
        v32 = v31;
LABEL_33:
        free(v32);
        goto LABEL_34;
      }
    }

    goto LABEL_34;
  }

LABEL_30:
  v17 = sub_254978E24();
  v33 = _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    aBlock = 0u;
    v41 = 0u;
    *MEMORY[0x277CE1608];
    os_log_type_enabled(v17, v33);
    v34 = _os_log_send_and_compose_impl();
    __SC_log_send2();
    if (v34 != &aBlock)
    {
      v32 = v34;
      goto LABEL_33;
    }
  }

LABEL_34:

  sub_2549728D4(*(a1 + 40));
  v35 = *MEMORY[0x277D85DE8];
}

uint64_t PvDInfoRequestCopyAdditionalInformation(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 24);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_254976E9C;
  v4[3] = &unk_279797698;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

CFDictionaryRef sub_254976E9C(uint64_t a1)
{
  result = CFDictionaryCreateCopy(0, *(*(a1 + 40) + 112));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_254976ED8()
{
  sub_254972A34("Library");
  result = _CFRuntimeRegisterClass();
  qword_27F612C08 = result;
  return result;
}

void sub_254976F0C(void *a1)
{
  sub_254975D34(a1);
  sub_254976FF4(a1);
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    if (v3)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_254977040;
      block[3] = &unk_279797650;
      block[4] = a1;
      dispatch_sync(v3, block);
      v2 = a1[2];
    }

    sub_2549728D4(v2);
    a1[2] = 0;
  }

  v4 = a1[7];
  if (v4)
  {
    [v4 cancelRequest];
    v5 = a1[7];
    a1[7] = 0;
  }

  v6 = a1[6];
  if (v6)
  {
    [v6 invalidate];
    v7 = a1[6];
    a1[6] = 0;
  }

  sub_254976174(a1);
  v8 = a1[3];
  a1[3] = 0;
}

BOOL sub_254976FF4(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    dispatch_source_cancel(*(a1 + 64));
    v3 = *(a1 + 64);
    *(a1 + 64) = 0;

    sub_2549728D4(*(a1 + 16));
  }

  return v1 != 0;
}

uint64_t sub_25497704C(uint64_t a1)
{
  result = sub_254972880(*(a1 + 40));
  if (result)
  {
    result = sub_254975D34(result);
    if (result)
    {
      v3 = *(*(a1 + 32) + 16);

      return v3();
    }
  }

  return result;
}

void sub_2549770A8(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sub_254978E24();
  v4 = _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    memset(v7, 0, sizeof(v7));
    *MEMORY[0x277CE1608];
    os_log_type_enabled(v3, v4);
    v5 = _os_log_send_and_compose_impl();
    __SC_log_send2();
    if (v5 != v7)
    {
      free(v5);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_25497720C(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v1 = sub_254972880(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    if (sub_254976FF4(v1))
    {
      v3 = *(v2 + 72);
      v4 = *(v2 + 80);
      v5 = [MEMORY[0x277CCACA8] stringWithCString:*(v2 + 88) encoding:4];
      if (v5)
      {
        v6 = *(v2 + 16);
        sub_254972870(v6);
        v7 = *(v2 + 56);
        *&v17 = MEMORY[0x277D85DD0];
        *(&v17 + 1) = 3221225472;
        *&v18 = sub_254977568;
        *(&v18 + 1) = &unk_279797720;
        *&v19 = v6;
        [v7 fetchPvDAdditionalInformationWithPvDID:v3 prefixesArray:v4 bindToInterface:v5 andCompletionHandler:&v17];
        *(v2 + 104) = 1;
      }

      else
      {
        v8 = sub_254978E24();
        v9 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v17 = 0u;
          v18 = 0u;
          *MEMORY[0x277CE1608];
          os_log_type_enabled(v8, v9);
          v15 = *(v2 + 88);
          v10 = _os_log_send_and_compose_impl();
          __SC_log_send2();
          if (v10 != &v17)
          {
            free(v10);
          }
        }

        if (*(v2 + 104) != 1)
        {
          v11 = sub_254978E24();
          v12 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v23 = 0u;
            v24 = 0u;
            v21 = 0u;
            v22 = 0u;
            v19 = 0u;
            v20 = 0u;
            v17 = 0u;
            v18 = 0u;
            *MEMORY[0x277CE1608];
            os_log_type_enabled(v11, v12);
            v16 = *(v2 + 72);
            v13 = _os_log_send_and_compose_impl();
            __SC_log_send2();
            if (v13 != &v17)
            {
              free(v13);
            }
          }

          sub_25497611C(v2);
          sub_254976174(v2);
          *(v2 + 104) = 0;
        }
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_254977568(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sub_254972880(*(a1 + 32));
  v18 = v4;
  if (v4)
  {
    v5 = v4;
    CFRetain(v4);
    v6 = [v3 valueForKey:@"valid_fetch"];
    v7 = [v3 valueForKey:@"additional_information"];
    v8 = v7;
    if (v6 == *MEMORY[0x277CBED28] && v7 != 0)
    {
      v5[14] = v7;
    }

    if (v5[3])
    {
      v10 = v5[2];
      sub_254972870(v10);
      v11 = v5[3];
      *&block = MEMORY[0x277D85DD0];
      *(&block + 1) = 3221225472;
      *&v22 = sub_2549778D0;
      *(&v22 + 1) = &unk_279797670;
      *&v23 = v10;
      *(&v23 + 1) = v6;
      dispatch_async(v11, &block);
    }

    else
    {
      v14 = sub_254978E24();
      v15 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v28 = 0u;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        block = 0u;
        *MEMORY[0x277CE1608];
        os_log_type_enabled(v14, v15);
        v19 = 136315138;
        v20 = "PvDInfoRequestCompletedCallback";
        v16 = _os_log_send_and_compose_impl();
        __SC_log_send2();
        if (v16 != &block)
        {
          free(v16);
        }
      }
    }
  }

  else
  {
    v8 = sub_254978E24();
    v12 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v28 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      block = 0u;
      *MEMORY[0x277CE1608];
      os_log_type_enabled(v8, v12);
      v19 = 136315138;
      v20 = "PvDInfoRequestXPCCompletionHandler";
      v13 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v13 != &block)
      {
        free(v13);
      }
    }
  }

  sub_254978A20(&v18);
  sub_2549728D4(*(a1 + 32));

  v17 = *MEMORY[0x277D85DE8];
}

void sub_2549778D0(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = sub_254972880(*(a1 + 32));
  if (v2)
  {
    v3 = v2;
    if (*(a1 + 40) == *MEMORY[0x277CBED10])
    {
      v5 = sub_254978E24();
      v13 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        *MEMORY[0x277CE1608];
        os_log_type_enabled(v5, v13);
        v14 = _os_log_send_and_compose_impl();
        __SC_log_send2();
        if (v14 != &v19)
        {
          free(v14);
        }
      }

      v8 = 3;
    }

    else
    {
      v4 = *(v2 + 112);
      v5 = sub_254978E24();
      v6 = _SC_syslog_os_log_mapping();
      v7 = __SC_log_enabled();
      if (v4)
      {
        v8 = 2;
        if (v7)
        {
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          *MEMORY[0x277CE1608];
          os_log_type_enabled(v5, v6);
          v18 = *(v3 + 112);
          v9 = _os_log_send_and_compose_impl();
          __SC_log_send2();
          if (v9 != &v19)
          {
            free(v9);
          }

          v8 = 2;
        }
      }

      else
      {
        if (v7)
        {
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          *MEMORY[0x277CE1608];
          os_log_type_enabled(v5, v6);
          v15 = _os_log_send_and_compose_impl();
          __SC_log_send2();
          if (v15 != &v19)
          {
            free(v15);
          }
        }

        v8 = 0;
      }
    }

    *(v3 + 104) = v8;
    sub_25497611C(v3);
    v16 = *(v3 + 32);
    if (v16)
    {
      dispatch_source_merge_data(v16, 1uLL);
    }
  }

  else
  {
    v10 = sub_254978E24();
    v11 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      *MEMORY[0x277CE1608];
      os_log_type_enabled(v10, v11);
      v12 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v12 != &v19)
      {
        free(v12);
      }
    }
  }

  sub_2549728D4(*(a1 + 32));
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t sub_254977D2C(mach_port_t a1, __int128 *a2, uint64_t a3, int a4, _OWORD *a5, _DWORD *a6)
{
  v31 = *MEMORY[0x277D85DE8];
  msg.msgh_id = 0;
  *(&v23 + 1) = 0;
  v25 = 0u;
  memset(v30, 0, sizeof(v30));
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  *&msg.msgh_size = 0u;
  v21 = 1;
  v22 = a3;
  LODWORD(v23) = 16777472;
  DWORD1(v23) = a4;
  *(&v23 + 1) = *MEMORY[0x277D85EF8];
  v24 = *a2;
  LODWORD(v25) = a4;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4E2700000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v11 = mach_msg(&msg, 3, 0x48u, 0xB0u, msgh_local_port, 0, 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (v11)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      goto LABEL_25;
    }

    if (msg.msgh_id == 71)
    {
      v12 = 4294966988;
    }

    else if (msg.msgh_id == 20107)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 168)
        {
          if (!msg.msgh_remote_port)
          {
            v12 = HIDWORD(v22);
            if (!HIDWORD(v22))
            {
              v16 = v28;
              a5[4] = v27;
              a5[5] = v16;
              v17 = *v30;
              a5[6] = v29;
              a5[7] = v17;
              v18 = v24;
              *a5 = v23;
              a5[1] = v18;
              v19 = v26;
              a5[2] = v25;
              a5[3] = v19;
              *a6 = *&v30[16];
              goto LABEL_25;
            }

            goto LABEL_24;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v13 = 1;
          }

          else
          {
            v13 = HIDWORD(v22) == 0;
          }

          if (v13)
          {
            v12 = 4294966996;
          }

          else
          {
            v12 = HIDWORD(v22);
          }

          goto LABEL_24;
        }
      }

      v12 = 4294966996;
    }

    else
    {
      v12 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    goto LABEL_25;
  }

  mig_put_reply_port(msg.msgh_local_port);
LABEL_25:
  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t sub_254977F50(mach_port_t a1, __int128 *a2, uint64_t a3, int a4, int *a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = 1;
  v16 = a3;
  v17 = 16777472;
  v18 = a4;
  v19 = *MEMORY[0x277D85EF8];
  v20 = *a2;
  v21 = a4;
  reply_port = mig_get_reply_port();
  *&v14.msgh_bits = 2147489043;
  v14.msgh_remote_port = a1;
  v14.msgh_local_port = reply_port;
  *&v14.msgh_voucher_port = 0x4E2A00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v14);
    msgh_local_port = v14.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v9 = mach_msg(&v14, 3, 0x48u, 0x30u, msgh_local_port, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (v9)
    {
      mig_dealloc_reply_port(v14.msgh_local_port);
      goto LABEL_25;
    }

    if (v14.msgh_id == 71)
    {
      v10 = 4294966988;
    }

    else if (v14.msgh_id == 20110)
    {
      if ((v14.msgh_bits & 0x80000000) == 0)
      {
        if (v14.msgh_size == 40)
        {
          if (!v14.msgh_remote_port)
          {
            v10 = HIDWORD(v16);
            if (!HIDWORD(v16))
            {
              *a5 = v17;
              goto LABEL_25;
            }

            goto LABEL_24;
          }
        }

        else if (v14.msgh_size == 36)
        {
          if (v14.msgh_remote_port)
          {
            v11 = 1;
          }

          else
          {
            v11 = HIDWORD(v16) == 0;
          }

          if (v11)
          {
            v10 = 4294966996;
          }

          else
          {
            v10 = HIDWORD(v16);
          }

          goto LABEL_24;
        }
      }

      v10 = 4294966996;
    }

    else
    {
      v10 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&v14);
    goto LABEL_25;
  }

  mig_put_reply_port(v14.msgh_local_port);
LABEL_25:
  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_254978108(mach_port_t a1, __int128 *a2, __int128 *a3, _DWORD *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = a3[4];
  v8 = a3[6];
  v9 = a3[7];
  v29 = a3[5];
  v30 = v8;
  v31 = v9;
  v10 = *a3;
  v11 = a3[1];
  v23 = v6;
  v24 = v10;
  v12 = a3[2];
  v13 = a3[3];
  v25 = v11;
  v26 = v12;
  v22 = *MEMORY[0x277D85EF8];
  v28 = v7;
  v27 = v13;
  reply_port = mig_get_reply_port();
  *&msg.msgh_bits = 5395;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  *&msg.msgh_voucher_port = 0x4E2D00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v16 = mach_msg(&msg, 3, 0xB0u, 0x30u, msgh_local_port, 0, 0);
  v17 = v16;
  if ((v16 - 268435458) > 0xE || ((1 << (v16 - 2)) & 0x4003) == 0)
  {
    if (v16)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      goto LABEL_25;
    }

    if (msg.msgh_id == 71)
    {
      v17 = 4294966988;
    }

    else if (msg.msgh_id == 20113)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 40)
        {
          if (!msg.msgh_remote_port)
          {
            v17 = v23;
            if (!v23)
            {
              *a4 = DWORD1(v23);
              goto LABEL_25;
            }

            goto LABEL_24;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v18 = 1;
          }

          else
          {
            v18 = v23 == 0;
          }

          if (v18)
          {
            v17 = 4294966996;
          }

          else
          {
            v17 = v23;
          }

          goto LABEL_24;
        }
      }

      v17 = 4294966996;
    }

    else
    {
      v17 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    goto LABEL_25;
  }

  mig_put_reply_port(msg.msgh_local_port);
LABEL_25:
  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t sub_2549782D8(mach_port_t a1, __int128 *a2, __int128 *a3, _DWORD *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = a3[4];
  v8 = a3[6];
  v9 = a3[7];
  v29 = a3[5];
  v30 = v8;
  v31 = v9;
  v10 = *a3;
  v11 = a3[1];
  v23 = v6;
  v24 = v10;
  v12 = a3[2];
  v13 = a3[3];
  v25 = v11;
  v26 = v12;
  v22 = *MEMORY[0x277D85EF8];
  v28 = v7;
  v27 = v13;
  reply_port = mig_get_reply_port();
  *&msg.msgh_bits = 5395;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  *&msg.msgh_voucher_port = 0x4E2E00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v16 = mach_msg(&msg, 3, 0xB0u, 0x30u, msgh_local_port, 0, 0);
  v17 = v16;
  if ((v16 - 268435458) > 0xE || ((1 << (v16 - 2)) & 0x4003) == 0)
  {
    if (v16)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      goto LABEL_25;
    }

    if (msg.msgh_id == 71)
    {
      v17 = 4294966988;
    }

    else if (msg.msgh_id == 20114)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 40)
        {
          if (!msg.msgh_remote_port)
          {
            v17 = v23;
            if (!v23)
            {
              *a4 = DWORD1(v23);
              goto LABEL_25;
            }

            goto LABEL_24;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v18 = 1;
          }

          else
          {
            v18 = v23 == 0;
          }

          if (v18)
          {
            v17 = 4294966996;
          }

          else
          {
            v17 = v23;
          }

          goto LABEL_24;
        }
      }

      v17 = 4294966996;
    }

    else
    {
      v17 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    goto LABEL_25;
  }

  mig_put_reply_port(msg.msgh_local_port);
LABEL_25:
  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t sub_2549784A8(mach_port_t a1, __int128 *a2, uint64_t a3, int a4, int *a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v15 = 1;
  v16 = a3;
  v17 = 16777472;
  v18 = a4;
  v19 = *MEMORY[0x277D85EF8];
  v20 = *a2;
  v21 = a4;
  reply_port = mig_get_reply_port();
  *&v14.msgh_bits = 2147489043;
  v14.msgh_remote_port = a1;
  v14.msgh_local_port = reply_port;
  *&v14.msgh_voucher_port = 0x4E2F00000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v14);
    msgh_local_port = v14.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v9 = mach_msg(&v14, 3, 0x48u, 0x30u, msgh_local_port, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (v9)
    {
      mig_dealloc_reply_port(v14.msgh_local_port);
      goto LABEL_25;
    }

    if (v14.msgh_id == 71)
    {
      v10 = 4294966988;
    }

    else if (v14.msgh_id == 20115)
    {
      if ((v14.msgh_bits & 0x80000000) == 0)
      {
        if (v14.msgh_size == 40)
        {
          if (!v14.msgh_remote_port)
          {
            v10 = HIDWORD(v16);
            if (!HIDWORD(v16))
            {
              *a5 = v17;
              goto LABEL_25;
            }

            goto LABEL_24;
          }
        }

        else if (v14.msgh_size == 36)
        {
          if (v14.msgh_remote_port)
          {
            v11 = 1;
          }

          else
          {
            v11 = HIDWORD(v16) == 0;
          }

          if (v11)
          {
            v10 = 4294966996;
          }

          else
          {
            v10 = HIDWORD(v16);
          }

          goto LABEL_24;
        }
      }

      v10 = 4294966996;
    }

    else
    {
      v10 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&v14);
    goto LABEL_25;
  }

  mig_put_reply_port(v14.msgh_local_port);
LABEL_25:
  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_254978660(mach_port_t a1, __int128 *a2, __int128 *a3, _DWORD *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = a3[4];
  v8 = a3[6];
  v9 = a3[7];
  v29 = a3[5];
  v30 = v8;
  v31 = v9;
  v10 = *a3;
  v11 = a3[1];
  v23 = v6;
  v24 = v10;
  v12 = a3[2];
  v13 = a3[3];
  v25 = v11;
  v26 = v12;
  v22 = *MEMORY[0x277D85EF8];
  v28 = v7;
  v27 = v13;
  reply_port = mig_get_reply_port();
  *&msg.msgh_bits = 5395;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  *&msg.msgh_voucher_port = 0x4E3500000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v16 = mach_msg(&msg, 3, 0xB0u, 0x30u, msgh_local_port, 0, 0);
  v17 = v16;
  if ((v16 - 268435458) > 0xE || ((1 << (v16 - 2)) & 0x4003) == 0)
  {
    if (v16)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      goto LABEL_25;
    }

    if (msg.msgh_id == 71)
    {
      v17 = 4294966988;
    }

    else if (msg.msgh_id == 20121)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 40)
        {
          if (!msg.msgh_remote_port)
          {
            v17 = v23;
            if (!v23)
            {
              *a4 = DWORD1(v23);
              goto LABEL_25;
            }

            goto LABEL_24;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v18 = 1;
          }

          else
          {
            v18 = v23 == 0;
          }

          if (v18)
          {
            v17 = 4294966996;
          }

          else
          {
            v17 = v23;
          }

          goto LABEL_24;
        }
      }

      v17 = 4294966996;
    }

    else
    {
      v17 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    goto LABEL_25;
  }

  mig_put_reply_port(msg.msgh_local_port);
LABEL_25:
  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t sub_254978830(int a1, _OWORD *a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  memset(&msg_4[16], 0, 32);
  v18 = 0u;
  *msg_4 = 0u;
  *&msg_4[20] = *MEMORY[0x277D85EF8];
  *&msg_4[28] = *a2;
  reply_port = mig_get_reply_port();
  *&msg_4[4] = a1;
  *&msg_4[8] = reply_port;
  msg = 5395;
  *&msg_4[12] = 0x4E3600000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    v10 = *&msg_4[8];
  }

  else
  {
    v10 = reply_port;
  }

  v11 = mach_msg(&msg, 3, 0x30u, 0x44u, v10, 0, 0);
  v12 = v11;
  if ((v11 - 268435458) <= 0xE && ((1 << (v11 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg_4[8]);
  }

  else
  {
    if (!v11)
    {
      if (*&msg_4[16] == 71)
      {
        v12 = 4294966988;
      }

      else if (*&msg_4[16] == 20122)
      {
        if (msg < 0)
        {
          v12 = 4294966996;
          if (*&msg_4[20] == 1 && *msg_4 == 60 && !*&msg_4[4] && msg_4[35] == 1)
          {
            v13 = *&msg_4[36];
            if (*&msg_4[36] == v18)
            {
              v12 = 0;
              *a3 = *&msg_4[24];
              *a4 = v13;
              *a5 = DWORD1(v18);
              goto LABEL_27;
            }
          }
        }

        else if (*msg_4 == 36)
        {
          v12 = 4294966996;
          if (*&msg_4[28])
          {
            if (*&msg_4[4])
            {
              v12 = 4294966996;
            }

            else
            {
              v12 = *&msg_4[28];
            }
          }
        }

        else
        {
          v12 = 4294966996;
        }
      }

      else
      {
        v12 = 4294966995;
      }

      mach_msg_destroy(&msg);
      goto LABEL_27;
    }

    mig_dealloc_reply_port(*&msg_4[8]);
  }

LABEL_27:
  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_254978A20(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }
  }
}

uint64_t sub_254978A58(const __CFString *a1, UInt8 *a2, int a3, Boolean a4)
{
  usedBufLen = 0;
  v11.length = CFStringGetLength(a1);
  v11.location = 0;
  CFStringGetBytes(a1, v11, 0x8000100u, 0, a4, a2, a3 - 1, &usedBufLen);
  v8 = usedBufLen;
  if (a2)
  {
    a2[usedBufLen] = 0;
  }

  return (v8 + 1);
}

uint64_t sub_254978AE0(const __CFString *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  a2[1] = 0;
  TypeID = CFStringGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID)
  {
    result = CFStringGetCString(a1, buffer, 64, 0x600u);
    if (result)
    {
      result = inet_pton(30, buffer, a2) == 1;
    }
  }

  else
  {
    result = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_254978B98(const __CFString *a1, _DWORD *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  sub_254978A58(a1, __str, 64, 0);
  v3 = strtoul(__str, 0, 0);
  if (v3 == -1 || (v4 = v3, *__error() == 34))
  {
    result = 0;
  }

  else
  {
    *a2 = v4;
    result = 1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_254978C38(const __CFString *a1, _DWORD *a2)
{
  TypeID = CFStringGetTypeID();
  if (!a1)
  {
    CFBooleanGetTypeID();
    CFNumberGetTypeID();
    return 0;
  }

  if (CFGetTypeID(a1) == TypeID)
  {
    return (sub_254978B98(a1, a2) & 1) != 0;
  }

  v6 = CFBooleanGetTypeID();
  if (CFGetTypeID(a1) != v6)
  {
    v7 = CFNumberGetTypeID();
    if (CFGetTypeID(a1) == v7)
    {
      result = CFNumberGetValue(a1, kCFNumberSInt32Type, a2);
      if (!result)
      {
        return result;
      }

      return 1;
    }

    return 0;
  }

  *a2 = CFBooleanGetValue(a1);
  return 1;
}

CFStringRef sub_254978CFC(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = inet_ntop(30, a1, v4, 0x2Eu);
  result = CFStringCreateWithCString(0, v1, 0x600u);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

CFStringRef sub_254978D68(const __CFAllocator *a1)
{
  v2 = CFUUIDCreate(a1);
  v3 = CFUUIDCreateString(a1, v2);
  CFRelease(v2);
  return v3;
}

const __CFData *sub_254978DAC(UInt8 *bytes, int a2)
{
  result = CFDataCreateWithBytesNoCopy(0, bytes, a2, *MEMORY[0x277CBED00]);
  if (result)
  {
    v3 = result;
    v4 = CFPropertyListCreateWithData(0, result, 0, 0, 0);
    CFRelease(v3);
    return v4;
  }

  return result;
}