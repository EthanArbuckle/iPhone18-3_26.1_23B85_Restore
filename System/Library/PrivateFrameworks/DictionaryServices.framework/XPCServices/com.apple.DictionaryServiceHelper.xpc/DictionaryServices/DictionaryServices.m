DIR *IterateDirectory(const char *a1, unsigned int (*a2)(char *, uint64_t, uint64_t), uint64_t a3)
{
  result = opendir(a1);
  if (result)
  {
    v7 = result;
    v8 = strlen(a1);
    v9 = malloc_type_malloc(v8 + 256, 0x100004077774924uLL);
    strlcpy(v9, a1, v8 + 256);
    v10 = strlen(a1);
    *&v9[v10] = 47;
    v11 = &v9[v10 + 1];
    memset(&v16, 0, sizeof(v16));
    v12 = readdir(v7);
    if (v12)
    {
      v13 = v12;
      do
      {
        v15 = v13->d_name[0];
        d_name = v13->d_name;
        if (v15 != 46)
        {
          strlcpy(v11, d_name, 0x100uLL);
          if ((stat(v9, &v16) & 0x80000000) == 0)
          {
            if ((v16.st_mode & 0xF000) == 0x4000)
            {
              if (a2(v9, 1, a3))
              {
                IterateDirectory(v9, a2, a3);
              }
            }

            else
            {
              a2(v9, 0, a3);
            }
          }
        }

        v13 = readdir(v7);
      }

      while (v13);
    }

    free(v9);
    return closedir(v7);
  }

  return result;
}

BOOL ItemExistsAtPath(const char *a1, int a2)
{
  if (a2)
  {
    memset(&v4, 0, sizeof(v4));
    return !stat(a1, &v4) && (v4.st_mode & 0xF000) == 0x4000;
  }

  else
  {
    return access(a1, 0) == 0;
  }
}

uint64_t ItemExistsAtURL(const __CFURL *a1)
{
  result = CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024);
  if (result)
  {
    v3 = CFURLHasDirectoryPath(a1);
    return ItemExistsAtPath(buffer, v3);
  }

  return result;
}

CFStringRef CopyFileObjectIdentifierAtURL(const __CFURL *a1)
{
  v1 = CFURLCopyAbsoluteURL(a1);
  v2 = CFURLCopyFileSystemPath(v1, kCFURLPOSIXPathStyle);
  CFRelease(v1);
  return v2;
}

void BuildWordBreakTable(CFStringRef str, CFRange range, const __CFLocale *a3, char *__b)
{
  length = range.length;
  location = range.location;
  if ((range.length & 0x8000000000000000) == 0)
  {
    memset(__b, 255, 8 * range.length + 8);
  }

  v12.location = location;
  v12.length = length;
  v9 = CFStringCreateWithSubstring(0, str, v12);
  v13.location = 0;
  v13.length = length;
  v10 = CFStringTokenizerCreate(0, v9, v13, 0x80uLL, a3);
  if (v10)
  {
    v11 = v10;
    while (_CFStringTokenizerTokenize())
    {
      *__b = 1;
      bzero(__b + 8, 0xFFFFFFFFFFFFFFF8);
    }

    CFRelease(v11);
    CFRelease(v9);
  }
}

CFTypeRef CopyPreferredEnglishLanguage(CFLocaleIdentifier localeID)
{
  v15 = localeID;
  ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(0, localeID);
  if (!ComponentsFromLocaleIdentifier)
  {
    LocaleIdentifierFromComponents = 0;
    v5 = 1;
    goto LABEL_9;
  }

  v2 = ComponentsFromLocaleIdentifier;
  if (!CFDictionaryGetValue(ComponentsFromLocaleIdentifier, kCFLocaleCountryCode))
  {
    LocaleIdentifierFromComponents = 0;
    goto LABEL_7;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v2);
  CFDictionarySetValue(MutableCopy, kCFLocaleLanguageCode, @"en");
  LocaleIdentifierFromComponents = CFLocaleCreateLocaleIdentifierFromComponents(0, MutableCopy);
  CFRelease(MutableCopy);
  if (!LocaleIdentifierFromComponents)
  {
LABEL_7:
    v5 = 1;
    goto LABEL_8;
  }

  v5 = 0;
  v15 = LocaleIdentifierFromComponents;
LABEL_8:
  CFRelease(v2);
LABEL_9:
  keys[0] = kCFLocaleLanguageCode;
  keys[1] = kCFLocaleCountryCode;
  cf = 0;
  v19 = 0;
  values = @"en";
  v17 = @"US";
  v6 = CFDictionaryCreate(0, keys, &values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  cf = CFLocaleCreateLocaleIdentifierFromComponents(0, v6);
  CFRelease(v6);
  values = @"en";
  v17 = @"GB";
  v7 = CFDictionaryCreate(0, keys, &values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v19 = CFLocaleCreateLocaleIdentifierFromComponents(0, v7);
  CFRelease(v7);
  v8 = CFArrayCreate(0, &cf, 2, &kCFTypeArrayCallBacks);
  v9 = CFArrayCreate(0, &v15, 1, &kCFTypeArrayCallBacks);
  v10 = CFBundleCopyLocalizationsForPreferences(v8, v9);
  if (v10)
  {
    v11 = v10;
    ValueAtIndex = CFArrayGetValueAtIndex(v10, 0);
    v13 = CFRetain(ValueAtIndex);
    CFRelease(v11);
  }

  else
  {
    v13 = 0;
  }

  CFRelease(v8);
  CFRelease(v9);
  CFRelease(cf);
  CFRelease(v19);
  if ((v5 & 1) == 0)
  {
    CFRelease(LocaleIdentifierFromComponents);
  }

  return v13;
}

uint64_t CompareLanguageCode(const __CFString *a1, CFStringRef theString2, _BYTE *a3)
{
  CanonicalLocaleIdentifierFromString = 0;
  v48 = 0;
  v49 = 0;
  theString2a = 0;
  theString1 = 0;
  v45 = 0uLL;
  if (!a1 || !theString2)
  {
    return CanonicalLocaleIdentifierFromString;
  }

  if (CFStringCompare(a1, theString2, 1uLL) == kCFCompareEqualTo || CFStringCompare(a1, @"*", 0) == kCFCompareEqualTo || CFStringCompare(theString2, @"*", 0) == kCFCompareEqualTo)
  {
    CanonicalLocaleIdentifierFromString = 1;
    if (a3)
    {
      *a3 = 1;
    }

    return CanonicalLocaleIdentifierFromString;
  }

  if (a3)
  {
    *a3 = 0;
  }

  CanonicalLocaleIdentifierFromString = CFLocaleCreateCanonicalLocaleIdentifierFromString(0, a1);
  v51 = CanonicalLocaleIdentifierFromString;
  if (!CanonicalLocaleIdentifierFromString)
  {
    return CanonicalLocaleIdentifierFromString;
  }

  v50 = CFLocaleCreateCanonicalLocaleIdentifierFromString(0, theString2);
  if (!v50)
  {
    CFRelease(CanonicalLocaleIdentifierFromString);
    return 0;
  }

  v43 = 0;
  v44 = 0;
  v7 = kCFLocaleLanguageCode;
  v8 = &v51;
  v9 = &v49;
  p_theString1 = &theString1;
  v11 = &v45 + 1;
  v12 = &v44;
  v13 = 1;
  do
  {
    v14 = v13;
    ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(0, *v8);
    *v12 = ComponentsFromLocaleIdentifier;
    if (ComponentsFromLocaleIdentifier)
    {
      v16 = ComponentsFromLocaleIdentifier;
      Value = CFDictionaryGetValue(ComponentsFromLocaleIdentifier, kCFLocaleLanguageCode);
      v18 = CFDictionaryGetValue(v16, kCFLocaleCountryCode);
      ComponentsFromLocaleIdentifier = CFDictionaryGetValue(v16, kCFLocaleScriptCode);
    }

    else
    {
      Value = 0;
      v18 = 0;
    }

    v13 = 0;
    *v9 = Value;
    v8 = &v50;
    *p_theString1 = v18;
    v9 = &v48;
    p_theString1 = &theString2a;
    *v11 = ComponentsFromLocaleIdentifier;
    v11 = &v45;
    v12 = &v43;
  }

  while ((v14 & 1) != 0);
  v19 = &v51;
  v20 = &v49;
  p_theString2a = &theString1;
  v22 = (&v45 + 8);
  v23 = &v44;
  v24 = 1;
  do
  {
    v25 = v24;
    v26 = *v20;
    if (!*v20)
    {
      goto LABEL_36;
    }

    if (CFStringCompare(*v20, @"zh", 0))
    {
      if (CFStringCompare(v26, @"en", 0) || !*p_theString2a)
      {
        if (CFStringCompare(v26, @"nb", 0) == kCFCompareEqualTo || CFStringCompare(v26, @"nn", 0) == kCFCompareEqualTo)
        {
          *v20 = @"no";
        }
      }

      else
      {
        v29 = v7;
        v30 = CopyPreferredEnglishLanguage(*v19);
        if (*v23)
        {
          CFRelease(*v23);
        }

        v31 = CFLocaleCreateComponentsFromLocaleIdentifier(0, v30);
        *v23 = v31;
        if (v31)
        {
          v32 = v31;
          v33 = CFDictionaryGetValue(v31, v29);
          v34 = CFDictionaryGetValue(v32, kCFLocaleCountryCode);
          v31 = CFDictionaryGetValue(v32, kCFLocaleScriptCode);
        }

        else
        {
          v33 = 0;
          v34 = 0;
        }

        *v20 = v33;
        *p_theString2a = v34;
        *v22 = v31;
        CFRelease(v30);
        v7 = v29;
      }
    }

    else if (!*v22)
    {
      v27 = *p_theString2a;
      if (*p_theString2a)
      {
        if (CFStringCompare(*p_theString2a, @"CN", 1uLL))
        {
          if (CFStringCompare(v27, @"TW", 1uLL))
          {
            goto LABEL_36;
          }

          v28 = @"Hant";
        }

        else
        {
          v28 = @"Hans";
        }

        *v22 = v28;
      }
    }

LABEL_36:
    v24 = 0;
    v19 = &v50;
    v20 = &v48;
    p_theString2a = &theString2a;
    v22 = &v45;
    v23 = &v43;
  }

  while ((v25 & 1) != 0);
  if (v49)
  {
    v35 = v48 == 0;
  }

  else
  {
    v35 = 1;
  }

  if (v35 || CFStringCompare(v49, v48, 1uLL))
  {
    CanonicalLocaleIdentifierFromString = 0;
  }

  else
  {
    if (a3)
    {
      *a3 = 1;
    }

    v41 = *(&v45 + 1);
    v42 = v45;
    if (v45 == 0)
    {
      v41 = theString1;
      CanonicalLocaleIdentifierFromString = 1;
      if (!theString1)
      {
        goto LABEL_43;
      }

      v42 = theString2a;
    }

    else
    {
      CanonicalLocaleIdentifierFromString = 0;
      if (!*(&v45 + 1))
      {
        goto LABEL_43;
      }
    }

    if (v42)
    {
      CanonicalLocaleIdentifierFromString = CFStringCompare(v41, v42, 1uLL) == kCFCompareEqualTo;
    }
  }

LABEL_43:
  v36 = &v51;
  v37 = &v44;
  v38 = 1;
  do
  {
    v39 = v38;
    CFRelease(*v36);
    if (*v37)
    {
      CFRelease(*v37);
    }

    v38 = 0;
    v36 = &v50;
    v37 = &v43;
  }

  while ((v39 & 1) != 0);
  return CanonicalLocaleIdentifierFromString;
}

const __CFString *GetScriptForLanguage(CFStringRef theString1)
{
  if (qword_10000C058 != -1)
  {
    sub_100003AE0();
  }

  if (CFStringCompare(theString1, @"ja", 1uLL) == kCFCompareEqualTo)
  {
    return @"Jpan";
  }

  if (CFStringCompare(theString1, @"ko", 1uLL) == kCFCompareEqualTo)
  {
    return @"Kore";
  }

  if (CFStringCompare(theString1, @"zh-Hans", 1uLL) == kCFCompareEqualTo)
  {
    return @"Hans";
  }

  if (CFStringCompare(theString1, @"zh-Hant", 1uLL) == kCFCompareEqualTo)
  {
    return @"Hant";
  }

  v2 = qword_10000C050;
  v4.length = CFArrayGetCount(qword_10000C050);
  v4.location = 0;
  if (CFArrayContainsValue(v2, v4, theString1))
  {
    return @"Latn";
  }

  else
  {
    return 0;
  }
}

uint64_t DetectEncodingOfStringData(const __CFData *a1)
{
  ucsdet_open();
  CFDataGetBytePtr(a1);
  CFDataGetLength(a1);
  ucsdet_setText();
  ucsdet_detect();
  Name = ucsdet_getName();
  if (Name && (v5 = CFStringCreateWithCString(0, Name, 0x8000100u)) != 0)
  {
    v6 = v5;
    v2 = CFStringConvertIANACharSetNameToEncoding(v5);
    CFRelease(v6);
  }

  else
  {
    v2 = 0xFFFFFFFFLL;
  }

  ucsdet_close();
  return v2;
}

uint64_t ExtraNormalizeStringForArabic(__CFString *a1, int a2)
{
  CFStringNormalize(a1, kCFStringNormalizationFormD);
  v6.location = 0;
  v6.length = CFStringGetLength(a1);
  if (a2)
  {
    v4 = @"[\\u0610-\\u061A \\u064B-\\u065F \\u0670 \\u06D6-\\u06DC \\u06DF-\\u06E4 \\u06E7-\\u06E8 \\u06EA-\\u06ED] Remove";
  }

  else
  {
    v4 = @"[\\u0610-\\u061A \\u064B-\\u0652 \\u0656-\\u065F \\u0670 \\u06D6-\\u06DC \\u06E1-\\u06E3 \\u06E7-\\u06E8 \\u06EA-\\u06ED] Remove";
  }

  return CFStringTransform(a1, &v6, v4, 0);
}

BOOL ContainsLatinAlphabets(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  __chkstk_darwin();
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11.location = 0;
  v11.length = Length;
  CFStringGetCharacters(a1, v11, v4);
  if (Length < 1)
  {
    return 0;
  }

  if ((*v4 & 0xFFDFu) - 65 < 0x1A)
  {
    return 1;
  }

  v6 = 1;
  do
  {
    v7 = v6;
    if (Length == v6)
    {
      break;
    }

    v8 = (v4[v6++] & 0xFFDF) - 65;
    v9 = (v4[v7] & 0xFFDF) - 90 < 0;
  }

  while (v8 > 0x19);
  return v7 < Length;
}

void DistanceBetweenWords(CFStringRef theString, const __CFString *a2)
{
  MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
  v4 = CFStringCreateMutableCopy(0, 0, a2);
  CFStringNormalize(MutableCopy, kCFStringNormalizationFormD);
  CFStringNormalize(v4, kCFStringNormalizationFormD);
  Length = CFStringGetLength(MutableCopy);
  __chkstk_darwin();
  v46 = MutableCopy;
  v52.location = 0;
  v52.length = Length;
  v49 = &v43 - v6;
  CFStringGetCharacters(MutableCopy, v52, (&v43 - v6));
  v7 = CFStringGetLength(v4);
  __chkstk_darwin();
  v45 = v4;
  v53.location = 0;
  v53.length = v7;
  v48 = &v43 - v8;
  CFStringGetCharacters(v4, v53, (&v43 - v8));
  v51 = v7;
  v44 = Length + 1 + (Length + 1) * v7;
  __chkstk_darwin();
  v10 = (&v43 - v9);
  v50 = Length;
  if ((Length & 0x8000000000000000) == 0)
  {
    v11 = vdupq_n_s64(v50);
    v12 = (v50 & 0x7FFFFFFFFFFFFFFELL) + 2;
    v13 = xmmword_100004390;
    v14 = v10 + 1;
    v15 = 1;
    v16 = vdupq_n_s64(2uLL);
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v11, v13));
      if (v17.i8[0])
      {
        *(v14 - 1) = (v15 - 1);
      }

      if (v17.i8[4])
      {
        *v14 = v15;
      }

      v13 = vaddq_s64(v13, v16);
      v14 += 2;
      v15 += 2;
      v12 -= 2;
    }

    while (v12);
  }

  v18 = v50;
  if ((v51 & 0x8000000000000000) == 0)
  {
    v19 = 0;
    v20 = vdupq_n_s64(v51);
    v21 = (v51 & 0x7FFFFFFFFFFFFFFELL) + 2;
    v22 = xmmword_100004390;
    v23 = 16 * v50 + 16;
    v24 = vdupq_n_s64(2uLL);
    v25 = v10;
    do
    {
      v26 = vmovn_s64(vcgeq_u64(v20, v22));
      if (v26.i8[0])
      {
        *v25 = v19;
      }

      if (v26.i8[4])
      {
        v25[v18 + 1] = (v19 + 1);
      }

      v19 += 2;
      v22 = vaddq_s64(v22, v24);
      v25 = (v25 + v23);
    }

    while (v21 != v19);
  }

  v47 = v10;
  if (v50 >= 1)
  {
    v27 = v47 + 1;
    v28 = 1;
    do
    {
      if (v51 >= 1)
      {
        v29 = *&v49[2 * v28 - 2];
        v30 = sub_100001AEC(v29);
        if (v30)
        {
          v31 = 0.1;
        }

        else
        {
          v31 = 1.0;
        }

        v32 = v48;
        v33 = v27;
        v34 = v51;
        do
        {
          v36 = *v32++;
          v35 = v36;
          if (v29 == v36)
          {
            v37 = 0.0;
          }

          else
          {
            v37 = 2.0;
          }

          v38 = sub_100001AEC(v35);
          if (v30 && v38)
          {
            v39 = v37 / 100.0;
          }

          else
          {
            v39 = v37 * 0.5;
            if (!v30 && !v38)
            {
              v39 = v37;
            }
          }

          if (v38)
          {
            v40 = 0.1;
          }

          else
          {
            v40 = 1.0;
          }

          v33[v18 + 1] = fmin(v39 + *(v33 - 1), fmin(v31 + v33[v18], v40 + *v33));
          v33 = (v33 + v18 * 8 + 8);
          --v34;
        }

        while (v34);
      }

      ++v27;
    }

    while (v28++ != v50);
  }

  CFRelease(v46);
  CFRelease(v45);
  v42 = v47[v44 - 1];
}

BOOL sub_100001AEC(int a1)
{
  v2 = a1 - 1552;
  result = 1;
  if (v2 >= 0xB && (a1 - 1611) >= 0x15 && ((a1 - 1750) > 0x17 || ((1 << (a1 + 42)) & 0xF67E7F) == 0))
  {
    return a1 == 1648;
  }

  return result;
}

uint64_t IsWorkingInDictionaryApp()
{
  if (qword_10000C060 != -1)
  {
    sub_100003AF4();
  }

  return byte_10000C068;
}

void sub_100001B74(id a1)
{
  MainBundle = CFBundleGetMainBundle();
  if (MainBundle)
  {
    Identifier = CFBundleGetIdentifier(MainBundle);
    if (Identifier)
    {
      v3 = CFStringCompare(Identifier, @"com.apple.Dictionary", 0) == kCFCompareEqualTo;
    }

    else
    {
      v3 = 0;
    }

    byte_10000C068 = v3;
  }
}

void DCSLog(int a1, CFStringRef format, ...)
{
  va_start(va, format);
  if (qword_10000C098 != -1)
  {
    sub_100003B08();
  }

  if (a1 > 15)
  {
    if (a1 != 16)
    {
      if (a1 == 17)
      {
        v4 = 4;
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    v4 = 3;
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        v4 = 2;
        goto LABEL_13;
      }

LABEL_10:
      v4 = 0;
      goto LABEL_13;
    }

    v4 = 1;
  }

LABEL_13:
  v5 = CFStringCreateWithFormatAndArguments(0, 0, format, va);
  if (v5)
  {
    v6 = v5;
    v7 = qword_10000C070[v4];
    if (os_log_type_enabled(v7, a1))
    {
      *buf = 138543362;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v7, a1, "%{public}@", buf, 0xCu);
    }

    CFRelease(v6);
  }
}

void sub_100001D00(id a1)
{
  for (i = 0; i != 5; ++i)
  {
    qword_10000C070[i] = os_log_create("com.apple.DictionaryServices", off_100008908[i]);
  }
}

void sub_100001D94(_xpc_connection_s *a1)
{
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_100001E14;
  handler[3] = &unk_100008940;
  handler[4] = a1;
  xpc_connection_set_event_handler(a1, handler);
  xpc_connection_resume(a1);
}

void sub_100001E14(uint64_t a1, xpc_object_t object)
{
  v3 = *(a1 + 32);
  type = xpc_get_type(object);
  if (type == &_xpc_type_error)
  {
    return;
  }

  if (type != &_xpc_type_dictionary)
  {
    sub_100003B1C();
  }

  reply = xpc_dictionary_create_reply(object);
  string = xpc_dictionary_get_string(object, "command");
  if (!strncmp(string, "read_preference", 0xFuLL))
  {
    if (!ReadSharedPreference(object, reply))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!strncmp(string, "update_preference", 0x11uLL))
  {
    if (!UpdateSharedPreference(object))
    {
      goto LABEL_10;
    }

LABEL_9:
    xpc_connection_send_message(v3, reply);
    goto LABEL_10;
  }

  if (!strncmp(string, "sync_preference", 0xFuLL) && SynchronizeSharedPreference())
  {
    goto LABEL_9;
  }

LABEL_10:
  if (reply)
  {

    xpc_release(reply);
  }
}

uint64_t CreateDictionaryAssets(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_100001FE4(a2, a3);
  if (v6)
  {
    v7 = v6;
    if (a3)
    {
      Data = CFPropertyListCreateData(0, v6, kCFPropertyListBinaryFormat_v1_0, 0, 0);
      if (Data)
      {
        v9 = Data;
        BytePtr = CFDataGetBytePtr(Data);
        Length = CFDataGetLength(v9);
        xpc_dictionary_set_data(a4, "result", BytePtr, Length);
        CFRelease(v9);
      }
    }

    CFRelease(v7);
  }

  return a3;
}

__CFArray *sub_100001FE4(uint64_t a1, int a2)
{
  v3 = DCSMACopyDictionaryAssetsList();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (a2)
  {
    v5 = sub_100002858(1);
    CFDictionaryRemoveAllValues(v5);
    Count = CFArrayGetCount(v4);
    if (Count < 1)
    {
      v8 = 0;
    }

    else
    {
      v7 = Count;
      v8 = 0;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
        v11 = DCSMAGetAssetAttributes(ValueAtIndex);
        v12 = DCSMACreateAssetInstalledURL();
        if (v12)
        {
          v13 = v12;
          v14 = CFURLCopyFileSystemPath(v12, kCFURLPOSIXPathStyle);
          CFRelease(v13);
        }

        else
        {
          v14 = 0;
        }

        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        CFDictionarySetValue(Mutable, @"attributes", v11);
        if (v14)
        {
          CFDictionarySetValue(Mutable, @"installedPath", v14);
        }

        if (!v8)
        {
          v8 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
        }

        CFArrayAppendValue(v8, Mutable);
        CFRelease(Mutable);
        if (v14)
        {
          CFRelease(v14);
        }

        Value = CFDictionaryGetValue(v11, @"DictionaryIdentifier");
        if (Value)
        {
          CFDictionarySetValue(v5, Value, ValueAtIndex);
        }
      }
    }

    sub_100002858(0);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v4);
  return v8;
}

uint64_t DownloadDictionaryAssets(void *a1)
{
  v2 = sub_1000021F0(a1);
  if (v2)
  {
    v3 = v2;
    v4 = xpc_dictionary_get_BOOL(a1, "userInitiatedDownload");
    DCSMAForceTransparentDownload(v4);
    DCSMADownloadDictionaryAsset(v3, 0);
    DCSMAForceTransparentDownload(0);
    CFRelease(v3);
  }

  return 0;
}

const void *sub_1000021F0(void *a1)
{
  v2 = sub_100002858(1);
  if (!CFDictionaryGetCount(v2))
  {
    sub_100002858(0);
    v3 = sub_100001FE4(1, 1);
    if (v3)
    {
      CFRelease(v3);
    }

    v2 = sub_100002858(1);
  }

  string = xpc_dictionary_get_string(a1, "dictionaryID");
  if (string && (v5 = CFStringCreateWithCString(0, string, 0x8000100u)) != 0)
  {
    v6 = v5;
    Value = CFDictionaryGetValue(v2, v5);
    v8 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    CFRelease(v6);
  }

  else
  {
    v8 = 0;
  }

  sub_100002858(0);
  return v8;
}

uint64_t PurgeDictionaryAssets(void *a1)
{
  v1 = sub_1000021F0(a1);
  if (v1)
  {
    v2 = v1;
    DCSMAPurgeDictionaryAsset();
    CFRelease(v2);
  }

  return 0;
}

uint64_t CopyInstalledPathDictionaryAssets(void *a1, void *a2)
{
  v3 = sub_1000021F0(a1);
  if (v3)
  {
    v4 = v3;
    v5 = DCSMACreateAssetInstalledURL();
    CFRelease(v4);
    if (v5)
    {
      v6 = CFURLCopyFileSystemPath(v5, kCFURLPOSIXPathStyle);
      CFRelease(v5);
      if (v6)
      {
        CFStringGetCString(v6, buffer, 255, 0x8000100u);
        xpc_dictionary_set_string(a2, "result", buffer);
        CFRelease(v6);
      }
    }
  }

  return 1;
}

uint64_t GetStateDictionaryAssets(void *a1, void *a2)
{
  v3 = sub_1000021F0(a1);
  if (v3)
  {
    v4 = v3;
    v5 = DCSMAGetAssetState();
    xpc_dictionary_set_int64(a2, "result", v5);
    CFRelease(v4);
  }

  return 1;
}

uint64_t PrepareDefaultAssets(void *a1)
{
  value = xpc_dictionary_get_value(a1, "dictionaryIDs");
  v3 = value;
  if (value)
  {
    v4 = value;
  }

  else
  {
    v5 = xpc_dictionary_get_value(a1, "languageIDs");
    if (!v5)
    {
      return 0;
    }

    v4 = v5;
  }

  count = xpc_array_get_count(v4);
  if (count)
  {
    v7 = count;
    Mutable = 0;
    for (i = 0; i != v7; ++i)
    {
      string = xpc_array_get_string(v4, i);
      if (string)
      {
        v11 = CFStringCreateWithCString(0, string, 0x8000100u);
        if (v11)
        {
          v12 = v11;
          if (!Mutable)
          {
            Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
          }

          CFArrayAppendValue(Mutable, v12);
          CFRelease(v12);
        }
      }
    }

    if (Mutable)
    {
      if (v3)
      {
        v13 = 0;
      }

      else
      {
        v13 = Mutable;
      }

      if (v3)
      {
        v14 = Mutable;
      }

      else
      {
        v14 = 0;
      }

      DCSMAPrepareDefaultDictionaryAssets(v14, v13);
    }
  }

  return 0;
}

uint64_t CreateUserDictionariesDirectory(uint64_t a1, void *a2)
{
  v3 = CFCopyHomeDirectoryURLForUser();
  if (v3)
  {
    v4 = v3;
    v5 = CFURLCreateCopyAppendingPathComponent(0, v3, @"Library/Dictionaries", 1u);
    if (v5)
    {
      v6 = v5;
      v7 = CFURLCopyFileSystemPath(v5, kCFURLPOSIXPathStyle);
      if (v7)
      {
        v8 = v7;
        Length = CFStringGetLength(v7);
        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
        v11 = malloc_type_malloc(MaximumSizeForEncoding, 0x100004077774924uLL);
        CFStringGetCString(v8, v11, MaximumSizeForEncoding, 0x8000100u);
        v12 = mkdir(v11, 0x1FFu) == 0;
        free(v11);
        CFRelease(v8);
      }

      else
      {
        v12 = 0;
      }

      CFRelease(v6);
    }

    else
    {
      v12 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v12 = 0;
  }

  xpc_dictionary_set_BOOL(a2, "result", v12);
  return 1;
}

uint64_t ReadSharedPreference(void *a1, void *a2)
{
  string = xpc_dictionary_get_string(a1, "key");
  v5 = CFStringCreateWithCString(0, string, 0x8000100u);
  value = 0;
  uint64 = xpc_dictionary_get_uint64(a1, "currentVersion");
  v7 = xpc_dictionary_get_BOOL(a1, "checkVersion");
  if (v7)
  {
    p_value = &value;
  }

  else
  {
    p_value = 0;
  }

  v9 = DCSCopySharedPreferenceValue(v5, uint64, p_value);
  CFRelease(v5);
  if (v9)
  {
    Data = CFPropertyListCreateData(0, v9, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    if (Data)
    {
      v11 = Data;
      BytePtr = CFDataGetBytePtr(Data);
      Length = CFDataGetLength(v11);
      xpc_dictionary_set_data(a2, "value", BytePtr, Length);
      if (v7)
      {
        xpc_dictionary_set_uint64(a2, "savedVersion", value);
      }

      CFRelease(v11);
    }

    CFRelease(v9);
  }

  return 1;
}

uint64_t UpdateSharedPreference(void *a1)
{
  string = xpc_dictionary_get_string(a1, "key");
  if (string)
  {
    v3 = CFStringCreateWithCString(0, string, 0x8000100u);
  }

  else
  {
    v3 = 0;
  }

  length = 0;
  data = xpc_dictionary_get_data(a1, "value", &length);
  v5 = 0;
  if (data && length)
  {
    v6 = CFDataCreate(0, data, length);
    v5 = CFPropertyListCreateWithData(0, v6, 0, 0, 0);
    CFRelease(v6);
  }

  DCSUpdateSharedPreferenceValue(v3, v5);
  if (v3)
  {
    CFRelease(v3);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return 0;
}

uint64_t sub_100002858(int a1)
{
  if (qword_10000C0E8 != -1)
  {
    sub_100003B48();
  }

  if (a1)
  {
    pthread_mutex_lock(&stru_10000C0A8);
  }

  else
  {
    pthread_mutex_unlock(&stru_10000C0A8);
  }

  return qword_10000C0A0;
}

void sub_1000028B0(id a1)
{
  qword_10000C0A0 = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);

  pthread_mutex_init(&stru_10000C0A8, 0);
}

CFPropertyListRef DCSCopySharedPreferenceValue(const __CFString *a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  return CFPreferencesCopyAppValue(a1, @"com.apple.DictionaryServices");
}

uint64_t DCSUpdateSharedPreferenceValue(const __CFString *a1, const void *a2)
{
  if (a1 && a2)
  {
    CFPreferencesSetAppValue(a1, a2, @"com.apple.DictionaryServices");
    v2 = vars8;
  }

  return CFPreferencesAppSynchronize(@"com.apple.DictionaryServices");
}

__CFArray *DCSMACopyAndUpdateDictionaryCompatibilityVersionHistory()
{
  valuePtr = 5;
  v0 = DCSCopySharedPreferenceValue(@"DCSLastUsedAssetCompatibilityVersion", 0, 0);
  if (v0)
  {
    v1 = v0;
    CFNumberGetValue(v0, kCFNumberCFIndexType, &valuePtr);
    CFRelease(v1);
    if (valuePtr > 14)
    {
      return 0;
    }
  }

  v8 = 15;
  v4 = CFNumberCreate(0, kCFNumberCFIndexType, &v8);
  DCSUpdateSharedPreferenceValue(@"DCSLastUsedAssetCompatibilityVersion", v4);
  CFRelease(v4);
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  for (i = valuePtr; ; i = v7)
  {
    v7 = i + 1;
    if (i >= v8)
    {
      break;
    }

    v6 = CFNumberCreate(0, kCFNumberCFIndexType, &v7);
    CFArrayAppendValue(Mutable, v6);
    CFRelease(v6);
  }

  return Mutable;
}

const __CFString *DCSMAGetAssetLanguage(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"attributes");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFDictionaryGetValue(Value, @"Language");
  v4 = v3;
  if (v3)
  {
    if (CFStringCompare(v3, @"en", 1uLL) == kCFCompareEqualTo)
    {
      v5 = CFDictionaryGetValue(v2, @"Countries");
      if (v5)
      {
        v6 = v5;
        v8.length = CFArrayGetCount(v5);
        v8.location = 0;
        if (CFArrayGetFirstIndexOfValue(v6, v8, @"US") == -1)
        {
          return @"en_GB";
        }

        else
        {
          return @"en_US";
        }
      }
    }
  }

  return v4;
}

const __CFArray *DCSMAIsLanguageDictionaryAsset(const __CFDictionary *a1)
{
  if (DCSMAGetAssetLanguage(a1))
  {
    return 1;
  }

  Value = CFDictionaryGetValue(a1, @"attributes");
  result = CFDictionaryGetValue(Value, @"IndexLanguages");
  if (result)
  {
    v4 = result;
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v6 = Count;
      v9.location = 0;
      v9.length = Count;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v4, v9, @"*");
      return (v6 != 1 && FirstIndexOfValue == -1);
    }
  }

  return result;
}

uint64_t DCSMAPreferredOrderOfDictionaryAssetAttributesForLanguages(const void *a1, CFArrayRef theArray)
{
  if (!theArray)
  {
    return -1;
  }

  Count = CFArrayGetCount(theArray);
  v5 = -1;
  if (a1)
  {
    v6 = Count;
    if (Count)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionarySetValue(Mutable, @"attributes", a1);
      if (!DCSMAIsLanguageDictionaryAsset(Mutable))
      {
        Value = CFDictionaryGetValue(a1, @"DictionaryIdentifier");
        if (Value)
        {
          if (CFStringCompare(Value, @"com.apple.dictionary.AppleDictionary", 0))
          {
            v5 = -1;
          }

          else
          {
            v5 = 1000;
          }
        }

        goto LABEL_41;
      }

      v8 = DCSMAGetAssetLanguage(Mutable);
      if (!v8)
      {
        v14 = CFDictionaryGetValue(a1, @"IndexLanguages");
        if (v14)
        {
          v15 = v14;
          v16 = CFArrayGetCount(v14);
          if (v16 >= 1)
          {
            v17 = v16;
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
            v19 = 0;
            while (1)
            {
              v20 = CFArrayGetValueAtIndex(v15, v19);
              if (CompareLanguageCode(ValueAtIndex, v20, 0))
              {
                break;
              }

              if (v17 == ++v19)
              {
                goto LABEL_40;
              }
            }

            if (v6 < 2)
            {
LABEL_40:
              v5 = -1;
              goto LABEL_41;
            }

            v23 = 1;
            v24 = 1;
            while (2)
            {
              v25 = CFArrayGetValueAtIndex(theArray, v23);
              v26 = 0;
              while (1)
              {
                v27 = CFArrayGetValueAtIndex(v15, v26);
                if (CompareLanguageCode(v25, v27, 0))
                {
                  break;
                }

                if (v17 == ++v26)
                {
                  goto LABEL_38;
                }
              }

              if (++v24 == v17)
              {
                v5 = 3;
                goto LABEL_41;
              }

LABEL_38:
              ++v23;
              v5 = -1;
              if (v23 != v6)
              {
                continue;
              }

              break;
            }
          }
        }

        goto LABEL_41;
      }

      if (v6 >= 1)
      {
        v9 = v8;
        v5 = 0;
        v10 = 0;
        while (1)
        {
          v11 = CFArrayGetValueAtIndex(theArray, v10);
          if (CompareLanguageCode(v11, v9, 0))
          {
            break;
          }

          v12 = CompareLanguageCode(v11, @"hi", 0);
          if (!v10 && v12 && CompareLanguageCode(v9, @"en_GB", 0))
          {
            v5 = 10;
            break;
          }

          ++v10;
          v5 += 20;
          if (v6 == v10)
          {
            goto LABEL_40;
          }
        }

        v21 = CFDictionaryGetValue(a1, @"DictionaryType");
        if (!v21)
        {
LABEL_30:
          v5 += 4;
          goto LABEL_41;
        }

        v22 = v21;
        if (CFStringCompare(v21, @"Monolingual", 1uLL))
        {
          if (CFStringCompare(v22, @"Bilingual", 1uLL) == kCFCompareEqualTo)
          {
            v5 += 2;
            goto LABEL_41;
          }

          if (CFStringCompare(v22, @"Thesaurus", 1uLL) == kCFCompareEqualTo)
          {
            v5 |= 1uLL;
            goto LABEL_41;
          }

          goto LABEL_30;
        }
      }

LABEL_41:
      CFRelease(Mutable);
    }
  }

  return v5;
}

const __CFDictionary *DCSMAGetAssetObj(const __CFDictionary *result)
{
  if (result)
  {
    return CFDictionaryGetValue(result, @"asset");
  }

  return result;
}

void DCSMAUpdateLinguisticData(uint64_t a1, const __CFArray *a2, int a3)
{
  if (a1 && a2)
  {
    if (a3)
    {
      AddLinguisticDataAssetion(a1, a2);
    }

    else
    {
      RemoveLinguisticDataAssetion(a1, a2);
    }
  }
}

void DCSMAUpdateLinguisticDataForDictionaryAssetAttribute(const __CFDictionary *a1, int a2)
{
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, @"DictionaryIdentifier");
    if (Value)
    {
      v5 = Value;
      v6 = CFDictionaryGetValue(a1, @"IndexLanguages");
      if (v6)
      {
        v7 = v6;
        CFRetain(v6);
      }

      else
      {
        values = CFDictionaryGetValue(a1, @"Language");
        if (!values)
        {
          return;
        }

        v7 = CFArrayCreate(0, &values, 1, &kCFTypeArrayCallBacks);
        if (!v7)
        {
          return;
        }
      }

      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionarySetValue(Mutable, @"attributes", a1);
      if (DCSMAIsLanguageDictionaryAsset(Mutable))
      {
        if (a2)
        {
          AddLinguisticDataAssetion(v5, v7);
        }

        else
        {
          RemoveLinguisticDataAssetion(v5, v7);
        }
      }

      CFRelease(Mutable);
      CFRelease(v7);
    }
  }
}

id DCSMAIsInstalledAsset(const __CFDictionary *Value)
{
  if (Value)
  {
    Value = CFDictionaryGetValue(Value, @"asset");
    v1 = vars8;
  }

  return [(__CFDictionary *)Value wasLocal];
}

id DCSMAIsDeletableAsset(const __CFDictionary *Value)
{
  if (Value)
  {
    Value = CFDictionaryGetValue(Value, @"asset");
    v1 = vars8;
  }

  return [(__CFDictionary *)Value wasPurgeable];
}

uint64_t NewAutoReleasePool()
{
  if (qword_10000C108 != -1)
  {
    sub_100003B5C();
  }

  if (!qword_10000C110)
  {
    return 0;
  }

  v0 = *qword_10000C110;

  return _objc_opt_new(v0);
}

BOOL IsManagedConfigProfanityFilterForced()
{
  if (qword_10000C118 != -1)
  {
    sub_100003B70();
  }

  v0 = qword_10000C120;
  if (!qword_10000C120)
  {
    return 0;
  }

  v1 = NewAutoReleasePool();
  v2 = [objc_msgSend(*(v0 + 8) "sharedConnection")];

  return v2 == 1;
}

void SetManagedConfigChangedCallback(uint64_t a1)
{
  if (qword_10000C118 != -1)
  {
    sub_100003B70();
  }

  if (qword_10000C120)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003294;
    block[3] = &unk_100008A28;
    block[4] = qword_10000C120;
    if (qword_10000C0F0 != -1)
    {
      dispatch_once(&qword_10000C0F0, block);
    }

    if (qword_10000C100)
    {
      [qword_10000C100 setCallbackBlock:a1];
    }
  }
}

IMP sub_100003294(uint64_t a1)
{
  Class = objc_getClass("NSObject");
  qword_10000C0F8 = objc_allocateClassPair(Class, "DCSManagedConfigChangeReceiver", 0);
  v3 = class_addIvar(qword_10000C0F8, "_callbackBlock", 8uLL, 3u, "@");
  objc_registerClassPair(qword_10000C0F8);
  if (v3)
  {
    v4 = imp_implementationWithBlock(&stru_1000089C8);
    v5 = class_addMethod(qword_10000C0F8, "setCallbackBlock:", v4, "v@:@");
    result = imp_implementationWithBlock(&stru_100008A08);
    if (v5)
    {
      result = class_addMethod(qword_10000C0F8, "profileConnectionDidReceiveEffectiveSettingsChangedNotification:userInfo:", result, "v@:@@");
      if (result)
      {
        qword_10000C100 = [qword_10000C0F8 new];
        v7 = [*(*(a1 + 32) + 8) sharedConnection];
        v8 = qword_10000C100;

        return [v7 addObserver:v8];
      }
    }
  }

  else
  {
    if (qword_10000C0F8)
    {
      objc_disposeClassPair(qword_10000C0F8);
    }

    qword_10000C0F8 = 0;
    imp_implementationWithBlock(&stru_1000089C8);

    return imp_implementationWithBlock(&stru_100008A08);
  }

  return result;
}

void sub_100003404(id a1, id a2, id a3)
{
  InstanceVariable = class_getInstanceVariable(qword_10000C0F8, "_callbackBlock");
  Ivar = object_getIvar(a2, InstanceVariable);
  if (Ivar)
  {
  }

  v7 = _Block_copy(a3);

  object_setIvar(a2, InstanceVariable, v7);
}

void sub_100003480(id a1, id a2, id a3, id a4)
{
  InstanceVariable = class_getInstanceVariable(qword_10000C0F8, "_callbackBlock");
  Ivar = object_getIvar(a2, InstanceVariable);
  if (Ivar)
  {
    v7 = *(Ivar + 2);

    v7();
  }
}

void AddLinguisticDataAssetion(uint64_t a1, const __CFArray *a2)
{
  DCSLog(16, @"AddLinguisticDataAssetion_iOS for dictionary (%@) with languages (%@)", a1, a2);
  if (a1 && a2)
  {
    if (qword_10000C128 != -1)
    {
      sub_100003B84();
    }

    v4 = qword_10000C130;
    if (qword_10000C130)
    {
      v12 = NewAutoReleasePool();
      v5 = [*v4 new];
      *keys = *&off_100008A48;
      v16 = @"City";
      *values = *&off_100008A60;
      v14 = &stru_100009FF8;
      v6 = CFDictionaryCreate(0, keys, values, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      Count = CFArrayGetCount(a2);
      if (Count >= 1)
      {
        v8 = Count;
        for (i = 0; i != v8; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
          v11 = CFStringCreateWithFormat(0, 0, @"%@;%@;%@", @"com.apple.DictionaryServices", ValueAtIndex, a1);
          DCSLog(16, @"AddLinguisticDataAssetion_iOS actually adding language (%@) to client (%@)", ValueAtIndex, v5);
          [v5 addLinguisticAssetsAssertionForLanguage:ValueAtIndex assertionID:v11 region:v6 clientID:@"com.apple.DictionaryServices" withHandler:&stru_100008A98];
          CFRelease(v11);
        }
      }

      CFRelease(v6);
    }
  }
}

void RemoveLinguisticDataAssetion(uint64_t a1, const __CFArray *a2)
{
  DCSLog(16, @"RemoveLinguisticDataAssetion_iOS for dictionary (%@) with languages (%@)", a1, a2);
  if (a1 && a2)
  {
    if (qword_10000C128 != -1)
    {
      sub_100003B84();
    }

    v4 = qword_10000C130;
    if (qword_10000C130)
    {
      v11 = NewAutoReleasePool();
      v5 = [*v4 new];
      Count = CFArrayGetCount(a2);
      if (Count >= 1)
      {
        v7 = Count;
        for (i = 0; i != v7; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
          v10 = CFStringCreateWithFormat(0, 0, @"%@;%@;%@", @"com.apple.DictionaryServices", ValueAtIndex, a1);
          DCSLog(16, @"RemoveLinguisticDataAssetion_iOS actually removing language (%@) from client (%@)", ValueAtIndex, v5);
          [v5 removeLinguisticAssetsAssertionWithIdentifier:v10 forClientID:@"com.apple.DictionaryServices" withHandler:&stru_100008AB8];
          CFRelease(v10);
        }
      }
    }
  }
}

void sub_100003854(id a1)
{
  qword_10000C110 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
  v1 = CFURLCreateWithFileSystemPath(0, @"/System/Library/Frameworks/Foundation.framework", kCFURLPOSIXPathStyle, 1u);
  if (v1)
  {
    v2 = v1;
    v3 = CFBundleCreate(0, v1);
    CFRelease(v2);
    if (v3)
    {
      if (!CFBundleIsExecutableLoaded(v3))
      {
        CFBundleLoadExecutable(v3);
      }

      if (CFBundleIsExecutableLoaded(v3))
      {
        *qword_10000C110 = objc_getClass("NSAutoreleasePool");
      }
    }
  }

  if (!*qword_10000C110)
  {
    free(qword_10000C110);
    qword_10000C110 = 0;
  }
}

void sub_100003920(id a1)
{
  qword_10000C120 = malloc_type_calloc(1uLL, 0x18uLL, 0xE00409BBF8FE8uLL);
  v1 = CFURLCreateWithFileSystemPath(0, @"/System/Library/PrivateFrameworks/ManagedConfiguration.framework", kCFURLPOSIXPathStyle, 1u);
  if (v1)
  {
    v2 = v1;
    v3 = CFBundleCreate(0, v1);
    CFRelease(v2);
    if (v3)
    {
      if (!CFBundleIsExecutableLoaded(v3))
      {
        CFBundleLoadExecutable(v3);
      }

      if (CFBundleIsExecutableLoaded(v3))
      {
        *(qword_10000C120 + 8) = objc_getClass("MCProfileConnection");
        DataPointerForName = CFBundleGetDataPointerForName(v3, @"MCFeatureAssistantProfanityFilterForced");
        if (DataPointerForName)
        {
          *(qword_10000C120 + 16) = *DataPointerForName;
        }
      }
    }
  }

  if (!*(qword_10000C120 + 8) || !*(qword_10000C120 + 16))
  {
    free(qword_10000C120);
    qword_10000C120 = 0;
  }
}

void sub_100003A14(id a1)
{
  qword_10000C130 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
  v1 = CFURLCreateWithFileSystemPath(0, @"/System/Library/PrivateFrameworks/TextInput.framework", kCFURLPOSIXPathStyle, 1u);
  if (v1)
  {
    v2 = v1;
    v3 = CFBundleCreate(0, v1);
    CFRelease(v2);
    if (v3)
    {
      if (!CFBundleIsExecutableLoaded(v3))
      {
        CFBundleLoadExecutable(v3);
      }

      if (CFBundleIsExecutableLoaded(v3))
      {
        *qword_10000C130 = objc_getClass("TILinguisticAssetDownloadClient");
      }
    }
  }

  if (!*qword_10000C130)
  {
    free(qword_10000C130);
    qword_10000C130 = 0;
  }
}