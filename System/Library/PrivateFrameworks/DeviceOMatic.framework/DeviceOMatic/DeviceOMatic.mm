uint64_t DOMRegisterForMatching(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __DOMRegisterForMatching_block_invoke;
  v15[3] = &unk_278F5FE58;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = a1;
  v10 = DOMRegisterForMatching_onceToken;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  if (v10 != -1)
  {
    dispatch_once(&DOMRegisterForMatching_onceToken, v15);
  }

  return 0;
}

void __DOMRegisterForMatching_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  CFStringGetCString(*(a1 + 56), buffer, 256, 0x8000100u);
  mach_service = xpc_connection_create_mach_service(buffer, *(a1 + 32), 1uLL);
  v3 = DOMRegisterForMatching_listener;
  DOMRegisterForMatching_listener = mach_service;

  v4 = DOMRegisterForMatching_listener;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __DOMRegisterForMatching_block_invoke_2;
  handler[3] = &unk_278F5FE30;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  xpc_connection_set_event_handler(v4, handler);
  xpc_connection_resume(DOMRegisterForMatching_listener);

  v5 = *MEMORY[0x277D85DE8];
}

void __DOMRegisterForMatching_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  logEvent(v3, "Plugin Main:");
  v4 = MEMORY[0x24C1DDE20](v3);
  if (v4 == MEMORY[0x277D86450])
  {
    v6 = v3;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __DOMRegisterForMatching_block_invoke_3;
    handler[3] = &unk_278F5FE08;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v8 = v6;
    xpc_connection_set_event_handler(v6, handler);
    xpc_connection_resume(v6);

    v5 = v9;
    goto LABEL_5;
  }

  if (v4 == MEMORY[0x277D86480])
  {
    errorEvent(v3, "listener error");
    xpc_connection_cancel(DOMRegisterForMatching_listener);
    v5 = DOMRegisterForMatching_listener;
    DOMRegisterForMatching_listener = 0;
LABEL_5:
  }
}

void __DOMRegisterForMatching_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  logEvent(v3, "Plugin Inner:");
  if (v3 == MEMORY[0x277D863F8])
  {
    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_248945000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Handling Message", v11, 2u);
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  v8 = v5;
  if (MEMORY[0x24C1DDE20](v6) != MEMORY[0x277D86468])
  {
    goto LABEL_9;
  }

  uint64 = xpc_dictionary_get_uint64(v6, "_LB_TYPE");
  if (!uint64)
  {
    goto LABEL_9;
  }

  if (uint64 >= 4)
  {
    __DOMRegisterForMatching_block_invoke_3_cold_3(uint64, &v14);
    v10 = v14;
  }

  else if (uint64 == 2)
  {
    __DOMRegisterForMatching_block_invoke_3_cold_1(v6, v8, &v12);
    v10 = v12;
  }

  else
  {
    if (uint64 != 1)
    {
LABEL_9:
      v10 = 1;
      goto LABEL_10;
    }

    __DOMRegisterForMatching_block_invoke_3_cold_2(v6, v7, &v13);
    v10 = v13;
  }

LABEL_10:

  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __DOMRegisterForMatching_block_invoke_3_cold_4(v10);
    }

    xpc_connection_cancel(*(a1 + 32));
  }

LABEL_14:
}

id NSLocalizedString(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = v2;
  if (!v2)
  {
    v4 = 0;
    v13 = 0;
    goto LABEL_21;
  }

  v4 = [v2 localizations];
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = CFPreferencesCopyValue(@"AppleLanguages", *MEMORY[0x277CBF008], @"mobile", *MEMORY[0x277CBF010]);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_19;
  }

  v6 = [MEMORY[0x277CCA8D8] preferredLocalizationsFromArray:v4 forPreferences:v5];
  if (![v6 count])
  {

LABEL_19:
LABEL_20:
    v13 = [v3 localizedStringForKey:v1 value:v1 table:{@"Localizable", v16}];
    goto LABEL_21;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

        v12 = [v3 localizedStringForKey:v1 value:0 table:@"Localizable" localization:{*(*(&v16 + 1) + 8 * i), v16}];
        if (v12)
        {
          v13 = v12;
          goto LABEL_16;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_16:

  if (!v13)
  {
    goto LABEL_20;
  }

LABEL_21:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t getLogHandle()
{
  if (getLogHandle_onceToken != -1)
  {
    getLogHandle_cold_1();
  }

  return getLogHandle_gLogHandle;
}

uint64_t __getLogHandle_block_invoke()
{
  result = MOLogOpen();
  getLogHandle_gLogHandle = result;
  return result;
}

id printObjectToString(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_12:
    v15 = @"NULL";
LABEL_13:
    [v7 appendString:v15];
    goto LABEL_25;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (![v7 length] || (objc_msgSend(v7, "substringFromIndex:", objc_msgSend(v7, "length") - 1), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"\n"), v8, v9))
  {
    [v7 appendFormat:@"%*s", (2 * a2), &unk_24894875F];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a2)
    {
      v10 = @"<dict>\n";
    }

    else
    {
      v10 = @"\n<dict>\n";
    }

    v11 = printObjectToString(v10, a2, v7);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __printObjectToString_block_invoke;
    v33[3] = &unk_278F5FEF0;
    v35 = a2;
    v12 = v7;
    v34 = v12;
    [v5 enumerateKeysAndObjectsUsingBlock:v33];
    v13 = printObjectToString(@"</dict>", a2, v12);
    v14 = v34;
LABEL_24:

    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a2)
    {
      v16 = @"<array>\n";
    }

    else
    {
      v16 = @"\n<array>\n";
    }

    v17 = printObjectToString(v16, a2, v7);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __printObjectToString_block_invoke_2;
    v30[3] = &unk_278F5FF18;
    v32 = a2;
    v18 = v7;
    v31 = v18;
    [v5 enumerateObjectsUsingBlock:v30];
    v19 = printObjectToString(@"</array>", a2, v18);
    v14 = v31;
    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a2)
    {
      v20 = @"<set>\n";
    }

    else
    {
      v20 = @"\n<set>\n";
    }

    v21 = printObjectToString(v20, a2, v7);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __printObjectToString_block_invoke_3;
    v27[3] = &unk_278F5FF40;
    v29 = a2;
    v22 = v7;
    v28 = v22;
    [v5 enumerateObjectsUsingBlock:v27];
    v23 = printObjectToString(@"</set>", a2, v22);
    v14 = v28;
    goto LABEL_24;
  }

  v25 = CFGetTypeID(v5);
  if (v25 == CFBooleanGetTypeID())
  {
    if ([v5 BOOLValue])
    {
      v15 = @"true";
    }

    else
    {
      v15 = @"false";
    }

    goto LABEL_13;
  }

  v26 = [v5 description];
  [v7 appendString:v26];

LABEL_25:

  return v7;
}

uint64_t serviceIsAttachedToRemovableDevice(io_object_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v10 = __serviceIsAttachedToRemovableDevice_block_invoke;
  v11 = &unk_278F5FEA0;
  v12 = &v13;
  v2 = v9;
  v18 = 0;
  v10();
  if ((v18 & 1) == 0)
  {
    IOObjectRetain(a1);
    if ((v18 & 1) == 0)
    {
      while (1)
      {
        parent = 0;
        ParentEntry = IORegistryEntryGetParentEntry(a1, "IOService", &parent);
        IOObjectRelease(a1);
        if (ParentEntry)
        {
          break;
        }

        a1 = parent;
        if (!parent)
        {
          goto LABEL_9;
        }

        (v10)(v2, parent, &v18);
        if (v18 == 1)
        {
          IOObjectRelease(a1);
          goto LABEL_9;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v4 = __error();
        v5 = strerror(*v4);
        serviceIsAttachedToRemovableDevice_cold_1(v5, buf);
      }
    }
  }

LABEL_9:

  v6 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void __serviceIsAttachedToRemovableDevice_block_invoke(uint64_t a1, io_registry_entry_t entry, _BYTE *a3)
{
  CFProperty = IORegistryEntryCreateCFProperty(entry, @"removable", 0, 0);
  if (CFProperty)
  {
    v6 = CFProperty;
    if (CFEqual(CFProperty, *MEMORY[0x277CBED28]))
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a3 = 1;
    }

    CFRelease(v6);
  }
}

__CFDictionary *propertiesForRegistryEntryID(uint64_t a1)
{
  v1 = IORegistryEntryIDMatching(a1);
  if (v1 && (MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v1)) != 0)
  {
    v3 = MatchingService;
    properties = 0;
    v4 = 0;
    if (!IORegistryEntryCreateCFProperties(MatchingService, &properties, 0, 0))
    {
      v4 = properties;
    }

    IOObjectRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t getAllChildren(uint64_t a1, __CFDictionary *a2, void *a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (getAllChildren_onceToken != -1)
  {
    getAllChildren_cold_1();
  }

  v6 = getAllChildren__match;
  if (v5)
  {
    v6 = v5;
  }

  v7 = v6;
  iterator = 0;
  MEMORY[0x24C1DDA00](a1, "IOService", &iterator);
  v8 = IOIteratorNext(iterator);
  if (v8)
  {
    v9 = v8;
    v35 = 0;
    v10 = MEMORY[0x277D86220];
    v29 = a2;
    v30 = v5;
    v33 = v7;
    do
    {
      IOServiceWaitQuiet(v9, 0);
      entryID = 0;
      IORegistryEntryGetRegistryEntryID(v9, &entryID);
      cf = CFNumberCreate(0, kCFNumberSInt64Type, &entryID);
      memset(className, 0, 128);
      IOObjectGetClass(v9, className);
      key = CFStringCreateWithFormat(0, 0, @"%s, %lld (0x%016llx)", className, entryID, entryID);
      if (v7)
      {
        matches[0] = 0;
        IOServiceMatchPropertyTable(v9, v7, matches);
        if (matches[0])
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v53 = key;
            _os_log_impl(&dword_248945000, v10, OS_LOG_TYPE_DEFAULT, "%@ matches via IOServiceMatchPropertyTable", buf, 0xCu);
          }

          v35 = 1;
        }
      }

      *matches = 0;
      IORegistryEntryCreateCFProperties(v9, matches, 0, 0);
      if (a2)
      {
        CFDictionarySetValue(a2, key, *matches);
      }

      if (!((v5 == 0) | v35 & 1))
      {
        v31 = v9;
        v39 = [v5 count];
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        obj = v7;
        v37 = [(__CFDictionary *)obj countByEnumeratingWithState:&v45 objects:v63 count:16];
        if (v37)
        {
          v11 = 0;
          v35 = 0;
          v36 = *v46;
          do
          {
            for (i = 0; i != v37; ++i)
            {
              if (*v46 != v36)
              {
                objc_enumerationMutation(obj);
              }

              v13 = *(*(&v45 + 1) + 8 * i);
              v41 = 0u;
              v42 = 0u;
              v43 = 0u;
              v44 = 0u;
              v14 = *matches;
              v15 = [v14 countByEnumeratingWithState:&v41 objects:v62 count:16];
              if (v15)
              {
                v16 = v15;
                v38 = i;
                v17 = *v42;
                while (2)
                {
                  for (j = 0; j != v16; ++j)
                  {
                    if (*v42 != v17)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v19 = *(*(&v41 + 1) + 8 * j);
                    if ([(__CFDictionary *)v13 isEqualToString:v19])
                    {
                      v20 = v10;
                      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
                      {
                        v21 = [(__CFDictionary *)obj objectForKey:v13];
                        v22 = [*matches objectForKey:v19];
                        *buf = 134219010;
                        v53 = v11;
                        v54 = 2112;
                        v55 = v13;
                        v56 = 2112;
                        v57 = v19;
                        v58 = 2112;
                        v59 = v21;
                        v60 = 2112;
                        v61 = v22;
                        _os_log_impl(&dword_248945000, v20, OS_LOG_TYPE_DEFAULT, "[%lu] comparing keys %@:%@ and values %@:%@", buf, 0x34u);
                      }

                      v23 = [(__CFDictionary *)obj objectForKey:v13];
                      v24 = [*matches objectForKey:v19];
                      v25 = [v23 isEqual:v24];

                      if (v25)
                      {
                        ++v11;
                        v10 = v20;
                        if (v11 == v39)
                        {
                          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412802;
                            v53 = key;
                            v54 = 2112;
                            v55 = v33;
                            v56 = 2112;
                            v57 = *matches;
                            _os_log_impl(&dword_248945000, v20, OS_LOG_TYPE_DEFAULT, "%@ MATCHED %@ with %@", buf, 0x20u);
                          }

                          v35 = 1;
                          v11 = v39;
                          goto LABEL_38;
                        }
                      }

                      else
                      {
                        v10 = v20;
                      }
                    }
                  }

                  v16 = [v14 countByEnumeratingWithState:&v41 objects:v62 count:16];
                  if (v16)
                  {
                    continue;
                  }

                  break;
                }

LABEL_38:
                i = v38;
              }
            }

            v37 = [(__CFDictionary *)obj countByEnumeratingWithState:&v45 objects:v63 count:16];
          }

          while (v37);
        }

        else
        {
          v35 = 0;
        }

        a2 = v29;
        v5 = v30;
        v7 = v33;
        v9 = v31;
      }

      CFRelease(key);
      CFRelease(cf);
      CFRelease(*matches);
      IOObjectRelease(v9);
      v9 = IOIteratorNext(iterator);
    }

    while (v9);
  }

  else
  {
    v35 = 0;
  }

  IOObjectRelease(iterator);

  v27 = *MEMORY[0x277D85DE8];
  return v35 & 1;
}

uint64_t __getAllChildren_block_invoke()
{
  getAllChildren__match = [objc_alloc(MEMORY[0x277CBEB38]) initWithContentsOfFile:@"/tmp/test.plist"];

  return MEMORY[0x2821F96F8]();
}

void printAllChildren(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CCAB68]);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  getAllChildren([v1 io_service], Mutable, 0);
  v4 = printObjectToString(Mutable, 2, v2);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = v1;
    v8 = 2112;
    v9 = v2;
    _os_log_impl(&dword_248945000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@\nchildren: %@", &v6, 0x16u);
  }

  CFRelease(Mutable);

  v5 = *MEMORY[0x277D85DE8];
}

void printChildSet(void *a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v14 = a1;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = a2;
  v16 = [obj countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v16)
  {
    v15 = *v24;
    v3 = MEMORY[0x277D86220];
    do
    {
      v4 = 0;
      do
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = v4;
        v5 = *(*(&v23 + 1) + 8 * v4);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v29 = v14;
          v30 = 2112;
          v31 = v5;
          _os_log_impl(&dword_248945000, v3, OS_LOG_TYPE_DEFAULT, "%@ child %@", buf, 0x16u);
        }

        v6 = [obj objectForKey:v5];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v20;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v20 != v9)
              {
                objc_enumerationMutation(v6);
              }

              if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
              {
                v11 = *(*(&v19 + 1) + 8 * i);
                v12 = [v6 objectForKey:v11];
                *buf = 138412546;
                v29 = v11;
                v30 = 2112;
                v31 = v12;
                _os_log_impl(&dword_248945000, v3, OS_LOG_TYPE_DEFAULT, "\tproperty %@: %@", buf, 0x16u);
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v8);
        }

        v4 = v18 + 1;
      }

      while (v18 + 1 != v16);
      v16 = [obj countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v16);
  }

  v13 = *MEMORY[0x277D85DE8];
}

id copyEntryProperties(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  properties = 0;
  memset(v8, 0, 512);
  IORegistryEntryGetNameInPlane(a1, "IOService", name);
  MEMORY[0x24C1DDA30](a1, "IOService", v8);
  IORegistryEntryCreateCFProperties(a1, &properties, 0, 0);
  v2 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v3 = printObjectToString(properties, 0, 0);
  [v2 appendFormat:@"%s:\nPath:\n%s\n%@\n", name, v8, v3];

  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

const char *stringForXPCType(uint64_t a1)
{
  if (a1 == MEMORY[0x277D86450])
  {
    return "XPC_TYPE_CONNECTION";
  }

  if (a1 == MEMORY[0x277D864B0])
  {
    return "XPC_TYPE_NULL";
  }

  if (a1 == MEMORY[0x277D86448])
  {
    return "XPC_TYPE_BOOL";
  }

  if (a1 == MEMORY[0x277D86498])
  {
    return "XPC_TYPE_INT64";
  }

  if (a1 == MEMORY[0x277D864C8])
  {
    return "XPC_TYPE_UINT64";
  }

  if (a1 == MEMORY[0x277D86470])
  {
    return "XPC_TYPE_DOUBLE";
  }

  if (a1 == MEMORY[0x277D86460])
  {
    return "XPC_TYPE_DATE";
  }

  if (a1 == MEMORY[0x277D86458])
  {
    return "XPC_TYPE_DATA";
  }

  if (a1 == MEMORY[0x277D864C0])
  {
    return "XPC_TYPE_STRING";
  }

  if (a1 == MEMORY[0x277D864D0])
  {
    return "XPC_TYPE_UUID";
  }

  if (a1 == MEMORY[0x277D86488])
  {
    return "XPC_TYPE_FD";
  }

  if (a1 == MEMORY[0x277D864B8])
  {
    return "XPC_TYPE_SHMEM";
  }

  if (a1 == MEMORY[0x277D86440])
  {
    return "XPC_TYPE_ARRAY";
  }

  if (a1 == MEMORY[0x277D86468])
  {
    return "XPC_TYPE_DICTIONARY";
  }

  if (a1 == MEMORY[0x277D86480])
  {
    return "XPC_TYPE_ERROR";
  }

  return "Unknown type";
}

void errorEvent(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = MEMORY[0x24C1DDE20]();
  v5 = MEMORY[0x277D86220];
  v6 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    errorEvent_cold_1(a2, v4, v3);
  }
}

void logEvent(void *a1, uint64_t a2)
{
  v3 = a1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v7 = __logEvent_block_invoke;
  v8 = &unk_278F5FEC8;
  v4 = v3;
  v9 = v4;
  v10 = a2;
  v5 = v6;
  if (getLogHandle_onceToken != -1)
  {
    logEvent_cold_1();
  }

  if (getLogHandle_gLogHandle && *(getLogHandle_gLogHandle + 44) >= 5)
  {
    v7(v5);
  }
}

void __logEvent_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x24C1DDE20](*(a1 + 32));
  v3 = MEMORY[0x277D86220];
  v4 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = stringForXPCType(v2);
    if (v2 == MEMORY[0x277D86480])
    {
      string = xpc_dictionary_get_string(*(a1 + 32), *MEMORY[0x277D86400]);
    }

    else
    {
      string = &unk_24894875F;
    }

    v9 = 136315650;
    v10 = v5;
    v11 = 2080;
    v12 = v6;
    v13 = 2080;
    v14 = string;
    _os_log_impl(&dword_248945000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s %s %s", &v9, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __printObjectToString_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = printObjectToString(a2, (*(a1 + 40) + 1), *(a1 + 32));
  v6 = printObjectToString(@" : ", (*(a1 + 40) + 1), *(a1 + 32));
  v7 = printObjectToString(v9, (*(a1 + 40) + 1), *(a1 + 32));
  v8 = printObjectToString(@"\n", (*(a1 + 40) + 1), *(a1 + 32));
}

void __DOMRegisterForMatching_block_invoke_3_cold_1(void *a1, void *a2, int *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  uint64 = xpc_dictionary_get_uint64(v5, "_LB_SERVICE_ID");
  v8 = *MEMORY[0x277CD2898];
  v9 = IORegistryEntryIDMatching(uint64);
  MatchingService = IOServiceGetMatchingService(v8, v9);
  if (!MatchingService)
  {
    v12 = 0;
    v14 = 0;
    v25 = 2;
    goto LABEL_25;
  }

  v11 = MatchingService;
  v12 = xpc_dictionary_get_value(v5, "_LB_PERSONALITY");
  if (!v12)
  {
    v14 = 0;
    v13 = 0;
LABEL_21:
    v25 = 3;
    goto LABEL_23;
  }

  v13 = _CFXPCCreateCFObjectFromXPCObject();
  if (!v13)
  {
    v14 = 0;
    goto LABEL_21;
  }

  v14 = xpc_dictionary_get_value(v5, "_LB_CLAIMED");
  if (v14)
  {
    Mutable = CFArrayCreateMutable(0, 0, 0);
    if (xpc_array_get_count(v14))
    {
      v29 = v6;
      v30 = a3;
      v16 = 0;
      v17 = MEMORY[0x277D86220];
      do
      {
        v18 = xpc_array_get_uint64(v14, v16);
        v19 = IORegistryEntryIDMatching(v18);
        v20 = IOServiceGetMatchingService(v8, v19);
        v11 = v20;
        if (v20)
        {
          CFArrayAppendValue(Mutable, v20);
        }

        else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v32 = v18;
          _os_log_impl(&dword_248945000, v17, OS_LOG_TYPE_DEFAULT, "Couldn't create service for id %llx", buf, 0xCu);
        }

        ++v16;
      }

      while (v16 < xpc_array_get_count(v14));
      v6 = v29;
      a3 = v30;
    }

    v21 = OUTLINED_FUNCTION_0();
    v22(v21);
    if (Mutable)
    {
      if (CFArrayGetCount(Mutable) >= 1)
      {
        v23 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v23);
          IOObjectRelease(ValueAtIndex);
          ++v23;
        }

        while (CFArrayGetCount(Mutable) > v23);
      }

      CFRelease(Mutable);
    }

    v25 = 0;
    if (!v11)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v26 = OUTLINED_FUNCTION_0();
    v27(v26);
    v25 = 0;
  }

LABEL_23:
  IOObjectRelease(v11);
  if (v13)
  {
LABEL_24:
    CFRelease(v13);
  }

LABEL_25:
  *a3 = v25;

  v28 = *MEMORY[0x277D85DE8];
}

void __DOMRegisterForMatching_block_invoke_3_cold_2(void *a1, void *a2, int *a3)
{
  v5 = a1;
  v6 = a2;
  uint64 = xpc_dictionary_get_uint64(v5, "_LB_SERVICE_ID");
  value = xpc_dictionary_get_int64(v5, "_LB_PROBE_SCORE");
  v8 = xpc_dictionary_get_value(v5, "_LB_PERSONALITY");
  if (v8 && (v9 = _CFXPCCreateCFObjectFromXPCObject()) != 0)
  {
    v10 = v9;
    v11 = *MEMORY[0x277CD2898];
    v12 = IORegistryEntryIDMatching(uint64);
    MatchingService = IOServiceGetMatchingService(v11, v12);
    if (MatchingService)
    {
      v14 = v6[2](v6, MatchingService, v10, &value) != 0;
    }

    else
    {
      v14 = 0;
    }

    reply = xpc_dictionary_create_reply(v5);
    xpc_dictionary_set_uint64(reply, "_LB_TYPE", 3uLL);
    xpc_dictionary_set_int64(reply, "_LB_PROBE_SCORE", value);
    xpc_dictionary_set_BOOL(reply, "_LB_SUPPORTS", v14);
    v17 = xpc_dictionary_get_remote_connection(reply);
    xpc_connection_send_message(v17, reply);

    if (MatchingService)
    {
      IOObjectRelease(MatchingService);
    }

    CFRelease(v10);

    v15 = 0;
  }

  else
  {
    v15 = 3;
  }

  *a3 = v15;
}

void __DOMRegisterForMatching_block_invoke_3_cold_3(uint64_t a1, _DWORD *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = a1;
    _os_log_impl(&dword_248945000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "got weird type from LB: %lld", &v5, 0xCu);
  }

  *a2 = 1;
  v4 = *MEMORY[0x277D85DE8];
}

void __DOMRegisterForMatching_block_invoke_3_cold_4(int a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_248945000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Bad juju: %d", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}

void serviceIsAttachedToRemovableDevice_cold_1(uint64_t a1, uint8_t *buf)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_248945000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "IORegistryEntryGetParentIterator failed: %s", buf, 0xCu);
}

void errorEvent_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = stringForXPCType(a2);
  if (a2 == MEMORY[0x277D86480])
  {
    string = xpc_dictionary_get_string(a3, *MEMORY[0x277D86400]);
  }

  else
  {
    string = &unk_24894875F;
  }

  v9 = 136315650;
  v10 = a1;
  v11 = 2080;
  v12 = v6;
  v13 = 2080;
  v14 = string;
  _os_log_error_impl(&dword_248945000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s %s %s", &v9, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}