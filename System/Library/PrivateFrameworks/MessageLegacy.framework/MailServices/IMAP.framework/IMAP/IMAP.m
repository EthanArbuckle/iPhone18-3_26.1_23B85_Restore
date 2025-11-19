void sub_258B7CAD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAKAnisetteProvisioningControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AuthKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AuthKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2798B1358;
    v6 = 0;
    AuthKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AuthKitLibraryCore_frameworkLibrary)
  {
    __getAKAnisetteProvisioningControllerClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("AKAnisetteProvisioningController");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getAKAnisetteProvisioningControllerClass_block_invoke_cold_1();
  }

  getAKAnisetteProvisioningControllerClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AuthKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AuthKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __RegisterGmailAuthSchemes_block_invoke()
{
  [MEMORY[0x277D28408] registerSchemeClass:objc_opt_class()];
  v0 = MEMORY[0x277D28408];
  v1 = objc_opt_class();

  return [v0 registerSchemeClass:v1];
}

void sub_258B815B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const void *unlockedReleaseNetworkAssertion(uint64_t a1)
{
  result = *(a1 + 296);
  if (result)
  {
    CFRelease(result);
    *(a1 + 296) = 0;
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = *MEMORY[0x277D283E0];
    v5 = [MEMORY[0x277D28480] sharedInstance];

    return [v3 removeObserver:a1 name:v4 object:v5];
  }

  return result;
}

uint64_t _storeOnServerForTuple(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (!v2)
  {
    return 1;
  }

  v4 = *(a2 + 16);
  v5 = [a1 _objectForAccountInfoKey:*(a2 + 8)];
  if (!v5)
  {
    _MFLockGlobalLock();
    [a1 setAccountProperty:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", v4), v2}];
    _MFUnlockGlobalLock();
    return v4;
  }

  v6 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return MEMORY[0x28211F6F0](v6);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return v4;
  }

  return [v6 BOOLValue];
}

uint64_t _setSeparatorCharAndNamespace(uint64_t a1, void *a2, void *a3)
{
  _MFLockGlobalLock();
  if (a2)
  {
    if (*(a1 + 208))
    {
      if ([a2 isEqualToString:?])
      {
        v6 = 0;
        v7 = 0;
        goto LABEL_12;
      }

      v6 = *(a1 + 208);
    }

    else
    {
      v6 = 0;
    }

    *(a1 + 208) = [a2 copyWithZone:0];
    v8 = *MEMORY[0x277D28510];
    v9 = *(a1 + v8);
    if ((v9 & 0x40000) == 0)
    {
      *(a1 + v8) = v9 & 0xFFFB0000 | (v9 + 1);
    }

    v7 = 1;
LABEL_12:
    v10 = v6;
    if (!a3)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (!a3)
  {
    _MFUnlockGlobalLock();
    goto LABEL_24;
  }

  v7 = 0;
LABEL_13:
  if (*(a1 + 208) && [a3 hasSuffix:?])
  {
    a3 = [a3 substringWithRange:{0, objc_msgSend(a3, "length") - objc_msgSend(*(a1 + 208), "length")}];
  }

  if (([a3 isEqualToString:*(a1 + 216)] & 1) == 0)
  {
    v12 = *(a1 + 216);
    *(a1 + 216) = [a3 copyWithZone:0];
    v13 = *MEMORY[0x277D28510];
    v14 = *(a1 + v13);
    if ((v14 & 0x40000) == 0)
    {
      *(a1 + v13) = v14 & 0xFFFB0000 | (v14 + 1);
    }

    v15 = v12;
    _MFUnlockGlobalLock();
    goto LABEL_23;
  }

  v11 = 0;
LABEL_18:
  _MFUnlockGlobalLock();
  if (v7)
  {
LABEL_23:
    [objc_msgSend(a1 "allMailboxUids")];
  }

LABEL_24:
  result = [a1 serverPathPrefixAccountValue];
  if (result)
  {

    return [a1 setServerPathPrefix:result shouldSync:0];
  }

  return result;
}

uint64_t _mailboxDictionaryWithName(void *a1, uint64_t a2, unint64_t *a3)
{
  result = [a1 count];
  if (result)
  {
    v7 = result;
    v8 = 0;
    v9 = *MEMORY[0x277D283B0];
    do
    {
      v10 = [a1 objectAtIndex:v8];
      v11 = [objc_msgSend(v10 objectForKey:{v9), "isEqual:", a2}];
      if (v11)
      {
        result = v10;
      }

      else
      {
        result = 0;
      }

      if (a3 && v11)
      {
        *a3 = v8;
        result = v10;
      }

      ++v8;
      if (result)
      {
        v12 = 1;
      }

      else
      {
        v12 = v8 >= v7;
      }
    }

    while (!v12);
  }

  return result;
}

uint64_t IMAPNextUidFromSet(UniChar *buffer)
{
  v2 = *(buffer + 51);
  if (v2)
  {
    v3 = *(buffer + 50);
    if (v3 > v2)
    {
      v4 = v3 - 1;
LABEL_6:
      *(buffer + 50) = v4;
      return v4;
    }

    if (v3 < v2)
    {
      v4 = v3 + 1;
      goto LABEL_6;
    }

    *(buffer + 51) = 0;
    v6 = *(buffer + 23);
    v5 = *(buffer + 24);
    if (v5 < 1)
    {
      goto LABEL_24;
    }

    if (v6 < 0)
    {
      goto LABEL_24;
    }

    v7 = *(buffer + 20);
    if (v7 <= v6)
    {
      goto LABEL_24;
    }

    v8 = *(buffer + 17);
    if (v8)
    {
      v9 = *(v8 + 2 * *(buffer + 19) + 2 * v6);
    }

    else
    {
      v10 = *(buffer + 18);
      if (v10)
      {
        v9 = *(v10 + *(buffer + 19) + v6);
      }

      else
      {
        if (*(buffer + 22) <= v6 || (v11 = *(buffer + 21), v12 = *(buffer + 23), v11 > v6))
        {
          v13 = v6 - 4;
          if (v6 < 4)
          {
            v13 = 0;
          }

          if (v13 + 64 < v7)
          {
            v7 = v13 + 64;
          }

          *(buffer + 21) = v13;
          *(buffer + 22) = v7;
          v24.length = v7 - v13;
          v24.location = *(buffer + 19) + v13;
          CFStringGetCharacters(*(buffer + 16), v24, buffer);
          v11 = *(buffer + 21);
          v12 = *(buffer + 23);
          v5 = *(buffer + 24);
        }

        v9 = buffer[v6 - v11];
        v6 = v12;
      }
    }

    if (v9 != 44)
    {
LABEL_24:
      v14 = 0;
      *(buffer + 23) = v6 + v5;
    }

    else
    {
      *(buffer + 23) = v6 + 1;
      v14 = v5 - 1;
    }

    *(buffer + 24) = v14;
  }

  v4 = IMAPScanUid(buffer);
  *(buffer + 50) = v4;
  if (v4)
  {
    v15 = *(buffer + 24);
    if (v15 >= 1)
    {
      v16 = *(buffer + 23);
      if ((v16 & 0x8000000000000000) == 0)
      {
        v17 = *(buffer + 20);
        if (v17 > v16)
        {
          v18 = *(buffer + 17);
          if (v18)
          {
            v19 = *(v18 + 2 * *(buffer + 19) + 2 * v16);
          }

          else
          {
            v20 = *(buffer + 18);
            if (v20)
            {
              v19 = *(v20 + *(buffer + 19) + v16);
            }

            else
            {
              if (*(buffer + 22) <= v16 || (v21 = *(buffer + 21), v21 > v16))
              {
                v22 = v16 - 4;
                if (v16 < 4)
                {
                  v22 = 0;
                }

                if (v22 + 64 < v17)
                {
                  v17 = v22 + 64;
                }

                *(buffer + 21) = v22;
                *(buffer + 22) = v17;
                v25.length = v17 - v22;
                v25.location = *(buffer + 19) + v22;
                CFStringGetCharacters(*(buffer + 16), v25, buffer);
                v21 = *(buffer + 21);
              }

              v19 = buffer[v16 - v21];
            }
          }

          if (v19 == 44)
          {
            *(buffer + 92) = vaddq_s64(*(buffer + 92), xmmword_258BBFD50);
            return v4;
          }

          if (v19 == 58)
          {
            *(buffer + 92) = vaddq_s64(*(buffer + 92), xmmword_258BBFD50);
            *(buffer + 51) = IMAPScanUid(buffer);
            return v4;
          }

          v16 = *(buffer + 23);
          v15 = *(buffer + 24);
        }
      }

      *(buffer + 23) = v16 + v15;
      *(buffer + 24) = 0;
    }
  }

  return v4;
}

uint64_t IMAPScanUid(UniChar *buffer)
{
  if (*(buffer + 24) < 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = *(buffer + 23);
  v4 = xmmword_258BBFD50;
  do
  {
    if (v3 < 0)
    {
      break;
    }

    v5 = *(buffer + 20);
    if (v5 <= v3)
    {
      break;
    }

    v6 = *(buffer + 17);
    if (v6)
    {
      v7 = *(v6 + 2 * *(buffer + 19) + 2 * v3);
    }

    else
    {
      v8 = *(buffer + 18);
      if (v8)
      {
        v7 = *(v8 + *(buffer + 19) + v3);
      }

      else
      {
        if (*(buffer + 22) <= v3 || (v9 = *(buffer + 21), v9 > v3))
        {
          v10 = v3 - 4;
          if (v3 < 4)
          {
            v10 = 0;
          }

          if (v10 + 64 < v5)
          {
            v5 = v10 + 64;
          }

          *(buffer + 21) = v10;
          *(buffer + 22) = v5;
          v16.length = v5 - v10;
          v16.location = *(buffer + 19) + v10;
          v15 = v4;
          CFStringGetCharacters(*(buffer + 16), v16, buffer);
          v4 = v15;
          v9 = *(buffer + 21);
        }

        v7 = buffer[v3 - v9];
      }
    }

    v11 = v7 - 48;
    if (v11 > 9)
    {
      break;
    }

    v2 = v11 + 10 * v2;
    v12 = *(buffer + 92);
    v13 = vaddq_s64(v12, v4);
    *(buffer + 92) = v13;
    v3 = v13.i64[0];
  }

  while (v12.i64[1] > 1);
  return v2;
}

uint64_t MFIMAPDateSearchStringForDate(uint64_t a1)
{
  if (MFIMAPDateSearchStringForDate_onceToken != -1)
  {
    MFIMAPDateSearchStringForDate_cold_1();
  }

  v2 = MFIMAPDateSearchStringForDate_formatter;

  return [v2 stringFromDate:a1];
}

uint64_t __MFIMAPDateSearchStringForDate_block_invoke()
{
  MFIMAPDateSearchStringForDate_formatter = objc_alloc_init(MEMORY[0x277CCA968]);
  v0 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [MFIMAPDateSearchStringForDate_formatter setLocale:v0];

  v1 = MFIMAPDateSearchStringForDate_formatter;

  return [v1 setDateFormat:@"d-MMM-yyyy"];
}

void *MFUIDPlusInfoFromResponse(void *a1)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if ([a1 responseType] != 2 || objc_msgSend(a1, "responseCode") != 16)
  {
    goto LABEL_6;
  }

  result = [a1 responseInfo];
  if (result)
  {
    v3 = result;
    if ([result count] >= 3)
    {
      v5[0] = @"UIDVALIDITY";
      v6[0] = [v3 objectAtIndexedSubscript:0];
      v5[1] = @"Source UIDS";
      v6[1] = [v3 objectAtIndexedSubscript:1];
      v5[2] = @"Destination UIDS";
      v6[2] = [v3 objectAtIndexedSubscript:2];
      result = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];
      goto LABEL_7;
    }

LABEL_6:
    result = 0;
  }

LABEL_7:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

__CFString *MFIMAPStringFromMailboxName(__CFString *a1)
{
  if (![(__CFString *)a1 length])
  {
    return @"";
  }

  v2 = _IMAPCreateQuotedString(a1);

  return v2;
}

__CFString *_IMAPCreateQuotedString(__CFString *a1)
{
  v2 = [(__CFString *)a1 length];
  if (!v2)
  {
    return @"";
  }

  v3 = v2;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  *buffer = 0u;
  v40 = 0u;
  chars = 0;
  v4 = v2 + 2;
  v47 = a1;
  v50 = 0;
  v51 = v2;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v48 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v36 = a1;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v49 = CStringPtr;
  v10 = 64;
  v52 = 0;
  v53 = 0;
  do
  {
    if (v9 >= 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = v9;
    }

    if (v9 < 0 || (v12 = v51, v51 <= v9))
    {
      v14 = 0;
      if (!v8)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v48)
      {
        v13 = &v48[v50];
        goto LABEL_12;
      }

      if (!v49)
      {
        if (v53 <= v9 || (v15 = v52, v52 > v9))
        {
          v16 = -v11;
          v17 = v11 + v7;
          v18 = v10 - v11;
          v19 = v9 + v16;
          v20 = v19 + 64;
          if (v19 + 64 >= v51)
          {
            v20 = v51;
          }

          v52 = v19;
          v53 = v20;
          if (v51 >= v18)
          {
            v12 = v18;
          }

          v54.location = v19 + v50;
          v54.length = v12 + v17;
          CFStringGetCharacters(v47, v54, buffer);
          v15 = v52;
        }

        v13 = &buffer[-v15];
LABEL_12:
        v14 = v13[v9];
        if (!v8)
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }

      v14 = v49[v50 + v9];
      if (!v8)
      {
LABEL_18:
        v8 = CFCharacterSetIsCharacterMember(_IMAPNeedsQuoteCharacterSet, v14) != 0;
        goto LABEL_19;
      }
    }

LABEL_15:
    v8 = 1;
LABEL_19:
    if (v14 == 92 || v14 == 34)
    {
      ++v4;
    }

    ++v9;
    --v7;
    ++v10;
  }

  while (v3 != v9);
  if (!v8)
  {
    return v36;
  }

  Mutable = CFStringCreateMutable(0, v4);
  chars = 34;
  CFStringAppendCharacters(Mutable, &chars, 1);
  v22 = 0;
  v23 = 0;
  v24 = 64;
  while (2)
  {
    if (v23 >= 4)
    {
      v25 = 4;
    }

    else
    {
      v25 = v23;
    }

    if (v23 < 0 || (v26 = v51, v51 <= v23))
    {
      chars = 0;
    }

    else
    {
      if (v48)
      {
        v27 = &v48[v50];
        goto LABEL_41;
      }

      if (v49)
      {
        v28 = v49[v50 + v23];
      }

      else
      {
        if (v53 <= v23 || (v29 = v52, v52 > v23))
        {
          v30 = -v25;
          v31 = v25 + v22;
          v32 = v24 - v25;
          v33 = v23 + v30;
          v34 = v33 + 64;
          if (v33 + 64 >= v51)
          {
            v34 = v51;
          }

          v52 = v33;
          v53 = v34;
          if (v51 >= v32)
          {
            v26 = v32;
          }

          v55.location = v33 + v50;
          v55.length = v26 + v31;
          CFStringGetCharacters(v47, v55, buffer);
          v29 = v52;
        }

        v27 = &buffer[-v29];
LABEL_41:
        v28 = v27[v23];
      }

      chars = v28;
      if (v28 == 92 || v28 == 34)
      {
        v37 = 92;
        CFStringAppendCharacters(Mutable, &v37, 1);
      }
    }

    CFStringAppendCharacters(Mutable, &chars, 1);
    ++v23;
    --v22;
    ++v24;
    if (v3 != v23)
    {
      continue;
    }

    break;
  }

  chars = 34;
  CFStringAppendCharacters(Mutable, &chars, 1);
  if (!Mutable)
  {
    return v36;
  }

  return Mutable;
}

void sub_258B9087C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _processSelectCommand(uint64_t a1, unsigned int a2, __CFString *a3)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v20[0] = a2;
  v25[0] = MFIMAPStringFromMailboxName(a3);
  v20[1] = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v21 = 0;
  v22 = 0;
  v23 = 0;
  [a1 mf_lock];
  v5 = [a1 _responseFromSendingCommands:v20 count:1];
  v6 = [v5 responseType];
  if (v6 == 4)
  {
    if ((*(a1 + 144) & 7u) >= 3)
    {

      *(a1 + 168) = 0;
      *(a1 + 144) = *(a1 + 144) & 0xF8 | 2;
      *(a1 + 248) &= ~1u;
    }

    goto LABEL_15;
  }

  if (v6 != 2)
  {
LABEL_15:
    [a1 _errorForResponse:v5 commandParams:v20];
    v13 = 0;
    goto LABEL_18;
  }

  *(a1 + 168) = [(__CFString *)a3 copy];
  *(a1 + 144) = *(a1 + 144) & 0xF8 | 3;
  *(a1 + 248) &= ~1u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v21;
  v8 = [v21 countByEnumeratingWithState:&v16 objects:v24 count:16];
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

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 responseType] == 2 && objc_msgSend(v12, "responseCode") == 13)
        {
          *(a1 + 248) |= 1u;
          goto LABEL_17;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v24 count:16];
      v13 = 1;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_17:
    v13 = 1;
  }

LABEL_18:
  [a1 mf_unlock];
  [a1 didFinishCommands:v20 count:1];
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t _doUidSearch(void *a1, uint64_t a2, void *a3, void *a4, BOOL *a5, char a6)
{
  v38 = *MEMORY[0x277D85DE8];
  v12 = [objc_allocWithZone(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a3, "count") + 2 * (a2 != 0)}];
  v13 = v12;
  v33[1] = v12;
  v33[0] = 24;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  if (a2)
  {
    if ((a6 & 1) == 0)
    {
      [v12 addObject:@"UID"];
    }

    [v13 addObject:a2];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = [a3 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(a3);
        }

        v18 = [a1 copyArgumentForSearchTerm:*(*(&v29 + 1) + 8 * i)];
        [v13 addObject:v18];
      }

      v15 = [a3 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v15);
  }

  v19 = [objc_msgSend(a1 _responseFromSendingCommands:v33 count:{1), "responseType"}];
  if (a5)
  {
    *a5 = v19 == 2;
  }

  if (v19 == 2 && (v20 = [v34 count]) != 0)
  {
    v21 = v20;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    do
    {
      v25 = [v34 objectAtIndex:v24];
      if ([v25 responseType] == 14)
      {
        v26 = [v25 searchResults];
        if (a4)
        {
          if (v23)
          {
            [v23 addObjectsFromArray:v26];
          }

          else
          {
            v23 = [v26 mutableCopyWithZone:0];
          }
        }

        [v34 removeObjectAtIndex:v24];
        --v21;
        v22 = 1;
      }

      else
      {
        ++v24;
      }
    }

    while (v24 < v21);
  }

  else
  {
    v23 = 0;
    v22 = 0;
  }

  [a1 didFinishCommands:v33 count:1];
  if (a4)
  {
    [v23 sortUsingSelector:sel_compare_];
    *a4 = v23;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v22 & 1;
}

uint64_t _compareFetchResultsByUid(void *a1, void *a2)
{
  v3 = [objc_msgSend(a1 fetchResultWithType:{8), "uid"}];
  v4 = [objc_msgSend(a2 fetchResultWithType:{8), "uid"}];
  if (v3 < v4)
  {
    return -1;
  }

  else
  {
    return v3 > v4;
  }
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t _comparePartialFetchResults(void *a1, void *a2)
{
  v3 = [a1 startOffset];
  v4 = [a2 startOffset];
  if (v3 < v4)
  {
    return -1;
  }

  else
  {
    return v4 != v3;
  }
}

unint64_t _lockedFindRangeOfDownloadsWithUid(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v5 = [v3 count];
    v13.location = 0;
    v13.length = v5;
    v6 = CFArrayBSearchValues(*(a1 + 8), v13, a2, _compareDownloadsByUid, a2);
    v7 = v6;
    v8 = 0;
    v9 = v5 - v6;
    if (v5 > v6)
    {
      v10 = v6 - v5;
      while ([objc_msgSend(*(a1 + 8) objectAtIndex:{v7 + v8), "uid"}] == a2)
      {
        ++v8;
        if (!(v10 + v8))
        {
          v8 = v9;
          break;
        }
      }

      if (v8 && v7)
      {
        do
        {
          v11 = v7 - 1;
          if ([objc_msgSend(*(a1 + 8) objectAtIndex:{v7 - 1), "uid"}] != a2)
          {
            break;
          }

          ++v8;
          --v7;
        }

        while (v11);
      }
    }
  }

  else
  {
    v7 = 0;
    *(a1 + 8) = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  return v7;
}

MFIMAPSimpleDownload *_getDownload(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  [a1 mf_lock];
  RangeOfDownloadsWithUid = _lockedFindRangeOfDownloadsWithUid(a1, a2);
  v18 = RangeOfDownloadsWithUid;
  v19 = v17;
  if (a7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = [[MFIMAPSimpleDownload alloc] initWithUid:a2 section:a3 range:a6 consumer:a7, a8];
LABEL_17:
    v22 = v24;
    [a1[1] insertObject:v24 atIndex:v18 + v19];
    goto LABEL_18;
  }

  if (RangeOfDownloadsWithUid >= v17)
  {
    goto LABEL_13;
  }

  v20 = RangeOfDownloadsWithUid;
  do
  {
    v21 = [a1[1] objectAtIndex:v20];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [objc_msgSend(v21 "section")] && (!a8 || objc_msgSend(objc_msgSend(objc_msgSend(v21, "mainConsumer"), "consumers"), "containsObject:", a8)))
    {
      v22 = v21;
      if (v22)
      {
        break;
      }
    }

    else
    {
      v22 = 0;
    }

    ++v20;
  }

  while (v20 < v19);
  if (!v22)
  {
LABEL_13:
    v23 = [MFIMAPSimpleDownload alloc];
    if (a4 == 0xFFFFFFFFLL)
    {
      v24 = [(MFIMAPSimpleDownload *)v23 initWithUid:a2 section:a3 estimatedLength:a5 consumer:a8];
    }

    else
    {
      v24 = [(MFIMAPSimpleDownload *)v23 initWithUid:a2 section:a3 length:a4 consumer:a8];
    }

    goto LABEL_17;
  }

LABEL_18:
  [a1 mf_unlock];

  return v22;
}

uint64_t _lockedUpdateDownloadsInRange(uint64_t result, unint64_t a2, uint64_t a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = result;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    result = [a4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (result)
    {
      v7 = result;
      v8 = *v17;
      do
      {
        v9 = 0;
        do
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(a4);
          }

          v10 = *(*(&v16 + 1) + 8 * v9);
          if ([v10 type] != 8 && a2 < a2 + a3)
          {
            v12 = a3;
            v13 = a2;
            do
            {
              [objc_msgSend(*(v6 + 8) objectAtIndex:{v13++), "handleFetchResult:", v10}];
              --v12;
            }

            while (v12);
          }

          ++v9;
        }

        while (v9 != v7);
        result = [a4 countByEnumeratingWithState:&v16 objects:v20 count:16];
        v7 = result;
      }

      while (result);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _compareDownloadsByUid(void *a1, void *a2, void *a3)
{
  v3 = a3;
  v5 = a1;
  if (a1 != a3)
  {
    v5 = [a1 uid];
  }

  if (a2 != v3)
  {
    LODWORD(v3) = [a2 uid];
  }

  if (v5 < v3)
  {
    return -1;
  }

  else
  {
    return v5 != v3;
  }
}

uint64_t _IMAPCompareMessage(uint64_t a1, int a2, int a3)
{
  v3 = (*(a1 + *MEMORY[0x277D284C0] + 4) & 1) - a3;
  if (!v3)
  {
    v3 = *(a1 + 240) - a2;
  }

  v4 = v3 < 0;
  v5 = v3 != 0;
  if (v4)
  {
    return -1;
  }

  else
  {
    return v5;
  }
}

void sub_258B9A658(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);

    objc_end_catch();
    JUMPOUT(0x258B9A620);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _createStringFromData(void *a1, void *a2)
{
  v4 = [a1 bytes] + *a2;
  v5 = [a1 bytes];
  v6 = v5 + [a1 length];
  if (v4 >= v6)
  {
LABEL_5:
    v9 = [a1 length];
    result = 0;
  }

  else
  {
    v7 = 1;
    v8 = v4;
    while (*v8)
    {
      ++v8;
      ++v7;
      if (v8 >= v6)
      {
        goto LABEL_5;
      }
    }

    if (v8 <= v4)
    {
      result = 0;
    }

    else
    {
      result = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v4];
    }

    v9 = *a2 + v7;
  }

  *a2 = v9;
  return result;
}

__CFArray *_createStringArrayFromData(void *a1, void *a2)
{
  [a1 getBytes:&capacity range:{*a2, 4}];
  *a2 += 4;
  v4 = capacity;
  if (!capacity)
  {
    return [MEMORY[0x277CBEA60] array];
  }

  if (capacity > 0x63)
  {
    Mutable = 0;
    *a2 = [a1 length];
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, capacity, MEMORY[0x277CBF128]);
    do
    {
      StringFromData = _createStringFromData(a1, a2);
      if (StringFromData)
      {
        v7 = StringFromData;
        CFArrayAppendValue(Mutable, StringFromData);
      }

      --v4;
    }

    while (v4);
  }

  return Mutable;
}

__CFArray *_createUidArrayFromData(void *a1, void *a2)
{
  [a1 getBytes:&capacity range:{*a2, 4}];
  *a2 += 4;
  v4 = capacity;
  if (capacity < 1)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, capacity, 0);
  do
  {
    [a1 getBytes:&capacity_4 range:{*a2, 4}];
    *a2 += 4;
    if (capacity_4)
    {
      CFArrayAppendValue(Mutable, capacity_4);
    }

    --v4;
  }

  while (v4);
  return Mutable;
}

uint64_t _serializeStringToData(void *a1, void *a2)
{
  v5 = 0;
  v3 = [a1 UTF8String];
  if (v3)
  {
    [a2 appendBytes:v3 length:strlen(v3)];
  }

  return [a2 appendBytes:&v5 length:1];
}

uint64_t _serializeStringArrayToData(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = [a1 count];
  [a2 appendBytes:&v13 length:4];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  result = [a1 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(a1);
        }

        _serializeStringToData(*(*(&v9 + 1) + 8 * v7++), a2);
      }

      while (v5 != v7);
      result = [a1 countByEnumeratingWithState:&v9 objects:v14 count:16];
      v5 = result;
    }

    while (result);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _serializeUidArrayToData(CFArrayRef theArray, void *a2)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  v7 = Count;
  result = [a2 appendBytes:&v7 length:4];
  if (Count)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      result = [a2 appendBytes:&ValueAtIndex length:4];
    }
  }

  return result;
}

__CFArray *_createUidArrayFromStringArray(void *a1)
{
  v2 = [a1 count];
  if (v2 < 1)
  {
    return 0;
  }

  v3 = v2;
  Mutable = 0;
  v5 = 0;
  do
  {
    v6 = [objc_msgSend(a1 objectAtIndex:{v5), "intValue"}];
    if (v6)
    {
      v7 = v6;
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(0, v3, 0);
      }

      CFArrayAppendValue(Mutable, v7);
    }

    ++v5;
    --v3;
  }

  while (v3);
  return Mutable;
}

void *_stringArrayFromUidArray(const __CFArray *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v3 = Count;
      v4 = 0;
      v5 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v5);
        if (ValueAtIndex)
        {
          v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:__str length:snprintf(__str encoding:{0x20uLL, "%u", ValueAtIndex), 4}];
          v8 = v7;
          if (!v4)
          {
            v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:v3];
            if (!v8)
            {
              goto LABEL_8;
            }

LABEL_7:
            [v4 addObject:v8];

            goto LABEL_8;
          }

          if (v7)
          {
            goto LABEL_7;
          }
        }

LABEL_8:
        ++v5;
        if (!--v3)
        {
          goto LABEL_13;
        }
      }
    }
  }

  v4 = 0;
LABEL_13:
  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

void _setFlags(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    v11 = [objc_allocWithZone(MFIMAPOperation) initWithFlagsToSet:a3 flagsToClear:a4 forUids:a6 inMailbox:a2];
    [v11 setUsesRealUids:0];
    [a1 _queueDeferredOperation:v11];
  }

  if (a5)
  {
    v12 = [objc_allocWithZone(MFIMAPOperation) initWithFlagsToSet:a3 flagsToClear:a4 forUids:a5 inMailbox:a2];
    [a1 _queueDeferredOperation:v12];
  }
}

void *_makeCopyOperation(_DWORD *a1, void *a2, uint64_t a3, uint64_t a4, int a5, __CFArray *a6, __CFArray *a7)
{
  v14 = off_2798B0B38;
  if (!(a6 | a7))
  {
    v14 = off_2798B0B40;
  }

  v15 = objc_allocWithZone(*v14);
  [a1 mf_lock];
  ++a1[8];
  v16 = [v15 initWithUidsToCopy:a2 fromMailbox:a3 toMailbox:a4 firstNewUid:?];
  v17 = v16;
  if (v16)
  {
    [v16 setUsesRealUids:a5 ^ 1u];
    a1[8] = [v17 lastTemporaryUid];
    [a1 _queueDeferredOperation:v17];
  }

  [a1 mf_unlock];
  [a2 removeAllObjects];
  if (a6)
  {
    CFArrayRemoveAllValues(a6);
  }

  if (a7)
  {
    CFArrayRemoveAllValues(a7);
  }

  return v17;
}

uint64_t _writeDataToPath(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a1 + 8) offlineCacheDirectoryPath];
  v8 = [v7 stringByAppendingPathComponent:a3];
  if ([a2 writeToFile:v8 options:a4 error:0])
  {
    return 1;
  }

  result = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  if (result)
  {

    return [a2 writeToFile:v8 options:a4 error:0];
  }

  return result;
}

uint64_t _saveChanges(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  [a1 mf_lock];
  v2 = [*(a1 + 24) count];
  if (v2)
  {
    v3 = v2;
    if (v2 > *(a1 + 36))
    {
      v4 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v5 = *(a1 + 24);
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v14;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v13 + 1) + 8 * i);
            [v4 appendBytes:&IMAPOperationCacheFileMagic length:3];
            [v10 serializeIntoData:v4];
          }

          v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v7);
      }

      if (_writeDataToPath(a1, v4, @"operations", 1))
      {
        *(a1 + 36) = v3;
      }
    }
  }

  else
  {
    [objc_msgSend(*(a1 + 8) "offlineCacheDirectoryPath")];
    MFRemoveItemAtPath();
  }

  result = [a1 mf_unlock];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void *_convertTemporaryUids(void *a1, const __CFDictionary *a2)
{
  v4 = [a1 count];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  do
  {
    v8 = [objc_msgSend(a1 objectAtIndex:{v7), "intValue"}];
    if (v8 && CFDictionaryGetValue(a2, v8))
    {
      if (!v6)
      {
        v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:v5];
      }

      [v6 addObject:EFStringWithInt()];
    }

    ++v7;
    --v5;
  }

  while (v5);
  return v6;
}

BOOL _selectMailboxIfNeeded(uint64_t a1, uint64_t a2, const void *a3)
{
  if ([objc_msgSend(*(a2 + 8) "selectedMailbox")])
  {
    return 1;
  }

  *(a1 + 40) = 0;
  if ([*(a2 + 8) selectMailbox:a3 withAccount:*(a1 + 8)])
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      Mutable = *(a2 + 32);
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], 0);
        *(a2 + 32) = Mutable;
        v6 = *(a1 + 40);
      }

      CFDictionarySetValue(Mutable, a3, v6);
      *(a1 + 40) = 0;
    }

    return 1;
  }

  v9 = MFLogGeneral();
  result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (result)
  {
    _selectMailboxIfNeeded_cold_1(a3, a2);
    return 0;
  }

  return result;
}

uint64_t _searchForNewUid(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  result = 0;
  v11[4] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (a4)
    {
      result = _selectMailboxIfNeeded(a1, a2, a4);
      if (result)
      {
        v8 = *(a2 + 8);
        v11[0] = @"RECENT";
        v11[1] = @"HEADER";
        v11[2] = @"MESSAGE-ID";
        v11[3] = a3;
        result = [v8 searchUidSet:0 forTerms:objc_msgSend(MEMORY[0x277CBEA60] success:{"arrayWithObjects:count:", v11, 4), 0}];
        if (result)
        {
          v9 = result;
          result = [result count];
          if (result)
          {
            result = [objc_msgSend(v9 "lastObject")];
          }
        }
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

const void *_getStoreForMailboxName(uint64_t a1, CFDictionaryRef *a2, void *key)
{
  if (!a2 || !*a2 || (Value = CFDictionaryGetValue(*a2, key)) == 0)
  {
    v7 = [*(a1 + 8) _mailboxUidForName:key];
    if (v7)
    {
      v8 = [*(a1 + 8) storeForMailboxUid:v7];
      Value = v8;
      if (a2 && v8)
      {
        Mutable = *a2;
        if (!*a2)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
          *a2 = Mutable;
        }

        CFDictionarySetValue(Mutable, key, Value);
      }
    }

    else
    {
      return 0;
    }
  }

  return Value;
}

void OUTLINED_FUNCTION_0_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t mf_isIMAPAtom(unsigned int a1)
{
  if ((a1 & 0x80) != 0)
  {
    return 0;
  }

  else
  {
    return (mf_isIMAPAtom_atomicMask[a1 >> 5] >> a1) & 1;
  }
}

uint64_t _nullOrCFTypeRetain(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return MEMORY[0x2821F9840]();
  }

  else
  {
    return 0;
  }
}

uint64_t _nullOrCFTypeRelease(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return MEMORY[0x2821F96F8]();
  }

  return result;
}

__CFString *_nullOrCFTypeCopyDescription(uint64_t a1)
{
  if (a1)
  {
    return (*(MEMORY[0x277CBF128] + 24))();
  }

  else
  {
    return @"NIL";
  }
}

uint64_t _nullOrCFTypeEqual(const void *a1, const void *a2)
{
  if (!a1)
  {
    return a2 != 0;
  }

  if (a2)
  {
    return CFEqual(a1, a2);
  }

  return 0;
}

CFMutableArrayRef createFixedMutableArray(void *a1)
{
  v2 = [a1 count];
  if (v2)
  {

    return CFArrayCreateMutableCopy(0, v2, a1);
  }

  else if (a1)
  {
    v4 = [MEMORY[0x277CBEA60] array];

    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t response(void *a1)
{
  v2 = [a1 lookAhead];
  if (v2 == 42)
  {
    [a1 increment];
LABEL_7:
    if (([a1 parseSpace] & 1) == 0)
    {
      [a1 emitWarning:@"Expected space"];
    }

    response_without_tag(a1);
    goto LABEL_10;
  }

  if (v2 == 43)
  {
    [a1 increment];
    [objc_msgSend(a1 "response")];
    resp_text(a1);
    goto LABEL_10;
  }

  v3 = [a1 copyAtom];
  if (v3)
  {
    v4 = v3;
    [objc_msgSend(a1 "response")];

    goto LABEL_7;
  }

LABEL_10:
  if (*([a1 response] + 8))
  {
    result = [a1 lookAhead];
    if (result)
    {

      return [a1 emitWarning:@"Junk at end of response"];
    }
  }

  else
  {

    return [a1 emitError:@"Incomplete response"];
  }

  return result;
}

uint64_t MFCreateArrayForMessageFlags(uint64_t a1, int a2)
{
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = &(&IMAPMessageFlagsTable)[v5];
    if (((&IMAPMessageFlagsTable)[v5 + 1] & a1) != 0 && (*(v6 + 16) != 1 || a2 != 0))
    {
      v8 = [MEMORY[0x277CCACA8] stringWithCString:*v6 encoding:1];
      if (v4)
      {
        [v4 addObject:v8];
      }

      else
      {
        v4 = [objc_allocWithZone(MEMORY[0x277CBEB18]) initWithObjects:{v8, 0}];
      }
    }

    v9 = v5 >= 36;
    v5 += 3;
  }

  while (!v9);
  if (v4)
  {
    return v4;
  }

  v11 = objc_allocWithZone(MEMORY[0x277CBEA60]);

  return [v11 init];
}

uint64_t MFMessageFlagsFromArray(void *a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = [a1 count];
  memset(v11, 0, 13);
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    do
    {
      while (1)
      {
        v5 = [objc_msgSend(a1 objectAtIndex:{--v3), "dataUsingEncoding:allowLossyConversion:", 1, 1}];
        v6 = [v5 bytes];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

LABEL_8:
        if (!v3)
        {
          goto LABEL_13;
        }
      }

      v7 = 0;
      v8 = &qword_2798B1A50;
      while ((*(v11 + v7) & 1) != 0 || strncasecmp(v6, *(v8 - 1), [v5 length]))
      {
        ++v7;
        v8 += 3;
        if (v7 == 13)
        {
          goto LABEL_8;
        }
      }

      *(v11 + v7) = 1;
      v4 |= *v8;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

LABEL_13:
  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

void resp_text(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  if (![a1 match:"["])
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_50;
  }

  v2 = memchr([a1 start], 93, objc_msgSend(a1, "end") - objc_msgSend(a1, "start"));
  v3 = [a1 start];
  v4 = v2;
  if (!v2)
  {
    v4 = [a1 end];
  }

  v5 = memchr(v3, 32, v4 - [a1 start]);
  if ([a1 match:"ALERT" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 1;
    goto LABEL_47;
  }

  if ([a1 match:"UNAVAILABLE" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 17;
    goto LABEL_47;
  }

  if ([a1 match:"AUTHENTICATIONFAILED" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 18;
    goto LABEL_47;
  }

  if ([a1 match:"AUTHORIZATIONFAILED" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 19;
    goto LABEL_47;
  }

  if ([a1 match:"EXPIRED" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 20;
    goto LABEL_47;
  }

  if ([a1 match:"PRIVACYREQUIRED" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 21;
    goto LABEL_47;
  }

  if ([a1 match:"CONTACTADMIN" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 22;
    goto LABEL_47;
  }

  if ([a1 match:"NOPERM" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 23;
    goto LABEL_47;
  }

  if ([a1 match:"INUSE" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 24;
    goto LABEL_47;
  }

  if ([a1 match:"EXPUNGEISSUED" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 25;
    goto LABEL_47;
  }

  if ([a1 match:"CORRUPTION" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 26;
    goto LABEL_47;
  }

  if ([a1 match:"SERVERBUG" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 27;
    goto LABEL_47;
  }

  if ([a1 match:"CANNOT" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 29;
    goto LABEL_47;
  }

  if ([a1 match:"LIMIT" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 30;
    goto LABEL_47;
  }

  if ([a1 match:"OVERQUOTA" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 31;
    goto LABEL_47;
  }

  if ([a1 match:"ALREADYEXISTS" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 32;
    goto LABEL_47;
  }

  if ([a1 match:"NONEXISTENT" upToSpecial:v2])
  {
    v6 = 0;
    v7 = 33;
    goto LABEL_47;
  }

  if (([a1 match:"BADCHARSET" upToSpecial:v5] & 1) == 0 && !objc_msgSend(a1, "match:upToSpecial:", "BADCHARSET", v2))
  {
    if ([a1 match:"NEWNAME" upToSpecial:v5])
    {
      [a1 parseSpace];
      v10 = mailbox(a1);
      values = v10;
      [a1 parseSpace];
      v11 = mailbox(a1);
      v6 = 0;
      v26 = v11;
      if (v10 && v11)
      {
        v6 = CFArrayCreate(0, &values, 2, MEMORY[0x277CBF128]);
        v10 = values;
      }

      v7 = 3;
      goto LABEL_47;
    }

    if ([a1 match:"PARSE" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 4;
      goto LABEL_47;
    }

    if ([a1 match:"READ-ONLY" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 6;
      goto LABEL_47;
    }

    if ([a1 match:"READ-WRITE" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 7;
      goto LABEL_47;
    }

    if ([a1 match:"TRYCREATE" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 8;
      goto LABEL_47;
    }

    if ([a1 match:"UIDNEXT" upToSpecial:v5])
    {
      if (([a1 parseSpace] & 1) == 0)
      {
        [a1 emitWarning:@"Expected space"];
      }

      v6 = [a1 copyNumber];
      v7 = 9;
      goto LABEL_47;
    }

    if ([a1 match:"HIGHESTMODSEQ" upToSpecial:v5])
    {
      if (([a1 parseSpace] & 1) == 0)
      {
        [a1 emitWarning:@"Expected space"];
      }

      v6 = [a1 copyNumber];
      v7 = 12;
      goto LABEL_47;
    }

    if ([a1 match:"UIDVALIDITY" upToSpecial:v5])
    {
      if (([a1 parseSpace] & 1) == 0)
      {
        [a1 emitWarning:@"Expected space"];
      }

      v6 = [a1 copyNumber];
      v7 = 10;
      goto LABEL_47;
    }

    if ([a1 match:"NOMODSEQ" upToSpecial:v2])
    {
      v6 = 0;
      v7 = 13;
      goto LABEL_47;
    }

    if ([a1 match:"UNSEEN" upToSpecial:v5])
    {
      if (([a1 parseSpace] & 1) == 0)
      {
        [a1 emitWarning:@"Expected space"];
      }

      v6 = [a1 copyNumber];
      v7 = 11;
      goto LABEL_47;
    }

    if ([a1 match:"PERMANENTFLAGS" upToSpecial:v5])
    {
      if (([a1 parseSpace] & 1) == 0)
      {
        [a1 emitWarning:@"Expected space"];
      }

      v6 = flags_array(a1);
      v7 = 5;
      goto LABEL_47;
    }

    if ([a1 match:"CAPABILITY" upToSpecial:v5])
    {
      v12 = [a1 end];
      if (v2)
      {
        [a1 setEnd:v2];
      }

      v6 = capability_array(a1);
      [a1 setEnd:v12];
      if (!v2)
      {
        v2 = [a1 end];
      }

      [a1 setStart:v2];
      v7 = 14;
      goto LABEL_47;
    }

    if ([a1 match:"APPENDUID" upToSpecial:v5])
    {
      if (([a1 parseSpace] & 1) == 0)
      {
        [a1 emitWarning:@"Expected space"];
      }

      v13 = [a1 copyNumber];
      if (v13)
      {
        if (([a1 parseSpace] & 1) == 0)
        {
          [a1 emitWarning:@"Expected space"];
        }

        v14 = [a1 copyNumber];
        if (v14)
        {
          v15 = [objc_allocWithZone(MEMORY[0x277CBEA60]) initWithObjects:{v13, v14, 0}];
          v7 = 15;
LABEL_117:

          v6 = v15;
          goto LABEL_47;
        }
      }

      else
      {
        v14 = 0;
      }

      v15 = 0;
      v7 = 0;
      goto LABEL_117;
    }

    if (![a1 match:"COPYUID" upToSpecial:v5])
    {
      if ([a1 match:"CLIENTBUG" upToSpecial:v2])
      {
        v19 = MFLogGeneral();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          LOWORD(values) = 0;
          _os_log_impl(&dword_258B7A000, v19, OS_LOG_TYPE_INFO, "We did something bad: we just got back a CLIENTBUG from the server.", &values, 2u);
        }

        v6 = 0;
        v7 = 0;
      }

      else
      {
        if (!v2)
        {
          v2 = [a1 end];
        }

        v20 = [a1 start];
        if (v5)
        {
          v21 = [a1 copyStringFrom:v20 to:v5 withCaseOption:1];
          v5 = [a1 copyStringFrom:&v5->isa + 1 to:v2 withCaseOption:0];
        }

        else
        {
          v21 = [a1 copyStringFrom:v20 to:v2 withCaseOption:1];
        }

        v22 = objc_allocWithZone(MEMORY[0x277CBEA60]);
        v23 = &stru_2869E1DA0;
        if (v5)
        {
          v23 = v5;
        }

        v24 = [v22 initWithObjects:{v21, v23, 0}];

        v6 = v24;
        [a1 setStart:v2];
        v7 = 34;
      }

      goto LABEL_47;
    }

    if (([a1 parseSpace] & 1) == 0)
    {
      [a1 emitWarning:@"Expected space"];
    }

    v16 = [a1 copyNumber];
    if (v16)
    {
      if (([a1 parseSpace] & 1) == 0)
      {
        [a1 emitWarning:@"Expected space"];
      }

      v17 = [a1 copyMessageSet];
      if (v17)
      {
        if (([a1 parseSpace] & 1) == 0)
        {
          [a1 emitWarning:@"Expected space"];
        }

        v18 = [a1 copyMessageSet];
        if (v18)
        {
          v6 = [objc_allocWithZone(MEMORY[0x277CBEA60]) initWithObjects:{v16, v17, v18, 0}];
          v7 = 16;
LABEL_125:

          goto LABEL_47;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    v6 = 0;
    v7 = 0;
    goto LABEL_125;
  }

  if ([a1 parseSpace])
  {
    v6 = [a1 copyArray];
  }

  else
  {
    v6 = 0;
  }

  v7 = 2;
LABEL_47:
  if (([a1 match:"]"] & 1) == 0)
  {
    [a1 emitWarning:@"Expected ]"];
  }

  [a1 parseSpace];
LABEL_50:
  v8 = [objc_allocWithZone(MEMORY[0x277D24F00]) initWithBytes:objc_msgSend(a1 length:{"start"), objc_msgSend(a1, "end") - objc_msgSend(a1, "start")}];
  [a1 setEnd:{objc_msgSend(a1, "start")}];
  [objc_msgSend(a1 "response")];

  v9 = *MEMORY[0x277D85DE8];
}

void capability_response(void *a1)
{
  v2 = capability_array(a1);
  [objc_msgSend(a1 "response")];
}

void id_response(void *a1)
{
  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([a1 match:"(")]
  {
    while (([a1 match:"]") & 1) == 0)
    {
      v2 = [a1 copyNilOrString];
      [a1 parseSpace];
      v3 = [a1 copyNilOrString];
      [a1 parseSpace];
      if (v2 && v3)
      {
        [v4 mf_addObject:v3 forKey:v2];
      }
    }
  }

  else if (([a1 match:"NIL"] & 1) == 0)
  {
    [a1 emitWarning:@"Expected list or NIL"];
  }

  [objc_msgSend(a1 "response")];
}

void flags_response(void *a1)
{
  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  v2 = flags_array(a1);
  [objc_msgSend(a1 "response")];
  [objc_msgSend(a1 "response")];
}

void status_response(void *a1)
{
  [objc_msgSend(a1 "response")];
  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  v2 = mailbox(a1);
  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  v3 = [a1 copyArray];
  if (!v3)
  {
    v6 = [a1 end] - 1;
    do
    {
      v7 = v6;
      if (v6 <= [a1 start])
      {
        break;
      }

      v6 = (v7 - 1);
    }

    while (*v7 != 41);
      ;
    }

    if (i <= [a1 start] || (objc_msgSend(a1, "setStart:", i), (v3 = objc_msgSend(a1, "copyArray")) == 0))
    {
      theDict = 0;
      goto LABEL_34;
    }
  }

  v4 = v3;
  v5 = [v3 count];
  if (v5 <= 1)
  {
    theDict = [MEMORY[0x277CBEAC0] dictionary];
    goto LABEL_33;
  }

  v9 = v5;
  v18 = v2;
  theDict = CFDictionaryCreateMutable(0, v5 >> 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  for (j = 1; j < v9; j += 2)
  {
    v11 = [v4 objectAtIndex:{j - 1, v18}];
    v12 = [v4 objectAtIndex:j];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_29;
    }

    v13 = 0;
    do
    {
      v14 = status_response_KnownStatusCodes[v13];
      v15 = *v14;
      if (*v14 && [(__CFString *)v11 caseInsensitiveCompare:*v14])
      {
        v15 = 0;
      }

      if (v13 > 4)
      {
        break;
      }

      ++v13;
    }

    while (!v15);
    if (v15)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        continue;
      }

      v16 = theDict;
      v17 = v15;
    }

    else
    {
LABEL_29:
      v16 = theDict;
      v17 = v11;
    }

    CFDictionarySetValue(v16, v17, v12);
  }

  v2 = v18;
LABEL_33:

LABEL_34:
  [objc_msgSend(a1 "response")];
}

void search_response(void *a1)
{
  theArray = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  [objc_msgSend(a1 "response")];
  if ([a1 parseSpace])
  {
    do
    {
      v2 = [a1 copyNumber];
      if (!v2)
      {
        break;
      }

      v3 = v2;
      CFArrayAppendValue(theArray, v2);
    }

    while (([a1 parseSpace] & 1) != 0);
  }

  [objc_msgSend(a1 "response")];
}

void list_response(void *a1)
{
  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  v2 = flags_array(a1);
  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  v3 = [a1 copyNilOrString];
  if (![v3 length])
  {

    v3 = 0;
  }

  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  v11 = mailbox(a1);
  if (v2)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = [(__CFArray *)v2 count];
    if (v5)
    {
      v6 = 0;
      do
      {
        while (1)
        {
          v7 = [(__CFArray *)v2 objectAtIndex:--v5];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            break;
          }

LABEL_18:
          if (!v5)
          {
            goto LABEL_21;
          }
        }

        v8 = 0;
        while ([(__CFString *)*(&IMAPMailboxAttributeEntries + v8) compare:v7 options:1])
        {
          v9 = v8 > 0x5F;
          v8 += 16;
          if (v9)
          {
            [v4 insertObject:v7 atIndex:0];
            goto LABEL_18;
          }
        }

        v6 |= *(&IMAPMailboxAttributeEntries + v8 + 8);
      }

      while (v5);
LABEL_21:
      v5 = v6;
    }

    v10 = v4;
  }

  else
  {
    v10 = 0;
    v5 = 0;
  }

  [objc_msgSend(a1 "response")];
}

void fetch_response(void *a1)
{
  v52 = *MEMORY[0x277D85DE8];
  [objc_msgSend(a1 "response")];
  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  if (([a1 match:"(") & 1] == 0)
  {
    [a1 emitError:@"Invalid FETCH response"];
  }

  v2 = [a1 start];
  if (v2 < [a1 end])
  {
    v4 = 0;
    v5 = 1;
    v6 = 0x277CBE000uLL;
    *&v3 = 138412290;
    v49 = v3;
    while (1)
    {
      if ([a1 match:"]", v49))
      {
        goto LABEL_145;
      }

      if (v4)
      {
        if (([a1 parseSpace] & 1) == 0 && v5)
        {
          [a1 emitWarning:@"Expected space"];
          goto LABEL_145;
        }
      }

      else
      {
        v4 = objc_alloc_init(*(v6 + 2840));
      }

      v7 = memchr([a1 start], 32, objc_msgSend(a1, "end") - objc_msgSend(a1, "start"));
      if (!v7)
      {
LABEL_143:
        v47 = @"Couldn't parse FETCH: no space character in input";
LABEL_144:
        [a1 emitError:v47];
        goto LABEL_145;
      }

      v8 = v7;
      if ([a1 match:"BODYSTRUCTURE" upToSpecial:v7] & 1) != 0 || (objc_msgSend(a1, "match:upToSpecial:", "BODY", v8))
      {
        break;
      }

      if ([a1 match:"ENVELOPE" upToSpecial:v8])
      {
        v9 = 0;
        v10 = 0;
        v11 = 1;
        goto LABEL_17;
      }

      if ([a1 match:"UID" upToSpecial:v8])
      {
        v9 = 0;
        v10 = 0;
        v11 = 8;
        goto LABEL_17;
      }

      if ([a1 match:"X-GM-MSGID" upToSpecial:v8])
      {
        v9 = 0;
        v10 = 0;
        v11 = 9;
        goto LABEL_17;
      }

      if ([a1 match:"RFC822.SIZE" upToSpecial:v8])
      {
        v9 = 0;
        v10 = 0;
        v11 = 3;
        goto LABEL_17;
      }

      if ([a1 match:"RFC822" upToSpecial:v8])
      {
        v9 = 0;
        v10 = 0;
        v11 = 7;
        goto LABEL_17;
      }

      if ([a1 match:"RFC822.HEADER" upToSpecial:v8] & 1) != 0 || (objc_msgSend(a1, "match:upToSpecial:", "HEADER", v8))
      {
        v9 = 0;
        v10 = 0;
        v11 = 4;
        goto LABEL_17;
      }

      if ([a1 match:"RFC822.TEXT" upToSpecial:v8] & 1) != 0 || (objc_msgSend(a1, "match:upToSpecial:", "TEXT", v8))
      {
        v9 = 0;
        v10 = 0;
        v11 = 5;
        goto LABEL_17;
      }

      if ([a1 match:"FLAGS" upToSpecial:v8])
      {
        v9 = 0;
        v10 = 0;
        v11 = 10;
        goto LABEL_17;
      }

      if ([a1 match:"MODSEQ" upToSpecial:v8])
      {
        v9 = 0;
        v10 = 0;
        v11 = 11;
        goto LABEL_17;
      }

      if ([a1 match:"INTERNALDATE" upToSpecial:v8])
      {
        v9 = 0;
        v10 = 0;
        v11 = 2;
        goto LABEL_17;
      }

      if ([a1 match:"BODY["])
      {
        v40 = [a1 start];
        if ([a1 match:"HEADER."])
        {
          [a1 setStart:v8 + 1];
          v41 = [a1 copyArray];
          if (v41)
          {
          }

          else
          {
            [a1 emitWarning:@"Unable to parse header keys array"];
          }

          v44 = memchr([a1 start], 32, objc_msgSend(a1, "end") - objc_msgSend(a1, "start"));
          if (!v44)
          {
            goto LABEL_143;
          }

          v8 = v44;
LABEL_134:
          v10 = 0;
          v11 = 4;
        }

        else
        {
          if ([a1 match:"HEADER" upToSpecial:v8])
          {
            goto LABEL_134;
          }

          v42 = memchr([a1 start], 93, objc_msgSend(a1, "end") - objc_msgSend(a1, "start"));
          if (!v42)
          {
            v47 = @"Couldn't parse FETCH: no square brace character in input";
            goto LABEL_144;
          }

          v43 = v42;
          v10 = [a1 copyStringFrom:v40 to:v42 withCaseOption:1];
          [a1 setStart:v43 + 1];
          v11 = 7;
        }

        if ([a1 match:"<"])
        {
          *buf = 0;
          if ([a1 getNumber:buf])
          {
            v9 = *buf;
            v45 = [a1 match:">"];
            v46 = @"Expected >";
            if (v45)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v9 = 0;
            v46 = @"Expected number";
          }

          [a1 emitWarning:v46];
        }

        else
        {
          v9 = 0;
        }

LABEL_17:
        [a1 isValid];
        goto LABEL_18;
      }

      if ([a1 isValid])
      {
        v47 = @"Unrecognized FETCH key";
        goto LABEL_144;
      }

      v11 = 0;
      v10 = 0;
      v9 = 0;
LABEL_18:
      [a1 setStart:v8];
      if (([a1 parseSpace] & 1) == 0)
      {
        [a1 emitWarning:@"Expected space"];
      }

      [a1 logReadChars];
      v12 = [[MFIMAPFetchResult alloc] initWithType:v11];
      v5 = 1;
      if (v11 > 5)
      {
        if (v11 <= 8)
        {
          if (v11 == 6)
          {
            v20 = [a1 copyArrayAllowingNulls:1];
            if (v20)
            {
              TypeID = CFArrayGetTypeID();
              if (TypeID != CFGetTypeID(v20))
              {

                v20 = 0;
              }
            }

            v5 = v20 != 0;
            [(MFIMAPFetchResult *)v12 setBodyStructure:v20];

            goto LABEL_68;
          }

          if (v11 != 7)
          {
            v13 = [a1 copyNumber];
            -[MFIMAPFetchResult setUid:](v12, "setUid:", [v13 unsignedIntValue]);
            goto LABEL_66;
          }

          v19 = objc_alloc_init(MEMORY[0x277CCAB68]);
          [v19 appendString:@"BODY.PEEK["];
          if (v10)
          {
            [v19 appendString:v10];
          }

          [v19 appendString:@"]"];
          v18 = body_data(a1, v10);
          if (v10)
          {
            [(MFIMAPFetchResult *)v12 setSection:v10];
          }

          if (v9)
          {
            [(MFIMAPFetchResult *)v12 setStartOffset:v9];
          }

          if (v18)
          {
LABEL_55:
            [(MFIMAPFetchResult *)v12 setFetchData:v18];
          }

LABEL_67:
          v5 = 1;
          goto LABEL_68;
        }

        if (v11 == 9)
        {
          v13 = [a1 copyNumber];
          -[MFIMAPFetchResult setUniqueRemoteId:](v12, "setUniqueRemoteId:", [v13 unsignedLongLongValue]);
        }

        else
        {
          if (v11 != 10)
          {
            if ([a1 match:"(")]
            {
              v15 = [a1 copyNumber];
              -[MFIMAPFetchResult setModSequenceNumber:](v12, "setModSequenceNumber:", [v15 unsignedLongLongValue]);

              if (([a1 match:"]") & 1) == 0)
              {
                [a1 emitError:@"Expected a right paren"];
              }
            }

            goto LABEL_67;
          }

          if ([a1 match:{"(") && (objc_msgSend(a1, "match:", ")") & 1}] == 0)
          {
            v50 = 0;
            v13 = 0;
            v23 = 1;
            do
            {
              if ((v23 & 1) == 0)
              {
                while (1)
                {
                  v26 = [a1 start];
                  if (v26 >= [a1 end] || (objc_msgSend(a1, "parseSpace") & 1) != 0 || objc_msgSend(a1, "lookAhead") == 41)
                  {
                    break;
                  }

                  [a1 increment];
                }
              }

              if ([a1 lookAhead] == 92)
              {
                v24 = [a1 start] + 1;
                if (v24 < [a1 end] && *(objc_msgSend(a1, "start") + 1) == 42)
                {
                  v25 = ([a1 start] + 2);
                }

                else
                {
                  v28 = [a1 start] + 1;
                  do
                  {
                    v25 = v28;
                    if (v28 >= [a1 end])
                    {
                      break;
                    }

                    ++v28;
                  }

                  while (mf_isIMAPAtom(*v25));
                }

                if (&v25[-[a1 start]] < 2)
                {
                  break;
                }

                v29 = [a1 copyStringFrom:objc_msgSend(a1 to:"start") withCaseOption:{v25, 0}];
                [a1 setStart:v25];
              }

              else
              {
                if ([a1 lookAhead] == 34)
                {
                  v27 = [a1 copyQuotedString];
                }

                else
                {
                  v27 = [a1 copyAtom];
                }

                v29 = v27;
              }

              if (!v29)
              {
                break;
              }

              v30 = v6;
              v31 = [v29 dataUsingEncoding:1 allowLossyConversion:1];
              v32 = [v31 bytes];
              v33 = [v31 length];
              v34 = &IMAPMessageFlagsTable;
              v35 = 12;
              do
              {
                v36 = *v34;
                v34 += 3;
                v37 = strncasecmp(v32, v36, v33);
                if (v37)
                {
                  v38 = v35 == 0;
                }

                else
                {
                  v38 = 1;
                }

                --v35;
              }

              while (!v38);
              if (v37)
              {
                v6 = v30;
                if (!v13)
                {
                  v13 = objc_alloc_init(*(v30 + 2840));
                }

                [v13 addObject:v29];
              }

              else
              {
                v50 |= *(v34 - 2);
                v6 = v30;
              }

              v39 = [a1 match:"]");
              v23 = 0;
            }

            while (!v39);
          }

          else
          {
            v13 = 0;
            v50 = 0;
          }

          [(MFIMAPFetchResult *)v12 setMessageFlags:v50];
          [(MFIMAPFetchResult *)v12 setCustomFlagsArray:v13];
        }

        goto LABEL_66;
      }

      if (v11 > 2)
      {
        if (v11 != 3)
        {
          if (v11 == 4)
          {
            v14 = @"HEADER";
          }

          else
          {
            v14 = @"TEXT";
          }

          v18 = body_data(a1, v14);
          if (v9)
          {
            [(MFIMAPFetchResult *)v12 setStartOffset:v9];
          }

          if (v18)
          {
            goto LABEL_55;
          }

          goto LABEL_67;
        }

        v13 = [a1 copyNumber];
        -[MFIMAPFetchResult setMessageSize:](v12, "setMessageSize:", [v13 unsignedIntValue]);
LABEL_66:

        goto LABEL_67;
      }

      if (v11 == 1)
      {
        v13 = [a1 copyArray];
        [(MFIMAPFetchResult *)v12 setEnvelope:v13];
        goto LABEL_66;
      }

      if (v11 == 2)
      {
        v13 = [a1 copyDateTime];
        [(MFIMAPFetchResult *)v12 setInternalDate:v13];
        v16 = MFLogGeneral();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = [v13 description];
          *buf = v49;
          *&buf[4] = v17;
          _os_log_impl(&dword_258B7A000, v16, OS_LOG_TYPE_INFO, "#Power [Server Fetch Time] InternalDate=%@", buf, 0xCu);
        }

        goto LABEL_66;
      }

LABEL_68:
      [v4 addObject:v12];

      v22 = [a1 start];
      if (v22 >= [a1 end])
      {
        goto LABEL_145;
      }
    }

    v9 = 0;
    v10 = 0;
    v11 = 6;
    goto LABEL_17;
  }

  v4 = 0;
LABEL_145:
  [objc_msgSend(a1 "response")];
  if (v4)
  {
  }

  v48 = *MEMORY[0x277D85DE8];
}

void quotaroot_response(void *a1)
{
  [objc_msgSend(a1 "response")];
  if ([a1 parseSpace])
  {
    v2 = [a1 copyAString];
    if (v2 && [a1 parseSpace])
    {
      allocator = 0;
      v3 = MEMORY[0x277CBF128];
      do
      {
        v4 = [a1 copyAString];
        if (!v4)
        {
          break;
        }

        v5 = v4;
        Mutable = allocator;
        if (!allocator)
        {
          Mutable = CFArrayCreateMutable(0, 0, v3);
        }

        allocator = Mutable;
        [(__CFArray *)Mutable addObject:v5];
      }

      while (([a1 parseSpace] & 1) != 0);
    }

    else
    {
      allocator = 0;
    }
  }

  else
  {
    allocator = 0;
    v2 = 0;
  }

  [objc_msgSend(a1 "response")];
}

void quota_response(void *a1)
{
  [objc_msgSend(a1 "response")];
  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  v2 = [a1 copyAString];
  if (v2 && [a1 parseSpace] && objc_msgSend(a1, "match:", "("))
  {
    allocator = 0;
    v3 = MEMORY[0x277CBED60];
    v4 = MEMORY[0x277CBF150];
    do
    {
      v5 = [a1 copyAtom];
      if (([a1 parseSpace] & 1) == 0)
      {
        [a1 emitWarning:@"Expected space"];
      }

      v6 = [a1 copyNumber];
      if (([a1 parseSpace] & 1) == 0)
      {
        [a1 emitWarning:@"Expected space"];
      }

      v7 = [a1 copyNumber];
      if (v5)
      {
        Mutable = CFDictionaryCreateMutable(0, 3, v3, v4);
        [(__CFDictionary *)Mutable setObject:v5 forKey:@"_IMAPNameQuotaKey"];
        if (v6)
        {
          [(__CFDictionary *)Mutable setObject:v6 forKey:@"_IMAPCurrentUsageQuotaKey"];
        }

        if (v7)
        {
          [(__CFDictionary *)Mutable setObject:v7 forKey:@"_IMAPMaxUsageQuotaKey"];
        }

        v9 = allocator;
        if (!allocator)
        {
          v9 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
        }

        allocator = v9;
        [(__CFArray *)v9 addObject:Mutable];
      }
    }

    while (([a1 parseSpace] & 1) != 0);
  }

  else
  {
    allocator = 0;
  }

  [objc_msgSend(a1 "response")];
}

uint64_t esearch_response(void *a1)
{
  [objc_msgSend(a1 "response")];
  v2 = [a1 connection];

  return [v2 parseESearchResponseWithContext:a1];
}

void push_response(void *a1)
{
  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v2 = [a1 copyNilOrString];
  [a1 parseSpace];
  v3 = [a1 copyNilOrString];
  v4 = v3;
  if (v2 && v3)
  {
    do
    {
      [v6 mf_addObject:v4 forKey:v2];

      [a1 parseSpace];
      v2 = [a1 copyNilOrString];
      [a1 parseSpace];
      v5 = [a1 copyNilOrString];
      v4 = v5;
    }

    while (v2 && v5);
  }

  [objc_msgSend(a1 "response")];
}

void namespace_response(void *a1)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v7 = __namespace_response_block_invoke;
  v8 = &unk_2798B1C28;
  v9 = a1;
  v2 = __namespace_response_block_invoke(v6);
  v3 = v7(v6);
  v4 = v7(v6);
  v5 = [a1 response];
  [v5 setResponseType:22];
  [v5 setPrivateNamespaces:v2];
  [v5 setPublicNamespaces:v3];
  [v5 setSharedNamespaces:v4];
}

void other_response(void *a1)
{
  [objc_msgSend(a1 "response")];
  [a1 parseSpace];
  v2 = [a1 copyAtom];
  if ([a1 parseSpace])
  {
    v8 = 0;
    while (1)
    {
      v3 = [a1 start];
      if (v3 >= [a1 end])
      {
        goto LABEL_19;
      }

      v4 = [a1 lookAhead];
      switch(v4)
      {
        case '""':
          v5 = [a1 copyQuotedString];
          break;
        case '(':
          v5 = [a1 copyArray];
          break;
        case '{':
          v5 = [a1 copyLiteralString];
          break;
        default:
          v6 = [a1 copyNumber];
          v7 = v8;
          if (v6)
          {
            goto LABEL_13;
          }

          v5 = [a1 copyAtom];
          break;
      }

      v6 = v5;
      v7 = v8;
      if (v6)
      {
LABEL_13:
        if (!v7)
        {
          v7 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
        }

        v8 = v7;
        [v7 addObject:v6];
      }

      if (([a1 parseSpace] & 1) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  v8 = 0;
LABEL_19:
  [objc_msgSend(a1 "response")];
}

__CFString *mailbox(void *a1)
{
  v1 = [a1 copyAString];
  if (!v1 || [@"INBOX" caseInsensitiveCompare:v1])
  {
    return v1;
  }

  return @"INBOX";
}

__CFArray *flags_array(void *a1)
{
  if (![a1 match:"(")]
  {
    return 0;
  }

  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
  if (([a1 match:"]") & 1) == 0)
  {
    while (1)
    {
      if ([a1 lookAhead] == 92)
      {
        v3 = [a1 start] + 1;
        if (v3 < [a1 end] && *(objc_msgSend(a1, "start") + 1) == 42)
        {
          v4 = ([a1 start] + 2);
        }

        else
        {
          v6 = [a1 start] + 1;
          do
          {
            v4 = v6;
            if (v6 >= [a1 end])
            {
              break;
            }

            ++v6;
          }

          while (mf_isIMAPAtom(*v4));
        }

        if (&v4[-[a1 start]] < 2)
        {
          return v2;
        }

        v7 = [a1 copyStringFrom:objc_msgSend(a1 to:"start") withCaseOption:{v4, 0}];
        [a1 setStart:v4];
        if (!v7)
        {
          return v2;
        }
      }

      else
      {
        if ([a1 lookAhead] == 34)
        {
          v5 = [a1 copyQuotedString];
        }

        else
        {
          v5 = [a1 copyAtom];
        }

        v7 = v5;
        if (!v5)
        {
          return v2;
        }
      }

      CFArrayAppendValue(v2, v7);

      if ([a1 match:"]"))
      {
        return v2;
      }

      while (1)
      {
        v8 = [a1 start];
        if (v8 >= [a1 end] || (objc_msgSend(a1, "parseSpace") & 1) != 0 || objc_msgSend(a1, "lookAhead") == 41)
        {
          break;
        }

        [a1 increment];
      }
    }
  }

  return v2;
}

void *capability_array(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
  if ([a1 parseSpace])
  {
    do
    {
        ;
      }

      if (i > [a1 start])
      {
        v4 = [a1 copyStringFrom:objc_msgSend(a1 to:"start") withCaseOption:{i, 1}];
        [a1 setStart:i];
        [v2 addObject:v4];
      }
    }

    while (([a1 parseSpace] & 1) != 0);
  }

  return v2;
}

uint64_t body_data(void *a1, uint64_t a2)
{
  v4 = [objc_msgSend(a1 "response")];
  if (v4)
  {
    v5 = v4;
    if (([a1 literalWithResponseConsumer:v4 section:a2] & 1) == 0)
    {
      [v5 appendData:nilOrString(a1) forSection:a2];
    }

    return 0;
  }

  else
  {
    result = [a1 copyLiteral];
    if (!result)
    {

      return nilOrString(a1);
    }
  }

  return result;
}

uint64_t nilOrString(void *a1)
{
  result = [a1 copyNilOrString];
  if (result)
  {
    v2 = result;
    v3 = MFCreateDataWithString();

    v4 = [objc_alloc(MEMORY[0x277D24F00]) initWithImmutableData:v3];
    return v4;
  }

  return result;
}

void *__namespace_response_block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) parseSpace] & 1) == 0)
  {
    [*(a1 + 32) emitWarning:@"Expected space"];
  }

  v2 = [*(a1 + 32) copyArrayAllowingNulls:1];
  if (v2)
  {
    v3 = v2;
    Count = CFArrayGetCount(v2);
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:Count];
    if (Count >= 1)
    {
      v6 = 0;
      v23 = Count;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
        if (ValueAtIndex)
        {
          v8 = ValueAtIndex;
          v9 = CFGetTypeID(ValueAtIndex);
          if (v9 == CFArrayGetTypeID())
          {
            v10 = CFArrayGetCount(v8);
            if (v10 >= 2)
            {
              v11 = v10;
              v12 = CFArrayGetValueAtIndex(v8, 0);
              v13 = CFArrayGetValueAtIndex(v8, 1);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 || v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                [*(a1 + 32) emitError:{@"couldn't parse namespace response: prefix and/or delimiter were not strings", v23}];

                v5 = 0;
              }

              v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
              [v14 setObject:v12 forKeyedSubscript:@"_IMAPNamespacePrefixKey"];
              if (v13)
              {
                [v14 setObject:v13 forKeyedSubscript:@"_IMAPNamespaceDelimiterKey"];
              }

              if (v11 == 2)
              {
                Count = v23;
              }

              else
              {
                if (v11)
                {
                  [*(a1 + 32) emitError:@"couldn't parse namespace response extensions: not enough values for keys"];
                  v20 = v5;
                  v5 = 0;
                }

                else
                {
                  v24 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:(v11 >> 1) - 1];
                  v15 = 2;
                  do
                  {
                    v16 = CFArrayGetValueAtIndex(v8, v15);
                    v17 = v15 + 1;
                    v18 = CFArrayGetValueAtIndex(v8, v15 + 1);
                    if (v16 && (v19 = v18) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      [v24 setObject:v19 forKeyedSubscript:v16];
                    }

                    else
                    {
                      [*(a1 + 32) emitError:{@"couldn't parse namespace response extensions: invalid key or value", v23}];

                      v5 = 0;
                    }

                    v15 = v17 + 1;
                  }

                  while (v17 + 1 < v11);
                  v20 = v24;
                  if ([v24 count])
                  {
                    [v14 setObject:v24 forKeyedSubscript:@"_IMAPNamespaceExtensionsKey"];
                  }
                }

                Count = v23;
              }

              [v5 addObject:{v14, v23}];
            }
          }
        }

        ++v6;
      }

      while (v6 != Count);
    }

    CFRelease(v3);
  }

  else
  {
    v21 = [*(a1 + 32) copyAtom];
    if ([v21 caseInsensitiveCompare:@"NIL"])
    {
      [*(a1 + 32) emitError:@"couldn't parse NAMESPACE: unexpected atom"];
    }

    return 0;
  }

  return v5;
}

void *response_without_tag(void *a1)
{
  v7 = 0;
  if (![a1 getNumber:&v7])
  {
    if ([objc_msgSend(a1 "response")])
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    result = matchResponseTableEntry(a1, v6);
    if (!result)
    {
      return result;
    }

    v5 = result[2];
    if (!v5)
    {
      return result;
    }

    return v5(a1);
  }

  if (([a1 parseSpace] & 1) == 0)
  {
    [a1 emitWarning:@"Expected space"];
  }

  v2 = v7;
  matched = matchResponseTableEntry(a1, 4);
  result = [objc_msgSend(a1 "response")];
  if (matched)
  {
    v5 = matched[2];
    if (v5)
    {
      return v5(a1);
    }
  }

  return result;
}

void *matchResponseTableEntry(void *a1, int a2)
{
  v4 = [a1 nextSeparator];
  v5 = 0;
  v6 = 0;
  v7 = v4 - [a1 start];
  while (1)
  {
    if ((ResponseTypeTable[v6 + 3] & a2) == 0)
    {
      goto LABEL_6;
    }

    v8 = LODWORD(ResponseTypeTable[v6]);
    if (!v8)
    {
      break;
    }

    if (v7 == v8)
    {
      v9 = ResponseTypeTable[v6 + 1];
      if (!strncasecmp(v9, [a1 start], v7))
      {
        goto LABEL_10;
      }
    }

LABEL_6:
    v5 = (v5 + 1);
    v10 = v6 >= 96;
    v6 += 4;
    if (v10)
    {
      return 0;
    }
  }

  v9 = ResponseTypeTable[v6 + 1];
LABEL_10:
  [a1 match:v9];
  [objc_msgSend(a1 "response")];
  return &ResponseTypeTable[v6];
}

NSString *OUTLINED_FUNCTION_3()
{

  return NSStringFromSelector(v0);
}

uint64_t _syncFlags(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6, uint64_t a7)
{
  v33 = *MEMORY[0x277D85DE8];
  v14 = [a1 relativePath];
  [objc_msgSend(objc_msgSend(a1 "account")];
  v15 = [a1 account];
  [a5 connectTime];
  v16 = [v15 flagChangesForMailboxPath:v14 UID:a2 connectTime:?];
  if (v16)
  {
    v17 = MFLogGeneral();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v30 = a2;
      v31 = 2112;
      v32 = v16;
      _os_log_impl(&dword_258B7A000, v17, OS_LOG_TYPE_INFO, "#IMAPFlagChanges applying pending changes for message %u: %@", buf, 0x12u);
    }

    a4 = MFMessageFlagsByApplyingDictionary();
  }

  v18 = 0;
  if ((a3 & 0x100080) != 0 && (a6 & 1) == 0)
  {
    v19 = objc_alloc(MEMORY[0x277CBEB38]);
    v18 = [v19 initWithObjectsAndKeys:{*MEMORY[0x277D28318], @"NO", *MEMORY[0x277D28320], 0, 0}];
  }

  v20 = [a1 newDictionaryForLocalFlags:a3 serverFlags:a4 existingDictionary:v18];

  if (v16)
  {
    v21 = MFLogGeneral();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [a5 tag];
      *buf = 67109378;
      v30 = v22;
      v31 = 2112;
      v32 = v20;
      _os_log_impl(&dword_258B7A000, v21, OS_LOG_TYPE_INFO, "#IMAPFlagChanges remaining changes from server (connection %u): %@", buf, 0x12u);
    }
  }

  if (v20)
  {
    v23 = (*(a7 + 16))(a7);
    if (v23)
    {
      v24 = v23;
      v25 = [v23 messageStore];
      v28 = v24;
      [v25 setFlagsLocallyFromDictionary:v20 forMessages:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v28, 1)}];
    }
  }

  result = [objc_msgSend(objc_msgSend(a1 "account")];
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t uidFromFetchResults(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [a1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(a1);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 type] == 8)
        {
          result = [v6 uid];
          goto LABEL_11;
        }
      }

      v3 = [a1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  result = 0x7FFFFFFFFFFFFFFFLL;
LABEL_11:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t flagsFromFetchResults(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  result = [a1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v9;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(a1);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        if ([v6 type] == 10)
        {
          result = [v6 messageFlags];
          goto LABEL_11;
        }

        ++v5;
      }

      while (v3 != v5);
      result = [a1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v3 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_258BA8BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t compactMessagesToUID(void *a1, uint64_t a2)
{
  v3 = [objc_msgSend(a1 "library")];
  result = [v3 count];
  if (result)
  {
    v5 = [a1 library];

    return [v5 compactMessages:v3];
  }

  return result;
}

void tokenizeCriterionWithHandler(void *a1, uint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = [a1 expression];
  v5 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  theString = v4;
  if (![-[__CFString stringByTrimmingCharactersInSet:](v4 stringByTrimmingCharactersInSet:{v5), "length"}])
  {
LABEL_34:
    v33 = *MEMORY[0x277D85DE8];
    return;
  }

  if ([a1 qualifier] != 8 && !-[__CFString mf_isLegalEmailAddress](v4, "mf_isLegalEmailAddress"))
  {
    v8 = [objc_alloc(MEMORY[0x277CCA948]) initWithTypes:32 error:0];
    if (v8)
    {
      v35 = v5;
      v34 = v8;
      v9 = [v8 matchesInString:v4 options:16 range:{0, -[__CFString length](v4, "length")}];
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      obj = v9;
      v11 = [v9 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v43;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v43 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v42 + 1) + 8 * i);
            v16 = [v15 range];
            (*(a2 + 16))(a2, [(__CFString *)theString substringWithRange:v16, v17]);
            v18 = MEMORY[0x277CCAE60];
            v19 = [v15 range];
            [v10 ef_insertObject:objc_msgSend(v18 usingComparator:"valueWithRange:" allowDuplicates:{v19, v20), &__block_literal_global_581, 0}];
          }

          v12 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
        }

        while (v12);
      }

      if ([v10 count])
      {
        theString = [(__CFString *)theString mutableCopy];
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v21 = [v10 countByEnumeratingWithState:&v38 objects:v46 count:16];
        v22 = v34;
        if (v21)
        {
          v23 = v21;
          v24 = *v39;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v39 != v24)
              {
                objc_enumerationMutation(v10);
              }

              v26 = [*(*(&v38 + 1) + 8 * j) rangeValue];
              [(__CFString *)theString deleteCharactersInRange:v26, v27];
            }

            v23 = [v10 countByEnumeratingWithState:&v38 objects:v46 count:16];
          }

          while (v23);
        }
      }

      else
      {
        v22 = v34;
      }

      v5 = v35;
    }

    if ([-[__CFString stringByTrimmingCharactersInSet:](theString stringByTrimmingCharactersInSet:{v5), "length"}])
    {
      v28 = [MEMORY[0x277CBEAF8] currentLocale];
      v50.length = CFStringGetLength(theString);
      v50.location = 0;
      v29 = CFStringTokenizerCreate(*MEMORY[0x277CBECE8], theString, v50, 4uLL, v28);
      if (v29)
      {
        v30 = v29;
        while (CFStringTokenizerAdvanceToNextToken(v30))
        {
          CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v30);
          if (CurrentTokenRange.length != 1)
          {
            v32 = [(__CFString *)theString substringWithRange:CurrentTokenRange.location, CurrentTokenRange.length];
            if ([objc_msgSend(v32 stringByTrimmingCharactersInSet:{v5), "length"}])
            {
              (*(a2 + 16))(a2, v32);
            }
          }
        }

        CFRelease(v30);
      }
    }

    goto LABEL_34;
  }

  v6 = *(a2 + 16);
  v7 = *MEMORY[0x277D85DE8];

  v6(a2, v4);
}

void sub_258BA9CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *fetchArgumentsForCriterion(void *a1, int a2)
{
  v88 = *MEMORY[0x277D85DE8];
  v4 = needUTF8ForCriterion(a1);
  v5 = [a1 expression];
  if (v4 && a2)
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithObjects:{@"CHARSET", @"UTF-8", 0}];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB18] array];
  }

  v7 = v6;
  v8 = [a1 criterionType];
  if (v8 > 25)
  {
    if (v8 <= 33)
    {
      if (v8 == 26)
      {
        v30 = [MEMORY[0x277CCAB68] string];
        if ([a1 qualifier] == 7)
        {
          [(__CFString *)v30 appendString:@"NOT "];
        }

        if (fetchArgumentsForCriterion_onceToken != -1)
        {
          fetchArgumentsForCriterion_cold_1();
        }

        v31 = [fetchArgumentsForCriterion_flagMap objectForKey:{objc_msgSend(a1, "expression")}];
        if (!v31)
        {
          fetchArgumentsForCriterion_cold_2(a1);
        }

        [(__CFString *)v30 appendString:v31];
        v32 = v7;
        v33 = v30;
        goto LABEL_84;
      }

      if (v8 == 32)
      {
        v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v73[0] = MEMORY[0x277D85DD0];
        v73[1] = 3221225472;
        v73[2] = __fetchArgumentsForCriterion_block_invoke;
        v73[3] = &unk_2798B2238;
        v73[4] = a1;
        v73[5] = v22;
        tokenizeCriterionWithHandler(a1, v73);
        v23 = [v22 count];
        if (v23)
        {
          if (v23 == 1)
          {
            [v7 addObjectsFromArray:{objc_msgSend(v22, "lastObject")}];
          }

          else
          {
            v80 = 0u;
            v81 = 0u;
            v78 = 0u;
            v79 = 0u;
            v44 = [v22 countByEnumeratingWithState:&v78 objects:buf count:16];
            if (v44)
            {
              v45 = v44;
              obj = v22;
              v60 = *v79;
              v46 = 1;
              do
              {
                for (i = 0; i != v45; ++i)
                {
                  if (*v79 != v60)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v48 = *(*(&v78 + 1) + 8 * i);
                  if (v46)
                  {
                    v76 = 0u;
                    v77 = 0u;
                    v74 = 0u;
                    v75 = 0u;
                    v49 = [v48 countByEnumeratingWithState:&v74 objects:v85 count:16];
                    if (v49)
                    {
                      v50 = v49;
                      v51 = *v75;
                      v52 = 1;
                      do
                      {
                        for (j = 0; j != v50; ++j)
                        {
                          if (*v75 != v51)
                          {
                            objc_enumerationMutation(v48);
                          }

                          v54 = *(*(&v74 + 1) + 8 * j);
                          if (v52)
                          {
                            v54 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"(%@"), *(*(&v74 + 1) + 8 * j);
                          }

                          [v7 addObject:v54];
                          v52 = 0;
                        }

                        v50 = [v48 countByEnumeratingWithState:&v74 objects:v85 count:16];
                        v52 = 0;
                        v46 = 0;
                      }

                      while (v50);
                    }

                    else
                    {
                      v46 = 1;
                    }
                  }

                  else
                  {
                    [v7 addObjectsFromArray:*(*(&v78 + 1) + 8 * i)];
                    v46 = 0;
                  }
                }

                v22 = obj;
                v45 = [obj countByEnumeratingWithState:&v78 objects:buf count:16];
              }

              while (v45);
            }

            [v7 addObject:@""]);
          }
        }

        goto LABEL_85;
      }

      goto LABEL_123;
    }

    switch(v8)
    {
      case '""':
        v9 = @"FROM";
        break;
      case '&':
        v9 = @"TO";
        break;
      case '\'':
        v9 = @"CC";
        break;
      default:
LABEL_123:
        fetchArgumentsForCriterion_cold_4(a1);
    }

    [v7 addObject:v9];
    if (v4)
    {
LABEL_60:
      v29 = [v5 dataUsingEncoding:4];
LABEL_82:
      v33 = v29;
LABEL_83:
      v32 = v7;
LABEL_84:
      [v32 addObject:v33];
      goto LABEL_85;
    }

LABEL_81:
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v5];
    goto LABEL_82;
  }

  if (v8 <= 10)
  {
    if (v8 != 1)
    {
      if (v8 == 9)
      {
        objc_msgSend(v7, "addObject:", @"(OR TO");
        if (v4)
        {
          v10 = [v5 dataUsingEncoding:4];
        }

        else
        {
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v5];
        }

        [v7 addObject:v10];
        [v7 addObject:@"CC"];
        if (v4)
        {
          v43 = [v5 dataUsingEncoding:4];
        }

        else
        {
          v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v5];
        }

        [v7 addObject:v43];
LABEL_91:
        v33 = @"");
        goto LABEL_83;
      }

      goto LABEL_123;
    }

    v24 = [a1 criterionIdentifier];
    if ([v24 isEqual:*MEMORY[0x277D07030]])
    {
      v25 = @"SUBJECT";
    }

    else
    {
      if (![v24 isEqualToString:*MEMORY[0x277D06FE0]])
      {
        v58 = MFLogGeneral();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v87 = v24;
          _os_log_impl(&dword_258B7A000, v58, OS_LOG_TYPE_DEFAULT, "#Warning unsupported header criterion type %@", buf, 0xCu);
        }

LABEL_80:
        if (v4)
        {
          goto LABEL_60;
        }

        goto LABEL_81;
      }

      [v7 addObject:@"HEADER"];
      if ([a1 qualifier] != 3)
      {
        fetchArgumentsForCriterion_cold_3();
      }

      v25 = @"Message-ID";
    }

    [v7 addObject:v25];
    goto LABEL_80;
  }

  if (v8 == 11)
  {
    if ([a1 qualifier] == 6)
    {
      v26 = @"SINCE";
    }

    else
    {
      v26 = @"BEFORE";
    }

    [v7 addObject:v26];
    v27 = MEMORY[0x277CBEAA8];
    [objc_msgSend(a1 "expression")];
    v28 = [v27 dateWithTimeIntervalSince1970:?];
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", MFIMAPDateSearchStringForDate(v28)];
    goto LABEL_82;
  }

  if (v8 != 24)
  {
    goto LABEL_123;
  }

  v11 = [MEMORY[0x277CBEB18] array];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v12 = [a1 criteria];
  v13 = [v12 countByEnumeratingWithState:&v69 objects:v84 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v70;
    do
    {
      for (k = 0; k != v14; ++k)
      {
        if (*v70 != v15)
        {
          objc_enumerationMutation(v12);
        }

        ArgumentsForCriterion = fetchArgumentsForCriterion(*(*(&v69 + 1) + 8 * k), 0);
        if (ArgumentsForCriterion)
        {
          [v11 addObject:ArgumentsForCriterion];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v69 objects:v84 count:16];
    }

    while (v14);
  }

  if ([v11 count] == 1 && objc_msgSend(objc_msgSend(v11, "objectAtIndex:", 0), "count") == 1 || a2 && objc_msgSend(a1, "allCriteriaMustBeSatisfied"))
  {
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v18 = [v11 countByEnumeratingWithState:&v65 objects:v83 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v66;
      do
      {
        for (m = 0; m != v19; ++m)
        {
          if (*v66 != v20)
          {
            objc_enumerationMutation(v11);
          }

          [v7 addObjectsFromArray:*(*(&v65 + 1) + 8 * m)];
        }

        v19 = [v11 countByEnumeratingWithState:&v65 objects:v83 count:16];
      }

      while (v19);
    }

    goto LABEL_85;
  }

  if (![a1 allCriteriaMustBeSatisfied])
  {
    v55 = [v11 count];
    v56 = v55 - 1;
    if (v55 == 1)
    {
      [v7 addObjectsFromArray:{objc_msgSend(v11, "lastObject")}];
    }

    else
    {
      v57 = 0;
      do
      {
        objc_msgSend(v7, "addObject:", @"(OR");
        [v7 addObjectsFromArray:{objc_msgSend(v11, "objectAtIndex:", v57++)}];
      }

      while (v56 != v57);
      [v7 addObjectsFromArray:{objc_msgSend(v11, "lastObject")}];
      do
      {
        [v7 addObject:@""]);
        --v56;
      }

      while (v56);
    }

    goto LABEL_85;
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v34 = [v11 countByEnumeratingWithState:&v61 objects:v82 count:16];
  if (!v34)
  {
    goto LABEL_85;
  }

  v35 = v34;
  LOBYTE(v36) = 0;
  v37 = *v62;
  do
  {
    for (n = 0; n != v35; ++n)
    {
      if (*v62 != v37)
      {
        objc_enumerationMutation(v11);
      }

      v39 = *(*(&v61 + 1) + 8 * n);
      if (v36)
      {
        goto LABEL_71;
      }

      v36 = [*(*(&v61 + 1) + 8 * n) count];
      if (v36)
      {
        v40 = [v39 objectAtIndex:0];
        objc_msgSend(v7, "addObject:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"(%@"), v40);
        if (v36 != 1)
        {
          v39 = [v39 subarrayWithRange:{1, v36 - 1}];
LABEL_71:
          [v7 addObjectsFromArray:v39];
          LODWORD(v36) = 1;
          continue;
        }
      }
    }

    v35 = [v11 countByEnumeratingWithState:&v61 objects:v82 count:16];
  }

  while (v35);
  if (v36)
  {
    goto LABEL_91;
  }

LABEL_85:
  v41 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_258BAA8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258BAAA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258BAABD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258BAADD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258BAAF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258BABA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 160), 8);
  _Block_object_dispose((v35 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_258BABFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 176), 8);
  _Block_object_dispose((v33 - 144), 8);
  _Block_object_dispose((v33 - 112), 8);
  _Unwind_Resume(a1);
}

void _addIDForAppendedMessage(int a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1 && a3)
  {
    v4 = "";
    if (a2)
    {
      v4 = "temp-";
    }

    v5 = snprintf(__str, 0x1FuLL, "%s%u", v4, a1);
    v6 = CFStringCreateWithBytes(0, __str, v5, 0x600u, 0);
    if (v6)
    {
      v7 = v6;
      [a3 addObject:v6];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

id _uidSearchForMessageIds(void *a1, int a2, void *a3)
{
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a3, "count")}];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___uidSearchForMessageIds_block_invoke;
  v8[3] = &unk_2798B2260;
  v9 = a2;
  v8[4] = a3;
  v8[5] = v6;
  [a1 performOperationRequiringConnection:1 withOptions:5 operation:v8];
  return v6;
}

void sub_258BAD598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL _flagsToSetAndClearFromDictionary(uint64_t a1, void *a2, void *a3, void *a4)
{
  v55 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [MEMORY[0x277CBEB18] array];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v48 = a2;
  obj = [a2 allKeys];
  v9 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v9)
  {
    v10 = v9;
    v49 = v7;
    v37 = a3;
    v38 = a4;
    v11 = 0;
    v12 = 0;
    v13 = *v51;
    v14 = *MEMORY[0x277D283C8];
    v46 = *MEMORY[0x277D283C0];
    v45 = *MEMORY[0x277D283D8];
    v43 = *MEMORY[0x277D28300];
    v41 = *MEMORY[0x277D28308];
    v42 = *MEMORY[0x277D283D0];
    v15 = *MEMORY[0x277D28328];
    v39 = *MEMORY[0x277D28328];
    v40 = *MEMORY[0x277D28310];
    while (1)
    {
      v16 = 0;
      do
      {
        if (*v51 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v50 + 1) + 8 * v16);
        v18 = [v48 mf_BOOLForKey:v17];
        v19 = v8;
        if (v18)
        {
          v8 = v49;
        }

        if ([v17 isEqual:v14])
        {
          v20 = v18 == 0;
          if (v18)
          {
            v21 = v11;
          }

          else
          {
            v21 = v12;
          }

          v22 = v21 | 1;
LABEL_28:
          if (v20)
          {
            v12 = v22;
          }

          else
          {
            v11 = v22;
          }

          goto LABEL_31;
        }

        if ([v17 isEqual:v46])
        {
          v20 = v18 == 0;
          if (v18)
          {
            v23 = v11;
          }

          else
          {
            v23 = v12;
          }

          v22 = v23 | 2;
          goto LABEL_28;
        }

        if ([v17 isEqual:v45])
        {
          v20 = v18 == 0;
          if (v18)
          {
            v24 = v11;
          }

          else
          {
            v24 = v12;
          }

          v22 = v24 | 4;
          goto LABEL_28;
        }

        if ([v17 isEqual:v43])
        {
          v20 = v18 == 0;
          if (v18)
          {
            v25 = v11;
          }

          else
          {
            v25 = v12;
          }

          v22 = v25 | 0x10;
          goto LABEL_28;
        }

        if ([v17 isEqual:v42])
        {
          if ((*(a1 + 144) & 0x20) != 0)
          {
            [v8 addObject:@"Forwarded"];
          }

          if (*(a1 + 144) & 0x40) != 0 || (*(a1 + 144))
          {
            v26 = v8;
            v27 = @"$Forwarded";
LABEL_51:
            [v26 addObject:v27];
          }
        }

        else if ([v17 isEqualToString:v41])
        {
          if ((*(a1 + 144) & 2) != 0)
          {
            [v8 addObject:@"Junk"];
          }

          if (*(a1 + 144) & 4) != 0 || (*(a1 + 144))
          {
            v26 = v8;
            v27 = @"$Junk";
            goto LABEL_51;
          }
        }

        else if ([v17 isEqualToString:v40])
        {
          if ((*(a1 + 144) & 8) != 0)
          {
            [v8 addObject:@"NotJunk"];
          }

          if (*(a1 + 144) & 0x10) != 0 || (*(a1 + 144))
          {
            v26 = v8;
            v27 = @"$NotJunk";
            goto LABEL_51;
          }
        }

        else if (*(a1 + 144))
        {
          v28 = [v17 isEqual:v39];
          if (v18)
          {
            v29 = v11;
          }

          else
          {
            v29 = v12;
          }

          v30 = v29 | 0x200;
          if (v18)
          {
            v31 = v30;
          }

          else
          {
            v31 = v11;
          }

          if (v18)
          {
            v30 = v12;
          }

          if (v28)
          {
            v11 = v31;
            v12 = v30;
          }
        }

LABEL_31:
        v8 = v19;
        ++v16;
      }

      while (v10 != v16);
      v32 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
      v10 = v32;
      if (!v32)
      {
        v7 = v49;
        if ([v49 count])
        {
          a3 = v37;
          a4 = v38;
          goto LABEL_68;
        }

        a3 = v37;
        a4 = v38;
        if (v11)
        {
          v7 = MFCreateArrayForMessageFlags(v11, *(a1 + 144) & 1);
        }

        else
        {
          v7 = 0;
        }

LABEL_69:
        if ([v8 count])
        {
LABEL_70:
          [v8 addObjectsFromArray:{MFCreateArrayForMessageFlags(v12, *(a1 + 144) & 1)}];
        }

        else if (v12)
        {
          v8 = MFCreateArrayForMessageFlags(v12, *(a1 + 144) & 1);
        }

        else
        {
          v8 = 0;
        }

        v33 = v7 != 0;
        if (a3 && v7)
        {
          *a3 = v7;
        }

        v34 = v8 != 0;
        if (a4 && v8)
        {
          *a4 = v8;
          v34 = 1;
        }

        goto LABEL_84;
      }
    }
  }

  if ([v7 count])
  {
    v12 = 0;
    v11 = 0;
LABEL_68:
    [v7 addObjectsFromArray:{MFCreateArrayForMessageFlags(v11, *(a1 + 144) & 1)}];
    goto LABEL_69;
  }

  if ([v8 count])
  {
    v7 = 0;
    v12 = 0;
    goto LABEL_70;
  }

  v34 = 0;
  v33 = 0;
LABEL_84:
  v35 = *MEMORY[0x277D85DE8];
  return v33 || v34;
}

uint64_t _waitForDataFromDownload(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = [MEMORY[0x277D283F8] currentMonitor];
  [v8 setMailbox:{objc_msgSend(a1, "mailboxUid")}];
  v9 = [v8 expectedLength];
  [v8 percentDone];
  v11 = v10;
  [a4 enableThroughputMonitoring:1];
  if (([a2 isComplete] & 1) == 0)
  {
    v14 = 0;
    v16 = (fmax(v11, 0.0) * v9);
    while (1)
    {
      if (([v8 shouldCancel] & 1) != 0 || !objc_msgSend(a4, "isValid") || objc_msgSend(v8, "error"))
      {
        goto LABEL_2;
      }

      v15 = objc_alloc_init(MEMORY[0x277CCA8B0]);
      [*(a1 + 168) mf_lock];
      [*(a1 + 168) setChunkSize:{objc_msgSend(a4, "readBufferSize")}];
      *(a1 + 216) = a3;
      if (([*(a1 + 168) isFull] & 1) == 0)
      {
        [*(a1 + 160) addCommandsForDownload:a2 toPipeline:*(a1 + 168)];
        [*(a1 + 160) handleFetchResponses:{objc_msgSend(*(a1 + 168), "failureResponsesFromSendingCommandsWithConnection:", a4)}];
      }

      *(a1 + 216) = -1;
      [*(a1 + 168) mf_unlock];
      [*(a1 + 160) processResultsForUid:a3];
      if (v9)
      {
        break;
      }

LABEL_20:
      [v15 drain];
      if ([a2 isComplete])
      {
        goto LABEL_2;
      }
    }

    if ((v14 & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![a2 allowsPartialDownloads])
      {
        v14 = 0;
        goto LABEL_19;
      }

      if ([a2 partial])
      {
        v9 += [a2 expectedLength];
      }

      else
      {
        v9 = [a2 bytesFetched];
      }

      [v8 setExpectedLength:v9];
    }

    v14 = 1;
LABEL_19:
    [v8 setPercentDone:{((objc_msgSend(a2, "bytesFetched") + v16) / v9)}];
    goto LABEL_20;
  }

LABEL_2:
  [a4 enableThroughputMonitoring:0];
  v12 = [a2 isComplete];
  if (v12)
  {
    [*(a1 + 160) cleanUpDownloadsForUid:a3];
  }

  return v12;
}

void sub_258BAF554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void _compactMessageIfNoData(void *a1, void *a2, uint64_t a3)
{
  if ([a2 isComplete])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ![objc_msgSend(MEMORY[0x277D283F8] "currentMonitor")])
    {
      v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{a3, 0}];
      [objc_msgSend(a1 "library")];
    }
  }
}

void sub_258BAFB4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_258BAFE88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_258BB04DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258BB11E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_258BB2440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __remainingExpressionAfterTokenizingLinks_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 rangeValue];
  if (v5 > [a3 rangeValue])
  {
    return -1;
  }

  v7 = [a2 rangeValue];
  return v7 < [a3 rangeValue];
}

uint64_t needUTF8ForCriterion(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if ([a1 criterionType] == 24)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [a1 criteria];
    result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (result)
    {
      v4 = result;
      v5 = *v9;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          if (needUTF8ForCriterion(*(*(&v8 + 1) + 8 * i)))
          {
            result = 1;
            goto LABEL_13;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
        result = 0;
        if (v4)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    result = [objc_msgSend(a1 "expression")] == 0;
  }

LABEL_13:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __fetchArgumentsForCriterion_block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) includeRemoteBodyContent];
  v5 = [a2 dataUsingEncoding:1];
  v6 = [MEMORY[0x277CBEB18] array];
  objc_msgSend(v6, "addObject:", @"(OR FROM");
  if (v5)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", a2];
  }

  else
  {
    v7 = [a2 dataUsingEncoding:4];
  }

  [v6 addObject:v7];
  objc_msgSend(v6, "addObject:", @"(OR SUBJECT");
  if (v5)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", a2];
  }

  else
  {
    v8 = [a2 dataUsingEncoding:4];
  }

  [v6 addObject:v8];
  objc_msgSend(v6, "addObject:", @"(OR TO");
  if (v5)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", a2];
  }

  else
  {
    v9 = [a2 dataUsingEncoding:4];
  }

  [v6 addObject:v9];
  if (v4)
  {
    objc_msgSend(v6, "addObject:", @"(OR CC");
    if (v5)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", a2];
    }

    else
    {
      v10 = [a2 dataUsingEncoding:4];
    }

    [v6 addObject:v10];
    [v6 addObject:@"BODY"];
    if (v5)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", a2];
    }

    else
    {
      v12 = [a2 dataUsingEncoding:4];
    }

    [v6 addObject:v12];
    v13 = @"");
  }

  else
  {
    [v6 addObject:@"CC"];
    if (v5)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", a2];
    }

    else
    {
      v11 = [a2 dataUsingEncoding:4];
    }

    v13 = v11;
  }

  [v6 addObject:v13];
  result = [v6 addObject:@"])"));
  if (v6)
  {
    v15 = *(a1 + 40);

    return [v15 addObject:v6];
  }

  return result;
}

uint64_t __fetchArgumentsForCriterion_block_invoke_625()
{
  v5[4] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D283C0];
  v4[0] = *MEMORY[0x277D28300];
  v4[1] = v0;
  v5[0] = @"FLAGGED";
  v5[1] = @"DELETED";
  v1 = *MEMORY[0x277D283D8];
  v4[2] = *MEMORY[0x277D283C8];
  v4[3] = v1;
  v5[2] = @"SEEN";
  v5[3] = @"ANSWERED";
  result = [objc_msgSend(MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:{4), "copy"}];
  fetchArgumentsForCriterion_flagMap = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void ___uidSearchForMessageIds_block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *&v4 | 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = 0xFFFFFFFF00000001;
  }

  v6 = [a2 messageSetForRange:v5];
  [a2 noop];
  v7 = [*(a1 + 32) count];
  if (v7)
  {
    v8 = v7;
    v12 = 0;
    for (i = 0; i < v8; i += v10)
    {
      if (v8 >= i + 50)
      {
        v10 = i + 50;
      }

      else
      {
        v10 = v8;
      }

      if (v8 > i + 50)
      {
        if (v12)
        {
          [v12 removeAllObjects];
        }

        else
        {
          v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:50];
        }
      }

      v11 = [a2 searchUidSet:v6 forNewMessageIDs:*(a1 + 32)];
      if (v11)
      {
        [*(a1 + 40) addObjectsFromArray:v11];
      }
    }

    if (v12)
    {
    }
  }
}

void OUTLINED_FUNCTION_1_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t __RegisterYahooAuthSchemes_block_invoke()
{
  v0 = MEMORY[0x277D28408];
  v1 = objc_opt_class();

  return [v0 registerSchemeClass:v1];
}

void __getAKAnisetteProvisioningControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"Class getAKAnisetteProvisioningControllerClass(void)_block_invoke") description:{@"CastleIMAPAccount.m", 41, @"Unable to find class %s", "AKAnisetteProvisioningController"}];
  __break(1u);
}

void __getAKAnisetteProvisioningControllerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x277CCACA8] file:"stringWithUTF8String:" lineNumber:"void *AuthKitLibrary(void)") description:{@"CastleIMAPAccount.m", 40, @"%s", *a1}];
  __break(1u);
}

void _selectMailboxIfNeeded_cold_1(uint64_t a1, id *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  [objc_msgSend(*a2 "error")];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_3(&dword_258B7A000, v2, v3, "*** Error while selecting %@: %{public}@", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void fetchArgumentsForCriterion_cold_4(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = MFLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = a1;
    _os_log_impl(&dword_258B7A000, v2, OS_LOG_TYPE_DEFAULT, "#Warning need to handle criterion for IMAP search: %@", &v3, 0xCu);
  }

  __assert_rtn("fetchArgumentsForCriterion", "LibraryIMAPStore.m", 1716, "0 && Need to handle criterion for IMAP headers");
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x28210FEB8](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}