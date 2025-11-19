uint64_t ramrod_log_msg_to_fd(uint64_t a1, uint64_t a2, int __fd)
{
  result = 0;
  if (a1 && a2)
  {
    v7 = 0;
    while (1)
    {
      v8 = write(__fd, (a1 + v7), a2 - v7);
      if (v8 == -1)
      {
        break;
      }

      v7 += v8;
      if (v7 == a2)
      {
        return 0;
      }
    }

    return *__error();
  }

  return result;
}

uint64_t ramrod_remove_log_fd_no_locking(int a1)
{
  valuePtr = a1;
  memset(&v16, 0, sizeof(v16));
  v1 = fstat(a1, &v16);
  v2 = v16.st_mode <= -1 && v1 == 0;
  v3 = &log_fds;
  if (v2)
  {
    v3 = &log_fds_fileonly;
  }

  v4 = *v3;
  if (!*v3)
  {
    v12 = __stderrp;
    v13 = "can't remove logging fd since none were added";
    v14 = 45;
LABEL_13:
    fwrite(v13, v14, 1uLL, v12);
    return 0xFFFFFFFFLL;
  }

  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (!v5)
  {
    v12 = __stderrp;
    v13 = "failed to convert fd to number";
    v14 = 30;
    goto LABEL_13;
  }

  v6 = v5;
  CFSetRemoveValue(v4, v5);
  if (close(valuePtr))
  {
    v7 = __error();
    v8 = *v7;
    v9 = __stderrp;
    v10 = valuePtr;
    v11 = strerror(*v7);
    fprintf(v9, "failed to close file descriptor '%d', error:%s", v10, v11);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v6);
  return v8;
}

uint64_t ramrod_log_msg_to_all_fds(uint64_t a1, uint64_t a2)
{
  context = 0u;
  *theArray = 0u;
  valuePtr = -1;
  pthread_mutex_lock(&log_fds_mutex);
  if (a1 && __PAIR128__(log_fds, log_fds_fileonly) != 0)
  {
    *&context = a1;
    *(&context + 1) = a2;
    theArray[0] = 0;
    LOBYTE(theArray[1]) = 0;
    if (log_fds)
    {
      CFSetApplyFunction(log_fds, ramrod_log_to_fd_set_applier, &context);
    }

    ramrod_log_msg_to_all_fds_bytes_to_sync += a2;
    if (ramrod_log_msg_to_all_fds_bytes_to_sync)
    {
      LOBYTE(theArray[1]) = 1;
      ramrod_log_msg_to_all_fds_bytes_to_sync = 0;
    }

    if (log_fds_fileonly)
    {
      CFSetApplyFunction(log_fds_fileonly, ramrod_log_to_fd_set_applier, &context);
    }

    if (theArray[0])
    {
      Count = CFArrayGetCount(theArray[0]);
      if (Count >= 1)
      {
        v5 = Count;
        for (i = 0; i != v5; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], i);
          if (CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr))
          {
            ramrod_remove_log_fd_no_locking(valuePtr);
          }

          else
          {
            fwrite("Failed to convert CFNumberRef into int value\n", 0x2DuLL, 1uLL, __stderrp);
          }
        }
      }

      CFRelease(theArray[0]);
    }
  }

  pthread_mutex_unlock(&log_fds_mutex);
  return 0;
}

void ramrod_log_to_fd_set_applier(const void *a1, uint64_t a2)
{
  valuePtr = -1;
  if (a1)
  {
    if (a2)
    {
      if (*a2)
      {
        if (CFNumberGetValue(a1, kCFNumberIntType, &valuePtr))
        {
          if (ramrod_log_msg_to_fd(*a2, *(a2 + 8), valuePtr))
          {
            fprintf(__stderrp, "Removing file descriptor %d since it failed to be written to.\n", valuePtr);
            Mutable = *(a2 + 16);
            if (!Mutable)
            {
              Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 1, &kCFTypeArrayCallBacks);
              *(a2 + 16) = Mutable;
            }

            CFArrayAppendValue(Mutable, a1);
          }

          else if (*(a2 + 24) == 1)
          {
            fsync(valuePtr);
          }
        }

        else
        {
          fwrite("Failed to convert num to int\n", 0x1DuLL, 1uLL, __stderrp);
        }
      }

      return;
    }

    v5 = __stderrp;
    v6 = "Missing logging context.\n";
    v7 = 25;
  }

  else
  {
    v5 = __stderrp;
    v6 = "NULL fd num in fd set, weird.\n";
    v7 = 30;
  }

  fwrite(v6, v7, 1uLL, v5);
}

void ramrod_log_msg_cf(CFStringRef format, ...)
{
  va_start(va, format);
  v1 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, format, va);
  if (!v1)
  {
    ramrod_log_msg("(Failed to format log message)\n", v2, v3, v4, v5, v6, v7, v8, v30);
    return;
  }

  v9 = v1;
  CStringPtr = CFStringGetCStringPtr(v1, 0x8000100u);
  if (CStringPtr)
  {
    v30 = CStringPtr;
    v18 = "%s";
  }

  else
  {
    Length = CFStringGetLength(v9);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v21 = malloc(MaximumSizeForEncoding + 1);
    if (v21)
    {
      v22 = v21;
      if (CFStringGetCString(v9, v21, MaximumSizeForEncoding + 1, 0x8000100u))
      {
        ramrod_log_msg("%s", v23, v24, v25, v26, v27, v28, v29, v22);
      }

      else
      {
        ramrod_log_msg("(Failed to alloc and convert log message)\n", v23, v24, v25, v26, v27, v28, v29, v30);
      }

      free(v22);
      goto LABEL_12;
    }

    v18 = "(Failed to alloc and convert log message)\n";
  }

  ramrod_log_msg(v18, v11, v12, v13, v14, v15, v16, v17, v30);
LABEL_12:
  CFRelease(v9);
}

void do_ramrod_log_msg(int a1, const char *a2, va_list a3)
{
  __s = 0;
  if (vasprintf(&__s, a2, a3) != -1)
  {
    pthread_mutex_lock(&log_mutex);
    if (a1 == 1)
    {
      fputs(__s, __stdoutp);
      if (_log_handler)
      {
        _log_handler(__s);
      }
    }

    v4 = strlen(__s);
    ramrod_log_msg_to_all_fds(__s, v4);
    if ((_log_buffermsgs & 1) == 0)
    {
      goto LABEL_23;
    }

    v5 = log_buffer;
    if (!log_buffer)
    {
      v5 = malloc(0x100000uLL);
      log_buffer = v5;
      if (!v5)
      {
        fprintf(__stderrp, "unable to allocate %lu bytes for log buffer\n", 0x100000);
LABEL_23:
        pthread_mutex_unlock(&log_mutex);
        goto LABEL_24;
      }

      log_buffer_head = v5;
      log_buffer_tail = v5;
    }

    v6 = *__s;
    if (*__s)
    {
      v7 = v5 + 0x100000;
      v8 = log_buffer_tail;
      v9 = log_buffer_head;
      v10 = __s + 1;
      do
      {
        *v8 = v6;
        if (v8 + 1 == v7)
        {
          v8 = v5;
        }

        else
        {
          ++v8;
        }

        log_buffer_tail = v8;
        if (v9 == v8)
        {
          if ((v9 + 1) == v7)
          {
            v9 = v5;
          }

          else
          {
            ++v9;
          }

          log_buffer_head = v9;
        }

        v11 = *v10++;
        v6 = v11;
      }

      while (v11);
    }

    goto LABEL_23;
  }

  fwrite("unable to allocate storage for log message\n", 0x2BuLL, 1uLL, __stderrp);
LABEL_24:
  free(__s);
}

uint64_t wait_for_device(char *a1, char *a2, size_t a3, CFErrorRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("entering %s: '%s'\n", a2, a3, a4, a5, a6, a7, a8, "wait_for_device");
  if (!a1)
  {
    wait_for_device_cold_4(a4, v12, v13, v14, v15, v16, v17, v18);
    return 0;
  }

  if (!a2)
  {
    wait_for_device_cold_3(a4, v12, v13, v14, v15, v16, v17, v18);
    return 0;
  }

  embedded_storage_service_query_dict = create_embedded_storage_service_query_dict(a1);
  if (!embedded_storage_service_query_dict)
  {
    wait_for_device_cold_2(a4, v20, v21, v22, v23, v24, v25, v26);
    return 0;
  }

  v27 = wait_for_io_service_matching_dict(embedded_storage_service_query_dict, 0x1Eu);
  if (!v27)
  {
    wait_for_device_cold_1(a4, a1, v28, v29, v30, v31, v32, v33);
    return 0;
  }

  v34 = v27;
  v99 = a4;
  IOObjectRetain(v27);
  v35 = v34;
  do
  {
    iterator.st_dev = 0;
    if (IORegistryEntryGetChildIterator(v35, "IOService", &iterator))
    {
      v78 = "Could not create child iterator\n";
LABEL_30:
      ramrod_log_msg(v78, v36, v37, v38, v39, v40, v41, v42, v98);
      st_dev = v35;
LABEL_35:
      IOObjectRelease(st_dev);
      ramrod_create_error_cf(v99, @"RamrodErrorDomain", 4, 0, @"%s: failed to lookup whole node for IO service for %s", v80, v81, v82, "wait_for_device");
      v83 = 0;
      goto LABEL_36;
    }

    v43 = IOIteratorNext(iterator.st_dev);
    v44 = 0;
    if (!v43)
    {
      st_dev = iterator.st_dev;
LABEL_29:
      IOObjectRelease(st_dev);
      v98 = v44;
      v78 = "Found %d child nodes (expected 1)\n";
      goto LABEL_30;
    }

    st_dev = 0;
    do
    {
      if (st_dev)
      {
        IOObjectRelease(v43);
      }

      else
      {
        st_dev = v43;
      }

      v43 = IOIteratorNext(iterator.st_dev);
      ++v44;
    }

    while (v43);
    IOObjectRelease(iterator.st_dev);
    if (v44 != 1)
    {
      goto LABEL_29;
    }

    IOObjectRelease(v35);
    v35 = st_dev;
  }

  while (!IOObjectConformsTo(st_dev, "IOMedia"));
  CFProperty = IORegistryEntryCreateCFProperty(st_dev, @"Whole", kCFAllocatorDefault, 0);
  v54 = CFProperty;
  if (!CFProperty)
  {
    v79 = "Did not find Whole property on IOMedia class\n";
LABEL_34:
    ramrod_log_msg(v79, v47, v48, v49, v50, v51, v52, v53, v98);
    CFRelease(v54);
    goto LABEL_35;
  }

  v55 = CFGetTypeID(CFProperty);
  if (v55 != CFBooleanGetTypeID())
  {
    v79 = "Expected Whole to be BOOLean\n";
    goto LABEL_34;
  }

  if (!CFBooleanGetValue(v54))
  {
    v79 = "Expected Whole=true\n";
    goto LABEL_34;
  }

  CFRelease(v54);
  v56 = IORegistryEntryCreateCFProperty(st_dev, @"BSD Name", kCFAllocatorDefault, 0);
  if (v56)
  {
    v60 = v56;
    v61 = CFGetTypeID(v56);
    if (v61 == CFStringGetTypeID())
    {
      strlcpy(a2, "/dev/", a3);
      v65 = strlen(a2);
      if (CFStringGetCString(v60, &a2[v65], a3 - v65, 0x8000100u))
      {
        ramrod_log_msg("Using device path %s for %s\n", v66, v67, v68, v69, v70, v71, v72, a2);
        v73 = -10;
        while (1)
        {
          memset(&iterator, 0, sizeof(iterator));
          if (!stat(a2, &iterator))
          {
            v83 = 1;
            goto LABEL_45;
          }

          if (*__error() != 2)
          {
            break;
          }

          sleep(3u);
          if (__CFADD__(v73++, 1))
          {
            goto LABEL_43;
          }
        }

        v85 = __error();
        strerror(*v85);
        ramrod_log_msg("stat error while waiting for device '%s': %s\n", v86, v87, v88, v89, v90, v91, v92, a2);
        v93 = *__error();
        v94 = __error();
        strerror(*v94);
        ramrod_create_error_cf(v99, kCFErrorDomainPOSIX, v93, 0, @"%s: stat error while waiting for device '%s': %s", v95, v96, v97, "wait_for_device");
LABEL_43:
        ramrod_create_error_cf(v99, @"RamrodErrorDomain", 4, 0, @"%s: timeout waiting for %s", v74, v75, v76, "wait_for_device");
      }

      else
      {
        ramrod_create_error_cf(v99, @"RamrodErrorDomain", 5, 0, @"%s: failed to create C string from BSD name", v70, v71, v72, "wait_for_device");
      }
    }

    else
    {
      ramrod_create_error_cf(v99, @"RamrodErrorDomain", 3, 0, @"%s: returnbed BSD device name for service %s is wrong type", v62, v63, v64, "wait_for_device");
    }

    v83 = 0;
LABEL_45:
    CFRelease(v60);
  }

  else
  {
    ramrod_create_error_cf(v99, @"RamrodErrorDomain", 4, 0, @"%s: no BSD device name for service %s", v57, v58, v59, "wait_for_device");
    v83 = 0;
  }

  IOObjectRelease(st_dev);
LABEL_36:
  IOObjectRelease(v34);
  return v83;
}

uint64_t ramrod_probe_media_internal(uint64_t a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  iterator = 0;
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_probe_media_internal");
  storage_device_node_path = 0;
  apfs_container_device_node_path_0 = 0;
  apfs_recovery_os_container_device_node_path = 0;
  system_device_node_path_0 = 0;
  data_device_node_path_0 = 0;
  user_device_node_path = 0;
  update_device_node_path = 0;
  baseband_data_partition_device_node_path = 0;
  log_partition_device_node_path = 0;
  xart_partition_node_path = 0;
  hardware_partition_node_path = 0;
  scratch_partition_node_path = 0;
  preboot_partition_device_node_path_0 = 0;
  recovery_os_volume_device_node_path = 0;
  iboot_system_container_device_node_path = 0;
  recovery_preboot_partition_device_node_path = 0;
  isc_preboot_partition_device_node_path = 0;
  isc_recovery_os_volume_device_node_path = 0;
  paired_recovery_os_volume_device_node_path = 0;
  if (additional_encrypted_volume_node_paths)
  {
    CFRelease(additional_encrypted_volume_node_paths);
    additional_encrypted_volume_node_paths = 0;
  }

  if (additional_eds_volume_node_paths)
  {
    CFRelease(additional_eds_volume_node_paths);
    additional_eds_volume_node_paths = 0;
  }

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    ramrod_probe_media_internal_cold_2(&cf, v10, v11, v12, v13, v14, v15, v16);
    v25 = 0;
    goto LABEL_12;
  }

  v25 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!v25)
  {
    ramrod_probe_media_internal_cold_1(&cf, v18, v19, v20, v21, v22, v23, v24);
    goto LABEL_12;
  }

  if (!wait_for_device("EmbeddedDeviceTypeRoot", &storage_device_node_path, 0x20uLL, &cf, v21, v22, v23, v24))
  {
    ramrod_log_msg("Unable to find storage device node for service named: %s", v26, v27, v28, v29, v30, v31, v32, "EmbeddedDeviceTypeRoot");
LABEL_12:
    v47 = 0;
    v42 = 0;
    goto LABEL_13;
  }

  v33 = IOBSDNameMatching(kIOMasterPortDefault, 0, byte_100057CED);
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v33);
  v42 = MatchingService;
  if (!MatchingService)
  {
    ramrod_log_msg("unable to find service for %s\n", v35, v36, v37, v38, v39, v40, v41, byte_100057CED);
LABEL_19:
    v47 = 0;
    goto LABEL_20;
  }

  IOServiceWaitQuiet(MatchingService, 0);
  v43 = IORegistryEntryCreateIterator(v42, "IOService", 1u, &iterator);
  if (v43)
  {
    ramrod_create_error_cf(&cf, kCFErrorDomainMach, v43, 0, @"%s: unable to create child iterator", v44, v45, v46, "ramrod_probe_media_internal");
    v47 = 0;
LABEL_13:
    v48 = 0;
    goto LABEL_14;
  }

  v160 = a1;
  v51 = IOIteratorNext(iterator);
  if (v51)
  {
    v47 = v51;
    LOBYTE(v52) = 0;
    v161 = 0;
    v53 = 0;
    v148 = 0;
    v149 = 0;
    v150 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v155 = 0;
    v156 = 0;
    v157 = 0;
    v158 = 0;
    __s2 = 0;
    do
    {
      if (!IOObjectConformsTo(v47, "IOMedia"))
      {
        if (IOObjectConformsTo(v47, "IOPartitionScheme"))
        {
          if (IOObjectConformsTo(v47, "IOGUIDPartitionScheme"))
          {
            ramrod_log_msg("device partitioning scheme is GPT\n", v102, v103, v104, v105, v106, v107, v108, v144);
            v158 = "Data";
            __s2 = "System";
            v156 = "Update";
            v157 = "User";
            v154 = "Logs";
            v155 = "Baseband Data";
            v152 = "Hardware";
            v153 = "xART";
            v151 = "Scratch";
          }

          else
          {
            if (!IOObjectConformsTo(v47, "AppleAPFSContainer"))
            {
              ramrod_create_error_cf(&cf, kCFErrorDomainMach, -536870201, 0, @"%s: unrecognized partitioning scheme", v124, v125, v126, "ramrod_probe_media_internal");
              goto LABEL_13;
            }

            ramrod_log_msg("device is APFS formatted\n", v120, v121, v122, v123, v124, v125, v126, v144);
            v158 = "Data";
            __s2 = "System";
            v156 = "Update";
            v157 = "User";
            v154 = "Logs";
            v155 = "Baseband Data";
            v152 = "Hardware";
            v153 = "xART";
            v150 = "Preboot";
            v151 = "Scratch";
            v148 = "Recovery";
            v149 = "iSCPreboot";
          }
        }

        goto LABEL_124;
      }

      properties = 0;
      memset(name, 0, sizeof(name));
      v54 = IORegistryEntryGetName(v47, name);
      if (v54)
      {
        v138 = kCFErrorDomainMach;
        v139 = v54;
        v140 = @"%s: unable to get name for media registry entry";
LABEL_169:
        ramrod_create_error_cf(&cf, v138, v139, 0, v140, v55, v56, v57, "ramrod_probe_media_internal");
        goto LABEL_170;
      }

      v58 = IORegistryEntryCreateCFProperties(v47, &properties, kCFAllocatorDefault, 0);
      if (v58)
      {
        v138 = kCFErrorDomainMach;
        v139 = v58;
        v140 = @"%s: unable to get properties for media registry entry";
        goto LABEL_169;
      }

      if (v52)
      {
        v52 = 1;
      }

      else
      {
        *buffer = 0u;
        v166 = 0u;
        Value = CFDictionaryGetValue(properties, @"BSD Name");
        v52 = Value && (v60 = Value, v61 = CFGetTypeID(Value), v61 == CFStringGetTypeID()) && CFStringGetCString(v60, buffer, 32, 0x600u) && (v62 = strlen(byte_100057CED), !strncmp(buffer, byte_100057CED, v62)) && strcmp("s1s1", &buffer[v62]) == 0;
      }

      v63 = CFDictionaryGetValue(properties, @"Content Hint");
      if (!v63 || (v71 = v63, !CFEqual(v63, @"7C3457EF-0000-11AA-AA11-00306543ECAC")) && !CFEqual(v71, @"52637672-7900-11AA-AA11-00306543ECAC") && !CFEqual(v71, @"69646961-6700-11AA-AA11-00306543ECAC") && !CFEqual(v71, @"EF57347C-0000-11AA-AA11-00306543ECAC"))
      {
        if (__s2 && (!strcmp(name, __s2) || strstr(name, "OS") || strstr(name, "System")))
        {
          if (!v52)
          {
            v145 = name;
            ramrod_log_msg("found system volume not at %ss1s1: %s\n", v64, v65, v66, v67, v68, v69, v70, &storage_device_node_path);
          }

          goto LABEL_84;
        }

        if (v158 && !strcmp(name, v158))
        {
          v109 = &data_device_node_path_0;
          goto LABEL_85;
        }

        if (v157 && !strcmp(name, v157))
        {
          v109 = &user_device_node_path;
          goto LABEL_85;
        }

        if (v156 && !strcmp(name, v156))
        {
          v109 = &update_device_node_path;
          goto LABEL_85;
        }

        if (v155 && !strcmp(name, v155))
        {
          v109 = &baseband_data_partition_device_node_path;
          goto LABEL_85;
        }

        if (v154 && !strcmp(name, v154))
        {
          v109 = &log_partition_device_node_path;
          goto LABEL_85;
        }

        if (v153 && !strcmp(name, v153))
        {
          if (!xart_partition_node_path || !ramrod_should_have_xart_partition())
          {
            v110 = 0;
            theArray = &xart_partition_node_path;
            goto LABEL_87;
          }

          v142 = kCFErrorDomainMach;
LABEL_178:
          v143 = @"%s: encountered second '%s' partition; original was '%s'";
LABEL_179:
          ramrod_create_error_cf(&cf, v142, -536870911, 0, v143, v68, v69, v70, "ramrod_probe_media_internal");
LABEL_173:
          v141 = 0;
LABEL_174:
          v48 = 0;
          if (v160 >= 1 && v141)
          {
            sleep(1u);
            v48 = ramrod_probe_media_internal(v160 - 1, 0);
          }

LABEL_14:
          v49 = cf;
          if (a2 && !v48 && cf)
          {
            v48 = 0;
            *a2 = CFRetain(cf);
            goto LABEL_21;
          }

          goto LABEL_22;
        }

        if (v152 && !strcmp(name, v152))
        {
          v109 = &hardware_partition_node_path;
          goto LABEL_85;
        }

        if (v151 && !strcmp(name, v151))
        {
          v109 = &scratch_partition_node_path;
          goto LABEL_85;
        }

        if (v150 && !strcmp(name, v150))
        {
          if (v161 != 1)
          {
            if (v161 == 2)
            {
              ramrod_log_msg("Captured preboot partition on main OS container %d\n", v64, v65, v66, v67, v68, v69, v70, 2);
              v109 = &preboot_partition_device_node_path_0;
            }

            else
            {
              if (v161 != 3)
              {
                goto LABEL_155;
              }

              ramrod_log_msg("Captured preboot partition on recovery container %d\n", v64, v65, v66, v67, v68, v69, v70, 3);
              v109 = &recovery_preboot_partition_device_node_path;
            }

            goto LABEL_85;
          }

          v134 = 1;
        }

        else
        {
          if (!v149 || strcmp(name, v149))
          {
            if (v148 && !strcmp(name, v148))
            {
              v109 = &recovery_os_volume_device_node_path;
            }

            else
            {
              if (!v52 || system_device_node_path_0)
              {
                ramrod_log_msg("unexpected partition '%s' - skipping\n", v64, v65, v66, v67, v68, v69, v70, name);
LABEL_155:
                theArray = 0;
                v110 = 1;
                goto LABEL_87;
              }

              ramrod_log_msg("looking for a system volume, and found unknown volume '%s'. using it as the system volume.\n", v64, v65, v66, v67, v68, v69, v70, name);
LABEL_84:
              LOBYTE(v52) = 1;
              v109 = &system_device_node_path_0;
            }

LABEL_85:
            if (*v109)
            {
              v142 = kCFErrorDomainMach;
              goto LABEL_178;
            }

            theArray = v109;
            v110 = 0;
LABEL_87:
            while (1)
            {
              v111 = CFDictionaryGetValue(properties, @"Leaf");
              if (v111)
              {
                if (CFBooleanGetValue(v111) == 1)
                {
                  break;
                }
              }

              IOObjectRelease(v47);
              CFRelease(properties);
              v112 = IOIteratorNext(iterator);
              if (!v112)
              {
LABEL_172:
                ramrod_create_error_cf(&cf, kCFErrorDomainMach, -536870911, 0, @"%s: ran out of registry entries without finding a leaf media object", v113, v114, v115, "ramrod_probe_media_internal");
                v47 = 0;
                goto LABEL_173;
              }

              v47 = v112;
              while (!IOObjectConformsTo(v47, "IOMedia"))
              {
                IOObjectRelease(v47);
                v47 = IOIteratorNext(iterator);
                if (!v47)
                {
                  goto LABEL_172;
                }
              }

              v116 = IORegistryEntryCreateCFProperties(v47, &properties, kCFAllocatorDefault, 0);
              if (v116)
              {
                ramrod_create_error_cf(&cf, kCFErrorDomainMach, v116, 0, @"%s: unable to get properties for media registry entry", v117, v118, v119, "ramrod_probe_media_internal");
                goto LABEL_173;
              }
            }

            if (v110)
            {
              if (CFDictionaryGetValue(properties, @"Encrypted") == kCFBooleanTrue)
              {
                v127 = CFDictionaryGetValue(properties, @"BSD Name");
                if (v127)
                {
                  v128 = v127;
                  *buffer = 0;
                  v129 = CFDictionaryGetValue(properties, @"RoleValue");
                  if (v129)
                  {
                    CFNumberGetValue(v129, kCFNumberSInt16Type, buffer);
                  }

                  if (*buffer == 576)
                  {
                    v130 = @"Found additional enterprise volume at %@\n";
                  }

                  else
                  {
                    v130 = @"Found additional encrypted volume at %@\n";
                  }

                  if (*buffer == 576)
                  {
                    v131 = Mutable;
                  }

                  else
                  {
                    v131 = v25;
                  }

                  theArraya = v131;
                  ramrod_log_msg_cf(v130, v128, v145);
                  v144 = "/dev/";
                  v145 = v128;
                  v132 = CFStringCreateWithFormat(0, 0, @"%s%@");
                  CFArrayAppendValue(theArraya, v132);
                  CFRelease(v132);
                }
              }
            }

            else
            {
              v133 = CFDictionaryGetValue(properties, @"BSD Name");
              if (!v133)
              {
                v142 = kCFErrorDomainMach;
                v143 = @"%s: leaf media object with no bsd name";
                goto LABEL_179;
              }

              *buffer = 0u;
              v166 = 0u;
              CFStringGetCString(v133, buffer, 32, 0x8000100u);
              snprintf(theArray, 0x20uLL, "%s%s", "/dev/", buffer);
            }

            CFRelease(properties);
LABEL_124:
            IOObjectRelease(v47);
            goto LABEL_73;
          }

          v134 = v161;
        }

        ramrod_log_msg("Captured preboot partition on ISC %d\n", v64, v65, v66, v67, v68, v69, v70, v134);
        v109 = &isc_preboot_partition_device_node_path;
        goto LABEL_85;
      }

      v72 = CFDictionaryGetValue(properties, @"BSD Name");
      if (!v72)
      {
        ramrod_log_msg("APFS Container object with no bsd name", v73, v74, v75, v76, v77, v78, v79, v144);
        goto LABEL_173;
      }

      *buffer = 0u;
      v166 = 0u;
      CFStringGetCString(v72, buffer, 32, 0x8000100u);
      if (CFEqual(v71, @"7C3457EF-0000-11AA-AA11-00306543ECAC") == 1)
      {
        if (strstr(name, "RecoveryOSContainer"))
        {
          v161 = 3;
          v53 = &apfs_recovery_os_container_device_node_path;
        }

        else
        {
          if (*name ^ 0x737953746F6F4269 | *&name[8] ^ 0x61746E6F436D6574 | *&name[13] ^ 0x72656E6961746ELL)
          {
            v53 = &apfs_container_device_node_path_0;
          }

          else
          {
            v53 = &iboot_system_container_device_node_path;
          }

          if (*name ^ 0x737953746F6F4269 | *&name[8] ^ 0x61746E6F436D6574 | *&name[13] ^ 0x72656E6961746ELL)
          {
            v87 = 2;
          }

          else
          {
            v87 = 1;
          }

          v161 = v87;
        }

        snprintf(v53, 0x20uLL, "%s%s", "/dev/", buffer);
        v145 = v53;
        ramrod_log_msg("APFS Container '%s' %s\n", v88, v89, v90, v91, v92, v93, v94, name);
LABEL_70:
        if (!*v53)
        {
          snprintf(v53, 0x20uLL, "%s%s", "/dev/", buffer);
          v145 = v53;
          ramrod_log_msg("APFS Container '%s' %s\n", v95, v96, v97, v98, v99, v100, v101, name);
        }

        goto LABEL_72;
      }

      if (CFEqual(v71, @"EF57347C-0000-11AA-AA11-00306543ECAC") == 1)
      {
        if (v53 && *v53)
        {
          ramrod_log_msg("Found synthesized APFS container. Using %s instead of %s\n", v80, v81, v82, v83, v84, v85, v86, buffer);
          snprintf(v53, 0x20uLL, "%s%s", "/dev/", buffer);
          v53 = 0;
          goto LABEL_72;
        }

        ramrod_log_msg("found synthesized container without original device node\n", v80, v81, v82, v83, v84, v85, v86, v144);
      }

      if (v53)
      {
        goto LABEL_70;
      }

LABEL_72:
      IOObjectRelease(v47);
      CFRelease(properties);
LABEL_73:
      v47 = IOIteratorNext(iterator);
    }

    while (v47);
  }

  if (!IOIteratorIsValid(iterator))
  {
    ramrod_create_error_cf(&cf, kCFErrorDomainMach, -536870165, 0, @"%s: media iterator invalidated", v135, v136, v137, "ramrod_probe_media_internal");
    v47 = 0;
LABEL_170:
    v141 = 1;
    goto LABEL_174;
  }

  if (CFArrayGetCount(v25) >= 1)
  {
    additional_encrypted_volume_node_paths = CFRetain(v25);
  }

  if (CFArrayGetCount(Mutable) < 1)
  {
    goto LABEL_19;
  }

  v47 = 0;
  additional_eds_volume_node_paths = CFRetain(Mutable);
LABEL_20:
  v48 = 1;
LABEL_21:
  v49 = cf;
LABEL_22:
  if (v49)
  {
    CFRelease(v49);
  }

  if (v47)
  {
    IOObjectRelease(v47);
  }

  if (iterator)
  {
    IOObjectRelease(iterator);
  }

  if (v42)
  {
    IOObjectRelease(v42);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v48;
}

uint64_t ramrod_get_apfs_container_device_node(char *a1, size_t __size)
{
  if (!apfs_container_device_node_path_0)
  {
    return 0;
  }

  strlcpy(a1, &apfs_container_device_node_path_0, __size);
  return 1;
}

uint64_t ramrod_should_have_xart_partition()
{
  v7 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/arm-io/sep/iop-sep-nub/xART");
  if (v7)
  {
    ramrod_log_msg("IODeviceTree:/arm-io/sep/iop-sep-nub/xART found\n", v0, v1, v2, v3, v4, v5, v6, v47);
    IOObjectRelease(v7);
    v7 = 1;
  }

  v8 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen/has-xart");
  if (v8)
  {
    v16 = v8;
    ramrod_log_msg("IODeviceTree:/chosen/has-xart found\n", v9, v10, v11, v12, v13, v14, v15, v47);
    IOObjectRelease(v16);
    v7 = 1;
  }

  v17 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/defaults");
  if (!v17)
  {
    ramrod_log_msg("Failed to read IODeviceTree:/defaults\n", v18, v19, v20, v21, v22, v23, v24, v47);
    goto LABEL_22;
  }

  v25 = v17;
  CFProperty = IORegistryEntryCreateCFProperty(v17, @"has-xart", kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    v27 = CFProperty;
    v28 = CFGetTypeID(CFProperty);
    if (v28 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(v27, kCFNumberSInt32Type, &valuePtr);
      if (valuePtr)
      {
        v36 = "IODeviceTree:/defaults/has-xart found\n";
      }

      else
      {
        v36 = "IODeviceTree:/defaults/has-xart found but is zero\n";
      }

      if (valuePtr)
      {
        v7 = 1;
      }

      else
      {
        v7 = v7;
      }
    }

    else
    {
      v44 = CFGetTypeID(v27);
      if (v44 != CFDataGetTypeID())
      {
        goto LABEL_20;
      }

      *buffer = 0;
      if (CFDataGetLength(v27) == 4)
      {
        v50.location = 0;
        v50.length = 4;
        CFDataGetBytes(v27, v50, buffer);
        if (*buffer)
        {
          ramrod_log_msg("IODeviceTree:/defaults/has-xart found\n", v29, v30, v31, v32, v33, v34, v35, v47);
          v7 = 1;
          goto LABEL_20;
        }

        v36 = "IODeviceTree:/defaults/has-xart found but is zero\n";
      }

      else
      {
        v36 = "IODeviceTree:/defaults/has-xart found but is not int sized\n";
      }
    }

    ramrod_log_msg(v36, v29, v30, v31, v32, v33, v34, v35, v47);
LABEL_20:
    CFRelease(v27);
  }

  IOObjectRelease(v25);
LABEL_22:
  if (v7)
  {
    v45 = "We should have an xART partition.\n";
  }

  else
  {
    v45 = "We should not have an xART partition.\n";
  }

  ramrod_log_msg(v45, v37, v38, v39, v40, v41, v42, v43, v47);
  return v7;
}

void OUTLINED_FUNCTION_0_1(CFErrorRef *a1@<X0>, const __CFString *a2@<X1>, const __CFString *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, char a7@<W8>)
{

  ramrod_create_error_cf(a1, a2, 6, 0, a3, a4, a5, a6, a7);
}

void ramrod_create_error_internal_va(CFErrorRef *a1, const __CFString *a2, CFIndex a3, const void *a4, const __CFString *a5, va_list a6)
{
  if (a1)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v13 = Mutable;
      v14 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, a5, a6);
      if (v14)
      {
        v15 = v14;
        CFDictionaryAddValue(v13, kCFErrorDescriptionKey, v14);
        CFRelease(v15);
      }

      if (a4)
      {
        CFDictionaryAddValue(v13, kCFErrorUnderlyingErrorKey, a4);
      }

      *a1 = CFErrorCreate(kCFAllocatorDefault, a2, a3, v13);

      CFRelease(v13);
    }
  }
}

id _options_get_BOOL(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

id _get_os_preboot_path(void *a1)
{
  v2 = [a1 objectForKeyedSubscript:@"PrebootDirOverride"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || !v2)
  {
    v2 = [a1 objectForKeyedSubscript:@"PrebootMountpoint"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !v2)
    {
      ramrod_log_msg("%s: RAMROD_SPLAT_OPT_PREBOOT_MOUNTPOINT is required\n", v3, v4, v5, v6, v7, v8, v9, "_get_os_preboot_path");
      return 0;
    }
  }

  return v2;
}

BOOL _get_splat_preboot_paths(void *a1, void *a2, void *a3, void *a4, CFErrorRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (_options_get_BOOL(a2, @"SafariDownlevelUpdate"))
    {
      v11 = @"downlevel";
    }

    else
    {
      v11 = @"cryptex1";
    }

    v12 = [a1 stringByAppendingPathComponent:v11];
    v13 = v12;
    if (a3)
    {
      *a3 = [v12 stringByAppendingPathComponent:@"current"];
    }

    if (a4)
    {
      *a4 = [v13 stringByAppendingPathComponent:@"proposed"];
    }
  }

  else
  {
    ramrod_log_msg("%s: %s\n", a2, a3, a4, a5, a6, a7, a8, "_get_splat_preboot_paths");
    ramrod_create_error_cf(a5, @"RamrodErrorDomain", 2001, 0, @"%s", v15, v16, v17, "preboot directory is nil");
  }

  return a1 != 0;
}

id ramrod_splat_copy_object_path(const char *a1, void *a2)
{
  v13 = 0;
  v14 = 0;
  os_preboot_path = _get_os_preboot_path(a2);
  if (!_get_splat_preboot_paths(os_preboot_path, a2, &v14, &v13, 0, v5, v6, v7))
  {
    return 0;
  }

  v8 = v14;
  if (_options_get_BOOL(a2, @"StageToProposed"))
  {
    v9 = v13;
  }

  else
  {
    v9 = v8;
  }

  if (!a1)
  {
    if (v9)
    {
      return CFRetain(v9);
    }

    return 0;
  }

  v10 = &splat_objects;
  v11 = 9;
  while (*v10 || strcmp(*(v10 + 1), a1))
  {
    v10 += 16;
    if (!--v11)
    {
      return 0;
    }
  }

  result = [v9 stringByAppendingPathComponent:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", *(v10 + 4))}];
  v9 = result;
  if (result)
  {
    return CFRetain(v9);
  }

  return result;
}

void __retrieve_previous_update_all_tolerated_failures_block_invoke_cold_1(uint64_t a1)
{
  v6 = *(a1 + 32);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __retrieve_previous_update_all_tolerated_failures_block_invoke_cold_2(uint64_t a1)
{
  v6 = *(a1 + 32);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void submitRestoreLogFileToLogDir_cold_1()
{
  v0 = *__error();
  _os_assert_log();
  _os_crash();
  __break(1u);
}

__CFString *get_short_error_domain(__CFString *result)
{
  if (result)
  {
    Domain = CFErrorGetDomain(result);
    if (CFStringCompare(Domain, @"MobileSoftwareUpdateErrorDomain", 0))
    {
      if (CFStringCompare(Domain, @"RamrodErrorDomain", 0))
      {
        if (CFStringCompare(Domain, @"NRDUpdateErrorDomain", 0))
        {
          return Domain;
        }

        else
        {
          return @"NRD";
        }
      }

      else
      {
        return @"RRD";
      }
    }

    else
    {
      return @"MSU";
    }
  }

  return result;
}

void copy_underlying_error_description_cold_1(__CFString *a1, __CFString *a2)
{
  v4 = 0;
  do
  {
    short_error_domain = get_short_error_domain(a1);
    CFStringAppend(a2, short_error_domain);
    Code = CFErrorGetCode(a1);
    CFStringAppendFormat(a2, 0, @" %ld", Code);
    v7 = CFErrorCopyUserInfo(a1);
    if (v7)
    {
      v8 = v7;
      Value = CFDictionaryGetValue(v7, kCFErrorLocalizedDescriptionKey);
      if (Value || (Value = CFDictionaryGetValue(v8, kCFErrorDescriptionKey)) != 0 || (Value = CFDictionaryGetValue(v8, kCFErrorLocalizedFailureReasonKey)) != 0 || (Value = CFDictionaryGetValue(v8, @"NSDebugDescription")) != 0)
      {
        CFStringAppendFormat(a2, 0, @" (%@)", Value);
      }

      a1 = CFDictionaryGetValue(v8, kCFErrorUnderlyingErrorKey);
      CFRelease(v8);
    }

    CFStringAppend(a2, @";");
    if (!a1)
    {
      break;
    }
  }

  while (v4++ < 9);
}

void main_cold_2()
{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0(&_mh_execute_header, v1, v2, "[MAIN] Could not register atexit: %s", v3, v4, v5, v6, v7);
}

void main_cold_3(uint64_t *a1)
{
  OUTLINED_FUNCTION_1_1(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void main_cold_4(uint64_t *a1)
{
  OUTLINED_FUNCTION_1_1(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void main_cold_5(uint64_t *a1)
{
  OUTLINED_FUNCTION_1_1(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __main_block_invoke_11_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_1_1(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __main_block_invoke_2_cold_1(void *a1)
{
  xpc_dictionary_get_string(a1, _xpc_error_key_description);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0(&_mh_execute_header, v1, v2, "[PEER_CONNECTION] XPC error on peer listener connection: %s", v3, v4, v5, v6, v7);
}

void __main_block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __main_block_invoke_3_cold_3(void *a1)
{
  xpc_dictionary_get_string(a1, _xpc_error_key_description);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0(&_mh_execute_header, v1, v2, "[PEER_CONNECTION] Unexpected XPC error on peer connection (%s) | Potential connection issue", v3, v4, v5, v6, v7);
}

void handle_update_metrics_cold_3(uint64_t *a1)
{
  OUTLINED_FUNCTION_1_1(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void handle_get_stashed_connectivity_data_command_cold_3(uint64_t *a1)
{
  OUTLINED_FUNCTION_1_1(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void handle_perform_report_and_cleanup_command_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_1_1(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void handle_perform_cryptegraft_semisplat_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_1_1(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void handle_perform_cryptegraft_downlevel_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_1_1(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __copy_shared_update_brain_connection_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __copy_shared_update_brain_connection_block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_1_1(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

uint64_t CryptoPerformEncryptDecrypt(const __CFData *a1, CFDataRef *a2, int a3)
{
  Length = CFDataGetLength(a1);
  connect[0] = 0;
  v7 = IOServiceMatching("IOAESAccelerator");
  if (!v7)
  {
    logfunction("", 1, @"Could not allocate matching dict for kIOAESAcceleratorClass\n", v8, v9, v10, v11, v12, v51);
    return 0;
  }

  v13 = v7;
  CFRetain(v7);
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v13);
  if (!MatchingService)
  {
    logfunction("", 1, @"Could not find kIOAESAcceleratorClass\n", v15, v16, v17, v18, v19, v51);
    CFRelease(v13);
    return 0;
  }

  v20 = MatchingService;
  v21 = IOServiceOpen(MatchingService, mach_task_self_, 0, connect);
  if (v21)
  {
    logfunction("", 1, @"Return %d trying to open kIOAESAcceleratorClass\n", v22, v23, v24, v25, v26, v21);
  }

  CFRelease(v13);
  IOObjectRelease(v20);
  v27 = connect[0];
  if (!connect[0])
  {
    return 0;
  }

  v28 = Length;
  if (a3)
  {
    if (Length << 32)
    {
      BytePtr = CFDataGetBytePtr(a1);
      v30 = CryptoBufferAllocate((Length + 19) & 0xFFFFFFFFFFFFFFF0);
      if (v30)
      {
        v31 = v30;
        *v30 = Length;
        memcpy(v30 + 1, BytePtr, Length);
        v28 = (Length + 19) & 0xFFFFFFFFFFFFFFF0;
        goto LABEL_13;
      }
    }

    goto LABEL_24;
  }

  if (Length < 5 || (v32 = CFDataGetBytePtr(a1), (v33 = CryptoBufferAllocate(v28)) == 0))
  {
LABEL_24:
    IOServiceClose(v27);
    return 0;
  }

  v31 = v33;
  memcpy(v33, v32, v28);
LABEL_13:
  v34 = CryptoBufferAllocate(v28);
  v35 = v34;
  if (!v34)
  {
LABEL_23:
    v45 = 0;
    goto LABEL_32;
  }

  v63 = 0;
  outputStructCnt = 88;
  if (a3)
  {
    v36 = v31;
  }

  else
  {
    v36 = v34;
  }

  if (a3)
  {
    v37 = v34;
  }

  else
  {
    v37 = v31;
  }

  *connect = v36;
  v54 = v37;
  v55 = v28;
  v57 = 0;
  v56 = 0;
  v58 = a3 ^ 1;
  v59 = 128;
  v60 = 0u;
  v61 = 0u;
  v62 = 2108;
  v38 = IOConnectCallStructMethod(v27, 1u, connect, 0x58uLL, connect, &outputStructCnt);
  if (v38)
  {
    v51 = v38;
    v44 = @"perform aes => %d\n";
LABEL_22:
    logfunction("", 1, v44, v39, v40, v41, v42, v43, v51);
    goto LABEL_23;
  }

  if (a3)
  {
    v46 = kCFAllocatorDefault;
    v47 = v35;
    v48 = v28;
  }

  else
  {
    v48 = *v35;
    if (v28 - 4 < v48)
    {
      goto LABEL_23;
    }

    v46 = kCFAllocatorDefault;
    v47 = v35 + 4;
  }

  v49 = CFDataCreate(v46, v47, v48);
  *a2 = v49;
  if (!v49)
  {
    v44 = @"Unable to allocate return crypto CFData\n";
    goto LABEL_22;
  }

  v45 = 1;
LABEL_32:
  IOServiceClose(v27);
  free(v31);
  if (v35)
  {
    free(v35);
  }

  return v45;
}