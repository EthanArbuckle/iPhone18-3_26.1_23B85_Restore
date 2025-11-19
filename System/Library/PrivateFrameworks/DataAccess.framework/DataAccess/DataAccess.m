id getESAccountClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getESAccountClass_softClass;
  v7 = getESAccountClass_softClass;
  if (!getESAccountClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getESAccountClass_block_invoke;
    v3[3] = &unk_278F13318;
    v3[4] = &v4;
    __getESAccountClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_24844F678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2484537D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_248454A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ExchangeSyncLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!ExchangeSyncLibraryCore_frameworkLibrary)
  {
    ExchangeSyncLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = ExchangeSyncLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __ExchangeSyncLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ExchangeSyncLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getESAccountClass_block_invoke(uint64_t a1)
{
  v3 = 0;
  if (!ExchangeSyncLibraryCore())
  {
    __getESAccountClass_block_invoke_cold_2(&v3);
  }

  result = objc_getClass("ESAccount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getESAccountClass_block_invoke_cold_1();
  }

  getESAccountClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

__CFString *DAStringFromCalEntityType(int a1)
{
  if (a1 > 99)
  {
    switch(a1)
    {
      case 'd':
        return @"Participant";
      case 'e':
        return @"CalendarItem";
      case 'f':
        return @"Notification";
      default:
        return @"Unknown";
    }
  }

  else
  {
    v1 = a1 + 1;
    result = @"Calendar";
    switch(v1)
    {
      case 0:
        result = @"Undefined";
        break;
      case 2:
        return result;
      case 3:
        result = @"Event";
        break;
      case 4:
        result = @"Reminder";
        break;
      case 5:
        result = @"Alarm";
        break;
      case 6:
        result = @"Recurrence";
        break;
      case 7:
        result = @"Store";
        break;
      case 8:
        result = @"Attendee";
        break;
      case 9:
        result = @"Organizer";
        break;
      case 10:
        result = @"EventAction";
        break;
      case 11:
        result = @"ExceptionDate";
        break;
      case 12:
        result = @"Attachment";
        break;
      case 13:
        result = @"Category";
        break;
      case 14:
        result = @"CategoryLink";
        break;
      case 15:
        result = @"Location";
        break;
      case 16:
        result = @"Sharee";
        break;
      case 17:
        result = @"InviteReply";
        break;
      case 18:
        result = @"ResourceChangeNotification";
        break;
      case 19:
        result = @"ResourceChange";
        break;
      case 20:
        result = @"SuggestionNotification";
        break;
      case 21:
        result = @"SuggestedEventInfo";
        break;
      case 22:
        result = @"Contact";
        break;
      case 24:
        result = @"Conference";
        break;
      case 25:
        result = @"Error";
        break;
      case 26:
        result = @"AttachmentFile";
        break;
      case 27:
        result = @"AuxDatabase";
        break;
      case 28:
        result = @"AuxDatabaseAccount";
        break;
      case 29:
        result = @"Image";
        break;
      case 30:
        result = @"Color";
        break;
      default:
        return @"Unknown";
    }
  }

  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24845E7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24845FA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _setPasswordInKeychain(__CFDictionary *a1, void *value)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CDC5E8];
  CFDictionaryAddValue(a1, *MEMORY[0x277CDC5E8], value);
  v5 = DALoggingwithCategory();
  v6 = MEMORY[0x277D03988];
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v7))
  {
    LOWORD(v19[0]) = 0;
    _os_log_impl(&dword_24844D000, v5, v7, "Setting password for account", v19, 2u);
  }

  v19[0] = 0;
  v8 = SecItemAdd(a1, v19);
  v9 = v8;
  if (v8)
  {
    if (v8 == -25299)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionaryAddValue(Mutable, v4, value);
      v11 = *MEMORY[0x277CDBED8];
      v12 = CFDictionaryGetValue(a1, *MEMORY[0x277CDBED8]);
      if (v12)
      {
        CFDictionaryAddValue(Mutable, v11, v12);
      }

      CFDictionaryRemoveValue(a1, v11);
      v9 = SecItemUpdate(a1, Mutable);
      if (v9)
      {
        v13 = DALoggingwithCategory();
        v14 = *(v6 + 3);
        if (os_log_type_enabled(v13, v14))
        {
          *buf = 67109120;
          v21 = v9;
          _os_log_impl(&dword_24844D000, v13, v14, "Couldn't set password, error %d", buf, 8u);
        }
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    else
    {
      v15 = DALoggingwithCategory();
      v16 = *(v6 + 3);
      if (os_log_type_enabled(v15, v16))
      {
        *buf = 67109120;
        v21 = v9;
        _os_log_impl(&dword_24844D000, v15, v16, "Couldn't add password, error %d", buf, 8u);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_248468C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248468FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2484691C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2484694B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_248469664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFTypeRef _DASecCopyIdentityFromPersist(CFTypeRef a1)
{
  keys[2] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = *MEMORY[0x277CDC5F0];
    keys[0] = *MEMORY[0x277CDC568];
    keys[1] = v1;
    values[0] = *MEMORY[0x277CBED28];
    values[1] = a1;
    v2 = CFDictionaryCreate(0, keys, values, 2, 0, 0);
    result = 0;
    v3 = SecItemCopyMatching(v2, &result);
    if (v2)
    {
      CFRelease(v2);
    }

    if (v3)
    {
      v4 = DALoggingwithCategory();
      v5 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v4, v5))
      {
        *buf = 67109120;
        v9 = v3;
        _os_log_impl(&dword_24844D000, v4, v5, "Could not find identity for persistent ref. %d", buf, 8u);
      }
    }

    a1 = result;
  }

  v6 = *MEMORY[0x277D85DE8];
  return a1;
}

BOOL _DASecDeleteIdentityByPersistentRef(_BOOL8 result)
{
  keys[1] = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = *MEMORY[0x277CDC5F0];
    values = result;
    keys[0] = v1;
    v2 = CFDictionaryCreate(0, keys, &values, 1, 0, 0);
    v3 = SecItemDelete(v2);
    if (v2)
    {
      CFRelease(v2);
    }

    if (v3)
    {
      v4 = DALoggingwithCategory();
      v5 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v4, v5))
      {
        v7[0] = 67109120;
        v7[1] = v3;
        _os_log_impl(&dword_24844D000, v4, v5, "Could not delete identity by persistent ref. %d", v7, 8u);
      }
    }

    result = v3 == 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

id _DASecIdentityCopySSLClientAuthenticationChain(__SecIdentity *a1)
{
  SSL = SecPolicyCreateSSL(0, 0);
  if (SSL)
  {
    v3 = SSL;
    certificateRef = 0;
    v4 = 0;
    if (!SecIdentityCopyCertificate(a1, &certificateRef))
    {
      v5 = [MEMORY[0x277CBEB18] arrayWithObject:certificateRef];
      CFRelease(certificateRef);
      trust = 0;
      v4 = 0;
      if (!SecTrustCreateWithCertificates(v5, v3, &trust))
      {
        v11 = 0;
        if (MEMORY[0x24C1CE050](trust, &v11))
        {
          v4 = 0;
        }

        else
        {
          CertificateCount = SecTrustGetCertificateCount(trust);
          v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:CertificateCount];
          [v4 addObject:a1];
          if (CertificateCount >= 2)
          {
            v7 = -CertificateCount;
            v8 = 1;
            do
            {
              if (v7 + v8 != -1 || v11 != 4)
              {
                [v4 addObject:{SecTrustGetCertificateAtIndex(trust, v8)}];
              }

              ++v8;
            }

            while (v7 + v8);
          }
        }

        CFRelease(trust);
      }
    }

    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id acDataclassForDADataclass(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1 > 7)
  {
    switch(a1)
    {
      case 8:
        v2 = MEMORY[0x277CB9110];
        goto LABEL_17;
      case 16:
        v2 = MEMORY[0x277CB9190];
        goto LABEL_17;
      case 32:
        v2 = MEMORY[0x277CB9178];
        goto LABEL_17;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        v2 = MEMORY[0x277CB9150];
        goto LABEL_17;
      case 2:
        v2 = MEMORY[0x277CB9108];
        goto LABEL_17;
      case 4:
        v2 = MEMORY[0x277CB90F0];
LABEL_17:
        v5 = *v2;
        goto LABEL_18;
    }
  }

  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 4);
  if (os_log_type_enabled(v3, v4))
  {
    v8 = 136315394;
    v9 = "NSString *acDataclassForDADataclass(DASingleDataclass)";
    v10 = 2048;
    v11 = a1;
    _os_log_impl(&dword_24844D000, v3, v4, "%s unhandled dataclass %lx", &v8, 0x16u);
  }

  v5 = 0;
LABEL_18:
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t daDataclassForACDataclass(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277CB9108]])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CB90F0]])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CB9190]])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CB9178]])
  {
    v2 = 32;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CB9150]])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CB9110]])
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id acDataclassesForDADataclasses(char a1)
{
  v2 = objc_opt_new();
  v3 = v2;
  if ((a1 & 2) != 0)
  {
    [v2 addObject:*MEMORY[0x277CB9108]];
    if ((a1 & 4) == 0)
    {
LABEL_3:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:*MEMORY[0x277CB90F0]];
  if ((a1 & 0x10) == 0)
  {
LABEL_4:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v3 addObject:*MEMORY[0x277CB9190]];
  if ((a1 & 0x20) == 0)
  {
LABEL_5:
    if ((a1 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v3 addObject:*MEMORY[0x277CB9178]];
  if ((a1 & 1) == 0)
  {
LABEL_6:
    if ((a1 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  [v3 addObject:*MEMORY[0x277CB9150]];
  if ((a1 & 8) != 0)
  {
LABEL_7:
    [v3 addObject:*MEMORY[0x277CB9110]];
  }

LABEL_8:

  return v3;
}

uint64_t daDataclassesForACDataclasses(void *a1)
{
  v1 = *MEMORY[0x277CB9108];
  v2 = a1;
  if ([v2 containsObject:v1])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  if ([v2 containsObject:*MEMORY[0x277CB90F0]])
  {
    v3 |= 4uLL;
  }

  if ([v2 containsObject:*MEMORY[0x277CB9190]])
  {
    v3 |= 0x10uLL;
  }

  if ([v2 containsObject:*MEMORY[0x277CB9178]])
  {
    v3 |= 0x20uLL;
  }

  v4 = v3 | [v2 containsObject:*MEMORY[0x277CB9150]];
  v5 = [v2 containsObject:*MEMORY[0x277CB9110]];

  if (v5)
  {
    return v4 | 8;
  }

  else
  {
    return v4;
  }
}

id sharedDAAccountStore()
{
  if (sharedDAAccountStore_onceToken != -1)
  {
    sharedDAAccountStore_cold_1();
  }

  v1 = sharedDAAccountStore_store;

  return v1;
}

uint64_t __sharedDAAccountStore_block_invoke()
{
  sharedDAAccountStore_store = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24846B1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24846B38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24846B938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t flockWithProcessAssertion(int a1, int a2, void *a3)
{
  v5 = a3;
  if (flockWithProcessAssertion_pred == -1)
  {
    if (a2)
    {
LABEL_3:
      if (CFDictionaryGetValue(flockWithProcessAssertion_fdToProcessAssertions, a1))
      {
        flockWithProcessAssertion_cold_2();
      }

      if ((_sDAIsRunningInDataAccessD & 1) == 0)
      {
        getpid();
        v6 = SBSProcessAssertionCreateForPID();
        if (v6)
        {
          v7 = v6;
          CFDictionarySetValue(flockWithProcessAssertion_fdToProcessAssertions, a1, v6);
          CFRelease(v7);
        }
      }

      v8 = flock(a1, 2);
      goto LABEL_12;
    }
  }

  else
  {
    flockWithProcessAssertion_cold_1();
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v8 = flock(a1, 8);
  if ((_sDAIsRunningInDataAccessD & 1) == 0)
  {
    CFDictionaryGetValue(flockWithProcessAssertion_fdToProcessAssertions, a1);
    CFDictionaryRemoveValue(flockWithProcessAssertion_fdToProcessAssertions, a1);
  }

LABEL_12:

  return v8;
}

CFMutableDictionaryRef __flockWithProcessAssertion_block_invoke()
{
  result = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]);
  flockWithProcessAssertion_fdToProcessAssertions = result;
  return result;
}

void addNullRunLoopSourceForRunLoopAndModes(__CFRunLoop *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = malloc_type_malloc(0x10uLL, 0x1020040D5A9D86FuLL);
  context.version = 0;
  context.info = v4;
  memset(&context.retain, 0, 40);
  context.schedule = _nullSourceSchedule;
  context.cancel = _nullSourceCancel;
  context.perform = _nullSourcePerform;
  v5 = CFRunLoopSourceCreate(*MEMORY[0x277CBECE8], 0, &context);
  *v4 = 0;
  v4[1] = v5;
  if (v5)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          CFRunLoopAddSource(a1, v5, *(*(&v12 + 1) + 8 * v10++));
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v8);
    }

    if (*v4)
    {
      CFRunLoopSourceSignal(v5);
      if (!v5)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  free(v4);
  if (v5)
  {
LABEL_13:
    CFRelease(v5);
  }

LABEL_14:

  v11 = *MEMORY[0x277D85DE8];
}

void _nullSourceCancel(void *a1)
{
  if ((*a1)-- == 1)
  {
    free(a1);
  }
}

uint64_t walkUpDAErrorChain(id *a1, void *a2)
{
  if (a1 && a2)
  {
    v4 = *MEMORY[0x277CCA7E8];
    v5 = *MEMORY[0x277D038E8];
    while (1)
    {
      v6 = [*a1 userInfo];
      v7 = [v6 objectForKeyedSubscript:v4];
      v8 = [v6 objectForKeyedSubscript:v5];
      v9 = v8;
      if (!v7 || v8 == 0)
      {
        break;
      }

      v11 = v7;
      *a1 = v7;
      *a2 = [v9 integerValue];
    }
  }

  return 1;
}

BOOL statusAndErrorIndicateWeShouldTurnOnReachability(uint64_t a1, void *a2)
{
  v12 = a2;
  v13 = a1;
  v2 = a2;
  walkUpDAErrorChain(&v12, &v13);
  v3 = v12;

  if (!v13)
  {
    v6 = [v3 domain];
    v7 = [v6 isEqualToString:*MEMORY[0x277CCA738]];

    if (v7)
    {
      v8 = [v3 code];
      v10 = (v8 + 1020) <= 0x11 && ((1 << (v8 - 4)) & 0x3C805) != 0 || v8 == -1;
      if (v10 || v8 == -2000)
      {
        v4 = 1;
        goto LABEL_3;
      }
    }

    else
    {
      v11 = [v3 domain];
      if ([v11 isEqualToString:@"DAAccountValidationDomain"])
      {
        v4 = [v3 code] == 101;

        goto LABEL_3;
      }
    }
  }

  v4 = 0;
LABEL_3:

  return v4;
}

uint64_t statusAndErrorIndicatePersistentFolderSyncFailure(unint64_t a1, void *a2)
{
  v6 = a2;
  v7 = a1;
  v2 = a2;
  walkUpDAErrorChain(&v6, &v7);
  v3 = v6;

  v4 = 0;
  if (v7 <= 0x22)
  {
    if (((1 << v7) & 0x6C0200620) != 0)
    {
      v4 = 1;
    }

    else if (v7 == 1)
    {
      v4 = [MEMORY[0x277D03910] isAppleInternalInstall] ^ 1;
    }
  }

  return v4;
}

id runLoopModesToPerformDelayedSelectorsIn()
{
  v11[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEB88] currentRunLoop];
  v1 = [v0 currentMode];

  v2 = *MEMORY[0x277CBE640];
  if (v1 && ![v1 isEqualToString:*MEMORY[0x277CBE640]])
  {
    v9 = v2;
    v10 = v1;
    v3 = MEMORY[0x277CBEA60];
    v4 = &v9;
    v5 = 2;
  }

  else
  {
    v11[0] = v2;
    v3 = MEMORY[0x277CBEA60];
    v4 = v11;
    v5 = 1;
  }

  v6 = [v3 arrayWithObjects:v4 count:{v5, v9, v10, v11[0]}];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

id DAUserAgent()
{
  v0 = DAUserAgent__sUserAgentString;
  if (!DAUserAgent__sUserAgentString)
  {
    v1 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v2 = [v1 infoDictionary];
    v3 = [v2 objectForKeyedSubscript:@"CFBundleVersion"];

    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = @"1.0";
    }

    v5 = _CFCopyServerVersionDictionary();
    if (!v5)
    {
      v5 = _CFCopySystemVersionDictionary();
    }

    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CBEC88]];
    v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277CBEC70]];
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v9 = [MEMORY[0x277CCAC38] processInfo];
    v10 = [v9 processName];
    v11 = [v8 initWithFormat:@"%@/%@ (%@) %@/%@", @"iOS", v6, v7, v10, v4];
    v12 = DAUserAgent__sUserAgentString;
    DAUserAgent__sUserAgentString = v11;

    v0 = DAUserAgent__sUserAgentString;
  }

  return v0;
}

id DAProductString()
{
  if (DAProductString_onceToken != -1)
  {
    DAProductString_cold_1();
  }

  v1 = DAProductString_sProduct;

  return v1;
}

uint64_t __DAProductString_block_invoke()
{
  DAProductString_sProduct = _MGStringForKey();

  return MEMORY[0x2821F96F8]();
}

id _MGStringForKey()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = @"iPhone";
  }

  v2 = [MEMORY[0x277CCAB68] stringWithString:v1];
  [v2 replaceOccurrencesOfString:@" " withString:&stru_285AA6518 options:0 range:{0, objc_msgSend(v2, "length")}];
  [v2 replaceOccurrencesOfString:@"-" withString:&stru_285AA6518 options:0 range:{0, objc_msgSend(v2, "length")}];
  [v2 replaceOccurrencesOfString:@"." withString:&stru_285AA6518 options:0 range:{0, objc_msgSend(v2, "length")}];
  [v2 replaceOccurrencesOfString:@" withString:" options:@"C" range:{0, 0, objc_msgSend(v2, "length")}];

  return v2;
}

id DAModelString()
{
  if (DAModelString_onceToken != -1)
  {
    DAModelString_cold_1();
  }

  v1 = DAModelString_sModel;

  return v1;
}

uint64_t __DAModelString_block_invoke()
{
  DAModelString_sModel = _MGStringForKey();

  return MEMORY[0x2821F96F8]();
}

id appBundleIDsForDADataclasses(char a1)
{
  v2 = objc_opt_new();
  v3 = v2;
  if ((a1 & 0xA) != 0)
  {
    [v2 addObject:@"com.apple.MobileAddressBook"];
    [v3 addObject:@"com.apple.mobilephone"];
  }

  if ((a1 & 4) != 0)
  {
    [v3 addObject:*MEMORY[0x277CF78A0]];
    if ((a1 & 0x10) == 0)
    {
LABEL_5:
      if ((a1 & 0x20) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((a1 & 0x10) == 0)
  {
    goto LABEL_5;
  }

  [v3 addObject:@"com.apple.reminders"];
  if ((a1 & 0x20) == 0)
  {
LABEL_6:
    if ((a1 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  [v3 addObject:@"com.apple.mobilenotes"];
  if (a1)
  {
LABEL_7:
    [v3 addObject:@"com.apple.mobilemail"];
  }

LABEL_8:

  return v3;
}

uint64_t areDADiagnosticsEnabled()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"DADiagnosticsEnabled"];

  return v1;
}

id DAGetSyncImageForPerson(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = ABImageUtilsCopySyncImageForPerson();
  *a3 = 0;

  return v4;
}

id daDeviceID()
{
  if (daDeviceID_onceToken != -1)
  {
    daDeviceID_cold_1();
  }

  v1 = daDeviceID___daDeviceID;

  return v1;
}

void __daDeviceID_block_invoke()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library/DataAccess/DeviceSpecificInfo.plist"];
  v1 = open([v0 fileSystemRepresentation], 514, 384);
  v2 = v1;
  if (v1 < 0)
  {
    v4 = 0;
  }

  else
  {
    flockWithProcessAssertion(v1, 1, @"com.apple.dataaccess.deviceid");
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v0];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"DAGlobalDeviceSpecificIdentifier"];
      if (v5)
      {
LABEL_9:
        flockWithProcessAssertion(v2, 0, @"com.apple.dataaccess.deviceid");
        close(v2);
        goto LABEL_10;
      }
    }
  }

  v5 = [MEMORY[0x277CCACA8] da_newGUID];
  v6 = [v4 mutableCopy];
  if (!v6)
  {
    v6 = objc_opt_new();
  }

  [v6 setObject:v5 forKeyedSubscript:@"DAGlobalDeviceSpecificIdentifier"];
  [v6 writeToFile:v0 atomically:1];

  if (v2 >= 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  v7 = daDeviceID___daDeviceID;
  daDeviceID___daDeviceID = v5;

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t ExchangeSyncLibraryCore_0()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!ExchangeSyncLibraryCore_frameworkLibrary_0)
  {
    ExchangeSyncLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  result = ExchangeSyncLibraryCore_frameworkLibrary_0;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __ExchangeSyncLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ExchangeSyncLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getESAccountClass_block_invoke_0(uint64_t a1)
{
  v3 = 0;
  if (!ExchangeSyncLibraryCore_0())
  {
    __getESAccountClass_block_invoke_cold_2_0(&v3);
  }

  result = objc_getClass("ESAccount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getESAccountClass_block_invoke_cold_1_0();
  }

  getESAccountClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

__CFString *getStateName(unsigned int a1)
{
  if (a1 > 5)
  {
    v2 = @"Out of bounds";
  }

  else
  {
    v2 = getStateName_stateNames[a1];
  }

  return v2;
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

const char *OUTLINED_FUNCTION_2_0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{

  return sel_getName(v10);
}

void sub_24847A7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ExchangeSyncLibraryCore_1()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!ExchangeSyncLibraryCore_frameworkLibrary_1)
  {
    ExchangeSyncLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  result = ExchangeSyncLibraryCore_frameworkLibrary_1;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __ExchangeSyncLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ExchangeSyncLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getESAccountActorClass_block_invoke(uint64_t a1)
{
  v3 = 0;
  if (!ExchangeSyncLibraryCore_1())
  {
    __getESAccountActorClass_block_invoke_cold_2(&v3);
  }

  result = objc_getClass("ESAccountActor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getESAccountActorClass_block_invoke_cold_1();
  }

  getESAccountActorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _InfoForNotification(uint64_t a1)
{
  v2 = _NotificationHandlerMap();
  v3 = [v2 objectForKey:a1];

  return v3;
}

void _ReceiveNotificationResponseCallback(const void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = _InfoForNotification(a1);
  v5 = [v4 groupIdentifier];
  if (v5)
  {
    v6 = +[DAPowerAssertionManager sharedPowerAssertionManager];
    [v6 reattainPowerAssertionsForGroupIdentifier:v5];
  }

  v7 = [v4 handler];
  if (v7)
  {
    CFRetain(a1);
    v8 = [v4 callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___ReceiveNotificationResponseCallback_block_invoke;
    block[3] = &unk_278F13970;
    v14 = v7;
    v15 = a1;
    v16 = a2;
    dispatch_async(v8, block);

    v9 = v14;
  }

  else
  {
    v9 = DALoggingwithCategory();
    v10 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v9, v10))
    {
      *buf = 138412290;
      v18 = a1;
      _os_log_impl(&dword_24844D000, v9, v10, "No completion block for notification %@", buf, 0xCu);
    }
  }

  v11 = _NotificationHandlerMap();
  [v11 removeObjectForKey:a1];

  v12 = *MEMORY[0x277D85DE8];
}

id _NotificationHandlerMap()
{
  if (_NotificationHandlerMap_onceToken != -1)
  {
    _NotificationHandlerMap_cold_1();
  }

  v1 = _NotificationHandlerMap_sNotificationHandlerMap;

  return v1;
}

uint64_t DAMigrationIsNeeded()
{
  v11 = *MEMORY[0x277D85DE8];
  CFPreferencesAppSynchronize(@"com.apple.dataaccess.dataaccessd");
  v0 = CFPreferencesCopyAppValue(@"kDAMigrationBuildVersionKey", @"com.apple.dataaccess.dataaccessd");
  v1 = MGCopyAnswer();
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v2, v3))
  {
    v7 = 138412546;
    v8 = v0;
    v9 = 2112;
    v10 = v1;
    _os_log_impl(&dword_24844D000, v2, v3, "DAMigrationIsNeeded : DataAccess Migrator Comparing Version %@ With %@", &v7, 0x16u);
  }

  v4 = [v0 isEqualToString:v1];
  v5 = *MEMORY[0x277D85DE8];
  return v4 ^ 1u;
}

void DAUpdateMigrationVersion()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = MGCopyAnswer();
  CFPreferencesSetAppValue(@"kDAMigrationBuildVersionKey", v0, @"com.apple.dataaccess.dataaccessd");
  CFPreferencesAppSynchronize(@"com.apple.dataaccess.dataaccessd");
  v1 = DALoggingwithCategory();
  v2 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v1, v2))
  {
    v4 = 138412290;
    v5 = v0;
    _os_log_impl(&dword_24844D000, v1, v2, "DAUpdateMigrationVersion : DataAccess Migrator Current Version %@", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void sub_248485C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248486000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *DAWeakLinkSymbol(const char *a1, const void *a2)
{
  result = __HandleForSource(a2);
  if (result)
  {

    return dlsym(result, a1);
  }

  return result;
}

const void *__HandleForSource(const void *a1)
{
  _os_nospin_lock_lock();
  Mutable = __Handles;
  if (!__Handles)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
    __Handles = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, a1);
  if (!Value)
  {
    if (a1)
    {
      Value = 0;
      v4 = 0;
    }

    else
    {
      v6 = [&stru_285AA6518 stringByAppendingString:@"/AppleInternal/Library/Frameworks/CalendarDiagnostics.framework/CalendarDiagnostics"];
      v4 = v6;
      if (v6)
      {
        Value = dlopen([v6 UTF8String], 1);
        if (Value)
        {
          CFDictionarySetValue(__Handles, 0, Value);
        }
      }

      else
      {
        Value = 0;
      }
    }
  }

  _os_nospin_lock_unlock();
  return Value;
}

id DAWeakLinkClass(void *a1, const void *a2)
{
  v3 = a1;
  if (__HandleForSource(a2))
  {
    v4 = NSClassFromString(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __getESAccountClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getESAccountClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"DAAccount.m" lineNumber:62 description:{@"Unable to find class %s", "ESAccount"}];

  __break(1u);
}

void __getESAccountClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ExchangeSyncLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"DAAccount.m" lineNumber:61 description:{@"%s", *a1}];

  __break(1u);
}

void flockWithProcessAssertion_cold_2()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"int flockWithProcessAssertion(int, BOOL, NSString *__strong)"}];
  [v1 handleFailureInFunction:v0 file:@"DAUtils.m" lineNumber:382 description:@"You can't flock a flocked file.  No ref counting for you"];
}

void __getESAccountClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getESAccountClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"DAUtils.m" lineNumber:41 description:{@"Unable to find class %s", "ESAccount"}];

  __break(1u);
}

void __getESAccountClass_block_invoke_cold_2_0(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ExchangeSyncLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"DAUtils.m" lineNumber:40 description:{@"%s", *a1}];

  __break(1u);
}

void __getESAccountActorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getESAccountActorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"ASAccountActor.m" lineNumber:16 description:{@"Unable to find class %s", "ESAccountActor"}];

  __break(1u);
}

void __getESAccountActorClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ExchangeSyncLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ASAccountActor.m" lineNumber:15 description:{@"%s", *a1}];

  __break(1u);
}