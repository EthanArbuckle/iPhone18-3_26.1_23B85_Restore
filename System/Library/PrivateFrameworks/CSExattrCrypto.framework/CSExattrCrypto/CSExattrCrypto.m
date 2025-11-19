BOOL isFsType(int a1, const char *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  bzero(&v6, 0x878uLL);
  result = !fstatfs(a1, &v6) && !strcmp(v6.f_fstypename, a2);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void _MDItemSetPrivateAttributesForURL(const __CFURL *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = +[MDPrivateXattrServices defaultServices];
  if (_MDItemSetPrivateAttributesForURL_once != -1)
  {
    _MDItemSetPrivateAttributesForURL_cold_1();
  }

  bzero(buffer, 0x400uLL);
  if (!a1 || !CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    NSLog(&cfstr_InvalidUrl.isa, a1);
    v13 = objc_alloc(MEMORY[0x277CCA9B8]);
    v14 = *MEMORY[0x277CCA5B8];
    v15 = 22;
LABEL_8:
    v16 = [v13 initWithDomain:v14 code:v15 userInfo:0];
    v5[2](v5, v16);
    CFRelease(v16);
    goto LABEL_9;
  }

  v8 = open(buffer, 2);
  if ((v8 & 0x80000000) != 0)
  {
    v18 = objc_alloc(MEMORY[0x277CCA9B8]);
    v19 = *MEMORY[0x277CCA5B8];
    v15 = *__error();
    v13 = v18;
    v14 = v19;
    goto LABEL_8;
  }

  v9 = v8;
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v10 setObject:_MDItemSetPrivateAttributesForURL_sMDPrivateMDAttributesXattrNSUUID forKey:@"uuid"];
  v11 = [a2 allKeys];
  [v10 setObject:v11 forKey:@"keys"];

  v12 = [a2 allValues];
  [v10 setObject:v12 forKey:@"values"];

  [v7 updatePrivateXattrParams:v10 flags:0 forFileDescriptor:v9 mergeCallback:&__block_literal_global_3 completionHandler:v5];
  close(v9);

LABEL_9:
  objc_autoreleasePoolPop(v6);

  v17 = *MEMORY[0x277D85DE8];
}

id copyConnection()
{
  os_unfair_lock_lock(&sLock);
  if (!sConnectionToService)
  {
    if (sConnectionRetainCount)
    {
      copyConnection_cold_1();
    }

    v0 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.spotlight.CSExattrCryptoService"];
    v1 = sConnectionToService;
    sConnectionToService = v0;

    v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2854F6998];
    [sConnectionToService setRemoteObjectInterface:v2];

    [sConnectionToService resume];
  }

  ++sConnectionRetainCount;
  os_unfair_lock_unlock(&sLock);
  v3 = sConnectionToService;

  return v3;
}

void releaseConnection(void *a1)
{
  v2 = a1;
  os_unfair_lock_lock(&sLock);
  if (sConnectionToService != v2)
  {
    releaseConnection_cold_1();
  }

  if (!v2)
  {
    releaseConnection_cold_3();
  }

  if (!sConnectionRetainCount)
  {
    releaseConnection_cold_2();
  }

  if (!--sConnectionRetainCount)
  {
    [sConnectionToService invalidate];
    v1 = sConnectionToService;
    sConnectionToService = 0;
  }

  os_unfair_lock_unlock(&sLock);
}

const __CFString *_MDItemCopyXattrsForURL(const __CFURL *a1)
{
  result = CFURLCopyFileSystemPath(a1, kCFURLPOSIXPathStyle);
  if (result)
  {
    v2 = result;
    Length = CFStringGetLength(result);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v5 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
    CFStringGetCString(v2, v5, MaximumSizeForEncoding + 1, 0x8000100u);
    v6 = MDFSOnlyMDCopyXattrsDictionary(v5);
    free(v5);
    CFRelease(v2);
    return v6;
  }

  return result;
}

void _MDItemDecrypt(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = copyConnection();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ___MDItemDecrypt_block_invoke;
  v12[3] = &unk_278D63348;
  v5 = v3;
  v13 = v5;
  v6 = [v4 remoteObjectProxyWithErrorHandler:v12];
  if (v6)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___MDItemDecrypt_block_invoke_2;
    v9[3] = &unk_278D63370;
    v11 = v5;
    v10 = v4;
    [v6 decryptAttributesWithData:a1 withReply:v9];

    v7 = v11;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ___MDItemSetPrivateAttributesForURL_block_invoke_2_cold_1();
    }

    v8 = objc_alloc(MEMORY[0x277CCA9B8]);
    v7 = [v8 initWithDomain:*MEMORY[0x277CCA5B8] code:61 userInfo:0];
    (*(v5 + 2))(v5, v7, 0);
    releaseConnection(v4);
  }
}

void _MDItemFetchPrivateAttributesForURL(const __CFURL *a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _MDItemCopyXattrsForURL(a1);
  v5 = [(__CFString *)v4 objectForKey:@"_kMDItemEncryptedData"];
  v6 = v5;
  if (v5)
  {
    v13[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = ___MDItemFetchPrivateAttributesForURL_block_invoke;
    v11[3] = &unk_278D63398;
    v12 = v3;
    _MDItemDecrypt(v7, v11);
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277CCA9B8]);
    v9 = [v8 initWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    (*(v3 + 2))(v3, v9, 0);
    CFRelease(v9);
  }

  v10 = *MEMORY[0x277D85DE8];
}

const __CFNumber *MDFSOnlyMDNumberGetInt64(const __CFNumber *result)
{
  valuePtr = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

const __CFNumber *MDFSOnlyMDNumberGetInt32(const __CFNumber *result)
{
  valuePtr = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

const __CFNumber *MDFSOnlyMDNumberGetBool(const __CFNumber *result)
{
  valuePtr = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr);
    return (valuePtr != 0);
  }

  return result;
}

uint64_t MDCopyDecodedXattrFromData(void *a1, CFTypeRef cf)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CBEEE8];
  result = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == cf)
  {
LABEL_4:
    if (result)
    {
      goto LABEL_37;
    }

    goto LABEL_5;
  }

  v6 = CFGetTypeID(cf);
  if (v6 == CFDataGetTypeID())
  {
    result = MDPropertyCopyDecodedValue();
    goto LABEL_4;
  }

LABEL_5:
  if (![a1 isEqualToString:@"com.apple.metadata:_kMDItemUserTags"])
  {
    result = 0;
    goto LABEL_37;
  }

  if (MDCopyDecodedXattrFromData_onceToken != -1)
  {
    MDCopyDecodedXattrFromData_cold_1();
  }

  v28 = 0;
  v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:MDCopyDecodedXattrFromData_sUserTagsUnarchiveValidClasses fromData:cf error:&v28];
  v8 = v28;
  if (v28)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v30 = v8;
      v31 = 2112;
      v32 = a1;
      _os_log_impl(&dword_242636000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Decoding error: %@ for %@", buf, 0x16u);
    }

    goto LABEL_36;
  }

  v9 = v7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![objc_msgSend(v9 objectForKeyedSubscript:{@"v", "isEqual:", &unk_2854F4FC8}] || (v10 = objc_msgSend(v9, "objectForKeyedSubscript:", @"t"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v11 = objc_msgSend(v10, "count"), v12 = v11, v11 > 99))
  {
    v4 = 0;
    goto LABEL_36;
  }

  v13 = 8 * v11;
  (MEMORY[0x28223BE20])();
  v14 = (&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v14, 8 * v12);
  v15 = [v10 getObjects:v14 range:{0, v12}];
  MEMORY[0x28223BE20](v15);
  v16 = v14;
  bzero(v14, 8 * v12);
  if (v12 < 1)
  {
    goto LABEL_38;
  }

  v17 = 0;
  do
  {
    v18 = *v14;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v20 = *v14;
    if ((isKindOfClass & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_32;
      }

      v23 = *v14;
      goto LABEL_31;
    }

    v21 = [*v14 count];
    if (v21 == 2)
    {
      [v20 objectAtIndexedSubscript:0];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_32;
      }

      v23 = [v20 objectAtIndexedSubscript:0];
      v24 = [v20 objectAtIndexedSubscript:1];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = [v24 intValue];
        if ((v25 - 1) <= 6)
        {
          v22 = [v23 stringByAppendingFormat:@"\n%d", v25];
LABEL_23:
          v23 = v22;
        }
      }

      if (!v23)
      {
        goto LABEL_32;
      }

LABEL_31:
      v16[v17++] = v23;
      goto LABEL_32;
    }

    if (v21 == 1)
    {
      [v20 objectAtIndexedSubscript:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = [v20 objectAtIndexedSubscript:0];
        goto LABEL_23;
      }
    }

LABEL_32:
    ++v14;
    --v12;
  }

  while (v12);
  if (v17 > 0)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:v16 count:v17];
    goto LABEL_36;
  }

LABEL_38:
  v4 = 0;
LABEL_36:
  result = v4;
LABEL_37:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24263815C(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    if (a2 == 2)
    {
      objc_end_catch();
      JUMPOUT(0x2426380FCLL);
    }

    objc_exception_rethrow();
  }

  JUMPOUT(0x242638154);
}

void sub_2426381C0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  sub_242638150(a1);
}

uint64_t __MDCopyDecodedXattrFromData_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  result = [v0 initWithObjects:{v1, v2, v3, objc_opt_class(), 0}];
  MDCopyDecodedXattrFromData_sUserTagsUnarchiveValidClasses = result;
  return result;
}

uint64_t MDFSOnlyCopyExtendedAttributesFromFd(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v18 = *MEMORY[0x277D85DE8];
  v7 = value;
  bzero(value, 0x1000uLL);
  v8 = fgetxattr(v6, v5, value, 0x1000uLL, 0, 0);
  if (v8 == -1)
  {
    if (*__error() != 34)
    {
      v10 = 0;
      goto LABEL_12;
    }

    v9 = fgetxattr(v6, v5, 0, 0, 0, 0);
    v7 = malloc_type_malloc(v9, 0x6EEED0F6uLL);
    v8 = fgetxattr(v6, v5, v7, v9, 0, 0);
  }

  else
  {
    v9 = v8;
  }

  v10 = 0;
  if (v9 >= 1 && v8 == v9)
  {
    if ((*v7 & 0x80000000) == 0)
    {
LABEL_8:
      v11 = *MEMORY[0x277CBECE8];
      v12 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v7, v9, *MEMORY[0x277CBED00]);
      v13 = CFStringCreateWithCString(v11, v5, 0x8000100u);
      v10 = MDCopyDecodedXattrFromData(v13, v12);
      CFRelease(v12);
      CFRelease(v13);
      goto LABEL_9;
    }

    v16 = *v7;
    if ((v16 - 241) >= 2)
    {
      if (v16 != 129)
      {
        goto LABEL_8;
      }

      if (v9 != 9)
      {
        goto LABEL_8;
      }

      v10 = CFDateCreate(*MEMORY[0x277CBECE8], *(v7 + 1));
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    else if (v3)
    {
      *v3 = 1;
      v10 = CFDataCreate(*MEMORY[0x277CBECE8], v7, v9);
    }

    else
    {
      v10 = 0;
    }
  }

LABEL_9:
  if (v7 != value)
  {
    free(v7);
  }

LABEL_12:
  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

__CFDictionary *MDFSOnlyMDCopyXattrsDictionaryForFD(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v59 = *MEMORY[0x277D85DE8];
  v7 = namebuff;
  bzero(namebuff, 0x1000uLL);
  v8 = flistxattr(v6, namebuff, 0x1000uLL, 0);
  if (v8 < 0)
  {
    if (*__error() != 34)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      goto LABEL_65;
    }

    v9 = flistxattr(v6, 0, 0, 0);
    v39 = malloc_type_malloc(v9, 0x7C8DE1E7uLL);
    if (!v39 || (v7 = v39, flistxattr(v6, v39, v9, 0) < 0))
    {
      Mutable = 0;
      goto LABEL_65;
    }
  }

  else
  {
    v9 = v8;
  }

  v10 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v9 >= 1)
  {
    v42 = v3;
    __s1 = v7;
    v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&kMDLabelPrivateXattrUUIDBytes];
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v12, 0}];

    v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v9 >= 3)
    {
      v14 = *MEMORY[0x277CBECD0];
      v15 = __s1;
      do
      {
        if (!*v15)
        {
          break;
        }

        if (!strncmp(v15, "com.apple.metadata", 0x12uLL))
        {
          v22 = v15[18];
          LOBYTE(valuePtr) = 0;
          if (v22 != 58)
          {
            if (v22 != 46)
            {
              goto LABEL_46;
            }

            LOBYTE(valuePtr) = 1;
          }

          v19 = MDFSOnlyCopyExtendedAttributesFromFd(v6);
          if (v19)
          {
            if (valuePtr)
            {
LABEL_32:
              if (!strncmp(v15, "com.apple.metadata:kMDLabel_", 0x1CuLL))
              {
                bzero(&value, 0x400uLL);
                snprintf(&value, 0x400uLL, "%s.%s", "com.apple.metadata", v15 + 28);
                [v43 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", &value)}];
                [v44 addObject:v19];
              }

              if (!v19)
              {
                goto LABEL_46;
              }
            }

            else if ((v5 & 1) == 0)
            {
              v23 = CFStringCreateWithCString(v10, v15 + 19, 0x8000100u);
              if (v23)
              {
                v24 = v23;
                CFDictionaryAddValue(Mutable, v23, v19);
                CFRelease(v24);
              }
            }

            goto LABEL_35;
          }

          if (valuePtr)
          {
            goto LABEL_32;
          }
        }

        else if ((v5 & 1) == 0)
        {
          if (!strcmp(v15, "com.apple.lastuseddate#PS"))
          {
            value = 0;
            v56 = 0;
            v57 = 0;
            if (v6 == -1)
            {
              goto LABEL_45;
            }

            v25 = fgetxattr(v6, "com.apple.lastuseddate#PS", &value, 0x18uLL, 0, 0);
            if ((v25 & 0x8000000000000000) == 0)
            {
              if (v25 != 16)
              {
LABEL_45:
                *__error() = 22;
                goto LABEL_46;
              }

              if (value)
              {
                v19 = CFDateCreate(v10, v56 / 1000000000.0 + value - v14);
                v20 = Mutable;
                v21 = @"kMDItemLastUsedDate";
LABEL_30:
                CFDictionarySetValue(v20, v21, v19);
LABEL_35:
                CFRelease(v19);
              }
            }
          }

          else if (!strcmp(v15, "com.apple.TextEncoding"))
          {
            p_value = &value;
            bzero(&value, 0x400uLL);
            if (fgetxattr(v6, v15, &value, 0x400uLL, 0, 0) > 0)
            {
              goto LABEL_39;
            }

            if (*__error() == 34)
            {
              v27 = fgetxattr(v6, v15, 0, 0, 0, 0);
              p_value = malloc_type_calloc(1uLL, v27 + 1, 0x100004077774924uLL);
              fgetxattr(v6, v15, p_value, v27, 0, 0);
LABEL_39:
              v28 = strchr(p_value, 59);
              if (v28)
              {
                encoding = 0;
                if (sscanf(v28 + 1, "%u", &encoding) == 1)
                {
                  if (CFStringIsEncodingAvailable(encoding))
                  {
                    valuePtr = encoding;
                    v29 = CFNumberCreate(v10, kCFNumberSInt32Type, &valuePtr);
                    CFDictionarySetValue(Mutable, @"--_kMDItemTextEncodingHint", v29);
                    CFRelease(v29);
                  }
                }
              }

              if (p_value != &value)
              {
                free(p_value);
              }
            }
          }

          else if (!strncmp(v15, "com.apple.SharedWithYou", 0x17uLL))
          {
            v16 = &value;
            bzero(&value, 0x400uLL);
            if (fgetxattr(v6, v15, &value, 0x400uLL, 0, 0) <= 0)
            {
              if (*__error() != 34)
              {
                goto LABEL_46;
              }

              v17 = fgetxattr(v6, v15, 0, 0, 0, 0);
              v16 = malloc_type_calloc(1uLL, v17 + 1, 0x100004077774924uLL);
              fgetxattr(v6, v15, v16, v17, 0, 0);
            }

            v18 = CFStringCreateWithCString(v10, v16, 0x8000100u);
            if (v18)
            {
              v19 = v18;
              v20 = Mutable;
              v21 = @"com.apple.SharedWithYou";
              goto LABEL_30;
            }
          }
        }

LABEL_46:
        v30 = strlen(v15) + 1;
        v15 += v30;
        v9 -= v30;
      }

      while (v9 > 2);
    }

    if ([v43 count])
    {
      if (v42)
      {
        v31 = _MDPlistContainerCreateMutable();
        _MDPlistContainerBeginContainer();
        _MDPlistContainerBeginDictionary();
        _MDPlistContainerAddCString();
        _MDPlistContainerAddObject();
        _MDPlistContainerAddCString();
        _MDPlistContainerBeginArray();
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v32 = [v13 countByEnumeratingWithState:&v46 objects:v54 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v47;
          do
          {
            for (i = 0; i != v33; ++i)
            {
              if (*v47 != v34)
              {
                objc_enumerationMutation(v13);
              }

              [*(*(&v46 + 1) + 8 * i) UUIDString];
              _MDPlistContainerAddObject();
            }

            v33 = [v13 countByEnumeratingWithState:&v46 objects:v54 count:16];
          }

          while (v33);
        }

        _MDPlistContainerEndArray();
        _MDPlistContainerAddCString();
        _MDPlistContainerAddObject();
        _MDPlistContainerEndDictionary();
        _MDPlistContainerEndContainer();
        v36 = objc_alloc(MEMORY[0x277CBEA90]);
        Bytes = _MDPlistContainerGetBytes();
        v38 = [v36 initWithBytes:Bytes length:_MDPlistContainerGetLength()];
        CFDictionarySetValue(Mutable, @"_kMDItemEncryptedData", v38);

        CFRelease(v31);
      }

      else
      {
        v52[0] = @"xids";
        v52[1] = @"uuids";
        v53[0] = v43;
        v53[1] = v13;
        v52[2] = @"datas";
        v53[2] = v44;
        CFDictionarySetValue(Mutable, @"_kMDItemEncryptedDataDictionary", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:3]);
      }
    }

    if (__s1 != namebuff)
    {
      free(__s1);
    }
  }

LABEL_65:
  v40 = *MEMORY[0x277D85DE8];
  return Mutable;
}

__CFDictionary *MDFSOnlyMDCopyXattrsDictionary(const char *a1)
{
  v1 = open(a1, 33024);
  if (v1 == -1)
  {
    return 0;
  }

  v2 = v1;
  v3 = MDFSOnlyMDCopyXattrsDictionaryForFD(v1);
  close(v2);
  return v3;
}

void sub_242639120(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2 == 2)
  {
    objc_begin_catch(exc_buf);
    NSLog(&stru_2854F4640.isa);

    objc_end_catch();
  }

  else
  {
    objc_begin_catch(exc_buf);
  }

  JUMPOUT(0x2426390F0);
}

uint64_t addStandardKeychainAttributesToDictionary(void *a1)
{
  [a1 setObject:@"com.apple.Spotlight.Metadata" forKey:*MEMORY[0x277CDBEC8]];
  v2 = *MEMORY[0x277CBED28];
  [a1 setObject:*MEMORY[0x277CBED28] forKey:*MEMORY[0x277CDC140]];
  [a1 setObject:v2 forKey:*MEMORY[0x277CDC558]];
  v3 = *MEMORY[0x277CDC008];
  v4 = *MEMORY[0x277CDBFE0];

  return [a1 setObject:v3 forKey:v4];
}

void updateDesignatedUUIDIfNewer(uint64_t a1, void *a2, void *a3, id *a4)
{
  v6 = [a2 objectForKey:*MEMORY[0x277CDBF90]];
  if (!*(a1 + 8))
  {
    *(a1 + 8) = a3;
    goto LABEL_5;
  }

  if ([*a4 compare:v6] == 1)
  {

    *(a1 + 8) = a3;
LABEL_5:
    *a4 = v6;
    return;
  }
}

void sub_242639710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFDataRef _copyCryptedDataWithKey(CCOperation a1, const void *a2, size_t a3, void *a4, int a5, int a6)
{
  v24 = *MEMORY[0x277D85DE8];
  dataOutAvailable = a3 + 16;
  v13 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:a3 + 16];
  length = 0;
  iv[0] = a5;
  iv[1] = a6;
  v23 = 0;
  v14 = CCCrypt(a1, 0, 1u, [a4 bytes], objc_msgSend(a4, "length"), iv, a2, a3, objc_msgSend(v13, "bytes"), dataOutAvailable, &length);
  if (v14)
  {
    v15 = v14;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      _copyCryptedDataWithKey_cold_1(v15);
    }

    v16 = 0;
  }

  else
  {
    v17 = *MEMORY[0x277CBECE8];
    v18 = [v13 bytes];
    v16 = CFDataCreate(v17, v18, length);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

unint64_t _MDLabelUUIDEncode(unint64_t result, unint64_t a2, uint64_t a3)
{
  *a3 = _MDLabelUUIDEncode_encodingVector[result >> 3];
  *(a3 + 1) = _MDLabelUUIDEncode_encodingVector[(result >> 14) & 0xFFFFFFFFFFFFFFE3 | (4 * (result & 7))];
  *(a3 + 2) = _MDLabelUUIDEncode_encodingVector[(result >> 9) & 0x1F];
  *(a3 + 3) = _MDLabelUUIDEncode_encodingVector[(BYTE2(result) & 0xF0 | (result & 0x100)) >> 4];
  *(a3 + 4) = _MDLabelUUIDEncode_encodingVector[(result >> 15) & 0x1E | (result >> 31)];
  *(a3 + 5) = _MDLabelUUIDEncode_encodingVector[(result >> 26) & 0x1F];
  *(a3 + 6) = _MDLabelUUIDEncode_encodingVector[(result >> 21) & 0x18 | (result >> 37) & 7];
  *(a3 + 7) = _MDLabelUUIDEncode_encodingVector[HIDWORD(result) & 0x1F];
  *(a3 + 8) = _MDLabelUUIDEncode_encodingVector[(result >> 43) & 0x1F];
  *(a3 + 9) = _MDLabelUUIDEncode_encodingVector[(result >> 38) & 0x1C | (result >> 54) & 3];
  *(a3 + 10) = _MDLabelUUIDEncode_encodingVector[(result >> 49) & 0x1F];
  *(a3 + 11) = _MDLabelUUIDEncode_encodingVector[(result >> 44) & 0x10 | (result >> 60)];
  *(a3 + 12) = _MDLabelUUIDEncode_encodingVector[(result >> 55) & 0x1E | (a2 >> 7) & 1];
  *(a3 + 13) = _MDLabelUUIDEncode_encodingVector[(a2 >> 2) & 0x1F];
  *(a3 + 14) = _MDLabelUUIDEncode_encodingVector[(a2 >> 13) & 0xFFFFFFFFFFFFFFE7 | (8 * (a2 & 3))];
  *(a3 + 15) = _MDLabelUUIDEncode_encodingVector[(a2 >> 8) & 0x1F];
  *(a3 + 16) = _MDLabelUUIDEncode_encodingVector[(a2 >> 19) & 0x1F];
  *(a3 + 17) = _MDLabelUUIDEncode_encodingVector[(a2 >> 14) & 0x1C | (a2 >> 30)];
  *(a3 + 18) = _MDLabelUUIDEncode_encodingVector[(a2 >> 25) & 0x1F];
  *(a3 + 19) = _MDLabelUUIDEncode_encodingVector[(a2 >> 20) & 0x10 | (a2 >> 36) & 0xF];
  *(a3 + 20) = _MDLabelUUIDEncode_encodingVector[(a2 >> 31) & 0x1E | (a2 >> 47) & 1];
  *(a3 + 21) = _MDLabelUUIDEncode_encodingVector[(a2 >> 42) & 0x1F];
  *(a3 + 22) = _MDLabelUUIDEncode_encodingVector[(a2 >> 37) & 0x18 | (a2 >> 53) & 7];
  *(a3 + 23) = _MDLabelUUIDEncode_encodingVector[HIWORD(a2) & 0x1F];
  *(a3 + 24) = _MDLabelUUIDEncode_encodingVector[a2 >> 59];
  *(a3 + 25) = _MDLabelUUIDEncode_encodingVector[(a2 >> 54) & 0x1C];
  return result;
}

uint64_t _MDPrivateXattrUUIDsGetter()
{
  if (_MDPrivateXattrUUIDsGetter_once != -1)
  {
    _MDPrivateXattrUUIDsGetter_cold_1();
  }

  return _MDPrivateXattrUUIDsGetter_uuids;
}

CFTypeID MDLabelGetTypeID(void)
{
  if (MDLabelGetTypeID_once != -1)
  {
    MDLabelGetTypeID_cold_1();
  }

  return MDLabelGetTypeID_typeID;
}

uint64_t __MDLabelGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  MDLabelGetTypeID_typeID = result;
  return result;
}

uint64_t copyUpdatedData(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v153 = v2;
  v154 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v1;
  v194 = *MEMORY[0x277D85DE8];
  v15 = [v10 objectForKey:@"keys"];
  v16 = [v11 objectForKey:@"values"];
  v164 = 0;
  if (v13)
  {
    v17 = [+[MDPrivateXattrServices defaultServices](MDPrivateXattrServices "defaultServices")];
    if ([v17 count])
    {
      v18 = objc_alloc(MEMORY[0x277CBEB38]);
      v186[0] = [v17 allKeys];
      v186[1] = [v17 allValues];
      v19 = [v18 initWithObjects:objc_msgSend(MEMORY[0x277CBEA60] forKeys:{"arrayWithObjects:count:", v186, 2), &unk_2854F4FE0}];

      if (v19)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
LABEL_7:
  v20 = [+[MDKeyRing defaultKeyRing](MDKeyRing "defaultKeyRing")];
  v21 = [v11 objectForKey:@"uuid"];
  v157 = v20;
  v155 = v9;
  if (!v9)
  {
    v72 = [v19 objectForKey:@"uuid"];
    if (!v72 || ![v21 isEqual:v72])
    {
      goto LABEL_84;
    }

    v22 = copyUpdatedXattrDictionary(v19, v15, v16, v7);
LABEL_83:
    if (v22)
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

  v22 = copyUpdatedXattrDictionary(v19, v15, v16, v7);
  if (eligbleToThin_once != -1)
  {
    copyUpdatedData_cold_1();
  }

  if (![v15 count] || !objc_msgSend(eligbleToThin_sThinnableKeys, "containsObject:", objc_msgSend(v15, "objectAtIndexedSubscript:", 0)))
  {
    goto LABEL_83;
  }

  v150 = v19;
  v23 = [v22 objectForKey:@"keys"];
  v151 = [v22 objectForKey:@"values"];
  v149 = [v22 objectForKey:@"mod_date"];
  if (![v15 count])
  {
    goto LABEL_143;
  }

  v24 = [v23 count];
  if (v24 != [v151 count] || !objc_msgSend(v23, "count"))
  {
    goto LABEL_143;
  }

  v142 = v21;
  v143 = v11;
  v144 = v14;
  v158 = v22;
  v147 = v23;
  v25 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjects:v151 forKeys:v23];
  v181 = 0u;
  v182 = 0u;
  v183 = 0u;
  v184 = 0u;
  v26 = [v15 countByEnumeratingWithState:&v181 objects:v193 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v182;
    v29 = -1;
LABEL_17:
    v30 = 0;
    while (1)
    {
      if (*v182 != v28)
      {
        objc_enumerationMutation(v15);
      }

      v31 = [v25 objectForKeyedSubscript:*(*(&v181 + 1) + 8 * v30)];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_142;
      }

      v32 = [v31 count];
      if (v29 == -1)
      {
        v29 = v32;
        if (!v32)
        {
          goto LABEL_142;
        }
      }

      else if (v29 != v32)
      {
        goto LABEL_142;
      }

      if (v27 == ++v30)
      {
        v27 = [v15 countByEnumeratingWithState:&v181 objects:v193 count:16];
        if (v27)
        {
          goto LABEL_17;
        }

        break;
      }
    }
  }

  v33 = [v25 objectForKeyedSubscript:{objc_msgSend(v15, "objectAtIndexedSubscript:", 0)}];
  v177 = 0u;
  v178 = 0u;
  v179 = 0u;
  v180 = 0u;
  v34 = [v33 countByEnumeratingWithState:&v177 objects:v191 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v178;
LABEL_29:
    v37 = 0;
    while (1)
    {
      if (*v178 != v36)
      {
        objc_enumerationMutation(v33);
      }

      v38 = *(*(&v177 + 1) + 8 * v37);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      if (v35 == ++v37)
      {
        v35 = [v33 countByEnumeratingWithState:&v177 objects:v191 count:16];
        if (v35)
        {
          goto LABEL_29;
        }

        goto LABEL_35;
      }
    }

LABEL_142:

    v22 = v158;
    v11 = v143;
    v14 = v144;
    v21 = v142;
    goto LABEL_143;
  }

LABEL_35:
  v140 = v5;
  v141 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  v39 = [v33 count];
  v146 = [v33 lastObject];
  v148 = [MEMORY[0x277CBEB58] set];
  v40 = [MEMORY[0x277CBEB38] dictionary];
  if (v39)
  {
    v145 = v33;
    do
    {
      v41 = [v33 objectAtIndexedSubscript:--v39];
      [v146 timeIntervalSinceDate:v41];
      if (v42 > 0.0)
      {
        if (v42 >= *"")
        {
          if (v42 >= 2678400.0)
          {
            if (v42 >= 94867200.0)
            {
              v43 = 4;
            }

            else
            {
              v43 = 12;
            }
          }

          else
          {
            v43 = 28;
          }
        }

        else
        {
          v43 = 60;
        }

        v41 = [v141 dateFromComponents:{objc_msgSend(v141, "components:fromDate:", v43, v41)}];
      }

      v44 = [MEMORY[0x277CBEB38] dictionary];
      v173 = 0u;
      v174 = 0u;
      v175 = 0u;
      v176 = 0u;
      v45 = [v15 countByEnumeratingWithState:&v173 objects:&v189 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v174;
        do
        {
          for (i = 0; i != v46; ++i)
          {
            if (*v174 != v47)
            {
              objc_enumerationMutation(v15);
            }

            v49 = *(*(&v173 + 1) + 8 * i);
            v50 = [v15 objectAtIndexedSubscript:0];
            v51 = v41;
            if (v49 != v50)
            {
              v51 = [objc_msgSend(v25 objectForKeyedSubscript:{v49), "objectAtIndexedSubscript:", v39}];
            }

            [v44 setObject:v51 forKeyedSubscript:v49];
          }

          v46 = [v15 countByEnumeratingWithState:&v173 objects:&v189 count:16];
        }

        while (v46);
      }

      if (([v148 containsObject:v44] & 1) == 0)
      {
        [v148 addObject:v44];
        v171 = 0u;
        v172 = 0u;
        v169 = 0u;
        v170 = 0u;
        v52 = [v15 countByEnumeratingWithState:&v169 objects:v188 count:16];
        if (v52)
        {
          v53 = v52;
          v54 = *v170;
          do
          {
            for (j = 0; j != v53; ++j)
            {
              if (*v170 != v54)
              {
                objc_enumerationMutation(v15);
              }

              v56 = *(*(&v169 + 1) + 8 * j);
              v57 = [v40 objectForKeyedSubscript:v56];
              if (!v57)
              {
                v57 = [MEMORY[0x277CBEB18] array];
                [v40 setObject:v57 forKeyedSubscript:v56];
              }

              [v57 addObject:{objc_msgSend(v44, "objectForKeyedSubscript:", v56)}];
            }

            v53 = [v15 countByEnumeratingWithState:&v169 objects:v188 count:16];
          }

          while (v53);
        }
      }

      v33 = v145;
    }

    while (v39);
  }

  v58 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v59 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v60 = [v15 countByEnumeratingWithState:&v165 objects:v187 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v166;
    do
    {
      for (k = 0; k != v61; ++k)
      {
        if (*v166 != v62)
        {
          objc_enumerationMutation(v15);
        }

        v64 = *(*(&v165 + 1) + 8 * k);
        v65 = [v40 objectForKeyedSubscript:v64];
        [v58 addObject:v64];
        [v59 addObject:{objc_msgSend(objc_msgSend(v65, "reverseObjectEnumerator"), "allObjects")}];
      }

      v61 = [v15 countByEnumeratingWithState:&v165 objects:v187 count:16];
    }

    while (v61);
  }

  v66 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v15];
  v67 = [v147 count];
  v20 = v157;
  v9 = v155;
  v21 = v142;
  if (v67)
  {
    v68 = v67;
    for (m = 0; m != v68; ++m)
    {
      v70 = [v147 objectAtIndexedSubscript:m];
      if (([v66 containsObject:v70] & 1) == 0)
      {
        [v58 addObject:v70];
        [v59 addObject:{objc_msgSend(v151, "objectAtIndexedSubscript:", m)}];
      }
    }
  }

  v71 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v71 setObject:v58 forKeyedSubscript:@"keys"];
  [v71 setObject:v59 forKeyedSubscript:@"values"];

  v22 = v158;
  v5 = v140;
  v11 = v143;
  v14 = v144;
  if (v71)
  {
    [v71 setObject:v149 forKey:@"mod_date"];
    goto LABEL_144;
  }

LABEL_143:
  v71 = [v22 copy];
LABEL_144:

  v22 = v71;
  v19 = v150;
  if (!v22)
  {
LABEL_84:
    v22 = [v11 mutableCopy];
    [v22 removeObjectForKey:@"uuid"];
    [v22 setObject:objc_msgSend(MEMORY[0x277CBEAA8] forKey:{"date"), @"mod_date"}];
  }

LABEL_85:
  v159 = v22;

  memset(v191, 0, sizeof(v191));
  v192 = 0;
  if (v9)
  {
    v73 = v20;
  }

  else
  {
    v73 = v21;
  }

  v190 = 0;
  v189 = 0;
  [v14 digestUUIDBytesWithKey:v20 forUUID:v73 uuidBytes:&v189];
  _MDLabelUUIDEncode(v189, v190, v191);
  v74 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%s%s", "com.apple.metadata:kMDLabel_", v191];
  *v5 = v74;
  [v74 UTF8String];
  v75 = objc_alloc(MEMORY[0x277CBEB18]);
  v76 = [v75 initWithCapacity:{objc_msgSend(v164, "count")}];
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v77 = v164;
  v78 = [v164 countByEnumeratingWithState:&v160 objects:v185 count:16];
  if (v78)
  {
    v79 = v78;
    v80 = *v161;
    do
    {
      for (n = 0; n != v79; ++n)
      {
        if (*v161 != v80)
        {
          objc_enumerationMutation(v77);
        }

        v82 = *(*(&v160 + 1) + 8 * n);
        if ([v82 hasPrefix:@"com.apple.metadata:kMDLabel_"])
        {
          v83 = v82;
LABEL_97:
          v88 = v83;
          goto LABEL_99;
        }

        if ([v82 hasPrefix:@"com.apple.metadata"])
        {
          v84 = v76;
          v85 = v5;
          v86 = objc_alloc(MEMORY[0x277CCACA8]);
          v139 = [v82 substringFromIndex:19];
          v87 = v86;
          v5 = v85;
          v76 = v84;
          v83 = [v87 initWithFormat:@"%s%@", "com.apple.metadata:kMDLabel_", v139];
          goto LABEL_97;
        }

        v88 = 0;
LABEL_99:
        if (([v88 isEqual:*v5] & 1) == 0)
        {
          [v76 addObject:v88];
        }
      }

      v79 = [v77 countByEnumeratingWithState:&v160 objects:v185 count:16];
    }

    while (v79);
  }

  v89 = v22;
  if (![objc_msgSend(v22 objectForKey:{@"keys", "count"}])
  {
    [v76 addObject:*v5];
    v109 = 0;
    v95 = v157;
    goto LABEL_138;
  }

  bzero(v193, 0x2000uLL);
  if (v155)
  {
    v90 = -14;
  }

  else
  {
    v90 = -15;
  }

  v91 = arc4random();
  v92 = arc4random();
  v93 = v92;
  v187[0] = 0;
  if (v155)
  {
    v94 = storePrivateMDAttributeData(v22, v193, 0x2000uLL, v187);
    v95 = v157;
    if (!v94)
    {
      v96 = malloc_type_malloc(0x10000uLL, 0x5D37A958uLL);
      v94 = storePrivateMDAttributeData(v22, v96, 0x10000uLL, v187);
      if (!v94)
      {
        copyUpdatedData_cold_3(0, v97, v98, v99, v100, v101, v102, v103);
      }
    }

    v104 = v94;
    v105 = v187[0];
    if (v187[0])
    {
      goto LABEL_111;
    }

LABEL_127:
    if (v104 != v193)
    {
      free(v104);
    }

    goto LABEL_135;
  }

  v152 = v92;
  v156 = v90;
  v110 = v91;
  v111 = [v22 objectForKey:@"uuid"];
  v112 = [v22 objectForKey:@"keys"];
  v113 = [v22 objectForKey:@"values"];
  v114 = [v112 count];
  v115 = [v113 count];
  v116 = 24 * v114 + 20;
  if (v116 <= 0x2000)
  {
    v104 = v193;
  }

  else
  {
    v104 = malloc_type_malloc(v116, 0x900D5E5DuLL);
  }

  *v104 = 1279345228;
  v188[0] = v104 + 1;
  UUIDBytes = getUUIDBytes(v111, v188);
  if (!UUIDBytes)
  {
    copyUpdatedData_cold_2(UUIDBytes, v118, v119, v120, v121, v122, v123, v124);
  }

  if (v114 >= 1)
  {
    for (ii = 0; ii != v114; ++ii)
    {
      if (getUUIDBytes([v112 objectAtIndex:ii], v188))
      {
        v126 = 0.0;
        if (ii < v115)
        {
          v127 = [v113 objectAtIndex:ii];
          v128 = CFGetTypeID(v127);
          if (v128 == CFDateGetTypeID())
          {
            v126 = MEMORY[0x245D12EC0](v127);
          }
        }

        v129 = v188[0];
        *v188[0] = v126;
        v188[0] = v129 + 8;
      }
    }
  }

  v105 = v188[0] - v104;
  v187[0] = v188[0] - v104;
  v95 = v157;
  v89 = v159;
  v91 = v110;
  v90 = v156;
  v93 = v152;
  if (v188[0] == v104)
  {
    goto LABEL_127;
  }

LABEL_111:
  v106 = objc_alloc(MEMORY[0x277CBEA90]);
  v107 = v105 + 9;
  if (v104 == v193)
  {
    v108 = [v106 initWithBytes:v104 length:v107];
  }

  else
  {
    v108 = [v106 initWithBytesNoCopy:v104 length:v107 freeWhenDone:1];
  }

  v130 = v108;
  v131 = (*(v153 + 16))(v153, v95, v91, v93, v108, 1);

  if (!v131)
  {
LABEL_135:
    v109 = 0;
    goto LABEL_138;
  }

  v132 = [v131 length];
  v133 = v132 + 9;
  v134 = v193;
  if ((v132 + 9) > 0x2000)
  {
    v134 = malloc_type_malloc(v132 + 9, 0xF05C1A0FuLL);
  }

  *v134 = v90;
  *(v134 + 1) = v91;
  *(v134 + 5) = v93;
  memcpy(v134 + 9, [v131 bytes], objc_msgSend(v131, "length"));
  v135 = objc_alloc(MEMORY[0x277CBEA90]);
  if (v134 == v193)
  {
    v136 = [v135 initWithBytes:v134 length:v133];
  }

  else
  {
    v136 = [v135 initWithBytesNoCopy:v134 length:v133 freeWhenDone:1];
  }

  v109 = v136;

  v89 = v159;
LABEL_138:
  if ([v76 count])
  {
    *v154 = v76;
  }

  else
  {
  }

  v137 = *MEMORY[0x277D85DE8];
  return v109;
}

id copyUpdatedXattrDictionary(void *a1, void *a2, void *a3, char a4)
{
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = [a1 objectForKey:@"keys"];
  v10 = [a1 objectForKey:@"values"];
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  v13 = [a2 mutableCopy];
  v14 = [a3 mutableCopy];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __copyUpdatedXattrDictionary_block_invoke;
  v17[3] = &unk_278D63680;
  v17[4] = v13;
  v17[5] = v14;
  v18 = a4;
  v17[6] = v10;
  v17[7] = v11;
  v17[8] = v12;
  [v9 enumerateObjectsUsingBlock:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __copyUpdatedXattrDictionary_block_invoke_2;
  v16[3] = &unk_278D636A8;
  v16[4] = v14;
  v16[5] = v11;
  v16[6] = v12;
  [v13 enumerateObjectsUsingBlock:v16];

  [v8 setObject:v11 forKey:@"keys"];
  [v8 setObject:v12 forKey:@"values"];
  [v8 setObject:objc_msgSend(MEMORY[0x277CBEAA8] forKey:{"date"), @"mod_date"}];
  return v8;
}

uint64_t digestOneInternal(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = *MEMORY[0x277D85DE8];
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v8 = 0;
  v9 = 0;
  [a1 digestUUIDBytesWithKey:a2 forUUID:a3 uuidBytes:&v8];
  _MDLabelUUIDEncode(v8, v9, v10);
  result = [a4 setObject:a2 forKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"com.apple.metadata.%s", v10)}];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __copyUpdatedXattrDictionary_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = [*(a1 + 32) indexOfObject:a2];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v6;
    v12 = [*(a1 + 40) objectAtIndex:v6];
    if (v12 != *MEMORY[0x277CBEEE8])
    {
      v13 = v12;
      if (*(a1 + 72) == 1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [*(a1 + 48) objectAtIndex:a3];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
          }

          else
          {
            v17[0] = v14;
            v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
          }

          v13 = [v15 arrayByAddingObjectsFromArray:v13];
        }
      }

      [*(a1 + 56) addObject:a2];
      [*(a1 + 64) addObject:v13];
    }

    [*(a1 + 32) removeObjectAtIndex:v11];
    result = [*(a1 + 40) removeObjectAtIndex:v11];
    goto LABEL_15;
  }

  result = [*(a1 + 48) objectAtIndex:a3];
  if (result == *MEMORY[0x277CBEEE8])
  {
LABEL_15:
    v16 = *MEMORY[0x277D85DE8];
    return result;
  }

  v8 = result;
  [*(a1 + 56) addObject:a2];
  v9 = *(a1 + 64);
  v10 = *MEMORY[0x277D85DE8];

  return [v9 addObject:v8];
}

uint64_t __copyUpdatedXattrDictionary_block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) objectAtIndex:?];
  if (result != *MEMORY[0x277CBEEE8])
  {
    v5 = result;
    [*(a1 + 40) addObject:a2];
    v6 = *(a1 + 48);

    return [v6 addObject:v5];
  }

  return result;
}

uint64_t __eligbleToThin_block_invoke()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v3[0] = @"kMDItemUserSharedSentDate";
  v3[1] = @"kMDItemUserSharedReceivedDate";
  v3[2] = @"kMDItemUserPrintedDate";
  v3[3] = @"kMDItemUserDownloadedDate";
  v3[4] = @"kMDItemUserModifiedDate";
  v3[5] = @"kMDItemUserCreatedDate";
  result = [v0 initWithArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v3, 6)}];
  eligbleToThin_sThinnableKeys = result;
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t storePrivateMDAttributeData(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (_init_private_attributes_once != -1)
  {
    storePrivateMDAttributeData_cold_1();
  }

  v7 = [a1 objectForKey:@"keys"];
  v8 = [a1 objectForKey:@"values"];
  v20 = [a1 objectForKey:@"mod_date"];
  v9 = [v7 count];
  v10 = [v7 count];
  if (v9 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v21 = 0;
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = *MEMORY[0x277CBEEE8];
    do
    {
      v14 = [v7 objectAtIndex:v12];
      v15 = sStringTypeId;
      if (v15 == CFGetTypeID(v14))
      {
        v16 = [v8 objectAtIndex:v12];
        if (v16 != v13)
        {
          v17 = v16;
          if (!serializeCFString(a2, &v21, a3, v14) || !serializeCFType(a2, &v21, a3, v17))
          {
            return 0;
          }
        }
      }
    }

    while (v11 != ++v12);
  }

  if (!serializeCFString(a2, &v21, a3, @"mod_date") || !serializeCFType(a2, &v21, a3, v20))
  {
    return 0;
  }

  *a4 = v21;
  return a2;
}

void __message_assert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v13 = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v10[1] = &a9;
  vasprintf(v10, "%s:%u: failed assertion '%s' %s ", &a9);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v12 = v10[0];
    _os_log_error_impl(&dword_242636000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

  free(v10[0]);
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t getUUIDBytes(void *a1, void *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 == CFUUIDGetTypeID())
  {
    v6 = CFUUIDGetUUIDBytes(a1);
    v5 = *&v6.byte0;
    *a2 = v6;
LABEL_5:
    *a2 = v5 + 16;
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a1 getUUIDBytes:*a2];
    v5 = *a2;
    goto LABEL_5;
  }

  return 0;
}

uint64_t serializeCFString(uint64_t a1, unint64_t *a2, unint64_t a3, const __CFString *key)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (*a2 < a3)
  {
    Value = CFDictionaryGetValue(sStringIDMappings, key);
    if (Value)
    {
      v10 = *a2;
      if (*a2 < a3)
      {
        v11 = v10 + 1;
        *(a1 + v10) = 4;
        if (Value >= 0x80)
        {
          if (Value >= 0x4000)
          {
            v21 = 4;
            if (Value >> 28)
            {
              v21 = 5;
            }

            if (Value < 0x200000)
            {
              v21 = 3;
            }

            if (v11 + v21 < a3)
            {
              if (Value >> 21)
              {
                v25 = a1 + v11;
                if (Value >> 28)
                {
                  *v25 = -16;
                  *(v25 + 1) = Value;
                  v12 = v10 + 6;
                }

                else
                {
                  *v25 = BYTE3(Value) | 0xE0;
                  *(v25 + 1) = BYTE2(Value);
                  *(v25 + 2) = BYTE1(Value);
                  v12 = v10 + 5;
                  *(v25 + 3) = Value;
                }
              }

              else
              {
                v22 = (a1 + v11);
                *v22 = BYTE2(Value) | 0xC0;
                v22[1] = BYTE1(Value);
                v12 = v10 + 4;
                v22[2] = Value;
              }

              goto LABEL_33;
            }
          }

          else
          {
            v12 = v10 + 3;
            if (v12 < a3)
            {
              v20 = (a1 + v11);
              *v20 = BYTE1(Value) | 0x80;
              v20[1] = Value;
              goto LABEL_33;
            }
          }
        }

        else
        {
          v12 = v10 + 2;
          if (v12 < a3)
          {
            *(a1 + v11) = Value;
LABEL_33:
            *a2 = v12;
LABEL_34:
            result = 1;
            goto LABEL_29;
          }
        }
      }
    }

    else
    {
      *(a1 + v4) = 1;
      Length = CFStringGetLength(key);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v15 = MaximumSizeForEncoding;
      if (MaximumSizeForEncoding < 1024)
      {
        v16 = v26;
      }

      else
      {
        v16 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x8FCC2362uLL);
      }

      v17 = v4 + 1;
      bzero(v26, 0x400uLL);
      if (!CFStringGetCString(key, v16, v15 + 1, 0x8000100u))
      {
        *v16 = 0;
      }

      v18 = strlen(v16) + 1;
      v19 = v18 + v17;
      if (v18 + v17 < a3)
      {
        memcpy((a1 + v17), v16, v18);
        if (v16 != v26)
        {
          free(v16);
        }

        *a2 = v19;
        goto LABEL_34;
      }

      if (v16 != v26)
      {
        free(v16);
      }
    }
  }

  result = 0;
LABEL_29:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t serializeCFType(uint64_t a1, unint64_t *a2, unint64_t a3, const __CFString *a4)
{
  v8 = CFGetTypeID(a4);
  if (sStringTypeId != v8)
  {
    if (sDateTypeId == v8)
    {
      v10 = *a2;
      if (*a2 < a3)
      {
        v11 = a1 + v10;
        *v11 = 5;
        MEMORY[0x245D12EC0](a4);
        v13 = v10 + 9;
        if (v10 + 9 < a3)
        {
          *(v11 + 1) = v12;
LABEL_9:
          *a2 = v13;
          return 1;
        }
      }

      return 0;
    }

    if (sArrayTypeId == v8)
    {
      v15 = *a2;
      if (*a2 < a3)
      {
        v16 = v15 + 1;
        *(a1 + v15) = 2;
        *a2 = v15 + 1;
        Count = CFArrayGetCount(a4);
        if (Count >= 0x80)
        {
          if (Count >= 0x4000)
          {
            v32 = 4;
            if (Count >> 28)
            {
              v32 = 5;
            }

            if (Count < 0x200000)
            {
              v32 = 3;
            }

            if (v32 + v16 >= a3)
            {
              return 0;
            }

            if (Count >> 21)
            {
              if (Count >> 28)
              {
                v39 = a1 + v16;
                *v39 = -16;
                *(v39 + 1) = Count;
                v29 = v15 + 6;
              }

              else
              {
                v37 = (a1 + v16);
                *v37 = HIBYTE(Count) | 0xE0;
                v37[1] = BYTE2(Count);
                v37[2] = BYTE1(Count);
                v29 = v15 + 5;
                v37[3] = Count;
              }
            }

            else
            {
              v33 = (a1 + v16);
              *v33 = BYTE2(Count) | 0xC0;
              v33[1] = BYTE1(Count);
              v29 = v15 + 4;
              v33[2] = Count;
            }
          }

          else
          {
            v29 = v15 + 3;
            if (v15 + 3 >= a3)
            {
              return 0;
            }

            v30 = (a1 + v16);
            *v30 = BYTE1(Count) | 0x80;
            v30[1] = Count;
          }

          valuePtr = v29;
        }

        else
        {
          v13 = v15 + 2;
          if (v15 + 2 >= a3)
          {
            return 0;
          }

          *(a1 + v16) = Count;
          valuePtr = v15 + 2;
          if (!Count)
          {
            goto LABEL_9;
          }
        }

        v40 = 0;
        v41 = Count;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a4, v40);
          if ((serializeCFType(a1, &valuePtr, a3, ValueAtIndex) & 1) == 0)
          {
            break;
          }

          if (v41 == ++v40)
          {
            v13 = valuePtr;
            goto LABEL_9;
          }
        }
      }

      return 0;
    }

    if (sDataTypeId != v8)
    {
      v23 = *a2;
      if (sNumberTypeId == v8)
      {
        v24 = v23 + 10 >= a3;
        v14 = v23 + 10 < a3;
        if (!v24)
        {
          IsFloatType = CFNumberIsFloatType(a4);
          v26 = IsFloatType;
          if (IsFloatType)
          {
            valuePtr = 0x7FF8000000000000;
            v27 = a4;
            v28 = kCFNumberFloat64Type;
          }

          else
          {
            valuePtr = 0;
            v27 = a4;
            v28 = kCFNumberSInt64Type;
          }

          CFNumberGetValue(v27, v28, &valuePtr);
          v35 = valuePtr;
          v36 = a1 + v23;
          *v36 = 7;
          *(v36 + 1) = v26;
          *(v36 + 2) = v35;
          *a2 = v23 + 10;
        }

        return v14;
      }

      if (v23 < a3)
      {
        v13 = v23 + 1;
        *(a1 + v23) = 3;
        goto LABEL_9;
      }

      return 0;
    }

    v18 = *a2;
    if (*a2 >= a3)
    {
      return 0;
    }

    Length = CFDataGetLength(a4);
    v20 = Length;
    if (Length >= 0x80)
    {
      if (Length >= 0x4000)
      {
        if (Length >= 0x200000)
        {
          if (Length >> 28)
          {
            v43 = Length >> 35;
            v44 = Length >> 42;
            v45 = 7;
            v46 = Length >> 49;
            v47 = 8;
            if (HIBYTE(Length))
            {
              v47 = 9;
            }

            if (v46)
            {
              v45 = v47;
            }

            if (!v44)
            {
              v45 = 6;
            }

            if (!v43)
            {
              v45 = 5;
            }

            v48 = v18 + 1;
            if (Length + v45 + v18 + 1 >= a3)
            {
              return 0;
            }

            *(a1 + v18) = 6;
            if (v43)
            {
              if (v44)
              {
                if (v46)
                {
                  v52 = a1 + v48;
                  if (HIBYTE(Length))
                  {
                    *v52 = -1;
                    *(v52 + 1) = Length;
                    v21 = v18 + 10;
                  }

                  else
                  {
                    *v52 = -2;
                    *(v52 + 1) = BYTE6(Length);
                    *(v52 + 2) = BYTE5(Length);
                    *(v52 + 3) = BYTE4(Length);
                    *(v52 + 4) = BYTE3(Length);
                    *(v52 + 5) = BYTE2(Length);
                    *(v52 + 6) = BYTE1(Length);
                    v21 = v18 + 9;
                    *(v52 + 7) = Length;
                  }
                }

                else
                {
                  v51 = (a1 + v48);
                  *v51 = BYTE6(Length) | 0xFC;
                  v51[1] = BYTE5(Length);
                  v51[2] = BYTE4(Length);
                  v51[3] = BYTE3(Length);
                  v51[4] = BYTE2(Length);
                  v51[5] = BYTE1(Length);
                  v21 = v18 + 8;
                  v51[6] = Length;
                }
              }

              else
              {
                v50 = (a1 + v48);
                *v50 = BYTE5(Length) | 0xF8;
                v50[1] = BYTE4(Length);
                v50[2] = BYTE3(Length);
                v50[3] = BYTE2(Length);
                v50[4] = BYTE1(Length);
                v21 = v18 + 7;
                v50[5] = Length;
              }
            }

            else
            {
              v49 = (a1 + v48);
              *v49 = BYTE4(Length) | 0xF0;
              v49[1] = BYTE3(Length);
              v49[2] = BYTE2(Length);
              v49[3] = BYTE1(Length);
              v21 = v18 + 6;
              v49[4] = Length;
            }

            goto LABEL_51;
          }

          if (Length + v18 + 1 + 4 >= a3)
          {
            return 0;
          }

          *(a1 + v18) = 6;
          v34 = (a1 + v18 + 1);
          *v34 = BYTE3(Length) | 0xE0;
          v34[1] = BYTE2(Length);
          v34[2] = BYTE1(Length);
          v21 = v18 + 5;
        }

        else
        {
          v21 = v18 + 4;
          if (v18 + 4 + Length >= a3)
          {
            return 0;
          }

          v34 = (a1 + v18);
          *v34 = 6;
          v34[1] = BYTE2(Length) | 0xC0;
          v34[2] = BYTE1(Length);
        }

        v34[3] = Length;
        goto LABEL_51;
      }

      v21 = v18 + 3;
      if (v18 + 3 + Length >= a3)
      {
        return 0;
      }

      v31 = (a1 + v18);
      *v31 = 6;
      v31[1] = BYTE1(Length) | 0x80;
      v31[2] = Length;
    }

    else
    {
      v21 = v18 + 2;
      if (Length + v18 + 2 >= a3)
      {
        return 0;
      }

      v22 = (a1 + v18);
      *v22 = 6;
      v22[1] = Length;
    }

LABEL_51:
    BytePtr = CFDataGetBytePtr(a4);
    memcpy((a1 + v21), BytePtr, v20);
    v13 = v21 + v20;
    goto LABEL_9;
  }

  return serializeCFString(a1, a2, a3, a4);
}

CFTypeID ___init_private_attributes_block_invoke()
{
  sStringTypeId = CFStringGetTypeID();
  sDateTypeId = CFDateGetTypeID();
  sArrayTypeId = CFArrayGetTypeID();
  CFNullGetTypeID();
  sNumberTypeId = CFNumberGetTypeID();
  v0 = *MEMORY[0x277CBECE8];
  sStringIDMappings = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], 0);
  sIDStringMappings = CFDictionaryCreateMutable(v0, 0, 0, MEMORY[0x277CBF150]);
  CFDictionaryAddValue(sStringIDMappings, @"kMDItemOriginApplicationIdentifier", 1);
  CFDictionaryAddValue(sIDStringMappings, 1, @"kMDItemOriginApplicationIdentifier");
  CFDictionaryAddValue(sStringIDMappings, @"kMDItemOriginSenderHandle", 2);
  CFDictionaryAddValue(sIDStringMappings, 2, @"kMDItemOriginSenderHandle");
  CFDictionaryAddValue(sStringIDMappings, @"kMDItemOriginSenderDisplayName", 3);
  CFDictionaryAddValue(sIDStringMappings, 3, @"kMDItemOriginSenderDisplayName");
  CFDictionaryAddValue(sStringIDMappings, @"kMDItemOriginSubject", 4);
  CFDictionaryAddValue(sIDStringMappings, 4, @"kMDItemOriginSubject");
  CFDictionaryAddValue(sStringIDMappings, @"kMDItemDestinationRecipients", 5);
  CFDictionaryAddValue(sIDStringMappings, 5, @"kMDItemDestinationRecipients");
  CFDictionaryAddValue(sStringIDMappings, @"kMDItemOriginMessageID", 6);
  CFDictionaryAddValue(sIDStringMappings, 6, @"kMDItemOriginMessageID");
  result = CFDataGetTypeID();
  sDataTypeId = result;
  return result;
}

uint64_t copyDecryptedData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:a4 + 9 length:a5 - 9 freeWhenDone:0];
  v9 = (*(a1 + 16))(a1, a3, *(a2 + 1), *(a2 + 5), v8, 0);

  return v9;
}

__CFArray *copyCFTypeFromBuffer(uint64_t a1, unint64_t *a2, unint64_t a3)
{
  v4 = *a2;
  v34 = v4;
  if (v4 >= a3)
  {
    goto LABEL_74;
  }

  Mutable = 0;
  v8 = v4 + 1;
  v34 = v4 + 1;
  v9 = *(a1 + v4);
  if (v9 <= 3)
  {
    if (v9 == 1)
    {
      v13 = v4 + 1;
      while (a3 != v13)
      {
        v14 = v13 + 1;
        if (!*(a1 + v13++))
        {
          v34 = v14;
          v16 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], (a1 + v8), 0x8000100u);
          goto LABEL_51;
        }
      }

      Mutable = 0;
      v34 = a3;
      goto LABEL_75;
    }

    if (v9 != 2)
    {
      if (v9 != 3)
      {
        goto LABEL_75;
      }

LABEL_50:
      v16 = CFRetain(*MEMORY[0x277CBEEE8]);
LABEL_51:
      Mutable = v16;
      goto LABEL_75;
    }

    if (v8 < a3)
    {
      if (*(a1 + v8) < 0)
      {
        v25 = *(a1 + v8);
        if (v25 >= 0xC0)
        {
          if (v25 >= 0xE0)
          {
            v26 = v25 >= 0xF0;
            v23 = 4;
            if (v26)
            {
              v23 = 5;
            }
          }

          else
          {
            v23 = 3;
          }
        }

        else
        {
          v23 = 2;
        }
      }

      else
      {
        v23 = 1;
      }

      if (v23 + v8 < a3)
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
        VInt32 = v2_readVInt32(a1, &v34);
        if (VInt32)
        {
          v28 = VInt32;
          do
          {
            v29 = copyCFTypeFromBuffer(a1, &v34, a3);
            if (v29)
            {
              v30 = v29;
              CFArrayAppendValue(Mutable, v29);
              CFRelease(v30);
            }

            --v28;
          }

          while (v28);
        }

        goto LABEL_75;
      }
    }

LABEL_74:
    Mutable = 0;
    goto LABEL_75;
  }

  if (*(a1 + v4) > 5u)
  {
    if (v9 == 6)
    {
      if (v8 < a3)
      {
        if (*(a1 + v8) < 0)
        {
          v24 = *(a1 + v8);
          if (v24 >= 0xC0)
          {
            if (v24 >= 0xE0)
            {
              if (v24 >= 0xF0)
              {
                if (v24 >= 0xF8)
                {
                  if (v24 >= 0xFC)
                  {
                    if (v24 >= 0xFE)
                    {
                      v31 = v24 == 255;
                      v22 = 8;
                      if (v31)
                      {
                        v22 = 9;
                      }
                    }

                    else
                    {
                      v22 = 7;
                    }
                  }

                  else
                  {
                    v22 = 6;
                  }
                }

                else
                {
                  v22 = 5;
                }
              }

              else
              {
                v22 = 4;
              }
            }

            else
            {
              v22 = 3;
            }
          }

          else
          {
            v22 = 2;
          }
        }

        else
        {
          v22 = 1;
        }

        if (v22 + v8 < a3)
        {
          v32 = v2_readVInt64(a1, &v34);
          v10 = v34 + v32;
          if (v34 + v32 < a3)
          {
            v12 = CFDataCreate(*MEMORY[0x277CBECE8], (a1 + v34), v32);
            goto LABEL_34;
          }
        }
      }
    }

    else
    {
      if (v9 != 7)
      {
        goto LABEL_75;
      }

      v10 = v4 + 10;
      if (v4 + 10 < a3)
      {
        if (*(a1 + v8))
        {
          v11 = kCFNumberFloat64Type;
        }

        else
        {
          v11 = kCFNumberSInt64Type;
        }

        v12 = CFNumberCreate(*MEMORY[0x277CBECE8], v11, (a1 + v4 + 2));
        goto LABEL_34;
      }
    }

    goto LABEL_74;
  }

  if (v9 == 4)
  {
    v17 = v4 + 2;
    v18 = a1 + v8;
    v19 = *(a1 + v8);
    v20 = *(a1 + v8);
    if (v19 < 0)
    {
      if (v20 > 0xBF)
      {
        if (v20 > 0xDF)
        {
          if (v20 > 0xEF)
          {
            v20 = *(a1 + v17);
            v17 = v4 + 6;
          }

          else
          {
            v20 = ((v20 & 0xF) << 24) | (*(a1 + v17) << 16) | (*(v18 + 2) << 8) | *(v18 + 3);
            v17 = v4 + 5;
          }
        }

        else
        {
          v20 = ((v20 & 0x1F) << 16) | (*(a1 + v17) << 8) | *(v18 + 2);
          v17 = v4 + 4;
        }
      }

      else
      {
        v21 = *(a1 + v17) | ((v20 & 0x3F) << 8);
        v17 = v4 + 3;
        v20 = v21;
      }
    }

    v34 = v17;
    Mutable = CFDictionaryGetValue(sIDStringMappings, v20);
    if (Mutable)
    {
      goto LABEL_75;
    }

    goto LABEL_50;
  }

  if (v9 == 5)
  {
    v10 = v4 + 9;
    if (v4 + 9 > a3)
    {
      Mutable = 0;
LABEL_35:
      v34 = v10;
      goto LABEL_75;
    }

    v12 = CFDateCreate(*MEMORY[0x277CBECE8], *(a1 + v8));
LABEL_34:
    Mutable = v12;
    goto LABEL_35;
  }

LABEL_75:
  *a2 = v34;
  return Mutable;
}

uint64_t v2_readVInt32(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a2 + 1;
  v5 = (a1 + *a2);
  result = *v5;
  if (*v5 < 0)
  {
    if (result > 0xBF)
    {
      if (result > 0xDF)
      {
        if (result > 0xEF)
        {
          result = *(a1 + v4);
          v4 = v3 + 5;
        }

        else
        {
          result = ((result & 0xF) << 24) | (*(a1 + v4) << 16) | (v5[2] << 8) | v5[3];
          v4 = v3 + 4;
        }
      }

      else
      {
        result = ((result & 0x1F) << 16) | (*(a1 + v4) << 8) | v5[2];
        v4 = v3 + 3;
      }
    }

    else
    {
      v7 = *(a1 + v4) | ((result & 0x3F) << 8);
      v4 = v3 + 2;
      result = v7;
    }
  }

  *a2 = v4;
  return result;
}

unint64_t v2_readVInt64(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 != -1)
  {
    v4 = v2 + 1;
    v5 = (a1 + v2);
    v6 = *(a1 + v2);
    result = *(a1 + v2);
    if ((v6 & 0x80000000) == 0)
    {
LABEL_3:
      *a2 = v4;
      return result;
    }

    if (v6 > 0xBFu)
    {
      if (v6 > 0xDFu)
      {
        if (v6 > 0xEFu)
        {
          if (v6 > 0xF7u)
          {
            if (v6 > 0xFBu)
            {
              if (v6 > 0xFDu)
              {
                if (v6 == 255)
                {
                  if (v2 <= 0xFFFFFFFFFFFFFFF6)
                  {
                    result = *(a1 + v4);
                    v4 = v2 + 9;
                    goto LABEL_3;
                  }
                }

                else if (v2 <= 0xFFFFFFFFFFFFFFF7)
                {
                  result = (*(a1 + v4) << 48) | (v5[2] << 40) | (v5[3] << 32) | (v5[4] << 24) | (v5[5] << 16) | (v5[6] << 8) | v5[7];
                  v4 = v2 + 8;
                  goto LABEL_3;
                }
              }

              else if (v2 <= 0xFFFFFFFFFFFFFFF8)
              {
                result = ((result & 1) << 48) | (*(a1 + v4) << 40) | (v5[2] << 32) | (v5[3] << 24) | (v5[4] << 16) | (v5[5] << 8) | v5[6];
                v4 = v2 + 7;
                goto LABEL_3;
              }
            }

            else if (v2 <= 0xFFFFFFFFFFFFFFF9)
            {
              result = ((result & 3) << 40) | (*(a1 + v4) << 32) | (v5[2] << 24) | (v5[3] << 16) | (v5[4] << 8) | v5[5];
              v4 = v2 + 6;
              goto LABEL_3;
            }
          }

          else if (v2 <= 0xFFFFFFFFFFFFFFFALL)
          {
            result = ((result & 7) << 32) | (*(a1 + v4) << 24) | (v5[2] << 16) | (v5[3] << 8) | v5[4];
            v4 = v2 + 5;
            goto LABEL_3;
          }
        }

        else if (v2 <= 0xFFFFFFFFFFFFFFFBLL)
        {
          result = ((result & 0xF) << 24) | (*(a1 + v4) << 16) | (v5[2] << 8) | v5[3];
          v4 = v2 + 4;
          goto LABEL_3;
        }
      }

      else if (v2 <= 0xFFFFFFFFFFFFFFFCLL)
      {
        result = ((result & 0x1F) << 16) | (*(a1 + v4) << 8) | v5[2];
        v4 = v2 + 3;
        goto LABEL_3;
      }
    }

    else if (v2 != -2)
    {
      v8 = *(a1 + v4) | ((result & 0x3F) << 8);
      v4 = v2 + 2;
      result = v8;
      goto LABEL_3;
    }
  }

  return 0;
}

void OUTLINED_FUNCTION_0_0()
{
  MEMORY[0xBAD] = -559038737;

  abort();
}

void _copyCryptedDataWithKey_cold_1(int a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_242636000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "_copyCryptedDataWithKey() failed. CCCrypt() returned %d.", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2821100F0](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}