CFDataRef _CFURLCreateBookmarkData(const __CFAllocator *a1, const __CFURL *a2, unint64_t a3, const __CFArray *a4, const __CFURL *a5, __CFError **a6)
{
  v31 = *MEMORY[0x1E69E9840];
  v12 = _os_activity_create(&dword_19602C000, "CFURLCreateBookmarkData", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  os_activity_scope_enter(v12, &v18);
  v13 = bmarkLog;
  if (os_log_type_enabled(bmarkLog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    v20 = "_CFURLCreateBookmarkData";
    v21 = 2048;
    v22 = a2;
    v23 = 2112;
    v24 = a2;
    v25 = 2048;
    v26 = a3;
    v27 = 2112;
    v28 = a4;
    v29 = 2112;
    v30 = a5;
    _os_log_debug_impl(&dword_19602C000, v13, OS_LOG_TYPE_DEBUG, "%s: <%p: %@> options=%#lx propertiesToInclude=%@ relativeToURL=%@", buf, 0x3Eu);
  }

  v14 = __CFURLCreateBookmarkData(a1, a2, a3, a4, a5, a6);
  v15 = bmarkLog;
  if (os_log_type_enabled(bmarkLog, OS_LOG_TYPE_DEBUG))
  {
    _CFURLCreateBookmarkData_cold_1(v14, v15);
  }

  os_release(v12);
  os_activity_scope_leave(&v18);
  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

CFURLRef createNormalizedFileURL(const __CFURL *a1)
{
  if (_CFURLIsFileURL())
  {
    v2 = CFGetAllocator(a1);
    v32 = 0;
    v3 = _CFURLGetResourcePropertyFlags() ? (v32 >> 1) & 1 : CFURLHasDirectoryPath(a1);
    v4 = CFURLCopyAbsoluteURL(a1);
    if (v4)
    {
      v5 = v4;
      v6 = CFURLCopyPath(v4);
      if (!v6)
      {
        v11 = 0;
LABEL_48:
        CFRelease(v5);
        return v11;
      }

      v7 = v6;
      CleanPath = CreateCleanPath(v2, v6);
      if (!CleanPath)
      {
        v11 = 0;
LABEL_47:
        CFRelease(v7);
        goto LABEL_48;
      }

      v9 = CleanPath;
      if (CFStringCompare(CleanPath, @"/", 0) == kCFCompareEqualTo)
      {
        v12 = CFRetain(@"file:///");
        if (v12)
        {
LABEL_45:
          v11 = CFURLCreateWithString(v2, v12, 0);
          CFRelease(v12);
          goto LABEL_46;
        }

LABEL_15:
        v11 = 0;
LABEL_46:
        CFRelease(v9);
        goto LABEL_47;
      }

      numChars = 0;
      theString = CFStringCreateMutable(v2, 0);
      Length = CFStringGetLength(@"file://");
      if (Length < 1025)
      {
        v13 = Length;
        if (numChars + Length >= 1025)
        {
          CFStringAppendCharacters(theString, chars, 0);
          numChars = 0;
        }

        v33.location = 0;
        v33.length = v13;
        CFStringGetCharacters(@"file://", v33, chars);
        numChars += v13;
      }

      else
      {
        CFStringAppend(theString, @"file://");
      }

      v14 = CFStringGetLength(v9);
      CharacterAtIndex = CFStringGetCharacterAtIndex(v9, v14 - 1);
      v16 = CharacterAtIndex;
      if (v3)
      {
        v17 = CFStringGetLength(v9);
        v18 = numChars;
        if (v17 < 1025)
        {
          v24 = v17;
          if (numChars + v17 >= 1025)
          {
            CFStringAppendCharacters(theString, chars, numChars);
            v18 = 0;
            numChars = 0;
          }

          v25 = &chars[v18];
          v34.location = 0;
          v34.length = v24;
          CFStringGetCharacters(v9, v34, v25);
          v19 = numChars + v24;
          numChars += v24;
        }

        else
        {
          if (numChars)
          {
            CFStringAppendCharacters(theString, chars, numChars);
            numChars = 0;
          }

          CFStringAppend(theString, v9);
          v19 = numChars;
        }

        if (v16 != 47)
        {
          if (v19 >= 1024)
          {
            CFStringAppendCharacters(theString, chars, v19);
            v19 = 0;
            numChars = 0;
          }

          chars[v19] = 47;
          v19 = numChars + 1;
LABEL_41:
          numChars = v19;
        }
      }

      else
      {
        if (CharacterAtIndex == 47)
        {
          v36.length = CFStringGetLength(v9) - 1;
          v36.location = 0;
          v20 = CFStringCreateWithSubstring(v2, v9, v36);
          if (v20)
          {
            v21 = v20;
            CFRelease(v9);
            v9 = v21;
          }
        }

        v22 = CFStringGetLength(v9);
        v23 = numChars;
        if (v22 < 1025)
        {
          v26 = v22;
          if (numChars + v22 >= 1025)
          {
            CFStringAppendCharacters(theString, chars, numChars);
            v23 = 0;
            numChars = 0;
          }

          v27 = &chars[v23];
          v35.location = 0;
          v35.length = v26;
          CFStringGetCharacters(v9, v35, v27);
          v19 = numChars + v26;
          goto LABEL_41;
        }

        if (numChars)
        {
          CFStringAppendCharacters(theString, chars, numChars);
          numChars = 0;
        }

        CFStringAppend(theString, v9);
        v19 = numChars;
      }

      if (v19)
      {
        CFStringAppendCharacters(theString, chars, v19);
      }

      v12 = theString;
      if (theString)
      {
        goto LABEL_45;
      }

      goto LABEL_15;
    }
  }

  return 0;
}

void encodeResourcePropertyIntoBookmark(void **a1, CFURLRef url, CFStringRef key, int a4, CFErrorRef *error)
{
  propertyValueTypeRefPtr = 0;
  v7 = CFURLCopyResourcePropertyForKey(url, key, &propertyValueTypeRefPtr, error);
  v8 = propertyValueTypeRefPtr;
  if (v7 && propertyValueTypeRefPtr)
  {
    BookmarkMutableData::encodeItem(a1, a4, propertyValueTypeRefPtr);
    v8 = propertyValueTypeRefPtr;
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

CFURLRef copyUserHomeFolderURL(const __CFAllocator *a1)
{
  pthread_mutex_lock(&copyUserHomeFolderURL(__CFAllocator const*,unsigned long)::sCopyHomeFolderLock);
  v2 = CFCopyHomeDirectoryURLForUser();
  if (v2)
  {
    v3 = v2;
    v4 = CFURLGetString(v2);
    v5 = CFURLCreateWithString(a1, v4, 0);
    CFRelease(v3);
  }

  else
  {
    v5 = 0;
  }

  pthread_mutex_unlock(&copyUserHomeFolderURL(__CFAllocator const*,unsigned long)::sCopyHomeFolderLock);
  return v5;
}

uint64_t addVolumeInfoForURLToBookmark(const __CFAllocator *a1, BookmarkMutableData *a2, CFTypeRef cf, unint64_t a4, int a5, const __CFArray *a6, __CFError **a7)
{
  propertyValueTypeRefPtr = 0;
  if (!cf)
  {
    return 0;
  }

  v14 = CFGetTypeID(cf);
  if (v14 != CFURLGetTypeID())
  {
    return 0;
  }

  v15 = CFURLCopyResourcePropertyForKey(cf, *MEMORY[0x1E695EE48], &propertyValueTypeRefPtr, a7);
  v16 = propertyValueTypeRefPtr;
  if (!v15)
  {
    v22 = 0;
    if (!propertyValueTypeRefPtr)
    {
      return v22;
    }

    goto LABEL_51;
  }

  if (!propertyValueTypeRefPtr)
  {
    return 0;
  }

  v17 = BookmarkMutableData::tocExists(a2, a5);
  BookmarkMutableData::createTOC(a2, a5);
  if (_CFURLIsFileURL())
  {
    BookmarkMutableData::encodeItem(a2, 8197, propertyValueTypeRefPtr);
  }

  encodeResourcePropertyIntoBookmark(a2, propertyValueTypeRefPtr, *MEMORY[0x1E695ED78], 8208, a7);
  encodeResourcePropertyIntoBookmark(a2, propertyValueTypeRefPtr, *MEMORY[0x1E695EE30], 8210, a7);
  encodeResourcePropertyIntoBookmark(a2, propertyValueTypeRefPtr, *MEMORY[0x1E695EA50], 8211, a7);
  encodeResourcePropertyIntoBookmark(a2, propertyValueTypeRefPtr, *MEMORY[0x1E695EE50], 8209, a7);
  if (a6)
  {
    Count = CFArrayGetCount(a6);
    v36.location = 0;
    v36.length = Count;
    v19 = CFArrayContainsValue(a6, v36, *MEMORY[0x1E695EDF0]) != 0;
    v37.location = 0;
    v37.length = Count;
    if (CFArrayContainsValue(a6, v37, *MEMORY[0x1E695EE18]))
    {
      v20 = ((v19 & 1) << 32) | 0x1000000000;
    }

    else
    {
      v20 = v19 << 32;
    }

    v38.location = 0;
    v38.length = Count;
    if (CFArrayContainsValue(a6, v38, *MEMORY[0x1E695EDD8]))
    {
      v20 |= 0x2000000000000uLL;
    }

    v39.location = 0;
    v39.length = Count;
    if (CFArrayContainsValue(a6, v39, *MEMORY[0x1E695EDE8]))
    {
      v20 |= 0x10000000000uLL;
    }

    v40.location = 0;
    v40.length = Count;
    if (CFArrayContainsValue(a6, v40, *MEMORY[0x1E695ED30]))
    {
      v20 |= 0x20000000000000uLL;
    }

    v41.location = 0;
    v41.length = Count;
    if (CFArrayContainsValue(a6, v41, *MEMORY[0x1E695EE08]))
    {
      v20 |= 0x40000000000000uLL;
    }

    v42.location = 0;
    v42.length = Count;
    if (CFArrayContainsValue(a6, v42, *MEMORY[0x1E695EE28]))
    {
      v20 |= 0x80000000000000uLL;
    }

    v43.location = 0;
    v43.length = Count;
    if (CFArrayContainsValue(a6, v43, *MEMORY[0x1E695EDA8]))
    {
      v20 |= 0x80000000000uLL;
    }

    v44.location = 0;
    v44.length = Count;
    if (CFArrayContainsValue(a6, v44, *MEMORY[0x1E695EDA0]))
    {
      v21 = v20 | 0x100000000000;
    }

    else
    {
      v21 = v20;
    }
  }

  else
  {
    v21 = 0;
  }

  *bytes = 0;
  v32 = 0;
  v33 = 0;
  cfa = 0;
  if (_CFURLGetVolumePropertyFlags())
  {
    v24 = (a4 & 0x400) != 0 ? v21 | 0x1000013EFLL : v21;
    *bytes = cfa;
    v32 = v21 | 0x1000013EFLL;
    v33 = v24;
    BookmarkMutableData::encodeRawData(a2, 8224, bytes, 24);
    if ((bytes[1] & 2) != 0)
    {
      cfa = 0;
      v25 = CFURLCopyResourcePropertyForKey(propertyValueTypeRefPtr, *MEMORY[0x1E695E278], &cfa, 0);
      v26 = cfa;
      if (v25 && cfa)
      {
        v27 = CFGetTypeID(cfa);
        if (v27 == CFURLGetTypeID())
        {
          UnusedDepth = BookmarkMutableData::findUnusedDepth(a2, 4000, 0xFFFFFFFF);
          if (UnusedDepth)
          {
            v29 = UnusedDepth;
            BookmarkMutableData::encodeValue(a2, 8256, UnusedDepth);
            createBookmarkWithURLAtDepth(a1, cfa, a4, 0, 0, a2, v29, 1, a7);
          }
        }

        v26 = cfa;
      }

      if (v26)
      {
        CFRelease(v26);
      }
    }
  }

  v30 = CFURLCopyFileSystemPath(propertyValueTypeRefPtr, kCFURLPOSIXPathStyle);
  if (v30)
  {
    BookmarkMutableData::encodeItem(a2, 8194, v30);
  }

  if (!v17)
  {
    BookmarkMutableData::finalizeTOC(a2, a5);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  v22 = 1;
  v16 = propertyValueTypeRefPtr;
  if (propertyValueTypeRefPtr)
  {
LABEL_51:
    CFRelease(v16);
  }

  return v22;
}

CFStringRef CreateCleanPath(const __CFAllocator *a1, CFStringRef theString)
{
  v25[1] = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(theString);
  if (Length)
  {
    v8 = Length;
    if (Length <= 1024)
    {
      v9 = MEMORY[0x1EEE9AC00](Length, v5, v6, v7);
      v11 = (v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      MEMORY[0x1EEE9AC00](v9, v12, v13, v14);
      v16 = (v25 - ((v15 + 17) & 0xFFFFFFFFFFFFFFF0));
      v27.location = 0;
      v27.length = v8;
      CFStringGetCharacters(theString, v27, v11);
      CleanPathInternal = CreateCleanPathInternal(a1, v8, v11, v16);
LABEL_14:
      v24 = *MEMORY[0x1E69E9840];
      return CleanPathInternal;
    }

    v20 = MEMORY[0x19A8C6D00](a1, 2 * Length, 0x1000040BDFB0063, 0);
    v21 = MEMORY[0x19A8C6D00](a1, 2 * v8 + 2, 0x1000040BDFB0063, 0);
    v22 = v21;
    if (v20 && v21)
    {
      v28.location = 0;
      v28.length = v8;
      CFStringGetCharacters(theString, v28, v20);
      v23 = CreateCleanPathInternal(a1, v8, v20, v22);
    }

    else
    {
      v23 = 0;
      CleanPathInternal = 0;
      if (!v20)
      {
        goto LABEL_12;
      }
    }

    CFAllocatorDeallocate(a1, v20);
    CleanPathInternal = v23;
LABEL_12:
    if (v22)
    {
      CFAllocatorDeallocate(a1, v22);
    }

    goto LABEL_14;
  }

  v18 = *MEMORY[0x1E69E9840];

  return CFStringCreateCopy(a1, theString);
}

CFStringRef CreateCleanPathInternal(CFAllocatorRef alloc, uint64_t a2, unsigned __int16 *a3, UniChar *chars)
{
  if (*a3 == 47)
  {
    *chars = 47;
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 < a2)
  {
    v9 = v8;
    while (1)
    {
      v10 = 0;
      v11 = 0;
      if (a2 <= v9 + 1)
      {
        v12 = v9 + 1;
      }

      else
      {
        v12 = a2;
      }

      v13 = v9;
      while (a3[v13] != 47)
      {
        if (v10)
        {
          v14 = v10;
        }

        else
        {
          v14 = a3[v13];
        }

        if (v11)
        {
          v10 = v14;
        }

        else
        {
          v11 = a3[v13];
        }

        if (v12 == ++v13)
        {
          v13 = v12;
          break;
        }
      }

      v15 = v13 - v9;
      if (v11 == 46)
      {
        if (v13 != v9 && v15 != 1)
        {
          if (v10 != 46 || v15 != 2)
          {
LABEL_30:
            memcpy(&chars[v8], &a3[v9], 2 * v15);
            chars[v15 + v8] = 47;
            v16 = v15 + v8 + 1;
            goto LABEL_31;
          }

          if (v8 >= 2)
          {
            do
            {
              v16 = v8 - 1;
              if (v8 == 1)
              {
                break;
              }

              v17 = chars[v8-- - 2];
            }

            while (v17 != 47);
            goto LABEL_31;
          }
        }
      }

      else if (v13 != v9)
      {
        goto LABEL_30;
      }

      v16 = v8;
LABEL_31:
      v9 = v13 + 1;
      v8 = v16;
      if (v13 + 1 >= a2)
      {
        goto LABEL_34;
      }
    }
  }

  v16 = v8;
LABEL_34:

  return CFStringCreateWithCharacters(alloc, chars, v16 - (v16 > 1));
}

__CFString *_FileCacheCopyDebugDesc(unsigned int *a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = CFGetAllocator(a1);
  _FileCacheLock(a1);
  v3 = *MEMORY[0x1E695E480];
  System = CFLocaleGetSystem();
  v5 = CFDateFormatterCreate(v3, System, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  if (!v5)
  {
    _FileCacheCopyDebugDesc();
  }

  v6 = v5;
  CFDateFormatterSetFormat(v5, @"MM/dd/yyyy HH:mm:ss.SSS");
  Mutable = CFStringCreateMutable(v2, 0);
  if (!Mutable)
  {
    _FileCacheCopyDebugDesc();
  }

  v8 = Mutable;
  v9 = atomic_load(a1 + 4);
  CFStringAppendFormat(Mutable, 0, @"<_FileCacheRef %p>{\n\tvalidSeed = %d\n\tattributes = (\n"), a1, v9;
  v10 = a1[12];
  if (v10)
  {
    v11 = @"NameIsHidden";
    if ((v10 & 0x800) == 0)
    {
      v11 = @"!NameIsHidden";
    }

    v12 = @"FaultLogicalFileIsHidden";
    if ((v10 & 0x1000) == 0)
    {
      v12 = @"!FaultLogicalFileIsHidden";
    }

    v13 = @"IsMountPoint";
    if ((v10 & 0x2000) == 0)
    {
      v13 = @"!IsMountPoint";
    }

    v14 = @"IsTrigger";
    if ((v10 & 0x4000) == 0)
    {
      v14 = @"!IsTrigger";
    }

    v15 = @"HasPathFromID";
    if ((v10 & 0x8000) == 0)
    {
      v15 = @"!HasPathFromID";
    }

    v16 = @"Has64BitObjectIDs";
    if ((v10 & 0x10000) == 0)
    {
      v16 = @"!Has64BitObjectIDs";
    }

    v17 = @"HasExtendedSecurity";
    if ((v10 & 0x20000) == 0)
    {
      v17 = @"!HasExtendedSecurity";
    }

    v18 = @"IsHFSStandard";
    if ((v10 & 0x40000) == 0)
    {
      v18 = @"!IsHFSStandard";
    }

    v19 = @"HasDecmpFSCompression";
    if ((v10 & 0x80000) == 0)
    {
      v19 = @"!HasDecmpFSCompression";
    }

    v20 = @"SupportsHardLinks";
    if ((v10 & 0x100000) == 0)
    {
      v20 = @"!SupportsHardLinks";
    }

    if ((v10 & 0x200000) != 0)
    {
      v21 = @"SupportsHiddenFiles";
    }

    else
    {
      v21 = @"!SupportsHiddenFiles";
    }

    CFStringAppendFormat(v8, 0, @"\t\thasBase\n\t\t\t%@\n\t\t\t%@\n\t\t\t%@\n\t\t\t%@\n\t\t\t%@\n\t\t\t%@\n\t\t\t%@\n\t\t\t%@\n\t\t\t%@\n\t\t\t%@\n\t\t\t%@\n\t\t\t", v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
    CFStringAppendFormat(v8, 0, @"Name = <CFString %p> %@\n\t\t\tAccessMask = 0%.4lo\n\t\t\tFlags = %lu\n\t\t\tDirFileLinkCount = %lu\n\t\t\tGenCount = %lu\n\t\t\tDocumentID = %lu\n\t\t\tOwnerID = %d\n\t\t\tGrpID = %d\n\t\t\t", *(a1 + 7), *(a1 + 7), a1[16], a1[17], a1[18], a1[20], a1[21], a1[22], a1[23]);
    if ((*(a1 + 51) & 8) != 0)
    {
      CFStringAppendFormat(v8, 0, @"extensionLength = %hu\n\t\t\t", *(a1 + 26));
    }

    CFStringAppendFormat(v8, 0, @"DataProtectFlags = %lu\n\t\t\t", a1[24]);
    StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(v3, v6, *(a1 + 13));
    CFStringAppendFormat(v8, 0, @"AccTime = %@\n\t\t\t", StringWithAbsoluteTime);
    if (StringWithAbsoluteTime)
    {
      CFRelease(StringWithAbsoluteTime);
    }

    v23 = CFDateFormatterCreateStringWithAbsoluteTime(v3, v6, *(a1 + 14));
    CFStringAppendFormat(v8, 0, @"ModTime = %@\n\t\t\t", v23);
    if (v23)
    {
      CFRelease(v23);
    }

    v24 = CFDateFormatterCreateStringWithAbsoluteTime(v3, v6, *(a1 + 15));
    CFStringAppendFormat(v8, 0, @"ChgTime = %@\n\t\t\t", v24);
    if (v24)
    {
      CFRelease(v24);
    }

    v25 = *(a1 + 16);
    v26 = -1.0 - *MEMORY[0x1E695E460];
    if (v25 == v26)
    {
      CFStringAppend(v8, @"CrTime  = <n/a>\n\t\t\t");
    }

    else
    {
      v27 = CFDateFormatterCreateStringWithAbsoluteTime(v3, v6, v25);
      CFStringAppendFormat(v8, 0, @"CrTime  = %@\n\t\t\t", v27);
      if (v27)
      {
        CFRelease(v27);
      }
    }

    v28 = *(a1 + 17);
    if (v28 == v26)
    {
      CFStringAppend(v8, @"AddedTime = <n/a>\n\t\t\t");
    }

    else
    {
      v29 = CFDateFormatterCreateStringWithAbsoluteTime(v3, v6, v28);
      CFStringAppendFormat(v8, 0, @"AddedTime = %@\n\t\t\t", v29);
      if (v29)
      {
        CFRelease(v29);
      }
    }

    CFStringAppendFormat(v8, 0, @"IOBlockSize = %lu", a1[36]);
    CFStringAppend(v8, @"\n");
    CFStringAppendFormat(v8, 0, @"\t\thasDevice\n\t\t\tFSID = {0x%.8x 0x%.8x}\n\t\t\tVolumeID = %lu\n", a1[38], a1[39], a1[40]);
    v30 = a1[12];
    if ((v30 & 4) != 0)
    {
      CFStringAppendFormat(v8, 0, @"\t\thasFileIDs\n\t\t\tInodeNumber = %llu\n\t\t\tFileID = %llu\n\t\t\tParentID = %llu\n", *(a1 + 21), *(a1 + 22), *(a1 + 23));
      v30 = a1[12];
      if ((v30 & 8) == 0)
      {
LABEL_47:
        if ((v30 & 0x10) == 0)
        {
          goto LABEL_48;
        }

        goto LABEL_62;
      }
    }

    else if ((v30 & 8) == 0)
    {
      goto LABEL_47;
    }

    v31 = @"userAccessExecuteOK";
    if ((v30 & 0x800000) == 0)
    {
      v31 = @"!userAccessExecuteOK";
    }

    v32 = @"userAccessWriteOK";
    if ((v30 & 0x1000000) == 0)
    {
      v32 = @"!userAccessWriteOK";
    }

    if ((v30 & 0x2000000) != 0)
    {
      v33 = @"userAccessReadOK";
    }

    else
    {
      v33 = @"!userAccessReadOK";
    }

    CFStringAppendFormat(v8, 0, @"\t\thasUserAccess\n\t\t\t%@\n\t\t\t%@\n\t\t\t%@\n", v31, v32, v33);
    v30 = a1[12];
    if ((v30 & 0x10) == 0)
    {
LABEL_48:
      if ((v30 & 0x20) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_66;
    }

LABEL_62:
    if ((v30 & 0x4000000) != 0)
    {
      v34 = @"finderInfoZeros";
    }

    else
    {
      v34 = @"!finderInfoZeros";
    }

    CFStringAppendFormat(v8, 0, @"\t\thasFinderInfo\n\t\t\t%@\n\t\t\tfinderInfo    = %.2x %.2x %.2x %.2x  %.2x %.2x %.2x %.2x  %.2x %.2x %.2x %.2x  %.2x %.2x %.2x %.2x\n\t\t\textFinderInfo = %.2x %.2x %.2x %.2x  %.2x %.2x %.2x %.2x  %.2x %.2x %.2x %.2x  %.2x %.2x %.2x %.2x\n", v34, *(a1 + 208), *(a1 + 209), *(a1 + 210), *(a1 + 211), *(a1 + 212), *(a1 + 213), *(a1 + 214), *(a1 + 215), *(a1 + 216), *(a1 + 217), *(a1 + 218), *(a1 + 219), *(a1 + 220), *(a1 + 221), *(a1 + 222), *(a1 + 223), *(a1 + 224), *(a1 + 225), *(a1 + 226), *(a1 + 227), *(a1 + 228), *(a1 + 229), *(a1 + 230), *(a1 + 231), *(a1 + 232), *(a1 + 233), *(a1 + 234), *(a1 + 235), *(a1 + 236), *(a1 + 237), *(a1 + 238), *(a1 + 239), *(a1 + 215), *(a1 + 214), *(a1 + 213), *(a1 + 212), *(a1 + 211));
    v30 = a1[12];
    if ((v30 & 0x20) == 0)
    {
LABEL_49:
      if ((v30 & 0x40) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_67;
    }

LABEL_66:
    CFStringAppendFormat(v8, 0, @"\t\thasRsrcInfo\n\t\t\trsrcLength = %llu\n\t\t\trsrcAllocSize = %llu\n", *(a1 + 30), *(a1 + 31));
    v30 = a1[12];
    if ((v30 & 0x40) == 0)
    {
LABEL_50:
      if ((v30 & 0x80) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_68;
    }

LABEL_67:
    CFStringAppendFormat(v8, 0, @"\t\thasFileDataLength\n\t\t\tFileDataLength = %llu\n\t\t\tFileDataAllocSize = %llu\n", *(a1 + 32), *(a1 + 33));
    v30 = a1[12];
    if ((v30 & 0x80) == 0)
    {
LABEL_51:
      if ((v30 & 0x100) == 0)
      {
        goto LABEL_70;
      }

LABEL_69:
      CFStringAppendFormat(v8, 0, @"\t\thasFullPath\n\t\t\t<CFString %p> %@\n", *(a1 + 35), *(a1 + 35), v42);
      goto LABEL_70;
    }

LABEL_68:
    CFStringAppendFormat(v8, 0, @"\t\thasFileSecurity\n\t\t\t%@\n", *(a1 + 34));
    if ((a1[12] & 0x100) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

  if ((v10 & 2) != 0)
  {
    CFStringAppendFormat(v8, 0, @"\t\thasDevice\n\t\t\tFSID = {0x%.8x 0x%.8x}\n\t\t\tVolumeID = %lu\n", a1[38], a1[39], a1[40]);
  }

LABEL_70:
  CFStringAppend(v8, @"\t\n"));
  CFStringAppendFormat(v8, 0, @"\tpropertyValues = %@\n\ttemporaryPropertyValues = %@\n\tpermanentPropertyValues = %@\n\tvolumeInfo = %@\n", *(a1 + 36), *(a1 + 37), *(a1 + 38), *(a1 + 39));
  if (*(a1 + 39))
  {
    CFStringAppend(v8, @"\tvolumeInfo = (\n");
    BytePtr = CFDataGetBytePtr(*(a1 + 39));
    Length = CFDataGetLength(*(a1 + 39));
    if (*BytePtr != -1)
    {
      CFStringAppendFormat(v8, 0, @"\t\tvolFileCount = %llu\n\t\tvolDirCount = %llu\n\t\tvolSize = %llu\n\t\tvolSpaceAvail = %llu\n", *BytePtr, *(BytePtr + 1), *(BytePtr + 2), *(BytePtr + 3));
    }

    CFStringAppendFormat(v8, 0, @"\t\tflags = 0x%llx\n", *(BytePtr + 4));
    v37 = CFDateFormatterCreateStringWithAbsoluteTime(v3, v6, *(BytePtr + 5));
    CFStringAppendFormat(v8, 0, @"\t\tcreationDate = %@\n", v37);
    if (v37)
    {
      CFRelease(v37);
    }

    CFStringAppendFormat(v8, 0, @"\t\tmaxFileSize = %llu\n", *(BytePtr + 6));
    if (Length == 72)
    {
      memset(out, 0, 37);
      uuid_unparse_upper(BytePtr + 56, out);
      v38 = CFStringCreateWithCString(v2, out, 0x8000100u);
      CFStringAppendFormat(v8, 0, @"\t\tuuid = %@\n", v38);
      if (v38)
      {
        CFRelease(v38);
      }
    }

    CFStringAppend(v8, @"\t\n"));
  }

  CFStringAppend(v8, @"}");
  CFRelease(v6);
  v39 = a1[8] - 1;
  a1[8] = v39;
  if (!v39)
  {
    *(a1 + 3) = 0;
    os_unfair_lock_unlock(a1 + 9);
  }

  v40 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t _FileCachePreparerLock(const os_unfair_lock *a1)
{
  os_unfair_lock_assert_not_owner(a1 + 10);

  return os_unfair_recursive_lock_lock_with_options();
}

uint64_t _FileCacheGetFinderInfo(uint64_t result)
{
  if (result)
  {
    if ((*(result + 48) & 0x10) != 0)
    {
      result += 208;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t FileCachePropertyValueEqualCallBack(unint64_t cf1, unint64_t a2)
{
  if (!(cf1 | a2))
  {
    return 1;
  }

  result = 0;
  if (cf1)
  {
    if (a2)
    {
      return CFEqual(cf1, a2);
    }
  }

  return result;
}

__CFData *_CFURLCreateBookmarkDataFromFile(CFAllocatorRef allocator, const __CFURL *a2, CFErrorRef *a3)
{
  v36 = 0;
  v37 = 0;
  if (!a2)
  {
    if (!a3)
    {
      return 0;
    }

    goto LABEL_27;
  }

  v6 = *MEMORY[0x1E695E480];
  v7 = CFReadStreamCreateWithFile(*MEMORY[0x1E695E480], a2);
  if (!v7)
  {
    v13 = 0;
LABEL_23:
    Mutable = 0;
    goto LABEL_24;
  }

  v8 = v7;
  if (!CFReadStreamOpen(v7))
  {
    if (a3)
    {
      v14 = CFReadStreamCopyError(v8);
      if (v14)
      {
        v15 = v14;
        Domain = CFErrorGetDomain(v14);
        Code = CFErrorGetCode(v15);
        v13 = _FSURLCreateStandardError(v6, Domain, Code, 1, a2, 0);
        CFRelease(v15);
LABEL_22:
        CFRelease(v8);
        goto LABEL_23;
      }
    }

LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  v11 = CFReadStreamRead(v8, buffer, 56) == 56 && *buffer == 1802465122 && v32 == 1802658157 && v31 == 0;
  if (!v11 || v33 || v35[0] > 0xFFFFFFE || !bookmarkVersionOK(v35[1]))
  {
    CFReadStreamClose(v8);
    goto LABEL_21;
  }

  Mutable = CFDataCreateMutable(allocator, v35[0] + 16);
  v20 = v35[0];
  if (CFDataIncreaseLengthSafe(Mutable, 16))
  {
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    *MutableBytePtr = 1802465122;
    *(MutableBytePtr + 1) = v20 + 16;
    *(MutableBytePtr + 1) = 0x1010030000;
    if (CFDataIncreaseLengthSafe(Mutable, v35[0]))
    {
      v28[0] = v34;
      v22 = CFNumberCreate(v6, kCFNumberSInt32Type, v28);
      CFReadStreamSetProperty(v8, *MEMORY[0x1E695E908], v22);
      if (v35[0])
      {
        v23 = 0;
        while (1)
        {
          v24 = CFDataGetMutableBytePtr(Mutable);
          v25 = CFReadStreamRead(v8, &v24[v23 + 16], v35[0] - v23);
          if (v25 <= 0)
          {
            break;
          }

          v23 += v25;
          if (v23 >= v35[0])
          {
            goto LABEL_63;
          }
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (a3)
        {
          v13 = CFErrorCreate(allocator, *MEMORY[0x1E695E628], 259, 0);
          Mutable = 0;
          goto LABEL_64;
        }

        Mutable = 0;
      }

LABEL_63:
      v13 = 0;
LABEL_64:
      if (v22)
      {
        CFRelease(v22);
      }

      goto LABEL_66;
    }
  }

  if (a3)
  {
    v13 = CFErrorCreate(allocator, *MEMORY[0x1E695E628], 263, 0);
  }

  else
  {
    v13 = 0;
  }

LABEL_66:
  if (Mutable)
  {
    BookmarkData::BookmarkData(v28, allocator, Mutable);
    if (v29)
    {
      Copy = CFDataCreateCopy(allocator, Mutable);
      if (v37 != Copy)
      {
        if (v37)
        {
          CFRelease(v37);
        }

        v37 = Copy;
      }
    }

    else if (a3 && !v13)
    {
      v13 = CFErrorCreate(allocator, *MEMORY[0x1E695E628], 259, 0);
    }

    BookmarkData::~BookmarkData(v28);
    CFRelease(Mutable);
    Mutable = v37;
    v27 = v36 == 0;
  }

  else
  {
    v27 = 1;
  }

  CFReadStreamClose(v8);
  CFRelease(v8);
  if (!Mutable && !v27)
  {
    CFReleaser<__CFData const*>::operator=(&v37, &v36);
    Mutable = v37;
  }

LABEL_24:
  v18 = a3 != 0;
  if (a3 && !Mutable && !v13)
  {
LABEL_27:
    v13 = CFErrorCreate(allocator, *MEMORY[0x1E695E628], 256, 0);
    v18 = 1;
    Mutable = v37;
  }

  if (v18 && !Mutable)
  {
    if (v13)
    {
      Mutable = 0;
      *a3 = v13;
    }

    else
    {
      if (!*a3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          _CFURLCreateBookmarkDataFromFile_cold_1();
        }

        v13 = 0;
        *a3 = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E628], 256, 0);
        Mutable = v37;
        goto LABEL_35;
      }

      Mutable = 0;
    }

    v13 = 0;
  }

LABEL_35:
  v37 = 0;
  if (v36)
  {
    CFRelease(v36);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  return Mutable;
}

BOOL CFDataIncreaseLengthSafe(__CFData *a1, CFIndex a2)
{
  Length = CFDataGetLength(a1);
  CFDataIncreaseLength(a1, a2);
  v5 = CFDataGetLength(a1);
  return v5 >= Length && v5 >= Length + a2 && a2 >= 0;
}

const void **CFReleaser<__CFData const*>::operator=(const void **a1, CFTypeRef *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  if (*a2)
  {
    CFRetain(*a2);
    v5 = *a2;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return a1;
}

uint64_t _CFURLWriteBookmarkDataToFile(__CFData *a1, const __CFString *a2, uint64_t a3, void *a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E695E480];
  BookmarkData::BookmarkData(v35, *MEMORY[0x1E695E480], a1);
  v34 = 0;
  if (!a2 || !v36 || !BookmarkData::getItemAs(v35, 0xD010u, 1, &v34) || (v34 & 0x400) == 0 || v39 >> 28)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v33 = 0;
  if (_CFURLGetResourcePropertyFlags())
  {
    v7 = _FSURLCreateStandardError(v6, *MEMORY[0x1E695E628], 512, 1, a2, 0);
    v8 = bmarkLog;
    if (os_log_type_enabled(bmarkLog, OS_LOG_TYPE_ERROR))
    {
      _CFURLWriteBookmarkDataToFile_cold_1(a2, v7, v8);
    }

    CFURLClearResourcePropertyCache(a2);
    goto LABEL_11;
  }

  v18 = CFWriteStreamCreateWithFile(v6, a2);
  if (v18)
  {
    v19 = v18;
    if (CFWriteStreamOpen(v18))
    {
      *buffer = xmmword_19605E420;
      v41 = 0x3800000038;
      v42 = v39;
      v20 = v36;
      if (v36)
      {
        v20 = *(v36 + 8);
      }

      v43 = v20;
      v44 = 0;
      Current = CFAbsoluteTimeGetCurrent();
      v46 = 0;
      v21 = 0;
      if (CFWriteStreamWrite(v19, buffer, 56) == 56)
      {
        v22 = CFWriteStreamWrite(v19, (v37 + v38), v39);
        v21 = v22 >= 0 && v39 == v22;
      }

      v7 = 0;
      v11 = !v21;
      if (a4)
      {
        if (!v21)
        {
          v7 = CFWriteStreamCopyError(v19);
          if (!v7)
          {
            v7 = CFErrorCreate(v6, *MEMORY[0x1E695E628], 640, 0);
          }
        }
      }
    }

    else
    {
      if (a4)
      {
        v7 = CFWriteStreamCopyError(v19);
      }

      else
      {
        v7 = 0;
      }

      LOBYTE(v21) = 1;
      v11 = 1;
    }

    CFWriteStreamClose(v19);
    CFRelease(v19);
  }

  else
  {
    v7 = 0;
    v11 = 1;
    LOBYTE(v21) = 1;
  }

  if (!CFURLGetFileSystemRepresentation(a2, 1u, buffer, 1024))
  {
    buffer[0] = 0;
  }

  if (!v11)
  {
    Mutable = CFDataCreateMutable(v6, 32);
    if (Mutable)
    {
      v25 = Mutable;
      *bytes = 0;
      *v29 = 0;
      v30 = 0;
      v32 = 0x8000;
      CFDataAppendBytes(Mutable, bytes, 16);
      CFDataAppendBytes(v25, v29, 16);
      CFURLSetResourcePropertyForKey(a2, *MEMORY[0x1E695E2C0], v25, 0);
      CFRelease(v25);
    }
  }

  if (!v21 && buffer[0])
  {
    removefile(buffer, 0, 0);
  }

  CFURLClearResourcePropertyCache(a2);
  if (v11)
  {
LABEL_11:
    v9 = bmarkLog;
    if (os_log_type_enabled(bmarkLog, OS_LOG_TYPE_ERROR))
    {
      _CFURLWriteBookmarkDataToFile_cold_2(a2, v7, v9);
    }

    v10 = 0;
    LOBYTE(v11) = 1;
    if (v7)
    {
      goto LABEL_14;
    }

    goto LABEL_55;
  }

  v10 = 1;
  if (v7)
  {
LABEL_14:
    Domain = CFErrorGetDomain(v7);
    v13 = *MEMORY[0x1E695E628];
    if (!CFEqual(Domain, *MEMORY[0x1E695E628]))
    {
      v14 = CFErrorGetDomain(v7);
      Code = CFErrorGetCode(v7);
      v16 = _FSURLCreateStandardError(v6, v14, Code, 1, a2, 0);
      CFRelease(v7);
      v7 = v16;
    }

    if (a4)
    {
      v17 = v11;
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      if (v7)
      {
        *a4 = CFRetain(v7);
LABEL_23:
        CFRelease(v7);
        goto LABEL_60;
      }

LABEL_59:
      *a4 = CFErrorCreate(v6, v13, 512, 0);
      goto LABEL_60;
    }

    if (v7)
    {
      goto LABEL_23;
    }

    goto LABEL_60;
  }

LABEL_55:
  v26 = !v11;
  if (!a4)
  {
    v26 = 1;
  }

  if ((v26 & 1) == 0)
  {
    v13 = *MEMORY[0x1E695E628];
    goto LABEL_59;
  }

LABEL_60:
  BookmarkData::~BookmarkData(v35);
  v27 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t CFBookmarkPropertyKeyToKnownType(CFTypeRef cf2)
{
  if (BookmarkResourcePropertyKeyToInfoStructInit(void)::onceToken != -1)
  {
    CFBookmarkPropertyKeyToKnownType();
  }

  if (GetBookmarkResourcePropertyToInfo(cf2, &v3))
  {
    return DWORD2(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t GetBookmarkResourcePropertyToInfo(CFTypeRef cf2, _OWORD *a2)
{
  if (BookmarkResourcePropertyKeyToInfoStructInit(void)::onceToken != -1)
  {
    CFBookmarkPropertyKeyToKnownType();
  }

  if (sResourcePropertiesInfoCount != 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  while (1)
  {
    result = CFEqual(*(sResourcePropertiesInfoPtr + v4), cf2);
    if (result)
    {
      break;
    }

    if (sResourcePropertiesInfoCount == 1)
    {
      v4 += 32;
      if (v5++ <= 0x45)
      {
        continue;
      }
    }

    return result;
  }

  if (a2)
  {
    v8 = *(sResourcePropertiesInfoPtr + v4 + 16);
    *a2 = *(sResourcePropertiesInfoPtr + v4);
    a2[1] = v8;
  }

  return 1;
}

uint64_t CFBookmarkPropertyEnumToStringKey(int a1)
{
  if (BookmarkResourcePropertyKeyToInfoStructInit(void)::onceToken != -1)
  {
    CFBookmarkPropertyKeyToKnownType();
  }

  if (sResourcePropertiesInfoCount != 1)
  {
    return 0;
  }

  v2 = (sResourcePropertiesInfoPtr + 8);
  v3 = -1;
  while (*v2 != a1)
  {
    ++v3;
    v2 += 8;
    if (v3 > 0x45)
    {
      return 0;
    }
  }

  return *(v2 - 1);
}

unsigned int *countPathComponents(BookmarkData *a1, int a2)
{
  result = BookmarkData::findItemInTOC(a1, 0x1004u, a2);
  if (result)
  {
    result = BookmarkData::getDataItemForTOCItem(a1, result);
    if (result)
    {
      if (result[1] == 1537)
      {
        return (*result >> 2);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

CFNumberRef copyIndexedPathComponent(BookmarkData *a1, int a2, unsigned int a3)
{
  ItemInTOC = BookmarkData::findItemInTOC(a1, 0x1004u, a2);
  if (!ItemInTOC)
  {
    return 0;
  }

  DataItemForTOCItem = BookmarkData::getDataItemForTOCItem(a1, ItemInTOC);
  if (!DataItemForTOCItem)
  {
    return 0;
  }

  if (DataItemForTOCItem[1] != 1537)
  {
    return 0;
  }

  if (a3 >= *DataItemForTOCItem >> 2)
  {
    return 0;
  }

  DataItemAtOffset = BookmarkData::getDataItemAtOffset(a1, DataItemForTOCItem[a3 + 2]);
  if (!DataItemAtOffset)
  {
    return 0;
  }

  v8 = DataItemAtOffset;
  TypeID = CFStringGetTypeID();

  return BookmarkData::copyItem(a1, v8, TypeID);
}

__CFString *copyPathComponentsAsString(BookmarkData *a1, int a2, int a3, char a4)
{
  v8 = countPathComponents(a1, a2);
  if (v8)
  {
    v9 = v8;
    v10 = *MEMORY[0x1E695E480];
    numChars = 0;
    theString = CFStringCreateMutable(v10, 0);
    v11 = v9 & (a3 >> 31);
    if (v11 + a3 >= v9)
    {
      v13 = 1;
    }

    else
    {
      v12 = copyIndexedPathComponent(a1, a2, v11 + a3);
      v13 = v12 == 0;
      if (v12)
      {
        v14 = v12;
        v15 = a4 ^ 1;
        if (v11 + a3)
        {
          v15 = 1;
        }

        v16 = v11 + a3 + 1;
        do
        {
          if ((v15 & 1) == 0)
          {
            v17 = numChars;
            if (numChars >= 1024)
            {
              CFStringAppendCharacters(theString, chars, numChars);
              v17 = 0;
              numChars = 0;
            }

            chars[v17] = 47;
            ++numChars;
          }

          Length = CFStringGetLength(v14);
          v19 = numChars;
          if (Length < 1025)
          {
            v20 = Length;
            if (numChars + Length >= 1025)
            {
              CFStringAppendCharacters(theString, chars, numChars);
              v19 = 0;
              numChars = 0;
            }

            v21 = &chars[v19];
            v29.location = 0;
            v29.length = v20;
            CFStringGetCharacters(v14, v29, v21);
            numChars += v20;
          }

          else
          {
            if (numChars)
            {
              CFStringAppendCharacters(theString, chars, numChars);
              numChars = 0;
            }

            CFStringAppend(theString, v14);
          }

          CFRelease(v14);
          if (v16 >= v9)
          {
            break;
          }

          v14 = copyIndexedPathComponent(a1, a2, v16);
          v15 = 0;
          ++v16;
        }

        while (v14);
      }
    }

    if (BookmarkData::getURLResourceProperties(a1, a2, v25) && (v25[8] & 2) != 0 && (v25[0] & 2) != 0)
    {
      v24 = numChars;
      if (numChars >= 1024)
      {
        CFStringAppendCharacters(theString, chars, numChars);
        v24 = 0;
        numChars = 0;
      }

      chars[v24] = 47;
      v23 = numChars + 1;
      numChars = v23;
      if (!v23)
      {
        return theString;
      }
    }

    else
    {
      if (v13)
      {
        result = theString;
        if (theString)
        {
          CFRelease(theString);
          return 0;
        }

        return result;
      }

      v23 = numChars;
      if (!numChars)
      {
        return theString;
      }
    }

    CFStringAppendCharacters(theString, chars, v23);
    return theString;
  }

  if (a3)
  {
    return &stru_1F0A862C0;
  }

  else
  {
    return @"/";
  }
}

CFArrayRef copyPathComponentsAsArray(BookmarkData *a1, int a2, unsigned int a3)
{
  v6 = countPathComponents(a1, a2);
  Mutable = CFArrayCreateMutable(*a1, 0, MEMORY[0x1E695E9C0]);
  v8 = Mutable;
  if (Mutable)
  {
    v9 = v6 > a3;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    while (1)
    {
      v11 = copyIndexedPathComponent(a1, a2, a3);
      if (!v11)
      {
        break;
      }

      v12 = v11;
      CFArrayAppendValue(v8, v11);
      CFRelease(v12);
      if (++a3 >= v6)
      {
        goto LABEL_9;
      }
    }

    Copy = 0;
    goto LABEL_11;
  }

  if (Mutable)
  {
LABEL_9:
    Copy = CFArrayCreateCopy(*a1, v8);
LABEL_11:
    CFRelease(v8);
    return Copy;
  }

  return 0;
}

const __CFArray *copyVolumePathComponentsAsArray(BookmarkData *a1, unsigned int a2)
{
  v10 = 0;
  if (!BookmarkData::getItemAs(a1, 0x2030u, a2, &v10) || !v10 || (v9 = @"/", (ArrayOfPathComponentsFromString = CFArrayCreate(*MEMORY[0x1E695E480], &v9, 1, MEMORY[0x1E695E9C0])) == 0))
  {
    TypeID = CFStringGetTypeID();
    v6 = BookmarkData::copyItem(a1, 0x2002u, a2, TypeID);
    ArrayOfPathComponentsFromString = createArrayOfPathComponentsFromString(*a1, v6, 0);
    if (v6)
    {
      CFRelease(v6);
    }

    if (!ArrayOfPathComponentsFromString)
    {
      v7 = CFArrayGetTypeID();
      return BookmarkData::copyItem(a1, 0x2004u, a2, v7);
    }
  }

  return ArrayOfPathComponentsFromString;
}

CFDictionaryRef _CFURLCreateResourcePropertiesForKeysFromBookmarkData(const __CFAllocator *a1, CFTypeRef cf, const void *a3)
{
  if (!cf)
  {
    return 0;
  }

  v6 = CFGetTypeID(cf);
  TypeID = CFArrayGetTypeID();
  Copy = 0;
  if (!a3 || v6 != TypeID)
  {
    return Copy;
  }

  v9 = CFGetTypeID(a3);
  if (v9 != CFDataGetTypeID())
  {
    return 0;
  }

  BookmarkData::BookmarkData(v20, a1, a3);
  if (v21)
  {
    Count = CFArrayGetCount(cf);
    Mutable = CFDictionaryCreateMutable(a1, Count, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v12 = CFArrayGetCount(cf);
    if (v12 >= 1)
    {
      v13 = v12 + 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(cf, v13 - 2);
        if (ValueAtIndex)
        {
          v15 = ValueAtIndex;
          v16 = CFGetTypeID(ValueAtIndex);
          if (v16 == CFStringGetTypeID() && !CFDictionaryContainsKey(Mutable, v15))
          {
            v17 = BookmarkCopyPropertyFromBookmarkData(v20, v15, 0);
            if (v17)
            {
              v18 = v17;
              CFDictionaryAddValue(Mutable, v15, v17);
              CFRelease(v18);
            }
          }
        }

        --v13;
      }

      while (v13 > 1);
    }

    Copy = CFDictionaryCreateCopy(a1, Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    Copy = 0;
  }

  BookmarkData::~BookmarkData(v20);
  return Copy;
}

CFNumberRef BookmarkCopyPropertyFromBookmarkData(BookmarkData *a1, const __CFString *cf2, uint64_t a3)
{
  if (!cf2)
  {
    return 0;
  }

  if (!GetBookmarkResourcePropertyToInfo(cf2, &v10))
  {
    ItemInTOC = BookmarkData::findItemInTOC(a1, cf2, 1);
    if (!ItemInTOC)
    {
      return 0;
    }

LABEL_8:
    v6 = BookmarkData::copyItem(a1, ItemInTOC, 0);
    goto LABEL_9;
  }

  if (!v11)
  {
    ItemInTOC = BookmarkData::findItemInTOC(a1, DWORD2(v10), 1);
    if (!ItemInTOC)
    {
      return 0;
    }

    goto LABEL_8;
  }

  v6 = v11(a1, 1, v12);
LABEL_9:
  v8 = v6;
  if (a3 && v6 && CFGetTypeID(v6) != a3)
  {
    CFRelease(v8);
    return 0;
  }

  return v8;
}

CFNumberRef _CFURLCreateResourcePropertyForKeyFromBookmarkData(const __CFAllocator *a1, const __CFString *a2, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  v6 = CFGetTypeID(cf);
  TypeID = CFDataGetTypeID();
  v8 = 0;
  if (a2 && v6 == TypeID)
  {
    v9 = CFGetTypeID(a2);
    if (v9 == CFStringGetTypeID())
    {
      BookmarkData::BookmarkData(v11, a1, cf);
      v8 = BookmarkCopyPropertyFromBookmarkData(v11, a2, 0);
      BookmarkData::~BookmarkData(v11);
      return v8;
    }

    return 0;
  }

  return v8;
}

__CFString *_CFURLBookmarkDataCopyDescription(const __CFData *a1)
{
  v120 = *MEMORY[0x1E69E9840];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (a1)
  {
    v3 = CFGetTypeID(a1);
    if (v3 == CFDataGetTypeID())
    {
      v4 = CFGetAllocator(a1);
      BookmarkData::BookmarkData(v108, v4, a1);
      v5 = v109;
      BytePtr = CFDataGetBytePtr(a1);
      Length = CFDataGetLength(a1);
      CFStringAppendFormat(Mutable, 0, @"Bookmark: dataRef=%p len=%d\n", BytePtr, Length);
      if (v5)
      {
        CFStringAppendFormat(Mutable, 0, @"  signature = 0x%x\n", *v5);
        CFStringAppendFormat(Mutable, 0, @"  length = 0x%x\n", v5[1]);
        CFStringAppendFormat(Mutable, 0, @"  version = 0x%x\n", v5[2]);
        CFStringAppendFormat(Mutable, 0, @"  bookmarkDataSectionOffset = 0x%x\n", v111);
        v8 = v110;
        v106 = v5;
        if (v110)
        {
          v8 = *(v110 + v111);
        }

        CFStringAppendFormat(Mutable, 0, @"  bookmarkDataSectionFirstTOCOffset = 0x%x\n", v8);
        v105 = CFDataGetBytePtr(a1);
        if (CFDataGetLength(a1) >= 1)
        {
          v9 = 0;
          v10 = MEMORY[0x1E69E9830];
          v11 = v105;
          do
          {
            v12 = a1;
            CFStringAppendFormat(Mutable, 0, @" 0x%5.5lx:", v9);
            for (i = 0; i != 16; ++i)
            {
              if (v9 + i >= CFDataGetLength(v12))
              {
                CFStringAppendFormat(Mutable, 0, @"  ", usedBufLen);
              }

              else
              {
                CFStringAppendFormat(Mutable, 0, @"%2.2x", v105[v9 + i]);
              }

              if ((~i & 3) == 0)
              {
                CFStringAppend(Mutable, @" ");
              }
            }

            CFStringAppendFormat(Mutable, 0, @"  | ");
            for (j = 0; j != 16; ++j)
            {
              v15 = v11[j];
              if (v15 < 0)
              {
                if (__maskrune(v11[j], 0x40000uLL))
                {
LABEL_18:
                  v16 = v11[j];
                  goto LABEL_21;
                }
              }

              else if ((*(v10 + 4 * v15 + 60) & 0x40000) != 0)
              {
                goto LABEL_18;
              }

              v16 = 46;
LABEL_21:
              CFStringAppendFormat(Mutable, 0, @"%c", v16);
              if ((~j & 3) == 0)
              {
                CFStringAppendFormat(Mutable, 0, @" ");
              }
            }

            CFStringAppendFormat(Mutable, 0, @" \n");
            v9 += 16;
            a1 = v12;
            v11 += 16;
          }

          while (v9 < CFDataGetLength(v12));
        }

        v17 = BookmarkData::bookmarkFlags(v108);
        CFStringAppendFormat(Mutable, 0, @" flags = %#x\n", v17);
        FirstTOC = BookmarkData::getFirstTOC(v108, 1);
        v19 = v5;
        if (FirstTOC)
        {
          TOCAtOffset = FirstTOC;
          while (1)
          {
            v21 = CFDataGetBytePtr(a1);
            CFStringAppendFormat(Mutable, 0, @" toc @ offset:0x%x(0x%p) level=%d count=%d next=0x%d\n", TOCAtOffset - v21, TOCAtOffset, TOCAtOffset[2], TOCAtOffset[4], TOCAtOffset[3]);
            if (TOCAtOffset[4])
            {
              break;
            }

LABEL_367:
            TOCAtOffset = BookmarkData::getTOCAtOffset(v108, TOCAtOffset[3]);
            if (!TOCAtOffset)
            {
              goto LABEL_368;
            }
          }

          v22 = 0;
          v23 = TOCAtOffset + 5;
          while (1)
          {
            v118 = 0u;
            v119 = 0u;
            v116 = 0u;
            v117 = 0u;
            v114 = 0u;
            v115 = 0u;
            *buffer = 0u;
            v113 = 0u;
            v24 = *v23;
            if (*v23 <= 8223)
            {
              if (v24 > 4178)
              {
                if (v24 > 8193)
                {
                  if (v24 <= 8207)
                  {
                    switch(v24)
                    {
                      case 8194:
                        v25 = "volPath:";
                        goto LABEL_170;
                      case 8196:
                        v25 = "volPathComponents:";
                        goto LABEL_170;
                      case 8197:
                        v25 = "volURL:";
                        goto LABEL_170;
                    }
                  }

                  else
                  {
                    if (v24 <= 8209)
                    {
                      if (v24 == 8208)
                      {
                        v25 = "volName:";
                      }

                      else
                      {
                        v25 = "volUUID:";
                      }

                      goto LABEL_170;
                    }

                    if (v24 == 8210)
                    {
                      v25 = "volCapacity:";
                      goto LABEL_170;
                    }

                    if (v24 == 8211)
                    {
                      v25 = "volCreationDate:";
                      goto LABEL_170;
                    }
                  }
                }

                else
                {
                  if (v24 <= 4181)
                  {
                    if (v24 == 4179)
                    {
                      v25 = "relativeDirsDownMinusOne:";
                    }

                    else if (v24 == 4180)
                    {
                      v25 = "relativeDirsUp:";
                    }

                    else
                    {
                      v25 = "relativeDirsDown:";
                    }

                    goto LABEL_170;
                  }

                  if (v24 > 4353)
                  {
                    if (v24 == 4354)
                    {
                      v25 = "queryString:";
                      goto LABEL_170;
                    }

                    if (v24 == 0x2000)
                    {
                      v25 = "volInfoDepths:";
                      goto LABEL_170;
                    }
                  }

                  else
                  {
                    if (v24 == 4182)
                    {
                      v25 = "createdWithRelativeURL";
                      goto LABEL_170;
                    }

                    if (v24 == 4353)
                    {
                      v25 = "fragmentString:";
                      goto LABEL_170;
                    }
                  }
                }
              }

              else if (v24 > 4127)
              {
                if (v24 <= 4160)
                {
                  switch(v24)
                  {
                    case 4128:
                      v25 = "fileName:";
                      goto LABEL_170;
                    case 4144:
                      v25 = "fileID:";
                      goto LABEL_170;
                    case 4160:
                      v25 = "creationDate:";
                      goto LABEL_170;
                  }
                }

                else
                {
                  if (v24 <= 4162)
                  {
                    if (v24 == 4161)
                    {
                      v25 = "accessDate:";
                    }

                    else
                    {
                      v25 = "modificationDate:";
                    }

                    goto LABEL_170;
                  }

                  if (v24 == 4163)
                  {
                    v25 = "attrModificationDate:";
                    goto LABEL_170;
                  }

                  if (v24 == 4177)
                  {
                    v25 = "relativeDirsUpMinusOne:";
                    goto LABEL_170;
                  }
                }
              }

              else if (v24 <= 4100)
              {
                if (v24 == -2)
                {
                  v25 = "toc:";
                  goto LABEL_170;
                }

                if (v24 == 4099)
                {
                  v25 = "urlString:";
                  goto LABEL_170;
                }

                v25 = "pathComponents:";
                if (v24 == 4100)
                {
                  goto LABEL_170;
                }
              }

              else if (v24 > 4103)
              {
                if (v24 == 4104)
                {
                  v25 = "tagStyle:";
                  goto LABEL_170;
                }

                if (v24 == 4112)
                {
                  v25 = "resourceProps:";
                  goto LABEL_170;
                }
              }

              else
              {
                if (v24 == 4101)
                {
                  v25 = "fileIDs:";
                  goto LABEL_170;
                }

                if (v24 == 4102)
                {
                  v25 = "pathComponentProps:";
                  goto LABEL_170;
                }
              }
            }

            else if (v24 <= 61461)
            {
              if (v24 > 49152)
              {
                if (v24 <= 53248)
                {
                  switch(v24)
                  {
                    case 49153:
                      v25 = "volHomeDirRelativePathComponentCount:";
                      goto LABEL_170;
                    case 49169:
                      v25 = "userName:";
                      goto LABEL_170;
                    case 49170:
                      v25 = "userUID:";
                      goto LABEL_170;
                  }
                }

                else if (v24 > 57345)
                {
                  if (v24 == 57346)
                  {
                    v25 = "haseBaseURL:";
                    goto LABEL_170;
                  }

                  if (v24 == 57347)
                  {
                    v25 = "baseURLComponentCount:";
                    goto LABEL_170;
                  }
                }

                else
                {
                  if (v24 == 53249)
                  {
                    v25 = "wasFileIDFormat:";
                    goto LABEL_170;
                  }

                  if (v24 == 53264)
                  {
                    v25 = "creationOptions:";
                    goto LABEL_170;
                  }
                }
              }

              else if (v24 <= 8255)
              {
                switch(v24)
                {
                  case 8224:
                    v25 = "volProps:";
                    goto LABEL_170;
                  case 8240:
                    v25 = "volWasBoot:";
                    goto LABEL_170;
                  case 8242:
                    v25 = "volIDiskUserName:";
                    goto LABEL_170;
                }
              }

              else if (v24 > 8287)
              {
                if (v24 == 8288)
                {
                  v25 = "volAutomountPath:";
                  goto LABEL_170;
                }

                if (v24 == 8304)
                {
                  v25 = "bookmarkFileProviderString:";
                  goto LABEL_170;
                }
              }

              else
              {
                if (v24 == 8256)
                {
                  v25 = "diskImageDepth:";
                  goto LABEL_170;
                }

                if (v24 == 8272)
                {
                  v25 = "volMountURL:";
                  goto LABEL_170;
                }
              }
            }

            else if (v24 <= 61568)
            {
              if (v24 <= 61472)
              {
                switch(v24)
                {
                  case 61462:
                    v25 = "displayNamesDict:";
                    goto LABEL_170;
                  case 61463:
                    v25 = "displayName:";
                    goto LABEL_170;
                  case 61472:
                    v25 = "effectiveIconData:";
                    goto LABEL_170;
                }
              }

              else if (v24 > 61487)
              {
                if (v24 == 61488)
                {
                  v25 = "bookmarkCreationTime:";
                  goto LABEL_170;
                }

                if (v24 == 61568)
                {
                  v25 = "sandboxRWExtension:";
                  goto LABEL_170;
                }
              }

              else
              {
                if (v24 == 61473)
                {
                  v25 = "effectiveFlattenedIconRef:";
                  goto LABEL_170;
                }

                if (v24 == 61474)
                {
                  v25 = "typeBindingData:";
                  goto LABEL_170;
                }
              }
            }

            else if (v24 > 983060)
            {
              if (v24 > 1048577)
              {
                if (v24 == 1048578)
                {
                  v25 = "testKey2";
                  goto LABEL_170;
                }

                if (v24 == 251658516)
                {
                  v25 = "version:";
                  goto LABEL_170;
                }
              }

              else
              {
                if (v24 == 983061)
                {
                  v25 = "shortVersion:";
                  goto LABEL_170;
                }

                if (v24 == 1048561)
                {
                  v25 = "testKey1";
                  goto LABEL_170;
                }
              }
            }

            else
            {
              if (v24 <= 61570)
              {
                if (v24 == 61569)
                {
                  v25 = "sandboxROExtension:";
                }

                else
                {
                  v25 = "securityScopeCookie:";
                }

                goto LABEL_170;
              }

              if (v24 == 61571)
              {
                v25 = "teamIdentifier:";
                goto LABEL_170;
              }

              if (v24 == 65024)
              {
                v25 = "aliasData:";
                goto LABEL_170;
              }
            }

            if (v24 < 0)
            {
              TypeID = CFStringGetTypeID();
              v26 = BookmarkData::copyDataItemAtOffset(v108, v24 & 0x7FFFFFFF, TypeID);
            }

            else
            {
              v26 = CFBookmarkPropertyEnumToStringKey(*v23);
            }

            v28 = v26;
            v25 = buffer;
            if (v26)
            {
              v107 = 0;
              v121.length = CFStringGetLength(v26);
              v121.location = 0;
              Bytes = CFStringGetBytes(v28, v121, 0x8000100u, 0, 0, buffer, 128, &v107);
              v30 = v107;
              if (!Bytes)
              {
                v30 = 0;
              }

              buffer[v30] = 0;
            }

LABEL_170:
            CFStringAppendFormat(Mutable, 0, @" %3d itemType=0x%x flags=0x%x dataOffset=0x%x %s"), v22, *v23, v23[2], v19[3] + v23[1], v25);
            v32 = *v23;
            v31 = v23[1];
            if (*v23 != 53264)
            {
              if (v32 == 8224)
              {
                DataItemAtOffset = BookmarkData::getDataItemAtOffset(v108, v31);
                if (!DataItemAtOffset || *DataItemAtOffset < 0x18)
                {
                  goto LABEL_366;
                }

                v38 = *(DataItemAtOffset + 1);
                v39 = *(DataItemAtOffset + 2);
                v40 = *(DataItemAtOffset + 3);
                CFStringAppendFormat(Mutable, 0, @"Props:[");
                if (v39)
                {
                  v45 = "local";
                  if ((v38 & 1) == 0)
                  {
                    v45 = "!local";
                  }

                  v46 = "**";
                  if ((v40 & 1) == 0)
                  {
                    v46 = "";
                  }

                  CFStringAppendFormat(Mutable, 0, @"%s%s ", v45, v46);
                  if ((v39 & 2) != 0)
                  {
                    goto LABEL_222;
                  }

LABEL_190:
                  if ((v39 & 4) == 0)
                  {
                    goto LABEL_191;
                  }

LABEL_227:
                  v49 = "browse";
                  if ((v38 & 4) == 0)
                  {
                    v49 = "!browse";
                  }

                  v50 = "**";
                  if ((v40 & 4) == 0)
                  {
                    v50 = "";
                  }

                  CFStringAppendFormat(Mutable, 0, @"%s%s ", v49, v50);
                  if ((v39 & 8) != 0)
                  {
                    goto LABEL_232;
                  }

LABEL_192:
                  if ((v39 & 0x20) == 0)
                  {
                    goto LABEL_193;
                  }

LABEL_237:
                  v53 = "eject";
                  if ((v38 & 0x20) == 0)
                  {
                    v53 = "!eject";
                  }

                  v54 = "**";
                  if ((v40 & 0x20) == 0)
                  {
                    v54 = "";
                  }

                  CFStringAppendFormat(Mutable, 0, @"%s%s ", v53, v54);
                  if ((v39 & 0x40) != 0)
                  {
                    goto LABEL_242;
                  }

LABEL_194:
                  if ((v39 & 0x80) == 0)
                  {
                    goto LABEL_195;
                  }

LABEL_247:
                  v57 = "internal";
                  if ((v38 & 0x80) == 0)
                  {
                    v57 = "!internal";
                  }

                  v58 = "**";
                  if ((v40 & 0x80) == 0)
                  {
                    v58 = "";
                  }

                  CFStringAppendFormat(Mutable, 0, @"%s%s ", v57, v58);
                  if ((v39 & 0x100) != 0)
                  {
                    goto LABEL_252;
                  }

LABEL_196:
                  if ((v39 & 0x200) == 0)
                  {
                    goto LABEL_197;
                  }

LABEL_257:
                  v61 = "diskimage";
                  if ((v38 & 0x200) == 0)
                  {
                    v61 = "!diskimage";
                  }

                  v62 = "**";
                  if ((v40 & 0x200) == 0)
                  {
                    v62 = "";
                  }

                  CFStringAppendFormat(Mutable, 0, @"%s%s ", v61, v62);
                  if ((v39 & 0x1000) != 0)
                  {
                    goto LABEL_262;
                  }

LABEL_198:
                  if ((v39 & 0x100000000) == 0)
                  {
                    goto LABEL_199;
                  }

LABEL_267:
                  v65 = "file-ids";
                  if ((v38 & 0x100000000) == 0)
                  {
                    v65 = "!file-ids";
                  }

                  v66 = "**";
                  if ((v40 & 0x100000000) == 0)
                  {
                    v66 = "";
                  }

                  CFStringAppendFormat(Mutable, 0, @"%s%s ", v65, v66);
                  if ((v39 & 0x1000000000) != 0)
                  {
                    goto LABEL_272;
                  }

LABEL_200:
                  if ((v39 & 0x2000000000000) == 0)
                  {
                    goto LABEL_201;
                  }

LABEL_277:
                  v69 = "hard-links";
                  if ((v38 & 0x2000000000000) == 0)
                  {
                    v69 = "!hard-links";
                  }

                  v70 = "**";
                  if ((v40 & 0x2000000000000) == 0)
                  {
                    v70 = "";
                  }

                  CFStringAppendFormat(Mutable, 0, @"%s%s ", v69, v70);
                  if ((v39 & 0x10000000000) != 0)
                  {
                    goto LABEL_282;
                  }

LABEL_202:
                  if ((v39 & 0x20000000000000) == 0)
                  {
                    goto LABEL_203;
                  }

LABEL_287:
                  v73 = "isJournaling";
                  if ((v38 & 0x20000000000000) == 0)
                  {
                    v73 = "!isJournaling";
                  }

                  v74 = "**";
                  if ((v40 & 0x20000000000000) == 0)
                  {
                    v74 = "";
                  }

                  CFStringAppendFormat(Mutable, 0, @"%s%s ", v73, v74);
                  if ((v39 & 0x40000000000000) != 0)
                  {
                    goto LABEL_292;
                  }

LABEL_204:
                  if ((v39 & 0x80000000000000) == 0)
                  {
                    goto LABEL_205;
                  }

LABEL_297:
                  v77 = "zeroRuns";
                  if ((v38 & 0x80000000000000) == 0)
                  {
                    v77 = "!zeroRuns";
                  }

                  v78 = "**";
                  if ((v40 & 0x80000000000000) == 0)
                  {
                    v78 = "";
                  }

                  CFStringAppendFormat(Mutable, 0, @"%s%s ", v77, v78);
                  if ((v39 & 0x80000000000) != 0)
                  {
                    goto LABEL_302;
                  }

LABEL_206:
                  if ((v39 & 0x100000000000) == 0)
                  {
                    goto LABEL_365;
                  }
                }

                else
                {
                  if ((v39 & 2) == 0)
                  {
                    goto LABEL_190;
                  }

LABEL_222:
                  v47 = "auto";
                  if ((v38 & 2) == 0)
                  {
                    v47 = "!auto";
                  }

                  v48 = "**";
                  if ((v40 & 2) == 0)
                  {
                    v48 = "";
                  }

                  CFStringAppendFormat(Mutable, 0, @"%s%s ", v47, v48);
                  if ((v39 & 4) != 0)
                  {
                    goto LABEL_227;
                  }

LABEL_191:
                  if ((v39 & 8) == 0)
                  {
                    goto LABEL_192;
                  }

LABEL_232:
                  v51 = "ro";
                  if ((v38 & 8) == 0)
                  {
                    v51 = "rw";
                  }

                  v52 = "**";
                  if ((v40 & 8) == 0)
                  {
                    v52 = "";
                  }

                  CFStringAppendFormat(Mutable, 0, @"%s%s ", v51, v52);
                  if ((v39 & 0x20) != 0)
                  {
                    goto LABEL_237;
                  }

LABEL_193:
                  if ((v39 & 0x40) == 0)
                  {
                    goto LABEL_194;
                  }

LABEL_242:
                  v55 = "rmvbl";
                  if ((v38 & 0x40) == 0)
                  {
                    v55 = "!rmvbl";
                  }

                  v56 = "**";
                  if ((v40 & 0x40) == 0)
                  {
                    v56 = "";
                  }

                  CFStringAppendFormat(Mutable, 0, @"%s%s ", v55, v56);
                  if ((v39 & 0x80) != 0)
                  {
                    goto LABEL_247;
                  }

LABEL_195:
                  if ((v39 & 0x100) == 0)
                  {
                    goto LABEL_196;
                  }

LABEL_252:
                  v59 = "external";
                  if ((v38 & 0x100) == 0)
                  {
                    v59 = "!external";
                  }

                  v60 = "**";
                  if ((v40 & 0x100) == 0)
                  {
                    v60 = "";
                  }

                  CFStringAppendFormat(Mutable, 0, @"%s%s ", v59, v60);
                  if ((v39 & 0x200) != 0)
                  {
                    goto LABEL_257;
                  }

LABEL_197:
                  if ((v39 & 0x1000) == 0)
                  {
                    goto LABEL_198;
                  }

LABEL_262:
                  v63 = "ipod";
                  if ((v38 & 0x1000) == 0)
                  {
                    v63 = "!ipod";
                  }

                  v64 = "**";
                  if ((v40 & 0x1000) == 0)
                  {
                    v64 = "";
                  }

                  CFStringAppendFormat(Mutable, 0, @"%s%s ", v63, v64);
                  if ((v39 & 0x100000000) != 0)
                  {
                    goto LABEL_267;
                  }

LABEL_199:
                  if ((v39 & 0x1000000000) == 0)
                  {
                    goto LABEL_200;
                  }

LABEL_272:
                  v67 = "symlinks";
                  if ((v38 & 0x1000000000) == 0)
                  {
                    v67 = "!symlinks";
                  }

                  v68 = "**";
                  if ((v40 & 0x1000000000) == 0)
                  {
                    v68 = "";
                  }

                  CFStringAppendFormat(Mutable, 0, @"%s%s ", v67, v68);
                  if ((v39 & 0x2000000000000) != 0)
                  {
                    goto LABEL_277;
                  }

LABEL_201:
                  if ((v39 & 0x10000000000) == 0)
                  {
                    goto LABEL_202;
                  }

LABEL_282:
                  v71 = "journal";
                  if ((v38 & 0x10000000000) == 0)
                  {
                    v71 = "!journal";
                  }

                  v72 = "**";
                  if ((v40 & 0x10000000000) == 0)
                  {
                    v72 = "";
                  }

                  CFStringAppendFormat(Mutable, 0, @"%s%s ", v71, v72);
                  if ((v39 & 0x20000000000000) != 0)
                  {
                    goto LABEL_287;
                  }

LABEL_203:
                  if ((v39 & 0x40000000000000) == 0)
                  {
                    goto LABEL_204;
                  }

LABEL_292:
                  v75 = "sparseFiles";
                  if ((v38 & 0x40000000000000) == 0)
                  {
                    v75 = "!sparseFiles";
                  }

                  v76 = "**";
                  if ((v40 & 0x40000000000000) == 0)
                  {
                    v76 = "";
                  }

                  CFStringAppendFormat(Mutable, 0, @"%s%s ", v75, v76);
                  if ((v39 & 0x80000000000000) != 0)
                  {
                    goto LABEL_297;
                  }

LABEL_205:
                  if ((v39 & 0x80000000000) == 0)
                  {
                    goto LABEL_206;
                  }

LABEL_302:
                  v79 = "case-sens";
                  if ((v38 & 0x80000000000) == 0)
                  {
                    v79 = "!case-sens";
                  }

                  v80 = "**";
                  if ((v40 & 0x80000000000) == 0)
                  {
                    v80 = "";
                  }

                  CFStringAppendFormat(Mutable, 0, @"%s%s ", v79, v80);
                  if ((v39 & 0x100000000000) == 0)
                  {
                    goto LABEL_365;
                  }
                }

                v81 = "case-presrv";
                if ((v38 & 0x100000000000) == 0)
                {
                  v81 = "!case-presrv";
                }

                v82 = (v40 & 0x100000000000) == 0;
                goto LABEL_362;
              }

              if (v32 != 4112)
              {
                v43 = BookmarkData::copyDataItemAtOffset(v108, v31, 0);
                if (v43)
                {
                  v44 = v43;
                  describeURLType(v43, Mutable);
                  CFRelease(v44);
                }

                goto LABEL_366;
              }

              v33 = BookmarkData::getDataItemAtOffset(v108, v31);
              if (v33 && *v33 >= 0x18)
              {
                v34 = *(v33 + 1);
                v35 = *(v33 + 2);
                v36 = *(v33 + 3);
                CFStringAppendFormat(Mutable, 0, @"Props:[");
                if (v35)
                {
                  v83 = "file";
                  if ((v34 & 1) == 0)
                  {
                    v83 = "!file";
                  }

                  v84 = "**";
                  if ((v36 & 1) == 0)
                  {
                    v84 = "";
                  }

                  CFStringAppendFormat(Mutable, 0, @"%s%s ", v83, v84);
                  if ((v35 & 2) != 0)
                  {
                    goto LABEL_319;
                  }

LABEL_177:
                  if ((v35 & 4) == 0)
                  {
                    goto LABEL_178;
                  }

LABEL_324:
                  v87 = "sym";
                  if ((v34 & 4) == 0)
                  {
                    v87 = "!sym";
                  }

                  v88 = "**";
                  if ((v36 & 4) == 0)
                  {
                    v88 = "";
                  }

                  CFStringAppendFormat(Mutable, 0, @"%s%s ", v87, v88);
                  if ((v35 & 8) != 0)
                  {
                    goto LABEL_329;
                  }

LABEL_179:
                  if ((v35 & 0x10) == 0)
                  {
                    goto LABEL_180;
                  }

LABEL_334:
                  v91 = "pkg";
                  if ((v34 & 0x10) == 0)
                  {
                    v91 = "!pkg";
                  }

                  v92 = "**";
                  if ((v36 & 0x10) == 0)
                  {
                    v92 = "";
                  }

                  CFStringAppendFormat(Mutable, 0, @"%s%s ", v91, v92);
                  if ((v35 & 0x20) != 0)
                  {
                    goto LABEL_339;
                  }

LABEL_181:
                  if ((v35 & 0x40) == 0)
                  {
                    goto LABEL_182;
                  }

LABEL_344:
                  v95 = "user-immut";
                  if ((v34 & 0x40) == 0)
                  {
                    v95 = "user-mut";
                  }

                  v96 = "**";
                  if ((v36 & 0x40) == 0)
                  {
                    v96 = "";
                  }

                  CFStringAppendFormat(Mutable, 0, @"%s%s ", v95, v96);
                  if ((v35 & 0x80) != 0)
                  {
                    goto LABEL_349;
                  }

LABEL_183:
                  if ((v35 & 0x100) == 0)
                  {
                    goto LABEL_184;
                  }

LABEL_354:
                  v99 = "ext-hid";
                  if ((v34 & 0x100) == 0)
                  {
                    v99 = "ext-vis";
                  }

                  v100 = "**";
                  if ((v36 & 0x100) == 0)
                  {
                    v100 = "";
                  }

                  CFStringAppendFormat(Mutable, 0, @"%s%s ", v99, v100);
                  if ((v35 & 0x200) == 0)
                  {
LABEL_365:
                    CFStringAppendFormat(Mutable, 0, @"]");
                    v19 = v106;
                    goto LABEL_366;
                  }
                }

                else
                {
                  if ((v35 & 2) == 0)
                  {
                    goto LABEL_177;
                  }

LABEL_319:
                  v85 = "dir";
                  if ((v34 & 2) == 0)
                  {
                    v85 = "!dir";
                  }

                  v86 = "**";
                  if ((v36 & 2) == 0)
                  {
                    v86 = "";
                  }

                  CFStringAppendFormat(Mutable, 0, @"%s%s ", v85, v86);
                  if ((v35 & 4) != 0)
                  {
                    goto LABEL_324;
                  }

LABEL_178:
                  if ((v35 & 8) == 0)
                  {
                    goto LABEL_179;
                  }

LABEL_329:
                  v89 = "vol";
                  if ((v34 & 8) == 0)
                  {
                    v89 = "!vol";
                  }

                  v90 = "**";
                  if ((v36 & 8) == 0)
                  {
                    v90 = "";
                  }

                  CFStringAppendFormat(Mutable, 0, @"%s%s ", v89, v90);
                  if ((v35 & 0x10) != 0)
                  {
                    goto LABEL_334;
                  }

LABEL_180:
                  if ((v35 & 0x20) == 0)
                  {
                    goto LABEL_181;
                  }

LABEL_339:
                  v93 = "sys-immut";
                  if ((v34 & 0x20) == 0)
                  {
                    v93 = "sys-mut";
                  }

                  v94 = "**";
                  if ((v36 & 0x20) == 0)
                  {
                    v94 = "";
                  }

                  CFStringAppendFormat(Mutable, 0, @"%s%s ", v93, v94);
                  if ((v35 & 0x40) != 0)
                  {
                    goto LABEL_344;
                  }

LABEL_182:
                  if ((v35 & 0x80) == 0)
                  {
                    goto LABEL_183;
                  }

LABEL_349:
                  v97 = "hid";
                  if ((v34 & 0x80) == 0)
                  {
                    v97 = "vis";
                  }

                  v98 = "**";
                  if ((v36 & 0x80) == 0)
                  {
                    v98 = "";
                  }

                  CFStringAppendFormat(Mutable, 0, @"%s%s ", v97, v98);
                  if ((v35 & 0x100) != 0)
                  {
                    goto LABEL_354;
                  }

LABEL_184:
                  if ((v35 & 0x200) == 0)
                  {
                    goto LABEL_365;
                  }
                }

                v81 = "app";
                if ((v34 & 0x200) == 0)
                {
                  v81 = "!app";
                }

                v82 = (v36 & 0x200) == 0;
LABEL_362:
                v101 = "**";
                if (v82)
                {
                  v101 = "";
                }

                CFStringAppendFormat(Mutable, 0, @"%s%s ", v81, v101);
                goto LABEL_365;
              }

              goto LABEL_366;
            }

            v41 = BookmarkData::getDataItemAtOffset(v108, v31);
            if (!v41 || *v41 < 4)
            {
              goto LABEL_366;
            }

            v42 = v41[2];
            if ((v42 & 0x10000000) != 0)
            {
              CFStringAppendFormat(Mutable, 0, @"%s ", "kCFURLBookmarkCreationAllowCreationIfResourceDoesNotExistMask");
              if ((v42 & 0x20000000) != 0)
              {
LABEL_311:
                CFStringAppendFormat(Mutable, 0, @"%s ", "kCFURLBookmarkCreationDoNotIncludeSandboxExtensionsMask");
                if ((v42 & 0x200) == 0)
                {
LABEL_213:
                  if ((v42 & 0x400) == 0)
                  {
                    goto LABEL_366;
                  }

LABEL_313:
                  CFStringAppendFormat(Mutable, 0, @"%s ", "kCFURLBookmarkCreationSuitableForBookmarkFile");
                  goto LABEL_366;
                }

                goto LABEL_312;
              }
            }

            else if ((v42 & 0x20000000) != 0)
            {
              goto LABEL_311;
            }

            if ((v42 & 0x200) == 0)
            {
              goto LABEL_213;
            }

LABEL_312:
            CFStringAppendFormat(Mutable, 0, @"%s ", "kCFURLBookmarkCreationMinimalBookmarkMask");
            if ((v42 & 0x400) != 0)
            {
              goto LABEL_313;
            }

LABEL_366:
            CFStringAppendFormat(Mutable, 0, @" \n");
            ++v22;
            v23 += 3;
            if (v22 >= TOCAtOffset[4])
            {
              goto LABEL_367;
            }
          }
        }
      }

LABEL_368:
      BookmarkData::~BookmarkData(v108);
    }
  }

  v102 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void describeURLType(const __CFString *a1, __CFString *a2)
{
  if (!a1)
  {
    v5 = @"NULL";
LABEL_7:

    CFStringAppendFormat(a2, 0, v5);
    return;
  }

  v4 = CFGetTypeID(a1);
  if (v4 == CFStringGetTypeID())
  {
    CFStringAppend(a2, @"");
    CFStringAppend(a2, a1);

    CFStringAppend(a2, @"");
    return;
  }

  v6 = CFGetTypeID(a1);
  if (v6 == CFNumberGetTypeID())
  {
    v23 = 0;
    valuePtr = 0;
    if (CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr))
    {
      CFStringAppendFormat(a2, 0, @" %ld/0x%lx ", valuePtr, valuePtr);
    }

    else if (CFNumberGetValue(a1, kCFNumberDoubleType, &v23))
    {
      CFStringAppendFormat(a2, 0, @" %lg ", v23);
    }

    else
    {
      CFStringAppendFormat(a2, 0, @" <number> ");
    }

    return;
  }

  v7 = CFGetTypeID(a1);
  if (v7 == CFDataGetTypeID())
  {
    BytePtr = CFDataGetBytePtr(a1);
    Length = CFDataGetLength(a1);
    v10 = Length;
    if (Length >= 32)
    {
      for (i = 0; i != 16; ++i)
      {
        CFStringAppendFormat(a2, 0, @" %2.2x", BytePtr[i]);
        if ((~i & 3) == 0)
        {
          CFStringAppend(a2, @" ");
        }
      }

      CFStringAppend(a2, @"...");
      v16 = v10 - 16;
      do
      {
        CFStringAppendFormat(a2, 0, @" %2.2x", BytePtr[v16]);
        if ((v16 & 0x8000000000000003) == 3)
        {
          CFStringAppend(a2, @" ");
        }

        ++v16;
        --i;
      }

      while (i);
    }

    else if (Length >= 1)
    {
      v11 = 0;
      do
      {
        CFStringAppendFormat(a2, 0, @" %2.2x", BytePtr[v11]);
        if ((~v11 & 3) == 0)
        {
          CFStringAppend(a2, @" ");
        }

        ++v11;
      }

      while (v10 != v11);
    }

    return;
  }

  v12 = CFGetTypeID(a1);
  if (v12 == CFDateGetTypeID())
  {
    v13 = MEMORY[0x19A8C6F70](a1);
    GregorianDate = CFAbsoluteTimeGetGregorianDate(v13, 0);
    CFStringAppendFormat(a2, 0, @" %4.4d/%2.2d/%2.2d %2.2d:%2.2d:%-6.4f ", *&GregorianDate.year, ((*&GregorianDate.year >> 8) >> 24), ((*&GregorianDate.year >> 16) >> 24), ((*&GregorianDate.year >> 24) >> 24), (*&GregorianDate.month >> 24), *&GregorianDate.second);
    return;
  }

  if (*MEMORY[0x1E695E4D0] == a1)
  {
    v5 = @" true  ";
    goto LABEL_7;
  }

  if (*MEMORY[0x1E695E4C0] == a1)
  {
    v5 = @" false ";
    goto LABEL_7;
  }

  v17 = CFGetTypeID(a1);
  if (v17 == CFArrayGetTypeID())
  {
    CFStringAppendFormat(a2, 0, @"[ ");
    if (CFArrayGetCount(a1) >= 1)
    {
      v18 = 0;
      do
      {
        if (v18)
        {
          CFStringAppendFormat(a2, 0, @", ");
        }

        ValueAtIndex = CFArrayGetValueAtIndex(a1, v18);
        describeURLType(ValueAtIndex, a2);
        ++v18;
      }

      while (v18 < CFArrayGetCount(a1));
    }

    v5 = @"] ";
    goto LABEL_7;
  }

  v20 = CFCopyDescription(a1);
  if (v20)
  {
    v21 = v20;
    CFStringAppend(a2, @"");
    CFStringAppend(a2, v21);
    CFStringAppend(a2, @"");

    CFRelease(v21);
  }

  else
  {
    v22 = CFGetTypeID(a1);
    CFStringAppendFormat(a2, 0, @" Unknown encoded type, typeID=%d", v22);
  }
}

uint64_t _CFURLCompareBookmarkData(CFTypeRef cf, const void *a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  if (!cf)
  {
    return 0;
  }

  v6 = CFGetTypeID(cf);
  TypeID = CFDataGetTypeID();
  v8 = 0;
  if (a2 && v6 == TypeID)
  {
    v9 = CFGetTypeID(a2);
    if (v9 == CFDataGetTypeID())
    {
      v10 = *MEMORY[0x1E695E480];
      BookmarkData::BookmarkData(v122, *MEMORY[0x1E695E480], cf);
      BookmarkData::BookmarkData(v120, v10, a2);
      if (v123 && v121)
      {
        Length = CFDataGetLength(cf);
        if (Length != CFDataGetLength(a2) || (BytePtr = CFDataGetBytePtr(cf), v13 = CFDataGetBytePtr(a2), v14 = CFDataGetLength(cf), memcmp(BytePtr, v13, v14)))
        {
          ItemInTOC = BookmarkData::findItemInTOC(v122, 0x1003u, 1);
          v16 = BookmarkData::findItemInTOC(v120, 0x1003u, 1);
          if (ItemInTOC | v16)
          {
            v8 = 4096;
            if (!ItemInTOC)
            {
              goto LABEL_48;
            }

            v17 = v16;
            if (!v16)
            {
              goto LABEL_48;
            }

            v18 = CFStringGetTypeID();
            v19 = BookmarkData::copyItem(v122, ItemInTOC, v18);
            v20 = CFStringGetTypeID();
            v21 = BookmarkData::copyItem(v120, v17, v20);
            v22 = v21;
            if (v19)
            {
              if (v21)
              {
                if (CFStringCompare(v19, v21, 0))
                {
                  v8 = 4096;
                }

                else
                {
                  v8 = 0x8000;
                }

                CFRelease(v22);
              }

              else
              {
                v8 = 4096;
              }

              v22 = v19;
LABEL_47:
              CFRelease(v22);
              goto LABEL_48;
            }

            v8 = 4096;
LABEL_43:
            if (!v22)
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          }

          v23 = compareBookmarkProperties(v122, v120, *MEMORY[0x1E695ED38]) && compareBookmarkProperties(v122, v120, *MEMORY[0x1E695EDF0]) && compareBookmarkProperties(v122, v120, *MEMORY[0x1E695ED08]);
          v24 = *MEMORY[0x1E695EB98];
          v25 = CFBooleanGetTypeID();
          v22 = BookmarkCopyPropertyFromBookmarkData(v122, v24, v25);
          v26 = CFBooleanGetTypeID();
          v27 = BookmarkCopyPropertyFromBookmarkData(v120, v24, v26);
          if (v22 && CFBooleanGetValue(v22) && v27 && CFBooleanGetValue(v27) != 0 && !v23)
          {
            v8 = 4096;
            goto LABEL_42;
          }

          if (!compareBookmarkProperties(v122, v120, *MEMORY[0x1E695EB68]) || !compareBookmarkProperties(v122, v120, *MEMORY[0x1E695EB28]) || !compareBookmarkProperties(v122, v120, *MEMORY[0x1E695EB78]) || !compareBookmarkProperties(v122, v120, v24))
          {
            v8 = 4096;
            goto LABEL_37;
          }

          if (v123)
          {
            v28 = *v123 == 1936288865;
          }

          else
          {
            v28 = 0;
          }

          if (v121)
          {
            v30 = *v121 == 1936288865;
          }

          else
          {
            v30 = 0;
          }

          *v119 = 0;
          if (!v28)
          {
            BookmarkData::getItemAs(v122, 0x2030u, 1, &v119[1]);
          }

          if (!v30)
          {
            BookmarkData::getItemAs(v120, 0x2030u, 1, v119);
          }

          v107 = v119[1];
          v31 = v119[0];
          v32 = CFNumberGetTypeID();
          v33 = BookmarkData::copyItem(v122, 0xC001u, 1u, v32);
          v34 = CFNumberGetTypeID();
          v35 = BookmarkData::copyItem(v120, 0xC001u, 1u, v34);
          cfa = v33;
          v109 = v35;
          if (v33)
          {
            v36 = v35 == 0;
          }

          else
          {
            v36 = 1;
          }

          v37 = !v36;
          v38 = *MEMORY[0x1E695EE50];
          v39 = CFStringGetTypeID();
          v40 = BookmarkCopyPropertyFromBookmarkData(v122, v38, v39);
          v41 = CFStringGetTypeID();
          v42 = BookmarkCopyPropertyFromBookmarkData(v120, v38, v41);
          v43 = *MEMORY[0x1E695ECF8];
          v44 = CFDateGetTypeID();
          cf1 = BookmarkCopyPropertyFromBookmarkData(v122, v43, v44);
          v45 = CFDateGetTypeID();
          cf2 = BookmarkCopyPropertyFromBookmarkData(v120, v43, v45);
          v46 = CFURLGetTypeID();
          v116 = BookmarkData::copyItem(v122, 0x2050u, 1u, v46);
          v47 = CFURLGetTypeID();
          v113 = BookmarkData::copyItem(v120, 0x2050u, 1u, v47);
          v48 = *MEMORY[0x1E695EA30];
          v49 = CFStringGetTypeID();
          theString1 = BookmarkCopyPropertyFromBookmarkData(v122, v48, v49);
          v50 = CFStringGetTypeID();
          v114 = BookmarkCopyPropertyFromBookmarkData(v120, v48, v50);
          v51 = 0;
          theString2 = v42;
          if (v40 && v42)
          {
            v51 = CFStringCompare(v40, v42, 1uLL) == kCFCompareEqualTo;
          }

          v108 = v40;
          v52 = 0;
          if (cf1)
          {
            v53 = v113;
            if (cf2)
            {
              if (v28)
              {
                v54 = floor(MEMORY[0x19A8C6F70](cf1));
                v52 = v54 == floor(MEMORY[0x19A8C6F70](cf2));
              }

              else
              {
                v52 = CFEqual(cf1, cf2) != 0;
              }
            }
          }

          else
          {
            v53 = v113;
          }

          v55 = 0;
          if (v116 && v53)
          {
            v55 = CFEqual(v116, v53) != 0;
          }

          v56 = 0;
          v57 = v107 && v31;
          if (theString1 && v114)
          {
            v56 = CFStringCompare(theString1, v114, 1uLL) == kCFCompareEqualTo;
          }

          if ((v57 | v37))
          {
            if (v56 || v51 || v52 || v55)
            {
              v8 = 0x8000;
            }

            else
            {
              v8 = 0x4000;
            }
          }

          else if (!v23 || ((v78 = v51 || v52 || v55, !v78 || !v56) ? (v8 = 0x4000) : (v8 = 0x8000), !v78 && !v56))
          {
            v8 = 4096;
LABEL_128:
            v95 = theString2;
            v94 = cfa;
            v97 = v108;
            v96 = v109;
            v99 = v116;
            v98 = cf1;
            v100 = cf2;
LABEL_143:
            if (v114)
            {
              CFRelease(v114);
            }

            if (theString1)
            {
              CFRelease(theString1);
            }

            if (v113)
            {
              CFRelease(v113);
            }

            if (v99)
            {
              CFRelease(v99);
            }

            if (v100)
            {
              CFRelease(v100);
            }

            if (v98)
            {
              CFRelease(v98);
            }

            if (v95)
            {
              CFRelease(v95);
            }

            if (v97)
            {
              CFRelease(v97);
            }

            if (v96)
            {
              CFRelease(v96);
            }

            if (v94)
            {
              CFRelease(v94);
            }

LABEL_37:
            if (!v27)
            {
              goto LABEL_43;
            }

LABEL_42:
            CFRelease(v27);
            goto LABEL_43;
          }

          valuePtr = 0;
          if (v37)
          {
            if (CFEqual(cfa, v109))
            {
              CFRetain(cfa);
              Value = CFNumberGetValue(cfa, kCFNumberSInt32Type, &valuePtr);
              CFRelease(cfa);
              if (Value)
              {
                if (!valuePtr)
                {
                  v71 = 1;
                  goto LABEL_117;
                }

                v59 = copyPathComponentsAsArray(v122, 1, 0);
                v60 = v59;
                if (v59)
                {
                  LODWORD(v59) = CFArrayGetCount(v59);
                }

                v61.length = valuePtr;
                if (v59 >= valuePtr)
                {
                  v61.location = v59 - valuePtr;
                  v101 = copyOfArray(v10, v60, v61);
                  v62 = CFStringCreateByCombiningStrings(v10, v101, @"/");
                  if (v101)
                  {
                    CFRelease(v101);
                  }
                }

                else
                {
                  v62 = 0;
                }

                v102 = copyPathComponentsAsArray(v120, 1, 0);
                v63 = v102;
                if (v60 && v60 != v102)
                {
                  CFRelease(v60);
                }

                if (v63)
                {
                  Count = CFArrayGetCount(v63);
                }

                else
                {
                  Count = 0;
                }

                v104.length = valuePtr;
                if (Count >= valuePtr)
                {
                  v104.location = Count - valuePtr;
                  v105 = copyOfArray(v10, v63, v104);
                  v106 = CFStringCreateByCombiningStrings(v10, v105, @"/");
                  if (v105)
                  {
                    CFRelease(v105);
                  }

                  if (v62)
                  {
                    if (v106)
                    {
                      v71 = CFStringCompare(v62, v106, 1uLL) == kCFCompareEqualTo;
                      CFRelease(v106);
                    }

                    else
                    {
                      v71 = 0;
                    }
                  }

                  else
                  {
                    v71 = 0;
                    v62 = v106;
                    if (!v106)
                    {
LABEL_115:
                      if (v63)
                      {
                        CFRelease(v63);
                      }

LABEL_117:
                      v80 = *MEMORY[0x1E695E2B0];
                      v81 = CFNumberGetTypeID();
                      v82 = BookmarkCopyPropertyFromBookmarkData(v122, v80, v81);
                      v83 = CFNumberGetTypeID();
                      v84 = BookmarkCopyPropertyFromBookmarkData(v120, v80, v83);
                      v85 = v84;
                      v86 = 0;
                      if (v82 && v84)
                      {
                        v86 = CFEqual(v82, v84) != 0;
                      }

                      v87 = *MEMORY[0x1E695EA60];
                      v88 = CFNumberGetTypeID();
                      v89 = BookmarkCopyPropertyFromBookmarkData(v122, v87, v88);
                      v90 = CFNumberGetTypeID();
                      v91 = BookmarkCopyPropertyFromBookmarkData(v120, v87, v90);
                      v92 = v91;
                      v93 = 0;
                      if (v89 && v91)
                      {
                        v93 = CFEqual(v89, v91) != 0;
                      }

                      if (v71)
                      {
                        if (!v82 && !v85 && !v89 && !v92)
                        {
                          goto LABEL_128;
                        }

                        if (!v86)
                        {
                          v8 = 0x4000;
                        }
                      }

                      else if (v86 || v93)
                      {
                        v8 = 0x4000;
                      }

                      else
                      {
                        v8 = 0x2000;
                      }

                      if (v92)
                      {
                        CFRelease(v92);
                      }

                      v100 = cf2;
                      if (v89)
                      {
                        CFRelease(v89);
                      }

                      v97 = v108;
                      v99 = v116;
                      if (v85)
                      {
                        CFRelease(v85);
                      }

                      if (v82)
                      {
                        CFRelease(v82);
                      }

                      v95 = theString2;
                      v94 = cfa;
                      v96 = v109;
                      v98 = cf1;
                      goto LABEL_143;
                    }
                  }
                }

                else
                {
                  v71 = 0;
                  if (!v62)
                  {
                    goto LABEL_115;
                  }
                }

                v79 = v62;
LABEL_114:
                CFRelease(v79);
                goto LABEL_115;
              }
            }
          }

          v63 = copyVolumePathComponentsAsArray(v122, 1u);
          v64 = *MEMORY[0x1E695EA28];
          v65 = CFStringGetTypeID();
          v66 = BookmarkCopyPropertyFromBookmarkData(v122, v64, v65);
          v67 = copyVolumePathComponentsAsArray(v120, 1u);
          v68 = CFStringGetTypeID();
          v69 = BookmarkCopyPropertyFromBookmarkData(v120, v64, v68);
          v70 = v69;
          if (v66)
          {
            if (v69)
            {
              v71 = 1;
              if (CFStringCompare(v66, v69, 1uLL) == kCFCompareEqualTo)
              {
                goto LABEL_109;
              }
            }
          }

          v72 = *MEMORY[0x1E695EA18];
          v73 = CFStringGetTypeID();
          v74 = BookmarkCopyPropertyFromBookmarkData(v122, v72, v73);
          v75 = CFStringGetTypeID();
          v76 = BookmarkCopyPropertyFromBookmarkData(v120, v72, v75);
          v77 = v76;
          if (v74)
          {
            if (v76)
            {
              v71 = CFStringCompare(v74, v76, 1uLL) == kCFCompareEqualTo;
              CFRelease(v77);
            }

            else
            {
              v71 = 0;
            }

            v77 = v74;
          }

          else
          {
            v71 = 0;
            if (!v76)
            {
LABEL_108:
              if (!v70)
              {
LABEL_110:
                if (v67)
                {
                  CFRelease(v67);
                }

                if (!v66)
                {
                  goto LABEL_115;
                }

                v79 = v66;
                goto LABEL_114;
              }

LABEL_109:
              CFRelease(v70);
              goto LABEL_110;
            }
          }

          CFRelease(v77);
          goto LABEL_108;
        }

        v8 = 61440;
      }

      else
      {
        v8 = 0;
      }

LABEL_48:
      BookmarkData::~BookmarkData(v120);
      BookmarkData::~BookmarkData(v122);
      return v8;
    }

    return 0;
  }

  return v8;
}

BOOL compareBookmarkProperties(BookmarkData *a1, BookmarkData *a2, const __CFString *cf2)
{
  v5 = BookmarkCopyPropertyFromBookmarkData(a1, cf2, 0);
  v6 = BookmarkCopyPropertyFromBookmarkData(a2, cf2, 0);
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = CFEqual(v5, v6) != 0;
      CFRelease(v7);
    }

    else
    {
      v8 = 1;
    }

    v7 = v5;
  }

  else
  {
    v8 = 1;
    if (!v6)
    {
      return v8;
    }
  }

  CFRelease(v7);
  return v8;
}

double ___ZL43BookmarkResourcePropertyKeyToInfoStructInitv_block_invoke()
{
  v0 = *MEMORY[0x1E695EB68];
  v1 = *MEMORY[0x1E695EB28];
  v2 = *MEMORY[0x1E695EB78];
  v3 = *MEMORY[0x1E695EB98];
  v4 = *MEMORY[0x1E695EB50];
  v5 = *MEMORY[0x1E695EB80];
  v6 = *MEMORY[0x1E695EB90];
  v7 = *MEMORY[0x1E695EB40];
  v8 = *MEMORY[0x1E695EB10];
  v12 = *MEMORY[0x1E695EB20];
  v9 = *MEMORY[0x1E695ED38];
  v13 = *MEMORY[0x1E695ED08];
  v14 = *MEMORY[0x1E695ED40];
  v15 = *MEMORY[0x1E695ED18];
  v16 = *MEMORY[0x1E695ED48];
  v17 = *MEMORY[0x1E695ED28];
  v18 = *MEMORY[0x1E695E410];
  v20 = *MEMORY[0x1E695E438];
  v22 = *MEMORY[0x1E695EDF0];
  v25 = *MEMORY[0x1E695EE18];
  v27 = *MEMORY[0x1E695EDD8];
  v30 = *MEMORY[0x1E695EDE8];
  v32 = *MEMORY[0x1E695ED30];
  v34 = *MEMORY[0x1E695EE08];
  v37 = *MEMORY[0x1E695EE28];
  v38 = *MEMORY[0x1E695EDA8];
  v39 = *MEMORY[0x1E695EDA0];
  v44 = *MEMORY[0x1E695EBE8];
  v54 = *MEMORY[0x1E695E2B0];
  sResourcePropertiesInfoCount = 1;
  sResourcePropertiesInfoCountIncludedInAll = 1;
  v19 = *MEMORY[0x1E695EBC8];
  v21 = *MEMORY[0x1E695E288];
  v23 = *MEMORY[0x1E695E290];
  v24 = *MEMORY[0x1E695EA50];
  v26 = *MEMORY[0x1E695EA40];
  v28 = *MEMORY[0x1E695EA48];
  v29 = *MEMORY[0x1E695EA08];
  v31 = *MEMORY[0x1E695EBB8];
  v33 = *MEMORY[0x1E695EC28];
  v35 = *MEMORY[0x1E695EBD0];
  v36 = *MEMORY[0x1E695EBB0];
  v40 = *MEMORY[0x1E695EBC0];
  v41 = *MEMORY[0x1E695E3D0];
  v42 = *MEMORY[0x1E695EAF0];
  v43 = *MEMORY[0x1E695EA68];
  v45 = *MEMORY[0x1E695E250];
  v46 = *MEMORY[0x1E695EB60];
  v47 = *MEMORY[0x1E695EBA0];
  v48 = *MEMORY[0x1E695EB38];
  v49 = *MEMORY[0x1E695E2B8];
  v50 = *MEMORY[0x1E695E2A0];
  v51 = *MEMORY[0x1E695E248];
  v52 = *MEMORY[0x1E695E3E0];
  v53 = *MEMORY[0x1E695E3B8];
  v55 = *MEMORY[0x1E695EA18];
  v56 = *MEMORY[0x1E695EA28];
  v57 = *MEMORY[0x1E695EA20];
  v58 = *MEMORY[0x1E695EA30];
  v59 = *MEMORY[0x1E695ED78];
  v60 = *MEMORY[0x1E695EBF8];
  v61 = *MEMORY[0x1E695ED10];
  v62 = *MEMORY[0x1E695EE50];
  v63 = *MEMORY[0x1E695EE48];
  v64 = *MEMORY[0x1E695E240];
  v65 = *MEMORY[0x1E695EE30];
  v66 = *MEMORY[0x1E695ECF8];
  v67 = *MEMORY[0x1E695EA10];
  v10 = malloc_type_malloc(0x8E0uLL, 0x10E0040F94F8629uLL);
  *v10 = v0;
  sResourcePropertiesInfoPtr = v10;
  v10[2] = 4112;
  *(v10 + 4) = v1;
  *(v10 + 8) = v2;
  *(v10 + 12) = v3;
  *(v10 + 16) = v4;
  *(v10 + 19) = 16;
  *(v10 + 20) = v5;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = v8;
  *(v10 + 34) = extractRPFlags;
  *(v10 + 35) = 256;
  v10[10] = 4112;
  v10[18] = 4112;
  v10[26] = 4112;
  v10[34] = 4112;
  v10[42] = 4112;
  v10[50] = 4112;
  v10[58] = 4112;
  v10[66] = 4112;
  v10[74] = 4112;
  *(v10 + 40) = v9;
  *(v10 + 18) = extractRPFlags;
  *(v10 + 6) = extractRPFlags;
  *(v10 + 7) = 2;
  *(v10 + 10) = extractRPFlags;
  *(v10 + 11) = 4;
  *(v10 + 14) = extractRPFlags;
  *(v10 + 15) = 8;
  *(v10 + 22) = extractRPFlags;
  *(v10 + 23) = 32;
  *(v10 + 26) = extractRPFlags;
  *(v10 + 27) = 64;
  *(v10 + 30) = extractRPFlags;
  *(v10 + 31) = 128;
  *(v10 + 38) = extractRPFlags;
  *(v10 + 39) = 512;
  *(v10 + 2) = extractRPFlags;
  *(v10 + 3) = 1;
  *(v10 + 36) = v12;
  v10[82] = 8224;
  *(v10 + 44) = v13;
  *(v10 + 47) = 2;
  *(v10 + 48) = v14;
  *(v10 + 51) = 8;
  *(v10 + 52) = v15;
  *(v10 + 55) = 32;
  *(v10 + 56) = v16;
  *(v10 + 59) = 64;
  *(v10 + 60) = v17;
  *(v10 + 63) = 128;
  *(v10 + 64) = v18;
  *(v10 + 67) = 512;
  *(v10 + 68) = v20;
  *(v10 + 71) = 4096;
  *(v10 + 72) = v22;
  *(v10 + 75) = 0x100000000;
  *(v10 + 76) = v25;
  *(v10 + 79) = 0x1000000000;
  *(v10 + 80) = v27;
  *(v10 + 83) = 0x2000000000000;
  *(v10 + 84) = v30;
  *(v10 + 87) = 0x10000000000;
  *(v10 + 88) = v32;
  *(v10 + 91) = 0x20000000000000;
  *(v10 + 92) = v34;
  *(v10 + 95) = 0x40000000000000;
  *(v10 + 96) = v37;
  *(v10 + 99) = 0x80000000000000;
  *(v10 + 100) = v38;
  *(v10 + 103) = 0x80000000000;
  *(v10 + 104) = v39;
  v10[90] = 8224;
  v10[98] = 8224;
  v10[106] = 8224;
  v10[114] = 8224;
  v10[122] = 8224;
  v10[130] = 8224;
  v10[138] = 8224;
  v10[146] = 8224;
  v10[154] = 8224;
  v10[162] = 8224;
  v10[170] = 8224;
  v10[178] = 8224;
  v10[186] = 8224;
  v10[194] = 8224;
  v10[202] = 8224;
  v10[210] = 8224;
  *(v10 + 107) = 0x100000000000;
  *(v10 + 108) = v44;
  v10[218] = 4128;
  *(v10 + 46) = extractVPFlags;
  *(v10 + 50) = extractVPFlags;
  *(v10 + 54) = extractVPFlags;
  *(v10 + 58) = extractVPFlags;
  *(v10 + 62) = extractVPFlags;
  *(v10 + 66) = extractVPFlags;
  *(v10 + 70) = extractVPFlags;
  *(v10 + 74) = extractVPFlags;
  *(v10 + 78) = extractVPFlags;
  *(v10 + 82) = extractVPFlags;
  *(v10 + 86) = extractVPFlags;
  *(v10 + 90) = extractVPFlags;
  *(v10 + 94) = extractVPFlags;
  *(v10 + 98) = extractVPFlags;
  *(v10 + 102) = extractVPFlags;
  *(v10 + 106) = extractVPFlags;
  *(v10 + 42) = extractVPFlags;
  *(v10 + 43) = 1;
  *(v10 + 110) = extractNameKey;
  *(v10 + 112) = v54;
  v10[226] = 4144;
  *(v10 + 111) = 0;
  *(v10 + 114) = extractFileIDKey;
  *(v10 + 116) = v19;
  v10[234] = 61463;
  *(v10 + 120) = v21;
  v10[242] = 61473;
  *(v10 + 124) = v23;
  v10[250] = 61472;
  *(v10 + 128) = v24;
  v10[258] = 4160;
  *(v10 + 132) = v26;
  v10[266] = 4161;
  *(v10 + 136) = v28;
  v10[274] = 4162;
  *(v10 + 140) = v29;
  v10[282] = 4163;
  *(v10 + 144) = v31;
  *(v10 + 148) = v33;
  v10[298] = 983044;
  *(v10 + 152) = v35;
  v10[306] = 983045;
  *(v10 + 156) = v36;
  v10[314] = 983046;
  *(v10 + 115) = 0;
  result = 0.0;
  *(v10 + 59) = 0u;
  *(v10 + 61) = 0u;
  *(v10 + 63) = 0u;
  *(v10 + 65) = 0u;
  *(v10 + 67) = 0u;
  *(v10 + 69) = 0u;
  *(v10 + 71) = 0u;
  v10[290] = 983041;
  *(v10 + 73) = 0u;
  *(v10 + 75) = 0u;
  *(v10 + 77) = 0u;
  *(v10 + 79) = 0u;
  *(v10 + 160) = v40;
  v10[322] = 983048;
  *(v10 + 81) = 0u;
  *(v10 + 164) = v41;
  v10[330] = 61474;
  *(v10 + 83) = 0u;
  *(v10 + 168) = v42;
  v10[338] = 983049;
  *(v10 + 85) = 0u;
  *(v10 + 172) = v43;
  v10[346] = 61450;
  *(v10 + 87) = 0u;
  *(v10 + 176) = v12;
  v10[354] = 983051;
  *(v10 + 89) = 0u;
  *(v10 + 180) = v45;
  v10[362] = 983052;
  *(v10 + 91) = 0u;
  *(v10 + 184) = v46;
  v10[370] = 983053;
  *(v10 + 93) = 0u;
  *(v10 + 188) = v47;
  v10[378] = 983054;
  *(v10 + 95) = 0u;
  *(v10 + 192) = v48;
  v10[386] = 983055;
  *(v10 + 97) = 0u;
  *(v10 + 196) = v49;
  v10[394] = 983057;
  *(v10 + 99) = 0u;
  *(v10 + 200) = v50;
  v10[402] = 983058;
  *(v10 + 101) = 0u;
  *(v10 + 204) = v51;
  v10[410] = 983059;
  *(v10 + 103) = 0u;
  *(v10 + 208) = v52;
  v10[418] = 251658516;
  *(v10 + 105) = 0u;
  *(v10 + 212) = v53;
  v10[426] = 983061;
  *(v10 + 107) = 0u;
  *(v10 + 216) = @"_NSURLBookmarkFlagsKey";
  v10[434] = 0;
  *(v10 + 218) = returnBookmarkFlagsKey;
  *(v10 + 219) = 0;
  *(v10 + 220) = v55;
  v10[442] = 65280;
  *(v10 + 222) = returnPathComponentsAsString;
  *(v10 + 223) = 0;
  *(v10 + 224) = v56;
  v10[450] = 65281;
  *(v10 + 226) = returnRelativePathComponentsAsStringForVolume;
  *(v10 + 227) = 1;
  *(v10 + 228) = v57;
  v10[458] = 65283;
  *(v10 + 230) = returnPathComponentsArray;
  *(v10 + 231) = 0;
  *(v10 + 232) = v58;
  v10[466] = 65282;
  *(v10 + 234) = returnVolumeNameAsString;
  *(v10 + 235) = 0;
  *(v10 + 236) = v59;
  v10[474] = 0;
  *(v10 + 238) = returnVolumeNameAsString;
  *(v10 + 239) = 0;
  *(v10 + 240) = v60;
  v10[482] = 0;
  *(v10 + 242) = returnPathComponentsAsString;
  *(v10 + 243) = 0;
  *(v10 + 244) = v61;
  v10[490] = 0;
  *(v10 + 246) = extractVPFlagsAndNegate;
  *(v10 + 247) = 4;
  *(v10 + 248) = v62;
  v10[498] = 8209;
  *(v10 + 125) = 0u;
  *(v10 + 252) = v63;
  v10[506] = 0;
  *(v10 + 254) = returnVolumeURL;
  *(v10 + 255) = 0;
  *(v10 + 256) = v64;
  v10[514] = 0;
  *(v10 + 258) = returnURLString;
  *(v10 + 259) = 0;
  *(v10 + 260) = v65;
  v10[522] = 8210;
  *(v10 + 131) = 0u;
  *(v10 + 264) = v66;
  v10[530] = 8211;
  *(v10 + 133) = 0u;
  *(v10 + 268) = v67;
  v10[538] = 8304;
  *(v10 + 135) = 0u;
  *(v10 + 272) = @"NSURLBookmarkAllPropertiesKey";
  v10[546] = 0;
  *(v10 + 274) = returnAllPropertiesInBookmark;
  *(v10 + 275) = 0;
  *(v10 + 276) = @"NSURLBookmarkAllPropertyKeysKey";
  v10[554] = 0;
  *(v10 + 278) = returnAllPropertyKeysInBookmark;
  *(v10 + 279) = 0;
  *(v10 + 280) = @"NSURLBookmarkDetailedDescription";
  v10[562] = 0;
  *(v10 + 282) = returnDetailedDump;
  *(v10 + 283) = 0;
  return result;
}

CFTypeRef extractRPFlags(BookmarkData *a1, int a2, uint64_t a3)
{
  if (!BookmarkData::getURLResourceProperties(a1, a2, v7) || (v7[1] & a3) == 0)
  {
    return 0;
  }

  v4 = MEMORY[0x1E695E4C0];
  if ((v7[0] & a3) != 0)
  {
    v4 = MEMORY[0x1E695E4D0];
  }

  v5 = *v4;
  CFRetain(*v4);
  return v5;
}

CFTypeRef extractVPFlags(BookmarkData *a1, int a2, uint64_t a3)
{
  if (!BookmarkData::getURLVolumeProperties(a1, a2, v7) || (v7[1] & a3) == 0)
  {
    return 0;
  }

  v4 = MEMORY[0x1E695E4C0];
  if ((v7[0] & a3) != 0)
  {
    v4 = MEMORY[0x1E695E4D0];
  }

  v5 = *v4;
  CFRetain(*v4);
  return v5;
}

CFNumberRef extractNameKey(BookmarkData *a1, unsigned int a2)
{
  TypeID = CFStringGetTypeID();
  result = BookmarkData::copyItem(a1, 0x1020u, a2, TypeID);
  if (!result)
  {
    v6 = countPathComponents(a1, a2);
    if (v6)
    {

      return copyIndexedPathComponent(a1, a2, v6 - 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *extractFileIDKey(BookmarkData *a1, unsigned int a2)
{
  TypeID = CFNumberGetTypeID();
  v5 = BookmarkData::copyItem(a1, 0x1030u, 1u, TypeID);
  if (!v5)
  {
    v6 = CFArrayGetTypeID();
    v7 = BookmarkData::copyItem(a1, 0x1005u, a2, v6);
    if (v7)
    {
      v8 = v7;
      Count = CFArrayGetCount(v7);
      if (Count >= 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v8, Count - 1);
        v5 = ValueAtIndex;
        if (!ValueAtIndex)
        {
LABEL_9:
          CFRelease(v8);
          return v5;
        }

        if (CFGetTypeID(ValueAtIndex) == TypeID)
        {
          CFRetain(v5);
          goto LABEL_9;
        }
      }

      v5 = 0;
      goto LABEL_9;
    }

    return 0;
  }

  return v5;
}

const __CFString *returnPathComponentsAsString(BookmarkData *a1, int a2, unint64_t a3)
{
  if (HIDWORD(a3))
  {
    return 0;
  }

  v3 = copyPathComponentsAsString(a1, a2, a3, 1);
  v4 = v3;
  if (v3)
  {
    Length = CFStringGetLength(v3);
    if (Length >= 2)
    {
      v6 = Length - 1;
      if (CFStringGetCharacterAtIndex(v4, Length - 1) == 47)
      {
        v9.location = 0;
        v9.length = v6;
        v7 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], v4, v9);
        CFRelease(v4);
        return v7;
      }
    }
  }

  return v4;
}

CFStringRef returnRelativePathComponentsAsStringForVolume(BookmarkData *a1, int a2, uint64_t a3)
{
  if (a3)
  {
    TypeID = CFArrayGetTypeID();
    v7 = BookmarkData::copyItem(a1, 0x2000u, 1u, TypeID);
    if (v7)
    {
      v8 = v7;
      if (CFArrayGetCount(v7) < 1)
      {
        v12 = copyPathComponentsAsString(a1, a2, 0, 0);
        goto LABEL_14;
      }

      v9 = *MEMORY[0x1E695E480];
      valuePtr = a3;
      v10 = CFNumberCreate(v9, kCFNumberSInt64Type, &valuePtr);
      v19.length = CFArrayGetCount(v8);
      v19.location = 0;
      LastIndexOfValue = CFArrayGetLastIndexOfValue(v8, v19, v10);
      if (LastIndexOfValue == -1)
      {
        v12 = 0;
        if (!v10)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = copyPathComponentsAsString(a1, a2, LastIndexOfValue, 0);
        if (!v10)
        {
LABEL_14:
          CFRelease(v8);
          if (!v12)
          {
            return v12;
          }

          goto LABEL_15;
        }
      }

      CFRelease(v10);
      goto LABEL_14;
    }

    v13 = copyPathComponentsAsString(a1, a2, 0, 0);
  }

  else
  {
    v13 = returnPathComponentsAsString(a1, a2, 0);
  }

  v12 = v13;
  if (!v13)
  {
    return v12;
  }

LABEL_15:
  Length = CFStringGetLength(v12);
  if (Length >= 2)
  {
    v15 = Length - 1;
    if (CFStringGetCharacterAtIndex(v12, Length - 1) == 47)
    {
      v20.location = 0;
      v20.length = v15;
      v16 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], v12, v20);
      CFRelease(v12);
      return v16;
    }
  }

  return v12;
}

const void *returnVolumeNameAsString(BookmarkData *a1, unsigned int a2)
{
  TypeID = CFStringGetTypeID();

  return BookmarkData::copyItem(a1, 0x2010u, a2, TypeID);
}

CFTypeRef extractVPFlagsAndNegate(BookmarkData *a1, int a2, uint64_t a3)
{
  if (!BookmarkData::getURLVolumeProperties(a1, a2, v7) || (v7[1] & a3) == 0)
  {
    return 0;
  }

  v4 = MEMORY[0x1E695E4D0];
  if ((v7[0] & a3) != 0)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  v5 = *v4;
  CFRetain(*v4);
  return v5;
}

CFURLRef returnVolumeURL(BookmarkData *a1, unsigned int a2)
{
  v9 = 0;
  if (!BookmarkData::getItemAs(a1, 0x2030u, a2, &v9) || !v9 || (v4 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], @"/", kCFURLPOSIXPathStyle, 1u)) == 0)
  {
    TypeID = CFStringGetTypeID();
    v6 = BookmarkData::copyItem(a1, 0x2002u, a2, TypeID);
    if (v6)
    {
      v7 = v6;
      v4 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], v6, kCFURLPOSIXPathStyle, 1u);
      CFRelease(v7);
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

void *returnURLString(BookmarkData *a1, unsigned int a2)
{
  TypeID = CFStringGetTypeID();
  v5 = BookmarkData::copyItem(a1, 0x1003u, a2, TypeID);
  if (!v5)
  {
    v6 = returnPathComponentsAsString(a1, a2, 0);
    if (v6)
    {
      v7 = v6;
      v8 = *MEMORY[0x1E695EB28];
      v9 = CFBooleanGetTypeID();
      v10 = BookmarkCopyPropertyFromBookmarkData(a1, v8, v9);
      v11 = v10;
      if (v10)
      {
        Value = CFBooleanGetValue(v10);
      }

      else
      {
        Value = 0;
      }

      v13 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], v7, kCFURLPOSIXPathStyle, Value);
      if (v13)
      {
        v14 = v13;
        v15 = CFURLGetString(v13);
        v5 = v15;
        if (v15)
        {
          CFRetain(v15);
        }

        CFRelease(v14);
        if (!v11)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v5 = 0;
        if (!v11)
        {
          goto LABEL_12;
        }
      }

      CFRelease(v11);
LABEL_12:
      CFRelease(v7);
      return v5;
    }

    return 0;
  }

  return v5;
}

CFArrayRef returnAllPropertyKeysInBookmark(BookmarkData *a1, uint64_t a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = copyAllPropertiesInBookmark(a1, a2);
  if (v3)
  {
    v4 = v3;
    if (CFDictionaryGetCount(v3) < 1)
    {
      v14 = 0;
    }

    else
    {
      Count = CFDictionaryGetCount(v4);
      MEMORY[0x1EEE9AC00](Count, v6, v7, v8);
      v10 = (v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      if (v9 >= 0x200)
      {
        v11 = 512;
      }

      else
      {
        v11 = v9;
      }

      bzero(v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
      CFDictionaryGetKeysAndValues(v4, v10, 0);
      v12 = *a1;
      v13 = CFDictionaryGetCount(v4);
      v14 = CFArrayCreate(v12, v10, v13, MEMORY[0x1E695E9C0]);
    }

    CFRelease(v4);
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

__CFDictionary *copyAllPropertiesInBookmark(BookmarkData *a1, uint64_t a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (BookmarkResourcePropertyKeyToInfoStructInit(void)::onceToken != -1)
  {
    CFBookmarkPropertyKeyToKnownType();
  }

  IndexedItemInTOC = BookmarkData::getIndexedItemInTOC(a1, 0, 1);
  if (IndexedItemInTOC)
  {
    v6 = IndexedItemInTOC;
    v7 = 1;
    while ((*v6 & 0x80000000) == 0)
    {
LABEL_16:
      v6 = BookmarkData::getIndexedItemInTOC(a1, v7++, 1);
      if (!v6)
      {
        goto LABEL_17;
      }
    }

    DataItemAtOffset = BookmarkData::getDataItemAtOffset(a1, *v6 & 0x7FFFFFFF);
    v9 = BookmarkData::copyItem(a1, DataItemAtOffset, 0);
    v10 = BookmarkData::copyItem(a1, v6, 0);
    v11 = v10;
    if (!Mutable || (v9 ? (v12 = v10 == 0) : (v12 = 1), v12))
    {
      if (!v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      CFDictionaryAddValue(Mutable, v9, v10);
    }

    CFRelease(v11);
LABEL_14:
    if (v9)
    {
      CFRelease(v9);
    }

    goto LABEL_16;
  }

LABEL_17:
  if (sResourcePropertiesInfoCountIncludedInAll == 1)
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = *(sResourcePropertiesInfoPtr + v13);
      if (!v15 || CFDictionaryContainsKey(Mutable, v15))
      {
        goto LABEL_36;
      }

      v16 = sResourcePropertiesInfoPtr + v13;
      v17 = *(sResourcePropertiesInfoPtr + v13 + 16);
      if (v17)
      {
        break;
      }

      v19 = *(v16 + 8);
      if (v19 >> 8 <= 0xFE)
      {
        v18 = BookmarkData::copyItem(a1, v19, a2, 0);
        goto LABEL_25;
      }

      v20 = 0;
LABEL_26:
      v21 = *(sResourcePropertiesInfoPtr + v13);
      if (v20)
      {
        v22 = Mutable == 0;
      }

      else
      {
        v22 = 1;
      }

      if (v22 || v21 == 0)
      {
        if (!v20)
        {
          goto LABEL_36;
        }
      }

      else
      {
        CFDictionaryAddValue(Mutable, v21, v20);
      }

      CFRelease(v20);
LABEL_36:
      if (sResourcePropertiesInfoCountIncludedInAll == 1)
      {
        v13 += 32;
        v24 = v14++ >= 0x43;
        if (!v24)
        {
          continue;
        }
      }

      goto LABEL_41;
    }

    v18 = v17(a1, a2, *(v16 + 24));
LABEL_25:
    v20 = v18;
    goto LABEL_26;
  }

LABEL_41:
  if (sResourcePropertiesInfoCount == 1)
  {
    v25 = 0;
    v26 = 0;
    do
    {
      if (*(sResourcePropertiesInfoPtr + v25 + 8) >= 0xF000u)
      {
        if (*(sResourcePropertiesInfoPtr + v25))
        {
          v27 = *(sResourcePropertiesInfoPtr + v25 + 16);
          if (v27)
          {
            v28 = v27(a1, a2, *(sResourcePropertiesInfoPtr + v25 + 24));
            if (v28)
            {
              v29 = v28;
              if (Mutable)
              {
                v30 = *(sResourcePropertiesInfoPtr + v25);
                if (v30)
                {
                  CFDictionaryAddValue(Mutable, v30, v28);
                }
              }

              CFRelease(v29);
            }
          }
        }
      }

      if (sResourcePropertiesInfoCount != 1)
      {
        break;
      }

      v25 += 32;
      v24 = v26++ >= 0x46;
    }

    while (!v24);
  }

  if (!Mutable)
  {
    return 0;
  }

  if (CFDictionaryGetCount(Mutable) < 1)
  {
    v31 = 0;
  }

  else
  {
    CFRetain(Mutable);
    v31 = Mutable;
  }

  CFRelease(Mutable);
  return v31;
}

void *_CFURLCreateByResolvingBookmarkData(const __CFAllocator *a1, const __CFData *a2, unint64_t a3, const __CFURL *a4, const __CFArray *a5, BOOL *a6, CFErrorRef *a7)
{
  v14 = _os_activity_create(&dword_19602C000, "CFURLResolveBookmarkData", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  os_activity_scope_enter(v14, &state);
  v26 = 0;
  cf = 0;
  v15 = createByResolvingBookmarkDataInternal(a1, a2, a3, a4, a5, a6, &cf, &v26);
  if (v15)
  {
LABEL_2:
    if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
    {
      _CFURLCreateByResolvingBookmarkData_cold_1();
    }

    goto LABEL_31;
  }

  v16 = v26;
  if (!v26)
  {
    goto LABEL_25;
  }

  if (!a2)
  {
    goto LABEL_25;
  }

  if ((a3 & 0x4000) != 0)
  {
    goto LABEL_25;
  }

  v17 = CFGetTypeID(a2);
  if (v17 != CFDataGetTypeID())
  {
    goto LABEL_25;
  }

  BookmarkData::BookmarkData(v31, a1, a2);
  if (!v32)
  {
    goto LABEL_24;
  }

  if (!BookmarkData::getURLResourceProperties(v31, 1, &v29))
  {
    goto LABEL_14;
  }

  if ((v30 & v29 & 8) != 0)
  {
LABEL_24:
    BookmarkData::~BookmarkData(v31);
    goto LABEL_25;
  }

  if ((v30 & 0x10) != 0 && (v30 & v29 & 2) != 0)
  {
    IsReachable = v29 & 0x10;
    goto LABEL_16;
  }

LABEL_14:
  PathComponent = CFURLCreateCopyDeletingLastPathComponent(a1, v16);
  if (!PathComponent)
  {
    goto LABEL_24;
  }

  v20 = PathComponent;
  IsReachable = CFURLResourceIsReachable(PathComponent, 0);
  CFRelease(v20);
LABEL_16:
  BookmarkData::~BookmarkData(v31);
  if (IsReachable)
  {
    if ((a3 & 0x1000) != 0)
    {
      v24 = _CFURLCopyPromiseURLOfLogicalURL();
      if (!v24)
      {
        goto LABEL_25;
      }

      v25 = v24;
      if (CFURLResourceIsReachable(v24, 0))
      {
        _CFURLPromiseSetPhysicalURL();
        v15 = v26;
        v26 = 0;
      }

      else
      {
        v15 = 0;
      }

      CFRelease(v25);
    }

    else
    {
      if (!DownloadCloudDocumentSync(v26))
      {
        goto LABEL_25;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v26)
      {
        CFRelease(v26);
        v26 = 0;
      }

      v15 = createByResolvingBookmarkDataInternal(a1, a2, a3, a4, a5, a6, &cf, &v26);
    }

    if (v15)
    {
      goto LABEL_2;
    }
  }

LABEL_25:
  if (a7 && (v21 = cf, cf = 0, (*a7 = v21) == 0))
  {
    v22 = resolveLog;
    if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_ERROR))
    {
      _CFURLCreateByResolvingBookmarkData_cold_2(v22);
    }

    v15 = 0;
    *a7 = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E628], 256, 0);
  }

  else
  {
    v15 = 0;
  }

LABEL_31:
  os_release(v14);
  if (v26)
  {
    CFRelease(v26);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  os_activity_scope_leave(&state);
  return v15;
}

const __CFURL *createByResolvingBookmarkDataInternal(const __CFAllocator *a1, const __CFData *a2, unint64_t a3, CFURLRef relativeURL, const __CFArray *a5, BOOL *a6, __CFError **a7, const __CFURL **a8)
{
  v108 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (relativeURL)
  {
    v14 = CFURLCopyAbsoluteURL(relativeURL);
  }

  else
  {
    v14 = 0;
  }

  v15 = resolveLog;
  if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
  {
    *v96 = 134219522;
    *v97 = a2;
    *&v97[8] = 2112;
    *&v97[10] = a2;
    *&v97[18] = 2048;
    v98 = a3;
    v99 = 2112;
    v100 = v14;
    v101 = 2112;
    v102 = a5;
    v103 = 2048;
    v104 = a6;
    v105 = 2048;
    v106 = a7;
    _os_log_debug_impl(&dword_19602C000, v15, OS_LOG_TYPE_DEBUG, "bookmarkRef=<%p %@>  options=%#lx relativeToURL=%@ propertiesToInclude=%@ repIsStaleP=%p errorRefP=%p", v96, 0x48u);
    if (!a6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (a6)
  {
LABEL_6:
    *a6 = 0;
  }

LABEL_7:
  if (a2)
  {
    v16 = CFGetTypeID(a2);
    if (v16 == CFDataGetTypeID())
    {
      BookmarkData::BookmarkData(v96, a1, a2);
      if (!*&v97[12])
      {
        v25 = CFErrorCreate(a1, *MEMORY[0x1E695E628], 259, 0);
        if (cf == v25)
        {
          v24 = 0;
        }

        else
        {
          if (cf)
          {
            CFRelease(cf);
          }

          v24 = 0;
          cf = v25;
        }

        goto LABEL_182;
      }

      TypeID = CFBooleanGetTypeID();
      v18 = BookmarkData::copyItem(v96, @"NSURLBookmarkQuarantineMountedNetworkVolumesKey", 1, TypeID);
      v85 = v18;
      if (v18 && CFBooleanGetValue(v18))
      {
        a3 |= 0x2000uLL;
      }

      LODWORD(length) = 0;
      BookmarkSandboxExtensionForTag = getBookmarkSandboxExtensionForTag(v96, 0xF080u, &length);
      if (BookmarkSandboxExtensionForTag || (BookmarkSandboxExtensionForTag = getBookmarkSandboxExtensionForTag(v96, 0xF081u, &length)) != 0)
      {
        v20 = BookmarkSandboxExtensionForTag;
        if (os_log_type_enabled(securityScopedLog, OS_LOG_TYPE_DEBUG))
        {
          createByResolvingBookmarkDataInternal();
        }

        v21 = sandbox_extension_consume();
        v22 = v21;
        if (v21 >= 1)
        {
          v86 = CFDataCreate(*MEMORY[0x1E695E480], v20, length);
LABEL_36:
          v28 = CFStringGetTypeID();
          BookmarkData::copyItem(v96, 0x2070u, 1u, v28);
          Helper_x8__FPCreateDocumentURLFromBookmarkableString = gotLoadHelper_x8__FPCreateDocumentURLFromBookmarkableString(v29);
          if (*(v33 + 3640) && v31)
          {
            if (cf)
            {
              v34 = v31;
              CFRelease(cf);
              v31 = v34;
              cf = 0;
            }

            v35 = v31;
            inited = FPCreateDocumentURLFromBookmarkableString_delayInitStub(Helper_x8__FPCreateDocumentURLFromBookmarkableString);
            v37 = v35;
            v24 = inited;
            goto LABEL_166;
          }

          v84 = v31;
          if (!v14)
          {
            goto LABEL_162;
          }

          v95 = 0;
          if (!_CFURLIsFileURL() || !BookmarkData::getItemAs(v96, 0x1056u, 1, &v95) || !v95)
          {
            goto LABEL_162;
          }

          v83 = v22;
          CFRetain(v14);
          length = v14;
          v93 = 0;
          if (BookmarkData::getItemAs(v96, 0x1054u, 1, &v93) && (v38 = v93) != 0 || BookmarkData::getItemAs(v96, 0x1051u, 1, &v93) && (v45 = __CFADD__(v93, 1), v38 = v93 + 1, ++v93, !v45))
          {
            v39 = resolveLog;
            if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109378;
              *&buf[4] = v38;
              *&buf[8] = 2112;
              *&buf[10] = length;
              _os_log_debug_impl(&dword_19602C000, v39, OS_LOG_TYPE_DEBUG, "REMOVING %u from relative url=%@", buf, 0x12u);
              if (!v93--)
              {
                goto LABEL_66;
              }
            }

            else
            {
              v93 = v38 - 1;
            }

            v40 = *MEMORY[0x1E695EBF0];
            do
            {
              if (!length)
              {
                break;
              }

              propertyValueTypeRefPtr = 0;
              v41 = CFURLCopyResourcePropertyForKey(length, v40, &propertyValueTypeRefPtr, 0);
              v42 = propertyValueTypeRefPtr;
              if (!v41 && propertyValueTypeRefPtr)
              {
                CFRelease(propertyValueTypeRefPtr);
                v42 = 0;
                propertyValueTypeRefPtr = 0;
              }

              v43 = resolveLog;
              if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                *&buf[4] = v42;
                _os_log_debug_impl(&dword_19602C000, v43, OS_LOG_TYPE_DEBUG, " provisionalURL=%@", buf, 0xCu);
                v42 = propertyValueTypeRefPtr;
              }

              propertyValueTypeRefPtr = 0;
              if (length != v42)
              {
                if (length)
                {
                  CFRelease(length);
                  length = v42;
                  if (propertyValueTypeRefPtr)
                  {
                    CFRelease(propertyValueTypeRefPtr);
                  }
                }

                else
                {
                  length = v42;
                }
              }
            }

            while (v93--);
          }

LABEL_66:
          v91 = 0;
          if ((BookmarkData::getItemAs(v96, 0x1055u, 1, &v91) && v91 || BookmarkData::getItemAs(v96, 0x1053u, 1, &v91) && (v45 = __CFADD__(v91, 1), ++v91, !v45)) && (v46 = countPathComponents(v96, 1), (v47 = v91) != 0) && (v48 = v46, v91 < v46))
          {
            v49 = resolveLog;
            if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109120;
              *&buf[4] = v47;
              _os_log_debug_impl(&dword_19602C000, v49, OS_LOG_TYPE_DEBUG, "Adding %u from path components to relative URL", buf, 8u);
              v47 = v91;
            }

            v50 = length;
            if (length)
            {
              v51 = v48 - v47;
              v22 = v83;
              if (v51 < v48)
              {
                cf1 = v48;
                do
                {
                  v52 = copyIndexedPathComponent(v96, 1, v51);
                  propertyValueTypeRefPtr = CFURLCreateCopyAppendingPathComponent(a1, length, v52, 1u);
                  CFReleaser<__CFData const*>::operator=(&length, &propertyValueTypeRefPtr);
                  v53 = resolveLog;
                  if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    *&buf[4] = length;
                    _os_log_debug_impl(&dword_19602C000, v53, OS_LOG_TYPE_DEBUG, " - provisionalURL=%@", buf, 0xCu);
                  }

                  if (length && !CFURLResourceIsReachable(length, 0) && length)
                  {
                    CFRelease(length);
                    length = 0;
                  }

                  v22 = v83;
                  if (propertyValueTypeRefPtr)
                  {
                    CFRelease(propertyValueTypeRefPtr);
                  }

                  if (v52)
                  {
                    CFRelease(v52);
                  }

                  v50 = length;
                  if (!length)
                  {
                    break;
                  }

                  ++v51;
                }

                while (v51 < cf1);
              }

LABEL_93:
              if (!v50)
              {
                goto LABEL_129;
              }

              if (sameFileURL(v50, v14))
              {
                if (length)
                {
                  CFRelease(length);
                  length = 0;
                }

                goto LABEL_129;
              }

              *buf = 0;
              if (!CFURLCopyResourcePropertyForKey(length, *MEMORY[0x1E695EB28], buf, 0))
              {
                if (length)
                {
                  CFRelease(length);
                  length = 0;
                }

                goto LABEL_127;
              }

              if (*buf && CFBooleanGetValue(*buf))
              {
                if (!CFURLHasDirectoryPath(length))
                {
                  v54 = 1;
                  goto LABEL_104;
                }
              }

              else if (CFURLHasDirectoryPath(length))
              {
                v54 = 0;
LABEL_104:
                v55 = CFURLCopyFileSystemPath(length, kCFURLPOSIXPathStyle);
                if (v55)
                {
                  v56 = v55;
                  propertyValueTypeRefPtr = CFURLCreateWithFileSystemPath(a1, v55, kCFURLPOSIXPathStyle, v54);
                  if (propertyValueTypeRefPtr)
                  {
                    CFReleaser<__CFData const*>::operator=(&length, &propertyValueTypeRefPtr);
                    if (propertyValueTypeRefPtr)
                    {
                      CFRelease(propertyValueTypeRefPtr);
                    }
                  }

                  CFRelease(v56);
                }
              }

              propertyValueTypeRefPtr = 0;
              cf2 = 0;
              v57 = *MEMORY[0x1E695ED00];
              if (CFURLCopyResourcePropertyForKey(length, *MEMORY[0x1E695ED00], &propertyValueTypeRefPtr, 0) && CFURLCopyResourcePropertyForKey(v14, v57, &cf2, 0) && propertyValueTypeRefPtr && cf2)
              {
                if (!CFEqual(propertyValueTypeRefPtr, cf2))
                {
                  values = 0;
                  if (CFURLCopyResourcePropertyForKey(length, *MEMORY[0x1E695EE48], &values, 0) && values && (v58 = CFArrayCreate(a1, &values, 1, MEMORY[0x1E695E9C0])) != 0)
                  {
                    v61 = v58;
                    matched = matchVolumeURLForBookmark(v96, 1u, v58, a6, v59, v60);
                    if (matched)
                    {
                      CFRelease(matched);
                    }

                    else if (length)
                    {
                      CFRelease(length);
                      length = 0;
                    }

                    CFRelease(v61);
                  }

                  else if (length)
                  {
                    CFRelease(length);
                    length = 0;
                  }

                  if (values)
                  {
                    CFRelease(values);
                  }

                  v22 = v83;
                }
              }

              else if (length)
              {
                CFRelease(length);
                length = 0;
              }

              if (cf2)
              {
                CFRelease(cf2);
              }

              if (propertyValueTypeRefPtr)
              {
                CFRelease(propertyValueTypeRefPtr);
              }

LABEL_127:
              if (*buf)
              {
                CFRelease(*buf);
              }

LABEL_129:
              v63 = *MEMORY[0x1E695EA60];
              v64 = CFNumberGetTypeID();
              v65 = BookmarkData::copyItem(v96, v63, 1, v64);
              *buf = 0;
              if (!length)
              {
                v24 = 0;
                goto LABEL_157;
              }

              cf1a = v65;
              v66 = CFURLCopyResourcePropertyForKey(length, v63, buf, 0);
              if (a6 && v66)
              {
                if (!cf1a)
                {
                  if (!*buf)
                  {
                    goto LABEL_139;
                  }

                  goto LABEL_138;
                }

                if (!*buf || !CFEqual(cf1a, *buf))
                {
LABEL_138:
                  *a6 = 1;
                }
              }

LABEL_139:
              if (length)
              {
                CFRetain(length);
                v24 = length;
                if (a6)
                {
                  if (!*a6)
                  {
                    v67 = fileIDsMatch(v96, 1u, length);
                    *a6 = v67 == 0;
                    if (v67)
                    {
                      propertyValueTypeRefPtr = 0;
                      if (!CFURLCopyResourcePropertyForKey(v24, *MEMORY[0x1E695EA38], &propertyValueTypeRefPtr, 0))
                      {
LABEL_151:
                        v22 = v83;
                        if (propertyValueTypeRefPtr)
                        {
                          CFRelease(propertyValueTypeRefPtr);
                        }

                        goto LABEL_154;
                      }

                      v22 = v83;
                      if (propertyValueTypeRefPtr)
                      {
                        v68 = *MEMORY[0x1E695E480];
                        v69 = CFArrayCreate(*MEMORY[0x1E695E480], MEMORY[0x1E695EBF8], 1, MEMORY[0x1E695E9C0]);
                        if (v69)
                        {
                          v70 = v69;
                          v71 = MEMORY[0x19A8C75C0](v68, v69, *&v97[4]);
                          if (v71)
                          {
                            v72 = v71;
                            Value = CFDictionaryGetValue(v71, *MEMORY[0x1E695EBF8]);
                            if (Value)
                            {
                              *a6 = CFStringCompare(propertyValueTypeRefPtr, Value, 0) != kCFCompareEqualTo;
                            }

                            CFRelease(v72);
                          }

                          CFRelease(v70);
                        }

                        goto LABEL_151;
                      }
                    }
                  }
                }
              }

              else
              {
                v24 = 0;
              }

LABEL_154:
              if (*buf)
              {
                CFRelease(*buf);
              }

              v65 = cf1a;
LABEL_157:
              if (v65)
              {
                CFRelease(v65);
              }

              if (length)
              {
                CFRelease(length);
              }

              if (v24)
              {
LABEL_165:
                v37 = v84;
                if (!v84)
                {
LABEL_167:
                  if (!v86)
                  {
LABEL_173:
                    if (v85)
                    {
                      CFRelease(v85);
                    }

                    if (v24)
                    {
                      if (!a6 || !*a6)
                      {
                        CFURLSetTemporaryResourcePropertyForKey(v24, @"CFURLCreatedFromBookmark", a2);
                        *buf = 0;
                        BookmarkData::getItemAs(v96, 0xD010u, 1, buf);
                      }

                      if (a5)
                      {
                        v75 = CFGetTypeID(a5);
                        if (v75 == CFArrayGetTypeID())
                        {
                          v76 = __CFURLResourceInfoPtr();
                          _FSURLCacheResourcePropertiesForKeys(v24, a5, v76, 0);
                        }
                      }
                    }

LABEL_182:
                    BookmarkData::~BookmarkData(v96);
                    goto LABEL_183;
                  }

                  if (!v24)
                  {
                    goto LABEL_171;
                  }

                  v74 = MEMORY[0x19A8C77E0](v24);
                  if (!v74)
                  {
                    releaseBookmarkExtension(v22);
                    _URLAttachSecurityScopeToFileURL(v24, v86);
                    if ((a3 & 0x8000) == 0)
                    {
                      _CFURLStartAccessingSecurityScopedResource(v24);
                    }

                    goto LABEL_172;
                  }

                  CFRelease(v74);
                  if ((a3 & 0x8000) != 0)
                  {
LABEL_171:
                    releaseBookmarkExtension(v22);
                  }

LABEL_172:
                  CFRelease(v86);
                  goto LABEL_173;
                }

LABEL_166:
                CFRelease(v37);
                goto LABEL_167;
              }

LABEL_162:
              if (cf)
              {
                CFRelease(cf);
                cf = 0;
              }

              v24 = CFURLCreateByResolvingDataInBookmark(a1, v96, 1, a3, a6, &cf, a8, v30);
              goto LABEL_165;
            }
          }

          else
          {
            v50 = length;
          }

          v22 = v83;
          goto LABEL_93;
        }

        if (v21)
        {
          v26 = resolveLog;
          if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_INFO))
          {
            v27 = *__error();
            *buf = 67109120;
            *&buf[4] = v27;
            _os_log_impl(&dword_19602C000, v26, OS_LOG_TYPE_INFO, "failed to consume sandbox extension: %{errno}d", buf, 8u);
          }
        }
      }

      else
      {
        v22 = 0;
      }

      v86 = 0;
      goto LABEL_36;
    }
  }

  v23 = CFErrorCreate(a1, *MEMORY[0x1E695E628], 259, 0);
  if (cf == v23)
  {
    v24 = 0;
  }

  else
  {
    if (cf)
    {
      CFRelease(cf);
    }

    v24 = 0;
    cf = v23;
  }

LABEL_183:
  if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
  {
    createByResolvingBookmarkDataInternal(v24, &cf);
    if (!a7)
    {
      goto LABEL_190;
    }
  }

  else if (!a7)
  {
    goto LABEL_190;
  }

  if (!v24)
  {
    v77 = cf;
    if (cf)
    {
      cf = 0;
    }

    else
    {
      v77 = CFErrorCreate(a1, *MEMORY[0x1E695E628], 4, 0);
    }

    *a7 = v77;
  }

LABEL_190:
  if (v14)
  {
    CFRelease(v14);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v78 = *MEMORY[0x1E69E9840];
  return v24;
}

uint64_t DownloadCloudDocumentSync(const __CFURL *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v2 = dispatch_group_create();
  if (v2)
  {
    v3 = v2;
    v4 = bmarkLog;
    if (os_log_type_enabled(bmarkLog, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v13 = "DownloadCloudDocumentSync";
      v14 = 2112;
      v15 = a1;
      _os_log_impl(&dword_19602C000, v4, OS_LOG_TYPE_INFO, "%s: downloading %@", buf, 0x16u);
    }

    dispatch_group_enter(v3);
    _CFFileCoordinateReadingItemAtURL2();
    dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v3);
    v5 = *(v9 + 24);
  }

  else
  {
    v5 = 0;
    *(v9 + 24) = 0;
  }

  _Block_object_dispose(&v8, 8);
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

const __CFURL *_URLCreateByResolvingAliasFile(const __CFAllocator *a1, const void *a2, unint64_t a3, const void *a4, __CFError **a5)
{
  v10 = _os_activity_create(&dword_19602C000, "CFURLResolveBookmarkData", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  os_activity_scope_enter(v10, &state);
  v20 = 0;
  v11 = _CreateByResolvingAliasFile(a1, a2, a3, &v20, a5);
  if (v11)
  {
    if (v20)
    {
      Mutable = CFSetCreateMutable(a1, 0, MEMORY[0x1E695E9F8]);
      if (Mutable)
      {
        v13 = Mutable;
        CFSetAddValue(Mutable, v11);
        v14 = _CreateByResolvingAliasFile(a1, v11, a3, &v20, a5);
        CFRelease(v11);
        if (v14)
        {
          v11 = v14;
          while (v20)
          {
            if (CFSetContainsValue(v13, v11) || CFSetGetCount(v13) >= 32)
            {
              if (a5)
              {
                *a5 = CFErrorCreate(a1, *MEMORY[0x1E695E628], 260, 0);
              }

              CFRelease(v11);
              goto LABEL_14;
            }

            CFSetAddValue(v13, v11);
            v15 = _CreateByResolvingAliasFile(a1, v11, a3, &v20, a5);
            CFRelease(v11);
            v11 = v15;
            if (!v15)
            {
              break;
            }
          }
        }

        else
        {
LABEL_14:
          v11 = 0;
        }

        CFRelease(v13);
      }
    }
  }

  if (a4 && v11)
  {
    v16 = CFGetTypeID(a4);
    if (v16 == CFArrayGetTypeID())
    {
      v17 = __CFURLResourceInfoPtr();
      _FSURLCacheResourcePropertiesForKeys(v11, a4, v17, 0);
    }
  }

  else if (a5 && !v11 && !*a5)
  {
    v18 = aliasLog;
    if (os_log_type_enabled(aliasLog, OS_LOG_TYPE_ERROR))
    {
      _URLCreateByResolvingAliasFile_cold_1(v18);
    }

    *a5 = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E628], 256, 0);
  }

  os_release(v10);
  os_activity_scope_leave(&state);
  return v11;
}

const __CFURL *_CreateByResolvingAliasFile(const __CFAllocator *a1, CFTypeRef cf, unint64_t a3, unsigned __int8 *a4, __CFError **a5)
{
  cf1[128] = *MEMORY[0x1E69E9840];
  propertyValueTypeRefPtr = 0;
  v9 = CFRetain(cf);
  *a4 = 0;
  if (CFURLCopyResourcePropertyForKey(v9, *MEMORY[0x1E695EB18], &propertyValueTypeRefPtr, 0))
  {
    v10 = propertyValueTypeRefPtr == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    goto LABEL_12;
  }

  if (!CFBooleanGetValue(propertyValueTypeRefPtr) || ((cf1[0] = 0, CFURLCopyResourcePropertyForKey(v9, *MEMORY[0x1E695EAC8], cf1, 0)) ? (v11 = cf1[0] == 0) : (v11 = 1), v11))
  {
    CFRelease(propertyValueTypeRefPtr);
    goto LABEL_12;
  }

  v15 = CFEqual(cf1[0], *MEMORY[0x1E695EAD8]);
  v16 = v15;
  if (v15)
  {
    *a4 = 1;
  }

  else if (CFEqual(cf1[0], *MEMORY[0x1E695EAD0]))
  {
    *a4 = 1;
    CFRelease(cf1[0]);
    CFRelease(propertyValueTypeRefPtr);
    v26 = MEMORY[0x19A8C7550](a1, v9, a5);
    if (v26)
    {
      v27 = v26;
      v12 = _CFURLCreateByResolvingBookmarkData(a1, v26, a3, v9, 0, 0, a5);
      CFRelease(v27);
      if (v12 && CFURLIsFileReferenceURL(v12))
      {
        v28 = CFURLCreateFilePathURL(a1, v12, a5);
        CFRelease(v12);
        v12 = v28;
      }

      goto LABEL_13;
    }

LABEL_39:
    v12 = 0;
    goto LABEL_13;
  }

  CFRelease(cf1[0]);
  CFRelease(propertyValueTypeRefPtr);
  if (!v16)
  {
LABEL_12:
    v12 = CFRetain(v9);
    goto LABEL_13;
  }

  if (!CFURLGetFileSystemRepresentation(v9, 1u, cf1, 1024))
  {
    if (a5)
    {
LABEL_45:
      v30 = *MEMORY[0x1E695E628];
      v31 = a1;
      v29 = 260;
      goto LABEL_46;
    }

    goto LABEL_39;
  }

  v17 = readlink(cf1, v34, 0x400uLL);
  if (v17 < 0)
  {
    if (a5)
    {
      v29 = *__error();
      v30 = *MEMORY[0x1E695E640];
      v31 = a1;
LABEL_46:
      v12 = 0;
      *a5 = _FSURLCreateStandardError(v31, v30, v29, 0, v9, 0);
      goto LABEL_13;
    }

    goto LABEL_39;
  }

  v18 = v17;
  if (CFURLHasDirectoryPath(v9))
  {
    v19 = strlen(cf1);
    v20 = CFURLCreateFromFileSystemRepresentation(a1, cf1, v19, 0);
    CFRelease(v9);
    v9 = v20;
  }

  v21 = MEMORY[0x19A8C75B0](a1, v34, v18, 0, v9);
  if (v21)
  {
    v22 = v21;
    if (CFURLGetFileSystemRepresentation(v21, 1u, cf1, 1024))
    {
      v23 = strlen(cf1);
      if (lstat(cf1, &v32))
      {
        v24 = 0;
      }

      else
      {
        v24 = (v32.st_mode & 0xF000) == 0x4000;
      }

      v25 = v24;
      v12 = CFURLCreateFromFileSystemRepresentation(a1, cf1, v23, v25);
    }

    else
    {
      v12 = 0;
    }

    CFRelease(v22);
  }

  else
  {
    v12 = 0;
  }

  if (a5 && !v12)
  {
    goto LABEL_45;
  }

LABEL_13:
  CFRelease(v9);
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

CFTypeRef CFURLCreateByResolvingDataInBookmark(const __CFAllocator *a1, BookmarkData *a2, int a3, unint64_t a4, const __CFArray *a5, unsigned __int8 *a6, __CFError **a7, const __CFURL **a8)
{
  v9 = a3;
  v10 = a2;
  v302 = *MEMORY[0x1E69E9840];
  v292 = 0;
  v293 = 0;
  v291 = 0;
  if (BookmarkData::getMisalignedItemDataPtr(a2, 0x1010u, 0, a3))
  {
    v12 = resolveLog;
    if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
    {
      v29 = copyPathComponentsAsString(v10, v9, 0, 0);
      *buf = 134218242;
      *&buf[4] = a4;
      *&buf[12] = 2112;
      *&buf[14] = v29;
      _os_log_debug_impl(&dword_19602C000, v12, OS_LOG_TYPE_DEBUG, "STARTING RESOLUTION of a bookmark to a filesystem item. options=%#lx, originalItemPath=%@", buf, 0x16u);
      if (v29)
      {
        CFRelease(v29);
      }

      v12 = resolveLog;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      CFURLCreateByResolvingDataInBookmark();
    }

    v276 = a7;
    Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
    URLVolumeProperties = BookmarkData::getURLVolumeProperties(v10, v9, &userInfoValues);
    if (URLVolumeProperties)
    {
      v15 = v301 & userInfoValues & 1;
    }

    else
    {
      v15 = 0;
    }

    TypeID = CFStringGetTypeID();
    cf = BookmarkData::copyItem(v10, 0x2011u, v9, TypeID);
    v18 = resolveLog;
    if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      *&buf[4] = "copyVolumesArrayForBookmark";
      *&buf[12] = 1024;
      *&buf[14] = v9;
      *&buf[18] = 1024;
      *&buf[20] = v15;
      *&buf[24] = 2112;
      *&buf[26] = cf;
      _os_log_debug_impl(&dword_19602C000, v18, OS_LOG_TYPE_DEBUG, "%s: (depth=%u bookmarkItemWasLocal=%{BOOL}d volumeUUID=%@", buf, 0x22u);
    }

    v19 = MEMORY[0x1E695EE50];
    v281 = a1;
    v282 = v9;
    v283 = v10;
    theArray = Mutable;
    if (!v15)
    {
      goto LABEL_31;
    }

    v20 = CFBooleanGetTypeID();
    v21 = BookmarkData::copyItem(v10, 0x2030u, v9, v20);
    if (!v21)
    {
      goto LABEL_31;
    }

    v22 = v21;
    if (CFEqual(v21, *MEMORY[0x1E695E4D0]))
    {
      v23 = CFStringGetTypeID();
      v24 = BookmarkData::copyItem(v10, 0x2002u, v9, v23);
      if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
      {
        CFURLCreateByResolvingDataInBookmark();
        if (v24)
        {
LABEL_16:
          if (CFEqual(v24, @"/"))
          {
            v25 = CFURLCreateWithFileSystemPath(a1, @"/", kCFURLPOSIXPathStyle, 1u);
            if (v25)
            {
              v26 = v25;
              v284 = *v19;
              matched = matchURLProperty(v25, *v19, cf);
              v28 = os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG);
              if (matched)
              {
                v9 = v282;
                if (v28)
                {
                  CFURLCreateByResolvingDataInBookmark();
                }

                CFArrayAppendValue(Mutable, v26);
                CFRelease(v26);
                CFRelease(v24);
                CFRelease(v22);
                if (CFArrayGetCount(Mutable))
                {
                  goto LABEL_74;
                }

                goto LABEL_31;
              }

              if (v28)
              {
                CFURLCreateByResolvingDataInBookmark();
              }

              CFRelease(v26);
              v9 = v282;
            }
          }

          CFRelease(v24);
        }
      }

      else if (v24)
      {
        goto LABEL_16;
      }
    }

    CFRelease(v22);
LABEL_31:
    if (URLVolumeProperties)
    {
      v30 = v301 & ~userInfoValues & 1;
      v31 = (*&v301 & 0x10000 & userInfoValues) != 0;
      v32 = (*&v301 & 0x10000 & ~userInfoValues) != 0;
    }

    else
    {
      v31 = 0;
      v30 = 0;
      v32 = 0;
    }

    v33 = resolveLog;
    if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109888;
      *&buf[4] = v15;
      *&buf[8] = 1024;
      *&buf[10] = v30;
      *&buf[14] = 1024;
      *&buf[16] = v31;
      *&buf[20] = 1024;
      *&buf[22] = v32;
      _os_log_debug_impl(&dword_19602C000, v33, OS_LOG_TYPE_DEBUG, "Necessary matching props for volume from bookmark: wasLocal=%{BOOL}d wasNetwork=%{BOOL}d wasDevFS=%{BOOL}d/%{BOOL}d", buf, 0x1Au);
    }

    if (copyVolumesArrayForBookmark(__CFAllocator const*,BookmarkData &,unsigned int)::onceToken != -1)
    {
      CFURLCreateByResolvingDataInBookmark();
    }

    v34 = MEMORY[0x19A8C7600](*MEMORY[0x1E695E480], 0, copyVolumesArrayForBookmark(__CFAllocator const*,BookmarkData &,unsigned int)::sPropertyKeys);
    v284 = *v19;
    while (1)
    {
      while (1)
      {
        anURL = 0;
        v35 = MEMORY[0x19A8C7610](v34, &anURL, 0);
        v36 = anURL;
        if (anURL && v35 == 1)
        {
          break;
        }

        if (v35 == 2)
        {
          Mutable = theArray;
          goto LABEL_72;
        }
      }

      inited = 0;
      v38 = resolveLog;
      if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
      {
        break;
      }

      if (v15)
      {
LABEL_47:
        if (!_CFURLGetVolumePropertyFlags())
        {
          goto LABEL_48;
        }
      }

      else
      {
LABEL_48:
        if (v30)
        {
          _CFURLGetVolumePropertyFlags();
        }

        if (v32)
        {
          _CFURLGetVolumePropertyFlags();
        }

        if (!v31 || !_CFURLGetVolumePropertyFlags())
        {
          if (cf && matchURLProperty(anURL, v284, cf))
          {
            v39 = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
            v40 = copyPathComponentsAsString(v10, v9, 0, 1);
            v41 = v40;
            if (v39)
            {
              if (!v40)
              {
                v41 = v39;
                goto LABEL_70;
              }

              Length = CFStringGetLength(v39);
              v43 = CFStringGetLength(v41);
              if (v43 >= 2 && CFStringGetCharacterAtIndex(v41, v43 - 1) == 47)
              {
                --v43;
              }

              if (Length != v43 || (v306.location = 0, v306.length = Length, CFStringCompareWithOptions(v41, v39, v306, 0)))
              {
                CFRelease(v41);
                v41 = v39;
                v9 = v282;
                v10 = v283;
LABEL_70:
                CFRelease(v41);
                goto LABEL_71;
              }

              Mutable = theArray;
              CFArrayRemoveAllValues(theArray);
              CFArrayAppendValue(theArray, anURL);
              CFRelease(v41);
              CFRelease(v39);
              v9 = v282;
LABEL_72:
              a1 = v281;
              if (v34)
              {
                CFRelease(v34);
              }

LABEL_74:
              if (cf)
              {
                CFRelease(cf);
              }

              a7 = v276;
              if (!os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
              {
                if (Mutable)
                {
                  goto LABEL_78;
                }

                goto LABEL_105;
              }

              CFURLCreateByResolvingDataInBookmark();
              if (!Mutable)
              {
                goto LABEL_105;
              }

LABEL_78:
              if (CFArrayGetCount(Mutable) >= 2 && BookmarkData::getMisalignedItemDataPtr(v283, 0x2011u, 0, v9))
              {
                v44 = CFStringGetTypeID();
                v45 = BookmarkData::copyItem(v283, 0x2011u, v9, v44);
                if (CFArrayGetCount(Mutable) >= 1)
                {
                  v46 = 0;
                  v47 = 0;
                  v48 = 0;
                  v49 = theArray;
                  while (1)
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(v49, v47);
                    if (matchURLProperty(ValueAtIndex, v284, v45))
                    {
                      if (v48 && !CFEqual(v48, ValueAtIndex))
                      {
                        v86 = resolveLog;
                        if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 138412802;
                          *&buf[4] = v48;
                          *&buf[12] = 2112;
                          *&buf[14] = ValueAtIndex;
                          *&buf[22] = 2112;
                          *&buf[24] = v45;
                          _os_log_debug_impl(&dword_19602C000, v86, OS_LOG_TYPE_DEBUG, "ERROR-- two mounted volumes (%@,%@) have the same UUID %@", buf, 0x20u);
                        }

                        CFRelease(v48);
                        v48 = 0;
                        if (!v45)
                        {
                          goto LABEL_100;
                        }

LABEL_99:
                        CFRelease(v45);
                        goto LABEL_100;
                      }

                      if (ValueAtIndex)
                      {
                        CFRetain(ValueAtIndex);
                      }

                      if (v48 && v48 != ValueAtIndex)
                      {
                        CFRelease(v48);
                      }

                      v48 = ValueAtIndex;
                    }

                    if (v48)
                    {
                      v51 = resolveLog;
                      if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412290;
                        *&buf[4] = v48;
                        _os_log_debug_impl(&dword_19602C000, v51, OS_LOG_TYPE_DEBUG, "Pruning volume list to %@ because its UUID matches the one in the bookmark data.", buf, 0xCu);
                      }

                      CFArrayRemoveAllValues(theArray);
                      CFArrayAppendValue(theArray, v48);
                      v46 = 1;
                    }

                    ++v47;
                    v49 = theArray;
                    if (v47 >= CFArrayGetCount(theArray))
                    {
                      goto LABEL_98;
                    }
                  }
                }

                v46 = 0;
                v48 = 0;
LABEL_98:
                if (v45)
                {
                  goto LABEL_99;
                }

LABEL_100:
                Mutable = theArray;
                if (v48)
                {
                  CFRelease(v48);
                }

                if (v46)
                {
                  v52 = 1;
                  goto LABEL_192;
                }
              }

LABEL_105:
              if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
              {
                CFURLCreateByResolvingDataInBookmark();
              }

              v10 = v283;
              v53 = BookmarkData::getURLVolumeProperties(v283, v9, &userInfoValues);
              if ((a4 & 0x200) == 0)
              {
                if (!v53)
                {
                  goto LABEL_113;
                }

                if ((v301 & 0x200) != 0 && (BYTE1(userInfoValues) & 2) != 0)
                {
                  *buf = 0;
                  if (BookmarkData::getItemAs(v283, 0x2040u, v9, buf))
                  {
                    if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
                    {
                      CFURLCreateByResolvingDataInBookmark();
                    }

                    v71 = CFURLCreateByResolvingDataInBookmark(a1, v283, *buf, a4, &v291, &v292, 0, v70);
                    if (v71)
                    {
                      CFRelease(v71);
                    }
                  }

                  v54 = 0;
                  v291 = 1;
                }

                else
                {
                  if ((v301 & 2) == 0 || (userInfoValues & 2) == 0)
                  {
LABEL_113:
                    v54 = 0;
                    goto LABEL_114;
                  }

                  v72 = CFStringGetTypeID();
                  v73 = BookmarkData::copyItem(v283, 0x2002u, v9, v72);
                  v74 = v73;
                  if (!v73)
                  {
                    goto LABEL_260;
                  }

                  CStringPtr = CFStringGetCStringPtr(v73, 0x8000100u);
                  if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
                  {
                    CFURLCreateByResolvingDataInBookmark();
                    if (CStringPtr)
                    {
                      goto LABEL_149;
                    }

LABEL_148:
                    CStringPtr = buf;
                    if (CFStringGetCString(v74, buf, 1024, 0x8000100u))
                    {
                      goto LABEL_149;
                    }

                    goto LABEL_260;
                  }

                  if (!CStringPtr)
                  {
                    goto LABEL_148;
                  }

LABEL_149:
                  v76 = strlen(CStringPtr);
                  anURL = 0;
                  v77 = getmntinfo_r_np(&anURL, 2);
                  if (!v77)
                  {
                    goto LABEL_260;
                  }

                  if (!v76 || v76 > 0x400uLL || v77 <= 0)
                  {
                    free(anURL);
                    goto LABEL_260;
                  }

                  v54 = 0;
                  v78 = v77 + 1;
                  v79 = 2168 * v77 - 2080;
                  do
                  {
                    v80 = anURL + v79;
                    if (!*(anURL + v79 + v76) && !strcmp(CStringPtr, anURL + v79))
                    {
                      v81 = CFURLCreateFromFileSystemRepresentation(a1, v80, v76, 1u);
                      if (v54 != v81)
                      {
                        v82 = v81;
                        if (v54)
                        {
                          CFRelease(v54);
                        }

                        v54 = v82;
                      }
                    }

                    --v78;
                    v79 -= 2168;
                  }

                  while (v78 > 1);
                  free(anURL);
                  a7 = v276;
                  v9 = v282;
                  if (!v54)
                  {
LABEL_260:
                    v54 = 0;
                    v291 = 1;
                  }

                  if (v74)
                  {
                    CFRelease(v74);
                  }
                }

LABEL_114:
                if (BookmarkData::getMisalignedItemDataPtr(v283, 0x2050u, 0, v9))
                {
                  v55 = CFURLGetTypeID();
                  v56 = BookmarkData::copyItem(v283, 0x2050u, v9, v55);
                  if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
                  {
                    CFURLCreateByResolvingDataInBookmark();
                    if (v56)
                    {
LABEL_117:
                      v57 = *MEMORY[0x1E695E480];
                      v58 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
                      if (!v54)
                      {
                        v59 = CFStringGetTypeID();
                        v60 = BookmarkData::copyItem(v283, 0x2010u, v9, v59);
                        v61 = MEMORY[0x19A8C7600](v57, 0, 0);
                        v62 = MEMORY[0x1E695EE40];
                        if (!v61)
                        {
                          goto LABEL_164;
                        }

                        v63 = v61;
                        v54 = 0;
                        v64 = *MEMORY[0x1E695ED78];
                        cfa = *MEMORY[0x1E695EE40];
                        do
                        {
                          while (1)
                          {
                            *buf = 0;
                            v65 = MEMORY[0x19A8C7610](v63, buf, 0);
                            if (!*buf || v65 != 1)
                            {
                              break;
                            }

                            CFArrayAppendValue(v58, *buf);
                            if (v60)
                            {
                              PathComponent = CFURLCopyLastPathComponent(*buf);
                              if (PathComponent)
                              {
                                v68 = PathComponent;
                                if (CFStringCompare(PathComponent, v60, 0) || !matchURLProperty(*buf, v64, v60) || !matchURLProperty(*buf, cfa, v56))
                                {
                                  goto LABEL_136;
                                }

                                v69 = *buf;
                                if (*buf)
                                {
                                  CFRetain(*buf);
                                }

                                if (v54 == v69)
                                {
LABEL_136:
                                  v69 = v54;
                                }

                                else if (v54)
                                {
                                  CFRelease(v54);
                                }

                                CFRelease(v68);
                                v54 = v69;
                                Mutable = theArray;
                              }
                            }
                          }
                        }

                        while (v65 != 2);
                        CFRelease(v63);
                        if (!v54)
                        {
LABEL_164:
                          if (CFArrayGetCount(v58) < 1)
                          {
                            v54 = 0;
                          }

                          else
                          {
                            v83 = 0;
                            v84 = *v62;
                            while (1)
                            {
                              v54 = CFArrayGetValueAtIndex(v58, v83);
                              v85 = matchURLProperty(v54, v84, v56);
                              if (v54)
                              {
                                if (v85)
                                {
                                  break;
                                }
                              }

                              if (++v83 >= CFArrayGetCount(v58))
                              {
                                v54 = 0;
                                goto LABEL_179;
                              }
                            }

                            CFRetain(v54);
                          }
                        }

LABEL_179:
                        if (v60)
                        {
                          CFRelease(v60);
                        }

                        a1 = v281;
                        v9 = v282;
                      }

                      if (v58)
                      {
                        CFRelease(v58);
                      }
                    }
                  }

                  else if (v56)
                  {
                    goto LABEL_117;
                  }

                  if (!v54)
                  {
                    v291 = 1;
                  }

                  if (v56)
                  {
                    CFRelease(v56);
                  }
                }

                if (v54)
                {
                  if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
                  {
                    CFURLCreateByResolvingDataInBookmark();
                  }

                  v52 = v291 != 0;
                  CFArrayInsertValueAtIndex(Mutable, 0, v54);
                  CFRelease(v54);
LABEL_192:
                  v10 = v283;
LABEL_200:
                  if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
                  {
                    CFURLCreateByResolvingDataInBookmark();
                  }

                  if (v293)
                  {
                    v16 = 0;
                    goto LABEL_366;
                  }

                  v90 = CFNumberGetTypeID();
                  v91 = BookmarkData::copyItem(v10, 0xC001u, v282, v90);
                  if (v91)
                  {
                    v92 = v91;
                    *buf = 0;
                    if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
                    {
                      CFURLCreateByResolvingDataInBookmark();
                    }

                    CFRetain(v92);
                    Value = CFNumberGetValue(v92, kCFNumberSInt32Type, buf);
                    CFRelease(v92);
                    if (Value)
                    {
                      v96 = copyHomeFolderURLForUser(0, v94, v95);
                      if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
                      {
                        CFURLCreateByResolvingDataInBookmark();
                      }

                      if (*buf)
                      {
                        v97 = copyPathComponentsAsArray(v10, v282, 0);
                        v98 = v97;
                        if (v97)
                        {
                          Count = CFArrayGetCount(v97);
                        }

                        else
                        {
                          Count = 0;
                        }

                        if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
                        {
                          CFURLCreateByResolvingDataInBookmark(buf);
                        }

                        v101.length = *buf;
                        if (Count >= *buf)
                        {
                          v101.location = Count - *buf;
                          v102 = copyOfArray(v281, v98, v101);
                          v103 = CFStringCreateByCombiningStrings(v281, v102, @"/");
                          v104 = isDirectory(v10, v282);
                          v105 = MEMORY[0x19A8C75E0](v281, v103, 0, v104, v96);
                          if (v105)
                          {
                            v106 = v105;
                            v100 = CFURLCopyAbsoluteURL(v105);
                            CFRelease(v106);
                          }

                          else
                          {
                            v100 = 0;
                          }

                          v10 = v283;
                          if (v103)
                          {
                            CFRelease(v103);
                          }

                          if (v102)
                          {
                            CFRelease(v102);
                          }
                        }

                        else
                        {
                          v100 = 0;
                        }

                        if (v98)
                        {
                          CFRelease(v98);
                        }
                      }

                      else
                      {
                        if (v96)
                        {
                          CFRetain(v96);
                        }

                        v100 = v96;
                        if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
                        {
                          CFURLCreateByResolvingDataInBookmark();
                          v100 = v96;
                        }
                      }

                      if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
                      {
                        CFURLCreateByResolvingDataInBookmark();
                      }

                      if (matchURLToBookmark(v10, v282, v100, &v291, v107))
                      {
                        if (v100)
                        {
                          CFRetain(v100);
                          v108 = v100;
                        }

                        else
                        {
                          v108 = 0;
                        }

                        if (v293 == v108)
                        {
                          v16 = 0;
                        }

                        else
                        {
                          if (v293)
                          {
                            CFRelease(v293);
                          }

                          v16 = 0;
                          v293 = v108;
                        }
                      }

                      else
                      {
                        v16 = 0;
                        if (a7 && v100)
                        {
                          CFRetain(v100);
                          v16 = v100;
                        }

                        v108 = v293;
                      }

                      if (!v108)
                      {
                        v109 = CFStringGetTypeID();
                        v110 = BookmarkData::copyItem(v10, 0xC011u, v282, v109);
                        if (v110)
                        {
                          v111 = v110;
                          v112 = CFCopyUserName();
                          cfb = v111;
                          v113 = CFEqual(v111, v112);
                          v116 = v113;
                          if (v112)
                          {
                            CFRelease(v112);
                            if (v116)
                            {
                              goto LABEL_252;
                            }

LABEL_256:
                            v118 = cfb;
                            v285 = copyHomeFolderURLForUser(cfb, v114, v115);
                            if (v96 == v285)
                            {
                              v285 = v96;
                            }

                            else if (v96)
                            {
                              CFRelease(v96);
                            }

                            if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
                            {
                              CFURLCreateByResolvingDataInBookmark();
                            }

                            if (*buf)
                            {
                              v119 = copyPathComponentsAsArray(v10, v282, 0);
                              v120 = v119;
                              if (v119)
                              {
                                v121 = CFArrayGetCount(v119);
                              }

                              else
                              {
                                v121 = 0;
                              }

                              if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
                              {
                                CFURLCreateByResolvingDataInBookmark(buf);
                              }

                              v122.length = *buf;
                              if (v121 >= *buf)
                              {
                                v122.location = v121 - *buf;
                                v278 = copyOfArray(v281, v120, v122);
                                v123 = CFStringCreateByCombiningStrings(v281, v278, @"/");
                                v124 = isDirectory(v10, v282);
                                v125 = MEMORY[0x19A8C75E0](v281, v123, 0, v124, v285);
                                v126 = v125;
                                if (v125)
                                {
                                  v117 = CFURLCopyAbsoluteURL(v125);
                                }

                                else
                                {
                                  v117 = 0;
                                }

                                if (v100 == v117)
                                {
                                  v117 = v100;
                                }

                                else if (v100)
                                {
                                  CFRelease(v100);
                                }

                                if (v126)
                                {
                                  CFRelease(v126);
                                }

                                if (v123)
                                {
                                  CFRelease(v123);
                                }

                                if (v278)
                                {
                                  CFRelease(v278);
                                }
                              }

                              else
                              {
                                v117 = v100;
                              }

                              v118 = cfb;
                              if (v120)
                              {
                                CFRelease(v120);
                              }
                            }

                            else
                            {
                              if (v285)
                              {
                                CFRetain(v285);
                              }

                              if (v100 == v285)
                              {
                                v117 = v100;
                              }

                              else
                              {
                                v117 = v285;
                                if (v100)
                                {
                                  CFRelease(v100);
                                  v117 = v285;
                                }
                              }

                              if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
                              {
                                CFURLCreateByResolvingDataInBookmark();
                              }
                            }

                            if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
                            {
                              CFURLCreateByResolvingDataInBookmark();
                            }

                            if (matchURLToBookmark(v10, v282, v117, &v291, v127))
                            {
                              if (v117)
                              {
                                CFRetain(v117);
                                v128 = v117;
                              }

                              else
                              {
                                v128 = 0;
                              }

                              if (v293 != v128)
                              {
                                if (v293)
                                {
                                  CFRelease(v293);
                                }

                                v293 = v128;
                              }
                            }

                            v96 = v285;
                          }

                          else
                          {
                            if (!v113)
                            {
                              goto LABEL_256;
                            }

LABEL_252:
                            v117 = v100;
                            v118 = cfb;
                          }

                          CFRelease(v118);
                          v100 = v117;
                        }
                      }

                      if (v96)
                      {
                        CFRelease(v96);
                      }

                      if (v100)
                      {
                        CFRelease(v100);
                      }

                      Mutable = theArray;
                    }

                    else
                    {
                      v16 = 0;
                    }

                    if (!v293)
                    {
                      v291 = 1;
                    }

                    CFRelease(v92);
                  }

                  else
                  {
                    v16 = 0;
                  }

                  a1 = v281;
                  if (v293)
                  {
                    goto LABEL_366;
                  }

                  if (!BookmarkData::getURLResourceProperties(v10, v282, buf) || (buf[8] & 8) == 0 || (buf[0] & 8) == 0)
                  {
                    goto LABEL_344;
                  }

                  v129 = CFBooleanGetTypeID();
                  v130 = BookmarkData::copyItem(v10, 0x2030u, v282, v129);
                  if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
                  {
                    CFURLCreateByResolvingDataInBookmark();
                    if (!v130)
                    {
                      goto LABEL_332;
                    }

LABEL_325:
                    if (!CFEqual(v130, *MEMORY[0x1E695E4D0]))
                    {
                      goto LABEL_332;
                    }

                    v133 = CFURLCreateWithFileSystemPath(v281, @"/", kCFURLPOSIXPathStyle, 1u);
                    if (v293 != v133)
                    {
                      if (v293)
                      {
                        CFRelease(v293);
                      }

                      v293 = v133;
                    }

                    CFRelease(v130);
                  }

                  else
                  {
                    if (v130)
                    {
                      goto LABEL_325;
                    }

LABEL_332:
                    if (v52)
                    {
                      v133 = matchVolumeURLForBookmark(v10, v282, Mutable, &v291, v131, v132);
                    }

                    else
                    {
                      v134 = CFArrayGetValueAtIndex(Mutable, 0);
                      v133 = v134;
                      if (v134)
                      {
                        CFRetain(v134);
                      }
                    }

                    if (v293 != v133)
                    {
                      if (v293)
                      {
                        CFRelease(v293);
                      }

                      v293 = v133;
                    }

                    if (v130)
                    {
                      CFRelease(v130);
                      if (!v133)
                      {
                        goto LABEL_342;
                      }

LABEL_344:
                      if (v293)
                      {
                        goto LABEL_366;
                      }

                      v135 = CFBooleanGetTypeID();
                      v136 = BookmarkData::copyItem(v10, 0x2030u, v282, v135);
                      if (v136)
                      {
                        v139 = v136;
                        if (CFEqual(v136, *MEMORY[0x1E695E4D0]))
                        {
                          v140 = copyPathComponentsAsString(v10, v282, 0, 1);
                          if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
                          {
                            CFURLCreateByResolvingDataInBookmark();
                            if (v140)
                            {
LABEL_349:
                              v141 = isDirectory(v10, v282);
                              v142 = CFURLCreateWithFileSystemPath(v281, v140, kCFURLPOSIXPathStyle, v141);
                              if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
                              {
                                CFURLCreateByResolvingDataInBookmark();
                              }

                              Mutable = theArray;
                              if (matchURLToBookmark(v10, v282, v142, &v291, v143))
                              {
                                if (v142)
                                {
                                  CFRetain(v142);
                                }

                                if (v293 != v142)
                                {
                                  if (v293)
                                  {
                                    CFRelease(v293);
                                  }

                                  v293 = v142;
                                }
                              }

                              if (v142)
                              {
                                CFRelease(v142);
                              }
                            }
                          }

                          else if (v140)
                          {
                            goto LABEL_349;
                          }

                          if (!v293)
                          {
                            v291 = 1;
                          }

                          if (v140)
                          {
                            CFRelease(v140);
                          }
                        }

                        CFRelease(v139);
                      }

                      if (v293)
                      {
LABEL_366:
                        v9 = v282;
                        goto LABEL_367;
                      }

                      if (v52)
                      {
                        v9 = v282;
                        v165 = matchVolumeURLForBookmark(v10, v282, Mutable, &v291, v137, v138);
                        if (!v165)
                        {
LABEL_616:
                          v258 = CFStringGetTypeID();
                          v259 = BookmarkData::copyItem(v10, 0x2010u, v9, v258);
                          if (v259)
                          {
                            v260 = v259;
                            v291 = 1;
                            v261 = MEMORY[0x19A8C7600](*MEMORY[0x1E695E480], 0, 0);
                            *buf = 0;
                            v262 = MEMORY[0x19A8C7610](v261, buf, 0);
                            v165 = 0;
                            if (v262 != 2)
                            {
                              v165 = 0;
                              v263 = *MEMORY[0x1E695ED78];
                              do
                              {
                                if (v262 != 1 || !*buf)
                                {
                                  goto LABEL_630;
                                }

                                userInfoValues = 0;
                                if (!CFURLCopyResourcePropertyForKey(*buf, v263, &userInfoValues, 0))
                                {
                                  goto LABEL_626;
                                }

                                if (!userInfoValues)
                                {
                                  goto LABEL_630;
                                }

                                v264 = CFGetTypeID(userInfoValues);
                                if (v264 == CFStringGetTypeID())
                                {
                                  v265 = 1;
                                  if (CFStringCompare(v260, userInfoValues, 1uLL) == kCFCompareEqualTo)
                                  {
                                    v165 = *buf;
                                    CFRetain(*buf);
                                    v265 = 0;
                                  }
                                }

                                else
                                {
LABEL_626:
                                  v265 = 1;
                                }

                                if (userInfoValues)
                                {
                                  CFRelease(userInfoValues);
                                }

                                if (!v265)
                                {
                                  break;
                                }

LABEL_630:
                                v262 = MEMORY[0x19A8C7610](v261, buf, 0);
                              }

                              while (v262 != 2);
                            }

                            if (v261)
                            {
                              CFRelease(v261);
                            }

                            CFRelease(v260);
                          }

                          else
                          {
                            v165 = 0;
                          }
                        }
                      }

                      else
                      {
                        v257 = CFArrayGetValueAtIndex(Mutable, 0);
                        v9 = v282;
                        if (!v257)
                        {
                          goto LABEL_616;
                        }

                        v165 = v257;
                        CFRetain(v257);
                      }

                      v266 = copyVolumePathComponentsAsArray(v10, v9);
                      v267 = v266;
                      if (v266)
                      {
                        v268 = CFArrayGetCount(v266);
                      }

                      else
                      {
                        v268 = 0;
                      }

                      v269 = copyPathComponentsAsString(v10, v9, v268, 0);
                      v270 = v269;
                      if (v165)
                      {
                        if (v269)
                        {
                          v271 = isDirectory(v10, v9);
                          v272 = MEMORY[0x19A8C75E0](v281, v270, 0, v271, v165);
                          v273 = resolveLog;
                          if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
                          {
                            *buf = 138413058;
                            *&buf[4] = v272;
                            *&buf[12] = 2112;
                            *&buf[14] = v267;
                            *&buf[22] = 2112;
                            *&buf[24] = v270;
                            *&buf[32] = 2112;
                            *&buf[34] = v165;
                            _os_log_debug_impl(&dword_19602C000, v273, OS_LOG_TYPE_DEBUG, "4. Trying to match by volume name + path components, maybeURL=%@ volumePathElements=%@ pathComponents=%@ volumeURL=%@", buf, 0x2Au);
                            if (!v272)
                            {
                              goto LABEL_664;
                            }

LABEL_654:
                            if (!matchURLToBookmark(v10, v9, v272, &v291, v274))
                            {
                              goto LABEL_664;
                            }

                            v275 = CFURLCopyAbsoluteURL(v272);
                            if (v293 != v275)
                            {
                              if (v293)
                              {
                                CFRelease(v293);
                              }

                              v293 = v275;
                            }
                          }

                          else
                          {
                            if (v272)
                            {
                              goto LABEL_654;
                            }

LABEL_664:
                            v275 = v293;
                          }

                          if (!v275)
                          {
                            v291 = 1;
                          }

                          if (v272)
                          {
                            CFRelease(v272);
                          }

LABEL_669:
                          CFRelease(v270);
                        }
                      }

                      else if (v269)
                      {
                        goto LABEL_669;
                      }

                      if (v267)
                      {
                        CFRelease(v267);
                      }

                      if (v165)
                      {
                        CFRelease(v165);
                      }

LABEL_367:
                      v144 = v293;
                      v145 = 1;
                      if ((a4 & 0x200) != 0 && !v293)
                      {
                        v145 = !BookmarkData::getURLVolumeProperties(v10, v9, buf) || (buf[8] & 2) == 0 || (buf[0] & 2) == 0;
                        v144 = v293;
                      }

                      if (v144 || !v145)
                      {
                        *buf = *MEMORY[0x1E695E618];
                        userInfoValues = @"kCFBookmarkResolutionWithoutMountingMask was passed and the volume needed wasn't available";
                        v163 = CFErrorCreateWithUserInfoKeysAndValues(a1, *MEMORY[0x1E695E628], 260, buf, &userInfoValues, 1);
                        if (v292 != v163)
                        {
                          if (v292)
                          {
                            CFRelease(v292);
                          }

                          v292 = v163;
                        }

                        v164 = v293;
                        goto LABEL_413;
                      }

                      v291 = 1;
                      if (bookmarkHasPathComponents(v10, v9))
                      {
                        v146 = CFArrayGetTypeID();
                        v147 = BookmarkData::copyItem(v10, 0x2000u, v9, v146);
                        if (!os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
                        {
                          if (v147)
                          {
                            goto LABEL_379;
                          }

                          goto LABEL_419;
                        }

                        CFURLCreateByResolvingDataInBookmark();
                        if (!v147)
                        {
                          goto LABEL_419;
                        }

LABEL_379:
                        v148 = countPathComponents(v10, v282);
                        v149 = CFArrayGetCount(v147);
                        if (v149 >= v148)
                        {
                          v150 = v148;
                        }

                        else
                        {
                          v150 = v149;
                        }

                        if (v150 >= 1)
                        {
                          while (2)
                          {
                            if (v293)
                            {
                              goto LABEL_431;
                            }

                            v151 = v150 - 1;
                            *buf = CFArrayGetValueAtIndex(v147, v150 - 1);
                            CFNumber::CFNumber(&userInfoValues, buf);
                            LODWORD(anURL) = 0;
                            if (userInfoValues)
                            {
                              if (CFNumberGetValue(userInfoValues, kCFNumberSInt32Type, &anURL))
                              {
                                if (anURL)
                                {
                                  v154 = matchVolumeURLForBookmark(v10, anURL, theArray, 0, v152, v153);
                                  if (v154)
                                  {
                                    v155 = v154;
                                    if (v150 > 0x7FFFFFFE)
                                    {
                                      v156 = 0;
                                    }

                                    else
                                    {
                                      v156 = copyPathComponentsAsString(v10, v282, v150 - 1, 0);
                                    }

                                    v157 = resolveLog;
                                    if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
                                    {
                                      *buf = 138412802;
                                      *&buf[4] = v155;
                                      *&buf[12] = 2112;
                                      *&buf[14] = v156;
                                      *&buf[22] = 1024;
                                      *&buf[24] = anURL;
                                      _os_log_debug_impl(&dword_19602C000, v157, OS_LOG_TYPE_DEBUG, "5a.  Trying volume url=%@ with partial path %@ volumeDepth=%u", buf, 0x1Cu);
                                      if (v156)
                                      {
LABEL_393:
                                        v158 = MEMORY[0x19A8C75E0](v281, v156, 0, 0, v155);
                                        if (v158)
                                        {
                                          v160 = v158;
                                          if (matchURLToBookmark(v10, v282, v158, &v291, v159))
                                          {
                                            v161 = CFURLCopyAbsoluteURL(v160);
                                            if (v293 != v161)
                                            {
                                              if (v293)
                                              {
                                                CFRelease(v293);
                                              }

                                              v293 = v161;
                                            }
                                          }

                                          CFRelease(v160);
                                          v10 = v283;
                                        }

                                        CFRelease(v156);
                                      }
                                    }

                                    else if (v156)
                                    {
                                      goto LABEL_393;
                                    }

                                    CFRelease(v155);
                                  }
                                }
                              }

                              if (userInfoValues)
                              {
                                CFRelease(userInfoValues);
                              }
                            }

                            v150 = v151;
                            v162 = (v151 + 1) > 1;
                            a1 = v281;
                            if (!v162)
                            {
                              break;
                            }

                            continue;
                          }
                        }

LABEL_419:
                        if (!v293)
                        {
                          v166 = copyPathComponentsAsString(v10, v282, 0, 0);
                          if (v166)
                          {
                            v167 = v166;
                            v168 = CFURLCreateWithFileSystemPath(a1, v166, kCFURLPOSIXPathStyle, 0);
                            if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
                            {
                              CFURLCreateByResolvingDataInBookmark();
                            }

                            if (v168)
                            {
                              if (matchURLToBookmark(v283, v282, v168, &v291, v169))
                              {
                                v170 = CFURLCopyAbsoluteURL(v168);
                                if (v293 != v170)
                                {
                                  if (v293)
                                  {
                                    CFRelease(v293);
                                  }

                                  v293 = v170;
                                }
                              }

                              CFRelease(v168);
                            }

                            CFRelease(v167);
                            v10 = v283;
                          }
                        }

LABEL_431:
                        a7 = v276;
                        v9 = v282;
                        if (v147)
                        {
                          CFRelease(v147);
                        }
                      }

                      if (v293)
                      {
                        goto LABEL_460;
                      }

                      if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
                      {
                        CFURLCreateByResolvingDataInBookmark();
                      }

                      v173 = matchVolumeURLForBookmark(v10, v9, theArray, &v291, v171, v172);
                      if (v173)
                      {
                        v174 = v173;
                        if (!volumeSupportsPathFromID(v173))
                        {
                          goto LABEL_451;
                        }

                        v175 = CFNumberGetTypeID();
                        v176 = BookmarkData::copyItem(v10, 0x1030u, v9, v175);
                        if (v176)
                        {
                          goto LABEL_439;
                        }

                        v180 = CFArrayGetTypeID();
                        v181 = BookmarkData::copyItem(v10, 0x1005u, v9, v180);
                        if (v181)
                        {
                          v176 = v181;
                          if (CFArrayGetCount(v181) < 1)
                          {
                            goto LABEL_452;
                          }

                          v182 = CFArrayGetCount(v176);
                          v183 = CFArrayGetValueAtIndex(v176, v182 - 1);
                          if (!v183)
                          {
                            goto LABEL_452;
                          }

                          v184 = v183;
                          v185 = CFGetTypeID(v183);
                          if (v185 != CFNumberGetTypeID())
                          {
                            v177 = 0;
                            v10 = v283;
                            goto LABEL_453;
                          }

                          v186 = CFRetain(v184);
                          v10 = v283;
                          if (!v186)
                          {
LABEL_452:
                            v177 = 0;
                            goto LABEL_453;
                          }

                          v187 = v186;
                          CFRelease(v176);
                          v176 = v187;
LABEL_439:
                          v177 = _CFURLCreateWithVolumeURLAndResourceID(a1, v174, v176);
                          v178 = resolveLog;
                          if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
                          {
                            *buf = 67109890;
                            *&buf[4] = v9;
                            *&buf[8] = 2048;
                            *&buf[10] = a4;
                            *&buf[18] = 2112;
                            *&buf[20] = v176;
                            *&buf[28] = 2112;
                            *&buf[30] = v174;
                            _os_log_debug_impl(&dword_19602C000, v178, OS_LOG_TYPE_DEBUG, " -- Trying to match by targetFileID, depth=%u  options=%#lx fileID=%@ on volume %@", buf, 0x26u);
                          }

                          if ((matchURLToBookmark(v10, v9, v177, &v291, v179) & 1) == 0 && v177)
                          {
                            CFRelease(v177);
                            goto LABEL_452;
                          }

LABEL_453:
                          CFRelease(v176);
                        }

                        else
                        {
LABEL_451:
                          v177 = 0;
                        }

                        CFRelease(v174);
                      }

                      else
                      {
                        v177 = 0;
                      }

                      if (v293 != v177)
                      {
                        if (v293)
                        {
                          CFRelease(v293);
                        }

                        v293 = v177;
                      }

                      if (v177)
                      {
LABEL_460:
                        v188 = *MEMORY[0x1E695EA60];
                        v189 = CFNumberGetTypeID();
                        v190 = BookmarkData::copyItem(v10, v188, v9, v189);
                        *buf = 0;
                        CFURLCopyResourcePropertyForKey(v293, v188, buf, 0);
                        if (v190)
                        {
                          if (!*buf || !CFEqual(v190, *buf))
                          {
LABEL_465:
                            v291 = 1;
                          }

                          if (*buf)
                          {
                            CFRelease(*buf);
                          }

                          if (v190)
                          {
                            CFRelease(v190);
                          }
                        }

                        else if (*buf)
                        {
                          goto LABEL_465;
                        }

LABEL_470:
                        if (v293 && (BookmarkData::getMisalignedItemDataPtr(v10, 0x1101u, 0, v9) || BookmarkData::getMisalignedItemDataPtr(v10, 0x1102u, 0, v9)))
                        {
                          v191 = CFStringGetTypeID();
                          v192 = BookmarkData::copyItem(v10, 0x1102u, v9, v191);
                          v193 = CFStringGetTypeID();
                          v194 = BookmarkData::copyItem(v10, 0x1101u, v9, v193);
                          v298 = 0;
                          v299 = CFStringCreateMutable(a1, 0);
                          v195 = CFURLGetString(v293);
                          v196 = CFStringGetLength(v195);
                          v197 = v298;
                          if (v196 < 1025)
                          {
                            v199 = v196;
                            if (v298 + v196 >= 1025)
                            {
                              CFStringAppendCharacters(v299, buf, v298);
                              v197 = 0;
                              v298 = 0;
                            }

                            v200 = &buf[2 * v197];
                            v303.location = 0;
                            v303.length = v199;
                            CFStringGetCharacters(v195, v303, v200);
                            v198 = v298 + v199;
                            v298 += v199;
                            if (v192)
                            {
                              goto LABEL_481;
                            }

LABEL_487:
                            if (v194)
                            {
LABEL_492:
                              if (v198 >= 1024)
                              {
                                CFStringAppendCharacters(v299, buf, v198);
                                v198 = 0;
                                v298 = 0;
                              }

                              *&buf[2 * v198] = 35;
                              ++v298;
                              v205 = CFStringGetLength(v194);
                              v206 = v298;
                              if (v205 <= 1024)
                              {
                                v207 = v205;
                                if (v298 + v205 >= 1025)
                                {
                                  CFStringAppendCharacters(v299, buf, v298);
                                  v206 = 0;
                                  v298 = 0;
                                }

                                v208 = &buf[2 * v206];
                                v305.location = 0;
                                v305.length = v207;
                                CFStringGetCharacters(v194, v305, v208);
                                v198 = v298 + v207;
                                v298 += v207;
                              }

                              else
                              {
                                if (v298)
                                {
                                  CFStringAppendCharacters(v299, buf, v298);
                                  v298 = 0;
                                }

                                CFStringAppend(v299, v194);
                                v198 = v298;
                              }
                            }
                          }

                          else
                          {
                            if (v298)
                            {
                              CFStringAppendCharacters(v299, buf, v298);
                              v298 = 0;
                            }

                            CFStringAppend(v299, v195);
                            v198 = v298;
                            if (!v192)
                            {
                              goto LABEL_487;
                            }

LABEL_481:
                            if (v198 >= 1024)
                            {
                              CFStringAppendCharacters(v299, buf, v198);
                              v198 = 0;
                              v298 = 0;
                            }

                            *&buf[2 * v198] = 63;
                            ++v298;
                            v201 = CFStringGetLength(v192);
                            v202 = v298;
                            if (v201 > 1024)
                            {
                              if (v298)
                              {
                                CFStringAppendCharacters(v299, buf, v298);
                                v298 = 0;
                              }

                              CFStringAppend(v299, v192);
                              v198 = v298;
                              goto LABEL_487;
                            }

                            v203 = v201;
                            if (v298 + v201 >= 1025)
                            {
                              CFStringAppendCharacters(v299, buf, v298);
                              v202 = 0;
                              v298 = 0;
                            }

                            v204 = &buf[2 * v202];
                            v304.location = 0;
                            v304.length = v203;
                            CFStringGetCharacters(v192, v304, v204);
                            v198 = v298 + v203;
                            v298 += v203;
                            if (v194)
                            {
                              goto LABEL_492;
                            }
                          }

                          if (v198)
                          {
                            CFStringAppendCharacters(v299, buf, v198);
                            v298 = 0;
                          }

                          v209 = v299;
                          v299 = 0;
                          v210 = CFURLGetBaseURL(v293);
                          userInfoValues = CFURLCreateWithString(a1, v209, v210);
                          CFReleaser<__CFData const*>::operator=(&v293, &userInfoValues);
                          if (userInfoValues)
                          {
                            CFRelease(userInfoValues);
                          }

                          if (v209)
                          {
                            CFRelease(v209);
                          }

                          if (v194)
                          {
                            CFRelease(v194);
                          }

                          if (v192)
                          {
                            CFRelease(v192);
                          }
                        }

                        Mutable = theArray;
                        if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
                        {
                          CFURLCreateByResolvingDataInBookmark(&v293);
                        }

                        v89 = 1;
LABEL_514:
                        if (Mutable)
                        {
                          CFRelease(Mutable);
                        }

                        if (v89)
                        {
                          if (!v293)
                          {
                            goto LABEL_518;
                          }

                          goto LABEL_526;
                        }

                        goto LABEL_533;
                      }

                      if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
                      {
                        CFURLCreateByResolvingDataInBookmark();
                      }

                      v225 = CFArrayGetTypeID();
                      v226 = BookmarkData::copyItem(v10, 0x1005u, v9, v225);
                      v227 = countPathComponents(v10, v9);
                      if (v226)
                      {
                        LODWORD(v228) = v227;
                        v229 = CFArrayGetTypeID();
                        v230 = BookmarkData::copyItem(v10, 0x2000u, v9, v229);
                        if (v230)
                        {
                          v233 = v230;
                          v234 = CFArrayGetCount(v230);
                          cfc = v228;
                          if (v234 >= v228)
                          {
                            v228 = v228;
                          }

                          else
                          {
                            v228 = v234;
                          }

                          if (v228 >= 1)
                          {
                            while (1)
                            {
                              *buf = CFArrayGetValueAtIndex(v233, (v228 - 1));
                              CFNumber::CFNumber(&userInfoValues, buf);
                              LODWORD(anURL) = 0;
                              if (!userInfoValues)
                              {
                                v164 = 0;
                                goto LABEL_576;
                              }

                              if (!CFNumberGetValue(userInfoValues, kCFNumberSInt32Type, &anURL) || anURL == 0)
                              {
                                break;
                              }

                              LOBYTE(inited) = 0;
                              v238 = matchVolumeURLForBookmark(v10, anURL, theArray, &inited, v235, v236);
                              v239 = v238;
                              if (v238)
                              {
                                v240 = resolveLog;
                                if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
                                {
                                  *buf = 138412546;
                                  *&buf[4] = v239;
                                  *&buf[12] = 2112;
                                  *&buf[14] = v226;
                                  _os_log_debug_impl(&dword_19602C000, v240, OS_LOG_TYPE_DEBUG, " --  on volume=%@ fileIDRefs=%@", buf, 0x16u);
                                }

                                v10 = v283;
                                v241 = resolveBookmarkByRelativePathFromFileIDOnGivenVolume(v281, v283, v282, a4, v239, v226, v228, cfc, &v291);
                                v164 = v241;
                                if (!v291 && v241)
                                {
                                  v291 = inited;
                                }

                                CFRelease(v239);
                                goto LABEL_572;
                              }

                              v164 = 0;
LABEL_573:
                              if (userInfoValues)
                              {
                                CFRelease(userInfoValues);
                              }

                              if (!v239)
                              {
LABEL_581:
                                a7 = v276;
                                v9 = v282;
                                goto LABEL_587;
                              }

LABEL_576:
                              if (v228 >= 2)
                              {
                                --v228;
                                if (!v164)
                                {
                                  continue;
                                }
                              }

                              goto LABEL_581;
                            }

                            v164 = 0;
LABEL_572:
                            LODWORD(v239) = 1;
                            goto LABEL_573;
                          }

                          v164 = 0;
LABEL_587:
                          CFRelease(v233);
                        }

                        else
                        {
                          v233 = matchVolumeURLForBookmark(v10, v9, theArray, &v291, v231, v232);
                          if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
                          {
                            CFURLCreateByResolvingDataInBookmark();
                          }

                          v164 = resolveBookmarkByRelativePathFromFileIDOnGivenVolume(v281, v10, v9, a4, v233, v226, 0, v228, &v291);
                          if (v233)
                          {
                            goto LABEL_587;
                          }
                        }

                        CFRelease(v226);
                        a1 = v281;
                      }

                      else
                      {
                        v164 = 0;
                      }

                      if (v293 != v164)
                      {
                        if (v293)
                        {
                          CFRelease(v293);
                        }

                        v293 = v164;
                      }

                      if (v9 != 1 || v164)
                      {
LABEL_413:
                        if (v164)
                        {
                          goto LABEL_460;
                        }

                        goto LABEL_470;
                      }

                      if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
                      {
                        CFURLCreateByResolvingDataInBookmark();
                      }

                      gotLoadHelper_x8__GSLibraryResolveDocumentId2(v242);
                      if (!*(v243 + 1952) || (v244 = *MEMORY[0x1E695EA60], v245 = CFNumberGetTypeID(), (v246 = BookmarkData::copyItem(v10, v244, 1, v245)) == 0))
                      {
                        v164 = 0;
                        goto LABEL_641;
                      }

                      v249 = v246;
                      v250 = matchVolumeURLForBookmark(v10, 1u, theArray, &v291, v247, v248);
                      if (!v250)
                      {
                        v164 = 0;
                        goto LABEL_640;
                      }

                      v251 = v250;
                      if (volumeSupportsPathFromID(v250))
                      {
                        userInfoValues = 0;
                        if (!CFURLCopyResourcePropertyForKey(v251, *MEMORY[0x1E695E3E8], &userInfoValues, 0))
                        {
                          goto LABEL_636;
                        }

                        if (userInfoValues)
                        {
                          anURL = 0;
                          valuePtr = 0;
                          if (CFNumberGetValue(userInfoValues, kCFNumberSInt32Type, &valuePtr))
                          {
                            if (CFNumberGetValue(v249, kCFNumberSInt64Type, &anURL))
                            {
                              inited = GSLibraryResolveDocumentId2_delayInitStub(v252);
                              if (inited)
                              {
                                v253 = CFNumberCreate(a1, kCFNumberSInt64Type, &inited);
                                if (v253)
                                {
                                  v254 = v253;
                                  v164 = _CFURLCreateWithVolumeURLAndResourceID(a1, v251, v253);
                                  v255 = resolveLog;
                                  if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
                                  {
                                    *buf = 134218498;
                                    *&buf[4] = a4;
                                    *&buf[12] = 2112;
                                    *&buf[14] = v254;
                                    *&buf[22] = 2112;
                                    *&buf[24] = v251;
                                    _os_log_debug_impl(&dword_19602C000, v255, OS_LOG_TYPE_DEBUG, " -- Trying to match by targetFileID from documentID, options=%#lx fileID=%@ on volume %@", buf, 0x20u);
                                  }

                                  if ((matchURLToBookmark(v10, 1u, v164, &v291, v256) & 1) == 0 && v164)
                                  {
                                    CFRelease(v164);
                                    v164 = 0;
                                  }

                                  CFRelease(v254);
                                }

                                else
                                {
                                  v164 = 0;
                                }

LABEL_637:
                                if (userInfoValues)
                                {
                                  CFRelease(userInfoValues);
                                }

LABEL_639:
                                CFRelease(v251);
LABEL_640:
                                CFRelease(v249);
LABEL_641:
                                if (v293 != v164)
                                {
                                  if (v293)
                                  {
                                    CFRelease(v293);
                                  }

                                  v293 = v164;
                                }

                                goto LABEL_413;
                              }
                            }
                          }

LABEL_636:
                          v164 = 0;
                          goto LABEL_637;
                        }
                      }

                      v164 = 0;
                      goto LABEL_639;
                    }
                  }

                  if (v133)
                  {
                    goto LABEL_344;
                  }

LABEL_342:
                  v89 = 0;
                  v9 = v282;
                  goto LABEL_514;
                }

                v87 = CFErrorCreate(a1, *MEMORY[0x1E695E628], 4, 0);
                v292 = v87;
                v10 = v283;
                if (v87)
                {
                  Domain = CFErrorGetDomain(v87);
                  if (CFEqual(Domain, *MEMORY[0x1E695E638]))
                  {
                    if (CFErrorGetCode(v292) == -128)
                    {
                      if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
                      {
                        CFURLCreateByResolvingDataInBookmark();
                      }

                      v16 = 0;
                      v89 = 0;
                      goto LABEL_514;
                    }
                  }
                }
              }

              v52 = 1;
              goto LABEL_200;
            }

            if (v40)
            {
              goto LABEL_70;
            }
          }

LABEL_71:
          CFArrayAppendValue(theArray, anURL);
        }
      }
    }

    *buf = 138412290;
    *&buf[4] = v36;
    _os_log_debug_impl(&dword_19602C000, v38, OS_LOG_TYPE_DEBUG, "Checking volume for match to bookmark, volumeURL=%@", buf, 0xCu);
    if (!v15)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  v16 = 0;
LABEL_518:
  ItemInTOC = BookmarkData::findItemInTOC(v10, 0x1003u, v9);
  if (ItemInTOC)
  {
    v212 = ItemInTOC;
    v213 = CFStringGetTypeID();
    v214 = BookmarkData::copyItem(v10, v212, v213);
    if (v214)
    {
      v215 = v214;
      v216 = CFURLCreateWithString(a1, v214, 0);
      if (v293 != v216)
      {
        if (v293)
        {
          CFRelease(v293);
        }

        v293 = v216;
      }

      CFRelease(v215);
    }
  }

  if (v293)
  {
LABEL_526:
    v217 = CFBooleanGetTypeID();
    v218 = BookmarkData::copyItem(v10, 0xD001u, v9, v217);
    if (v218)
    {
      v219 = v218;
      if (CFEqual(v218, *MEMORY[0x1E695E4D0]))
      {
        v220 = v293;
        if (v292)
        {
          CFRelease(v292);
          v292 = 0;
        }

        *buf = CFURLCreateFileReferenceURL(a1, v220, &v292);
        CFReleaser<__CFData const*>::operator=(&v293, buf);
        if (*buf)
        {
          CFRelease(*buf);
        }
      }

      CFRelease(v219);
    }
  }

LABEL_533:
  v221 = v293;
  if (!a6 || v293)
  {
    if (a5 && v293)
    {
      *a5 = v291;
      goto LABEL_542;
    }
  }

  else
  {
    v222 = v292;
    v292 = 0;
    *a6 = v222;
  }

  if (a7 && !v221)
  {
    *a7 = v16;
    v16 = 0;
  }

LABEL_542:
  v293 = 0;
  if (v292)
  {
    CFRelease(v292);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v293)
  {
    CFRelease(v293);
  }

  v223 = *MEMORY[0x1E69E9840];
  return v221;
}

void releaseBookmarkExtension(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1 >= 1)
  {
    if (sandbox_extension_release())
    {
      v2 = resolveLog;
      if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_INFO))
      {
        v3 = *__error();
        v5 = 134218240;
        v6 = a1;
        v7 = 1024;
        v8 = v3;
        _os_log_impl(&dword_19602C000, v2, OS_LOG_TYPE_INFO, "failed to release sandbox extension handle %lld, error=%{errno}d", &v5, 0x12u);
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

unsigned int *getBookmarkSandboxExtensionForTag(BookmarkData *a1, unsigned int a2, unsigned int *a3)
{
  result = BookmarkData::getMisalignedItemDataPtr(a1, a2, 0, 1, a3);
  if (result)
  {
    if (*a3 && (v5 = result, v6 = *a3 - 1, !*(result + v6)))
    {
      if (strlen(result) == v6)
      {
        return v5;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFTypeRef matchVolumeURLForBookmark(BookmarkData *a1, unsigned int a2, CFArrayRef theArray, char *a4, const __CFArray *a5, unsigned __int8 *a6)
{
  v68 = *MEMORY[0x1E69E9840];
  cf = 0;
  Count = CFArrayGetCount(theArray);
  TypeID = CFStringGetTypeID();
  v11 = BookmarkData::copyItem(a1, 0x2010u, a2, TypeID);
  v12 = CFURLGetTypeID();
  v13 = BookmarkData::copyItem(a1, 0x2050u, a2, v12);
  v14 = CFStringGetTypeID();
  v15 = BookmarkData::copyItem(a1, 0x2011u, a2, v14);
  v16 = CFNumberGetTypeID();
  v17 = BookmarkData::copyItem(a1, 0x2012u, a2, v16);
  v18 = CFDateGetTypeID();
  v19 = BookmarkData::copyItem(a1, 0x2013u, a2, v18);
  URLVolumeProperties = BookmarkData::getURLVolumeProperties(a1, a2, &v57);
  if (v15)
  {
    if (Count >= 1)
    {
      v49 = v11;
      v52 = v17;
      v21 = v19;
      v22 = 0;
      v23 = *MEMORY[0x1E695EE50];
      while (1)
      {
        v24 = cf;
        if (cf)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v22);
        if (matchURLProperty(ValueAtIndex, v23, v15))
        {
          if (ValueAtIndex)
          {
            CFRetain(ValueAtIndex);
          }

          if (cf != ValueAtIndex)
          {
            if (cf)
            {
              CFRelease(cf);
            }

            cf = ValueAtIndex;
          }

          v26 = resolveLog;
          if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v61 = ValueAtIndex;
            v62 = 2112;
            v63 = v15;
            _os_log_debug_impl(&dword_19602C000, v26, OS_LOG_TYPE_DEBUG, "matched volume %@ by uuid %@", buf, 0x16u);
          }
        }

        if (Count == ++v22)
        {
          goto LABEL_34;
        }
      }

LABEL_31:
      v31 = 0;
      v11 = v49;
      v19 = v21;
      goto LABEL_32;
    }

    goto LABEL_62;
  }

  if (v13)
  {
    if (Count >= 1)
    {
      v49 = v11;
      v52 = v17;
      v21 = v19;
      v27 = 0;
      v28 = *MEMORY[0x1E695EE40];
      while (1)
      {
        v24 = cf;
        if (cf)
        {
          goto LABEL_31;
        }

        v29 = CFArrayGetValueAtIndex(theArray, v27);
        if (matchURLProperty(v29, v28, v13))
        {
          if (v29)
          {
            CFRetain(v29);
          }

          if (cf != v29)
          {
            if (cf)
            {
              CFRelease(cf);
            }

            cf = v29;
          }

          v30 = resolveLog;
          if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v61 = v29;
            v62 = 2112;
            v63 = v13;
            _os_log_debug_impl(&dword_19602C000, v30, OS_LOG_TYPE_DEBUG, "matched volume %@ by VolumeMountURL %@", buf, 0x16u);
          }
        }

        if (Count == ++v27)
        {
LABEL_34:
          v24 = cf;
          v19 = v21;
          v32 = a4;
          if (!cf)
          {
            v11 = v49;
            v17 = v52;
            goto LABEL_89;
          }

          v31 = 0;
          v11 = v49;
          if (!a4)
          {
            goto LABEL_87;
          }

          goto LABEL_36;
        }
      }
    }

LABEL_62:
    v24 = 0;
    goto LABEL_89;
  }

  v33 = URLVolumeProperties;
  if (!v11)
  {
    v24 = 0;
    if (!v17 || !v19)
    {
      goto LABEL_88;
    }

    if (Count >= 1)
    {
      v54 = v19;
      v48 = 0;
      v38 = 0;
      v39 = *MEMORY[0x1E695EE30];
      v51 = *MEMORY[0x1E695EA50];
      do
      {
        v56 = 0;
        v40 = CFArrayGetValueAtIndex(theArray, v38);
        v41 = CFRetain(v40);
        v42 = v56;
        if (v56 != v41)
        {
          if (v56)
          {
            CFRelease(v56);
          }

          v56 = v41;
          v42 = v41;
        }

        if (matchURLProperty(v42, v39, v17) && matchURLProperty(v56, v51, v54) && v33)
        {
          if (_CFURLGetVolumePropertyFlags())
          {
            if ((v58 & 1) != 0 && (v57 & 1) == 0)
            {
              CFReleaser<__CFData const*>::operator=(&cf, &v56);
              ++v48;
              v43 = resolveLog;
              if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412802;
                v61 = cf;
                v62 = 2112;
                v63 = v17;
                v64 = 2112;
                v65 = v54;
                _os_log_debug_impl(&dword_19602C000, v43, OS_LOG_TYPE_DEBUG, "(possible) matched volume %@ by capacity=%@ and creationDate=%@ (renamed volume case)", buf, 0x20u);
              }
            }
          }
        }

        if (v56)
        {
          CFRelease(v56);
        }

        ++v38;
      }

      while (Count != v38);
      v19 = v54;
      if (v48 > 1)
      {
        if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
        {
          matchVolumeURLForBookmark();
        }

        if (cf)
        {
          CFRelease(cf);
        }

        v24 = 0;
        goto LABEL_88;
      }
    }

    v52 = v17;
    v31 = 1;
    v24 = cf;
LABEL_32:
    v32 = a4;
    if (!a4)
    {
      goto LABEL_87;
    }

    goto LABEL_36;
  }

  if (Count < 1)
  {
    goto LABEL_62;
  }

  v34 = v19;
  v35 = 0;
  v53 = *MEMORY[0x1E695EE30];
  v50 = *MEMORY[0x1E695EA50];
  v47 = *MEMORY[0x1E695ED78];
  do
  {
    v24 = cf;
    if (cf)
    {
      v52 = v17;
      v31 = 0;
      v19 = v34;
      goto LABEL_32;
    }

    v36 = CFArrayGetValueAtIndex(theArray, v35);
    v37 = v36;
    if ((!v17 || matchURLProperty(v36, v53, v17)) && (!v34 || matchURLProperty(v37, v50, v34)))
    {
      v56 = 0;
      if (v33 && (v58 & 1) != 0 && _CFURLGetVolumePropertyFlags() && ((v57 ^ v56) & 1) == 0 && matchURLProperty(v37, v47, v11))
      {
        if (v37)
        {
          CFRetain(v37);
        }

        if (cf != v37)
        {
          if (cf)
          {
            CFRelease(cf);
          }

          cf = v37;
        }

        log = resolveLog;
        if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138413058;
          v61 = v37;
          v62 = 2112;
          v63 = v11;
          v64 = 2112;
          v65 = v17;
          v66 = 2112;
          v67 = v34;
          _os_log_debug_impl(&dword_19602C000, log, OS_LOG_TYPE_DEBUG, "matched volume %@ by name=%@ and capacity=%@ and creationDate=%@", buf, 0x2Au);
        }
      }
    }

    ++v35;
  }

  while (Count != v35);
  v24 = cf;
  v19 = v34;
  v32 = a4;
  if (cf)
  {
    v52 = v17;
    v31 = 0;
    if (!a4)
    {
LABEL_87:
      v17 = v52;
LABEL_88:
      cf = 0;
      goto LABEL_89;
    }

LABEL_36:
    if (v24)
    {
      v17 = v52;
      if (!*v32)
      {
        *v32 = v31;
      }

      goto LABEL_88;
    }

    goto LABEL_87;
  }

LABEL_89:
  if (v19)
  {
    CFRelease(v19);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v44 = *MEMORY[0x1E69E9840];
  return v24;
}

uint64_t fileIDsMatch(BookmarkData *a1, unsigned int a2, const __CFURL *a3)
{
  TypeID = CFNumberGetTypeID();
  v7 = BookmarkData::copyItem(a1, 0x1030u, a2, TypeID);
  if (v7)
  {
LABEL_2:
    if (volumeSupportsPersistentIDs(a3))
    {
      propertyValueTypeRefPtr = 0;
      if (!CFURLCopyResourcePropertyForKey(a3, *MEMORY[0x1E695E2B0], &propertyValueTypeRefPtr, 0))
      {
        v8 = 0;
LABEL_16:
        if (propertyValueTypeRefPtr)
        {
          CFRelease(propertyValueTypeRefPtr);
        }

        goto LABEL_18;
      }

      if (propertyValueTypeRefPtr)
      {
        v8 = CFEqual(v7, propertyValueTypeRefPtr);
        goto LABEL_16;
      }
    }

    v8 = 0;
LABEL_18:
    CFRelease(v7);
    return v8;
  }

  v9 = CFArrayGetTypeID();
  v10 = BookmarkData::copyItem(a1, 0x1005u, a2, v9);
  if (v10)
  {
    v11 = v10;
    if (CFArrayGetCount(v10) >= 1)
    {
      Count = CFArrayGetCount(v11);
      ValueAtIndex = CFArrayGetValueAtIndex(v11, Count - 1);
      if (ValueAtIndex)
      {
        v14 = ValueAtIndex;
        v15 = CFGetTypeID(ValueAtIndex);
        if (v15 == CFNumberGetTypeID())
        {
          v16 = CFRetain(v14);
          if (v16)
          {
            v7 = v16;
            CFRelease(v11);
            goto LABEL_2;
          }
        }
      }
    }

    CFRelease(v11);
  }

  return volumeSupportsPersistentIDs(a3) ^ 1;
}

BOOL matchURLProperty(const __CFURL *a1, const __CFString *a2, CFTypeRef a3)
{
  propertyValueTypeRefPtr = 0;
  if (!CFURLCopyResourcePropertyForKey(a1, a2, &propertyValueTypeRefPtr, 0))
  {
    goto LABEL_8;
  }

  v4 = propertyValueTypeRefPtr;
  if (propertyValueTypeRefPtr == a3)
  {
    v5 = 1;
    if (!propertyValueTypeRefPtr)
    {
      return v5;
    }

    goto LABEL_10;
  }

  v5 = 0;
  if (a3 && propertyValueTypeRefPtr)
  {
    v6 = CFGetTypeID(a3);
    if (v6 == CFGetTypeID(propertyValueTypeRefPtr))
    {
      if (v6 == CFURLGetTypeID())
      {
        v7 = sameFileURL(a3, propertyValueTypeRefPtr);
      }

      else
      {
        v7 = CFEqual(a3, propertyValueTypeRefPtr);
      }

      v5 = v7 != 0;
      goto LABEL_9;
    }

LABEL_8:
    v5 = 0;
  }

LABEL_9:
  v4 = propertyValueTypeRefPtr;
  if (propertyValueTypeRefPtr)
  {
LABEL_10:
    CFRelease(v4);
  }

  return v5;
}

uint64_t volumeSupportsPersistentIDs(uint64_t result)
{
  if (result)
  {
    result = _CFURLGetVolumePropertyFlags();
    if (result)
    {
      return 0;
    }
  }

  return result;
}

const void *copyHomeFolderURLForUser(const __CFAllocator *a1, unint64_t a2, const __CFString *a3)
{
  pthread_mutex_lock(&copyHomeFolderURLForUser(__CFAllocator const*,unsigned long,__CFString const*)::sCopyHomeFolderLock);
  if (a1 || (v4 = copyHomeFolderURLForUser(__CFAllocator const*,unsigned long,__CFString const*)::sUserHomeFolderURL) == 0)
  {
    v5 = CFCopyHomeDirectoryURLForUser();
    v4 = v5;
    if (!a1 && v5)
    {
      if (copyHomeFolderURLForUser(__CFAllocator const*,unsigned long,__CFString const*)::sUserHomeFolderURL)
      {
        CFRelease(copyHomeFolderURLForUser(__CFAllocator const*,unsigned long,__CFString const*)::sUserHomeFolderURL);
        copyHomeFolderURLForUser(__CFAllocator const*,unsigned long,__CFString const*)::sUserHomeFolderURL = 0;
      }

      CFRetain(v4);
      copyHomeFolderURLForUser(__CFAllocator const*,unsigned long,__CFString const*)::sUserHomeFolderURL = v4;
    }
  }

  else
  {
    CFRetain(copyHomeFolderURLForUser(__CFAllocator const*,unsigned long,__CFString const*)::sUserHomeFolderURL);
  }

  pthread_mutex_unlock(&copyHomeFolderURLForUser(__CFAllocator const*,unsigned long,__CFString const*)::sCopyHomeFolderLock);
  return v4;
}

BOOL isDirectory(BookmarkData *a1, int a2)
{
  result = BookmarkData::getURLResourceProperties(a1, a2, v3);
  if (result)
  {
    if ((v3[8] & 2) != 0)
    {
      return (v3[0] >> 1) & 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t matchURLToBookmark(BookmarkData *a1, unsigned int a2, const __CFURL *a3, BOOL *a4, const __CFURL **a5)
{
  v23 = *MEMORY[0x1E69E9840];
  URLResourceProperties = BookmarkData::getURLResourceProperties(a1, a2, &v19);
  if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
  {
    matchURLToBookmark();
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  else if (!a3)
  {
LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  propertyValueTypeRefPtr[1] = 0;
  v18 = 0;
  v10 = v20 & 0xF;
  if (a4)
  {
    *a4;
  }

  if (!_CFURLCopyResourcePropertyValuesAndFlags())
  {
    goto LABEL_8;
  }

  if (URLResourceProperties)
  {
    if (((v19 ^ v18) & v10) != 0)
    {
      goto LABEL_8;
    }

    if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
    {
      matchURLToBookmark();
    }
  }

  else if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
  {
    matchURLToBookmark();
  }

  string = 0;
  propertyValueTypeRefPtr[0] = 0;
  if (!CFURLCopyResourcePropertyForKey(a3, *MEMORY[0x1E695EBF8], propertyValueTypeRefPtr, 0) || !CFURLCopyResourcePropertyForKey(a3, *MEMORY[0x1E695EA38], &string, 0))
  {
    goto LABEL_25;
  }

  if (!propertyValueTypeRefPtr[0] || (v14 = string) == 0)
  {
    if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
    {
      matchURLToBookmark();
    }

LABEL_25:
    v11 = 1;
    goto LABEL_26;
  }

  if (propertyValueTypeRefPtr[0] == string)
  {
    v11 = 1;
    goto LABEL_27;
  }

  CFStringGetFileSystemRepresentation(propertyValueTypeRefPtr[0], buffer, 1024);
  CFStringGetFileSystemRepresentation(string, __s2, 1024);
  if (!strcmp(buffer, __s2))
  {
    goto LABEL_25;
  }

  if (os_log_type_enabled(resolveLog, OS_LOG_TYPE_DEBUG))
  {
    matchURLToBookmark();
  }

  v11 = 0;
LABEL_26:
  v14 = string;
  if (string)
  {
LABEL_27:
    CFRelease(v14);
  }

  if (propertyValueTypeRefPtr[0])
  {
    CFRelease(propertyValueTypeRefPtr[0]);
  }

  v15 = v11 ^ 1;
  if (!a4)
  {
    v15 = 1;
  }

  if ((v15 & 1) == 0)
  {
    if (!*a4)
    {
      *a4 = fileIDsMatch(a1, a2, a3) == 0;
    }

    v11 = 1;
  }

LABEL_9:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

CFArrayRef ___ZL27copyVolumesArrayForBookmarkPK13__CFAllocatorR12BookmarkDataj_block_invoke()
{
  values[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695EE50];
  values[0] = *MEMORY[0x1E695ED38];
  values[1] = v0;
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 2, MEMORY[0x1E695E9C0]);
  copyVolumesArrayForBookmark(__CFAllocator const*,BookmarkData &,unsigned int)::sPropertyKeys = result;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void CFNumber::CFNumber(CFNumber *this, CFTypeRef *a2)
{
  if (*a2 && (v4 = CFGetTypeID(*a2), v4 == CFNumberGetTypeID()))
  {
    v5 = *a2;
    if (v5)
    {
      CFRetain(v5);
    }
  }

  else
  {
    v5 = 0;
  }

  *this = v5;
}

uint64_t volumeSupportsPathFromID(uint64_t result)
{
  if (result)
  {
    result = _CFURLGetVolumePropertyFlags();
    if (result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t resolveBookmarkByRelativePathFromFileIDOnGivenVolume(const __CFAllocator *a1, BookmarkData *a2, unsigned int a3, unint64_t a4, const __CFURL *a5, const __CFArray *a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    _CFURLGetResourcePropertyFlags();
  }

  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

void ___ZL25DownloadCloudDocumentSyncPK7__CFURL_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = bmarkLog;
  if (os_log_type_enabled(bmarkLog, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 40);
    v10 = 136315650;
    v11 = "DownloadCloudDocumentSync";
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = a3;
    _os_log_impl(&dword_19602C000, v7, OS_LOG_TYPE_INFO, "%s: finished %@, error=%@", &v10, 0x20u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a3 == 0;
  (*(a4 + 16))(a4);
  dispatch_group_leave(*(a1 + 48));
  v9 = *MEMORY[0x1E69E9840];
}

__CFDictionary *_FSURLCopyTemporaryPropertiesForKeys(const __CFURL *a1, const __CFArray *a2)
{
  v4 = __CFURLResourceInfoPtr();
  v5 = _FileCacheGetForURL(a1, v4);
  _FileCacheLockTempPermProperties();
  TemporaryPropertyDictionary = _FileCacheGetTemporaryPropertyDictionary(v5, 0);
  if (TemporaryPropertyDictionary && (v7 = TemporaryPropertyDictionary, Count = CFArrayGetCount(a2), Count >= 1))
  {
    v9 = Count;
    Mutable = 0;
    v11 = 0;
    v12 = MEMORY[0x1E695E9D8];
    v13 = MEMORY[0x1E695E9E8];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v11);
      value = 0;
      if (CFDictionaryGetValueIfPresent(v7, ValueAtIndex, &value))
      {
        if (!Mutable)
        {
          v15 = CFGetAllocator(a1);
          Mutable = CFDictionaryCreateMutable(v15, 0, v12, v13);
        }

        CFDictionaryAddValue(Mutable, ValueAtIndex, value);
      }

      ++v11;
    }

    while (v9 != v11);
  }

  else
  {
    Mutable = 0;
  }

  PermanentPropertyDictionary = _FileCacheGetPermanentPropertyDictionary(v5, 0);
  if (PermanentPropertyDictionary)
  {
    v17 = PermanentPropertyDictionary;
    v18 = CFArrayGetCount(a2);
    if (v18 >= 1)
    {
      v19 = v18;
      v20 = 0;
      v21 = MEMORY[0x1E695E9D8];
      v22 = MEMORY[0x1E695E9E8];
      do
      {
        v23 = CFArrayGetValueAtIndex(a2, v20);
        value = 0;
        if (CFDictionaryGetValueIfPresent(v17, v23, &value))
        {
          if (!Mutable)
          {
            v24 = CFGetAllocator(a1);
            Mutable = CFDictionaryCreateMutable(v24, 0, v21, v22);
          }

          CFDictionaryAddValue(Mutable, v23, value);
        }

        ++v20;
      }

      while (v19 != v20);
    }
  }

  _FileCacheUnlockTempPermProperties();
  return Mutable;
}

uint64_t _FSURLGetResourcePropertyFlags(const __CFURL *a1, uint64_t a2, void *a3, CFTypeRef cf, __CFError *a5)
{
  v89 = a5;
  v100 = *MEMORY[0x1E69E9840];
  v94 = a1;
  v7 = _FileCacheGetForURL(a1, cf);
  v96 = v7;
  v11 = qword_1ED445788;
  if (_FSURLGetResourcePropertyFlags::sOnce != -1)
  {
    _FSURLGetResourcePropertyFlags_cold_1();
  }

  if (_FSURLGetResourcePropertyFlags::maskToPropertyTableCount)
  {
    v12 = 18;
  }

  else
  {
    v12 = 0;
  }

  v13 = MEMORY[0x1EEE9AC00](v7, v8, v9, v10);
  v98 = &v87 - v14;
  v18 = MEMORY[0x1EEE9AC00](v13, v15, v16, v17);
  v20 = &v87 - v19;
  v24 = MEMORY[0x1EEE9AC00](v18, v21, v22, v23);
  v97 = &v87 - v25;
  v29 = MEMORY[0x1EEE9AC00](v24, v26, v27, v28);
  v31 = &v87 - v30;
  MEMORY[0x1EEE9AC00](v29, 8 * v11, v32, v33);
  v35 = &v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    goto LABEL_54;
  }

  if (v11 >= 1)
  {
    bzero(&v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), v34);
  }

  v36 = qword_1ED445A20;
  v37 = (_FSURLGetResourcePropertyFlags::maskToPropertyTable + 24);
  do
  {
    if ((v36 & a2) != 0)
    {
      v38 = *(v37 - 1);
      v39 = **(v38 + 140);
      v40 = *&v35[8 * v39];
      if (v40 <= 95)
      {
        v41 = v12 * v39;
        v98[v41 + v40] = *(v38 + 8);
        v20[v41 + v40] = 0;
        v97[v41 + v40] = *v38;
        v31[v41 + v40] = v36;
        *&v35[8 * v39] = v40 + 1;
      }
    }

    v42 = *v37;
    v37 += 3;
    v36 = v42;
  }

  while (v42);
  _FileCacheLock(v96);
  v43 = 8 * v12;
  v90 = v11;
  v91 = v35;
  if (v11 < 1)
  {
    LOBYTE(v46) = 1;
LABEL_31:
    _FileCacheUnlock(v96);
    v56 = v90;
    v64 = v91;
    goto LABEL_45;
  }

  v88 = a2;
  v44 = 8 * v12 * (v11 - 1);
  v95 = v35 - 8;
  v45 = &sFileProviderGlobals[7 * v11 - 4];
  LOBYTE(v46) = 1;
  v92 = v44;
  v93 = v43;
  v47 = v44;
  while (1)
  {
    v48 = *&v95[8 * v11];
    if (v48 >= 1)
    {
      v50 = *v45;
      v49 = v45[1];
      v51 = v96;
      _FileCacheIncrementInProvider(v96);
      v46 = v49(v94, v51, v98 + v47, v20 + v47, v97 + v47, v48, v50);
      v52 = v51;
      v43 = v93;
      _FileCacheDecrementInProvider(v52);
      if (!v46)
      {
        break;
      }
    }

    v47 -= v43;
    v45 -= 7;
    v53 = v11-- <= 1;
    if (v53)
    {
      goto LABEL_31;
    }
  }

  v54 = v96;
  v55 = _FileCacheLockTransitionToPreparer(v96);
  v56 = v90;
  if (!v55)
  {
    _FileCacheLock(v54);
    if (v56 >= 1)
    {
      v46 = 0;
      v57 = &sFileProviderGlobals[7 * v56 - 4];
      v58 = v56;
      while (1)
      {
        v59 = *&v95[8 * v58];
        if (v59 >= 1)
        {
          v61 = *v57;
          v60 = v57[1];
          v62 = v96;
          _FileCacheIncrementInProvider(v96);
          v46 = v60(v94, v62, v98 + v92, v20 + v92, v97 + v92, v59, v61);
          v63 = v62;
          v43 = v93;
          _FileCacheDecrementInProvider(v63);
          if (!v46)
          {
            break;
          }
        }

        v92 -= v43;
        v57 -= 7;
        v53 = v58-- <= 1;
        if (v53)
        {
          v54 = v96;
          _FileCacheUnlock(v96);
          if (v46)
          {
            goto LABEL_44;
          }

          goto LABEL_33;
        }
      }
    }

    v54 = v96;
    _FileCacheUnlock(v96);
  }

LABEL_33:
  memset(v99, 0, 60);
  v65 = qword_1ED445A20;
  v66 = (_FSURLGetResourcePropertyFlags::maskToPropertyTable + 24);
  v67 = v88;
  do
  {
    if ((v65 & v67) != 0)
    {
      addPropertyAndDependenciesToBitmap(*(v66 - 1), v99);
    }

    v68 = *v66;
    v66 += 3;
    v65 = v68;
  }

  while (v68);
  v46 = prepareValuesForBitmap(v94, v54, v99, v89);
  v69 = v91;
  if (v46)
  {
    _FileCacheLock(v54);
    if (v56 >= 1)
    {
      v70 = 0;
      v71 = v69;
      v72 = &unk_1ED4457A0;
      do
      {
        v74 = *v71++;
        v73 = v74;
        if (v74 >= 1)
        {
          v75 = *(v72 - 1);
          v76 = *v72;
          v77 = v96;
          v95 = v71;
          _FileCacheIncrementInProvider(v96);
          v46 = v76(v94, v77, v98 + v70, v20 + v70, v97 + v70, v73, v75);
          v78 = v77;
          v43 = v93;
          _FileCacheDecrementInProvider(v78);
          v71 = v95;
        }

        v70 += v43;
        v72 += 7;
        --v56;
      }

      while (v56);
    }

    v54 = v96;
    _FileCacheUnlock(v96);
    v56 = v90;
  }

LABEL_44:
  _FileCacheLockTransitionFromPreparer(v54);
  _FileCacheUnlock(v54);
  v64 = v91;
  if (!v46)
  {
LABEL_54:
    _FSURLGetResourcePropertyFlags_cold_2(v89, v99);
    LOBYTE(v46) = v99[0];
    goto LABEL_53;
  }

LABEL_45:
  *a3 = 0;
  if (v56 >= 1)
  {
    v79 = 0;
    v80 = 0;
    v81 = *MEMORY[0x1E695E4D0];
    do
    {
      v82 = *&v64[8 * v80];
      if (v82 >= 1)
      {
        v83 = v20;
        v84 = v31;
        do
        {
          if (*v83 == v81)
          {
            v79 |= *v84;
            *a3 = v79;
          }

          ++v84;
          ++v83;
          --v82;
        }

        while (v82);
      }

      ++v80;
      v31 = (v31 + v43);
      v20 = (v20 + v43);
    }

    while (v80 != v56);
  }

LABEL_53:
  v85 = *MEMORY[0x1E69E9840];
  return v46;
}