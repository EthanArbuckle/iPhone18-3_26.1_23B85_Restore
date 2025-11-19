id copyVolumePartition(void *a1)
{
  entry = 0;
  v1 = copyBSDName(a1);
  v2 = v1;
  if (!v1 || (v3 = *MEMORY[0x277CD28A0], v4 = IOBSDNameMatching(*MEMORY[0x277CD28A0], 0, [v1 UTF8String]), MatchingService = IOServiceGetMatchingService(v3, v4), (entry = MatchingService) == 0))
  {
    v9 = 0;
    CFProperty = 0;
    goto LABEL_18;
  }

  v6 = MatchingService;
  if (!IOObjectConformsTo(MatchingService, "AppleAPFSVolume"))
  {
    v9 = 0;
    CFProperty = 0;
    goto LABEL_17;
  }

  if (exchange_with_parent_matching_class(&entry, "AppleAPFSContainer") && exchange_with_parent_matching_class(&entry, "AppleAPFSMedia") && exchange_with_parent_matching_class(&entry, "AppleAPFSContainerScheme") && exchange_with_parent_matching_class(&entry, "IOMedia"))
  {
    CFProperty = IORegistryEntryCreateCFProperty(entry, @"BSD Name", *MEMORY[0x277CBECE8], 0);
    if (CFProperty)
    {
      v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"/dev/%@", CFProperty];
      if (v8)
      {
        v9 = v8;
        goto LABEL_14;
      }
    }
  }

  else
  {
    CFProperty = 0;
  }

  v9 = 0;
LABEL_14:
  v6 = entry;
  if (entry)
  {
LABEL_17:
    IOObjectRelease(v6);
  }

LABEL_18:

  return v9;
}

id copyBSDName(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    v4 = @"/dev/r";
    if (([v3 hasPrefix:@"/dev/r"] & 1) != 0 || (v4 = @"/dev/", objc_msgSend(v3, "hasPrefix:", @"/dev/")))
    {
      v5 = [v3 substringFromIndex:{-[__CFString length](v4, "length")}];

      v3 = v5;
    }

    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t exchange_with_parent_matching_class(io_object_t *a1, const char *a2)
{
  result = 0;
  parent = 0;
  if (a1 && a2)
  {
    if (IORegistryEntryGetParentEntry(*a1, "IOService", &parent) || !IOObjectConformsTo(parent, a2))
    {
      result = parent;
      if (parent)
      {
        IOObjectRelease(parent);
        return 0;
      }
    }

    else
    {
      IOObjectRelease(*a1);
      *a1 = parent;
      return 1;
    }
  }

  return result;
}

id isNSNumber(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id isNSDictionary(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id isNSArray(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id isNSString(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id isNSData(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id isNSURL(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t determine_filesystem_type()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v33 = *MEMORY[0x277D85DE8];
  v3 = v0;
  bzero(v29, 0x1000uLL);
  if (!v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *entry = 0;
      _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Invalid input(s).", entry, 2u);
    }

    v3 = 0;
    goto LABEL_34;
  }

  v4 = copyBSDName(v3);
  v5 = v4;
  if (!v4)
  {
    goto LABEL_20;
  }

  v6 = *MEMORY[0x277CD28A0];
  v7 = IOBSDNameMatching(*MEMORY[0x277CD28A0], 0, [v4 UTF8String]);
  MatchingService = IOServiceGetMatchingService(v6, v7);
  *entry = MatchingService;
  if (!MatchingService)
  {
    goto LABEL_20;
  }

  v9 = MatchingService;
  if (!IOObjectConformsTo(MatchingService, "IOMedia"))
  {
    IOObjectRelease(v9);
LABEL_20:

    goto LABEL_21;
  }

  if (!exchange_with_first_child_of_class(entry, "AppleAPFSContainerScheme") || !exchange_with_first_child_of_class(entry, "AppleAPFSMedia"))
  {
    v16 = 0;
    v11 = 0;
LABEL_45:
    CFProperty = 0;
    goto LABEL_46;
  }

  v10 = *MEMORY[0x277CBECE8];
  v11 = IORegistryEntrySearchCFProperty(*entry, "IOService", @"Content Hint", *MEMORY[0x277CBECE8], 0);
  if (!v11 || ![@"EF57347C-0000-11AA-AA11-00306543ECAC" isEqualToString:v11])
  {
    goto LABEL_44;
  }

  if (!v2)
  {
    CFProperty = 0;
    v16 = 1;
    goto LABEL_46;
  }

  if (!exchange_with_first_child_of_class(entry, "AppleAPFSContainer") || !exchange_with_first_child_of_class(entry, "AppleAPFSVolume"))
  {
LABEL_44:
    v16 = 0;
    goto LABEL_45;
  }

  CFProperty = IORegistryEntryCreateCFProperty(*entry, @"BSD Name", v10, 0);
  v13 = isNSString(CFProperty);

  if (v13)
  {
    v14 = [@"/dev/" stringByAppendingString:CFProperty];

    if (v14)
    {
      v15 = v14;
      *v2 = v14;
      v16 = 1;
      CFProperty = v14;
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  v16 = 0;
LABEL_46:
  if (*entry)
  {
    IOObjectRelease(*entry);
  }

  if (v16)
  {
    v20 = 6;
    goto LABEL_53;
  }

LABEL_21:
  if (([v3 hasPrefix:{@"/dev/", *entry}] & 1) == 0)
  {
    v17 = [@"/dev/" stringByAppendingString:v3];

    v3 = v17;
  }

  v18 = open([v3 UTF8String], 0);
  if (v18 == -1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v21 = *__error();
      *entry = 138412546;
      *&entry[4] = v3;
      v27 = 1024;
      v28 = v21;
      _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to open %@: %{errno}d", entry, 0x12u);
    }

LABEL_34:
    v20 = 0;
    goto LABEL_53;
  }

  v19 = v18;
  if (read(v18, v29, 0x1000uLL) == 4096)
  {
    if (v29[0] == 233 || v29[0] == 235 && v29[2] == 144)
    {
      if (v30 == 0x202020205346544ELL)
      {
        v20 = 5;
      }

      else if (v30 == 0x2020205441465845)
      {
        v20 = 4;
      }

      else
      {
        v20 = 1;
      }
    }

    else if (v31 == 11080)
    {
      v20 = 2 * (v32 == 4);
    }

    else if (v32 == 5 && v31 == 22600)
    {
      v20 = 3;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v22 = *__error();
      *entry = 138412546;
      *&entry[4] = v3;
      v27 = 1024;
      v28 = v22;
      _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to read %@ volume header: %{errno}d", entry, 0x12u);
      v20 = 0;
    }
  }

  close(v19);
LABEL_53:

  v24 = *MEMORY[0x277D85DE8];
  return v20;
}

BOOL isDeveloperModeEnabled()
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 8;
  v6 = 0;
  if (sysctlbyname("security.mac.amfi.developer_mode_status", &v6, &v5, 0, 0))
  {
    v0 = __error();
    v1 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v1)
    {
      v3 = *v0;
      *buf = 67109120;
      v8 = v3;
      _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to read developer mode status: %{darwin.errno}d", buf, 8u);
      result = 0;
    }
  }

  else
  {
    result = v6 == 1;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL systemSupportsRestrictedExecutionMode(BOOL *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v12 = 4;
  if (sysctlbyname("security.codesigning.config", &v13, &v12, 0, 0))
  {
    v4 = *__error();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "security.codesigning.config";
      v16 = 1024;
      v17 = v4;
      _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to read sysctl (%s): %{darwin.errno}d", buf, 0x12u);
    }

    v8 = createMobileStorageError("systemSupportsRestrictedExecutionMode", 773, -2, 0, @"Failed to read sysctl (%s): %{darwin.errno}d", v5, v6, v7, "security.codesigning.config");
    if (a2 && v8)
    {
      v8 = v8;
      *a2 = v8;
    }
  }

  else
  {
    v8 = 0;
    if (a1)
    {
      *a1 = (v13 & 0x2000000) != 0;
    }
  }

  v9 = v8 == 0;

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

id createMobileStorageError(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = a4;
  v14 = MEMORY[0x277CCAB68];
  v15 = a5;
  v16 = [[v14 alloc] initWithFormat:v15 arguments:&a9];

  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = v17;
  if (v16)
  {
    [v17 setObject:v16 forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  if (v13)
  {
    [v18 setObject:v13 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  if (os_variant_allows_internal_security_policies())
  {
    if (a1)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
      [v18 setObject:v19 forKeyedSubscript:@"FunctionName"];
    }

    if (a2)
    {
      v20 = [MEMORY[0x277CCABB0] numberWithInt:a2];
      [v18 setObject:v20 forKeyedSubscript:@"SourceLine"];
    }
  }

  v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.MobileStorage.ErrorDomain" code:a3 userInfo:v18];

  return v21;
}

uint64_t allowInvalidatingAttestations()
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_parse_boot_arg_int())
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v6 = " not";
      v7 = 2080;
      v8 = "allow_msm_to_invalidate_attestations";
      v9 = 2048;
      v10 = 0;
      v0 = MEMORY[0x277D86220];
      v1 = "Invalidating system attestation is%s allowed per boot-arg %s=%lld";
      v2 = 32;
LABEL_6:
      _os_log_impl(&dword_259B65000, v0, OS_LOG_TYPE_DEFAULT, v1, buf, v2);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "allow_msm_to_invalidate_attestations";
    v0 = MEMORY[0x277D86220];
    v1 = "You can set the boot-arg %s=1 to allow invalidating the system's attestation.";
    v2 = 12;
    goto LABEL_6;
  }

  result = 0;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

const __CFString *is_disk_image(io_registry_entry_t a1)
{
  v1 = IORegistryEntrySearchCFProperty(a1, "IOService", @"Protocol Characteristics", *MEMORY[0x277CBECE8], 3u);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Value = CFDictionaryGetValue(v1, @"Physical Interconnect");
  v4 = Value;
  if (Value)
  {
    v5 = CFGetTypeID(Value);
    if (v5 == CFStringGetTypeID())
    {
      v4 = (CFStringCompare(v4, @"Virtual Interface", 0) == kCFCompareEqualTo);
    }

    else
    {
      v4 = 0;
    }
  }

  CFRelease(v2);
  return v4;
}

id get_mounted_media_entries()
{
  v62 = *MEMORY[0x277D85DE8];
  v53 = 0;
  v54 = 0;
  v46 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v46)
  {
    v0 = getfsstat(0, 0, 2);
    if (v0 < 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v9 = *__error();
        *buf = 67109120;
        *&buf[4] = v9;
        _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to get mount information: %{errno}d", buf, 8u);
      }

      v7 = 0;
    }

    else
    {
      v1 = v0;
      v2 = 0;
      v3 = 0;
      while (1)
      {
        v4 = 2168 * v1;
        if (v2 > v4)
        {
          goto LABEL_11;
        }

        if (v3)
        {
          free(v3);
        }

        v2 = v4 + 2168;
        v5 = malloc_type_malloc(v4 + 2168, 0x100004087E0324AuLL);
        if (!v5)
        {
          break;
        }

        v3 = v5;
        v1 = getfsstat(v5, v4 + 2168, 2);
        if (v1 < 0)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v6 = *__error();
            *buf = 67109120;
            *&buf[4] = v6;
            _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to get mount information: %{errno}d", buf, 8u);
          }

LABEL_11:
          v7 = v3;
          goto LABEL_21;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *__error();
        *buf = 67109120;
        *&buf[4] = v10;
        _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to allocate memory: %{errno}d", buf, 8u);
      }

      v7 = 0;
LABEL_21:
      if (v1 > 0)
      {
        v45 = v7;
        v11 = MGCopyAnswer();
        v12 = [v11 BOOLValue];

        if (((v12 | os_variant_is_recovery()) & 1) == 0)
        {
          v14 = cryptex_copy_list_4MSM();
          if ((v14 & 0xFFFFFFFD) != 0)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v15 = strerror(v14);
              *buf = 67109378;
              *&buf[4] = v14;
              LOWORD(v60) = 2080;
              *(&v60 + 2) = v15;
              _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to copy cryptex list (%d (%s)), non-fatal.", buf, 0x12u);
            }

            v53 = 0;
          }
        }

        v16 = 0;
        v17 = v1;
        v18 = v45;
        f_mntonname = v45->f_mntonname;
        *&v13 = 136315138;
        v44 = v13;
        while (1)
        {
          *buf = 0;
          *&v60 = buf;
          *(&v60 + 1) = 0x2020000000;
          v61 = 0;
          v20 = create_map_entry(v18, v54, v53);
          v21 = v20;
          if (!v20)
          {
            break;
          }

          v22 = [v20 objectForKeyedSubscript:@"MountPath"];
          if (!v22)
          {
            v29 = MEMORY[0x277D86220];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *v57 = 138412290;
              v58 = @"MountPath";
              v26 = v29;
              v27 = "Map entry missing value for key %@.";
              v28 = 12;
LABEL_36:
              _os_log_impl(&dword_259B65000, v26, OS_LOG_TYPE_DEFAULT, v27, v57, v28);
            }

            goto LABEL_37;
          }

          v48 = v22;
          v23 = [v21 objectForKeyedSubscript:@"DiskImageType"];
          v24 = [v23 isEqualToString:@"Cryptex"];

          if (v24)
          {
            *(v60 + 24) = 1;
          }

          else
          {
            v49[0] = MEMORY[0x277D85DD0];
            v49[1] = 3221225472;
            v49[2] = __get_mounted_media_entries_block_invoke;
            v49[3] = &unk_2798EE598;
            v32 = v48;
            v50 = v32;
            v51 = v21;
            v52 = buf;
            [&unk_286AD8590 enumerateObjectsUsingBlock:v49];

            if ((*(v60 + 24) & 1) == 0)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
              {
                get_mounted_media_entries_cold_1(v55, v32, &v56);
              }

              v30 = 0;
              v31 = 0;
              v35 = 0;
              v33 = 0;
              v47 = v16;
              v48 = v32;
              goto LABEL_55;
            }
          }

          v47 = [v21 objectForKeyedSubscript:{@"DeviceNode", v44}];

          if (v47)
          {
            v33 = [v21 objectForKeyedSubscript:@"DeviceType"];
            if (v33)
            {
              if ([@"DiskImage" isEqualToString:v33])
              {
                v34 = image_file_path_name(v18 + 1112);
                if (v34)
                {
                  [v21 setObject:v34 forKeyedSubscript:@"BackingImage"];
                  v30 = [v21 objectForKeyedSubscript:@"ImageSignature"];
                  if (v30)
                  {
                    v35 = 0;
                    v31 = v34;
LABEL_61:
                    [v46 setObject:v21 forKeyedSubscript:v47];
                    goto LABEL_55;
                  }

                  v31 = image_file_path_name(v18 + 1112);

                  if (v31)
                  {
                    v35 = signatureFromPath(v31);
                    if (v35)
                    {
                      v30 = [objc_alloc(MEMORY[0x277CBEB28]) initDataWithHexString:v35];
                      if (v30)
                      {
                        [v21 setObject:v30 forKeyedSubscript:@"ImageSignature"];
                        goto LABEL_61;
                      }

                      v40 = MEMORY[0x277D86220];
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                      {
                        *v57 = 138412290;
                        v58 = v31;
                        _os_log_impl(&dword_259B65000, v40, OS_LOG_TYPE_DEFAULT, "Failed to convert signature from %@", v57, 0xCu);
                      }
                    }

                    else
                    {
                      v39 = MEMORY[0x277D86220];
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                      {
                        *v57 = 138412290;
                        v58 = v31;
                        _os_log_impl(&dword_259B65000, v39, OS_LOG_TYPE_DEFAULT, "Failed to recover signature from %@", v57, 0xCu);
                      }

                      v35 = 0;
                    }

                    goto LABEL_60;
                  }

                  v38 = MEMORY[0x277D86220];
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
LABEL_58:
                    *v57 = v44;
                    v58 = f_mntonname;
                    _os_log_impl(&dword_259B65000, v38, OS_LOG_TYPE_DEFAULT, "Failed to get backing image path for %s", v57, 0xCu);
                  }
                }

                else
                {
                  v38 = MEMORY[0x277D86220];
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_58;
                  }
                }
              }

              v35 = 0;
              v31 = 0;
LABEL_60:
              v30 = 0;
              goto LABEL_61;
            }

            v37 = MEMORY[0x277D86220];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *v57 = 138412290;
              v58 = @"DeviceType";
              _os_log_impl(&dword_259B65000, v37, OS_LOG_TYPE_DEFAULT, "Map entry missing %@.", v57, 0xCu);
            }
          }

          else
          {
            v36 = MEMORY[0x277D86220];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *v57 = 138412290;
              v58 = @"DeviceNode";
              _os_log_impl(&dword_259B65000, v36, OS_LOG_TYPE_DEFAULT, "Map entry missing %@.", v57, 0xCu);
            }

            v47 = 0;
          }

          v30 = 0;
          v31 = 0;
LABEL_54:
          v35 = 0;
          v33 = 0;
LABEL_55:
          _Block_object_dispose(buf, 8);

          v18 += 2168;
          f_mntonname = (f_mntonname + 2168);
          v8 = v47;
          v16 = v47;
          if (!--v17)
          {
            v7 = v45;
            if (!v45)
            {
              goto LABEL_77;
            }

LABEL_76:
            free(v7);
            goto LABEL_77;
          }
        }

        v25 = MEMORY[0x277D86220];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v57 = 0;
          v26 = v25;
          v27 = "Failed to create map entry.";
          v28 = 2;
          goto LABEL_36;
        }

LABEL_37:
        v30 = 0;
        v31 = 0;
        v47 = v16;
        v48 = 0;
        goto LABEL_54;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v41 = *__error();
      *buf = 67109120;
      *&buf[4] = v41;
      _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to get mount information: %{errno}d", buf, 8u);
    }

    v8 = 0;
    if (v7)
    {
      goto LABEL_76;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to create dictionary.", buf, 2u);
    }

    v8 = 0;
  }

LABEL_77:
  if (v54)
  {
    cryptex_msm_array_destroy();
  }

  v42 = *MEMORY[0x277D85DE8];

  return v46;
}

id create_map_entry(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v69 = *MEMORY[0x277D85DE8];
  if (!a1 || (v3 = a3, (v4 = a2) == 0) && a3)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
LABEL_7:
      v8 = 0;
      v9 = 0;
      v4 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
LABEL_8:
      v16 = 0;
      goto LABEL_9;
    }

    *buf = 0;
    v6 = MEMORY[0x277D86220];
    v7 = "Invalid intput.";
LABEL_6:
    _os_log_impl(&dword_259B65000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
    goto LABEL_7;
  }

  v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:a1 + 1112 encoding:4];
  if (!v19)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v6 = MEMORY[0x277D86220];
    v7 = "Failed to create string.";
    goto LABEL_6;
  }

  v15 = v19;
  v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:a1 + 88 encoding:4];
  if (!v20)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to create string.", buf, 2u);
    }

    v8 = 0;
    v9 = 0;
    v4 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_8;
  }

  v14 = v20;
  v21 = [v14 UTF8String];
  if (!v21)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v40 = MEMORY[0x277D86220];
      v41 = "Failed to get C string.";
LABEL_53:
      _os_log_impl(&dword_259B65000, v40, OS_LOG_TYPE_DEFAULT, v41, buf, 2u);
    }

LABEL_54:
    v8 = 0;
    v9 = 0;
    v4 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_8;
  }

  v22 = v21;
  v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:a1 + 72 encoding:4];
  if (!v23)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v40 = MEMORY[0x277D86220];
      v41 = "Failed to create string.";
      goto LABEL_53;
    }

    goto LABEL_54;
  }

  v13 = v23;
  v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!v24)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to create dictionary.", buf, 2u);
    }

    v8 = 0;
    v9 = 0;
    v4 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_8;
  }

  v16 = v24;
  [v24 setObject:@"MassStorage" forKeyedSubscript:?];
  [v16 setObject:v15 forKeyedSubscript:@"DeviceNode"];
  [v16 setObject:v14 forKeyedSubscript:@"MountPath"];
  [v16 setObject:v13 forKeyedSubscript:@"FilesystemType"];
  [v16 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"IsMounted"];
  v25 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v15];
  if (!v25)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v66 = v15;
      v67 = 2080;
      v68 = (a1 + 88);
      _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to create URL (%@ / %s).", buf, 0x16u);
    }

    v8 = 0;
    v9 = 0;
    v4 = 0;
    v10 = 0;
    goto LABEL_64;
  }

  v10 = v25;
  __s2 = v22;
  v26 = *MEMORY[0x277CD28A0];
  v27 = [v25 lastPathComponent];
  mainPort = v26;
  v28 = IOBSDNameMatching(v26, 0, [v27 UTF8String]);

  if (!v28)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v42 = [v10 lastPathComponent];
      *buf = 138412290;
      v66 = v42;
      _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to create a BSD matching dictionary for %@.", buf, 0xCu);
    }

    v8 = 0;
    v9 = 0;
    v4 = 0;
LABEL_64:
    v11 = 0;
    v12 = 0;
    goto LABEL_9;
  }

  MatchingService = IOServiceGetMatchingService(mainPort, v28);
  mainPorta = MatchingService;
  if (!MatchingService)
  {
    if (([v15 isEqualToString:@"devfs"] & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v66 = v15;
      _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to retrieve the IO service matching the device node for %@.", buf, 0xCu);
    }

    goto LABEL_104;
  }

  if (!is_disk_image(MatchingService))
  {
LABEL_104:
    cf = 0;
    v9 = 0;
    v4 = 0;
LABEL_105:
    v11 = 0;
    v12 = 0;
    goto LABEL_106;
  }

  [v16 setObject:@"DiskImage" forKeyedSubscript:@"DeviceType"];
  if (!strcmp("/Developer", __s2))
  {
    v43 = @"Developer";
    v44 = kMSMDiskImageTypeKey;
LABEL_103:
    [v16 setObject:v43 forKeyedSubscript:*v44];
    goto LABEL_104;
  }

  if (__s2 == strnstr(__s2, "/private/var/personalized_automation", 0x24uLL))
  {
    [v16 setObject:@"Personalized" forKeyedSubscript:@"DiskImageType"];
    v45 = kMSMDiskImageTypePersonalizedAutomation;
LABEL_102:
    v43 = *v45;
    v44 = kMSMDiskImagePersonalizedImageType;
    goto LABEL_103;
  }

  if (__s2 == strnstr(__s2, "/private/var/personalized_demo", 0x1EuLL))
  {
    [v16 setObject:@"Personalized" forKeyedSubscript:@"DiskImageType"];
    v45 = kMSMDiskImageTypePersonalizedDemo;
    goto LABEL_102;
  }

  if (__s2 == strnstr(__s2, "/private/var/personalized_debug", 0x1FuLL))
  {
    [v16 setObject:@"Personalized" forKeyedSubscript:@"DiskImageType"];
    v45 = kMSMDiskImageTypePersonalizedDebug;
    goto LABEL_102;
  }

  if (__s2 != strnstr(__s2, "/System/Developer", 0x11uLL))
  {
    if (__s2 == strnstr(__s2, "/private/var/personalized_factory", 0x21uLL))
    {
      [v16 setObject:@"Personalized" forKeyedSubscript:@"DiskImageType"];
      v45 = kMSMDiskImageTypePersonalizedFactory;
    }

    else if (__s2 == strnstr(__s2, "/System/Volumes/FieldService", 0x1CuLL))
    {
      [v16 setObject:@"Personalized" forKeyedSubscript:@"DiskImageType"];
      v45 = kMSMDiskImageTypePersonalizedFieldService;
    }

    else if (__s2 == strnstr(__s2, "/System/Volumes/FieldServiceDiagnostic", 0x26uLL))
    {
      [v16 setObject:@"Personalized" forKeyedSubscript:@"DiskImageType"];
      v45 = kMSMDiskImageTypePersonalizedFieldServiceDiagnostic;
    }

    else if (__s2 == strnstr(__s2, "/System/Volumes/FieldServiceRepair", 0x22uLL))
    {
      [v16 setObject:@"Personalized" forKeyedSubscript:@"DiskImageType"];
      v45 = kMSMDiskImageTypePersonalizedFieldServiceRepair;
    }

    else if (__s2 == strnstr(__s2, "/private/var/personalized_quality", 0x21uLL))
    {
      [v16 setObject:@"Personalized" forKeyedSubscript:@"DiskImageType"];
      v45 = kMSMDiskImageTypePersonalizedQuality;
    }

    else
    {
      if (__s2 != strnstr(__s2, "/private/var/personalized_repair", 0x20uLL))
      {
        if (!v4)
        {
          cf = 0;
          v9 = 0;
          goto LABEL_105;
        }

        [v16 setObject:@"Cryptex" forKeyedSubscript:@"DiskImageType"];
        if (v3)
        {
          while (1)
          {
            v30 = *v4;
            string = cryptex_msm_get_string();
            if (string)
            {
              v32 = string;
              v33 = strlen((a1 + 1112));
              if (strnstr(v32, (a1 + 1112), v33))
              {
                v34 = cryptex_msm_get_string();
                if (v34)
                {
                  v35 = v34;
                  v36 = cryptex_msm_get_string();
                  if (v36)
                  {
                    break;
                  }
                }
              }
            }

            ++v4;
            if (!--v3)
            {
              goto LABEL_39;
            }
          }

          v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:v36];
          [v16 setObject:v58 forKeyedSubscript:@"CryptexName"];

          v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:v35];
          [v16 setObject:v59 forKeyedSubscript:@"CryptexVersion"];
        }

LABEL_39:
        v37 = [v16 objectForKeyedSubscript:@"CryptexName"];
        if (!v37 || (v38 = v37, [v16 objectForKeyedSubscript:@"CryptexVersion"], v39 = objc_claimAutoreleasedReturnValue(), v39, v38, !v39))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v66 = v15;
            v67 = 2112;
            v68 = v14;
            _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Mount (%@ / %@) is not a cryptex or personalized image (not fatal).", buf, 0x16u);
          }

          v8 = 0;
          cf = 0;
          v9 = 0;
          v4 = 0;
          v11 = 0;
          v12 = 0;
LABEL_113:
          v55 = mainPorta;
          if (!mainPorta)
          {
            goto LABEL_115;
          }

          goto LABEL_114;
        }

        goto LABEL_104;
      }

      [v16 setObject:@"Personalized" forKeyedSubscript:@"DiskImageType"];
      v45 = kMSMDiskImageTypePersonalizedRepair;
    }

    goto LABEL_102;
  }

  v46 = [v14 stringByAppendingPathComponent:@"Library/Frameworks/DTRemoteServices.framework"];
  if (v46)
  {
    v11 = v46;
    [MEMORY[0x277CBEBC0] fileURLWithPath:v46 isDirectory:0];
    Unique = _CFBundleCreateUnique();
    if (Unique)
    {
      v48 = *MEMORY[0x277CBED58];
      cf = Unique;
      v12 = CFBundleGetValueForInfoDictionaryKey(Unique, *MEMORY[0x277CBED58]);
      v49 = isNSString(v12);

      if (v49)
      {
        v50 = [v14 stringByAppendingPathComponent:@"version.plist"];
        if (v50)
        {
          v9 = v50;
          v51 = [MEMORY[0x277CCAA00] defaultManager];
          __s2a = [v51 fileExistsAtPath:v9];

          if (__s2a)
          {
            v4 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v9];
            if (v4)
            {
LABEL_81:
              [v16 setObject:v12 forKeyedSubscript:@"PersonalizedImageVersion"];
              [v16 setObject:v4 forKeyedSubscript:@"PersonalizedImageVersionInfo"];
              [v16 setObject:@"Personalized" forKeyedSubscript:@"DiskImageType"];
              [v16 setObject:@"DeveloperDiskImage" forKeyedSubscript:@"PersonalizedImageType"];
LABEL_106:
              if (*(a1 + 64))
              {
                v56 = MEMORY[0x277CBEC38];
              }

              else
              {
                v56 = MEMORY[0x277CBEC28];
              }

              [v16 setObject:v56 forKeyedSubscript:@"IsReadOnly"];
              if ((*(a1 + 64) & 0x80) != 0)
              {
                v57 = MEMORY[0x277CBEC38];
              }

              else
              {
                v57 = MEMORY[0x277CBEC28];
              }

              [v16 setObject:v57 forKeyedSubscript:@"SupportsContentProtection"];
              v8 = v16;
              goto LABEL_113;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
            {
              create_map_entry_cold_1(v9, v12);
            }
          }

          v4 = 0;
          goto LABEL_81;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_99;
        }

        *buf = 0;
        v52 = MEMORY[0x277D86220];
        v53 = "Failed to create path.";
        v54 = 2;
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
LABEL_99:
          v4 = 0;
          v9 = 0;
          goto LABEL_100;
        }

        *buf = 138412290;
        v66 = v48;
        v52 = MEMORY[0x277D86220];
        v53 = "Failed to query bundle key %@.";
        v54 = 12;
      }

      _os_log_impl(&dword_259B65000, v52, OS_LOG_TYPE_DEFAULT, v53, buf, v54);
      goto LABEL_99;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to query bundle for DTRemoteServices.framework.", buf, 2u);
    }

    v12 = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to create path.", buf, 2u);
    }

    v12 = 0;
    v11 = 0;
  }

  v4 = 0;
  v9 = 0;
  cf = 0;
LABEL_100:
  v8 = 0;
  v55 = mainPorta;
LABEL_114:
  IOObjectRelease(v55);
LABEL_115:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_9:

  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

void __get_mounted_media_entries_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (([*(a1 + 32) hasPrefix:a2] & 1) != 0 || (objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"DiskImageType"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"Cryptex"), v6, v7))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }
}

id image_file_path_name(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = MEMORY[0x277D86220];
      v7 = "Invalid input.";
LABEL_9:
      _os_log_impl(&dword_259B65000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
    }

LABEL_10:
    v5 = 0;
    v2 = 0;
    v4 = 0;
    goto LABEL_11;
  }

  v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a1];
  if (!v1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = MEMORY[0x277D86220];
      v7 = "Failed to create string.";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v2 = v1;
  v10 = 0;
  v3 = [MEMORY[0x277D055E0] imageURLFromDevice:v1 error:&v10];
  v4 = v10;
  if (v3)
  {
    v5 = [v3 path];
    goto LABEL_12;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to retrieve image URL: %@", buf, 0xCu);
  }

  v5 = 0;
LABEL_11:
  v3 = 0;
LABEL_12:

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

id signatureFromPath(void *a1)
{
  v1 = [a1 pathComponents];
  if ([v1 count] >= 4)
  {
    v3 = objc_alloc(MEMORY[0x277CCACA8]);
    v4 = [v1 objectAtIndexedSubscript:{objc_msgSend(v1, "count") - 3}];
    v5 = [v1 objectAtIndexedSubscript:{objc_msgSend(v1, "count") - 2}];
    v2 = [v3 initWithFormat:@"%@%@", v4, v5];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id get_attached_ptp_entries()
{
  v19 = *MEMORY[0x277D85DE8];
  properties = 0;
  existing = 0;
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v0)
  {
    v1 = IOServiceMatching("IOUSBInterface");
    if (v1 && (v2 = v1, [(__CFDictionary *)v1 setObject:&unk_286AD85A8 forKeyedSubscript:@"bInterfaceClass"], [(__CFDictionary *)v2 setObject:&unk_286AD85C0 forKeyedSubscript:@"bInterfaceSubClass"], [(__CFDictionary *)v2 setObject:&unk_286AD85C0 forKeyedSubscript:@"bInterfaceProtocol"], !IOServiceGetMatchingServices(*MEMORY[0x277CD28A0], v2, &existing)) && (v7 = IOIteratorNext(existing)) != 0)
    {
      v8 = v7;
      v4 = 0;
      v3 = 0;
      v9 = MEMORY[0x277D86220];
      do
      {
        v10 = IORegistryEntryCreateCFProperties(v8, &properties, 0, 0);
        if (v10)
        {
          v11 = v10;
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            LODWORD(v18) = v11 & 0x3FFF;
            _os_log_impl(&dword_259B65000, v9, OS_LOG_TYPE_DEFAULT, "IORegistryEntryCreateCFProperties failed: 0x%04x", buf, 8u);
          }
        }

        else
        {
          Value = CFDictionaryGetValue(properties, @"locationID");

          v13 = isNSNumber(Value);

          if (v13)
          {
            v14 = objc_alloc_init(MEMORY[0x277CBEB38]);

            if (v14)
            {
              [v14 setObject:Value forKeyedSubscript:@"LocationID"];
              [v14 setObject:@"PTPCamera" forKeyedSubscript:@"DeviceType"];
              [v0 setObject:v14 forKeyedSubscript:@"PTPNode"];
              v3 = v14;
            }

            else
            {
              if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_259B65000, v9, OS_LOG_TYPE_DEFAULT, "Failed to create dictionary.", buf, 2u);
              }

              v3 = 0;
            }
          }

          else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v18 = "locationID";
            _os_log_impl(&dword_259B65000, v9, OS_LOG_TYPE_DEFAULT, "Failed to retrieve %s.", buf, 0xCu);
          }

          v4 = Value;
        }

        if (properties)
        {
          CFRelease(properties);
        }

        properties = 0;
        IOObjectRelease(v8);
        v8 = IOIteratorNext(existing);
      }

      while (v8);
    }

    else
    {
      v3 = 0;
      v4 = 0;
    }

    if (existing)
    {
      IOObjectRelease(existing);
    }
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];

  return v0;
}

id get_attached_media_entries()
{
  v70 = *MEMORY[0x277D85DE8];
  properties = 0;
  existing = 0;
  bzero(v69, 0x878uLL);
  v0 = *MEMORY[0x277CD28A0];
  v1 = IOServiceMatching("IOMedia");
  if (IOServiceGetMatchingServices(v0, v1, &existing))
  {
LABEL_2:
    v2 = 0;
LABEL_3:
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    goto LABEL_4;
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!v12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to create dictionary.", buf, 2u);
    }

    goto LABEL_2;
  }

  v2 = v12;
  v13 = IOIteratorNext(existing);
  if (!v13)
  {
    goto LABEL_3;
  }

  v14 = v13;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  v54 = 0;
  v53 = 1;
  do
  {
    if (is_disk_image(v14))
    {
      goto LABEL_40;
    }

    v15 = IORegistryEntryCreateCFProperties(v14, &properties, 0, 0);
    if (v15)
    {
      v16 = v15;
      v17 = MEMORY[0x277D86220];
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_40;
      }

      *buf = 67109120;
      LODWORD(v66) = v16 & 0x3FFF;
      v18 = v17;
      v19 = "IORegistryEntryCreateCFProperties failed: 0x%04x";
      v20 = 8;
      goto LABEL_16;
    }

    if (properties)
    {
      v21 = CFDictionaryGetValue(properties, @"BSD Name");

      v22 = isNSString(v21);

      if (!v22)
      {
        v28 = MEMORY[0x277D86220];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v66 = "BSD Name";
          _os_log_impl(&dword_259B65000, v28, OS_LOG_TYPE_DEFAULT, "Failed to retrieve %s.", buf, 0xCu);
        }

        goto LABEL_39;
      }

      v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"/dev/%@", v21];

      if (!v23)
      {
        v29 = MEMORY[0x277D86220];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_259B65000, v29, OS_LOG_TYPE_DEFAULT, "Failed to create string.", buf, 2u);
        }

        v4 = 0;
        goto LABEL_39;
      }

      v24 = CFDictionaryGetValue(properties, @"Content");

      v25 = isNSString(v24);

      if (v25)
      {
        if ([@"C12A7328-F81F-11D2-BA4B-00A0C93EC93B" isEqualToString:v24])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            get_attached_media_entries_cold_4(&v57, v58, v26);
          }

          goto LABEL_38;
        }

        if ([@"Apple_partition_map" isEqualToString:v24])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            get_attached_media_entries_cold_3(&v55, v56, v34);
          }

          goto LABEL_38;
        }

        v35 = CFDictionaryGetValue(properties, @"Removable");

        v9 = v35;
        v36 = isNSNumber(v35);

        if (v36)
        {
          if (([v35 BOOLValue] & 1) == 0 && (serviceIsAttachedToRemovableDevice(v14) & 1) == 0)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              get_attached_media_entries_cold_1(v63, v21, &v64);
            }

            goto LABEL_38;
          }

          v37 = CFDictionaryGetValue(properties, @"Leaf");

          v8 = v37;
          v38 = isNSNumber(v37);

          if (v38)
          {
            if (([v37 BOOLValue] & 1) == 0)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
              {
                get_attached_media_entries_cold_2(v61, v21, &v62);
              }

              goto LABEL_38;
            }

            v39 = CFDictionaryGetValue(properties, @"Writable");

            v5 = v39;
            v40 = isNSNumber(v39);
            if (v40)
            {
              v41 = v40;
              v42 = [v39 BOOLValue];

              v53 &= v42 ^ 1;
            }

            v43 = determine_filesystem_type();
            if (v43 != 4 && (v43 & 3) != 1)
            {
              v44 = objc_alloc_init(MEMORY[0x277CBEB38]);

              if (v44)
              {
                [v44 setObject:@"MassStorage" forKeyedSubscript:@"DeviceType"];
                [v44 setObject:v23 forKeyedSubscript:@"DeviceNode"];
                [v44 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"IsMounted"];
                v45 = [MEMORY[0x277CCABB0] numberWithBool:v53 & 1];
                [v44 setObject:v45 forKeyedSubscript:@"IsReadOnly"];

LABEL_55:
                [v2 setObject:v44 forKeyedSubscript:v23];
                v54 = v44;
                goto LABEL_38;
              }

              v49 = MEMORY[0x277D86220];
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v50 = v49;
                v51 = "Failed to create dictionary.";
                v52 = 2;
LABEL_72:
                _os_log_impl(&dword_259B65000, v50, OS_LOG_TYPE_DEFAULT, v51, buf, v52);
                goto LABEL_73;
              }

              goto LABEL_73;
            }

            [v23 UTF8String];
            if (__strlcpy_chk() < 0x400)
            {
              [v23 UTF8String];
              if (__strlcpy_chk() < 0x400)
              {
                if (__strlcpy_chk() < 0x10)
                {
                  v44 = create_map_entry(v69, 0, 0);

                  if (v44)
                  {
                    goto LABEL_55;
                  }

                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v66 = v23;
                    v50 = MEMORY[0x277D86220];
                    v51 = "Failed to create map entry for %@.";
                    v52 = 12;
                    goto LABEL_72;
                  }

LABEL_73:
                  v54 = 0;
                  goto LABEL_38;
                }

                v48 = MEMORY[0x277D86220];
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_38;
                }
              }

              else
              {
                v48 = MEMORY[0x277D86220];
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_38;
                }
              }
            }

            else
            {
              v48 = MEMORY[0x277D86220];
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_38;
              }
            }

            *buf = 0;
            v31 = v48;
            v32 = "Invalid string size.";
            v33 = 2;
            goto LABEL_34;
          }

          v47 = MEMORY[0x277D86220];
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_38;
          }

          *buf = 138412546;
          v66 = v21;
          v67 = 2080;
          v68 = "Leaf";
          v31 = v47;
          v32 = "The attached media object %@ does not have a '%s' flag.";
        }

        else
        {
          v46 = MEMORY[0x277D86220];
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_38;
          }

          *buf = 138412546;
          v66 = v21;
          v67 = 2080;
          v68 = "Removable";
          v31 = v46;
          v32 = "The attached media object %@ does not have a '%s' flag.";
        }
      }

      else
      {
        v30 = MEMORY[0x277D86220];
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
LABEL_38:
          v4 = v23;
          v6 = v24;
LABEL_39:
          v7 = v21;
          goto LABEL_40;
        }

        *buf = 138412546;
        v66 = v21;
        v67 = 2080;
        v68 = "Content";
        v31 = v30;
        v32 = "The attached media object %@ does not have a '%s' flag.";
      }

      v33 = 22;
LABEL_34:
      _os_log_impl(&dword_259B65000, v31, OS_LOG_TYPE_DEFAULT, v32, buf, v33);
      goto LABEL_38;
    }

    v27 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v18 = v27;
      v19 = "Failed to retrieve any properties for the matched service.";
      v20 = 2;
LABEL_16:
      _os_log_impl(&dword_259B65000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, v20);
    }

LABEL_40:
    IOObjectRelease(v14);
    if (properties)
    {
      CFRelease(properties);
    }

    properties = 0;
    v14 = IOIteratorNext(existing);
  }

  while (v14);
  v3 = v54;
LABEL_4:
  if (existing)
  {
    IOObjectRelease(existing);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v2;
}

uint64_t serviceIsAttachedToRemovableDevice(io_object_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v10 = __serviceIsAttachedToRemovableDevice_block_invoke;
  v11 = &unk_2798EE5C0;
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
        if (ParentEntry != -536870208 && ParentEntry != 0)
        {
          break;
        }

        a1 = parent;
        if (!parent)
        {
          goto LABEL_13;
        }

        (v10)(v2, parent, &v18);
        if (v18 == 1)
        {
          IOObjectRelease(a1);
          goto LABEL_13;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v20 = ParentEntry & 0x3FFF;
        _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "IORegistryEntryGetParentEntry failed: 0x%04x", buf, 8u);
      }
    }
  }

LABEL_13:

  v6 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

id get_attached_entries()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v0)
  {
    v1 = get_attached_ptp_entries();
    if (v1)
    {
      [v0 addEntriesFromDictionary:v1];
    }

    v2 = get_attached_media_entries();

    if (v2)
    {
      [v0 addEntriesFromDictionary:v2];
    }

    v3 = get_mounted_media_entries();

    if (v3)
    {
      [v0 addEntriesFromDictionary:v3];
    }
  }

  return v0;
}

id lookup_mass_storage_entry(void *a1)
{
  v1 = lookup_map_entries(@"MassStorage", @"DeviceNode", a1);
  v2 = v1;
  if (v1 && [v1 count] && (objc_msgSend(v2, "objectAtIndex:", 0), v3 = objc_claimAutoreleasedReturnValue(), isNSDictionary(v3), v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    v5 = [v2 objectAtIndex:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id lookup_map_entries(void *a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v31 = a2;
  v30 = a3;
  if (!v5 || !v31 || !v30)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Invalid input(s).", buf, 2u);
    }

    goto LABEL_26;
  }

  v6 = get_attached_entries();
  if (!v6)
  {
    v23 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    if (v23)
    {
      lookup_map_entries_cold_1(v23, v24, v25);
    }

LABEL_26:
    v29 = 0;
    v26 = 0;
    v10 = 0;
    v7 = 0;
    goto LABEL_32;
  }

  v7 = v6;
  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v29)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v7 = v7;
    v8 = [v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v8)
    {
      v9 = v8;
      v33 = 0;
      v10 = 0;
      v11 = *v35;
      v12 = MEMORY[0x277D86220];
      do
      {
        v13 = 0;
        v32 = v9;
        do
        {
          v14 = v10;
          if (*v35 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v15 = [v7 objectForKey:*(*(&v34 + 1) + 8 * v13)];
          v10 = [v15 objectForKeyedSubscript:@"DeviceType"];

          if (v10)
          {
            if ([v10 isEqual:v5])
            {
              v16 = v11;
              v17 = v7;
              v18 = v5;
              v19 = [v15 objectForKeyedSubscript:v31];

              v20 = isNSString(v19);
              if (v20)
              {
                v21 = v20;
                v22 = [v19 isEqual:v30];

                if (v22)
                {
                  [v29 addObject:v15];
                }
              }

              v33 = v19;
              v5 = v18;
              v7 = v17;
              v11 = v16;
              v9 = v32;
            }
          }

          else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v39 = @"DeviceType";
            _os_log_impl(&dword_259B65000, v12, OS_LOG_TYPE_DEFAULT, "Invalid value for %@.", buf, 0xCu);
          }

          ++v13;
        }

        while (v9 != v13);
        v9 = [v7 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v9);
    }

    else
    {
      v33 = 0;
      v10 = 0;
    }

    v26 = v33;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to create array.", buf, 2u);
    }

    v29 = 0;
    v26 = 0;
    v10 = 0;
  }

LABEL_32:

  v27 = *MEMORY[0x277D85DE8];

  return v29;
}

id lookup_mount_entry(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = get_attached_entries();
  v3 = v2;
  if (v2)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v21 = v3;
      v7 = 0;
      v8 = *v23;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [v4 objectForKey:*(*(&v22 + 1) + 8 * v9)];
        v11 = isNSDictionary(v10);

        if (v11)
        {
          v12 = [v10 objectForKeyedSubscript:@"MountPath"];

          v7 = v12;
        }

        v13 = isNSString(v7);
        if (v13)
        {
          v14 = v13;
          v15 = [v7 isEqualToString:v1];

          if (v15)
          {
            break;
          }
        }

        if (v6 == ++v9)
        {
          v6 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          v10 = 0;
          break;
        }
      }

      v3 = v21;
    }

    else
    {
      v7 = 0;
      v10 = 0;
    }
  }

  else
  {
    v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    if (v16)
    {
      lookup_map_entries_cold_1(v16, v17, v18);
    }

    v7 = 0;
    v10 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v10;
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

void *makePathWithSignature(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initHexStringWithData:v3];
  v6 = v5;
  if (!v5)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:
      v8 = 0;
      v7 = 0;
      v9 = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v10 = MEMORY[0x277D86220];
    v11 = "Failed to create hex string with data.";
    v12 = 2;
LABEL_8:
    _os_log_impl(&dword_259B65000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, v12);
    goto LABEL_9;
  }

  if ([v5 length] != 256 && objc_msgSend(v6, "length") != 96 && objc_msgSend(v6, "length") != 40)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 67109378;
    v17 = [v6 length];
    v18 = 2112;
    v19 = v3;
    v10 = MEMORY[0x277D86220];
    v11 = "Unsupported signature length: %d characters (%@)";
    v12 = 18;
    goto LABEL_8;
  }

  v7 = [v6 substringToIndex:{objc_msgSend(v6, "length") >> 1}];
  v8 = [v6 substringFromIndex:{objc_msgSend(v6, "length") >> 1}];
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@/%@", v4, v7, v8];
LABEL_10:
  v13 = v9;

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t path_is_bad(const char *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  bzero(__s1, 0x400uLL);
  if (strlen(a1) > 0x400)
  {
    goto LABEL_19;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v22 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v16 = __path_contains_links_block_invoke;
  v17 = &unk_2798EE608;
  v18 = buf;
  v19 = a1;
  v2 = v15;
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v3 stringWithFileSystemRepresentation:a1 length:strlen(a1)];

  v5 = [v4 pathComponents];
  v6 = [v5 mutableCopy];

  if (v6)
  {
    v7 = [v6 count];
    if (v7)
    {
      do
      {
        v8 = [MEMORY[0x277CCACA8] pathWithComponents:v6];
        v9 = v8;
        if (v8)
        {
          v10 = v8;
          v11 = [v9 fileSystemRepresentation];
          if (!(v16)(v2, v11))
          {

            break;
          }

          [v6 removeLastObject];
        }
      }

      while (--v7);
    }
  }

  v12 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
  if ((v12 & 1) != 0 || !realpath_DARWIN_EXTSN(a1, __s1) || (result = strcmp(__s1, a1), result))
  {
LABEL_19:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = a1;
      *&buf[12] = 2080;
      *&buf[14] = __s1;
      _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Paths don't match: (%s/%s)", buf, 0x16u);
    }

    result = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t remove_item_at_path(const char *a1, removefile_flags_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  value = 0;
  v4 = removefile_state_alloc();
  if (v4)
  {
    v5 = v4;
    if (removefile_state_set(v4, 3u, removefile_error_callback) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *__error();
      v7 = __error();
      v8 = strerror(*v7);
      *buf = 67109378;
      v20 = v6;
      v21 = 2080;
      v22 = v8;
      _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "removefile_state_set failed: %d (%s)", buf, 0x12u);
    }

    if (removefile_state_set(v5, 4u, &value) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *__error();
      v10 = __error();
      v11 = strerror(*v10);
      *buf = 67109378;
      v20 = v9;
      v21 = 2080;
      v22 = v11;
      _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "removefile_state_set failed: %d (%s)", buf, 0x12u);
    }

    if (removefile(a1, v5, a2))
    {
      v12 = 0;
      if (*__error() != 2 || value)
      {
        goto LABEL_17;
      }
    }

    else if (value)
    {
      v12 = 0;
LABEL_17:
      removefile_state_free(v5);
      goto LABEL_18;
    }

    v12 = 1;
    goto LABEL_17;
  }

  v12 = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v13 = *__error();
    v14 = __error();
    v15 = strerror(*v14);
    *buf = 67109378;
    v20 = v13;
    v21 = 2080;
    v22 = v15;
    _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "removefile_state_alloc failed: %d (%s)", buf, 0x12u);
    v12 = 0;
  }

LABEL_18:
  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t removefile_error_callback(_removefile_state *a1, const char *a2, int *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  dst = 0;
  memset(&v19, 0, sizeof(v19));
  if (removefile_state_get(a1, 5u, &dst))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *__error();
      *buf = 67109120;
      LODWORD(v22) = v5;
      _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "removefile_state_get failed: %{errno}d", buf, 8u);
    }

    dst = 2;
    goto LABEL_17;
  }

  if (dst == 1)
  {
    if (lstat(a2, &v19))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v6 = *__error();
        v7 = __error();
        v8 = strerror(*v7);
        *buf = 136315650;
        v22 = a2;
        v23 = 1024;
        v24 = v6;
        v25 = 2080;
        v26 = v8;
        v9 = MEMORY[0x277D86220];
        v10 = "lstat failed for %s: %d (%s)";
LABEL_9:
        _os_log_impl(&dword_259B65000, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 0x1Cu);
      }
    }

    else
    {
      if ((v19.st_flags & 2) == 0)
      {
        goto LABEL_17;
      }

      if (lchflags(a2, v19.st_flags & 0xFFFFFFFD))
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_17;
        }

        v11 = *__error();
        v12 = __error();
        v13 = strerror(*v12);
        *buf = 136315650;
        v22 = a2;
        v23 = 1024;
        v24 = v11;
        v25 = 2080;
        v26 = v13;
        v9 = MEMORY[0x277D86220];
        v10 = "lchflags failed for %s: %d (%s)";
        goto LABEL_9;
      }

      if (!unlink(a2))
      {
        goto LABEL_20;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v14 = *__error();
        v15 = __error();
        v16 = strerror(*v15);
        *buf = 136315650;
        v22 = a2;
        v23 = 1024;
        v24 = v14;
        v25 = 2080;
        v26 = v16;
        v9 = MEMORY[0x277D86220];
        v10 = "Failed to unlink %s: %d (%s)";
        goto LABEL_9;
      }
    }
  }

LABEL_17:
  if (a3 && !*a3)
  {
    *a3 = dst;
  }

LABEL_20:
  v17 = *MEMORY[0x277D85DE8];
  return 0;
}

id copyGroupContainerPath(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    [v1 UTF8String];
    v3 = container_system_group_path_for_identifier();
    if (v3)
    {
      v4 = v3;
      v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v3];
      free(v4);
      goto LABEL_10;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v12 = v2;
      v13 = 1024;
      v14 = 1;
      v6 = MEMORY[0x277D86220];
      v7 = "Failed to copy system group container (%@): %d";
      v8 = 18;
      goto LABEL_8;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v6 = MEMORY[0x277D86220];
    v7 = "Invalid input.";
    v8 = 2;
LABEL_8:
    _os_log_impl(&dword_259B65000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, v8);
  }

  v5 = 0;
LABEL_10:

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

id copyWorkingDirectory()
{
  if (copyWorkingDirectory_onceToken != -1)
  {
    copyWorkingDirectory_cold_1();
  }

  v1 = copyWorkingDirectory_retval;

  return v1;
}

void __copyWorkingDirectory_block_invoke()
{
  v2 = copyGroupContainerPath(@"systemgroup.com.apple.mobilestorageproxy");
  v0 = [v2 stringByAppendingPathComponent:@"backingStore"];
  v1 = copyWorkingDirectory_retval;
  copyWorkingDirectory_retval = v0;
}

uint64_t mobileStorageErrorHasDomainAndErrorCode(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = *MEMORY[0x277CCA7E8];
    do
    {
      v10 = [v5 domain];
      if ([v10 isEqualToString:v7])
      {
        v11 = [v5 code];

        if (v11 == a3)
        {
          v8 = 1;
          goto LABEL_10;
        }
      }

      else
      {
      }

      v12 = [v5 userInfo];
      v13 = [v12 objectForKeyedSubscript:v9];

      v5 = v13;
    }

    while (v13);
    v8 = 0;
  }

LABEL_10:

  return v8;
}

id copyDeviceTreeProperty(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  CFProperty = 0;
  if (a1 && v3)
  {
    v6 = IORegistryEntryFromPath(*MEMORY[0x277CD2898], [a1 fileSystemRepresentation]);
    if (v6)
    {
      v7 = v6;
      CFProperty = IORegistryEntryCreateCFProperty(v6, v4, 0, 0);
      IOObjectRelease(v7);
    }

    else
    {
      CFProperty = 0;
    }
  }

  return CFProperty;
}

id copyDeviceTreeInt(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = 0;
  v13 = 0;
  if (!a1)
  {
    goto LABEL_6;
  }

  v8 = v5;
  if (!a2)
  {
    goto LABEL_7;
  }

  v7 = copyDeviceTreeProperty(a1, a2);
  v9 = isNSData(v7);
  if (v9 && (v10 = v9, v11 = [v7 length], v10, v11 == 4))
  {
    [v7 getBytes:&v13 length:4];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:v13];
  }

  else
  {
LABEL_6:
    v8 = v6;
  }

LABEL_7:

  return v8;
}

uint64_t exchange_with_first_child_of_class(io_object_t *a1, const char *a2)
{
  v2 = 0;
  iterator = 0;
  if (a1 && a2)
  {
    if (MEMORY[0x259CAF850](*a1, "IOService", &iterator))
    {
      v2 = 0;
    }

    else
    {
      while (1)
      {
        v5 = IOIteratorNext(iterator);
        v2 = v5;
        if (!v5)
        {
          break;
        }

        if (IOObjectConformsTo(v5, a2))
        {
          IOObjectRelease(*a1);
          *a1 = v2;
          v2 = 1;
          break;
        }

        IOObjectRelease(v2);
      }
    }

    if (iterator)
    {
      IOObjectRelease(iterator);
    }
  }

  return v2;
}

uint64_t __path_contains_links_block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  memset(&v9, 0, sizeof(v9));
  if (!lstat(*(a1 + 40), &v9))
  {
    result = 1;
    if ((v9.st_mode & 0xF000) != 0xA000)
    {
      goto LABEL_9;
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
LABEL_8:
    result = 0;
    goto LABEL_9;
  }

  if (*__error() != 2)
  {
    v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (!v3)
    {
      goto LABEL_9;
    }

    v4 = *(a1 + 40);
    v5 = *__error();
    v6 = __error();
    v7 = strerror(*v6);
    *buf = 136315650;
    v11 = v4;
    v12 = 1024;
    v13 = v5;
    v14 = 2080;
    v15 = v7;
    _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "lstat failed for %s: %d (%s)", buf, 0x1Cu);
    goto LABEL_8;
  }

  result = 1;
LABEL_9:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 2u);
}

id MobileStorageCopyDevicesWithError(const __CFDictionary *a1, void *a2)
{
  if (a1 && (Value = CFDictionaryGetValue(a1, @"PerformLosslessQuery")) != 0)
  {
    v4 = Value;
    v5 = isNSNumber(Value);

    if (!v5)
    {
      createMobileStorageError("MobileStorageCopyDevicesWithError", 42, -3, 0, @"Invalid value for option %@: %@", v6, v7, v8, @"PerformLosslessQuery");
      goto LABEL_9;
    }
  }

  else
  {
    v4 = MEMORY[0x277CBEC28];
  }

  [v4 BOOLValue];
  v9 = get_attached_entries();
  if (v9)
  {
    v13 = v9;
    v14 = [v9 allValues];

    v15 = 0;
    goto LABEL_12;
  }

  createMobileStorageError("MobileStorageCopyDevicesWithError", 53, -2, 0, @"Failed to retrieve attached device list.", v10, v11, v12, v18);
  v16 = LABEL_9:;
  v15 = v16;
  v14 = 0;
  if (a2 && v16)
  {
    v15 = v16;
    v14 = 0;
    *a2 = v15;
  }

LABEL_12:

  return v14;
}

CFTypeRef MobileStorageMountWithError(const void *a1, const __CFDictionary *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  if (!a1 || !a2)
  {
    v27 = createMobileStorageError("MobileStorageMountWithError", 96, -3, 0, @"Invalid input(s).", a6, a7, a8, v48);
    dict = 0;
LABEL_19:
    v29 = 0;
    goto LABEL_20;
  }

  dict = create_dict();
  if (!dict)
  {
    v25 = @"Failed to create dictionary.";
    v26 = 103;
LABEL_17:
    v28 = -2;
LABEL_18:
    v27 = createMobileStorageError("MobileStorageMountWithError", v26, v28, 0, v25, v11, v12, v13, v48);
    goto LABEL_19;
  }

  Value = CFDictionaryGetValue(a2, @"DiskImageType");
  v16 = isNSString(Value);

  if (!v16)
  {
    v25 = @"Invalid value for required option %@: %@";
    v48 = @"DiskImageType";
    v26 = 109;
    goto LABEL_17;
  }

  v17 = CFDictionaryGetValue(a2, @"ImageSignature");
  v18 = isNSData(v17);

  if (!v18)
  {
    v25 = @"Invalid value for required option %@: %@";
    v48 = @"ImageSignature";
    v26 = 115;
    goto LABEL_17;
  }

  v19 = CFDictionaryGetValue(a2, @"ImageTrustCache");
  v20 = v19;
  if (v19)
  {
    v21 = isNSData(v19);

    if (!v21)
    {
      v25 = @"Invalid value for option %@: %@";
      v48 = @"ImageTrustCache";
      v26 = 121;
      goto LABEL_42;
    }
  }

  if ([Value isEqualToString:@"Cryptex"])
  {
    v22 = isNSData(v20);

    if (!v22)
    {
      v25 = @"Invalid value for required option %@: %@";
      v48 = @"ImageTrustCache";
      v26 = 127;
      goto LABEL_42;
    }

    v23 = CFDictionaryGetValue(a2, @"ImageInfoPlist");
    v24 = v23;
    if (v23)
    {
      v49 = isNSData(v23);

      if (!v49)
      {
        v25 = @"Invalid value for option %@: %@";
        v48 = @"ImageInfoPlist";
        v26 = 133;
LABEL_42:
        v28 = -3;
        goto LABEL_18;
      }
    }
  }

  else
  {
    v24 = 0;
  }

  CFDictionarySetValue(dict, @"RequestType", @"Mount");
  CFDictionarySetValue(dict, @"DeviceType", @"DiskImage");
  CFDictionarySetValue(dict, @"DiskImagePath", a1);
  CFDictionarySetValue(dict, @"DiskImageType", Value);
  CFDictionarySetValue(dict, @"ImageSignature", v17);
  if (v20)
  {
    CFDictionarySetValue(dict, @"ImageTrustCache", v20);
  }

  if (v24)
  {
    CFDictionarySetValue(dict, @"ImageInfoPlist", v24);
  }

  v38 = call_and_response("com.apple.mobile.storage_mounter.xpc", dict, a2, &cf, v34, v35, v36, v37);
  v29 = v38;
  if (!v38)
  {
    v27 = createMobileStorageError("MobileStorageMountWithError", 166, -2, cf, @"Failed to receive response message from server.", v39, v40, v41, v48);
LABEL_20:
    v30 = 1;
    if (!a3)
    {
      goto LABEL_24;
    }

LABEL_21:
    if (v30 && v27)
    {
      *a3 = v27;
    }

LABEL_24:
    v31 = 0;
    v32 = 0;
    if (!v29)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v42 = CFDictionaryGetValue(v38, @"DetailedError");
  if (v42)
  {
    CFGetTypeID(v42);
    CFStringGetTypeID();
  }

  v43 = CFDictionaryGetValue(v29, @"MountPath");
  v44 = isNSString(v43);

  if (!v44)
  {
    v27 = createMobileStorageError("MobileStorageMountWithError", 179, -2, 0, @"Invalid value for %@: %@", v45, v46, v47, @"MountPath");
    v30 = v43 == 0;
    if (!a3)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  v31 = CFRetain(v43);
  v27 = 0;
LABEL_25:
  CFRelease(v29);
  v32 = v31;
LABEL_26:
  if (dict)
  {
    CFRelease(dict);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;

  return v32;
}

uint64_t MobileStorageUnmountWithError(__CFString *a1, uint64_t a2, void *a3)
{
  cf = 0;
  dict = create_dict();
  v10 = dict;
  if (!dict)
  {
    v21 = createMobileStorageError("MobileStorageUnmountWithError", 224, -2, 0, @"Failed to create dictionary.", v7, v8, v9, v30);
    v19 = 0;
    if (!a3)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  CFDictionarySetValue(dict, @"RequestType", @"Unmount");
  CFDictionarySetValue(v10, @"MountPath", a1);
  v15 = call_and_response("com.apple.mobile.storage_mounter.xpc", v10, a2, &cf, v11, v12, v13, v14);
  v19 = v15;
  if (!v15)
  {
    v22 = cf;
    v23 = @"Failed to receive response message from server.";
    v24 = 237;
    goto LABEL_14;
  }

  Value = CFDictionaryGetValue(v15, @"DetailedError");
  if (Value)
  {
    CFGetTypeID(Value);
    CFStringGetTypeID();
  }

  v25 = CFDictionaryGetValue(v19, @"Status");
  if (!v25 || (v26 = v25, v27 = CFGetTypeID(v25), v27 != CFStringGetTypeID()))
  {
    v23 = @"Invalid value for %@: %@";
    v30 = @"Status";
    v24 = 250;
LABEL_13:
    v22 = 0;
LABEL_14:
    v21 = createMobileStorageError("MobileStorageUnmountWithError", v24, -2, v22, v23, v16, v17, v18, v30);
    if (!a3)
    {
      goto LABEL_17;
    }

LABEL_15:
    if (v21)
    {
      *a3 = v21;
    }

LABEL_17:
    v28 = 0xFFFFFFFFLL;
    if (!v19)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (!CFEqual(v26, @"Success"))
  {
    v23 = @"Failed to unmount %@: %@";
    v30 = a1;
    v24 = 256;
    goto LABEL_13;
  }

  v21 = 0;
  v28 = 0;
LABEL_18:
  CFRelease(v19);
LABEL_19:
  if (v10)
  {
    CFRelease(v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;

  return v28;
}

uint64_t MobileStorageSyncWithError(__CFString *a1, uint64_t a2, void *a3)
{
  cf = 0;
  dict = create_dict();
  v10 = dict;
  if (!dict)
  {
    v21 = createMobileStorageError("MobileStorageSyncWithError", 300, -2, 0, @"Failed to create dictionary.", v7, v8, v9, v30);
    v19 = 0;
    if (!a3)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  CFDictionarySetValue(dict, @"RequestType", @"Sync");
  CFDictionarySetValue(v10, @"MountPath", a1);
  v15 = call_and_response("com.apple.mobile.storage_mounter.xpc", v10, a2, &cf, v11, v12, v13, v14);
  v19 = v15;
  if (!v15)
  {
    v22 = cf;
    v23 = @"Failed to receive response message from server.";
    v24 = 313;
    goto LABEL_14;
  }

  Value = CFDictionaryGetValue(v15, @"DetailedError");
  if (Value)
  {
    CFGetTypeID(Value);
    CFStringGetTypeID();
  }

  v25 = CFDictionaryGetValue(v19, @"Status");
  if (!v25 || (v26 = v25, v27 = CFGetTypeID(v25), v27 != CFStringGetTypeID()))
  {
    v23 = @"Invalid value for %@: %@";
    v30 = @"Status";
    v24 = 326;
LABEL_13:
    v22 = 0;
LABEL_14:
    v21 = createMobileStorageError("MobileStorageSyncWithError", v24, -2, v22, v23, v16, v17, v18, v30);
    if (!a3)
    {
      goto LABEL_17;
    }

LABEL_15:
    if (v21)
    {
      *a3 = v21;
    }

LABEL_17:
    v28 = 0xFFFFFFFFLL;
    if (!v19)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (!CFEqual(v26, @"Success"))
  {
    v23 = @"Failed to sync %@: %@";
    v30 = a1;
    v24 = 332;
    goto LABEL_13;
  }

  v21 = 0;
  v28 = 0;
LABEL_18:
  CFRelease(v19);
LABEL_19:
  if (v10)
  {
    CFRelease(v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;

  return v28;
}

uint64_t MobileStorageRollPersonalizationNonceWithError(const __CFDictionary *a1, void *a2)
{
  cf = 0;
  dict = create_dict();
  if (!dict)
  {
    v27 = createMobileStorageError("MobileStorageRollPersonalizationNonceWithError", 365, -2, 0, @"Failed to create dictionary.", v4, v5, v6, v35);
    v22 = 0;
    v9 = 0;
    goto LABEL_21;
  }

  v8 = CFDictionaryGetValue(a1, @"PersonalizedImageType");
  v9 = v8;
  if (v8)
  {
    v10 = isNSString(v8);

    if (!v10)
    {
      v27 = createMobileStorageError("MobileStorageRollPersonalizationNonceWithError", 372, -3, 0, @"Invalid value for options key: %@", v11, v12, v13, @"PersonalizedImageType");
      v22 = 0;
      goto LABEL_21;
    }

    CFDictionarySetValue(dict, @"PersonalizedImageType", v9);
  }

  CFDictionarySetValue(dict, @"RequestType", @"RollPersonalizationNonce");
  v18 = call_and_response("com.apple.mobile.storage_mounter.xpc", dict, a1, &cf, v14, v15, v16, v17);
  v22 = v18;
  if (v18)
  {
    Value = CFDictionaryGetValue(v18, @"DetailedError");
    if (Value)
    {
      v24 = Value;
      v25 = CFGetTypeID(Value);
      if (v25 == CFStringGetTypeID())
      {
        v26 = v24;
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }

    v31 = CFDictionaryGetValue(v22, @"Status");
    if (v31)
    {
      if (CFEqual(v31, @"Success"))
      {
        v27 = 0;
        v32 = 1;
LABEL_24:
        CFRelease(v22);
        v33 = v32;
        goto LABEL_25;
      }

      v29 = @"Failed to roll personalization nonce: %@";
      v35 = v26;
      v30 = 401;
    }

    else
    {
      v29 = @"Invalid value for %@: %@";
      v35 = @"Status";
      v30 = 395;
    }

    v28 = 0;
  }

  else
  {
    v28 = cf;
    v29 = @"Failed to receive response message from server.";
    v30 = 382;
  }

  v27 = createMobileStorageError("MobileStorageRollPersonalizationNonceWithError", v30, -2, v28, v29, v19, v20, v21, v35);
LABEL_21:
  if (a2)
  {
    *a2 = v27;
  }

  v32 = 0;
  v33 = 0;
  if (v22)
  {
    goto LABEL_24;
  }

LABEL_25:
  if (dict)
  {
    CFRelease(dict);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;

  return v33;
}

uint64_t MobileStorageRollCryptexNonceWithError(uint64_t a1, void *a2)
{
  cf = 0;
  dict = create_dict();
  v8 = dict;
  if (!dict)
  {
    v22 = createMobileStorageError("MobileStorageRollCryptexNonceWithError", 433, -2, 0, @"Failed to create dictionary.", v5, v6, v7, v32);
    v17 = 0;
    if (!a2)
    {
LABEL_19:
      v29 = 0;
      v30 = 0;
      if (!v17)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

LABEL_18:
    *a2 = v22;
    goto LABEL_19;
  }

  CFDictionarySetValue(dict, @"RequestType", @"RollCryptexNonce");
  v13 = call_and_response("com.apple.mobile.storage_mounter.xpc", v8, a1, &cf, v9, v10, v11, v12);
  v17 = v13;
  if (!v13)
  {
    v23 = cf;
    v24 = @"Failed to receive response message from server.";
    v25 = 441;
    goto LABEL_17;
  }

  Value = CFDictionaryGetValue(v13, @"DetailedError");
  if (Value)
  {
    v19 = Value;
    v20 = CFGetTypeID(Value);
    if (v20 == CFStringGetTypeID())
    {
      v21 = v19;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  v26 = CFDictionaryGetValue(v17, @"Status");
  if (!v26 || (v27 = v26, v28 = CFGetTypeID(v26), v28 != CFStringGetTypeID()))
  {
    v24 = @"Invalid value for %@: %@";
    v32 = @"Status";
    v25 = 454;
LABEL_16:
    v23 = 0;
LABEL_17:
    v22 = createMobileStorageError("MobileStorageRollCryptexNonceWithError", v25, -2, v23, v24, v14, v15, v16, v32);
    if (!a2)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (!CFEqual(v27, @"Success"))
  {
    v24 = @"Failed to roll cryptex nonce: %@";
    v32 = v21;
    v25 = 460;
    goto LABEL_16;
  }

  v22 = 0;
  v29 = 1;
LABEL_20:
  CFRelease(v17);
  v30 = v29;
LABEL_21:
  if (v8)
  {
    CFRelease(v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;

  return v30;
}

void *MobileStorageCopyPersonalizationNonceWithError(const __CFDictionary *a1, void *a2)
{
  cf = 0;
  dict = create_dict();
  if (!dict)
  {
    v27 = createMobileStorageError("MobileStorageCopyPersonalizationNonceWithError", 493, -2, 0, @"Failed to create dictionary.", v4, v5, v6, v33);
    v22 = 0;
    v9 = 0;
    goto LABEL_12;
  }

  v8 = CFDictionaryGetValue(a1, @"PersonalizedImageType");
  v9 = v8;
  if (v8)
  {
    v10 = isNSString(v8);

    if (!v10)
    {
      v27 = createMobileStorageError("MobileStorageCopyPersonalizationNonceWithError", 500, -3, 0, @"Invalid value for options key: %@", v11, v12, v13, @"PersonalizedImageType");
      v22 = 0;
      if (!a2)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }

    CFDictionarySetValue(dict, @"PersonalizedImageType", v9);
  }

  CFDictionarySetValue(dict, @"RequestType", @"CopyPersonalizationNonce");
  v18 = call_and_response("com.apple.mobile.storage_mounter.xpc", dict, a1, &cf, v14, v15, v16, v17);
  v22 = v18;
  if (!v18)
  {
    v27 = createMobileStorageError("MobileStorageCopyPersonalizationNonceWithError", 510, -2, cf, @"Failed to receive response message from server.", v19, v20, v21, v33);
LABEL_12:
    v10 = 0;
    if (!a2)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  Value = CFDictionaryGetValue(v18, @"DetailedError");
  if (Value)
  {
    v24 = Value;
    v25 = CFGetTypeID(Value);
    if (v25 == CFStringGetTypeID())
    {
      v26 = v24;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  v28 = CFDictionaryGetValue(v22, @"PersonalizationNonce");
  v10 = isNSData(v28);

  if (v10)
  {
    v10 = CFRetain(v28);
    v27 = 0;
    if (!a2)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v27 = createMobileStorageError("MobileStorageCopyPersonalizationNonceWithError", 522, -2, 0, @"Failed to retrieve personalization nonce: %@", v29, v30, v31, v26);
    if (!a2)
    {
      goto LABEL_23;
    }
  }

LABEL_21:
  if (!v10)
  {
    *a2 = v27;
  }

LABEL_23:
  if (v22)
  {
    CFRelease(v22);
  }

  if (dict)
  {
    CFRelease(dict);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;

  return v10;
}

void *MobileStorageCopyPersonalizationIdentifiersWithError(const __CFDictionary *a1, void *a2)
{
  cf = 0;
  dict = create_dict();
  v8 = dict;
  if (!dict)
  {
    v31 = createMobileStorageError("MobileStorageCopyPersonalizationIdentifiersWithError", 556, -2, 0, @"Failed to create dictionary.", v5, v6, v7, v41);
    v23 = 0;
    v14 = 0;
    goto LABEL_16;
  }

  CFDictionarySetValue(dict, @"RequestType", @"CopyPersonalizationIdentifiers");
  v9 = CFDictionaryGetValue(a1, @"PersonalizedImageType");
  v14 = v9;
  if (v9)
  {
    v15 = isNSString(v9);

    if (!v15)
    {
      v31 = createMobileStorageError("MobileStorageCopyPersonalizationIdentifiersWithError", 565, -3, 0, @"Invalid value for options key: %@", v16, v17, v18, @"PersonalizedImageType");
      v23 = 0;
      if (!a2)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    CFDictionarySetValue(v8, @"PersonalizedImageType", v14);
  }

  v19 = call_and_response("com.apple.mobile.storage_mounter.xpc", v8, a1, &cf, v10, v11, v12, v13);
  v23 = v19;
  if (!v19)
  {
    createMobileStorageError("MobileStorageCopyPersonalizationIdentifiersWithError", 573, -2, cf, @"Failed to receive response message from server.", v20, v21, v22, v41);
    goto LABEL_15;
  }

  Value = CFDictionaryGetValue(v19, @"Error");
  v25 = isNSString(Value);
  if (v25)
  {
    v26 = v25;
    v27 = CFEqual(Value, @"UnknownCommand");

    if (v27)
    {
      createMobileStorageError("MobileStorageCopyPersonalizationIdentifiersWithError", 579, -5, 0, @"Unsupported command: %@", v28, v29, v30, @"QueryPersonalizationIdentifiers");
      v31 = LABEL_15:;
LABEL_16:
      v15 = 0;
      if (!a2)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

  v32 = CFDictionaryGetValue(v23, @"DetailedError");
  if (v32)
  {
    v33 = v32;
    v34 = CFGetTypeID(v32);
    if (v34 == CFStringGetTypeID())
    {
      v35 = v33;
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v35 = 0;
  }

  v37 = CFDictionaryGetValue(v23, @"PersonalizationIdentifiers");
  v15 = isNSDictionary(v37);

  if (v15)
  {
    v15 = CFRetain(v37);
    v31 = 0;
    if (!a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v31 = createMobileStorageError("MobileStorageCopyPersonalizationIdentifiersWithError", 590, -2, 0, @"Failed to retrieve personalization identifiers: %@", v38, v39, v40, v35);
    if (!a2)
    {
      goto LABEL_19;
    }
  }

LABEL_17:
  if (!v15)
  {
    *a2 = v31;
  }

LABEL_19:
  if (v23)
  {
    CFRelease(v23);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;

  return v15;
}

void *MobileStorageCopyCryptexNonceWithError(uint64_t a1, void *a2)
{
  cf = 0;
  dict = create_dict();
  v8 = dict;
  if (!dict)
  {
    v22 = createMobileStorageError("MobileStorageCopyCryptexNonceWithError", 622, -2, 0, @"Failed to create dictionary.", v5, v6, v7, v29);
    v17 = 0;
    goto LABEL_9;
  }

  CFDictionarySetValue(dict, @"RequestType", @"CopyCryptexNonce");
  v13 = call_and_response("com.apple.mobile.storage_mounter.xpc", v8, a1, &cf, v9, v10, v11, v12);
  v17 = v13;
  if (!v13)
  {
    v22 = createMobileStorageError("MobileStorageCopyCryptexNonceWithError", 630, -2, cf, @"Failed to receive response message from server.", v14, v15, v16, v29);
LABEL_9:
    v23 = 0;
    if (!a2)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(v13, @"DetailedError");
  if (Value)
  {
    v19 = Value;
    v20 = CFGetTypeID(Value);
    if (v20 == CFStringGetTypeID())
    {
      v21 = v19;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  v24 = CFDictionaryGetValue(v17, @"CryptexNonce");
  v23 = isNSData(v24);

  if (v23)
  {
    v23 = CFRetain(v24);
    v22 = 0;
    if (!a2)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v22 = createMobileStorageError("MobileStorageCopyCryptexNonceWithError", 642, -2, 0, @"Failed to retrieve cryptex nonce: %@", v25, v26, v27, v21);
    if (!a2)
    {
      goto LABEL_18;
    }
  }

LABEL_16:
  if (!v23)
  {
    *a2 = v22;
  }

LABEL_18:
  if (v17)
  {
    CFRelease(v17);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;

  return v23;
}

void *MobileStorageCopyPersonalizationManifestWithError(const void *a1, const void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  if (!a1 || !a2)
  {
    v30 = createMobileStorageError("MobileStorageCopyPersonalizationManifestWithError", 673, -2, 0, @"Invalid input(s).", a6, a7, a8, v37);
    v16 = 0;
LABEL_11:
    v25 = 0;
LABEL_12:
    v31 = 0;
    goto LABEL_13;
  }

  dict = create_dict();
  v16 = dict;
  if (!dict)
  {
    v30 = createMobileStorageError("MobileStorageCopyPersonalizationManifestWithError", 679, -2, 0, @"Failed to create dictionary.", v13, v14, v15, v37);
    goto LABEL_11;
  }

  CFDictionarySetValue(dict, @"RequestType", @"CopyPersonalizationManifest");
  CFDictionarySetValue(v16, @"PersonalizedImageType", a1);
  CFDictionarySetValue(v16, @"ImageSignature", a2);
  v21 = call_and_response("com.apple.mobile.storage_mounter.xpc", v16, a3, &cf, v17, v18, v19, v20);
  v25 = v21;
  if (!v21)
  {
    v30 = createMobileStorageError("MobileStorageCopyPersonalizationManifestWithError", 689, -2, cf, @"Failed to receive response message from server.", v22, v23, v24, v37);
    goto LABEL_12;
  }

  Value = CFDictionaryGetValue(v21, @"DetailedError");
  if (Value)
  {
    v27 = Value;
    v28 = CFGetTypeID(Value);
    if (v28 == CFStringGetTypeID())
    {
      v29 = v27;
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  v33 = CFDictionaryGetValue(v25, @"ImageSignature");
  v31 = isNSData(v33);

  if (v31)
  {
    v31 = CFRetain(v33);
    v30 = 0;
  }

  else
  {
    v30 = createMobileStorageError("MobileStorageCopyPersonalizationManifestWithError", 701, -2, 0, @"Failed to retrieve personalization manifest: %@", v34, v35, v36, v29);
  }

LABEL_13:
  if (a4 && !v31)
  {
    *a4 = v30;
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;

  return v31;
}

uint64_t MobileStorageCopyDeveloperModeStatusWithError(uint64_t a1, void *a2)
{
  cf = 0;
  dict = create_dict();
  v8 = dict;
  if (!dict)
  {
    v22 = createMobileStorageError("MobileStorageCopyDeveloperModeStatusWithError", 733, -2, 0, @"Failed to create dictionary.", v5, v6, v7, v29);
    v17 = 0;
    goto LABEL_9;
  }

  CFDictionarySetValue(dict, @"RequestType", @"CopyDeveloperModeStatus");
  v13 = call_and_response("com.apple.mobile.storage_mounter.xpc", v8, a1, &cf, v9, v10, v11, v12);
  v17 = v13;
  if (!v13)
  {
    v22 = createMobileStorageError("MobileStorageCopyDeveloperModeStatusWithError", 741, -2, cf, @"Failed to receive response message from server.", v14, v15, v16, v29);
LABEL_9:
    v23 = 0;
    if (!a2)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(v13, @"DetailedError");
  if (Value)
  {
    v19 = Value;
    v20 = CFGetTypeID(Value);
    if (v20 == CFStringGetTypeID())
    {
      v21 = v19;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  v24 = CFDictionaryGetValue(v17, @"DeveloperModeStatus");
  v23 = isNSNumber(v24);

  if (v23)
  {
    v23 = [v24 BOOLValue];
    v22 = 0;
    if (!a2)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v22 = createMobileStorageError("MobileStorageCopyDeveloperModeStatusWithError", 753, -2, 0, @"Failed to retrieve developer mode status: %@", v25, v26, v27, v21);
    if (!a2)
    {
      goto LABEL_18;
    }
  }

LABEL_16:
  if ((v23 & 1) == 0)
  {
    *a2 = v22;
  }

LABEL_18:
  if (v17)
  {
    CFRelease(v17);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;

  return v23;
}

id MobileStorageCopyAndFixPlist(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[PlistProcessor sharedPlistProcessor];
  v6 = [v5 copyAndFixPlist:v4 forMountPoint:v3 withError:0];

  return v6;
}

CFTypeRef MobileStorageRemoteCopyDevicesWithError(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  dict = create_dict();
  v9 = dict;
  if (!dict)
  {
    v16 = createMobileStorageError("MobileStorageRemoteCopyDevicesWithError", 292, -2, 0, @"Failed to create dictionary.", v6, v7, v8, v28);
    v14 = 0;
    if (!a3)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  CFDictionarySetValue(dict, @"Command", @"CopyDevices");
  v10 = call_and_response_remote();
  v14 = v10;
  if (!v10)
  {
    v17 = @"Failed to receive response message from server.";
    v18 = 300;
    goto LABEL_15;
  }

  Value = CFDictionaryGetValue(v10, @"DetailedError");
  if (Value)
  {
    CFGetTypeID(Value);
    CFStringGetTypeID();
  }

  v19 = CFDictionaryGetValue(v14, @"Status");
  v20 = isNSString(v19);

  if (!v20)
  {
    v17 = @"Invalid value for %@: %@";
    v28 = @"Status";
    v18 = 311;
    goto LABEL_15;
  }

  if (([v19 isEqualToString:@"Complete"] & 1) == 0)
  {
    v17 = @"Status is not complete.";
    v18 = 316;
    goto LABEL_15;
  }

  v21 = CFDictionaryGetValue(v14, @"EntryList");
  if (!v21)
  {
    v24 = objc_alloc_init(MEMORY[0x277CBEA60]);
    goto LABEL_24;
  }

  v22 = v21;
  v23 = isNSArray(v21);

  if (!v23)
  {
    v17 = @"Invalid value for %@: %@";
    v28 = @"EntryList";
    v18 = 322;
LABEL_15:
    v16 = createMobileStorageError("MobileStorageRemoteCopyDevicesWithError", v18, -2, 0, v17, v11, v12, v13, v28);
    if (!a3)
    {
      goto LABEL_18;
    }

LABEL_16:
    if (v16)
    {
      *a3 = v16;
    }

LABEL_18:
    v25 = 0;
    v26 = 0;
    if (!v14)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v24 = CFRetain(v22);
LABEL_24:
  v25 = v24;
  v16 = 0;
LABEL_19:
  CFRelease(v14);
  v26 = v25;
LABEL_20:
  if (v9)
  {
    CFRelease(v9);
  }

  return v26;
}

CFTypeRef MobileStorageRemoteCopyMountedImageSignaturesWithError(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  dict = create_dict();
  v9 = dict;
  if (!dict)
  {
    v16 = createMobileStorageError("MobileStorageRemoteCopyMountedImageSignaturesWithError", 358, -2, 0, @"Failed to create dictionary.", v6, v7, v8, v26);
    v14 = 0;
    if (!a3)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  CFDictionarySetValue(dict, @"Command", @"LookupImage");
  CFDictionarySetValue(v9, @"ImageType", @"Personalized");
  v10 = call_and_response_remote();
  v14 = v10;
  if (!v10)
  {
    v17 = @"Failed to receive response message from server.";
    v18 = 367;
    goto LABEL_15;
  }

  Value = CFDictionaryGetValue(v10, @"DetailedError");
  if (Value)
  {
    CFGetTypeID(Value);
    CFStringGetTypeID();
  }

  v19 = CFDictionaryGetValue(v14, @"Status");
  v20 = isNSString(v19);

  if (!v20)
  {
    v17 = @"Invalid value for %@: %@";
    v26 = @"Status";
    v18 = 378;
    goto LABEL_15;
  }

  if (([v19 isEqualToString:@"Complete"] & 1) == 0)
  {
    v17 = @"Status is not complete.";
    v18 = 383;
    goto LABEL_15;
  }

  v21 = CFDictionaryGetValue(v14, @"ImageSignature");
  v16 = v21;
  if (!v21)
  {
    v23 = objc_alloc_init(MEMORY[0x277CBEA60]);
    goto LABEL_19;
  }

  v22 = isNSArray(v21);

  if (!v22)
  {
    v17 = @"Invalid value for %@: %@";
    v26 = @"EntryList";
    v18 = 389;
LABEL_15:
    v16 = createMobileStorageError("MobileStorageRemoteCopyMountedImageSignaturesWithError", v18, -2, 0, v17, v11, v12, v13, v26);
    if (!a3)
    {
      goto LABEL_18;
    }

LABEL_16:
    if (v16)
    {
      *a3 = v16;
    }

LABEL_18:
    v23 = 0;
    v24 = 0;
    if (!v14)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v23 = CFRetain(v16);
  v16 = 0;
LABEL_19:
  CFRelease(v14);
  v24 = v23;
LABEL_20:
  if (v9)
  {
    CFRelease(v9);
  }

  return v24;
}

uint64_t MobileStorageRemoteMountWithError(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v13 = v9;
  if (!v7 || !v8 || !v9)
  {
    v33 = createMobileStorageError("mountRemoteImage", 239, -3, 0, @"Invalid input(s).", v10, v11, v12, v136);
    v14 = 0;
LABEL_10:
    v19 = 0;
LABEL_11:
    v34 = v33;
    v35 = 0;
    v36 = v33;
    goto LABEL_12;
  }

  v14 = [v9 objectForKeyedSubscript:@"DiskImageType"];
  v15 = isNSString(v14);

  if (!v15)
  {
    v33 = createMobileStorageError("mountRemoteImage", 245, -3, 0, @"Missing required option: %@", v16, v17, v18, @"DiskImageType");
    goto LABEL_10;
  }

  v19 = [v13 objectForKeyedSubscript:@"ImageSignature"];
  v20 = isNSData(v19);

  if (!v20)
  {
    v33 = createMobileStorageError("mountRemoteImage", 251, -3, 0, @"Missing required option: %@", v21, v22, v23, @"ImageSignature");
    goto LABEL_11;
  }

  v141 = v14;
  v145 = a4;
  v148 = v7;
  v140 = v8;
  v24 = v8;
  v25 = v13;
  v155 = 0;
  v26 = [MEMORY[0x277CCAA00] defaultManager];
  v154 = 0;
  v150 = v24;
  v27 = [v26 attributesOfItemAtPath:v24 error:&v154];
  v28 = v154;

  v152 = v27;
  if (v27)
  {
    v32 = v28;
  }

  else
  {
    v44 = createMobileStorageError("stream_image", 156, -2, 0, @"Failed to retrieve image attributes.", v29, v30, v31, v136);

    v32 = v44;
  }

  v45 = [v152 objectForKey:*MEMORY[0x277CCA1C0]];
  v46 = isNSNumber(v45);

  v142 = v25;
  v144 = v19;
  if (!v46)
  {
    v72 = createMobileStorageError("stream_image", 161, -2, 0, @"Failed to retrieve image size.", v47, v48, v49, v136);
    v138 = 0;
    v71 = 0;
    v73 = 0;
    v146 = 0;
LABEL_30:
    v53 = 0;
LABEL_36:

    v74 = v72;
    v75 = 0;
    v32 = v72;
    goto LABEL_37;
  }

  v146 = [v25 objectForKeyedSubscript:@"DiskImageType"];
  v46 = isNSString(v146);

  if (!v46)
  {
    v72 = createMobileStorageError("stream_image", 167, -3, 0, @"Missing required options: %@", v50, v51, v52, @"DiskImageType");
    v138 = 0;
    v71 = 0;
    v73 = 0;
    goto LABEL_30;
  }

  v53 = [v25 objectForKeyedSubscript:@"ImageSignature"];
  v46 = isNSData(v53);

  if (!v46)
  {
    v72 = createMobileStorageError("stream_image", 173, -3, 0, @"Missing required options: %@", v54, v55, v56, @"ImageSignature");
    v138 = 0;
    v71 = 0;
    goto LABEL_32;
  }

  v57 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!v57)
  {
    v72 = createMobileStorageError("stream_image", 179, -2, 0, @"Failed to create dictionary.", v58, v59, v60, v136);
    v138 = 0;
LABEL_35:
    v71 = 0;
    v73 = 0;
    v46 = 0;
    goto LABEL_36;
  }

  v61 = v57;
  [v57 setObject:@"ReceiveBytes" forKeyedSubscript:@"Command"];
  [v61 setObject:v53 forKeyedSubscript:@"ImageSignature"];
  [v61 setObject:v146 forKeyedSubscript:@"ImageType"];
  [v61 setObject:v45 forKeyedSubscript:@"ImageSize"];
  [v150 UTF8String];
  v138 = v61;
  v62 = call_and_response_remote();
  if (!v62)
  {
    v72 = createMobileStorageError("stream_image", 192, -2, v155, @"Failed to send/receive XPC message.", v63, v64, v65, v136);
    goto LABEL_35;
  }

  v66 = v62;
  v46 = [v62 objectForKeyedSubscript:@"DetailedError"];
  v67 = isNSString(v46);

  if (v67)
  {
    v71 = v66;
    v72 = createMobileStorageError("stream_image", 198, -2, 0, @"An error occured while sending message: %@", v68, v69, v70, v46);
LABEL_32:
    v73 = 0;
    goto LABEL_36;
  }

  v71 = v66;
  v73 = [v66 objectForKeyedSubscript:@"Status"];
  v119 = isNSString(v73);

  if (!v119)
  {
    v128 = @"Invalid response message.";
    v129 = 205;
LABEL_75:
    v72 = createMobileStorageError("stream_image", v129, -2, 0, v128, v120, v121, v122, v136);
    goto LABEL_36;
  }

  if (([v73 isEqualToString:@"Complete"] & 1) == 0)
  {
    v128 = @"Status is not complete.";
    v129 = 210;
    goto LABEL_75;
  }

  v72 = 0;
  v75 = 1;
LABEL_37:
  if (v155)
  {
    CFRelease(v155);
  }

  v79 = v72;
  if ((v75 & 1) == 0)
  {
    v33 = createMobileStorageError("mountRemoteImage", 257, -2, v79, @"Failed to stream image.", v76, v77, v78, v136);

    v19 = v144;
    a4 = v145;
    v14 = v141;
LABEL_85:
    v8 = v140;
    goto LABEL_11;
  }

  v80 = v148;
  v151 = v150;
  v81 = v142;
  v155 = 0;
  v149 = [v81 objectForKeyedSubscript:@"ImageSignature"];
  v82 = isNSData(v149);

  v139 = v79;
  v137 = v80;
  v147 = v81;
  if (!v82)
  {
    v104 = createMobileStorageError("mount_image", 45, -3, 0, @"Missing required options: %@", v83, v84, v85, @"ImageSignature");
    v105 = 0;
    v91 = 0;
    v106 = 0;
    v153 = 0;
    v143 = 0;
    v99 = 0;
    v14 = v141;
    goto LABEL_79;
  }

  v153 = [v81 objectForKeyedSubscript:@"DiskImageType"];
  v82 = isNSString(v153);

  v14 = v141;
  if (!v82)
  {
    v104 = createMobileStorageError("mount_image", 51, -3, 0, @"Missing required options: %@", v86, v87, v88, @"DiskImageType");
    v105 = 0;
    v91 = 0;
    v106 = 0;
    v143 = 0;
LABEL_68:
    v99 = 0;
    goto LABEL_79;
  }

  v89 = [v81 objectForKeyedSubscript:@"ImageTrustCache"];
  v90 = v89;
  v143 = v89;
  if (v89)
  {
    v91 = isNSData(v89);

    if (!v91)
    {
      createMobileStorageError("mount_image", 57, -3, 0, @"Invalid value for option %@: %@", v92, v93, v94, @"ImageTrustCache");
      v104 = LABEL_67:;
      v105 = 0;
      v106 = 0;
      v82 = 0;
      goto LABEL_68;
    }
  }

  if (![v153 isEqualToString:@"Cryptex"])
  {
    v99 = 0;
    goto LABEL_53;
  }

  v91 = isNSData(v90);

  if (!v91)
  {
    createMobileStorageError("mount_image", 63, -3, 0, @"Invalid value for required option %@: %@", v95, v96, v97, @"ImageTrustCache");
    goto LABEL_67;
  }

  v98 = [v147 objectForKeyedSubscript:@"ImageInfoPlist"];
  v99 = v98;
  if (v98)
  {
    v100 = isNSData(v98);

    if (!v100)
    {
      v104 = createMobileStorageError("mount_image", 69, -3, 0, @"Invalid value for option %@: %@", v101, v102, v103, @"ImageInfoPlist");
      v105 = 0;
      goto LABEL_77;
    }

    v90 = v143;
  }

LABEL_53:
  v107 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v105 = v107;
  if (!v107)
  {
    v104 = createMobileStorageError("mount_image", 76, -2, 0, @"Failed to create dictionary.", v108, v109, v110, v136);
LABEL_77:
    v91 = 0;
    goto LABEL_78;
  }

  [v107 setObject:@"MountImage" forKeyedSubscript:@"Command"];
  [v105 setObject:v149 forKeyedSubscript:@"ImageSignature"];
  [v105 setObject:v153 forKeyedSubscript:@"ImageType"];
  if (v90)
  {
    [v105 setObject:v90 forKeyedSubscript:@"ImageTrustCache"];
  }

  if (v99)
  {
    [v105 setObject:v99 forKeyedSubscript:@"ImageInfoPlist"];
  }

  [v151 UTF8String];
  v111 = call_and_response_remote();
  v91 = v111;
  if (!v111)
  {
    v104 = createMobileStorageError("mount_image", 96, -2, v155, @"Failed to send/receive XPC message.", v112, v113, v114, v136);
LABEL_78:
    v106 = 0;
    v82 = 0;
    goto LABEL_79;
  }

  v82 = [v111 objectForKeyedSubscript:@"DetailedError"];
  v115 = isNSString(v82);

  if (v115)
  {
    v104 = createMobileStorageError("mount_image", 102, -2, 0, @"An error occured while sending message: %@", v116, v117, v118, v82);
    v106 = 0;
  }

  else
  {
    v106 = [v91 objectForKeyedSubscript:@"Status"];
    v123 = isNSString(v106);

    if (v123)
    {
      if ([v106 isEqualToString:@"Complete"])
      {
        v127 = 1;
        v104 = v139;
        goto LABEL_80;
      }

      v134 = @"Status is not complete.";
      v135 = 114;
    }

    else
    {
      v134 = @"Invalid response message.";
      v135 = 109;
    }

    v104 = createMobileStorageError("mount_image", v135, -2, 0, v134, v124, v125, v126, v136);
  }

LABEL_79:
  v130 = v104;

  v127 = 0;
LABEL_80:
  if (v155)
  {
    CFRelease(v155);
  }

  v36 = v104;
  if ((v127 & 1) == 0)
  {
    v33 = createMobileStorageError("mountRemoteImage", 263, -2, v36, @"Failed mount image.", v131, v132, v133, v136);

    v19 = v144;
    a4 = v145;
    goto LABEL_85;
  }

  v33 = 0;
  v35 = 1;
  v19 = v144;
  a4 = v145;
  v8 = v140;
LABEL_12:

  v40 = v33;
  if (v35)
  {
    v41 = 0;
  }

  else
  {
    v42 = createMobileStorageError("MobileStorageRemoteMountWithError", 422, -2, v40, @"Failed to mount %@ on device: %@", v37, v38, v39, v8);

    v41 = 0xFFFFFFFFLL;
    if (a4 && v42)
    {
      v40 = v42;
      *a4 = v40;
    }

    else
    {
      v40 = v42;
    }
  }

  return v41;
}

uint64_t MobileStorageRemoteUnmountWithError(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a1;
  if (!v9 || !a2)
  {
    v25 = createMobileStorageError("MobileStorageRemoteUnmountWithError", 453, -3, 0, @"Invalid input(s)", v6, v7, v8, v35);
    v14 = 0;
LABEL_9:
    v19 = 0;
LABEL_10:
    v26 = 0;
    v20 = 0;
    goto LABEL_11;
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14 = v10;
  if (!v10)
  {
    v25 = createMobileStorageError("MobileStorageRemoteUnmountWithError", 459, -2, 0, @"Failed to create dictionary.", v11, v12, v13, v35);
    goto LABEL_9;
  }

  [v10 setObject:@"UnmountImage" forKeyedSubscript:@"Command"];
  [v14 setObject:a2 forKeyedSubscript:@"MountPath"];
  v15 = call_and_response_remote();
  v19 = v15;
  if (!v15)
  {
    v25 = createMobileStorageError("MobileStorageRemoteUnmountWithError", 470, -2, 0, @"Failed to send/receive XPC message.", v16, v17, v18, v35);
    goto LABEL_10;
  }

  v20 = [v15 objectForKeyedSubscript:@"DetailedError"];
  v21 = isNSString(v20);

  if (v21)
  {
    v25 = createMobileStorageError("MobileStorageRemoteUnmountWithError", 476, -2, 0, @"An error occured while sending message: %@", v22, v23, v24, v20);
    v26 = 0;
  }

  else
  {
    v26 = [v19 objectForKeyedSubscript:@"Status"];
    v29 = isNSString(v26);

    if (v29)
    {
      if ([v26 isEqualToString:@"Complete"])
      {
        v25 = 0;
        v27 = 0;
        goto LABEL_14;
      }

      v33 = @"Status is not complete.";
      v34 = 487;
    }

    else
    {
      v33 = @"Invalid response message.";
      v34 = 482;
    }

    v25 = createMobileStorageError("MobileStorageRemoteUnmountWithError", v34, -2, 0, v33, v30, v31, v32, v35);
  }

LABEL_11:
  v27 = 0xFFFFFFFFLL;
  if (a4 && v25)
  {
    v25 = v25;
    *a4 = v25;
  }

LABEL_14:

  return v27;
}

uint64_t MobileStorageRemoteRollPersonalizationNonceWithError(void *a1, const __CFDictionary *a2, void *a3)
{
  v8 = a1;
  if (!v8)
  {
    v27 = createMobileStorageError("MobileStorageRemoteRollPersonalizationNonceWithError", 516, -3, 0, @"Invalid input(s)", v5, v6, v7, v37);
    v12 = 0;
    goto LABEL_12;
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!v12)
  {
    v27 = createMobileStorageError("MobileStorageRemoteRollPersonalizationNonceWithError", 522, -2, 0, @"Failed to create dictionary.", v9, v10, v11, v37);
LABEL_12:
    v22 = 0;
    v14 = 0;
    v28 = 0;
    a2 = 0;
    if (a3)
    {
LABEL_20:
      v27 = v27;
      v33 = 0;
      *a3 = v27;
      goto LABEL_25;
    }

LABEL_24:
    v33 = 0;
    goto LABEL_25;
  }

  if (a2)
  {
    v13 = CFDictionaryGetValue(a2, @"PersonalizedImageType");
    a2 = v13;
    if (v13)
    {
      v14 = isNSString(v13);

      if (!v14)
      {
        v27 = createMobileStorageError("MobileStorageRemoteRollPersonalizationNonceWithError", 530, -3, 0, @"Invalid value for options key: %@", v15, v16, v17, @"PersonalizedImageType");
        v22 = 0;
LABEL_19:
        v28 = 0;
        if (a3)
        {
          goto LABEL_20;
        }

        goto LABEL_24;
      }

      [v12 setObject:a2 forKeyedSubscript:@"PersonalizedImageType"];
    }
  }

  [v12 setObject:@"RollPersonalizationNonce" forKeyedSubscript:@"Command"];
  v18 = call_and_response_remote();
  v22 = v18;
  if (!v18)
  {
    v27 = createMobileStorageError("MobileStorageRemoteRollPersonalizationNonceWithError", 544, -2, 0, @"Failed to send/receive XPC message.", v19, v20, v21, v37);
    v14 = 0;
    goto LABEL_19;
  }

  v14 = [v18 objectForKeyedSubscript:@"DetailedError"];
  v23 = isNSString(v14);

  if (v23)
  {
    v27 = createMobileStorageError("MobileStorageRemoteRollPersonalizationNonceWithError", 550, -2, 0, @"An error occured while sending message: %@", v24, v25, v26, v14);
    goto LABEL_19;
  }

  v28 = [v22 objectForKeyedSubscript:@"Status"];
  v29 = isNSString(v28);

  if (!v29)
  {
    v34 = @"Invalid response message.";
    v35 = 557;
    goto LABEL_23;
  }

  if (([v28 isEqualToString:@"Complete"] & 1) == 0)
  {
    v34 = @"Status is not complete.";
    v35 = 562;
LABEL_23:
    v27 = createMobileStorageError("MobileStorageRemoteRollPersonalizationNonceWithError", v35, -2, 0, v34, v30, v31, v32, v37);
    if (a3)
    {
      goto LABEL_20;
    }

    goto LABEL_24;
  }

  v27 = 0;
  v33 = 1;
LABEL_25:

  return v33;
}

uint64_t MobileStorageRemoteRollCryptexNonceWithError(void *a1, uint64_t a2, void *a3)
{
  v7 = a1;
  if (!v7)
  {
    v23 = createMobileStorageError("MobileStorageRemoteRollCryptexNonceWithError", 591, -3, 0, @"Invalid input(s)", v4, v5, v6, v33);
    v12 = 0;
LABEL_8:
    v17 = 0;
LABEL_9:
    v18 = 0;
LABEL_10:
    v24 = 0;
    if (a3)
    {
      goto LABEL_11;
    }

LABEL_19:
    v25 = 0;
    goto LABEL_20;
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = v8;
  if (!v8)
  {
    v23 = createMobileStorageError("MobileStorageRemoteRollCryptexNonceWithError", 597, -2, 0, @"Failed to create dictionary.", v9, v10, v11, v33);
    goto LABEL_8;
  }

  [v8 setObject:@"RollCryptexNonce" forKeyedSubscript:@"Command"];
  v13 = call_and_response_remote();
  v17 = v13;
  if (!v13)
  {
    v23 = createMobileStorageError("MobileStorageRemoteRollCryptexNonceWithError", 607, -2, 0, @"Failed to send/receive XPC message.", v14, v15, v16, v33);
    goto LABEL_9;
  }

  v18 = [v13 objectForKeyedSubscript:@"DetailedError"];
  v19 = isNSString(v18);

  if (v19)
  {
    v23 = createMobileStorageError("MobileStorageRemoteRollCryptexNonceWithError", 613, -2, 0, @"An error occured while sending message: %@", v20, v21, v22, v18);
    goto LABEL_10;
  }

  v24 = [v17 objectForKeyedSubscript:@"Status"];
  v26 = isNSString(v24);

  if (v26)
  {
    if ([v24 isEqualToString:@"Complete"])
    {
      v23 = 0;
      v25 = 1;
      goto LABEL_20;
    }

    v30 = @"Status is not complete.";
    v31 = 625;
  }

  else
  {
    v30 = @"Invalid response message.";
    v31 = 620;
  }

  v23 = createMobileStorageError("MobileStorageRemoteRollCryptexNonceWithError", v31, -2, 0, v30, v27, v28, v29, v33);
  if (!a3)
  {
    goto LABEL_19;
  }

LABEL_11:
  v23 = v23;
  v25 = 0;
  *a3 = v23;
LABEL_20:

  return v25;
}

id MobileStorageRemoteCopyPersonalizationNonceWithError(void *a1, const __CFDictionary *a2, void *a3)
{
  v8 = a1;
  if (!v8)
  {
    v24 = @"Invalid input(s)";
    v25 = 655;
    v26 = -3;
LABEL_13:
    v23 = createMobileStorageError("MobileStorageRemoteCopyPersonalizationNonceWithError", v25, v26, 0, v24, v5, v6, v7, v37);
LABEL_20:
    v35 = 0;
    goto LABEL_21;
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!v9)
  {
    v24 = @"Failed to create dictionary.";
    v25 = 661;
    v26 = -2;
    goto LABEL_13;
  }

  v10 = v9;
  if (a2)
  {
    v11 = CFDictionaryGetValue(a2, @"PersonalizedImageType");
    a2 = v11;
    if (v11)
    {
      v12 = isNSString(v11);

      if (!v12)
      {
        v27 = @"Invalid value for options key: %@";
        v37 = @"PersonalizedImageType";
        v28 = 669;
        v29 = -3;
        goto LABEL_18;
      }

      [v10 setObject:a2 forKeyedSubscript:@"PersonalizedImageType"];
    }
  }

  [v10 setObject:@"QueryNonce" forKeyedSubscript:@"Command"];
  v16 = call_and_response_remote();
  if (!v16)
  {
    v27 = @"Failed to send/receive XPC message.";
    v28 = 683;
    v29 = -2;
LABEL_18:
    v23 = createMobileStorageError("MobileStorageRemoteCopyPersonalizationNonceWithError", v28, v29, 0, v27, v13, v14, v15, v37);

    goto LABEL_19;
  }

  v17 = v16;
  v18 = [v16 objectForKeyedSubscript:@"DetailedError"];
  v19 = isNSString(v18);

  if (v19)
  {
    v23 = createMobileStorageError("MobileStorageRemoteCopyPersonalizationNonceWithError", 689, -2, 0, @"An error occured while sending message: %@", v20, v21, v22, v18);

LABEL_10:
LABEL_19:

    goto LABEL_20;
  }

  v30 = [v17 objectForKeyedSubscript:@"PersonalizationNonce"];
  v31 = isNSData(v30);

  if (!v31)
  {
    v23 = createMobileStorageError("MobileStorageRemoteCopyPersonalizationNonceWithError", 696, -2, 0, @"Invalid response message.", v32, v33, v34, v37);

    goto LABEL_10;
  }

  v35 = v30;

  v23 = 0;
LABEL_21:
  if (a3 && !v35)
  {
    *a3 = v23;
  }

  return v35;
}

id MobileStorageRemoteCopyPersonalizationIdentifiersWithError(void *a1, const __CFDictionary *a2, void *a3)
{
  v8 = a1;
  if (!v8)
  {
    v26 = @"Invalid input(s)";
    v27 = 727;
    v28 = -3;
LABEL_13:
    v25 = createMobileStorageError("MobileStorageRemoteCopyPersonalizationIdentifiersWithError", v27, v28, 0, v26, v5, v6, v7, v44);
    goto LABEL_22;
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!v9)
  {
    v26 = @"Failed to create dictionary.";
    v27 = 733;
    v28 = -2;
    goto LABEL_13;
  }

  v10 = v9;
  if (a2)
  {
    v11 = CFDictionaryGetValue(a2, @"PersonalizedImageType");
    a2 = v11;
    if (v11)
    {
      v12 = isNSString(v11);

      if (!v12)
      {
        v34 = @"Invalid value for options key: %@";
        v44 = @"PersonalizedImageType";
        v35 = 741;
        v36 = -3;
        goto LABEL_20;
      }

      [v10 setObject:a2 forKeyedSubscript:@"PersonalizedImageType"];
    }
  }

  [v10 setObject:@"QueryPersonalizationIdentifiers" forKeyedSubscript:@"Command"];
  v16 = call_and_response_remote();
  if (!v16)
  {
    v34 = @"Failed to send/receive XPC message.";
    v35 = 755;
    v36 = -2;
LABEL_20:
    v25 = createMobileStorageError("MobileStorageRemoteCopyPersonalizationIdentifiersWithError", v35, v36, 0, v34, v13, v14, v15, v44);

    goto LABEL_21;
  }

  v17 = v16;
  v18 = [v16 objectForKeyedSubscript:@"Error"];
  v19 = isNSString(v18);
  if (v19)
  {
    v20 = v19;
    v21 = [v18 isEqualToString:@"UnknownCommand"];

    if (v21)
    {
      v25 = createMobileStorageError("MobileStorageRemoteCopyPersonalizationIdentifiersWithError", 761, -5, 0, @"Unsupported command: %@", v22, v23, v24, @"QueryPersonalizationIdentifiers");

LABEL_17:
LABEL_21:

LABEL_22:
      v37 = 0;
      if (!a3)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }
  }

  v29 = [v17 objectForKeyedSubscript:@"DetailedError"];
  v30 = isNSString(v29);

  if (v30)
  {
    v25 = createMobileStorageError("MobileStorageRemoteCopyPersonalizationIdentifiersWithError", 767, -2, 0, @"An error occured while sending message: %@", v31, v32, v33, v29);

LABEL_16:
    goto LABEL_17;
  }

  v39 = [v17 objectForKeyedSubscript:@"PersonalizationIdentifiers"];
  v40 = isNSDictionary(v39);

  if (!v40)
  {
    v25 = createMobileStorageError("MobileStorageRemoteCopyPersonalizationIdentifiersWithError", 773, -2, 0, @"Invalid response message.", v41, v42, v43, v44);

    goto LABEL_16;
  }

  v37 = v39;

  v25 = 0;
  if (!a3)
  {
    goto LABEL_25;
  }

LABEL_23:
  if (!v37)
  {
    *a3 = v25;
  }

LABEL_25:

  return v37;
}

void *MobileStorageRemoteCopyCryptexNonceWithError(void *a1, uint64_t a2, void *a3)
{
  v7 = a1;
  if (!v7)
  {
    v21 = @"Invalid input(s)";
    v22 = 802;
    v23 = -3;
LABEL_9:
    v20 = createMobileStorageError("MobileStorageRemoteCopyCryptexNonceWithError", v22, v23, 0, v21, v4, v5, v6, v30);
    goto LABEL_12;
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!v8)
  {
    v21 = @"Failed to create dictionary.";
    v22 = 808;
    v23 = -2;
    goto LABEL_9;
  }

  v9 = v8;
  [v8 setObject:@"QueryCryptexNonce" forKeyedSubscript:@"Command"];
  v10 = call_and_response_remote();
  if (!v10)
  {
    v20 = createMobileStorageError("MobileStorageRemoteCopyCryptexNonceWithError", 818, -2, 0, @"Failed to send/receive XPC message.", v11, v12, v13, v30);
    goto LABEL_11;
  }

  v14 = v10;
  v15 = [v10 objectForKeyedSubscript:@"DetailedError"];
  v16 = isNSString(v15);

  if (v16)
  {
    v20 = createMobileStorageError("MobileStorageRemoteCopyCryptexNonceWithError", 824, -2, 0, @"An error occured while sending message: %@", v17, v18, v19, v15);
LABEL_6:

LABEL_11:
LABEL_12:
    v24 = 0;
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v24 = [v14 objectForKeyedSubscript:@"CryptexNonce"];
  v26 = isNSData(v24);

  if (!v26)
  {
    v20 = createMobileStorageError("MobileStorageRemoteCopyCryptexNonceWithError", 831, -2, 0, @"Invalid response message.", v27, v28, v29, v30);

    goto LABEL_6;
  }

  v20 = 0;
  if (!a3)
  {
    goto LABEL_15;
  }

LABEL_13:
  if (!v24)
  {
    *a3 = v20;
  }

LABEL_15:

  return v24;
}

void *MobileStorageRemoteCopyPersonalizationManifestWithError(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a1;
  if (!v8 || !a2 || !a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Invalid input(s)", buf, 2u);
    }

    v23 = @"Invalid input(s)";
    v24 = 860;
    v25 = -3;
    goto LABEL_17;
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to create dictionary.", buf, 2u);
    }

    v23 = @"Failed to create dictionary.";
    v24 = 866;
    v25 = -2;
LABEL_17:
    v18 = createMobileStorageError("MobileStorageRemoteCopyPersonalizationManifestWithError", v24, v25, 0, v23, v20, v21, v22, v36);
    v13 = 0;
    v19 = 0;
    v12 = 0;
    v10 = 0;
    goto LABEL_18;
  }

  v10 = v9;
  [v9 setObject:@"QueryPersonalizationManifest" forKeyedSubscript:@"Command"];
  [v10 setObject:a2 forKeyedSubscript:@"PersonalizedImageType"];
  [v10 setObject:a3 forKeyedSubscript:@"ImageSignature"];
  v11 = call_and_response_remote();
  if (v11)
  {
    v12 = v11;
    v13 = [v11 objectForKeyedSubscript:@"DetailedError"];
    v14 = isNSString(v13);

    if (v14)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = v13;
        _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "An error occured while sending message: %@", buf, 0xCu);
      }

      v18 = createMobileStorageError("MobileStorageRemoteCopyPersonalizationManifestWithError", 884, -2, 0, @"An error occured while sending message: %@", v15, v16, v17, v13);
    }

    else
    {
      v19 = [v12 objectForKeyedSubscript:@"ImageSignature"];
      v32 = isNSData(v19);

      if (v32)
      {
        v18 = 0;
        goto LABEL_18;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Invalid response message.", buf, 2u);
      }

      v18 = createMobileStorageError("MobileStorageRemoteCopyPersonalizationManifestWithError", 891, -2, 0, @"Invalid response message.", v33, v34, v35, v36);
    }

    v19 = 0;
  }

  else
  {
    v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to send/receive XPC message."];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v28;
      _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    v18 = createMobileStorageError("MobileStorageRemoteCopyPersonalizationManifestWithError", 878, -2, 0, @"Failed to send/receive XPC message.", v29, v30, v31, v36);

    v13 = 0;
    v19 = 0;
    v12 = 0;
  }

LABEL_18:
  if (a5 && !v19)
  {
    *a5 = v18;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t MobileStorageRemoteCopyDeveloperModeStatusWithError(void *a1, uint64_t a2, void *a3)
{
  v7 = a1;
  if (!v7)
  {
    v21 = @"Invalid input(s)";
    v22 = 920;
    v23 = -3;
LABEL_9:
    v20 = createMobileStorageError("MobileStorageRemoteCopyDeveloperModeStatusWithError", v22, v23, 0, v21, v4, v5, v6, v31);
    goto LABEL_12;
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!v8)
  {
    v21 = @"Failed to create dictionary.";
    v22 = 926;
    v23 = -2;
    goto LABEL_9;
  }

  v9 = v8;
  [v8 setObject:@"QueryDeveloperModeStatus" forKeyedSubscript:@"Command"];
  v10 = call_and_response_remote();
  if (!v10)
  {
    v20 = createMobileStorageError("MobileStorageRemoteCopyDeveloperModeStatusWithError", 936, -2, 0, @"Failed to send/receive XPC message.", v11, v12, v13, v31);
    goto LABEL_11;
  }

  v14 = v10;
  v15 = [v10 objectForKeyedSubscript:@"DetailedError"];
  v16 = isNSString(v15);

  if (v16)
  {
    v20 = createMobileStorageError("MobileStorageRemoteCopyDeveloperModeStatusWithError", 942, -2, 0, @"An error occured while sending message: %@", v17, v18, v19, v15);
LABEL_6:

LABEL_11:
LABEL_12:
    v24 = 0;
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v26 = [v14 objectForKeyedSubscript:@"DeveloperModeStatus"];
  v27 = isNSNumber(v26);

  if (!v27)
  {
    v20 = createMobileStorageError("MobileStorageRemoteCopyDeveloperModeStatusWithError", 949, -2, 0, @"Invalid response message.", v28, v29, v30, v31);

    goto LABEL_6;
  }

  v24 = [v26 BOOLValue];

  v20 = 0;
  if (!a3)
  {
    goto LABEL_15;
  }

LABEL_13:
  if ((v24 & 1) == 0)
  {
    *a3 = v20;
  }

LABEL_15:

  return v24;
}

void lib_auth_install_log_handler(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a2];
  if (!v4)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v5 = [@"libauthinstall: " stringByAppendingString:v4];

  if (!v5)
  {
LABEL_10:
    v4 = 0;
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v5;
    _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 fileExistsAtPath:@"/tmp/libauthinstall_logs.txt"];

  if ((v7 & 1) == 0)
  {
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    v11 = [v5 dataUsingEncoding:4];
    v14 = *MEMORY[0x277CCA180];
    v15 = &unk_286AD85D8;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    [v10 createFileAtPath:@"/tmp/libauthinstall_logs.txt" contents:v11 attributes:v12];

    goto LABEL_10;
  }

  v8 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:@"/tmp/libauthinstall_logs.txt"];
  v4 = v8;
  if (v8)
  {
    [v8 seekToEndOfFile];
    v9 = [v5 dataUsingEncoding:4];
    [v4 writeData:v9];

    [v4 closeFile];
  }

LABEL_11:

  objc_autoreleasePoolPop(v3);
  v13 = *MEMORY[0x277D85DE8];
}

const char *convertLibAuthInstallError(int a1)
{
  if (a1 > 98)
  {
    if (a1 <= 3500)
    {
      if (a1 > 3193)
      {
        if (a1 == 3194)
        {
          return "kAMAuthInstallTATSUDeclinedAuthorization";
        }

        if (a1 == 3500)
        {
          return "kAMAuthInstallErrorHTTPInternalServerError";
        }
      }

      else
      {
        if (a1 == 99)
        {
          return "kAMAuthInstallErrorGeneric";
        }

        if (a1 == 3100)
        {
          return "kAMAuthInstallErrorServer_begin";
        }
      }
    }

    else if (a1 <= 3503)
    {
      if (a1 == 3501)
      {
        return "kAMAuthInstallErrorHTTPUnauthorized";
      }

      if (a1 == 3503)
      {
        return "kAMAuthInstallErrorHTTPForbidden";
      }
    }

    else
    {
      switch(a1)
      {
        case 3504:
          return "kAMAuthInstallErrorHTTPNotFound";
        case 3507:
          return "kAMAuthInstallErrorHTTPProxyAuthNeeded";
        case 3999:
          return "kAMAuthInstallErrorServer_end";
      }
    }

    return 0;
  }

  else
  {
    v1 = a1 - 1;
    result = "kAMAuthInstallErrorBadParameter";
    switch(v1)
    {
      case 0:
        return result;
      case 1:
        result = "kAMAuthInstallErrorAllocation";
        break;
      case 2:
        result = "kAMAuthInstallErrorConversion";
        break;
      case 3:
        result = "kAMAuthInstallErrorFile";
        break;
      case 4:
        result = "kAMAuthInstallErrorHash";
        break;
      case 5:
        result = "kAMAuthInstallErrorCrypto";
        break;
      case 6:
        result = "kAMAuthInstallErrorBadBuildIdentity";
        break;
      case 7:
        result = "kAMAuthInstallErrorEntryNotFound";
        break;
      case 8:
        result = "kAMAuthInstallErrorInvalidImg3Object";
        break;
      case 9:
        result = "kAMAuthInstallErrorInvalidFlsObject";
        break;
      case 10:
        result = "kAMAuthInstallErrorServerNotReachable";
        break;
      case 11:
        result = "kAMAuthInstallErrorServerTimedOut";
        break;
      case 12:
        result = "kAMAuthInstallErrorUnimplemented";
        break;
      case 13:
        result = "kAMAuthInstallErrorInternal";
        break;
      case 14:
        result = "kAMAuthInstallErrorInvalidBbfwFile";
        break;
      case 15:
        result = "kAMAuthInstallErrorNetwork";
        break;
      case 16:
        result = "kAMAuthInstallErrorBadResponse";
        break;
      case 17:
        result = "kAMAuthInstallErrorFusingFailed";
        break;
      case 18:
        result = "kAMAuthInstallErrorBBProvisioningFailed";
        break;
      case 19:
        result = "kAMAuthInstallErrorAppleConnectNotFound";
        break;
      case 20:
        result = "kAMAuthInstallErrorAppleConnectCanceled";
        break;
      case 21:
        result = "kAMAuthInstallErrorAppleConnectAuthFailed";
        break;
      case 22:
        result = "kAMAuthInstallErrorInvalidImg4Object";
        break;
      case 23:
        result = "kAMAuthInstallErrorProvisioningAckFailed";
        break;
      case 24:
        result = "kAMAuthInstallErrorUpdaterOperation";
        break;
      default:
        return 0;
    }
  }

  return result;
}

uint64_t MobileStorageMountPersonalizedBundleWithError(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [[PersonalizedImage alloc] initWithBundleURL:a1 imageVariant:a2 remoteDevice:0 options:a3];
  v9 = v5;
  if (!v5)
  {
    v14 = createMobileStorageError("MobileStorageMountPersonalizedBundleWithError", 1250, -2, 0, @"Failed to allocate bundle object.", v6, v7, v8, v18);
    if (!a4)
    {
LABEL_6:
      v15 = 0xFFFFFFFFLL;
      goto LABEL_7;
    }

LABEL_5:
    v14 = v14;
    *a4 = v14;
    goto LABEL_6;
  }

  v19 = 0;
  v10 = [(PersonalizedImage *)v5 mountImage:&v19];
  v14 = v19;
  if (!v10)
  {
    v17 = createMobileStorageError("MobileStorageMountPersonalizedBundleWithError", 1255, -2, v14, @"Failed to mount image.", v11, v12, v13, v18);

    v14 = v17;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v15 = 0;
LABEL_7:

  return v15;
}

uint64_t MobileStorageRemoteMountPersonalizedBundleWithError(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v12 = a1;
  if (!v12)
  {
    v22 = createMobileStorageError("MobileStorageRemoteMountPersonalizedBundleWithError", 1278, -3, 0, @"Invalid input(s).", v9, v10, v11, v26);
    v17 = 0;
    if (!a5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v13 = [[PersonalizedImage alloc] initWithBundleURL:a2 imageVariant:a3 remoteDevice:v12 options:a4];
  v17 = v13;
  if (!v13)
  {
    v22 = createMobileStorageError("MobileStorageRemoteMountPersonalizedBundleWithError", 1284, -2, 0, @"Failed to allocate bundle object.", v14, v15, v16, v26);
    if (!a5)
    {
LABEL_9:
      v23 = 0xFFFFFFFFLL;
      goto LABEL_10;
    }

LABEL_8:
    v22 = v22;
    *a5 = v22;
    goto LABEL_9;
  }

  v27 = 0;
  v18 = [(PersonalizedImage *)v13 mountImage:&v27];
  v22 = v27;
  if (!v18)
  {
    v25 = createMobileStorageError("MobileStorageRemoteMountPersonalizedBundleWithError", 1289, -2, v22, @"Failed to mount image.", v19, v20, v21, v26);

    v22 = v25;
    if (!a5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v23 = 0;
LABEL_10:

  return v23;
}

id normalizePrivateVar(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:@"/private/var"])
  {
    v2 = [v1 componentsSeparatedByString:@"/"];
    v3 = [v2 mutableCopy];

    v4 = [v3 objectAtIndex:0];
    v5 = [v4 isEqualToString:&stru_286AD7A30];

    if (v5)
    {
      [v3 removeObjectAtIndex:0];
    }

    [v3 removeObjectAtIndex:0];
    v6 = MEMORY[0x277CCACA8];
    v7 = [v3 componentsJoinedByString:@"/"];
    v8 = [v6 stringWithFormat:@"/%@", v7];

    v1 = v8;
  }

  return v1;
}

id copyProgramArgs(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"ProgramArguments"];
  if (!v2)
  {
    v2 = [v1 objectForKeyedSubscript:@"Program"];
  }

  v3 = isNSArray(v2);
  if (v3)
  {
  }

  else
  {
    v4 = isNSString(v2);

    if (!v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v11 = v2;
        _os_log_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unexpected object: %@", buf, 0xCu);
      }

      v7 = 0;
      goto LABEL_11;
    }
  }

  v5 = isNSArray(v2);

  if (v5)
  {
    v6 = [v2 mutableCopy];
  }

  else
  {
    v7 = isNSString(v2);

    if (!v7)
    {
      goto LABEL_11;
    }

    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v2, 0}];
  }

  v7 = v6;
LABEL_11:

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

CFPropertyListRef call_and_response(const char *a1, const void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  error = 0;
  length = 0;
  if (a1 && a2)
  {
    mach_service = xpc_connection_create_mach_service(a1, 0, 2uLL);
    if (mach_service)
    {
      v12 = mach_service;
      xpc_connection_set_event_handler(mach_service, &__block_literal_global_2);
      xpc_connection_resume(v12);
      Data = CFPropertyListCreateData(0, a2, kCFPropertyListBinaryFormat_v1_0, 0, 0);
      if (!Data)
      {
        v26 = createMobileStorageError("call_and_response", 134, -2, 0, @"Failed to create dictionary with data.", v14, v15, v16, v48);
        v30 = 0;
        error = 0;
        goto LABEL_27;
      }

      v17 = Data;
      v18 = xpc_dictionary_create(0, 0, 0);
      BytePtr = CFDataGetBytePtr(v17);
      v20 = CFDataGetLength(v17);
      xpc_dictionary_set_data(v18, "EncodedDictionary", BytePtr, v20);
      v21 = xpc_connection_send_message_with_reply_sync(v12, v18);
      if (MEMORY[0x259CAFF70]() == MEMORY[0x277D86468])
      {
        v31 = xpc_dictionary_get_data(v21, "EncodedDictionary", &length);
        if (v31)
        {
          v35 = *MEMORY[0x277CBECE8];
          v36 = CFDataCreate(*MEMORY[0x277CBECE8], v31, length);
          if (v36)
          {
            v37 = v36;
            v30 = CFPropertyListCreateWithData(v35, v36, 0, 0, &error);
            v26 = 0;
            if (!v30)
            {
              v26 = createMobileStorageError("call_and_response", 171, -2, error, @"Failed to create dictionary with data.", v38, v39, v40, v48);
            }

            CFRelease(v37);
            goto LABEL_24;
          }

          v45 = @"Failed to create data.";
          v46 = 165;
        }

        else
        {
          v45 = @"Response message missing encoded response.";
          v46 = 145;
        }

        createMobileStorageError("call_and_response", v46, -2, 0, v45, v32, v33, v34, v48);
      }

      else
      {
        if (MEMORY[0x259CAFF70](v21) != MEMORY[0x277D86480])
        {
          v22 = MEMORY[0x259CAFF00](v21);
          v26 = createMobileStorageError("call_and_response", 154, -2, 0, @"Unexpected message: %s", v23, v24, v25, v22);
          free(v22);
LABEL_23:
          v30 = 0;
LABEL_24:
          CFRelease(v17);
          if (error)
          {
            CFRelease(error);
          }

          error = 0;

LABEL_27:
          xpc_connection_cancel(v12);

          if (!a4)
          {
            goto LABEL_30;
          }

          goto LABEL_28;
        }

        string = xpc_dictionary_get_string(v21, *MEMORY[0x277D86400]);
        createMobileStorageError("call_and_response", 150, -2, 0, @"Client error: %s", v42, v43, v44, string);
      }
      v26 = ;
      goto LABEL_23;
    }

    v27 = @"Failed to create connection to %s.";
    v48 = a1;
    v28 = 115;
    v29 = -2;
  }

  else
  {
    v27 = @"Invalid input(s).";
    v28 = 109;
    v29 = -3;
  }

  v26 = createMobileStorageError("call_and_response", v28, v29, 0, v27, a6, a7, a8, v48);
  v30 = 0;
  error = 0;
  if (!a4)
  {
    goto LABEL_30;
  }

LABEL_28:
  if (!v30)
  {
    *a4 = v26;
  }

LABEL_30:

  return v30;
}

void __call_and_response_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (MEMORY[0x259CAFF70]() == MEMORY[0x277D86480])
  {
    if (v2 != MEMORY[0x277D863F8])
    {
      v4 = MEMORY[0x259CAFF00](v2);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        __call_and_response_block_invoke_cold_2(v4);
      }

      free(v4);
    }
  }

  else
  {
    string = xpc_dictionary_get_string(v2, *MEMORY[0x277D86400]);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      __call_and_response_block_invoke_cold_1(string);
    }
  }
}

void *call_and_response_remote()
{
  v0 = MEMORY[0x28223BE20]();
  v79 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v82 = *MEMORY[0x277D85DE8];
  v11 = v0;
  if (v3)
  {
    v15 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v3];
    if (v15)
    {
      bzero(buffer, 0x1000uLL);
      memset(v80, 0, sizeof(v80));
      v16 = getpid();
      proc_pidpath(v16, buffer, 0x1000u);
      v17 = strlen(buffer);
      if ((v17 & 0x80000000) == 0)
      {
        do
        {
          if (buffer[v17] == 47)
          {
            break;
          }
        }

        while (v17-- > 0);
      }

      __strlcpy_chk();
      v76 = v80;
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s"];
      if (v19)
      {
        v78 = v19;
        [v15 setObject:? forKeyedSubscript:?];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
        v21 = v11;
        v22 = v20;
        v26 = dispatch_semaphore_create(0);
        v77 = v11;
        if (v26)
        {
          if (remote_device_get_state() == 2)
          {
            [v22 UTF8String];
            v27 = remote_device_copy_service();
            if (v27)
            {
              v28 = dispatch_get_global_queue(25, 0);
              v29 = xpc_remote_connection_create_with_remote_service();

              if (v29)
              {
                xpc_remote_connection_set_event_handler();
                xpc_remote_connection_activate();
                v33 = 0;
                goto LABEL_25;
              }

              createMobileStorageError("copyRemoteServiceConnection", 70, -2, 0, @"Failed to create remote connection.", v30, v31, v32, v80);
            }

            else
            {
              v44 = *__error();
              v45 = __error();
              strerror(*v45);
              createMobileStorageError("copyRemoteServiceConnection", 64, -2, 0, @"Failed to connect to remote service %@: %d (%s)", v46, v47, v48, v22);
            }
            v33 = ;
LABEL_24:
            v49 = v33;

            v29 = 0;
LABEL_25:

            v34 = v33;
            if (v29)
            {
              v40 = _CFXPCCreateXPCObjectFromCFObject();
              if (v40)
              {
                v38 = xpc_dictionary_create(0, 0, 0);
                if (v38)
                {
                  if (v5)
                  {
                    v41 = xpc_file_transfer_create_with_path();
                    if (!v41)
                    {
                      v62 = createMobileStorageError("call_and_response_remote", 253, -2, 0, @"Failed to create xpc file transfer for %s.", v59, v60, v61, v5);

                      v35 = 0;
                      v3 = 0;
                      v39 = 0;
                      goto LABEL_36;
                    }

                    xpc_dictionary_set_value(v38, "XPCRequestRecvTx", v41);
                  }

                  else
                  {
                    v41 = 0;
                  }

                  xpc_dictionary_set_value(v38, "XPCRequestDictionary", v40);
                  v65 = xpc_remote_connection_send_message_with_reply_sync();
                  v39 = v65;
                  if (!v65)
                  {
                    v62 = createMobileStorageError("call_and_response_remote", 264, -2, 0, @"Failed to receive XPC reply.", v66, v67, v68, v76);

                    goto LABEL_49;
                  }

                  if (MEMORY[0x259CAFF70](v65) != MEMORY[0x277D86468])
                  {
                    v69 = MEMORY[0x259CAFF00](v39);
                    v62 = createMobileStorageError("call_and_response_remote", 270, -2, 0, @"Unexpected message: %s", v70, v71, v72, v69);

                    free(v69);
LABEL_49:
                    v35 = 0;
                    v3 = 0;
                    goto LABEL_36;
                  }

                  v35 = _CFXPCCreateCFObjectFromXPCObject();
                  v3 = isNSDictionary(v35);

                  if (v3)
                  {
                    v35 = v35;
                    v3 = v35;
                    goto LABEL_37;
                  }

                  v62 = createMobileStorageError("call_and_response_remote", 277, -2, 0, @"Failed to create dictionary from XPC message.", v73, v74, v75, v76);

LABEL_36:
                  v34 = v62;
LABEL_37:
                  v11 = v77;
                  goto LABEL_38;
                }

                v62 = createMobileStorageError("call_and_response_remote", 243, -2, 0, @"Failed to create xpc dictionary.", v56, v57, v58, v76);

                v35 = 0;
                v3 = 0;
              }

              else
              {
                v62 = createMobileStorageError("call_and_response_remote", 237, -2, v34, @"Failed to create XPC dictionary (%@).", v53, v54, v55, v15);

                v35 = 0;
                v3 = 0;
                v38 = 0;
              }

              v39 = 0;
            }

            else
            {
              v62 = createMobileStorageError("call_and_response_remote", 231, -2, v34, @"Failed to create remote connection to %s.", v50, v51, v52, v7);

              v35 = 0;
              v3 = 0;
              v38 = 0;
              v39 = 0;
              v40 = 0;
            }

            v41 = 0;
            goto LABEL_36;
          }

          v42 = @"Remote device not connected after %u seconds.";
          v76 = 60;
          v43 = 58;
        }

        else
        {
          v42 = @"Failed to create semaphore.";
          v43 = 53;
        }

        v33 = createMobileStorageError("copyRemoteServiceConnection", v43, -2, 0, v42, v23, v24, v25, v76);
        v27 = 0;
        goto LABEL_24;
      }

      v36 = @"Failed to retrieve process name.";
      v37 = 223;
    }

    else
    {
      v36 = @"Failed to create dictionary.";
      v37 = 217;
    }

    v34 = createMobileStorageError("call_and_response_remote", v37, -2, 0, v36, v12, v13, v14, v76);
    v35 = 0;
    v78 = 0;
    v3 = 0;
  }

  else
  {
    v34 = createMobileStorageError("call_and_response_remote", 211, -3, 0, @"Invalid input.", v8, v9, v10, v76);
    v35 = 0;
    v15 = 0;
    v78 = 0;
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  v29 = 0;
  v41 = 0;
LABEL_38:
  if (v79 && !v3)
  {
    *v79 = v34;
  }

  if (v29)
  {
    xpc_remote_connection_cancel();
  }

  v63 = *MEMORY[0x277D85DE8];
  return v3;
}

void __call_and_response_remote_block_invoke(uint64_t a1, int a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    __call_and_response_remote_block_invoke_cold_1(a2);
  }
}

uint64_t copy_remote_device_property()
{
  v0 = remote_device_copy_property();
  v1 = v0;
  if (v0)
  {
    if (MEMORY[0x259CAFF70](v0) == MEMORY[0x277D864C8])
    {
      v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:xpc_uint64_get_value(v1)];
    }

    else
    {
      v2 = _CFXPCCreateCFObjectFromXPCObject();
    }

    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void get_mounted_media_entries_cold_1(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_debug_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Skipping %@, as we didn't mount it.", buf, 0xCu);
}

void create_map_entry_cold_1(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Failed to load version dictionary at %@ (image version: %@).", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void get_attached_media_entries_cold_1(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_debug_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "The attached media %@ is not removable, ignoring.", buf, 0xCu);
}

void get_attached_media_entries_cold_2(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_debug_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "The attached media %@ is not a leaf, ignoring.", buf, 0xCu);
}

void get_attached_media_entries_cold_3(uint8_t *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_0(&dword_259B65000, MEMORY[0x277D86220], a3, "Ignoring Apple_partition_map partition.", a1);
}

void get_attached_media_entries_cold_4(uint8_t *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_0(&dword_259B65000, MEMORY[0x277D86220], a3, "Ignoring EFI partition.", a1);
}

void __call_and_response_block_invoke_cold_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = a1;
  _os_log_debug_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Client error: %s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __call_and_response_block_invoke_cold_2(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = a1;
  _os_log_debug_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Unexpected message: %s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __call_and_response_remote_block_invoke_cold_1(int a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&dword_259B65000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "xpc_file_transfer_create_with_path completed with error: %d", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}