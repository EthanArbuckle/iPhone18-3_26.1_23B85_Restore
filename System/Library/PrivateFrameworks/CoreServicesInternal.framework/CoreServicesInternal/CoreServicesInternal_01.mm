uint64_t createIsReadableValue(uint64_t a1, _DWORD *a2, void *a3)
{
  if ((*a2 & 8) == 0)
  {
    return 0;
  }

  if ((*a2 & 0x2000000) != 0)
  {
    v4 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  *a3 = *v4;
  return 1;
}

uint64_t createVolumeURL(__CFAllocator *a1, int a2, fsid *a3, CFURLRef *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v7 = 1;
    *a4 = createFileReferenceURLRef(a1, a3[14].val[0], 0, 2, 0, 1, 0);
    goto LABEL_18;
  }

  v21 = 0;
  v8 = MountInfoStorageSize();
  v12 = MEMORY[0x1EEE9AC00](v8, v9, v10, v11);
  if (MountInfoPrepare(&v21, a3[14].val[0], 0, &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), 0, 0, 0))
  {
    MountPoint = MountInfoGetMountPoint(v21);
    if (!MountPoint)
    {
LABEL_7:
      v15 = defaultLog;
      if (os_log_type_enabled(defaultLog, OS_LOG_TYPE_DEFAULT))
      {
        v16 = a3[29];
        *buf = 136315394;
        *&buf[4] = "createVolumeURL";
        *&buf[12] = 2112;
        *&buf[14] = v16;
        _os_log_impl(&dword_19602C000, v15, OS_LOG_TYPE_DEFAULT, "%s: no mountpoint for path: %@", buf, 0x16u);
      }

      goto LABEL_13;
    }
  }

  else
  {
    v14 = a3[13];
    if (GetStatfsByFSID(v14, &v22))
    {
      goto LABEL_7;
    }

    MountPoint = v22.f_mntonname;
  }

  v17 = strlen(MountPoint);
  if (v17)
  {
    if (v21)
    {
      *buf = MountPoint;
      *&buf[8] = v17;
      *&buf[16] = 0u;
      v24 = 0u;
      v25 = 1;
      v26 = 1;
      v27 = 0;
      v28 = v21;
      v18 = __FSURLCreateWithPathAndAttributes(a1, buf, 0);
    }

    else
    {
      v18 = CFURLCreateFromFileSystemRepresentation(a1, MountPoint, v17, 1u);
    }

    *a4 = v18;
    v7 = 1;
    goto LABEL_16;
  }

LABEL_13:
  v7 = 0;
LABEL_16:
  if (v21)
  {
    MountInfoDestroy(v21);
  }

LABEL_18:
  v19 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t createVolumeIsHFSStandardValue(uint64_t a1, _DWORD *a2, void *a3)
{
  v3 = MEMORY[0x1E695E4D0];
  if ((*a2 & 0x40000) == 0)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  *a3 = *v3;
  return 1;
}

uint64_t createParentDirectoryIDValue(const void *a1, _BYTE *a2, CFNumberRef *a3)
{
  if ((*a2 & 4) == 0)
  {
    return 0;
  }

  v5 = a2 + 136;
  if (*(a2 + 17))
  {
    v6 = CFGetAllocator(a1);
    v7 = CFNumberCreate(v6, kCFNumberSInt64Type, v5);
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  return 1;
}

uint64_t createInodeNumberValue(const void *a1, _BYTE *a2, CFNumberRef *a3)
{
  if ((*a2 & 4) == 0)
  {
    return 0;
  }

  v5 = a2 + 120;
  if (*(a2 + 15))
  {
    v6 = CFGetAllocator(a1);
    v7 = CFNumberCreate(v6, kCFNumberSInt64Type, v5);
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  return 1;
}

uint64_t createIsAliasFileValue(uint64_t a1, uint64_t a2, void *a3)
{
  if ((*(a2 + 16) & 0xF000) == 0x8000)
  {
    if ((*a2 & 0x10) == 0)
    {
      return 0;
    }

    v3 = MEMORY[0x1E695E4D0];
    if (*(a2 + 168) >= 0)
    {
      v3 = MEMORY[0x1E695E4C0];
    }
  }

  else if ((*(a2 + 16) & 0xF000) == 0xA000)
  {
    v3 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  *a3 = *v3;
  return 1;
}

uint64_t createFinderInfoValue(const void *a1, uint64_t a2, void *a3)
{
  if ((*a2 & 0x10) == 0)
  {
    return 0;
  }

  if ((*a2 & 0x4000000) != 0)
  {
    if (createFinderInfoValue(__CFURL const*,_FileAttributes const*,void *)::onceToken != -1)
    {
      createFinderInfoValue();
    }

    v7 = CFRetain(createFinderInfoValue(__CFURL const*,_FileAttributes const*,void *)::zeroFinderInfoData);
    result = 1;
  }

  else
  {
    v6 = CFGetAllocator(a1);
    v7 = CFDataCreate(v6, (a2 + 160), 32);
    result = 2;
  }

  *a3 = v7;
  return result;
}

uint64_t createFileResourceTypeValue(uint64_t a1, uint64_t a2, const void **a3)
{
  v3 = (*(a2 + 16) & 0xF000) - 4096;
  if (v3 >> 14 > 2)
  {
    v4 = MEMORY[0x1E695EAE0];
  }

  else
  {
    v4 = qword_1E745C440[v3 >> 12];
  }

  v5 = *v4;
  *a3 = *v4;
  CFRetain(v5);
  return 1;
}

void _FSURLClearResourcePropertyCacheForKey(const __CFURL *a1, const void *a2, CFTypeRef cf)
{
  if (!cf)
  {
    return;
  }

  v6 = _FileCacheGetForURL(a1, cf);
  v7 = v6;
  if (a2)
  {
    Value = CFDictionaryGetValue(qword_1ED4458B8, a2);
    if (Value)
    {
      v9 = Value;
      _FileCacheLock(v7);
      clearPropertyAndDependentValues(a1, v7, v9);
      _FileCacheUnlock(v7);
      goto LABEL_10;
    }

    _FileCacheLockTempPermProperties();
    TemporaryPropertyDictionary = _FileCacheGetTemporaryPropertyDictionary(v7, 0);
    if (TemporaryPropertyDictionary)
    {
      CFDictionaryRemoveValue(TemporaryPropertyDictionary, a2);
    }

    _FileCacheUnlockTempPermProperties();
  }

  else
  {
    _FileCacheLock(v6);
    _FileCacheReleaseContents(v7, 1, 0, 1, 0);
    _FileCacheUnlock(v7);
  }

  v9 = 0;
LABEL_10:
  cfa = 0;
  v11 = _FSURLCopyResourcePropertyForKeyInternal(a1, *MEMORY[0x1E695E3B0], &cfa, cf, 0, 1);
  v12 = cfa;
  if (v11)
  {
    v13 = cfa == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    if (cfa != *MEMORY[0x1E695E738])
    {
      v14 = __CFURLResourceInfoPtr();
      if (v14)
      {
        v15 = _FileCacheGetForURL(v12, v14);
        v16 = v15;
        if (a2)
        {
          if (!v9)
          {
            _FileCacheLockTempPermProperties();
            v17 = _FileCacheGetTemporaryPropertyDictionary(v16, 0);
            if (v17)
            {
              CFDictionaryRemoveValue(v17, a2);
            }

            _FileCacheUnlockTempPermProperties();
            goto LABEL_24;
          }

          _FileCacheLock(v15);
          clearPropertyAndDependentValues(v12, v16, v9);
        }

        else
        {
          _FileCacheLock(v15);
          _FileCacheReleaseContents(v16, 1, 0, 1, 0);
        }

        _FileCacheUnlock(v16);
      }
    }

LABEL_24:
    CFRelease(v12);
  }
}

uint64_t _FSURLSetResourcePropertiesForKeys(const __CFURL *a1, const __CFDictionary *a2, CFTypeRef cf, CFErrorRef *a4)
{
  v133[1] = *MEMORY[0x1E69E9840];
  v7 = _FileCacheGetForURL(a1, cf);
  v130 = a2;
  Count = CFDictionaryGetCount(a2);
  v9 = qword_1ED445788;
  v10 = 3 * qword_1ED445788;
  v11 = 768 * qword_1ED445788;
  v15 = MEMORY[0x1EEE9AC00](Count, v12, v13, v14);
  v19 = MEMORY[0x1EEE9AC00](v15, v16, v17, v18);
  v123 = &v117 - 32 * v10;
  v23 = MEMORY[0x1EEE9AC00](v19, v20, v21, v22);
  v122 = &v117 - 32 * v10;
  MEMORY[0x1EEE9AC00](v23, 8 * v9, v24, v25);
  v29 = &v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133[0] = 0;
  if (Count < 1)
  {
    LOBYTE(v43) = 1;
    goto LABEL_85;
  }

  v119 = a1;
  v129 = (&v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v125 = v9;
  v121 = a4;
  if (v9 >= 1)
  {
    bzero(v29, v26);
    if (Count >= 0x100)
    {
      v117 = v10;
      v118 = v11;
      v124 = (&v117 - 32 * v10);
      v120 = v7;
      v30 = 0;
      v31 = 0;
      v126 = *MEMORY[0x1E695E738];
      v32 = *MEMORY[0x1E695EBE8];
      v33 = 0x1ED445000;
      while (1)
      {
        v34 = &sFileProviderGlobals[7 * v31];
        if (*(v34 + 5) >= 1)
        {
          break;
        }

        v39 = v30;
LABEL_17:
        ++v31;
        v30 = v39;
        v9 = v125;
        if (v31 == v125)
        {
          goto LABEL_37;
        }
      }

      v35 = 0;
      v36 = 0;
      v127 = &v123[96 * v31];
      v128 = &v124[96 * v31];
      v37 = &v122[96 * v31];
      while (1)
      {
        v38 = v34[8];
        value = 0;
        if (CFDictionaryGetValueIfPresent(v130, *(v38 + v35 + 8), &value))
        {
          v39 = value;
          if (!value)
          {
            v39 = v126;
            value = v126;
          }

          v40 = *(v38 + v35 + 8);
          if (v40 == v32)
          {
            v133[0] = v39;
            goto LABEL_14;
          }

          v41 = v129;
          v42 = v129[v31];
          v128[v42] = v40;
          v127[v42] = v39;
          v37[v42] = *(v38 + v35);
          *&v41[8 * v31] = v42 + 1;
        }

        v39 = v30;
LABEL_14:
        v33 = 0x1ED445000;
        ++v36;
        v35 += 148;
        v30 = v39;
        if (v36 >= *(v34 + 5))
        {
          goto LABEL_17;
        }
      }
    }

LABEL_21:
    v117 = v10;
    v118 = v11;
    v124 = (&v117 - 32 * v10);
    v120 = v7;
    MEMORY[0x1EEE9AC00](v29, v26, v27, v28);
    v44 = (8 * Count + 15) & 0xFFFFFFFFFFFFFFF0;
    v45 = (&v117 - v44);
    if ((8 * Count) >= 0x200)
    {
      v46 = 512;
    }

    else
    {
      v46 = 8 * Count;
    }

    bzero(&v117 - v44, v46);
    MEMORY[0x1EEE9AC00](v47, v48, v49, v50);
    v51 = (&v117 - v44);
    bzero(&v117 - v44, v46);
    CFDictionaryGetKeysAndValues(v130, (&v117 - v44), (&v117 - v44));
    v39 = 0;
    v52 = *MEMORY[0x1E695EBE8];
    v53 = *MEMORY[0x1E695E738];
    do
    {
      v54 = CFDictionaryGetValue(qword_1ED4458B8, *v45);
      if (v54)
      {
        v55 = *(v54 + 1);
        if (v55 == v52)
        {
          if (*v51)
          {
            v39 = *v51;
          }

          else
          {
            v39 = v53;
          }

          v133[0] = v39;
        }

        else
        {
          v56 = **(v54 + 140);
          v57 = v129;
          v58 = v129[v56];
          if (v58 <= 95)
          {
            *(&v124[96 * v56] + v58) = v55;
            v59 = *v51;
            if (!*v51)
            {
              v59 = v53;
            }

            v123[96 * v56 + v58] = v59;
            v122[96 * v56 + v58] = *v54;
            *&v57[8 * v56] = v58 + 1;
          }
        }
      }

      ++v51;
      ++v45;
      --Count;
    }

    while (Count);
    v33 = 0x1ED445000uLL;
LABEL_37:
    _FileCacheLock(v120);
    if (v9 < 1)
    {
      v77 = 0;
      v43 = 1;
      a4 = v121;
LABEL_44:
      v78 = v124;
      if (v43 && v39)
      {
        v79 = a4;
        v80 = MEMORY[0x1E695EBE8];
        v81 = CFDictionaryGetValue(*(v33 + 2232), *MEMORY[0x1E695EBE8]);
        value = *v81;
        v82 = *(v81 + 140);
        v83 = *(v82 + 40);
        v84 = *(v82 + 8);
        v7 = v120;
        _FileCacheIncrementInProvider(v120);
        v85 = v119;
        v86 = v80;
        a4 = v79;
        v43 = v83(v119, v7, v86, v133, &value, 1, v84, v79);
        _FileCacheDecrementInProvider(v7);
        if (v43)
        {
          clearPropertyAndDependentValues(v85, v7, v81);
        }
      }

      else
      {
        v7 = v120;
      }
    }

    else
    {
      v60 = 0;
      v61 = 1;
      v62 = v129;
      v63 = v123;
      v64 = v124;
      v65 = &qword_1ED4457B8;
      a4 = v121;
      v66 = v122;
      while (1)
      {
        v67 = *v62;
        if (*v62 >= 1)
        {
          v130 = *v65;
          v68 = *(v65 - 4);
          v69 = v120;
          _FileCacheIncrementInProvider(v120);
          v70 = v68;
          a4 = v121;
          v71 = (v130)(v119, v69, v64, v63, v66, v67, v70, v121);
          v72 = v69;
          v9 = v125;
          v73 = _FileCacheDecrementInProvider(v72);
          v61 = v71;
          if (!v71)
          {
            break;
          }
        }

        v64 += 96;
        ++v62;
        v66 += 96;
        v63 += 96;
        v65 += 7;
        if (v9 == ++v60)
        {
          v77 = v9;
          v33 = 0x1ED445000;
          v43 = v61;
          goto LABEL_44;
        }
      }

      if (!a4)
      {
        v43 = 0;
        v7 = v120;
        v78 = v124;
        v94 = v129;
        v33 = 0x1ED445000;
        v77 = v60;
        goto LABEL_71;
      }

      v77 = v60;
      if (!*a4)
      {
        v95 = os_log_type_enabled(defaultLog, OS_LOG_TYPE_ERROR);
        v7 = v120;
        v78 = v124;
        v94 = v129;
        v33 = 0x1ED445000;
        if (v95)
        {
          _FSURLSetResourcePropertiesForKeys_cold_1();
        }

        v43 = 0;
        goto LABEL_71;
      }

      MEMORY[0x1EEE9AC00](v73, v74, v75, v76);
      v88 = (&v117 - 32 * v117);
      if (v87 >= 0x200)
      {
        v89 = 512;
      }

      else
      {
        v89 = v87;
      }

      bzero(&v117 - 32 * v117, v89);
      if (v9 <= v60)
      {
        v90 = 0;
        v7 = v120;
      }

      else
      {
        v90 = 0;
        v91 = v9 - v60;
        v7 = v120;
        do
        {
          v93 = *v62++;
          v92 = v93;
          if (v93 >= 1)
          {
            memcpy(&v88[v90], v64, 8 * v92);
            v90 += v92;
          }

          v64 += 96;
          --v91;
        }

        while (v91);
      }

      v96 = v119;
      v97 = CFGetAllocator(v119);
      v98 = CFArrayCreate(v97, v88, v90, MEMORY[0x1E695E9C0]);
      value = v98;
      v99 = CFErrorCopyUserInfo(*v121);
      if (v99)
      {
        v100 = v99;
        v101 = CFGetAllocator(v96);
        MutableCopy = CFDictionaryCreateMutableCopy(v101, 0, v100);
        CFDictionaryAddValue(MutableCopy, *MEMORY[0x1E695EBA8], v98);
        CFRelease(v100);
      }

      else
      {
        keys = *MEMORY[0x1E695EBA8];
        v103 = CFGetAllocator(v96);
        MutableCopy = CFDictionaryCreate(v103, &keys, &value, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      v33 = 0x1ED445000uLL;
      v104 = CFGetAllocator(v96);
      v105 = v121;
      Domain = CFErrorGetDomain(*v121);
      Code = CFErrorGetCode(*v105);
      v108 = CFErrorCreate(v104, Domain, Code, MutableCopy);
      CFRelease(*v105);
      CFRelease(value);
      CFRelease(MutableCopy);
      *v105 = v108;
      a4 = v105;
      v43 = 0;
      v78 = v124;
    }

    v94 = v129;
LABEL_71:
    if (v77)
    {
      v109 = 0;
      v110 = v119;
      do
      {
        v111 = *&v94[8 * v109];
        if (v111 >= 1)
        {
          v112 = v78;
          do
          {
            v113 = *v112++;
            v114 = CFDictionaryGetValue(*(v33 + 2232), v113);
            clearPropertyAndDependentValues(v110, v7, v114);
            --v111;
          }

          while (v111);
        }

        ++v109;
        v78 += 96;
      }

      while (v109 != v77);
      a4 = v121;
    }

    goto LABEL_78;
  }

  if (Count < 0x100)
  {
    goto LABEL_21;
  }

  _FileCacheLock(v7);
  v43 = 1;
LABEL_78:
  _FileCacheUnlock(v7);
  if (a4 && !v43)
  {
    if (*a4)
    {
      LOBYTE(v43) = 0;
    }

    else
    {
      if (os_log_type_enabled(defaultLog, OS_LOG_TYPE_ERROR))
      {
        _FSURLSetResourcePropertiesForKeys_cold_2();
      }

      LOBYTE(v43) = 0;
      *a4 = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E628], 256, 0);
    }
  }

LABEL_85:
  v115 = *MEMORY[0x1E69E9840];
  return v43;
}

uint64_t createFileSizeValue(const void *a1, uint64_t a2, CFNumberRef *a3)
{
  if ((*a2 & 0x40) == 0)
  {
    return 0;
  }

  if ((*(a2 + 16) & 0xD000 | 0x2000) == 0xA000)
  {
    v6 = CFGetAllocator(a1);
    v7 = CFNumberCreate(v6, kCFNumberSInt64Type, (a2 + 208));
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  return 1;
}

uint64_t createFileProtectionValue(uint64_t a1, uint64_t a2, const void **a3)
{
  v3 = *(a2 + 48) - 1;
  if (v3 >= 4)
  {
    *a3 = 0;
  }

  else
  {
    v4 = qword_1E745C420[v3];
    v5 = *v4;
    *a3 = *v4;
    if (v5)
    {
      CFRetain(v5);
    }
  }

  return 1;
}

void _FSURLBeginResourcePropertyCacheAccess(const __CFURL *a1, const void *a2)
{
  if (a2 && _CFRunLoopCurrentIsMain())
  {
    v4 = _FileCacheGetForURL(a1, a2);
    _FileCacheLock(v4);
    if (!_FileCacheGetAutoFlushingEnabled(v4) || _FileCacheGetInProvider(v4) || (GlobalSeed = _FileCacheGetGlobalSeed(), _FileCacheIsValid(v4, GlobalSeed)))
    {

      _FileCacheUnlock(v4);
    }

    else
    {
      _FileCacheReleaseContents(v4, 1, 1, 1, 0);
      _FileCacheUnlock(v4);
      cf = 0;
      if (_FSURLCopyResourcePropertyForKeyInternal(a1, *MEMORY[0x1E695E3B0], &cf, a2, 0, 1))
      {
        v6 = cf;
        if (cf)
        {
          if (cf != *MEMORY[0x1E695E738])
          {
            v7 = __CFURLResourceInfoPtr();
            if (v7)
            {
              v8 = _FileCacheGetForURL(v6, v7);
              _FileCacheLock(v8);
              _FileCacheReleaseContents(v8, 1, 1, 1, 0);
              _FileCacheUnlock(v8);
            }
          }

          CFRelease(v6);
        }
      }
    }
  }
}

BOOL _FileCacheIsValid(uint64_t a1, int a2)
{
  v2 = atomic_load((a1 + 16));
  if ((v2 & 0x80000000) != 0)
  {
    return 1;
  }

  v3 = atomic_load((a1 + 16));
  return v3 == a2;
}

CFURLRef __FSURLCreateWithPathAndAttributes(CFAllocatorRef allocator, uint64_t a2, void **a3)
{
  v51 = *MEMORY[0x1E69E9840];
  if (initGlobalsOnce(void)::onceToken != -1)
  {
    initGlobalsOnce();
  }

  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 40);
  v11 = *(a2 + 49);
  v12 = *(a2 + 51);
  v13 = *(a2 + 56);
  if (!v10 && !*(a2 + 49) && *(a2 + 52) != -1)
  {
    v14 = *MEMORY[0x1E69E9840];
    v15 = *(a2 + 24);

    JUMPOUT(0x19A8C75B0);
  }

  v47 = *(a2 + 50);
  v48 = v12;
  BaseCacheWithPathAndAttributes = createBaseCacheWithPathAndAttributes(allocator, v6, v7, v11, *(a2 + 32), v10, *(a2 + 48), *(a2 + 64), a3, v46);
  if (!BaseCacheWithPathAndAttributes)
  {
    goto LABEL_42;
  }

  v17 = BaseCacheWithPathAndAttributes;
  v49 = a3;
  Attributes = _FileCacheGetAttributes(BaseCacheWithPathAndAttributes);
  v19 = Attributes;
  if (v11)
  {
    v20 = *Attributes;
    if ((*Attributes & 4) != 0)
    {
      v21 = *(Attributes + 16) & 0xF000;
      v22 = *(Attributes + 112);
      if ((v20 & 0x40000) == 0 || v21 == 0x4000)
      {
        v28 = (v20 >> 18) & 1;
        v27 = v21 == 0x4000 ? 1 : v28;
        v26 = *(Attributes + 128);
        v25 = allocator;
        v23 = 0;
        v24 = 0;
      }

      else
      {
        v23 = *(Attributes + 136);
        v24 = *(Attributes + 8);
        v25 = allocator;
        v26 = 0;
        v27 = 0;
      }

      FileReferenceURLRef = createFileReferenceURLRef(v25, v22, v23, v26, v24, v27, v13);
      v33 = FileReferenceURLRef;
      if (FileReferenceURLRef)
      {
        goto LABEL_22;
      }
    }
  }

  if (v6)
  {
    v34 = objectTypeFromAccessMask(*(v19 + 16)) == 2;
    FileReferenceURLRef = MEMORY[0x19A8C75B0](allocator, &v6[v8], v7 - v8, v34, v9);
    v33 = FileReferenceURLRef;
    if (FileReferenceURLRef)
    {
LABEL_22:
      if (v47 | v48)
      {
        MEMORY[0x1EEE9AC00](FileReferenceURLRef, v30, v31, v32);
        memcpy(&v47 - ((v7 + 16) & 0xFFFFFFFFFFFFFFF0), v6, v7);
        *(&v47 + v7 - ((v7 + 16) & 0xFFFFFFFFFFFFFFF0)) = 0;
        v35 = CFStringCreateWithFileSystemRepresentation(allocator, &v47 - ((v7 + 16) & 0xFFFFFFFFFFFFFFF0));
        if (v35)
        {
          v36 = v35;
          if (v47)
          {
            _FileCacheSetPropertyValueForKey(v17, *MEMORY[0x1E695EBF8], v35);
          }

          if (v48)
          {
            v37 = *(v19 + 232);
            if (v37)
            {
              CFRelease(v37);
            }

            *(v19 + 232) = CFRetain(v36);
            *v19 |= 0x100u;
          }

          CFRelease(v36);
        }
      }

      __CFURLSetResourceInfoPtr();
      goto LABEL_37;
    }

    syslog(3, "_FSURLCreateWithPathAndAttributes: CFURLCreateFromFileSystemRepresentation failed; pathLen = %ld", v7);
  }

  else
  {
    if ((~*v19 & 0x8004) != 0)
    {
      v41 = 0;
      v33 = 0;
      goto LABEL_38;
    }

    v38 = fsgetpath(v50, 0x400uLL, (v19 + 104), *(v19 + 128));
    v39 = v38;
    if (v38 < 0)
    {
      v33 = 0;
      v41 = v38;
      goto LABEL_38;
    }

    v40 = objectTypeFromAccessMask(*(v19 + 16)) == 2;
    FileReferenceURLRef = CFURLCreateFromFileSystemRepresentation(allocator, v50, v39, v40);
    v33 = FileReferenceURLRef;
    if (FileReferenceURLRef)
    {
      goto LABEL_22;
    }
  }

LABEL_37:
  v41 = 0;
LABEL_38:
  CFRelease(v17);
  if (v49 && !v33)
  {
    v42 = CFURLCreateFromFileSystemRepresentation(allocator, v6, v7, 0);
    v43 = _FSURLCreateStandardError(allocator, *MEMORY[0x1E695E640], v41, 0, v42, 0);
    *v49 = v43;
    if (v42)
    {
      CFRelease(v42);
    }

LABEL_42:
    v33 = 0;
  }

  v44 = *MEMORY[0x1E69E9840];
  return v33;
}

uint64_t _FileCacheGetFlags(uint64_t result, unint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  if (!result)
  {
    return result;
  }

  v9 = result;
  _FileCacheLock(result);
  if (a2 && a3)
  {
    v10 = *(v9 + 48);
    if ((v10 & 1) == 0)
    {
      v11 = 0;
      v12 = 0;
LABEL_31:
      *a3 = v11;
      *a2 = v12;
      goto LABEL_32;
    }

    v13 = *(v9 + 64) & 0xF000;
    if (v13 == 0x4000)
    {
      v14 = 2;
    }

    else if (v13 == 40960)
    {
      v14 = 4;
    }

    else
    {
      v14 = v13 == 0x8000;
    }

    v15 = *(v9 + 68);
    v16 = v14 | (v10 >> 10) & 8 | (v15 >> 12) & 0x20;
    v17 = 32 * v15;
    v18 = v16 | (32 * v15) & 0x40;
    if (*(v9 + 48) & 0x800 | v15 & 0x8000)
    {
      v18 |= 0x80uLL;
      if ((v10 & 0x10) == 0)
      {
        v19 = 1;
LABEL_19:
        v20 = 239;
        goto LABEL_23;
      }
    }

    else
    {
      if ((v10 & 0x10) == 0)
      {
        v19 = 1;
        v20 = 111;
LABEL_23:
        v21 = v18 | v17 & 0x400;
        v22 = v20 | 0x7400;
        if ((v10 & 8) != 0)
        {
          v21 |= (v10 >> 13) & 0x1000 | (v10 >> 11) & 0x2000 | (v10 >> 9) & 0x4000;
        }

        else
        {
          v22 = v20 | 0x400;
        }

        if ((v21 & 4) != 0)
        {
          v22 |= 0x8000uLL;
          v21 |= 0x8000uLL;
        }

        else if (v21)
        {
          if ((v19 & 1) == 0)
          {
            v22 |= 0x8000uLL;
            v21 |= *(v9 + 216) & 0x8000;
          }
        }

        else
        {
          v22 |= 0x8000uLL;
        }

        v11 = v22 | 0x10000;
        v12 = v21 & 0xFFFFFFFFFFFEFFFFLL | (((v10 >> 14) & 1) << 16);
        goto LABEL_31;
      }

      v18 |= (*(v9 + 216) >> 7) & 0x80;
    }

    if ((*(v9 + 216) & 0x10) != 0)
    {
      v19 = 0;
      v18 |= 0x100uLL;
      v20 = 495;
      goto LABEL_23;
    }

    v19 = 0;
    if ((v10 & 0x8000000) != 0)
    {
      v20 = 495;
      if (*(v9 + 52) == 3)
      {
        v20 = 239;
      }

      goto LABEL_23;
    }

    goto LABEL_19;
  }

LABEL_32:
  if (a4 && a5)
  {
    v23 = *(v9 + 312);
    if (v23)
    {
      v24 = *(CFDataGetBytePtr(v23) + 4);
      v25 = -1;
    }

    else
    {
      v24 = 0;
      v25 = 0;
    }

    *a4 = v24;
    *a5 = v25;
  }

  v26 = *(v9 + 32) - 1;
  *(v9 + 32) = v26;
  if (!v26)
  {
    *(v9 + 24) = 0;
    os_unfair_lock_unlock((v9 + 36));
  }

  return 1;
}

uint64_t objectTypeFromAccessMask(__int16 a1)
{
  v1 = (a1 & 0xF000) - 4096;
  if (v1 >> 14 > 2)
  {
    return 0;
  }

  else
  {
    return dword_19605E75C[v1 >> 12];
  }
}

const void *createBaseCacheWithPathAndAttributes(CFAllocatorRef allocator, char *__src, size_t __n, int a4, _DWORD *a5, attrlist *a6, const void *a7, uint64_t a8, void **a9, __CFError **a10)
{
  v34 = *MEMORY[0x1E69E9840];
  v12 = __n;
  if (__n <= 0x3FF)
  {
    v16 = a7;
    strncpy(v33, __src, __n);
    v33[v12] = 0;
    v13 = FileCacheCreate(allocator);
    Attributes = _FileCacheGetAttributes(v13);
    if (a6)
    {
      v14 = parseAttributeBuffer(allocator, v33, a5, a6, a8, Attributes, v16);
      if (!v14)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v32 = *corePropertyAttrListTable;
      if (a4)
      {
        v21 = Attributes;
        commonattr = v32.commonattr | qword_1ED445704;
        *&v32.volattr = vorrq_s8(*&v32.volattr, *(&qword_1ED445704 + 4));
      }

      else
      {
        v21 = Attributes;
        commonattr = v32.commonattr;
      }

      v32.commonattr = commonattr | 0x80000000;
      v23 = calculateAttributeBufferSize(&v32, 0);
      MEMORY[0x1EEE9AC00](v23, v24, v25, v23);
      v27 = (&v32.bitmapcount - v26);
      if (filtered_getattrlist(v33, &v32, &v32 - v26, v28, 0x25u))
      {
        v14 = *__error();
      }

      else
      {
        v14 = parseAttributeBuffer(allocator, __src, &v32, v27, a8, v21, v16);
      }

      if (!v14)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v13 = 0;
    v14 = 63;
  }

  if (a9)
  {
    v29 = CFURLCreateFromFileSystemRepresentation(allocator, __src, v12, 0);
    *a9 = _FSURLCreateStandardError(allocator, *MEMORY[0x1E695E640], v14, 0, v29, 0);
    if (v29)
    {
      CFRelease(v29);
    }
  }

  if (v13)
  {
    CFRelease(v13);
    v13 = 0;
  }

LABEL_18:
  v30 = *MEMORY[0x1E69E9840];
  return v13;
}

CFURLRef _FSURLCreateWithPathAndExtendedAttributes(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9, char a10, char a11, int a12, unsigned int a13, uint64_t a14, void **a15)
{
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  v23 = a14;
  v21 = a12;
  v22 = a13;
  return __FSURLCreateWithPathAndAttributes(a1, v16, a15);
}

uint64_t FileCacheCreate(const __CFAllocator *a1)
{
  initGlobalsOnce();

  return _CFRuntimeCreateInstance();
}

uint64_t createIsSymbolicLinkValue(uint64_t a1, uint64_t a2, void *a3)
{
  if ((*(a2 + 16) & 0xF000) == 0xA000)
  {
    v3 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  *a3 = *v3;
  return 1;
}

BOOL _FSGetFileSystemRepresentationForFileID(const __CFAllocator *a1, int a2, uint64_t a3, char *a4, char *a5, CFErrorRef *a6)
{
  FileSystemPathForFileID = getFileSystemPathForFileID(a2, a3, a4, a5);
  v9 = FileSystemPathForFileID;
  if (a6)
  {
    if (!FileSystemPathForFileID)
    {
      v10 = *MEMORY[0x1E695E628];
      v11 = _FSURLCreateStandardError(a1, *MEMORY[0x1E695E628], 4, 0, 0, 0);
      *a6 = v11;
      if (!v11)
      {
        if (os_log_type_enabled(defaultLog, OS_LOG_TYPE_ERROR))
        {
          _FSGetFileSystemRepresentationForFileID_cold_1();
        }

        *a6 = CFErrorCreate(*MEMORY[0x1E695E480], v10, 256, 0);
      }
    }
  }

  return v9;
}

BOOL getFileSystemPathForFileID(int a1, uint64_t a2, char *a3, char *a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v8 = MountInfoStorageSize();
  v12 = MEMORY[0x1EEE9AC00](v8, v9, v10, v11);
  if (MountInfoPrepare(v20, a1, 0, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), 0, 0, 0))
  {
    v13 = v20[0];
    if (a2)
    {
      if ((MountInfoGetCapabilities(v20[0]) & 0x8000000000000) != 0)
      {
        FSID = MountInfoGetFSID(v20[0]);
        v15 = fsgetpath(a3, a4, &FSID, a2) >= 0;
        goto LABEL_10;
      }

      if (a2 != 2)
      {
        v15 = 0;
        goto LABEL_10;
      }

      v13 = v20[0];
    }

    MountPoint = MountInfoGetMountPoint(v13);
    v15 = strlcpy(a3, MountPoint, a4) < a4;
LABEL_10:
    MountInfoDestroy(v20[0]);
    goto LABEL_11;
  }

  v15 = 0;
LABEL_11:
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t createFileSecurityValue(uint64_t a1, uint64_t a2, CFFileSecurityRef *a3)
{
  if ((*a2 & 0x80) == 0)
  {
    return 0;
  }

  v6 = CFGetAllocator(*(a2 + 224));
  *a3 = CFFileSecurityCreateCopy(v6, *(a2 + 224));
  return 1;
}

void _FSURLSetCacheAutoFlushingEnabled(const __CFURL *a1, const void *a2, int a3)
{
  v4 = _FileCacheGetForURL(a1, a2);
  _FileCacheLock(v4);
  _FileCacheSetAutoFlushingEnabled(v4, a3);

  _FileCacheUnlock(v4);
}

uint64_t _FileCacheSetAutoFlushingEnabled(uint64_t result, int a2)
{
  v2 = atomic_load((result + 16));
  if (a2)
  {
    if (v2 > -2)
    {
      return result;
    }

    v3 = (result + 16);
    v4 = 1;
    goto LABEL_4;
  }

  if ((v2 & 0x80000000) == 0)
  {
    atomic_store(0xFFFFFFFE, (result + 16));
    return result;
  }

  v3 = (result + 16);
  v5 = atomic_load((result + 16));
  if (v5 != 0x80000000)
  {
    v4 = -1;
LABEL_4:
    atomic_fetch_add(v3, v4);
  }

  return result;
}

uint64_t _FSURLCopyResourcePropertyValuesAndFlags(const void *a1, uint64_t (*a2)(void, void, void, void, void, void, void), void *a3, void *a4, uint64_t (*a5)(void, void, void, void, void, void, void), void *a6, CFTypeRef cf, CFErrorRef *a8)
{
  v96 = a6;
  v106 = *MEMORY[0x1E69E9840];
  v101 = a1;
  v13 = _FileCacheGetForURL(a1, cf);
  v102 = v13;
  v17 = qword_1ED445788;
  v95 = a3;
  if (qword_1ED445930 != -1)
  {
    dispatch_once(&qword_1ED445930, &__block_literal_global_3);
  }

  if (_MergedGlobals)
  {
    v18 = 31;
  }

  else
  {
    v18 = 0;
  }

  v19 = MEMORY[0x1EEE9AC00](v13, v14, v15, v16);
  v21 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v19, v22, v23, v24);
  v29 = MEMORY[0x1EEE9AC00](v25, v27, &v91 - v26, v28);
  v31 = &v91 - v30;
  MEMORY[0x1EEE9AC00](v29, v32, v33, v34);
  v38 = MEMORY[0x1EEE9AC00](&v91 - v35, 8 * v17, v36, v37);
  v41 = (&v91 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = 0;
  if (v95 && a4 && v96)
  {
    v99 = a2;
    if (v17 >= 1)
    {
      v43 = v38;
      v44 = v31;
      v45 = v40;
      bzero(&v91 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v39);
      v40 = v45;
      v31 = v44;
      v38 = v43;
      a2 = v99;
    }

    v46 = qword_1ED445E10;
    v47 = (qword_1ED445938 + 24);
    do
    {
      v48 = *(v47 - 4);
      if (v48)
      {
        v49 = a5;
      }

      else
      {
        v49 = a2;
      }

      if ((v49 & v46) != 0)
      {
        v50 = *v47;
        v51 = **(*v47 + 140);
        v52 = v41[v51];
        if (v52 <= 95)
        {
          v53 = v18 * v51;
          *&v21[8 * v53 + 8 * v52] = v50[1];
          v40[v53 + v52] = 0;
          *&v31[8 * v53 + 8 * v52] = *v50;
          if (v48 == 1)
          {
            *(v38 + 8 * v53 + 8 * v52) = v46;
            v41[v51] = v52 + 1;
          }
        }
      }

      v46 = v47[1];
      v47 += 4;
    }

    while (v46);
    v100 = v40;
    v93 = a4;
    v94 = v38;
    _FileCacheLock(v102);
    v104 = 0u;
    memset(v105, 0, sizeof(v105));
    *buf = 0u;
    v54 = qword_1ED445E10;
    v55 = (qword_1ED445938 + 24);
    do
    {
      if (*(v55 - 4))
      {
        v56 = a5;
      }

      else
      {
        v56 = a2;
      }

      if ((v56 & v54) != 0)
      {
        addPropertyAndDependenciesToBitmap(*v55, buf);
      }

      v54 = v55[1];
      v55 += 4;
    }

    while (v54);
    v57 = v102;
    _FileCacheLockTransitionToPreparer(v102);
    v42 = prepareValuesForBitmap(v101, v57, buf, a8);
    _FileCacheLockTransitionFromPreparer(v57);
    if (!v42)
    {
      goto LABEL_85;
    }

    v97 = v31;
    v98 = v21;
    v58 = 8 * v18;
    if (v17 >= 1)
    {
      v91 = v17;
      v92 = a8;
      v59 = 0;
      v60 = v41;
      v61 = &unk_1ED4457A0;
      do
      {
        v63 = *v60++;
        v62 = v63;
        if (v63 >= 1)
        {
          v64 = *(v61 - 1);
          a2 = *v61;
          v65 = v41;
          v66 = v102;
          _FileCacheIncrementInProvider(v102);
          v67 = a2(v101, v66, &v98[v59], v100 + v59, &v97[v59], v62, v64);
          LOWORD(a2) = v99;
          v42 = v67;
          v68 = v66;
          v41 = v65;
          _FileCacheDecrementInProvider(v68);
        }

        v59 += v58;
        v61 += 7;
        --v17;
      }

      while (v17);
      v17 = v91;
      a8 = v92;
      if (!v42)
      {
        goto LABEL_85;
      }
    }

    v69 = v95;
    *v96 = 0;
    *v69 = 0;
    Attributes = _FileCacheGetAttributes(v102);
    v71 = Attributes;
    v72 = v93;
    v73 = v100;
    if (a2)
    {
      v74 = *(Attributes + 8);
      if (!v74)
      {
        *v93 = 0;
        if ((a2 & 2) == 0)
        {
LABEL_39:
          v76 = v94;
          if ((a2 & 4) != 0)
          {
            *v69 |= 4uLL;
            v77 = *(v71 + 112);
            if (v77)
            {
              v78 = 0;
            }

            else
            {
              v77 = *(v71 + 104);
              v78 = *(v71 + 108) << 32;
            }

            v72[2] = v78 | v77;
            if ((a2 & 8) == 0)
            {
LABEL_41:
              if ((a2 & 0x10) == 0)
              {
                goto LABEL_42;
              }

              goto LABEL_57;
            }
          }

          else if ((a2 & 8) == 0)
          {
            goto LABEL_41;
          }

          *v69 |= 8uLL;
          v72[3] = *(v71 + 120);
          if ((a2 & 0x10) == 0)
          {
LABEL_42:
            if ((a2 & 0x20) == 0)
            {
              goto LABEL_43;
            }

            goto LABEL_61;
          }

LABEL_57:
          v79 = *(v71 + 80);
          if (v79 == -1.0 - *MEMORY[0x1E695E460])
          {
            v79 = -*MEMORY[0x1E695E468];
          }

          else
          {
            *v69 |= 0x10uLL;
          }

          *(v72 + 4) = v79;
          if ((a2 & 0x20) == 0)
          {
LABEL_43:
            if ((a2 & 0x40) == 0)
            {
              goto LABEL_44;
            }

            goto LABEL_62;
          }

LABEL_61:
          *v69 |= 0x20uLL;
          v72[5] = *(v71 + 64);
          if ((a2 & 0x40) == 0)
          {
LABEL_44:
            if ((a2 & 0x80) == 0)
            {
              goto LABEL_45;
            }

            goto LABEL_63;
          }

LABEL_62:
          *v69 |= 0x40uLL;
          v72[6] = *(v71 + 72);
          if ((a2 & 0x80) == 0)
          {
LABEL_45:
            if ((a2 & 0x100) == 0)
            {
              goto LABEL_46;
            }

            goto LABEL_64;
          }

LABEL_63:
          *v69 |= 0x80uLL;
          v72[7] = *(v71 + 208);
          if ((a2 & 0x100) == 0)
          {
LABEL_46:
            if ((a2 & 0x200) == 0)
            {
              goto LABEL_47;
            }

            goto LABEL_65;
          }

LABEL_64:
          *v69 |= 0x100uLL;
          v72[8] = *(v71 + 216);
          if ((a2 & 0x200) == 0)
          {
LABEL_47:
            if ((a2 & 0x400) == 0)
            {
              goto LABEL_48;
            }

            goto LABEL_66;
          }

LABEL_65:
          *v69 |= 0x200uLL;
          v72[9] = *(v71 + 192);
          if ((a2 & 0x400) == 0)
          {
LABEL_48:
            if ((a2 & 0x800) == 0)
            {
              goto LABEL_72;
            }

            goto LABEL_67;
          }

LABEL_66:
          *v69 |= 0x400uLL;
          v72[10] = *(v71 + 200);
          if ((a2 & 0x800) == 0)
          {
LABEL_72:
            if ((a2 & 0x1000) != 0)
            {
              if ((*v71 & 0x80) != 0)
              {
                *v69 |= 0x1000uLL;
                v81 = CFGetAllocator(v101);
                Copy = CFFileSecurityCreateCopy(v81, *(v71 + 224));
                v73 = v100;
              }

              else
              {
                Copy = 0;
              }

              v72[15] = Copy;
              v76 = v94;
            }

            if (v17 >= 1)
            {
              v82 = 0;
              v83 = *MEMORY[0x1E695E4D0];
              v84 = v96;
              do
              {
                v85 = v41[v82];
                if (v85 >= 1)
                {
                  v86 = v73;
                  v87 = v76;
                  do
                  {
                    if (*v86 == v83)
                    {
                      *v84 |= *v87;
                    }

                    ++v87;
                    ++v86;
                    --v85;
                  }

                  while (v85);
                }

                ++v82;
                v76 = (v76 + v58);
                v73 = (v73 + v58);
              }

              while (v82 != v17);
            }

LABEL_85:
            _FileCacheUnlock(v102);
            goto LABEL_86;
          }

LABEL_67:
          *v69 |= 0x800uLL;
          if ((*v71 & 0x4000010) == 0x10)
          {
            *(v72 + 11) = *(v71 + 160);
            *(v72 + 13) = *(v71 + 176);
          }

          else
          {
            *(v72 + 13) = 0u;
            *(v72 + 11) = 0u;
          }

          if ((*(v71 + 16) & 0xF000) == 0xA000)
          {
            v72[11] = 0x72686170736C6E6BLL;
            *(v72 + 48) = v72[12] & 0x4000 | 0x8000;
            v72[13] = 0;
            v72[14] = 0;
          }

          goto LABEL_72;
        }

LABEL_38:
        *v69 |= 2uLL;
        *(v72 + 2) = *(v71 + 24);
        goto LABEL_39;
      }

      v75 = CFRetain(v74);
      v73 = v100;
      *v72 = v75;
      *v69 |= 1uLL;
    }

    if ((a2 & 2) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_86:
  if (a8 && !v42 && !*a8)
  {
    v88 = defaultLog;
    if (os_log_type_enabled(defaultLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_19602C000, v88, OS_LOG_TYPE_ERROR, "_FSURLCopyResourcePropertyValuesAndFlags: false result with no real error", buf, 2u);
    }

    *a8 = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E628], 256, 0);
  }

  v89 = *MEMORY[0x1E69E9840];
  return v42;
}

BOOL corePropertyProviderSetValues(const __CFString *a1, uint64_t a2, CFTypeRef *a3, const void **a4, uint64_t a5, uint64_t a6, uint64_t a7, CFErrorRef *a8)
{
  v253 = *MEMORY[0x1E69E9840];
  Attributes = _FileCacheGetAttributes(a2);
  *&v250.bitmapcount = xmmword_19605E6E0;
  *&v250.fileattr = 0;
  *&v249.bitmapcount = xmmword_19605E6E0;
  *&v249.fileattr = 0;
  v248 = 0;
  v246 = 0u;
  v247 = 0u;
  v245 = 0;
  v14 = MountInfoStorageSize();
  v18 = &v184 - ((MEMORY[0x1EEE9AC00](v14, v15, v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!CFURLGetFileSystemRepresentation(a1, 1u, v252, 1024))
  {
    if (a8)
    {
      v41 = CFGetAllocator(a1);
      v42 = _FSURLCreateStandardError(v41, *MEMORY[0x1E695E628], 4, 1, a1, 0);
      v43 = 0;
      *a8 = v42;
    }

    else
    {
      v43 = 0;
    }

    goto LABEL_406;
  }

  v210 = v18;
  v208 = a2;
  v219 = a1;
  v220 = &v184;
  v227 = a8;
  if (a6 < 1)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v37 = 0;
    v233 = 0;
    v234 = 0;
    v38 = 0;
    v39 = 0;
    v226 = 0;
    v222 = 0;
    v223 = 0;
    v36 = 0;
    v224 = 0;
    v228 = 0;
    v236 = 0;
    v237 = 0;
    LODWORD(v211) = 0;
    v30 = 0;
    v40 = 0;
    v217 = 0;
    v221 = 0;
    v243 = 0;
    v20 = 0;
    LODWORD(v214) = 1;
    goto LABEL_75;
  }

  v20 = 0;
  v242 = 0;
  v243 = 0;
  v236 = 0;
  v237 = 0;
  v221 = 0;
  v222 = 0;
  v217 = 0;
  v218 = 0;
  v214 = 0;
  v216 = 0;
  LODWORD(v215) = 0;
  v232 = 0;
  v233 = 0;
  v228 = 0;
  v229 = 0;
  v223 = 0;
  v224 = 0;
  v226 = 0;
  v240 = 0;
  v241 = 0;
  v234 = 0;
  v235 = 0;
  v230 = 0;
  v231 = 0;
  v212 = 0;
  v21 = *MEMORY[0x1E695EBE8];
  v22 = *MEMORY[0x1E695EA50];
  v238 = *MEMORY[0x1E695EA48];
  v225 = *MEMORY[0x1E695EA40];
  *&v19 = 138412546;
  v192 = v19;
  v211 = *MEMORY[0x1E695EA00];
  v209 = *MEMORY[0x1E695E2C0];
  v207 = *MEMORY[0x1E695EB40];
  v206 = *MEMORY[0x1E695EB18];
  v205 = *MEMORY[0x1E695EB10];
  v204 = *MEMORY[0x1E695EBB0];
  v203 = *MEMORY[0x1E695E358];
  v202 = *MEMORY[0x1E695EB90];
  v201 = *MEMORY[0x1E695E348];
  v200 = *MEMORY[0x1E695E360];
  v199 = *MEMORY[0x1E695E2F8];
  v198 = *MEMORY[0x1E695E368];
  v197 = *MEMORY[0x1E695E350];
  v196 = *MEMORY[0x1E695E328];
  v195 = *MEMORY[0x1E695EB80];
  v194 = *MEMORY[0x1E695E320];
  v193 = *MEMORY[0x1E695E318];
  v191 = *MEMORY[0x1E695E340];
  v190 = *MEMORY[0x1E695EAE8];
  v189 = *MEMORY[0x1E695EAA8];
  v188 = *MEMORY[0x1E695EAB0];
  v187 = *MEMORY[0x1E695EA90];
  v186 = *MEMORY[0x1E695EA98];
  v185 = *MEMORY[0x1E695EAA0];
  v23 = a6;
  do
  {
    v24 = *a3;
    v25 = *a4;
    if (CFEqual(*a3, v21))
    {
      v20 = v25;
      goto LABEL_23;
    }

    if (CFEqual(v24, v22))
    {
      v250.commonattr |= 0x200u;
      v243 = v25;
      goto LABEL_23;
    }

    if (CFEqual(v24, v238))
    {
      v250.commonattr |= 0x400u;
      v236 = v25;
      goto LABEL_23;
    }

    if (CFEqual(v24, v225))
    {
      v250.commonattr |= 0x1000u;
      v221 = v25;
      goto LABEL_23;
    }

    if (CFEqual(v24, v211))
    {
      v250.commonattr |= 0x10000000u;
      v217 = v25;
      goto LABEL_23;
    }

    if (CFEqual(v24, v209))
    {
      v250.commonattr |= 0x4000u;
      v242 = v25;
      goto LABEL_23;
    }

    if (CFEqual(v24, v207))
    {
      v216 = valueOfBoolean(v25);
      if (v216)
      {
        v26 = (~*Attributes & 0x801) != 0;
      }

      else
      {
        v26 = 1;
      }

      LODWORD(v215) = v26;
      v250.commonattr |= 0x44000u;
      v214 = v25;
    }

    else
    {
      if (CFEqual(v24, v206))
      {
        v250.commonattr |= 0x4000u;
        v237 = v25;
        goto LABEL_23;
      }

      if (CFEqual(v24, v205))
      {
        v250.commonattr |= 0x4000u;
        v233 = v25;
        goto LABEL_23;
      }

      if (CFEqual(v24, v204))
      {
        v250.commonattr |= 0x4000u;
        v228 = v25;
        goto LABEL_23;
      }

      if (CFEqual(v24, v203))
      {
        v250.commonattr |= 0x40000u;
        v224 = v25;
        goto LABEL_23;
      }

      if (CFEqual(v24, v202))
      {
        v250.commonattr |= 0x40000u;
        v232 = v25;
        goto LABEL_23;
      }

      if (CFEqual(v24, v201))
      {
        v250.commonattr |= 0x40000u;
        v223 = v25;
        goto LABEL_23;
      }

      if (CFEqual(v24, v200))
      {
        v250.commonattr |= 0x40000u;
        v222 = v25;
        goto LABEL_23;
      }

      if (CFEqual(v24, v199))
      {
        v250.commonattr |= 0x40000u;
        v226 = v25;
        goto LABEL_23;
      }

      if (CFEqual(v24, v198))
      {
        v250.commonattr |= 0x40000u;
        v241 = v25;
        goto LABEL_23;
      }

      if (CFEqual(v24, v197))
      {
        v250.commonattr |= 0x40000u;
        v240 = v25;
        goto LABEL_23;
      }

      if (CFEqual(v24, v196))
      {
        if (!_CFGetEUID())
        {
          v250.commonattr |= 0x40000u;
          v234 = v25;
        }
      }

      else if (CFEqual(v24, v195))
      {
        if (!_CFGetEUID())
        {
          v250.commonattr |= 0x40000u;
          v231 = v25;
        }
      }

      else if (CFEqual(v24, v194))
      {
        if (!_CFGetEUID())
        {
          v250.commonattr |= 0x40000u;
          v230 = v25;
        }
      }

      else if (CFEqual(v24, v193))
      {
        if (!_CFGetEUID())
        {
          v250.commonattr |= 0x40000u;
          v229 = v25;
        }
      }

      else if (CFEqual(v24, v191))
      {
        if (!_CFGetEUID())
        {
          v250.commonattr |= 0x40000u;
          v218 = v25;
        }
      }

      else
      {
        if (CFEqual(v24, v190))
        {
          v250.commonattr |= 0x1C38000u;
          v212 = v25;
          goto LABEL_23;
        }

        if (CFEqual(v24, v189))
        {
          if (CFEqual(v25, v188))
          {
            v27 = 4;
LABEL_69:
            v235 = v27;
            goto LABEL_23;
          }

          if (CFEqual(v25, v187))
          {
            v27 = 1;
            goto LABEL_69;
          }

          if (CFEqual(v25, v186))
          {
            v27 = 2;
            goto LABEL_69;
          }

          if (CFEqual(v25, v185))
          {
            v27 = 3;
            goto LABEL_69;
          }

          v28 = defaultLog;
          v29 = os_log_type_enabled(defaultLog, OS_LOG_TYPE_DEFAULT);
          v235 = 0;
          if (v29)
          {
            *v251 = v192;
            *&v251[4] = v25;
            *&v251[12] = 2112;
            *&v251[14] = v219;
            _os_log_impl(&dword_19602C000, v28, OS_LOG_TYPE_DEFAULT, "ignoring unsupported value: kCFURLFileProtectionKey=%@ for %@", v251, 0x16u);
            v235 = 0;
          }
        }
      }
    }

LABEL_23:
    ++a4;
    ++a3;
    --a6;
  }

  while (a6);
  v30 = v214 != 0;
  LODWORD(v211) = v215 != 0;
  LODWORD(v214) = v216 == 0;
  a6 = v23;
  v31 = v235;
  v32 = v212;
  v33 = v218;
  v34 = v229;
  v35 = v230;
  v37 = v231;
  v36 = v232;
  v38 = v240;
  v39 = v241;
  v40 = v242;
LABEL_75:
  v240 = v38;
  v241 = v39;
  v232 = v36;
  v242 = v40;
  LODWORD(v238) = v30;
  v213 = a6;
  if (!v20 && !v40 && (v30 & 1) == 0 && !v237 && !v233 && !v228 && !v31)
  {
    LODWORD(v225) = 0;
    v44 = 0;
    LODWORD(v209) = 0;
    goto LABEL_93;
  }

  v45 = Attributes;
  v46 = *Attributes;
  if (*Attributes)
  {
    LODWORD(v209) = *(Attributes + 112);
    v44 = *(Attributes + 104);
    v47 = objectTypeFromAccessMask(*(Attributes + 16));
    v45 = Attributes;
    LODWORD(v225) = v47;
  }

  else
  {
    LODWORD(v225) = 0;
    v44 = 0;
    LODWORD(v209) = 0;
    v249.commonattr |= 0x8000000C;
  }

  if ((v242 != 0) | v238 & 1 || v237 || v233 || v228)
  {
    if (v242)
    {
      v55 = v242;
      if (CFDataGetLength(v242) == 32)
      {
        v254.location = 0;
        v254.length = 32;
        CFDataGetBytes(v55, v254, &v246);
        if (!v31)
        {
          goto LABEL_92;
        }

        goto LABEL_91;
      }

      v45 = Attributes;
      v46 = *Attributes;
    }

    if ((v46 & 0x10) != 0)
    {
      v82 = *(v45 + 176);
      v246 = *(v45 + 160);
      v247 = v82;
      if (!v31)
      {
        goto LABEL_92;
      }
    }

    else
    {
      v249.commonattr |= 0x8004400C;
      if (!v31)
      {
        goto LABEL_92;
      }
    }

LABEL_91:
    v249.commonattr |= 0xC0000008;
    goto LABEL_92;
  }

  if (v31)
  {
    goto LABEL_91;
  }

LABEL_92:
  v38 = v240;
  v39 = v241;
  v36 = v232;
  v30 = v238;
LABEL_93:
  if (v224)
  {
    v48 = 1;
  }

  else
  {
    v48 = v30;
  }

  if (v36)
  {
    v48 = 1;
  }

  if (v223)
  {
    v48 = 1;
  }

  if (v222)
  {
    v48 = 1;
  }

  v49 = v226;
  LODWORD(v218) = v48;
  if ((v48 & 1) != 0 || v226 || v39 || v38 || v234 || v37 || v35 || v34 || v33)
  {
    v249.commonattr |= 0x8004000C;
  }

  v229 = v34;
  v230 = v35;
  if (v20)
  {
    v50 = Attributes;
    if (*Attributes)
    {
      v216 = (*Attributes >> 13) & 1;
    }

    else
    {
      v216 = 0;
      v249.dirattr |= 4u;
    }
  }

  else
  {
    v216 = 0;
    v50 = Attributes;
  }

  if (v226)
  {
    v51 = 1;
  }

  else
  {
    v51 = v30;
  }

  if (v32)
  {
    v52 = 1;
  }

  else
  {
    v52 = v51;
  }

  v235 = v31;
  if (v52 == 1)
  {
    v53 = *v50;
    if (*v50)
    {
      Attributes = (v53 >> 17) & 1;
      v54 = (v53 >> 19) & 1;
      v215 = (v53 >> 21) & 1;
    }

    else
    {
      v215 = 0;
      v54 = 0;
      Attributes = 0;
      v249.commonattr |= 0x80000004;
    }
  }

  else
  {
    v215 = 0;
    v54 = 0;
    Attributes = 0;
  }

  v231 = v37;
  if ((vmaxv_u16(vmovn_s32(vtstq_s32(*&v249.commonattr, *&v249.commonattr))) & 1) == 0 && !v249.forkattr)
  {
    LODWORD(v212) = 0;
    v56 = 0;
    v43 = 1;
    goto LABEL_167;
  }

  v57 = calculateAttributeBufferSize(&v249, 0);
  MEMORY[0x1EEE9AC00](v57, v58, v59, v57);
  v61 = &v184 - v60;
  v63 = filtered_getattrlist(v252, &v249, &v184 - v60, v62, 0x21u);
  v43 = v63 == 0;
  if (v63)
  {
    v65 = v227;
    if (v227)
    {
      v210 = v54;
      v66 = v33;
      v67 = v20;
      v68 = v32;
      v69 = v219;
      v70 = CFGetAllocator(v219);
      v71 = *MEMORY[0x1E695E640];
      v72 = __error();
      v73 = v69;
      v32 = v68;
      v20 = v67;
      v33 = v66;
      LODWORD(v54) = v210;
      v74 = _FSURLCreateStandardError(v70, v71, *v72, 1, v73, 0);
      LODWORD(v212) = 0;
      v56 = 0;
      *v65 = v74;
    }

    else
    {
      LODWORD(v212) = 0;
      v56 = 0;
    }

LABEL_166:
    v49 = v226;
    goto LABEL_167;
  }

  v75 = *(v61 + 1);
  if ((v75 & 4) != 0)
  {
    v44 = *(v61 + 6);
    v76 = v61 + 32;
  }

  else
  {
    v76 = v61 + 24;
  }

  v49 = v226;
  if ((v75 & 8) != 0)
  {
    v79 = *v76;
    v76 += 4;
    LODWORD(v225) = v79;
    if ((v75 & 0x4000) != 0)
    {
      goto LABEL_149;
    }

LABEL_145:
    if ((v75 & 0x40000) == 0)
    {
      goto LABEL_146;
    }

LABEL_159:
    v83 = *v76;
    v76 += 4;
    LODWORD(v212) = v83;
    if ((v75 & 0x40000000) == 0)
    {
      goto LABEL_160;
    }

LABEL_147:
    v78 = *v76;
    v76 += 4;
    v77 = v78;
  }

  else
  {
    if ((v75 & 0x4000) == 0)
    {
      goto LABEL_145;
    }

LABEL_149:
    v80 = *(v76 + 1);
    v246 = *v76;
    v81.i32[1] = DWORD1(v246);
    v247 = v80;
    v81.i32[0] = 2;
    v64.i32[0] = v225;
    *&v246 = vbsl_s8(vdup_lane_s32(vceq_s32(v64, v81), 0), vrev16_s8(*&v246), vrev32_s8(*&v246));
    *(&v246 + 1) = vrev16_s8(*(&v246 + 8));
    if (v225 == 2)
    {
      WORD1(v247) = bswap32(WORD1(v247)) >> 16;
      LOWORD(v247) = bswap32(v247) >> 16;
      DWORD1(v247) = bswap32(DWORD1(v247));
    }

    else
    {
      *&v247 = vrev16_s8(*&v247);
    }

    WORD4(v247) = bswap32(WORD4(v247)) >> 16;
    WORD5(v247) = bswap32(WORD5(v247)) >> 16;
    HIDWORD(v247) = bswap32(HIDWORD(v247));
    v76 += 32;
    if ((v75 & 0x40000) != 0)
    {
      goto LABEL_159;
    }

LABEL_146:
    LODWORD(v212) = 0;
    if ((v75 & 0x40000000) != 0)
    {
      goto LABEL_147;
    }

LABEL_160:
    v77 = 0;
  }

  if ((v61[12] & 4) != 0)
  {
    v216 = *v76 & 1;
  }

  v56 = v77;
  if (v52)
  {
    if (MountInfoPrepare(&v245, v209, v44, v210, 0, 0, 0))
    {
      Capabilities = MountInfoGetCapabilities(v245);
      Attributes = (Capabilities >> 47) & 1;
      v54 = (Capabilities >> 59) & 1;
      v215 = (Capabilities >> 58) & 1;
    }

    goto LABEL_166;
  }

LABEL_167:
  v85 = 0;
  if (v49 && v54)
  {
    v250.commonattr |= 0x40000u;
    v85 = v49;
  }

  if (v32 && Attributes && !CFFileSecurityCopyAccessControlList(v32, &v248))
  {
    v248 = 0;
  }

  v86 = v234;
  v87 = v235;
  if (v43 && v250.commonattr)
  {
    LODWORD(v226) = v56;
    if (v248)
    {
      v88 = acl_size(v248);
    }

    else
    {
      v88 = 0;
    }

    v209 = calculateAttributeBufferSize(&v250, v88);
    v210 = &v184;
    MEMORY[0x1EEE9AC00](v209, v89, v90, v91);
    v93 = (&v184 - v92);
    v250.commonattr = 0;
    v94 = (&v184 - v92);
    v95 = v243;
    if (v243)
    {
      if (CFEqual(v243, *MEMORY[0x1E695E738]))
      {
        *v93 = 0;
        v93[1] = 0;
      }

      else
      {
        v96 = MEMORY[0x19A8C6F70](v95);
        *v251 = 0;
        v97 = modf(v96, v251);
        v98 = *v251;
        if (v97 < 0.0)
        {
          v98 = *v251 + -1.0;
          v97 = v97 + 1.0;
        }

        *v93 = (v98 + *MEMORY[0x1E695E468]);
        v93[1] = (v97 * 1000000000.0 + 0.5);
      }

      v94 = v93 + 2;
      v250.commonattr |= 0x200u;
    }

    v99 = v236;
    if (v236)
    {
      if (CFEqual(v236, *MEMORY[0x1E695E738]))
      {
        *v94 = 0;
        v94[1] = 0;
      }

      else
      {
        v100 = MEMORY[0x19A8C6F70](v99);
        *v251 = 0;
        v101 = modf(v100, v251);
        v102 = *v251;
        if (v101 < 0.0)
        {
          v102 = *v251 + -1.0;
          v101 = v101 + 1.0;
        }

        *v94 = (v102 + *MEMORY[0x1E695E468]);
        v94[1] = (v101 * 1000000000.0 + 0.5);
      }

      v94 += 2;
      v250.commonattr |= 0x400u;
    }

    v103 = v221;
    if (v221)
    {
      if (CFEqual(v221, *MEMORY[0x1E695E738]))
      {
        *v94 = 0;
        v94[1] = 0;
      }

      else
      {
        v105 = MEMORY[0x19A8C6F70](v103);
        *v251 = 0;
        v106 = modf(v105, v251);
        v107 = *v251;
        if (v106 < 0.0)
        {
          v107 = *v251 + -1.0;
          v106 = v106 + 1.0;
        }

        *v94 = (v107 + *MEMORY[0x1E695E468]);
        v94[1] = (v106 * 1000000000.0 + 0.5);
      }

      v104 = v238;
      v94 += 2;
      v250.commonattr |= 0x1000u;
    }

    else
    {
      v104 = v238;
    }

    if ((v242 != 0) | v104 & 1 || v237 || v233 || v228)
    {
      *v251 = v246;
      *&v251[16] = v247;
      if ((v104 & v211) == 1)
      {
        if (v214)
        {
          v108 = 0;
        }

        else
        {
          v108 = 0x4000;
        }

        WORD4(v246) = WORD4(v246) & 0xBFFF | v108;
      }

      if (v237 && v225 == 1)
      {
        v109 = valueOfBoolean(v237) != 0;
        WORD4(v246) = WORD4(v246) & 0x7FFF | (v109 << 15);
      }

      if (v233)
      {
        v110 = valueOfBoolean(v233) != 0;
        WORD4(v246) = WORD4(v246) & 0xFFEF | (16 * v110);
      }

      if (v228)
      {
        LODWORD(v244) = 0;
        if (CFNumberGetValue(v228, kCFNumberSInt32Type, &v244))
        {
          if (v244 <= 7)
          {
            WORD4(v246) = WORD4(v246) & 0xFFF1 | (2 * v244);
          }
        }
      }

      if (v242 || (*v251 == v246 ? (v111 = *&v251[8] == *(&v246 + 1)) : (v111 = 0), v111 ? (v112 = *&v251[16] == v247) : (v112 = 0), v112 ? (v113 = *&v251[24] == *(&v247 + 1)) : (v113 = 0), !v113))
      {
        v114 = v247;
        *v94->i8 = v246;
        *v94[2].i8 = v114;
        if (v225 == 2)
        {
          v115 = vrev16_s8(*v94);
        }

        else
        {
          v115 = vrev32_s8(*v94);
        }

        v116 = vrev16_s8(v94[1]);
        *v94 = v115;
        v94[1] = v116;
        if (v225 == 2)
        {
          v94[2].i16[1] = bswap32(v94[2].u16[1]) >> 16;
          v94[2].i16[0] = bswap32(v94[2].u16[0]) >> 16;
          v94[2].i32[1] = bswap32(v94[2].u32[1]);
        }

        else
        {
          v94[2] = vrev16_s8(v94[2]);
        }

        v94[3].i16[0] = bswap32(v94[3].u16[0]) >> 16;
        v94[3].i16[1] = bswap32(v94[3].u16[1]) >> 16;
        v94[3].i32[1] = bswap32(v94[3].u32[1]);
        v94 += 4;
        v250.commonattr |= 0x4000u;
      }
    }

    if (v32)
    {
      *v251 = 0;
      if (CFFileSecurityGetOwner(v32, v94))
      {
        v94 = (v94 + 4);
        v250.commonattr |= 0x8000u;
      }

      if (CFFileSecurityGetGroup(v32, v94))
      {
        v94 = (v94 + 4);
        v250.commonattr |= 0x10000u;
      }

      if (CFFileSecurityGetMode(v32, v251))
      {
        v94->i32[0] = *v251;
        v94 = (v94 + 4);
        v250.commonattr |= 0x20000u;
      }
    }

    v117 = v218;
    if (v85)
    {
      v117 = 1;
    }

    if ((v117 & 1) == 0 && !v241 && !v240 && !v86 && !v231 && !v230 && !v229 && !v33)
    {
      v118 = v227;
      goto LABEL_315;
    }

    if (v215)
    {
      v119 = v104;
    }

    else
    {
      v119 = 0;
    }

    v120 = v212;
    v121 = v212;
    if (v119 == 1)
    {
      if (v214)
      {
        v121 = v212 & 0xFFFF7FFF;
      }

      else
      {
        v121 = v212 | 0x8000;
      }
    }

    v218 = v33;
    if (v224)
    {
      v122 = valueOfBoolean(v224);
      v118 = v227;
      if (v122)
      {
        v121 |= 1u;
      }

      else
      {
        v121 &= ~1u;
      }
    }

    else
    {
      v118 = v227;
    }

    if (v232)
    {
      if (valueOfBoolean(v232))
      {
        v121 |= 2u;
      }

      else
      {
        v121 &= ~2u;
      }
    }

    if (v223)
    {
      if (valueOfBoolean(v223))
      {
        v121 |= 4u;
      }

      else
      {
        v121 &= ~4u;
      }
    }

    if (v222)
    {
      if (valueOfBoolean(v222))
      {
        v121 |= 8u;
        goto LABEL_278;
      }

      v121 &= ~8u;
      if (!v85)
      {
LABEL_284:
        v123 = v229;
        if (v241)
        {
          if (valueOfBoolean(v241))
          {
            v121 |= 0x40u;
          }

          else
          {
            v121 &= ~0x40u;
          }
        }

        if (v240)
        {
          if (valueOfBoolean(v240))
          {
            v121 |= 0x80u;
          }

          else
          {
            v121 &= ~0x80u;
          }
        }

        if (v234)
        {
          if (valueOfBoolean(v234))
          {
            v121 |= 0x10000u;
          }

          else
          {
            v121 &= ~0x10000u;
          }
        }

        if (v231)
        {
          if (valueOfBoolean(v231))
          {
            v121 |= 0x20000u;
          }

          else
          {
            v121 &= ~0x20000u;
          }
        }

        if (v230)
        {
          if (valueOfBoolean(v230))
          {
            v121 |= 0x40000u;
            goto LABEL_303;
          }

          v121 &= ~0x40000u;
          if (!v123)
          {
LABEL_309:
            if (v218)
            {
              if (valueOfBoolean(v218))
              {
                v121 |= 0x100000u;
              }

              else
              {
                v121 &= ~0x100000u;
              }
            }

            if (v121 != v120)
            {
              v94->i32[0] = v121;
              v94 = (v94 + 4);
              v250.commonattr |= 0x40000u;
            }

LABEL_315:
            v124 = v217;
            if (v32)
            {
              if (v248)
              {
                v125 = &v94[1];
                v250.commonattr |= 0x400000u;
              }

              else
              {
                v125 = v94;
                v94 = 0;
              }

              if (Attributes)
              {
                *v251 = 0;
                if (CFFileSecurityCopyOwnerUUID(v32, v251))
                {
                  *v125++ = CFUUIDGetUUIDBytes(*v251);
                  CFRelease(*v251);
                  v250.commonattr |= 0x800000u;
                }

                if (CFFileSecurityCopyGroupUUID(v32, v251))
                {
                  *v125++ = CFUUIDGetUUIDBytes(*v251);
                  CFRelease(*v251);
                  v250.commonattr |= 0x1000000u;
                }
              }

              if (v94)
              {
                v126 = acl_size(v248);
                bzero(v125, v126);
                v94->i32[0] = v125 - v94;
                v127 = v248;
                v128 = acl_size(v248);
                v129 = acl_copy_ext_native(v125, v127, v128);
                v94->i32[1] = v129;
                v94 = (&v125->byte0 + v129);
                goto LABEL_326;
              }

              v94 = v125;
              if (!v124)
              {
LABEL_335:
                v133 = setattrlist(v252, &v250, v93, v209, 1u);
                v43 = v133 == 0;
                if (v118 && v133)
                {
                  v134 = v219;
                  v135 = CFGetAllocator(v219);
                  v136 = *MEMORY[0x1E695E640];
                  v137 = __error();
                  *v118 = _FSURLCreateStandardError(v135, v136, *v137, 1, v134, 0);
                }

                v56 = v226;
                goto LABEL_339;
              }
            }

            else
            {
LABEL_326:
              if (!v124)
              {
                goto LABEL_335;
              }
            }

            if (CFEqual(v124, *MEMORY[0x1E695E738]))
            {
              *v94 = 0;
              v94[1] = 0;
            }

            else
            {
              v130 = MEMORY[0x19A8C6F70](v124);
              *v251 = 0;
              v131 = modf(v130, v251);
              v132 = *v251;
              if (v131 < 0.0)
              {
                v132 = *v251 + -1.0;
                v131 = v131 + 1.0;
              }

              *v94 = (v132 + *MEMORY[0x1E695E468]);
              v94[1] = (v131 * 1000000000.0 + 0.5);
            }

            v250.commonattr |= 0x10000000u;
            goto LABEL_335;
          }
        }

        else
        {
LABEL_303:
          if (!v123)
          {
            goto LABEL_309;
          }
        }

        if (valueOfBoolean(v123))
        {
          v121 |= 0x80000u;
        }

        else
        {
          v121 &= ~0x80000u;
        }

        goto LABEL_309;
      }
    }

    else
    {
LABEL_278:
      if (!v85)
      {
        goto LABEL_284;
      }
    }

    if (valueOfBoolean(v85))
    {
      v121 |= 0x20u;
    }

    else
    {
      v121 &= ~0x20u;
    }

    goto LABEL_284;
  }

LABEL_339:
  v138 = v227;
  if (!v43 || !v87 || v87 == v56 || (v225 - 1) > 1)
  {
    goto LABEL_364;
  }

  if (v225 != 1)
  {
    v141 = opendir(v252);
    if (v141)
    {
      v140 = v141;
      v139 = dirfd(v141);
      if ((v139 & 0x80000000) == 0)
      {
        goto LABEL_348;
      }
    }

LABEL_354:
    v147 = 1;
    goto LABEL_360;
  }

  v139 = open(v252, 1);
  v140 = 0;
  if (v139 < 0)
  {
    goto LABEL_354;
  }

LABEL_348:
  v244 = 0;
  v142 = *MEMORY[0x1E695EDD0];
  v143 = v219;
  v144 = __CFURLResourceInfoPtr();
  if (!_FSURLCopyResourcePropertyForKeyInternal(v143, v142, &v244, v144, 0, 1))
  {
    fcntl(v139, 64, v87);
LABEL_356:
    v147 = 0;
    goto LABEL_357;
  }

  if (v244 != *MEMORY[0x1E695E4D0] || fcntl(v139, 64, v87) != -1)
  {
    goto LABEL_356;
  }

  v145 = defaultLog;
  if (os_log_type_enabled(defaultLog, OS_LOG_TYPE_DEFAULT))
  {
    v146 = *__error();
    *v251 = 138412546;
    *&v251[4] = v219;
    *&v251[12] = 1024;
    *&v251[14] = v146;
    _os_log_impl(&dword_19602C000, v145, OS_LOG_TYPE_DEFAULT, "%@: error setting protection class: %{errno}d", v251, 0x12u);
  }

  v147 = 1;
LABEL_357:
  if (v140)
  {
    closedir(v140);
  }

  else
  {
    close(v139);
  }

LABEL_360:
  if (v213 == 1 && v147)
  {
    if (!v138)
    {
      goto LABEL_402;
    }

    v148 = v219;
    v149 = CFGetAllocator(v219);
    v150 = *MEMORY[0x1E695E628];
    v151 = 513;
LABEL_369:
    v152 = _FSURLCreateStandardError(v149, v150, v151, 1, v148, 0);
    v43 = 0;
    *v138 = v152;
    goto LABEL_403;
  }

LABEL_364:
  if (!v20 || !v43)
  {
    goto LABEL_403;
  }

  v244 = 0;
  if (v216)
  {
    if (!v138)
    {
      goto LABEL_402;
    }

    v148 = v219;
    v149 = CFGetAllocator(v219);
    v150 = *MEMORY[0x1E695E640];
    v151 = 45;
    goto LABEL_369;
  }

  v153 = strlcpy(v251, v252, 0x400uLL);
  if (!v153)
  {
LABEL_398:
    if (v138)
    {
      v163 = v219;
      v164 = CFGetAllocator(v219);
      v165 = *MEMORY[0x1E695E628];
      v166 = 4;
      v167 = 0;
LABEL_400:
      v168 = v163;
LABEL_401:
      *v138 = _FSURLCreateStandardError(v164, v165, v166, v167, v168, 0);
    }

    goto LABEL_402;
  }

  v154 = 0;
  v155 = &v251[v153];
  while (2)
  {
    if (v155 - 1 <= v251)
    {
      goto LABEL_398;
    }

    v156 = &v155[-(*(v155 - 1) == 0) - 1];
    if (v156 > v251)
    {
      while (*v156 == 47)
      {
        if (--v156 <= v251)
        {
          v156 = v251;
          break;
        }
      }
    }

    if (v156 == v251)
    {
      goto LABEL_398;
    }

    v157 = v156;
    if (v156 > v251)
    {
      v157 = v156;
      while (*v157 != 47)
      {
        if (--v157 <= v251)
        {
          v157 = v251;
          break;
        }
      }
    }

    v158 = v156 + 1;
    if (*v157 == 47)
    {
      v155 = v157 + 1;
    }

    else
    {
      v155 = v157;
    }

    v159 = v158 - v155;
    if (v159 == 1)
    {
      if (*v155 != 46)
      {
        goto LABEL_392;
      }
    }

    else
    {
      if (v159 == 2 && *v155 == 46 && v155[1] == 46)
      {
        ++v154;
        goto LABEL_393;
      }

LABEL_392:
      --v154;
    }

LABEL_393:
    if (v154 != -1)
    {
      continue;
    }

    break;
  }

  v255.length = CFStringGetLength(v20);
  v255.location = 0;
  Bytes = CFStringGetBytes(v20, v255, 0x8000100u, 0, 0, v155, &v251[~v155 + 1024], &v244);
  if (Bytes != CFStringGetLength(v20))
  {
    goto LABEL_410;
  }

  if (v244 != 2)
  {
    if (v244 == 1)
    {
      v162 = *v155;
      goto LABEL_409;
    }

    goto LABEL_412;
  }

  if (*v155 == 46)
  {
    v162 = v155[1];
LABEL_409:
    if (v162 == 46)
    {
LABEL_410:
      if (!v138)
      {
        goto LABEL_402;
      }

      v163 = v219;
      v164 = CFGetAllocator(v219);
      v165 = *MEMORY[0x1E695E628];
      v166 = 514;
      v167 = 1;
      goto LABEL_400;
    }
  }

LABEL_412:
  v244[v155] = 0;
  rename(v252, v251, v161);
  if (v138 && v171)
  {
    v172 = v219;
    v173 = CFGetAllocator(v219);
    v174 = *MEMORY[0x1E695E640];
    v166 = *__error();
    v164 = v173;
    v165 = v174;
    v167 = 1;
    v168 = v172;
    goto LABEL_401;
  }

  if (!v171)
  {
    v175 = v208;
    if (*_FileCacheGetAttributes(v208))
    {
      v176 = _FileCacheGetAttributes(v175);
      v177 = CFGetAllocator(v219);
      Copy = CFStringCreateCopy(v177, v20);
      v179 = *(v176 + 8);
      if (v179)
      {
        CFRelease(v179);
      }

      *(v176 + 8) = Copy;
      Length = CFStringGetLength(Copy);
      if (Length < 1)
      {
        v181 = 0;
      }

      else
      {
        v181 = (CFStringGetCharacterAtIndex(Copy, 0) == 46) << 11;
      }

      v182 = 0;
      v183 = *v176 & 0xFFFFF7FF | v181;
      *v176 = v183;
      if (Length > 1 && v181)
      {
        v182 = (CFStringGetCharacterAtIndex(Copy, 1) == 46) << 12;
        v183 = *v176;
      }

      *v176 = v183 & 0xFFFFEFFF | v182;
    }

    v43 = 1;
    goto LABEL_403;
  }

LABEL_402:
  v43 = 0;
LABEL_403:
  if (v248)
  {
    acl_free(v248);
  }

  MountInfoDestroy(v245);
LABEL_406:
  v169 = *MEMORY[0x1E69E9840];
  return v43;
}

BOOL _FSURLStopAccessingSecurityScopedResource(const __CFURL *a1)
{
  propertyValueTypeRefPtr = 0;
  if (!a1 || !_CFURLIsFileURL())
  {
    return 0;
  }

  v2 = CFURLCopyResourcePropertyForKey(a1, @"_NSURLSecuritySandboxExtensionKey", &propertyValueTypeRefPtr, 0);
  v3 = SandboxExtensionCache::shared(v2);
  v4 = SandboxExtensionCache::release(v3, a1, propertyValueTypeRefPtr);
  if (propertyValueTypeRefPtr)
  {
    CFRelease(propertyValueTypeRefPtr);
  }

  cf = 0;
  v5 = CFURLCopyResourcePropertyForKey(a1, *MEMORY[0x1E695E3B0], &cf, 0);
  v6 = cf;
  if (v5)
  {
    v7 = cf == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (cf != *MEMORY[0x1E695E738])
    {
      _FSURLStopAccessingSecurityScopedResource();
      v6 = cf;
    }

    CFRelease(v6);
  }

  return v4;
}

BOOL SandboxExtensionCache::release(os_unfair_lock_s *this, CFURLRef url, const __CFData *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  string = 0;
  if (CFURLCopyResourcePropertyForKey(url, *MEMORY[0x1E695EBF8], &string, 0))
  {
    v5 = string == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    os_unfair_lock_lock(this);
    v7 = SandboxExtensionCache::_release(this, string, a3);
    os_unfair_lock_unlock(this);
    if ((v7 & 5) != 0)
    {
      if (v7 == 3)
      {
        if (os_log_type_enabled(securityScopedLog, OS_LOG_TYPE_DEBUG))
        {
          SandboxExtensionCache::release();
        }

        bzero(buffer, 0x400uLL);
        if (CFStringGetFileSystemRepresentation(string, buffer, 1024))
        {
          if (os_log_type_enabled(securityScopedLog, OS_LOG_TYPE_DEBUG))
          {
            SandboxExtensionCache::release();
          }

          v8 = sandbox_extension_release_file();
          v6 = v8 == 0;
          if (v8)
          {
            v9 = -2;
          }

          else
          {
            v9 = 2;
          }

          *__error() = v9;
          goto LABEL_22;
        }
      }

      else if (os_log_type_enabled(securityScopedLog, OS_LOG_TYPE_ERROR))
      {
        SandboxExtensionCache::release();
      }

      v6 = 0;
    }

    else
    {
      v6 = 1;
    }

LABEL_22:
    CFRelease(string);
    goto LABEL_23;
  }

  v6 = 0;
LABEL_23:
  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t SandboxExtensionCache::_release(CFDictionaryRef *this, const __CFString *a2, const __CFData *a3)
{
  Item = SandboxExtensionCache::_findItem(this, a2, a3);
  if (!Item)
  {
    return 3;
  }

  v6 = Item;
  v7 = *Item;
  if (*Item < 2)
  {
    Value = CFDictionaryGetValue(this[1], a2);
    if (v6 == Value)
    {
      v12 = v6[3];
      v13 = this[1];
      if (v12)
      {
        CFDictionarySetValue(v13, a2, v12);
        v6[3] = 0;
      }

      else
      {
        CFDictionaryRemoveValue(v13, a2);
      }
    }

    else
    {
      remove(Value, v6);
    }

    v14 = v6[1];
    v15 = sandbox_extension_release();
    v16 = securityScopedLog;
    if (v15)
    {
      if (os_log_type_enabled(securityScopedLog, OS_LOG_TYPE_ERROR))
      {
        SandboxExtensionCache::_release(v6 + 1);
      }

      v10 = 4;
    }

    else
    {
      if (os_log_type_enabled(securityScopedLog, OS_LOG_TYPE_DEBUG))
      {
        SandboxExtensionCache::_release(v6 + 1, a2, v16);
      }

      v10 = 0;
      *__error() = 1;
    }

    v17 = v6[2];
    if (v17)
    {
      CFRelease(v17);
    }

    MEMORY[0x19A8C7960](v6, 0x1060C40E6D94C38);
  }

  else
  {
    v8 = v7 - 1;
    *Item = v7 - 1;
    v9 = securityScopedLog;
    if (os_log_type_enabled(securityScopedLog, OS_LOG_TYPE_DEBUG))
    {
      SandboxExtensionCache::_release(v6, v8, v9);
    }

    v10 = 0;
    *__error() = 3;
  }

  return v10;
}

uint64_t createIsSystemImmutableValue(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E695E4D0];
  if ((*(a2 + 20) & 0x20000) == 0)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  *a3 = *v3;
  return 1;
}

CFStringRef _FSCreatePathForFileID(const __CFAllocator *a1, int a2, uint64_t a3, CFErrorRef *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  if (getFileSystemPathForFileID(a2, a3, cStr, 0x400))
  {
    result = CFStringCreateWithCString(a1, cStr, 0x8000100u);
    if (!a4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (!a4)
    {
LABEL_8:
      result = 0;
      goto LABEL_12;
    }

    v7 = _FSURLCreateStandardError(a1, *MEMORY[0x1E695E628], 4, 0, 0, 0);
    result = 0;
    *a4 = v7;
  }

  if (!result)
  {
    if (*a4)
    {
      goto LABEL_8;
    }

    if (os_log_type_enabled(defaultLog, OS_LOG_TYPE_ERROR))
    {
      _FSCreatePathForFileID_cold_1();
    }

    v8 = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E628], 256, 0);
    result = 0;
    *a4 = v8;
  }

LABEL_12:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t createIsHiddenValue(uint64_t a1, uint64_t a2, void *a3)
{
  if ((*a2 & 0x800) != 0 || (*(a2 + 21) & 0x80) != 0)
  {
    v4 = MEMORY[0x1E695E4D0];
  }

  else
  {
    if ((*a2 & 0x10) == 0)
    {
      return 0;
    }

    v4 = MEMORY[0x1E695E4D0];
    if ((*(a2 + 168) & 0x4000) == 0)
    {
      v4 = MEMORY[0x1E695E4C0];
    }
  }

  *a3 = *v4;
  return 1;
}

uint64_t createIsUserImmutableValue(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E695E4D0];
  if ((*(a2 + 20) & 2) == 0)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  *a3 = *v3;
  return 1;
}

uint64_t createIsCompressedValue(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E695E4D0];
  if ((*(a2 + 20) & 0x20) == 0)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  *a3 = *v3;
  return 1;
}

uint64_t createContentModificationDateValue(const void *a1, uint64_t a2, CFDateRef *a3)
{
  v5 = CFGetAllocator(a1);
  *a3 = CFDateCreate(v5, *(a2 + 64));
  return 1;
}

uint64_t createIsWriteableValue(uint64_t a1, _DWORD *a2, void *a3)
{
  if ((*a2 & 8) == 0)
  {
    return 0;
  }

  if ((*a2 & 0x1000000) != 0)
  {
    v4 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  *a3 = *v4;
  return 1;
}

uint64_t createIsExecutableValue(uint64_t a1, _DWORD *a2, void *a3)
{
  if ((*a2 & 8) == 0)
  {
    return 0;
  }

  if ((*a2 & 0x800000) != 0)
  {
    v4 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  *a3 = *v4;
  return 1;
}

uint64_t _FSURLGetVolumePropertyFlags(const __CFURL *a1, uint64_t a2, uint64_t *a3, CFTypeRef cf, CFErrorRef *a5)
{
  v9 = _FileCacheGetForURL(a1, cf);
  _FileCacheLock(v9);
  Value = CFDictionaryGetValue(qword_1ED4458B8, @"__kCFURLCheapVolumeInformationKey");
  memset(v15, 0, 60);
  addPropertyAndDependenciesToBitmap(Value, v15);
  _FileCacheLockTransitionToPreparer(v9);
  v11 = prepareValuesForBitmap(a1, v9, v15, a5);
  _FileCacheLockTransitionFromPreparer(v9);
  if (v11)
  {
    VolumeInfo = _FileCacheGetVolumeInfo(v9);
    if (VolumeInfo)
    {
      *a3 = *(CFDataGetBytePtr(VolumeInfo) + 4) & a2;
    }

    else if (a5)
    {
      v13 = CFGetAllocator(a1);
      v11 = 0;
      *a5 = _FSURLCreateStandardError(v13, *MEMORY[0x1E695E628], 256, 0, a1, 0);
    }

    else
    {
      v11 = 0;
    }
  }

  _FileCacheUnlock(v9);
  if (a5 && !v11 && !*a5)
  {
    if (os_log_type_enabled(defaultLog, OS_LOG_TYPE_ERROR))
    {
      _FSURLGetVolumePropertyFlags_cold_1();
    }

    *a5 = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E628], 256, 0);
  }

  return v11;
}

void *_FileCacheCreateShallowCopy(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  _FileCacheLock(a1);
  v2 = CFGetAllocator(a1);
  initGlobalsOnce();
  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 80);
    Instance[4] = *(a1 + 64);
    Instance[5] = v6;
    Instance[3] = v5;
    v7 = *(a1 + 96);
    v8 = *(a1 + 112);
    v9 = *(a1 + 144);
    Instance[8] = *(a1 + 128);
    Instance[9] = v9;
    Instance[6] = v7;
    Instance[7] = v8;
    v10 = *(a1 + 160);
    v11 = *(a1 + 176);
    v12 = *(a1 + 208);
    Instance[12] = *(a1 + 192);
    Instance[13] = v12;
    Instance[10] = v10;
    Instance[11] = v11;
    v13 = *(a1 + 224);
    v14 = *(a1 + 240);
    v15 = *(a1 + 272);
    Instance[16] = *(a1 + 256);
    Instance[17] = v15;
    Instance[14] = v13;
    Instance[15] = v14;
    v16 = *(a1 + 56);
    if (v16)
    {
      v4[7] = CFRetain(v16);
    }

    v17 = *(a1 + 280);
    if (v17)
    {
      v4[35] = CFRetain(v17);
    }

    if ((*(a1 + 48) & 0x80) == 0)
    {
      goto LABEL_11;
    }

    v18 = *(a1 + 272);
    if (v18)
    {
      Copy = CFFileSecurityCreateCopy(v2, v18);
      v4[34] = Copy;
      if (Copy)
      {
        goto LABEL_11;
      }
    }

    else if (v4[34])
    {
LABEL_11:
      v20 = *(a1 + 288);
      if (v20)
      {
        Count = CFDictionaryGetCount(*(a1 + 288));
        MutableCopy = CFDictionaryCreateMutableCopy(v2, Count, v20);
      }

      else
      {
        MutableCopy = 0;
      }

      v4[36] = MutableCopy;
      v23 = *(a1 + 296);
      if (v23)
      {
        v24 = CFDictionaryGetCount(*(a1 + 296));
        v25 = CFDictionaryCreateMutableCopy(v2, v24, v23);
      }

      else
      {
        v25 = 0;
      }

      v4[37] = v25;
      v26 = *(a1 + 304);
      if (v26)
      {
        v27 = CFDictionaryGetCount(*(a1 + 304));
        v28 = CFDictionaryCreateMutableCopy(v2, v27, v26);
      }

      else
      {
        v28 = 0;
      }

      v4[38] = v28;
      v29 = *(a1 + 312);
      if (v29)
      {
        v4[39] = CFDataCreateMutableCopy(v2, 0, v29);
      }

      goto LABEL_23;
    }

    *(a1 + 48) &= ~0x80u;
    goto LABEL_11;
  }

LABEL_23:
  v30 = *(a1 + 32) - 1;
  *(a1 + 32) = v30;
  if (!v30)
  {
    *(a1 + 24) = 0;
    os_unfair_lock_unlock((a1 + 36));
  }

  return v4;
}

uint64_t _FSGetTypeInfoForPath(uint64_t a1, char *a2, size_t a3, _DWORD *a4)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(v9, 0, 512);
  if (statfs_ext() == -1)
  {
    result = *__error();
  }

  else
  {
    result = _FSGetTypeInfoFromStatfs(v9, a2, a3, a4);
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _FSGetTypeInfoFromStatfs(uint64_t a1, char *a2, size_t a3, _DWORD *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!check_mntfromname((a1 + 72)))
  {
    __strlcpy_chk();
    if (!a2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v8 = a1 + 1112;
  v9 = strstr((a1 + 1112), "://");
  if (!v9)
  {
    result = 22;
    goto LABEL_13;
  }

  if (&v9[-v8] >= 0xF)
  {
    v10 = 15;
  }

  else
  {
    v10 = &v9[-v8];
  }

  __memcpy_chk();
  __source[v10] = 0;
  if (a2)
  {
LABEL_9:
    strlcpy(a2, __source, a3);
  }

LABEL_10:
  result = 0;
  if (a4)
  {
    *a4 = *(a1 + 68);
  }

LABEL_13:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MountInfoGetMutableVolumeInfo(const char *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  if ((~*(a1 + 741) & 0x614) != 0)
  {
    result = statfs(a1 + 88, &v18);
    if (!result)
    {
      *a2 = v18.f_files - v18.f_ffree;
      *a3 = 0;
      f_bsize = v18.f_bsize;
      f_bavail = v18.f_bavail;
      *a4 = v18.f_blocks * v18.f_bsize;
      v12 = f_bavail * f_bsize;
      goto LABEL_8;
    }
  }

  else
  {
    v17[2] = 0;
    v17[0] = 5;
    v17[1] = 2147485204;
    result = filtered_getattrlist(a1 + 88, v17, &v18, 0x1CuLL, 0);
    if (!result)
    {
      f_bavail_low = LODWORD(v18.f_bavail);
      *a2 = HIDWORD(v18.f_bfree);
      *a3 = f_bavail_low;
      *a4 = *&v18.f_iosize;
      v12 = *(&v18.f_blocks + 4);
LABEL_8:
      *a5 = v12;
      goto LABEL_6;
    }
  }

  *a2 = *(a1 + 4) - *(a1 + 5);
  *a3 = 0;
  v13 = *a1;
  *a4 = *(a1 + 1) * v13;
  *a5 = *(a1 + 3) * v13;
LABEL_6:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t createVolumeAvailableCapacityValue(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, CFNumberRef *a7)
{
  if (!a6)
  {
    return 0;
  }

  if (*(a3 + 39))
  {
    v11 = CFGetAllocator(a1);
    v9 = CFNumberCreate(v11, kCFNumberSInt64Type, (a3 + 24));
  }

  else
  {
    v9 = 0;
  }

  *a7 = v9;
  return 2;
}

uint64_t GetStatfsByFSID(fsid a1, statfs *a2)
{
  v10 = 0;
  v4 = getmntinfo_r_np(&v10, 2);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v10;
  if (v4 < 1)
  {
LABEL_7:
    v8 = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = &v10->f_fsid + 4;
    v7 = v4;
    while (*(v6 - 4) != a1)
    {
      v6 += 2168;
      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    memmove(a2, v6 - 52, 0x878uLL);
    v8 = 0;
  }

  free(v5);
  return v8;
}

uint64_t createVolumeUUIDStringValue(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, CFStringRef *a7)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a4 == 72)
  {
    if (a6)
    {
      memset(v12, 0, sizeof(v12));
      uuid_unparse_upper((a3 + 56), v12);
      v9 = CFGetAllocator(a1);
      *a7 = CFStringCreateWithCString(v9, v12, 0x8000100u);
      result = 2;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    *a7 = 0;
    result = 1;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Call_CacheDeleteCopyAvailableSpaceForVolume(double a1)
{
  v1 = gotLoadHelper_x8__CacheDeleteCopyAvailableSpaceForVolume(a1);
  if (*(v2 + 72))
  {
    return CacheDeleteCopyAvailableSpaceForVolume_delayInitStub(v1);
  }

  else
  {
    return 0;
  }
}

uint64_t createFileFlagsValue(const void *a1, uint64_t a2, CFNumberRef *a3)
{
  v5 = CFGetAllocator(a1);
  *a3 = CFNumberCreate(v5, kCFNumberSInt32Type, (a2 + 20));
  return 1;
}

CFDataRef ___ZL21createFinderInfoValuePK7__CFURLPK15_FileAttributesPv_block_invoke()
{
  result = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], zeroFinderInfoBytes, 32, *MEMORY[0x1E695E498]);
  createFinderInfoValue(__CFURL const*,_FileAttributes const*,void *)::zeroFinderInfoData = result;
  return result;
}

uint64_t createLinkCountValue(const void *a1, uint64_t a2, CFNumberRef *a3)
{
  v5 = CFGetAllocator(a1);
  *a3 = CFNumberCreate(v5, kCFNumberSInt32Type, (a2 + 24));
  return 1;
}

uint64_t createIsSystemDatalessValue(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E695E4D0];
  if ((*(a2 + 20) & 0x40000000) == 0)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  *a3 = *v3;
  return 1;
}

uint64_t createFileAllocatedSizeValue(const void *a1, uint64_t a2, CFNumberRef *a3)
{
  if ((*a2 & 0x40) == 0)
  {
    return 0;
  }

  valuePtr[3] = v3;
  valuePtr[4] = v4;
  if ((*(a2 + 16) & 0xD000 | 0x2000) == 0xA000)
  {
    v8 = CFGetAllocator(a1);
    valuePtr[0] = *(a2 + 216);
    v9 = CFNumberCreate(v8, kCFNumberSInt64Type, valuePtr);
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  return 1;
}

uint64_t createParentDirectoryIsVolumeRoot(uint64_t a1, uint64_t a2, void *a3)
{
  if ((*a2 & 4) == 0)
  {
    return 0;
  }

  v4 = MEMORY[0x1E695E4D0];
  if (*(a2 + 136) != 2)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  *a3 = *v4;
  return 1;
}

uint64_t createIsRestrictedValue(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E695E4D0];
  if ((*(a2 + 20) & 0x80000) == 0)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  *a3 = *v3;
  return 1;
}

uint64_t createIsSystemFirmlinkValue(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E695E4D0];
  if ((*(a2 + 20) & 0x800000) == 0)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  *a3 = *v3;
  return 1;
}

uint64_t createAttributeModificationDateValue(const void *a1, uint64_t a2, CFDateRef *a3)
{
  v5 = CFGetAllocator(a1);
  *a3 = CFDateCreate(v5, *(a2 + 72));
  return 1;
}

uint64_t createFileAllocatedSizeOfResourceForkValue(const void *a1, uint64_t a2, CFNumberRef *a3)
{
  if ((*(a2 + 16) & 0xF000) == 0x8000)
  {
    if ((*a2 & 0x20) == 0)
    {
      return 0;
    }

    v7 = CFGetAllocator(a1);
    valuePtr = *(a2 + 200);
    v6 = CFNumberCreate(v7, kCFNumberSInt64Type, &valuePtr);
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
  return 1;
}

uint64_t createAddedToDirectoryDateValue(const void *a1, uint64_t a2, CFDateRef *a3)
{
  if (*(a2 + 88) == -1.0 - *MEMORY[0x1E695E460])
  {
    v4 = 0;
  }

  else
  {
    v6 = CFGetAllocator(a1);
    v4 = CFDateCreate(v6, *(a2 + 88));
  }

  *a3 = v4;
  return 1;
}

uint64_t createFileSizeOfResourceForkValue(const void *a1, uint64_t a2, CFNumberRef *a3)
{
  if ((*(a2 + 16) & 0xF000) == 0x8000)
  {
    if ((*a2 & 0x20) == 0)
    {
      return 0;
    }

    v7 = CFGetAllocator(a1);
    v6 = CFNumberCreate(v7, kCFNumberSInt64Type, (a2 + 192));
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
  return 1;
}

uint64_t createLabelNumberValue(const void *a1, uint64_t a2, CFNumberRef *a3)
{
  if ((*a2 & 0x10) == 0)
  {
    return 0;
  }

  v9 = v3;
  v10 = v4;
  valuePtr = (*(a2 + 168) >> 1) & 7;
  v7 = CFGetAllocator(a1);
  *a3 = CFNumberCreate(v7, kCFNumberSInt32Type, &valuePtr);
  return 1;
}

uint64_t createIsSystemNoUnlinkValue(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E695E4D0];
  if ((*(a2 + 20) & 0x100000) == 0)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  *a3 = *v3;
  return 1;
}

BOOL _FSURLResourceIsReachable(const __CFString *a1, CFErrorRef *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (!a2)
    {
LABEL_21:
      v6 = 0;
      goto LABEL_25;
    }

    v7 = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E628], 4, 0);
    goto LABEL_11;
  }

  if (!CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    if (!a2)
    {
      v6 = 0;
      goto LABEL_25;
    }

    v8 = CFGetAllocator(a1);
    v7 = _FSURLCreateStandardError(v8, *MEMORY[0x1E695E628], 4, 0, a1, 0);
LABEL_11:
    v6 = 0;
    goto LABEL_17;
  }

  if (faccessat(-2, buffer, 0, 48))
  {
    if (*__error() == 22)
    {
      v4 = lstat(buffer, &v13);
      v5 = v4 != 0;
      v6 = v4 == 0;
      if (!a2)
      {
LABEL_18:
        if (!a2)
        {
          goto LABEL_25;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v6 = 0;
      v5 = 1;
      if (!a2)
      {
        goto LABEL_18;
      }
    }

    if (!v5)
    {
      goto LABEL_18;
    }

    v9 = *__error();
    v10 = CFGetAllocator(a1);
    v7 = _FSURLCreateStandardError(v10, *MEMORY[0x1E695E640], v9, 0, a1, 0);
LABEL_17:
    *a2 = v7;
    goto LABEL_18;
  }

  v6 = 1;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_19:
  if (!v6)
  {
    if (*a2)
    {
      goto LABEL_21;
    }

    if (os_log_type_enabled(defaultLog, OS_LOG_TYPE_ERROR))
    {
      _FSURLResourceIsReachable_cold_1();
    }

    v6 = 0;
    *a2 = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E628], 256, 0);
  }

LABEL_25:
  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t VolumePropertyProviderSetValues(const __CFString *a1, uint64_t a2, CFTypeRef *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, CFErrorRef *a8)
{
  if (a6 < 1)
  {
    return 1;
  }

  v8 = a6;
  v13 = 0;
  v14 = *MEMORY[0x1E695ED78];
  v15 = *MEMORY[0x1E695E738];
  v16 = 1;
  v27 = 1;
  do
  {
    v17 = *a4;
    if (*a4)
    {
      v18 = CFEqual(*a3, v14);
      if (v17 != v15 && v18 != 0)
      {
        v13 = 1;
      }
    }

    else
    {
      if (!v16)
      {
        goto LABEL_9;
      }

      v20 = *a5;
      if (CFEqual(*(*a5 + 8), @"__kCFURLCheapVolumeInformationKey"))
      {
        _FileCacheLock(a2);
        _FileCacheSetVolumeInfo(a2, 0);
        _FileCacheUnlock(a2);
        v16 = 0;
        goto LABEL_9;
      }

      if (!v27)
      {
        v27 = 0;
        goto LABEL_20;
      }

      if (!CFEqual(*(v20 + 8), @"__kCFURLExpensiveVolumeInformationKey"))
      {
        v27 = 1;
        goto LABEL_20;
      }

      VolumeInfo = _FileCacheGetVolumeInfo(a2);
      if (VolumeInfo)
      {
        v27 = 0;
        *CFDataGetMutableBytePtr(VolumeInfo) = -1;
LABEL_20:
        v16 = 1;
        goto LABEL_9;
      }

      v16 = 0;
      v27 = 1;
    }

LABEL_9:
    ++a5;
    ++a4;
    ++a3;
    --v8;
  }

  while (v8);
  if (!v13)
  {
    return 1;
  }

  if (!a8)
  {
    return 0;
  }

  v22 = CFGetAllocator(a1);
  v23 = _FSURLCreateStandardError(v22, *MEMORY[0x1E695E640], 45, 1, a1, 0);
  result = 0;
  *a8 = v23;
  return result;
}

CFArrayRef createURLParentageArray(const __CFAllocator *a1, const __CFURL *a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v7 = v4;
  values[512] = *MEMORY[0x1E69E9840];
  if (v5)
  {
    v8 = v6;
    v9 = v5;
    bzero(values, 0xFF8uLL);
    v10 = 0;
    values[511] = v9;
    v11 = *MEMORY[0x1E695EBF0];
    v12 = -4088;
    while (1)
    {
      PathComponent = 0;
      v13 = CFURLCopyResourcePropertyForKey(v9, v11, &PathComponent, 0);
      if ((v8 & 0x10000000) != 0 && !v13)
      {
        v14 = CFURLCopyPath(v9);
        if (v14)
        {
          v15 = v14;
          if (CFStringGetLength(v14) >= 1)
          {
            PathComponent = CFURLCreateCopyDeletingLastPathComponent(v7, v9);
          }

          CFRelease(v15);
        }
      }

      v9 = PathComponent;
      values[v10 + 510] = PathComponent;
      if (!v9)
      {
        break;
      }

      --v10;
      v12 += 8;
      if (v10 == -511)
      {
        v16 = CFArrayCreate(v7, values, 512, MEMORY[0x1E695E9C0]);
        v17 = 0;
        goto LABEL_17;
      }
    }

    v16 = CFArrayCreate(v7, &values[v12 / 0xFFFFFFFFFFFFFFF8], 1 - v10, MEMORY[0x1E695E9C0]);
    if ((1 - v10) < 2)
    {
      goto LABEL_22;
    }

    v17 = v10 + 511;
LABEL_17:
    v21 = &values[v17];
    v22 = v17 + 1;
    do
    {
      if (*v21)
      {
        CFRelease(*v21);
        *v21 = 0;
      }

      ++v21;
    }

    while (v22++ != 511);
LABEL_22:
    v24 = *MEMORY[0x1E69E9840];
    return v16;
  }

  else
  {
    v18 = *MEMORY[0x1E69E9840];
    v19 = MEMORY[0x1E695E9C0];

    return CFArrayCreate(v4, 0, 0, v19);
  }
}

CFArrayRef copyOfArray(const __CFAllocator *a1, CFArrayRef theArray, CFRange a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (theArray)
  {
    length = a3.length;
    location = a3.location;
    if (CFArrayGetCount(theArray) >= a3.length)
    {
      Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
      v14.location = location;
      v14.length = length;
      CFArrayAppendArray(Mutable, theArray, v14);
      Copy = CFArrayCreateCopy(a1, Mutable);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    else
    {
      memset(v11, 0, 512);
      v13.location = location;
      v13.length = length;
      CFArrayGetValues(theArray, v13, v11);
      Copy = CFArrayCreate(a1, v11 + location, length, MEMORY[0x1E695E9C0]);
    }
  }

  else
  {
    Copy = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return Copy;
}

const __CFArray *createArrayOfPathComponentsFromString(const __CFAllocator *a1, const __CFString *a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  LODWORD(v3) = a3;
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(a1, a2, @"/");
  v6 = ArrayBySeparatingStrings;
  if (ArrayBySeparatingStrings && CFArrayGetCount(ArrayBySeparatingStrings) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
    if (CFStringGetLength(ValueAtIndex))
    {
      v3 = v3;
    }

    else
    {
      v3 = (v3 + 1);
    }

    if (v3)
    {
      v11.length = CFArrayGetCount(v6) - v3;
      v11.location = v3;
      v8 = copyOfArray(a1, v6, v11);
      if (v6 != v8)
      {
        v9 = v8;
        CFRelease(v6);
        return v9;
      }
    }
  }

  return v6;
}

uint64_t sameFileURL(CFTypeRef cf1, CFTypeRef cf2)
{
  v8 = *MEMORY[0x1E69E9840];
  result = cf1 == cf2;
  if (cf2)
  {
    if (cf1)
    {
      if (cf1 != cf2)
      {
        result = CFEqual(cf1, cf2);
        if (!result)
        {
          v5 = CFGetTypeID(cf1);
          if (v5 == CFURLGetTypeID() && (v6 = CFGetTypeID(cf2), v6 == CFURLGetTypeID()))
          {
            _CFURLCopyResourcePropertyValuesAndFlags();
            result = 0;
          }

          else
          {
            result = 0;
          }
        }
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

CFDictionaryRef CFDictionaryCreateWithItems(const __CFAllocator *a1, void *a2, void *a3, void *a4, void *a5)
{
  v14[1] = *MEMORY[0x1E69E9840];
  keys = 0;
  v14[0] = 0;
  values = 0;
  v12 = 0;
  if (a2 && a3)
  {
    keys = a2;
    values = a3;
    v5 = 1;
    if (!a4 || !a5)
    {
      goto LABEL_10;
    }

    p_keys = v14;
    p_values = &v12;
    v5 = 2;
LABEL_9:
    *p_keys = a4;
    *p_values = a5;
LABEL_10:
    v8 = CFDictionaryCreate(a1, &keys, &values, v5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    goto LABEL_11;
  }

  v8 = 0;
  if (a4 && a5)
  {
    p_values = &values;
    p_keys = &keys;
    v5 = 1;
    goto LABEL_9;
  }

LABEL_11:
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t asString(const void *const *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v6 = v5;
  v100 = *MEMORY[0x1E69E9840];
  std::ostringstream::basic_ostringstream[abi:nn200100](&v92);
  if (!*v4)
  {
    v13 = "<NULL>";
LABEL_9:
    v12 = &v92;
    v14 = 6;
    goto LABEL_34;
  }

  v7 = CFGetTypeID(*v4);
  if (v7 == CFStringGetTypeID())
  {
    CStringPtr = CFStringGetCStringPtr(*v4, 0x8000100u);
    if (CStringPtr || (CStringPtr = CFStringGetCStringPtr(*v4, 0x600u)) != 0 || (CStringPtr = CFStringGetCStringPtr(*v4, 0)) != 0)
    {
      v9 = CStringPtr;
      LOBYTE(v97) = 34;
      v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v92, &v97, 1);
      v11 = strlen(v9);
      v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, v9, v11);
      LOBYTE(v97) = 34;
      v13 = &v97;
    }

    else
    {
      v89 = 0;
      v47 = *v4;
      v101.length = CFStringGetLength(v47);
      v101.location = 0;
      if (!CFStringGetBytes(v47, v101, 0x8000100u, 0, 0, &v97, 0xFFFFLL, &v89))
      {
        v13 = "< unrepresentable string>";
        v12 = &v92;
        v14 = 25;
        goto LABEL_34;
      }

      *(&v97 + v89) = 0;
      LOBYTE(v87[0]) = 34;
      v48 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v92, v87, 1);
      v49 = strlen(&v97);
      v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v48, &v97, v49);
      LOBYTE(v87[0]) = 34;
      v13 = v87;
    }

    goto LABEL_7;
  }

  if (v7 == CFArrayGetTypeID())
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v92, "[", 1);
    if (CFArrayGetCount(*v4) >= 1)
    {
      v15 = 0;
      do
      {
        v87[0] = CFArrayGetValueAtIndex(*v4, v15);
        if (v15)
        {
          v16 = ", ";
        }

        else
        {
          v16 = "";
        }

        std::string::basic_string[abi:nn200100]<0>(&v97, v16);
        if ((v99 & 0x80u) == 0)
        {
          v17 = &v97;
        }

        else
        {
          v17 = v97;
        }

        if ((v99 & 0x80u) == 0)
        {
          v18 = v99;
        }

        else
        {
          v18 = v98;
        }

        v19 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v92, v17, v18);
        asString(&v89, v87);
        if ((v91 & 0x80u) == 0)
        {
          v20 = &v89;
        }

        else
        {
          v20 = v89;
        }

        if ((v91 & 0x80u) == 0)
        {
          v21 = v91;
        }

        else
        {
          v21 = v90;
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v19, v20, v21);
        if (v91 < 0)
        {
          operator delete(v89);
        }

        if (v99 < 0)
        {
          operator delete(v97);
        }

        ++v15;
      }

      while (v15 < CFArrayGetCount(*v4));
    }

    v13 = "] ";
    v12 = &v92;
    v14 = 2;
    goto LABEL_34;
  }

  TypeID = CFDictionaryGetTypeID();
  v25 = *v4;
  if (v7 == TypeID)
  {
    v83[2] = v6;
    Count = CFDictionaryGetCount(v25);
    v83[1] = v83;
    MEMORY[0x1EEE9AC00](Count, v27, v28, v29);
    v31 = (v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v30 >= 0x200)
    {
      v32 = 512;
    }

    else
    {
      v32 = v30;
    }

    bzero(v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v32);
    CFDictionaryGetKeysAndValues(v25, v31, 0);
    qsort_b(v31, Count, 8uLL, &__block_literal_global);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v92, "{", 1);
    if (Count >= 1)
    {
      v33 = 0;
      do
      {
        if (v33)
        {
          v34 = ", ";
        }

        else
        {
          v34 = "";
        }

        std::string::basic_string[abi:nn200100]<0>(&v97, v34);
        if ((v99 & 0x80u) == 0)
        {
          v35 = &v97;
        }

        else
        {
          v35 = v97;
        }

        if ((v99 & 0x80u) == 0)
        {
          v36 = v99;
        }

        else
        {
          v36 = v98;
        }

        v37 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v92, v35, v36);
        asString(&v89, v31);
        if ((v91 & 0x80u) == 0)
        {
          v38 = &v89;
        }

        else
        {
          v38 = v89;
        }

        if ((v91 & 0x80u) == 0)
        {
          v39 = v91;
        }

        else
        {
          v39 = v90;
        }

        v40 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v37, v38, v39);
        v41 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v40, "=", 1);
        Value = CFDictionaryGetValue(v25, *v31);
        asString(v87, &Value);
        if ((v88 & 0x80u) == 0)
        {
          v42 = v87;
        }

        else
        {
          v42 = v87[0];
        }

        if ((v88 & 0x80u) == 0)
        {
          v43 = v88;
        }

        else
        {
          v43 = v87[1];
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v41, v42, v43);
        if (v88 < 0)
        {
          operator delete(v87[0]);
        }

        if (v91 < 0)
        {
          operator delete(v89);
        }

        if (v99 < 0)
        {
          operator delete(v97);
        }

        --v33;
        ++v31;
      }

      while (-Count != v33);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v92, "} ", 2);
    goto LABEL_35;
  }

  if (v25 == *MEMORY[0x1E695E4D0])
  {
    v13 = "TRUE ";
    v12 = &v92;
    v14 = 5;
    goto LABEL_34;
  }

  if (v25 == *MEMORY[0x1E695E4C0])
  {
    v13 = "FALSE ";
    goto LABEL_9;
  }

  if (v7 == CFNumberGetTypeID())
  {
    LODWORD(v89) = 0;
    v97 = 0;
    if (CFNumberGetValue(*v4, kCFNumberSInt32Type, &v89))
    {
      v44 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v92, "#", 1);
      v45 = MEMORY[0x19A8C78E0](v44, v89);
      v46 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v45, "/0x", 3);
      *(v46 + *(*v46 - 24) + 8) = *(v46 + *(*v46 - 24) + 8) & 0xFFFFFFB5 | 8;
      v12 = MEMORY[0x19A8C78E0]();
    }

    else
    {
      if (!CFNumberGetValue(*v4, kCFNumberSInt64Type, &v97))
      {
        v13 = "[CFNumber?] ";
        v12 = &v92;
        v14 = 12;
        goto LABEL_34;
      }

      v78 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v92, "#", 1);
      v79 = MEMORY[0x19A8C78F0](v78, v97);
      v80 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v79, "/0x", 3);
      *(v80 + *(*v80 - 24) + 8) = *(v80 + *(*v80 - 24) + 8) & 0xFFFFFFB5 | 8;
      v12 = MEMORY[0x19A8C78F0]();
    }

    *(v12 + *(*v12 - 24) + 8) = *(v12 + *(*v12 - 24) + 8) & 0xFFFFFFB5 | 2;
    v13 = " ";
LABEL_7:
    v14 = 1;
LABEL_34:
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, v13, v14);
    goto LABEL_35;
  }

  if (v7 == CFDateGetTypeID())
  {
    v50 = MEMORY[0x19A8C6F70](*v4);
    GregorianDate = CFAbsoluteTimeGetGregorianDate(v50, 0);
    *(&v94[1].__locale_ + *(v92 - 24)) = 4;
    LOBYTE(v97) = 48;
    v52 = std::operator<<[abi:nn200100]<std::char_traits<char>>(&v92, &v97);
    v53 = MEMORY[0x19A8C78E0](v52, *&GregorianDate.year);
    v54 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v53, "/", 1);
    *(v54 + *(*v54 - 24) + 24) = 2;
    LOBYTE(v89) = 48;
    v55 = std::operator<<[abi:nn200100]<std::char_traits<char>>(v54, &v89);
    v56 = MEMORY[0x19A8C78E0](v55, ((*&GregorianDate.year >> 8) >> 24));
    v57 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v56, "/", 1);
    *(v57 + *(*v57 - 24) + 24) = 2;
    LOBYTE(v87[0]) = 48;
    v58 = std::operator<<[abi:nn200100]<std::char_traits<char>>(v57, v87);
    v59 = MEMORY[0x19A8C78E0](v58, ((*&GregorianDate.year >> 16) >> 24));
    v60 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v59, " ", 1);
    *(v60 + *(*v60 - 24) + 24) = 2;
    LOBYTE(Value) = 48;
    v61 = std::operator<<[abi:nn200100]<std::char_traits<char>>(v60, &Value);
    v62 = MEMORY[0x19A8C78E0](v61, ((*&GregorianDate.year >> 24) >> 24));
    v63 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v62, ":", 1);
    *(v63 + *(*v63 - 24) + 24) = 2;
    v85 = 48;
    v64 = std::operator<<[abi:nn200100]<std::char_traits<char>>(v63, &v85);
    v65 = MEMORY[0x19A8C78E0](v64, *&GregorianDate.year >> 56);
    v66 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v65, ":", 1);
    *(v66 + *(*v66 - 24) + 24) = 2;
    v84 = 48;
    v67 = std::operator<<[abi:nn200100]<std::char_traits<char>>(v66, &v84);
    MEMORY[0x19A8C78E0](v67, GregorianDate.second);
    goto LABEL_35;
  }

  v68 = CFURLGetTypeID();
  v69 = *v4;
  if (v7 != v68)
  {
    v72 = CFCopyDescription(v69);
    v89 = v72;
    asString(&v97, &v89);
    if ((v99 & 0x80u) == 0)
    {
      v76 = &v97;
    }

    else
    {
      v76 = v97;
    }

    if ((v99 & 0x80u) == 0)
    {
      v77 = v99;
    }

    else
    {
      v77 = v98;
    }

    v75 = &v92;
    goto LABEL_104;
  }

  v70 = CFURLGetBaseURL(v69);
  v71 = *v4;
  if (v70)
  {
    v72 = CFURLCopyAbsoluteURL(v71);
    v89 = CFURLGetString(v72);
    asString(&v97, &v89);
    if ((v99 & 0x80u) == 0)
    {
      v73 = &v97;
    }

    else
    {
      v73 = v97;
    }

    if ((v99 & 0x80u) == 0)
    {
      v74 = v99;
    }

    else
    {
      v74 = v98;
    }

    v75 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v92, v73, v74);
    v76 = "(*)";
    v77 = 3;
LABEL_104:
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v75, v76, v77);
    if (v99 < 0)
    {
      operator delete(v97);
    }

    if (v72)
    {
      CFRelease(v72);
    }

    goto LABEL_35;
  }

  v89 = CFURLGetString(v71);
  asString(&v97, &v89);
  if ((v99 & 0x80u) == 0)
  {
    v81 = &v97;
  }

  else
  {
    v81 = v97;
  }

  if ((v99 & 0x80u) == 0)
  {
    v82 = v99;
  }

  else
  {
    v82 = v98;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v92, v81, v82);
  if (v99 < 0)
  {
    operator delete(v97);
  }

LABEL_35:
  std::stringbuf::str();
  v92 = *MEMORY[0x1E69E54E8];
  *(&v92 + *(v92 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v93 = MEMORY[0x1E69E5548] + 16;
  if (v95 < 0)
  {
    operator delete(v94[7].__locale_);
  }

  v93 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v94);
  std::ostream::~ostream();
  result = MEMORY[0x19A8C7940](&v96);
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::ostringstream::basic_ostringstream[abi:nn200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x1E69E5570] + 24;
  v3 = MEMORY[0x1E69E5570] + 64;
  *(a1 + 112) = MEMORY[0x1E69E5570] + 64;
  v4 = a1 + 8;
  v5 = *(MEMORY[0x1E69E54E8] + 16);
  v6 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, (a1 + 8));
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *(a1 + 112) = v3;
  v8 = MEMORY[0x1E69E5538] + 16;
  *a1 = v2;
  *(a1 + 8) = v8;
  MEMORY[0x19A8C7900](a1 + 16);
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 16;
  std::stringbuf::__init_buf_ptrs[abi:nn200100](v4);
  return a1;
}

_BYTE *std::string::basic_string[abi:nn200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void *std::operator<<[abi:nn200100]<std::char_traits<char>>(void *a1, char *a2)
{
  v3 = a1 + *(*a1 - 24);
  v4 = *a2;
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v7, MEMORY[0x1E69E5318]);
    (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v7);
  }

  *(v3 + 36) = v4;
  return a1;
}

void std::stringbuf::__init_buf_ptrs[abi:nn200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x19A8C78B0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = a2 + a3;
    if ((*(v6 + 8) & 0xB0) == 0x20)
    {
      v9 = v8;
    }

    else
    {
      v9 = a2;
    }

    v10 = *(v6 + 144);
    if (v10 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v11 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v10 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v10;
    }

    if (!std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(v7, a2, v9, v8, v6, v10))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x19A8C78C0](v13);
  return a1;
}

uint64_t std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void BookmarkData::BookmarkData(BookmarkData *this, const __CFAllocator *a2, CFTypeRef cf)
{
  *this = a2;
  v4 = this + 8;
  if (cf)
  {
    CFRetain(cf);
    *(this + 1) = cf;
    *(this + 2) = 0;
    v6 = (this + 16);
    *(this + 3) = CFDataGetBytePtr(cf);
    v7 = (this + 24);
    v8 = *(this + 1);
    if (v8)
    {
      if (CFDataGetLength(v8) < 1 || CFDataGetLength(*v4) > 0xFFFFFFFE)
      {
        LODWORD(v8) = 0;
      }

      else
      {
        LODWORD(v8) = CFDataGetLength(*v4);
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
    v6 = (this + 16);
    v7 = (this + 24);
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
  }

  *(this + 7) = 0;
  *(this + 36) = 0;
  *(this + 8) = v8;
  *(this + 8) = 0;
  *(this + 6) = this + 56;
  v9 = "invalid bookmark length";
  if (v8 >= 0x10)
  {
    v10 = *v7;
    if (CFBookmarkHeader::validate(*v7) && (v11 = *(this + 8), *(v10 + 1) <= v11))
    {
      *v6 = v10;
      v12 = *(v10 + 3);
      if (v12 >= 0x10 && ((v12 & 3) == 0 ? (v13 = v11 > v12) : (v13 = 0), v13 && (v14 = v11 - v12, *(this + 9) = v12, *(this + 10) = v14, v14 >= 4)))
      {
        if (*v7)
        {
          v15 = *(*v7 + v12);
        }

        else
        {
          v15 = 0;
        }

        TOCAtOffset = BookmarkData::getTOCAtOffset(this, v15);
        if (!TOCAtOffset)
        {
          return;
        }

        v18 = TOCAtOffset;
        v19 = BookmarkData::getTOCAtOffset(this, *(TOCAtOffset + 12));
        v9 = "invalid data item pointer";
        while (v18 != v19)
        {
          v20 = *(v18 + 16) + 1;
          v21 = (v18 + 24);
          while (--v20)
          {
            v22 = v21 + 3;
            DataItemAtOffset = BookmarkData::getDataItemAtOffset(this, *v21);
            v21 = v22;
            if (!DataItemAtOffset)
            {
              goto LABEL_24;
            }
          }

          v18 = BookmarkData::getTOCAtOffset(this, *(v18 + 12));
          if (v19)
          {
            v24 = BookmarkData::getTOCAtOffset(this, *(v19 + 12));
            if (v24)
            {
              v19 = BookmarkData::getTOCAtOffset(this, *(v24 + 12));
            }

            else
            {
              v19 = 0;
            }
          }

          if (!v18)
          {
            return;
          }
        }

        v9 = "invalid TOC: cycle";
      }

      else
      {
        v9 = "invalid data section length";
      }
    }

    else if (!CFBookmarkHeader::validate(v10))
    {
      v9 = "invalid header";
    }
  }

LABEL_24:
  if (*v4)
  {
    CFRelease(*v4);
    *v4 = 0;
  }

  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 10) = 0;
  *(this + 4) = 0;
  v16 = bmarkLog;
  if (os_log_type_enabled(bmarkLog, OS_LOG_TYPE_ERROR))
  {
    BookmarkData::BookmarkData(v9, v16);
  }
}

uint64_t BookmarkData::getTOCAtOffset(BookmarkData *this, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(this + 10);
  v3 = a2 + 20;
  if (v2 >= a2)
  {
    v4 = v3 >= v2;
    v5 = v3 == v2;
  }

  else
  {
    v4 = 1;
    v5 = 0;
  }

  if (!v5 && v4)
  {
    return 0;
  }

  v6 = *(this + 9);
  if (((v6 + a2) & 3) != 0)
  {
    return 0;
  }

  v7 = *(this + 3) + v6 + a2;
  if (*(v7 + 4) != -2)
  {
    return 0;
  }

  v8 = *(v7 + 16);
  if (v8 > 0x15555552)
  {
    return 0;
  }

  if (a2 + 12 * v8 + 20 <= v2)
  {
    return v7;
  }

  return 0;
}

unsigned int *BookmarkData::getDataItemAtOffset(BookmarkData *this, unsigned int a2)
{
  v2 = *(this + 10);
  if (v2 < a2 || a2 + 8 > v2)
  {
    return 0;
  }

  v4 = *(this + 9);
  if (((v4 + a2) & 3) != 0)
  {
    return 0;
  }

  v6 = *(this + 3);
  if (!v6)
  {
    return 0;
  }

  v7 = (v6 + v4 + a2);
  v8 = *v7;
  if (v8 > 0xFFFFFFF6)
  {
    return 0;
  }

  if (v8 + a2 + 8 <= v2)
  {
    return v7;
  }

  return 0;
}

void BookmarkData::~BookmarkData(BookmarkData *this)
{
  v2 = this + 48;
  v3 = *(this + 6);
  v4 = this + 56;
  if (v3 != this + 56)
  {
    do
    {
      v5 = *(v3 + 5);
      if (v5)
      {
        CFRelease(v5);
        *(v3 + 5) = 0;
      }

      v6 = *(v3 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v3 + 2);
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  v9 = *(this + 1);
  if (v9)
  {
    CFRelease(v9);
    *(this + 1) = 0;
  }

  std::__tree<std::__value_type<std::pair<unsigned int,unsigned int>,void const*>,std::__map_value_compare<std::pair<unsigned int,unsigned int>,std::__value_type<std::pair<unsigned int,unsigned int>,void const*>,std::less<std::pair<unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned int>,void const*>>>::destroy(v2, *(this + 7));
}

uint64_t BookmarkData::dataSectionAtOffset(BookmarkData *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 10);
  if (v3 < a2 || a3 + a2 > v3)
  {
    return 0;
  }

  v5 = *(this + 9);
  if (((v5 + a2) & 3) != 0)
  {
    return 0;
  }

  else
  {
    return *(this + 3) + v5 + a2;
  }
}

unsigned int *BookmarkData::getDataItemForTOCItem(BookmarkData *a1, uint64_t a2)
{
  if (a2)
  {
    return BookmarkData::getDataItemAtOffset(a1, *(a2 + 4));
  }

  else
  {
    return 0;
  }
}

CFNumberRef BookmarkData::copyItem(CFAllocatorRef *a1, unsigned int *a2, uint64_t a3)
{
  v6[0] = 0;
  v6[1] = 0;
  v5 = v6;
  v3 = BookmarkData::copyItem(a1, a2, &v5, a3);
  std::__tree<std::__value_type<std::pair<unsigned int,unsigned int>,void const*>,std::__map_value_compare<std::pair<unsigned int,unsigned int>,std::__value_type<std::pair<unsigned int,unsigned int>,void const*>,std::less<std::pair<unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned int>,void const*>>>::destroy(&v5, v6[0]);
  return v3;
}

CFNumberRef BookmarkData::copyItem(CFAllocatorRef *a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v72 = a2;
  if (!a2)
  {
    return 0;
  }

  v8 = *(a3 + 8);
  if (v8)
  {
    v9 = a3 + 8;
    do
    {
      v10 = *(v8 + 32);
      v11 = v10 >= a2;
      v12 = v10 < a2;
      if (v11)
      {
        v9 = v8;
      }

      v8 = *(v8 + 8 * v12);
    }

    while (v8);
    if (v9 != a3 + 8 && *(v9 + 32) <= a2)
    {
      v19 = bmarkLog;
      if (os_log_type_enabled(bmarkLog, OS_LOG_TYPE_ERROR))
      {
        BookmarkData::copyItem(a2, v19);
      }

      return 0;
    }
  }

  v13 = 0;
  v14 = *a2;
  v15 = a2[1];
  if (v15 <= 1023)
  {
    switch(v15)
    {
      case 769:
        if (!v14)
        {
          goto LABEL_124;
        }

        LOBYTE(__p) = *(a2 + 8);
        v16 = *a1;
        v17 = kCFNumberSInt8Type;
        goto LABEL_153;
      case 770:
        if (v14 < 2)
        {
          goto LABEL_124;
        }

        LOWORD(__p) = *(a2 + 4);
        v16 = *a1;
        v17 = kCFNumberSInt16Type;
        goto LABEL_153;
      case 771:
        if (v14 < 4)
        {
          goto LABEL_124;
        }

        LODWORD(__p) = a2[2];
        v16 = *a1;
        v17 = kCFNumberSInt32Type;
        goto LABEL_153;
      case 772:
        if (v14 < 8)
        {
          goto LABEL_124;
        }

        __p = *(a2 + 1);
        v16 = *a1;
        v17 = kCFNumberSInt64Type;
        goto LABEL_153;
      case 773:
        if (v14 < 4)
        {
          goto LABEL_124;
        }

        LODWORD(__p) = a2[2];
        v16 = *a1;
        v17 = kCFNumberFloat32Type;
        goto LABEL_153;
      case 774:
        if (v14 < 8)
        {
          goto LABEL_124;
        }

        __p = *(a2 + 1);
        v16 = *a1;
        v17 = kCFNumberFloat64Type;
        goto LABEL_153;
      case 775:
        if (!v14)
        {
          goto LABEL_124;
        }

        LOBYTE(__p) = *(a2 + 8);
        v16 = *a1;
        v17 = kCFNumberCharType;
        goto LABEL_153;
      case 776:
        if (v14 < 2)
        {
          goto LABEL_124;
        }

        LOWORD(__p) = *(a2 + 4);
        v16 = *a1;
        v17 = kCFNumberShortType;
        goto LABEL_153;
      case 777:
        if (v14 < 4)
        {
          goto LABEL_124;
        }

        LODWORD(__p) = a2[2];
        v16 = *a1;
        v17 = kCFNumberIntType;
        goto LABEL_153;
      case 778:
        if (v14 == 8)
        {
          v56 = *(a2 + 1);
        }

        else
        {
          if (v14 != 4)
          {
            return 0;
          }

          v56 = a2[2];
        }

        __p = v56;
        v16 = *a1;
        v17 = kCFNumberLongType;
        goto LABEL_153;
      case 779:
        if (v14 < 8)
        {
          goto LABEL_124;
        }

        __p = *(a2 + 1);
        v16 = *a1;
        v17 = kCFNumberLongLongType;
        goto LABEL_153;
      case 780:
        if (v14 < 4)
        {
          goto LABEL_124;
        }

        LODWORD(__p) = a2[2];
        v16 = *a1;
        v17 = kCFNumberFloatType;
        goto LABEL_153;
      case 781:
        if (v14 >= 8)
        {
          __p = *(a2 + 1);
          v16 = *a1;
          v17 = kCFNumberDoubleType;
          goto LABEL_153;
        }

LABEL_124:
        v13 = 0;
        if (!a4)
        {
          return v13;
        }

        goto LABEL_155;
      case 782:
        if (v14 == 8)
        {
          v57 = *(a2 + 1);
        }

        else
        {
          if (v14 != 4)
          {
            return 0;
          }

          v57 = a2[2];
        }

        __p = v57;
        v16 = *a1;
        v17 = kCFNumberCFIndexType;
        goto LABEL_153;
      case 783:
        if (v14 == 8)
        {
          v36 = *(a2 + 1);
        }

        else
        {
          if (v14 != 4)
          {
            return 0;
          }

          v36 = a2[2];
        }

        __p = v36;
        v16 = *a1;
        v17 = kCFNumberNSIntegerType;
        goto LABEL_153;
      case 784:
        if (v14 == 8)
        {
          __p = *(a2 + 1);
        }

        else
        {
          if (v14 != 4)
          {
            return 0;
          }

          *&__p = *(a2 + 2);
        }

        v16 = *a1;
        v17 = kCFNumberCGFloatType;
LABEL_153:
        v13 = CFNumberCreate(v16, v17, &__p);
        goto LABEL_154;
      default:
        if (v15 == 257)
        {
          v20 = CFStringCreateWithBytes(*a1, a2 + 8, v14, 0x8000100u, 0);
        }

        else
        {
          if (v15 != 513)
          {
            return v13;
          }

          v20 = CFDataCreate(*a1, a2 + 8, v14);
        }

        break;
    }

LABEL_127:
    v13 = v20;
    if (!a4)
    {
      return v13;
    }

    goto LABEL_155;
  }

  if (v15 <= 1792)
  {
    if (v15 > 1280)
    {
      if (v15 != 1281)
      {
        if (v15 != 1537)
        {
          return v13;
        }

        if (v14 < 4)
        {
          return 0;
        }

        v21 = v14 >> 2;
        *&__p = 0.0;
        v70 = 0;
        v71 = 0;
        std::__tree<CFBookmarkDataItem const*>::__emplace_unique_key_args<CFBookmarkDataItem const*,CFBookmarkDataItem const* const&>(a3, &v72);
        v22 = 2;
        do
        {
          if (v72)
          {
            if (v22 * 4 - 4 <= *v72)
            {
              DataItemAtOffset = BookmarkData::getDataItemAtOffset(a1, v72[v22]);
              if (DataItemAtOffset)
              {
                v24 = BookmarkData::copyItem(a1, DataItemAtOffset, a3, 0);
                if (v24)
                {
                  v25 = v70;
                  if (v70 >= v71)
                  {
                    v27 = (v70 - __p) >> 3;
                    if ((v27 + 1) >> 61)
                    {
                      std::string::__throw_length_error[abi:nn200100]();
                    }

                    v28 = (v71 - __p) >> 2;
                    if (v28 <= v27 + 1)
                    {
                      v28 = v27 + 1;
                    }

                    if (v71 - __p >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v29 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v29 = v28;
                    }

                    if (v29)
                    {
                      std::__allocate_at_least[abi:nn200100]<std::allocator<void const*>>(&__p, v29);
                    }

                    v30 = (8 * v27);
                    *v30 = v24;
                    v26 = 8 * v27 + 8;
                    v31 = v30 - (v70 - __p);
                    memcpy(v31, __p, v70 - __p);
                    v32 = __p;
                    __p = v31;
                    v70 = v26;
                    v71 = 0;
                    if (v32)
                    {
                      operator delete(v32);
                    }
                  }

                  else
                  {
                    *v70 = v24;
                    v26 = (v25 + 8);
                  }

                  v70 = v26;
                }
              }
            }
          }

          ++v22;
          --v21;
        }

        while (v21);
        std::__tree<CFBookmarkDataItem const*>::__erase_unique<CFBookmarkDataItem const*>(a3, &v72);
        v13 = CFArrayCreate(*a1, __p, (v70 - __p) >> 3, MEMORY[0x1E695E9C0]);
        v34 = __p;
        v33 = v70;
        if (__p < v70)
        {
          do
          {
            if (*v34)
            {
              CFRelease(*v34);
              *v34 = 0;
              v33 = v70;
            }

            ++v34;
          }

          while (v34 < v33);
          v34 = __p;
        }

        if (v34)
        {
          v70 = v34;
          v35 = v34;
          goto LABEL_142;
        }

        goto LABEL_154;
      }

      v18 = MEMORY[0x1E695E4D0];
    }

    else
    {
      if (v15 == 1024)
      {
        if (v14 >= 8)
        {
          v20 = CFDateCreate(*a1, COERCE_CFABSOLUTETIME(bswap64(*(a2 + 1))));
          goto LABEL_127;
        }

        return 0;
      }

      if (v15 != 1280)
      {
        return v13;
      }

      v18 = MEMORY[0x1E695E4C0];
    }

LABEL_68:
    v13 = *v18;
    if (!a4)
    {
      return v13;
    }

    goto LABEL_155;
  }

  if (v15 > 2304)
  {
    if (v15 != 2305)
    {
      if (v15 != 2306)
      {
        if (v15 != 2561)
        {
          return v13;
        }

        v18 = MEMORY[0x1E695E738];
        goto LABEL_68;
      }

      if (v14 >= 8)
      {
        std::__tree<CFBookmarkDataItem const*>::__emplace_unique_key_args<CFBookmarkDataItem const*,CFBookmarkDataItem const* const&>(a3, &v72);
        v37 = BookmarkData::getDataItemAtOffset(a1, a2[2]);
        v38 = BookmarkData::getDataItemAtOffset(a1, a2[3]);
        v39 = CFURLGetTypeID();
        v40 = BookmarkData::copyItem(a1, v37, a3, v39);
        TypeID = CFStringGetTypeID();
        v42 = BookmarkData::copyItem(a1, v38, a3, TypeID);
        std::__tree<CFBookmarkDataItem const*>::__erase_unique<CFBookmarkDataItem const*>(a3, &v72);
        if (!v40)
        {
          if (!v42)
          {
            return 0;
          }

          v62 = v42;
          goto LABEL_158;
        }

        if (v42)
        {
          v13 = CFURLCreateWithString(*a1, v42, v40);
          CFRelease(v42);
        }

        else
        {
          v13 = 0;
        }

        v44 = v40;
        goto LABEL_165;
      }

      return 0;
    }

    v43 = CFStringCreateWithBytes(*a1, a2 + 8, v14, 0x8000100u, 0);
    v13 = CFURLCreateWithString(*a1, v43, 0);
    if (v43)
    {
      v44 = v43;
LABEL_165:
      CFRelease(v44);
      if (!a4)
      {
        return v13;
      }

      goto LABEL_155;
    }

LABEL_154:
    if (!a4)
    {
      return v13;
    }

    goto LABEL_155;
  }

  if (v15 != 1793)
  {
    if (v15 != 2049)
    {
      return v13;
    }

    if (v14 == 16)
    {
      *byte7 = *(a2 + 15);
      v20 = CFUUIDCreateWithBytes(*a1, *(a2 + 8), *(a2 + 9), *(a2 + 10), *(a2 + 11), *(a2 + 12), *(a2 + 13), *(a2 + 14), byte7[0], byte7[1], byte7[2], byte7[3], byte7[4], byte7[5], byte7[6], byte7[7], *(a2 + 23));
      goto LABEL_127;
    }

    return 0;
  }

  if (v14 < 8)
  {
    return 0;
  }

  v45 = v14 >> 3;
  *&__p = 0.0;
  v70 = 0;
  v71 = 0;
  values = 0;
  v67 = 0;
  v68 = 0;
  std::__tree<CFBookmarkDataItem const*>::__emplace_unique_key_args<CFBookmarkDataItem const*,CFBookmarkDataItem const* const&>(a3, &v72);
  v46 = 0;
  v47 = 8 * v45;
  do
  {
    v48 = v72;
    if (v72)
    {
      v49 = *v72;
      v50 = v46 + 4 <= v49 ? BookmarkData::getDataItemAtOffset(a1, v72[v46 / 4 + 2]) : 0;
      if (v46 + 8 <= v49)
      {
        v51 = BookmarkData::getDataItemAtOffset(a1, v48[v46 / 4 + 3]);
        if (v50)
        {
          v52 = v51;
          if (v51)
          {
            v53 = BookmarkData::copyItem(a1, v50, a3, 0);
            v54 = BookmarkData::copyItem(a1, v52, a3, 0);
            v55 = v54;
            if (v53)
            {
              if (v54)
              {
                v65 = v53;
                std::vector<void const*>::push_back[abi:nn200100](&__p, &v65);
                v65 = v55;
                std::vector<void const*>::push_back[abi:nn200100](&values, &v65);
                goto LABEL_85;
              }

              v54 = v53;
            }

            else if (!v54)
            {
              goto LABEL_85;
            }

            CFRelease(v54);
          }
        }
      }
    }

LABEL_85:
    v46 += 8;
  }

  while (v47 != v46);
  std::__tree<CFBookmarkDataItem const*>::__erase_unique<CFBookmarkDataItem const*>(a3, &v72);
  v13 = CFDictionaryCreate(*a1, __p, values, (v70 - __p) >> 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v59 = __p;
  v58 = v70;
  while (v59 != v58)
  {
    if (*v59)
    {
      CFRelease(*v59);
      *v59 = 0;
      v58 = v70;
    }

    ++v59;
  }

  v61 = values;
  v60 = v67;
  if (values != v67)
  {
    do
    {
      if (*v61)
      {
        CFRelease(*v61);
        *v61 = 0;
        v60 = v67;
      }

      ++v61;
    }

    while (v61 != v60);
    v61 = values;
  }

  if (v61)
  {
    v67 = v61;
    operator delete(v61);
  }

  v35 = __p;
  if (*&__p == 0.0)
  {
    goto LABEL_154;
  }

  v70 = __p;
LABEL_142:
  operator delete(v35);
  if (a4)
  {
LABEL_155:
    if (!v13 || CFGetTypeID(v13) == a4)
    {
      return v13;
    }

    v62 = v13;
LABEL_158:
    CFRelease(v62);
    return 0;
  }

  return v13;
}

void std::vector<void const*>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<void const*>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

CFTypeRef BookmarkData::copyItemFromCache(BookmarkData *this, unsigned int a2, unsigned int a3)
{
  v3 = 0;
  if (a2 && a3)
  {
    v7[0] = a2;
    v7[1] = a3;
    v5 = std::__tree<std::__value_type<std::pair<unsigned int,unsigned int>,void const*>,std::__map_value_compare<std::pair<unsigned int,unsigned int>,std::__value_type<std::pair<unsigned int,unsigned int>,void const*>,std::less<std::pair<unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned int>,void const*>>>::find<std::pair<unsigned int,unsigned int>>(this + 48, v7);
    if ((this + 56) == v5)
    {
      return 0;
    }

    else
    {
      v3 = v5[5];
      if (v3)
      {
        CFRetain(v5[5]);
      }
    }
  }

  return v3;
}

uint64_t BookmarkData::addItemToCache(BookmarkData *this, unsigned int a2, unsigned int a3, const void *a4)
{
  if (a2 && a3)
  {
    v11 = __PAIR64__(a3, a2);
    v6 = std::__tree<std::__value_type<std::pair<unsigned int,unsigned int>,void const*>,std::__map_value_compare<std::pair<unsigned int,unsigned int>,std::__value_type<std::pair<unsigned int,unsigned int>,void const*>,std::less<std::pair<unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned int>,void const*>>>::find<std::pair<unsigned int,unsigned int>>(this + 48, &v11);
    if ((this + 56) == v6)
    {
      if (a4)
      {
        CFRetain(a4);
      }

      v9 = v11;
      v10 = a4;
      std::__tree<std::__value_type<std::pair<unsigned int,unsigned int>,void const*>,std::__map_value_compare<std::pair<unsigned int,unsigned int>,std::__value_type<std::pair<unsigned int,unsigned int>,void const*>,std::less<std::pair<unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned int>,void const*>>>::__emplace_unique_key_args<std::pair<unsigned int,unsigned int>,std::pair<std::pair<unsigned int,unsigned int>,void const*>>(this + 48, &v9);
    }

    else
    {
      v7 = v6[5];
      if (v7 != a4)
      {
        if (a4)
        {
          CFRetain(a4);
        }

        v9 = v11;
        v10 = a4;
        std::__tree<std::__value_type<std::pair<unsigned int,unsigned int>,void const*>,std::__map_value_compare<std::pair<unsigned int,unsigned int>,std::__value_type<std::pair<unsigned int,unsigned int>,void const*>,std::less<std::pair<unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned int>,void const*>>>::__emplace_unique_key_args<std::pair<unsigned int,unsigned int>,std::pair<std::pair<unsigned int,unsigned int>,void const*>>(this + 48, &v9);
        if (v7)
        {
          CFRelease(v7);
        }
      }
    }
  }

  return 0;
}

const void *BookmarkData::copyItem(BookmarkData *this, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = BookmarkData::copyItemFromCache(this, a2, a3);
  if (!v8)
  {
    ItemInTOC = BookmarkData::findItemInTOC(this, a2, a3);
    if (ItemInTOC)
    {
      v8 = BookmarkData::copyDataItemAtOffset(this, ItemInTOC[1], a4);
      if (v8)
      {
        BookmarkData::addItemToCache(this, a2, a3, v8);
      }
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

unsigned int *BookmarkData::findItemInTOC(BookmarkData *this, unsigned int a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  FirstTOC = BookmarkData::getFirstTOC(this, a3);
  if (!FirstTOC)
  {
    return 0;
  }

  v7 = FirstTOC;
  do
  {
    if (a3 && *(v7 + 8) != a3)
    {
      ItemInSingleTOCByItemType = 0;
    }

    else
    {
      ItemInSingleTOCByItemType = BookmarkData::findItemInSingleTOCByItemType(FirstTOC, v7, a2);
    }

    FirstTOC = BookmarkData::getTOCAtOffset(this, *(v7 + 12));
    v10 = FirstTOC != v7 && FirstTOC != 0 && ItemInSingleTOCByItemType == 0;
    v7 = FirstTOC;
  }

  while (v10);
  return ItemInSingleTOCByItemType;
}

CFNumberRef BookmarkData::copyItem(BookmarkData *this, const __CFString *a2, int a3, uint64_t a4)
{
  result = BookmarkData::findItemInTOC(this, a2, a3);
  if (result)
  {
    v7 = *(result + 1);

    return BookmarkData::copyDataItemAtOffset(this, v7, a4);
  }

  return result;
}

_DWORD *BookmarkData::findItemInTOC(BookmarkData *this, CFStringRef theString, int a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (theString)
  {
    CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
    if (CStringPtr)
    {
      v7 = CStringPtr;
      Length = CFStringGetLength(theString);
      v9 = 0;
      usedBufLen = Length;
    }

    else
    {
      usedBufLen = 0;
      v22.length = CFStringGetLength(theString);
      v7 = buffer;
      v22.location = 0;
      if (CFStringGetBytes(theString, v22, 0x8000100u, 0, 0, buffer, 128, &usedBufLen))
      {
        v9 = 0;
      }

      else
      {
        maxBufLen = 0;
        v23.length = CFStringGetLength(theString);
        v23.location = 0;
        if (CFStringGetBytes(theString, v23, 0x8000100u, 0, 0, 0, 0, &maxBufLen))
        {
          v7 = malloc_type_malloc(maxBufLen, 0x36F28864uLL);
          v24.length = CFStringGetLength(theString);
          v24.location = 0;
          if (!CFStringGetBytes(theString, v24, 0x8000100u, 0, 0, v7, maxBufLen, &usedBufLen))
          {
            usedBufLen = 0;
          }
        }

        else
        {
          v7 = 0;
        }

        v9 = v7;
      }
    }

    ItemInSingleTOCByKeyStringBytes = 0;
    if (v7)
    {
      v11 = usedBufLen;
      if (usedBufLen >= 1)
      {
        FirstTOC = BookmarkData::getFirstTOC(this, a3);
        if (!FirstTOC)
        {
          ItemInSingleTOCByKeyStringBytes = 0;
          if (!v9)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

        v13 = FirstTOC;
        ItemInSingleTOCByKeyStringBytes = 0;
        do
        {
          if (*(v13 + 8) == a3)
          {
            ItemInSingleTOCByKeyStringBytes = BookmarkData::findItemInSingleTOCByKeyStringBytes(this, v13, v7, v11);
          }

          TOCAtOffset = BookmarkData::getTOCAtOffset(this, *(v13 + 12));
          v15 = TOCAtOffset == v13 || TOCAtOffset == 0;
          v13 = TOCAtOffset;
        }

        while (!v15);
      }
    }

    if (v9)
    {
LABEL_24:
      free(v9);
    }
  }

  else
  {
    ItemInSingleTOCByKeyStringBytes = 0;
  }

LABEL_25:
  v16 = *MEMORY[0x1E69E9840];
  return ItemInSingleTOCByKeyStringBytes;
}

CFNumberRef BookmarkData::copyDataItemAtOffset(BookmarkData *this, unsigned int a2, uint64_t a3)
{
  DataItemAtOffset = BookmarkData::getDataItemAtOffset(this, a2);
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  v6 = BookmarkData::copyItem(this, DataItemAtOffset, &v8, a3);
  std::__tree<std::__value_type<std::pair<unsigned int,unsigned int>,void const*>,std::__map_value_compare<std::pair<unsigned int,unsigned int>,std::__value_type<std::pair<unsigned int,unsigned int>,void const*>,std::less<std::pair<unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned int>,void const*>>>::destroy(&v8, v9[0]);
  return v6;
}

BOOL BookmarkData::getItemAs(BookmarkData *this, unsigned int a2, int a3, unsigned int *a4)
{
  ItemInTOC = BookmarkData::findItemInTOC(this, a2, a3);
  if (!ItemInTOC)
  {
    return 0;
  }

  v7 = ItemInTOC[1];
  DataItemAtOffset = BookmarkData::getDataItemAtOffset(this, v7);
  if (!DataItemAtOffset)
  {
    return 0;
  }

  v9 = DataItemAtOffset[1];
  if (v9 != 771 && v9 != 513)
  {
    TypeID = CFNumberGetTypeID();
    v12 = BookmarkData::copyDataItemAtOffset(this, v7, TypeID);
    if (v12)
    {
      v13 = v12;
      v10 = CFNumberGetValue(v12, kCFNumberSInt32Type, a4) != 0;
      CFRelease(v13);
      return v10;
    }

    return 0;
  }

  if (*DataItemAtOffset != 4)
  {
    return 0;
  }

  *a4 = DataItemAtOffset[2];
  return 1;
}

uint64_t BookmarkData::getItemAs(BookmarkData *this, unsigned int a2, int a3, BOOL *a4)
{
  result = BookmarkData::findItemInTOC(this, a2, a3);
  if (result)
  {
    result = BookmarkData::getDataItemAtOffset(this, *(result + 4));
    if (result)
    {
      v7 = *(result + 4);
      if (v7 == 1281)
      {
        v8 = 1;
        goto LABEL_7;
      }

      if (v7 == 1280)
      {
        v8 = 0;
LABEL_7:
        *a4 = v8;
        return 1;
      }

      return 0;
    }
  }

  return result;
}

BOOL BookmarkData::getURLResourceProperties(BookmarkData *a1, int a2, uint64_t a3)
{
  MisalignedItemDataPtr = BookmarkData::getMisalignedItemDataPtr(a1, 0x1010u, 0x18u, a2, &v7);
  if (MisalignedItemDataPtr)
  {
    v5 = *MisalignedItemDataPtr;
    *(a3 + 16) = *(MisalignedItemDataPtr + 2);
    *a3 = v5;
  }

  return MisalignedItemDataPtr != 0;
}

BOOL BookmarkData::getURLVolumeProperties(BookmarkData *a1, int a2, uint64_t a3)
{
  MisalignedItemDataPtr = BookmarkData::getMisalignedItemDataPtr(a1, 0x2020u, 0x18u, a2, &v7);
  if (MisalignedItemDataPtr)
  {
    v5 = *MisalignedItemDataPtr;
    *(a3 + 16) = *(MisalignedItemDataPtr + 2);
    *a3 = v5;
  }

  return MisalignedItemDataPtr != 0;
}

uint64_t BookmarkData::getNextTOC(BookmarkData *a1, uint64_t a2)
{
  if (a2)
  {
    result = BookmarkData::getTOCAtOffset(a1, *(a2 + 12));
  }

  else
  {
    result = 0;
  }

  if (result == a2)
  {
    return 0;
  }

  return result;
}

uint64_t BookmarkData::getFirstTOC(BookmarkData *this, int a2)
{
  v4 = *(this + 3);
  if (v4)
  {
    v5 = *(v4 + *(this + 9));
  }

  else
  {
    v5 = 0;
  }

  TOCAtOffset = BookmarkData::getTOCAtOffset(this, v5);
  result = 0;
  if (a2 && TOCAtOffset)
  {
    while (*(TOCAtOffset + 8) != a2)
    {
      v8 = BookmarkData::getTOCAtOffset(this, *(TOCAtOffset + 12));
      v9 = v8 == TOCAtOffset || v8 == 0;
      TOCAtOffset = v8;
      if (v9)
      {
        return 0;
      }
    }

    return TOCAtOffset;
  }

  return result;
}

_DWORD *BookmarkData::getIndexedItemInTOC(BookmarkData *this, unsigned int a2, int a3)
{
  result = BookmarkData::getFirstTOC(this, a3);
  if (result)
  {
    v7 = result;
    while (1)
    {
      if (!a3 || v7[2] == a3)
      {
        v8 = v7[4];
        v9 = a2 >= v8;
        v10 = a2 - v8;
        if (v10 == 0 || !v9)
        {
          if (v9)
          {
            return 0;
          }

          else
          {
            return &v7[3 * a2 + 5];
          }
        }

        a2 = v10;
      }

      TOCAtOffset = BookmarkData::getTOCAtOffset(this, v7[3]);
      v12 = TOCAtOffset == v7 || TOCAtOffset == 0;
      v7 = TOCAtOffset;
      if (v12)
      {
        return 0;
      }
    }
  }

  return result;
}

unsigned int *BookmarkData::findItemInSingleTOCByItemType(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 16);
  if (a3 == -1)
  {
    if (v3)
    {
      return (a2 + 20);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (a3 && v3)
    {
      v5 = v3 - 1;
      if (v5 < 0)
      {
        return 0;
      }

      else
      {
        v6 = 0;
        while (1)
        {
          v7 = (v6 + v5) >> 1;
          result = (a2 + 20 + 12 * v7);
          if (*result == a3)
          {
            break;
          }

          if (*result <= a3)
          {
            v6 = v7 + 1;
          }

          else
          {
            v5 = v7 - 1;
          }

          if (v6 > v5)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

_DWORD *BookmarkData::findItemInSingleTOCByKeyStringBytes(BookmarkData *this, uint64_t a2, const void *a3, size_t a4)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    for (i = (a2 + 12 * v4 + 8); (*i & 0x80000000) != 0; i -= 3)
    {
      DataItemAtOffset = BookmarkData::getDataItemAtOffset(this, *i & 0x7FFFFFFF);
      if (DataItemAtOffset && DataItemAtOffset[1] == 257 && *DataItemAtOffset == a4 && !memcmp(a3, DataItemAtOffset + 2, a4))
      {
        return i;
      }

      if (!--v4)
      {
        return 0;
      }
    }
  }

  return 0;
}

unsigned int *BookmarkData::getMisalignedItemDataPtr(BookmarkData *this, unsigned int a2, unsigned int a3, int a4, unsigned int *a5)
{
  result = BookmarkData::findItemInTOC(this, a2, a4);
  if (result)
  {
    result = BookmarkData::getDataItemAtOffset(this, result[1]);
    if (result)
    {
      v9 = *result;
      result += 2;
      *a5 = v9;
      if (v9 < a3)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t BookmarkData::bookmarkFlags(BookmarkData *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (v2 > 0x1004FFFF)
  {
    return *(v1 + 60);
  }

  if (v2 <= 0x1003FFFF)
  {
    return 0;
  }

  return *(v1 + 8);
}

void BookmarkMutableData::BookmarkMutableData(BookmarkMutableData *this, const __CFAllocator *a2, int a3)
{
  *this = a2;
  *(this + 2) = a3;
  *(this + 3) = currentBookmarkVersion();
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 12) = 0;
  *(this + 7) = this + 56;
  *(this + 8) = this + 56;
  *(this + 9) = 0;
  *(this + 5) = 0x20000000004;
  v4 = malloc_type_malloc(0x200uLL, 0x52C270DDuLL);
  *(this + 4) = v4;
  *v4 = 0;
}

void BookmarkMutableData::BookmarkMutableData(BookmarkMutableData *this, const __CFAllocator *a2, const __CFData *a3)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = a2;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 12) = 0;
  *(this + 7) = this + 56;
  *(this + 8) = this + 56;
  *(this + 9) = 0;
  *(this + 5) = 0x20000000004;
  v6 = malloc_type_malloc(0x200uLL, 0x567A00ACuLL);
  *(this + 4) = v6;
  *v6 = 0;
  BookmarkData::BookmarkData(v23, a2, a3);
  v7 = v24;
  if (v24)
  {
    v8 = v24[2];
    *(this + 2) = *v24;
    *(this + 3) = v8;
    if (v8 <= 0x1004FFFF)
    {
      v9 = v8;
      if (v8 <= 0x1003FFFF)
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = v7[15];
    }

    *(this + 6) = v9;
    FirstTOC = BookmarkData::getFirstTOC(v23, 1);
    if (FirstTOC)
    {
      v11 = FirstTOC;
      do
      {
        BookmarkMutableData::createTOC(this, *(v11 + 8));
        v12 = *(v11 + 16);
        if (v12)
        {
          v13 = (v11 + 28);
          do
          {
            v14 = *(v13 - 2);
            if (v14 < 0)
            {
              DataItemAtOffset = BookmarkData::getDataItemAtOffset(v23, v14 & 0x7FFFFFFF);
              v26[0] = 0;
              v26[1] = 0;
              v25 = v26;
              v15 = BookmarkData::copyItem(v23, DataItemAtOffset, &v25, 0);
              std::__tree<std::__value_type<std::pair<unsigned int,unsigned int>,void const*>,std::__map_value_compare<std::pair<unsigned int,unsigned int>,std::__value_type<std::pair<unsigned int,unsigned int>,void const*>,std::less<std::pair<unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned int>,void const*>>>::destroy(&v25, v26[0]);
              v18 = BookmarkData::copyDataItemAtOffset(v23, *(v13 - 1), 0);
              v19 = *v13;
              BookmarkMutableData::encodeItem(this, v15, v18);
              if (v18)
              {
                CFRelease(v18);
              }
            }

            else
            {
              v15 = BookmarkData::copyDataItemAtOffset(v23, *(v13 - 1), 0);
              v16 = *v13;
              BookmarkMutableData::encodeItem(this, *(v13 - 2), v15);
            }

            if (v15)
            {
              CFRelease(v15);
            }

            v13 += 3;
            --v12;
          }

          while (v12);
        }

        v20 = *(v11 + 8);
        if (v20 != 1)
        {
          BookmarkMutableData::finalizeTOC(this, v20);
        }

        TOCAtOffset = BookmarkData::getTOCAtOffset(v23, *(v11 + 12));
        v22 = TOCAtOffset == v11 || TOCAtOffset == 0;
        v11 = TOCAtOffset;
      }

      while (!v22);
    }
  }

  BookmarkData::~BookmarkData(v23);
}

uint64_t BookmarkMutableData::createTOC(BookmarkMutableData *this, int a2)
{
  v4 = this + 56;
  v5 = *(this + 8);
  if (v5 == v4)
  {
    goto LABEL_18;
  }

  v6 = v5;
  do
  {
    v7 = *(v6 + 2);
    if (a2 && *(v7 + 8) != a2)
    {
      v7 = 0;
    }

    if (v7)
    {
      break;
    }

    v6 = *(v6 + 1);
  }

  while (v6 != v4);
  if (!v7)
  {
LABEL_18:
    v14 = malloc_type_malloc(0x14uLL, 0x1000040A86A77D5uLL);
    *v14 = 0xFFFFFFFE00000014;
    v14[3] = 0;
    v14[4] = 0;
    v14[2] = a2;
    v15 = *(this + 8);
    operator new();
  }

  v8 = v5;
  while (*(v8 + 2) != v7)
  {
    v8 = *(v8 + 1);
    if (v8 == v4)
    {
      v8 = v4;
      break;
    }
  }

  if (v8 != v5)
  {
    do
    {
      if (*(v5 + 2) == v7)
      {
        goto LABEL_17;
      }

      v5 = *(v5 + 1);
    }

    while (v5 != v4);
    v5 = v4;
LABEL_17:
    v10 = *v5;
    v9 = *(v5 + 1);
    *(v10 + 8) = v9;
    *v9 = v10;
    v12 = *(this + 9);
    v11 = (this + 72);
    *v11 = v12 - 1;
    operator delete(v5);
    v13 = *(v11 - 1);
    operator new();
  }

  return 1;
}

uint64_t BookmarkMutableData::encodeItem(void **this, const __CFString *cf2, const __CFString *a3)
{
  if (!a3)
  {
    return 0;
  }

  v6 = CFBookmarkPropertyKeyToKnownType(cf2);
  if (!v6)
  {
    v7 = BookmarkMutableData::encodeItem(this, cf2);
    if (v7)
    {
      v6 = v7 | 0x80000000;
    }

    else
    {
      v6 = 0;
    }
  }

  if (BookmarkMutableData::itemInTOC(this, v6, 0))
  {
    return 0;
  }

  v9 = BookmarkMutableData::encodeItem(this, a3);
  if (!v6 || !v9)
  {
    return 0;
  }

  return BookmarkMutableData::appendTOCItem(this, v6, v9);
}

uint64_t BookmarkMutableData::encodeItem(void **this, int a2, const __CFString *a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = BookmarkMutableData::encodeItem(this, a3);
  if (!v5)
  {
    return 0;
  }

  return BookmarkMutableData::appendTOCItem(this, a2, v5);
}

BOOL BookmarkMutableData::finalizeTOC(BookmarkMutableData *this, int a2)
{
  v2 = *(this + 8);
  if (v2 == (this + 56))
  {
    return 0;
  }

  do
  {
    v3 = v2[2];
    if (a2 && v3[2] != a2)
    {
      v3 = 0;
    }

    if (v3)
    {
      break;
    }

    v2 = v2[1];
  }

  while (v2 != (this + 56));
  return v3 && BookmarkMutableData::finalizeTOC(this, v3);
}

void BookmarkMutableData::~BookmarkMutableData(BookmarkMutableData *this)
{
  while (*(this + 9))
  {
    free(*(*(this + 8) + 16));
    v2 = *(this + 8);
    v3 = *(this + 9);
    v5 = *v2;
    v4 = v2[1];
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 9) = v3 - 1;
    operator delete(v2);
  }

  v6 = *(this + 4);
  if (v6)
  {
    free(v6);
  }

  *(this + 4) = 0;
  std::__list_imp<CFBookmarkTOC *>::clear(this + 7);
  v7 = *(this + 2);
  if (v7)
  {
    CFRelease(v7);
  }
}

unsigned int *BookmarkMutableData::getDataItemAtOffset(BookmarkMutableData *this, unsigned int a2)
{
  v2 = *(this + 10);
  if (a2 + 8 > v2)
  {
    return 0;
  }

  v3 = *(this + 4);
  if (!v3)
  {
    return 0;
  }

  result = (v3 + a2);
  v5 = *result;
  if (v5 <= 0xFFFFFFF6 && v5 + a2 + 8 > v2)
  {
    return 0;
  }

  return result;
}

uint64_t BookmarkMutableData::getTOCAtOffset(BookmarkMutableData *this, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(this + 10);
  if (a2 + 20 > v2)
  {
    return 0;
  }

  v3 = *(this + 4) + a2;
  if (*(v3 + 4) != -2)
  {
    return 0;
  }

  v4 = *(v3 + 16);
  if (v4 > 0x15555552)
  {
    return 0;
  }

  if (a2 + 12 * v4 + 20 <= v2)
  {
    return *(this + 4) + a2;
  }

  return 0;
}

uint64_t BookmarkMutableData::findDataItem(BookmarkMutableData *this, int a2, const void *__s1, size_t __n)
{
  if (a2)
  {
    v5 = *(this + 10);
    if (v5 >= 5)
    {
      v9 = 4;
      do
      {
        if (v9 + 8 > v5)
        {
          break;
        }

        v10 = *(this + 4);
        if (!v10)
        {
          break;
        }

        v11 = (v10 + v9);
        v12 = *v11;
        if (v12 <= 0xFFFFFFF6 && v12 + v9 + 8 > v5)
        {
          break;
        }

        if (v12 == __n && v11[1] == a2 && (!__s1 || !memcmp(__s1, v11 + 2, __n)))
        {
          return v9;
        }

        v9 = (v9 + v12 + 11) & 0xFFFFFFFC;
      }

      while (v9 < v5);
    }
  }

  return 0;
}

uint64_t BookmarkMutableData::appendDataItem(void **this, int a2, const void *a3, size_t a4)
{
  DataItem = BookmarkMutableData::findDataItem(this, a2, a3, a4);
  v9 = DataItem;
  if (a4 <= 0x7FFFFFFE && !DataItem)
  {
    if ((a4 & 3) != 0)
    {
      v10 = 4 - (a4 & 3);
    }

    else
    {
      v10 = 0;
    }

    v9 = *(this + 10);
    v11 = a4 + 8 + v10 + v9;
    if (v11 > 0x7FFFFFFE)
    {
      return 0;
    }

    else
    {
      v12 = *(this + 11);
      if (v11 <= v12)
      {
        v15 = this[4];
      }

      else
      {
        v13 = 2 * v12;
        if (v13 >= 0x7FFFFFFF)
        {
          v13 = 0x7FFFFFFFLL;
        }

        if (v11 <= v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = v11;
        }

        *(this + 11) = v14;
        v15 = malloc_type_realloc(this[4], v14, 0x125B0D9DuLL);
        this[4] = v15;
        v9 = *(this + 10);
      }

      *(this + 10) = v11;
      v16 = &v15[v9];
      *v16 = a4;
      *(v16 + 1) = a2;
      if (a3)
      {
        if ((v9 + 8) <= *(this + 10))
        {
          v17 = this[4] + (v9 + 8);
        }

        else
        {
          v17 = 0;
        }

        memcpy(v17, a3, a4);
      }

      if ((a4 & 3) != 0)
      {
        bzero(this[4] + (a4 + 8 + v9), 4 - (a4 & 3));
      }
    }
  }

  return v9;
}

uint64_t BookmarkMutableData::encodeCFStringAs(void **this, CFStringRef theString, int a3)
{
  v25 = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(theString);
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  if (CStringPtr)
  {
    v8 = CStringPtr;
    v9 = strlen(CStringPtr);
    v10 = *MEMORY[0x1E69E9840];
    v11 = v9;
    v12 = this;
    v13 = a3;
    v14 = v8;
LABEL_3:

    return BookmarkMutableData::appendDataItem(v12, v13, v14, v11);
  }

  if (!Length)
  {
    v17 = *MEMORY[0x1E69E9840];
    v12 = this;
    v13 = a3;
    v14 = 0;
    v11 = 0;
    goto LABEL_3;
  }

  maxBufLen = 0;
  v27.location = 0;
  v27.length = Length;
  if (CFStringGetBytes(theString, v27, 0x8000100u, 0, 0, buffer, 128, &maxBufLen) == Length)
  {
    appended = BookmarkMutableData::appendDataItem(this, a3, buffer, maxBufLen);
  }

  else
  {
    v28.location = 0;
    v28.length = Length;
    appended = 0;
    if (CFStringGetBytes(theString, v28, 0x8000100u, 0, 0, 0, 0, &maxBufLen) == Length)
    {
      v18 = BookmarkMutableData::appendDataItem(this, a3, 0, maxBufLen);
      appended = v18;
      if (v18)
      {
        if ((v18 + 8) <= *(this + 10))
        {
          v19 = this[4] + (v18 + 8);
        }

        else
        {
          v19 = 0;
        }

        v29.location = 0;
        v29.length = Length;
        if (CFStringGetBytes(theString, v29, 0x8000100u, 0, 0, v19, maxBufLen, 0) == Length)
        {
          appended = appended;
        }

        else
        {
          appended = 0;
        }
      }

      if ((appended + 8) <= *(this + 10))
      {
        v20 = this[4] + (appended + 8);
      }

      else
      {
        v20 = 0;
      }

      DataItem = BookmarkMutableData::findDataItem(this, a3, v20, maxBufLen);
      if (appended && DataItem != appended)
      {
        *(this + 10) = appended;
        appended = 1;
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return appended;
}

_DWORD *BookmarkMutableData::encodeItem(void **this, const __CFString *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_85;
  }

  v4 = CFGetTypeID(a2);
  if (*MEMORY[0x1E695E4D0] == a2)
  {
    v8 = *MEMORY[0x1E69E9840];
    v9 = this;
    v10 = 1281;
LABEL_10:
    v12 = 0;
    v13 = 0;
LABEL_11:

    return BookmarkMutableData::appendDataItem(v9, v10, v12, v13);
  }

  if (*MEMORY[0x1E695E4C0] == a2)
  {
    v11 = *MEMORY[0x1E69E9840];
    v9 = this;
    v10 = 1280;
    goto LABEL_10;
  }

  v5 = v4;
  if (v4 == CFStringGetTypeID())
  {
    v6 = *MEMORY[0x1E69E9840];

    return BookmarkMutableData::encodeCFStringAs(this, a2, 257);
  }

  if (v5 == CFNumberGetTypeID())
  {
    v14 = 0;
    switch(CFNumberGetType(a2))
    {
      case kCFNumberSInt8Type:
        valuePtr.byte0 = 0;
        if (!CFNumberGetValue(a2, kCFNumberSInt8Type, &valuePtr))
        {
          goto LABEL_85;
        }

        v15 = this;
        v16 = 769;
        goto LABEL_62;
      case kCFNumberSInt16Type:
        *&valuePtr.byte0 = 0;
        if (!CFNumberGetValue(a2, kCFNumberSInt16Type, &valuePtr))
        {
          goto LABEL_85;
        }

        v15 = this;
        v16 = 770;
        goto LABEL_65;
      case kCFNumberSInt32Type:
        *&valuePtr.byte0 = 0;
        if (!CFNumberGetValue(a2, kCFNumberSInt32Type, &valuePtr))
        {
          goto LABEL_85;
        }

        v15 = this;
        v16 = 771;
        goto LABEL_70;
      case kCFNumberSInt64Type:
        *&valuePtr.byte0 = 0;
        if (!CFNumberGetValue(a2, kCFNumberSInt64Type, &valuePtr))
        {
          goto LABEL_85;
        }

        v15 = this;
        v16 = 772;
        goto LABEL_22;
      case kCFNumberFloat32Type:
        *&valuePtr.byte0 = 0;
        if (!CFNumberGetValue(a2, kCFNumberFloat32Type, &valuePtr))
        {
          goto LABEL_85;
        }

        v15 = this;
        v16 = 773;
        goto LABEL_70;
      case kCFNumberFloat64Type:
        *&valuePtr.byte0 = 0;
        if (!CFNumberGetValue(a2, kCFNumberFloat64Type, &valuePtr))
        {
          goto LABEL_85;
        }

        v15 = this;
        v16 = 774;
        goto LABEL_22;
      case kCFNumberCharType:
        valuePtr.byte0 = 0;
        if (!CFNumberGetValue(a2, kCFNumberCharType, &valuePtr))
        {
          goto LABEL_85;
        }

        v15 = this;
        v16 = 775;
LABEL_62:
        v20 = 1;
        goto LABEL_23;
      case kCFNumberShortType:
        *&valuePtr.byte0 = 0;
        if (!CFNumberGetValue(a2, kCFNumberShortType, &valuePtr))
        {
          goto LABEL_85;
        }

        v15 = this;
        v16 = 776;
LABEL_65:
        v20 = 2;
        goto LABEL_23;
      case kCFNumberIntType:
        *&valuePtr.byte0 = 0;
        if (!CFNumberGetValue(a2, kCFNumberIntType, &valuePtr))
        {
          goto LABEL_85;
        }

        v15 = this;
        v16 = 777;
LABEL_70:
        v20 = 4;
        goto LABEL_23;
      case kCFNumberLongType:
        *&valuePtr.byte0 = 0;
        if (!CFNumberGetValue(a2, kCFNumberLongType, &valuePtr))
        {
          goto LABEL_85;
        }

        v15 = this;
        v16 = 778;
        goto LABEL_22;
      case kCFNumberLongLongType:
        *&valuePtr.byte0 = 0;
        if (!CFNumberGetValue(a2, kCFNumberLongLongType, &valuePtr))
        {
          goto LABEL_85;
        }

        v15 = this;
        v16 = 779;
        goto LABEL_22;
      case kCFNumberCFIndexType:
        *&valuePtr.byte0 = 0;
        if (!CFNumberGetValue(a2, kCFNumberCFIndexType, &valuePtr))
        {
          goto LABEL_85;
        }

        v15 = this;
        v16 = 782;
        goto LABEL_22;
      case kCFNumberNSIntegerType:
        *&valuePtr.byte0 = 0;
        if (!CFNumberGetValue(a2, kCFNumberNSIntegerType, &valuePtr))
        {
          goto LABEL_85;
        }

        v15 = this;
        v16 = 783;
        goto LABEL_22;
      case kCFNumberCGFloatType:
        *&valuePtr.byte0 = 0;
        if (!CFNumberGetValue(a2, kCFNumberCGFloatType, &valuePtr))
        {
          goto LABEL_85;
        }

        v15 = this;
        v16 = 784;
        goto LABEL_22;
      default:
        goto LABEL_86;
    }
  }

  if (v5 == CFDataGetTypeID())
  {
    BytePtr = CFDataGetBytePtr(a2);
    Length = CFDataGetLength(a2);
    v19 = *MEMORY[0x1E69E9840];
    v13 = Length;
    v9 = this;
    v10 = 513;
    v12 = BytePtr;
    goto LABEL_11;
  }

  if (v5 == CFDateGetTypeID())
  {
    *&valuePtr.byte0 = bswap64(COERCE_UNSIGNED_INT64(MEMORY[0x19A8C6F70](a2)));
    v15 = this;
    v16 = 1024;
LABEL_22:
    v20 = 8;
    goto LABEL_23;
  }

  if (v5 != CFArrayGetTypeID())
  {
    if (v5 == CFDictionaryGetTypeID())
    {
      Count = CFDictionaryGetCount(a2);
      v28 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
      v29 = malloc_type_malloc(8 * Count, 0x100004052888210uLL);
      v30 = v29;
      if (v28 && v29)
      {
        CFDictionaryGetKeysAndValues(a2, v28, 0);
        if (Count < 1)
        {
          v37 = 0;
        }

        else
        {
          v31 = 0;
          v32 = v28;
          do
          {
            v33 = BookmarkMutableData::encodeItem(this, *v32);
            v34 = &v30[4 * v31];
            *v34 = v33;
            if (v33)
            {
              Value = CFDictionaryGetValue(a2, *v32);
              v36 = BookmarkMutableData::encodeItem(this, Value);
              if (v36)
              {
                *(v34 + 1) = v36;
                v31 += 2;
              }
            }

            ++v32;
            --Count;
          }

          while (Count);
          v37 = 4 * v31;
        }

        appended = BookmarkMutableData::appendDataItem(this, 1793, v30, v37);
      }

      else
      {
        appended = 0;
        v14 = 0;
        if (!v28)
        {
LABEL_90:
          if (v30)
          {
            free(v30);
          }

          goto LABEL_86;
        }
      }

      free(v28);
      v14 = appended;
      goto LABEL_90;
    }

    if (v5 == CFUUIDGetTypeID())
    {
      valuePtr = CFUUIDGetUUIDBytes(a2);
      v15 = this;
      v16 = 2049;
      v20 = 16;
LABEL_23:
      v14 = BookmarkMutableData::appendDataItem(v15, v16, &valuePtr, v20);
LABEL_86:
      v47 = *MEMORY[0x1E69E9840];
      return v14;
    }

    if (v5 == CFURLGetTypeID())
    {
      if (!CFURLIsFileReferenceURL(a2) || (v39 = CFGetAllocator(a2), (v40 = CFURLCreateFilePathURL(v39, a2, 0)) == 0))
      {
        CFRetain(a2);
        v40 = a2;
      }

      v41 = CFURLGetBaseURL(v40);
      if (v41)
      {
        *&valuePtr.byte0 = BookmarkMutableData::encodeItem(this, v41);
        v42 = CFURLGetString(v40);
        *&valuePtr.byte4 = BookmarkMutableData::encodeItem(this, v42);
        v43 = BookmarkMutableData::appendDataItem(this, 2306, &valuePtr, 8uLL);
      }

      else
      {
        v48 = CFURLGetString(v40);
        v43 = BookmarkMutableData::encodeCFStringAs(this, v48, 2305);
      }

      v14 = v43;
      CFRelease(v40);
      goto LABEL_86;
    }

    if (v5 == CFNullGetTypeID())
    {
      v46 = *MEMORY[0x1E69E9840];
      v9 = this;
      v10 = 2561;
      goto LABEL_10;
    }

LABEL_85:
    v14 = 0;
    goto LABEL_86;
  }

  v21 = CFArrayGetCount(a2);
  v14 = malloc_type_malloc(4 * v21, 0x100004052888210uLL);
  if (!v14)
  {
    goto LABEL_86;
  }

  if (v21 < 1)
  {
    v26 = 0;
  }

  else
  {
    v22 = 0;
    for (i = 0; i != v21; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
      v25 = BookmarkMutableData::encodeItem(this, ValueAtIndex);
      if (v25)
      {
        v14[v22++] = v25;
      }
    }

    v26 = 4 * v22;
  }

  v44 = BookmarkMutableData::appendDataItem(this, 1537, v14, v26);
  free(v14);
  v45 = *MEMORY[0x1E69E9840];
  return v44;
}

uint64_t BookmarkMutableData::appendTOCItem(uint64_t **this, int a2, int a3)
{
  if (!this[9])
  {
    BookmarkMutableData::createTOC(this, 1);
  }

  v6 = this[8];
  v7 = v6[2];
  v8 = v7[4];
  if (!v8)
  {
    v9 = 0;
    if (!a2)
    {
      return v9 & 1;
    }

LABEL_12:
    v12 = (this + 7);
    while (1)
    {
      if (v6 == v12)
      {
        goto LABEL_17;
      }

      if (v6[2] == v7)
      {
        break;
      }

      v6 = v6[1];
    }

    v12 = v6;
LABEL_17:
    v14 = *v12;
    v13 = v12[1];
    *(v14 + 8) = v13;
    *v13 = v14;
    this[9] = (this[9] - 1);
    operator delete(v12);
    malloc_type_realloc(v7, 12 * (v8 + 1) + 20, 0x1000040A86A77D5uLL);
    v15 = this[8];
    operator new();
  }

  v9 = 0;
  v10 = v7 + 6;
  v11 = v7[4];
  do
  {
    if (a2 == *(v10 - 1))
    {
      v9 |= *v10 == a3;
      if (*v10 == a3)
      {
        a2 = 0;
      }
    }

    v10 += 3;
    --v11;
  }

  while (v11);
  if (a2)
  {
    goto LABEL_12;
  }

  return v9 & 1;
}

BOOL BookmarkMutableData::itemInTOC(BookmarkMutableData *this, int a2, int a3)
{
  v3 = a3;
  if (!a3)
  {
    if (*(this + 9))
    {
      v3 = *(*(*(this + 8) + 16) + 8);
    }

    else
    {
      v3 = 0;
    }
  }

  v6 = *(this + 8);
  if (v6 == (this + 56))
  {
    goto LABEL_15;
  }

  v7 = 0;
  do
  {
    v8 = v6[2];
    v9 = *(v8 + 16);
    if (v9 && !v7)
    {
      v10 = (v8 + 20);
      v11 = 1;
      do
      {
        v13 = *v10;
        v10 += 3;
        v12 = v13;
        v7 = v13 == a2;
        if (v11 >= v9)
        {
          break;
        }

        ++v11;
      }

      while (v12 != a2);
    }

    v6 = v6[1];
  }

  while (v6 != (this + 56));
  if (v7)
  {
    return 1;
  }

LABEL_15:
  v15 = *(this + 12);
  if (!v15)
  {
    return 0;
  }

  TOCAtOffset = BookmarkMutableData::getTOCAtOffset(this, v15);
  if (!TOCAtOffset)
  {
    return 0;
  }

  do
  {
    if (TOCAtOffset[2] == v3 && (v17 = TOCAtOffset[4], v17))
    {
      v18 = TOCAtOffset + 5;
      v19 = 1;
      do
      {
        v21 = *v18;
        v18 += 3;
        v20 = v21;
        v14 = v21 == a2;
        if (v19 >= v17)
        {
          break;
        }

        ++v19;
      }

      while (v20 != a2);
    }

    else
    {
      v14 = 0;
    }

    TOCAtOffset = BookmarkMutableData::getTOCAtOffset(this, TOCAtOffset[3]);
    if (TOCAtOffset)
    {
      v22 = !v14;
    }

    else
    {
      v22 = 0;
    }
  }

  while (v22);
  return v14;
}

uint64_t BookmarkMutableData::encodeValue(void **this, int a2, int a3)
{
  v6 = a3;
  result = BookmarkMutableData::appendDataItem(this, 771, &v6, 4uLL);
  if (result)
  {
    return BookmarkMutableData::appendTOCItem(this, a2, result);
  }

  return result;
}

uint64_t BookmarkMutableData::encodeRawData(void **this, int a2, UInt8 *bytes, CFIndex length)
{
  v6 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], bytes, length, *MEMORY[0x1E695E498]);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = BookmarkMutableData::encodeItem(this, a2, v6);
  CFRelease(v7);
  return v8;
}

BOOL BookmarkMutableData::tocExists(BookmarkMutableData *this, int a2)
{
  v2 = this + 56;
  v3 = *(this + 8);
LABEL_2:
  if (v3 == v2)
  {
LABEL_14:
    v7 = *(this + 12);
    if (v7 && (v8 = *(this + 10), v7 + 20 <= v8))
    {
      v9 = *(this + 4);
      do
      {
        v10 = v9 + v7;
        v11 = *(v10 + 8);
        result = v11 == a2;
        if (v11 == a2)
        {
          break;
        }

        v7 = *(v10 + 12);
      }

      while (v7 && v7 + 20 <= v8);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    do
    {
      v4 = *(v3 + 2);
      if (a2)
      {
        if (*(v4 + 8) != a2)
        {
          v3 = *(v3 + 1);
          goto LABEL_2;
        }

        return 1;
      }

      v3 = *(v3 + 1);
      if (v4)
      {
        v5 = 1;
      }

      else
      {
        v5 = v3 == v2;
      }
    }

    while (!v5);
    if (!v4)
    {
      goto LABEL_14;
    }

    return 1;
  }

  return result;
}

uint64_t BookmarkMutableData::findOpenTOC(BookmarkMutableData *this, int a2)
{
  v2 = this + 56;
  v3 = *(this + 8);
  if (v3 == this + 56)
  {
    return 0;
  }

  do
  {
    result = *(v3 + 2);
    if (a2 && *(result + 8) != a2)
    {
      result = 0;
    }

    if (result)
    {
      break;
    }

    v3 = *(v3 + 1);
  }

  while (v3 != v2);
  return result;
}

uint64_t BookmarkMutableData::findUnusedDepth(BookmarkMutableData *this, uint64_t a2, unsigned int a3)
{
  if (a2 >= a3)
  {
    return 0;
  }

  v4 = a2;
  while (BookmarkMutableData::tocExists(this, v4))
  {
    v4 = (v4 + 1);
    if (a3 == v4)
    {
      return 0;
    }
  }

  return v4;
}

BOOL BookmarkMutableData::finalizeTOC(BookmarkMutableData *this, _DWORD *a2)
{
  if (a2)
  {
    v4 = a2[4];
    if (v4)
    {
      v5 = (12 * v4 + 20);
      *a2 = v5;
      a2[3] = *(this + 12);
      *(this + 12) = BookmarkMutableData::appendDataItem(this, -2, a2 + 2, v5 - 8);
    }

    v6 = (this + 56);
    for (i = *(this + 8); i != v6; i = i[1])
    {
      if (i[2] == a2)
      {
        if (i != v6)
        {
          v9 = *i;
          v8 = i[1];
          v9[1] = v8;
          *v8 = v9;
          --*(this + 9);
          operator delete(i);
        }

        break;
      }
    }

    free(a2);
  }

  return a2 != 0;
}

void BookmarkMutableData::setTeamIdentifier(BookmarkMutableData *this, CFStringRef theString)
{
  if (theString && CFStringGetLength(theString) == 10)
  {
    v4 = *(this + 2);
    if (v4 != theString)
    {
      if (v4)
      {
        CFRelease(v4);
      }

      *(this + 2) = theString;
    }
  }

  else
  {
    v5 = *(this + 2);
    if (v5)
    {
      CFRelease(v5);
      *(this + 2) = 0;
    }
  }
}

uint64_t BookmarkMutableData::setRevocable(uint64_t this, int a2)
{
  v2 = *(this + 12);
  if (v2 >= 0x10050000)
  {
    *(this + 24) = *(this + 24) & 0xFFFFFFFE | a2;
  }

  *(this + 12) = v2 & 0xFFFFFFFE | a2;
  return this;
}

CFDataRef BookmarkMutableData::Finalize(CFAllocatorRef *this, const void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  Mutable = CFDataCreateMutable(*this, 0);
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v7 = *(this + 3);
  *bytes = *(this + 2);
  v20 = 0;
  v21 = v7;
  v22 = 64;
  v8 = this[2];
  if (v8)
  {
    v27.location = 0;
    v27.length = 10;
    CFStringGetBytes(v8, v27, 0x8000100u, 0, 0, &v25, 10, 0);
  }

  HIDWORD(v25) = *(this + 6);
  CFDataAppendBytes(Mutable, bytes, 64);
  if (this[9])
  {
    v9 = (this + 7);
    while (1)
    {
      v10 = this[8];
      if (v10 != v9)
      {
        break;
      }

      v11 = 0;
LABEL_15:
      BookmarkMutableData::finalizeTOC(this, v11);
      if (!this[9])
      {
        goto LABEL_16;
      }
    }

    v11 = 0;
    while (1)
    {
      if (v11)
      {
        v12 = *(v10 + 2);
        if (v11[2] <= v12[2])
        {
          goto LABEL_12;
        }
      }

      else
      {
        v12 = *(v10 + 2);
      }

      v11 = v12;
LABEL_12:
      v10 = *(v10 + 1);
      if (v10 == v9)
      {
        goto LABEL_15;
      }
    }
  }

LABEL_16:
  v13 = this[4];
  *v13 = *(this + 12);
  CFDataAppendBytes(Mutable, v13, *(this + 10));
  if (CFDataGetLength(Mutable) > 2147483646)
  {
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    goto LABEL_24;
  }

  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  *(MutableBytePtr + 1) = CFDataGetLength(Mutable);
  if (a2)
  {
    if (a3 != 32)
    {
      BookmarkMutableData::Finalize();
    }

    Length = CFDataGetLength(Mutable);
    CCHmac(2u, a2, 0x20uLL, MutableBytePtr, Length, MutableBytePtr + 16);
  }

  if (!Mutable)
  {
LABEL_24:
    Copy = 0;
    goto LABEL_25;
  }

  Copy = CFDataCreateCopy(*this, Mutable);
  CFRelease(Mutable);
LABEL_25:
  v17 = *MEMORY[0x1E69E9840];
  return Copy;
}

void *std::__list_imp<CFBookmarkTOC *>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void std::__tree<std::__value_type<std::pair<unsigned int,unsigned int>,void const*>,std::__map_value_compare<std::pair<unsigned int,unsigned int>,std::__value_type<std::pair<unsigned int,unsigned int>,void const*>,std::less<std::pair<unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned int>,void const*>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::pair<unsigned int,unsigned int>,void const*>,std::__map_value_compare<std::pair<unsigned int,unsigned int>,std::__value_type<std::pair<unsigned int,unsigned int>,void const*>,std::less<std::pair<unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned int>,void const*>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::pair<unsigned int,unsigned int>,void const*>,std::__map_value_compare<std::pair<unsigned int,unsigned int>,std::__value_type<std::pair<unsigned int,unsigned int>,void const*>,std::less<std::pair<unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned int>,void const*>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void *std::__tree<CFBookmarkDataItem const*>::__emplace_unique_key_args<CFBookmarkDataItem const*,CFBookmarkDataItem const* const&>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<CFBookmarkDataItem const*>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<void const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::__tree<CFBookmarkDataItem const*>::__erase_unique<CFBookmarkDataItem const*>(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  std::__tree<CFBookmarkDataItem const*>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t *std::__tree<CFBookmarkDataItem const*>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

uint64_t *std::__tree<std::__value_type<std::pair<unsigned int,unsigned int>,void const*>,std::__map_value_compare<std::pair<unsigned int,unsigned int>,std::__value_type<std::pair<unsigned int,unsigned int>,void const*>,std::less<std::pair<unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned int>,void const*>>>::find<std::pair<unsigned int,unsigned int>>(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v6 = *a2;
  v5 = a2[1];
  v7 = v2;
  do
  {
    v8 = *(v3 + 8);
    if (v8 >= v6)
    {
      if (v6 >= v8)
      {
        v9 = *(v3 + 9);
        v10 = v9 >= v5;
        v11 = v9 < v5;
        if (v10)
        {
          v7 = v3;
        }

        v3 += v11;
      }

      else
      {
        v7 = v3;
      }
    }

    else
    {
      ++v3;
    }

    v3 = *v3;
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v12 = *(v7 + 8);
  if (v6 < v12 || v12 >= v6 && v5 < *(v7 + 9))
  {
    return v2;
  }

  return v7;
}

uint64_t std::__tree<std::__value_type<std::pair<unsigned int,unsigned int>,void const*>,std::__map_value_compare<std::pair<unsigned int,unsigned int>,std::__value_type<std::pair<unsigned int,unsigned int>,void const*>,std::less<std::pair<unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned int>,void const*>>>::__emplace_unique_key_args<std::pair<unsigned int,unsigned int>,std::pair<std::pair<unsigned int,unsigned int>,void const*>>(uint64_t a1, unsigned int *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<unsigned int,unsigned int>,void const*>,std::__map_value_compare<std::pair<unsigned int,unsigned int>,std::__value_type<std::pair<unsigned int,unsigned int>,void const*>,std::less<std::pair<unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned int>,void const*>>>::__find_equal<std::pair<unsigned int,unsigned int>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<std::__value_type<std::pair<unsigned int,unsigned int>,void const*>,std::__map_value_compare<std::pair<unsigned int,unsigned int>,std::__value_type<std::pair<unsigned int,unsigned int>,void const*>,std::less<std::pair<unsigned int,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,unsigned int>,void const*>>>::__find_equal<std::pair<unsigned int,unsigned int>>(uint64_t a1, void *a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 8);
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6)
      {
        v10 = *(v8 + 9);
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

CFDataRef __CFURLCreateBookmarkData(const __CFAllocator *a1, const __CFURL *a2, unint64_t a3, const __CFArray *a4, const __CFURL *a5, __CFError **a6)
{
  BookmarkMutableData::BookmarkMutableData(v17, a1, 0x6B6F6F62u);
  if (a2)
  {
    CFRetain(a2);
    IsReachable = CFURLResourceIsReachable(a2, 0);
    v13 = _CFURLIsFileURL();
    if ((a3 & 0x10000400) == 0x10000000 || !v13 || IsReachable)
    {
      createBookmarkWithURLAtDepth(a1, a2, a3, a5, a4, v17, 1, IsReachable != 0, a6);
      v14 = BookmarkMutableData::Finalize(v17, 0, 0);
      if (!a6)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (!a6)
      {
        v14 = 0;
        goto LABEL_16;
      }

      v14 = 0;
      *a6 = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E628], 260, 0);
    }
  }

  else
  {
    v14 = 0;
    if (!a6)
    {
      goto LABEL_15;
    }
  }

  if (!v14 && !*a6)
  {
    v15 = bmarkLog;
    if (os_log_type_enabled(bmarkLog, OS_LOG_TYPE_ERROR))
    {
      __CFURLCreateBookmarkData(v15);
    }

    *a6 = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E628], 256, 0);
  }

LABEL_15:
  if (a2)
  {
LABEL_16:
    CFRelease(a2);
  }

  BookmarkMutableData::~BookmarkMutableData(v17);
  return v14;
}

void createBookmarkWithURLAtDepth(const __CFAllocator *a1, const __CFURL *cf, unint64_t a3, const __CFURL *a4, const __CFArray *a5, BookmarkMutableData *this, int a7, char a8, __CFError **a9)
{
  v15 = cf;
  cfa[128] = *MEMORY[0x1E69E9840];
  v164 = 0;
  if (cf)
  {
    CFRetain(cf);
  }

  TOC = BookmarkMutableData::createTOC(this, a7);
  v18 = TOC;
  if (a3 && TOC)
  {
    BookmarkMutableData::encodeValue(this, 53264, a3);
  }

  v155 = a4;
  inited = 0;
  Helper_x9__FPCreateBookmarkableStringFromDocumentURLWithOptions = gotLoadHelper_x9__FPCreateBookmarkableStringFromDocumentURLWithOptions(v17);
  v23 = *(v22 + 3632) != 0;
  if ((a3 & 0x1000000) == 0)
  {
    v20 = a3;
  }

  v162 = v20;
  v163[1] = 0;
  v24 = (a3 & 0x1000000) == 0 && v23;
  if ((v24 & v18) == 1)
  {
    inited = FPCreateBookmarkableStringFromDocumentURLWithOptions_delayInitStub(Helper_x9__FPCreateBookmarkableStringFromDocumentURLWithOptions);
  }

  v25 = a9;
  v26 = CFURLCopyAbsoluteURL(v15);
  if (!v18)
  {
    goto LABEL_233;
  }

  if (!_CFURLIsFileURL())
  {
    v30 = CFURLGetString(v26);
    BookmarkMutableData::encodeItem(this, 4099, v30);
    goto LABEL_189;
  }

  v153 = inited;
  v154 = a5;
  v152 = v18;
  v151 = v26;
  if (a8)
  {
    String = CFURLCopyQueryString(v26, 0);
    if (String)
    {
      BookmarkMutableData::encodeItem(this, 4354, String);
    }

    v28 = CFURLCopyFragment(v26, 0);
    if (v28)
    {
      v29 = v28;
      BookmarkMutableData::encodeItem(this, 4353, v28);
      CFRelease(v29);
    }

    if (String)
    {
      CFRelease(String);
    }
  }

  else
  {
    v31 = CFURLGetString(v26);
    BookmarkMutableData::encodeItem(this, 4099, v31);
  }

  NormalizedFileURL = createNormalizedFileURL(v15);
  URLParentageArray = createURLParentageArray(a1, NormalizedFileURL, v162, v32);
  Count = CFArrayGetCount(URLParentageArray);
  v35 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(a1, Count, MEMORY[0x1E695E9C0]);
  theArray = CFArrayCreateMutable(a1, 0, v35);
  v158 = this;
  v150 = a3;
  v160 = CFArrayCreateMutable(a1, 0, v35);
  if (Count >= 1)
  {
    v36 = 0;
    v37 = 0;
    v38 = *MEMORY[0x1E695EE48];
    v39 = *MEMORY[0x1E695E738];
    do
    {
      cfa[0] = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(URLParentageArray, v37);
      if (cfa[0])
      {
        CFRelease(cfa[0]);
        cfa[0] = 0;
      }

      if (CFURLCopyResourcePropertyForKey(ValueAtIndex, v38, cfa, 0) && cfa[0] && sameFileURL(ValueAtIndex, cfa[0]))
      {
        CFArrayAppendValue(Mutable, cfa[0]);
        v36 |= v37 != 0;
      }

      else
      {
        CFArrayAppendValue(Mutable, v39);
      }

      if (cfa[0])
      {
        CFRelease(cfa[0]);
      }

      ++v37;
    }

    while (Count != v37);
    v147 = v36;
    if (Count == 1)
    {
      v41 = 0;
      goto LABEL_64;
    }

    v145 = a7;
    v42 = v15;
    v43 = *MEMORY[0x1E695EBE8];
    v44 = *MEMORY[0x1E695E2B0];
    v45 = 1;
    while (1)
    {
      v46 = CFArrayGetValueAtIndex(URLParentageArray, v45);
      cfa[0] = 0;
      if (v164)
      {
        CFRelease(v164);
        v164 = 0;
      }

      if (CFURLCopyResourcePropertyForKey(v46, v43, cfa, &v164))
      {
        v47 = cfa[0];
      }

      else
      {
        if ((v162 & 0x10000000) == 0)
        {
          if (cfa[0])
          {
            CFRelease(cfa[0]);
          }

          cfa[0] = 0;
          v48 = theArray;
LABEL_50:
          v47 = v39;
          goto LABEL_51;
        }

        PathComponent = CFURLCopyLastPathComponent(v46);
        v47 = cfa[0];
        if (cfa[0] != PathComponent)
        {
          v51 = PathComponent;
          if (cfa[0])
          {
            CFRelease(cfa[0]);
          }

          cfa[0] = v51;
          v47 = v51;
        }
      }

      v48 = theArray;
      if (!v47)
      {
        goto LABEL_50;
      }

LABEL_51:
      CFArrayAppendValue(v48, v47);
      *propertyValueTypeRefPtr = 0;
      v163[0] = 0;
      _CFURLGetVolumePropertyFlags();
      if (*propertyValueTypeRefPtr)
      {
        v49 = *propertyValueTypeRefPtr;
      }

      else
      {
        v49 = v39;
      }

      CFArrayAppendValue(v160, v49);
      if (*propertyValueTypeRefPtr)
      {
        CFRelease(*propertyValueTypeRefPtr);
      }

      if (cfa[0])
      {
        CFRelease(cfa[0]);
      }

      if (Count == ++v45)
      {
        v41 = 1;
        v15 = v42;
        a7 = v145;
        goto LABEL_64;
      }
    }
  }

  v41 = 0;
  v147 = 0;
LABEL_64:
  BookmarkMutableData::encodeItem(v158, 4100, theArray);
  if (!CFArrayGetCount(theArray))
  {
    cfa[0] = 0;
    if (CFURLCopyResourcePropertyForKey(v15, *MEMORY[0x1E695EBE8], cfa, 0))
    {
      if (cfa[0])
      {
        BookmarkMutableData::encodeItem(v158, 4128, cfa[0]);
        CFRelease(cfa[0]);
      }
    }
  }

  if (v164)
  {
    v52 = 0;
  }

  else
  {
    v52 = &v164;
  }

  this = v158;
  encodeResourcePropertyIntoBookmark(v158, v15, *MEMORY[0x1E695EA50], 4160, v52);
  if (v154)
  {
    v53 = CFArrayGetCount(v154);
    v171.location = 0;
    v171.length = v53;
    v54 = CFArrayContainsValue(v154, v171, *MEMORY[0x1E695EB68]) != 0;
    v172.location = 0;
    v172.length = v53;
    v55 = v54 | (2 * (CFArrayContainsValue(v154, v172, *MEMORY[0x1E695EB28]) != 0));
    v173.location = 0;
    v173.length = v53;
    v56 = v55 | (4 * (CFArrayContainsValue(v154, v173, *MEMORY[0x1E695EB78]) != 0));
    v174.location = 0;
    v174.length = v53;
    v57 = v56 | (8 * (CFArrayContainsValue(v154, v174, *MEMORY[0x1E695EB98]) != 0));
    v175.location = 0;
    v175.length = v53;
    v58 = v57 | (16 * (CFArrayContainsValue(v154, v175, *MEMORY[0x1E695EB50]) != 0));
    v176.location = 0;
    v176.length = v53;
    v59 = v58 | (32 * (CFArrayContainsValue(v154, v176, *MEMORY[0x1E695EB80]) != 0));
    v177.location = 0;
    v177.length = v53;
    v60 = v59 | ((CFArrayContainsValue(v154, v177, *MEMORY[0x1E695EB90]) != 0) << 6);
    v178.location = 0;
    v178.length = v53;
    v61 = v60 | ((CFArrayContainsValue(v154, v178, *MEMORY[0x1E695EB40]) != 0) << 7);
    v179.location = 0;
    v179.length = v53;
    v62 = v61 | ((CFArrayContainsValue(v154, v179, *MEMORY[0x1E695EB10]) != 0) << 8);
    v180.location = 0;
    v180.length = v53;
    v63 = v62 | ((CFArrayContainsValue(v154, v180, *MEMORY[0x1E695EB20]) != 0) << 9);
  }

  else
  {
    v63 = 0;
  }

  if (v164)
  {
    CFRelease(v164);
    v164 = 0;
  }

  if ((v162 & 0x400) != 0)
  {
    v64 = v63 | 0x21F;
  }

  else
  {
    v64 = v63;
  }

  *propertyValueTypeRefPtr = 0;
  if (_CFURLGetResourcePropertyFlags())
  {
    cfa[0] = *propertyValueTypeRefPtr;
    cfa[1] = (v64 | 0xF);
    cfa[2] = v64;
    BookmarkMutableData::encodeRawData(v158, 4112, cfa, 24);
  }

  if (CFURLIsFileReferenceURL(v15))
  {
    BookmarkMutableData::encodeItem(v158, 53249, *MEMORY[0x1E695E4D0]);
  }

  if (CFURLGetBaseURL(v15))
  {
    v65 = CFURLGetBaseURL(v15);
    v66 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
    v67 = *MEMORY[0x1E695E480];
    v68 = 0;
    if (v41)
    {
      v69 = Count + 1;
      do
      {
        v70 = CFArrayGetValueAtIndex(URLParentageArray, v69 - 2);
        if (v65 && sameFileURL(v70, v65))
        {
          *propertyValueTypeRefPtr = v68;
          v71 = CFNumberCreate(v67, kCFNumberSInt32Type, propertyValueTypeRefPtr);
          CFArrayInsertValueAtIndex(v66, 0, v71);
          if (v71)
          {
            CFRelease(v71);
          }

          v65 = CFURLGetBaseURL(v65);
          v68 = 0;
        }

        ++v68;
        --v69;
      }

      while (v69 > 2);
    }

    *propertyValueTypeRefPtr = v68;
    v72 = CFNumberCreate(v67, kCFNumberSInt32Type, propertyValueTypeRefPtr);
    CFArrayInsertValueAtIndex(v66, 0, v72);
    if (v72)
    {
      CFRelease(v72);
    }

    this = v158;
    BookmarkMutableData::encodeItem(v158, 57347, v66);
    if (v66)
    {
      CFRelease(v66);
    }
  }

  if (v155)
  {
    v73 = CFGetTypeID(v155);
    if (v73 == CFURLGetTypeID() && !sameFileURL(v155, v15))
    {
      v74 = createNormalizedFileURL(v155);
      v76 = createURLParentageArray(a1, v74, v162, v75);
      v77 = CFArrayGetCount(URLParentageArray);
      v78 = CFArrayGetCount(v76);
      if (v78 >= v77)
      {
        v79 = v77;
      }

      else
      {
        v79 = v78;
      }

      if (v79 >= 1)
      {
        v80 = 0;
        while (1)
        {
          v81 = CFArrayGetValueAtIndex(URLParentageArray, v80);
          v82 = CFArrayGetValueAtIndex(v76, v80);
          if (!sameFileURL(v81, v82))
          {
            break;
          }

          if (v79 == ++v80)
          {
            v80 = v79;
            break;
          }
        }

        if (v80 > 1)
        {
          BookmarkMutableData::encodeItem(this, 4182, *MEMORY[0x1E695E4D0]);
          if (CFArrayGetCount(v76) > v80)
          {
            v83 = CFArrayGetCount(v76);
            if (v83 - v80 <= 2147483646)
            {
              BookmarkMutableData::encodeValue(this, 4180, v83 - v80);
            }
          }

          if (CFArrayGetCount(URLParentageArray) > v80)
          {
            v84 = CFArrayGetCount(URLParentageArray);
            if (v84 - v80 <= 2147483646)
            {
              BookmarkMutableData::encodeValue(this, 4181, v84 - v80);
            }
          }
        }
      }

      if (v76)
      {
        CFRelease(v76);
      }

      if (v74)
      {
        CFRelease(v74);
      }
    }
  }

  v85 = copyUserHomeFolderURL(a1);
  inited = v153;
  if (!v85)
  {
    goto LABEL_141;
  }

  v86 = v85;
  if (sameFileURL(v15, v85))
  {
    CFRelease(v86);
LABEL_121:
    v87 = copyUserHomeFolderURL(a1);
    if (!v87)
    {
      goto LABEL_141;
    }

    v86 = v87;
    v88 = CFArrayGetCount(URLParentageArray);
    while (v88-- >= 1)
    {
      v90 = CFArrayGetValueAtIndex(URLParentageArray, v88);
      if (sameFileURL(v90, v86))
      {
        v91 = ~v88 + CFArrayGetCount(URLParentageArray);
        v92 = *MEMORY[0x1E695E480];
        *propertyValueTypeRefPtr = v91;
        v93 = CFNumberCreate(v92, kCFNumberLongType, propertyValueTypeRefPtr);
        BookmarkMutableData::encodeItem(this, 49153, v93);
        if (v93)
        {
          CFRelease(v93);
        }

        v94 = CFCopyUserName();
        BookmarkMutableData::encodeItem(this, 49169, v94);
        if (v94)
        {
          CFRelease(v94);
        }

        *propertyValueTypeRefPtr = _CFGetEUID();
        v95 = CFNumberCreate(v92, kCFNumberSInt32Type, propertyValueTypeRefPtr);
        BookmarkMutableData::encodeItem(this, 49170, v95);
        if (v95)
        {
          CFRelease(v95);
        }

        break;
      }
    }

LABEL_131:
    inited = v153;
    goto LABEL_140;
  }

  v96 = CFArrayGetCount(URLParentageArray);
  if (v96 < 1)
  {
LABEL_140:
    CFRelease(v86);
    goto LABEL_141;
  }

  for (i = v96; ; --i)
  {
    v98 = CFArrayGetValueAtIndex(URLParentageArray, i - 1);
    if (v98)
    {
      break;
    }

    if (i < 2)
    {
      goto LABEL_131;
    }

LABEL_139:
    ;
  }

  v99 = sameFileURL(v98, v86);
  v100 = v99;
  if (i >= 2 && !v99)
  {
    goto LABEL_139;
  }

  CFRelease(v86);
  inited = v153;
  if (v100)
  {
    goto LABEL_121;
  }

LABEL_141:
  if (v147)
  {
    v146 = a7;
    v156 = v15;
    v101 = CFArrayCreateMutable(a1, Count, MEMORY[0x1E695E9C0]);
    v102 = *MEMORY[0x1E695E480];
    *propertyValueTypeRefPtr = 0;
    v148 = v102;
    v103 = CFNumberCreate(v102, kCFNumberSInt32Type, propertyValueTypeRefPtr);
    if (Count >= 1)
    {
      for (j = 0; j != Count; ++j)
      {
        CFArrayInsertValueAtIndex(v101, j, v103);
      }

      v105 = Count;
      v106 = v146;
      do
      {
        v107 = v105--;
        v108 = CFArrayGetValueAtIndex(Mutable, v105);
        if (v108)
        {
          v109 = v108;
          v110 = CFGetTypeID(v108);
          if (v110 == CFURLGetTypeID())
          {
            v181.length = Count - v107;
            v181.location = v107;
            FirstIndexOfValue = CFArrayGetFirstIndexOfValue(Mutable, v181, v109);
            this = v158;
            if (FirstIndexOfValue == -1)
            {
              if (v164)
              {
                CFRelease(v164);
                v164 = 0;
              }

              if (addVolumeInfoForURLToBookmark(a1, v158, v109, v162, v106, v154, &v164))
              {
                *propertyValueTypeRefPtr = v106;
                v113 = CFNumberCreate(v148, kCFNumberSInt32Type, propertyValueTypeRefPtr);
                CFArraySetValueAtIndex(v101, v105, v113);
                if (v113)
                {
                  CFRelease(v113);
                }
              }
            }

            else
            {
              v112 = CFArrayGetValueAtIndex(v101, FirstIndexOfValue);
              CFArraySetValueAtIndex(v101, v105, v112);
            }

            while (BookmarkMutableData::tocExists(v158, v106))
            {
              if ((v106 + 1) > 0xF000)
              {
                ++v106;
              }

              else
              {
                v106 = 61440;
              }
            }
          }

          else
          {
            this = v158;
          }
        }
      }

      while (v107 > 1);
    }

    BookmarkMutableData::encodeItem(this, 0x2000, v101);
    if (v103)
    {
      CFRelease(v103);
    }

    v15 = v156;
    a7 = v146;
    inited = v153;
    goto LABEL_172;
  }

  if (CFArrayGetCount(Mutable) >= 1)
  {
    v101 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], @"/", kCFURLPOSIXPathStyle, 1u);
    v114 = CFArrayGetValueAtIndex(Mutable, 0);
    if (v164)
    {
      CFRelease(v164);
      v164 = 0;
    }

    addVolumeInfoForURLToBookmark(a1, this, v114, v162, a7, v154, &v164);
    if (sameFileURL(v114, v101))
    {
      BookmarkMutableData::encodeItem(this, 8240, *MEMORY[0x1E695E4D0]);
    }

LABEL_172:
    if (v101)
    {
      CFRelease(v101);
    }
  }

  *propertyValueTypeRefPtr = 0;
  v115 = *MEMORY[0x1E695EA60];
  if (CFURLCopyResourcePropertyForKey(v15, *MEMORY[0x1E695EA60], propertyValueTypeRefPtr, 0))
  {
    v116 = *propertyValueTypeRefPtr == 0;
  }

  else
  {
    v116 = 1;
  }

  if (!v116)
  {
    BookmarkMutableData::encodeItem(this, v115, *propertyValueTypeRefPtr);
    CFRelease(*propertyValueTypeRefPtr);
  }

  LODWORD(a3) = v150;
  if (v160)
  {
    CFRelease(v160);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (URLParentageArray)
  {
    CFRelease(URLParentageArray);
  }

  LOBYTE(v18) = v152;
  v25 = a9;
  v26 = v151;
  a5 = v154;
  if (NormalizedFileURL)
  {
    CFRelease(NormalizedFileURL);
  }

LABEL_189:
  if ((a3 & 0x1000000) == 0 && inited)
  {
    BookmarkMutableData::encodeItem(this, 8304, inited);
    CFRelease(inited);
  }

  if ((v162 & 0x400) != 0 && a7 == 1)
  {
    encodeResourcePropertyIntoBookmark(this, v15, *MEMORY[0x1E695EBC8], 61463, 0);
    encodeResourcePropertyIntoBookmark(this, v15, *MEMORY[0x1E695E3D0], 61474, 0);
  }

  if (a5)
  {
    v117 = CFGetTypeID(a5);
    if (v117 == CFArrayGetTypeID() && CFArrayGetCount(a5) >= 1)
    {
      v118 = 0;
      do
      {
        v119 = CFArrayGetValueAtIndex(a5, v118);
        if (v119)
        {
          v120 = v119;
          v121 = CFGetTypeID(v119);
          if (v121 == CFStringGetTypeID())
          {
            cfa[0] = 0;
            if (v164)
            {
              CFRelease(v164);
              v164 = 0;
            }

            v122 = CFURLCopyResourcePropertyForKey(v15, v120, cfa, &v164);
            v123 = cfa[0];
            if (v122 && cfa[0])
            {
              BookmarkMutableData::encodeItem(this, v120, cfa[0]);
              v123 = cfa[0];
            }

            if (v123)
            {
              CFRelease(v123);
            }
          }
        }

        ++v118;
      }

      while (v118 < CFArrayGetCount(a5));
    }
  }

  if ((v162 & 0x20000400) != 0)
  {
    goto LABEL_233;
  }

  v163[0] = 0;
  if (CFURLCopyResourcePropertyForKey(v15, @"com.apple.private.CustomSandboxExtension.read-write", v163, 0))
  {
    if (v163[0])
    {
      v124 = CFGetTypeID(v163[0]);
      if (v124 == CFDataGetTypeID())
      {
        BytePtr = CFDataGetBytePtr(v163[0]);
        Length = CFDataGetLength(v163[0]);
        v127 = this;
        v128 = 61568;
        goto LABEL_218;
      }
    }
  }

  if (!CFURLCopyResourcePropertyForKey(v15, @"com.apple.private.CustomSandboxExtension.read-only", v163, 0) || !v163[0] || (v129 = CFGetTypeID(v163[0]), v129 != CFDataGetTypeID()))
  {
    if (!CFURLGetFileSystemRepresentation(v15, 1u, cfa, 1024))
    {
      goto LABEL_233;
    }

    if ((v162 & 0x40000000) != 0)
    {
      v137 = *MEMORY[0x1E69E9BD0] | 1u;
    }

    else
    {
      getpid();
      v130 = *MEMORY[0x1E69E9BD0] | 1u;
      if (!sandbox_check())
      {
        v131 = *MEMORY[0x1E69E9BB0];
        v132 = sandbox_extension_issue_file();
        if (v132)
        {
          v133 = v132;
          v134 = strlen(v132) + 1;
          v135 = this;
          v136 = 61568;
          goto LABEL_232;
        }
      }
    }

    getpid();
    if (sandbox_check() || (v140 = *MEMORY[0x1E69E9BA8], (v141 = sandbox_extension_issue_file()) == 0))
    {
      v138 = bmarkLog;
      if (os_log_type_enabled(bmarkLog, OS_LOG_TYPE_DEFAULT))
      {
        v139 = *__error();
        *propertyValueTypeRefPtr = 136315650;
        *&propertyValueTypeRefPtr[4] = cfa;
        v166 = 1024;
        v167 = a7;
        v168 = 1024;
        v169 = v139;
        _os_log_impl(&dword_19602C000, v138, OS_LOG_TYPE_DEFAULT, "Bookmark failed to issue extension for item %s (depth=%d): %{errno}d", propertyValueTypeRefPtr, 0x18u);
      }

      goto LABEL_233;
    }

    v133 = v141;
    v134 = strlen(v141) + 1;
    v135 = this;
    v136 = 61569;
LABEL_232:
    BookmarkMutableData::encodeRawData(v135, v136, v133, v134);
    free(v133);
    goto LABEL_233;
  }

  BytePtr = CFDataGetBytePtr(v163[0]);
  Length = CFDataGetLength(v163[0]);
  v127 = this;
  v128 = 61569;
LABEL_218:
  BookmarkMutableData::encodeRawData(v127, v128, BytePtr, Length);
LABEL_233:
  BookmarkMutableData::finalizeTOC(this, a7);
  if (v25)
  {
    v142 = v18;
  }

  else
  {
    v142 = 1;
  }

  if ((v142 & 1) == 0)
  {
    v143 = v164;
    if (v164)
    {
      v164 = 0;
    }

    else
    {
      v143 = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E628], 256, 0);
    }

    *v25 = v143;
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v164)
  {
    CFRelease(v164);
  }

  v144 = *MEMORY[0x1E69E9840];
}