uint64_t ServerSocketPairOpen(int a1, int a2, int a3, int *a4, int a5, int *a6, int *a7)
{
  v18 = -1;
  v19 = a3;
  v17 = -1;
  v13 = ServerSocketOpenEx2(2, a1, a2, 0, 0, a3, &v19, a5, 0, &v18);
  v14 = ServerSocketOpenEx2(30, a1, a2, 0, 0, v19, &v19, a5, 0, &v17);
  if (v13 && v14)
  {
    if ((v18 & 0x80000000) == 0 && close(v18) && *__error())
    {
      __error();
    }

    if ((v17 & 0x80000000) == 0 && close(v17) && *__error())
    {
      __error();
    }
  }

  else
  {
    if (a4)
    {
      *a4 = v19;
    }

    v13 = 0;
    v15 = v17;
    *a6 = v18;
    *a7 = v15;
  }

  return v13;
}

void CUXPCEncodeNSError(void *a1, void *a2, const char *a3, const char *a4, const char *a5, const char *a6, const char *a7)
{
  if (a1)
  {
    v13 = a2;
    v14 = _CUXPCEncodeNSError(a1, a4, a5, a6, a7, 1u);
    xpc_dictionary_set_value(v13, a3, v14);
  }
}

id _CUXPCEncodeNSError(void *a1, const char *a2, const char *a3, const char *a4, const char *a5, unsigned int a6)
{
  v10 = a1;
  v11 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v11, a2, [v10 code]);
  v12 = [v10 domain];
  v13 = v12;
  if (v12)
  {
    if (([v12 isEqual:*MEMORY[0x1E696A768]] & 1) == 0)
    {
      v14 = [v13 UTF8String];
      if (v14)
      {
        xpc_dictionary_set_string(v11, a3, v14);
      }
    }
  }

  v15 = [v10 userInfo];
  TypeID = CFStringGetTypeID();
  v17 = CFDictionaryGetTypedValue(v15, @"cuErrorMsg", TypeID, 0);
  if ([v17 length])
  {
    v18 = [v17 UTF8String];
    if (v18)
    {
      xpc_dictionary_set_string(v11, a4, v18);
    }
  }

  if (a6 <= 3)
  {
    v19 = *MEMORY[0x1E696AA08];
    v20 = CFErrorGetTypeID();
    v21 = CFDictionaryGetTypedValue(v15, v19, v20, 0);
    v22 = v21;
    if (v21)
    {
      v23 = _CUXPCEncodeNSError(v21, a2, a3, a4, a5, a6 + 1);
      if (v23)
      {
        xpc_dictionary_set_value(v11, a5, v23);
      }
    }
  }

  return v11;
}

uint64_t _CUXPCDecodeNSError(void *a1, const char *a2, const char *a3, const char *a4, const char *a5, unsigned int a6, int a7, void *a8, void *a9)
{
  v15 = a1;
  int64 = xpc_dictionary_get_int64(v15, a2);
  if (!int64)
  {
    v17 = xpc_dictionary_get_value(v15, a2);
    v23 = v17;
    if (v17)
    {
      if (MEMORY[0x193B07A70](v17) == MEMORY[0x1E69E9EB0])
      {

        goto LABEL_5;
      }

      if (a9)
      {
        v49 = *MEMORY[0x1E696A768];
        v50 = "XPC non-integer error code type";
        v51 = 4294960540;
        goto LABEL_30;
      }
    }

    else
    {
      if (!a7)
      {
        v31 = 1;
        goto LABEL_38;
      }

      if (a9)
      {
        v49 = *MEMORY[0x1E696A768];
        v50 = "XPC error object missing error code";
        v51 = 4294960569;
LABEL_30:
        NSErrorF_safe(v49, v51, v50, v18, v19, v20, v21, v22, v52);
        *a9 = v31 = 0;
LABEL_38:

        goto LABEL_26;
      }
    }

    v31 = 0;
    goto LABEL_38;
  }

LABEL_5:
  string = xpc_dictionary_get_string(v15, a3);
  if (!string)
  {
    v30 = *MEMORY[0x1E696A768];
LABEL_10:
    v32 = xpc_dictionary_get_string(v15, a4);
    if (v32)
    {
      v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v32];
      if (!v33)
      {
        if (a9)
        {
          NSErrorF_safe(*MEMORY[0x1E696A768], 4294960554, "XPC error message bad-UTF-8", v34, v35, v36, v37, v38, v52);
          *a9 = v31 = 0;
        }

        else
        {
          v31 = 0;
        }

        goto LABEL_25;
      }

      v39 = v33;
      v40 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v40 setObject:v39 forKeyedSubscript:@"cuErrorMsg"];
    }

    else
    {
      v40 = 0;
    }

    v41 = xpc_dictionary_get_value(v15, a5);
    v42 = v41;
    if (v41)
    {
      v43 = MEMORY[0x193B07A70](v41);
      if (a6 <= 3 && v43 == MEMORY[0x1E69E9E80])
      {
        v54 = 0;
        v44 = _CUXPCDecodeNSError(v42, a2, a3, a4, a5, a6 + 1, 1, &v54, a9);
        v45 = v54;
        if (!v44)
        {
          v31 = 0;
LABEL_24:

LABEL_25:
          goto LABEL_26;
        }

        if (!v40)
        {
          v40 = objc_alloc_init(MEMORY[0x1E695DF90]);
        }

        [v40 setObject:v45 forKeyedSubscript:*MEMORY[0x1E696AA08]];
      }
    }

    v46 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:v30 code:int64 userInfo:v40];
    v45 = v46;
    if (a8)
    {
      v47 = v46;
      *a8 = v45;
    }

    v31 = 1;
    goto LABEL_24;
  }

  v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string];
  if (v30)
  {
    goto LABEL_10;
  }

  if (a9)
  {
    NSErrorF_safe(*MEMORY[0x1E696A768], 4294960554, "XPC error domain bad-UTF-8", v25, v26, v27, v28, v29, v52);
    *a9 = v31 = 0;
  }

  else
  {
    v31 = 0;
  }

LABEL_26:

  return v31;
}

uint64_t HTTPClientGetSelfAddress(uint64_t a1, sockaddr *a2, socklen_t a3, void *a4)
{
  v6 = a3;
  if (getsockname(*(a1 + 200), a2, &v6))
  {
    if (!*__error())
    {
      return 4294960596;
    }

    result = *__error();
    if (result)
    {
      return result;
    }
  }

  result = 0;
  if (a4)
  {
    *a4 = v6;
  }

  return result;
}

void _BonjourBrowser_PostEvent(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  MutableCopy = a3;
  v28 = *MEMORY[0x1E69E9840];
  if (*(a1 + 176) || *(a1 + 192))
  {
    v25 = 0;
    if (!a3)
    {
      v13 = 0;
      goto LABEL_14;
    }

    v8 = _BonjourDevice_CreateDictionary(a3, &v25);
    if (v8)
    {
      v13 = v8;
      v14 = *(MutableCopy + 10);
      if (v14)
      {
        CFRelease(v14);
      }

      *(MutableCopy + 10) = v13;
      if (a4)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v13);
        if (!MutableCopy)
        {
          goto LABEL_28;
        }

        Dictionary = _BonjourService_CreateDictionary(a4, &v25);
        if (!Dictionary)
        {
          goto LABEL_25;
        }

        v16 = Dictionary;
        values[0] = Dictionary;
        v17 = CFArrayCreate(0, values, 1, MEMORY[0x1E695E9C0]);
        CFRelease(v16);
        if (!v17)
        {
          goto LABEL_28;
        }

        CFDictionarySetValue(MutableCopy, @"removedServices", v17);
        CFRelease(v17);
        v13 = MutableCopy;
      }

      else
      {
        MutableCopy = 0;
      }

LABEL_14:
      v18 = *(a1 + 192);
      if (v18)
      {
        v19 = _Block_copy(v18);
        if (!v19)
        {
          v24 = -6700;
          goto LABEL_24;
        }

        v20 = v19;
        if (v13)
        {
          CFRetain(v13);
        }

        v21 = *(a1 + 168);
        values[0] = MEMORY[0x1E69E9820];
        values[1] = 3221225472;
        values[2] = ___BonjourBrowser_PostEventEx_block_invoke;
        values[3] = &unk_1E73A27D8;
        v27 = a2;
        values[4] = v20;
        values[5] = v13;
        dispatch_async(v21, values);
        goto LABEL_23;
      }

      v22 = malloc_type_calloc(1uLL, 0x20uLL, 0x10E0040718843B5uLL);
      if (v22)
      {
        v23 = v22;
        *(v22 + 4) = a2;
        *v22 = *(a1 + 176);
        *(v22 + 3) = v13;
        if (v13)
        {
          CFRetain(v13);
        }

        dispatch_async_f(*(a1 + 168), v23, _BonjourBrowser_PostEventOnEventQueue);
LABEL_23:
        v24 = 0;
LABEL_24:
        v25 = v24;
LABEL_25:
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        return;
      }

LABEL_28:
      v24 = -6728;
      goto LABEL_24;
    }

    if (gLogCategory_BonjourBrowser <= 90 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x5Au)))
    {
      LogPrintF(&gLogCategory_BonjourBrowser, "OSStatus _BonjourBrowser_PostEvent(BonjourBrowserRef, BonjourBrowserEventType, BonjourDeviceRef, BonjourServiceRef)", 0x5Au, "### CreateDictionary failed: %#m", v9, v10, v11, v12, v25);
    }
  }
}

uint64_t CFDictionarySetCString(__CFDictionary *a1, const void *a2, const char *a3, CFIndex numBytes)
{
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = "";
  }

  if (numBytes == -1)
  {
    v7 = CFStringCreateWithCString(0, v6, 0x8000100u);
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = CFStringCreateWithBytes(0, v6, numBytes, 0x8000100u, 0);
    if (v7)
    {
LABEL_6:
      v8 = v7;
      CFDictionarySetValue(a1, a2, v7);
      CFRelease(v8);
      return 0;
    }
  }

  return 4294960596;
}

uint64_t DNSServiceConstructFullNameEx(uint64_t a1, unsigned __int8 *a2, char *__s, unsigned __int8 *a4)
{
  if (!__s)
  {
    return 4294960591;
  }

  v8 = strlen(__s);
  v9 = DomainEndsInDot(__s);
  result = 4294960591;
  if (a4)
  {
    v11 = v8 - v9;
    if (v11 >= 6)
    {
      if (*a4)
      {
        v12 = &__s[v11 - 4];
        if (strncasecmp(v12, "_tcp", 4uLL) && strncasecmp(v12, "_udp", 4uLL))
        {
          return 4294960591;
        }

        if (a2)
        {
          v13 = *a2;
          if (*a2)
          {
            v14 = 0;
            v15 = a2 + 1;
            v16 = a1;
            while (1)
            {
              if (v13 < 0x21u)
              {
LABEL_13:
                if (v14 > 1000)
                {
                  goto LABEL_42;
                }

                *v16 = 12380;
                v17 = v14 + 3;
                *(v16 + 2) = (v13 / 0xAu) | 0x30;
                v13 = (v13 % 0xAu) | 0x30;
                goto LABEL_25;
              }

              if (v13 > 0x39u)
              {
                if (v13 != 92)
                {
                  if (v13 == 58)
                  {
                    goto LABEL_13;
                  }

LABEL_21:
                  if (v14 >= 1004)
                  {
                    goto LABEL_42;
                  }

                  v17 = v14;
                  goto LABEL_25;
                }
              }

              else
              {
                if (v13 == 37)
                {
                  goto LABEL_13;
                }

                if (v13 != 46)
                {
                  goto LABEL_21;
                }
              }

              if (v14 > 1002)
              {
LABEL_42:
                v20 = (a1 + v14);
                goto LABEL_43;
              }

              v17 = v14 + 1;
              *v16 = 92;
LABEL_25:
              v14 = v17 + 1;
              *(a1 + v17) = v13;
              v18 = *v15++;
              v13 = v18;
              v16 = a1 + v17 + 1;
              if (!v18)
              {
                v19 = v17 + 2;
                *v16 = 46;
                goto LABEL_28;
              }
            }
          }
        }

        v19 = 0;
LABEL_28:
        v20 = (a1 + v19);
        v21 = *__s;
        if (*__s)
        {
          v22 = 1004;
          if (v19 > 1004)
          {
            v22 = v19;
          }

          v23 = __s + 1;
          while (v22 != v19)
          {
            ++v19;
            *v20++ = v21;
            v24 = *v23++;
            v21 = v24;
            if (!v24)
            {
              goto LABEL_34;
            }
          }
        }

        else
        {
LABEL_34:
          if (!DomainEndsInDot(__s))
          {
            if (v19 > 1003)
            {
              goto LABEL_43;
            }

            *v20++ = 46;
          }

          v25 = a1 + 1005;
          v26 = *a4;
          if (!*a4)
          {
            v28 = v20;
LABEL_45:
            if (DomainEndsInDot(a4))
            {
              result = 0;
            }

            else
            {
              v20 = v28 + 1;
              if ((v28 + 1) < v25)
              {
                result = 0;
                *v28 = 46;
                goto LABEL_51;
              }

              result = 4294960591;
            }

            v20 = v28;
            goto LABEL_51;
          }

          v27 = a4 + 1;
          while (1)
          {
            v28 = v20 + 1;
            if ((v20 + 1) >= v25)
            {
              break;
            }

            *v20 = v26;
            v29 = *v27++;
            v26 = v29;
            ++v20;
            if (!v29)
            {
              goto LABEL_45;
            }
          }
        }

LABEL_43:
        result = 4294960591;
LABEL_51:
        *v20 = 0;
      }
    }
  }

  return result;
}

BOOL DomainEndsInDot(unsigned __int8 *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  while (1)
  {
    v2 = a1[1];
    if (!a1[1])
    {
      break;
    }

    if (v1 == 92)
    {
      if ((v2 - 48) > 9 || a1[2] - 48 > 9 || a1[3] - 48 >= 0xA)
      {
        v3 = 2;
      }

      else
      {
        v3 = 4;
      }

      a1 += v3;
      v1 = *a1;
      if (!*a1)
      {
        return v1 == 46;
      }
    }

    else
    {
      v1 = *++a1;
      if (!v2)
      {
        return v1 == 46;
      }
    }
  }

  return v1 == 46;
}

void __NSDecodeNSDictionaryOfClassesIfPresent_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v7 = a3;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"bad key element type for key %@ : %@", *(a1 + 32), v8}];
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"bad value element type for key %@ : %@ -> %@", *(a1 + 32), v8, v7}];
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void _BonjourBrowser_BrowseHandler(int a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, char *a5, const char *a6, const char *a7, uint64_t a8, uint64_t a9)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (a4 == -65563)
    {
      if (gLogCategory_BonjourBrowser <= 60 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x3Cu)))
      {
        LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_BrowseHandler(DNSServiceRef, DNSServiceFlags, uint32_t, DNSServiceErrorType, const char *, const char *, const char *, void *)", 0x3Cu, "### Browser for %s server crashed\n", a5, a6, a7, a8, *(a8 + 136));
      }

      _BonjourBrowser_HandleError(a8, -65563, a3, a4, a5, a6, a7, a8, a9);
    }

    else if (gLogCategory_BonjourBrowser <= 60 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x3Cu)))
    {
      LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_BrowseHandler(DNSServiceRef, DNSServiceFlags, uint32_t, DNSServiceErrorType, const char *, const char *, const char *, void *)", 0x3Cu, "### Browser for %s browse error: %#m\n", a5, a6, a7, a8, *(a8 + 136));
    }

    return;
  }

  if (*(a8 + 104))
  {
    v13 = a3;
    v14 = a2;
    if (gLogCategory_BonjourBrowser <= 20 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x14u)))
    {
      v15 = "Add";
      if (((v14 >> 1) & 1) == 0)
      {
        v15 = "Rmv";
      }

      LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_BrowseHandler(DNSServiceRef, DNSServiceFlags, uint32_t, DNSServiceErrorType, const char *, const char *, const char *, void *)", 0x14u, "Bonjour PTR %s %s.%s%s on %u\n", a5, a6, a7, a8, v15);
    }

    cStr[0] = 0;
    v31 = 0;
    if ((v14 & 2) != 0 && (*(a8 + 166) & 0x7B) != 0)
    {
      if_indextoname(v13, cStr);
      SocketGetInterfaceInfo(-1, cStr, 0, 0, 0, 0, 0, 0, 0, &v31);
      v20 = *(a8 + 160);
      if ((v20 & 0x8000000000000) != 0 && (v31 & 3) != 0 || (v20 & 0x20000000000000) != 0 && v31 == 2 || (v20 & 0x10000000000000) != 0 && v31 == 4 || (v20 & 0x40000000000000) != 0 && v31 == 8 || (v20 & 0x1000000000000) != 0 && v31 == 16)
      {
LABEL_34:
        if (gLogCategory_BonjourBrowser <= 20 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x14u)))
        {
          LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_BrowseHandler(DNSServiceRef, DNSServiceFlags, uint32_t, DNSServiceErrorType, const char *, const char *, const char *, void *)", 0x14u, "Ignoring interface: Nm '%s', ST '%s', IFI %u (%s), %#ll{flags}\n", v16, v17, v18, v19, a5);
        }

        return;
      }

      if ((v20 & 0x2000000000000) != 0)
      {
        v21 = CFStringCreateWithCString(0, cStr, 0x8000100u);
        if (v21)
        {
          v22 = v21;
          v23 = _SCNetworkInterfaceCreateWithBSDName();
          if (v23)
          {
            v24 = v23;
            IsThunderbolt = _SCNetworkInterfaceIsThunderbolt();
            CFRelease(v24);
            CFRelease(v22);
            if (IsThunderbolt)
            {
              goto LABEL_34;
            }
          }

          else
          {
            CFRelease(v22);
          }
        }
      }
    }

    v27 = a8 + 88;
    v26 = *(a8 + 88);
    if (!v26)
    {
LABEL_51:
      v32 = 0;
      if ((v14 & 2) == 0 || _BonjourService_Create(a8, a5, a6, a7, v13, cStr, v31, &v32))
      {
        return;
      }

      v29 = v32;
      if (!_BonjourService_StartTXTQuery(v32))
      {
        *v27 = v29;
        return;
      }

      v30 = v29;
LABEL_55:
      _BonjourService_Free(v30);
      return;
    }

    while (1)
    {
      v28 = v27;
      v27 = v26;
      if (*(v26 + 48) == v13 && !strcasecmp(*(v26 + 24), a5) && !strcasecmp(*(v27 + 32), a6) && !strcasecmp(*(v27 + 40), a7))
      {
        break;
      }

      v26 = *v27;
      if (!*v27)
      {
        goto LABEL_51;
      }
    }

    if ((v14 & 2) == 0)
    {
      *v28 = *v27;
      _BonjourBrowser_RemoveService(a8, v27, 1);
      v30 = v27;
      goto LABEL_55;
    }
  }

  else if (gLogCategory_BonjourBrowser <= 60 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x3Cu)))
  {

    LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_BrowseHandler(DNSServiceRef, DNSServiceFlags, uint32_t, DNSServiceErrorType, const char *, const char *, const char *, void *)", 0x3Cu, "### Browse response after stop\n", a5, a6, a7, a8, a9);
  }
}

uint64_t _BonjourService_Create(uint64_t a1, const char *a2, const char *a3, const char *a4, unsigned int a5, _BYTE *a6, int a7, uint64_t *a8)
{
  v9 = a7;
  v22 = a7;
  v16 = malloc_type_calloc(1uLL, 0x70uLL, 0x10B0040FB0F965DuLL);
  if (!v16)
  {
    return 4294960568;
  }

  v17 = v16;
  v16[2] = a1;
  v18 = strdup(a2);
  *(v17 + 24) = v18;
  if (v18)
  {
    v19 = strdup(a3);
    *(v17 + 32) = v19;
    if (v19)
    {
      v20 = strdup(a4);
      *(v17 + 40) = v20;
      if (v20)
      {
        *(v17 + 48) = a5;
        if (a6 && *a6)
        {
          __strlcpy_chk();
          if (v9)
          {
            goto LABEL_11;
          }
        }

        else
        {
          if_indextoname(a5, (v17 + 52));
          if (v9)
          {
            goto LABEL_11;
          }
        }

        SocketGetInterfaceInfo(-1, (v17 + 52), 0, 0, 0, 0, 0, 0, 0, &v22);
        v9 = v22;
LABEL_11:
        *(v17 + 84) = v9;
        if (v9 > 63)
        {
          if (v9 != 128 && v9 != 64)
          {
            goto LABEL_19;
          }
        }

        else
        {
          if (v9 == 2)
          {
LABEL_18:
            *(v17 + 70) = 1;
LABEL_19:
            result = 0;
            *a8 = v17;
            return result;
          }

          if (v9 != 4)
          {
            goto LABEL_19;
          }
        }

        *(v17 + 69) = 1;
        goto LABEL_18;
      }
    }
  }

  _BonjourService_Free(v17);
  return 4294901757;
}

uint64_t _BonjourService_StartTXTQuery(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  result = DNSServiceConstructFullName(fullName, *(a1 + 24), *(a1 + 32), *(a1 + 40));
  if (!result)
  {
    sdRef = *(*(a1 + 16) + 24);
    result = DNSServiceQueryRecord(&sdRef, 0x404000u, *(a1 + 48), fullName, 0x10u, 1u, _BonjourService_TXTHandler, a1);
    if (!result)
    {
      *(a1 + 88) = sdRef;
    }
  }

  return result;
}

void _BonjourBrowser_IgnoredBrowseHandler(int a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, char *a5, const char *a6, const char *a7, uint64_t a8, uint64_t a9)
{
  if ((~*(a8 + 160) & 0x3000000000000000) == 0)
  {
    v16 = *(a8 + 128);
    if (!v16)
    {
      v16 = if_nametoindex("awdl0");
      *(a8 + 128) = v16;
    }

    if (a3 && v16 == a3)
    {

      _BonjourBrowser_BrowseHandler(v16, a2, a3, a4, a5, a6, a7, a8, a9);
    }
  }
}

void _BonjourService_TXTHandler(int a1, unsigned __int8 a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t __n, void *__s1, uint64_t a10, void *a11)
{
  v32 = *MEMORY[0x1E69E9840];
  v11 = a11[2];
  if (a4)
  {
    if (gLogCategory_BonjourBrowser <= 60 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x3Cu)))
    {
      LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourService_TXTHandler(DNSServiceRef, DNSServiceFlags, uint32_t, DNSServiceErrorType, const char *, uint16_t, uint16_t, uint16_t, const void *, uint32_t, void *)", 0x3Cu, "### Browser for %s TXT error: %#m\n", a5, a6, a7, __n, *(v11 + 136));
    }
  }

  else
  {
    if (*(v11 + 104))
    {
      v12 = __n;
      v13 = a2;
      if (gLogCategory_BonjourBrowser <= 20 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x14u)))
      {
        v14 = "Add";
        if (((v13 >> 1) & 1) == 0)
        {
          v14 = "Rmv";
        }

        LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourService_TXTHandler(DNSServiceRef, DNSServiceFlags, uint32_t, DNSServiceErrorType, const char *, uint16_t, uint16_t, uint16_t, const void *, uint32_t, void *)", 0x14u, "Bonjour TXT %s %s on %u\n", a5, a6, a7, __n, v14);
      }

      v15 = v12;
      v16 = (a11 + 12);
      v17 = a11[12];
      if ((v13 & 2) == 0)
      {
        if (v17)
        {
          v18 = a11 + 12;
          while (1)
          {
            v19 = v17;
            if (v17[1] == v12 && !memcmp(__s1, v17 + 2, v12))
            {
              break;
            }

            v17 = *v17;
            v18 = v19;
            if (!*v19)
            {
              goto LABEL_15;
            }
          }

          *v18 = *v17;
          free(v17);
        }

        else
        {
LABEL_15:
          if (gLogCategory_BonjourBrowser <= 40 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x28u)))
          {
            LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourService_RemoveRData(BonjourServiceRef, const void *, size_t)", 0x28u, "Removed RData missing for %s.%s%s %%%u\n%1.1H\n", a5, a6, a7, __n, a11[3]);
          }
        }

        goto LABEL_25;
      }

      if (!v17)
      {
        goto LABEL_42;
      }

      v20 = gLogCategory_BonjourIssues;
      if (gLogCategory_BonjourIssues > 40)
      {
LABEL_39:
        while (v17[1] != v12 || memcmp(__s1, v17 + 2, v12))
        {
          v17 = *v17;
          if (!v17)
          {
            goto LABEL_42;
          }
        }

        goto LABEL_25;
      }

      if (gLogCategory_BonjourIssues != -1)
      {
        goto LABEL_75;
      }

      if (!_LogCategory_Initialize(&gLogCategory_BonjourIssues, 0x28u))
      {
        goto LABEL_38;
      }

      v20 = gLogCategory_BonjourIssues;
      if (gLogCategory_BonjourIssues <= 40)
      {
LABEL_75:
        if (v20 != -1 || _LogCategory_Initialize(&gLogCategory_BonjourIssues, 0x28u))
        {
          LogPrintF(&gLogCategory_BonjourIssues, "OSStatus _BonjourService_AddRData(BonjourServiceRef, const void *, size_t)", 0x28u, "Add without remove new:   %s.%s%s%%%u: %#{txt}\n", a5, a6, a7, __n, a11[3]);
        }
      }

      v21 = *v16;
      if (!*v16)
      {
        goto LABEL_42;
      }

      v22 = 1;
      do
      {
        if (gLogCategory_BonjourIssues <= 40 && (gLogCategory_BonjourIssues != -1 || _LogCategory_Initialize(&gLogCategory_BonjourIssues, 0x28u)))
        {
          LogPrintF(&gLogCategory_BonjourIssues, "OSStatus _BonjourService_AddRData(BonjourServiceRef, const void *, size_t)", 0x28u, "Add without remove old %d: %s.%s%s%%%u: %#{txt}\n", a5, a6, a7, __n, v22);
        }

        v22 = (v22 + 1);
        v21 = *v21;
      }

      while (v21);
LABEL_38:
      v17 = *v16;
      if (*v16)
      {
        goto LABEL_39;
      }

LABEL_42:
      v23 = malloc_type_calloc(1uLL, v12 + 16, 0x1020040545B2139uLL);
      if (v23)
      {
        v24 = v23;
        *v23 = *v16;
        v23[1] = v15;
        memcpy(v23 + 2, __s1, v15);
        *v16 = v24;
        goto LABEL_44;
      }

LABEL_25:
      if (!*v16)
      {
        return;
      }

LABEL_44:
      if (_BonjourService_GetDeviceID(a11, v31))
      {
        return;
      }

      v25 = a11[13];
      if (v25)
      {
        if (!strcasecmp((v25 + 16), v31))
        {
LABEL_59:
          _BonjourDevice_UpdateTXTQueries(v25);
          _BonjourBrowser_PostEvent(v11, 1, v25, 0);
          return;
        }

        if (gLogCategory_BonjourIssues <= 40 && (gLogCategory_BonjourIssues != -1 || _LogCategory_Initialize(&gLogCategory_BonjourIssues, 0x28u)))
        {
          LogPrintF(&gLogCategory_BonjourIssues, "void _BonjourService_TXTHandler(DNSServiceRef, DNSServiceFlags, uint32_t, DNSServiceErrorType, const char *, uint16_t, uint16_t, uint16_t, const void *, uint32_t, void *)", 0x28u, "Removing and re-adding %s.%s%s for TXT device ID update (%s -> %s)\n", v26, v27, v28, v29, a11[3]);
        }

        _BonjourBrowser_RemoveService(v11, a11, 1);
        a11[13] = 0;
      }

      v25 = v11 + 96;
      while (1)
      {
        v25 = *v25;
        if (!v25)
        {
          break;
        }

        if (!strcasecmp((v25 + 16), v31))
        {
          goto LABEL_58;
        }
      }

      v30 = malloc_type_calloc(1uLL, 0x68uLL, 0x1060040FDB03D26uLL);
      if (!v30)
      {
        return;
      }

      v25 = v30;
      v30[24] = -1;
      *(v30 + 1) = v11;
      __strlcpy_chk();
      *v25 = *(v11 + 96);
      *(v11 + 96) = v25;
LABEL_58:
      a11[13] = v25;
      a11[1] = *(v25 + 88);
      *(v25 + 88) = a11;
      goto LABEL_59;
    }

    if (gLogCategory_BonjourBrowser <= 60 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x3Cu)))
    {

      LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourService_TXTHandler(DNSServiceRef, DNSServiceFlags, uint32_t, DNSServiceErrorType, const char *, uint16_t, uint16_t, uint16_t, const void *, uint32_t, void *)", 0x3Cu, "### TXT response after stop\n", a5, a6, a7, __n, __s1);
    }
  }
}

void _BonjourBrowser_PostEventOnEventQueue(void *a1)
{
  (*a1)(*(a1 + 4), a1[3], a1[1]);
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

void _BonjourDevice_UpdateTXTQueries(uint64_t a1)
{
  v2 = *(a1 + 88);
  BestService = _BonjourDevice_GetBestService(v2);
  if (BestService)
  {
    v4 = BestService;
    if ((*(a1 + 96) & 0x80000000) != 0)
    {
      v5 = *(BestService + 96);
      if (v5)
      {
        v6 = 0;
        if (!strcasecmp(*(BestService + 32), "_raop._tcp."))
        {
          if ((valueLen = 0, v16 = 0, v8 = *(v5 + 8), (ValuePtr = TXTRecordGetValuePtr(v8, (v5 + 16), "ft", &valueLen)) != 0) && SNScanF(ValuePtr, valueLen, "%llx", v10, v11, v12, v13, v14, &v16) == 1 && (v16 & 0x40000000) != 0 || (v15 = TXTRecordGetValuePtr(v8, (v5 + 16), "am", &valueLen)) != 0 && !strnicmp_prefix(v15, valueLen, "AppleTV"))
          {
            v6 = 1;
          }
        }

        *(a1 + 96) = v6;
        v2 = *(a1 + 88);
      }
    }

    for (; v2; v2 = *(v2 + 8))
    {
      if (v2 != v4 || *(a1 + 96) >= 1)
      {
        v7 = *(v2 + 88);
        if (v7)
        {
          DNSServiceRefDeallocate(v7);
          *(v2 + 88) = 0;
        }
      }
    }

    if (!*(v4 + 80) && *(a1 + 96) <= 0 && !*(v4 + 88))
    {
      _BonjourService_StartTXTQuery(v4);
    }
  }
}

__CFDictionary *_BonjourDevice_CreateDictionary(uint64_t a1, _DWORD *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v38 = 0;
  BestService = _BonjourDevice_GetBestService(*(a1 + 88));
  if (!BestService || (v5 = BestService, (v6 = *(BestService + 96)) == 0))
  {
    v14 = *(a1 + 80);
    if (!v14)
    {
      Mutable = 0;
      v34 = -6745;
      goto LABEL_49;
    }

    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v14);
    Mutable = MutableCopy;
    if (MutableCopy)
    {
      CFDictionaryRemoveValue(MutableCopy, @"services");
      goto LABEL_35;
    }

LABEL_47:
    v34 = -6728;
LABEL_49:
    v38 = v34;
    goto LABEL_36;
  }

  v7 = *(v6 + 8);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    goto LABEL_47;
  }

  v9 = *(v5 + 32);
  if (!strcasecmp(v9, "_raop._tcp.") || !strcasecmp(v9, "_airplay-p2p._tcp."))
  {
    v11 = *(v5 + 24);
    v16 = strchr(v11, 64);
    if (v16)
    {
      v11 = v16 + 1;
    }
  }

  else
  {
    v10 = strcasecmp(v9, "_airplay._tcp.");
    v11 = *(v5 + 24);
    if (!v10)
    {
      v12 = strchr(*(v5 + 24), 64);
      if (v12)
      {
        v13 = v12;
        if (TextToHardwareAddress(v11, (v12 - v11), 6, __s))
        {
          v11 = *(v5 + 24);
        }

        else
        {
          v11 = v13 + 1;
        }
      }
    }
  }

  v17 = strlen(v11);
  CFDictionarySetCString(Mutable, @"name", v11, v17);
  CFDictionarySetCString(Mutable, @"deviceID", (a1 + 16), -1);
  v38 = DNSServiceConstructFullNameEx(__s, *(v5 + 24), *(v5 + 32), *(v5 + 40));
  if (!v38)
  {
    v18 = strlen(__s);
    snprintf(&__s[v18], 1073 - v18, "%%%u", *(v5 + 48));
    CFDictionarySetCString(Mutable, @"dnsName", __s, -1);
  }

  Current = CFAbsoluteTimeGetCurrent();
  CFDictionarySetDouble(Mutable, @"lastSeen", Current);
  CFDictionarySetCString(Mutable, @"serviceType", *(v5 + 32), -1);
  if (strcasecmp(*(v5 + 32), "_airport._tcp."))
  {
    CFDictionarySetData(Mutable, @"txt", (v6 + 16), v7);
LABEL_24:
    v24 = *(a1 + 88);
    if (v24)
    {
      v25 = 0;
      v26 = 0;
      v27 = 1;
      v28 = MEMORY[0x1E695E9C0];
      do
      {
        if (!*(v24 + 69))
        {
          v27 = 0;
        }

        v29 = *(v24 + 84);
        if (!v26)
        {
          v26 = CFArrayCreateMutable(0, 0, v28);
          if (!v26)
          {
            v33 = -6728;
            goto LABEL_45;
          }
        }

        v30 = _BonjourService_CreateDictionary(v24, &v38);
        if (!v30)
        {
          CFRelease(v26);
          goto LABEL_46;
        }

        v31 = v30;
        v25 |= v29;
        CFArrayAppendValue(v26, v30);
        CFRelease(v31);
        v24 = *(v24 + 8);
      }

      while (v24);
      CFDictionarySetValue(Mutable, @"services", v26);
      CFRelease(v26);
      if (v27)
      {
        goto LABEL_40;
      }

      if (!v25)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v25 = 0;
LABEL_40:
      CFDictionarySetValue(Mutable, @"p2pOnly", *MEMORY[0x1E695E4D0]);
      if (!v25)
      {
        goto LABEL_35;
      }
    }

    CFDictionarySetInt64(Mutable, @"TrTy", v25);
LABEL_35:
    v38 = 0;
    goto LABEL_36;
  }

  txtRecord = 0uLL;
  *valueSize = 0;
  v36 = 0;
  if (v7)
  {
    TXTRecordCreate(&txtRecord, 0x100u, buffer);
    v20 = (v6 + 17);
    v37 = (v6 + 17);
    v21 = v6 + 17 + v7 - 1;
    while (!ParseCommaSeparatedNameValuePair(v20, v21, key, 7, &v36, value, valueSize, &v37))
    {
      key[v36] = 0;
      TXTRecordSetValue(&txtRecord, key, valueSize[0], value);
      v20 = v37;
    }

    BytesPtr = TXTRecordGetBytesPtr(&txtRecord);
    Length = TXTRecordGetLength(&txtRecord);
    CFDictionarySetData(Mutable, @"txt", BytesPtr, Length);
    TXTRecordDeallocate(&txtRecord);
    goto LABEL_24;
  }

  v33 = -6743;
LABEL_45:
  v38 = v33;
LABEL_46:
  CFRelease(Mutable);
  Mutable = 0;
LABEL_36:
  if (a2)
  {
    *a2 = v38;
  }

  return Mutable;
}

__CFDictionary *_BonjourService_CreateDictionary(uint64_t a1, int *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v8 = -6728;
    if (!a2)
    {
      return Mutable;
    }

    goto LABEL_11;
  }

  if (!DNSServiceConstructFullNameEx(__s, *(a1 + 24), *(a1 + 32), *(a1 + 40)))
  {
    v5 = strlen(__s);
    snprintf(&__s[v5], 1073 - v5, "%%%u", *(a1 + 48));
    CFDictionarySetCString(Mutable, @"dnsName", __s, -1);
  }

  CFDictionarySetCString(Mutable, @"domain", *(a1 + 40), -1);
  CFDictionarySetInt64(Mutable, @"ifindex", *(a1 + 48));
  CFDictionarySetCString(Mutable, @"ifname", (a1 + 52), -1);
  v6 = *(a1 + 72);
  if (v6)
  {
    CFDictionarySetValue(Mutable, @"nanEP", v6);
  }

  v7 = MEMORY[0x1E695E4D0];
  if (*(a1 + 69))
  {
    CFDictionarySetValue(Mutable, @"p2p", *MEMORY[0x1E695E4D0]);
  }

  CFDictionarySetCString(Mutable, @"rawName", *(a1 + 24), -1);
  CFDictionarySetInt64(Mutable, @"transportType", *(a1 + 84));
  v8 = *(a1 + 70);
  if (*(a1 + 70))
  {
    CFDictionarySetValue(Mutable, @"wifi", *v7);
    v8 = 0;
  }

  if (a2)
  {
LABEL_11:
    *a2 = v8;
  }

  return Mutable;
}

uint64_t _BonjourDevice_GetBestService(uint64_t a1)
{
  if (!a1)
  {
    return a1;
  }

  v2 = 0;
  v3 = 0;
  v4 = a1;
  do
  {
    if (!strcmp(*(v4 + 40), "local."))
    {
      if (!*(v4 + 70))
      {
        return v4;
      }

      if (!v3)
      {
        if (*(v4 + 69))
        {
          v3 = 0;
        }

        else
        {
          v3 = v4;
        }
      }

      if (!v2)
      {
        v2 = v4;
      }
    }

    v4 = *(v4 + 8);
  }

  while (v4);
  if (!v3)
  {
    v3 = v2;
    if (!v2)
    {
      return a1;
    }
  }

  return v3;
}

uint64_t _BonjourService_GetDeviceID(uint64_t a1, void *a2)
{
  v68 = *MEMORY[0x1E69E9840];
  valueLen = 0;
  v3 = *(a1 + 96);
  v4 = *(v3 + 8);
  v5 = *(*(a1 + 16) + 160);
  if ((v5 & 0x800000000000) != 0 || (v7 = *(a1 + 32), !strcasecmp(v7, "_airplay._tcp.")) || !strcasecmp(v7, "_airplay-alt._tcp.") || !strcasecmp(v7, "_mfi-config._tcp."))
  {
    ValuePtr = TXTRecordGetValuePtr(v4, (v3 + 16), "deviceid", &valueLen);
    if (ValuePtr)
    {
      result = TextToHardwareAddress(ValuePtr, valueLen, 6, v64);
      if (result)
      {
        return result;
      }

      v19 = 0;
      v13 = __s;
      do
      {
        if (v13 == __s)
        {
          v20 = __s;
        }

        else
        {
          *v13 = 58;
          v20 = v13 + 1;
        }

        v21 = v64[v19];
        v22 = v19 + 1;
        *v20 = a0123456789abcd_0[v21 >> 4];
        v23 = a0123456789abcd_0[v21 & 0xF];
        v13 = v20 + 2;
        v20[1] = v23;
        v19 = v22;
      }

      while (v22 != 6);
      goto LABEL_28;
    }

    return 4294960569;
  }

  if ((v5 & 0x800000000000000) != 0 || !strcasecmp(v7, "_hap._tcp."))
  {
    v26 = TXTRecordGetValuePtr(v4, (v3 + 16), "id", &valueLen);
    if (!v26)
    {
      return 4294960569;
    }

    result = TextToHardwareAddress(v26, valueLen, 6, v64);
    if (!result)
    {
      v27 = 0;
      v13 = __s;
      do
      {
        if (v13 == __s)
        {
          v28 = __s;
        }

        else
        {
          *v13 = 58;
          v28 = v13 + 1;
        }

        v29 = v64[v27];
        v30 = v27 + 1;
        *v28 = a0123456789abcd_0[v29 >> 4];
        v31 = a0123456789abcd_0[v29 & 0xF];
        v13 = v28 + 2;
        v28[1] = v31;
        v27 = v30;
      }

      while (v30 != 6);
      goto LABEL_28;
    }
  }

  else
  {
    if (!strcasecmp(v7, "_airport._tcp."))
    {
      v61 = 0;
      v62 = 0;
      if (!v4)
      {
        return 4294960553;
      }

      valueLen = 0;
      v63 = (v3 + 17);
      v39 = v3 + 17 + v4 - 1;
      while (!ParseCommaSeparatedNameValuePair(v63, v39, v66, 8, &v62, __s, &v61, &v63))
      {
        if (!strnicmpx(v66, v62, "waMA"))
        {
          valueLen = v61;
          result = TextToHardwareAddress(__s, v61, 6, v64);
          if (result)
          {
            return result;
          }

          v40 = 0;
          v13 = __s;
          do
          {
            if (v13 == __s)
            {
              v41 = __s;
            }

            else
            {
              *v13 = 58;
              v41 = v13 + 1;
            }

            v42 = v64[v40];
            v43 = v40 + 1;
            *v41 = a0123456789abcd_0[v42 >> 4];
            v44 = a0123456789abcd_0[v42 & 0xF];
            v13 = v41 + 2;
            v41[1] = v44;
            v40 = v43;
          }

          while (v43 != 6);
          goto LABEL_28;
        }
      }

      return 4294960569;
    }

    if (!strcasecmp(v7, "_raop._tcp.") || !strcasecmp(v7, "_airplay-p2p._tcp."))
    {
      v32 = *(a1 + 24);
      v33 = strchr(v32, 64);
      if (!v33)
      {
        return 4294960554;
      }

      valueLen = v33 - v32;
      result = TextToHardwareAddress(v32, (v33 - v32), 6, v64);
      if (!result)
      {
        v34 = 0;
        v13 = __s;
        do
        {
          if (v13 == __s)
          {
            v35 = __s;
          }

          else
          {
            *v13 = 58;
            v35 = v13 + 1;
          }

          v36 = v64[v34];
          v37 = v34 + 1;
          *v35 = a0123456789abcd_0[v36 >> 4];
          v38 = a0123456789abcd_0[v36 & 0xF];
          v13 = v35 + 2;
          v35[1] = v38;
          v34 = v37;
        }

        while (v37 != 6);
        goto LABEL_28;
      }
    }

    else
    {
      if (strcasecmp(v7, "_airdrop._tcp."))
      {
        if (!strcasecmp(v7, "_googlecast._tcp."))
        {
          v50 = TXTRecordGetValuePtr(v4, (v3 + 16), "id", &valueLen);
          if (v50)
          {
            v51 = SipHash(qword_191FF9AD7, v50, valueLen);
            v52 = 0;
            LOBYTE(v63) = BYTE5(v51);
            BYTE1(v63) = BYTE4(v51);
            BYTE2(v63) = BYTE3(v51);
            BYTE3(v63) = BYTE2(v51);
            BYTE4(v63) = BYTE1(v51);
            BYTE5(v63) = v51;
            v53 = __s;
            do
            {
              if (v53 == __s)
              {
                v54 = __s;
              }

              else
              {
                *v53 = 58;
                v54 = v53 + 1;
              }

              v55 = v64[v52 - 7];
              v56 = v52 + 1;
              *v54 = a0123456789abcd_0[v55 >> 4];
              v57 = a0123456789abcd_0[v55 & 0xF];
              v53 = v54 + 2;
              v54[1] = v57;
              v52 = v56;
            }

            while (v56 != 6);
            *v53 = 0;
LABEL_29:
            v24 = strlen(__s);
            if ((v24 & 0xC0) == 0)
            {
              v25 = v24 & 0x3F;
              memcpy(a2, __s, v25);
              result = 0;
              *(a2 + v25) = 0;
              return result;
            }

            return 4294960553;
          }
        }

        else
        {
          v8 = TXTRecordGetValuePtr(v4, (v3 + 16), "rpBA", &valueLen);
          if (v8)
          {
            v9 = v8;
            v10 = valueLen;
LABEL_14:
            result = TextToHardwareAddress(v9, v10, 6, v64);
            if (result)
            {
              return result;
            }

            v12 = 0;
            v13 = __s;
            do
            {
              if (v13 == __s)
              {
                v14 = __s;
              }

              else
              {
                *v13 = 58;
                v14 = v13 + 1;
              }

              v15 = v64[v12];
              v16 = v12 + 1;
              *v14 = a0123456789abcd_0[v15 >> 4];
              v17 = a0123456789abcd_0[v15 & 0xF];
              v13 = v14 + 2;
              v14[1] = v17;
              v12 = v16;
            }

            while (v16 != 6);
            goto LABEL_28;
          }

          v58 = *(a1 + 72);
          if (v58)
          {
            v59 = [objc_msgSend(v58 "identifier")];
            if (v59)
            {
              v9 = v59;
              v60 = strlen(v59);
              v10 = TruncatedUTF8Length(v9, v60, 0xFFuLL);
              valueLen = v10;
              goto LABEL_14;
            }
          }
        }

        return 4294960569;
      }

      result = TextToHardwareAddress(*(a1 + 24), 0xFFFFFFFFFFFFFFFFLL, 6, v64);
      if (!result)
      {
        v45 = 0;
        v13 = __s;
        do
        {
          if (v13 == __s)
          {
            v46 = __s;
          }

          else
          {
            *v13 = 58;
            v46 = v13 + 1;
          }

          v47 = v64[v45];
          v48 = v45 + 1;
          *v46 = a0123456789abcd_0[v47 >> 4];
          v49 = a0123456789abcd_0[v47 & 0xF];
          v13 = v46 + 2;
          v46[1] = v49;
          v45 = v48;
        }

        while (v48 != 6);
LABEL_28:
        *v13 = 0;
        goto LABEL_29;
      }
    }
  }

  return result;
}

uint64_t CFDictionarySetDouble(__CFDictionary *a1, const void *a2, double a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  if (!v5)
  {
    return 4294960568;
  }

  v6 = v5;
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v6);
  return 0;
}

uint64_t CFDictionarySetData(__CFDictionary *a1, const void *a2, UInt8 *bytes, CFIndex length)
{
  v6 = CFDataCreate(0, bytes, length);
  if (!v6)
  {
    return 4294960596;
  }

  v7 = v6;
  CFDictionarySetValue(a1, a2, v6);
  CFRelease(v7);
  return 0;
}

uint64_t CUMainQueue()
{
  if (CUMainQueue_sOnce != -1)
  {
    dispatch_once(&CUMainQueue_sOnce, &__block_literal_global_23);
  }

  return CUMainQueue_sQueue;
}

unint64_t _BonjourService_Comparator(const __CFDictionary *a1, const __CFDictionary *a2, unint64_t *a3)
{
  v5 = *a3;
  TypeID = CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue(a1, @"domain", TypeID, 0);
  if (TypedValue)
  {
    if (CFEqual(TypedValue, @"local."))
    {
      v8 = -1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = CFStringGetTypeID();
  v10 = CFDictionaryGetTypedValue(a2, @"domain", v9, 0);
  if (v10)
  {
    v11 = CFEqual(v10, @"local.") != 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11 + v8;
  if (!v12)
  {
    Int64 = CFDictionaryGetInt64(a1, @"transportType", 0);
    v14 = CFDictionaryGetInt64(a2, @"transportType", 0);
    LODWORD(v12) = ((v14 >> 4) & 1) + (Int64 << 27 >> 31);
    if (v12)
    {
      return v12;
    }

    LODWORD(v12) = ((v14 >> 3) & 1) + (Int64 << 28 >> 31);
    if (v12)
    {
      return v12;
    }

    else
    {
      v15 = 1;
      if (Int64 != 4 && Int64 != 64)
      {
        v15 = Int64 == 128;
      }

      v16 = 1;
      if (v14 != 4 && v14 != 64)
      {
        v16 = v14 == 128;
      }

      v17 = v15 << 63 >> 63;
      if ((v5 & 0x8000000000000000) == 0 || (v12 = v17 + v16) == 0)
      {
        v18 = 1;
        if (v14 != 1 && v14 != 8)
        {
          v18 = v14 == 16;
        }

        v19 = -1;
        if (Int64 != 1 && Int64 != 8)
        {
          if (Int64 == 16)
          {
            v19 = -1;
          }

          else
          {
            v19 = 0;
          }
        }

        v12 = v19 + v18;
        if (!v12 && ((v5 & 0x8000000000000000) != 0 || (v12 = !v16 - ((v17 & 1) == 0)) == 0))
        {
          if (((v5 >> 50) & v17 & v16) == 1)
          {
            return (v14 == 128) - (Int64 == 128);
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return v12;
}

uint64_t SocketSetNonBlocking(int a1, int a2)
{
  v3 = a2 != 0;
  v4 = fcntl(a1, 3, 0);
  if (fcntl(a1, 4, v4 & 0xFFFFFFFB | (4 * v3)) != -1)
  {
    return 0;
  }

  if (*__error())
  {
    return *__error();
  }

  return 4294960596;
}

__n128 AES_CTR_Init(CCCryptorRef *cryptorRef, void *key, __n128 *a3)
{
  *cryptorRef = 0;
  if (!CCCryptorCreate(0, 0, 2u, key, 0x10uLL, 0, cryptorRef))
  {
    result = *a3;
    *(cryptorRef + 1) = *a3;
    cryptorRef[5] = 0;
  }

  return result;
}

uint64_t AES_CTR_Update(uint64_t a1, char *a2, unint64_t a3, _BYTE *a4)
{
  v5 = a3;
  v8 = (a1 + 24);
  v9 = *(a1 + 40);
  if (a3 && v9)
  {
    do
    {
      v10 = *a2++;
      *a4++ = v8[v9] ^ v10;
      v9 = (v9 + 1) & 0xFLL;
      --v5;
    }

    while (v5 && v9);
  }

  dataOutMoved = 0;
  *(a1 + 40) = v9;
  if (v5 < 0x10)
  {
LABEL_14:
    if (v5)
    {
      result = CCCryptorUpdate(*a1, (a1 + 8), 0x10uLL, v8, 0x10uLL, &dataOutMoved);
      if (!result)
      {
        if (dataOutMoved == 16)
        {
          v15 = 23;
          do
          {
            if (v15 == 7)
            {
              break;
            }

            v16 = (*(a1 + v15--))++ + 1;
          }

          while ((v16 & 0x100) != 0);
          v17 = 0;
          dataOutMoved = 0;
          do
          {
            v18 = v8[v9++];
            a4[v17] = v18 ^ a2[v17];
            dataOutMoved = ++v17;
          }

          while (v5 != v17);
          result = 0;
          *(a1 + 40) = v9;
        }

        else
        {
          return 4294960553;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      result = CCCryptorUpdate(*a1, (a1 + 8), 0x10uLL, v8, 0x10uLL, &dataOutMoved);
      if (result)
      {
        break;
      }

      if (dataOutMoved != 16)
      {
        return 4294960553;
      }

      v12 = 23;
      do
      {
        if (v12 == 7)
        {
          break;
        }

        v13 = (*(a1 + v12--))++ + 1;
      }

      while ((v13 & 0x100) != 0);
      v14 = 0;
      dataOutMoved = 0;
      do
      {
        a4[v14] = v8[v14] ^ a2[v14];
        dataOutMoved = ++v14;
      }

      while (v14 != 16);
      a2 += 16;
      a4 += 16;
      v5 -= 16;
      if (v5 <= 0xF)
      {
        goto LABEL_14;
      }
    }
  }

  return result;
}

uint64_t AES_CTR_Final(_CCCryptor **__s)
{
  v2 = *__s;
  if (v2)
  {
    CCCryptorRelease(v2);
  }

  return memset_s(__s, 0x30uLL, 0, 0x30uLL);
}

__n128 AES_CBCFrame_Init(CCCryptorRef *cryptorRef, void *key, __n128 *a3, int a4)
{
  *cryptorRef = 0;
  if (!CCCryptorCreate(a4 == 0, 0, 0, key, 0x10uLL, 0, cryptorRef))
  {
    result = *a3;
    *(cryptorRef + 1) = *a3;
  }

  return result;
}

uint64_t AES_CBCFrame_Update(CCCryptorRef *a1, char *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a3 & 0xFFFFFFFFFFFFFFF0;
  dataOutMoved = a3 & 0xFFFFFFFFFFFFFFF0;
  if ((a3 & 0xFFFFFFFFFFFFFFF0) != 0)
  {
    result = CCCryptorReset(*a1, a1 + 1);
    if (result)
    {
      return result;
    }

    result = CCCryptorUpdate(*a1, a2, v7, a4, v7, &dataOutMoved);
    if (result)
    {
      return result;
    }

    v10 = &a2[dataOutMoved];
    a4 += dataOutMoved;
  }

  else
  {
    v10 = a2;
  }

  while (v10 != &a2[a3])
  {
    v11 = *v10++;
    *a4++ = v11;
  }

  return 0;
}

uint64_t AES_CBCFrame_Final(_CCCryptor **__s)
{
  v2 = *__s;
  if (v2)
  {
    CCCryptorRelease(v2);
  }

  return memset_s(__s, 0x18uLL, 0, 0x18uLL);
}

__n128 AES_GCM_InitEx(CCCryptorRef *cryptorRef, CCOperation op, void *key, __n128 *a4)
{
  v6 = CCCryptorCreateWithMode(op, 0xBu, 0, 0, 0, key, 0x10uLL, 0, 0, 0, 0, cryptorRef);
  if (a4)
  {
    if (!v6)
    {
      result = *a4;
      *(cryptorRef + 1) = *a4;
    }
  }

  return result;
}

uint64_t AES_GCM_Final(_CCCryptor **__s)
{
  v2 = *__s;
  if (v2)
  {
    CCCryptorRelease(v2);
  }

  return memset_s(__s, 0x18uLL, 0, 0x18uLL);
}

uint64_t AES_GCM_InitMessage(void *a1, void *a2)
{
  v4 = *a1;
  result = CCCryptorGCMReset();
  if (!result)
  {
    if (!a2)
    {
      a2 = a1 + 1;
      v6 = 23;
      do
      {
        if (v6 == 7)
        {
          break;
        }

        v7 = (*(a1 + v6--))++ + 1;
      }

      while ((v7 & 0x100) != 0);
    }

    return MEMORY[0x1EEE6EC88](v4, a2, 16);
  }

  return result;
}

uint64_t SimpleArrayAppendItem(void **a1, uint64_t *a2, size_t a3, const void *a4)
{
  v4 = *a2;
  v5 = *a2 * a3;
  if (__CFADD__(v5, a3))
  {
    return 4294960553;
  }

  v10 = *a1;
  v11 = malloc_type_malloc(v5 + a3, 0x100004077774924uLL);
  if (!v11)
  {
    return 4294960568;
  }

  v12 = v11;
  if (v4)
  {
    memcpy(v11, v10, v5);
  }

  memcpy(&v12[v5], a4, a3);
  if (v10)
  {
    free(v10);
  }

  result = 0;
  *a1 = v12;
  *a2 = v4 + 1;
  return result;
}

uint64_t SimpleArrayRemoveItemAtIndex(void **a1, unint64_t *a2, unint64_t a3, unint64_t a4, int a5)
{
  v5 = *a2;
  if (*a2 <= a4)
  {
    return 4294960586;
  }

  v10 = *a1;
  if (a5)
  {
    if (v5 < 2)
    {
      free(*a1);
      result = 0;
      *a1 = 0;
      *a2 = 0;
    }

    else
    {
      v11 = v5 - 1;
      v12 = !is_mul_ok(a3, v5 - 1);
      result = 4294960553;
      if (a3 && !v12)
      {
        v14 = malloc_type_malloc(a3 * v11, 0x100004077774924uLL);
        if (v14)
        {
          v15 = v14;
          if (a4)
          {
            memcpy(v14, v10, a4 * a3);
            v14 = &v15[a4 * a3];
          }

          v16 = a3 + a3 * a4;
          if (v5 * a3 != v16)
          {
            memcpy(v14, &v10[v16], v5 * a3 - v16);
          }

          *a1 = v15;
          *a2 = v11;
          free(v10);
          return 0;
        }

        else
        {
          return 4294960568;
        }
      }
    }
  }

  else
  {
    if (v5 - 1 > a4)
    {
      memcpy(&v10[a4 * a3], &v10[(a4 + 1) * a3], (v5 - (a4 + 1)) * a3);
    }

    result = 0;
    *a2 = v5 - 1;
  }

  return result;
}

uint64_t AsyncConnection_Connect(void *a1, uint64_t a2, int a3, int a4, uint64_t a5, int a6, int a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0;
  v24 = 160;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  v22 = 0;
  return AsyncConnection_ConnectEx(a1, &v12);
}

uint64_t _AsyncConnection_TimeoutHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 152);
  if (*v9 <= 50)
  {
    if (*v9 != -1)
    {
LABEL_3:
      LogPrintF(v9, "void _AsyncConnection_TimeoutHandler(void *)", 0x32u, "### Connect timed out: %s\n", a5, a6, a7, a8, *(a1 + 16));
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(v9, 0x32u))
    {
      v9 = *(a1 + 152);
      goto LABEL_3;
    }
  }

LABEL_5:

  return _AsyncConnection_Complete(a1, 0, 0xFFFFFFFFLL, 4294960574);
}

uint64_t _AsyncConnection_ReachabilityStart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = *MEMORY[0x1E69E9840];
  memset(&context, 0, sizeof(context));
  v10 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10E0040D7525972uLL);
  if (!v10)
  {
    return 4294960568;
  }

  v11 = v10;
  ++*a1;
  *v10 = 1;
  *(v10 + 2) = a1;
  *(v10 + 15) = -1;
  v12 = *(a3 + 1);
  if (*(a3 + 1))
  {
    if (v12 == 30)
    {
      v13 = *a3;
      v14 = *(a3 + 16);
      *(v10 + 12) = *(a3 + 24);
      *(v10 + 5) = v14;
    }

    else
    {
      if (v12 != 2)
      {
        goto LABEL_9;
      }

      v13 = *a3;
    }

    *(v10 + 24) = v13;
  }

  else
  {
    v10[25] = 0;
  }

LABEL_9:
  *(v10 + 13) = a4;
  *(v10 + 14) = a5;
  *(v10 + 14) = CFAbsoluteTimeGetCurrent();
  if (a2)
  {
    *(v11 + 17) = *(a2 + 136);
    *(v11 + 19) = *(a2 + 152);
  }

  memset(bytes, 0, 28);
  flags = 0;
  v15 = *(a3 + 1);
  if (v15 == 30)
  {
    *bytes = *a3;
    *&bytes[12] = *(a3 + 12);
    if ((a5 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v15 == 2)
    {
      *bytes = *a3;
    }

    if ((a5 & 0x80000000) == 0)
    {
LABEL_15:
      v16 = bytes[1];
      if (bytes[1] != 30 && bytes[1] != 2)
      {
        goto LABEL_24;
      }

      v17 = a5;
      if (*&bytes[2])
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    }
  }

  v17 = -a5;
  v16 = bytes[1];
LABEL_21:
  if (v16 == 30 || v16 == 2)
  {
    *&bytes[2] = bswap32(v17) >> 16;
  }

LABEL_24:
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v33 = 4294960568;
    goto LABEL_51;
  }

  v19 = Mutable;
  v20 = 28;
  if (v16 != 30)
  {
    v20 = 0;
  }

  if (v16 == 2)
  {
    v21 = 16;
  }

  else
  {
    v21 = v20;
  }

  CFDictionarySetData(Mutable, @"remote-address", bytes, v21);
  if (a4 && ((*(a1 + 28) & 8) != 0 || bytes[1] == 2 && bytes[4] == 169 && bytes[5] == 254))
  {
    v39[0] = 0;
    if_indextoname(a4, v39);
    if (v39[0])
    {
      CFDictionarySetCString(v19, @"interface", v39, -1);
    }
  }

  *(v11 + 12) = SCNetworkReachabilityCreateWithOptions();
  CFRelease(v19);
  v22 = *(v11 + 12);
  if (!v22 || (context.info = v11, !SCNetworkReachabilitySetCallback(v22, _AsyncConnection_ReachabilityHandler, &context)) || !SCNetworkReachabilitySetDispatchQueue(*(v11 + 12), *(a1 + 112)))
  {
    v33 = 4294960596;
    goto LABEL_51;
  }

  flags = 0;
  if (!SCNetworkReachabilityGetFlags(*(v11 + 12), &flags) || (flags & 2) == 0)
  {
    goto LABEL_53;
  }

  *(v11 + 15) = CFAbsoluteTimeGetCurrent() - *(v11 + 14);
  v31 = *(a1 + 152);
  if (*v31 <= 30)
  {
    if (*v31 == -1)
    {
      if (!_LogCategory_Initialize(v31, 0x1Eu))
      {
        goto LABEL_46;
      }

      v31 = *(a1 + 152);
    }

    LogPrintF(v31, "OSStatus _AsyncConnection_ReachabilityStart(AsyncConnectionRef, AsyncConnectionOperationRef, const void *, uint32_t, int)", 0x1Eu, "Reachability of %##a default port %d OK, Flags 0x%X\n", v27, v28, v29, v30, a3);
  }

LABEL_46:
  if (_AsyncConnection_StartConnect(a1, 0, a3, a4, a5, v28, v29, v30))
  {
    v32 = *(a1 + 152);
    if (*v32 > 90)
    {
      goto LABEL_53;
    }

    if (*v32 != -1)
    {
      goto LABEL_49;
    }

    if (_LogCategory_Initialize(v32, 0x5Au))
    {
      v32 = *(a1 + 152);
LABEL_49:
      LogPrintF(v32, "OSStatus _AsyncConnection_ReachabilityStart(AsyncConnectionRef, AsyncConnectionOperationRef, const void *, uint32_t, int)", 0x5Au, "### Connect %##a default port %d failed after reachability said OK\n", v23, v24, v25, v26, a3);
    }

LABEL_53:
    v34 = *(a1 + 152);
    if (*v34 <= 30)
    {
      if (*v34 == -1)
      {
        if (!_LogCategory_Initialize(v34, 0x1Eu))
        {
          goto LABEL_57;
        }

        v34 = *(a1 + 152);
      }

      LogPrintF(v34, "OSStatus _AsyncConnection_ReachabilityStart(AsyncConnectionRef, AsyncConnectionOperationRef, const void *, uint32_t, int)", 0x1Eu, "Monitoring reachability of %##a default port %d\n", v23, v24, v25, v26, a3);
    }

LABEL_57:
    v33 = 0;
    *(v11 + 1) = *(a1 + 88);
    *(a1 + 88) = v11;
    return v33;
  }

  v33 = 0;
LABEL_51:
  _AsyncConnection_ReleaseOperation(v11);
  return v33;
}

uint64_t ParseDestination(char *a1, void *a2, unsigned int *a3, _DWORD *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v8 = strchr(a1, 37);
  if (v8)
  {
    v9 = v8;
    v10 = v8 + 1;
    v11 = strchr(v8 + 1, 58);
    if (v11)
    {
      v12 = v11;
      if (sscanf(v11 + 1, "%d", &v19) != 1)
      {
        return 4294960554;
      }

      v13 = 1;
    }

    else
    {
      v13 = 0;
      v12 = &v10[strlen(v9)];
    }

    v17 = v12 - v10;
    if (v17 <= 0x10)
    {
      __memcpy_chk();
      v21[v17] = 0;
      v20 = if_nametoindex(v21);
      if (v20 || sscanf(v21, "%u", &v20) == 1)
      {
        v16 = v9 - a1;
        goto LABEL_15;
      }
    }

    return 4294960554;
  }

  v14 = strchr(a1, 58);
  if (v14)
  {
    v15 = v14;
    if (sscanf(v14 + 1, "%d", &v19) != 1)
    {
      return 4294960554;
    }

    v16 = v15 - a1;
    v13 = 1;
  }

  else
  {
    v16 = strlen(a1);
    v13 = 0;
  }

  v20 = 0;
LABEL_15:
  if (v16 > 0x3F0)
  {
    return 4294960553;
  }

  memcpy(a2, a1, v16);
  *(a2 + v16) = 0;
  *a3 = v20;
  result = 0;
  if (v13)
  {
    *a4 = v19;
  }

  return result;
}

uint64_t _AsyncConnection_StartDNSResolve(uint64_t a1, uint64_t a2, char *a3, int a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10E0040D7525972uLL);
  if (!v8)
  {
    return 4294960568;
  }

  v9 = v8;
  ++*a1;
  *v8 = 1;
  v8[2] = a1;
  *(v8 + 15) = -1;
  *(v8 + 18) = CFAbsoluteTimeGetCurrent();
  if (a2)
  {
    *(v9 + 15) = *(a2 + 120);
    *(v9 + 17) = *(a2 + 136);
  }

  v21 = 0;
  interfaceIndex = 0;
  v10 = ParseDestination(a3, hostname, &interfaceIndex, &v21);
  if (v10)
  {
    AddrInfo = v10;
    goto LABEL_18;
  }

  v16 = v21;
  if (v21)
  {
    v17 = a4 < 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v16 = a4;
  }

  v9[14] = v16;
  v18 = *(a1 + 152);
  if (*v18 <= 30)
  {
    if (*v18 != -1)
    {
LABEL_13:
      LogPrintF(v18, "OSStatus _AsyncConnection_StartDNSResolve(AsyncConnectionRef, AsyncConnectionOperationRef, const char *, int)", 0x1Eu, "Resolving DNS %s\n", v11, v12, v13, v14, a3);
      goto LABEL_15;
    }

    if (_LogCategory_Initialize(v18, 0x1Eu))
    {
      v18 = *(a1 + 152);
      goto LABEL_13;
    }
  }

LABEL_15:
  v19 = *(a1 + 96);
  if (v19)
  {
    v19(2, a3, *(a1 + 104));
  }

  AddrInfo = DNSServiceGetAddrInfo(v9 + 8, (*(a1 + 28) << 14) & 0x8000, interfaceIndex, 0, hostname, _AsyncConnection_DNSCallBack, v9);
  if (!AddrInfo)
  {
    DNSServiceSetDispatchQueue(*(v9 + 8), *(a1 + 112));
    *(v9 + 1) = *(a1 + 88);
    *(a1 + 88) = v9;
    return AddrInfo;
  }

LABEL_18:
  _AsyncConnection_ReleaseOperation(v9);
  return AddrInfo;
}

void _AsyncConnection_DNSCallBack(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a2 & 2) == 0 || a4)
  {
    return;
  }

  v12 = *(a8 + 16);
  *(a8 + 152) = CFAbsoluteTimeGetCurrent() - *(a8 + 144);
  v17 = *(v12 + 152);
  if (*v17 <= 30)
  {
    if (*v17 == -1)
    {
      if (!_LogCategory_Initialize(v17, 0x1Eu))
      {
        goto LABEL_7;
      }

      v17 = *(v12 + 152);
    }

    LogPrintF(v17, "void _AsyncConnection_DNSCallBack(DNSServiceRef, DNSServiceFlags, uint32_t, DNSServiceErrorType, const char *, const struct sockaddr *, uint32_t, void *)", 0x1Eu, "Resolved DNS %s -> %##a, Flags 0x%X, If %u, TTL %u\n", v13, v14, v15, v16, a5);
  }

LABEL_7:
  if ((*(v12 + 28) & 4) == 0 || _AsyncConnection_ReachabilityStart(v12, a8, a6, a3, *(a8 + 56)))
  {
    v18 = *(a8 + 56);

    _AsyncConnection_StartConnect(v12, a8, a6, a3, v18, v14, v15, v16);
  }
}

void _AsyncConnection_SRVCallBack(uint64_t a1, char a2, int a3, uint64_t started, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v34[134] = *MEMORY[0x1E69E9840];
  if (started)
  {
    goto LABEL_32;
  }

  if ((a2 & 2) != 0)
  {
    if (a8 < 7)
    {
      started = 4294960554;
      goto LABEL_32;
    }

    v14 = a9 + 6;
    v13 = *(a9 + 6);
    v15 = *(a9 + 4);
    if (!*(a9 + 6))
    {
      v17 = v34;
      __s[0] = 46;
      goto LABEL_20;
    }

    v16 = 0;
    v17 = __s;
    v18 = a9 + 6;
LABEL_6:
    if (v16 + 1 + v13 <= 0xFE && v13 <= 0x3F)
    {
      v19 = v18 + v13;
      while (1)
      {
        v21 = *++v18;
        v20 = v21;
        if (v21 == 92 || v20 == 46)
        {
          *v17++ = 92;
        }

        else if (v20 <= 0x20)
        {
          *v17 = 12380;
          v23 = (205 * v20) >> 11;
          v22 = v17 + 3;
          v17[2] = v23 | 0x30;
          LOBYTE(v20) = (v20 - 10 * v23) | 0x30;
          goto LABEL_13;
        }

        v22 = v17;
LABEL_13:
        *v22 = v20;
        v17 = v22 + 1;
        if (v18 >= v19)
        {
          v22[1] = 0;
          v16 += 1 + *(v14 + v16);
          v17 = v22 + 2;
          v22[1] = 46;
          v18 = v14 + v16;
          v13 = *(v14 + v16);
          if (!*(v14 + v16))
          {
LABEL_20:
            *v17 = 0;
            break;
          }

          goto LABEL_6;
        }
      }
    }

    v24 = __rev16(v15);
    *(a11 + 136) = CFAbsoluteTimeGetCurrent() - *(a11 + 128);
    v29 = *(*(a11 + 16) + 152);
    if (*v29 <= 30)
    {
      if (*v29 != -1)
      {
        goto LABEL_23;
      }

      if (_LogCategory_Initialize(v29, 0x1Eu))
      {
        v29 = *(*(a11 + 16) + 152);
LABEL_23:
        LogPrintF(v29, "void _AsyncConnection_SRVCallBack(DNSServiceRef, DNSServiceFlags, uint32_t, DNSServiceErrorType, const char *, uint16_t, uint16_t, uint16_t, const void *, uint32_t, void *)", 0x1Eu, "SRV resolved %s -> %s port %d, If %u, Flags 0x%X, TTL %u\n", v25, v26, v27, v28, a5);
      }
    }

    v30 = strlen(__s);
    snprintf(&__s[v30], 1073 - v30, "%%%u", a3);
    v31 = *(a11 + 56) < 0 || v24 == 0;
    v32 = v31 ? *(a11 + 56) : v24;
    started = _AsyncConnection_StartDNSResolve(*(a11 + 16), a11, __s, v32);
    if (started)
    {
LABEL_32:
      _AsyncConnection_ErrorHandler(a11, started);
    }
  }
}

void _AsyncConnection_ErrorHandler(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 + 88);
  if (v4)
  {
    if (v4 == a1)
    {
      v6 = (v3 + 88);
LABEL_10:
      *v6 = *(v4 + 8);
      if (!*(v3 + 88))
      {
        _AsyncConnection_Complete(v3, 0, 0xFFFFFFFFLL, a2);
      }

      _AsyncConnection_ReleaseOperation(v4);
    }

    else
    {
      while (1)
      {
        v5 = v4;
        v4 = *(v4 + 8);
        if (!v4)
        {
          break;
        }

        if (v4 == a1)
        {
          v6 = (v5 + 8);
          goto LABEL_10;
        }
      }
    }
  }

  else
  {

    _AsyncConnection_Complete(v3, 0, 0xFFFFFFFFLL, a2);
  }
}

uint64_t _AsyncConnection_StartConnectDelayed(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v9 = a6;
  v10 = a5;
  v15 = *(a1 + 152);
  v16 = *v15;
  if (!a3)
  {
    if (v16 > 30)
    {
      goto LABEL_11;
    }

    if (v16 == -1)
    {
      if (!_LogCategory_Initialize(v15, 0x1Eu))
      {
        goto LABEL_11;
      }

      v15 = *(a1 + 152);
    }

    LogPrintF(v15, "OSStatus _AsyncConnection_StartConnectDelayed(AsyncConnectionRef, AsyncConnectionOperationRef, uint32_t, const void *, uint32_t, int, uint64_t)", 0x1Eu, "Delaying connect to %##a, interface %u by %llu ms\n", a5, a6, a7, a8, a4);
    goto LABEL_11;
  }

  if (v16 > 30)
  {
    goto LABEL_11;
  }

  if (v16 != -1)
  {
    goto LABEL_4;
  }

  if (_LogCategory_Initialize(v15, 0x1Eu))
  {
    v15 = *(a1 + 152);
LABEL_4:
    LogPrintF(v15, "OSStatus _AsyncConnection_StartConnectDelayed(AsyncConnectionRef, AsyncConnectionOperationRef, uint32_t, const void *, uint32_t, int, uint64_t)", 0x1Eu, "Retrying connect to %##a, interface %u, delay %llu ms, %u of %u\n", a5, a6, a7, a8, a4);
  }

LABEL_11:
  v17 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10E0040D7525972uLL);
  if (!v17)
  {
    return 4294960568;
  }

  v18 = v17;
  ++*a1;
  *v17 = 1;
  *(v17 + 2) = a1;
  v19 = *(a4 + 1);
  if (*(a4 + 1))
  {
    if (v19 == 30)
    {
      v20 = *a4;
      v21 = *(a4 + 16);
      *(v17 + 12) = *(a4 + 24);
      *(v17 + 5) = v21;
    }

    else
    {
      if (v19 != 2)
      {
        goto LABEL_19;
      }

      v20 = *a4;
    }

    *(v17 + 24) = v20;
  }

  else
  {
    v17[25] = 0;
  }

LABEL_19:
  *(v17 + 13) = v10;
  if ((v9 & 0x80000000) != 0)
  {
    v23 = -v9;
    v22 = v17[25];
    goto LABEL_25;
  }

  v22 = v17[25];
  if ((v22 == 30 || v22 == 2) && !*(v17 + 13))
  {
    v23 = v9;
LABEL_25:
    if (v22 == 30 || v22 == 2)
    {
      *(v17 + 13) = bswap32(v23) >> 16;
    }
  }

  *(v17 + 14) = v9;
  *(v17 + 15) = -1;
  *(v17 + 20) = CFAbsoluteTimeGetCurrent();
  v18[45] = a3;
  if (a2)
  {
    *(v18 + 15) = a2[15];
    *(v18 + 17) = a2[17];
    *(v18 + 19) = a2[19];
  }

  v24 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(a1 + 112));
  *(v18 + 9) = v24;
  if (v24)
  {
    dispatch_set_context(v24, v18);
    dispatch_source_set_event_handler_f(*(v18 + 9), _AsyncConnection_ConnectDelayedHandler);
    v25 = *(v18 + 9);
    v26 = dispatch_time(0, a7);
    dispatch_source_set_timer(v25, v26, 0xFFFFFFFFFFFFFFFFLL, a7 >> 2);
    dispatch_resume(*(v18 + 9));
    result = 0;
    *(v18 + 1) = *(a1 + 88);
    *(a1 + 88) = v18;
  }

  else
  {
    _AsyncConnection_ReleaseOperation(v18);
    return 4294960596;
  }

  return result;
}

void _AsyncConnection_StartConnectFailed(_DWORD *a1)
{
  _AsyncConnection_ErrorHandler(a1, a1[44]);

  _AsyncConnection_ReleaseOperation(a1);
}

void _AsyncConnection_ConnectDelayedHandler(uint64_t a1)
{
  started = _AsyncConnection_StartConnectNow(*(a1 + 16), a1, a1 + 24, *(a1 + 52), *(a1 + 56));
  if (started)
  {

    _AsyncConnection_ErrorHandler(a1, started);
  }

  else
  {
    v3 = *(a1 + 16);
    v6 = *(v3 + 88);
    v5 = (v3 + 88);
    v4 = v6;
    if (v6)
    {
      if (v4 == a1)
      {
LABEL_10:
        *v5 = *(v4 + 8);

        _AsyncConnection_ReleaseOperation(a1);
      }

      else
      {
        while (1)
        {
          v7 = v4;
          v4 = *(v4 + 8);
          if (!v4)
          {
            break;
          }

          if (v4 == a1)
          {
            v5 = (v7 + 8);
            goto LABEL_10;
          }
        }
      }
    }
  }
}

void _AsyncConnection_ReachabilityHandler(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(*(a3 + 16) + 152);
  if (*v10 <= 30)
  {
    if (*v10 == -1)
    {
      if (!_LogCategory_Initialize(v10, 0x1Eu))
      {
        goto LABEL_5;
      }

      v10 = *(*(a3 + 16) + 152);
    }

    LogPrintF(v10, "void _AsyncConnection_ReachabilityHandler(SCNetworkReachabilityRef, SCNetworkReachabilityFlags, void *)", 0x1Eu, "Reachability of %##a, port %d changed: 0x%X\n", a5, a6, a7, a8, a3 + 24);
  }

LABEL_5:
  if ((a2 & 2) != 0)
  {
    *(a3 + 120) = CFAbsoluteTimeGetCurrent() - *(a3 + 112);
    if (!_AsyncConnection_StartConnect(*(a3 + 16), a3, a3 + 24, *(a3 + 52), *(a3 + 56), v11, v12, v13))
    {
      v14 = *(a3 + 16);
      v17 = *(v14 + 88);
      v16 = (v14 + 88);
      v15 = v17;
      if (v17)
      {
        if (v15 == a3)
        {
LABEL_13:
          *v16 = *(v15 + 8);
        }

        else
        {
          while (1)
          {
            v18 = v15;
            v15 = *(v15 + 8);
            if (!v15)
            {
              break;
            }

            if (v15 == a3)
            {
              v16 = (v18 + 8);
              goto LABEL_13;
            }
          }
        }
      }

      _AsyncConnection_ReleaseOperation(a3);
    }
  }
}

void _AsyncConnection_WakeResolveCallback(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4 && gLogCategory_AsyncCnx <= 90 && (gLogCategory_AsyncCnx != -1 || _LogCategory_Initialize(&gLogCategory_AsyncCnx, 0x5Au)))
  {
    LogPrintF(&gLogCategory_AsyncCnx, "void _AsyncConnection_WakeResolveCallback(DNSServiceRef, DNSServiceFlags, uint32_t, DNSServiceErrorType, const char *, const char *, uint16_t, uint16_t, const unsigned char *, void *)", 0x5Au, "### WakeResolve failed: '%s', ifindex %u, %#m\n", a5, a6, a7, a8, a5);
  }
}

uint64_t AsyncConnection_ConnectSyncEx(const char *a1, int a2, int a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t), uint64_t a10, _DWORD *a11)
{
  dsema = 0;
  if (!*a1)
  {
    return 4294960591;
  }

  v36 = 0;
  v19 = dispatch_queue_create(a1, 0);
  object = v19;
  if (!v19)
  {
    v21 = 4294960596;
LABEL_22:
    if (dsema)
    {
      dispatch_release(dsema);
    }

    goto LABEL_24;
  }

  v20 = v19;
  dsema = dispatch_semaphore_create(0);
  if (dsema)
  {
    v33 = 0;
    v36 = -6700;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0;
    v50 = 160;
    v37 = a1;
    v38 = a2;
    v39 = a3;
    v40 = a4;
    v41 = a5;
    v42 = a6;
    v43 = a7;
    v44 = a8;
    v45 = _AsyncConnection_ConnectSyncHandler;
    p_object = &object;
    v47 = v20;
    v48 = 0;
    v21 = AsyncConnection_ConnectEx(&v33, &v37);
    if (!v21)
    {
      if (a9)
      {
        v22 = 1;
        v23 = v33;
        while (1)
        {
          while (1)
          {
            v24 = v22;
            v25 = dispatch_time(0, 250000000);
            if (!dispatch_semaphore_wait(dsema, v25))
            {
              if ((v24 & 1) == 0)
              {
                goto LABEL_20;
              }

              goto LABEL_19;
            }

            v22 = 0;
            if (v24)
            {
              v26 = a9(a10);
              v22 = 1;
              if (v26)
              {
                break;
              }
            }
          }

          v31 = *(v23 + 152);
          if (*v31 <= 50)
          {
            if (*v31 != -1)
            {
              goto LABEL_12;
            }

            if (_LogCategory_Initialize(v31, 0x32u))
            {
              break;
            }
          }

LABEL_14:
          dispatch_async_f(*(v23 + 112), v23, _AsyncConnection_UserRelease);
          v22 = 0;
        }

        v31 = *(v23 + 152);
LABEL_12:
        LogPrintF(v31, "OSStatus AsyncConnection_ConnectSyncEx(const char *, int, AsyncConnectionFlags, uint64_t, int, int, AsyncConnectionProgressFunc, void *, AsyncConnectionWaitFunc, void *, SocketRef *)", 0x32u, "### Canceling connect to %s\n", v27, v28, v29, v30, a1);
        goto LABEL_14;
      }

      dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
      v23 = v33;
LABEL_19:
      dispatch_async_f(*(v23 + 112), v23, _AsyncConnection_UserRelease);
LABEL_20:
      v21 = v36;
      if (!v36)
      {
        *a11 = HIDWORD(v36);
      }
    }

    goto LABEL_22;
  }

  v21 = 4294960596;
LABEL_24:
  if (object)
  {
    dispatch_release(object);
  }

  return v21;
}

intptr_t _AsyncConnection_ConnectSyncHandler(int a1, int a2, uint64_t a3)
{
  *(a3 + 16) = a2;
  if (!a2)
  {
    *(a3 + 20) = a1;
  }

  return dispatch_semaphore_signal(*(a3 + 8));
}

uint64_t SineTable_Create(void *a1, int a2, int a3)
{
  v6 = malloc_type_malloc(2 * a2 + 12, 0x1000040BDFB0063uLL);
  if (!v6)
  {
    return 4294960568;
  }

  v7 = v6;
  *v6 = a2;
  v6[1] = a3;
  v6[2] = 0;
  if (a2 >= 1)
  {
    v8 = 0;
    v36 = 6.28318531 / a2;
    v9 = a2;
    v10 = (a2 + 7) & 0xFFFFFFF8;
    v11 = vdupq_n_s64(v9 - 1);
    v12 = xmmword_191FF93E0;
    v13 = xmmword_191FF93F0;
    v14 = xmmword_191FF9400;
    v15 = xmmword_191FF9410;
    v34 = vdupq_n_s64(8uLL);
    v16 = v6 + 7;
    v35 = v11;
    do
    {
      v42 = v14;
      v43 = v13;
      v44 = v12;
      v41 = v15;
      v17 = vcgeq_u64(v11, v15);
      v18 = vmovn_s64(v17);
      *v17.i8 = vuzp1_s16(v18, *v17.i8);
      v38 = vuzp1_s8(*v17.i8, *v17.i8).u8[0];
      v19 = vdupq_n_s32(v8);
      v20 = vorrq_s8(v19, xmmword_191FF9420);
      v21.i64[0] = v20.u32[2];
      v21.i64[1] = v20.u32[3];
      v22 = vcvtq_f64_u64(v21);
      v21.i64[0] = v20.u32[0];
      v21.i64[1] = v20.u32[1];
      v23 = vmulq_n_f64(vcvtq_f64_u64(v21), v36);
      v45 = vmulq_n_f64(v22, v36);
      *v19.i8 = vorr_s8(*v19.i8, 0x700000006);
      v21.i64[0] = v19.u32[0];
      v21.i64[1] = v19.u32[1];
      v47 = vmulq_n_f64(vcvtq_f64_u64(v21), v36);
      v49 = v23;
      v50 = sin(v36 * v8);
      v24 = sin(v36 * (v8 + 1));
      v25.f64[0] = v50;
      v25.f64[1] = v24;
      v51 = v25;
      v39 = sin(v45.f64[1]);
      v40 = sin(v45.f64[0]);
      v46 = sin(v47.f64[1]);
      v48 = sin(v47.f64[0]);
      v37 = sin(v49.f64[1]);
      v26.f64[0] = sin(v49.f64[0]);
      if (v38)
      {
        *(v16 - 1) = (32767.0 * v51.f64[0]);
      }

      if (vuzp1_s8(vuzp1_s16(v18, *&v26), *&v26).i8[1])
      {
        *v16 = vmuld_lane_f64(32767.0, v51, 1);
      }

      v26.f64[1] = v37;
      v11 = v35;
      v27.f64[0] = v48;
      v28.f64[0] = v40;
      if (vuzp1_s8(vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v35, *&v42))), *&v26).i8[2])
      {
        v16[1] = (32767.0 * v26.f64[0]);
        v16[2] = vmuld_lane_f64(32767.0, v26, 1);
      }

      v28.f64[1] = v39;
      v29 = vmovn_s64(vcgeq_u64(v35, v43));
      if (vuzp1_s8(*&v29, vuzp1_s16(v29, v29)).i32[1])
      {
        v16[3] = (32767.0 * v40);
      }

      v30 = vuzp1_s16(v29, v29);
      if (vuzp1_s8(v30, v30).i8[5])
      {
        v16[4] = vmuld_lane_f64(32767.0, v28, 1);
      }

      v27.f64[1] = v46;
      v31 = vmovn_s64(vcgeq_u64(v35, v44));
      if (vuzp1_s8(*&v31, vuzp1_s16(v31, v31)).i8[6])
      {
        v16[5] = (32767.0 * v48);
      }

      v32 = vuzp1_s16(v31, v31);
      if (vuzp1_s8(v32, v32).i8[7])
      {
        v16[6] = vmuld_lane_f64(32767.0, v27, 1);
      }

      v8 += 8;
      v13 = vaddq_s64(v43, v34);
      v14 = vaddq_s64(v42, v34);
      v15 = vaddq_s64(v41, v34);
      v12 = vaddq_s64(v44, v34);
      v16 += 8;
    }

    while (v10 != v8);
  }

  result = 0;
  *a1 = v7;
  return result;
}

_DWORD *SineTable_GetSamples(_DWORD *result, int a2, int a3, _WORD *a4)
{
  v4 = result[2];
  if (a3 >= 1)
  {
    v5 = *result;
    v6 = result[1];
    v7 = &a4[2 * a3];
    do
    {
      v8 = *(result + v4 + 6);
      v9 = v4 + v6;
      if (v9 <= v5)
      {
        v10 = 0;
      }

      else
      {
        v10 = v5;
      }

      v4 = v9 - v10;
      if (a2 >= 1)
      {
        v11 = 0;
      }

      else
      {
        v11 = v8;
      }

      if (a2 < 0)
      {
        v8 = 0;
      }

      *a4 = v11;
      a4[1] = v8;
      a4 += 2;
    }

    while (a4 < v7);
  }

  result[2] = v4;
  return result;
}

uint64_t _AudioStreamGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAudioStreamTypeID = result;
  return result;
}

void _AudioStreamFinalize(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 176) = 0;
  }
}

void *__AudioToolboxLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/AudioToolbox.framework/AudioToolbox", 2);
  AudioToolboxLibrary_sLib = result;
  return result;
}

uint64_t initAudioUnitGetProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (AudioToolboxLibrary_sOnce != -1)
  {
    dispatch_once(&AudioToolboxLibrary_sOnce, &__block_literal_global);
  }

  v12 = dlsym(AudioToolboxLibrary_sLib, "AudioUnitGetProperty");
  softLinkAudioUnitGetProperty[0] = v12;

  return (v12)(a1, a2, a3, a4, a5, a6);
}

uint64_t initAUGraphNodeInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (AudioToolboxLibrary_sOnce != -1)
  {
    dispatch_once(&AudioToolboxLibrary_sOnce, &__block_literal_global);
  }

  v8 = dlsym(AudioToolboxLibrary_sLib, "AUGraphNodeInfo");
  softLinkAUGraphNodeInfo[0] = v8;

  return (v8)(a1, a2, a3, a4);
}

uint64_t _AudioStreamSetProperty(uint64_t a1, CFTypeRef cf1, __CFString *a3)
{
  if (CFEqual(cf1, @"audioType"))
  {
    if (!a3)
    {
      return 4294960540;
    }

    v6 = CFGetTypeID(a3);
    if (v6 != CFStringGetTypeID())
    {
      return 4294960540;
    }

    v7 = *(a1 + 176);
    CFRetain(a3);
    *(a1 + 176) = a3;
    if (v7)
    {
      CFRelease(v7);
    }

    return 0;
  }

  v15 = 0;
  if (!CFEqual(cf1, @"format"))
  {
    if (CFEqual(cf1, @"input"))
    {
      *(a1 + 97) = CFGetInt64(a3, 0) != 0;
      return 0;
    }

    if (CFEqual(cf1, @"preferredLatency"))
    {
      v16 = 0;
      v9 = CFGetInt64(a3, &v16);
      result = v16;
      if (!v16)
      {
        if (!HIDWORD(v9))
        {
          *(a1 + 224) = v9;
          return 0;
        }

        result = 4294960586;
      }

      *(a1 + 224) = v9;
      return result;
    }

    if (CFEqual(cf1, @"threadName") || CFEqual(cf1, @"threadPriority"))
    {
      return 0;
    }

    if (CFEqual(cf1, @"varispeedEnabled"))
    {
      *(a1 + 64) = CFGetInt64(a3, 0) != 0;
      return 0;
    }

    if (CFEqual(cf1, @"varispeedRate"))
    {
      if (!*(a1 + 72))
      {
        return 4294960551;
      }

      v10 = CFGetDouble(a3, &v15);
      result = v15;
      if (v15)
      {
        return result;
      }

      v11 = v10 / *(a1 + 184);
      result = (softLinkAudioUnitSetParameter[0])(*(a1 + 72), 0, 0, 0, 0, v11);
    }

    else
    {
      if (CFEqual(cf1, @"voice"))
      {
        *(a1 + 80) = CFGetInt64(a3, 0) != 0;
        return 0;
      }

      if (!CFEqual(cf1, @"volume"))
      {
        return 4294960582;
      }

      v12 = CFGetDouble(a3, &v15);
      result = v15;
      if (v15)
      {
        return result;
      }

      v13 = v12;
      *(a1 + 132) = v13;
      v14 = *(a1 + 56);
      if (!v14)
      {
        return 0;
      }

      result = (softLinkAudioUnitSetParameter[0])(v14, 0, 2, 0, 0, v13);
    }

    if (result)
    {
      return result;
    }

    return 0;
  }

  CFGetData(a3, (a1 + 184), 0x28uLL, 0, &v15);
  result = v15;
  if (!v15)
  {
    return 0;
  }

  return result;
}

uint64_t initAudioUnitSetParameter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6)
{
  if (AudioToolboxLibrary_sOnce != -1)
  {
    dispatch_once(&AudioToolboxLibrary_sOnce, &__block_literal_global);
  }

  v12 = dlsym(AudioToolboxLibrary_sLib, "AudioUnitSetParameter");
  softLinkAudioUnitSetParameter[0] = v12;
  v13.n128_f32[0] = a6;

  return (v12)(a1, a2, a3, a4, a5, v13);
}

void AudioStreamStop(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    dispatch_source_cancel(*(a1 + 136));
    dispatch_release(v2);
    *(a1 + 136) = 0;
  }

  if (*(a1 + 34))
  {
    (softLinkAUGraphStop[0])(*(a1 + 24));
    *(a1 + 34) = 0;
  }

  if (*(a1 + 33))
  {
    (softLinkAUGraphUninitialize[0])(*(a1 + 24));
    *(a1 + 33) = 0;
  }

  if (*(a1 + 32))
  {
    (softLinkAUGraphClose[0])(*(a1 + 24));
    *(a1 + 32) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    (softLinkDisposeAUGraph[0])(v3);
    *(a1 + 24) = 0;
  }

  *(a1 + 56) = 0;
  *(a1 + 68) = 0;
  *(a1 + 72) = 0;
  *(a1 + 84) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 44) = 0;
  *(a1 + 36) = 0;
  v4 = *(a1 + 112);
  if (v4)
  {
    free(v4);
    *(a1 + 112) = 0;
  }

  *(a1 + 128) = 0;
}

uint64_t initDisposeAUGraph(uint64_t a1)
{
  if (AudioToolboxLibrary_sOnce != -1)
  {
    dispatch_once(&AudioToolboxLibrary_sOnce, &__block_literal_global);
  }

  v2 = dlsym(AudioToolboxLibrary_sLib, "DisposeAUGraph");
  softLinkDisposeAUGraph[0] = v2;

  return (v2)(a1);
}

uint64_t initAUGraphClose(uint64_t a1)
{
  if (AudioToolboxLibrary_sOnce != -1)
  {
    dispatch_once(&AudioToolboxLibrary_sOnce, &__block_literal_global);
  }

  v2 = dlsym(AudioToolboxLibrary_sLib, "AUGraphClose");
  softLinkAUGraphClose[0] = v2;

  return (v2)(a1);
}

uint64_t initAUGraphUninitialize(uint64_t a1)
{
  if (AudioToolboxLibrary_sOnce != -1)
  {
    dispatch_once(&AudioToolboxLibrary_sOnce, &__block_literal_global);
  }

  v2 = dlsym(AudioToolboxLibrary_sLib, "AUGraphUninitialize");
  softLinkAUGraphUninitialize[0] = v2;

  return (v2)(a1);
}

uint64_t initAUGraphStop(uint64_t a1)
{
  if (AudioToolboxLibrary_sOnce != -1)
  {
    dispatch_once(&AudioToolboxLibrary_sOnce, &__block_literal_global);
  }

  v2 = dlsym(AudioToolboxLibrary_sLib, "AUGraphStop");
  softLinkAUGraphStop[0] = v2;

  return (v2)(a1);
}

uint64_t initAUGraphInitialize(uint64_t a1)
{
  if (AudioToolboxLibrary_sOnce != -1)
  {
    dispatch_once(&AudioToolboxLibrary_sOnce, &__block_literal_global);
  }

  v2 = dlsym(AudioToolboxLibrary_sLib, "AUGraphInitialize");
  softLinkAUGraphInitialize[0] = v2;

  return (v2)(a1);
}

uint64_t _AudioStreamInputCallBack(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = (*(a1 + 208) * a5);
  if (*(a1 + 120) < v5)
  {
    return 4294960545;
  }

  v14 = 1;
  v15 = *(a1 + 212);
  v16 = v5;
  v9 = a1 + 104;
  v8 = *(a1 + 104);
  v17 = *(v9 + 8);
  result = (softLinkAudioUnitRender[0])(v8, a2, a3, a4, a5, &v14);
  if (!result)
  {
    v11.i64[0] = *a3;
    *v12.i64 = *a3 + trunc(*a3 * 2.32830644e-10) * -4294967300.0;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    (*(a1 + 144))(*vbslq_s8(vnegq_f64(v13), v12, v11).i64, a3[1], *(a1 + 112), v5, *(a1 + 152));
    return 0;
  }

  return result;
}

uint64_t initAudioUnitRender(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (AudioToolboxLibrary_sOnce != -1)
  {
    dispatch_once(&AudioToolboxLibrary_sOnce, &__block_literal_global);
  }

  v12 = dlsym(AudioToolboxLibrary_sLib, "AudioUnitRender");
  softLinkAudioUnitRender[0] = v12;

  return (v12)(a1, a2, a3, a4, a5, a6);
}

uint64_t initAUGraphSetNodeInputCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (AudioToolboxLibrary_sOnce != -1)
  {
    dispatch_once(&AudioToolboxLibrary_sOnce, &__block_literal_global);
  }

  v8 = dlsym(AudioToolboxLibrary_sLib, "AUGraphSetNodeInputCallback");
  softLinkAUGraphSetNodeInputCallback[0] = v8;

  return (v8)(a1, a2, a3, a4);
}

uint64_t _AudioStreamOutputCallBack(uint64_t a1, int8x16_t a2, int8x16_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, int a7, uint64_t a8)
{
  a2.i64[0] = *a5;
  *a3.i64 = *a5 + trunc(*a5 * 2.32830644e-10) * -4294967300.0;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  (*(a1 + 160))(*vbslq_s8(vnegq_f64(v8), a3, a2).i64, a5[1], *(a8 + 16), (*(a1 + 208) * a7), *(a1 + 168));
  return 0;
}

uint64_t initAUGraphConnectNodeInput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (AudioToolboxLibrary_sOnce != -1)
  {
    dispatch_once(&AudioToolboxLibrary_sOnce, &__block_literal_global);
  }

  v10 = dlsym(AudioToolboxLibrary_sLib, "AUGraphConnectNodeInput");
  softLinkAUGraphConnectNodeInput[0] = v10;

  return (v10)(a1, a2, a3, a4, a5);
}

uint64_t initAudioUnitSetProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (AudioToolboxLibrary_sOnce != -1)
  {
    dispatch_once(&AudioToolboxLibrary_sOnce, &__block_literal_global);
  }

  v12 = dlsym(AudioToolboxLibrary_sLib, "AudioUnitSetProperty");
  softLinkAudioUnitSetProperty[0] = v12;

  return (v12)(a1, a2, a3, a4, a5, a6);
}

uint64_t initAUGraphAddNode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (AudioToolboxLibrary_sOnce != -1)
  {
    dispatch_once(&AudioToolboxLibrary_sOnce, &__block_literal_global);
  }

  v6 = dlsym(AudioToolboxLibrary_sLib, "AUGraphAddNode");
  softLinkAUGraphAddNode[0] = v6;

  return (v6)(a1, a2, a3);
}

uint64_t initAUGraphOpen(uint64_t a1)
{
  if (AudioToolboxLibrary_sOnce != -1)
  {
    dispatch_once(&AudioToolboxLibrary_sOnce, &__block_literal_global);
  }

  v2 = dlsym(AudioToolboxLibrary_sLib, "AUGraphOpen");
  softLinkAUGraphOpen[0] = v2;

  return (v2)(a1);
}

uint64_t initNewAUGraph(uint64_t a1)
{
  if (AudioToolboxLibrary_sOnce != -1)
  {
    dispatch_once(&AudioToolboxLibrary_sOnce, &__block_literal_global);
  }

  v2 = dlsym(AudioToolboxLibrary_sLib, "NewAUGraph");
  softLinkNewAUGraph[0] = v2;

  return (v2)(a1);
}

uint64_t AudioStreamStart(uint64_t a1)
{
  v3 = (a1 + 24);
  v2 = *(a1 + 24);
  if (v2)
  {
    goto LABEL_2;
  }

  v26 = 0uLL;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  v22 = 0;
  v23 = 0;
  memset(v21, 0, sizeof(v21));
  v5 = (softLinkNewAUGraph[0])(v3);
  if (v5)
  {
    goto LABEL_21;
  }

  v5 = (softLinkAUGraphOpen[0])(*v3);
  if (v5)
  {
    goto LABEL_21;
  }

  *(a1 + 32) = 1;
  v10 = *(a1 + 80) ? 1987078511 : 1919512419;
  LODWORD(v26) = 1635086197;
  DWORD1(v26) = v10;
  *(&v26 + 1) = 1634758764;
  v27 = 0;
  v5 = (softLinkAUGraphAddNode[0])(*(a1 + 24), &v26, a1 + 84);
  if (v5)
  {
    goto LABEL_21;
  }

  v5 = (softLinkAUGraphNodeInfo[0])(*(a1 + 24), *(a1 + 84), 0, a1 + 88);
  if (v5)
  {
    goto LABEL_21;
  }

  v26 = xmmword_191FF9430;
  v27 = 0;
  v5 = (softLinkAUGraphAddNode[0])(*(a1 + 24), &v26, a1 + 48);
  if (v5)
  {
    goto LABEL_21;
  }

  v5 = (softLinkAUGraphNodeInfo[0])(*(a1 + 24), *(a1 + 48), 0, a1 + 56);
  if (v5)
  {
    goto LABEL_21;
  }

  HIDWORD(v23) = 1;
  v5 = (softLinkAudioUnitSetProperty[0])(*(a1 + 56), 11, 1, 0, &v23 + 4, 4);
  if (v5)
  {
    goto LABEL_21;
  }

  *&v21[0] = 0x40E7700000000000;
  *(v21 + 8) = xmmword_191FF9440;
  v11 = *(a1 + 212);
  DWORD2(v21[1]) = 4;
  HIDWORD(v21[1]) = v11;
  v22 = 32;
  v5 = (softLinkAudioUnitSetProperty[0])(*(a1 + 56), 8, 2, 0, v21, 40);
  if (v5)
  {
    goto LABEL_21;
  }

  v5 = (softLinkAudioUnitSetParameter[0])(*(a1 + 56), 0, 1, 0, 0, 1.0);
  if (v5)
  {
    goto LABEL_21;
  }

  v5 = (softLinkAudioUnitSetParameter[0])(*(a1 + 56), 0, 2, 0, 0, *(a1 + 132));
  if (v5)
  {
    goto LABEL_21;
  }

  v5 = (softLinkAUGraphConnectNodeInput[0])(*v3, *(a1 + 48), 0, *(a1 + 84), 0);
  if (v5)
  {
    goto LABEL_21;
  }

  if (*(a1 + 64))
  {
    v26 = xmmword_191FF9450;
    v27 = 0;
    v5 = (softLinkAUGraphAddNode[0])(*(a1 + 24), &v26, a1 + 68);
    if (v5)
    {
      goto LABEL_21;
    }

    v5 = (softLinkAUGraphNodeInfo[0])(*(a1 + 24), *(a1 + 68), 0, a1 + 72);
    if (v5)
    {
      goto LABEL_21;
    }

    *&v21[0] = 0x40E7700000000000;
    *(v21 + 8) = xmmword_191FF9440;
    v13 = *(a1 + 212);
    DWORD2(v21[1]) = 4;
    HIDWORD(v21[1]) = v13;
    v22 = 32;
    v5 = (softLinkAudioUnitSetProperty[0])(*(a1 + 72), 8, 2, 0, v21, 40);
    if (v5)
    {
      goto LABEL_21;
    }

    HIDWORD(v23) = 127;
    v5 = (softLinkAudioUnitSetProperty[0])(*(a1 + 72), 26, 0, 0, &v23 + 4, 4);
    if (v5)
    {
      goto LABEL_21;
    }

    v5 = (softLinkAUGraphConnectNodeInput[0])(*v3, *(a1 + 68), 0, *(a1 + 48), 0);
    if (v5)
    {
      goto LABEL_21;
    }
  }

  v26 = xmmword_191FF9460;
  v27 = 0;
  v5 = (softLinkAUGraphAddNode[0])(*(a1 + 24), &v26, a1 + 36);
  if (v5)
  {
    goto LABEL_21;
  }

  v5 = (softLinkAUGraphNodeInfo[0])(*(a1 + 24), *(a1 + 36), 0, a1 + 40);
  if (v5)
  {
    goto LABEL_21;
  }

  v5 = (softLinkAudioUnitSetProperty[0])(*(a1 + 40), 8, 1, 0, a1 + 184, 40);
  if (v5)
  {
    goto LABEL_21;
  }

  *&v21[0] = 0x40E7700000000000;
  *(v21 + 8) = xmmword_191FF9440;
  v14 = *(a1 + 212);
  DWORD2(v21[1]) = 4;
  HIDWORD(v21[1]) = v14;
  v22 = 32;
  if (*(a1 + 64))
  {
    *&v21[0] = *(a1 + 184);
  }

  v5 = (softLinkAudioUnitSetProperty[0])(*(a1 + 40), 8, 2, 0, v21, 40);
  if (v5)
  {
    goto LABEL_21;
  }

  v24 = _AudioStreamOutputCallBack;
  v25 = a1;
  v5 = (softLinkAUGraphSetNodeInputCallback[0])(*(a1 + 24), *(a1 + 36), 0, &v24);
  if (v5)
  {
    goto LABEL_21;
  }

  v15 = *(a1 + 68);
  if (!v15)
  {
    v15 = *(a1 + 48);
  }

  v5 = (softLinkAUGraphConnectNodeInput[0])(*(a1 + 24), *(a1 + 36), 0, v15, 0);
  if (v5)
  {
    goto LABEL_21;
  }

  if (*(a1 + 97))
  {
    v16 = *(a1 + 88);
    *(a1 + 104) = v16;
    HIDWORD(v23) = 1;
    v5 = (softLinkAudioUnitSetProperty[0])(v16, 2003, 1, 1, &v23 + 4, 4);
    if (v5)
    {
      goto LABEL_21;
    }

    v5 = (softLinkAudioUnitSetProperty[0])(*(a1 + 104), 8, 2, 1, a1 + 184, 40);
    if (v5)
    {
      goto LABEL_21;
    }

    v23 = 4;
    v17 = (softLinkAudioUnitGetProperty[0])(*(a1 + 104), 14, 0, 0, &v23 + 4, &v23);
    v18 = HIDWORD(v23);
    if (HIDWORD(v23) <= 0x1000)
    {
      v18 = 4096;
    }

    if (v17)
    {
      v18 = 4096;
    }

    v19 = (v18 * DWORD2(v21[1]));
    HIDWORD(v23) = v18 * DWORD2(v21[1]);
    *(a1 + 120) = v19;
    v20 = malloc_type_malloc(v19, 0x100004077774924uLL);
    *(a1 + 112) = v20;
    if (!v20)
    {
      v4 = 4294960568;
LABEL_22:
      if (gLogCategory_AudioUtils <= 50 && (gLogCategory_AudioUtils != -1 || _LogCategory_Initialize(&gLogCategory_AudioUtils, 0x32u)))
      {
        LogPrintF(&gLogCategory_AudioUtils, "OSStatus AudioStreamPrepare(AudioStreamRef)", 0x32u, "### Audio stream prepare failed: %#m\n", v6, v7, v8, v9, v4);
      }

      AudioStreamStop(a1);
      return v4;
    }

    v24 = _AudioStreamInputCallBack;
    v25 = a1;
    v5 = (softLinkAudioUnitSetProperty[0])(*(a1 + 104), 2005, 0, 0, &v24, 16);
    if (v5)
    {
      goto LABEL_21;
    }
  }

  v5 = (softLinkAUGraphInitialize[0])(*v3);
  if (v5)
  {
LABEL_21:
    v4 = v5;
    goto LABEL_22;
  }

  *(a1 + 33) = 1;
  v2 = *(a1 + 24);
  if (!v2)
  {
    goto LABEL_6;
  }

LABEL_2:
  if (*(a1 + 96))
  {
    (softLinkAUGraphStop[0])(v2);
    v2 = *v3;
  }

  v4 = (softLinkAUGraphStart[0])(v2);
  if (!v4)
  {
    *(a1 + 96) = 1;
LABEL_6:
    v4 = 0;
    *(a1 + 128) = 1;
  }

  return v4;
}

uint64_t initAUGraphStart(uint64_t a1)
{
  if (AudioToolboxLibrary_sOnce != -1)
  {
    dispatch_once(&AudioToolboxLibrary_sOnce, &__block_literal_global);
  }

  v2 = dlsym(AudioToolboxLibrary_sLib, "AUGraphStart");
  softLinkAUGraphStart[0] = v2;

  return (v2)(a1);
}

uint64_t AudioStreamTest(int a1)
{
  v11 = 0;
  memset(bytes, 0, sizeof(bytes));
  v9 = 0;
  v2 = SineTable_Create(&v11, 44100, 800);
  if (!v2)
  {
    if (gAudioStreamInitOnce != -1)
    {
      dispatch_once_f(&gAudioStreamInitOnce, 0, _AudioStreamGetTypeID);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v4 = Instance;
      *(Instance + 224) = 0;
      *(Instance + 192) = 0u;
      *(Instance + 208) = 0u;
      *(Instance + 160) = 0u;
      *(Instance + 176) = 0u;
      *(Instance + 128) = 0u;
      *(Instance + 144) = 0u;
      *(Instance + 96) = 0u;
      *(Instance + 112) = 0u;
      *(Instance + 64) = 0u;
      *(Instance + 80) = 0u;
      *(Instance + 32) = 0u;
      *(Instance + 48) = 0u;
      *(Instance + 16) = 0u;
      *(Instance + 132) = 1065353216;
      if (a1)
      {
        *(Instance + 144) = _AudioStreamTestInput;
        *(Instance + 152) = &v9;
        _AudioStreamSetProperty(Instance, @"input", *MEMORY[0x1E695E4D0]);
      }

      v5 = v11;
      v4[20] = _AudioStreamTestOutput;
      v4[21] = v5;
      *bytes = 0x40E5888000000000;
      *&bytes[8] = xmmword_191FF9470;
      *&bytes[24] = xmmword_191FF9480;
      v6 = CFObjectSetBytes(v4, _AudioStreamSetProperty, @"format", bytes, 40);
      if (v6 || (v6 = CFObjectSetInt64(v4, _AudioStreamSetProperty, @"preferredLatency", 100000), v6))
      {
        v2 = v6;
      }

      else
      {
        v2 = AudioStreamStart(v4);
        if (!v2)
        {
          sleep(5u);
          if (a1)
          {
            if (!v9)
            {
              v2 = 4294960550;
            }
          }
        }
      }

      AudioStreamStop(v4);
      CFRelease(v4);
    }

    else
    {
      v2 = 4294960568;
    }
  }

  if (v11)
  {
    free(v11);
  }

  v7 = "FAILED";
  if (!v2)
  {
    v7 = "PASSED";
  }

  printf("AudioStreamTest: %s\n", v7);
  return v2;
}

void _AudioStreamTestOutput(uint64_t a1, uint64_t a2, _WORD *a3, unint64_t a4, _DWORD *a5)
{
  v5 = a5[2];
  if ((a4 >> 2) >= 1)
  {
    v6 = *a5;
    v7 = a5[1];
    v8 = &a3[(2 * (a4 >> 2))];
    do
    {
      v9 = *(a5 + v5 + 6);
      v10 = v5 + v7;
      if (v10 <= v6)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6;
      }

      v5 = v10 - v11;
      *a3 = v9;
      a3[1] = v9;
      a3 += 2;
    }

    while (a3 < v8);
  }

  a5[2] = v5;
}

uint64_t Base64EncodedLinesMaxSize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 1;
    ;
  }

  v5 = (2 * (((a1 + 2) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL;
  v6 = v5 / 0x48;
  if (v5 % 0x48)
  {
    ++v6;
  }

  return v5 + (v3 - a3 + a2) * v6;
}

uint64_t Base64EncodeLinesEx(char *__s, int64_t a2, size_t __len, _BYTE *a4, char a5, char *__b, unint64_t a7, void *a8)
{
  v14 = a2;
  v15 = __s;
  if (a2 == -1)
  {
    v14 = strlen(__s);
  }

  v16 = a4 - 1;
    ;
  }

  if ((a5 & 2) != 0)
  {
    v18 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_";
  }

  else
  {
    v18 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
  }

  v19 = (2 * (((v14 + 2) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL;
  v20 = v19 / 0x48;
  if (v19 % 0x48)
  {
    ++v20;
  }

  v21 = v19 + &v16[__len - a4] * v20;
  if (v21 < v14)
  {
    result = 4294960553;
    goto LABEL_47;
  }

  if (v21 > a7)
  {
    result = 4294960545;
    goto LABEL_47;
  }

  v22 = __b;
  if (__len)
  {
    memset(__b, 9, __len);
    v22 = &__b[__len];
  }

  if (v14 >= 3)
  {
    v23 = 0;
    v24 = &v15[v14];
    do
    {
      if (v23 < 0x48)
      {
        v28 = v23;
      }

      else
      {
        v25 = *a4;
        v26 = a4 + 1;
        if (*a4)
        {
          do
          {
            *v22++ = v25;
            v27 = *v26++;
            v25 = v27;
          }

          while (v27);
        }

        if (__len)
        {
          memset(v22, 9, __len);
          v28 = 0;
          v22 += __len;
        }

        else
        {
          v28 = 0;
        }
      }

      *v22 = v18[*v15 >> 2];
      v22[1] = v18[(v15[1] >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (*v15 & 3))];
      v22[2] = v18[(v15[2] >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v15[1] & 0xF))];
      v22[3] = v18[v15[2] & 0x3F];
      v15 += 3;
      v22 += 4;
      v23 = v28 + 4;
      v14 = v24 - v15;
    }

    while (v24 - v15 > 2);
    if (v14 >= 1 && v28 >= 0x44)
    {
      v29 = *a4;
      if (*a4)
      {
        v30 = a4 + 1;
        do
        {
          *v22++ = v29;
          v31 = *v30++;
          v29 = v31;
        }

        while (v31);
      }

      if (__len)
      {
        memset(v22, 9, __len);
        v22 += __len;
      }
    }
  }

  if (v14 == 2)
  {
    *v22 = v18[*v15 >> 2];
    v22[1] = v18[(v15[1] >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (*v15 & 3))];
    v22[2] = v18[4 * (v15[1] & 0xF)];
    if (a5)
    {
      v22 += 3;
      goto LABEL_39;
    }

LABEL_36:
    v22[3] = 61;
    v22 += 4;
    goto LABEL_39;
  }

  if (v14 == 1)
  {
    *v22 = v18[*v15 >> 2];
    v22[1] = v18[16 * (*v15 & 3)];
    if (a5)
    {
      v22 += 2;
      goto LABEL_39;
    }

    v22[2] = 61;
    goto LABEL_36;
  }

LABEL_39:
  if (v22 != __b)
  {
    v32 = *a4;
    if (*a4)
    {
      v33 = a4 + 1;
      do
      {
        *v22++ = v32;
        v34 = *v33++;
        v32 = v34;
      }

      while (v34);
    }

    result = 0;
    if (a8)
    {
      goto LABEL_44;
    }

    return result;
  }

  result = 0;
LABEL_47:
  v22 = __b;
  if (a8)
  {
LABEL_44:
    *a8 = v22 - __b;
  }

  return result;
}

uint64_t Base64EncodeLinesCopyEx(char *__s, size_t a2, size_t a3, _BYTE *a4, char a5, char **a6, unint64_t *a7)
{
  v12 = a2;
  if (a2 == -1)
  {
    v12 = strlen(__s);
  }

  v14 = a4 - 1;
    ;
  }

  v16 = (2 * (((v12 + 2) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL;
  v17 = v16 / 0x48;
  if (v16 % 0x48)
  {
    ++v17;
  }

  v18 = v16 + &v14[a3 - a4] * v17;
  v26 = v18;
  if (v18 < v12 || v18 == -1)
  {
    return 4294960553;
  }

  v20 = malloc_type_malloc(v18 + 1, 0x100004077774924uLL);
  if (!v20)
  {
    return 4294960568;
  }

  v21 = v20;
  v22 = Base64EncodeLinesEx(__s, v12, a3, a4, a5, v20, v18, &v26);
  if (v22)
  {
    v23 = v22;
    free(v21);
  }

  else
  {
    v24 = v26;
    v21[v26] = 0;
    *a6 = v21;
    v23 = 0;
    if (a7)
    {
      *a7 = v24;
    }
  }

  return v23;
}

uint64_t Base64DecodedSize(char *__s, size_t a2)
{
  v2 = __s;
  if (a2 == -1)
  {
    a2 = strlen(__s);
  }

  result = 0;
  v4 = &v2[a2];
LABEL_4:
  v5 = 0;
  while (v2 < v4)
  {
    v7 = *v2++;
    v6 = v7;
    v8 = kBase64DecodeTable[v7];
    if (v8 != 128)
    {
      if (v8 == 255)
      {
        return result;
      }

      if (v6 == 61)
      {
        break;
      }

      if (v5 > 1)
      {
        if (v5 != 2)
        {
          result += 3;
          goto LABEL_4;
        }

        v5 = 3;
      }

      else if (v5)
      {
        v5 = 2;
      }

      else
      {
        v5 = 1;
      }
    }
  }

  if (v5 == 2)
  {
    v9 = result + 1;
  }

  else
  {
    v9 = result;
  }

  if (v5 != 3)
  {
    return v9;
  }

  result += 2;
  return result;
}

uint64_t _BonjourAdvertiserGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gBonjourAdvertiserTypeID = result;
  return result;
}

uint64_t _BonjourAdvertiserFinalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 48) = 0;
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    _Block_release(v4);
    *(a1 + 56) = 0;
  }

  *(a1 + 64) = 0;
  v5 = *(a1 + 96);
  if (v5)
  {
    free(v5);
    *(a1 + 96) = 0;
  }

  v6 = *(a1 + 136);
  if (v6)
  {
    free(v6);
    *(a1 + 136) = 0;
  }

  v7 = *(a1 + 152);
  if (v7)
  {
    free(v7);
    *(a1 + 152) = 0;
  }

  v8 = *(a1 + 160);
  if (v8)
  {
    free(v8);
    *(a1 + 160) = 0;
  }

  result = *(a1 + 16);
  if (result)
  {
    if ((*(result + 18) & 4) != 0)
    {
      result = LogCategory_Remove(result);
      *(a1 + 16) = 0;
    }
  }

  return result;
}

uint64_t BonjourAdvertiserCreate(void *a1)
{
  if (gBonjourAdvertiserInitOnce != -1)
  {
    dispatch_once_f(&gBonjourAdvertiserInitOnce, 0, _BonjourAdvertiserGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294960568;
  }

  v3 = Instance;
  Instance[9] = 0u;
  Instance[10] = 0u;
  Instance[7] = 0u;
  Instance[8] = 0u;
  Instance[5] = 0u;
  Instance[6] = 0u;
  Instance[3] = 0u;
  Instance[4] = 0u;
  Instance[1] = 0u;
  Instance[2] = 0u;
  v4 = dispatch_queue_create("BonjourAdvertiser", 0);
  v3[3] = v4;
  if (v4)
  {
    result = 0;
    v3[2] = &gLogCategory_BonjourAdvertiser;
    *a1 = v3;
  }

  else
  {
    CFRelease(v3);
    return 4294960596;
  }

  return result;
}

void BonjourAdvertiserGenerateStatisticsNAN(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __BonjourAdvertiserGenerateStatisticsNAN_block_invoke;
  v3[3] = &unk_1E73A2A18;
  v3[4] = a2;
  v3[5] = a1;
  dispatch_async(v2, v3);
}

uint64_t __BonjourAdvertiserGenerateStatisticsNAN_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  v9 = *(*(a1 + 40) + 64);
  if (v9)
  {

    return [v9 generateStatisticsReportWithCompletionHandler:v8];
  }

  else
  {
    v11 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960591, "No NAN publisher", a4, a5, a6, a7, a8, v13);
    v12 = *(v8 + 16);

    return v12(v8, 0, v11);
  }
}

void BonjourAdvertiserReportNANIssue(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __BonjourAdvertiserReportNANIssue_block_invoke;
  v3[3] = &unk_1E73A4340;
  v3[4] = a2;
  v3[5] = a1;
  dispatch_async(v2, v3);
}

uint64_t __BonjourAdvertiserReportNANIssue_block_invoke(uint64_t result)
{
  if (*(*(result + 40) + 64))
  {
    return [*(*(result + 40) + 64) reportIssue:*(result + 32)];
  }

  return result;
}

void BonjourAdvertiserSetNANControlFlags(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __BonjourAdvertiserSetNANControlFlags_block_invoke;
  v3[3] = &__block_descriptor_44_e5_v8__0l;
  v3[4] = a1;
  v4 = a2;
  dispatch_async(v2, v3);
}

uint64_t __BonjourAdvertiserSetNANControlFlags_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 40) = *(a1 + 40);
  return [*(v1 + 64) setControlFlags:?];
}

void BonjourAdvertiserSetNANCustomData(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v4 = *(a1 + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __BonjourAdvertiserSetNANCustomData_block_invoke;
  v5[3] = &__block_descriptor_48_e5_v8__0l;
  v5[4] = a1;
  v5[5] = cf;
  dispatch_async(v4, v5);
}

uint64_t __BonjourAdvertiserSetNANCustomData_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  if (v3)
  {
    CFRelease(v3);
    v2 = *(a1 + 32);
  }

  *(v2 + 48) = *(a1 + 40);
  v4 = *(*(a1 + 32) + 64);

  return [v4 setCustomData:?];
}

void BonjourAdvertiserSetNANInterruptionHandler(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __BonjourAdvertiserSetNANInterruptionHandler_block_invoke;
  v3[3] = &unk_1E73A2A18;
  v3[4] = a2;
  v3[5] = a1;
  dispatch_async(v2, v3);
}

uint64_t __BonjourAdvertiserSetNANInterruptionHandler_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = _Block_copy(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 40);
  v5 = *(v4 + 56);
  if (v5)
  {
    _Block_release(v5);
    v4 = *(a1 + 40);
  }

  *(v4 + 56) = v3;
  v6 = *(v4 + 64);

  return [v6 setInterruptionHandler:v3];
}

void BonjourAdvertiserUpdateLinkStatusNAN(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __BonjourAdvertiserUpdateLinkStatusNAN_block_invoke;
  v3[3] = &__block_descriptor_44_e5_v8__0l;
  v3[4] = a1;
  v4 = a2;
  dispatch_async(v2, v3);
}

uint64_t __BonjourAdvertiserUpdateLinkStatusNAN_block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 64))
  {
    return [*(*(result + 32) + 64) updateLinkStatus:*(result + 40)];
  }

  return result;
}

void BonjourAdvertiserSetDispatchQueue(uint64_t a1, NSObject *a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = MEMORY[0x1E69E96A0];
  }

  dispatch_retain(v3);
  v4 = *(a1 + 24);
  if (v4)
  {
    dispatch_release(v4);
  }

  *(a1 + 24) = v3;
}

uint64_t BonjourAdvertiserSetTXTRecord(uint64_t a1, const void *a2, size_t size)
{
  if (size)
  {
    v6 = malloc_type_malloc(size, 0x100004077774924uLL);
    if (!v6)
    {
      return 4294960568;
    }

    v7 = v6;
    memcpy(v6, a2, size);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 160);
  if (v8)
  {
    free(v8);
  }

  result = 0;
  *(a1 + 160) = v7;
  *(a1 + 168) = size;
  *(a1 + 170) = 1;
  return result;
}

uint64_t BonjourAdvertiserStart(dispatch_queue_t *a1)
{
  CFRetain(a1);
  dispatch_async_f(a1[3], a1, _BonjourAdvertiserStart);
  return 0;
}

void _BonjourAdvertiserStart(_BYTE *cf)
{
  if (!cf[88])
  {
    cf[88] = 1;
    CFRetain(cf);
  }

  *(cf + 10) = mach_absolute_time();
  _BonjourAdvertiserUpdateDirect(cf);

  CFRelease(cf);
}

void _BonjourAdvertiserUpdateDirect(uint64_t a1)
{
  if (*(a1 + 88))
  {
    v3 = a1 + 32;
    v2 = *(a1 + 32);
    if ((*(v3 + 78) & 0x80) != 0)
    {
      if (v2)
      {
        DNSServiceRefDeallocate(v2);
        v8 = 0;
        *v3 = 0;
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (!v2)
    {
LABEL_14:
      if (*(a1 + 144))
      {
        v10 = *(a1 + 104) | 0x100000;
      }

      else
      {
        v10 = *(a1 + 104);
      }

      if (*(a1 + 116))
      {
        v11 = if_nametoindex((a1 + 116));
        if (!v11)
        {
          v8 = -6727;
          goto LABEL_27;
        }
      }

      else
      {
        v11 = *(a1 + 112);
      }

      v12 = DNSServiceRegister(v3, v10, v11, *(a1 + 136), *(a1 + 152), *(a1 + 96), 0, bswap32(*(a1 + 148)) >> 16, *(a1 + 168), *(a1 + 160), _BonjourAdvertiserRegistrationHandler, a1);
      if (v12)
      {
        v8 = v12;
LABEL_27:
        v18 = *(a1 + 64);
        if ((*(a1 + 111) & 2) == 0)
        {
          [*(a1 + 64) invalidate];

          v19 = 0;
          *(a1 + 64) = 0;
          if (!v8)
          {
            goto LABEL_42;
          }

LABEL_43:
          if (!*(a1 + 72))
          {
            v25 = mach_absolute_time();
            v26 = UpTicksToMilliseconds(v25 - *(a1 + 80));
            if (v26 >= 0x2B69)
            {
              v31 = 1;
            }

            else
            {
              v31 = 11113 - v26;
            }

            v32 = *(a1 + 16);
            if (*v32 > 50)
            {
              goto LABEL_51;
            }

            if (*v32 == -1)
            {
              if (!_LogCategory_Initialize(v32, 0x32u))
              {
LABEL_51:
                v33 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(a1 + 24));
                *(a1 + 72) = v33;
                if (v33)
                {
                  dispatch_set_context(v33, a1);
                  dispatch_source_set_event_handler_f(*(a1 + 72), _BonjourAdvertiserRetryTimer);
                  v34 = *(a1 + 72);
                  v35 = dispatch_time(0, 1000000 * v31);
                  dispatch_source_set_timer(v34, v35, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
                  dispatch_resume(*(a1 + 72));
                }

                goto LABEL_53;
              }

              v32 = *(a1 + 16);
            }

            LogPrintF(v32, "void _BonjourAdvertiserHandleError(BonjourAdvertiserRef, OSStatus)", 0x32u, "### Bonjour register for %s failed, retrying in %llu ms: %#m\n", v27, v28, v29, v30, *(a1 + 152));
            goto LABEL_51;
          }

LABEL_53:
          *(a1 + 170) = 0;
          return;
        }

        v20 = *(a1 + 64);
        if (!v18)
        {
          v20 = objc_alloc_init(CUNANPublisher);
          [(CUNANPublisher *)v20 setControlFlags:*(a1 + 40)];
          [(CUNANPublisher *)v20 setCustomData:*(a1 + 48)];
          [(CUNANPublisher *)v20 setDispatchQueue:*(a1 + 24)];
          [(CUNANPublisher *)v20 setInterruptionHandler:*(a1 + 56)];
          v21 = *(a1 + 152);
          if (v21)
          {
            v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
          }

          [(CUNANPublisher *)v20 setServiceType:v21];
          [(CUNANPublisher *)v20 setTrafficFlags:*(a1 + 172)];
          *(a1 + 64) = v20;
        }

        v22 = *(a1 + 136);
        if (v22)
        {
          v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
          v20 = *(a1 + 64);
        }

        v36 = 0;
        [(CUNANPublisher *)v20 setName:v22];
        [*(a1 + 64) setPort:*(a1 + 148)];
        if (*(a1 + 170))
        {
          v23 = CFDictionaryCreateWithTXTRecordBytes(*(a1 + 160), *(a1 + 168), &v36);
          if (!v23)
          {
            v19 = v36;
            if (v8)
            {
              goto LABEL_43;
            }

            goto LABEL_42;
          }

          v24 = v23;
          [*(a1 + 64) setTextInfo:v23];
          CFRelease(v24);
        }

        if (!v18)
        {
          [*(a1 + 64) activateWithCompletion:0];
        }

        v19 = 0;
        if (v8)
        {
          goto LABEL_43;
        }

LABEL_42:
        if (!v19)
        {
          goto LABEL_53;
        }

        goto LABEL_43;
      }

      DNSServiceSetDispatchQueue(*(a1 + 32), *(a1 + 24));
      v17 = *(a1 + 16);
      if (*v17 <= 50)
      {
        if (*v17 == -1)
        {
          if (!_LogCategory_Initialize(v17, 0x32u))
          {
            goto LABEL_26;
          }

          v17 = *(a1 + 16);
        }

        LogPrintF(v17, "OSStatus _BonjourAdvertiserUpdateDNSService(BonjourAdvertiserRef)", 0x32u, "Registering Bonjour %s port %d\n", v13, v14, v15, v16, *(a1 + 152));
      }

LABEL_26:
      v8 = 0;
      goto LABEL_27;
    }

    if (DNSServiceUpdateRecord(v2, 0, 0, *(a1 + 168), *(a1 + 160), 0))
    {
      if (*v3)
      {
        DNSServiceRefDeallocate(*v3);
        *v3 = 0;
      }

      goto LABEL_14;
    }

    v9 = *(a1 + 16);
    if (*v9 <= 50)
    {
      if (*v9 != -1)
      {
LABEL_11:
        LogPrintF(v9, "OSStatus _BonjourAdvertiserUpdateDNSService(BonjourAdvertiserRef)", 0x32u, "Updated Bonjour TXT for %s\n", v4, v5, v6, v7, *(a1 + 152));
        goto LABEL_13;
      }

      if (_LogCategory_Initialize(v9, 0x32u))
      {
        v9 = *(a1 + 16);
        goto LABEL_11;
      }
    }

LABEL_13:
    if (*v3)
    {
      goto LABEL_26;
    }

    goto LABEL_14;
  }
}

uint64_t _BonjourAdvertiserRetryTimer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 16);
  if (*v9 <= 50)
  {
    if (*v9 != -1)
    {
LABEL_3:
      LogPrintF(v9, "void _BonjourAdvertiserRetryTimer(void *)", 0x32u, "Retrying Bonjour register for %s after failure\n", a5, a6, a7, a8, *(a1 + 152));
      goto LABEL_5;
    }

    if (_LogCategory_Initialize(v9, 0x32u))
    {
      v9 = *(a1 + 16);
      goto LABEL_3;
    }
  }

LABEL_5:
  v10 = *(a1 + 72);
  if (v10)
  {
    dispatch_source_cancel(*(a1 + 72));
    dispatch_release(v10);
    *(a1 + 72) = 0;
  }

  *(a1 + 80) = mach_absolute_time();

  return _BonjourAdvertiserUpdateDirect(a1);
}

void _BonjourAdvertiserRegistrationHandler(int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, void *cf, uint64_t a8)
{
  v9 = cf[2];
  v10 = *v9;
  if (!a3)
  {
    if (v10 > 50)
    {
      return;
    }

    if (v10 == -1)
    {
      if (!_LogCategory_Initialize(v9, 0x32u))
      {
        return;
      }

      v9 = cf[2];
    }

    LogPrintF(v9, "void _BonjourAdvertiserRegistrationHandler(DNSServiceRef, DNSServiceFlags, DNSServiceErrorType, const char *, const char *, const char *, void *)", 0x32u, "Registered Bonjour %s.%s%s\n", a5, a6, cf, a8, a4);
    return;
  }

  if (a3 != -65563)
  {
    if (v10 > 50)
    {
      return;
    }

    if (v10 == -1)
    {
      if (!_LogCategory_Initialize(v9, 0x32u))
      {
        return;
      }

      v9 = cf[2];
    }

    LogPrintF(v9, "void _BonjourAdvertiserRegistrationHandler(DNSServiceRef, DNSServiceFlags, DNSServiceErrorType, const char *, const char *, const char *, void *)", 0x32u, "### Bonjour registration error for %s: %#m\n", a5, a6, cf, a8, cf[19]);
    return;
  }

  if (v10 <= 50)
  {
    if (v10 == -1)
    {
      if (!_LogCategory_Initialize(v9, 0x32u))
      {
        goto LABEL_13;
      }

      v9 = cf[2];
    }

    LogPrintF(v9, "void _BonjourAdvertiserRegistrationHandler(DNSServiceRef, DNSServiceFlags, DNSServiceErrorType, const char *, const char *, const char *, void *)", 0x32u, "### Bonjour server crashed for %s\n", a5, a6, cf, a8, cf[19]);
  }

LABEL_13:
  v12 = cf[4];
  if (v12)
  {
    DNSServiceRefDeallocate(v12);
    cf[4] = 0;
  }

  CFRetain(cf);
  v13 = cf[3];

  dispatch_async_f(v13, cf, _BonjourAdvertiserUpdate);
}

void _BonjourAdvertiserUpdate(const void *a1)
{
  _BonjourAdvertiserUpdateDirect(a1);

  CFRelease(a1);
}

void BonjourAdvertiserStop(void *a1)
{
  CFRetain(a1);
  v2 = a1[3];

  dispatch_async_f(v2, a1, _BonjourAdvertiserStop);
}

void _BonjourAdvertiserStop(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    dispatch_source_cancel(*(a1 + 72));
    dispatch_release(v2);
    *(a1 + 72) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    DNSServiceRefDeallocate(v3);
    *(a1 + 32) = 0;
  }

  [*(a1 + 64) invalidate];

  *(a1 + 64) = 0;
  if (*(a1 + 88))
  {
    v8 = *(a1 + 16);
    if (*v8 <= 50)
    {
      if (*v8 == -1)
      {
        if (!_LogCategory_Initialize(v8, 0x32u))
        {
          goto LABEL_10;
        }

        v8 = *(a1 + 16);
      }

      LogPrintF(v8, "void _BonjourAdvertiserStop(void *)", 0x32u, "Deregistered Bonjour %s\n", v4, v5, v6, v7, *(a1 + 152));
    }

LABEL_10:
    CFRelease(a1);
  }

  *(a1 + 88) = 0;

  CFRelease(a1);
}

uint64_t BonjourAdvertiserUpdate(dispatch_queue_t *a1)
{
  CFRetain(a1);
  dispatch_async_f(a1[3], a1, _BonjourAdvertiserUpdate);
  return 0;
}

uint64_t _BonjourBrowserGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gBonjourBrowserTypeID = result;
  return result;
}

void _BonjourBrowser_Finalize(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1[2];
  if (v10)
  {
    dispatch_release(v10);
    a1[2] = 0;
  }

  v11 = a1[21];
  if (v11)
  {
    dispatch_release(v11);
    a1[21] = 0;
  }

  v12 = a1[24];
  if (v12)
  {
    _Block_release(v12);
    a1[24] = 0;
  }

  if (gLogCategory_BonjourBrowser <= 20 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x14u)))
  {

    LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_Finalize(CFTypeRef)", 0x14u, "Finalized browser\n", a5, a6, a7, a8, a9);
  }
}

uint64_t BonjourBrowser_CreateEx(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (gLogCategory_BonjourBrowser <= 30 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_BonjourBrowser, "OSStatus BonjourBrowser_CreateEx(BonjourBrowserRef *, const char *, CUBonjourBrowserFlags)", 0x1Eu, "Create '%s', %#{flags}\n", a5, a6, a7, a8, a2);
  }

  if (gBonjourBrowserInitOnce != -1)
  {
    dispatch_once_f(&gBonjourBrowserInitOnce, 0, _BonjourBrowserGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294960568;
  }

  v12 = Instance;
  *(Instance + 16) = 0u;
  v13 = (Instance + 16);
  *(Instance + 192) = 0;
  *(Instance + 160) = 0u;
  *(Instance + 176) = 0u;
  *(Instance + 128) = 0u;
  *(Instance + 144) = 0u;
  *(Instance + 96) = 0u;
  *(Instance + 112) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 32) = 0u;
  *(Instance + 48) = 0u;
  if ((a3 & 2) != 0)
  {
    v16 = QOS_CLASS_USER_INITIATED;
  }

  else
  {
    if ((a3 & 1) == 0)
    {
      if (a2)
      {
        v14 = a2;
      }

      else
      {
        v14 = "BonjourBrowser";
      }

      v15 = 0;
      goto LABEL_19;
    }

    v16 = QOS_CLASS_UTILITY;
  }

  v15 = dispatch_queue_attr_make_with_qos_class(0, v16, 0);
  if (a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = "BonjourBrowser";
  }

LABEL_19:
  v17 = dispatch_queue_create(v14, v15);
  *v13 = v17;
  if (v17)
  {
    v18 = MEMORY[0x1E69E96A0];
    v12[21] = MEMORY[0x1E69E96A0];
    dispatch_retain(v18);
    result = 0;
    *a1 = v12;
  }

  else
  {
    CFRelease(v12);
    return 4294960596;
  }

  return result;
}

void BonjourBrowser_SetDispatchQueue(uint64_t a1, NSObject *a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = MEMORY[0x1E69E96A0];
  }

  dispatch_retain(v3);
  v4 = *(a1 + 168);
  if (v4)
  {
    dispatch_release(v4);
  }

  *(a1 + 168) = v3;
}

uint64_t BonjourBrowser_SetEventHandler(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 176) = a2;
  *(result + 184) = a3;
  return result;
}

void BonjourBrowser_SetEventHandlerBlock(uint64_t a1, void *aBlock)
{
  if (aBlock)
  {
    v3 = _Block_copy(aBlock);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 192);
  if (v4)
  {
    _Block_release(v4);
  }

  *(a1 + 192) = v3;
}

void _BonjourBrowser_RemoveAWDLServices(uint64_t a1)
{
  if (*(a1 + 128))
  {
    v3 = a1 + 88;
    v2 = *(a1 + 88);
    while (v2)
    {
      v4 = v3;
      v3 = v2;
      while (1)
      {
        v2 = *v3;
        if (*(v3 + 48) != *(a1 + 128))
        {
          break;
        }

        *v4 = v2;
        _BonjourBrowser_RemoveService(a1, v3, 1);
        _BonjourService_Free(v3);
        v3 = *v4;
        if (!*v4)
        {
          return;
        }
      }
    }
  }
}

void *_BonjourBrowser_EnsureStoppedDNSSD(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    DNSServiceRefDeallocate(v2);
    a1[3] = 0;
  }

  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  while (1)
  {
    v3 = a1[12];
    if (!v3)
    {
      break;
    }

    a1[12] = *v3;
    _BonjourDevice_Free(v3);
  }

  while (1)
  {
    result = a1[11];
    if (!result)
    {
      break;
    }

    a1[11] = *result;
    result[11] = 0;
    _BonjourService_Free(result);
  }

  return result;
}

void _BonjourBrowser_NANEndpointFound(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v4 = [objc_msgSend(a2 "serviceType")];
  if (v4)
  {
    v9 = v4;
    v10 = [objc_msgSend(a2 "name")];
    if (v10)
    {
      v15 = v10;
    }

    else
    {
      v15 = "";
    }

    v16 = *(a1 + 80);
    if (!v16)
    {
      v16 = if_nametoindex("nan0");
      *(a1 + 80) = v16;
    }

    if (gLogCategory_BonjourBrowser <= 20 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x14u)))
    {
      LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_NANEndpointFound(BonjourBrowserRef, CUNANEndpoint *)", 0x14u, "Bonjour NAN found: %s.%s%s on %u\n", v11, v12, v13, v14, v15);
    }

    v18 = a1 + 88;
    v17 = *(a1 + 88);
    if (v17)
    {
      while (1)
      {
        v18 = v17;
        if (*(v17 + 48) == v16 && !strcasecmp(*(v17 + 24), v15) && !strcasecmp(*(v18 + 32), v9) && !strcasecmp(*(v18 + 40), "local."))
        {
          break;
        }

        v17 = *v18;
        if (!*v18)
        {
          goto LABEL_17;
        }
      }

      v46 = v18;
    }

    else
    {
LABEL_17:
      v46 = 0;
      v19 = _BonjourService_Create(a1, v15, v9, "local.", v16, 0, 0, &v46);
      v47 = v19;
      if (v19)
      {
        if (gLogCategory_BonjourBrowser > 90)
        {
          return;
        }

        v43 = v19;
        if (gLogCategory_BonjourBrowser == -1 && !_LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x5Au))
        {
          goto LABEL_42;
        }

        v44 = v43;
        v42 = "### BonjourService_Create failed: %#m";
        goto LABEL_63;
      }

      v20 = v46;
      *(v46 + 80) = 1;
      *(v20 + 84) = 128;
      *v18 = v20;
      v18 = v20;
    }

    v21 = *(v18 + 72);
    v22 = a2;
    *(v18 + 72) = a2;

    v23 = [a2 textInfo];
    if (!v23)
    {
      v23 = MEMORY[0x1E695E0F8];
    }

    __n = 0;
    v24 = TXTRecordCreateWithDictionary(v23, &__n, &v47);
    if (v24)
    {
      v25 = v24;
      v26 = malloc_type_calloc(1uLL, __n + 16, 0x1020040545B2139uLL);
      if (!v26)
      {
LABEL_50:
        v47 = -6728;
        goto LABEL_41;
      }

      v27 = v26;
      v28 = __n;
      v26[1] = __n;
      memcpy(v26 + 2, v25, v28);
      v29 = *(v18 + 96);
      if (v29)
      {
        free(v29);
      }

      *(v18 + 96) = v27;
      DeviceID = _BonjourService_GetDeviceID(v18, v48);
      v47 = DeviceID;
      if (DeviceID)
      {
        if (gLogCategory_BonjourBrowser <= 90)
        {
          if (gLogCategory_BonjourBrowser == -1)
          {
            if (!_LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x5Au))
            {
              goto LABEL_41;
            }

            DeviceID = v47;
          }

          LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_NANEndpointFound(BonjourBrowserRef, CUNANEndpoint *)", 0x5Au, "### GetDeviceID failed: %#m", v31, v32, v33, v34, DeviceID);
        }

LABEL_41:
        free(v25);
LABEL_42:
        if (!v47)
        {
          return;
        }

        v41 = gLogCategory_BonjourBrowser;
        goto LABEL_44;
      }

      v35 = *(v18 + 104);
      if (v35)
      {
        if (!strcasecmp((v35 + 16), v48))
        {
LABEL_40:
          _BonjourDevice_UpdateTXTQueries(v35);
          _BonjourBrowser_PostEvent(a1, 1, v35, 0);
          goto LABEL_41;
        }

        if (gLogCategory_BonjourIssues <= 40 && (gLogCategory_BonjourIssues != -1 || _LogCategory_Initialize(&gLogCategory_BonjourIssues, 0x28u)))
        {
          LogPrintF(&gLogCategory_BonjourIssues, "void _BonjourBrowser_NANEndpointFound(BonjourBrowserRef, CUNANEndpoint *)", 0x28u, "Removing and re-adding %s.%s%s for NAN device ID update (%s -> %s)\n", v36, v37, v38, v39, *(v18 + 24));
        }

        _BonjourBrowser_RemoveService(a1, v18, 1);
        *(v18 + 104) = 0;
      }

      v35 = a1 + 96;
      while (1)
      {
        v35 = *v35;
        if (!v35)
        {
          break;
        }

        if (!strcasecmp((v35 + 16), v48))
        {
          goto LABEL_39;
        }
      }

      v40 = malloc_type_calloc(1uLL, 0x68uLL, 0x1060040FDB03D26uLL);
      if (!v40)
      {
        goto LABEL_50;
      }

      v35 = v40;
      v40[1] = a1;
      __strlcpy_chk();
      *v35 = *(a1 + 96);
      *(a1 + 96) = v35;
LABEL_39:
      *(v18 + 104) = v35;
      *(v18 + 8) = *(v35 + 88);
      *(v35 + 88) = v18;
      goto LABEL_40;
    }

    if (gLogCategory_BonjourBrowser > 90 || gLogCategory_BonjourBrowser == -1 && !_LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x5Au))
    {
      goto LABEL_42;
    }

    v44 = v47;
    v42 = "### TXTRecordCreate failed: %#m";
LABEL_63:
    LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_NANEndpointFound(BonjourBrowserRef, CUNANEndpoint *)", 0x5Au, v42, v5, v6, v7, v8, v44);
    goto LABEL_42;
  }

  v47 = -6700;
  v41 = gLogCategory_BonjourBrowser;
  if (gLogCategory_BonjourBrowser <= 60)
  {
    if (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x3Cu))
    {
      LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_NANEndpointFound(BonjourBrowserRef, CUNANEndpoint *)", 0x3Cu, "### Bonjour NAN found without service type: %@\n", v5, v6, v7, v8, a2);
    }

    goto LABEL_42;
  }

LABEL_44:
  if (v41 <= 90 && (v41 != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x5Au)))
  {
    LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_NANEndpointFound(BonjourBrowserRef, CUNANEndpoint *)", 0x5Au, "### Bonjour NAN found failed: %@, %#m\n", v5, v6, v7, v8, a2);
  }
}

void _BonjourBrowser_RemoveService(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 104);
  if (!v3)
  {
    return;
  }

  v4 = v3[11];
  if (v4)
  {
    if (v4 != a2)
    {
      while (1)
      {
        v6 = v4;
        v4 = *(v4 + 8);
        if (!v4)
        {
          break;
        }

        if (v4 == a2)
        {
          v7 = (v6 + 8);
          goto LABEL_8;
        }
      }

LABEL_9:
      _BonjourBrowser_PostEvent(a1, 1, v3, a2);
      if (a3)
      {

        _BonjourDevice_UpdateTXTQueries(v3);
      }

      return;
    }

    v7 = v3 + 11;
LABEL_8:
    *v7 = *(v4 + 8);
    if (v3[11])
    {
      goto LABEL_9;
    }
  }

  v8 = (a1 + 96);
  while (1)
  {
    v9 = v8;
    v8 = *v8;
    if (!v8)
    {
      break;
    }

    if (v8 == v3)
    {
      *v9 = *v3;
      break;
    }
  }

  _BonjourBrowser_PostEvent(a1, 2, v3, a2);

  _BonjourDevice_Free(v3);
}

void _BonjourDevice_Free(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

void _BonjourService_Free(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    free(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    free(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    free(v4);
    *(a1 + 40) = 0;
  }

  *(a1 + 72) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    DNSServiceRefDeallocate(v5);
    *(a1 + 88) = 0;
  }

  while (1)
  {
    v6 = *(a1 + 96);
    if (!v6)
    {
      break;
    }

    *(a1 + 96) = *v6;
    free(v6);
  }

  free(a1);
}

void _BonjourBrowser_NANEndpointLost(uint64_t a1, void *a2)
{
  v4 = [objc_msgSend(a2 "serviceType")];
  if (v4)
  {
    v9 = v4;
    v10 = [objc_msgSend(a2 "name")];
    if (v10)
    {
      v15 = v10;
    }

    else
    {
      v15 = "";
    }

    v16 = *(a1 + 80);
    if (gLogCategory_BonjourBrowser <= 20 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x14u)))
    {
      LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_NANEndpointLost(BonjourBrowserRef, CUNANEndpoint *)", 0x14u, "Bonjour NAN lost: %s.%s%s on %u\n", v11, v12, v13, v14, v15);
    }

    v18 = a1 + 88;
    v17 = *(a1 + 88);
    if (v17)
    {
      while (1)
      {
        v19 = v18;
        v18 = v17;
        if (*(v17 + 48) == v16 && !strcasecmp(*(v17 + 24), v15) && !strcasecmp(*(v18 + 32), v9) && !strcasecmp(*(v18 + 40), "local."))
        {
          break;
        }

        v17 = *v18;
        if (!*v18)
        {
          return;
        }
      }

      *v19 = *v18;
      _BonjourBrowser_RemoveService(a1, v18, 1);

      _BonjourService_Free(v18);
    }
  }

  else if (gLogCategory_BonjourBrowser <= 60 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x3Cu)))
  {
    LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_NANEndpointLost(BonjourBrowserRef, CUNANEndpoint *)", 0x3Cu, "### Bonjour NAN lost without service type: %@\n", v5, v6, v7, v8, a2);
  }
}

uint64_t _BonjourBrowser_RetryTimerFired(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (gLogCategory_BonjourBrowser <= 50 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x32u)))
  {
    LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_RetryTimerFired(void *)", 0x32u, "Retrying Bonjour start for %s after failure\n", a5, a6, a7, a8, *(a1 + 136));
  }

  v9 = *(a1 + 120);
  if (v9)
  {
    dispatch_source_cancel(*(a1 + 120));
    dispatch_release(v9);
    *(a1 + 120) = 0;
  }

  *(a1 + 112) = mach_absolute_time();

  return _BonjourBrowser_EnsureStarted(a1);
}

void BonjourBrowser_Stop(void *a1)
{
  CFRetain(a1);
  v2 = a1[2];

  dispatch_async_f(v2, a1, _BonjourBrowser_Stop);
}

void _BonjourBrowser_Stop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v9 && gLogCategory_BonjourBrowser <= 30 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_Stop(void *)", 0x1Eu, "Stopping browse for %s\n", a5, a6, a7, a8, *(a1 + 136));
  }

  v10 = *(a1 + 120);
  if (v10)
  {
    dispatch_source_cancel(*(a1 + 120));
    dispatch_release(v10);
    *(a1 + 120) = 0;
  }

  _BonjourBrowser_NANEnsureStopped(a1, 1, a3, a4, a5, a6, a7, a8);
  _BonjourBrowser_EnsureStoppedDNSSD(a1);
  if (v9)
  {
    _BonjourBrowser_PostEvent(a1, 3, 0, 0);
    if (gLogCategory_BonjourBrowser <= 30 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_Stop(void *)", 0x1Eu, "Stopped browse for %s\n", v11, v12, v13, v14, *(a1 + 136));
    }

    CFRelease(a1);
  }

  v15 = *(a1 + 136);
  if (v15)
  {
    free(v15);
    *(a1 + 136) = 0;
  }

  v16 = *(a1 + 144);
  if (v16)
  {
    free(v16);
    *(a1 + 144) = 0;
  }

  v17 = *(a1 + 152);
  if (v17)
  {
    free(v17);
    *(a1 + 152) = 0;
  }

  CFRelease(a1);
}

uint64_t BonjourBrowser_CopyDevices(uint64_t a1, _DWORD *a2)
{
  v5 = 0;
  v6 = 1;
  context = a1;
  dispatch_sync_f(*(a1 + 16), &context, _BonjourBrowser_CopyDevices);
  if (a2)
  {
    *a2 = v6;
  }

  return v5;
}

void _BonjourBrowser_CopyDevices(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v3 = Mutable;
    v4 = *(*a1 + 96);
    if (v4)
    {
      v8 = 0;
      do
      {
        v5 = _BonjourDevice_CreateDictionary(v4, &v8);
        if (v5)
        {
          v6 = v5;
          CFArrayAppendValue(v3, v5);
          CFRelease(v6);
        }

        v4 = *v4;
      }

      while (v4);
    }

    v7 = 0;
    *(a1 + 8) = v3;
  }

  else
  {
    v7 = -6728;
  }

  *(a1 + 16) = v7;
}

void BonjourBrowser_ReconfirmDeviceEx(void *a1, const void *a2, const char *a3)
{
  v6 = malloc_type_malloc(0x18uLL, 0x70040A71FDFA8uLL);
  if (v6)
  {
    v7 = v6;
    *v6 = a1;
    v6[1] = a2;
    if (a3)
    {
      v8 = strdup(a3);
    }

    else
    {
      v8 = 0;
    }

    v7[2] = v8;
    CFRetain(a2);
    CFRetain(a1);
    v9 = a1[2];

    dispatch_async_f(v9, v7, _BonjourBrowser_ReconfirmDevice);
  }
}

void _BonjourBrowser_ReconfirmDevice(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v15[0] = 0;
  v2 = *a1;
  CFDictionaryGetCString(*(a1 + 1), @"deviceID", v15, 0x40uLL, 0);
  if (v15[0])
  {
    v3 = v2 + 96;
    while (1)
    {
      v3 = *v3;
      if (!v3)
      {
        break;
      }

      if (!strcasecmp(v3 + 16, v15))
      {
        for (i = *(v3 + 11); i; i = *(i + 8))
        {
          v5 = *(a1 + 2);
          if ((!v5 || !strcasecmp(v5, (i + 52))) && !DNSServiceConstructFullName(fullName, *(i + 24), *(i + 32), *(i + 40)))
          {
            DomainNameFromDNSNameString = MakeDomainNameFromDNSNameString(rdata, fullName);
            if (DomainNameFromDNSNameString)
            {
              v7 = DomainNameFromDNSNameString;
              snprintf(fullName, 0x3F1uLL, "%s%s", *(i + 32), *(i + 40));
              if (gLogCategory_BonjourBrowser <= 50 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x32u)))
              {
                LogPrintF(&gLogCategory_BonjourBrowser, "void _BonjourBrowser_ReconfirmDevice(void *)", 0x32u, "Reconfirming PTR for %s.%s%s on %s\n", v8, v9, v10, v11, *(i + 24));
              }

              DNSServiceReconfirmRecord(0, *(i + 48), fullName, 0xCu, 1u, v7 - rdata, rdata);
            }
          }
        }

        break;
      }
    }
  }

  v12 = *(a1 + 2);
  if (v12)
  {
    free(v12);
  }

  CFRelease(*(a1 + 1));
  free(a1);
  CFRelease(v2);
}

uint64_t BonjourDevice_Reconfirm(const __CFDictionary *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  regtype[0] = 0;
  CFDictionaryGetCString(a1, @"serviceType", regtype, 0x80uLL, 0);
  TypeID = CFArrayGetTypeID();
  TypedValue = CFDictionaryGetTypedValue(a1, @"services", TypeID, 0);
  if (!TypedValue)
  {
    return 0;
  }

  v4 = TypedValue;
  Count = CFArrayGetCount(TypedValue);
  if (Count < 1)
  {
    return 0;
  }

  v6 = Count;
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = CFDictionaryGetTypeID();
    TypedValueAtIndex = CFArrayGetTypedValueAtIndex(v4, v7, v9, 0);
    if (TypedValueAtIndex)
    {
      v11 = TypedValueAtIndex;
      service[0] = 0;
      Value = CFDictionaryGetValue(TypedValueAtIndex, @"rawName");
      if (Value)
      {
        CFGetCString(Value, service, 0x80uLL);
        domain[0] = 0;
        v13 = CFDictionaryGetValue(v11, @"domain");
        if (v13)
        {
          CFGetCString(v13, domain, 0x3F1uLL);
        }

        else
        {
          domain[0] = 0;
        }

        v14 = CFDictionaryGetValue(v11, @"ifindex");
        if (v14)
        {
          v15 = CFGetInt64(v14, 0);
        }

        else
        {
          v15 = 0;
        }

        if (!DNSServiceConstructFullName(fullName, service, regtype, domain))
        {
          DomainNameFromDNSNameString = MakeDomainNameFromDNSNameString(rdata, fullName);
          if (DomainNameFromDNSNameString)
          {
            v17 = DomainNameFromDNSNameString;
            snprintf(fullName, 0x3F1uLL, "%s%s", regtype, domain);
            v18 = DNSServiceReconfirmRecord(0, v15, fullName, 0xCu, 1u, v17 - rdata, rdata);
            if (v8)
            {
              v23 = 1;
            }

            else
            {
              v23 = v18 == 0;
            }

            if (v23)
            {
              v8 = v8;
            }

            else
            {
              v8 = v18;
            }

            if (gLogCategory_BonjourBrowser <= 50 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x32u)))
            {
              LogPrintF(&gLogCategory_BonjourBrowser, "OSStatus BonjourDevice_Reconfirm(CFDictionaryRef)", 0x32u, "Reconfirm PTR for %s.%s%s%%%u: %#m\n", v19, v20, v21, v22, service);
            }
          }
        }
      }

      else
      {
        service[0] = 0;
      }
    }

    ++v7;
  }

  while (v6 != v7);
  return v8;
}

const __CFData *BonjourDevice_CopyCFString(const __CFDictionary *a1, const char *a2, int *a3)
{
  result = CFDictionaryGetValue(a1, @"txt");
  if (result)
  {
    v6 = result;
    valueLen = 0;
    BytePtr = CFDataGetBytePtr(result);
    Length = CFDataGetLength(v6);
    result = TXTRecordGetValuePtr(Length, BytePtr, a2, &valueLen);
    if (result)
    {
      if (valueLen)
      {
        v9 = 0;
        while (*(result + v9))
        {
          if (valueLen == ++v9)
          {
            LOBYTE(v9) = valueLen;
            break;
          }
        }
      }

      else
      {
        LOBYTE(v9) = 0;
      }

      valueLen = v9;
      result = CFStringCreateWithBytes(0, result, v9, 0x8000100u, 0);
      if (result)
      {
        v10 = 0;
      }

      else
      {
        v10 = -6742;
      }
    }

    else
    {
      v10 = -6727;
    }
  }

  else
  {
    v10 = -6762;
  }

  if (a3)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t BonjourDevice_GetBitListValue(const __CFDictionary *a1, const char *a2, int *a3)
{
  v13 = 0;
  Value = CFDictionaryGetValue(a1, @"txt");
  if (Value)
  {
    v6 = Value;
    valueLen = 0;
    BytePtr = CFDataGetBytePtr(Value);
    Length = CFDataGetLength(v6);
    ValuePtr = TXTRecordGetValuePtr(Length, BytePtr, a2, &valueLen);
    if (ValuePtr)
    {
      v10 = BitListString_Parse(ValuePtr, valueLen, &v13);
    }

    else
    {
      v10 = -6727;
    }
  }

  else
  {
    v10 = -6762;
  }

  if (a3)
  {
    *a3 = v10;
  }

  return v13;
}

__CFArray *BonjourDevice_CopyConnectionInfo(const __CFDictionary *a1, uint64_t a2, const void *a3, int *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  context = a2;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    v38 = -6728;
    if (!a4)
    {
      return Mutable;
    }

    goto LABEL_24;
  }

  TypeID = CFArrayGetTypeID();
  TypedValue = CFDictionaryGetTypedValue(a1, @"wakeArray", TypeID, 0);
  if (TypedValue)
  {
    v10 = TypedValue;
    Count = CFArrayGetCount(TypedValue);
    if (Count >= 1)
    {
      v12 = Count;
      v13 = 0;
      v14 = MEMORY[0x1E695E9D8];
      v15 = MEMORY[0x1E695E9E8];
      do
      {
        v16 = CFDataGetTypeID();
        TypedValueAtIndex = CFArrayGetTypedValueAtIndex(v10, v13, v16, 0);
        if (TypedValueAtIndex)
        {
          v18 = TypedValueAtIndex;
          if (CFDataGetLength(TypedValueAtIndex) == 6)
          {
            BytePtr = CFDataGetBytePtr(v18);
            SNPrintF(v41, 32, "wake://%02X-%02X-%02X-%02X-%02X-%02X", v20, v21, v22, v23, v24, *BytePtr);
            v25 = CFDictionaryCreateMutable(0, 0, v14, v15);
            if (!v25)
            {
              v38 = -6728;
              v30 = Mutable;
              Mutable = 0;
              goto LABEL_21;
            }

            v26 = v25;
            CFDictionarySetCString(v25, @"dnsName", v41, -1);
            CFArrayAppendValue(Mutable, v26);
            CFRelease(v26);
          }
        }

        ++v13;
      }

      while (v12 != v13);
    }
  }

  v27 = CFArrayGetTypeID();
  v28 = CFDictionaryGetTypedValue(a1, @"services", v27, 0);
  if (!v28)
  {
    v38 = 0;
    if (!a4)
    {
      return Mutable;
    }

LABEL_24:
    *a4 = v38;
    return Mutable;
  }

  MutableCopy = CFArrayCreateMutableCopy(0, 0, v28);
  if (MutableCopy)
  {
    v30 = MutableCopy;
    v43.length = CFArrayGetCount(MutableCopy);
    v43.location = 0;
    CFArraySortValues(v30, v43, _BonjourService_Comparator, &context);
    v31 = CFArrayGetCount(v30);
    if (v31 >= 1)
    {
      v32 = v31;
      for (i = 0; i != v32; ++i)
      {
        v34 = CFDictionaryGetTypeID();
        v35 = CFArrayGetTypedValueAtIndex(v30, i, v34, 0);
        if (v35)
        {
          v36 = v35;
          if (!a3 || (Value = CFDictionaryGetValue(v35, @"ifname")) != 0 && CFEqual(Value, a3))
          {
            CFArrayAppendValue(Mutable, v36);
          }
        }
      }
    }

    v38 = 0;
  }

  else
  {
    v38 = -6728;
    v30 = Mutable;
    Mutable = 0;
  }

LABEL_21:
  CFRelease(v30);
  if (a4)
  {
    goto LABEL_24;
  }

  return Mutable;
}

uint64_t BonjourDevice_GetDNSName(CFDictionaryRef theDict, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v59 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    TypeID = CFArrayGetTypeID();
    TypedValue = CFDictionaryGetTypedValue(theDict, @"wakeArray", TypeID, 0);
    if (TypedValue && (v9 = TypedValue, Count = CFArrayGetCount(TypedValue), Count >= 1))
    {
      v11 = Count;
      v12 = 0;
      v13 = 1;
      while (2)
      {
        v14 = a4;
        while (1)
        {
          v15 = CFDataGetTypeID();
          TypedValueAtIndex = CFArrayGetTypedValueAtIndex(v9, v12, v15, 0);
          if (TypedValueAtIndex)
          {
            v17 = TypedValueAtIndex;
            if (CFDataGetLength(TypedValueAtIndex) == 6)
            {
              break;
            }
          }

          if (v11 == ++v12)
          {
            a4 = v14;
            if ((v13 & 1) == 0)
            {
              goto LABEL_17;
            }

            goto LABEL_14;
          }
        }

        BytePtr = CFDataGetBytePtr(v17);
        v24 = SNPrintF(v5, v14, "wake://%02X-%02X-%02X-%02X-%02X-%02X%s", v19, v20, v21, v22, v23, *BytePtr);
        if (v24 < 1)
        {
          goto LABEL_61;
        }

        v13 = 0;
        v5 += v24;
        a4 = v14 - v24;
        if (++v12 != v11)
        {
          continue;
        }

        break;
      }
    }

    else
    {
LABEL_14:
      CFDataOfLength = CFDictionaryGetCFDataOfLength(theDict, @"wakeAddr", 6, 0);
      if (CFDataOfLength)
      {
        v30 = CFDataGetBytePtr(CFDataOfLength);
        v36 = SNPrintF(v5, a4, "wake://%02X-%02X-%02X-%02X-%02X-%02X%s", v31, v32, v33, v34, v35, *v30);
        if (v36 < 1)
        {
LABEL_61:
          v53 = 4294960596;
          goto LABEL_55;
        }

        v5 += v36;
        a4 -= v36;
      }
    }
  }

LABEL_17:
  Value = CFDictionaryGetValue(theDict, @"services");
  v56 = v5;
  if (Value && (v38 = Value, v39 = CFArrayGetCount(Value), v39 >= 1))
  {
    v40 = v39;
    v55 = a4;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v38, v41);
      if (a2 < 0 != (CFDictionaryGetInt64(ValueAtIndex, @"p2p", 0) == 0))
      {
        v58[0] = 0;
        CFDictionaryGetCString(ValueAtIndex, @"domain", v58, 0x100uLL, 0);
        if (*v58 == 1633906540 && *&v58[3] == 3042401)
        {
          Int64 = CFDictionaryGetInt64(ValueAtIndex, @"transportType", 0);
          v49 = Int64;
          if (!v43 && Int64 != 32)
          {
            if (CFDictionaryGetInt64(ValueAtIndex, @"wifi", 0))
            {
              v43 = 0;
            }

            else
            {
              v43 = ValueAtIndex;
            }
          }

          if (v49 == 32 && v42 == 0)
          {
            v42 = ValueAtIndex;
          }

          if (!v45)
          {
            v45 = ValueAtIndex;
          }
        }

        if (!v44)
        {
          v44 = ValueAtIndex;
        }
      }

      ++v41;
    }

    while (v40 != v41);
    a4 = v55;
    if (v43)
    {
      goto LABEL_49;
    }

    v43 = v42;
    if (v42)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v45 = 0;
    v44 = 0;
  }

  if (v45)
  {
    v43 = v45;
  }

  else
  {
    v43 = v44;
  }

  if (!v43)
  {
LABEL_54:
    v53 = 4294960569;
    goto LABEL_55;
  }

LABEL_49:
  if (!v56)
  {
    return 0;
  }

  v51 = CFStringGetTypeID();
  v52 = CFDictionaryGetTypedValue(v43, @"dnsName", v51, 0);
  if (!v52)
  {
    goto LABEL_54;
  }

  if (CFStringGetCString(v52, v56, a4, 0x8000100u))
  {
    return 0;
  }

  v53 = 4294960553;
LABEL_55:
  if (gLogCategory_BonjourBrowser <= 50 && (gLogCategory_BonjourBrowser != -1 || _LogCategory_Initialize(&gLogCategory_BonjourBrowser, 0x32u)))
  {
    LogPrintF(&gLogCategory_BonjourBrowser, "OSStatus BonjourDevice_GetDNSName(CFDictionaryRef, uint64_t, char *, size_t)", 0x32u, "BonjourDevice_GetDNSName failed: %#m", v25, v26, v27, v28, v53);
  }

  return v53;
}

const __CFDictionary *BonjourDevice_RemoveInterfaceInfo(CFDictionaryRef *a1, const char *a2, int a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  if (*a1)
  {
    TypeID = CFArrayGetTypeID();
    result = CFDictionaryGetTypedValue(v3, @"services", TypeID, 0);
    if (!result)
    {
      return result;
    }

    v9 = result;
    Count = CFArrayGetCount(result);
    if (Count >= 1)
    {
      v11 = Count;
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, *a1);
      if (MutableCopy)
      {
        v13 = MutableCopy;
        v14 = CFArrayCreateMutableCopy(0, 0, v9);
        if (v14)
        {
          v15 = v14;
          v16 = v11 + 1;
          do
          {
            v17 = CFDictionaryGetTypeID();
            TypedValueAtIndex = CFArrayGetTypedValueAtIndex(v15, v16 - 2, v17, 0);
            if (TypedValueAtIndex)
            {
              __s1[0] = 0;
              Value = CFDictionaryGetValue(TypedValueAtIndex, @"ifname");
              if (Value)
              {
                CFGetCString(Value, __s1, 0x11uLL);
              }

              else
              {
                __s1[0] = 0;
              }

              if ((a3 != 0) != (strcmp(__s1, a2) == 0))
              {
                CFArrayRemoveValueAtIndex(v15, v16 - 2);
              }
            }

            --v16;
          }

          while (v16 > 1);
          if (CFArrayGetCount(v15) < 1)
          {
            CFDictionaryRemoveValue(v13, @"services");
          }

          else
          {
            CFDictionarySetValue(v13, @"services", v15);
          }

          CFRelease(*a1);
          *a1 = v13;
          CFRelease(v15);
          return 0;
        }

        CFRelease(v13);
      }

      return 4294960568;
    }
  }

  return 0;
}

id initValkCAMediaTimingFunctionEaseIn()
{
  if (softLinkOncekCAMediaTimingFunctionEaseIn != -1)
  {
    dispatch_once(&softLinkOncekCAMediaTimingFunctionEaseIn, &__block_literal_global_103);
  }

  v1 = constantValkCAMediaTimingFunctionEaseIn;

  return v1;
}

void __initValkCAMediaTimingFunctionEaseIn_block_invoke()
{
  if (QuartzCoreLibrary_sOnce != -1)
  {
    dispatch_once(&QuartzCoreLibrary_sOnce, &__block_literal_global_151);
  }

  v0 = dlsym(QuartzCoreLibrary_sLib, "kCAMediaTimingFunctionEaseIn");
  if (v0)
  {
    objc_storeStrong(&constantValkCAMediaTimingFunctionEaseIn, *v0);
  }

  getkCAMediaTimingFunctionEaseIn[0] = kCAMediaTimingFunctionEaseInFunction;
}

void *__QuartzCoreLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/QuartzCore.framework/QuartzCore", 2);
  QuartzCoreLibrary_sLib = result;
  return result;
}

Class initCAMediaTimingFunction()
{
  if (QuartzCoreLibrary_sOnce != -1)
  {
    dispatch_once(&QuartzCoreLibrary_sOnce, &__block_literal_global_151);
  }

  result = objc_getClass("CAMediaTimingFunction");
  classCAMediaTimingFunction = result;
  getCAMediaTimingFunctionClass[0] = CAMediaTimingFunctionFunction;
  return result;
}

Class initCABasicAnimation()
{
  if (QuartzCoreLibrary_sOnce != -1)
  {
    dispatch_once(&QuartzCoreLibrary_sOnce, &__block_literal_global_151);
  }

  result = objc_getClass("CABasicAnimation");
  classCABasicAnimation = result;
  getCABasicAnimationClass[0] = CABasicAnimationFunction;
  return result;
}

Class initCATransaction()
{
  if (QuartzCoreLibrary_sOnce != -1)
  {
    dispatch_once(&QuartzCoreLibrary_sOnce, &__block_literal_global_151);
  }

  result = objc_getClass("CATransaction");
  classCATransaction = result;
  getCATransactionClass[0] = CATransactionFunction;
  return result;
}

id initValkCAMediaTimingFunctionEaseOut()
{
  if (softLinkOncekCAMediaTimingFunctionEaseOut != -1)
  {
    dispatch_once(&softLinkOncekCAMediaTimingFunctionEaseOut, &__block_literal_global_100);
  }

  v1 = constantValkCAMediaTimingFunctionEaseOut;

  return v1;
}

void __initValkCAMediaTimingFunctionEaseOut_block_invoke()
{
  if (QuartzCoreLibrary_sOnce != -1)
  {
    dispatch_once(&QuartzCoreLibrary_sOnce, &__block_literal_global_151);
  }

  v0 = dlsym(QuartzCoreLibrary_sLib, "kCAMediaTimingFunctionEaseOut");
  if (v0)
  {
    objc_storeStrong(&constantValkCAMediaTimingFunctionEaseOut, *v0);
  }

  getkCAMediaTimingFunctionEaseOut[0] = kCAMediaTimingFunctionEaseOutFunction;
}

Class initCALayer()
{
  if (QuartzCoreLibrary_sOnce != -1)
  {
    dispatch_once(&QuartzCoreLibrary_sOnce, &__block_literal_global_151);
  }

  result = objc_getClass("CALayer");
  classCALayer = result;
  getCALayerClass[0] = CALayerFunction;
  return result;
}

void FadeOutLayerThruBlack(void *a1, void *a2, void *a3, double a4, double a5, double a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = objc_autoreleasePoolPush();
  if (!v12 && v13)
  {
    v12 = MEMORY[0x1E69E96A0];
    v15 = MEMORY[0x1E69E96A0];
  }

  v16 = [getCALayerClass[0]() layer];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___FadeLayerThruBlack_block_invoke;
  block[3] = &unk_1E73A28C0;
  v17 = v16;
  v33 = v17;
  v18 = v11;
  v34 = v18;
  v36 = 0;
  v35 = a4;
  v19 = MEMORY[0x1E69E96A0];
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v20 = dispatch_time(0, (a5 * 1000000000.0));
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = ___FadeLayerThruBlack_block_invoke_2;
  v25[3] = &unk_1E73A2910;
  v31 = 0;
  v21 = v18;
  v26 = v21;
  v27 = v17;
  v30 = a6;
  v22 = v13;
  v29 = v22;
  v23 = v12;
  v28 = v23;
  v24 = v17;
  dispatch_after(v20, v19, v25);

  objc_autoreleasePoolPop(v14);
}

void *CreateCAContextForRemoteHosting()
{
  v0 = objc_autoreleasePoolPush();
  [getCATransactionClass[0]() begin];
  [getCATransactionClass[0]() setDisableActions:1];
  v1 = CFUUIDCreate(0);
  v2 = CFUUIDCreateString(0, v1);
  CFRelease(v1);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s-%@", getprogname(), v2];
  CFRelease(v2);
  v4 = MEMORY[0x1E695DF20];
  v5 = getkCAContextDisplayName();
  v6 = *MEMORY[0x1E695E4D0];
  v7 = getkCAContextIgnoresHitTest();
  v8 = [v4 dictionaryWithObjectsAndKeys:{v3, v5, v6, v7, 0}];

  v9 = [getCAContextClass[0]() remoteContextWithOptions:v8];
  v10 = [getCALayerClass[0]() layer];
  [v10 setGeometryFlipped:1];
  [v9 setLayer:v10];
  [getCATransactionClass[0]() commit];

  objc_autoreleasePoolPop(v0);
  return v9;
}

Class initCAContext()
{
  if (QuartzCoreLibrary_sOnce != -1)
  {
    dispatch_once(&QuartzCoreLibrary_sOnce, &__block_literal_global_151);
  }

  result = objc_getClass("CAContext");
  classCAContext = result;
  getCAContextClass[0] = CAContextFunction;
  return result;
}

id initValkCAContextIgnoresHitTest()
{
  if (softLinkOncekCAContextIgnoresHitTest != -1)
  {
    dispatch_once(&softLinkOncekCAContextIgnoresHitTest, &__block_literal_global_110);
  }

  v1 = constantValkCAContextIgnoresHitTest;

  return v1;
}

void __initValkCAContextIgnoresHitTest_block_invoke()
{
  if (QuartzCoreLibrary_sOnce != -1)
  {
    dispatch_once(&QuartzCoreLibrary_sOnce, &__block_literal_global_151);
  }

  v0 = dlsym(QuartzCoreLibrary_sLib, "kCAContextIgnoresHitTest");
  if (v0)
  {
    objc_storeStrong(&constantValkCAContextIgnoresHitTest, *v0);
  }

  getkCAContextIgnoresHitTest = kCAContextIgnoresHitTestFunction;
}

id initValkCAContextDisplayName()
{
  if (softLinkOncekCAContextDisplayName != -1)
  {
    dispatch_once(&softLinkOncekCAContextDisplayName, &__block_literal_global_107);
  }

  v1 = constantValkCAContextDisplayName;

  return v1;
}

void __initValkCAContextDisplayName_block_invoke()
{
  if (QuartzCoreLibrary_sOnce != -1)
  {
    dispatch_once(&QuartzCoreLibrary_sOnce, &__block_literal_global_151);
  }

  v0 = dlsym(QuartzCoreLibrary_sLib, "kCAContextDisplayName");
  if (v0)
  {
    objc_storeStrong(&constantValkCAContextDisplayName, *v0);
  }

  getkCAContextDisplayName = kCAContextDisplayNameFunction;
}

id CreateCALayerForRemoteDrawing(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  [getCATransactionClass[0]() begin];
  [getCATransactionClass[0]() setDisableActions:1];
  v5 = objc_alloc_init(getCALayerHostClass[0]());
  [v5 setContextId:a1];
  [v3 frame];
  [v5 setFrame:?];
  [v3 addSublayer:v5];
  [getCATransactionClass[0]() commit];
  objc_autoreleasePoolPop(v4);

  return v5;
}

Class initCALayerHost()
{
  if (QuartzCoreLibrary_sOnce != -1)
  {
    dispatch_once(&QuartzCoreLibrary_sOnce, &__block_literal_global_151);
  }

  result = objc_getClass("CALayerHost");
  classCALayerHost = result;
  getCALayerHostClass[0] = CALayerHostFunction;
  return result;
}

uint64_t SaveScreenshot(char *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [getCADisplayClass[0]() mainDisplay];
  v4 = v3;
  if (!v3)
  {
    v37 = 4294960596;
    goto LABEL_11;
  }

  __s = a1;
  v50 = v2;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v11 = v10;
  v12 = (4 * v9 + 63) & 0xFFFFFFC0;
  v13 = (v12 * v10 + 4095) & 0xFFFFF000;
  v48 = MEMORY[0x1E695DF20];
  v42 = v9;
  v47 = [MEMORY[0x1E696AD98] numberWithInt:?];
  v46 = getkIOSurfaceWidth[0]();
  v41 = v11;
  v45 = [MEMORY[0x1E696AD98] numberWithInt:v11];
  v44 = getkIOSurfaceHeight[0]();
  v14 = [MEMORY[0x1E696AD98] numberWithInt:1111970369];
  v49 = v4;
  v15 = getkIOSurfacePixelFormat[0]();
  v16 = [MEMORY[0x1E696AD98] numberWithInt:4];
  v17 = getkIOSurfaceBytesPerElement[0]();
  v40 = v12;
  v18 = [MEMORY[0x1E696AD98] numberWithInt:v12];
  v19 = getkIOSurfaceBytesPerRow[0]();
  v43 = v13;
  v20 = [MEMORY[0x1E696AD98] numberWithInt:v13];
  v21 = getkIOSurfaceAllocSize[0]();
  v22 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v23 = getkIOSurfaceIsGlobal[0]();
  v24 = [v48 dictionaryWithObjectsAndKeys:{v47, v46, v45, v44, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, @"PurpleGfxMem", getkIOSurfaceMemoryRegion[0](), 0}];
  v25 = (softLinkIOSurfaceCreate[0])(v24);

  if (!v25)
  {
    v37 = 4294960596;
    v4 = v49;
    v2 = v50;
    goto LABEL_11;
  }

  v4 = v49;
  v26 = [v49 name];
  (softLinkCARenderServerRenderDisplay[0])(0, v26, v25, v6, v8);
  (softLinkIOSurfaceLock[0])(v25, 1, 0);
  v27 = (softLinkIOSurfaceGetBaseAddress[0])(v25);
  v28 = (softLinkCGDataProviderCreateWithData[0])(v25, v27, v43, _SaveScreenshotReleaseSurfaceData);
  if (v28)
  {
    v29 = v28;
    DeviceRGB = softLinkCGColorSpaceCreateDeviceRGB();
    if (DeviceRGB)
    {
      v31 = DeviceRGB;
      v32 = softLinkCGImageCreate(v42, v41, 8, 32, v40, DeviceRGB, 8194, v29, 0, 1, 0);
      CFRelease(v31);
      if (v32)
      {
        v33 = strlen(__s);
        v34 = CFURLCreateFromFileSystemRepresentation(0, __s, v33, 0);
        if (v34 && (v35 = v34, v36 = (softLinkCGImageDestinationCreateWithURL[0])(v34, @"public.png", 1, 0), CFRelease(v35), v36))
        {
          (softLinkCGImageDestinationAddImage[0])(v36, v32, 0);
          (softLinkCGImageDestinationFinalize[0])(v36);
          CFRelease(v36);
          v37 = 0;
        }

        else
        {
          v37 = 4294960596;
        }

        v2 = v50;
        CFRelease(v32);
        goto LABEL_10;
      }
    }

    v37 = 4294960596;
  }

  else
  {
    v37 = 4294960596;
    v29 = v25;
  }

  v2 = v50;
LABEL_10:
  CFRelease(v29);
LABEL_11:
  objc_autoreleasePoolPop(v2);

  return v37;
}

uint64_t initCGImageDestinationFinalize(uint64_t a1)
{
  if (ImageIOLibrary_sOnce != -1)
  {
    dispatch_once(&ImageIOLibrary_sOnce, &__block_literal_global_141);
  }

  v2 = dlsym(ImageIOLibrary_sLib, "CGImageDestinationFinalize");
  softLinkCGImageDestinationFinalize[0] = v2;

  return (v2)(a1);
}

void *__ImageIOLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/ImageIO.framework/ImageIO", 2);
  ImageIOLibrary_sLib = result;
  return result;
}

uint64_t initCGImageDestinationAddImage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (ImageIOLibrary_sOnce != -1)
  {
    dispatch_once(&ImageIOLibrary_sOnce, &__block_literal_global_141);
  }

  v6 = dlsym(ImageIOLibrary_sLib, "CGImageDestinationAddImage");
  softLinkCGImageDestinationAddImage[0] = v6;

  return (v6)(a1, a2, a3);
}

uint64_t initCGImageDestinationCreateWithURL(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (ImageIOLibrary_sOnce != -1)
  {
    dispatch_once(&ImageIOLibrary_sOnce, &__block_literal_global_141);
  }

  v8 = dlsym(ImageIOLibrary_sLib, "CGImageDestinationCreateWithURL");
  softLinkCGImageDestinationCreateWithURL[0] = v8;

  return (v8)(a1, a2, a3, a4);
}

uint64_t initCGImageCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (CoreGraphicsLibrary_sOnce != -1)
  {
    dispatch_once(&CoreGraphicsLibrary_sOnce, &__block_literal_global_134);
  }

  v17 = dlsym(CoreGraphicsLibrary_sLib, "CGImageCreate");
  softLinkCGImageCreate = v17;

  return (v17)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

void *__CoreGraphicsLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CoreGraphics.framework/CoreGraphics", 2);
  CoreGraphicsLibrary_sLib = result;
  return result;
}

uint64_t initCGColorSpaceCreateDeviceRGB()
{
  if (CoreGraphicsLibrary_sOnce != -1)
  {
    dispatch_once(&CoreGraphicsLibrary_sOnce, &__block_literal_global_134);
  }

  v0 = dlsym(CoreGraphicsLibrary_sLib, "CGColorSpaceCreateDeviceRGB");
  softLinkCGColorSpaceCreateDeviceRGB = v0;

  return v0();
}

void _SaveScreenshotReleaseSurfaceData(const void *a1)
{
  (softLinkIOSurfaceUnlock[0])(a1, 1, 0);

  CFRelease(a1);
}

uint64_t initIOSurfaceUnlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (IOSurfaceLibrary_sOnce != -1)
  {
    dispatch_once(&IOSurfaceLibrary_sOnce, &__block_literal_global_120);
  }

  v6 = dlsym(IOSurfaceLibrary_sLib, "IOSurfaceUnlock");
  softLinkIOSurfaceUnlock[0] = v6;

  return (v6)(a1, a2, a3);
}

void *__IOSurfaceLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/IOSurface.framework/IOSurface", 2);
  IOSurfaceLibrary_sLib = result;
  return result;
}

uint64_t initCGDataProviderCreateWithData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (CoreGraphicsLibrary_sOnce != -1)
  {
    dispatch_once(&CoreGraphicsLibrary_sOnce, &__block_literal_global_134);
  }

  v8 = dlsym(CoreGraphicsLibrary_sLib, "CGDataProviderCreateWithData");
  softLinkCGDataProviderCreateWithData[0] = v8;

  return (v8)(a1, a2, a3, a4);
}

uint64_t initIOSurfaceGetBaseAddress(uint64_t a1)
{
  if (IOSurfaceLibrary_sOnce != -1)
  {
    dispatch_once(&IOSurfaceLibrary_sOnce, &__block_literal_global_120);
  }

  v2 = dlsym(IOSurfaceLibrary_sLib, "IOSurfaceGetBaseAddress");
  softLinkIOSurfaceGetBaseAddress[0] = v2;

  return (v2)(a1);
}

uint64_t initIOSurfaceLock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (IOSurfaceLibrary_sOnce != -1)
  {
    dispatch_once(&IOSurfaceLibrary_sOnce, &__block_literal_global_120);
  }

  v6 = dlsym(IOSurfaceLibrary_sLib, "IOSurfaceLock");
  softLinkIOSurfaceLock[0] = v6;

  return (v6)(a1, a2, a3);
}

uint64_t initCARenderServerRenderDisplay(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (QuartzCoreLibrary_sOnce != -1)
  {
    dispatch_once(&QuartzCoreLibrary_sOnce, &__block_literal_global_151);
  }

  v10 = dlsym(QuartzCoreLibrary_sLib, "CARenderServerRenderDisplay");
  softLinkCARenderServerRenderDisplay[0] = v10;

  return (v10)(a1, a2, a3, a4, a5);
}

uint64_t initIOSurfaceCreate(uint64_t a1)
{
  if (IOSurfaceLibrary_sOnce != -1)
  {
    dispatch_once(&IOSurfaceLibrary_sOnce, &__block_literal_global_120);
  }

  v2 = dlsym(IOSurfaceLibrary_sLib, "IOSurfaceCreate");
  softLinkIOSurfaceCreate[0] = v2;

  return (v2)(a1);
}

uint64_t initValkIOSurfaceMemoryRegion()
{
  if (IOSurfaceLibrary_sOnce != -1)
  {
    dispatch_once(&IOSurfaceLibrary_sOnce, &__block_literal_global_120);
  }

  v0 = dlsym(IOSurfaceLibrary_sLib, "kIOSurfaceMemoryRegion");
  if (v0)
  {
    result = *v0;
    constantValkIOSurfaceMemoryRegion = result;
  }

  else
  {
    result = constantValkIOSurfaceMemoryRegion;
  }

  getkIOSurfaceMemoryRegion[0] = kIOSurfaceMemoryRegionFunction;
  return result;
}

uint64_t initValkIOSurfaceIsGlobal()
{
  if (IOSurfaceLibrary_sOnce != -1)
  {
    dispatch_once(&IOSurfaceLibrary_sOnce, &__block_literal_global_120);
  }

  v0 = dlsym(IOSurfaceLibrary_sLib, "kIOSurfaceIsGlobal");
  if (v0)
  {
    result = *v0;
    constantValkIOSurfaceIsGlobal = result;
  }

  else
  {
    result = constantValkIOSurfaceIsGlobal;
  }

  getkIOSurfaceIsGlobal[0] = kIOSurfaceIsGlobalFunction;
  return result;
}

uint64_t initValkIOSurfaceAllocSize()
{
  if (IOSurfaceLibrary_sOnce != -1)
  {
    dispatch_once(&IOSurfaceLibrary_sOnce, &__block_literal_global_120);
  }

  v0 = dlsym(IOSurfaceLibrary_sLib, "kIOSurfaceAllocSize");
  if (v0)
  {
    result = *v0;
    constantValkIOSurfaceAllocSize = result;
  }

  else
  {
    result = constantValkIOSurfaceAllocSize;
  }

  getkIOSurfaceAllocSize[0] = kIOSurfaceAllocSizeFunction;
  return result;
}

uint64_t initValkIOSurfaceBytesPerRow()
{
  if (IOSurfaceLibrary_sOnce != -1)
  {
    dispatch_once(&IOSurfaceLibrary_sOnce, &__block_literal_global_120);
  }

  v0 = dlsym(IOSurfaceLibrary_sLib, "kIOSurfaceBytesPerRow");
  if (v0)
  {
    result = *v0;
    constantValkIOSurfaceBytesPerRow = result;
  }

  else
  {
    result = constantValkIOSurfaceBytesPerRow;
  }

  getkIOSurfaceBytesPerRow[0] = kIOSurfaceBytesPerRowFunction;
  return result;
}

uint64_t initValkIOSurfaceBytesPerElement()
{
  if (IOSurfaceLibrary_sOnce != -1)
  {
    dispatch_once(&IOSurfaceLibrary_sOnce, &__block_literal_global_120);
  }

  v0 = dlsym(IOSurfaceLibrary_sLib, "kIOSurfaceBytesPerElement");
  if (v0)
  {
    result = *v0;
    constantValkIOSurfaceBytesPerElement = result;
  }

  else
  {
    result = constantValkIOSurfaceBytesPerElement;
  }

  getkIOSurfaceBytesPerElement[0] = kIOSurfaceBytesPerElementFunction;
  return result;
}

uint64_t initValkIOSurfacePixelFormat()
{
  if (IOSurfaceLibrary_sOnce != -1)
  {
    dispatch_once(&IOSurfaceLibrary_sOnce, &__block_literal_global_120);
  }

  v0 = dlsym(IOSurfaceLibrary_sLib, "kIOSurfacePixelFormat");
  if (v0)
  {
    result = *v0;
    constantValkIOSurfacePixelFormat = result;
  }

  else
  {
    result = constantValkIOSurfacePixelFormat;
  }

  getkIOSurfacePixelFormat[0] = kIOSurfacePixelFormatFunction;
  return result;
}

uint64_t initValkIOSurfaceHeight()
{
  if (IOSurfaceLibrary_sOnce != -1)
  {
    dispatch_once(&IOSurfaceLibrary_sOnce, &__block_literal_global_120);
  }

  v0 = dlsym(IOSurfaceLibrary_sLib, "kIOSurfaceHeight");
  if (v0)
  {
    result = *v0;
    constantValkIOSurfaceHeight = result;
  }

  else
  {
    result = constantValkIOSurfaceHeight;
  }

  getkIOSurfaceHeight[0] = kIOSurfaceHeightFunction;
  return result;
}

uint64_t initValkIOSurfaceWidth()
{
  if (IOSurfaceLibrary_sOnce != -1)
  {
    dispatch_once(&IOSurfaceLibrary_sOnce, &__block_literal_global_120);
  }

  v0 = dlsym(IOSurfaceLibrary_sLib, "kIOSurfaceWidth");
  if (v0)
  {
    result = *v0;
    constantValkIOSurfaceWidth = result;
  }

  else
  {
    result = constantValkIOSurfaceWidth;
  }

  getkIOSurfaceWidth[0] = kIOSurfaceWidthFunction;
  return result;
}

Class initCADisplay()
{
  if (QuartzCoreLibrary_sOnce != -1)
  {
    dispatch_once(&QuartzCoreLibrary_sOnce, &__block_literal_global_151);
  }

  result = objc_getClass("CADisplay");
  classCADisplay = result;
  getCADisplayClass[0] = CADisplayFunction;
  return result;
}

uint64_t cdb_read(uint64_t a1, char *__dst, size_t __n, unsigned int a4)
{
  v4 = __n;
  v5 = __dst;
  if (*a1)
  {
    v7 = *(a1 + 12);
    v9 = v7 >= a4;
    v8 = v7 - a4;
    v9 = v9 && v8 >= __n;
    if (!v9)
    {
LABEL_6:
      *__error() = 100;
      return 0xFFFFFFFFLL;
    }

    memcpy(__dst, (*a1 + a4), __n);
  }

  else
  {
    if (lseek(*(a1 + 8), a4, 0) == -1)
    {
      return 0xFFFFFFFFLL;
    }

    if (v4)
    {
      while (1)
      {
        while (1)
        {
          v10 = read(*(a1 + 8), v5, v4);
          if (v10 != -1)
          {
            break;
          }

          if (*__error() != 4)
          {
            return 0xFFFFFFFFLL;
          }
        }

        v11 = v10;
        if (!v10)
        {
          break;
        }

        result = 0;
        v5 += v11;
        v4 -= v11;
        if (!v4)
        {
          return result;
        }
      }

      goto LABEL_6;
    }
  }

  return 0;
}

uint64_t cdb_findnext(_DWORD *a1, unsigned __int8 *a2, int a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a1[4];
  if (v6)
  {
    v7 = a1[8];
  }

  else
  {
    v17 = 5381;
    if (a3)
    {
      v18 = a3;
      v19 = a2;
      do
      {
        v20 = *v19++;
        v17 = (33 * v17) ^ v20;
        --v18;
      }

      while (v18);
    }

    result = cdb_read(a1, &v23, 8uLL, 8 * v17);
    if (result == -1)
    {
      return result;
    }

    v7 = __dst;
    a1[8] = __dst;
    if (!v7)
    {
      return 0;
    }

    v21 = v23;
    a1[7] = v23;
    a1[5] = v17;
    a1[6] = v21 + 8 * ((v17 >> 8) % v7);
    v6 = a1[4];
  }

  if (v6 >= v7)
  {
    return 0;
  }

  while (1)
  {
    result = cdb_read(a1, &v23, 8uLL, a1[6]);
    if (result == -1)
    {
      return result;
    }

    v9 = __dst;
    if (!__dst)
    {
      return 0;
    }

    v10 = a1[5];
    ++a1[4];
    v11 = a1[6] + 8;
    if (v11 == a1[7] + 8 * a1[8])
    {
      v11 = a1[7];
    }

    a1[6] = v11;
    if (v23 == v10)
    {
      result = cdb_read(a1, &v23, 8uLL, v9);
      if (result == -1)
      {
        return result;
      }

      if (v23 == a3)
      {
        v12 = v9 + 8;
        if (a3)
        {
          v13 = v9 + 8;
          v14 = a3;
          v15 = a2;
          while (1)
          {
            v16 = v14 >= 32 ? 32 : v14;
            result = cdb_read(a1, __dst_4, v16, v13);
            if (result == -1)
            {
              break;
            }

            if (memcmp(__dst_4, v15, v16))
            {
              goto LABEL_20;
            }

            v13 += v16;
            v15 += v16;
            v14 -= v16;
            if (!v14)
            {
              goto LABEL_30;
            }
          }
        }

        else
        {
LABEL_30:
          v22 = __dst;
          a1[9] = v12 + a3;
          a1[10] = v22;
          return 1;
        }

        return result;
      }
    }

LABEL_20:
    if (a1[4] >= a1[8])
    {
      return 0;
    }
  }
}

uint64_t cdb_make_addend(uint64_t a1, int a2, int a3, int a4)
{
  v8 = *(a1 + 12288);
  if (!v8 || (v9 = v8[2002], v9 >= 1000))
  {
    v8 = malloc_type_malloc(0x1F50uLL, 0x10200405A375028uLL);
    if (!v8)
    {
      return 0xFFFFFFFFLL;
    }

    v9 = 0;
    v8[2002] = 0;
    *(v8 + 1000) = *(a1 + 12288);
    *(a1 + 12288) = v8;
  }

  v10 = &v8[2 * v9];
  v11 = *(a1 + 12352);
  *v10 = a4;
  v10[1] = v11;
  v8[2002] = v9 + 1;
  ++*(a1 + 12312);
  if (v11 < 0xFFFFFFF8)
  {
    *(a1 + 12352) = v11 + 8;
    v12 = v11 + 8 + a2;
    if (!__CFADD__(v11 + 8, a2))
    {
      *(a1 + 12352) = v12;
      v13 = __CFADD__(v12, a3);
      v14 = v12 + a3;
      if (!v13)
      {
        result = 0;
        *(a1 + 12352) = v14;
        return result;
      }
    }
  }

  *__error() = 12;
  return 0xFFFFFFFFLL;
}

uint64_t buffer_putalign(uint64_t a1, char *__src, size_t __n)
{
  v3 = __n;
  while (1)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12) - v6;
    v8 = *a1;
    if (v3 <= v7)
    {
      break;
    }

    memcpy((v8 + v6), __src, (*(a1 + 12) - v6));
    *(a1 + 8) += v7;
    __src += v7;
    result = buffer_flush(a1);
    v3 -= v7;
    if (result == -1)
    {
      return result;
    }
  }

  memcpy((v8 + v6), __src, v3);
  result = 0;
  *(a1 + 8) += v3;
  return result;
}

uint64_t buffer_flush(uint64_t *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    return 0;
  }

  *(a1 + 2) = 0;
  v2 = a1[3];
  v3 = *(a1 + 4);
  v4 = *a1;
  do
  {
    v5 = v1;
    while (1)
    {
      v6 = v2(v3, v4, v5);
      if (v6 != -1)
      {
        break;
      }

      if (*__error() != 4)
      {
        return 0xFFFFFFFFLL;
      }
    }

    v4 += v6;
    v1 = v5 - v6;
  }

  while (v5 != v6);
  return 0;
}

uint64_t buffer_putflush(uint64_t a1, uint64_t a2)
{
  result = buffer_flush(a1);
  if (result != -1)
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 16);
    v7 = 2048;
    do
    {
      while (1)
      {
        v8 = v5(v6, a2, v7);
        if (v8 != -1)
        {
          break;
        }

        if (*__error() != 4)
        {
          return 0xFFFFFFFFLL;
        }
      }

      a2 += v8;
      v7 = (v7 - v8);
    }

    while (v7);
    return 0;
  }

  return result;
}

CFTypeRef CFBinaryPlistStreamedCreateDataEx(const __CFString *a1, int a2, int *a3)
{
  v30 = 0;
  v32 = 0u;
  v28 = 0;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  _GlobalEnsureInitialized();
  v29 = 0;
  v26 = 0u;
  v27 = 0u;
  v31 = 0;
  *&v32 = 0;
  DWORD2(v32) = 0;
  cf = CFDataCreateMutable(0, 0);
  if (!cf)
  {
    v7 = 0;
    v6 = -6728;
    goto LABEL_8;
  }

  LODWORD(v30) = a2;
  v6 = _WriteStreamed(&cf, a1);
  v7 = cf;
  if (v6)
  {
    if (!cf)
    {
      goto LABEL_6;
    }

    CFRelease(cf);
    v7 = 0;
  }

  cf = 0;
LABEL_6:
  if (v26)
  {
    CFRelease(v26);
    *&v26 = 0;
  }

LABEL_8:
  if (*(&v26 + 1))
  {
    CFRelease(*(&v26 + 1));
  }

  if (a3)
  {
    *a3 = v6;
  }

  return v7;
}

void _GlobalEnsureInitialized()
{
  if (gCFStringType == -1)
  {
    gCFArrayType = CFArrayGetTypeID();
    gCFBooleanType = CFBooleanGetTypeID();
    gCFDataType = CFDataGetTypeID();
    gCFDateType = CFDateGetTypeID();
    gCFDictionaryType = CFDictionaryGetTypeID();
    gCFNumberType = CFNumberGetTypeID();
    gCFStringType = CFStringGetTypeID();
  }
}

uint64_t _WriteStreamed(uint64_t a1, const __CFString *a2)
{
  v4 = *(a1 + 312);
  if ((v4 & 0x40) != 0)
  {
    v5 = *(MEMORY[0x1E695E9D8] + 32);
    *&v8.release = *(MEMORY[0x1E695E9D8] + 16);
    *&v8.equal = v5;
    *&v8.version = *MEMORY[0x1E695E9D8];
    v8.equal = _ObjectsExactlyEqual;
    v8.release = 0;
    v6 = CFDictionaryCreateMutable(0, 0, &v8, 0);
    *(a1 + 272) = v6;
    if (!v6)
    {
      return 4294960568;
    }
  }

  if ((v4 & 1) == 0 || (result = _WriteBytes(a1, "CFB1", 4), !result))
  {
    if ((v4 & 0x1C) == 0 || (result = _WriteStreamedObject(a1, a2), !result))
    {
      if ((v4 & 2) == 0)
      {
        return 0;
      }

      result = _WriteBytes(a1, "END!", 4);
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t _WriteBytes(uint64_t a1, const UInt8 *a2, CFIndex length)
{
  v5 = *a1;
  if (v5)
  {
    CFDataAppendBytes(v5, a2, length);
LABEL_5:
    result = 0;
    *(a1 + 288) += length;
    return result;
  }

  v6 = *(a1 + 320);
  if (!v6)
  {
    return 4294960551;
  }

  result = v6(a2, length, *(a1 + 328));
  if (!result)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t _WriteStreamedObject(uint64_t a1, const __CFString *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 312);
  v5 = CFGetTypeID(a2);
  v30 = 0;
  length = 0;
  v28 = 0;
  if (v5 != gCFStringType)
  {
    if (v5 == gCFNumberType)
    {
      result = _WriteNumber(a1, a2, 1, 1);
      if (result)
      {
        return result;
      }

      return 0;
    }

    if (v5 == gCFBooleanType)
    {
      if (*MEMORY[0x1E695E4D0] == a2)
      {
        v12 = 9;
      }

      else
      {
        v12 = 8;
      }

      v30 = v12;
    }

    else
    {
      if (v5 == gCFDataType)
      {
        v13 = CFDataGetLength(a2);
        if (v13 < 2 || !*(a1 + 272) || (result = _WriteStreamedUpdateUID(a1, a2, &v28), !result) && !v28)
        {
          v14 = v13 | 0x40;
          if (v13 >= 15)
          {
            v14 = 79;
          }

          v30 = v14;
          result = _WriteBytes(a1, &v30, 1);
          if (!result)
          {
            if (v13 < 15 || (result = _WriteInteger(a1, v13, 1, 1), !result))
            {
              BytePtr = CFDataGetBytePtr(a2);
              v10 = a1;
              v9 = v13;
              goto LABEL_42;
            }
          }
        }

        return result;
      }

      if (v5 == gCFDateType)
      {
        if (!*(a1 + 272) || (result = _WriteStreamedUpdateUID(a1, a2, &v28), !result) && !v28)
        {
          LOBYTE(keys[0]) = 51;
          *(keys + 1) = COERCE_VOID_(MEMORY[0x193B04FE0](a2));
          BytePtr = keys;
          v10 = a1;
          v9 = 9;
          goto LABEL_42;
        }

        return result;
      }

      if (v5 == gCFDictionaryType)
      {
        if ((v4 & 4) != 0)
        {
          v30 = -48;
          result = _WriteBytes(a1, &v30, 1);
          if (result)
          {
            return result;
          }
        }

        if ((v4 & 0x10) != 0)
        {
          Count = CFDictionaryGetCount(a2);
          if (Count > 16)
          {
            keys[1] = a2;
            *&v40 = 0;
            keys[0] = a1;
            CFDictionaryApplyFunction(a2, _WriteStreamedDictionaryApplier, keys);
            result = v40;
            if (v40)
            {
              return result;
            }
          }

          else
          {
            v22 = Count;
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            *keys = 0u;
            v40 = 0u;
            v38 = 0u;
            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            *values = 0u;
            CFDictionaryGetKeysAndValues(a2, keys, values);
            if (v22 >= 1)
            {
              v23 = 0;
              do
              {
                result = _WriteStreamedObject(a1, keys[v23]);
                if (result)
                {
                  return result;
                }

                result = _WriteStreamedObject(a1, values[v23]);
                if (result)
                {
                  return result;
                }
              }

              while (v22 != ++v23);
            }
          }
        }
      }

      else
      {
        if (v5 != gCFArrayType)
        {
          if (*MEMORY[0x1E695E738] != a2)
          {
            return 4294960561;
          }

          v30 = 0;
          goto LABEL_17;
        }

        if ((v4 & 4) != 0)
        {
          v30 = -96;
          result = _WriteBytes(a1, &v30, 1);
          if (result)
          {
            return result;
          }
        }

        if ((v4 & 0x10) != 0)
        {
          v24 = CFArrayGetCount(a2);
          if (v24 >= 1)
          {
            v25 = v24;
            v26 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(a2, v26);
              result = _WriteStreamedObject(a1, ValueAtIndex);
              if (result)
              {
                return result;
              }
            }

            while (v25 != ++v26);
          }
        }
      }

      if ((v4 & 8) == 0)
      {
        return 0;
      }

      v30 = 1;
    }

LABEL_17:
    BytePtr = &v30;
LABEL_41:
    v10 = a1;
    v9 = 1;
LABEL_42:
    result = _WriteBytes(v10, BytePtr, v9);
    if (result)
    {
      return result;
    }

    return 0;
  }

  if (!*(a1 + 272) || CFStringGetLength(a2) < 1 || (result = _WriteStreamedUpdateUID(a1, a2, &v28), !result) && !v28)
  {
    v30 = 112;
    result = _WriteBytes(a1, &v30, 1);
    if (!result)
    {
      CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
      if (CStringPtr)
      {
        v8 = CStringPtr;
        v9 = strlen(CStringPtr) + 1;
        v10 = a1;
        BytePtr = v8;
        goto LABEL_42;
      }

      v15 = CFStringGetLength(a2);
      if (v15 >= 1)
      {
        v16 = v15;
        v17 = 0;
        do
        {
          v48.location = v17;
          v48.length = v16;
          Bytes = CFStringGetBytes(a2, v48, 0x8000100u, 0, 0, (a1 + 8), 256, &length);
          if (Bytes < 1)
          {
            return 4294960561;
          }

          v19 = Bytes;
          result = _WriteBytes(a1, (a1 + 8), length);
          if (result)
          {
            return result;
          }

          v17 += v19;
          v20 = v16 <= v19;
          v16 -= v19;
        }

        while (!v20);
      }

      BytePtr = "";
      goto LABEL_41;
    }
  }

  return result;
}

uint64_t _WriteStreamedUpdateUID(uint64_t a1, const void *a2, char *a3)
{
  *&v17[5] = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(*(a1 + 272), a2);
  if (!Value)
  {
    v10 = *(a1 + 272);
    v11 = (*(a1 + 280) + 1);
    *(a1 + 280) = v11;
    CFDictionaryAddValue(v10, a2, v11);
    v12 = 0;
LABEL_13:
    result = 0;
    *a3 = v12;
    return result;
  }

  v7 = (Value - 1);
  if (Value > 0x100)
  {
    if (Value > 0x10000)
    {
      if (Value >= 0x1000001)
      {
        if (Value > 0x100000000)
        {
          return 4294960586;
        }

        v8 = v17;
        v14 = -125;
        v15 = Value - 1;
        v16 = (Value - 1) >> 16;
        v7 >>= 24;
        v9 = 5;
      }

      else
      {
        v8 = &v16;
        v14 = -126;
        v15 = Value - 1;
        v7 >>= 16;
        v9 = 4;
      }
    }

    else
    {
      v8 = (&v15 + 1);
      v14 = -127;
      LOBYTE(v15) = Value - 1;
      v7 >>= 8;
      v9 = 3;
    }
  }

  else
  {
    v8 = &v15;
    v14 = 0x80;
    v9 = 2;
  }

  *v8 = v7;
  result = _WriteBytes(a1, &v14, v9);
  if (!result)
  {
    v12 = 1;
    goto LABEL_13;
  }

  return result;
}

uint64_t _WriteNumber(uint64_t a1, CFNumberRef number, int a3, int a4)
{
  v35 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  v23 = 0;
  if (CFNumberIsFloatType(number))
  {
    if ((*(a1 + 312) & 0x40) == 0 || (result = _WriteStreamedUpdateUID(a1, number, &v23), !result) && !v23)
    {
      if (CFNumberGetByteSize(number) > 4)
      {
        CFNumberGetValue(number, kCFNumberFloat64Type, &valuePtr);
        v25 = 35;
        v18 = valuePtr;
        if (!a4)
        {
          v18 = bswap64(valuePtr);
        }

        v26 = v18;
        v10 = 9;
      }

      else
      {
        CFNumberGetValue(number, kCFNumberFloat32Type, &valuePtr);
        v25 = 34;
        v9 = valuePtr;
        if (!a4)
        {
          v9 = bswap32(valuePtr);
        }

        LODWORD(v26) = v9;
        v10 = 5;
      }

      v19 = a1;
      return _WriteBytes(v19, &v25, v10);
    }
  }

  else
  {
    if (CFNumberGetType(number) != (kCFNumberMaxType|kCFNumberSInt8Type))
    {
      CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
      v20 = valuePtr;
      if ((*(a1 + 312) & 0x40) != 0 && valuePtr >= 0x100)
      {
        result = _WriteStreamedUpdateUID(a1, number, &v23);
        if (result || v23)
        {
          return result;
        }

        v20 = valuePtr;
      }

      return _WriteInteger(a1, v20, a3, a4);
    }

    v21 = 0;
    v22 = 0;
    if ((*(a1 + 312) & 0x40) == 0 || (result = _WriteStreamedUpdateUID(a1, number, &v23), !result) && !v23)
    {
      CFNumberGetValue(number, kCFNumberMaxType|kCFNumberSInt8Type, &v21);
      v25 = 20;
      if (a4)
      {
        v11 = v22 >> 8;
        v26 = v21;
        v12 = v22 >> 16;
        v27 = v22;
        v13 = v22 >> 24;
        v14 = HIDWORD(v22);
        v15 = v22 >> 40;
        v16 = HIWORD(v22);
        v17 = HIBYTE(v22);
      }

      else
      {
        LOBYTE(v17) = v22;
        v26 = bswap64(v21);
        v11 = HIWORD(v22);
        v27 = HIBYTE(v22);
        v12 = v22 >> 40;
        v13 = HIDWORD(v22);
        v14 = v22 >> 24;
        v15 = v22 >> 16;
        v16 = v22 >> 8;
      }

      v28 = v11;
      v29 = v12;
      v30 = v13;
      v31 = v14;
      v32 = v15;
      v33 = v16;
      v34 = v17;
      v19 = a1;
      v10 = 17;
      return _WriteBytes(v19, &v25, v10);
    }
  }

  return result;
}

uint64_t _WriteInteger(uint64_t a1, unint64_t a2, int a3, int a4)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2 <= 0xF && a3)
  {
    v6 = a2 | 0x90;
    v4 = 1;
  }

  else if (a2 > 0xFF)
  {
    if (a2 >> 16)
    {
      if (HIDWORD(a2))
      {
        v6 = 19;
        if (a4)
        {
          v7 = a2;
        }

        else
        {
          v7 = bswap64(a2);
        }

        v4 = 9;
      }

      else
      {
        v6 = 18;
        if (a4)
        {
          LODWORD(v7) = a2;
        }

        else
        {
          LODWORD(v7) = bswap32(a2);
        }

        v4 = 5;
      }
    }

    else
    {
      v6 = 17;
      if (a4)
      {
        LOWORD(v7) = a2;
      }

      else
      {
        LOWORD(v7) = bswap32(a2) >> 16;
      }

      v4 = 3;
    }
  }

  else
  {
    v6 = 16;
    LOBYTE(v7) = a2;
    v4 = 2;
  }

  return _WriteBytes(a1, &v6, v4);
}

uint64_t _WriteStreamedDictionaryApplier(uint64_t result, uint64_t a2, void *a3)
{
  if (!*(a3 + 4))
  {
    result = _WriteStreamedObject(*a3, result);
    if (result || (result = _WriteStreamedObject(*a3, a2), result))
    {
      *(a3 + 4) = result;
    }
  }

  return result;
}

BOOL _ObjectsExactlyEqual(const void *a1, const __CFNumber *a2)
{
  v4 = CFGetTypeID(a1);
  result = 0;
  if (v4 == CFGetTypeID(a2))
  {
    if (CFEqual(a1, a2))
    {
      if (v4 != gCFNumberType)
      {
        return 1;
      }

      IsFloatType = CFNumberIsFloatType(a1);
      if (IsFloatType == CFNumberIsFloatType(a2))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t CFBinaryPlistStreamedWriteBytes(const UInt8 *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = 0;
  v36 = 0u;
  v32 = 0;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  _GlobalEnsureInitialized();
  cf = 0;
  v33 = 0;
  v30 = 0u;
  v31 = 0u;
  DWORD2(v36) = 0;
  v8 = a2 | 0x40;
  v35 = a3;
  *&v36 = a4;
  if (a2 >= 0xF)
  {
    v8 = 79;
  }

  v12 = v8;
  v9 = _WriteBytes(&cf, &v12, 1);
  if (!v9)
  {
    if (a2 < 0xF || (v9 = _WriteInteger(&cf, a2, 1, 1), !v9))
    {
      v9 = _WriteBytes(&cf, a1, a2);
    }
  }

  v10 = v9;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (*(&v30 + 1))
  {
    CFRelease(*(&v30 + 1));
  }

  return v10;
}

uint64_t CFBinaryPlistStreamedWriteObject(const __CFString *a1, int a2, uint64_t a3, uint64_t a4)
{
  v32 = 0;
  v34 = 0u;
  v29 = 0;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  _GlobalEnsureInitialized();
  cf = 0;
  v30 = 0;
  v27 = 0u;
  v28 = 0u;
  DWORD2(v34) = 0;
  v31 = a2;
  v33 = a3;
  *&v34 = a4;
  v8 = _WriteStreamed(&cf, a1);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v27)
  {
    CFRelease(v27);
    *&v27 = 0;
  }

  if (*(&v27 + 1))
  {
    CFRelease(*(&v27 + 1));
  }

  return v8;
}

CFTypeRef CFBinaryPlistStreamedCreateWithBytes(_DWORD *a1, uint64_t a2, int *a3)
{
  v4[0] = 0u;
  LODWORD(v4[0]) = 19;
  v4[1] = a1;
  v4[2] = 0uLL;
  return _ReadStreamed(v4, a1, a1 + a2, 0, a3);
}

CFTypeRef _ReadStreamed(uint64_t a1, _DWORD *a2, unint64_t a3, void *a4, int *a5)
{
  cf = 0;
  v20 = a2;
  _GlobalEnsureInitialized();
  v10 = *a1;
  if ((*a1 & 0x40) != 0)
  {
    v11 = *(MEMORY[0x1E695E9E8] + 16);
    *&v18.version = *MEMORY[0x1E695E9E8];
    v18.copyDescription = *(&v11 + 1);
    v18.equal = _ObjectsExactlyEqual;
    v18.release = 0;
    v12 = CFDictionaryCreateMutable(0, 0, 0, &v18);
    *(a1 + 24) = v12;
    if (!v12)
    {
      v13 = 0;
      v14 = -6728;
      goto LABEL_18;
    }

    v10 = *a1;
  }

  if (v10)
  {
    if ((a3 - a2) < 4)
    {
      v13 = 0;
      v14 = -6743;
      goto LABEL_18;
    }

    if (*a2 != 826426947)
    {
      v13 = 0;
      v14 = -6716;
      goto LABEL_18;
    }

    v20 = a2 + 1;
  }

  if ((v10 & 0x10) == 0)
  {
    v13 = 0;
    if ((v10 & 2) == 0)
    {
LABEL_10:
      v14 = 0;
      goto LABEL_18;
    }

LABEL_14:
    if ((a3 - v20) < 4)
    {
      v14 = -6743;
    }

    else
    {
      if (*v20 == 558124613)
      {
        v14 = 0;
        ++v20;
        goto LABEL_18;
      }

      v14 = -6716;
    }

    goto LABEL_31;
  }

  v15 = _ReadStreamedObject(a1, &v20, a3, &cf);
  v13 = cf;
  if (!v15)
  {
    if (!cf)
    {
      v14 = -6742;
      goto LABEL_18;
    }

    if ((*a1 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  v14 = v15;
LABEL_31:
  if (v13)
  {
    CFRelease(v13);
    v13 = 0;
  }

LABEL_18:
  v16 = *(a1 + 24);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 24) = 0;
  }

  if (a4)
  {
    *a4 = v20;
  }

  if (a5)
  {
    *a5 = v14;
  }

  return v13;
}

uint64_t _ReadStreamedObject(uint64_t a1, unint64_t *a2, unint64_t a3, void *a4)
{
  v59 = 0;
  v56 = 0;
  valuePtr = 0;
  value = 0;
  v4 = *a2;
  if (*a2 >= a3)
  {
    return -6750;
  }

  v10 = v4 + 1;
  v9 = *v4;
  v58 = v4 + 1;
  v11 = v9 >> 4;
  if (v9 >> 4 <= 6)
  {
    if (v9 >> 4 > 1)
    {
      if (v11 == 2)
      {
        v31 = v9 & 0xF;
        if (v31 == 3)
        {
          if ((a3 - v10) <= 7)
          {
            goto LABEL_84;
          }

          valuePtr = *v10;
          v41 = CFNumberCreate(0, kCFNumberFloat64Type, &valuePtr);
          if (!v41)
          {
            goto LABEL_125;
          }

          v14 = v41;
          v32 = 9;
        }

        else
        {
          if (v31 != 2 || (a3 - v10) <= 3)
          {
            goto LABEL_84;
          }

          LODWORD(valuePtr) = *v10;
          v32 = 5;
          v14 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
          if (!v14)
          {
            goto LABEL_125;
          }
        }

        v35 = &v4[v32];
        goto LABEL_83;
      }

      if (v11 != 3)
      {
        if (v11 == 4)
        {
          v12 = v9 & 0xF;
          valuePtr = v12;
          if ((v9 & 0xF) == 0xF)
          {
            v59 = _ReadInteger(&v58, a3, &valuePtr, 1, 1);
            if (v59)
            {
LABEL_107:
              v15 = 0;
LABEL_123:
              Mutable = 0;
              goto LABEL_139;
            }

            v12 = valuePtr;
            if (valuePtr >> 31)
            {
              v15 = 0;
              Mutable = 0;
              v27 = -6710;
              goto LABEL_138;
            }

            v10 = v58;
          }

          if (v12 <= (a3 - v10))
          {
            v13 = *(a1 + 8);
            if (!v13 || (*a1 & 0x20) == 0)
            {
              v14 = CFDataCreate(0, v10, v12);
              if (!v14)
              {
                goto LABEL_125;
              }

LABEL_87:
              v58 = &v10[v12];
              *a4 = v14;
              if (v12 < 2)
              {
                goto LABEL_114;
              }

LABEL_112:
              v51 = *(a1 + 24);
              if (v51)
              {
                v52 = *(a1 + 32);
                *(a1 + 32) = v52 + 1;
                CFDictionaryAddValue(v51, v52, v14);
              }

              goto LABEL_114;
            }

            SubdataWithRangeNoCopy = CFDataCreateSubdataWithRangeNoCopy(v13, &v10[-*(a1 + 16)], v12, &v59);
            if (SubdataWithRangeNoCopy)
            {
              v14 = SubdataWithRangeNoCopy;
              v12 = valuePtr;
              goto LABEL_87;
            }

            goto LABEL_107;
          }

          goto LABEL_49;
        }

        goto LABEL_66;
      }

      if (v9 == 51)
      {
        if ((a3 - v10) > 7)
        {
          v34 = CFDateCreate(0, *v10);
          if (v34)
          {
            v14 = v34;
            v35 = (v4 + 9);
LABEL_83:
            v58 = v35;
            *a4 = v14;
            goto LABEL_112;
          }

LABEL_125:
          v15 = 0;
          goto LABEL_126;
        }

LABEL_84:
        v15 = 0;
        Mutable = 0;
        v27 = -6743;
        goto LABEL_138;
      }

LABEL_98:
      v15 = 0;
      Mutable = 0;
      v27 = -6756;
      goto LABEL_138;
    }

    if (v11)
    {
      if (v11 != 1)
      {
        goto LABEL_66;
      }

      v22 = v9 & 0xF;
      if (v22 <= 3)
      {
        v23 = 1 << v22;
        if (a3 - v10 < 1 << v22)
        {
          v24 = -6743;
        }

        else
        {
          v24 = -6764;
          if (v23 > 3)
          {
            if (v23 == 4)
            {
              v25 = *v10;
              goto LABEL_110;
            }

            if (v23 == 8)
            {
              v25 = *v10;
              goto LABEL_110;
            }
          }

          else
          {
            if (v23 == 1)
            {
              v25 = *v10;
              goto LABEL_110;
            }

            if (v23 == 2)
            {
              v25 = *(v4 + 1);
LABEL_110:
              valuePtr = v25;
              v58 = &v10[v23];
              v50 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
              if (!v50)
              {
                goto LABEL_125;
              }

              v14 = v50;
              *a4 = v50;
              if (v22)
              {
                goto LABEL_112;
              }

              goto LABEL_114;
            }
          }
        }

        v15 = 0;
        Mutable = 0;
        v59 = v24;
        goto LABEL_139;
      }

      if (v22 != 4)
      {
        v15 = 0;
        Mutable = 0;
        v27 = -6764;
        goto LABEL_138;
      }

      if ((a3 - v10) >= 16)
      {
        v54 = *(v4 + 1);
        v58 = v4 + 17;
        v39 = CFNumberCreate(0, kCFNumberMaxType|kCFNumberSInt8Type, &v54);
        if (v39)
        {
          v14 = v39;
          *a4 = v39;
          goto LABEL_112;
        }

        v27 = -6728;
        goto LABEL_137;
      }

      goto LABEL_128;
    }

    if (v9 > 7)
    {
      if (v9 == 8)
      {
        v40 = MEMORY[0x1E695E4C0];
      }

      else
      {
        if (v9 != 9)
        {
          goto LABEL_98;
        }

        v40 = MEMORY[0x1E695E4D0];
      }
    }

    else
    {
      if (v9)
      {
        if (v9 != 1)
        {
          goto LABEL_98;
        }

        *a4 = 0;
        goto LABEL_114;
      }

      v40 = MEMORY[0x1E695E738];
    }

    *a4 = *v40;
    goto LABEL_114;
  }

  if (v9 >> 4 <= 8)
  {
    if (v11 == 7)
    {
      if (v10 < a3)
      {
        v30 = v4 + 1;
        while (*v30)
        {
          if (++v30 == a3)
          {
            goto LABEL_49;
          }
        }

        v43 = CFStringCreateWithCString(0, v10, 0x8000100u);
        if (!v43)
        {
          v15 = 0;
          Mutable = 0;
          v27 = -6742;
          goto LABEL_138;
        }

        v44 = v43;
        *a4 = v43;
        if (*v10)
        {
          v45 = *(a1 + 24);
          if (v45)
          {
            v46 = *(a1 + 32);
            *(a1 + 32) = v46 + 1;
            CFDictionaryAddValue(v45, v46, v44);
          }
        }

        v58 = v30 + 1;
        goto LABEL_114;
      }

LABEL_49:
      v15 = 0;
      Mutable = 0;
      v27 = -6750;
LABEL_138:
      v59 = v27;
      goto LABEL_139;
    }

    if (v11 != 8)
    {
LABEL_66:
      v15 = 0;
      Mutable = 0;
      v27 = -6735;
      goto LABEL_138;
    }

    v26 = v9 & 0xF;
    if ((a3 - v10) >= (v9 & 0xF))
    {
      v27 = -6710;
      if (v26 > 1)
      {
        if (v26 == 2)
        {
          v28 = *(v4 + 1) | (v4[3] << 16);
          v29 = 3;
        }

        else
        {
          if (v26 != 3)
          {
            goto LABEL_137;
          }

          v28 = *v10;
          v29 = 4;
        }
      }

      else if (v26)
      {
        v28 = *(v4 + 1);
        v29 = 2;
      }

      else
      {
        v28 = *v10;
        v29 = 1;
      }

      v47 = *(a1 + 24);
      if (v47)
      {
        v48 = CFDictionaryGetValue(v47, v28);
        if (v48)
        {
          v49 = v48;
          CFRetain(v48);
          v58 = &v10[v29];
          *a4 = v49;
          v59 = 0;
          goto LABEL_114;
        }

        v27 = -6708;
      }

      else
      {
        v27 = -6732;
      }

LABEL_137:
      v15 = 0;
      Mutable = 0;
      goto LABEL_138;
    }

LABEL_128:
    v27 = -6743;
    goto LABEL_137;
  }

  if (v11 != 9)
  {
    if (v11 == 10)
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        while (1)
        {
          v36 = *(a1 + 40);
          if (v36 > 31)
          {
            break;
          }

          *(a1 + 40) = v36 + 1;
          v37 = _ReadStreamedObject(a1, &v58, a3, &value);
          v59 = v37;
          --*(a1 + 40);
          if (v37)
          {
            v15 = 0;
            goto LABEL_139;
          }

          v38 = value;
          if (!value)
          {
            *a4 = Mutable;
            goto LABEL_114;
          }

          CFArrayAppendValue(Mutable, value);
          CFRelease(v38);
          value = 0;
        }

        v15 = 0;
LABEL_117:
        v27 = -6751;
        goto LABEL_138;
      }

      v15 = 0;
      goto LABEL_127;
    }

    if (v11 == 13)
    {
      v15 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v15)
      {
LABEL_126:
        Mutable = 0;
LABEL_127:
        v27 = -6728;
        goto LABEL_138;
      }

      while (1)
      {
        v16 = *(a1 + 40);
        if (v16 > 31)
        {
          Mutable = 0;
          goto LABEL_117;
        }

        *(a1 + 40) = v16 + 1;
        v17 = _ReadStreamedObject(a1, &v58, a3, &v56);
        v59 = v17;
        v18 = *(a1 + 40);
        *(a1 + 40) = v18 - 1;
        Mutable = v56;
        if (v17)
        {
          break;
        }

        if (!v56)
        {
          *a4 = v15;
          goto LABEL_114;
        }

        *(a1 + 40) = v18;
        v20 = _ReadStreamedObject(a1, &v58, a3, &value);
        v59 = v20;
        --*(a1 + 40);
        if (v20)
        {
          goto LABEL_122;
        }

        v21 = value;
        if (!value)
        {
          v59 = -6750;
          goto LABEL_122;
        }

        CFDictionarySetValue(v15, Mutable, value);
        CFRelease(Mutable);
        v56 = 0;
        CFRelease(v21);
        value = 0;
      }

      if (!v56)
      {
        goto LABEL_139;
      }

LABEL_122:
      CFRelease(Mutable);
      goto LABEL_123;
    }

    goto LABEL_66;
  }

  LOBYTE(valuePtr) = v9 & 0xF;
  v33 = CFNumberCreate(0, kCFNumberSInt8Type, &valuePtr);
  if (!v33)
  {
    goto LABEL_125;
  }

  *a4 = v33;
LABEL_114:
  v15 = 0;
  Mutable = 0;
  *a2 = v58;
  v59 = 0;
LABEL_139:
  if (value)
  {
    CFRelease(value);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v59;
}