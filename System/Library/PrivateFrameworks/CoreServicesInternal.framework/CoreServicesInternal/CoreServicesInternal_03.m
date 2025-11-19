BOOL _FSURLGetCacheAutoFlushingEnabled(const __CFURL *a1, const void *a2)
{
  v2 = _FileCacheGetForURL(a1, a2);
  _FileCacheLock(v2);
  AutoFlushingEnabled = _FileCacheGetAutoFlushingEnabled(v2);
  _FileCacheUnlock(v2);
  return AutoFlushingEnabled;
}

uint64_t _FSURLGetObjectInformationNoIO(const __CFURL *a1, unint64_t *a2, uint64_t *a3, _DWORD *a4)
{
  __endptr[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_33;
  }

  v8 = __CFURLResourceInfoPtr();
  if (!v8)
  {
    v11 = 0;
    if (a4)
    {
      goto LABEL_34;
    }

LABEL_18:
    if (v11)
    {
      goto LABEL_34;
    }

    if (CFURLIsFileReferenceURL(a1))
    {
      v14 = CFURLCopyPath(a1);
      if (v14)
      {
        v18 = v14;
        MEMORY[0x1EEE9AC00](v14, v15, v16, v17);
        bzero(&v26, 0x800uLL);
        if (!CFStringGetCString(v18, &v26, 2048, 0x8000100u))
        {
          goto LABEL_31;
        }

        if (v26 != 0x692F656C69662E2FLL || v27 != 15716)
        {
          goto LABEL_31;
        }

        __endptr[0] = 0;
        v20 = strtoll(&v28, __endptr, 10);
        if (*__endptr[0] != 46)
        {
          goto LABEL_31;
        }

        v21 = v20;
        v22 = strtoll(__endptr[0] + 1, __endptr, 10);
        v23 = __endptr[0];
        if (*__endptr[0] == 47)
        {
          v23 = __endptr[0] + 1;
        }

        if (!*v23)
        {
          if (a2)
          {
            *a2 = v21;
          }

          if (a3)
          {
            *a3 = v22;
          }

          v11 = 1;
        }

        else
        {
LABEL_31:
          v11 = 0;
        }

        CFRelease(v18);
        goto LABEL_34;
      }
    }

LABEL_33:
    v11 = 0;
    goto LABEL_34;
  }

  v9 = _FileCacheGetForURL(a1, v8);
  _FileCacheLock(v9);
  Attributes = _FileCacheGetAttributes(v9);
  if ((*Attributes & 4) != 0)
  {
    if (a2)
    {
      v12 = *(Attributes + 112);
      if (v12)
      {
        v13 = 0;
      }

      else
      {
        v12 = *(Attributes + 104);
        v13 = *(Attributes + 108) << 32;
      }

      *a2 = v13 | v12;
    }

    if (a3)
    {
      *a3 = *(Attributes + 120);
    }

    if (a4)
    {
      *a4 = *(Attributes + 16);
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  _FileCacheUnlock(v9);
  if (!a4)
  {
    goto LABEL_18;
  }

LABEL_34:
  v24 = *MEMORY[0x1E69E9840];
  return v11;
}

CFURLRef _FSCreateFileReferenceURLFromIDs(const __CFAllocator *a1, int a2, uint64_t a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v15[0] = 0;
  v6 = MountInfoStorageSize();
  v10 = MEMORY[0x1EEE9AC00](v6, v7, v8, v9);
  if (MountInfoPrepare(v15, 0, a2, v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 0, 0, 0))
  {
    if ((MountInfoGetCapabilities(v15[0]) & 0x8000000000000) != 0)
    {
      MountID = MountInfoGetMountID(v15[0]);
      FileReferenceURLRef = createFileReferenceURLRef(a1, MountID, 0, a3, 0, 0, 0);
    }

    else
    {
      FileReferenceURLRef = 0;
    }

    MountInfoDestroy(v15[0]);
  }

  else
  {
    FileReferenceURLRef = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return FileReferenceURLRef;
}

CFURLRef createFileReferenceURLRef(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, CFStringRef theString, int a6, uint64_t a7)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v7 = a6;
    if (theString)
    {
      if (CFStringGetCString(theString, v32, 1024, 0x8000100u))
      {
        v11 = strlen(v32);
        v15 = MEMORY[0x1EEE9AC00](v11, v12, v13, v14);
        v17 = &v32[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
        v18 = v17;
        if (v15 >= 1)
        {
          v19 = v32;
          v18 = v17;
          do
          {
            v20 = *v19;
            v21 = (v20 - 34) > 0x3E || ((1 << (v20 - 34)) & 0x5A0000003600000BLL) == 0;
            if (v21 && (v20 - 123) >= 3 && (v20 - 127) > 0xFFFFFFA1)
            {
              *v18++ = v20;
            }

            else
            {
              *v18 = 37;
              v18[1] = createFileReferenceURLRef(__CFAllocator const*,unsigned long long,unsigned long long,unsigned long long,__CFString const*,unsigned char,unsigned int)::hexchars[v20 >> 4];
              v18[2] = createFileReferenceURLRef(__CFAllocator const*,unsigned long long,unsigned long long,unsigned long long,__CFString const*,unsigned char,unsigned int)::hexchars[v20 & 0xF];
              v18 += 3;
            }

            ++v19;
            --v15;
          }

          while (v15);
        }

        *v18 = 0;
        if (snprintf(v33, 0x400uLL, "/.file/id=%lld.%lld/%s", a2, a3, v17) > 0x3FF)
        {
          result = 0;
        }

        else
        {
          v22 = strlen(v33);
          result = CFURLCreateFromFileSystemRepresentation(a1, v33, v22, v7);
        }

        goto LABEL_28;
      }
    }

    else
    {
      v24 = *MEMORY[0x1E695E480];
      if (a7)
      {
        v25 = CFStringCreateWithFormat(v24, 0, @"file:///.file/id=%lld.%lld/?.resolve=%u", a2, a4, a7);
      }

      else
      {
        v26 = "/";
        if (!a6)
        {
          v26 = "";
        }

        v25 = CFStringCreateWithFormat(v24, 0, @"file:///.file/id=%lld.%lld%s", a2, a4, v26);
      }

      v27 = v25;
      if (v25)
      {
        v28 = CFURLCreateWithString(a1, v25, 0);
        CFRelease(v27);
        v29 = *MEMORY[0x1E69E9840];
        return v28;
      }
    }
  }

  result = 0;
LABEL_28:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

CFURLRef _CFURLCreateWithVolumeURLAndResourceID(const __CFAllocator *a1, CFURLRef url, const __CFNumber *a3)
{
  v3 = 0;
  v16 = *MEMORY[0x1E69E9840];
  if (url && a3)
  {
    propertyValueTypeRefPtr = 0;
    v3 = 0;
    if (CFURLCopyResourcePropertyForKey(url, *MEMORY[0x1E695E3F0], &propertyValueTypeRefPtr, 0) && propertyValueTypeRefPtr != 0)
    {
      valuePtr = 0;
      v3 = 0;
      if (CFNumberGetValue(propertyValueTypeRefPtr, kCFNumberSInt64Type, &valuePtr))
      {
        if (valuePtr)
        {
          v12 = 0;
          v3 = 0;
          if (CFNumberGetValue(a3, kCFNumberSInt64Type, &v12))
          {
            if (v12)
            {
              if (getFileSystemPathForFileID(valuePtr, v12, cStr, 0x400) && !lstat(cStr, &v11) && (v9 = CFStringCreateWithCString(a1, cStr, 0x8000100u)) != 0)
              {
                v10 = v9;
                v3 = CFURLCreateWithFileSystemPath(a1, v9, kCFURLPOSIXPathStyle, (v11.st_mode & 0xF000) == 0x4000);
                CFRelease(v10);
              }

              else
              {
                v3 = 0;
              }
            }
          }
        }
      }

      CFRelease(propertyValueTypeRefPtr);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

CFURLRef _FSURLCreateWithPathAndAttributes(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9, char a10, int a11, uint64_t a12, void **a13)
{
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v15 = 1;
  v16 = a8;
  v17 = a9;
  v18 = a10;
  v19 = a11;
  v20 = 0;
  v21 = a12;
  return __FSURLCreateWithPathAndAttributes(a1, v14, a13);
}

const attrlist *_FSURLCalculateAttributeBufferSize(const attrlist *result)
{
  if (result)
  {
    return calculateAttributeBufferSize(result, 0);
  }

  return result;
}

void _FSURLCacheCheapVolumeInformation(const __CFURL *a1, int a2, uint64_t a3)
{
  v6 = __CFURLResourceInfoPtr();
  if (v6)
  {
    v7 = _FileCacheGetForURL(a1, v6);
    _FileCacheLock(v7);
    Attributes = _FileCacheGetAttributes(v7);
    if ((*Attributes & 2) != 0 && *(Attributes + 104) == a2 && !_FileCacheGetVolumeInfo(v7))
    {
      _FileCacheLockTransitionToPreparer(v7);
      prepareCheapVolumeInformation(a1, v7, a3);
      _FileCacheLockTransitionFromPreparer(v7);
    }

    _FileCacheUnlock(v7);
  }
}

void _FSURLCacheCheapVolumeInformationForVolume(const __CFURL *a1, uint64_t a2)
{
  v4 = __CFURLResourceInfoPtr();
  v5 = _FileCacheGetForURL(a1, v4);
  _FileCacheLock(v5);
  Attributes = _FileCacheGetAttributes(v5);
  if ((*Attributes & 2) == 0)
  {
    v7 = Attributes;
    *(Attributes + 104) = MountInfoGetFSID(a2);
    v7[28] = MountInfoGetMountID(a2);
    *v7 |= 2u;
  }

  if (!_FileCacheGetVolumeInfo(v5))
  {
    _FileCacheLockTransitionToPreparer(v5);
    prepareCheapVolumeInformation(a1, v5, a2);
    _FileCacheLockTransitionFromPreparer(v5);
  }

  _FileCacheUnlock(v5);
}

uint64_t _FSURLCacheResourcePropertyForKey(const __CFURL *a1, const void *a2, CFTypeRef cf, CFErrorRef *a4)
{
  v7 = _FileCacheGetForURL(a1, cf);
  _FileCacheLock(v7);
  Value = CFDictionaryGetValue(qword_1ED4458B8, a2);
  if (Value)
  {
    memset(v11, 0, 60);
    addPropertyAndDependenciesToBitmap(Value, v11);
    _FileCacheLockTransitionToPreparer(v7);
    v9 = prepareValuesForBitmap(a1, v7, v11, a4);
    _FileCacheLockTransitionFromPreparer(v7);
  }

  else
  {
    v9 = 1;
  }

  _FileCacheUnlock(v7);
  if (a4 && !v9 && !*a4)
  {
    if (os_log_type_enabled(defaultLog, OS_LOG_TYPE_ERROR))
    {
      _FSURLCacheResourcePropertyForKey_cold_1();
    }

    *a4 = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E628], 256, 0);
  }

  return v9;
}

uint64_t _FSURLCacheResourcePropertiesForKeys(const __CFURL *a1, CFArrayRef theArray, const void *a3, CFErrorRef *a4)
{
  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    return 1;
  }

  v9 = _FileCacheGetForURL(a1, a3);
  _FileCacheLock(v9);
  memset(v12, 0, 60);
  getPropertyBitmapForKeys(theArray, Count, v12);
  _FileCacheLockTransitionToPreparer(v9);
  v10 = prepareValuesForBitmap(a1, v9, v12, a4);
  _FileCacheLockTransitionFromPreparer(v9);
  _FileCacheUnlock(v9);
  if (a4 && !v10)
  {
    if (*a4)
    {
      return 0;
    }

    else
    {
      if (os_log_type_enabled(defaultLog, OS_LOG_TYPE_ERROR))
      {
        _FSURLCacheResourcePropertiesForKeys_cold_1();
      }

      v10 = 0;
      *a4 = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E628], 256, 0);
    }
  }

  return v10;
}

__CFArray *_FileURLCreateDisplayPathComponentsArray(const void *a1, __CFError **a2)
{
  v4 = CFGetAllocator(a1);
  v5 = CFRetain(a1);
  Mutable = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v7 = *MEMORY[0x1E695EB98];
    v8 = *MEMORY[0x1E695ED08];
    v9 = *MEMORY[0x1E695EBF0];
    while (1)
    {
      propertyValueTypeRefPtr = 0;
      v12 = 0;
      CFArrayAppendValue(Mutable, v5);
      if (!GetBooleanPropertyValue(v5, v7, &v12, a2))
      {
        break;
      }

      if (v12)
      {
        v11 = 0;
        if (!GetBooleanPropertyValue(v5, v8, &v11, a2))
        {
          break;
        }

        if (!v11)
        {
          goto LABEL_13;
        }
      }

      if (!CFURLCopyResourcePropertyForKey(v5, v9, &propertyValueTypeRefPtr, a2))
      {
        break;
      }

      if (!propertyValueTypeRefPtr)
      {
        goto LABEL_13;
      }

      CFRelease(v5);
      v5 = propertyValueTypeRefPtr;
    }

    if (v5)
    {
      CFRelease(v5);
    }

    CFRelease(Mutable);
    if (a2 && !*a2)
    {
      if (os_log_type_enabled(defaultLog, OS_LOG_TYPE_ERROR))
      {
        _FileURLCreateDisplayPathComponentsArray_cold_1();
      }

      goto LABEL_21;
    }

    return 0;
  }

  if (a2)
  {
    *a2 = _FSURLCreateStandardError(v4, *MEMORY[0x1E695E640], 12, 0, 0, 0);
  }

LABEL_13:
  if (v5)
  {
    CFRelease(v5);
  }

  if (a2 && !Mutable)
  {
    if (!*a2)
    {
      if (os_log_type_enabled(defaultLog, OS_LOG_TYPE_ERROR))
      {
        _FileURLCreateDisplayPathComponentsArray_cold_2();
      }

LABEL_21:
      Mutable = 0;
      *a2 = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E628], 256, 0);
      return Mutable;
    }

    return 0;
  }

  return Mutable;
}

uint64_t GetBooleanPropertyValue(const __CFURL *a1, const __CFString *a2, unsigned __int8 *a3, __CFError **a4)
{
  propertyValueTypeRefPtr = 0;
  result = CFURLCopyResourcePropertyForKey(a1, a2, &propertyValueTypeRefPtr, a4);
  if (result)
  {
    if (propertyValueTypeRefPtr)
    {
      *a3 = valueOfBoolean(propertyValueTypeRefPtr);
      CFRelease(propertyValueTypeRefPtr);
    }

    else
    {
      *a3 = 0;
    }

    return 1;
  }

  return result;
}

CFDataRef _FSURLNoteSecurityScopedResourceMoved(SandboxExtensionCache *a1, const __CFURL *a2)
{
  v4 = SandboxExtensionCache::shared(a1);
  result = SandboxExtensionCache::move(v4, a1, a2, 0, 0);
  if (result)
  {
    v6 = result;
    _FSURLSetPermanentResourcePropertyForKey(a2, @"_NSURLSecuritySandboxExtensionKey", result);
    CFRelease(v6);
    return 1;
  }

  return result;
}

CFDataRef _FSURLNoteSecurityScopedResourceMovedWithFileIdentifier(SandboxExtensionCache *a1, const __CFURL *a2, fsid a3, uint64_t a4)
{
  v10 = a3;
  v7 = SandboxExtensionCache::shared(a1);
  result = SandboxExtensionCache::move(v7, a1, a2, &v10, a4);
  if (result)
  {
    v9 = result;
    _FSURLSetPermanentResourcePropertyForKey(a2, @"_NSURLSecuritySandboxExtensionKey", result);
    CFRelease(v9);
    return 1;
  }

  return result;
}

uint64_t createIsSystemAppendValue(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E695E4D0];
  if ((*(a2 + 20) & 0x40000) == 0)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  *a3 = *v3;
  return 1;
}

uint64_t createIsUserAppendValue(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E695E4D0];
  if ((*(a2 + 20) & 4) == 0)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  *a3 = *v3;
  return 1;
}

uint64_t createContentAccessDateValue(const void *a1, uint64_t a2, CFDateRef *a3)
{
  v5 = CFGetAllocator(a1);
  *a3 = CFDateCreate(v5, *(a2 + 56));
  return 1;
}

uint64_t createTotalFileSizeValue(const void *a1, uint64_t a2, CFNumberRef *a3)
{
  if ((*(a2 + 16) & 0xF000) == 0xA000)
  {
    if ((*a2 & 0x40) != 0)
    {
      v5 = CFGetAllocator(a1);
      v6 = (a2 + 208);
      goto LABEL_9;
    }

    return 0;
  }

  if ((*(a2 + 16) & 0xF000) == 0x8000)
  {
    if ((~*a2 & 0x60) == 0)
    {
      v8 = *(a2 + 192) + *(a2 + 208);
      v5 = CFGetAllocator(a1);
      v6 = &v8;
LABEL_9:
      *a3 = CFNumberCreate(v5, kCFNumberSInt64Type, v6);
      return 1;
    }

    return 0;
  }

  *a3 = 0;
  return 1;
}

uint64_t createTotalFileAllocatedSizeValue(const void *a1, uint64_t a2, CFNumberRef *a3)
{
  if ((*(a2 + 16) & 0xF000) == 0xA000)
  {
    if ((*a2 & 0x40) != 0)
    {
      v6 = CFGetAllocator(a1);
      valuePtr = *(a2 + 216);
      goto LABEL_9;
    }

    return 0;
  }

  if ((*(a2 + 16) & 0xF000) == 0x8000)
  {
    if ((~*a2 & 0x60) == 0)
    {
      v5 = *(a2 + 200) + *(a2 + 216);
      v6 = CFGetAllocator(a1);
      valuePtr = v5;
LABEL_9:
      v8 = CFNumberCreate(v6, kCFNumberSInt64Type, &valuePtr);
      goto LABEL_10;
    }

    return 0;
  }

  v8 = 0;
LABEL_10:
  *a3 = v8;
  return 1;
}

const __CFString *createFileResourceIdentifierValue(CFTypeRef cf, uint64_t a2, CFDataRef *a3)
{
  if ((*a2 & 4) != 0)
  {
    v8 = *(a2 + 112);
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v8 = *(a2 + 104);
      v9 = *(a2 + 108);
    }

    v11 = *(a2 + 120);
    v12 = v8;
    v13 = v9;
    v10 = CFGetAllocator(cf);
    *a3 = CFDataCreate(v10, &v11, 16);
    return 1;
  }

  else
  {
    result = os_log_type_enabled(defaultLog, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      result = CFURLGetString(cf);
      if (result)
      {
        v5 = result;
        result = CFStringHasPrefix(result, @"file:///.file/id=");
        if (result)
        {
          v6 = defaultLog;
          result = os_log_type_enabled(defaultLog, OS_LOG_TYPE_DEBUG);
          if (result)
          {
            createFileResourceIdentifierValue(v5, v6);
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t createGenerationIdentifierValue(const void *a1, uint64_t a2, CFDataRef *a3)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    if ((*a2 & 4) == 0)
    {
      return 0;
    }

    v7 = *(a2 + 120);
    v8 = v4;
    v6 = CFGetAllocator(a1);
    *a3 = CFDataCreate(v6, &v7, 12);
  }

  else
  {
    *a3 = 0;
  }

  return 1;
}

uint64_t createDocumentIdentifierValue(const void *a1, uint64_t a2, CFNumberRef *a3)
{
  v4 = (a2 + 36);
  if (*(a2 + 36))
  {
    v5 = CFGetAllocator(a1);
    v6 = CFNumberCreate(v5, kCFNumberSInt32Type, v4);
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
  return 1;
}

uint64_t createPreferredIOBlockSizeValue(const void *a1, uint64_t a2, CFNumberRef *a3)
{
  if (*(a2 + 96))
  {
    v5 = CFGetAllocator(a1);
    valuePtr = *(a2 + 96);
    v6 = CFNumberCreate(v5, kCFNumberSInt64Type, &valuePtr);
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
  return 1;
}

uint64_t createFileContentIdentifierValue(uint64_t a1, _BYTE *a2, CFNumberRef *a3)
{
  if ((*a2 & 4) == 0)
  {
    return 0;
  }

  if (*(a2 + 18))
  {
    v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, a2 + 144);
  }

  else
  {
    v5 = 0;
  }

  *a3 = v5;
  return 1;
}

uint64_t createMayShareFileContentValue(uint64_t a1, uint64_t a2, void *a3)
{
  if ((*a2 & 1) == 0)
  {
    return 0;
  }

  if ((*a2 & 0x200) != 0)
  {
    v5 = MEMORY[0x1E695E4D0];
    if ((*(a2 + 152) & 1) == 0)
    {
      v5 = MEMORY[0x1E695E4C0];
    }

    v4 = *v5;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
  return 1;
}

uint64_t createMayHaveExtendedAttributesValue(uint64_t a1, uint64_t a2, void *a3)
{
  if ((*a2 & 1) == 0)
  {
    return 0;
  }

  if ((*a2 & 0x200) != 0)
  {
    v5 = MEMORY[0x1E695E4C0];
    if ((*(a2 + 152) & 2) == 0)
    {
      v5 = MEMORY[0x1E695E4D0];
    }

    v4 = *v5;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
  return 1;
}

uint64_t createIsPurgeableValue(uint64_t a1, uint64_t a2, void *a3)
{
  if ((*a2 & 1) == 0)
  {
    return 0;
  }

  if ((*a2 & 0x200) != 0)
  {
    v5 = MEMORY[0x1E695E4D0];
    if ((*(a2 + 152) & 8) == 0)
    {
      v5 = MEMORY[0x1E695E4C0];
    }

    v4 = *v5;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
  return 1;
}

uint64_t createIsSparseValue(uint64_t a1, uint64_t a2, void *a3)
{
  if ((*a2 & 1) == 0)
  {
    return 0;
  }

  if ((*a2 & 0x200) != 0)
  {
    v5 = MEMORY[0x1E695E4D0];
    if ((*(a2 + 152) & 0x10) == 0)
    {
      v5 = MEMORY[0x1E695E4C0];
    }

    v4 = *v5;
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
  return 1;
}

uint64_t createDirectoryEntryCountValue(uint64_t a1, uint64_t a2, CFNumberRef *a3)
{
  if ((*(a2 + 1) & 4) == 0)
  {
    return 0;
  }

  valuePtr[3] = v3;
  valuePtr[4] = v4;
  valuePtr[0] = *(a2 + 28);
  *a3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, valuePtr);
  return 2;
}

uint64_t createFaultLogicalFileIsHiddenValue(uint64_t a1, uint64_t a2, void *a3)
{
  if ((*a2 & 0x1000) != 0 || (*(a2 + 21) & 0x80) != 0)
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

uint64_t createNameExtensionValue(CFTypeRef cf, uint64_t a2, CFStringRef *a3)
{
  if ((*(a2 + 3) & 8) == 0 && *(a2 + 8))
  {
    _CFGetPathExtensionRangesFromPathComponent();
    if (v12 == -1)
    {
      v6 = 0;
    }

    else
    {
      v6 = v13;
    }

    *(a2 + 4) = v6;
    *a2 |= 0x8000000u;
  }

  if (*(a2 + 8) && *(a2 + 4))
  {
    v7 = CFGetAllocator(cf);
    v8 = *(a2 + 8);
    Length = CFStringGetLength(v8);
    v14.length = *(a2 + 4);
    v14.location = Length - v14.length;
    v10 = CFStringCreateWithSubstring(v7, v8, v14);
  }

  else
  {
    v10 = 0;
  }

  *a3 = v10;
  return 1;
}

uint64_t createIsUserNoDumpValue(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E695E4D0];
  if ((*(a2 + 20) & 1) == 0)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  *a3 = *v3;
  return 1;
}

uint64_t createIsUserOpaqueValue(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E695E4D0];
  if ((*(a2 + 20) & 8) == 0)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  *a3 = *v3;
  return 1;
}

uint64_t createIsUserTrackedValue(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E695E4D0];
  if ((*(a2 + 20) & 0x40) == 0)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  *a3 = *v3;
  return 1;
}

uint64_t createIsUserDataVaultValue(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E695E4D0];
  if ((*(a2 + 20) & 0x80) == 0)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  *a3 = *v3;
  return 1;
}

uint64_t createIsSystemArchivedValue(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E695E4D0];
  if ((*(a2 + 20) & 0x10000) == 0)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  *a3 = *v3;
  return 1;
}

uint64_t createOwnerIDValue(const void *a1, uint64_t a2, CFNumberRef *a3)
{
  v5 = CFGetAllocator(a1);
  *a3 = CFNumberCreate(v5, kCFNumberSInt32Type, (a2 + 40));
  return 1;
}

uint64_t createGroupIDValue(const void *a1, uint64_t a2, CFNumberRef *a3)
{
  v5 = CFGetAllocator(a1);
  *a3 = CFNumberCreate(v5, kCFNumberSInt32Type, (a2 + 44));
  return 1;
}

uint64_t createStatModeValue(const void *a1, uint64_t a2, CFNumberRef *a3)
{
  v5 = CFGetAllocator(a1);
  *a3 = CFNumberCreate(v5, kCFNumberSInt32Type, (a2 + 16));
  return 1;
}

uint64_t createGenerationCountValue(const void *a1, uint64_t a2, CFNumberRef *a3)
{
  v4 = (a2 + 32);
  if (*(a2 + 32))
  {
    v5 = CFGetAllocator(a1);
    v6 = CFNumberCreate(v5, kCFNumberSInt32Type, v4);
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
  return 1;
}

BOOL _FileURLStringHasNoFollowPrefix(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  result = 1;
  if (Length < CFStringGetLength(@"file:///.resolve/") || (v4.location = 0, v4.length = Length, !CFStringFindWithOptions(a1, @"file:///.resolve/", v4, 9uLL, 0)))
  {
    if (Length < CFStringGetLength(@"file:///.nofollow/"))
    {
      return 0;
    }

    v5.location = 0;
    v5.length = Length;
    if (!CFStringFindWithOptions(a1, @"file:///.nofollow/", v5, 9uLL, 0))
    {
      return 0;
    }
  }

  return result;
}

uint64_t createVolumeParentURL(const __CFAllocator *a1, char a2, fsid *a3, size_t *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v8 = MountInfoStorageSize();
  v12 = MEMORY[0x1EEE9AC00](v8, v9, v10, v11);
  if (MountInfoPrepare(&v22, a3[14].val[0], 0, &v23[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), 0, 0, 0))
  {
    MountPoint = MountInfoGetMountPoint(v22);
    if (!MountPoint)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v14 = a3[13];
    if (GetStatfsByFSID(v14, &v32))
    {
      goto LABEL_12;
    }

    MountPoint = v32.f_mntonname;
  }

  v15 = strlen(MountPoint);
  do
  {
    if (!v15)
    {
LABEL_16:
      *a4 = v15;
      v19 = 1;
      goto LABEL_17;
    }

    v16 = v15 - 1;
    v17 = MountPoint[--v15];
  }

  while (v17 == 47);
  while (v16 != -1)
  {
    v18 = MountPoint[v16--];
    if (v18 == 47)
    {
      if (v22)
      {
        v23[0] = MountPoint;
        v23[1] = v16 + 2;
        v24 = 0u;
        v25 = 0u;
        v26 = 1;
        v27 = a2;
        v28 = 0;
        v29 = 1;
        v30 = 0;
        v31 = v22;
        v15 = __FSURLCreateWithPathAndAttributes(a1, v23, 0);
      }

      else
      {
        v15 = CFURLCreateFromFileSystemRepresentation(a1, MountPoint, v16 + 2, 1u);
      }

      goto LABEL_16;
    }
  }

LABEL_12:
  v19 = 0;
LABEL_17:
  if (v22)
  {
    MountInfoDestroy(v22);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t createNegatedVolumeFlagValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if ((*(a5 + 16) & *(a3 + 32)) != 0)
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v7 = MEMORY[0x1E695E4D0];
  }

  *a7 = *v7;
  return 1;
}

uint64_t createVolumeIsInternalValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v7 = *(a3 + 32) & 0x180;
  if (v7 == 256)
  {
    v8 = MEMORY[0x1E695E4C0];
  }

  else
  {
    if (v7 != 128)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v8 = MEMORY[0x1E695E4D0];
  }

  v9 = *v8;
LABEL_7:
  *a7 = v9;
  return 1;
}

uint64_t createVolumeMaximumFileSizeValue(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, CFNumberRef *a7)
{
  v8 = (a3 + 48);
  if ((*(a3 + 48) & 0x8000000000000000) != 0)
  {
    v10 = 0;
    result = 1;
    goto LABEL_5;
  }

  if (a6)
  {
    v9 = CFGetAllocator(a1);
    v10 = CFNumberCreate(v9, kCFNumberSInt64Type, v8);
    result = 2;
LABEL_5:
    *a7 = v10;
    return result;
  }

  return 0;
}

uint64_t createVolumeCreationDateValue(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, CFDateRef *a7)
{
  if (*(a3 + 40) == -1.0 - *MEMORY[0x1E695E460])
  {
    v8 = 0;
    result = 1;
LABEL_5:
    *a7 = v8;
    return result;
  }

  if (a6)
  {
    v11 = CFGetAllocator(a1);
    v8 = CFDateCreate(v11, *(a3 + 40));
    result = 2;
    goto LABEL_5;
  }

  return 0;
}

uint64_t createVolumeTotalCapacityValue(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, CFNumberRef *a7)
{
  if (!a6)
  {
    return 0;
  }

  if (*(a3 + 39))
  {
    v11 = CFGetAllocator(a1);
    v9 = CFNumberCreate(v11, kCFNumberSInt64Type, (a3 + 16));
  }

  else
  {
    v9 = 0;
  }

  *a7 = v9;
  return 2;
}

uint64_t createVolumeResourceCountValue(const void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6, CFNumberRef *a7)
{
  if (!a6)
  {
    return 0;
  }

  valuePtr = a3[1] + *a3;
  v8 = CFGetAllocator(a1);
  *a7 = CFNumberCreate(v8, kCFNumberSInt64Type, &valuePtr);
  return 2;
}

uint64_t createVolumeDeviceIDValue(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, CFNumberRef *a7)
{
  if (!a6)
  {
    return 0;
  }

  Attributes = _FileCacheGetAttributes(a2);
  v10 = CFGetAllocator(a1);
  *a7 = CFNumberCreate(v10, kCFNumberSInt32Type, (Attributes + 104));
  return 2;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t _URLEnumeratorGetTypeID()
{
  if (_MergedGlobals_0 != -1)
  {
    _URLEnumeratorGetTypeID_cold_1();
  }

  return qword_1ED4461F8;
}

uint64_t _URLEnumeratorGetURLsBulk(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, CFErrorRef *a5)
{
  if (*(a1 + 120))
  {
LABEL_2:
    *(a1 + 56) = 0;
    return 2;
  }

  v8 = a4;
  v10 = a2;
  if (!*(a1 + 48))
  {
    *a3 = 0;
    *(a1 + 104) = 0;
    v14 = *(a1 + 112);
    if (v14)
    {
      CFRelease(v14);
      *(a1 + 112) = 0;
    }

    if (!*(a1 + 72))
    {
      _InitalizeVolumeEnumerator(a1);
    }

    if (!*(a1 + 120) && *(a1 + 72))
    {
      v17 = *(a1 + 88);
      if (v17 < *(a1 + 80))
      {
        *(a1 + 56) = *(a1 + 8 * v17 + 168);
        for (i = 1; v10; --v10)
        {
          if (v17 >= *(a1 + 80))
          {
            break;
          }

          v18 = *(*(a1 + 72) + 8 * v17);
          *(a1 + 104) = v18;
          *v8++ = v18;
          ++*a3;
          v17 = *(a1 + 88) + 1;
          *(a1 + 88) = v17;
        }

        return i;
      }

      goto LABEL_2;
    }

LABEL_20:
    *(a1 + 56) = 0;
    if (a5)
    {
      v13 = *(a1 + 112);
      if (!v13)
      {
        *a5 = 0;
LABEL_25:
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          _URLEnumeratorGetURLsBulk_cold_1();
        }

        *a5 = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E628], 256, 0);
        return 3;
      }

LABEL_24:
      v15 = CFRetain(v13);
      *a5 = v15;
      if (!v15)
      {
        goto LABEL_25;
      }
    }

    return 3;
  }

  *(a1 + 56) = 0;
  *a3 = 0;
  *(a1 + 104) = 0;
  v11 = *(a1 + 112);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 112) = 0;
  }

  if (!*(a1 + 160))
  {
    _InitalizeDirectoryEnumerator(a1, a2, a3, a4);
  }

  if (*(a1 + 120))
  {
    goto LABEL_20;
  }

  i = 2;
  while (1)
  {
    v12 = *(a1 + 88);
    if (v12 < *(a1 + 80))
    {
      break;
    }

    v13 = *(a1 + 96);
    if (v13)
    {
      *(a1 + 112) = v13;
      *(a1 + 96) = 0;
      if (!a5)
      {
        return 3;
      }

      goto LABEL_24;
    }

    if (!_GetDirectoryURLs(a1))
    {
      return i;
    }
  }

  *(a1 + 56) = *(a1 + 8 * v12 + 168);
  if (!v10)
  {
    return 2;
  }

  v19 = a1 + 488;
  v20 = v10 - 1;
  do
  {
    v21 = *(v19 + v12);
    ++*a3;
    v22 = *(a1 + 80);
    v23 = *(*(a1 + 72) + 8 * v12);
    *(a1 + 104) = v23;
    *v8 = v23;
    v12 = *(a1 + 88) + 1;
    *(a1 + 88) = v12;
    if (v12 >= v22)
    {
      break;
    }

    ++v8;
  }

  while (v21 == *(v19 + v12) && v20-- != 0);
  if (v21)
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

uint64_t _URLEnumeratorSkipDescendents(uint64_t result)
{
  if (*(result + 48))
  {
    if (*(result + 32))
    {
      result = *(result + 160);
      if (result)
      {
        v1 = *(result + 1840);
        if (v1)
        {
          if (*(v1 + 48) == 1)
          {
            return DirEnumSkipDescendents(result);
          }
        }
      }
    }
  }

  return result;
}

uint64_t _URLEnumeratorEqual(void *a1, void *a2)
{
  v5 = a1[4] == a2[4] && a1[3] == a2[3];
  v6 = a1[5];
  v7 = a2[5];
  if (v6)
  {
    if (!v7 || !CFEqual(v6, v7))
    {
      v5 = 0;
    }
  }

  else if (v7)
  {
    v5 = 0;
  }

  else
  {
    v5 = v5;
  }

  v8 = a1[6];
  v9 = a2[6];
  if (v8)
  {
    if (!v9 || !CFEqual(v8, v9))
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  else
  {
    return v5;
  }

  return v5;
}

__CFString *_URLEnumeratorCopyDebugDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<CFURLEnumerator %p>{enumeratorOptions = %ld, propertyKeys = %@", a1, *(a1 + 4), *(a1 + 5));
  if (*(a1 + 6))
  {
    CFStringAppendFormat(Mutable, 0, @", directoryURL = %@, currentLevel = %ld", *(a1 + 6), *(a1 + 7));
  }

  if (*(a1 + 14))
  {
    CFStringAppendFormat(Mutable, 0, @", currentError = %@", *(a1 + 14));
  }

  else if (*(a1 + 13))
  {
    CFStringAppendFormat(Mutable, 0, @", currentURL = %@", *(a1 + 13));
  }

  CFStringAppend(Mutable, @"}");
  return Mutable;
}

CFErrorRef _CFErrorWithPOSIXPathAndErrno(CFAllocatorRef alloc, int a2, const char *cStr)
{
  if (cStr)
  {
    v6 = CFStringCreateWithCString(alloc, cStr, 0x8000100u);
    if (!v6)
    {
      v6 = CFStringCreateWithCString(alloc, cStr, 0);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = _FSURLCreateStandardError(alloc, *MEMORY[0x1E695E640], a2, 0, v6, 0);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

CFErrorRef _InitalizeVolumeEnumerator(uint64_t a1)
{
  v4 = 0;
  ptr = 0;
  *(a1 + 152) = _CFGetEUID();
  v2 = CreateMountPointArray(*(a1 + 16), *(a1 + 32), &ptr, &v4);
  if (v2)
  {
    result = _FSURLCreateStandardError(*(a1 + 16), *MEMORY[0x1E695E640], v2, 0, 0, 0);
    *(a1 + 112) = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    _CreateVolumeURLsArray(a1, ptr, v4);
    CFAllocatorDeallocate(*(a1 + 16), ptr);
    result = *(a1 + 112);
    if (!result)
    {
      return result;
    }
  }

  *(a1 + 120) = 1;
  return result;
}

void _CreateVolumeURLsArray(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = a3;
  v45 = *MEMORY[0x1E69E9840];
  v6 = 8 * a3;
  v7 = MEMORY[0x19A8C6D00](*(a1 + 16), 8 * a3, 0x6004044C4A2DFLL, 0);
  *(a1 + 72) = v7;
  if (!v7)
  {
    goto LABEL_12;
  }

  bzero(v7, v6);
  *(a1 + 128) = 5;
  *(a1 + 138) = 0;
  *(a1 + 130) = 0;
  *(a1 + 144) = 0;
  v42 = (a1 + 64);
  *(a1 + 121) = _FSURLGetAttrListForPropertyKeys(0, *(a1 + 40), a1 + 128, (a1 + 64), (a1 + 122));
  *(a1 + 132) &= ~0x8000000u;
  v8 = *(a1 + 64);
  if (v8)
  {
    v46.length = CFArrayGetCount(*(a1 + 64));
    v46.location = 0;
    v9 = CFArrayContainsValue(v8, v46, *MEMORY[0x1E695EBF8]) != 0;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 123) = v9;
  v10 = *(a1 + 40);
  if (v10)
  {
    v47.length = CFArrayGetCount(*(a1 + 40));
    v47.location = 0;
    v11 = CFArrayContainsValue(v10, v47, *MEMORY[0x1E695EA38]) != 0;
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 124) = v11;
  if (!*(a1 + 121) || (v12 = _FSURLCalculateAttributeBufferSize((a1 + 128)), !*(a1 + 121)))
  {
    v15 = 0;
    p_forkattr = 0;
    v16 = 1;
    goto LABEL_14;
  }

  p_forkattr = &v12->forkattr;
  *(a1 + 132) |= 0x80000000;
  v14 = malloc_type_malloc(&v12->forkattr, 0x50047748uLL);
  if (!v14)
  {
LABEL_12:
    *(a1 + 112) = _FSURLCreateStandardError(*(a1 + 16), *MEMORY[0x1E695E640], 12, 0, 0, 0);
    goto LABEL_53;
  }

  v15 = v14;
  v16 = 0;
LABEL_14:
  *(a1 + 80) = 0;
  if (v3 >= 1)
  {
    v17 = 0;
    v40 = *MEMORY[0x1E695EB40];
    v41 = v3;
    do
    {
      v44 = 0;
      v18 = MountInfoStorageSize();
      MEMORY[0x1EEE9AC00](v18, v19, v20, v21);
      if (MountInfoPrepareWithMountPointString())
      {
        if ((v16 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v44 = 0;
        if ((v16 & 1) == 0)
        {
LABEL_26:
          if (filtered_getattrlist(a2, (a1 + 128), v15, p_forkattr, 0x25u))
          {
            v28 = p_forkattr;
LABEL_28:
            v29 = strlen(a2);
            v30 = CFURLCreateFromFileSystemRepresentation(*(a1 + 16), a2, v29, 1u);
            if (v30)
            {
              v31 = *(a1 + 80);
              *(*(a1 + 72) + 8 * v31) = v30;
              *(a1 + 80) = v31 + 1;
            }

            goto LABEL_31;
          }

          v28 = *v15;
          if (p_forkattr >= v28)
          {
            v28 = p_forkattr;
          }

          else
          {
            v32 = malloc_type_realloc(v15, *v15, 0x9C51FE81uLL);
            if (!v32)
            {
              goto LABEL_28;
            }

            v15 = v32;
            if (filtered_getattrlist(a2, (a1 + 128), v32, v28, 0x21u))
            {
              goto LABEL_28;
            }
          }

          v33 = strlen(a2);
          v34 = _FSURLCreateWithPathAndAttributes(*(a1 + 16), a2, v33, 0, 0, a1 + 128, v15, (*(a1 + 32) & 4) != 0, *(a1 + 123), HIBYTE(*(a1 + 123)), 1, v44, 0);
          if (!v34)
          {
            goto LABEL_28;
          }

          v35 = v34;
          if ((*(a1 + 32) & 2) != 0)
          {
            propertyValueTypeRefPtr = 0;
            if (CFURLCopyResourcePropertyForKey(v34, v40, &propertyValueTypeRefPtr, 0))
            {
              if (propertyValueTypeRefPtr)
              {
                if (CFBooleanGetValue(propertyValueTypeRefPtr))
                {
                  CFRelease(v35);
                  CFRelease(propertyValueTypeRefPtr);
                  goto LABEL_31;
                }

                CFRelease(propertyValueTypeRefPtr);
              }
            }
          }

          if (v44)
          {
            _FSURLCacheCheapVolumeInformationForVolume(v35, v44);
          }

          v36 = *v42;
          if (*v42)
          {
            v37 = __CFURLResourceInfoPtr();
            _FSURLCacheResourcePropertiesForKeys(v35, v36, v37, 0);
          }

          v38 = *(a1 + 80);
          *(*(a1 + 72) + 8 * v38) = v35;
          *(a1 + 80) = v38 + 1;
          goto LABEL_24;
        }
      }

      v22 = strlen(a2);
      v23 = CFURLCreateFromFileSystemRepresentation(*(a1 + 16), a2, v22, 1u);
      if (!v23)
      {
        v28 = p_forkattr;
        goto LABEL_31;
      }

      v24 = v23;
      if (v44)
      {
        _FSURLCacheCheapVolumeInformationForVolume(v23, v44);
      }

      v25 = *v42;
      if (*v42)
      {
        v26 = __CFURLResourceInfoPtr();
        _FSURLCacheResourcePropertiesForKeys(v24, v25, v26, 0);
      }

      v27 = *(a1 + 80);
      *(*(a1 + 72) + 8 * v27) = v24;
      *(a1 + 80) = v27 + 1;
      v28 = p_forkattr;
LABEL_24:
      v3 = v41;
LABEL_31:
      ++v17;
      MountInfoDestroy(v44);
      a2 += 1024;
      p_forkattr = v28;
    }

    while (v17 < v3);
  }

  if (v15)
  {
    free(v15);
  }

  *(a1 + 88) = 0;
LABEL_53:
  v39 = *MEMORY[0x1E69E9840];
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1)
{
  v5.length = a1 - 1;
  v4 = *v2;
  v5.location = 0;

  return CFArrayContainsValue(v4, v5, v1);
}

uint64_t OUTLINED_FUNCTION_1_1(const void *a1)
{

  return _FSURLCacheResourcePropertiesForKeys(v1, v2, a1, 0);
}

void CacheItem::CacheItem(CacheItem *this, const __CFData *a2)
{
  *(this + 3) = 0;
  *this = 0;
  *(this + 1) = 0;
  if (a2)
  {
    Copy = CFDataCreateCopy(*MEMORY[0x1E695E480], a2);
  }

  else
  {
    Copy = 0;
  }

  *(this + 2) = Copy;
}

void CacheItem::~CacheItem(CacheItem *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t append(uint64_t result, CacheItem *a2)
{
  if (!result)
  {
    append();
  }

  if (!a2)
  {
    append();
  }

  do
  {
    v2 = result;
    result = *(result + 24);
  }

  while (result);
  *(v2 + 24) = a2;
  return result;
}

void remove(CacheItem *a1, CacheItem *a2)
{
  if (!a1)
  {
    remove();
  }

  if (!a2)
  {
    remove();
  }

  while (a1)
  {
    v3 = a1;
    a1 = *(a1 + 3);
    if (a1 == a2)
    {
      *(v3 + 3) = *(a2 + 3);
      *(a2 + 3) = 0;
      return;
    }
  }

  if (os_log_type_enabled(securityScopedLog, OS_LOG_TYPE_ERROR))
  {
    remove(a2);
  }
}

void SandboxExtensionCache::~SandboxExtensionCache(SandboxExtensionCache *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

CFDataRef SandboxExtensionCache::move(os_unfair_lock_s *this, const __CFURL *a2, CFURLRef url, fsid *a4, uint64_t a5)
{
  v5 = a4;
  v23 = *MEMORY[0x1E69E9840];
  if (url)
  {
    propertyValueTypeRefPtr = 0;
    v13 = 0;
    if (a4)
    {
      v8 = a5;
    }

    else
    {
      v8 = 0;
    }

    if (!a5)
    {
      v5 = 0;
    }

    if (!CFURLCopyResourcePropertyForKey(url, *MEMORY[0x1E695EBF8], &propertyValueTypeRefPtr, &v13) && (v9 = securityScopedLog, os_log_type_enabled(securityScopedLog, OS_LOG_TYPE_ERROR)))
    {
      SandboxExtensionCache::move(url, &v13, v9);
      if (v8)
      {
        goto LABEL_25;
      }
    }

    else if (v8)
    {
      goto LABEL_25;
    }

    if (!v5 && propertyValueTypeRefPtr)
    {
      if (CFStringGetFileSystemRepresentation(propertyValueTypeRefPtr, buffer, 1024))
      {
        *&v21[16] = 0;
        *v21 = xmmword_19605E7B0;
        if (!getattrlist(buffer, v21, v16, 0x28uLL, 1u) && *&v21[4] == v17 && *&v21[20] == v18)
        {
          v8 = v20;
          v14 = v19;
          v5 = &v14;
          goto LABEL_25;
        }

        if (os_log_type_enabled(securityScopedLog, OS_LOG_TYPE_ERROR))
        {
          SandboxExtensionCache::move();
        }
      }

      else if (os_log_type_enabled(securityScopedLog, OS_LOG_TYPE_ERROR))
      {
        SandboxExtensionCache::move();
      }

      v8 = 0;
      v5 = 0;
    }
  }

  else
  {
    if (!a4 || !a5)
    {
      SandboxExtensionCache::move();
    }

    propertyValueTypeRefPtr = 0;
    v13 = 0;
    v8 = a5;
  }

LABEL_25:
  if (v5 && v8)
  {
    os_unfair_lock_lock(this);
    v10 = SandboxExtensionCache::_move(this, propertyValueTypeRefPtr, v5, v8);
    os_unfair_lock_unlock(this);
  }

  else
  {
    if (os_log_type_enabled(securityScopedLog, OS_LOG_TYPE_ERROR))
    {
      SandboxExtensionCache::move();
    }

    v10 = 0;
  }

  if (propertyValueTypeRefPtr)
  {
    CFRelease(propertyValueTypeRefPtr);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

CFDataRef SandboxExtensionCache::_move(CFDictionaryRef *this, const __CFString *a2, fsid *a3, uint64_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  updated = sandbox_extension_update_file_by_fileid();
  if (updated)
  {
    v9 = updated;
    v10 = securityScopedLog;
    if (os_log_type_enabled(securityScopedLog, OS_LOG_TYPE_ERROR))
    {
      v23 = a3->val[0];
      v24 = a3->val[1];
      v25[0] = 67109888;
      v25[1] = v23;
      v26 = 1024;
      v27 = v24;
      v28 = 2048;
      v29 = a4;
      v30 = 1024;
      v31 = v9;
      _os_log_error_impl(&dword_19602C000, v10, OS_LOG_TYPE_ERROR, "sandbox_extension_update_file_by_fileid error for fsid={%#x, %#x}, id=%#llx: %{errno}d", v25, 0x1Eu);
    }

    goto LABEL_4;
  }

  if (a2 && CFStringGetFileSystemRepresentation(a2, v25, 1024))
  {
    v14 = CFRetain(a2);
  }

  else
  {
    if (fsgetpath(v25, 0x400uLL, a3, a4) < 1)
    {
LABEL_4:
      v11 = 0;
      goto LABEL_5;
    }

    v14 = CFStringCreateWithFileSystemRepresentation(*MEMORY[0x1E695E480], v25);
  }

  v15 = v14;
  if (!v14)
  {
    goto LABEL_4;
  }

  v16 = access(v25, 2);
  v17 = MEMORY[0x1E69E9BB0];
  if (v16)
  {
    v17 = MEMORY[0x1E69E9BA8];
  }

  v18 = *v17;
  v19 = *MEMORY[0x1E69E9BE0];
  v20 = sandbox_extension_issue_file();
  if (v20)
  {
    v21 = v20;
    v22 = strlen(v20);
    v11 = CFDataCreate(*MEMORY[0x1E695E480], v21, v22 + 1);
    if (v11 && !SandboxExtensionCache::_insert(this, v15, v11))
    {
      CFRelease(v11);
      v11 = 0;
    }

    free(v21);
  }

  else
  {
    v11 = 0;
  }

  CFRelease(v15);
LABEL_5:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

CFDataRef SandboxExtensionCache::copyExtensionForURL(SandboxExtensionCache *this, CFURLRef url)
{
  propertyValueTypeRefPtr = 0;
  Copy = 0;
  if (CFURLCopyResourcePropertyForKey(url, *MEMORY[0x1E695EBF8], &propertyValueTypeRefPtr, 0))
  {
    v4 = propertyValueTypeRefPtr == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    os_unfair_lock_lock(this);
    Value = CFDictionaryGetValue(*(this + 1), propertyValueTypeRefPtr);
    if (Value)
    {
      Copy = CFDataCreateCopy(*MEMORY[0x1E695E480], Value[2]);
    }

    else
    {
      Copy = 0;
    }

    os_unfair_lock_unlock(this);
    CFRelease(propertyValueTypeRefPtr);
  }

  return Copy;
}

BOOL SandboxExtensionCache::containsPath(SandboxExtensionCache *this, const __CFString *a2)
{
  os_unfair_lock_lock(this);
  v4 = CFDictionaryContainsKey(*(this + 1), a2) != 0;
  os_unfair_lock_unlock(this);
  return v4;
}

BOOL SandboxExtensionCache::containsURL(SandboxExtensionCache *this, CFURLRef url)
{
  propertyValueTypeRefPtr = 0;
  if (CFURLCopyResourcePropertyForKey(url, *MEMORY[0x1E695EBF8], &propertyValueTypeRefPtr, 0))
  {
    v3 = propertyValueTypeRefPtr == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  os_unfair_lock_lock(this);
  v4 = CFDictionaryContainsKey(*(this + 1), propertyValueTypeRefPtr) != 0;
  os_unfair_lock_unlock(this);
  CFRelease(propertyValueTypeRefPtr);
  return v4;
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

uint64_t _URLReplaceObject(const __CFAllocator *a1, CFTypeRef cf, const void *a3, const __CFString *a4, const __CFString *a5, unint64_t a6, CFTypeRef *a7, CFErrorRef *a8)
{
  v14 = cf;
  v187 = *MEMORY[0x1E69E9840];
  *v163 = 0;
  cf2 = 0;
  url = 0;
  v160 = 0;
  value = CFRetain(cf);
  v16 = CFRetain(a3);
  code = 22;
  error = 0;
  v17 = *MEMORY[0x1E695E640];
  theString = a5;
  if (a5)
  {
    v18 = (a6 >> 4) & 1;
  }

  else
  {
    v18 = 0;
  }

  if (a4 && CFStringFind(a4, @"/", 0).location != -1 || theString && CFStringFind(theString, @"/", 0).location != -1)
  {
    goto LABEL_62;
  }

  if (!CFURLResourceIsReachable(v14, 0))
  {
    if (!a4)
    {
      if (_RenameURL(a1, a3, v14, &error))
      {
        if (a7)
        {
          *a7 = CFRetain(v14);
        }

        v34 = _CFURLPromiseCopyPhysicalURL();
        if (!v34)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v58 = 1;
          goto LABEL_110;
        }

        v35 = v34;
        TransferDocumentIdentifier(v34, v14);
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = 1;
LABEL_109:
        CFRelease(v35);
        v58 = v39;
        goto LABEL_110;
      }

      allocator = a1;
      v152 = v16;
      v150 = a3;
      goto LABEL_63;
    }

LABEL_62:
    v152 = v16;
    v150 = a3;
    allocator = a1;
    _URLReplaceObject_cold_1(a1, &error);
LABEL_63:
    LODWORD(Mutable) = 0;
    goto LABEL_64;
  }

  cf1 = a4;
  Mutable = CFURLCreateFilePathURL(a1, v14, &error);
  v150 = a3;
  v152 = v16;
  allocator = a1;
  if (Mutable)
  {
    v157 = Mutable;
    cfa = CFURLCreateFilePathURL(a1, a3, &error);
    if (!cfa)
    {
      v38 = 0;
      v43 = 0;
      v55 = 0;
      v37 = 0;
      v58 = 0;
      LODWORD(Mutable) = 1;
      goto LABEL_79;
    }

    v144 = v18;
    v141 = a7;
    domain = v17;
    v148 = v14;
    v149 = a8;
    v20 = *MEMORY[0x1E695EB68];
    v21 = *MEMORY[0x1E695EB28];
    *&values.ad_name_offset = *MEMORY[0x1E695EB68];
    *values.ad_pad = v21;
    v22 = *MEMORY[0x1E695EB90];
    v23 = *MEMORY[0x1E695EB80];
    v173 = *MEMORY[0x1E695EB90];
    v174 = v23;
    v24 = *MEMORY[0x1E695EBF0];
    v140 = *MEMORY[0x1E695EBE8];
    v175 = *MEMORY[0x1E695EBE8];
    v176 = v24;
    v142 = v24;
    v25 = *MEMORY[0x1E695ED00];
    v26 = *MEMORY[0x1E695EAB8];
    v177 = *MEMORY[0x1E695ED00];
    v178 = v26;
    if ((a6 & 2) != 0)
    {
      v29 = *MEMORY[0x1E695EE10];
      v40 = *MEMORY[0x1E695EDD8];
      v179 = *MEMORY[0x1E695EE10];
      v180 = v40;
      key = v40;
      v31 = MEMORY[0x1E695E9C0];
      v32 = allocator;
      v33 = 10;
    }

    else
    {
      v27 = *MEMORY[0x1E695E2B8];
      v179 = *MEMORY[0x1E695EA50];
      v180 = v27;
      v28 = *MEMORY[0x1E695EAE8];
      v181 = *MEMORY[0x1E695E2C0];
      v182 = v28;
      v29 = *MEMORY[0x1E695EE10];
      v30 = *MEMORY[0x1E695EDD8];
      v183 = *MEMORY[0x1E695EE10];
      v184 = v30;
      key = v30;
      v31 = MEMORY[0x1E695E9C0];
      v32 = allocator;
      v33 = 14;
    }

    v41 = CFArrayCreate(v32, &values, v33, v31);
    if (!v41)
    {
      v17 = domain;
      v57 = CFErrorCreate(allocator, domain, 12, 0);
      goto LABEL_45;
    }

    v42 = __CFURLResourceInfoPtr();
    v43 = _FSURLCacheResourcePropertiesForKeys(v157, v41, v42, &error);
    CFRelease(v41);
    if (!v43)
    {
      LODWORD(Mutable) = 0;
      v38 = 0;
      goto LABEL_59;
    }

    *&values.ad_name_offset = v20;
    *values.ad_pad = v21;
    v173 = v22;
    v174 = v23;
    v175 = v25;
    v176 = v26;
    if ((a6 & 2) != 0)
    {
      v45 = MEMORY[0x1E695E9C0];
      v46 = allocator;
      v47 = 6;
    }

    else
    {
      v44 = *MEMORY[0x1E695EAE8];
      v177 = *MEMORY[0x1E695E2C0];
      v178 = v44;
      v45 = MEMORY[0x1E695E9C0];
      v46 = allocator;
      v47 = 8;
    }

    v48 = CFArrayCreate(v46, &values, v47, v45);
    v49 = cfa;
    if (!v48)
    {
      v17 = domain;
      v38 = 0;
      v43 = 0;
      v55 = 0;
      v37 = 0;
      v58 = 0;
      error = CFErrorCreate(allocator, domain, 12, 0);
      LODWORD(Mutable) = 1;
      goto LABEL_46;
    }

    v50 = __CFURLResourceInfoPtr();
    v43 = _FSURLCacheResourcePropertiesForKeys(cfa, v48, v50, &error);
    CFRelease(v48);
    if (!v43)
    {
      v38 = 0;
      goto LABEL_184;
    }

    if (!_URLIsDirectory(v157, &v163[1], &error))
    {
      goto LABEL_58;
    }

    v51 = v163[1];
    if (!v163[1])
    {
      LOBYTE(values.ad_name_offset) = 0;
      if (_URLIsFile(v157, &values, &error))
      {
        if (LOBYTE(values.ad_name_offset))
        {
          goto LABEL_31;
        }

        code = 2;
        v37 = CFRetain(v157);
      }

      else
      {
        v37 = 0;
      }

      v14 = v148;
      a8 = v149;
      v17 = domain;
      LODWORD(Mutable) = 0;
      v38 = 0;
      v43 = 0;
      v55 = 0;
      v58 = 0;
      goto LABEL_78;
    }

LABEL_31:
    if (!_URLIsDirectory(cfa, v163, &error))
    {
      goto LABEL_58;
    }

    v52 = v163[0];
    if (v163[0])
    {
      goto LABEL_35;
    }

    LOBYTE(values.ad_name_offset) = 0;
    if (_URLIsFile(cfa, &values, &error))
    {
      if (LOBYTE(values.ad_name_offset))
      {
LABEL_35:
        if (!_URLIsLocked(v157, &v160, &error))
        {
          goto LABEL_58;
        }

        if (v160)
        {
LABEL_42:
          code = 13;
          v37 = CFRetain(v157);
          LODWORD(Mutable) = 0;
          v38 = 0;
          v43 = 0;
          v55 = 0;
LABEL_60:
          v58 = 0;
LABEL_61:
          v14 = v148;
          a8 = v149;
LABEL_77:
          v17 = domain;
          goto LABEL_78;
        }

        if (_URLIsLocked(cfa, &v160, &error))
        {
          if (!v160)
          {
            propertyValueTypeRefPtr[0] = 0;
            *&values.ad_name_offset = 0x40000000010;
            if (!CFURLGetFileSystemRepresentation(v157, 1u, &v173, 1024))
            {
              v54 = 2;
LABEL_44:
              v56 = CFGetAllocator(v157);
              v17 = domain;
              v57 = _FSURLCreateStandardError(v56, domain, v54, 1, v157, 0);
LABEL_45:
              LODWORD(Mutable) = 0;
              v38 = 0;
              v43 = 0;
              v55 = 0;
              v37 = 0;
              v58 = 0;
              error = v57;
LABEL_46:
              v14 = v148;
              a8 = v149;
LABEL_78:
              CFRelease(cfa);
LABEL_79:
              CFRelease(v157);
              goto LABEL_80;
            }

            v53 = _CFGetEUID();
            if (accessx_np(&values, 0x410uLL, propertyValueTypeRefPtr, v53))
            {
              v54 = *__error();
              if (!v54)
              {
                goto LABEL_42;
              }

              goto LABEL_44;
            }

            if (propertyValueTypeRefPtr[0])
            {
              goto LABEL_42;
            }

            if (cf1)
            {
              v59 = 1;
              goto LABEL_53;
            }

            *&values.ad_name_offset = 0;
            if (CFURLCopyResourcePropertyForKey(v157, v29, &values, &error))
            {
              v60 = CFBooleanGetValue(*&values.ad_name_offset);
              CFRelease(*&values.ad_name_offset);
              v59 = v60 == 0;
LABEL_53:
              *&values.ad_name_offset = 0;
              v61 = allocator;
              if (CFURLCopyResourcePropertyForKey(v157, key, &values, &error))
              {
                v138 = CFBooleanGetValue(*&values.ad_name_offset);
                CFRelease(*&values.ad_name_offset);
                *&values.ad_name_offset = 0;
                *propertyValueTypeRefPtr = 0;
                v139 = v59;
                if (CFURLCopyResourcePropertyForKey(v157, v26, &values, 0))
                {
                  if (CFURLCopyResourcePropertyForKey(cfa, v26, propertyValueTypeRefPtr, 0))
                  {
                    v62 = CFEqual(*&values.ad_name_offset, *propertyValueTypeRefPtr);
                    CFRelease(*propertyValueTypeRefPtr);
                    CFRelease(*&values.ad_name_offset);
                    v14 = v148;
                    a8 = v149;
                    if (v62)
                    {
                      v63 = 22;
LABEL_75:
                      code = v63;
                      v37 = CFRetain(v157);
                      LODWORD(Mutable) = 0;
                      v38 = 0;
                      v43 = 0;
                      v55 = 0;
LABEL_76:
                      v58 = 0;
                      goto LABEL_77;
                    }

LABEL_67:
                    *&values.ad_name_offset = 0;
                    *propertyValueTypeRefPtr = 0;
                    if (CFURLCopyResourcePropertyForKey(v157, v25, &values, 0))
                    {
                      if (CFURLCopyResourcePropertyForKey(cfa, v25, propertyValueTypeRefPtr, 0))
                      {
                        v64 = CFEqual(*&values.ad_name_offset, *propertyValueTypeRefPtr);
                        CFRelease(*propertyValueTypeRefPtr);
                        CFRelease(*&values.ad_name_offset);
                        if (v64)
                        {
                          if (!CFURLCopyResourcePropertyForKey(v157, v142, &url, &error))
                          {
                            LODWORD(Mutable) = 0;
                            v38 = 0;
                            v43 = 0;
                            v55 = 0;
                            v37 = 0;
                            goto LABEL_76;
                          }

                          v65 = v152;
                          if (cf1)
                          {
                            v66 = CFURLCreateCopyAppendingPathComponent(allocator, url, cf1, v52);
                          }

                          else
                          {
                            v66 = CFRetain(v157);
                          }

                          Mutable = v66;
                          if (!v66)
                          {
                            code = 2;
                            v37 = CFRetain(v157);
                            v38 = 0;
                            v43 = 0;
                            v55 = 0;
                            v58 = 0;
                            v17 = domain;
LABEL_337:
                            CFRelease(url);
                            goto LABEL_78;
                          }

                          keya = v66;
                          if (v139)
                          {
                            v75 = v144;
                            if (v51 | v52)
                            {
                              v75 = 1;
                            }

                            if (v75)
                            {
                              if (!theString)
                              {
                                if (CFURLGetFileSystemRepresentation(v157, 1u, &values, 1024))
                                {
                                  v76 = _amkrtemp();
                                  if (!v76)
                                  {
                                    v134 = *__error();
                                    goto LABEL_362;
                                  }

                                  v77 = v76;
                                  v78 = strlen(v76);
                                  v38 = CFURLCreateFromFileSystemRepresentation(allocator, v77, v78, v51);
                                  free(v77);
                                  if (v38)
                                  {
                                    Mutable = keya;
LABEL_137:
                                    PathComponent = CFURLCopyLastPathComponent(Mutable);
                                    if (PathComponent)
                                    {
                                      v80 = PathComponent;
                                      v81 = CFURLCopyLastPathComponent(v38);
                                      if (v81)
                                      {
                                        v82 = v81;
                                        v83 = CFEqual(v80, v81);
                                        CFRelease(v82);
                                        CFRelease(v80);
                                        if (v83)
                                        {
                                          code = 22;
                                          v37 = CFRetain(keya);
                                          LODWORD(Mutable) = 0;
                                          v43 = 0;
                                          v55 = 0;
                                          v58 = 0;
                                          goto LABEL_345;
                                        }

                                        v65 = v152;
                                      }

                                      else
                                      {
                                        CFRelease(v80);
                                      }

                                      v61 = allocator;
                                    }

                                    Mutable = keya;
LABEL_145:
                                    if ((a6 & 2) != 0)
                                    {
                                      v143 = 0;
                                      v88 = 0;
                                      v17 = domain;
                                      goto LABEL_276;
                                    }

                                    Mutable = CFDictionaryCreateMutable(v61, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                                    if (Mutable)
                                    {
                                      v169 = 0;
                                      fileSec = 0;
                                      mode = 0;
                                      v166 = 0;
                                      group = 0;
                                      accessControlList = 0;
                                      v84 = *MEMORY[0x1E695EAE8];
                                      v137 = Mutable;
                                      if (CFURLCopyResourcePropertyForKey(v157, *MEMORY[0x1E695EAE8], &fileSec, &error) && fileSec)
                                      {
                                        v136 = v84;
                                        if (CFURLCopyResourcePropertyForKey(cfa, v84, &v169, &error) && v169)
                                        {
                                          v85 = CFFileSecurityCreate(v61);
                                          if (!v85)
                                          {
                                            v143 = 0;
                                            v97 = 1;
LABEL_251:
                                            CFRelease(v169);
                                            CFRelease(fileSec);
                                            v88 = v137;
                                            if (!v97)
                                            {
                                              v49 = cfa;
                                              if (TransferExtendedAttributes(v61, v157, cfa, &error) && (*&values.ad_name_offset = 0, *propertyValueTypeRefPtr = 0, v117 = *MEMORY[0x1E695E2C0], CFURLCopyResourcePropertyForKey(v157, *MEMORY[0x1E695E2C0], &values, &error)) && *&values.ad_name_offset && CFDataGetLength(*&values.ad_name_offset) == 32)
                                              {
                                                BytePtr = CFDataGetBytePtr(*&values.ad_name_offset);
                                                LODWORD(Mutable) = 1;
                                                if (CFURLCopyResourcePropertyForKey(cfa, v117, propertyValueTypeRefPtr, &error))
                                                {
                                                  if (*propertyValueTypeRefPtr)
                                                  {
                                                    if (CFDataGetLength(*propertyValueTypeRefPtr) == 32)
                                                    {
                                                      Mutable = CFDataCreateMutableCopy(allocator, 0, *propertyValueTypeRefPtr);
                                                      CFRelease(*propertyValueTypeRefPtr);
                                                      if (Mutable)
                                                      {
                                                        MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
                                                        v120 = *(BytePtr + 4);
                                                        if ((v120 & 0xE) != 0 && (v121 = *(MutableBytePtr + 4), (v121 & 0xE) == 0))
                                                        {
                                                          v122 = 0;
                                                          *(MutableBytePtr + 4) = v121 | *(BytePtr + 4) & 0xE;
                                                          v120 = *(BytePtr + 4);
                                                        }

                                                        else
                                                        {
                                                          v122 = 1;
                                                        }

                                                        v61 = allocator;
                                                        if ((v120 & 0x10) == 0 || (v123 = *(MutableBytePtr + 4), (v123 & 0x10) != 0))
                                                        {
                                                          if (v122)
                                                          {
                                                            goto LABEL_269;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          *(MutableBytePtr + 4) = v123 | 0x10;
                                                        }

                                                        CFDictionaryAddValue(v137, v117, Mutable);
LABEL_269:
                                                        CFRelease(Mutable);
                                                        CFRelease(*&values.ad_name_offset);
                                                        v124 = *MEMORY[0x1E695EA50];
                                                        if (CFURLCopyResourcePropertyForKey(v157, *MEMORY[0x1E695EA50], &cf2, 0) && cf2)
                                                        {
                                                          CFDictionaryAddValue(v137, v124, cf2);
                                                          CFRelease(cf2);
                                                        }

                                                        Mutable = keya;
                                                        if (!CFURLSetResourcePropertiesForKeys(cfa, v137, &error))
                                                        {
                                                          v43 = 0;
                                                          v55 = 0;
                                                          v37 = 0;
                                                          v58 = 0;
                                                          LODWORD(Mutable) = 1;
                                                          v17 = domain;
                                                          goto LABEL_329;
                                                        }

                                                        v17 = domain;
                                                        if (v143)
                                                        {
                                                          CFURLSetResourcePropertyForKey(cfa, v136, v143, 0);
                                                        }

                                                        else
                                                        {
                                                          v143 = 0;
                                                        }

LABEL_276:
                                                        if (!theString || !v38 || !CFURLResourceIsReachable(v38, 0))
                                                        {
LABEL_282:
                                                          if (v139)
                                                          {
                                                            if (v38)
                                                            {
                                                              if ((v163[1] || v163[0] || !v138 || !_HardLinkURL(v61, v157, v38, &error)) && !_RenameURL(v61, v157, v38, &error))
                                                              {
                                                                goto LABEL_365;
                                                              }

                                                              CFRelease(value);
                                                              value = CFRetain(v38);
                                                            }

                                                            if (_RenameURL(v61, v49, Mutable, &error))
                                                            {
                                                              if (cf1)
                                                              {
                                                                v125 = v38 ? v38 : v157;
                                                                if (CFURLCopyResourcePropertyForKey(v125, v140, &cf2, 0) && cf2)
                                                                {
                                                                  if (!CFEqual(cf1, cf2))
                                                                  {
                                                                    TransferDocumentIdentifier(v125, Mutable);
                                                                  }

                                                                  CFRelease(cf2);
                                                                }
                                                              }

                                                              CFRelease(v65);
                                                              v126 = CFRetain(Mutable);
                                                              if (v144)
                                                              {
                                                                goto LABEL_304;
                                                              }

                                                              if (v38)
                                                              {
                                                                if (_RemoveObjectAtURL(v61, v38, &error))
                                                                {
                                                                  CFRelease(value);
                                                                  value = 0;
LABEL_304:
                                                                  v127 = v141;
LABEL_325:
                                                                  v152 = v126;
                                                                  if (v127)
                                                                  {
                                                                    v133 = CFRetain(Mutable);
                                                                    LODWORD(Mutable) = 0;
                                                                    v43 = 0;
                                                                    v55 = 0;
                                                                    v37 = 0;
                                                                    *v127 = v133;
                                                                  }

                                                                  else
                                                                  {
                                                                    LODWORD(Mutable) = 0;
                                                                    v43 = 0;
                                                                    v55 = 0;
                                                                    v37 = 0;
                                                                  }

                                                                  v58 = 1;
LABEL_329:
                                                                  if (v88)
                                                                  {
                                                                    CFRelease(v88);
                                                                  }

                                                                  if (v143)
                                                                  {
                                                                    CFRelease(v143);
                                                                  }

                                                                  if (v55)
                                                                  {
                                                                    goto LABEL_336;
                                                                  }

                                                                  goto LABEL_334;
                                                                }

                                                                v152 = v126;
LABEL_368:
                                                                LODWORD(Mutable) = 0;
                                                                v43 = 0;
                                                                v37 = 0;
                                                                v58 = 0;
                                                                v55 = 1;
                                                                goto LABEL_329;
                                                              }

                                                              if (!cf1 || !CFURLCopyResourcePropertyForKey(v157, v140, &cf2, 0) || !cf2)
                                                              {
                                                                goto LABEL_304;
                                                              }

                                                              if (CFEqual(cf1, cf2))
                                                              {
LABEL_321:
                                                                v127 = v141;
                                                                CFRelease(cf2);
                                                                goto LABEL_325;
                                                              }

                                                              if (_RemoveObjectAtURL(v61, v157, &error))
                                                              {
                                                                CFRelease(value);
                                                                value = 0;
                                                                goto LABEL_321;
                                                              }

                                                              v152 = v126;
                                                              v135 = v157;
LABEL_367:
                                                              v38 = CFRetain(v135);
                                                              goto LABEL_368;
                                                            }

LABEL_365:
                                                            LODWORD(Mutable) = 0;
                                                            v43 = 0;
                                                            v55 = 0;
                                                            v37 = 0;
                                                            v58 = 0;
                                                            goto LABEL_329;
                                                          }

                                                          if (CFURLGetFileSystemRepresentation(v49, 1u, &values, 1024))
                                                          {
                                                            if (CFURLGetFileSystemRepresentation(Mutable, 1u, propertyValueTypeRefPtr, 1024))
                                                            {
                                                              if (!renamex_np(&values, propertyValueTypeRefPtr, 2u) || (v128 = *__error(), v129 = v49, !v128))
                                                              {
                                                                CFRelease(v65);
                                                                v130 = CFRetain(Mutable);
                                                                v131 = v49;
                                                                v126 = v130;
                                                                CFRelease(value);
                                                                value = CFRetain(v131);
                                                                if (v144)
                                                                {
                                                                  if (!_RenameURL(v61, v131, v38, &error))
                                                                  {
                                                                    v152 = v126;
                                                                    goto LABEL_365;
                                                                  }

                                                                  CFRelease(value);
                                                                  value = CFRetain(v38);
                                                                }

                                                                else
                                                                {
                                                                  if (!_RemoveObjectAtURL(v61, v131, &error))
                                                                  {
                                                                    v152 = v126;
                                                                    v135 = cfa;
                                                                    goto LABEL_367;
                                                                  }

                                                                  CFRelease(value);
                                                                  value = 0;
                                                                }

                                                                v127 = v141;
                                                                Mutable = keya;
                                                                goto LABEL_325;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v128 = 2;
                                                              v129 = Mutable;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v128 = 2;
                                                            v129 = v49;
                                                          }

                                                          v132 = _FSURLCreateStandardError(v61, v17, v128, 1, v129, 0);
                                                          LODWORD(Mutable) = 0;
                                                          v43 = 0;
                                                          v55 = 0;
                                                          v37 = 0;
                                                          v58 = 0;
                                                          error = v132;
                                                          goto LABEL_329;
                                                        }

                                                        if (_URLIsLocked(v38, &v160, &error))
                                                        {
                                                          if (v160)
                                                          {
                                                            code = 13;
                                                            v37 = CFRetain(v38);
                                                            LODWORD(Mutable) = 0;
                                                            v55 = 0;
                                                            goto LABEL_358;
                                                          }

                                                          if (_RemoveObjectAtURL(v61, v38, &error))
                                                          {
                                                            goto LABEL_282;
                                                          }
                                                        }

                                                        LODWORD(Mutable) = 0;
                                                        v55 = 0;
                                                        v37 = 0;
LABEL_358:
                                                        v58 = 0;
                                                        v43 = 1;
                                                        goto LABEL_329;
                                                      }
                                                    }
                                                  }
                                                }

                                                CFRelease(*&values.ad_name_offset);
                                              }

                                              else
                                              {
                                                LODWORD(Mutable) = 0;
                                              }

                                              if (!error)
                                              {
                                                code = 512;
                                                v17 = *MEMORY[0x1E695E628];
                                                v37 = CFRetain(v157);
LABEL_355:
                                                v43 = 0;
                                                v55 = 0;
                                                v58 = 0;
                                                v14 = v148;
                                                a8 = v149;
                                                goto LABEL_356;
                                              }

                                              goto LABEL_350;
                                            }

LABEL_348:
                                            if (!error)
                                            {
                                              code = 512;
                                              v17 = *MEMORY[0x1E695E628];
                                              v37 = CFRetain(v157);
                                              LODWORD(Mutable) = 0;
                                              goto LABEL_355;
                                            }

                                            LODWORD(Mutable) = 0;
LABEL_350:
                                            v43 = 0;
                                            v55 = 0;
                                            v37 = 0;
                                            v58 = 0;
                                            v14 = v148;
                                            a8 = v149;
                                            v17 = domain;
LABEL_356:
                                            v88 = v137;
                                            goto LABEL_329;
                                          }

                                          v86 = v85;
                                          if (!CFFileSecurityGetMode(fileSec, &mode))
                                          {
                                            goto LABEL_194;
                                          }

                                          if (!v51 || v52)
                                          {
                                            if (v51 || !v52)
                                            {
LABEL_169:
                                              if (CFFileSecurityGetGroup(fileSec, &group) && CFFileSecurityGetGroup(v169, &v166))
                                              {
                                                v91 = group;
                                                if (v166 == group)
                                                {
                                                  v92 = 0;
                                                  v93 = 1;
                                                  v94 = mode;
                                                  goto LABEL_200;
                                                }

                                                *&values.ad_name_offset = 0;
                                                *values.ad_pad = 0;
                                                v186 = 0;
                                                *propertyValueTypeRefPtr = 0;
                                                ismember = 0;
                                                v95 = _CFGetEUID();
                                                if (mbr_uid_to_uuid(v95, &values) || mbr_gid_to_uuid(v91, propertyValueTypeRefPtr) || mbr_check_membership(&values, propertyValueTypeRefPtr, &ismember))
                                                {
                                                  v96 = mode;
                                                }

                                                else
                                                {
                                                  v96 = mode;
                                                  if (ismember)
                                                  {
                                                    v93 = 0;
                                                    v92 = mode;
LABEL_199:
                                                    v94 = (8 * (v96 & 7)) | v96 & 0xFFC7;
                                                    mode = v94;
LABEL_200:
                                                    if (CFFileSecuritySetMode(v86, v94))
                                                    {
                                                      if (!CFFileSecurityCopyAccessControlList(fileSec, &accessControlList))
                                                      {
                                                        v97 = 1;
                                                        if (CFFileSecuritySetAccessControlList(v86, 1))
                                                        {
                                                          goto LABEL_223;
                                                        }

                                                        v143 = 0;
LABEL_249:
                                                        v61 = allocator;
                                                        goto LABEL_250;
                                                      }

                                                      if (v51 == v52)
                                                      {
                                                        goto LABEL_374;
                                                      }

                                                      v98 = accessControlList;
                                                      v99 = 0;
                                                      if (v51)
                                                      {
                                                        *&values.ad_name_offset = 0;
                                                        *propertyValueTypeRefPtr = 0;
                                                        while (1)
                                                        {
                                                          entry = acl_get_entry(v98, v99, &values);
                                                          if (entry)
                                                          {
                                                            break;
                                                          }

                                                          permset = acl_get_permset(*&values.ad_name_offset, propertyValueTypeRefPtr);
                                                          v99 = -1;
                                                          if (!permset)
                                                          {
                                                            v102 = acl_delete_perm(*propertyValueTypeRefPtr, ACL_DELETE_CHILD|ACL_SEARCH);
                                                            v99 = -1;
                                                            if (!v102)
                                                            {
                                                              acl_set_permset(*&values.ad_name_offset, *propertyValueTypeRefPtr);
                                                              v99 = -1;
                                                            }
                                                          }
                                                        }
                                                      }

                                                      else
                                                      {
                                                        *&values.ad_name_offset = 0;
                                                        *propertyValueTypeRefPtr = 0;
                                                        while (1)
                                                        {
                                                          entry = acl_get_entry(v98, v99, &values);
                                                          if (entry)
                                                          {
                                                            break;
                                                          }

                                                          v103 = acl_get_permset(*&values.ad_name_offset, propertyValueTypeRefPtr);
                                                          v99 = -1;
                                                          if (!v103)
                                                          {
                                                            v104 = acl_add_perm(*propertyValueTypeRefPtr, ACL_EXECUTE);
                                                            v99 = -1;
                                                            if (!v104)
                                                            {
                                                              acl_set_permset(*&values.ad_name_offset, *propertyValueTypeRefPtr);
                                                              v99 = -1;
                                                            }
                                                          }
                                                        }
                                                      }

                                                      if (entry == -1)
                                                      {
                                                        if (*__error() == 22)
                                                        {
                                                          entry = 0;
                                                        }

                                                        else
                                                        {
                                                          entry = -1;
                                                        }
                                                      }

                                                      if (!entry)
                                                      {
LABEL_374:
                                                        v105 = CFFileSecuritySetAccessControlList(v86, accessControlList);
                                                        acl_free(accessControlList);
                                                        if (v105)
                                                        {
LABEL_223:
                                                          if ((v93 & 1) == 0)
                                                          {
                                                            Copy = CFFileSecurityCreateCopy(allocator, v86);
                                                            if (Copy)
                                                            {
                                                              v107 = Copy;
                                                              if (CFFileSecuritySetMode(Copy, v92) && CFFileSecuritySetGroup(v107, group))
                                                              {
                                                                v143 = v107;
LABEL_230:
                                                                v164 = 0;
                                                                if (CFFileSecurityGetMode(v169, &v164) && v164 == mode)
                                                                {
                                                                  *&values.ad_name_offset = 0;
                                                                  *propertyValueTypeRefPtr = 0;
                                                                  v108 = CFFileSecurityCopyAccessControlList(v169, &values);
                                                                  v109 = CFFileSecurityCopyAccessControlList(v86, propertyValueTypeRefPtr);
                                                                  if (!(v108 | v109))
                                                                  {
LABEL_248:
                                                                    v97 = 0;
                                                                    goto LABEL_249;
                                                                  }

                                                                  v110 = v109;
                                                                  if (!v108)
                                                                  {
                                                                    *&values.ad_name_offset = acl_init(0);
                                                                  }

                                                                  if (!v110)
                                                                  {
                                                                    *propertyValueTypeRefPtr = acl_init(0);
                                                                  }

                                                                  v111 = acl_size(*&values.ad_name_offset);
                                                                  if (v111 >= 1)
                                                                  {
                                                                    v112 = v111;
                                                                    if (v111 == acl_size(*propertyValueTypeRefPtr))
                                                                    {
                                                                      v113 = malloc_type_malloc(v112, 0xCD589C36uLL);
                                                                      v114 = malloc_type_malloc(v112, 0x4B72B581uLL);
                                                                      v115 = v114;
                                                                      if (v113 && v114 && acl_copy_ext(v113, *&values.ad_name_offset, v112) >= 1 && acl_copy_ext(v115, *propertyValueTypeRefPtr, v112) >= 1)
                                                                      {
                                                                        v116 = memcmp(v113, v115, v112);
                                                                        free(v113);
                                                                        free(v115);
                                                                        acl_free(*&values.ad_name_offset);
                                                                        acl_free(*propertyValueTypeRefPtr);
                                                                        if (!v116)
                                                                        {
                                                                          goto LABEL_248;
                                                                        }

                                                                        goto LABEL_247;
                                                                      }

                                                                      free(v113);
                                                                      free(v115);
                                                                    }
                                                                  }

                                                                  acl_free(*&values.ad_name_offset);
                                                                  acl_free(*propertyValueTypeRefPtr);
                                                                }

LABEL_247:
                                                                CFDictionaryAddValue(v137, v136, v86);
                                                                goto LABEL_248;
                                                              }

                                                              CFRelease(v107);
                                                            }
                                                          }

                                                          v143 = 0;
                                                          goto LABEL_230;
                                                        }
                                                      }
                                                    }

                                                    v143 = 0;
                                                    v97 = 1;
                                                    goto LABEL_249;
                                                  }
                                                }

                                                v92 = 0;
                                                v93 = 1;
                                                goto LABEL_199;
                                              }

LABEL_194:
                                              v143 = 0;
                                              v97 = 1;
LABEL_250:
                                              CFRelease(v86);
                                              goto LABEL_251;
                                            }

                                            if ((mode & 0x180) != 0)
                                            {
                                              v89 = mode | 0x40;
                                            }

                                            else
                                            {
                                              v89 = mode & 0xFE3F;
                                            }

                                            if ((v89 & 0x30) != 0)
                                            {
                                              v90 = v89 | 8;
                                            }

                                            else
                                            {
                                              v90 = v89 & 0xFFC7;
                                            }

                                            if ((v90 & 6) != 0)
                                            {
                                              v87 = v90 | 1;
                                            }

                                            else
                                            {
                                              v87 = v90 & 0xFFF8;
                                            }
                                          }

                                          else
                                          {
                                            v87 = mode & 0xFFB6;
                                          }

                                          mode = v87;
                                          goto LABEL_169;
                                        }

                                        CFRelease(fileSec);
                                      }

                                      v143 = 0;
                                      goto LABEL_348;
                                    }

                                    v43 = 0;
                                    v55 = 0;
                                    v37 = 0;
                                    v58 = 0;
                                    code = 12;
LABEL_345:
                                    v17 = domain;
LABEL_334:
                                    if (v38)
                                    {
                                      CFRelease(v38);
                                      v38 = 0;
                                      v55 = 0;
                                    }

                                    goto LABEL_336;
                                  }
                                }

                                v134 = 2;
LABEL_362:
                                code = v134;
                                v37 = CFRetain(url);
                                LODWORD(Mutable) = 0;
                                v38 = 0;
                                v43 = 0;
                                v55 = 0;
                                v58 = 0;
                                v14 = v148;
                                a8 = v149;
                                goto LABEL_363;
                              }

LABEL_136:
                              v38 = CFURLCreateCopyAppendingPathComponent(allocator, url, theString, v51);
                              if (v38)
                              {
                                goto LABEL_137;
                              }

                              code = 2;
                              v37 = CFRetain(url);
                              LODWORD(Mutable) = 0;
                              v43 = 0;
                              v55 = 0;
                              v58 = 0;
LABEL_363:
                              v17 = domain;
LABEL_336:
                              CFRelease(keya);
                              goto LABEL_337;
                            }
                          }

                          else if (v144)
                          {
                            goto LABEL_136;
                          }

                          v38 = 0;
                          goto LABEL_145;
                        }
                      }

                      else
                      {
                        CFRelease(*&values.ad_name_offset);
                      }
                    }

                    v63 = 18;
                    goto LABEL_75;
                  }

                  CFRelease(*&values.ad_name_offset);
                }

                v14 = v148;
                a8 = v149;
                goto LABEL_67;
              }
            }

LABEL_58:
            LODWORD(Mutable) = 0;
            v38 = 0;
            v43 = 0;
LABEL_59:
            v55 = 0;
            v37 = 0;
            goto LABEL_60;
          }

          code = 13;
          v37 = CFRetain(cfa);
          v38 = 0;
          v43 = 0;
          v55 = 0;
LABEL_186:
          v58 = 0;
          LODWORD(Mutable) = 1;
          goto LABEL_61;
        }

        v38 = 0;
        v43 = 0;
LABEL_184:
        v55 = 0;
        v37 = 0;
        goto LABEL_186;
      }

      code = 2;
      v37 = CFRetain(cfa);
    }

    else
    {
      v37 = 0;
    }

    v14 = v148;
    a8 = v149;
    v17 = domain;
    v38 = 0;
    v43 = 0;
    v55 = 0;
    v58 = 0;
    LODWORD(Mutable) = 1;
    goto LABEL_78;
  }

LABEL_64:
  v38 = 0;
  v43 = 0;
  v55 = 0;
  v37 = 0;
  v58 = 0;
LABEL_80:
  v36 = 0;
  if (!a8 || v58)
  {
    a3 = v150;
    v16 = v152;
    goto LABEL_110;
  }

  v67 = error;
  if (!error)
  {
    if (v37)
    {
      *&values.ad_name_offset = @"NSURL";
      *propertyValueTypeRefPtr = v37;
      v67 = CFErrorCreateWithUserInfoKeysAndValues(allocator, v17, code, &values, propertyValueTypeRefPtr, 1);
    }

    else
    {
      v67 = CFErrorCreate(allocator, v17, code, 0);
    }

    error = v67;
  }

  if ((v43 | Mutable))
  {
    code = 512;
  }

  else
  {
    if (v67)
    {
      v17 = CFErrorGetDomain(v67);
      v68 = CFErrorGetCode(error);
    }

    else
    {
      v68 = code;
    }

    _FSURLTranslateDomainAndCodeToCocoaError(v17, v68, 1, &code);
  }

  v69 = *MEMORY[0x1E695E628];
  v70 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v35 = v70;
  if (v70)
  {
    CFDictionarySetValue(v70, @"NSURL", v14);
    if (value)
    {
      CFDictionarySetValue(v35, @"NSFileOriginalItemLocationKey", value);
    }

    CFDictionarySetValue(v35, @"NSFileNewItemLocationKey", v152);
    if (v38)
    {
      v71 = v55;
    }

    else
    {
      v71 = 0;
    }

    if (v71 == 1)
    {
      CFDictionarySetValue(v35, @"NSFileBackupItemLeftBehindLocationKey", v38);
    }

    if (error)
    {
      CFDictionarySetValue(v35, *MEMORY[0x1E695E670], error);
    }

    if (v43)
    {
      CFDictionarySetValue(v35, @"NSUserStringVariant", @"Backup");
    }
  }

  v72 = CFErrorCreate(allocator, v69, code, v35);
  *a8 = v72;
  if (!v72)
  {
    *a8 = CFErrorCreate(allocator, v69, 512, 0);
  }

  v39 = 0;
  v58 = 0;
  v36 = 1;
  a3 = v150;
  v16 = v152;
  if (v35)
  {
    goto LABEL_109;
  }

LABEL_110:
  if (error)
  {
    CFRelease(error);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (value)
  {
    CFRelease(value);
  }

  CFRelease(v16);
  if (v38)
  {
    CFRelease(v38);
  }

  CFURLClearResourcePropertyCache(v14);
  CFURLClearResourcePropertyCache(a3);
  if (v36 && !*a8)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      _URLReplaceObject_cold_4();
    }

    *a8 = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E628], 256, 0);
  }

  v73 = *MEMORY[0x1E69E9840];
  return v58;
}

uint64_t _RenameURL(const __CFAllocator *a1, CFURLRef url, const __CFURL *a3, __CFError **a4)
{
  v6 = url;
  v16 = *MEMORY[0x1E69E9840];
  if (!CFURLGetFileSystemRepresentation(url, 1u, buffer, 1024))
  {
    v10 = 2;
    goto LABEL_7;
  }

  if (!CFURLGetFileSystemRepresentation(a3, 1u, v14, 1024))
  {
    v10 = 2;
    v6 = a3;
    if (a4)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  rename(buffer, v14, v8);
  if (v9)
  {
    v10 = *__error();
    if (v10)
    {
LABEL_7:
      if (a4)
      {
LABEL_8:
        v12 = _FSURLCreateStandardError(a1, *MEMORY[0x1E695E640], v10, 1, v6, 0);
        result = 0;
        *a4 = v12;
        goto LABEL_11;
      }

LABEL_10:
      result = 0;
      goto LABEL_11;
    }
  }

  result = 1;
LABEL_11:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void TransferDocumentIdentifier(const __CFURL *a1, const __CFURL *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  propertyValueTypeRefPtr = 0;
  if (CFURLCopyResourcePropertyForKey(a1, *MEMORY[0x1E695EA60], &propertyValueTypeRefPtr, 0))
  {
    v4 = propertyValueTypeRefPtr == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
    {
      if (CFURLGetFileSystemRepresentation(a2, 1u, v8, 1024))
      {
        v6 = open(v8, 0);
        if ((v6 & 0x80000000) == 0)
        {
          fsctl(buffer, 0x80046820uLL, &v6, 0);
          close(v6);
        }
      }
    }

    CFRelease(propertyValueTypeRefPtr);
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t _URLIsDirectory(const __CFURL *a1, BOOL *a2, CFErrorRef *error)
{
  propertyValueTypeRefPtr = 0;
  v4 = CFURLCopyResourcePropertyForKey(a1, *MEMORY[0x1E695EB28], &propertyValueTypeRefPtr, error);
  if (v4)
  {
    v5 = propertyValueTypeRefPtr;
    *a2 = propertyValueTypeRefPtr == *MEMORY[0x1E695E4D0];
    CFRelease(v5);
  }

  else
  {
    *a2 = 0;
  }

  return v4;
}

uint64_t _URLIsFile(const __CFURL *a1, BOOL *a2, CFErrorRef *error)
{
  propertyValueTypeRefPtr = 0;
  v4 = CFURLCopyResourcePropertyForKey(a1, *MEMORY[0x1E695EB68], &propertyValueTypeRefPtr, error);
  if (v4)
  {
    v5 = propertyValueTypeRefPtr;
    *a2 = propertyValueTypeRefPtr == *MEMORY[0x1E695E4D0];
    CFRelease(v5);
  }

  else
  {
    *a2 = 0;
  }

  return v4;
}

uint64_t _URLIsLocked(const __CFURL *a1, BOOL *a2, CFErrorRef *error)
{
  cf = 0;
  propertyValueTypeRefPtr = 0;
  *a2 = 0;
  v6 = CFURLCopyResourcePropertyForKey(a1, *MEMORY[0x1E695EB80], &cf, error);
  if (v6)
  {
    v7 = *MEMORY[0x1E695E4D0];
    if (cf == *MEMORY[0x1E695E4D0])
    {
      *a2 = 1;
    }

    else if (_CFGetEUID())
    {
      v6 = CFURLCopyResourcePropertyForKey(a1, *MEMORY[0x1E695EB90], &propertyValueTypeRefPtr, error);
      if (v6)
      {
        v8 = propertyValueTypeRefPtr;
        *a2 = propertyValueTypeRefPtr == v7;
        CFRelease(v8);
      }
    }

    CFRelease(cf);
  }

  return v6;
}

uint64_t _RemoveObjectAtURL(const __CFAllocator *a1, CFURLRef url, __CFError **a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!CFURLGetFileSystemRepresentation(url, 1u, buffer, 1024))
  {
    v7 = 2;
    if (a3)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v6 = 1;
  if (removefile(buffer, 0, 1u))
  {
    v7 = *__error();
    if (v7)
    {
      if (a3)
      {
LABEL_5:
        v6 = 0;
        *a3 = _FSURLCreateStandardError(a1, *MEMORY[0x1E695E640], v7, 1, url, 0);
        goto LABEL_8;
      }

LABEL_7:
      v6 = 0;
    }
  }

LABEL_8:
  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t _HardLinkURL(const __CFAllocator *a1, CFURLRef url, const __CFURL *a3, __CFError **a4)
{
  v6 = url;
  v14 = *MEMORY[0x1E69E9840];
  if (!CFURLGetFileSystemRepresentation(url, 1u, buffer, 1024))
  {
    v8 = 2;
    goto LABEL_7;
  }

  if (!CFURLGetFileSystemRepresentation(a3, 1u, v12, 1024))
  {
    v8 = 2;
    v6 = a3;
    if (a4)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if (link(buffer, v12))
  {
    v8 = *__error();
    if (v8)
    {
LABEL_7:
      if (a4)
      {
LABEL_8:
        v10 = _FSURLCreateStandardError(a1, *MEMORY[0x1E695E640], v8, 1, v6, 0);
        result = 0;
        *a4 = v10;
        goto LABEL_11;
      }

LABEL_10:
      result = 0;
      goto LABEL_11;
    }
  }

  result = 1;
LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PosixToOSStatusTranslate(int a1)
{
  while (2)
  {
    if (a1 >= -1)
    {
      if (a1 <= 62)
      {
        v1 = a1 + 1;
        LOWORD(a1) = 0;
        switch(v1)
        {
          case 0:
            if (*__error() == -1)
            {
              goto LABEL_16;
            }

            a1 = *__error();
            continue;
          case 1:
            return a1;
          case 2:
          case 14:
            LOWORD(a1) = -5000;
            return a1;
          case 3:
            LOWORD(a1) = -43;
            return a1;
          case 10:
            LOWORD(a1) = -51;
            return a1;
          case 13:
          case 24:
            LOWORD(a1) = -41;
            return a1;
          case 17:
            goto LABEL_13;
          case 18:
            LOWORD(a1) = -48;
            return a1;
          case 19:
            LOWORD(a1) = -1303;
            return a1;
          case 21:
            LOWORD(a1) = -1407;
            return a1;
          case 23:
            LOWORD(a1) = -50;
            return a1;
          case 25:
            LOWORD(a1) = -42;
            return a1;
          case 28:
            LOWORD(a1) = -1309;
            return a1;
          case 29:
            LOWORD(a1) = -34;
            return a1;
          case 31:
            LOWORD(a1) = -61;
            return a1;
          default:
            goto LABEL_16;
        }
      }

      if (a1 <= 68)
      {
        if (a1 == 63)
        {
          LOWORD(a1) = -37;
          return a1;
        }

        if (a1 == 66)
        {
LABEL_13:
          LOWORD(a1) = -47;
          return a1;
        }
      }

      else
      {
        switch(a1)
        {
          case 'E':
            LOWORD(a1) = -1425;
            return a1;
          case 'P':
            LOWORD(a1) = -5023;
            return a1;
          case 'Y':
            LOWORD(a1) = -128;
            return a1;
        }
      }

LABEL_16:
      LOWORD(a1) = -36;
    }

    return a1;
  }
}

uint64_t CreateMountPointArray(uint64_t a1, char a2, uint64_t *a3, void *a4)
{
  *a4 = 0;
  v18 = 0;
  v8 = getmntinfo_r_np(&v18, 2);
  if (v8 < 1)
  {
    v10 = 0;
    v12 = *__error();
  }

  else
  {
    LODWORD(v9) = v8;
    v10 = MEMORY[0x19A8C6D00](a1, v8 << 10, 0x1000040D7EB2065, 0);
    if (v10)
    {
      v9 = v9;
      v11 = 64;
      do
      {
        if ((a2 & 2) == 0 || (*(&v18->f_bsize + v11 + 2) & 0x50) == 0)
        {
          v14 = xmmword_19605E978;
          v15 = 0;
          memset(v16, 0, sizeof(v16));
          v17 = 0;
          if (!filtered_getattrlist(&v18->f_bavail + v11, &v14, v16, 0x24uLL, 1u) && strlcpy((v10 + (*a4 << 10)), &v18->f_bavail + v11, 0x400uLL) <= 0x3FF)
          {
            ++*a4;
          }
        }

        v11 += 2168;
        --v9;
      }

      while (v9);
      v12 = 0;
    }

    else
    {
      v12 = 12;
    }

    free(v18);
  }

  *a3 = v10;
  return v12;
}

uint64_t GetFromDesktopServices(const __CFURL *a1, const void *a2, const void **a3, __CFError **a4, double a5)
{
  Helper_x8___DS_CFURLGetPropertyForKey = gotLoadHelper_x8___DS_CFURLGetPropertyForKey(a5);
  if (*(v6 + 3648))
  {
    return _DS_CFURLGetPropertyForKey_delayInitStub(Helper_x8___DS_CFURLGetPropertyForKey);
  }

  else
  {
    *a3 = 0;
    return 1;
  }
}

uint64_t SetWithDesktopServices(const __CFURL *a1, const __CFString *a2, const void *a3, __CFError **a4, double a5)
{
  Helper_x8___DS_CFURLSetPropertyForKey = gotLoadHelper_x8___DS_CFURLSetPropertyForKey(a5);
  if (*(v6 + 3656))
  {
    return _DS_CFURLSetPropertyForKey_delayInitStub(Helper_x8___DS_CFURLSetPropertyForKey);
  }

  else
  {
    return 1;
  }
}

uint64_t CopyFromFileProvider(const __CFURL *a1, const void *a2, const void **a3, __CFError **a4, double a5)
{
  Helper_x8__FPCFCopyAttributeValuesForItem = gotLoadHelper_x8__FPCFCopyAttributeValuesForItem(a5);
  if (*(v6 + 3616))
  {
    *a3 = FPCFCopyAttributeValuesForItem_delayInitStub(Helper_x8__FPCFCopyAttributeValuesForItem);
  }

  else
  {
    *a3 = 0;
  }

  return 1;
}

uint64_t SetWithFileProvider(const __CFURL *a1, const __CFString *a2, const void *a3, __CFError **a4, double a5)
{
  Helper_x8__FPCFSetAttributeValueForItem = gotLoadHelper_x8__FPCFSetAttributeValueForItem(a5);
  if (*(v6 + 3624))
  {
    return FPCFSetAttributeValueForItem_delayInitStub(Helper_x8__FPCFSetAttributeValueForItem);
  }

  else
  {
    return 1;
  }
}

uint64_t GetFromQuickLook(const __CFURL *a1, const void *a2, const void **a3, __CFError **a4, double a5)
{
  Helper_x8___QLCopyResourcePropertyForKey = gotLoadHelper_x8___QLCopyResourcePropertyForKey(a5);
  if (*(v6 + 256))
  {
    return _QLCopyResourcePropertyForKey_delayInitStub(Helper_x8___QLCopyResourcePropertyForKey);
  }

  else
  {
    *a3 = 0;
    return 1;
  }
}

uint64_t SetWithQuickLook(const __CFURL *a1, const __CFString *a2, const void *a3, __CFError **a4, double a5)
{
  Helper_x8___QLSetResourcePropertyForKey = gotLoadHelper_x8___QLSetResourcePropertyForKey(a5);
  if (*(v6 + 264))
  {
    return _QLSetResourcePropertyForKey_delayInitStub(Helper_x8___QLSetResourcePropertyForKey);
  }

  else
  {
    return 1;
  }
}

uint64_t ExternalProviderCopyValues(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, const void ***a5, uint64_t a6)
{
  if (a6 < 1)
  {
    return 1;
  }

  cf[5] = v6;
  cf[6] = v7;
  v8 = a6;
  while (1)
  {
    cf[0] = 0;
    result = _FileCacheGetPropertyValueForKey(a2, **a5, cf);
    if (!result)
    {
      break;
    }

    if (cf[0])
    {
      CFRetain(cf[0]);
      v13 = cf[0];
    }

    else
    {
      v13 = 0;
    }

    *a4++ = v13;
    ++a5;
    if (!--v8)
    {
      return 1;
    }
  }

  *a4 = 0;
  return result;
}

uint64_t ExternalProviderPrepareValues(const __CFURL *a1, uint64_t a2, const void **a3, uint64_t *a4, uint64_t a5, uint64_t a6, __CFError **a7)
{
  if (a5 < 1)
  {
    return 1;
  }

  v8 = a5;
  Mutable = 0;
  v14 = *MEMORY[0x1E695EC90];
  cf2 = *MEMORY[0x1E695EC98];
  allocator = *MEMORY[0x1E695E480];
  while (1)
  {
    cf = 0;
    v15 = *a3;
    v16 = *a4;
    if (!_FileCacheGetPropertyValueForKey(a2, *a3, &cf))
    {
      break;
    }

LABEL_4:
    ++a4;
    ++a3;
    if (!--v8)
    {
      v19 = 1;
      if (!Mutable)
      {
        return v19;
      }

      goto LABEL_17;
    }
  }

  v18 = *(v16 + 16);
  if (v18 == CopyFromFileProvider)
  {
    if (CFEqual(v15, v14) || CFEqual(v15, cf2))
    {
      _FileCacheSetPropertyValueForKey(a2, v15, 0);
    }

    else
    {
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
      }

      CFArrayAppendValue(Mutable, v15);
    }

    goto LABEL_4;
  }

  if ((v18)(a1, v15, &cf, a7))
  {
    _FileCacheSetPropertyValueForKey(a2, v15, cf);
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_4;
  }

  v19 = 0;
  if (!Mutable)
  {
    return v19;
  }

LABEL_17:
  cf = 0;
  if (CopyFromFileProvider(a1, Mutable, &cf, a7, v17))
  {
    if (cf)
    {
      Count = CFArrayGetCount(Mutable);
      if (Count >= 1)
      {
        v21 = Count;
        for (i = 0; i != v21; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Mutable, i);
          Value = CFDictionaryGetValue(cf, ValueAtIndex);
          _FileCacheSetPropertyValueForKey(a2, ValueAtIndex, Value);
        }
      }

      CFRelease(cf);
    }
  }

  else
  {
    v19 = 0;
  }

  CFRelease(Mutable);
  return v19;
}

uint64_t ExternalProviderSetValues(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6 < 1)
  {
    return 1;
  }

  v9 = a6;
  while (1)
  {
    v14 = *(*a5 + 24);
    if (v14)
    {
      result = v14(a1, *a3, *a4, a8);
      if (!result)
      {
        break;
      }
    }

    a5 += 8;
    ++a4;
    ++a3;
    if (!--v9)
    {
      return 1;
    }
  }

  return result;
}

CFDataRef _URLCopySecurityScopeFromFileURL(CFDataRef result)
{
  propertyValueTypeRefPtr = 0;
  if (result)
  {
    v1 = result;
    if (!_CFURLIsFileURL())
    {
      return 0;
    }

    result = CFURLCopyResourcePropertyForKey(v1, @"_NSURLSecuritySandboxExtensionKey", &propertyValueTypeRefPtr, 0);
    if (result && (result = propertyValueTypeRefPtr) != 0 || (v2 = SandboxExtensionCache::shared(result), result = SandboxExtensionCache::copyExtensionForURL(v2, v1), (propertyValueTypeRefPtr = result) != 0))
    {
      v3 = CFGetTypeID(result);
      TypeID = CFDataGetTypeID();
      result = propertyValueTypeRefPtr;
      if (v3 != TypeID)
      {
        CFRelease(propertyValueTypeRefPtr);
        return 0;
      }
    }
  }

  return result;
}

uint64_t _FSGetTypeInfoForFileDescriptor(uint64_t a1, char *a2, size_t a3, _DWORD *a4)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(v9, 0, 512);
  if (fstatfs_ext() == -1)
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

uint64_t _FSGetLocationFromStatfs(uint64_t a1, char *a2, size_t a3)
{
  v6 = malloc_type_calloc(1uLL, 0x400uLL, 0xC37FC7BBuLL);
  if (v6)
  {
    v7 = v6;
    if (check_mntfromname((a1 + 72)))
    {
      v8 = strstr((a1 + 1112), "://");
      if (!v8 || (v9 = v8 + 3, (v10 = strchr(v8 + 3, 47)) == 0))
      {
        v12 = 22;
LABEL_17:
        free(v7);
        return v12;
      }

      if (v10 - v9 >= 1023)
      {
        v11 = 1023;
      }

      else
      {
        v11 = v10 - v9;
      }

      __memcpy_chk();
      *(v7 + v11) = 0;
      if (!a2)
      {
LABEL_16:
        v12 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      if (strncmp((a1 + 1112), "/dev/disk", 9uLL))
      {
        strncmp((a1 + 1112), "/dev/rdisk", 0xAuLL);
      }

      __strlcpy_chk();
      if (!a2)
      {
        goto LABEL_16;
      }
    }

    strlcpy(a2, v7, a3);
    goto LABEL_16;
  }

  return 12;
}

uint64_t _FSGetLocationForPath(uint64_t a1, char *a2, size_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(v7, 0, 512);
  if (statfs_ext() == -1)
  {
    result = *__error();
  }

  else
  {
    result = _FSGetLocationFromStatfs(v7, a2, a3);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _FSGetLocationForFileDescriptor(uint64_t a1, char *a2, size_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(v7, 0, 512);
  if (fstatfs_ext() == -1)
  {
    result = *__error();
  }

  else
  {
    result = _FSGetLocationFromStatfs(v7, a2, a3);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void BookmarkData::BookmarkData(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136315394;
  v4 = "BookmarkData";
  v5 = 2080;
  v6 = a1;
  _os_log_error_impl(&dword_19602C000, a2, OS_LOG_TYPE_ERROR, "%s: %s", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void BookmarkData::copyItem(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134349056;
  v4 = a1;
  _os_log_error_impl(&dword_19602C000, a2, OS_LOG_TYPE_ERROR, "BookmarkData: Corrupt bookmark file; container dataItemPtr %{public}p already used", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __CFURLCreateBookmarkData(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "__CFURLCreateBookmarkData";
  _os_log_error_impl(&dword_19602C000, log, OS_LOG_TYPE_ERROR, "%s: NULL result with no real error", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void _CFURLCreateBookmarkData_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218242;
  v4 = a1;
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&dword_19602C000, a2, OS_LOG_TYPE_DEBUG, "result=<%p %@>", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void _FileCacheCopyDebugDesc()
{
  __assert_rtn("_FileCacheCopyDebugDesc", "FileCache.cp", 223, "result != NULL");
}

{
  __assert_rtn("_FileCacheCopyDebugDesc", "FileCache.cp", 219, "formatter != NULL");
}

void _CFURLWriteBookmarkDataToFile_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = 136315650;
  v5 = "_CFURLWriteBookmarkDataToFile";
  v6 = 2114;
  v7 = a1;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&dword_19602C000, log, OS_LOG_TYPE_ERROR, "%s: destination URL %{public}@ exists but does not point to a valid file, so exiting with an error %{public}@", &v4, 0x20u);
  v3 = *MEMORY[0x1E69E9840];
}

void _CFURLWriteBookmarkDataToFile_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_19602C000, log, OS_LOG_TYPE_ERROR, "FAILED creating bookmark file at %@, error=%@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void _CFURLCreateByResolvingBookmarkData_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void _CFURLCreateByResolvingBookmarkData_cold_2(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "_CFURLCreateByResolvingBookmarkData";
  _os_log_error_impl(&dword_19602C000, log, OS_LOG_TYPE_ERROR, "%s: NULL result with no real error", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void createByResolvingBookmarkDataInternal()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void createByResolvingBookmarkDataInternal(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x2Au);
  v7 = *MEMORY[0x1E69E9840];
}

void _URLCreateByResolvingAliasFile_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "_URLCreateByResolvingAliasFile";
  _os_log_error_impl(&dword_19602C000, log, OS_LOG_TYPE_ERROR, "%s: NULL result with no real error", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void CFURLCreateByResolvingDataInBookmark()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

{
  dispatch_once(&copyVolumesArrayForBookmark(__CFAllocator const*,BookmarkData &,unsigned int)::onceToken, &__block_literal_global_2);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void CFURLCreateByResolvingDataInBookmark(int *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x1E69E9840];
}

void CFURLCreateByResolvingDataInBookmark(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x1E69E9840];
}

void matchVolumeURLForBookmark()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void matchURLToBookmark()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t _FSURLGetCatalogInfo(const __CFURL *a1, int a2, _WORD *a3, unsigned __int16 *a4)
{
  v90[26] = *MEMORY[0x1E69E9840];
  if (!a1 || (a2 & 0xBFFFFFFF) != 0 && !a3)
  {
    v21 = 4294967246;
    goto LABEL_189;
  }

  OUTLINED_FUNCTION_1_0();
  if (v85)
  {
    v10 = v8;
  }

  else
  {
    v10 = a3;
  }

  v11 = v9 | 0x80000000;
  if (a4)
  {
    v12 = v11;
  }

  else
  {
    v12 = a2 & 0x3FFFFFFF;
  }

  if (v12)
  {
    v12 &= 0xBFFFFFFE;
    if (a3)
    {
      v8 = a3;
    }

    *(v8 + 36) = 0;
    if ((v12 & 0x2000) == 0)
    {
LABEL_12:
      if ((v12 & 0x200) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_35;
    }
  }

  else if ((v12 & 0x2000) == 0)
  {
    goto LABEL_12;
  }

  v12 &= ~0x2000u;
  OUTLINED_FUNCTION_1_0();
  if (!v85)
  {
    v19 = a3;
  }

  *(v19 + 35) = 0;
  if ((v12 & 0x200) == 0)
  {
LABEL_13:
    if ((v12 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

LABEL_35:
  v12 &= ~0x200u;
  OUTLINED_FUNCTION_1_0();
  if (!v85)
  {
    v20 = a3;
  }

  *(v20 + 6) = 0;
  if ((v12 & 0x10000) != 0)
  {
LABEL_14:
    v12 &= ~0x10000u;
    OUTLINED_FUNCTION_1_0();
    if (!v85)
    {
      v13 = a3;
    }

    *(v13 + 12) = 0;
  }

LABEL_17:
  if ((v12 & 0xFFFDFFFF) != 0)
  {
    v14 = __CFURLResourceInfoPtr();
    v15 = _FileCacheGetForURL(a1, v14);
    _FileCacheLock(v15);
    Attributes = _FileCacheGetAttributes(v15);
    v17 = Attributes;
    v18 = *Attributes;
    if ((*Attributes & 1) != 0 && ((v12 & 0x18) == 0 || (v18 & 4) != 0) && ((v12 & 0x80000) == 0 || (v18 & 8) != 0) && ((v12 & 0x41800) == 0 || (v18 & 0x10) != 0) && ((v12 & 0x8000) == 0 || (v18 & 0x20) != 0 || (Attributes[4] & 0xF000) == 0x4000) && ((v12 & 0x400000) == 0 || (v18 & 0x80) != 0))
    {
      goto LABEL_50;
    }

    _FileCacheLockTransitionToPreparer(v15);
    if ((a2 & 0x40000000) != 0)
    {
      v21 = 4294956641;
      goto LABEL_188;
    }

    if (qword_1ED445940 != -1)
    {
      dispatch_once(&qword_1ED445940, &__block_literal_global_11);
    }

    memset(v90, 0, 60);
    v22 = dword_1ED445BD0;
    v23 = (qword_1ED445948 + 24);
    do
    {
      if ((v22 & v12 & 0xFFFDFFFF) != 0)
      {
        addPropertyAndDependenciesToBitmap(*(v23 - 1), v90);
      }

      v24 = *v23;
      v23 += 6;
      v22 = v24;
    }

    while (v24);
    v89 = 0;
    v25 = prepareValuesForBitmap(a1, v15, v90, &v89);
    _FileCacheLockTransitionFromPreparer(v15);
    if (v25)
    {
LABEL_50:
      if ((v12 & 2) != 0)
      {
        v26 = (v17[5] & 0x20002) != 0;
        *v10 = v26;
        if ((v17[4] & 0xF000) == 0x4000)
        {
          v26 |= 0x10u;
          *v10 = v26;
        }

        if (v17[6] >= 2u)
        {
          v26 |= 0x100u;
          *v10 = v26;
        }

        if ((*(v17 + 1) & 0x40) != 0)
        {
          *v10 = v26 | 0x100;
        }
      }

      if ((v12 & 4) != 0)
      {
        OUTLINED_FUNCTION_1_0();
        if (!v85)
        {
          v30 = a3;
        }

        v30[1] = -100;
        if ((v12 & 0x10) == 0)
        {
LABEL_59:
          if ((v12 & 8) == 0)
          {
            goto LABEL_75;
          }

          goto LABEL_70;
        }
      }

      else if ((v12 & 0x10) == 0)
      {
        goto LABEL_59;
      }

      v31 = *(v17 + 16);
      OUTLINED_FUNCTION_4_0();
      if (!v85)
      {
        v33 = a3;
      }

      *(v33 + 2) = v32;
      if ((v12 & 8) == 0)
      {
LABEL_75:
        if ((v12 & 0x20) != 0)
        {
          if (*(v17 + 10) == -1.0 - *MEMORY[0x1E695E460] || (OUTLINED_FUNCTION_3_0(), v37 == v38))
          {
            OUTLINED_FUNCTION_1_0();
            if (!v85)
            {
              v42 = a3;
            }

            *(v42 + 2) = 0;
            if ((v12 & 0x40) == 0)
            {
              goto LABEL_90;
            }

            goto LABEL_86;
          }

          OUTLINED_FUNCTION_1_0();
          if (!v85)
          {
            v39 = a3;
          }

          v41 = ConvertCFAbsoluteTimeToUTCDateTime((v39 + 8), v40);
          if (v41)
          {
            goto LABEL_103;
          }
        }

        if ((v12 & 0x40) == 0)
        {
          goto LABEL_90;
        }

LABEL_86:
        v43 = *(v17 + 8);
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_1_0();
        if (!v85)
        {
          v44 = a3;
        }

        if (v45 == v46)
        {
          *(v44 + 3) = 0;
          if ((v12 & 0x80) == 0)
          {
            goto LABEL_98;
          }

          goto LABEL_91;
        }

        v41 = ConvertCFAbsoluteTimeToUTCDateTime((v44 + 12), v45);
        if (v41)
        {
LABEL_103:
          v21 = v41;
          goto LABEL_188;
        }

LABEL_90:
        if ((v12 & 0x80) == 0)
        {
          goto LABEL_98;
        }

LABEL_91:
        v47 = *(v17 + 9);
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_1_0();
        if (!v85)
        {
          v48 = a3;
        }

        if (v49 == v50)
        {
          *(v48 + 4) = 0;
          if ((v12 & 0x100) == 0)
          {
            goto LABEL_107;
          }

          goto LABEL_99;
        }

        v41 = ConvertCFAbsoluteTimeToUTCDateTime((v48 + 16), v49);
        if (v41)
        {
          goto LABEL_103;
        }

LABEL_98:
        if ((v12 & 0x100) == 0)
        {
          goto LABEL_107;
        }

LABEL_99:
        v51 = *(v17 + 7);
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_1_0();
        if (!v85)
        {
          v52 = a3;
        }

        if (v53 == v54)
        {
          *(v52 + 5) = 0;
        }

        else
        {
          v41 = ConvertCFAbsoluteTimeToUTCDateTime((v52 + 20), v53);
          if (v41)
          {
            goto LABEL_103;
          }
        }

LABEL_107:
        if ((v12 & 0x400) != 0)
        {
          OUTLINED_FUNCTION_1_0();
          if (!v85)
          {
            v55 = a3;
          }

          *(v55 + 7) = *(v17 + 5);
          v55[33] = v17[4];
        }

        if ((v12 & 0x400000) != 0)
        {
          if ((*v17 & 0x80) != 0)
          {
            v56 = CFGetAllocator(a1);
            CFFileSecurityCreateCopy(v56, *(v17 + 28));
          }

          OUTLINED_FUNCTION_1_0();
          if (!v85)
          {
            v58 = a3;
          }

          *(v58 + 34) = v57;
        }

        if ((v12 & 0x41800) != 0)
        {
          if ((*v17 & 0x4000010) == 0x10)
          {
            OUTLINED_FUNCTION_1_0();
            if (!v85)
            {
              v59 = a3;
            }

            *(v59 + 38) = *(v17 + 10);
            *(v59 + 46) = *(v17 + 11);
          }

          else
          {
            OUTLINED_FUNCTION_1_0();
            if (!v85)
            {
              v60 = a3;
            }

            *(v60 + 42) = 0;
            *(v60 + 38) = 0;
            *(v60 + 50) = 0;
            *(v60 + 46) = 0;
          }

          if ((v17[4] & 0xF000) == 0xA000)
          {
            OUTLINED_FUNCTION_1_0();
            if (!v85)
            {
              v61 = a3;
            }

            *(v61 + 38) = 0x72686170736C6E6BLL;
            v61[42] = v61[42] & 0x4000 | 0x8000;
            *(v61 + 50) = 0;
            *(v61 + 46) = 0;
          }
        }

        if ((v17[4] & 0xF000) == 0x4000)
        {
          OUTLINED_FUNCTION_4_0();
          if (!v85)
          {
            v63 = a3;
          }

          *(v63 + 66) = 0;
          *(v63 + 62) = 0;
          *(v63 + 58) = 0;
          v64 = 54;
          goto LABEL_143;
        }

        if ((v12 & 0x4000) != 0)
        {
          OUTLINED_FUNCTION_1_0();
          if (!v85)
          {
            v65 = a3;
          }

          *(v65 + 54) = *(v17 + 13);
          if ((v12 & 0x8000) == 0)
          {
LABEL_135:
            if ((v12 & 0x80000) == 0)
            {
              goto LABEL_150;
            }

LABEL_144:
            OUTLINED_FUNCTION_1_0();
            if (!v85)
            {
              v69 = a3;
            }

            *(v69 + 65) = 0;
            v70 = (*v17 >> 23) & 1;
            *(v69 + 65) = (*v17 & 0x800000) != 0;
            v71 = *v17;
            if ((*v17 & 0x1000000) != 0)
            {
              LOBYTE(v70) = v70 | 2;
              *(v69 + 65) = v70;
              v71 = *v17;
            }

            if ((v71 & 0x2000000) != 0)
            {
              *(v69 + 65) = v70 | 4;
            }

LABEL_150:
            v21 = 0;
            if (a4 && v12 < 0)
            {
              if ((*(v17 + 1) & 0x20) != 0)
              {
                v90[0] = 0;
                v72 = MountInfoStorageSize();
                v76 = MEMORY[0x1EEE9AC00](v72, v73, v74, v75);
                if (MountInfoPrepare(v90, v17[28], 0, &v88 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0), 0, 0, 0))
                {
                  VolumeName = MountInfoGetVolumeName(v90[0]);
                  if (VolumeName)
                  {
                    v78 = VolumeName;
                    v79 = CFGetAllocator(a1);
                    v80 = CFStringCreateWithCString(v79, v78, 0x8000100u);
                  }

                  else
                  {
                    v80 = 0;
                  }

                  MountInfoDestroy(v90[0]);
                  if (v80)
                  {
                    goto LABEL_162;
                  }
                }
              }

              v80 = *(v17 + 1);
              if (v80)
              {
LABEL_162:
                Length = CFStringGetLength(v80);
                if (Length < 256)
                {
                  v91.length = Length;
                  *a4 = Length;
                  v82 = a4 + 1;
                  v91.location = 0;
                  CFStringGetCharacters(v80, v91, a4 + 1);
                  if (v80 != *(v17 + 1))
                  {
                    CFRelease(v80);
                  }

                  v83 = *a4;
                  if (*a4)
                  {
                    do
                    {
                      if (*v82 == 58)
                      {
                        *v82 = 47;
                      }

                      ++v82;
                      --v83;
                    }

                    while (v83);
                  }

                  v21 = 0;
                  goto LABEL_188;
                }

                if (v80 != *(v17 + 1))
                {
                  CFRelease(v80);
                }
              }

              v21 = 4294967259;
            }

LABEL_188:
            _FileCacheUnlock(v15);
            goto LABEL_189;
          }
        }

        else if ((v12 & 0x8000) == 0)
        {
          goto LABEL_135;
        }

        v66 = *(v17 + 24);
        OUTLINED_FUNCTION_4_0();
        if (!v85)
        {
          v68 = a3;
        }

        *(v68 + 62) = v67;
        v62 = *(v17 + 25);
        v64 = 66;
LABEL_143:
        *&v10[v64] = v62;
        if ((v12 & 0x80000) == 0)
        {
          goto LABEL_150;
        }

        goto LABEL_144;
      }

LABEL_70:
      if (*(v17 + 16) != 2)
      {
        v34 = v17[34];
      }

      OUTLINED_FUNCTION_4_0();
      if (!v85)
      {
        v36 = a3;
      }

      *(v36 + 1) = v35;
      goto LABEL_75;
    }

    v27 = v89;
    if (!v89)
    {
      v21 = 4294967260;
      goto LABEL_188;
    }

    Domain = CFErrorGetDomain(v89);
    Code = CFErrorGetCode(v27);
    if (CFEqual(Domain, *MEMORY[0x1E695E638]))
    {
      v21 = Code;
    }

    else
    {
      if (!CFEqual(Domain, *MEMORY[0x1E695E640]))
      {
        if (CFEqual(Domain, *MEMORY[0x1E695E628]))
        {
          v21 = 4294967253;
          if (!(!v85 & v84))
          {
            switch(Code)
            {
              case 257:
                goto LABEL_184;
              case 258:
                goto LABEL_185;
              case 259:
              case 261:
              case 262:
                goto LABEL_182;
              case 260:
                goto LABEL_187;
              case 263:
                v21 = 4294965987;
                goto LABEL_187;
              default:
                JUMPOUT(0);
            }
          }

          switch(Code)
          {
            case 4:
              goto LABEL_187;
            case 642:
              v21 = 4294967235;
              goto LABEL_187;
            case 514:
LABEL_185:
              v21 = 4294967259;
              goto LABEL_187;
            case 640:
              v21 = 4294967262;
              goto LABEL_187;
            case 513:
LABEL_184:
              v21 = 4294962296;
              goto LABEL_187;
          }
        }

        else
        {
          CFEqual(Domain, *MEMORY[0x1E695E630]);
        }

LABEL_182:
        v21 = 4294967260;
        goto LABEL_187;
      }

      v21 = PosixToOSStatusTranslate(Code);
    }

LABEL_187:
    CFRelease(v89);
    goto LABEL_188;
  }

  v21 = 0;
LABEL_189:
  v86 = *MEMORY[0x1E69E9840];
  return v21;
}

CFErrorRef _FSURLGetResourcePropertyFlags_cold_2(CFErrorRef result, _BYTE *a2)
{
  if (result)
  {
    v3 = result;
    if (!*result)
    {
      v4 = defaultLog;
      if (os_log_type_enabled(defaultLog, OS_LOG_TYPE_ERROR))
      {
        *v5 = 0;
        _os_log_error_impl(&dword_19602C000, v4, OS_LOG_TYPE_ERROR, "_FSURLGetResourcePropertyFlags: false result with no real error", v5, 2u);
      }

      result = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E628], 256, 0);
      *v3 = result;
    }
  }

  *a2 = 0;
  return result;
}

void createFileResourceIdentifierValue(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136315394;
  v4 = "createFileResourceIdentifierValue";
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&dword_19602C000, a2, OS_LOG_TYPE_DEBUG, "%s: this would have gone down the fallback path if enabled: %@", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void *_URLEnumeratorCreateForMountedVolumes(const __CFAllocator *a1, uint64_t a2, const __CFArray *a3)
{
  v6 = _URLEnumeratorCreate(a1);
  v7 = v6;
  if (v6)
  {
    v6[2] = a1;
    v6[4] = a2;
    if (a3)
    {
      MutableCopy = CFArrayCreateMutableCopy(a1, 0, a3);
      v7[5] = MutableCopy;
      v7[6] = 0;
      v9 = (v7 + 5);
      v10 = v7[4];
      if ((v10 & 6) != 0)
      {
        if (MutableCopy)
        {
          if ((v10 & 2) == 0)
          {
LABEL_12:
            if ((v7[4] & 4) != 0)
            {
              Count = CFArrayGetCount(*v9);
              v14 = *MEMORY[0x1E695E3F0];
              if (!Count || !OUTLINED_FUNCTION_0_1(Count))
              {
                CFArrayAppendValue(*v9, v14);
              }

              v15 = CFArrayGetCount(*v9);
              v16 = *MEMORY[0x1E695E2B0];
              if (!v15 || !OUTLINED_FUNCTION_0_1(v15))
              {
                CFArrayAppendValue(*v9, v16);
              }
            }

            goto LABEL_19;
          }

LABEL_9:
          v11 = CFArrayGetCount(MutableCopy);
          v12 = *MEMORY[0x1E695EB40];
          if (!v11 || !OUTLINED_FUNCTION_0_1(v11))
          {
            CFArrayAppendValue(*v9, v12);
          }

          goto LABEL_12;
        }

LABEL_8:
        MutableCopy = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
        v7[5] = MutableCopy;
        if ((v7[4] & 2) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_9;
      }
    }

    else
    {
      v6[5] = 0;
      v6[6] = 0;
      v9 = (v6 + 5);
      if ((a2 & 6) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_19:
    _SetHashCode(v7);
  }

  return v7;
}

void append()
{
  __assert_rtn("append", "SandboxExtensionCache.cpp", 106, "newItem");
}

{
  __assert_rtn("append", "SandboxExtensionCache.cpp", 105, "head");
}

void remove(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  CFDataGetBytePtr(*(a1 + 16));
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void remove()
{
  __assert_rtn("remove", "SandboxExtensionCache.cpp", 118, "oldItem");
}

{
  __assert_rtn("remove", "SandboxExtensionCache.cpp", 117, "head");
}

void SandboxExtensionCache::insert()
{
  __assert_rtn("insert", "SandboxExtensionCache.cpp", 171, "extension");
}

{
  __assert_rtn("insert", "SandboxExtensionCache.cpp", 170, "url");
}

void SandboxExtensionCache::_insert(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  CFDictionaryGetCount(*(a1 + 8));
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_19602C000, a2, OS_LOG_TYPE_DEBUG, "sandbox extension cache path count: %ld", v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void SandboxExtensionCache::_insert()
{
  __assert_rtn("_insert", "SandboxExtensionCache.cpp", 372, "extension");
}

{
  __assert_rtn("_insert", "SandboxExtensionCache.cpp", 371, "path");
}

void SandboxExtensionCache::move(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v5 = 136315650;
  v6 = "move";
  v7 = 2114;
  v8 = a1;
  v9 = 2114;
  v10 = v3;
  _os_log_error_impl(&dword_19602C000, log, OS_LOG_TYPE_ERROR, "%s: error getting path for url=%{public}@: %{public}@", &v5, 0x20u);
  v4 = *MEMORY[0x1E69E9840];
}

void SandboxExtensionCache::move()
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = *__error();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

{
  __assert_rtn("move", "SandboxExtensionCache.cpp", 187, "destination || (fsidp && file_id)");
}

void SandboxExtensionCache::consume()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(&dword_19602C000, v0, OS_LOG_TYPE_DEBUG, "<%p %@>: called <StartAccessing> on a URL that is not security-scoped", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

void SandboxExtensionCache::_consume()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v7 = *MEMORY[0x1E69E9840];
  v6 = *__error();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  __assert_rtn("_consume", "SandboxExtensionCache.cpp", 437, "path");
}

void SandboxExtensionCache::_consume(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 134218242;
  *&v4[4] = a2;
  *&v4[12] = 2112;
  *&v4[14] = a1;
  OUTLINED_FUNCTION_1_2(&dword_19602C000, a2, a3, "handle %lld: new handle for path %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

void SandboxExtensionCache::release()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(&dword_19602C000, v0, OS_LOG_TYPE_DEBUG, "<%p %@>: called <StopAccessing> too many times or URL isn't security-scoped", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  WORD2(v4) = 2080;
  HIWORD(v4) = v0;
  OUTLINED_FUNCTION_1_2(&dword_19602C000, v0, v1, "%p: releasing extension by path for %s", v3, v4);
  v2 = *MEMORY[0x1E69E9840];
}

void SandboxExtensionCache::_release(uint64_t *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = *__error();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x1E69E9840];
}

void SandboxExtensionCache::_release(void *a1, uint64_t a2, NSObject *a3)
{
  *v4 = 134218242;
  *&v4[4] = *a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1_2(&dword_19602C000, a2, a3, "handle %lld: released extension for path %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

void SandboxExtensionCache::_release(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 134218240;
  *(&v4 + 4) = *(a1 + 8);
  WORD6(v4) = 2048;
  HIWORD(v4) = a2;
  OUTLINED_FUNCTION_1_2(&dword_19602C000, a2, a3, "handle %lld: decrementing ref count to %lld", v4, *(&v4 + 1));
  v3 = *MEMORY[0x1E69E9840];
}

uint64_t TransferExtendedAttributes(const __CFAllocator *a1, CFURLRef url, const __CFURL *a3, __CFError **a4)
{
  v6 = url;
  v32 = *MEMORY[0x1E69E9840];
  if (CFURLGetFileSystemRepresentation(url, 1u, v31, 1024))
  {
    v8 = CFURLGetFileSystemRepresentation(a3, 1u, v30, 1024);
    if (!v8)
    {
      v20 = 2;
LABEL_28:
      v6 = a3;
      goto LABEL_29;
    }

    MEMORY[0x1EEE9AC00](v8, v9, v10, v11);
    v12 = v29;
    bzero(v29, 0x200uLL);
    v13 = 1;
    v14 = listxattr(v31, v29, 0x200uLL, 1);
    if (!v14)
    {
      goto LABEL_23;
    }

    v15 = v14;
    if ((v14 & 0x8000000000000000) == 0)
    {
      v16 = 0;
      v17 = &v29[v14];
      goto LABEL_6;
    }

    if (*__error() != 34)
    {
      v16 = 0;
LABEL_25:
      a3 = 0;
      v20 = *__error();
LABEL_26:
      if (v16)
      {
        free(v12);
      }

      goto LABEL_28;
    }

    v21 = listxattr(v31, 0, 0, 1);
    if (!v21)
    {
      goto LABEL_23;
    }

    v22 = v21;
    if (v21 > 0)
    {
      OUTLINED_FUNCTION_1_3();
      v24 = malloc_type_malloc(v22 + 4096, v23);
      if (v24)
      {
        v12 = v24;
        v16 = 1;
        v25 = listxattr(v31, v24, v22 + 4096, 1);
        if ((v25 & 0x8000000000000000) == 0)
        {
          if (!v25)
          {
LABEL_21:
            free(v12);
LABEL_22:
            v13 = 1;
            goto LABEL_23;
          }

          v17 = &v12[v25];
LABEL_6:
          v18 = v12;
          do
          {
            if (xattr_preserve_for_intent(v18, 2u))
            {
              v19 = copyExtendedAttribute(v31, v30, v18);
              if (v19)
              {
                v20 = v19;
                goto LABEL_26;
              }
            }

            v18 += strlen(v18) + 1;
          }

          while (v18 < v17);
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

        goto LABEL_25;
      }
    }

    v20 = *__error();
  }

  else
  {
    v20 = 2;
  }

LABEL_29:
  if (a4)
  {
    v28 = _FSURLCreateStandardError(a1, *MEMORY[0x1E695E640], v20, 1, v6, 0);
    v13 = 0;
    *a4 = v28;
  }

  else
  {
    v13 = 0;
  }

LABEL_23:
  v26 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t copyExtendedAttribute(const char *a1, const char *a2, const char *a3)
{
  v45[65] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  v9 = getxattr(v3, v4, v5, v6, v7, v8);
  v13 = 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

  MEMORY[0x1EEE9AC00](v9, v10, v11, v12);
  v14 = v45;
  bzero(v45, 0x200uLL);
  OUTLINED_FUNCTION_0_3();
  if (getxattr(v15, v16, v17, v18, v19, v20) < 0)
  {
    if (*__error() != 34)
    {
      v21 = 0;
LABEL_13:
      v13 = *__error();
      if (!v21)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    OUTLINED_FUNCTION_0_3();
    if (getxattr(v22, v23, v24, v25, v26, v27) < 0)
    {
      v13 = *__error();
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_1_3();
    v30 = malloc_type_malloc(v28 + 4096, v29);
    if (!v30)
    {
      v13 = 4294967188;
      goto LABEL_11;
    }

    v14 = v30;
    v21 = 1;
    OUTLINED_FUNCTION_0_3();
    if (getxattr(v31, v32, v33, v34, v35, v36) < 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v21 = 0;
  }

  OUTLINED_FUNCTION_0_3();
  v13 = 0;
  if (setxattr(v37, v38, v39, v40, v41, v42))
  {
    goto LABEL_13;
  }

  if (v21)
  {
LABEL_10:
    free(v14);
  }

LABEL_11:
  v43 = *MEMORY[0x1E69E9840];
  return v13;
}

CFErrorRef _URLReplaceObject_cold_1(const __CFAllocator *a1, CFErrorRef *a2)
{
  result = CFErrorCreate(a1, *MEMORY[0x1E695E638], -50, 0);
  *a2 = result;
  return result;
}

uint64_t ConvertCFAbsoluteTimeToUTCDateTime(uint64_t a1, double a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  v2 = a2 + 3061152000.0;
  if (v2 <= 9.22337204e18)
  {
    if (fabs(v2) < 0.5 || v2 < -9.22337204e18)
    {
      v3 = 0;
    }

    else
    {
      v3 = v2;
    }

    if (v2 < 0.0)
    {
      LOWORD(v4) = 0;
      LODWORD(v3) = 0;
      LOWORD(v5) = 0;
      goto LABEL_12;
    }

    if (v3 <= 0xFFFFFFFFFFFELL)
    {
      v5 = HIDWORD(v3);
      v9 = v2 * 65536.0 + 0.5;
      if (v9 <= 9.22337204e18)
      {
        v10 = fabs(v9);
        if (v9 < -9.22337204e18 || v10 < 0.5)
        {
          LOWORD(v4) = 0;
        }

        else
        {
          v4 = v9;
        }
      }

      else
      {
        LOWORD(v4) = -1;
      }

      goto LABEL_12;
    }
  }

  LODWORD(v3) = -1;
  LOWORD(v4) = -1;
  LOWORD(v5) = -1;
LABEL_12:
  v7 = 0;
  *a1 = v5;
  *(a1 + 2) = v3;
  *(a1 + 6) = v4;
  return v7;
}

double registerExternalProviderProperties_cold_3()
{
  qword_1ED446218 = *MEMORY[0x1E695E270];
  unk_1ED446220 = 0;
  unk_1ED446228 = GetFromDesktopServices;
  unk_1ED446230 = 0;
  qword_1ED446238 = &qword_1ED446208;
  unk_1ED446240 = 1;
  unk_1ED446248 = *MEMORY[0x1E695E3C8];
  unk_1ED446250 = 0;
  unk_1ED446258 = GetFromDesktopServices;
  unk_1ED446260 = 0;
  unk_1ED446268 = &qword_1ED446208;
  unk_1ED446270 = 1;
  unk_1ED446278 = *MEMORY[0x1E695E2E8];
  unk_1ED446280 = 0;
  unk_1ED446288 = GetFromDesktopServices;
  unk_1ED446290 = SetWithDesktopServices;
  unk_1ED446298 = &qword_1ED446208;
  unk_1ED4462A0 = 1;
  unk_1ED4462A8 = *MEMORY[0x1E695E2E0];
  unk_1ED4462B0 = 0;
  unk_1ED4462B8 = GetFromDesktopServices;
  unk_1ED4462C0 = SetWithDesktopServices;
  unk_1ED4462C8 = &qword_1ED446208;
  unk_1ED4462D0 = 1;
  unk_1ED4462D8 = *MEMORY[0x1E695EB88];
  unk_1ED4462E0 = 0;
  unk_1ED4462E8 = CopyFromFileProvider;
  unk_1ED446300 = 0;
  result = 0.0;
  unk_1ED4462F0 = 0u;
  qword_1ED446308 = *MEMORY[0x1E695EC50];
  unk_1ED446310 = 0;
  qword_1ED446318 = CopyFromFileProvider;
  xmmword_1ED446320 = 0u;
  v1 = *MEMORY[0x1E695EC60];
  qword_1ED446330 = 0;
  unk_1ED446338 = v1;
  qword_1ED446340 = 0;
  unk_1ED446348 = CopyFromFileProvider;
  xmmword_1ED446350 = 0u;
  v2 = *MEMORY[0x1E695E3D8];
  qword_1ED446360 = 0;
  unk_1ED446368 = v2;
  qword_1ED446370 = 0;
  unk_1ED446378 = CopyFromFileProvider;
  xmmword_1ED446380 = 0u;
  v3 = *MEMORY[0x1E695EC48];
  qword_1ED446390 = 0;
  unk_1ED446398 = v3;
  qword_1ED4463A0 = 0;
  unk_1ED4463A8 = CopyFromFileProvider;
  xmmword_1ED4463B0 = 0u;
  v4 = *MEMORY[0x1E695EC40];
  qword_1ED4463C0 = 0;
  unk_1ED4463C8 = v4;
  qword_1ED4463D0 = 0;
  unk_1ED4463D8 = CopyFromFileProvider;
  xmmword_1ED4463E0 = 0u;
  v5 = *MEMORY[0x1E695ECA8];
  qword_1ED4463F0 = 0;
  unk_1ED4463F8 = v5;
  qword_1ED446400 = 0;
  qword_1ED446408 = CopyFromFileProvider;
  qword_1ED446420 = 0;
  xmmword_1ED446410 = 0u;
  qword_1ED446428 = *MEMORY[0x1E695EC80];
  qword_1ED446430 = 0;
  qword_1ED446438 = CopyFromFileProvider;
  xmmword_1ED446440 = 0u;
  qword_1ED446450 = 0;
  qword_1ED446458 = *MEMORY[0x1E695EC88];
  qword_1ED446460 = 0;
  qword_1ED446468 = CopyFromFileProvider;
  qword_1ED446480 = 0;
  xmmword_1ED446470 = 0u;
  qword_1ED446488 = *MEMORY[0x1E695EC38];
  qword_1ED446490 = 0;
  qword_1ED446498 = CopyFromFileProvider;
  qword_1ED4464B0 = 0;
  xmmword_1ED4464A0 = 0u;
  qword_1ED4464B8 = *MEMORY[0x1E695EC30];
  qword_1ED4464C0 = 0;
  qword_1ED4464C8 = CopyFromFileProvider;
  qword_1ED4464E0 = 0;
  xmmword_1ED4464D0 = 0u;
  qword_1ED4464E8 = *MEMORY[0x1E695EC70];
  qword_1ED4464F0 = 0;
  qword_1ED4464F8 = CopyFromFileProvider;
  qword_1ED446510 = 0;
  xmmword_1ED446500 = 0u;
  qword_1ED446518 = *MEMORY[0x1E695ECC8];
  qword_1ED446520 = 0;
  qword_1ED446528 = CopyFromFileProvider;
  qword_1ED446540 = 0;
  xmmword_1ED446530 = 0u;
  qword_1ED446548 = *MEMORY[0x1E695ECD0];
  qword_1ED446550 = 0;
  qword_1ED446558 = CopyFromFileProvider;
  qword_1ED446570 = 0;
  xmmword_1ED446560 = 0u;
  qword_1ED446578 = *MEMORY[0x1E695ECD8];
  qword_1ED446580 = 0;
  qword_1ED446588 = CopyFromFileProvider;
  qword_1ED4465A0 = 0;
  xmmword_1ED446590 = 0u;
  qword_1ED4465A8 = *MEMORY[0x1E695ECB8];
  qword_1ED4465B0 = 0;
  qword_1ED4465B8 = CopyFromFileProvider;
  qword_1ED4465D0 = 0;
  xmmword_1ED4465C0 = 0u;
  qword_1ED4465D8 = *MEMORY[0x1E695ECB0];
  qword_1ED4465E0 = 0;
  qword_1ED4465E8 = CopyFromFileProvider;
  qword_1ED446600 = 0;
  xmmword_1ED4465F0 = 0u;
  qword_1ED446608 = *MEMORY[0x1E695ECC0];
  qword_1ED446610 = 0;
  qword_1ED446618 = CopyFromFileProvider;
  qword_1ED446630 = 0;
  xmmword_1ED446620 = 0u;
  qword_1ED446638 = *MEMORY[0x1E695EC68];
  qword_1ED446640 = 0;
  qword_1ED446648 = CopyFromFileProvider;
  qword_1ED446650 = SetWithFileProvider;
  xmmword_1ED446658 = 0u;
  qword_1ED446668 = *MEMORY[0x1E695EC78];
  qword_1ED446670 = 0;
  qword_1ED446678 = CopyFromFileProvider;
  qword_1ED446690 = 0;
  xmmword_1ED446680 = 0u;
  qword_1ED446698 = *MEMORY[0x1E695ECA0];
  qword_1ED4466A0 = 0;
  qword_1ED4466A8 = CopyFromFileProvider;
  qword_1ED4466C0 = 0;
  xmmword_1ED4466B0 = 0u;
  qword_1ED4466C8 = *MEMORY[0x1E695EC90];
  qword_1ED4466D0 = 0;
  qword_1ED4466D8 = CopyFromFileProvider;
  qword_1ED4466F0 = 0;
  xmmword_1ED4466E0 = 0u;
  qword_1ED4466F8 = *MEMORY[0x1E695EC98];
  qword_1ED446700 = 0;
  qword_1ED446708 = CopyFromFileProvider;
  qword_1ED446720 = 0;
  xmmword_1ED446710 = 0u;
  qword_1ED446728 = *MEMORY[0x1E695EC58];
  qword_1ED446730 = 0;
  qword_1ED446738 = CopyFromFileProvider;
  qword_1ED446750 = 0;
  xmmword_1ED446740 = 0u;
  qword_1ED446758 = *MEMORY[0x1E695E258];
  qword_1ED446760 = 0;
  qword_1ED446768 = GetFromCFURLPromises;
  qword_1ED446770 = SetWithCFURLPromises;
  xmmword_1ED446778 = 0u;
  qword_1ED446788 = *MEMORY[0x1E695E260];
  qword_1ED446790 = 0;
  qword_1ED446798 = GetFromCFURLPromises;
  qword_1ED4467A0 = SetWithCFURLPromises;
  xmmword_1ED4467A8 = 0u;
  qword_1ED4467B8 = *MEMORY[0x1E695EC08];
  qword_1ED4467C0 = 2;
  qword_1ED4467C8 = GetFromQuickLook;
  qword_1ED4467D0 = SetWithQuickLook;
  qword_1ED4467D8 = &unk_1ED446210;
  qword_1ED4467E0 = 1;
  qword_1ED4467E8 = *MEMORY[0x1E695EC10];
  qword_1ED4467F0 = 2;
  qword_1ED4467F8 = GetFromQuickLook;
  qword_1ED446800 = SetWithQuickLook;
  qword_1ED446808 = &unk_1ED446210;
  qword_1ED446810 = 1;
  byte_1ED446202 = 1;
  return result;
}

void _URLAttachSecurityScopeToFileURL_cold_2(uint64_t a1, CFDataRef theData, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 134218243;
  v6 = a1;
  v7 = 2081;
  BytePtr = CFDataGetBytePtr(theData);
  _os_log_debug_impl(&dword_19602C000, a3, OS_LOG_TYPE_DEBUG, "%p: attaching sandbox extension %{private}s", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void _URLAttachSecurityScopeToFileURL_cold_3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_19602C000, a2, OS_LOG_TYPE_DEBUG, "%p: removing sandbox extension", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void _URLAttachSecurityScopeToFileURL_cold_4(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218242;
  v4 = a1;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_19602C000, a2, OS_LOG_TYPE_ERROR, "cannot attach security scope to a URL that is not a file URL: <%p %@>", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

CFGregorianDate CFAbsoluteTimeGetGregorianDate(CFAbsoluteTime at, CFTimeZoneRef tz)
{
  v2 = MEMORY[0x1EEDB65A8](tz, at);
  result.second = v3;
  result.year = v2;
  result.month = BYTE4(v2);
  result.day = BYTE5(v2);
  result.hour = BYTE6(v2);
  result.minute = HIBYTE(v2);
  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x1EEDB7E70](uuid);
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

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63ED0]();
}

{
  return MEMORY[0x1EEE63F00]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

uint64_t CacheDeleteCopyAvailableSpaceForVolume_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_CacheDelete))
  {
    dlopenHelper_CacheDelete(a1);
  }

  return MEMORY[0x1EEDF1520]();
}

uint64_t FPCFCopyAttributeValuesForItem_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_FileProvider))
  {
    dlopenHelper_FileProvider(a1);
  }

  return MEMORY[0x1EEDC0C30]();
}

uint64_t FPCFSetAttributeValueForItem_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_FileProvider))
  {
    dlopenHelper_FileProvider(a1);
  }

  return MEMORY[0x1EEDC0C38]();
}

uint64_t FPCreateBookmarkableStringFromDocumentURLWithOptions_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_FileProvider))
  {
    dlopenHelper_FileProvider(a1);
  }

  return MEMORY[0x1EEDC0C68]();
}

uint64_t FPCreateDocumentURLFromBookmarkableString_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_FileProvider))
  {
    dlopenHelper_FileProvider(a1);
  }

  return MEMORY[0x1EEDC0C78]();
}

uint64_t GSLibraryResolveDocumentId2_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_GenerationalStorage))
  {
    dlopenHelper_GenerationalStorage(a1);
  }

  return MEMORY[0x1EEE0A288]();
}

uint64_t _DS_CFURLGetPropertyForKey_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_DesktopServicesPriv))
  {
    dlopenHelper_DesktopServicesPriv(a1);
  }

  return MEMORY[0x1EEE02258]();
}

uint64_t _DS_CFURLSetPropertyForKey_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_DesktopServicesPriv))
  {
    dlopenHelper_DesktopServicesPriv(a1);
  }

  return MEMORY[0x1EEE02260]();
}

uint64_t _QLCopyResourcePropertyForKey_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_QuickLookThumbnailing))
  {
    dlopenHelper_QuickLookThumbnailing(a1);
  }

  return MEMORY[0x1EEDD6150]();
}

uint64_t _QLSetResourcePropertyForKey_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_QuickLookThumbnailing))
  {
    dlopenHelper_QuickLookThumbnailing(a1);
  }

  return MEMORY[0x1EEDD6158]();
}

double gotLoadHelper_x8__CacheDeleteCopyAvailableSpaceForVolume(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CacheDelete))
  {
    return dlopenHelper_CacheDelete(result);
  }

  return result;
}

double gotLoadHelper_x8__FPCFCopyAttributeValuesForItem(double result)
{
  if (!atomic_load(&dlopenHelperFlag_FileProvider))
  {
    return dlopenHelper_FileProvider(result);
  }

  return result;
}

double gotLoadHelper_x8__FPCFSetAttributeValueForItem(double result)
{
  if (!atomic_load(&dlopenHelperFlag_FileProvider))
  {
    return dlopenHelper_FileProvider(result);
  }

  return result;
}

double gotLoadHelper_x9__FPCreateBookmarkableStringFromDocumentURLWithOptions(double result)
{
  if (!atomic_load(&dlopenHelperFlag_FileProvider))
  {
    return dlopenHelper_FileProvider(result);
  }

  return result;
}

double gotLoadHelper_x8__FPCreateDocumentURLFromBookmarkableString(double result)
{
  if (!atomic_load(&dlopenHelperFlag_FileProvider))
  {
    return dlopenHelper_FileProvider(result);
  }

  return result;
}

double gotLoadHelper_x8__GSLibraryResolveDocumentId2(double result)
{
  if (!atomic_load(&dlopenHelperFlag_GenerationalStorage))
  {
    return dlopenHelper_GenerationalStorage(result);
  }

  return result;
}

double gotLoadHelper_x8___DS_CFURLGetPropertyForKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_DesktopServicesPriv))
  {
    return dlopenHelper_DesktopServicesPriv(result);
  }

  return result;
}

double gotLoadHelper_x8___DS_CFURLSetPropertyForKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_DesktopServicesPriv))
  {
    return dlopenHelper_DesktopServicesPriv(result);
  }

  return result;
}

double gotLoadHelper_x8___QLCopyResourcePropertyForKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_QuickLookThumbnailing))
  {
    return dlopenHelper_QuickLookThumbnailing(result);
  }

  return result;
}

double gotLoadHelper_x8___QLSetResourcePropertyForKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_QuickLookThumbnailing))
  {
    return dlopenHelper_QuickLookThumbnailing(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_FileProvider(double a1)
{
  dlopen("/System/Library/Frameworks/FileProvider.framework/FileProvider", 0);
  atomic_store(1u, &dlopenHelperFlag_FileProvider);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_QuickLookThumbnailing(double a1)
{
  dlopen("/System/Library/Frameworks/QuickLookThumbnailing.framework/QuickLookThumbnailing", 0);
  atomic_store(1u, &dlopenHelperFlag_QuickLookThumbnailing);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_CacheDelete(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/CacheDelete.framework/CacheDelete", 0);
  atomic_store(1u, &dlopenHelperFlag_CacheDelete);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_DesktopServicesPriv(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/DesktopServicesPriv.framework/DesktopServicesPriv", 0);
  atomic_store(1u, &dlopenHelperFlag_DesktopServicesPriv);
  return a1;
}